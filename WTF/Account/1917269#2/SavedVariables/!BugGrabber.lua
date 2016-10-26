
BugGrabberDB = {
	["session"] = 2622,
	["lastSanitation"] = 3,
	["errors"] = {
		{
			["message"] = "Interface\\AddOns\\Broker_TimeToExecute\\core.lua:92: Usage: UnitGUID(\"unit\")",
			["time"] = "2016/10/25 22:35:54",
			["locals"] = "",
			["stack"] = "[C]: ?\nInterface\\AddOns\\Broker_TimeToExecute\\core.lua:92: in function `?'\n...Ons\\Ace3\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:145: in function <...Ons\\Ace3\\CallbackHandler-1.0\\CallbackHandler-1.0.lua:145>\n[string \"safecall Dispatcher[1]\"]:4: in function <[string \"safecall Dispatcher[1]\"]:4>\n[C]: ?\n[string \"safecall Dispatcher[1]\"]:13: in function `?'\n...Ons\\Ace3\\CallbackHandler-1.0\\CallbackHandler-1.0-6.lua:90: in function `Fire'\nInterface\\AddOns\\Ace3\\AceEvent-3.0\\AceEvent-3.0-3.lua:120: in function <Interface\\AddOns\\Ace3\\AceEvent-3.0\\AceEvent-3.0.lua:119>",
			["session"] = 2618,
			["counter"] = 1457,
		}, -- [1]
		{
			["message"] = "Interface\\AddOns\\DBM-Core\\DBM-RangeCheck.lua:636: attempt to perform arithmetic on local 'x' (a nil value)",
			["time"] = "2016/10/25 23:14:21",
			["locals"] = "tEnabled = nil\nrEnabled = true\nplayerMapId = 0\nrestricted = false\nsinTheta = -0.70317695443014\ncosTheta = -0.71101488785985\nclosePlayer = 1\nclosestRange = 0\nclosetName = \"Genealogies\"\nreverse = nil\nfilter = nil\ntype = 0\n(for index) = 1\n(for limit) = 25\n(for step) = 1\ni = 1\nuId = \"raid1\"\ndot = <unnamed> {\n 0 = <userdata>\n class = \"SHAMAN\"\n icon = 7\n}\nmapId = 0\nrange = 0\ninRange = true\nplayerX = -831.60003662109\nplayerY = 4372.1000976563\nx = nil\ny = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = 1520\n(*temporary) = nil\n(*temporary) = nil\n(*temporary) = \"attempt to perform arithmetic on local 'x' (a nil value)\"\nmainFrame = <unnamed> {\n 0 = <userdata>\n hideTime = 0\n restrictions = false\n eventRegistered = true\n redCircleNumPlayers = 1\n range = 10\n}\nGetTime = <function> defined =[C]:-1\nrangeCheck = <table> {\n Show = <function> defined =[C]:-1\n GetDistance = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-RangeCheck.lua:873\n SetHideTime = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-RangeCheck.lua:866\n IsShown = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-RangeCheck.lua:862\n Hide = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-RangeCheck.lua:839\n}\nactiveRange = 10\ntextFrame = DBMRangeCheck {\n 0 = <userdata>\n template = \"Transparent\"\n updateTooltip = 0.2\n needsReset = true\n}\nradarFrame = DBMRangeCheckRadar {\n circle = <unnamed> {\n }\n template = \"Transparent\"\n 0 = <userdata>\n inRangeText = <unnamed> {\n }\n text = <unnamed> {\n }\n isShown = true\n background = <unnamed> {\n }\n}\nprevRange = 10\nprevThreshold = 0\npixelsperyard = 4.2666651407878\nrotation = 3.921448532735\npi2 = 6.2831853071796\nGetPlayerFacing = <function> defined =[C]:-1\nsin = <function> defined =[C]:-1\ncos = <function> defined =[C]:-1\nnumPlayers = 25\nunitList = <table> {\n 1 = \"raid1\"\n 2 = \"raid2\"\n 3 = \"raid3\"\n 4 = \"raid4\"\n 5 = \"raid5\"\n 6 = \"raid6\"\n 7 = \"raid7\"\n 8 = \"raid8\"\n 9 = \"raid9\"\n 10 = \"raid10\"\n 11 = \"raid11\"\n 12 = \"raid12\"\n 13 = \"raid13\"\n 14 = \"raid14\"\n 15 = \"raid15\"\n 16 = \"raid16\"\n 17 = \"raid17\"\n 18 = \"raid18\"\n 19 = \"raid19\"\n 20 = \"raid20\"\n 21 = \"raid21\"\n 22 = \"raid22\"\n 23 = \"raid23\"\n 24 = \"raid24\"\n 25 = \"raid25\"\n}\ndots = <table> {\n 1 = <unnamed> {\n }\n 2 = <unnamed> {\n }\n 3 = <unnamed> {\n }\n 4 = <unnamed> {\n }\n 5 = <unnamed> {\n }\n 6 = <unnamed> {\n }\n 7 = <unnamed> {\n }\n 8 = <unnamed> {\n }\n 9 = <unnamed> {\n }\n 10 = <unnamed> {\n }\n 11 = <unnamed> {\n }\n 12 = <unnamed> {\n }\n 13 = <unnamed> {\n }\n 14 = <unnamed> {\n }\n 15 = <unnamed> {\n }\n 16 = <unnamed> {\n }\n 17 = <unnamed> {\n }\n 18 = <unnamed> {\n }\n 19 = <unnamed> {\n }\n 20 = <unnamed> {\n }\n 21 = <unnamed> {\n }\n 22 = <unnamed> {\n }\n 23 = <unnamed> {\n }\n 24 = <unnamed> {\n }\n 25 = <unnamed> {\n }\n 26 = <unnamed> {\n }\n 27 = <unnamed> {\n }\n 28 = <unnamed> {\n }\n 29 = <unnamed> {\n }\n 30 = <unnamed> {\n }\n 31 = <unnamed> {\n }\n 32 = <unnamed> {\n }\n 33 = <unnamed> {\n }\n 34 = <unnamed> {\n }\n 35 = <unnamed> {\n }\n 36 = <unnamed> {\n }\n 37 = <unnamed> {\n }\n 38 = <unnamed> {\n }\n 39 = <unnamed> {\n }\n 40 = <unnamed> {\n }\n}\nUnitExists = <function> defined =[C]:-1\nUnitIsUnit = <function> defined =[C]:-1\nUnitIsDeadOrGhost = <function> defined =[C]:-1\nUnitIsConnected = <function> defined =[C]:-1\nUnitInPhase = <function> defined =[C]:-1\nIsItemInRange = <function> defined =[C]:-1\nCheckInteractDistance = <function> defined =[C]:-1\nUnitInRange = <function> defined =[C]:-1\nUnitName = <function> defined =[C]:-1\nRAID_CLASS_COLORS = <table> {\n HUNTER = <table> {\n }\n WARRIOR = <table> {\n }\n PALADIN = <table> {\n }\n MAGE = <table> {\n }\n PRIEST = <table> {\n }\n SHAMAN = <table> {\n }\n WARLOCK = <table> {\n }\n DEMONHUNTER = <table> {\n }\n DEATHKNIGHT = <table> {\n }\n DRUID = <table> {\n }\n MONK = <table> {\n }\n ROGUE = <table> {\n }\n}\nUnitPosition = <function> defined =[C]:-1\nsetDot = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-RangeCheck.lua:503\nprevNumClosePlayer = 0\nprevclosestRange = 0\nprevType = 0\ncircleColor = 0\nprevColor = 0\nupdateSound = <function> defined @Interface\\AddOns\\DBM-Core\\DBM-RangeCheck.lua:357\n",
			["stack"] = "Interface\\AddOns\\DBM-Core\\DBM-RangeCheck.lua:636: in function <Interface\\AddOns\\DBM-Core\\DBM-RangeCheck.lua:556>",
			["session"] = 2618,
			["counter"] = 43,
		}, -- [2]
		{
			["message"] = "...ns\\SharedMediaLib\\libs\\AceEvent-2.0\\AceEvent-2.0.lua:21: AceEvent-2.0 requires AceOO-2.0",
			["time"] = "2016/10/25 23:20:59",
			["locals"] = "(*temporary) = \"AceEvent-2.0 requires AceOO-2.0\"\n",
			["stack"] = "[C]: in function `error'\n...ns\\SharedMediaLib\\libs\\AceEvent-2.0\\AceEvent-2.0.lua:21: in main chunk",
			["session"] = 2622,
			["counter"] = 4,
		}, -- [3]
		{
			["message"] = "...s\\SharedMediaLib\\SharedMedia-1.0\\SharedMedia-1.0.lua:18: SharedMedia-1.0 requires AceEvent-2.0.",
			["time"] = "2016/10/25 23:20:59",
			["locals"] = "(*temporary) = \"SharedMedia-1.0 requires AceEvent-2.0.\"\n",
			["stack"] = "[C]: in function `error'\n...s\\SharedMediaLib\\SharedMedia-1.0\\SharedMedia-1.0.lua:18: in main chunk",
			["session"] = 2622,
			["counter"] = 4,
		}, -- [4]
		{
			["message"] = "...rface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\Core.lua:68: attempt to call method 'OnPluginEnable' (a nil value)",
			["time"] = "2016/10/25 23:36:35",
			["stack"] = "...rface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\Core.lua:68: in function <...rface\\AddOns\\BigWigs_Voice_HeroesOfTheStorm\\Core.lua:66>\n(tail call): ?\n[C]: ?\n[string \"safecall Dispatcher[2]\"]:9: in function <[string \"safecall Dispatcher[2]\"]:5>\n(tail call): ?\n...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0-61.lua:799: in function <...nfig-3.0\\AceConfigDialog-3.0\\AceConfigDialog-3.0.lua:614>\n(tail call): ?\n[C]: ?\n[string \"safecall Dispatcher[3]\"]:9: in function <[string \"safecall Dispatcher[3]\"]:5>\n(tail call): ?\nInterface\\AddOns\\Ace3\\AceGUI-3.0\\AceGUI-3.0-34.lua:314: in function `Fire'\n...ns\\Ace3\\AceGUI-3.0-34\\widgets\\AceGUIWidget-DropDown.lua:442: in function <...ns\\Ace3\\AceGUI-3.0\\widgets\\AceGUIWidget-DropDown.lua:433>\n(tail call): ?\n[C]: ?\n[string \"safecall Dispatcher[3]\"]:9: in function <[string \"safecall Dispatcher[3]\"]:5>\n(tail call): ?\nInterface\\AddOns\\Ace3\\AceGUI-3.0\\AceGUI-3.0-34.lua:314: in function `Fire'\n...3\\AceGUI-3.0-34\\widgets\\AceGUIWidget-DropDown-Items.lua:353: in function <...3\\AceGUI-3.0\\widgets\\AceGUIWidget-DropDown-Items.lua:343>",
			["session"] = 2622,
			["counter"] = 3,
		}, -- [5]
	},
}
