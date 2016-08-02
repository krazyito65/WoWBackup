local _, class = UnitClass("player")
if class ~= "PRIEST" then
	-- No point in running HP on non-priest
	HPDev_OnLoad = function() end
	return
end

HPDev_UpdateInterval = .1

-- Global Variables
HPDev_Func_Flag = nil
HP_f = nil -- Main Bar
HP_t = nil -- Main Bar Texture
HPDev_Resize_Flag = "" -- Set to "width" or "height" to show message on size change
HP_Event_Run_Once = 0
HPDev_OnlyOn90Talent = 0
HPTemp = nil
HP_PetBattle_Flag = nil

-- Local Variables
local HP_f_Status = ""
local HP_Opt_f_Status = ""

-- Variable Table for importing
--HP_CharServ_SV = {}
--HP_Char_ALL_SV = {}

local HPDev_VAR_frame = CreateFrame("FRAME"); -- Need a frame to respond to events
HPDev_VAR_frame:RegisterEvent("ADDON_LOADED"); -- Fired when saved variables are loaded
HPDev_VAR_frame:RegisterEvent("PLAYER_LOGOUT"); -- Fired when logging out or reloadingUI
HPDev_VAR_frame:RegisterEvent("PLAYER_ENTERING_WORLD"); -- Fired when entering instances
HPDev_VAR_frame:RegisterEvent("PLAYER_LEAVING_WORLD"); -- Fired when leaving instances
HPDev_VAR_frame:RegisterEvent("PLAYER_TARGET_CHANGED"); -- Fired when target changes
HPDev_VAR_frame:RegisterEvent("PET_BATTLE_OPENING_START"); -- Fired when pet battle starts
HPDev_VAR_frame:RegisterEvent("PET_BATTLE_CLOSE"); -- Fired when target changes
HPDev_VAR_frame:RegisterEvent("UNIT_ENTERING_VEHICLE", "player"); -- Fired when you start entering a vehicle
HPDev_VAR_frame:RegisterEvent("UNIT_EXITED_VEHICLE", "player"); -- Fired when you have left a vehicle

HPDev_VAR_frame:SetScript("OnEvent", function(self, event, arg1)
	if event == "PLAYER_ENTERING_WORLD" then
		if HP_Event_Run_Once < 1 then
			HP_Event_Run_Once = 1
		elseif HP_Event_Run_Once >= 1 then
			HP_Event_Run_Once = 0
		end
		
	elseif event == "PLAYER_LOGOUT" then --or event == "PLAYER_LEAVING_WORLD" then 
		--HPTemp = HPTemp + 1
		HPDev_point, HPDev_relativeTo, HPDev_relativePoint, HPDev_xOfs, HPDev_yOfs = HP_f:GetPoint()
		HPDev_xOfs = ceil(HPDev_xOfs - 0.5)
		HPDev_yOfs = ceil(HPDev_yOfs - 0.5)
		
		local HPPlayer_name = UnitName("player")
		local HPPlayer_realm = GetRealmName()
		
		--[[local insert_flag = 0
		i = 0
		--while HP_CharServ_SV[i] do
			--if HP_CharServ_SV[i].name == HPPlayer_name and HP_CharServ_SV[i].realm = HPPlayer_realm then
			HP_CharServ_SV[i] = {
			  name = HPPlayer_name,
			  realm = HPPlayer_realm,
			  HPTempSV = HPTemp,
			  HPDev_AutoLockSV = HPDev_AutoLock, 
			  HPDev_WidthSV = HPDev_Width, 
			  HPDev_HeightSV = HPDev_Height, 
			  HPDev_LastWidthSV = HPDev_LastWidth, 
			  HPDev_LastHeightSV = HPDev_LastHeight, 
			  HPDev_pointSV = HPDev_point, 
			  HPDev_relativeToSV = HPDev_relativeTo, 
			  HPDev_relativePointSV = HPDev_relativePoint, 
			  HPDev_xOfsSV = HPDev_xOfs, 
			  HPDev_yOfsSV = HPDev_yOfs, 
			  HPDev_InCombatOnly = HPDev_InCombatOnly, 
			  HPDev_SoundOnSV = HPDev_SoundOn, 
			  HPDev_CDWarnSV = HPDev_CDWarn, 
			  HPDevFadeOutINSV = HPDev_FadeOutIN, 
			  HPDev_AlwaysOnSV = HPDev_AlwaysOn, 
			  HPDev_Fade_MsgMode_FlagSV = HPDev_Fade_MsgMode_Flag, 
			  HPDev_VertBar_FlagSV = HPDev_VertBar_Flag, 
			  HPDev_StrataSV = HPDev_Strata, 
			  HPDev_Border_ThicknessSV = HPDev_Border_Thickness, 
			  HPDev_ThemeSV = HPDev_Theme, 
			  HPDev_Monitor_CCSV = HPDev_Monitor_CC, 
			  HPDev_Monitor_DSSV = HPDev_Monitor_DS, 
			  HPDev_Monitor_HaloSV = HPDev_Monitor_Halo,
			  HPDev_MouseOverRideSV = HPDev_MouseOverRide
			}
			--insert_flag = 1
			--end
			--i = i + 1
		--end]]
				
	end
	if event == "ADDON_LOADED" and arg1 == "HaloPro" then
		-- Our saved variables, if they exist, have been loaded at this point.
		if HP_Event_Run_Once < 1 then
			HP_Event_Run_Once = 1
			
			--Check saved variables for value and set to default if nil
			HPDev_Defaults_Flag = "Check_Defaults" 
			HPDev_Defaults_Loader()
			
			HPDev_Func_Flag = "Init_Bar_Texture" 
			HPDev_Loader()
			
		elseif HP_Event_Run_Once >= 1 then
			HP_f:SetFrameStrata(HPDev_Strata)
			HP_f:SetWidth(HPDev_Width)
			HP_f:SetHeight(HPDev_Height)
			HPDev_relativePoint = HPDev_point
			HP_f:SetPoint(HPDev_point, nil, HPDev_relativePoint, HPDev_xOfs, HPDev_yOfs)
			if HPDev_AutoLock == 1 then 
				HP_f:EnableMouse(false)	
				HP_f:RegisterForDrag() 	-- disable moving
			end 
			
			HPDev_Theme_Flag = "Apply_Border"
			HPDev_Theme_Loader()							-- Applies border in HPDev_Theme
			
			-- Set the options to stored values
			HPDev_Opt_Flag = "HPDev_Buttons"
			HPDev_Opt_Loader()		
			
			-- Setup the Weak Aura String
			HPDev_WA_StringCC:SetText(HPDev_WA_CC)
			HPDev_WA_StringDS:SetText(HPDev_WA_DS)
			HPDev_WA_StringHalo:SetText(HPDev_WA_Halo)

			
			HP_Event_Run_Once = 0
		end
		
	end
	if event == "PET_BATTLE_OPENING_START" or event == "UNIT_ENTERING_VEHICLE" then
		HP_PetBattle_Flag = 1
		if HP_f:IsVisible() then 
			HP_f:Hide() 
			HP_f_Status = "hidden"
		end
		if HP_Opt_f:IsVisible() then 
			HP_Opt_f:Hide() 
			HP_Opt_f_Status = "hidden"
		end
	end
	if event == "PET_BATTLE_CLOSE" or event == "UNIT_EXITED_VEHICLE" then
		HP_PetBattle_Flag = nil
		if HP_f_Status == "hidden" then HP_f:Show() end
		if HP_Opt_f_Status == "hidden" then HP_Opt_f:Show() end
	end
	
	if event == "PLAYER_TARGET_CHANGED" then
		
		if HP_Event_Run_Once < 1 then
			HP_Event_Run_Once = 1
			HPDev_Func_Flag = "Determine_Range"
			HPDev_Loader()
		elseif HP_Event_Run_Once >= 1 then
			HP_Event_Run_Once = 0
		end
	end
	
end)

-- Message when changing Talents
function HPDev_Fade_MsgMode(UIParent)
	if HPDev_Fade_MsgMode_Flag == 0 then return end
	if HPDev_OnlyOn90Talent == 0 then return end
	HPDev_OnlyOn90Talent = 0
	HPDev_DSMode_Msg:SetText('|cff00ddaaHaloPro now in '..HC_spellName..' Mode')
	UIFrameFadeOut(HPDev_DSMode_Msg, 4, 1, 0)
end
function HPDev_Size_MsgMode(UIParent)
	if HPDev_Resize_Flag == "width" then HPDev_DSMode_Msg:SetText('|cff00ddaaWidth: '..HPDev_Width) end
	if HPDev_Resize_Flag == "height" then HPDev_DSMode_Msg:SetText('|cff00ddaaWidth: '..HPDev_Height) end
	UIFrameFadeOut(HPDev_DSMode_Msg, 4, 1, 0)
end


-- Runs when Addon Loads
function HPDev_OnLoad(self)
	-- Create OnUpdateFrame
	local HPDev_UPdate_Master = CreateFrame("Frame","HPDev_UPdate_Master",UIParent)
	HPDev_UPdate_Master:RegisterEvent("PLAYER_TALENT_UPDATE")
	HPDev_UPdate_Master:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
	HPDev_UPdate_Master:SetFrameLevel(501)
	HPDev_currentSpec = GetActiveSpecGroup()
	HPDev_UPdate_Master:SetScript("OnEvent", function()
		HPDev_Func_Flag = "Talent_Check"
		HPDev_Loader()
	end)
	HPDev_UPdate_Master:SetScript('OnUpdate', HPDev_OnUpdate)
	
	-- Creates Message that says which mode is enabled
	HPDev_DSMode_Msg = CreateFrame("Frame", "HPDev_DSMode_Msg", UIParent)
	HPDev_DSMode_Msg:SetAllPoints()
	HPDev_DSMode_Msg = HPDev_DSMode_Msg:CreateFontString(nil, 'OVERLAY')
	HPDev_DSMode_Msg:SetFont(STANDARD_TEXT_FONT, 32, "OUTLINE")
	HPDev_DSMode_Msg:SetText('|cff00ddaaHaloPro is now Activated')
	HPDev_DSMode_Msg:SetPoint('CENTER',0,200)
	HPDev_DSMode_Msg:SetAlpha(0)
	
	HPDev_Opt_Flag = "HPDev_Options_Init"
	HPDev_Opt_Loader()
	
	-- Creates the main bar
	HP_f = CreateFrame("Frame","HaloPro_MainFrame",UIParent)
	HP_f:SetFrameStrata("MEDIUM")
	HP_f:SetWidth(250)
	HP_f:SetHeight(10)
	HP_f:SetFrameLevel(502)
	HP_f:SetMovable(true)
	HP_f:SetResizable(true)
	HP_f:SetClampedToScreen(true)
	HP_f:EnableMouse(true)
	HP_f:EnableKeyboard(true)
	HP_f:EnableMouseWheel(true)
	HP_f:SetUserPlaced(true)
	HP_f:RegisterForDrag("LeftButton")
	HP_f:SetScript("OnDragStart", HP_f.StartMoving)
	HP_f:SetScript('OnDragStop', function(self)
		HP_f:StopMovingOrSizing()
		HPDev_point, HPDev_relativeTo, HPDev_relativePoint, HPDev_xOfs, HPDev_yOfs = HP_f:GetPoint()
		HPDev_xOfs = ceil(HPDev_xOfs - 0.5)
		HPDev_yOfs = ceil(HPDev_yOfs - 0.5)

	end)
		
	-- Add Texture to the bar
	local xOfs, yOfs = 0
	local HPDev_Theme = "Shadow"
	local prev_texture = "center.tga"
	HP_t = HP_f:CreateTexture("HPDev_texture","BACKGROUND")
	HP_t:SetTexture("Interface\\AddOns\\HaloPro\\HaloPro_Art\\" .. HPDev_Theme .. "\\" .. prev_texture)
		HP_t:SetAllPoints(HP_f)
	HP_f.texture = HP_t
	HP_f:SetAlpha(0)
			
	
	
	
end

local TimeSinceLastUpdate = 0
function HPDev_OnUpdate(self, elapsed)
	TimeSinceLastUpdate = TimeSinceLastUpdate + elapsed
		
	while (TimeSinceLastUpdate > HPDev_UpdateInterval) do

		HPDev_Func_Flag = "Determine_Range"
		HPDev_Loader()
		TimeSinceLastUpdate = TimeSinceLastUpdate - HPDev_UpdateInterval
		
	end
	
end

 -- Slash command setup
SLASH_HaloPro1, SLASH_HaloPro2 = '/hp', '/halopro';
function SlashCmdList.HaloPro(msg, editbox)
	local command, rest = msg:match("^(%S*)%s*(.-)$")
	if command == "defaults" and #rest >=0 then
		StaticPopup_Show ("RESETING_TO_DEFAULTS")
		collectgarbage("collect") -- Force a collection
		
	elseif command == "lock" and #rest >=0 then
		HP_f:EnableMouse(false)	
		HP_f:RegisterForDrag() -- disable moving
		print("HaloPro Locked")
	
	elseif command == "unlock" and #rest >=0 then
		HP_f:EnableMouse(true)
		HP_f:RegisterForDrag("LeftButton") -- enable moving
		print("HaloPro Unlocked")
	
	elseif command == "options" and #rest >=0 then
		HP_Opt_f:ClearAllPoints()
		HP_Opt_f:SetPoint("CENTER",0,-15,UIParent)
		if not HP_Opt_f:IsVisible() then
			HP_f:EnableMouse(true)
			HP_f:RegisterForDrag("LeftButton") -- enable moving
			print("HaloPro Unlocked")
			
			HPDev_WA_Title:SetText('WeakAura Mode is Enabled')
			
			HPDev_WA_StringCC:Disable()
			HPDev_WA_StringDS:Disable()
			HPDev_WA_StringHalo:Disable()
			
			HPDev_WA_StringCC:SetAlpha(0.5)
			HPDev_WA_StringDS:SetAlpha(0.5)
			HPDev_WA_StringHalo:SetAlpha(0.5)
			
			HPDev_WA_StringCC:HighlightText(0,0)
			HPDev_WA_StringDS:HighlightText(0,0)
			HPDev_WA_StringHalo:HighlightText(0,0)
			
			HP_Opt_f:Show() 
			if HPDev_WAMode == 1 then 
				HP_TP_t:SetAlpha(0)
				HPDev_WA_Title:SetAlpha(1) 
			else 
				HP_TP_t:SetAlpha(1)
				HPDev_WA_Title:SetAlpha(0) 
			end
			HPDev_PrevNext_Flag = 1
		elseif HP_Opt_f:IsVisible() then 
			if HPDev_AutoLock == 1 then 
				HP_f:EnableMouse(false)	
				HP_f:RegisterForDrag() 	-- disable moving
			end 
			print("HaloPro Locked")
			HP_Opt_f:Hide() 
			collectgarbage("collect") -- Force a collection
		end
	else
		HP_Opt_f:ClearAllPoints()
		HP_Opt_f:SetPoint("CENTER",0,-15,UIParent)
		if not HP_Opt_f:IsVisible() then 
			HP_f:EnableMouse(true)
			HP_f:RegisterForDrag("LeftButton") -- enable moving
			print("HaloPro Unlocked")
			HPDev_WA_Title:SetText('WeakAura Mode is Enabled')
			
			HPDev_WA_StringCC:Disable()
			HPDev_WA_StringDS:Disable()
			HPDev_WA_StringHalo:Disable()
			
			HPDev_WA_StringCC:SetAlpha(0.5)
			HPDev_WA_StringDS:SetAlpha(0.5)
			HPDev_WA_StringHalo:SetAlpha(0.5)
			
			HPDev_WA_StringCC:HighlightText(0,0)
			HPDev_WA_StringDS:HighlightText(0,0)
			HPDev_WA_StringHalo:HighlightText(0,0)
			
			HP_Opt_f:Show() 
			if HPDev_WAMode == 1 then 
				HP_TP_t:SetAlpha(0)
				HPDev_WA_Title:SetAlpha(1) 
			else 
				HP_TP_t:SetAlpha(1)
				HPDev_WA_Title:SetAlpha(0) 
			end
			HPDev_PrevNext_Flag = 1
		elseif HP_Opt_f:IsVisible() then 
			if HPDev_AutoLock == 1 then 
				HP_f:EnableMouse(false)	
				HP_f:RegisterForDrag() 	-- disable moving
			end 
			print("HaloPro Locked")
			HP_Opt_f:Hide() 
			collectgarbage("collect") -- Force a collection
		end
	
	end
end