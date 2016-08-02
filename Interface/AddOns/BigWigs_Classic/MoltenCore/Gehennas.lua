
--------------------------------------------------------------------------------
-- Module declaration
--

local mod, CL = BigWigs:NewBoss("Gehennas", 696)
if not mod then return end
mod:RegisterEnableMob(12259)
mod.toggleOptions = {19716, {19717, "FLASH"}}

--------------------------------------------------------------------------------
-- Localization
--

local L = mod:NewLocale("enUS", true)
if L then
	L.bossName = "Gehennas"
end
L = mod:GetLocale()
mod.displayName = L.bossName

--------------------------------------------------------------------------------
-- Initialization
--

function mod:OnBossEnable()
	self:RegisterEvent("INSTANCE_ENCOUNTER_ENGAGE_UNIT", "CheckBossStatus")

	self:Log("SPELL_CAST_SUCCESS", "Curse", 19716)
	self:Log("SPELL_AURA_APPLIED", "Fire", 19717)

	self:Death("Win", 12259)
end

--------------------------------------------------------------------------------
-- Event Handlers
--

function mod:Curse(args)
	self:Bar(args.spellId, 30)
	self:Message(args.spellId, "Urgent")
	self:DelayedMessage(args.spellId, 25, "Attention", CL.custom_sec:format(args.spellName, 5))
end

function mod:Fire(args)
	if self:Me(args.destGUID) then
		self:Flash(args.spellId)
		self:Message(args.spellId, "Personal", "Alarm", CL.you:format(args.spellName))
	end
end

