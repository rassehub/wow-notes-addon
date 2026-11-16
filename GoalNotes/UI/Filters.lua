local _, ns = ...

-- The filter and sort menus of every tab, and the small icon buttons that open them.
-- What the filters mean lives with the data: ItemDB.lua (items) and Wiki/Pages.lua (lists).

local Filters = {}
ns.Filters = Filters

-- A tick box for t[key]. Unticked is stored as nil, so empty groups stay empty tables.
local function Toggle(parent, label, t, key, Changed)
	parent:CreateCheckbox(label, function() return t[key] end, function()
		t[key] = not t[key] or nil
		Changed()
	end)
end

local function Scrolling(parent, text)
	local sub = parent:CreateButton(text)
	if sub.SetScrollMode then sub:SetScrollMode(420) end -- these lists are longer than the screen
	return sub
end

-- The gear part, shared by the Items and Professions tabs. f: an item filter table.
-- One click to "what could I wear next": gear for the last ten levels up to the player's,
-- in the armor the class wears, best item level first.
-- shortcut: weapons are not narrowed to the class, and cloaks (cloth) only show for cloth wearers.
local function UpgradePreset(f)
	local level = UnitLevel("player") or 1
	local _, class = UnitClass("player")
	local armor = ({ WARRIOR = 4, PALADIN = 4, HUNTER = 3, SHAMAN = 3, ROGUE = 2, DRUID = 2 })[class] or 1
	if armor >= 3 and level < 40 then armor = armor - 1 end -- mail and plate come at 40
	ns.ItemDB.ResetFilter(f)
	f.types.weapon = true
	f.subs[400], f.subs[400 + armor] = true, true -- 400: rings, necks, trinkets
	if class == "WARRIOR" or class == "PALADIN" or class == "SHAMAN" then f.subs[406] = true end
	f.minLevel, f.maxLevel = math.max(1, level - 9), level
	ns.db.sort.item, ns.db.sortDesc.item = "ilvl", true
end

local function ItemSections(root, f, Changed, withSources)
	local DB = ns.ItemDB
	if withSources then -- the Items tab
		root:CreateButton(ns.Hex.good .. "Gear for my level, best first|r", function()
			UpgradePreset(f)
			Changed()
		end)
	end
	root:CreateTitle("Item type")
	for _, t in ipairs(DB.TYPES) do Toggle(root, t.label, f.types, t.key, Changed) end
	for _, key in ipairs({ "weapon", "armor" }) do
		local sub = root:CreateButton(key == "weapon" and "Weapon types" or "Armor types")
		for _, kind in ipairs(DB.SUBTYPES[key]) do Toggle(sub, kind[3], f.subs, kind[1] * 100 + kind[2], Changed) end
	end

	root:CreateTitle("Gear")
	local slots = root:CreateButton("Slots")
	for _, slot in ipairs(DB.SLOTS) do Toggle(slots, slot[1], f.slots, slot[1], Changed) end
	local stats = root:CreateButton("Stats (must have all ticked)")
	for n, label in ipairs(ns.ItemStats) do Toggle(stats, label, f.stats, n, Changed) end
	local quality = root:CreateButton("Quality")
	for _, q in ipairs(DB.QUALITIES) do Toggle(quality, q[2], f.quality, q[1], Changed) end

	local levels = root:CreateButton("Required level")
	local mine = UnitLevel("player") or 1
	local function Level(label, lo, hi)
		levels:CreateRadio(label, function() return f.minLevel == lo and f.maxLevel == hi end, function()
			f.minLevel, f.maxLevel = lo, hi
			Changed()
		end)
	end
	Level("Any level")
	Level(("Around my level (%d-%d)"):format(math.max(1, mine - 5), mine), math.max(1, mine - 5), mine)
	Level(("Usable now (up to %d)"):format(mine), nil, mine)
	Level(("Next upgrades (%d-%d)"):format(mine + 1, mine + 5), mine + 1, mine + 5)
	for lo = 1, 51, 10 do Level(lo .. "-" .. (lo + 9), lo, lo + 9) end

	if withSources then
		local sources = root:CreateButton("Source")
		for _, source in ipairs(DB.SOURCES) do
			if not source.field or ns.Q.Available() then Toggle(sources, source.label, f.sources, source.key, Changed) end
		end
	end
end

local function RecipeSections(root, f, Changed)
	root:CreateTitle("Recipes")
	local professions = root:CreateButton("Professions")
	for _, name in ipairs(ns.Professions) do
		if #ns.Recipes.OfProfession(name) > 0 then Toggle(professions, name, f.professions, name, Changed) end
	end
	local learn = root:CreateButton("Learned from")
	Toggle(learn, "A trainer", f.learn, "trainer", Changed)
	Toggle(learn, "A recipe item (pattern, plans, ...)", f.learn, "item", Changed)
	Toggle(root, "Still gives skill at my level", f, "skillUps", Changed)
	Toggle(root, "I have every reagent", f, "haveAll", Changed)
	Toggle(root, "Search by reagent name", f, "byReagent", Changed)
end

local function QuestSections(root, f, Changed)
	root:CreateTitle("Quests in (nothing ticked: where you are)")
	if ns.Q.NamesReady() then
		local zones = Scrolling(root, "Zones")
		for _, zone in ipairs(ns.Q.QuestZones()) do Toggle(zones, zone[2], f.zones, zone[1], Changed) end
		local dungeons = Scrolling(root, "Dungeons and raids")
		Toggle(dungeons, "Every dungeon and raid", f, "allDungeons", Changed)
		for _, d in ipairs(ns.Q.Dungeons()) do Toggle(dungeons, d.name, f.dungeons, d.map, Changed) end
		local factions = Scrolling(root, "Gives reputation with")
		for _, faction in ipairs(ns.Q.QuestFactions()) do Toggle(factions, faction[2], f.factions, faction[1], Changed) end
	end
	local kinds = root:CreateButton("Kind of quest")
	for _, kind in ipairs(ns.Q.QUEST_TYPES) do
		Toggle(kinds, "|A:questlog-questtypeicon-" .. kind[1] .. ":14:14|a " .. kind[2], f.kinds, kind[1], Changed)
	end
	root:CreateTitle("Show")
	for _, side in ipairs({ { "mine", "My faction" }, { "Alliance", "Alliance" }, { "Horde", "Horde" }, { "all", "Both factions" } }) do
		root:CreateRadio(side[2], function() return f.side == side[1] end, function()
			f.side = side[1]
			Changed()
		end)
	end
	Toggle(root, "Only quests I can take at my level", f, "forLevel", Changed)
	-- stored as true/false: nil would bring the default (hidden) back at the next login
	root:CreateCheckbox("Quests I have already done", function() return not f.hideDone end, function()
		f.hideDone = not f.hideDone
		Changed()
	end)
end

local function NpcSections(root, f, Changed)
	local Q = ns.Q
	root:CreateTitle("What they do")
	for _, role in ipairs(Q.NPC_ROLES) do Toggle(root, "|T" .. role[5] .. ":14|t " .. role[2], f.roles, role[1], Changed) end
	root:CreateTitle("Rank")
	for _, rank in ipairs(Q.NPC_RANKS) do Toggle(root, "|T" .. rank[3] .. ":14|t " .. rank[2], f.ranks, rank[1], Changed) end
	if Q.NamesReady() then
		root:CreateTitle("Where")
		local zones = Scrolling(root, "Zones and dungeons")
		for _, zone in ipairs(Q.NpcZones()) do Toggle(zones, zone[2], f.zones, zone[1], Changed) end
	end
end

-- tab: "item", "profession", "quest" or "npc". Changed() runs after every click.
function Filters.Menu(tab, owner, Changed)
	MenuUtil.CreateContextMenu(owner, function(_, root)
		if tab == "item" then
			ItemSections(root, ns.db.filter, Changed, true)
		elseif tab == "profession" then
			RecipeSections(root, ns.db.recipeFilter, Changed)
			ItemSections(root, ns.db.recipeFilter, Changed, false)
		elseif tab == "quest" then
			QuestSections(root, ns.db.questFilter, Changed)
		elseif tab == "npc" then
			NpcSections(root, ns.db.npcFilter, Changed)
		end
		root:CreateButton("Clear all filters", function()
			ns.Wiki.ResetFilter(tab)
			Changed()
		end)
	end)
end

-- Columns, row style and list width: the part of the view menu that is not sorting.
local function ViewSections(root, tab, Changed)
	root:CreateTitle("Columns")
	ns.db.listColumns[tab] = ns.db.listColumns[tab] or {}
	local on = ns.db.listColumns[tab]
	for _, column in ipairs(ns.Wiki.COLUMNS[tab] or {}) do
		-- stored as true/false: nil would bring a default column back at the next login
		root:CreateCheckbox(column[2], function() return on[column[1]] end, function()
			on[column[1]] = not on[column[1]]
			Changed()
		end)
	end
	root:CreateTitle("List")
	root:CreateCheckbox("Compact rows (one line, no icons)", function() return ns.db.compactList end, function()
		ns.db.compactList = not ns.db.compactList
		Changed()
	end)
	local width = root:CreateButton("List width")
	for _, choice in ipairs({ { "Narrow", 0.28 }, { "Normal", 0.34 }, { "Wide", 0.45 }, { "Half the window", 0.5 } }) do
		width:CreateRadio(choice[1], function() return ns.db.listWidth == choice[2] end, function()
			ns.db.listWidth = choice[2]
			Changed()
		end)
	end
end

-- Right-click on the column captions.
function Filters.ViewMenu(tab, owner, Changed)
	MenuUtil.CreateContextMenu(owner, function(_, root) ViewSections(root, tab, Changed) end)
end

-- The sort button: everything the captions do, in one menu.
function Filters.SortMenu(tab, owner, Changed)
	MenuUtil.CreateContextMenu(owner, function(_, root)
		root:CreateTitle("Sort by")
		root:CreateRadio("Default order", function() return ns.db.sort[tab] == nil end, function()
			ns.db.sort[tab] = nil
			Changed()
		end)
		for _, sort in ipairs(ns.Wiki.SortChoices(tab)) do
			root:CreateRadio(sort[2], function() return ns.db.sort[tab] == sort[1] end, function()
				ns.db.sort[tab] = sort[1]
				Changed()
			end)
		end
		Toggle(root, "Reversed", ns.db.sortDesc, tab, Changed)
		ViewSections(root, tab, Changed)
	end)
end

-- "sorted by ..." when the tab's order is not its default, else nil.
function Filters.SortLabel(tab)
	local key, chosen = ns.Wiki.SortKey(tab)
	if not chosen and not ns.db.sortDesc[tab] then return nil end
	for _, sort in ipairs(chosen and ns.Wiki.SortChoices(tab) or {}) do
		if sort[1] == key then return "sorted by " .. sort[2]:lower() .. (ns.db.sortDesc[tab] and ", reversed" or "") end
	end
	return "reversed"
end

-- A small icon button. describe() returns the tooltip's second line. It is grey until
-- SetActive(true) lights it up, so an active filter or sort is visible at a glance.
function Filters.Button(parent, atlas, pushedAtlas, title, describe, onClick)
	local b = CreateFrame("Button", nil, parent)
	b:SetSize(18, 18)
	b:SetNormalAtlas(atlas)
	b:SetPushedAtlas(pushedAtlas)
	b:SetHighlightAtlas(atlas, "ADD")
	b:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	b:SetScript("OnClick", onClick)
	b:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP")
		GameTooltip:SetText(title)
		GameTooltip:AddLine(describe(), 1, 1, 1, true)
		GameTooltip:Show()
	end)
	b:SetScript("OnLeave", GameTooltip_Hide)
	function b:SetActive(active)
		self.active = active and true or false
		local texture = self:GetNormalTexture()
		if texture then texture:SetDesaturated(not active) end
		self:SetAlpha(active and 1 or 0.7)
	end
	b:SetActive(false)
	return b
end

function Filters.FilterButton(parent, tabOf, Changed)
	return Filters.Button(parent, "ui-questtrackerbutton-filter", "ui-questtrackerbutton-filter-pressed", "Filter", function()
		local parts = ns.Wiki.FilterParts(tabOf())
		return (#parts > 0 and (table.concat(parts, ", ") .. "\n") or "") .. "Click to choose. Right-click to clear."
	end, function(self, button)
		if button == "RightButton" then
			ns.Wiki.ResetFilter(tabOf())
			Changed()
		else
			Filters.Menu(tabOf(), self, Changed)
		end
	end)
end

function Filters.SortButton(parent, tabOf, Changed)
	return Filters.Button(parent, "bags-button-autosort-up", "bags-button-autosort-down", "Sort and columns", function()
		return (Filters.SortLabel(tabOf()) or "Default order") .. "\nClick to choose the order, the columns and the list width. Right-click for the default order."
	end, function(self, button)
		if button == "RightButton" then
			ns.db.sort[tabOf()], ns.db.sortDesc[tabOf()] = nil, nil
			Changed()
		else
			Filters.SortMenu(tabOf(), self, Changed)
		end
	end)
end
