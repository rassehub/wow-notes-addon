local _, ns = ...

-- The small map: a picture of a zone with a place marked, shown next to whatever is hovered,
-- so a location can be seen without opening the world map or another page. Used by the wiki
-- pages and lists, the goal list and the tracker.
-- A place is { area or uiMap, x, y, points }: x, y (0-100) is the spot meant, drawn red;
-- points are the other spawns or nodes of the zone, drawn yellow. Both are optional.

local Preview = {}
ns.MapPreview = Preview

local preview

function Preview.Show(owner, line)
	local uiMap = line.uiMap or ns.Q.UiMap(line.area)
	-- QuestieDB also maps areas to maps this client does not have
	local layer = uiMap and C_Map.GetMapInfo(uiMap) and (C_Map.GetMapArtLayers(uiMap) or {})[1]
	if not layer then return end
	if not preview then
		preview = CreateFrame("Frame", nil, UIParent, "BackdropTemplate")
		preview:SetFrameStrata("TOOLTIP")
		preview:SetClampedToScreen(true)
		preview:SetBackdrop({ bgFile = "Interface\\Buttons\\WHITE8X8", edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border", edgeSize = 12,
			insets = { left = 3, right = 3, top = 3, bottom = 3 } })
		preview:SetBackdropColor(0, 0, 0, 1)
		preview.map = CreateFrame("Frame", nil, preview)
		preview.map:SetPoint("TOPLEFT", 4, -4)
		preview.map:SetPoint("BOTTOMRIGHT", -4, 4)
		preview.map:SetClipsChildren(true) -- the last tiles of a row reach past the map's edge
		preview.tiles, preview.dots = {}, {}
		preview.zone = preview.map:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall")
		preview.zone:SetPoint("TOPLEFT", 4, -4)
	end
	preview.zone:SetText(C_Map.GetMapInfo(uiMap).name or "") -- it is not always the zone you are in
	local width = 280
	local scale = width / layer.layerWidth
	local height = layer.layerHeight * scale
	preview:SetSize(width + 8, height + 8)
	-- under the tooltip when the owner has one (so it never covers the list being read),
	-- else under the owner
	preview:ClearAllPoints()
	if GameTooltip:IsOwned(owner) then
		preview:SetPoint("TOPLEFT", GameTooltip, "BOTTOMLEFT", 0, -2)
	else
		preview:SetPoint("TOPRIGHT", owner, "BOTTOMRIGHT", 0, -2)
	end
	local across, w, h = math.ceil(layer.layerWidth / layer.tileWidth), layer.tileWidth * scale, layer.tileHeight * scale
	local textures = C_Map.GetMapArtLayerTextures(uiMap, layer.layerIndex or 1)
	for i = 1, math.max(#textures, #preview.tiles) do
		local tile = preview.tiles[i] or preview.map:CreateTexture(nil, "BACKGROUND")
		preview.tiles[i] = tile
		tile:SetShown(textures[i] ~= nil)
		if textures[i] then
			tile:SetTexture(textures[i])
			tile:SetSize(w, h)
			tile:ClearAllPoints()
			tile:SetPoint("TOPLEFT", ((i - 1) % across) * w, -math.floor((i - 1) / across) * h)
		end
	end
	local spawns = line.points or {}
	for i = 1, math.max(#spawns + 1, #preview.dots) do
		local main = i == #spawns + 1 -- the place the line names: drawn last, red and larger
		local p = spawns[i] or (main and line.x and { line.x, line.y })
		local dot = preview.dots[i] or preview.map:CreateTexture(nil, "OVERLAY")
		preview.dots[i] = dot
		dot:SetShown(p and p[1] >= 0 or false)
		if p then
			dot:SetTexture("Interface\\COMMON\\Indicator-" .. (main and "Red" or "Yellow"))
			dot:SetDrawLayer("OVERLAY", main and 2 or 1)
			dot:SetSize(main and 18 or 9, main and 18 or 9)
			dot:ClearAllPoints()
			dot:SetPoint("CENTER", preview.map, "TOPLEFT", p[1] / 100 * width, -p[2] / 100 * height)
		end
	end
	preview:Show()
end

-- For anything that is somewhere: a place itself, or a link { kind, id } to an NPC, an
-- object or an item (where it is gathered, sold or dropped). Not for quest links: a quest's
-- page shows its giver, targets and turn-in, each with a map of its own.
function Preview.For(owner, line)
	local place = (line.area or line.uiMap) and line or (line.kind and line.kind ~= "quest" and ns.Q.PlaceOf(line.kind, line.id))
	if place then Preview.Show(owner, place) end
end

function Preview.Hide()
	if preview then preview:Hide() end
end

-- OnLeave for everything that shows a tooltip and maybe the small map.
function ns.HideTips()
	GameTooltip:Hide()
	Preview.Hide()
end
