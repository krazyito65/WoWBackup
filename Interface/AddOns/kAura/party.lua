local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local kAura = _G.kAura

-- IsClassInParty('Death Knight') - Determine if a Death Knight is in group
-- IsClassInParty('MONK') - Determine if a Monk is in group
-- IsClassInParty(4) - Determine if a Rogue is in the group (using ClassID number identifier: http://www.wowpedia.org/ClassId)
-- @class string/number - English class name or numeric ClassID to check.
-- return boolean - Whether class in question was found in the group
function kAura:Party_IsClassInParty(class)
  if not class or (not IsInRaid() and not IsInGroup()) then return end
  local name, id, classDisplayName, className, classID
  if type(class) == 'string' then name = string.upper(string.gsub(class, '(%s+)', '')) elseif type(class) == 'number' then id = class end
  for i=1,GetNumGroupMembers() do
    local unit = IsInRaid() and ('raid%s'):format(i) or IsInGroup() and ('party%s'):format(i)
    if UnitExists(unit) then
      classDisplayName, className, classID = UnitClass(unit)
      if name then
        if name == className then return true end
      elseif id then 
        if id == classID then return true end
      end
    end         
  end
end