kAura.WeakAuras = kAura.WeakAuras or {}

kAura.WeakAuras.GetDisplayType = function(name)
  if not IsAddOnLoaded('WeakAuras') then return end
  if WeakAuras.auras and WeakAuras.auras[name] then return 'auras' end
  if WeakAuras.regions and WeakAuras.regions[name] then return 'regions' end
end

-- GetDisplayColor('info') - Get the color of the 'info' display
-- @name string - Name of the WeakAura Display to be queried.
-- return table - Display's color values
kAura.WeakAuras.GetDisplayColor = function(name)
  if not IsAddOnLoaded('WeakAuras') then return end
  local region = kAura.WeakAuras.GetRegion(name)
  if not region 
  or not region['color_r']
  or not region['color_g']
  or not region['color_b']
  or not region['color_a'] then return end
  return {r = region['color_r'], g = region['color_g'], b = region['color_b'], a = region['color_a']}
end

-- GetRegion('my-arrow') - Retrieve the Region WeakAura table.
-- @name string - name of the WeakAura Display to retrieve Region.
-- return table - WeakAura Display Region
kAura.WeakAuras.GetRegion = function(name)
  if not IsAddOnLoaded('WeakAuras') then return end
  local displayType = kAura.WeakAuras.GetDisplayType(name)
  if not displayType then return end
  if displayType == 'auras' then
    if WeakAuras 
    and WeakAuras[displayType] 
    and WeakAuras[displayType][name] 
    and WeakAuras[displayType][name][0]
    and WeakAuras[displayType][name][0]['region'] then
      return WeakAuras[displayType][name][0]['region']
    end
  elseif displayType == 'regions' then
    if WeakAuras 
    and WeakAuras[displayType] 
    and WeakAuras[displayType][name] 
    and WeakAuras[displayType][name]
    and WeakAuras[displayType][name]['region'] then
      return WeakAuras[displayType][name]['region']
    end
  end
end

-- RotateDisplayByDegrees('my-arrow', 90) - Rotate the Display named 'my-arrow' 90 degrees
-- RotateDisplayByDegrees('my-arrow', 180) - Rotate the 'my-arrow' 180 degrees (flip it)
-- RotateDisplayByDegrees('my-arrow', 400) - Rotate the 'my-arrow' 400 degrees (equivalent to 40 degrees)
-- @display string - Name of the WeakAura Display to be modified.
-- @degrees number - Degrees to rotate
kAura.WeakAuras.RotateDisplayByDegrees = function(name, degrees)
  if not IsAddOnLoaded('WeakAuras') then return end
  if not name then return end
  local region = kAura.WeakAuras.GetRegion(name)
  if not region
  or not region['Rotate']
  or not (type(region['Rotate']) == 'function') then return end 
  region['Rotate'](0, degrees and degrees or 0)
end

-- RotateDisplayToPoint('my-arrow', 500, 1250) - Rotate the Display named 'my-arrow' to face towards the point 500, 1250
-- RotateDisplayToPoint('my-arrow', UnitPosition('party1')) - Rotate the 'my-arrow' to face towards the position of the 'party1' unit
-- RotateDisplayToPoint('my-arrow', UnitPosition('raid15')) - Rotate the 'my-arrow' to face towards the position of the 'raid15' unit
-- RotateDisplayToPoint('my-arrow', 500, 1250, 180) - Rotate the 'my-arrow' to face towards the point 500, 1250 with a rotational offset of 180 degrees
-- @name string - Name of the WeakAura Display to be modified.
-- @pointX number - X coordinate of target point
-- @pointY number - Y coordinate of target point
-- [@offset] number - (Optional) Rotational degrees offset (Default: 0)
kAura.WeakAuras.RotateDisplayToPoint = function(name, pointX, pointY, offset)
  if not IsAddOnLoaded('WeakAuras') then return end
  if not name or not pointX or not pointY then return end
  local playerX, playerY = UnitPosition('player')
  offset = offset or 0
  local degrees = math.deg(math.atan2((playerY - pointY), (playerX - pointX)) - GetPlayerFacing()) + offset
  local region = kAura.WeakAuras.GetRegion(name)
  if not region
  or not region['Rotate']
  or not (type(region['Rotate']) == 'function') then return end 
  region['Rotate'](0, degrees and degrees or 0)
end

-- SetDisplayColor('info', 1, 0, 0, 1) - Set the color for the 'info' display to red using 0..1 rgba values
-- SetDisplayColor('info', 'red') - Set the color for the 'info' display to red using the 'red' keyword syntax
-- @name string - Name of the WeakAura Display to be modified.
-- @r string/number - The (number) of the red rgb value OR the (string) color keyword (black, blue, green, orange, purple, red, white, yellow)
-- [@g] number - (Optional) The green rgb value
-- [@b] number - (Optional) The blue rgb value
-- [@a] number - (Optional) The alpha value (Default: 1)
kAura.WeakAuras.SetDisplayColor = function(name, r, g, b, a)
  if not IsAddOnLoaded('WeakAuras') then return end
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
    for i,v in pairs(colors) do
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
 
  if r and b and g then
    a = a or 1
    local region = kAura.WeakAuras.GetRegion(name)
    if not region
    or not region['Color']
    or not (type(region['Color']) == 'function') then return end 
    -- Add space for self parameter if progress bar
    if region.bar or region.texture then
      region['Color'](region, r, g, b, a)         
    else
      region['Color'](r, g, b, a)         
    end
  end
end

-- SetDisplayText('info', 'hello') - Set the text for the 'info' display to 'hello'
-- @name string - Name of the WeakAura Display to be modified.
-- @text string/number - Text to show
kAura.WeakAuras.SetDisplayText = function(name, text)
  if not IsAddOnLoaded('WeakAuras') then return end
  local region = kAura.WeakAuras.GetRegion(name)
  if not region or not region['text'] then return end
  region['text']:SetText(text or '')
end