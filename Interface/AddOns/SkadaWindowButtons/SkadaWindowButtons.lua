local L = LibStub("AceLocale-3.0"):GetLocale("Skada", false)
local media = LibStub("LibSharedMedia-3.0")
local Skada = Skada

-- This mode is a bit special.
SkadaWindowButtons = Skada:NewModule("WindowButtons")
local mod = SkadaWindowButtons
--ASDF = nil

if not StaticPopupDialogs["ResetSkadaDialog"] then
	StaticPopupDialogs["ResetSkadaDialog"] = {
		text = L["Do you want to reset Skada?"], 
		button1 = ACCEPT, 
		button2 = CANCEL,
		timeout = 30, 
		whileDead = 0, 
		hideOnEscape = 1, 
		OnAccept = function() Skada:Reset() end,
	}
end

function mod:OnEnable()
	-- Add our options.
	--table.insert(Skada.options.plugins, opts)
	for _,window in ipairs(Skada:GetWindows()) do
		--ASDF = window
		--print(tostring(window.bargroup.optbutton))
		--Spew("window" .. _, window)
		local title = window.bargroup.button:GetFontString()
		title:ClearAllPoints()
		title:SetPoint("LEFT", title:GetParent(), "LEFT", 5, 1)
		title:SetJustifyH("LEFT")
		if not window.bargroup.resetbutton then
			window.bargroup.resetbutton = CreateFrame("Button", nil, window.bargroup)
			window.bargroup.resetbutton:SetFrameLevel(10)
			window.bargroup.resetbutton:ClearAllPoints()
			window.bargroup.resetbutton:SetHeight(16)
			window.bargroup.resetbutton:SetWidth(16)
			window.bargroup.resetbutton:SetScale(0.9)
			window.bargroup.resetbutton:SetNormalTexture("Interface\\Addons\\SkadaWindowButtons\\icon-reset")
			window.bargroup.resetbutton:SetHighlightTexture("Interface\\Addons\\SkadaWindowButtons\\icon-reset", 1)
			window.bargroup.resetbutton:SetAlpha(0.75)
			window.bargroup.resetbutton:SetPoint("TOPRIGHT", window.bargroup.optbutton, "TOPLEFT", 0, 0)
			window.bargroup.resetbutton:Show()
			window.bargroup.resetbutton:RegisterForClicks("LeftButtonUp", "RightButtonUp")
			window.bargroup.resetbutton:SetScript("OnClick", function() StaticPopup_Show("ResetSkadaDialog") end)
			window.bargroup.resetbutton:SetScript("OnEnter", 
			function(this) 
				GameTooltip_SetDefaultAnchor(GameTooltip, this)
				GameTooltip:SetText(L["Reset"])
				GameTooltip:Show()
			end)
			window.bargroup.resetbutton:SetScript("OnLeave", function() GameTooltip:Hide() end)
		end
		
		if not window.bargroup.segmentbutton then
			window.bargroup.segmentbutton = CreateFrame("Button", nil, window.bargroup)
			window.bargroup.segmentbutton:SetFrameLevel(10)
			window.bargroup.segmentbutton:ClearAllPoints()
			window.bargroup.segmentbutton:SetHeight(16)
			window.bargroup.segmentbutton:SetWidth(16)
			window.bargroup.segmentbutton:SetScale(0.9)
			window.bargroup.segmentbutton:SetNormalTexture("Interface\\Buttons\\UI-GuildButton-PublicNote-Up")
			window.bargroup.segmentbutton:SetHighlightTexture("Interface\\Buttons\\UI-GuildButton-PublicNote-Up", 1)
			window.bargroup.segmentbutton:SetAlpha(0.75)
			window.bargroup.segmentbutton:SetPoint("TOPRIGHT", window.bargroup.resetbutton or window.bargroup.optbutton, "TOPLEFT", 0, 0)
			window.bargroup.segmentbutton:Show()
			window.bargroup.segmentbutton:RegisterForClicks("LeftButtonUp", "RightButtonUp")
			window.bargroup.segmentbutton:SetScript("OnClick", function(self) SkadaWindowButtons:SegmentsMenu(self:GetParent().win) end)
			window.bargroup.segmentbutton:SetScript("OnEnter", 
			function(this) 
				GameTooltip_SetDefaultAnchor(GameTooltip, this)
				GameTooltip:SetText(L["Segment"])
				GameTooltip:Show()
			end)
			window.bargroup.segmentbutton:SetScript("OnLeave", function() GameTooltip:Hide() end)
		end
		
		if not window.bargroup.modebutton then
			window.bargroup.modebutton = CreateFrame("Button", nil, window.bargroup)
			window.bargroup.modebutton:SetFrameLevel(10)
			window.bargroup.modebutton:ClearAllPoints()
			window.bargroup.modebutton:SetHeight(16)
			window.bargroup.modebutton:SetWidth(16)
			window.bargroup.modebutton:SetScale(0.9)
			window.bargroup.modebutton:SetNormalTexture("Interface\\Buttons\\UI-GuildButton-PublicNote-Up")
			window.bargroup.modebutton:SetHighlightTexture("Interface\\Buttons\\UI-GuildButton-PublicNote-Up", 1)
			window.bargroup.modebutton:SetAlpha(0.75)
			window.bargroup.modebutton:SetPoint("TOPRIGHT", window.bargroup.segmentbutton or window.bargroup.resetbutton or window.bargroup.optbutton, "TOPLEFT", 0, 0)
			window.bargroup.modebutton:Show()
			window.bargroup.modebutton:RegisterForClicks("LeftButtonUp", "RightButtonUp")
			window.bargroup.modebutton:SetScript("OnClick", function(self) SkadaWindowButtons:ModesMenu(self:GetParent().win) end)
			window.bargroup.modebutton:SetScript("OnEnter", 
			function(this) 
				GameTooltip_SetDefaultAnchor(GameTooltip, this)
				GameTooltip:SetText(L["Mode"])
				GameTooltip:Show()
			end)
			window.bargroup.modebutton:SetScript("OnLeave", function() GameTooltip:Hide() end)
		end
		
		if not window.bargroup.reportbutton then
			window.bargroup.reportbutton = CreateFrame("Button", nil, window.bargroup)
			window.bargroup.reportbutton:SetFrameLevel(10)
			window.bargroup.reportbutton:ClearAllPoints()
			window.bargroup.reportbutton:SetHeight(16)
			window.bargroup.reportbutton:SetWidth(16)
			window.bargroup.reportbutton:SetScale(0.9)
			window.bargroup.reportbutton:SetNormalTexture("Interface\\Buttons\\UI-GuildButton-MOTD-Up")
			window.bargroup.reportbutton:SetHighlightTexture("Interface\\Buttons\\UI-GuildButton-MOTD-Up", 1)
			window.bargroup.reportbutton:SetAlpha(0.75)
			window.bargroup.reportbutton:SetPoint("TOPRIGHT", window.bargroup.modebutton or window.bargroup.segmentbutton or window.bargroup.resetbutton or window.bargroup.optbutton, "TOPLEFT", 0, 0)
			window.bargroup.reportbutton:Show()
			window.bargroup.reportbutton:RegisterForClicks("LeftButtonUp", "RightButtonUp")
			window.bargroup.reportbutton:SetScript("OnClick", function(self) SkadaWindowButtons:Report(self:GetParent().win) end)
			window.bargroup.reportbutton:SetScript("OnEnter", 
			function(this) 
				GameTooltip_SetDefaultAnchor(GameTooltip, this)
				GameTooltip:SetText(L["Report"])
				GameTooltip:Show()
			end)
			window.bargroup.reportbutton:SetScript("OnLeave", function() GameTooltip:Hide() end)
		end
	end
end
local AceGUI = LibStub("AceGUI-3.0")
function SkadaWindowButtons:Report(window)
	if self.ReportWindow==nil then
		self:CreateReportWindow(window)
	end
	
	--self:UpdateReportWindow()
	self.ReportWindow:Show()
end

local function destroywindow()
	if mod.ReportWindow then
		mod.ReportWindow:ReleaseChildren()
		mod.ReportWindow:Hide()
		mod.ReportWindow:Release()
	end
	mod.ReportWindow = nil
end

function mod:CreateReportWindow(window)
	-- ASDF = window
	self.ReportWindow = AceGUI:Create("Window")
	local frame = self.ReportWindow
	frame:EnableResize(nil)
	frame:SetWidth(250)
	frame:SetLayout("Flow")
	frame:SetHeight(300)
	frame:SetPoint("CENTER", UIParent, "CENTER", 0, 0)
	frame:SetTitle(L["Report"] .. (" - %s"):format(window.db.name))
	frame:SetCallback("OnClose", function(widget, callback)
		destroywindow()
	end)
	
	local lines = AceGUI:Create("Slider")
	lines:SetLabel(L["Lines"])
	lines:SetValue(Skada.db.profile.report.number ~= nil and Skada.db.profile.report.number	 or 10)
	lines:SetSliderValues(1, 25, 1)
	lines:SetCallback("OnValueChanged", function(self,event, value) 
		Skada.db.profile.report.number = value
		-- Spew("value", value)
	end)
	lines:SetFullWidth(true)
	
	local channeltext = AceGUI:Create("Label")
	channeltext:SetText(L["Channel"])
	channeltext:SetFullWidth(true)
	frame:AddChildren(lines, channeltext)
	
	
	local channellist = {
		{"Whisper", "whisper"},
		{"Whisper Target", "whisper"},
		{"Say", "preset"},
		{"Raid", "preset"},
		{"Party", "preset"},
		{"Guild", "preset"},
		{"Officer", "preset"},
		{"Self", "self"},
	}
	local list = {GetChannelList()}
	for i=2, #list, 2 do
		if list[i] ~= "Trade" and list[i] ~= "General" and list[i] ~= "LookingForGroup" then
			channellist[#channellist+1] = {list[i], "channel"}
		end
	end
	for i=1,#channellist do
		--print(channellist[i][1], channellist[i][2])
		local checkbox = AceGUI:Create("CheckBox")
		_G["SkadaReportCheck" .. i] = checkbox
		checkbox:SetType("radio")
		checkbox:SetRelativeWidth(0.5)
		-- checkbox:SetValue(false)
		if Skada.db.profile.report.chantype == "channel" then
			if channellist[i][1] == Skada.db.profile.report.channel then
				frame.channel = channellist[i][1]
				frame.chantype = channellist[i][2]
				checkbox:SetValue(true)
			end
		elseif Skada.db.profile.report.chantype == "whisper" then
			if channellist[i][1] == "Whisper" then
				-- frame.channel = channellist[i][1]
				frame.chantype = channellist[i][2]
				checkbox:SetValue(true)
			end
		elseif Skada.db.profile.report.chantype == "preset" then
			-- print("pass")
			if rawget(L, channellist[i][1]) and L[channellist[i][1]] == Skada.db.profile.report.channel then
				frame.channel = channellist[i][1]
				frame.chantype = channellist[i][2]
				checkbox:SetValue(true)
			end
		elseif Skada.db.profile.report.chantype == "self" then
			if channellist[i][2] == "self" then
				frame.channel = channellist[i][1]
				frame.chantype = channellist[i][2]
				checkbox:SetValue(true)
			end
		end
		if i == 2 or i >= 9 then
			checkbox:SetLabel(channellist[i][1])
		else
			checkbox:SetLabel(L[channellist[i][1]])
		end
		checkbox:SetCallback("OnValueChanged", function(value)
			
			for i=1, #channellist do
				local c = getglobal("SkadaReportCheck"..i)
				if c ~= nil and c ~= checkbox then
					c:SetValue(false)
				end
				if c == checkbox then
					frame.channel = channellist[i][1]
					frame.chantype = channellist[i][2]
				end
			end 
		end)
		frame:AddChild(checkbox)
	end
	
	local whisperbox = AceGUI:Create("EditBox")
	whisperbox:SetLabel("Whisper Target")
	if Skada.db.profile.report.chantype == "whisper" and Skada.db.profile.report.channel ~= L["Whisper"] then
		whisperbox:SetText(Skada.db.profile.report.channel)
		frame.target = Skada.db.profile.report.channel
	end
	whisperbox:SetCallback("OnEnterPressed", function(box, event, text) frame.target = text frame.button.frame:Click() end)
	whisperbox:SetCallback("OnTextChanged", function(box, event, text) frame.target = text end)
	whisperbox:SetFullWidth(true)
	
	local report = AceGUI:Create("Button")
	frame.button = report
	report:SetText(L["Report"])
	report:SetCallback("OnClick", function()
		if frame.channel == "Whisper" then
			frame.channel = frame.target
		end
		if frame.channel == "Whisper Target" then
			if UnitExists("target") then
				frame.channel = UnitName("target")
			else
				frame.channel = nil
			end
		end
		-- print(tostring(frame.channel), tostring(frame.chantype), tostring(window.db.mode))
		if frame.channel and frame.chantype and window.db.mode then
			Skada.db.profile.report.channel = frame.channel
			Skada.db.profile.report.chantype = frame.chantype
			
			Skada:Report(frame.channel, frame.chantype, window.db.mode, Skada.db.profile.report.set, Skada.db.profile.report.number, window)
			frame:Hide()
		else
			Skada:Print("Error: No options selected")
		end
		
	end)
	report:SetFullWidth(true)
	frame:AddChildren(whisperbox, report)
	frame:SetHeight(180 + 27* math.ceil(#channellist/2))
end

function SkadaWindowButtons:SegmentsMenu(window)
	--Spew("window", window)
	if not self.segmentsmenu then
		self.segmentsmenu = CreateFrame("Frame", "SkadaWindowButtonsSegments")
	end
	local segmentsmenu = self.segmentsmenu
	
	segmentsmenu.displayMode = "MENU"
	local info = {}
	segmentsmenu.initialize = function(self, level)
	    if not level then return end
	
		info.isTitle = 1
		info.text = L["Segment"]
		UIDropDownMenu_AddButton(info, level)
		info.isTitle = nil
		
		wipe(info)
		info.text = L["Total"]
		info.func = function()
						window.selectedset = "total"
						Skada:Wipe()
						Skada:UpdateDisplay(true)
					end
		info.checked = (window.selectedset == "total")
		UIDropDownMenu_AddButton(info, level)
		
		wipe(info)
		info.text = L["Current"]
		info.func = function()
						window.selectedset = "current"
						Skada:Wipe()
						Skada:UpdateDisplay(true)
					end
		info.checked = (window.selectedset == "current")
		UIDropDownMenu_AddButton(info, level)
		
		for i, set in ipairs(Skada.db.profile.sets) do
		    wipe(info)
			info.text = set.name..": "..date("%H:%M",set.starttime).." - "..date("%H:%M",set.endtime)
			info.func = function() 
							window.selectedset = i
							Skada:Wipe()
							Skada:UpdateDisplay(true)
						end
			info.checked = (window.selectedset == i)
			UIDropDownMenu_AddButton(info, level)
		end
	end
	local x,y = GetCursorPosition(UIParent);
	ToggleDropDownMenu(1, nil, segmentsmenu, "UIParent", x / UIParent:GetEffectiveScale() , y / UIParent:GetEffectiveScale())
end
function SkadaWindowButtons:ModesMenu(window)
	--Spew("window", window)
	if not self.modesmenu then
		self.modesmenu = CreateFrame("Frame", "SkadaWindowButtonsModes")
	end
	local modesmenu = self.modesmenu
	
	modesmenu.displayMode = "MENU"
	local info = {}
	modesmenu.initialize = function(self, level)
	    if not level then return end
		
		info.isTitle = 1
		info.text = L["Mode"]
		UIDropDownMenu_AddButton(info, level)
		
		for i, module in ipairs(Skada:GetModes()) do
			wipe(info)
			info.text = module:GetName()
			info.func = function() window:DisplayMode(module) end
			info.checked = (window.selectedmode == module)
			UIDropDownMenu_AddButton(info, level)
		end
	end
	local x,y = GetCursorPosition(UIParent);
	ToggleDropDownMenu(1, nil, modesmenu, "UIParent", x / UIParent:GetEffectiveScale() , y / UIParent:GetEffectiveScale())
end

