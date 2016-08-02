--@Name: BigWigs [AutoReply]
--@Author: Kiezo @ Bleeding Hollow
--@ToDo:
--===============================================================================
local MOD,NS = ...
local VERSION = GetAddOnMetadata(MOD,"Version"); 
--Blizzard passes the addon name and a table with scope in the ellipsis. 

_G.MOD = LibStub("AceAddon-3.0"):NewAddon("Auto Reply", "AceEvent-3.0", "AceConsole-3.0") 
local addon = _G.MOD

-- CONSTANTS --
local diffRef = {[0] = "", [3] = "[10]", [4] = "[25]", [5] = "[10H]", [6] = "[25H]", [7] = "[LFR]", [14] = "[Normal]", [15] = "[Heroic]", [16] = "[Mythic]", [17] = "[LFR]"}
local filterList = {"<BigWigs>", "<Deadly Boss Mods>", "<DBM>"}

local inCombatMessage = "<BigWigs> %s is currently in combat with %s %s."
local endCombatMessage = "<BigWigs> %s has %s %s %s."

-- Saved Variables
BigWigs_AutoReplyFilterWhispers = true
BigWigs_AutoReplyIgnoreList = {} --Add phrases here that will not trigger an auto-reply or be filtered

local arDebug = false
local arEncounterInProgress = false
local arWhisperers = {}
local arEncounterName = ""

--===============================================================================
--INITIALIZATION
--===============================================================================
function addon:OnInitialize()

	self:RegisterEvent("CHAT_MSG_WHISPER")	
	self:RegisterEvent("CHAT_MSG_BN_WHISPER")
	self:RegisterEvent("PLAYER_ENTERING_WORLD")

	if BigWigsLoader then
		BigWigsLoader.RegisterMessage(addon, "BigWigs_OnBossEngage", "onBossEngage")
		BigWigsLoader.RegisterMessage(addon, "BigWigs_OnBossWipe", "onBossEnd")
		BigWigsLoader.RegisterMessage(addon, "BigWigs_OnBossWin", "onBossEnd")
		addon:dprint("BigWigsLoader present. Messages registered.")
	end

	self:RegisterChatCommand("bwar", "SlashHandler")
end

function addon:SlashHandler(input)
	if not input or input:trim() == "" then
		print("Auto Reply |c00FF0000v"..VERSION.."|r loaded successfully.")	
	elseif (input == "debug") then
		arDebug = not arDebug
		if (arDebug) then
			print("|c00FF0000AR|r: Debugging |c0000FF00ON|r.")
		else
			print("|c00FF0000AR|r: Debugging |c00FF0000OFF|r.")
		end	
	elseif (input == "filter") then
		BigWigs_AutoReplyFilterWhispers = not BigWigs_AutoReplyFilterWhispers
		if (BigWigs_AutoReplyFilterWhispers) then
			print("|c00FF0000AR|r: Filtering |c0000FF00ON|r.")
		else
			print("|c00FF0000AR|r: Filtering |c00FF0000OFF|r.")
		end
	elseif (input == "resetIgnore") then
		wipe(BigWigs_AutoReplyIgnoreList)
		print("|c00FF0000AR|r: Ignore list wiped.")
	else
		local command, toIgnore, extraArg = self:GetArgs(input, 3, 1, _)
		if command == "ignore" then
			if type(toIgnore) == "string" and not extraArg then
				tinsert(BigWigs_AutoReplyIgnoreList, toIgnore)
				print("|c00FF0000AR|r: Now ignoring messages containing: \""..toIgnore.."\"")
			else
				print("|c00FF0000AR|r: Improper usage. [/bwar ignore \"<Phrase to Ignore>\"")
			end
		else
			print("|c00FF0000AR|r: Not a recognized command.")
		end
	end
end

function addon:PLAYER_ENTERING_WORLD()
	wipe(arWhisperers)
	arEncounterName = ""
	arEncounterInProgress = false
end

--===============================================================================
--HANDLING WHISPERS
--===============================================================================
local function shouldFilterAutoReply(self, event, msg, author)
	for _, word in ipairs(filterList) do
    		if (string.find(msg, word)) then
     			return true
		end
	end
	return false
end

function addon:shouldIgnore(msg)
	for _, word in ipairs(BigWigs_AutoReplyIgnoreList) do
    		if (string.find(msg, word)) then
     			return true
		end
	end
	return false
end

function addon:onBossEngage(self, module)
	if (not module.moduleName or not module.journalId) then return end
	addon:dprint("Boss Engaged: "..module.moduleName)

	arEncounterName = module.moduleName
	arEncounterInProgress = true
	wipe(arWhisperers)

	if BigWigs_AutoReplyFilterWhispers then
		ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER_INFORM", shouldFilterAutoReply)
		ChatFrame_AddMessageEventFilter("CHAT_MSG_BN_WHISPER_INFORM", shouldFilterAutoReply)
		ChatFrame_AddMessageEventFilter("CHAT_MSG_BN_WHISPER", shouldFilterAutoReply)
		ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER", shouldFilterAutoReply)
	end
end

function addon:onBossEnd(self, module)
	if (not module.moduleName or not module.journalId) then return end
	addon:dprint("Boss End: "..module.moduleName)

	local result = ""
	local playerList = ""
	if (self == "BigWigs_OnBossWipe") then result = "wiped on" else result = "defeated" end

	for i, whisperer in ipairs(arWhisperers) do
		if type(whisperer) == "string" then
			--this was a normal whisper sent
			SendChatMessage(string.format(endCombatMessage, UnitName("player"), "ended combat with", addon:RaidDifficulty(), arEncounterName), "WHISPER", nil, whisperer)
			playerList = playerList.." ".. whisperer
		else
			--this was a BNet whisper, so I have an ID instead
			BNSendWhisper(whisperer, string.format(endCombatMessage, UnitName("player"), "ended combat with", addon:RaidDifficulty(), arEncounterName), "WHISPER")
			playerList = playerList.." ".. addon:FriendNameForID(whisperer)
		end
	end

	if #arWhisperers > 0 and BigWigs_AutoReplyFilterWhispers then
		print(string.format("|c00FF0000AR|r: Received whispers from:%s.", playerList))
	end

	wipe(arWhisperers)
	arEncounterName = ""
	arEncounterInProgress = false

	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_WHISPER_INFORM", shouldFilterAutoReply)
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_BN_WHISPER_INFORM", shouldFilterAutoReply)
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_WHISPER", shouldFilterAutoReply)
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_BN_WHISPER", shouldFilterAutoReply)
end

function addon:CHAT_MSG_WHISPER(self, msg, sender)

	addon:dprint("Chat Whisper Received")
	if not arEncounterInProgress or addon:shouldIgnore(msg) then return end

	if type(sender) == "string" and sender~=UnitName("player") and not UnitInRaid(sender) and (not tContains(arWhisperers, sender) or msg == "status") then
		if (not tContains(arWhisperers, sender)) then
			table.insert(arWhisperers, sender)
		end	

		local eDiff = addon:RaidDifficulty()
		local message = addon:CreateChatMessage(eDiff, arEncounterName)
		SendChatMessage(message, "WHISPER", nil, sender)
	end
end

function addon:CHAT_MSG_BN_WHISPER(self, msg, sender, _, _, _, _, _, _, _, _, _, _, pID)

	addon:dprint("BNet Whisper Received")
	if not arEncounterInProgress or addon:shouldIgnore(msg) then return end

	if type(pID) == "number" and not BNIsSelf(pID) and (not tContains(arWhisperers, pID) or msg == "status") then
		if (not tContains(arWhisperers, pID)) then
			addon:dprint("Inserting BNet Whisperer.")
			table.insert(arWhisperers, pID)
		end

		local eDiff = addon:RaidDifficulty()
		local message = addon:CreateChatMessage(eDiff, arEncounterName)
		BNSendWhisper(pID, message)
		addon:dprint("Sending BNet Autoreply")
	end
end

function addon:CreateChatMessage(difficulty, eName)
	return string.format(inCombatMessage, UnitName("player"), difficulty, eName)
end

--===============================================================================
--UTILITY FUNCTIONS
--===============================================================================		
function addon:RaidDifficulty()

	local diff = diffRef[select(3, GetInstanceInfo())]
	if diff then return diff else return "N/A" end
end

function addon:FriendNameForID(pID)
	for i=1, BNGetNumFriends() do
		local presenceID, presenceName = BNGetFriendInfo(i)
		if pID == presenceID then
			return presenceName
		end
	end
	return "Unknown"
end

--===============================================================================
--DEBUGGING FUNCTIONS
--===============================================================================
function addon:dprint(text)
	if (arDebug) then
		print("AutoReply: "..text)
	end
end