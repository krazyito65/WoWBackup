local _, class = UnitClass("player")
if class ~= "PRIEST" then
	-- No point in running HP on non-priest
	HPDev_OnLoad = function() end
	return
end

-- Setup some global variables

-- Setup some local variables
local HPDev_Opt_Msg = "HaloPro Options"

-- Setup some local tables
local HPDev_Strata_Table = {}
local HPDev_Theme_Table = {}

local function Reset_HPDev_Options_Title()
	HPDev_Opt_Title:SetText('HaloPro Options')
	collectgarbage("collect") -- Force a collection
end

local function HPDev_Load_Button_Value()
	
---------- < start of Show Only in Combat button > ----------
	if HPDev_InCombatOnly == 1 then	
		HPDev_In_Combat_checkButton:SetChecked(true)
		HPDev_In_Combat_checkButton.text:SetFont("Fonts\\FRIZQT__.TTF", 12, "THICKOUTLINE")
		HPDev_In_Combat_checkButton.text:SetTextColor(1.0,1.0,1.0,1.0)
		HPDev_In_Combat_checkButton.text:SetText("Showing ONLY when IN combat")
	else
		HPDev_In_Combat_checkButton:SetChecked(false)
		HPDev_In_Combat_checkButton.text:SetFont("Fonts\\FRIZQT__.TTF", 12, "THICKOUTLINE")
		HPDev_In_Combat_checkButton.text:SetTextColor(1.0,1.0,1.0,1.0)
		HPDev_In_Combat_checkButton.text:SetText("Check to show ONLY when in combat")
	end
	
	HPDev_In_Combat_checkButton:SetScript("OnClick", function(self)
		isIn_Combat_checkButton = self:GetChecked();
		if isIn_Combat_checkButton == false then
			HPDev_InCombatOnly = 0
			HPDev_In_Combat_checkButton:SetChecked(false)
			HPDev_In_Combat_checkButton.text:SetText("Check to show ONLY when in combat")
			HPDev_Opt_Msg = "Only in Combat: Disabled"
		else
			HPDev_InCombatOnly = 1
			HPDev_In_Combat_checkButton:SetChecked(true)
			HPDev_In_Combat_checkButton.text:SetText("Showing ONLY when IN combat")
			HPDev_Opt_Msg = "Only in Combat: Enabled"
		end
		HPDev_Opt_Title:SetText(HPDev_Opt_Msg)
		HPDev_timer:Cancel()
		HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
		
	end)
-------------------------------------------------------------
-- < start of Disable fade in during cooldown (always on) button > --
	if HPDev_FadeOutIN == 0 then	
		HPDev_FadeOutIN_checkButton:SetChecked(true)
		HPDev_FadeOutIN_checkButton.text:SetFont("Fonts\\FRIZQT__.TTF", 12, "THICKOUTLINE")
		HPDev_FadeOutIN_checkButton.text:SetTextColor(1.0,1.0,1.0,1.0)
		HPDev_FadeOutIN_checkButton.text:SetText("Keep visible even when spell is on cooldown")
	else
		HPDev_FadeOutIN_checkButton:SetChecked(false)
		HPDev_FadeOutIN_checkButton.text:SetFont("Fonts\\FRIZQT__.TTF", 12, "THICKOUTLINE")
		HPDev_FadeOutIN_checkButton.text:SetTextColor(1.0,1.0,1.0,1.0)
		HPDev_FadeOutIN_checkButton.text:SetText("Check to disable fading in during cooldown")
	end
	
	HPDev_FadeOutIN_checkButton:SetScript("OnClick", function(self)
		isFadeOutIN_checkButton = self:GetChecked();
		if isFadeOutIN_checkButton == false then
			HPDev_FadeOutIN = 1
			HPDev_FadeOutIN_checkButton:SetChecked(false)
			HPDev_FadeOutIN_checkButton.text:SetText("Check to disable fading in during cooldown")
			HPDev_Opt_Msg = "Keep Visible During Cooldown: Disabled"
		else
			HPDev_FadeOutIN = 0
			HPDev_FadeOutIN_checkButton:SetChecked(true)
			HPDev_FadeOutIN_checkButton.text:SetText("Keep visible even when spell is on cooldown")
			HPDev_Opt_Msg = "Keep Visible During Cooldown: Enabled"
		end
		HPDev_Opt_Title:SetText(HPDev_Opt_Msg)
		HPDev_timer:Cancel()
		HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
		
	end)
-------------------------------------------------------------
-------- < start of Always On / Never Hide button  > --------
	if HPDev_AlwaysOn == 1 then	
		HPDev_AlwaysOn_checkButton:SetChecked(true)
		HPDev_AlwaysOn_checkButton.text:SetFont("Fonts\\FRIZQT__.TTF", 12, "THICKOUTLINE")
		HPDev_AlwaysOn_checkButton.text:SetTextColor(1.0,1.0,1.0,1.0)
		HPDev_AlwaysOn_checkButton.text:SetText("Will be visible without a target")
	else
		HPDev_AlwaysOn_checkButton:SetChecked(false)
		HPDev_AlwaysOn_checkButton.text:SetFont("Fonts\\FRIZQT__.TTF", 12, "THICKOUTLINE")
		HPDev_AlwaysOn_checkButton.text:SetTextColor(1.0,1.0,1.0,1.0)
		HPDev_AlwaysOn_checkButton.text:SetText("Check to keep visible without a target")
	end
	
	HPDev_AlwaysOn_checkButton:SetScript("OnClick", function(self)
		isAlwaysOn_checkButton = self:GetChecked();
		if isAlwaysOn_checkButton == false then
			HPDev_AlwaysOn = 0
			HPDev_AlwaysOn_checkButton:SetChecked(false)
			HPDev_AlwaysOn_checkButton.text:SetText("Check to keep visible without a target")
			HPDev_Opt_Msg = "Keep Visible Without a Target: Disabled"
		else
			HPDev_AlwaysOn = 1
			HPDev_AlwaysOn_checkButton:SetChecked(true)
			HPDev_AlwaysOn_checkButton.text:SetText("Will be visible without a target")
			HPDev_Opt_Msg = "Keep Visible Without a Target: Enabled"
		end
		HPDev_Opt_Title:SetText(HPDev_Opt_Msg)
		HPDev_timer:Cancel()
		HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
		
	end)
-------------------------------------------------------------
-------- < start of Rotate 90 Degrees button  > --------
	if HPDev_VertBar_Flag == 1 then	
		HPDev_Rotate90_checkButton:SetChecked(true)
		HPDev_Rotate90_checkButton.text:SetFont("Fonts\\FRIZQT__.TTF", 12, "THICKOUTLINE")
		HPDev_Rotate90_checkButton.text:SetTextColor(1.0,1.0,1.0,1.0)
		HPDev_Rotate90_checkButton.text:SetText("Rotated 90 degrees (vertical bar/icon)")
	else
		HPDev_Rotate90_checkButton:SetChecked(false)
		HPDev_Rotate90_checkButton.text:SetFont("Fonts\\FRIZQT__.TTF", 12, "THICKOUTLINE")
		HPDev_Rotate90_checkButton.text:SetTextColor(1.0,1.0,1.0,1.0)
		HPDev_Rotate90_checkButton.text:SetText("Check to rotate 90 degrees (ie vertical)")
	end
	
	HPDev_Rotate90_checkButton:SetScript("OnClick", function(self)
		isRotate90_checkButton = self:GetChecked();
		if isRotate90_checkButton == false then
			HPDev_VertBar_Flag = 0
			HPDev_Rotate90_checkButton:SetChecked(false)
			HPDev_Rotate90_checkButton.text:SetText("Check to rotate 90 degrees (ie vertical)")
			HPDev_Opt_Msg = "Rotated Bar/Icon 90 Degrees: Disabled"
			_G[HPDev_WidthSlider:GetName() .. 'Text']:SetText('Width')     -- Sets the "title" text (top-centre of slider).
			_G[HPDev_HeightSlider:GetName() .. 'Text']:SetText('Height')     -- Sets the "title" text (top-centre of slider).
			_G[HPDev_WidthSlider:GetName() .. 'High']:SetText('wider')     -- Sets the right-side slider text (default is "High").
		else
			HPDev_VertBar_Flag = 1
			HPDev_Rotate90_checkButton:SetChecked(true)
			HPDev_Rotate90_checkButton.text:SetText("Rotated 90 degrees (vertical bar/icon)")
			HPDev_Opt_Msg = "Rotated Bar/Icon 90 Degrees: Enabled"
			_G[HPDev_WidthSlider:GetName() .. 'Text']:SetText('Height')     -- Sets the "title" text (top-centre of slider).
			_G[HPDev_HeightSlider:GetName() .. 'Text']:SetText('Width')     -- Sets the "title" text (top-centre of slider).
			_G[HPDev_WidthSlider:GetName() .. 'High']:SetText('taller')     -- Sets the right-side slider text (default is "High").
		end
		HPDev_Opt_Title:SetText(HPDev_Opt_Msg)
		HPDev_timer:Cancel()
		HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
		HPDev_Func_Flag = "Rotate_90"
		HPDev_Loader()
	end)
-------------------------------------------------------------
------ < start of AutoLock button > -------
	if HPDev_AutoLock == 1 then	
		HPDev_AutoLock_checkButton:SetChecked(true)
		HPDev_AutoLock_checkButton.text:SetFont("Fonts\\FRIZQT__.TTF", 12, "THICKOUTLINE")
		HPDev_AutoLock_checkButton.text:SetTextColor(1.0,1.0,1.0,1.0)
		HPDev_AutoLock_checkButton.text:SetText("Lock position when option panel is closed")
	else
		HPDev_AutoLock_checkButton:SetChecked(false)
		HPDev_AutoLock_checkButton.text:SetFont("Fonts\\FRIZQT__.TTF", 12, "THICKOUTLINE")
		HPDev_AutoLock_checkButton.text:SetTextColor(1.0,1.0,1.0,1.0)
		HPDev_AutoLock_checkButton.text:SetText("Check to auto lock HaloPro")
	end
	
	HPDev_AutoLock_checkButton:SetScript("OnClick", function(self)
		isAutoLock_checkButton = self:GetChecked();
		if isAutoLock_checkButton == false then
			HPDev_AutoLock = 0
			HPDev_AutoLock_checkButton:SetChecked(false)
			HPDev_AutoLock_checkButton.text:SetText("Check to auto lock HaloPro")
			HPDev_Opt_Msg = "Auto Lock Position: Disabled"
		else
			HPDev_AutoLock = 1
			HPDev_AutoLock_checkButton:SetChecked(true)
			HPDev_AutoLock_checkButton.text:SetText("Lock position when option panel is closed")
			HPDev_Opt_Msg = "Auto Lock Position: Enabled"
		end
		HPDev_Opt_Title:SetText(HPDev_Opt_Msg)
		HPDev_timer:Cancel()
		HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
		
	end)
-------------------------------------------------------------
------ < start of Sound when in Proper Range button > -------
	if HPDev_SoundOn == 1 then	
		HPDev_SoundOn_checkButton:SetChecked(true)
		HPDev_SoundOn_checkButton.text:SetFont("Fonts\\FRIZQT__.TTF", 12, "THICKOUTLINE")
		HPDev_SoundOn_checkButton.text:SetTextColor(1.0,1.0,1.0,1.0)
		HPDev_SoundOn_checkButton.text:SetText("Play sound when in proper range")
	else
		HPDev_SoundOn_checkButton:SetChecked(false)
		HPDev_SoundOn_checkButton.text:SetFont("Fonts\\FRIZQT__.TTF", 12, "THICKOUTLINE")
		HPDev_SoundOn_checkButton.text:SetTextColor(1.0,1.0,1.0,1.0)
		HPDev_SoundOn_checkButton.text:SetText("Check to play sound when in proper range")
	end
	
	HPDev_SoundOn_checkButton:SetScript("OnClick", function(self)
		isSoundOn_checkButton = self:GetChecked();
		if isSoundOn_checkButton == false then
			HPDev_SoundOn = 0
			HPDev_SoundOn_checkButton:SetChecked(false)
			HPDev_SoundOn_checkButton.text:SetText("Check to play sound when in proper range")
			HPDev_Opt_Msg = "Play Sound In Proper Range: Disabled"
		else
			HPDev_SoundOn = 1
			HPDev_SoundOn_checkButton:SetChecked(true)
			PlaySound(HPDev_Sound,"master")
			HPDev_SoundOn_checkButton.text:SetText("Play sound when in proper range")
			HPDev_Opt_Msg = "Play Sound In Proper Range: Enabled"
		end
		HPDev_Opt_Title:SetText(HPDev_Opt_Msg)
		HPDev_timer:Cancel()
		HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
		
	end)
-------------------------------------------------------------
------ < start of Warn when Spell is OFF Cooldown button > -------
	if HPDev_CDWarn == 1 then	
		HPDev_CDWarn_checkButton:SetChecked(true)
		HPDev_CDWarn_checkButton.text:SetFont("Fonts\\FRIZQT__.TTF", 12, "THICKOUTLINE")
		HPDev_CDWarn_checkButton.text:SetTextColor(1.0,1.0,1.0,1.0)
		HPDev_CDWarn_checkButton.text:SetText("Warn when spell cooldown finishes")
	else
		HPDev_CDWarn_checkButton:SetChecked(false)
		HPDev_CDWarn_checkButton.text:SetFont("Fonts\\FRIZQT__.TTF", 12, "THICKOUTLINE")
		HPDev_CDWarn_checkButton.text:SetTextColor(1.0,1.0,1.0,1.0)
		HPDev_CDWarn_checkButton.text:SetText("Check to warn when spell cooldown finishes")
	end
	
	HPDev_CDWarn_checkButton:SetScript("OnClick", function(self)
		isCDWarn_checkButton = self:GetChecked();
		if isCDWarn_checkButton == false then
			HPDev_CDWarn = 0
			HPDev_CDWarn_checkButton:SetChecked(false)
			HPDev_CDWarn_checkButton.text:SetText("Check to warn when spell cooldown finishes")
			HPDev_Opt_Msg = "Warn When Cooldown Finishes: Disabled"
		else
			HPDev_CDWarn = 1
			HPDev_CDWarn_checkButton:SetChecked(true)
			HPDev_CDWarn_checkButton.text:SetText("Warn when spell cooldown finishes")
			HPDev_Opt_Msg = "Warn When Cooldown Finishes: Enabled"
		end
		HPDev_Opt_Title:SetText(HPDev_Opt_Msg)
		HPDev_timer:Cancel()
		HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
		
	end)
-------------------------------------------------------------
------ < start of disable mode splash button > -------
	if HPDev_Fade_MsgMode_Flag == 1 then	
		HPDev_Fade_MsgMode_Flag_checkButton:SetChecked(true)
		HPDev_Fade_MsgMode_Flag_checkButton.text:SetFont("Fonts\\FRIZQT__.TTF", 12, "THICKOUTLINE")
		HPDev_Fade_MsgMode_Flag_checkButton.text:SetTextColor(1.0,1.0,1.0,1.0)
		HPDev_Fade_MsgMode_Flag_checkButton.text:SetText("Displaying mode when changing talents")
	else
		HPDev_Fade_MsgMode_Flag_checkButton:SetChecked(false)
		HPDev_Fade_MsgMode_Flag_checkButton.text:SetFont("Fonts\\FRIZQT__.TTF", 12, "THICKOUTLINE")
		HPDev_Fade_MsgMode_Flag_checkButton.text:SetTextColor(1.0,1.0,1.0,1.0)
		HPDev_Fade_MsgMode_Flag_checkButton.text:SetText("Check to display mode on talent change")
	end
	
	HPDev_Fade_MsgMode_Flag_checkButton:SetScript("OnClick", function(self)
		isFade_MsgMode_Flag_checkButton = self:GetChecked();
		if isFade_MsgMode_Flag_checkButton == false then
			HPDev_Fade_MsgMode_Flag = 0
			HPDev_Fade_MsgMode_Flag_checkButton:SetChecked(false)
			HPDev_Fade_MsgMode_Flag_checkButton.text:SetText("Check to display mode on talent change")
			HPDev_Opt_Msg = "Display Mode on Talent Change: Disabled"
		else
			HPDev_Fade_MsgMode_Flag = 1
			HPDev_Fade_MsgMode_Flag_checkButton:SetChecked(true)
			HPDev_Fade_MsgMode_Flag_checkButton.text:SetText("Displaying mode when changing talents")
			HPDev_Fade_MsgMode()
			HPDev_Opt_Msg = "Display Mode on Talent Change: Enabled"
		end
		HPDev_Opt_Title:SetText(HPDev_Opt_Msg)
		HPDev_timer:Cancel()
		HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
		
	end)
-------------------------------------------------------------
----- < start of middle option handlers > -------
-- OnValueChanged Handler Width
	HPDev_WidthSlider:SetValue(HPDev_Width)
	_G[HPDev_WidthSlider:GetName() .. 'Low']:SetText('shorter')    -- Sets the left-side slider text (default is "Low").
	_G[HPDev_WidthSlider:GetName() .. 'Low']:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE")
	_G[HPDev_WidthSlider:GetName() .. 'Low']:SetTextColor(1.0,1.0,1.0,1.0)
	_G[HPDev_WidthSlider:GetName() .. 'High']:SetText('wider')     -- Sets the right-side slider text (default is "High").
	_G[HPDev_WidthSlider:GetName() .. 'High']:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE")
	_G[HPDev_WidthSlider:GetName() .. 'High']:SetTextColor(1.0,1.0,1.0,1.0)
	if HPDev_VertBar_Flag == 1 then
		_G[HPDev_WidthSlider:GetName() .. 'Text']:SetText('Height')     -- Sets the "title" text (top-centre of slider).
	else
		_G[HPDev_WidthSlider:GetName() .. 'Text']:SetText('Width')     -- Sets the "title" text (top-centre of slider).
	end
	_G[HPDev_WidthSlider:GetName() .. 'Text']:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE")
	_G[HPDev_WidthSlider:GetName() .. 'Text']:SetTextColor(1.0,1.0,1.0,1.0)

	HPDev_WidthSlider:SetScript("OnValueChanged", function(self, event)
		HPDev_Width = event
		HPDev_UserWidth_Box:SetText((ceil(HPDev_Width - 0.5)))
		HPDev_Opt_Title:SetText('HaloPro Width: '..ceil(HPDev_Width - 0.5))
		HPDev_timer:Cancel()
		HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
		HPDev_Opt_Flag = "HPDev_Apply_Size_Position"
		HPDev_Opt_Loader()
		
	end)
	
	HPDev_UserWidth_Box:SetScript("OnEscapePressed", function(self)
		HPDev_UserWidth_Box:ClearFocus() 
		HPDev_UserWidth_Box:SetText(ceil(HPDev_Width - 0.5))
		HPDev_Opt_Title:SetText('HaloPro Width: '..ceil(HPDev_Width - 0.5))
		HPDev_timer:Cancel()
		HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
	end)
	HPDev_UserWidth_Box:SetScript("OnEnterPressed", function(self)
		HPDev_UserWidth_Box:ClearFocus() 
		if tonumber(HPDev_UserWidth_Box:GetText()) then HPDev_Width = tonumber(HPDev_UserWidth_Box:GetText()) end
		HPDev_UserWidth_Box:SetText(ceil(HPDev_Width - 0.5))
		HPDev_WidthSlider:SetValue(ceil(HPDev_Width - 0.5))
				
	end)	
	
-- OnValueChanged Handler Height
	HPDev_HeightSlider:SetValue(HPDev_Height)
	_G[HPDev_HeightSlider:GetName() .. 'Low']:SetText('thinner')    -- Sets the left-side slider text (default is "Low").
	_G[HPDev_HeightSlider:GetName() .. 'Low']:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE")
	_G[HPDev_HeightSlider:GetName() .. 'Low']:SetTextColor(1.0,1.0,1.0,1.0)
	_G[HPDev_HeightSlider:GetName() .. 'High']:SetText('thicker')     -- Sets the right-side slider text (default is "High").
	_G[HPDev_HeightSlider:GetName() .. 'High']:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE")
	_G[HPDev_HeightSlider:GetName() .. 'High']:SetTextColor(1.0,1.0,1.0,1.0)
	if HPDev_VertBar_Flag == 1 then
		_G[HPDev_HeightSlider:GetName() .. 'Text']:SetText('Width')     -- Sets the "title" text (top-centre of slider).
	else
		_G[HPDev_HeightSlider:GetName() .. 'Text']:SetText('Height')     -- Sets the "title" text (top-centre of slider).
	end
	_G[HPDev_HeightSlider:GetName() .. 'Text']:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE")
	_G[HPDev_HeightSlider:GetName() .. 'Text']:SetTextColor(1.0,1.0,1.0,1.0)

	HPDev_HeightSlider:SetScript("OnValueChanged", function(self, event)
		HPDev_Height = event
		HPDev_UserHeight_Box:SetText((ceil(HPDev_Height - 0.5)))
		HPDev_Opt_Title:SetText('HaloPro Height: '..ceil(HPDev_Height - 0.5))
		HPDev_timer:Cancel()
		HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
		HPDev_Opt_Flag = "HPDev_Apply_Size_Position"
		HPDev_Opt_Loader()

    end)
	
	HPDev_UserHeight_Box:SetScript("OnEscapePressed", function(self)
		HPDev_UserHeight_Box:ClearFocus() 
		HPDev_UserHeight_Box:SetText(ceil(HPDev_Height - 0.5))
		HPDev_Opt_Title:SetText('HaloPro Height: '..ceil(HPDev_Height - 0.5))
		HPDev_timer:Cancel()
		HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
	end)
	HPDev_UserHeight_Box:SetScript("OnEnterPressed", function(self)
		HPDev_UserHeight_Box:ClearFocus() 
		if tonumber(HPDev_UserHeight_Box:GetText()) then HPDev_Height = tonumber(HPDev_UserHeight_Box:GetText()) end
		HPDev_UserHeight_Box:SetText(ceil(HPDev_Height - 0.5))
		HPDev_HeightSlider:SetValue(ceil(HPDev_Height - 0.5))
				
	end)
	
-- OnValueChanged Frame Strata
	HPDev_Strata_Table[1] = "BACKGROUND"
	HPDev_Strata_Table[2] = "LOW"
	HPDev_Strata_Table[3] = "MEDIUM"
	HPDev_Strata_Table[4] = "HIGH"
	HPDev_Strata_Table[5] = "DIALOG"
	HPDev_Strata_Table[6] = "FULLSCREEN"
	HPDev_Strata_Table[7] = "FULLSCREEN_DIALOG"
	HPDev_Strata_Table[8] = "TOOLTIP"	
	
	for s=0,8 do
		if HPDev_Strata_Table[s] == HPDev_Strata then HPDev_Set_Strata = s end
	end
	
	HPDev_StrataSlider:SetValue(HPDev_Set_Strata)
	_G[HPDev_StrataSlider:GetName() .. 'Low']:SetText('lowest')    -- Sets the left-side slider text (default is "Low").
	_G[HPDev_StrataSlider:GetName() .. 'Low']:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE")
	_G[HPDev_StrataSlider:GetName() .. 'Low']:SetTextColor(1.0,1.0,1.0,1.0)
	_G[HPDev_StrataSlider:GetName() .. 'High']:SetText('highest')     -- Sets the right-side slider text (default is "High").
	_G[HPDev_StrataSlider:GetName() .. 'High']:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE")
	_G[HPDev_StrataSlider:GetName() .. 'High']:SetTextColor(1.0,1.0,1.0,1.0)
	_G[HPDev_StrataSlider:GetName() .. 'Text']:SetText('Strata Level')     -- Sets the "title" text (top-centre of slider).
	_G[HPDev_StrataSlider:GetName() .. 'Text']:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE")
	_G[HPDev_StrataSlider:GetName() .. 'Text']:SetTextColor(1.0,1.0,1.0,1.0)
	HPDev_StrataSlider:SetScript("OnValueChanged", function(self, event)
		HPDev_Set_Strata = event
		HP_f:SetFrameStrata(HPDev_Strata_Table[HPDev_Set_Strata])
		HPDev_Strata = HPDev_Strata_Table[HPDev_Set_Strata]
		HPDev_Opt_Title:SetText('Strata Level: '..HPDev_Strata_Table[HPDev_Set_Strata])
		HPDev_timer:Cancel()
		HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
    end)
---------------------------------------------------------------
-- OnValueChanged Border Thickness
	HPDev_BorderThicknessSlider:SetValue(HPDev_Border_Thickness)
	_G[HPDev_BorderThicknessSlider:GetName() .. 'Low']:SetText('thinner')    -- Sets the left-side slider text (default is "Low").
	_G[HPDev_BorderThicknessSlider:GetName() .. 'Low']:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE")
	_G[HPDev_BorderThicknessSlider:GetName() .. 'Low']:SetTextColor(1.0,1.0,1.0,1.0)
	_G[HPDev_BorderThicknessSlider:GetName() .. 'High']:SetText('thicker')     -- Sets the right-side slider text (default is "High").
	_G[HPDev_BorderThicknessSlider:GetName() .. 'High']:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE")
	_G[HPDev_BorderThicknessSlider:GetName() .. 'High']:SetTextColor(1.0,1.0,1.0,1.0)
	_G[HPDev_BorderThicknessSlider:GetName() .. 'Text']:SetText('Border Size')     -- Sets the "title" text (top-centre of slider).
	_G[HPDev_BorderThicknessSlider:GetName() .. 'Text']:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE")
	_G[HPDev_BorderThicknessSlider:GetName() .. 'Text']:SetTextColor(1.0,1.0,1.0,1.0)
	HPDev_BorderThicknessSlider:SetScript("OnValueChanged", function(self, event)
		if HPDev_Run_Settings_Once_Only == 1 then
			HPDev_Run_Settings_Once_Only = 0
		else
			HPDev_Border_Thickness = event
			local temp_BT = (7 + ("%.2f"):format(HPDev_Border_Thickness))
			HPDev_UserBorderSize_Box:SetText(temp_BT)
			HPDev_Opt_Title:SetText('Border Thickness: '..temp_BT)
			HPDev_timer:Cancel()
			HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
			HPDev_Theme_Flag = "Reset_Border"
			HPDev_Theme_Loader()
		end
    end)
	
	HPDev_UserBorderSize_Box:SetScript("OnEscapePressed", function(self)
		HPDev_UserBorderSize_Box:ClearFocus() 
		HPDev_UserBorderSize_Box:SetText((7 + ("%.2f"):format(HPDev_Border_Thickness)))
	end)
	HPDev_UserBorderSize_Box:SetScript("OnEnterPressed", function(self)
		HPDev_UserBorderSize_Box:ClearFocus() 
		if (tonumber(HPDev_UserBorderSize_Box:GetText())) then HPDev_Border_Thickness = (tonumber(HPDev_UserBorderSize_Box:GetText())) - 7 end
		local temp_BT = (7 + ("%.2f"):format(HPDev_Border_Thickness))
		HPDev_UserBorderSize_Box:SetText(temp_BT)
		HPDev_Opt_Title:SetText('Border Thickness: '..temp_BT)
		HPDev_timer:Cancel()
		HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
		HPDev_Theme_Flag = "Reset_Border"
		HPDev_Theme_Loader()
		HPDev_Run_Settings_Once_Only = 1
		HPDev_BorderThicknessSlider:SetValue(HPDev_Border_Thickness)
				
	end)

-- OnValueChanged Handler OnCD Alpha Slider
	HPDev_OnCD_Alpha_Slider:SetValue(HPDev_ONCD_Alpha)
	_G[HPDev_OnCD_Alpha_Slider:GetName() .. 'Low']:SetText('0%')    -- Sets the left-side slider text (default is "Low").
	_G[HPDev_OnCD_Alpha_Slider:GetName() .. 'Low']:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE")
	_G[HPDev_OnCD_Alpha_Slider:GetName() .. 'Low']:SetTextColor(1.0,1.0,1.0,1.0)
	_G[HPDev_OnCD_Alpha_Slider:GetName() .. 'High']:SetText('100%')     -- Sets the right-side slider text (default is "High").
	_G[HPDev_OnCD_Alpha_Slider:GetName() .. 'High']:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE")
	_G[HPDev_OnCD_Alpha_Slider:GetName() .. 'High']:SetTextColor(1.0,1.0,1.0,1.0)
	_G[HPDev_OnCD_Alpha_Slider:GetName() .. 'Text']:SetText('On CD Alpha')     -- Sets the "title" text (top-centre of slider).
	_G[HPDev_OnCD_Alpha_Slider:GetName() .. 'Text']:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE")
	_G[HPDev_OnCD_Alpha_Slider:GetName() .. 'Text']:SetTextColor(1.0,1.0,1.0,1.0)

	HPDev_OnCD_Alpha_Slider:SetScript("OnValueChanged", function(self, event)
		HPDev_ONCD_Alpha = event
		--HPDev_UserHeight_Box:SetText((ceil(HPDev_Height - 0.5)))
		HPDev_OnCD_Alpha_Slider:SetValue(HPDev_ONCD_Alpha)
		HPDev_Opt_Title:SetText('HaloPro On CD Alpha: '..(100 * (("%.2f"):format(HPDev_ONCD_Alpha)))..'%')
		HPDev_timer:Cancel()
		HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
	
    end)

-- OnValueChanged Handler OffCD Alpha Slider
	HPDev_OffCD_Alpha_Slider:SetValue(HPDev_OFFCD_Alpha)
	_G[HPDev_OffCD_Alpha_Slider:GetName() .. 'Low']:SetText('0%')    -- Sets the left-side slider text (default is "Low").
	_G[HPDev_OffCD_Alpha_Slider:GetName() .. 'Low']:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE")
	_G[HPDev_OffCD_Alpha_Slider:GetName() .. 'Low']:SetTextColor(1.0,1.0,1.0,1.0)
	_G[HPDev_OffCD_Alpha_Slider:GetName() .. 'High']:SetText('100%')     -- Sets the right-side slider text (default is "High").
	_G[HPDev_OffCD_Alpha_Slider:GetName() .. 'High']:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE")
	_G[HPDev_OffCD_Alpha_Slider:GetName() .. 'High']:SetTextColor(1.0,1.0,1.0,1.0)
	_G[HPDev_OffCD_Alpha_Slider:GetName() .. 'Text']:SetText('Off CD Alpha')     -- Sets the "title" text (top-centre of slider).
	_G[HPDev_OffCD_Alpha_Slider:GetName() .. 'Text']:SetFont("Fonts\\FRIZQT__.TTF", 12, "OUTLINE")
	_G[HPDev_OffCD_Alpha_Slider:GetName() .. 'Text']:SetTextColor(1.0,1.0,1.0,1.0)

	HPDev_OffCD_Alpha_Slider:SetScript("OnValueChanged", function(self, event)
		HPDev_OFFCD_Alpha = event
		--HPDev_UserHeight_Box:SetText((ceil(HPDev_Height - 0.5)))
		HPDev_OffCD_Alpha_Slider:SetValue(HPDev_OFFCD_Alpha)
		HPDev_Opt_Title:SetText('HaloPro Off CD Alpha: '..(100 * (("%.2f"):format(HPDev_OFFCD_Alpha)))..'%')
		HPDev_timer:Cancel()
		HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
	
    end)

	
---------------------------------------------------------------
	if HPDev_Theme_Number >= 4 and HPDev_WAMode == 0 then 
		HP_Theme_Preview:SetWidth(100)
		HP_Theme_Preview:SetHeight(100)
	else
		HP_Theme_Preview:SetWidth(550)
		HP_Theme_Preview:SetHeight(40)
	end

------ < Handler for Prev Theme Button > -------
	HPDev_Prev_Button:SetScript("OnClick", function(self)
		if HPDev_Theme_Number > 0 then HPDev_Theme_Number = HPDev_Theme_Number - 1 end
		if HPDev_Theme_Number < 0 then HPDev_Theme_Number = 0 end
		HPDev_Theme = HPDev_Theme_Table[HPDev_Theme_Number] 
		
		if HPDev_Theme_Number == 3 then
			HPDev_Load_Button_Value()
			
			HPDev_Width = HPDev_LastWidth
			HPDev_Height = HPDev_LastHeight
			
			HP_f:SetWidth(HPDev_Width)
			HP_f:SetHeight(HPDev_Height)
			
			HP_Theme_Preview:SetWidth(550)
			HP_Theme_Preview:SetHeight(40)
			
			-- Apply Size and Position defaults
			HPDev_Opt_Flag = "HPDev_Apply_Size_Position"
			HPDev_Opt_Loader()
			
			HPDev_Load_Button_Value()
			
		end
		
		HPDev_Opt_Title:SetText('Switching Theme To: '..HPDev_Theme)
		HPDev_timer:Cancel()
		HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
		
		HPDev_PrevNext_Flag = 1
		HPDev_Func_Flag = "Determine_Range"
		HPDev_Loader()
		
	end)
------ < Handler for Next Theme Button > -------
	HPDev_Next_Button:SetScript("OnClick", function(self)
		if HPDev_Theme_Number < 5 then HPDev_Theme_Number = HPDev_Theme_Number + 1 end
		if HPDev_Theme_Number > 5 then HPDev_Theme_Number = 5 end

		HPDev_Theme = HPDev_Theme_Table[HPDev_Theme_Number] 
		
		if HPDev_Theme_Number == 4 then
			HPDev_Load_Button_Value()
		
			HPDev_LastWidth = HPDev_Width
			HPDev_LastHeight = HPDev_Height
			
			HPDev_Width = 100
			HPDev_Height = 100
			
			HP_f:SetWidth(HPDev_Width)
			HP_f:SetHeight(HPDev_Height)
			
			if HPDev_WAMode == 0 then
				HP_Theme_Preview:SetWidth(100)
				HP_Theme_Preview:SetHeight(100)
			end
			
			-- Apply Size and Position defaults
			HPDev_Opt_Flag = "HPDev_Apply_Size_Position"
			HPDev_Opt_Loader()
			
			HPDev_Load_Button_Value()
			
		end
		
		HPDev_Opt_Title:SetText('Switching Theme To: '..HPDev_Theme)
		HPDev_timer:Cancel()
		HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
		
		HPDev_PrevNext_Flag = 1
		HPDev_Func_Flag = "Determine_Range"
		HPDev_Loader()
	end)
------------- < Talent Monitoring > -------------	
	------ < start of Monitor Cascade button > -------
	if HPDev_Monitor_CC == 1 then	
		HPDev_Monitor_CC_checkButton:SetChecked(true)
		HPDev_Monitor_CC_checkButton.text:SetText("Monitoring Cascade")
		HPDev_Monitor_CC_checkButton:SetPoint("BOTTOMLEFT",20,50)
	else
		HPDev_Monitor_CC_checkButton:SetChecked(false)
		HPDev_Monitor_CC_checkButton.text:SetText("Check to monitor Cascade")
		HPDev_Monitor_CC_checkButton:SetPoint("BOTTOMLEFT",20,50)
	end
	
	HPDev_Monitor_CC_checkButton:SetScript("OnClick", function(self)
		isMonitor_CC_checkButton = self:GetChecked();
		if isMonitor_CC_checkButton == false then
			HPDev_Monitor_CC = 0
			HPDev_Monitor_CC_checkButton:SetChecked(false)
			HPDev_Monitor_CC_checkButton.text:SetText("Check to monitor Cascade")
			HPDev_Opt_Msg = "Monitor Cascade: Disabled"
		else
			HPDev_Monitor_CC = 1
			HPDev_Monitor_CC_checkButton:SetChecked(true)
			HPDev_Monitor_CC_checkButton.text:SetText("Monitoring Cascade")
			HPDev_Monitor_CC_checkButton:SetPoint("BOTTOMLEFT",20,50)
			HPDev_Opt_Msg = "Monitor Cascade: Enabled"
		end
		
		HPDev_Func_Flag = "Talent_Check"
		HPDev_Loader()
		
		HPDev_Opt_Title:SetText(HPDev_Opt_Msg)
		HPDev_timer:Cancel()
		HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
		
	end)
-------------------------------------------------------------
------ < start of Divine Star button > -------
	if HPDev_Monitor_DS == 1 then	
		HPDev_Monitor_DS_checkButton:SetChecked(true)
		HPDev_Monitor_DS_checkButton.text:SetText("Monitoring Divine Star")
		HPDev_Monitor_DS_checkButton:SetPoint("BOTTOM",-70,50)
	else
		HPDev_Monitor_DS_checkButton:SetChecked(false)
		HPDev_Monitor_DS_checkButton.text:SetText("Check to monitor Divine Star")
		HPDev_Monitor_DS_checkButton:SetPoint("BOTTOM",-90,50)
	end
	
	HPDev_Monitor_DS_checkButton:SetScript("OnClick", function(self)
		isMonitor_DS_checkButton = self:GetChecked();
		if isMonitor_DS_checkButton == false then
			HPDev_Monitor_DS = 0
			HPDev_Monitor_DS_checkButton:SetChecked(false)
			HPDev_Monitor_DS_checkButton.text:SetText("Check to monitor Divine Star")
			HPDev_Monitor_DS_checkButton:SetPoint("BOTTOM",-90,50)
			HPDev_Opt_Msg = "Monitor Divine Star: Disabled"
		else
			HPDev_Monitor_DS = 1
			HPDev_Monitor_DS_checkButton:SetChecked(true)
			HPDev_Monitor_DS_checkButton.text:SetText("Monitoring Divine Star")
			HPDev_Monitor_DS_checkButton:SetPoint("BOTTOM",-70,50)
			HPDev_Opt_Msg = "Monitor Divine Star: Enabled"
		end
		
		HPDev_Func_Flag = "Talent_Check"
		HPDev_Loader()
		
		HPDev_Opt_Title:SetText(HPDev_Opt_Msg)
		HPDev_timer:Cancel()
		HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
		
	end)
-------------------------------------------------------------
------ < start of Monitor Halo button > -------
	if HPDev_Monitor_Halo == 1 then	
		HPDev_Monitor_Halo_checkButton:SetChecked(true)
		HPDev_Monitor_Halo_checkButton.text:SetText("Monitoring Halo")
		HPDev_Monitor_Halo_checkButton:SetPoint("BOTTOMRIGHT",-160,50)
	else
		HPDev_Monitor_Halo_checkButton:SetChecked(false)
		HPDev_Monitor_Halo_checkButton.text:SetText("Check to monitor Halo")
		HPDev_Monitor_Halo_checkButton:SetPoint("BOTTOMRIGHT",-180,50)
	end
	
	HPDev_Monitor_Halo_checkButton:SetScript("OnClick", function(self)
		isMonitor_Halo_checkButton = self:GetChecked();
		if isMonitor_Halo_checkButton == false then
			HPDev_Monitor_Halo = 0
			HPDev_Monitor_Halo_checkButton:SetChecked(false)
			HPDev_Monitor_Halo_checkButton.text:SetText("Check to monitor Halo")
			HPDev_Monitor_Halo_checkButton:SetPoint("BOTTOMRIGHT",-180,50)
			HPDev_Opt_Msg = "Monitor Halo: Disabled"
		else
			HPDev_Monitor_Halo = 1
			HPDev_Monitor_Halo_checkButton:SetChecked(true)
			HPDev_Monitor_Halo_checkButton.text:SetText("Monitoring Halo")
			HPDev_Monitor_Halo_checkButton:SetPoint("BOTTOMRIGHT",-160,50)
			HPDev_Opt_Msg = "Monitor Halo: Enabled"
		end
		
		HPDev_Func_Flag = "Talent_Check"
		HPDev_Loader()
		
		HPDev_Opt_Title:SetText(HPDev_Opt_Msg)
		HPDev_timer:Cancel()
		HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
		
	end)
-------------------------------------------------------------
---------- < start of Prioritize Mouse Over button > ----------
	if HPDev_MouseOverRide == 1 then	
		HPDev_PrioritizeMouse_checkButton:SetChecked(true)
		HPDev_PrioritizeMouse_checkButton.text:SetFont("Fonts\\FRIZQT__.TTF", 12, "THICKOUTLINE")
		HPDev_PrioritizeMouse_checkButton.text:SetTextColor(1.0,1.0,1.0,1.0)
		HPDev_PrioritizeMouse_checkButton.text:SetText("Prioritizing valid mouseover targets")
	else
		HPDev_PrioritizeMouse_checkButton:SetChecked(false)
		HPDev_PrioritizeMouse_checkButton.text:SetFont("Fonts\\FRIZQT__.TTF", 12, "THICKOUTLINE")
		HPDev_PrioritizeMouse_checkButton.text:SetTextColor(1.0,1.0,1.0,1.0)
		HPDev_PrioritizeMouse_checkButton.text:SetText("Check to prioritize mouseover targets")
	end
	
	HPDev_PrioritizeMouse_checkButton:SetScript("OnClick", function(self)
		isPrioritizeMouse_checkButton = self:GetChecked();
		if isPrioritizeMouse_checkButton == false then
			HPDev_MouseOverRide = 0
			HPDev_PrioritizeMouse_checkButton:SetChecked(false)
			HPDev_PrioritizeMouse_checkButton.text:SetText("Check to prioritize mouseover targets")
			HPDev_Opt_Msg = "Mouseover Prioritization: Disabled"
		else
			HPDev_MouseOverRide = 1
			HPDev_PrioritizeMouse_checkButton:SetChecked(true)
			HPDev_PrioritizeMouse_checkButton.text:SetText("Prioritizing valid mouseover targets")
			HPDev_Opt_Msg = "Mouseover Prioritization: Enabled"
		end
		HPDev_Opt_Title:SetText(HPDev_Opt_Msg)
		HPDev_timer:Cancel()
		HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
		
	end)
-------------------------------------------------------------
---------- < start of WeakAura Mode button > ----------
	if HPDev_WAMode == 1 then	
		HPDev_WAMode_checkButton:SetChecked(true)
		HPDev_WAMode_checkButton.text:SetFont("Fonts\\FRIZQT__.TTF", 12, "THICKOUTLINE")
		HPDev_WAMode_checkButton.text:SetTextColor(1.0,1.0,1.0,1.0)
		HPDev_WAMode_checkButton.text:SetText("Currently in WeakAura mode")
		HP_Theme_Preview:SetWidth(550)
		HP_Theme_Preview:SetHeight(40)
		
		HPDev_WA_StringCC:Disable()
		HPDev_WA_StringDS:Disable()
		HPDev_WA_StringHalo:Disable()
		
		HPDev_WA_StringCC:SetAlpha(0.5)
		HPDev_WA_StringDS:SetAlpha(0.5)
		HPDev_WA_StringHalo:SetAlpha(0.5)
		
		HPDev_WA_StringCC:HighlightText(0,0)
		HPDev_WA_StringDS:HighlightText(0,0)
		HPDev_WA_StringHalo:HighlightText(0,0)
		
		HPDev_WA_Main:Show()
			
	else
		HPDev_WAMode_checkButton:SetChecked(false)
		HPDev_WAMode_checkButton.text:SetFont("Fonts\\FRIZQT__.TTF", 12, "THICKOUTLINE")
		HPDev_WAMode_checkButton.text:SetTextColor(1.0,1.0,1.0,1.0)
		HPDev_WAMode_checkButton.text:SetText("Check to enable WeakAura mode")
		HPDev_WA_Main:Hide()
		if HPDev_Theme_Number >= 4 then 
			HP_Theme_Preview:SetWidth(100)
			HP_Theme_Preview:SetHeight(100)
		else
			HP_Theme_Preview:SetWidth(550)
			HP_Theme_Preview:SetHeight(40)
		end
	end
	
	HPDev_WAMode_checkButton:SetScript("OnClick", function(self)
		isWAMode_checkButton = self:GetChecked();
		if isWAMode_checkButton == false then
			HPDev_WAMode = 0
			HPDev_WAMode_checkButton:SetChecked(false)
			HPDev_WAMode_checkButton.text:SetText("Check to enable WeakAura mode")
			HPDev_Opt_Msg = "Weak Aura Mode: Disabled"
			if HPDev_Theme_Number >= 4 then 
				HP_Theme_Preview:SetWidth(100)
				HP_Theme_Preview:SetHeight(100)
			else
				HP_Theme_Preview:SetWidth(550)
				HP_Theme_Preview:SetHeight(40)
			end
			HPDev_WA_Main:Hide()
		else
			HPDev_WAMode = 1
			HPDev_WAMode_checkButton:SetChecked(true)
			HPDev_WAMode_checkButton.text:SetText("Currently in WeakAura mode")
			HPDev_Opt_Msg = "Weak Aura Mode: Enabled"
			HP_Theme_Preview:SetWidth(550)
			HP_Theme_Preview:SetHeight(40)
			
			HPDev_WA_StringCC:Disable()
			HPDev_WA_StringDS:Disable()
			HPDev_WA_StringHalo:Disable()
			
			HPDev_WA_StringCC:SetAlpha(0.5)
			HPDev_WA_StringDS:SetAlpha(0.5)
			HPDev_WA_StringHalo:SetAlpha(0.5)
			
			HPDev_WA_StringCC:HighlightText(0,0)
			HPDev_WA_StringDS:HighlightText(0,0)
			HPDev_WA_StringHalo:HighlightText(0,0)
			
			HPDev_WA_Main:Show()
		end
		HPDev_Opt_Title:SetText(HPDev_Opt_Msg)
		HPDev_timer:Cancel()
		HPDev_timer = C_Timer.NewTimer(1, Reset_HPDev_Options_Title)
		
	end)
-------------------------------------------------------------

------ < Handler for Default Button > -------
	HPDev_Defaults_Button:SetScript("OnClick", function(self)
		StaticPopup_Show ("RESETING_TO_DEFAULTS")
		collectgarbage("collect") -- Force a collection
	end)

------ < Handler for Close Button > -------
	HPDev_Close_Button:SetScript("OnClick", function(self)
		if HPDev_AutoLock == 1 then 
			HP_f:EnableMouse(false)	
			HP_f:RegisterForDrag() 	-- disable moving
		end 
		print("HaloPro Locked")
		StaticPopup_Hide ("RESETING_TO_DEFAULTS")
		HP_Opt_f:Hide() 
		collectgarbage("collect") -- Force a collection
	end)

------ < Handler for Cascade Weak Aura Button > -------
	HPDev_WA_CC_Button:SetScript("OnClick", function(self)
		HPDev_WA_StringDS:Disable()
		HPDev_WA_StringHalo:Disable()
		
		HPDev_WA_StringDS:SetAlpha(0.5)
		HPDev_WA_StringHalo:SetAlpha(0.5)
		
		HPDev_WA_StringDS:HighlightText(0,0)
		HPDev_WA_StringHalo:HighlightText(0,0)
		
		
		HPDev_WA_StringCC:SetAlpha(1)
		HPDev_WA_StringCC:Enable()
		HPDev_WA_StringCC:SetText(HPDev_WA_CC)
		HPDev_WA_StringCC:HighlightText()
		HPDev_WA_Title:SetText('Press Ctrl+C to copy string')
		collectgarbage("collect") -- Force a collection
	end)
	HPDev_WA_StringCC:SetScript("OnEscapePressed", function(self)
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
	end)
------ < Handler for Divine Star Weak Aura Button > -------
	HPDev_WA_DS_Button:SetScript("OnClick", function(self)
		HPDev_WA_StringCC:Disable()
		HPDev_WA_StringHalo:Disable()
		
		HPDev_WA_StringCC:SetAlpha(0.5)
		HPDev_WA_StringHalo:SetAlpha(0.5)
		
		HPDev_WA_StringCC:HighlightText(0,0)
		HPDev_WA_StringHalo:HighlightText(0,0)
		
		
		HPDev_WA_StringDS:SetAlpha(1)
		HPDev_WA_StringDS:Enable()
		HPDev_WA_StringDS:SetText(HPDev_WA_DS)
		HPDev_WA_StringDS:HighlightText()
		HPDev_WA_Title:SetText('Press Ctrl+C to copy string')
		collectgarbage("collect") -- Force a collection
	end)
	HPDev_WA_StringDS:SetScript("OnEscapePressed", function(self)
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
	end)
------ < Handler for Halo Weak Aura Button > -------
	HPDev_WA_Halo_Button:SetScript("OnClick", function(self)
		HPDev_WA_StringDS:Disable()
		HPDev_WA_StringCC:Disable()
		
		HPDev_WA_StringDS:SetAlpha(0.5)
		HPDev_WA_StringCC:SetAlpha(0.5)
		
		HPDev_WA_StringDS:HighlightText(0,0)
		HPDev_WA_StringCC:HighlightText(0,0)
		
		
		HPDev_WA_StringHalo:SetAlpha(1)
		HPDev_WA_StringHalo:Enable()
		HPDev_WA_StringHalo:SetText(HPDev_WA_Halo)
		HPDev_WA_StringHalo:HighlightText()
		HPDev_WA_Title:SetText('Press Ctrl+C to copy string')
		collectgarbage("collect") -- Force a collection
	end)
	HPDev_WA_StringHalo:SetScript("OnEscapePressed", function(self)
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
	end)
end

local function HPDev_Buttons()
	
	HPDev_timer = C_Timer.NewTimer(2, Reset_HPDev_Options_Title)

	-- Left Side Options --
	-- Option to only show in combat button
	HPDev_In_Combat_Only_Button = "Only Show When In Combat"
	template = "UICheckButtonTemplate"
	HPDev_In_Combat_checkButton = CreateFrame("CheckButton",HPDev_In_Combat_Only_Button,HP_Opt_f,template) --frameType, frameName, frameParent, frameTemplate
	HPDev_In_Combat_checkButton:SetPoint("TopLeft",20,-75)
	HPDev_In_Combat_checkButton.text = _G[HPDev_In_Combat_Only_Button.."Text"]
	
	-- Option to toggle fade out and in during cooldown
	HPDev_FadeOutIN_Button = "Do not hide bar when on cooldown"
	template = "UICheckButtonTemplate"
	HPDev_FadeOutIN_checkButton = CreateFrame("CheckButton",HPDev_FadeOutIN_Button,HP_Opt_f,template) --frameType, frameName, frameParent, frameTemplate
	HPDev_FadeOutIN_checkButton:SetPoint("TopLeft",20,-100)
	HPDev_FadeOutIN_checkButton.text = _G[HPDev_FadeOutIN_Button.."Text"]
	
	-- Option to Always Show bar
	HPDev_AlwaysOn_Button = "Never fully hide the bar"
	template = "UICheckButtonTemplate"
	HPDev_AlwaysOn_checkButton = CreateFrame("CheckButton",HPDev_AlwaysOn_Button,HP_Opt_f,template) --frameType, frameName, frameParent, frameTemplate
	HPDev_AlwaysOn_checkButton:SetPoint("TopLeft",20,-125)
	HPDev_AlwaysOn_checkButton.text = _G[HPDev_AlwaysOn_Button.."Text"]
	
	-- Option to Rotate bar 90 degrees
	HPDev_Rotate90_Button = "Rotate HaloPro 90 Degrees"
	template = "UICheckButtonTemplate"
	HPDev_Rotate90_checkButton = CreateFrame("CheckButton",HPDev_Rotate90_Button,HP_Opt_f,template) --frameType, frameName, frameParent, frameTemplate
	HPDev_Rotate90_checkButton:SetPoint("TopLeft",20,-150)
	HPDev_Rotate90_checkButton.text = _G[HPDev_Rotate90_Button.."Text"]
	
	-- Right Side Options --
	-- Option to auto lock halopro
	HPDev_AutoLock_Button = "Auto Lock HaloPro when Options Open and Close"
	template = "UICheckButtonTemplate"
	HPDev_AutoLock_checkButton = CreateFrame("CheckButton",HPDev_AutoLock_Button,HP_Opt_f,template) --frameType, frameName, frameParent, frameTemplate
	HPDev_AutoLock_checkButton:SetPoint("Top",20,-75)
	HPDev_AutoLock_checkButton.text = _G[HPDev_AutoLock_Button.."Text"]
	
	-- Option to play sound when in proper range
	HPDev_SoundOn_Button = "Play Sound When In Proper Range"
	template = "UICheckButtonTemplate"
	HPDev_SoundOn_checkButton = CreateFrame("CheckButton",HPDev_SoundOn_Button,HP_Opt_f,template) --frameType, frameName, frameParent, frameTemplate
	HPDev_SoundOn_checkButton:SetPoint("Top",20,-100)
	HPDev_SoundOn_checkButton.text = _G[HPDev_SoundOn_Button.."Text"]
	
	-- Option to warn when talent is off cooldown
	HPDev_CDWarn_Button = "Warn when talent is off cooldown"
	template = "UICheckButtonTemplate"
	HPDev_CDWarn_checkButton = CreateFrame("CheckButton",HPDev_CDWarn_Button,HP_Opt_f,template) --frameType, frameName, frameParent, frameTemplate
	HPDev_CDWarn_checkButton:SetPoint("Top",20,-125)
	HPDev_CDWarn_checkButton.text = _G[HPDev_CDWarn_Button.."Text"]
	
	-- Option to disable mode splash
	HPDev_Fade_MsgMode_Flag_Button = "Enable / Disable Mode Splash"
	template = "UICheckButtonTemplate"
	HPDev_Fade_MsgMode_Flag_checkButton = CreateFrame("CheckButton",HPDev_Fade_MsgMode_Flag_Button,HP_Opt_f,template) --frameType, frameName, frameParent, frameTemplate
	HPDev_Fade_MsgMode_Flag_checkButton:SetPoint("Top",20,-150)
	HPDev_Fade_MsgMode_Flag_checkButton.text = _G[HPDev_Fade_MsgMode_Flag_Button.."Text"]
	
	-- Middle Options --
	-- Create width slider
	HPDev_Width_Slider = "Adjust the width of HaloPro"
	HPDev_WidthSlider = CreateFrame("Slider", "HPDev_Width_Slider", HP_Opt_f, "OptionsSliderTemplate")
	HPDev_WidthSlider:SetWidth(250)
	HPDev_WidthSlider:SetHeight(15)
	HPDev_WidthSlider:SetOrientation('Horizontal')
	HPDev_WidthSlider:SetPoint("TOPLEFT",50,-235)
	HPDev_WidthSlider.text = _G[HPDev_Width_Slider.."Text"]
	HPDev_WidthSlider:SetMinMaxValues(1,1500)
	HPDev_WidthSlider:SetValueStep(1)
	HPDev_WidthSlider:SetStepsPerPage(1)
	
	-- Creates Edit Box Width
	HPDev_UserWidth_Box = CreateFrame("EditBox", "HPDev_UserWidth_Box", HP_Opt_f)
	HPDev_UserWidth_Box:Show() 

	HPDev_UserWidth_Box:SetBackdrop({
		bgFile="Interface\\DialogFrame\\UI-DialogBox-Background", 
		edgeFile="Interface\\FriendsFrame\\UI-Toast-Border",
		--edgeFile="Interface\\FriendsFrame\\PendingFriendGlow",	
		--edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
		--edgeFile="Interface\\ArenaEnemyFrame\\UI-Arena-Border",
		--edgeFile="Interface\\CHARACTERFRAME\\UI-Party-Border",
		tile=1, tileSize=5, edgeSize=6, 
		insets={left=2, right=2, top=2, bottom=2}
	})
	HPDev_UserWidth_Box:SetWidth(60)
	HPDev_UserWidth_Box:SetHeight(20)
	HPDev_UserWidth_Box:SetPoint("TOPLEFT",145,-255)
	HPDev_UserWidth_Box:SetFont("Fonts\\FRIZQT__.TTF", 10, "OUTLINE")
	HPDev_UserWidth_Box:SetFontObject("ChatFontNormal")
	HPDev_UserWidth_Box:SetJustifyH("CENTER")
	HPDev_UserWidth_Box:SetAutoFocus(false)
	HPDev_UserWidth_Box:SetText((ceil(HPDev_Width - 0.5)))
	
	-- Create height slider
	HPDev_Height_Slider = "Adjust the height of HaloPro"
	HPDev_HeightSlider = CreateFrame("Slider", "HPDev_Height_Slider", HP_Opt_f, "OptionsSliderTemplate")
	HPDev_HeightSlider:SetWidth(250)
	HPDev_HeightSlider:SetHeight(15)
	HPDev_HeightSlider:SetOrientation('Horizontal')
	HPDev_HeightSlider:SetPoint("TOPRIGHT",-50,-235)
	HPDev_HeightSlider.text = _G[HPDev_Height_Slider.."Text"]
	HPDev_HeightSlider:SetMinMaxValues(1,100)
	HPDev_HeightSlider:SetValueStep(1)
	HPDev_HeightSlider:SetStepsPerPage(1)
	
	-- Creates Edit Box Height
	HPDev_UserHeight_Box = CreateFrame("EditBox", "HPDev_UserHeight_Box", HP_Opt_f)
	HPDev_UserHeight_Box:Show() 

	HPDev_UserHeight_Box:SetBackdrop({
		bgFile="Interface\\DialogFrame\\UI-DialogBox-Background", 
		edgeFile="Interface\\FriendsFrame\\UI-Toast-Border",
		--edgeFile="Interface\\FriendsFrame\\PendingFriendGlow",	
		--edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
		--edgeFile="Interface\\ArenaEnemyFrame\\UI-Arena-Border",
		--edgeFile="Interface\\CHARACTERFRAME\\UI-Party-Border",
		tile=1, tileSize=5, edgeSize=6, 
		insets={left=2, right=2, top=2, bottom=2}
	})
	HPDev_UserHeight_Box:SetWidth(60)
	HPDev_UserHeight_Box:SetHeight(20)
	HPDev_UserHeight_Box:SetPoint("TOPRIGHT",-145,-255)
	HPDev_UserHeight_Box:SetFont("Fonts\\FRIZQT__.TTF", 10, "OUTLINE")
	HPDev_UserHeight_Box:SetFontObject("ChatFontNormal")
	HPDev_UserHeight_Box:SetJustifyH("CENTER")
	HPDev_UserHeight_Box:SetAutoFocus(false)
	HPDev_UserHeight_Box:SetText((ceil(HPDev_Height - 0.5)))
	
	-- Create strata slider
	HPDev_Strata_Slider = "Adjust the strata level of HaloPro"
	HPDev_StrataSlider = CreateFrame("Slider", "HPDev_Strata_Slider", HP_Opt_f, "OptionsSliderTemplate")
	HPDev_StrataSlider:SetWidth(250)
	HPDev_StrataSlider:SetHeight(15)
	HPDev_StrataSlider:SetOrientation('Horizontal')
	HPDev_StrataSlider:SetPoint("TOPLEFT",50,-300)
	HPDev_StrataSlider.text = _G[HPDev_Strata_Slider.."Text"]
	HPDev_StrataSlider:SetMinMaxValues(1,8)
	HPDev_StrataSlider:SetObeyStepOnDrag(true)
	HPDev_StrataSlider:SetValueStep(1)
	HPDev_StrataSlider:SetStepsPerPage(1)
	
	-- Create border thickness slider
	HPDev_BorderThickness_Slider = "Adjust the height of HaloPro"
	HPDev_BorderThicknessSlider = CreateFrame("Slider", "HPDev_BorderThickness_Slider", HP_Opt_f, "OptionsSliderTemplate")
	HPDev_BorderThicknessSlider:SetWidth(250)
	HPDev_BorderThicknessSlider:SetHeight(15)
	HPDev_BorderThicknessSlider:SetOrientation('Horizontal')
	HPDev_BorderThicknessSlider:SetPoint("TOPRIGHT",-50,-300)
	HPDev_BorderThicknessSlider.text = _G[HPDev_BorderThickness_Slider.."Text"]
	HPDev_BorderThicknessSlider:SetMinMaxValues(-7,7)
	--HPDev_BorderThicknessSlider:SetObeyStepOnDrag(true)
	HPDev_BorderThicknessSlider:SetValueStep(1)
	HPDev_BorderThicknessSlider:SetStepsPerPage(1)
	
	-- Creates Edit Box Border Size
	HPDev_UserBorderSize_Box = CreateFrame("EditBox", "HPDev_UserBorderSize_Box", HP_Opt_f)
	HPDev_UserBorderSize_Box:Show() 

	HPDev_UserBorderSize_Box:SetBackdrop({
		bgFile="Interface\\DialogFrame\\UI-DialogBox-Background", 
		edgeFile="Interface\\FriendsFrame\\UI-Toast-Border",
		--edgeFile="Interface\\FriendsFrame\\PendingFriendGlow",	
		--edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
		--edgeFile="Interface\\ArenaEnemyFrame\\UI-Arena-Border",
		--edgeFile="Interface\\CHARACTERFRAME\\UI-Party-Border",
		tile=1, tileSize=5, edgeSize=6, 
		insets={left=2, right=2, top=2, bottom=2}
	})
	HPDev_UserBorderSize_Box:SetWidth(60)
	HPDev_UserBorderSize_Box:SetHeight(20)
	HPDev_UserBorderSize_Box:SetPoint("TOPRIGHT",-145,-325)
	HPDev_UserBorderSize_Box:SetFont("Fonts\\FRIZQT__.TTF", 10, "OUTLINE")
	HPDev_UserBorderSize_Box:SetFontObject("ChatFontNormal")
	HPDev_UserBorderSize_Box:SetJustifyH("CENTER")
	HPDev_UserBorderSize_Box:SetAutoFocus(false)
	HPDev_UserBorderSize_Box:SetText((7 + ("%.2f"):format(HPDev_Border_Thickness)))
	
	-- Create OnCD Alpha slider
	HPDev_OnCDAlpha_Slider = "Adjust the alpha level of HaloPro when on cooldown"
	HPDev_OnCD_Alpha_Slider = CreateFrame("Slider", "HPDev_OnCDAlpha_Slider", HP_Opt_f, "OptionsSliderTemplate")
	HPDev_OnCD_Alpha_Slider:SetWidth(250)
	HPDev_OnCD_Alpha_Slider:SetHeight(15)
	HPDev_OnCD_Alpha_Slider:SetOrientation('Horizontal')
	HPDev_OnCD_Alpha_Slider:SetPoint("TOPLEFT",50,-370)
	HPDev_OnCD_Alpha_Slider.text = _G[HPDev_OnCDAlpha_Slider.."Text"]
	HPDev_OnCD_Alpha_Slider:SetMinMaxValues(0,1)
	HPDev_OnCD_Alpha_Slider:SetObeyStepOnDrag(true)
	HPDev_OnCD_Alpha_Slider:SetValueStep(0.05)
	HPDev_OnCD_Alpha_Slider:SetStepsPerPage(0.05)
	
	-- Create OffCD Alpha slider
	HPDev_OffCDAlpha_Slider = "Adjust the alpha level of HaloPro when off cooldown"
	HPDev_OffCD_Alpha_Slider = CreateFrame("Slider", "HPDev_OffCDAlpha_Slider", HP_Opt_f, "OptionsSliderTemplate")
	HPDev_OffCD_Alpha_Slider:SetWidth(250)
	HPDev_OffCD_Alpha_Slider:SetHeight(15)
	HPDev_OffCD_Alpha_Slider:SetOrientation('Horizontal')
	HPDev_OffCD_Alpha_Slider:SetPoint("TOPRIGHT",-50,-370)
	HPDev_OffCD_Alpha_Slider.text = _G[HPDev_OffCDAlpha_Slider.."Text"]
	HPDev_OffCD_Alpha_Slider:SetMinMaxValues(0,1)
	HPDev_OffCD_Alpha_Slider:SetValueStep(0.05)
	HPDev_OffCD_Alpha_Slider:SetStepsPerPage(0.05)
	
	-- Previous Theme Button 
	HPDev_Prev_Button = CreateFrame("Button", "Previous Theme Button", HP_Opt_f)
	HPDev_Prev_Button:SetPoint("CENTER", HP_Opt_f, "Left", 40, -160)
	HPDev_Prev_Button:SetWidth(40)
	HPDev_Prev_Button:SetHeight(40)
	
	HPDev_Prev_Button_ntex = HPDev_Prev_Button:CreateTexture()
	HPDev_Prev_Button_ntex:SetTexture("Interface/Buttons/UI-SpellbookIcon-PrevPage-Disabled")
	HPDev_Prev_Button_ntex:SetAllPoints()	
	HPDev_Prev_Button:SetNormalTexture(HPDev_Prev_Button_ntex)
	
	HPDev_Prev_Button_htex = HPDev_Prev_Button:CreateTexture()
	HPDev_Prev_Button_htex:SetTexture("Interface/Buttons/UI-SpellbookIcon-PrevPage-Up")
	HPDev_Prev_Button_htex:SetAllPoints()
	HPDev_Prev_Button:SetHighlightTexture(HPDev_Prev_Button_htex)
	
	HPDev_Prev_Button_ptex = HPDev_Prev_Button:CreateTexture()
	HPDev_Prev_Button_ptex:SetTexture("Interface/Buttons/UI-SpellbookIcon-PrevPage-Down")
	HPDev_Prev_Button_ptex:SetAllPoints()
	HPDev_Prev_Button:SetPushedTexture(HPDev_Prev_Button_ptex)
	
	-- Next Theme Button 
	HPDev_Next_Button = CreateFrame("Button", "Next Theme Button", HP_Opt_f)
	HPDev_Next_Button:SetPoint("CENTER", HP_Opt_f, "Right", -40, -160)
	HPDev_Next_Button:SetWidth(40)
	HPDev_Next_Button:SetHeight(40)
	
	HPDev_Next_Button_ntex = HPDev_Next_Button:CreateTexture()
	HPDev_Next_Button_ntex:SetTexture("Interface/Buttons/UI-SpellbookIcon-NextPage-Disabled")
	HPDev_Next_Button_ntex:SetAllPoints()	
	HPDev_Next_Button:SetNormalTexture(HPDev_Next_Button_ntex)
	
	HPDev_Next_Button_htex = HPDev_Next_Button:CreateTexture()
	HPDev_Next_Button_htex:SetTexture("Interface/Buttons/UI-SpellbookIcon-NextPage-Up")
	HPDev_Next_Button_htex:SetAllPoints()
	HPDev_Next_Button:SetHighlightTexture(HPDev_Next_Button_htex)
	
	HPDev_Next_Button_ptex = HPDev_Next_Button:CreateTexture()
	HPDev_Next_Button_ptex:SetTexture("Interface/Buttons/UI-SpellbookIcon-NextPage-Down")
	HPDev_Next_Button_ptex:SetAllPoints()
	HPDev_Next_Button:SetPushedTexture(HPDev_Next_Button_ptex)
	
	HPDev_Theme_Table[0] = "Shadow"
	HPDev_Theme_Table[1] = "Disc"
	HPDev_Theme_Table[2] = "Holy"
	HPDev_Theme_Table[3] = "Custom"
	HPDev_Theme_Table[4] = "Shadow_Icon"
	HPDev_Theme_Table[5] = "Holy_Icon"
	
	for t=0,5 do
		if HPDev_Theme == HPDev_Theme_Table[t] then HPDev_Theme_Number = t end
	end
	
	-- Monitor Buttons --
	-- Monitor Cascade
	HPDev_Monitor_CC_Button = "HaloPro will monitor Cascade"
	template = "UICheckButtonTemplate"
	HPDev_Monitor_CC_checkButton = CreateFrame("CheckButton",HPDev_Monitor_CC_Button,HP_Opt_f,template) --frameType, frameName, frameParent, frameTemplate
	HPDev_Monitor_CC_checkButton.text = _G[HPDev_Monitor_CC_Button.."Text"]
	HPDev_Monitor_CC_checkButton.text:SetFont("Fonts\\FRIZQT__.TTF", 12, "THICKOUTLINE")
	HPDev_Monitor_CC_checkButton.text:SetTextColor(1.0,1.0,1.0,1.0)
	
	-- Monitor Divine Star
	HPDev_Monitor_DS_Button = "HaloPro will monitor Divine Star"
	template = "UICheckButtonTemplate"
	HPDev_Monitor_DS_checkButton = CreateFrame("CheckButton",HPDev_Monitor_DS_Button,HP_Opt_f,template) --frameType, frameName, frameParent, frameTemplate
	HPDev_Monitor_DS_checkButton.text = _G[HPDev_Monitor_DS_Button.."Text"]
	HPDev_Monitor_DS_checkButton.text:SetFont("Fonts\\FRIZQT__.TTF", 12, "THICKOUTLINE")
	HPDev_Monitor_DS_checkButton.text:SetTextColor(1.0,1.0,1.0,1.0)
	
	-- Monitor Halo
	HPDev_Monitor_Halo_Button = "HaloPro will monitor Halo"
	template = "UICheckButtonTemplate"
	HPDev_Monitor_Halo_checkButton = CreateFrame("CheckButton",HPDev_Monitor_Halo_Button,HP_Opt_f,template) --frameType, frameName, frameParent, frameTemplate
	HPDev_Monitor_Halo_checkButton.text = _G[HPDev_Monitor_Halo_Button.."Text"]
	HPDev_Monitor_Halo_checkButton.text:SetFont("Fonts\\FRIZQT__.TTF", 12, "THICKOUTLINE")
	HPDev_Monitor_Halo_checkButton.text:SetTextColor(1.0,1.0,1.0,1.0)
	
	-- Prioritize Mouseover
	HPDev_PrioritizeMouse_Button = "Prioritize Mouse Over targets"
	template = "UICheckButtonTemplate"
	HPDev_PrioritizeMouse_checkButton = CreateFrame("CheckButton",HPDev_PrioritizeMouse_Button,HP_Opt_f,template) --frameType, frameName, frameParent, frameTemplate
	HPDev_PrioritizeMouse_checkButton.text = _G[HPDev_PrioritizeMouse_Button.."Text"]
	HPDev_PrioritizeMouse_checkButton:SetPoint("TopLeft",20,-175)
	
	-- WeakAura Mode
	HPDev_WAMode_Button = "Enables WeakAura Mode"
	template = "UICheckButtonTemplate"
	HPDev_WAMode_checkButton = CreateFrame("CheckButton",HPDev_WAMode_Button,HP_Opt_f,template) --frameType, frameName, frameParent, frameTemplate
	HPDev_WAMode_checkButton.text = _G[HPDev_WAMode_Button.."Text"]
	HPDev_WAMode_checkButton:SetPoint("Top",20,-175)
		
	-- Bottom Buttons --
	-- Defaults button
	HPDev_Defaults_Button = CreateFrame("Button", "Load Defaults", HP_Opt_f)
	HPDev_Defaults_Button:SetPoint("CENTER", HP_Opt_f, "BOTTOMLEFT", 50, 20)
	HPDev_Defaults_Button:SetWidth(75)
	HPDev_Defaults_Button:SetHeight(20)
	HPDev_Defaults_Button:SetText("Defaults")
	HPDev_Defaults_Button:SetNormalFontObject("GameFontNormalSmall")
	
	HPDev_Defaults_Button_ntex = HPDev_Defaults_Button:CreateTexture()
	HPDev_Defaults_Button_ntex:SetTexture("Interface/Buttons/UI-SILVER-BUTTON-UP")
	HPDev_Defaults_Button_ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	HPDev_Defaults_Button_ntex:SetAllPoints()	
	HPDev_Defaults_Button:SetNormalTexture(HPDev_Defaults_Button_ntex)
	
	HPDev_Defaults_Button_htex = HPDev_Defaults_Button:CreateTexture()
	HPDev_Defaults_Button_htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight2")
	HPDev_Defaults_Button_htex:SetTexCoord(0, 0.625, 0, 0.6875)
	HPDev_Defaults_Button_htex:SetAllPoints()
	HPDev_Defaults_Button:SetHighlightTexture(HPDev_Defaults_Button_htex)
	
	HPDev_Defaults_Button_ptex = HPDev_Defaults_Button:CreateTexture()
	HPDev_Defaults_Button_ptex:SetTexture("Interface/Buttons/UI-SILVER-BUTTON-DOWN")
	HPDev_Defaults_Button_ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	HPDev_Defaults_Button_ptex:SetAllPoints()
	HPDev_Defaults_Button:SetPushedTexture(HPDev_Defaults_Button_ptex)
	
	
	-- Close / Save button 
	HPDev_Close_Button = CreateFrame("Button", "Close Options Menu", HP_Opt_f)
	HPDev_Close_Button:SetPoint("CENTER", HP_Opt_f, "BOTTOMRIGHT", -50, 20)
	HPDev_Close_Button:SetWidth(75)
	HPDev_Close_Button:SetHeight(20)
	HPDev_Close_Button:SetText("Close")
	HPDev_Close_Button:SetNormalFontObject("GameFontNormalSmall")
	
	HPDev_Close_Button_ntex = HPDev_Close_Button:CreateTexture()
	HPDev_Close_Button_ntex:SetTexture("Interface/Buttons/UI-SILVER-BUTTON-UP")
	HPDev_Close_Button_ntex:SetTexCoord(0, 0.625, 0, 0.6875)
	HPDev_Close_Button_ntex:SetAllPoints()	
	HPDev_Close_Button:SetNormalTexture(HPDev_Close_Button_ntex)
	
	HPDev_Close_Button_htex = HPDev_Close_Button:CreateTexture()
	HPDev_Close_Button_htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight2")
	HPDev_Close_Button_htex:SetTexCoord(0, 0.625, 0, 0.6875)
	HPDev_Close_Button_htex:SetAllPoints()
	HPDev_Close_Button:SetHighlightTexture(HPDev_Close_Button_htex)
	
	HPDev_Close_Button_ptex = HPDev_Close_Button:CreateTexture()
	HPDev_Close_Button_ptex:SetTexture("Interface/Buttons/UI-SILVER-BUTTON-DOWN")
	HPDev_Close_Button_ptex:SetTexCoord(0, 0.625, 0, 0.6875)
	HPDev_Close_Button_ptex:SetAllPoints()
	HPDev_Close_Button:SetPushedTexture(HPDev_Close_Button_ptex)
	
	
	-- Cascade Weak Aura button 
	HPDev_WA_CC_Button = CreateFrame("Button", "Cascade Weak Aura", HPDev_WA_Main)
	HPDev_WA_CC_Button:SetPoint("CENTER", HPDev_WA_Main, "LEFT", 120, -15)
	HPDev_WA_CC_Button:SetWidth(200)
	HPDev_WA_CC_Button:SetHeight(20)
	HPDev_WA_CC_Button:SetText("Get Cascade WeakAura")
	HPDev_WA_CC_Button:SetNormalFontObject("GameFontNormalSmall")
	
	HPDev_WA_CC_Button_ntex = HPDev_WA_CC_Button:CreateTexture()
	HPDev_WA_CC_Button_ntex:SetTexture("Interface/Buttons/UI-SILVER-BUTTON-UP")
	HPDev_WA_CC_Button_ntex:SetTexCoord(0, 0, 0, 0)
	HPDev_WA_CC_Button_ntex:SetAllPoints()	
	HPDev_WA_CC_Button:SetNormalTexture(HPDev_WA_CC_Button_ntex)
	
	HPDev_WA_CC_Button_htex = HPDev_WA_CC_Button:CreateTexture()
	HPDev_WA_CC_Button_htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight2")
	HPDev_WA_CC_Button_htex:SetTexCoord(0, 0.625, 0, 0.6875)
	HPDev_WA_CC_Button_htex:SetAllPoints()
	HPDev_WA_CC_Button:SetHighlightTexture(HPDev_WA_CC_Button_htex)
	
	HPDev_WA_CC_Button_ptex = HPDev_WA_CC_Button:CreateTexture()
	HPDev_WA_CC_Button_ptex:SetTexture("Interface/Buttons/UI-SILVER-BUTTON-DOWN")
	HPDev_WA_CC_Button_ptex:SetTexCoord(0, 0, 0, 0)
	HPDev_WA_CC_Button_ptex:SetAllPoints()
	HPDev_WA_CC_Button:SetPushedTexture(HPDev_WA_CC_Button_ptex)
	
	-- Divine Star Weak Aura button 
	HPDev_WA_DS_Button = CreateFrame("Button", "Divine Star Weak Aura", HPDev_WA_Main)
	HPDev_WA_DS_Button:SetPoint("CENTER", HPDev_WA_Main, "CENTER", 0, -15)
	HPDev_WA_DS_Button:SetWidth(220)
	HPDev_WA_DS_Button:SetHeight(20)
	HPDev_WA_DS_Button:SetText("Get Divine Star WeakAura")
	HPDev_WA_DS_Button:SetNormalFontObject("GameFontNormalSmall")
	
	HPDev_WA_DS_Button_ntex = HPDev_WA_DS_Button:CreateTexture()
	HPDev_WA_DS_Button_ntex:SetTexture("Interface/Buttons/UI-SILVER-BUTTON-UP")
	HPDev_WA_DS_Button_ntex:SetTexCoord(0, 0, 0, 0)
	HPDev_WA_DS_Button_ntex:SetAllPoints()	
	HPDev_WA_DS_Button:SetNormalTexture(HPDev_WA_DS_Button_ntex)
	
	HPDev_WA_DS_Button_htex = HPDev_WA_DS_Button:CreateTexture()
	HPDev_WA_DS_Button_htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight2")
	HPDev_WA_DS_Button_htex:SetTexCoord(0, 0.625, 0, 0.6875)
	HPDev_WA_DS_Button_htex:SetAllPoints()
	HPDev_WA_DS_Button:SetHighlightTexture(HPDev_WA_DS_Button_htex)
	
	HPDev_WA_DS_Button_ptex = HPDev_WA_DS_Button:CreateTexture()
	HPDev_WA_DS_Button_ptex:SetTexture("Interface/Buttons/UI-SILVER-BUTTON-DOWN")
	HPDev_WA_DS_Button_ptex:SetTexCoord(0, 0, 0, 0)
	HPDev_WA_DS_Button_ptex:SetAllPoints()
	HPDev_WA_DS_Button:SetPushedTexture(HPDev_WA_DS_Button_ptex)
	
	-- Halo Weak Aura button 
	HPDev_WA_Halo_Button = CreateFrame("Button", "Halo Weak Aura", HPDev_WA_Main)
	HPDev_WA_Halo_Button:SetPoint("CENTER", HPDev_WA_Main, "RIGHT", -120, -15)
	HPDev_WA_Halo_Button:SetWidth(220)
	HPDev_WA_Halo_Button:SetHeight(20)
	HPDev_WA_Halo_Button:SetText("Get Halo WeakAura")
	HPDev_WA_Halo_Button:SetNormalFontObject("GameFontNormalSmall")
	
	HPDev_WA_Halo_Button_ntex = HPDev_WA_Halo_Button:CreateTexture()
	HPDev_WA_Halo_Button_ntex:SetTexture("Interface/Buttons/UI-SILVER-BUTTON-UP")
	HPDev_WA_Halo_Button_ntex:SetTexCoord(0, 0, 0, 0)
	HPDev_WA_Halo_Button_ntex:SetAllPoints()	
	HPDev_WA_Halo_Button:SetNormalTexture(HPDev_WA_Halo_Button_ntex)
	
	HPDev_WA_Halo_Button_htex = HPDev_WA_Halo_Button:CreateTexture()
	HPDev_WA_Halo_Button_htex:SetTexture("Interface/Buttons/UI-Panel-Button-Highlight2")
	HPDev_WA_Halo_Button_htex:SetTexCoord(0, 0.625, 0, 0.6875)
	HPDev_WA_Halo_Button_htex:SetAllPoints()
	HPDev_WA_Halo_Button:SetHighlightTexture(HPDev_WA_Halo_Button_htex)
	
	HPDev_WA_Halo_Button_ptex = HPDev_WA_Halo_Button:CreateTexture()
	HPDev_WA_Halo_Button_ptex:SetTexture("Interface/Buttons/UI-SILVER-BUTTON-DOWN")
	HPDev_WA_Halo_Button_ptex:SetTexCoord(0, 0, 0, 0)
	HPDev_WA_Halo_Button_ptex:SetAllPoints()
	HPDev_WA_Halo_Button:SetPushedTexture(HPDev_WA_Halo_Button_ptex)
	
	HPDev_Load_Button_Value()
end

local function HPDev_Options_Init()

	-- Creates the Options Frame
	HP_Opt_f = CreateFrame("Frame","HaloPro_OptFrame",UIParent)
	HP_Opt_f:Hide() 

	HP_Opt_f:SetBackdrop({
		bgFile="Interface\\DialogFrame\\UI-DialogBox-Background", 
		edgeFile="Interface\\FriendsFrame\\UI-Toast-Border",
		--edgeFile="Interface\\FriendsFrame\\PendingFriendGlow",	
		--edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
		--edgeFile="Interface\\ArenaEnemyFrame\\UI-Arena-Border",
		--edgeFile="Interface\\CHARACTERFRAME\\UI-Party-Border",
		tile=1, tileSize=10, edgeSize=12, 
		insets={left=4, right=4, top=4, bottom=4}
	})
	HP_Opt_f:SetWidth(750)
	HP_Opt_f:SetHeight(625)
	HP_Opt_f:SetPoint("CENTER",0,-15,UIParent)
	HP_Opt_f:EnableMouse(true)
	HP_Opt_f:SetMovable(true)
	HP_Opt_f:RegisterForDrag("LeftButton")
	HP_Opt_f:SetScript("OnDragStart", function(self) self:StartMoving() end)
	HP_Opt_f:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)
	HP_Opt_f:SetFrameStrata("TOOLTIP")
	
	-- Create Frame for Title of Options
	HPDev_Opt_Title = CreateFrame("Frame", "HPDev_Opt_Title", HP_Opt_f)
	HPDev_Opt_Title:SetAllPoints()
	HPDev_Opt_Title = HPDev_Opt_Title:CreateFontString(nil, 'OVERLAY')
	HPDev_Opt_Title:SetFont("Fonts\\FRIZQT__.TTF", 32, "THICKOUTLINE")
	HPDev_Opt_Title:SetTextColor(1.0,1.0,1.0,1.0)
	HPDev_Opt_Title:SetText('HaloPro Options')
	HPDev_Opt_Title:SetPoint('TOP',0,-25)
	HPDev_Opt_Title:SetAlpha(1)
	
	-- Create Frame for Theme Preview
	HP_Theme_Preview = CreateFrame("Frame", "HPDev_Theme_Preview", HP_Opt_f)
	HP_Theme_Preview:SetWidth(550)
	HP_Theme_Preview:SetHeight(40)
	HP_Theme_Preview:SetPoint("BOTTOM", 0, 132)
	HP_TP_t = HP_Theme_Preview:CreateTexture("HPDev_Preview_texture","BACKGROUND")
	HP_TP_t:SetAllPoints(HP_Theme_Preview)
	HP_Theme_Preview.texture = HP_TP_t
	
	-- Create Frame for Weak Aura Mode
	HPDev_WA_Title = CreateFrame("Frame", "HPDev_WA_Title", HP_Theme_Preview)
	HPDev_WA_Title:SetAllPoints()
	HPDev_WA_Title = HPDev_WA_Title:CreateFontString(nil, 'OVERLAY')
	HPDev_WA_Title:SetFont("Fonts\\FRIZQT__.TTF", 32, "THICKOUTLINE")
	HPDev_WA_Title:SetTextColor(0.55,0.0,0.9,1.0)
	HPDev_WA_Title:SetText('WeakAura Mode is Enabled')
	HPDev_WA_Title:SetPoint('Center',0,0)
	HPDev_WA_Title:SetAlpha(0)
	
	-- Creates the Main Weak Aura Frame
	HPDev_WA_Main = CreateFrame("Frame","HPDev_WA_Main",HP_Opt_f)
	HPDev_WA_Main:Hide() 

	HPDev_WA_Main:SetBackdrop({
		bgFile="Interface\\DialogFrame\\UI-DialogBox-Background", 
		edgeFile="Interface\\FriendsFrame\\UI-Toast-Border",
		--edgeFile="Interface\\FriendsFrame\\PendingFriendGlow",	
		--edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
		--edgeFile="Interface\\ArenaEnemyFrame\\UI-Arena-Border",
		--edgeFile="Interface\\CHARACTERFRAME\\UI-Party-Border",
		tile=1, tileSize=10, edgeSize=12, 
		insets={left=4, right=4, top=4, bottom=4}
	})
	HPDev_WA_Main:SetWidth(750)
	HPDev_WA_Main:SetHeight(75)
	HPDev_WA_Main:SetPoint("BOTTOM",0,-75,HP_Opt_f)
	
	
	-- Creates Frame for Weak Aura Cascade String
	HPDev_WA_StringCC = CreateFrame("EditBox", "HPDev_WA_StringCC", HPDev_WA_Main)
	HPDev_WA_StringCC:Show() 

	HPDev_WA_StringCC:SetBackdrop({
		bgFile="Interface\\DialogFrame\\UI-DialogBox-Background", 
		edgeFile="Interface\\FriendsFrame\\UI-Toast-Border",
		--edgeFile="Interface\\FriendsFrame\\PendingFriendGlow",	
		--edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
		--edgeFile="Interface\\ArenaEnemyFrame\\UI-Arena-Border",
		--edgeFile="Interface\\CHARACTERFRAME\\UI-Party-Border",
		tile=1, tileSize=10, edgeSize=12, 
		insets={left=4, right=4, top=4, bottom=4}
	})
	HPDev_WA_StringCC:SetWidth(225)
	HPDev_WA_StringCC:SetHeight(30)
	HPDev_WA_StringCC:SetPoint("LEFT",10,10,HPDev_WA_Main)
	HPDev_WA_StringCC:SetFontObject("ChatFontNormal")
	HPDev_WA_StringCC:SetJustifyH("CENTER")
	HPDev_WA_StringCC:SetAlpha(0.5)
	HPDev_WA_StringCC:Disable()
	
	-- Creates Frame for Weak Aura Divine Star String
	HPDev_WA_StringDS = CreateFrame("EditBox", "HPDev_WA_StringDS", HPDev_WA_Main)
	HPDev_WA_StringDS:Show() 

	HPDev_WA_StringDS:SetBackdrop({
		bgFile="Interface\\DialogFrame\\UI-DialogBox-Background", 
		edgeFile="Interface\\FriendsFrame\\UI-Toast-Border",
		--edgeFile="Interface\\FriendsFrame\\PendingFriendGlow",	
		--edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
		--edgeFile="Interface\\ArenaEnemyFrame\\UI-Arena-Border",
		--edgeFile="Interface\\CHARACTERFRAME\\UI-Party-Border",
		tile=1, tileSize=10, edgeSize=12, 
		insets={left=4, right=4, top=4, bottom=4}
	})
	HPDev_WA_StringDS:SetWidth(225)
	HPDev_WA_StringDS:SetHeight(30)
	HPDev_WA_StringDS:SetPoint("CENTER",0,10,HPDev_WA_Main)
	HPDev_WA_StringDS:SetFontObject("ChatFontNormal")
	HPDev_WA_StringDS:SetJustifyH("CENTER")
	HPDev_WA_StringDS:SetAlpha(0.5)
	HPDev_WA_StringDS:Disable()
	
	-- Creates Frame for Weak Aura Halo String
	HPDev_WA_StringHalo = CreateFrame("EditBox", "HPDev_WA_StringHalo", HPDev_WA_Main)
	HPDev_WA_StringHalo:Show() 

	HPDev_WA_StringHalo:SetBackdrop({
		bgFile="Interface\\DialogFrame\\UI-DialogBox-Background", 
		edgeFile="Interface\\FriendsFrame\\UI-Toast-Border",
		--edgeFile="Interface\\FriendsFrame\\PendingFriendGlow",	
		--edgeFile="Interface\\DialogFrame\\UI-DialogBox-Border", 
		--edgeFile="Interface\\ArenaEnemyFrame\\UI-Arena-Border",
		--edgeFile="Interface\\CHARACTERFRAME\\UI-Party-Border",
		tile=1, tileSize=10, edgeSize=12, 
		insets={left=4, right=4, top=4, bottom=4}
	})
	HPDev_WA_StringHalo:SetWidth(225)
	HPDev_WA_StringHalo:SetHeight(30)
	HPDev_WA_StringHalo:SetPoint("RIGHT",-10,10,HPDev_WA_Main)
	HPDev_WA_StringHalo:SetFontObject("ChatFontNormal")
	HPDev_WA_StringHalo:SetJustifyH("CENTER")
	HPDev_WA_StringHalo:SetAlpha(0.5)
	HPDev_WA_StringHalo:Disable()
			
	-- Create Confirm Dialogs
	StaticPopupDialogs["RESETING_TO_DEFAULTS"] = {
		text = "You are about to remove all current HaloPro settings and load the defaults.  Are you sure you want to continue?",
		button1 = "Yes",
		button2 = "No",
		OnAccept = function()
			HPDev_Defaults_Flag = "Load_Defaults"
			HPDev_Defaults_Loader()
			print("HaloPro Defaults have been loaded")
		end,
		showAlert = true,
		timeout = 30,
		whileDead = true,
		hideOnEscape = true,
		preferredIndex = 3,
	}
end

local function HPDev_Apply_Size_Position()
	
	if HPDev_Theme_Number >= 4 then HPDev_Height = HPDev_Width end
	
	if HPDev_VertBar_Flag == 1 then
		HP_f:SetWidth(HPDev_Height)
		HP_f:SetHeight(HPDev_Width)
	else
		HP_f:SetWidth(HPDev_Width)
		HP_f:SetHeight(HPDev_Height)
	end
	HP_f:SetFrameStrata(HPDev_Strata)
	HP_f:ClearAllPoints()
	--if not HPDev_relativePoint then HPDev_relativePoint = HPDev_point end
	HPDev_relativePoint = HPDev_point
	HP_f:SetPoint(HPDev_point, nil, HPDev_relativePoint, HPDev_xOfs, HPDev_yOfs)
	
end

function HPDev_Opt_Loader()
	if HPDev_Opt_Flag == "HPDev_Options_Init" then HPDev_Options_Init() end
	if HPDev_Opt_Flag == "HPDev_Buttons" then HPDev_Buttons() end
	if HPDev_Opt_Flag == "HPDev_Load_Button_Value" then HPDev_Load_Button_Value() end
	if HPDev_Opt_Flag == "HPDev_Apply_Size_Position" then HPDev_Apply_Size_Position() end
end