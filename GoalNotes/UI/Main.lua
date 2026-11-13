local _, ns = ...

local UI = {}
ns.UI = UI

-- Optional columns, left to right. The item name always takes the remaining width.
ns.Columns = {
	{ key = "need", label = "Need", width = 40, tip = "How many you want. Click the number to change it." },
	{ key = "have", label = "Have", width = 40, tip = "Bags + bank (+ warband bank if enabled)." },
	{ key = "bags", label = "Bags", width = 40, tip = "In your bags or equipped." },
	{ key = "bank", label = "Bank", width = 40, tip = "In your bank (and warband bank if enabled)." },
	{ key = "missing", label = "Missing", width = 50, tip = "Still to collect." },
	{ key = "progress", label = "Progress", width = 86 },
	{ key = "ilvl", label = "iLvl", width = 34, tip = "Item level." },
	{ key = "level", label = "Req", width = 30, tip = "Required character level." },
	{ key = "slot", label = "Slot", width = 76 },
	{ key = "type", label = "Type", width = 86 },
	{ key = "price", label = "Vendor", width = 76, tip = "Vendor sell price for one." },
}

local GAP, BUTTONS_W = 6, 40 -- gap between columns; room for the compare/remove buttons
local frame, scroll, content, headerRow, input, qtyBox, addLabel, emptyText, editBox, filterButton
local goalRows, entryRows = { used = 0 }, { used = 0 }
local editing -- goal or note entry whose text is being edited inline

local function Scale(n)
	return math.floor(n * ns.db.fontSize / 12 + 0.5)
end

local function Acquire(pool, factory)
	pool.used = pool.used + 1
	local row = pool[pool.used] or factory()
	pool[pool.used] = row
	row:Show()
	return row
end

local function MoneyString(copper)
	if not copper or copper <= 0 then return "" end
	return C_CurrencyInfo.GetCoinTextureString(copper)
end

---------------------------------------------------------------------------
-- Inline text editing (goal titles and free-text notes)
---------------------------------------------------------------------------

local function StopEditing(commit)
	local obj = editing
	if not obj then return end
	editing = nil
	local text = editBox:GetText():match("^%s*(.-)%s*$")
	editBox:Hide()
	if commit and text ~= "" then
		if obj.entries then obj.title = text else obj.text = text end
	end
	UI.Layout()
end

local function StartEditing(obj)
	editing = obj
	editBox:SetText(obj.entries and obj.title or obj.text)
	UI.Layout() -- anchors the edit box over the row
	editBox:SetFocus()
	editBox:HighlightText()
end

---------------------------------------------------------------------------
-- Context menus
---------------------------------------------------------------------------

StaticPopupDialogs["GOALNOTES_DELETE_GOAL"] = {
	text = "Delete the goal \"%s\" and its %d entries?",
	button1 = YES, button2 = NO,
	OnAccept = function(_, goal)
		ns.Remove(ns.Goals(), goal)
		UI.Layout()
	end,
	timeout = 0, whileDead = true, hideOnEscape = true,
}

local function DeleteGoal(goal)
	if #goal.entries == 0 then
		ns.Remove(ns.Goals(), goal)
		UI.Layout()
	else
		StaticPopup_Show("GOALNOTES_DELETE_GOAL", goal.title, #goal.entries, goal)
	end
end

local function GoalMenu(owner, goal)
	MenuUtil.CreateContextMenu(owner, function(_, root)
		root:CreateTitle(goal.title)
		root:CreateButton("Rename", function() StartEditing(goal) end)
		root:CreateCheckbox("Show in tracker",
			function() return not goal.untracked end,
			function() goal.untracked = not goal.untracked or nil UI.Layout() end)
		root:CreateCheckbox("Combine materials into one list",
			function() return goal.combine end,
			function() goal.combine = not goal.combine or nil UI.Layout() end)
		root:CreateButton("Move up", function() ns.Move(ns.Goals(), goal, -1) UI.Layout() end)
		root:CreateButton("Move down", function() ns.Move(ns.Goals(), goal, 1) UI.Layout() end)
		root:CreateButton("Remove completed entries", function()
			for i = #goal.entries, 1, -1 do
				if ns.EntryDone(goal.entries[i]) then table.remove(goal.entries, i) end
			end
			UI.Layout()
		end)
		root:CreateButton("Delete goal", function() DeleteGoal(goal) end)
	end)
end

-- r is a display row from ns.GoalRows
local function EntryMenu(owner, goal, r)
	local entry = r.entry
	if r.label then return end
	if r.reagent then
		MenuUtil.CreateContextMenu(owner, function(_, root)
			root:CreateTitle(ns.GetItem(r.id).name)
			root:CreateButton("Look up in the wiki", function() ns.Browser.Show("item", r.id) end)
			if entry and ns.Recipes.Get(r.id) then
				root:CreateButton(r.broken and "Track this item itself" or "Break down into its reagents", function()
					entry.sub = entry.sub or {}
					entry.sub[r.id] = not r.broken or nil
					UI.Layout()
				end)
			end
		end)
		return
	end
	MenuUtil.CreateContextMenu(owner, function(_, root)
		if entry.id then
			local item = ns.GetItem(entry.id)
			root:CreateTitle(item.name)
			root:CreateButton("Look up in the wiki", function() ns.Browser.Show("item", entry.id) end)
			if ns.Recipes.Get(entry.id) then
				root:CreateButton(entry.craft and "Track the item only" or "Track its reagents", function()
					entry.craft = not entry.craft or nil
					UI.Layout()
				end)
			end
			if ns.IsEquippable(item.equipLoc) then
				root:CreateButton("Compare with another item...", function() ns.Compare.Open(goal, entry) end)
			end
		else
			root:CreateButton("Edit text", function() StartEditing(entry) end)
		end
		root:CreateButton("Move up", function() ns.Move(goal.entries, entry, -1) UI.Layout() end)
		root:CreateButton("Move down", function() ns.Move(goal.entries, entry, 1) UI.Layout() end)
		if #ns.Goals() > 1 then
			local sub = root:CreateButton("Move to goal")
			for _, other in ipairs(ns.Goals()) do
				if other ~= goal then
					sub:CreateButton(other.title, function()
						ns.Remove(goal.entries, entry)
						table.insert(other.entries, entry)
						other.collapsed = nil
						UI.Layout()
					end)
				end
			end
		end
		root:CreateButton("Remove", function() ns.Remove(goal.entries, entry) UI.Layout() end)
	end)
end

---------------------------------------------------------------------------
-- Rows
---------------------------------------------------------------------------

local function ShowEntryTooltip(row)
	local r = row.data
	if r.label then return end
	GameTooltip:SetOwner(row, "ANCHOR_RIGHT")
	if r.id then
		GameTooltip:SetHyperlink(ns.GetItem(r.id).link)
		local bags, bank, warband = ns.GetCounts(r.id)
		local counts = ("Bags: %d   Bank: %d"):format(bags, bank)
		if ns.db.includeWarband and warband > 0 then counts = counts .. ("   Warband: %d"):format(warband) end
		ns.Recipes.AddTooltipLines(GameTooltip, r.id)
		GameTooltip:AddLine(" ")
		GameTooltip:AddLine(counts, 1, 1, 1)
		if r.ready then GameTooltip:AddLine("All reagents in hand - ready to craft.", ns.Color("complete")) end
		GameTooltip:AddLine("Right-click for options. Shift-click to link.", 0.5, 0.5, 0.5)
		if IsModifiedClick("COMPAREITEMS") then
			GameTooltip_ShowCompareItem(GameTooltip)
		elseif GameTooltip_HideShoppingTooltips then
			GameTooltip_HideShoppingTooltips(GameTooltip)
		end
	else
		GameTooltip:SetText(r.entry.text, 1, 1, 1, 1, true)
		GameTooltip:AddLine("Click to tick off. Right-click for options.", 0.5, 0.5, 0.5)
	end
	GameTooltip:Show()
end

local function CreateEntryRow()
	local row = CreateFrame("Button", nil, content)
	row:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	row:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")

	row.status = row:CreateTexture(nil, "ARTWORK")
	row.icon = row:CreateTexture(nil, "ARTWORK")
	row.icon:SetPoint("LEFT", row.status, "RIGHT", 3, 0)
	row.name = row:CreateFontString(nil, "OVERLAY")
	row.name:SetPoint("LEFT", row.icon, "RIGHT", 5, 0)
	row.name:SetJustifyH("LEFT")
	row.name:SetWordWrap(false)

	row.cells = {}
	for _, col in ipairs(ns.Columns) do
		if col.key ~= "need" and col.key ~= "progress" then
			local fs = row:CreateFontString(nil, "OVERLAY")
			fs:SetJustifyH((col.key == "slot" or col.key == "type") and "LEFT" or "RIGHT")
			fs:SetWordWrap(false)
			row.cells[col.key] = fs
		end
	end

	-- "Need" is edited in place.
	local need = CreateFrame("EditBox", nil, row)
	row.cells.need = need
	need:SetAutoFocus(false)
	need:SetNumeric(true)
	need:SetMaxLetters(5)
	need:SetJustifyH("RIGHT")
	need.bg = need:CreateTexture(nil, "BACKGROUND")
	need.bg:SetAllPoints()
	need.bg:SetColorTexture(0, 0, 0, 0.35)
	local function Commit(self)
		local n = tonumber(self:GetText())
		if n and n >= 1 and row.data.entry and not row.data.reagent then row.data.entry.need = n end
		ns.Refresh()
	end
	need:SetScript("OnEnterPressed", need.ClearFocus)
	need:SetScript("OnEscapePressed", function(self)
		self:SetText(tostring(row.data.need))
		self:ClearFocus()
	end)
	need:SetScript("OnEditFocusLost", Commit)
	need:SetScript("OnEditFocusGained", need.HighlightText)

	local bar = CreateFrame("StatusBar", nil, row)
	row.cells.progress = bar
	bar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
	bar.bg = bar:CreateTexture(nil, "BACKGROUND")
	bar.bg:SetAllPoints()
	bar.bg:SetColorTexture(0, 0, 0, 0.5)
	bar.text = bar:CreateFontString(nil, "OVERLAY")
	bar.text:SetPoint("CENTER")

	row.remove = CreateFrame("Button", nil, row)
	row.remove:SetSize(14, 14)
	row.remove:SetPoint("RIGHT", -2, 0)
	row.remove:SetNormalTexture("Interface\\Buttons\\UI-GroupLoot-Pass-Up")
	row.remove:SetHighlightTexture("Interface\\Buttons\\UI-GroupLoot-Pass-Highlight", "ADD")
	row.remove:SetScript("OnClick", function()
		ns.Remove(row.goal.entries, row.data.entry)
		UI.Layout()
	end)
	row.remove:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		GameTooltip:SetText("Remove")
		GameTooltip:Show()
	end)
	row.remove:SetScript("OnLeave", GameTooltip_Hide)

	row.compare = CreateFrame("Button", nil, row)
	row.compare:SetSize(14, 14)
	row.compare:SetPoint("RIGHT", row.remove, "LEFT", -5, 0)
	row.compare:SetNormalTexture("Interface\\Icons\\INV_Misc_Spyglass_02")
	row.compare:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")
	row.compare:SetScript("OnClick", function() ns.Compare.Open(row.goal, row.data.entry) end)
	row.compare:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		GameTooltip:SetText("Compare with another item")
		GameTooltip:Show()
	end)
	row.compare:SetScript("OnLeave", GameTooltip_Hide)

	row.UpdateTooltip = ShowEntryTooltip -- GameTooltip re-calls this, so Shift toggles comparison live
	row:SetScript("OnEnter", ShowEntryTooltip)
	row:SetScript("OnLeave", GameTooltip_Hide)
	row:SetScript("OnClick", function(self, button)
		local r = self.data
		local entry = r.entry
		if button == "RightButton" then
			EntryMenu(self, self.goal, r)
		elseif r.id then
			local item = ns.GetItem(r.id)
			if not item.pending then HandleModifiedItemClick(item.link) end
		elseif entry then
			entry.done = not entry.done or nil
			UI.Layout()
		end
	end)
	return row
end

local function CreateGoalRow()
	local row = CreateFrame("Button", nil, content)
	row:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	row.bg = row:CreateTexture(nil, "BACKGROUND")
	row.bg:SetAllPoints()
	row:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")

	row.toggle = CreateFrame("Button", nil, row)
	row.toggle:SetSize(14, 14)
	row.toggle:SetPoint("LEFT", 2, 0)
	row.toggle:SetHighlightTexture("Interface\\Buttons\\UI-PlusButton-Hilight", "ADD")
	row.toggle:SetScript("OnClick", function()
		row.goal.collapsed = not row.goal.collapsed or nil
		UI.Layout()
	end)

	row.summary = row:CreateFontString(nil, "OVERLAY")
	row.summary:SetPoint("RIGHT", -4, 0)
	row.title = row:CreateFontString(nil, "OVERLAY")
	row.title:SetPoint("LEFT", row.toggle, "RIGHT", 5, 0)
	row.title:SetPoint("RIGHT", row.summary, "LEFT", -6, 0)
	row.title:SetJustifyH("LEFT")
	row.title:SetWordWrap(false)

	row:SetScript("OnClick", function(self, button)
		if button == "RightButton" then
			GoalMenu(self, self.goal)
		else
			ns.selectedGoal = self.goal
			UI.Layout()
		end
	end)
	row:SetScript("OnDoubleClick", function(self) StartEditing(self.goal) end)
	row:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		GameTooltip:SetText(self.goal.title)
		GameTooltip:AddLine("Click to add new items to this goal.", 1, 1, 1)
		GameTooltip:AddLine("Double-click to rename. Right-click for options.", 0.5, 0.5, 0.5)
		GameTooltip:Show()
	end)
	row:SetScript("OnLeave", GameTooltip_Hide)
	return row
end

---------------------------------------------------------------------------
-- Layout
---------------------------------------------------------------------------

-- Anchors every visible column cell right-to-left; returns the x where the name must end.
local function PlaceColumns(parent, getCell, rowH)
	local x = -BUTTONS_W
	for i = #ns.Columns, 1, -1 do
		local col = ns.Columns[i]
		local cell = getCell(col)
		if cell then
			local shown = ns.db.columns[col.key] and true or false
			cell:SetShown(shown)
			if shown then
				local w = Scale(col.width)
				cell:ClearAllPoints()
				cell:SetPoint("RIGHT", parent, "RIGHT", x, 0)
				cell:SetSize(w, rowH)
				x = x - w - GAP
			end
		end
	end
	return x
end

local function FillEntry(row, goal, r, rowH)
	row.goal, row.data = goal, r
	local entry = r.entry
	local done = ns.RowDone(r)
	local size = rowH - 4
	row.status:ClearAllPoints()
	row.status:SetPoint("LEFT", 14 + r.depth * 14, 0)
	row.status:SetSize(size, size)
	row.icon:SetSize(size, size)
	row.name:SetAlpha(1)
	ns.SetFont(row.name)
	row.remove:SetShown(entry ~= nil and not r.reagent)

	if not r.id then -- free-text note or caption
		row.status:SetVertexColor(1, 1, 1)
		row.status:SetTexture(not r.label and (done and "Interface\\RaidFrame\\ReadyCheck-Ready" or "Interface\\Buttons\\UI-CheckBox-Up") or nil)
		row.icon:SetTexture(nil)
		row.icon:SetWidth(0.01)
		row.name:SetText(r.label or entry.text)
		if r.label then
			row.name:SetTextColor(ns.Color("title"))
		elseif done then
			row.name:SetTextColor(0.5, 0.5, 0.5)
		else
			row.name:SetTextColor(ns.Color("text"))
		end
		row.name:SetPoint("RIGHT", row.remove, "LEFT", -6, 0)
		for _, cell in pairs(row.cells) do cell:Hide() end
		row.compare:Hide()
		return
	end

	local item = ns.GetItem(r.id)
	local bags, bank, warband, total = ns.GetCounts(r.id)
	local cr, cg, cb = ns.Color(done and "complete" or "incomplete")

	-- green check: have it. gold check: every reagent is in hand, ready to craft.
	row.status:SetTexture((done or r.ready) and "Interface\\RaidFrame\\ReadyCheck-Ready" or nil)
	if done then row.status:SetVertexColor(1, 1, 1) else row.status:SetVertexColor(1, 0.82, 0) end
	row.icon:SetTexture(item.icon)
	if ns.db.qualityColors then
		row.name:SetText("|c" .. ns.QualityHex(item.quality) .. item.name .. "|r")
	else
		row.name:SetText(item.name)
		row.name:SetTextColor(ns.Color("text"))
	end
	row.compare:SetShown(not r.reagent and ns.IsEquippable(item.equipLoc))

	local nameRight = PlaceColumns(row, function(col) return row.cells[col.key] end, rowH - 2)
	row.name:SetPoint("RIGHT", row, "RIGHT", nameRight, 0)

	local c = row.cells
	for key, cell in pairs(c) do
		if cell.SetTextColor then cell:SetTextColor(ns.Color("text")) end
		ns.SetFont(key == "progress" and cell.text or cell, -1)
	end
	-- reagent amounts are computed from the recipe, so only real entries are editable
	c.need:EnableMouse(not r.reagent)
	c.need.bg:SetShown(not r.reagent)
	if not c.need:HasFocus() then c.need:SetText(tostring(r.need)) end
	c.have:SetText(total)
	c.have:SetTextColor(cr, cg, cb)
	c.bags:SetText(bags)
	c.bank:SetText(bank + warband)
	c.missing:SetText(math.max(0, r.need - total))
	c.missing:SetTextColor(cr, cg, cb)
	c.progress:SetMinMaxValues(0, r.need)
	c.progress:SetValue(math.min(total, r.need))
	c.progress:SetStatusBarColor(cr, cg, cb)
	c.progress.text:SetText(total .. " / " .. r.need)
	c.progress.text:SetTextColor(1, 1, 1)
	c.ilvl:SetText(item.ilvl or "")
	c.level:SetText(item.reqLevel and item.reqLevel > 0 and item.reqLevel or "")
	c.slot:SetText(ns.IsEquippable(item.equipLoc) and _G[item.equipLoc] or "")
	c.type:SetText(item.subType or item.type or "")
	c.price:SetText(MoneyString(item.price))
end

local function FillGoal(row, goal, selected)
	row.goal = goal
	local done, total = 0, #goal.entries
	for _, e in ipairs(goal.entries) do
		if ns.EntryDone(e) then done = done + 1 end
	end
	local sign = goal.collapsed and "Plus" or "Minus"
	row.toggle:SetNormalTexture("Interface\\Buttons\\UI-" .. sign .. "Button-Up")
	row.toggle:SetPushedTexture("Interface\\Buttons\\UI-" .. sign .. "Button-Down")
	ns.SetFont(row.title, 1)
	ns.SetFont(row.summary, -1)
	row.title:SetText(goal.title .. (goal.untracked and "" or "  |cff808080(tracked)|r"))
	row.title:SetAlpha(1)
	row.title:SetTextColor(ns.Color("title"))
	row.summary:SetText(total > 0 and (done .. " / " .. total) or "")
	row.summary:SetTextColor(ns.Color(total > 0 and done == total and "complete" or "text"))
	local r, g, b = ns.Color("title")
	row.bg:SetColorTexture(r, g, b, selected and 0.22 or 0.07)
	return done
end

function UI.Layout()
	if not frame then return end
	ns.Tracker.Update()
	if not frame:IsShown() then return end
	if ns.Browser.Tab() ~= "goals" then return ns.Browser.Refresh() end
	for _, pool in ipairs({ goalRows, entryRows }) do
		for i = 1, #pool do pool[i]:Hide() end
		pool.used = 0
	end

	local rowH = ns.db.fontSize + 8
	local width = math.max(scroll:GetWidth(), 1)
	content:SetWidth(width)
	local selected = ns.SelectedGoal()
	local y, editAnchor = 0, nil

	local function Place(row, h)
		row:ClearAllPoints()
		row:SetPoint("TOPLEFT", 0, -y)
		row:SetSize(width, h)
		y = y + h
	end

	for _, goal in ipairs(ns.Goals()) do
		local row = Acquire(goalRows, CreateGoalRow)
		Place(row, rowH + 4)
		FillGoal(row, goal, goal == selected)
		if editing == goal then editAnchor = row.title end
		if not goal.collapsed then
			for _, r in ipairs(ns.GoalRows(goal)) do
				if not (ns.db.hideCompleted and ns.RowDone(r)) or r.label or editing == r.entry then
					local erow = Acquire(entryRows, CreateEntryRow)
					Place(erow, rowH)
					FillEntry(erow, goal, r, rowH)
					if r.entry and editing == r.entry and not r.reagent then editAnchor = erow.name end
				end
			end
		end
		y = y + 4
	end
	content:SetHeight(math.max(y, 1))

	-- column captions
	local nameRight = PlaceColumns(headerRow, function(col) return headerRow.cells[col.key] end, 14)
	headerRow.name:SetPoint("RIGHT", headerRow, "RIGHT", nameRight, 0)

	emptyText:SetShown(#ns.Goals() == 1 and #selected.entries == 0)
	addLabel:SetText("Add to: |cffffffff" .. selected.title .. "|r")
	filterButton:SetText("Filter: " .. ns.ItemDB.FilterLabel())

	if editAnchor then
		editAnchor:SetAlpha(0) -- the edit box replaces the text it edits
		editBox:ClearAllPoints()
		editBox:SetPoint("LEFT", editAnchor, "LEFT", 2, 0)
		editBox:SetPoint("RIGHT", editAnchor, "RIGHT", 0, 0)
		editBox:SetHeight(rowH)
		editBox:SetFrameLevel(editAnchor:GetParent():GetFrameLevel() + 5)
		editBox:Show()
	else
		editing = nil
		editBox:Hide()
	end
end

---------------------------------------------------------------------------
-- Adding entries
---------------------------------------------------------------------------

-- "24 longjaw mud snapper" and "longjaw mud snapper x24" carry their own amount.
-- The whole text is tried first: "15 Pound Salmon" is an item, not 15 salmon.
local RESULTS = 200 -- the suggestion list scrolls, so a filter can be browsed like a small wiki

local function SearchInput(text)
	local filter = ns.ItemDB.FilterActive() and ns.ItemDB.MatchesFilter or nil
	local results, qty = ns.ItemDB.Search(text, RESULTS, filter, true), nil
	if #results == 0 then
		local q, rest = text:match("^%s*(%d+)%s*[xX]?%s+(.+)$")
		if not q then rest, q = text:match("^(.-)%s+[xX]%s*(%d+)%s*$") end
		if q then results, qty = ns.ItemDB.Search(rest, RESULTS, filter), tonumber(q) end
	end
	for _, r in ipairs(results) do
		local _, _, _, total = ns.GetCounts(r.id)
		r.qty = qty
		r.info = (qty and ("x" .. qty .. "  ") or "")
			.. (ns.Recipes.Get(ns.Recipes.FromScroll(r.id) or r.id) and "crafted  " or "")
			.. (total > 0 and ("have " .. total) or "")
	end
	return results
end

-- onChange: what to refresh afterwards (default: the goal list's suggestions)
local function FilterMenu(owner, onChange)
	local f = ns.db.filter
	local Changed = onChange or function()
		UI.Layout()
		input:SetFocus()
		input.ac:Update()
	end
	MenuUtil.CreateContextMenu(owner, function(_, root)
		root:CreateTitle("Item type")
		for _, t in ipairs(ns.ItemDB.TYPES) do
			root:CreateRadio(t.label, function() return f.type == t.key end, function() f.type = t.key Changed() end)
		end
		root:CreateTitle("Source")
		for _, src in ipairs(ns.ItemDB.SOURCES) do
			root:CreateRadio(src.label, function() return f.source == src.key end, function() f.source = src.key Changed() end)
		end
	end)
end

local function AddPicked(result)
	ns.AddItem(ns.SelectedGoal(), result.id, result.qty or tonumber(qtyBox:GetText()) or 1)
	input:SetText("")
	qtyBox:SetText("1")
	ns.Refresh()
	UI.Layout()
end

local function AddText(text)
	text = text:match("^%s*(.-)%s*$")
	if text == "" then return end
	ns.AddNote(ns.SelectedGoal(), text)
	input:SetText("")
	UI.Layout()
end

UI.FilterMenu = FilterMenu

---------------------------------------------------------------------------
-- Window
---------------------------------------------------------------------------

local function SavePlace()
	local point, _, relPoint, x, y = frame:GetPoint(1)
	ns.db.pos = { point, relPoint, x, y }
	ns.db.width, ns.db.height = frame:GetSize()
end

function UI.ResetPosition()
	ns.db.pos = nil
	ns.db.width, ns.db.height = ns.defaults.width, ns.defaults.height
	frame:ClearAllPoints()
	frame:SetPoint("CENTER")
	frame:SetSize(ns.db.width, ns.db.height)
	frame:Show()
end

function UI.ApplyLock()
	frame.grip:SetShown(not ns.db.locked)
	local listed
	for i, name in ipairs(UISpecialFrames) do
		if name == "GoalNotesFrame" then listed = i end
	end
	if ns.db.closeOnEscape and not listed then
		table.insert(UISpecialFrames, "GoalNotesFrame")
	elseif listed and not ns.db.closeOnEscape then
		table.remove(UISpecialFrames, listed)
	end
end

function UI.Toggle()
	frame:SetShown(not frame:IsShown())
end

function UI.FocusInput()
	frame:Show()
	input:SetFocus()
end

function UI.Init()
	frame = ns.CreateWindow("GoalNotesFrame", ns.TITLE)
	UI.frame = frame
	frame:SetSize(ns.db.width, ns.db.height)
	frame:SetScale(ns.db.scale)
	local pos = ns.db.pos
	if pos then frame:SetPoint(pos[1], UIParent, pos[2], pos[3], pos[4]) else frame:SetPoint("CENTER") end
	frame:SetResizable(true)
	frame:SetResizeBounds(480, 300, 1200, 1000)
	frame:RegisterForDrag("LeftButton")
	frame:SetScript("OnDragStart", function(self)
		if not ns.db.locked then self:StartMoving() end
	end)
	frame:SetScript("OnDragStop", function(self)
		self:StopMovingOrSizing()
		SavePlace()
	end)
	frame:SetScript("OnShow", function()
		ns.char.shown = true
		PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB)
		UI.Layout()
	end)
	frame:SetScript("OnHide", function()
		ns.char.shown = nil
		if editing then StopEditing(false) end
	end)

	-- everything of the Goals tab lives in this panel; the wiki tabs replace it (UI/Browser.lua)
	local panel = CreateFrame("Frame", nil, frame)
	panel:SetAllPoints()

	-- toolbar
	local newGoal = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
	newGoal:SetSize(90, 22)
	newGoal:SetPoint("TOPLEFT", 16, -56)
	newGoal:SetText("New Goal")
	newGoal:SetScript("OnClick", function() StartEditing(ns.AddGoal()) end)

	local settings = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
	settings:SetSize(80, 22)
	settings:SetPoint("TOPRIGHT", -16, -56)
	settings:SetText("Settings")
	settings:SetScript("OnClick", function() ns.Settings.Toggle() end)

	-- column captions
	headerRow = CreateFrame("Frame", nil, panel)
	headerRow:SetHeight(14)
	headerRow.name = headerRow:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	headerRow.name:SetPoint("LEFT", 16, 0)
	headerRow.name:SetJustifyH("LEFT")
	headerRow.name:SetText("Item")
	headerRow.cells = {}
	for _, col in ipairs(ns.Columns) do
		local cap = CreateFrame("Frame", nil, headerRow)
		cap.text = cap:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
		cap.text:SetAllPoints()
		cap.text:SetJustifyH((col.key == "slot" or col.key == "type") and "LEFT" or (col.key == "progress" and "CENTER" or "RIGHT"))
		cap.text:SetWordWrap(false)
		cap.text:SetText(col.label)
		if col.tip then
			cap:SetScript("OnEnter", function(self)
				GameTooltip:SetOwner(self, "ANCHOR_TOP")
				GameTooltip:SetText(col.label)
				GameTooltip:AddLine(col.tip, 1, 1, 1, true)
				GameTooltip:Show()
			end)
			cap:SetScript("OnLeave", GameTooltip_Hide)
		end
		headerRow.cells[col.key] = cap
	end
	local line = headerRow:CreateTexture(nil, "ARTWORK")
	line:SetColorTexture(1, 0.82, 0, 0.35)
	line:SetHeight(1)
	line:SetPoint("BOTTOMLEFT", 0, -3)
	line:SetPoint("BOTTOMRIGHT", 0, -3)

	-- list
	scroll = CreateFrame("ScrollFrame", nil, panel, "ScrollFrameTemplate")
	scroll:SetPoint("TOPLEFT", 16, -106)
	scroll:SetPoint("BOTTOMRIGHT", -32, 72)
	if scroll.ScrollBar then
		scroll.ScrollBar:ClearAllPoints()
		scroll.ScrollBar:SetPoint("TOPLEFT", scroll, "TOPRIGHT", 5, 0)
		scroll.ScrollBar:SetPoint("BOTTOMLEFT", scroll, "BOTTOMRIGHT", 5, 0)
		scroll.ScrollBar:SetHideIfUnscrollable(true)
	end
	headerRow:SetPoint("BOTTOMLEFT", scroll, "TOPLEFT", 0, 6)
	headerRow:SetPoint("BOTTOMRIGHT", scroll, "TOPRIGHT", 0, 6)

	content = CreateFrame("Frame", nil, scroll)
	content:SetSize(1, 1)
	scroll:SetScrollChild(content)

	emptyText = content:CreateFontString(nil, "OVERLAY", "GameFontDisable")
	emptyText:SetPoint("TOPLEFT", 16, -40)
	emptyText:SetPoint("RIGHT", -16, 0)
	emptyText:SetJustifyH("LEFT")
	emptyText:SetText("Type an item name below and press Enter to add it.\n\n"
		.. "Shift-click an item in your bags, chat or a profession window to link it into the box.\n\n"
		.. "Start with a number to set the amount: \"24 longjaw mud snapper\".")

	editBox = CreateFrame("EditBox", nil, content, "InputBoxTemplate")
	editBox:SetAutoFocus(false)
	editBox:SetMaxLetters(80)
	editBox:Hide()
	editBox:SetScript("OnEnterPressed", function() StopEditing(true) end)
	editBox:SetScript("OnEscapePressed", function() StopEditing(false) end)
	editBox:SetScript("OnEditFocusLost", function() StopEditing(true) end)

	-- add bar
	addLabel = panel:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	addLabel:SetPoint("BOTTOMLEFT", 18, 46)
	addLabel:SetPoint("RIGHT", -150, 0)
	addLabel:SetJustifyH("LEFT")
	addLabel:SetWordWrap(false)

	filterButton = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
	filterButton:SetSize(170, 20)
	filterButton:SetPoint("BOTTOMRIGHT", -26, 42)
	filterButton:SetScript("OnClick", function(self) FilterMenu(self) end)
	filterButton:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP")
		GameTooltip:SetText("Filter suggestions")
		GameTooltip:AddLine("Limit the suggestions to a kind of item. With a filter set, click the search box to browse everything of that kind; hover a suggestion to see how it is made.", 1, 1, 1, true)
		GameTooltip:Show()
	end)
	filterButton:SetScript("OnLeave", GameTooltip_Hide)

	local add = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
	add:SetSize(54, 22)
	add:SetPoint("BOTTOMRIGHT", -26, 18)
	add:SetText("Add")

	qtyBox = CreateFrame("EditBox", nil, panel, "InputBoxTemplate")
	qtyBox:SetSize(38, 20)
	qtyBox:SetPoint("RIGHT", add, "LEFT", -6, 0)
	qtyBox:SetAutoFocus(false)
	qtyBox:SetNumeric(true)
	qtyBox:SetMaxLetters(5)
	qtyBox:SetJustifyH("CENTER")
	qtyBox:SetText("1")
	qtyBox:SetScript("OnEscapePressed", qtyBox.ClearFocus)
	qtyBox:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP")
		GameTooltip:SetText("Amount needed")
		GameTooltip:Show()
	end)
	qtyBox:SetScript("OnLeave", GameTooltip_Hide)

	input = CreateFrame("EditBox", nil, panel, "SearchBoxTemplate")
	input:SetHeight(20)
	input:SetPoint("BOTTOMLEFT", 22, 19)
	input:SetPoint("RIGHT", qtyBox, "LEFT", -12, 0)
	input:SetMaxLetters(120)
	if input.Instructions then input.Instructions:SetText("Item name, link or note...") end
	local ac = ns.AttachAutocomplete(input, { search = SearchInput, onPick = AddPicked, onText = AddText, above = true })
	qtyBox:SetScript("OnEnterPressed", function() if not ac:Pick() then AddText(input:GetText()) end end)
	qtyBox:SetScript("OnTabPressed", function() input:SetFocus() end)
	add:SetScript("OnClick", function() if not ac:Pick() then AddText(input:GetText()) end end)

	-- resize grip
	local grip = CreateFrame("Button", nil, frame)
	frame.grip = grip
	grip:SetSize(16, 16)
	grip:SetPoint("BOTTOMRIGHT", -7, 7)
	grip:SetNormalTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Up")
	grip:SetHighlightTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Highlight")
	grip:SetPushedTexture("Interface\\ChatFrame\\UI-ChatIM-SizeGrabber-Down")
	grip:SetScript("OnMouseDown", function() frame:StartSizing("BOTTOMRIGHT") end)
	grip:SetScript("OnMouseUp", function()
		frame:StopMovingOrSizing()
		SavePlace()
	end)

	ns.Compare.Init()
	ns.Settings.Init()
	ns.Tracker.Init()
	ns.MinimapButton.Init()
	ns.Browser.Init(frame, panel)
	UI.ApplyLock()
	scroll:SetScript("OnSizeChanged", UI.Layout) -- set last: Layout needs every widget above
	UI.Layout()
end
