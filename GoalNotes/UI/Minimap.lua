local _, ns = ...

-- Minimap button. Drag it around the minimap edge; the angle is saved.

local MinimapButton = {}
ns.MinimapButton = MinimapButton

local button

local function Place()
	local angle = math.rad(ns.db.minimapAngle)
	local radius = Minimap:GetWidth() / 2 + 5
	button:ClearAllPoints()
	button:SetPoint("CENTER", Minimap, "CENTER", math.cos(angle) * radius, math.sin(angle) * radius)
end

local function FollowCursor()
	local mx, my = Minimap:GetCenter()
	local cx, cy = GetCursorPosition()
	local scale = Minimap:GetEffectiveScale()
	ns.db.minimapAngle = math.deg(math.atan2(cy / scale - my, cx / scale - mx))
	Place()
end

-- The right-click menu: the tracker, and what is drawn on the world map.
function MinimapButton.Menu(owner)
	MenuUtil.CreateContextMenu(owner, function(_, root)
		root:CreateButton("Show or hide the tracker", ns.Tracker.Toggle)
		ns.Nodes.MenuSections(root)
	end)
end

function MinimapButton.Apply()
	button:SetShown(ns.db.minimap)
	Place()
end

function MinimapButton.Init()
	button = CreateFrame("Button", "GoalNotesMinimapButton", Minimap)
	MinimapButton.button = button
	button:SetSize(31, 31)
	button:SetFrameStrata("MEDIUM")
	button:SetFrameLevel(8)
	button:RegisterForClicks("LeftButtonUp", "RightButtonUp", "MiddleButtonUp")
	button:RegisterForDrag("LeftButton")
	button:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")

	local background = button:CreateTexture(nil, "BACKGROUND")
	background:SetTexture("Interface\\Minimap\\UI-Minimap-Background")
	background:SetSize(20, 20)
	background:SetPoint("TOPLEFT", 7, -5)
	local icon = button:CreateTexture(nil, "ARTWORK")
	icon:SetTexture("Interface\\Icons\\INV_Misc_Note_01")
	icon:SetTexCoord(0.07, 0.93, 0.07, 0.93)
	icon:SetSize(18, 18)
	icon:SetPoint("TOPLEFT", 7, -6)
	local border = button:CreateTexture(nil, "OVERLAY")
	border:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
	border:SetSize(53, 53)
	border:SetPoint("TOPLEFT")

	button:SetScript("OnClick", function(_, mouseButton)
		if mouseButton == "RightButton" then
			MinimapButton.Menu(button)
		elseif mouseButton == "MiddleButton" or IsShiftKeyDown() then
			ns.Settings.Toggle()
		else
			ns.UI.Toggle()
		end
	end)
	button:SetScript("OnDragStart", function(self) self:SetScript("OnUpdate", FollowCursor) end)
	button:SetScript("OnDragStop", function(self) self:SetScript("OnUpdate", nil) end)
	button:SetScript("OnEnter", function(self)
		GameTooltip:SetOwner(self, "ANCHOR_LEFT")
		GameTooltip:SetText(ns.TITLE)
		GameTooltip:AddLine("Left-click: goal list", 1, 1, 1)
		GameTooltip:AddLine("Right-click: tracker, and what is shown on the world map", 1, 1, 1)
		GameTooltip:AddLine("Shift-click: settings", 1, 1, 1)
		GameTooltip:AddLine("Drag: move this button", 0.5, 0.5, 0.5)
		GameTooltip:Show()
	end)
	button:SetScript("OnLeave", GameTooltip_Hide)

	MinimapButton.Apply()
end
