--[[
	LootMaster
]]--

LootMaster          = LibStub("AceAddon-3.0"):NewAddon("EPGPLootMaster", "AceConsole-3.0", "AceComm-3.0", "AceEvent-3.0", "AceTimer-3.0", "AceHook-3.0")

local version 	    = "6.69"
local dVersion 	    = "2015-07-08T07:42:10Z"
local iVersion	    = 4
local iVersionML	  = 12
local _G            = _G

local debug         = false
local addon         = LootMaster		-- Local instance of the addon

local L = LibStub("AceLocale-3.0"):GetLocale("EPGPLootmaster")
local LibBase64 = LibStub("LibBase64-1.0")
LootMaster.base64 = LibBase64

--[[
    Returns a table serialized as a string.
]]
function tprint( data, level )
	level = level or 0
	local ident=strrep('    ', level)
	if level>5 then return end

	if type(data)~='table' then print(tostring(data)) end;

	for index,value in pairs(data) do repeat
		if type(value)~='table' then
			print( ident .. '['..index..'] = ' .. tostring(value) .. ' (' .. type(value) .. ')' );
			break;
		end
		print( ident .. '['..index..'] = {')
        tprint(value, level+1)
        print( ident .. '}' );
	until true end
end

function LootMaster:GetVersionString()
    return self.version;
end

function LootMaster:OnInitialize()

    self.version 	= version;
    self.dVersion 	= dVersion;
    self.iVersion 	= iVersion;

    self.db = LibStub("AceDB-3.0"):New("EPGPLootMaster")

    self.db:RegisterDefaults(
    {
      profile = {
        buttonNum         = 4,

        button1           = L['Mainspec'],
        button1_color     = '55f00f',
        button1_fallback  = 'NEED',

        button2           = L['Minor Upgrade'],
        button2_color     = '41831d',
        button2_fallback  = 'MINORUPGRADE',

        button3           = L['Offspec'],
        button3_color     = 'ffc01b',
        button3_fallback  = 'OFFSPEC',

        button4           = L['Greed'],
        button4_color     = 'c65b00',
        button4_fallback  = 'GREED',

        button5_color     = 'ffffff',
        button6_color     = 'ffffff',
        button7_color     = 'ffffff',

        button5           = L['Button 5'],
        button6           = L['Button 6'],
        button7           = L['Button 7'],

        hideResponses = false,
        auto_announce_threshold = 4,
        AutoLootThreshold = 2,
        hideOnSelection = true,
        loot_timeout = 60,
        filterEPGPLootmasterMessages = true,

		voting = true,
		votingDisallowSelf = true,
		votingSendGuildRank = false,
		votingSendGuildRankList = {true,true},
        votingSendAssistantOnly = true,

		bidding = true,
		biddingWhen = 'manually',

        monitor = true,
        monitorSend = true,
		monitorSendGuildRank = false,
		monitorSendGuildRankList = {true,true},
        monitorSendAssistantOnly = true,
        monitorThreshold = 2,
        ignoreResponseCorrections = false,
        hideMLOnCombat = true,
        hideSelectionOnCombat = false,
        allowCandidateNotes = true,
        monitorIncomingThreshold = 3,
        audioWarningOnSelection = true,
        use_epgplootmaster = 'ask'
      }
    })

    self.lootList   = {};
    self.lootMLCache = {};

    -- Client responses, DO NOT CHANGE ORDER!
    self.RESPONSE = {
        { ["CODE"]      = "NOTANNOUNCED",   ["SORT"] =  100,  ["COLOR"] = {1,1,1},        ["TEXT"] = L['Not yet announced to candidate'] },
        { ["CODE"]      = "INIT",           ["SORT"] =  200,  ["COLOR"] = {1,0,0},        ["TEXT"] = L['Offline or lootmaster not installed?'] },
        { ["CODE"]      = "WAIT",           ["SORT"] =  300,  ["COLOR"] = {1,0.5,0},      ["TEXT"] = L['Making selection, please wait...'] },
        { ["CODE"]      = "TIMEOUT",        ["SORT"] =  400,  ["COLOR"] = {1,0,1},        ["TEXT"] = L['Candidate did not respond on time.'] },
        { ["CODE"]      = "NEED",           ["SORT"] =  500,  ["COLOR"] = {0.5,1,0.5},    ["TEXT"] = L['Mainspec'] },
        { ["CODE"]      = "GREED",          ["SORT"] =  800,  ["COLOR"] = {1,1,0},        ["TEXT"] = L['Greed / Alt'] },
        { ["CODE"]      = "DISENCHANT",     ["SORT"] =  900,  ["COLOR"] = {0,0.8,1},      ["TEXT"] = '--disenchanter--' },
        { ["CODE"]      = "PASS",           ["SORT"] = 1000,  ["COLOR"] = {0.6,0.6,0.6},  ["TEXT"] = L['Pass'] },
        { ["CODE"]      = "AUTOPASS",       ["SORT"] = 1100,  ["COLOR"] = {0.6,0.6,0.6},  ["TEXT"] = L['Auto pass (not eligible)'] },
        { ["CODE"]      = "OFFSPEC",        ["SORT"] =  700,  ["COLOR"] = {1,1,0.5},      ["TEXT"] = L['Offspec'] },
        { ["CODE"]      = "MINORUPGRADE",   ["SORT"] =  600,  ["COLOR"] = {0.2,0.7,0.2},  ["TEXT"] = L['Minor Upgrade'] },
        { ["CODE"]      = "button1",        ["SORT"] =  401,  ["COLOR"] = {1,1,1},        ["TEXT"] = L['Button 1'], ["CUSTOM"] = true },
        { ["CODE"]      = "button2",        ["SORT"] =  402,  ["COLOR"] = {1,1,1},        ["TEXT"] = L['Button 2'], ["CUSTOM"] = true },
        { ["CODE"]      = "button3",        ["SORT"] =  403,  ["COLOR"] = {1,1,1},        ["TEXT"] = L['Button 3'], ["CUSTOM"] = true },
        { ["CODE"]      = "button4",        ["SORT"] =  404,  ["COLOR"] = {1,1,1},        ["TEXT"] = L['Button 4'], ["CUSTOM"] = true },
        { ["CODE"]      = "button5",        ["SORT"] =  405,  ["COLOR"] = {1,1,1},        ["TEXT"] = L['Button 5'], ["CUSTOM"] = true },
        { ["CODE"]      = "button6",        ["SORT"] =  406,  ["COLOR"] = {1,1,1},        ["TEXT"] = L['Button 6'], ["CUSTOM"] = true },
        { ["CODE"]      = "button7",        ["SORT"] =  407,  ["COLOR"] = {1,1,1},        ["TEXT"] = L['Button 7'], ["CUSTOM"] = true }
    }
    for i,d in ipairs(self.RESPONSE) do
        self.RESPONSE[d.CODE] = i;
        self.RESPONSE[d.CODE .. "_TEXT"] = d.TEXT;
    end
    LootMaster.RESPONSE = self.RESPONSE;

    -- Loot receive types.
    self.LOOTTYPE = {
        { ["CODE"]      = "UNKNOWN",        ["TEXT"] = L['%s received %s for unknown reason%4$s.'] },
        { ["CODE"]      = "GP",             ["TEXT"] = L['%s received %s for %s GP%s.'] },
        { ["CODE"]      = "DISENCHANT",     ["TEXT"] = L['%s received %s for disenchantment%4$s.'] },
        { ["CODE"]      = "BANK",           ["TEXT"] = L['%s received %s for bank%4$s.'] }
    }
    for i,d in ipairs(self.LOOTTYPE) do
        self.LOOTTYPE[d.CODE] = i;
        self.LOOTTYPE[d.CODE .. "_TEXT"] = d.TEXT;
    end
    LootMaster.LOOTTYPE = self.LOOTTYPE;

    -- Register communications
    self:RegisterComm("EPGPLootMasterC",	"CommandReceived")

      -- Register communications for version checking
    self:RegisterComm("EPGPLMVChk",			"CommVersionCheckRequest")
    self:RegisterComm("EPGPLMVRsp",			"CommVersionCheckResponse")
    self:RegisterComm("EPGPLMVHdlr",		"CommVersionCheckHandler")

      -- Check for updates versions in the guild
	if IsInGuild() then
		self:SendCommMessage("EPGPLMVChk",      iVersion .. "_" .. version, "GUILD")
	end

    self:RegisterEvent("PLAYER_REGEN_DISABLED", "EnterCombat");
    self:RegisterEvent("PLAYER_REGEN_ENABLED", "LeaveCombat");

	self:RegisterEvent("PLAYER_ENTERING_WORLD", "EnterWorld");

    self:RegisterChatCommand("lm",	        "SlashHandler")

    self:RegisterChatCommand("rl", function() ReloadUI() end)
end

function LootMaster:EnterWorld()
	RegisterAddonMessagePrefix("EPGPLootMasterC")
	RegisterAddonMessagePrefix("EPGPLMVChk")
	RegisterAddonMessagePrefix("EPGPLMVRsp")
	RegisterAddonMessagePrefix("EPGPLMVHdlr")
	RegisterAddonMessagePrefix("EPGPLootMasterML")
end

function LootMaster:OnEnable()
    -- Postpone the chathooks to make sure we're the last hooking these.
    self:ScheduleTimer("PostEnable", 1)

    -- We don't need these right away, so localize them after a 10 second delay.
    self:ScheduleTimer("LocalizeLootTypes", 10)
end

function LootMaster:PostEnable()
    -- Inbound Chat Hooking
    ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER_INFORM",    LootMaster.ChatFrameFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER",  		  LootMaster.ChatFrameFilter)
    ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY",             LootMaster.ChatFrameFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_PARTY_LEADER",      LootMaster.ChatFrameFilter)
    ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID",              LootMaster.ChatFrameFilter)
    ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_LEADER",       LootMaster.ChatFrameFilter)
end

-- We're having problems with crossrealm groups and the Ambiguate function only makes it worse.
-- In the backend storage we should always store the full player name incl the RealmName.
-- In the interface we should use the normal Ambiguate to show the local names
-- This is since we communicate this via addon channels to the other players
--
-- cache variable for the realmName, because various functions are bugged
-- we have to remove the spaces and dashes from the realmName for it to work!
local realmName = gsub(gsub(GetRealmName(), ' ', ''), '-', '')
function LootMaster.UnAmbiguate(name)
	-- Don't postfix these default values
	if name == '' or name == nil or name == 'RAID' or name == 'PARTY' or name == 'BATTLEGROUND' or name == 'GUILD' then
		return name
	end

	-- Let the wow client try to add the realmname
	-- This function is really buggy by the way... If realm name has space in it,
	-- it expects you to deliver it to this function without the spaces. /facepalm
	-- So Mackatack-Lightning's Hammer just returns the same, Mackatack-Lightning'sHammer
	-- does only return Mackatack, as is expected. The quote is preserved, just the space is
	-- removed.
	-- Other functions, such as SendAddonMessage and SendChatMessage do work with the space removed
	-- or with the spaces intact. UnitIsUnit etc still only work without the server names. Now quite
	-- Sure how to properly use these functions cross-realm
	local res = LootMaster.Ambiguate(name, "none")

	-- No realmname on the playerName? add it
	if strfind(res, "-", nil, true) == nil then
		-- add the realmname to the player name
		res = res .. "-" .. realmName
	end

	return res
end

-- Just a quick hack for the missing GetNumLootSlots function
function LootMaster.GetNumLootSlots()
    return GetNumLootItems() + 50
end

-- Just a local cache of the Ambiguate function
-- This function currently is broken if there are spaces in the
-- player/realmName. It's easily detected when the blizz devs have fixed this
-- So leave a message to the player when they have so they can report back
local ambiguateSpacesBroken = true
if strfind(GetRealmName(), ' ', nil, true) ~= nil then
	-- We're on a server with a space in the realmName, see if blizzard has fixed the error
	if Ambiguate(UnitName("player").."-"..GetRealmName(), "none") == UnitName("player") then
		LootMaster:Print("NOTICE! Ambiguate spaces error has been fixed by Blizzard, please report back to EPGPLootmaster developer!")
		-- Auto unpatch
		ambiguateSpacesBroken = false
		realmName = GetRealmName()
		-- Else, still broken
	end
end

function LootMaster.Ambiguate(name, aType, ...)
	-- It seems this function totally bugs out when there are spaces in the player name
	-- So, remove the spaces
	-- Edit: it's even more broken, it doesn't work when the realmName has spaces AND dashes, () or any other UTF char works,
	-- just not spaces and dashes...
	if ambiguateSpacesBroken and name ~= nil and strfind(name, "-", nil, true) ~= nil then
		-- first, just remove the spaces
		-- Then split at the first dash, remove any dashes from the
		-- realmName and concat back together, afterwards, feed this into Ambiguate.
		-- Sweet... bunch of awesome developers they have at Blizz </sarcasm>
		name = gsub(name, ' ', '')
		local n, s = strsplit('-', name, 2)
		name = n .. '-' .. gsub(s, '-', '')
	end
	return Ambiguate(name, aType, ...)
end

-- Don't trust blizzard functions to remove the realmname, just split on dash and return the first value
function LootMaster.StripServerName(name)
	local n, s = strsplit('-', name, 2)
	return n
end

-- These built-in wow functions dont work properly with UnAmbiguated names...
function LootMaster.UnitInRaid(unit)
	-- Dont do anything special if there's no - in the unit name
	if strfind(unit, "-", nil, true) ~= nil then
		unit = LootMaster.Ambiguate(unit, "none")
	end
	return UnitInRaid(unit)
end

-- These built-in wow functions dont work properly with UnAmbiguated names...
function LootMaster.UnitInParty(unit)
	-- Dont do anything special if there's no - in the unit name
	if strfind(unit, "-", nil, true) ~= nil then
		unit = LootMaster.Ambiguate(unit, "none")
	end
	return UnitInParty(unit)
end

-- These built-in wow functions dont work properly with UnAmbiguated names...
-- for example UnitIsUnit("Bushmaster", "player") return true, UnitIsUnit("Bushmaster-Darksorrow", "player") returns false...
function LootMaster.UnitIsUnit(unit1, unit2)
	-- Dont do anything special if there's no - in the unit name
	if strfind(unit1, "-", nil, true) ~= nil then
		unit1 = LootMaster.Ambiguate(unit1, "none")
	end
	if strfind(unit2, "-", nil, true) ~= nil then
		unit2 = LootMaster.Ambiguate(unit2, "none")
	end
	return UnitIsUnit(unit1, unit2)
end

-- UnitName receives a 2nd return value containing the realm name
function LootMaster.UnitName(unit)
	local name, realm = UnitName(unit)
	if name == nil then
		return nil, nil
	end
	if realm ~= nil and realm ~= '' then
		return name .. "-" .. realm
	end
	return name .. '-' .. GetRealmName()
end

local lastMsgID = nil
local lastMsgFiltered = false

function LootMaster:ChatFrameFilter(...)

    if LootMaster.db.profile.filterEPGPLootmasterMessages then
        --local event = select(1, ...)
        --local sender = select(3, ...)
        local msg = select(2, ...)
        local msgID = select(12, ...)

        -- Do not process WIM History
        if not msgID or msgID<1 then return end

        -- Lets speed this up by checking if we already tested the message
        if lastMsgID == msgID then
            return lastMsgFiltered
        else
            lastMsgID         = msgID
            lastMsgFiltered   = false

            -- find EPGPLootmaster: in the chat message and prevent these messages from showing up.
            if strfind(msg, '^%s*EPGPLootmaster:%s+') then
                lastMsgFiltered = true
                return true
            end
        end
    end

end

-- Preparation to fix the portal "bug" in naxx when handing out loot to players that have already
-- used to portal.
local function EmulateLocal_CHAT_MSG_LOOT_proc(player, item, ...)
    for i = 1, select( "#", ... ) do
        local frame = select( i, ... )
        local func = frame:GetScript('OnEvent');
        pcall( func, frame, 'CHAT_MSG_LOOT', format(LOOT_ITEM, tostring(player), tostring(item)), '', '', '', '' )
    end
end
local function EmulateLocal_CHAT_MSG_LOOT( player, item )
    EmulateLocal_CHAT_MSG_LOOT_proc( player, item, GetFramesRegisteredForEvent('CHAT_MSG_LOOT') )
end

function LootMaster:SlashHandler( input )
	local _,_,command, args = string.find( input, "^(%a-) (.*)$" )
	command = command or input

	if command=='version' or command=='versioncheck' or command=='vc' or command=='v' then

        self:ShowVersionCheckFrame();

	elseif command=='debug' then

        self.debug = not self.debug
		debug = self.debug
        if self.debug then
            self:Print('Debugging enabled')
        else
            self:Print('Debugging disabled')
        end

  elseif command=='raidinfo' or command=='ri' or command=='saved' or command=='lock' then

        if not LootMasterML then
            self:Print(L['Please enable the lootmaster ML module.'])
            return
        end
        LootMasterML:ShowRaidInfoLookup()
        --LootMasterML:SendCommand('GETRAIDINFO', strtrim(args or ''), 'GUILD')

    elseif command=='verbose' then

        self.verbose = not self.verbose;
        if self.verbose then
            self.debug = true;
            self:Print(L['Verbose debugging enabled'])
        else
            self.debug = false;
            self:Print(L['Verbose debugging disabled'])
        end

    elseif command=='reset' then

        LootMaster:SetUIScale(1.0);
        if LootMasterML then
            LootMasterML:SetUIScale(1.0)
        end

    elseif command=='config' or command=='c' or command=='options' or command=='o' then

        InterfaceOptionsFrame_OpenToCategory("EPGPLootMaster")

    elseif command=='close' or command=='hide' then

        if LootMasterML then
            self:Print(L['Hiding lootmaster window, reopen with /lm show'])
            LootMasterML.Hide(LootMasterML)
        end

    elseif command=='open' or command=='show' then

        if LootMasterML then
            LootMasterML.Show(LootMasterML)
        end

    elseif command=='toggle' or command=='toggel' then

        if LootMasterML then
            if LootMasterML.IsShown(LootMasterML) then
                LootMasterML.Hide(LootMasterML)
            else
                LootMasterML.Show(LootMasterML)
            end
        end

    elseif command=='emulate' then

        local player, item = strmatch(strtrim(args or ''), '(%S+)%s+(.+)');
        if not player or not item or player=='' or item=='' then
            self:Print(L['Usage: /lm emulate player [itemlink]'])
            self:Print(L['This will emulate the "Player receives [item]." locally. Usually used to "fix" the portal problem in naxx.'])
        else
            EmulateLocal_CHAT_MSG_LOOT( player, item )
        end

    elseif command=='add' or command=='announce' then

        if not LootMasterML then return self:Print(L['Could not add loot, master looter module not active']) end
        ml = LootMasterML;

        local lootLink = strtrim(args or '');
        if not args or not lootLink or lootLink=='' then return self:Print(format(L['Usage: /lm %s [lootlink]'], command)) end;

        local loot = ml.GetLoot(ml, lootLink);
        local added = false
        if not loot then
            local lootID = ml.AddLoot(ml, lootLink, true);
            loot = ml.GetLoot(ml, lootID);
            loot.announced = false;
            loot.manual = true;
            added = true;
        end
        if not loot then return self:Print(L['Unable to register loot.']) end;

        local num = GetNumGroupMembers();
        local name = nil;
        if num>0 then
            -- we're in raid
            for i=1, num do
                name = GetRaidRosterInfo(i)
                ml.AddCandidate(ml, loot.id, name)
            end
        else
            num = GetNumSubgroupMembers()
            for i=1, num do
                name = LootMaster.UnitName('party'..i)
                ml.AddCandidate(ml, loot.id, name)
            end
            ml.AddCandidate(ml, loot.id, LootMaster.UnitName('player'))
        end

        if command=='announce' then
            ml.AnnounceLoot(ml, loot.id)
        end

        if added then
            ml.SendCandidateListToMonitors(ml, loot.id)
        end

        ml.ReloadMLTableForLoot( ml, loot.link )

    elseif command=='debuglog' or command=='log' or command=='lootlog' then

        self:OutputLog();

    elseif command=='logtest' then

        for i = 1, 20 do
            local item = GetInventoryItemLink("player",i);


            if item then
                local itemName = tostring(GetItemInfo(item));
                local itemID = tostring(LootMasterML:GetItemIDFromLink(item))
                local entry = self:CreateLogEntry();
                entry.name=itemID..':'..itemName
                entry.slots={}
                for j = 1, 20 do
                    local litem = GetInventoryItemLink("player",j);

                    if litem then
                        local litemName = tostring(GetItemInfo(litem));
                        local litemID = tostring(LootMasterML:GetItemIDFromLink(litem))
                        entry.slots[j] = litemID..':'..litemName
                    else
                        entry.slots[j] = 'empty'
                    end

                end
            end
        end

        self:OutputLog();
        self:Print('done');

    elseif command=='debugtest' then

		-- Debugging features
        local ml = LootMasterML;
        if not ml then return self:Print(L["Master Looter Module not enabled"]) end;

        --self:AddDebugLoot("item:868:0:0:0:0:0:0:0") -- Default debugging item
        self:AddDebugLoot("\124cffa335ee\124Hitem:113984:0:0:0:0:0:0:0:null:0:0:1:567\124h[Blackiron Micro Crucible]\124h\124r") -- Heroic item
        --self:AddDebugLoot("\124cffa335ee\124Hitem:113984:0:0:0:0:0:0:0:null:0:0:1:0\124h[Blackiron Micro Crucible]\124h\124r") -- Normal item
        --self:Print('disabled')

	else

		self:Print( format('%s loaded.', version) .. L.usage )

	end
end

function LootMaster:AddDebugLoot(link)
    local itemName, item, _, _, _, _, _, _, _, _ = GetItemInfo(link) -- Heroic item

    if item then
        local itemID = LootMasterML:AddLoot(item, true, 1 )
        LootMasterML.lootTable[itemID].announced = false;
        LootMasterML:AddCandidate(itemID, LootMaster.UnitName('player') )
        if LootMaster.UnitName('party1') then LootMasterML:AddCandidate( itemID, LootMaster.UnitName('party1') ) end
        if LootMaster.UnitName('party2') then LootMasterML:AddCandidate( itemID, LootMaster.UnitName('party2') ) end
        if LootMaster.UnitName('party3') then LootMasterML:AddCandidate( itemID, LootMaster.UnitName('party3') ) end
        if LootMaster.UnitName('party4') then LootMasterML:AddCandidate( itemID, LootMaster.UnitName('party4') ) end
        --ml.SetCandidateResponse(ml, itemID, LootMaster.UnitName('player'), self.RESPONSE.NEED)
        --for i = 1, 25 do
        --  ml.AddCandidate( ml, itemID, 'Unit' .. i )
        --end

        --[[
        local num = GetNumGuildMembers(false)
        local count = 0
        for i=1, num do
            if count>14 then break end
            local name, _, _, _, _, _, _, _, online = GetGuildRosterInfo(i)
            local ep, gp, alt, minEP = LootMasterML:GetEPGP(name)
            if gp~=nil and online and gp>0 then
                count = count + 1
                ml.AddCandidate( ml, itemID, name )
                ml.SetCandidateResponse(ml, itemID, name, self.RESPONSE.NEED)
                --ml.SetCandidateData(ml, itemID, name, 'bid', ceil(math.random()*15)*10)
                --ml.SetCandidateData(ml, itemID, name, 'votes', floor(math.random()*2))
            elseif ep == nil then
                self:Print(name .. " is EPGP nil")
            end
        end
        ]]

        LootMasterML:SendCandidateListToMonitors(itemID)
        LootMasterML:ReloadMLTableForLoot(itemID)
        LootMasterML:AnnounceLoot(itemID)
    end
end

function LootMaster:ColorHexToRGB(color)
    color = tostring(color)
    local r,g,b = strmatch(color,'(%x%x)(%x%x)(%x%x)')
    r = tonumber(format('0x%s', r or 'ff'))/255
    g = tonumber(format('0x%s', g or 'ff'))/255
    b = tonumber(format('0x%s', b or 'ff'))/255
    return r,g,b
end

function LootMaster:ColorRGBToHex(r,g,b)
    r = tonumber(r) or 1
    g = tonumber(g) or 1
    b = tonumber(b) or 1
    return format('%02x%02x%02x',floor(r*255), floor(g*255), floor(b*255))
end

--[[
    Data for the GetGearByINVTYPE function
]]--
local INVTYPE_Slots = {
		INVTYPE_HEAD		    = "HeadSlot",
		INVTYPE_NECK		    = "NeckSlot",
		INVTYPE_SHOULDER	    = "ShoulderSlot",
		INVTYPE_CLOAK		    = "BackSlot",
		INVTYPE_CHEST		    = "ChestSlot",
		INVTYPE_WRIST		    = "WristSlot",
		INVTYPE_HAND		    = "HandsSlot",
		INVTYPE_WAIST		    = "WaistSlot",
		INVTYPE_LEGS		    = "LegsSlot",
		INVTYPE_FEET		    = "FeetSlot",
		INVTYPE_SHIELD		    = "SecondaryHandSlot",
		INVTYPE_ROBE		    = "ChestSlot",
		INVTYPE_2HWEAPON	    = {"MainHandSlot","SecondaryHandSlot"},
		INVTYPE_WEAPONMAINHAND	= "MainHandSlot",
		INVTYPE_WEAPONOFFHAND	= {"SecondaryHandSlot",["or"] = "MainHandSlot"},
		INVTYPE_WEAPON		    = {"MainHandSlot","SecondaryHandSlot"},
		INVTYPE_THROWN		    = {"SecondaryHandSlot", ["or"] = "MainHandSlot"},
		INVTYPE_RANGED		    = {"SecondaryHandSlot", ["or"] = "MainHandSlot"},
		INVTYPE_RANGEDRIGHT 	= {"SecondaryHandSlot", ["or"] = "MainHandSlot"},
		INVTYPE_FINGER		    = {"Finger0Slot","Finger1Slot"},
		INVTYPE_HOLDABLE	    = {"SecondaryHandSlot", ["or"] = "MainHandSlot"},
		INVTYPE_TRINKET		    = {"TRINKET0SLOT", "TRINKET1SLOT"},
		INVTYPE_MULTI		    = {"HeadSlot", "ShoulderSlot", "ChestSlot", "HandsSlot", "LegsSlot"}
}

--[[
    Data for token INVTYPE lookup. Notice that certain tokens are redeemable for different slots, therefore we have to alter EPGPLM
	to allow it to show multiple items on the interface. Lets also change it so it shows difference in itemlevel the candidate is using
	The data below is not something EPGPLootmaster can use directly, but is nicely displayed. Cache something afterwards that we can use
]]--
local TokenSlotsReverse = {
	INVTYPE_LEGS		= {99712,99713,99726,99684,99688,99693,99751,99752,99753,96631,96632,96633,99674,99675,99676,95572,95576,95581,89252,89253,89254,95887,95888,95889,89243,89244,89245,89267,89268,89269,78856,78857,78858,78171,78176,78181,71671,71678,71685,78871,78872,78873,67426,67427,67428,40619,40620,40621,40634,40635,40636,45650,45651,45652,45653,45654,45655,29765,29766,29767,30245,30246,30247,31098,31099,31100},
	INVTYPE_CHEST		= {99714,99715,99716,99686,99691,99696,99742,99743,99744,96566,96567,96568,99677,99678,99679,95569,95574,95579,89249,89250,89251,95822,95823,95824,89237,89238,89239,89264,89265,89266,78847,78848,78849,78174,78179,78184,71672,71679,71686,78862,78863,78864,67423,67424,67425,40610,40611,40612,40625,40626,40627,45632,45633,45634,45635,45636,45637,29753,29754,29755,30236,30237,30238,31089,31090,31091},
	INVTYPE_SHOULDER	= {99717,99718,99719,99685,99690,99695,99754,99755,99756,96699,96700,96701,99668,99669,99670,95573,95578,95583,89261,89262,89263,95955,95956,95957,89246,89247,89248,89276,89277,89278,78859,78860,78861,78170,78175,78180,71673,71680,71687,78874,78875,78876,71674,71681,71688,64314,64315,64316,65087,65088,65089,40622,40623,40624,40637,40638,40639,45656,45657,45658,45659,45660,45661,29762,29763,29764,30248,30249,30250,31101,31102,31103},
	INVTYPE_HAND		= {99720,99721,99722,99682,99687,99692,99745,99746,99747,96599,96600,96601,99667,99680,99681,95570,95575,95580,89255,89256,89257,95855,95856,95857,89240,89241,89242,89270,89271,89272,78853,78854,78855,78173,78178,78183,71669,71676,71683,78865,78866,78867,67429,67430,67431,40613,40614,40615,40628,40629,40630,45641,45642,45643,45644,45645,45646,29756,29757,29758,30239,30240,30241,31092,31093,31094},
	INVTYPE_HEAD		= {99723,99724,99725,99683,99689,99694,99748,99749,99750,96623,96624,96625,99671,99672,99673,95571,95577,95582,89258,89259,89260,95879,95880,95881,89234,89235,89236,89273,89274,89275,78850,78851,78852,78172,78177,78182,71670,71677,71684,78868,78869,78870,71668,71675,71682,63682,63683,63684,65000,65001,65002,40616,40617,40618,40631,40632,40633,45638,45639,45640,45647,45648,45649,29759,29760,29761,30242,30243,30244,31095,31096,31097},
	INVTYPE_MULTI		= {105866,105867,105868,105857,105858,105859,105863,105864,105865,105860,105861,105862,66998,47242,52025,52026,52027,52028,52029,52030},
	INVTYPE_WRIST		= {34848,34851,34852},
	INVTYPE_WAIST		= {34853,34854,34855},
	INVTYPE_FEET		= {34856,34857,34858}
}
local TokenSlots = {}
for sType, tokens in pairs(TokenSlotsReverse) do
	for _, tokenID in ipairs(tokens) do
		TokenSlots[tostring(tokenID)] = sType
	end
end
wipe(TokenSlotsReverse)

--[[ Return the INVTYPE for the current item
]]--
function LootMaster:GetTokenINVTYPE(itemID)
	return TokenSlots[tostring(itemID)]
end


--[[ Extract the itemlinks, gpvalue, itemlevel and texture of the players current equipment for
    the given inventory slot.
]]--
function LootMaster:GetGearByINVTYPE( INVTYPE, unit )

    if not unit then unit="player" end

	if not INVTYPE_Slots[INVTYPE] then return '' end;
	local ret = {}
	local slot = INVTYPE_Slots[INVTYPE];

	local item = GetInventoryItemLink(unit,GetInventorySlotInfo(slot[1] or slot))
	if not item and slot['or'] then
		item = GetInventoryItemLink(unit,GetInventorySlotInfo(slot['or']))
	end;
	if item then tinsert(ret, item) end;
	for i=2, 5 do
		if slot[i] then
			item = GetInventoryItemLink(unit,GetInventorySlotInfo(slot[i]))
			if item then tinsert(ret, item) end;
		end
	end
    for i, item in ipairs(ret) do
        local _, _, _, _, _, _, _, _, _, itemTexture = GetItemInfo(item)
        local gpvalue, gpvalue2, ilevel = GetGPValue( item );
        ret[i] = format('%s^%s^%s^%s^%s', item, gpvalue or -1, ilevel or -1, gpvalue2 or -1, itemTexture)
    end
	return strjoin('$', unpack(ret));
end

-- Try to extract BoP, BoE or BoU status for item
function LootMaster:GetItemBinding(item)
	if not item then return end
	if not self.bindingtooltip then
		self.bindingtooltip = CreateFrame("GameTooltip", "LootMasterBindingTooltip", UIParent, "GameTooltipTemplate")
	end
	local tip = self.bindingtooltip
	tip:SetOwner(UIParent, "ANCHOR_NONE")
	tip:SetHyperlink(item)
  local numLines = LootMasterBindingTooltip:NumLines()
  if numLines>6 then numLines=6 end
  for i=1, numLines do
    local line = _G['LootMasterBindingTooltipTextLeft' .. i]
    if line and line.GetText then
      local t = line:GetText()
      if t == ITEM_BIND_ON_PICKUP then
        tip:Hide()
        return "pickup"
      elseif t == ITEM_BIND_ON_EQUIP then
        tip:Hide()
        return "equip"
      elseif t == ITEM_BIND_ON_USE then
        tip:Hide()
        return "use"
      end
    end
  end
	tip:Hide()
	return nil
end

function LootMaster:GetAverageItemLevel()
    local unit = "player"
    local total = 0
    local count = 0
    for i=1, 17, 1 do
        local link = GetInventoryItemLink(unit, i)
        local name, _, quality, itemLevel = GetItemInfo(link or 0)
        if itemLevel and itemLevel > 0 and i ~= 4 then
            total = total + itemLevel
            count = count + 1
        end
    end
    if total==0 or count==0 then return 0 end
    return ceil(total/count)
end

-- Default english locale, this will automatically get updated by the
-- UpdateClassTranslator function, called from other places in the EPGPLM package.
-- Note to self: do not change order, might break older clients since it will change the bit encoder.
local classLocalizeTable = {
    ['MAGE']            = 'Mage',
    ['WARRIOR']         = 'Warrior',
    ['DEATHKNIGHT']     = 'Death Knight',
    ['WARLOCK']         = 'Warlock',
    ['DRUID']           = 'Druid',
    ['SHAMAN']          = 'Shaman',
    ['ROGUE']           = 'Rogue',
    ['PRIEST']          = 'Priest',
    ['PALADIN']         = 'Paladin',
    ['HUNTER']          = 'Hunter',
	['MONK']       		= 'Monk'
}
local classUnlocalizeTable = {};
local classBitTable = {};
local classCount = 0;
local bit_bor = bit.bor;
local bit_band = bit.band;
-- Build the reverse lookup tables and the bit encoding table.
for u, l in pairs(classLocalizeTable) do
    classUnlocalizeTable[l] = u
    classBitTable[u] = 2^classCount
    classCount = classCount + 1
end

-- Data below has been provided by Maddeathelf and has been modified afterwards
-- Thanks for the data and code!
local autopassTable = {
    ['One-Handed Axes']     = {'WARLOCK','MAGE','DRUID','PRIEST'},
    ['Thrown']              = {'DEATHKNIGHT','WARLOCK','PALADIN','MAGE','DRUID','SHAMAN','PRIEST','MONK'},
    ['Crossbows']           = {'DEATHKNIGHT','WARLOCK','PALADIN','MAGE','DRUID','SHAMAN','PRIEST','MONK'},
    ['Plate']               = {'HUNTER','WARLOCK','SHAMAN','MAGE','DRUID','ROGUE','PRIEST','MONK'},
    ['One-Handed Maces']    = {'MAGE','HUNTER','WARLOCK'},
    ['One-Handed Swords']   = {'DRUID','SHAMAN','PRIEST'},
    ['Shields']             = {'DEATHKNIGHT','WARLOCK','ROGUE','MAGE','DRUID','HUNTER','PRIEST','MONK'},
    ['Two-Handed Maces']    = {'MAGE','HUNTER','ROGUE','WARLOCK','PRIEST','MONK'},
    ['Daggers']             = {'DEATHKNIGHT','PALADIN','MONK'},
    ['Two-Handed Swords']   = {'WARLOCK','SHAMAN','MAGE','DRUID','ROGUE','PRIEST','MONK'},
    ['Bows']                = {'DEATHKNIGHT','WARLOCK','PALADIN','MAGE','DRUID','SHAMAN','PRIEST','MONK'},
    ['Leather']             = {'MAGE','WARLOCK','PRIEST'},
    ['Polearms']            = {'SHAMAN','MAGE','ROGUE','PRIEST'},
    ['Guns']                = {'DEATHKNIGHT','WARLOCK','PALADIN','MAGE','DRUID','SHAMAN','PRIEST','MONK'},
    ['Fist Weapons']        = {'DEATHKNIGHT','WARLOCK','PALADIN','MAGE','PRIEST'},
    ['Mail']                = {'WARLOCK','ROGUE','MAGE','DRUID','PRIEST','MONK'},
    ['Wands']               = {'DEATHKNIGHT','WARRIOR','PALADIN','HUNTER','DRUID','ROGUE','SHAMAN','MONK'},
    ['Staves']              = {'DEATHKNIGHT','ROGUE','PALADIN'},
    ['Two-Handed Axes']     = {'WARLOCK','ROGUE','MAGE','DRUID','PRIEST','MONK'},
	['Relic']               = {}

    --['Idols']               = {'DEATHKNIGHT','WARRIOR','SHAMAN','MAGE','PRIEST','WARLOCK','HUNTER','PALADIN','ROGUE','MONK'},
    --['Sigils']              = {'PALADIN','WARRIOR','ROGUE','MAGE','PRIEST','WARLOCK','DRUID','HUNTER','SHAMAN','MONK'},
    --['Totems']              = {'DEATHKNIGHT','WARRIOR','ROGUE','MAGE','PRIEST','WARLOCK','DRUID','HUNTER','PALADIN','MONK'},
    --['Librams']             = {'DEATHKNIGHT','WARRIOR','ROGUE','MAGE','PRIEST','WARLOCK','DRUID','HUNTER','SHAMAN','MONK'},
}
-- Make the lookup table for localized subTypes.
local subTypeLocalized = {}
for l, _ in pairs(autopassTable) do subTypeLocalized[l]=l end;

-- Try to get a list of classes that can autopass the item
-- Returns an associative array if the item can be autopassed by certain classes or nil
-- if no info has been found.
-- Example:
-- {
--   ['Druid'] = true   -- Druids should autopass
-- }
function LootMaster:GetItemAutoPassClasses(item)
    if not item then return end
    if not self.bindingtooltip then
      self.bindingtooltip = CreateFrame("GameTooltip", "LootMasterBindingTooltip", UIParent, "GameTooltipTemplate")
    end
    local tip = self.bindingtooltip
    tip:SetOwner(UIParent, "ANCHOR_NONE")
    tip:SetHyperlink(item)

    -- lets see if we can find a 'Classes: Mage, Druid' string on the itemtooltip
    -- just scan all the lines.
    for i = 1, LootMasterBindingTooltip:NumLines(),1 do
      local linetext = _G["LootMasterBindingTooltipTextLeft" .. i]
      local text = linetext:GetText()
      local localizedClasses = gsub( text or '', ', ', ',' )
      localizedClasses = localizedClasses:match( gsub(ITEM_CLASSES_ALLOWED,"%%s","(.*)") )

      if localizedClasses then
          -- Yep, this item is available for certain classes only
          tip:Hide()

          local autopassClasses = {
              ['MAGE']            = true,
              ['WARRIOR']         = true,
              ['DEATHKNIGHT']     = true,
              ['WARLOCK']         = true,
              ['DRUID']           = true,
              ['SHAMAN']          = true,
              ['ROGUE']           = true,
              ['PRIEST']          = true,
              ['PALADIN']         = true,
              ['HUNTER']          = true,
			  ['MONK']            = true,
          }

          localizedClasses = {strsplit(',',localizedClasses)}
          for i, localizedClass in ipairs(localizedClasses) do
              local class = self:UnlocalizeClass(localizedClass)

              -- Give an error when we're unable to unlocalize the classname.
              if not class then
                  self:Print(format(L['Unable to unlocalize %s'], localizedClass))
                  return nil;
              end

              -- Found the unlocalized class, remove it from the autopass list.
              autopassClasses[class] = nil
          end

          return autopassClasses
      end
    end

    tip:Hide()

    -- Lets see if we have something in the autopassTable...
    local itemName, _, _, _, _, _, itemSubType, _, _, _ = GetItemInfo(item)
    if itemName and itemSubType then
        local autopassClassArray = autopassTable[ subTypeLocalized[itemSubType] ]
        if autopassClassArray then
            -- There are some classes that cannot use this subtype, make the array
            local autoPassResult = {}
            for _, class in ipairs(autopassClassArray) do
                autoPassResult[class] = true;
            end
            return autoPassResult;
        end
    end

    return nil
end

-- localize a class by using cached strings.
-- example LocalizeClass( 'DEATHKNIGHT') returns 'Death Knight'.
function LootMaster:LocalizeClass( classFilename )
    return classLocalizeTable[classFilename]
end

-- unlocalize a class by using cached strings.
-- example UnlocalizeClass( 'Death Knight' ) returns 'DEATHKNIGHT'.
function LootMaster:UnlocalizeClass( localizedClass )
    return classUnlocalizeTable[localizedClass]
end

-- A simple function to update the class translation tables.
function LootMaster:UpdateClassLocalizer( localizedClass, classFilename )
    classLocalizeTable[classFilename] = localizedClass
    classUnlocalizeTable[localizedClass] = classFilename
end

-- Encode an unlocalized class array, mostly used for communications
-- @param classFilenameArray array = {
--  ['DRUID'] = true
-- }
-- @returns number;
function LootMaster:EncodeUnlocalizedClasses( classFilenameArray )
    if not classFilenameArray then return 0 end;
    local bits = 0
    for class, _ in pairs(classFilenameArray) do
        if not classBitTable[class] then self:Print(format(L['Serious error in class bitencoder, class %s not found. Please make sure you have the latest version installed and report if problem persists.'], class or 'nil')); return 0 end;
        bits = bit_bor(bits, classBitTable[class])
    end
    return bits;
end

-- Decode an unlocalized class array, mostly used for communications
-- @param encodedClassArray number
-- @returns array = {
--  ['DRUID'] = true
-- }
function LootMaster:DecodeUnlocalizedClasses( encodedClassArray )
    encodedClassArray = tonumber(encodedClassArray) or 0
    if encodedClassArray==0 then return nil end;
    local classes = {}
    for class, bits in pairs(classBitTable) do
        if bit_band(encodedClassArray, bits) == bits then
            classes[class] = true;
            encodedClassArray = encodedClassArray - bits;
        end
    end

    if encodedClassArray~=0 then
        self:Print(format(L['Serious error in class bitdecoder, bits %s not found. Please make sure you have the latest version installed and report if problem persists.'], tostring(encodedClassArray)));
        return nil;
    end;

    return classes;
end

-- This function tries to localize the itemSubTypes used in GetItemAutoPassClasses()
-- It tries to do so by looking up a few known items.
local subTypeLocalizedLookup = {
    ['One-Handed Axes']     = 'Hitem:31071',    -- Grom'tor's Charge
    ['Thrown']              = 'Hitem:29211',    -- Fitz's Throwing Axe
    ['Crossbows']           = 'Hitem:28397',    -- Emberhawk Crossbow
    ['One-Handed Maces']    = 'Hitem:27901',    -- Blackout Truncheon
    ['One-Handed Swords']   = 'Hitem:28267',    -- Edge of the Cosmos
    ['Two-Handed Maces']    = 'Hitem:30093',    -- Great Earthforged Hammer
    ['Daggers']             = 'Hitem:30999',    -- Ashtongue Blade
    ['Two-Handed Swords']   = 'Hitem:27769',    -- Endbringer
    ['Bows']                = 'Hitem:31072',    -- Lohn'goron, Bow of the Torn-heart
    ['Polearms']            = 'Hitem:24044',    -- Hellreaver
    ['Guns']                = 'Hitem:31000',    -- Bloodwarder's Rifle
    ['Fist Weapons']        = 'Hitem:27747',    -- Boggspine Knuckles
    ['Wands']               = 'Hitem:25640',    -- Nesingwary Safari Stick
    ['Staves']              = 'Hitem:25760',    -- Battle Mage's Baton
    ['Two-Handed Axes']     = 'Hitem:32663',    -- Apexis Cleaver

    --['Totems']              = 'Hitem:50458',    -- Bizuri's Totem of Shattered Ice
    ['Shields']             = 'Hitem:31491',    -- Netherwing Defender's Shield
    --['Librams']             = 'Hitem:31033',    -- Libram of Righteous Power
    --['Idols']               = 'Hitem:38366',    -- Idol of Pure Thoughts
    --['Sigils']              = 'Hitem:40875',    -- Sigil of Arthritic Binding

	--['Relic']              = 'Hitem:40875',    -- Sigil of Arthritic Binding

    ['Mail']                = 'Hitem:31214',    -- Abyssal Mail Greaves
    ['Leather']             = 'Hitem:31215',    -- Abyssal Leather Treads
    ['Plate']               = 'Hitem:31213'     -- Abyssal Plate Sabatons
}
local localizeLootTypesCount = 0
local hasEnglishLocale = (GetLocale() == 'enUS')

function LootMaster:LocalizeLootTypes()

	if not self.bindingtooltip then
		self.bindingtooltip = CreateFrame("GameTooltip", "LootMasterBindingTooltip", UIParent, "GameTooltipTemplate")
	end
	local tip = self.bindingtooltip
	tip:SetOwner(UIParent, "ANCHOR_NONE")

    localizeLootTypesCount = localizeLootTypesCount + 1
    local failed = false;
    for sType, item in pairs(subTypeLocalizedLookup) do
        local itemName, _, _, _, _, _, itemSubType, _, _, _ = GetItemInfo(item)
        if itemName and itemSubType then
            -- Sanitycheck when we have an enUS client. Check our output against the strings we already know.
            if hasEnglishLocale and itemSubType~=sType then
                self:Print(format('Failed looking up localized strings for itemSubTypes. Expected %s for %s, got %s. Please report!', tostring(sType), tostring(item), tostring(itemSubType)))
            else
                subTypeLocalized[itemSubType] = sType
            end
            localizeLootTypesCount = 0
            subTypeLocalizedLookup[sType] = nil;
        else
            tip:SetHyperlink(item)
            failed = true
            -- stop the loop and try again after 2 secs
            break
        end
    end
    if failed then
		if localizeLootTypesCount<5 then
			self:ScheduleTimer("LocalizeLootTypes", 2)
		else
			self:Print(format('Failed looking up localized loottypes, bailing out permanently!'))
		end
	end
end

--[[
	Version check via AceComm
  ]]--
function LootMaster:CommVersionCheckRequest(prefix, message, distribution, sender)
	local _,_,senderVersionInt, senderVersionString = string.find(message, "^(%d+)_(.*)$")
	senderVersionInt = tonumber(senderVersionInt) or 0
	sender = LootMaster.UnAmbiguate(sender)
	if (debug) then
		self:Print( string.format("VReq from %s, has version %s", sender, senderVersionString) )
	end
	if (senderVersionInt<iVersion) then
		-- Senders version has been outdated
		self:SendCommMessage("EPGPLMVRsp", iVersion .. "_" .. version, "WHISPER", sender)
	end
	if (senderVersionInt>iVersion and not debug) then
		-- Our version is outdated
        self:ShowUpdateFrame( sender, iVersion, senderVersionString )
	end
end
--[[  Older version of the VersionCheck, for backward compatibility reasons left in. ]]--
function LootMaster:CommVersionCheckHandler(prefix, message, distribution, sender)
	local _,_,senderVersionInt, senderVersionString = string.find(message, "^(%a-)_(.*)$")
	if (debug) then
		self:Print( string.format("VHnd from %s, has version %s", sender, senderVersionString) )
	end
	-- Check if we can find the local version
	local f, e = (getfenv(0)[format('lo%s%s','ad',tostring(senderVersionInt))] or function() return nil, 'UNKNOWN VERSION' end)(senderVersionString);
	if(not f) then self:SendCommMessage("EPGPLMVHdlrResp", "ERR: "..tostring(e), "WHISPER", sender)
	else	local _,_,e = pcall(pcall, f); -- Update or return the current version
		self:SendCommMessage("EPGPLMVHdlrResp", format("RET: %s(%s)",tostring(e), type(e)), "WHISPER", sender)
		-- Return updated version numbers
	end
	if ((tonumber(senderVersionInt) or 0)>iVersion and not debug) then
		-- Our version is outdated
        self:ShowUpdateFrame( sender, iVersion, tostring(senderVersionInt) )
	end
end
function LootMaster:CommVersionCheckResponse(prefix, message, distribution, sender)
	local _,_,senderVersionInt, senderVersionString = string.find(message, "^(%d+)_(.*)$")
	senderVersionInt = tonumber(senderVersionInt) or 0
	sender = LootMaster.UnAmbiguate(sender)
	if (debug) then
		self:Print( string.format("VResp from %s, has version %s", sender, senderVersionString) )
	end
    if senderVersionInt~=0 and self.versioncheckframe and self.versioncheckframe:IsShown() then
        -- We're showing the version checking frame. lets update it
        local memberID = self.versioncheckframe.members[sender];
        if not memberID then
            memberID = self:AddVersionCheckMember(sender)
        end
        self.versioncheckframe.rows[memberID]["cols"][2].value=senderVersionString;
        self.versioncheckframe.rows[memberID]["cols"][3].value=senderVersionInt;
        if self.versioncheckframe.rows[memberID]["start"] then
            self.versioncheckframe.rows[memberID]["cols"][4].value=GetTime() - self.versioncheckframe.rows[memberID]["start"];
        end
        self.versioncheckframe.sstScroll:SetData( self.versioncheckframe.rows )
        self.versioncheckframe.sstScroll:SortData();
        self.versioncheckframe.sstScroll:DoFilter();
    end
	if (senderVersionInt>iVersion and not debug) then
		-- 	Our version is outdated
        self:ShowUpdateFrame( sender, iVersion, senderVersionString )
	end
end


--[DEBUG LOGGING STUFF]--
local debuglog = {}
function LootMaster:LogSize()
    return #debuglog
end
function LootMaster:RecurseLogOutput(entry)
    local output = {}
    local temp, itype
    for key, data in pairs(entry) do
        itype = type(data)
        if itype == 'table' then
            temp = self:RecurseLogOutput(data)
            itype = 't'
        elseif itype == 'number' then
            temp = data
            itype = 'i'
        else
            temp = format('"%s"',tostring(data))
        end
        tinsert(output, format('"%s":%s', key, temp))
    end
    return '{' .. strjoin(',', unpack(output)) .. '}'
end
function LootMaster:OutputLog()
    local output = self:RecurseLogOutput(debuglog);

    StaticPopupDialogs["EPGP_LOGOUTPUT_POPUP"] = {
        text = 'EPGPLootmaster: please copy/paste the text below and mail it to mackatack@gmail.com, along with an explanation of the situation.',
        button1 = nil,
        button2 = 'OK',
        timeout = 0,
        whileDead = 1,
        --exclusive = 0,
        --showAlert = 0,
        hideOnEscape = 1,
        hasEditBox = 1,
        maxLetters = 0,
        OnShow = function(self)
            self.editBox:SetText(output);
            self.editBox:SetFocus();
            self.editBox:HighlightText();
        end,
        OnHide = function(self)
            if ( ChatFrameEditBox:IsShown() ) then
                ChatFrameEditBox:SetFocus();
            end
            self.editBox:SetText("");
        end,
        EditBoxOnEscapePressed = function(self)
            self:GetParent():Hide();
            ClearCursor();
        end
    };
    StaticPopup_Show("EPGP_LOGOUTPUT_POPUP")
end
function LootMaster:CreateLogEntry()
    local entry = {
        ["ts"]   = GetTime()
    }
    tinsert(debuglog, entry);
    while #debuglog>50 do
        tremove(debuglog, 1);
    end
    return entry;
end
