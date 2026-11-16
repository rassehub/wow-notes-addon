local _, ns = ...

local UI = {}
ns.UI = UI

-- Optional columns, left to right. The name always takes the remaining width.
ns.Columns = {
	{ key = "source", label = "Source", width = 104, left = true, tip = "Where it comes from: profession, vendor, creature or quest." },
	{ key = "need", label = "Need", width = 40, tip = "How many you want. Click the number to change it." },
	{ key = "have", label = "Have", width = 40, tip = "Bags + bank (+ warband bank if enabled)." },
	{ key = "bags", label = "Bags", width = 40, tip = "In your bags or equipped." },
	{ key = "bank", label = "Bank", width = 40, tip = "In your bank (and warband bank if enabled)." },
	{ key = "alts", label = "Alts", width = 40, tip = "On your other characters, bags and bank. Not counted as yours. Hidden until another character has been logged in." },
	{ key = "missing", label = "Missing", width = 50, tip = "Still to collect." },
	{ key = "progress", label = "Progress", width = 86, center = true },
	{ key = "ilvl", label = "iLvl", width = 34, tip = "Item level." },
	{ key = "level", label = "Req", width = 30, tip = "Required character level." },
	{ key = "slot", label = "Slot", width = 76, left = true },
	{ key = "type", label = "Type", width = 86, left = true },
	{ key = "price", label = "Vendor", width = 76, tip = "Vendor sell price for one." },
}

local GAP, BUTTONS_W = 6, 40 -- gap between columns; room for the compare/remove buttons
local frame, panel, scroll, content, headerRow, input, qtyBox, emptyText, editBox, filterButton
local goalRows, entryRows = { used = 0 }, { used = 0 }
local editing, editField -- object being edited inline, and which of its fields

local CHECK = "Interface\\RaidFrame\\ReadyCheck-Ready"

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

local function SimpleTooltip(widget, title, text)
	widget:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_TOP")
		GameTooltip:SetText(title)
		if text then GameTooltip:AddLine(text, 1, 1, 1, true) end
		GameTooltip:Show()
	end)
	widget:SetScript("OnLeave", GameTooltip_Hide)
end

---------------------------------------------------------------------------
-- Inline editing. field: "title" (goal), "text" (note), "note" (comment on any entry),
-- "special" (gold / skill entries, re-parsed from text such as "100g" or "Cooking 225")
---------------------------------------------------------------------------

local function StopEditing(commit)
	local obj, field = editing, editField
	if not obj then return end
	editing, editField = nil, nil
	local text = editBox:GetText():match("^%s*(.-)%s*$")
	editBox:Hide()
	if commit then
		if field == "note" then
			obj.note = text ~= "" and text or nil
		elseif field == "special" then
			local parsed = ns.ParseSpecial(text)
			if parsed then
				obj.gold, obj.skill, obj.need = parsed.gold, parsed.skill, parsed.need
			end
		elseif text ~= "" then
			obj[field] = text
		end
	end
	UI.Layout()
end

local function StartEditing(obj, field)
	editing, editField = obj, field
	editBox:SetText(field == "special" and ns.SpecialText(obj) or obj[field] or "")
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
		root:CreateButton("Rename", function() StartEditing(goal, "title") end)
		root:CreateCheckbox("Show in tracker",
			function() return not goal.untracked end,
			function() goal.untracked = not goal.untracked or nil UI.Layout() end)
		root:CreateCheckbox("Combine materials into one list",
			function() return goal.combine end,
			function() goal.combine = not goal.combine or nil UI.Layout() end)
		for _, all in ipairs({ { "Collapse all goals", true }, { "Expand all goals" } }) do
			root:CreateButton(all[1], function()
				for _, g in ipairs(ns.Goals()) do g.collapsed = all[2] end
				UI.Layout()
			end)
		end
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
	if r.step then
		MenuUtil.CreateContextMenu(owner, function(_, root)
			root:CreateTitle(ns.RowInfo(r).label)
			root:CreateButton("Look up in the wiki", function() ns.Browser.Show("quest", r.quest) end)
		end)
		return
	end
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
			if entry.via then
				root:CreateButton("Stop tracking the quest chain", function() entry.via = nil UI.Layout() end)
			elseif ns.Q.Available() then
				for i, quest in ipairs(ns.Q.RewardQuests(entry.id)) do
					if i > 4 then break end
					root:CreateButton("Track the quest: " .. ns.Q.Quest.name(quest), function() entry.via = quest UI.Layout() end)
				end
			end
		elseif entry.quest then
			root:CreateButton("Look up in the wiki", function() ns.Browser.Show("quest", entry.quest) end)
			if ns.Q.Available() and #ns.Q.Chain(entry.quest) > 1 then
				root:CreateButton(entry.chain and "Track this quest only" or "Track the quests that lead to it", function()
					entry.chain = not entry.chain or nil
					UI.Layout()
				end)
			end
		elseif entry.gold or entry.skill then
			root:CreateButton("Change the target", function() StartEditing(entry, "special") end)
		else
			root:CreateButton("Edit text", function() StartEditing(entry, "text") end)
		end
		if not entry.text then
			root:CreateButton(entry.note and "Edit comment" or "Add a comment", function() StartEditing(entry, "note") end)
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
	local entry = r.entry
	if r.id then
		ns.ItemTooltip(row, r.id)
		if r.ready then GameTooltip:AddLine("All reagents in hand - ready to craft.", ns.Color("complete")) end
		if entry and entry.note and not r.reagent then GameTooltip:AddLine(entry.note, 1, 0.82, 0, true) end
		GameTooltip:AddLine("Right-click for options. Shift-click to link.", 0.5, 0.5, 0.5)
		if IsModifiedClick("COMPAREITEMS") then
			GameTooltip_ShowCompareItem(GameTooltip)
		elseif GameTooltip_HideShoppingTooltips then
			GameTooltip_HideShoppingTooltips(GameTooltip)
		end
	else
		local info = ns.RowInfo(r)
		GameTooltip:SetOwner(row, "ANCHOR_RIGHT")
		GameTooltip:SetText(info and info.label or entry.text, 1, 1, 1, 1, true)
		if info then GameTooltip:AddLine(info.text, ns.Color(info.have >= info.need and "complete" or "incomplete")) end
		if r.next then GameTooltip:AddLine("This is the step to do now.", 1, 0.82, 0) end
		if entry.note and not r.step then GameTooltip:AddLine(entry.note, 1, 0.82, 0, true) end
		GameTooltip:AddLine(info and (info.kind == "quest" and "Click to look it up. Right-click for options." or "Right-click for options.")
			or "Click to tick off. Right-click for options.", 0.5, 0.5, 0.5)
	end
	GameTooltip:Show()
end

local function CreateEntryRow()
	local row = CreateFrame("Button", nil, content)
	row:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	row:SetHighlightTexture(ns.Style.highlight, "ADD")

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
			fs:SetJustifyH(col.left and "LEFT" or "RIGHT")
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
	need:SetScript("OnEnterPressed", need.ClearFocus)
	need:SetScript("OnEscapePressed", function(self)
		self:SetText(tostring(row.data.need))
		self:ClearFocus()
	end)
	need:SetScript("OnEditFocusLost", function(self)
		local n = tonumber(self:GetText())
		if n and n >= 1 and row.data.entry and not row.data.reagent then row.data.entry.need = n end
		ns.Refresh()
	end)
	need:SetScript("OnEditFocusGained", need.HighlightText)

	local bar = CreateFrame("StatusBar", nil, row)
	row.cells.progress = bar
	bar:SetStatusBarTexture("Interface\\TargetingFrame\\UI-StatusBar")
	bar.bg = bar:CreateTexture(nil, "BACKGROUND")
	bar.bg:SetAllPoints()
	bar.bg:SetColorTexture(0, 0, 0, 0.5)
	bar.text = bar:CreateFontString(nil, "OVERLAY")
	bar.text:SetPoint("CENTER")

	-- entries with reagents or quest steps below them can be folded
	row.toggle = CreateFrame("Button", nil, row)
	row.toggle:SetSize(12, 12)
	row.toggle:SetPoint("RIGHT", row.status, "LEFT", -1, 0)
	row.toggle:SetHighlightTexture("Interface\\Buttons\\UI-PlusButton-Hilight", "ADD")
	row.toggle:SetScript("OnClick", function()
		local entry = row.data.entry
		entry.fold = not entry.fold or nil
		UI.Layout()
	end)
	SimpleTooltip(row.toggle, "Show or hide what this needs")

	row.remove = CreateFrame("Button", nil, row)
	row.remove:SetSize(14, 14)
	row.remove:SetPoint("RIGHT", -2, 0)
	row.remove:SetNormalTexture("Interface\\Buttons\\UI-GroupLoot-Pass-Up")
	row.remove:SetHighlightTexture("Interface\\Buttons\\UI-GroupLoot-Pass-Highlight", "ADD")
	row.remove:SetScript("OnClick", function()
		ns.Remove(row.goal.entries, row.data.entry)
		UI.Layout()
	end)
	SimpleTooltip(row.remove, "Remove")

	row.compare = CreateFrame("Button", nil, row)
	row.compare:SetSize(14, 14)
	row.compare:SetPoint("RIGHT", row.remove, "LEFT", -5, 0)
	row.compare:SetNormalTexture("Interface\\Icons\\INV_Misc_Spyglass_02")
	row.compare:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")
	row.compare:SetScript("OnClick", function() ns.Compare.Open(row.goal, row.data.entry) end)
	SimpleTooltip(row.compare, "Compare with another item")

	row.UpdateTooltip = ShowEntryTooltip -- GameTooltip re-calls this, so Shift toggles comparison live
	row:SetScript("OnEnter", ShowEntryTooltip)
	row:SetScript("OnLeave", ns.HideTips)
	row:SetScript("OnClick", function(self, button)
		local r = self.data
		local entry = r.entry
		if button == "RightButton" then
			EntryMenu(self, self.goal, r)
		elseif r.id then
			local item = ns.GetItem(r.id)
			if not item.pending then HandleModifiedItemClick(item.link) end
		elseif r.quest then
			ns.Browser.Show("quest", r.quest)
		elseif entry and entry.text then
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
	-- how much of the goal is done, drawn as a fill behind the title
	row.fill = row:CreateTexture(nil, "BORDER")
	row.fill:SetPoint("TOPLEFT")
	row.fill:SetPoint("BOTTOMLEFT")
	row:SetHighlightTexture(ns.Style.highlight, "ADD")

	row.toggle = CreateFrame("Button", nil, row)
	row.toggle:SetSize(14, 14)
	row.toggle:SetPoint("LEFT", 2, 0)
	row.toggle:SetHighlightTexture("Interface\\Buttons\\UI-PlusButton-Hilight", "ADD")
	row.toggle:SetScript("OnClick", function()
		row.goal.collapsed = not row.goal.collapsed or nil
		UI.Layout()
	end)

	row.track = CreateFrame("CheckButton", nil, row)
	row.track:SetSize(18, 18)
	row.track:SetPoint("RIGHT", -1, 0)
	row.track:SetNormalTexture("Interface\\Buttons\\UI-CheckBox-Up")
	row.track:SetCheckedTexture("Interface\\Buttons\\UI-CheckBox-Check")
	row.track:SetHighlightTexture("Interface\\Buttons\\UI-CheckBox-Highlight", "ADD")
	row.track:SetScript("OnClick", function(self)
		row.goal.untracked = not self:GetChecked() or nil
		UI.Layout()
	end)
	SimpleTooltip(row.track, "Show in tracker", "Ticked goals appear in the small tracker window.")

	row.summary = row:CreateFontString(nil, "OVERLAY")
	row.summary:SetPoint("RIGHT", row.track, "LEFT", -4, 0)
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
	row:SetScript("OnDoubleClick", function(self) StartEditing(self.goal, "title") end)
	row:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		GameTooltip:SetText(self.goal.title)
		GameTooltip:AddLine("Click to add new entries to this goal.", 1, 1, 1)
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
			local shown = ns.db.columns[col.key] and (col.key ~= "alts" or ns.Alts.Any()) and true or false
			cell:SetShown(shown)
			if shown then
				local w = Scale(ns.db.colWidth["goal:" .. col.key] or col.width)
				cell:ClearAllPoints()
				cell:SetPoint("RIGHT", parent, "RIGHT", x, 0)
				cell:SetSize(w, rowH)
				x = x - w - GAP
			end
		end
	end
	return x
end

local function Comment(entry)
	return entry and entry.note and ("  " .. ns.Hex.dim .. "- " .. entry.note .. "|r") or ""
end

local function FillBar(bar, have, need, text, r, g, b)
	ns.SetFont(bar.text, -1)
	bar:SetMinMaxValues(0, math.max(need, 1))
	bar:SetValue(math.min(have, need))
	bar:SetStatusBarColor(r, g, b)
	bar.text:SetText(text)
	bar.text:SetTextColor(1, 1, 1)
end

local function FillEntry(row, goal, r, rowH)
	row.goal, row.data = goal, r
	local entry = r.entry
	local done = ns.RowDone(r)
	local size = rowH - 4
	local cr, cg, cb = ns.Color(done and "complete" or "incomplete")
	row.status:ClearAllPoints()
	row.status:SetPoint("LEFT", 14 + r.depth * 14, 0)
	row.status:SetSize(size, size)
	row.status:SetVertexColor(1, 1, 1)
	row.icon:SetSize(size, size)
	row.name:SetAlpha(1)
	ns.SetFont(row.name)
	row.remove:SetShown(entry ~= nil and not r.reagent and not r.step)
	row.toggle:SetShown(r.foldable and true or false)
	if r.foldable then row.toggle:SetNormalTexture("Interface\\Buttons\\UI-" .. (entry.fold and "Plus" or "Minus") .. "Button-Up") end
	row.compare:Hide()
	local nameRight = PlaceColumns(row, function(col) return row.cells[col.key] end, rowH - 2)
	local c = row.cells

	if not r.id then -- caption, free-text note, or a quest / gold / skill entry
		local info = ns.RowInfo(r)
		for _, cell in pairs(c) do cell:Hide() end
		if info and info.icon then
			row.icon:SetTexture(info.icon)
		else
			row.icon:SetTexture(nil)
			row.icon:SetWidth(0.01)
		end
		if r.label then
			row.status:SetTexture(nil)
			row.name:SetText(r.label)
			row.name:SetTextColor(ns.Color("title"))
		elseif info then
			row.status:SetTexture(done and CHECK or nil)
			-- quest-chain steps: the one to do now stands out, the ones after it are dimmed
			row.name:SetText((r.next and ns.Hex.gold .. "next:|r " or "") .. info.label .. (r.step and "" or Comment(entry)))
			if r.step and not r.next and not done then row.name:SetTextColor(0.5, 0.5, 0.5) else row.name:SetTextColor(ns.Color("text")) end
			if ns.db.columns.progress then
				c.progress:Show()
				FillBar(c.progress, info.have, info.need, info.text, cr, cg, cb)
			end
		else
			row.status:SetTexture(done and CHECK or "Interface\\Buttons\\UI-CheckBox-Up")
			row.name:SetText(entry.text)
			if done then row.name:SetTextColor(0.5, 0.5, 0.5) else row.name:SetTextColor(ns.Color("text")) end
		end
		if info then
			row.name:SetPoint("RIGHT", row, "RIGHT", nameRight, 0)
		else
			row.name:SetPoint("RIGHT", row.remove, "LEFT", -6, 0)
		end
		return
	end

	local item = ns.GetItem(r.id)
	local bags, bank, warband, total = ns.GetCounts(r.id)

	-- green check: have it. gold check: every reagent is in hand, ready to craft.
	row.status:SetTexture((done or r.ready) and CHECK or nil)
	if not done then row.status:SetVertexColor(1, 0.82, 0) end
	row.icon:SetTexture(item.icon)
	local name = ns.db.qualityColors and ("|c" .. ns.QualityHex(item.quality) .. item.name .. "|r") or item.name
	-- while it is still missing, say which other characters hold it
	local elsewhere = not done and ns.Alts.Summary(r.id)
	row.name:SetText(name .. (elsewhere and ("  " .. ns.Hex.alt .. elsewhere .. "|r") or "") .. (r.reagent and "" or Comment(entry)))
	row.name:SetTextColor(ns.Color("text"))
	row.name:SetPoint("RIGHT", row, "RIGHT", nameRight, 0)
	row.compare:SetShown(not r.reagent and ns.IsEquippable(item.equipLoc))

	for key, cell in pairs(c) do
		if cell.SetTextColor then cell:SetTextColor(ns.Color("text")) end
		if key ~= "progress" then ns.SetFont(cell, -1) end
	end
	-- reagent amounts are computed from the recipe, so only real entries are editable
	c.need:EnableMouse(not r.reagent)
	c.need.bg:SetShown(not r.reagent)
	if not c.need:HasFocus() then c.need:SetText(tostring(r.need)) end
	c.have:SetText(total)
	c.have:SetTextColor(cr, cg, cb)
	c.bags:SetText(bags)
	c.bank:SetText(bank + warband)
	-- gold when your other characters could cover what is still missing
	local onAlts = ns.Alts.Count(r.id)
	c.alts:SetText(onAlts > 0 and onAlts or "")
	if not done and onAlts >= r.need - total then c.alts:SetTextColor(1, 0.82, 0) end
	c.missing:SetText(math.max(0, r.need - total))
	c.missing:SetTextColor(cr, cg, cb)
	FillBar(c.progress, total, r.need, total .. " / " .. r.need, cr, cg, cb)
	c.source:SetText(ns.Wiki.Source(r.id) or "")
	c.source:SetTextColor(0.7, 0.7, 0.7)
	c.ilvl:SetText(item.ilvl or "")
	c.level:SetText(item.reqLevel and item.reqLevel > 0 and item.reqLevel or "")
	c.slot:SetText(ns.IsEquippable(item.equipLoc) and _G[item.equipLoc] or "")
	c.type:SetText(item.subType or item.type or "")
	c.price:SetText(ns.Coins(item.price))
end

local function FillGoal(row, goal, selected, width)
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
	row.title:SetText(goal.title)
	row.title:SetAlpha(1)
	row.title:SetTextColor(ns.Color("title"))
	row.summary:SetText(total > 0 and (done .. " / " .. total) or "")
	row.summary:SetTextColor(ns.Color(total > 0 and done == total and "complete" or "text"))
	row.track:SetChecked(not goal.untracked)
	local r, g, b = ns.Color("title")
	row.bg:SetColorTexture(r, g, b, selected and 0.22 or 0.07)
	local cr, cg, cb = ns.Color("complete")
	row.fill:SetColorTexture(cr, cg, cb, 0.18)
	row.fill:SetWidth(math.max(0.01, width * (total > 0 and done / total or 0)))
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
		FillGoal(row, goal, goal == selected, width)
		if editing == goal then editAnchor = row.title end
		if not goal.collapsed then
			for _, r in ipairs(ns.GoalRows(goal)) do
				local isEdited = r.entry and editing == r.entry and not r.reagent
				local folded = (r.reagent or r.step) and r.entry and r.entry.fold
				if not folded and (not (ns.db.hideCompleted and ns.RowDone(r)) or r.label or isEdited) then
					local erow = Acquire(entryRows, CreateEntryRow)
					Place(erow, rowH)
					FillEntry(erow, goal, r, rowH)
					if isEdited then editAnchor = erow.name end
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
	if input.Instructions then
		input.Instructions:SetText("Add to " .. selected.title .. ": item, link, note, 100g, Cooking 225")
	end
	filterButton:SetActive(ns.ItemDB.FilterActive())

	if editAnchor then
		editAnchor:SetAlpha(0) -- the edit box replaces the text it edits
		editBox:ClearAllPoints()
		editBox:SetPoint("LEFT", editAnchor, "LEFT", 2, 0)
		editBox:SetPoint("RIGHT", editAnchor, "RIGHT", 0, 0)
		editBox:SetHeight(rowH)
		editBox:SetFrameLevel(editAnchor:GetParent():GetFrameLevel() + 5)
		editBox:Show()
	else
		editing, editField = nil, nil
		editBox:Hide()
	end
end

---------------------------------------------------------------------------
-- Adding entries
---------------------------------------------------------------------------

local RESULTS = 200 -- the suggestion list scrolls, so a filter can be browsed like a small wiki

-- "24 longjaw mud snapper" and "longjaw mud snapper x24" carry their own amount.
-- The whole text is tried first: "15 Pound Salmon" is an item, not 15 salmon.
local function SearchInput(text)
	if ns.ParseSpecial(text) then return {} end -- "100g", "Cooking 225": not an item search
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
	local goal = ns.SelectedGoal()
	local special = ns.ParseSpecial(text)
	if special then
		goal.collapsed = nil
		table.insert(goal.entries, special)
	else
		ns.AddNote(goal, text)
	end
	input:SetText("")
	ns.Refresh()
	UI.Layout()
end

---------------------------------------------------------------------------
-- Window
---------------------------------------------------------------------------

-- Right-click on the column captions: which columns, and whose items are counted.
function UI.ColumnMenu(owner)
	MenuUtil.CreateContextMenu(owner, function(_, root)
		root:CreateTitle("Columns")
		for _, col in ipairs(ns.Columns) do
			-- stored as true/false: nil would bring a default column back at the next login
			root:CreateCheckbox(col.label, function() return ns.db.columns[col.key] end, function()
				ns.db.columns[col.key] = not ns.db.columns[col.key]
				UI.Layout()
				ns.Settings.Refresh()
			end)
		end
		ns.Alts.MenuSections(root:CreateButton("Characters"), ns.Refresh)
	end)
end

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
	ns.Browser.Select("goals")
	input:SetFocus()
end

local function IconButton(parent, texture, title, text, onClick)
	local b = CreateFrame("Button", nil, parent)
	b:SetSize(18, 18)
	b:SetNormalTexture(texture)
	b:SetHighlightTexture("Interface\\Buttons\\ButtonHilight-Square", "ADD")
	b:SetScript("OnClick", onClick)
	SimpleTooltip(b, title, text)
	return b
end

function UI.Init()
	frame = ns.CreateWindow("GoalNotesFrame", ns.TITLE)
	UI.frame = frame
	frame:SetSize(ns.db.width, ns.db.height)
	frame:SetScale(ns.db.scale)
	local pos = ns.db.pos
	if pos then frame:SetPoint(pos[1], UIParent, pos[2], pos[3], pos[4]) else frame:SetPoint("CENTER") end
	frame:SetResizable(true)
	frame:SetResizeBounds(430, 240, 1200, 1000)
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

	-- window-level controls sit in the title bar, visible on every tab
	local gear = IconButton(frame, "Interface\\Buttons\\UI-OptionsButton", "Settings",
		"Appearance, columns and behaviour.", function() ns.Settings.Toggle() end)
	gear:SetPoint("TOPLEFT", 14, -8)
	local tracker = IconButton(frame, "Interface\\Icons\\INV_Misc_Note_01", "Tracker",
		"Show or hide the small window that lists what is still missing.", function() ns.Tracker.Toggle() end)
	tracker:SetPoint("LEFT", gear, "RIGHT", 4, 0)

	-- everything of the Goals tab lives in this panel; the wiki tabs replace it (UI/Browser.lua)
	panel = CreateFrame("Frame", nil, frame)
	panel:SetAllPoints()

	-- column captions
	headerRow = CreateFrame("Frame", nil, panel)
	headerRow:SetHeight(14)
	headerRow.name = headerRow:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	headerRow.name:SetPoint("LEFT", 16, 0)
	headerRow.name:SetJustifyH("LEFT")
	headerRow.name:SetText("Goal")
	headerRow:EnableMouse(true)
	headerRow:SetScript("OnMouseUp", function(self, button)
		if button == "RightButton" then UI.ColumnMenu(self) end
	end)
	UI.header = headerRow
	headerRow.cells = {}
	for _, col in ipairs(ns.Columns) do
		local cap = CreateFrame("Frame", nil, headerRow)
		cap.text = cap:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
		cap.text:SetAllPoints()
		cap.text:SetJustifyH(col.left and "LEFT" or (col.center and "CENTER" or "RIGHT"))
		cap.text:SetWordWrap(false)
		cap.text:SetText(col.label)
		SimpleTooltip(cap, col.label, (col.tip and (col.tip .. "\n") or "") .. "Right-click to choose the columns.")
		cap:SetScript("OnMouseUp", function(self, button)
			if button == "RightButton" then UI.ColumnMenu(self) end
		end)
		ns.ColumnGrip(cap, function(width) -- stored for font size 12, like the built-in widths
			ns.db.colWidth["goal:" .. col.key] = width * 12 / ns.db.fontSize
			UI.Layout()
		end)
		headerRow.cells[col.key] = cap
	end
	local line = headerRow:CreateTexture(nil, "ARTWORK")
	line:SetColorTexture(1, 0.82, 0, 0.35)
	line:SetHeight(1)
	line:SetPoint("BOTTOMLEFT", 0, -3)
	line:SetPoint("BOTTOMRIGHT", 0, -3)

	-- list
	scroll = CreateFrame("ScrollFrame", nil, panel, "ScrollFrameTemplate")
	scroll:SetPoint("TOPLEFT", 16, -78)
	scroll:SetPoint("BOTTOMRIGHT", -32, 46)
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
	emptyText:SetPoint("TOPLEFT", 16, -36)
	emptyText:SetPoint("RIGHT", -16, 0)
	emptyText:SetJustifyH("LEFT")
	emptyText:SetText("Type below and press Enter to add something to this goal:\n\n"
		.. "  an item name - pick it from the suggestions\n"
		.. "  \"24 longjaw mud snapper\" - an item with an amount\n"
		.. "  \"100g\" - money to save up\n"
		.. "  \"Cooking 225\" - a profession skill to reach\n"
		.. "  any other text - a note you tick off yourself\n\n"
		.. "Shift-click an item anywhere in the game to link it into the box. "
		.. "Crafted items list their reagents automatically. Quests are added from the Quests tab "
		.. "and bring the quests that lead to them along as steps.")

	editBox = CreateFrame("EditBox", nil, content, "InputBoxTemplate")
	editBox:SetAutoFocus(false)
	editBox:SetMaxLetters(80)
	editBox:Hide()
	editBox:SetScript("OnEnterPressed", function() StopEditing(true) end)
	editBox:SetScript("OnEscapePressed", function() StopEditing(false) end)
	editBox:SetScript("OnEditFocusLost", function() StopEditing(true) end)

	-- add bar: one row
	local newGoal = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
	newGoal:SetSize(62, 22)
	newGoal:SetPoint("BOTTOMLEFT", 16, 18)
	newGoal:SetText("+ Goal")
	newGoal:SetScript("OnClick", function() StartEditing(ns.AddGoal(), "title") end)
	SimpleTooltip(newGoal, "New goal", "Goals group what you are collecting: a set, a profession, a mount.")

	-- the same filter as the Items tab, here narrowing the suggestions
	filterButton = ns.Filters.FilterButton(panel, function() return "item" end, function()
		UI.Layout()
		input:SetFocus()
		input.ac:Update()
	end)
	filterButton:SetPoint("BOTTOMRIGHT", -28, 20)

	local add = CreateFrame("Button", nil, panel, "UIPanelButtonTemplate")
	add:SetSize(46, 22)
	add:SetPoint("RIGHT", filterButton, "LEFT", -4, 0)
	add:SetText("Add")

	qtyBox = CreateFrame("EditBox", nil, panel, "InputBoxTemplate")
	qtyBox:SetSize(34, 20)
	qtyBox:SetPoint("RIGHT", add, "LEFT", -6, 0)
	qtyBox:SetAutoFocus(false)
	qtyBox:SetNumeric(true)
	qtyBox:SetMaxLetters(5)
	qtyBox:SetJustifyH("CENTER")
	qtyBox:SetText("1")
	qtyBox:SetScript("OnEscapePressed", qtyBox.ClearFocus)
	SimpleTooltip(qtyBox, "Amount needed")

	input = CreateFrame("EditBox", nil, panel, "SearchBoxTemplate")
	input:SetHeight(20)
	input:SetPoint("LEFT", newGoal, "RIGHT", 10, 0)
	input:SetPoint("RIGHT", qtyBox, "LEFT", -12, 0)
	input:SetMaxLetters(120)
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
