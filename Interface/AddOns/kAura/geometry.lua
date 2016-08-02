local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local kAura = _G.kAura

-- DistanceBetweenPoints(100, 200, 500, 1200) - Get the distance (in yards) the points 100,200 and 500,1200
-- DistanceBetweenPoints(UnitPosition('raid3'), UnitPosition('player')) - Get the distance between the player and the 'raid3' unit
-- @ax number - Point A x-coordinate
-- @ay number - Point A y-coordinate
-- @bx number - Point B x-coordinate
-- @by number - Point B y-coordinate
-- return number - Distance (in yards) between both points.
function kAura:Geometry_DistanceBetweenPoints(ax, ay, bx, by)
  if ax and ay and by and by then
    local dx = ax - bx
    local dy = ay - by
    return (dx * dx + dy * dy) ^ 0.5
  end
  return nil
end

-- DistanceBetweenUnits('raid3', 'player') - Get the distance (in yards) between the player and the third raid member.
-- DistanceBetweenUnits('raid3') - Same as above (default unit is 'player').
-- DistanceBetweenUnits('raid19, 'party4') - Distance between raid member nineteen and player's party member four.
-- [@unitA] string - (Optional) Friendly unit A to check.  Defaults to 'player'.
-- [@unitB] string - (Optional) Friendly unit B to check.  Defaults to 'player'.
-- return number - Distance (in yards) between both units.
function kAura:Geometry_DistanceBetweenUnits(unitA, unitB)
  unitA = unitA or 'player'
  unitB = unitB or 'player'
  local ax, ay = UnitPosition(unitA)
  local bx, by = UnitPosition(unitB)
  if ax and bx then
    local dx = ax - bx
    local dy = ay - by
    return (dx * dx + dy * dy) ^ 0.5
  end
  return nil
end

-- DistanceToPoint(200, 500) - Get the distance (in yards) between the player and the point 200,500.
-- DistanceToPoint(UnitPosition('party4')) - Get the distance between player and the fourth party member of the player.
-- @x number - x-coordinate
-- @y number - y-coordinate
-- return number - Distance (in yards) between player and specified point.
function kAura:Geometry_DistanceToPoint(x, y)
  local playerX, playerY = UnitPosition('player')
  if x and y and playerX and playerY then
    local dx = playerX - x
    local dy = playerY - y
    return (dx * dx + dy * dy) ^ 0.5
  end
end

-- DistanceToUnit('raid3') - Get the distance (in yards) between the player and the third raid member.
-- DistanceToUnit('party4') - Get the distance between player and the fourth party member of the player.
-- @unit string - Friendly unit to check.
-- return number - Distance (in yards) between player and specified unit.
function kAura:Geometry_DistanceToUnit(unit)
  local distanceSquared = UnitDistanceSquared(unit)
  if distanceSquared then return distanceSquared  ^ 0.5 end
  return nil
end