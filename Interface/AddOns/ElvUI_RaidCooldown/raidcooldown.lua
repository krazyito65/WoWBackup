--------------------------------------------------------
-- System Settable Variables --
--------------------------------------------------------
local E, L, V, P, G =  unpack(ElvUI);
local RC = E:GetModule('RaidCooldown')
local GT = LibStub("LibGroupTalents-1.0")
local CB = LibStub("LibCandyBar-3.0")
local curr = {}
local tmp = {}
local frame_cache = {}
-------------------------------------------------------

-------------------------------------------------------
-- Raid Talent Scanning Start --
-------------------------------------------------------
RC.CreateRaidTables = function()
    RC.raid_members = {}
    RC.raid_members_talents = {}
    RC.curr = {}
    RC.helper = {}     
    RC.activebars = {}
    RC.classes = {"DEATHKNIGHT","DRUID","HUNTER","MAGE","PALADIN","PRIEST","ROGUE","SHAMAN","WARLOCK","WARRIOR"}
    for i,class in ipairs(RC.classes) do
        RC['helper'][class] ={}
        RC['raid_members_talents'][class] = {} 
    end
end

RC.OnTalentAdd = function (frame, event, guid, unit, name, realm)    
    local  _,classFilename = GetPlayerInfoByGUID(guid)
    
    RC['raid_members'][guid] = RC['raid_members'][guid] or {}
    table.insert(RC['raid_members'][guid], {
        ['name'] = name,
        ['class']= classFilename}
    )
end

RC.OnTalentUpdate = function (frame, event, guid, unit, newSpec, n1, n2, n3)
    local baseclass = select (2, UnitClass (unit))
    local name = UnitName(unit)
    RC['raid_members_talents'][baseclass][guid] = nil
    RC['raid_members_talents'][baseclass][guid] = {}
    
    table.insert(RC['raid_members_talents'][baseclass][guid], {
        ['spec']= newSpec,														
        ['name']= name,
        ['n1']  = n1,															
        ['n2']  = n2,
        ['n3']  = n3}
    )
    for i, info in ipairs(RC['helper'][baseclass]) do            
        if(E.db.raidcooldown.active==true) then
            if not(RC.activebars[info[3]['name']][guid]) then
                if(info[3]['spec']) then
                    if(RC:which_spec(n1, n2, n3)==info[3]['spec']) then 
                        local frame = tremove(frame_cache) or CreateFrame("Frame");
                        frame:Size(104, 13)
                        frame:SetTemplate()
                        frame:SetFrameStrata('BACKGROUND')
                        frame:SetParent(_G['RaidCooldownIcon'..info[1]])
                        local text = frame:CreateFontString(nil, 'OVERLAY')
                    	text:FontTemplate(nil, 13)
                        text:Point("CENTER",frame, "CENTER")
    	                text:SetText(strsub(name,0,8).." READY!")
                        local classcolor = RAID_CLASS_COLORS[baseclass]
                        text:SetTextColor(classcolor.r,classcolor.g,classcolor.b)
                        RC.activebars[info[3]['name']][guid]= frame;
                        _G['RaidCooldownIcon'..info[1]].activebars[frame] = true   
                        RC:RearrangeActiveBars(frame:GetParent())   
                    end
                else
                    local frame = tremove(frame_cache) or CreateFrame("Frame");
                    frame:Size(104,  13)
                    frame:SetTemplate()
                    frame:SetFrameStrata('BACKGROUND')
    	            frame:SetParent(_G['RaidCooldownIcon'..info[1]])
                    local text = frame:CreateFontString(nil, 'OVERLAY')
                	text:FontTemplate(nil, 13)
    	            text:Point("CENTER",frame, "CENTER")
    	            text:SetText(strsub(name,0,8).." READY!")
    	            local classcolor = RAID_CLASS_COLORS[baseclass]
    	            text:SetTextColor(classcolor.r,classcolor.g,classcolor.b) 
                        RC.activebars[info[3]['name']][guid]= frame;
    	            _G['RaidCooldownIcon'..info[1]].activebars[frame] = true    
                    RC:RearrangeActiveBars(frame:GetParent())
                end
            end
        end
        info[2]:SetText(RC.GetTotalCooldown(info[3]))
    end
end

RC.OnTalentRemove = function (frame, event, guid, name, server)
    local  _,classFilename = GetPlayerInfoByGUID(guid)
    if(E.db.raidcooldown.active==true) then
        for i, info in ipairs(RC['helper'][classFilename]) do
            if(RC.activebars[info[3]['name']][guid]) then
                _G['RaidCooldownIcon'..info[1]].activebars[RC.activebars[info[3]['name']][guid]] = nil
                RC:RearrangeActiveBars(RC.activebars[info[3]['name']][guid]:GetParent())
                RC.activebars[info[3]['name']][guid]:Hide()
        	    RC.activebars[info[3]['name']][guid]:SetParent(nil)
        	    RC.activebars[info[3]['name']][guid]:ClearAllPoints()
        	    tinsert(frame_cache, RC.activebars[info[3]['name']][guid])
                RC.activebars[info[3]['name']][guid]= nil
            end
        end
    end
    
    RC['raid_members'][guid] = nil
    RC['raid_members_talents'][classFilename][guid] = nil
end
-------------------------------------------------------

-------------------------------------------------------
-- Raidcooldown Frame Management Start --
-------------------------------------------------------
RC.CreateBase = function()
    raidcdbase = CreateFrame("Frame", 'ElvUI_RaidCooldownBase', E.UIParent);
	raidcdbase:Size(32,((28*#RC.cooldowns)+(1*#RC.cooldowns+3))*E.db.raidcooldown.scale);
    raidcdbase:SetScale(E.db.raidcooldown.scale)
	raidcdbase:Point('TOPLEFT', E.UIParent, 'TOPLEFT', 7, -50);
	if not(E.db.raidcooldown.type == "always") then
    	raidcdbase:RegisterEvent("PARTY_MEMBERS_CHANGED")
    	raidcdbase:RegisterEvent("RAID_ROSTER_UPDATE")
    	raidcdbase:RegisterEvent("PLAYER_ENTERING_WORLD")
    	raidcdbase:SetScript("OnEvent", function(self,event, ...)
    	    RC:InRaid()
        end);
    end
	E:CreateMover(raidcdbase, "ElvUI_Raidcooldowns_Mover", "Raidcooldowns")
end

local function barSorter(a, b)
	return a.remaining < b.remaining and true or false
end

function RC:RearrangeActiveBars(anchor)
	if not anchor then return end
    if not next(anchor.activebars) then return end
    local frame = anchor:GetParent()
    wipe(tmp)
	
    for bar in pairs(anchor.activebars) do
		tmp[#tmp + 1] = bar
	end
	
	if(#tmp>2)then
		frame:Height(14*#tmp);
	else
		frame:Height(28);
	end
	
	local lastDownBar, lastUpBar = nil, nil
	
	for i, bar in next, tmp do
		local spacing = -6
		bar:ClearAllPoints()
		if not (lastDownBar) then
	        if(E.db.raidcooldown.grow == "right") then
	    	    bar:SetPoint("TOPLEFT",anchor,"TOPRIGHT", 5, -2)
	    	elseif(E.db.raidcooldown.grow == "left") then
	    	    bar:SetPoint("TOPRIGHT",anchor,"TOPLEFT", -5, -2)
		    end	    
    	else    
    		bar:SetPoint("TOPLEFT", lastDownBar, "BOTTOMLEFT", 0, -2)
		end
		lastDownBar = bar
	end
end


function RC:RearrangeBars(anchor)
	if not anchor then return end
    if not next(anchor.bars) then return end
    local frame = anchor:GetParent()
    wipe(tmp)
	
    for bar in pairs(anchor.bars) do
		tmp[#tmp + 1] = bar
	end
	
	if(#tmp>2)then
		frame:Height(14*#tmp);
	else
		frame:Height(28);
	end
	
	table.sort(tmp, barSorter)
	local lastDownBar, lastUpBar = nil, nil
	
	for i, bar in next, tmp do
		local spacing = -6
		bar:ClearAllPoints()
		if not (lastDownBar) then
	        if(E.db.raidcooldown.grow == "right") then
	    	    bar:SetPoint("TOPLEFT",anchor,"TOPRIGHT", 5, -2)
	    	elseif(E.db.raidcooldown.grow == "left") then
	    	    bar:SetPoint("TOPRIGHT",anchor,"TOPLEFT", -5, -2)
		    end	    
    	else    
    		bar:SetPoint("TOPLEFT", lastDownBar, "BOTTOMLEFT", 0, -6)
		end
		lastDownBar = bar
	end
end

function RC:CreateBar(frame,cooldown,caster,frameicon,guid,reduc)
	local bar = CB:New(E["media"].normTex, 100, 9)
	frameicon.bars[bar] = true
	bar:Set("raidcooldowns:module", "raidcooldowns")
	bar:Set("raidcooldowns:anchor", frameicon)
	bar:Set("raidcooldowns:key", guid)
	bar:SetParent(frameicon)
	bar:SetFrameStrata("MEDIUM")
	if(E.db.raidcooldown.active==true) then
        bar:SetPoint("TOPLEFT",RC.activebars[cooldown['name']][guid],"TOPLEFT",2,-2);
	end
	bar:SetColor(.5,.5,.5,1);	
	bar:SetDuration((cooldown['CD']-reduc))
	bar:SetScale(E.db.raidcooldown.scale)
	bar.candyBarBackground:SetTexture(unpack(E.media.backdropcolor))
	bar:SetClampedToScreen(true)
    local caster = strsplit("-",caster)
	bar:SetLabel(caster)
	
	bar.candyBarLabel:SetJustifyH("LEFT")
	local classcolor = RAID_CLASS_COLORS[cooldown.class]
	bar.candyBarLabel:SetTextColor(classcolor.r,classcolor.g,classcolor.b)
	
	local bg = CreateFrame("Frame");
	bg:SetTemplate("Default")
	bg:SetParent(bar)
	bg:ClearAllPoints()
	bg:Point("TOPLEFT", bar, "TOPLEFT", -2, 2)
	bg:Point("BOTTOMRIGHT", bar, "BOTTOMRIGHT", 2, -2)
	bg:SetFrameStrata("MEDIUM")
	bg:Show()
	
	bar:Start()
	if(E.db.raidcooldown.active~=true) then
	    RC:RearrangeBars(bar:Get("raidcooldowns:anchor"))
	end
	
	return bar
end

function RC:GetcurrCD(cooldown,start)
	cd = start
	if(curr[cooldown['spellID']]) then
		for key,value in pairs(curr[cooldown['spellID']]) do
			cd=cd+1;
		end
	end
	
	return cd;
end

function RC:StartCD(frame,cooldown,text,guid,caster,frameicon, spell,reduc)
	if not (curr[cooldown['spellID']][guid]) then
	    curr[cooldown['spellID']][guid]=guid
    end
	local bar = RC:CreateBar(frame,cooldown,caster,frameicon,guid,reduc)
	
	local args = {cooldown,guid,frame,text,bar,caster,spell}
	RC:ScheduleTimer("StopCD", cooldown['CD']-reduc,args)
end

function RC:CancelBars(frameicon)
    for k in pairs(frameicon.bars) do
        k:Stop()
    end
    
    if(E.db.raidcooldown.active~=true) then
	    RC:RearrangeBars(frameicon) 
	end

end

function RC:StopCD(args)
	curr[args[1]['spellID']][args[2]] = nil;
	
	local a = args[5]:Get("raidcooldowns:anchor")
	if a and a.bars and a.bars[args[5]] then
        a.bars[args[5]] = nil
        if(E.db.raidcooldown.active~=true) then
	    	RC:RearrangeBars(a) 
	    end
	end
	
    if(E.db.raidcooldown.cdannounce == true) then
        SendChatMessage(args[6].."'s "..args[7].." CD  is Ready","RAID")                   
    end
	
	args[4]:SetText(RC.GetTotalCooldown(args[1]))
end

RC.UpdateCooldown = function(frame,event,unit,cooldown,text,frameicon, ...)	
	if(event == "COMBAT_LOG_EVENT_UNFILTERED") then
		CDReduc = 0
		 local timestamp, type,_, sourceGUID, sourceName,_,_, destGUID, destName = select(1, ...)
		 if(type == cooldown['succ']) then
			local spellId, spellName, spellSchool = select(12, ...)
			if(spellId == cooldown['spellID']) then
				if (RC['raid_members'][sourceGUID]) then
					if (GT:GUIDHasTalent(sourceGUID, "Malfurion's Gift") and spellName == "Tranquility")  or (GT:GUIDHasTalent(sourceGUID, "Heavenly Voice") and spellName == "Divine Hymn") then
					  CDReduc=300
					end
					if (GT:GUIDHasTalent(sourceGUID, "Shield Mastery") and spellName == "Shield Wall") then
					  CDReduc=180
					end
					RC:StartCD(frame,cooldown,text,sourceGUID,sourceName,frameicon, spellName,CDReduc)
	                text:SetText(RC.GetTotalCooldown(cooldown))
	                if(E.db.raidcooldown.castannounce == true) then
                        SendChatMessage(sourceName.." casted "..spellName.." CD "..(cooldown['CD'] - CDReduc).." seconds","RAID")                   
	                end
				end
			end
		 end
	elseif(event =="RAID_ROSTER_UPDATE" or event == "PARTY_MEMBERS_CHANGED") then
	    local partyType = RC:GetPartyType()
	    if(partyType=="none") then
	        curr[cooldown['spellID']]={}
	        RC:CancelBars(frameicon)
	    end
	    text:SetText(RC.GetTotalCooldown(cooldown))
    else 
	    text:SetText(RC.GetTotalCooldown(cooldown))
    end
end

RC.GetTotalCooldown = function(cooldown)
    local cd = {}
    if not (cd[cooldown['spellID']]) then
	    cd[cooldown['spellID']]=0
    end
    
    local cdTotal = {}    
    if not (cdTotal[cooldown['spellID']]) then
	    cdTotal[cooldown['spellID']]=0
    end
    
    for i,v in pairs(RC['raid_members_talents'][cooldown.class]) do
        if(cooldown.spec) then
            if(RC:which_spec(v[1]['n1'], v[1]['n2'], v[1]['n3']) == cooldown.spec) then
                cdTotal[cooldown['spellID']]=cdTotal[cooldown['spellID']]+1
            end
        else
            cdTotal[cooldown['spellID']]=cdTotal[cooldown['spellID']]+1
        end
    end
    
    for i,v in pairs(curr[cooldown['spellID']]) do
        cd[cooldown['spellID']]=cd[cooldown['spellID']]+1
    end
    
    return (cdTotal[cooldown['spellID']]-cd[cooldown['spellID']])
end

RC.CreateCooldown = function (index, cooldown)
    local frame = CreateFrame("Frame", 'RaidCooldown'..index, ElvUI_RaidCooldownBase);
	frame:Height(28*E.db.raidcooldown.scale);
	frame:SetClampedToScreen(true);
	frame:Width(145);
		
    local frameicon = CreateFrame("Frame", 'RaidCooldownIcon'..index, ElvUI_RaidCooldownBase);
    frameicon:SetTemplate()
    
	local classcolor = RAID_CLASS_COLORS[cooldown.class]
	frameicon:SetBackdropBorderColor(classcolor.r,classcolor.g,classcolor.b)
    frameicon:SetParent(frame)
	frameicon.bars = {}
	
	frameicon:Size(28*E.db.raidcooldown.scale);
	frameicon:SetClampedToScreen(true);
	
	if(E.db.raidcooldown.grow == "left") then
	    if index == 1 then
    		frame:Point('TOPRIGHT', 'ElvUI_RaidCooldownBase', 'TOPRIGHT', 2, -2);
    	else
    		frame:Point('TOPRIGHT', 'RaidCooldown'..(index-1), 'BOTTOMRIGHT', 0, -4);
    	end
    		frameicon:Point('TOPRIGHT', frame, 'TOPRIGHT');
	elseif(E.db.raidcooldown.grow == "right") then
    	if index == 1 then
    		frame:Point('TOPLEFT', 'ElvUI_RaidCooldownBase', 'TOPLEFT', 2, -2);
    	else
    		frame:Point('TOPLEFT', 'RaidCooldown'..(index-1), 'BOTTOMLEFT', 0, -4);
    	end
    		frameicon:Point('TOPLEFT', frame, 'TOPLEFT');
    end
	
	frameicon.icon = frameicon:CreateTexture(nil, "OVERLAY");
	frameicon.icon:SetTexCoord(unpack(E.TexCoords));
	frameicon.icon:SetTexture(select(3, GetSpellInfo(cooldown['spellID'])));
	frameicon.icon:Point('TOPLEFT', 2, -2);
	frameicon.icon:Point('BOTTOMRIGHT', -2, 2);
	
	local text = frameicon:CreateFontString(nil, 'OVERLAY')
	text:FontTemplate(nil, 20, 'OUTLINE')
	text:Point("CENTER",frameicon, "CENTER", 1, 0)
    table.insert(RC['helper'][cooldown['class']],{index,text,cooldown})       
    
    if(E.db.raidcooldown.active==true) then
        RC.activebars[cooldown['name']] ={}
	    frameicon.activebars = {}
    end
	frame:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED");
	frame:RegisterEvent("PLAYER_ENTERING_WORLD");
	frame:RegisterEvent("PARTY_MEMBERS_CHANGED")
	frame:RegisterEvent("RAID_ROSTER_UPDATE")
	
	frameicon:SetScript("OnEnter", function(self,event, ...)
		RC:OnEnter(self, cooldown, RC['raid_members_talents'][cooldown['class']], curr[cooldown['spellID']])
    end);
    
    frameicon:SetScript("OnLeave", function(self,event, ...)
		RC:OnLeave(self)
    end);
	
	frame:SetScript("OnEvent", function(self,event, ...)
		RC.UpdateCooldown(self,event,unit,cooldown,text,frameicon, ...)
    end);
	
	GT.RegisterCallback (frame, "LibGroupTalents_Update", function(self,event, ...)
		RC.UpdateCooldown(frame,event,unit,cooldown,text,frameicon, ...)
	end)
	
	GT.RegisterCallback (frame, "LibGroupTalents_Remove", function(self,event, ...)
		RC.UpdateCooldown(frame,event,unit,cooldown,text,frameicon, ...)
	end)
	
	GT.RegisterCallback (frame, "LibGroupTalents_UpdateComplete", function(self,event, ...)
		RC.UpdateCooldown(frame,event,unit,cooldown,text,frameicon, ...)
	end)
end
-------------------------------------------------------

-------------------------------------------------------
-- Initialize--
-------------------------------------------------------
local count = 0
function RC:Initialize()
	if E.db.raidcooldown.enable ~= true then return end
    if count == 1 then return end
	RC.CreateRaidTables()
    GT.RegisterCallback (RC, "LibGroupTalents_Add", "OnTalentAdd")
	GT.RegisterCallback (RC, "LibGroupTalents_Update", "OnTalentUpdate")
    GT.RegisterCallback (RC, "LibGroupTalents_Remove", "OnTalentRemove")
    RC.CreateBase()
	local index = 0
	
	for i, cooldown in pairs(RC.cooldowns) do
		if(E.db.raidcooldown.cooldown[cooldown.name] == true) then
		    index = index + 1;
    		RC.CreateCooldown(index, cooldown);
    		curr[cooldown['spellID']] = {}
        end
	end    
    count = 1
end
--------------------------------------------------------

E:RegisterModule(RC:GetName());
