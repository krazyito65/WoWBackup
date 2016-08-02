local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local kAura = LibStub("AceAddon-3.0"):NewAddon("kAura", "AceComm-3.0", "AceConsole-3.0", "AceEvent-3.0", "AceHook-3.0", "AceSerializer-3.0", "AceTimer-3.0",
	"kLib-1.0", "kLibColor-1.0", "kLibComm-1.0", "kLibItem-1.0", "kLibOptions-1.0",	"kLibTimer-1.0", "kLibUtility-1.0", "kLibView-1.0")
_G.kAura = kAura

-- Locals
local values = {}

function kAura:OnEnable() end
function kAura:OnDisable() end
function kAura:OnInitialize()
  -- Load Database
  self.db = LibStub("AceDB-3.0"):New("kAuraDB", self.defaults)
  self.options = self.options or {}
  self.options.args = self.options.args or {}
	self.options.args.profile = LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db)
-- 	self.config = LibStub("AceConfig-3.0"):RegisterOptionsTable("kAura", self.options, {"kaura"})
	-- Init Events
	self:InitializeEvents()
-- 	self.updateFrame = CreateFrame("Frame", "kAuraUpdateFrame", UIParent);
-- 	kEPGPUpdateFrame:SetScript("OnUpdate", function(self, elapsed) 
-- 		kEPGP:OnUpdate(elapsed)
-- 	end)
  self:RegisterMedia()
end

-- ... = GetValue(...)
-- ... = GetValue('firstKey', 'secondKey')
-- @... list - Any number of listed table ordered sub-child table keys of which to retrieve the value
-- return any - Any returned value matching the Values table and sub-children keys
function kAura:GetValue(...)
  if not ... then return end
  local count, data = #{...}
  if count and (count > 1) then
    for i,v in pairs({...}) do
      if i==1 then values[v] = values[v] or {} data = values[v]
      else if i ~= count then if not data[v] then data[v] = {} else data = data[v] end else data = data[v] end end
    end
  else data = values[select(1, ...)] end
  return data
end

function kAura:InitializeEvents()
  self:RegisterEvent('ENCOUNTER_END', 'Event_EncounterReset')
  self:RegisterEvent('ENCOUNTER_START', 'Event_EncounterReset')
  self:RegisterEvent('PLAYER_REGEN_ENABLED', 'Event_EncounterReset') -- End combat
end

function kAura:RegisterMedia()
  local media = LibStub("LibSharedMedia-3.0")
  local mType = media.MediaType and media.MediaType.SOUND or "sound"
  local sounds = {
    "careful",
    "casting",
    "center",
    "cooldown",
    "interrupt",
    "middle",
    "penguin",
    "runaway",
    "spreadout",  
    "stackup",  
    "switch",
    "taunt",
    "tikutiku",
    "warning",
  }
  
  -- Register Sounds
  for i,sound in pairs(sounds) do
    media:Register(mType, ("kAura: %s"):format(sound), ("Interface\\AddOns\\kAura\\Sounds\\%s.ogg"):format(sound))
  end  
end

-- SetValue('MyNewValue', ...)
-- SetValue(1234, 'firstKey', 'secondKey')
-- SetValue({5,6,7}, 'firstKey', 'secondKey', 'thirdKey')
-- @value any - Any value to assign to the Values table at the level indicated by the child keys
-- @... list - Any number of listed table ordered sub-child table keys of which to set the value
function kAura:SetValue(value, ...)
  if not ... then return end
  local count, data = #{...}
  for i,v in pairs({...}) do
    if i==1 then if count and count == 1 then values[v] = value else
      values[v] = values[v] or {}
      data = values[v] end
    else if i ~= count then if not data[v] then data[v] = {} end data = data[v] else data[v] = value end end
  end
end