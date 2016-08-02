--[[
-------------------------------------------------------------------------------
--  Module Declaration

local mod = BigWigs:NewBoss("Lord Ahune", 728)
if not mod then return end
mod.partyContent = true
mod.otherMenu = "Coilfang Reservoir"
mod.RegisterEnableMob(25740, 25697)
mod.toggleOptions = {
	"state",
}

-------------------------------------------------------------------------------
--  Locals

local standing = nil

-------------------------------------------------------------------------------
--  Localization

local L = LibStub("AceLocale-3.0"):NewLocale("Little Wigs: Lord Ahune", "enUS", true)
if L then
	
	
end
L = LibStub("AceLocale-3.0"):GetLocale("Little Wigs: Lord Ahune")
mod.locale = L

-------------------------------------------------------------------------------
--  Initialization

function mod:OnBossEnable()
	self:Log("SPELL_AURA_REMOVED", "Submerge", 45954)
	self:Log("SPELL_AURA_REMOVED", "Attack", 45954)
	self:Log("SPELL_AURA_APPLIED", "Stand", 45954)
	self:Death("Win", 25740)
end

function mod:OnEngage()
	standing = false
end

-------------------------------------------------------------------------------
--  Event Handlers

function mod:Submerge()
	self:Message("state", L["submerge_message"], "Attention")
	self:Bar("state", L["submerge_message"], 39)
	self:DelayedMessage("state", 29, L["stand_soon"], "Attention")
	standing = false
end

function mod:Stand()
	self:Message("state", L["stand_message"], "Attention")
	self:Bar("state", L["stand_message"], 94) 
	self:DelayedMessage("state", 86, L["submerge_soon"], "Attention")
	standing = true
end

function mod:Attack()
	self:Message("state", L["attack_message"], "Attention")
	self:Bar("state", L["attack_message"], 45)
	standing = false
end
]]
