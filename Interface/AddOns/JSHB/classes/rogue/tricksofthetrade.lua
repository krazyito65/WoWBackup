--
-- JSHB Rogue - tricks of the trade announce module
--

if (select(2, UnitClass("player")) ~= "ROGUE") then return end

function JSHB.SetupTricksOfTheTradeModule()

	-- Deconstruction
	if JSHB.F.TricksOfTheTrade then
		JSHB.F.TricksOfTheTrade:Hide()
		JSHB.F.TricksOfTheTrade:SetScript("OnEvent", nil)
		JSHB.F.TricksOfTheTrade:UnregisterAllEvents() 
		JSHB.F.TricksOfTheTrade:SetParent(nil)
	end

	-- Construction
	if not JSHB.db.profile.tricksofthetradeannounce.enable then return end
	
	JSHB.F.TricksOfTheTrade = JSHB.F.TricksOfTheTrade or CreateFrame("Frame", "JSHB_TRICKSANNOUNCE", UIParent)
	JSHB.F.TricksOfTheTrade:SetParent(UIParent)
	JSHB.F.TricksOfTheTrade:SetScript("OnEvent",
		function(self, event, ...)
			if (event == "UNIT_SPELLCAST_SENT") then
				self._unitID, self._spell, self._, self._target = ...
				if (self._unitID == "player") and (self._spell == select(1, GetSpellInfo(57934))) then
					self._TargetForMD = self._target
				end
			elseif (event == "COMBAT_LOG_EVENT_UNFILTERED") then
				self._, self._subEvent, self._, self._sourceGUID, self._, self._, self._, self._, self._destName, self._, self._, self._spellId, self._spellName, self._, self._extraSpellID  = ...
				if (self._subEvent == "SPELL_CAST_SUCCESS") and (self._spellId == 57934) and (self._sourceGUID == UnitGUID("player")) then
					self._TargetForMD = self._destName
					if (JSHB.GetChatChan(JSHB.db.profile.tricksofthetradeannounce[strlower(JSHB.GetGroupType() ).."chan"]) ~= "NONE") then
						SendChatMessage("|cff71d5ff|Hspell:" .. self._spellId .. "|h[" .. self._spellName .. "]|h|r "
							.. JSHB.L["cast on"] .. " " .. self._destName ..".", JSHB.GetChatChan(JSHB.db.profile.tricksofthetradeannounce[strlower(JSHB.GetGroupType() ).."chan"]), nil, GetUnitName("player"))					
					end
				end
				if JSHB.db.profile.tricksofthetradeannounce.enablemdmountwarn then
					if (self._subEvent == "SPELL_CAST_FAILED") and (self._spellId == 57934) and (self._sourceGUID == UnitGUID("player")) then
						-- Be sure we are not trying to send a tell to a pet or player name not in party/raid!
						if self._TargetForMD and UnitIsPlayer(self._TargetForMD) and (UnitInParty(self._TargetForMD) or UnitInRaid(self._TargetForMD)) then
							-- Need to be sure it's whispering cause the target was mounted and not cause spell was on cooldown.
							if (self._extraSpellID == SPELL_FAILED_NOT_ON_MOUNTED) or (self._extraSpellID == SPELL_FAILED_NOT_ON_SHAPESHIFT) then
								SendChatMessage("|cff71d5ff|Hspell:" .. self._spellId .. "|h[" .. self._spellName .. "]|h|r "
									.. JSHB.L["can not be cast on you when mounted!"], "WHISPER", nil, self._TargetForMD)
							end
						end
					end
				end
			end
		end)
	JSHB.F.TricksOfTheTrade:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	JSHB.F.TricksOfTheTrade:RegisterEvent("UNIT_SPELLCAST_SENT")
	JSHB.F.TricksOfTheTrade:Show()
end

--
-- JSHB - tricks of the trade click to cast
--

JSHB.updateDelay	= 1.0
JSHB.macroStr = "/cast [@mouseover,exists,nodead,nounithasvehicleui,novehicleui] " .. select(1, GetSpellInfo(57934) ) -- Tricks of the Trade

-- Define locals for Config and Locale references
function JSHB.CanUseTricksOfTheTrade()
	-- Check they are the proper level to use Tricks
	if (UnitLevel("player") < 78) then return false end
	-- Check if they can use the spell, maybe they have not trained it...
	local usable, _ = IsUsableSpell(57934); -- Tricks of the trade
	if (not usable) then
		if (select(1, GetSpellCooldown(57934) ) == 0) then  -- If Tricks is up and addon is reconfigured, this prevents a false negative when they actually have the spell.
			return false
		end
	end
	-- Conditions met, we're good to go!
	return true
end

function JSHB.SetupTricksOfTheTradeClickToCast()

	if InCombatLockdown() then
		JSHB:UnregisterEvent("PLAYER_REGEN_ENABLED") -- Be sure we don't register this event more than one time, ever!
		JSHB:RegisterEvent("PLAYER_REGEN_ENABLED")
		JSHB.delayedUpdate = true	
		return
	else
		JSHB.delayedUpdate = nil
	end

	if (not JSHB.CanUseTricksOfTheTrade() ) then return end -- Check they are proper level and have learned the spell, no point doing anything if they can't!
	
	-- Deconstruction
	JSHB:UnregisterEvent("PLAYER_REGEN_ENABLED")
	
	if JSHB.misdirectedFrames then
		for key,val in pairs(JSHB.misdirectedFrames) do
			if _G[key] and (_G[key]:GetAttribute("macrotext") == JSHB.macroStr) then
				_G[key]:SetAttribute("type2", nil)
				_G[key]:SetAttribute("macrotext", nil)
			end
		end
	end
	
	JSHB.misdirectedFrames = nil
		
	if JSHB.F.TricksOfTheTradeClick then
		JSHB.F.TricksOfTheTradeClick:Hide()
		JSHB.F.TricksOfTheTradeClick:UnregisterAllEvents()
		JSHB.F.TricksOfTheTradeClick:SetScript("OnUpdate", nil)
		JSHB.F.TricksOfTheTradeClick:SetParent(nil)
	end
		
	if JSHB.F.TricksOfTheTradeClick then -- This causes major stacking errors if we don't unregister first!
		JSHB.F.TricksOfTheTradeClick:UnregisterAllEvents()
		JSHB.F.TricksOfTheTradeClick:SetScript("OnUpdate", nil)
	end
	
	if not JSHB.db.profile.tricksofthetradeannounce.clickenable then return end
	
	-- Construction
	local mdFrames = {}
	if JSHB.db.profile.tricksofthetradeannounce.fTARGET then mdFrames[#mdFrames+1] = "target" end
	if JSHB.db.profile.tricksofthetradeannounce.fFOCUS then mdFrames[#mdFrames+1] = "focus" end
	if JSHB.db.profile.tricksofthetradeannounce.fTOT then mdFrames[#mdFrames+1] = "targettarget" end
	
	for i=1,40 do
		if i <= 4 then 
			if JSHB.db.profile.tricksofthetradeannounce.fPARTY then mdFrames[#mdFrames+1] = "party"..i end
			if JSHB.db.profile.tricksofthetradeannounce.fPARTYPETS then mdFrames[#mdFrames+1] = "partypet"..i end
		end
		if i <= 40 then
			if JSHB.db.profile.tricksofthetradeannounce.fRAID then mdFrames[#mdFrames+1] = "raid"..i end
			if JSHB.db.profile.tricksofthetradeannounce.fRAIDPET then mdFrames[#mdFrames+1] = "raidpet"..i end
		end
	end

	if (#mdFrames == 0) then
		mdFrames = {}
		return
	end

	-- This is a fix for Grid, add's a delay to when an update is triggered
	JSHB.F.TricksOfTheTradeClick = JSHB.F.TricksOfTheTradeClick or CreateFrame("Frame", "JSHB_TRICKSCLICK", UIParent) -- Handler frame, nothing more.
	JSHB.F.TricksOfTheTradeClick.updateTimer = 0
	JSHB.F.TricksOfTheTradeClick.needUpdate = nil
	JSHB.F.TricksOfTheTradeClick:SetScript("OnUpdate",
		function(self, elapsed)
			self.updateTimer = self.updateTimer + elapsed
			
			if (self.updateTimer < JSHB.updateDelay) then
				return
			else
				self.updateTimer = 0
			end
		
			if JSHB.F.TricksOfTheTradeClick.needUpdate == nil then return end
		
			JSHB.SetupTricksOfTheTradeClickToCast()
			if (JSHB.F.TricksOfTheTradeClick and JSHB.F.TricksOfTheTradeClick.needUpdate) then 
				JSHB.F.TricksOfTheTradeClick.needUpdate = nil
			end
		end)
	
	JSHB.misdirectedFrames = {}
	local frame = EnumerateFrames()

--[[
-- AUTHOR NOTE TO OTHER AUTHORS: If you add "<frame>.jsmd_unit" variable to a frame that should be clickable for Trick of the Trade by a Rogues,
-- this will make JSHB easily pickup your frames with no guess work...
--]]

	while frame do
		if (frame:GetName() ) then
			if (frame.jsmd_unit) and tContains(mdFrames, frame.jsmd_unit) then
				JSHB.misdirectedFrames[frame:GetName()] = frame:GetName()
				_G[frame:GetName()]:SetAttribute("type2", "macro")
				_G[frame:GetName()]:SetAttribute("macrotext", JSHB.macroStr)
			-- TukUI
			elseif (strsub(frame:GetName(),1,5) == "Tukui") and (frame.unit) and (tContains(mdFrames, frame.unit) ) then
				JSHB.misdirectedFrames[frame:GetName()] = frame:GetName()
				_G[frame:GetName()]:SetAttribute("type2", "macro")
				_G[frame:GetName()]:SetAttribute("macrotext", JSHB.macroStr)
			-- ElvUI
			elseif (strsub(frame:GetName(),1,5) == "ElvUF") and (frame.unit) and (tContains(mdFrames, frame.unit) ) then
				JSHB.misdirectedFrames[frame:GetName()] = frame:GetName()
				_G[frame:GetName()]:SetAttribute("type2", "macro")
				_G[frame:GetName()]:SetAttribute("macrotext", JSHB.macroStr)
			-- Perl Classic
			elseif (not (strsub(frame:GetName(),1,5) == "ElvUF") ) and (frame:GetAttribute("unit") and tContains(mdFrames, frame:GetAttribute("unit") ) ) then
				JSHB.misdirectedFrames[frame:GetName()] = frame:GetName()
				_G[frame:GetName()]:SetAttribute("type2", "macro")
				_G[frame:GetName()]:SetAttribute("macrotext", JSHB.macroStr)
			-- Normal frames
			elseif (frame.unit and (frame.menu or (strsub(frame:GetName(),1,4) == "Grid") ) and tContains(mdFrames, frame.unit) ) then
				JSHB.misdirectedFrames[frame:GetName()] = frame:GetName()
				_G[frame:GetName()]:SetAttribute("type2", "macro")
				_G[frame:GetName()]:SetAttribute("macrotext", JSHB.macroStr)
			-- XPerl - it does not use standard setup for frames so we have to do this the hard way
			elseif (frame.partyid and (frame.menu or (strsub(frame:GetName(),1,5) == "XPerl") ) and tContains(mdFrames, frame.partyid) ) then
				JSHB.misdirectedFrames[frame:GetName()] = frame:GetName()
				_G[frame:GetName()]:SetAttribute("type2", "macro")
				_G[frame:GetName()]:SetAttribute("macrotext", JSHB.macroStr)
				
				if _G[frame:GetName().."nameFrame"] then -- Need to add MD to the name frame too.  GG Non-standard frame stuff
					JSHB.misdirectedFrames[frame:GetName().."nameFrame"] = frame:GetName().."nameFrame"
					_G[frame:GetName().."nameFrame"]:SetAttribute("type2", "macro")
					_G[frame:GetName().."nameFrame"]:SetAttribute("macrotext", JSHB.macroStr)				
				end
			end
		end
		frame = EnumerateFrames(frame)
	end
	
	JSHB.F.TricksOfTheTradeClick:SetScript("OnEvent",
		function(self, event, ...)
			local _, subEvent, _, sourceGUID, sourceName, _, _, _, destName, _, _, spellId, spellName, _, extraSpellID  = ...	
				JSHB.F.TricksOfTheTradeClick.needUpdate = 1
		end)
	
	-- Grid fix
	if Grid and Grid:GetModule("GridFrame") and JSHB.F.TricksOfTheTradeClick then
		JSHB.F.TricksOfTheTradeClick.updateTimer = 0
		JSHB.F.TricksOfTheTradeClick.needUpdate = 1
	end

	JSHB.F.TricksOfTheTradeClick:RegisterEvent("GROUP_ROSTER_UPDATE")
	JSHB.F.TricksOfTheTradeClick:RegisterEvent("PARTY_CONVERTED_TO_RAID")
	JSHB.F.TricksOfTheTradeClick:RegisterEvent("PARTY_MEMBERS_CHANGED")
	JSHB.F.TricksOfTheTradeClick:RegisterEvent("RAID_ROSTER_UPDATE")
	JSHB.F.TricksOfTheTradeClick:RegisterEvent("PLAYER_LEVEL_UP")
	JSHB.F.TricksOfTheTradeClick:RegisterEvent("SKILL_LINES_CHANGED")
	JSHB.F.TricksOfTheTradeClick:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	JSHB.F.TricksOfTheTradeClick:RegisterEvent("UNIT_SPELLCAST_SENT")
end

function JSHB:PLAYER_REGEN_ENABLED()
	if JSHB.delayedUpdate then
		JSHB.SetupTricksOfTheTradeClickToCast()
		JSHB:UnregisterEvent("PLAYER_REGEN_ENABLED")
	end
end