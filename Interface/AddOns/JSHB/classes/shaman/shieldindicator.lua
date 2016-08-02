--
-- JSHB Shaman - shield indicator module
--

if (select(2, UnitClass("player")) ~= "SHAMAN") then return end

-- Cache
local UnitInVehicle = UnitInVehicle

function JSHB.SetupShieldIndicatorModule()

	-- Deconstruction
	if JSHB.F.ShieldIndicator then
		JSHB.DeregisterMovableFrame("MOVER_INDICATORS_SHIELD")
		JSHB.F.ShieldIndicator:Hide()
		JSHB.F.ShieldIndicator:SetScript("OnUpdate", nil)
		JSHB.F.ShieldIndicator:UnregisterAllEvents()
		JSHB.F.ShieldIndicator:SetParent(nil)
	end
	
	-- Construction
	local INDICATORS_UPDATEINTERVAL = 0.125
	
	if JSHB.db.profile.indicators.shield_enable then
		
		-- Create the Frame
		JSHB.F.ShieldIndicator = JSHB.MakeFrame(JSHB.F.ShieldIndicator, "Frame", "JSHB_INDICATORS_SHIELD", JSHB.db.profile.indicators.anchor_shield[2] or UIParent)
		JSHB.F.ShieldIndicator:SetParent(JSHB.db.profile.indicators.anchor_shield[2] or UIParent)
		JSHB.F.ShieldIndicator:ClearAllPoints()
		JSHB.F.ShieldIndicator:SetSize(JSHB.db.profile.indicators.shield_iconsize, JSHB.db.profile.indicators.shield_iconsize)
		JSHB.F.ShieldIndicator:SetPoint(JSHB.GetActiveAnchor(JSHB.db.profile.indicators.anchor_shield))
		JSHB.F.ShieldIndicator.Icon = JSHB.F.ShieldIndicator.Icon or JSHB.F.ShieldIndicator:CreateTexture(nil, "BACKGROUND")
		JSHB.F.ShieldIndicator.Icon:SetTexture("Interface\\Buttons\\UI-GroupLoot-Pass-Up")
		
		if JSHB.db.profile.indicators.shield_enabletexcoords then
			JSHB.F.ShieldIndicator.Icon:SetTexCoord(unpack(JSHB.db.profile.indicators.shield_texcoords))
		else
			JSHB.F.ShieldIndicator.Icon:SetTexCoord(0, 1, 0, 1)
		end
		
		JSHB.F.ShieldIndicator.Icon:ClearAllPoints()
		JSHB.F.ShieldIndicator.Icon:SetAllPoints(JSHB.F.ShieldIndicator)
		JSHB.F.ShieldIndicator.shine = JSHB.F.ShieldIndicator.shine or CreateFrame("Frame", "AutocastShine_SHIELD", UIParent, "AutoCastShineTemplate")
		JSHB.F.ShieldIndicator.shine:ClearAllPoints()
		JSHB.F.ShieldIndicator.shine:SetSize(JSHB.db.profile.indicators.shield_iconsize+2, JSHB.db.profile.indicators.shield_iconsize+2)
		JSHB.F.ShieldIndicator.shine:SetPoint("CENTER", JSHB.F.ShieldIndicator, "CENTER", 1, -1)
		JSHB.F.ShieldIndicator.shine:SetAlpha(1)
		JSHB.F.ShieldIndicator.shine:Show()
		-- Create the Background and border if the user wants one
		JSHB.F.ShieldIndicator.background = JSHB.MakeBackground(JSHB.F.ShieldIndicator, JSHB.db.profile.indicators, "shield_", nil, JSHB.F.ShieldIndicator.background)
		JSHB.F.ShieldIndicator:SetAlpha(1)
		JSHB.F.ShieldIndicator:Show()
		
		JSHB.RegisterMovableFrame(
			"MOVER_INDICATORS_SHIELD",
			JSHB.F.ShieldIndicator,
			JSHB.F.ShieldIndicator,
			JSHB.L["Shield Indicator"],
			JSHB.db.profile.indicators,
			JSHB.SetupShieldIndicatorModule,
			JSHB.defaults.profile.indicators,
			JSHB.db.profile.indicators,
			"_shield",
			"shield_"
		)

		local function DoShieldUpdate(self)
			local thisIcon, hasShield
			-- Set the proper texture for the current aspect
			thisIcon = select(3, UnitAura("player", GetSpellInfo(52127), nil, "PLAYER|HELPFUL")) -- Water Shield
			if not (thisIcon) then
				thisIcon = select(3, UnitAura("player", GetSpellInfo(974), nil, "PLAYER|HELPFUL")) -- Earth Shield
				if not (thisIcon) then
					thisIcon = select(3, UnitAura("player", GetSpellInfo(324), nil, "PLAYER|HELPFUL")) -- Lightning Shield
					if not (thisIcon) then
						thisIcon = "Interface\\Buttons\\UI-GroupLoot-Pass-Up" -- no active stance
						hasShield = false
					else
						self.Icon:SetTexture(thisIcon)
						hasShield = true
					end
				else
					self.Icon:SetTexture(thisIcon)
					hasShield = true
				end
			else
				self.Icon:SetTexture(thisIcon)
				hasShield = true
			end
			
			if InCombatLockdown() then
				if (hasShield == true) and (not UnitHasVehicleUI("player")) and (not C_PetBattles.IsInBattle()) then
					JSHB.F.ShieldIndicator:SetAlpha((JSHB.db.profile.indicators.shield_matchbaralpha and JSHB.db.profile.resourcebar.enabled) and JSHB.F.ResourceBar:GetAlpha() or 1)
					AutoCastShine_AutoCastStart(JSHB.F.ShieldIndicator.shine, 1, 0.5, 0.5)					
				else
					JSHB.F.ShieldIndicator:SetAlpha(0)
					AutoCastShine_AutoCastStop(JSHB.F.ShieldIndicator.shine)
				end
			else -- OOC
				if(hasShield == true) and (not JSHB.db.profile.indicators.shield_onlycombat) and (not UnitHasVehicleUI("player")) and (not C_PetBattles.IsInBattle()) then
					JSHB.F.ShieldIndicator:SetAlpha( (JSHB.db.profile.indicators.shield_matchbaralpha and JSHB.db.profile.resourcebar.enabled) and JSHB.F.ResourceBar:GetAlpha() or 1)
					AutoCastShine_AutoCastStop(JSHB.F.ShieldIndicator.shine)
				else
					JSHB.F.ShieldIndicator:SetAlpha(0)
					AutoCastShine_AutoCastStop(JSHB.F.ShieldIndicator.shine)
				end			
			end
			
		end
		
		JSHB.F.ShieldIndicator.updateTimer = 0
		JSHB.F.ShieldIndicator:SetScript("OnUpdate",
			function(self, elapsed, ...)	
				self.updateTimer = self.updateTimer + elapsed	
				if self.updateTimer < INDICATORS_UPDATEINTERVAL then return else self.updateTimer = 0 end
				if (not JSHB.moversLocked) then return end
				DoShieldUpdate(self)
			end)
	end
end