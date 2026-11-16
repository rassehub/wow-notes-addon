local _, ns = ...

-- Wiki content. A page is { title, lines }, and every line is plain data:
--   { text, right, indent, head = true }            caption
--   { text, right, indent, kind, id }               link to another page
--   { text, indent, area, x, y, points }            map position (hover: small map, click to pin)
--   { text, indent, uiMap, points }                 gathering nodes of a zone (hover: small map, click: its map)
--   { text, indent, toggle = key }                  click flips the setting ns.db[key]
--   badge = true                                    the right text stands on a black plate
--   { text, indent, item = id }                     shows the item tooltip on hover
--   { text, indent, more = key }                    "... and N more": click to list them all
-- A caption starts a section; the browser can fold sections and remembers which.
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

-- icon + quality-coloured name
local function ItemLabel(id)
	local item = ns.GetItem(id)
	local icon = C_Item.GetItemIconByID(id)
	return (icon and ("|T" .. icon .. ":0|t ") or "") .. "|c" .. ns.QualityHex(item.quality) .. item.name .. "|r"
end

-- "Legs, Leather" for gear, the item type otherwise. Instant: needs no server data.
local function ItemKind(id)
	local _, itemType, subType, equipLoc = C_Item.GetItemInfoInstant(id)
	local slot = ns.IsEquippable(equipLoc) and _G[equipLoc]
	if slot then return slot .. (subType and subType ~= "" and (", " .. subType) or "") end
	return subType or itemType
end

-- One short phrase for the goal list's Source column: where an item comes from.
local sources = {}
function Wiki.Source(id)
	if sources[id] ~= nil then return sources[id] or nil end
	local text
	local recipe = Recipes.Get(id)
	local gathering, node = ns.Nodes.KindOfItem(id)
	if recipe then
		text = recipe.profession
	elseif gathering then
		text = gathering .. ": " .. node
	elseif Q.Available() then
		local vendors, drops, objects = Q.Item.vendors(id), Q.Item.npcDrops(id), Q.Item.objectDrops(id)
		if vendors then
			text = "Vendor: " .. (Q.Npc.name(vendors[1]) or "?")
		elseif drops then
			local chance = #drops == 1 and Q.DropChance(id, drops[1])
			text = #drops == 1 and ("Drop: " .. (Q.Npc.name(drops[1]) or "?") .. (chance and (" %.3g%%"):format(chance) or ""))
				or ("Drop: " .. #drops .. " creatures")
		elseif objects then
			text = "In: " .. (Q.Object.name(objects[1]) or "?")
		elseif Q.Item.questRewards(id) then
			local quest = Q.RewardQuests(id)[1]
			text = quest and ("Quest: " .. Q.Quest.name(quest)) or "Quest reward"
		end
	end
	if text or Q.Available() then sources[id] = text or false end -- "unknown" is only final with QuestieDB
	return text
end

-- How the recipe for a crafted item is learned, in a few words: "Trainer", or the recipe
-- item's own source ("Pattern - Vendor: Blixrez Goodstitch").
function Wiki.LearnedFrom(id)
	local scrolls = Recipes.Scrolls(id)
	if not scrolls then return "Trainer" end
	local kind = (ns.ItemDB.GetName(scrolls[1]) or "Recipe"):match("^(%a+):") or "Recipe"
	local source = Wiki.Source(scrolls[1])
	return kind .. (source and (" - " .. source) or "")
end

-- "25 35": the skill at which a recipe turns yellow and grey, each in its colour.
local function SkillText(recipe)
	return recipe.yellow > 0 and (ns.Hex.yellow .. "%d|r " .. ns.Hex.grey .. "%d|r"):format(recipe.yellow, recipe.grey) or ""
end

local function Yards(distance)
	return distance and (math.floor(distance + 0.5) .. " yd") or ""
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
		.. (state == "done" and " " .. ns.Hex.good .. "(done)|r" or state == "active" and " " .. ns.Hex.gold .. "(in your log)|r" or "")
end

---------------------------------------------------------------------------
-- Page builder
---------------------------------------------------------------------------

local Page = {}
Page.__index = Page

local expanded -- { [key] = true }: the capped lists the reader asked to see in full

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
	self.section = text
end

-- Is the list `key` shown in full?
function Page:Full(key)
	return expanded ~= nil and expanded[key] == true
end

function Page:More(count, key, indent)
	self:Add({ text = ns.Hex.dim .. "... and " .. count .. " more (click to show all)|r", indent = indent or 1, more = key })
end

function Page:Text(text, indent)
	self:Add({ text = text, indent = indent or 0 })
end

function Page:Note(text)
	self:Add({ text = ns.Hex.dim .. text .. "|r", indent = 0 })
end

function Page:Link(kind, id, text, right, indent)
	return self:Add({ kind = kind, id = id, text = text, right = right, indent = indent or 1, item = kind == "item" and id or nil })
end

function Page:Item(id, right, indent)
	self:Link("item", id, ItemLabel(id), right, indent)
end

-- an item in a loot or stock list: its slot and type on the right, and the chance
-- that `npc` drops it where that is known
function Page:Loot(id, indent, npc)
	local kind, chance = ItemKind(id), npc and Q.DropChance(id, npc)
	if chance then kind = (kind and (kind .. "  ") or "") .. ("%.3g%%"):format(chance) end
	-- drawn faded: gear the player's class cannot equip
	self:Link("item", id, ItemLabel(id), kind, indent).unusable = ns.ItemDB.Usable(id) == false or nil
end

-- The quests to do for quest `id`, numbered in order (withSelf: the quest itself last).
-- Marks and returns the first one that is not done yet.
function Page:Chain(id, indent, withSelf)
	local steps, nextStep = Q.Chain(id), nil
	for i = 1, #steps - (withSelf and 0 or 1) do
		local quest = steps[i]
		local isNext = not nextStep and Q.QuestState(quest) ~= "done"
		if isNext then nextStep = quest end
		self:Link("quest", quest, i .. ". " .. QuestLabel(quest),
			isNext and ns.Hex.gold .. "do this next|r" or (quest == id and "this quest") or nil, indent)
	end
	return nextStep
end

-- The game's own tooltip, line by line: stats, effects, set bonuses, requirements.
function Page:Tooltip(id)
	local data = C_TooltipInfo and C_TooltipInfo.GetItemByID and C_TooltipInfo.GetItemByID(id)
	if not (data and data.lines and #data.lines > 1) then return end
	self:Head("Stats")
	for i = 2, #data.lines do -- line 1 is the name
		local line = data.lines[i]
		local left = line.leftText
		if type(left) == "string" and left:match("%S") then
			local c = line.leftColor
			if c and c.r then left = ("|cff%02x%02x%02x%s|r"):format(c.r * 255, c.g * 255, c.b * 255, left) end
			self:Add({ text = left, right = type(line.rightText) == "string" and line.rightText or nil, indent = 1, wrap = true })
		end
	end
end

function Page:Npc(id, indent)
	local zone = Q.ZoneName(Q.Npc.zoneID(id))
	self:Link("npc", id, Q.Npc.name(id) or ("NPC " .. id), zone, indent)
end

function Page:Quest(id, indent)
	self:Link("quest", id, QuestLabel(id), nil, indent)
end

-- Adds up to `cap` entries and offers the rest.
function Page:Each(ids, cap, fn)
	local key = self.section or ""
	if self:Full(key) then cap = #ids end
	for i = 1, math.min(#ids, cap) do fn(ids[i]) end
	if #ids > cap then self:More(#ids - cap, key) end
end

-- NPCs under the open section. With more than one there is a line to switch "closest first"
-- on and off: then those in the player's zone lead, by distance; the rest keep their order.
-- extra(npc): more text for the right side, or nil.
function Page:Npcs(ids, cap, extra)
	local on, distance, at = ns.db.nearFirst, {}, {}
	if #ids > 1 then
		self:Add({ text = ns.Hex.dim .. (on and "Closest in your zone first" or "Not ordered by distance") .. " (click to change)|r",
			indent = 1, toggle = "nearFirst" })
	end
	for i, id in ipairs(ids) do at[id], distance[id] = i, on and Q.Distance(Q.Npc.spawns(id)) or nil end
	if on then
		table.sort(ids, function(a, b)
			local da, db = distance[a] or math.huge, distance[b] or math.huge
			if da ~= db then return da < db end
			return at[a] < at[b]
		end)
	end
	self:Each(ids, cap, function(npc)
		local right = Yards(distance[npc]) .. "  " .. (Q.ZoneName(Q.Npc.zoneID(npc)) or "") .. (extra and extra(npc) or "")
		self:Link("npc", npc, Q.Npc.name(npc) or ("NPC " .. npc), right:match("^%s*(.*)"))
	end)
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
			self:Add({ text = ("%s  %.1f, %.1f%s"):format(zone, p.x, p.y, more), indent = indent or 1,
				area = p.area, x = p.x, y = p.y, points = p.points })
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

-- side: see Q.QuestForPlayer
local function PlayerQuests(ids, side)
	local list = {}
	for _, id in ipairs(ids or {}) do
		if Q.Quest.name(id) and Q.QuestForPlayer(id, side) then list[#list + 1] = id end
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
	page.equippable = ns.IsEquippable(item.equipLoc)
	page:Add({ text = #facts > 0 and table.concat(facts, ", ") or "Item", item = id })
	local bags, bank, warband, total = ns.GetCounts(id)
	if total > 0 then page:Text(("You have %d (bags %d, bank %d)"):format(total, bags, bank + warband)) end
	local _, alts = ns.Alts.Count(id)
	for _, alt in ipairs(alts) do
		page:Text((ns.Hex.alt .. "%s has %d (bags %d, bank %d)|r"):format(alt.name, alt.bags + alt.bank, alt.bags, alt.bank))
	end
	page:Tooltip(id)

	-- shortcut: one vendor price for everybody; reputation discounts are not worked out
	local buy, sell, auction = ns.ItemDB.GetPrice(id), ns.ItemDB.GetSellPrice(id), ns.ItemDB.GetAuctionPrice(id)
	local stocked = not Q.Available() or Q.Item.vendors(id) -- without QuestieDB nobody knows who sells it
	if (buy > 0 and stocked) or sell > 0 or auction then
		page:Head("Prices")
		if buy > 0 and stocked then
			page:Add({ text = Q.Available() and "Vendors sell it for" or "A vendor that has it sells it for", right = ns.Coins(buy), indent = 1 })
		end
		if sell > 0 then page:Add({ text = "Vendors pay you", right = ns.Coins(sell), indent = 1 }) end
		if auction then page:Add({ text = "Auction house, at the last scan", right = ns.Coins(auction), indent = 1 }) end
	end

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
			page:Add({ text = "Skill where it turns yellow and grey", right = SkillText(recipe), badge = true, indent = 1 })
		end
		for _, r in ipairs(recipe.reagents) do
			local _, _, _, have = ns.GetCounts(r[1])
			page:Link("item", r[1], r[2] .. " x " .. ItemLabel(r[1]), have > 0 and ("have " .. have) or nil)
		end
	end
	if recipe and not taught then
		-- the recipe item links to its own page, which says who sells or drops it or which quest gives it
		page:Head("How to learn it")
		local learn = Recipes.Scrolls(id)
		for _, scroll in ipairs(learn or {}) do page:Item(scroll, Wiki.Source(scroll) or "open it for where to get it") end
		if not learn then page:Text(recipe.profession .. " trainer (no recipe item is known for it)", 1) end
	end
	local uses = Recipes.UsedIn(id)
	if uses then
		page:Head("Used to make", #uses .. (#uses == 1 and " recipe" or " recipes"))
		page:Each(SortedByName(uses, ns.ItemDB.GetName), 40, function(used) page:Item(used, Recipes.Get(used).profession) end)
	end

	-- ore and herbs: every zone with nodes, where you are (or the nearest) on top
	local zones, near = ns.Nodes.ZonesOfItem(id), ns.Nodes.PlaceOfItem(id)
	if near then
		page:Head("Gathered in", #zones .. (#zones == 1 and " zone" or " zones") .. " - hover for the map")
		for i, zone in ipairs(zones) do -- the rest stay ordered by how many nodes they have
			if zone.uiMap == near.uiMap then table.insert(zones, 1, table.remove(zones, i)) break end
		end
		page:Each(zones, 12, function(zone)
			page:Add({ text = ("%s  (%d nodes)"):format(C_Map.GetMapInfo(zone.uiMap).name or ("Map " .. zone.uiMap), #zone.points),
				right = zone.uiMap == near.uiMap and "closest to you" or nil, indent = 1, uiMap = zone.uiMap, points = zone.points })
		end)
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
		page:Npcs(SortedByName(vendors, Q.Npc.name), 25)
	end
	if drops then
		page:Head("Dropped by", tostring(#drops))
		-- known drop chances first, best chance on top
		local list = SortedByName(drops, Q.Npc.name)
		table.sort(list, function(a, b)
			local ca, cb = Q.DropChance(id, a) or -1, Q.DropChance(id, b) or -1
			if ca ~= cb then return ca > cb end
			return (Q.Npc.name(a) or "") < (Q.Npc.name(b) or "")
		end)
		page:Npcs(list, 30, function(npc)
			local chance = Q.DropChance(id, npc)
			return chance and ("  %.3g%%"):format(chance)
		end)
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
	if not (vendors or drops or objects or containers or recipe or near) and #rewards == 0 then
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
		page:Each(SortedByName(sells, ns.ItemDB.GetName), 80, function(item) page:Loot(item) end)
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
		page:Each(list, 80, function(item) page:Loot(item, nil, id) end)
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
		page:Each(SortedByName(Q.contains[id], ns.ItemDB.GetName), 60, function(item) page:Loot(item) end)
	end
	return page
end

local function QuestEnds(page, who, indent)
	indent = indent or 1
	for _, npc in ipairs(who[1] or {}) do
		page:Npc(npc, indent)
		page:Places(Q.Npc.spawns(npc), indent + 1)
	end
	for _, obj in ipairs(who[2] or {}) do
		page:Link("object", obj, Q.Object.name(obj) or ("Object " .. obj), Q.ZoneName(Q.Object.zoneID(obj)), indent)
		page:Places(Q.Object.spawns(obj), indent + 1)
	end
	for _, item in ipairs(who[3] or {}) do
		page:Item(item, "item that starts the quest", indent)
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
	local kind = Q.QuestType(id)
	if kind ~= "quest" then facts[#facts + 1] = "|A:questlog-questtypeicon-" .. kind .. ":14:14|a " .. Q.QuestTypeLabel(kind) .. " quest" end
	local xp = Q.QuestXP(id)
	if xp then facts[#facts + 1] = xp .. " XP" end
	if #facts > 0 then page:Text(table.concat(facts, ", ")) end
	if not Q.QuestForPlayer(id) then page:Text(ns.Hex.bad .. "Not available to your faction.|r") end
	local rep, skill = T.requiredMinRep(id), T.requiredSkill(id)
	if type(rep) == "table" and rep[1] then
		local faction = C_Reputation and C_Reputation.GetFactionDataByID and C_Reputation.GetFactionDataByID(rep[1])
		page:Text(("Requires reputation %d with %s"):format(rep[2] or 0, faction and faction.name or ("faction " .. rep[1])))
	end
	if type(skill) == "table" and skill[2] and skill[2] > 0 then page:Text("Requires a profession skill of " .. skill[2]) end

	-- the way to this quest comes first: it is what you follow while playing
	local steps = Q.Chain(id)
	if #steps > 1 then
		page:Head("Quest chain", #steps .. " quests, in this order")
		local nextStep = page:Chain(id, 1, true)
		if nextStep and nextStep ~= id then
			local active = Q.QuestState(nextStep) == "active"
			page:Head("Next step", active and "turn it in at" or "pick it up at")
			page:Quest(nextStep)
			QuestEnds(page, (active and T.finishedBy or T.startedBy)(nextStep) or {}, 2)
		end
	end

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

	-- what follows: the next in the chain, sub-quests, and every quest that waits for this one
	local leads, listed = {}, {}
	local function Lead(quest)
		if quest ~= 0 and not listed[quest] and T.name(quest) and Q.QuestForPlayer(quest) then
			listed[quest] = true
			leads[#leads + 1] = quest
		end
	end
	Lead(T.nextQuestInChain(id) or 0)
	for _, child in ipairs(T.childQuests(id) or {}) do Lead(child) end
	for _, quest in ipairs(Q.unlocks and Q.unlocks[id] or {}) do Lead(quest) end
	if #leads > 0 then
		page:Head("Leads to")
		page:Each(leads, 20, function(quest) page:Quest(quest) end)
	end

	-- shortcut: no money: QuestieDB does not record what a quest pays
	local gains = Q.RepGains(id)
	local ready = Q.LootReady()
	local rewards = ready and Q.rewards[id]
	if xp or #gains > 0 or rewards or not ready then
		page:Head("Rewards")
		if xp then page:Text(xp .. " experience", 1) end
		for _, gain in ipairs(gains) do
			page:Text(("%+g reputation with %s"):format(gain[2], Q.FactionName(gain[1])), 1)
		end
		if not ready then page:Note(LOADING) end
		page:Each(SortedByName(rewards or {}, ns.ItemDB.GetName), 20, function(item) page:Loot(item) end)
	end
	return page
end

function pages.dungeon(map)
	local d = Q.Dungeon(map)
	local page = NewPage(d.name)
	page:Text((d.raid and "Raid" or "Dungeon") .. (d.players > 1 and (", " .. d.players .. " players") or "")
		.. (d.level > 0 and (", level " .. Q.DungeonLevelText(d)) or ""))

	local areas, entrances = Q.DungeonAreas(map)
	if #entrances > 0 then
		page:Head("Entrance", "click to pin on the map")
		for _, e in ipairs(entrances) do
			page:Add({ text = ("%s  %.1f, %.1f"):format(Q.ZoneName(e.area) or "Zone", e.x, e.y), indent = 1, area = e.area, x = e.x, y = e.y })
		end
	end

	local lootReady = Q.Available() and Q.LootReady()
	page:Head("Bosses and loot", Q.Available() and "open a boss for everything it drops; faded: not for your class" or nil)
	if Q.Available() and not lootReady then page:Note(LOADING) end
	for _, boss in ipairs(d.bosses) do
		local npc = Q.Available() and Q.BossNpc(boss, areas)
		if npc then
			page:Link("npc", npc, boss, NpcLevel(npc))
			-- the loot worth knowing about: rare and better, a handful per boss
			local best = {}
			for _, item in ipairs(lootReady and Q.drops[npc] or {}) do
				if (ns.ItemDB.GetQuality(item) or 0) >= 3 then best[#best + 1] = item end
			end
			table.sort(best, function(a, b)
				local qa, qb = ns.ItemDB.GetQuality(a), ns.ItemDB.GetQuality(b)
				if qa ~= qb then return qa > qb end
				return (ns.ItemDB.GetName(a) or "") < (ns.ItemDB.GetName(b) or "")
			end)
			local cap = page:Full("loot " .. boss) and #best or 8
			for i = 1, math.min(#best, cap) do page:Loot(best[i], 2, npc) end
			if #best > cap then page:More(#best - cap, "loot " .. boss, 2) end
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
		page:Head("Quests", #quests .. " - numbered: what to do first")
		for _, quest in ipairs(quests) do
			page:Quest(quest)
			page:Chain(quest, 2)
		end
		if #quests == 0 then page:Note("   No quests recorded for this dungeon.") end
	end
	return page
end

function pages.profession(name)
	local page = NewPage(name)
	local list = Recipes.OfProfession(name)
	page:Head("Recipes", #list .. " - how it is learned, skill where it turns yellow / grey")
	for _, id in ipairs(list) do
		local r = Recipes.Get(id)
		page:Link("item", id, ItemLabel(id) .. "  " .. ns.Hex.dim .. Wiki.LearnedFrom(id) .. "|r", SkillText(r)).badge = r.yellow > 0
	end
	return page
end

-- showAll: { [key] = true } for the capped lists to show in full (see Page:More)
function Wiki.Page(kind, id, showAll)
	local build = pages[kind]
	if not build then return nil end
	expanded = showAll
	if (kind == "npc" or kind == "object" or kind == "quest") and not Q.Available() then
		local page = NewPage(kind)
		page:Note(NEED_QUESTIE)
		return page
	end
	return build(id)
end

---------------------------------------------------------------------------
-- Result lists (left side of a tab): filtering, sorting, entries
---------------------------------------------------------------------------

local LIMIT = 200

-- Columns a tab's list can show: key, caption, width (until the user drags it: see
-- Wiki.ColumnWidth), text of a record, and the value it sorts by (false: not sortable, because
-- finding it out for thousands of rows is slow). badge: the text stands on a black plate.
-- ns.db.listColumns[tab][key] switches each on. Clicking a caption sorts by it:
-- ns.db.sort[tab] holds the key ("name" for the name itself, nil for the tab's default),
-- ns.db.sortDesc[tab] reverses. Records are the ones Wiki.List builds.
local function Num(n) return n and n > 0 and tostring(n) or "" end
local function Lower(text) return function(r) return text(r):lower() end end
local function Slot(r) return ns.ItemDB.SlotName(r.id) or "" end
local function Type(r) return ns.ItemDB.TypeName(r.id) or "" end
local function QuestKind(r) return Q.QuestTypeLabel(Q.QuestType(r.id)) end
local function QuestStatus(r)
	local state = Q.QuestState(r.id)
	return state == "done" and ns.Hex.good .. "done|r" or state == "active" and ns.Hex.gold .. "in log|r" or ""
end
local Coins = ns.Coins
local function Price(r) return Coins(ns.ItemDB.GetPrice(r.id)) end
local function QuestRep(r)
	local parts = {}
	for _, gain in ipairs(Q.RepGains(r.id)) do parts[#parts + 1] = ("%+g %s"):format(gain[2], Q.FactionName(gain[1])) end
	return table.concat(parts, ", ")
end
local function QuestRepTotal(r)
	local total = 0
	for _, gain in ipairs(Q.RepGains(r.id)) do total = total + gain[2] end
	return total
end
local LEVEL = { "level", "Lvl", 26, function(r) return Num(r.level) end, function(r) return r.level end }
local ILVL = { "ilvl", "iLvl", 28, function(r) return Num(ns.ItemDB.GetItemLevel(r.id)) end, function(r) return ns.ItemDB.GetItemLevel(r.id) end }
local QUALITY = { "quality", "Quality", 62, function(r) return _G["ITEM_QUALITY" .. r.quality .. "_DESC"] or tostring(r.quality) end,
	function(r) return r.quality end }
Wiki.COLUMNS = {
	item = {
		LEVEL, ILVL,
		{ "slot", "Slot", 58, Slot, Lower(Slot) },
		{ "type", "Type", 78, Type, Lower(Type) },
		QUALITY,
		{ "price", "Cost", 70, Price, function(r) return ns.ItemDB.GetPrice(r.id) end }, -- a vendor's price
		{ "sell", "Sells for", 70, function(r) return Coins(ns.ItemDB.GetSellPrice(r.id)) end, function(r) return ns.ItemDB.GetSellPrice(r.id) end },
		{ "auction", "Auction", 70, function(r) return Coins(ns.ItemDB.GetAuctionPrice(r.id)) end,
			function(r) return ns.ItemDB.GetAuctionPrice(r.id) or 0 end },
		{ "source", "Source", 96, function(r) return Wiki.Source(r.id) or "" end, false },
	},
	profession = {
		{ "skill", "Skill", 52, function(r) return SkillText(Recipes.Get(r.id)) end, function(r) return r.skill end, badge = true },
		{ "profession", "Profession", 84, function(r) return Recipes.Get(r.id).profession end,
			function(r) return Recipes.Get(r.id).profession end },
		LEVEL, ILVL,
		{ "slot", "Slot", 58, Slot, Lower(Slot) },
		QUALITY,
		{ "learn", "Learned from", 110, function(r) return Wiki.LearnedFrom(r.id) end, false },
	},
	quest = {
		LEVEL,
		{ "req", "Req", 24, function(r) return Num(Q.Quest.requiredLevel(r.id)) end, function(r) return Q.Quest.requiredLevel(r.id) or 0 end },
		{ "xp", "XP", 40, function(r) return Num(Q.QuestXP(r.id)) end, function(r) return Q.QuestXP(r.id) or 0 end },
		{ "rep", "Reputation", 110, QuestRep, QuestRepTotal },
		{ "kind", "Type", 52, QuestKind, QuestKind },
		{ "zone", "Zone", 90, function(r) return r.zone end, function(r) return r.zone:lower() end },
		{ "status", "Status", 40, QuestStatus, QuestStatus },
	},
	npc = {
		{ "level", "Lvl", 60, function(r) return NpcLevel(r.id) end, function(r) return r.level end },
		{ "role", "Role", 90, function(r) return (Q.NpcRoles(r.id)) end, function(r) return (Q.NpcRoles(r.id)) end },
		{ "zone", "Zone", 96, function(r) return r.zone end, function(r) return r.zone:lower() end },
		-- sorted by it, the NPCs of the zone you are in come first, the closest on top
		{ "near", "Distance", 52, function(r) return Yards(Q.NpcDistance(r.id)) end, function(r) return Q.NpcDistance(r.id) or 1e9 end },
	},
	dungeon = {
		{ "level", "Level", 44, function(r) return Q.DungeonLevelText(r.d) end, function(r) return r.d.level end },
		{ "kind", "Type", 50, function(r) return r.d.raid and "Raid" or "Dungeon" end, function(r) return r.d.raid and 2 or 1 end },
		{ "players", "Players", 44, function(r) return Num(r.d.players) end, function(r) return r.d.players end },
		{ "bosses", "Bosses", 44, function(r) return Num(#r.d.bosses) end, function(r) return #r.d.bosses end },
	},
}
-- the order a tab starts in; none: as found (best match first)
local DEFAULT_SORT = { quest = "level", profession = "skill", dungeon = "name" }

local function Column(tab, key)
	for _, column in ipairs(Wiki.COLUMNS[tab] or {}) do
		if column[1] == key then return column end
	end
end

-- The columns switched on for a tab, left to right.
function Wiki.Columns(tab)
	local shown, on = {}, ns.db.listColumns[tab] or {}
	for _, column in ipairs(Wiki.COLUMNS[tab] or {}) do
		if on[column[1]] then shown[#shown + 1] = column end
	end
	return shown
end

-- A column's width: what the user dragged it to (width: store that), else its own.
function Wiki.ColumnWidth(tab, column, width)
	if width then ns.db.colWidth[tab .. ":" .. column[1]] = width end
	return ns.db.colWidth[tab .. ":" .. column[1]] or column[3]
end

local function Cells(tab, r)
	local cells = {}
	for _, column in ipairs(Wiki.Columns(tab)) do cells[column[1]] = column[4](r) end
	return cells
end

-- What a tab can be sorted by: { key, label }, the name first.
function Wiki.SortChoices(tab)
	local choices = { { "name", "Name" } }
	for _, column in ipairs(Wiki.COLUMNS[tab] or {}) do
		if column[5] then choices[#choices + 1] = { column[1], column[2] } end
	end
	return choices
end

-- The key the tab is sorted by (nil: as found), and whether the user chose it.
function Wiki.SortKey(tab)
	local key = ns.db.sort[tab]
	if key == "name" or (key and (Column(tab, key) or {})[5]) then return key, true end
	return DEFAULT_SORT[tab], false
end

-- Click on a column caption: sort by it, and reverse on the second click.
function Wiki.SortBy(tab, key)
	if key ~= "name" and not (Column(tab, key) or {})[5] then return end
	if ns.db.sort[tab] == key then
		ns.db.sortDesc[tab] = not ns.db.sortDesc[tab] or nil
	else
		ns.db.sort[tab], ns.db.sortDesc[tab] = key, nil
	end
end

-- How many candidates a list collects: everything when it is sorted, so the top of the
-- sorted list is right. shortcut: sorting a filter that matches most of the 28,000 items
-- takes a few hundredths of a second per keystroke; cache the order if that gets noticeable.
local function Gather(tab)
	return (Wiki.SortKey(tab) or ns.db.sortDesc[tab]) and 1e9 or LIMIT
end

-- Orders records { id, name, ... } by the tab's sort and cuts them to LIMIT; also returns
-- how many there were. Ties keep the incoming order. searched: results of a typed search
-- stay in best-match order until a sort is chosen.
local function Arrange(tab, records, searched)
	local key, chosen = Wiki.SortKey(tab)
	local desc = ns.db.sortDesc[tab]
	if searched and not chosen and not desc then key = nil end
	local value = key == "name" and function(r) return r.name:lower() end or key and Column(tab, key)[5]
	for i, r in ipairs(records) do r.match, r.sortv = i, value and value(r) or i end
	if value or desc then
		table.sort(records, function(a, b)
			local va, vb = a.sortv, b.sortv
			if va ~= vb then
				if desc then return va > vb end
				return va < vb
			end
			return a.match < b.match
		end)
	end
	local total = #records
	for i = #records, LIMIT + 1, -1 do records[i] = nil end
	return records, total
end

-- A second line for an entry: the facts that are there, joined with dots.
local function Sub(...)
	local parts = {}
	for i = 1, select("#", ...) do
		local part = select(i, ...)
		if part and part ~= "" then parts[#parts + 1] = part end
	end
	return table.concat(parts, "  " .. ns.Hex.faint .. "-|r  ")
end

local PROFESSION_ICONS = {
	Alchemy = "Trade_Alchemy", Blacksmithing = "Trade_BlackSmithing", Engineering = "Trade_Engineering",
	Enchanting = "Trade_Engraving", Leatherworking = "Trade_LeatherWorking", Tailoring = "Trade_Tailoring",
	Mining = "Trade_Mining", Fishing = "Trade_Fishing", Herbalism = "Trade_Herbalism", Cooking = "INV_Misc_Food_15",
	["First Aid"] = "Spell_Holy_SealOfSacrifice", Skinning = "INV_Misc_Pelt_Wolf_01",
}

-- Does the NPC pass ns.db.npcFilter? roles = { [key] = true }, ranks = { [rank] = true },
-- zones = { [area] = true }; a group passes when any of its ticks matches.
local function NpcMatches(id)
	local f = ns.db.npcFilter
	if next(f.zones) and not f.zones[Q.npcZone[id] or 0] then return false end
	if next(f.ranks) and not f.ranks[Q.npcRank[id] or 0] then return false end
	if next(f.roles) then
		for _, role in ipairs(Q.NPC_ROLES) do
			if f.roles[role[1]] and Q.NpcHasRole(id, role) then return true end
		end
		return false
	end
	return true
end

-- Does the crafted item pass the Professions tab's filter (ns.db.recipeFilter)? That is an
-- item filter plus: professions = { [name] = true }, skillUps, haveAll, byReagent.
local function RecipeMatches(id)
	local f, recipe = ns.db.recipeFilter, Recipes.Get(id)
	if not recipe then return false end
	if next(f.professions) and not f.professions[recipe.profession] then return false end
	if next(f.learn) and not f.learn[Recipes.Scrolls(id) and "item" or "trainer"] then return false end
	if f.skillUps then
		-- shortcut: the skill needed to learn a recipe is not in the data, so recipes still
		-- far above your skill are listed too; sort by skill to see the reachable ones first
		local skill = ns.SkillLevel(recipe.profession)
		if not skill or skill >= recipe.grey then return false end
	end
	if not ns.ItemDB.MatchesFilter(id, f) then return false end
	if f.haveAll then
		for _, r in ipairs(recipe.reagents) do
			local _, _, _, have = ns.GetCounts(r[1])
			if have < r[2] then return false end
		end
	end
	return true
end

-- Quest ids of the places and reputations ticked in ns.db.questFilter, and what they are
-- called. nil when none is ticked. Places add up; reputations narrow them down.
local function QuestScope()
	local f = ns.db.questFilter
	local ids, seen, labels = nil, {}, {}
	local function Areas(areas, label)
		ids = ids or {}
		labels[#labels + 1] = label
		for _, area in ipairs(areas) do
			for _, id in ipairs(Q.questsByZone[area] or {}) do
				if not seen[id] then
					seen[id] = true
					ids[#ids + 1] = id
				end
			end
		end
	end
	for _, d in ipairs(Q.Dungeons()) do
		if f.allDungeons or f.dungeons[d.map] then Areas((Q.DungeonAreas(d.map)), d.name) end
	end
	if f.allDungeons then labels = { "all dungeons and raids" } end
	for area in pairs(f.zones) do Areas({ area }, Q.ZoneName(area)) end
	table.sort(labels)
	if #labels > 2 then labels = { #labels .. " places" } end

	if next(f.factions) then
		local gives, names = {}, {}
		for faction in pairs(f.factions) do
			names[#names + 1] = Q.FactionName(faction)
			for _, id in ipairs(Q.questsByFaction[faction] or {}) do gives[id] = true end
		end
		table.sort(names)
		labels[#labels + 1] = (#names > 2 and (#names .. " factions") or table.concat(names, ", ")) .. " reputation"
		local narrowed = {}
		if ids then
			for _, id in ipairs(ids) do
				if gives[id] then narrowed[#narrowed + 1] = id end
			end
		else
			for id in pairs(gives) do narrowed[#narrowed + 1] = id end
			table.sort(narrowed)
		end
		ids = narrowed
	end
	return ids, labels
end

-- The tab's active filter as short phrases; empty when nothing is filtered.
function Wiki.FilterParts(tab)
	if tab == "item" then return ns.ItemDB.FilterParts(ns.db.filter) end
	local parts = {}
	if tab == "profession" then
		local f = ns.db.recipeFilter
		for _, name in ipairs(ns.Professions) do
			if f.professions[name] then parts[#parts + 1] = name end
		end
		if f.learn.trainer then parts[#parts + 1] = "from a trainer" end
		if f.learn.item then parts[#parts + 1] = "from a recipe item" end
		if f.skillUps then parts[#parts + 1] = "gives skill" end
		if f.haveAll then parts[#parts + 1] = "reagents in hand" end
		for _, part in ipairs(ns.ItemDB.FilterParts(f)) do parts[#parts + 1] = part end
	elseif tab == "npc" then
		local f = ns.db.npcFilter
		for _, role in ipairs(Q.NPC_ROLES) do
			if f.roles[role[1]] then parts[#parts + 1] = role[2] end
		end
		for _, rank in ipairs(Q.NPC_RANKS) do
			if f.ranks[rank[1]] then parts[#parts + 1] = rank[2] end
		end
		local zones = {}
		for area in pairs(f.zones) do zones[#zones + 1] = Q.ZoneName(area) end
		table.sort(zones)
		if #zones > 2 then zones = { #zones .. " zones" } end
		for _, zone in ipairs(zones) do parts[#parts + 1] = zone end
	elseif tab == "quest" then
		local f = ns.db.questFilter
		if Q.NamesReady() then parts = select(2, QuestScope()) end
		for _, kind in ipairs(Q.QUEST_TYPES) do
			if f.kinds[kind[1]] then parts[#parts + 1] = kind[2] end
		end
		if f.side == "Alliance" or f.side == "Horde" then parts[#parts + 1] = f.side end
		if f.side == "all" then parts[#parts + 1] = "both sides" end
		if f.forLevel then parts[#parts + 1] = "for my level" end
	end
	return parts
end

function Wiki.ResetFilter(tab)
	if tab == "item" then
		ns.ItemDB.ResetFilter(ns.db.filter)
	elseif tab == "profession" then
		local f = ns.db.recipeFilter
		ns.ItemDB.ResetFilter(f)
		for name in pairs(f.professions) do f.professions[name] = nil end
		f.learn.trainer, f.learn.item = nil, nil
		f.skillUps, f.haveAll = nil, nil
	elseif tab == "npc" then
		for _, set in pairs(ns.db.npcFilter) do
			for key in pairs(set) do set[key] = nil end
		end
	elseif tab == "quest" then
		local f = ns.db.questFilter
		for _, set in ipairs({ f.zones, f.dungeons, f.factions, f.kinds }) do
			for key in pairs(set) do set[key] = nil end
		end
		f.allDungeons, f.side, f.forLevel = nil, "mine", nil
	end
end

function Wiki.HasSort(tab)
	return Wiki.COLUMNS[tab] ~= nil
end

function Wiki.HasFilter(tab)
	return tab == "item" or tab == "profession" or tab == "quest" or tab == "npc"
end

-- The item filter a tab's level boxes and gear toggles work on, or nil.
function Wiki.ItemFilter(tab)
	return tab == "item" and ns.db.filter or tab == "profession" and ns.db.recipeFilter or nil
end

-- Entries also carry what the two-line rows show: icon (texture) or atlas, and sub, the
-- second line with the facts worth seeing without opening the page.
local function ItemEntry(tab, r)
	local recipe = tab == "profession" and Recipes.Get(r.id)
	return { kind = "item", id = r.id, item = r.id, text = "|c" .. ns.QualityHex(r.quality) .. r.name .. "|r",
		cells = Cells(tab, r), icon = C_Item.GetItemIconByID(r.id),
		sub = recipe and Sub(recipe.profession .. " " .. SkillText(recipe), Wiki.LearnedFrom(r.id), Slot(r))
			or Sub(r.level > 0 and ("Level " .. r.level), Slot(r), Type(r), Recipes.Get(r.id) and "crafted") }
end

-- Returns entries { kind, id, text, right or cells = { [column] = text } }, an optional
-- message for an empty list, and how many matched before the list was cut to its limit.
function Wiki.List(tab, text)
	local entries, total = {}, nil
	local records
	local typed = #ns.Normalize(text) >= 2
	if tab == "item" then
		local filter = ns.ItemDB.FilterActive() and ns.ItemDB.MatchesFilter or nil
		records = ns.ItemDB.Search(text, Gather(tab), filter, true)
		for _, r in ipairs(records) do r.level, r.quality = ns.ItemDB.GetLevel(r.id), r.quality or 1 end
		records, total = Arrange(tab, records, typed)
		for _, r in ipairs(records) do entries[#entries + 1] = ItemEntry(tab, r) end
	elseif tab == "dungeon" then
		local needle = ns.Normalize(text)
		records = {}
		for _, d in ipairs(Q.Dungeons()) do
			if needle == "" or ns.Normalize(d.name):find(needle, 1, true) then records[#records + 1] = { id = d.map, name = d.name, d = d } end
		end
		records, total = Arrange(tab, records)
		for _, r in ipairs(records) do
			local d = r.d
			entries[#entries + 1] = { kind = "dungeon", id = d.map, text = d.name, cells = Cells(tab, r),
				right = d.raid and "raid" or nil, icon = "Interface\\Minimap\\" .. (d.raid and "Raid" or "Dungeon"),
				sub = Sub(d.level > 0 and ("Level " .. Q.DungeonLevelText(d)),
					(d.raid and "Raid" or "Dungeon") .. (d.players > 1 and (", " .. d.players .. " players") or ""),
					#d.bosses .. (#d.bosses == 1 and " boss" or " bosses")) }
		end
	elseif tab == "profession" then
		local f = ns.db.recipeFilter
		if not typed and #Wiki.FilterParts(tab) == 0 then
			-- nothing asked for: the professions themselves
			for _, name in ipairs(ns.Professions) do
				local count = #Recipes.OfProfession(name)
				if count > 0 then
					entries[#entries + 1] = { kind = "profession", id = name, text = name, right = count .. " recipes",
						icon = PROFESSION_ICONS[name] and ("Interface\\Icons\\" .. PROFESSION_ICONS[name]), sub = count .. " recipes" }
				end
			end
			table.sort(entries, function(a, b) return a.text < b.text end)
			return entries
		end
		if f.byReagent and typed then
			-- the text names a reagent: everything made from it
			local needle = ns.Normalize(text)
			records = {}
			for id, recipe in pairs(Recipes.All()) do
				for _, r in ipairs(RecipeMatches(id) and recipe.reagents or {}) do
					if ns.Normalize(ns.ItemDB.GetName(r[1]) or ""):find(needle, 1, true) then
						records[#records + 1] = { id = id, name = ns.ItemDB.GetName(id) or "", quality = ns.ItemDB.GetQuality(id) }
						break
					end
				end
			end
			table.sort(records, function(a, b) return a.name < b.name end)
			typed = false -- no best-match order to keep
		else
			records = ns.ItemDB.Search(text, Gather(tab), RecipeMatches, true)
		end
		for _, r in ipairs(records) do
			r.level, r.quality, r.skill = ns.ItemDB.GetLevel(r.id), r.quality or 1, Recipes.Get(r.id).yellow
		end
		records, total = Arrange(tab, records, typed)
		for _, r in ipairs(records) do entries[#entries + 1] = ItemEntry(tab, r) end
	elseif tab == "quest" or tab == "npc" then
		if not Q.Available() then return entries, NEED_QUESTIE end
		if not Q.NamesReady() then return entries, LOADING end
		records = {}
		if tab == "quest" then
			local f = ns.db.questFilter
			local ids, labels = QuestScope()
			local level = UnitLevel("player") or 1
			local scope
			local function Accept(id)
				return (not scope or scope[id]) and Q.QuestForPlayer(id, f.side)
					and not (f.forLevel and (Q.Quest.requiredLevel(id) or 0) > level)
					and (next(f.kinds) == nil or f.kinds[Q.QuestType(id)] == true)
			end
			local function Record(id)
				records[#records + 1] = { id = id, name = Q.Quest.name(id), level = Q.Quest.questLevel(id) or 0,
					zone = Q.ZoneName(Q.Quest.zoneOrSort(id)) or "" }
			end
			local caption
			if typed then
				if ids then
					scope = {}
					for _, id in ipairs(ids) do scope[id] = true end
				end
				for _, r in ipairs(Q.questIndex:Search(text, Gather(tab), Accept)) do Record(r.id) end
			else
				-- nothing typed: browse the filter, or what there is to do where you are standing
				local filtered = ids ~= nil
				local label = table.concat(labels, ", ")
				if not ids then label, ids = Q.QuestsHere() end
				for _, id in ipairs(ids) do
					if Q.Quest.name(id) and Accept(id) and not (f.hideDone and Q.QuestState(id) == "done") then Record(id) end
				end
				if #records == 0 then return entries, filtered and "No quests left for this filter." or "Type a quest name." end
				caption = (f.hideDone and "Not done yet: " or "Quests: ") .. label .. " (" .. #records .. ")"
				entries[1] = { caption = true, text = caption }
			end
			records, total = Arrange(tab, records, typed)
			for _, r in ipairs(records) do
				-- the game's own icon for the kind of quest in front of the name
				local kind, state, xp = Q.QuestType(r.id), Q.QuestState(r.id), Q.QuestXP(r.id)
				entries[#entries + 1] = { kind = "quest", id = r.id, quest = r.id, cells = Cells(tab, r),
					text = r.name, atlas = "questlog-questtypeicon-" .. kind,
					sub = Sub(r.level > 0 and ("Level " .. r.level), xp and (xp .. " XP"), kind ~= "quest" and Q.QuestTypeLabel(kind), r.zone,
						state == "done" and ns.Hex.good .. "done|r" or state == "active" and ns.Hex.gold .. "in your log|r") }
			end
		else
			-- a filter can be browsed without typing: every vendor of a zone, every rare;
			-- so can "sorted by distance": who is around
			local filter = #Wiki.FilterParts(tab) > 0 and NpcMatches or nil
			for _, r in ipairs(Q.npcIndex:Search(text, Gather(tab), filter, filter ~= nil or Wiki.SortKey(tab) == "near")) do
				r.level, r.zone = Q.Npc.maxLevel(r.id) or 0, Q.ZoneName(Q.npcZone[r.id]) or ""
				records[#records + 1] = r
			end
			records, total = Arrange(tab, records, typed)
			for _, r in ipairs(records) do
				local roles, icon = Q.NpcRoles(r.id)
				local title, level = Q.Npc.subName(r.id), NpcLevel(r.id)
				entries[#entries + 1] = { kind = "npc", id = r.id, text = r.name, cells = Cells(tab, r), icon = icon,
					sub = Sub(level ~= "" and ("Level " .. level), r.zone, Yards(Q.NpcDistance(r.id)),
						title and title ~= "" and ("<" .. title .. ">") or roles) }
			end
		end
	end
	return entries, nil, total
end
