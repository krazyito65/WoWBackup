local _, class = UnitClass("player")
if class ~= "PRIEST" then
	-- No point in running HP on non-priest
	HPDev_OnLoad = function() end
	return
end

-- Setup some global variables
HC_spellName = ""
HaloPro_WA_Mode_min = 0
HaloPro_WA_Mode_max = 0
HaloPro_WA_Valid_Target = 0
HaloPro_WA_CD_Timer = 0
HPDev_Flash_Flag = 0

-- Setup some local variables
local Init_Flag = 0
local HPDev_unit = "target"
local prev_min = 0
local prev_max = 0
local Spell_CD = 0
local flip_switch = false
local fade_begin = false
local current_texture = nil
local prev_texture = nil
local HPRangeFound = 0
local HPSound_WhenAlwaysOn = 0

--local HPDev_Theme = "Shadow"
local HPDev_minRange = nil
local HPDev_maxRange = nil
local L_HP_Range = nil			-- Left <=
local ML_HP_Range_A = nil		-- Mid Left(A) >=
local ML_HP_Range_B = nil		-- Mid Left(B) <=
local C_HP_Range_A = nil		-- Center(A) >=
local C_HP_Range_B = nil		-- Center(B) <=
local MR_HP_Range_A = nil		-- Mid Right(A) >=
local MR_HP_Range_B = nil		-- Mid Ridht(B) <=
local R_HP_Range = nil			-- Right >=
local OffCD_Flag = nil

-- Setup some arrays 
local Harm_Items_Table = {}
local Help_Items_Table = {}

-- Harm Items
Harm_Items_Table[5] = 37727 -- Ruby Acorn 5 yards
Harm_Items_Table[8] = 34368 -- Attuned Crystal Cores 8 yards
Harm_Items_Table[10] = 32321 -- Sparrowhawk Net 10 yards
Harm_Items_Table[15] = 33069 -- Sturdy Rope 15 yards
Harm_Items_Table[20] = 10645 -- Gnomish Death Ray 20 yards
Harm_Items_Table[25] = 31463 -- Zezzak's Shard 25 yards
Harm_Items_Table[30] = 34191 -- Handful of Snowflakes 30 yards
Harm_Items_Table[35] = 18904 -- Zorbin's Ultra-Shrinker 35 yards
Harm_Items_Table[40] = 28767 -- The Decapitator 40 yards
Harm_Items_Table[45] = 23836 -- Goblin Rocket Launcher 45 yards
Harm_Items_Table[60] = 37887 -- Seeds of Nature's Wrath 60 yards
Harm_Items_Table[80] = 35278 -- Reinforced Net 80 yards

-- Help Items
Help_Items_Table[5] = 37727 -- Ruby Acorn 5 yards
Help_Items_Table[8] = 34368 -- Attuned Crystal Cores 8 yards
Help_Items_Table[10] = 32321 -- Sparrowhawk Net 10 yards
Help_Items_Table[15] = 1251 -- Linen Bandage 15 yards
Help_Items_Table[20] = 21519 -- Mistletoe 20 yards
Help_Items_Table[25] = 31463 -- Zezzak's Shard 25 yards
Help_Items_Table[30] = 34191 -- Handful of Snowflakes 30 yards
Help_Items_Table[35] = 18904 -- Zorbin's Ultra-Shrinker 35 yards
Help_Items_Table[40] = 34471 -- Vial of the Sunwell 40 yards
Help_Items_Table[45] = 32698 -- Wrangling Rope 45 yards
Help_Items_Table[60] = 37887 -- Seeds of Nature's Wrath 60 yards
Help_Items_Table[80] = 35278 -- Reinforced Net 80 yards

local function HPDev_Hide_Bar(UIParent)
	
	HP_f:SetAlpha(0)
	
end

local function Init_Texture()
	if HP_f:IsVisible() then HP_f:Hide() end
			
	for i=0,5 do
		if i == 0 then
			current_texture = "left.tga"
		elseif i == 1 then
			current_texture = "mid_left.tga"
		elseif i == 2 then
			current_texture = "center.tga"
		elseif i == 3 then
			current_texture = "mid_right.tga"
		elseif i == 4 then
			current_texture = "right.tga"
		elseif i == 5 then
			current_texture = "offcd.tga"
		end
		HP_t:SetTexture("Interface\\AddOns\\HaloPro\\HaloPro_Art\\" .. HPDev_Theme .. "\\" .. current_texture)
		HP_TP_t:SetTexture("Interface\\AddOns\\HaloPro\\HaloPro_Art\\" .. HPDev_Theme .. "\\" .. current_texture)
			
	end
	
	current_texture = nil
	prev_texture = nil
	Init_Flag = 1
	
	if HPDev_InCombatOnly == 1 and UnitAffectingCombat("player") then
		if not HP_f:IsVisible() then HP_f:Show() end
	elseif HPDev_InCombatOnly == 0 then
		if not HP_f:IsVisible() then HP_f:Show() end
	end
		
	collectgarbage("collect") -- Force a collection
end

local function Rotate_90()
	-- Check to see if 90 degree rotated option is on, and rotate if it is
	local ULx, ULy, LLx, LLy, URx, URy, LRx, LRy = HP_t:GetTexCoord()
	if HPDev_VertBar_Flag == 1 then
		if (ULx + ULy + LLx + URy) == 0 and (LLy + URx + LRx + LRy) == 4 then 
			HP_t:SetTexCoord(0,1, 1,1, 0,0, 1,0) 
			HP_f:SetWidth(HPDev_Height)
			HP_f:SetHeight(HPDev_Width)
		end
	else
		if (ULx + URx + URy + LRy) == 0 and (ULy + LLx + LLy + LRx) == 4 then 
			HP_t:SetTexCoord(0,0, 0,1, 1,0, 1,1) 
			HP_f:SetWidth(HPDev_Width)
			HP_f:SetHeight(HPDev_Height)
		end
	end
end

local function Apply_Texture()
	-- this will hide halopro if weakaura mode is selected --
	if HPDev_WAMode == 1 then 
		HP_TP_t:SetAlpha(0)
		HPDev_WA_Title:SetAlpha(1) 
	else 
		HP_TP_t:SetAlpha(1)
		HPDev_WA_Title:SetAlpha(0) 
	end
	if HPDev_WAMode == 1 and HP_f:IsVisible() then HP_f:Hide() end  
	--if HPDev_WAMode == 1 and HP_Opt_f:IsVisible() and HP_Theme_Preview:IsVisible() then HP_Theme_Preview:Hide() elseif HPDev_WAMode == 0 and HP_Opt_f:IsVisible() and not HP_Theme_Preview:IsVisible() then HP_Theme_Preview:Show() end
	---------------------------------------------------------
	
	if HPDev_minRange == nil then return end
	if HPDev_maxRange == nil then return end
	if OffCD_Flag == 1 then
		current_texture = "offcd.tga"
	elseif HPDev_maxRange <= L_HP_Range then current_texture =	"left.tga" 												-- Left <=
	elseif HPDev_minRange >= ML_HP_Range_A and HPDev_maxRange <= ML_HP_Range_B then	current_texture = "mid_left.tga" 	-- Mid Left(A) >=  	-- Mid Left(B) <=
	elseif HPDev_minRange >= C_HP_Range_A and HPDev_maxRange <= C_HP_Range_B then current_texture = "center.tga" 		-- Center(A) >= 	-- Center(B) <=
	elseif HPDev_minRange >= MR_HP_Range_A and HPDev_maxRange <= MR_HP_Range_B then current_texture = "mid_right.tga"	-- Mid Right(A) >=	-- Mid Ridht(B) <=
	elseif HPDev_minRange >= R_HP_Range then current_texture = "right.tga" end											-- Right >=
	
	if HP_Opt_f:IsVisible() then prev_texture = nil end
	if current_texture ~= prev_texture then 
		if current_texture == "center.tga" and HPDev_Sound and HPDev_SoundOn == 1 and not HP_Opt_f:IsVisible() and HPSound_WhenAlwaysOn == 0 then PlaySound(HPDev_Sound,"master") end
		if HPDev_WAMode == 0 then HP_t:SetTexture("Interface\\AddOns\\HaloPro\\HaloPro_Art\\" .. HPDev_Theme .. "\\" .. current_texture) end
		if HPDev_WAMode == 0 and HP_Opt_f:IsVisible() then HP_TP_t:SetTexture("Interface\\AddOns\\HaloPro\\HaloPro_Art\\" .. HPDev_Theme .. "\\" .. current_texture) end
		prev_texture = current_texture
				
		Rotate_90()
	end
			
end

-- Local Variables to give border warning
local HPDev_Border_Thickness = 5
local HPDev_Run_Once = 0
local HP_Border_Calc = nil
local toggle = 1

local function Determine_Range()
	if HC_spellName == "" and HP_Opt_f:IsVisible() then HP_TP_t:SetTexture("Interface\\AddOns\\HaloPro\\HaloPro_Art\\" .. HPDev_Theme .. "\\" .. "center.tga") end
	if HC_spellName == "" then return end
	if Init_Flag == 0 then return end
	if HP_PetBattle_Flag == 1 then return end
	
		
	local HPDev_NotValidTarget = 0
	if HPDev_MouseOverRide == 1 then
		if GetSpecialization() == 3 then 
			if not UnitCanAttack('player', "mouseover") or not UnitExists("mouseover") then HPDev_NotValidTarget = 1 end
		else
			if not UnitCanAssist("player","mouseover") or not UnitExists("mouseover") then HPDev_NotValidTarget = 1 end
		end
		if UnitIsUnit("mouseover", "player") or UnitIsDead("mouseover") then HPDev_NotValidTarget = 1 end
		
		if HPDev_NotValidTarget == 1 then
			HPDev_NotValidTarget = 0
			if GetSpecialization() == 3 then 
				if not UnitCanAttack('player', "target") or not UnitExists("target") then HPDev_NotValidTarget = 1 end
			else
				if not UnitCanAssist("player","target") or not UnitExists("target") then HPDev_NotValidTarget = 1 end
			end
			if UnitIsUnit("target", "player") or UnitIsDead("target") then HPDev_NotValidTarget = 1 end
			if HPDev_NotValidTarget == 0 then HPDev_unit = "target" end
		else
			HPDev_unit = "mouseover"
		end
		
	else
		HPDev_unit = "target"
		if GetSpecialization() == 3 then 
			if not UnitCanAttack('player', HPDev_unit) or not UnitExists(HPDev_unit) then HPDev_NotValidTarget = 1 end
		else
			if not UnitCanAssist("player",HPDev_unit) or not UnitExists(HPDev_unit) then HPDev_NotValidTarget = 1 end
		end
		if UnitIsUnit(HPDev_unit, "player") or UnitIsDead(HPDev_unit) then HPDev_NotValidTarget = 1 end
	end
	
	if HP_Opt_f:IsVisible() then 
		if not HP_f:IsVisible() and HPDev_WAMode == 0 then HP_f:Show() end
		HP_f:SetAlpha(1)
		if HPDev_NotValidTarget == 1 then 
			HPDev_minRange = C_HP_Range_A
			HPDev_maxRange = C_HP_Range_B
			Apply_Texture()
			HP_t:SetAlpha(0.25)
		end
	end
	
	if HPDev_NotValidTarget == 1 then 
		HaloPro_WA_Valid_Target = 0
		if HPDev_AlwaysOn == 1 then
			HPSound_WhenAlwaysOn = "false"
			HPDev_minRange = C_HP_Range_A
			HPDev_maxRange = C_HP_Range_B
			Apply_Texture()
			HP_t:SetAlpha(0.25)
		else
			prev_min = nil
			prev_max = nil
			if not HP_Opt_f:IsVisible() or HPDev_WAMode == 1 then 
				if HP_f:IsVisible() then HP_f:Hide() end
				return 
			end
		end
	else
		HaloPro_WA_Valid_Target = 1
		prev_min = nil
		prev_max = nil
		HPSound_WhenAlwaysOn = 0
		HP_t:SetAlpha(1)
	end
			
	local start, duration, enabled = GetSpellCooldown(HC_spellName)

	if Spell_CD == nil then Spell_CD = 0 end

	if duration < Spell_CD then 
		flip_switch = false 
		HPDev_Border_Thickness = 5
	end
	
	
	if start > 0 and duration == Spell_CD then 

		local time_left = (start + duration - GetTime())
		HaloPro_WA_CD_Timer = time_left
		--print(HaloPro_WA_CD_Timer)
		--HPDev_ONCD_Alpha = 0 -- TEMP REMOVE LATER
		--HPDev_OFFCD_Alpha = 1
		if duration == Spell_CD and flip_switch == false then 
			if HPDev_FadeOutIN == 1 then HP_f:SetAlpha(HPDev_ONCD_Alpha) end					-- Sets bar to invisible of FadeIn is on
			if not HP_f:IsVisible() then HP_f:Show() end
			flip_switch = true 
		end
							
		if time_left > 0 then HP_Border_Calc = (1 / time_left) end
		local alpha = time_left / Spell_CD
					
		if flip_switch == true then
			if ceil(time_left) <= ceil(Spell_CD / 2) and fade_begin == false then 
				HPDev_Run_Once = 0
				if HPDev_FadeOutIN == 1 then UIFrameFadeIn(HP_f, (ceil(time_left)-1), HPDev_ONCD_Alpha, (HPDev_OFFCD_Alpha - 0.1)) end		-- Begins Fade in if FadeIn is enabled
				fade_begin = true
						
			end
						
		end
		
		-- Launches the border warning - disable this to turn off border warning
		if time_left <= 0.35 and flip_switch == true and HPDev_CDWarn == 1 then
			if not HP_f.Border:IsVisible() then HP_f.Border:Show() end
			if HPDev_Flash_Flag == 0 then
				if HP_f.Border:GetAlpha() < 1 then HP_f.Border:SetAlpha(1) end
				if HP_f:GetAlpha() < 1 then HP_f:SetAlpha(1) end
				OffCD_Flag = 1
				Apply_Texture()
				HPDev_Theme_Flag = "Reset_Border"
				
				HPDev_Flash_Flag = 1
				if time_left > 0.05 then time_left = time_left - 0.05 end
				C_Timer.After(time_left, HPDev_Theme_Loader)
				
				HP_f.Border:SetPoint("LEFT", HP_f, "LEFT", -(40), 0)
				HP_f.Border:SetPoint("RIGHT", HP_f, "RIGHT", (40), 0)
				HP_f.Border:SetPoint("BOTTOM", HP_f, "BOTTOM", 0, -(40))
				HP_f.Border:SetPoint("TOP", HP_f, "TOP", 0, (40))
				HP_f.Border:SetBackdrop({edgeFile = "Interface\\AddOns\\HaloPro\\HaloPro_Art\\Border\\Light\\glowTex.tga",
					tile = true, tileSize = 8, edgeSize = (40),
					insets = { left = (37), right = (37), top = (37), bottom = (37) }});
				
				HP_f.Border:SetBackdropBorderColor(1,1,1,1)
			end
						
		end
					
	end	
	
	if HPDev_InCombatOnly == 1 and UnitAffectingCombat("player") == false then 
		if HP_f:IsVisible() then HP_f:Hide() end
		return 
	elseif HPDev_InCombatOnly == 1 and UnitAffectingCombat("player") then
		if not HP_f:IsVisible() then HP_f:Show() end
	else 
		if not HP_f:IsVisible() then HP_f:Show() end
	end
		
	if  duration < Spell_CD then 
		toggle = 1
		flip_switch = false
		fade_begin = false
		time_left = 0
		HPDev_Border_Thickness = 5
		OffCD_Flag = nil
		if HP_f.Border:GetAlpha() < HPDev_OFFCD_Alpha or HP_f.Border:GetAlpha() > HPDev_OFFCD_Alpha then HP_f.Border:SetAlpha(HPDev_OFFCD_Alpha) end
		if HP_f:GetAlpha() < HPDev_OFFCD_Alpha or HP_f:GetAlpha() > HPDev_OFFCD_Alpha then HP_f:SetAlpha(HPDev_OFFCD_Alpha) end
	end
	if HP_f:GetAlpha() == 0 and duration == 0 or duration == 1 then 
		if HP_f.Border:GetAlpha() < HPDev_OFFCD_Alpha or HP_f.Border:GetAlpha() > HPDev_OFFCD_Alpha then HP_f.Border:SetAlpha(HPDev_OFFCD_Alpha) end
		if HP_f:GetAlpha() < HPDev_OFFCD_Alpha or HP_f:GetAlpha() > HPDev_OFFCD_Alpha then HP_f:SetAlpha(HPDev_OFFCD_Alpha) end
	end
	
	HPDev_minRange = nil
	HPDev_maxRange = nil
	HPRangeFound = 0
		
	for i=0,80 do
		if UnitCanAttack('player', HPDev_unit) and not UnitIsDead(HPDev_unit) and GetSpecialization() == 3 then 
			if ItemHasRange(Harm_Items_Table[i]) and not IsItemInRange(Harm_Items_Table[i], HPDev_unit) then
				HPDev_minRange = i
			end
			if ItemHasRange(Harm_Items_Table[i]) and IsItemInRange(Harm_Items_Table[i], HPDev_unit) then	
				HPDev_maxRange = i
				if HPDev_maxRange <= 5 then
					HPDev_minRange = 0
					HPDev_maxRange = 5
				end
			end
			
			if HPDev_minRange and HPDev_maxRange then 
				HPRangeFound = 2															
				if prev_min ~= HPDev_minRange and prev_max ~= HPDev_maxRange then	
					HPRangeFound = 1
					prev_min = HPDev_minRange
					prev_max = HPDev_maxRange
					HaloPro_WA_Mode_min = HPDev_minRange
					HaloPro_WA_Mode_max = HPDev_maxRange
					
					Apply_Texture()
					if HPDev_PrevNext_Flag == 1 then HPDev_PrevNext_Flag = 0 end
					return
									
				end
							
			end
			
			
		elseif UnitCanAssist("player",HPDev_unit) and not UnitIsUnit(HPDev_unit, "player") and GetSpecialization() < 3 then
			if ItemHasRange(Help_Items_Table[i]) and not IsItemInRange(Help_Items_Table[i], HPDev_unit) then
				HPDev_minRange = i
			end
			if ItemHasRange(Help_Items_Table[i]) and IsItemInRange(Help_Items_Table[i], HPDev_unit) then	
				HPDev_maxRange = i
				if HPDev_maxRange <= 5 then
					HPDev_minRange = 0
					HPDev_maxRange = 5
				end
			end
			
			if HPDev_minRange and HPDev_maxRange then 
				HPRangeFound = 2				
				if prev_min ~= HPDev_minRange and prev_max ~= HPDev_maxRange then	
					HPRangeFound = 1
					prev_min = HPDev_minRange
					prev_max = HPDev_maxRange
					HaloPro_WA_Mode_min = HPDev_minRange
					HaloPro_WA_Mode_max = HPDev_maxRange
					
					Apply_Texture()
					if HPDev_PrevNext_Flag == 1 then HPDev_PrevNext_Flag = 0 end
					return
									
				end
			
			end
			
		end
		
	end

	if HPRangeFound == 0 and not HP_Opt_f:IsVisible() then
			
		HPDev_minRange = 100
		HPDev_maxRange = 100

		if prev_min ~= HPDev_minRange and prev_max ~= HPDev_maxRange then	
			prev_min = HPDev_minRange
			prev_max = HPDev_maxRange
			Apply_Texture()
			return
							
		end
	end

end 

local function Talent_Check()
	
	prev_min = nil
	prev_max = nil
	
	-- Gets the local name of the spell as it would be written in the spellbook based off the spellid
	local HC_name_120517 = GetSpellInfo(120517) -- Halo
		if not HC_name_120517 then HC_name_120517 = GetSpellInfo(120644) end -- Shadow Halo
	local DS_name_110744 = GetSpellInfo(110744) -- Divine Star
		if not DS_name_110744 then DS_name_110744 = GetSpellInfo(122121) end -- Shadow Divine Star
	local CC_name_121135 = GetSpellInfo(121135) -- Cascade
		if not CC_name_121135 then CC_name_121135 = GetSpellInfo(127362) end -- Shadow Cascade
	local FW_name_6346 = GetSpellInfo(6346)
	local Shoot_name_5019 = GetSpellInfo(5019)

	-- Checks to see if its actually in your spellbook aka learned, or else returns nil
	local HC_spellName_120517 = GetSpellInfo(HC_name_120517) -- Halo
	local DS_spellName_110744 = GetSpellInfo(DS_name_110744) -- Divine Star
	local CC_spellName_121135 = GetSpellInfo(CC_name_121135) -- Cascade

	
	if HC_spellName_120517 ~= nil and HPDev_Monitor_Halo == 1 then
		Spell_CD = 40
		HP_Spell_Confirm = "Halo"
		HC_spellName = HC_spellName_120517
		L_HP_Range = 15			-- Left <=
		ML_HP_Range_A = 15		-- Mid Left(A) >=
		ML_HP_Range_B = 20		-- Mid Left(B) <=
		C_HP_Range_A = 20		-- Center(A) >=
		C_HP_Range_B = 25		-- Center(B) <=
		MR_HP_Range_A = 25		-- Mid Right(A) >=
		MR_HP_Range_B = 30		-- Mid Ridht(B) <=
		R_HP_Range = 30			-- Right >=
		HPDev_Fade_MsgMode()
		
	elseif DS_spellName_110744 ~= nil and HPDev_Monitor_DS == 1 then
		Spell_CD = 15
		HP_Spell_Confirm = "Divine Star"
		HC_spellName = DS_spellName_110744
		L_HP_Range = 0					-- Left <=
		ML_HP_Range_A = 0				-- Mid Left(A) >=
		ML_HP_Range_B = 0				-- Mid Left(B) <=
		C_HP_Range_A = 0				-- Center(A) >=
		C_HP_Range_B = 20				-- Center(B) <=
		MR_HP_Range_A = 20				-- Mid Right(A) >=
		MR_HP_Range_B = 25				-- Mid Ridht(B) <=
		R_HP_Range = 25					-- Right >=
		HPDev_Fade_MsgMode()

	elseif CC_spellName_121135 ~= nil and HPDev_Monitor_CC == 1 then
		Spell_CD = 25
		HP_Spell_Confirm = "Cascade"
		HC_spellName = CC_spellName_121135
		L_HP_Range = 30					-- Left <=
		ML_HP_Range_A = 30				-- Mid Left(A) >=
		ML_HP_Range_B = 35				-- Mid Left(B) <=
		C_HP_Range_A = 35				-- Center(A) >=
		C_HP_Range_B = 40				-- Center(B) <=
		MR_HP_Range_A = 40				-- Mid Right(A) >=
		MR_HP_Range_B = 45				-- Mid Ridht(B) <=
		R_HP_Range = 45					-- Right >=
		HPDev_Fade_MsgMode()
		
	else
		HPDev_OnlyOn90Talent = 1
		HC_spellName = ""
		if HP_f:GetAlpha() == 1 then HPDev_Hide_Bar() end
	end
	
end

function HPDev_Loader()
	if HPDev_Func_Flag == "Hide_Bar" then HPDev_Hide_Bar() end
	if HPDev_Func_Flag == "Init_Bar_Texture" then Init_Texture() end
	if HPDev_Func_Flag == "Determine_Range" then Determine_Range() end
	if HPDev_Func_Flag == "Talent_Check" then Talent_Check() end
	if HPDev_Func_Flag == "Apply_Texture" then Apply_Texture() end
	if HPDev_Func_Flag == "Rotate_90" then Rotate_90() end
	if HPDev_Func_Flag == "Recheck_Range" then 
		prev_min = nil
		prev_max = nil
		--Apply_Texture() 
	end
end