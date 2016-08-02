--
-- JSHB Hunter - aspect indicator module
--

if (select(2, UnitClass("player")) ~= "HUNTER") then return end

-- Cache
local UnitInVehicle = UnitInVehicle

function JSHB.SetupAspectModule()

	-- Deconstruction
	if JSHB.F.AspectIndicator then
		JSHB.DeregisterMovableFrame("MOVER_INDICATORS_ASPECT")
		JSHB.F.AspectIndicator:Hide()
		JSHB.F.AspectIndicator:SetScript("OnUpdate", nil)
		JSHB.F.AspectIndicator:UnregisterAllEvents()
		JSHB.F.AspectIndicator:SetParent(nil)
	end
	
	-- Construction
	if (UnitLevel("player") < 24) then return end -- Level 24 is when Hunters first get an aspect in 6.0
	local INDICATORS_UPDATEINTERVAL = 0.125
	
	if JSHB.db.profile.indicators.aspect_enable then
		
		-- Create the Frame
		JSHB.F.AspectIndicator = JSHB.MakeFrame(JSHB.F.AspectIndicator, "Frame", "JSHB_INDICATORS_ASPECT", JSHB.db.profile.indicators.anchor_aspect[2] or UIParent)
		JSHB.F.AspectIndicator:SetParent(JSHB.db.profile.indicators.anchor_aspect[2] or UIParent)
		JSHB.F.AspectIndicator:ClearAllPoints()
		JSHB.F.AspectIndicator:SetSize(JSHB.db.profile.indicators.aspect_iconsize, JSHB.db.profile.indicators.aspect_iconsize)
		JSHB.F.AspectIndicator:SetPoint(JSHB.GetActiveAnchor(JSHB.db.profile.indicators.anchor_aspect))
		JSHB.F.AspectIndicator.Icon = JSHB.F.AspectIndicator.Icon or JSHB.F.AspectIndicator:CreateTexture(nil, "BACKGROUND")
		JSHB.F.AspectIndicator.Icon:SetTexture("Interface\\Buttons\\UI-GroupLoot-Pass-Up")
		
		if JSHB.db.profile.indicators.aspect_enabletexcoords then
			JSHB.F.AspectIndicator.Icon:SetTexCoord(unpack(JSHB.db.profile.indicators.aspect_texcoords))
		else
			JSHB.F.AspectIndicator.Icon:SetTexCoord(0, 1, 0, 1)
		end
		
		JSHB.F.AspectIndicator.Icon:ClearAllPoints()
		JSHB.F.AspectIndicator.Icon:SetAllPoints(JSHB.F.AspectIndicator)
		JSHB.F.AspectIndicator.shine = JSHB.F.AspectIndicator.shine or CreateFrame("Frame", "AutocastShine_ASPECT", UIParent, "AutoCastShineTemplate")
		JSHB.F.AspectIndicator.shine:ClearAllPoints()
		JSHB.F.AspectIndicator.shine:SetSize(JSHB.db.profile.indicators.aspect_iconsize+2, JSHB.db.profile.indicators.aspect_iconsize+2)
		JSHB.F.AspectIndicator.shine:SetPoint("CENTER", JSHB.F.AspectIndicator, "CENTER", 1, -1)
		JSHB.F.AspectIndicator.shine:SetAlpha(1)
		JSHB.F.AspectIndicator.shine:Show()
		-- Create the Background and border if the user wants one
		JSHB.F.AspectIndicator.background = JSHB.MakeBackground(JSHB.F.AspectIndicator, JSHB.db.profile.indicators, "aspect_", nil, JSHB.F.AspectIndicator.background)
		JSHB.F.AspectIndicator:SetAlpha(1)
		JSHB.F.AspectIndicator:Show()
		
		JSHB.RegisterMovableFrame(
			"MOVER_INDICATORS_ASPECT",
			JSHB.F.AspectIndicator,
			JSHB.F.AspectIndicator,
			JSHB.L["Aspect Indicator"],
			JSHB.db.profile.indicators,
			JSHB.SetupAspectIndicatorModule,
			JSHB.defaults.profile.indicators,
			JSHB.db.profile.indicators,
			"_aspect",
			"aspect_"
		)

		local function DoAspectUpdate(self)
			local thisIcon, hasAspect
			-- Set the proper texture for the current aspect
			thisIcon = select(3, UnitAura("player", GetSpellInfo(5118), nil, "PLAYER|HELPFUL")) -- Aspect of the Cheetah
			if not (thisIcon) then
				thisIcon = select(3, UnitAura("player", GetSpellInfo(13159), nil, "PLAYER|HELPFUL")) -- Aspect of the Pack
				if not (thisIcon) then
					thisIcon = "Interface\\Buttons\\UI-GroupLoot-Pass-Up" -- no active aspect
					hasAspect = false
				else
					self.Icon:SetTexture(thisIcon)
					hasAspect = true
				end
			else
				self.Icon:SetTexture(thisIcon)
				hasAspect = true
			end
			
			if InCombatLockdown() then
				if (hasAspect == true) and (not UnitHasVehicleUI("player")) and (not C_PetBattles.IsInBattle()) then
					JSHB.F.AspectIndicator:SetAlpha((JSHB.db.profile.indicators.aspect_matchbaralpha and JSHB.db.profile.resourcebar.enabled) and JSHB.F.ResourceBar:GetAlpha() or 1)
					AutoCastShine_AutoCastStart(JSHB.F.AspectIndicator.shine, 1, 0.5, 0.5)					
				else
					JSHB.F.AspectIndicator:SetAlpha(0)
					AutoCastShine_AutoCastStop(JSHB.F.AspectIndicator.shine)
				end
			else -- OOC
				if(hasAspect == true) and (not JSHB.db.profile.indicators.aspect_onlycombat) and (not UnitHasVehicleUI("player")) and (not C_PetBattles.IsInBattle()) then
					JSHB.F.AspectIndicator:SetAlpha( (JSHB.db.profile.indicators.aspect_matchbaralpha and JSHB.db.profile.resourcebar.enabled) and JSHB.F.ResourceBar:GetAlpha() or 1)
					AutoCastShine_AutoCastStop(JSHB.F.AspectIndicator.shine)
				else
					JSHB.F.AspectIndicator:SetAlpha(0)
					AutoCastShine_AutoCastStop(JSHB.F.AspectIndicator.shine)
				end			
			end
			
		end
		
		JSHB.F.AspectIndicator.updateTimer = 0
		JSHB.F.AspectIndicator:SetScript("OnUpdate",
			function(self, elapsed, ...)	
				self.updateTimer = self.updateTimer + elapsed	
				if self.updateTimer < INDICATORS_UPDATEINTERVAL then return else self.updateTimer = 0 end
				if (not JSHB.moversLocked) then return end
				DoAspectUpdate(self)
			end)
	end
end