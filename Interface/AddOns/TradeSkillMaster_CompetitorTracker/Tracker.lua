local addonName, TSMCT = ...

TSMCT = LibStub("AceAddon-3.0"):NewAddon(TSMCT, addonName, "AceConsole-3.0","AceEvent-3.0")
TSMCT:SetDefaultModuleState(false)

local L = LibStub("AceLocale-3.0"):GetLocale(addonName)
local AceGUI = LibStub("AceGUI-3.0")
local dbCharMonitor, dbCharData

TSMCT.Version = GetAddOnMetadata(addonName, "Version")
TSMCT.DBVersion = 1
TSMCT.DBName = addonName.."DB" -- GetAddOnMetadata(addonName, "SavedVariables")


local savedDBDefaults = { 
	factionrealm = {
		sync = false, 
		competitors = {	},
		deleted = {},
		loginTime = 0,
		logoutTime = 0,
	},

	char = {
		["Monitor"] = {
			MonitorModuleEnabled = false,
			version = 0,
			NotesColumn = 1,
			status = {
				width=300,
				height=200,
			},
			FrameScale  = 1,
		},
		["Data"] = {
			DataModuleEnabled = false,
		},
	},
	
	profile = {
		treeGroupStatus = {treewidth = 200, groups={[2]=true}},
		TrackMarked = false,
		TrackMark = "%[auc%]",
		TrackMaxRecord = 20,
		TrackNumRows = 26,
		SyncCompetitors = false,
		ChatFrame = "ChatFrame1",
		ChatLevel = 5,
		MaxConnectedTime = 0,
		TriggerEnabled = true,
		TriggerDelay = 120,
	},
}

function TSMCT:OnInitialize()
	for moduleName, module in pairs(TSMCT.modules) do
		TSMCT[moduleName] = module
	end

	TSMCT.db = LibStub:GetLibrary("AceDB-3.0"):New(addonName.."DB", savedDBDefaults, true)
	
	dbCharMonitor = TSMCT.db.char.Monitor
	dbCharData = TSMCT.db.char.Data
	
	
	TSMCT.RegisterModule()
end


-- registers this module with TSM by first setting all fields and then calling TSMAPI:NewModule().
function TSMCT.RegisterModule()
	TSMCT.icons = {
		{
			side="module",
			desc=L["TSMModuleIconText"],
			slashCommand = "ctrack",
			callback="Config:Load",
			icon="Interface\\Icons\\Ability_Priest_Silence"
		},
	}
	
	TSMCT.moduleOptions = {
		callback="Options:Load",
		desc=L["TSMModuleIconText"],
	}
	
	TSMCT.slashCommands = {
		{ key = "ctwindow", label = L["SlashCommandHelp"], callback = "ToggleMonitorWindow" },
	}

	TSMAPI:NewModule(TSMCT)
end


function TSMCT:OnEnable()
	TSMCT.db.factionrealm.loginTime = time()

	TSMCT:Chat(2,L["VersionText"],TSMCT.Version)
	
	if dbCharData.DataModuleEnabled then 
		TSMCT:EnableModule("Data")
		
		if dbCharMonitor.MonitorModuleEnabled then
			TSMCT:EnableModule("Monitor")
		end
	end
	
	TSMCT:RegisterEvent("PLAYER_LOGOUT")
end

function TSMCT:OnDisable()
	TSMCT.db.factionrealm.logoutTime = time()

	TSMCT:DisableModule("Monitor")
	TSMCT:DisableModule("Data")
end

function TSMCT:PLAYER_LOGOUT()
	TSMCT:Disable()
end

function TSMCT.GetFormattedTime(rTime, timeFormat)
	if not rTime then 
		return "?"
	end
	if timeFormat == "ago" then
		return format("%s", SecondsToTime(time()-rTime) or "?")
	elseif timeFormat == "fromnow" then
		return format("%s", SecondsToTime(rTime-time()) or "?")
	elseif timeFormat == "period" then
		return format("%s", SecondsToTime(rTime) or "?")
	elseif timeFormat == "usdate" then
		return date("%m/%d/%y %H:%M", rTime)
	elseif timeFormat == "eudate" then
		return date("%d/%m/%y %H:%M", rTime)
	elseif timeFormat == "aidate" then
		return date("%m/%d %H:%M", rTime)
	end
	
	return "What?"
end

function TSMCT.TrackingEnable(enable) 
	TSMCT.MonitoringEnable(enable) 
	
	dbCharData.DataModuleEnabled = enable
	if enable then 
		TSMCT:EnableModule("Data")
	else
		TSMCT:DisableModule("Data")
		TSMCT:Chat(2,L["DataDisabled"])
	end
end

function TSMCT.MonitoringEnable(enable) 
	dbCharMonitor.MonitorModuleEnabled = enable
	
	if enable then 
		TSMCT:EnableModule("Monitor")
	else
		TSMCT:DisableModule("Monitor")
		TSMCT:Chat(2,L["MonitorDisabled"])
	end
end

function TSMCT:ToggleMonitorWindow(args)
	if args and strmatch(args,"reset") then
		TSMCT:Chat(2,L["CTWindowReset"])
		--TSMCT.MonitoringEnable(false)
		TSMCT.Monitor:ResetFrame()
		--TSMCT.MonitoringEnable(true)
	else
		TSMCT.MonitoringEnable(not dbCharMonitor.MonitorModuleEnabled)
	end
end

function TSMCT:Chat(...)
	level = select(1,...)
	if level <= TSMCT.db.profile.ChatLevel then 
		if select("#",...) > 2 then
			TSMCT:Printf(select(2,...))
		else
			TSMCT:Print(select(2,...))
		end
	end
end
