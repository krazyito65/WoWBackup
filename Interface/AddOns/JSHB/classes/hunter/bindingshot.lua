--
-- JSHB Hunter - aspect of the fox announce module
--

if (select(2, UnitClass("player")) ~= "HUNTER") then return end

function JSHB.SetupBindingShotModule()

	-- Deconstruction
	if JSHB.F.BindingShot then
		JSHB.F.BindingShot:Hide()
		JSHB.F.BindingShot:SetScript("OnEvent", nil)
		JSHB.F.BindingShot:UnregisterAllEvents() 
		JSHB.F.BindingShot:SetParent(nil)
	end
	
	-- Construction	
	if not JSHB.db.profile.bindingshotannounce.enable then return end

	JSHB.F.BindingShot = JSHB.F.BindingShot or CreateFrame("Frame", "JSHB_BINDINGSHOTANNOUNCE", UIParent)
	JSHB.F.BindingShot:SetParent(UIParent)
	JSHB.F.BindingShot:SetScript("OnEvent",
		function(self, event, ...)
			if (event == "COMBAT_LOG_EVENT_UNFILTERED") then
				--1     2               3       4                 5       6       7       8               9       10      11      12             13
				self._, self._subEvent, self._, self._sourceGUID, self._, self._, self._, self._, self._, self._, self._, self._spellId, self._spellName  = ...
				if (self._subEvent == "SPELL_CAST_SUCCESS") and (self._spellId == 109248) and (self._sourceGUID == UnitGUID("player")) then
					if (JSHB.GetChatChan(JSHB.db.profile.bindingshotannounce[strlower(JSHB.GetGroupType() ).."chan"]) ~= "NONE") then
						SendChatMessage("|cff71d5ff|Hspell:" .. self._spellId .. "|h[" .. self._spellName .. "]|h|r " .. JSHB.L["activated."], JSHB.GetChatChan(JSHB.db.profile.bindingshotannounce[strlower(JSHB.GetGroupType() ).."chan"]), nil, GetUnitName("player") )
					end
				end
				if (self._subEvent == "SPELL_AURA_REMOVED") and (self._spellId == 109248) and (self._sourceGUID == UnitGUID("player")) and (self._destGUID == UnitGUID("player")) then
					if JSHB.db.profile.bindingshotannounce.enableoverannounce and (JSHB.GetChatChan(JSHB.db.profile.bindingshotannounce[strlower(JSHB.GetGroupType() ).."chan"]) ~= "NONE") then
						SendChatMessage("|cff71d5ff|Hspell:" .. self._spellId .. "|h[" .. self._spellName .. "]|h|r " .. JSHB.L["finished."], JSHB.GetChatChan(JSHB.db.profile.bindingshotannounce[strlower(JSHB.GetGroupType() ).."chan"]), nil, GetUnitName("player") )
					end
				end
			end
		end)
	JSHB.F.BindingShot:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	JSHB.F.BindingShot:RegisterEvent("UNIT_SPELLCAST_SENT")
	JSHB.F.BindingShot:Show()
end