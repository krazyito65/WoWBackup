
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
	["last_realversion"] = 109,
	["ignore_nicktag"] = false,
	["tabela_historico"] = {
		["tabelas"] = {
		},
	},
	["savedbuffs"] = {
	},
	["combat_counter"] = 61,
	["plugin_database"] = {
		["DETAILS_PLUGIN_DAMAGE_RANK"] = {
			["lasttry"] = {
			},
			["annouce"] = true,
			["dpshistory"] = {
			},
			["author"] = "Details! Team",
			["dps"] = 0,
			["level"] = 1,
			["enabled"] = true,
		},
		["DETAILS_PLUGIN_DEATH_GRAPHICS"] = {
			["enabled"] = true,
			["captures"] = {
				false, -- [1]
				false, -- [2]
				true, -- [3]
				true, -- [4]
			},
			["author"] = "Details! Team",
			["first_run"] = false,
			["showing_type"] = 1,
			["last_encounter_hash"] = false,
			["last_combat_id"] = 0,
			["endurance_threshold"] = 5,
			["last_segment"] = false,
			["deaths_threshold"] = 10,
			["show_icon"] = 1,
			["last_boss"] = false,
			["last_player"] = false,
		},
		["DETAILS_PLUGIN_ENCOUNTER_DETAILS"] = {
			["enabled"] = true,
			["encounter_timers_bw"] = {
			},
			["opened"] = 0,
			["max_emote_segments"] = 3,
			["show_icon"] = 5,
			["hide_on_combat"] = false,
			["author"] = "Details! Team",
			["encounter_timers_dbm"] = {
			},
		},
		["DETAILS_PLUGIN_YANP"] = {
			["enabled"] = true,
			["rightclick_closed"] = false,
			["auto_open"] = true,
			["auto_close"] = true,
			["hide_on_combat"] = true,
			["author"] = "Details! Team",
			["deaths_table"] = {
			},
			["shown_time"] = 30,
		},
		["DETAILS_PLUGIN_RAIDCHECK"] = {
			["enabled"] = true,
			["pre_pot_tanks"] = false,
			["mythic_1_4"] = true,
			["author"] = "Details! Team",
			["use_report_panel"] = true,
			["pre_pot_healers"] = false,
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
				["minimapPos"] = 160,
				["radius"] = 160,
				["hide"] = false,
			},
			["arrow_anchor_x"] = 0,
			["row_texture"] = "Details Serenity",
			["arrow_anchor_y"] = 0,
			["main_frame_locked"] = false,
			["enabled"] = false,
			["arrow_size"] = 10,
			["author"] = "Details! Team",
			["row_spacement"] = 21,
			["main_frame_color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.2, -- [4]
			},
			["main_frame_strata"] = "LOW",
			["arrow_texture"] = "Interface\\CHATFRAME\\ChatFrameExpandArrow",
			["row_color"] = {
				0.1, -- [1]
				0.1, -- [2]
				0.1, -- [3]
				0.4, -- [4]
			},
			["y"] = -57.9828643798828,
			["x"] = 8.75213241577149,
			["font_face"] = "Friz Quadrata TT",
			["per_second"] = {
				["enabled"] = false,
				["point"] = "CENTER",
				["scale"] = 1.5,
				["font_shadow"] = true,
				["y"] = 0,
				["x"] = 0,
				["attribute_type"] = 1,
				["update_speed"] = 0.05,
				["size"] = 32,
			},
			["font_size"] = 10,
			["point"] = "LEFT",
			["row_height"] = 20,
			["scale"] = 1,
		},
		["DETAILS_PLUGIN_TINY_THREAT"] = {
			["updatespeed"] = 1,
			["showamount"] = false,
			["animate"] = false,
			["useplayercolor"] = false,
			["useclasscolors"] = false,
			["author"] = "Details! Team",
			["playercolor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
			},
			["enabled"] = true,
		},
		["DETAILS_PLUGIN_DPS_TUNING"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
			["SpellBarsShowType"] = 1,
		},
		["DETAILS_PLUGIN_TIME_LINE"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
		},
		["DETAILS_PLUGIN_VANGUARD"] = {
			["enabled"] = true,
			["tank_block_texture"] = "Details Serenity",
			["tank_block_color"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.8, -- [4]
			},
			["show_inc_bars"] = true,
			["author"] = "Details! Team",
			["first_run"] = false,
			["tank_block_size"] = 150,
		},
		["DETAILS_PLUGIN_RAID_POWER_BARS"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
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
			["realm_lastamt"] = 0,
			["realm_history"] = {
			},
			["author"] = "Details! Team",
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
				["last_selected"] = 1,
			},
			["options"] = {
				["show_method"] = 4,
				["auto_create"] = true,
				["window_scale"] = 1,
			},
		},
		["DETAILS_PLUGIN_LEECH_TRINKET"] = {
			["enabled"] = true,
			["author"] = "Details! Team",
		},
	},
	["last_encounter"] = "Lord Rhyolith",
	["character_data"] = {
		["logons"] = 19,
	},
	["nick_tag_cache"] = {
		["nextreset"] = 1470265499,
		["last_version"] = 8,
	},
	["last_day"] = "19",
	["tabela_instancias"] = {
	},
	["combat_id"] = 7,
	["savedStyles"] = {
	},
	["last_version"] = "v5.10",
	["last_instance_time"] = 1465522275,
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
		["combat_counter"] = 51,
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
				["cooldowns_defensive"] = 0,
				["dispell"] = 0,
				["interrupt"] = 0,
				["debuff_uptime"] = 0,
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
		["data_inicio"] = 0,
		["end_time"] = 149579.964,
		["hasSaved"] = true,
		["frags"] = {
		},
		["data_fim"] = 0,
		["PhaseData"] = {
			{
				1, -- [1]
				1, -- [2]
			}, -- [1]
			["damage_section"] = {
			},
			["heal_section"] = {
			},
			["heal"] = {
			},
			["damage"] = {
			},
		},
		["CombatSkillCache"] = {
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
				["cooldowns_defensive"] = 0,
				["dispell"] = 0,
				["interrupt"] = 0,
				["debuff_uptime"] = 0,
				["cc_break"] = 0,
				["dead"] = 0,
			}, -- [4]
		},
		["start_time"] = 149579.964,
		["TimeData"] = {
			["Player Damage Done"] = {
			},
		},
		["overall_refreshed"] = true,
	},
	["announce_firsthit"] = {
		["enabled"] = true,
		["channel"] = "SELF",
	},
	["local_instances_config"] = {
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
				[3] = 2,
			},
			["mode"] = 2,
			["attribute"] = 1,
			["pos"] = {
				["normal"] = {
					["y"] = -453.199489735782,
					["x"] = 667.409378949849,
					["w"] = 245.000122070313,
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
			["attribute"] = 1,
			["pos"] = {
				["normal"] = {
					["y"] = -453.199489735782,
					["x"] = 920.715238776305,
					["w"] = 256.435882568359,
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
	["SoloTablesSaved"] = {
		["Mode"] = 1,
	},
	["announce_cooldowns"] = {
		["enabled"] = false,
		["ignored_cooldowns"] = {
		},
		["custom"] = "",
		["channel"] = "RAID",
	},
	["cached_talents"] = {
	},
	["last_instance_id"] = 720,
	["cached_specs"] = {
		["Player-76-0638D739"] = 268,
	},
}
