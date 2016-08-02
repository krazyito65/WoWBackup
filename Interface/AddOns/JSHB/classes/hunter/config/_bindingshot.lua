--
--	JSHB Hunter Options - aspect of the fox panel
--

if (select(2, UnitClass("player")) ~= "HUNTER") then return end

local L = _G.JSHB.L

function JSHB.Options:Panel_BindingShot(ord)
	local DB = _G.JSHB.Options.DB
	return {
		order = ord,
		type = "group",
		name = GetSpellInfo(109248),
		args = {
			spacer1 = { order = 1, type = "description", name = " ", desc = "", width = "full" },
			enable = {
				type = "toggle",
				order = 2,
				name = L["Enable"],
				width = "full",
				get = function(info) return DB.bindingshotannounce.enable end,
				set = function(info, value) JSHB.Options:CollapseAll(); DB.bindingshotannounce.enable = value;JSHB.Options:LockDown(JSHB.SetupBindingShotModule) end,
			},
			solochan = {
				order = 16,
				type = "select",
				name = L["Solo"],
				desc = L["SOLOCHANNEL_DESC"],
				disabled = function(info) return not DB.bindingshotannounce.enable end,
				style = "dropdown",
				values = function() return(JSHB.chatChannels) end,
				get = function(info) return(DB.bindingshotannounce[info[#info] ]) end,
				set = function(info, value) DB.bindingshotannounce[info[#info] ] = (value);JSHB.Options:LockDown(JSHB.SetupBindingShotModule) end,
			},
			partychan = {
				order = 18,
				type = "select",
				name = L["In a party"],
				desc = L["PARTYCHANNEL_DESC"],
				disabled = function(info) return not DB.bindingshotannounce.enable end,
				style = "dropdown",
				values = function() return(JSHB.chatChannels) end,
				get = function(info) return(DB.bindingshotannounce[info[#info] ]) end,
				set = function(info, value) DB.bindingshotannounce[info[#info] ] = (value);JSHB.Options:LockDown(JSHB.SetupBindingShotModule) end,
			},
			raidchan = {
				order = 20,
				type = "select",
				name = L["In a raid"],
				desc = L["RAIDCHANNEL_DESC"],
				disabled = function(info) return not DB.bindingshotannounce.enable end,
				style = "dropdown",
				values = function() return(JSHB.chatChannels) end,
				get = function(info) return(DB.bindingshotannounce[info[#info] ]) end,
				set = function(info, value) DB.bindingshotannounce[info[#info] ] = (value);JSHB.Options:LockDown(JSHB.SetupBindingShotModule) end,
			},
			arenachan = {
				order = 22,
				type = "select",
				name = L["In an arena"],
				desc = L["ARENACHANNEL_DESC"],
				disabled = function(info) return not DB.bindingshotannounce.enable end,
				style = "dropdown",
				values = function() return(JSHB.chatChannels) end,
				get = function(info) return(DB.bindingshotannounce[info[#info] ]) end,
				set = function(info, value) DB.bindingshotannounce[info[#info] ] = (value);JSHB.Options:LockDown(JSHB.SetupBindingShotModule) end,
			},
			pvpchan = {
				order = 24,
				type = "select",
				name = L["In a PvP zone"],
				desc = L["PVPCHANNEL_DESC"],
				disabled = function(info) return not DB.bindingshotannounce.enable end,
				style = "dropdown",
				values = function() return(JSHB.chatChannels) end,
				get = function(info) return(DB.bindingshotannounce[info[#info] ]) end,
				set = function(info, value) DB.bindingshotannounce[info[#info] ] = (value);JSHB.Options:LockDown(JSHB.SetupBindingShotModule) end,
			},
		},
	}
end