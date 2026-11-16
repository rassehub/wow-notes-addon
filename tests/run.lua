-- Smoke test: loads the addon against a minimal fake of the WoW API and drives the
-- main flows. Run from the repo root with Lua 5.1 (the game's Lua):  lua tests/run.lua
-- It cannot check how anything looks; it catches Lua errors and logic mistakes.

local ROOT = "GoalNotes/"

---------------------------------------------------------------------------
-- Fake frames
---------------------------------------------------------------------------
local CHILD_KEYS = { Text = true, Low = true, High = true, Instructions = true, ScrollBar = true }
local focused
local Mock = {}

local allFrames = {}
local function NewMock(kind, name, parent)
	local o = { _kind = kind, _scripts = {}, _shown = true, _text = "", _parent = parent, _w = 300, _h = 400 }
	setmetatable(o, Mock)
	allFrames[#allFrames + 1] = o
	if name then _G[name] = o end
	return o
end

local methods = {}
function methods:Show() local was = self._shown self._shown = true if not was and self._scripts.OnShow then self._scripts.OnShow(self) end end
function methods:Hide()
	local was = self._shown
	self._shown = false
	if focused == self then self:ClearFocus() end
	if was and self._scripts.OnHide then self._scripts.OnHide(self) end
end
function methods:SetShown(v) if v then self:Show() else self:Hide() end end
function methods:IsShown() return self._shown end
function methods:IsVisible() return self._shown end
function methods:SetScript(k, fn) self._scripts[k] = fn end
function methods:GetScript(k) return self._scripts[k] end
function methods:HookScript(k, fn)
	local old = self._scripts[k]
	self._scripts[k] = old and function(...) old(...) fn(...) end or fn
end
function methods:SetText(t)
	assert(t ~= nil, "SetText(nil)")
	self._text = tostring(t)
	if self._kind == "EditBox" and self._scripts.OnTextChanged then self._scripts.OnTextChanged(self, false) end
end
function methods:GetText() return self._text end
function methods:SetFocus()
	if focused == self then return end
	if focused then focused:ClearFocus() end
	focused = self
	if self._scripts.OnEditFocusGained then self._scripts.OnEditFocusGained(self) end
end
function methods:ClearFocus()
	if focused ~= self then return end
	focused = nil
	if self._scripts.OnEditFocusLost then self._scripts.OnEditFocusLost(self) end
end
function methods:HasFocus() return focused == self end
function methods:GetWidth() return self._w end
function methods:GetHeight() return self._h end
function methods:GetSize() return self._w, self._h end
function methods:SetSize(w, h) self._w, self._h = w, h end
function methods:SetWidth(w) self._w = w end
function methods:SetHeight(h) self._h = h end
function methods:GetPoint() return "CENTER", UIParent, "CENTER", 0, 0 end
function methods:GetFont() return "Fonts\\FRIZQT__.TTF", 12, "" end
function methods:GetParent() return self._parent end
function methods:GetFrameLevel() return 1 end
function methods:GetChecked() return self._checked end
function methods:SetChecked(v) self._checked = v end
function methods:GetValue() return self._value or 0 end
function methods:SetValue(v)
	self._value = v
	if self._scripts.OnValueChanged then self._scripts.OnValueChanged(self, v, false) end
end
function methods:CreateTexture() return NewMock("Texture", nil, self) end
function methods:CreateFontString() return NewMock("FontString", nil, self) end
function methods:GetColorRGB() return 0.1, 0.2, 0.3 end
function methods:GetCenter() return 0, 0 end
function methods:GetStringWidth() return #self._text * 6 end
function methods:GetStringHeight() return 12 end
function methods:GetEffectiveScale() return 1 end
function methods:AddLine(text) self._lines = (self._lines or "") .. tostring(text) .. "\n" end
function methods:SetupColorPickerAndShow(info) info.swatchFunc() info.cancelFunc() end
function methods:SetHyperlink(link) assert(type(link) == "string" and link:find("item:%d+"), "bad hyperlink") end
function methods:AddDoubleLine(left, right) self._lines = (self._lines or "") .. left .. " " .. right .. "\n" end

Mock.__index = function(t, k)
	if methods[k] then return methods[k] end
	if CHILD_KEYS[k] then
		local child = NewMock("Region", nil, t)
		rawset(t, k, child)
		return child
	end
	if type(k) == "string" and k:match("^%u") then return function() end end -- any other widget method
	return nil
end

local function Fire(obj, script, ...)
	local fn = assert(obj._scripts[script], "no script " .. script)
	return fn(obj, ...)
end

---------------------------------------------------------------------------
-- Fake game API
---------------------------------------------------------------------------
local bags, bank = {}, {}
local ITEMS = { -- id -> name, quality, equipLoc
	[4592] = { "Longjaw Mud Snapper", 1, "" },
	[6289] = { "Raw Longjaw Mud Snapper", 1, "" },
	[15062] = { "Devilsaur Leggings", 3, "INVTYPE_LEGS" },
	[15052] = { "Black Dragonscale Leggings", 3, "INVTYPE_LEGS" },
	[8170] = { "Rugged Leather", 1, "" },
	[12640] = { "Lionheart Helm", 4, "INVTYPE_HEAD" },
}

UIParent = NewMock("Frame")
Minimap = NewMock("Frame")
function GetCursorPosition() return 100, 100 end
GameTooltip = NewMock("GameTooltip")
GameFontNormal = NewMock("Font")
ColorPickerFrame = NewMock("Frame")
StackSplitFrame = NewMock("Frame")
UISpecialFrames, StaticPopupDialogs, SlashCmdList = {}, {}, {}
SOUNDKIT = setmetatable({}, { __index = function() return 1 end })
YES, NO = "Yes", "No"
INVTYPE_LEGS, INVTYPE_HEAD = "Legs", "Head"
ITEM_MOD_STAMINA_SHORT, ITEM_MOD_AGILITY_SHORT, RESISTANCE0_NAME = "Stamina", "Agility", "Armor"
Enum = { TooltipDataType = { Item = 0 }, BagIndex = { Backpack = 0, Bank = -1, AccountBankTab_1 = 13 } }
local containers = {} -- bag id -> { { itemID =, stackCount = }, ... }
C_Container = {
	GetContainerNumSlots = function(bag) return containers[bag] and #containers[bag] or 0 end,
	GetContainerItemInfo = function(bag, slot) return containers[bag][slot] end,
}
function UnitName() return "Tester" end
function GetRealmName() return "Realm" end
function UnitClass() return "Warrior", "WARRIOR" end
function GetInventoryItemID(_, slot) return slot == 1 and 12640 or nil end
time = os.time

local now = 0
local timers = {}
function GetTime() return now end
C_Timer = { After = function(_, fn) timers[#timers + 1] = fn end }
local function RunTimers()
	now = now + 1
	local run = timers
	timers = {}
	for _, fn in ipairs(run) do fn() end
end

local eventFrame
function CreateFrame(kind, name, parent)
	local f = NewMock(kind, name, parent)
	local register = f.RegisterEvent
	rawset(f, "RegisterEvent", function(self, event)
		eventFrame = self
		if event == "BANK_TABS_CHANGED" then error("unknown event") end -- must be tolerated
		return register(self, event)
	end)
	return f
end

function hooksecurefunc(a, b, c)
	local tbl, key, hook = _G, a, b
	if type(a) == "table" then tbl, key, hook = a, b, c end
	local orig = assert(tbl[key], "hooking missing function")
	tbl[key] = function(...)
		local r = { orig(...) }
		hook(...)
		return unpack(r)
	end
end

local chatInserted
ChatFrameUtil = { InsertLink = function(link) chatInserted = link return false end }
ChatEdit_InsertLink = ChatFrameUtil.InsertLink

local tooltipPostCall
TooltipDataProcessor = { AddTooltipPostCall = function(_, fn) tooltipPostCall = fn end }

C_Item = {
	GetItemCount = function(id, includeBank)
		return (bags[id] or 0) + (includeBank and (bank[id] or 0) or 0)
	end,
	GetItemInfo = function(id)
		id = tonumber(id) or tonumber(tostring(id):match("item:(%d+)"))
		local it = ITEMS[id]
		if not it or it.uncached then return nil end
		return it[1], "|cffffffff|Hitem:" .. id .. "::::|h[" .. it[1] .. "]|h|r", it[2], 55, 50, "Armor", "Leather", 1, it[3], 134, 1234
	end,
	GetItemInfoInstant = function(id)
		local it = ITEMS[id]
		if not it then return nil end
		return id, "Armor", "Leather", it[3], 134
	end,
	RequestLoadItemDataByID = function() end,
	GetItemQualityColor = function() return 1, 1, 1, "ffffffff" end,
	GetItemIconByID = function() return 134 end,
	GetItemStats = function(link)
		if link:find("15062") then return { ITEM_MOD_STAMINA_SHORT = 12, RESISTANCE0_NAME = 148 } end
		return { ITEM_MOD_AGILITY_SHORT = 29, RESISTANCE0_NAME = 463.5 }
	end,
}
C_CurrencyInfo = { GetCoinTextureString = function(c) return c .. "c" end }

local menu
local MenuNode = {}
MenuNode.__index = MenuNode
function MenuNode:CreateTitle(text) self[#self + 1] = { title = text } end
function MenuNode:CreateButton(text, fn)
	local node = setmetatable({ text = text, fn = fn }, MenuNode)
	self[#self + 1] = node
	return node
end
function MenuNode:CreateCheckbox(text, _, set) return self:CreateButton(text, set) end -- can have a submenu too
MenuNode.CreateRadio = MenuNode.CreateCheckbox
function MenuNode:Find(text) -- the entry, without clicking it
	for _, n in ipairs(self) do
		if n.text == text then return n end
	end
	error("no menu entry " .. text)
end
function MenuNode:Click(text)
	for _, n in ipairs(self) do
		if n.text == text then
			if n.fn then n.fn() end
			return n
		end
	end
	error("no menu entry " .. text)
end
MenuUtil = { CreateContextMenu = function(owner, gen) menu = setmetatable({}, MenuNode) gen(owner, menu) end }

local popup
function StaticPopup_Show(which, a, b, data) popup = { which = which, data = data } end
function PlaySound() end
function InCombatLockdown() return false end
function UnitFactionGroup() return "Alliance" end
function UnitLevel() return 30 end
function debugprofilestop() return 0 end
function geterrorhandler() return error end
local pinned, openedMap
C_Map = {
	GetAreaInfo = function(id) return ({ [40] = "Westfall", [12] = "Elwynn Forest" })[id] end,
	CanSetUserWaypointOnMap = function() return true end,
	SetUserWaypoint = function(point) pinned = point end,
	OpenWorldMap = function(map) openedMap = map end,
	GetBestMapForUnit = function() return 1436 end, -- Westfall
	-- the player stands at 50, 50 of a map 4000 by 3000 yards
	GetPlayerMapPosition = function() return { GetXY = function() return 0.5, 0.5 end } end,
	GetMapWorldSize = function() return 4000, 3000 end,
	GetMapInfo = function(map) return { mapID = map } end,
	GetMapArtLayers = function() return { { layerIndex = 1, layerWidth = 1002, layerHeight = 668, tileWidth = 256, tileHeight = 256 } } end,
	GetMapArtLayerTextures = function() return { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12 } end,
}
function SetCursor() end
function ResetCursor() end
local money, cooking = 0, 150
function GetMoney() return money end
function GetProfessions() return nil, nil, nil, nil, 5 end
function GetProfessionInfo(index) if index == 5 then return "Cooking", 134, cooking, 300 end end
C_TooltipInfo = { GetItemByID = function(id)
	if id ~= 15062 then return nil end
	return { lines = {
		{ leftText = "Devilsaur Leggings" },
		{ leftText = "Legs", rightText = "Leather" },
		{ leftText = "148 Armor" },
		{ leftText = "+12 Stamina", leftColor = { r = 1, g = 1, b = 1 } },
		{ leftText = "Equip: Improves your chance to hit by 1%.", leftColor = { r = 0, g = 1, b = 0 } },
	} }
end }
UiMapPoint = { CreateFromCoordinates = function(map, x, y) return { map = map, x = x, y = y } end }
C_SuperTrack = { SetSuperTrackedUserWaypoint = function() end }
local questsDone = {}
C_QuestLog = {
	IsQuestFlaggedCompleted = function(id) return questsDone[id] or false end,
	IsOnQuest = function() return false end,
}
function IsShiftKeyDown() return false end
function IsModifiedClick() return false end
function GameTooltip_Hide() end
function GameTooltip_ShowCompareItem() end
function HandleModifiedItemClick(link) return ChatFrameUtil.InsertLink(link) end
function CopyTable(t)
	local c = {}
	for k, v in pairs(t) do c[k] = type(v) == "table" and CopyTable(v) or v end
	return c
end
local printed = {}
function print(msg) printed[#printed + 1] = msg end

---------------------------------------------------------------------------
-- Load the addon exactly as the TOC lists it
---------------------------------------------------------------------------
local ns = {}
for line in io.lines(ROOT .. "GoalNotes.toc") do
	local file = line:match("^([%w_\\/]+%.lua)%s*$")
	if file then
		local chunk = assert(loadfile(ROOT .. file:gsub("\\", "/")))
		chunk("GoalNotes", ns)
	end
end

local checks = 0
local function eq(got, want, what)
	checks = checks + 1
	if got ~= want then error(("%s: expected %s, got %s"):format(what, tostring(want), tostring(got)), 2) end
end

Fire(eventFrame, "OnEvent", "ADDON_LOADED", "SomeOtherAddon")
eq(ns.db, nil, "ignores other addons")
Fire(eventFrame, "OnEvent", "ADDON_LOADED", "GoalNotes")
eq(#ns.Goals(), 1, "default goal")
eq(ns.db.columns.need, true, "defaults applied")

-- Search --------------------------------------------------------------------
local S = ns.ItemDB.Search
eq(ns.ItemDBCount > 10000, true, "database size")
eq(S("longjaw mudsnapper", 8)[1].name, "Longjaw Mud Snapper", "space-insensitive, shortest first")
eq(S("LONGJAW MUD", 8)[1].id, 4592, "case-insensitive")
eq(S("snapper longjaw", 8)[1].id, 4592, "words in any order")
eq(S("devilsaur leg", 8)[1].id, 15062, "prefix search")
eq(#S("x", 8), 0, "too short")
eq(#S("zzzzqqq", 8), 0, "no match")
eq(#S("leather", 5), 5, "limit respected")
eq(S("leather", 8)[1].name:lower():find("leather", 1, true), 1, "prefix matches rank first")
eq(S("item:8170", 8)[1].id, 8170, "direct id")
eq(S("#12640", 8)[1].id, 12640, "direct #id")
eq(S("15 pound salmon", 8)[1].name, "15 Pound Salmon", "names starting with digits")
eq(#S("4592", 8), 0, "digits never match the id column")
for _, r in ipairs(S("leggings", 8, function(id) return id == 15062 end)) do eq(r.id, 15062, "filter") end

-- Adding through the input box ---------------------------------------------
local frame = ns.UI.frame
frame:Show()
local input = ns.linkBox
eq(input, nil, "no box focused yet")
ns.UI.FocusInput()
input = ns.linkBox
local ac = input.ac

input:SetText("24 longjaw mud snapper")
eq(ac.results[1].qty, 24, "leading amount parsed")
Fire(input, "OnEnterPressed")
local goal = ns.SelectedGoal()
eq(goal.entries[1].id, 4592, "picked item added")
eq(goal.entries[1].need, 24, "amount applied")
eq(input:GetText(), "", "input cleared")

input:SetText("rugged leather x8")
Fire(input, "OnEnterPressed")
eq(goal.entries[2].id, 8170, "trailing amount item")
eq(goal.entries[2].need, 8, "trailing amount")

input:SetText("rugged leather")
Fire(input, "OnArrowPressed", "DOWN")
Fire(input, "OnArrowPressed", "UP")
Fire(input, "OnTabPressed")
eq(#goal.entries, 2, "same item merges")
eq(goal.entries[2].need, 9, "merged amount")

input:SetText("talk to the trainer zzz")
Fire(input, "OnEnterPressed")
eq(goal.entries[3].text, "talk to the trainer zzz", "free text note")

-- Shift-click linking --------------------------------------------------------
input:SetFocus()
StackSplitFrame:Show()
HandleModifiedItemClick("|cffa335ee|Hitem:12640::::|h[Lionheart Helm]|h|r")
eq(input:GetText(), "Lionheart Helm", "link fills the box")
eq(ac.results[1].id, 12640, "linked item is the suggestion")
RunTimers()
eq(StackSplitFrame:IsShown(), false, "stack split dismissed")
Fire(input, "OnEnterPressed")
eq(goal.entries[4].id, 12640, "linked item added")
input:ClearFocus()
RunTimers()
ChatEdit_InsertLink("|Hitem:15062::::|h[x]|h")
eq(#goal.entries, 4, "links ignored without focus")
input:SetFocus()
ChatEdit_InsertLink("|Hitem:15062::::|h[x]|h")
eq(input:GetText(), "Devilsaur Leggings", "deprecated global is hooked too")
Fire(input, "OnEnterPressed")
eq(goal.entries[5].id, 15062, "second linked item added")

-- Counting and completion ----------------------------------------------------
RunTimers()
printed = {}
bags[4592], bank[4592] = 10, 4
local b, k, w, total = ns.GetCounts(4592)
eq(b, 10, "bags") eq(k, 4, "bank") eq(w, 0, "warband") eq(total, 14, "total")
Fire(eventFrame, "OnEvent", "BAG_UPDATE_DELAYED")
RunTimers()
eq(#printed, 0, "no announcement while incomplete")
eq(ns.EntryDone(goal.entries[1]), false, "14/24 not done")
bags[4592] = 20
Fire(eventFrame, "OnEvent", "BAG_UPDATE_DELAYED")
RunTimers()
eq(#printed, 1, "announced once on completion")
Fire(eventFrame, "OnEvent", "BAG_UPDATE_DELAYED")
RunTimers()
eq(#printed, 1, "not announced twice")

-- Tooltip line ---------------------------------------------------------------
GameTooltip._lines = nil
tooltipPostCall(GameTooltip, { id = 4592 })
eq(GameTooltip._lines:find("24/24", 1, true) ~= nil, true, "tooltip shows progress")
GameTooltip._lines = nil
tooltipPostCall(GameTooltip, { id = 99999 })
eq(GameTooltip._lines, nil, "no tooltip line for untracked items")

-- Rows, menus, editing ---------------------------------------------------------
ns.UI.Layout()
for key in pairs(ns.db.columns) do ns.db.columns[key] = nil end
for _, col in ipairs(ns.Columns) do ns.db.columns[col.key] = true end
ITEMS[8170].uncached = true -- rows must render while item data is still loading
ns.UI.Layout()
ITEMS[8170].uncached = nil

local second = ns.AddGoal("Leatherworking")
eq(ns.SelectedGoal(), second, "new goal selected")
ns.AddItem(second, 8170, 40)
ns.Move(ns.Goals(), second, -1)
eq(ns.Goals()[1], second, "goal moved up")
ns.Move(ns.Goals(), second, -1)
eq(ns.Goals()[1], second, "move past the edge is a no-op")
goal.collapsed = true
ns.db.hideCompleted = true
ns.UI.Layout()
goal.collapsed, ns.db.hideCompleted = nil, false
ns.UI.Layout()

-- Compare ----------------------------------------------------------------------
local legs = goal.entries[5]
ns.Compare.Open(goal, legs)
eq(ns.Compare.frame:IsShown(), true, "compare opens")
local cbox = ns.linkBox
eq(cbox ~= input, true, "compare box takes focus")
cbox:SetText("leggings")
for _, r in ipairs(cbox.ac.results) do eq(r.id ~= 15062, true, "compare never suggests the same item") end
cbox:SetText("black dragonscale leg")
eq(cbox.ac.results[1].id, 15052, "same-slot suggestion")
cbox:SetText("lionheart")
eq(#cbox.ac.results, 0, "other slots filtered out")
cbox:SetText("black dragonscale leg")
Fire(cbox, "OnEnterPressed")
Fire(ns.Compare.frame.replace, "OnClick")
eq(legs.id, 15052, "goal item replaced")
eq(ns.Compare.frame:IsShown(), false, "compare closes")
ns.Compare.Open(goal, legs)
ns.Remove(goal.entries, legs)
ns.Compare.Update()
eq(ns.Compare.frame:IsShown(), false, "compare closes when its entry is removed")

-- Recipes ------------------------------------------------------------------------
local R = ns.Recipes
eq(#R.Get(15062).reagents, 4, "devilsaur leggings recipe")
eq(R.Get(15062).profession, "Leatherworking", "profession name")
eq(R.FromScroll(15772), 15062, "pattern maps to the crafted item")
eq(R.Get(15417), nil, "raw material has no recipe")
eq(ns.AddItem(ns.AddGoal("tmp"), 8170, 5).craft, nil, "trade goods are not broken down automatically")
ns.Remove(ns.Goals(), ns.SelectedGoal())
eq(#R.UsedIn(8170) > 10, true, "reverse index")

bags, bank = {}, {}
local set = ns.AddGoal("Devilsaur Set")
local e = ns.AddItem(set, 15772, 1) -- the pattern
eq(e.id, 15062, "pattern is added as the item it makes")
eq(e.craft, true, "pattern entries track reagents")
local function Find(rows, id) for _, r in ipairs(rows) do if r.id == id and r.reagent then return r end end end
local rows = ns.GoalRows(set)
eq(#rows, 5, "entry plus four reagents")
eq(Find(rows, 8170).need, 30, "reagent amount")
eq(rows[1].ready, false, "not ready without materials")
e.need = 2
eq(Find(ns.GoalRows(set), 8170).need, 60, "amount scales with the entry")
bags[15062] = 1
eq(Find(ns.GoalRows(set), 8170).need, 30, "owned crafted items reduce the reagents")
bags[15062] = 2
eq(#ns.GoalRows(set), 1, "no reagents once the item is owned")
bags[15062], e.need = nil, 1

e.sub = { [15407] = true } -- break Cured Rugged Hide down as well
rows = ns.GoalRows(set)
eq(Find(rows, 15407).broken, true, "sub-recipe marked")
eq(Find(rows, 8171).depth, 2, "sub-reagents are nested")
bags[15407] = 1
eq(Find(ns.GoalRows(set), 8171), nil, "owned intermediate needs no sub-reagents")
bags[15407] = nil

local gauntlets = ns.AddItem(set, 15063, 1)
eq(gauntlets.craft, true, "craftable items track reagents by default")
set.combine = true
rows = ns.GoalRows(set)
local own = R.Get(15062).reagents[1][2] + R.Get(15063).reagents[1][2]
eq(R.Get(15062).reagents[1][1], 8170, "fixture: first reagent is rugged leather")
eq(R.Get(15063).reagents[1][1], 8170, "fixture: gauntlets use rugged leather too")
eq(Find(rows, 8170).need, own, "combined list sums shared reagents")
eq(rows[3].label ~= nil, true, "combined list has a caption")
eq(Find(rows, 15407), nil, "broken-down reagent is replaced by its parts")
set.combine, e.sub = nil, nil
ns.Remove(set.entries, gauntlets)

for _, r in ipairs(R.Get(15062).reagents) do bags[r[1]] = r[2] end
rows = ns.GoalRows(set)
eq(rows[1].ready, true, "ready to craft with every reagent in hand")
eq(ns.RowDone(rows[2]), true, "reagent row done")
eq(ns.EntryDone(e), false, "entry itself is not done until crafted")
bags = {}

ns.db.autoCraft = false
eq(ns.AddItem(set, 15063, 1).craft, nil, "auto breakdown can be switched off")
ns.db.autoCraft = true

-- Every visible row: tooltip and context menu must not error
ns.UI.Layout()
local function EachRow(fn)
	for _, f in ipairs(allFrames) do
		if rawget(f, "data") and f:IsShown() then fn(f) end
	end
end
local seenReagent
EachRow(function(row)
	Fire(row, "OnEnter")
	Fire(row, "OnClick", "RightButton")
	Fire(row, "OnClick", "LeftButton")
	seenReagent = seenReagent or row.data.reagent
end)
eq(seenReagent, true, "reagent rows are displayed")
EachRow(function(row)
	if row.data.entry == e and not row.data.reagent then
		Fire(row, "OnClick", "RightButton")
		menu:Click("Track the item only")
	end
end)
eq(e.craft, nil, "menu switches reagent tracking off")
eq(#ns.GoalRows(set), 2, "plain entries again")
e.craft = true
ns.UI.Layout()
EachRow(function(row)
	if row.data.reagent and row.data.id == 15407 and row.data.entry == e then
		Fire(row, "OnClick", "RightButton")
		menu:Click("Break down into its reagents")
	end
end)
eq(e.sub[15407], true, "menu breaks a reagent down")
for _, f in ipairs(allFrames) do
	if rawget(f, "goal") == set and f._scripts.OnDoubleClick then
		Fire(f, "OnEnter")
		Fire(f, "OnClick", "RightButton")
		menu:Click("Combine materials into one list")
		eq(set.combine, true, "goal menu toggles combined materials")
		Fire(f, "OnClick", "RightButton")
		menu:Click("Show in tracker")
		eq(set.untracked, true, "goal menu toggles tracking")
		set.untracked = nil
		break
	end
end
ns.UI.Layout()

-- Filters and browsing ------------------------------------------------------------
local F = ns.db.filter
F.types.armor, F.sources.crafted = true, true
local browse = ns.ItemDB.Search("", 200, ns.ItemDB.MatchesFilter, true)
eq(#browse, 200, "browsing a filter without text")
for _, r in ipairs(browse) do
	eq(ns.ItemDB.GetClass(r.id) == 4 and R.Get(r.id) ~= nil, true, "browse honours the filter")
end
local dev = ns.ItemDB.Search("devilsaur", 200, ns.ItemDB.MatchesFilter)
eq(#dev, 2, "crafted devilsaur armor: leggings and gauntlets")
F.sources = { found = true }
eq(#ns.ItemDB.Search("devilsaur leggings", 200, ns.ItemDB.MatchesFilter), 0, "crafted armor excluded from looted")
F.types, F.sources = { reagent = true }, {}
eq(ns.ItemDB.MatchesFilter(8170), true, "leather is a reagent")
eq(ns.ItemDB.MatchesFilter(15062), false, "leggings are not a reagent")
F.types = { consumable = true }
eq(ns.ItemDB.MatchesFilter(4592), true, "food is a consumable")
eq(ns.ItemDB.FilterLabel(), "Consumables", "filter label")

input:ClearFocus()
input:SetText("")
input:SetFocus()
eq(#ac.results, 200, "focusing the box with a filter browses it")
Fire(ac.list, "OnMouseWheel", -1)
eq(ac.offset, 3, "mouse wheel scrolls the suggestions")
for _ = 1, 12 do Fire(input, "OnArrowPressed", "DOWN") end
eq(ac.index, 13, "arrow keys walk the whole list")
eq(ac.offset, 5, "and keep the highlight visible")
Fire(ac.buttons[1], "OnEnter")
Fire(ac.buttons[1], "OnClick")
eq(ns.SelectedGoal().entries[#ns.SelectedGoal().entries].id, ac.results[6] and ac.results[6].id or ns.SelectedGoal().entries[#ns.SelectedGoal().entries].id, "clicking a scrolled suggestion")
ns.ItemDB.ResetFilter()
eq(ns.ItemDB.FilterActive(), false, "filter cleared")
input:ClearFocus()
input:SetFocus()
eq(#ac.results, 0, "no browsing without a filter")

-- Tracker and minimap button --------------------------------------------------------
local tracker = ns.Tracker.frame
eq(tracker:IsShown(), true, "tracker shown by default")
bags = {}
ns.Tracker.Update()
local trackerLines = 0
for _, f in ipairs(allFrames) do
	if f._parent == tracker and f._kind == "Button" and f:IsShown() then
		trackerLines = trackerLines + 1
		Fire(f, "OnEnter")
	end
end
eq(trackerLines > 5, true, "tracker lists goals and missing items")
local mm = ns.MinimapButton.button
Fire(mm, "OnClick", "RightButton")
menu:Click("Show or hide the tracker")
eq(tracker:IsShown(), false, "the minimap button's right-click menu hides the tracker")
eq(ns.db.tracker, false, "tracker state saved")
menu:Click("Show or hide the tracker")
eq(tracker:IsShown(), true, "and shows it again")
local was = frame:IsShown()
Fire(mm, "OnClick", "LeftButton")
eq(frame:IsShown(), not was, "minimap left-click toggles the goal list")
Fire(mm, "OnClick", "LeftButton")
Fire(mm, "OnEnter")
Fire(mm, "OnDragStart")
Fire(mm, "OnUpdate")
Fire(mm, "OnDragStop")
eq(ns.db.minimapAngle, 45, "dragging moves the button around the minimap")
ns.db.minimap = false
ns.ApplyTheme()
eq(mm:IsShown(), false, "minimap button can be hidden")

-- Wiki without QuestieDB ---------------------------------------------------------------
local W, B = ns.Wiki, ns.Browser
local function PageText(page)
	local out = { page.title }
	for _, line in ipairs(page.lines) do out[#out + 1] = line.text .. (line.right and (" " .. line.right) or "") end
	return table.concat(out, "\n")
end
local function Has(page, text) return PageText(page):find(text, 1, true) ~= nil end
local function FindLine(page, pred) for _, l in ipairs(page.lines) do if pred(l) then return l end end end

eq(ns.Q.Available(), false, "no QuestieDB yet")
frame:Show()
for _, t in ipairs(W.TABS) do B.Select(t.key) end
eq(B.Tab(), "npc", "every tab opens without QuestieDB")
local p = W.Page("item", 15062)
eq(Has(p, "Crafted with Leatherworking"), true, "item page shows the recipe")
local skill = FindLine(p, function(l) return l.badge end)
eq(skill.right:find("|cffffff00310|r |cff808080", 1, true), 1, "item page shows the skill levels as coloured numbers on a plate")
eq(Has(p, "30 x "), true, "item page lists reagents")
eq(Has(p, "Install the QuestieDB addon"), true, "item page explains the missing data")
p = W.Page("item", 8170)
eq(Has(p, "Used to make"), true, "material page lists what it makes")
p = W.Page("item", 15772)
eq(Has(p, "Teaches"), true, "pattern page links what it teaches")
eq(Has(W.Page("quest", 1), "Install the QuestieDB addon"), true, "quest page needs QuestieDB")
local list = W.List("dungeon", "")
eq(#list > 30, true, "dungeon list is bundled")
eq(#W.List("dungeon", "dead mines"), 1, "dungeon list filters by name")
p = W.Page("dungeon", 36)
eq(p.title, "Deadmines", "dungeon page")
eq(Has(p, "Edwin VanCleef"), true, "dungeon page lists bosses without QuestieDB")
eq(Has(p, "Dungeon, 5 players, level |cff99999916-23|r"), true, "dungeon size, and its level: grey, outgrown at 30")
eq(ns.Q.Dungeon(533), nil, "instances the client has no level for (not in the game) are left out")
eq(list[1].cells.level ~= nil and W.SortKey("dungeon"), "name", "dungeons have a level column")
list = W.List("profession", "")
eq(#list >= 8, true, "profession list")
p = W.Page("profession", "Leatherworking")
eq(#p.lines > 100, true, "profession page lists its recipes")
eq(p.lines[3].badge and p.lines[3].right:find("|cffffff00", 1, true), 1, "recipes show their yellow and grey skill")
eq(W.List("profession", "devilsaur leggings")[1].id, 15062, "searching recipes by name")
eq(W.List("item", "longjaw mud")[1].id, 4592, "item tab search")
local _, message = W.List("quest", "anything")
eq(message:find("QuestieDB", 1, true) ~= nil, true, "quest tab explains the missing addon")

-- Wiki with QuestieDB ------------------------------------------------------------------
local function Entity(data, tables)
	local E = {}
	setmetatable(E, { __index = function(_, field)
		return function(id)
			local row = data[id]
			if not row then return nil end
			local v = row[field]
			if v == nil and tables[field] == "always" then return {} end
			if v == nil and not tables[field] then return 0 end
			return v
		end
	end })
	E.GetAllIds = function()
		local ids = {}
		for id in pairs(data) do ids[#ids + 1] = id end
		table.sort(ids)
		return ids
	end
	E.IdsByName = function(name)
		local ids = {}
		for id, row in pairs(data) do if row.name == name then ids[#ids + 1] = id end end
		table.sort(ids)
		return #ids > 0 and ids or nil
	end
	return E
end
local T = { name = true, subName = true, friendlyToFaction = true }
for _, f in ipairs({ "spawns", "questStarts", "questEnds", "npcDrops", "objectDrops", "itemDrops", "vendors",
	"questRewards", "relatedQuests", "objectivesText", "preQuestGroup", "preQuestSingle", "childQuests",
	"requiredMinRep", "requiredSkill", "reputationReward" }) do T[f] = true end
T.startedBy, T.finishedBy, T.objectives = "always", "always", "always"
local quests = {
	[1] = { name = "The Defias Brotherhood", questLevel = 22, requiredLevel = 14, zoneOrSort = 1581,
		startedBy = { { 100 } }, finishedBy = { { 100 } }, preQuestSingle = { 2 }, objectivesText = { "Kill Edwin VanCleef.", "Bring his head." },
		objectives = { { { 639 } }, nil, { { 5191 } } }, nextQuestInChain = 4 },
	[2] = { name = "First Step", questLevel = 10, zoneOrSort = 40, startedBy = { nil, { 900 } }, finishedBy = { { 100 } }, preQuestGroup = { 5, 6 } },
	[3] = { name = "Horde Only Deadmines", questLevel = 20, zoneOrSort = 1581, requiredRaces = 178, startedBy = {}, finishedBy = {} },
	[4] = { name = "Aftermath", questLevel = 23, zoneOrSort = 40, startedBy = { { 100 } }, finishedBy = { { 100 } } },
	[5] = { name = "Earlier Still", questLevel = 9, zoneOrSort = 40, startedBy = { { 100 } }, finishedBy = { { 100 } } },
	[6] = { name = "And Another", questLevel = 9, zoneOrSort = 40, startedBy = { { 100 } }, finishedBy = { { 100 } },
		reputationReward = { { 72, 250 } } },
}
local npcs = {
	[639] = { name = "Edwin VanCleef", minLevel = 21, maxLevel = 21, rank = 1, zoneID = 1581, spawns = { [1581] = { { -1, -1 } } } },
	[100] = { name = "Gryan Stoutmantle", subName = "The People's Militia", minLevel = 35, maxLevel = 35, zoneID = 40, friendlyToFaction = "A",
		spawns = { [40] = { { 56.3, 47.5 }, { 50, 50 } } }, questStarts = { 1, 4, 3 }, questEnds = { 1 } },
	[200] = { name = "Innkeeper Heather", zoneID = 40, spawns = { [40] = { { 52.9, 53.7 } } }, npcFlags = 4 + 128 },
	[300] = { name = "Old Greyjaw", minLevel = 12, maxLevel = 12, rank = 4, zoneID = 12, spawns = { [12] = { { 30, 60 } } } },
}
local qitems = {
	[5191] = { name = "Cruel Barb", npcDrops = { 639 }, questRewards = {} },
	[4592] = { name = "Longjaw Mud Snapper", vendors = { 200 } },
	[8170] = { name = "Rugged Leather", npcDrops = { 639, 100 }, objectDrops = { 900 } },
	[15062] = { name = "Devilsaur Leggings", questRewards = { 1 }, startQuest = 4 },
	[2244] = { name = "Krol Blade", questRewards = { 1 } },
	[15772] = { name = "Pattern: Devilsaur Leggings", vendors = { 200 } },
}
local objects = { [900] = { name = "Wanted Poster", zoneID = 40, spawns = { [40] = { { 54, 31 } } }, questStarts = { 2 } } }
LibQuestieDB = {
	Quest = Entity(quests, T), Npc = Entity(npcs, T), Item = Entity(qitems, T), Object = Entity(objects, T),
	RequireContract = function() return true end,
	Enum = { factionRaceMasks = { Alliance = 77, Horde = 178 } },
	Support = { Get = function(name)
		if name == "QuestieClassicItemDrops" then return { wowheadData = "return { [5191] = { [639] = 12.5 } }" } end
		if name == "QuestXP" then return { db = { [1] = { 22, 1150 } } } end -- { quest level, xp }
		if name ~= "ZoneDB" then return nil end
		return {
			instanceIdToAreaId = { [34] = 717 }, -- Deadmines deliberately absent: found by name instead
			private = {
				dungeons = { [1581] = { "The Deadmines", nil, 40, { { 40, 42.6, 71.8 } } } },
				areaIdToUiMapId = "return { [40] = 1436, [12] = 1429 }",
				areaIdToUiMapIdOverride = "return { [0] = 0 }",
			},
		}
	end },
}
ns.Q.Init()
eq(ns.Q.Available(), true, "QuestieDB detected")

_, message = W.List("quest", "defias")
eq(message, "Loading data...", "quest names index in the background")
RunTimers()
eq(ns.Q.NamesReady(), true, "name indexes ready")
list = W.List("quest", "defias")
eq(list[1].id, 1, "quest search")
eq(#W.List("quest", "horde only"), 0, "other faction's quests are hidden")
eq(W.List("npc", "vancleef")[1].id, 639, "npc search")

p = W.Page("quest", 1)
eq(p.title, "[22] The Defias Brotherhood", "quest title with level")
eq(Has(p, "Level 22, requires level 14, The Deadmines"), true, "quest facts")
eq(Has(p, "Gryan Stoutmantle"), true, "quest giver")
eq(Has(p, "Westfall  50.0, 50.0  (2 places)"), true, "quest giver location: of two spawns the one closest to the player")
eq(Has(p, "Kill Edwin VanCleef. Bring his head."), true, "objective text")
eq(table.concat(ns.Q.Chain(1), " "), "5 6 2 1", "quest chain: what to do first comes first")
eq(Has(p, "Quest chain 4 quests, in this order"), true, "chain section")
local order = {}
for i, l in ipairs(p.lines) do if l.kind == "quest" then order[#order + 1] = l.id .. "@" .. l.indent end end
eq(table.concat(order, " "), "5@1 6@1 2@1 1@1 5@1 4@1", "the chain in order, the next step, then what it leads to")
eq(FindLine(p, function(l) return l.id == 5 end).right, "|cffffd100do this next|r", "the first open quest is marked")
eq(FindLine(p, function(l) return l.id == 6 end).right, nil, "later steps are not")
eq(Has(p, "Next step pick it up at"), true, "the next step says where to go")
eq(Has(W.Page("quest", 4), "Quest chain"), false, "no chain section for a quest that stands alone")
eq(Has(W.Page("quest", 5), "First Step"), true, "a quest lists the quests that wait for it")
questsDone[2] = true
eq(Has(W.Page("quest", 1), "First Step |cff40ff40(done)|r"), true, "completed steps are marked")
eq(table.concat(ns.Q.Chain(1), " "), "2 1", "what led to a finished quest is dropped from the chain")
eq(Has(W.Page("quest", 2), "Wanted Poster"), true, "quests started by objects")
eq(Has(W.Page("quest", 3), "Not available to your faction"), true, "faction warning")

eq(Has(p, "Loading data..."), true, "rewards wait for the loot index")
RunTimers()
eq(ns.Q.LootReady(), true, "loot index ready")
p = W.Page("quest", 1)
eq(FindLine(p, function(l) return l.item == 15062 end) ~= nil, true, "quest rewards")

p = W.Page("item", 5191)
eq(Has(p, "Dropped by"), true, "item drop sources")
eq(FindLine(p, function(l) return l.kind == "npc" and l.id == 639 end).right, "The Deadmines  12.5%", "drop source shows its zone and drop chance")
p = W.Page("item", 4592)
eq(Has(p, "Sold by") and Has(p, "Innkeeper Heather"), true, "vendors")
p = W.Page("item", 8170)
eq(Has(p, "Found in") and Has(p, "Wanted Poster"), true, "object sources")
p = W.Page("item", 15062)
eq(Has(p, "Quest reward") and Has(p, "Starts a quest"), true, "quest links on items")
eq(Has(W.Page("item", 15417), "No source recorded"), true, "items without any source say so")

p = W.Page("npc", 639)
eq(Has(p, "Level 21 elite"), true, "npc level and rank")
eq(Has(p, "Inside The Deadmines"), true, "instance spawns have no coordinates")
eq(FindLine(p, function(l) return l.item == 5191 end).right, "12.5%", "npc drops with their drop chance")
eq(p.lines[#p.lines].item, 8170, "common drops sort below better loot")
p = W.Page("npc", 100)
eq(Has(p, "<The People's Militia>") and Has(p, "Friendly to Alliance"), true, "npc details")
eq(Has(p, "(2 places)"), true, "spawn count")
eq(Has(p, "Horde Only"), false, "npc quest lists hide the other faction")
eq(Has(W.Page("npc", 200), "Sells"), true, "vendor stock")
eq(Has(W.Page("object", 900), "Contains"), true, "object contents")

p = W.Page("dungeon", 36)
local entrance = FindLine(p, function(l) return l.area == 40 end)
eq(entrance.text, "Westfall  42.6, 71.8", "dungeon entrance")
eq(FindLine(p, function(l) return l.kind == "npc" and l.id == 639 end).right, "21 elite", "bosses link to their NPC")
order = {}
for _, l in ipairs(p.lines) do if l.kind == "quest" then order[#order + 1] = l.id .. "@" .. l.indent end end
eq(table.concat(order, " "), "1@1 2@2", "dungeon quests with the steps before them")

-- driving the browser itself
B.Select("dungeon")
local function Rows(parentKind, pred)
	local found = {}
	for _, f in ipairs(allFrames) do
		if f._kind == "Button" and f:IsShown() and pred(f) then found[#found + 1] = f end
	end
	return found
end
local dungeonRow = Rows("Button", function(f) return rawget(f, "entry") and f.entry.kind == "dungeon" and f.entry.id == 36 end)[1]
Fire(dungeonRow, "OnClick", "LeftButton")
local function PageRow(pred) return Rows("Button", function(f) return rawget(f, "line") and pred(f.line) end)[1] end
local mapRow = PageRow(function(l) return l.area == 40 end)
Fire(mapRow, "OnEnter")
Fire(mapRow, "OnClick", "LeftButton")
eq(openedMap, 1436, "map opens on the right zone")
eq(pinned.x, 0.426, "pin uses 0-1 coordinates")
Fire(PageRow(function(l) return l.kind == "npc" and l.id == 639 end), "OnClick", "LeftButton")
local barb = PageRow(function(l) return l.item == 5191 end)
eq(barb ~= nil, true, "following a boss link shows its loot")
Fire(barb, "OnEnter")
local before = #ns.SelectedGoal().entries
Fire(barb, "OnClick", "RightButton")
eq(#ns.SelectedGoal().entries, before + 1, "right-click adds loot to the goal")
Fire(barb, "OnClick", "LeftButton")
eq(PageRow(function(l) return l.kind == "npc" and l.id == 639 end) ~= nil, true, "item page links back to the boss")
ns.Browser.Show("quest", 1)
eq(B.Tab(), "quest", "jumping to a page switches tab")
for _, t in ipairs(W.TABS) do
	B.Select(t.key)
	for _, f in ipairs(allFrames) do
		if f._kind == "EditBox" and f._parent and f:IsShown() and f._scripts.OnTextChanged then end
	end
end
B.Select("goals")
ns.UI.Layout()

-- Goal kinds beyond items: money, profession skill, quests --------------------------------
eq(ns.ParseSpecial("100g").gold, 1000000, "gold goal")
eq(ns.ParseSpecial(" 250 Gold ").gold, 2500000, "gold goal, long form")
eq(ns.ParseSpecial("cooking 225").skill, "Cooking", "skill goal")
eq(ns.ParseSpecial("Cooking 225").need, 225, "skill goal level")
eq(ns.ParseSpecial("hello 5"), nil, "ordinary text is not a special goal")
eq(ns.ParseSpecial("15 pound salmon"), nil, "item names are not special goals")

B.Select("goals")
local kinds = ns.AddGoal("Kinds")
ns.UI.FocusInput()
input:SetText("100g")
eq(#ac.results, 0, "no item suggestions for a gold goal")
Fire(input, "OnEnterPressed")
input:SetText("Cooking 225")
Fire(input, "OnEnterPressed")
eq(kinds.entries[1].gold, 1000000, "gold entry added from the input box")
eq(kinds.entries[2].skill, "Cooking", "skill entry added from the input box")
eq(ns.EntryInfo(kinds.entries[1]).text, "0g / 100g", "gold progress text")
eq(ns.EntryInfo(kinds.entries[2]).text, "150 / 225", "skill progress text")
eq(ns.EntryDone(kinds.entries[1]), false, "gold goal open")
RunTimers()
printed = {}
money, cooking = 1500000, 225
Fire(eventFrame, "OnEvent", "PLAYER_MONEY")
RunTimers()
eq(ns.EntryDone(kinds.entries[1]) and ns.EntryDone(kinds.entries[2]), true, "gold and skill goals complete")
eq(#printed, 2, "both announced")
eq(ns.EntryInfo({ skill = "Alchemy", need = 50 }).text, "? / 50", "unknown profession shows a question mark")

B.Show("quest", 4)
local function ButtonWithText(text)
	for _, f in ipairs(allFrames) do
		if f._kind == "Button" and f:IsShown() and f._text == text then return f end
	end
end
Fire(ButtonWithText("Add to goal"), "OnClick")
menu:Click("Kinds  |cff999999(selected)|r")
eq(kinds.entries[3].quest, 4, "quest added to the goal picked from the menu")
Fire(ButtonWithText("Add to goal"), "OnClick")
menu:Click("Kinds  |cff999999(selected)|r")
eq(#kinds.entries, 3, "the same quest is not added twice")
eq(ns.EntryInfo(kinds.entries[3]).label, "Aftermath", "quest entry shows the quest name")
eq(ns.EntryInfo(kinds.entries[3]).text, "not started", "quest entry state")
questsDone[4] = true
eq(ns.EntryDone(kinds.entries[3]), true, "quest entry completes when the quest is turned in")
kinds.entries[1].note = "for the mount"
B.Select("goals")
ns.UI.Layout()
EachRow(function(row)
	Fire(row, "OnEnter")
	Fire(row, "OnClick", "RightButton")
end)

-- Source column, inline stats, loot at a glance --------------------------------------------
eq(W.Source(15062), "Leatherworking", "source: crafted")
eq(W.Source(5191), "Drop: Edwin VanCleef 12.5%", "source: single drop with its chance")
eq(W.Source(2244), "Quest: The Defias Brotherhood", "source: quest reward")
eq(W.Source(15417), nil, "source: unknown")
p = W.Page("item", 15062)
eq(Has(p, "+12 Stamina") and Has(p, "Equip: Improves your chance to hit"), true, "item page shows the tooltip stats inline")
eq(Has(p, "Devilsaur Leggings\nDevilsaur Leggings"), false, "tooltip name line is not repeated")
eq(p.equippable, true, "gear pages offer Compare")
eq(W.Page("item", 8170).equippable, false, "materials do not")
p = W.Page("dungeon", 36)
local inline = FindLine(p, function(l) return l.item == 5191 end)
eq(inline and inline.indent, 2, "dungeon page lists rare loot under its boss")
eq(FindLine(p, function(l) return l.item == 8170 end), nil, "common drops stay off the dungeon overview")
list = W.List("quest", "")
eq(list[1].caption and list[1].text, "Not done yet: Westfall (2)", "quest tab starts with the current zone")
local zoneIds = {}
for i = 2, #list do zoneIds[#zoneIds + 1] = list[i].id end
eq(table.concat(zoneIds, " "), "5 6", "zone quests: open ones only, by level")

-- Navigation: tabs keep their state, Back says where it goes ------------------------------
B.Show("dungeon", 36)
B.Open("npc", 639)
eq(ButtonWithText("< Deadmines") ~= nil, true, "Back names the previous page")
B.Select("profession")
B.Select("dungeon")
eq(B.Current().kind == "npc" and B.Current().id == 639, true, "returning to a tab restores its page")
Fire(ButtonWithText("< Deadmines"), "OnClick")
eq(B.Current().kind, "dungeon", "Back still works after switching tabs")
B.Show("item", 15062)
Fire(ButtonWithText("Compare"), "OnClick")
eq(ns.Compare.frame:IsShown(), true, "Compare opens from an item page")
eq(ns.Compare.frame.replace:IsShown(), false, "no 'replace' when not comparing a goal entry")
ns.Compare.frame:Hide()

-- Tracker: folding ---------------------------------------------------------------------------
local function TrackerLines()
	local n = 0
	for _, f in ipairs(allFrames) do
		if f._parent == tracker and f._kind == "Button" and f:IsShown() then n = n + 1 end
	end
	return n
end
ns.db.tracker = true
ns.Tracker.Apply()
local open = TrackerLines()
for _, g in ipairs(ns.Goals()) do g.trackerCollapsed = true end
ns.Tracker.Update()
eq(TrackerLines(), #ns.Goals(), "folded goals show only their title")
eq(TrackerLines() < open, true, "folding shortens the tracker")
for _, g in ipairs(ns.Goals()) do g.trackerCollapsed = nil end
B.Select("goals")

-- Settings and slash commands ------------------------------------------------------
SlashCmdList.GOALNOTES("config")
eq(ns.Settings.frame:IsShown(), true, "settings open")
ns.db.slimBorder, ns.db.locked, ns.db.closeOnEscape = true, true, false
ns.ApplyTheme()
ns.db.closeOnEscape = true
ns.ApplyTheme()
ns.ApplyTheme()
local listed = 0
for _, name in ipairs(UISpecialFrames) do if name == "GoalNotesFrame" then listed = listed + 1 end end
eq(listed, 1, "escape registration is not duplicated")
SlashCmdList.GOALNOTES("reset")
SlashCmdList.GOALNOTES("help")
SlashCmdList.GOALNOTES("")
eq(frame:IsShown(), false, "slash toggles")
GoalNotes_OnAddonCompartmentClick(nil, "LeftButton")
eq(frame:IsShown(), true, "compartment button toggles")

-- Item filters: every group is a set of toggles ------------------------------------------------
local DB, C = ns.ItemDB, B.Controls()
local function Summary() return C.summary.text._text end
local function Ids(entries)
	local out = {}
	for _, e in ipairs(entries) do if not e.caption then out[#out + 1] = e.id end end
	return table.concat(out, " ")
end
B.Select("item")
DB.ResetFilter()
F = ns.db.filter
F.subs[207] = true
eq(DB.MatchesFilter(2244), true, "Krol Blade is a one-handed sword")
F.subs = { [208] = true }
eq(DB.MatchesFilter(2244), false, "and not a two-handed one")
F.subs[207] = true
eq(DB.MatchesFilter(2244), true, "several weapon types can be ticked at once")
F.types.armor = true
eq(DB.MatchesFilter(15062) and DB.MatchesFilter(2244), true, "types and weapon types add up")
F.types = {}
F.slots["One-Hand"], F.quality[4], F.minLevel, F.maxLevel, F.stats = true, true, 50, 52, { [1] = true, [3] = true }
eq(DB.MatchesFilter(2244), true, "type, slot, quality, level range and stats together")
eq(DB.FilterLabel(), "One-Handed Swords, Two-Handed Swords, One-Hand, Epic, level 50-52, Strength, Stamina", "label names every part")
local swords = DB.Search("", 200, DB.MatchesFilter, true)
eq(#swords > 0, true, "the combined filter can be browsed")
for _, r in ipairs(swords) do
	eq(DB.GetLevel(r.id) >= 50 and DB.GetLevel(r.id) <= 52 and DB.GetClass(r.id) == 2 and DB.GetQuality(r.id) == 4, true, "browse honours every group")
end
F.quality = { [2] = true }
eq(DB.MatchesFilter(2244), false, "quality")
F.quality = {}
F.stats[4] = true
eq(DB.MatchesFilter(2244), false, "every ticked stat is required")
F.stats[4], F.maxLevel = nil, 40
eq(DB.MatchesFilter(2244), false, "level cap")
DB.ResetFilter()
F.sources.quest = true
eq(DB.MatchesFilter(2244), true, "source: quest reward")
eq(DB.MatchesFilter(5191), false, "source: an empty reward list is not a quest reward")
F.sources.drop = true
eq(DB.MatchesFilter(5191), true, "sources add up")
DB.ResetFilter()
eq(DB.FilterActive(), false, "reset clears every group")

B.Layout()
eq(Summary(), "No filter", "summary line without a filter")
eq(C.filter:IsShown() and C.sort:IsShown() and not C.clear:IsShown(), true, "filter and sort buttons; nothing to clear yet")
Fire(C.filter, "OnEnter")
Fire(C.filter, "OnClick", "LeftButton")
menu:Click("Weapon types"):Click("Daggers")
menu:Click("Weapon types"):Click("One-Handed Swords")
eq(F.subs[215] and F.subs[207], true, "menu: two weapon types ticked")
menu:Click("Slots"):Click("One-Hand")
menu:Click("Stats (must have all ticked)"):Click("Agility")
menu:Click("Required level"):Click("Around my level (25-30)")
eq(F.slots["One-Hand"] and F.stats[2] and F.minLevel == 25 and F.maxLevel == 30, true, "menu: slot, stats, level")
list = W.List("item", "")
eq(#list > 0, true, "item tab lists the filtered items")
eq(tonumber(list[1].cells.level) ~= nil, true, "item list shows the required level")
eq(Summary(), "One-Handed Swords, Daggers, One-Hand, level 25-30, Agility", "the summary says what is filtered")
eq(C.clear:IsShown(), true, "an active filter can be cleared")

-- sorting
Fire(C.sort, "OnEnter")
Fire(C.sort, "OnClick", "LeftButton")
menu:Click("Lvl")
menu:Click("Reversed")
list = W.List("item", "")
local ordered = true
for i = 2, #list do ordered = ordered and DB.GetLevel(list[i - 1].id) >= DB.GetLevel(list[i].id) end
eq(ordered and DB.GetLevel(list[1].id), 30, "sorted by level, highest first")
eq(Summary():find("sorted by lvl, reversed", 1, true) ~= nil, true, "the summary says how it is sorted")
menu:Click("Name")
menu:Click("Reversed")
list = W.List("item", "")
eq(list[1].text < list[#list].text, true, "sorted by name")
Fire(C.sort, "OnClick", "RightButton")
eq(ns.db.sort.item == nil and ns.db.sortDesc.item == nil, true, "right-click returns to the default order")

Fire(C.filter, "OnClick", "LeftButton")
menu:Click("Source"):Click("Dropped by a creature")
eq(F.sources.drop, true, "menu: QuestieDB sources")
Fire(C.clear, "OnClick")
eq(DB.FilterActive(), false, "the clear button resets the filter")
C.minLevel._text = "40"
Fire(C.minLevel, "OnEnter")
Fire(C.minLevel, "OnTextChanged", true)
eq(F.minLevel, 40, "typing a level sets the range")
eq(Summary(), "level 40-max", "and updates the summary")
Fire(C.filter, "OnClick", "RightButton")
eq(F.minLevel, nil, "right-clicking the filter button clears it")
B.Select("goals")
ns.UI.Layout()
B.Select("item")

-- Profession filters ---------------------------------------------------------------------------
local RF = ns.db.recipeFilter
B.Select("profession")
eq(W.List("profession", "")[1].kind, "profession", "no filter: the professions themselves")
eq(C.minLevel:IsShown(), true, "recipes have the level boxes too")
Fire(C.filter, "OnClick", "LeftButton")
menu:Click("Professions"):Click("Leatherworking")
list = W.List("profession", "")
ordered = #list > 1
for i, e in ipairs(list) do
	ordered = ordered and e.kind == "item" and R.Get(e.id).profession == "Leatherworking"
		and (i == 1 or R.Get(list[i - 1].id).yellow <= R.Get(e.id).yellow)
end
eq(ordered, true, "one profession's recipes, easiest first")
menu:Click("Slots"):Click("Legs")
eq((" " .. Ids(W.List("profession", "")) .. " "):find(" 15062 ", 1, true) ~= nil, true, "recipes narrowed to a slot")
eq(Summary(), "Leatherworking, Legs", "recipe filter summary")
menu:Click("I have every reagent")
eq(#W.List("profession", ""), 0, "nothing can be made from empty bags")
for _, reagent in ipairs(R.Get(15062).reagents) do bags[reagent[1]] = reagent[2] end
eq((" " .. Ids(W.List("profession", "")) .. " "):find(" 15062 ", 1, true) ~= nil, true, "what the reagents in hand can make")
bags = {}
menu:Click("I have every reagent")
menu:Click("Slots"):Click("Legs")
menu:Click("Search by reagent name")
list = W.List("profession", "rugged leather")
ordered = #list > 0
for _, e in ipairs(list) do
	local uses = false
	for _, reagent in ipairs(R.Get(e.id).reagents) do uses = uses or ns.Normalize(DB.GetName(reagent[1])):find("ruggedleather", 1, true) ~= nil end
	ordered = ordered and uses
end
eq(ordered, true, "recipes found by what they are made from")
menu:Click("Search by reagent name")
menu:Click("Still gives skill at my level")
eq(#W.List("profession", ""), 0, "no skill-ups in a profession you do not have")
RF.professions = { Cooking = true }
list = W.List("profession", "")
ordered = #list > 0
for _, e in ipairs(list) do ordered = ordered and R.Get(e.id).grey > 150 end
eq(ordered, true, "recipes that still give skill at 150")
Fire(C.clear, "OnClick")
eq(W.List("profession", "")[1].kind, "profession", "cleared: back to the professions")

-- How a recipe is learned
eq(R.Scrolls(15062)[1], 15772, "a crafted item knows its recipe item")
p = W.Page("item", 15062)
eq(Has(p, "How to learn it") and FindLine(p, function(l) return l.item == 15772 end).right, "Vendor: Innkeeper Heather",
	"the item page links the pattern and says where it comes from")
eq(W.LearnedFrom(15062), "Pattern - Vendor: Innkeeper Heather", "short form for lists")
local trained
for id in pairs(R.All()) do
	if not R.Scrolls(id) and R.Get(id).profession == "Leatherworking" then trained = id break end
end
eq(Has(W.Page("item", trained), "Leatherworking trainer"), true, "recipes without a recipe item come from a trainer")
eq(FindLine(W.Page("profession", "Leatherworking"), function(l) return l.item == 15062 end).text:find("Pattern - Vendor", 1, true) ~= nil, true,
	"the profession page says how each recipe is learned")
Fire(C.filter, "OnClick", "LeftButton")
menu:Click("Learned from"):Click("A trainer")
list = W.List("profession", "")
ordered = #list > 0
for _, e in ipairs(list) do ordered = ordered and R.Scrolls(e.id) == nil end
eq(ordered and Summary(), "from a trainer", "recipes can be filtered by how they are learned")
Fire(C.clear, "OnClick")
eq(next(RF.learn), nil, "and the filter cleared")

-- Quest filters: places, reputation, side, level -------------------------------------------------
local QF = ns.db.questFilter
B.Select("quest")
eq(Summary(), "Quests where you are", "quest summary without a filter")
Fire(C.filter, "OnClick", "LeftButton")
menu:Click("Zones"):Click("Westfall")
eq(QF.zones[40], true, "menu: zone")
eq(W.List("quest", "")[1].text, "Not done yet: Westfall (2)", "browsing a chosen zone")
eq(#W.List("quest", "defias"), 0, "searching stays inside the chosen zone")
menu:Click("Quests I have already done")
list = W.List("quest", "")
eq(list[1].text, "Quests: Westfall (4)", "done quests can be listed too")
eq(list[#list].cells.status, "|cff40ff40done|r", "and are marked")
menu:Click("Dungeons and raids"):Click("Deadmines")
eq(W.List("quest", "")[1].text, "Quests: Deadmines, Westfall (5)", "several places add up")
menu:Click("Zones"):Click("Westfall")
eq(Ids(W.List("quest", "")), "1", "dungeon quests of your side")
eq(Summary(), "Deadmines", "quest filter summary")
menu:Click("Horde")
eq(Ids(W.List("quest", "")), "3 1", "the other side's quests on request, with those open to everyone")
menu:Click("Both factions")
eq(Ids(W.List("quest", "")), "3 1", "or both, by level")
menu:Click("My faction")
menu:Click("Dungeons and raids"):Click("Deadmines")
menu:Click("Dungeons and raids"):Click("Every dungeon and raid")
eq(W.List("quest", "")[1].text, "Quests: all dungeons and raids (1)", "every dungeon quest at once")
menu:Click("Clear all filters")
eq(Summary(), "Quests where you are", "quest filter cleared")
menu:Click("Gives reputation with"):Click("Faction 72")
list = W.List("quest", "")
eq(list[1].text == "Quests: Faction 72 reputation (1)" and list[2].id, 6, "quests by the reputation they give")
menu:Click("Zones"):Click("Westfall")
eq(Summary(), "Westfall, Faction 72 reputation", "place and reputation combine")
eq(Ids(W.List("quest", "")), "6", "and narrow each other")
menu:Click("Gives reputation with"):Click("Faction 72")
eq(Ids(W.List("quest", "")), "5 6 2 4", "zone quests by level")
Fire(C.sort, "OnClick", "LeftButton")
menu:Click("Name")
eq(Ids(W.List("quest", "")), "4 6 5 2", "quests sorted by name")
menu:Click("Reversed")
eq(Ids(W.List("quest", "")), "2 5 6 4", "and reversed")
Fire(C.sort, "OnClick", "RightButton")
quests[5].requiredLevel = 40
Fire(C.filter, "OnClick", "LeftButton")
menu:Click("Only quests I can take at my level")
eq(Ids(W.List("quest", "")), "6 2 4", "quests above your level can be hidden")
quests[5].requiredLevel = nil
Fire(C.clear, "OnClick")
QF.hideDone = true
eq(W.List("quest", "")[1].text, "Not done yet: Westfall (2)", "back to the quests where you are")

-- List columns, counts and quest kinds -------------------------------------------------------------
B.Select("item")
eq(W.List("item", "krol blade")[1].cells.slot, nil, "columns that are off are not filled")
Fire(C.header.name, "OnEnter")
Fire(C.header.name, "OnClick", "RightButton")
menu:Click("Slot")
menu:Click("Type")
local krol = W.List("item", "krol blade")[1].cells
eq(krol.slot .. "/" .. krol.type .. "/" .. krol.level, "One-Hand/One-Handed Swords/51", "columns chosen from the menu")
menu:Click("Slot")
eq(ns.db.listColumns.item.slot, false, "a column switched off stays off")
menu:Click("Type")
menu:Click("List width"):Click("Wide")
eq(ns.db.listWidth, 0.45, "the list width can be changed")
menu:Click("List width"):Click("Normal")
C.search:SetText("krol blade")
eq(C.header.name.text._text, "1 items", "the caption row counts what is listed")
C.search:SetText("")
F.types.armor = true
Fire(C.header.name, "OnClick", "LeftButton")
eq(ns.db.sort.item, "name", "clicking the name caption sorts by name")
B.Layout()
B.Refresh()
eq(C.header.name.text._text:match("^200 of %d+ items$") ~= nil, true, "and says how many more matched")
Fire(C.sort, "OnClick", "RightButton")
DB.ResetFilter()

B.Select("quest")
eq(ns.Q.QuestType(1) .. " " .. ns.Q.QuestType(4), "dungeon quest", "kinds of quest")
quests[6].questFlags = 4096
eq(ns.Q.QuestType(6), "daily", "daily quests by their flag")
QF.zones[40], QF.dungeons[36], QF.hideDone = true, true, false
list = W.List("quest", "")
local function Entry(id) for _, e in ipairs(list) do if e.id == id then return e end end end
eq(Entry(6).atlas, "questlog-questtypeicon-daily", "the list shows each quest's kind as an icon")
eq(Entry(6).sub:find("Level 9", 1, true) and Entry(6).sub:find("Daily", 1, true) and Entry(6).sub:find("Westfall", 1, true) ~= nil, true,
	"and its level, kind and zone on the second line")
B.Layout()
B.Refresh()
eq(C.header.name.text._text, "5 quests", "quest count")
for _, f in ipairs(allFrames) do
	if f._kind == "Button" and f:IsShown() and rawget(f, "entry") and f.entry.quest then Fire(f, "OnEnter") end
end
Fire(C.filter, "OnClick", "LeftButton")
menu:Click("Kind of quest"):Click("|A:questlog-questtypeicon-dungeon:14:14|a Dungeon")
eq(Ids(W.List("quest", "")), "1", "quests filtered by kind")
menu:Click("Kind of quest"):Click("|A:questlog-questtypeicon-daily:14:14|a Daily")
eq(Ids(W.List("quest", "")) .. " " .. Summary(), "6 1 Deadmines, Westfall, Dungeon, Daily", "kinds add up")
ns.db.listColumns.quest.kind, ns.db.listColumns.quest.zone = true, true
list = W.List("quest", "")
eq(Entry(6).cells.kind .. "/" .. Entry(6).cells.zone, "Daily/Westfall", "quest columns: type and zone")
ns.db.listColumns.quest.kind, ns.db.listColumns.quest.zone = false, false
quests[6].questFlags = nil
Fire(C.clear, "OnClick")
QF.hideDone = true
eq(Has(W.Page("quest", 1), "Dungeon quest"), true, "the quest page names the kind")
B.Select("profession")
eq(C.header.name.text._text:match("^%d+ professions$") ~= nil, true, "the professions list is counted as professions")

-- Folding page sections, and showing capped lists in full ---------------------------------------
local function PageRows() return #Rows("Button", function(f) return rawget(f, "line") ~= nil end) end
B.Show("quest", 1)
local unfolded = PageRows()
local head = PageRow(function(l) return l.head and l.text == "Starts at" end)
Fire(head, "OnEnter")
Fire(head, "OnClick", "LeftButton")
eq(ns.db.folded["quest:Starts at"], true, "clicking a caption folds its section")
eq(PageRows() < unfolded, true, "a folded section shows only its caption")
B.Show("quest", 4)
eq(PageRow(function(l) return l.kind == "npc" end) == nil or ns.db.folded["quest:Starts at"], true, "the fold is remembered for other pages of the kind")
B.Show("quest", 1)
Fire(PageRow(function(l) return l.head and l.text == "Starts at" end), "OnClick", "LeftButton")
eq(PageRows(), unfolded, "clicking again unfolds it")
local shift = IsShiftKeyDown
IsShiftKeyDown = function() return true end
Fire(PageRow(function(l) return l.head and l.text == "Starts at" end), "OnClick", "LeftButton")
eq(ns.db.folded["quest:Rewards"] and PageRow(function(l) return l.kind == "npc" end) == nil, true, "shift-click folds every section")
Fire(PageRow(function(l) return l.head and l.text == "Starts at" end), "OnClick", "LeftButton")
eq(next(ns.db.folded), nil, "and unfolds them all")
IsShiftKeyDown = shift

p = W.Page("item", 8170)
local more = FindLine(p, function(l) return l.more ~= nil end)
eq(more and more.more, "Used to make", "long lists are capped with a line to open them")
eq(#W.Page("item", 8170, { ["Used to make"] = true }).lines > #p.lines, true, "the page can be built with a list in full")
B.Show("item", 8170)
Fire(PageRow(function(l) return l.more == "Used to make" end), "OnEnter")
Fire(PageRow(function(l) return l.more == "Used to make" end), "OnClick", "LeftButton")
eq(PageRow(function(l) return l.more == "Used to make" end), nil, "clicking it shows the whole list")

-- Quest chains as goals -------------------------------------------------------------------------
questsDone[2] = nil
local chainGoal = ns.AddGoal("Chain")
B.Show("quest", 1)
Fire(ButtonWithText("Add to goal"), "OnClick")
menu:Click("Chain  |cff999999(selected)|r")
local qe = chainGoal.entries[1]
menu:Click("Kinds")
eq(ns.SelectedGoal() == kinds and kinds.entries[#kinds.entries].quest, 1, "another goal can be picked; it becomes the selected one")
ns.Remove(kinds.entries, kinds.entries[#kinds.entries])
local goalCount = #ns.Goals()
menu:Click("|cff40ff40+ New goal|r")
local made = ns.Goals()[#ns.Goals()]
eq(#ns.Goals() == goalCount + 1 and made.title == "The Defias Brotherhood" and made.entries[1].quest, 1, "or a new goal, named after what is added")
ns.Remove(ns.Goals(), made)
ns.selectedGoal = chainGoal
eq(qe.quest == 1 and qe.chain, true, "a quest with prerequisites is added with its chain")
local function Steps()
	local out = {}
	for _, r in ipairs(ns.GoalRows(chainGoal)) do
		if r.step then out[#out + 1] = r.quest .. (r.next and "*" or "") end
	end
	return table.concat(out, " ")
end
eq(Steps(), "5* 6 2", "the chain as steps, the one to do now marked")
questsDone[5] = true
eq(Steps(), "5 6* 2", "the mark moves on as quests are finished")
eq(ns.RowDone(ns.GoalRows(chainGoal)[2]), true, "finished steps count as done")
eq(#chainGoal.entries, 1, "steps are not entries of their own")
Fire(PageRow(function(l) return l.kind == "quest" and l.id == 4 end), "OnEnter")
Fire(PageRow(function(l) return l.kind == "quest" and l.id == 4 end), "OnClick", "RightButton")
eq(chainGoal.entries[2].quest == 4 and chainGoal.entries[2].chain, nil, "right-click adds a linked quest; alone it has no steps")
ns.Remove(chainGoal.entries, chainGoal.entries[2])
local ve = ns.AddItem(chainGoal, 2244, 1)
eq(ve.via, 1, "an item only a quest rewards brings that quest's chain")
eq(Steps(), "5 6* 2 5 6* 2 1", "the item lists the chain including the rewarding quest")
eq(ns.AddItem(chainGoal, 5191, 1).via, nil, "items with another source do not")
B.Select("goals")
ns.UI.Layout()
local function GoalRow(pred)
	local found
	EachRow(function(row) if row.goal == chainGoal and pred(row.data) then found = found or row end end)
	return found
end
EachRow(function(row)
	Fire(row, "OnEnter")
	Fire(row, "OnClick", "RightButton")
end)
local parent = GoalRow(function(r) return r.entry == qe and not r.step end)
eq(parent.data.foldable, true, "entries with steps can be folded")
Fire(parent.toggle, "OnClick")
ns.UI.Layout()
eq(qe.fold and GoalRow(function(r) return r.entry == qe and r.step end), nil, "folding hides the steps in the goal list")
eq(GoalRow(function(r) return r.entry == ve and r.step end) ~= nil, true, "other entries keep theirs")
Fire(GoalRow(function(r) return r.entry == qe end).toggle, "OnClick")
ns.UI.Layout()
eq(GoalRow(function(r) return r.entry == qe and r.step end) ~= nil, true, "unfolding brings them back")
for _, f in ipairs(allFrames) do
	if rawget(f, "goal") == chainGoal and rawget(f, "summary") and f:IsShown() then Fire(f, "OnClick", "RightButton") end
end
menu:Click("Collapse all goals")
eq(chainGoal.collapsed, true, "all goals can be collapsed at once")
menu:Click("Expand all goals")
ns.UI.Layout()
ns.Tracker.Update()
local nextLines = 0
for _, f in ipairs(allFrames) do
	if f._parent == tracker and f:IsShown() and rawget(f, "left") and f.left._text == "next: And Another" then nextLines = nextLines + 1 end
end
eq(nextLines, 2, "the tracker shows only the step to do now, per chain")
local function TrackerLine(pred)
	for _, f in ipairs(allFrames) do
		if f._parent == tracker and f:IsShown() and pred(f) then return f end
	end
end
local function StepLine() return TrackerLine(function(f) return rawget(f, "left") and f.left._text == "First Step" end) end
eq(StepLine(), nil, "later steps stay folded away")
local itemLine = TrackerLine(function(f) return rawget(f, "entry") == ve end)
eq(itemLine.toggle:IsShown(), true, "a tracked quest reward has a toggle in the tracker")
Fire(itemLine, "OnEnter")
Fire(itemLine.toggle, "OnClick")
eq(ve.trackerFold == false and StepLine() ~= nil, true, "expanding lists every quest still needed for the item")
Fire(TrackerLine(function(f) return rawget(f, "entry") == ve end).toggle, "OnClick")
eq(StepLine(), nil, "and collapsing leaves the next step only")
local titleLine = TrackerLine(function(f) return rawget(f, "goal") == chainGoal end)
Fire(titleLine.toggle, "OnClick")
eq(chainGoal.trackerCollapsed, true, "the goal's own toggle folds the whole goal")
Fire(TrackerLine(function(f) return rawget(f, "goal") == chainGoal end).toggle, "OnClick")
Fire(GoalRow(function(r) return r.step and r.quest == 6 end), "OnClick", "LeftButton")
eq(B.Current().kind == "quest" and B.Current().id, 6, "clicking a step opens its quest page")
B.Select("goals")
ns.UI.Layout()
Fire(GoalRow(function(r) return r.entry == qe and not r.step end), "OnClick", "RightButton")
menu:Click("Track this quest only")
eq(qe.chain, nil, "a quest entry can drop its steps")
Fire(GoalRow(function(r) return r.entry == ve and not r.step end), "OnClick", "RightButton")
menu:Click("Stop tracking the quest chain")
eq(Steps(), "", "and so can an item")
Fire(GoalRow(function(r) return r.entry == ve end), "OnClick", "RightButton")
menu:Click("Track the quest: The Defias Brotherhood")
eq(ve.via, 1, "the rewarding quest can be tracked again from the menu")
ns.Remove(ns.Goals(), chainGoal)
ns.UI.Layout()

-- Columns: sorting by caption, more columns, compact rows --------------------------------------
local function HeaderCell(label)
	for _, cell in ipairs(C.header.cells) do
		if cell:IsShown() and cell.text._text == label then return cell end
	end
end
B.Select("quest")
ns.db.listColumns.quest.zone, ns.db.listColumns.quest.xp = true, true
B.Layout()
B.Refresh()
Fire(HeaderCell("Zone"), "OnEnter")
Fire(HeaderCell("Zone"), "OnClick", "LeftButton")
eq(ns.db.sort.quest, "zone", "clicking a column caption sorts by it")
Fire(HeaderCell("Zone"), "OnClick", "LeftButton")
eq(ns.db.sortDesc.quest, true, "clicking it again reverses")
Fire(C.sort, "OnClick", "RightButton")
eq(ns.Q.QuestXP(1) == 1150 and ns.Q.QuestXP(4), nil, "quest experience where QuestieDB has it")
eq(W.List("quest", "defias")[1].cells.xp, "1150", "XP column")
ns.db.listColumns.quest.zone, ns.db.listColumns.quest.xp = false, false
ns.db.listColumns.item.ilvl, ns.db.listColumns.item.price = true, true
local helm = W.List("item", "lionheart helm")[1]
eq(helm.cells.ilvl .. " " .. helm.cells.price, "61 109471c", "item level and vendor cost columns")
eq(helm.sub:find("Level 56", 1, true) and helm.sub:find("Head", 1, true) and helm.sub:find("Plate", 1, true) ~= nil, true,
	"two-line rows show level, slot and type")
ns.db.listColumns.item.ilvl, ns.db.listColumns.item.price = false, false
ns.db.sort.dungeon, ns.db.sortDesc.dungeon = "bosses", true
list = W.List("dungeon", "")
eq(#ns.Q.Dungeon(list[1].id).bosses >= #ns.Q.Dungeon(list[2].id).bosses and list[1].sub:find("bosses", 1, true) ~= nil, true,
	"dungeons sorted by their number of bosses")
ns.db.sort.dungeon, ns.db.sortDesc.dungeon = nil, nil
ns.db.compactList = true
for _, t in ipairs(W.TABS) do B.Select(t.key) end
ns.db.compactList = false

-- NPC filters -------------------------------------------------------------------------------------
B.Select("npc")
local NF = ns.db.npcFilter
eq(#W.List("npc", ""), 0, "no NPCs listed before anything is asked")
Fire(C.filter, "OnClick", "LeftButton")
menu:Click("|TInterface\\GossipFrame\\VendorGossipIcon:14|t Vendor")
list = W.List("npc", "")
eq(Ids(list), "200", "vendors can be browsed without typing")
eq(list[1].icon == "Interface\\GossipFrame\\VendorGossipIcon" and list[1].sub:find("Westfall", 1, true) ~= nil, true, "with role icon and zone")
menu:Click("|TInterface\\Tooltips\\RareEliteNameplateIcon:14|t Rare")
eq(Ids(W.List("npc", "")), "", "role and rank narrow each other")
menu:Click("|TInterface\\GossipFrame\\VendorGossipIcon:14|t Vendor")
eq(Ids(W.List("npc", "")), "300", "rares")
menu:Click("Zones and dungeons"):Click("Westfall")
eq(Ids(W.List("npc", "")) .. Summary(), "Rare, Westfall", "rares of a zone")
menu:Click("Zones and dungeons"):Click("Elwynn Forest")
eq(Ids(W.List("npc", "")), "300", "zones add up")
ns.db.listColumns.npc.role = true
NF.ranks = {}
eq(W.List("npc", "heather")[1].cells.role, "Vendor, Innkeeper", "role column")
ns.db.listColumns.npc.role = false
Fire(C.clear, "OnClick")
eq(next(NF.zones) == nil and next(NF.ranks) == nil, true, "NPC filter cleared")

-- Other characters' bags and banks ------------------------------------------------------------------
local A = ns.Alts
containers[0] = { { itemID = 8170, stackCount = 5 }, { itemID = 8170, stackCount = 2 } }
containers[-1] = { { itemID = 8170, stackCount = 20 } }
containers[13] = { { itemID = 8170, stackCount = 99 } }
A.Scan()
local mine = ns.db.chars["Tester - Realm"]
eq(mine.bags[8170] == 7 and mine.bags[12640], 1, "bags and worn items are recorded")
eq(mine.bank[8170], nil, "the bank is not read while it is closed")
Fire(eventFrame, "OnEvent", "BANKFRAME_OPENED")
RunTimers()
eq(mine.bank[8170], 20, "the bank is recorded when open, without the shared warband bank")
Fire(eventFrame, "OnEvent", "BANKFRAME_CLOSED")
containers[-1] = {}
RunTimers()
eq(mine.bank[8170], 20, "and kept after it closes")
eq(A.Any(), false, "no other character yet")
B.Select("goals")
ns.UI.Layout()
eq(ns.UI.header.cells.alts:IsShown(), false, "the Alts column stays hidden until there is one")
ns.db.chars["Banker - Realm"] = { bags = { [8170] = 3 }, bank = { [8170] = 30 } }
ns.db.chars["Other - Elsewhere"] = { bags = { [8170] = 1 }, bank = {} }
local onAlts, holders = A.Count(8170)
eq(onAlts .. " " .. holders[1].name .. " " .. holders[2].name, "34 Banker Other - Elsewhere", "what other characters hold, biggest first")
local altGoal = ns.AddGoal("Alts")
ns.AddItem(altGoal, 8170, 100)
printed = {}
ns.Refresh()
RunTimers()
eq(table.concat(printed, "\n"):find("Banker (and 1 more) has 34 x", 1, true) ~= nil, true, "chat says when another character has what a goal lacks")
printed = {}
ns.Refresh()
RunTimers()
eq(#printed, 0, "once per session")
local altRow
EachRow(function(row) if row.goal == altGoal then altRow = row end end)
eq(altRow.cells.alts._text, "34", "the Alts column")
eq(altRow.cells.have._text, "0", "other characters do not count as yours")
Fire(altRow, "OnEnter")
tooltipPostCall(GameTooltip, { id = 8170 })
eq(Has(W.Page("item", 8170), "Banker has 33 (bags 3, bank 30)"), true, "the item page lists who has it")
Fire(ns.UI.header.cells.alts, "OnMouseUp", "RightButton")
menu:Click("Characters"):Click("Banker")
eq((A.Count(8170)), 1, "a character can be switched off")
menu:Click("Characters"):Click("Banker")
menu:Click("Alts")
eq(ns.db.columns.alts, false, "goal columns are toggled from the caption row")
menu:Click("Alts")
menu:Click("Characters"):Click("Forget a character"):Click("Banker")
eq(ns.db.chars["Banker - Realm"], nil, "or forgotten")
ns.db.chars["Other - Elsewhere"] = nil
ns.Remove(ns.Goals(), altGoal)
ns.UI.Layout()

---------------------------------------------------------------------------
-- Closest first, dungeon levels, quest rewards, resizing by dragging, the hover map
---------------------------------------------------------------------------
-- the player stands at 50, 50 in Westfall, a map of 4000 by 3000 yards (see C_Map above)
eq(ns.Q.Distance({ [40] = { { 52.9, 53.7 }, { 90, 90 } }, [12] = { { 50, 50 } } }) > 160.5, true, "distance to the closest spawn in the player's zone")
eq(ns.Q.Distance({ [12] = { { 50, 50 } } }), nil, "no distance to other zones")
ns.db.listColumns.npc.near = true
W.SortBy("npc", "near")
list = W.List("npc", "")
eq(Ids(list):sub(1, 7) .. " " .. list[2].cells.near .. " " .. list[#list].cells.near, "100 200 161 yd ", "NPCs by distance: the player's zone first, closest on top")
ns.db.sort.npc, ns.db.listColumns.npc.near = nil, false

ns.db.nearFirst = true
p = W.Page("item", 8170) -- dropped by VanCleef (in the Deadmines) and Gryan (here)
local function DropOrder(page)
	local ids = {}
	for _, l in ipairs(page.lines) do if l.kind == "npc" then ids[#ids + 1] = l.id end end
	return table.concat(ids, " ")
end
eq(DropOrder(p) .. " " .. FindLine(p, function(l) return l.id == 100 end).right, "100 639 0 yd  Westfall", "drop sources: closest first")
B.Show("item", 8170)
Fire(PageRow(function(l) return l.toggle == "nearFirst" end), "OnClick", "LeftButton")
eq(tostring(ns.db.nearFirst) .. " " .. DropOrder(W.Page("item", 8170)), "false 639 100", "a click on the line switches closest-first off")
ns.db.nearFirst = true

local d = ns.Q.Dungeon(36)
eq(table.concat({ ns.Q.DungeonLevels(d) }, "-"), "16-23", "dungeon levels: tuned level to two above its highest boss")
eq(table.concat({ ns.Q.DungeonLevels(ns.Q.Dungeon(3065)) }, "-"), "13-20", "a dungeon without known bosses spans seven levels")
eq(table.concat({ ns.Q.DungeonLevels(ns.Q.Dungeon(409)) }, "-"), "60-60", "raids are for their one level")

p = W.Page("quest", 1)
eq(Has(p, "1150 XP") and Has(p, "1150 experience"), true, "quest page shows the experience")
eq(Has(W.Page("quest", 6), "+250 reputation with Faction 72"), true, "and the reputation")
eq(W.List("quest", "defias")[1].sub:find("1150 XP", 1, true) ~= nil, true, "quest rows show the experience")

-- hovering a location shows the small map; nothing to check but that it draws
B.Show("npc", 100)
local place = PageRow(function(l) return l.area == 40 end)
eq(#place.line.points, 2, "a location line knows every spawn of its zone")
Fire(place, "OnEnter")
Fire(place, "OnLeave")

-- dragging: the left edge of a column caption, and the bar between list and page
local cursor = 100
function GetCursorPosition() return cursor, 100 end
local function Drag(handle, dx)
	cursor = 100
	Fire(handle, "OnMouseDown")
	cursor = 100 + dx
	Fire(handle, "OnUpdate")
	Fire(handle, "OnMouseUp")
	eq(handle._scripts.OnUpdate, nil, "the drag ends with the mouse button")
end
local function Grip(caption)
	for _, f in ipairs(allFrames) do
		if f._parent == caption and f._scripts.OnMouseDown and f._scripts.OnEnter then return f end
	end
end
B.Select("quest")
local caption = HeaderCell("Lvl")
Fire(Grip(caption), "OnEnter")
Fire(Grip(caption), "OnLeave")
Drag(Grip(caption), -20)
eq(ns.db.colWidth["quest:level"], 46, "dragging a caption's left edge outwards widens the column")
eq(HeaderCell("Lvl"):GetWidth(), 46, "and the list is redrawn with it")
ns.db.fontSize = 12
Drag(Grip(ns.UI.header.cells.need), 10)
eq(ns.db.colWidth["goal:need"], 30, "goal list columns are dragged the same way")
ns.db.colWidth = {}
local before = ns.db.listWidth
Drag(C.splitter, 60)
eq(ns.db.listWidth > before and ns.db.listWidth <= 0.75, true, "dragging the bar between list and page resizes the list")
ns.db.listWidth = before

---------------------------------------------------------------------------
-- Places of links, prices, reputation, other characters, gathering nodes on the map
---------------------------------------------------------------------------
eq(ns.Q.PlaceOf("item", 4592).x, 52.9, "an item's place is that of what sells or drops it")
eq(ns.Q.PlaceOf("quest", 2), nil, "quest links get no map: the quest's page has one per giver and target")
-- Rugged Leather drops from VanCleef (in an instance) and Gryan: no chance known, so both count
eq(ns.Q.PlaceOf("item", 8170).area .. " " .. #ns.Q.PlaceOf("item", 8170).points, "40 2", "an item's place: the spawns of what drops it best, in the player's zone")
local chanceOf = ns.Q.DropChance
ns.Q.DropChance = function(item, npc) return npc == 639 and 50 or 5 end
eq(ns.Q.PlaceOf("item", 8170), nil, "a creature with a far better drop chance shuts the others out (here: an instance boss)")
ns.Q.DropChance = chanceOf
-- Copper Ore is gathered: the nodes of the zone the player is in, else of the zone around it
eq(ns.Q.PlaceOf("item", 2770).uiMap, 1436, "a gathered item's place is its nodes in the player's zone")
local bestMap, mapInfo = C_Map.GetBestMapForUnit, C_Map.GetMapInfo
C_Map.GetBestMapForUnit = function() return 1455 end -- Ironforge
C_Map.GetMapInfo = function(map) return { mapID = map, name = "Map " .. map, parentMapID = map == 1455 and 1426 or 0 } end
eq(ns.Q.PlaceOf("item", 2770).uiMap, 1426, "in a city: the zone around it (Dun Morogh for Ironforge)")
C_Map.GetBestMapForUnit, C_Map.GetMapInfo = bestMap, mapInfo
B.Show("item", 2770)
Fire(PageRow(function(l) return l.item == 2770 end), "OnEnter") -- a map without a main dot
p = W.Page("item", 2770)
local mined = FindLine(p, function(l) return l.uiMap ~= nil end)
eq(Has(p, "Gathered in") and mined.uiMap .. " " .. tostring(mined.right), "1436 closest to you", "a gathered item's page lists its zones, yours first")
eq(#ns.Nodes.ZonesOfItem(2770) > 5 and #ns.Nodes.ZonesOfItem(8170), 0, "zones with nodes, none for items that are not gathered")
local zoneRow = PageRow(function(l) return l.uiMap == 1436 end)
Fire(zoneRow, "OnEnter")
Fire(zoneRow, "OnClick", "LeftButton")
eq(openedMap, 1436, "clicking a zone of nodes opens its map")
B.Select("item")
C.search:SetText("copper ore")
Fire(Rows("Button", function(f) return rawget(f, "entry") and f.entry.item == 2770 end)[1], "OnEnter") -- the map, from the list
GameTooltip._lines = ""
ns.Recipes.AddTooltipLines(GameTooltip, 15062)
eq(GameTooltip._lines:find("yellow at 310", 1, true) ~= nil and GameTooltip._lines:find("(have ", 1, true) ~= nil, true,
	"a craftable item's tooltip: skill levels, and each reagent with what you have")
eq(ns.Q.PlaceOf("npc", 639), nil, "nothing to show for NPCs inside an instance")
B.Show("item", 4592)
local vendor = PageRow(function(l) return l.kind == "npc" and l.id == 200 end)
Fire(vendor, "OnEnter") -- draws the small map for the vendor
Fire(vendor, "OnLeave")

p = W.Page("item", 4592)
eq(Has(p, "Vendors sell it for") and Has(p, "Vendors pay you"), true, "item page: what a vendor charges and pays")
eq(Has(p, "Auction house"), false, "no auction price without an auction addon")
Auctionator = { API = { v1 = { GetAuctionPriceByItemID = function(caller, id) return id == 4592 and 1234 or nil end } } }
eq(FindLine(W.Page("item", 4592), function(l) return l.text:find("Auction house", 1, true) end).right, "1234c", "auction price from Auctionator")
eq(DB.GetSellPrice(12640) > 0 and DB.GetSellPrice(12640) < DB.GetPrice(12640), true, "vendors pay less than they charge")
Auctionator = nil

ns.db.listColumns.quest.rep = true
eq(W.List("quest", "and another")[1].cells.rep, "+250 Faction 72", "reputation column of the quest list")
ns.db.listColumns.quest.rep = false

ns.db.chars["Mule - Realm"] = { bags = { [8170] = 3 }, bank = { [8170] = 2 } }
eq(ns.Alts.Summary(8170), "5 on Mule", "who else holds an item, in words")
ns.db.chars["Mule - Realm"] = nil
eq(ns.Alts.Summary(8170), nil, "nobody else has it")

-- gathering nodes: a fake world map showing Westfall
WorldMapFrame = NewMock("Frame")
local canvas = NewMock("Frame")
canvas._w, canvas._h = 1000, 600
WorldMapFrame.ScrollContainer = NewMock("Frame")
WorldMapFrame.GetCanvas = function() return canvas end
WorldMapFrame.GetMapID = function() return 1436 end
ns.Nodes.Init()
-- what the tracked goals miss is on the map without asking: a vendor's spot, and the ore's nodes
local mapGoal = ns.AddGoal("Map goal")
for _, g in ipairs(ns.Goals()) do g.untracked = g ~= mapGoal or nil end
ns.AddItem(mapGoal, 4592, 5) -- sold by Innkeeper Heather, in Westfall
ns.Nodes.GoalsChanged()
eq(ns.Nodes.Draw(), 1, "the world map shows where to get what a tracked goal misses")
-- the icon says what it is under the cursor, and a click opens the item
local cw, ch = canvas:GetWidth(), canvas:GetHeight()
eq(ns.Nodes.HoverAt(0.529 * cw + 2, 0.537 * ch - 2), DB.GetName(4592), "hovering a map icon names the item")
eq(ns.Nodes.hover:IsShown(), true, "with a button under the cursor")
Fire(ns.Nodes.hover, "OnClick", "LeftButton")
eq(B.Current().kind .. " " .. B.Current().id, "item 4592", "a click on a map icon opens the item's page")
eq(tostring(ns.Nodes.HoverAt(0.2 * cw, 0.2 * ch)) .. " " .. tostring(ns.Nodes.hover:IsShown()), "nil false", "and nothing away from the icons")
-- the minimap has it too, until the player is close enough for the game's own tracking
Minimap.GetZoom = function() return 0 end -- 467 yards across
function IsIndoors() return false end
function GetCVar() return "0" end
function GetPlayerFacing() return 0 end
eq(ns.Nodes.MiniUpdate(), 1, "the minimap shows goal sources within its reach (the vendor is 161 yards away)")
local standing = C_Map.GetPlayerMapPosition
C_Map.GetPlayerMapPosition = function() return { GetXY = function() return 0.529, 0.53 end } end
eq(ns.Nodes.MiniUpdate(), 0, "and hides an icon once the player is next to it")
C_Map.GetPlayerMapPosition = function() return { GetXY = function() return 0.529, 0.507 end } end -- 90 yards north
eq(ns.db.nodes.near .. " " .. ns.Nodes.MiniUpdate(), "80 1", "the hide radius is 80 yards unless changed")
Fire(mm, "OnClick", "RightButton")
menu:Find("Hide on the minimap when closer than"):Click("100 yards")
eq(ns.db.nodes.near .. " " .. ns.Nodes.MiniUpdate(), "100 0", "the minimap button's menu sets the hide radius")
Minimap.GetZoom = function() return 4 end -- 200 yards across: reaches 100, so the radius is capped at 50
C_Map.GetPlayerMapPosition = function() return { GetXY = function() return 0.529, 0.517 end } end -- 60 yards
eq(ns.Nodes.MiniUpdate(), 1, "zoomed in, the radius is at most half the minimap's reach")
Minimap.GetZoom = function() return 0 end
ns.db.nodes.near = 80
C_Map.GetPlayerMapPosition = function() return { GetXY = function() return 0.1, 0.1 end } end
eq(ns.Nodes.MiniUpdate(), 0, "or when it is beyond the minimap's reach")
C_Map.GetPlayerMapPosition = standing
ns.db.nodes.minimap = false
eq(ns.Nodes.MiniUpdate(), 0, "the minimap icons can be switched off")
ns.db.nodes.minimap = true
ns.AddItem(mapGoal, 2770, 20) -- Copper Ore: gathered
ns.Nodes.GoalsChanged()
local copper = ns.Nodes.Draw()
eq(copper > 10, true, "for gathered items their nodes, though gathering nodes are switched off")
eq(W.Source(2770), "Mining: Copper Vein", "the Source of a gathered item names its node")
DB.ResetFilter()
ns.db.filter.sources.gathered = true
eq(DB.MatchesFilter(2770) and not DB.MatchesFilter(8170), true, "the source filter knows gathered items")
DB.ResetFilter()
-- the same filters, one click each, above the Items list
B.Select("item")
local function Lit(key) return C.sources[key].active end
eq(C.sources.vendor:IsShown() and C.sources.found == nil, true, "the Items tab has a button per source")
Fire(C.sources.vendor, "OnClick", "LeftButton")
list = W.List("item", "")
local vendorOnly = #list
eq(tostring(ns.db.filter.sources.vendor) .. " " .. Summary() .. " " .. tostring(Lit("vendor")) .. " " .. tostring(#list > 0 and DB.MatchesFilter(4592) and not DB.MatchesFilter(2770)),
	"true sold true true", "a click on Vendor lists what vendors sell, and lights the button")
Fire(C.sources.gathered, "OnClick", "LeftButton")
eq(Summary() .. " " .. tostring(#W.List("item", "") > vendorOnly and DB.MatchesFilter(2770)), "gathered, sold true", "a second button adds its items")
Fire(C.sources.vendor, "OnClick", "LeftButton")
Fire(C.sources.gathered, "OnClick", "LeftButton")
eq(Summary() .. " " .. tostring(Lit("vendor")), "No filter false", "a second click switches a source off again")
for key, want in pairs({ crafted = 15062, quest = 2244, drop = 5191 }) do
	Fire(C.sources[key], "OnClick", "LeftButton")
	eq(DB.MatchesFilter(want), true, "the " .. key .. " button filters")
	Fire(C.sources[key], "OnClick", "LeftButton")
end
B.Select("quest")
eq(C.sources.vendor:IsShown(), false, "other tabs have no source buttons")
-- OpenMap's dungeon card: what the goals miss in there, and the quests left
ns.AddItem(mapGoal, 5191, 1) -- Cruel Barb, from Edwin VanCleef
ns.Nodes.GoalsChanged()
local cardTitle, card = ns.Nodes.DungeonSection({ instances = { { name = "The Deadmines", bosses = {} } } })
eq(cardTitle .. " / " .. card[1], "Goal Notes / Cruel Barb: Edwin VanCleef 12.5%", "OpenMap's dungeon card lists the goal items its bosses drop")
eq(card[#card]:find("^Deadmines: %d+ quests to do, %d+ in your log$") ~= nil, true, "and the quests left to do there")
eq(ns.Nodes.DungeonSection({ instances = { { name = "Nowhere" } } }), nil, "nothing for a dungeon without either")
-- what the class can equip (the tests play a warrior)
eq(tostring(DB.Usable(4547)) .. " " .. tostring(DB.Usable(1190)) .. " " .. tostring(DB.Usable(7922)) .. " " .. tostring(DB.Usable(2770)),
	"false true true nil", "a warrior has no use for wands, wears cloaks and plate; ore is not gear")
eq(DB.Usable(7922, true), UnitLevel("player") >= 40, "plate is only what to wear from level 40")
ns.db.filter.forClass = true
eq(tostring(DB.MatchesFilter(4547)) .. " " .. tostring(DB.MatchesFilter(1190)) .. " " .. table.concat(DB.FilterParts(ns.db.filter), ","),
	"false true for my class", "the filter keeps what the class wields and wears")
DB.ResetFilter()
eq(ns.db.filter.forClass, nil, "and is cleared with the others")
eq(FindLine(W.Page("npc", 639), function(l) return l.item == 5191 end).unusable, nil, "loot the class can use is drawn as usual")
local realClass = UnitClass
function UnitClass() return "Priest", "PRIEST" end
eq(FindLine(W.Page("npc", 639), function(l) return l.item == 5191 end).unusable, true, "loot it cannot use is faded (a sword, for a priest)")
UnitClass = realClass
mapGoal.untracked = true
ns.Nodes.GoalsChanged()
eq(ns.Nodes.Draw(), 0, "untracked goals put nothing on the map")
for _, g in ipairs(ns.Goals()) do g.untracked = nil end
ns.Remove(ns.Goals(), mapGoal)
ns.db.nodes.goals = false
ns.Nodes.GoalsChanged()
RunTimers()

B.Select("item")
Fire(C.filter, "OnClick", "LeftButton")
menu:Click(ns.Hex.good .. "Gear for my level, best first|r")
eq(ns.db.filter.minLevel .. "-" .. ns.db.filter.maxLevel .. " " .. ns.db.sort.item .. " " .. tostring(ns.db.sortDesc.item), "21-30 ilvl true",
	"one click lists gear for the player's level, best first")
local top = W.List("item", "")
eq(DB.GetItemLevel(top[1].id) >= DB.GetItemLevel(top[#top].id) and DB.GetLevel(top[1].id) <= 30, true, "and the list follows")
local unfit = 0
for _, entry in ipairs(top) do unfit = unfit + (DB.Usable(entry.id, true) and 0 or 1) end
eq(tostring(ns.db.filter.forClass) .. " " .. unfit, "true 0", "with only what the class wields and wears")
DB.ResetFilter()
ns.db.sort.item, ns.db.sortDesc.item = nil, nil

eq(ns.Nodes.Draw(), 0, "gathering nodes are off until asked for")
Fire(mm, "OnClick", "RightButton")
menu:Click("Show gathering nodes")
RunTimers()
local all = ns.Nodes.Draw()
eq(all > 50, true, "gathering nodes of the zone the map shows")
local function Kind(name) return "|TInterface\\Icons\\" .. ({ Mining = "Trade_Mining", Herbalism = "Trade_Herbalism", Chests = "INV_Box_01", Fishing = "Trade_Fishing" })[name] .. ":14|t " .. name end
menu:Find(Kind("Mining")):Click("|T" .. C_Item.GetItemIconByID(2770) .. ":14|t Copper Vein")
local fewer = ns.Nodes.Draw()
eq(fewer < all, true, "a node type is unticked in the minimap button's menu")
menu:Find(Kind("Mining")):Click("Untick all")
local noMining = ns.Nodes.Draw()
menu:Find(Kind("Mining")):Click("Tick all")
eq(noMining < fewer and ns.Nodes.Draw(), all, "or all types of a kind")
for _, kind in ipairs({ "Herbalism", "Chests", "Fishing" }) do menu:Click(Kind(kind)) end
local mining = ns.Nodes.Draw()
eq(mining, all - noMining, "clicking a kind's name switches the whole kind off, keeping its ticks")
menu:Click(Kind("Mining"))
eq(ns.Nodes.Draw(), 0, "every kind off: nothing on the map")
menu:Click(Kind("Mining"))
-- OpenMap's stitched map: every other zone lies one map width to the right of Westfall.
-- The fake scroll frame is as wide as the canvas, so with the spare margin the view covers both.
local scroll = WorldMapFrame.ScrollContainer
scroll._w, scroll._h = 1000, 600
scroll.GetCurrentScrollX, scroll.GetCurrentScrollY = function() return 0.5 end, function() return 0.5 end
OpenMapAPI = { major = 1, IsStitched = function() return true end, GetView = function() return 0.5, 0.5, 2 end,
	WorldFromMap = function(id, x, y) return (id == 1436 and 0 or 1) + x, y end,
	MapFromWorld = function(_, u, v) return u, v end, ArtTopLevel = function() return 40 end }
local wide = ns.Nodes.Draw()
eq(wide > mining and wide <= 1500, true, "OpenMap: every zone in view gets its nodes, thinned evenly when there are too many")
scroll._w = 100 -- zoomed in: a tenth of the canvas wide, around the middle of Westfall
local narrow = ns.Nodes.Draw()
eq(narrow > 0 and narrow < mining, true, "OpenMap zoomed in: only what is in view is drawn")
local glide
OpenMapAPI.ShowWorld = function(u, v) glide = u .. " " .. v end
ns.Q.ShowOnMap(40, 50, 25)
eq(glide, "0.5 0.25", "OpenMap: pinning a place glides the stitched map there")
OpenMapAPI, ns.db.nodes.show = nil, false

print = _G.print
io.write(("ok - %d checks, %d items in database (build %s)\n"):format(checks, ns.ItemDBCount, ns.ItemDBBuild))
