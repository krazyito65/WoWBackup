local addonName, TSMCT = ...

local Private = {}
local Config = TSMCT:NewModule("Config", "AceHook-3.0")

local AceGUI = LibStub("AceGUI-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale(addonName)

local dbProfile, dbData, dbChar

local CompetitorsTree = {
	{ value=1, text = L["TreeCompetitors"], children = { }, },
}

function Config:Load(parent)
	dbProfile  = TSMCT.db.profile
	dbData = TSMCT.db.factionrealm
	dbChar = TSMCT.db.char
	
	Private.treeGroup = AceGUI:Create("TSMTreeGroup")
	local treeGroup = Private.treeGroup 
	
	treeGroup:SetLayout("Fill")
	treeGroup:SetCallback("OnGroupSelected", Private.SelectTree)
	treeGroup:SetStatusTable(dbProfile.treeGroupStatus)
	
	parent:AddChild(treeGroup)
	Private.UpdateTree()
	treeGroup:SelectByPath(1)
end

function Private.UpdateTree()
	wipe(CompetitorsTree[1].children)
	
	local ts = {}
	for k, v in pairs(dbData.competitors) do
		if v.goblin then
			if not ts[v.goblin] then
				ts[v.goblin] = {}
			end
			local treeItem = {value=k, text=k}
			tinsert(ts[v.goblin],treeItem)
		else
			if not ts[k] then
				ts[k] = {}
			end
		end
    end

	for k, v in pairs(ts) do
		local treeItem = {value=k, text=k}
		
		if #v>0 then
			treeItem.children = v
		end
		
		tinsert(CompetitorsTree[1].children,treeItem)
    end
	
	sort(CompetitorsTree[1].children, function(a, b) return strlower(a.value) < strlower(b.value) end)

	Private.treeGroup:SetTree(CompetitorsTree)
end

function Private.SelectTree(treeFrame, _, selection)
	treeFrame:ReleaseChildren()

	local content = AceGUI:Create("TSMSimpleGroup")
	content:SetLayout("Fill")
	treeFrame:AddChild(content)
	content:DoLayout()
		
	local selectedParent, selectedChild, selectedSubChild = ("\001"):split(selection)
	
	if not selectedChild or tonumber(selectedchild) == 0 then
		if tonumber(selectedParent) == 1 then
			content:AddChild(Private.CreateGeneralTabGroup(content))
		end
	else
		if selectedSubChild then
			content:AddChild(Private.CreateCompetitorTabGroup(content, selectedSubChild))
		else
			content:AddChild(Private.CreateCompetitorTabGroup(content, selectedChild))
		end
	end
end

function Private.SelectCompetitor(name, parentName)
	if not Private.treeGroup then return end
	
	local path = "2\001"
	
	if parentName then
		path = path..parentName.."\001"..name
	else
		path = path..name
	end
	
	Private.treeGroup:SelectByPath(path)
end

-- Tree - Competitor Section --
function Private.CreateGeneralTabGroup(content)
	local TabbedGroup = AceGUI:Create("TSMTabGroup")
	TabbedGroup:SetLayout("Fill")
	TabbedGroup:SetFullWidth(true)
	TabbedGroup:SetFullHeight(true)
	
	TabbedGroup:SetTabs({
		{value=1, text=L["DeletedTab"]},
	})
	
	TabbedGroup:SetCallback("OnGroupSelected",function(self,Crap,value)
		TabbedGroup:ReleaseChildren()
		content:DoLayout()
		
		if value==1 then
			Private.CreateDeletedCompTab(TabbedGroup, function() TabbedGroup:SelectTab(1) end)
		end
	end)
	TabbedGroup:SelectTab(1)

	return TabbedGroup
end

local function RemoveDeletedCompetitorFromList(TabbedGroup, competitor, refreshPage)
	if competitor and dbData.deleted[competitor] then
		dbData.deleted[competitor] = nil
		refreshPage()
	end
end

function Private.CreateDeletedCompTab(content, refreshPage)
	local deletedWidgets = { }
	
	for competitor, _ in pairs(dbData.deleted) do
		local widgets = { 
			{ 	type = "Label", text = competitor, relativeWidth = 0.7,	},
			{ 	type = "Button", text = "Remove", relativeWidth = 0.3,
				callback = function() RemoveDeletedCompetitorFromList(content, competitor, refreshPage) end,
			}
		}

		for _, widget in ipairs(widgets) do
			tinsert(deletedWidgets, widget)
		end
	end

	local page = { 
		{
			type = "ScrollFrame",
			layout = "flow",
			fullHeight = true,
			children = {
				{
					type = "InlineGroup",
					layout = "flow",
					title = L["DeletedTitle"],
					relativeWidth = 1,
					children = {
						{ type = "Label", relativeWidth = 1, text = L["DeletedInfo"] },
						{ type = "Spacer", },
						{ type = "HeadingLine", },
						{ type = "SimpleGroup", layout = "flow", children = deletedWidgets, }
					}
				}
			}
		}
	}
	
	TSMAPI.GUI:BuildOptions(content, page)
end

function Private.CreateCompetitorTabGroup(content,selectedChild)
	local TabbedGroup = AceGUI:Create("TSMTabGroup")
	TabbedGroup:SetLayout("Fill")
	TabbedGroup:SetFullWidth(true)
	TabbedGroup:SetFullHeight(true)
	TabbedGroup:SetTabs({
		{value=1, text=L["HistoryTabText"]},
		{value=2, text=L["ManagementTabText"]},
	})
	TabbedGroup:SetCallback("OnGroupSelected",function(self,Crap,value)
		TabbedGroup:ReleaseChildren()
		content:DoLayout()

		if value==1 then
			Private.PersonHistory(TabbedGroup,selectedChild)
		elseif value==2 then
			Private.PersonManagement(TabbedGroup,selectedChild)
		end
	end)
	TabbedGroup:SelectTab(1)
	
	Config:HookScript(TabbedGroup.frame, "OnHide", function()
		Config:UnhookAll()
	end)
	
	return TabbedGroup
end

function GetHistoryData(competitor)
	local rowData = {}
	
	if competitor.records and #competitor.records > 0 then 
		local history = CopyTable(competitor.records)
		
		for i=1,#history-1 do
			history[i].periode = history[i+1].modified-history[i].modified
		end
		history[#history].periode = competitor.modified - history[#history].modified
		
		for i=#history,1,-1 do
			local itemData = history[i]
			local timeColor
			
			if itemData.connected then
				timeColor = "|cff00ff00"
			else
				timeColor = "|cffff0000"
			end

			tinsert(rowData, {
				cols = {
					{ value = TSMCT.GetFormattedTime(itemData.modified, "aidate") },
					{ value = TSMCT.GetFormattedTime(itemData.periode, "period") },
					{ value = timeColor..itemData.location.."|r" },
				},
			})
		end
	end
	return rowData
end

function Private.PersonHistory(container,name)
	local competitor = dbData.competitors[name] 
	if not competitor then return end
	
	local linkColor = TSMAPI.Design:GetInlineColor("link")

	-- scrolling table
	local stCols = {
		{ name = L["VHeadTime"],     width = 0.2, headAlign="LEFT" },
		{ name = L["VHeadPeriode"],  width = 0.2, headAlign="LEFT" },
		{ name = L["VHeadLocation"], width = 0.6, headAlign="LEFT" },
	}
	
	local page = { 
		{	-- scroll frame to contain everything
			type = "SimpleGroup",
			layout = "Flow",
			children = {
				{
					type = "InlineGroup",
					layout = "flow",
					title = "Competitor Data",
					children = {
						{
							type = "Label",
							text = linkColor..L["CName"]..":|r"..name ,
							relativeWidth = 1,
						},
						{
							type = "Label",
							text = linkColor..L["CClass"]..":|r"..competitor.class..linkColor.." "..L["CLevel"]..":|r"..competitor.level,
							relativeWidth = 1,
						},
						{
							type = "Label",
							text = linkColor..L["CLocation"]..":|r"..competitor.location ,
							relativeWidth = 1,
						},
						{
							type = "Label",
							text = linkColor..L["CStatus"]..":|r"..competitor.status ,
							relativeWidth = 1,
						},
						{
							type = "Label",
							text = linkColor..L["CNote"]..":|r"..(competitor.friendNote or "") ,
							relativeWidth = 1,
						},
						
					}
				},
				{
					type = "ScrollingTable",
					tag = "TSMCT_CompData_ST",
					selectionDisabled = true,
					colInfo = stCols,
				},
			}
		}
	}

	TSMAPI.GUI:BuildOptions(container, page)
	TSMAPI.GUI:UpdateTSMScrollingTableData("TSMCT_CompData_ST", GetHistoryData(competitor))
end

function Private.PersonManagement(container,name)
	-- Popup Confirmation Window used in this module
	StaticPopupDialogs["TSMCompetitorTrackerPerson.DeleteConfirm"] = StaticPopupDialogs["TSMCompetitorTrackerPerson.DeleteConfirm"] or {
		text = L["PersonDeleteSure"],
		button1 = L["PersonDeleteAccept"],
		button2 = L["PersonDeleteCancel"],
		timeout = 0,
		whileDead = true,
		hideOnEscape = true,
		OnCancel = false,
		-- OnAccept defined later
	}

	local competitor = dbData.competitors[name]
	if not competitor then return end
	
	local disableRemove = type(competitor.goblin) ~= "string"
	local disableDropdown = false
	local goblinList = {}
	
	for _, v in pairs(dbData.competitors) do
		if v.goblin then
			if v.goblin==name or v.name==name then
				disableDropdown = true
			end
		else
			if v.name~=name then
				goblinList[v.name] = v.name
			end
		end
    end
	
	local page = {
		{
			type = "ScrollFrame",
			layout = "Flow",
			children = {
				{
					type = "InlineGroup",
					layout = "flow",
					title = L["MHSTitle"],
					children = {
						{
							type = "Button",
							text = L["MHClearBtnText"],
							relativeWidth = 1,
							callback = function(_,_,value)
								wipe(competitor.records)
								Private.SelectCompetitor(name)
							end,
							tooltip = L["MHClearBtnInfo"],
						},
						{
							type = "Spacer",
							quantity = 2,
						},
						{
							type = "Label",
							text = L["PersonDeleteDesc"],
							relativeWidth = 1,
						},
						{
							type = "Button",
							text = L["MHDeleteBtnText"],
							relativeWidth = 1,
							callback = function(_,_,value)
								StaticPopupDialogs["TSMCompetitorTrackerPerson.DeleteConfirm"].OnAccept = function()
									TSMCT.Data.DeleteCompetitorData(name)
									Private.UpdateTree()
								end
								TSMAPI.Util:ShowStaticPopupDialog("TSMCompetitorTrackerPerson.DeleteConfirm")
							end,
							tooltip = L["MHDeleteBtnInfo"],
						},
					},
				},
				{
					type = "InlineGroup",
					layout = "flow",
					title = L["MGSTitle"],
					children = {
						{
							type = "Dropdown",
							label = L["MGDropdownLabel"],
							list = goblinList,
							disabled = disableDropdown,
							relativeWidth = 0.5,
							settingInfo = {competitor, "goblin"},
							multiselect = false,
							callback = function(self, _, value)
								Private.UpdateTree()
								Private.SelectCompetitor(name,value)
							end,
							tooltip = L["MGDropdownInfo"],
						},
						{
							type = "Button",
							text = L["MGRemoveBtnText"],
							disabled = disableRemove,
							relativeWidth = 0.5,
							callback = function(_,_,value)
								competitor.goblin = nil
								Private.UpdateTree()
								Private.SelectCompetitor(name)
							end,
							tooltip = L["MGRemoveBtnInfo"],
						},
					},
				},
			},
		},
	}
	
	TSMAPI.GUI:BuildOptions(container, page)
end
