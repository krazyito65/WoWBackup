--
-- JSHB - target bar module
--

-- Cache
local UnitHealthMax, UnitHealth = UnitHealthMax, UnitHealth

local function getBarColor()
	-- class colored is turned on
	if JSHB.db.profile.targetbar.classcolored then
		local targetClass = (select(2, UnitClass("target"))) or "HUNTER"
		if  JSHB.db.profile.targetbar.lowwarn and ((UnitHealth("target") / UnitHealthMax("target")) <= JSHB.db.profile.targetbar.lowwarnthreshold) then
			-- resource is lower than threshold
			return JSHB.db.profile.targetbar.barcolorlow
		else
			-- class colored not over high threshold or high threshold is turned off
			return { RAID_CLASS_COLORS[targetClass].r, RAID_CLASS_COLORS[targetClass].g, RAID_CLASS_COLORS[targetClass].b, 1 }
		end
	-- class colored is not turned on
	elseif  JSHB.db.profile.targetbar.lowwarn and ((UnitHealth("target") / UnitHealthMax("target")) <= JSHB.db.profile.targetbar.lowwarnthreshold) then
		-- resource is lower than threshold
		return JSHB.db.profile.targetbar.barcolorlow
	else
		-- class colored not over high threshold or high threshold is turned off
		return JSHB.db.profile.targetbar.barcolor
	end
end

function JSHB.SetupTargetBarModule()
	-- Destruction	
	if JSHB.F.TargetBar then
		JSHB.F.TargetBar:Hide()
		JSHB.F.TargetBar:SetScript("OnUpdate", nil)
		JSHB.F.TargetBar:SetScript("OnEvent", nil)
		JSHB.F.TargetBar:UnregisterAllEvents()
			
		if JSHB.F.TargetBar.smoother then
			JSHB.RemoveSmooth(JSHB.F.TargetBar)
		end
		
		JSHB.DeregisterMovableFrame("MOVER_TARGETBAR")
		JSHB.F.TargetBar:SetParent(nil)
	end
		
	-- Construction
	if JSHB.db.profile.targetbar.enabled then

		local TARGETBAR_UPDATEINTERVAL = 0.07
		local targetClass = (select(2, UnitClass("target"))) or "HUNTER"

		-- Create the Frame
		JSHB.F.TargetBar = JSHB.MakeFrame(JSHB.F.TargetBar, "StatusBar", "JSHB_TARGETBAR", JSHB.db.profile.targetbar.anchor[2] or UIParent)
		
		if (JSHB.db.profile.targetbar.orientation == "vertical") then
			JSHB.F.TargetBar:SetOrientation("VERTICAL")
			JSHB.F.TargetBar:SetRotatesTexture(true)
		end
		
		JSHB.F.TargetBar:SetParent(JSHB.db.profile.targetbar.anchor[2] or UIParent)
		JSHB.F.TargetBar:ClearAllPoints()
		JSHB.F.TargetBar:SetStatusBarTexture(JSHB.GetActiveTextureFile(JSHB.db.profile.targetbar.bartexture))
		JSHB.F.TargetBar:SetMinMaxValues(0, (UnitHealthMax("target") > 0) and UnitHealthMax("target") or 100)
		JSHB.F.TargetBar:SetStatusBarColor(JSHB.db.profile.targetbar.classcolored and
			(unpack({ RAID_CLASS_COLORS[targetClass].r, RAID_CLASS_COLORS[targetClass].g, RAID_CLASS_COLORS[targetClass].b, 1}) ) or unpack(JSHB.db.profile.targetbar.barcolor) )
		JSHB.F.TargetBar:SetSize(JSHB.db.profile.targetbar.width, JSHB.db.profile.targetbar.height)
		JSHB.F.TargetBar:SetPoint(JSHB.GetActiveAnchor(JSHB.db.profile.targetbar.anchor) )
		JSHB.F.TargetBar:SetAlpha(0)
		JSHB.F.TargetBar:SetValue(UnitHealth("target") )
		
		-- Create the Background and border if the user wants one
		JSHB.F.TargetBar.background = JSHB.MakeBackground(JSHB.F.TargetBar, JSHB.db.profile.targetbar, nil, nil, JSHB.F.TargetBar.background)

		JSHB.RegisterMovableFrame(
			"MOVER_TARGETBAR",
			JSHB.F.TargetBar,
			JSHB.F.TargetBar,
			JSHB.L["Target Bar"],
			JSHB.db.profile.targetbar,
			JSHB.SetupTargetBarModule,
			JSHB.defaults.profile.targetbar,
			JSHB.db.profile.targetbar
		)
		
		if JSHB.db.profile.targetbar.smoothbar then
			JSHB.MakeSmooth(JSHB.F.TargetBar)
		end
		
		-- Setup Health Number
		if JSHB.db.profile.targetbar.healthnumber then
			JSHB.F.TargetBar.value = JSHB.F.TargetBar.value or JSHB.F.TargetBar:CreateFontString(nil, "OVERLAY")
			JSHB.F.TargetBar.value:ClearAllPoints()
			JSHB.F.TargetBar.value:SetJustifyH("CENTER")
			JSHB.F.TargetBar.value:SetPoint("CENTER", JSHB.F.TargetBar, "CENTER", JSHB.db.profile.targetbar.healthfontoffset, (JSHB.db.profile.targetbar.shotbar == true) and 2 or 0)
			JSHB.F.TargetBar.value:SetFont(JSHB.GetActiveFont(JSHB.db.profile.targetbar.healthfont) )
			JSHB.F.TargetBar.value:SetTextColor(unpack(JSHB.db.profile.targetbar.healthfontcolor) )
			JSHB.F.TargetBar.value:SetText(UnitHealth("target") )
			JSHB.F.TargetBar.value:Show()
		elseif JSHB.F.TargetBar.value then
			JSHB.F.TargetBar.value:Hide()
		end
	
		-- Setup target health text %
		if JSHB.db.profile.targetbar.targethealth then		
			JSHB.F.TargetBar.targetHealthValue = JSHB.F.TargetBar.targetHealthValue or JSHB.F.TargetBar:CreateFontString(nil, "OVERLAY")
			JSHB.F.TargetBar.targetHealthValue:ClearAllPoints()
			
			if (JSHB.db.profile.targetbar.orientation == "vertical") then
				JSHB.F.TargetBar.targetHealthValue:SetJustifyH("BOTTOM")
				JSHB.F.TargetBar.targetHealthValue:SetPoint("BOTTOM", JSHB.F.TargetBar, "BOTTOM", 1 + JSHB.db.profile.targetbar.healthfontoffset, (JSHB.db.profile.targetbar.shotbar == true) and 2 or 0)
			else
				JSHB.F.TargetBar.targetHealthValue:SetJustifyH("LEFT")
				JSHB.F.TargetBar.targetHealthValue:SetPoint("LEFT", JSHB.F.TargetBar, "LEFT", 1 + JSHB.db.profile.targetbar.healthfontoffset, (JSHB.db.profile.targetbar.shotbar == true) and 2 or 0)
			end
			
			JSHB.F.TargetBar.targetHealthValue:SetFont(JSHB.GetActiveFont(JSHB.db.profile.targetbar.healthfont) )
			JSHB.F.TargetBar.targetHealthValue:SetText("")
			JSHB.F.TargetBar.targetHealthValue:Show()
		elseif JSHB.F.TargetBar.targetHealthValue then
			JSHB.F.TargetBar.targetHealthValue:Hide()
		end
		
		-- Register Events to support the bar
		JSHB.F.TargetBar:RegisterEvent("UNIT_HEALTH_FREQUENT")
		JSHB.F.TargetBar:RegisterEvent("UNIT_MAXHEALTH")
		JSHB.F.TargetBar:RegisterEvent("PLAYER_TARGET_CHANGED")

		JSHB.F.TargetBar:SetScript("OnEvent",
			function(self, event, ...)
			    local timestamp, eventtype, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags = ...
				
				if (event == "UNIT_MAXHEALTH") then
					self:SetMinMaxValues(0, UnitHealthMax("target") )
				elseif (event == "PLAYER_TARGET_CHANGED") then
					--self:SetMinMaxValues(0, UnitHealthMax("target") )
					JSHB.SetupTargetBarModule()
				elseif (event == "PLAYER_SPECIALIZATION_CHANGED") then
					JSHB.SetupTargetBarModule()
				end
			end)
		
		-- Setup the script for handling the bar
		JSHB.F.TargetBar.updateTimer = 0
		JSHB.F.TargetBar:SetScript("OnUpdate", 
			function(self, elapsed)
				self.updateTimer = self.updateTimer + elapsed
				if self.updateTimer < TARGETBAR_UPDATEINTERVAL then return else self.updateTimer = 0 end
		
				-- Overrides take precidence over normal alpha
				if C_PetBattles.IsInBattle() then
					self:SetAlpha(0) -- Hide for pet battles
				elseif JSHB.db.profile.targetbar.deadoverride and UnitIsDeadOrGhost("player") then
					self:SetAlpha(JSHB.db.profile.targetbar.deadoverridealpha)
				elseif JSHB.db.profile.targetbar.mountoverride and (IsMounted() or UnitHasVehicleUI("player") ) and (UnitBuff("player", "Telaari Talbuk") == nil) and (UnitBuff("player", "Frostwolf War Wolf") == nil) and (UnitBuff("player", "Rune of Grasping Earth") == nil) then
					self:SetAlpha(JSHB.db.profile.targetbar.mountoverridealpha)
				elseif JSHB.db.profile.targetbar.oocoverride and (not InCombatLockdown() ) then
					self:SetAlpha(JSHB.db.profile.targetbar.oocoverridealpha)
				elseif (UnitHealth("target") ~= UnitHealthMax("target") ) then
					self:SetAlpha(JSHB.db.profile.targetbar.activealpha)
				else
					self:SetAlpha(JSHB.db.profile.targetbar.inactivealpha)
				end
				
				-- Handle status bar updating
				self:SetValue(UnitHealth("target") )
				
				if (JSHB.db.profile.targetbar.healthnumber and self.value) then
					if JSHB.db.profile.targetbar.abbreviatenumber then
						local targetHP = JSHB.AbbreviateNumber(UnitHealth("target"))
						self.value:SetText(targetHP)
					else
						self.value:SetText(UnitHealth("target") )
					end
				end

				self:SetStatusBarColor(unpack(getBarColor()) )
				
				-- Handle Target Health Percentage
				if JSHB.db.profile.targetbar.targethealth then
					if (not UnitExists("target") ) or (UnitIsDeadOrGhost("target") ) then 
						self.targetHealthValue:SetText("")
					else
						if ( (UnitHealth("target") / UnitHealthMax("target") ) >= .9) then
							self.targetHealthValue:SetFormattedText("|cffffff00%d %%|r", (UnitHealth("target") / UnitHealthMax("target") ) * 100)						
						elseif  JSHB.db.profile.targetbar.lowwarn and ((UnitHealth("target") / UnitHealthMax("target")) <= JSHB.db.profile.targetbar.lowwarnthreshold) then
							self.targetHealthValue:SetFormattedText("|cffffffff%d %%|r", (UnitHealth("target") / UnitHealthMax("target") ) * 100)						
						else
							self.targetHealthValue:SetFormattedText("|cffff0000%d %%|r", (UnitHealth("target") / UnitHealthMax("target") ) * 100)
						end
					end
				end
				
			end)
		JSHB.F.TargetBar:Show()
	end
end