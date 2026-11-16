local _, ns = ...

-- Search over the generated item list (Data/Items.lua) and recipe lookups (Data/Recipes.lua).
-- The index is built on first use: one big "\nnormalizedname|id\n..." string that
-- string.find scans in C, so a keystroke costs well under a millisecond.

local ItemDB, Recipes = {}, {}
ns.ItemDB, ns.Recipes = ItemDB, Recipes
ItemDB.Normalize = ns.Normalize

local index -- built on first use from the raw data
local quals, classes, subs, slots, levels, stats, ilvls, prices, sells = {}, {}, {}, {}, {}, {}, {}, {}, {}

local function Build()
	index = ns.NewIndex()
	for _, chunk in ipairs(ns.ItemDBRaw or {}) do
		for id, q, class, sub, slot, level, ilvl, price, sell, mask, name in
			chunk:gmatch("(%d+)|(%d+)|(%d+)|(%d+)|(%d+)|(%d+)|(%d+)|(%d+)|(%d+)|(%d+)|([^\n]+)") do
			id = tonumber(id)
			quals[id], classes[id], subs[id] = tonumber(q), tonumber(class), tonumber(sub)
			slots[id], levels[id], stats[id] = tonumber(slot), tonumber(level), tonumber(mask)
			ilvls[id], prices[id], sells[id] = tonumber(ilvl), tonumber(price), tonumber(sell)
			index:Add(id, name)
		end
	end
	ns.ItemDBRaw = nil
end

function ItemDB.GetName(id)
	if not index then Build() end
	return index.names[id]
end

function ItemDB.GetQuality(id)
	if not index then Build() end
	return quals[id]
end

function ItemDB.GetClass(id)
	if not index then Build() end
	return classes[id]
end

-- required character level, 0 when there is none
function ItemDB.GetLevel(id)
	if not index then Build() end
	return levels[id] or 0
end

function ItemDB.GetItemLevel(id)
	if not index then Build() end
	return ilvls[id] or 0
end

-- what a vendor charges for one, in copper (0: not for sale)
function ItemDB.GetPrice(id)
	if not index then Build() end
	return prices[id] or 0
end

-- what a vendor pays for one, in copper (0: cannot be sold)
function ItemDB.GetSellPrice(id)
	if not index then Build() end
	return sells[id] or 0
end

-- What one goes for at the auction house, in copper: the last scan of an auction addon
-- (Auctionator or TradeSkillMaster). nil without one, or when it never saw the item.
function ItemDB.GetAuctionPrice(id)
	-- pcall: an addon that changed its API is just skipped
	local auctionator = Auctionator and Auctionator.API and Auctionator.API.v1
	local ok, price
	if auctionator then ok, price = pcall(auctionator.GetAuctionPriceByItemID, "GoalNotes", id) end
	if not (ok and price) and TSM_API then ok, price = pcall(TSM_API.GetCustomPriceValue, "dbmarket", "i:" .. id) end
	return ok and type(price) == "number" and price > 0 and price or nil
end

---------------------------------------------------------------------------
-- Recipes
---------------------------------------------------------------------------

local recipes, scrolls, scrollsOf, usedIn, byProfession

local function BuildRecipes()
	recipes, scrolls, scrollsOf, usedIn, byProfession = {}, {}, {}, {}, {}
	for _, chunk in ipairs(ns.RecipeRaw or {}) do
		for id, made, prof, yellow, grey, mats in chunk:gmatch("(%d+)|(%d+)|(%d+)|(%d+)|(%d+)|([^\n]+)") do
			id = tonumber(id)
			local reagents = {}
			for rid, count in mats:gmatch("(%d+):(%d+)") do
				rid = tonumber(rid)
				reagents[#reagents + 1] = { rid, tonumber(count) }
				usedIn[rid] = usedIn[rid] or {}
				table.insert(usedIn[rid], id)
			end
			recipes[id] = {
				made = tonumber(made), profession = ns.Professions[tonumber(prof)],
				yellow = tonumber(yellow), grey = tonumber(grey), reagents = reagents,
			}
			byProfession[recipes[id].profession] = byProfession[recipes[id].profession] or {}
			table.insert(byProfession[recipes[id].profession], id)
		end
	end
	for scroll, id in (ns.RecipeScrollsRaw or ""):gmatch("(%d+)=(%d+)") do
		scroll, id = tonumber(scroll), tonumber(id)
		scrolls[scroll] = id
		scrollsOf[id] = scrollsOf[id] or {}
		table.insert(scrollsOf[id], scroll)
	end
	ns.RecipeRaw, ns.RecipeScrollsRaw = nil, nil
end

-- { made = n, profession = "Leatherworking", reagents = { {itemID, count}, ... } } or nil
function Recipes.Get(id)
	if not recipes then BuildRecipes() end
	return recipes[id]
end

-- "Pattern: Devilsaur Leggings" -> the leggings' item id, or nil
function Recipes.FromScroll(id)
	if not recipes then BuildRecipes() end
	return scrolls[id]
end

-- The recipe items (pattern, plans, ...) that teach how to make the item, or nil.
-- shortcut: nil is read as "a trainer teaches it"; the scroll link is made by enUS name
-- (see tools/update_db.py), so a recipe item with an unusual name is missed.
function Recipes.Scrolls(id)
	if not recipes then BuildRecipes() end
	return scrollsOf[id]
end

-- crafted item ids of one profession, easiest first
function Recipes.OfProfession(name)
	if not recipes then BuildRecipes() end
	local list = byProfession[name] or {}
	table.sort(list, function(a, b)
		if recipes[a].yellow ~= recipes[b].yellow then return recipes[a].yellow < recipes[b].yellow end
		return a < b
	end)
	return list
end

-- list of crafted item ids that consume this item, or nil
function Recipes.UsedIn(id)
	if not recipes then BuildRecipes() end
	return usedIn[id]
end

-- every crafted item id (unordered)
function Recipes.All()
	if not recipes then BuildRecipes() end
	return recipes
end

-- Wiki lines for our own tooltips: how it is made and what it is used for.
function Recipes.AddTooltipLines(tooltip, id)
	local recipe = Recipes.Get(Recipes.FromScroll(id) or id)
	if recipe then
		tooltip:AddLine(" ")
		tooltip:AddLine(recipe.profession .. (recipe.made > 1 and (" (makes " .. recipe.made .. ")") or "") .. ":", 1, 0.82, 0)
		if recipe.yellow > 0 then
			-- shortcut: the skill needed to learn a recipe is not in the game's tables; it is
			-- at or below the skill where the recipe turns yellow
			local mine = ns.SkillLevel(recipe.profession)
			tooltip:AddLine(("  Skill: " .. ns.Hex.yellow .. "yellow at %d|r, " .. ns.Hex.grey .. "grey at %d|r - %s"):format(recipe.yellow, recipe.grey,
				mine and ("yours is " .. mine) or "you do not have this profession"), 1, 1, 1)
		end
		for _, r in ipairs(recipe.reagents) do
			local _, _, _, have = ns.GetCounts(r[1])
			local enough = have >= r[2]
			tooltip:AddLine("  " .. r[2] .. " x " .. (ItemDB.GetName(r[1]) or ("Item " .. r[1])) .. "  (have " .. have .. ")",
				enough and 0.25 or 1, 1, enough and 0.25 or 1)
		end
		tooltip:AddLine("Learned from: " .. ns.Wiki.LearnedFrom(Recipes.FromScroll(id) or id), 0.6, 0.8, 1, true)
	end
	local uses = Recipes.UsedIn(id)
	if uses then
		local shown = {}
		for i = 1, math.min(#uses, 6) do shown[i] = ItemDB.GetName(uses[i]) end
		local more = #uses > 6 and (" and " .. (#uses - 6) .. " more") or ""
		tooltip:AddLine(" ")
		tooltip:AddLine("Used to make: " .. table.concat(shown, ", ") .. more, 0.6, 0.8, 1, true)
	end
end

---------------------------------------------------------------------------
-- Filters. Every group is a set of toggles: an item passes a group when it matches any
-- ticked entry (stats: every ticked entry), and passes the filter when it passes all groups.
-- A filter table (ns.db.filter for the Items tab, ns.db.recipeFilter for Professions):
--   types = { [key] = true }, subs = { [classID * 100 + subclassID] = true },
--   slots = { [label] = true }, quality = { [n] = true }, stats = { [n] = true }
--   (indexes into ns.ItemStats), sources = { [key] = true }, minLevel, maxLevel
---------------------------------------------------------------------------

ItemDB.TYPES = {
	{ key = "armor", label = "Armor", classes = { 4 } },
	{ key = "weapon", label = "Weapons", classes = { 2 } },
	{ key = "consumable", label = "Consumables", classes = { 0 } },
	{ key = "reagent", label = "Reagents and trade goods", classes = { 5, 7 } },
	{ key = "recipe", label = "Recipes", classes = { 9 } },
	{ key = "quest", label = "Quest items", classes = { 12 } },
	{ key = "other", label = "Other", classes = { 1, 3, 6, 11, 13, 15 } },
}
-- Weapon and armor kinds: item class, subclass, label; in menu order.
ItemDB.SUBTYPES = {
	weapon = {
		{ 2, 7, "One-Handed Swords" }, { 2, 8, "Two-Handed Swords" }, { 2, 0, "One-Handed Axes" }, { 2, 1, "Two-Handed Axes" },
		{ 2, 4, "One-Handed Maces" }, { 2, 5, "Two-Handed Maces" }, { 2, 15, "Daggers" }, { 2, 13, "Fist Weapons" },
		{ 2, 6, "Polearms" }, { 2, 10, "Staves" }, { 2, 2, "Bows" }, { 2, 18, "Crossbows" }, { 2, 3, "Guns" },
		{ 2, 16, "Thrown" }, { 2, 19, "Wands" }, { 2, 20, "Fishing Poles" },
	},
	armor = { { 4, 1, "Cloth" }, { 4, 2, "Leather" }, { 4, 3, "Mail" }, { 4, 4, "Plate" }, { 4, 6, "Shields" } },
}
-- Equipment slots: label, then the inventory types that go there.
ItemDB.SLOTS = {
	{ "Head", 1 }, { "Neck", 2 }, { "Shoulder", 3 }, { "Back", 16 }, { "Chest", 5, 20 }, { "Wrist", 9 },
	{ "Hands", 10 }, { "Waist", 6 }, { "Legs", 7 }, { "Feet", 8 }, { "Finger", 11 }, { "Trinket", 12 },
	{ "One-Hand", 13, 21 }, { "Two-Hand", 17 }, { "Off Hand", 14, 22, 23 }, { "Ranged", 15, 25, 26, 28 },
}
ItemDB.QUALITIES = { { 1, "Common" }, { 2, "Uncommon" }, { 3, "Rare" }, { 4, "Epic" }, { 5, "Legendary" } }
-- field: the QuestieDB item field that must be set (those sources need QuestieDB)
-- icon: the source has a one-click button above the Items list (see Browser.lua)
ItemDB.SOURCES = {
	{ key = "crafted", label = "Crafted by a profession", short = "crafted", icon = "Interface\\Icons\\Trade_BlackSmithing" },
	{ key = "found", label = "Not crafted", short = "not crafted" },
	{ key = "gathered", label = "Gathered (ore, herbs)", short = "gathered", icon = "Interface\\Icons\\Trade_Mining" },
	{ key = "quest", label = "Quest reward", short = "quest reward", field = "questRewards", icon = "Interface\\GossipFrame\\AvailableQuestIcon" },
	{ key = "drop", label = "Dropped by a creature", short = "dropped", field = "npcDrops", icon = "Interface\\Icons\\INV_Misc_Bone_01" },
	{ key = "vendor", label = "Sold by a vendor", short = "sold", field = "vendors", icon = "Interface\\Icons\\INV_Misc_Coin_01" },
}

local SETS = { "types", "subs", "slots", "quality", "stats", "sources" }
local classType, slotOf = {}, {}
for _, t in ipairs(ItemDB.TYPES) do
	for _, class in ipairs(t.classes) do classType[class] = t.key end
end
for _, slot in ipairs(ItemDB.SLOTS) do
	for i = 2, #slot do slotOf[slot[i]] = slot[1] end
end

local subLabel, typeLabel = {}, {}
for _, kinds in pairs(ItemDB.SUBTYPES) do
	for _, kind in ipairs(kinds) do subLabel[kind[1] * 100 + kind[2]] = kind[3] end
end
for _, t in ipairs(ItemDB.TYPES) do typeLabel[t.key] = t.label end

-- "Head", "One-Hand", ... or nil for things that are not worn
function ItemDB.SlotName(id)
	if not index then Build() end
	return slotOf[slots[id]]
end

-- "Daggers", "Plate", "Consumables", ...
function ItemDB.TypeName(id)
	if not index then Build() end
	local class = classes[id]
	return subLabel[(class or 0) * 100 + (subs[id] or 0)] or typeLabel[classType[class] or ""]
end

-- What each class can equip: its heaviest armor (1 cloth .. 4 plate), then the keys
-- (class * 100 + subclass) of its weapons, shields (406) and relics (407-409).
-- shortcut: Classic's rules; if Forever teaches a class another weapon, add it here.
local function Gear(armor, ...)
	local gear = { armor = armor }
	for _, key in ipairs({ ... }) do gear[key] = true end
	return gear
end
local CLASS_GEAR = {
	WARRIOR = Gear(4, 406, 200, 201, 202, 203, 204, 205, 206, 207, 208, 210, 213, 215, 216, 218),
	PALADIN = Gear(4, 406, 407, 200, 201, 204, 205, 206, 207, 208),
	HUNTER = Gear(3, 200, 201, 202, 203, 206, 207, 208, 210, 213, 215, 216, 218),
	SHAMAN = Gear(3, 406, 409, 200, 201, 204, 205, 210, 213, 215),
	ROGUE = Gear(2, 202, 203, 204, 207, 213, 215, 216, 218),
	DRUID = Gear(2, 408, 204, 205, 210, 213, 215),
	PRIEST = Gear(1, 204, 210, 215, 219),
	MAGE = Gear(1, 207, 210, 215, 219),
	WARLOCK = Gear(1, 207, 210, 215, 219),
}

-- Whether the player's class can equip an item: true or false for weapons and armor, nil for
-- everything else. worn: stricter, for "what should I wear": of cloth, leather, mail and
-- plate only the heaviest the class wears at the player's level (mail and plate come at 40).
function ItemDB.Usable(id, worn)
	if not index then Build() end
	local _, class = UnitClass("player")
	local gear, itemClass, sub = CLASS_GEAR[class], classes[id], subs[id] or 0
	if not gear or (itemClass ~= 2 and itemClass ~= 4) then return nil end
	if itemClass == 2 then return sub == 14 or sub == 20 or gear[200 + sub] or false end -- 14, 20: anyone's
	-- rings, trinkets and held items have no armor type; cloaks are cloth, for everyone
	if sub == 0 or slots[id] == 16 then return true end
	if sub > 4 then return gear[400 + sub] or false end
	if not worn then return sub <= gear.armor end
	local best = gear.armor
	if best >= 3 and (UnitLevel("player") or 60) < 40 then best = best - 1 end
	return sub == best
end

-- Makes sure every group exists (saved filters from older versions lack some).
function ItemDB.PrepareFilter(f)
	for _, key in ipairs(SETS) do
		if type(f[key]) ~= "table" then f[key] = {} end
	end
	return f
end

-- Empties the groups in place: an open menu keeps pointing at them.
function ItemDB.ResetFilter(f)
	f = f or ns.db.filter
	for _, key in ipairs(SETS) do
		for k in pairs(f[key]) do f[key][k] = nil end
	end
	f.minLevel, f.maxLevel, f.forClass = nil, nil, nil
end

function ItemDB.FilterActive(f)
	f = f or ns.db.filter
	for _, key in ipairs(SETS) do
		if next(f[key]) ~= nil then return true end
	end
	return f.minLevel ~= nil or f.maxLevel ~= nil or f.forClass ~= nil
end

-- The active filter in words: a list of short phrases (empty when nothing is filtered).
function ItemDB.FilterParts(f)
	f = f or ns.db.filter
	local parts = {}
	for _, t in ipairs(ItemDB.TYPES) do
		if f.types[t.key] then parts[#parts + 1] = t.label end
	end
	for _, key in ipairs({ "weapon", "armor" }) do
		for _, sub in ipairs(ItemDB.SUBTYPES[key]) do
			if f.subs[sub[1] * 100 + sub[2]] then parts[#parts + 1] = sub[3] end
		end
	end
	for _, slot in ipairs(ItemDB.SLOTS) do
		if f.slots[slot[1]] then parts[#parts + 1] = slot[1] end
	end
	for _, q in ipairs(ItemDB.QUALITIES) do
		if f.quality[q[1]] then parts[#parts + 1] = q[2] end
	end
	if f.minLevel or f.maxLevel then
		parts[#parts + 1] = "level " .. (f.minLevel or 1) .. "-" .. (f.maxLevel or "max")
	end
	for n, label in ipairs(ns.ItemStats) do
		if f.stats[n] then parts[#parts + 1] = label end
	end
	if f.forClass then parts[#parts + 1] = "for my class" end
	for _, source in ipairs(ItemDB.SOURCES) do
		if f.sources[source.key] then parts[#parts + 1] = source.short end
	end
	return parts
end

function ItemDB.FilterLabel(f)
	local parts = ItemDB.FilterParts(f)
	return #parts > 0 and table.concat(parts, ", ") or "All"
end

function ItemDB.MatchesFilter(id, f)
	f = f or ns.db.filter
	if not index then Build() end
	if next(f.types) or next(f.subs) then
		local class = classes[id]
		if not (f.types[classType[class] or ""] or f.subs[(class or 0) * 100 + (subs[id] or 0)]
			or (f.types.reagent and Recipes.UsedIn(id))) then return false end
	end
	if next(f.slots) and not f.slots[slotOf[slots[id]] or ""] then return false end
	if next(f.quality) and not f.quality[quals[id]] then return false end
	if f.minLevel or f.maxLevel then
		local level = levels[id] or 0
		if level < (f.minLevel or 0) or level > (f.maxLevel or 1000) then return false end
	end
	if f.forClass and ItemDB.Usable(id, true) == false then return false end
	for n in pairs(f.stats) do
		local bit = 2 ^ (n - 1)
		if (stats[id] or 0) % (bit * 2) < bit then return false end
	end
	if next(f.sources) then
		local crafted = Recipes.Get(id) ~= nil
		local ok = (f.sources.crafted and crafted) or (f.sources.found and not crafted)
			or (f.sources.gathered and ns.Nodes.KindOfItem(id) ~= nil)
		-- asked last: the only test that goes to QuestieDB
		for _, source in ipairs(not ok and ns.Q.Available() and ItemDB.SOURCES or {}) do
			if source.field and f.sources[source.key] and ns.Q.ItemHas(source.field, id) then ok = true break end
		end
		if not ok then return false end
	end
	return true
end

---------------------------------------------------------------------------
-- Search
---------------------------------------------------------------------------

-- Returns up to `limit` results { id, name, quality }, best match first.
-- filter(id) may reject candidates. With browse set, short or empty text lists
-- everything the filter accepts instead of nothing.
function ItemDB.Search(text, limit, filter, browse)
	if not index then Build() end
	limit = limit or 10

	-- "item:1234", "#1234" or a pasted link selects by id, even if the id is not in the bundled list
	local directId = tonumber(text:match("item:(%d+)") or text:match("^%s*#(%d+)%s*$"))
	if directId and C_Item.GetItemInfoInstant(directId) and (not filter or filter(directId)) then
		local item = ns.GetItem(directId)
		return { { id = directId, name = item.name, quality = item.quality } }
	end

	local results = index:Search(text, limit, filter, browse and filter ~= nil)
	for _, r in ipairs(results) do r.quality = quals[r.id] end
	return results
end
