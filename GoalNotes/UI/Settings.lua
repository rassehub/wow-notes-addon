local _, ns = ...

local Settings = {}
ns.Settings = Settings

local frame
local refreshers = {} -- re-read every control from the saved settings

local function Changed()
	ns.ApplyTheme()
end

local function Section(text, x, y)
	local fs = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	fs:SetPoint("TOPLEFT", x, y)
	fs:SetText(text)
end

local function Check(label, x, y, get, set)
	local cb = CreateFrame("CheckButton", nil, frame, "UICheckButtonTemplate")
	cb:SetSize(24, 24)
	cb:SetPoint("TOPLEFT", x, y)
	cb.Text:SetText(label)
	cb.Text:SetFontObject("GameFontHighlightSmall")
	cb:SetScript("OnClick", function(self)
		set(self:GetChecked() and true or false)
		PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON)
		Changed()
	end)
	refreshers[#refreshers + 1] = function() cb:SetChecked(get()) end
end

-- applyOnRelease: for the scale slider, which would otherwise resize the UI under the cursor mid-drag
local function Slider(label, x, y, min, max, step, format, get, set, applyOnRelease)
	local s = CreateFrame("Slider", nil, frame, "OptionsSliderTemplate")
	s:SetWidth(200)
	s:SetPoint("TOPLEFT", x, y)
	s:SetMinMaxValues(min, max)
	s:SetValueStep(step)
	s:SetObeyStepOnDrag(true)
	s.Low:SetText(format(min))
	s.High:SetText(format(max))
	local function Value()
		return math.floor(s:GetValue() / step + 0.5) * step
	end
	s:SetScript("OnValueChanged", function(_, _, userInput)
		s.Text:SetText(label .. ": " .. format(Value()))
		if userInput and not applyOnRelease then
			set(Value())
			Changed()
		end
	end)
	if applyOnRelease then
		s:HookScript("OnMouseUp", function()
			set(Value())
			Changed()
		end)
	end
	refreshers[#refreshers + 1] = function() s:SetValue(get()) end
end

local function Swatch(label, x, y, key)
	local b = CreateFrame("Button", nil, frame)
	b:SetSize(16, 16)
	b:SetPoint("TOPLEFT", x, y)
	local border = b:CreateTexture(nil, "BACKGROUND")
	border:SetPoint("TOPLEFT", -1, 1)
	border:SetPoint("BOTTOMRIGHT", 1, -1)
	border:SetColorTexture(1, 1, 1)
	local color = b:CreateTexture(nil, "ARTWORK")
	color:SetAllPoints()
	local text = b:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
	text:SetPoint("LEFT", b, "RIGHT", 6, 0)
	text:SetText(label)

	local function Set(r, g, bl)
		ns.db.colors[key] = { r, g, bl }
		color:SetColorTexture(r, g, bl)
		Changed()
	end
	b:SetScript("OnClick", function()
		local r, g, bl = ns.Color(key)
		ColorPickerFrame:SetupColorPickerAndShow({
			r = r, g = g, b = bl, hasOpacity = false,
			swatchFunc = function() Set(ColorPickerFrame:GetColorRGB()) end,
			cancelFunc = function() Set(r, g, bl) end,
		})
	end)
	refreshers[#refreshers + 1] = function() color:SetColorTexture(ns.Color(key)) end
end

local function Setting(key)
	return function() return ns.db[key] end, function(v) ns.db[key] = v end
end

local function Percent(v)
	return math.floor(v * 100 + 0.5) .. "%"
end

function Settings.Refresh()
	for _, fn in ipairs(refreshers) do fn() end
end

function Settings.Toggle()
	frame:SetShown(not frame:IsShown())
end

function Settings.Init()
	frame = ns.CreateWindow("GoalNotesSettingsFrame", ns.TITLE .. " Settings")
	Settings.frame = frame
	frame:SetFrameStrata("HIGH")
	frame:SetSize(500, 452)
	frame:SetPoint("CENTER")
	frame:RegisterForDrag("LeftButton")
	frame:SetScript("OnDragStart", frame.StartMoving)
	frame:SetScript("OnDragStop", frame.StopMovingOrSizing)
	frame:SetScript("OnShow", Settings.Refresh)
	table.insert(UISpecialFrames, "GoalNotesSettingsFrame")

	local L, R = 24, 260 -- left and right column

	Section("Appearance", L, -34)
	Slider("Background opacity", L + 4, -72, 0, 1, 0.05, Percent, Setting("opacity"))
	Slider("Window scale", L + 4, -116, 0.6, 1.5, 0.05, Percent,
		function() return ns.db.scale end, function(v) ns.db.scale = v end, true)
	Slider("Font size", L + 4, -160, 9, 18, 1, tostring, Setting("fontSize"))
	Check("Slim border", L, -186, Setting("slimBorder"))
	Check("Color item names by quality", L, -208, Setting("qualityColors"))
	Swatch("Goal titles", L + 4, -240, "title")
	Swatch("Text", L + 114, -240, "text")
	Swatch("Complete", L + 4, -262, "complete")
	Swatch("Incomplete", L + 114, -262, "incomplete")

	Section("Columns", R, -34)
	for i, col in ipairs(ns.Columns) do
		local x = R + ((i - 1) % 2) * 110
		local y = -52 - math.floor((i - 1) / 2) * 22
		Check(col.label, x, y,
			function() return ns.db.columns[col.key] end,
			function(v) ns.db.columns[col.key] = v end) -- false, not nil: nil would fall back to the default
	end

	Section("Goal list", R, -200)
	Check("Hide completed entries", R, -218, Setting("hideCompleted"))
	Check("Count warband bank", R, -240, Setting("includeWarband"))
	Check("Announce completed entries in chat", R, -262, Setting("announce"))
	Check("Track reagents of craftable items", R, -284, Setting("autoCraft"))
	Check("Show goals in item tooltips", R, -306, Setting("tooltipInfo"))

	Section("Windows", L, -296)
	Check("Show tracker window", L, -314, Setting("tracker"))
	Check("Show minimap button", L, -336, Setting("minimap"))
	Check("Lock position and size", L, -358, Setting("locked"))
	Check("Close with Escape", L, -380, Setting("closeOnEscape"))

	local characters = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
	characters:SetSize(140, 22)
	characters:SetPoint("BOTTOMLEFT", 170, 18)
	characters:SetText("Characters...")
	characters:SetScript("OnClick", function(self) ns.Alts.Menu(self) end)

	local reset = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
	reset:SetSize(140, 22)
	reset:SetPoint("BOTTOMLEFT", 20, 18)
	reset:SetText("Reset appearance")
	reset:SetScript("OnClick", function()
		local d = ns.defaults
		ns.db.opacity, ns.db.scale, ns.db.fontSize = d.opacity, d.scale, d.fontSize
		ns.db.slimBorder, ns.db.qualityColors = d.slimBorder, d.qualityColors
		ns.db.colors, ns.db.columns, ns.db.colWidth = CopyTable(d.colors), CopyTable(d.columns), {}
		Settings.Refresh()
		Changed()
	end)

	local resetPos = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
	resetPos:SetSize(140, 22)
	resetPos:SetPoint("LEFT", reset, "RIGHT", 8, 0)
	resetPos:SetText("Reset positions")
	resetPos:SetScript("OnClick", function()
		ns.UI.ResetPosition()
		ns.Tracker.ResetPosition()
	end)
end
