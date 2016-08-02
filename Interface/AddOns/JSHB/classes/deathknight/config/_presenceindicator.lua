--
-- JSHB Death Knight Options - presence indicator panel
--

if (select(2, UnitClass("player")) ~= "DEATHKNIGHT") then return end

local L = _G.JSHB.L

function JSHB.Options:Panel_PresenceIndicator(ord)
	local DB = _G.JSHB.Options.DB
	return {
		order = ord,
		type = "group",
		name = L["Presence Indicator"],
		childGroups = "tab",
		args = {
			maintab = {
				type = "group",
				order = 1,
				name = L["Presence Indicator"],
				args = {
					presence_enable = {
						type = "toggle",
						order = 2,
						name = L["Enable"],
						width = "double",
						get = function(info) return DB.indicators[info[#info] ] end,
						set = function(info, value) DB.indicators[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
					},
					presence_iconsize = {
						type = "range", 
						order = 3,
						name = L["Size"],
						min = 10, max = 100, step = 1,
						disabled = function(info) return (not DB.indicators.presence_enable) end,
						get = function(info) return (DB.indicators[info[#info] ]) end,
						set = function(info, size) DB.indicators[info[#info] ] = (size);JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
					},
					presence_onlycombat = {
						type = "toggle",
						order = 6,
						name = L["Only show in combat"],
						width = "full",
						disabled = function(info) return (not DB.indicators.presence_enable) end,
						get = function(info) return DB.indicators[info[#info] ] end,
						set = function(info, value) DB.indicators[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
					},
					presence_matchbaralpha = {
						type = "toggle",
						order = 8,
						name = L["Match alpha of resource bar"],
						width = "double",
						disabled = function(info) return (not DB.indicators.presence_enable) end,
						hidden = function(info) return (not DB.resourcebar.enabled) end,
						get = function(info) return DB.indicators[info[#info] ] end,
						set = function(info, value) DB.indicators[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
					},
				},
			},
			presence_backdrop = {
				type = "group",
				order = 30,
				name = L["Backdrop"],
				disabled = function(info) return (not DB.indicators.presence_enable) end,
				args = {
					presence_enablebackdrop = {
						type = "toggle",
						order = 1,
						name = L["Enable"],
						width = "double",
						get = function(info) return DB.indicators[info[#info] ] end,
						set = function(info, value) DB.indicators[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
					},
					presence_backdroptexture = {
						type = "select",
						dialogControl = 'LSM30_Background',
						order = 2,
						name = L["Backdrop texture"],
						values = AceGUIWidgetLSMlists.background,
						disabled = function(info) return not DB.indicators["presence_enablebackdrop"] end,
						get = function(info) return DB.indicators[info[#info] ] end,
						set = function(info, value) DB.indicators[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
					},
					presence_colorbackdrop = {
						type = "toggle",
						order = 3,
						name = L["Color the backdrop"],
						disabled = function(info) return not DB.indicators["presence_enablebackdrop"] end,
						get = function(info) return DB.indicators[info[#info] ] end,
						set = function(info, value) DB.indicators[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
					},
					presence_backdropcolor = {
						type = "color",
						order = 4,
						name = L["Backdrop color"],
						hasAlpha = true,
						disabled = function(info) return not DB.indicators["presence_enablebackdrop"] end,
						hidden = function(info) return not DB.indicators.presence_colorbackdrop end,
						get = function(info) return unpack(DB.indicators[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.indicators[info[#info] ] = {r, g, b, a};JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
					},
					spacer6 = { order = 6, type = "description", name = " ", desc = "", width = "half", hidden = function(info) return not DB.indicators.presence_colorbackdrop end },
					presence_tile = {
						type = "toggle",
						order = 15,
						name = L["Tile the backdrop"],
						disabled = function(info) return not DB.indicators["presence_enablebackdrop"] end,
						get = function(info) return DB.indicators[info[#info] ] end,
						set = function(info, value) DB.indicators[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
					},
					presence_tilesize = {
						type = "range",
						order = 16,
						name = L["Tile size"],
						min = -100, softMin = -30, softMax = 30, max = 100, step = 1,
						disabled = function(info) return not DB.indicators["presence_enablebackdrop"] end,
						hidden = function(info) return not DB.indicators.presence_tile end,
						get = function(info) return DB.indicators[info[#info] ] end,
						set = function(info, value) DB.indicators[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
					},
					spacer1 = { order = 17, type = "description", name = " ", desc = "", width = "full"},
					presence_backdropoffsets = {
						type = "group",
						order = 18,
						name = L["Offsets"],
						guiInline = true,
						args = {
							offsetX1 = {
								type = "range",
								order = 2,
								name = L["Top-left X"],
								min = -50, softMin = -10, softMax = 0, max = 50, step = 1,
								disabled = function(info) return not DB.indicators["presence_enablebackdrop"] end,
								get = function(info) return (DB.indicators[info[#info-1] ][1]) end,
								set = function(info, offset) DB.indicators[info[#info-1] ][1] = (offset);JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
							},
							offsetY1 = {
								type = "range", 
								order = 6,
								name = L["Top-left Y"],
								min = -50, softMin = 0, softMax = 10, max = 50, step = 1,
								disabled = function(info) return not DB.indicators["presence_enablebackdrop"] end,
								get = function(info) return (DB.indicators[info[#info-1] ][2]) end,
								set = function(info, offset) DB.indicators[info[#info-1] ][2] = (offset);JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
							},
							spacer10 = { order = 10, type = "description", name = " ", desc = "", width = "half"},
							offsetX2 = {
								type = "range", 
								order = 13,
								name = L["Bottom-right X"],
								min = -50, softMin = 0, softMax = 10, max = 50, step = 1,
								disabled = function(info) return not DB.indicators["presence_enablebackdrop"] end,
								get = function(info) return (DB.indicators[info[#info-1] ][3]) end,
								set = function(info, offset) DB.indicators[info[#info-1] ][3] = (offset);JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
							},
							offsetY2 = {
								type = "range", 
								order = 24,
								name = L["Bottom-right Y"],
								min = -50, softMin = -10, softMax = 0, max = 50, step = 1,
								disabled = function(info) return not DB.indicators["presence_enablebackdrop"] end,
								get = function(info) return (DB.indicators[info[#info-1] ][4]) end,
								set = function(info, offset) DB.indicators[info[#info-1] ][4] = (offset);JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
							},										
						},
					},
				},
			},
			presence_border = {
				type = "group",
				order = 32,
				name = L["Border"],
				disabled = function(info) return (not DB.indicators.presence_enable) end,
				args = {
					presence_enableborder = {
						type = "toggle",
						order = 1,
						name = L["Enable"],
						get = function(info) return DB.indicators[info[#info] ] end,
						set = function(info, value) DB.indicators[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
					},
					presence_bordercolor = {
						type = "color",
						order = 2,
						name = L["Border color"],
						hasAlpha = true,
						disabled = function(info) return not DB.indicators["presence_enableborder"] end,
						get = function(info) return unpack(DB.indicators[info[#info] ]) end,
						set = function(info, r, g, b, a) DB.indicators[info[#info] ] = {r, g, b, a};JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
					},
					presence_bordertexture = {
						type = "select",
						dialogControl = 'LSM30_Border',
						order = 3,
						name = L["Border texture"],
						values = AceGUIWidgetLSMlists.border,
						disabled = function(info) return not DB.indicators["presence_enableborder"] end,
						get = function(info) return DB.indicators[info[#info] ] end,
						set = function(info, value) DB.indicators[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
					},
					presence_edgesize = {
						type = "range",
						order = 4,
						name = L["Edge size"],
						min = -100, softMin = -16, softMax = 16, max = 100, step = 1,
						disabled = function(info) return not DB.indicators["presence_enableborder"] end,
						get = function(info) return DB.indicators[info[#info] ] end,
						set = function(info, value) DB.indicators[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
					},
					spacer1 = { order = 7, type = "description", name = " ", desc = "", width = "full"},
					presence_backdropinsets = {
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
								disabled = function(info) return not DB.indicators["presence_enableborder"] end,
								get = function(info) return (DB.indicators[info[#info-1] ][1]) end,
								set = function(info, offset) DB.indicators[info[#info-1] ][1] = (offset);JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
							},
							right = {
								type = "range", 
								order = 2,
								name = L["Right"],
								min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
								disabled = function(info) return not DB.indicators["presence_enableborder"] end,
								get = function(info) return (DB.indicators[info[#info-1] ][2]) end,
								set = function(info, offset) DB.indicators[info[#info-1] ][2] = (offset);JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
							},
							spacer10 = { order = 10, type = "description", name = " ", desc = "", width = "half" },
							top = {
								type = "range", 
								order = 23,
								name = L["Top"],
								min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
								disabled = function(info) return not DB.indicators["presence_enableborder"] end,
								get = function(info) return (DB.indicators[info[#info-1] ][3]) end,
								set = function(info, offset) DB.indicators[info[#info-1] ][3] = (offset);JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
							},
							bottom = {
								type = "range", 
								order = 24,
								name = L["Bottom"],
								min = -50, softMin = -16, softMax = 16, max = 50, step = 1,
								disabled = function(info) return not DB.indicators["presence_enableborder"] end,
								get = function(info) return (DB.indicators[info[#info-1] ][4]) end,
								set = function(info, offset) DB.indicators[info[#info-1] ][4] = (offset);JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
							},										
						},
					},
				},
			},
			presence_texcoords = {
				type = "group",
				order = 34,
				name = L["Texture coords"],
				disabled = function(info) return (not DB.indicators.presence_enable) end,
				args = {
					spacer2 = { order = 2, type = "description", name = " ", desc = "", width = "full" },
					presence_enabletexcoords = {
						type = "toggle",
						order = 5,
						name = L["Enable"],
						get = function(info) return DB.indicators[info[#info] ] end,
						set = function(info, value) DB.indicators[info[#info] ] = value;JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
					},
					spacer6 = { order = 6, type = "description", name = " ", desc = "", width = "full" },
					left = {
						type = "range",
						order = 10,
						name = L["Left"],
						min = 0, max = 1, step = .01,
						disabled = function(info) return not DB.indicators.presence_enabletexcoords end,
						get = function(info) return (DB.indicators[info[#info-1] ][1]) end,
						set = function(info, offset) DB.indicators[info[#info-1] ][1] = (offset);JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
					},
					right = {
						type = "range", 
						order = 12,
						name = L["Right"],
						min = 0, max = 1, step = .01,
						disabled = function(info) return not DB.indicators.presence_enabletexcoords end,
						get = function(info) return (DB.indicators[info[#info-1] ][2]) end,
						set = function(info, offset) DB.indicators[info[#info-1] ][2] = (offset);JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
					},
					spacer20 = { order = 20, type = "description", name = " ", desc = "", width = "half" },
					top = {
						type = "range", 
						order = 24,
						name = L["Top"],
						min = 0, max = 1, step = .01,
						disabled = function(info) return not DB.indicators.presence_enabletexcoords end,
						get = function(info) return (DB.indicators[info[#info-1] ][3]) end,
						set = function(info, offset) DB.indicators[info[#info-1] ][3] = (offset);JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
					},
					bottom = {
						type = "range", 
						order = 26,
						name = L["Bottom"],
						min = 0, max = 1, step = .01,
						disabled = function(info) return not DB.indicators.presence_enabletexcoords end,
						get = function(info) return (DB.indicators[info[#info-1] ][4]) end,
						set = function(info, offset) DB.indicators[info[#info-1] ][4] = (offset);JSHB.Options:LockDown(JSHB.SetupPresenceIndicatorModule) end,
					},
				},
			},
		},
	}
end
