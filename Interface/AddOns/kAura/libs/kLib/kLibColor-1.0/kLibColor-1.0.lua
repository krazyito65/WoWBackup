local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error

local MAJOR,MINOR = "kLibColor-1.0", 1

local kLibColor, oldminor = LibStub:NewLibrary(MAJOR, MINOR)

if not kLibColor then return end -- No upgrade needed

kLibColor.embeds = kLibColor.embeds or {} -- table containing objects kLibColor is embedded in.
kLibColor.commands = kLibColor.commands or {} -- table containing commands registered
kLibColor.weakcommands = kLibColor.weakcommands or {} -- table containing self, command => func references for weak commands that don't persist through enable/disable

-- Lua APIs
local tconcat, tostring, select = table.concat, tostring, select
local type, pairs, error = type, pairs, error
local format, strfind, strsub = string.format, string.find, string.sub
local max = math.max

--[[ Colorize part of a string
]]
function kLibColor:Color_ColorizeSubstringInString(subject, substring, r, g, b)
  local t = {};
  for i = 1, strlen(subject) do
    local iStart, iEnd = string.find(strlower(subject), strlower(substring), i, strlen(substring) + i - 1)
    if iStart and iEnd then
      for iTrue = iStart, iEnd do
        t[iTrue] = true;
      end
    else
      if not t[i] then
        t[i] = false;
      end
    end
  end
  local sOut = '';
  local sColor = self:Color_Get(r*255,g*255,b*255, nil, 'hex');
  for i = 1, strlen(subject) do
    if t[i] == true then
      sOut = ('%s|CFF%s%s|r'):format(sOut, sColor, strsub(subject, i, i))
    else
      sOut = ('%s%s'):format(sOut, strsub(subject, i, i))
    end
  end
  return strlen(sOut) > 0 and sOut or nil
end

--[[ Retrieve the default color for an object type and color type
]]
function kLibColor:Color_Default(objectType, colorType, data)
  objectType = objectType or 'Frame'
  colorType = colorType or 'default'
  data = data or self.colorDefaults
  for i,v in pairs(data) do
    -- Check if data[objectType] exists and has colorType
    if i == objectType and v.colors and v.colors[colorType] then
      return v.colors[colorType]
    elseif i == objectType then -- objectType found, but no color records
      return true
    else
      -- Check for children
      if v.children then
        -- Recursively loop through children and return the value found     
        local color = self:Color_Default(objectType, colorType, v.children)
        if color and self:Color_Get(color) then
          return self:Color_Get(color) -- This is the matching color for objectType
        elseif color and type(color) == 'boolean' then
          -- Child contains objectType, but we must find matching colorType
          if v.colors and v.colors[colorType] then 
            return v.colors[colorType]
          else
            -- No colorType match for this parent found, return true to go up to next parent
            return true
          end
        end
      end
    end 
  end
end

--[[ Retrieve color
]]
function kLibColor:Color_Get(r, g, b, a, returnType)
  if not r then return end
  returnType = returnType or 'table'
  local color
  -- Hex?
  if self:Color_FromHex(r) then
    color = self:Color_FromHex(r)
  end
  -- Color table?
  if self:Color_FromTable(r) then
    color = self:Color_FromTable(r)
  end
  if self:Color_FromValues(r, g, b, a) then
    color = self:Color_FromValues(r, g, b, a)
  end
  if color then
    if returnType == 'table' then
      return color
    elseif returnType == 'hex' then
      return self:Color_ToHex(color)
    elseif returnType == 'decimal' or returnType == 'decimals' or returnType == 'dec' then
      return r, g, b, a
    elseif returnType == 'integer' or returnType == 'integers' or returnType == 'int' then
      return self:Utility_Round(r * 255), self:Utility_Round(g * 255), self:Utility_Round(b * 255), self:Utility_Round(a * 255)
    end
  end
end

function kLibColor:Color_FromHex(color)
  if not color or not (type(color) == 'string') or not (color:len() == 8 or color:len() == 6) or not color:find('^%x*$') then return end
  local r, g, b, a
  if color:len() == 8 then
    r, g, b, a = tonumber(color:sub(1, 2), 16) / 255, tonumber(color:sub(3, 4), 16) / 255, tonumber(color:sub(5, 6), 16) / 255, tonumber(color:sub(7, 8), 16) / 255
    if r >= 0.0 and r <= 1.0 and g >= 0.0 and g <= 1.0 and b >= 0.0 and b <= 1.0 and a >= 0.0 and a <= 1.0 then
    
    elseif r >= 0 and r <= 255 and g >= 0 and g <= 255 and b >= 0 and b <= 255 and a >= 0 and a <= 255 then
      --values are valid 0..255, convert to 0..1
      r = r / 255
      g = g / 255
      b = b / 255
      a = a / 255
    end
  else
    r, g, b, a = tonumber(color:sub(1, 2), 16) / 255, tonumber(color:sub(3, 4), 16) / 255, tonumber(color:sub(5, 6), 16) / 255, 1
    if r >= 0.0 and r <= 1.0 and g >= 0.0 and g <= 1.0 and b >= 0.0 and b <= 1.0 and a >= 0.0 and a <= 1.0 then
    
    elseif r >= 0 and r <= 255 and g >= 0 and g <= 255 and b >= 0 and b <= 255 and a >= 0 and a <= 255 then
      --values are valid 0..255, convert to 0..1
      r = r / 255
      g = g / 255
      b = b / 255
      a = a / 255
    end   
  end
  return {r = r, g = g, b = b, a = a}
end

--[[ Get color table from color table
]]
function kLibColor:Color_FromTable(color)
  if not color or not (type(color) == 'table') or not color.r or not color.g or not color.b then return end
  return {
    r = color.r, 
    g = color.g,
    b = color.b, 
    a = color.a or 1
  }
end

--[[ Get color table from rgba values
]]
function kLibColor:Color_FromValues(r, g, b, a)
  if not r or not g or not b then return end
  a = tonumber(a) or 1
  -- Check if any > 1
  if tonumber(r) > 1 or tonumber(g) > 1 or tonumber(b) > 1 or tonumber(a) > 1 then -- Assumed 255 vals
    if a == 1 then a = 255 end
    return {
      r = r / 255,
      g = g / 255,
      b = b / 255,
      a = a / 255,
    }
  elseif not self:Utility_IsInteger(r) or not self:Utility_IsInteger(g) or not self:Utility_IsInteger(b) or not self:Utility_IsInteger(a) then -- percentages
    return {
      r = r,
      g = g,
      b = b,
      a = a,
    }
  elseif  (tonumber(r) == 1 and tonumber(g) == 1 and tonumber(b) == 1 and tonumber(a) == 1) or 
      (tonumber(r) == 0 and tonumber(g) == 0 and tonumber(b) == 0 and tonumber(a) == 0) then -- percentages
    return {
      r = r,
      g = g,
      b = b,
      a = a,
    }
  end
end

--[[ Convert color to hex
]]
function kLibColor:Color_ToHex(r, g, b, a)
  local color = self:Color_Get(r, g, b, a)
  if not color or not (type(color) == 'table') then return end
  return string.format("%02x%02x%02x", 
    self:Utility_Round(color.r * 255),
    self:Utility_Round(color.g * 255),
    self:Utility_Round(color.b * 255)
  )
end

--- embedding and embed handling
local mixins = {
  'Color_ColorizeSubstringInString',
  'Color_Default',
  'Color_Get',
  'Color_FromHex',
  'Color_FromTable',
  'Color_FromValues',
  'Color_ToHex',
} 

-- Embeds kLibColor into the target object making the functions from the mixins list available on target:..
-- @param target target object to embed AceBucket in
function kLibColor:Embed( target )
  for k, v in pairs( mixins ) do
    target[v] = self[v]
  end
  self.embeds[target] = true
  return target
end

function kLibColor:OnEmbedEnable( target )
  if kLibColor.weakcommands[target] then
    for command, func in pairs( kLibColor.weakcommands[target] ) do
      target:RegisterChatCommand( command, func, false, true ) -- nonpersisting and silent registry
    end
  end
end

function kLibColor:OnEmbedDisable( target )
  if kLibColor.weakcommands[target] then
    for command, func in pairs( kLibColor.weakcommands[target] ) do
      target:UnregisterChatCommand( command ) -- TODO: this could potentially unregister a command from another application in case of command conflicts. Do we care?
    end
  end
end

for addon in pairs(kLibColor.embeds) do
  kLibColor:Embed(addon)
end
