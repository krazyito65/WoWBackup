-------------------------------------------------------------------------------
--  Module Declaration

local mod = BigWigs:NewBoss("Tribunal of Ages", 526)
if not mod then return end
mod.partycontent = true
mod.otherMenu = "The Storm Peaks"
mod:RegisterEnableMob(28070)
mod.toggleOptions = {"timers"}

-------------------------------------------------------------------------------
--  Localization

local L = mod:NewLocale("enUS", true)
if L then


end
L = mod:GetLocale()

mod.displayName = L["moduleName"]

-------------------------------------------------------------------------------
--  Initialization

function mod:OnRegister()
	self:RegisterEnableYell(L["enable_trigger"])
end

function mod:OnBossEnable()
	self:Yell("Engage", L["engage_trigger"])
	self:Yell("Reboot", L["fail_trigger"])
	self:Yell("Win", L["defeat_trigger"])
end

function mod:OnEngage()
	self:Bar("timers", self.displayName, 45, "Achievement_Character_Dwarf_Male")
	self:Bar("timers", L["victory"], 315, "INV_Misc_PocketWatch_01")
end
