local _, ns = ...

-- The tab strip and the wiki view: a result list on the left, a page on the right.
-- Pages are plain line data from Wiki/Pages.lua; this file only draws and navigates.

local Browser = {}
ns.Browser = Browser

local frame, goalsPanel, panel
local tabButtons = {}
local search, filterButton, listFrame, listMessage
local title, backButton, addButton, pageScroll, pageContent, pageMessage
local listRows, pageRows = {}, {}

local tab = "goals"
local entries, listOffset = {}, 0
local current, page -- { kind, id } and its built page
local history = {}

local LIST_ROW = 18

local function TabInfo(key)
	for _, t in ipairs(ns.Wiki.TABS) do
		if t.key == key then return t end
	end
end

---------------------------------------------------------------------------
-- Result list (virtual: only the visible rows exist)
---------------------------------------------------------------------------

local function CreateListRow(i)
	local row = CreateFrame("Button", nil, listFrame)
	row:SetHeight(LIST_ROW)
	row:SetPoint("TOPLEFT", 0, -(i - 1) * LIST_ROW)
	row:SetPoint("RIGHT")
	row:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
	row.sel = row:CreateTexture(nil, "BACKGROUND")
	row.sel:SetAllPoints()
	row.sel:SetColorTexture(1, 0.82, 0, 0.18)
	row.right = row:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
	row.right:SetPoint("RIGHT", -2, 0)
	row.text = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	row.text:SetPoint("LEFT", 3, 0)
	row.text:SetPoint("RIGHT", row.right, "LEFT", -4, 0)
	row.text:SetJustifyH("LEFT")
	row.text:SetWordWrap(false)
	row:SetScript("OnClick", function(self)
		Browser.Open(self.entry.kind, self.entry.id, true)
	end)
	row:SetScript("OnEnter", function(self)
		if not self.entry.item then return end
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		GameTooltip:SetHyperlink("item:" .. self.entry.item)
		ns.Recipes.AddTooltipLines(GameTooltip, self.entry.item)
		GameTooltip:Show()
	end)
	row:SetScript("OnLeave", GameTooltip_Hide)
	listRows[i] = row
	return row
end

local function DrawList()
	local visible = math.max(1, math.floor(listFrame:GetHeight() / LIST_ROW))
	listOffset = math.max(0, math.min(listOffset, #entries - visible))
	for i = 1, math.max(visible, #listRows) do
		local entry = i <= visible and entries[listOffset + i]
		local row = listRows[i] or (entry and CreateListRow(i))
		if row then
			row:SetShown(entry and true or false)
			if entry then
				row.entry = entry
				row.text:SetText(entry.text)
				row.right:SetText(entry.right or "")
				row.sel:SetShown(current ~= nil and current.kind == entry.kind and current.id == entry.id)
			end
		end
	end
end

local function UpdateList()
	local message
	entries, message = ns.Wiki.List(tab, search:GetText())
	if #entries == 0 and not message then
		message = #ns.Normalize(search:GetText()) >= 2 and "Nothing found." or (TabInfo(tab).hint or "")
	end
	listMessage:SetText(#entries == 0 and message or "")
	DrawList()
end

---------------------------------------------------------------------------
-- Page
---------------------------------------------------------------------------

local function LineTooltip(row)
	local line = row.line
	if line.item then
		GameTooltip:SetOwner(row, "ANCHOR_RIGHT")
		GameTooltip:SetHyperlink(ns.GetItem(line.item).link)
		ns.Recipes.AddTooltipLines(GameTooltip, line.item)
		GameTooltip:AddLine(" ")
		GameTooltip:AddLine("Click to open. Right-click to add to your goal. Shift-click to link.", 0.5, 0.5, 0.5, true)
		GameTooltip:Show()
	elseif line.area then
		GameTooltip:SetOwner(row, "ANCHOR_RIGHT")
		GameTooltip:SetText("Click to open the map and place a pin here.", 1, 1, 1)
		GameTooltip:Show()
	end
end

local function AddToGoal(itemId)
	local goal = ns.SelectedGoal()
	ns.AddItem(goal, itemId, 1)
	ns.Print(("Added |c%s[%s]|r to |cffffd100%s|r."):format(
		ns.QualityHex(ns.GetItem(itemId).quality), ns.GetItem(itemId).name, goal.title))
	ns.Refresh()
end

local function CreatePageRow(i)
	local row = CreateFrame("Button", nil, pageContent)
	row:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	row:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
	row.right = row:CreateFontString(nil, "OVERLAY")
	row.right:SetPoint("TOPRIGHT", -2, -1)
	row.right:SetJustifyH("RIGHT")
	row.text = row:CreateFontString(nil, "OVERLAY")
	row.text:SetJustifyH("LEFT")
	row.text:SetJustifyV("TOP")
	row:SetScript("OnClick", function(self, button)
		local line = self.line
		if line.item and button == "RightButton" then
			AddToGoal(line.item)
		elseif line.item and IsModifiedClick("CHATLINK") then
			local item = ns.GetItem(line.item)
			if not item.pending then HandleModifiedItemClick(item.link) end
		elseif line.kind then
			Browser.Open(line.kind, line.id)
		elseif line.area then
			ns.Q.ShowOnMap(line.area, line.x, line.y)
		end
	end)
	row:SetScript("OnEnter", LineTooltip)
	row:SetScript("OnLeave", GameTooltip_Hide)
	pageRows[i] = row
	return row
end

local function DrawPage()
	local width = math.max(pageScroll:GetWidth(), 1)
	pageContent:SetWidth(width)
	local lines = page and page.lines or {}
	local y = 0
	for i, line in ipairs(lines) do
		local row = pageRows[i] or CreatePageRow(i)
		row.line = line
		local indent = (line.indent or 0) * 12
		ns.SetFont(row.text, line.head and 1 or 0)
		ns.SetFont(row.right, -1)
		row.text:ClearAllPoints()
		row.text:SetPoint("TOPLEFT", 2 + indent, -1)
		row.right:SetText(line.right or "")
		row.right:SetTextColor(0.6, 0.6, 0.6)
		row.text:SetWidth(math.max(40, width - indent - 6 - (line.right and row.right:GetStringWidth() + 8 or 0)))
		row.text:SetWordWrap(line.wrap and true or false)
		local prefix = line.area and "|cff80ff80(map)|r " or ""
		row.text:SetText(prefix .. line.text)
		if line.head then
			row.text:SetTextColor(ns.Color("title"))
		elseif line.kind and not line.item then
			row.text:SetTextColor(0.55, 0.8, 1)
		else
			row.text:SetTextColor(ns.Color("text"))
		end
		local clickable = line.kind or line.area or line.item
		row:EnableMouse(clickable and true or false)
		local h = math.max(ns.db.fontSize + 5, line.wrap and (row.text:GetStringHeight() + 4) or 0)
		row:ClearAllPoints()
		row:SetPoint("TOPLEFT", 0, -y)
		row:SetSize(width, h)
		row:Show()
		y = y + h
	end
	for i = #lines + 1, #pageRows do pageRows[i]:Hide() end
	pageContent:SetHeight(math.max(y, 1))

	title:SetText(page and page.title or "")
	backButton:SetShown(#history > 0)
	addButton:SetShown(page ~= nil and (page.itemId or page.questId) and true or false)
	local hint = ""
	if not page then
		local info = TabInfo(tab)
		hint = info.needsQuestie and not ns.Q.Available()
			and "Install the QuestieDB addon (its Forever version) to use this tab."
			or "Pick an entry on the left."
	end
	pageMessage:SetText(hint)
end

local function BuildPage()
	page = current and ns.Wiki.Page(current.kind, current.id) or nil
	DrawPage()
end

-- fresh: opened from the result list, so the back history starts over.
function Browser.Open(kind, id, fresh)
	if fresh then
		history = {}
	elseif current and not (current.kind == kind and current.id == id) then
		history[#history + 1] = current
	end
	current = { kind = kind, id = id }
	BuildPage()
	pageScroll:SetVerticalScroll(0)
	DrawList()
end

-- Jump to a page from elsewhere in the addon (goal list, tracker).
function Browser.Show(kind, id)
	frame:Show()
	local target = (kind == "npc" or kind == "object") and "npc" or kind
	if tab ~= target then Browser.Select(target) end
	Browser.Open(kind, id, true)
end

-- Data finished loading or game state changed: redraw what is on screen.
function Browser.Refresh()
	if not panel or not panel:IsShown() then return end
	UpdateList()
	BuildPage()
end

---------------------------------------------------------------------------
-- Tabs and layout
---------------------------------------------------------------------------

function Browser.Select(key)
	tab = key
	ns.char.tab = key
	for _, b in ipairs(tabButtons) do
		if b.key == key then b:LockHighlight() else b:UnlockHighlight() end
	end
	goalsPanel:SetShown(key == "goals")
	panel:SetShown(key ~= "goals")
	if key == "goals" then
		ns.UI.Layout()
		return
	end
	current, page, history, listOffset = nil, nil, {}, 0
	filterButton:SetShown(key == "item")
	search:SetText("")
	Browser.Layout()
	UpdateList()
	BuildPage()
end

function Browser.Tab()
	return tab
end

function Browser.Layout()
	local width = frame:GetWidth()
	local tabWidth = (width - 32 - (#tabButtons - 1) * 2) / #tabButtons
	for i, b in ipairs(tabButtons) do
		b:SetWidth(tabWidth)
		b:ClearAllPoints()
		b:SetPoint("TOPLEFT", 16 + (i - 1) * (tabWidth + 2), -28)
	end
	if not panel:IsShown() then return end
	local listWidth = math.max(170, math.floor(width * 0.34))
	search:SetWidth(listWidth - 10)
	listFrame:ClearAllPoints()
	listFrame:SetPoint("TOPLEFT", 16, -84)
	listFrame:SetPoint("BOTTOMLEFT", 16, tab == "item" and 44 or 18)
	listFrame:SetWidth(listWidth)
	filterButton:SetWidth(listWidth)
	filterButton:SetText("Filter: " .. ns.ItemDB.FilterLabel())
	pageScroll:ClearAllPoints()
	pageScroll:SetPoint("TOPLEFT", 16 + listWidth + 12, -84)
	pageScroll:SetPoint("BOTTOMRIGHT", -32, 18)
	DrawList()
	DrawPage()
end

function Browser.Init(mainFrame, goals)
	frame, goalsPanel = mainFrame, goals

	for i, info in ipairs(ns.Wiki.TABS) do
		local b = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
		b:SetHeight(22)
		b:SetText(info.label)
		b.key = info.key
		b:SetScript("OnClick", function(self)
			PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB)
			Browser.Select(self.key)
		end)
		tabButtons[i] = b
	end

	panel = CreateFrame("Frame", nil, frame)
	panel:SetAllPoints()
	panel:Hide()

	search = CreateFrame("EditBox", nil, panel, "SearchBoxTemplate")
	search:SetHeight(20)
	search:SetPoint("TOPLEFT", 22, -58)
	search:SetAutoFocus(false)
	search:HookScript("OnTextChanged", function()
		listOffset = 0
		UpdateList()
	end)
	-- shift-clicked items are looked up here
	search.ac = { Force = function(_, id) Browser.Show("item", id) end }
	search:HookScript("OnEditFocusGained", function(self) ns.linkBox = self end)
	search:HookScript("OnEditFocusLost", function(self) self.focusLostAt = GetTime() end)

	listFrame = CreateFrame("Frame", nil, panel)
	listFrame:EnableMouseWheel(true)
	listFrame:SetScript("OnMouseWheel", function(_, delta)
		listOffset = listOffset - delta * 3
		DrawList()
	end)
	local listBg = listFrame:CreateTexture(nil, "BACKGROUND")
	listBg:SetAllPoints()
	listBg:SetColorTexture(0, 0, 0, 0.25)
	listMessage = listFrame:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
	listMessage:SetPoint("TOPLEFT", 6, -8)
	listMessage:SetPoint("RIGHT", -6, 0)
	listMessage:SetJustifyH("LEFT")

	filterButton = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
	filterButton:SetHeight(20)
	filterButton:SetPoint("BOTTOMLEFT", 16, 18)
	filterButton:SetScript("OnClick", function(self)
		ns.UI.FilterMenu(self, function()
			Browser.Layout()
			UpdateList()
		end)
	end)

	backButton = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
	backButton:SetSize(54, 20)
	backButton:SetPoint("TOPRIGHT", -16, -58)
	backButton:SetText("Back")
	backButton:SetScript("OnClick", function()
		current = table.remove(history)
		BuildPage()
		pageScroll:SetVerticalScroll(0)
		DrawList()
	end)

	addButton = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
	addButton:SetSize(96, 20)
	addButton:SetPoint("TOPRIGHT", -74, -58)
	addButton:SetText("Add to goal")
	addButton:SetScript("OnClick", function()
		if page.itemId then
			AddToGoal(page.itemId)
		elseif page.questId then
			local goal = ns.SelectedGoal()
			ns.AddNote(goal, "Quest: " .. (ns.Q.Quest.name(page.questId) or page.questId))
			ns.Print("Added the quest to |cffffd100" .. goal.title .. "|r as a note.")
			ns.Refresh()
		end
	end)

	pageScroll = CreateFrame("ScrollFrame", nil, panel, "ScrollFrameTemplate")
	if pageScroll.ScrollBar then
		pageScroll.ScrollBar:ClearAllPoints()
		pageScroll.ScrollBar:SetPoint("TOPLEFT", pageScroll, "TOPRIGHT", 5, 0)
		pageScroll.ScrollBar:SetPoint("BOTTOMLEFT", pageScroll, "BOTTOMRIGHT", 5, 0)
		pageScroll.ScrollBar:SetHideIfUnscrollable(true)
	end
	pageContent = CreateFrame("Frame", nil, pageScroll)
	pageContent:SetSize(1, 1)
	pageScroll:SetScrollChild(pageContent)

	title = panel:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	title:SetPoint("BOTTOMLEFT", pageScroll, "TOPLEFT", 2, 8)
	title:SetPoint("RIGHT", addButton, "LEFT", -8, 0)
	title:SetJustifyH("LEFT")
	title:SetWordWrap(false)

	pageMessage = panel:CreateFontString(nil, "OVERLAY", "GameFontDisable")
	pageMessage:SetPoint("TOPLEFT", pageScroll, "TOPLEFT", 8, -12)
	pageMessage:SetPoint("RIGHT", pageScroll, "RIGHT", -8, 0)
	pageMessage:SetJustifyH("LEFT")

	frame:HookScript("OnSizeChanged", Browser.Layout)
	Browser.Layout()
	local saved = ns.char.tab
	Browser.Select(TabInfo(saved) and saved or "goals")
end
