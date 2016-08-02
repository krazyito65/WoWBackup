local UnitGUID = UnitGUID
local GetNumGroupMembers = GetNumGroupMembers
local LibInspect = LibStub and LibStub:GetLibrary("LibInspect")
local Ticker = C_Timer.NewTimer
local GetTime = GetTime
local UnitBuff = UnitBuff
local BreakUpLargeNumbers = BreakUpLargeNumbers

--------Leech Scanning ------------------------------------------------------------------------------
local GUID_LeechCache = {}	 -- {[GUID] = Leech} cache for scanned leech values
local GUIDsLastScan = {}  -- {[GUID] = GetTime()} 
local roster = {}		 -- {unitID = leech} contains only current group members, 'false' if leech is unknown
LeechTrinketCounterRoster = roster
local GUIDtoUnitID = {}
local maxAge = 60*5		-- maximum leech scan age in seconds before rescanning
local tooltip -- = CreateFrame('GameTooltip', 'LeechScanTooltip', UIParent, 'GameTooltipTemplate')

local waitingForScan = false
local waitingForScanTimeOut = 5
local waitingForScanTimer
local function CancelWaitingForScan() 
	waitingForScan = false 
	if waitingForScanTimer then 
		waitingForScanTimer:Cancel() 
	end
end
local function WaitForScan()
	waitingForScan = true
	waitingForScanTimer = Ticker(waitingForScanTimeOut, CancelWaitingForScan, 1)
end

local debug = false
local function DebugPrint(...)
	if debug then
		print(...)
	end
end

local function GroupChangedUpdateUnit(u)
	local GUID = UnitGUID(u)
	GUIDtoUnitID[GUID] = u
	local cached = GUID_LeechCache[GUID]
	if cached then
		roster[GUID] = cached
	else
		roster[GUID] = false
	end
end

local f = CreateFrame("frame")
f:RegisterEvent("GROUP_ROSTER_UPDATE")
f:RegisterEvent("PLAYER_ENTERING_WORLD")
f:RegisterEvent("PLAYER_LOGIN")

f:SetScript("OnEvent", function(_, e, ...)
	if e == "GROUP_ROSTER_UPDATE" or e == "PLAYER_ENTERING_WORLD" then
		wipe(roster)
		wipe(GUIDtoUnitID)
		if IsInRaid() then
			for i=1, GetNumGroupMembers() do
				GroupChangedUpdateUnit("raid"..i)
			end
		else
			GroupChangedUpdateUnit("player")
			for i=1, GetNumGroupMembers()-1 do
				GroupChangedUpdateUnit("party"..i)
			end
		end
	elseif e == "PLAYER_LOGIN" then
		tooltip = CreateFrame('GameTooltip', 'LeechScanTooltip', nil, 'GameTooltipTemplate')
		tooltip:SetOwner(UIParent, "ANCHOR_NONE")
	end
end)

local ItemLeechCache = {} -- [hyperlink] = leech
local leechCapture = "+(%d+) "..GetSpellInfo(143924) --leech in tooltips is localised
local function ScanItemTooltips(GUID, data, age)
	DebugPrint("received data for scanning")
	if data then
		local leechTotal = 0
		for k, v in ipairs(data.items) do
			local leech = ItemLeechCache[v]
			if not leech then
				leech = 0
				tooltip:ClearLines()
				tooltip:SetHyperlink(v) -- example hyperlink with leech "|cffa335ee|Hitem:124244:0:0:0:0:0:0:0:100:270:0:5:2:41:566|h[Chestguard of Gnawing Desire]|h|r"
				for i=1, tooltip:NumLines() do
					leech = leech + (tonumber(_G["LeechScanTooltipTextLeft"..i]:GetText():match(leechCapture)) or 0) 
				end
				ItemLeechCache[v] = leech
			end
			leechTotal = leechTotal + leech
		end
		DebugPrint(GUIDtoUnitID[GUID], leechTotal)
		roster[GUID] = leechTotal
		GUID_LeechCache[GUID] = leechTotal
		GUIDsLastScan[GUID] = GetTime()
	end
	CancelWaitingForScan()
end

if not LibInspect or not LibInspect:AddHook("LeechTrinketCounter", "items", function(GUID, data, age) ScanItemTooltips(GUID, data, age) end) then
	error("LeechTrinketCounter: Error loading LibInspect")
	return
else
	LibInspect:SetMaxAge(maxAge)
end

local function QueueUnitScan(GUID)
	local UnitID = GUIDtoUnitID[GUID]
	if not UnitIsVisible(UnitID) then 
		DebugPrint("can't scan", (UnitName(GUIDtoUnitID[GUID])))
		return false 
	end
	caninspect, unitfound, refreshing = LibInspect:RequestData("items", UnitID, false)
	local waiting = caninspect and unitfound and refreshing
	WaitForScan(waiting)
	DebugPrint((waiting and "scanning" or "can't scan"), (UnitName(GUIDtoUnitID[GUID])))
	return waiting
end

local scanTick = C_Timer.NewTicker(1, function()
	if InCombatLockdown() then return end
	if waitingForScan then 
		DebugPrint("waiting for scan")
		return end
	for k, v in pairs(roster) do 
		if not v then 
			if QueueUnitScan(k) then
				return
			end
		end
	end
	local time = GetTime()
	for k, v in pairs(roster) do 
		if GUIDsLastScan[k] and GUIDsLastScan[k] + maxAge < time then 
			if QueueUnitScan(k) then
				return
			end
		end
	end
	DebugPrint("no scanning neccesary or availible")
end)

------------CombatLog Analysing ----------------------------------------------------------------------
local inCombat = false
local combatStartTime
local boss1Name
local trinketSources = {}
--local currentCombatStats = {}
local passive, active = {}, {} --active for trinket healing, passive for passive leech healing
local original = {} --what is shown on meters for comparison
local fmt = string.format

--local zeroMT = {__index = function() return 0 end}
--local activeMT = {__index = function(t, k) local new = {[true] = 0, [false] = 0}; t[k] = new; return new end}
setmetatable(passive, {__index = function(t, k) t[k] = 0 return 0 end})
setmetatable(original, {__index = function(t, k) t[k] = 0 return 0 end})
setmetatable(active, {__index = function(t, k) local new = {[true] = 0, [false] = 0}; t[k] = new; return new end})

local function ResetTables()
	wipe(active)
	wipe(passive)
	wipe(original)
end

function Format(v) -- big numbers into 4 or less digits
	local v = floor(v)
	if v < 1000 then
		return fmt("%d", v)
	elseif v < 100000 then
		return fmt("%0.2fK", v/1000)
	elseif v < 1000000 then
		return fmt("%0.1fK", v/1000)
	elseif v < 100000000 then
		return fmt("%0.2fM", v/1000000)
	else 
		return fmt("%0.0fM", v/1000000)
	end
end

local c = CreateFrame("frame")
c:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")

local function OnCLEU(_, e, time, subevent, _, _, _, _, _, destGUID, targetName, _, _, spellID, _, _, amount, overhealing)
	if spellID == 143924 then
		local staticLeech = roster[destGUID] or 0
		local totalLeech = staticLeech
		wipe(trinketSources)
		if overhealing == amount then return end
		original[destGUID] = original[destGUID] + amount - overhealing
		for i=1, 40 do
			local name, _, _, _, _, _, _, unitID, _, _, spellID, _, _, _, leech = UnitAura(targetName, i)
			if not name then
				break
			end
			if spellID == 184671 then
				trinketSources[UnitGUID(unitID or "") or "UNKNOWN"] = leech
				totalLeech = totalLeech + leech
			end
		end
		
		if overhealing > 0 then --assign maximum possible part of effective healing to static leech, the rest is divided normaly
			local passiveLeechFraction = staticLeech/totalLeech
			local effectiveHealing = amount-overhealing
			local passivePart = passiveLeechFraction <= overhealing/amount and passiveLeechFraction*effectiveHealing or effectiveHealing
			passive[destGUID] = passive[destGUID] + passivePart
			effectiveHealing = effectiveHealing - passivePart
			totalLeech = totalLeech - staticLeech
			if effectiveHealing > 0 then
				for k, v in pairs(trinketSources) do
					active[k][k == destGUID] = active[k][k == destGUID] + (v/totalLeech)*effectiveHealing
				end
			end
		else
			passive[destGUID] = passive[destGUID] + (staticLeech/totalLeech)*amount
			for k, v in pairs(trinketSources) do
				active[k][k == destGUID] = active[k][k == destGUID] + (v/totalLeech)*amount
			end
		end
	end
end

local fStrSkada = "%s total healing: %s (+%0.1f%% from trinket) (+%s / %s / -%s)"
local fStrNoSkada = "%s - on others: %s on self: %s from others: -%s"
local validChatChannels = {
	["CHANNEL"] = true,
	["DND"] = true,
	["EMOTE"] = true,
	["GUILD"] = true,
	["INSTANCE_CHAT"] = true,
	["OFFICER"] = true,
	["PARTY"] = true,
	["RAID"] = true,
	["RAID_WARNING"] = true,
	["SAY"] = true,
	["WHISPER"] = true,
	["YELL"] = true,
}
local function StatsExport(chatType, target)
	if next(active) ~= nil then
		local chat

		if chatType == "GROUP" then
			if IsInGroup(LE_PARTY_CATEGORY_INSTANCE) then
				chat = "INSTANCE_CHAT"
			elseif IsInRaid() then
				chat = "RAID"
			elseif IsInGroup() then
				chat = "PARTY"
			else
				chat = "SAY"
			end
		elseif validChatChannels[chatType] then
			chat = chatType
		else
			chat = nil
		end

		local printFunc = chat and SendChatMessage or function(message) print(message) end

		printFunc("Leech Trinket healing:", chat, nil, target)
		for k, v in pairs(active) do
			local name = select(6, GetPlayerInfoByGUID(k))
			--healing values:
			local trinketOthers = v[false]
			local trinketSelf = v[true]
			local meterLeech = original[k]
			local passiveLeech = passive[k]
			local othersLeech = meterLeech - trinketSelf - passiveLeech
			if othersLeech < 0 then othersLeech = ceil(othersLeech) end --dont floor to -1 because of floating point number errors
			local meterTotalHealing

			--disabled for now since i dont know how to do this properly...
			if false then --and Skada and next(Skada.char.sets) and next(Skada.char.sets[1]) and Skada.char.sets[1]._playeridx then
				meterTotalHealing = Skada.char.sets[1]._playeridx[k].healing + Skada.char.sets[1]._playeridx[k].healingabsorbed
			end

			local message
			if meterTotalHealing then
				local realTotal = meterTotalHealing - meterLeech + trinketOthers + trinketSelf + passiveLeech
				local trinketBonus = (trinketSelf + trinketOthers) * 100 / (meterTotalHealing - meterLeech + passiveLeech)
				message = fStrSkada:format(name, Format(realTotal), trinketBonus, Format(trinketOthers), Format(trinketSelf), Format(othersLeech))
			else
				message = fStrNoSkada:format(name, Format(trinketOthers), Format(trinketSelf), Format(othersLeech))
			end

			printFunc(message, chat, nil, target)
		end
	else
		print("No Leech Trinket data")
	end
end

local function CombatSectionStart()
	if not inCombat then
		inCombat = true
		DebugPrint("combat start")
		ResetTables()
		combatStartTime = GetTime()
		c:SetScript("OnEvent", OnCLEU)
	end
end

local function CombatSectionEnd()
	if inCombat then
		inCombat = false
		DebugPrint("combat end")
		c:SetScript("OnEvent", nil)
		StatsExport()
		--C_Timer.After(1, StatsExport)
	end
end

local d = CreateFrame("frame")
d:RegisterEvent("PLAYER_REGEN_ENABLED")
d:RegisterEvent("PLAYER_REGEN_DISABLED")
d:RegisterEvent("ENCOUNTER_START")
d:RegisterEvent("ENCOUNTER_END")
d:SetScript("OnEvent", function(_, e, ...)
	--[[if InCombatLockdown() then
		CombatSectionStart()
	else
		CombatSectionEnd()
	end]]
	if e == "PLAYER_REGEN_DISABLED" or e == "ENCOUNTER_START" then
		CombatSectionStart()
	elseif e == "PLAYER_REGEN_ENABLED" or e == "ENCOUNTER_END" then
		CombatSectionEnd()
	end
end)

local function split(str, sep)
	local sep, fields = sep or " ", {}
	local pattern = string.format("([^%s]+)", sep)
	str:gsub(pattern, function(c) fields[#fields+1] = c end)
	return fields
end

SLASH_LEECHTRINKETCOUNTER1 = "/ltc"
SlashCmdList["LEECHTRINKETCOUNTER"] = function(msg)
	local p1, p2, p3 = unpack(split(msg or ""))
	if p1 then p1 = string.upper(p1) end
	if p2 then p2 = string.upper(p2) end
	if p3 then p3 = string.upper(p3) end
	if p1 == "HELP" then
		print("leech Trinket Counter: type /ltc <group/whisper/channel> <target/channel number>")
	end
	StatsExport(p1 or "GROUP", tonumber(p2) or p2)
end
