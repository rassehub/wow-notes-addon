local _, ns = ...

-- Shared look and the item autocomplete used by the main window and the compare window.

local CLASSIC_BACKDROP = {
	bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
	edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
	tile = true, tileSize = 32, edgeSize = 32,
	insets = { left = 11, right = 12, top = 12, bottom = 11 },
}
local SLIM_BACKDROP = {
	bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
	edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
	tile = true, tileSize = 32, edgeSize = 16,
	insets = { left = 4, right = 4, top = 4, bottom = 4 },
}

local themed = {} -- frames that follow the border/opacity settings

function ns.ApplyBackdrop(frame)
	themed[frame] = true
	frame:SetBackdrop(ns.db.slimBorder and SLIM_BACKDROP or CLASSIC_BACKDROP)
	frame:SetBackdropColor(1, 1, 1, ns.db.opacity)
	if frame.header then frame.header:SetShown(not ns.db.slimBorder) end
	if frame.title then
		frame.title:ClearAllPoints()
		frame.title:SetPoint("TOP", 0, ns.db.slimBorder and -10 or -2)
	end
end

function ns.ApplyTheme()
	for frame in pairs(themed) do ns.ApplyBackdrop(frame) end
	ns.UI.frame:SetScale(ns.db.scale)
	ns.UI.ApplyLock()
	ns.Tracker.Apply()
	ns.MinimapButton.Apply()
	ns.UI.Layout()
	if ns.Compare.frame:IsShown() then ns.Compare.Update() end
end

-- A movable dialog in the classic style: gold border, title plaque, close button.
function ns.CreateWindow(name, title, parent)
	local f = CreateFrame("Frame", name, parent or UIParent, "BackdropTemplate")
	f:SetFrameStrata("MEDIUM")
	f:SetToplevel(true)
	f:SetClampedToScreen(true)
	f:EnableMouse(true)
	f:SetMovable(true)
	f:Hide()

	f.header = f:CreateTexture(nil, "ARTWORK")
	f.header:SetTexture("Interface\\DialogFrame\\UI-DialogBox-Header")
	f.header:SetSize(300, 64)
	f.header:SetPoint("TOP", 0, 12)
	f.title = f:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	f.title:SetText(title)

	f.close = CreateFrame("Button", nil, f, "UIPanelCloseButton")
	f.close:SetPoint("TOPRIGHT", -3, -3)

	ns.ApplyBackdrop(f)
	return f
end

function ns.SetFont(fontString, delta)
	local path, _, flags = GameFontNormal:GetFont()
	fontString:SetFont(path, ns.db.fontSize + (delta or 0), flags)
end

function ns.Color(key)
	local c = ns.db.colors[key]
	return c[1], c[2], c[3]
end

-- The item tooltip used everywhere in the addon: the game's own, then how the item is made,
-- what you and your other characters hold, and where it comes from; next to it the small
-- map of that place. The caller adds its own hint lines and calls GameTooltip:Show().
function ns.ItemTooltip(owner, id, anchor, x, y)
	GameTooltip:SetOwner(owner, anchor or "ANCHOR_RIGHT", x or 0, y or 0)
	ns.ownTooltip = true -- the hook on every item tooltip (Core.lua) would add its lines too
	GameTooltip:SetHyperlink(ns.GetItem(id).link)
	ns.ownTooltip = nil
	ns.Recipes.AddTooltipLines(GameTooltip, id)
	GameTooltip:AddLine(" ")
	local bags, bank, warband, total = ns.GetCounts(id)
	if total > 0 then
		GameTooltip:AddLine(("You have %d  (bags %d, bank %d)"):format(total, bags, bank + warband), 1, 1, 1)
	end
	ns.Alts.AddTooltipLines(GameTooltip, id)
	local source = ns.Wiki.Source(id)
	if source then GameTooltip:AddLine("From: " .. source, 0.6, 0.8, 1, true) end
	ns.MapPreview.For(owner, { kind = "item", id = id })
end

-- Makes a frame a handle that is dragged sideways. start() runs when the drag begins and
-- moved(dx) on every frame of it; dx is how far the mouse has gone since, in the handle's units.
function ns.DragHandle(handle, tip, start, moved)
	handle:EnableMouse(true)
	local line = handle:CreateTexture(nil, "OVERLAY")
	line:SetColorTexture(1, 0.82, 0, 0.3)
	line:SetWidth(1)
	line:SetPoint("TOP")
	line:SetPoint("BOTTOM")
	handle:SetScript("OnEnter", function(self)
		SetCursor("UI_RESIZE_CURSOR")
		GameTooltip:SetOwner(self, "ANCHOR_TOP")
		GameTooltip:SetText(tip)
		GameTooltip:Show()
	end)
	handle:SetScript("OnLeave", function()
		ResetCursor()
		GameTooltip:Hide()
	end)
	handle:SetScript("OnMouseDown", function(self)
		local scale = self:GetEffectiveScale()
		local from = GetCursorPosition() / scale
		start()
		self:SetScript("OnUpdate", function() moved(GetCursorPosition() / scale - from) end)
	end)
	handle:SetScript("OnMouseUp", function(self) self:SetScript("OnUpdate", nil) end)
end

-- A handle on the left edge of a column caption: columns are laid out from the right, so
-- that is the edge that moves. set(width) gets the width the drag asks for.
function ns.ColumnGrip(caption, set)
	local grip, from = CreateFrame("Frame", nil, caption), 0
	grip:SetPoint("TOPLEFT", -5, 2)
	grip:SetPoint("BOTTOMRIGHT", caption, "BOTTOMLEFT", 2, -2)
	ns.DragHandle(grip, "Drag to resize the column", function() from = caption:GetWidth() end,
		function(dx) set(math.max(16, math.min(400, from - dx))) end)
	return grip
end

---------------------------------------------------------------------------
-- Autocomplete
-- opts.search(text) -> { {id, name, quality, info?}, ... }
-- opts.onPick(result)          a suggestion was chosen (Enter, Tab or click)
-- opts.onText(text)            Enter with nothing to pick (or Shift+Enter)
-- opts.above                   open the list above the box instead of below
---------------------------------------------------------------------------

local MAX_ROWS, ROW_H = 8, 20
local Autocomplete = {}
Autocomplete.__index = Autocomplete

local function CreateSuggestion(ac, i)
	local b = CreateFrame("Button", nil, ac.list)
	b:SetHeight(ROW_H)
	b:SetPoint("TOPLEFT", 6, -6 - (i - 1) * ROW_H)
	b:SetPoint("RIGHT", -6, 0)
	b.sel = b:CreateTexture(nil, "BACKGROUND")
	b.sel:SetAllPoints()
	b.sel:SetTexture(ns.Style.highlight)
	b.sel:SetBlendMode("ADD")
	b.icon = b:CreateTexture(nil, "ARTWORK")
	b.icon:SetSize(ROW_H - 4, ROW_H - 4)
	b.icon:SetPoint("LEFT", 2, 0)
	b.info = b:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
	b.info:SetPoint("RIGHT", -4, 0)
	b.text = b:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	b.text:SetPoint("LEFT", b.icon, "RIGHT", 5, 0)
	b.text:SetPoint("RIGHT", b.info, "LEFT", -4, 0)
	b.text:SetJustifyH("LEFT")
	b.text:SetWordWrap(false)
	b:SetScript("OnClick", function() ac:Pick(ac.offset + i) end)
	b:SetScript("OnEnter", function(self)
		local id = ac.results[ac.offset + i].id
		ac.index = ac.offset + i
		ac:Highlight()
		ns.ItemTooltip(self, id, "ANCHOR_RIGHT", 8, 0)
		GameTooltip:Show()
	end)
	b:SetScript("OnLeave", ns.HideTips)
	return b
end

function Autocomplete:Highlight()
	for i, b in ipairs(self.buttons) do b.sel:SetShown(self.offset + i == self.index) end
end

-- Draws the visible window (offset+1 .. offset+MAX_ROWS) of the result list.
function Autocomplete:Render()
	local results = self.results
	for i = 1, MAX_ROWS do
		local r, b = results[self.offset + i], self.buttons[i] or CreateSuggestion(self, i)
		self.buttons[i] = b
		b:SetShown(r ~= nil)
		if r then
			b.icon:SetTexture(C_Item.GetItemIconByID(r.id))
			b.text:SetText("|c" .. ns.QualityHex(r.quality) .. r.name .. "|r")
			b.info:SetText(r.info or "")
		end
	end
	local more = #results > MAX_ROWS
	self.list.count:SetShown(more)
	if more then
		self.list.count:SetText(("%d-%d of %d  (scroll for more)"):format(
			self.offset + 1, math.min(self.offset + MAX_ROWS, #results), #results))
	end
	self.list:SetHeight(math.min(#results, MAX_ROWS) * ROW_H + (more and 26 or 12))
	self:Highlight()
end

function Autocomplete:Scroll(delta)
	self.offset = math.max(0, math.min(self.offset + delta, #self.results - MAX_ROWS))
	self:Render()
end

function Autocomplete:Show(results)
	self.results = results
	self.index = #results > 0 and 1 or 0
	self.offset = 0
	if #results == 0 then return self.list:Hide() end
	self.list:SetWidth(math.max(self.box:GetWidth() + 20, 300))
	self:Render()
	self.list:Show()
end

function Autocomplete:Update()
	local text = self.box:GetText()
	if self.forced and text == self.forced.name then
		return self:Show({ self.forced })
	end
	self.forced = nil
	self:Show(self.opts.search(text))
end

-- Used by shift-click linking: fill the box with exactly this item.
function Autocomplete:Force(id)
	local item = ns.GetItem(id)
	self.forced = { id = id, name = item.name, quality = item.quality }
	self.box:SetText(item.name)
	self.box:SetCursorPosition(#item.name)
	self:Update()
end

function Autocomplete:Pick(i)
	local r = self.results[i or self.index]
	if not r then return false end
	self.forced = nil
	self.list:Hide()
	self.opts.onPick(r)
	return true
end

function ns.AttachAutocomplete(box, opts)
	local ac = setmetatable({ box = box, opts = opts, results = {}, buttons = {}, index = 0, offset = 0 }, Autocomplete)
	box.ac = ac

	local list = CreateFrame("Frame", nil, box, "BackdropTemplate")
	ac.list = list
	list:SetFrameStrata("FULLSCREEN_DIALOG")
	list:SetClampedToScreen(true)
	list:SetBackdrop(SLIM_BACKDROP)
	list:SetBackdropColor(0, 0, 0, 1)
	if opts.above then
		list:SetPoint("BOTTOMLEFT", box, "TOPLEFT", -8, 2)
	else
		list:SetPoint("TOPLEFT", box, "BOTTOMLEFT", -8, -2)
	end
	list.count = list:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
	list.count:SetPoint("BOTTOM", 0, 7)
	list:EnableMouseWheel(true)
	list:SetScript("OnMouseWheel", function(_, delta) ac:Scroll(-delta * 3) end)
	list:Hide()

	box:SetAutoFocus(false)
	box:HookScript("OnTextChanged", function() ac:Update() end)
	box:HookScript("OnEditFocusGained", function(self)
		ns.linkBox = self
		ac:Update()
	end)
	box:HookScript("OnEditFocusLost", function(self)
		self.focusLostAt = GetTime()
		list:Hide()
	end)
	box:SetScript("OnArrowPressed", function(_, key)
		local n = #ac.results
		if n == 0 or not list:IsShown() then return end
		if key == "DOWN" then
			ac.index = math.min(ac.index + 1, n)
		elseif key == "UP" then
			ac.index = math.max(ac.index - 1, 1)
		end
		-- keep the highlighted row inside the visible window
		ac.offset = math.max(math.min(ac.offset, ac.index - 1), ac.index - MAX_ROWS)
		ac:Render()
	end)
	box:SetScript("OnTabPressed", function() ac:Pick() end)
	box:SetScript("OnEnterPressed", function(self)
		if IsShiftKeyDown() or not (list:IsShown() and ac:Pick()) then
			if opts.onText then opts.onText(self:GetText()) end
		end
	end)
	box:SetScript("OnEscapePressed", function(self)
		if list:IsShown() then list:Hide() else self:ClearFocus() end
	end)
	return ac
end
