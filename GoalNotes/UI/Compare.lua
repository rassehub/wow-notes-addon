local _, ns = ...

-- Compare a goal item with any other item of the same slot: a stat-by-stat table,
-- plus both full tooltips underneath for effects that are not plain stats.

local Compare = {}
ns.Compare = Compare

local frame, box, tipA, tipB
local rows = {}
local goal, entry, otherId

-- Slots that can sensibly replace each other.
local GROUP = {
	INVTYPE_ROBE = "INVTYPE_CHEST",
	INVTYPE_WEAPON = "WEAPON", INVTYPE_2HWEAPON = "WEAPON", INVTYPE_WEAPONMAINHAND = "WEAPON",
	INVTYPE_WEAPONOFFHAND = "WEAPON", INVTYPE_SHIELD = "OFFHAND", INVTYPE_HOLDABLE = "OFFHAND",
	INVTYPE_RANGED = "RANGED", INVTYPE_RANGEDRIGHT = "RANGED", INVTYPE_THROWN = "RANGED", INVTYPE_RELIC = "RANGED",
}
local function SlotGroup(equipLoc)
	return GROUP[equipLoc] or equipLoc
end

local function SameSlot(id)
	if id == entry.id then return false end
	local _, _, _, equipLoc = C_Item.GetItemInfoInstant(id)
	local _, _, _, mine = C_Item.GetItemInfoInstant(entry.id)
	return SlotGroup(equipLoc) == SlotGroup(mine)
end

local function Format(v)
	if not v then return "-" end
	return v == math.floor(v) and tostring(v) or ("%.1f"):format(v)
end

local function Row(i)
	local row = rows[i]
	if row then return row end
	row = CreateFrame("Frame", nil, frame)
	row:SetHeight(16)
	row:SetPoint("TOPLEFT", 20, -128 - (i - 1) * 16)
	row:SetPoint("RIGHT", -20, 0)
	row.label = row:CreateFontString(nil, "OVERLAY", "GameFontNormalSmall")
	row.label:SetPoint("LEFT")
	row.label:SetWidth(170)
	row.label:SetJustifyH("LEFT")
	row.label:SetWordWrap(false)
	for n, key in ipairs({ "a", "b", "diff" }) do
		local fs = row:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
		fs:SetPoint("LEFT", 110 + n * 70, 0)
		fs:SetWidth(64)
		fs:SetJustifyH("RIGHT")
		row[key] = fs
	end
	rows[i] = row
	return row
end

local function SetRow(i, label, a, b)
	local row = Row(i)
	row.label:SetText(label)
	row.a:SetText(Format(a))
	row.b:SetText(Format(b))
	local diff = (b or 0) - (a or 0)
	if diff > 0 then
		row.diff:SetText("+" .. Format(diff))
		row.diff:SetTextColor(ns.Color("complete"))
	elseif diff < 0 then
		row.diff:SetText(Format(diff))
		row.diff:SetTextColor(1, 0.25, 0.25)
	else
		row.diff:SetText("=")
		row.diff:SetTextColor(0.5, 0.5, 0.5)
	end
	row:Show()
end

local function SetSlot(slot, item)
	slot.icon:SetTexture(item and item.icon or "Interface\\PaperDoll\\UI-Backpack-EmptySlot")
	slot.name:SetText(item and ("|c" .. ns.QualityHex(item.quality) .. item.name .. "|r") or ns.Hex.grey .. "Pick an item to compare|r")
end

local function ShowTip(tip, item, anchorTo, point)
	tip:SetOwner(frame, "ANCHOR_NONE")
	tip:ClearAllPoints()
	tip:SetPoint("TOPLEFT", anchorTo, point, point == "TOPRIGHT" and 2 or 0, point == "TOPRIGHT" and 0 or -2)
	tip:SetHyperlink(item.link)
	tip:Show()
end

function Compare.Update()
	-- the entry may have been removed or replaced while this window was open
	local present = goal == nil -- opened from the wiki: not tied to a goal entry
	for _, e in ipairs(goal and goal.entries or {}) do
		if e == entry then present = true end
	end
	if not present or not entry.id then return frame:Hide() end

	local a = ns.GetItem(entry.id)
	local b = otherId and ns.GetItem(otherId)
	SetSlot(frame.slotA, a)
	SetSlot(frame.slotB, b)
	for _, row in ipairs(rows) do row:Hide() end
	frame.replace:SetShown(goal ~= nil)
	frame.replace:SetEnabled(b ~= nil)
	frame.addToo:SetEnabled(b ~= nil)
	frame.addToo:SetText(goal and "Add to goal as well" or "Add the other to goal")

	local n = 0
	if b then
		local statsA = C_Item.GetItemStats(a.link) or {}
		local statsB = C_Item.GetItemStats(b.link) or {}
		n = 2
		SetRow(1, "Item Level", a.ilvl, b.ilvl)
		SetRow(2, "Required Level", a.reqLevel, b.reqLevel)
		local keys, seen = {}, {}
		for _, stats in ipairs({ statsA, statsB }) do
			for key in pairs(stats) do
				if not seen[key] then
					seen[key] = true
					keys[#keys + 1] = key
				end
			end
		end
		local function Label(key) return _G[key] or key end
		table.sort(keys, function(x, y) return Label(x) < Label(y) end)
		for _, key in ipairs(keys) do
			n = n + 1
			SetRow(n, Label(key), statsA[key], statsB[key])
		end
		ShowTip(tipA, a, frame, "BOTTOMLEFT")
		ShowTip(tipB, b, tipA, "TOPRIGHT")
	else
		tipA:Hide()
		tipB:Hide()
	end
	frame.columns:SetShown(b ~= nil)
	frame:SetHeight(176 + n * 16)
end

function Compare.Open(g, e)
	goal, entry, otherId = g, e, nil
	frame:Show()
	Compare.Update()
	box:SetText("")
	box:SetFocus()
end

local function CreateSlot(y)
	local slot = CreateFrame("Frame", nil, frame)
	slot:SetSize(1, 22)
	slot:SetPoint("TOPLEFT", 20, y)
	slot:SetPoint("RIGHT", -20, 0)
	slot.icon = slot:CreateTexture(nil, "ARTWORK")
	slot.icon:SetSize(20, 20)
	slot.icon:SetPoint("LEFT")
	slot.name = slot:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
	slot.name:SetPoint("LEFT", slot.icon, "RIGHT", 6, 0)
	slot.name:SetPoint("RIGHT")
	slot.name:SetJustifyH("LEFT")
	slot.name:SetWordWrap(false)
	return slot
end

function Compare.Init()
	frame = ns.CreateWindow("GoalNotesCompareFrame", "Compare Items")
	Compare.frame = frame
	frame:SetFrameStrata("HIGH")
	frame:SetSize(360, 176)
	frame:SetPoint("CENTER", 0, 120)
	frame:RegisterForDrag("LeftButton")
	frame:SetScript("OnDragStart", frame.StartMoving)
	frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
	frame:SetScript("OnHide", function()
		tipA:Hide()
		tipB:Hide()
	end)
	table.insert(UISpecialFrames, "GoalNotesCompareFrame")

	frame.slotA = CreateSlot(-32)

	box = CreateFrame("EditBox", nil, frame, "SearchBoxTemplate")
	box:SetHeight(20)
	box:SetPoint("TOPLEFT", 26, -58)
	box:SetPoint("RIGHT", -22, 0)
	if box.Instructions then box.Instructions:SetText("Compare with... (name or shift-click)") end
	ns.AttachAutocomplete(box, {
		search = function(text) return ns.ItemDB.Search(text, 8, SameSlot) end,
		onPick = function(result)
			otherId = result.id
			box:SetText("")
			box:ClearFocus()
			Compare.Update()
		end,
	})

	frame.slotB = CreateSlot(-82)

	-- table captions
	frame.columns = CreateFrame("Frame", nil, frame)
	frame.columns:SetHeight(14)
	frame.columns:SetPoint("TOPLEFT", 20, -110)
	frame.columns:SetPoint("RIGHT", -20, 0)
	for n, text in ipairs({ "Goal", "Other", "Change" }) do
		local fs = frame.columns:CreateFontString(nil, "OVERLAY", "GameFontDisableSmall")
		fs:SetPoint("LEFT", 110 + n * 70, 0)
		fs:SetWidth(64)
		fs:SetJustifyH("RIGHT")
		fs:SetText(text)
	end

	frame.replace = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
	frame.replace:SetSize(150, 22)
	frame.replace:SetPoint("BOTTOMLEFT", 18, 16)
	frame.replace:SetText("Use as goal instead")
	frame.replace:SetScript("OnClick", function()
		entry.id = otherId
		frame:Hide()
		ns.Refresh()
		ns.UI.Layout()
	end)

	frame.addToo = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
	frame.addToo:SetSize(150, 22)
	frame.addToo:SetPoint("BOTTOMRIGHT", -18, 16)
	frame.addToo:SetText("Add to goal as well")
	frame.addToo:SetScript("OnClick", function()
		ns.AddItem(goal or ns.SelectedGoal(), otherId, entry.need)
		frame:Hide()
		ns.Refresh()
		ns.UI.Layout()
	end)

	tipA = CreateFrame("GameTooltip", "GoalNotesCompareTooltipA", frame, "GameTooltipTemplate")
	tipB = CreateFrame("GameTooltip", "GoalNotesCompareTooltipB", frame, "GameTooltipTemplate")
end
