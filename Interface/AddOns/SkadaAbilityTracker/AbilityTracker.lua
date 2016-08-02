--[[
Skada:AbilityTracker by Syrant
Credit Zarnivoop for making Skada and its modules. Lots of copy/paste from Z's work.

TODO: abbreakdown: color lines by last delay or time til ready
]]

local addon, special = ...
local Skada = Skada
local L = LibStub("AceLocale-3.0"):GetLocale("Skada", false)

local mod				= Skada:NewModule("Ability Tracker")
local abLog				= Skada:NewModule("Ability Log")
local abBreakdown		= Skada:NewModule("Ability Breakdown [self]")
local maxloglength		= 10
local timeuntilready	= 5
local showbarfilling	= false

local myId				= 0
local myLastab			= {}
local cCheckdelay		= 0.1
local bDebug			= false

local lRegCallbacks = {}

local sformat, tos = string.format, tostring
local tinsert, tremove = table.insert, table.remove
local floor = math.floor

local function GetSpellCD(spellname, id)
	local inv = special.inv[spellname]
	if inv then
		return GetInventoryItemCooldown("player", inv)
	end
	-- need to check CD using both id and name b/c blizz isn't consistent
	local s1, d1 = GetSpellCooldown(id)
	local s2, d2 = GetSpellCooldown(spellname)
	if not d1 then return s2, d2 end
	if not d2 then return s1, d1 end
	if d1 > d2 then return s1, d1 end
	return s2, d2
end

local function IsChannelSpell(spellname)
	if special.channeled[spellname] then return true end
	return false
end

local function MarkChannelSpell(spellname)
	if not special.channeled[spellname] then 
		special.channeled[spellname] = true
	end
end

local function CheckReset(resettype, set, spellid, spellname, timestamp)
	local specialset = special.reset[resettype]
	local abreset = specialset[spellname]
	
	if not abreset then return end
	
	if myLastab.tEndgcd > timestamp then 
		timestamp = myLastab.tEndgcd
	end
	
	if abreset == "All" then
		for spell, ab in pairs(set.abBreakdown) do
			if spellname ~= spell then
				local duration = select(2, GetSpellCD(spellname, ab.id)) or -1
				if duration == 0 and ab.tReady > timestamp then
					ab.tReady = timestamp
				end
			end
		end
	else
		ab = set.abBreakdown[abreset]
		if ab and ab.tReady > timestamp then
			ab.tReady = timestamp
		end
	end
end

function Skada:CheckCooldown(spellkey)
	local spellname, keyid = spellkey[1], spellkey[2]
	local set = Skada.current
	if not set then return end
	local ab = set.abBreakdown[spellname]
	if not ab then return end
	
	-- if a delayed cast (still casting it), then schedule a check for end of delayed cast and return
	if keyid then
		local t1, t2, t3, t4, starttime, endtime, t7, castid = UnitCastingInfo("player")
		if not castid then
			t1, t2, t3, t4, starttime, endtime = UnitChannelInfo("player")
			castid = starttime
		end
		
		if castid and castid == keyid then
			local check = (endtime/1000 - GetTime()) + 5*cCheckdelay
			Skada:ScheduleTimer("CheckCooldown", check, spellname)
			
			if myLastab.nCastid and myLastab.nCastid == keyid then
				local lengthCast = (endtime - starttime)/1000
				myLastab.tEndcast = myLastab.tStartcast + lengthCast
			end
			
			--DEFAULT_CHAT_FRAME:AddMessage(" still casting "..spellname.." recheck in "..check.." seconds")
			return
		end
	end
	
	local startCD, duration = GetSpellCD(spellname, ab.id)
	
	if duration and duration > 0 then
		local lengthCast = 0
		if ab.nStartcast ~= 0 then lengthCast = startCD - ab.nStartcast end
		ab.tReady = ab.tCast + duration + lengthCast
		--DEFAULT_CHAT_FRAME:AddMessage(" cd info: "..spellname.." s, d: "..startCD..", "..duration)
	end
	
	local redspell = special.reduces[spellname]
	if redspell then
		local redab = set.abBreakdown[redspell]
		if redab then
			startCD, duration = GetSpellCD(spellname, redab.id)
			if duration and duration > 0 then
				local lengthCast = 0
				if redab.nStartcast ~= 0 then lengthCast = startCD - redab.nStartcast end
				redab.tReady = redab.tCast + duration + lengthCast
			end
		end
	end
end

local function log_ability(playerid, playername, spellid, spellname, timestamp, castid)
	local set = Skada.current
	if not set then return end
	
	local player = Skada:find_player(set, playerid)
	if not player then return end
	
	if player.abcount > 0 and castid and player.abLog[1].nCastid and castid == player.abLog[1].nCastid then
		return
	end
	
	player.abcount	= player.abcount + 1
	set.abcount		= set.abcount + 1	
	tinsert(player.abLog, 1, {["id"] = spellid, ["tCast"] = timestamp, ["nCastid"] = castid})
	while #player.abLog > maxloglength do tremove(player.abLog) end
	
	local totset = Skada.total
	player = Skada:find_player(totset, playerid)
	player.abcount	= player.abcount + 1
	totset.abcount	= totset.abcount + 1
end

local function get_totalab(spellid, spellname)
	local totset = Skada.total
	
	if not totset.abBreakdown[spellname] then
		totset.abBreakdown[spellname] = {id = spellid, nCount = 0, nLastdelay = 0, nSumdelay = 0,
										spammable = (GetSpellBaseCooldown(spellid) == 0),
										colorset = false}
		tinsert(totset.myAbilities, spellname)
		table.sort(totset.myAbilities)
	end
	
	return totset.abBreakdown[spellname]
end

local function do_totalab(set, spellid, spellname, incCount, incDelay)
	local ab	= get_totalab(spellid, spellname)
	ab.nCount	= ab.nCount + incCount
	if incDelay then
		ab.nLastdelay	= incDelay
		ab.nSumdelay	= ab.nSumdelay + incDelay
		ab.colorset		= false
	end
end

local function log_myab(spellid, spellname, timestamp, casttype)
	local set = Skada.current
	
	if not myLastab.tEndgcd then
		myLastab.tEndgcd = timestamp
	end
		
	-- add ability to sorted list
	if not set.abBreakdown[spellname] then
		local link = special.linked[spellname]
		if link and set.abBreakdown[link] then
			spellname	= link
			spellid		= select(2, GetSpellBookItemInfo(link))
		else
			set.abBreakdown[spellname] = 	{id = spellid, nCount = 0, nLastdelay = 0, nSumdelay = 0,  
											tCast = timestamp, tReady = myLastab.tEndcast or myLastab.tEndgcd, 
											nStartcast = nil, nCastid = nil, colorset = false}
			tinsert(set.myAbilities, spellname)
			table.sort(set.myAbilities)
		end
	end

	local ab = set.abBreakdown[spellname]
	CheckReset("spell", set, spellid, spellname, timestamp)
	
	ab.nCount 		= ab.nCount + 1
	ab.nStartcast 	= GetSpellCD(spellname, spellid)
	ab.nCastid 		= nil
	
	local lengthCast = 1
	local t1, t2, t3, t4, starttime, endtime
	if casttype == "hardcast" then
		lengthCast = select(7, GetSpellInfo(spellid))/1000
		ab.nCastid = select(8, UnitCastingInfo("player"))
	elseif casttype == "channel" then
		t1, t2, t3, t4, starttime, endtime = UnitChannelInfo("player")
		lengthCast = (endtime - starttime)/1000
		ab.nCastid = starttime -- psuedo!
	end
	if lengthCast < 1 then lengthCast = 1 end
	
	local check = cCheckdelay
	if casttype ~= "instant" then check = 5*cCheckdelay + lengthCast end
	
	--DEFAULT_CHAT_FRAME:AddMessage("checking "..spellname.." in "..check.." seconds")
	Skada:ScheduleTimer("CheckCooldown", check, { spellname, ab.nCastid })
	
	if special.offgcd[spellname] then
		if ab.nCount > 1 then 
			ab.nLastdelay = timestamp - ab.tReady
		end
	else
		-- if spammable (no base cooldown), calc delay from last ability used
		if GetSpellBaseCooldown(spellid) == 0 then
			local startdelay	= myLastab.tEndcast or myLastab.tEndgcd
			ab.nLastdelay		= timestamp - startdelay
			
			-- sanity check: assume any spammable cast that is earlier than expected resulted from some failed cast
			if ab.nLastdelay < -0.25 then 
				ab.nLastdelay = timestamp - myLastab.tStartcast
			end
		else
			ab.nLastdelay = timestamp - ab.tReady
			
			-- sanity check: assume any early non-spam cast is from so sort of cooldown refresh (eg Kill Shot)
			if ab.nLastdelay < -1 then
				ab.nLastdelay = timestamp - (ab.tCast + 1)
			end
		end
		
		local lengthGCD		= select(2, GetItemCooldown(6948)) -- hearthstone
		if not lengthGCD then lengthGCD = 1 end
		
		myLastab.tEndgcd 	= timestamp + lengthGCD
		myLastab.tStartcast = timestamp
		myLastab.tEndcast 	= nil
		myLastab.nCastid	= nil
		myLastab.nSpellid 	= spellid
		myLastab.casttype 	= casttype
		
		if casttype ~= "instant" then
			myLastab.tEndcast 	= timestamp + lengthCast
			myLastab.nCastid 	= ab.nCastid
		end
	end
	
	ab.tCast 		= timestamp
	ab.tReady 		= timestamp + 1 -- default
	ab.nSumdelay 	= ab.nSumdelay + ab.nLastdelay
	ab.colorset		= false
	do_totalab(set, spellid, spellname, 1, ab.nLastdelay)
	
	if lRegCallbacks["abbreakdown"] then
		for i, listener in ipairs(lRegCallbacks["abbreakdown"]) do
			listener.func(spellid, spellname, set.abBreakdown)
		end
	end
end

local function InstantCast(timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags, ...)
	local spellid, spellname = ...
	local spell, t2, t3, t4, starttime = UnitChannelInfo(srcName)
	
	local excid = special.exclusiveid[spellname]
	if excid and excid ~= spellid then
		return
	end
	
	-- due to delay in UnitChannelInfo, sometimes a channeled looks like an instant!	
	if not spell and IsChannelSpell(spellname) then
		return
	end

	local casttype = "instant"
	if spell then
		MarkChannelSpell(spellname)
		casttype = "channel"
	end
	
	log_ability(srcGUID, srcName, spellid, spellname, timestamp, starttime)
	
	if srcGUID == myId then
		-- if this spell is already being channeled, return w/o logging
		if myLastab.casttype == "channel" and myLastab.nCastid == starttime then
			--DEFAULT_CHAT_FRAME:AddMessage(" ignoring log of still casting "..spellname)
			return
		end
		--DEFAULT_CHAT_FRAME:AddMessage("logging "..spellname.." type "..casttype)
		log_myab(spellid, spellname, timestamp, casttype)
	end
end

local function TimeCast(timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags, ...)
	local spellid, spellname = ...
	log_ability(srcGUID, srcName, spellid, spellname, timestamp, nil)
	
	if srcGUID == myId then
		log_myab(spellid, spellname, timestamp, "hardcast")
	end
end

local function FailCast(timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags, ...)
	local spellid, spellname, spellSchool, failtype = ...
	if srcGUID ~= myId then return end
	
	local set = Skada.current
	local castid = select(8, UnitCastingInfo("player")) or select(5, UnitChannelInfo("player")) or -1
	
	-- if currently casting or channeling my last ability, ignore fail message (from other causes) and return
	if myLastab.nCastid and castid == myLastab.nCastid then
		return
	end
	
	-- if legit fail, add wasted cast time to delay of spell and update endcast/ready
	if myLastab.nSpellid == spellid and myLastab.tEndcast and myLastab.tEndcast > timestamp then
		ab 					= set.abBreakdown[spellname]
		ab.tReady 			= timestamp
		myLastab.tEndcast 	= timestamp
		ab.nLastdelay 		= myLastab.tEndcast - myLastab.tStartcast
		ab.nSumdelay 		= ab.nSumdelay + ab.nLastdelay
		ab.colorset			= false
		do_totalab(set, spellid, spellname, 0, ab.nLastdelay)
		
		-- sanity check
		if ab.nLastdelay < -.25 then
			ab.nLastdelay = ab.nLastdelay + nil
		end
	end
end

local function AuraGain(timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags, ...)
	local spellid, spellname = ...
	CheckReset("aura", Skada.current, spellid, spellname, timestamp)
end

local function DisplaySpell(win, set, row, rowid, spellid)
	local nlabel = index or row
	local d = win.dataset[row] or {}
	win.dataset[row] = d
	d.id = rowid
	
	d.name = spellname
	d.label = GetSpellInfo(spellid)
	d.spellid = spellid

	if spellid then
		d.icon = select(3, GetSpellInfo(spellid))
		if win.bargroup then
			local bar = win.bargroup:GetBar(rowid)
			if bar then bar:SetIcon(d.icon) end
		end
	end
	
	d.value = 0
end

local function GetColor(ctype, value)
	if ctype then
		return special.coloruse[ctype].color
	end
	
	for i, cut in ipairs({"cut1", "cut2", "cut3", "cut4", "cut5"}) do
		local entry = special.coloruse[cut]
		if value < entry.late then
			return entry.color
		end
	end
	return special.coloruse["cutend"].color
end

local function DisplayColor(win, set, ab, totab)
	if win.bargroup then
		local bar = win.bargroup:GetBar(ab.id)
		if bar then
			--local color = GetColor((totab.spammable and "spam") or nil, ab.nLastdelay or 0)
			local color = GetColor(nil, ab.nLastdelay or 0)
			local colorrgb = Skada.classcolors[color]
			bar:SetBackgroundColor(colorrgb.r, colorrgb.g, colorrgb.b)
			ab.colorset = true
		end
	end
end

function mod:Update(win, set)
	local nr = 1
	local max = 0
	
	for i, player in ipairs(set.players) do
		
		if player.abcount > 0 then
			local d = win.dataset[nr] or {}
			win.dataset[nr] = d
		
			d.id = player.id
			d.value = player.abcount
			d.label = player.name
			d.class = player.class
			d.valuetext = tos(player.abcount)
			if player.abcount > max then
				max = player.abcount
			end
		end
			
		nr = nr + 1
	end

	win.metadata.maxvalue = max
end

function abLog:Update(win, winset)
	local set = winset
	if winset.name == L["Total"] then
		set = Skada.current
	end
	
	local player = Skada:find_player(set, self.playerid)
	
	if player then
		local nr = 1
		local index = player.abcount
		
		for i, ab in ipairs(player.abLog) do
			DisplaySpell(win, winset, nr, nr, ab.id)
			local d = win.dataset[nr]
			d.label = sformat("%3.0f ", index)..d.label
			
			local sDelta = "--"
			if index > 1 and nr < maxloglength then
				local delta = ab.tCast - player.abLog[nr+1].tCast
				sDelta = sformat("%2.2f", delta)
			end

			local msCast = (ab.tCast - floor(ab.tCast))*1000
			local sTime = date("%S.", ab.tCast)..sformat("%3.0f", msCast)
			
			d.valuetext = Skada:FormatValueText(
								sDelta, self.metadata.columns.Change,
								sTime, self.metadata.columns.Timestamp
							)
			index = index - 1
			nr = nr + 1
		end
	end
	
	win.metadata.maxvalue = 1
end

function abBreakdown:Update(win, set)
	local player = Skada:find_player(set, myId)
	local bReport = self.metadata.columns.Report
	
	if set.name == L["Total"] then
		self.metadata.columns.Report = false
	end
	
	if player and player.abcount > 0 then
		local nr = 1
		local curtime = time()
		
		for i, spellname in ipairs(set.myAbilities) do
			if not special.exclude[spellname] then 
				ab = set.abBreakdown[spellname]
				totab = Skada.total.abBreakdown[spellname]
				
				DisplaySpell(win, set, nr, ab.id, ab.id)
				if abBreakdown.metadata.columns.Color and not ab.colorset then
					DisplayColor(win, set, ab, totab)
				end
				local d = win.dataset[nr]
				--d.label = tos(ab.id)
				--d.label = spellname

				local sReport = "Go!"
				local nReport = nil
			
				if not totab.spammable and myLastab.tStartcast and ab.tReady
					and myLastab.tEndgcd + .1 < ab.tReady then
					nReport = ab.tReady - myLastab.tStartcast
					sReport = sformat("%.2f", nReport)
				
					if showbarfilling then
						d.value = 1 - ((ab.tReady - myLastab.tEndgcd) / timeuntilready)
						if d.value < 0 then d.value = 0 end
					end
				end
			
				local sLastdelay = "--"
				if ab.nLastdelay then
					if Skada:GetSetTime(set) < 180
						then sLastdelay = sformat("%04.2f", ab.nLastdelay)
						else sLastdelay = sformat("%05.2f", ab.nLastdelay)
					end
				end
				local sSumdelay = sformat("%05.2f", ab.nSumdelay)

				d.valuetext = Skada:FormatValueText(
								sReport, self.metadata.columns.Report,
								sLastdelay, self.metadata.columns.Change,
								sSumdelay, self.metadata.columns.Total
							)
				nr = nr + 1
			end
		end
	end
	
	self.metadata.columns.Report = bReport
	win.metadata.maxvalue = 1
end

local function abBreakdown_Tooltip(win, id, label, tooltip)
	local set = win:get_selected_set()
	local player = Skada:find_player(set, myId)
	
	if player then
		local spellname = GetSpellInfo(id)
		local ab = set.abBreakdown[spellname]
		tooltip:AddLine(spellname.." Timing:")
		tooltip:AddDoubleLine("Count", tos(ab.nCount), 255,255,255,255,255,255)
		tooltip:AddDoubleLine("Total delay", sformat("%.3fs", ab.nSumdelay), 255,255,255,255,255,255)
		tooltip:AddDoubleLine("Delay per cast", sformat("%.3fs", ab.nSumdelay/ab.nCount), 255,255,255,255,255,255)
	end
end

function mod:OnEnable()
	mod.metadata			= {showspots = 1, click1 = abLog}
	abLog.metadata			= {ordersort = true, columns = {Change = true, Timestamp = false}}
	abBreakdown.metadata 	= {ordersort = true, tooltip = abBreakdown_Tooltip, 
							columns = {Report = false, Color = true, Change = true, Total = true}}
	
	myId = UnitGUID("player")
	
	Skada:RegisterForCL(InstantCast,	'SPELL_CAST_SUCCESS',	{src_is_interesting_nopets = true})
	Skada:RegisterForCL(TimeCast,		'SPELL_CAST_START',		{src_is_interesting_nopets = true})
	Skada:RegisterForCL(FailCast,		'SPELL_CAST_FAILED',	{src_is_interesting_nopets = true})
	Skada:RegisterForCL(AuraGain,		'SPELL_AURA_APPLIED',	{src_is_interesting_nopets = true})
	Skada:AddMode(self)
	Skada:AddMode(abBreakdown)
end

function mod:OnDisable()
	Skada:RemoveMode(self)
	Skada:RemoveMode(abBreakdown)
end

function mod:AddToTooltip(set, tooltip)
	GameTooltip:AddDoubleLine("AbilityTracker", set.abcount, 1,1,1)
end

function mod:GetSetSummary(set)
	return set.abcount
end

function mod:AddPlayerAttributes(player)
	if not player.abcount then
		player.abLog = {}
		player.abcount = 0
	end
end

function mod:AddSetAttributes(set)
	if not set.abcount then
		set.abcount = 0
	end
end

function abBreakdown:AddSetAttributes(set)
	if not set.myAbilities then
		set.myAbilities = {}
		set.abBreakdown = {}
	end
	
	if Skada.total and Skada.total.abBreakdown then
		for spellname, ab in pairs(Skada.total.abBreakdown) do
			ab.nLastdelay = nil
		end
	end
	
	myLastab.tEndgcd 	= nil
	myLastab.tStartcast = nil
	myLastab.tEndcast 	= nil
	myLastab.nCastid	= nil
	myLastab.nSpellid 	= nil
	myLastab.casttype 	= "none"
end

function abLog:Enter(win, id, label)
	abLog.playerid = id
	abLog.title = label.."'s Ability Log"
end

-- For outside API

function Skada:RegisterForABTracker(callback, mode)
	lRegCallbacks[mode] = lRegCallbacks[mode] or {}
	tinsert(lRegCallbacks[mode], {func = callback})
end