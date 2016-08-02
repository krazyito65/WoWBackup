local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error

local MAJOR,MINOR = "kLibOptions-1.0", 1

local kLibOptions, oldminor = LibStub:NewLibrary(MAJOR, MINOR)

if not kLibOptions then return end -- No upgrade needed

kLibOptions.embeds = kLibOptions.embeds or {} -- table containing objects kLibOptions is embedded in.
kLibOptions.commands = kLibOptions.commands or {} -- table containing commands registered
kLibOptions.weakcommands = kLibOptions.weakcommands or {} -- table containing self, command => func references for weak commands that don't persist through enable/disable

-- Lua APIs
local tconcat, tostring, select = table.concat, tostring, select
local type, pairs, error = type, pairs, error
local format, strfind, strsub = string.format, string.find, string.sub
local max = math.max

--[[ Retrieve the selected key in the data table
]]
function kLibOptions:Options_GetSelected(data, selectionType)
  if not data or not type(data) == 'table' then return end
  selectionType = selectionType or 'key'
  for i,v in pairs(data) do
    if type(v) == 'table' then
      if v.selected and v.selected == true then
        if selectionType == 'key' then
          return i
        elseif selectionType == 'value' then
          return v
        elseif v[selectionType] then
          return v[selectionType]
        end
      end
    end
  end
end

--[[ Retrieve the value list for dropdown selection use from table/key
]]
function kLibOptions:Options_GetValueList(data, key)
  if not data or not key or not type(data) == 'table' then return end
  local output
  for i,v in pairs(data) do
    if v[key] then
      output = output or {}
      output[i] = v[key]
    end
  end
  return output
end

--[[ Resets the selected for the data table if necessary
]]
function kLibOptions:Options_ResetSelected(data)
  if not data or not type(data) == 'table' then return end
  local selectedCount = 0
  for i,v in pairs(data) do
    if type(v) == 'table' then
      if v.selected and v.selected == true then
        selectedCount = selectedCount + 1
      end
    end
  end
  -- If non-one value if selections then select first
  if selectedCount ~= 1 then
    self:Options_SetSelectedFirst(data)
  end
end

--[[ Properly edit specified table to ensure selected key is only selected option
]]
function kLibOptions:Options_SetSelected(data, key)
  if not data or not key or not type(data) == 'table' or not data[key] then return end
  for i,v in pairs(data) do
    v.selected = false
  end
  data[key].selected = true
end

--[[ Select the first key option in data table
]]
function kLibOptions:Options_SetSelectedFirst(data)
  if not data or not type(data) == 'table' then return end
  for i,v in pairs(data) do
    self:Options_SetSelected(data, i)
    break
  end
end

--- embedding and embed handling
local mixins = {
  'Options_GetSelected',
  'Options_GetValueList',
  'Options_ResetSelected',
  'Options_SetSelected',
  'Options_SetSelectedFirst',y
} 

-- Embeds kLibOptions into the target object making the functions from the mixins list available on target:..
-- @param target target object to embed AceBucket in
function kLibOptions:Embed( target )
  for k, v in pairs( mixins ) do
    target[v] = self[v]
  end
  self.embeds[target] = true
  return target
end

function kLibOptions:OnEmbedEnable( target )
  if kLibOptions.weakcommands[target] then
    for command, func in pairs( kLibOptions.weakcommands[target] ) do
      target:RegisterChatCommand( command, func, false, true ) -- nonpersisting and silent registry
    end
  end
end

function kLibOptions:OnEmbedDisable( target )
  if kLibOptions.weakcommands[target] then
    for command, func in pairs( kLibOptions.weakcommands[target] ) do
      target:UnregisterChatCommand( command ) -- TODO: this could potentially unregister a command from another application in case of command conflicts. Do we care?
    end
  end
end

for addon in pairs(kLibOptions.embeds) do
  kLibOptions:Embed(addon)
end
