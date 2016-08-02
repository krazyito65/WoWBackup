﻿--
-- JSHB Hunter - resource bar module
--

if (select(2, UnitClass("player")) ~= "HUNTER") then return end

-- Cache
local select, UnitAura = select, UnitAura
local _

local playerHasT13Bonus = false

--	Check how many tier 13 items we have on
local playerSetBonusHandlerForT13 = CreateFrame("Frame", "JSHB_T13BONUSHANDLER")
local t13ItemsFound = 0
local t13ItemID
local function CheckPlayerHasT13Bonus()
	-- Tier 13 2 piece bonus
	-- Hands
	t13ItemsFound = 0
	t13ItemID = GetInventoryItemID("player", 10)
	if (t13ItemID and ( (t13ItemID == 78769) or (t13ItemID == 77029) or (t13ItemID == 78674) ) ) then
		t13ItemsFound = t13ItemsFound + 1
	end
	-- Shoulders
	t13ItemID = GetInventoryItemID("player", 3)
	if (t13ItemID and ( (t13ItemID == 78832) or (t13ItemID == 77032) or (t13ItemID == 78737) ) ) then
		t13ItemsFound = t13ItemsFound + 1
	end
	-- Chest
	t13ItemID = GetInventoryItemID("player", 5)
	if (t13ItemID and ( (t13ItemID == 78756) or (t13ItemID == 77028) or (t13ItemID == 78661) ) ) then
		t13ItemsFound = t13ItemsFound + 1
	end
	-- Legs
	t13ItemID = GetInventoryItemID("player", 7)
	if (t13ItemID and ( (t13ItemID == 78804) or (t13ItemID == 77031) or (t13ItemID == 78709) ) ) then
		t13ItemsFound = t13ItemsFound + 1
	end
	-- Head
	t13ItemID = GetInventoryItemID("player", 1)
	if (t13ItemID and ( (t13ItemID == 78793) or (t13ItemID == 77030) or (t13ItemID == 78698) ) ) then
		t13ItemsFound = t13ItemsFound + 1
	end
	
	playerHasT13Bonus = (t13ItemsFound > 1) and true or false
end

if (select(2, UnitClass("player") ) == "HUNTER") then
	playerSetBonusHandlerForT13:SetScript("OnEvent", function(self, event, ...) CheckPlayerHasT13Bonus() end)
	playerSetBonusHandlerForT13:RegisterEvent("UNIT_INVENTORY_CHANGED")
end

-- Prediction of new value for focus based on talents and items
local adjustment = 0
local function getPredictionAdjustment()
	adjustment = 0
	-- Account for the T13 2-Piece bonus
	if playerHasT13Bonus then
		adjustment = adjustment + JSHB.GetBaseFocus()
	end
	return (adjustment)
end

local name1, cost1, tColor1, tCost1
local function getBarColor(incPrediction)

	local powerType = UnitPowerType("player")
		
	if (not incPrediction) then incPrediction = 0 end

	-- power colored is turned on
	if JSHB.db.profile.resourcebar.powercolored then
		-- high warning conditions
		if JSHB.db.profile.resourcebar.highwarn and ( ( (UnitPower("player") + incPrediction) / UnitPowerMax("player") ) >= JSHB.db.profile.resourcebar.highwarnthreshold) then
			-- class colored but over high threshold
			return JSHB.db.profile.resourcebar.barcolorhigh
		elseif JSHB.db.profile.resourcebar.lowwarn and ( (UnitPower("player") + incPrediction) < JSHB.GetMainSpellCost() ) then
			-- Focus is lower than main shot
			return JSHB.db.profile.resourcebar.barcolorlow
		else
			-- Tick coloring overrides the norm bar color but not high/low warnings
			if (JSHB.db.profile.resourcebar.ticks[1][1] == true) and (JSHB.F.ResourceBar["indicatorTick1"]) then
			
				tColor1, tCost1 = false, 0
				for i=1,5 do
					if (JSHB.db.profile.resourcebar.ticks[i][1] == true) and (JSHB.F.ResourceBar["indicatorTick"..i]) and (JSHB.db.profile.resourcebar.ticks[i][4] == true) then
						if (i > 1) then
							name1 = select(1, GetSpellInfo(JSHB.db.profile.resourcebar.ticks[i][2]))
							cost1 = JSHB.GetSpellFocusCost(name1)
						end
						if (i == 1) or ( (i > 1) and name1 and cost1 and (cost1 > 0) ) then						
							if (i == 1) then
								if (UnitPower("player") >= JSHB.GetMainSpellCost() ) then							
									tCost1 = JSHB.GetMainSpellCost()
									tColor1 = JSHB.db.profile.resourcebar.ticks[i][5]
								end								
							elseif (JSHB.db.profile.resourcebar.ticks[i][3] == true) and (UnitPower("player") >= (JSHB.GetMainSpellCost() + cost1) ) and ( (JSHB.GetMainSpellCost() + cost1) > tCost1) then							
								tCost1 = JSHB.GetMainSpellCost() + cost1
								tColor1 = JSHB.db.profile.resourcebar.ticks[i][5]								
							elseif (UnitPower("player") >= cost1) and (cost1 > tCost1) and (cost1 > tCost1) and (JSHB.db.profile.resourcebar.ticks[i][3] ~= true) then							
								tCost1 = cost1
								tColor1 = JSHB.db.profile.resourcebar.ticks[i][5]
							end
						end					
					end
				end
				
				if (tColor1 ~= false) then
					return tColor1
				else
					return { PowerBarColor[powerType].r, PowerBarColor[powerType].g, PowerBarColor[powerType].b, 1 }
				end
			else
				-- class colored not over high threshold or high threshold is turned off
				return { PowerBarColor[powerType].r, PowerBarColor[powerType].g, PowerBarColor[powerType].b, 1 }
			end
		end
		
	-- class colored is turned on
	elseif JSHB.db.profile.resourcebar.classcolored then
		-- high warning conditions
		if JSHB.db.profile.resourcebar.highwarn and ( ( (UnitPower("player") + incPrediction) / UnitPowerMax("player") ) >= JSHB.db.profile.resourcebar.highwarnthreshold) then
			-- class colored but over high threshold
			return JSHB.db.profile.resourcebar.barcolorhigh
		elseif JSHB.db.profile.resourcebar.lowwarn and ( (UnitPower("player") + incPrediction) < JSHB.GetMainSpellCost() ) then
			-- Focus is lower than main shot
			return JSHB.db.profile.resourcebar.barcolorlow
		else
			-- Tick coloring overrides the norm bar color but not high/low warnings
			if (JSHB.db.profile.resourcebar.ticks[1][1] == true) and (JSHB.F.ResourceBar["indicatorTick1"]) then
			
				tColor1, tCost1 = false, 0
				for i=1,5 do
					if (JSHB.db.profile.resourcebar.ticks[i][1] == true) and (JSHB.F.ResourceBar["indicatorTick"..i]) and (JSHB.db.profile.resourcebar.ticks[i][4] == true) then
						if (i > 1) then
							name1 = select(1, GetSpellInfo(JSHB.db.profile.resourcebar.ticks[i][2]))
							cost1 = JSHB.GetSpellFocusCost(name1)
						end
						if (i == 1) or ( (i > 1) and name1 and cost1 and (cost1 > 0) ) then						
							if (i == 1) then
								if (UnitPower("player") >= JSHB.GetMainSpellCost() ) then							
									tCost1 = JSHB.GetMainSpellCost()
									tColor1 = JSHB.db.profile.resourcebar.ticks[i][5]
								end								
							elseif (JSHB.db.profile.resourcebar.ticks[i][3] == true) and (UnitPower("player") >= (JSHB.GetMainSpellCost() + cost1) ) and ( (JSHB.GetMainSpellCost() + cost1) > tCost1) then							
								tCost1 = JSHB.GetMainSpellCost() + cost1
								tColor1 = JSHB.db.profile.resourcebar.ticks[i][5]								
							elseif (UnitPower("player") >= cost1) and (cost1 > tCost1) and (cost1 > tCost1) and (JSHB.db.profile.resourcebar.ticks[i][3] ~= true) then							
								tCost1 = cost1
								tColor1 = JSHB.db.profile.resourcebar.ticks[i][5]
							end
						end					
					end
				end
				
				if (tColor1 ~= false) then
					return tColor1
				else
					return { RAID_CLASS_COLORS[JSHB.playerClass].r, RAID_CLASS_COLORS[JSHB.playerClass].g, RAID_CLASS_COLORS[JSHB.playerClass].b, 1 }
				end
			else
				-- class colored not over high threshold or high threshold is turned off
				return { RAID_CLASS_COLORS[JSHB.playerClass].r, RAID_CLASS_COLORS[JSHB.playerClass].g, RAID_CLASS_COLORS[JSHB.playerClass].b, 1 }
			end
		end

	-- class colored is not turned on
	elseif JSHB.db.profile.resourcebar.highwarn and ( ( (UnitPower("player") + incPrediction) / UnitPowerMax("player") ) >= JSHB.db.profile.resourcebar.highwarnthreshold) then
		-- over the threshold enabled, set to the high warning color	
		return JSHB.db.profile.resourcebar.barcolorhigh
	elseif JSHB.db.profile.resourcebar.lowwarn and ( (UnitPower("player") + incPrediction) < JSHB.GetMainSpellCost() ) then
		-- Focus is lower than main shot
		return JSHB.db.profile.resourcebar.barcolorlow
	else
		-- Tick coloring overrides the norm bar color but not high/low warnings
		if (JSHB.db.profile.resourcebar.ticks[1][1] == true) and (JSHB.F.ResourceBar["indicatorTick1"]) then
			tColor1, tCost1 = false, 0
			for i=1,5 do
				if (JSHB.db.profile.resourcebar.ticks[i][1] == true) and (JSHB.F.ResourceBar["indicatorTick"..i]) and (JSHB.db.profile.resourcebar.ticks[i][4] == true) then
					
					if (i > 1) then
						name1 = JSHB.db.profile.resourcebar.ticks[i][2]
						cost1 = JSHB.GetSpellFocusCost(name1)
					end
					if (i == 1) or ( (i > 1) and name1 and cost1 and (cost1 > 0) ) then					
						if (i == 1) then
							if (UnitPower("player") >= JSHB.GetMainSpellCost() ) then						
								tCost1 = JSHB.GetMainSpellCost()
								tColor1 = JSHB.db.profile.resourcebar.ticks[i][5]
							end							
						elseif (JSHB.db.profile.resourcebar.ticks[i][3] == true) and (UnitPower("player") >= (JSHB.GetMainSpellCost() + cost1) ) and ( (JSHB.GetMainSpellCost() + cost1) > tCost1) then						
							tCost1 = JSHB.GetMainSpellCost() + cost1
							tColor1 = JSHB.db.profile.resourcebar.ticks[i][5]							
						elseif (UnitPower("player") >= cost1) and (cost1 > tCost1) and (JSHB.db.profile.resourcebar.ticks[i][3] ~= true) then						
							tCost1 = cost1
							tColor1 = JSHB.db.profile.resourcebar.ticks[i][5]
						end
					end					
				end
			end
			
			if (tColor1 ~= false) then
				return tColor1
			else
				return JSHB.db.profile.resourcebar.barcolor
			end
		else
			-- class colored not over high threshold or high threshold is turned off
			return JSHB.db.profile.resourcebar.barcolor
		end
	end
end

local newPrediction1, barColor1
local function updatePrediction()

	if JSHB.db.profile.resourcebar.enableprediction and JSHB.F.ResourceBar.playerIsCasting then
		-- Add values if AotF active and talent points, and Termination points, etc...
		newPrediction1 = JSHB.GetBaseFocus() + getPredictionAdjustment()
		barColor1 = getBarColor(newPrediction1)
		
		if (JSHB.db.profile.resourcebar.orientation == "vertical") then
			JSHB.F.ResourceBar.PredictionFrame:SetSize(JSHB.F.ResourceBar:GetWidth(), ((JSHB.F.ResourceBar:GetHeight() / 100) * newPrediction1) )
			JSHB.F.ResourceBar.PredictionFrame:ClearAllPoints()
			JSHB.F.ResourceBar.PredictionFrame:SetPoint("BOTTOM", JSHB.F.ResourceBar, "BOTTOM", 0, JSHB.F.ResourceBar:GetHeight() / (select(2, JSHB.F.ResourceBar:GetMinMaxValues() ) / JSHB.F.ResourceBar:GetValue() ) )
		else
			JSHB.F.ResourceBar.PredictionFrame:SetSize( (JSHB.F.ResourceBar:GetWidth() / 100) * newPrediction1, JSHB.F.ResourceBar:GetHeight() )
			JSHB.F.ResourceBar.PredictionFrame:ClearAllPoints()
			JSHB.F.ResourceBar.PredictionFrame:SetPoint("LEFT", JSHB.F.ResourceBar, "LEFT", JSHB.F.ResourceBar:GetWidth() / (select(2, JSHB.F.ResourceBar:GetMinMaxValues() ) / JSHB.F.ResourceBar:GetValue() ), 0)
		end
		
		if (UnitPower("player") + newPrediction1) > UnitPowerMax("player") then
			if (JSHB.db.profile.resourcebar.orientation == "vertical") then
				JSHB.F.ResourceBar.PredictionFrame:SetSize(JSHB.F.ResourceBar:GetWidth(), ((JSHB.F.ResourceBar:GetHeight() / 100) * (UnitPowerMax("player") - UnitPower("player"))) )
			else
				JSHB.F.ResourceBar.PredictionFrame:SetSize( ((JSHB.F.ResourceBar:GetWidth() / 100) * (UnitPowerMax("player") - UnitPower("player") )), JSHB.F.ResourceBar:GetHeight() )
			end
		end
		
		JSHB.F.ResourceBar.PredictionFrame:SetStatusBarColor(barColor1[1], barColor1[2], barColor1[3], 1)
		
		if ( (UnitPowerMax("player") - UnitPower("player") ) > 0) and (not UnitIsDeadOrGhost("player") ) then
			JSHB.F.ResourceBar.PredictionFrame:SetAlpha(JSHB.F.ResourceBar:GetAlpha() * 0.6)
			JSHB.F.ResourceBar.PredictionFrame:Show()
		else
			JSHB.F.ResourceBar.PredictionFrame:Hide()
		end
	end
end

function JSHB.SetupResourceBarModule()

	-- Destruction
	local ii = 1
	if JSHB.F.StackBars then
		while (JSHB.F.StackBars[ii] ~= nil) do
			JSHB.F.StackBars[ii]:Hide()
			JSHB.F.StackBars[ii]:UnregisterAllEvents()
			JSHB.F.StackBars[ii]:SetScript("OnUpdate", nil)
			JSHB.F.StackBars[ii]:SetParent(nil)
			ii = ii + 1
		end
	end
	
	if JSHB.F.StackBarsHost then
		JSHB.F.StackBarsHost:Hide()
		JSHB.DeregisterMovableFrame("MOVER_STACKBARS")
		JSHB.F.StackBarsHost:SetParent(nil)
	end
	
	if JSHB.F.ResourceBar then
		JSHB.F.ResourceBar:Hide()
		JSHB.F.ResourceBar:SetScript("OnUpdate", nil)
		JSHB.F.ResourceBar:SetScript("OnEvent", nil)
		JSHB.F.ResourceBar:UnregisterAllEvents()
		if JSHB.F.ResourceBar.autoShotFrame then
			JSHB.F.ResourceBar.autoShotFrame:SetScript("OnUpdate", nil)
			if JSHB.F.ResourceBar.autoShotFrame.smoother then
				JSHB.RemoveSmooth(JSHB.F.ResourceBar.autoShotFrame)
			end
		end
		if JSHB.F.ResourceBar.smoother then
			JSHB.RemoveSmooth(JSHB.F.ResourceBar)
		end
		JSHB.DeregisterMovableFrame("MOVER_RESOURCEBAR")
		JSHB.F.ResourceBar:SetParent(nil)
	end
		
	-- Construction
	if JSHB.db.profile.resourcebar.enabled then

		local RESOURCEBAR_UPDATEINTERVAL = 0.07

		-- Create the Frame
		JSHB.F.ResourceBar = JSHB.MakeFrame(JSHB.F.ResourceBar, "StatusBar", "JSHB_RESOURCEBAR", JSHB.db.profile.resourcebar.anchor[2] or UIParent)
		
		if (JSHB.db.profile.resourcebar.orientation == "vertical") then
			JSHB.F.ResourceBar:SetOrientation("VERTICAL")
			JSHB.F.ResourceBar:SetRotatesTexture(true)
		end
		
		JSHB.F.ResourceBar:SetParent(JSHB.db.profile.resourcebar.anchor[2] or UIParent)
		JSHB.F.ResourceBar:ClearAllPoints()
		JSHB.F.ResourceBar:SetStatusBarTexture(JSHB.GetActiveTextureFile(JSHB.db.profile.resourcebar.bartexture) )
		JSHB.F.ResourceBar:SetMinMaxValues(0, (UnitPowerMax("player") > 0) and UnitPowerMax("player") or 100)	

		if (JSHB.db.profile.resourcebar.powercolored) then
			local powerType = UnitPowerType("player")
			JSHB.F.ResourceBar:SetStatusBarColor(unpack({ PowerBarColor[powerType].r, PowerBarColor[powerType].g, PowerBarColor[powerType].b, 1}))
		else
			JSHB.F.ResourceBar:SetStatusBarColor(JSHB.db.profile.resourcebar.classcolored and (unpack({ RAID_CLASS_COLORS[JSHB.playerClass].r, RAID_CLASS_COLORS[JSHB.playerClass].g, RAID_CLASS_COLORS[JSHB.playerClass].b, 1}) ) or unpack(JSHB.db.profile.resourcebar.barcolor) )
		end
		
		JSHB.F.ResourceBar:SetSize(JSHB.db.profile.resourcebar.width, JSHB.db.profile.resourcebar.height)
		JSHB.F.ResourceBar:SetPoint(JSHB.GetActiveAnchor(JSHB.db.profile.resourcebar.anchor) )
		JSHB.F.ResourceBar:SetAlpha(0)
		JSHB.F.ResourceBar:SetValue(UnitPower("player") )
		
		-- Create the Background and border if the user wants one
		if JSHB.db.profile.resourcebar.stacksretro then -- 3.7 for retro stack bars
			local sizeOverrides = {
				0, -- left
				0, -- right
				(JSHB.db.profile.resourcebar.stacksretroontop and 10 or 0),	-- top
				(JSHB.db.profile.resourcebar.stacksretroontop and 0 or -10),-- bottom
			}
			JSHB.F.ResourceBar.backgroundRetro = JSHB.MakeBackground(JSHB.F.ResourceBar, JSHB.db.profile.resourcebar, nil, sizeOverrides, JSHB.F.ResourceBar.backgroundRetro)
			JSHB.F.ResourceBar.backgroundRetro:Hide()
		elseif JSHB.F.ResourceBar.backgroundRetro then
			JSHB.F.ResourceBar.backgroundRetro:Hide()
		end
		JSHB.F.ResourceBar.background = JSHB.MakeBackground(JSHB.F.ResourceBar, JSHB.db.profile.resourcebar, nil, nil, JSHB.F.ResourceBar.background)

		JSHB.RegisterMovableFrame(
			"MOVER_RESOURCEBAR",
			JSHB.F.ResourceBar,
			JSHB.F.ResourceBar,
			JSHB.L["Resource Bar"],
			JSHB.db.profile.resourcebar,
			JSHB.SetupResourceBarModule,
			JSHB.defaults.profile.resourcebar,
			JSHB.db.profile.resourcebar
		)
		
		if JSHB.db.profile.resourcebar.smoothbar then
			JSHB.MakeSmooth(JSHB.F.ResourceBar)
		end
		
		if JSHB.db.profile.resourcebar.resourcenumber then
			JSHB.F.ResourceBar.value = JSHB.F.ResourceBar.value or JSHB.F.ResourceBar:CreateFontString(nil, "OVERLAY")
			JSHB.F.ResourceBar.value:ClearAllPoints()
			JSHB.F.ResourceBar.value:SetJustifyH("CENTER")
			JSHB.F.ResourceBar.value:SetPoint("CENTER", JSHB.F.ResourceBar, "CENTER", JSHB.db.profile.resourcebar.resourcefontoffset, (JSHB.db.profile.resourcebar.shotbar == true) and 2 or 0)
			JSHB.F.ResourceBar.value:SetFont(JSHB.GetActiveFont(JSHB.db.profile.resourcebar.resourcefont) )
			JSHB.F.ResourceBar.value:SetTextColor(unpack(JSHB.db.profile.resourcebar.resourcefontcolor) )
			JSHB.F.ResourceBar.value:SetText(UnitPower("player") )
			JSHB.F.ResourceBar.value:Show()
		elseif JSHB.F.ResourceBar.value then
			JSHB.F.ResourceBar.value:Hide()
		end
		
		-- Setup target health text
		if JSHB.db.profile.resourcebar.targethealth then		
			JSHB.F.ResourceBar.targetHealthValue = JSHB.F.ResourceBar.targetHealthValue or JSHB.F.ResourceBar:CreateFontString(nil, "OVERLAY")
			JSHB.F.ResourceBar.targetHealthValue:ClearAllPoints()
			
			if (JSHB.db.profile.resourcebar.orientation == "vertical") then
				JSHB.F.ResourceBar.targetHealthValue:SetJustifyH("BOTTOM")
				JSHB.F.ResourceBar.targetHealthValue:SetPoint("BOTTOM", JSHB.F.ResourceBar, "BOTTOM", 1 + JSHB.db.profile.resourcebar.healthfontoffset, (JSHB.db.profile.resourcebar.shotbar == true) and 2 or 0)
			else
				JSHB.F.ResourceBar.targetHealthValue:SetJustifyH("LEFT")
				JSHB.F.ResourceBar.targetHealthValue:SetPoint("LEFT", JSHB.F.ResourceBar, "LEFT", 1 + JSHB.db.profile.resourcebar.healthfontoffset, (JSHB.db.profile.resourcebar.shotbar == true) and 2 or 0)
			end
			
			JSHB.F.ResourceBar.targetHealthValue:SetFont(JSHB.GetActiveFont(JSHB.db.profile.resourcebar.healthfont) )
			JSHB.F.ResourceBar.targetHealthValue:SetText("")
			JSHB.F.ResourceBar.targetHealthValue:Show()
		elseif JSHB.F.ResourceBar.targetHealthValue then
			JSHB.F.ResourceBar.targetHealthValue:Hide()
		end
		
		-- Setup prediction bar
		if JSHB.db.profile.resourcebar.enableprediction then		
			JSHB.F.ResourceBar.PredictionFrame = JSHB.F.ResourceBar.PredictionFrame or CreateFrame("StatusBar", nil, JSHB.F.ResourceBar)
			JSHB.F.ResourceBar.PredictionFrame:SetParent(JSHB.F.ResourceBar)
			JSHB.F.ResourceBar.PredictionFrame:ClearAllPoints()
			JSHB.F.ResourceBar.PredictionFrame:SetStatusBarTexture(JSHB.F.ResourceBar:GetStatusBarTexture():GetTexture() ) -- Use the main bar's texture
			JSHB.F.ResourceBar.PredictionFrame:SetMinMaxValues(0, 1)
			JSHB.F.ResourceBar.PredictionFrame:SetValue(1)
			JSHB.F.ResourceBar.PredictionFrame:SetFrameLevel(JSHB.F.ResourceBar:GetFrameLevel() )
	
			if (JSHB.db.profile.resourcebar.orientation == "vertical") then
				JSHB.F.ResourceBar.PredictionFrame:SetOrientation("VERTICAL")
				JSHB.F.ResourceBar.PredictionFrame:SetRotatesTexture(true)
				JSHB.F.ResourceBar.PredictionFrame:SetSize(JSHB.F.ResourceBar:GetWidth(), (JSHB.F.ResourceBar:GetHeight() / 100) * (JSHB.GetBaseFocus() + getPredictionAdjustment() ))
			else
				JSHB.F.ResourceBar.PredictionFrame:SetSize( (JSHB.F.ResourceBar:GetWidth() / 100) * (JSHB.GetBaseFocus() + getPredictionAdjustment() ), JSHB.F.ResourceBar:GetHeight() )
			end
			
			JSHB.F.ResourceBar.PredictionFrame:Hide()
		elseif JSHB.F.ResourceBar.PredictionFrame then
			JSHB.F.ResourceBar.PredictionFrame:Hide()
		end
		
		-- Setup Auto shot bar
		if JSHB.db.profile.resourcebar.shotbar then
			JSHB.F.ResourceBar.autoShotFrame = JSHB.F.ResourceBar.autoShotFrame or CreateFrame("StatusBar", nil, JSHB.F.ResourceBar)
			JSHB.F.ResourceBar.autoShotFrame:SetParent(JSHB.F.ResourceBar)
			JSHB.F.ResourceBar.autoShotFrame:ClearAllPoints()		
			JSHB.F.ResourceBar.autoShotFrame:SetStatusBarTexture(JSHB.F.ResourceBar:GetStatusBarTexture():GetTexture() ) -- Use the main bar's texture
			JSHB.F.ResourceBar.autoShotFrame:SetMinMaxValues(0, UnitRangedDamage("player") * 100)
			
			if (JSHB.db.profile.resourcebar.orientation == "vertical") then
				JSHB.F.ResourceBar.autoShotFrame:SetOrientation("VERTICAL")
				JSHB.F.ResourceBar.autoShotFrame:SetPoint("BOTTOMRIGHT", JSHB.F.ResourceBar, "BOTTOMRIGHT", 0, 0)
				JSHB.F.ResourceBar.autoShotFrame:SetSize(3, JSHB.F.ResourceBar:GetHeight())
			else
				JSHB.F.ResourceBar.autoShotFrame:SetPoint("BOTTOMLEFT", JSHB.F.ResourceBar, "BOTTOMLEFT", 0, 0)
				JSHB.F.ResourceBar.autoShotFrame:SetSize(JSHB.F.ResourceBar:GetWidth(), 3)
			end
			
			JSHB.F.ResourceBar.autoShotFrame:SetValue(UnitRangedDamage("player") )
			JSHB.F.ResourceBar.autoShotFrame:SetFrameLevel(JSHB.F.ResourceBar:GetFrameLevel() + 1)		
			JSHB.F.ResourceBar.autoShotFrame:SetStatusBarColor(unpack(JSHB.db.profile.resourcebar.shotbarcolor) )
			
			if JSHB.db.profile.resourcebar.smoothbarshotbar then
				JSHB.MakeSmooth(JSHB.F.ResourceBar.autoShotFrame)
			end
			
			JSHB.F.ResourceBar.autoShotFrame.updateTimer = 0
			JSHB.F.ResourceBar.autoShotFrame:SetScript("OnUpdate", function(self, elapsed)
				self.updateTimer = self.updateTimer + elapsed
				if self.updateTimer <= 0.015 then return else self.updateTimer = 0 end
				self.updateTimer = 0
				if (GetTime() < self:GetParent().autoShotEndTime) then
					self:SetValue( (UnitRangedDamage("player") * 100) - ( (self:GetParent().autoShotEndTime * 100) - (GetTime() * 100) ) )
				else
					self:SetValue(0)
					self:Hide()
				end
			end)
		elseif JSHB.F.ResourceBar.autoShotFrame then
			JSHB.F.ResourceBar.autoShotFrame:Hide()
		end
		
		-- Setup Auto shot time
		if JSHB.db.profile.resourcebar.shottimer then
			JSHB.F.ResourceBar.autoShotValue = JSHB.F.ResourceBar.autoShotValue or JSHB.F.ResourceBar:CreateFontString(nil, "OVERLAY")
			JSHB.F.ResourceBar.autoShotValue:ClearAllPoints()
			JSHB.F.ResourceBar.autoShotValue:SetFont(JSHB.GetActiveFont(JSHB.db.profile.resourcebar.shottimerfont) )
			JSHB.F.ResourceBar.autoShotValue:SetTextColor(unpack(JSHB.db.profile.resourcebar.shottimerfontcolor) )
			
			if (JSHB.db.profile.resourcebar.orientation == "vertical") then
				JSHB.F.ResourceBar.autoShotValue:SetPoint("TOPRIGHT", JSHB.F.ResourceBar, "TOPRIGHT", 1  + JSHB.db.profile.resourcebar.shottimerfontoffset, 1)
				JSHB.F.ResourceBar.autoShotValue:SetJustifyH("TOP")
			else
				JSHB.F.ResourceBar.autoShotValue:SetPoint("BOTTOMRIGHT", JSHB.F.ResourceBar, "BOTTOMRIGHT", 1  + JSHB.db.profile.resourcebar.shottimerfontoffset, 1)
				JSHB.F.ResourceBar.autoShotValue:SetJustifyH("BOTTOM")
			end			
			
			JSHB.F.ResourceBar.autoShotValue:Show()
		elseif JSHB.F.ResourceBar.autoShotValue then
			JSHB.F.ResourceBar.autoShotValue:Hide()
		end

		-- Setup Indicator marks
		local name, cost, icon
		for ii=1,5 do
			if (JSHB.db.profile.resourcebar.ticks[ii][1] == true) and ( (JSHB.db.profile.resourcebar.ticks[ii][6] == 0)
				or (JSHB.db.profile.resourcebar.ticks[ii][6] == GetActiveSpecGroup() ) ) and (JSHB.db.profile.resourcebar.ticks[1][1] == true) then
							
				if (ii > 1) then
					name = select(1, GetSpellInfo(JSHB.db.profile.resourcebar.ticks[ii][2]))
					cost = JSHB.GetSpellFocusCost(name)
				end
				
				if (ii == 1) or ( (ii > 1) and name and cost and (cost > 0) ) then
					JSHB.F.ResourceBar["indicatorTick"..ii] = JSHB.MakeFrame(JSHB.F.ResourceBar["indicatorTick"..ii], "Frame", "JSHB_RESOURCEBAR_TICK"..ii, JSHB.F.ResourceBar)
					JSHB.F.ResourceBar["indicatorTick"..ii]:SetParent(JSHB.F.ResourceBar)
					JSHB.F.ResourceBar["indicatorTick"..ii]:ClearAllPoints()
					
					if JSHB.db.profile.resourcebar.ticks[ii][7] == true then
						if (JSHB.db.profile.resourcebar.orientation == "vertical") then
							JSHB.F.ResourceBar["indicatorTick"..ii]:SetSize(JSHB.F.ResourceBar:GetWidth() * 1.1, 6)
						else
							JSHB.F.ResourceBar["indicatorTick"..ii]:SetSize(6, JSHB.F.ResourceBar:GetHeight() * 1.1)
						end
					else
						if (JSHB.db.profile.resourcebar.orientation == "vertical") then
							JSHB.F.ResourceBar["indicatorTick"..ii]:SetSize(JSHB.F.ResourceBar:GetWidth() * 1.6, 10)
						else
							JSHB.F.ResourceBar["indicatorTick"..ii]:SetSize(10, JSHB.F.ResourceBar:GetHeight() * 1.6)
						end
					end

					JSHB.F.ResourceBar["indicatorTick"..ii].tex = JSHB.F.ResourceBar["indicatorTick"..ii].tex or JSHB.F.ResourceBar["indicatorTick"..ii]:CreateTexture(nil, "OVERLAY")
					JSHB.F.ResourceBar["indicatorTick"..ii].tex:ClearAllPoints()
					JSHB.F.ResourceBar["indicatorTick"..ii].tex:SetAllPoints(JSHB.F.ResourceBar["indicatorTick"..ii])
					
					if (ii == 1) and (JSHB.db.profile.resourcebar.ticks[ii][7] == true) then
						icon = JSHB.GetMainSpellIcon()
					elseif (ii > 1) and (JSHB.db.profile.resourcebar.ticks[ii][7] == true) then
						icon = select(3, GetSpellInfo(name))
					else
						icon = "Interface\\CastingBar\\UI-CastingBar-Spark"
					end
					
					JSHB.F.ResourceBar["indicatorTick"..ii].tex:SetTexture(icon)
					JSHB.F.ResourceBar["indicatorTick"..ii].tex:SetBlendMode("ADD")
					JSHB.F.ResourceBar["indicatorTick"..ii]:SetAlpha(1)
					JSHB.F.ResourceBar["indicatorTick"..ii]:Hide()
					
				elseif JSHB.F.ResourceBar["indicatorTick"..ii] then
					JSHB.F.ResourceBar["indicatorTick"..ii]:Hide()
				end
			elseif JSHB.F.ResourceBar["indicatorTick"..ii] then
				JSHB.F.ResourceBar["indicatorTick"..ii]:Hide()
			end
		end
		
		-- Register Events to support the bar
		JSHB.F.ResourceBar:RegisterEvent("UNIT_SPELLCAST_START")
		JSHB.F.ResourceBar:RegisterEvent("UNIT_SPELLCAST_STOP")
		JSHB.F.ResourceBar:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
		JSHB.F.ResourceBar:RegisterEvent("UNIT_SPELLCAST_FAILED")
		JSHB.F.ResourceBar:RegisterEvent("UNIT_MAXPOWER")
		JSHB.F.ResourceBar:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED")
		JSHB.F.ResourceBar.autoShotStartTime = 0
		JSHB.F.ResourceBar.autoShotEndTime = 0
		JSHB.F.ResourceBar:SetScript("OnEvent", function(self, event, ...)
			self.sourceUnit1, self._, self._, self._, self.spellId1 = ...

			if (event == "UNIT_SPELLCAST_START") and JSHB.db.profile.resourcebar.enableprediction then
			
				if (self.sourceUnit1 == "player") then						
					if (self.spellId1  == 56641) or (self.spellId1 == 77767) or (self.spellId1 == 163485) or (self.spellId1 == 152245) then -- Steady Shot / Cobra Shot / Focusing Shot
						self.playerIsCasting = true
						updatePrediction()
					end
				end
			
			elseif (event == "UNIT_SPELLCAST_SUCCEEDED") and (self.spellId1 == 75) and (JSHB.db.profile.resourcebar.shotbar or JSHB.db.profile.resourcebar.shottimer) then -- Auto shot
			
				self.autoShotStartTime = GetTime()
				self.autoShotEndTime = self.autoShotStartTime + UnitRangedDamage("player")

				if JSHB.db.profile.resourcebar.shotbar then
					self.autoShotFrame:Show()
				end

				if JSHB.db.profile.resourcebar.shottimer then
					self.autoShotValue:SetFormattedText("%.1f", self.autoShotEndTime - GetTime() ) -- "%.1f"
				end
			
			elseif (event == "UNIT_MAXPOWER") then
			
				self:SetMinMaxValues(0, UnitPowerMax("player") )
			
			elseif (event == "UNIT_SPELLCAST_STOP") or (event == "UNIT_SPELLCAST_FAILED") then
			
				if ( (self.spellId1 == 56641) or (self.spellId1 == 77767) or (self.spellId1 == 163485) or (self.spellId1 == 152245) ) and JSHB.db.profile.resourcebar.enableprediction then -- Steady Shot / Cobra Shot / Focusing Shot
					self.playerIsCasting = nil					
					self.PredictionFrame:Hide()
				end
				
			elseif (event == "PLAYER_SPECIALIZATION_CHANGED") then
				JSHB.SetupResourceBarModule()
			end
		end)
		
		-- Setup the script for handling the bar
		JSHB.F.ResourceBar.updateTimer = 0
		JSHB.F.ResourceBar.doPrediction = (select(2, UnitClass("player") ) == "HUNTER") and true or nil
		JSHB.F.ResourceBar:SetScript("OnUpdate", function(self, elapsed)
		
			self.updateTimer = self.updateTimer + elapsed
			
			if self.updateTimer < RESOURCEBAR_UPDATEINTERVAL then return else self.updateTimer = 0 end
		
			-- Overrides take precidence over normal alpha
			if C_PetBattles.IsInBattle() then
				self:SetAlpha(0) -- Hide for pet battles
			elseif JSHB.db.profile.resourcebar.deadoverride and UnitIsDeadOrGhost("player") then			
				self:SetAlpha(JSHB.db.profile.resourcebar.deadoverridealpha)
			elseif JSHB.db.profile.resourcebar.mountoverride and (IsMounted() or UnitHasVehicleUI("player") ) and (UnitBuff("player", "Telaari Talbuk") == nil) and (UnitBuff("player", "Frostwolf War Wolf") == nil) and (UnitBuff("player", "Rune of Grasping Earth") == nil) then
				self:SetAlpha(JSHB.db.profile.resourcebar.mountoverridealpha)
			elseif JSHB.db.profile.resourcebar.oocoverride and (not InCombatLockdown() ) then			
				self:SetAlpha(JSHB.db.profile.resourcebar.oocoverridealpha)				
			elseif (UnitPower("player") ~= UnitPowerMax("player") ) then			
				self:SetAlpha(JSHB.db.profile.resourcebar.activealpha)
			else			
				self:SetAlpha(JSHB.db.profile.resourcebar.inactivealpha)
			end
			
			-- Handle status bar updating
			self:SetValue(UnitPower("player") )
			
			if (JSHB.db.profile.resourcebar.resourcenumber and self.value) then
				self.value:SetText(UnitPower("player") )
			end

			self:SetStatusBarColor(unpack(getBarColor() ) )

			-- Update the prediction bar, if enabled (Only suppors Hunters right now)
			if self.doPrediction then updatePrediction() end
			
			-- Update Shot time
			if JSHB.db.profile.resourcebar.shottimer then
				if (not UnitIsDeadOrGhost("player") ) and (GetTime() < self.autoShotEndTime) and InCombatLockdown() then
					self.autoShotValue:SetFormattedText("%.1f", self.autoShotEndTime - GetTime() )
				else
					self.autoShotValue:SetText("")
				end
			end

			-- Handle Target Health Percentage
			if JSHB.db.profile.resourcebar.targethealth then
				if (not UnitExists("target") ) or (UnitIsDeadOrGhost("target") ) then 
					self.targetHealthValue:SetText("")
				else
					if ( (UnitHealth("target") / UnitHealthMax("target") ) >= .9) then -- or UnitAura("Rapid Fire")
						self.targetHealthValue:SetFormattedText("|cffffff00%d %%|r", (UnitHealth("target") / UnitHealthMax("target") ) * 100)						
					elseif (UnitHealth("target") / UnitHealthMax("target") >= JSHB.GetKillShotHP()) then
						self.targetHealthValue:SetFormattedText("|cffffffff%d %%|r", (UnitHealth("target") / UnitHealthMax("target") ) * 100)						
					else
						self.targetHealthValue:SetFormattedText("|cffff0000%d %%|r", (UnitHealth("target") / UnitHealthMax("target") ) * 100)
					end
				end
			end
			
			-- Handle indicator tick marks
			for i=1,5 do
				if (JSHB.db.profile.resourcebar.ticks[i][1] == true) and (self["indicatorTick"..i] ~= nil) and (JSHB.db.profile.resourcebar.ticks[1][1] == true) then
							
					if (i > 1) then
						self.name2 = select(1, GetSpellInfo(JSHB.db.profile.resourcebar.ticks[i][2]))
						self.cost2 = JSHB.GetSpellFocusCost(self.name2)
					end
					
					if (i == 1) or ( (i > 1) and self.name2 and self.cost2 and (self.cost2 > 0) ) then
						if (i == 1) then
							self["indicatorTick"..i]:ClearAllPoints()
							if (JSHB.db.profile.resourcebar.orientation == "vertical") then
								self["indicatorTick"..i]:SetPoint("BOTTOM", self, "BOTTOM", 0, JSHB.GetMainSpellCost() * (self:GetHeight() / select(2, self:GetMinMaxValues() ) ) - 5)
							else
								self["indicatorTick"..i]:SetPoint("LEFT", self, "LEFT", JSHB.GetMainSpellCost() * (self:GetWidth() / select(2, self:GetMinMaxValues() ) ) - 5, 0)
							end
						else
							self["indicatorTick"..i]:ClearAllPoints()
							if (JSHB.db.profile.resourcebar.orientation == "vertical") then
								self["indicatorTick"..i]:SetPoint("BOTTOM", self, "BOTTOM", 0, ( (JSHB.db.profile.resourcebar.ticks[i][3] == true) and (JSHB.GetMainSpellCost() + self.cost2) or self.cost2) * (self:GetHeight() / select(2, self:GetMinMaxValues() ) ) - 5)
							else
								self["indicatorTick"..i]:SetPoint("LEFT", self, "LEFT", ( (JSHB.db.profile.resourcebar.ticks[i][3] == true) and (JSHB.GetMainSpellCost() + self.cost2) or self.cost2) * (self:GetWidth() / select(2, self:GetMinMaxValues() ) ) - 5, 0)
							end
						end
						self["indicatorTick"..i]:Show()
					else
						self["indicatorTick"..i]:Hide()
					end
				end
			end
		end)
		JSHB.F.ResourceBar:Show()
	end
	
	-- Construct the Stacks indicator
	if (not JSHB.db.profile.resourcebar.enablestacks) then return end
	
	if (not JSHB.db.profile.resourcebar.enabled) and (JSHB.db.profile.resourcebar.embedstacks or JSHB.db.profile.resourcebar.stacksretro) then return end

	local STACKBARS_UPDATEINTERVAL = 0.1
	local numBars = 1
	local barSize = 0
	local checkFunction = function(self) return end
	local checkStacksFunction = function(self) return(0) end
	local checkProcFunction = function(self) return end
	local stackSize = 0

	-- Setup the host frame & mover if not embedded
	JSHB.F.StackBarsHost = JSHB.MakeFrame(JSHB.F.StackBarsHost, "Frame", "JSHB_STACKBARS_HOST", JSHB.db.profile.resourcebar.embedstacks and JSHB.F.ResourceBar or (JSHB.db.profile.resourcebar.anchor_stacks[2] or UIParent) )
	JSHB.F.StackBarsHost:SetParent(JSHB.db.profile.resourcebar.embedstacks and JSHB.F.ResourceBar or (JSHB.db.profile.resourcebar.anchor_stacks[2] or UIParent) )
	JSHB.F.StackBarsHost:ClearAllPoints()
	
	JSHB.stackBarOn = false

	-- Setup the check functions for various specs
	JSHB.F.StackBarsHost.stacks = nil
	JSHB.F.StackBarsHost.proc = nil
	
	local Check_FlashAtMax = function(self)
		JSHB.F.StackBarsHost.stacks = checkStacksFunction()
		if (not JSHB.db.profile.resourcebar.stacksretro) then -- New Style
		
			if JSHB.F.StackBarsHost.stacks >= self.barIndex then
				if (JSHB.F.StackBarsHost.stacks >= self.totalBars) then
					self:SetAlpha(1)
					return true
				else
					self:SetAlpha(1)
				end
			else
				self:SetAlpha(0)
			end
			
		else -- Retro Style
			if (JSHB.F.StackBarsHost.stacks == 0) then
				if JSHB.stackBarOn then
					if JSHB.F.ResourceBar and JSHB.F.ResourceBar.background then
						JSHB.F.ResourceBar.backgroundRetro:Hide()
						JSHB.F.ResourceBar.background:Show()
					end
					JSHB.stackBarOn = false
				end
				self:SetAlpha(0)
				return false
				
			elseif (JSHB.F.StackBarsHost.stacks > 0) and (not JSHB.stackBarOn) then
				if JSHB.F.ResourceBar and JSHB.F.ResourceBar.background then
					JSHB.F.ResourceBar.backgroundRetro:Show()
					JSHB.F.ResourceBar.background:Hide()
				end
				JSHB.stackBarOn = true
			end

			if (JSHB.F.StackBarsHost.stacks >= self.barIndex) then
				self.backdrop:SetTexture(0, .6, 0, 1) -- Green
				if (JSHB.F.StackBarsHost.stacks == numBars) then
					self:SetAlpha(1)
					return true
				end
			else
				self.backdrop:SetTexture(0, 0, 0, 1) -- Black
			end

			self:SetAlpha(1)
			return false	
		end
	end
	
	local Check_FlashNotMax = function(self)
		JSHB.F.StackBarsHost.stacks = checkStacksFunction()
		if (not JSHB.db.profile.resourcebar.stacksretro) then -- New Style
		
			if JSHB.F.StackBarsHost.stacks >= self.barIndex then
				if (JSHB.F.StackBarsHost.stacks >= self.totalBars) then
					self:SetAlpha(1)
				else
					self:SetAlpha(1)
					return true
				end
			else
				self:SetAlpha(0)
			end
			
		else -- Retro Style
			if (JSHB.F.StackBarsHost.stacks == 0) then
				if JSHB.stackBarOn then
					if JSHB.F.ResourceBar and JSHB.F.ResourceBar.background then
						JSHB.F.ResourceBar.backgroundRetro:Hide()
						JSHB.F.ResourceBar.background:Show()
					end
					JSHB.stackBarOn = false
				end
				self:SetAlpha(0)
				return false
				
			elseif (JSHB.F.StackBarsHost.stacks > 0) and (not JSHB.stackBarOn) then
				if JSHB.F.ResourceBar and JSHB.F.ResourceBar.background then
					JSHB.F.ResourceBar.backgroundRetro:Show()
					JSHB.F.ResourceBar.background:Hide()
				end
				JSHB.stackBarOn = true
			end

			if (JSHB.F.StackBarsHost.stacks >= self.barIndex) then
				self.backdrop:SetTexture(0, .6, 0, 1) -- Green
				self:SetAlpha(1)
				if (JSHB.F.StackBarsHost.stacks == self.totalBars) then
					return false
				end
				return true
			end
			
			self.backdrop:SetTexture(0, 0, 0, 1) -- Black
			self:SetAlpha(0)
			return false	
		end
	end
	
	local Check_AlwaysFlash = function(self)
		JSHB.F.StackBarsHost.stacks = checkStacksFunction()
		if (not JSHB.db.profile.resourcebar.stacksretro) then -- New Style
		
			if JSHB.F.StackBarsHost.stacks >= self.barIndex then
				self:SetAlpha(1)
				return true -- SV always flashes, cause stacks work reversed.  It's a proc, not a build-up.
			else
				self:SetAlpha(0)
			end
			
		else -- Retro Style
			if (JSHB.F.StackBarsHost.stacks ~= 0) then
				if (not JSHB.stackBarOn) then
					if JSHB.F.ResourceBar and JSHB.F.ResourceBar.background then
						JSHB.F.ResourceBar.backgroundRetro:Show()
						JSHB.F.ResourceBar.background:Hide()
					end
					JSHB.stackBarOn = true					
				end
			else
				if JSHB.stackBarOn then
					if JSHB.F.ResourceBar and JSHB.F.ResourceBar.background then
						JSHB.F.ResourceBar.backgroundRetro:Hide()
						JSHB.F.ResourceBar.background:Show()
					end
					JSHB.stackBarOn = false
				end
			end			
			
			if (JSHB.F.StackBarsHost.stacks >= self.barIndex) then			
				self.backdrop:SetTexture(0, .6, 0, 1) -- Green
				self:SetAlpha(1)
				return true
			else
				self.backdrop:SetTexture(0, 0, 0, 1) -- Black
				self:SetAlpha(0)
			end
			return false
		end
	end
		
	local Check_FlashWithProc = function(self)
		JSHB.F.StackBarsHost.stacks = checkStacksFunction()
		JSHB.F.StackBarsHost.proc = checkProcFunction()
		if (not JSHB.db.profile.resourcebar.stacksretro) then -- New Style
		
			if JSHB.F.StackBarsHost.proc then
				self:SetAlpha(1)
				return true
			elseif (JSHB.F.StackBarsHost.stacks >= self.barIndex) then
				self:SetAlpha(1)
			else
				self:SetAlpha(0)
			end
			
		else -- Retro Style
			if JSHB.F.StackBarsHost.proc then
				if (not JSHB.stackBarOn) then
					if JSHB.F.ResourceBar and JSHB.F.ResourceBar.background then
						JSHB.F.ResourceBar.backgroundRetro:Show()
						JSHB.F.ResourceBar.background:Hide()
					end
					JSHB.stackBarOn = true
				end
				self:SetAlpha(1)
				return true
			end

			if (JSHB.F.StackBarsHost.stacks == 0) then
				if JSHB.stackBarOn then
					if JSHB.F.ResourceBar and JSHB.F.ResourceBar.background then
						JSHB.F.ResourceBar.backgroundRetro:Hide()
						JSHB.F.ResourceBar.background:Show()
					end
					JSHB.stackBarOn = false
				end
				self:SetAlpha(0)
				return false
			elseif (JSHB.F.StackBarsHost.stacks > 0) and (not JSHB.stackBarOn) then
				if JSHB.F.ResourceBar and JSHB.F.ResourceBar.background then
					JSHB.F.ResourceBar.backgroundRetro:Show()
					JSHB.F.ResourceBar.background:Hide()
				end
				JSHB.stackBarOn = true
			end

			if (JSHB.F.StackBarsHost.stacks >= self.barIndex) then				
				self.backdrop:SetTexture(0, .6, 0, 1) -- Green
			else
				self.backdrop:SetTexture(0, 0, 0, 1) -- Black
			end

			self:SetAlpha(1)
			return false
		end
	end

	if (GetSpecialization() == 1) then -- Beast Master
		numBars = 5 -- Frenzy Stacks on pet for focus fire.
		checkStacksFunction = function(self) return(select(4, UnitAura("pet", GetSpellInfo(19615), nil, "HELPFUL") ) or 0) end -- Frenzy Effect
		checkFunction = Check_FlashAtMax
	elseif (GetSpecialization() == 2) then -- Marksmanship
		--	
		-- Marksmanship Hunters do not have baseline stacking or proc based buffs
		--
	elseif (GetSpecialization() == 3) then -- Survival
		numBars = 2 -- 56342 = Lock n' Load proc
		checkStacksFunction = function(self) return(select(4, UnitAura("player", GetSpellInfo(168980), nil, "HELPFUL") ) or 0) end -- Lock n' Load proc
		checkFunction = Check_AlwaysFlash
	end
	
	if JSHB.db.profile.resourcebar.stacksretro then
		stackSize = ( (JSHB.db.profile.resourcebar.width - ( (numBars - 1) * 4) ) - 2) / numBars
	else
		if (JSHB.db.profile.resourcebar.orientation == "vertical") then
			stackSize = JSHB.db.profile.resourcebar.embedstacks and (JSHB.db.profile.resourcebar.width * .85) or JSHB.db.profile.resourcebar.stackssize
		else
			stackSize = JSHB.db.profile.resourcebar.embedstacks and (JSHB.db.profile.resourcebar.height * .85) or JSHB.db.profile.resourcebar.stackssize
		end
	end
	
	local gap = 0
	local totalWidth = ( (stackSize + gap) * numBars) - gap
	
	if JSHB.db.profile.resourcebar.stacksretro then
		JSHB.F.StackBarsHost:SetSize(JSHB.db.profile.resourcebar.width, 5)
	else
		JSHB.F.StackBarsHost:SetSize( (stackSize + gap) * numBars - gap, stackSize)
	end
	
	if JSHB.db.profile.resourcebar.embedstacks or JSHB.db.profile.resourcebar.stacksretro then
	
		if JSHB.db.profile.resourcebar.stacksretro then
		
			if JSHB.db.profile.resourcebar.stacksretroontop then
			
				if (JSHB.db.profile.resourcebar.orientation == "vertical") then
					JSHB.F.StackBarsHost:SetPoint("BOTTOMLEFT", JSHB.F.ResourceBar, "TOPLEFT", 3, 0)
				else
					JSHB.F.StackBarsHost:SetPoint("BOTTOMLEFT", JSHB.F.ResourceBar, "TOPLEFT", 0, 3)
				end
				
			else
			
				if (JSHB.db.profile.resourcebar.orientation == "vertical") then
					JSHB.F.StackBarsHost:SetPoint("TOPLEFT", JSHB.F.ResourceBar, "BOTTOMLEFT", -3, 0)
				else
					JSHB.F.StackBarsHost:SetPoint("TOPLEFT", JSHB.F.ResourceBar, "BOTTOMLEFT", 0, -3)
				end
				
			end
		else
		
			if (JSHB.db.profile.resourcebar.orientation == "vertical") then
				JSHB.F.StackBarsHost:SetPoint("LEFT", JSHB.F.ResourceBar, "TOPLEFT")
			else
				JSHB.F.StackBarsHost:SetPoint("RIGHT", JSHB.F.ResourceBar, "TOPRIGHT")
			end
			
		end
	else
		JSHB.F.StackBarsHost:SetPoint(JSHB.GetActiveAnchor(JSHB.db.profile.resourcebar.anchor_stacks) )
	end
	
	JSHB.F.StackBarsHost:SetAlpha(1)
	JSHB.F.StackBarsHost:Show()
		
	if (not JSHB.db.profile.resourcebar.embedstacks) and (not JSHB.db.profile.resourcebar.stacksretro) then
		JSHB.RegisterMovableFrame(
			"MOVER_STACKBARS",
			JSHB.F.StackBarsHost,
			JSHB.F.StackBarsHost,
			JSHB.L["Stacks"],
			JSHB.db.profile.resourcebar,
			nil,
			JSHB.defaults.profile.resourcebar,
			nil,
			"_stacks"
		)
	end
	
	JSHB.F.StackBars = JSHB.F.StackBars or {} -- recycle
	for i=1,numBars do
		JSHB.F.StackBars[i] = JSHB.F.StackBars[i] or CreateFrame("Frame", nil, JSHB.F.StackBarsHost)
		JSHB.F.StackBars[i]:SetParent(JSHB.F.StackBarsHost)
		JSHB.F.StackBars[i]:ClearAllPoints()
		JSHB.F.StackBars[i]:SetSize(stackSize, JSHB.db.profile.resourcebar.stacksretro and 5 or stackSize)
		
		if JSHB.db.profile.resourcebar.stacksreverse and (not JSHB.db.profile.resourcebar.stacksretro) then
		
			if (JSHB.db.profile.resourcebar.orientation == "vertical") then
				JSHB.F.StackBars[i]:SetPoint("RIGHT", JSHB.F.StackBarsHost, "RIGHT", 0, -( (stackSize + gap) * (i - 1) ))
			else
				JSHB.F.StackBars[i]:SetPoint("RIGHT", JSHB.F.StackBarsHost, "RIGHT", -( (stackSize + gap) * (i - 1) ), 0)
			end
			
		elseif JSHB.db.profile.resourcebar.stacksretro then
		
			if (JSHB.db.profile.resourcebar.orientation == "vertical") then
				JSHB.F.StackBars[i]:SetPoint("TOPLEFT", JSHB.F.StackBarsHost, "TOPLEFT", 0, 1 + (stackSize + 4) * (i - 1))
			else
				JSHB.F.StackBars[i]:SetPoint("TOPLEFT", JSHB.F.StackBarsHost, "TOPLEFT", 1 + (stackSize + 4) * (i - 1), 0)
			end
			
		else
		
			if (JSHB.db.profile.resourcebar.orientation == "vertical") then
				JSHB.F.StackBars[i]:SetPoint("LEFT", JSHB.F.StackBarsHost, "LEFT", 0, ( (stackSize + gap) * (i - 1) ))
			else
				JSHB.F.StackBars[i]:SetPoint("LEFT", JSHB.F.StackBarsHost, "LEFT", ( (stackSize + gap) * (i - 1) ), 0)
			end
			
		end

		if (not JSHB.db.profile.resourcebar.stacksretro) then
			JSHB.F.StackBars[i].stack = JSHB.F.StackBars[i].stack or JSHB.F.StackBars[i]:CreateTexture(nil, "ARTWORK")
			JSHB.F.StackBars[i].stack:ClearAllPoints()
			JSHB.F.StackBars[i].stack:SetAllPoints(JSHB.F.StackBars[i])
			JSHB.F.StackBars[i].stack:SetTexture("Interface\\AddOns\\JSHB\\media\\graphics\\stack1.tga")
			JSHB.F.StackBars[i].stack:SetVertexColor(unpack(JSHB.db.profile.resourcebar.stackscolor) )
			JSHB.F.StackBars[i].stack:Show()
			
			if JSHB.F.StackBars[i].border then
				JSHB.F.StackBars[i].border:Hide()
			end
			if JSHB.F.StackBars[i].backdrop then
				JSHB.F.StackBars[i].backdrop:Hide()
			end
		else
			if JSHB.F.StackBars[i].stack then
				JSHB.F.StackBars[i].stack:Hide()
			end
		
			JSHB.F.StackBars[i].border = JSHB.F.StackBars[i].border or CreateFrame("Frame", nil, JSHB.F.StackBars[i])
			JSHB.F.StackBars[i].border:SetParent(JSHB.F.StackBars[i])
			JSHB.F.StackBars[i].border:ClearAllPoints()
			JSHB.F.StackBars[i].border:SetBackdrop( {
				bgFile = "Interface\\AddOns\\JSHB\\media\\textures\\blank.tga", 
				edgeFile = "Interface\\AddOns\\JSHB\\media\\textures\\blank.tga", 
				tile = false, tileSize = 0, edgeSize = 1, 
				insets = { left = -1, right = -1, top = -1, bottom = -1 }
			} )

			JSHB.F.StackBars[i].border:SetPoint("TOPLEFT", -1, 1)
			JSHB.F.StackBars[i].border:SetPoint("BOTTOMRIGHT", 1, -1)
			JSHB.F.StackBars[i].border:SetFrameLevel(JSHB.F.StackBars[i]:GetFrameLevel() - 1)
			JSHB.F.StackBars[i].border:SetBackdropColor(unpack(JSHB.db.profile.resourcebar.stackscolorretro_ba) )
			JSHB.F.StackBars[i].border:SetBackdropBorderColor(unpack(JSHB.db.profile.resourcebar.stackscolorretro_bo) )
			JSHB.F.StackBars[i].border:Show()

			JSHB.F.StackBars[i].backdrop = JSHB.F.StackBars[i].backdrop or JSHB.F.StackBars[i]:CreateTexture(nil, "BACKGROUND", JSHB.F.StackBars[i])
			JSHB.F.StackBars[i].backdrop:SetParent(JSHB.F.StackBars[i])
			JSHB.F.StackBars[i].backdrop:ClearAllPoints()
			JSHB.F.StackBars[i].backdrop:SetPoint("TOPLEFT", 1, -1)
			JSHB.F.StackBars[i].backdrop:SetPoint("BOTTOMRIGHT", -1, 1)
			JSHB.F.StackBars[i].backdrop:SetTexture(0, .6, 0, 1) -- Green
			JSHB.F.StackBars[i].backdrop:Show()
		end
		
		JSHB.F.StackBars[i].barIndex = i
		JSHB.F.StackBars[i].totalBars = numBars
		JSHB.F.StackBars[i].checkFunction = checkFunction
		JSHB.F.StackBars[i].updateTimer = 0
		JSHB.F.StackBars[i].updateFlash = 0

		JSHB.F.StackBars[i]:SetScript("OnUpdate",
			function(self, elapsed)
				self.updateTimer = self.updateTimer + elapsed
				if self.updateTimer < STACKBARS_UPDATEINTERVAL then
					return
				else
					self.updateTimer = 0
				end
				if self.checkFunction(self) then
					self.updateFlash = (self.updateFlash >= .5) and 0 or self.updateFlash + .11 + elapsed
					if (not JSHB.db.profile.resourcebar.stacksretro) then
						self.stack:SetVertexColor(0, .3 + self.updateFlash, 0, 1)
					else
						self.backdrop:SetTexture(0, .3 + self.updateFlash, 0, 1)
					end
				else
					self.updateFlash = 0
					if (not JSHB.db.profile.resourcebar.stacksretro) then
						self.stack:SetVertexColor(unpack(JSHB.db.profile.resourcebar.stackscolor) )
					end
				end
			end)
		JSHB.F.StackBars[i]:SetAlpha(0)
		JSHB.F.StackBars[i]:Show()		
	end
end