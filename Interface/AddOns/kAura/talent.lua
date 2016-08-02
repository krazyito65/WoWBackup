local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local kAura = _G.kAura

function kAura:Talent_HasTalent(tier, column)
  if not tier then return end
  local selected
  local specGroup = GetActiveSpecGroup()
  if type(tier) == 'number' then -- Index
    selected = select(5, GetTalentInfo(tier, column, specGroup))
    return selected
  elseif type(tier) == 'string' then
    local id, name, talentTier, talentColumn
    local talentCount = 18
    if select(4, GetBuildInfo()) >= 60000 then
      talentCount = 21
    end
    for i=1,talentCount do
      talentTier = math.floor((i-1)/3) + 1
      talentColumn = (i % 3) == 0 and 3 or i % 3
      id, name, _, _, selected = GetTalentInfo(talentTier, talentColumn, specGroup)
      if name and name == tier then return selected end
    end
    return false
  end
end