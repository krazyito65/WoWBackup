--@Name: BigWigs RecordKills
--@Author: Kiezo @ Bleeding Hollow
--===============================================================================
local _,NS = ...

-- CONSTANTS --
NS.Constants = {}
local C = NS.Constants

C["MAX_LEVEL"] = GetMaxPlayerLevel()
C["MINIMUM_TIER"] = 14
C["CURRENT_TIER"] = 18
C["RAID_LOOKUP"] = {	
	[14] = {
		raids = {
			[1] = {
				["name"] = "Mogu'shan Vaults",
				["zoneID"] = 896,
				["level"] = 90,
				["encounters"] = {
					[1] = {
						eName = "The Stone Guard",
						eID = 679,
					},
					[2] = {
						eName = "Feng the Accursed",
						eID = 689,
					},
					[3] = {
						eName = "Gara'jal the Spiritbinder",
						eID = 682,
					},
					[4] = {
						eName = "The Spirit Kings",
						eID = 687,
					},
					[5] = {
						eName = "Elegon",
						eID = 726,
					},
					[6] = {
						eName = "Will of the Emperor",
						eID = 677,
					},
				},
			},
			[2] = {
				["name"] = "Heart of Fear",
				["zoneID"] = 897,
				["level"] = 90,
				["encounters"] = {
					[1] = {
						eName = "Imperial Vizier Zor'lok",
						eID = 745,
					},
					[2] = {
						eName = "Blade Lord Ta'yak",
						eID = 744,
					},
					[3] = {
						eName = "Garalon",
						eID = 713,
					},
					[4] = {
						eName = "Wind Lord Mel'jarak",
						eID = 741,
					},
					[5] = {
						eName = "Amber-Shaper Un'sok",
						eID = 737,
					},
					[6] = {
						eName = "Grand Empress Shek'zeer",
						eID = 743,
					},
				},
			},
			[3] = {
				["name"] = "Terrace of Endless Spring",
				["zoneID"] = 886,
				["level"] = 90,
				["encounters"] = {
					[1] = {
						eName = "Protectors of the Endless",
						eID = 683,
					},
					[2] = {
						eName = "Tsulong",
						eID = 742,
					},
					[3] = {
						eName = "Lei Shi",
						eID = 729,
					},
					[4] = {
						eName = "Sha of Fear",
						eID = 709,
					},
				},
			},
		},
	},
	[15] = {
		raids = {
			[1] = {
				["name"] = "Throne of Thunder",
				["zoneID"] = 930,
				["level"] = 90,
				["encounters"] = {
					[1] = {
						eName = "Jin'rokh the Breaker",
						eID = 827,
					},
					[2] = {
						eName = "Horridon",
						eID = 819,
					},
					[3] = {
						eName = "Council of Elders",
						eID = 816,
					},
					[4] = {
						eName = "Tortos",
						eID = 825,
					},
					[5] = {
						eName = "Megaera",
						eID = 821,
					},
					[6] = {
						eName = "Ji-Kun",
						eID = 828,
					},
					[7] = {
						eName = "Durumu the Forgotten",
						eID = 818,
					},
					[8] = {
						eName = "Primordius",
						eID = 820,
					},
					[9] = {
						eName = "Dark Animus",
						eID = 824,
					},
					[10] = {
						eName = "Iron Qon",
						eID = 817,
					},
					[11] = {
						eName = "Twin Consorts",
						eID = 829,
					},
					[12] = {
						eName = "Lei Shen",
						eID = 832,
					},
					[13] = {
						eName = "Ra-den",
						eID = 831,
						heroicOnly = true,
					},
				},
			},
		},
	},
	[16] = {
		raids = {
			[1] = {
				["name"] = "Siege of Orgrimmar",
				["zoneID"] = 956,
				["level"] = 90,
				["encounters"] = {
					[1] = {
						eName = "Immerseus",
						eID = 852,
					},
					[2] = {
						eName = "The Fallen Protectors",
						eID = 849,
					},
					[3] = {
						eName = "Norushen",
						eID = 866,
					},
					[4] = {
						eName = "Sha of Pride",
						eID = 867,
					},
					[5] = {
						eName = "Galakras",
						eID = 868,
					},
					[6] = {
						eName = "Iron Juggernaut",
						eID = 864,
					},
					[7] = {
						eName = "Kor'kron Dark Shaman",
						eID = 856,
					},
					[8] = {
						eName = "General Nazgrim",
						eID = 850,
					},
					[9] = {
						eName = "Malkorok",
						eID = 846,
					},
					[10] = {
						eName = "Spoils of Pandaria",
						eID = 870,
					},
					[11] = {
						eName = "Thok the Bloodthirsty",
						eID = 851,
					},
					[12] = {
						eName = "Siegecrafter Blackfuse",
						eID = 865,
					},
					[13] = {
						eName = "Paragons of the Klaxxi",
						eID = 853,
					},
					[14] = {
						eName = "Garrosh Hellscream",
						eID = 869,
					},
				},
			},
		},
	},
	[17] = {
		raids = {
			[1] = {
				["name"] = "Highmaul",
				["zoneID"] = 994,
				["level"] = 100,
				["encounters"] = {
					[1] = {
						eName = "Kargath Bladefist",
						eID = 1128,
					},
					[2] = {
						eName = "The Butcher",
						eID = 971,
					},
					[3] = {
						eName = "Tectus",
						eID = 1195,
					},
					[4] = {
						eName = "Brackenspore",
						eID = 1196,
					},
					[5] = {
						eName = "Twin Ogron",
						eID = 1148,
					},
					[6] = {
						eName = "Ko'ragh",
						eID = 1153,
					},
					[7] = {
						eName = "Imperator Mar'gok",
						eID = 1197,
					},
				},
			},
			[2] = {
				["name"] = "Blackrock Foundry",
				["zoneID"] = 988,
				["level"] = 100,
				["encounters"] = { 
					[1] = {
						eName = "Gruul",
						eID = 1161,
					},
					[2] = {
						eName = "Oregorger",
						eID = 1202,
					},
					[3] = {
						eName = "The Blast Furnace",
						eID = 1154,
					},
					[4] = {
						eName = "Hans'gar and Franzok",
						eID = 868,
					},
					[5] = {
						eName = "Operator Thogar",
						eID = 1147,
					},
					[6] = {
						eName = "Kromog",
						eID = 1162,
					},
					[7] = {
						eName = "Beastlord Darmac",
						eID = 1122,
					},
					[8] = {
						eName = "Flamebender Ka'graz",
						eID = 1123,
					},
					[9] = {
						eName = "The Iron Maidens",
						eID = 1203,
					},
					[10] = {
						eName = "Blackhand",
						eID = 959,
					},
				},
			},
		},
	},
	[18] = {
		raids = {
			[1] = {
				["name"] = "Hellfire Citadel",
				["zoneID"] = 1026,
				["level"] = 100,
				["encounters"] = {
					[1] = {
						eName = "Hellfire Assault",
						eID = 1426,
					},
					[2] = {
						eName = "Iron Reaver",
						eID = 1425,
					},
					[3] = {
						eName = "Kormrok",
						eID = 1392,
					},
					[4] = {
						eName = "Hellfire High Council",
						eID = 1432,
					},
					[5] = {
						eName = "Kilrogg Deadeye",
						eID = 1396,
					},
					[6] = {
						eName = "Gorefiend",
						eID = 1372,
					},
					[7] = {
						eName = "Shadow-Lord Iskar",
						eID = 1433,
					},
					[8] = {
						eName = "Fel Lord Zakuun",
						eID = 1391,
					},
					[9] = {
						eName = "Socrethar the Eternal",
						eID = 1427,
					},
					[10] = {
						eName = "Xhul'horac",
						eID = 1447,
					},
					[11] = {
						eName = "Tyrant Velhari",
						eID = 1394,
					},
					[12] = {
						eName = "Mannoroth",
						eID = 1395,
					},
					[13] = {
						eName = "Archimonde",
						eID = 1438,
					},
				},
			},
		},
	},
}

C["DIFFICULTY"] = {
	[3] = {
		["index"] = 3,
		["name"] = "10",
	},
	[4] = {
		["index"] = 4,
		["name"] = "25",
	},
	[5] = {
		["index"] = 5,
		["name"] = "10H",
	},
	[6] = {
		["index"] = 6,
		["name"] = "25H",
	},
	[7] = {
		["index"] = 7,
		["name"] = "LFR",
	},
	[14] = {
		["index"] = 14,
		["name"] = "Normal",
	},
	[15] = {
		["index"] = 15,
		["name"] = "Heroic",
	},
	[16] = {
		["index"] = 16,
		["name"] = "Mythic",
	},
}