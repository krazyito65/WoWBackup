local ADDON_NAME = "RiggsBar";
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME, true);
local RBOpt = L.core.options
local RBApp = L.core.options.appear
local RBTog = L.core.options.toggles

RB_Options = {
	name = RBOpt.name,
	desc = RBOpt.desc,
	type = "group",
	args = {
		appearance = {
			name = RBApp.name,
			type = "group",
			inline = true,
			order = 1,
			args = {
				Width = { 
					name = RBApp.width,
					desc = RBApp.widthdesc,
					type = "range",
					max = 1000,
					min = 100,
					step = 1,
					set = function(i,v) RB:SetRBWidth(v) end,
					get = function(i) return RB:GetRBWidth() end,
					order = 2,
				},
				Height = { 
					name = RBApp.height,
					desc = RBApp.heightdesc,
					type = "range",
					max = 50,
					min = 1,
					step = 1,
					set = function(i,v) RB:SetRBHeight(v) end,
					get = function(i) return RB:GetRBHeight() end,
					order = 2,
				},
				FontSize = { 
					name = RBApp.fsize,
					desc = RBApp.fsizedesc,
					type = "range",
					max = 24,
					min = 6,
					step = 1,
					set = function(i,v) RB:SetRBFontSize(v) end,
					get = function(i) return RB:GetRBFontSize(v) end,
					order = 3,
				},
				IconSize = { 
					name = RBApp.isize,
					desc = RBApp.isizedesc,
					type = "range",
					max = 46,
					min = 1,
					step = 1,
					set = function(i,v) RB:SetRBIconSize(v) end,
					get = function(i) return RB:GetRBIconSize() end,
					order = 4,
				},
				Short = { 
					name = RBApp.short,
					desc = RBApp.shortdesc,
					type = "toggle",
					tristate = false,
					set = function(i,v) RB:SetShort() end,
					get = function(i) return RiggsBarSV.global.FontSettings.Short end,
					order = 1,
				},
				Lock = { 
					name = RBApp.lock,
					desc = RBApp.lockdesc,
					type = "toggle",
					tristate = false,
					set = function(i,v) RB:SetLock() end,
					get = function(i) return RiggsBarSV.global.FrameSettings.Lock end,
					order = 1,
				},
				Texture = {
					name = RBApp.texture,
					desc = RBApp.texturedesc,
					type = "select",
					dialogControl = 'LSM30_Statusbar',
					order = 5,
					values = AceGUIWidgetLSMlists.statusbar,
					set = function(i,v) RB:SetBGTexture(v) end,
					get = function(i) return RB:GetBGTexture() end,
				},
				FontFace = {
					name = RBApp.fface,
					desc = RBApp.ffacedesc,					
					type = "select",
					dialogControl = 'LSM30_Font',
					order = 5,
					values = AceGUIWidgetLSMlists.font,
					set = function(i,v) RB:SetFontFace(v) end,
					get = function() return RB:GetFontFace() end,
				},
				Color = {
					name = RBApp.color,
					desc = RBApp.colordesc,					
					type = "color",
					order = 9,
					hasAlpha = true,
					set = function(i, r, g, b, a) RB:SetBGColor(r, g, b, a) end,					
					get = function(i) return RB:GetBGColor() end,
				},
				FontColor = {
					name = RBApp.fcolor,
					type = "color",
					order = 10,
					hasAlpha = false,
					set = function(i, r, g, b) RB:SetFontColor(r, g, b) end,					
					get = function(i) return RB:GetFontColor() end,
				},
			},
		},
		toggle = {
			name = RBTog.name,
			type = "group",
			inline = true,
			hidden = true,
			order = 2,
			args = {
				BS = { 
					name = RBTog.bs,
					type = "toggle",
					disabled = false,
					tristate = false,
					set = function(i,v) end,
					get = function(i) end,
					order = 1,
				},				
				AMS = { 
					name = RBTog.ams,
					type = "toggle",
					disabled = false,
					tristate = false,
					set = function(i,v) end,
					get = function(i) end,
					order = 2,
				},				
				SBA = { 
					name = RBTog.sba,
					type = "toggle",
					disabled = false,
					tristate = false,
					set = function(i,v) end,
					get = function(i) end,
					order = 3,
				},	
				GD = { 
					name = RBTog.guard,
					type = "toggle",
					disabled = false,
					tristate = false,
					set = function(i,v) end,
					get = function(i) end,
					order = 4,
				},
				GDS = { 
					name = RBTog.guards,
					desc = RBTog.guardsdesc,
					type = "toggle",
					disabled = false,
					tristate = false,
					set = function(i,v) end,
					get = function(i) end,
					order = 5,
				},	
				PWS = { 
					name = RBTog.pws,
					type = "toggle",
					disabled = false,
					tristate = false,
					set = function(i,v) end,
					get = function(i) end,
					order = 6,
				},
				SS = { 
					name = RBTog.ss,
					type = "toggle",
					disabled = false,
					tristate = false,
					set = function(i,v) end,
					get = function(i) end,
					order = 7,
				},
				DA = { 
					name = RBTog.da,
					type = "toggle",
					disabled = false,
					tristate = false,
					set = function(i,v) end,
					get = function(i) end,
					order = 8,
				},
				IH = { 
					name = RBTog.ih,
					type = "toggle",
					disabled = false,
					tristate = false,
					set = function(i,v) end,
					get = function(i) end,
					order = 9,
				},				
			},
		},	
	},
};

RB_Defaults = {
	global = {
		FrameSettings = {
			Width = 300,			
			Height = 15,	
			IconSize = 15,
			Lock = false,
			Background = {
				Texture = "Interface\\TargetingFrame\\UI-StatusBar",
				Color = {r = 0.5, g = 0.5, b = 0.5, a = .9,},
			},
		},
		FontSettings = {
			Face = "Fonts\\FRIZQT__.TTF",	
			Color = {r = 1, g = 1, b = 1},
			Size = 12,
			Short = true,
		},
		EnableSettings = {
			Guard = true,
			GuardStatue = true,
			PWS = true,
			SS = true,
			DA = true,
			BS = true,
			IH = true,
			AMS = true,
			SBar = true,
			Total = true,
		},
		WatchedIDs = {
		   77535,	-- Blood Shield
		   48707,	-- Anti-Magic Shell
		   112048,	-- Shield Barrier		   
		   115295, 	-- Guard
		   118604, 	-- Guard from Statue
		   17,		-- Power Word: Shield
		   114908,	-- Spirit Shell
		   47753,	-- Divine Aegis
		   86273,	-- Illuminated Healing
		},
	},
};

