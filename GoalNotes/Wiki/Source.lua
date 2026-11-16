local _, ns = ...

-- World data for the wiki. Quests, NPCs, objects, drops, vendors and map coordinates are
-- not in the game client, so they come from the separate QuestieDB addon (LibQuestieDB)
-- when it is installed. Everything here degrades to "not available" without it.
-- Dungeons and their bosses are bundled (Data/Dungeons.lua).

local Q = {}
ns.Q = Q

local lib, zoneDB
local uiMaps -- areaID -> uiMapID
local STEP = 100 -- ids handled between yields while indexing

function Q.Available()
	return lib ~= nil
end

function Q.Init()
	local l = _G.LibQuestieDB
	if not (l and l.Quest and l.Npc and l.Item and l.Object and l.RequireContract) then return end
	local called, ok = pcall(l.RequireContract, 1)
	if not called or ok == false then return end
	lib = l
	Q.Quest, Q.Npc, Q.Item, Q.Object = l.Quest, l.Npc, l.Item, l.Object
	zoneDB = l.Support and l.Support.Get and l.Support.Get("ZoneDB") or nil
	-- contract 4 guarantees the NPC flag masks; without it the Classic values are used
	local called4, ok4 = pcall(l.RequireContract, 4)
	Q.npcFlagMasks = called4 and ok4 ~= false and l.Enum and l.Enum.npcFlags or {}
	-- contract 3 guarantees the faction masks used to hide the other faction's quests
	local called3, ok3 = pcall(l.RequireContract, 3)
	if called3 and ok3 ~= false and l.Enum then Q.factionMasks = l.Enum.factionRaceMasks end
end

---------------------------------------------------------------------------
-- Background indexing: spread over frames so opening the wiki never stalls the game
---------------------------------------------------------------------------

local function Run(job, done)
	local co = coroutine.create(job)
	local function Step()
		local started = debugprofilestop()
		repeat
			local ok, err = coroutine.resume(co)
			if not ok then
				geterrorhandler()(err)
				return
			end
		until coroutine.status(co) == "dead" or debugprofilestop() - started > 8 -- ms per frame
		if coroutine.status(co) == "dead" then
			done()
		else
			C_Timer.After(0, Step)
		end
	end
	Step()
end

-- Name indexes for quests and NPCs, plus quests grouped by zone, by the reputation they
-- give (Q.questsByFaction) and by the quest they wait for (Q.unlocks).
-- Returns true when ready; otherwise starts the work and calls ns.Wiki.DataReady() later.
function Q.NamesReady()
	if Q.names == "ready" then return true end
	if not lib or Q.names then return false end
	Q.names = "building"
	Q.questIndex, Q.npcIndex, Q.questsByZone, Q.questsByFaction, Q.unlocks = ns.NewIndex(), ns.NewIndex(), {}, {}, {}
	Q.npcZone, Q.npcRank, Q.npcFlags = {}, {}, {} -- kept here so filtering NPCs never asks QuestieDB
	local function Into(map, key, id)
		map[key] = map[key] or {}
		table.insert(map[key], id)
	end
	local reputation = Q.Quest.reputationReward
	Run(function()
		for n, id in ipairs(Q.Quest.GetAllIds()) do
			local name = Q.Quest.name(id)
			if name and name ~= "" then
				Q.questIndex:Add(id, name)
				Into(Q.questsByZone, Q.Quest.zoneOrSort(id) or 0, id)
				for _, pre in ipairs(Q.Quest.preQuestGroup(id) or {}) do Into(Q.unlocks, pre, id) end
				for _, pre in ipairs(Q.Quest.preQuestSingle(id) or {}) do Into(Q.unlocks, pre, id) end
				local gains = reputation and reputation(id)
				for _, gain in ipairs(type(gains) == "table" and gains or {}) do
					if type(gain) == "table" and (gain[2] or 0) > 0 then Into(Q.questsByFaction, gain[1], id) end
				end
			end
			if n % STEP == 0 then coroutine.yield() end
		end
		for n, id in ipairs(Q.Npc.GetAllIds()) do
			local name = Q.Npc.name(id)
			if name and name ~= "" then
				Q.npcIndex:Add(id, name)
				Q.npcZone[id], Q.npcRank[id] = Q.Npc.zoneID(id) or 0, Q.Npc.rank(id) or 0
				Q.npcFlags[id] = tonumber(Q.Npc.npcFlags(id)) or 0
			end
			if n % STEP == 0 then coroutine.yield() end
		end
	end, function()
		Q.names = "ready"
		ns.Wiki.DataReady()
	end)
	return false
end

-- Reverse lookups that QuestieDB stores per item: what an NPC drops and sells,
-- what an object contains, what a quest rewards.
function Q.LootReady()
	if Q.loot == "ready" then return true end
	if not lib or Q.loot then return false end
	Q.loot = "building"
	Q.drops, Q.sells, Q.contains, Q.rewards = {}, {}, {}, {}
	local function Collect(into, sources, itemId)
		for _, source in ipairs(sources or {}) do
			into[source] = into[source] or {}
			table.insert(into[source], itemId)
		end
	end
	Run(function()
		for n, id in ipairs(Q.Item.GetAllIds()) do
			Collect(Q.drops, Q.Item.npcDrops(id), id)
			Collect(Q.sells, Q.Item.vendors(id), id)
			Collect(Q.contains, Q.Item.objectDrops(id), id)
			Collect(Q.rewards, Q.Item.questRewards(id), id)
			if n % STEP == 0 then coroutine.yield() end
		end
	end, function()
		Q.loot = "ready"
		ns.Wiki.DataReady()
	end)
	return false
end

---------------------------------------------------------------------------
-- Zones and map positions
---------------------------------------------------------------------------

local function LoadMapTable(source)
	if type(source) ~= "string" then return type(source) == "table" and source or {} end
	local fn = loadstring(source) -- QuestieDB ships these tables as Lua source strings
	local ok, result = pcall(fn or error)
	return ok and type(result) == "table" and result or {}
end

function Q.UiMap(area)
	if not uiMaps then
		uiMaps = {}
		local private = zoneDB and zoneDB.private or {}
		for k, v in pairs(LoadMapTable(private.areaIdToUiMapId)) do uiMaps[k] = v end
		for k, v in pairs(LoadMapTable(private.areaIdToUiMapIdOverride)) do uiMaps[k] = v end
	end
	local id = uiMaps[area]
	return id and id ~= 0 and id or nil
end

function Q.ZoneName(area)
	if not area or area <= 0 then return nil end
	local dungeon = zoneDB and zoneDB.private and zoneDB.private.dungeons and zoneDB.private.dungeons[area]
	return (dungeon and dungeon[1]) or C_Map.GetAreaInfo(area) or ("Area " .. area)
end

-- Where the player stands: uiMapID, x, y (0-100), and the map's width and height in yards.
-- nil where the game gives no position (inside instances).
local function PlayerPlace()
	local uiMap = C_Map.GetBestMapForUnit("player")
	if not uiMap then return nil end
	local pos = C_Map.GetPlayerMapPosition(uiMap, "player")
	local width, height = C_Map.GetMapWorldSize(uiMap)
	if not (pos and width) then return nil end
	local x, y = pos:GetXY()
	return uiMap, x * 100, y * 100, width, height
end

-- Yards from the player to the closest of the spawns that is in the player's zone, and that
-- point { x, y }. nil when none is in this zone.
function Q.Distance(spawns)
	local uiMap, px, py, width, height = PlayerPlace()
	local best, point
	for area, points in pairs(uiMap and spawns or {}) do
		for _, p in ipairs(Q.UiMap(area) == uiMap and points or {}) do
			local d = ((p[1] - px) * width / 100) ^ 2 + ((p[2] - py) * height / 100) ^ 2
			if p[1] >= 0 and (not best or d < best) then best, point = d, p end
		end
	end
	return best and math.sqrt(best), point
end

-- shortcut: when the name index is built, only NPCs whose main zone is the player's are
-- measured (asking QuestieDB for the spawns of every NPC is too slow for sorting the whole
-- list); an NPC that merely also spawns here counts as "elsewhere".
function Q.NpcDistance(id)
	if Q.npcZone and Q.UiMap(Q.npcZone[id] or 0) ~= C_Map.GetBestMapForUnit("player") then return nil end
	return (Q.Distance(Q.Npc.spawns(id)))
end

-- Where an item comes from, as spawns { [areaID] = { {x, y}, ... } }: the vendors that sell
-- it; else the creatures with the best chance to drop it (those within a fifth of the best
-- count as equally good, all of them when no chance is known); else the objects that hold it.
-- shortcut: looks at no more than the first 40 of each.
function Q.ItemSpawns(item)
	local merged = {}
	if not lib then return merged end
	local function Add(entity, ids, accept)
		for i = 1, math.min(#(ids or {}), 40) do
			if not accept or accept(ids[i]) then
				for area, points in pairs(entity.spawns(ids[i]) or {}) do
					merged[area] = merged[area] or {}
					for _, p in ipairs(points) do table.insert(merged[area], p) end
				end
			end
		end
		return next(merged) ~= nil
	end
	local drops, best = Q.Item.npcDrops(item) or {}, 0
	for i = 1, math.min(#drops, 40) do best = math.max(best, Q.DropChance(item, drops[i]) or 0) end
	local _ = Add(Q.Npc, Q.Item.vendors(item))
		or Add(Q.Npc, drops, function(npc) return (Q.DropChance(item, npc) or 0) >= best * 0.8 end)
		or Add(Q.Object, Q.Item.objectDrops(item))
	return merged
end

-- What to show on the small map for a link: a place { area, x, y, points } of an NPC or
-- object; for an item where it is gathered ({ uiMap, points }: see Nodes.PlaceOfItem), else
-- where Q.ItemSpawns has it: in the player's zone when it is there, else in the zone with
-- most. nil when there is no outdoor position.
function Q.PlaceOf(kind, id)
	local spawns
	if kind == "item" then
		local place = ns.Nodes.PlaceOfItem(id)
		if place then return place end
		spawns = Q.ItemSpawns(id)
	elseif lib and id then
		local entity = kind == "npc" and Q.Npc or kind == "object" and Q.Object
		spawns = entity and entity.spawns(id)
	end
	for _, place in ipairs(Q.Places(spawns)) do
		if place.x >= 0 and Q.UiMap(place.area) then return place end
	end
end

-- spawns: { [areaID] = { {x, y}, ... } } -> { { area, x, y, count, points }, ... }: the
-- player's zone first (x, y: the spawn closest to the player), then the busiest zones.
-- x < 0 marks "inside an instance" (no outdoor coordinates).
function Q.Places(spawns)
	local places = {}
	local _, near = Q.Distance(spawns)
	for area, points in pairs(spawns or {}) do
		local first = points[1]
		if first then
			local here = false
			for _, p in ipairs(points) do
				if p == near then first, here = p, true end
			end
			places[#places + 1] = { area = area, x = first[1], y = first[2], count = #points, points = points, here = here }
		end
	end
	table.sort(places, function(a, b)
		if a.here ~= b.here then return a.here end
		if a.count ~= b.count then return a.count > b.count end
		return a.area < b.area
	end)
	return places
end

-- Opens the world map on the zone and drops the game's own map pin there.
function Q.ShowOnMap(area, x, y)
	local uiMap = Q.UiMap(area)
	if not uiMap or not x or x < 0 then
		ns.Print("No map position known for " .. (Q.ZoneName(area) or "this place") .. ".")
		return
	end
	if C_Map.CanSetUserWaypointOnMap(uiMap) then
		C_Map.SetUserWaypoint(UiMapPoint.CreateFromCoordinates(uiMap, x / 100, y / 100))
		C_SuperTrack.SetSuperTrackedUserWaypoint(true)
	end
	if InCombatLockdown() then
		ns.Print("Map pin set. Open the map after combat.")
	else
		C_Map.OpenWorldMap(uiMap)
	end
end

---------------------------------------------------------------------------
-- Quests
---------------------------------------------------------------------------

-- Any common bit. Plain arithmetic: race masks can exceed the 32 bits the bit library handles.
local function MaskOverlap(a, b)
	while a > 0 and b > 0 do
		if a % 2 >= 1 and b % 2 >= 1 then return true end
		a, b = math.floor(a / 2), math.floor(b / 2)
	end
	return false
end

-- false for quests of the other faction. side: "Alliance", "Horde", "all"; default the player's.
function Q.QuestForPlayer(id, side)
	if side == "all" then return true end
	if side ~= "Alliance" and side ~= "Horde" then side = UnitFactionGroup("player") or "" end
	local races = Q.Quest.requiredRaces(id)
	local mine = Q.factionMasks and Q.factionMasks[side]
	if not races or races == 0 or not mine then return true end
	return MaskOverlap(races, mine)
end

-- Quests of the zone the player is in: zone name, quest ids.
function Q.QuestsHere()
	local uiMap = C_Map.GetBestMapForUnit("player")
	local ids, zone = {}, nil
	if not uiMap or not Q.questsByZone then return "this zone", ids end
	Q.UiMap(0) -- make sure the area table is loaded
	for area, map in pairs(uiMaps) do
		if map == uiMap and Q.questsByZone[area] then
			zone = zone or Q.ZoneName(area)
			for _, id in ipairs(Q.questsByZone[area]) do ids[#ids + 1] = id end
		end
	end
	return zone or "this zone", ids
end

-- Drop chance in percent where QuestieDB has one (mostly quest items), else nil.
local chances
function Q.DropChance(item, npc)
	if chances == nil then
		chances = false
		local module = lib.Support.Get("QuestieClassicItemDrops")
		if module and type(module.wowheadData) == "string" then
			local fn = loadstring(module.wowheadData) -- shipped as Lua source; parsed once
			local ok, data = pcall(fn or error)
			if ok and type(data) == "table" then chances = data end
		end
	end
	return chances and chances[item] and chances[item][npc] or nil
end

-- "done", "active" or nil
function Q.QuestState(id)
	if C_QuestLog.IsQuestFlaggedCompleted(id) then return "done" end
	if C_QuestLog.IsOnQuest(id) then return "active" end
end

---------------------------------------------------------------------------
-- NPC roles and ranks (for the NPC filter and list)
---------------------------------------------------------------------------

-- key, label, QuestieDB flag name, the Classic flag value, icon
Q.NPC_ROLES = {
	{ "vendor", "Vendor", "VENDOR", 4, "Interface\\GossipFrame\\VendorGossipIcon" },
	{ "repair", "Repairs", "REPAIR", 16384, "Interface\\Minimap\\Tracking\\Repair" },
	{ "trainer", "Trainer", "TRAINER", 16, "Interface\\GossipFrame\\TrainerGossipIcon" },
	{ "quest", "Quest giver", "QUESTGIVER", 2, "Interface\\GossipFrame\\AvailableQuestIcon" },
	{ "inn", "Innkeeper", "INNKEEPER", 128, "Interface\\Minimap\\Tracking\\Innkeeper" },
	{ "flight", "Flight master", "FLIGHT_MASTER", 8, "Interface\\Minimap\\Tracking\\FlightMaster" },
	{ "bank", "Banker", "BANKER", 256, "Interface\\Minimap\\Tracking\\Banker" },
	{ "auction", "Auctioneer", "AUCTIONEER", 4096, "Interface\\Minimap\\Tracking\\Auctioneer" },
	{ "stable", "Stable master", "STABLE_MASTER", 8192, "Interface\\Minimap\\Tracking\\StableMaster" },
}
-- QuestieDB rank, label, icon
Q.NPC_RANKS = {
	{ 3, "Boss", "Interface\\TargetingFrame\\UI-TargetingFrame-Skull" },
	{ 4, "Rare", "Interface\\Tooltips\\RareEliteNameplateIcon" },
	{ 2, "Rare elite", "Interface\\Tooltips\\RareEliteNameplateIcon" },
	{ 1, "Elite", "Interface\\Tooltips\\EliteNameplateIcon" },
}

function Q.NpcHasRole(id, role)
	local mask = Q.npcFlagMasks[role[3]] or role[4]
	return (Q.npcFlags[id] or 0) % (mask * 2) >= mask
end

-- "Vendor, Repairs" and the icon that says most about the NPC (rank first, then role).
function Q.NpcRoles(id)
	local labels, icon = {}, nil
	for _, rank in ipairs(Q.NPC_RANKS) do
		if Q.npcRank[id] == rank[1] then icon = rank[3] end
	end
	for _, role in ipairs(Q.NPC_ROLES) do
		if Q.NpcHasRole(id, role) then
			labels[#labels + 1] = role[2]
			icon = icon or role[5]
		end
	end
	return table.concat(labels, ", "), icon
end

-- { { area, name }, ... } by name: the zones NPCs live in. Needs Q.NamesReady().
function Q.NpcZones()
	local dungeons = zoneDB and zoneDB.private and zoneDB.private.dungeons or {}
	local seen, list = {}, {}
	for _, area in pairs(Q.npcZone) do
		if area > 0 and not seen[area] then
			seen[area] = true
			local name = dungeons[area] and dungeons[area][1] or C_Map.GetAreaInfo(area)
			if name then list[#list + 1] = { area, name } end
		end
	end
	table.sort(list, function(a, b) return a[2] < b[2] end)
	return list
end

-- Experience a quest gives, or nil when unknown.
-- QuestieDB's QuestXP table is { [questID] = { questLevel, xp } }: the XP at the quest's own
-- level. shortcut: the game gives less once the quest is grey to you; that is not worked out.
local questXP
function Q.QuestXP(id)
	if questXP == nil then
		local module = lib.Support.Get("QuestXP")
		questXP = module and type(module.db) == "table" and module.db or false
	end
	local row = questXP and questXP[id]
	local xp = type(row) == "table" and row[2]
	return type(xp) == "number" and xp > 0 and xp or nil
end

-- Kinds of quest, for icons and the quest filter: key, label. Each has the game's own
-- quest-log icon (atlas "questlog-questtypeicon-<key>").
Q.QUEST_TYPES = {
	{ "quest", "Normal" }, { "group", "Group" }, { "dungeon", "Dungeon" }, { "raid", "Raid" },
	{ "pvp", "PvP" }, { "daily", "Daily" }, { "class", "Class" },
}
local TAGS = { [1] = "group", [21] = "class", [41] = "pvp", [62] = "raid", [81] = "dungeon" }
local BATTLEGROUNDS = { [2597] = true, [3277] = true, [3358] = true } -- Alterac, Warsong, Arathi
local areaKind

-- One of the Q.QUEST_TYPES keys.
-- shortcut: taken from the game's quest tag where the client has one, else worked out from
-- QuestieDB's quest flags and zone; group quests are only known through the tag.
function Q.QuestType(id)
	local flags = tonumber(Q.Quest.questFlags(id)) or 0
	if flags % 8192 >= 4096 then return "daily" end
	local tag = C_QuestLog.GetQuestTagInfo and C_QuestLog.GetQuestTagInfo(id)
	if tag and TAGS[tag.tagID] then return TAGS[tag.tagID] end
	if not areaKind then
		areaKind = {}
		for area in pairs(zoneDB and zoneDB.private and zoneDB.private.dungeons or {}) do areaKind[area] = "dungeon" end
		for _, d in ipairs(Q.Dungeons()) do
			for _, area in ipairs((Q.DungeonAreas(d.map))) do areaKind[area] = d.raid and "raid" or "dungeon" end
		end
	end
	local zone = Q.Quest.zoneOrSort(id) or 0
	if zone == -25 or BATTLEGROUNDS[zone] or flags % 16384 >= 8192 then return "pvp" end
	if flags % 128 >= 64 then return "raid" end
	if areaKind[zone] then return areaKind[zone] end
	if (tonumber(Q.Quest.requiredClasses(id)) or 0) ~= 0 then return "class" end
	return "quest"
end

function Q.QuestTypeLabel(kind)
	for _, t in ipairs(Q.QUEST_TYPES) do
		if t[1] == kind then return t[2] end
	end
end

-- Every quest to do, in order, to finish quest `id` (itself last). Where any one of several
-- quests opens the next, the one already done is taken, else the first open to the player.
-- What led up to a finished quest is left out: it no longer matters.
function Q.Chain(id)
	local steps, seen = {}, {}
	local function Visit(quest, depth)
		if seen[quest] or depth > 40 or not Q.Quest.name(quest) then return end
		seen[quest] = true
		local finished = Q.QuestState(quest) == "done"
		for _, pre in ipairs(not finished and Q.Quest.preQuestGroup(quest) or {}) do Visit(pre, depth + 1) end
		local pick
		for _, pre in ipairs(not finished and Q.Quest.preQuestSingle(quest) or {}) do
			if Q.Quest.name(pre) then
				if Q.QuestState(pre) == "done" then pick = pre break end
				pick = pick or (Q.QuestForPlayer(pre) and pre) or nil
			end
		end
		if pick then Visit(pick, depth + 1) end
		steps[#steps + 1] = quest
	end
	Visit(id, 0)
	return steps
end

-- Quests open to the player that reward the item.
function Q.RewardQuests(item)
	local list = {}
	for _, quest in ipairs(Q.Item.questRewards(item) or {}) do
		if Q.Quest.name(quest) and Q.QuestForPlayer(quest) then list[#list + 1] = quest end
	end
	return list
end

-- The reputation a quest gives: { { factionID, amount }, ... }, possibly empty.
function Q.RepGains(id)
	local gains, list = Q.Quest.reputationReward(id), {}
	for _, gain in ipairs(type(gains) == "table" and gains or {}) do
		if type(gain) == "table" and (gain[2] or 0) ~= 0 then list[#list + 1] = gain end
	end
	return list
end

function Q.FactionName(id)
	local data = C_Reputation and C_Reputation.GetFactionDataByID and C_Reputation.GetFactionDataByID(id)
	return data and data.name or ("Faction " .. id)
end

-- For the quest filter: { { id, name }, ... } by name. Outdoor zones that have quests,
-- and the reputations quests give. Needs Q.NamesReady().
function Q.QuestZones()
	local dungeonAreas = zoneDB and zoneDB.private and zoneDB.private.dungeons or {}
	local list = {}
	for area in pairs(Q.questsByZone) do
		local name = area > 0 and not dungeonAreas[area] and C_Map.GetAreaInfo(area)
		if name then list[#list + 1] = { area, name } end
	end
	table.sort(list, function(a, b) return a[2] < b[2] end)
	return list
end

function Q.QuestFactions()
	local list = {}
	for faction in pairs(Q.questsByFaction) do list[#list + 1] = { faction, Q.FactionName(faction) } end
	table.sort(list, function(a, b) return a[2] < b[2] end)
	return list
end

---------------------------------------------------------------------------
-- Dungeons (bundled) joined with QuestieDB's zone data when present
---------------------------------------------------------------------------

local dungeons

-- { { map, raid, players, level, name, bosses = { "name", ... } }, ... } sorted by name
function Q.Dungeons()
	if dungeons then return dungeons end
	dungeons = {}
	for _, chunk in ipairs(ns.DungeonRaw or {}) do
		for map, kind, players, level, name, bosses in chunk:gmatch("(%d+)|(%d+)|(%d+)|(%d+)|([^|\n]+)|([^\n]*)") do
			local d = { map = tonumber(map), raid = kind == "2", players = tonumber(players), level = tonumber(level), name = name, bosses = {} }
			for boss in bosses:gmatch("[^;]+") do d.bosses[#d.bosses + 1] = boss end
			dungeons[#dungeons + 1] = d
		end
	end
	ns.DungeonRaw = nil
	return dungeons
end

function Q.Dungeon(map)
	for _, d in ipairs(Q.Dungeons()) do
		if d.map == map then return d end
	end
end

-- QuestieDB's record for a dungeon: area ids its quests and NPCs use, and the entrances.
-- Returns areaIDs (list, possibly empty) and entrances { { area, x, y }, ... }.
local dungeonAreas = {} -- map -> { areas, entrances }
function Q.DungeonAreas(map)
	if not zoneDB then return {}, {} end -- nothing to remember before QuestieDB is there
	if not dungeonAreas[map] then dungeonAreas[map] = { Q.FindDungeonAreas(map) } end
	return dungeonAreas[map][1], dungeonAreas[map][2]
end

function Q.FindDungeonAreas(map)
	local records = zoneDB and zoneDB.private and zoneDB.private.dungeons or {}
	local area = zoneDB and zoneDB.instanceIdToAreaId and zoneDB.instanceIdToAreaId[map]
	if not area then
		-- newer dungeons may be missing from the instance table: match by name ("The Deadmines" = "Deadmines")
		local function Key(name) return (ns.Normalize(name):gsub("^the", "")) end
		local wanted = Key(Q.Dungeon(map).name)
		for id, r in pairs(records) do
			if Key(r[1]) == wanted then area = id break end
		end
	end
	local record = area and records[area]
	if not area then return {}, {} end
	local areas = { area }
	for _, alt in ipairs(record and record[2] or {}) do areas[#areas + 1] = alt end
	local entrances = {}
	for _, e in ipairs(record and record[4] or {}) do
		entrances[#entrances + 1] = { area = e[1], x = e[2], y = e[3] }
	end
	return areas, entrances
end

-- The levels a dungeon is for: lo is the level it is tuned for (bundled), hi two above its
-- highest boss (QuestieDB). Raids are for their one level.
-- shortcut: where no boss level is known (no QuestieDB, or a dungeon it does not have yet)
-- hi is lo + 7, a typical dungeon's span.
function Q.DungeonLevels(d)
	if d.raid then return d.level, d.level end
	if not lib then return d.level, d.level + 7 end
	if not d.hi then
		local top = 0
		local areas = Q.DungeonAreas(d.map)
		for _, boss in ipairs(d.bosses) do
			local npc = Q.BossNpc(boss, areas)
			top = math.max(top, npc and Q.Npc.maxLevel(npc) or 0)
		end
		d.hi = top >= d.level and top + 2 or d.level + 7
	end
	return d.level, d.hi
end

-- "16-21", coloured by what it is to the player: red too high, green right now, grey outgrown.
function Q.DungeonLevelText(d)
	local lo, hi = Q.DungeonLevels(d)
	if lo == 0 then return "" end
	local mine = UnitLevel("player") or 1
	local colour = mine < lo and ns.Hex.bad or mine <= hi and ns.Hex.good or ns.Hex.dim
	return colour .. lo .. (hi > lo and ("-" .. hi) or "") .. "|r"
end

-- The NPC behind a boss name; prefers one that lives in the dungeon.
function Q.BossNpc(name, areas)
	local ids = Q.Npc.IdsByName(name)
	if not ids then return nil end
	for _, id in ipairs(ids) do
		local zone = Q.Npc.zoneID(id)
		for _, area in ipairs(areas) do
			if zone == area then return id end
		end
	end
	return ids[1]
end
