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

-- Name indexes for quests and NPCs, plus quests grouped by zone.
-- Returns true when ready; otherwise starts the work and calls ns.Wiki.DataReady() later.
function Q.NamesReady()
	if Q.names == "ready" then return true end
	if not lib or Q.names then return false end
	Q.names = "building"
	Q.questIndex, Q.npcIndex, Q.questsByZone = ns.NewIndex(), ns.NewIndex(), {}
	Run(function()
		for n, id in ipairs(Q.Quest.GetAllIds()) do
			local name = Q.Quest.name(id)
			if name and name ~= "" then
				Q.questIndex:Add(id, name)
				local zone = Q.Quest.zoneOrSort(id) or 0
				Q.questsByZone[zone] = Q.questsByZone[zone] or {}
				table.insert(Q.questsByZone[zone], id)
			end
			if n % STEP == 0 then coroutine.yield() end
		end
		for n, id in ipairs(Q.Npc.GetAllIds()) do
			local name = Q.Npc.name(id)
			if name and name ~= "" then Q.npcIndex:Add(id, name) end
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

-- spawns: { [areaID] = { {x, y}, ... } } -> { { area, x, y, count }, ... }, busiest zone first.
-- x < 0 marks "inside an instance" (no outdoor coordinates).
function Q.Places(spawns)
	local places = {}
	for area, points in pairs(spawns or {}) do
		local first = points[1]
		if first then
			places[#places + 1] = { area = area, x = first[1], y = first[2], count = #points }
		end
	end
	table.sort(places, function(a, b)
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

-- false for quests of the other faction
function Q.QuestForPlayer(id)
	local races = Q.Quest.requiredRaces(id)
	local mine = Q.factionMasks and Q.factionMasks[UnitFactionGroup("player") or ""]
	if not races or races == 0 or not mine then return true end
	return MaskOverlap(races, mine)
end

-- "done", "active" or nil
function Q.QuestState(id)
	if C_QuestLog.IsQuestFlaggedCompleted(id) then return "done" end
	if C_QuestLog.IsOnQuest(id) then return "active" end
end

---------------------------------------------------------------------------
-- Dungeons (bundled) joined with QuestieDB's zone data when present
---------------------------------------------------------------------------

local dungeons

-- { { map, raid, players, name, bosses = { "name", ... } }, ... } sorted by name
function Q.Dungeons()
	if dungeons then return dungeons end
	dungeons = {}
	for _, chunk in ipairs(ns.DungeonRaw or {}) do
		for map, kind, players, name, bosses in chunk:gmatch("(%d+)|(%d+)|(%d+)|([^|\n]+)|([^\n]*)") do
			local d = { map = tonumber(map), raid = kind == "2", players = tonumber(players), name = name, bosses = {} }
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
function Q.DungeonAreas(map)
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
