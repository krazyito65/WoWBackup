local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local kAura = _G.kAura

-- AuraStack('Destabilize', ...) - Get the stack size for Destabilize aura
-- AuraStack(123059, ...) - Get the stack size for Destabilize aura
-- @value string/number - SpellName or SpellId
-- @... list - Value list from CLEU function
-- return number - Stack size of aura if exists
function kAura:Log_AuraStack(value, ...) 
  if not select(1, ...) or select(1, ...) ~= 'COMBAT_LOG_EVENT_UNFILTERED' or not value then return end
  local event, comparison = select(3, ...)
  if not event or not string.find(event, '_AURA_') then return end
  if type(value) == 'string' then
    comparison = select(14, ...)
  elseif type(value) == 'number' then
    comparison = tonumber(select(13, ...))
  else return end
  if not comparison or not (value == comparison) then return end
  local stack = select(17, ...)
  return stack
end

-- HasDestinationFlag(COMBATLOG_OBJECT_TYPE_NPC, ...) - Check if destination is an NPC type
-- HasDestinationFlag(COMBATLOG_OBJECT_TARGET, ...) - Check if destination is player's current target
-- @value CONSTANT - Unit flag (see: http://wow.gamepedia.com/UnitFlag)
-- @... list - Value list from CLEU function
-- return boolean - Whether specified Flag matches for destination unit
function kAura:Log_HasDestinationFlag(value, ...)
  if not select(1, ...) or select(1, ...) ~= 'COMBAT_LOG_EVENT_UNFILTERED' or not value then return end
  local flags = select(11, ...)
  if not flags then return end
  return (bit.band(flags, value) ~= 0)
end

-- HasDestinationRaidFlag(COMBATLOG_OBJECT_RAIDTARGET_MASK, ...) - Check if destination is marked with a raid marker
-- HasDestinationRaidFlag(COMBATLOG_OBJECT_RAIDTARGET1, ...) - Check if destination is marked with the 'Star' raid marker
-- @value CONSTANT - Raid flag (see: http://wow.gamepedia.com/RaidFlag)
-- @... list - Value list from CLEU function
-- return boolean - Whether specified Flag matches for destination unit
function kAura:Log_HasDestinationRaidFlag(value, ...)
  if not select(1, ...) or select(1, ...) ~= 'COMBAT_LOG_EVENT_UNFILTERED' or not value then return end
  local flags = select(12, ...)
  if not flags then return end
  return (bit.band(flags, value) ~= 0)
end

-- HasSourceFlag(COMBATLOG_OBJECT_TYPE_NPC, ...) - Check if source is an NPC type
-- HasSourceFlag(COMBATLOG_OBJECT_TARGET, ...) - Check if source is player's current target
-- @value CONSTANT - Unit flag (see: http://wow.gamepedia.com/UnitFlag)
-- @... list - Value list from CLEU function
-- return boolean - Whether specified Flag matches for destination unit
function kAura:Log_HasSourceFlag(value, ...)
  if not select(1, ...) or select(1, ...) ~= 'COMBAT_LOG_EVENT_UNFILTERED' or not value then return end
  local flags = select(7, ...)
  if not flags then return end
  return (bit.band(flags, value) ~= 0)
end

-- HasSourceRaidFlag(COMBATLOG_OBJECT_RAIDTARGET_MASK, ...) - Check if source is marked with a raid marker
-- HasSourceRaidFlag(COMBATLOG_OBJECT_RAIDTARGET1, ...) - Check if source is marked with the 'Star' raid marker
-- @value CONSTANT - Raid flag (see: http://wow.gamepedia.com/RaidFlag)
-- @... list - Value list from CLEU function
-- return boolean - Whether specified Flag matches for destination unit
function kAura:Log_HasSourceRaidFlag(value, ...)
  if not select(1, ...) or select(1, ...) ~= 'COMBAT_LOG_EVENT_UNFILTERED' or not value then return end
  local flags = select(8, ...)
  if not flags then return end
  return (bit.band(flags, value) ~= 0)
end

-- GetAmount('amount', ...) - Get the amount value of the combat log event
-- GetAmount('amount', ...) - Get the amount value of the combat log event
-- GetAmount('healing', ...) - Get the effective healing value of the combat log event
-- @returnType string - Type of amount value to return: 'amount', 'damage', 'overhealing', 'overkill', 'healing', 'effective-healing'
-- @... list - Value list from CLEU function
-- return number - Amount value
function kAura:Log_GetAmount(returnType, ...) 
  if not select(1, ...) or select(1, ...) ~= 'COMBAT_LOG_EVENT_UNFILTERED' then return end
  returnType = returnType and strlower(returnType) or 'amount'
  local amount, overkill, absorbed = select(16, ...)
  if returnType == 'amount' or returnType == 'damage' then
    return amount
  elseif returnType == 'overhealing' or returnType == 'overkill' then
	  return overkill
  elseif returnType == 'healing' or returnType == 'effective-healing' then
	  if amount then return (amount - overkill) end
  end
end

-- GetDestination('name', ...) - Get the name of the destination
-- GetDestination('unit-id', ...) - Get the unitId of the destination
-- GetDestination('id', ...) - Get the NPC ID (if applicable) of the destination
-- GetDestination('guid', ...) - Get the guid of the destination
-- @value string - ReturnType (name, unit-id, id, guid)
-- @... list - Value list from CLEU function
-- return string - Destination value
function kAura:Log_GetDestination(returnType, ...) 
  if not select(1, ...) or select(1, ...) ~= 'COMBAT_LOG_EVENT_UNFILTERED' then return end
  returnType = returnType and strlower(returnType) or 'name'
  local GUID = select(9, ...)
  if not GUID then return end
  local name = select(10, ...)
  if returnType == 'name' then return name end    
  if returnType == 'guid' then return GUID end    
  if returnType == 'unit-id' or returnType == 'unitid' then return kAura.Actor.GetUnitId(name) end
  return kAura.Actor.ParseGUID(GUID, returnType)
end

-- GetSource('name', ...) - Get the name of the source
-- GetSource('unit-id', ...) - Get the unitId of the source
-- GetSource('id', ...) - Get the NPC ID (if applicable) of the source
-- GetSource('guid', ...) - Get the GUID of the source
-- @value string - ReturnType (name, unit-id, id, guid)
-- @... list - Value list from CLEU function
-- return string - Source value
function kAura:Log_GetSource(returnType, ...) 
  if not select(1, ...) or select(1, ...) ~= 'COMBAT_LOG_EVENT_UNFILTERED' then return end
  returnType = returnType and strlower(returnType) or 'name'
  local GUID = select(9, ...)
  if not GUID then return end
  local name = select(10, ...)
  if returnType == 'name' then return name end    
  if returnType == 'guid' then return GUID end    
  if returnType == 'unit-id' or returnType == 'unitid' then return kAura.Actor.GetUnitId(name) end
  return kAura.Actor.ParseGUID(GUID, returnType)
end

-- IsDestination('Boss Name', ...) -- Check if destination unit name matches 'Boss Name'
-- IsDestination('boss3', ...) -- Check if destination unit-id matches boss3
-- IsDestination('0xF130C3030000037F2', ...) -- Check if destination unit GUID matches '0xF130C3030000037F2'
-- IsDestination(84235, ...) -- Check if destination NPC id matches 84235
-- @value string/number - UnitName, UnitID, GUID, or numerical ID
-- @... list - Value list from CLEU function
-- return boolean - Whether param value matches logged destination.
function kAura:Log_IsDestination(value, ...) 
  if not select(1, ...) or select(1, ...) ~= 'COMBAT_LOG_EVENT_UNFILTERED' or not value then return end
  local comparison
  local GUID = select(9, ...)    
  if type(value) == 'string' then
    comparison = select(10, ...)
    if value == GUID then return true end
    for i,v in pairs({'player', 'target', 'focus', 'raid'}) do
      if string.find(value, v) then value = UnitExists(value) and UnitName(value) end
    end
  elseif type(value) == 'number' then
    if GUID then comparison = tonumber(kAura.Actor.ParseGUID(GUID, 'id')) end
  else return end
  if not comparison then return end
  return (value == comparison)
end

-- IsEventType('SPELL_AURA_APPLIED', ...)
-- IsEventType('UNIT_DIED', ...)
-- @value string - Event type
-- @... list - Value list from CLEU function
-- return boolean - Whether param value matches logged event type.
function kAura:Log_IsEventType(value, ...)
  if not select(1, ...) or select(1, ...) ~= 'COMBAT_LOG_EVENT_UNFILTERED' or not value or type(value) ~= 'string' then return end
  local event = select(3, ...)
  if not event then return end
  if event == value then return true end
end

-- IsSource('Boss Name', ...) -- Check if source unit name matches 'Boss Name'
-- IsSource('boss3', ...) -- Check if source unit-id matches boss3
-- IsSource('0xF130C3030000037F2', ...) -- Check if source unit GUID matches '0xF130C3030000037F2'
-- IsSource(84235, ...) -- Check if source NPC id matches 84235
-- @value string/number - UnitName, UnitID, GUID, or numerical ID
-- @... list - Value list from CLEU function
-- return boolean - Whether param value matches logged source.
function kAura:Log_IsSource(value, ...) 
  if not select(1, ...) or select(1, ...) ~= 'COMBAT_LOG_EVENT_UNFILTERED' or not value then return end
  local comparison
  local GUID = select(5, ...)   
  if type(value) == 'string' then
    comparison = select(6, ...)
    if value == GUID then return true end
    for i,v in pairs({'player', 'target', 'focus', 'raid'}) do
      if string.find(value, v) then 
        value = UnitExists(value) and UnitName(value)
      end
    end
  elseif type(value) == 'number' then
    if GUID then comparison = tonumber(kAura.Actor.ParseGUID(GUID, 'id')) end
  else return end
  if not comparison then return end
  return (value == comparison)
end

-- IsSpell('Moonfire', ...)
-- IsSpell(54982, ...)
-- @value string/number - SpellName or numerical SpellID
-- @... list - Value list from CLEU function
-- return boolean - Whether param value matches logged spell.
function kAura:Log_IsSpell(value, ...)
  if not select(1, ...) or select(1, ...) ~= 'COMBAT_LOG_EVENT_UNFILTERED' or not value then return end
  local comparison
  if type(value) == 'string' then
    comparison = select(14, ...)
  elseif type(value) == 'number' then
    local n = select(13, ...)
    comparison = tonumber(n)
  else return end
  if not comparison then return end
  return (value == comparison)
end