local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local kAura = _G.kAura

-- GetSpellPower() - Get the current spell power for the player.
-- GetSpellPower('fire') - Get the current spell power for the 'fire' school for the player.
-- [@school] string - (Optional) Specify the school of magic for which to return the spell power value.  Default: nil, returning the base spell power value.
-- return number - The Spell Power value.
function kAura:Stat_GetSpellPower(school)
  local schools, spellPower = {'physical', 'holy', 'fire', 'nature', 'frost', 'shadow', 'arcane'}
  local GetIndex = function(table, value) for i,v in pairs(table) do if v == value then return i end end end
  if school and tContains(schools, school) then spellPower = GetSpellBonusDamage(GetIndex(schools, school)) else
    local holySchool = 2
    minModifier, holySchool = GetSpellBonusDamage(holySchool), 2
    for i=(holySchool+1), MAX_SPELL_SCHOOLS do
      local bonusDamage = GetSpellBonusDamage(i)
      minModifier = min(minModifier, bonusDamage)
      spellPower = bonusDamage
    end   
  end
  return spellPower
end

-- GetUnitAttackPower() - Get the current attack power for the current player
-- GetUnitAttackPower('raid2') - Get the current attack power for the 'raid2' UnitId player
-- GetUnitAttackPower('focus', 'negative') - Get the negative attack power value (from debuffs) for the 'focus' UnitId player
-- [@unit] string - (Optional) UnitId from which to obtain Attack Power value. Default: 'player'
-- [@type] string - (Optional) Attack Power value type ID, to return unique parts of the Attack Power makeup.  Default: 'current'
-- return number - The Attack Power value.
function kAura:Stat_GetUnitAttackPower(unit, type)
  unit, type = unit or 'player', type or 'current'
  if not UnitExists(unit) then return end
  local base, positive, negative = UnitAttackPower(unit)
  local current = base + positive + negative        
  if type == 'base' then return base
  elseif type == 'positive' then return positive
  elseif type == 'negative' then return negative
  else return current end
end

-- TimeToEnergy() - Return time (in seconds) until player reaches 100 energy.
-- TimeToEnergy(70) - Return time until player reaches 70 energy.
-- [@max] integer - (Optional) Max value to calculate time to reach.  Default: 100
-- return number - Time (in seconds) for energy to reach specified value.
function kAura:Stat_TimeToEnergy(max)
  return ((max and max or 100) - UnitPower('player')) / GetPowerRegen()
end