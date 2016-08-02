--
-- JSHB Shaman - totem indicator module
--

if (select(2, UnitClass("player")) ~= "SHAMAN") then return end

local function addTotemTimer(spellID, expireTime)
	if (IsSpellKnown(108284)) then -- Totemic Persistence
		for i=2,5 do
			if (JSHB.F.TotemIndicator.totemFrame[i].active == false) or tContains({ 3599, 8190, 2894 }, spellID) then
			
				-- Fire Totems are unaffected by Totemic Persistence so always assign them to frame 1
				if tContains({ 3599, 8190, 2894 }, spellID) then
					i = 1
				end
			
				JSHB.F.TotemIndicator.totemFrame[i].Icon:ClearAllPoints()
				JSHB.F.TotemIndicator.totemFrame[i].Icon:SetAllPoints(JSHB.F.TotemIndicator.totemFrame[i])
				JSHB.F.TotemIndicator.totemFrame[i].Icon:SetTexture(select(3, GetSpellInfo(spellID) ))

				if JSHB.db.profile.totemindicator.enabletexcoords then
					JSHB.F.TotemIndicator.totemFrame[i].Icon:SetTexCoord(unpack(JSHB.db.profile.totemindicator.texcoords) )
				end

				if JSHB.moversLocked then
					JSHB.F.TotemIndicator.totemFrame[i]:SetAlpha(1)
				end

				JSHB.F.TotemIndicator.totemFrame[i].killtime = GetTime() + expireTime + .2
				JSHB.F.TotemIndicator.totemFrame[i].spellID = spellID
				JSHB.F.TotemIndicator.totemFrame[i].active = true
				
				local timer = JSHB.F.TotemIndicator.totemFrame[i].timer or JSHB.Timer_Create(JSHB.F.TotemIndicator.totemFrame[i])
				timer.start = GetTime()
				timer.duration = expireTime
				timer.enabled = true
				timer.nextUpdate = 0
				timer:Show()
				break
			end
		end
	else	
		if tContains({ 3599, 8190, 2894 }, spellID) then -- Fire Totems
			i = 1
		elseif tContains({ 2062, 2484, 51485, 108270, 8143 }, spellID) then -- Earth Totems
			i = 2
		elseif tContains({ 5394, 108280, 157153 }, spellID) then -- Water Totems
			i = 3
		elseif tContains({ 108269, 8177, 152256, 108273, 98008 }, spellID) then -- Air Totems
			i = 4
		end
		
		JSHB.F.TotemIndicator.totemFrame[i].Icon:ClearAllPoints()
		JSHB.F.TotemIndicator.totemFrame[i].Icon:SetAllPoints(JSHB.F.TotemIndicator.totemFrame[i])
		JSHB.F.TotemIndicator.totemFrame[i].Icon:SetTexture(select(3, GetSpellInfo(spellID) ))

		if JSHB.db.profile.totemindicator.enabletexcoords then
			JSHB.F.TotemIndicator.totemFrame[i].Icon:SetTexCoord(unpack(JSHB.db.profile.totemindicator.texcoords) )
		end

		if JSHB.moversLocked then
			JSHB.F.TotemIndicator.totemFrame[i]:SetAlpha(1)
		end

		JSHB.F.TotemIndicator.totemFrame[i].killtime = GetTime() + expireTime + .2
		JSHB.F.TotemIndicator.totemFrame[i].spellID = spellID
		JSHB.F.TotemIndicator.totemFrame[i].active = true
		
		local timer = JSHB.F.TotemIndicator.totemFrame[i].timer or JSHB.Timer_Create(JSHB.F.TotemIndicator.totemFrame[i])
		timer.start = GetTime()
		timer.duration = expireTime
		timer.enabled = true
		timer.nextUpdate = 0
		timer:Show()		
	end
end

local function stopTotemTimer(spellID)
	for i=1,5 do
		if (JSHB.F.TotemIndicator.totemFrame[i].active == true) and (JSHB.F.TotemIndicator.totemFrame[i].spellID == spellID) then
			JSHB.F.TotemIndicator.totemFrame[i]:SetAlpha(0)
			JSHB.F.TotemIndicator.totemFrame[i].spellID = 0
			JSHB.F.TotemIndicator.totemFrame[i].active = false
			JSHB.F.TotemIndicator.totemFrame[i].killtime = 0

			if JSHB.F.TotemIndicator.totemFrame[i].timer then
				JSHB.F.TotemIndicator.totemFrame[i].timer.enabled = nil
				JSHB.F.TotemIndicator.totemFrame[i].timer:Hide()
			end
			break
		end
	end
end

function JSHB.SetupTotemIndicatorModule()

	-- Deconstruction
	if JSHB.F.TotemIndicator then
		JSHB.F.TotemIndicator:Hide()
		JSHB.F.TotemIndicator.totemFrame[1]:SetScript("OnUpdate", nil)
		JSHB.F.TotemIndicator.totemFrame[1]:UnregisterAllEvents()
		for i=1,5 do
			JSHB.F.TotemIndicator.totemFrame[i]:SetAlpha(0)
		end
		JSHB.DeregisterMovableFrame("MOVER_TOTEMINDICATOR")
		JSHB.F.TotemIndicator:SetParent(nil)
	end
	
	if not JSHB.db.profile.totemindicator.enabled then return end
	
	-- Construction
	local TOTEMINDICATOR_UPDATEINTERVAL = 0.15

	-- Create the Frame
	JSHB.F.TotemIndicator = JSHB.MakeFrame(JSHB.F.TotemIndicator, "Frame", "JSHB_TOTEMINDICATOR", JSHB.db.profile.totemindicator.anchor[2] or UIParent)
	JSHB.F.TotemIndicator:SetParent(JSHB.db.profile.totemindicator.anchor[2] or UIParent)
	JSHB.F.TotemIndicator:ClearAllPoints()
	JSHB.F.TotemIndicator:SetSize(50, 50) -- Temporary, will set it after we get offsets
	JSHB.F.TotemIndicator:SetPoint(JSHB.GetActiveAnchor(JSHB.db.profile.totemindicator.anchor) )
	JSHB.F.TotemIndicator.totemFrame = {}
	
	for i=1,5 do
		JSHB.F.TotemIndicator.totemFrame[i] = JSHB.MakeFrame(JSHB.F.TotemIndicator.totemFrame[i], "Frame", nil, JSHB.F.TotemIndicator)
		JSHB.F.TotemIndicator.totemFrame[i]:SetParent(JSHB.F.TotemIndicator)
		JSHB.F.TotemIndicator.totemFrame[i]:ClearAllPoints()
		JSHB.F.TotemIndicator.totemFrame[i]:SetSize(JSHB.db.profile.totemindicator.iconsize, JSHB.db.profile.totemindicator.iconsize)
		JSHB.F.TotemIndicator.totemFrame[i]:SetPoint("CENTER", JSHB.F.TotemIndicator, "CENTER") -- Temporary
		JSHB.F.TotemIndicator.totemFrame[i].background = JSHB.MakeBackground(JSHB.F.TotemIndicator.totemFrame[i], JSHB.db.profile.totemindicator, nil, JSHB.F.TotemIndicator.totemFrame[i].background)
		JSHB.F.TotemIndicator.totemFrame[i]:ClearAllPoints() -- Now that we made the backdrop/border we have offsets to use.
		
		local x = ( (i-1) * (JSHB.GetFrameOffset(JSHB.F.TotemIndicator.totemFrame[i], "LEFT", 1) + JSHB.GetFrameOffset(JSHB.F.TotemIndicator.totemFrame[i], "RIGHT", 1) + JSHB.db.profile.totemindicator.iconsize + 2) )
		
		if JSHB.db.profile.totemindicator.anchor[4] >= 0 then -- Expand to Right
			JSHB.F.TotemIndicator.totemFrame[i]:SetPoint("TOPLEFT", JSHB.F.TotemIndicator, "TOPLEFT", x, 0)
		else -- Expand to Left
			JSHB.F.TotemIndicator.totemFrame[i]:SetPoint("TOPRIGHT", JSHB.F.TotemIndicator, "TOPRIGHT", -x, 0)
		end
		
		JSHB.F.TotemIndicator.totemFrame[i].Icon = JSHB.F.TotemIndicator.totemFrame[i].Icon or JSHB.F.TotemIndicator.totemFrame[i]:CreateTexture(nil, "BACKGROUND")
		JSHB.F.TotemIndicator.totemFrame[i].Icon:SetTexture("Interface\\Buttons\\UI-GroupLoot-Pass-Up") -- Temporary Texture
		
		if JSHB.db.profile.totemindicator.enabletexcoords then
			JSHB.F.TotemIndicator.totemFrame[i].Icon:SetTexCoord(unpack(JSHB.db.profile.totemindicator.texcoords) )
		else
			JSHB.F.TotemIndicator.totemFrame[i].Icon:SetTexCoord(0, 1, 0, 1)
		end
		
		JSHB.F.TotemIndicator.totemFrame[i]:SetAlpha(0)
		JSHB.F.TotemIndicator.totemFrame[i]:Show()
		JSHB.F.TotemIndicator.totemFrame[i].spellID = 0
		JSHB.F.TotemIndicator.totemFrame[i].active = false
	end
	-- Properly set the host frame's size for the movers functionality
	JSHB.F.TotemIndicator:SetSize(
		( (JSHB.db.profile.totemindicator.iconsize +
				(JSHB.GetFrameOffset(JSHB.F.TotemIndicator.totemFrame[1], "LEFT", 1) + JSHB.GetFrameOffset(JSHB.F.TotemIndicator.totemFrame[1], "RIGHT", 1) + 2) ) * 3) -
				JSHB.GetFrameOffset(JSHB.F.TotemIndicator.totemFrame[1], "LEFT", 1) - JSHB.GetFrameOffset(JSHB.F.TotemIndicator.totemFrame[1], "RIGHT", 1) - 2,
		JSHB.db.profile.totemindicator.iconsize)
	-- Register the mover frame
	JSHB.RegisterMovableFrame(
		"MOVER_TOTEMINDICATOR",
		JSHB.F.TotemIndicator,
		JSHB.F.TotemIndicator,
		JSHB.L["Totem Indicator"],
		JSHB.db.profile.totemindicator,
		JSHB.SetupTotemIndicatorModule,
		JSHB.defaults.profile.totemindicator,
		JSHB.db.profile.totemindicator
	)
	
	-- First frame calls the update routine.
	JSHB.F.TotemIndicator.totemFrame[1].updateTimer = 0
	JSHB.F.TotemIndicator.totemFrame[1]:SetScript("OnUpdate",
		function(s, elapsed)
			s.updateTimer = s.updateTimer + elapsed
			if s.updateTimer > TOTEMINDICATOR_UPDATEINTERVAL then
				s._j = 1
				for i=1,5 do
					if (JSHB.F.TotemIndicator.totemFrame[i].active == true) then
						if (JSHB.F.TotemIndicator.totemFrame[i].killtime < GetTime() ) then
							stopTotemTimer(JSHB.F.TotemIndicator.totemFrame[i].spellID)
						else
							s._x = ( (s._j-1) * (JSHB.GetFrameOffset(JSHB.F.TotemIndicator.totemFrame[i], "LEFT", 1) + JSHB.GetFrameOffset(JSHB.F.TotemIndicator.totemFrame[i], "RIGHT", 1) + JSHB.db.profile.totemindicator.iconsize + 2) )
							if JSHB.db.profile.totemindicator.anchor[4] >= 0 then -- Expand to Right
								JSHB.F.TotemIndicator.totemFrame[i]:SetPoint("TOPLEFT", JSHB.F.TotemIndicator, "TOPLEFT", s._x, 0)
							else -- Expand to Left
								JSHB.F.TotemIndicator.totemFrame[i]:SetPoint("TOPRIGHT", JSHB.F.TotemIndicator, "TOPRIGHT", -s._x, 0)
							end
							s._j = s._j + 1
						end
					end
				end
			end
		end)
		
	-- Event handler
	JSHB.F.TotemIndicator.totemFrame[1]:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	JSHB.F.TotemIndicator.totemFrame[1]:SetScript("OnEvent",
		function(s, event, ...)
			s._, s._subEvent, s._, s._sourceGUID, s._, s._sourceFlags, s._, s._destGUID, s._destName, s._destFlags, s._, s._spellId = ...
			
			if (s._subEvent == "SPELL_SUMMON") and (s._sourceGUID == UnitGUID("player")) then	
				-- Fire Totems
				if (s._spellId == 3599) then -- Searing Totem
					addTotemTimer(3599, 60)
				elseif (s._spellId == 8190) then -- Magma Totem
					addTotemTimer(8190, 60)
				elseif (s._spellId == 2894) then  -- Fire Elemental Totem
					addTotemTimer(2894, 60)
					
				-- Earth Totems
				elseif (s._spellId == 2062) then -- Earth Elemental Totem
					addTotemTimer(2062, 60)
				elseif (s._spellId == 2484) then -- Earthbind Totem
					addTotemTimer(2484, 20)
				elseif (s._spellId == 51485) then -- Earthgrab Totem
					addTotemTimer(51485, 20)
				elseif (s._spellId == 108270) then -- Stone Bulwark Totem
					addTotemTimer(108270, 30)
				elseif (s._spellId == 8143) then -- Tremor Totem
					addTotemTimer(8143, 10)
				
				-- Water Totems
				elseif (s._spellId == 5394) then -- Healing Stream Totem
					addTotemTimer(5394, 15)
				elseif (s._spellId == 108280) then -- Healing Tide Totem
					addTotemTimer(108280, 10)
				elseif (s._spellId == 157153) then -- Cloudburst Totem
					addTotemTimer(157153, 15)
					
				-- Air Totems
				elseif (s._spellId == 108269) then -- Capacitor Totem
					if (JSHB.IsGlyphActive(55442)) then
					 	addTotemTimer(108269, 3)
					else
						addTotemTimer(108269, 5)
					end
				elseif (s._spellId == 8177) then -- Grounding Totem
					addTotemTimer(8177, 15)
				elseif (s._spellId == 152256) then -- Storm Elemental Totem 
					addTotemTimer(152256, 60)
				elseif (s._spellId == 108273) then -- Windwalk Totem
					addTotemTimer(108273, 6)
				elseif (s._spellId == 98008) then -- Spirit Link Totem
					addTotemTimer(98008, 6)
				end

			elseif (s._subEvent == "PARTY_KILL") and (bit.band(s._destFlags, COMBATLOG_OBJECT_AFFILIATION_MINE) == 1) then
				local totemID = tonumber(JSHB.NameToSpellID(s._destName))
				-- Fire Totems
				if (totemID == 3599) then -- Searing Totem
					stopTotemTimer(3599) 
				elseif (totemID == 8190) then -- Magma Totem
					stopTotemTimer(8190) 
				elseif (totemID == 2894) then -- Fire Elemental Totem
					stopTotemTimer(2894) 
				
				-- Earth Totems
				elseif (totemID == 2062) then -- Earth Elemental Totem
					stopTotemTimer(2062)
				elseif (totemID == 2484) then -- Earthbind Totem
					stopTotemTimer(2484)
				elseif (totemID == 51485) then -- Earthgrab Totem
					stopTotemTimer(51485)
				elseif (totemID == 108270) then -- Stone Bulwark Totem
					stopTotemTimer(108270)
				elseif (totemID == 8143) then -- Tremor Totem
					stopTotemTimer(8143)
				
				-- Water Totems
				elseif (totemID == 5394) then -- Healing Stream Totem
					stopTotemTimer(5394)
				elseif (totemID == 108280) then -- Healing Tide Totem
					stopTotemTimer(108280)
				elseif (totemID == 157153) then -- Cloudburst Totem
					stopTotemTimer(157153)
					
				-- Air Totems
				elseif (totemID == 108269) then -- Capacitor Totem
					stopTotemTimer(108269)
				elseif (totemID == 8177) then -- Grounding Totem
					stopTotemTimer(8177)
				elseif (totemID == 152256) then -- Storm Elemental Totem 
					stopTotemTimer(152256)
				elseif (totemID == 108273) then -- Windwalk Totem
					stopTotemTimer(108273)
				elseif (totemID == 98008) then -- Spirit Link Totem
					stopTotemTimer(98008)
				end

			elseif (s._subEvent == "SPELL_CAST_SUCCESS") and (s._sourceGUID == UnitGUID("player")) then
				if (s._spellId == 36936) then
					for i=1,5 do
						JSHB.F.TotemIndicator.totemFrame[i]:SetAlpha(0)
						JSHB.F.TotemIndicator.totemFrame[i].spellID = 0
						JSHB.F.TotemIndicator.totemFrame[i].active = false
						JSHB.F.TotemIndicator.totemFrame[i].killtime = 0

						if JSHB.F.TotemIndicator.totemFrame[i].timer then
							JSHB.F.TotemIndicator.totemFrame[i].timer.enabled = nil
							JSHB.F.TotemIndicator.totemFrame[i].timer:Hide()
						end
					end
				end
			end
		end)
	JSHB.F.TotemIndicator:Show()
end