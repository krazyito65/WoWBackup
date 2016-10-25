local GlobalAddonName, ExRT = ...

local VExRT = nil

local module = ExRT.mod:New("AutoLogging",ExRT.L.Logging,nil,true)
local ELib,L = ExRT.lib,ExRT.L

module.db.minRaidMapID = ExRT.SDB.charLevel > 100 and 1520 or 1205
module.db.minPartyMapID = 1456

function module.options:Load()
	self:CreateTilte()

	self.enableChk = ELib:Check(self,L.LoggingEnable,VExRT.Logging.enabled):Point(5,-30):OnClick(function(self) 
		if self:GetChecked() then
			VExRT.Logging.enabled = true
			module:Enable()
		else
			VExRT.Logging.enabled = nil
			module:Disable()
		end
	end)
		
	self.shtml1 = ELib:Text(self,"- "..L.RaidLootT17Highmaul.."\n- "..L.RaidLootT17BF.."\n -"..L.RaidLootT18HC.."\n -"..L.S_ZoneT19Nightmare..(ExRT.clientVersion >= 70100 and "\n -"..L.S_ZoneT19ToV or "").."\n -"..L.S_ZoneT19Suramar,12):Size(620,0):Point("TOP",0,-65):Top()

	self.shtml2 = ELib:Text(self,L.LoggingHelp1,12):Size(650,0):Point("TOP",self.shtml1,"BOTTOM",0,-15):Top()
	
	self.enable5ppLegion = ELib:Check(self,DUNGEONS..": "..EXPANSION_NAME6.." ("..PLAYER_DIFFICULTY6.."+)",VExRT.Logging.enable5ppLegion):Point("TOP",self.shtml2,"BOTTOM",0,-15):Point("LEFT",self,5,0):OnClick(function(self) 
		if self:GetChecked() then
			VExRT.Logging.enable5ppLegion = true
		else
			VExRT.Logging.enable5ppLegion = nil
		end
	end)
end


function module:Enable()
	module:RegisterEvents('ZONE_CHANGED_NEW_AREA','CHALLENGE_MODE_START')
	module.main:ZONE_CHANGED_NEW_AREA()
end
function module:Disable()
	module:UnregisterEvents('ZONE_CHANGED_NEW_AREA','CHALLENGE_MODE_START')
	module.main:ZONE_CHANGED_NEW_AREA()
end


function module.main:ADDON_LOADED()
	VExRT = _G.VExRT
	VExRT.Logging = VExRT.Logging or {}

	if VExRT.Logging.enabled then
		module:Enable()
	end
end

local function GetCurrentMapForLogging()
	if VExRT.Logging.enabled then
		local _, zoneType, difficulty, _, _, _, _, mapID = GetInstanceInfo()
		if difficulty == 7 or difficulty == 17 then
			return false
		elseif zoneType == 'raid' and (tonumber(mapID) and mapID >= module.db.minRaidMapID) then
			return true
		elseif VExRT.Logging.enable5ppLegion and difficulty == 8 and (tonumber(mapID) and mapID >= module.db.minPartyMapID) then
			return true
		end
	end
	return false
end

local prevZone = false
local function ZoneNewFunction()
	local zoneForLogging = GetCurrentMapForLogging()
	if zoneForLogging then
		LoggingCombat(true)
		print('==================')
		print(ExRT.L.LoggingStart)
		print('==================')
	elseif prevZone and LoggingCombat() then
		LoggingCombat(false)
		print('==================')
		print(ExRT.L.LoggingEnd)
		print('==================')
	end
	prevZone = zoneForLogging
end

function module.main:ZONE_CHANGED_NEW_AREA()
	ExRT.F.ScheduleTimer(ZoneNewFunction, 2)
end
function module.main:CHALLENGE_MODE_START()
	ExRT.F.ScheduleTimer(ZoneNewFunction, 1)
end