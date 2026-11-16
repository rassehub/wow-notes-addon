local _, ns = ...

-- A small always-on list of what is still missing for the tracked goals.
-- Goals are tracked unless switched off in their right-click menu.

local Tracker = {}
ns.Tracker = Tracker

local frame
local lines = {}
local MAX_LINES = 30 -- keeps the window on screen; the rest is summarised in one line

local function SavePlace()
	local point, _, relPoint, x, y = frame:GetPoint(1)
	ns.db.trackerPos = { point, relPoint, x, y }
end

-- Are the entry's own rows (reagents, quest steps) hidden in the tracker? Quest chains start
-- folded, showing just the step to do now; recipes start open.
function Tracker.Folded(entry)
	if entry.trackerFold ~= nil then return entry.trackerFold end
	return (entry.via or entry.chain) and true or false
end

local function CreateLine(i)
	local line = CreateFrame("Button", nil, frame)
	-- plus/minus on goals and on entries that have rows of their own
	line.toggle = CreateFrame("Button", nil, line)
	line.toggle:SetSize(12, 12)
	line.toggle:SetHighlightTexture("Interface\\Buttons\\UI-PlusButton-Hilight", "ADD")
	line.toggle:SetScript("OnClick", function()
		if line.entry then
			line.entry.trackerFold = not Tracker.Folded(line.entry)
		elseif line.goal then
			line.goal.trackerCollapsed = not line.goal.trackerCollapsed or nil
		end
		Tracker.Update()
	end)
	line.left = line:CreateFontString(nil, "OVERLAY")
	line.left:SetJustifyH("LEFT")
	line.left:SetWordWrap(false)
	line.right = line:CreateFontString(nil, "OVERLAY")
	line.right:SetPoint("RIGHT")
	line.right:SetJustifyH("RIGHT")
	line.left:SetPoint("RIGHT", line.right, "LEFT", -6, 0)
	line:SetHighlightTexture(ns.Style.highlight, "ADD")
	-- the lines cover the frame, so they have to pass dragging on
	line:RegisterForDrag("LeftButton")
	line:SetScript("OnDragStart", function() if not ns.db.locked then frame:StartMoving() end end)
	line:SetScript("OnDragStop", function()
		frame:StopMovingOrSizing()
		SavePlace()
	end)
	line:RegisterForClicks("LeftButtonUp", "RightButtonUp")
	line:SetScript("OnClick", function(self, button)
		if self.id then
			ns.Browser.Show("item", self.id)
		elseif self.quest then
			ns.Browser.Show("quest", self.quest)
		elseif self.goal and button ~= "RightButton" then
			self.goal.trackerCollapsed = not self.goal.trackerCollapsed or nil
			Tracker.Update()
		else
			ns.UI.frame:Show()
		end
	end)
	line:SetScript("OnEnter", function(self)
		if self.id then
			ns.ItemTooltip(self, self.id, "ANCHOR_LEFT")
		else
			GameTooltip:SetOwner(self, "ANCHOR_LEFT")
			GameTooltip:SetText(ns.TITLE)
		end
		GameTooltip:AddLine((self.id or self.quest) and "Click to look it up. Drag to move."
			or self.goal and "Click to fold. Right-click to open Goal Notes. Drag to move."
			or self.entry and "Click to look it up. Use +/- to show or hide what it needs."
			or "Click to open Goal Notes. Drag to move.", 0.5, 0.5, 0.5)
		GameTooltip:Show()
	end)
	line:SetScript("OnLeave", ns.HideTips)
	lines[i] = line
	return line
end

function Tracker.Update()
	if not frame or not frame:IsShown() then return end
	local lineH = ns.db.fontSize + 3
	local n = 0

	local skipped = 0
	local function Add(left, right, indent, id, r, g, b)
		if n >= MAX_LINES then
			skipped = skipped + 1
			return {}
		end
		n = n + 1
		local line = lines[n] or CreateLine(n)
		line.id, line.quest, line.goal, line.entry = id, nil, nil, nil
		line.toggle:Hide()
		line.toggle:ClearAllPoints()
		line.toggle:SetPoint("LEFT", indent * 10, 0)
		line:ClearAllPoints()
		line:SetPoint("TOPLEFT", 8, -8 - (n - 1) * lineH)
		line:SetPoint("RIGHT", -8, 0)
		line:SetHeight(lineH)
		ns.SetFont(line.left, indent == 0 and 0 or -1)
		ns.SetFont(line.right, -1)
		line.left:SetPoint("LEFT", indent * 10 + 13, 0) -- room for the toggle
		line.left:SetText(left)
		line.left:SetTextColor(r, g, b)
		line.right:SetText(right or "")
		line.right:SetTextColor(r, g, b)
		line:Show()
		return line
	end

	local function Foldable(line, folded)
		if not line.toggle then return end -- past the line limit
		line.toggle:SetNormalTexture("Interface\\Buttons\\UI-" .. (folded and "Plus" or "Minus") .. "Button-Up")
		line.toggle:Show()
	end

	for _, goal in ipairs(ns.Goals()) do
		if not goal.untracked then
			local done = 0
			for _, e in ipairs(goal.entries) do
				if ns.EntryDone(e) then done = done + 1 end
			end
			local complete = #goal.entries > 0 and done == #goal.entries
			local title = Add(goal.title, #goal.entries > 0 and (done .. "/" .. #goal.entries) or "", 0, nil,
				ns.Color(complete and "complete" or "title"))
			title.goal = goal
			Foldable(title, goal.trackerCollapsed)
			for _, row in ipairs(goal.trackerCollapsed and {} or ns.GoalRows(goal)) do
				-- a folded entry hides its reagents and quest steps, except the step to do now
				local folded = (row.reagent or row.step) and row.entry and Tracker.Folded(row.entry)
				if not row.label and not ns.RowDone(row) and not (folded and not row.next) then
					local info = ns.RowInfo(row)
					local line
					if info then
						line = Add((row.next and "next: " or "") .. info.label, info.text, row.depth + 1, nil, ns.Color("text"))
						line.quest = row.quest
					elseif row.id then
						local item = ns.GetItem(row.id)
						local _, _, _, total = ns.GetCounts(row.id)
						local name = ns.db.qualityColors and ("|c" .. ns.QualityHex(item.quality) .. item.name .. "|r") or item.name
						local elsewhere = ns.Alts.Summary(row.id) -- who else holds what is missing
						if elsewhere then name = name .. "  " .. ns.Hex.alt .. elsewhere .. "|r" end
						line = Add(name, total .. "/" .. row.need, row.depth + 1, row.id, ns.Color(row.ready and "complete" or "text"))
					else
						line = Add(row.entry.text, nil, 1, nil, ns.Color("text"))
					end
					if row.foldable then
						line.entry = row.entry
						Foldable(line, Tracker.Folded(row.entry))
					end
				end
			end
		end
	end
	if n == 0 then
		Add("No tracked goals", nil, 0, nil, 0.5, 0.5, 0.5)
	end
	if skipped > 0 then
		lines[n].id, lines[n].quest, lines[n].goal = nil, nil, nil
		lines[n].left:SetText("... and " .. (skipped + 1) .. " more lines")
		lines[n].left:SetTextColor(0.5, 0.5, 0.5)
		lines[n].right:SetText("")
	end
	for i = n + 1, #lines do lines[i]:Hide() end
	frame:SetSize(ns.db.fontSize * 20, n * lineH + 16)
end

-- Follows the settings: visibility, scale, opacity.
function Tracker.Apply()
	frame:SetShown(ns.db.tracker)
	frame:SetScale(ns.db.scale)
	frame:SetBackdropColor(0, 0, 0, ns.db.opacity * 0.75)
	frame:SetBackdropBorderColor(1, 1, 1, ns.db.opacity)
	Tracker.Update()
end

function Tracker.Toggle()
	ns.db.tracker = not ns.db.tracker
	Tracker.Apply()
	ns.Settings.Refresh()
end

function Tracker.ResetPosition()
	ns.db.trackerPos = nil
	frame:ClearAllPoints()
	frame:SetPoint("RIGHT", UIParent, "RIGHT", -260, 0)
end

function Tracker.Init()
	frame = CreateFrame("Frame", "GoalNotesTracker", UIParent, "BackdropTemplate")
	Tracker.frame = frame
	frame:SetFrameStrata("LOW")
	frame:SetClampedToScreen(true)
	frame:SetMovable(true)
	frame:SetBackdrop({
		bgFile = "Interface\\Tooltips\\UI-Tooltip-Background",
		edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
		tile = true, tileSize = 16, edgeSize = 12,
		insets = { left = 3, right = 3, top = 3, bottom = 3 },
	})
	local pos = ns.db.trackerPos
	if pos then
		frame:SetPoint(pos[1], UIParent, pos[2], pos[3], pos[4])
	else
		Tracker.ResetPosition()
	end
	Tracker.Apply()
end
