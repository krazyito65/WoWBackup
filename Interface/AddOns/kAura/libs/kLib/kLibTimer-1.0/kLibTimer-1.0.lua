local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error

local MAJOR,MINOR = "kLibTimer-1.0", 1

local kLibTimer, oldminor = LibStub:NewLibrary(MAJOR, MINOR)

if not kLibTimer then return end -- No upgrade needed

kLibTimer.embeds = kLibTimer.embeds or {} -- table containing objects kLibTimer is embedded in.
kLibTimer.commands = kLibTimer.commands or {} -- table containing commands registered
kLibTimer.weakcommands = kLibTimer.weakcommands or {} -- table containing self, command => func references for weak commands that don't persist through enable/disable

-- Lua APIs
local tconcat, tostring, select = table.concat, tostring, select
local type, pairs, error = type, pairs, error
local format, strfind, strsub = string.format, string.find, string.sub
local max = math.max

--[[ Check if timer should be cancelled
]]
function kLibTimer:Timer_Cancel(timer)
  timer = self:Timer_Get(timer)
  if not timer then
    self:Debug('Timer_Cancel', 'Invalid timer, cancellation ignored.', 1)
    return
  end 
  if timer.cancel then
    if type(timer.cancel) == 'function' then
      if timer.cancel() then
        if timer.fireOnCancel then
          self:Timer_Execute(timer)
        end
        self:Timer_Destroy(timer)
      end
    elseif type(timer.cancel) == 'string' then
      if self[timer.cancel] and self[timer.cancel]() then
        if timer.fireOnCancel then
          self:Debug('Timer_Cancel', 'FireOnCancel = true', timer.cancel, 2)
          self:Timer_Execute(timer)
        end
        self:Timer_Destroy(timer)
      end
    end
  end
end

--[[ Create and initialize a new timer
]]
function kLibTimer:Timer_Create(func,time,loop,cancel,fireOnCancel,...)
  if not func then return end
  -- Check if timer exists
  if self:Timer_Get(func) then return end
  if type(func) == 'string' then
    self:Debug('Timer_Create', 'New timer function: ', func, 1)
  end
  table.insert(self.timers, {
    args = ...,
    cancel = cancel,
    fireOnCancel = (type(fireOnCancel) == 'nil') and true or fireOnCancel,    
    func = func, 
    id = self:Utility_GenerateUniqueId(),
    loop = loop,
    objectType = 'timer',
    time = loop and (time or 0) or (GetTime() + time)})
end

--[[ Destroy a timer
]]
function kLibTimer:Timer_Destroy(timer)
  timer = self:Timer_Get(timer)
  if not timer then
    self:Debug('Timer_Destroy', 'Invalid timer, destroy cancelled.', 1)
    return
  end
  for i,v in pairs(self.timers) do
    if v.id == timer.id then
      tremove(self.timers, i)
      self:Debug('Timer_Destroy', type(timer.func) == 'string' and timer.func or '', timer.id, 3)
    end
  end
end

--[[ Execute the timer function
]]
function kLibTimer:Timer_Execute(timer)
  timer = self:Timer_Get(timer)
  if not timer then
    self:Debug('Timer_Execute', 'Invalid timer, execution halted.', 1)
    return
  end
  -- Check if func is string
  if type(timer.func) == 'function' then
    timer.func(unpack(timer.args) or {})
  elseif type(timer.func) == 'string' and self[timer.func] then
    if type(self[timer.func]) == 'function' then
      self:Debug('Timer_Execute', 'Executing function: ', timer.func, 1)
      self[timer.func](unpack(timer.args or {}))
    end
  end
  -- Reset elapsed if looping timer
  if timer.loop then timer.elapsed = 0 end
end

--[[ Get Timer by func name
]]
function kLibTimer:Timer_Get(timer)
  if not timer then return end
  if type(timer) == 'string' then
    for i,v in pairs(self.timers) do
      if v.func and v.func == timer then
        return v
      end
    end
  elseif type(timer) == 'table' and timer.objectType == 'timer' then
    return timer
  end
end

--[[ Process all timers
]]
function kLibTimer:Timer_ProcessAll(updateType)
  updateType = updateType or 'core'
  for i = #self.timers, 1, -1 do 
    -- Check if repeater
    if self.timers[i].loop then
      self.timers[i].elapsed = (self.timers[i].elapsed or 0) + self.update[updateType].timeSince
      if self.timers[i].elapsed >= (self.timers[i].time or 0) then
        -- Execute timer
        self:Timer_Execute(self.timers[i])
        self:Timer_Cancel(self.timers[i])
      end
    else
      if self.timers[i].time then
        if self.timers[i].time <= GetTime() then
          -- One-time exec, remove
          self:Timer_Execute(self.timers[i])
          self:Timer_Destroy(self.timers[i])
        end
      end
    end
  end
end

--- embedding and embed handling
local mixins = {
  'Timer_Cancel',
  'Timer_Create',
  'Timer_Destroy',
  'Timer_Execute',
  'Timer_Get',
  'Timer_ProcessAll',
} 

-- Embeds kLibTimer into the target object making the functions from the mixins list available on target:..
-- @param target target object to embed AceBucket in
function kLibTimer:Embed( target )
  for k, v in pairs( mixins ) do
    target[v] = self[v]
  end
  self.embeds[target] = true
  return target
end

function kLibTimer:OnEmbedEnable( target )
  if kLibTimer.weakcommands[target] then
    for command, func in pairs( kLibTimer.weakcommands[target] ) do
      target:RegisterChatCommand( command, func, false, true ) -- nonpersisting and silent registry
    end
  end
end

function kLibTimer:OnEmbedDisable( target )
  if kLibTimer.weakcommands[target] then
    for command, func in pairs( kLibTimer.weakcommands[target] ) do
      target:UnregisterChatCommand( command ) -- TODO: this could potentially unregister a command from another application in case of command conflicts. Do we care?
    end
  end
end

for addon in pairs(kLibTimer.embeds) do
  kLibTimer:Embed(addon)
end
