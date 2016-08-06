
_detalhes_database = {
	["announce_interrupts"] = {
		["enabled"] = false,
		["whisper"] = "",
		["channel"] = "SAY",
		["custom"] = "",
		["next"] = "",
	},
	["announce_prepots"] = {
		["enabled"] = true,
		["channel"] = "SELF",
		["reverse"] = false,
	},
	["active_profile"] = "Krazyito-Mal'Ganis",
	["last_realversion"] = 110,
	["ignore_nicktag"] = false,
	["tabela_historico"] = {
		["tabelas"] = {
		},
	},
	["last_day"] = "05",
	["combat_counter"] = 623,
	["plugin_database"] = {
		["DETAILS_PLUGIN_DAMAGE_RANK"] = {
			["lasttry"] = {
			},
			["annouce"] = true,
			["dpshistory"] = {
			},
			["enabled"] = true,
			["dps"] = 0,
			["level"] = 1,
			["author"] = "Details! Team",
		},
		["DETAILS_PLUGIN_DEATH_GRAPHICS"] = {
			["last_boss"] = false,
			["captures"] = {
				false, -- [1]
				false, -- [2]
				true, -- [3]
				true, -- [4]
			},
			["first_run"] = false,
			["endurance_threshold"] = 5,
			["max_deaths_for_timeline"] = 5,
			["deaths_threshold"] = 10,
			["show_icon"] = 1,
			["showing_type"] = 1,
			["max_deaths_for_current"] = 15,
			["last_player"] = false,
			["author"] = "Details! Team",
			["last_encounter_hash"] = false,
			["enabled"] = true,
			["timeline_cutoff_time"] = 3,
			["last_segment"] = false,
			["last_combat_id"] = 321,
			["timeline_cutoff_delete_time"] = 3,
			["max_segments_for_current"] = 2,
			["InstalledAt"] = 1459994607,
		},
		["DETAILS_PLUGIN_ENCOUNTER_DETAILS"] = {
			["enabled"] = true,
			["encounter_timers_bw"] = {
			},
			["encounter_timers_dbm"] = {
			},
			["hide_on_combat"] = false,
			["opened"] = 0,
			["window_scale"] = 1,
			["show_icon"] = 5,
			["author"] = "Details! Team",
			["max_emote_segments"] = 3,
		},
		["DETAILS_PLUGIN_CHART_VIEWER"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
			["tabs"] = {
				{
					["name"] = "Your Damage",
					["segment_type"] = 2,
					["version"] = "v2.0",
					["data"] = "Player Damage Done",
					["texture"] = "line",
				}, -- [1]
				{
					["iType"] = "raid-TANK",
					["version"] = "v2.0",
					["options"] = {
						["iType"] = "raid-TANK",
						["name"] = "Tanks Damage Taken",
					},
					["segment_type"] = 1,
					["name"] = "Tanks Damage Taken",
					["data"] = "PRESET_TANK_TAKEN",
					["texture"] = "line",
				}, -- [2]
				["last_selected"] = 2,
			},
			["options"] = {
				["show_method"] = 4,
				["auto_create"] = true,
				["window_scale"] = 1,
			},
		},
		["DETAILS_PLUGIN_TIME_LINE"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
		},
		["DETAILS_PLUGIN_STREAM_OVERLAY"] = {
			["font_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["is_first_run"] = false,
			["arrow_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["main_frame_size"] = {
				250, -- [1]
				230, -- [2]
			},
			["minimap"] = {
				["minimapPos"] = 240.783009177893,
				["radius"] = 160,
				["hide"] = false,
			},
			["arrow_anchor_x"] = 0,
			["row_texture"] = "Details Serenity",
			["scale"] = 1,
			["row_height"] = 20,
			["enabled"] = false,
			["arrow_size"] = 10,
			["point"] = "LEFT",
			["row_spacement"] = 21,
			["main_frame_color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.2, -- [4]
			},
			["author"] = "Details! Team",
			["arrow_texture"] = "Interface\\CHATFRAME\\ChatFrameExpandArrow",
			["font_size"] = 10,
			["per_second"] = {
				["enabled"] = false,
				["point"] = "CENTER",
				["scale"] = 1.5,
				["font_shadow"] = true,
				["y"] = 0,
				["update_speed"] = 0.05,
				["attribute_type"] = 1,
				["x"] = 0,
				["size"] = 32,
			},
			["x"] = 8.75213241577149,
			["font_face"] = "Friz Quadrata TT",
			["arrow_anchor_y"] = 0,
			["y"] = -57.9828643798828,
			["row_color"] = {
				0.1, -- [1]
				0.1, -- [2]
				0.1, -- [3]
				0.4, -- [4]
			},
			["main_frame_locked"] = false,
			["main_frame_strata"] = "LOW",
		},
		["DETAILS_PLUGIN_TINY_THREAT"] = {
			["updatespeed"] = 1,
			["enabled"] = true,
			["animate"] = false,
			["useplayercolor"] = false,
			["author"] = "Details! Team",
			["useclasscolors"] = false,
			["playercolor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
			},
			["showamount"] = false,
		},
		["DETAILS_PLUGIN_TIME_ATTACK"] = {
			["enabled"] = true,
			["realm_last_shown"] = 40,
			["saved_as_anonymous"] = true,
			["recently_as_anonymous"] = true,
			["dps"] = 0,
			["disable_sharing"] = false,
			["history"] = {
			},
			["time"] = 40,
			["history_lastindex"] = 0,
			["author"] = "Details! Team",
			["realm_history"] = {
			},
			["realm_lastamt"] = 0,
		},
		["DETAILS_PLUGIN_RAIDCHECK"] = {
			["enabled"] = true,
			["pre_pot_tanks"] = false,
			["mythic_1_4"] = true,
			["author"] = "Details! Team",
			["use_report_panel"] = true,
			["pre_pot_healers"] = false,
		},
		["DETAILS_PLUGIN_VANGUARD"] = {
			["enabled"] = true,
			["tank_block_color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.8, -- [4]
			},
			["tank_block_texture"] = "Details Serenity",
			["show_inc_bars"] = true,
			["author"] = "Details! Team",
			["first_run"] = false,
			["tank_block_size"] = 150,
		},
		["DETAILS_PLUGIN_RAID_POWER_BARS"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
		},
		["DETAILS_PLUGIN_DPS_TUNING"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
			["SpellBarsShowType"] = 1,
		},
		["DETAILS_PLUGIN_YANP"] = {
			["enabled"] = true,
			["auto_open"] = true,
			["rightclick_closed"] = false,
			["auto_close"] = true,
			["author"] = "Details! Team",
			["hide_on_combat"] = true,
			["deaths_table"] = {
				{
					"Flamebender Ka'graz", -- [1]
					408.278000000049, -- [2]
					{
						1429582516.258, -- [1]
						115308, -- [2]
					}, -- [3]
					{
						{
							true, -- [1]
							155511, -- [2]
							11605, -- [3]
							1429582518.186, -- [4]
							1, -- [5]
							"Flamebender Ka'graz", -- [6]
							nil, -- [7]
							4, -- [8]
							false, -- [9]
							5499, -- [10]
						}, -- [1]
						{
							true, -- [1]
							155511, -- [2]
							11936, -- [3]
							1429582517.662, -- [4]
							6106, -- [5]
							"Overheated Cinder Wolf", -- [6]
							nil, -- [7]
							4, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [2]
						{
							true, -- [1]
							155511, -- [2]
							11982, -- [3]
							1429582517.662, -- [4]
							18042, -- [5]
							"Cinder Wolf", -- [6]
							nil, -- [7]
							4, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [3]
						{
							true, -- [1]
							155511, -- [2]
							11962, -- [3]
							1429582517.662, -- [4]
							30024, -- [5]
							"Flamebender Ka'graz", -- [6]
							nil, -- [7]
							4, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [4]
						{
							true, -- [1]
							155314, -- [2]
							13075, -- [3]
							1429582517.571, -- [4]
							41986, -- [5]
							"[*] Lava Slash", -- [6]
							nil, -- [7]
							4, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [5]
						{
							true, -- [1]
							124255, -- [2]
							14703, -- [3]
							1429582517.205, -- [4]
							55061, -- [5]
							"Kråzyito", -- [6]
							nil, -- [7]
							1, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [6]
						{
							true, -- [1]
							155511, -- [2]
							11644, -- [3]
							1429582517.154, -- [4]
							69764, -- [5]
							"Cinder Wolf", -- [6]
							nil, -- [7]
							4, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [7]
						{
							true, -- [1]
							155511, -- [2]
							11563, -- [3]
							1429582517.154, -- [4]
							81408, -- [5]
							"Overheated Cinder Wolf", -- [6]
							nil, -- [7]
							4, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [8]
						{
							true, -- [1]
							155511, -- [2]
							11642, -- [3]
							1429582517.154, -- [4]
							92971, -- [5]
							"Flamebender Ka'graz", -- [6]
							nil, -- [7]
							4, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [9]
						{
							true, -- [1]
							1, -- [2]
							47042, -- [3]
							1429582516.904, -- [4]
							151655, -- [5]
							"Overheated Cinder Wolf", -- [6]
							65568, -- [7]
							1, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [10]
						{
							false, -- [1]
							115072, -- [2]
							16325, -- [3]
							1429582516.711, -- [4]
							151655, -- [5]
							"Kråzyito", -- [6]
							nil, -- [7]
							0, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [11]
						{
							false, -- [1]
							115072, -- [2]
							54417, -- [3]
							1429582516.711, -- [4]
							135330, -- [5]
							"Kråzyito", -- [6]
							nil, -- [7]
							0, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [12]
						{
							true, -- [1]
							155511, -- [2]
							11742, -- [3]
							1429582516.665, -- [4]
							80913, -- [5]
							"Overheated Cinder Wolf", -- [6]
							nil, -- [7]
							4, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [13]
						{
							true, -- [1]
							155511, -- [2]
							12079, -- [3]
							1429582516.665, -- [4]
							92655, -- [5]
							"Cinder Wolf", -- [6]
							nil, -- [7]
							4, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [14]
						{
							true, -- [1]
							155511, -- [2]
							11785, -- [3]
							1429582516.637, -- [4]
							104734, -- [5]
							"Flamebender Ka'graz", -- [6]
							nil, -- [7]
							4, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [15]
						{
							1, -- [1]
							115308, -- [2]
							1, -- [3]
							1429582516.258, -- [4]
							116519, -- [5]
							"Kråzyito", -- [6]
							nil, -- [7]
							4, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [16]
					}, -- [4]
					386880, -- [5]
					1429582518.186, -- [6]
				}, -- [1]
				{
					"Operator Thogar", -- [1]
					389.315999999992, -- [2]
					{
						1429579577.209, -- [1]
						115308, -- [2]
					}, -- [3]
					{
						{
							true, -- [1]
							155921, -- [2]
							74623, -- [3]
							1429579583.815, -- [4]
							1, -- [5]
							"Operator Thogar", -- [6]
							nil, -- [7]
							4, -- [8]
							false, -- [9]
							13070, -- [10]
						}, -- [1]
						{
							true, -- [1]
							163754, -- [2]
							30295, -- [3]
							1429579583.661, -- [4]
							61553, -- [5]
							"Grom'kar Man-at-Arms", -- [6]
							28218, -- [7]
							1, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [2]
						{
							false, -- [1]
							47750, -- [2]
							11138, -- [3]
							1429579583.444, -- [4]
							91848, -- [5]
							"Vollo-Kilrogg", -- [6]
							nil, -- [7]
							0, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [3]
						{
							false, -- [1]
							47750, -- [2]
							36005, -- [3]
							1429579583.444, -- [4]
							80710, -- [5]
							"Vollo-Kilrogg", -- [6]
							nil, -- [7]
							0, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [4]
						{
							false, -- [1]
							178173, -- [2]
							21998, -- [3]
							1429579583.194, -- [4]
							44705, -- [5]
							"Kråzyito", -- [6]
							nil, -- [7]
							0, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [5]
						{
							true, -- [1]
							124255, -- [2]
							19070, -- [3]
							1429579582.877, -- [4]
							22707, -- [5]
							"Kråzyito", -- [6]
							nil, -- [7]
							1, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [6]
						{
							true, -- [1]
							155921, -- [2]
							74623, -- [3]
							1429579582.798, -- [4]
							41777, -- [5]
							"Operator Thogar", -- [6]
							nil, -- [7]
							4, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [7]
						{
							false, -- [1]
							47750, -- [2]
							37999, -- [3]
							1429579582.633, -- [4]
							116400, -- [5]
							"Vollo-Kilrogg", -- [6]
							nil, -- [7]
							0, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [8]
						{
							true, -- [1]
							1, -- [2]
							68566, -- [3]
							1429579582.034, -- [4]
							146967, -- [5]
							"Operator Thogar", -- [6]
							63867, -- [7]
							1, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [9]
						{
							true, -- [1]
							124255, -- [2]
							14092, -- [3]
							1429579581.878, -- [4]
							146967, -- [5]
							"Kråzyito", -- [6]
							nil, -- [7]
							1, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [10]
						{
							false, -- [1]
							178173, -- [2]
							13217, -- [3]
							1429579581.8, -- [4]
							161059, -- [5]
							"Kråzyito", -- [6]
							nil, -- [7]
							0, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [11]
						{
							false, -- [1]
							178173, -- [2]
							22029, -- [3]
							1429579581.8, -- [4]
							147842, -- [5]
							"Kråzyito", -- [6]
							nil, -- [7]
							0, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [12]
						{
							false, -- [1]
							178173, -- [2]
							22030, -- [3]
							1429579581.8, -- [4]
							125813, -- [5]
							"Kråzyito", -- [6]
							nil, -- [7]
							0, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [13]
						{
							true, -- [1]
							155921, -- [2]
							70929, -- [3]
							1429579581.8, -- [4]
							103783, -- [5]
							"Operator Thogar", -- [6]
							3693, -- [7]
							4, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [14]
						{
							false, -- [1]
							86273, -- [2]
							0, -- [3]
							1429579581.8, -- [4]
							174712, -- [5]
							"Odathey-Bladefist", -- [6]
							true, -- [7]
							0, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [15]
						{
							false, -- [1]
							86273, -- [2]
							3693, -- [3]
							1429579581.8, -- [4]
							174712, -- [5]
							"Odathey-Bladefist", -- [6]
							true, -- [7]
							0, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [16]
					}, -- [4]
					386880, -- [5]
					1429579583.863, -- [6]
				}, -- [2]
				{
					"Oregorger the Devourer", -- [1]
					418.738000000012, -- [2]
					{
						1429576618.617, -- [1]
						115203, -- [2]
					}, -- [3]
					{
						{
							true, -- [1]
							159958, -- [2]
							39985, -- [3]
							1429576626.667, -- [4]
							1, -- [5]
							"Oregorger", -- [6]
							120606, -- [7]
							1, -- [8]
							false, -- [9]
							39984, -- [10]
						}, -- [1]
						{
							true, -- [1]
							124255, -- [2]
							57388, -- [3]
							1429576626.45, -- [4]
							1, -- [5]
							"Kråzyito", -- [6]
							nil, -- [7]
							1, -- [8]
							true, -- [9]
							57388, -- [10]
						}, -- [2]
						{
							true, -- [1]
							124255, -- [2]
							57388, -- [3]
							1429576625.457, -- [4]
							1, -- [5]
							"Kråzyito", -- [6]
							nil, -- [7]
							1, -- [8]
							true, -- [9]
							7742, -- [10]
						}, -- [3]
						{
							true, -- [1]
							159958, -- [2]
							33549, -- [3]
							1429576625.434, -- [4]
							49647, -- [5]
							"Oregorger", -- [6]
							120531, -- [7]
							1, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [4]
						{
							true, -- [1]
							124255, -- [2]
							50372, -- [3]
							1429576624.454, -- [4]
							83196, -- [5]
							"Kråzyito", -- [6]
							6890, -- [7]
							1, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [5]
						{
							false, -- [1]
							17, -- [2]
							0, -- [3]
							1429576624.454, -- [4]
							126678, -- [5]
							"Vollo-Kilrogg", -- [6]
							true, -- [7]
							0, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [6]
						{
							false, -- [1]
							17, -- [2]
							6890, -- [3]
							1429576624.454, -- [4]
							126678, -- [5]
							"Vollo-Kilrogg", -- [6]
							true, -- [7]
							0, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [7]
						{
							true, -- [1]
							159958, -- [2]
							142089, -- [3]
							1429576624.233, -- [4]
							126678, -- [5]
							"Oregorger", -- [6]
							nil, -- [7]
							1, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [8]
						{
							false, -- [1]
							17, -- [2]
							30938, -- [3]
							1429576624.233, -- [4]
							126678, -- [5]
							"Vollo-Kilrogg", -- [6]
							true, -- [7]
							0, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [9]
						{
							true, -- [1]
							124255, -- [2]
							43619, -- [3]
							1429576623.45, -- [4]
							126678, -- [5]
							"Kråzyito", -- [6]
							nil, -- [7]
							1, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [10]
						{
							false, -- [1]
							17, -- [2]
							43619, -- [3]
							1429576623.45, -- [4]
							126678, -- [5]
							"Vollo-Kilrogg", -- [6]
							true, -- [7]
							0, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [11]
						{
							true, -- [1]
							159958, -- [2]
							137009, -- [3]
							1429576623.017, -- [4]
							126678, -- [5]
							"Oregorger", -- [6]
							nil, -- [7]
							1, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [12]
						{
							false, -- [1]
							17, -- [2]
							29832, -- [3]
							1429576623.017, -- [4]
							126678, -- [5]
							"Vollo-Kilrogg", -- [6]
							true, -- [7]
							0, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [13]
						{
							false, -- [1]
							125355, -- [2]
							6664, -- [3]
							1429576622.533, -- [4]
							126678, -- [5]
							"Kråzyito", -- [6]
							nil, -- [7]
							0, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [14]
						{
							false, -- [1]
							125355, -- [2]
							22215, -- [3]
							1429576622.533, -- [4]
							120014, -- [5]
							"Kråzyito", -- [6]
							nil, -- [7]
							0, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [15]
						{
							true, -- [1]
							124255, -- [2]
							36557, -- [3]
							1429576622.45, -- [4]
							97799, -- [5]
							"Kråzyito", -- [6]
							nil, -- [7]
							1, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [16]
					}, -- [4]
					386880, -- [5]
					1429576626.699, -- [6]
				}, -- [3]
				{
					"Imperator Mar'gok", -- [1]
					555.894000000029, -- [2]
					{
						1429557622.58, -- [1]
						115203, -- [2]
					}, -- [3]
					{
						{
							true, -- [1]
							1, -- [2]
							18688, -- [3]
							1429557642.919, -- [4]
							15149, -- [5]
							"Arcane Remnant", -- [6]
							nil, -- [7]
							64, -- [8]
							false, -- [9]
							3539, -- [10]
						}, -- [1]
						{
							true, -- [1]
							1, -- [2]
							19925, -- [3]
							1429557642.919, -- [4]
							15149, -- [5]
							"Arcane Remnant", -- [6]
							nil, -- [7]
							64, -- [8]
							false, -- [9]
							4776, -- [10]
						}, -- [2]
						{
							true, -- [1]
							1, -- [2]
							24028, -- [3]
							1429557642.919, -- [4]
							15149, -- [5]
							"Arcane Remnant", -- [6]
							nil, -- [7]
							64, -- [8]
							false, -- [9]
							8879, -- [10]
						}, -- [3]
						{
							true, -- [1]
							1, -- [2]
							19875, -- [3]
							1429557642.919, -- [4]
							15149, -- [5]
							"Arcane Remnant", -- [6]
							nil, -- [7]
							64, -- [8]
							false, -- [9]
							4726, -- [10]
						}, -- [4]
						{
							true, -- [1]
							1, -- [2]
							21056, -- [3]
							1429557642.919, -- [4]
							15149, -- [5]
							"Arcane Remnant", -- [6]
							nil, -- [7]
							64, -- [8]
							false, -- [9]
							5907, -- [10]
						}, -- [5]
						{
							true, -- [1]
							1, -- [2]
							24238, -- [3]
							1429557642.919, -- [4]
							15149, -- [5]
							"Arcane Remnant", -- [6]
							nil, -- [7]
							64, -- [8]
							false, -- [9]
							9089, -- [10]
						}, -- [6]
						{
							true, -- [1]
							1, -- [2]
							21168, -- [3]
							1429557642.919, -- [4]
							15149, -- [5]
							"Arcane Remnant", -- [6]
							nil, -- [7]
							64, -- [8]
							false, -- [9]
							6019, -- [10]
						}, -- [7]
						{
							false, -- [1]
							119611, -- [2]
							1029, -- [3]
							1429557642.841, -- [4]
							63315, -- [5]
							"Syning-EarthenRing", -- [6]
							nil, -- [7]
							0, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [8]
						{
							true, -- [1]
							1, -- [2]
							48166, -- [3]
							1429557642.841, -- [4]
							62286, -- [5]
							"Replicating Arcane Aberration <Imperator Mar'gok>", -- [6]
							nil, -- [7]
							64, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [9]
						{
							false, -- [1]
							2061, -- [2]
							19891, -- [3]
							1429557642.841, -- [4]
							62286, -- [5]
							"Hiccúp-Stormreaver", -- [6]
							nil, -- [7]
							0, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [10]
						{
							false, -- [1]
							126154, -- [2]
							5256, -- [3]
							1429557642.795, -- [4]
							42395, -- [5]
							"Hiccúp-Stormreaver", -- [6]
							nil, -- [7]
							0, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [11]
						{
							false, -- [1]
							33110, -- [2]
							4979, -- [3]
							1429557642.724, -- [4]
							37139, -- [5]
							"Hiccúp-Stormreaver", -- [6]
							nil, -- [7]
							0, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [12]
						{
							true, -- [1]
							158705, -- [2]
							5450, -- [3]
							1429557642.724, -- [4]
							32160, -- [5]
							"Replicating Arcane Aberration <Imperator Mar'gok>", -- [6]
							nil, -- [7]
							64, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [13]
						{
							false, -- [1]
							121148, -- [2]
							1847, -- [3]
							1429557642.691, -- [4]
							37610, -- [5]
							"Hiccúp-Stormreaver", -- [6]
							nil, -- [7]
							0, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [14]
						{
							false, -- [1]
							88686, -- [2]
							423, -- [3]
							1429557642.185, -- [4]
							35763, -- [5]
							"Hiccúp-Stormreaver", -- [6]
							nil, -- [7]
							0, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [15]
						{
							true, -- [1]
							124255, -- [2]
							10757, -- [3]
							1429557642.064, -- [4]
							35340, -- [5]
							"Kråzyito", -- [6]
							nil, -- [7]
							1, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [16]
					}, -- [4]
					353760, -- [5]
					1429557642.919, -- [6]
				}, -- [4]
				{
					"Imperator Mar'gok", -- [1]
					450.323000000033, -- [2]
					{
						1429557521.703, -- [1]
						119582, -- [2]
					}, -- [3]
					{
						{
							true, -- [1]
							1, -- [2]
							9698, -- [3]
							1429557537.279, -- [4]
							1, -- [5]
							"Volatile Anomaly", -- [6]
							nil, -- [7]
							64, -- [8]
							false, -- [9]
							9697, -- [10]
						}, -- [1]
						{
							true, -- [1]
							124255, -- [2]
							35446, -- [3]
							1429557537.106, -- [4]
							1, -- [5]
							"Kråzyito", -- [6]
							nil, -- [7]
							1, -- [8]
							true, -- [9]
							33574, -- [10]
						}, -- [2]
						{
							true, -- [1]
							1, -- [2]
							7483, -- [3]
							1429557536.996, -- [4]
							17150, -- [5]
							"Volatile Anomaly", -- [6]
							nil, -- [7]
							64, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [3]
						{
							true, -- [1]
							1, -- [2]
							7794, -- [3]
							1429557536.877, -- [4]
							17150, -- [5]
							"Volatile Anomaly", -- [6]
							nil, -- [7]
							64, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [4]
						{
							true, -- [1]
							1, -- [2]
							54200, -- [3]
							1429557536.835, -- [4]
							71350, -- [5]
							"Gorian Reaver", -- [6]
							77793, -- [7]
							1, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [5]
						{
							true, -- [1]
							1, -- [2]
							10007, -- [3]
							1429557536.724, -- [4]
							81357, -- [5]
							"Volatile Anomaly", -- [6]
							nil, -- [7]
							64, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [6]
						{
							false, -- [1]
							115175, -- [2]
							7470, -- [3]
							1429557536.642, -- [4]
							81357, -- [5]
							"Syning-EarthenRing", -- [6]
							nil, -- [7]
							0, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [7]
						{
							false, -- [1]
							116995, -- [2]
							5799, -- [3]
							1429557536.592, -- [4]
							73887, -- [5]
							"Syning-EarthenRing", -- [6]
							nil, -- [7]
							0, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [8]
						{
							false, -- [1]
							116995, -- [2]
							19330, -- [3]
							1429557536.592, -- [4]
							68088, -- [5]
							"Syning-EarthenRing", -- [6]
							nil, -- [7]
							0, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [9]
						{
							true, -- [1]
							124255, -- [2]
							30740, -- [3]
							1429557536.125, -- [4]
							48758, -- [5]
							"Kråzyito", -- [6]
							nil, -- [7]
							1, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [10]
						{
							true, -- [1]
							1, -- [2]
							7858, -- [3]
							1429557535.972, -- [4]
							97475, -- [5]
							"Volatile Anomaly", -- [6]
							nil, -- [7]
							64, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [11]
						{
							true, -- [1]
							1, -- [2]
							10119, -- [3]
							1429557535.941, -- [4]
							97475, -- [5]
							"Volatile Anomaly", -- [6]
							nil, -- [7]
							64, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [12]
						{
							true, -- [1]
							1, -- [2]
							54788, -- [3]
							1429557535.805, -- [4]
							152263, -- [5]
							"Gorian Reaver", -- [6]
							78637, -- [7]
							1, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [13]
						{
							false, -- [1]
							77489, -- [2]
							1702, -- [3]
							1429557535.775, -- [4]
							152263, -- [5]
							"Hiccúp-Stormreaver", -- [6]
							nil, -- [7]
							0, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [14]
						{
							false, -- [1]
							115175, -- [2]
							2241, -- [3]
							1429557535.775, -- [4]
							150561, -- [5]
							"Syning-EarthenRing", -- [6]
							nil, -- [7]
							0, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [15]
						{
							false, -- [1]
							115175, -- [2]
							7470, -- [3]
							1429557535.775, -- [4]
							148320, -- [5]
							"Syning-EarthenRing", -- [6]
							nil, -- [7]
							0, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [16]
					}, -- [4]
					353760, -- [5]
					1429557537.348, -- [6]
				}, -- [5]
				{
					"Gruul", -- [1]
					104.327000000019, -- [2]
					{
						1426660560.368, -- [1]
						115295, -- [2]
					}, -- [3]
					{
						{
							true, -- [1]
							155080, -- [2]
							197832, -- [3]
							1426660567.657, -- [4]
							1, -- [5]
							"Gruul", -- [6]
							nil, -- [7]
							4, -- [8]
							false, -- [9]
							156704, -- [10]
						}, -- [1]
						{
							true, -- [1]
							162322, -- [2]
							135899, -- [3]
							1426660567.589, -- [4]
							41128, -- [5]
							"Gruul", -- [6]
							281378, -- [7]
							1, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [2]
						{
							false, -- [1]
							17, -- [2]
							0, -- [3]
							1426660567.589, -- [4]
							177027, -- [5]
							"Xtalvia-Tichondrius", -- [6]
							true, -- [7]
							0, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [3]
						{
							false, -- [1]
							17, -- [2]
							36945, -- [3]
							1426660567.589, -- [4]
							177027, -- [5]
							"Xtalvia-Tichondrius", -- [6]
							true, -- [7]
							0, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [4]
						{
							true, -- [1]
							124255, -- [2]
							25251, -- [3]
							1426660567.229, -- [4]
							177027, -- [5]
							"Kråzyito", -- [6]
							nil, -- [7]
							1, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [5]
						{
							false, -- [1]
							17, -- [2]
							25251, -- [3]
							1426660567.229, -- [4]
							177027, -- [5]
							"Xtalvia-Tichondrius", -- [6]
							true, -- [7]
							0, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [6]
						{
							false, -- [1]
							115072, -- [2]
							43401, -- [3]
							1426660567.029, -- [4]
							177027, -- [5]
							"Kråzyito", -- [6]
							nil, -- [7]
							0, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [7]
						{
							false, -- [1]
							81751, -- [2]
							244, -- [3]
							1426660566.256, -- [4]
							133626, -- [5]
							"Xtalvia-Tichondrius", -- [6]
							nil, -- [7]
							0, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [8]
						{
							true, -- [1]
							124255, -- [2]
							25250, -- [3]
							1426660566.216, -- [4]
							133382, -- [5]
							"Kråzyito", -- [6]
							nil, -- [7]
							1, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [9]
						{
							false, -- [1]
							77489, -- [2]
							8268, -- [3]
							1426660566.167, -- [4]
							158632, -- [5]
							"Sunhands-Tichondrius", -- [6]
							nil, -- [7]
							0, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [10]
						{
							true, -- [1]
							155530, -- [2]
							29723, -- [3]
							1426660565.64, -- [4]
							150364, -- [5]
							"Gruul", -- [6]
							nil, -- [7]
							8, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [11]
						{
							true, -- [1]
							155080, -- [2]
							16157, -- [3]
							1426660565.572, -- [4]
							180087, -- [5]
							"Gruul", -- [6]
							nil, -- [7]
							4, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [12]
						{
							false, -- [1]
							81751, -- [2]
							10059, -- [3]
							1426660565.399, -- [4]
							196244, -- [5]
							"Xtalvia-Tichondrius", -- [6]
							nil, -- [7]
							0, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [13]
						{
							true, -- [1]
							155078, -- [2]
							54139, -- [3]
							1426660565.25, -- [4]
							186185, -- [5]
							"Gruul", -- [6]
							249403, -- [7]
							1, -- [8]
							false, -- [9]
							-1, -- [10]
						}, -- [14]
						{
							false, -- [1]
							115295, -- [2]
							0, -- [3]
							1426660565.25, -- [4]
							240324, -- [5]
							"Kråzyito", -- [6]
							true, -- [7]
							0, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [15]
						{
							false, -- [1]
							115295, -- [2]
							71594, -- [3]
							1426660565.25, -- [4]
							240324, -- [5]
							"Kråzyito", -- [6]
							true, -- [7]
							0, -- [8]
							true, -- [9]
							-1, -- [10]
						}, -- [16]
					}, -- [4]
					374700, -- [5]
					1426660567.657, -- [6]
				}, -- [6]
			},
			["shown_time"] = 30,
		},
		["DETAILS_PLUGIN_LEECH_TRINKET"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
		},
	},
	["last_encounter"] = "Jin'rokh the Breaker",
	["character_data"] = {
		["logons"] = 78,
	},
	["cached_talents"] = {
		["Player-3684-071EE869"] = {
			22108, -- [1]
			19819, -- [2]
			19995, -- [3]
			22096, -- [4]
			19304, -- [5]
			22091, -- [6]
			20173, -- [7]
		},
	},
	["announce_firsthit"] = {
		["enabled"] = true,
		["channel"] = "SELF",
	},
	["tabela_instancias"] = {
	},
	["combat_id"] = 361,
	["savedStyles"] = {
	},
	["savedbuffs"] = {
	},
	["last_version"] = "v5.14",
	["announce_deaths"] = {
		["enabled"] = false,
		["last_hits"] = 1,
		["only_first"] = 5,
		["where"] = 1,
	},
	["tabela_overall"] = {
		{
			["tipo"] = 2,
			["_ActorTable"] = {
			},
		}, -- [1]
		{
			["tipo"] = 3,
			["_ActorTable"] = {
			},
		}, -- [2]
		{
			["tipo"] = 7,
			["_ActorTable"] = {
			},
		}, -- [3]
		{
			["tipo"] = 9,
			["_ActorTable"] = {
			},
		}, -- [4]
		{
			["tipo"] = 2,
			["_ActorTable"] = {
			},
		}, -- [5]
		["raid_roster"] = {
		},
		["last_events_tables"] = {
		},
		["combat_counter"] = 621,
		["totals"] = {
			0, -- [1]
			0, -- [2]
			{
				0, -- [1]
				[0] = 0,
				[6] = 0,
				[3] = 0,
			}, -- [3]
			{
				["buff_uptime"] = 0,
				["ress"] = 0,
				["debuff_uptime"] = 0,
				["cooldowns_defensive"] = 0,
				["interrupt"] = 0,
				["dispell"] = 0,
				["cc_break"] = 0,
				["dead"] = 0,
			}, -- [4]
			["frags_total"] = 0,
			["voidzone_damage"] = 0,
		},
		["player_last_events"] = {
		},
		["frags_need_refresh"] = false,
		["__call"] = {
		},
		["PhaseData"] = {
			{
				1, -- [1]
				1, -- [2]
			}, -- [1]
			["heal_section"] = {
			},
			["heal"] = {
			},
			["damage_section"] = {
			},
			["damage"] = {
			},
		},
		["end_time"] = 264105.963,
		["frags"] = {
		},
		["data_fim"] = 0,
		["CombatSkillCache"] = {
		},
		["data_inicio"] = 0,
		["start_time"] = 264105.963,
		["TimeData"] = {
			["Player Damage Done"] = {
			},
		},
		["totals_grupo"] = {
			0, -- [1]
			0, -- [2]
			{
				0, -- [1]
				[0] = 0,
				[6] = 0,
				[3] = 0,
			}, -- [3]
			{
				["buff_uptime"] = 0,
				["ress"] = 0,
				["debuff_uptime"] = 0,
				["cooldowns_defensive"] = 0,
				["interrupt"] = 0,
				["dispell"] = 0,
				["cc_break"] = 0,
				["dead"] = 0,
			}, -- [4]
		},
	},
	["SoloTablesSaved"] = {
		["LastSelected"] = "DETAILS_PLUGIN_DAMAGE_RANK",
		["Mode"] = 1,
	},
	["local_instances_config"] = {
		{
			["segment"] = 0,
			["sub_attribute"] = 1,
			["horizontalSnap"] = false,
			["verticalSnap"] = false,
			["last_raid_plugin"] = "DETAILS_PLUGIN_TINY_THREAT",
			["is_open"] = true,
			["isLocked"] = true,
			["sub_atributo_last"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
				1, -- [5]
			},
			["snap"] = {
				[3] = 2,
			},
			["mode"] = 2,
			["attribute"] = 1,
			["pos"] = {
				["normal"] = {
					["y"] = -453.199489735782,
					["x"] = 669.935182030767,
					["w"] = 250.000045776367,
					["h"] = 225.555526733398,
				},
				["solo"] = {
					["y"] = -439.220902472611,
					["x"] = 667.409378949849,
					["w"] = 300.000061035156,
					["h"] = 300,
				},
			},
		}, -- [1]
		{
			["segment"] = 0,
			["sub_attribute"] = 1,
			["horizontalSnap"] = false,
			["verticalSnap"] = false,
			["is_open"] = true,
			["isLocked"] = true,
			["sub_atributo_last"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
				1, -- [5]
			},
			["snap"] = {
				1, -- [1]
			},
			["mode"] = 2,
			["attribute"] = 2,
			["pos"] = {
				["normal"] = {
					["y"] = -453.199489735782,
					["x"] = 923.240918526995,
					["w"] = 251.435943603516,
					["h"] = 225.555526733398,
				},
				["solo"] = {
					["y"] = 2,
					["x"] = 1,
					["w"] = 300,
					["h"] = 200,
				},
			},
		}, -- [2]
		{
			["segment"] = 0,
			["sub_attribute"] = 1,
			["horizontalSnap"] = false,
			["verticalSnap"] = false,
			["is_open"] = false,
			["isLocked"] = false,
			["sub_atributo_last"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
				1, -- [5]
			},
			["snap"] = {
			},
			["mode"] = 2,
			["attribute"] = 1,
			["pos"] = {
				["normal"] = {
					["y"] = 0,
					["x"] = 0,
					["w"] = 319.999969482422,
					["h"] = 129.999938964844,
				},
				["solo"] = {
					["y"] = -325.658386230469,
					["x"] = 420.834838867188,
					["w"] = 299.999969482422,
					["h"] = 300.000030517578,
				},
			},
		}, -- [3]
		{
			["segment"] = 0,
			["sub_attribute"] = 1,
			["horizontalSnap"] = false,
			["verticalSnap"] = false,
			["is_open"] = false,
			["isLocked"] = false,
			["sub_atributo_last"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
				1, -- [5]
			},
			["snap"] = {
			},
			["mode"] = 2,
			["attribute"] = 1,
			["pos"] = {
				["normal"] = {
					["y"] = -240.872436523438,
					["x"] = 746.939331054688,
					["w"] = 319.999969482422,
					["h"] = 129.999908447266,
				},
				["solo"] = {
					["y"] = -99.7442016601563,
					["x"] = 875.092895507813,
					["w"] = 299.999969482422,
					["h"] = 300.000030517578,
				},
			},
		}, -- [4]
	},
	["last_instance_time"] = 1469989011,
	["announce_cooldowns"] = {
		["ignored_cooldowns"] = {
		},
		["enabled"] = false,
		["custom"] = "",
		["channel"] = "RAID",
	},
	["nick_tag_cache"] = {
		["nextreset"] = 1471729151,
		["last_version"] = 8,
	},
	["last_instance_id"] = 1098,
	["cached_specs"] = {
		["Player-3684-071EE869"] = 268,
	},
}
