local _, ns = ...

-- A searchable name index: one big "\nnormalizedname|id\n..." string that string.find
-- scans in C, so a keystroke costs well under a millisecond even for 20,000 names.
-- Used for items, quests and NPCs.

local Index = {}
Index.__index = Index

local MAX_HITS = 400 -- candidates ranked per query; plenty for a result list

-- "Mud Snapper", "mudsnapper" and "mud-snapper" all normalize to the same key.
-- shortcut: non-ASCII letters are not case-folded; fold them here if a localized DB needs it.
local function Normalize(s)
	return (s:lower():gsub("[%s%p]", ""))
end
ns.Normalize = Normalize

function ns.NewIndex()
	return setmetatable({ names = {}, parts = {}, count = 0 }, Index)
end

function Index:Add(id, name)
	self.names[id] = name
	self.count = self.count + 1
	self.parts[self.count] = Normalize(name) .. "|" .. id
	self.blob, self.sorted = nil, nil
end

-- Calls fn(id, normalizedName, isPrefix) for every name containing needle
-- (prefixOnly: starting with it).
function Index:Scan(needle, fn, prefixOnly)
	if not self.blob then self.blob = "\n" .. table.concat(self.parts, "\n") .. "\n" end
	local blob, find, byte, sub = self.blob, string.find, string.byte, string.sub
	local pattern = prefixOnly and ("\n" .. needle) or needle
	local pos, hits = 1, 0
	while hits < MAX_HITS do
		local s = find(blob, pattern, pos, true)
		if not s then break end
		if prefixOnly then s = s + 1 end
		local lineEnd = find(blob, "\n", s, true)
		local lineStart = s
		while byte(blob, lineStart - 1) ~= 10 do lineStart = lineStart - 1 end
		local norm, id = sub(blob, lineStart, lineEnd - 1):match("^([^|]*)|(%d+)$")
		-- a digit-only needle can also hit the id part of the line; ignore those
		if norm and s + #needle - 1 < lineStart + #norm then
			hits = hits + 1
			fn(tonumber(id), norm, s == lineStart)
		end
		pos = lineEnd
	end
end

-- Everything the filter accepts, alphabetically; `first` narrows to names starting with it.
function Index:Browse(first, limit, filter)
	local names = self.names
	if not self.sorted then
		local sorted = {}
		for id in pairs(names) do sorted[#sorted + 1] = id end
		table.sort(sorted, function(a, b)
			if names[a] ~= names[b] then return names[a] < names[b] end
			return a < b
		end)
		self.sorted = sorted
	end
	local results = {}
	for _, id in ipairs(self.sorted) do
		if (first == "" or Normalize(names[id]):sub(1, #first) == first) and (not filter or filter(id)) then
			results[#results + 1] = { id = id, name = names[id] }
			if #results >= limit then break end
		end
	end
	return results
end

-- Returns up to `limit` results { id, name }, best match first. filter(id) may reject
-- candidates. With browse set, short or empty text lists everything instead of nothing.
function Index:Search(text, limit, filter, browse)
	limit = limit or 10
	local needle = Normalize(text)
	if #needle < 2 then
		return browse and self:Browse(needle, limit, filter) or {}
	end

	local names, results, seen = self.names, {}, {}
	local function Add(id, norm, isPrefix)
		if seen[id] or (filter and not filter(id)) then return end
		seen[id] = true
		local score = (norm == needle and 0) or (isPrefix and 1) or 2
		results[#results + 1] = { id = id, name = names[id], score = score }
	end

	self:Scan(needle, Add, true) -- prefix matches first so the hit cap never crowds them out
	self:Scan(needle, Add)

	-- Nothing contiguous: accept the words in any order ("snapper longjaw").
	if #results == 0 then
		local words = {}
		for w in text:gmatch("%S+") do
			w = Normalize(w)
			if #w > 0 then words[#words + 1] = w end
		end
		if #words > 1 then
			table.sort(words, function(a, b) return #a > #b end) -- longest word is the most selective
			self:Scan(words[1], function(id, norm)
				for i = 2, #words do
					if not norm:find(words[i], 1, true) then return end
				end
				Add(id, norm, false)
			end)
		end
	end

	table.sort(results, function(a, b)
		if a.score ~= b.score then return a.score < b.score end
		if #a.name ~= #b.name then return #a.name < #b.name end
		if a.name ~= b.name then return a.name < b.name end
		return a.id < b.id
	end)
	for i = #results, limit + 1, -1 do results[i] = nil end
	return results
end
