local _, ns = ...

-- Search over the generated item list (Data/Items.lua) and recipe lookups (Data/Recipes.lua).
-- The index is built on first use: one big "\nnormalizedname|id\n..." string that
-- string.find scans in C, so a keystroke costs well under a millisecond.

local ItemDB, Recipes = {}, {}
ns.ItemDB, ns.Recipes = ItemDB, Recipes

local names, quals, classes, blob = {}, {}, {}, nil
local sorted -- item ids ordered by name, for browsing with a filter and no search text
local MAX_HITS = 400 -- candidates ranked per query; plenty for a suggestion list

-- "Mud Snapper", "mudsnapper" and "mud-snapper" all normalize to the same key.
-- shortcut: non-ASCII letters are not case-folded; fold them here if a localized DB needs it.
local function Normalize(s)
	return (s:lower():gsub("[%s%p]", ""))
end
ItemDB.Normalize = Normalize

local function Build()
	local parts, n = {}, 0
	for _, chunk in ipairs(ns.ItemDBRaw or {}) do
		for id, q, class, name in chunk:gmatch("(%d+)|(%d+)|(%d+)|([^\n]+)") do
			id = tonumber(id)
			names[id], quals[id], classes[id] = name, tonumber(q), tonumber(class)
			n = n + 1
			parts[n] = Normalize(name) .. "|" .. id
		end
	end
	blob = "\n" .. table.concat(parts, "\n") .. "\n"
	ns.ItemDBRaw = nil
end

function ItemDB.GetName(id)
	if not blob then Build() end
	return names[id]
end

function ItemDB.GetQuality(id)
	if not blob then Build() end
	return quals[id]
end

function ItemDB.GetClass(id)
	if not blob then Build() end
	return classes[id]
end

---------------------------------------------------------------------------
-- Recipes
---------------------------------------------------------------------------

local recipes, scrolls, usedIn

local function BuildRecipes()
	recipes, scrolls, usedIn = {}, {}, {}
	for _, chunk in ipairs(ns.RecipeRaw or {}) do
		for id, made, prof, mats in chunk:gmatch("(%d+)|(%d+)|(%d+)|([^\n]+)") do
			id = tonumber(id)
			local reagents = {}
			for rid, count in mats:gmatch("(%d+):(%d+)") do
				rid = tonumber(rid)
				reagents[#reagents + 1] = { rid, tonumber(count) }
				usedIn[rid] = usedIn[rid] or {}
				table.insert(usedIn[rid], id)
			end
			recipes[id] = { made = tonumber(made), profession = ns.Professions[tonumber(prof)], reagents = reagents }
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

-- Calls fn(id, normalizedName, isPrefix) for every item whose normalized name contains
-- needle (prefixOnly: starts with it).
local function Scan(needle, fn, prefixOnly)
	local find, byte, sub = string.find, string.byte, string.sub
	local pattern = prefixOnly and ("\n" .. needle) or needle
	local pos, hits = 1, 0
	while hits < MAX_HITS do
		local s = find(blob, pattern, pos, true)
		if not s then break end
		if prefixOnly then s = s + 1 end
		local lineEnd = find(blob, "\n", s, true)
		local lineStart = s
		while byte(blob, lineStart - 1) ~= 10 do lineStart = lineStart - 1 end
		local norm, id = sub(blob, lineStart, lineEnd - 1):match("^([^|]*)|(%d+)$")
		-- a digit-only needle can also hit the id part of the line; ignore those
		if norm and s + #needle - 1 < lineStart + #norm then
			hits = hits + 1
			fn(tonumber(id), norm, s == lineStart)
		end
		pos = lineEnd
	end
end

-- Everything the filter accepts, alphabetically; `first` narrows to names starting with it.
local function Browse(first, limit, filter)
	if not sorted then
		sorted = {}
		for id in pairs(names) do sorted[#sorted + 1] = id end
		table.sort(sorted, function(a, b)
			if names[a] ~= names[b] then return names[a] < names[b] end
			return a < b
		end)
	end
	local results = {}
	for _, id in ipairs(sorted) do
		if (first == "" or Normalize(names[id]):sub(1, #first) == first) and filter(id) then
			results[#results + 1] = { id = id, name = names[id], quality = quals[id] }
			if #results >= limit then break end
		end
	end
	return results
end

-- Returns up to `limit` results { id, name, quality }, best match first.
-- filter(id) may reject candidates. With browse set, short or empty text lists
-- everything the filter accepts instead of nothing.
function ItemDB.Search(text, limit, filter, browse)
	if not blob then Build() end
	limit = limit or 10
	local results = {}

	-- "item:1234", "#1234" or a pasted link selects by id, even if the id is not in the bundled list
	local directId = tonumber(text:match("item:(%d+)") or text:match("^%s*#(%d+)%s*$"))
	if directId and C_Item.GetItemInfoInstant(directId) and (not filter or filter(directId)) then
		local item = ns.GetItem(directId)
		results[1] = { id = directId, name = item.name, quality = item.quality, score = -1 }
	end

	local needle = Normalize(text)
	if #needle < 2 then
		if browse and filter and not directId then return Browse(needle, limit, filter) end
		return results
	end

	local seen = { [directId or 0] = true }
	local function Add(id, norm, isPrefix)
		if seen[id] or (filter and not filter(id)) then return end
		seen[id] = true
		local score = (norm == needle and 0) or (isPrefix and 1) or 2
		results[#results + 1] = { id = id, name = names[id], quality = quals[id], score = score }
	end

	Scan(needle, Add, true) -- prefix matches first so the hit cap never crowds them out
	Scan(needle, Add)

	-- Nothing contiguous: accept the words in any order ("snapper longjaw").
	if #results == 0 then
		local words = {}
		for w in text:gmatch("%S+") do
			w = Normalize(w)
			if #w > 0 then words[#words + 1] = w end
		end
		if #words > 1 then
			table.sort(words, function(a, b) return #a > #b end) -- longest word is the most selective
			Scan(words[1], function(id, norm)
				for i = 2, #words do
					if not norm:find(words[i], 1, true) then return end
				end
				Add(id, norm, false)
			end)
		end
	end

	table.sort(results, function(a, b)
		if a.score ~= b.score then return a.score < b.score end
		if #a.name ~= #b.name then return #a.name < #b.name end
		if a.name ~= b.name then return a.name < b.name end
		return a.id < b.id
	end)
	for i = #results, limit + 1, -1 do results[i] = nil end
	return results
end
