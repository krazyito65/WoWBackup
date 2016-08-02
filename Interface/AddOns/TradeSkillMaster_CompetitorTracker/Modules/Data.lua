local addonName, TSMCT = ...

local Private = {}
local Data = TSMCT:NewModule("Data", "AceBucket-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale(addonName)
local competitors, deletedCompetitors, configDB, removedInThisSession

function Data:OnEnable()
	TSMCT:Chat(2,L["DataEnabled"])
	
	competitors=TSMCT.db.factionrealm.competitors
	deletedCompetitors = TSMCT.db.factionrealm.deleted
	configDB  = TSMCT.db.profile
	removedInThisSession = {}
	
	TSMAPI.Delay:AfterTime("CompTrackerDataUpdate", 15, Data.Update, 15)
	ChatFrame_AddMessageEventFilter("CHAT_MSG_SYSTEM", Data.FilterSystemMsg)
end

function Data:OnDisable()
	TSMAPI.Delay:Cancel("CompTrackerDataUpdate")
	TSMAPI.Delay:Cancel("CompTrackerRefreshFriendlist")
	
	ChatFrame_RemoveMessageEventFilter("CHAT_MSG_SYSTEM", Data.FilterSystemMsg)
	
	if Data.UpdateHandle then
		Data:UnregisterBucket(Data.UpdateHandle)
	end
end

function Data.Update()
	local friendList, noteList, count = {}, {}, 0
	
    for i=1,GetNumFriends() do
	    local name, _, _, _, _, _, friendNote = GetFriendInfo(i)
		
		if name then
			friendList[name] = i
			noteList[name] = friendNote
			count=count+1
		end
	end
	if count < 1 then
		TSMCT:Chat(4,L["DataFriendListWait"])
		ShowFriends()
		return false
	end
	
	TSMCT:Chat(4,L["DataFriendCount"],count)
	TSMAPI.Delay:Cancel("CompTrackerDataUpdate")
	
	if configDB.SyncCompetitors then
		for name,v in pairs(friendList) do
			if deletedCompetitors[name] then
				TSMCT:Chat(3,L["DataRemove"], name)
				RemoveFriend(name)
				removedInThisSession[name] = true
			else
				if competitors[name] and competitors[name].friendNote then
					if not noteList[name] or noteList[name] ~= competitors[name].friendNote then
						TSMCT:Chat(3,L["DataSetNote"],competitors[name].friendNote, name)
						SetFriendNotes(name, competitors[name].friendNote)
					end
				end
			end
		end
		
		for name, v in pairs(competitors) do
			if not friendList[name] and not v.RemoveTime then
				TSMCT:Chat(3,L["DataAddFriend"], name)
				AddFriend(name)
				v.RecentlyAddedByTheTracker = time()
			end
		end
	end
	
	Data:BucketEventHandler()
	
	Data.UpdateHandle = Data:RegisterBucketEvent("FRIENDLIST_UPDATE", 5, "BucketEventHandler")

	if configDB.TriggerEnabled then
		TSMAPI.Delay:AfterTime("CompTrackerRefreshFriendlist", configDB.TriggerDelay, Data.RefreshFriendlist,configDB.TriggerDelay)
	end
	
	return true
end

function Data.FilterSystemMsg(_, _, msg, ...)
	if string.find(msg, "has gone offline") or string.find(msg, "has come online") then
		TSMCT:Chat(5,"CHAT_MSG_DataChecking")
		ShowFriends()
	end
end

function Data:BucketEventHandler()
	TSMCT:Chat(5,L["DataChecking"])

	for _, v in pairs(competitors) do
		v.inFriendList = false
    end
	
    for i=1,GetNumFriends() do
	    local name, level, class, location, connected, status, friendNote = GetFriendInfo(i)
		
		if name and not removedInThisSession[name] then
			if connected then connected=true else connected=false end

			local competitor = competitors[name]

			if competitor then
				competitor.inFriendList = true
				competitor.RemoveTime = nil
				competitor.RecentlyAddedByTheTracker = nil
				
				if competitor.connected and connected and configDB.MaxConnectedTime > 0 then
					local ago = time() - competitor.modified
					if ago > configDB.MaxConnectedTime * 3600 then
						connected = false
						TSMCT:Chat(3,L["DataResetToOffline"],competitor.name)
						TSMAPI.Delay:AfterTime("CompTrackerDataUpdate", 15, Data.Update, 15)
					end
				end
				
				if competitor.connected ~= connected then
					competitor.previous=time()-competitor.modified
					local record = {}
					record.connected=competitor.connected
					record.modified=competitor.modified
					record.location=competitor.location
					table.insert(competitor.records, record)
					if #competitor.records > configDB.TrackMaxRecord then
						local removed = table.remove(competitor.records, 1)
						TSMCT:Chat(4,L["DataRemovedRecord"], competitor.name, TSMCT.GetFormattedTime(removed.modified,"aidate"))
					end
					
					competitor.connected=connected
					competitor.modified=time()
				end	
				if connected then
					competitor.level=level
					competitor.class=class
					competitor.location=location
					competitor.status=status
					if friendNote and (not competitor.friendNote or competitor.friendNote ~= friendNote) then
						competitor.friendNote = friendNote
					end
				end
			else
				if not configDB.TrackMarked or (
					configDB.TrackMarked and
					friendNote and configDB.TrackMark and
					string.len(friendNote:trim())>0 and
					string.find(friendNote,configDB.TrackMark) ) then
					
					if deletedCompetitors[name] then
						deletedCompetitors[name] = nil
						TSMCT:Chat(3,L["DataRemoveFromDeleted"],name)
					else
						TSMCT:Chat(3,L["DataRegister"],name)
					end
					
					competitor = { records={} }
				
					competitor.name=name
					competitor.level=level
					competitor.class=class
					competitor.location=location
					competitor.status=status
					competitor.friendNote=friendNote
					competitor.connected=connected
					competitor.modified=time()
					competitor.inFriendList = true
				
					competitors[name]=competitor
				end
			end
		end
	end
	
	for k, v in pairs(competitors) do
		if not v.inFriendList and not v.RecentlyAddedByTheTracker then
			if not v.RemoveTime then
				v.RemoveTime = time() + 120 
				TSMCT:Chat(4,L["DataWillBeDeleted"],k, TSMCT.GetFormattedTime(v.RemoveTime, "fromnow"))
				if not configDB.TriggerEnabled then
					TSMAPI.Delay:AfterTime("CompTrackerRefreshFriendlist", 130, Data.RefreshFriendlist,15)	
				end
			elseif v.RemoveTime < time() then
				if not configDB.TriggerEnabled then
					TSMAPI.Delay:Cancel("CompTrackerRefreshFriendlist")
				end
				Data.DeleteCompetitorData(k)
			end
		end
    end
end

function Data.DeleteCompetitorData(name)
	wipe(competitors[name])
	competitors[name] = nil
	deletedCompetitors[name] = true
	TSMCT:Chat(3,L["DataDelete"],name)
end

function Data.RefreshFriendlist()
	TSMCT:Chat(5,L["DataRefreshFriendList"])
	ShowFriends()
end