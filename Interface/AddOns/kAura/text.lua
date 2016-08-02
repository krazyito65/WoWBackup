local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local kAura = _G.kAura

-- ShortenNumber(12345.67) - Return shortened, rounded value of 12345.67 (12k)
-- ShortenNumber(12345.67, 1) - Return 12345.67 shortened, with 1 decimal place (12.6k)
-- ShortenNumber(12345.67, 1, '%s - %s') - Return 12345.67 shortened, with 1 decimal place using format string '%s - %s' (12.6 - k)
-- @value number - Numeric value to format, shorten, or round.
-- [@decimal] number - (Optional) Number of decimal places to round (default 0)
-- [@pattern] string - (Optional) String pattern value to create output string (default '%s%s')
-- return string - Formatted value
function kAura:Text_ShortenNumber(value, decimal, pattern)
  if not value then return end
  pattern = pattern or '%s%s'
  function round(val, decimal)
    if (decimal) then
      return math.floor( (val * 10^decimal) + 0.5) / (10^decimal)
    else
      return math.floor(val+0.5)
    end
  end
  if(value > 999999999) then return (pattern):format(round(value/1000000000, decimal), 'b') end           
  if(value > 999999) then return (pattern):format(round(value/1000000, decimal), 'm') end        
  if(value > 999) then return (pattern):format(round(value/1000, decimal), 'k') end        
  return (pattern):format(round(value, decimal), '')
end

function kAura:Text_StringSubstitution(text, ...)
  for iLists,list in pairs({...}) do
    for iItem,item in pairs(list) do
      if item.pattern then
        if type(item.pattern) == 'table' then
          for iPattern,pattern in pairs(item.pattern) do
            text = string.gsub(text, ("{%s}"):format(pattern), item.color and ('|cFF%s%s|r'):format(item.color, item.replacement) or item.replacement)
          end                    
        elseif type(item.pattern) == 'string' then
          text = string.gsub(text, ("{%s}"):format(item.pattern), item.color and ('|cFF%s%s|r'):format(item.color, item.replacement) or item.replacement)
        end
      end
    end
  end
  return text
end