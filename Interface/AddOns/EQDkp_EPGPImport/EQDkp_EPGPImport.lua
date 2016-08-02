
EQDkp_EPGPImport = LibStub("AceAddon-3.0"):NewAddon("EQDkp_EPGPImport", "AceConsole-3.0", "AceEvent-3.0")

local EQDkp_EPGPImport_raiding = nil;


function EQDkp_EPGPImport:OnInitialize()
    self:RegisterChatCommand("epgpimport", "SlashHandler")

    self.selectButtons = {}

    self:RegisterEvent("RAID_ROSTER_UPDATE")
end

function EQDkp_EPGPImport:RAID_ROSTER_UPDATE()

    if EQDkp_EPGPImport_raiding and (GetNumRaidMembers()==0) then
        -- End of raid
        self:Print('End of raid')
        EQDkp_EPGPImport_raiding = nil;
    elseif not EQDkp_EPGPImport_raiding and (GetNumRaidMembers()>0) then
        -- Start of raid -- Show popup
        EQDkp_EPGPImport_raiding = true;
        self:Print('Start of raid')
        self:ShowUI();
    end

end

function EQDkp_EPGPImport:SlashHandler()
    self:ShowUI();
end

function EQDkp_EPGPImport:Parse( data )

    local start,_,data = strfind(data, "^.-(multiTable.*)$")

    if not start then return message("Error: invalid data") end;

    local func, errorS = loadstring(data .. "\r\n; return multiTable, gdkp");

    if not func then return message("Error parsing data: " .. errorS ) end;

    setfenv(func, {["print"] = print, ["type"] = type});
    local ok, multiTable, gdkp = pcall(func);

    if not ok then return message("Error evaluating data: " .. gdkp) end;


    if not multiTable or #multiTable==0 then return message("No data found (multiTable is empty)") end;

    self.gdkp = gdkp;

    if #multiTable == 1 then
        for name, data in pairs(multiTable[1]) do
            if data then
                self:ParseDKP( data.name )
                break
            end
        end
    else
        self:ShowMultiTableSelectUI( multiTable )
    end
end

function EQDkp_EPGPImport:ParseDKP( PoolName )
    if not self.gdkp then return message("No data found (gdkp is empty)") end;

    local poolEarned    = (PoolName or '') .. "_earned"
    local poolSpend     = (PoolName or '') .. "_spend"
    local poolAdjust    = (PoolName or '') .. "_adjust"

    local count = 0
    local num = GetNumGuildMembers(true);
    for i=1, num do repeat
        local name = GetGuildRosterInfo(i);
        local data = self.gdkp.players[name];
        if not data then break end

		if data.aliasOf ~= nil then
			GuildRosterSetOfficerNote(i, data.aliasOf)
		else
			local EP = ceil( (tonumber(data[poolEarned]) or 0) + (tonumber(data[poolAdjust]) or 0) ) or 0
			local GP = ceil( tonumber(data[poolSpend]) ) or 1

			GuildRosterSetOfficerNote(i, format("%s,%s", EP, GP))
		end
        --self:Print( format('%s/%s: %s', EP, GP, name) )
        count = count + 1
    until true end

    if count>0 then
        GuildRoster();
        self:Print( count .. " players imported to epgp.")
    else
        message("No EPGP data found (0 guildmembers match)")
    end

end

function EQDkp_EPGPImport:ShowMultiTableSelectUI( multiTable )

    if not CanEditOfficerNote() then return end;

    local frame = self.selectframe;

    if not frame then

        frame = CreateFrame("Frame","LootMasterMLFrameSelectMT",UIParent)
        --#region Setup main frame
        frame:Hide();
        frame:SetWidth(350)
        frame:SetHeight(50)
        frame:SetPoint("CENTER",UIParent,"CENTER",0,0)
        frame:SetFrameStrata("FULLSCREEN_DIALOG")
        frame:SetToplevel(true)
        frame:SetBackdrop({
            bgFile = "Interface\\DialogFrame\\UI-DialogBox-Gold-Background",
            edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
            tile = true, tileSize = 64, edgeSize = 8,
            insets = { left = 2, right = 1, top = 2, bottom = 2 }
        })
        frame:SetBackdropColor(0,0,0,1)
        --#endregion

        local titleFrame = CreateFrame("Frame", nil, frame)
        --#region Setup main frame title
        titleFrame:SetBackdrop({
            bgFile = "Interface\\ChatFrame\\ChatFrameBackground",
            edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
            tile = true, tileSize = 64, edgeSize = 8,
            insets = { left = 2, right = 1, top = 2, bottom = 2 }
        })
        titleFrame:SetBackdropColor(0,0,0,1)
        titleFrame:SetHeight(25)
        titleFrame:SetPoint("LEFT",frame,"TOPLEFT",7,0)
        titleFrame:SetPoint("RIGHT",frame,"TOPRIGHT",-7,0)

        local titletext = titleFrame:CreateFontString(nil,"OVERLAY","GameFontNormal")
        titletext:SetPoint("CENTER",titleFrame,"CENTER",0,2)
        titletext:SetText( "EQDkp Plus EPGP Importer - Please select EPGP Pool" )
        frame.titleFrame = titleFrame
        --#endregion

        self.selectframe = frame;
    end

    for i, btn in ipairs(self.selectButtons) do
        if btn then btn:Hide() end
    end

    local btnCount = 0;
    for i, mtData in ipairs(multiTable) do

        for name, data in pairs(mtData) do

            btnCount = btnCount + 1;

            local btn = self.selectButtons[btnCount]
            if not btn then
                btn = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
                btn:SetScript("OnClick", function() frame:Hide(); self:ParseDKP(btn.poolName) end)
                btn:SetPoint("LEFT",frame,"LEFT",10,0)
                btn:SetPoint("RIGHT",frame,"RIGHT",-10,0)
                btn:SetHeight(25)
                btn:SetScript("OnEnter", function()
                    GameTooltip:SetOwner(frame, "ANCHOR_CURSOR")
                    GameTooltip:AddLine(btn.poolName or '', 1.0, 0.67, 0.0);
                    GameTooltip:AddLine(btn.poolDisc or '', 1.0, 1.0, 1.0);
                    GameTooltip:AddLine(btn.poolEvents or '', 1.0, 1.0, 1.0);
                    GameTooltip:Show()
                end)
                btn:SetScript("OnLeave", function()
                    GameTooltip:Hide()
                end)
                self.selectButtons[btnCount] = btn
            end

            btn.poolName = data.name or ''
            btn.poolDisc = data.disc or ''
            btn.poolEvents = data.events or ''
            btn:SetText(data.name)
            btn:SetPoint("TOP",frame,"TOP",0,-20 - 30*(btnCount-1))
            btn:Show()
        end
    end

    frame:SetHeight( btnCount*30 + 25 )

    frame:Show();

end

function EQDkp_EPGPImport:ShowUI()

    if not CanEditOfficerNote() then return end;

    if not self.frame then

        local frame = CreateFrame("Frame","LootMasterMLFrame",UIParent)
        --#region Setup main frame
        frame:Hide();
        frame:SetWidth(200)
        frame:SetHeight(50)
        frame:SetPoint("CENTER",UIParent,"CENTER",0,0)
        frame:SetFrameStrata("FULLSCREEN_DIALOG")
        frame:SetToplevel(true)
        frame:SetBackdrop({
            bgFile = "Interface\\DialogFrame\\UI-DialogBox-Gold-Background",
            edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
            tile = true, tileSize = 64, edgeSize = 8,
            insets = { left = 2, right = 1, top = 2, bottom = 2 }
        })
        frame:SetBackdropColor(0,0,0,1)
        --#endregion

        local titleFrame = CreateFrame("Frame", nil, frame)
        --#region Setup main frame title
        titleFrame:SetBackdrop({
            bgFile = "Interface\\ChatFrame\\ChatFrameBackground",
            edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",
            tile = true, tileSize = 64, edgeSize = 8,
            insets = { left = 2, right = 1, top = 2, bottom = 2 }
        })
        titleFrame:SetBackdropColor(0,0,0,1)
        titleFrame:SetHeight(25)
        titleFrame:SetPoint("LEFT",frame,"TOPLEFT",7,0)
        titleFrame:SetPoint("RIGHT",frame,"TOPRIGHT",-7,0)

        local titletext = titleFrame:CreateFontString(nil,"OVERLAY","GameFontNormal")
        titletext:SetPoint("CENTER",titleFrame,"CENTER",0,2)
        titletext:SetText( "EQDkp Plus EPGP Importer" )
        frame.titleFrame = titleFrame
        --#endregion

        local editbox = CreateFrame("EditBox", nil, frame)
        editbox:SetHistoryLines(1)
        editbox:SetMaxLetters(0);
        editbox:SetWidth(100);
        editbox:SetHeight(30);
        editbox:SetPoint("LEFT",frame,"LEFT",10,0)
        editbox:SetFontObject('GameFontHighlightSmall')
        editbox:SetScript("OnEscapePressed", function() frame:Hide(); end)
        editbox:SetScript("OnEnterPressed", function() frame:Hide(); self:Parse(editbox:GetText()) end)

        local btn = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
        btn:SetScript("OnClick", function() frame:Hide(); self:Parse(editbox:GetText()) end)
        btn:SetPoint("RIGHT",frame,"RIGHT",-10,0)
        btn:SetHeight(25)
        btn:SetWidth(60)
        btn:SetText("Parse")

        self.editbox = editbox;
        self.frame = frame;

    end

    self.frame:Show();
    self.editbox:SetText("");

end
