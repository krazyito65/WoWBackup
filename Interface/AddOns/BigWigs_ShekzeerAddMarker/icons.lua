--------------------------------------------------------------------------------
-- Module Declaration
--
local mod = BigWigs:NewBoss("Shek'zeer Add Marker", 897)
if not mod then return end
mod:RegisterEnableMob(62837)

local counter = 1
local adds = {}

local mainMod = BigWigs.modules.Bosses.modules["Grand Empress Shek'zeer"]

local L = mainMod:GetLocale("enUS", true)

function mod:OnBossEnable()
	self:Log("SPELL_AURA_APPLIED", "BandOfValor", 125422)
	self:Log("SPELL_AURA_APPLIED_DOSE", "BandOfValor", 125422)
	self:RegisterEvent("UPDATE_MOUSEOVER_UNIT")
	self:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
	self:Yell("OnEngage", L["engage_trigger"])
	self:Death("Disable", 62837)
end

function mod:OnEngage()
	counter = 1
	wipe(adds)
	self:RegisterEvent("PLAYER_REGEN_ENABLED", "CheckForWipe")
end

function mod:UNIT_SPELLCAST_SUCCEEDED(_, unit, _, _, _, spellId)
	if unit:match("boss") and spellId == 125098 then -- retreat
		counter = 1
		wipe(adds)
	end
end

function mod:UPDATE_MOUSEOVER_UNIT()
	local GUID = UnitGUID("mouseover")
	if not GUID then return end
	if self:MobId(GUID) == 63589 then
		if adds[GUID] ~= "marked" then
			adds[GUID] = "marked"
			SetRaidTarget("mouseover", counter)
			counter = counter + 1
		end
		if counter > 6 then counter = 1 end
	end
end

do
	local f = CreateFrame("Frame")
	local total = 0
	f:SetScript("OnUpdate", function(self, elapsed)
		total = total + elapsed
		if total > 0.2 then
			for guid in pairs(adds) do
				local mobId = mod:GetUnitIdByGUID(guid)
				if mobId then
					if adds[guid] ~= "marked" then
						adds[guid] = "marked"
						SetRaidTarget(mobId, counter)
						counter = counter + 1
					end
				end
			end
			if counter > 6 then counter = 1 end
			if not next(adds) then
				self:Hide()
			end
			total = 0
		end
	end)
	f:Hide()

	function mod:BandOfValor(args)
		if self:MobId(args.destGUID) == 63589 then
			if not adds[args.destGUID] then
				adds[args.destGUID] = true
				f:Show()
			end
		end
	end
end
