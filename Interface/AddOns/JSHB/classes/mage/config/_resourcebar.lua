﻿--
--	JSHB Mage Options - Power bar panel
--

if (select(2, UnitClass("player")) ~= "MAGE") then return end

local L = _G.JSHB.L

function JSHB.Options:Panel_ResourceBar(ord)
	local DB = _G.JSHB.Options.DB
	return {
		order = ord,
		type = "group",
		name = L["Resource Bar"],
		childGroups = "tab",
		args = {
			maintab = {
				order = 1,
				type = "group",
				name = L["Resource Bar"],
				args = {
					enabled = {
						type = "toggle",
						order = 2,
						name = L["Enable"],
						width = "double",
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) JSHB.Options:CollapseAll(); DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					smoothbar = {
						type = "toggle",
						order = 6,
						name = L["Bar smoothing"],
						disabled = function(info) return not DB.resourcebar["enabled"] end,
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					resourcenumber = {
						type = "toggle",
						order = 8,
						name = L["Current resource number"],
						desc = L["RESOURCEBARNUMBERDESC_ENABLE"],
						width = "double",
						disabled = function(info) return not DB.resourcebar["enabled"] end,
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					resourcepercent = {
						type = "toggle",
						order = 8,
						name = L["Display as percentage"],
						desc = L["Display as percentage"],
						disabled = function(info) return not DB.resourcebar["enabled"] end,
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					targethealth = {
						type = "toggle",
						order = 10,
						name = L["Target health percentage"],
						width = "full",
						disabled = function(info) return not DB.resourcebar["enabled"] end,
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					spacer17 = { order = 17, type = "description", name = " ", desc = "", width = "full"},
					width = {
						type = "range", 
						order = 22,
						name = L["Width"],
						min = 6, softMax = 600, max = 1000, step = 1,
						disabled = function(info) return not DB.resourcebar["enabled"] end,
						get = function(info) return (DB.resourcebar[info[#info] ]) end,
						set = function(info, size) DB.resourcebar[info[#info] ] = (size);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					spacer24 = { order = 24, type = "description", name = " ", desc = "", width = "half" },
					height = {
						type = "range", 
						order = 26,
						name = L["Height"],
						min = 6, softMax = 600, max = 1000, step = 1,
						disabled = function(info) return not DB.resourcebar["enabled"] end,
						get = function(info) return (DB.resourcebar[info[#info] ]) end,
						set = function(info, size) DB.resourcebar[info[#info] ] = (size);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					spacer27 = { order = 27, type = "description", name = " ", desc = "", width = "full" },
					bartexture = {
						type = "select",
						dialogControl = 'LSM30_Statusbar',
						order = 28,
						name = L["Texture"],
						values = AceGUIWidgetLSMlists.statusbar,
						disabled = function(info) return not DB.resourcebar["enabled"] end,
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					spacer29 = { order = 29, type = "description", name = " ", desc = "", width = "full" },
					powercolored = {
						type = "toggle",
						order = 30,
						name = L["Use power colors for the bar"],
						width = "double",
						disabled = function(info) return not DB.resourcebar["enabled"] end,
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					classcolored = {
						type = "toggle",
						order = 31,
						name = L["Use class colors for the bar"],
						width = "double",
						disabled = function(info) return DB.resourcebar["powercolored"] end,
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					spacer32 = { order = 32, type = "description", name = " ", desc = "", hidden = function(info) return (not DB.resourcebar.classcolored) end },
					barcolor = {
						type = "color",
						order = 34,
						name = L["Normal color"],
						desc = L["RESOURCEBARCOLORNORM_DESC"],
						hasAlpha = true,
						hidden = function(info) return (DB.resourcebar.classcolored) end,
						get = function(info) return unpack(DB.resourcebar[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.resourcebar[info[#info] ] = {r, g, b, a};JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					lowwarn = {
						type = "toggle",
						order = 36,
						name = L["Low resource change"],
						desc = L["RESOURCEBARLOWWARNDESC_ENABLE"],
						width = "double",
						disabled = function(info) return not DB.resourcebar["enabled"] end,
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					barcolorlow = {
						type = "color",
						order = 38,
						name = L["Low color"],
						desc = L["RESOURCEBARCOLORNORM_DESC"],
						hasAlpha = true,
						hidden = function(info) return not DB.resourcebar.lowwarn end,
						disabled = function(info) return not DB.resourcebar["enabled"] end,
						get = function(info) return unpack(DB.resourcebar[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.resourcebar[info[#info] ] = {r, g, b, a};JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					lowwarnthreshold = {
						type = "range", 
						order = 40,
						name = L["Low warning %"],
						desc = L["RESOURCEBARLOWWARNTHRESHOLD_DESC"],
						disabled = function(info) return (not DB.resourcebar["enabled"]) end,
						hidden = function(info) return (not DB.resourcebar.lowwarn) end,
						isPercent = true,
						min = .1, max = 1, step = .05,
						get = function(info) return(DB.resourcebar[info[#info] ]) end,
						set = function(info, size) DB.resourcebar[info[#info] ] = (size);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					spacer42 = { order = 42, type = "description", name = " ", desc = "", width = "full" },
					highwarn = {
						type = "toggle",
						order = 44,
						name = L["High resource change"],
						desc = L["RESOURCEBARHIGHWARNDESC_ENABLE"],
						width = "double",
						disabled = function(info) return not DB.resourcebar["enabled"] end,
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					barcolorhigh = {
						type = "color",
						order = 46,
						name = L["High color"],
						desc = L["RESOURCEBARCOLORNORM_DESC"],
						hasAlpha = true,
						hidden = function(info) return not DB.resourcebar.highwarn end,
						disabled = function(info) return not DB.resourcebar["enabled"] end,
						get = function(info) return unpack(DB.resourcebar[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.resourcebar[info[#info] ] = {r, g, b, a};JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					highwarnthreshold = {
						type = "range", 
						order = 48,
						name = L["High warning %"],
						desc = L["RESOURCEBARHIGHWARNTHRESHOLD_DESC"],
						disabled = function(info) return not DB.resourcebar["enabled"] end,
						hidden = function(info) return(not DB.resourcebar.highwarn) end,
						isPercent = true,
						min = .1, max = 1, step = .05,
						get = function(info) return(DB.resourcebar[info[#info] ]) end,
						set = function(info, size) DB.resourcebar[info[#info] ] = (size);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
				},
			},
			alphastuff = {
				order = 6,
				type = "group",
				name = L["Bar alpha"],
				disabled = function(info) return not DB.resourcebar["enabled"] end,
				args = {
					activealpha = {
						type = "range",
						order = 24,
						name = L["Active alpha"],
						desc = L["RESOURCEBARACTIVEALPHA_DESC"],
						min = 0, max = 1, step = .1,
						isPercent = true,
						disabled = function(info) return not DB.resourcebar["enabled"] end,
						get = function(info) return (DB.resourcebar[info[#info] ]) end,
						set = function(info, value) DB.resourcebar[info[#info] ] = (value);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					inactivealpha = {
						type = "range",
						order = 26,
						name = L["Inactive alpha"],
						desc = L["RESOURCEBARINACTIVEALPHA_DESC"],
						min = 0, max = 1, step = .1,
						isPercent = true,
						disabled = function(info) return not DB.resourcebar["enabled"] end,
						get = function(info) return (DB.resourcebar[info[#info] ]) end,
						set = function(info, value) DB.resourcebar[info[#info] ] = (value);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					spacer27 = { order = 27, type = "description", name = " ", desc = "", width = "full"},
					oocoverride = {
						type = "toggle",
						order = 28,
						name = L["OOC override"],
						disabled = function(info) return not DB.resourcebar["enabled"] end,
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					mountoverride = {
						type = "toggle",
						order = 32,
						name = L["Mounted override"],
						disabled = function(info) return not DB.resourcebar["enabled"] end,
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					deadoverride = {
						type = "toggle",
						order = 34,
						name = L["Dead override"],
						disabled = function(info) return not DB.resourcebar["enabled"] end,
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					spacer36 = { order = 36, type = "description", name = " ", desc = "", width = "full"},
					oocoverridealpha = {
						type = "range",
						order = 38,
						name = L["OOC alpha"],
						min = 0, max = 1, step = .1,
						isPercent = true,
						disabled = function(info) 
							if not DB.resourcebar["oocoverride"] then return true end
							if not DB.resourcebar["enabled"] then return true end
							return false end,
						get = function(info) return (DB.resourcebar[info[#info] ]) end,
						set = function(info, value) DB.resourcebar[info[#info] ] = (value);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					mountoverridealpha = {
						type = "range",
						order = 40,
						name = L["Mounted alpha"],
						min = 0, max = 1, step = .1,
						isPercent = true,
						disabled = function(info) 
							if not DB.resourcebar["mountoverride"] then return true end
							if not DB.resourcebar["enabled"] then return true end
							return false end,
						get = function(info) return (DB.resourcebar[info[#info] ]) end,
						set = function(info, value) DB.resourcebar[info[#info] ] = (value);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					deadoverridealpha = {
						type = "range",
						order = 42,
						name = L["Dead alpha"],
						desc = L["RESOURCEBARDEADALPHA_DESC"],
						min = 0, max = 1, step = .1,
						isPercent = true,
						disabled = function(info) 
							if not DB.resourcebar["deadoverride"] then return true end
							if not DB.resourcebar["enabled"] then return true end
							return false end,
						get = function(info) return (DB.resourcebar[info[#info] ]) end,
						set = function(info, value) DB.resourcebar[info[#info] ] = (value);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
				},
			},
			stackstuff = {
				order = 10,
				type = "group",
				name = L["Stacks"],
				args = {
					enablestacks = {
						type = "toggle",
						order = 4,
						name = L["Enable"],
						get = function(info) return DB.resourcebar.enablestacks end,
						set = function(info, value) DB.resourcebar.enablestacks = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					stacksretro = {
						type = "toggle",
						order = 6,
						name = L["Retro style"],
						desc = L["RETROSTYLEDESC"],
						disabled = function(info) return ( (not DB.resourcebar["enablestacks"]) or (not DB.resourcebar["enabled"]) ) end,
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					embedstacks = {
						type = "toggle",
						order = 8,
						name = L["Embed on bar"],
						desc = L["RESOURCEBARSTACKSEMBEDDESC_ENABLE"],
						disabled = function(info) return (not DB.resourcebar["enablestacks"]) end,
						hidden = function(info) return (DB.resourcebar.stacksretro) end,
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					stacksretroontop = {
						type = "toggle",
						order = 10,
						name = L["Stacks on top"],
						desc = L["STACKSONTOPDESC_ENABLE"],
						disabled = function(info) return (not DB.resourcebar["enablestacks"]) end,
						hidden = function(info) return (not DB.resourcebar.stacksretro) end,
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					stacksreverse = {
						type = "toggle",
						order = 14,
						name = L["Reverse stacks"],
						desc = L["RESOURCEBARSTACKSREVERSEDESC_ENABLE"],
						disabled = function(info) return ( (not DB.resourcebar["enablestacks"]) or ( (DB.resourcebar["embedstacks"]) and (not DB.resourcebar["enabled"]) ) ) end,
						hidden = function(info) return (DB.resourcebar.stacksretro) end,
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					stackscolor = {
						type = "color",
						order = 18,
						name = L["Stacks color"],
						hasAlpha = false,
						disabled = function(info) return ( (not DB.resourcebar["enablestacks"]) or ( (DB.resourcebar["embedstacks"]) and (not DB.resourcebar["enabled"]) ) ) end,
						hidden = function(info) return (DB.resourcebar.stacksretro) end,
						get = function(info) return unpack(DB.resourcebar[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.resourcebar[info[#info] ] = {r, g, b, a};JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					stackssize = {
						type = "range",
						order = 22,
						name = L["Stack size"],
						desc = L["RESOURCEBARSTACKSIZE_DESC"],
						min = 10, softMax = 100, max = 600, step = 1,
						disabled = function(info) return (DB.resourcebar["embedstacks"] or (not DB.resourcebar["enablestacks"]) ) end,
						hidden = function(info) return (DB.resourcebar.stacksretro) end,
						get = function(info) return (DB.resourcebar[info[#info] ]) end,
						set = function(info, value) DB.resourcebar[info[#info] ] = (value);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					stackscolorretro = {
						type = "color",
						order = 26,
						name = L["Color"],
						hasAlpha = false,
						disabled = function(info) return ( (not DB.resourcebar["enablestacks"]) or ( (DB.resourcebar["embedstacks"]) and (not DB.resourcebar["enabled"]) ) ) end,
						hidden = function(info) return (not DB.resourcebar.stacksretro) end,
						get = function(info) return unpack(DB.resourcebar[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.resourcebar[info[#info] ] = {r, g, b, a};JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					stackscolorretro_ba = {
						type = "color",
						order = 28,
						name = L["Background color"],
						hasAlpha = false,
						disabled = function(info) return ( (not DB.resourcebar["enablestacks"]) or ( (DB.resourcebar["embedstacks"]) and (not DB.resourcebar["enabled"]) ) ) end,
						hidden = function(info) return (not DB.resourcebar.stacksretro) end,
						get = function(info) return unpack(DB.resourcebar[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.resourcebar[info[#info] ] = {r, g, b, a};JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					stackscolorretro_bo = {
						type = "color",
						order = 32,
						name = L["Border color"],
						hasAlpha = false,
						disabled = function(info) return ( (not DB.resourcebar["enablestacks"]) or ( (DB.resourcebar["embedstacks"]) and (not DB.resourcebar["enabled"]) ) ) end,
						hidden = function(info) return (not DB.resourcebar.stacksretro) end,
						get = function(info) return unpack(DB.resourcebar[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.resourcebar[info[#info] ] = {r, g, b, a};JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
				},
			},
			fonts = {
				type = "group",
				order = 18,
				name = L["Fonts"],
				disabled = function(info) return not DB.resourcebar["enabled"] end,
				args = {
					resourcefont = {
						type = "group",
						order = 26,
						name = L["Resource font"],
						guiInline = true,
						args = {
							resourcefontcolor = {
								type = "color",
								order = 2,
								name = L["Color"],
								desc = L["Color of the text showing your current resource."],
								hasAlpha = true,
								get = function(info) return unpack(DB.resourcebar[info[#info] ]) end,
								set = function(info, r, g, b, a) DB.resourcebar[info[#info] ] = {r, g, b, a};JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
							},
							resourcefontoffset = {
								type = "range", 
								order = 4,
								name = L["Resource offset"],
								desc = L["DESC_RESOURCEBARFONTOFFSET"],
								min = -900, softMin = -100, softMax = 100, max = 900, step = 1,
								get = function(info) return (DB.resourcebar[info[#info] ]) end,
								set = function(info, size) DB.resourcebar[info[#info] ] = (size);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
							},
							spacer5 = { order = 5, type = "description", name = " ", desc = "", width = "half" },
							font = {
								type = "select", 
								dialogControl = "LSM30_Font",
								order = 6,
								name = L["Font face"],
								values = AceGUIWidgetLSMlists.font,
								get = function(info) return DB.resourcebar[info[#info-1] ][1] end,
								set = function(info, font) DB.resourcebar[info[#info-1] ][1] = font;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
							},
							size = {
								type = "range", 
								order = 8,
								name = L["Font size"],
								min = 6, max = 40, step = 1,
								get = function(info) return (DB.resourcebar[info[#info-1] ][2]) end,
								set = function(info, size) DB.resourcebar[info[#info-1] ][2] = (size);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
							},
							flags = {
								type = "multiselect", 
								order = 12,
								name = L["Font flags"],
								values = JSHB.Options.fontFlagTable,
								get = function(info, key) return(tContains({strsplit(",", DB.resourcebar[info[#info-1] ][3])}, key) and true or false) end,
								set = function(info, keyname, state) JSHB.Options:SetupFontFlags(DB.resourcebar[info[#info-1] ], keyname, state);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
							},
						},
					},
					healthfont = {
						type = "group",
						order = 32,
						name = L["Target's health font"],
						guiInline = true,
						args = {
							healthfontoffset = {
								type = "range", 
								order = 2,
								name = L["Health offset"],
								desc = L["DESC_RESOURCEBARFONTOFFSET"],
								min = -900, softMin = -100, softMax = 100, max = 900, step = 1,
								get = function(info) return (DB.resourcebar[info[#info] ]) end,
								set = function(info, size) DB.resourcebar[info[#info] ] = (size);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
							},
							font = {
								type = "select", 
								dialogControl = 'LSM30_Font',
								order = 6,
								name = L["Font face"],
								values = AceGUIWidgetLSMlists.font,
								get = function(info) return DB.resourcebar[info[#info-1] ][1] end,
								set = function(info, font) DB.resourcebar[info[#info-1] ][1] = font;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
							},
							size = {
								type = "range", 
								order = 8,
								name = L["Font size"],
								min = 6, max = 40, step = 1,
								get = function(info) return (DB.resourcebar[info[#info-1] ][2]) end,
								set = function(info, size) DB.resourcebar[info[#info-1] ][2] = (size);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
							},
							flags = {
								type = "multiselect", 
								order = 10,
								name = L["Font flags"],
								values = JSHB.Options.fontFlagTable,
								get = function(info, key) return(tContains({strsplit(",", DB.resourcebar[info[#info-1] ][3])}, key) and true or false) end,
								set = function(info, keyname, state) JSHB.Options:SetupFontFlags(DB.resourcebar[info[#info-1] ], keyname, state);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
							},
						},
					},
				},
			},
			backdrop = {
				type = "group",
				order = 22,
				name = L["Backdrop"],
				disabled = function(info) return not DB.resourcebar["enabled"] end,
				args = {
					enablebackdrop = {
						type = "toggle",
						order = 1,
						name = L["Enable"],
						width = "double",
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					backdroptexture = {
						type = "select",
						dialogControl = 'LSM30_Background',
						order = 2,
						name = L["Backdrop texture"],
						values = AceGUIWidgetLSMlists.background,
						disabled = function(info) return not DB.resourcebar["enablebackdrop"] end,
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					colorbackdrop = {
						type = "toggle",
						order = 3,
						name = L["Color the backdrop"],
						disabled = function(info) return not DB.resourcebar["enablebackdrop"] end,
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					backdropcolor = {
						type = "color",
						order = 5,
						name = L["Backdrop color"],
						hasAlpha = true,
						disabled = function(info) return not DB.resourcebar["enablebackdrop"] end,
						hidden = function(info) return not DB.resourcebar.colorbackdrop end,
						get = function(info) return unpack(DB.resourcebar[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.resourcebar[info[#info] ] = {r, g, b, a};JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					spacer6 = { order = 6, type = "description", name = " ", desc = "", width = "half", hidden = function(info) return not DB.resourcebar.colorbackdrop end },
					tile = {
						type = "toggle",
						order = 7,
						name = L["Tile the backdrop"],
						disabled = function(info) return not DB.resourcebar["enablebackdrop"] end,
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					tilesize = {
						type = "range",
						order = 8,
						name = L["Tile size"],
						min = -100, softMin = -30, softMax = 30, max = 100, step = 1,
						disabled = function(info) return not DB.resourcebar["enablebackdrop"] end,
						hidden = function(info) return not DB.resourcebar.tile end,
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					spacer = { order = 11, type = "description", name = "", desc = "", width = "full"},
					backdropoffsets = {
						type = "group",
						order = 14,
						name = L["Offsets"],
						guiInline = true,
						args = {
							offsetX1 = {
								type = "range",
								order = 1,
								name = L["Top-left X"],
								min = -50, softMin = -10, softMax = 0, max = 50, step = 1,
								disabled = function(info) return not DB.resourcebar["enablebackdrop"] end,
								get = function(info) return (DB.resourcebar[info[#info-1] ][1]) end,
								set = function(info, offset) DB.resourcebar[info[#info-1] ][1] = (offset);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
							},
							offsetY1 = {
								type = "range", 
								order = 2,
								name = L["Top-left Y"],
								min = -50, softMin = 0, softMax = 10, max = 50, step = 1,
								disabled = function(info) return not DB.resourcebar["enablebackdrop"] end,
								get = function(info) return (DB.resourcebar[info[#info-1] ][2]) end,
								set = function(info, offset) DB.resourcebar[info[#info-1] ][2] = (offset);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
							},
							spacer6 = { order = 6, type = "description", name = "", desc = "", width = "half"},
							offsetX2 = {
								type = "range", 
								order = 8,
								name = L["Bottom-right X"],
								min = -50, softMin = 0, softMax = 10, max = 50, step = 1,
								disabled = function(info) return not DB.resourcebar["enablebackdrop"] end,
								get = function(info) return (DB.resourcebar[info[#info-1] ][3]) end,
								set = function(info, offset) DB.resourcebar[info[#info-1] ][3] = (offset);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
							},
							offsetY2 = {
								type = "range", 
								order = 10,
								name = L["Bottom-right Y"],
								min = -50, softMin = -10, softMax = 0, max = 50, step = 1,
								disabled = function(info) return not DB.resourcebar["enablebackdrop"] end,
								get = function(info) return (DB.resourcebar[info[#info-1] ][4]) end,
								set = function(info, offset) DB.resourcebar[info[#info-1] ][4] = (offset);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
							},										
						},
					},
					spacer = { order = 16, type = "description", name = "", desc = "", width = "full"},
				},
			},
			border = {
				type = "group",
				order = 24,
				name = L["Border"],
				disabled = function(info) return not DB.resourcebar["enabled"] end,
				args = {
					enableborder = {
						type = "toggle",
						order = 1,
						name = L["Enable"],
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					bordercolor = {
						type = "color",
						order = 2,
						name = L["Border color"],
						hasAlpha = true,
						disabled = function(info) return not DB.resourcebar["enableborder"] end,
						get = function(info) return unpack(DB.resourcebar[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.resourcebar[info[#info] ] = {r, g, b, a};JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					bordertexture = {
						type = "select",
						dialogControl = 'LSM30_Border',
						order = 3,
						name = L["Border texture"],
						values = AceGUIWidgetLSMlists.border,
						disabled = function(info) return not DB.resourcebar["enableborder"] end,
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					edgesize = {
						type = "range",
						order = 4,
						name = L["Edge size"],
						min = -100, softMin = -16, softMax = 16, max = 100, step = 1,
						disabled = function(info) return not DB.resourcebar["enableborder"] end,
						get = function(info) return DB.resourcebar[info[#info] ] end,
						set = function(info, value) DB.resourcebar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
					},
					spacer = { order = 7, type = "description", name = "", desc = "", width = "full"},
					backdropinsets = {
						type = "group",
						order = 10,
						name = L["Insets"],
						guiInline = true,
						args = {
							left = {
								type = "range",
								order = 1,
								name = L["Left"],
								min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
								disabled = function(info) return not DB.resourcebar["enableborder"] end,
								get = function(info) return (DB.resourcebar[info[#info-1] ][1]) end,
								set = function(info, offset) DB.resourcebar[info[#info-1] ][1] = (offset);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
							},
							right = {
								type = "range", 
								order = 2,
								name = L["Right"],
								min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
								disabled = function(info) return not DB.resourcebar["enableborder"] end,
								get = function(info) return (DB.resourcebar[info[#info-1] ][2]) end,
								set = function(info, offset) DB.resourcebar[info[#info-1] ][2] = (offset);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
							},
							top = {
								type = "range", 
								order = 3,
								name = L["Top"],
								min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
								disabled = function(info) return not DB.resourcebar["enableborder"] end,
								get = function(info) return (DB.resourcebar[info[#info-1] ][3]) end,
								set = function(info, offset) DB.resourcebar[info[#info-1] ][3] = (offset);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
							},
							bottom = {
								type = "range", 
								order = 4,
								name = L["Bottom"],
								min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
								disabled = function(info) return not DB.resourcebar["enableborder"] end,
								get = function(info) return (DB.resourcebar[info[#info-1] ][4]) end,
								set = function(info, offset) DB.resourcebar[info[#info-1] ][4] = (offset);JSHB.Options:LockDown(JSHB.SetupResourceBarModule) end,
							},										
						},
					},
				},
			},
		},
	}
end
