local _, ns = ...

-- What every character of the account carries. Each character's bags (with what it wears)
-- are recorded whenever they change, its bank whenever the bank is open, into the
-- account-wide settings: ns.db.chars["Name - Realm"] = { class, bags = { [itemID] = n },
-- bank = { [itemID] = n }, time, ignore }. Other characters' items never count towards a
-- goal; they are shown next to it, so you know what a mail from an alt would cover.

local Alts = {}
ns.Alts = Alts

local me, bankOpen

local function Me()
	if not me then
		local name = UnitName("player")
		if not name then return nil end
		me = name .. " - " .. (GetRealmName() or "")
		ns.db.chars = ns.db.chars or {}
		local record = ns.db.chars[me] or {}
		record.bags, record.bank = record.bags or {}, record.bank or {}
		record.class = select(2, UnitClass("player"))
		ns.db.chars[me] = record
	end
	return me
end

function Alts.SetBankOpen(open)
	bankOpen = open
end

-- Container ids of the bags and of the bank. The warband bank is left out: it is shared,
-- and the game already counts it for every character.
local function Containers()
	local bags, bank = {}, {}
	if Enum and Enum.BagIndex then
		for name, index in pairs(Enum.BagIndex) do
			if name:find("Account") then -- warband bank
			elseif name:find("[Bb]ank") then
				bank[#bank + 1] = index
			else
				bags[#bags + 1] = index
			end
		end
	else
		bags, bank = { 0, 1, 2, 3, 4 }, { -1, 5, 6, 7, 8, 9, 10 }
	end
	return bags, bank
end

local function Count(containers)
	local counts = {}
	for _, bag in ipairs(containers) do
		for slot = 1, C_Container.GetContainerNumSlots(bag) or 0 do
			local info = C_Container.GetContainerItemInfo(bag, slot)
			if info and info.itemID then counts[info.itemID] = (counts[info.itemID] or 0) + (info.stackCount or 1) end
		end
	end
	return counts
end

-- Records this character. The bank can only be read while it is open; until then the
-- last recorded bank stays.
function Alts.Scan()
	if not (C_Container and C_Container.GetContainerNumSlots and Me()) then return end
	local record = ns.db.chars[me]
	local bags, bank = Containers()
	local carried = Count(bags)
	for slot = 1, 19 do
		local id = GetInventoryItemID("player", slot)
		if id then carried[id] = (carried[id] or 0) + 1 end
	end
	record.bags, record.time = carried, time()
	if bankOpen then record.bank = Count(bank) end
end

-- "Name" for characters of this realm, "Name - Realm" for others.
function Alts.ShortName(name)
	local short, realm = name:match("^(.-) %- (.*)$")
	return short and realm == (GetRealmName() or "") and short or name
end

-- What the other characters hold of an item: the sum, and { { name, bags, bank }, ... }
-- with the biggest holder first. Characters switched off are left out.
function Alts.Count(id)
	local total, list = 0, {}
	Me()
	for name, record in pairs(ns.db.chars or {}) do
		if name ~= me and not record.ignore then
			local bags, bank = record.bags[id] or 0, record.bank[id] or 0
			if bags + bank > 0 then
				total = total + bags + bank
				list[#list + 1] = { name = Alts.ShortName(name), bags = bags, bank = bank }
			end
		end
	end
	table.sort(list, function(a, b)
		if a.bags + a.bank ~= b.bags + b.bank then return a.bags + a.bank > b.bags + b.bank end
		return a.name < b.name
	end)
	return total, list
end

-- Is any other character recorded and switched on?
function Alts.Any()
	Me()
	for name, record in pairs(ns.db.chars or {}) do
		if name ~= me and not record.ignore then return true end
	end
	return false
end

function Alts.AddTooltipLines(tooltip, id)
	local _, list = Alts.Count(id)
	for _, alt in ipairs(list) do
		tooltip:AddDoubleLine("On " .. alt.name .. ": " .. (alt.bags + alt.bank), ("bags %d   bank %d"):format(alt.bags, alt.bank), 0.6, 0.8, 1, 0.6, 0.8, 1)
	end
end

-- "3 on Banker, 2 on Mule" for the rows of a goal: who else has the item. nil when nobody.
function Alts.Summary(id)
	local total, list = Alts.Count(id)
	if total == 0 then return nil end
	local parts = {}
	for i, alt in ipairs(list) do
		parts[i] = (alt.bags + alt.bank) .. " on " .. alt.name
		if i == 3 and #list > 3 then parts[i + 1] = (#list - 3) .. " more" break end
	end
	return table.concat(parts, ", ")
end

-- Tick boxes for which characters are counted, and a way to forget one.
function Alts.MenuSections(root, Changed)
	Me()
	local names = {}
	for name in pairs(ns.db.chars or {}) do names[#names + 1] = name end
	table.sort(names)
	root:CreateTitle("Show what these characters hold")
	for _, name in ipairs(names) do
		local record = ns.db.chars[name]
		if name ~= me then -- this character always counts: its items are the goal's "have"
			root:CreateCheckbox(Alts.ShortName(name), function() return not record.ignore end, function()
				record.ignore = not record.ignore or nil
				Changed()
			end)
		end
	end
	if #names < 2 then root:CreateTitle(ns.Hex.dim .. "Log in on another character once to see it here|r") end
	local forget = root:CreateButton("Forget a character")
	for _, name in ipairs(names) do
		if name ~= me then
			forget:CreateButton(Alts.ShortName(name), function()
				ns.db.chars[name] = nil
				Changed()
			end)
		end
	end
end

function Alts.Menu(owner)
	MenuUtil.CreateContextMenu(owner, function(_, root) Alts.MenuSections(root, ns.Refresh) end)
end

-- Says once per session, for each thing a goal still lacks, which other character has it.
local told = {}
function Alts.Notify()
	if not ns.db.announce or not Alts.Any() then return end
	for _, goal in ipairs(ns.Goals()) do
		for _, row in ipairs(ns.GoalRows(goal)) do
			if row.id and not told[row.id] then
				local _, _, _, have = ns.GetCounts(row.id)
				local total, list = Alts.Count(row.id)
				if have < row.need and total > 0 then
					told[row.id] = true
					local item = ns.GetItem(row.id)
					ns.Print(("%s has %d x |c%s[%s]|r - you need %d more for " .. ns.Hex.gold .. "%s|r."):format(
						list[1].name .. (#list > 1 and (" (and " .. (#list - 1) .. " more)") or ""),
						total, ns.QualityHex(item.quality), item.name, row.need - have, goal.title))
				end
			end
		end
	end
end
