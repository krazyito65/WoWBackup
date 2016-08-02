local addonName, TSMCT = ...

local Monitor = TSMCT:NewModule("Monitor","AceHook-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale(addonName)
local AceGUI = LibStub("AceGUI-3.0")

local dbCharMonitor, dbData
local private = {
	frame=nil, 
}

function Monitor:OnEnable()
	TSMCT:Chat(2,L["MonitorEnabled"])
	dbCharMonitor = TSMCT.db.char.Monitor
	dbData = TSMCT.db.factionrealm
	
	Monitor:Create()
	private.frame:Show()
	Monitor:Update()
	
	TSMAPI.Delay:AfterTime("CompMonitorUpdate", 10, Monitor.Update, 10)
end

function Monitor:OnDisable()
	TSMAPI.Delay:Cancel("CompMonitorUpdate")
	Monitor:UnhookAll()
	
	if private.frame then
		private.frame:Hide()
	end
end

function GetSTData()
	local compList, rowData = {}, {}
	
	for _, v in pairs(dbData.competitors) do
		if v.goblin then
			if v.connected then
				table.insert(compList, v)
			end
		else
			table.insert(compList, v)
		end
    end
	
	table.sort(compList, function (a, b) return a.modified > b.modified; end)
	
	for i=1,#compList do
		local itemData = compList[i]
		local name, nameColor, timeColor, notesText
		
		if itemData.goblin then
			name = itemData.goblin.."<<"..itemData.name
		else
			name = itemData.name
		end
		
		if itemData.connected then
			nameColor = "|cff00ff00"
			timeColor = "|cff00ff00"
		else
			nameColor = "|cff9482C9"
			timeColor = "|cff9482C9"
		end
		
		if not itemData.inFriendList then
			nameColor = "|cffFFF569"
		end

		if itemData.status == "<Away>" then
			timeColor = "|cffFFF569"
		end
		
		if dbCharMonitor.NotesColumn == 2 then
			notesText = itemData.friendNote
		else
			notesText = itemData.location
		end
		
		tinsert(rowData, {
			cols = {
				{ value = nameColor..name.."|r" },
				{ value = notesText	},
				{ value = TSMCT.GetFormattedTime(itemData.previous, "period")},
				{ value = timeColor..TSMCT.GetFormattedTime(itemData.modified, "ago").."|r"},
			},
		})
	end
	
	return rowData
end

function Monitor:Update()
	private.frame.st:SetData(GetSTData())
end

function Monitor:Create()
	if private.frame then return end

	local function GetNotesColumnText()
		if dbCharMonitor.NotesColumn == 2 then
			return L["MHeadNotes"]
		else
			return L["MHeadLocation"]
		end
	end

	local stHandlers = {
		OnColumnClick = function(self, button)
			if self.colNum == 2 and button == "RightButton" then
				dbCharMonitor.NotesColumn = dbCharMonitor.NotesColumn + 1
				dbCharMonitor.NotesColumn = dbCharMonitor.NotesColumn > 2 and 1 or dbCharMonitor.NotesColumn
				self:SetText(GetNotesColumnText())
				Monitor:Update()
			end
		end,
	}
	
	
	local frameDefaults = {
		x = 100,
		y = 300,
		width = 450,
		height = 400,
		scale = 1,
	}
	
	local BFC = TSMAPI.GUI:GetBuildFrameConstants()
	
	local frameInfo = {
		type = "MovableFrame",
		name = "TSMCompetitorTrackerFrame",
		movableDefaults = frameDefaults,
		minResize = {300, 120},
		scripts = {"OnHide"},
		children = {
			{
				type = "Text",
				text = format("Competitor Tracker - %s", strfind(TSMCT._version, "@") and "Dev" or TSMCT._version),
				textFont = {TSMAPI.Design:GetContentFont(), 18},
				points = {{"TOP", 0, -3}},
			},
			{
				type = "HLine",
				offset = -24,
			},
			{
				type = "VLine",
				offset = 0,
				size = {2, 25},
				points = {{"TOPRIGHT", -25, -1}},
			},
			{
				type = "Button",
				key = "closeBtn",
				text = "X",
				textHeight = 18,
				size = {19, 19},
				points = {{"TOPRIGHT", -3, -3}},
				scripts = {"OnClick"},
			},
			{
				type = "ScrollingTableFrame",
				key = "st",
				stCols = { 
					{name = L["MHeadName"], 		width = 0.3, headAlign="LEFT" },
					{name = GetNotesColumnText(),	width = 0.3, headAlign="LEFT" },
					{name = L["MHeadBefore"],		width = 0.2, headAlign="LEFT" },
					{name = L["MHeadNow"],			width = 0.2, headAlign="LEFT" },
				},
				points = { { "TOPLEFT", 5, -30 }, { "BOTTOMRIGHT", -5, 5 } },
				scripts = { "OnColumnClick" },
			},
			{
				type = "IconButton",
				key = "sizer",
				icon = "Interface\\Addons\\TradeSkillMaster\\Media\\Sizer",
				size = { 16, 16 },
				points = { { "BOTTOMRIGHT", -2, 2 } },
				scripts = { "OnMouseDown", "OnMouseUp" },
			},
		},
		handlers = {
			OnHide = function(self)
				private.frame:Hide()
			end,
			closeBtn = {
				OnClick = function(self)
					--private.frame:Hide()
					TSMCT.MonitoringEnable(false)
				end,
			},
			st = {
				OnColumnClick = function(self, button)
					if self.colNum == 2 and button == "RightButton" then
						dbCharMonitor.NotesColumn = dbCharMonitor.NotesColumn + 1
						dbCharMonitor.NotesColumn = dbCharMonitor.NotesColumn > 2 and 1 or dbCharMonitor.NotesColumn
						self:SetText(GetNotesColumnText())
						Monitor:Update()
					end
				end,
			},
			sizer = {
				OnMouseDown = function()
					private.frame:StartSizing("BOTTOMRIGHT")
				end,
				OnMouseUp = function()
					private.frame:StopMovingOrSizing()
				end,
			},
		},
	}

	local frame = TSMAPI.GUI:BuildFrame(frameInfo)
	TSMAPI.Design:SetFrameBackdropColor(frame)
	private.frame = frame
	
	dbCharMonitor.FrameScale = private.frame:GetFrameScale() 
end

function Monitor:ResetFrame()
	local TsmFrameStatus = TradeSkillMasterDB["g@ @frameStatus"]
	
	local options = TsmFrameStatus[private.frame:GetName()]
	local defaults = options.defaults
	
	options.hasLoaded = true
	for i, v in pairs(defaults) do options[i] = v end

	if private.frame and private.frame:IsVisible() then
		private.frame:RefreshPosition()
		dbCharMonitor.FrameScale = private.frame:GetFrameScale() 
	end
end
