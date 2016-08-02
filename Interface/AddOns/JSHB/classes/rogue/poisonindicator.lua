--
-- JSHB Rogue - poison indicator module
--

if (select(2, UnitClass("player")) ~= "ROGUE") then return end

-- Cache
local UnitInVehicle = UnitInVehicle

function JSHB.SetupPoisonModule()

	-- Deconstruction
	if JSHB.F.PoisonIndicator then
		JSHB.DeregisterMovableFrame("MOVER_INDICATORS_POISON")
		JSHB.F.PoisonIndicator:Hide()
		JSHB.F.PoisonIndicator:SetScript("OnUpdate", nil)
		JSHB.F.PoisonIndicator:UnregisterAllEvents()
		JSHB.F.PoisonIndicator:SetParent(nil)
	end
	
	-- Construction
	local INDICATORS_UPDATEINTERVAL = 0.125
	
	if JSHB.db.profile.indicators.poison_enable then
		
		-- Create the Frame
		JSHB.F.PoisonIndicator = JSHB.MakeFrame(JSHB.F.PoisonIndicator, "Frame", "JSHB_INDICATORS_POISON", JSHB.db.profile.indicators.anchor_poison[2] or UIParent)
		JSHB.F.PoisonIndicator:SetParent(JSHB.db.profile.indicators.anchor_poison[2] or UIParent)
		JSHB.F.PoisonIndicator:ClearAllPoints()
		JSHB.F.PoisonIndicator:SetSize(JSHB.db.profile.indicators.poison_iconsize, JSHB.db.profile.indicators.poison_iconsize)
		JSHB.F.PoisonIndicator:SetPoint(JSHB.GetActiveAnchor(JSHB.db.profile.indicators.anchor_poison))
		JSHB.F.PoisonIndicator.Icon = JSHB.F.PoisonIndicator.Icon or JSHB.F.PoisonIndicator:CreateTexture(nil, "BACKGROUND")
		JSHB.F.PoisonIndicator.Icon:SetTexture("Interface\\Buttons\\UI-GroupLoot-Pass-Up")
		
		if JSHB.db.profile.indicators.poison_enabletexcoords then
			JSHB.F.PoisonIndicator.Icon:SetTexCoord(unpack(JSHB.db.profile.indicators.poison_texcoords))
		else
			JSHB.F.PoisonIndicator.Icon:SetTexCoord(0, 1, 0, 1)
		end
		
		JSHB.F.PoisonIndicator.Icon:ClearAllPoints()
		JSHB.F.PoisonIndicator.Icon:SetAllPoints(JSHB.F.PoisonIndicator)
		JSHB.F.PoisonIndicator.shine = JSHB.F.PoisonIndicator.shine or CreateFrame("Frame", "AutocastShine_POISON", UIParent, "AutoCastShineTemplate")
		JSHB.F.PoisonIndicator.shine:ClearAllPoints()
		JSHB.F.PoisonIndicator.shine:SetSize(JSHB.db.profile.indicators.poison_iconsize+2, JSHB.db.profile.indicators.poison_iconsize+2)
		JSHB.F.PoisonIndicator.shine:SetPoint("CENTER", JSHB.F.PoisonIndicator, "CENTER", 1, -1)
		JSHB.F.PoisonIndicator.shine:SetAlpha(1)
		JSHB.F.PoisonIndicator.shine:Show()
		-- Create the Background and border if the user wants one
		JSHB.F.PoisonIndicator.background = JSHB.MakeBackground(JSHB.F.PoisonIndicator, JSHB.db.profile.indicators, "poison_", nil, JSHB.F.PoisonIndicator.background)
		JSHB.F.PoisonIndicator:SetAlpha(1)
		JSHB.F.PoisonIndicator:Show()
		
		JSHB.RegisterMovableFrame(
			"MOVER_INDICATORS_POISON",
			JSHB.F.PoisonIndicator,
			JSHB.F.PoisonIndicator,
			JSHB.L["Poison Indicator"],
			JSHB.db.profile.indicators,
			JSHB.SetupPoisonModule,
			JSHB.defaults.profile.indicators,
			JSHB.db.profile.indicators,
			"_poison",
			"poison_"
		)

		local function DoPoisonUpdate(self)
			local thisIcon, hasPoison
			-- Set the proper texture for the current poison
			thisIcon = select(3, UnitAura("player", GetSpellInfo(2823), nil, "PLAYER|HELPFUL")) -- Deadly Poison
			if not (thisIcon) then
				thisIcon = select(3, UnitAura("player", GetSpellInfo(8679), nil, "PLAYER|HELPFUL")) -- Wound Poison
				if not (thisIcon) then
					self.Icon:SetTexture("Interface\\Buttons\\UI-GroupLoot-Pass-Up") -- no active poison
					hasPoison = false
				else
					self.Icon:SetTexture(thisIcon)
					hasPoison = true
				end
			else
				self.Icon:SetTexture(thisIcon)
				hasPoison = true
			end
			
			if InCombatLockdown() then -- player is in combat
				if (not UnitInVehicle("player")) and (not C_PetBattles.IsInBattle()) then -- player is not in a vehicle or pet battle
					if (hasPoison == true) and (not JSHB.db.profile.indicators.poison_onlymissing) then -- player has the buff and not slected "only if missing" so show the indicator
						JSHB.F.PoisonIndicator:SetAlpha((JSHB.db.profile.indicators.poison_matchbaralpha and JSHB.db.profile.resourcebar.enabled) and JSHB.F.ResourceBar:GetAlpha() or 1)
					elseif (hasPoison == false) and JSHB.db.profile.indicators.poison_onlymissing then -- player is missing the buff and has selected "only if missing" so show the indicator
						JSHB.F.PoisonIndicator:SetAlpha((JSHB.db.profile.indicators.poison_matchbaralpha and JSHB.db.profile.resourcebar.enabled) and JSHB.F.ResourceBar:GetAlpha() or 1)
						AutoCastShine_AutoCastStart(JSHB.F.PoisonIndicator.shine, 1, 0.5, 0.5)
					else -- player has the buff and has sleceted "only if missing" so hide the indicator
						JSHB.F.PoisonIndicator:SetAlpha(0)
						AutoCastShine_AutoCastStop(JSHB.F.PoisonIndicator.shine)
					end
				else -- Player is in a vehicle or pet battle so hide the indicator
					JSHB.F.PoisonIndicator:SetAlpha(0)
					AutoCastShine_AutoCastStop(JSHB.F.PoisonIndicator.shine)
				end
			else -- player is out of combat
				if (not UnitInVehicle("player")) and (not C_PetBattles.IsInBattle()) then -- player is not in a vehicle or pet battle
					if JSHB.db.profile.indicators.poison_onlycombat then -- player has selected to show only in combat so hide the indicator
						JSHB.F.PoisonIndicator:SetAlpha(0)
						AutoCastShine_AutoCastStop(JSHB.F.PoisonIndicator.shine)
					else
						if (hasPoison == true) and (not JSHB.db.profile.indicators.poison_onlymissing) then -- player has the buff and not slected "only if missing" so show the indicator
							JSHB.F.PoisonIndicator:SetAlpha((JSHB.db.profile.indicators.poison_matchbaralpha and JSHB.db.profile.resourcebar.enabled) and JSHB.F.ResourceBar:GetAlpha() or 1)
						elseif (hasPoison == false) and JSHB.db.profile.indicators.poison_onlymissing then -- player is missing the buff and has selected "only if missing" so show the indicator
							JSHB.F.PoisonIndicator:SetAlpha((JSHB.db.profile.indicators.poison_matchbaralpha and JSHB.db.profile.resourcebar.enabled) and JSHB.F.ResourceBar:GetAlpha() or 1)
							AutoCastShine_AutoCastStart(JSHB.F.PoisonIndicator.shine, 1, 0.5, 0.5)
						else -- player has the buff and has sleceted "only if missing" so hide the indicator
							JSHB.F.PoisonIndicator:SetAlpha(0)
							AutoCastShine_AutoCastStop(JSHB.F.PoisonIndicator.shine)
						end
					end
				else -- Player is in a vehicle or pet battle so hide the indicator
					JSHB.F.PoisonIndicator:SetAlpha(0)
					AutoCastShine_AutoCastStop(JSHB.F.PoisonIndicator.shine)
				end
			end
			
		end
		
		JSHB.F.PoisonIndicator.updateTimer = 0
		JSHB.F.PoisonIndicator:SetScript("OnUpdate",
			function(self, elapsed, ...)	
				self.updateTimer = self.updateTimer + elapsed	
				if self.updateTimer < INDICATORS_UPDATEINTERVAL then return else self.updateTimer = 0 end
				if (not JSHB.moversLocked) then return end
				DoPoisonUpdate(self)
			end)
	end
end