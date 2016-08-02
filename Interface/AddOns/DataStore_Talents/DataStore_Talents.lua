--[[	*** DataStore_Talents ***
Written by : Thaoky, EU-Marécages de Zangar
June 23rd, 2009
--]]
if not DataStore then return end

local addonName = "DataStore_Talents"

_G[addonName] = LibStub("AceAddon-3.0"):NewAddon(addonName, "AceConsole-3.0", "AceEvent-3.0", "AceComm-3.0", "AceSerializer-3.0")

local addon = _G[addonName]

local THIS_ACCOUNT = "Default"
local commPrefix = "DS_Tal"		-- let's keep it a bit shorter than the addon name, this goes on a comm channel, a byte is a byte ffs :p

-- Message types
local MSG_TALENTS_REQUEST					= 1	-- request talents ..
local MSG_TALENTS_TRANSFER					= 2	-- .. and send the data

local AddonDB_Defaults = {
	global = {
		Guilds = {
			['*'] = {			-- ["Account.Realm.Name"] 
				Members = {
					['*'] = {				-- ["MemberName"] 
						lastUpdate = nil,
						Class = nil,
						TalentTrees = {},
					}
				}
			},
		},
		Characters = {
			['*'] = {				-- ["Account.Realm.Name"] 
				lastUpdate = nil,
				Class = nil,				-- englishClass
				Specializations = {},
			}
		}
	}
}

-- This table saved reference data required to rebuild a talent tree for a class when logged in under another class.
-- The API does not provide that ability, but saving and reusing is fine
local ReferenceDB_Defaults = {
	global = {
		['*'] = {							-- "englishClass" like "MAGE", "DRUID" etc..
			Version = nil,					-- build number under which this class ref was saved
			Locale = nil,					-- locale under which this class ref was saved
			Specializations = {
				['*'] = {					-- tree name
					id = nil,
					icon = nil,
					name = nil,
					talents = {},			-- name, icon, max rank etc..for talent x in this tree
				},
			}
		},
	}
}

local UI_ICONS_PATH = "Interface\\Icons\\"
local BACKGROUND_PATH = "Interface\\TalentFrame\\"

-- *** Utility functions ***
local bAnd = bit.band

local function GetVersion()
	local _, version = GetBuildInfo()
	return tonumber(version)
end

local function LeftShift(value, numBits)
	return value * (2 ^ numBits)
end

local function RightShift(value, numBits)
	-- for bits beyond bit 31
	return math.floor(value / 2^numBits)
end

local function GetThisGuild()
	local key = DataStore:GetThisGuildKey()
	return key and addon.db.global.Guilds[key] 
end

local function GetMemberKey(guild, member)
	-- returns the appropriate key to address a guild member. 
	--	Either it's a known alt ==> point to the characters table
	--	Or it's a guild member ==> point to the guild table
	local main = DataStore:GetNameOfMain(member)
	if main and main == UnitName("player") then
		local key = format("%s.%s.%s", THIS_ACCOUNT, GetRealmName(), member)
		return addon.db.global.Characters[key]
	end
	return guild.Members[member]
end

local function GuildBroadcast(messageType, ...)
	local serializedData = addon:Serialize(messageType, ...)
	addon:SendCommMessage(commPrefix, serializedData, "GUILD")
end

local function GuildWhisper(player, messageType, ...)
	if DataStore:IsGuildMemberOnline(player) then
		local serializedData = addon:Serialize(messageType, ...)
		addon:SendCommMessage(commPrefix, serializedData, "WHISPER", player)
	end
end


-- *** Scanning functions ***
local LocaleExceptions = {}		--- see ScanTalentReference() for an explanation on the purpose of this table

-- SpellBookName = TalentTreeName	
if GetLocale() == "enUS" then
	LocaleExceptions["Elemental Combat"] = "Elemental"
	LocaleExceptions["Shadow Magic"] = "Shadow"
	LocaleExceptions["Feral"] = "Feral Combat"
elseif GetLocale() == "frFR" then
	LocaleExceptions["Combat élémentaire"] = "Élémentaire"
--	LocaleExceptions["Arcanes"] = "Arcane"
	LocaleExceptions["Magie de l'ombre"] = "Ombre"
	LocaleExceptions["Farouche"] = "Combat farouche"
	LocaleExceptions["Equilibre"] = "Équilibre"
elseif GetLocale() == "deDE" then 
	LocaleExceptions["Elementarkampf"] = "Elementar" 
	LocaleExceptions["Schattenmagie"] = "Schatten" 
elseif GetLocale() == "koKR" then 
	LocaleExceptions["회복"] = "복원"
elseif GetLocale() == "zhTW" then 
	LocaleExceptions["生存技能"] = "生存"
	LocaleExceptions["暗影魔法"] = "暗影"
	LocaleExceptions["元素戰鬥"] = "元素"
end

local function ScanTalents()
	local level = UnitLevel("player")
	if not level or level < 15 then return end		-- don't scan anything for low level characters

	local char = addon.ThisCharacter
	local _, englishClass = UnitClass("player")
	char.Class = englishClass
	
	local ref = addon.ref.global[englishClass]
	ref.Version = GetVersion()
	ref.Locale = GetLocale()
	
	local attrib = 0
	local offset = 0
	
	for tier = 1, GetMaxTalentTier() do
		for column = 1, 3 do
			local _, _, _, isSelected = GetTalentInfo(tier, column, 1)		-- param 3 = spec group, always 1 since 7.0
			
			if isSelected then
				-- basically save each tier on 2 bits : 00 = no talent on this tier, 01 = column 1, 10 = column 2, 11 = column 3
				attrib = attrib + LeftShift(column, offset)
				
				break		-- selected talent found on this line, quit this inner-loop
			end
		end
		
		offset = offset + 2		-- each rank takes 2 bits (values 0 to 3)
	end
	
	char.Specializations[GetSpecialization()] = attrib
	char.lastUpdate = time()
end

local function ScanTalentReference()
	local level = UnitLevel("player")
	if not level or level < 15 then return end		-- don't scan anything for low level characters
	
	local _, englishClass = UnitClass("player")
	local ref = addon.ref.global[englishClass]		-- point to global.["MAGE"]
	
	ref.Version = GetVersion()
	ref.Locale = GetLocale()
	
	local specialization = GetSpecialization()
	local specRef = ref.Specializations[specialization]
	
	specRef.id, specRef.name, _, specRef.icon = GetSpecializationInfo(specialization)
	
	wipe(specRef.talents)
	
	for tier = 1, GetMaxTalentTier() do
		for column = 1, 3 do
			local talentID, name, texture = GetTalentInfo(tier, column, 1)		-- param 3 = spec group, always 1 since 7.0

			-- if talent ID is not enough ..
			-- all paths start with this prefix, let's hope blue does not change this :)
			-- saves a lot of memory not to keep the full path for each talent (about 16k in total for all classes)
			-- iconPath = string.gsub(iconPath, UI_ICONS_PATH, "")
			-- iconPath = string.gsub(iconPath, string.upper(UI_ICONS_PATH), "")
			
			table.insert(specRef.talents, talentID)
			-- table.insert(specRef.talents, format("%s,%s,%s", talentID, name, texture))
			-- specRef.talents[talentNum] = id .. "|" .. nameTalent .. "|" .. iconPath .. "|" .. tier .. "|" ..  column
		
		end
	end
end


-- *** Event Handlers ***
local function OnPlayerAlive()
	ScanTalents()
	ScanTalentReference()
end


-- ** Mixins **
local function _GetReferenceTable()
	return addon.ref.global
end

local function	_GetClassReference(class)
	assert(type(class) == "string")
	return addon.ref.global[class]
end

local function _GetTreeReference(class, tree)
	assert(type(class) == "string")
	assert(type(tree) == "string")
	return addon.ref.global[class].Trees[tree]
end

local function _IsClassKnown(class)
	class = class or ""	-- if by any chance nil is passed, trap it to make sure the function does not fail, but returns nil anyway
	
	local ref = _GetClassReference(class)
	if ref.Order then		-- if the Order field is not nil, we have data for this class
		return true
	end
end

local function _ImportClassReference(class, data)
	assert(type(class) == "string")
	assert(type(data) == "table")
	
	addon.ref.global[class] = data
end

local function _GetClassTrees(class)
	assert(type(class) == "string")
	
	local ref = _GetClassReference(class)
	local order = ref.Order
	if order then
		return order:gmatch("([^,]+)")
	end
	-- to do, add a return value that does not require validity testing by the caller
end

local function _GetTreeInfo(class, tree)
	local t = _GetTreeReference(class, tree)
	
	if t then
		return UI_ICONS_PATH..t.icon, BACKGROUND_PATH .. t.background
	end
end

local function _GetTreeNameByID(class, id)
	-- returns the name of tree "id" for a given class
	assert(type(class) == "string")
	
	local index = 1
	for name in _GetClassTrees(class) do
		if index == id then
			return name
		end
		index = index + 1
	end
end

local function _GetTalentLink(id, rank, name)
	return format("|cff4e96f7|Htalent:%s:%s|h[%s]|h|r", id, (rank-1), name)
end

local function _GetNumTalents(class, tree)
	-- returns the number of talents in a given tree
	local t = _GetTreeReference(class, tree)

	if t then
		return #t.talents
	end
end

local function _GetTalentInfo(class, tree, index)
	local t = _GetTreeReference(class, tree)
	local talentInfo = t.talents[index]
	
	if not talentInfo then return end
	
	local id, name, icon, tier, column = strsplit("|", talentInfo)
	local maximumRank = 1
	
	return tonumber(id), name, UI_ICONS_PATH..icon, tonumber(tier), tonumber(column), tonumber(maximumRank)
end

local function _GetTalentRank(character, tree, specNum, index)
	local attrib = character.TalentTrees[format("%s|%s", tree, specNum)] 	-- ex: "Arcane|1"
	if not attrib then return 0 end	-- not in the DB ? 0 points spent

	index = (index - 1) * 2		-- ex: 3rd talent = bits 4-5
	return bAnd(RightShift(attrib, index), 3)
end

local function _GetActiveTalents(character)
	return character.ActiveTalents
end
	
local function _GetTalentPrereqs(class, tree, index)
	local t = _GetTreeReference(class, tree)
	local prereq = t.prereqs[index]
		
	if prereq then
		local prereqTier, prereqColumn = strsplit("|", prereq)
		return tonumber(prereqTier), tonumber(prereqColumn)
	end
end

local sentRequests		-- recently sent requests

local function _RequestGuildMemberTalents(member)
	-- requests the equipment of a given character (alt or main)
	local player = UnitName("player")
	local main = DataStore:GetNameOfMain(member)
	if not main then 		-- player is offline, check if his talents are in the DB
		local thisGuild = GetThisGuild()
		if thisGuild and thisGuild.Members[member] then		-- player found
		
			-- todo : trigger event and pass data along
			if thisGuild.Members[member].TalentTrees then		-- equipment found
				addon:SendMessage("DATASTORE_PLAYER_TALENTS_RECEIVED", player, member)
				return
			end
		end
	end
	
	-- todo
	-- if main == player then	-- if player requests the equipment of one of own alts, process the request locally, using the network works fine, but let's save the traffic.
		-- trigger the same event, _GetGuildMemberInventoryItem will take care of picking the data in the right place
		-- addon:SendMessage("DATASTORE_PLAYER_TALENTS_RECEIVED", player, member)
		-- return
	-- end
	
	-- prevent spamming remote players with too many requests
	sentRequests = sentRequests or {}
	
	if sentRequests[main] and ((time() - sentRequests[main]) < 5) then		-- if there's a known timestamp , and it was sent less than 5 seconds ago .. exit
		return
	end
	
	sentRequests[main] = time()		-- timestamp of the last request sent to this player
	GuildWhisper(main, MSG_TALENTS_REQUEST, member)
end

local function _GetGuildMemberTalentRank(guild, member, tree, specNum, index)
	local character = GetMemberKey(guild, member)
	if not character then return end

	local attrib = character.TalentTrees[format("%s|%s", tree, specNum)] 	-- ex: "Arcane|1"
	if not attrib then return 0 end	-- not in the DB ? 0 points spent

	index = (index - 1) * 2		-- ex: 3rd talent = bits 4-5
	return bAnd(RightShift(attrib, index), 3)
end

local function _GetGuildMemberNumPointsSpent(guild, member, tree, specNum)
	local character = GetMemberKey(guild, member)
	if not character then return end
	
	local attrib = character.TalentTrees[format("%s|%s", tree, specNum)] 	-- ex: "Arcane|1"
	if not attrib then return 0 end	-- not in the DB ? 0 points spent
	
	local points = 0
	while attrib ~= 0 do
		points = points + bAnd(attrib, 3)	-- add the lowest 2 bits ..
		attrib = RightShift(attrib, 2)		-- shift 2 bits to the right
	end
	return points
end

local function _GetGuildTalentsByClass(guild, class)
	-- note: I'm not inspired, this might not be the best function name :/
	local out = {}

	for name, member in pairs(guild.Members) do
		if member.Class == class then
			table.insert(out, name)
		end
	end
	
	return out
end

local PublicMethods = {
	GetReferenceTable = _GetReferenceTable,
	GetClassReference = _GetClassReference,
	GetTreeReference = _GetTreeReference,
	IsClassKnown = _IsClassKnown,
	ImportClassReference = _ImportClassReference,
	GetClassTrees = _GetClassTrees,
	GetTreeInfo = _GetTreeInfo,
	GetTreeNameByID = _GetTreeNameByID,
	GetTalentLink = _GetTalentLink,
	GetTalentInfo = _GetTalentInfo,
	GetTalentRank = _GetTalentRank,
	GetActiveTalents = _GetActiveTalents,
	GetNumPointsSpent = _GetNumPointsSpent,
	GetTalentPrereqs = _GetTalentPrereqs,
	RequestGuildMemberTalents = _RequestGuildMemberTalents,
	GetGuildMemberTalentRank = _GetGuildMemberTalentRank,
	GetGuildMemberNumPointsSpent = _GetGuildMemberNumPointsSpent,
	GetGuildTalentsByClass = _GetGuildTalentsByClass,
}


-- *** Guild Comm ***

local GuildCommCallbacks = {
	[MSG_TALENTS_REQUEST] = function(sender, alt)
			local character = DataStore:GetCharacterTable(addonName, alt)
			if character and character.Class then
				
				-- Note: DO NOT send the tree order, only send the actual data, this is important to keep the whole thing working across multiple languages.
				
				-- Data will be sent in the following format : 
				-- [1] = tree 1 spec 1 ; [2] = tree 1 spec 2
				-- [3] = tree 2 spec 1 ; [4] = tree 2 spec 2
				-- [5] = tree 3 spec 1 ; [6] = tree 3 spec 2
				
				local out = {}	
				local index = 1
				for tree in _GetClassTrees(character.Class) do		-- keep the order of talent trees, this one is consistant across languages.
					out[index] = character.TalentTrees[format("%s|%s", tree, 1)]
					index = index + 1
					out[index] = character.TalentTrees[format("%s|%s", tree, 2)]
					index = index + 1
				end
				
				GuildWhisper(sender, MSG_TALENTS_TRANSFER, alt, character.Class, out)
			end
		end,
	[MSG_TALENTS_TRANSFER] = function(sender, character, class, talents)
			local thisGuild = GetThisGuild()
			if thisGuild then
				local member = thisGuild.Members[character]
				local trees = member.TalentTrees
				
				local index = 1
				for tree in _GetClassTrees(class) do			-- keep the order of talent trees, this one is consistant across languages.
					trees[format("%s|%s", tree, 1)] = talents[index]
					index = index + 1
					trees[format("%s|%s", tree, 2)] = talents[index]
					index = index + 1
				end
				
				member.Class = class
				member.lastUpdate = time()
				addon:SendMessage("DATASTORE_PLAYER_TALENTS_RECEIVED", sender, character)
			end
		end,
}


function addon:OnInitialize()
	addon.db = LibStub("AceDB-3.0"):New(addonName .. "DB", AddonDB_Defaults)
	addon.ref = LibStub("AceDB-3.0"):New(addonName .. "RefDB", ReferenceDB_Defaults)

	DataStore:RegisterModule(addonName, addon, PublicMethods)
	DataStore:SetGuildCommCallbacks(commPrefix, GuildCommCallbacks)
	
	DataStore:SetCharacterBasedMethod("GetTalentRank")
	DataStore:SetCharacterBasedMethod("GetActiveTalents")
	
	DataStore:SetGuildBasedMethod("GetGuildMemberTalentRank")
	DataStore:SetGuildBasedMethod("GetGuildMemberNumPointsSpent")
	DataStore:SetGuildBasedMethod("GetGuildTalentsByClass")
	
	addon:RegisterComm(commPrefix, DataStore:GetGuildCommHandler())
end

function addon:OnEnable()
	addon:RegisterEvent("PLAYER_ALIVE", OnPlayerAlive)
	addon:RegisterEvent("PLAYER_TALENT_UPDATE", ScanTalents)
end

function addon:OnDisable()
	addon:UnregisterEvent("PLAYER_ALIVE")
	addon:UnregisterEvent("PLAYER_TALENT_UPDATE")
end
