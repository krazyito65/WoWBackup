--
-- JSHB Druid - dispel module
--

if (select(2, UnitClass("player")) ~= "DRUID") then return end

local dispelTexture = "Interface\\Icons\\Ability_Hunter_BeastSoothe" -- Soothe
local DISPEL_UPDATEINTERVAL = 0.1

function JSHB.SetupDispelModule(lockName)
	-- Deconstruction
	if JSHB.F.DispelAlert then
		if (not lockName) or (lockName == "MOVER_DISPELALERT") then
			JSHB.F.DispelAlert:Hide()
			JSHB.F.DispelAlert:SetScript("OnUpdate", nil)
			JSHB.F.DispelAlert:SetScript("OnEvent", nil)
			JSHB.F.DispelAlert:UnregisterAllEvents()
			JSHB.DeregisterMovableFrame("MOVER_DISPELALERT")
			JSHB.F.DispelAlert:SetParent(nil)
		end
	end
	
	if JSHB.F.DispelAlertRemovables then
		if (not lockName) or (lockName == "MOVER_DISPELREMOVABLES") then
			JSHB.F.DispelAlertRemovables:Hide()
			JSHB.DeregisterMovableFrame("MOVER_DISPELREMOVABLES")
			JSHB.F.DispelAlertRemovables:SetParent(nil)
		end
	end
	
	if not JSHB.db.profile.dispel.enabled then return end
	
	-- Construction
	if ( (not lockName) or (lockName == "MOVER_DISPELALERT") ) then
		-- Create the Frame
		JSHB.F.DispelAlert = JSHB.MakeFrame(JSHB.F.DispelAlert, "Frame", "JSHB_DISPELALERT", JSHB.db.profile.dispel.anchor[2] or UIParent)
		JSHB.F.DispelAlert:SetParent(JSHB.db.profile.dispel.anchor[2] or UIParent)
		JSHB.F.DispelAlert:ClearAllPoints()
		JSHB.F.DispelAlert:SetSize(JSHB.db.profile.dispel.iconsize, JSHB.db.profile.dispel.iconsize)
		JSHB.F.DispelAlert:SetPoint(JSHB.GetActiveAnchor(JSHB.db.profile.dispel.anchor) )
		JSHB.F.DispelAlert.Icon = JSHB.F.DispelAlert.Icon or JSHB.F.DispelAlert:CreateTexture(nil, "BACKGROUND")
		JSHB.F.DispelAlert.Icon:ClearAllPoints()
		JSHB.F.DispelAlert.Icon:SetTexture(dispelTexture)
		if JSHB.db.profile.dispel.enabletexcoords then
			JSHB.F.DispelAlert.Icon:SetTexCoord(unpack(JSHB.db.profile.dispel.texcoords) )
		else
			JSHB.F.DispelAlert.Icon:SetTexCoord(0, 1, 0, 1)
		end
		JSHB.F.DispelAlert.Icon:SetAllPoints(JSHB.F.DispelAlert)
		-- Add sparkle to make it more noticable
		JSHB.F.DispelAlert.shine = JSHB.F.DispelAlert.shine or CreateFrame("Frame", "AutocastShine_DISPELALERT", UIParent, "AutoCastShineTemplate")
		JSHB.F.DispelAlert.shine:SetParent(UIParent)
		JSHB.F.DispelAlert.shine:ClearAllPoints()
		JSHB.F.DispelAlert.shine:Show()
		JSHB.F.DispelAlert.shine:SetSize(JSHB.db.profile.dispel.iconsize+2, JSHB.db.profile.dispel.iconsize+2)
		JSHB.F.DispelAlert.shine:SetPoint("CENTER", JSHB.F.DispelAlert, "CENTER", 1, 0)	
		JSHB.F.DispelAlert.shine:SetAlpha(1)
		-- Create the Background and border if the user wants one
		JSHB.F.DispelAlert.background = JSHB.MakeBackground(JSHB.F.DispelAlert, JSHB.db.profile.dispel, nil, nil, JSHB.F.DispelAlert.background)
		JSHB.F.DispelAlert:SetAlpha(0)
		JSHB.F.DispelAlert:Show()
		JSHB.RegisterMovableFrame(
			"MOVER_DISPELALERT",
			JSHB.F.DispelAlert,
			JSHB.F.DispelAlert,
			JSHB.L["Dispel Alert"],
			JSHB.db.profile.dispel,
			JSHB.SetupDispelModule,
			JSHB.defaults.profile.dispel,
			JSHB.db.profile.dispel
		)
		JSHB.F.DispelAlert.updateTimer = 0
		JSHB.F.DispelAlert:SetScript("OnUpdate",
			function(self, elapsed)
				self.updateTimer = self.updateTimer + elapsed
				if self.updateTimer <= DISPEL_UPDATEINTERVAL then
					return
				else
					self.updateTimer = 0
				end
				if (not JSHB.moversLocked) then
					return
				end
				if (not UnitExists("target") ) or (not (UnitReaction("player", "target") ) ) or (UnitExists("target") and (UnitReaction("player", "target") > 4) ) or UnitIsDeadOrGhost("player") then
					AutoCastShine_AutoCastStop(self.shine)
					self:SetAlpha(0)
					self.amShowing = nil
					return
				else
				
					for i=1,40 do			
						self._, self._, self._, self._, self._debuffType, self._, self._, self._, self._isStealable, self._, self._spellId  = UnitBuff("target", i)
						if (self._debuffType == "") and (self._debuffType ~= nil) then -- Enrages have type of an empty string.
							if not self.amShowing then
								AutoCastShine_AutoCastStart(JSHB.F.DispelAlert.shine, 1, .5, .5)
								self:SetAlpha(1)
								if JSHB.db.profile.dispel.enablesound then
									PlaySoundFile(JSHB.GetActiveSoundFile(JSHB.db.profile.dispel.sound), JSHB.db.profile.masteraudio and "Master" or nil)
								end
								self.amShowing = true
								return
							else
								return
							end
						end
					end
				end
				AutoCastShine_AutoCastStop(self.shine)
				self:SetAlpha(0)
				self.amShowing = nil
			end)
	end

	if ( (not lockName) or (lockName == "MOVER_DISPELREMOVABLES") ) then
		-- Notification setup
		if (JSHB.db.profile.dispel.removednotify == true) then
			JSHB.F.DispelAlert:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
			JSHB.F.DispelAlert:SetScript("OnEvent",
				function(self, event, ...)
					self._, self._subEvent, self._, self._sourceGUID, self._, self._, self._, self._destGUID, self._destName, self._, self._, self._spellID, self._spellName, self._, self._extraSpellID, self._extraSpellName = ...
					if (self._subEvent == "SPELL_DISPEL") and (self._sourceGUID == UnitGUID("player") ) and (self._destGUID ~= UnitGUID("pet") ) then
						if (JSHB.GetChatChan(JSHB.db.profile.dispel[strlower(JSHB.GetGroupType() ).."chan"]) ~= "NONE") then
							SendChatMessage("\124cff71d5ff|Hspell:" .. self._spellID .. "\124h[" .. self._spellName .. "]\124h\124r " .. JSHB.L["removed"] .. " \124cff71d5ff\124Hspell:" .. self._extraSpellID .. "\124h[" .. self._extraSpellName .. "]\124h\124r "
								.. JSHB.L["from"] .. " " .. self._destName .. ".", JSHB.GetChatChan(JSHB.db.profile.dispel[strlower(JSHB.GetGroupType() ).."chan"]), nil, GetUnitName("player") )
						end
					end
				end)
		end
		-- Removables setup
		if not JSHB.db.profile.dispel.enableremovables then 
			return
		end

		JSHB.F.DispelAlertRemovables = JSHB.MakeFrame(JSHB.F.DispelAlertRemovables, "Frame", "JSHB_DISPELALERT_REMOVABLES", JSHB.db.profile.dispel.anchor_removables[2] or UIParent)
		JSHB.F.DispelAlertRemovables:SetParent(JSHB.db.profile.dispel.anchor_removables[2] or UIParent)
		JSHB.F.DispelAlertRemovables:ClearAllPoints()
		JSHB.F.DispelAlertRemovables:SetSize(50,50) -- Temp size, we'll re-set this after we create the buff frames to get proper offsets
		JSHB.F.DispelAlertRemovables:SetPoint(JSHB.GetActiveAnchor(JSHB.db.profile.dispel.anchor_removables) )
		JSHB.F.DispelAlertRemovables.buffFrames = JSHB.F.DispelAlertRemovables.buffFrames or {} -- recycle
		for i=1,40 do
			JSHB.F.DispelAlertRemovables.buffFrames[i] = JSHB.MakeFrame(JSHB.F.DispelAlertRemovables.buffFrames[i], "Frame", nil, JSHB.F.DispelAlertRemovables)
			JSHB.F.DispelAlertRemovables.buffFrames[i]:SetParent(JSHB.F.DispelAlertRemovables)
			JSHB.F.DispelAlertRemovables.buffFrames[i]:ClearAllPoints()
			JSHB.F.DispelAlertRemovables.buffFrames[i]:SetSize(JSHB.db.profile.dispel.iconsizeremovables, JSHB.db.profile.dispel.iconsizeremovables)		
			JSHB.F.DispelAlertRemovables.buffFrames[i]:SetPoint("CENTER", JSHB.F.DispelAlertRemovables, "CENTER") -- Temporary
			JSHB.F.DispelAlertRemovables.buffFrames[i].Icon = JSHB.F.DispelAlertRemovables.buffFrames[i].Icon or JSHB.F.DispelAlertRemovables.buffFrames[i]:CreateTexture(nil, "BACKGROUND")
			JSHB.F.DispelAlertRemovables.buffFrames[i].Icon:ClearAllPoints()
			JSHB.F.DispelAlertRemovables.buffFrames[i].Icon:SetAllPoints(JSHB.F.DispelAlertRemovables.buffFrames[i])
			JSHB.F.DispelAlertRemovables.buffFrames[i].Icon:SetTexture("Interface\Icons\Spell_Nature_Drowsy") -- Temporary
			if JSHB.db.profile.dispel.removablesenabletexcoords then
				JSHB.F.DispelAlert.Icon:SetTexCoord(unpack(JSHB.db.profile.dispel.removablestexcoords) )
			else
				JSHB.F.DispelAlert.Icon:SetTexCoord(0, 1, 0, 1)
			end
			JSHB.F.DispelAlertRemovables.buffFrames[i].background = JSHB.MakeBackground(JSHB.F.DispelAlertRemovables.buffFrames[i], JSHB.db.profile.dispel, "removables", nil, nil, JSHB.F.DispelAlertRemovables.buffFrames[i].background)
			JSHB.F.DispelAlertRemovables.buffFrames[i]:ClearAllPoints() -- Now that we made the backdrop/border we have offsets to use.
			-- Flip expanding left to right or right to left depending on anchor point X
			local xPos = ((JSHB.db.profile.dispel.iconsizeremovables + (JSHB.GetFrameOffset(JSHB.F.DispelAlertRemovables.buffFrames[i], "LEFT", 1) + JSHB.GetFrameOffset(JSHB.F.DispelAlertRemovables.buffFrames[i], "RIGHT", 1) + 2) ) * mod(i-1, 8) )
			local yPos = (JSHB.db.profile.dispel.iconsizeremovables +  (JSHB.GetFrameOffset(JSHB.F.DispelAlertRemovables.buffFrames[i], "TOP", 1) + JSHB.GetFrameOffset(JSHB.F.DispelAlertRemovables.buffFrames[i], "BOTTOM", 1) + 2) ) * floor( (i-1) / 8)
			if JSHB.db.profile.dispel.anchor_removables[4] >= 0 then
				JSHB.F.DispelAlertRemovables.buffFrames[i]:SetPoint("TOPLEFT", JSHB.F.DispelAlertRemovables, "TOPLEFT", xPos, -yPos)
			else
				JSHB.F.DispelAlertRemovables.buffFrames[i]:SetPoint("TOPRIGHT", JSHB.F.DispelAlertRemovables, "TOPRIGHT", -xPos, -yPos)
			end
			JSHB.F.DispelAlertRemovables.buffFrames[i]:SetAlpha(1)
			JSHB.F.DispelAlertRemovables.buffFrames[i]:Hide()
			JSHB.F.DispelAlertRemovables.buffFrames[i].spellID = 0
			if JSHB.db.profile.dispel.removablestips then
				JSHB.F.DispelAlertRemovables.buffFrames[i]:SetScript("OnEnter",
					function(self)
						if (self.spellID == 0) then return end
							for index=1,40 do
								if (select(11, UnitBuff("target", index) ) == self.spellID) then
									GameTooltip:SetOwner(self)
									GameTooltip:SetUnitBuff("target", index)
									GameTooltip:Show()
								return
							end
						end
					end)
				JSHB.F.DispelAlertRemovables.buffFrames[i]:SetScript("OnLeave",
					function(self)
						if self.spellID == 0 then
							return
						end
						GameTooltip:Hide()
					end)
			else
				JSHB.F.DispelAlertRemovables.buffFrames[i]:SetScript("OnEnter", nil)
				JSHB.F.DispelAlertRemovables.buffFrames[i]:SetScript("OnLeave", nil)
			end
		end

		-- Now we can properly set the size of the parent frame for the buff icons because we now have offsets.
		JSHB.F.DispelAlertRemovables:SetSize(		
			( (JSHB.db.profile.dispel.iconsizeremovables + -- WIDTH
				(JSHB.GetFrameOffset(JSHB.F.DispelAlertRemovables.buffFrames[1], "LEFT", 1) + JSHB.GetFrameOffset(JSHB.F.DispelAlertRemovables.buffFrames[1], "RIGHT", 1) + 2) ) * 8) 
				- JSHB.GetFrameOffset(JSHB.F.DispelAlertRemovables.buffFrames[1], "LEFT", 1) - JSHB.GetFrameOffset(JSHB.F.DispelAlertRemovables.buffFrames[1], "RIGHT", 1) - 2,
			( (JSHB.db.profile.dispel.iconsizeremovables + -- HEIGHT
				(JSHB.GetFrameOffset(JSHB.F.DispelAlertRemovables.buffFrames[1], "TOP", 1) + JSHB.GetFrameOffset(JSHB.F.DispelAlertRemovables.buffFrames[1], "BOTTOM", 1) + 2) ) * 5) 
				- JSHB.GetFrameOffset(JSHB.F.DispelAlertRemovables.buffFrames[1], "LEFT", 1) - JSHB.GetFrameOffset(JSHB.F.DispelAlertRemovables.buffFrames[1], "RIGHT", 1) - 2)

		-- Register the mover frame
		JSHB.RegisterMovableFrame(
			"MOVER_DISPELREMOVABLES",
			JSHB.F.DispelAlertRemovables,
			JSHB.F.DispelAlertRemovables,
			JSHB.L["Dispel Alert Removable Buffs"],
			JSHB.db.profile.dispel,
			JSHB.SetupDispelModule,
			JSHB.defaults.profile.dispel,
			JSHB.db.profile.dispel,
			"_removables"
		)

		JSHB.F.DispelAlertRemovables.updateTimer = 0
		JSHB.F.DispelAlertRemovables:SetScript("OnUpdate",
			function(self, elapsed, ...)
				self.updateTimer = self.updateTimer + elapsed		
				if self.updateTimer < DISPEL_UPDATEINTERVAL then
					return
				else
					self.updateTimer = 0
				end
			
				if (not UnitCanAttack("player", "target") ) or (JSHB.db.profile.dispel.removablespvponly and (JSHB.GetGroupType() ~= "ARENA") and (JSHB.GetGroupType() ~= "BATTLEGROUND") ) then
					for i=1,40 do
						JSHB.F.DispelAlertRemovables.buffFrames[i].spellID = 0
						JSHB.F.DispelAlertRemovables.buffFrames[i]:Hide()
					end			
				else
					self._j = 1
					for i=1,40 do			
						self._, self._, self._, self._, self._debuffType, self._, self._, self._, self._isStealable, self._, self._spellId  = UnitBuff("target", i)
						if (self._debuffType == "") then
							JSHB.F.DispelAlertRemovables.buffFrames[self._j].spellID = self._spellId
							JSHB.F.DispelAlertRemovables.buffFrames[self._j].Icon:SetTexture(select(3, GetSpellInfo(self._spellId) ) )
							if JSHB.db.profile.dispel.removablesenabletexcoords then
								JSHB.F.DispelAlert.Icon:SetTexCoord(unpack(JSHB.db.profile.dispel.removablestexcoords) )
							end
							JSHB.F.DispelAlertRemovables.buffFrames[self._j]:Show()
							self._j = self._j + 1
						end
					end			
					for i=self._j,40 do
						JSHB.F.DispelAlertRemovables.buffFrames[i]:Hide()
						JSHB.F.DispelAlertRemovables.buffFrames[i].spellID = 0
					end
				end
			end)
		JSHB.F.DispelAlertRemovables:Show()
	end
end