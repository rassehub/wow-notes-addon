local _, ns = ...

-- Gathering nodes (Data/Nodes.lua, from GatherLite's database) as icons on the world map.
-- Works on Blizzard's map and on OpenMap's stitched one: there the map underneath is only
-- the zone the view is on, so every zone in view is placed through OpenMapAPI (see
-- docs/api.md in the OpenMap repository). Off until switched on from the minimap button's
-- right-click menu, which also picks the node types.

local Nodes = {}
ns.Nodes = Nodes

local MAX_PINS = 1500 -- more icons than that only hide the map: beyond it they are thinned out
local KINDS = { "Mining", "Herbalism", "Chests", "Fishing" }
local KIND_ICONS = {
	Mining = "Interface\\Icons\\Trade_Mining", Herbalism = "Interface\\Icons\\Trade_Herbalism",
	Chests = "Interface\\Icons\\INV_Box_01", Fishing = "Interface\\Icons\\Trade_Fishing",
}

local byMap -- [uiMapID] = { [index into ns.NodeTypes] = "xxxyyyxxxyyy..." }
local layer, queued
local pins = {}

local function Index()
	byMap = {}
	for _, chunk in ipairs(ns.NodeRaw or {}) do
		for nodeType, map, packed in chunk:gmatch("(%d+)|(%d+)|(%d+)") do
			map = tonumber(map)
			byMap[map] = byMap[map] or {}
			byMap[map][tonumber(nodeType)] = packed
		end
	end
	ns.NodeRaw = nil
end

local function Key(nodeType)
	return nodeType[1] .. "/" .. nodeType[2]
end

-- the icon of what the node gives, else the one of its profession
local function Icon(nodeType)
	return nodeType[3] > 0 and C_Item.GetItemIconByID(nodeType[3]) or KIND_ICONS[nodeType[1]]
end

local function Shown(nodeType)
	return not ns.db.nodes.off[nodeType[1]] and not ns.db.nodes.hidden[Key(nodeType)]
end

-- The part of the shown map that is on screen, as fractions of the canvas: x0, y0, x1, y1,
-- with half a screen to spare on every side so a pan does not run into bare map before the
-- next redraw. On OpenMap's stitched map that reaches past 0..1, into the neighbouring zones.
local function View(map, canvas)
	local scroll = map.ScrollContainer
	local scale = canvas:GetEffectiveScale() / scroll:GetEffectiveScale()
	local w, h = scroll:GetWidth() / (canvas:GetWidth() * scale), scroll:GetHeight() / (canvas:GetHeight() * scale)
	local x, y = scroll:GetCurrentScrollX() or 0.5, scroll:GetCurrentScrollY() or 0.5
	return x - w, y - h, x + w, y + h
end

-- What the tracked goals still miss, ready to draw: forced = { [node type] = true } for the
-- items that are gathered, byMap = { [uiMapID] = { x, y, icon, ... } } for the others (the
-- spawns of who sells or drops them: Q.ItemSpawns). Rebuilt after Nodes.GoalsChanged().
local goalPins

local function GoalPins()
	if goalPins then return goalPins end
	goalPins = { forced = {}, byMap = {} }
	local seen = {}
	for _, goal in ipairs(ns.Goals()) do
		for _, row in ipairs(goal.untracked and {} or ns.GoalRows(goal)) do
			local id = row.id
			if id and not seen[id] and not ns.RowDone(row) then
				seen[id] = true
				local gathered = false
				for index, nodeType in ipairs(ns.NodeTypes) do
					if nodeType[3] == id then goalPins.forced[index], gathered = true, true end
				end
				local icon = C_Item.GetItemIconByID(id)
				for area, points in pairs(not gathered and icon and ns.Q.ItemSpawns(id) or {}) do
					local list = goalPins.byMap[ns.Q.UiMap(area) or 0] or {}
					goalPins.byMap[ns.Q.UiMap(area) or 0] = list
					for _, p in ipairs(points) do
						if p[1] >= 0 then
							list[#list + 1], list[#list + 2], list[#list + 3] = p[1] / 100, p[2] / 100, icon
						end
					end
				end
			end
		end
	end
	return goalPins
end

-- Bags, goals or quests changed: what is missing may be different now.
function Nodes.GoalsChanged()
	goalPins = nil
	Nodes.Refresh()
end

-- Feeds Add(x, y, icon) every icon of zone `id`, x and y as fractions of the zone: the
-- sources of goal items, then the gathering nodes that are switched on.
local function ZoneIcons(id, goals, Add)
	local db, list = ns.db.nodes, goals.byMap[id]
	for i = 1, list and #list or 0, 3 do Add(list[i], list[i + 1], list[i + 2]) end
	for index, packed in pairs(byMap[id] or {}) do
		local nodeType = ns.NodeTypes[index]
		if nodeType and (goals.forced[index] or (db.show and Shown(nodeType))) then
			local icon = Icon(nodeType)
			for px, py in packed:gmatch("(%d%d%d)(%d%d%d)") do Add(px / 1000, py / 1000, icon) end
		end
	end
end

local NO_GOALS = { forced = {}, byMap = {} }

local found = {} -- x, y, icon, x, y, icon, ... of what is in view; reused between draws

function Nodes.Draw()
	queued = false
	if not layer then return 0 end
	local db = ns.db.nodes
	local n, used = 0, 0
	local map = WorldMapFrame
	if (db.show or db.goals) and map:IsVisible() then
		if not byMap then Index() end
		local canvas, shown = map:GetCanvas(), map:GetMapID()
		local OM = OpenMapAPI
		OM = OM and OM.major == 1 and OM.IsStitched() and OM or nil
		if OM and OM.ArtTopLevel and OM.ArtTopLevel() then layer:SetFrameLevel(OM.ArtTopLevel() + 2) end
		-- Blizzard's own map shows one zone and all of it; OpenMap's whatever the view covers
		local left, top, right, bottom = 0, 0, 1, 1
		if OM then left, top, right, bottom = View(map, canvas) end
		local goals = db.goals and GoalPins() or NO_GOALS

		-- Adds the icons of zone `id` that are in view.
		local function Zone(id)
			-- where this zone's corners are on the map that is shown, as fractions of it
			local x0, y0, x1, y1
			if id == shown then
				x0, y0, x1, y1 = 0, 0, 1, 1
			elseif OM and shown then
				local u0, v0 = OM.WorldFromMap(id, 0, 0)
				local u1, v1 = OM.WorldFromMap(id, 1, 1)
				if u0 and u1 then
					x0, y0 = OM.MapFromWorld(shown, u0, v0)
					x1, y1 = OM.MapFromWorld(shown, u1, v1)
				end
			end
			if not (x0 and x1 and x1 >= left and x0 <= right and y1 >= top and y0 <= bottom) then return end
			ZoneIcons(id, goals, function(px, py, icon)
				local x, y = x0 + px * (x1 - x0), y0 + py * (y1 - y0)
				if x >= left and x <= right and y >= top and y <= bottom then
					found[n + 1], found[n + 2], found[n + 3] = x, y, icon
					n = n + 3
				end
			end)
		end

		for id in pairs(goals.byMap) do Zone(id) end
		for id in pairs(byMap) do
			if not goals.byMap[id] then Zone(id) end
		end
		-- Too many for the screen (zoomed far out): every zone keeps an even share of its
		-- icons, instead of some zones getting all and others none.
		local step = math.max(1, math.ceil(n / 3 / MAX_PINS))
		local width, height = canvas:GetWidth(), canvas:GetHeight()
		-- the canvas grows with the zoom; the icons should not
		local size = db.size * map.ScrollContainer:GetEffectiveScale() / canvas:GetEffectiveScale()
		for i = 1, n, 3 * step do
			used = used + 1
			local pin = pins[used] or layer:CreateTexture(nil, "OVERLAY")
			pins[used] = pin
			pin:SetTexture(found[i + 2])
			pin:SetSize(size, size)
			pin:ClearAllPoints()
			pin:SetPoint("CENTER", layer, "TOPLEFT", found[i] * width, -found[i + 1] * height)
			pin:Show()
		end
	end
	for i = used + 1, #pins do pins[i]:Hide() end
	return used
end

---------------------------------------------------------------------------
-- The minimap: the same icons, for the zone the player is in. An icon closer than NEAR
-- yards is hidden: that close the game's own tracking (Find Minerals, Find Herbs) shows on
-- the minimap whether the node is really there.
-- shortcut: only the zone the player is in (nothing across a zone border), a round minimap
-- is assumed, and at most MINI_PINS icons, the first found.
---------------------------------------------------------------------------

local NEAR, MINI_PINS, MINI_SIZE = 40, 60, 12
-- how many yards the minimap is across at each zoom level
local ACROSS = {
	outdoor = { 466.67, 400, 333.33, 266.67, 200, 133.33 },
	indoor = { 300, 240, 180, 120, 80, 50 },
}
local mini, miniZone
local miniPins, miniList = {}, {}

function Nodes.MiniUpdate()
	local db, used = ns.db.nodes, 0
	local map = db.minimap and (db.show or db.goals) and C_Map.GetBestMapForUnit("player")
	local pos = map and C_Map.GetPlayerMapPosition(map, "player")
	local width, height
	if pos then width, height = C_Map.GetMapWorldSize(map) end
	if width then
		if miniZone ~= map then -- the zone's icons, collected once until something changes
			miniZone = map
			if not byMap then Index() end
			for i = #miniList, 1, -1 do miniList[i] = nil end
			ZoneIcons(map, db.goals and GoalPins() or NO_GOALS, function(x, y, icon)
				miniList[#miniList + 1], miniList[#miniList + 2], miniList[#miniList + 3] = x, y, icon
			end)
		end
		local px, py = pos:GetXY()
		local reach = (ACROSS[IsIndoors() and "indoor" or "outdoor"][Minimap:GetZoom() + 1] or 300) / 2
		local scale = Minimap:GetWidth() / 2 / reach
		-- a rotating minimap keeps the way the player faces on top
		local facing = GetCVar("rotateMinimap") == "1" and GetPlayerFacing() or 0
		local sin, cos = math.sin(facing), math.cos(facing)
		for i = 1, #miniList, 3 do
			local east, north = (miniList[i] - px) * width, (py - miniList[i + 1]) * height
			local distance = (east * east + north * north) ^ 0.5
			if distance > NEAR and distance < reach * 0.95 and used < MINI_PINS then
				used = used + 1
				local pin = miniPins[used] or mini:CreateTexture(nil, "OVERLAY")
				miniPins[used] = pin
				pin:SetTexture(miniList[i + 2])
				pin:SetSize(MINI_SIZE, MINI_SIZE)
				pin:ClearAllPoints()
				pin:SetPoint("CENTER", mini, "CENTER", (east * cos + north * sin) * scale, (north * cos - east * sin) * scale)
				pin:Show()
			end
		end
	end
	for i = used + 1, #miniPins do miniPins[i]:Hide() end
	return used
end

-- "Mining", "Copper Vein" for an item that is gathered; nil for others.
function Nodes.KindOfItem(item)
	for _, nodeType in ipairs(ns.NodeTypes) do
		if nodeType[3] == item then return nodeType[1], nodeType[2] end
	end
end

-- Where an item is gathered, for the small map: { uiMap, points = { { x, y }, ... } } of
-- the zone the player is in (or the zone around it: Ironforge lies in Dun Morogh), else of
-- the nearest zone on the continent that has the node, else of the zone with most of them.
-- nil for items that are not gathered.
-- A function giving an item's nodes on a map as a place, or nil when the item is not gathered.
local function PlacesOf(item)
	local types
	for index, nodeType in ipairs(ns.NodeTypes) do
		if nodeType[3] == item then
			types = types or {}
			types[#types + 1] = index
		end
	end
	if not types then return nil end
	if not byMap then Index() end
	return function(map)
		local points = {}
		for _, index in ipairs(types) do
			for px, py in ((byMap[map] or {})[index] or ""):gmatch("(%d%d%d)(%d%d%d)") do
				points[#points + 1] = { px / 10, py / 10 }
			end
		end
		return #points > 0 and { uiMap = map, points = points } or nil
	end
end

-- Every zone an item is gathered in, as places, the zone with most nodes first. Empty for
-- items that are not gathered.
function Nodes.ZonesOfItem(item)
	local Place, zones = PlacesOf(item), {}
	for id in pairs(Place and byMap or {}) do zones[#zones + 1] = Place(id) end
	table.sort(zones, function(a, b)
		if #a.points ~= #b.points then return #a.points > #b.points end
		return a.uiMap < b.uiMap
	end)
	return zones
end

function Nodes.PlaceOfItem(item)
	local Place = PlacesOf(item)
	if not Place then return nil end
	local here = C_Map.GetBestMapForUnit("player")
	local map = here
	while map do
		local place = Place(map)
		if place then return place end
		local info = C_Map.GetMapInfo(map)
		map = info and info.parentMapID and info.parentMapID > 0 and info.parentMapID or nil
	end
	local pos = here and C_Map.GetPlayerMapPosition(here, "player")
	local continent, me
	if pos then continent, me = C_Map.GetWorldPosFromMapPos(here, pos) end
	local best, bestScore
	for id in pairs(byMap) do
		local place = Place(id)
		if place then
			-- nearer is better; zones on other continents only compete by how many nodes they have
			local score = #place.points
			local there, middle = C_Map.GetWorldPosFromMapPos(id, CreateVector2D(0.5, 0.5))
			if me and middle and there == continent then
				score = 1e9 - ((middle.x - me.x) ^ 2 + (middle.y - me.y) ^ 2) ^ 0.5
			end
			if not bestScore or score > bestScore then best, bestScore = place, score end
		end
	end
	return best
end

-- Zooming and panning ask many times a frame; draw once, on the next one.
function Nodes.Refresh()
	miniZone = nil -- settings or goals changed: the minimap collects its icons again
	if queued then return end
	queued = true
	C_Timer.After(0, Nodes.Draw)
end

-- The part of the minimap button's menu: nodes on or off, and which ones.
function Nodes.MenuSections(root)
	local db = ns.db.nodes
	root:CreateTitle("On the world map")
	root:CreateCheckbox("Where to get what your goals miss", function() return db.goals end, function()
		db.goals = not db.goals
		Nodes.Refresh()
	end)
	local sizes = root:CreateButton("Icon size")
	for _, size in ipairs({ { "Small", 10 }, { "Normal", 14 }, { "Large", 18 } }) do
		sizes:CreateRadio(size[1], function() return db.size == size[2] end, function()
			db.size = size[2]
			Nodes.Refresh()
		end)
	end
	root:CreateCheckbox("Also on the minimap (hidden when you are close)", function() return db.minimap end, function()
		db.minimap = not db.minimap
		Nodes.Refresh()
	end)
	root:CreateCheckbox("Show gathering nodes", function() return db.show end, function()
		db.show = not db.show
		Nodes.Refresh()
	end)
	for _, kind in ipairs(KINDS) do
		-- the kind is a switch of its own; hovering it opens its node types
		local sub = root:CreateCheckbox("|T" .. KIND_ICONS[kind] .. ":14|t " .. kind, function() return not db.off[kind] end, function()
			db.off[kind] = not db.off[kind] or nil
			Nodes.Refresh()
		end)
		if sub.SetScrollMode then sub:SetScrollMode(420) end
		local function All(hidden)
			for _, nodeType in ipairs(ns.NodeTypes) do
				if nodeType[1] == kind then db.hidden[Key(nodeType)] = hidden end
			end
			Nodes.Refresh()
		end
		sub:CreateButton("Tick all", function() All(nil) end)
		sub:CreateButton("Untick all", function() All(true) end)
		for _, nodeType in ipairs(ns.NodeTypes) do
			if nodeType[1] == kind then
				sub:CreateCheckbox("|T" .. Icon(nodeType) .. ":14|t " .. nodeType[2],
					function() return not db.hidden[Key(nodeType)] end,
					function()
						db.hidden[Key(nodeType)] = not db.hidden[Key(nodeType)] or nil
						Nodes.Refresh()
					end)
			end
		end
	end
end

function Nodes.Init()
	if not mini then
		mini = CreateFrame("Frame", nil, Minimap)
		mini:SetAllPoints()
		mini:SetFrameLevel(Minimap:GetFrameLevel() + 3)
		local wait = 0
		mini:SetScript("OnUpdate", function(_, elapsed)
			wait = wait + elapsed
			if wait < 0.1 then return end -- ten times a second follows a mount well enough
			wait = 0
			Nodes.MiniUpdate()
		end)
	end
	local map = WorldMapFrame
	-- shortcut: a map addon that replaces WorldMapFrame with a frame of its own gets no nodes
	if not (map and map.GetCanvas and map.ScrollContainer) then return end
	layer = CreateFrame("Frame", nil, map:GetCanvas())
	layer:SetAllPoints()
	map:HookScript("OnShow", Nodes.Refresh)
	for _, change in ipairs({ "OnMapChanged", "OnCanvasScaleChanged", "OnCanvasPanChanged" }) do
		if type(map[change]) == "function" then hooksecurefunc(map, change, Nodes.Refresh) end
	end
	local OM = OpenMapAPI
	if OM and OM.RegisterCallback then
		OM.RegisterCallback(Nodes, "OpenMap_ViewChanged", Nodes.Refresh)
		OM.RegisterCallback(Nodes, "OpenMap_StitchedChanged", Nodes.Refresh)
	end
	-- the two switches also sit in OpenMap's own menu, where they can be starred onto the map
	for _, switch in ipairs(OM and OM.RegisterMenuToggle and {
		{ "goals", "Sources of goal items", "Interface\\Icons\\INV_Misc_Note_01" }, { "show", "Gathering nodes", KIND_ICONS.Mining },
	} or {}) do
		OM.RegisterMenuToggle("GoalNotes", { id = "goalnotes-" .. switch[1], label = switch[2], icon = switch[3], section = ns.TITLE,
			get = function() return ns.db.nodes[switch[1]] end,
			set = function(on)
				ns.db.nodes[switch[1]] = on and true or false
				Nodes.Refresh()
			end })
	end
end
