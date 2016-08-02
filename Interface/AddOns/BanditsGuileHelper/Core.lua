BG = LibStub("AceAddon-3.0"):NewAddon("Bandits Guile Helper", "AceConsole-3.0", "AceEvent-3.0")

local ACD = LibStub("AceConfigDialog-3.0")
local ACR = LibStub("AceConfigRegistry-3.0")
local LDB = LibStub:GetLibrary("LibDataBroker-1.1")
local LSM = LibStub:GetLibrary("LibSharedMedia-3.0")

local db
local bgframe

local options = {
    name = "Bandits Guile Helper",
    handler = BG,
    type = 'group',
    args = {
		General = {
			order = 1,
			type = "group",
			name = "General",
			desc = "General Settings",
			args = {
				intro = {
					order = 1,
					type = "description",
					name = "Version 0.9 - By Indz of Blackmoore-EU",
				},
				general_settings = {
					name = "General Settings",
					type = 'group',
					inline = true,
					order = 7,
					args = {
						Locked = {
							order = 3,
							type = "toggle",
							name = "Locked",
							desc = "Lock/Unlock the frame",
							set = function(info,value)
								db.locked = value
								BG:ClickThrough()
							end,
							get = function(info)
								return db.locked
							end,
						},
						HideOOC = {
							order = 4,
							type = "toggle",
							name = "Hide Out Of Combat",
							desc = "Hide/Show the frame when not in combat",
							set = function(info,value)
								db.hideooc = value
								BG:ShowHide()
							end,
							get = function(info)
								return db.hideooc
							end,
						},
						Scale = {
							order = 5,
							type = "range",
							name = "Scale",
							min = .25, max = 3, step = .01,
							set = function(info,value)
								db.scale = value
							end,
							get = function(info)
								return db.scale
							end,
						},
						Alpha = {
							order = 6,
							type = "range",
							name = "Alpha",
							min = 0, max = 1, step = .01,
							set = function(info,value)
								db.alpha = value
							end,
							get = function(info)
								return db.alpha
							end,
						},
					},
				},
				fonts = {
					name = "Text Appearance",
					type = 'group',
					inline = true,
					order = 7,
					args = {
						explanation = {
							name = "Set the text apprearance.",
							type = 'description',		
							order = 8,
						},
						font_face = {
							order = 9,
							type = "select",
							name = "Font",
							desc = "Font to use.",
							values = LSM:HashTable("font"),
							dialogControl = 'LSM30_Font',
        					set = function(info, value) 
								db.font_face = value
								BG:ResetFonts()
							end,
        					get = function() 
        						return db.font_face
        					end,
						},
						font_size = {
							order = 10,
							name = "Font size",
							desc = "Font size for the bars.",
							type = "range",
							min = 8, max = 72, step = 1,
        					set = function(info, value) 
								db.font_size = value
								BG:ResetFonts()
							end,
							get = function(info) 
								return db.font_size
							end,
						},
					},
				},
			},
		},
	},
}

local defaults = {
  profile = {
  	locked = false,
  	hideooc = false,
    alpha = 1,
    scale = 1,
    frame_x = 0,
    frame_y = 0,
    font_size = 12,
	font_face = "Friz Quadrata TT",
  }
}

-- local variables 
local inCombat = false
local BGState = 0
local BGCount = 0

local bg1name = GetSpellInfo(84745)
local bg2name = GetSpellInfo(84746)
local bg3name = GetSpellInfo(84747)

local function getTimeLeftOnBG3()
	local name, rank, icon, count, dispelType, duration, expires, caster, isStealable, shouldConsolidate, spellID
	local unit = "player"
	local filter = "HELPFUL"

	spellID = select(11, UnitAura(unit, bg3name , nil, filter))
	if spellID == 84747 then
		expires = select(7, UnitAura(unit, bg3name ,nil, filter))
		return (expires-GetTime())
	end

	return 0
end

local function getTimeLeft()
	local name, rank, icon, count, dispelType, duration, expires, caster, isStealable, shouldConsolidate, spellID
	local unit = "player"
	local filter = "HELPFUL"

	spellID = select(11, UnitAura(unit, bg3name , nil, filter))
	if spellID == 84747 then
		expires = select(7, UnitAura(unit, bg3name ,nil, filter))
		return (expires-GetTime())
	end
	spellID = select(11, UnitAura(unit, bg2name , nil, filter))
	if spellID == 84746 then
		expires = select(7, UnitAura(unit, bg2name ,nil, filter))
		return (expires-GetTime())
	end
	spellID = select(11, UnitAura(unit, bg1name , nil, filter))
	if spellID == 84745 then
		expires = select(7, UnitAura(unit, bg1name ,nil, filter))
		return (expires-GetTime())
	end
	return 0
end

local function getActualPoint()
	local stage = BGState -- 0,1,2,3
	local intermediatestage
	if stage ~= 3 then
		intermediatestage = BGCount
		point = (4-intermediatestage)*avg+(2-stage)*4*avg+15
	else
		point = getTimeLeftOnBG3()
	end
	return point
end

function BG:OnInitialize()
	self.db = LibStub("AceDB-3.0"):New("BGDB", defaults, "Default")
	
	db = self.db.profile
	self.db.RegisterCallback(self, "OnProfileChanged", "ProfileUpdate")
	self.db.RegisterCallback(self, "OnProfileCopied", "ProfileUpdate")
	self.db.RegisterCallback(self, "OnProfileReset", "ProfileUpdate")
	
	ACR:RegisterOptionsTable("BG", options)
	options.args.profiles = LibStub("AceDBOptions-3.0"):GetOptionsTable(self.db)
	
	self.InterfaceOptions = ACD:AddToBlizOptions("BG", "Bandit's Guile Helper", nil, "General")

	ACD:AddToBlizOptions("BG", "Profiles", "BG", "profiles")
	LibStub("LibAboutPanel").new("Bandit's Guile Helper", "Bandits Guile Helper")
		
	self:RegisterChatCommand("bgh", "ChatCommand")
end


function BG:OnEnable()
  
	BG:RegisterEvent("UNIT_AURA")
	BG:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	BG:RegisterEvent("PLAYER_REGEN_DISABLED")
	BG:RegisterEvent("PLAYER_REGEN_ENABLED")
	BG:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED", "CheckSpec")
	BG:RegisterEvent("PLAYER_TALENT_UPDATE", "CheckSpec")
	BG:RegisterEvent("PLAYER_ENTERING_WORLD", "CheckSpec")
	
	-- LDB launcher
	if LDB then
		BGDS = LDB:NewDataObject("BG", {
			icon = "Interface\\Icons\\INV_Bijou_Red",
			--label = "BGHelper",
			text = "BGHelper",
			type = "data source",
			OnClick = function(self, button)
				if button == "RightButton" then
					BG:ChatCommand()
				end
				if button == "LeftButton" then
					
				end
			end,
			OnTooltipShow = function(tooltip)
				tooltip:AddLine("Bandit's Guile Helper")
				--tooltip:AddLine("Click to toggle on/off (not working)")
				tooltip:AddLine("Right-click to open the options menu")
			end
		})
	end
	
	bgframe = CreateFrame("Button","BG_Display",UIParent,"BG_Display")
	local f = bgframe
	f:RegisterForDrag("LeftButton")
	f:RegisterForClicks("AnyUp")
	f:SetPoint("CENTER",UIParent,"CENTER",db.frame_x,db.frame_y)
	f:Show()
	f:SetScript("OnDragStart", function(self) if(not db.locked) then self:StartMoving() end end)
	f:SetScript("OnDragStop", function(self)
									self:StopMovingOrSizing() 
									local scale = self:GetEffectiveScale() / UIParent:GetEffectiveScale()
									local x, y = self:GetCenter()
									x, y = x * scale, y * scale
									x = x - GetScreenWidth()/2
									y = y - GetScreenHeight()/2
									x = x / self:GetScale()
									y = y / self:GetScale()
									db.frame_x = x
									db.frame_y = y
								end)
	f:SetScript("OnUpdate", function(self) BG:update(self) end)
	BG:ResetFonts()
	BG:ClickThrough()
end

function BG:OnDisable()
    -- Called when the addon is disabled
end

function BG:ShowHide()
	local f = bgframe
	if not inCombat and db.hideooc and (BGState == 0) then
		f:Hide()
	else
		f:Show()
	end
end


function BG:update(f)
	-- update
	
	f:SetScale(db.scale)
	f:SetAlpha(db.alpha)
	f.count:SetText(BGCount)
	
	timeLeft = getTimeLeft();
	if timeLeft > 0 then
		f.timeleft:SetText(math.max(math.floor(timeLeft),0))
	else
		f.timeleft:SetText('')
	end
	if BGState == 3 then
		f.count:SetText(math.max(math.floor(getActualPoint()),0))
		f.timeleft:SetText('')
	end
	
	if BGState == 1 then
		f.border:SetVertexColor(0.1,1,0.1,db.alpha/4)
	elseif BGState == 2 then
		f.border:SetVertexColor(1,1,0,db.alpha/4)
	elseif BGState == 3 then
		f.border:SetVertexColor(1,0.1,0.1,db.alpha/4)
	else
		f.border:SetVertexColor(0.5,0.5,0.5,db.alpha/4)
	end
	
	BG:ShowHide()
	
end

function BG:UNIT_AURA(eventName, ...)
	local name, rank, icon, count, dispelType, duration, expires, caster, isStealable, shouldConsolidate, spellID
	local unit = "player"
	local filter = "HELPFUL|PLAYER"
	for index=1,40 do
		name, rank, icon, count, dispelType, duration, expires, caster, isStealable, shouldConsolidate, spellID = UnitAura(unit, index, filter)
		if spellID == 84745 then
			if BGState ~= 1 then
				BGState = 1
				BGCount = 0
				bgframe.icon:SetTexture(icon)
			end
			return
		elseif spellID == 84746 then
			if BGState ~= 2 then
				BGState = 2
				BGCount = 0
				bgframe.icon:SetTexture(icon)
			end
			return
		elseif spellID == 84747 then
			if BGState ~= 3 then
				BGState = 3
				BGCount = 0
				bgframe.icon:SetTexture(icon)
			end
			return
		end
	end
	bgframe.icon:SetTexture(nil)
	BGState = 0
end

function BG:COMBAT_LOG_EVENT_UNFILTERED(eventName, ...)
	local source = select(5, ...)
	if source ~= UnitName("player") then
		return
	end
	local event = select(2, ...)
	local spellId = select(12, ...)
	local multistrike = select(25, ...)
	if event == "SPELL_DAMAGE" and (spellId == 1752 and multistrike == false) then
		BGCount = BGCount + 1
	elseif event == "SPELL_AURA_REMOVED" and (spellId == 84747 or spellId == 84746 or spellId == 84745) then
		BGCount = 0
	end
end

function BG:PLAYER_REGEN_DISABLED(eventName, ...)
	inCombat = true
	if BG:isCombatRogue() then
		bgframe:Show()
	end
end

function BG:PLAYER_REGEN_ENABLED(eventName, ...)
	inCombat = false
	--BGState = 0
	--BGCount = 0
	list = {}
	firstSS = nil
	avg = 0
end

function BG:CheckSpec(eventName, ...)
	local f = bgframe
	if not BG:isCombatRogue() then
		f:Hide()
	else
		f:Show()
	end
end

function BG:isCombatRogue()
	class, classFileName = UnitClass("player")
	if classFileName ~= "ROGUE" then
		return false
	end
	local currentSpec = GetSpecialization()
	if currentSpec ~= 2 then
		return false
	end
	return true
end

function BG:ProfileUpdate()
    db = self.db.profile
    bgframe:ClearAllPoints()
	bgframe:SetPoint("CENTER",UIParent,"CENTER",db.frame_x,db.frame_y)
	BG:ResetFonts()
end

function BG:ClickThrough()
	local f = bgframe
	if db.locked then
		f:EnableMouse(false)
	else
		f:EnableMouse(true)
	end
end

function BG:ResetFonts()
	local f = bgframe
	local fontName, fontHeight, fontFlags = f.count:GetFont()
	local ff = LSM:Fetch("font",db.font_face)
	local fh = db.font_size
	f.count:SetFont(ff,fh,fontFlags)
	f.count:SetText(f.count:GetText())
end

function BG:ChatCommand(input)
    if not input or input:trim() == "" then
        InterfaceOptionsFrame_OpenToCategory(self.InterfaceOptions)
    else
        LibStub("AceConfigCmd-3.0").HandleCommand(BG, "bg", "BG", input)
    end
end




