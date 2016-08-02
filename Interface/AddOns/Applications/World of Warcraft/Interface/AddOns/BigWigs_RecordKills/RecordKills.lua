--@Name: BigWigs RecordKills
--@Author: Kiezo @ Bleeding Hollow
--@Notes: Many thanks to Funkydude and the creators of BigWigs for the boss mod this add-on is based on.
--@Todo:
--===============================================================================
local MOD,NS = ...
local VERSION = GetAddOnMetadata(MOD,"Version");
_G.MOD = LibStub("AceAddon-3.0"):NewAddon("RecordKills", "AceEvent-3.0", "AceConsole-3.0")

local addon = _G.MOD
local C = NS.Constants
local activeEncounters = {}
local icon = "Interface\\Icons\\INV_Misc_PocketWatch_01"

-- THE LDB OBJECT --
ldb = LibStub:GetLibrary("LibDataBroker-1.1")
Broker_RK = ldb:NewDataObject("Record Kills", {
  type = "data source",
  text = "Record Kills",
  OnEnter = function(self)
  	addon:DisplayRecords(self)
  end, 
  OnClick = function(self, button)
	if button == "RightButton" then 
		addon:CycleTierShown(self)
	else 
		addon:CycleDiffShown(self) 
	end
  end,
  OnLeave = function(self)
	GameTooltip:Hide()
  end })

-- SETTINGS DB --
local defaults = {
    profile = {
	-- options 
	RK_DEBUG = false,
	showAllTiers = false,
	showAllBosses = true,

	tierShown = C["CURRENT_TIER"],
	prevTierShown = C["CURRENT_TIER"],
	diffShown = 3,
	prevDiffShown = 3,
	recordTimes = {},
	firstLoad = true,
	warlordsUpdate = false,
	},
}

--===============================================================================
--INITIALIZING THE ADDON
--===============================================================================
function addon:OnInitialize()

 	-- Code that you want to run when the addon is first loaded goes here.
	self.db = LibStub("AceDB-3.0"):New("RKDatabase", defaults, "Default")
	addon:RegisterEvent("ZONE_CHANGED_NEW_AREA")

	if BigWigsLoader then
		BigWigsLoader.RegisterMessage(addon, "BigWigs_OnBossWipe", "onBossWipe")
		BigWigsLoader.RegisterMessage(addon, "BigWigs_OnBossEngage", "onBossEngage")
		BigWigsLoader.RegisterMessage(addon, "BigWigs_OnBossWin", "onBossWin")
		addon:dlog("BigWigsLoader present. Messages registered.")
	end

	if self.db.profile.firstLoad then
		addon:ImportRecords()
		self.db.profile.firstLoad = false
	end

	--if not self.db.profile.warlordsUpdate then
		addon:ConvertSiegeRecords()
		--self.db.profile.warlordsUpdate = true
	--end

	self:RegisterChatCommand("bwrk", "SlashHandler")
	self:RegisterChatCommand("recordkills", "SlashHandler")
end

function addon:SlashHandler(input)
	if not input or input:trim() == "" then
		print("Record Kills |c00FF0000v"..VERSION.."|r loaded successfully.")

	elseif (input == "reset") then
		for k,v in pairs(self.db.profile.recordTimes) do 
			self.db.profile.recordTimes[k]=nil
		end
		
		self.db.profile.firstLoad = true
		self.db.profile.showAllBosses = true
		self.db.profile.showAllTiers = false
		self.db.profile.diffShown = 3
		self.db.profile.prevDiffShown = 3 
		self.db.profile.tierShown = C["CURRENT_TIER"]
		self.db.profile.prevTierShown = C["CURRENT_TIER"]
		self.db.profile.RK_DEBUG = false

		addon:rlog("Data |c00FF0000Reset|r.")

	elseif (input == "debug") then
		self.db.profile.RK_DEBUG = not self.db.profile.RK_DEBUG

		if (self.db.profile.RK_DEBUG) then
			addon:rlog("Debugging |c0000FF00ON|r.")
		else
			addon:rlog("Debugging |c00FF0000OFF|r.")
		end

	elseif (input == "allBosses") then
		self.db.profile.showAllBosses = not self.db.profile.showAllBosses

		if (self.db.profile.showAllBosses) then
			addon:rlog("Showing All Bosses: |c0000FF00ON|r.")
		else
			addon:rlog("Showing All Bosses: |c00FF0000OFF|r.")
		end

	elseif (input == "import") then
		addon:ImportRecords()

	else
		local command, instance, encounter, diff, extraArg = self:GetArgs(input, 5, 1, _)
		if command == "remove" then
			if instance and encounter and diff and not extraArg and ((tonumber(diff) >= 3 and tonumber(diff) <= 7) or tonumber(diff) == 14) then
	 			addon:RemoveBestTime(instance, encounter, diff)
			else
				addon:rlog("Improper usage. [/bwrk remove \"<Instance>\" \"<Encounter>\" <Difficulty Index (3-7,14)>]")
			end
		else
			addon:rlog("Not a recognized command.")
		end
	end
end

function addon:ImportRecords()
	local statDB = BigWigsStatisticsDB
	if not statDB then return end

	local diffRef = {["10"] = 3, ["25"] = 4, ["10h"] = 5, ["25h"] = 6, ["lfr"] = 7, ["normal"] = 14, ["heroic"] = 15, ["mythic"] = 16 }	

	for zoneID, idArray in pairs (statDB) do
		for eID, diffArray in pairs (idArray) do
			for diff, _ in pairs (diffArray) do
				local raidName = addon:GetRaidNameForID(zoneID)
				local encounterName = addon:GetEncounterNameForID(eID)

				local bwRecord = addon:round(diffArray[diff].best)
				local rkRecord = addon:GetBestTime(raidName, encounterName, diffRef[diff])
		
				if bwRecord and bwRecord > 0 then
					if not rkRecord or rkRecord < 0 or bwRecord < rkRecord then
						addon:dlog(string.format("Importing %s [%i] record…", encounterName, difficulty))
						addon:SetBestTime(raidName, encounterName, diffRef[difficulty], bwRecord)
					end
				end
			end
		end
	end
	addon:rlog("BigWigs record import complete.")
end

function addon:ConvertSiegeRecords()
	local diffRef = {["10"] = 3, ["25"] = 4, ["10h"] = 5, ["25h"] = 6, ["lfr"] = 7, ["normal"] = 14, ["heroic"] = 15, ["mythic"] = 16 }
	local recordDB = self.db.profile.recordTimes["Siege of Orgrimmar"]

	if (recordDB == nil) then
		return 
	end

	for bossName, diffArray in pairs (recordDB) do
	
		local normTen = addon:GetBestTime("Siege of Orgrimmar", bossName, 3)
		local normTwentyFive = addon:GetBestTime("Siege of Orgrimmar", bossName, 4)

		--Upgrade the best normal time to heroic
		if normTen > 0 and normTwentyFive > 0  then
			if normTen < normTwentyFive then
				addon:SetBestTime("Siege of Orgrimmar", bossName, 15, normTen)
			else
				addon:SetBestTime("Siege of Orgrimmar", bossName, 15, normTwentyFive)
			end
		elseif normTen > 0 then
			addon:SetBestTime("Siege of Orgrimmar", bossName, 15, normTen)
		elseif normTwentyFive > 0 then
			addon:SetBestTime("Siege of Orgrimmar", bossName, 15, normTwentyFive)
		end
	end
	addon:dlog("Siege of Orgrimmar Flex + Normal Records Successfully Upgraded.")
end

--===============================================================================
--BOSS ENGAGE/WIPE/KILL DETECTION THROUGH BIGWIGS
--===============================================================================
function addon:onBossEngage(self, module) 
	if (not addon:ShouldRecord(addon:InstanceName()) or not module.journalId) then return end

	--add the 'start time' to activeEncounters
	activeEncounters[module.journalId] = GetTime() --denotes the start time of a boss

	--add a 'best kill' bar to BW and announce
	addon:dlog(string.format("Encounter Engaged: %s [%i]", module.moduleName, module.journalId))
end

function addon:onBossWipe(sender, module)
	if (not addon:ShouldRecord(addon:InstanceName()) or not module.journalId) then return end

	--reset the 'start time' for this activeEncounter 
	activeEncounters[module.journalId] = nil

	--kill the BW 'best kill' bar and announce
	addon:dlog(string.format("Encounter Wiped: %s [%i]", module.moduleName, module.journalId))
end

function addon:onBossWin(sender, module) 
	if (not addon:ShouldRecord(addon:InstanceName()) or not module.journalId) then return end

	--determine the current and previous best times
	local curTime = -1
	local prevTime = addon:GetBestTime(addon:InstanceName(), module.moduleName, addon:InstanceDiff())

	if activeEncounters[module.journalId] then
		curTime = addon:round(GetTime() - activeEncounters[module.journalId])
	else
		addon:rlog("[ERROR] "..module.moduleName.." defeated, but no engage broadcast was detected.")
		if BigWigsLoader then
			BigWigsLoader.RegisterMessage(addon, "BigWigs_OnBossWipe", "onBossWipe")
			BigWigsLoader.RegisterMessage(addon, "BigWigs_OnBossEngage", "onBossEngage")
			BigWigsLoader.RegisterMessage(addon, "BigWigs_OnBossWin", "onBossWin")
			addon:dlog("BigWigsLoader present. Messages registered.")
		end 
		return 
	end

	--edit record kill as necessary and report
	if curTime > 0 then
		if (prevTime <= 0 or curTime < prevTime) then
			addon:SetBestTime(addon:InstanceName(), module.moduleName, addon:InstanceDiff(), curTime)
			if (prevTime > 0) then
				local timeDiff = prevTime - curTime
				addon:rlog(string.format("%s defeated in %s (NEW RECORD - %is faster)!", module.moduleName, addon:FormatTime(curTime), timeDiff))
			else
				addon:rlog(string.format("%s [%s] defeated in %s!", module.moduleName, C["DIFFICULTY"][addon:InstanceDiff()].name, addon:FormatTime(curTime)))
			end
		end
	end
end

function addon:ShouldRecord(raidName)
	--If player isn't max level AND it's not a prepatch (X.0) then dont record
	if UnitLevel("player") ~= C["MAX_LEVEL"]  then
		if (select(4, GetBuildInfo()) % 10000 ~= 0) then
			return false
		end
	end

	local tierList = C["RAID_LOOKUP"]
	for tierNum=C["MINIMUM_TIER"], C["CURRENT_TIER"] do
		for k=1, #tierList[tierNum]["raids"] do
			if raidName == tierList[tierNum]["raids"][k].name  and UnitLevel("player") == tierList[tierNum]["raids"][k].level then
				--The raid you'rer in exists for tracking, and you are the appropriate level for it
				return true
			end
		end
	end
	return false
end
			
--===============================================================================
--DISPLAYING THE DATA IN THE LDB OBJECT
--===============================================================================
function addon:DisplayRecords(frame)

	local tierShown = {}
	local parent = frame:GetParent()
	local diffLookup = C["DIFFICULTY"][addon.db.profile.diffShown]

	GameTooltip:SetOwner(parent, parent.anchor, parent.xOff, parent.yOff)

	if not addon.db.profile.showAllTiers then
		if addon.db.profile.tierShown >= C["MINIMUM_TIER"] and addon.db.profile.tierShown <= C["CURRENT_TIER"] then
			tierShown = C["RAID_LOOKUP"][addon.db.profile.tierShown]["raids"]
		else
			tierShown = C["RAID_LOOKUP"][C["CURRENT_TIER"]]["raids"]
		end

		GameTooltip:AddLine(string.format("Tier %i Record Kills [%s]\n", addon.db.profile.tierShown, diffLookup.name))

		for i=1, #tierShown do --Cycle through all the raids in the tier
			local raidName = tierShown[i].name

			if addon:RecordsForDifficulty(raidName, diffLookup.index) > 0 or addon.db.profile.showAllBosses then
				GameTooltip:AddLine(raidName)
				local bossList = tierShown[i]["encounters"]

				for k=1, #bossList do
					local record = addon:GetBestTime(raidName, bossList[k].eName, diffLookup.index)

					if (record > 0) then
						GameTooltip:AddDoubleLine("  |cFFFFFFFF".. bossList[k].eName .."", ""..addon:FormatTime(record).."|r")
					elseif addon.db.profile.showAllBosses then
						if (bossList[k].heroicOnly and diffLookup.index > 4 and diffLookup.index < 7) or not bossList[k].heroicOnly then
							GameTooltip:AddDoubleLine("  |cFFFFFFFF".. bossList[k].eName .."", "|cFF00FF00ALIVE|r")
						end
					end
				end	 		
			end	
		end
	else
		--Showing ALL tiers for this current level (ex: all MoP tiers)
		GameTooltip:AddLine(string.format("Record Kills [%s]\n", diffLookup.name))

		for tierNum = C["MINIMUM_TIER"], C["CURRENT_TIER"] do
			local tierShown = C["RAID_LOOKUP"][tierNum]["raids"]

			for i=1, #tierShown do --Cycle through all the raids in the tier
				local raidName = tierShown[i].name

				if tierShown[i].level == UnitLevel("player") and addon:TierHasDifficulty(tierNum, diffLookup.index) then
					if addon:RecordsForDifficulty(raidName, diffLookup.index) > 0 or addon.db.profile.showAllBosses then
						GameTooltip:AddLine(raidName)
						local bossList = tierShown[i]["encounters"]

						for j=1, #bossList do
							local record = addon:GetBestTime(raidName, bossList[j].eName, diffLookup.index)	

							if (record > 0) then
								GameTooltip:AddDoubleLine("  |cFFFFFFFF".. bossList[j].eName .."", ""..addon:FormatTime(record).."|r")
							elseif addon.db.profile.showAllBosses then
								if (bossList[j].heroicOnly and diffLookup.index > 4 and diffLookup.index < 7) or not bossList[j].heroicOnly then
									GameTooltip:AddDoubleLine("  |cFFFFFFFF".. bossList[j].eName .."", "|cFF00FF00ALIVE|r")
								end
							end
						end
					end	 		
				end	
			end
		end	
	end

	if GameTooltip:NumLines() == 1 then GameTooltip:AddLine("No records available.") end
		GameTooltip:Show()
end

function addon:RecordsForDifficulty(raidName, difficulty)
	if not addon.db.profile.recordTimes[raidName] then return 0 end
	local count = 0

	for bossName, diffArray in pairs(addon.db.profile.recordTimes[raidName]) do
		local record = addon:GetBestTime(raidName, bossName, difficulty)
		if record and record > 0 then
			count = count + 1
		end
	end
	return count
end

function addon:TierHasDifficulty(tierNum, hasDiff)

	if tierNum >= 14 and tierNum < 16 then
		--This tier adopts the legacy raid difficulties
		return hasDiff >= 3 and hasDiff <= 7
	
	elseif tierNum == 16 then
		--This tier adopts legacy AND new raid difficulties
		return (hasDiff >= 3 and hasDiff <= 7) or (hasDiff >= 14 and hasDiff <= 16)

	elseif tierNum > 16 then
		--This tier adopts the new raid difficulties
		return hasDiff >= 14 and hasDiff <= 16
	end
end

function addon:FormatTime(seconds)
	if (not seconds or seconds <= 0) then
		return "0:00"
	end

	local mins = math.floor(seconds/60)
	local secs = seconds - (mins*60)
	return string.format("%i:%02d", mins, secs)
end

--===============================================================================
--HANDLING OF UPDATING THE TIER/DIFFICULTY SHOWN
--===============================================================================
function addon:ZONE_CHANGED_NEW_AREA()
	if (addon:IsRaid()) then
		addon.db.profile.prevDiffShown = addon.db.profile.diffShown
		addon:SetDiffShown(addon:InstanceDiff())

		addon.db.profile.prevTierShown = addon.db.profile.tierShown
		addon:SetTierShown(addon:GetTierForRaid(addon:InstanceName()))

		if BigWigsLoader then
			BigWigsLoader.RegisterMessage(addon, "BigWigs_OnBossWipe", "onBossWipe")
			BigWigsLoader.RegisterMessage(addon, "BigWigs_OnBossEngage", "onBossEngage")
			BigWigsLoader.RegisterMessage(addon, "BigWigs_OnBossWin", "onBossWin")
			addon:dlog("BigWigsLoader present. Messages registered.")
		end
	else
		addon:SetDiffShown(addon.db.profile.prevDiffShown)
		addon:SetTierShown(addon.db.profile.prevTierShown)
	end
end

function addon:CycleDiffShown(self)
	local diff = addon.db.profile.diffShown + 1

	--This is tier is legacy, pre-Mythic and 6.0
	if addon.db.profile.tierShown < 16 then
		if diff > 7 then
			diff = 3
		end
	end

	--This tier adopts the new raid difficulties as well as the legacy
	if addon.db.profile.tierShown == 16 then
		if diff > 7 and diff < 14 then
			diff = 14
		elseif diff > 16 then
			diff = 3
		end
	end

	--This tier adopts the new raid difficulties only
	if addon.db.profile.tierShown > 16 then
		if diff > 16 then
			diff = 7
		elseif diff > 7 and diff < 14 then
			diff = 14
		end
	end
				
	addon.db.profile.diffShown = diff
	addon.db.profile.prevDiffShown = diff
	addon:DisplayRecords(self)
end

function addon:CycleTierShown(self)
	addon.db.profile.tierShown = addon.db.profile.tierShown + 1	
	if addon.db.profile.tierShown > C["CURRENT_TIER"] then addon.db.profile.tierShown = C["MINIMUM_TIER"] end

	if addon.db.profile.diffShown >= 14 and addon.db.profile.tierShown < 16 then -- Flex difficulty where Flex doesn't exist
		addon:SetDiffShown(3)
	elseif addon.db.profile.diffShown < 7 and addon.db.profile.tierShown > 16 then --Legacy difficulties where it doesn't exist
		addon:SetDiffshown(7)
	end

	addon.db.profile.prevTierShown = addon.db.profile.tierShown
	addon:DisplayRecords(self)
end

function addon:SetDiffShown(newDiff)
	if (newDiff < 3 or newDiff > 7) and not (newDiff >= 14 and newDiff <= 17) then return end
	addon.db.profile.diffShown = newDiff
end

function addon:SetTierShown(newTier)
	if newTier == -1 or newTier > C["CURRENT_TIER"] or newTier < C["MINIMUM_TIER"] then return end
	addon.db.profile.tierShown = newTier	
end

--===============================================================================
--STORING/RETRIEVING/REMOVING KILL TIME INFORMATION
--===============================================================================
function addon:GetBestTime(instance, boss, difficulty)
	if (self.db.profile.recordTimes[instance]) then
		if (self.db.profile.recordTimes[instance][boss]) then
			if (self.db.profile.recordTimes[instance][boss][difficulty]) then
				return self.db.profile.recordTimes[instance][boss][difficulty]
			end
		end
	end
	return -1;
end

function addon:SetBestTime(instance, boss, difficulty, time)
	if not instance or not boss or not difficulty or not time or time <= 0 then
		addon:dlog("Error with :SetBestTime() parameters")
		return
	end

	local prevTime = addon:GetBestTime(instance, boss, difficulty)
	if (not prevTime or prevTime < 0 or prevTime > time) then
		if(not self.db.profile.recordTimes[instance]) then self.db.profile.recordTimes[instance] = {} end
		if(not self.db.profile.recordTimes[instance][boss]) then self.db.profile.recordTimes[instance][boss] = {} end

		self.db.profile.recordTimes[instance][boss][difficulty] = time
		addon:dlog("RK: Time Set for "..boss..": "..time)
	end

	--If this is a heroic record and there is no normal record for this boss, duplicate it to normal.
	if difficulty == 5 or difficulty == 6 then
		local normTime = addon:GetBestTime(instance, boss, difficulty-2)
		if (not normTime or normTime < 0) then
			addon:SetBestTime(instance, boss, difficulty-2)
		end
	end
end

function addon:RemoveBestTime(instance, boss, difficulty)
	if (addon:GetBestTime(instance, boss, tonumber(difficulty)) > 0) then
		self.db.profile.recordTimes[instance][boss][tonumber(difficulty)] = -1 --resets to the 'nil' value
		addon:rlog(boss.." [".. C["DIFFICULTY"][tonumber(difficulty)].name .."] record removed.") 
	else
		addon:rlog("No record found to remove.") 
	end
end

--===============================================================================
--UTILITY FUNCTIONS
--===============================================================================
function addon:IsRaid()
	return select(2, GetInstanceInfo()) == "raid"
end

function addon:InstanceName()
	return select (1, GetInstanceInfo())
end

function addon:InstanceDiff()
	local diff = select(3, GetInstanceInfo())

	if diff == 17 then
		diff = 7
	end

	return diff
end

function addon:GetTierForRaid(raidName)
	for i=C["MINIMUM_TIER"], C["CURRENT_TIER"] do
		for k=1, #C["RAID_LOOKUP"][i]["raids"] do
			if C["RAID_LOOKUP"][i]["raids"][k].name == raidName then
				return i
			end
		end
	end
	return -1
end 

function addon:GetRaidNameForID(raidID)
	for i=C["MINIMUM_TIER"], C["CURRENT_TIER"] do
		for k=1, #C["RAID_LOOKUP"][i]["raids"] do
			if C["RAID_LOOKUP"][i]["raids"][k].zoneID == raidID then
				return C["RAID_LOOKUP"][i]["raids"][k].name
			end
		end
	end
	return "Unknown"
end 

function addon:GetEncounterNameForID(eID)
	for i=C["MINIMUM_TIER"], C["CURRENT_TIER"] do
		for k=1, #C["RAID_LOOKUP"][i]["raids"] do
			for j=1, #C["RAID_LOOKUP"][i]["raids"][k]["encounters"] do
				if C["RAID_LOOKUP"][i]["raids"][k]["encounters"][j].eID == eID then
					return C["RAID_LOOKUP"][i]["raids"][k]["encounters"][j].eName
				end
			end
		end
	end
	return "Unknown"
end 

function addon:round(number)
	if number then
		return math.floor(number + 0.5)
	end
end

--===============================================================================
--DEBUGGING FUNCTIONS
--===============================================================================
function addon:dlog(text)
	if (addon.db.profile.RK_DEBUG) then
		print("|c00FF0000RK|r: "..text)
	end
end

function addon:rlog(text)
	print("|c00FF0000RK|r: "..text)
end	