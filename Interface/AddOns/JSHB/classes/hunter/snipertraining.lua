--
-- JSHB Hunter - sniper training indicator module
--

if (select(2, UnitClass("player")) ~= "HUNTER") then return end

-- Cache
local GetSpecialization, UnitInVehicle = GetSpecialization, UnitInVehicle

function JSHB.SetupSniperTrainingModule()

	-- Deconstruction
	if JSHB.F.SniperTrainingIndicator then
		JSHB.DeregisterMovableFrame("MOVER_INDICATORS_SNIPERTRAINING")
		JSHB.F.SniperTrainingIndicator:Hide()
		JSHB.F.SniperTrainingIndicator:SetScript("OnUpdate", nil)
		JSHB.F.SniperTrainingIndicator:UnregisterAllEvents()
		JSHB.F.SniperTrainingIndicator:SetParent(nil)
	end

	-- Construction
	if (GetSpecialization() ~= 2) then return end -- player must be Marksmanship for Sniper Training
	local INDICATORS_UPDATEINTERVAL = 0.125
	if JSHB.db.profile.indicators.snipertraining_enable then
		-- Create the Frame
		JSHB.F.SniperTrainingIndicator = JSHB.MakeFrame(JSHB.F.SniperTrainingIndicator, "Frame", "JSHB_INDICATORS_SNIPERTRAINING", JSHB.db.profile.indicators.anchor_snipertraining[2] or UIParent)
		JSHB.F.SniperTrainingIndicator:SetParent(JSHB.db.profile.indicators.anchor_snipertraining[2] or UIParent)
		JSHB.F.SniperTrainingIndicator:ClearAllPoints()
		JSHB.F.SniperTrainingIndicator:SetSize(JSHB.db.profile.indicators.snipertraining_iconsize, JSHB.db.profile.indicators.snipertraining_iconsize)
		JSHB.F.SniperTrainingIndicator:SetPoint(JSHB.GetActiveAnchor(JSHB.db.profile.indicators.anchor_snipertraining) )
		JSHB.F.SniperTrainingIndicator.Icon = JSHB.F.SniperTrainingIndicator.Icon or JSHB.F.SniperTrainingIndicator:CreateTexture(nil, "BACKGROUND")
		JSHB.F.SniperTrainingIndicator.Icon:SetTexture("Interface\\Buttons\\UI-GroupLoot-Pass-Up")
		
		if JSHB.db.profile.indicators.snipertraining_enabletexcoords then
			JSHB.F.SniperTrainingIndicator.Icon:SetTexCoord(unpack(JSHB.db.profile.indicators.snipertraining_texcoords))
		else
			JSHB.F.SniperTrainingIndicator.Icon:SetTexCoord(0, 1, 0, 1)
		end
		
		JSHB.F.SniperTrainingIndicator.Icon:ClearAllPoints()
		JSHB.F.SniperTrainingIndicator.Icon:SetAllPoints(JSHB.F.SniperTrainingIndicator)
		JSHB.F.SniperTrainingIndicator.shine = JSHB.F.SniperTrainingIndicator.shine or CreateFrame("Frame", "AutocastShine_SNIPER", UIParent, "AutoCastShineTemplate")
		JSHB.F.SniperTrainingIndicator.shine:ClearAllPoints()
		JSHB.F.SniperTrainingIndicator.shine:SetSize(JSHB.db.profile.indicators.snipertraining_iconsize+2, JSHB.db.profile.indicators.snipertraining_iconsize+2)
		JSHB.F.SniperTrainingIndicator.shine:SetPoint("CENTER", JSHB.F.SniperTrainingIndicator, "CENTER", 1, -1)
		JSHB.F.SniperTrainingIndicator.shine:SetAlpha(1)
		JSHB.F.SniperTrainingIndicator.shine:Show()
		-- Create the Background and border if the user wants one
		JSHB.F.SniperTrainingIndicator.background = JSHB.MakeBackground(JSHB.F.SniperTrainingIndicator, JSHB.db.profile.indicators, "snipertraining_", nil, JSHB.F.SniperTrainingIndicator.background)
		JSHB.F.SniperTrainingIndicator:SetAlpha(1)
		JSHB.F.SniperTrainingIndicator:Show()
		
		JSHB.RegisterMovableFrame(
			"MOVER_INDICATORS_SNIPERTRAINING",
			JSHB.F.SniperTrainingIndicator,
			JSHB.F.SniperTrainingIndicator,
			JSHB.L["Sniper Training Indicator"],
			JSHB.db.profile.indicators,
			JSHB.SetupSniperTrainingIndicatorModule,
			JSHB.defaults.profile.indicators,
			JSHB.db.profile.indicators,
			"_snipertraining",
			"snipertraining_"
		)
	
		local function DoSniperTrainingIndicatorUpdate(self)
			local thisIcon, hasSniperTrainingIndicator
			-- Set the proper texture for sniper training
			thisIcon = select(3, UnitAura("player", GetSpellInfo(168811), nil, "PLAYER|HELPFUL")) -- Sniper Training
			if not (thisIcon) then
				thisIcon = "Interface\\Buttons\\UI-GroupLoot-Pass-Up" -- no buff, player has moved for too long
				self.Icon:SetTexture(thisIcon)
				hasSniperTrainingIndicator = false
			else
				hasSniperTrainingIndicator = true
				self.Icon:SetTexture(thisIcon)
			end
			
			if InCombatLockdown() then -- player is in combat
				if (not UnitInVehicle("player")) and (not C_PetBattles.IsInBattle()) then -- player is not in a vehicle or pet battle
					if (hasSniperTrainingIndicator == true) and (not JSHB.db.profile.indicators.snipertraining_onlymissing) then -- player has the buff and not slected "only if missing" so show the indicator
						JSHB.F.SniperTrainingIndicator:SetAlpha((JSHB.db.profile.indicators.snipertraining_matchbaralpha and JSHB.db.profile.resourcebar.enabled) and JSHB.F.ResourceBar:GetAlpha() or 1)
					elseif (hasSniperTrainingIndicator == false) and JSHB.db.profile.indicators.snipertraining_onlymissing then -- player is missing the buff and has selected "only if missing" so show the indicator
						JSHB.F.SniperTrainingIndicator:SetAlpha((JSHB.db.profile.indicators.snipertraining_matchbaralpha and JSHB.db.profile.resourcebar.enabled) and JSHB.F.ResourceBar:GetAlpha() or 1)
						AutoCastShine_AutoCastStart(JSHB.F.SniperTrainingIndicator.shine, 1, 0.5, 0.5)
					else -- player has the buff and has sleceted "only if missing" so hide the indicator
						JSHB.F.SniperTrainingIndicator:SetAlpha(0)
						AutoCastShine_AutoCastStop(JSHB.F.SniperTrainingIndicator.shine)
					end
				else -- Player is in a vehicle or pet battle so hide the indicator
					JSHB.F.SniperTrainingIndicator:SetAlpha(0)
					AutoCastShine_AutoCastStop(JSHB.F.SniperTrainingIndicator.shine)
				end
			else -- player is out of combat
				if (not UnitInVehicle("player")) and (not C_PetBattles.IsInBattle()) then -- player is not in a vehicle or pet battle
					if JSHB.db.profile.indicators.snipertraining_onlycombat then -- player has selected to show only in combat so hide the indicator
						JSHB.F.SniperTrainingIndicator:SetAlpha(0)
						AutoCastShine_AutoCastStop(JSHB.F.SniperTrainingIndicator.shine)
					else
						if (hasSniperTrainingIndicator == true) and (not JSHB.db.profile.indicators.snipertraining_onlymissing) then -- player has the buff and not slected "only if missing" so show the indicator
							JSHB.F.SniperTrainingIndicator:SetAlpha((JSHB.db.profile.indicators.snipertraining_matchbaralpha and JSHB.db.profile.resourcebar.enabled) and JSHB.F.ResourceBar:GetAlpha() or 1)
						elseif (hasSniperTrainingIndicator == false) and JSHB.db.profile.indicators.snipertraining_onlymissing then -- player is missing the buff and has selected "only if missing" so show the indicator
							JSHB.F.SniperTrainingIndicator:SetAlpha((JSHB.db.profile.indicators.snipertraining_matchbaralpha and JSHB.db.profile.resourcebar.enabled) and JSHB.F.ResourceBar:GetAlpha() or 1)
							AutoCastShine_AutoCastStart(JSHB.F.SniperTrainingIndicator.shine, 1, 0.5, 0.5)
						else -- player has the buff and has sleceted "only if missing" so hide the indicator
							JSHB.F.SniperTrainingIndicator:SetAlpha(0)
							AutoCastShine_AutoCastStop(JSHB.F.SniperTrainingIndicator.shine)
						end
					end
				else -- Player is in a vehicle or pet battle so hide the indicator
					JSHB.F.SniperTrainingIndicator:SetAlpha(0)
					AutoCastShine_AutoCastStop(JSHB.F.SniperTrainingIndicator.shine)
				end
			end
			
		end
		
		JSHB.F.SniperTrainingIndicator.updateTimer = 0
		JSHB.F.SniperTrainingIndicator:SetScript("OnUpdate",
			function(self, elapsed, ...)
				self.updateTimer = self.updateTimer + elapsed
				if self.updateTimer < INDICATORS_UPDATEINTERVAL then return else self.updateTimer = 0 end
				if (not JSHB.moversLocked) then return end
				DoSniperTrainingIndicatorUpdate(self)
			end)
	end
end