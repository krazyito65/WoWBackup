--
-- JSHB - main
--

local media = LibStub("LibSharedMedia-3.0")
local AceConfigDialog3 = nil

function JSHB.SlashProcessor_JSHB(input, editbox)
	local v1, v2 = input:match("^(%S*)%s*(.-)$")
	v1 = v1:lower()
	if (v1 == "options") or (v1 == "config") or (v1 == "opt") or (v1 == "o") or (v1 == "") then
		AceConfigDialog3 = AceConfigDialog3 or LibStub("AceConfigDialog-3.0")
		if AceConfigDialog3 and AceConfigDialog3.OpenFrames["JSHB"] then
			JSHB.CloseOptions()
		else
			JSHB.OpenOptions()
		end
	elseif (v1 == "reset") then
		if (not InCombatLockdown() ) then
			print(JSHB.L["JSHB_PRE"]..JSHB.L["MOVERSSETTODEFAULT"])
			JSHB.SetDefaultMoversPositions()
		else
			print(JSHB.L["JSHB_PRE"]..JSHB.L["INCOMBATLOCKDOWN"])
		end
	elseif (v1 == "lock") or (v1 == "unlock") or (v1 == "drag") or (v1 == "move") or (v1 == "l") then
		JSHB.ToggleMoversLock()		
	elseif (v1 == "tableid") or (v1 == "table") then
		if GetMouseFocus():GetName() then
			print("TABLE:", GetMouseFocus():GetName()..(v2 ~= nil and "."..v2 or "") )
			local key, val, frameTable
			frameTable = (v2 ~= nil) and _G[GetMouseFocus():GetName()][v2] or _G[GetMouseFocus():GetName()]
			for key,val in pairs(frameTable) do
				print("Key: ", key, " Val: ", val)
			end
		end
	elseif (v1 == "mem") or (v1 == "m") then
		UpdateAddOnMemoryUsage()
		print("Memory Used:", GetAddOnMemoryUsage("JSHB") )
	elseif (v1 == "gc") then
		print("Garbage collected...")
		collectgarbage("collect")
	else
		print(format(JSHB.L["SLASHDESC1"], JSHB.myVersion) )
		print("/jshb config - " .. JSHB.L["SLASHDESC2"])
		print("/jshb lock - " .. JSHB.L["SLASHDESC3"])
		print("/jshb reset - " .. JSHB.L["SLASHDESC4"])
	end
end

function JSHB:VARIABLES_LOADED()

	JSHB:UnregisterEvent("VARIABLES_LOADED")
	do
		-- enable core modules for all classes
		JSHB.RegisterConfigFunction("MOD_TIMERS", JSHB.SetupTimersModule)				-- Timers Module
		JSHB.RegisterConfigFunction("MOD_ALERTS", JSHB.SetupAlertsModule)					-- Alerts Module
		JSHB.RegisterConfigFunction("MOD_INTERRUPTS", JSHB.SetupInterruptsModule) 	-- Interrupts Module
		JSHB.RegisterConfigFunction("MOD_HEALTHBAR", JSHB.SetupHealthBarModule) 		-- Heath Bar Module
		JSHB.RegisterConfigFunction("MOD_TARGETBAR", JSHB.SetupTargetBarModule)		-- Target Bar Module
		
		-- enable class modules
		if (JSHB.playerClass == "DEATHKNIGHT") then
			JSHB:SetupDeathKnightModule()
			
		elseif (JSHB.playerClass == "DRUID") then
			JSHB:SetupDruidModule()
			
		elseif (JSHB.playerClass == "HUNTER") then
			JSHB:SetupHunterModule()
			
		elseif (JSHB.playerClass == "MAGE") then
			JSHB:SetupMageModule()
			
		elseif (JSHB.playerClass == "MONK") then
			JSHB:SetupMonkModule()
			
		elseif (JSHB.playerClass == "PALADIN") then
			JSHB:SetupPaladinModule()
			
		elseif (JSHB.playerClass == "PRIEST") then
			JSHB:SetupPriestModule()
			
		elseif (JSHB.playerClass == "ROGUE") then
			JSHB:SetupRogueModule()
			
		elseif (JSHB.playerClass == "SHAMAN") then
			JSHB:SetupShamanModule()
			
		elseif (JSHB.playerClass == "WARLOCK") then
			JSHB:SetupWarlockModule()
			
		elseif (JSHB.playerClass =="WARRIOR") then
			JSHB:SetupWarriorModule()
			
		end
	end
	-- Globally configure all modules.
	JSHB.ReconfigureJSHB()
	JSHB:RegisterEvent("UI_SCALE_CHANGED")
	JSHB:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
	JSHB:RegisterEvent("PLAYER_LEVEL_UP")
	JSHB:RegisterEvent("PLAYER_ENTERING_WORLD")
	JSHB:RegisterEvent("GLYPH_ADDED")
	JSHB:RegisterEvent("GLYPH_REMOVED")
	JSHB:RegisterEvent("UPDATE_SHAPESHIFT_FORMS")
	JSHB:RegisterEvent("UPDATE_SHAPESHIFT_FORM")
end

function JSHB:UI_SCALE_CHANGED()
	JSHB.ReconfigureJSHB()
end

function JSHB:ACTIVE_TALENT_GROUP_CHANGED()
	JSHB.ReconfigureJSHB()
end

function JSHB:PLAYER_ENTERING_WORLD()
	JSHB.ReconfigureJSHB()
end

function JSHB:PLAYER_LEVEL_UP()
	JSHB.ReconfigureJSHB()
end

function JSHB:PostChangeProfile()
	JSHB.Options:PopulateDB()
	JSHB.ReconfigureJSHB()
end

function JSHB:GLYPH_ADDED()
	JSHB.ReconfigureJSHB()
end

function JSHB:GLYPH_REMOVED()
	JSHB.ReconfigureJSHB()
end

function JSHB:UPDATE_SHAPESHIFT_FORMS()
	JSHB.playerStance = GetShapeshiftForm()
end

function JSHB:UPDATE_SHAPESHIFT_FORM()
	if (JSHB.playerClass == "PRIEST") then
		JSHB.SetupTimersModule()
	end
end

function JSHB:OnInitialize()

	-- Register some shared media defaults
	media:Register("font", "Arial Narrow", [[Fonts\ARIALN.TTF]])
	media:Register("font", "Big Noodle", [[Interface\AddOns\JSHB\media\fonts\BigNoodle.ttf]])
	media:Register("font", "Friz Quadrata TT", [[Fonts\FRIZQT__.TTF]])
	media:Register("font", "Morpheus", [[Fonts\MORPHEUS.ttf]])
	media:Register("font", "Skurri", [[Fonts\skurri.ttf]])
	
	media:Register("statusbar", "Blank", [[Interface\AddOns\JSHB\media\textures\blank.tga]])
	media:Register("statusbar", "Blizzard", [[Interface\TargetingFrame\UI-StatusBar]])
	media:Register("statusbar", "Solid", [[Interface\AddOns\JSHB\media\textures\solid.tga]])
	media:Register("statusbar", "Glaze", [[Interface\AddOns\JSHB\media\textures\glaze.tga]])
	media:Register("statusbar", "Otravi", [[Interface\AddOns\JSHB\media\textures\otravi.tga]])
	media:Register("statusbar", "Smooth", [[Interface\AddOns\JSHB\media\textures\smooth.tga]])

	media:Register("border", "Blizzard Achievement Wood", [[Interface\AchievementFrame\UI-Achievement-WoodBorder]])
	media:Register("border", "Blizzard Chat Bubble", [[Interface\Tooltips\ChatBubble-Backdrop]])
	media:Register("border", "Blizzard Dialog", [[Interface\DialogFrame\UI-DialogBox-Border]])
	media:Register("border", "Blizzard Dialog Gold", [[Interface\DialogFrame\UI-DialogBox-Gold-Border]])
	media:Register("border", "Blizzard Party", [[Interface\CHARACTERFRAME\UI-Party-Border]])
	media:Register("border", "Blizzard Tooltip", [[Interface\Tooltips\\UI-Tooltip-Border]])
	media:Register("border", "Solid", [[Interface\AddOns\JSHB\media\textures\solidborder.tga]])

	media:Register("background", "Blizzard Dialog Background", [[Interface\DialogFrame\UI-DialogBox-Background]])
	media:Register("background", "Blizzard Dialog Background Dark", [[Interface\DialogFrame\UI-DialogBox-Background-Dark]])
	media:Register("background", "Blizzard Dialog Background Gold", [[Interface\DialogFrame\UI-DialogBox-Gold-Background]])
	media:Register("background", "Blizzard Low Health", [[Interface\FullScreenTextures\LowHealth]])
	media:Register("background", "Blizzard Marble", [[Interface\FrameGeneral\UI-Background-Marble]])
	media:Register("background", "Blizzard Out of Control", [[Interface\FullScreenTextures\OutOfControl]])
	media:Register("background", "Blizzard Parchment", [[Interface\AchievementFrame\UI-Achievement-Parchment-Horizontal]])
	media:Register("background", "Blizzard Parchment 2", [[Interface\AchievementFrame\UI-GuildAchievement-Parchment-Horizontal]])
	media:Register("background", "Blizzard Rock", [[Interface\FrameGeneral\UI-Background-Rock]])
	media:Register("background", "Blizzard Tabard Background", [[Interface\TabardFrame\TabardFrameBackground]])
	media:Register("background", "Blizzard Tooltip", [[Interface\Tooltips\UI-Tooltip-Background]])
	media:Register("background", "Solid", [[Interface\Buttons\WHITE8X8]])
	
	media:Register("sound", "Alliance Bell", [[Sound\Doodad\BellTollAlliance.ogg]])
	media:Register("sound", "Cannon Blast", [[Sound\Doodad\Cannon01_BlastA.ogg]])
	media:Register("sound", "Classic", [[Sound\Doodad\BellTollNightElf.ogg]])
	media:Register("sound", "Ding", [[Sound\interface\AlarmClockWarning3.ogg]])
	media:Register("sound", "Dynamite", [[Sound\Spells\DynamiteExplode.ogg]])
	media:Register("sound", "Gong", [[Sound\Doodad\G_GongTroll01.ogg]])
	media:Register("sound", "Horde Bell", [[Sound\Doodad\BellTollHorde.ogg]])
	media:Register("sound", "Raid Warning", [[Sound\interface\RaidWarning.ogg]])
	media:Register("sound", "Serpent", [[Sound\Creature\TotemAll\SerpentTotemAttackA.ogg]])
	media:Register("sound", "Tribal Bell", [[Sound\Doodad\BellTollTribal.ogg]])
	
	-- Register Slash commands for JS' Hunter Bar.
	SlashCmdList["JSHB"] = JSHB.SlashProcessor_JSHB
	_G["SLASH_JSHB1"] = '/jshb'
	_G["SLASH_JSHB2"] = '/jsb'
	_G["SLASH_JSHB3"] = '/js'
	
	-- JSHB tries to wait for all variables to be loaded before configuring itself.
	JSHB:RegisterEvent("VARIABLES_LOADED")
	
	-- Setup Saved Variables
	JSHB.db = LibStub("AceDB-3.0"):New("JSHB4", JSHB.defaults)

	-- New installation?
	JSHB.CheckForNewInstallSetup()
	
	-- Check if we need to upgrade any database items.
	--JSHB.CheckForUpgrades()
	
	-- Register a reconfigure call for when the user changes profiles.
	JSHB.db.RegisterCallback(JSHB, "OnProfileChanged", "PostChangeProfile")
	JSHB.db.RegisterCallback(JSHB, "OnProfileCopied", "PostChangeProfile")
	JSHB.db.RegisterCallback(JSHB, "OnProfileReset", "PostChangeProfile")
	
	-- Setup the initial options panels.
	JSHB.Options.Initialize()
end