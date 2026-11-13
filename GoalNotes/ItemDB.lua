local _, ns = ...

-- Search over the generated item list (Data/Items.lua) and recipe lookups (Data/Recipes.lua).
-- The index is built on first use: one big "\nnormalizedname|id\n..." string that
-- string.find scans in C, so a keystroke costs well under a millisecond.

local ItemDB, Recipes = {}, {}
ns.ItemDB, ns.Recipes = ItemDB, Recipes
ItemDB.Normalize = ns.Normalize

local index -- built on first use from the raw data
local quals, classes = {}, {}

local function Build()
	index = ns.NewIndex()
	for _, chunk in ipairs(ns.ItemDBRaw or {}) do
		for id, q, class, name in chunk:gmatch("(%d+)|(%d+)|(%d+)|([^\n]+)") do
			id = tonumber(id)
			quals[id], classes[id] = tonumber(q), tonumber(class)
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

---------------------------------------------------------------------------
-- Recipes
---------------------------------------------------------------------------

local recipes, scrolls, usedIn, byProfession

local function BuildRecipes()
	recipes, scrolls, usedIn, byProfession = {}, {}, {}, {}
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
		scrolls[tonumber(scroll)] = tonumber(id)
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

-- Wiki lines for our own tooltips: how it is made and what it is used for.
function Recipes.AddTooltipLines(tooltip, id)
	local recipe = Recipes.Get(Recipes.FromScroll(id) or id)
	if recipe then
		tooltip:AddLine(" ")
		tooltip:AddLine(recipe.profession .. (recipe.made > 1 and (" (makes " .. recipe.made .. ")") or "") .. ":", 1, 0.82, 0)
		for _, r in ipairs(recipe.reagents) do
			tooltip:AddLine("  " .. r[2] .. " x " .. (ItemDB.GetName(r[1]) or ("Item " .. r[1])), 1, 1, 1)
		end
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
-- Filters (saved in ns.db.filter = { type = key, source = key })
---------------------------------------------------------------------------

ItemDB.TYPES = {
	{ key = "all", label = "All items" },
	{ key = "armor", label = "Armor", classes = { [4] = true } },
	{ key = "weapon", label = "Weapons", classes = { [2] = true } },
	{ key = "consumable", label = "Consumables", classes = { [0] = true } },
	{ key = "reagent", label = "Reagents and trade goods", classes = { [5] = true, [7] = true }, reagent = true },
	{ key = "recipe", label = "Recipes", classes = { [9] = true } },
	{ key = "quest", label = "Quest items", classes = { [12] = true } },
	{ key = "other", label = "Other", classes = { [1] = true, [3] = true, [6] = true, [11] = true, [13] = true, [15] = true } },
}
ItemDB.SOURCES = {
	{ key = "any", label = "Any source" },
	{ key = "crafted", label = "Crafted by a profession" },
	{ key = "found", label = "Not crafted (loot, vendors, quests)" },
}

local typeByKey = {}
for _, t in ipairs(ItemDB.TYPES) do typeByKey[t.key] = t end

function ItemDB.FilterActive()
	local f = ns.db.filter
	return f.type ~= "all" or f.source ~= "any"
end

function ItemDB.FilterLabel()
	local f, label = ns.db.filter, nil
	if f.type ~= "all" then label = typeByKey[f.type].label end
	if f.source ~= "any" then
		label = (label and (label .. ", ") or "") .. (f.source == "crafted" and "crafted" or "not crafted")
	end
	return label or "All"
end

function ItemDB.MatchesFilter(id)
	local f = ns.db.filter
	local t = typeByKey[f.type]
	if t and t.classes then
		local class = ItemDB.GetClass(id)
		if not (t.classes[class] or (t.reagent and Recipes.UsedIn(id))) then return false end
	end
	if f.source ~= "any" and (Recipes.Get(id) ~= nil) ~= (f.source == "crafted") then return false end
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
