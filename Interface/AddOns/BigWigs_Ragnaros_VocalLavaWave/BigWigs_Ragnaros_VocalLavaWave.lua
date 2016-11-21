--------------------------------------------------------------------------------
-- Module Declaration
--

local mod = BigWigs:NewBoss("Ragnaros Vocal Lava Wave", 800)
if not mod then return end
mod:RegisterEnableMob(52409)

--------------------------------------------------------------------------------
-- Initialization
--

function mod:OnBossEnable()
	self:Log("SPELL_CAST_START", "SulfurasSmash", 98710)

	self:RegisterEvent("INSTANCE_ENCOUNTER_ENGAGE_UNIT", "CheckBossStatus")

	self:Death("Win", 52409)
end

--------------------------------------------------------------------------------
-- Event Handlers
--

function mod:SulfurasSmash()
	PlaySoundFile("Interface\\AddOns\\BigWigs_Ragnaros_VocalLavaWave\\Sounds\\lava_wave.mp3", "Master")
end

