local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error

local MAJOR,MINOR = "kLibUtility-1.0", 1

local kLibUtility, oldminor = LibStub:NewLibrary(MAJOR, MINOR)

if not kLibUtility then return end -- No upgrade needed

kLibUtility.embeds = kLibUtility.embeds or {} -- table containing objects kLibUtility is embedded in.
kLibUtility.commands = kLibUtility.commands or {} -- table containing commands registered
kLibUtility.weakcommands = kLibUtility.weakcommands or {} -- table containing self, command => func references for weak commands that don't persist through enable/disable

-- Lua APIs
local tconcat, tostring, select = table.concat, tostring, select
local type, pairs, error = type, pairs, error
local format, strfind, strsub = string.format, string.find, string.sub
local max = math.max

--[[ Destroy all entries in a table, preserving table memory slot
]]
function kLibUtility:Utility_DestroyTable(table)
  for i,v in pairs(table) do table[i] = nil end
end

--[[ Filter the data of a table and return filtered results
]]
function kLibUtility:Utility_FilterTable(table, filterFunc)
  if not table or not type(table) == 'table' or not filterFunc then return end
  for i=#table,1,-1 do
    if not filterFunc(table[i]) then tremove(table, i) end
  end
  return table
end

--[[ Generate test data table
]]
function kLibUtility:Utility_GenerateTestData(columns, rows)
  rows = rows or 5
  columns = columns or 5
  local data = {}
  for row=1,rows do
    data[row] = {}
    for column=1,columns do
      tinsert(data[row], ('%s'):format(self:Utility_GenerateUniqueId()))    
    end
  end
  return data
end

--[[ Generate a unique identifier
]]
function kLibUtility:Utility_GenerateUniqueId()
  local id = {}
  local characters = {
    'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 
    'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 
    's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', 
    '1', '2', '3', '4', '5', '6', '7', '8', '9'
  }
  local singlet
  for i=1,self.uniqueIdLength or 8 do
    case = math.random(1,2)
    char = math.random(1,#characters)
    if case == 1 then
      singlet = string.upper(characters[char])
    else
      singlet = characters[char]
    end
    table.insert(id, case == 1 and string.upper(characters[char]) or characters[char])
  end
  return(table.concat(id))
end 

--[[ Retrieve the player count in the party
]]
function kLibUtility:Utility_GetPlayerCount()
  return (GetNumGroupMembers() > 0) and GetNumGroupMembers() or 1
end

--[[ Retrieve specialization list for player
]]
function kLibUtility:Utility_GetSpecializations()
  local specs
  for i=1,GetNumSpecializations() do
    local id, name, description, icon, background, role = GetSpecializationInfo(i)
    specs = specs or {}
    if name then
      tinsert(specs, {
        name = name,
        icon = icon,
        role = role,
      })
    end
  end
  return specs
end

--[[ Retrieve the X entry of a non-indexed table
]]
function kLibUtility:Utility_GetTableEntry(data, num, getIndex)
  if not data or not type(data) == 'table' then return end
  num = num or 1
  local count = 0
  for i,v in pairs(data) do
    count = count + 1
    if num == count then
      if getIndex then return i else return v end
    end
  end
end

--[[ Determine if number if integer (whole)
]]
function kLibUtility:Utility_IsInteger(value)
  return math.floor(value) == value
end

--[[ Determine if player name is current player
]]
function kLibUtility:Utility_IsSelf(player)
  return (UnitName(player) == UnitName('player'))
end

--[[ Compare two tables
]]
function kLibUtility:Utility_MatchTables(tbl1, tbl2)
  for k,v in pairs(tbl1) do
    if (type(v) == 'table' and type(tbl2[k]) == 'table') then
      if (not self:Utility_TableCompare(v, tbl2[k])) then return false end
    else
      if (v ~= tbl2[k]) then return false end
    end
  end
  for k,v in pairs(tbl2) do
    if (type(v) == 'table' and type(tbl1[k]) == 'table') then
      if (not self:Utility_TableCompare(v, tbl1[k])) then return false end
    else
      if (v ~= tbl1[k]) then return false end
    end
  end
  return true
end

--[[ Round a number
]]
function kLibUtility:Utility_Round(value, decimal)
  if (decimal) then
    return math.floor((value * 10^decimal) + 0.5) / (10^decimal)
  else
    return math.floor(value+0.5)
  end
end

--[[ Convert seconds integer into clock output
]]
function kLibUtility:Utility_SecondsToClock(seconds)
  seconds = tonumber(seconds)
  if seconds == 0 then return end
  hours = string.format("%02.f", math.floor(seconds/3600));
  mins = string.format("%02.f", math.floor(seconds/60 - (hours*60)));
  secs = string.format("%02.f", math.floor(seconds - hours*3600 - mins *60));
  if seconds >= 60*60 then
    return hours..":"..mins..":"..secs
  else
    return mins..":"..secs
  end
end

--[[ Shuffle a table randomly
]]
function kLibUtility:Utility_Shuffle(table)
  if not table or not type(table) == 'table' then return end
  local rand = math.random
  local iterations = #table
  local j
  for i = iterations, 2, -1 do -- backwards
    j = rand(i)
    table[i], table[j] = table[j], table[i]
  end
  return table
end

--[[ Split a string into a table
]]
function kLibUtility:Utility_SplitString(subject, delimiter)
  local result
  local from  = 1
  local delim_from, delim_to = string.find( subject, delimiter, from  )
  while delim_from do
    result = result or {}
    table.insert( result, string.sub( subject, from , delim_from-1 ) )
    from  = delim_to + 1
    delim_from, delim_to = string.find( subject, delimiter, from  )
  end
  table.insert( result, string.sub( subject, from  ) )
  return result
end

--[[ Check if table has value
]]
function kLibUtility:Utility_TableContains(tbl, value, ...)
  if ... then
    local count = #{...}
    for table_index, table_item in pairs(tbl) do
      data = nil
      if count and (count > 1) then
        for i,v in pairs({...}) do
          if i==1 then
            -- Check for first value
            data = table_item[v]
          else
            if i ~= count then 
              if not data[v] then 
                data[v] = {} 
              else 
                data = data[v] 
              end 
            else 
              data = data[v] 
            end
          end
        end
      else 
        data = table_item[select(1, ...)]
      end
      if (value == data) then return true end
    end
  else
    return tContains(tbl, value)
  end
end

--[[ Get difference in timestamps
]]
function kLibUtility:Utility_TimestampDiff(time1, time2, interval)
  if not time1 then return end
  interval = interval or 'second' 
  time2 = time2 or time()
  if not (type(time1) == 'number') then time1 = tonumber(time1) end 
  if not (type(time2) == 'number') then time2 = tonumber(time2) end 
  local diff = time2 - time1
  if interval == 'second' then
    return diff
  elseif interval == 'minute' then
    return diff / 60
  elseif interval == 'hour' then
    return diff / (60*60)
  elseif interval == 'day' then
    return diff / (60*60*24)
  end
end

--- embedding and embed handling
local mixins = {
  'Utility_DestroyTable',
  'Utility_FilterTable',
  'Utility_GenerateTestData',
  'Utility_GetPlayerCount',
  'Utility_GenerateUniqueId',
  'Utility_GetSpecializations',
  'Utility_GetTableEntry',
  'Utility_IsInteger',
  'Utility_IsSelf',
  'Utility_MatchTables',
  'Utility_Round',
  'Utility_SecondsToClock',
  'Utility_Shuffle',
  'Utility_SplitString',
  'Utility_TableContains',
  'Utility_TimestampDiff'
} 

-- Embeds kLibUtility into the target object making the functions from the mixins list available on target:..
-- @param target target object to embed AceBucket in
function kLibUtility:Embed( target )
  for k, v in pairs( mixins ) do
    target[v] = self[v]
  end
  self.embeds[target] = true
  return target
end

function kLibUtility:OnEmbedEnable( target )
  if kLibUtility.weakcommands[target] then
    for command, func in pairs( kLibUtility.weakcommands[target] ) do
      target:RegisterChatCommand( command, func, false, true ) -- nonpersisting and silent registry
    end
  end
end

function kLibUtility:OnEmbedDisable( target )
  if kLibUtility.weakcommands[target] then
    for command, func in pairs( kLibUtility.weakcommands[target] ) do
      target:UnregisterChatCommand( command ) -- TODO: this could potentially unregister a command from another application in case of command conflicts. Do we care?
    end
  end
end

for addon in pairs(kLibUtility.embeds) do
  kLibUtility:Embed(addon)
end
