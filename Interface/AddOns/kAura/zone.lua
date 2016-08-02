local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local kAura = _G.kAura

-- InZone('Orgrimmar') - Determine if player is currently in the zone or subzone "Orgrimmar"
-- InZone('Orgrimmar', 'zone') - Determine if player is currently in the zone "Orgrimmar"
-- InZone('Orgrimmar', 'subzone') - Determine if player is currently in the subzone "Orgrimmar"
-- [@zone] string - Name of the zone or subzone to check
-- [@zoneType] string - (Optional) Determines the type of zone to be checked.  Valid: 'any', 'zone', 'subzone', or 'zone'  Default: 'any'
-- return boolean - The player is in the specified zone.
function kAura:Zone_InZone(zone, zoneType)
  if not zone then return end    
  zone, zoneType = string.lower(zone), zoneType and string.lower(zoneType) or 'any'
  local zoneText, subZoneText = string.lower(GetRealZoneText()), string.lower(GetSubZoneText() or "")
  if zoneType == 'any' then
    return ((zone == zoneText) or (zone == subZoneText))
  elseif zoneType == 'zone' then
    return (zone == zoneText)
  elseif (zoneType == 'sub' or zoneType == 'subzone') then
    return (zone == subZoneText)
  end
end