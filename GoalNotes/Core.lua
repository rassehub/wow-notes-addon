local ADDON, ns = ...

ns.TITLE = "Goal Notes"
BINDING_NAME_GOALNOTES_TOGGLE = "Toggle Goal Notes"

-- Account-wide settings. Goals themselves are per character (GoalNotesCharDB),
-- because bags and bank are per character.
ns.defaults = {
	width = 620, height = 460,
	scale = 1,
	opacity = 0.9,
	fontSize = 12,
	slimBorder = false,
	locked = false,
	closeOnEscape = true,
	qualityColors = true,
	hideCompleted = false,
	includeWarband = true,
	announce = true,
	tooltipInfo = true,
	autoCraft = true, -- craftable items are added as "track the reagents"
	minimap = true,
	minimapAngle = 215,
	tracker = true,
	-- filters of the Items, Professions and Quests tabs; see ItemDB.lua and Wiki/Pages.lua
	filter = {},
	recipeFilter = { professions = {}, learn = {} },
	questFilter = { side = "mine", hideDone = true, zones = {}, dungeons = {}, factions = {}, kinds = {} },
	-- result lists: which columns each tab shows (see Wiki.COLUMNS) and how wide the list is
	npcFilter = { roles = {}, ranks = {}, zones = {} },
	compactList = false, -- one-line list rows instead of the two-line ones with an icon
	listColumns = {
		item = { level = true }, quest = { level = true, xp = true, status = true },
		profession = { skill = true }, npc = { level = true }, dungeon = { level = true },
	},
	listWidth = 0.34, -- share of the window; drag the bar between list and page
	colWidth = {}, -- column widths changed by dragging, by "tab:column" ("goal:column" on the Goals tab)
	-- Icons on the world map. show: gathering nodes; off: whole kinds ("Mining"), hidden: by
	-- "Kind/Node name". goals: where to get what the tracked goals still miss. size: of an icon.
	-- minimap: the same icons around the player on the minimap, except closer than `near` yards.
	nodes = { show = false, goals = true, minimap = true, near = 80, size = 14, off = {}, hidden = {} },
	nearFirst = true, -- "Sold by" and "Dropped by": what is closest in the player's zone first
	sort = {}, sortDesc = {}, -- per tab: sort key, and whether it is reversed
	folded = {}, -- wiki page sections that are collapsed, by "kind:Section"
	colors = {
		title = { 1, 0.82, 0 },
		text = { 1, 1, 1 },
		complete = { 0.25, 1, 0.25 },
		incomplete = { 1, 0.5, 0.25 },
	},
	columns = { need = true, have = true, progress = true, source = true, alts = true },
}

local function CopyDefaults(dst, src)
	for k, v in pairs(src) do
		if type(v) == "table" then
			if type(dst[k]) ~= "table" then dst[k] = {} end
			CopyDefaults(dst[k], v)
		elseif dst[k] == nil then
			dst[k] = v
		end
	end
end

-- The look, in one place. Text colours, as the escape codes that start coloured text (end it
-- with "|r"): change one here and it changes everywhere. Colours the player can set are
-- in ns.defaults.colors (see ns.Color).
ns.Hex = {
	gold = "|cffffd100", -- captions, names of goals, "next" and "in your log"
	dim = "|cff999999", -- hints and secondary text
	faint = "|cff666666", -- separators
	good = "|cff40ff40", -- done, fits your level
	bad = "|cffff6060", -- not for you: wrong faction, too high
	alt = "|cff99ccff", -- what your other characters hold
	map = "|cff80ff80", -- "(map)": a line with a place
	yellow = "|cffffff00", grey = "|cff808080", -- recipe skill: turns yellow, turns grey
}
-- Textures and sizes shared by every list.
ns.Style = {
	highlight = "Interface\\QuestFrame\\UI-QuestTitleHighlight", -- under the mouse
	card = { 0, 0, 0, 0.35 }, -- background of a list row
	plate = { 0, 0, 0, 0.85 }, -- behind badges (recipe skill)
	selected = { 1, 0.82, 0, 0.2 }, -- the open entry of a list
}

-- Copper as coins with the game's icons; "" for nothing.
function ns.Coins(copper)
	return copper and copper > 0 and C_CurrencyInfo.GetCoinTextureString(copper) or ""
end

function ns.Print(msg)
	print(ns.Hex.gold .. ns.TITLE .. ":|r " .. msg)
end

---------------------------------------------------------------------------
-- Item helpers
---------------------------------------------------------------------------

-- Returns bags (incl. equipped), bank, warband bank, total.
-- GetItemCount answers from the client's cache, so bank numbers stay correct
-- away from the banker.
function ns.GetCounts(id)
	local count = C_Item.GetItemCount
	local bags = count(id, false, false, false, false) or 0
	local withBank = count(id, true, false, true, false) or bags
	local total = ns.db.includeWarband and (count(id, true, false, true, true) or withBank) or withBank
	return bags, withBank - bags, total - withBank, total
end

-- Item info that never returns nil for a known id: falls back to the bundled
-- database while the client is still fetching the item, and requests the load.
function ns.GetItem(id)
	local name, link, quality, ilvl, reqLevel, itemType, subType, _, equipLoc, icon, price = C_Item.GetItemInfo(id)
	if not name then
		C_Item.RequestLoadItemDataByID(id)
		local _, iType, iSub, iLoc, iIcon = C_Item.GetItemInfoInstant(id)
		return {
			id = id, pending = true,
			name = ns.ItemDB.GetName(id) or (ns.Q.Available() and ns.Q.Item.name(id)) or ("Item " .. id),
			quality = ns.ItemDB.GetQuality(id) or 1,
			link = "item:" .. id, type = iType, subType = iSub, equipLoc = iLoc, icon = iIcon,
		}
	end
	return {
		id = id, name = name, link = link, quality = quality, ilvl = ilvl, reqLevel = reqLevel,
		type = itemType, subType = subType, equipLoc = equipLoc, icon = icon, price = price,
	}
end

function ns.QualityHex(quality)
	local _, _, _, hex = C_Item.GetItemQualityColor(quality or 1)
	return hex or "ffffffff"
end

function ns.IsEquippable(equipLoc)
	return equipLoc ~= nil and equipLoc ~= "" and equipLoc ~= "INVTYPE_NON_EQUIP_IGNORE"
		and equipLoc ~= "INVTYPE_BAG" and equipLoc ~= "INVTYPE_AMMO" and equipLoc ~= "INVTYPE_QUIVER"
end

---------------------------------------------------------------------------
-- Goal model. goal = { title, collapsed, untracked, combine, entries = { entry, ... } }
-- entry = { id = itemID, need = n, craft = bool, sub = { [reagentID] = true } }
--      or { text = "free note", done = bool }
--      or { quest = questID, chain = bool }     done when the quest is turned in
--      or { gold = copper }                     done when you carry that much money
--      or { skill = "Cooking", need = 225 }     done at that profession skill
-- craft: show and track the recipe's reagents. sub: reagents that are broken down further.
-- chain: list the quests that must be done first as steps. An item entry may carry
-- via = questID: the quest that rewards it, listed with its chain as steps.
-- Any entry may carry note = "free comment".
---------------------------------------------------------------------------

function ns.Goals()
	return ns.char.goals
end

function ns.AddGoal(title)
	local goal = { title = title or "New Goal", entries = {} }
	table.insert(ns.char.goals, goal)
	ns.selectedGoal = goal
	return goal
end

function ns.SelectedGoal()
	local goals = ns.char.goals
	for _, g in ipairs(goals) do
		if g == ns.selectedGoal then return g end
	end
	ns.selectedGoal = goals[1] or ns.AddGoal("My Goals")
	return ns.selectedGoal
end

-- Adding an item that is already on the goal raises its needed amount instead
-- of duplicating the row.
-- A recipe item ("Pattern: X") is added as X with its reagents.
function ns.AddItem(goal, id, need)
	need = math.max(1, math.floor(tonumber(need) or 1))
	local taught = ns.Recipes.FromScroll(id)
	id = taught or id
	goal.collapsed = nil
	for _, e in ipairs(goal.entries) do
		if e.id == id then
			e.need = e.need + need
			return e
		end
	end
	-- Trade goods (leather, bars, cloth) often have a conversion recipe; breaking those down
	-- automatically would turn "30 Rugged Leather" into Thick Leather. The menu can still do it.
	local class = ns.ItemDB.GetClass(id)
	local material = class == 5 or class == 7
	local craft = ns.Recipes.Get(id) and (taught or (ns.db.autoCraft and not material)) and true or nil
	local entry = { id = id, need = need, craft = craft }
	-- an item that only a quest gives comes with the quest chain that rewards it
	local I = not craft and ns.Q.Available() and ns.Q.Item
	if I and not (I.vendors(id) or I.npcDrops(id) or I.objectDrops(id)) then entry.via = ns.Q.RewardQuests(id)[1] end
	table.insert(goal.entries, entry)
	return entry
end

-- A quest that needs other quests first is added with that chain as steps.
-- Returns nil when the quest is already on the goal.
function ns.AddQuest(goal, quest)
	for _, e in ipairs(goal.entries) do
		if e.quest == quest then return nil end
	end
	goal.collapsed = nil
	local entry = { quest = quest, chain = ns.Q.Available() and #ns.Q.Chain(quest) > 1 or nil }
	table.insert(goal.entries, entry)
	return entry
end

function ns.AddNote(goal, text)
	goal.collapsed = nil
	table.insert(goal.entries, { text = text })
end

function ns.Remove(list, value)
	for i, v in ipairs(list) do
		if v == value then return table.remove(list, i) end
	end
end

function ns.Move(list, value, delta)
	for i, v in ipairs(list) do
		if v == value then
			local j = i + delta
			if list[j] then list[i], list[j] = list[j], list[i] end
			return
		end
	end
end

-- Typed text that is a goal but not an item: "100g" / "100 gold", "Cooking 225".
function ns.ParseSpecial(text)
	local t = text:lower():match("^%s*(.-)%s*$")
	local gold = t:match("^(%d+)%s*g$") or t:match("^(%d+)%s*gold$")
	if gold then return { gold = tonumber(gold) * 10000 } end
	local name, level = t:match("^(%a[%a ]-)%s+(%d+)$")
	for _, profession in ipairs(name and ns.Professions or {}) do
		if profession:lower() == name then return { skill = profession, need = tonumber(level) } end
	end
end

function ns.SpecialText(entry)
	if entry.gold then return math.floor(entry.gold / 10000) .. "g" end
	if entry.skill then return entry.skill .. " " .. entry.need end
end

-- Current skill in a profession the character has, or nil.
function ns.SkillLevel(name)
	if not (GetProfessions and GetProfessionInfo) then return nil end
	for i = 1, 6 do
		local index = select(i, GetProfessions())
		if index then
			local profession, _, level = GetProfessionInfo(index)
			if profession == name then return level end
		end
	end
end

local function QuestInfo(quest)
	local name = (ns.Q.Available() and ns.Q.Quest.name(quest))
		or (C_QuestLog.GetTitleForQuestID and C_QuestLog.GetTitleForQuestID(quest))
		or ("Quest " .. quest)
	local state = ns.Q.QuestState(quest)
	return {
		kind = "quest", label = name, icon = "Interface\\GossipFrame\\AvailableQuestIcon",
		have = state == "done" and 1 or 0, need = 1,
		text = state == "done" and "done" or state == "active" and "in your log" or "not started",
	}
end

-- For quest, gold and skill entries: { kind, label, icon, have, need, text }. nil for items and notes.
function ns.EntryInfo(entry)
	if entry.quest then
		return QuestInfo(entry.quest)
	elseif entry.gold then
		local money = GetMoney()
		return {
			kind = "gold", label = "Gold", icon = "Interface\\MoneyFrame\\UI-GoldIcon", have = money, need = entry.gold,
			text = math.floor(money / 10000) .. "g / " .. math.floor(entry.gold / 10000) .. "g",
		}
	elseif entry.skill then
		local level = ns.SkillLevel(entry.skill)
		return {
			kind = "skill", label = entry.skill .. " skill", have = level or 0, need = entry.need,
			text = (level or "?") .. " / " .. entry.need,
		}
	end
end

-- The same for a display row of ns.GoalRows: quest steps are rows without an entry of their own.
function ns.RowInfo(row)
	if row.step then return QuestInfo(row.quest) end
	return not row.id and row.entry and ns.EntryInfo(row.entry) or nil
end

function ns.EntryDone(entry)
	if entry.id then
		local _, _, _, total = ns.GetCounts(entry.id)
		return total >= entry.need
	end
	local info = ns.EntryInfo(entry)
	if info then return info.have >= info.need end
	return entry.done and true or false
end

-- What a goal displays, in order. Each row: { entry, id, need, depth } plus
--   craft/ready  on an entry whose reagents are listed (ready: all reagents in hand)
--   reagent      a computed reagent row; need already accounts for crafted items you own
--   broken       a reagent that is itself broken down into the rows below it
--   label        a caption row (combined materials)
--   quest        the quest of a quest row
--   foldable     an entry with rows of its own below it (reagents or quest steps);
--                entry.fold hides them in the goal list, see also Tracker.Folded
--   step/next    a computed quest-chain step; next: the one to do now
function ns.GoalRows(goal)
	local rows, order = {}, {}
	local combined = goal.combine and {} or nil -- reagentID -> summed need

	local function AddReagents(entry, id, need, depth)
		local recipe = ns.Recipes.Get(id)
		local _, _, _, have = ns.GetCounts(id)
		local crafts = math.ceil(math.max(0, need - have) / recipe.made)
		local ready = true
		for _, r in ipairs(recipe.reagents) do
			local rid, rneed = r[1], r[2] * crafts
			if rneed > 0 then
				-- depth cap: recipes that feed each other must not recurse forever
				local broken = depth < 5 and entry.sub and entry.sub[rid] and ns.Recipes.Get(rid) and true or false
				if not combined then
					rows[#rows + 1] = { entry = entry, id = rid, need = rneed, depth = depth, reagent = true, broken = broken }
				elseif not broken then
					if not combined[rid] then
						combined[rid] = 0
						order[#order + 1] = rid
					end
					combined[rid] = combined[rid] + rneed
				end
				if broken then
					ready = AddReagents(entry, rid, rneed, depth + 1) and ready
				else
					local _, _, _, rhave = ns.GetCounts(rid)
					ready = ready and rhave >= rneed
				end
			end
		end
		return ready
	end

	for _, entry in ipairs(goal.entries) do
		local row = { entry = entry, id = entry.id, need = entry.need, depth = 0, quest = entry.quest }
		rows[#rows + 1] = row
		if entry.id and entry.craft and ns.Recipes.Get(entry.id) then
			row.craft = true
			row.ready = AddReagents(entry, entry.id, entry.need, 1) and not ns.EntryDone(entry)
		end
		local last = entry.via or (entry.chain and entry.quest)
		-- an item you already own needs no quests any more
		if last and ns.Q.Available() and not (entry.id and ns.EntryDone(entry)) then
			local steps, open = ns.Q.Chain(last), true
			for i = 1, #steps - (entry.via and 0 or 1) do -- a quest entry is its own last step
				local done = ns.Q.QuestState(steps[i]) == "done"
				rows[#rows + 1] = { entry = entry, quest = steps[i], depth = 1, step = true, next = open and not done or nil }
				open = open and done
			end
		end
		row.foldable = rows[#rows] ~= row or nil
	end
	if combined and #order > 0 then
		rows[#rows + 1] = { label = "Materials for everything above", depth = 0 }
		for _, rid in ipairs(order) do
			rows[#rows + 1] = { id = rid, need = combined[rid], depth = 1, reagent = true }
		end
	end
	return rows
end

function ns.RowDone(row)
	if row.step then return ns.Q.QuestState(row.quest) == "done" end
	if row.reagent then
		local _, _, _, total = ns.GetCounts(row.id)
		return total >= row.need
	end
	return row.entry ~= nil and ns.EntryDone(row.entry)
end

-- Summed need per item across every goal (used by item tooltips).
function ns.NeededFor(id)
	local need, titles = 0, nil
	for _, goal in ipairs(ns.char.goals) do
		for _, e in ipairs(goal.entries) do
			if e.id == id then
				need = need + e.need
				titles = titles and (titles .. ", " .. goal.title) or goal.title
			end
		end
	end
	return need, titles
end

---------------------------------------------------------------------------
-- Refresh + completion announcements
---------------------------------------------------------------------------

local announced = setmetatable({}, { __mode = "k" }) -- entry -> last known done state
local primed = false

local function CheckCompletions()
	for _, goal in ipairs(ns.char.goals) do
		for _, e in ipairs(goal.entries) do
			local info = not e.id and ns.EntryInfo(e)
			if e.id or info then
				local done = ns.EntryDone(e)
				if primed and done and announced[e] == false and ns.db.announce then
					if e.id then
						local item = ns.GetItem(e.id)
						ns.Print(("|c%s[%s]|r ready for " .. ns.Hex.gold .. "%s|r (%d/%d)"):format(
							ns.QualityHex(item.quality), item.name, goal.title, e.need, e.need))
					else
						ns.Print(("%s reached for " .. ns.Hex.gold .. "%s|r (%s)"):format(info.label, goal.title, info.text))
					end
					PlaySound(SOUNDKIT.IG_QUEST_LIST_COMPLETE)
				end
				announced[e] = done
			end
		end
	end
	primed = true
end

local queued = false
function ns.Refresh()
	if queued or not ns.char then return end
	queued = true
	C_Timer.After(0.1, function() -- bag events arrive in bursts
		queued = false
		ns.Alts.Scan()
		CheckCompletions()
		ns.Alts.Notify()
		ns.Nodes.GoalsChanged()
		ns.UI.Layout() -- also refreshes the tracker
		if ns.Compare and ns.Compare.frame:IsShown() then ns.Compare.Update() end
	end)
end

---------------------------------------------------------------------------
-- Shift-click links into our edit boxes
---------------------------------------------------------------------------

-- ns.linkBox is the autocomplete edit box that has (or just lost) focus.
local function OnInsertLink(link)
	local box = ns.linkBox
	if type(link) ~= "string" or not box then return end
	-- An active chat box steals focus inside InsertLink, hence the same-frame grace.
	if not (box:HasFocus() or box.focusLostAt == GetTime()) then return end
	local id = tonumber(link:match("item:(%d+)"))
	if not id then return end
	box:SetFocus()
	box.ac:Force(id)
	-- Shift-clicking a stack also opens the split dialog; we consumed the click.
	C_Timer.After(0, function()
		if StackSplitFrame and StackSplitFrame:IsShown() then StackSplitFrame:Hide() end
	end)
end

local function HookLinks()
	local original = ChatFrameUtil and ChatFrameUtil.InsertLink
	if original then hooksecurefunc(ChatFrameUtil, "InsertLink", OnInsertLink) end
	-- The deprecated global still points at the unhooked function; other addons call it.
	if ChatEdit_InsertLink and (not original or ChatEdit_InsertLink == original) then
		hooksecurefunc("ChatEdit_InsertLink", OnInsertLink)
	end
end

---------------------------------------------------------------------------
-- Item tooltips anywhere in the game
---------------------------------------------------------------------------

local function HookTooltips()
	if not (TooltipDataProcessor and Enum.TooltipDataType) then return end
	TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, function(tooltip, data)
		if not ns.db.tooltipInfo or tooltip ~= GameTooltip or not data or ns.ownTooltip then return end
		local id = data.id
		if type(id) ~= "number" or (issecretvalue and issecretvalue(id)) then return end
		local need, titles = ns.NeededFor(id)
		if need == 0 then return end
		local _, _, _, total = ns.GetCounts(id)
		local c = ns.db.colors[total >= need and "complete" or "incomplete"]
		tooltip:AddDoubleLine(ns.TITLE .. ": " .. titles, total .. "/" .. need, 1, 0.82, 0, c[1], c[2], c[3])
		ns.Alts.AddTooltipLines(tooltip, id)
	end)
end

---------------------------------------------------------------------------
-- Startup
---------------------------------------------------------------------------

function GoalNotes_Toggle()
	if ns.UI then ns.UI.Toggle() end
end

function GoalNotes_OnAddonCompartmentClick(_, button, owner)
	if button == "RightButton" then
		ns.MinimapButton.Menu(owner or UIParent) -- the same menu as the minimap button's
	else
		GoalNotes_Toggle()
	end
end

SLASH_GOALNOTES1, SLASH_GOALNOTES2 = "/goalnotes", "/gn"
SlashCmdList.GOALNOTES = function(msg)
	msg = (msg or ""):lower():match("^%s*(.-)%s*$")
	if msg == "config" or msg == "options" or msg == "settings" then
		ns.Settings.Toggle()
	elseif msg == "tracker" then
		ns.Tracker.Toggle()
	elseif msg == "reset" then
		ns.UI.ResetPosition()
		ns.Tracker.ResetPosition()
	elseif msg == "" then
		GoalNotes_Toggle()
	else
		ns.Print("/gn - toggle window, /gn tracker - toggle tracker, /gn config - settings, /gn reset - reset window positions")
	end
end

local events = CreateFrame("Frame")
events:RegisterEvent("ADDON_LOADED")
for _, event in ipairs({
	"PLAYER_ENTERING_WORLD", "BAG_UPDATE_DELAYED", "PLAYERBANKSLOTS_CHANGED", "BANKFRAME_OPENED",
	"BANKFRAME_CLOSED", "BANK_TABS_CHANGED", "PLAYER_ACCOUNT_BANK_TAB_SLOTS_CHANGED",
	"PLAYER_EQUIPMENT_CHANGED", "GET_ITEM_INFO_RECEIVED", "PLAYER_MONEY", "QUEST_ACCEPTED",
	"QUEST_TURNED_IN", "QUEST_REMOVED", "SKILL_LINES_CHANGED", "ZONE_CHANGED_NEW_AREA",
}) do
	pcall(events.RegisterEvent, events, event) -- unknown event names throw; the set differs per client
end

events:SetScript("OnEvent", function(_, event, arg1)
	if event == "BANKFRAME_OPENED" or event == "BANKFRAME_CLOSED" then ns.Alts.SetBankOpen(event == "BANKFRAME_OPENED") end
	if event ~= "ADDON_LOADED" then return ns.Refresh() end
	if arg1 ~= ADDON then return end

	GoalNotesDB = GoalNotesDB or {}
	CopyDefaults(GoalNotesDB, ns.defaults)
	ns.db = GoalNotesDB

	GoalNotesCharDB = GoalNotesCharDB or {}
	ns.char = GoalNotesCharDB
	if type(ns.char.goals) ~= "table" then ns.char.goals = {} end
	if #ns.char.goals == 0 then ns.AddGoal("My Goals") end

	ns.ItemDB.PrepareFilter(ns.db.filter)
	ns.ItemDB.PrepareFilter(ns.db.recipeFilter)
	ns.Q.Init()
	HookLinks()
	HookTooltips()
	ns.UI.Init()
	ns.Nodes.Init()
	if ns.char.shown then ns.UI.frame:Show() end
end)
