--[[-------------------------------------------------------------------------
  Copyright (c) 2013, Codda D. Matl
  All rights reserved.
  I'm looking at you, Ten Ton Hammer.
---------------------------------------------------------------------------]]

---------------------------------------------------------------------------------------------------
--[[ Constants, Variables and Initialization                                                   ]]--
---------------------------------------------------------------------------------------------------
local ADDON_NAME = "RiggsBar"
local breaksalot = 0
-- Ace Madness
local L = LibStub("AceLocale-3.0"):GetLocale(ADDON_NAME, false)
RB = LibStub("AceAddon-3.0"):NewAddon(ADDON_NAME, "AceEvent-3.0", "AceConsole-3.0")
RB.LSM = LibStub:GetLibrary("LibSharedMedia-3.0")
RB.aceConfig = LibStub:GetLibrary("AceConfig-3.0")
RB.aceConfigDialog = LibStub:GetLibrary("AceConfigDialog-3.0")
RB.CBH = LibStub("CallbackHandler-1.0"):New(RB)

-- Get player information for use once the chloroform gets here
local _, rbName,_,rbIcon,_, rbRole = GetSpecializationInfo(GetActiveSpecGroup()) 
local _, rbClass = UnitClass("player") 
			
function RB:OnInitialize()
    if not RiggsBarSV or type(RiggsBarSV) ~= 'table' then RiggsBarSV = {} end -- Quick variable check for corruption
	self.db = LibStub("AceDB-3.0"):New("RiggsBarSV", RB_Defaults, true) -- Load default settings
	if RiggsBarSV == nil then -- Check and Set Saved Variables
		RiggsBarSV = RB_Defaults.global
	end
	print(L.core.load) -- Addon Loaded Chat Spam
    self.aceConfig:RegisterOptionsTable(L.core.name, RB_Options, {"RB", "RiggsBar"}) -- Load Options
	self.aceConfigDialog:AddToBlizOptions(L.core.name) -- Add Options to Blizzard's Interface Menu
	
	RiggsFrame = CreateFrame("FRAME", "RiggsFrame", UIParent) -- Create the main frame of the addon
	local C = self.db.global.FrameSettings.Background.Color
	RiggsStatus = CreateFrame("StatusBar", "RiggsStatus", RiggsFrame)
	RiggsStatus:SetAllPoints(RiggsFrame)
	RiggsStatus:SetStatusBarTexture(RB.LSM:Fetch("statusbar", self.db.global.FrameSettings.Background.Texture))
	RiggsStatus:GetStatusBarTexture():SetHorizTile(false)
	RiggsStatus:SetStatusBarColor(C.r, C.g, C.b, C.a)	
	RiggsFrame:SetFrameStrata("BACKGROUND")
	RiggsFrame:SetMovable(true)
	RiggsFrame:SetClampedToScreen(true)
	RiggsFrame:RegisterForDrag("LeftButton")
	RiggsFrame:SetScript("OnDragStart", RiggsFrame.StartMoving)
	RiggsFrame:SetScript("OnDragStop", RiggsFrame.StopMovingOrSizing)
	RiggsFrame:SetWidth(self.db.global.FrameSettings.Width)
	RiggsFrame:SetHeight(self.db.global.FrameSettings.Height)
	RiggsFrame:SetBackdrop({ 
		  bgFile = self.db.global.FrameSettings.Background.Texture, 
		  edgeFile = "edgeFile", 
		  tile = false, 
		  tileSize = 0, 
		  edgeSize = 32, 
		  insets = { left = 0, right = 0, top = 0, bottom = 0 }
		})
	RiggsFrame:SetBackdropColor(C.r, C.g, C.b, 0)
	RiggsFrame:SetBackdropBorderColor(C.r, C.g, C.b, 0)
	RiggsFrame:SetPoint("CENTER")
	if self.db.global.FrameSettings.Lock == true then
		RiggsFrame:EnableMouse(false)
	else
		RiggsFrame:EnableMouse(true)
	end
end

function RB:OnEnable()
	-- Register events
	-- AceEvents API: AceEvent:RegisterEvent(event[, function [, arg]])
	-- http://www.wowace.com/addons/ace3/pages/api/ace-event-3-0/
	self:RegisterEvent("UNIT_ABSORB_AMOUNT_CHANGED", function() RB:AbsorbUpdate() end)
	self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	self:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED", function() RB:ClassCheck() end)
	self:RegisterEvent("PLAYER_UNGHOST", function() RB:ClassCheck() end)
	self:RegisterEvent("PLAYER_ALIVE", function() RB:ClassCheck() end)
	
	rbTexFrame = CreateFrame("Frame", nil, RiggsFrame) -- Create a base frame for use in a loop later
	rbTex = rbTexFrame:CreateTexture(nil, "OVERLAY") -- Create a base texture frame for use in a loop later
	rbText = rbTexFrame:CreateFontString(nil, "OVERLAY", "GameFontNormal") -- Create a base font string for use in a loop later
	
	if breaksalot == 0 then	-- I don't want to talk about this; without it, there were multiple text frames and it wasn't fun
		breaksalot = 1
		TotalAmount = RiggsStatus:CreateFontString(nil, "OVERLAY")
		TotalAmount:SetFont(RB.LSM:Fetch("font", self.db.global.FontSettings.Face), self.db.global.FontSettings.Size)
		TotalAmount:SetText("0")
		TotalAmount:SetPoint("RIGHT", RiggsFrame, "RIGHT", -2, 0)
		for i = 1, 9 do	-- Create Each Shield Frame; 9 in total
			rbTexFrame[i] = CreateFrame("Frame", "RiggsTexHolders"..i, RiggsStatus)
			rbTex[i] = rbTexFrame[i]:CreateTexture("RiggsTexture"..i, "OVERLAY")
			rbText[i] = rbTexFrame[i]:CreateFontString("RiggsFont"..i, "OVERLAY")
		end 
	end
	RB:ClassCheck()
end

function RB:TextandIcon()	-- Populate the Shield Text and Icons
	local C = self.db.global.FontSettings.Color
	TotalAmount:SetFont(RB.LSM:Fetch("font", self.db.global.FontSettings.Face), self.db.global.FontSettings.Size)
	TotalAmount:SetTextColor(C.r, C.g, C.b)	
	TotalAmount:SetText("0")
	for i,v in ipairs(self.db.global.WatchedIDs) do 
		local name, _, icon = GetSpellInfo(v)
		rbTexFrame[i]:SetSize(self.db.global.FrameSettings.IconSize, self.db.global.FrameSettings.IconSize)
		rbTex[i]:SetAllPoints(rbTexFrame[i])
		rbTex[i]:SetTexture(icon)
		rbTex[i]:SetTexCoord(0.1, 0.9, 0.1, 0.9)
		rbText[i]:SetPoint("LEFT", rbTex[i], "RIGHT", 2, 0)
		rbText[i]:SetFont(RB.LSM:Fetch("font", self.db.global.FontSettings.Face), self.db.global.FontSettings.Size)
		rbText[i]:SetText("0")
		rbText[i]:SetTextColor(C.r, C.g, C.b)		
		if (i == 1) then
			rbTexFrame[i]:SetPoint("LEFT", RiggsStatus, "LEFT", 2, 0)
		else
			rbTexFrame[i]:SetPoint("LEFT", rbText[i-1], "RIGHT", 2, 0)
		end
	end
	for i = 1,9 do
		if i > getn(self.db.global.WatchedIDs) then
			rbTex[i]:SetTexture(nil)
			rbText[i]:SetTextColor(0,0,0,0)
		end
	end
end

local function round(num, idp)
  local mult = 10^(idp or 0)
  return math.floor(num * mult + 0.5) / mult
end

---------------------------------------------------------------------------------------------------
--[[ Gets and Sets for the In-Game Configuration	                                           ]]--
---------------------------------------------------------------------------------------------------
-- Frame Functions --------------------------------------------------------------------------------
	function RB:SetRBWidth(v)	-- Frame Width Set
		RiggsFrame:SetWidth(v)
		self.db.global.FrameSettings.Width = v
	end
	function RB:GetRBWidth()	-- Frame Width Get
		return self.db.global.FrameSettings.Width
	end
	function RB:SetRBHeight(v)	-- Frame Height Set
		RiggsFrame:SetHeight(v)
		self.db.global.FrameSettings.Height = v
	end
	function RB:GetRBHeight()	-- Frame Height Get
		return self.db.global.FrameSettings.Height
	end
	function RB:SetBGTexture(v)	-- Frame Background Texture Set
		self.db.global.FrameSettings.Background.Texture = v
		RiggsStatus:SetStatusBarTexture(RB.LSM:Fetch("statusbar", self.db.global.FrameSettings.Background.Texture))
		RiggsStatus:GetStatusBarTexture():SetHorizTile(false)
		RiggsStatus:GetStatusBarTexture():SetVertTile(false)
	end
	function RB:GetBGTexture()	-- Frame Background Texture Get
		return self.db.global.FrameSettings.Background.Texture	
	end
	function RB:SetBGColor(r, g, b, a)	-- Frame Background Color Set
		RiggsStatus:SetStatusBarColor(r, g, b, a)
		local C = self.db.global.FrameSettings.Background.Color
		C.r = r; C.g = g; C.b = b; C.a = a		
	end
	function RB:GetBGColor(r, g, b, a)	-- Frame Background Color Get
		local C = self.db.global.FrameSettings.Background.Color
		return C.r, C.g, C.b, C.a
	end
-- Text and Icon Functions ------------------------------------------------------------------------
	function RB:SetRBFontSize(v) 	-- Shield Font Size Set
		self.db.global.FontSettings.Size = v
		TotalAmount:SetFont(RB.LSM:Fetch("font", self.db.global.FontSettings.Face), v)
		for i = 1, #self.db.global.WatchedIDs do 
			rbText[i]:SetFont(RB.LSM:Fetch("font", self.db.global.FontSettings.Face), v)
		end
	end
	function RB:GetRBFontSize() 	-- Shield Font Size Get
		return self.db.global.FontSettings.Size
	end
	function RB:SetFontFace(v)		-- Shield Font Face Set
		self.db.global.FontSettings.Face = v
		TotalAmount:SetFont(RB.LSM:Fetch("font", self.db.global.FontSettings.Face), self.db.global.FontSettings.Size)
		for i = 1, #self.db.global.WatchedIDs do 
			rbText[i]:SetFont(RB.LSM:Fetch("font", self.db.global.FontSettings.Face), self.db.global.FontSettings.Size)
		end
	end
	function RB:GetFontFace() 		-- Shield Font Face Get
		return self.db.global.FontSettings.Face
	end
	function RB:SetFontColor(r, g, b) 	-- Shield Font Color Set
		local C = self.db.global.FontSettings.Color
		C.r = r; C.g = g; C.b = b
		TotalAmount:SetTextColor(C.r, C.g, C.b)
		for i = 1, #self.db.global.WatchedIDs do 
			rbText[i]:SetTextColor(C.r, C.g, C.b)
		end
	end
	function RB:GetFontColor(r, g, b) 	-- Shield Font Color Get
		local C = self.db.global.FontSettings.Color
		return C.r, C.g, C.b
	end
	function RB:SetRBIconSize(v) 		-- Shield Icon Size Set
		self.db.global.FrameSettings.IconSize = v
		for i = 1, #self.db.global.WatchedIDs do 
			rbTexFrame[i]:SetSize(self.db.global.FrameSettings.IconSize, self.db.global.FrameSettings.IconSize)
		end
	end
	function RB:GetRBIconSize() 		-- Shield Icon Size Get
		return self.db.global.FrameSettings.IconSize
	end
-- Frame Lock and Short Number Toggles ------------------------------------------------------------
	function RB:SetLock()	-- Toggle Frame Lock
		if self.db.global.FrameSettings.Lock == true then
			self.db.global.FrameSettings.Lock = false
			RiggsFrame:EnableMouse(true)
		else
			self.db.global.FrameSettings.Lock = true
			RiggsFrame:EnableMouse(false)
		end
	end
	function RB:SetShort()	-- Toggle Short Numbers
		if self.db.global.FontSettings.Short == true then
			self.db.global.FontSettings.Short = false
		else
			self.db.global.FontSettings.Short = true
		end
	end

---------------------------------------------------------------------------------------------------
--[[ Here thar be nuts and bolts					                                           ]]--
---------------------------------------------------------------------------------------------------
-- Updates each of the shield text strings --------------------------------------------------------
	function RB:AbsorbUpdate()
		if self.db.global.FontSettings.Short == true then
			local totaShort = round(UnitGetTotalAbsorbs("player") / 1000, 1)
			if UnitGetTotalAbsorbs("player") > 1000 then
				TotalAmount:SetText(totaShort.."k")
			else
				TotalAmount:SetText(UnitGetTotalAbsorbs("player"))	
			end
		else
			TotalAmount:SetText(UnitGetTotalAbsorbs("player"))	
		end	
		for i=1,40 do 
			local spellName,_,_,_,_,_,_,_,_,_,spellID,_,_,_, value2,_ = UnitBuff("player",i)
			for Num,ID in ipairs(self.db.global.WatchedIDs) do 
				if ( spellID == ID and rbText[Num] ) then
					if self.db.global.FontSettings.Short == true then
						local valShort = round(value2 / 1000, 1)
						if value2 > 1000 then
							rbText[Num]:SetText(valShort.."k")
						else
							rbText[Num]:SetText(value2)
						end
					else
						rbText[Num]:SetText(value2)
					end
				end
			end
		end
	end
-- Sets the text strings to 0 upon shield removal -------------------------------------------------
	function RB:COMBAT_LOG_EVENT_UNFILTERED(...)
		local kind, destName, spellID, spellName
		event, timestamp, eventType, hideCaster, 
		srcGUID, srcName, srcFlags, srcRaidFlags,
		destGUID, destName, destFlags, destRaidFlags,
		spellID, param10, param11, param12, param13, param14, 
		param15, param16, param17, param18, param19, param20 = ...
		if ( destName == UnitName("player") and eventType == "SPELL_AURA_REMOVED" ) then
			for Num,ID in ipairs(self.db.global.WatchedIDs) do 
				if ( spellID == ID and rbText[Num] ) then
					rbText[Num]:SetText("0")
				end
			end
		end
	end
-- Checks your class/spec and updates the shield list accordingly ---------------------------------
	function RB:ClassCheck()
		self.db.global.WatchedIDs = RB_Defaults.global.WatchedIDs -- Resets the table to hopefully minimize errors
		for fuckNum = 1, #RB_Defaults.global.WatchedIDs do
			for i,v in ipairs(self.db.global.WatchedIDs) do
				if v == 77535 then tremove(self.db.global.WatchedIDs, i) end
				if v == 48707 then tremove(self.db.global.WatchedIDs, i) end
				if v == 112048 then tremove(self.db.global.WatchedIDs, i) end
				if v == 115295 then tremove(self.db.global.WatchedIDs, i) end
			end	
		end
		local rbToggle = RB_Options.args.toggle.args
		local rbSettings = self.db.global.EnableSettings
		-- Blanket Setting Disable. These are re-enabled when it's found that you're
		-- both the class and have the requires spells learned
		rbToggle.SBA.disabled = true; rbSettings.SBar = false
		rbToggle.BS.disabled = true; rbSettings.BS = false
		rbToggle.AMS.disabled = true; rbSettings.AMS = false
		rbToggle.GD.disabled = true; rbSettings.Guard = false
		if rbClass == "DEATHKNIGHT" then -- Check if the player is a Death Knight
			if IsSpellKnown(77513) then -- Checks if you know Blood Shield
				rbToggle.BS.disabled = false; rbSettings.BS = true
				rbToggle.AMS.disabled = false; rbSettings.AMS = true
				if not tContains(self.db.global.WatchedIDs, 77535) then -- Checks the table for Mastery
					tinsert(self.db.global.WatchedIDs, 1, 77535)		-- and adds it if it's not there
				end
				if not tContains(self.db.global.WatchedIDs, 48707) then	-- Checks the table for AMS and
					tinsert(self.db.global.WatchedIDs, 2, 48707)		-- adds it if it's not there
				end
			elseif IsSpellKnown(48707) then -- Checks if you know Anti-Magic Shell
				rbToggle.BS.disabled = true; rbSettings.BS = false
				rbToggle.AMS.disabled = false; rbSettings.AMS = true
				if not tContains(self.db.global.WatchedIDs, 48707) then	-- Checks the table for AMS and
					tinsert(self.db.global.WatchedIDs, 2, 48707)		-- adds it if it's not there
				end	
				for i,v in ipairs(self.db.global.WatchedIDs) do 		-- Checks if Blood Shield is in
					if v == 77535 then								-- the table and removes it if
						tremove(self.db.global.WatchedIDs, i)			-- it is found
					end
				end	
			end
		elseif rbClass == "MONK" then -- Check if the player is a Monk
			if IsSpellKnown(115295) then -- Checks if you know Guard
				rbToggle.GD.disabled = false; rbSettings.Guard = true
				rbToggle.GDS.disabled = true; rbSettings.GuardStatue = false
				if not tContains(self.db.global.WatchedIDs, 115295) then	-- Checks the table for Guard and
					tinsert(self.db.global.WatchedIDs, 1, 115295)			-- adds it if it's not there
				end
				for i,v in ipairs(self.db.global.WatchedIDs) do				-- Checks the table for Guard from
					if v == 118604 then									-- a statue and removes it if it is
						tremove(self.db.global.WatchedIDs, i)				-- found. Yes, I know that technically
					end													-- Brewmasters could get this from 
				end														-- another Brewmaster. http://i.imgur.com/eGInc.gif
			else -- If you're just some random Monk guy trying to look cool
				rbToggle.GD.disabled = true; rbSettings.Guard = false
				rbToggle.GDS.disabled = false; rbSettings.GuardStatue = true
				if not tContains(self.db.global.WatchedIDs, 118604) then	-- Checks the table for Guard from a 
					tinsert(self.db.global.WatchedIDs, 5, 118604)			-- statue and adds it if not found
				end
				for i,v in ipairs(self.db.global.WatchedIDs) do				-- Checks the table for Guard and 
					if v == 115295 then									-- removes it if it is found
						tremove(self.db.global.WatchedIDs, i)
					end
				end			
			end
		elseif ( rbClass == "WARRIOR" and IsSpellKnown(112048) ) then -- Checks if the player is a Warrior who knows Shield Barrier
			rbToggle.SBA.disabled = false; rbSettings.SBar = true
			if not tContains(self.db.global.WatchedIDs, 112048) then
				tinsert(self.db.global.WatchedIDs, 1, 112048)
			end	
		end
		RB:TextandIcon() -- Re-populate and move shield icons and text strings
	end
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	















