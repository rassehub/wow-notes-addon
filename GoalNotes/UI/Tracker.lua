local _, ns = ...

-- A small always-on list of what is still missing for the tracked goals.
-- Goals are tracked unless switched off in their right-click menu.

local Tracker = {}
ns.Tracker = Tracker

local frame
local lines = {}
local MAX_LINES = 40

local function SavePlace()
	local point, _, relPoint, x, y = frame:GetPoint(1)
	ns.db.trackerPos = { point, relPoint, x, y }
end

local function CreateLine(i)
	local line = CreateFrame("Button", nil, frame)
	line.left = line:CreateFontString(nil, "OVERLAY")
	line.left:SetJustifyH("LEFT")
	line.left:SetWordWrap(false)
	line.right = line:CreateFontString(nil, "OVERLAY")
	line.right:SetPoint("RIGHT")
	line.right:SetJustifyH("RIGHT")
	line.left:SetPoint("RIGHT", line.right, "LEFT", -6, 0)
	line:SetHighlightTexture("Interface\\QuestFrame\\UI-QuestTitleHighlight", "ADD")
	-- the lines cover the frame, so they have to pass dragging on
	line:RegisterForDrag("LeftButton")
	line:SetScript("OnDragStart", function() if not ns.db.locked then frame:StartMoving() end end)
	line:SetScript("OnDragStop", function()
		frame:StopMovingOrSizing()
		SavePlace()
	end)
	line:SetScript("OnClick", function(self)
		if self.id then ns.Browser.Show("item", self.id) else ns.UI.frame:Show() end
	end)
	line:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_LEFT")
		if self.id then
			GameTooltip:SetHyperlink(ns.GetItem(self.id).link)
			ns.Recipes.AddTooltipLines(GameTooltip, self.id)
			GameTooltip:AddLine(" ")
		else
			GameTooltip:SetText(ns.TITLE)
		end
		GameTooltip:AddLine(self.id and "Click to look it up. Drag to move." or "Click to open Goal Notes. Drag to move.", 0.5, 0.5, 0.5)
		GameTooltip:Show()
	end)
	line:SetScript("OnLeave", GameTooltip_Hide)
	lines[i] = line
	return line
end

function Tracker.Update()
	if not frame or not frame:IsShown() then return end
	local lineH = ns.db.fontSize + 3
	local n = 0

	local function Add(left, right, indent, id, r, g, b)
		if n >= MAX_LINES then return end
		n = n + 1
		local line = lines[n] or CreateLine(n)
		line.id = id
		line:ClearAllPoints()
		line:SetPoint("TOPLEFT", 8, -8 - (n - 1) * lineH)
		line:SetPoint("RIGHT", -8, 0)
		line:SetHeight(lineH)
		ns.SetFont(line.left, indent == 0 and 0 or -1)
		ns.SetFont(line.right, -1)
		line.left:SetPoint("LEFT", indent * 10, 0)
		line.left:SetText(left)
		line.left:SetTextColor(r, g, b)
		line.right:SetText(right or "")
		line.right:SetTextColor(r, g, b)
		line:Show()
	end

	for _, goal in ipairs(ns.Goals()) do
		if not goal.untracked then
			local done = 0
			for _, e in ipairs(goal.entries) do
				if ns.EntryDone(e) then done = done + 1 end
			end
			local complete = #goal.entries > 0 and done == #goal.entries
			Add(goal.title, #goal.entries > 0 and (done .. "/" .. #goal.entries) or "", 0, nil,
				ns.Color(complete and "complete" or "title"))
			for _, row in ipairs(ns.GoalRows(goal)) do
				if not row.label and not ns.RowDone(row) then
					if row.id then
						local item = ns.GetItem(row.id)
						local _, _, _, total = ns.GetCounts(row.id)
						local name = ns.db.qualityColors and ("|c" .. ns.QualityHex(item.quality) .. item.name .. "|r") or item.name
						Add(name, total .. "/" .. row.need, row.depth + 1, row.id, ns.Color(row.ready and "complete" or "text"))
					else
						Add(row.entry.text, nil, 1, nil, ns.Color("text"))
					end
				end
			end
		end
	end
	if n == 0 then
		Add("No tracked goals", nil, 0, nil, 0.5, 0.5, 0.5)
	end
	for i = n + 1, #lines do lines[i]:Hide() end
	frame:SetSize(ns.db.fontSize * 19, n * lineH + 16)
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
