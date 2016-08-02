--
-- JSHB Hunter - misdirection announce module
--

if (select(2, UnitClass("player")) ~= "HUNTER") then return end

function JSHB.SetupMisdirectionModule()

	-- Deconstruction
	if JSHB.F.Misdirection then
		JSHB.F.Misdirection:Hide()
		JSHB.F.Misdirection:SetScript("OnEvent", nil)
		JSHB.F.Misdirection:UnregisterAllEvents() 
		JSHB.F.Misdirection:SetParent(nil)
	end

	-- Construction
	if not JSHB.db.profile.misdirectionannounce.enable then return end
	
	JSHB.F.Misdirection = JSHB.F.Misdirection or CreateFrame("Frame", "JSHB_MDANNOUNCE", UIParent)
	JSHB.F.Misdirection:SetParent(UIParent)
	JSHB.F.Misdirection:SetScript("OnEvent",
		function(self, event, ...)
			if (event == "UNIT_SPELLCAST_SENT") then
				self._unitID, self._spell, self._, self._target = ...
				if (self._unitID == "player") and (self._spell == select(1, GetSpellInfo(34477))) then
					self._TargetForMD = self._target
				end
			elseif (event == "COMBAT_LOG_EVENT_UNFILTERED") then
				self._, self._subEvent, self._, self._sourceGUID, self._, self._, self._, self._, self._destName, self._, self._, self._spellId, self._spellName, self._, self._extraSpellID  = ...
				if (self._subEvent == "SPELL_CAST_SUCCESS") and (self._spellId == 34477) and (self._sourceGUID == UnitGUID("player")) then
					self._TargetForMD = self._destName
					if (JSHB.GetChatChan(JSHB.db.profile.misdirectionannounce[strlower(JSHB.GetGroupType() ).."chan"]) ~= "NONE") then
						SendChatMessage("|cff71d5ff|Hspell:" .. self._spellId .. "|h[" .. self._spellName .. "]|h|r "
							.. JSHB.L["cast on"] .. " " .. self._destName ..".", JSHB.GetChatChan(JSHB.db.profile.misdirectionannounce[strlower(JSHB.GetGroupType() ).."chan"]), nil, GetUnitName("player"))
					end
				end
				if JSHB.db.profile.misdirectionannounce.enablemdmountwarn then
					if (self._subEvent == "SPELL_CAST_FAILED") and (self._spellId == 34477) and (self._sourceGUID == UnitGUID("player")) then
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
	JSHB.F.Misdirection:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	JSHB.F.Misdirection:RegisterEvent("UNIT_SPELLCAST_SENT")
	JSHB.F.Misdirection:Show()
end

--
-- JSHB - misdirection click to cast
--

JSHB.updateDelay	= 1.0
JSHB.macroStr = "/cast [@mouseover,exists,nodead,nounithasvehicleui,novehicleui] " .. select(1, GetSpellInfo(34477) ) -- Misdirection Spell ID

-- Define locals for Config and Locale references
function JSHB.CanUseMisdirection()
	-- Check they are the proper level to use MD	
	if (UnitLevel("player") < 42) then return false end
	-- Check if they can use the spell, maybe they have not trained it...
	local usable, _ = IsUsableSpell(34477); -- Misdirection Spell ID	
	if (not usable) then
		if (select(1, GetSpellCooldown(34477) ) == 0) then  -- If MD is up and addon is reconfigured, this prevents a false negative when they actually have the spell.
			return false
		end
	end
	-- Conditions met, we're good to go!
	return true
end

function JSHB.SetupMisdirectionClickToCast()

	if InCombatLockdown() then
		JSHB:UnregisterEvent("PLAYER_REGEN_ENABLED") -- Be sure we don't register this event more than one time, ever!
		JSHB:RegisterEvent("PLAYER_REGEN_ENABLED")
		JSHB.delayedUpdate = true	
		return
	else
		JSHB.delayedUpdate = nil
	end

	if (not JSHB.CanUseMisdirection()) then return end -- Check they are proper level and have learned the spell, no point doing anything if they can't!
	
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
		
	if JSHB.F.MisdirectionClick then
		JSHB.F.MisdirectionClick:Hide()
		JSHB.F.MisdirectionClick:UnregisterAllEvents()
		JSHB.F.MisdirectionClick:SetScript("OnUpdate", nil)
		JSHB.F.MisdirectionClick:SetParent(nil)
	end
		
	if JSHB.F.MisdirectionClick then -- This causes major stacking errors if we don't unregister first!
		JSHB.F.MisdirectionClick:UnregisterAllEvents()
		JSHB.F.MisdirectionClick:SetScript("OnUpdate", nil)
	end
	
	if not JSHB.db.profile.misdirectionannounce.clickenable then return end
	
	-- Construction
	local mdFrames = {}
	if JSHB.db.profile.misdirectionannounce.fTARGET then mdFrames[#mdFrames+1] = "target" end
	if JSHB.db.profile.misdirectionannounce.fPET then mdFrames[#mdFrames+1] = "pet" end
	if JSHB.db.profile.misdirectionannounce.fFOCUS then mdFrames[#mdFrames+1] = "focus" end
	if JSHB.db.profile.misdirectionannounce.fTOT then mdFrames[#mdFrames+1] = "targettarget" end
	
	for i=1,40 do
		if i <= 4 then 
			if JSHB.db.profile.misdirectionannounce.fPARTY then mdFrames[#mdFrames+1] = "party"..i end
			if JSHB.db.profile.misdirectionannounce.fPARTYPETS then mdFrames[#mdFrames+1] = "partypet"..i end
		end
		if i <= 40 then
			if JSHB.db.profile.misdirectionannounce.fRAID then mdFrames[#mdFrames+1] = "raid"..i end
			if JSHB.db.profile.misdirectionannounce.fRAIDPET then mdFrames[#mdFrames+1] = "raidpet"..i end
		end
	end

	if (#mdFrames == 0) then
		mdFrames = {}
		return
	end

	-- This is a fix for Grid, add's a delay to when an update is triggered
	JSHB.F.MisdirectionClick = JSHB.F.MisdirectionClick or CreateFrame("Frame", "JSHB_MISDIRECTIONCLICK", UIParent) -- Handler frame, nothing more.
	JSHB.F.MisdirectionClick.updateTimer = 0
	JSHB.F.MisdirectionClick.needUpdate = nil
	JSHB.F.MisdirectionClick:SetScript("OnUpdate",
		function(self, elapsed)
			self.updateTimer = self.updateTimer + elapsed
			
			if (self.updateTimer < JSHB.updateDelay) then
				return
			else
				self.updateTimer = 0
			end
		
			if JSHB.F.MisdirectionClick.needUpdate == nil then return end
		
			JSHB.SetupMisdirectionClickToCast()
			if (JSHB.F.MisdirectionClick and JSHB.F.MisdirectionClick.needUpdate) then 
				JSHB.F.MisdirectionClick.needUpdate = nil
			end
		end)
	
	JSHB.misdirectedFrames = {}
	local frame = EnumerateFrames()

--[[
-- AUTHOR NOTE TO OTHER AUTHORS: If you add "<frame>.jsmd_unit" variable to a frame that should be clickable for misdirection by a hunter,
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
	
	JSHB.F.MisdirectionClick:SetScript("OnEvent",
		function(self, event, ...)
			local _, subEvent, _, sourceGUID, sourceName, _, _, _, destName, _, _, spellId, spellName, _, extraSpellID  = ...
			
			if (event == "COMBAT_LOG_EVENT_UNFILTERED") then
				if ( (spellId == 83245) or (spellId == 83244) or (spellId == 83243) or (spellId == 83242) or (spellId == 883) or (spellId == 2641) ) and (sourceGUID == UnitGUID("player") ) then -- Player summoned a pet
					JSHB.F.MisdirectionClick.needUpdate = 1
				end
			else	
				JSHB.F.MisdirectionClick.needUpdate = 1
			end
		end)
	
	-- Grid fix
	if Grid and Grid:GetModule("GridFrame") and JSHB.F.MisdirectionClick then
		JSHB.F.MisdirectionClick.updateTimer = 0
		JSHB.F.MisdirectionClick.needUpdate = 1
	end

	JSHB.F.MisdirectionClick:RegisterEvent("GROUP_ROSTER_UPDATE")
	JSHB.F.MisdirectionClick:RegisterEvent("PARTY_CONVERTED_TO_RAID")
	JSHB.F.MisdirectionClick:RegisterEvent("PARTY_MEMBERS_CHANGED")
	JSHB.F.MisdirectionClick:RegisterEvent("RAID_ROSTER_UPDATE")
	JSHB.F.MisdirectionClick:RegisterEvent("PLAYER_LEVEL_UP")
	JSHB.F.MisdirectionClick:RegisterEvent("SKILL_LINES_CHANGED")
	JSHB.F.MisdirectionClick:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	JSHB.F.MisdirectionClick:RegisterEvent("UNIT_SPELLCAST_SENT")
end

function JSHB:PLAYER_REGEN_ENABLED()
	if JSHB.delayedUpdate then
		JSHB.SetupMisdirectionClickToCast()
		JSHB:UnregisterEvent("PLAYER_REGEN_ENABLED")
	end
end