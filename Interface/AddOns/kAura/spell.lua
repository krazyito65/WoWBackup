

-- GetSpellCooldown('Guard') - Get the current time remaining on Guard's cooldown.
-- GetSpellCooldown(115295) - Get the current time remaining on Guard's cooldown.
-- GetSpellCooldown(115295, true) - Get the total duration of Guard's cooldown.
-- @spell string/number - Spell name, spell Id, or slot ID of spell to query
-- [@getDuration] boolean - Determine if return value should be cooldown total duration instead of cooldown remaining time.
-- return number - The cooldown remaining or total duration, if appropriate. Return of 0 (zero) indicates ability not on cooldown.  Return of nil indicates ability not found.
function kAura:Spell_GetSpellCooldown(spell, getDuration)
  if not spell then return end
  local start, duration, enabled = GetSpellCooldown(spell)
  if not start then return start end
  if getDuration then return duration end
  if start == 0 then return start end
  return (start + duration - GetTime())
end

-- IsSpellChanneled('Soothing Mist', ...) - Determines if Soothing Mist channel has started
-- IsSpellChanneled(115175, ...) - Determines if Soothing Mist channel has started
-- @value string/number - SpellName or SpellId
-- @... list - Value list from UNIT_SPELLCAST_CHANNEL_START event returns
-- return string - UnitId of unit firing channeled spell start event
function kAura:Spell_IsSpellChanneled(value, ...)
  if not select(1, ...) or select(1, ...) ~= 'UNIT_SPELLCAST_CHANNEL_START' or not value then return end
  if type(value) == 'string' then comparison = select(3, ...) else comparison = select(6, ...) end
  if not comparison then return end
  return (value == comparison) and select(2, ...)
end

-- IsSpellChannelStopped('Soothing Mist', ...) - Determines if Soothing Mist channel has stopped
-- IsSpellChannelStopped(115175, ...) - Determines if Soothing Mist channel has stopped
-- @value string/number - SpellName or SpellId
-- @... list - Value list from UNIT_SPELLCAST_CHANNEL_STOP event returns
-- return string - UnitId of unit firing channeled spell stop event
function kAura:Spell_IsSpellChannelStopped(value, ...)
  if not select(1, ...) or select(1, ...) ~= 'UNIT_SPELLCAST_CHANNEL_STOP' or not value then return end
  if type(value) == 'string' then comparison = select(3, ...) else comparison = select(6, ...) end
  if not comparison then return end
  return (value == comparison) and select(2, ...)
end

function kAura:Spell_UnitCastingTime(spell, unit, remaining)
  local _, startTime, endTime = kAura:Spell_UnitIsCasting(spell, unit)
  if startTime and endTime then
    if remaining then
      return ((endTime - (GetTime() * 1000)) / 1000)
    else
      return (((GetTime() * 1000) - startTime) / 1000)
    end
  end
end

function kAura:Spell_UnitChannelingTime(spell, unit, remaining)
  local _, startTime, endTime = kAura:Spell_UnitIsChanneling(spell, unit)
  if startTime and endTime then
    if remaining then
      return ((endTime - (GetTime() * 1000)) / 1000)
    else
      return (((GetTime() * 1000) - startTime) / 1000)
    end
  end
end

function kAura:Spell_UnitIsCasting(spell, unit)
  unit = unit or 'player'
  if not UnitExists(unit) then return end
  local spellName, _, _, _, spellStart, spellEnd, _, spellId = UnitCastingInfo(unit)
  if not spellName then return end
  if spell then
    if type(spell) == 'string' then
      if spellName == spell then return spellName, spellStart, spellEnd end
    elseif type(tonumber(spell)) == 'number' then
      if tonumber(spell) == spellId then return spellName, spellStart, spellEnd end
    end    
  else
    return spellName, spellStart, spellEnd
  end
end

function kAura:Spell_UnitIsChanneling(spell, unit)
  unit = unit or 'player'
  if not UnitExists(unit) then return end
  local spellName, _, _, _, spellStart, spellEnd = UnitChannelInfo(unit)
  if not spellName then return end
  if spell then
    if type(spell) == 'string' then
      if spellName == spell then return spellName, spellStart, spellEnd end
    end    
  else
    return spellName, spellStart, spellEnd
  end
end