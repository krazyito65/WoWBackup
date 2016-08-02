--
-- JSHB Death Knight - presence indicator module
--

if (select(2, UnitClass("player")) ~= "DEATHKNIGHT") then return end

-- Cache
local UnitHasVehicleUI = UnitHasVehicleUI

function JSHB.SetupPresenceIndicatorModule()

	-- Deconstruction
	if JSHB.F.PresenceIndicator then
		JSHB.DeregisterMovableFrame("MOVER_INDICATORS_PRESENCE")
		JSHB.F.PresenceIndicator:Hide()
		JSHB.F.PresenceIndicator:SetScript("OnUpdate", nil)
		JSHB.F.PresenceIndicator:UnregisterAllEvents()
		JSHB.F.PresenceIndicator:SetParent(nil)
	end
	
	-- Construction
	local INDICATORS_UPDATEINTERVAL = 0.125
	
	if JSHB.db.profile.indicators.presence_enable then
		
		-- Create the Frame
		JSHB.F.PresenceIndicator = JSHB.MakeFrame(JSHB.F.PresenceIndicator, "Frame", "JSHB_INDICATORS_PRESENCE", JSHB.db.profile.indicators.anchor_presence[2] or UIParent)
		JSHB.F.PresenceIndicator:SetParent(JSHB.db.profile.indicators.anchor_presence[2] or UIParent)
		JSHB.F.PresenceIndicator:ClearAllPoints()
		JSHB.F.PresenceIndicator:SetSize(JSHB.db.profile.indicators.presence_iconsize, JSHB.db.profile.indicators.presence_iconsize)
		JSHB.F.PresenceIndicator:SetPoint(JSHB.GetActiveAnchor(JSHB.db.profile.indicators.anchor_presence))
		JSHB.F.PresenceIndicator.Icon = JSHB.F.PresenceIndicator.Icon or JSHB.F.PresenceIndicator:CreateTexture(nil, "BACKGROUND")
		JSHB.F.PresenceIndicator.Icon:SetTexture("Interface\\Buttons\\UI-GroupLoot-Pass-Up")
		
		if JSHB.db.profile.indicators.presence_enabletexcoords then
			JSHB.F.PresenceIndicator.Icon:SetTexCoord(unpack(JSHB.db.profile.indicators.presence_texcoords))
		else
			JSHB.F.PresenceIndicator.Icon:SetTexCoord(0, 1, 0, 1)
		end
		
		JSHB.F.PresenceIndicator.Icon:ClearAllPoints()
		JSHB.F.PresenceIndicator.Icon:SetAllPoints(JSHB.F.PresenceIndicator)
		JSHB.F.PresenceIndicator.shine = JSHB.F.PresenceIndicator.shine or CreateFrame("Frame", "AutocastShine_presence", UIParent, "AutoCastShineTemplate")
		JSHB.F.PresenceIndicator.shine:ClearAllPoints()
		JSHB.F.PresenceIndicator.shine:SetSize(JSHB.db.profile.indicators.presence_iconsize+2, JSHB.db.profile.indicators.presence_iconsize+2)
		JSHB.F.PresenceIndicator.shine:SetPoint("CENTER", JSHB.F.PresenceIndicator, "CENTER", 1, -1)
		JSHB.F.PresenceIndicator.shine:SetAlpha(1)
		JSHB.F.PresenceIndicator.shine:Show()
		-- Create the Background and border if the user wants one
		JSHB.F.PresenceIndicator.background = JSHB.MakeBackground(JSHB.F.PresenceIndicator, JSHB.db.profile.indicators, "presence_", nil, JSHB.F.PresenceIndicator.background)
		JSHB.F.PresenceIndicator:SetAlpha(1)
		JSHB.F.PresenceIndicator:Show()
		
		JSHB.RegisterMovableFrame(
			"MOVER_INDICATORS_PRESENCE",
			JSHB.F.PresenceIndicator,
			JSHB.F.PresenceIndicator,
			JSHB.L["Presence Indicator"],
			JSHB.db.profile.indicators,
			JSHB.SetupPresenceIndicatorModule,
			JSHB.defaults.profile.indicators,
			JSHB.db.profile.indicators,
			"_presence",
			"presence_"
		)

		local function DoStanceUpdate(self)
			local thisIcon, hasStance
			-- Set the proper texture for the current aspect
			thisIcon = select(3, UnitAura("player", GetSpellInfo(48263), nil, "PLAYER|HELPFUL")) -- Blood Presence
			if not (thisIcon) then
				thisIcon = select(3, UnitAura("player", GetSpellInfo(48266), nil, "PLAYER|HELPFUL")) -- Frost Presence
				if not (thisIcon) then
					thisIcon = select(3, UnitAura("player", GetSpellInfo(48265), nil, "PLAYER|HELPFUL")) -- Unholy Presence
					if not (thisIcon) then
						thisIcon = "Interface\\Buttons\\UI-GroupLoot-Pass-Up" -- no active stance
						hasStance = false
					else
						self.Icon:SetTexture(thisIcon)
						hasStance = true
					end
				else
					self.Icon:SetTexture(thisIcon)
					hasStance = true
				end
			else
				self.Icon:SetTexture(thisIcon)
				hasStance = true
			end
			
			if InCombatLockdown() then
				if (hasStance == true) and (not UnitHasVehicleUI("player")) and (not C_PetBattles.IsInBattle()) then
					JSHB.F.PresenceIndicator:SetAlpha((JSHB.db.profile.indicators.presence_matchbaralpha and JSHB.db.profile.resourcebar.enabled) and JSHB.F.ResourceBar:GetAlpha() or 1)
					AutoCastShine_AutoCastStart(JSHB.F.PresenceIndicator.shine, 1, 0.5, 0.5)					
				else
					JSHB.F.PresenceIndicator:SetAlpha(0)
					AutoCastShine_AutoCastStop(JSHB.F.PresenceIndicator.shine)
				end
			else -- OOC
				if(hasStance == true) and (not JSHB.db.profile.indicators.presence_onlycombat) and (not UnitHasVehicleUI("player")) and (not C_PetBattles.IsInBattle()) then
					JSHB.F.PresenceIndicator:SetAlpha( (JSHB.db.profile.indicators.presence_matchbaralpha and JSHB.db.profile.resourcebar.enabled) and JSHB.F.ResourceBar:GetAlpha() or 1)
					AutoCastShine_AutoCastStop(JSHB.F.PresenceIndicator.shine)
				else
					JSHB.F.PresenceIndicator:SetAlpha(0)
					AutoCastShine_AutoCastStop(JSHB.F.PresenceIndicator.shine)
				end			
			end
			
		end
		
		JSHB.F.PresenceIndicator.updateTimer = 0
		JSHB.F.PresenceIndicator:SetScript("OnUpdate",
			function(self, elapsed, ...)	
				self.updateTimer = self.updateTimer + elapsed	
				if self.updateTimer < INDICATORS_UPDATEINTERVAL then return else self.updateTimer = 0 end
				if (not JSHB.moversLocked) then return end
				DoStanceUpdate(self)
			end)
	end
end