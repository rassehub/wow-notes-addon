local _, ns = ...

-- Wiki content. A page is { title, lines }, and every line is plain data:
--   { text, right, indent, head = true }            caption
--   { text, right, indent, kind, id }               link to another page
--   { text, indent, area, x, y }                    map position (click to pin)
--   { text, indent, item = id }                     shows the item tooltip on hover
-- The browser (UI/Browser.lua) only draws lines and follows links.

local Wiki = {}
ns.Wiki = Wiki

local Q, Recipes = ns.Q, ns.Recipes

Wiki.TABS = {
	{ key = "goals", label = "Goals" },
	{ key = "item", label = "Items", hint = "Type an item name, or pick a filter and browse." },
	{ key = "quest", label = "Quests", hint = "Type a quest name.", needsQuestie = true },
	{ key = "dungeon", label = "Dungeons" },
	{ key = "profession", label = "Professions" },
	{ key = "npc", label = "NPCs", hint = "Type the name of a creature, vendor or quest giver.", needsQuestie = true },
}

local NEED_QUESTIE = "Install the QuestieDB addon (its Forever version) to see quests, NPCs, drops, vendors and map locations."
local LOADING = "Loading data..."
local RANKS = { [1] = "elite", [2] = "rare elite", [3] = "boss", [4] = "rare" }

function Wiki.DataReady()
	if ns.Browser then ns.Browser.Refresh() end
end

---------------------------------------------------------------------------
-- Labels
---------------------------------------------------------------------------

local function ItemLabel(id)
	local item = ns.GetItem(id)
	return "|c" .. ns.QualityHex(item.quality) .. item.name .. "|r"
end

local function NpcLevel(id)
	local lo, hi = Q.Npc.minLevel(id) or 0, Q.Npc.maxLevel(id) or 0
	if hi <= 0 then return "" end
	local text = (lo > 0 and lo ~= hi) and (lo .. "-" .. hi) or tostring(hi)
	local rank = RANKS[Q.Npc.rank(id) or 0]
	return text .. (rank and (" " .. rank) or "")
end

local function QuestLabel(id)
	local level = Q.Quest.questLevel(id) or 0
	local state = Q.QuestState(id)
	return (level > 0 and ("[" .. level .. "] ") or "") .. (Q.Quest.name(id) or ("Quest " .. id))
		.. (state == "done" and " |cff40ff40(done)|r" or state == "active" and " |cffffd100(in your log)|r" or "")
end

---------------------------------------------------------------------------
-- Page builder
---------------------------------------------------------------------------

local Page = {}
Page.__index = Page

local function NewPage(title)
	return setmetatable({ title = title, lines = {} }, Page)
end

function Page:Add(line)
	self.lines[#self.lines + 1] = line
	return line
end

function Page:Head(text, right)
	if #self.lines > 0 then self:Add({ text = " " }) end
	self:Add({ text = text, right = right, head = true })
end

function Page:Text(text, indent)
	self:Add({ text = text, indent = indent or 0 })
end

function Page:Note(text)
	self:Add({ text = "|cff999999" .. text .. "|r", indent = 0 })
end

function Page:Link(kind, id, text, right, indent)
	self:Add({ kind = kind, id = id, text = text, right = right, indent = indent or 1, item = kind == "item" and id or nil })
end

function Page:Item(id, right, indent)
	self:Link("item", id, ItemLabel(id), right, indent)
end

function Page:Npc(id, indent)
	local zone = Q.ZoneName(Q.Npc.zoneID(id))
	self:Link("npc", id, Q.Npc.name(id) or ("NPC " .. id), zone, indent)
end

function Page:Quest(id, indent)
	self:Link("quest", id, QuestLabel(id), nil, indent)
end

-- Adds up to `cap` entries and says how many were left out.
function Page:Each(ids, cap, fn)
	for i = 1, math.min(#ids, cap) do fn(ids[i]) end
	if #ids > cap then self:Note("   ... and " .. (#ids - cap) .. " more") end
end

-- Where something is: one map line per zone.
function Page:Places(spawns, indent)
	local places = Q.Places(spawns)
	for i = 1, math.min(#places, 6) do
		local p = places[i]
		local zone = Q.ZoneName(p.area) or "Unknown zone"
		if p.x < 0 or not Q.UiMap(p.area) then
			self:Text("Inside " .. zone, indent or 1)
		else
			local more = p.count > 1 and ("  (" .. p.count .. " places)") or ""
			self:Add({ text = ("%s  %.1f, %.1f%s"):format(zone, p.x, p.y, more), indent = indent or 1, area = p.area, x = p.x, y = p.y })
		end
	end
	if #places == 0 then self:Note("   No known location") end
end

local function SortedByName(ids, nameOf)
	local list = {}
	for i, id in ipairs(ids) do list[i] = id end
	table.sort(list, function(a, b)
		local na, nb = nameOf(a) or "", nameOf(b) or ""
		if na ~= nb then return na < nb end
		return a < b
	end)
	return list
end

local function PlayerQuests(ids)
	local list = {}
	for _, id in ipairs(ids or {}) do
		if Q.Quest.name(id) and Q.QuestForPlayer(id) then list[#list + 1] = id end
	end
	table.sort(list, function(a, b)
		local la, lb = Q.Quest.questLevel(a) or 0, Q.Quest.questLevel(b) or 0
		if la ~= lb then return la < lb end
		return a < b
	end)
	return list
end

---------------------------------------------------------------------------
-- Pages
---------------------------------------------------------------------------

local pages = {}

function pages.item(id)
	local item = ns.GetItem(id)
	local page = NewPage(ItemLabel(id))
	page.itemId = id

	local facts = {}
	if ns.IsEquippable(item.equipLoc) and _G[item.equipLoc] then facts[#facts + 1] = _G[item.equipLoc] end
	if item.subType or item.type then facts[#facts + 1] = item.subType or item.type end
	if item.ilvl and item.ilvl > 1 then facts[#facts + 1] = "item level " .. item.ilvl end
	if item.reqLevel and item.reqLevel > 1 then facts[#facts + 1] = "requires level " .. item.reqLevel end
	page:Add({ text = #facts > 0 and table.concat(facts, ", ") or "Item", item = id })
	page:Add({ text = "|cff999999Hover any item line for its full tooltip and stats.|r", item = id })
	local bags, bank, warband, total = ns.GetCounts(id)
	if total > 0 then page:Text(("You have %d (bags %d, bank %d)"):format(total, bags, bank + warband)) end

	local taught = Recipes.FromScroll(id)
	if taught then
		page:Head("Teaches")
		page:Item(taught)
	end
	local recipe = Recipes.Get(taught or id)
	if recipe then
		page:Head(taught and "Reagents" or ("Crafted with " .. recipe.profession),
			recipe.made > 1 and ("makes " .. recipe.made) or nil)
		if recipe.yellow > 0 then
			page:Text(("Skill: yellow at %d, grey at %d"):format(recipe.yellow, recipe.grey), 1)
		end
		for _, r in ipairs(recipe.reagents) do
			local _, _, _, have = ns.GetCounts(r[1])
			page:Link("item", r[1], r[2] .. " x " .. ItemLabel(r[1]), have > 0 and ("have " .. have) or nil)
		end
	end
	local uses = Recipes.UsedIn(id)
	if uses then
		page:Head("Used to make", #uses .. (#uses == 1 and " recipe" or " recipes"))
		page:Each(SortedByName(uses, ns.ItemDB.GetName), 40, function(used) page:Item(used, Recipes.Get(used).profession) end)
	end

	if not Q.Available() then
		page:Head("Where to get it")
		page:Note(NEED_QUESTIE)
		return page
	end
	local I = Q.Item
	local drops, objects, containers = I.npcDrops(id), I.objectDrops(id), I.itemDrops(id)
	local vendors, rewards, related = I.vendors(id), PlayerQuests(I.questRewards(id)), PlayerQuests(I.relatedQuests(id))
	local starts = I.startQuest(id) or 0
	if vendors then
		page:Head("Sold by", tostring(#vendors))
		page:Each(SortedByName(vendors, Q.Npc.name), 25, function(npc) page:Npc(npc) end)
	end
	if drops then
		page:Head("Dropped by", tostring(#drops))
		page:Each(SortedByName(drops, Q.Npc.name), 30, function(npc) page:Npc(npc) end)
	end
	if objects then
		page:Head("Found in", tostring(#objects))
		page:Each(SortedByName(objects, Q.Object.name), 20, function(obj)
			page:Link("object", obj, Q.Object.name(obj) or ("Object " .. obj), Q.ZoneName(Q.Object.zoneID(obj)))
		end)
	end
	if containers then
		page:Head("Contained in")
		page:Each(containers, 20, function(container) page:Item(container) end)
	end
	if #rewards > 0 then
		page:Head("Quest reward")
		page:Each(rewards, 20, function(quest) page:Quest(quest) end)
	end
	if starts ~= 0 then
		page:Head("Starts a quest")
		page:Quest(starts)
	end
	if #related > 0 then
		page:Head("Needed for quests")
		page:Each(related, 20, function(quest) page:Quest(quest) end)
	end
	if not (vendors or drops or objects or containers or recipe) and #rewards == 0 then
		page:Head("Where to get it")
		page:Note("No source recorded for this item.")
	end
	return page
end

function pages.npc(id)
	local N = Q.Npc
	local page = NewPage(N.name(id) or ("NPC " .. id))
	local sub = N.subName(id)
	if sub and sub ~= "" then page:Text("<" .. sub .. ">") end
	local level = NpcLevel(id)
	if level ~= "" then page:Text("Level " .. level) end
	local friendly = N.friendlyToFaction(id)
	if friendly == "A" or friendly == "H" then
		page:Text("Friendly to " .. (friendly == "A" and "Alliance" or "Horde"))
	end

	page:Head("Location", "click to pin on the map")
	page:Places(N.spawns(id))

	local starts, ends = PlayerQuests(N.questStarts(id)), PlayerQuests(N.questEnds(id))
	if #starts > 0 then
		page:Head("Starts quests", tostring(#starts))
		page:Each(starts, 40, function(quest) page:Quest(quest) end)
	end
	if #ends > 0 then
		page:Head("Ends quests", tostring(#ends))
		page:Each(ends, 40, function(quest) page:Quest(quest) end)
	end

	if not Q.LootReady() then
		page:Head("Loot")
		page:Note(LOADING)
		return page
	end
	local sells, drops = Q.sells[id], Q.drops[id]
	if sells then
		page:Head("Sells", tostring(#sells))
		page:Each(SortedByName(sells, ns.ItemDB.GetName), 80, function(item) page:Item(item) end)
	end
	if drops then
		-- best loot first: world drops shared by hundreds of creatures sink to the bottom
		local list = SortedByName(drops, ns.ItemDB.GetName)
		table.sort(list, function(a, b)
			local qa, qb = ns.ItemDB.GetQuality(a) or 0, ns.ItemDB.GetQuality(b) or 0
			if qa ~= qb then return qa > qb end
			return (ns.ItemDB.GetName(a) or "") < (ns.ItemDB.GetName(b) or "")
		end)
		page:Head("Drops", tostring(#list))
		page:Each(list, 80, function(item) page:Item(item) end)
	end
	return page
end

function pages.object(id)
	local O = Q.Object
	local page = NewPage(O.name(id) or ("Object " .. id))
	page:Head("Location", "click to pin on the map")
	page:Places(O.spawns(id))
	local starts, ends = PlayerQuests(O.questStarts(id)), PlayerQuests(O.questEnds(id))
	if #starts > 0 then
		page:Head("Starts quests")
		page:Each(starts, 40, function(quest) page:Quest(quest) end)
	end
	if #ends > 0 then
		page:Head("Ends quests")
		page:Each(ends, 40, function(quest) page:Quest(quest) end)
	end
	if Q.LootReady() and Q.contains[id] then
		page:Head("Contains")
		page:Each(SortedByName(Q.contains[id], ns.ItemDB.GetName), 60, function(item) page:Item(item) end)
	end
	return page
end

-- Everything that must be done first, nested. preQuestGroup: all of them; preQuestSingle: any one.
local function Prerequisites(page, id, indent, seen)
	if indent > 6 or seen[id] then return end
	seen[id] = true
	local function List(ids, caption)
		if not ids or #ids == 0 then return end
		if #ids > 1 then page:Text("|cff999999" .. caption .. "|r", indent) end
		for _, pre in ipairs(ids) do
			if Q.Quest.name(pre) then
				page:Quest(pre, indent)
				Prerequisites(page, pre, indent + 1, seen)
			end
		end
	end
	List(Q.Quest.preQuestGroup(id), "all of:")
	List(Q.Quest.preQuestSingle(id), "one of:")
end
Wiki.Prerequisites = Prerequisites

local function QuestEnds(page, who)
	for _, npc in ipairs(who[1] or {}) do
		page:Npc(npc)
		page:Places(Q.Npc.spawns(npc), 2)
	end
	for _, obj in ipairs(who[2] or {}) do
		page:Link("object", obj, Q.Object.name(obj) or ("Object " .. obj), Q.ZoneName(Q.Object.zoneID(obj)))
		page:Places(Q.Object.spawns(obj), 2)
	end
	for _, item in ipairs(who[3] or {}) do
		page:Item(item, "item that starts the quest")
	end
end

function pages.quest(id)
	local T = Q.Quest
	local page = NewPage(QuestLabel(id))
	page.questId = id
	local facts = {}
	local level, required = T.questLevel(id) or 0, T.requiredLevel(id) or 0
	if level > 0 then facts[#facts + 1] = "Level " .. level end
	if required > 0 then facts[#facts + 1] = "requires level " .. required end
	local zone = Q.ZoneName(T.zoneOrSort(id))
	if zone then facts[#facts + 1] = zone end
	if #facts > 0 then page:Text(table.concat(facts, ", ")) end
	if not Q.QuestForPlayer(id) then page:Text("|cffff6060Not available to your faction.|r") end

	local startedBy, finishedBy = T.startedBy(id) or {}, T.finishedBy(id) or {}
	page:Head("Starts at")
	QuestEnds(page, startedBy)
	if not (startedBy[1] or startedBy[2] or startedBy[3]) then page:Note("   Unknown") end

	local text = T.objectivesText(id)
	if text and #text > 0 then
		page:Head("Objectives")
		page:Add({ text = table.concat(text, " "), indent = 1, wrap = true })
	end
	local objectives = T.objectives(id) or {}
	if objectives[1] or objectives[2] or objectives[3] then
		page:Head("Targets")
		for _, o in ipairs(objectives[1] or {}) do page:Npc(o[1]) end
		for _, o in ipairs(objectives[2] or {}) do
			page:Link("object", o[1], Q.Object.name(o[1]) or ("Object " .. o[1]), Q.ZoneName(Q.Object.zoneID(o[1])))
		end
		for _, o in ipairs(objectives[3] or {}) do page:Item(o[1], "quest item") end
	end

	page:Head("Turn in at")
	QuestEnds(page, finishedBy)
	if not (finishedBy[1] or finishedBy[2]) then page:Note("   Unknown") end

	local before = #page.lines
	page:Head("Required first")
	local headLines = #page.lines
	Prerequisites(page, id, 1, {})
	if #page.lines == headLines then -- nothing required: drop the caption again
		for i = #page.lines, before + 1, -1 do page.lines[i] = nil end
	end

	local nextQuest, children = T.nextQuestInChain(id) or 0, T.childQuests(id)
	if nextQuest ~= 0 or children then
		page:Head("Leads to")
		if nextQuest ~= 0 and T.name(nextQuest) then page:Quest(nextQuest) end
		for _, child in ipairs(children or {}) do
			if T.name(child) then page:Quest(child) end
		end
	end

	if Q.LootReady() then
		local rewards = Q.rewards[id]
		if rewards then
			page:Head("Rewards")
			page:Each(SortedByName(rewards, ns.ItemDB.GetName), 20, function(item) page:Item(item) end)
		end
	else
		page:Head("Rewards")
		page:Note(LOADING)
	end
	return page
end

function pages.dungeon(map)
	local d = Q.Dungeon(map)
	local page = NewPage(d.name)
	page:Text((d.raid and "Raid" or "Dungeon") .. (d.players > 1 and (", " .. d.players .. " players") or ""))

	local areas, entrances = Q.DungeonAreas(map)
	if #entrances > 0 then
		page:Head("Entrance", "click to pin on the map")
		for _, e in ipairs(entrances) do
			page:Add({ text = ("%s  %.1f, %.1f"):format(Q.ZoneName(e.area) or "Zone", e.x, e.y), indent = 1, area = e.area, x = e.x, y = e.y })
		end
	end

	page:Head("Bosses", Q.Available() and "open a boss to see its loot" or nil)
	for _, boss in ipairs(d.bosses) do
		local npc = Q.Available() and Q.BossNpc(boss, areas)
		if npc then
			page:Link("npc", npc, boss, NpcLevel(npc))
		else
			page:Text(boss, 1)
		end
	end

	if not Q.Available() then
		page:Head("Quests and loot")
		page:Note(NEED_QUESTIE)
	elseif not Q.NamesReady() then
		page:Head("Quests")
		page:Note(LOADING)
	else
		local ids = {}
		for _, area in ipairs(areas) do
			for _, quest in ipairs(Q.questsByZone[area] or {}) do ids[#ids + 1] = quest end
		end
		local quests = PlayerQuests(ids)
		page:Head("Quests", tostring(#quests))
		for _, quest in ipairs(quests) do
			page:Quest(quest)
			Prerequisites(page, quest, 2, {})
		end
		if #quests == 0 then page:Note("   No quests recorded for this dungeon.") end
	end
	return page
end

function pages.profession(name)
	local page = NewPage(name)
	local list = Recipes.OfProfession(name)
	page:Head("Recipes", #list .. " - skill where each turns yellow / grey")
	for _, id in ipairs(list) do
		local r = Recipes.Get(id)
		page:Item(id, r.yellow > 0 and (r.yellow .. " / " .. r.grey) or nil)
	end
	return page
end

function Wiki.Page(kind, id)
	local build = pages[kind]
	if not build then return nil end
	if (kind == "npc" or kind == "object" or kind == "quest") and not Q.Available() then
		local page = NewPage(kind)
		page:Note(NEED_QUESTIE)
		return page
	end
	return build(id)
end

---------------------------------------------------------------------------
-- Result lists (left side of a tab)
---------------------------------------------------------------------------

local LIMIT = 200

-- Returns entries { kind, id, text, right } and an optional message for an empty list.
function Wiki.List(tab, text)
	local entries = {}
	if tab == "item" then
		local filter = ns.ItemDB.FilterActive() and ns.ItemDB.MatchesFilter or nil
		for _, r in ipairs(ns.ItemDB.Search(text, LIMIT, filter, true)) do
			entries[#entries + 1] = { kind = "item", id = r.id, item = r.id,
				text = "|c" .. ns.QualityHex(r.quality) .. r.name .. "|r", right = Recipes.Get(r.id) and "crafted" or nil }
		end
	elseif tab == "dungeon" then
		local needle = ns.Normalize(text)
		for _, d in ipairs(Q.Dungeons()) do
			if needle == "" or ns.Normalize(d.name):find(needle, 1, true) then
				entries[#entries + 1] = { kind = "dungeon", id = d.map, text = d.name, right = d.raid and "raid" or nil }
			end
		end
	elseif tab == "profession" then
		if #ns.Normalize(text) < 2 then
			for _, name in ipairs(ns.Professions) do
				local count = #Recipes.OfProfession(name)
				if count > 0 then entries[#entries + 1] = { kind = "profession", id = name, text = name, right = count .. " recipes" } end
			end
			table.sort(entries, function(a, b) return a.text < b.text end)
		else
			for _, r in ipairs(ns.ItemDB.Search(text, LIMIT, function(id) return Recipes.Get(id) ~= nil end)) do
				entries[#entries + 1] = { kind = "item", id = r.id, item = r.id,
					text = "|c" .. ns.QualityHex(r.quality) .. r.name .. "|r", right = Recipes.Get(r.id).profession }
			end
		end
	elseif tab == "quest" or tab == "npc" then
		if not Q.Available() then return entries, NEED_QUESTIE end
		if not Q.NamesReady() then return entries, LOADING end
		if tab == "quest" then
			for _, r in ipairs(Q.questIndex:Search(text, LIMIT, Q.QuestForPlayer)) do
				local level = Q.Quest.questLevel(r.id) or 0
				local state = Q.QuestState(r.id)
				entries[#entries + 1] = { kind = "quest", id = r.id, text = r.name,
					right = state == "done" and "|cff40ff40done|r" or (level > 0 and tostring(level) or nil) }
			end
		else
			for _, r in ipairs(Q.npcIndex:Search(text, LIMIT)) do
				entries[#entries + 1] = { kind = "npc", id = r.id, text = r.name, right = Q.ZoneName(Q.Npc.zoneID(r.id)) }
			end
		end
	end
	return entries
end
