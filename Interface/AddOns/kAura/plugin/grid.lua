kAura.Grid = kAura.Grid or {}

-- GetUnitFrame('player') - Retrieve the Grid unit frame for 'player' unit.
-- GetUnitFrame('Player-3661-06DB7142') - Retrieve the Grid unit frame for 'player' unit (using example GUID).
-- GetUnitFrame('raid3') - Retrieve the Grid unit frame for 'raid2' unit.
-- @unit string [UnitId or GUID] - Unit to retrieve Grid frame for
-- return frame - Grid unit frame
kAura.Grid.GetUnitFrame = function(unit)
   if not IsAddOnLoaded('Grid') then return end
   local GridFrame = Grid:GetModule("GridFrame")
   local GUID = UnitGUID(unit)
   if not GUID then if GetPlayerInfoByGUID(unit) then GUID = unit end end
   if not GUID then return end
   for _,frame in pairs(GridFrame.registeredFrames) do
      if frame.unitGUID and GUID == frame.unitGUID then return frame end -- match
   end
end

kAura.Grid.SetUnitFrameBackdropColor = function(unit, r, g, b, a)
  if not IsAddOnLoaded('Grid') then return end
  local frame = kAura.Grid.GetUnitFrame(unit)
  if not frame then return end
  local colors = {
    { name = 'black',   r = 0, g = 0, b = 0, a = 1, },
    { name = 'blue',    r = 0, g = 0.2, b = 1, a = 1, },
    { name = 'green',   r = 0, g = 1, b = 0, a = 1, },
    { name = 'orange',  r = 1, g = 0.5, b = 0, a = 1, },
    { name = 'purple',  r = 1, g = 0, b = 1, a = 1, },
    { name = 'red',     r = 1, g = 0, b = 0, a = 1, },
    { name = 'white',   r = 1, g = 1, b = 1, a = 1, },
    { name = 'yellow',  r = 1, g = 1, b = 0, a = 1, },
  }
  -- Convert
  if tonumber(r) == nil and type(r) == 'string' then
    for _,v in pairs(colors) do
      if v.name == strlower(r) then r = v.r g = v.g b = v.b a = v.a end
    end
  elseif type(r) == 'table' and (r.r or r.g or r.b) then
    g = r.g or 1
    b = r.b or 1
    a = r.a or 1
    r = r.r or 1
  end
  if r and b and g then frame:SetBackdropColor(r, g, b, a or 1) end
end

kAura.Grid.SetUnitFrameBorderColor = function(unit, r, g, b, a)
  if not IsAddOnLoaded('Grid') then return end
  local frame = kAura.Grid.GetUnitFrame(unit)
  if not frame then return end
  local colors = {
    { name = 'black',   r = 0, g = 0, b = 0, a = 1, },
    { name = 'blue',    r = 0, g = 0.2, b = 1, a = 1, },
    { name = 'green',   r = 0, g = 1, b = 0, a = 1, },
    { name = 'orange',  r = 1, g = 0.5, b = 0, a = 1, },
    { name = 'purple',  r = 1, g = 0, b = 1, a = 1, },
    { name = 'red',     r = 1, g = 0, b = 0, a = 1, },
    { name = 'white',   r = 1, g = 1, b = 1, a = 1, },
    { name = 'yellow',  r = 1, g = 1, b = 0, a = 1, },
  }
  -- Convert
  if tonumber(r) == nil and type(r) == 'string' then
    for _,v in pairs(colors) do
      if v.name == strlower(r) then
        r = v.r
        g = v.g
        b = v.b
        a = v.a
      end
    end
  elseif type(r) == 'table' and (r.r or r.g or r.b) then
    g = r.g or 1 
    b = r.b or 1 
    a = r.a or 1 
    r = r.r or 1 
  end
  if r and b and g then frame:SetBackdropBorderColor(r, g, b, a or 1) end
end