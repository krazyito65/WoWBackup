--[[
	LootMaster, Master looter stuff
]]--

local debug	= false

LootMasterML		= LibStub("AceAddon-3.0"):NewAddon("LootMasterML", "AceConsole-3.0", "AceComm-3.0", "AceEvent-3.0", "AceTimer-3.0", "AceHook-3.0", "AceSerializer-3.0")
local LootMaster	= LibStub("AceAddon-3.0"):GetAddon("EPGPLootMaster")

local L = LibStub("AceLocale-3.0"):GetLocale("EPGPLootmaster")
local LibDialog = LibStub("LibDialog-1.0")

local addon         = LootMasterML		-- Local instance of the addon

local MsgPrefix     = 'EPGPLootmaster: '

-- Cache some math function for faster access and preventing
-- other addons from screwing em up.
local mathRandomseed        = function() end
local mathRandom            = math.random
local mathFloor             = math.floor
local mathCachedRandomSeed  = math.random()*1000

-- Using LibDialog to prevent UI Taints
LibDialog:Register("EPGPLOOTMASTER_ASK_TRACKING", {
	text = L['- - - - EPGPLootmaster - - - -\r\n\r\nYou are the loot master, would you like to use EPGPLootmaster to distribute loot?\r\n\r\n(You will be asked again next time. Use /lm config to change this behaviour)'],

	buttons = {
		{ 	text = YES,
			on_click = function(self)
				LootMasterML:EnableTracking()
				LootMaster:Print(L['You have enabled loot tracking for this raid'])
			end,
		},
		{ 	text = NO,
			on_click = function()
				LootMasterML:DisableTracking()
				LootMaster:Print(L['You have disabled loot tracking for this raid'])
			end},
	},

	hide_on_escape = false,
	show_while_dead = true,
	exclusive = true,
})

function LootMasterML:Debug( message, verbose )
    if not LootMaster or not LootMaster.debug then return end;
    if verbose and not LootMaster.verbose then return end;
    self:Print("debug: " .. message)
end

function LootMasterML:OnInitialize()

    self.lootTable = {}			-- a table to store loot info

    -- Event Register
      -- Trap event when ML rightclicks master loot
    self:RegisterEvent("OPEN_MASTER_LOOT_LIST")
    self:RegisterEvent("UPDATE_MASTER_LOOT_LIST")
    self:RegisterEvent("LOOT_OPENED")
    self:RegisterEvent("LOOT_CLOSED")

    -- Trap even when an items get looted
    self:RegisterEvent("CHAT_MSG_LOOT");

    -- Trap some important system messages here
    self:RegisterEvent("RAID_ROSTER_UPDATE",            "GROUP_UPDATE");
    self:RegisterEvent("PARTY_LOOT_METHOD_CHANGED",     "GROUP_UPDATE");
    self:RegisterEvent("PARTY_MEMBERS_CHANGED",         "GROUP_UPDATE");
    self:RegisterEvent("PLAYER_ENTERING_WORLD",         "GROUP_UPDATE");

    -- Trap events when entering and leaving combat
    self:RegisterEvent("PLAYER_REGEN_DISABLED",     "EnterCombat");
    self:RegisterEvent("PLAYER_REGEN_ENABLED",      "LeaveCombat");

    self:RegisterEvent("GUILD_ROSTER_UPDATE",       "CacheGuildInfo")

    -- Register communications
    self:RegisterComm("EPGPLootMasterML", 		    "CommandReceived")

    -- Create table for the guildinfo cache.
    self.guildInfo = {}


	-- Disable popup for headcount
	local HeadCount = LibStub("AceAddon-3.0"):GetAddon("HeadCount2", true)
	if HeadCount ~= nil then
	   HeadCount.db.profile.isLootPopupEnabled = false
	end

	-- Disable popup for MRT
	if MRT_Options ~= nil then
		MRT_Options["Tracking_AskForDKPValue"] = false
	end

    -- Warning if we're in a guild and we can edit officer notes but EPGP is not installed.
    if IsInGuild() and CanEditOfficerNote() and not EPGP then
        StaticPopupDialogs["EPGPLM_EPGP_NOTINSTALLED"] = {
            text = L["EPGPLootmaster Notice!\r\n\r\n|cFFFF8080WARNING:|r you have EPGPLootmaster installed but EPGP is not enabled. \r\n\r\nPlease make sure you have EPGP installed and enabled. If you fail to do so, no GP will be awarded for looted items.\r\n\r\nAll other features of EPGPLootmaster such as announcing and distributing loot will still function without EPGP."],
            button1 = OKAY,
            OnAccept = function() end,
            timeout = 0,
            whileDead = 1,
            hideOnEscape = 0,
            showAlert = 1
        };
        StaticPopup_Show("EPGPLM_EPGP_NOTINSTALLED")
    end

    -- Change the onClick script of the lootbuttons a little so we can trap alt+clicks
    -- NOTE: Only tested with normal wow lootframes, not using XLoot etc.
    for slot=1, LOOTFRAME_NUMBUTTONS do
        local btn = getglobal("LootButton"..slot);
        if btn and not btn.oldClickEventEPGPLM then
            btn.oldClickEventEPGPLM = btn:GetScript("OnClick");
            btn:SetScript("OnClick", function(btnObj, ...)
                if not IsAltKeyDown() then
                    return btnObj.oldClickEventEPGPLM(btnObj, ...)
                end
                return LootButton_OnClick(btnObj, ...);
            end);
        end
    end

    -- Just to be sure, enable the tracking.
    self:EnableTracking()
end

function LootMasterML:OnEnable()
    -- Postpone the chathooks to make sure we're the last hooking these.
    self:ScheduleTimer("PostEnable", 5)

    if EPGP and EPGP.RegisterCallback then
        EPGP.RegisterCallback(self, "StandingsChanged", "OnStandingsChanged")
    end
end

function LootMasterML:EnableTracking()
    self.trackingEnabled = true
end

function LootMasterML:DisableTracking()
    self.trackingEnabled = false
end

function LootMasterML:TrackingEnabled()
    return self.trackingEnabled
end

function LootMasterML:PostEnable()
    -- Inbound Chat Hooking
    ChatFrame_AddMessageEventFilter("CHAT_MSG_WHISPER",			LootMasterML.ChatFrameFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID",    		LootMasterML.ChatFrameFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_RAID_LEADER",		LootMasterML.ChatFrameFilter)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_CHANNEL",			LootMasterML.ChatFrameFilter)

    LootMasterML:DisableEPGPPopup()
end

function LootMasterML:DisableEPGPPopup()
    -- Disable 'automatic loot tracking' popup in EPGP - Let EPGPLootmaster handle all the GP stuff.
    if EPGP and CheckForGuildInfo and IsInGuild() then
        CheckForGuildInfo(EPGP);
        if EPGP.db then
            EPGP.db.profile.auto_loot = false
        end
    end

    -- Disable the GP Popup on the new EPGP versions
    if EPGP and EPGP.GetModule then
        local loot = EPGP:GetModule("loot")
        if loot and loot.Disable then
            loot:Disable()
        end
    end
end

function LootMasterML:HandleEPGPCommand(command, message, sender, event)

    local preventMonitorUpdate = false
    local preventMessageDisplay = false
	sender = LootMaster.UnAmbiguate(sender)

    if command=='STANDBY' then
        -- dont handle this message, let EPGP handle it.
        return false;
    end

    if command=='PAS' or command=='PASS' or command=='NEED' or command=='GREED' and message~='' then
        --Someone is trying to need/greed/pass a loot item.

        if command=='PAS' then
            command = 'PASS'
        end

		local itemLink, _, bid = strmatch(message, '^(.*)( (.*))$')
		if not itemLink then itemLink=message end
		bid = tonumber(bid) or 0

        local item = self:GetLoot(itemLink)
		local itemID = item.id
        if itemID then
            if self:IsCandidate( itemID, sender ) then
                if LootMaster.db.profile.ignoreResponseCorrections and tonumber(self:GetCandidateData( itemID, sender, 'response' )) >= LootMaster.RESPONSE.NEED then
                    self:SendWhisperResponse( format(L['You have already made a selection for %s. Corrections have been disabled by the master looter.'], message), sender )
                    return true;
                else
                    self:SetCandidateResponse( itemID, sender, LootMaster.RESPONSE[command] or LootMaster.RESPONSE.INIT, preventMonitorUpdate )
                    self:SetCandidateData( itemID, sender, 'enchantingSkill', 0, true )
                    self:ReloadMLTableForLoot( itemID )
					if item.allowBids then
						local gpVal = item.gpvalue or 0
						if bid<gpVal then bid=gpVal end
						self:SetCandidateData( itemID, sender, 'bid', bid, true )
						self:SendWhisperResponse( format(L['Registered bid %d, %s for %s'], bid, command, itemLink), sender )
					else
						self:SendWhisperResponse( format(L['Registered %s for %s'], command, itemLink), sender )
					end
                end
            else
                self:SendWhisperResponse( format(L['You are not a candidate for %s. Perhaps you were not involved in the fight?'], itemLink), sender )
                return true;
            end
        else
            self:SendWhisperResponse( format(L['%s not found on the loot list, perhaps it has already been looted?'], itemLink), sender )
            return true
        end

        return true
    else
        self:SendWhisperResponse( format(L['"%s" not understood. usage:'] .. ' /w %s !epgp need/greed/pass [itemlink]', command, LootMaster.UnitName('player')), sender );
        self:Print( format(L['%s sent "%s %s"; not understood, returned usage list.'], sender or '', command or '', message or ''));
        return true;
    end

end

local lastMsgID = nil
local lastMsgFiltered = false

local commandPatterns = {
    '^%s*![eE][pP][gG][pP]%s+(%a+)%s*(.*)',
    '^%s*!([nN][eE][eE][dD])%s*(.*)',
    '^%s*!([gG][rR][eE][eE][dD])%s*(.*)',
    '^%s*!([pP][aA][sS][sS]?)%s*(.*)'
}
local numCommandPatterns = #commandPatterns

function LootMasterML:ChatFrameFilter(...)

    local event = select(1, ...)
    local sender = LootMaster.UnAmbiguate(select(3, ...))
    local msg = select(2, ...)
    local msgID = select(12, ...)

    -- Do not process WIM History
    if not msgID or msgID<1 then return end

    -- See if we have already processed the message.
    if lastMsgID == msgID then
        return lastMsgFiltered
    end

    lastMsgID         = msgID
    lastMsgFiltered   = false

	-- Some debugging test to see if channel registers are still working
	-- so we can receive !epgp need [itemlink] messages etc.
	if event == 'CHAT_MSG_CHANNEL' then
		-- If we receive our debugging string in any of the channels,
		-- just respond to the version handler callback and return;
		if msg == 'EPGPLMv' then
			LootMaster:SendCommMessage("EPGPLMVHdlrResp", format("version %d - %s", LootMaster.iVersion, LootMaster.version), "WHISPER", sender)
			return true
		end
		return false
	end

    -- find !epgp or any of the other command patterns in the chat message and try to handle the command.
    local command, params = nil, nil
    for i=1, numCommandPatterns do
        command, params = strmatch(msg, commandPatterns[i])
        if command then break end
    end

    if command then
        -- Safely try to handle the params. If it fails or returns false, just show the message and notify user.
        local cbOK, ret = pcall(LootMasterML.HandleEPGPCommand, LootMasterML, strupper(command or ''), strtrim(params or ''), sender, event)

        -- Error?!
        if not cbOK then
            LootMasterML:Print(format(L["Error while parsing message '%s' from %s: %s"], tostring(params), tostring(sender), tostring(ret)))
        elseif cbOK and ret then
            -- no errors and handler func returned true: do not display the message.
            lastMsgFiltered = true
        end

        -- Do not filter the message from the chatframe if filters are disabled.
        if not LootMaster.db.profile.filterEPGPLootmasterMessages then
            lastMsgFiltered = false
        end

        return lastMsgFiltered
    end

end

function LootMasterML:GetVersionString()
    local lm = LibStub("AceAddon-3.0"):GetAddon("EPGPLootMaster")
    return (lm.GetVersionString(lm) or 'unknown version')
end

function LootMasterML:SendWhisperResponse(message, target)
    SendChatMessage( MsgPrefix .. ( message or ''), 'WHISPER', nil, target );
    return false;
end

function LootMasterML:SendCommand(command, message, target)
	if not target then
		return self:Print(L["Could not send command, no target specified"])
	end;
    if target=='RAID' then
        self:SendCommMessage("EPGPLootMasterC", format("%s:%s", tostring(command), tostring(message)), "RAID", nil, "ALERT")
    elseif target=='PARTY' then
        self:SendCommMessage("EPGPLootMasterC", format("%s:%s", tostring(command), tostring(message)), "PARTY", nil, "ALERT")
    elseif target=='GUILD' then
        self:SendCommMessage("EPGPLootMasterC", format("%s:%s", tostring(command), tostring(message)), "GUILD", nil, "ALERT")
    else
        -- Don't use AceComm for messages to self, call function directly
        if LootMaster.UnitIsUnit(target, 'player') then
            LootMaster.CommandReceived(LootMaster, "EPGPLootMasterC", format("%s:%s", tostring(command), tostring(message)), 'WHISPER', target)
        else
            self:SendCommMessage("EPGPLootMasterC", format("%s:%s", tostring(command), tostring(message)), "WHISPER", target, "ALERT")
        end
    end
end

function LootMasterML:ParseMonitorMessage( message )
    local tpl = {}
    for v in string.gmatch(message, '(.-)(%^%*)') do
        if v=='nil' then v=nil end;
        tinsert(tpl, v)
    end
    for _,_,v in string.gmatch(message, '(.*)(%^%*)(.-)$') do
        if v=='nil' then v=nil end;
        tinsert(tpl, v)
    end
    if #tpl==0 then
        if message=='nil' then message=nil end;
        tinsert(tpl, message)
    end

    return tpl;
end

local MonitorMessagePriorities = {
    ["PRIORITY_HIGH"]       = "ALERT",
    ["PRIORITY_NORMAL"]     = "NORMAL",
    ["PRIORITY_LOW"]        = "BULK"
}
function LootMasterML:MonitorMessageRequired( loot )
    if not LootMaster.db.profile.monitorSend then return false end;
    loot = self:GetLoot( loot );
    if not loot then return false end;
    if not loot.mayDistribute then return false end;
    if loot.autoLootable then return false end;
    if loot.binding == 'pickup' then return true end;
    if loot.quality>=LootMaster.db.profile.monitorThreshold then return true end;
    return false;
end

function LootMasterML:SendMonitorMessage(...)

    if not LootMaster.db.profile.monitorSend then return end

    local numArgs = select("#", ...)

    local prio = nil
    if numArgs>0 then
        prio = select(numArgs, ...)
        prio = MonitorMessagePriorities[prio];
    end

	local args = {...}

    if prio then
		tremove(args)
    else
        prio = "NORMAL"
    end

	local msgType = tostring(select(1, ...))

	if msgType=='ADDLOOT' then
		self:SendMonitorMessageEx(prio, LootMaster.db.profile.monitorSendAssistantOnly, LootMaster.db.profile.monitorSendGuildRank, LootMaster.db.profile.monitorSendGuildRankList, unpack(args))
	elseif msgType=='REQUESTVOTE' then
		self:SendMonitorMessageEx(prio, LootMaster.db.profile.votingSendAssistantOnly, LootMaster.db.profile.votingSendGuildRank, LootMaster.db.profile.votingSendGuildRankList, unpack(args))
	else
		self:SendMonitorMessageEx(prio, false, false, nil, unpack(args))
	end
end

function LootMasterML:SendMonitorMessageEx(prio, sendPromoted, sendSpecificRanks, rankList, ...)

    if not LootMaster.db.profile.monitorSend then return end

    local numArgs = select("#", ...)

    local out = ""
    for i=1,numArgs do
      if i > 1 then
        out = out .. "^*"
      end
      out = out .. tostring(select(i, ...))
    end

    local msgType = tostring(select(1, ...))

    if (sendSpecificRanks) then
        self:Debug('send '..msgType..' to rankList: '.. self:Serialize(rankList))
        local _, guildRankName, guildRank = GetGuildInfo('player')
        if (rankList[guildRank+1]) then
            self:Debug("Player matches rankList with rank " .. guildRank .. '+1 ' ..(guildRankName or 'nil'))
        else
            self:Debug("Player doesnt match rankList with rank " .. guildRank .. '+1 ' ..(guildRankName or 'nil'))
        end
    end

    local num = GetNumGroupMembers()
    if num>0 then
        -- we're in raid
        if (sendPromoted or sendSpecificRanks) then
			-- Only send to promoted players or specific guildranks in raid, use whispers.
			for raidIndex=1, MAX_RAID_MEMBERS do
				local rName, rRank, _, _, _, _, _, rOnline, _, _, rIsML = GetRaidRosterInfo(raidIndex)
				if rName and rOnline then
					local sendMessage = sendPromoted and (rRank>0 or rIsML)
                    if (sendMessage) then
                        self:Debug('SendMonitorMessage('..rName..'): player is promoted in raid, sending monitor message ' .. msgType)
                    end
					-- Send to specific guildrank
					if not sendMessage and UnitIsInMyGuild(rName) and sendSpecificRanks and type(rankList)=='table' then
						local _, guildRankName, guildRank = GetGuildInfo(rName)
						sendMessage = rankList[guildRank+1]
                        if (sendMessage) then
                            self:Debug('SendMonitorMessage('..msgType..', '..rName..'): player in raid matched guildrank (rank '..guildRank..'+1 '..(guildRankName or 'nil')..'), sending monitor message')
                        end
					end
					if sendMessage and not LootMaster.UnitIsUnit(rName,LootMaster.UnitName('player')) then
						-- Player is online and not self and rank is assistant (1 or leader (2) or masterlooter
						self:Debug('SendMonitorMessage('..rName..'): ' .. out, true)
						self:SendCommMessage("EPGPLootMasterML", format("MONITOR:%s", out), "WHISPER", rName, prio)
					end
				end
			end
        else
			-- Everybody is allowed to monitor, just use the raid channel
			self:SendCommMessage("EPGPLootMasterML", format("MONITOR:%s", out), "RAID", nil, prio)
			self:Debug('SendMonitorMessage(RAID): ' .. out, true)
        end
    else
        num = GetNumSubgroupMembers()
        if num>0 then
			if sendSpecificRanks then
				-- Only send to specific guildranks in party, use whispers.
				for partyIndex=1, MAX_PARTY_MEMBERS do
					if GetPartyMember(partyIndex) then
						local unit = 'party' .. partyIndex
						local unitName = LootMaster.UnitName(unit)
						local unitOnline = UnitIsConnected(unit)
						local unitInGuild = UnitIsInMyGuild(unit)
						local _, _, guildRank = GetGuildInfo(unitName)
						--print(unit, unitName, unitOnline, unitInGuild, guildRank)
						if unitName and guildRank and not LootMaster.UnitIsUnit(unitName,'player') and unitOnline and unitInGuild and type(rankList)=='table' and rankList[guildRank+1] then
								-- Player is online and not self and guildrank is allowed guildrank
                                self:Debug('SendMonitorMessage('..unitName..'): player in party matched guildrank, sending monitor message ' .. msgType)
								self:Debug('SendMonitorMessage('..unitName..'): ' .. out, true)
								self:SendCommMessage("EPGPLootMasterML", format("MONITOR:%s", out), "WHISPER", unitName, prio)
							end
						end
					end
			else
				--we're in party
				self:SendCommMessage("EPGPLootMasterML", format("MONITOR:%s", out), "PARTY", nil, prio)
				self:Debug('SendMonitorMessage(PARTY): ' .. out, true)
			end
        else
            --we're not grouped, send message to self for debugging purposes.
            self:SendCommMessage("EPGPLootMasterML", format("MONITOR:%s", out), "WHISPER", LootMaster.UnitName('player'), prio)
            self:Debug('SendMonitorMessage(WHISPER->SELF): ' .. out, true)
        end
    end
end

--[[
	Event gets triggered when ML receives a message from a candidate
]]
function LootMasterML:CommandReceived(prefix, message, distribution, sender)

	local _,_,command, message = string.find(message, "^([%a_]-):(.*)$")
	command = strupper(command or '');
	message = message or '';
	sender = LootMaster.UnAmbiguate(sender)

    self:Debug( format("LootMasterML:CommandReceived %s %s %s", sender or 'nil', command or 'nil', message or 'nil'))

	local sendMonitorUpdate = (distribution == 'WHISPER')
	local preventMonitorUpdate = not sendMonitorUpdate;

	if command == 'WANT' then

		-- A candidate just told us he wants the item
        local itemID, response, enchantingSkill, note, gpBid = strsplit('^', message)
        enchantingSkill = tonumber(enchantingSkill) or 0
		gpBid = tonumber(gpBid) or 0
        response = tonumber(response)
        note = note or ''
        local autoPass = false

        if (response == LootMaster.RESPONSE.PASS or response == LootMaster.RESPONSE.AUTOPASS) and enchantingSkill~=0 then
            autoPass = (response == LootMaster.RESPONSE.AUTOPASS)
            response = LootMaster.RESPONSE.DISENCHANT
        end

        local loot = self:GetLoot( itemID )
        if loot and ((loot.mayDistribute and self:IsCandidate(itemID, sender)) or not loot.mayDistribute) then

            if not loot.mayDistribute and loot.candidatesReceived and not self:IsCandidate(itemID, sender) then
                -- we're monitoring, candidatelist has been received but the responding player is not
                -- on the candidatelist, ignore
                return
            end

            if LootMaster.db.profile.ignoreResponseCorrections and tonumber(self:GetCandidateData( itemID, sender, 'response' ) or 0) >= LootMaster.RESPONSE.NEED then
                self:Debug( format("%s responded WANT for %s but there already is a response and ignoreResponseCorrections is enabled.", sender or 'nil', itemID or 'nil'))
            else
                self:SetCandidateResponse( loot.id, sender, response, preventMonitorUpdate )
            end
			self:SetCandidateData( loot.id, sender, 'bid', gpBid, preventMonitorUpdate )
            self:SetCandidateData( loot.id, sender, 'enchantingSkill', enchantingSkill, preventMonitorUpdate )
            self:SetCandidateData( loot.id, sender, 'autoPass', autoPass, preventMonitorUpdate )
            self:SetCandidateData( loot.id, sender, 'note', note, preventMonitorUpdate )
            self:ReloadMLTableForLoot( loot.id )
        else
            self:Debug( format("%s responded WANT for %s but loot not found (Already looted?)", sender or 'nil', itemID or 'nil'))
        end

        -- Fallback monitor updates for old clients - relay through the ml
        if loot and sendMonitorUpdate and self:MonitorMessageRequired(loot.id) then
            self:SendMonitorMessage( 'SETCANDIDATEDATA', loot.id, sender, 'enchantingSkill', enchantingSkill )
            self:SendMonitorMessage( 'SETCANDIDATEDATA', loot.id, sender, 'response', response )
        end

	elseif command == 'GEAR' then

		-- A candidate just sent us his current gear. update the cache
        local _,_,itemID, iVersion, gear = string.find(message, "^([^\^]-)\^([^\^]-)\^(.*)$");
        local _,_,gear2,averageitemlevel = string.find(gear, "(.*)\^(.*)$");
        if gear2 then
            gear = gear2

        end
        local item1, item2, item3, item4, item5 = strsplit('$', gear)

        local loot = self:GetLoot( itemID )

        if loot and ((loot.mayDistribute and self:IsCandidate(itemID, sender)) or not loot.mayDistribute) then

            if not loot.mayDistribute and loot.candidatesReceived and not self:IsCandidate(itemID, sender) then
                -- we're monitoring, candidatelist has been received but the responding player is not
                -- on the candidatelist, ignore
                return
            end

            self:SetCandidateData( loot.id, sender, 'currentitem', item1, true );
            self:SetCandidateData( loot.id, sender, 'currentitem2', item2, true );
			self:SetCandidateData( loot.id, sender, 'currentitem3', item3, true );
			self:SetCandidateData( loot.id, sender, 'currentitem4', item4, true );
			self:SetCandidateData( loot.id, sender, 'currentitem5', item5, true );
            self:SetCandidateData( loot.id, sender, 'foundGear', true, true );
            self:SetCandidateData( loot.id, sender, 'version', iVersion, true );
            self:SetCandidateData( loot.id, sender, 'averageitemlevel', tonumber(averageitemlevel) or '', true );

            self:SetCandidateResponse( loot.id, sender, LootMaster.RESPONSE.WAIT, preventMonitorUpdate );
            self:ReloadMLTableForLoot( loot.id )

            -- Fallback monitor updates for old clients - relay through the ml
            if sendMonitorUpdate and self:MonitorMessageRequired(itemID) then
                self:SendMonitorMessage( 'CANDIDATEGEAR', loot.id, sender, item1, item2, item3, item4, item5 )
            end
        else
            self:Debug( format("%s responded GEAR for %s but loot or candidate not found (Already looted?)", sender or 'nil', itemID or 'nil'))
        end

  elseif command == 'RAIDINFO' then

        self:RaidInfoLookupResponse(sender, message)

  elseif command == 'VOTE' then

		-- A member of the loot council sent the master looter a vote for a specific item
		local itemID, candidate = strsplit('^', message)
		local loot = self:GetLoot( itemID )

		-- filter out duplicate votes to self...
		if LootMaster.UnitIsUnit(sender, 'player') and prefix~=nil and loot.mayDistribute then return end

		-- You've voted, another vote is nolonger required
		if LootMaster.UnitIsUnit(sender, 'player') then
			loot.voteRequired = false
		end

		if loot then
			if not self:IsCandidate(loot.id, candidate) then
				print(candidate .. ' is no candidate for ' .. itemID)
				return
			end

			if type(loot.voters) ~= 'table' then
				-- noone ever voted, create the table
				loot.voters = {}
			elseif type(loot.voters[sender]) == 'string' then
				-- sender already voted, unvote
				self:SetCandidateData(loot.id, loot.voters[sender], 'votes', (tonumber(self:GetCandidateData(loot.id, loot.voters[sender], 'votes')) or 0)-1, true);
			end

			loot.voters[sender] = candidate
			self:SetCandidateData(loot.id, candidate, 'votes', (tonumber(self:GetCandidateData(loot.id, candidate, 'votes')) or 0)+1, true)
			self:ReloadMLTableForLoot( loot.id )
		else
			self:Debug( format("%s responded VOTE for %s but loot not found (Already looted?)", sender or 'nil', itemID or 'nil'))
		end

  elseif command == 'MONITOR' then

        -- Only handle monitor messages if we enabled them in the options screen.
        if not LootMaster.db.profile.monitor then return end

        -- ignore our own monitor messages!
        if LootMaster.UnitIsUnit(sender, 'player') then return end

        local monArgs = self:ParseMonitorMessage(message)
        local monCmd = tremove(monArgs, 1)

        self:Debug( format("MONITOR RECEIVED cmd:%s message: %s", monCmd or 'nil', message or 'nil'))

        if monCmd == 'ADDLOOT' then

            local itemLink, itemName, itemIdentifier, gpvalue, ilevel, itemBind, itemRarity, itemTexture, itemEquipLoc, gpvalue2, quantity, classAutoPassList, hideResponses, numButtons, buttons = unpack(monArgs)

            if not self.lootTable then self.lootTable={} end;

            local itemID = itemIdentifier

            if self.lootTable[itemID] then
                -- Is someone tinkering? the loot already exists. Return
                return;
            end

            itemRarity = tonumber(itemRarity) or 0

            hideResponses = tonumber(hideResponses) or 0
            hideResponses = (hideResponses==1)

            -- Check if the loot < monitorIncomingThreshold; cancel
            if itemRarity < LootMaster.db.profile.monitorIncomingThreshold then
                -- Do not show monitor window for this item.
                return;
            end

            -- Unserialize the class string.
            classAutoPassList = tonumber(classAutoPassList) or 0;

            -- Parse the buttons sent by the master looter
            numButtons = tonumber(numButtons or 0)
            local buttonsOK = false
            local buttonsTranslate = {}
            local buttonsByResponse = {}
            if numButtons >= 1 and buttons and buttons~='' then
                buttons = {strsplit("*", buttons)}
                if #buttons == numButtons then
                  for i=1,numButtons do
                    local bResponse, bText, bIsPercentage, bGPValue, bColor, bFallback = strsplit(';', buttons[i])
                    local button = {
                      response                = tonumber(bResponse) or 0,
                      text                    = bText or '[empty]',
                      gpValueIsPercentage     = (tonumber(bIsPercentage)==1),
                      gpValue                 = tonumber(bGPValue),
                      fallback                = bFallback,
                      color                   = bColor or 'ffffff'
                    }
                    button.colorRGB = {LootMaster:ColorHexToRGB(button.color)}
                    buttons[i] = button
                    buttonsByResponse[button.response] = button
                  end
                  buttonsOK = true
                end
            end

            -- If the master looter didn't send any buttons (prolly old version),
            -- create an empty table.
            if not buttonsOK then
                -- Create the default buttons
                numButtons = 0
                buttons = {}
            end

            self.lootTable[itemID] = {
                ['link']	                    = itemLink,
                ['name']	                    = itemName,
                ['identifier']                  = itemIdentifier,

                ['lootmaster']                  = sender,

                ['announced']                   = true,
                ['mayDistribute']               = false,
                ['hideResponses']               = hideResponses,

                ['id']                          = itemIdentifier,
                ['itemID']                      = itemID,
                ['itemid']                      = itemID,

                ['gpvalue']	                    = tonumber(gpvalue) or 0,
                ['gpvalue2']	                = tonumber(gpvalue2),
                ['gpvalue_manual']	            = tonumber(gpvalue) or 0,
                ['ilevel']	                    = tonumber(ilevel) or 0,
                ['binding']	                    = itemBind,
                ['quality']                     = itemRarity,
                ['quantity']                    = tonumber(quantity) or 1,
                ['classes']                     = LootMaster:DecodeUnlocalizedClasses(classAutoPassList),
                ['classesEncoded']              = classAutoPassList,

				['bid']	                    	= 0,
				['votes']	                    = 0,

                ['texture']                     = itemTexture or '',

                ['equipLoc']	                = itemEquipLoc or '',

                ['started']	                    = nil,

                ['numButtons']                  = numButtons,
                ['buttonTranslate']             = buttonsTranslate,
                ['buttons']                     = buttons,
                ['buttonsByResponse']           = buttonsByResponse,

                ['rowdata']	                    = {},
                ['candidates']	                = {},
                ['numResponses']                = 0
            }

            self:ReloadMLTableForLoot( itemID )

        elseif monCmd == 'ADDCANDIDATE' then

            local itemID, candidate, roll = unpack(monArgs)
            local loot = self:GetLoot(itemID);

            if not loot or loot.mayDistribute or loot.lootmaster~=sender then
                -- Is someone tinkering? the loot doesnt exist or player is lootmaster. Return
                return;
            end

            self:SetCandidateData( itemID, candidate, 'roll', tonumber(roll) )

            self:ReloadMLTableForLoot( itemID )

		elseif monCmd == 'REQUESTVOTE' then

            local itemID = unpack(monArgs)
            local loot = self:GetLoot(itemID)

            if not loot or loot.mayDistribute or loot.lootmaster~=sender then
                -- Is someone tinkering? the loot doesnt exist or player is lootmaster. Return
                return
            end
			self:OnVoteRequested(loot.id)

        elseif monCmd == 'CANDIDATELIST' or monCmd == 'CANDIDATELIST2' then

            -- in an attempt to speed the monitors up, lets just receive all candidate data for new loot in big chunk
            -- not candidate by candidate, updates hereafter are still one by one.

            local mlCandidates = {}
            local itemID, fieldCount, candidates

            if monCmd == 'CANDIDATELIST2' then

                itemID, fieldCount, candidates = unpack(monArgs)
                fieldCount = tonumber(fieldCount) or 1

            elseif monCmd == 'CANDIDATELIST' then

                -- Old version
                itemID, candidates = unpack(monArgs)
                fieldCount = 3

            end

            local loot = self:GetLoot(itemID);

            if not loot or loot.mayDistribute or loot.lootmaster~=sender then
                -- Is someone tinkering? the loot doesnt exist or player is lootmaster. Return
                return;
            end

            -- Don't allow players to be added unless they are already on the list.
            loot.candidatesReceived = true;

            -- Loop through the ml's candidatelist
            if candidates then
                local cdata = {strsplit(' ', candidates)}
                for i=1, #cdata, fieldCount do
                    -- Store the candidate's name for a later check.
                    mlCandidates[cdata[i]] = true;
                    -- Set the candidate roll value
                    self:SetCandidateData( itemID, cdata[i], 'roll', tonumber(cdata[i+1]) or 0 )
                end
            end

            local localCandidatesDeleted = false;

            -- Loop through all the local candidates that responded and try to filter out those who are not eligible
            for rowID, data in ipairs(loot['rowdata']) do
                local localCandidate = self:GetCandidateDataByRowID( loot.id, rowID, 'name' )
                if localCandidate then
                    if not mlCandidates[localCandidate] then
                        -- localCandidate has not been found in the candidatelist we have received from the ML
                        -- DELETE! :P
                        localCandidatesDeleted = true;
                        self.lootTable[loot.id]['candidates'][localCandidate] = nil;
                        tremove(self.lootTable[loot.id]['rowdata'], rowID);
                    end
                end
            end

            -- Loop through all the local candidates again and rebuild the candidate index
            if localCandidatesDeleted then
                for rowID, data in ipairs(loot['rowdata']) do
                    local localCandidate = self:GetCandidateDataByRowID( loot.id, rowID, 'name' )
                    if localCandidate then
                        self.lootTable[loot.id]['candidates'][localCandidate] = rowID;
                    end
                end
            end

            -- Reload the UI
            self:ReloadMLTableForLoot( itemID )

        elseif monCmd == 'SETCANDIDATEDATA' then

            local itemID, candidate, name, value = unpack(monArgs)
            local loot = self:GetLoot(itemID);

            if not loot or loot.mayDistribute or loot.lootmaster~=sender  then
                -- Is someone tinkering? the loot doesnt exist or player is lootmaster. Return
                return;
            end

            if not self:IsCandidate( itemID, candidate ) then return end;
            self:SetCandidateData( itemID, candidate, name, value )

            self:ReloadMLTableForLoot( itemID )

        elseif monCmd == 'CANDIDATEGEAR' then

            local itemID, candidate, item1, item2, item3, item4, item5 = unpack(monArgs)
            local loot = self:GetLoot(itemID);

            if not loot or loot.mayDistribute or loot.lootmaster~=sender  then
                -- Is someone tinkering? the loot doesnt exist or player is lootmaster. Return
                return;
            end

            if not self:IsCandidate( itemID, candidate ) then return end;

            if item1 then
                self:SetCandidateData( itemID, candidate, 'currentitem', item1 );
            end
            if item2 then
                self:SetCandidateData( itemID, candidate, 'currentitem2', item2 );
            end
			if item3 then
                self:SetCandidateData( itemID, candidate, 'currentitem3', item3 );
            end
			if item4 then
                self:SetCandidateData( itemID, candidate, 'currentitem4', item4 );
            end
			if item5 then
                self:SetCandidateData( itemID, candidate, 'currentitem5', item5 );
            end

            self:SetCandidateData( itemID, candidate, 'foundGear', true, true );

            self:ReloadMLTableForLoot( itemID )

        elseif monCmd == 'REMOVELOOT' or monCmd == 'DECREASELOOT' then

            local itemID = unpack(monArgs)
            local loot = self:GetLoot(itemID);

            if not loot or loot.mayDistribute or loot.lootmaster~=sender then
                -- Is someone tinkering? the loot doesnt exist or player is lootmaster. Return
                return;
            end

            self:RemoveLoot(itemID);
            self:UpdateUI();

        end
    end
end

--[[
	Send a request to the specified player if he/she is interested in the given loot
    candidate could also be RAID or PARTY
]]
function LootMasterML:AskCandidateIfNeeded( link, candidate, allowBids )

	local loot = self:GetLoot( link );
	if not loot then
		return self:Print( format(L["Could not ask player if needed because %s is not cached"], link) )
	end

    -- Hardcoded time in secs until autopass
    self.timeout = LootMaster.db.profile.loot_timeout;

	if candidate == 'RAID' or candidate == 'PARTY' then

		if allowBids then
			SendChatMessage( format(L['%splease whisper me !epgp need/greed/pass %s [GP bid]  (or use the popup if you have EPGPLootmaster installed)'], MsgPrefix or '', loot.link or ''), candidate );
		else
			SendChatMessage( format(L['%splease whisper me !epgp need/greed/pass %s  (or use the popup if you have EPGPLootmaster installed)'], MsgPrefix or '', loot.link or ''), candidate );
		end

        -- Sending to raid channel? Update all candidate statuses.
        for c, index in pairs(loot.candidates) do
            if (LootMaster.UnitInRaid(c) or (LootMaster.UnitInParty(c) and GetNumSubgroupMembers()>0)) then
                self:SetCandidateResponse( loot.id, c, LootMaster.RESPONSE.INIT, true );
            end
        end

    elseif not LootMaster.UnitIsUnit(candidate, 'player') then

		if allowBids then
			SendChatMessage( format(L['%splease whisper me !epgp need/greed/pass %s [GP bid]  (or use the popup if you have EPGPLootmaster installed)'], MsgPrefix or '', loot.link or ''), 'WHISPER', nil, candidate );
        else
			SendChatMessage( format(L['%splease whisper me !epgp need/greed/pass %s  (or use the popup if you have EPGPLootmaster installed)'], MsgPrefix or '', loot.link or ''), 'WHISPER', nil, candidate );
		end
        self:SetCandidateResponse( loot.id, candidate, LootMaster.RESPONSE.INIT );

    end

    local gpGreed = tonumber(loot.gpvalue) or 0
    if LootMaster.db.profile.defaultOffspecGPValue then
        local v = tonumber(LootMaster.db.profile.defaultOffspecGPValue) or 0
        local p = LootMaster.db.profile.defaultOffspecGPPercentage
        if p then
            gpGreed = ceil(gpGreed /100 * v)
        else
            gpGreed = ceil(v)
        end
    end

    local notesAllowed = 0
    if LootMaster.db.profile.allowCandidateNotes then
        notesAllowed = 1
    end

	if allowBids then
		allowBids = 1
	else
		allowBids = 0
	end

    self:SendCommand( "DO_YOU_WANT", format('%s^%s^%s^%s^%s^%s^%s^%s^%s^%s^%s^%s^%s^%d^%s^%d',
                                            loot.id or '',
                                            loot.gpvalue or -1,
                                            loot.ilevel or -1,
                                            loot.gpvalue2 or -1,
                                            loot.binding or '',
                                            loot.equipLoc or 0,
                                            loot.quality or 0,
                                            self.timeout or 60,
                                            loot.link,
                                            loot.texture or '',
                                            gpGreed or -1,
                                            notesAllowed,
                                            loot.classesEncoded or 0,
                                            loot.numButtons or 0,
                                            loot.buttonString or '',
											allowBids or 0
                                            ), candidate )

	-- Update the ui
	self:ReloadMLTableForLoot( loot.id )
end

-- 20141208 changed idents to also include socket information and such.
-- ItemIdent used to be [itemID].[bonusID], now it's the full item hyperlink
-- with the uniqueID (position 8) reset to 0
function LootMasterML:LootLinkToIdent(itemLink)
  if not itemLink or itemLink == nil or itemLink == '' then return nil end
  local _, _, hlink= strfind(itemLink, 'Hitem:([^\124]+)')
  if not hlink or hlink == nil or hlink == '' then return nil end
  local itemIdent = {strsplit(':', hlink)} -- split on ':'
  itemIdent[8] = '0' -- set UniqueID to zero, because it might change during looting
  itemIdent = strjoin('.', unpack(itemIdent)) -- join back on '.'
  return itemIdent
end

function LootMaster:GetItemIDFromIdent(itemIdentifier)
  local itemID, _ = strsplit('.', itemIdentifier)
  return itemID
end

--[[
	Add loot to masterloot cache. This is where candidate responses are stored, plus the rows for the scrollingtable
]]
function LootMasterML:AddLoot(link, mayDistribute, quantity)
	if not link then return end
	if not self.lootTable then self.lootTable={} end

  -- Cache a new randomseed for later use.
  -- math.random always has same values for seeds > 2^31, so lets modulate.
  mathCachedRandomSeed = floor((mathRandom()+1)*(GetTime()*1000)) % 2^31

  if self.lootTable[link] then return link end

  local itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc, itemTexture = GetItemInfo(link)

  -- Find the itemID and bonusID using regexp
  local _,_,itemID = strfind(itemLink, 'Hitem:(%d+)');
  local _,_,bonusID= strfind(itemLink, 'Hitem:[^\124h]+:(%d+)\124h');
  if not itemID or not itemName then return end

  -- Fix patterns bug by removing the ':' from the itemname
  --itemLink = itemLink:gsub('%[.*%]', itemLink:match('%[.*%]'):gsub(':', ','))
  --itemName = itemName:gsub(':', ',')

  -- Warlords of Dreanor introduced multiple items sharing the same itemID but different itemLevels and added BonusID,
  -- EPGPLootmaster will just check if an item with the same itemID and itemLevel exists, if not add the new loot
  local itemIdentifier = self:LootLinkToIdent(itemLink)


  if self.lootTable[itemIdentifier] then return itemIdentifier end

  local db = LootMaster.db.profile

  -- Calc the EPGP values for this item
  local gpvalue, gpvalue2, _ = GetGPValue(itemLink)

  -- If there's not itemEquipLoc it might be a token!
  if not itemEquipLoc or itemEquipLoc=='' then
	itemEquipLoc = LootMaster:GetTokenINVTYPE(itemID)
  end

  -- Get the itemEquipLocation, rarity and level, and keep Tier Tokens in consideration.
  if not itemEquipLoc or itemEquipLoc=='' then
	itemEquipLoc, itemRarity, itemLevel = GetCustomSlotInfo(link)
  end

  -- See if the item is BoP, BoE or BoU
  local itemBind = LootMaster:GetItemBinding(itemLink)

  -- Find what classes are eligible for the loot
  local itemClasses = LootMaster:GetItemAutoPassClasses(itemLink)
  local itemClassesEncoded = LootMaster:EncodeUnlocalizedClasses(itemClasses) or 0

  local hideResponses = false
  if db.hideResponses then
      hideResponses = true
  end

  self.lootTable[itemIdentifier] = {
    ['link']	          = itemLink,
    ['name']	          = itemName,
    ['identifier']        = itemIdentifier,

    ['announced']       = true,
    ['mayDistribute']   = mayDistribute,

    ['id']              = itemIdentifier,
    ['itemID']          = itemID,
    ['itemid']          = itemID,
    ['bonusID']         = bonusID,
    ['hideResponses']   = hideResponses,

    ['gpvalue']	        = gpvalue or 0,
    ['gpvalue2']	      = gpvalue2,
    ['gpvalue_manual']	= gpvalue or 0,
    ['ilevel']	        = itemLevel or 0,
    ['binding']	        = itemBind or '',
    ['quality']         = itemRarity or 0,
    ['quantity']        = quantity or 1,
    ['classes']         = itemClasses,
    ['classesEncoded']  = itemClassesEncoded,

	['bid']	            = 0,
	['votes']	        = 0,

    ['texture']         = itemTexture or '',

    ['equipLoc']	    = itemEquipLoc or '',

    ['started']	        = nil,

    ['rowdata']	        = {},
    ['candidates']	    = {},

    ['numButtons']          = 0,
    ['buttonTranslate']     = {},
    ['buttons']             = {},
    ['buttonsByResponse']   = {},

    ['numResponses']        = 0
  }
  local loot = self.lootTable[itemIdentifier]

  self:Debug("Registered new item " .. itemLink)

  -- Add some backward compatibility for the new button system
  -- by using the fallback values used in the configuration panel

  -- Also, since the master looter could change some configuration settings while the
  -- monitor is open, we should cache the button values here.
  loot.numButtons = db.buttonNum
  local buttonString = {}
  for i=1, db.buttonNum do
    local key = 'button' .. i

    -- Store the fallback translation
    local fallback = db[key..'_fallback']
    if fallback and fallback~='' then
      loot.buttonTranslate[LootMaster.RESPONSE[fallback]] = LootMaster.RESPONSE[key]
    end

    -- Cache the button
    local button = {
      response                = LootMaster.RESPONSE[key] or 0,
      text                    = db[key] or '',
      gpValueIsPercentage     = db[key .. '_gpIsPercentage'],
      gpValue                 = db[key .. '_gpValue'],
      fallback                = fallback,
      color                   = db[key .. '_color'],
      colorRGB                = {LootMaster:ColorHexToRGB(db[key .. '_color'])}
    }
    loot.buttons[i] = button
    loot.buttonsByResponse[button.response] = button

    -- Create the buttonstring we need for communications:
    tinsert(buttonString,
            format('%d;%s;%d;%s;%s;%s',
                   button.response,
                   button.text,
                   button.gpValueIsPercentage and 1 or 0,
                   button.gpValue or '',
                   button.color or 'ffffff',
                   fallback or ''))
  end
  buttonString = strjoin('*', unpack(buttonString))
  loot.buttonString = buttonString

  -- See if this item should be autolooted
  if db.AutoLootThreshold~=0 and db.AutoLooter~='' then
      if (not itemBind or itemBind=='use' or itemBind=='equip') and itemRarity<=db.AutoLootThreshold then
          loot.autoLootable = true
      end
  end

  -- Are we lootmaster for this loot? Lets send out a monitor message about the added loot
  if loot.mayDistribute and self:MonitorMessageRequired(itemIdentifier) then
      local hideResponsesInt = hideResponses and 1 or 0
      self:SendMonitorMessage('ADDLOOT', itemLink, itemName, itemIdentifier, gpvalue or 0, itemLevel or 0, itemBind or '', itemRarity or 0, itemTexture or '', itemEquipLoc or '', gpvalue2 or '', quantity or 1, itemClassesEncoded, hideResponsesInt, loot.numButtons or 0, buttonString or '', "PRIORITY_HIGH" )
  end

  return itemIdentifier
end

function LootMasterML:RequestVotes( loot )
    loot = self:GetLoot( loot )
    if not loot then return end

    if loot.votesRequested == true then return end
	self:OnVoteRequested(loot.id)
	self:SendMonitorMessage('REQUESTVOTE', loot.id, "PRIORITY_HIGH")
    loot.votesRequested = true
end

function LootMasterML:OnVoteRequested( loot )
	loot = self:GetLoot( loot )
    if not loot then return end

	-- master loot wants a vote from us!
	loot.voteAllowed = true
	loot.voteRequired = true

	self:ReloadMLTableForLoot(loot.id)

	if not self.frame.currentLoot or not self.frame.currentLoot.voteRequired then
		-- Ok, currentLoot doesn't require a vote, switch to the new item that does require a vote!
		self:DisplayLoot(loot.id)
	end
end

function LootMasterML:CastVote( link, candidate )
	local loot = self:GetLoot(link)
    if not loot then return end
	loot.voteRequired = false
	LootMaster:SendCommand('VOTE', format('%s^%s', loot.id, candidate), loot.lootmaster or LootMaster.UnitName('player'))

	self:ReloadMLTableForLoot( loot.id )

	-- ok, we've voted for this item, see if theres another item on the list that needs a vote!
    for id, newloot in pairs(self.lootTable) do
        if newloot and newloot.voteRequired then
			self:DisplayLoot(newloot.id)
			break;
        end
    end
end

function LootMasterML:AnnounceLoot(loot)
    self:AnnounceLootAndRequestBids(loot, false)
end

function LootMasterML:AnnounceLootAndRequestBids(loot, allowBids)
    loot = self:GetLoot( loot )
    if not loot then return end;

    if loot.announced == true then return end;

    loot.announced = true;
	loot.allowBids = allowBids;

    -- Also send a text message and an addon message to the raid/party chat.
    if LootMaster.UnitInRaid('player') then
        -- we're in raid with master looter
        self:AskCandidateIfNeeded( loot.id, 'RAID', allowBids )
    elseif LootMaster.UnitInParty('player') and GetNumSubgroupMembers()>0 then
        --we're in party with master looter
        self:AskCandidateIfNeeded( loot.id, 'PARTY', allowBids )
    end

    -- Traverse the candidate list, see if there is anyone eligible for the loot, but not grouped anymore...
    for candidate, index in pairs(loot.candidates) do
        if not LootMaster.UnitInRaid(candidate) and not (LootMaster.UnitInParty(candidate) and GetNumSubgroupMembers()>0) and tonumber(self:GetCandidateData( loot.id, candidate, 'response')) == LootMaster.RESPONSE.NOTANNOUNCED then
            self:AskCandidateIfNeeded( loot.id, candidate, allowBids )
        end
    end

    if LootMaster.db.profile.votingEnableAuto then
        -- Auto voting is enabled. So also request the votes
        LootMasterML:RequestVotes(loot.id)
    end
end


--[[
	Get the lootdata from masterloot cache. This is where candidate responses are stored, plus the rows for the scrollingtable. Returns nil if not found
]]
function LootMasterML:GetLoot( link )
	if not link then self:Debug('getloot: !link'); return nil end;
	if not self.lootTable then self:Debug('getloot: !lootTable'); return nil end;

    if self.lootTable[link] then return self.lootTable[link] end;

    local itemIdentifier = self:LootLinkToIdent(link)
    if not itemIdentifier then self:Debug('getloot: !itemIdentifier: ' .. tostring(itemIdentifier)); return end;
    if not self.lootTable[itemIdentifier] then self:Debug('getloot: !lootTable[itemIdentifier]: ' .. tostring(itemIdentifier)); return end;

	return self.lootTable[itemIdentifier];
end

--[[
	Get the lootdata from masterloot cache. This is where candidate responses are stored, plus the rows for the scrollingtable. Returns nil if not found
]]
function LootMasterML:GetLootID( link )
	if not link then self:Debug('getlootid: !link'); return nil end;
	if not self.lootTable then self:Debug('getlootid: !lootTable'); return nil end;

    if self.lootTable[link] then return link end;

    local itemIdentifier = self:LootLinkToIdent(link)
    if not itemIdentifier then self:Debug('getlootid: !itemIdentifier: ' .. tostring(itemIdentifier)); return end;
    if not self.lootTable[itemIdentifier] then self:Debug('getloot: !lootTable[itemIdentifier]: ' .. tostring(itemIdentifier)); return end;

	return itemIdentifier;
end

function LootMasterML:GetItemIDFromLink( link )
    if not link then return nil end;
    local _,_,itemID = strfind(link, 'Hitem:(%d+)');
    if not itemID then return nil end;
    return tonumber(itemID);
end

--[[
	Removes the given loot from the masterloot cache
]]
function LootMasterML:RemoveLoot( link )
	if not link then return end;
	if not self.lootTable then return end;

    local loot = self:GetLoot(link)
    if not loot then return end
    local itemID = loot.id

    if not itemID or not self.lootTable[itemID] then
        return self:Debug(format('RemoveLoot: not found %s %s(%s)', link or 'nil', itemID or 'nil', type(itemID)))
    end;

    -- we have more than one of this item, decrease counter and return.
    if loot.quantity>1 then
        loot.quantity = loot.quantity - 1;

        -- Are we lootmaster for this loot? Lets send out a monitor message about the quantity decrease
        if self.lootTable[itemID].mayDistribute and self:MonitorMessageRequired(itemID) then
            self:SendMonitorMessage( 'DECREASELOOT', itemID, "PRIORITY_HIGH" )
        end

        return true;
    end

    if self.frame and self.frame.currentLoot and self.frame.currentLoot.itemID == itemID then
        self.frame.currentLoot = nil;
    end

    self:Debug('RemoveLoot: '..link)

    -- Are we lootmaster for this loot? Lets send out a monitor message about the removed loot
    if self.lootTable[itemID].mayDistribute and self:MonitorMessageRequired(itemID) then
        self:SendMonitorMessage( 'REMOVELOOT', itemID, "PRIORITY_HIGH" )
    end

	self.lootTable[itemID] = nil;
	return true;
end

function LootMasterML:GetEPGP( player )
    if not EPGP or not EPGP.GetEPGP then return nil, nil, nil, nil, nil end

	local sPlayer = player

    local ret, ep, gp, alt = pcall(EPGP.GetEPGP, EPGP, sPlayer)
	if not ret then return nil, nil, nil, nil, nil end

	if gp==nil then
		sPlayer = LootMaster.Ambiguate(player, "guild")
		ret, ep, gp, alt = pcall(EPGP.GetEPGP, EPGP, sPlayer)
	end
	if gp==nil then
		sPlayer = LootMaster.Ambiguate(player, "none")
		ret, ep, gp, alt = pcall(EPGP.GetEPGP, EPGP, sPlayer)
	end
	if gp==nil then
		sPlayer = LootMaster.StripServerName(player)
		ret, ep, gp, alt = pcall(EPGP.GetEPGP, EPGP, sPlayer)
	end

    local ret, minEP = pcall(EPGP.GetMinEP, EPGP)
    if not ret or not minEP then minEP=0 end

	return ep, gp, alt, minEP, sPlayer
end

function LootMasterML:GetEP( player )
    local ep, gp = self:GetEPGP( player )
    if not ep then return -1 end;
    return ep or 0
end

function LootMasterML:GetMinEPMatch( player )
    local ep, gp, alt, minEP = self:GetEPGP( player )
    if not ep or not minEP then return 'n' end
    if ep>=minEP then return 'y' end
    return 'n';
end

function LootMasterML:GetGP( player )
    local ep, gp = self:GetEPGP( player )
    if not gp then return -1 end
    return gp or 1
end

function LootMasterML:GetPR( player )
    local ep, gp = self:GetEPGP(player)
    if not gp or not ep then return -1 end
    if gp~=0 then return ep/gp end
    return 0
end

function LootMasterML:GetVoteValue(candidate, itemID)
	local loot = self:GetLoot(itemID)
	if loot.voteRequired then return 'vote' end
    return tonumber(self:GetCandidateData(loot.id, candidate, "votes")) or 0
end

function LootMasterML:ResponseSortValue(candidate, itemID)
    local data = self:GetLoot(itemID)
    local response = tonumber(self:GetCandidateData(itemID, candidate, "response"))
    if data.hideResponses and data.announced and response > LootMaster.RESPONSE.TIMEOUT then
      return 1000
    end
    return self:GetCandidateData( itemID, candidate, 'responsesort')
end

--[[
    Create a safe randomizer function that returns a float between 1 and 99
]]--
local randomtable
local randomFloat = function()
   -- I know it's best to only seed the randomizer only so now and then,
   -- but some other addon might have twisted the randomseed so reset it
   -- to our cached seed again
   mathRandomseed( mathCachedRandomSeed ); mathRandom();
   -- Init the randomizerCache if needed
   if randomtable == nil then
      randomtable = {}
      for i = 1, 97 do
         randomtable[i] = mathRandom()
      end
   end
   local x = mathRandom()
   local i = 1 + mathFloor(97*x)
   x, randomtable[i] = randomtable[i] or x, x
   return mathFloor((x*99+1)*100000)/100000;
end

--[[
	Adds a candidate (player eligible to receive loot) to the masterloot cache
	for the given loot
]]
function LootMasterML:AddCandidate( loot, candidate )
	local itemID = self:AddLoot( loot )
	if not itemID then return end
	if not candidate then return end
	if not self.lootTable[itemID] then return end

	local lootTbl = self.lootTable[itemID]

	candidate = LootMaster.UnAmbiguate(candidate)

	-- Just return the itemname if the candidate already exists
	if self.lootTable[itemID]['candidates'][candidate] then return itemID end;

    --floor((math.random()*99+1)*10000)/10000;
    local randomRoll = randomFloat();
    if not self.lootTable[itemID].mayDistribute then
        randomRoll = 0
    end

    -- Find the guildRank and unlocalized classname from the guildCache
    local guildRankName = '';
    local candidateClass = nil;
    local candidateClassLocalized = nil;
    if self.guildInfo and self.guildInfo[candidate] then
        guildRankName = self.guildInfo[candidate].rank or '';
        candidateClass = self.guildInfo[candidate].class;
        candidateClassLocalized = self.guildInfo[candidate].classLocalized;
    end

    -- No class found, try looking it up another way.
    if not candidateClass then
        candidateClassLocalized, candidateClass = UnitClass(LootMaster.Ambiguate(candidate,"none"));
        -- Update the reverse class lookup table
        if candidateClassLocalized and candidateClass then
            LootMaster:UpdateClassLocalizer(candidateClassLocalized, candidateClass)
        end
    end

    local classes = self.lootTable[itemID].classes
    local initResponse = LootMaster.RESPONSE.NOTANNOUNCED;
    -- Autopass BoP items that cannot be used by this class
    if self.lootTable[itemID].binding=='pickup' and classes and candidateClassLocalized and classes[candidateClass] then
        initResponse = LootMaster.RESPONSE.AUTOPASS

        -- show the responses again if the player autopasses
        if LootMaster.UnitIsUnit('player', candidate) then
            lootTbl.hideResponses = false
        end
    end
    local initResponseSort = LootMaster.RESPONSE[initResponse].SORT

    tinsert( self.lootTable[itemID]['rowdata'],
    {   ["unitclass"]       = candidateClass,
        ["response"]        = initResponse,
        ["responsesort"]    = initResponseSort,
        ["onclick"]         = function(arg1, button, down) if button=='RightButton' then self:OnCandidateRowRightClick(candidate, loot, arg1) end end,
        ["cols"] = {
          {["name"]       = 'class',
          ["value"]      = candidateClass or '',
          ["onenter"]    = addon.ShowCandidateCellPopup,
          ["onleave"]    = addon.HideGearCellPopup,
          ["userDraw"]   = addon.SetClassIconCellOwnerDraw,
          ["onenterargs"]= { self, candidate, itemID },
          ["onleaveargs"]= { self, candidate, itemID }
          },

          {["name"]       = 'name',
          ["value"]      = candidate,
          ["onenter"]    = addon.ShowCandidateCellPopup,
          ["onleave"]    = addon.HideGearCellPopup,
          ["color"]      = self.GetCandidateClassCellColor,
		  ["userDraw"]   = addon.SetCandidateNameCellOwnerDraw,
          ["colorargs"]  = { self, candidate, itemID},
          ["onenterargs"]= { self, candidate, itemID },
          ["onleaveargs"]= { self, candidate, itemID }
          },

          {["name"]       = 'guildrank',
          ["value"]      = guildRankName,
          ["color"]      = self.GetCandidateCellColor,
          ["colorargs"]  = {self, candidate, itemID}},

          {["name"]       = 'responsesortFunc',
          ["value"]      = self.ResponseSortValue,
          ["args"]       = {self, candidate, itemID},
          ["userDraw"]   = addon.SetCandidateResponseCellUserDraw,
          ["color"]      = self.GetCandidateCellColor,
          ["colorargs"]  = {self, candidate, itemID}},

          {["name"]       = 'EP',
          ["value"]      = self.GetEP,
          ["userDraw"]   = addon.SetCellEPGPNumberFormatted,
		  ["color"]      = self.GetCandidateEPCellColor,
		  ["colorargs"]  = {self, candidate, itemID},
          ["args"]       = {self, candidate, self.GetEP}},

          {["name"]       = 'GP',
          ["value"]      = self.GetGP,
          ["userDraw"]   = addon.SetCellEPGPNumberFormatted,
          ["args"]       = {self, candidate, self.GetGP}},

          {["name"]       = 'PR',
          ["value"]      = self.GetPR,
          ["userDraw"]   = addon.SetCellEPGPNumberFormatted,
          ["args"]       = {self, candidate, self.GetPR}},

          {["name"]       = 'roll',
          ["value"]      = randomRoll,
          ["userDraw"]   = addon.SetCandidateRollCellUserDraw,
          ["onenter"]    = addon.ShowRollCellPopup,
          ["onleave"]    = addon.HideGearCellPopup,
          ["onenterargs"]= { self,candidate,itemID },
          ["onleaveargs"]= { self,candidate,itemID },
          ["args"]       = {self, candidate, itemID}},

		  {["name"]       = 'bid',
          ["value"]      = 0,
          ["userDraw"]   = addon.SetCandidateBidCellUserDraw,
          ["onenter"]    = addon.ShowBidCellPopup,
          ["onleave"]    = addon.HideGearCellPopup,
          ["onenterargs"]= {self,candidate,itemID},
          ["onleaveargs"]= {self,candidate,itemID},
          ["args"]       = {self,candidate,itemID}},

		  {["name"]       = 'voteCol',
          ["value"]      = self.GetVoteValue,
          ["userDraw"]   = addon.SetCandidateVotesCellUserDraw,
          ["onenter"]    = addon.ShowVotesCellPopup,
          ["onleave"]    = addon.HideGearCellPopup,
          ["onenterargs"]= {self,candidate,itemID},
          ["onleaveargs"]= {self,candidate,itemID},
          ["args"]       = {self,candidate,itemID}},


          {["name"]       = 'note',
          ["value"]      = '',
          ["userDraw"]   = addon.SetNoteCellOwnerDraw,
          ["onenter"]    = addon.ShowNoteCellPopup,
          ["onleave"]    = addon.HideInfoPopup,
          ["onenterargs"]= { self,candidate,itemID,'currentitem' },
          ["onleaveargs"]= { self,candidate,itemID,'currentitem' }
          },

          {["name"]       = ' ',
          ["value"]      = self.GetMinEPMatch,
          ["userDraw"]   = self.EmptyCellOwnerDraw,
          ["args"]       = {self, candidate}},     -- spacer, actually used for sorting the minEP matches first.

         --[[ {["name"]       = 'currentilevel',
          ["value"]      = '',
          ["args"]       = {self, candidate, itemID},
          ["onclick"]    = addon.OnGearInspectClick,
          ["onenter"]    = addon.ShowGearInspectPopup,
          ["onleave"]    = addon.HideGearCellPopup,
          ["userDraw"]   = addon.SetGearCelliLVL,
          ["onenterargs"]= { self,candidate,itemID },
          ["onleaveargs"]= { self,candidate,itemID },
          ["onclickargs"]= { self,candidate,itemID }
          },

          {["name"]       = 'currentgp',
          ["value"]      = '',
          ["args"]       = {self, candidate, itemID},
          ["onclick"]    = addon.OnGearInspectClick,
          ["onenter"]    = addon.ShowGearInspectPopup,
          ["onleave"]    = addon.HideGearCellPopup,
          ["userDraw"]   = addon.SetGearCellGP,
          ["onenterargs"]= { self,candidate,itemID },
          ["onleaveargs"]= { self,candidate,itemID },
          ["onclickargs"]= { self,candidate,itemID }
          },
		  ]]--

          {["name"]       = 'currentitem',
          ["value"]      = '',
          ["userDraw"]   = addon.SetGearCellOwnerDraw,
          ["onenter"]    = addon.ShowGearCellPopup,
          ["onleave"]    = addon.HideGearCellPopup,
          ["onclick"]    = addon.OnGearCellClick,
          ["onenterargs"]= { self,candidate,itemID,'currentitem' },
          ["onleaveargs"]= { self,candidate,itemID,'currentitem' },
          ["onclickargs"]= { self,candidate,itemID,'currentitem' },
		   ["args"]       = {self,candidate,itemID,'currentitem', lootTbl.ilevel}
          },

          {["name"]       = 'currentitem2',
          ["value"]      = '',
          ["userDraw"]   = addon.SetGearCellOwnerDraw,
          ["onenter"]    = addon.ShowGearCellPopup,
          ["onleave"]    = addon.HideGearCellPopup,
          ["onclick"]    = addon.OnGearCellClick,
          ["onenterargs"]= { self,candidate,itemID,'currentitem2' },
          ["onleaveargs"]= { self,candidate,itemID,'currentitem2' },
          ["onclickargs"]= { self,candidate,itemID,'currentitem2' },
		   ["args"]       = {self,candidate,itemID,'currentitem2', lootTbl.ilevel}
          },

		   {["name"]       = 'currentitem3',
          ["value"]      = '',
          ["userDraw"]   = addon.SetGearCellOwnerDraw,
          ["onenter"]    = addon.ShowGearCellPopup,
          ["onleave"]    = addon.HideGearCellPopup,
          ["onclick"]    = addon.OnGearCellClick,
          ["onenterargs"]= { self,candidate,itemID,'currentitem3' },
          ["onleaveargs"]= { self,candidate,itemID,'currentitem3' },
          ["onclickargs"]= { self,candidate,itemID,'currentitem3' },
		   ["args"]       = {self,candidate,itemID,'currentitem3', lootTbl.ilevel}
          },

		   {["name"]       = 'currentitem4',
          ["value"]      = '',
          ["userDraw"]   = addon.SetGearCellOwnerDraw,
          ["onenter"]    = addon.ShowGearCellPopup,
          ["onleave"]    = addon.HideGearCellPopup,
          ["onclick"]    = addon.OnGearCellClick,
          ["onenterargs"]= { self,candidate,itemID,'currentitem4' },
          ["onleaveargs"]= { self,candidate,itemID,'currentitem4' },
          ["onclickargs"]= { self,candidate,itemID,'currentitem4' },
		   ["args"]       = {self,candidate,itemID,'currentitem4', lootTbl.ilevel}
          },

		   {["name"]       = 'currentitem5',
          ["value"]      = '',
          ["userDraw"]   = addon.SetGearCellOwnerDraw,
          ["onenter"]    = addon.ShowGearCellPopup,
          ["onleave"]    = addon.HideGearCellPopup,
          ["onclick"]    = addon.OnGearCellClick,
          ["onenterargs"]= { self,candidate,itemID,'currentitem5' },
          ["onleaveargs"]= { self,candidate,itemID,'currentitem5' },
          ["onclickargs"]= { self,candidate,itemID,'currentitem5' },
		   ["args"]       = {self,candidate,itemID,'currentitem5', lootTbl.ilevel}
          },

           {["name"]       = 'averageitemlevel',
            ["value"]      = '',
            ["onenter"]    = addon.ShowAverageItemlevelCellPopup,
            ["onleave"]    = addon.HideInfoPopup,
            ["onenterargs"]= { self,candidate,itemID,'averageitemlevel' },
            ["onleaveargs"]= { self,candidate,itemID,'averageitemlevel' }
          },


          {["value"]      = ' '},     -- spacer
      }
    })

    self.lootTable[itemID]['candidates'][candidate] = #(self.lootTable[itemID]['rowdata']);

    -- Are we lootmaster for this loot? Lets send out a monitor message about the added candidate
    if self.lootTable[itemID].mayDistribute and self.lootTable[itemID].candidatesSent and self:MonitorMessageRequired(itemID) then
        self:SendMonitorMessage( 'ADDCANDIDATE', itemID, candidate, randomRoll )
    end

    self:InspectCandidate( itemID, candidate );

    return itemID;
end

function LootMasterML:SendCandidateListToMonitors( itemID )
    local loot = self:GetLoot( itemID )
    if not loot then return nil end;

    local candidata = {}

    for candidate, cIndex in pairs(loot.candidates) do
        self:Debug('SendCandidateListToMonitors building candidatelist ' .. candidate, true)
        local roll = self:GetCandidateData( itemID, candidate, 'roll' ) or 0
        --local response = tonumber(self:GetCandidateData( itemID, candidate, 'response' )) or LootMaster.RESPONSE.NOTANNOUNCED
        tinsert( candidata, candidate );
        tinsert( candidata, roll );
        --tinsert( candidata, response );
    end

    loot.candidatesSent = true;

    if self:MonitorMessageRequired(itemID) then
        self:SendMonitorMessage( 'CANDIDATELIST2', itemID, 2, strjoin(' ', unpack(candidata)) ) --, 'PRIORITY_HIGH' )
    end
end

--[[
	Returns true if the candidate already has been cached for the given loot
]]
function LootMasterML:IsCandidate( loot, candidate )

    if not loot then return false end;

    loot = self:GetLoot(loot);
    if not loot or not loot.id then return false end;

	if not loot
		or not self.lootTable
		or not self.lootTable[loot.id]
		or not self.lootTable[loot.id]['candidates'] then return false end;

	candidate = LootMaster.UnAmbiguate(candidate)

	local rowID = self.lootTable[loot.id]['candidates'][candidate];
	if not rowID then return false end;

	return true;
end

--[[
	Stores some data in the candidate cache for the given loot
]]
function LootMasterML:SetCandidateData( loot, candidate, name, value, preventMonitorUpdate )

    --self:Debug(format('SetCandidateData(loot(%s), candidate(%s), name(%s), value(%s), preventMonitorUpdate(%s))', tostring(loot), tostring(candidate), tostring(name), tostring(value), tostring(preventMonitorUpdate)), true);

	candidate = LootMaster.UnAmbiguate(candidate)

	local itemID = self:AddCandidate( loot, candidate );
	if not itemID then return end;

	local rowID = self.lootTable[itemID]['candidates'][candidate];
	if not rowID then return end;

  if name == 'response' then
    value = tonumber(value) or 1

    local responseData = LootMaster.RESPONSE[value]
    if responseData then
      self:SetCandidateData( loot, candidate, 'responsesort', responseData.SORT, true )
    end

    -- After the user has made their selections, show the responses again.
    if LootMaster.UnitIsUnit('player', candidate) and value > LootMaster.RESPONSE.TIMEOUT then
      self.lootTable[itemID].hideResponses = false
    end
  end

	for index,data in pairs( self.lootTable[itemID]['rowdata'][rowID]['cols'] ) do
		if data and data['name'] == name then
			self.lootTable[itemID]['rowdata'][rowID]['cols'][index]['value'] = value;

      -- Are we lootmaster for this loot? Lets send out a monitor message about the data change
      --if self.lootTable[itemID].mayDistribute and self:MonitorMessageRequired(itemID) then
      --    self:SendMonitorMessage( 'SETCANDIDATEDATA', itemID, candidate, name, value )
      --end

			return value
		end
	end

	self.lootTable[itemID]['rowdata'][rowID][name] = value;

    -- Are we lootmaster for this loot? Lets send out a monitor message about the data change
    --[[if self.lootTable[itemID].mayDistribute and (not preventMonitorUpdate) and self:MonitorMessageRequired(itemID) then

        -- Default priority
        local prio = "PRIORITY_NORMAL"

        -- High priority on response changes
        if name == 'response' then
            prio = "PRIORITY_HIGH"
        end

        -- Dont need the following changes
        if name=='roll' or name=='version' or name=='currentitem' or name=='currentitem2' then
            prio = nil
        end

        -- Do not send status updates before candidate list has been sent.
        if not self.lootTable[itemID].candidatesSent and name=='response' then
            prio = nil
        end

        if prio then
            self:SendMonitorMessage( 'SETCANDIDATEDATA', itemID, candidate, name, value, prio )
        end
    end]]--

	return value;
end

function LootMasterML:SetCandidateResponse( link, candidate, response, preventMonitorUpdate )
	candidate = LootMaster.UnAmbiguate(candidate)

    response = tonumber(response) or 0;
    local old = tonumber(self:GetCandidateData( link, candidate, 'response' ) or 0) or 0

    local loot = self:GetLoot(link)
    if not loot then return end

    local response = loot.buttonTranslate[response] or response

    if old<LootMaster.RESPONSE.TIMEOUT and response >= LootMaster.RESPONSE.TIMEOUT then
        -- Increate response count
        loot.numResponses = loot.numResponses + 1
    elseif old>=LootMaster.RESPONSE.TIMEOUT and response < LootMaster.RESPONSE.TIMEOUT then
        -- decreate response count
        loot.numResponses = loot.numResponses - 1
    end

    return self:SetCandidateData( link, candidate, 'response', response, preventMonitorUpdate )
end

function LootMasterML:SetManualResponse(loot, candidate, response)
	candidate = LootMaster.UnAmbiguate(candidate)

    loot = self:GetLoot(loot)
    if not loot then return end

    response = loot.buttonTranslate[response] or response

    local sResponse;
    local override = loot.buttonsByResponse[response]
    if override then
        sResponse = override.text
    elseif LootMaster.RESPONSE[response] then
        sResponse = LootMaster.RESPONSE[response].CODE
    end

    self:SetCandidateResponse(loot.id, candidate, response);
    self:SendWhisperResponse(format(L['Your selection for %s has been manually set to %s.'], loot.link or 'unknown item', sResponse or 'unknown'), candidate);

    if self:MonitorMessageRequired(loot.id) then
        self:SendMonitorMessage( 'SETCANDIDATEDATA', loot.id, candidate, 'response', response )
    end

    self:ReloadMLTableForLoot( loot.id )

end

--[[
    Looks up the candidates equipment for the slot by inspecting.
]]--
function LootMasterML:InspectCandidate( loot, candidate )

    -- retrieve loot or return
    loot = self:GetLoot(loot);
    if not loot then return end;

    -- See if candidate if human controlled... you never know ;)
    if not UnitPlayerControlled(LootMaster.Ambiguate(candidate,"none")) then return end;
    -- See if player is in inspection range.
    if not CheckInteractDistance(LootMaster.Ambiguate(candidate,"none"),1) then return end;

    -- inspect the candidate
    NotifyInspect(Ambiguate(candidate,"none"))

    -- Retrieve the itemlink, levels and gp value for the equipSlot.
    local gear = LootMaster:GetGearByINVTYPE(loot.equipLoc, candidate);

    local item1, item2, item3, item4, item5 = strsplit('$', gear)
    self:SetCandidateData( loot.id, candidate, 'currentitem', item1, true );
    self:SetCandidateData( loot.id, candidate, 'currentitem2', item2, true );
	self:SetCandidateData( loot.id, candidate, 'currentitem3', item3, true );
    self:SetCandidateData( loot.id, candidate, 'currentitem4', item4, true );
	self:SetCandidateData( loot.id, candidate, 'currentitem5', item5, true );
    self:SetCandidateData( loot.id, candidate, 'foundGear', true, true );

    return true;
end

--[[
	Retrieves some data in the candidate cache for the given loot
]]
function LootMasterML:GetCandidateData( loot, candidate, name )
	candidate = LootMaster.UnAmbiguate(candidate)

    if not loot then return end;
	loot = self:GetLoot(loot)

	if not loot or not loot.id
		or not self.lootTable
		or not self.lootTable[loot.id]
		or not self.lootTable[loot.id]['candidates'] then return end;

	local rowID = self.lootTable[loot.id]['candidates'][candidate];
	if not rowID then return end;

	for index,value in pairs( self.lootTable[loot.id]['rowdata'][rowID]['cols'] ) do
		if value and value['name'] == name then
			return self.lootTable[loot.id]['rowdata'][rowID]['cols'][index]['value']
		end
	end

	return self.lootTable[loot.id]['rowdata'][rowID][name];
end

--[[
	Retrieves some data in the candidate cache for the given loot
]]
function LootMasterML:GetCandidateDataByRowID( loot, rowID, name )

    if not loot then return end;
	loot = self:GetLoot(loot)

	if not loot or not loot.id then return end;
	if not rowID then return end;

	for index,value in pairs( self.lootTable[loot.id]['rowdata'][rowID]['cols'] ) do
		if value and value['name'] == name then
			return self.lootTable[loot.id]['rowdata'][rowID]['cols'][index]['value']
		end
	end

	return self.lootTable[loot.id]['rowdata'][rowID][name];
end

--[[
	Tries to give the loot to the given candidate
]]
function LootMasterML:GiveLootToCandidate( link, candidate, lootType, gp )

	local candidateID = nil;
	local slotID = nil;
	local loot = self:GetLoot(link)
	candidate = LootMaster.UnAmbiguate(candidate)

    if not loot or not loot.id then
        return self:Print( format(L["Could not send %s to %s, loot not found in cache"], tostring(link), tostring(candidate) ) )
    end

	-- Look for the lootslotID
	for sID = 1, LootMaster.GetNumLootSlots() do
		local sLink = GetLootSlotLink(sID);
		if sLink ~= nil then
			local sItemID = self:LootLinkToIdent(sLink)
			local itemID = loot.id
			if sItemID and sItemID ~= nil and sItemID==itemID then
				slotID = sID
			break
			end
		end
	end

	if not slotID then
		return self:Print( format(L["Could not send %s to %s, lootslotID not found (already looted or lootwindow closed?) "], tostring(loot.link), tostring(candidate) ) )
	end

	-- Look for the candidateID
	for cID = 1, 40 do
		local cName = LootMaster.UnAmbiguate(GetMasterLootCandidate(slotID, cID))
		if cName and cName==candidate then
			candidateID = cID;
			break
		end;
	end;

	if not candidateID then
		return self:Print( format(L["Could not send %s to %s, candidate not found (offline, left group?)"], tostring(loot.link), tostring(candidate) ) )
	end

    -- [[ lootType == self.LOOTTYPE.BANK, self.LOOTTYPE.DISENCHANT, self.LOOTTYPE.GP ]]--
    -- [[ gp = amount of gp awarded to this item ]] --

    if lootType ~= LootMaster.LOOTTYPE.GP then
        gp = 0;
    end

    self:SetCandidateData( loot.id, candidate, 'lootType', lootType or 0 );
    self:SetCandidateData( loot.id, candidate, 'lootGP', tonumber(gp) or 0 );

	GiveMasterLoot( slotID, candidateID )

end

function LootMasterML:OnMasterLooterChange(masterlooter)
    -- if master looter is nil, return
    if not masterlooter then return end;
	masterlooter = LootMaster.UnAmbiguate(masterlooter)

    -- Is there really a new master looter?
    if self.current_ml and LootMaster.UnitIsUnit(self.current_ml, masterlooter) then return end

    -- cache the new ml
    self.current_ml = masterlooter;

    -- if player is not the current master looter, then just return.
    if not LootMaster.UnitIsUnit(masterlooter, 'player') then return end

    -- Show a message here, based on the current settings
    if LootMaster.db.profile.use_epgplootmaster == 'enabled' then
        -- Always enable without asking
        LootMaster:Print(L['you are the loot master, loot tracking enabled']);
        self:EnableTracking();
    elseif LootMaster.db.profile.use_epgplootmaster == 'disabled' then
        -- Disabled from the config panel
        LootMaster:Print(L['you are the loot master, tracking disabled manually (configuration: /lm config)']);
        self:DisableTracking();
    else
		LibDialog:Spawn("EPGPLOOTMASTER_ASK_TRACKING")
    end
end

function LootMasterML:CacheGuildInfo( event )
    local num = GetNumGuildMembers(false);
    for i=1, num do repeat
        local name, rank, rankIndex, _, classLocalized, _, _, _, _, _, classFileName = GetGuildRosterInfo(i)
        if name then

            if not self.guildInfo[name] then
                self.guildInfo[name] = {}
            end

			local nameAmb = LootMaster.UnAmbiguate(name)
			if not self.guildInfo[nameAmb] then
                self.guildInfo[nameAmb] = {}
            end

            self.guildInfo[name].rank = rank;
            self.guildInfo[name].rankIndex = rankIndex;
            self.guildInfo[name].class = classFileName;
            self.guildInfo[name].classLocalized = classLocalized;

			self.guildInfo[nameAmb].rank = rank;
            self.guildInfo[nameAmb].rankIndex = rankIndex;
            self.guildInfo[nameAmb].class = classFileName;
            self.guildInfo[nameAmb].classLocalized = classLocalized;

            -- Update the reverse class lookup table
            LootMaster:UpdateClassLocalizer(classLocalized, classFileName)
        end
    until true end
end



--[[ Deformat helps the parsing of the loot messages by creating a pattern from the
     original string and caching this ]]--
local deformat_cache = {}
function LootMasterML:Deformat(str, format)
  local pat = deformat_cache[format]
  if not pat then
    -- Escape special characters
    pat = format:gsub("[%^%$%(%)%%%.%[%]%*%+%-%?]",
                          function(c) return "%"..c end)
    pat = pat:gsub("%%%%([sd])", {
                             ["s"] = "(.-)",
                             ["d"] = "(%d+)",
                           })
    deformat_cache[format] = pat
  end
  return str:match(pat)
end

function LootMasterML:DeformatC(format)
    return deformat_cache[format];
end


--[[ Used in FilterLootMessage(), just try each function and see if the 2nd return value is set
]]--
local LootMessageFilters = {
        function( lootMessage ) local l,c = LootMasterML:Deformat( lootMessage, LOOT_ITEM_SELF_MULTIPLE ); return LootMaster.UnitName("player"),l,c end,
        function( lootMessage ) local l,c = LootMasterML:Deformat( lootMessage, LOOT_ITEM_PUSHED_SELF_MULTIPLE ); return LootMaster.UnitName("player"),l,c end,
        function( lootMessage ) return LootMasterML:Deformat( lootMessage, LOOT_ITEM_MULTIPLE ) end,
        function( lootMessage ) return LootMaster.UnitName("player"), LootMasterML:Deformat( lootMessage, LOOT_ITEM_PUSHED_SELF ), 1 end,
        function( lootMessage ) return LootMaster.UnitName("player"), LootMasterML:Deformat( lootMessage, LOOT_ITEM_SELF ), 1 end,
        function( lootMessage ) local p,l = LootMasterML:Deformat( lootMessage, LOOT_ITEM ); return p,l,1 end
};

--[[ Filters a lootmessage by reformatting the localised strings
    Returns playername, itemlink and itemcount.
]]--
function LootMasterML:FilterLootMessage( lootMessage )
    local player, link, count;
    for i, func in pairs(LootMessageFilters) do
        player, link, count = func(lootMessage);
        if player and link and count then
            return player, link, count;
        end
    end
    return false;
end

--[[ Find out if we're using master looting and find out who it is ]]--
function LootMasterML:GROUP_UPDATE()
    lootmethod, mlPartyID, mlRaidID = GetLootMethod();
    if lootmethod ~= 'master' then
        self.current_ml = nil;
        return
    end;
    if mlRaidID then
        -- we're in raid
        self:OnMasterLooterChange(GetRaidRosterInfo(mlRaidID))
    elseif mlPartyID==0 then
        -- player is ml
        self:OnMasterLooterChange(LootMaster.UnitName('player'))
    elseif mlPartyID then
        -- someone else in party is ml
        self:OnMasterLooterChange(LootMaster.UnitName('party'..mlPartyID))
    end
end

--[[ Someone received loot, lets see if it's in our cache. Send all candidates
     a message about this, so they can update their UI and register the lootdrop
     in a raidtracker for example ]]--
function LootMasterML:CHAT_MSG_LOOT( event, message )

    self:Debug("CHAT_MSG_LOOT");

    local sPlayer, sLink, iCount = self:FilterLootMessage(message)

    self:Debug(format("%s looted %sx%s", sPlayer or 'nil', sLink or 'nil', iCount or 'nil' ));

    if not sPlayer or sPlayer=='' or not sLink or sLink=='' or not iCount or tonumber(iCount)>1 then
        self:Debug("!player or !link or !iCount or iCount>1 in message (please report this) " .. (message or 'nil'));
        return
    end

	-- We should UnAmbiguate after the standard sanity checks
	sPlayer = LootMaster.UnAmbiguate(sPlayer)

    -- ok, someone looted something... lets see if we can find it in our cache
    local loot = self:GetLoot( sLink )

    -- Did we find anything?
    if not loot or not loot.candidates then return self:Debug('loot not found') end;

    -- Did we own this loot or are we just monitoring it?
    if not loot.mayDistribute then return self:Debug('only monitor loot, return') end;

    -- We did, now get some info about the loot adressee
    local lootType = self:GetCandidateData( sLink, sPlayer, 'lootType' ) or LootMaster.LOOTTYPE.UNKNOWN;
    local lootGP = tonumber(self:GetCandidateData( sLink, sPlayer, 'lootGP' )) or -1;

    if lootType==LootMaster.LOOTTYPE.GP and lootGP~=0 then
        if CanEditOfficerNote() and EPGP and EPGP.IncGPBy then
			local _, _, _, _, epgpPlayer = LootMasterML:GetEPGP(tostring(sPlayer) or 'nil')
            EPGP.IncGPBy(EPGP, epgpPlayer, tostring(sLink) or 'nil', lootGP)
        else
            self:Print( format(L["<ERROR> Could not increase GP in officernotes for %s %s (EPGP not installed or no rights?!)"], sPlayer or 'unknown player', sLink or 'unknown loot') )
        end
    end;

    -- now send everyone in raid/party/candidates some info about the drop so they can update their ui
    if GetNumGroupMembers()>0 then
        self:Debug("send to raid");
        self:SendCommand( 'LOOTED', format('%s^%s^%s^%s', sPlayer, sLink, lootType, lootGP ), 'RAID' );
    elseif GetNumSubgroupMembers()>0 then
        self:Debug("send to party");
        self:SendCommand( 'LOOTED', format('%s^%s^%s^%s', sPlayer, sLink, lootType, lootGP ), 'PARTY' );
    else
        self:Debug("send to candidates");
        for candidate, id in pairs(loot.candidates) do
            self:SendCommand( 'LOOTED', format('%s^%s^%s^%s', sPlayer, sLink, lootType, lootGP ), candidate );
        end
    end

    -- Update the candidates status to LOOTED when we have more than 1 item
    if loot.quantity>1 then
        self:SetCandidateData( sLink, sPlayer, 'looted', true );
    end

    -- Since it's looted, remove it from the cache and update the UI
    self:RemoveLoot(sLink);
    self:UpdateUI();

    self:Debug("CHAT_MSG_LOOT end");
end

-- If the loot popup is opened with autolooting enabled, just loot everything
-- and have EPGPLootmaster register everything automagically
function LootMasterML:LOOT_OPENED(event, autoloot)
    self:Debug("LOOT_OPENED", event, autoloot)

    if tostring(autoloot) ~= '1' then return end

    local numLootSlots = LootMaster.GetNumLootSlots()
    for slot=1, numLootSlots do
        local slotLink = GetLootSlotLink(slot)
        if slotLink ~= nil then
            LootFrame.selectedSlot = slot
            LootSlot(slot)
        end
    end
end

function LootMasterML:LOOT_CLOSED()
    self:Debug("LOOT_CLOSED")
end

function LootMasterML:UPDATE_MASTER_LOOT_LIST()
    self:Debug("UPDATE_MASTER_LOOT_LIST")
end

--[[
	Event triggers when the master looter opens the popup on the loot screen
	In here we try to see what loot got selected and find the candidates for the
	loot. Ask the candidates if they want the loot. Tho, cache everything and make sure
	we don't ask the candidates more than one time (this could happen when the lootwindow
	gets opened more than one time)
]]
function LootMasterML:OPEN_MASTER_LOOT_LIST()
    self:Debug("OPEN_MASTER_LOOT_LIST")

    -- Check if EPGPLM needs to track the loot.
    if not self:TrackingEnabled() then return end;

	-- Close the default confirm window
	StaticPopup_Hide("CONFIRM_LOOT_DISTRIBUTION");

    LootMasterML:DisableEPGPPopup()

	--[[
	-- Some values we probably need
	LootFrame.selectedLootButton
	LootFrame.selectedSlot
	LootFrame.selectedQuality
	LootFrame.selectedItemName
	]]

	-- local lootIcon, lootName, lootQuantity, rarity = GetLootSlotInfo(LootFrame.selectedSlot);
	local _, lootName, lootQuantity, rarity = GetLootSlotInfo(LootFrame.selectedSlot);
	local link = GetLootSlotLink(LootFrame.selectedSlot)
    local itemID = self:LootLinkToIdent(link)

    -- Traverse all lootslots and see how many of this item we have in total.
    local totalQuantity = 0
    local numLootSlots = LootMaster.GetNumLootSlots();
    for slot=1, numLootSlots do
        local slotLink = GetLootSlotLink(slot);
        local slotItemID = self:LootLinkToIdent(slotLink)
        if slotItemID ~= nil and slotItemID and slotItemID==itemID then

            local _, _, slotQ, _ = GetLootSlotInfo(slot);

            -- A little sanity check; lets see if slotQuantity == 1
            if slotQ~=1 then
                self:Print( format(L["Could not redistribute %s because quantity != 1 (%s). Please handle it manually. Create a ticket on curseforge if this happens often."], link, slotQ) )
                return;
            end

            totalQuantity = totalQuantity + 1
        end

        self:Debug( format( 'OPEN_MASTER_LOOT_LIST: clicked %sx%s; slotCount %s; slotID %s; slotitem: %s', tostring(link), tostring(totalQuantity), tostring(numLootSlots), tostring(slot), tostring(slotLink) ) )
    end

    -- Fallback
    if not itemID then
        self:Print( format(L['Could not get itemcount for %s (no itemid found)'], tostring(link)) );
        totalQuantity = 1
    end

    -- Another sanity check... Check total quantity > 1
    if totalQuantity<1 then
        self:Print( format(L["Could not redistribute %s because total quantity < 1 (%s). Please handle it manually. Create a ticket on curseforge if this happens often."], link, totalQuantity) )
		return;
    end

    -- Lootmaster is handling the loot, so lets close the default popup, unless alt is pressed
    if not IsAltKeyDown() then
        CloseDropDownMenus();
    end

    -- Check to see if we already have the loot registered
    if self:GetLootID(link) then
        -- loot is already registered, just update the ui and do nothing.
        local loot = self:GetLoot(link);
        loot.quantity = totalQuantity or 1
        self:ReloadMLTableForLoot( link );
        self:Debug( format('Updated %s quantity to %s', tostring(link), tostring(tonumber(totalQuantity)) ), true )
        return;
    end

	-- Register the loot in the loottable
	local lootID = self:AddLoot(link, true, totalQuantity);
    if not lootID then return self:Print(L['Could not register loot']) end;

    -- Auto announce?
    local autoAnnounce = rarity >= (LootMaster.db.profile.auto_announce_threshold or 4);
    if LootMaster.db.profile.auto_announce_threshold == 0 then autoAnnounce=false end;

	-- Ok Lets see. Who are the candidates for this slot?
	for candidateID = 1, 40 do repeat
		local candidate = GetMasterLootCandidate(LootFrame.selectedSlot, candidateID)
		if not candidate then break end;
		candidate = LootMaster.UnAmbiguate(candidate)

		if not self:IsCandidate( lootID, candidate ) then

			-- Create the candidate for link;
			self:AddCandidate( lootID, candidate );
		end
	until true end

    -- Set the loot status to not announced.
    self.lootTable[lootID].announced = false;

    -- Lets see if we have to autoloot
    local isAutoLooted = false
    if LootMaster.db.profile.AutoLootThreshold~=0 and LootMaster.db.profile.AutoLooter~='' and self.lootTable[lootID].autoLootable then
        -- loot is below or equal to AutoLootThreshold and matches the autoLooter requirements
        -- try to give the loot.
        autoAnnounce = false

        if IsAltKeyDown() then
            self:Print(L['Not auto looting (alt+click detected)'])
        else
            isAutoLooted = true
            if self:IsCandidate( lootID, LootMaster.db.profile.AutoLooter or '' ) then
                self:Print(format(L['Auto looting %s to %s'], link or 'nil', LootMaster.db.profile.AutoLooter or 'nil'))
                -- dont know if it will ever happen, but send all matching items to the autolooter
                for i=1, totalQuantity do
                    self:GiveLootToCandidate( lootID, LootMaster.db.profile.AutoLooter or '', LootMaster.LOOTTYPE.BANK )
                end
            else
                self:Print(format(L['Auto looting of %s to %s failed. Not a candidate for this loot.'], link or 'nil', LootMaster.db.profile.AutoLooter or 'nil'))
            end
        end
    end

    -- See if we have to auto announce
    if autoAnnounce then
        if IsAltKeyDown() then
            self:Print(L['Not auto announcing (alt+click detected)'])
        else
			if LootMaster.db.profile.bidding and LootMaster.db.profile.biddingWhen=='always' then
				self:AnnounceLootAndRequestBids(lootID, true)
			else
				self:AnnounceLoot(lootID)
			end
        end
    end

    -- Update the UI
    self:ReloadMLTableForLoot( lootID )

    -- Send candidate list to monitors
    if self:MonitorMessageRequired( lootID ) then
        self:SendCandidateListToMonitors( lootID )
    end;

end
