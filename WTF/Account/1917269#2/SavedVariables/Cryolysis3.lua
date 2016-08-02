
Cryolysis3DB = {
	["profileKeys"] = {
		["Reikihealing - Nathrezim"] = "char",
		["Theawàkening - Bonechewer"] = "char",
		["Ashbrownie - Caelestrasz"] = "char",
		["Reikihealing - Bonechewer"] = "char",
	},
	["char"] = {
		["Reikihealing - Nathrezim"] = {
			["buttonTypes"] = {
				["BuffButtonfearward"] = "spell",
				["MountButton"] = "macrotext",
				["BuffButtonlevitate"] = "spell",
				["BuffButtonfortitude"] = "spell",
				["BuffButtonshadowprot"] = "spell",
				["BuffButtoninnerfire"] = "spell",
				["ResurrectionButton"] = "spell",
				["ShadowfiendButton"] = "spell",
			},
			["buttons"] = {
				"MountButton", -- [1]
				"CustomButton1", -- [2]
				"CustomButton2", -- [3]
				"CustomButton3", -- [4]
				"ShadowfiendButton", -- [5]
				"ResurrectionButton", -- [6]
				"BuffButton", -- [7]
			},
			["scale"] = {
				["button"] = {
					["MountButton"] = 1,
					["CustomButton2"] = 1,
					["CustomButton1"] = 1,
					["CustomButton3"] = 1,
					["ResurrectionButton"] = 1,
					["BuffButton"] = 1,
					["ShadowfiendButton"] = 1,
				},
				["frame"] = {
					["Sphere"] = 1,
				},
			},
			["chosenMount"] = {
				["normal"] = "Swift White Steed",
			},
			["menuButtonGrowth"] = {
				["BuffButton"] = 2,
			},
			["RestockQuantity"] = {
				["Sacred Candle"] = 20,
			},
			["positions"] = {
				["button"] = {
					["MountButton"] = {
						["y"] = 103.3286583605171,
						["x"] = 1116.532473468475,
					},
					["CustomButton2"] = {
						["y"] = 147.6027726877667,
						["x"] = 1130.91798406925,
					},
					["CustomButton1"] = {
						["y"] = 127.8027682780255,
						["x"] = 1116.532473468475,
					},
					["CustomButton3"] = {
						["y"] = 155.1657180901284,
						["x"] = 1154.194405361856,
					},
					["ResurrectionButton"] = {
						["y"] = 127.8027682780255,
						["x"] = 1191.856078143219,
					},
					["BuffButton"] = {
						["y"] = 103.3286583605171,
						["x"] = 1191.856078143219,
					},
					["ShadowfiendButton"] = {
						["y"] = 147.6027726877667,
						["x"] = 1177.470697098453,
					},
				},
				["frame"] = {
					["Sphere"] = {
						["y"] = 115.565709270646,
						["x"] = 1154.194146249838,
					},
				},
			},
			["menuButtons"] = {
				["BuffButton"] = {
					"BuffButtonfortitude", -- [1]
					"BuffButtonshadowprot", -- [2]
					"BuffButtoninnerfire", -- [3]
					"BuffButtonfearward", -- [4]
					"BuffButtonlevitate", -- [5]
				},
			},
			["buttonFunctions"] = {
				["BuffButtonfearward"] = {
					["left"] = 6346,
				},
				["MountButton"] = {
					["right"] = "/cast [button:1] Swift White Steed; Hearthstone",
					["left"] = "/cast [button:1] Swift White Steed; Hearthstone",
					["middle"] = "/cast Hearthstone",
				},
				["BuffButtonlevitate"] = {
					["left"] = 1706,
				},
				["BuffButtonfortitude"] = {
					["left"] = 1243,
					["right"] = 21562,
				},
				["BuffButtonshadowprot"] = {
					["left"] = 976,
					["right"] = 27683,
				},
				["BuffButtoninnerfire"] = {
					["left"] = 588,
				},
				["ResurrectionButton"] = {
					["left"] = 2006,
				},
				["ShadowfiendButton"] = {
					["left"] = 34433,
				},
			},
		},
		["Theawàkening - Bonechewer"] = {
			["MsgChannel"] = "PARTY",
			["lockButtons"] = false,
			["buttonTypes"] = {
				["PortalButtonIronforge"] = "spell",
				["CustomButton2"] = "macro",
				["BuffButtonMagic"] = "spell",
				["CustomButton1"] = "item",
				["PortalButtonDalaran"] = "spell",
				["BuffButtonShields"] = "spell",
				["BuffButtonIntellect"] = "spell",
				["PortalButtonTheExodar"] = "spell",
				["MountButton"] = "macrotext",
				["CustomButton3"] = "macro",
				["PortalButtonShattrathCity"] = "spell",
				["PortalButtonStormwind"] = "spell",
				["PortalButtonTheramore"] = "spell",
				["GemButton"] = "macrotext",
				["BuffButtonCurse"] = "spell",
				["BuffButtonWards"] = "spell",
				["Sphere"] = "macro",
				["WaterButton"] = "macrotext",
				["BuffButtonArmor"] = "spell",
				["PortalButtonDarnassus"] = "spell",
				["BuffButtonSlowFall"] = "spell",
				["EvocationButton"] = "spell",
				["FoodButton"] = "macrotext",
			},
			["buttons"] = {
				"MountButton", -- [1]
				"CustomButton1", -- [2]
				"CustomButton2", -- [3]
				"CustomButton3", -- [4]
				"EvocationButton", -- [5]
				"WaterButton", -- [6]
				"FoodButton", -- [7]
				"GemButton", -- [8]
				"PortalButton", -- [9]
				"BuffButton", -- [10]
			},
			["scale"] = {
				["button"] = {
					["EvocationButton"] = 1,
					["MountButton"] = 1,
					["CustomButton2"] = 1,
					["CustomButton3"] = 1,
					["GemButton"] = 1,
					["CustomButton1"] = 1,
					["WaterButton"] = 1,
					["PortalButton"] = 1,
					["BuffButton"] = 1,
					["FoodButton"] = 1,
				},
				["frame"] = {
					["Sphere"] = 1,
				},
			},
			["buttonFunctions"] = {
				["PortalButtonIronforge"] = {
					["left"] = 3562,
					["right"] = 11416,
				},
				["CustomButton2"] = {
					["left"] = "Heals",
				},
				["BuffButtonMagic"] = {
					["left"] = 604,
					["right"] = 1008,
				},
				["CustomButton1"] = {
					["left"] = "|cffffffff|Hitem:33448:0:0:0:0:0:0:-1447973624:78|h[Runic Mana Potion]|h|r",
				},
				["PortalButtonDalaran"] = {
					["left"] = 53140,
					["right"] = 53142,
				},
				["BuffButtonShields"] = {
					["left"] = 1463,
				},
				["BuffButtonIntellect"] = {
					["left"] = 1459,
					["right"] = 23028,
				},
				["PortalButtonTheExodar"] = {
					["left"] = 32271,
					["right"] = 32266,
				},
				["MountButton"] = {
					["right"] = "/cast [button:1] Swift White Steed; Snowy Gryphon",
					["left"] = "/cast [button:1] Swift White Steed; Snowy Gryphon",
					["middle"] = "/cast Hearthstone",
				},
				["CustomButton3"] = {
					["left"] = "Cooldowns",
				},
				["PortalButtonShattrathCity"] = {
					["left"] = 33690,
					["right"] = 33691,
				},
				["PortalButtonStormwind"] = {
					["left"] = 3561,
					["right"] = 10059,
				},
				["PortalButtonTheramore"] = {
					["left"] = 49359,
					["right"] = 49360,
				},
				["GemButton"] = {
					["left"] = "/use Mana Sapphire",
					["right"] = "/cast Conjure Mana Gem",
				},
				["BuffButtonCurse"] = {
					["left"] = 475,
				},
				["BuffButtonWards"] = {
					["left"] = 543,
					["right"] = 6143,
				},
				["Sphere"] = {
					["left"] = "Food",
				},
				["WaterButton"] = {
					["right"] = "/cast Conjure Refreshment",
					["left"] = "/use Conjured Mana Pie",
					["middle"] = "/cast Ritual of Refreshment",
				},
				["BuffButtonArmor"] = {
					["right"] = 6117,
					["left"] = 7302,
					["middle"] = 30482,
				},
				["PortalButtonDarnassus"] = {
					["left"] = 3565,
					["right"] = 11419,
				},
				["BuffButtonSlowFall"] = {
					["left"] = 130,
				},
				["EvocationButton"] = {
					["left"] = 12051,
				},
				["FoodButton"] = {
					["right"] = "/cast Conjure Refreshment",
					["left"] = "/use Conjured Mana Pie",
					["middle"] = "/cast Ritual of Refreshment",
				},
			},
			["hidden"] = {
				["CustomButton3"] = false,
				["CustomButton1"] = false,
				["WaterButton"] = false,
				["FoodButton"] = true,
			},
			["positions"] = {
				["button"] = {
					["EvocationButton"] = {
						["y"] = 106.6430087730418,
						["x"] = 576.2365621113796,
					},
					["MountButton"] = {
						["y"] = 151.6031869473551,
						["x"] = 641.8353040626535,
					},
					["CustomButton2"] = {
						["y"] = 151.2600416623151,
						["x"] = 591.123843136039,
					},
					["CustomButton3"] = {
						["y"] = 158.0915462253681,
						["x"] = 616.5943602235552,
					},
					["GemButton"] = {
						["y"] = 106.9346393498977,
						["x"] = 549.9048214522735,
					},
					["CustomButton1"] = {
						["y"] = 106.5917045933728,
						["x"] = 524.8065835573807,
					},
					["WaterButton"] = {
						["y"] = 130.7286045105158,
						["x"] = 575.993385481989,
					},
					["PortalButton"] = {
						["y"] = 130.8230994247736,
						["x"] = 655.3598502038572,
					},
					["BuffButton"] = {
						["y"] = 106.2033199693476,
						["x"] = 656.2208146634289,
					},
					["FoodButton"] = {
						["y"] = 107.7174977303836,
						["x"] = 652.793410438319,
					},
				},
				["frame"] = {
					["Sphere"] = {
						["y"] = 118.4919422684147,
						["x"] = 615.8632108852672,
					},
				},
			},
			["chosenMount"] = {
				["normal"] = "Swift White Steed",
				["flying"] = "Snowy Gryphon",
			},
			["menuButtonGrowth"] = {
				["BuffButton"] = 2,
				["PortalButton"] = 2,
			},
			["sphereText"] = 1,
			["skin"] = "X",
			["RestockQuantity"] = {
				["Arcane Powder"] = 40,
				["Rune of Portals"] = 40,
				["Rune of Teleportation"] = 40,
			},
			["buttonText"] = {
				["WaterButton"] = true,
				["GemButton"] = true,
			},
			["menuButtons"] = {
				["BuffButton"] = {
					"BuffButtonArmor", -- [1]
					"BuffButtonIntellect", -- [2]
					"BuffButtonMagic", -- [3]
					"BuffButtonShields", -- [4]
					"BuffButtonWards", -- [5]
					"BuffButtonCurse", -- [6]
					"BuffButtonSlowFall", -- [7]
				},
				["PortalButton"] = {
					"PortalButtonIronforge", -- [1]
					"PortalButtonStormwind", -- [2]
					"PortalButtonDarnassus", -- [3]
					"PortalButtonTheExodar", -- [4]
					"PortalButtonTheramore", -- [5]
					"PortalButtonShattrathCity", -- [6]
					"PortalButtonDalaran", -- [7]
				},
			},
			["lockSphere"] = true,
		},
		["Reikihealing - Bonechewer"] = {
			["buttonTypes"] = {
				["ShadowfiendButton"] = "spell",
				["MountButton"] = "macrotext",
				["ResurrectionButton"] = "spell",
				["BuffButtonfortitude"] = "spell",
				["BuffButtonshadowprot"] = "spell",
				["BuffButtoninnerfire"] = "spell",
				["BuffButtonlevitate"] = "spell",
				["BuffButtonfearward"] = "spell",
			},
			["buttons"] = {
				"MountButton", -- [1]
				"CustomButton1", -- [2]
				"CustomButton2", -- [3]
				"CustomButton3", -- [4]
				"ShadowfiendButton", -- [5]
				"ResurrectionButton", -- [6]
				"BuffButton", -- [7]
			},
			["scale"] = {
				["button"] = {
					["MountButton"] = 1,
					["CustomButton2"] = 1,
					["CustomButton1"] = 1,
					["CustomButton3"] = 1,
					["ResurrectionButton"] = 1,
					["BuffButton"] = 1,
					["ShadowfiendButton"] = 1,
				},
				["frame"] = {
					["Sphere"] = 1,
				},
			},
			["chosenMount"] = {
				["normal"] = "Swift White Steed",
			},
			["buttonFunctions"] = {
				["ShadowfiendButton"] = {
					["left"] = 34433,
				},
				["MountButton"] = {
					["right"] = "/cast [button:1] Swift White Steed; Hearthstone",
					["left"] = "/cast [button:1] Swift White Steed; Hearthstone",
					["middle"] = "/cast Hearthstone",
				},
				["ResurrectionButton"] = {
					["left"] = 2006,
				},
				["BuffButtonfortitude"] = {
					["left"] = 1243,
					["right"] = 21562,
				},
				["BuffButtonshadowprot"] = {
					["left"] = 976,
					["right"] = 27683,
				},
				["BuffButtoninnerfire"] = {
					["left"] = 588,
				},
				["BuffButtonlevitate"] = {
					["left"] = 1706,
				},
				["BuffButtonfearward"] = {
					["left"] = 6346,
				},
			},
			["RestockQuantity"] = {
				["Sacred Candle"] = 20,
			},
			["menuButtons"] = {
				["BuffButton"] = {
					"BuffButtonfortitude", -- [1]
					"BuffButtonshadowprot", -- [2]
					"BuffButtoninnerfire", -- [3]
					"BuffButtonfearward", -- [4]
					"BuffButtonlevitate", -- [5]
				},
			},
			["positions"] = {
				["button"] = {
					["MountButton"] = {
						["y"] = 126.734352258618,
						["x"] = 1098.978411549102,
					},
					["CustomButton2"] = {
						["y"] = 171.0085070721206,
						["x"] = 1113.363792593868,
					},
					["CustomButton1"] = {
						["y"] = 151.2084945651288,
						["x"] = 1098.978411549102,
					},
					["CustomButton3"] = {
						["y"] = 178.5714038909788,
						["x"] = 1136.640213886474,
					},
					["ResurrectionButton"] = {
						["y"] = 151.2084945651288,
						["x"] = 1174.302016223846,
					},
					["BuffButton"] = {
						["y"] = 126.734352258618,
						["x"] = 1174.302016223846,
					},
					["ShadowfiendButton"] = {
						["y"] = 171.0085070721206,
						["x"] = 1159.916376067061,
					},
				},
				["frame"] = {
					["Sphere"] = {
						["y"] = 138.9714112659976,
						["x"] = 1136.640213886474,
					},
				},
			},
			["menuButtonGrowth"] = {
				["BuffButton"] = 2,
			},
		},
	},
}
