
TotemTimers_GlobalSettings = {
	["Sink"] = {
	},
	["Version"] = 11,
	["Profiles"] = {
		["Krázyito"] = {
			{
				["party"] = "default",
				["scenario"] = "default",
				["none"] = "default",
				["raid"] = "default",
				["arena"] = "default",
				["pvp"] = "default",
			}, -- [1]
			{
				["party"] = "default",
				["scenario"] = "default",
				["none"] = "default",
				["raid"] = "default",
				["arena"] = "default",
				["pvp"] = "default",
			}, -- [2]
			{
				["party"] = "default",
				["scenario"] = "default",
				["none"] = "default",
				["raid"] = "default",
				["arena"] = "default",
				["pvp"] = "default",
			}, -- [3]
		},
	},
}
TotemTimers_Profiles = {
	["default"] = {
		["ShowTimerBars"] = true,
		["CrowdControlHex"] = true,
		["EnhanceCDsTimeHeight"] = 12,
		["TimerSpacing"] = 5,
		["EnhanceCDs_Spells"] = {
			{
				true, -- [1]
				true, -- [2]
				true, -- [3]
				true, -- [4]
				true, -- [5]
				true, -- [6]
				true, -- [7]
				true, -- [8]
				true, -- [9]
				true, -- [10]
				true, -- [11]
				[20] = true,
			}, -- [1]
			{
				true, -- [1]
				true, -- [2]
				true, -- [3]
				true, -- [4]
				true, -- [5]
				true, -- [6]
				true, -- [7]
				true, -- [8]
				true, -- [9]
				true, -- [10]
				true, -- [11]
				true, -- [12]
				[21] = true,
				[22] = true,
				[20] = true,
			}, -- [2]
			{
				true, -- [1]
				true, -- [2]
				true, -- [3]
				true, -- [4]
				true, -- [5]
				true, -- [6]
				true, -- [7]
				[20] = true,
			}, -- [3]
		},
		["HideInVehicle"] = true,
		["EnhanceCDsOOCAlpha"] = 0.4,
		["TotemTimerBarWidth"] = 36,
		["TooltipsAtButtons"] = true,
		["TimeFont"] = "ElvUI Font",
		["FulminationAura"] = true,
		["FlashRed"] = true,
		["Show"] = true,
		["EnhanceCDs"] = true,
		["EnhanceCDs_Clickthrough"] = false,
		["Warnings"] = {
			["TotemWarning"] = {
				["a"] = 1,
				["enabled"] = true,
				["r"] = 1,
				["sound"] = "",
				["text"] = "Totem Expiring",
				["g"] = 0,
				["b"] = 0,
			},
			["Shield"] = {
				["a"] = 1,
				["enabled"] = true,
				["r"] = 1,
				["sound"] = "",
				["text"] = "Shield removed",
				["g"] = 0,
				["b"] = 0,
			},
			["Maelstrom"] = {
				["a"] = 1,
				["enabled"] = true,
				["r"] = 1,
				["sound"] = "",
				["text"] = "Maelstrom Notifier",
				["g"] = 0,
				["b"] = 0,
			},
			["TotemDestroyed"] = {
				["a"] = 1,
				["enabled"] = true,
				["r"] = 1,
				["sound"] = "",
				["text"] = "Totem Destroyed",
				["g"] = 0,
				["b"] = 0,
			},
			["EarthShield"] = {
				["a"] = 1,
				["enabled"] = true,
				["r"] = 1,
				["sound"] = "",
				["text"] = "Shield removed",
				["g"] = 0,
				["b"] = 0,
			},
			["TotemExpiration"] = {
				["a"] = 1,
				["enabled"] = true,
				["r"] = 1,
				["sound"] = "",
				["text"] = "Totem Expired",
				["g"] = 0,
				["b"] = 0,
			},
			["Weapon"] = {
				["a"] = 1,
				["enabled"] = true,
				["r"] = 1,
				["sound"] = "",
				["text"] = "Totem Expired",
				["g"] = 0,
				["b"] = 0,
			},
		},
		["ColorTimerBars"] = false,
		["TimerTimePos"] = "BOTTOM",
		["TimerTimeHeight"] = 12,
		["ShieldLeftButton"] = "Lightning Shield",
		["LastOffEnchants"] = {
		},
		["HiddenTotems"] = {
		},
		["Lock"] = false,
		["LavaSurgeAura"] = true,
		["CrowdControlArrange"] = "horizontal",
		["Tracker_Clickthrough"] = false,
		["StopPulse"] = true,
		["TrackerArrange"] = "horizontal",
		["EarthShieldTracker"] = true,
		["AnkhTracker"] = true,
		["CheckRaidRange"] = true,
		["LongCooldowns"] = true,
		["ProcFlash"] = true,
		["EarthShieldButton4"] = "player",
		["FlameShockDurationOnTop"] = false,
		["LongCooldownSpells"] = {
			[108285] = true,
			[108271] = true,
			[114049] = true,
			[2825] = true,
			[79206] = true,
			[16188] = true,
			[32182] = true,
			[16166] = true,
			[108281] = true,
			[51533] = true,
		},
		["EnhanceCDsMaelstromHeight"] = 14,
		["CrowdControlSize"] = 30,
		["CrowdControlClickthrough"] = false,
		["LavaSurgeGlow"] = true,
		["EnhanceCDsSize"] = 30,
		["CheckPlayerRange"] = true,
		["LongCooldownsArrange"] = "horizontal",
		["ShowKeybinds"] = true,
		["TimerBarTexture"] = "Blizzard",
		["TimerBarColor"] = {
			["a"] = 1,
			["b"] = 1,
			["g"] = 0.5,
			["r"] = 0.5,
		},
		["ShowCooldowns"] = true,
		["TotemMenuSpacing"] = 0,
		["TimerPositions"] = {
			{
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				-50, -- [4]
				-40, -- [5]
			}, -- [1]
			{
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				-70, -- [4]
				0, -- [5]
			}, -- [2]
			{
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				-30, -- [4]
				0, -- [5]
			}, -- [3]
			{
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				-50, -- [4]
				40, -- [5]
			}, -- [4]
		},
		["ESMainTankMenu"] = true,
		["ShowOmniCCOnEnhanceCDs"] = true,
		["ShowRaidRangeTooltip"] = true,
		["TrackerTimeHeight"] = 12,
		["TimerSize"] = 32,
		["TrackerSize"] = 30,
		["ActivateHiddenTimers"] = false,
		["CrowdControlTimePos"] = "BOTTOM",
		["FulminationGlow"] = true,
		["ESMainTankMenuDirection"] = "auto",
		["TrackerTimeSpacing"] = 0,
		["TimerTimeSpacing"] = 0,
		["CooldownSpacing"] = 5,
		["EarthShieldLeftButton"] = "recast",
		["TimeColor"] = {
			["b"] = 1,
			["g"] = 1,
			["r"] = 1,
		},
		["TotemSets"] = {
			{
				3599, -- [1]
				8143, -- [2]
				5394, -- [3]
				8177, -- [4]
			}, -- [1]
		},
		["Arrange"] = "horizontal",
		["TrackerTimePos"] = "BOTTOM",
		["CrowdControlBindElemental"] = true,
		["TimersOnButtons"] = false,
		["LastMainEnchants"] = {
		},
		["MiniIcons"] = true,
		["Order"] = {
			1, -- [1]
			2, -- [2]
			3, -- [3]
			4, -- [4]
		},
		["EnhanceCDs_Order"] = {
			{
				1, -- [1]
				2, -- [2]
				3, -- [3]
				4, -- [4]
				5, -- [5]
				6, -- [6]
				7, -- [7]
				8, -- [8]
				9, -- [9]
				10, -- [10]
				11, -- [11]
			}, -- [1]
			{
				1, -- [1]
				2, -- [2]
				3, -- [3]
				4, -- [4]
				5, -- [5]
				6, -- [6]
				7, -- [7]
				8, -- [8]
				9, -- [9]
				10, -- [10]
				11, -- [11]
				12, -- [12]
			}, -- [2]
			{
				1, -- [1]
				2, -- [2]
				3, -- [3]
				4, -- [4]
				5, -- [5]
				6, -- [6]
				7, -- [7]
				8, -- [8]
				9, -- [9]
			}, -- [3]
		},
		["Tooltips"] = true,
		["ESChargesOnly"] = false,
		["CastBarDirection"] = "auto",
		["ShieldMiddleButton"] = "Totemic Recall",
		["MenusAlwaysVisible"] = false,
		["HideBlizzTimers"] = true,
		["ShieldRightButton"] = "Water Shield",
		["BarBindings"] = true,
		["WeaponMenuOnRightclick"] = false,
		["WeaponTracker"] = true,
		["WeaponBarDirection"] = "auto",
		["EarthShieldTargetName"] = true,
		["ShieldTracker"] = true,
		["TrackerTimerBarWidth"] = 36,
		["TimeStyle"] = "mm:ss",
		["FramePositions"] = {
			["TotemTimers_CastBar2"] = {
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				-200, -- [4]
				-225, -- [5]
			},
			["TotemTimers_CastBar4"] = {
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				50, -- [4]
				-225, -- [5]
			},
			["TotemTimers_LongCooldownsFrame"] = {
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				-26.3556118011475, -- [4]
				-187.377853393555, -- [5]
			},
			["TotemTimers_EnhanceCDsFrame"] = {
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				-6.40000104904175, -- [4]
				-114.533233642578, -- [5]
			},
			["TotemTimers_CastBar3"] = {
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				50, -- [4]
				-190.000015258789, -- [5]
			},
			["TotemTimers_CrowdControlFrame"] = {
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				108.577796936035, -- [4]
				-106.888961791992, -- [5]
			},
			["TotemTimersFrame"] = {
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				-155.911071777344, -- [4]
				-55.4665679931641, -- [5]
			},
			["TotemTimers_TrackerFrame"] = {
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				-92.2222595214844, -- [4]
				-95.2891082763672, -- [5]
			},
			["TotemTimers_CastBar1"] = {
				"CENTER", -- [1]
				nil, -- [2]
				"CENTER", -- [3]
				-200, -- [4]
				-190.000015258789, -- [5]
			},
		},
		["CrowdControlEnable"] = true,
		["EarthShieldRightButton"] = "target",
		["OpenOnRightclick"] = false,
		["CDTimersOnButtons"] = true,
		["LastTotems"] = {
			3599, -- [1]
			8143, -- [2]
			"Healing Stream Totem", -- [3]
			"Spirit Link Totem", -- [4]
		},
		["TrackerSpacing"] = 5,
		["EarthShieldMiddleButton"] = "targettarget",
		["ReverseBarBindings"] = false,
		["Timer_Clickthrough"] = false,
		["TotemOrder"] = {
			{
				2894, -- [1]
				3599, -- [2]
				8190, -- [3]
			}, -- [1]
			{
				2484, -- [1]
				108270, -- [2]
				2062, -- [3]
				8143, -- [4]
				51485, -- [5]
			}, -- [2]
			{
				157153, -- [1]
				5394, -- [2]
				108280, -- [3]
			}, -- [3]
			{
				108269, -- [1]
				8177, -- [2]
				98008, -- [3]
				108273, -- [4]
				152256, -- [5]
			}, -- [4]
		},
	},
}
