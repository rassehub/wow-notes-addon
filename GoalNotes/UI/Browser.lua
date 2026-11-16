local _, ns = ...

-- The tab strip and the wiki view: a result list on the left, a page on the right.
-- Pages are plain line data from Wiki/Pages.lua; this file only draws and navigates.

local Browser = {}
ns.Browser = Browser

local frame, goalsPanel, panel
local tabButtons = {}
local listHeader, listTotal
local sourceButtons = {} -- the one-click source filters above the Items list, by ItemDB.SOURCES key
local search, filterIcon, sortIcon, summary, clearButton, minBox, maxBox, listFrame, listMessage, splitter
local title, backButton, addButton, compareButton, pageScroll, pageContent, pageMessage
local listRows, pageRows = {}, {}

local tab = "goals"
local entries, listOffset = {}, 0
local current, page -- { kind, id } and its built page
local history = {} -- pages to go back to: { kind, id, title }
local showAll = {} -- capped lists of the open page that were expanded ("... and 12 more")
local saved = {} -- per tab: search text, page, history and scroll, so switching tabs loses nothing


local function TabInfo(key)
	for _, t in ipairs(ns.Wiki.TABS) do
		if t.key == key then return t end
	end
end

---------------------------------------------------------------------------
-- Result list (virtual: only the visible rows exist)
---------------------------------------------------------------------------

local NOUNS = { item = "items", quest = "quests", profession = "recipes", npc = "NPCs", dungeon = "dungeons and raids" }

local function RowHeight()
	return ns.db.compactList and 18 or 36
end

local DrawList

local function Width(column)
	return ns.Wiki.ColumnWidth(tab, column)
end

local function ListChanged()
	listOffset = 0
	Browser.Layout()
	Browser.Refresh()
end

local function ShowListTooltip(self)
	local entry = self.entry
	if entry.quest then
		local Q, quest = ns.Q, entry.quest
		local level, required = Q.Quest.questLevel(quest) or 0, Q.Quest.requiredLevel(quest) or 0
		local state, xp = Q.QuestState(quest), Q.QuestXP(quest)
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		GameTooltip:SetText(Q.Quest.name(quest))
		GameTooltip:AddLine(Q.QuestTypeLabel(Q.QuestType(quest)) .. " quest" .. (level > 0 and (", level " .. level) or "")
			.. (required > 0 and (", requires level " .. required) or ""), 1, 1, 1)
		local zone = Q.ZoneName(Q.Quest.zoneOrSort(quest))
		if zone then GameTooltip:AddLine(zone, 1, 1, 1) end
		if xp then GameTooltip:AddLine(xp .. " experience", 1, 1, 1) end
		for _, item in ipairs(Q.LootReady() and Q.rewards[quest] or {}) do
			GameTooltip:AddLine("Reward: " .. (ns.ItemDB.GetName(item) or ("item " .. item)), 0.6, 0.8, 1)
		end
		if state then GameTooltip:AddLine(state == "done" and "You have done this quest." or "In your quest log.", 0.25, 1, 0.25) end
		GameTooltip:Show()
	elseif entry.item then
		ns.ItemTooltip(self, entry.item)
		GameTooltip:Show()
	elseif entry.kind == "npc" then
		ns.MapPreview.For(self, entry)
	end
end

local function CreateListRow(i)
	local row = CreateFrame("Button", nil, listFrame)
	row:SetHighlightTexture(ns.Style.highlight, "ADD")
	-- every row is a dark card, like the game's own journals
	row.bg = row:CreateTexture(nil, "BACKGROUND")
	row.bg:SetPoint("TOPLEFT", 0, -1)
	row.bg:SetPoint("BOTTOMRIGHT", 0, 1)
	row.bg:SetColorTexture(unpack(ns.Style.card))
	row.sel = row:CreateTexture(nil, "BORDER")
	row.sel:SetAllPoints(row.bg)
	row.sel:SetColorTexture(unpack(ns.Style.selected))
	row.icon = row:CreateTexture(nil, "ARTWORK")
	row.icon:SetPoint("LEFT", 3, 0)
	row.right = row:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
	row.text = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	row.text:SetJustifyH("LEFT")
	row.text:SetWordWrap(false)
	row.sub = row:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
	row.sub:SetJustifyH("LEFT")
	row.sub:SetWordWrap(false)
	row.cells = {} -- one font string per column, made when first needed
	row:SetScript("OnClick", function(self)
		if not self.entry.caption then Browser.Open(self.entry.kind, self.entry.id, true) end
	end)
	row:SetScript("OnEnter", ShowListTooltip)
	row:SetScript("OnLeave", ns.HideTips)
	listRows[i] = row
	return row
end

-- Lays a row's column cells out right to left, on its first line; returns the room they take.
local function PlaceCells(row, columns, entry, y)
	local x = 2
	for i = #columns, 1, -1 do
		local column = columns[i]
		local cell = row.cells[i]
		if not cell then
			cell = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
			cell:SetWordWrap(false)
			cell:SetJustifyH("RIGHT")
			row.cells[i] = cell
		end
		cell:ClearAllPoints()
		cell:SetPoint("TOPRIGHT", row, "TOPRIGHT", -x, y)
		cell:SetWidth(Width(column))
		cell:SetText(entry.cells[column[1]] or "")
		cell:SetTextColor(0.8, 0.8, 0.8)
		cell:Show()
		-- coloured numbers (recipe skill) stand on a black plate that hugs the text
		local plate = column.badge and cell:GetText() ~= ""
		if plate and not cell.plate then
			cell.plate = row:CreateTexture(nil, "ARTWORK")
			cell.plate:SetColorTexture(unpack(ns.Style.plate))
			cell.plate:SetPoint("TOPRIGHT", cell, "TOPRIGHT", 3, 2)
		end
		if cell.plate then
			cell.plate:SetShown(plate)
			cell.plate:SetSize(cell:GetStringWidth() + 6, cell:GetStringHeight() + 4)
		end
		x = x + Width(column) + 4
	end
	for i = #columns + 1, #row.cells do
		row.cells[i]:Hide()
		if row.cells[i].plate then row.cells[i].plate:Hide() end
	end
	return x
end

-- A caption of the header row. Left-click sorts by it, right-click opens the view menu.
-- A column's caption (it has b.column) is dragged by its left edge to resize the column.
local function HeaderButton(resizable)
	local b = CreateFrame("Button", nil, listHeader)
	b:SetHeight(14)
	b:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	b.text = b:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	b.text:SetAllPoints()
	b.text:SetWordWrap(false)
	b.arrow = b:CreateTexture(nil, "OVERLAY")
	b.arrow:SetTexture("Interface\\Buttons\\UI-SortArrow")
	b.arrow:SetSize(8, 8)
	b.arrow:SetPoint("LEFT", b, "LEFT", -9, 0)
	b:SetScript("OnClick", function(self, button)
		if button == "RightButton" then
			ns.Filters.ViewMenu(tab, self, ListChanged)
		elseif self.key then
			ns.Wiki.SortBy(tab, self.key)
			ListChanged()
		end
	end)
	b:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP")
		GameTooltip:SetText(self.tip or "")
		GameTooltip:AddLine((self.key and "Click to sort by this, again to reverse. " or "") .. "Right-click to choose the columns.", 1, 1, 1, true)
		GameTooltip:Show()
	end)
	b:SetScript("OnLeave", GameTooltip_Hide)
	if resizable then
		ns.ColumnGrip(b, function(width)
			ns.Wiki.ColumnWidth(tab, b.column, width)
			DrawList()
		end)
	end
	return b
end

-- key: what the caption sorts by (nil: nothing). Shows the arrow when the list is sorted by it.
local function SetHeader(b, text, key, tip, justify)
	local sortKey, chosen = ns.Wiki.SortKey(tab)
	local active = key ~= nil and chosen and sortKey == key
	b.key, b.tip = key, tip
	b.text:SetJustifyH(justify)
	b.text:SetText(text)
	if active then b.text:SetTextColor(1, 1, 1) else b.text:SetTextColor(1, 0.82, 0) end
	b.arrow:SetShown(active)
	if ns.db.sortDesc[tab] then b.arrow:SetTexCoord(0, 0.5625, 0, 1) else b.arrow:SetTexCoord(0, 0.5625, 1, 0) end
	b:Show()
end

function DrawList()
	local columns = ns.Wiki.Columns(tab)
	local compact = ns.db.compactList
	local rowH = RowHeight()

	-- the caption row: how many are listed (click: sort by name), then the column names
	local shown = 0
	for _, entry in ipairs(entries) do
		if not entry.caption then shown = shown + 1 end
	end
	local noun = entries[1] and entries[1].kind == "profession" and "professions" or NOUNS[tab] or ""
	local count = (listTotal and listTotal > shown) and (shown .. " of " .. listTotal) or tostring(shown)
	local x = 2
	for i = #columns, 1, -1 do
		local column = columns[i]
		local b = listHeader.cells[i] or HeaderButton(true)
		listHeader.cells[i] = b
		b.column = column
		b:ClearAllPoints()
		b:SetPoint("RIGHT", listHeader, "RIGHT", -x, 0)
		b:SetWidth(Width(column))
		SetHeader(b, column[2], column[5] and column[1] or nil, column[2], "RIGHT")
		x = x + Width(column) + 4
	end
	for i = #columns + 1, #listHeader.cells do listHeader.cells[i]:Hide() end
	listHeader.name:ClearAllPoints()
	listHeader.name:SetPoint("LEFT", 3, 0)
	listHeader.name:SetPoint("RIGHT", listHeader, "RIGHT", -x, 0)
	SetHeader(listHeader.name, shown > 0 and (count .. " " .. noun) or "Name", ns.Wiki.HasSort(tab) and "name" or nil, "Name", "LEFT")
	listHeader.name.arrow:ClearAllPoints()
	listHeader.name.arrow:SetPoint("LEFT", listHeader.name.text, "LEFT", listHeader.name.text:GetStringWidth() + 3, 0)

	local visible = math.max(1, math.floor(listFrame:GetHeight() / rowH))
	listOffset = math.max(0, math.min(listOffset, #entries - visible))
	for i = 1, math.max(visible, #listRows) do
		local entry = i <= visible and entries[listOffset + i]
		local row = listRows[i] or (entry and CreateListRow(i))
		if row then
			row:SetShown(entry and true or false)
			if entry then
				row.entry = entry
				row:ClearAllPoints()
				row:SetPoint("TOPLEFT", 0, -(i - 1) * rowH)
				row:SetPoint("RIGHT")
				row:SetHeight(rowH)
				-- two-line rows: icon, name, and under it the facts worth knowing at a glance
				local thick = not compact and not entry.caption
				local iconSize = thick and rowH - 8 or 0
				row.icon:SetShown(thick and (entry.icon or entry.atlas) and true or false)
				row.icon:SetSize(math.max(iconSize, 1), math.max(iconSize, 1))
				if thick and entry.atlas then
					row.icon:SetAtlas(entry.atlas)
				elseif thick then
					row.icon:SetTexture(entry.icon)
					row.icon:SetTexCoord(0, 1, 0, 1) -- a row reused after an atlas icon keeps its cropping otherwise
				end
				local left = thick and (iconSize + 8) or 3
				local name = entry.text
				if compact and entry.atlas then name = "|A:" .. entry.atlas .. ":14:14|a " .. name end
				row.text:SetText(name)
				if entry.caption then row.text:SetTextColor(1, 0.82, 0) else row.text:SetTextColor(1, 1, 1) end
				row.right:SetText(not entry.cells and entry.right or "")
				row.right:ClearAllPoints()
				row.right:SetPoint("TOPRIGHT", -2, thick and -5 or -3)
				local room = entry.cells and PlaceCells(row, columns, entry, thick and -5 or -3)
					or PlaceCells(row, {}, entry) + (entry.right and row.right:GetStringWidth() + 4 or 0)
				row.text:ClearAllPoints()
				row.text:SetPoint("TOPLEFT", left, thick and -5 or -3)
				row.text:SetPoint("RIGHT", row, "RIGHT", -room, 0)
				row.sub:SetShown(thick)
				row.sub:ClearAllPoints()
				row.sub:SetPoint("BOTTOMLEFT", left, 5)
				row.sub:SetPoint("RIGHT", row, "RIGHT", -3, 0)
				row.sub:SetText(entry.sub or "")
				row.bg:SetShown(not entry.caption)
				row.sel:SetShown(current ~= nil and current.kind == entry.kind and current.id == entry.id)
			end
		end
	end
end

local function UpdateList()
	local message
	entries, message, listTotal = ns.Wiki.List(tab, search:GetText())
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
		ns.ItemTooltip(row, line.item)
		GameTooltip:AddLine("Click to open. Right-click to add to your goal. Shift-click to link.", 0.5, 0.5, 0.5, true)
		GameTooltip:Show()
		return
	elseif line.area or line.uiMap then
		GameTooltip:SetOwner(row, "ANCHOR_RIGHT")
		GameTooltip:SetText(line.area and "Click to open the map and place a pin here." or "Click to open this zone's map.", 1, 1, 1)
		GameTooltip:Show()
	elseif line.kind == "npc" or line.kind == "object" then
		GameTooltip:SetOwner(row, "ANCHOR_RIGHT")
		GameTooltip:SetText("Click to open its page.", 1, 1, 1)
		GameTooltip:Show()
	elseif line.kind == "quest" then
		GameTooltip:SetOwner(row, "ANCHOR_RIGHT")
		GameTooltip:SetText("Click to open. Right-click to add to your goal.", 1, 1, 1)
		GameTooltip:Show()
	elseif line.head or line.more then
		GameTooltip:SetOwner(row, "ANCHOR_RIGHT")
		GameTooltip:SetText(line.more and "Click to show the whole list."
			or "Click to fold or unfold this section. Shift-click: every section.", 1, 1, 1)
		GameTooltip:Show()
	end
	ns.MapPreview.For(row, line) -- after the tooltip: the map hangs under it
end

-- goal: where to add; default the selected goal
local function AddToGoal(itemId, goal)
	goal = goal or ns.SelectedGoal()
	ns.AddItem(goal, itemId, 1)
	ns.Print(("Added |c%s[%s]|r to " .. ns.Hex.gold .. "%s|r."):format(
		ns.QualityHex(ns.GetItem(itemId).quality), ns.GetItem(itemId).name, goal.title))
	ns.Refresh()
end

local function AddQuestToGoal(quest, goal)
	goal = goal or ns.SelectedGoal()
	local entry = ns.AddQuest(goal, quest)
	if not entry then return ns.Print("That quest is already on " .. goal.title .. ".") end
	ns.Print("Added the quest to " .. ns.Hex.gold .. goal.title .. "|r"
		.. (entry.chain and ", with the quests that lead to it as steps." or ". It ticks itself off when you turn it in."))
	ns.Refresh()
end

local DrawPage

local function CreatePageRow(i)
	local row = CreateFrame("Button", nil, pageContent)
	row:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	row:SetHighlightTexture(ns.Style.highlight, "ADD")
	row.right = row:CreateFontString(nil, "OVERLAY")
	row.right:SetPoint("TOPRIGHT", -2, -1)
	row.right:SetJustifyH("RIGHT")
	row.plate = row:CreateTexture(nil, "ARTWORK") -- black, behind right texts that are badges
	row.plate:SetColorTexture(unpack(ns.Style.plate))
	row.plate:SetPoint("TOPLEFT", row.right, -4, 2)
	row.plate:SetPoint("BOTTOMRIGHT", row.right, 4, -2)
	row.text = row:CreateFontString(nil, "OVERLAY")
	row.text:SetJustifyH("LEFT")
	row.text:SetJustifyV("TOP")
	row:SetScript("OnClick", function(self, button)
		local line = self.line
		if line.head then
			-- fold this section; with Shift every section of the page
			local key = current.kind .. ":" .. line.text
			local fold = not ns.db.folded[key] or nil
			for _, other in ipairs(IsShiftKeyDown() and page.lines or { line }) do
				if other.head then ns.db.folded[current.kind .. ":" .. other.text] = fold end
			end
			DrawPage()
		elseif line.more then
			showAll[line.more] = true
			Browser.Refresh()
		elseif line.toggle then
			ns.db[line.toggle] = not ns.db[line.toggle]
			Browser.Refresh()
		elseif line.item and button == "RightButton" then
			AddToGoal(line.item)
		elseif line.kind == "quest" and button == "RightButton" then
			AddQuestToGoal(line.id)
		elseif line.item and IsModifiedClick("CHATLINK") then
			local item = ns.GetItem(line.item)
			if not item.pending then HandleModifiedItemClick(item.link) end
		elseif line.kind then
			Browser.Open(line.kind, line.id)
		elseif line.area then
			ns.Q.ShowOnMap(line.area, line.x, line.y)
		elseif line.uiMap and not InCombatLockdown() then
			C_Map.OpenWorldMap(line.uiMap) -- with the nodes on it, if they are switched on
		end
	end)
	row:SetScript("OnEnter", LineTooltip)
	row:SetScript("OnLeave", ns.HideTips)
	pageRows[i] = row
	return row
end

function DrawPage()
	local width = math.max(pageScroll:GetWidth(), 1)
	pageContent:SetWidth(width)
	-- of a folded section only the caption is drawn
	local lines, hidden = {}, false
	for _, line in ipairs(page and page.lines or {}) do
		if line.head then hidden = ns.db.folded[current.kind .. ":" .. line.text] and true or false end
		if line.head or not hidden then lines[#lines + 1] = line end
	end
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
		row.plate:SetShown(line.badge and true or false)
		row.text:SetWidth(math.max(40, width - indent - 6 - (line.right and row.right:GetStringWidth() + 8 or 0)))
		row.text:SetWordWrap(line.wrap and true or false)
		local prefix = (line.area or line.uiMap) and ns.Hex.map .. "(map)|r " or ""
		if line.head then
			local sign = ns.db.folded[current.kind .. ":" .. line.text] and "Plus" or "Minus"
			prefix = "|TInterface\\Buttons\\UI-" .. sign .. "Button-Up:0|t "
		end
		row.text:SetText(prefix .. line.text)
		if line.head then
			row.text:SetTextColor(ns.Color("title"))
		elseif line.kind and not line.item then
			row.text:SetTextColor(0.55, 0.8, 1)
		else
			row.text:SetTextColor(ns.Color("text"))
		end
		local clickable = line.kind or line.area or line.uiMap or line.item or line.head or line.more or line.toggle
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
	local previous = history[#history]
	backButton:SetShown(previous ~= nil)
	if previous then
		-- say where Back goes; strip colour and icon codes, keep it short
		local name = previous.title:gsub("|T.-|t ?", ""):gsub("|c%x%x%x%x%x%x%x%x", ""):gsub("|r", "")
		if #name > 16 then name = name:sub(1, 15) .. "..." end
		backButton:SetText("< " .. name)
	end
	addButton:SetShown(page ~= nil and (page.itemId or page.questId) and true or false)
	compareButton:SetShown(page ~= nil and page.equippable and true or false)
	-- the title gets whatever room the visible buttons leave
	title:SetPoint("RIGHT", panel, "RIGHT", -(16 + (previous and 128 or 0) + (addButton:IsShown() and 92 or 0)
		+ (compareButton:IsShown() and 74 or 0)), 0)
	addButton:ClearAllPoints()
	addButton:SetPoint("TOPRIGHT", previous and -144 or -16, -58)
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
	page = current and ns.Wiki.Page(current.kind, current.id, showAll) or nil
	DrawPage()
end

-- fresh: opened from the result list, so the back history starts over.
function Browser.Open(kind, id, fresh)
	showAll = {}
	if fresh then
		history = {}
	elseif current and not (current.kind == kind and current.id == id) then
		current.title = page and page.title or ""
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
	if tab ~= "goals" then
		saved[tab] = { text = search:GetText(), current = current, history = history,
			offset = listOffset, scroll = pageScroll:GetVerticalScroll() }
	end
	tab = key
	ns.char.tab = key
	for _, b in ipairs(tabButtons) do
		b.selected:SetShown(b.key == key)
		if b.key == key then b:LockHighlight() else b:UnlockHighlight() end
	end
	goalsPanel:SetShown(key == "goals")
	panel:SetShown(key ~= "goals")
	if key == "goals" then
		ns.UI.Layout()
		return
	end
	local state = saved[key] or {}
	current, page, history = state.current, nil, state.history or {}
	search:SetText(state.text or "") -- redraws the list from the top
	listOffset = state.offset or 0
	Browser.Layout()
	UpdateList()
	BuildPage()
	pageScroll:SetVerticalScroll(state.scroll or 0)
end

function Browser.Tab()
	return tab
end

-- for the tests
function Browser.Controls()
	return { header = listHeader, splitter = splitter, search = search, filter = filterIcon, sort = sortIcon, summary = summary, sources = sourceButtons, clear = clearButton, minLevel = minBox, maxLevel = maxBox }
end

function Browser.Current()
	return current
end

-- The line under the list, and the two buttons lit when they are in use.
function Browser.UpdateSummary()
	local parts = ns.Wiki.FilterParts(tab)
	local sorted = ns.Filters.SortLabel(tab)
	local text = #parts > 0 and table.concat(parts, ", ")
		or (tab == "quest" and "Quests where you are") or (ns.Wiki.HasFilter(tab) and "No filter") or ""
	if sorted then text = text .. (text ~= "" and "  " or "") .. ns.Hex.dim .. sorted .. "|r" end
	summary.text:SetText(text)
	if #parts > 0 then summary.text:SetTextColor(1, 0.82, 0) else summary.text:SetTextColor(0.6, 0.6, 0.6) end
	filterIcon:SetActive(#parts > 0)
	sortIcon:SetActive(sorted ~= nil)
	clearButton:SetShown(#parts > 0)
	for key, b in pairs(sourceButtons) do b:SetActive(ns.db.filter.sources[key]) end
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
	local listWidth = math.max(170, math.floor(width * ns.db.listWidth))
	-- above the list: search box, then the filter and sort buttons of tabs that have them
	local hasFilter, hasSort = ns.Wiki.HasFilter(tab), ns.Wiki.HasSort(tab)
	local right = 16 + listWidth
	for _, icon in ipairs({ sortIcon, filterIcon }) do
		local shown = icon == sortIcon and hasSort or icon == filterIcon and hasFilter
		icon:SetShown(shown)
		if shown then
			icon:ClearAllPoints()
			icon:SetPoint("TOPRIGHT", panel, "TOPLEFT", right, -59)
			right = right - 22
		end
	end
	search:SetWidth(right - 22 - 4)
	-- below it: what is filtered, a button to clear it, and the level range of item filters
	local itemFilter = ns.Wiki.ItemFilter(tab)
	-- the Items tab has a row of source buttons between the search box and the list
	local top, x = tab == "item" and 22 or 0, 18
	for _, source in ipairs(ns.ItemDB.SOURCES) do
		local b = sourceButtons[source.key]
		if b then
			b:SetShown(top > 0 and (not source.field or ns.Q.Available()))
			b:SetPoint("TOPLEFT", x, -82)
			if b:IsShown() then x = x + 22 end
		end
	end
	listFrame:ClearAllPoints()
	listHeader:SetWidth(listWidth)
	listHeader:SetPoint("TOPLEFT", 16, -84 - top)
	listFrame:SetPoint("TOPLEFT", 16, -100 - top)
	listFrame:SetPoint("BOTTOMLEFT", 16, (hasFilter or hasSort) and 42 or 18)
	listFrame:SetWidth(listWidth)
	summary:SetShown(hasFilter or hasSort)
	summary:SetWidth(listWidth - 16 - (itemFilter and 76 or 0))
	for key, box in pairs({ minLevel = minBox, maxLevel = maxBox }) do
		box:SetShown(itemFilter ~= nil)
		if itemFilter and not box:HasFocus() then box:SetText(tostring(itemFilter[key] or "")) end
	end
	Browser.UpdateSummary()

	splitter:ClearAllPoints()
	splitter:SetPoint("TOPLEFT", 16 + listWidth + 1, -84)
	splitter:SetPoint("BOTTOMLEFT", 16 + listWidth + 1, 18)
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
		-- the open tab: a gold bar under it (the locked highlight alone is easy to miss)
		b.selected = b:CreateTexture(nil, "OVERLAY")
		b.selected:SetColorTexture(1, 0.82, 0)
		b.selected:SetHeight(2)
		b.selected:SetPoint("BOTTOMLEFT", 4, -1)
		b.selected:SetPoint("BOTTOMRIGHT", -4, -1)
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
	search:SetScript("OnEnterPressed", function() -- Enter opens the top result
		for _, entry in ipairs(entries) do
			if not entry.caption then return Browser.Open(entry.kind, entry.id, true) end
		end
	end)
	-- shift-clicked items are looked up here
	search.ac = { Force = function(_, id) Browser.Show("item", id) end }
	search:HookScript("OnEditFocusGained", function(self) ns.linkBox = self end)
	search:HookScript("OnEditFocusLost", function(self) self.focusLostAt = GetTime() end)

	-- caption row above the list: the count on the left, column names on the right
	listHeader = CreateFrame("Frame", nil, panel)
	listHeader:SetHeight(14)
	listHeader:SetPoint("TOPLEFT", 16, -84)
	listHeader.cells = {}
	listHeader.name = HeaderButton()
	local headerLine = listHeader:CreateTexture(nil, "ARTWORK")
	headerLine:SetColorTexture(1, 0.82, 0, 0.35)
	headerLine:SetHeight(1)
	headerLine:SetPoint("BOTTOMLEFT", 0, -1)
	headerLine:SetPoint("BOTTOMRIGHT", 0, -1)

	listFrame = CreateFrame("Frame", nil, panel)
	listFrame:EnableMouseWheel(true)
	listFrame:SetScript("OnMouseWheel", function(_, delta)
		listOffset = listOffset - delta * (ns.db.compactList and 3 or 2)
		DrawList()
	end)
	local listBg = listFrame:CreateTexture(nil, "BACKGROUND")
	listBg:SetAllPoints()
	listBg:SetColorTexture(0, 0, 0, 0.3)
	listMessage = listFrame:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
	listMessage:SetPoint("TOPLEFT", 6, -8)
	listMessage:SetPoint("RIGHT", -6, 0)
	listMessage:SetJustifyH("LEFT")

	-- the bar between list and page: drag it to give the list more or less of the window
	splitter = CreateFrame("Frame", nil, panel)
	splitter:SetWidth(10)
	local listFrom
	ns.DragHandle(splitter, "Drag to resize the list", function() listFrom = listFrame:GetWidth() end, function(dx)
		ns.db.listWidth = math.max(0.15, math.min(0.75, (listFrom + dx) / frame:GetWidth()))
		Browser.Layout()
	end)

	local Changed = ListChanged
	filterIcon = ns.Filters.FilterButton(panel, Browser.Tab, Changed)
	sortIcon = ns.Filters.SortButton(panel, Browser.Tab, Changed)

	for _, source in ipairs(ns.ItemDB.SOURCES) do
		if source.icon then
			local b = ns.Filters.Button(panel, "ui-questtrackerbutton-filter", "ui-questtrackerbutton-filter-pressed", source.label,
				function() return "Click to list only these. Several lit: items from any of them." end,
				function()
					ns.db.filter.sources[source.key] = not ns.db.filter.sources[source.key] or nil
					Changed()
				end)
			for _, set in ipairs({ "SetNormalTexture", "SetPushedTexture", "SetHighlightTexture" }) do b[set](b, source.icon) end
			b:SetActive(false)
			sourceButtons[source.key] = b
		end
	end

	-- one line under the list says what is filtered and how it is sorted
	summary = CreateFrame("Button", nil, panel)
	summary:SetHeight(18)
	summary:SetPoint("BOTTOMLEFT", 18, 19)
	summary.text = summary:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	summary.text:SetAllPoints()
	summary.text:SetJustifyH("LEFT")
	summary.text:SetWordWrap(false)
	summary:SetScript("OnClick", function(self)
		if ns.Wiki.HasFilter(tab) then ns.Filters.Menu(tab, self, Changed) else ns.Filters.SortMenu(tab, self, Changed) end
	end)
	summary:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP")
		GameTooltip:SetText(self.text:GetText() or "", 1, 1, 1, 1, true)
		GameTooltip:AddLine("Click to change.", 0.5, 0.5, 0.5)
		GameTooltip:Show()
	end)
	summary:SetScript("OnLeave", GameTooltip_Hide)

	clearButton = CreateFrame("Button", nil, panel)
	clearButton:SetSize(14, 14)
	clearButton:SetPoint("LEFT", summary, "RIGHT", 2, 0)
	clearButton:SetNormalTexture("Interface\\Buttons\\UI-GroupLoot-Pass-Up")
	clearButton:SetHighlightTexture("Interface\\Buttons\\UI-GroupLoot-Pass-Highlight", "ADD")
	clearButton:SetScript("OnClick", function()
		ns.Wiki.ResetFilter(tab)
		Changed()
	end)
	clearButton:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP")
		GameTooltip:SetText("Clear all filters")
		GameTooltip:Show()
	end)
	clearButton:SetScript("OnLeave", GameTooltip_Hide)

	-- required level from / to, typed directly
	local function LevelBox(key, anchor, tip)
		local box = CreateFrame("EditBox", nil, panel, "InputBoxTemplate")
		box:SetSize(28, 20)
		box:SetPoint("LEFT", anchor, "RIGHT", 10, 0)
		box:SetAutoFocus(false)
		box:SetNumeric(true)
		box:SetMaxLetters(3)
		box:SetJustifyH("CENTER")
		box:SetScript("OnTextChanged", function(self, userInput)
			if not userInput then return end
			local n = tonumber(self:GetText())
			ns.Wiki.ItemFilter(tab)[key] = n and n > 0 and n or nil
			listOffset = 0
			Browser.UpdateSummary()
			UpdateList()
		end)
		box:SetScript("OnEnterPressed", box.ClearFocus)
		box:SetScript("OnEscapePressed", box.ClearFocus)
		box:SetScript("OnEnter", function(self)
			GameTooltip:SetOwner(self, "ANCHOR_TOP")
			GameTooltip:SetText(tip)
			GameTooltip:AddLine("Required character level. Leave empty for no limit.", 1, 1, 1, true)
			GameTooltip:Show()
		end)
		box:SetScript("OnLeave", GameTooltip_Hide)
		return box
	end
	minBox = LevelBox("minLevel", clearButton, "Lowest level")
	maxBox = LevelBox("maxLevel", minBox, "Highest level")

	backButton = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
	backButton:SetSize(124, 20)
	backButton:SetPoint("TOPRIGHT", -16, -58)
	backButton:SetScript("OnClick", function()
		current, showAll = table.remove(history), {}
		BuildPage()
		pageScroll:SetVerticalScroll(0)
		DrawList()
	end)

	addButton = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
	addButton:SetSize(88, 20)
	addButton:SetPoint("TOPRIGHT", -144, -58)
	addButton:SetText("Add to goal")
	-- asks which goal; the chosen one becomes the selected goal, so right-click adds follow it
	addButton:SetScript("OnClick", function(self)
		local itemId, questId = page.itemId, page.questId
		local function AddTo(goal)
			ns.selectedGoal = goal
			if itemId then AddToGoal(itemId, goal) else AddQuestToGoal(questId, goal) end
		end
		MenuUtil.CreateContextMenu(self, function(_, root)
			root:CreateTitle("Add to")
			for _, goal in ipairs(ns.Goals()) do
				root:CreateButton(goal.title .. (goal == ns.SelectedGoal() and "  " .. ns.Hex.dim .. "(selected)|r" or ""), function() AddTo(goal) end)
			end
			-- named after what is added; double-click its title on the Goals tab to rename
			root:CreateButton(ns.Hex.good .. "+ New goal|r", function()
				AddTo(ns.AddGoal(itemId and ns.GetItem(itemId).name or ns.Q.Quest.name(questId)))
			end)
		end)
	end)

	compareButton = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
	compareButton:SetSize(70, 20)
	compareButton:SetPoint("RIGHT", addButton, "LEFT", -4, 0)
	compareButton:SetText("Compare")
	compareButton:SetScript("OnClick", function() ns.Compare.Open(nil, { id = page.itemId, need = 1 }) end)

	pageScroll = CreateFrame("ScrollFrame", nil, panel, "ScrollFrameTemplate")
	if pageScroll.ScrollBar then
		pageScroll.ScrollBar:ClearAllPoints()
		pageScroll.ScrollBar:SetPoint("TOPLEFT", pageScroll, "TOPRIGHT", 5, 0)
		pageScroll.ScrollBar:SetPoint("BOTTOMLEFT", pageScroll, "BOTTOMRIGHT", 5, 0)
		pageScroll.ScrollBar:SetHideIfUnscrollable(true)
	end
	local pageBg = pageScroll:CreateTexture(nil, "BACKGROUND")
	pageBg:SetPoint("TOPLEFT", -6, 4)
	pageBg:SetPoint("BOTTOMRIGHT", 4, -4)
	pageBg:SetColorTexture(0, 0, 0, 0.3)
	pageContent = CreateFrame("Frame", nil, pageScroll)
	pageContent:SetSize(1, 1)
	pageScroll:SetScrollChild(pageContent)

	title = panel:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge")
	title:SetPoint("BOTTOMLEFT", pageScroll, "TOPLEFT", 2, 8)
	title:SetJustifyH("LEFT")
	title:SetWordWrap(false)

	pageMessage = panel:CreateFontString(nil, "OVERLAY", "GameFontDisable")
	pageMessage:SetPoint("TOPLEFT", pageScroll, "TOPLEFT", 8, -12)
	pageMessage:SetPoint("RIGHT", pageScroll, "RIGHT", -8, 0)
	pageMessage:SetJustifyH("LEFT")

	frame:HookScript("OnSizeChanged", Browser.Layout)
	Browser.Layout()
	local last = ns.char.tab
	Browser.Select(TabInfo(last) and last or "goals")
end
