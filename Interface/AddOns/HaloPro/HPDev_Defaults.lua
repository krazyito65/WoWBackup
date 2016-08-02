local _, class = UnitClass("player")
if class ~= "PRIEST" then
	-- No point in running HP on non-priest
	HPDev_OnLoad = function() end
	return
end

-- Defaults
default_HPDev_AutoLock = 1
default_HPDev_Strata = "MEDIUM"
default_HPDev_Width = 250
default_HPDev_Height = 10
default_HPDev_point = "CENTER"
default_HPDev_relativeTo = nil
default_HPDev_relavtivePoint = "CENTER"
default_HPDev_xOfs = 0
default_HPDev_yOfs = -300
default_HPDev_InCombatOnly = 0
default_HPDev_SoundOn = 1
default_HPDev_Sound = "MapPing"	
default_HPDev_CDWarn = 1
default_HPDev_FadeOutIN = 1
default_HPDev_AlwaysOn = 0
default_HPDev_OFFCD_Alpha = 1
default_HPDev_ONCD_Alpha = 0
default_HPDev_Fade_MsgMode_Flag = 1
default_HPDev_VertBar_Flag = 0
default_HPDev_Border_Thickness = -3
default_HPDev_Theme = "Shadow"
default_HPDev_Monitor_CC = 1
default_HPDev_Monitor_DS = 1
default_HPDev_Monitor_Halo = 1
default_HPDev_MouseOverRide = 0
default_HPDev_WAMode = 0


local function HPDev_Load_Defaults()
	-- Set all variables to Default
	HPDev_AutoLock = default_HPDev_AutoLock
	HPDev_Strata = default_HPDev_Strata
	HPDev_Width = default_HPDev_Width
	HPDev_Height = default_HPDev_Height
	HPDev_point = default_HPDev_point
	HPDev_relativeTo = default_HPDev_relativeTo
	HPDev_relavtivePoint = default_HPDev_relavtivePoint
	HPDev_xOfs = default_HPDev_xOfs
	HPDev_yOfs = default_HPDev_yOfs
	HPDev_InCombatOnly = default_HPDev_InCombatOnly
	HPDev_SoundOn = default_HPDev_SoundOn
	HPDev_CDWarn = default_HPDev_CDWarn
	HPDev_FadeOutIN = default_HPDev_FadeOutIN
	HPDev_ONCD_Alpha = default_HPDev_ONCD_Alpha
	HPDev_OFFCD_Alpha = default_HPDev_OFFCD_Alpha
	HPDev_AlwaysOn = default_HPDev_AlwaysOn
	HPDev_Fade_MsgMode_Flag = default_HPDev_Fade_MsgMode_Flag
	HPDev_VertBar_Flag = default_HPDev_VertBar_Flag
	HPDev_Border_Thickness = default_HPDev_Border_Thickness
	HPDev_Theme = default_HPDev_Theme
	HPDev_Monitor_CC = default_HPDev_Monitor_CC
	HPDev_Monitor_DS = default_HPDev_Monitor_DS
	HPDev_Monitor_Halo = default_HPDev_Monitor_Halo
	HPDev_MouseOverRide = default_HPDev_MouseOverRide
	HPDev_WAMode = default_HPDev_WAMode
	HaloPro_WA_Mode = ""
	
	-- Flag Theme Update
	HPDev_Theme_Number = 0
	HPDev_PrevNext_Flag = 1
	
	-- Apply Size and Position defaults
	HPDev_UserWidth_Box:SetText((ceil(HPDev_Width - 0.5)))
	HPDev_UserHeight_Box:SetText((ceil(HPDev_Height - 0.5)))
	HPDev_UserBorderSize_Box:SetText((7 + ("%.2f"):format(HPDev_Border_Thickness)))
	HPDev_Opt_Flag = "HPDev_Apply_Size_Position"
	HPDev_Opt_Loader()
	
	-- Apply Orientation
	HPDev_Func_Flag = "Rotate_90"
	HPDev_Loader()
	
	-- Apply Default values to buttons
	HPDev_Opt_Flag = "HPDev_Load_Button_Value"
	HPDev_Opt_Loader()

end

local function HPDev_Check_Defaults()
	-- Size
	if HPDev_Width == nil or HPDev_Width == "" then HPDev_Width = default_HPDev_Width end
	if HPDev_Height == nil or HPDev_Height == "" then HPDev_Height = default_HPDev_Height end
	-- Positioning
	if HPDev_Strata == nil or HPDev_Strata == "" then HPDev_Strata = default_HPDev_Strata end
	if HPDev_point == nil or HPDev_point == "" then HPDev_point = default_HPDev_point end
	if HPDev_relativeTo == nil or HPDev_relativeTo == "" then HPDev_relativeTo = default_HPDev_relativeTo end
	if HPDev_relavtivePoint == nil or HPDev_relativePoint == "" then HPDev_relativePoint = default_HPDev_relativePoint end
	if HPDev_xOfs == nil or HPDev_xOfs == "" then HPDev_xOfs = default_HPDev_xOfs end
	if HPDev_yOfs == nil or HPDev_yOfs == "" then HPDev_yOfs = default_HPDev_yOfs end
	-- Options
	if HPDev_AutoLock == nil or HPDev_AutoLock == "" then HPDev_AutoLock = default_HPDev_AutoLock end
	if HPDev_InCombatOnly == nil or HPDev_InCombatOnly == "" then HPDev_InCombatOnly = default_HPDev_InCombatOnly end
	if HPDev_SoundOn == nil or HPDev_SoundOn == "" then HPDev_SoundOn = default_HPDev_SoundOn end
	if HPDev_Sound == nil or HPDev_Sound == "" then HPDev_Sound = default_HPDev_Sound end
	if HPDev_CDWarn == nil or HPDev_CDWarn == "" then HPDev_CDWarn = default_HPDev_CDWarn end
	if HPDev_FadeOutIN == nil or HPDev_FadeOutIN == "" then HPDev_FadeOutIN = default_HPDev_FadeOutIN end
	if HPDev_AlwaysOn == nil or HPDev_AlwaysOn == "" then HPDev_AlwaysOn = default_HPDev_AlwaysOn end
	if HPDev_ONCD_Alpha == nil or HPDev_ONCD_Alpha == "" then HPDev_ONCD_Alpha = default_HPDev_ONCD_Alpha end
	if HPDev_OFFCD_Alpha == nil or HPDev_OFFCD_Alpha == "" then HPDev_OFFCD_Alpha = default_HPDev_OFFCD_Alpha end
	if HPDev_Fade_MsgMode_Flag == nil or HPDev_Fade_MsgMode_Flag == "" then HPDev_Fade_MsgMode_Flag = default_HPDev_Fade_MsgMode_Flag end
	if HPDev_VertBar_Flag == nil or HPDev_VertBar_Flag == "" then HPDev_VertBar_Flag = default_HPDev_VertBar_Flag end
	if HPDev_MouseOverRide == nil or HPDev_MouseOverRide == "" then HPDev_MouseOverRide = default_HPDev_MouseOverRide end
	if HPDev_WAMode == nil or HPDev_WAMode == "" then HPDev_WAMode = default_HPDev_WAMode end
	-- What talents are being monitored
	if HPDev_Monitor_CC == nil or HPDev_Monitor_CC == "" then HPDev_Monitor_CC = default_HPDev_Monitor_CC end
	if HPDev_Monitor_DS == nil or HPDev_Monitor_DS == "" then HPDev_Monitor_DS = default_HPDev_Monitor_DS end
	if HPDev_Monitor_Halo == nil or HPDev_Monitor_Halo == "" then HPDev_Monitor_Halo = default_HPDev_Monitor_Halo end
	-- Theme
	if HPDev_Border_Thickness == nil or HPDev_Border_Thickness == "" then HPDev_Border_Thickness = default_HPDev_Border_Thickness end
	if HPDev_Theme == nil or HPDev_Theme == "" then HPDev_Theme = default_HPDev_Theme end
		
end

function HPDev_Defaults_Loader()
	if HPDev_Defaults_Flag == "Check_Defaults" then HPDev_Check_Defaults() end
	if HPDev_Defaults_Flag == "Load_Defaults" then HPDev_Load_Defaults() end
end
