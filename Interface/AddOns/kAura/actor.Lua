local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local kAura = _G.kAura

-- CompareUnitHP() - Determine if PLAYER_HP == TARGET_HP
-- CompareUnitHP('raid1', '<=') - Determine if RAID1_HP <= TARGET_HP
-- CompareUnitHP('target', '<=', 'boss1') - Determine if TARGET_HP <= BOSS1_HP
-- CompareUnitHP('player', '>=', 'target', true) - Determine if PLAYER_HP_MAX >= TARGET_HP
-- CompareUnitHP('player', '<', 'target', true, true) - Determine if PLAYER_HP_MAX < TARGET_HP_MAX
-- [@unit1] string - (Optional) First UnitId to compare. Default: 'player'
-- [@compareType] string - (Optional) Type of mathematical comparison.  Default: '==' or equal.
-- [@unit2] string - (Optional) Second UnitId to compare. Default: 'target'
-- [@unit1Max] boolean - (Optional) Determine if Unit1 should be compared using Max health instead of current health. Default: false
-- [@unit2Max] boolean - (Optional) Determine if Unit2 should be compared using Max health instead of current health. Default: false
-- return boolean - The outcome of the comparison.
function kAura:Actor_CompareUnitHP(unit1, compareType, unit2, unit1Max, unit2Max)
  unit1, unit2 = unit1 or 'player', unit2 or 'target'
  if not UnitExists(unit1) or not UnitExists(unit2) then return false end		
  compareType = compareType or '=='
  local unit1Health, unit2Health = unit1Max and UnitHealthMax(unit1) or UnitHealth(unit1), unit2Max and UnitHealthMax(unit2) or UnitHealth(unit2)
  local value = (unit1Health == unit2Health)
  if compareType == '<'      then value = (unit1Health < unit2Health)
  elseif compareType == '>'  then value = (unit1Health > unit2Health)
  elseif compareType == '<=' then value = (unit1Health <= unit2Health)
  elseif compareType == '>=' then value = (unit1Health >= unit2Health) end
  return value
end

function kAura:Actor_GetUnitId(unit)
  local id        
  if not unit then return end
  if type(unit) == 'string' then -- name or unitId
    local baseTypes = {"player", "pet", "target", "focus", "mouseover"}
    if UnitExists(unit) and tContains(baseTypes, unit) then return unit end -- Standard unitId
    if UnitInRaid(unit) then return 'raid'..UnitInRaid(unit) end -- Player in raid
    for i=1,10 do
      id = 'boss'..i
      if id == unit then return unit end
      if UnitExists(id) and UnitName(id) == unit then return id end
    end
    -- Proper names
    if UnitExists('player')     and UnitName('player') == unit then     return 'player' end
    if UnitExists('pet')        and UnitName('pet') == unit then        return 'pet' end
    if UnitExists('target')     and UnitName('target') == unit then     return 'target' end
    if UnitExists('focus')      and UnitName('focus') == unit then      return 'focus' end
    if UnitExists('mouseover')  and UnitName('mouseover') == unit then  return 'mouseover' end            
  end
end

-- NearestUnit() - Get the unitId of the nearest player in party/raid
-- return string - UnitId string of nearest player OR nil if invalid
function kAura:Actor_NearestUnit()
  local numPlayers = GetNumGroupMembers()
  if numPlayers == 0 then return nil end
  local distance, nearestUnit, nearestDistance
  for i = 1, numPlayers do
    local unitId = IsInRaid() and "raid"..i or "party"..i
    distance = kAura.Geometry.DistanceToUnit(unitId)
    if UnitExists(unitId) and not UnitIsUnit(unitId, 'player') and not UnitIsDeadOrGhost(unitId) then
      if nearestUnit then
        -- Shorter
        if distance < nearestDistance then
          nearestUnit = unitId
          nearestDistance = distance
        end
      else
        nearestUnit = unitId
        nearestDistance = distance
      end            
    end
   end
   return nearestUnit
end

-- ParseGUID("Player-976-0002FD64") - Return the default parse value (unitType of 'Player') from the passed in Player GUID
-- ParseGUID(UnitGUID('player')) - Return the default parse value (unitType of 'Player') from the passed in Player GUID
-- ParseGUID(UnitGUID('player'), 'serverId') - Return the server ID of the passed in Player GUID
-- ParseGUID(UnitGUID('target'), 'id') - Return the 'id' (creature/NPC id, pet ID, etc) if applicable of target unit
-- @value string - A valid GUID string to parse
-- [@returnType] string - (Optional) Type of value to return if applicable (id, instanceId, playerId, serverId, spawnId, unitType, zoneId).  Default: 'unitType'
-- return string - Requested 'returnType' value
function kAura:Actor_ParseGUID(value, returnType)
  local objectType
  local returnType = returnType or 'unitType'
  local validObjectTypes = {"Creature", "GameObject", "Pet", "Player", "Vehicle", "Vignette"}
  for _,v in pairs(validObjectTypes) do if string.match(value, ("^%s%%-"):format(v)) then objectType = v end end
  if not objectType then return end
  local r = {}
  if objectType == 'Creature' or objectType == 'GameObject' or objectType == 'Pet' or objectType == 'Vehicle' then
    r.unitType, r.zero, r.serverId, r.instanceId, r.zoneId, r.id, r.spawnId = strsplit('-', value)
  elseif objectType == 'Player' then
    r.unitType, r.serverId, r.playerId = strsplit('-', value)
  elseif objectType == 'Vignette' then
    r.unitType, r.zero, r.serverId, r.instanceId, r.zoneId, r.zero, r.spawnId = strsplit('-', value)
  end
  return r[returnType]
end

-- UnitIsMinClassification('target', 'elite')
-- UnitIsMinClassification('boss3')
-- @unit string - UnitID to determine classification for
-- [@classification] string - (Optional) Minimum classification to check for (e.g. 'elite','rareelite','worldboss' etc).  Defaults to 'elite'.
-- return boolean - Whether param unit is equal to or greater in classification to param classification value.
function kAura:Actor_UnitIsMinClassification(unit, classification)
  local validClassifications = {'trivial','normal','rare','elite','rareelite','worldboss',}
  classification = classification or 'elite'
  if not UnitExists(unit) then return end
  if not tContains(validClassifications, classification) then return end
  local unitIndex, classIndex
  for i,v in ipairs(validClassifications) do
    if v == UnitClassification(unit) then unitIndex = i end
    if v == classification then classIndex = i end
  end
  if unitIndex and classIndex then if unitIndex >= classIndex then return true end end
  return false
end