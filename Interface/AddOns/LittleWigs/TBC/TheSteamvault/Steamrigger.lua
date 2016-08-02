-------------------------------------------------------------------------------
--  Module Declaration

local mod = BigWigs:NewBoss("Mekgineer Steamrigger", 727, 574)
if not mod then return end
mod.partyContent = true
mod.otherMenu = "Coilfang Reservoir"
mod:RegisterEnableMob(17796)
mod.toggleOptions = {
	"mech",
}

-------------------------------------------------------------------------------
--  Localization

local L = LibStub("AceLocale-3.0"):NewLocale("Little Wigs: Mekgineer Steamrigger", "enUS", true)
if L then
	
	
end
L = LibStub("AceLocale-3.0"):GetLocale("Little Wigs: Mekgineer Steamrigger")
mod.locale = L

-------------------------------------------------------------------------------
--  Initialization

function mod:OnBossEnable()
	self:Death("Win", 17796)
	self:Yell("Mech", L["mech_trigger"])
end

-------------------------------------------------------------------------------
--  Event Handlers

function mod:Mech()
	self:Message("mech", L["mech_message"], "Attention")
end
