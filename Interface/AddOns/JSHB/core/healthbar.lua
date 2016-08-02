--
-- JSHB - health bar module
--

-- Cache
local UnitHealthMax, UnitHealth = UnitHealthMax, UnitHealth

local function getBarColor()
	-- class colored is turned on
	if JSHB.db.profile.healthbar.classcolored then
		if  JSHB.db.profile.healthbar.lowwarn and ((UnitHealth("player") / UnitHealthMax("player")) <= JSHB.db.profile.healthbar.lowwarnthreshold) then
			-- resource is lower than threshold
			return JSHB.db.profile.healthbar.barcolorlow
		else
			-- class colored not over high threshold or high threshold is turned off
			return { RAID_CLASS_COLORS[JSHB.playerClass].r, RAID_CLASS_COLORS[JSHB.playerClass].g, RAID_CLASS_COLORS[JSHB.playerClass].b, 1 }
		end
	-- class colored is not turned on
	elseif  JSHB.db.profile.healthbar.lowwarn and ((UnitHealth("player") / UnitHealthMax("player")) <= JSHB.db.profile.healthbar.lowwarnthreshold) then
		-- resource is lower than threshold
		return JSHB.db.profile.healthbar.barcolorlow
	else
		-- class colored not over high threshold or high threshold is turned off
		return JSHB.db.profile.healthbar.barcolor
	end
end

function JSHB.SetupHealthBarModule()
	-- Destruction	
	if JSHB.F.HealthBar then
		JSHB.F.HealthBar:Hide()
		JSHB.F.HealthBar:SetScript("OnUpdate", nil)
		JSHB.F.HealthBar:SetScript("OnEvent", nil)
		JSHB.F.HealthBar:UnregisterAllEvents()
			
		if JSHB.F.HealthBar.smoother then
			JSHB.RemoveSmooth(JSHB.F.HealthBar)
		end
		
		JSHB.DeregisterMovableFrame("MOVER_HEALTHBAR")
		JSHB.F.HealthBar:SetParent(nil)
	end
		
	-- Construction
	if JSHB.db.profile.healthbar.enabled then

		local HEALTHBAR_UPDATEINTERVAL = 0.07

		-- Create the Frame
		JSHB.F.HealthBar = JSHB.MakeFrame(JSHB.F.HealthBar, "StatusBar", "JSHB_HEALTHBAR", JSHB.db.profile.healthbar.anchor[2] or UIParent)
		
		if (JSHB.db.profile.healthbar.orientation == "vertical") then
			JSHB.F.HealthBar:SetOrientation("VERTICAL")
			JSHB.F.HealthBar:SetRotatesTexture(true)
		end
		
		JSHB.F.HealthBar:SetParent(JSHB.db.profile.healthbar.anchor[2] or UIParent)
		JSHB.F.HealthBar:ClearAllPoints()
		JSHB.F.HealthBar:SetStatusBarTexture(JSHB.GetActiveTextureFile(JSHB.db.profile.healthbar.bartexture))
		JSHB.F.HealthBar:SetMinMaxValues(0, (UnitHealthMax("player") > 0) and UnitHealthMax("player") or 100)
		JSHB.F.HealthBar:SetStatusBarColor(JSHB.db.profile.healthbar.classcolored and
			(unpack({ RAID_CLASS_COLORS[JSHB.playerClass].r, RAID_CLASS_COLORS[JSHB.playerClass].g, RAID_CLASS_COLORS[JSHB.playerClass].b, 1}) ) or unpack(JSHB.db.profile.healthbar.barcolor) )
		JSHB.F.HealthBar:SetSize(JSHB.db.profile.healthbar.width, JSHB.db.profile.healthbar.height)
		JSHB.F.HealthBar:SetPoint(JSHB.GetActiveAnchor(JSHB.db.profile.healthbar.anchor) )
		JSHB.F.HealthBar:SetAlpha(0)
		JSHB.F.HealthBar:SetValue(UnitHealth("player") )
		
		-- Create the Background and border if the user wants one
		JSHB.F.HealthBar.background = JSHB.MakeBackground(JSHB.F.HealthBar, JSHB.db.profile.healthbar, nil, nil, JSHB.F.HealthBar.background)

		JSHB.RegisterMovableFrame(
			"MOVER_HEALTHBAR",
			JSHB.F.HealthBar,
			JSHB.F.HealthBar,
			JSHB.L["Health Bar"],
			JSHB.db.profile.healthbar,
			JSHB.SetupHealthBarModule,
			JSHB.defaults.profile.healthbar,
			JSHB.db.profile.healthbar
		)
		
		if JSHB.db.profile.healthbar.smoothbar then
			JSHB.MakeSmooth(JSHB.F.HealthBar)
		end
		
		-- Setup Health Number
		if JSHB.db.profile.healthbar.healthnumber then
			JSHB.F.HealthBar.value = JSHB.F.HealthBar.value or JSHB.F.HealthBar:CreateFontString(nil, "OVERLAY")
			JSHB.F.HealthBar.value:ClearAllPoints()
			JSHB.F.HealthBar.value:SetJustifyH("CENTER")
			JSHB.F.HealthBar.value:SetPoint("CENTER", JSHB.F.HealthBar, "CENTER", JSHB.db.profile.healthbar.healthfontoffset, (JSHB.db.profile.healthbar.shotbar == true) and 2 or 0)
			JSHB.F.HealthBar.value:SetFont(JSHB.GetActiveFont(JSHB.db.profile.healthbar.healthfont) )
			JSHB.F.HealthBar.value:SetTextColor(unpack(JSHB.db.profile.healthbar.healthfontcolor) )
			JSHB.F.HealthBar.value:SetText(UnitHealth("player") )
			JSHB.F.HealthBar.value:Show()
		elseif JSHB.F.HealthBar.value then
			JSHB.F.HealthBar.value:Hide()
		end

		-- Setup Pet Health Percentage
		if JSHB.db.profile.healthbar.pethealth then		
			JSHB.F.HealthBar.petHealthValue = JSHB.F.HealthBar.petHealthValue or JSHB.F.HealthBar:CreateFontString(nil, "OVERLAY")
			JSHB.F.HealthBar.petHealthValue:ClearAllPoints()
			
			if (JSHB.db.profile.healthbar.orientation == "vertical") then
				JSHB.F.HealthBar.petHealthValue:SetJustifyH("BOTTOM")
				JSHB.F.HealthBar.petHealthValue:SetPoint("BOTTOM", JSHB.F.HealthBar, "BOTTOM", 1 + JSHB.db.profile.healthbar.pethealthfontoffset, 0)
			else
				JSHB.F.HealthBar.petHealthValue:SetJustifyH("LEFT")
				JSHB.F.HealthBar.petHealthValue:SetPoint("LEFT", JSHB.F.HealthBar, "LEFT", 1 + JSHB.db.profile.healthbar.pethealthfontoffset, 0)
			end
			
			JSHB.F.HealthBar.petHealthValue:SetFont(JSHB.GetActiveFont(JSHB.db.profile.healthbar.pethealthfont) )
			JSHB.F.HealthBar.petHealthValue:SetText("")
			JSHB.F.HealthBar.petHealthValue:Show()
		elseif JSHB.F.HealthBar.petHealthValue then
			JSHB.F.HealthBar.petHealthValue:Hide()
		end
		
		-- Register Events to support the bar
		JSHB.F.HealthBar:RegisterEvent("UNIT_HEALTH_FREQUENT")
		JSHB.F.HealthBar:RegisterEvent("UNIT_MAXHEALTH")

		JSHB.F.HealthBar:SetScript("OnEvent",
			function(self, event, ...)
			    local timestamp, eventtype, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags = ...
				
				if (event == "UNIT_MAXHEALTH") then
					self:SetMinMaxValues(0, UnitHealthMax("player") )
				elseif (event == "PLAYER_SPECIALIZATION_CHANGED") then
					JSHB.SetupHealthBarModule()
				end
			end)
		
		-- Setup the script for handling the bar
		JSHB.F.HealthBar.updateTimer = 0
		JSHB.F.HealthBar:SetScript("OnUpdate", 
			function(self, elapsed)
				self.updateTimer = self.updateTimer + elapsed
				if self.updateTimer < HEALTHBAR_UPDATEINTERVAL then return else self.updateTimer = 0 end
		
				-- Overrides take precidence over normal alpha
				if C_PetBattles.IsInBattle() then
					self:SetAlpha(0) -- Hide for pet battles
				elseif JSHB.db.profile.healthbar.deadoverride and UnitIsDeadOrGhost("player") then
					self:SetAlpha(JSHB.db.profile.healthbar.deadoverridealpha)
				elseif JSHB.db.profile.healthbar.mountoverride and (IsMounted() or UnitHasVehicleUI("player") ) and (UnitBuff("player", "Telaari Talbuk") == nil) and (UnitBuff("player", "Frostwolf War Wolf") == nil) and (UnitBuff("player", "Rune of Grasping Earth") == nil) then
					self:SetAlpha(JSHB.db.profile.healthbar.mountoverridealpha)
				elseif JSHB.db.profile.healthbar.oocoverride and (not InCombatLockdown() ) then
					self:SetAlpha(JSHB.db.profile.healthbar.oocoverridealpha)
				elseif (UnitHealth("player") ~= UnitHealthMax("player") ) then
					self:SetAlpha(JSHB.db.profile.healthbar.activealpha)
				else
					self:SetAlpha(JSHB.db.profile.healthbar.inactivealpha)
				end
				
				-- Handle status bar updating
				self:SetValue(UnitHealth("player") )
				
				if (JSHB.db.profile.healthbar.healthnumber and self.value) then
					if JSHB.db.profile.healthbar.abbreviatenumber then
						local playerHP = JSHB.AbbreviateNumber(UnitHealth("player"))
						self.value:SetText(playerHP)
					else
						self.value:SetText(UnitHealth("player"))
					end
				end

				self:SetStatusBarColor(unpack(getBarColor()) )
				
				-- Handle Pet Health Percentage
				if JSHB.db.profile.healthbar.pethealth then
					if (not UnitExists("pet") ) or (UnitIsDeadOrGhost("pet") ) then 
						self.petHealthValue:SetText("")
					else
						if ( (UnitHealth("pet") / UnitHealthMax("pet") ) >= .9) then
							self.petHealthValue:SetFormattedText("|cffffff00%d %%|r", (UnitHealth("pet") / UnitHealthMax("pet") ) * 100)						
						elseif ( (UnitHealth("pet") / UnitHealthMax("pet") ) >= .35) then
							self.petHealthValue:SetFormattedText("|cffffffff%d %%|r", (UnitHealth("pet") / UnitHealthMax("pet") ) * 100)						
						else
							self.petHealthValue:SetFormattedText("|cffff0000%d %%|r", (UnitHealth("pet") / UnitHealthMax("pet") ) * 100)
						end
					end
				end
			end)
		JSHB.F.HealthBar:Show()
	end
end