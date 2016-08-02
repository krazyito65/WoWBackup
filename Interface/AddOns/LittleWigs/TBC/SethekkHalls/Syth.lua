-------------------------------------------------------------------------------
--  Module Declaration

local mod = BigWigs:NewBoss("Darkweaver Syth", 723, 541)
if not mod then return end
mod.partyContent = true
mod.otherMenu = "Auchindoun"
mod:RegisterEnableMob(18472)
mod.toggleOptions = {"summon"}

-------------------------------------------------------------------------------
--  Localization

local L = LibStub("AceLocale-3.0"):NewLocale("Little Wigs: Darkweaver Syth", "enUS", true)
if L then
	
	
end

L = LibStub("AceLocale-3.0"):GetLocale("Little Wigs: Darkweaver Syth")
mod.locale = L

-------------------------------------------------------------------------------
--  Initialization

function mod:OnBossEnable()
	self:Log("SPELL_SUMMON", "Summon", 33538)
	self:Death("Win", 18472)
end

-------------------------------------------------------------------------------
--  Event Handlers

function mod:Summon()
	self:Message("summon", L["summon_message"], "Attention")
end
