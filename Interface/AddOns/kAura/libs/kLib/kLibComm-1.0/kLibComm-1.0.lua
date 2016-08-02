local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error

local MAJOR,MINOR = "kLibComm-1.0", 1

local kLibComm, oldminor = LibStub:NewLibrary(MAJOR, MINOR)

if not kLibComm then return end -- No upgrade needed

kLibComm.embeds = kLibComm.embeds or {} -- table containing objects kLibComm is embedded in.
kLibComm.commands = kLibComm.commands or {} -- table containing commands registered
kLibComm.weakcommands = kLibComm.weakcommands or {} -- table containing self, command => func references for weak commands that don't persist through enable/disable

-- Lua APIs
local tconcat, tostring, select = table.concat, tostring, select
local type, pairs, error = type, pairs, error
local format, strfind, strsub = string.format, string.find, string.sub
local max = math.max

--[[ Retrieve the prefix valid
]]
function kLibComm:Comm_GetPrefix(text)
  if not text or not (type(text) == 'string') then return end
  local prefix, commType = strsplit('-', text)
  if not prefix or not commType then return end
  return prefix, commType
end

--[[ Receive a comm message
]]
function kLibComm:Comm_Receive(command, sender, commType, data)
  if not command then return end
  commType = commType or 'c'
  local name = ('Client_On%s'):format(command)  
  if commType == 's' then name = ('Server_On%s'):format(command) end
  self:Debug('Comm_Receive', 'Communication received.', 'Func: ', name, command, sender, commType, 2)
  if self[name] then
    self[name](nil, sender, self:Comm_TypeIsClient(commType), select(2, self:Deserialize(data)))
  else
    self:Debug('Comm_Receive', 'No matching function: ', name, self[name], 2)
  end 
end

--[[ Register comm prefixes
]]
function kLibComm:Comm_Register()
  for i,v in pairs(self.comm.validCommTypes) do
    self:RegisterComm(('%s-%s'):format(self.comm.prefix, v))
  end
end

--[[ Send a comm message
]]
function kLibComm:Comm_Send(command, commType, channel, ...)
  if not command then return end
  if commType and type(commType) == 'string' then commType = strlower(strsub(commType, 1, 1)) end
  commType = commType or 'c'
  channel = self:Comm_ValidateChannel(channel) and channel or self:Utility_GetTableEntry(self.comm.validChannels)
  local prefix = ('%s-%s'):format(self.comm.prefix, commType)
  if self:InDebug() and (channel == 'RAID' or channel == 'GUILD') and self:Utility_IsSelf('Kulltest') then
    channel = 'PARTY' -- Set PARTY default channel for starter account
  elseif self:InDebug() and channel == 'RAID' and self:Utility_GetPlayerCount() == 1 then
    channel = 'GUILD' -- Set GUILD default channel for debug purposes if not in raid
  end
  self:SendCommMessage(prefix, self:Serialize(command, self:Serialize(...)), channel)
  self:Debug('Comm_Send', prefix, command, channel, 2)
end

--[[ Determine if commType is client
]]
function kLibComm:Comm_TypeIsClient(commType)
  return (commType and commType == 'c')
end

--[[ Check if channel is valid
]]
function kLibComm:Comm_ValidateChannel(text)
  if not text or not (type(text) == 'string') then return end
  return tContains(self.comm.validChannels, text)
end

--[[ Check if prefix is valid
]]
function kLibComm:Comm_ValidatePrefix(text)
  if not text or not (type(text) == 'string') then return end
  local prefix, commType = self:Comm_GetPrefix(text)
  if prefix ~= self.comm.prefix then return false end
  return tContains(self.comm.validCommTypes, commType)
end

--- embedding and embed handling
local mixins = {
  'Comm_GetPrefix',
  'Comm_Receive',
  'Comm_Register',
  'Comm_Send',
  'Comm_TypeIsClient',
  'Comm_ValidateChannel',
  'Comm_ValidatePrefix',
} 

-- Embeds kLibComm into the target object making the functions from the mixins list available on target:..
-- @param target target object to embed AceBucket in
function kLibComm:Embed( target )
  for k, v in pairs( mixins ) do
    target[v] = self[v]
  end
  self.embeds[target] = true
  return target
end

function kLibComm:OnEmbedEnable( target )
  if kLibComm.weakcommands[target] then
    for command, func in pairs( kLibComm.weakcommands[target] ) do
      target:RegisterChatCommand( command, func, false, true ) -- nonpersisting and silent registry
    end
  end
end

function kLibComm:OnEmbedDisable( target )
  if kLibComm.weakcommands[target] then
    for command, func in pairs( kLibComm.weakcommands[target] ) do
      target:UnregisterChatCommand( command ) -- TODO: this could potentially unregister a command from another application in case of command conflicts. Do we care?
    end
  end
end

for addon in pairs(kLibComm.embeds) do
  kLibComm:Embed(addon)
end
