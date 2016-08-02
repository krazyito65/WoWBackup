﻿--
--	JSHB Options - health bar panel
--

local L = _G.JSHB.L

function JSHB.Options:Panel_HealthBar(ord)
	local DB = _G.JSHB.Options.DB
	return {
		order = ord,
		type = "group",
		name = L["Health Bar"],
		childGroups = "tab",
		args = {
			maintab = {
				order = 1,
				type = "group",
				name = L["Health Bar"],
				args = {
					enabled = {
						type = "toggle",
						order = 2,
						name = L["Enable"],
						width = "double",
						get = function(info) return DB.healthbar[info[#info] ] end,
						set = function(info, value) JSHB.Options:CollapseAll(); DB.healthbar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					smoothbar = {
						type = "toggle",
						order = 6,
						name = L["Bar smoothing"],
						disabled = function(info) return not DB.healthbar["enabled"] end,
						get = function(info) return DB.healthbar[info[#info] ] end,
						set = function(info, value) DB.healthbar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					healthnumber = {
						type = "toggle",
						order = 8,
						name = L["Current health number"],
						desc = L["RESOURCEBARNUMBERDESC_ENABLE"],
						width = "double",
						disabled = function(info) return not DB.healthbar["enabled"] end,
						get = function(info) return DB.healthbar[info[#info] ] end,
						set = function(info, value) DB.healthbar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					abbreviatenumber = {
						type = "toggle",
						order = 9,
						name = L["Abbreviate number"],
						disabled = function(info) return not DB.healthbar["enabled"] end,
						get = function(info) return DB.healthbar[info[#info] ] end,
						set = function(info, value) DB.healthbar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					pethealth = {
						type = "toggle",
						order = 10,
						name = L["Pet health percentage"],
						width = "full",
						disabled = function(info) return not DB.healthbar["enabled"] end,
						get = function(info) return DB.healthbar[info[#info] ] end,
						set = function(info, value) DB.healthbar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					spacer17 = { order = 17, type = "description", name = " ", desc = "", width = "full"},
					orientation = {
						order = 20,
						type = "select",
						name = L["Layout"],
						desc = L["Layout"],
						disabled = function(info) return not DB.healthbar["enabled"] end,
						style = "dropdown",
						values = function() 
								local t = { ["horizontal"] = L["Horizontal"], ["vertical"] = L["Vertical"], }
								return(t)
							end,
						get = function(info) return DB.healthbar[info[#info] ] end,
						set = function(info, value) DB.healthbar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					width = {
						type = "range", 
						order = 22,
						name = L["Width"],
						min = 6, softMax = 600, max = 1000, step = 1,
						disabled = function(info) return not DB.healthbar["enabled"] end,
						get = function(info) return (DB.healthbar[info[#info] ]) end,
						set = function(info, size) DB.healthbar[info[#info] ] = (size);JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					height = {
						type = "range", 
						order = 26,
						name = L["Height"],
						min = 6, softMax = 600, max = 1000, step = 1,
						disabled = function(info) return not DB.healthbar["enabled"] end,
						get = function(info) return (DB.healthbar[info[#info] ]) end,
						set = function(info, size) DB.healthbar[info[#info] ] = (size);JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					spacer27 = { order = 27, type = "description", name = " ", desc = "", width = "full" },
					bartexture = {
						type = "select",
						dialogControl = 'LSM30_Statusbar',
						order = 28,
						name = L["Texture"],
						values = AceGUIWidgetLSMlists.statusbar,
						disabled = function(info) return not DB.healthbar["enabled"] end,
						get = function(info) return DB.healthbar[info[#info] ] end,
						set = function(info, value) DB.healthbar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					spacer29 = { order = 29, type = "description", name = " ", desc = "", width = "full" },
					classcolored = {
						type = "toggle",
						order = 30,
						name = L["Use class colors for the bar"],
						width = "double",
						disabled = function(info) return not DB.healthbar["enabled"] end,
						get = function(info) return DB.healthbar[info[#info] ] end,
						set = function(info, value) DB.healthbar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					spacer32 = { order = 32, type = "description", name = " ", desc = "", hidden = function(info) return (not DB.healthbar.classcolored) end },
					barcolor = {
						type = "color",
						order = 34,
						name = L["Normal color"],
						desc = L["RESOURCEBARCOLORNORM_DESC"],
						hasAlpha = true,
						hidden = function(info) return (DB.healthbar.classcolored) end,
						get = function(info) return unpack(DB.healthbar[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.healthbar[info[#info] ] = {r, g, b, a};JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					lowwarn = {
						type = "toggle",
						order = 36,
						name = L["Low resource change"],
						desc = L["RESOURCEBARLOWWARNDESC_ENABLE"],
						width = "double",
						disabled = function(info) return not DB.healthbar["enabled"] end,
						get = function(info) return DB.healthbar[info[#info] ] end,
						set = function(info, value) DB.healthbar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					lowwarnthreshold = {
						type = "range", 
						order = 44,
						name = L["Low warning %"],
						desc = L["RESOURCEBARHIGHWARNTHRESHOLD_DESC"],
						disabled = function(info) return not DB.healthbar["enabled"] end,
						hidden = function(info) return(not DB.healthbar.lowwarn) end,
						isPercent = true,
						min = .1, max = 1, step = .05,
						get = function(info) return(DB.healthbar[info[#info] ]) end,
						set = function(info, size) DB.healthbar[info[#info] ] = (size);JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					spacer38 = { order = 38, type = "description", name = " ", desc = "", width = "half", hidden = function(info) return(DB.healthbar.lowwarn) end },
					barcolorlow = {
						type = "color",
						order = 40,
						name = L["Low color"],
						desc = L["RESOURCEBARCOLORNORM_DESC"],
						hasAlpha = true,
						hidden = function(info) return not DB.healthbar.lowwarn end,
						disabled = function(info) return not DB.healthbar["enabled"] end,
						get = function(info) return unpack(DB.healthbar[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.healthbar[info[#info] ] = {r, g, b, a};JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
				},
			},
			alphastuff = {
				order = 6,
				type = "group",
				name = L["Bar alpha"],
				disabled = function(info) return not DB.healthbar["enabled"] end,
				args = {
					activealpha = {
						type = "range",
						order = 24,
						name = L["Active alpha"],
						desc = L["RESOURCEBARACTIVEALPHA_DESC"],
						min = 0, max = 1, step = .1,
						isPercent = true,
						disabled = function(info) return not DB.healthbar["enabled"] end,
						get = function(info) return (DB.healthbar[info[#info] ]) end,
						set = function(info, value) DB.healthbar[info[#info] ] = (value);JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					inactivealpha = {
						type = "range",
						order = 26,
						name = L["Inactive alpha"],
						desc = L["RESOURCEBARINACTIVEALPHA_DESC"],
						min = 0, max = 1, step = .1,
						isPercent = true,
						disabled = function(info) return not DB.healthbar["enabled"] end,
						get = function(info) return (DB.healthbar[info[#info] ]) end,
						set = function(info, value) DB.healthbar[info[#info] ] = (value);JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					spacer27 = { order = 27, type = "description", name = " ", desc = "", width = "full"},
					oocoverride = {
						type = "toggle",
						order = 28,
						name = L["OOC override"],
						disabled = function(info) return not DB.healthbar["enabled"] end,
						get = function(info) return DB.healthbar[info[#info] ] end,
						set = function(info, value) DB.healthbar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					mountoverride = {
						type = "toggle",
						order = 32,
						name = L["Mounted override"],
						disabled = function(info) return not DB.healthbar["enabled"] end,
						get = function(info) return DB.healthbar[info[#info] ] end,
						set = function(info, value) DB.healthbar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					deadoverride = {
						type = "toggle",
						order = 34,
						name = L["Dead override"],
						disabled = function(info) return not DB.healthbar["enabled"] end,
						get = function(info) return DB.healthbar[info[#info] ] end,
						set = function(info, value) DB.healthbar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					spacer36 = { order = 36, type = "description", name = " ", desc = "", width = "full"},
					oocoverridealpha = {
						type = "range",
						order = 38,
						name = L["OOC alpha"],
						min = 0, max = 1, step = .1,
						isPercent = true,
						disabled = function(info) 
							if not DB.healthbar["oocoverride"] then return true end
							if not DB.healthbar["enabled"] then return true end
							return false end,
						get = function(info) return (DB.healthbar[info[#info] ]) end,
						set = function(info, value) DB.healthbar[info[#info] ] = (value);JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					mountoverridealpha = {
						type = "range",
						order = 40,
						name = L["Mounted alpha"],
						min = 0, max = 1, step = .1,
						isPercent = true,
						disabled = function(info) 
							if not DB.healthbar["mountoverride"] then return true end
							if not DB.healthbar["enabled"] then return true end
							return false end,
						get = function(info) return (DB.healthbar[info[#info] ]) end,
						set = function(info, value) DB.healthbar[info[#info] ] = (value);JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					deadoverridealpha = {
						type = "range",
						order = 42,
						name = L["Dead alpha"],
						desc = L["RESOURCEBARDEADALPHA_DESC"],
						min = 0, max = 1, step = .1,
						isPercent = true,
						disabled = function(info) 
							if not DB.healthbar["deadoverride"] then return true end
							if not DB.healthbar["enabled"] then return true end
							return false end,
						get = function(info) return (DB.healthbar[info[#info] ]) end,
						set = function(info, value) DB.healthbar[info[#info] ] = (value);JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
				},
			},
			fonts = {
				type = "group",
				order = 18,
				name = L["Fonts"],
				disabled = function(info) return not DB.healthbar["enabled"] end,
				args = {
					healthfont = {
						type = "group",
						order = 26,
						name = L["Resource font"],
						guiInline = true,
						args = {
							healthfontcolor = {
								type = "color",
								order = 2,
								name = L["Color"],
								desc = L["Color of the text showing your current resource."],
								hasAlpha = true,
								get = function(info) return unpack(DB.healthbar[info[#info] ]) end,
								set = function(info, r, g, b, a) DB.healthbar[info[#info] ] = {r, g, b, a};JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
							},
							healthfontoffset = {
								type = "range", 
								order = 4,
								name = L["Resource offset"],
								desc = L["DESC_RESOURCEBARFONTOFFSET"],
								min = -900, softMin = -100, softMax = 100, max = 900, step = 1,
								get = function(info) return (DB.healthbar[info[#info] ]) end,
								set = function(info, size) DB.healthbar[info[#info] ] = (size);JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
							},
							spacer5 = { order = 5, type = "description", name = " ", desc = "", width = "half" },
							font = {
								type = "select", 
								dialogControl = "LSM30_Font",
								order = 6,
								name = L["Font face"],
								values = AceGUIWidgetLSMlists.font,
								get = function(info) return DB.healthbar[info[#info-1] ][1] end,
								set = function(info, font) DB.healthbar[info[#info-1] ][1] = font;JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
							},
							size = {
								type = "range", 
								order = 8,
								name = L["Font size"],
								min = 6, max = 40, step = 1,
								get = function(info) return (DB.healthbar[info[#info-1] ][2]) end,
								set = function(info, size) DB.healthbar[info[#info-1] ][2] = (size);JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
							},
							flags = {
								type = "multiselect", 
								order = 12,
								name = L["Font flags"],
								values = JSHB.Options.fontFlagTable,
								get = function(info, key) return(tContains({strsplit(",", DB.healthbar[info[#info-1] ][3])}, key) and true or false) end,
								set = function(info, keyname, state) JSHB.Options:SetupFontFlags(DB.healthbar[info[#info-1] ], keyname, state);JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
							},
						},
					},
					pethealthfont = {
						type = "group",
						order = 32,
						name = L["Pet's health font"],
						guiInline = true,
						args = {
							pethealthfontoffset = {
								type = "range", 
								order = 2,
								name = L["Health offset"],
								desc = L["DESC_RESOURCEBARFONTOFFSET"],
								min = -900, softMin = -100, softMax = 100, max = 900, step = 1,
								get = function(info) return (DB.healthbar[info[#info] ]) end,
								set = function(info, size) DB.healthbar[info[#info] ] = (size);JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
							},
							font = {
								type = "select", 
								dialogControl = 'LSM30_Font',
								order = 6,
								name = L["Font face"],
								values = AceGUIWidgetLSMlists.font,
								get = function(info) return DB.healthbar[info[#info-1] ][1] end,
								set = function(info, font) DB.healthbar[info[#info-1] ][1] = font;JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
							},
							size = {
								type = "range", 
								order = 8,
								name = L["Font size"],
								min = 6, max = 40, step = 1,
								get = function(info) return (DB.healthbar[info[#info-1] ][2]) end,
								set = function(info, size) DB.healthbar[info[#info-1] ][2] = (size);JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
							},
							flags = {
								type = "multiselect", 
								order = 10,
								name = L["Font flags"],
								values = JSHB.Options.fontFlagTable,
								get = function(info, key) return(tContains({strsplit(",", DB.healthbar[info[#info-1] ][3])}, key) and true or false) end,
								set = function(info, keyname, state) JSHB.Options:SetupFontFlags(DB.healthbar[info[#info-1] ], keyname, state);JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
							},
						},
					},
				},
			},
			backdrop = {
				type = "group",
				order = 22,
				name = L["Backdrop"],
				disabled = function(info) return not DB.healthbar["enabled"] end,
				args = {
					enablebackdrop = {
						type = "toggle",
						order = 1,
						name = L["Enable"],
						width = "double",
						get = function(info) return DB.healthbar[info[#info] ] end,
						set = function(info, value) DB.healthbar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					backdroptexture = {
						type = "select",
						dialogControl = 'LSM30_Background',
						order = 2,
						name = L["Backdrop texture"],
						values = AceGUIWidgetLSMlists.background,
						disabled = function(info) return not DB.healthbar["enablebackdrop"] end,
						get = function(info) return DB.healthbar[info[#info] ] end,
						set = function(info, value) DB.healthbar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					colorbackdrop = {
						type = "toggle",
						order = 3,
						name = L["Color the backdrop"],
						disabled = function(info) return not DB.healthbar["enablebackdrop"] end,
						get = function(info) return DB.healthbar[info[#info] ] end,
						set = function(info, value) DB.healthbar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					backdropcolor = {
						type = "color",
						order = 5,
						name = L["Backdrop color"],
						hasAlpha = true,
						disabled = function(info) return not DB.healthbar["enablebackdrop"] end,
						hidden = function(info) return not DB.healthbar.colorbackdrop end,
						get = function(info) return unpack(DB.healthbar[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.healthbar[info[#info] ] = {r, g, b, a};JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					spacer6 = { order = 6, type = "description", name = " ", desc = "", width = "half", hidden = function(info) return not DB.healthbar.colorbackdrop end },
					tile = {
						type = "toggle",
						order = 7,
						name = L["Tile the backdrop"],
						disabled = function(info) return not DB.healthbar["enablebackdrop"] end,
						get = function(info) return DB.healthbar[info[#info] ] end,
						set = function(info, value) DB.healthbar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					tilesize = {
						type = "range",
						order = 8,
						name = L["Tile size"],
						min = -100, softMin = -30, softMax = 30, max = 100, step = 1,
						disabled = function(info) return not DB.healthbar["enablebackdrop"] end,
						hidden = function(info) return not DB.healthbar.tile end,
						get = function(info) return DB.healthbar[info[#info] ] end,
						set = function(info, value) DB.healthbar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
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
								disabled = function(info) return not DB.healthbar["enablebackdrop"] end,
								get = function(info) return (DB.healthbar[info[#info-1] ][1]) end,
								set = function(info, offset) DB.healthbar[info[#info-1] ][1] = (offset);JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
							},
							offsetY1 = {
								type = "range", 
								order = 2,
								name = L["Top-left Y"],
								min = -50, softMin = 0, softMax = 10, max = 50, step = 1,
								disabled = function(info) return not DB.healthbar["enablebackdrop"] end,
								get = function(info) return (DB.healthbar[info[#info-1] ][2]) end,
								set = function(info, offset) DB.healthbar[info[#info-1] ][2] = (offset);JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
							},
							spacer6 = { order = 6, type = "description", name = "", desc = "", width = "half"},
							offsetX2 = {
								type = "range", 
								order = 8,
								name = L["Bottom-right X"],
								min = -50, softMin = 0, softMax = 10, max = 50, step = 1,
								disabled = function(info) return not DB.healthbar["enablebackdrop"] end,
								get = function(info) return (DB.healthbar[info[#info-1] ][3]) end,
								set = function(info, offset) DB.healthbar[info[#info-1] ][3] = (offset);JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
							},
							offsetY2 = {
								type = "range", 
								order = 10,
								name = L["Bottom-right Y"],
								min = -50, softMin = -10, softMax = 0, max = 50, step = 1,
								disabled = function(info) return not DB.healthbar["enablebackdrop"] end,
								get = function(info) return (DB.healthbar[info[#info-1] ][4]) end,
								set = function(info, offset) DB.healthbar[info[#info-1] ][4] = (offset);JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
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
				disabled = function(info) return not DB.healthbar["enabled"] end,
				args = {
					enableborder = {
						type = "toggle",
						order = 1,
						name = L["Enable"],
						get = function(info) return DB.healthbar[info[#info] ] end,
						set = function(info, value) DB.healthbar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					bordercolor = {
						type = "color",
						order = 2,
						name = L["Border color"],
						hasAlpha = true,
						disabled = function(info) return not DB.healthbar["enableborder"] end,
						get = function(info) return unpack(DB.healthbar[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.healthbar[info[#info] ] = {r, g, b, a};JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					bordertexture = {
						type = "select",
						dialogControl = 'LSM30_Border',
						order = 3,
						name = L["Border texture"],
						values = AceGUIWidgetLSMlists.border,
						disabled = function(info) return not DB.healthbar["enableborder"] end,
						get = function(info) return DB.healthbar[info[#info] ] end,
						set = function(info, value) DB.healthbar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
					},
					edgesize = {
						type = "range",
						order = 4,
						name = L["Edge size"],
						min = -100, softMin = -16, softMax = 16, max = 100, step = 1,
						disabled = function(info) return not DB.healthbar["enableborder"] end,
						get = function(info) return DB.healthbar[info[#info] ] end,
						set = function(info, value) DB.healthbar[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
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
								disabled = function(info) return not DB.healthbar["enableborder"] end,
								get = function(info) return (DB.healthbar[info[#info-1] ][1]) end,
								set = function(info, offset) DB.healthbar[info[#info-1] ][1] = (offset);JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
							},
							right = {
								type = "range", 
								order = 2,
								name = L["Right"],
								min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
								disabled = function(info) return not DB.healthbar["enableborder"] end,
								get = function(info) return (DB.healthbar[info[#info-1] ][2]) end,
								set = function(info, offset) DB.healthbar[info[#info-1] ][2] = (offset);JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
							},
							top = {
								type = "range", 
								order = 3,
								name = L["Top"],
								min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
								disabled = function(info) return not DB.healthbar["enableborder"] end,
								get = function(info) return (DB.healthbar[info[#info-1] ][3]) end,
								set = function(info, offset) DB.healthbar[info[#info-1] ][3] = (offset);JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
							},
							bottom = {
								type = "range", 
								order = 4,
								name = L["Bottom"],
								min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
								disabled = function(info) return not DB.healthbar["enableborder"] end,
								get = function(info) return (DB.healthbar[info[#info-1] ][4]) end,
								set = function(info, offset) DB.healthbar[info[#info-1] ][4] = (offset);JSHB.Options:LockDown(JSHB.SetupHealthBarModule) end,
							},										
						},
					},
				},
			},
		},
	}
end
