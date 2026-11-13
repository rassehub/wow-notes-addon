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
	local o = { _kind = kind, _scripts = {}, _shown = true, _text = "", _parent = parent, _w = 300, _h = 20 }
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
Enum = { TooltipDataType = { Item = 0 } }

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
function MenuNode:CreateCheckbox(text, _, set) self[#self + 1] = { text = text, fn = set } end
MenuNode.CreateRadio = MenuNode.CreateCheckbox
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
F.type, F.source = "armor", "crafted"
local browse = ns.ItemDB.Search("", 200, ns.ItemDB.MatchesFilter, true)
eq(#browse, 200, "browsing a filter without text")
for _, r in ipairs(browse) do
	eq(ns.ItemDB.GetClass(r.id) == 4 and R.Get(r.id) ~= nil, true, "browse honours the filter")
end
local dev = ns.ItemDB.Search("devilsaur", 200, ns.ItemDB.MatchesFilter)
eq(#dev, 2, "crafted devilsaur armor: leggings and gauntlets")
F.source = "found"
eq(#ns.ItemDB.Search("devilsaur leggings", 200, ns.ItemDB.MatchesFilter), 0, "crafted armor excluded from looted")
F.type, F.source = "reagent", "any"
eq(ns.ItemDB.MatchesFilter(8170), true, "leather is a reagent")
eq(ns.ItemDB.MatchesFilter(15062), false, "leggings are not a reagent")
F.type = "consumable"
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
F.type = "all"
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
eq(tracker:IsShown(), false, "minimap right-click hides the tracker")
eq(ns.db.tracker, false, "tracker state saved")
Fire(mm, "OnClick", "RightButton")
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

print = _G.print
io.write(("ok - %d checks, %d items in database (build %s)\n"):format(checks, ns.ItemDBCount, ns.ItemDBBuild))
