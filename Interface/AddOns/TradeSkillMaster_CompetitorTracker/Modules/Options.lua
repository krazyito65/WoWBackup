local addonName, TSMCT = ...

local Options = TSMCT:NewModule("Options", "AceHook-3.0")
local Private = {}

local AceGUI = LibStub("AceGUI-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale(addonName)

local dbProfile, dbData, dbChar

function Options:Load(container)
	dbProfile  = TSMCT.db.profile
	dbData = TSMCT.db.factionrealm
	dbChar = TSMCT.db.char

	local tg = AceGUI:Create("TSMTabGroup")
	tg:SetLayout("Fill")
	tg:SetFullWidth(true)
	tg:SetFullHeight(true)
	
	tg:SetTabs({
		{value=1, text=L["OptTabOptions"]},
		{value=2, text=L["OptTabMonitor"]},
	})
	
	tg:SetCallback("OnGroupSelected",function(self, _, value)
		self:ReleaseChildren()

		if value==1 then
			Private.OptionsTracking(self)
		elseif value==2 then
			Private.OptionsMonitor(self)
		end
	end)
	container:AddChild(tg)
	
	tg:SelectTab(1)
end

function Private.OptionsTracking(parent)

	local page = { 
		{
			type = "SimpleGroup",
			layout = "list",
	
			children = {
				{
					type="InlineGroup",
					layout="Flow",
					title="Tracking Options",
					children = {
						{
							type = "CheckBox",
							label = L["OptDataModuleEnabledLabel"],
							settingInfo = { dbChar.Data, "DataModuleEnabled" },
							relativeWidth = 0.5,
							disabled = false,
							tooltip = L["OptDataModuleEnabledInfo"],
							callback = function(self,_,value) 
								TSMCT.TrackingEnable(value);
							end,
						},
						{
							type = "Slider",
							value = dbProfile.TrackMaxRecord,
							label = L["OptTrackMaxRecordLabel"],
							relativeWidth = 0.5,
							min = 1,
							max = 100,
							step = 1,
							callback = function(_,_,value) dbProfile.TrackMaxRecord = value end,
							tooltip = L["OptTrackMaxRecordInfo"],
						},
						{
							type = "Spacer",
							quantity = 2,
						},
						{
							type = "CheckBox",
							value = dbProfile.TrackMarked,
							label = L["OptTrackMakedLabel"],
							relativeWidth = 0.5,
							disabled = false,
							tooltip = L["OptTrackMakedInfo"],
							callback = function(_,_,value) 
								if value == true then dbProfile.TrackMarked = true; else dbProfile.TrackMarked = false;	end
							end,
						},
						{
							type = "EditBox",
							value = dbProfile.TrackMark,
							label = L["OptTrackMakLabel"],
							relativeWidth = 0.5,
							disabled = false,
							disabledTooltip = L["OptTrackMakDisabledInfo"],
							callback = function(self, _, value) dbProfile.TrackMark = value end,
							tooltip = L["OptTrackMakInfo"],
						},
						
						{
							type = "CheckBox",
							value = dbProfile.SyncCompetitors,
							label = L["OptSyncLabel"],
							disabled = false,
							tooltip = L["OptSyncInfo"],
							callback = function(_,_,value) 
								if value == true then dbProfile.SyncCompetitors = true; else dbProfile.SyncCompetitors = false;	end
							end,
						},
						{
							type = "Spacer",
							quantity = 2,
						},
						{
							type = "Slider",
							value = dbProfile.ChatLevel,
							label = L["OptChatLevelLabel"],
							relativeWidth = 0.5,
							min = 1,
							max = 5,
							step = 1,
							callback = function(_,_,value) dbProfile.ChatLevel = value end,
							tooltip = L["OptChatLevelInfo"],
						},
						{
							type = "Spacer",
							quantity = 2,
						},
						{
							type = "CheckBox",
							label = L["OptTiggerEnabledLabel"],
							settingInfo = { dbProfile, "TriggerEnabled" },
							relativeWidth = 0.5,
							disabled = false,
							tooltip = L["OptTriggerEnabledInfo"],
						},
						{
							type = "Slider",
							settingInfo = { dbProfile, "TriggerDelay" },
							label = L["OptTriggerDelayLabel"],
							relativeWidth = 0.5,
							min = 60,
							max = 500,
							step = 10,
							tooltip = L["OptTriggerDelayInfo"],
						},
					},
				},
			},
		},
	}
	
	TSMAPI.GUI:BuildOptions(parent, page)
end

function Private.OptionsMonitor(parent)
	local page = { 
		{
			type = "SimpleGroup",
			layout = "list",
	
			children = {
				{
					type="InlineGroup",
					layout="Flow",
					title="Monitor Options",
					children = {
						{
							type = "CheckBox",
							label = L["OptMonitorModuleEnabledLabel"],
							settingInfo = { dbChar.Monitor, "MonitorModuleEnabled" },
							fullWidth = true,
							disabled = false,
							tooltip = L["OptMonitorModuleEnabledInfo"],
							callback = function(_,_,value) TSMCT.MonitoringEnable(value) end,
						},
						{
							type = "Slider",
							label = L["OptMonitorFrameScaleLabel"],
							settingInfo = { dbChar.Monitor, "FrameScale" },
							isPercent = true,
							relativeWidth = 0.5,
							min = 0.1,
							max = 2,
							step = 0.05,
							callback = function(_, _, value) if TSMCompetitorTrackerFrame then TSMCompetitorTrackerFrame:SetFrameScale(value) end end,
							tooltip = L["OptMonitorFrameScaleInfo"],
						},
						{
							type = "Slider",
							label = L["OptMaxConnectedTimeLabel"],
							settingInfo = { dbProfile, "MaxConnectedTime" },
							relativeWidth = 0.5,
							min = 0,
							max = 48,
							step = 1,
							tooltip = L["OptMaxConnectedTimeInfo"],
						},
					},
				},
			},
		},
	}
	
	TSMAPI.GUI:BuildOptions(parent, page)
end

function Private.ProfilesPage(parent,refreshPage)
	local AceDB = TSMCT.db
	
	-- Popup Confirmation Window used in this module
	StaticPopupDialogs["TSMCompetitorTrackerProfiles.DeleteConfirm"] = StaticPopupDialogs["TSMCompetitorTrackerProfiles.DeleteConfirm"] or {
		text = L["ProfileDeleteSure"],
		button1 = L["ProfileAccept"],
		button2 = L["ProfileCancel"],
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
		OnCancel = false,
		-- OnAccept defined later
	}
	
	-- Returns a list of all the current profiles with common and nocurrent modifiers.
	-- This code taken from AceDBOptions-3.0.lua
	local function GetProfileList(db, common, nocurrent)
		local profiles = {}
		local tmpprofiles = {}
		local defaultProfiles = {["Default"] = L["ProfileDefault"]}
		
		-- copy existing profiles into the table
		local currentProfile = db:GetCurrentProfile()
		for i,v in pairs(db:GetProfiles(tmpprofiles)) do 
			if not (nocurrent and v == currentProfile) then 
				profiles[v] = v 
			end 
		end
		
		-- add our default profiles to choose from ( or rename existing profiles)
		for k,v in pairs(defaultProfiles) do
			if (common or profiles[k]) and not (nocurrent and k == currentProfile) then
				profiles[k] = v
			end
		end
		
		return profiles
	end
	
	local page = {
		{	-- scroll frame to contain everything
			type = "ScrollFrame",
			layout = "List",
			children = {
				{
					type = "InlineGroup",
					layout = "flow",
					title = "Profile Options",
					noBorder = true,
					children = {
						{
							type = "Label",
							text = L["ProfileIntro"] .. "\n\n",
							relativeWidth = 1,
						},
						{
							type = "Label",
							text = L["ProfileResetDesc"],
							relativeWidth = 1,
						},
						{	--simplegroup1 for the reset button / current profile text
							type = "SimpleGroup",
							layout = "flow",
							fullWidth = true,
							children = {
								{
									type = "Button",
									text = L["ProfileReset"],
									callback = function()
											AceDB:ResetProfile()
											refreshPage()
										end,
								},
								{
									type = "Label",
									text = L["ProfileCurrent"] .. " " .. TSMAPI.Design:GetInlineColor("link") .. AceDB:GetCurrentProfile() .. "|r",
								},
							},
						},
						{
							type = "Spacer",
							quantity = 2,
						},
						{
							type = "Label",
							text = L["ProfileChooseDesc"],
							relativeWidth = 1,
						},
						{	--simplegroup2 for the new editbox / existing profiles dropdown
							type = "SimpleGroup",
							layout = "flow",
							fullWidth = true,
							children = {
								{
									type = "EditBox",
									label = L["ProfileNew"],
									value = "",
									callback = function(_,_,value) 
											AceDB:SetProfile(value)
											refreshPage()
										end,
								},
								{
									type = "Dropdown",
									label = L["ProfileChoose"],
									list = GetProfileList(AceDB, true, nil),
									value = AceDB:GetCurrentProfile(),
									callback = function(_,_,value)
											if value ~= AceDB:GetCurrentProfile() then
												AceDB:SetProfile(value)
												refreshPage()
											end
										end,
								},
							},
						},
						{
							type = "Spacer",
							quantity = 1,
						},
						{
							type = "Label",
							text = L["ProfileCopyDesc"],
							relativeWidth = 1,
						},
						{
							type = "Dropdown",
							label = L["ProfileCopy"],
							list = GetProfileList(AceDB, true, nil),
							value = "",
							disabled = not GetProfileList(AceDB, true, nil) and true,
							callback = function(_,_,value)
									if value ~= AceDB:GetCurrentProfile() then
										AceDB:CopyProfile(value)
										refreshPage()
									end
								end,
						},
						{
							type = "Spacer",
							quantity = 2,
						},
						{
							type = "Label",
							text = L["ProfileDeleteDesc"],
							relativeWidth = 1,
						},
						{
							type = "Dropdown",
							label = L["ProfileDelete"],
							list = GetProfileList(AceDB, true, nil),
							value = "",
							disabled = not GetProfileList(AceDB, true, nil) and true,
							callback = function(_,_,value)
									StaticPopupDialogs["TSMCompetitorTrackerProfiles.DeleteConfirm"].OnAccept = function()
											AceDB:DeleteProfile(value)
											refreshPage()
										end
									TSMAPI.Util:ShowStaticPopupDialog("TSMCompetitorTrackerProfiles.DeleteConfirm")
								end,
						}
					}
				}
			}
		}
	}
	
	TSMAPI.GUI:BuildOptions(parent, page)
end
