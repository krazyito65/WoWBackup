local mod	= DBM:NewMod(573, "DBM-Party-BC", 6, 261)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 598 $"):sub(12, -3))
mod:SetCreatureID(17797)
mod:SetEncounterID(1942)

mod:SetModelID(11268)--Custom ID for a reason?

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 25033",
	"SPELL_AURA_APPLIED 31718 31481",
	"SPELL_AURA_REMOVED 31718 31481"
)

local warningCloud		= mod:NewSpellAnnounce(25033)
local warningWinds		= mod:NewTargetAnnounce(31718)
local warningBurst		= mod:NewTargetAnnounce(31481)

local timerWinds		= mod:NewTargetTimer(6, 31718)
local timerBurst		= mod:NewTargetTimer(10, 31481)

function mod:SPELL_CAST_SUCCESS(args)
	if args.spellId == 25033 then
		warningCloud:Show()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 31718 then
		warningWinds:Show(args.destName)
		timerWinds:Start(args.destName)
	elseif args.spellId == 31481 then
		warningBurst:Show(args.destName)
		timerBurst:Start(args.destName)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args.spellId == 31718 then
		timerWinds:Stop(args.destName)
	elseif args.spellId == 31481 then
		timerBurst:Stop(args.destName)
	end
end
