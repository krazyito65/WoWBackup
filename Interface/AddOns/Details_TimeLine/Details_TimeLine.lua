local Loc = LibStub ("AceLocale-3.0"):GetLocale ("Details_TimeLine")
local SharedMedia = LibStub:GetLibrary("LibSharedMedia-3.0")
 
--> create the plugin object
local TimeLine = _detalhes:NewPluginObject ("Details_TimeLine", DETAILSPLUGIN_ALWAYSENABLED)
tinsert (UISpecialFrames, "Details_TimeLine")
--> main frame (shortcut)
local TimeLineFrame = TimeLine.Frame

local debugmode = false

local COMBATLOG_OBJECT_REACTION_FRIENDLY = COMBATLOG_OBJECT_REACTION_FRIENDLY
local COMBATLOG_OBJECT_TYPE_PLAYER = COMBATLOG_OBJECT_TYPE_PLAYER
local _bit_band = bit.band
local tinsert = tinsert

local type_cooldown = "cooldowns_timeline"
local type_debuff = "debuff_timeline"

local red = {1, 0, 0, .25}
local green = {0, 1, 0, .25}

local _combat_object
local parser_cache = {}
local _GetSpellInfo = _detalhes.getspellinfo

--> shortcut for current combat
local _is_in_combat = false

TimeLine:SetPluginDescription ("Shows a time line of cooldowns used by your raid members and debuffs applied by enemies in your raid.\nAlso show when each member died, with that, you may see the the player died without using cooldowns or if died after a combination of debuffs.")

TimeLine.version_string = "v3.4"

local menu_wallpaper_tex = {.6, 0.1, 0, 0.64453125}
local menu_wallpaper_color = {1, 1, 1, 0.15}

local function CreatePluginFrames()

	TimeLine.combat_data = {} --temp avoid errors on initialization

	--> catch Details! main object
	local _detalhes = _G._detalhes
	local DetailsFrameWork = _detalhes.gump
	
	local framework = _G._detalhes:GetFramework()
	local options_text_template = framework:GetTemplate ("font", "OPTIONS_FONT_TEMPLATE")
	local options_dropdown_template = framework:GetTemplate ("dropdown", "OPTIONS_DROPDOWN_TEMPLATE")
	local options_switch_template = framework:GetTemplate ("switch", "OPTIONS_CHECKBOX_TEMPLATE")
	local options_slider_template = framework:GetTemplate ("slider", "OPTIONS_SLIDER_TEMPLATE")
	local options_button_template = framework:GetTemplate ("button", "OPTIONS_BUTTON_TEMPLATE")
	
	
	framework.button_templates ["ADL_BUTTON_TEMPLATE"] = {
		backdrop = {edgeFile = [[Interface\Buttons\WHITE8X8]], edgeSize = 1, bgFile = [[Interface\Tooltips\UI-Tooltip-Background]], tileSize = 64, tile = true},
		backdropcolor = {.3, .3, .3, .9},
		onentercolor = {.6, .6, .6, .9},
		backdropbordercolor = {0, 0, 0, 1},
		onenterbordercolor = {0, 0, 0, 1},
	}
	
	options_button_template = framework:GetTemplate ("button", "ADL_BUTTON_TEMPLATE")
	
	local all_types = {type_cooldown, type_debuff}
	local all_types_names = {Loc ["STRING_TYPE_COOLDOWN"], Loc ["STRING_TYPE_DEBUFF"]}
	local current_type = all_types [1]
	local current_segment = 1
	
	local class_icons_with_alpha = [[Interface\AddOns\Details\images\classes_small_alpha]]
	local BUTTON_BACKGROUND_COLOR = {.5, .5, .5, .3}
	local BUTTON_BACKGROUND_COLORHIGHLIGHT = {.5, .5, .5, .8}
	local BUTTON_BACKGROUND_COLOR2 = {.4, .4, .4, .3}
	local BUTTON_BACKGROUND_COLORHIGHLIGHT2 = {.4, .4, .4, .8}
	
	local c = CreateFrame ("Button", nil, TimeLineFrame, "UIPanelCloseButton")
	c:SetWidth (32)
	c:SetHeight (32)
	c:SetPoint ("TOPRIGHT",  TimeLineFrame, "TOPRIGHT", -3, -8)
	c:SetFrameLevel (TimeLineFrame:GetFrameLevel()+1)
	c:SetAlpha (0.45)
	c:GetNormalTexture():SetDesaturated (true)
	
	local search
	
	local myname = UnitName ("player")
	
	local GameCooltip = GameCooltip
	
	TimeLine.debuff_temp_table = {}
	
	--> record if button is shown
	TimeLine.showing = false
	TimeLine.open = false
	
	--> record if boss window is open or not
	TimeLine.window_open = false
	
	--> rows
	TimeLine.rows = {}
	
	--> new combat
	TimeLine.current_battle_cooldowns_timeline = {}
	
	function TimeLine:NewCombat()
		TimeLine.current_battle_cooldowns_timeline = {}
		TimeLine.debuff_temp_table = {}
	end
	
	function TimeLine:CanShowIcon()
		if (#TimeLine.combat_data > 0) then
			TimeLine:ShowIcon()
		else
			TimeLine:HideIcon()
		end
	end
	
	function TimeLine:FinishCombat()

		--> is in debug mode?
		if (debugmode and _combat_object and not _combat_object.is_boss) then
			_combat_object.is_boss = {
				index = 1, 
				name = _detalhes:GetBossName (1098, 1),
				zone = "Throne of Thunder", 
				mapid = 1098, 
				encounter = "Jin'Rohk the Breaker"
			}
		end
	
		--> is a boss encounter?
		if (_combat_object and _combat_object.is_boss) then
			
			--> combat information
				tinsert (TimeLine.combat_data, 1, {})
				TimeLine.combat_data [1].total_time = _combat_object:GetCombatTime()
				local boss = _combat_object.is_boss
				if (boss) then
					TimeLine.combat_data [1].name = boss.name
				else
					TimeLine.combat_data [1].name = _combat_object.enemy
				end
				local _start, _end = _combat_object:GetDate()
				TimeLine.combat_data [1].date_start = _start or date ("%H:%M:%S")
				TimeLine.combat_data [1].date_end = _end or date ("%H:%M:%S")
			
			--> cooldowns
				table.insert (TimeLine.cooldowns_timeline, 1, TimeLine.current_battle_cooldowns_timeline)
			
			--> debuffs - close opened debuffs
				for player_name, player_table in pairs (TimeLine.debuff_temp_table) do
					for spellid, spell_table in pairs (player_table) do
						if (spell_table.active) then
							spell_table.active = false
							tinsert (spell_table, _combat_object:GetCombatTime())
						end
					end
				end
				
			--> debufs - store debuff data
				tinsert (TimeLine.debuff_timeline, 1, TimeLine.debuff_temp_table) 
			
			--> deaths
				local deaths = {}
				local death_list = _combat_object:GetDeaths()
				
				for i, t in ipairs (death_list) do
					
					local this_death = {}
					
					local time_of_death = t[2]
					local player_name = t[3]
					local last_events = {}

					for i = #t[1], 1, -1 do 
						local damage_event = t[1][i]
						if (type (damage_event [1]) == "boolean" and damage_event [1]) then
							local time = damage_event [4]
							if (time+8 > time_of_death) then
								tinsert (last_events, 1, damage_event)
								if (#last_events >= 3) then
									break
								end
							end
						end
					end
					
					this_death.time = t.dead_at
					this_death.events = last_events
					
					if (not deaths [player_name]) then
						deaths [player_name] = {}
					end
					tinsert (deaths [player_name], this_death)
				end
				
				tinsert (TimeLine.deaths_data, 1, deaths)
			
			--> limit segments
				if (#TimeLine.cooldowns_timeline > TimeLine.db.max_segments) then
					table.remove (TimeLine.cooldowns_timeline, TimeLine.db.max_segments+1)
					table.remove (TimeLine.debuff_timeline, TimeLine.db.max_segments+1)
					table.remove (TimeLine.combat_data, TimeLine.db.max_segments+1)
					table.remove (TimeLine.deaths_data, TimeLine.db.max_segments+1)
				end
			
			--> show icon
				if (TimeLine.open) then
					TimeLine:Refresh()
				end
				TimeLine:ShowIcon()

		else
			--> discart cooldown table
				table.wipe (TimeLine.current_battle_cooldowns_timeline)
				table.wipe (TimeLine.debuff_temp_table)
		end
	end
	
	function TimeLine:OnDetailsEvent (event, ...)
		if (event == "HIDE") then --> plugin hidded, disabled
			self.open = false
		
		elseif (event == "SHOW") then --> plugin hidded, disabled
			self.open = true
			TimeLine:RefreshScale()
			
		elseif (event == "COMBAT_PLAYER_ENTER") then --> combat started
			
			parser_cache = TimeLine:GetParserPlayerCache()
		
			_combat_object = select (1, ...)
			if (not _combat_object and Details) then
				_combat_object = Details:GetCurrentCombat()
				if (not _combat_object) then
					return
				end
			end
			
			--> create temp tables
			TimeLine:NewCombat()
			
			_is_in_combat = true
		
		elseif (event == "COMBAT_PLAYER_LEAVE") then
			TimeLine:FinishCombat()
			_is_in_combat = false

		elseif (event == "DETAILS_DATA_RESET") then
		
			table.wipe (TimeLine.cooldowns_timeline)
			table.wipe (TimeLine.combat_data)
			table.wipe (TimeLine.debuff_timeline)
			table.wipe (TimeLine.deaths_data)
			
			TimeLine:Refresh()
			TimeLine:CloseWindow()
			TimeLine:HideIcon()
		
		elseif (event == "DETAILS_STARTED") then
			TimeLine:CanShowIcon()
		
		elseif (event == "PLUGIN_DISABLED") then
			TimeLine:HideIcon()
			TimeLine:CloseWindow()
			TimeLineFrame:UnregisterEvent ("COMBAT_LOG_EVENT_UNFILTERED")
			
		elseif (event == "PLUGIN_ENABLED") then
			TimeLineFrame:RegisterEvent ("COMBAT_LOG_EVENT_UNFILTERED")
			TimeLine:CanShowIcon()
		end
	end
	
	--> show icon on toolbar
	function TimeLine:ShowIcon()
		TimeLine.showing = true
		--> [1] button to show [2] button animation: "star", "blink" or true (blink)
		TimeLine:ShowToolbarIcon (TimeLine.ToolbarButton, "star")
	end
	
	-->  hide icon on toolbar
	function TimeLine:HideIcon()
		TimeLine.showing = false
		TimeLine:HideToolbarIcon (TimeLine.ToolbarButton)
	end
	
	function TimeLine:DelaySegmentRefresh()
		for index, combat in ipairs (TimeLine.combat_data) do
			if (combat.name) then
				return Details_TimeLineSegmentDropdown.MyObject:Select (current_segment, true)
			end
		end
	end
	
	--> user clicked on button, need open or close window
	function TimeLine:OpenWindow()
		if (TimeLine.open) then
			return TimeLine:CloseWindow()
		else
			TimeLine.open = true
		end
		--> build all window data
		
		TimeLine:Refresh()

		TimeLine:ScheduleTimer ("DelaySegmentRefresh", 2)
		
		--> show
		TimeLineFrame:Show()
		return true
	end
	
	function TimeLine:CloseWindow()
		TimeLineFrame:Hide()
		TimeLine.open = false
		return true
	end

	--> create the button to show on toolbar [1] function OnClick [2] texture [3] tooltip [4] width or 14 [5] height or 14 [6] frame name or nil
	TimeLine.ToolbarButton = _detalhes.ToolBar:NewPluginToolbarButton (TimeLine.OpenWindow, [[Interface\Addons\Details_TimeLine\icon]], Loc ["STRING_PLUGIN_NAME"], Loc ["STRING_TOOLTIP"], 12, 12, "TIMELINE_BUTTON")
	TimeLine.ToolbarButton.shadow = true
	
	--> setpoint anchors mod if needed
	TimeLine.ToolbarButton.y = 0
	TimeLine.ToolbarButton.x = 0

	--> build main frame
	TimeLineFrame:SetFrameStrata ("HIGH")
	TimeLineFrame:SetToplevel (true)
	
	TimeLineFrame:SetPoint ("center", UIParent, "center")

	TimeLineFrame.Width = 925 --718 old value
	TimeLineFrame.Height = 498
	
	local mode_buttons_y_pos = 10
	local mode_buttons_width = 140
	local mode_buttons_height = 20
	
	local CONST_TOTAL_TIMELINES = 20
	
	TimeLineFrame:SetSize (TimeLineFrame.Width, TimeLineFrame.Height)
	
	TimeLineFrame:EnableMouse (true)
	TimeLineFrame:SetResizable (false)
	TimeLineFrame:SetMovable (true)
	TimeLineFrame:SetScript ("OnMouseDown", 
					function (self, botao)
						if (botao == "LeftButton") then
							if (self.isMoving) then
								return
							end
							self:StartMoving()
							self.isMoving = true
						elseif (botao == "RightButton") then
							if (self.isMoving) then
								return
							end
							TimeLine:CloseWindow()
						end
					end)
					
	TimeLineFrame:SetScript ("OnMouseUp", 
					function (self)
						if (self.isMoving) then
							self:StopMovingOrSizing()
							self.isMoving = false
						end
					end)
	
	TimeLineFrame:SetBackdrop ({bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = true, tileSize = 16,
	edgeFile = [[Interface\Buttons\WHITE8X8]], edgeSize = 1,
	insets = {left = 1, right = 1, top = 1, bottom = 1}})
	TimeLineFrame:SetBackdropColor (0, 0, 0, .4)

	local title = DetailsFrameWork:NewLabel (TimeLineFrame, nil, "$parentTitle", nil, "Time Line", nil, 20, "yellow")
	title:SetPoint (12, -13)
	TimeLine:SetFontOutline (title, true)

	local bottom_texture = DetailsFrameWork:NewImage (TimeLineFrame, nil, TimeLineFrame.Width-4, 25, "background", nil, nil, "$parentBottomTexture")
	bottom_texture:SetColorTexture (0, 0, 0, .6)
	bottom_texture:SetPoint ("bottomleft", TimeLineFrame, "bottomleft", 2, 7)
	
	TimeLine.Times = {}
	for i = 1, CONST_TOTAL_TIMELINES do 
		local time = DetailsFrameWork:NewLabel (TimeLineFrame, nil, "$parentTime"..i, nil, "00:00")
		time:SetPoint ("topleft", TimeLineFrame, "topleft", 78 + (i*39), -20)
		TimeLine.Times [i] = time
		local line = DetailsFrameWork:NewImage (TimeLineFrame, nil, 1, 361, "border", nil, nil, "$parentTime"..i.."Bar")
		line:SetColorTexture (1, 1, 1, .1)
		line:SetPoint ("topleft", time, "topleft", 0, -10)
	end
	
	function TimeLine:UpdateTimeLine (total_time)

		local linha = TimeLine.Times [CONST_TOTAL_TIMELINES]
		local minutos, segundos = math.floor (total_time / 60), math.floor (total_time % 60)
		if (segundos < 10) then
			segundos = "0" .. segundos
		end
		
		if (minutos > 0) then
			if (minutos < 10) then
				minutos = "0" .. minutos
			end
			linha:SetText (minutos .. ":" .. segundos)
		else
			linha:SetText ("00:" .. segundos)
		end
		
		local time_div = total_time / (CONST_TOTAL_TIMELINES-1) --786 -- 49.125
		
		for i = 2, CONST_TOTAL_TIMELINES-1 do
		
			local linha = TimeLine.Times [i]
			
			local this_time = time_div * (i-1)
			local minutos, segundos = math.floor (this_time / 60), math.floor (this_time % 60)
			
			if (segundos < 10) then
				segundos = "0" .. segundos
			end
			
			if (minutos > 0) then
				if (minutos < 10) then
					minutos = "0" .. minutos
				end
				linha:SetText (minutos .. ":" .. segundos)
			else
				linha:SetText ("00:" .. segundos)
			end
			
		end
		
	end
	
	--> dropdown select type (label)
		local select_type_label = DetailsFrameWork:NewLabel (TimeLineFrame, nil, "$parentTypeLabel", nil, Loc ["STRING_TYPE"])
	--> dropdown select type (dropdown)
		local selectTypeOption = function (_, _, selected)
			current_type = selected
			TimeLine:Refresh()
		end
		
		local type_menu = {
			{value = type_cooldown, label = Loc ["STRING_TYPE_COOLDOWN"], onclick = selectTypeOption, icon = [[Interface\ICONS\Spell_Holy_GuardianSpirit]]},
			{value = type_debuff, label = Loc ["STRING_TYPE_DEBUFF"], onclick = selectTypeOption, icon = [[Interface\ICONS\Spell_Shadow_ShadowWordPain]]}
		}
		local buildTypeMenu = function()
			return type_menu
		end
		
		local select_type_dropdown = DetailsFrameWork:NewDropDown (TimeLineFrame, nil, "$parentTypeDropdown", nil, 150, 20, buildTypeMenu, 1, options_dropdown_template)
		
	--> dropdown select combat (label)
		local select_segment_label = DetailsFrameWork:NewLabel (TimeLineFrame, nil, "$parentSegmentLabel", nil, Loc ["STRING_SELECT_SEGMENT"], "GameFontNormal", nil, "orange")
		
	--> dropdown select combat (dropdown)
		local selectCombatOption = function (_, _, segment)
			current_segment = segment
			TimeLine:Refresh()
		end
		
		local buildCombatMenu = function()
			local t = {}
			for index, combat in ipairs (TimeLine.combat_data) do
				if (combat.name) then
					local minutos, segundos = math.floor (combat.total_time/60), math.floor (combat.total_time%60)
					t [#t+1] = {value = index, label = combat.name .. " (" .. index .. ")", onclick = selectCombatOption, icon = [[Interface\GROUPFRAME\UI-GROUP-MAINASSISTICON]], desc = minutos .. "m " .. segundos .. "s " .. " (" .. (combat.date_start or "") .. " - " .. (combat.date_end or "") .. ")"}
				end
			end
			return t
		end
		local select_segment_dropdown = DetailsFrameWork:NewDropDown (TimeLineFrame, nil, "$parentSegmentDropdown", nil, 150, 20, buildCombatMenu, nil, options_dropdown_template)

	--> change mode endd
		local change_mode = function (_, _, mode)
			current_type = mode
			TimeLine:Refresh()
			TimeLine:RefreshButtons()
		end
	
	--> select Cooldowns button
		local show_cooldowns_button = framework:NewButton (TimeLineFrame, _, "$parentModeCooldownsButton", "ModeCooldownsButton", mode_buttons_width, mode_buttons_height, change_mode, type_cooldown, nil, nil, "Cooldowns", 1, options_button_template)
		show_cooldowns_button:SetPoint ("bottomleft", TimeLineFrame, "bottomleft", 10, mode_buttons_y_pos)
		show_cooldowns_button:SetIcon ([[Interface\ICONS\Spell_Holy_GuardianSpirit]], nil, nil, nil, {5/64, 59/64, 5/64, 59/64}, nil, nil, 2)
		show_cooldowns_button:SetTextColor ("orange")

		local show_debuffs_button = framework:NewButton (TimeLineFrame, _, "$parentModeDebuffsButton", "ModeDebuffsButton", mode_buttons_width, mode_buttons_height, change_mode, type_debuff, nil, nil, "Debuffs", 1, options_button_template)
		show_debuffs_button:SetPoint ("bottomleft", show_cooldowns_button, "bottomright", 5, 0)
		show_debuffs_button:SetIcon ([[Interface\ICONS\Spell_Shadow_ShadowWordPain]], nil, nil, nil, {5/64, 59/64, 5/64, 59/64}, nil, nil, 2)
		show_debuffs_button:SetTextColor ("orange")

		local all_buttons = {show_cooldowns_button, show_debuffs_button}
	
		local set_button_as_pressed = function (button)
			local onenter = button.onenter_backdrop
			local onleave = button.onleave_backdrop
			onenter[1], onenter[2], onenter[3], onenter[4] = .8, .8, .8, 1
			onleave[1], onleave[2], onleave[3], onleave[4] = .1, .1, .1, 1
			
			local border_onenter = button.onenter_backdrop_border_color
			border_onenter[1], border_onenter[2], border_onenter[3], border_onenter[4] = 1, 1, 0, 1
			local border_onleave = button.onleave_backdrop_border_color
			border_onleave[1], border_onleave[2], border_onleave[3], border_onleave[4] = 1, .8, 0, 1
			
			if (button:IsMouseOver()) then
				button:SetBackdropColor (onenter[1], onenter[2], onenter[3], onenter[4])
				button:SetBackdropBorderColor (border_onenter[1], border_onenter[2], border_onenter[3], border_onenter[4])
			else
				button:SetBackdropColor (onleave[1], onleave[2], onleave[3], onleave[4])
				button:SetBackdropBorderColor (border_onleave[1], border_onleave[2], border_onleave[3], border_onleave[4])
			end
		end
		
		function TimeLine:RefreshButtons()
			for _, button in ipairs (all_buttons) do
				local onenter = button.onenter_backdrop
				onenter[1], onenter[2], onenter[3], onenter[4] = .6, .6, .6, .9
				local onleave = button.onleave_backdrop
				onleave[1], onleave[2], onleave[3], onleave[4] = .3, .3, .3, .9
				local border_onenter = button.onenter_backdrop_border_color
				border_onenter[1], border_onenter[2], border_onenter[3], border_onenter[4] = 0, 0, 0, 1
				local border_onleave = button.onleave_backdrop_border_color
				border_onleave[1], border_onleave[2], border_onleave[3], border_onleave[4] = 0, 0, 0, 1
				
				button:SetBackdropColor (onleave[1], onleave[2], onleave[3], onleave[4])
				button:SetBackdropBorderColor (border_onleave[1], border_onleave[2], border_onleave[3], border_onleave[4])
			end
		
			if (current_type == type_cooldown) then --overall
				set_button_as_pressed (show_cooldowns_button)
			elseif (current_type == type_debuff) then --endurance
				set_button_as_pressed (show_debuffs_button)
			end
		end
		
		TimeLine:RefreshButtons()
		
	--> erase data button
		local delete_button_func = function()
			table.wipe (TimeLine.cooldowns_timeline)
			table.wipe (TimeLine.combat_data)
			table.wipe (TimeLine.debuff_timeline)
			table.wipe (TimeLine.deaths_data)
			
			TimeLine:Refresh()
			
			if (TimeLine.open) then
				TimeLine:HideIcon()
				TimeLine:CloseWindow()
			end
		end

		local delete_button = framework:NewButton (TimeLineFrame, _, "$parentDeleteButton", "DeleteButton", 120, 20, delete_button_func, nil, nil, nil, "Reset Data", 1, options_button_template)
		delete_button:SetPoint ("bottomright", TimeLineFrame, "bottomright", -10, 10)
		delete_button:SetIcon ([[Interface\Buttons\UI-StopButton]], nil, nil, nil, {0, 1, 0, 1}, nil, nil, 2)
		delete_button:SetTextColor ("orange")
		
		local options_button = framework:NewButton (TimeLineFrame, _, "$parentOptionsPanelButton", "OptionsPanelButton", 120, 20, TimeLine.OpenOptionsPanel, nil, nil, nil, "Options", 1, options_button_template)
		options_button:SetPoint ("right", delete_button, "left", 2, 0)
		options_button:SetIcon ([[Interface\Buttons\UI-OptionsButton]], nil, nil, nil, {0, 1, 0, 1}, nil, nil, 2)
		options_button:SetTextColor ("orange")

	--> search field
		local onPressEnter = function (_, _, text)
			if (text) then
				search = string.lower (text)
				TimeLine:Refresh()
			end
		end
		
		local search_label = DetailsFrameWork:NewLabel (TimeLineFrame, nil, "$parentSearchLabel", nil, Loc ["STRING_SEARCH"], "GameFontNormal", nil, "orange")
		search_label:SetPoint ("left", show_debuffs_button, "right", 5, 0)
		local searchbox = DetailsFrameWork:NewTextEntry (TimeLineFrame, _, "$parentSearch", "searchbox", 100, 20, onPressEnter, nil, nil, nil, nil, options_button_template)
		searchbox:SetPoint ("left", search_label, "right", 2, 0)
		searchbox:SetHook ("OnEscapePressed", function() search = nil; searchbox:SetText(""); searchbox:ClearFocus(); TimeLine:Refresh() end)
		searchbox:SetHook ("OnEditFocusLost", function() 
			if (searchbox:GetText() == "") then
				search = nil
				TimeLine:Refresh()
			end
		end)
		searchbox:SetHook ("OnTextChanged", function() 
			if (searchbox:GetText() ~= "") then
				search = string.lower (searchbox:GetText())
				TimeLine:Refresh()
			else
				search = nil
				TimeLine:Refresh()
			end
		end)
		
	--> Clear search field
		local clearsearch = CreateFrame ("button", nil, TimeLineFrame, "UIPanelCloseButton")
		clearsearch:SetPoint ("left", searchbox.widget, "right", -4, 0)
		clearsearch:SetSize (24, 24)
		clearsearch:SetScript ("OnClick", function (self) 
			searchbox:SetText ("")
			searchbox:ClearFocus()
			search = nil
			TimeLine:Refresh()
		end)

	--> set the point on the segment box
	select_segment_label:SetPoint ("left", clearsearch, "right", 2, 0)
	select_segment_dropdown:SetPoint ("left", select_segment_label, "right", 2, 0)
	

	local backdrop_row = {bgFile = [[Interface\Tooltips\UI-Tooltip-Background]], tile = true, tileSize = 16, insets = {left = 0, right = 0, top = 0, bottom = 0}}
	
	function TimeLine:HideRows()
		for i = 1, #TimeLine.rows do 
			local row = TimeLine.rows [i]
			row:Hide()
		end
	end	
	
	local top_bar = DetailsFrameWork:NewImage (TimeLineFrame, nil, 703, 1, "overlay", nil, nil, "$parentRowTopLine")
	top_bar:SetColorTexture (1, 1, 1, .4)
	local bottom_bar = DetailsFrameWork:NewImage (TimeLineFrame, nil, 703, 1, "overlay", nil, nil, "$parentRowBottomLine")
	bottom_bar:SetColorTexture (1, 1, 1, .4)

	local row_on_enter = function (self)
		top_bar:Show()
		bottom_bar:Show()
		top_bar:SetPoint ("bottom", self, "top")
		bottom_bar:SetPoint ("top", self, "bottom")
		self:SetBackdropColor (0.8, 0.8, 0.8, 0.4)
	end
	local row_on_leave = function (self)
		top_bar:Hide()
		bottom_bar:Hide()
		self:SetBackdropColor (unpack (self.backdropColor))
	end
	
	local block_backdrop_onenter = {bgFile = "Interface\\Tooltips\\UI-Tooltip-Background", tile = true, tileSize = 16,
		edgeFile = [[Interface\AddOns\Details\images\border_2]], edgeSize = 8,
		insets = {left = 0, right = 0, top = 0, bottom = 0}}
	local block_backdrop_cooltip_white = {1, 1, 1, 1}
	
	local block_on_enter = function (self)
	
		self:SetBackdrop (block_backdrop_onenter)
		self:SetBackdropBorderColor (0, 0, 0, .9)
		self.texture:SetBlendMode ("ADD")
		
		top_bar:SetPoint ("bottom", self:GetParent(), "top")
		bottom_bar:SetPoint ("top", self:GetParent(), "bottom")
		self:GetParent():SetBackdropColor (0.8, 0.8, 0.8, 0.4)
		top_bar:Show()
		bottom_bar:Show()
		
		local spell = self.spell
		local spell_name, _, spell_icon = GetSpellInfo (spell [1])
		
		GameCooltip:Reset()
		Details:CooltipPreset (2)
		GameCooltip:SetOption ("TextSize", 10)

		-- pegar o jogador
		-- dar foreach nos cooldowns
		-- ver se algum começa antes e termina depois de começar este
		local player_name = spell [4]
		local playertable = TimeLine [current_type] [current_segment] [player_name]
		
		local time = spell [2]
		local duration = spell [5]
		--playertable é uma array com os cooldowns usados
		
		if (current_type == type_cooldown) then
			for index, spellused in ipairs (playertable) do
				if (spellused [3] ~= spell[1]) then --spellids diferentes
				
					--tempo de luta que o cooldown foi usado
					-- se ele foi usado antes		          e se foi usado a 8 seg de diferença
					if ( (spellused [1] <= time and spellused [1] + 8 >= time) or (spellused [1] >= time and spellused [1] - 8 <= time) ) then
					
						local spellname, _, spellicon = GetSpellInfo (spellused [3])
						GameCooltip:AddLine (spellname, nil, 1, "silver")
						GameCooltip:AddIcon (spellicon, 1, 1, 14, 14)
					
						local minutos, segundos = math.floor (spellused [1]/60), math.floor (spellused [1]%60)
						GameCooltip:AddLine (Loc ["STRING_TIME"] .. ": " .. minutos .. "m " .. segundos .. "s ", nil, 1, "silver")

						GameCooltip:AddLine (Loc ["STRING_TARGET"] .. ": " .. spellused [2], nil, 1, "silver")
					
						--local time_used = spell_table [1]
						--local target = spell_table [2]
						--local spellid = spell_table [3]
						
						GameCooltip:AddLine (" ")
					end
				end
			end
			
			GameCooltip:AddLine (spell_name, nil, 1, "white")
			GameCooltip:AddIcon (spell_icon, 1, 1, 14, 14)
			
			local minutos, segundos = math.floor (spell [2]/60), math.floor (spell [2]%60)
			GameCooltip:AddLine (Loc ["STRING_TIME"] .. ": |cFFFFFFFF" .. minutos .. "m " .. segundos .. "s |r")
			
			GameCooltip:AddLine (Loc ["STRING_TARGET"] .. ": |cFFFFFFFF" .. spell [3] .. "|r")
			
		elseif (current_type == type_debuff) then
		
			GameCooltip:AddLine (spell_name, nil, 1, "white")
			GameCooltip:AddIcon (spell_icon, 1, 1, 14, 14)
			
			local minutos, segundos = math.floor (spell [2]/60), math.floor (spell [2]%60)
			GameCooltip:AddLine (Loc ["STRING_TIME"] .. ": |cFFFFFFFF" .. minutos .. "m " .. segundos .. "s |r")
			
			GameCooltip:AddLine (Loc ["STRING_SOURCE"] .. ": |cFFFFFFFF" .. (spell [6].source or Loc ["STRING_UNKNOWN"]) .. "|r")
			GameCooltip:AddLine (Loc ["STRING_ELAPSED"] .. ": |cFFFFFFFF" .. string.format ("%.1f", duration) .. " " .. Loc ["STRING_SECONDS"] .. "|r")

			local blocks = self:GetParent().blocks
			for _, block in ipairs (blocks) do
				if (block.debuff_start and block ~= self and ((block.debuff_start <= time and block.debuff_start + 8 >= time) or (block.debuff_start >= time and block.debuff_start - 8 <= time))) then
					GameCooltip:AddLine ("")
					local spell_name, _, spell_icon = GetSpellInfo (block.spell [1])
					GameCooltip:AddLine (spell_name)
					GameCooltip:AddIcon (spell_icon, 1, 1, 14, 14)
					
					local minutos, segundos = math.floor (block.debuff_start / 60), math.floor (block.debuff_start % 60)
					GameCooltip:AddLine (Loc ["STRING_TIME"] .. ": " .. minutos .. "m " .. segundos .. "s ")
					
					GameCooltip:AddLine (Loc ["STRING_SOURCE"] .. ": " .. (block.spell [6].source or Loc ["STRING_UNKNOWN"]))
					GameCooltip:AddLine (Loc ["STRING_ELAPSED"] .. ": " .. string.format ("%.1f", block.spell [5]) .. " " .. Loc ["STRING_SECONDS"])
				end
			end

			
		end

		--GameCooltip:SetWallpaper (1, [[Interface\SPELLBOOK\Spellbook-Page-1]], menu_wallpaper_tex, menu_wallpaper_color, true)
		--GameCooltip:SetBackdrop (1, _detalhes.cooltip_preset2_backdrop, nil, block_backdrop_cooltip_white)
		
		GameCooltip:ShowCooltip (self, "tooltip")
		
	end
	
	local block_on_leave = function (self)
		self:SetBackdrop (nil)
		self:SetBackdropBorderColor (0, 0, 0, 0)
		self.texture:SetBlendMode ("BLEND")
		
		top_bar:Hide()
		bottom_bar:Hide()
		
		self:GetParent():SetBackdropColor (unpack (self:GetParent().backdropColor))
		
		GameCooltip:Hide()
	end

	function TimeLine:CreateSpellBlock (row)
	
		local block = CreateFrame ("frame", nil, row)
		--block:SetFrameLevel (row.block_frame_level + 10)
		row.block_frame_level = row.block_frame_level + 1
		if (row.block_frame_level > 9) then
			row.block_frame_level = 3
		end
		
		block.spell = {0, 0, "", "", 0} -- [1] spellid [2] used at [3] target name [4] playername [5] effect time
		
		block:SetHeight (14)
		block:SetScript ("OnEnter", block_on_enter)
		block:SetScript ("OnLeave", block_on_leave)
		
		local texture = block:CreateTexture (nil, "background")
		texture:SetAllPoints (block)
		texture:SetColorTexture (0, 1, 0, .2)
		block.texture = texture
		
		return block
	end
	
	local SetSpellBlock = function (row, block, time_used, spellid, effect_time, target, total_time, pixel_per_sec, player_name, player_table, color, block_index)
	
		block.spell [1] = spellid
		block.spell [2] = time_used
		block.spell [3] = target
		block.spell [4] = player_name
		block.spell [5] = effect_time
		block.spell [6] = player_table
		
		-- largura onde começa a primeira linha: 114
		-- largura onde termina a ultima linha: 654
		-- largura onde termina a ultima linha: 861
		-- largura total: 540
		-- largura total: 747
		
		local where = pixel_per_sec * time_used
		
		block:ClearAllPoints()
		block:SetPoint ("left", row, "left", where + 106, 0)
		
		if (effect_time < 5) then
			effect_time = 5
		elseif (effect_time > 20) then
			effect_time = 20
		end
		block:SetWidth (effect_time * pixel_per_sec)
		
		block.texture:SetColorTexture (unpack (color))
		
		if (search) then
			local spellname = GetSpellInfo (spellid)
			spellname = string.lower (spellname)
			if (spellname:find (search)) then
				block:Show()
			else
				block:Hide()
			end
		else
			block:Show()
		end
	end
	
	local pin_on_enter = function (self)
		self:SetBackdrop (block_backdrop_onenter)
		self:SetBackdropBorderColor (0, 0, 0, .9)
		self.texture:SetBlendMode ("ADD")
		
		top_bar:SetPoint ("bottom", self:GetParent(), "top")
		bottom_bar:SetPoint ("top", self:GetParent(), "bottom")
		self:GetParent():SetBackdropColor (0.8, 0.8, 0.8, 0.4)
		top_bar:Show()
		bottom_bar:Show()
		
		GameCooltip:Reset()
		Details:CooltipPreset (2)
		GameCooltip:SetOption ("TextSize", 10)
		
		for i = 1, #self.table do
			local spellname, _, spellicon = _GetSpellInfo (self.table[i][2])
			GameCooltip:AddLine (spellname, TimeLine:ToK2 (self.table[i][3]), 1, "silver", "orange")
			GameCooltip:AddIcon (spellicon, 1, 1, 14, 14)
		end
		
		GameCooltip:AddLine ("")

		local minutos, segundos = math.floor (self.time/60), math.floor (self.time%60)
		GameCooltip:AddLine (Loc ["STRING_TIME"] .. ": " .. minutos .. "m " .. segundos .. "s ")
		
		--GameCooltip:SetWallpaper (1, [[Interface\SPELLBOOK\Spellbook-Page-1]], menu_wallpaper_tex, menu_wallpaper_color, true)
		--GameCooltip:SetBackdrop (1, _detalhes.cooltip_preset2_backdrop, nil, block_backdrop_cooltip_white)
		GameCooltip:ShowCooltip (self, "tooltip")
	end
	
	local pin_on_leave = function (self)
		GameCooltip:Hide()
	end
	
	local PlaceDeathPins = function (row, i, death, total_time, pixel_per_sec)
		local pin = row.pins [i]
		if (not pin) then
			pin = CreateFrame ("frame", nil, row)
			pin:SetFrameLevel (12)
			pin:SetFrameStrata ("DIALOG")
			pin:SetScript ("OnEnter", pin_on_enter)
			pin:SetScript ("OnLeave", pin_on_leave)
			local texture = pin:CreateTexture (nil, "overlay")
			texture:SetAllPoints()
			texture:SetColorTexture (1, 1, 1, 0.4)
			pin.texture = texture
			pin:SetSize (4, 14)
			pin.table = {}
			row.pins [i] = pin
		end
		
		local where = pixel_per_sec * death.time
		pin:ClearAllPoints()
		pin:SetPoint ("left", row, "left", where + 106, 0)
		pin.time = death.time
		
		for event = 1, #death.events do
			local ev = death.events[event]
			pin.table [event] = {ev[4], ev[2], ev[3]} --time spellid amount
		end
		
		pin:Show()
	end
	
	--> player_table: [1] time [2] target [3] spellid
	local SetPlayer = function (row, player_name, player_table, total_time, pixel_per_sec, deaths)
	
		--> set name and class color
		if (player_name:find ("-")) then
			row.name.text = player_name:gsub (("-.*"), "")
		else
			row.name.text = player_name
		end
		
		local class = TimeLine:GetClass (player_name)
		local spec = TimeLine:GetSpec (player_name)
		
		if (spec) then
			row.name.color = TimeLine.class_colors [class or "PRIEST"]
			row.icon.texture = [[Interface\AddOns\Details\images\spec_icons_normal_alpha]]
			row.icon.texcoord = _detalhes.class_specs_coords [spec]
		elseif (class) then
			row.name.color = TimeLine.class_colors [class]
			row.icon.texture = class_icons_with_alpha
			row.icon.texcoord = TimeLine.class_coords [class]
		else
			row.name.color = "white"
			row.icon.texture = nil
		end

		--> clear all blocks
		for _, block in ipairs (row.blocks) do 
			block:Hide()
		end
		
		--> clear all pins
		for index, pin in ipairs (row.pins) do 
			pin:Hide()
			wipe (pin.table)
		end
		
		--> place death pins
		if (deaths) then
			for index, death in ipairs (deaths) do 
				PlaceDeathPins (row, index, death, total_time, pixel_per_sec)
			end
		end
		
		--> if showing cooldowns:
		if (current_type == type_cooldown and player_table) then
		
			for spell_index, spell_table in ipairs (player_table) do 
				
				local time_used = spell_table [1]
				local target = spell_table [2]
				local spellid = spell_table [3]
				
				local spell_info = TimeLine.DefensiveCooldownSpells [ spellid ] or TimeLine.DefensiveCooldownSpellsNoBuff [ spellid ]
				local cooldown, effect_time = unpack (spell_info)
				
				local block = row.blocks [spell_index]
				if (not block) then
					row.blocks [spell_index] = TimeLine:CreateSpellBlock (row)
					block = row.blocks [spell_index]
				end
				
				SetSpellBlock (row, block, time_used, spellid, effect_time, target, total_time, pixel_per_sec, player_name, player_table, green)
			
			end
		
		elseif (current_type == type_debuff and player_table) then
			
			local o = 1
			
			for spell_id, debuff_timers in pairs (player_table) do 
				
				local start = true
				local i = 1

				for index, time in ipairs (debuff_timers) do
					if (start) then
						local start_time = time
						local end_time = debuff_timers [i+1]
						
						local block = row.blocks [o]
						if (not block) then
							row.blocks [o] = TimeLine:CreateSpellBlock (row)
							block = row.blocks [o]
						end
						
						local debuff_elapsed = end_time - start_time
						
						block.debuff_start = start_time
						block.debuff_end = end_time
						SetSpellBlock (row, block, start_time, spell_id, debuff_elapsed, myname, total_time, pixel_per_sec, player_name, debuff_timers, red, o)
						
						o = o + 1
					end
					start = not start
					i = i + 1
				end
				
			end
			
		end

	end
	
	local on_row_mousedown = function (self, button)
		if (button == "LeftButton") then
			self:GetParent():StartMoving()
			self:GetParent().isMoving = true
		end
	end
	local on_row_mouseup = function (self)
		if (self:GetParent().isMoving) then
			self:GetParent():StopMovingOrSizing()
			self:GetParent().isMoving = false
		end
	end
	
	function TimeLine:CreateRow()
		local index = #TimeLine.rows+1
		
		-- cria as labels e mouse overs e da o set point
		local f = CreateFrame ("frame", "DetailsTimeTimeRow"..index, TimeLineFrame)
		f:SetSize (TimeLineFrame.Width - 15, 14)
		
		f:SetScript ("OnEnter", row_on_enter)
		f:SetScript ("OnLeave", row_on_leave)
		f:SetScript ("OnMouseDown", on_row_mousedown)
		f:SetScript ("OnMouseUp", on_row_mouseup)
		
		f.block_frame_level = 3
		
		f.icon = DetailsFrameWork:NewImage (f, nil, 14, 14, "overlay", nil, nil, "$parentIcon")
		f.icon:SetPoint ("left", f, "left", 2, 0)
		f.name = DetailsFrameWork:NewLabel (f, nil, "$parentName", nil)
		f.name:SetPoint ("left", f.icon, "right", 2, 0)
		
		f:SetBackdrop (backdrop_row)
		if (index%2 == 0) then
			f.backdropColor = BUTTON_BACKGROUND_COLOR
			f:SetBackdropColor (unpack (BUTTON_BACKGROUND_COLOR))
		else
			f.backdropColor = BUTTON_BACKGROUND_COLOR2
			f:SetBackdropColor (unpack (BUTTON_BACKGROUND_COLOR2))
		end
		
		local height = (index * 14) + 32
		f:SetPoint ("topleft", TimeLineFrame, "topleft", 8, -height)
		
		--> resize the window
		if (index > 30) then
			TimeLineFrame:SetHeight (TimeLineFrame.Height + ((index - 21) * 14))
		end
		
		f.blocks = {}
		f.pins = {}

		TimeLine.rows [index] = f
		
		return f
	end
	
	local sort = function (a, b)
		return a[2] < b[2]
	end
	
	function TimeLine:Refresh()
		-- quando abrir sempre ir pro ultimo combate
		
		TimeLine:HideRows()
		
		if (not TimeLine.combat_data [1]) then
			return --TimeLine:Msg (Loc ["STRING_NODATA"])
		end
		
		local _table_to_use = TimeLine [current_type] [current_segment]
		local total_time = TimeLine.combat_data [current_segment].total_time
		--local pixel_per_sec = 540 / total_time
		local pixel_per_sec = 747 / total_time
		
		local i = 0
		
		if (not _table_to_use) then
			TimeLine:Msg ("Failed to load this segment: data is corrupt.")
			return
		end
		
		local sorted = {}
		for player_name, player_table in pairs (_table_to_use) do
			sorted [#sorted+1] = {player_table, player_name}
		end
		table.sort (sorted, sort)
		
		local deaths = TimeLine.deaths_data
		local segment_deaths = deaths [current_segment]
		local has_something = {}
		
		for index, t in ipairs (sorted) do
			local player_table, player_name = t [1], t [2]

			i = i + 1
			
			local row = TimeLine.rows [i]
			if (not row) then
				row = TimeLine:CreateRow()
			end

			local deaths = segment_deaths [player_name]
		
			SetPlayer (row, player_name, player_table, total_time, pixel_per_sec, deaths)
			has_something [player_name] = true
			
			row:Show()
		end
		
		local sorted = {}
		for player_name, t in pairs (segment_deaths) do
			if (not has_something [player_name]) then
				sorted [#sorted+1] = {t, player_name}
			end
		end
		table.sort (sorted, sort)
		
		for index, t in ipairs (sorted) do
			i = i + 1
			local row = TimeLine.rows [i]
			if (not row) then
				row = TimeLine:CreateRow()
			end
			
			local death, player_name = t [1], t [2]
			
			SetPlayer (row, player_name, nil, total_time, pixel_per_sec, death)
			row:Show()
		end
		
		TimeLine:UpdateTimeLine (total_time)
		
	end
	
end

--<
function TimeLine:ArrangeCooldownsInOrder (auraType, auraList)
	if (auraType == "BUFF") then
		local newTable = {}
		for _, spellid in ipairs (auraList) do
			tinsert (newTable, {spellid, GetSpellInfo (spellid)})
		end
		table.sort (newTable, function(a, b) return a[2] < b[2] end)
		return newTable
	elseif (auraType == "DEBUFF") then
		local newTable = {}
		for _, spellid in ipairs (auraList) do
			tinsert (newTable, {spellid, GetSpellInfo (spellid)})
		end
		table.sort (newTable, function(a, b) return a[2] < b[2] end)
		return newTable
	end
end

function TimeLine:OnCooldown (token, time, who_serial, who_name, who_flags, target_serial, target_name, target_flags, spellid, spellname)
	--> hooks run inside parser and do not check if the plugin is enabled or not.
	--> we need to check this here before continue.
	
	if (not TimeLine.__enabled) then
		return
	elseif (not _is_in_combat) then
		return
	end
	
	local data = {_combat_object:GetCombatTime(), target_name, spellid}

	local player_table = TimeLine.current_battle_cooldowns_timeline [who_name]
	
	if (not player_table) then
		TimeLine.current_battle_cooldowns_timeline [who_name] = {}
		player_table = TimeLine.current_battle_cooldowns_timeline [who_name]
	end

	tinsert (player_table, data)
end

function TimeLine:AuraOn (time, _, _, who_serial, who_name, who_flags, _, target_serial, target_name, target_flags, _, spellid, spellname, spelltype, auratype, amount)
	if (auratype == "DEBUFF") then

		if (_bit_band (target_flags, 0x00000400) ~= 0 and _bit_band (who_flags, 0x00000060) ~= 0) then
			local player_table = TimeLine.debuff_temp_table [target_name]
			if (not player_table) then
				player_table = {}
				TimeLine.debuff_temp_table [target_name] = player_table
			end
			
			local spell_table = player_table [spellid]
			if (not spell_table) then
				spell_table = {}
				spell_table.source = who_name or "[*] " .. spellname
				player_table [spellid] = spell_table
			end
			
			if (spell_table.active) then
				return
			end
			
			--array
			tinsert (spell_table, _combat_object:GetCombatTime())
			--hash
			spell_table.active = true
		end
	end
end

function TimeLine:AuraOff (time, _, _, who_serial, who_name, who_flags, _, target_serial, target_name, target_flags, _, spellid, spellname, spelltype, auratype, amount)
	if (auratype == "DEBUFF") then
		if (_bit_band (target_flags, 0x00000400) ~= 0 and _bit_band (who_flags, 0x00000060) ~= 0) then
			local player_table = TimeLine.debuff_temp_table [target_name]
			if (not player_table) then
				return
			end
			
			local spell_table = player_table [spellid]
			if (not spell_table) then
				return
			end
			
			if (not spell_table.active) then
				return
			end
			
			--array
			tinsert (spell_table, _combat_object:GetCombatTime())
			--hash
			spell_table.active = false
		end
	end
end

function TimeLine:AuraSwap (time, _, _, who_serial, who_name, who_flags, _, target_serial, target_name, target_flags, _, spellid, spellname, spelltype, auratype, amount)
	if (auratype == "DEBUFF" or auratype == "BUFF") then
		--> is player, neutral or enemy?
		if (_bit_band (target_flags, 0x00000400) ~= 0 and _bit_band (who_flags, 0x00000060) ~= 0) then
			local player_table = TimeLine.debuff_temp_table [target_name]
			if (not player_table) then
				return
			end
			
			local spell_table = player_table [spellid]
			if (not spell_table) then
				return
			end
			
			spell_table.active = not spell_table.active
			
			--array
			--won't add, since we are just toggling
			--tinsert (spell_table, _combat_object:GetCombatTime())
			--hash
			--spell_table.active = false
		end
	end
end

local build_options_panel = function()
	
	local options_frame = TimeLine:CreatePluginOptionsFrame ("TimeLineOptionsWindow", "Time Line Options", 1)
	
	local menu = {
	
		--o icone pode ser mostrado sempre que tiver algum segmento nele.
		--ao resetar ele esconde o icone, ao resetar o details ele apaga os dados tbm e esconde o ícone.
		
		{
			type = "range",
			get = function() return TimeLine.db.max_segments end,
			set = function (self, fixedparam, value) TimeLine.db.max_segments = value end,
			min = 3,
			max = 25,
			step = 1,
			desc = "Limit of segments stored.",
			name = "Max Segments"
		},
		{
			type = "color",
			get = function() return TimeLine.db.backdrop_color end,
			set = function (self, r, g, b, a) 
				local current = TimeLine.db.backdrop_color
				current[1], current[2], current[3], current[4] = r, g, b, a
				TimeLine:RefreshBackgroundColor()
			end,
			desc = "Select the background color.",
			name = "Background Color"
		},
		{
			type = "range",
			get = function() return TimeLine.db.window_scale end,
			set = function (self, fixedparam, value) TimeLine.db.window_scale = value; TimeLine:RefreshScale() end,
			min = 0.65,
			max = 1.50,
			step = 0.1,
			desc = "Set the window size",
			name = "Window Scale",
			usedecimals = true,
		},
		
	}
	
	local options_text_template = TimeLine:GetFramework():GetTemplate ("font", "OPTIONS_FONT_TEMPLATE")
	local options_dropdown_template = TimeLine:GetFramework():GetTemplate ("dropdown", "OPTIONS_DROPDOWN_TEMPLATE")
	local options_switch_template = TimeLine:GetFramework():GetTemplate ("switch", "OPTIONS_CHECKBOX_TEMPLATE")
	local options_slider_template = TimeLine:GetFramework():GetTemplate ("slider", "OPTIONS_SLIDER_TEMPLATE")
	local options_button_template = TimeLine:GetFramework():GetTemplate ("button", "OPTIONS_BUTTON_TEMPLATE")
	
	_detalhes.gump:BuildMenu (options_frame, menu, 15, -65, 260, true, options_text_template, options_dropdown_template, options_switch_template, true, options_slider_template, options_button_template)
	options_frame:SetBackdropColor (0, 0, 0, .9)

end
TimeLine.OpenOptionsPanel = function()
	if (not TimeLineOptionsWindow) then
		build_options_panel()
	end
	TimeLineOptionsWindow:Show()
end

function TimeLine:RefreshBackgroundColor()
	TimeLineFrame:SetBackdropColor (unpack (TimeLine.db.backdrop_color))
end

function TimeLine:RefreshScale()
	local scale = TimeLine.db.window_scale
	if (TimeLineFrame) then
		TimeLineFrame:SetScale (scale)
	end
end

function TimeLine:OnEvent (_, event, ...)

	if (event == "COMBAT_LOG_EVENT_UNFILTERED" and _combat_object) then
		local ev = select (2, ...)

		if (ev == "SPELL_AURA_APPLIED" or ev == "SPELL_AURA_REFRESH") then
			TimeLine:AuraOn (...)
			
		elseif (ev == "SPELL_AURA_REMOVED") then
			TimeLine:AuraOff (...)
		end

	elseif (event == "ADDON_LOADED") then
		local AddonName = select (1, ...)
		if (AddonName == "Details_TimeLine") then
			
			if (_G._detalhes) then
				
				--> create widgets
				CreatePluginFrames()

				local MINIMAL_DETAILS_VERSION_REQUIRED = 76
				
				local db = DetailsTimeLineDB
				
				--> Install
				local install, saveddata, is_enabled = _G._detalhes:InstallPlugin ("TOOLBAR", Loc ["STRING_PLUGIN_NAME"], [[Interface\CHATFRAME\ChatFrameExpandArrow]], TimeLine, "DETAILS_PLUGIN_TIME_LINE", MINIMAL_DETAILS_VERSION_REQUIRED, "Details! Team", TimeLine.version_string)
				if (type (install) == "table" and install.error) then
					print (install.error)
					return
				end
				
				if (not db) then
					db = {}
					DetailsTimeLineDB = db
					
					db.hide_on_combat = false
					db.max_segments = 4
					db.backdrop_color = {0, 0, 0, .4}
					db.window_scale = 1
					
					db.cooldowns_timeline = {}
					db.debuff_timeline = {}
					db.combat_data = {}
					db.deaths_data = {}
					
					if (saveddata) then
						saveddata.cooldowns_timeline = nil
						saveddata.debuff_timeline = nil
						saveddata.combat_data = nil
						saveddata.deaths_data = nil
						saveddata.hide_on_combat = nil
						saveddata.max_segments = nil
						saveddata.backdrop_color = nil
						saveddata.window_scale = nil
					end
				end
				
				TimeLine.db = db
				TimeLine.saveddata = db
				
				TimeLine.cooldowns_timeline = db.cooldowns_timeline
				TimeLine.debuff_timeline = db.debuff_timeline
				TimeLine.combat_data = db.combat_data
				TimeLine.deaths_data = db.deaths_data
				
				--> Register needed events
				_G._detalhes:RegisterEvent (TimeLine, "COMBAT_PLAYER_ENTER")
				_G._detalhes:RegisterEvent (TimeLine, "COMBAT_PLAYER_LEAVE")
				_G._detalhes:RegisterEvent (TimeLine, "DETAILS_DATA_RESET")
				
				_G._detalhes:InstallHook (DETAILS_HOOK_COOLDOWN, TimeLine.OnCooldown)
				
				TimeLineFrame:RegisterEvent ("COMBAT_LOG_EVENT_UNFILTERED")
				
				--> Register slash commands
				SLASH_DETAILS_TIMELINE1 = "/timeline"
				
				function SlashCmdList.DETAILS_TIMELINE (msg, editbox)
					TimeLine:OpenWindow()
				end
				
				TimeLine:RefreshBackgroundColor()
				
			end
		end
	end
end
