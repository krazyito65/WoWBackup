local GlobalAddonName, LTS = ...

local ADDON_VERSION = "2.4 (31.07.2016)"

--[[
TODO

2.4
Added "collected" info on tooltips for a lot non-equippable items by current char (there is still message "can't use this transmog" for some items because blizzard fault. You need send this items (if they are boe) to char that can equip it.)
Fixed tooltips for tabards

2.3
Added message that new appearance was learned (for blue and green items) (can be disabled in option) [this is stil in testing, so you can disable it if you have any troubles]
Fixed Collected & Uncollected filters while collection filtered by addon

2.2
Added difficulties for raids in filter dropdown
Added option to hide "collected" on items tooltips
Added "save position" checkbox for big model
Added option "Use this position in preview" on big model (no idea, is this option needed?)
Now you can set uncollected favorites visuals [still in testing] (note, this visuals will become non-favorite when you collect them)
Bugfixes

2.1
Bugfixes
Added "Big model"

2.0
Different colors for collected (green) and unusable for transmog items (red) on tooltips
"Current zone" filter is back
Now filter lists all items for all slots. If You want to view items only for one slot - just change it after using filter (known issue: You need change active slot twice)
"Sets" button is back
toc file update

1.9
Beta/PTR 7.0: Bugfixes
Beta/PTR 7.0: Tooltip for collected items & items that can't be collected on current char

1.8
Added button "Find all recolors"
First roundup to integate db with 7.0 Wardrobe (This version works on both clients Live 6.2.4+ and Legion Beta 7.0.3)
Bugfix

1.7
Added "Duplicates" filter (tooltip with this filter will show "duplicate on current char" (if you have more than 1 item with this visual or have item+completed quest that reward same visual) or "duplicate with another char")
Bugfixes

1.6
Added filter "Zone" (you can select any zone, dungeon or raid)
Added minimap icon
Localizated map names for non-English clients
Localizated boss names for non-English clients
Localizated wowhead links for non-English clients
Sets preview on big model
Added transmog sets (prev time were item sets)
Bugfixes

1.5
Major Database review:
- Fixed sources for a lot items
- More removed quests checks
- Added zones info for world drop items
- New source type: "Created" for 'created items from items' and 'items from containers'
Added tab with class sets
BOE scaning now works for guildbank
Bugfixes

1.4
Minor UI changes
Fixed TAB feature for visuals that can't be obtained on current char
Added option for scan boe items ("/wardrobe boe")
Added "Favorite" text on item tooltips for favorites visuals
Added collection state to tooltips in profession window
Added zones names for vendors (as result - vendors now available for "current zone" filter)
Added missed alliance visuals

1.3
More pre-cata quest checks (this time for items that can be obtained post-wotlk)
Opening window with items & sources on pressing TAB button while you hover item with visual
Option for fading out items that already collected in auction window [Must be enabled in options before using]. Note: Do not forget to check all sources (press TAB buton) before spending gold 
Fixed sources for some items (375 items from BC raids, ICC, Cata T11 were incorectly shown as vendor items)

1.2
DB updated to last Legion Alpha build
Added pre-cata quests to DB
Fixed models preview with different UI scale
Added new filter "Current zone": shows all items from your current instance, raid or quest zone
Added names of chars that collected visual to items tooltips
Added scaling big model by pressing keys "-" and "+"
Added import/export buttons in "about" window
Added "Force update" button in "about" window

1.1
Added favorites
Opening wardrobe before visiting bank or VS isn't requied
Removed legion items
Names of chars that collected visual on model tooltip
List of chars on "about" page
Info on item tooltips about collected state (collected, not collected). Can be disabled in options
Added collected and not collected filter
Hide window on escape press
Fixed WOD crafted items
Added zones names for quests info
]]

local tonumber, GetItemCount, strtrim, bit_band, type = tonumber, GetItemCount, strtrim, bit.band, type

local ItemsCheckBonuses = LTS.ItemsCheckBonuses
local ZonesFilterList = LTS.ZonesFilterList

local AllData
local AllDataAll
local Visuals
local ItemSource
local VendorNames
local InstanceList
local BossList
local DiffList
local ItemCost
local QuestToZone
local ZonesNames
local ZoneToDataID
local DiffToDataID
local QuestZoneToDataID
local NPCToZone
local NPCReact
local InstanceToEJ
local BossToEJ
local SetsAllData
local Sets
local Recolors
local HaveRecolors

local VLTW

local _,playerClass = UnitClass'player'
local playerFaction = UnitFactionGroup'player'

local realmKey = GetRealmName() or ""
local charName = UnitName'player' or ""
realmKey = realmKey:gsub(" ","")
local charKey = charName .. "-" .. realmKey
local charKeyFind = charKey:gsub("%-","%%%-")

local IsDebugVersion = false

local SourceTypeNames = {
	[1] = "Boss Drop",
	[2] = "Quest",
	[3] = "Vendor",
	[4] = "World Drop",
	[5] = "Legacy",
	[6] = "Created",
	[7] = "Achievement",
	[8] = "Profession",
}

local majorBonuses = {
	[451] = true,
	[450] = true,
	[566] = true,
	[567] = true,
	[524] = true,
	[525] = true,
	[526] = true,
	[527] = true,
	[593] = true,
	[617] = true,
	[618] = true,
	[558] = true,
	[559] = true,
	[594] = true,
	[619] = true,
	[620] = true,
}

local RaidDiffToDiffName = {
	[3] = RAID_DIFFICULTY1,
	[4] = RAID_DIFFICULTY2,
	[5] = RAID_DIFFICULTY3,
	[6] = RAID_DIFFICULTY4,
	[7] = PLAYER_DIFFICULTY3,
	[14] = PLAYER_DIFFICULTY1,
	[15] = PLAYER_DIFFICULTY2,
	[16] = PLAYER_DIFFICULTY6,
}


local CharQuestsData
local UpdateModel
local eventsFrame
local FilterInstance, FilterInstanceDifficulty
local FilterRecolors
local FindBonuses
local LocMapNames, LocInstanceNames, LocBossNames = nil,{},{}

local clientLocale = GetLocale()
local isNotENClient = not clientLocale:find("^en")
local wowheadPrefixTable = {
	deDE = "http://de.",
	esES = "http://es.",
	esMX = "http://es.",
	frFR = "http://fr.",
	itIT = "http://it.",
	koKR = "http://ko.",
	ptBR = "http://pt.",
	ruRU = "http://ru.",
	zhCN = "http://cn.",
	zhTW = "http://cn.",
}
local wowheadPrefix = wowheadPrefixTable[clientLocale] or "http://"

local CachedItemToVisual = {}

local function GetCursorPos(obj)
	local x_f,y_f = GetCursorPosition()
	local s = obj:GetEffectiveScale()
	x_f, y_f = x_f/s, y_f/s
	local x,y = obj:GetLeft(),obj:GetTop()
	x = x_f-x
	y = (y_f-y)*(-1)
	return x,y
end

local mainFrame = CreateFrame("Frame",nil,UIParent,"InsetFrameTemplate")
mainFrame:SetPoint("CENTER")
mainFrame:SetSize(700,600)
mainFrame:EnableMouse(true)
mainFrame:SetMovable(true)
mainFrame:SetClampedToScreen(true)
mainFrame:RegisterForDrag("LeftButton")
mainFrame:SetScript("OnDragStart", function(self) 
	if self:IsMovable() then 
		self:StartMoving() 
	end 
end)
mainFrame:SetScript("OnDragStop", function(self)
	self:StopMovingOrSizing()
end)
mainFrame:SetScript("OnDragStop", function(self)
	self:StopMovingOrSizing()
end)
mainFrame:SetFrameStrata("HIGH")
mainFrame:Hide()

mainFrame.hideButtonsList = {}

local function _CreateShadowBack(mainFrame,disableLine)
	local OverlayShadowTopLeft = mainFrame:CreateTexture(nil,"OVERLAY")
	OverlayShadowTopLeft:SetPoint("TOPLEFT",4,-4)
	OverlayShadowTopLeft:SetAtlas("collections-background-shadow-small",true)

	local OverlayShadowTop = mainFrame:CreateTexture(nil,"OVERLAY")
	OverlayShadowTop:SetPoint("TOPLEFT",17,-4)
	OverlayShadowTop:SetPoint("TOPRIGHT",-17,-4)
	OverlayShadowTop:SetAtlas("collections-background-shadow-small",true)
	OverlayShadowTop:SetTexCoord(0.9999,1,0,1)
	
	local OverlayShadowTopRight = mainFrame:CreateTexture(nil,"OVERLAY")
	OverlayShadowTopRight:SetPoint("TOPRIGHT",-4,-4)
	OverlayShadowTopRight:SetAtlas("collections-background-shadow-small",true)
	OverlayShadowTopRight:SetTexCoord(1,0,0,1)

	local OverlayShadowLeft = mainFrame:CreateTexture(nil,"OVERLAY")
	OverlayShadowLeft:SetPoint("TOPLEFT",4,-17)
	OverlayShadowLeft:SetPoint("BOTTOMLEFT",4,17)
	OverlayShadowLeft:SetAtlas("collections-background-shadow-small",true)
	OverlayShadowLeft:SetTexCoord(0,1,0.9999,1)
	
	local OverlayShadowBottomLeft = mainFrame:CreateTexture(nil,"OVERLAY")
	OverlayShadowBottomLeft:SetPoint("BOTTOMLEFT",4,4)
	OverlayShadowBottomLeft:SetAtlas("collections-background-shadow-small",true)
	OverlayShadowBottomLeft:SetTexCoord(0,1,1,0)
	
	local OverlayShadowRight = mainFrame:CreateTexture(nil,"OVERLAY")
	OverlayShadowRight:SetPoint("TOPRIGHT",-4,-17)
	OverlayShadowRight:SetPoint("BOTTOMRIGHT",-4,17)
	OverlayShadowRight:SetAtlas("collections-background-shadow-small",true)
	OverlayShadowRight:SetTexCoord(1,0,0.9999,1)
	
	local OverlayShadowBottomRight = mainFrame:CreateTexture(nil,"OVERLAY")
	OverlayShadowBottomRight:SetPoint("BOTTOMRIGHT",-4,4)
	OverlayShadowBottomRight:SetAtlas("collections-background-shadow-small",true)
	OverlayShadowBottomRight:SetTexCoord(1,0,1,0)
	
	local OverlayShadowBottom = mainFrame:CreateTexture(nil,"OVERLAY")
	OverlayShadowBottom:SetPoint("BOTTOMLEFT",17,4)
	OverlayShadowBottom:SetPoint("BOTTOMRIGHT",-17,4)
	OverlayShadowBottom:SetAtlas("collections-background-shadow-small",true)
	OverlayShadowBottom:SetTexCoord(0.9999,1,1,0)

	if not disableLine then
		local ShadowLineTop = mainFrame:CreateTexture(nil,"BORDER",nil,1)
		ShadowLineTop:SetPoint("TOPLEFT",4,-13)
		ShadowLineTop:SetPoint("BOTTOMRIGHT",mainFrame,"TOPRIGHT",-4,-17)
		ShadowLineTop:SetAtlas("_collections-background-line",true)
		ShadowLineTop:SetHorizTile(true)
	
		local ShadowLineBottom = mainFrame:CreateTexture(nil,"BORDER",nil,1)
		ShadowLineBottom:SetPoint("TOPLEFT",mainFrame,"BOTTOMLEFT",4,17)
		ShadowLineBottom:SetPoint("BOTTOMRIGHT",-4,13)
		ShadowLineBottom:SetAtlas("_collections-background-line",true)
		ShadowLineBottom:SetHorizTile(true)
	end
	
	local ShadowCornerTopLeft = mainFrame:CreateTexture(nil,"BORDER",nil,2)
	ShadowCornerTopLeft:SetPoint("TOPLEFT",4,-4)
	ShadowCornerTopLeft:SetAtlas("collections-background-shadow-large",true)
	
	local ShadowCornerTopRight = mainFrame:CreateTexture(nil,"BORDER",nil,2)
	ShadowCornerTopRight:SetPoint("TOPRIGHT",-4,-4)
	ShadowCornerTopRight:SetAtlas("collections-background-shadow-large",true)
	ShadowCornerTopRight:SetTexCoord(1,0,0,1)
	
	local ShadowCornerBottomLeft = mainFrame:CreateTexture(nil,"BORDER",nil,2)
	ShadowCornerBottomLeft:SetPoint("BOTTOMLEFT",4,4)
	ShadowCornerBottomLeft:SetAtlas("collections-background-shadow-large",true)
	ShadowCornerBottomLeft:SetTexCoord(0,1,1,0)
	
	local ShadowCornerBottomRight = mainFrame:CreateTexture(nil,"BORDER",nil,2)
	ShadowCornerBottomRight:SetPoint("BOTTOMRIGHT",-4,4)
	ShadowCornerBottomRight:SetAtlas("collections-background-shadow-large",true)
	ShadowCornerBottomRight:SetTexCoord(1,0,1,0)

	local ShadowCornerTop = mainFrame:CreateTexture(nil,"BORDER",nil,2)
	ShadowCornerTop:SetPoint("TOPLEFT",149,-4)
	ShadowCornerTop:SetPoint("TOPRIGHT",-149,-4)
	ShadowCornerTop:SetAtlas("collections-background-shadow-large",true)
	ShadowCornerTop:SetTexCoord(0.9999,1,0,1)	
	
	local ShadowCornerLeft = mainFrame:CreateTexture(nil,"BORDER",nil,2)
	ShadowCornerLeft:SetPoint("TOPLEFT",4,-151)
	ShadowCornerLeft:SetPoint("BOTTOMLEFT",4,151)
	ShadowCornerLeft:SetAtlas("collections-background-shadow-large",true)
	ShadowCornerLeft:SetTexCoord(0,1,0.9999,1)

	local ShadowCornerRight = mainFrame:CreateTexture(nil,"BORDER",nil,2)
	ShadowCornerRight:SetPoint("TOPRIGHT",-4,-151)
	ShadowCornerRight:SetPoint("BOTTOMRIGHT",-4,151)
	ShadowCornerRight:SetAtlas("collections-background-shadow-large",true)
	ShadowCornerRight:SetTexCoord(1,0,0.9999,1)

	local ShadowCornerBottom = mainFrame:CreateTexture(nil,"BORDER",nil,2)
	ShadowCornerBottom:SetPoint("BOTTOMLEFT",149,4)
	ShadowCornerBottom:SetPoint("BOTTOMRIGHT",-149,4)
	ShadowCornerBottom:SetAtlas("collections-background-shadow-large",true)
	ShadowCornerBottom:SetTexCoord(0.9999,1,1,0)
end

local closeButton = CreateFrame("Button",nil,mainFrame,"UIPanelCloseButton")
closeButton:SetPoint("TOPRIGHT",4,5)

local function UpdateLocalizatedEJ()
	if not InstanceToEJ then
		return
	end
	local EJ_GetInstanceInfo, EJ_GetEncounterInfo = EJ_GetInstanceInfo, EJ_GetEncounterInfo
	for q,w in pairs(InstanceToEJ) do
		local name = EJ_GetInstanceInfo(w)
		if name then
			LocInstanceNames[q] = name
		end
	end
	for q,w in pairs(BossToEJ) do
		local name = EJ_GetEncounterInfo(w)
		if name then
			LocBossNames[q] = name
		end
	end
end

local function UpdateLocalizatedZones()
	if LocMapNames then
		return
	end
	LocMapNames = {}
	local allZones = {}
	GetAreaMaps(allZones)
	for i=1,#allZones do
		local mapName = GetMapNameByID(allZones[i])
		LocMapNames[ allZones[i] ] = mapName
	end
end

local function ZoneToMapID(zoneID)
	for mapID,zones in pairs(QuestZoneToDataID) do
		for i=1,#zones do
			if zoneID == zones[i] then
				return mapID
			end
		end
	end
end

local function GetZoneName(zoneID,formatString)
	local zoneName = zoneID and ZonesNames[zoneID]
	if zoneName then
		if isNotENClient then
			local mapID = ZoneToMapID(zoneID)
			if mapID then
				zoneName = zoneName .. " |cffaaffaa("..(LocMapNames[mapID] or "")..")|r"
			end
		end
		if formatString then
			zoneName = format(formatString,zoneName)
		end
		return zoneName
	end
	return ""
end

local inspectScantip = CreateFrame("GameTooltip", GlobalAddonName.."ScanningTooltip", nil, "GameTooltipTemplate")
inspectScantip:SetOwner(UIParent, "ANCHOR_NONE")

local sourcesFrame = CreateFrame("Frame",GlobalAddonName.."SourcesFrame",UIParent,"UIPanelDialogTemplate")
sourcesFrame:SetSize(730,300)
sourcesFrame:SetPoint("CENTER")
sourcesFrame:SetFrameStrata("DIALOG")
sourcesFrame:SetClampedToScreen(true)
sourcesFrame:EnableMouse(true)
sourcesFrame:SetMovable(true)
sourcesFrame:RegisterForDrag("LeftButton")
sourcesFrame:SetScript("OnDragStart", function(self) 
	self:StartMoving() 
end)
sourcesFrame:SetScript("OnDragStop", function(self) 
	self:StopMovingOrSizing() 
end)
sourcesFrame.title:SetText("Sources")
sourcesFrame:SetScript("OnHide", function(self) 
	local prevModel = self.modelFrom
	self.modelFrom = nil
	if prevModel then
		prevModel:GetScript("OnLeave")(prevModel)
	end
end)
sourcesFrame:Hide()

mainFrame.sourcesFrame = sourcesFrame

sourcesFrame.TextLine = sourcesFrame:CreateFontString(nil,"ARTWORK","GameFontWhite")
sourcesFrame.TextLine:SetPoint("TOPLEFT",25,-30)
sourcesFrame.TextLine:SetSize(0,20)
sourcesFrame.TextLine:SetJustifyH("LEFT")
sourcesFrame.TextLine:SetJustifyV("MIDDLE")

sourcesFrame.moreInfo = CreateFrame("Frame",nil,sourcesFrame)
sourcesFrame.moreInfo:Hide()
sourcesFrame.moreInfo:SetPoint("TOPLEFT",sourcesFrame,"TOPRIGHT",0,-25)
sourcesFrame.moreInfo:SetSize(220,300)
sourcesFrame.moreInfo:SetBackdrop({bgFile = "Interface\\Buttons\\WHITE8X8",edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",tile = true,tileSize = 1,edgeSize = 8,insets = {left = 2,right = 2,top = 2,bottom = 2}})
sourcesFrame.moreInfo:SetBackdropColor(0, 0, 0, 0.95) 
sourcesFrame.moreInfo:SetBackdropBorderColor(0.6, 0.6, 0.6, 1) 

sourcesFrame.Recolors = CreateFrame("Button",nil,sourcesFrame,"UIPanelButtonTemplate")
sourcesFrame.Recolors:SetPoint("TOPRIGHT",-15,-30)
sourcesFrame.Recolors:SetSize(150,20)
sourcesFrame.Recolors:SetText("Find all recolors")
sourcesFrame.Recolors:SetScript("OnClick",function (self)
	local visualID = self:GetParent().modelFrom.visualID
	for i=1,#Recolors do
		local t = Recolors[i]
		for j=1,#t do
			if t[j] == visualID then
				FilterRecolors = t
				WardrobeCollectionFrame_SetActiveCategory(WardrobeCollectionFrame.activeCategory)
				return
			end
		end
	end
	print("<Legion Wardrobe>: Can't find any recolors")
end)

local function SourcesFrame_EditBox_OnEscapePressed(self)
	self:ClearFocus()
end
local function SourcesFrame_HideTooltip(self)
	GameTooltip_Hide()
end
local function SourcesFrame_ItemName_OnEnter(self)
	if not self.link then return end
	GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
	GameTooltip:SetHyperlink(self.link)
	GameTooltip:Show()
end

local function SourcesFrame_ItemName_OnEvent(self)
	if not self:IsShown() or not self.sourceLink then
		return
	end
	local name,link = GetItemInfo(self.sourceLink)
	if not link then
		return
	end
	self.link = link
	self:GetParent().itemName:SetText(link)
end

local function SourcesFrame_SourceData_OnEnter(self)
	local FirstLine = self:GetParent().sourceData:IsTruncated() and self:GetParent().sourceData:GetText()

	if not self.type then 
		if FirstLine then
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
			GameTooltip:AddLine(FirstLine)
			GameTooltip:Show()
		end
		return 
	end
		
	GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
	if self.type == 2 then
		if FirstLine then
			GameTooltip:AddLine(FirstLine)
		end
		GameTooltip:AddLine(self.sourceType)
		for i=2,#self.quests do
			local questID = self.quests[i]
			local questName
			inspectScantip:SetHyperlink("quest:"..questID)
			if inspectScantip:NumLines() > 0 then
				local tooltipLine = _G[GlobalAddonName.."ScanningTooltipTextLeft1"]
				local text = tooltipLine:GetText()
				if text and text ~= "" then
					questName = text
				end
			end
			inspectScantip:ClearLines()
			local zoneName = GetZoneName(QuestToZone[questID],"%s: ")
			if questName then
				GameTooltip:AddLine(zoneName..questName)
			else
				GameTooltip:AddLine(zoneName.."Quest: "..questID)
			end
		end
	elseif self.type == 7 or self.type == 8 then
		GameTooltip:SetHyperlink(self.link)
	elseif self.type == 3 then
		if FirstLine then
			GameTooltip:AddLine(FirstLine)
		end
		GameTooltip:AddLine("Cost")
		local data = self.data
		if data[1] == 1 then
			local amount = GetCoinTextureString(data[2])
			GameTooltip:AddLine(amount)
		elseif data[1] == 2 then
			for i=2,#data,2 do
				local name, _, texturePath = GetCurrencyInfo(data[i])
				--GameTooltip:AddLine(name..": "..data[i+1])
				--GameTooltip:AddTexture(texturePath)
				GameTooltip:AddLine((texturePath and "|T"..texturePath..":0|t " or "")..name..": "..data[i+1])
			end
		elseif data[1] == 3 then
			for i=2,#data,2 do
				local _, link, _, _, _, _, _, _, _, texturePath = GetItemInfo(data[i])
				if link then
					--GameTooltip:AddLine(link..": "..data[i+1])
					--GameTooltip:AddTexture(texturePath)
					GameTooltip:AddLine((texturePath and "|T"..texturePath..":0|t " or "")..link..": "..data[i+1])
				end
			end
		end
	elseif self.type == 6 then
		GameTooltip:SetHyperlink(self.link)
		local firstLine = GameTooltipTextLeft1:GetText()
		if firstLine ~= "" then
			GameTooltipTextLeft1:SetText( "|cffffffff"..(self.type2 and "Contained in" or "Created by").."|r|n"..firstLine )
		end
	else
		if FirstLine then
			GameTooltip:AddLine(FirstLine)
		end
		GameTooltip:AddLine(self.sourceType)
		GameTooltip:AddLine(self.instanceType == 2 and "Raid" or "Instance")
		
		GameTooltip:AddLine("Zone: |cffffffff"..(LocInstanceNames[self.instanceID] or InstanceList[self.instanceID]).."|r")
		GameTooltip:AddLine("Boss: |cffffffff"..(LocBossNames[self.bossID] or BossList[self.bossID]).."|r")
		if #self.diffList > 1 then
			GameTooltip:AddLine("Difficulties:")
			for i=1,#self.diffList do
				GameTooltip:AddLine("- |cffffffff"..DiffList[tonumber(self.diffList[i])].."|r")
			end
		elseif self.diffList[1] == "" then
			--nothing
		else
			GameTooltip:AddLine("Difficulty: |cffffffff"..DiffList[tonumber(self.diffList[1])].."|r")
		end
	end
	GameTooltip:Show()
end

local function SourcesFrame_SourceName_OnEnter(self)
	if not self.type then 
		return 
	elseif self.type == 1 then
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		GameTooltip:AddLine("You have this item in you bags, but quest that reward it isn't marked as completed. Do not delete this item.",nil,nil,nil,true)
		GameTooltip:Show()
	end
end

local InputFrame = nil
local function ShowInputFrame(title,inputText)
	if not InputFrame then
		InputFrame = CreateFrame("Frame",GlobalAddonName.."ShowInputFrame",UIParent,"UIPanelDialogTemplate")
		InputFrame:SetSize(500,100)
		InputFrame:SetPoint("CENTER")
		InputFrame:SetFrameStrata("FULLSCREEN")
		InputFrame:SetClampedToScreen(true)
		InputFrame:EnableMouse(true)
		InputFrame:SetMovable(true)
		InputFrame:RegisterForDrag("LeftButton")
		InputFrame:SetScript("OnDragStart", function(self) 
			self:StartMoving() 
		end)
		InputFrame:SetScript("OnDragStop", function(self) 
			self:StopMovingOrSizing() 
		end)
		InputFrame:SetScript("OnShow",function (self)
			self.EditBox:HighlightText()
			self.EditBox:SetFocus()
		end)
		InputFrame:Hide()
	
		InputFrame.EditBox = CreateFrame("EditBox",GlobalAddonName.."ShowInputFrameEditBox",InputFrame,"InputBoxTemplate")
		InputFrame.EditBox:SetSize(470,20)
		InputFrame.EditBox:SetPoint("TOP",5,-35)
		InputFrame.EditBox:SetCursorPosition(0)
		InputFrame.EditBox:SetAutoFocus( false )
		InputFrame.EditBox:SetScript("OnEscapePressed",function(self) 
			self:ClearFocus() 
			self:GetParent().OK:Click("LeftButton")
		end)
		InputFrame.EditBox:SetScript("OnEnterPressed",function (self)
			self:GetParent().OK:Click("LeftButton")
		end)
		
		InputFrame.OK = CreateFrame("Button",nil,InputFrame,"UIPanelButtonTemplate")
		InputFrame.OK:SetPoint("TOP",0,-60)
		InputFrame.OK:SetSize(130,22)
		InputFrame.OK:SetText(CLOSE)
		InputFrame.OK:SetScript("OnClick",function (self)
			InputFrame:Hide()
			local input = InputFrame.EditBox:GetText()
		end)
	end
	if InputFrame:IsShown() then
		InputFrame:Hide()
	end
	InputFrame.title:SetText(title or "")
	InputFrame.EditBox:SetText(inputText or "")
	InputFrame:Show()
end


local function SourcesFrame_ItemLink_OnClick(self)
	ShowInputFrame("url",self.link)
end
local function SourcesFrame_MoreInfo_Text_OnEnter(self)
	local FirstLine = self:GetParent().text:IsTruncated() and self:GetParent().text:GetText()

	if not self.type then 
		if FirstLine then
			GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
			GameTooltip:AddLine(FirstLine)
			GameTooltip:Show()
		end
		return 
	end

	GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
	if self.type == 2 then
		GameTooltip:SetHyperlink(self.data)
	elseif self.type == 4 then
		local questID = self.data
		GameTooltip:SetHyperlink("quest:"..questID)
		local zoneName = GetZoneName(QuestToZone[questID])
		if zoneName ~= "" then
			GameTooltip:AddLine("Zone: "..zoneName)
		end
	elseif self.type == 3 then
		local data = self.data[1]
		local npcZone = self.data[2]
		if npcZone then
			local color = nil
			if self.data[3] then
				color = self.data[3] == 1 and "|cffd00000" or "|cff0080ff"
			end
			GameTooltip:AddLine("Zone: "..(color or "")..GetZoneName(npcZone)..(color and "|r" or ""))
		end
		GameTooltip:AddLine("Cost")
		if data[1] == 1 then
			local amount = GetCoinTextureString(data[2])
			GameTooltip:AddLine(amount)
		elseif data[1] == 2 then
			for i=2,#data,2 do
				local name, _, texturePath = GetCurrencyInfo(data[i])
				--GameTooltip:AddLine(name..": "..data[i+1])
				--GameTooltip:AddTexture(texturePath)
				GameTooltip:AddLine((texturePath and "|T"..texturePath..":0|t " or "")..name..": "..data[i+1])
				
			end
		elseif data[1] == 3 then
			for i=2,#data,2 do
				local _, link, _, _, _, _, _, _, _, texturePath = GetItemInfo(data[i])
				if link then
					--GameTooltip:AddLine(link..": "..data[i+1])
					--GameTooltip:AddTexture(texturePath)
					GameTooltip:AddLine((texturePath and "|T"..texturePath..":0|t " or "")..link..": "..data[i+1])
				end
			end
		end
	elseif self.type == 5 then
		GameTooltip:AddLine(self.data)
	elseif self.type == 6 then
		GameTooltip:SetHyperlink(self.data[1])
		local firstLine = GameTooltipTextLeft1:GetText()
		if firstLine ~= "" then
			GameTooltipTextLeft1:SetText( "|cffffffff"..(self.data[2] and "Contained in" or "Created by").."|r|n"..firstLine )
		end
	else
		local data = self.data
		GameTooltip:AddLine(data[1] == 2 and "Raid" or "Instance")
		
		GameTooltip:AddLine("Zone: |cffffffff"..(LocInstanceNames[ data[2] ] or InstanceList[ data[2] ]).."|r")
		GameTooltip:AddLine("Boss: |cffffffff"..(LocBossNames[ data[3] ] or BossList[ data[3] ]).."|r")
		if #data[4] > 1 then
			GameTooltip:AddLine("Difficulties:")
			for i=1,#data[4] do
				GameTooltip:AddLine("- |cffffffff"..DiffList[tonumber(data[4][i])].."|r")
			end
		elseif data[4][1] == "" then
			--nothing
		else
			GameTooltip:AddLine("Difficulty: |cffffffff"..DiffList[tonumber(data[4][1])].."|r")
		end
	end
	GameTooltip:Show()
end

local function SourcesFrame_ItemName_OnClick(self)
	local link = self.link
	if not link then
		return
	elseif IsModifiedClick("CHATLINK") then
		if ChatEdit_GetActiveWindow() or ( BrowseName and BrowseName:IsVisible() ) or ( TradeSkillFrame and TradeSkillFrame.SearchBox:HasFocus() ) then
			ChatEdit_InsertLink(link)
		else
			ChatFrame_OpenChat(link)
		end
	elseif IsModifiedClick("DRESSUP") then
		DressUpItemLink(link)
	end
end

local SourceFrame_MoreInfo_CreateLine

local function ScheduledItemNameUpdate(self)
	local _, link, _, _, _, _, _, _, _, texture = GetItemInfo(self.itemID)
	if link then
		self.frame:SetText("|T"..texture..":20|t "..link)
	end
end

local function SourcesFrame_MoreInfo_OnClick(self)
	if self.type == 2 then
		--quests
		for i=2,#self.data do
			local questID = self.data[i]
			local questName
			inspectScantip:SetHyperlink("quest:"..questID)
			if inspectScantip:NumLines() > 0 then
				local tooltipLine = _G["LegionWardrobeScanningTooltipTextLeft1"]
				local text = tooltipLine:GetText()
				if text and text ~= "" then
					questName = text
				end
			end
			inspectScantip:ClearLines()
			
			local line = SourceFrame_MoreInfo_CreateLine(i-1)
			if questName then
				line.text:SetText((CharQuestsData[questID] and "|cff00ff00" or "") .. questName)
			else
				line.text:SetText((CharQuestsData[questID] and "|cff00ff00" or "") .."Quest: "..questID)
			end
			line.textFrame.type = 4
			line.textFrame.data = questID
			line.link.link = wowheadPrefix.."wowhead.com/quest="..questID
			line:Show()
		end
	elseif self.type == 3 then
		-- vendors
		for i=2,#self.data do
			local npcID = self.data[i]
			local line = SourceFrame_MoreInfo_CreateLine(i-1)
			line.text:SetText(VendorNames[npcID])
			line.link.link = wowheadPrefix.."wowhead.com/npc="..npcID
			line.textFrame.type = nil
			if self.itemID  then
				local costTable = ItemCost[ self.itemID ]
				if costTable then
					costTable = costTable[npcID] or costTable
					line.textFrame.type = 3
					line.textFrame.data = {costTable,NPCToZone[npcID],NPCReact[npcID]}
					if costTable[1] == 3 then
						for j=2,#costTable,2 do
							GetItemInfo(costTable[j])
						end
					end
				end
			else
				local npcZone = NPCToZone[npcID]
				if npcZone then
					line.textFrame.type = 5
					local color = nil
					if NPCReact[ npcID ] then
						color = NPCReact[ npcID ] == 1 and "|cffd00000" or "|cff0080ff"
					end
					line.textFrame.data = "Zone: "..(color or "")..GetZoneName( npcZone )
				end
			end
			line:Show()
		end
	elseif self.type == 1 then
		-- boss drop
		for i=2,#self.data do
			local instanceType,instanceID,bossID,diffList = self.data[i]:match("^(%d+)#(%d+)#(%d+)#(.*)")
			bossID = tonumber(bossID)
			
			local line = SourceFrame_MoreInfo_CreateLine(i-1)
			line.text:SetText(LocBossNames[bossID] or BossList[bossID])
			
			line.textFrame.type = 1
			line.textFrame.data = {
				tonumber(instanceType),
				tonumber(instanceID),
				bossID,
				{strsplit(":", diffList)},
			}
			line.link.link = "http://wowhead.com/search?q="..BossList[bossID]
			if IsDebugVersion then
				local item = self:GetParent().DATA[3]
				local s = type(item)=='string' and '"' or ''
				line.link.link = "["..s..item..s.."] = "..'"'..self.data[i]..'",'
			end
			line:Show()
		end
	elseif self.type == 8 then
		-- profession
		for i=2,#self.data do
			local spellID = self.data[i]
			local line = SourceFrame_MoreInfo_CreateLine(i-1)
			local spellName = GetSpellInfo(spellID)
			line.text:SetText(spellName)
			line.link.link = wowheadPrefix.."wowhead.com/spell="..spellID
			line.textFrame.type = 2
			line.textFrame.data = "spell:"..spellID
			line:Show()
		end
	elseif self.type == 7 then
		-- achievement
		for i=2,#self.data do
			local a4ivID = self.data[i]
			local line = SourceFrame_MoreInfo_CreateLine(i-1)
			local _,a4ivName = GetAchievementInfo(a4ivID)
			line.text:SetText(a4ivName)
			line.link.link = wowheadPrefix.."wowhead.com/achievement="..a4ivID
			line.textFrame.type = 2
			line.textFrame.data = GetAchievementLink(a4ivID)
			line:Show()
		end
	elseif self.type == 4 then
		-- world drop
		for i=2,#self.data do
			local zoneID = self.data[i]
			local line = SourceFrame_MoreInfo_CreateLine(i-1)
			line.text:SetText(GetZoneName( zoneID ))
			line.link.link = wowheadPrefix.."wowhead.com/zone="..zoneID
			line.textFrame.type = nil
			line:Show()
		end
	elseif self.type == 6 then
		-- created
		for i=2,#self.data do
			local itemID = self.data[i]
			local line = SourceFrame_MoreInfo_CreateLine(i-1)
			local isContain = false
			if itemID < 0 then
				itemID = -itemID
				isContain = true
			end
			GetItemInfo(itemID)
			line.text:SetText("")
			local s = C_Timer.NewTimer(0.2,ScheduledItemNameUpdate)
			s.itemID = itemID
			s.frame = line.text	
			line.link.link = wowheadPrefix.."wowhead.com/item="..itemID
			line.textFrame.data = {"item:"..itemID, isContain}
			line.textFrame.type = 6
			line:Show()
		end
	end
	for i=#self.data,#sourcesFrame.moreInfo.lines do
		sourcesFrame.moreInfo.lines[i]:Hide()
	end
	sourcesFrame.moreInfo:SetHeight(20+(#self.data-1)*25)

	sourcesFrame.moreInfo:Show()
end


sourcesFrame.lines = {}
local function SourceFrame_CreateLine(i)
	if sourcesFrame.lines[i] then
		return sourcesFrame.lines[i]
	end
	local line = CreateFrame("Frame",nil,sourcesFrame)
	sourcesFrame.lines[i] = line
	line:SetPoint("TOPLEFT",10,-30-(i-1)*25-25)
	line:SetSize(1,20)
	
	line.itemName = line:CreateFontString(nil,"ARTWORK","GameFontWhite")
	line.itemName:SetPoint("LEFT",0,0)
	line.itemName:SetSize(180,20)
	line.itemName:SetJustifyH("LEFT")
	line.itemName:SetJustifyV("MIDDLE")
	
	line.itemNameFrame = CreateFrame("Button",nil,line)
	line.itemNameFrame:SetAllPoints(line.itemName)
	line.itemNameFrame:SetScript("OnEnter",SourcesFrame_ItemName_OnEnter)
	line.itemNameFrame:SetScript("OnLeave",SourcesFrame_HideTooltip)
	line.itemNameFrame:SetScript("OnClick",SourcesFrame_ItemName_OnClick)
	line.itemNameFrame:SetScript("OnEvent",SourcesFrame_ItemName_OnEvent)
	line.itemNameFrame:RegisterEvent("GET_ITEM_INFO_RECEIVED")	
	
	line.itemLink = CreateFrame("Button",nil,line,"UIPanelButtonTemplate")
	line.itemLink:SetPoint("LEFT",line.itemName,"RIGHT",5,0)
	line.itemLink:SetSize(50,20)
	line.itemLink:SetText("link")
	line.itemLink:SetScript("OnClick",SourcesFrame_ItemLink_OnClick)

	line.sourceName = line:CreateFontString(nil,"ARTWORK","GameFontWhite")
	line.sourceName:SetPoint("LEFT",line.itemLink,"RIGHT",5,0)
	line.sourceName:SetSize(95,20)
	line.sourceName:SetJustifyH("LEFT")
	line.sourceName:SetJustifyV("MIDDLE")
	
	line.sourceNameTooltip = CreateFrame("Frame",nil,line)
	line.sourceNameTooltip:SetAllPoints(line.sourceName)
	line.sourceNameTooltip:SetScript("OnEnter",SourcesFrame_SourceName_OnEnter)
	line.sourceNameTooltip:SetScript("OnLeave",SourcesFrame_HideTooltip)	
	
	line.sourceDataAndMore = line:CreateFontString(nil,"ARTWORK","GameFontWhite")
	line.sourceDataAndMore:SetPoint("RIGHT",line.sourceName,"RIGHT",285,0)
	line.sourceDataAndMore:SetSize(0,20)
	line.sourceDataAndMore:SetJustifyH("RIGHT")
	line.sourceDataAndMore:SetJustifyV("MIDDLE")
	line.sourceDataAndMore:SetFont(line.sourceDataAndMore:GetFont(),10)
	
	line.sourceData = line:CreateFontString(nil,"ARTWORK","GameFontWhite")
	line.sourceData:SetPoint("LEFT",line.sourceName,"RIGHT",5,0)
	line.sourceData:SetPoint("RIGHT",line.sourceDataAndMore,"LEFT",-3,0)
	line.sourceData:SetSize(0,20)
	line.sourceData:SetJustifyH("LEFT")
	line.sourceData:SetJustifyV("MIDDLE")
	
	line.sourceDataFrame = CreateFrame("Frame",nil,line)
	line.sourceDataFrame:SetAllPoints(line.sourceData)
	line.sourceDataFrame:SetScript("OnEnter",SourcesFrame_SourceData_OnEnter)
	line.sourceDataFrame:SetScript("OnLeave",SourcesFrame_HideTooltip)
	
	line.moreInfo = CreateFrame("Button",nil,line,"UIPanelButtonTemplate")
	line.moreInfo:SetPoint("LEFT",line.sourceDataAndMore,"RIGHT",5,0)
	line.moreInfo:SetSize(80,20)
	line.moreInfo:SetText("more info")
	line.moreInfo:SetScript("OnClick",SourcesFrame_MoreInfo_OnClick)
	
	return line
end
sourcesFrame.moreInfo.lines = {}
function SourceFrame_MoreInfo_CreateLine(i)
	if sourcesFrame.moreInfo.lines[i] then
		return sourcesFrame.moreInfo.lines[i]
	end
	local line = CreateFrame("Frame",nil,sourcesFrame.moreInfo)
	sourcesFrame.moreInfo.lines[i] = line
	line:SetPoint("TOPLEFT",10,-10-(i-1)*25)
	line:SetSize(1,20)
	
	line.text = line:CreateFontString(nil,"ARTWORK","GameFontWhite")
	line.text:SetPoint("LEFT",0,0)
	line.text:SetSize(150,20)
	line.text:SetJustifyH("LEFT")
	line.text:SetJustifyV("MIDDLE")
	
	line.textFrame = CreateFrame("Frame",nil,line)
	line.textFrame:SetAllPoints(line.text)
	line.textFrame:SetScript("OnEnter",SourcesFrame_MoreInfo_Text_OnEnter)
	line.textFrame:SetScript("OnLeave",SourcesFrame_HideTooltip)
	
	line.link = CreateFrame("Button",nil,line,"UIPanelButtonTemplate")
	line.link:SetPoint("LEFT",line.text,"RIGHT",5,0)
	line.link:SetSize(50,20)
	line.link:SetText("link")
	line.link:SetScript("OnClick",SourcesFrame_ItemLink_OnClick)
	
	return line
end

local function ScheduledQuestNameUpdate(s,link,frame)
	if s then
		link = s.link
		frame = s.frame
	end
	inspectScantip:SetHyperlink(link)
	if inspectScantip:NumLines() > 0 then
		local tooltipLine = _G["LegionWardrobeScanningTooltipTextLeft1"]
		local text = tooltipLine:GetText()
		if text and text ~= "" then
			frame:SetText(text)
			inspectScantip:ClearLines()
			return true
		end
	end
	inspectScantip:ClearLines()
	return false
end

local function Model_OnClick(self,button)
	local c = #self.data
	sourcesFrame:SetHeight(40+c*25+25)
	sourcesFrame.TextLine:SetText((self.isCollected and "|cff00ff00Collected|r" or "|cffff0000Not collected|r")..(IsDebugVersion and " VisualID: "..self.visualID or ""))
	for i=1,c do
		local line = SourceFrame_CreateLine(i)
		
		local source = self.data[i]
		line.DATA = source
		
		local name,link = GetItemInfo(source[2])
		line.itemName:SetText(link)
		line.itemLink.link = wowheadPrefix.."wowhead.com/item="..source[1]..(source[6] and "&bonus="..source[6] or "")
		line.sourceName:SetText(SourceTypeNames[ source[4] ] or "")
		if source[7] then
			line.sourceName:SetTextColor(0,1,0,1)
		else
			line.sourceName:SetTextColor(1,1,1,1)
		end
		line.sourceNameTooltip.type = nil
		line.itemNameFrame.link = link
		line.itemNameFrame.sourceLink = source[2]
		line.moreInfo:Show()
		line.moreInfo.itemID = source[1]
		line.sourceDataAndMore:SetText("")
		
		if source[4] == 3 and #source[5] > 1 then
			line.moreInfo.data = source[5]
			line.moreInfo.itemID = source[1]
			line.moreInfo.type = 3
			
			local npcID = source[5][2]
			local npcZone = nil
			if NPCToZone[npcID] then
				local color = nil
				if NPCReact[ npcID ] then
					color = NPCReact[ npcID ] == 1 and "|cffd00000" or "|cff0080ff"
				end
				npcZone = " [Zone: "..(color or "")..GetZoneName( NPCToZone[npcID] )..(color and "|r" or "").."]"
			end
			line.sourceData:SetText(VendorNames[npcID]..(npcZone or ""))
			if #source[5] > 2 then
				line.sourceDataAndMore:SetText("and "..(#source[5] - 2).." more")
			end
			line.sourceDataFrame.type = nil
			local costTable = ItemCost[ source[1] ]
			if costTable then
				costTable = costTable[npcID] or costTable
				line.sourceDataFrame.type = 3
				line.sourceDataFrame.data = costTable
				if costTable[1] == 3 then
					for j=2,#costTable,2 do
						GetItemInfo(costTable[j])
					end
				end
			end
		elseif source[4] == 8 and #source[5] > 1 then
			line.moreInfo.data = source[5]
			line.moreInfo.type = 8
			
			local SpellName = GetSpellInfo(source[5][2])
			line.sourceData:SetText(SpellName)
			line.sourceDataFrame.type = 8
			line.sourceDataFrame.link = "spell:"..source[5][2]
			if #source[5] > 2 then
				line.sourceDataAndMore:SetText("and "..(#source[5] - 2).." more")
			end
		elseif source[4] == 7 and #source[5] > 1 then
			line.moreInfo.data = source[5]
			line.moreInfo.type = 7
			
			local _,a4ivName = GetAchievementInfo(source[5][2])
			line.sourceData:SetText(a4ivName or "")
			line.sourceDataFrame.type = 7
			line.sourceDataFrame.link = GetAchievementLink(source[5][2])
		elseif source[4] == 2 and #source[5] > 1 then
			line.sourceDataFrame.quests = source[5]
			local setted = false
			for j=2,#source[5] do
				if not setted then
					setted = ScheduledQuestNameUpdate(nil,"quest:"..source[5][j],line.sourceData)
				else
					break
				end
			end
			if not setted then
				line.sourceData:SetText("")
				if IsDebugVersion then
					line.sourceData:SetText("quest:"..source[5][2])
				end
				local s = C_Timer.NewTimer(0.5,ScheduledQuestNameUpdate)
				s.link = "quest:"..source[5][2]
				s.frame = line.sourceData
			end
			line.sourceDataFrame.sourceType = SourceTypeNames[ source[4] ]
			line.sourceDataFrame.type = 2
			
			line.moreInfo.data = source[5]
			line.moreInfo.type = 2
			if #source[5] > 2 then
				line.sourceDataAndMore:SetText("and "..(#source[5] - 2).." more")
			end
			
			if source[7] == 1 then
				line.sourceName:SetTextColor(1,1,0,1)
				line.sourceName:SetText(SourceTypeNames[2].."***")
				line.sourceNameTooltip.type = 1
			end
		elseif source[4] == 1 and #source[5] > 1 then
			local instanceType,instanceID,bossID,diffList = source[5][2]:match("^(%d+)#(%d+)#(%d+)#(.*)")
			instanceType = tonumber(instanceType)
			instanceID = tonumber(instanceID)
			bossID = tonumber(bossID)
			
			line.sourceData:SetText((LocInstanceNames[instanceID] or InstanceList[instanceID])..": "..(LocBossNames[bossID] or BossList[bossID]))
			if #source[5] > 2 then
				line.sourceDataAndMore:SetText("and "..(#source[5] - 2).." more")
			end
			
			line.sourceDataFrame.instanceType = instanceType
			line.sourceDataFrame.instanceID = instanceID
			line.sourceDataFrame.bossID = bossID
			line.sourceDataFrame.sourceType = SourceTypeNames[ source[4] ]
			line.sourceDataFrame.diffList = {strsplit(":", diffList)}
			line.sourceDataFrame.type = 1
			
			line.moreInfo.data = source[5]
			line.moreInfo.type = 1
		elseif source[4] == 4 and #source[5] > 1 then
			line.moreInfo.data = source[5]
			line.moreInfo.type = 4
			
			line.sourceData:SetText("Zone: "..GetZoneName( source[5][2] ))
			line.sourceDataFrame.type = nil
			if #source[5] > 2 then
				line.sourceDataAndMore:SetText("and "..(#source[5] - 2).." more")
			end
		elseif source[4] == 6 and #source[5] > 1 then
			local itemID = source[5][2]
			if itemID < 0 then 
				itemID = -itemID 
				line.sourceDataFrame.type2 = true
			else
				line.sourceDataFrame.type2 = nil
			end
			GetItemInfo(itemID)
			line.sourceData:SetText("")
			local s = C_Timer.NewTimer(0.2,ScheduledItemNameUpdate)
			s.itemID = itemID
			s.frame = line.sourceData
			
			line.sourceDataFrame.type = 6
			line.sourceDataFrame.link = "item:"..itemID
			
			line.moreInfo.data = source[5]
			line.moreInfo.type = 6
			if #source[5] > 2 then
				line.sourceDataAndMore:SetText("and "..(#source[5] - 2).." more")
			end
		else
			line.sourceData:SetText("")
			line.sourceDataFrame.type = nil
			line.moreInfo:Hide()
		end
		line:Show()
	end
	for i=c+1,#sourcesFrame.lines do
		sourcesFrame.lines[i]:Hide()
	end
	sourcesFrame.Recolors:SetShown(HaveRecolors[self.visualID])
	sourcesFrame.moreInfo:Hide()
	sourcesFrame:Show()
	
	self.border:SetBackdropBorderColor(0, 1, 0, 1)
	local prevModel = sourcesFrame.modelFrom
	if prevModel then
		sourcesFrame.modelFrom = nil
		prevModel:GetScript("OnLeave")(prevModel)
	end
	sourcesFrame.modelFrom = self
end

local function Model_OnModelLoaded(self)

end

local function Model_OnShow(self)
	self:SetUnit("player")
	self:Undress()
	if self.Equipped then
		self:TryOn(self.Equipped)
	end

end

local function Model_OnEnter(self)
	if not self.data then return end
	self.border:SetBackdropBorderColor(1, 1, 1, 1)
	if mainFrame.bigModel:IsShown() and self.Equipped then
		mainFrame.bigModel:Undress()
		mainFrame.bigModel:TryOn(self.Equipped)
	end
	GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
	GameTooltip:AddLine(self.isCollected == 2 and "|cffffff00Collected|r" or self.isCollected and "|cff00ff00Collected|r" or "|cffff0000Not collected|r")
	for i=1,#self.data do
		local data = self.data[i]
		local name,link = GetItemInfo(data[2])
		GameTooltip:AddDoubleLine(link or " ",(data[7] and "|cff00ff00" or "").. (SourceTypeNames[ data[4] ] or "").."|r")
	end
	GameTooltip:Show()
end

local function Model_OnLeave(self)
	if sourcesFrame.modelFrom == self then
		self.border:SetBackdropBorderColor(0, 1, 0, 1)
	elseif self.isCollected then
		self.border:SetBackdropBorderColor(1, 1, 0.5, 1)
	else
		self.border:SetBackdropBorderColor(0.6, 0.6, 0.6, .8)
	end
	GameTooltip:Hide()
end

local function Model_Collected_SetView(self,isYellow)
	if isYellow then
		self:SetTexture([[Interface\AddOns\LegionWardrobe\Transmogrify]])
		self:SetTexCoord(222/512,250/512,127/512,153/512)
		self:SetSize(28,28)
		self:SetPoint("CENTER",self:GetParent(),"TOPLEFT",12,-11)
	else
		--self:SetTexture([[Interface\Garrison\GarrisonMissionUI2]])
		--self:SetTexCoord(528/1024,602/1024,920/1024,996/1024)
		self:SetTexture("Interface\\RaidFrame\\ReadyCheck-Ready")
		self:SetTexCoord(0,1,0,1)
		self:SetSize(30,30)
		self:SetPoint("CENTER",self:GetParent(),"TOPLEFT",10,-5)
	end
end

local function Model_OnEvent(self,event)
	if event == "GET_ITEM_INFO_RECEIVED" then
		if not self:IsShown() or not self.Equipped then
			return
		end
		self:TryOn(self.Equipped)	--For items with bonuses
	else
		self:RefreshCamera()
	end
end

local models = {}
mainFrame.models = models
do
	local borderFrame = CreateFrame("Frame",nil,mainFrame)

	local model = CreateFrame("DressUpModel",nil,mainFrame)
	models[1] = model
	model:SetPoint("TOPLEFT",50+100*0,-100-140*0)
	model:SetSize(90,130)
	
	model:SetScript("OnModelLoaded",Model_OnModelLoaded)
	model:SetScript("OnShow",Model_OnShow)
	model:SetScript("OnEnter",Model_OnEnter)
	model:SetScript("OnLeave",Model_OnLeave)
	model:SetScript("OnMouseUp",Model_OnClick)

	model:RegisterEvent("UI_SCALE_CHANGED")
	model:RegisterEvent("DISPLAY_SIZE_CHANGED")
	--model:RegisterEvent("GET_ITEM_INFO_RECEIVED")
	model:SetScript("OnEvent",Model_OnEvent)
	
	model.collected = model:CreateTexture(nil,"OVERLAY")
	model.collected:SetPoint("CENTER",model,"TOPLEFT",10,-5)
	model.collected:SetSize(30,30)
	
	model.favIcon = model:CreateTexture(nil,"OVERLAY")
	model.favIcon:SetPoint("CENTER",model,"TOPRIGHT",-5,-3)
	model.favIcon:SetSize(30,30)	
	model.favIcon:SetTexture([[Interface\COMMON\FavoritesIcon]])
	model.favIcon:SetTexCoord(1/32,26/32,1/32,26/32)	
	
	model.collected.SetView = Model_Collected_SetView
	
	borderFrame:SetPoint("TOPLEFT",model,-4,4)
	borderFrame:SetPoint("BOTTOMRIGHT",model,4,-4)
	
	borderFrame:SetBackdrop({bgFile = "Interface\\Buttons\\WHITE8X8",edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",tile = true,tileSize = 1,edgeSize = 8,insets = {left = 2,right = 2,top = 2,bottom = 2}})
	borderFrame:SetBackdropColor(0.08, 0.08, 0.08, 1) 
	borderFrame:SetBackdropBorderColor(0.6, 0.6, 0.6, 1)
	
	model.border = borderFrame
end

local function FindVisualAndOpen(visualID,isCollected)
	local canObtained = false
	for cat,categoryData in pairs(AllData) do
		for i=1,#categoryData do
			if categoryData[i] == visualID then
				canObtained = true
				break
			end
		end
		if canObtained then
			GetQuestsCompleted(CharQuestsData)	--Update Quests Data
			break
		end
	end
	local model = models[1]
	UpdateModel(model, visualID, isCollected)
	Model_OnClick(model,"LeftButton")
end

function UpdateModel(model,visualID,isCollected)
	model:Show()
	model.border:Show()
	model:Undress()
	
	model.data = {}
	model.visualID = visualID
	local visualData = Visuals[ visualID ]

	if visualData then
		for k=1,#visualData do
			local item = visualData[k]
			local itemID = type(item) == 'number' and item or tonumber(item:match("^(%d+)"))
			local itemLink = "item:"..itemID
			
			local sourceData = ItemSource[item]
			local sourceType = sourceData[1]
			
			if type(item) == 'string' then
				local count = 0
				for j=1,#item do
					if item:sub(j,j) == ":" then
						count = count + 1
					end
				end
				itemLink = itemLink .. ":0:0:0:0:0:0:0:"..UnitLevel'player'..":0:0:0:"..count..":"..item:gsub("^%d+:","")
			end
			
			GetItemInfo(itemLink)	--Cache it
			
			local currItemCollected = false
			model.data[k] = {
				itemID,
				itemLink,
				item,
				sourceType,
				sourceData,
				type(item) == 'string' and item:gsub("^%d+:",""),
				currItemCollected,
			}
			
			if k == 1 then
				model:TryOn(itemLink)
				model.Equipped = itemLink
			end
		end
	else
		--print('Visual',visualID,'not found')
		local sources = C_TransmogCollection.GetAppearanceSources(visualID)
		if sources then
			for i=1,#sources do
				local _,_,_,_,_,itemLink = C_TransmogCollection.GetAppearanceSourceInfo(sources[i].sourceID)
				if itemLink then
					local itemID = itemLink:match("item:(%d+)")
					model.data[i] = {
						itemID,
						itemLink,
						itemLink,
						sources[i].sourceType,
						{sources[i].sourceType},
					}
				end
			end
		end
	end
	if isCollected then
		model.collected:Show()
		model.collected:SetView(isCollected == 2)
		model.border:SetBackdropBorderColor(1, 1, 0.5, 1)
	else
		model.collected:Hide()
		model.border:SetBackdropBorderColor(0.6, 0.6, 0.6, .8)
	end
	model.isCollected = isCollected
end


local function CheckFilterInstance(sourceData,type)
	if type == 1 then
		if C_TransmogCollection.IsSourceTypeFilterChecked(1) then
			return false
		end
		for i=2,#sourceData do
			--2#17#192#3
			local instanceType,instanceDataID,bossDataID,diffDataIDs = sourceData[i]:match("^(%d+)#(%d+)#(%d+)#(.*)")
			local diffFilter = false
			if FilterInstanceDifficulty and diffDataIDs and diffDataIDs ~= "" then
				diffDataIDs = {strsplit(":", diffDataIDs)}
				for j=1,#diffDataIDs do
					if FilterInstanceDifficulty == diffDataIDs[j] then
						diffFilter = true
						break
					end
				end
			else
				diffFilter = true
			end
			if instanceDataID == FilterInstance and diffFilter then
				return true
			end
		end
	elseif type == 2 or type == 3 then
		if C_TransmogCollection.IsSourceTypeFilterChecked(type) then
			return false
		end
		local zonesTable = (type == 2 and QuestToZone) or (type == 3 and NPCToZone)
		for i=2,#sourceData do
			local zoneID = zonesTable[ sourceData[i] ]
			if zoneID then
				for j=1,#FilterInstance do
					if FilterInstance[j] == zoneID then
						return true
					end
				end
			end
		end
	elseif type == 4 then
		if C_TransmogCollection.IsSourceTypeFilterChecked(4) then
			return false
		end
		for i=2,#sourceData do
			for j=1,#FilterInstance do
				if FilterInstance[j] == sourceData[i] then
					return true
				end
			end
		end
	end
	return false
end


function FindBonuses(link)
	if link then 
		local bonusesNum,bonusesString = link:match("item:%d+:[0-9%-]*:[0-9%-]*:[0-9%-]*:[0-9%-]*:[0-9%-]*:[0-9%-]*:[0-9%-]*:[0-9%-]*:[0-9%-]*:[0-9%-]*:[0-9%-]*:([0-9%-]*):([0-9:]*)")
		if bonusesNum and bonusesString and tonumber(bonusesNum) then
			local res = {}
			for i=1,tonumber(bonusesNum) do
				local bonus = bonusesString:match("^[0-9%-]+")
				if bonus then
					bonus = tonumber(bonus)
					if majorBonuses[bonus] then
						return bonus
					end
				end
				if bonusesString:find(":") then
					bonusesString = bonusesString:gsub("^[^:]*:","")
				end
			end
		end
	end
	return 0
end


mainFrame:SetScript("OnShow",function(self)
	self:Hide()
end)

local LoadData
local AddSetsButton

local UpdateAllCategories, AddBannedAppID
do
	local isFirstLoad = true
	local currDB = {}
	local currDBReview = {}
	local bannedAppID = {}
	function AddBannedAppID(appID)
		bannedAppID[appID] = true
	end
	local function DisplayAddedMessage(appID)
		if bannedAppID[appID] then
			return
		end
		local appSources = C_TransmogCollection.GetAppearanceSources(appID)
		if appSources then
			local sourceID = appSources[1].sourceID
			C_TransmogCollection.GetAppearanceSourceInfo(sourceID)
			C_Timer.After(.3,function()
				if bannedAppID[appID] then
					return
				end
				local link = select(7,C_TransmogCollection.GetAppearanceSourceInfo(sourceID))
				if link and link ~= "" then
					print(format(ERR_LEARN_TRANSMOG_S,link))
				else
					print(format(ERR_LEARN_TRANSMOG_S,"|cffff80ff|Htransmogappearance:"..sourceID.."|hNew appearance|h|r"))
				end
			end)
		else
			print(format(ERR_LEARN_TRANSMOG_S,"|cffff80ff|Htransmogappearance:"..appID.."|hNew appearance|h|r"))
		end
	end
	function UpdateAllCategories(isScanOnLoad)
		if isFirstLoad then
			isScanOnLoad = true
			isFirstLoad = nil
		end
		for i=1,30 do
			local categoryData = C_TransmogCollection.GetCategoryAppearances(i)
			if categoryData then
				local review = currDBReview[i] or {}
				currDBReview[i] = review
				for j,appInfo in pairs(categoryData) do
					local appID = appInfo.visualID
					if review[appID] then
						if not isScanOnLoad and review[appID].isCollected ~= appInfo.isCollected and appInfo.isCollected then
							DisplayAddedMessage(appID)
						end
					elseif not isScanOnLoad then
						DisplayAddedMessage(appID)
					end
					review[appID] = appInfo
				end
				currDB[i] = categoryData
			end
		end
	end
end

eventsFrame = CreateFrame("Frame")
eventsFrame:RegisterEvent("ADDON_LOADED")
eventsFrame:SetScript("OnEvent",function(self,event,arg1)
	if event == "ADDON_LOADED" then
		if arg1 == GlobalAddonName then
			if type(_G.VLTW) ~= 'table' then
				_G.VLTW = {}
				C_Timer.NewTimer(1,function()
					--print("You have installed <Legion Wardrobe> addon. Type \"/wardrobe\" or use button in Collections Journal to open it.")
				end)
			end
			VLTW = _G.VLTW
			
			VLTW._Fav2 = VLTW._Fav2 or {}
								
			if IsAddOnLoaded("Blizzard_Collections") and CollectionsJournal then
				self:GetScript("OnEvent")(self,"ADDON_LOADED","Blizzard_Collections")
			end
			if not VLTW.DisableNewApp then
				C_Timer.NewTimer(10,UpdateAllCategories)
				self:RegisterEvent("TRANSMOG_COLLECTION_UPDATED")
				self:RegisterEvent("CHAT_MSG_SYSTEM")
			end
		elseif arg1 == "Blizzard_Collections" then
		
			local dataLoaded = false
			function LoadData()
				if dataLoaded then
					return
				end
				LoadAddOn("LegionWardrobeData")
				
				local LTS = _G.LTSData
			
				AllData = LTS.AllData
				Visuals = LTS.Visuals
				ItemSource = LTS.ItemSource
				VendorNames = LTS.VendorNames
				InstanceList = LTS.InstanceList
				BossList = LTS.BossList
				DiffList = LTS.DiffList
				ItemCost = LTS.ItemCost
				QuestToZone = LTS.QuestToZone
				ZonesNames = LTS.ZonesNames
				ZoneToDataID = LTS.ZoneToDataID
				DiffToDataID = LTS.DiffToDataID
				QuestZoneToDataID = LTS.QuestZoneToDataID
				NPCToZone = LTS.NPCToZone
				NPCReact = LTS.NPCReact
				InstanceToEJ = LTS.InstanceToEJ
				BossToEJ = LTS.BossToEJ
				Recolors = LTS.Recolors
				HaveRecolors = LTS.HaveRecolors
		
				SetsAllData = LTS.SetsAllData
				Sets = LTS.Sets
				
				AllDataAll = AllData.ALL
				local factionData = AllData[playerFaction] or AllData["Horde"]
				AllData = factionData[playerClass]
				
				local factionData = SetsAllData[1][playerFaction] or SetsAllData[1]["Horde"]
				SetsAllData[1] = factionData[playerClass]		
				local factionData = SetsAllData[2][playerFaction] or SetsAllData[2]["Horde"]
				SetsAllData[2] = factionData[playerClass]		
				
				LTSData = nil
				
				CharQuestsData = GetQuestsCompleted()
				
				dataLoaded = true
			end
			
			if isNotENClient then
				UpdateLocalizatedZones()
				UpdateLocalizatedEJ()
			end
			
			local function ZoneToMapID(zoneID)
				for mapID,zones in pairs(QuestZoneToDataID) do
					for i=1,#zones do
						if zoneID == zones[i] then
							return mapID
						end
					end
				end
			end
			
			local function GetZoneName(zoneID,formatString)
				local zoneName = zoneID and ZonesNames[zoneID]
				if zoneName then
					if isNotENClient then
						local mapID = ZoneToMapID(zoneID)
						if mapID then
							zoneName = zoneName .. " |cffaaffaa("..(LocMapNames[mapID] or "")..")|r"
						end
					end
					if formatString then
						zoneName = format(formatString,zoneName)
					end
					return zoneName
				end
				return ""
			end
			
			hooksecurefunc("WardrobeCollectionFrameModel_SetTooltip", function ()
				if WardrobeFrame_IsAtTransmogrifier() then
					return
				end
			
				local sources = WardrobeCollectionFrame_GetSortedAppearanceSources(WardrobeCollectionFrame.tooltipAppearanceID)					
				local offset = WardrobeCollectionFrame.tooltipIndexOffset
				
				local headerIndex
				local headerSourceID = WardrobeCollectionFrameModel_GetChosenVisualSource(WardrobeCollectionFrame.tooltipAppearanceID)
				if ( headerSourceID ) then
					for i = 1, #sources do
						if ( sources[i].sourceID == headerSourceID ) then
							headerIndex = mod(i + offset - 1, #sources) + 1
							break
						end
					end
				else
					headerIndex = mod(offset, #sources) + 1
					headerSourceID = sources[headerIndex].sourceID
				end
				
				if not headerIndex or not sources[headerIndex] then
					return
				end
				
				if sources[headerIndex].sourceType == TRANSMOG_SOURCE_BOSS_DROP then
					return
				end
				
				if sources[headerIndex].isCollected then
					return
				end
				
				LoadData()
				
				local _,_,_,_,_,itemLink = C_TransmogCollection.GetAppearanceSourceInfo(sources[headerIndex].sourceID)
				
				if not itemLink then
					return
				end
				local itemID = tonumber(itemLink:match("item:(%d+)"))
				
				if ItemsCheckBonuses[ itemID ] then
					local bonus = FindBonuses(link)
					if bonus ~= 0 then
						itemID = itemID ..":"..bonus
					end
				end
				
				local sourceData = ItemSource[ itemID ]
				if not sourceData or #sourceData < 2 then
					return
				end
				
				local sourceType = sourceData[1]
				
				if sourceType == 3 then
					local npcID = sourceData[2]
					local npcZone = nil
					if NPCToZone[npcID] then
						local color = nil
						if NPCReact[ npcID ] then
							color = NPCReact[ npcID ] == 1 and "|cffd00000" or "|cff0080ff"
						end
						npcZone = " [Zone: "..(color or "")..GetZoneName( NPCToZone[npcID] )..(color and "|r" or "").."]"
					end
					local str = VendorNames[npcID]..(npcZone or "")

					if #sourceData > 2 then
						str = str .." and "..(#sourceData - 2).." more"
					end
					
					GameTooltipTextLeft2:SetText(GameTooltipTextLeft2:GetText()..": "..str)
					GameTooltip:Show()
				elseif sourceType == 8 then
					local SpellName = GetSpellInfo(sourceData[2])
					local str = SpellName
					if #sourceData > 2 then
						str = str .." and "..(#sourceData - 2).." more"
					end
					
					GameTooltipTextLeft2:SetText(GameTooltipTextLeft2:GetText()..": "..str)
					GameTooltip:Show()
				elseif sourceType == 7 then
					local _,A4ivName = GetAchievementInfo(sourceData[2])
					local str = A4ivName
					if #sourceData > 2 then
						str = str .." and "..(#sourceData - 2).." more"
					end
					
					GameTooltipTextLeft2:SetText(GameTooltipTextLeft2:GetText()..": "..str)
					GameTooltip:Show()
				elseif sourceType == 2 then
					local str = "ID "..sourceData[2]..(QuestToZone[ sourceData[2] ] and " (Zone: "..GetZoneName( QuestToZone[ sourceData[2] ] )..")" or "")
					for j=2,#sourceData do
						local r = false
						inspectScantip:SetHyperlink("quest:"..sourceData[j])
						if inspectScantip:NumLines() > 0 then
							local tooltipLine = _G["LegionWardrobeScanningTooltipTextLeft1"]
							local text = tooltipLine:GetText()
							if text and text ~= "" then
								str = text..(QuestToZone[ sourceData[j] ] and " (Zone: "..GetZoneName( QuestToZone[ sourceData[j] ] )..")" or "")
								r = true
							end
						end
						inspectScantip:ClearLines()
						if r then
							break
						end
					end

					if #sourceData > 2 then
						str = str .." and "..(#sourceData - 2).." more"
					end
					
					GameTooltipTextLeft2:SetText(GameTooltipTextLeft2:GetText()..": "..str)
					GameTooltip:Show()
				elseif sourceType == 4 then
					local str = GetZoneName( sourceData[2] )

					if #sourceData > 2 then
						str = str .." and "..(#sourceData - 2).." more"
					end
					
					GameTooltipTextLeft2:SetText(GameTooltipTextLeft2:GetText()..": "..str)
					GameTooltip:Show()
				elseif sourceType == 6 then
					local str = "from "
					
					local itemID = sourceData[2]
					if itemID < 0 then 
						itemID = -itemID 
					else

					end
					local _,link = GetItemInfo(itemID)
					if link then
						str = str ..link
					else
						str = str .. "itemID "..itemID
					end

					if #sourceData > 2 then
						str = str .." and "..(#sourceData - 2).." more"
					end
					
					GameTooltipTextLeft2:SetText(GameTooltipTextLeft2:GetText()..": "..str)
					GameTooltip:Show()
				
				end
				
				--GameTooltip:AddLine(sourceData[1])
				--GameTooltip:Show()
			end)
			
			local AddAllSlotsToCurrentFilter = nil
			
			hooksecurefunc("WardrobeCollectionFrame_FilterVisuals", function ()
				if WardrobeFrame_IsAtTransmogrifier() or WardrobeCollectionFrame.transmogType == LE_TRANSMOG_TYPE_ILLUSION then
					return
				end
				if FilterRecolors then
					local filteredVisualsList = { }
					local tmp = {}
					for q,w in pairs(FilterRecolors) do tmp[w] = true end
					
					local visualsList = WardrobeCollectionFrame.visualsList
					for i = 1, #visualsList do
						if tmp[ visualsList[i].visualID ] then
							tinsert(filteredVisualsList, visualsList[i])
						end
					end
					WardrobeCollectionFrame.filteredVisualsList = filteredVisualsList
					return
				end
				if not FilterInstance then
					return
				end
			
				local visualsList = WardrobeCollectionFrame.visualsList
				
				
				if AddAllSlotsToCurrentFilter then
					local showCollected = C_TransmogCollection.GetCollectedShown()
					local showUncollected = C_TransmogCollection.GetUncollectedShown()
					wipe(visualsList)
					local specialSort = 0
					for i=1,35 do
						local list = C_TransmogCollection.GetCategoryAppearances(i)
						if list then
							for j=1,#list do
								visualsList[#visualsList + 1] = list[j]
								specialSort = specialSort + 1
								list[j].specialSort1 = specialSort
								list[j].specialCat1 = i > 11
								list[j].specialCat2 = 	(i == 1 and "HEADSLOT") or
											(i == 2 and "SHOULDERSLOT") or
											(i == 3 and "BACKSLOT") or
											(i == 4 and "CHESTSLOT") or
											(i == 5 and "TABARDSLOT") or
											(i == 6 and "SHIRTSLOT") or
											(i == 7 and "WRISTSLOT") or
											(i == 8 and "HANDSSLOT") or
											(i == 9 and "WAISTSLOT") or
											(i == 10 and "LEGSSLOT") or
											(i == 11 and "FEETSLOT")
								if not ((showCollected and list[j].isCollected) or (showUncollected and not list[j].isCollected)) then
									list[j].isHideVisual = true
								end
							end
						end
					end
				end
				
				local filteredVisualsList = { }
				for i = 1, #visualsList do
					local visualData = Visuals[ visualsList[i].visualID ]
					if visualData then
						for k=1,#visualData do
							local item = visualData[k]				
							local sourceData = ItemSource[item]
							if sourceData then
								local sourceType = sourceData[1]
								
								if
								   ((type(FilterInstance)~='table' and sourceType == 1 and CheckFilterInstance(sourceData,1)) or (type(FilterInstance)=='table' and ((sourceType == 2 and CheckFilterInstance(sourceData,2)) or (sourceType == 3 and CheckFilterInstance(sourceData,3)) or (sourceType == 4 and CheckFilterInstance(sourceData,4)))))
								   and not visualsList[i].isHideVisual
								then
									tinsert(filteredVisualsList, visualsList[i])
									break
								end
							end
						end
					end
				end
				WardrobeCollectionFrame.filteredVisualsList = filteredVisualsList
			end)

			hooksecurefunc("WardrobeCollectionFrame_SortVisuals", function ()
				local comparison = function(source1, source2)
					if ( source1.isCollected ~= source2.isCollected ) then
						return source1.isCollected;
					end
					if ( source1.isUsable ~= source2.isUsable ) then
						return source1.isUsable;
					end
					if ( source1.isFavorite ~= source2.isFavorite ) then
						return source1.isFavorite;
					end
					if ( source1.isHideVisual ~= source2.isHideVisual ) then
						return source1.isHideVisual;
					end
					if source1.visualID and source2.visualID and VLTW._Fav2[ source1.visualID ] ~= VLTW._Fav2[ source2.visualID ] then
						return VLTW._Fav2[ source1.visualID ]
					end
					if ( source1.specialSort1 ~= source2.specialSort1 ) and source1.specialSort1 and source2.specialSort1 then
						return source1.specialSort1 < source2.specialSort1;
					end
					if ( source1.uiOrder and source2.uiOrder ) then
						return source1.uiOrder > source2.uiOrder;
					end
					return source1.sourceID > source2.sourceID;
				end
			
				table.sort(WardrobeCollectionFrame.filteredVisualsList, comparison)

			end)	
			
			
			hooksecurefunc("WardrobeCollectionFrame_Update", function ()
				if AddAllSlotsToCurrentFilter then
					for i = 1, 18 do
						local model = WardrobeCollectionFrame.ModelsFrame.Models[i]
						local index = i + (WardrobeCollectionFrame_GetCurrentPage() - 1) * 18
						local visualInfo = WardrobeCollectionFrame.filteredVisualsList[index]
						if ( visualInfo ) then
							if visualInfo.specialCat1 then
								model:SetItemAppearance(visualInfo.visualID)
							end
						end
					end
				end
			end)	
			
			hooksecurefunc("WardrobeCollectionFrame_SetCurrentPage", function ()
				if AddAllSlotsToCurrentFilter then
					for i = 1, #WardrobeCollectionFrame.ModelsFrame.Models do
						local model = WardrobeCollectionFrame.ModelsFrame.Models[i]
						local index = i + (WardrobeCollectionFrame_GetCurrentPage() - 1) * 18
						local visualInfo = WardrobeCollectionFrame.filteredVisualsList[index]
						if visualInfo and visualInfo.specialCat2 then
							WardrobeCollectionFrameModel_Reload(model, visualInfo.specialCat2)
						else
							WardrobeCollectionFrameModel_Reload(model, "SHOULDERSLOT")
						end
						model.visualInfo = nil
					end
				end
			end)		
			hooksecurefunc("WardrobeCollectionFrame_SetActiveSlot", function (...)
				if AddAllSlotsToCurrentFilter then
					AddAllSlotsToCurrentFilter = nil
					WardrobeCollectionFrame_SetActiveSlot(...)
				end
			end)				
			

			local function FilerZoneFunc(_,zoneID,diffID)
				LoadData()
				FilterInstance = ZoneToDataID[zoneID] or QuestZoneToDataID[zoneID]
				if diffID then
					FilterInstanceDifficulty = DiffToDataID[diffID]
				else
					FilterInstanceDifficulty = nil
				end
				print('FilterInstance',FilterInstance,diffID)
				AddAllSlotsToCurrentFilter = true
				if not FilterInstance then
					print("<Legion Wardrobe>: Filter not added: No data for current zone")
					FilterInstance = nil
				else
					if WardrobeCollectionFrame.activeCategory > 11 then
						WardrobeCollectionFrame_SetActiveSlot("HEADSLOT", LE_TRANSMOG_TYPE_APPEARANCE)
					end
				end
				CloseDropDownMenus()
				WardrobeCollectionFrame_SetActiveCategory(WardrobeCollectionFrame.activeCategory)
			end

			
			local function WardrobeFilterDropDown_Initialize(self, level)
				local info = UIDropDownMenu_CreateInfo();
				info.keepShownOnClick = true;
				local atTransmogrifier = WardrobeFrame_IsAtTransmogrifier();
			
				if level == 1 and not atTransmogrifier then
					info.text = COLLECTED
					info.func = function(_, _, _, value)
									C_TransmogCollection.SetCollectedShown(value);
								end 
					info.checked = C_TransmogCollection.GetCollectedShown();
					info.isNotRadio = true;
					UIDropDownMenu_AddButton(info, level)
			
					info.text = NOT_COLLECTED
					info.func = function(_, _, _, value)
									C_TransmogCollection.SetUncollectedShown(value);
								end 
					info.checked = C_TransmogCollection.GetUncollectedShown();
					info.isNotRadio = true;
					UIDropDownMenu_AddButton(info, level)
			
					info.checked = 	nil;
					info.isNotRadio = nil;
					info.func =  nil;
					info.hasArrow = true;
					info.notCheckable = true;
			
					info.text = SOURCES
					info.value = 1;
					UIDropDownMenu_AddButton(info, level)
					
					info.text = "Zone"
					info.value = 2;
					UIDropDownMenu_AddButton(info, level)
					
					info.text = "Current zone"
					info.func = function(_, _, _, value)
						LoadData()
						if WardrobeCollectionFrame.activeCategory > 11 then
							WardrobeCollectionFrame_SetActiveSlot("HEADSLOT", LE_TRANSMOG_TYPE_APPEARANCE)
						end
						AddAllSlotsToCurrentFilter = true
						SetMapToCurrentZone()
						local mapID = GetCurrentMapAreaID()
						if ZoneToDataID[mapID] then
							FilterInstance = ZoneToDataID[mapID]
							local _, _, difficulty = GetInstanceInfo()
							if difficulty then
								FilterInstanceDifficulty = DiffToDataID[difficulty]
							else
								FilterInstanceDifficulty = nil
							end
						elseif QuestZoneToDataID[mapID] then
							FilterInstance = QuestZoneToDataID[mapID]
						else
							print("<Legion Wardrobe>: Filter not added: No data for current zone")
							FilterInstance = nil
						end
						CloseDropDownMenus()
						WardrobeCollectionFrame_SetActiveCategory(WardrobeCollectionFrame.activeCategory)
					end
					info.hasArrow = false
					UIDropDownMenu_AddButton(info, level)	
					
					info.hasArrow = false
					info.text = "Reset filter"
					info.func = function()
						FilterInstance = nil
						FilterRecolors = nil
						AddAllSlotsToCurrentFilter = nil
						CloseDropDownMenus()
						if WardrobeCollectionFrame.activeCategory == 1 then
							WardrobeCollectionFrame_SetActiveSlot("SHOULDERSLOT", LE_TRANSMOG_TYPE_APPEARANCE)
							WardrobeCollectionFrame_SetActiveSlot("HEADSLOT", LE_TRANSMOG_TYPE_APPEARANCE)
						else
							WardrobeCollectionFrame_SetActiveSlot("HEADSLOT", LE_TRANSMOG_TYPE_APPEARANCE)
						end
					end
					UIDropDownMenu_AddButton(info, level)
				elseif UIDROPDOWNMENU_MENU_VALUE == 1 or atTransmogrifier then
					if level == 2 or atTransmogrifier then
						local refreshLevel = atTransmogrifier and 1 or 2;
						info.hasArrow = false;
						info.isNotRadio = true;
						info.notCheckable = true;
			
						info.text = CHECK_ALL
						info.func = function()
										C_TransmogCollection.SetAllSourceTypeFilters(true);
										UIDropDownMenu_Refresh(WardrobeFilterDropDown, 1, refreshLevel);
									end
						UIDropDownMenu_AddButton(info, level)
						
						info.text = UNCHECK_ALL
						info.func = function()
										C_TransmogCollection.SetAllSourceTypeFilters(false);
										UIDropDownMenu_Refresh(WardrobeFilterDropDown, 1, refreshLevel);
									end
						UIDropDownMenu_AddButton(info, level)
						info.notCheckable = false;
			
						local numSources = C_TransmogCollection.GetNumTransmogSources();
						for i = 1, numSources do
							info.text = _G["TRANSMOG_SOURCE_"..i];
							info.func = function(_, _, _, value)
										C_TransmogCollection.SetSourceTypeFilter(i, value);
									end
							info.checked = function() return not C_TransmogCollection.IsSourceTypeFilterChecked(i) end;
							UIDropDownMenu_AddButton(info, level);
						end
					end
				else
					local info = UIDropDownMenu_CreateInfo()
					if level == 2 then
						for i=1,#ZonesFilterList do
							local info = UIDropDownMenu_CreateInfo()
							info.hasArrow = true
							info.notCheckable = true
							info.text = ZonesFilterList[i][1]
							info.value = {
								["Level1_Key"] = i
							}
							UIDropDownMenu_AddButton(info, level)
						end
					end
					
					if (level == 3) then
						local Level1_Key = UIDROPDOWNMENU_MENU_VALUE["Level1_Key"]
						local w1 = ZonesFilterList[Level1_Key]
						for i=2,#w1 do
							local info = UIDropDownMenu_CreateInfo()
							info.hasArrow = false
							info.notCheckable = true
							info.text = w1[i][1]
							info.isTitle = true
							UIDropDownMenu_AddButton(info, level)
							local w = w1[i]
							for j=2,#w do
								local info = UIDropDownMenu_CreateInfo()
								if type(w[j][2]) == 'table' then
									info.hasArrow = true
									info.text = w[j][1]
								else
									info.hasArrow = false
									info.text = w[j][2]
									if isNotENClient and LocMapNames[ w[j][1] ] then
										info.text = info.text .. " |cffaaffaa("..LocMapNames[ w[j][1] ]..")"
									end		
									info.func = FilerZoneFunc
									info.arg1 =  w[j][1]
								end
								info.notCheckable = true
								info.value = {
									["Level1_Key"] = Level1_Key,
									["Level2_Key"] = i,
									["Level3_Key"] = j,
								}
								UIDropDownMenu_AddButton(info, level)
							end
						end
					end
					   
					  
					if (level == 4) then
						local Level1_Key = UIDROPDOWNMENU_MENU_VALUE["Level1_Key"]
						local Level2_Key = UIDROPDOWNMENU_MENU_VALUE["Level2_Key"]
						local Level3_Key = UIDROPDOWNMENU_MENU_VALUE["Level3_Key"]
						local w = ZonesFilterList[Level1_Key][Level2_Key][Level3_Key]
						for i=2,#w do
							local info = UIDropDownMenu_CreateInfo()
							info.hasArrow = #w[i] > 2
							info.text = w[i][2]
							if isNotENClient and LocMapNames[ w[i][1] ] then
								info.text = info.text .. " |cffaaffaa("..LocMapNames[ w[i][1] ]..")"
							end	      
							info.func = FilerZoneFunc
							info.arg1 =  w[i][1]
							info.notCheckable = true
							info.value = {
								["Level1_Key"] = Level1_Key,
								["Level2_Key"] = Level2_Key,
								["Level3_Key"] = Level3_Key,
								["Level4_Key"] = i,
							}
							UIDropDownMenu_AddButton(info, level)
						end
					end
					
					if (level == 5) then
						local Level1_Key = UIDROPDOWNMENU_MENU_VALUE["Level1_Key"]
						local Level2_Key = UIDROPDOWNMENU_MENU_VALUE["Level2_Key"]
						local Level3_Key = UIDROPDOWNMENU_MENU_VALUE["Level3_Key"]
						local Level4_Key = UIDROPDOWNMENU_MENU_VALUE["Level4_Key"]
						local w = ZonesFilterList[Level1_Key][Level2_Key][Level3_Key][Level4_Key]
						for i=3,#w do
							local info = UIDropDownMenu_CreateInfo()
							info.hasArrow = false
							info.text = RaidDiffToDiffName[ w[i] ]    
							info.func = FilerZoneFunc
							info.arg1 =  w[1]
							info.arg2 =  w[i]
							info.notCheckable = true
							UIDropDownMenu_AddButton(info, level)
						end
					end
				end
			end

			UIDropDownMenu_Initialize(WardrobeFilterDropDown, WardrobeFilterDropDown_Initialize, "MENU")
		
			for i=1,3 do
				for j=1,6 do
					local frame = WardrobeCollectionFrame.ModelsFrame["ModelR"..i.."C"..j]
					frame:HookScript("OnMouseDown",function(self,button)
						if IsModifiedClick("CHATLINK") or IsModifiedClick("DRESSUP") or WardrobeFrame_IsAtTransmogrifier() or WardrobeCollectionFrame.transmogType == LE_TRANSMOG_TYPE_ILLUSION then
							return
						end
						if button == "RightButton" then
							if not self.visualInfo or self.visualInfo.isCollected then
								return
							end
							local visualID = self.visualInfo.visualID
							if VLTW._Fav2[ visualID ] then
								VLTW._Fav2[ visualID ] = nil
							else
								VLTW._Fav2[ visualID ] = true
							end
							WardrobeCollectionFrame_SortVisuals()
							WardrobeCollectionFrame_Update()
							return
						end
						if button ~= "LeftButton" then
							return
						end
						local visualInfo = self.visualInfo
						LoadData()
						UpdateModel(models[1], visualInfo.visualID, visualInfo.isCollected)
						Model_OnClick(models[1],"LeftButton")
					end)
				end
			end

			
			hooksecurefunc("WardrobeCollectionFrame_Update", function ()
				for i = 1, 18 do
					local model = WardrobeCollectionFrame.ModelsFrame.Models[i];
					local index = i + (WardrobeCollectionFrame_GetCurrentPage() - 1) * 18;
					local visualInfo = WardrobeCollectionFrame.filteredVisualsList[index];
					if ( visualInfo ) then
						if not visualInfo.isCollected then
							if VLTW._Fav2[ visualInfo.visualID ] then
								model.Favorite.Icon:SetShown(true)
							end
						end
					end
				end
			
			end)
			
			AddSetsButton()
		
			eventsFrame:EnableKeyboard(true)
			
			
			do
				local IsEnableUndress = true
				local IsSavePosition = false
				local IsUseBigModelPosition = false

				local model = CreateFrame("DressUpModel",nil,WardrobeCollectionFrame)
				model:SetPoint("TOPLEFT",WardrobeCollectionFrame,"TOPRIGHT",5,0)
				
				mainFrame.bigModel = model
				
				model:SetSize(mainFrame:GetHeight() * 90 / 130,mainFrame:GetHeight())
				model:SetBackdrop({bgFile = "Interface\\Buttons\\WHITE8X8",edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",tile = true,tileSize = 1,edgeSize = 8,insets = {left = 2,right = 2,top = 2,bottom = 2}})
				model:SetBackdropColor(0.07, 0.07, 0.07, 1) 
				model:SetBackdropBorderColor(0.4, 0.4, 0.4, 1) 
				
				model:MakeCurrentCameraCustom()
				model.cameraID = 1
				
				model:Hide()
				
				local previewModelsList = {}
				for i=1,3 do
					for j=1,6 do
						tinsert(previewModelsList,WardrobeCollectionFrame.ModelsFrame["ModelR"..i.."C"..j])
					end
				end
				
				model:EnableMouse(true)
				model:SetScript("OnMouseDown",function (self,button)
					local x,y = GetCursorPos(self)
					self.x = x
					self.y = y
					local cx,cy,cz = self:GetPosition()
					self.cx = cx
					self.cy = cy
					self.cz = cz
					self.cf = self:GetFacing()
					self.mov = true
					self.isRotation = button ~= "RightButton"
				end)
				model:SetScript("OnMouseUp",function (self)
					self.mov = nil
				end)
				model:SetScript("OnUpdate",function (self)
					if not self.mov then
						return
					end
					local x,y = GetCursorPos(self)
					local diff_x = x - self.x
					local diff_y = y - self.y
					if self.isRotation then
						self:SetFacing(self.cf + diff_x / 65)
						
						if IsUseBigModelPosition then
							for i=1,#previewModelsList do
								previewModelsList[i]:SetFacing(self.cf + diff_x / 65)
							end
						end
					else
						self:SetPosition(self.cx,self.cy + diff_x / 200,self.cz - diff_y / 200)
						
						if IsUseBigModelPosition then
							for i=1,#previewModelsList do
								previewModelsList[i]:SetPosition(self.cx,self.cy + diff_x / 200,self.cz - diff_y / 200)
							end
						end
					end
				end)
				model:SetScript("OnMouseWheel",function (self,delta)
					local cx,cy,cz = self:GetPosition()
					self:SetPosition(cx + delta / 7,cy,cz)
					
					if IsUseBigModelPosition then
						for i=1,#previewModelsList do
							previewModelsList[i]:SetPosition(cx + delta / 7,cy,cz)
						end
					end
				end)
				model:SetScript("OnModelLoaded",function (self)

				end)
				
				local function Reload(self,undress)
					self:SetUnit("player")
					if undress then
						self:Undress()
					end
					--self:TryOn(self.itemID or "item:94984")
				end
				model.Reload = Reload
				
				local lastCamera = 152
				model:SetScript("OnShow",function (self)
					self:Reload(IsEnableUndress)
					Model_ApplyUICamera(model, lastCamera)
				end)
				
				local disableUndress = CreateFrame("CheckButton",nil,model,"UICheckButtonTemplate")  
				disableUndress.text:SetText("Undress")
				disableUndress:SetPoint("BOTTOMLEFT",5,0)
				disableUndress:SetScript("OnClick",function (self)
					IsEnableUndress = self:GetChecked()
					model:Reload(IsEnableUndress)
					Model_ApplyUICamera(model, lastCamera)
				end)
				disableUndress:SetChecked(true)
				disableUndress:SetScale(.8)
			
				local savePosition = CreateFrame("CheckButton",nil,model,"UICheckButtonTemplate")  
				savePosition.text:SetText("Save position")
				savePosition:SetPoint("BOTTOMLEFT",105,0)
				savePosition:SetScript("OnClick",function (self)
					IsSavePosition = self:GetChecked()
				end)
				savePosition:SetScale(.8)
				
				local useBigModelPos = CreateFrame("CheckButton",nil,model,"UICheckButtonTemplate")  
				useBigModelPos.text:SetText("Use this position in preview")
				useBigModelPos:SetPoint("BOTTOMLEFT",205,0)
				useBigModelPos:SetScript("OnClick",function (self)
					IsUseBigModelPosition = self:GetChecked()
				end)
				useBigModelPos:SetScale(.8)
				
				local slotToCamera = {
					["HEADSLOT"] 		= {531},
					["SHOULDERSLOT"]	= {532},
					["BACKSLOT"]		= {533},
					["CHESTSLOT"]		= {535},
					["TABARDSLOT"]		= {535},
					["SHIRTSLOT"]		= {536},
					["WRISTSLOT"]		= {537},
					["HANDSSLOT"]		= {538},
					["WAISTSLOT"]		= {539},
					["LEGSSLOT"]		= {540},
					["FEETSLOT"]		= {541},
					["SECONDARYHANDSLOT"]	= {151,151},
				}
				
				hooksecurefunc("WardrobeCollectionFrame_ChangeModelsSlot", function (oldSlot, newSlot)
					if IsSavePosition then
						if IsEnableUndress then
							model:Undress()
						end
						return
					end
					model:Reload(IsEnableUndress)
					if slotToCamera[newSlot] and not slotToCamera[newSlot][2] then
						C_Timer.NewTimer(0.1,function ()
							local m = WardrobeCollectionFrame.ModelsFrame.ModelR1C1
							if not m.visualInfo or WardrobeCollectionFrame.transmogType ~= LE_TRANSMOG_TYPE_APPEARANCE then
								return
							end
							local cameraID = C_TransmogCollection.GetAppearanceCameraID(m.visualInfo.visualID)
							slotToCamera[newSlot][2] = cameraID
							lastCamera = cameraID
							Model_ApplyUICamera(model, cameraID)
						end)
					end 
					lastCamera = (slotToCamera[newSlot] and slotToCamera[newSlot][2]) or (slotToCamera[newSlot] and slotToCamera[newSlot][1]) or 152
					Model_ApplyUICamera(model, lastCamera)
				end)
													
				for i=1,3 do
					for j=1,6 do
						local frame = WardrobeCollectionFrame.ModelsFrame["ModelR"..i.."C"..j]
						frame:HookScript("OnEnter",function(self,button)
							if not self.visualInfo or WardrobeCollectionFrame.transmogType == LE_TRANSMOG_TYPE_ILLUSION or WardrobeFrame_IsAtTransmogrifier() or not model:IsShown() then
								return
							end
							
							local sourceID = WardrobeCollectionFrame_GetAnAppearanceSourceFromVisual(self.visualInfo.visualID)
							model:TryOn(sourceID)
						end)
					end
				end
				
				local function ButtonOnEnter(self)
					if not self.tooltip then return end
					GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
					GameTooltip:AddLine(self.tooltip)
					GameTooltip:Show()
				end
				local function ButtonOnLeave(self)
					GameTooltip_Hide()
				end
				
				local bigModelButton = CreateFrame("Button",nil,WardrobeCollectionFrame)
				bigModelButton:SetPoint("TOPRIGHT", WardrobeCollectionFrameWeaponDropDown, -15, -27)
				bigModelButton:SetSize(31,31)
				bigModelButton:SetScript("OnClick",function(self)
					if model:IsShown() then
						model:Hide()
						self.Texture:SetDesaturated(true)
					else
						model:Show()
						self.Texture:SetDesaturated(false)
					end
				end)
				bigModelButton:SetScript("OnEnter",ButtonOnEnter)
				bigModelButton:SetScript("OnLeave",ButtonOnLeave)
				bigModelButton.tooltip = "Open Big Model"
				
				bigModelButton.Texture = bigModelButton:CreateTexture(nil,"ARTWORK")
				bigModelButton.Texture:SetAllPoints()
				bigModelButton.Texture:SetTexture([[Interface\AddOns\LegionWardrobe\Transmogrify]])
				bigModelButton.Texture:SetTexCoord(450/512,482/512,88/512,120/512)
				bigModelButton.Texture:SetDesaturated(true)
				
				local f=CreateFrame("Frame",nil,WardrobeCollectionFrame)
				f:SetPoint("TOPLEFT")
				f:SetSize(1,1)
				f:SetScript("OnShow",function()
					if WardrobeFrame_IsAtTransmogrifier() then
						for _,but in pairs(mainFrame.hideButtonsList) do
							but:Hide()
						end
						if model:IsShown() then
							bigModelButton:Click()
						end
					else
						for _,but in pairs(mainFrame.hideButtonsList) do
							but:Show()
						end
					end
					
				end)
				
				tinsert(mainFrame.hideButtonsList,bigModelButton)
			end	
			
			do
				local ButtonDropDown = CreateFrame("Button",GlobalAddonName.."OptionsButtonDropDown",UIParent,"UIDropDownMenuTemplate")
				
				local isInited = false
				local function InitButtonDropDown(self, level)
					local info = UIDropDownMenu_CreateInfo()
					if level == 1 then
						info.hasArrow = false
						info.isNotRadio = true
						info.notCheckable = false
						info.checked = function() return not VLTW.HideTooltipHelp end
						
						info.text = 'Show "Collected" on tooltips'
						info.func = function(_, _, _, value)
							if value then
								VLTW.HideTooltipHelp = true
							else
								VLTW.HideTooltipHelp = nil
							end
						end
						UIDropDownMenu_AddButton(info, level)
						
						
						info.hasArrow = false
						info.isNotRadio = true
						info.notCheckable = false
						info.checked = function() return not VLTW.DisableNewApp end
						
						info.text = 'Show messages about new appearances from blues and greens items'
						info.func = function(_, _, _, value)
							if value then
								VLTW.DisableNewApp = true
								eventsFrame:UnregisterEvent("TRANSMOG_COLLECTION_UPDATED")
								eventsFrame:UnregisterEvent("CHAT_MSG_SYSTEM")
							else
								VLTW.DisableNewApp = nil
								UpdateAllCategories(true)
								eventsFrame:RegisterEvent("TRANSMOG_COLLECTION_UPDATED")
								eventsFrame:RegisterEvent("CHAT_MSG_SYSTEM")
							end
						end
						UIDropDownMenu_AddButton(info, level)
					end
				end
				
				
				
				local function ButtonOnClick(self)
					if not isInited then
						UIDropDownMenu_Initialize(ButtonDropDown, InitButtonDropDown , "MENU")
						isInited = true
					end
					PlaySound("igMainMenuOptionCheckBoxOn")
					ToggleDropDownMenu(1, nil, ButtonDropDown, self, 20, 5)
				end
				
				local function ButtonOnEnter(self)
					if not self.tooltip then return end
					GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
					GameTooltip:AddLine(self.tooltip)
					GameTooltip:Show()
				end
				local function ButtonOnLeave(self)
					GameTooltip_Hide()
				end
				
				local optionsButton = CreateFrame("Button",nil,WardrobeCollectionFrame)
				optionsButton:SetPoint("TOPRIGHT", WardrobeCollectionFrameWeaponDropDown, -75, -28)
				optionsButton:SetSize(31,31)
				optionsButton:SetScript("OnClick",ButtonOnClick)
				optionsButton:SetScript("OnEnter",ButtonOnEnter)
				optionsButton:SetScript("OnLeave",ButtonOnLeave)
				optionsButton.tooltip = "Options"
				
				optionsButton.Texture = optionsButton:CreateTexture(nil,"ARTWORK")
				optionsButton.Texture:SetPoint("CENTER")
				optionsButton.Texture:SetSize(28,28)
				optionsButton.Texture:SetAtlas("Class")
				
				tinsert(mainFrame.hideButtonsList,optionsButton)
			end
		end
	elseif event == "TRANSMOG_COLLECTION_UPDATED" then
		if WardrobeCollectionFrame and WardrobeCollectionFrame:IsVisible() then
			return
		end
		UpdateAllCategories()
	elseif event == "CHAT_MSG_SYSTEM" then		
		if not arg1 then
			return
		end
		local sourceID = arg1:match("|Htransmogappearance:(%d+)")
		if not sourceID then
			return
		end
		local appID = select(2,C_TransmogCollection.GetAppearanceSourceInfo(tonumber(sourceID)))
		if not appID then
			return
		end
		AddBannedAppID(appID)
	end
end)

local PlayerHasTransmog
do
	local TABFeatureAppID, TABFeatureSlot, TABLearnedItem = nil

	local inventoryTypes = {
		["INVTYPE_HEAD"] = 1,
		["INVTYPE_SHOULDER"] = 2,
		["INVTYPE_CLOAK"] = 3,
		["INVTYPE_CHEST"] = 4,
		["INVTYPE_ROBE"] = 4,
		["INVTYPE_BODY"] = 5,
		["INVTYPE_TABARD"] = 6,
		["INVTYPE_WRIST"] = 7,
		["INVTYPE_HAND"] = 8,
		["INVTYPE_WAIST"] = 9,
		["INVTYPE_LEGS"] = 10,
		["INVTYPE_FEET"] = 11,
		["Wands"] = 12,
		["One-Handed Axes"] = 13,
		["One-Handed Swords"] = 14,
		["One-Handed Maces"] = 15,
		["Daggers"] = 16,
		["Fist Weapons"] = 17,
		["INVTYPE_SHIELD"] = 18,
		["INVTYPE_HOLDABLE"] = 19,
		["Two-Handed Axes"] = 20,
		["Two-Handed Swords"] = 21,
		["Two-Handed Maces"] = 22,
		["Staves"] = 23,
		["Polearms"] = 24,
		["Bows"] = 25,
		["Guns"] = 26,
		["Crossbows"] = 27,
		["Warglaives"] = 28,
	}
	do
		local WeaponToCategory = {
			[87066] = 12,
			[19362] = 13,
			[86987] = 14,
			[78476] = 15,
			[86217] = 16,
			[50035] = 17,
			[28298] = 20,
			[59039] = 21,
			[70723] = 22,
			[71559] = 23,
			[24044] = 24,
			[50638] = 25,
			[50444] = 26,
			[47907] = 27,
			[127829] = 28,
		}
		for itemID,_ in pairs(WeaponToCategory) do
			GetItemInfo(itemID)
		end
		
		C_Timer.NewTimer(1,function()
			for itemID,categoryID in pairs(WeaponToCategory) do
				local _,_,_,_,_,_,subclass = GetItemInfo(itemID)
				if subclass then 
					inventoryTypes[ subclass ] = categoryID 
				end
			end
		end)
	end
	
	
	local model = CreateFrame("DressUpModel")
	local lastItem, lastResult, lastAppearanceID
	model:SetSize(1,1)
	
	local function PlayerCanEquipItem(item)
		local itemID,_,itemSubClass = GetItemInfoInstant(item)
		if itemSubClass == GetItemSubClassInfo(4,5) then
			--cosmetic
			return true
		end		
		for i=1,30 do
			if C_TransmogCollection.IsCategoryValidForItem(i, itemID) then
				return true
			end
		end
	end
	
	local function GetAppearanceDataByItem(item)
		model:SetUnit("player")
		model:Undress()
		model:TryOn(item)
		
		for i=1,20 do
			local appearanceSourceID = model:GetSlotTransmogSources(i)
			if (appearanceSourceID and appearanceSourceID > 0) then
				return C_TransmogCollection.GetAppearanceInfoBySource(appearanceSourceID) , appearanceSourceID
			end
		end 
	end
	 
	function PlayerHasTransmog(item)
		if (lastItem and lastItem == item) then
			return lastResult, lastAppearanceID
		end
		
		local data, sourceID = GetAppearanceDataByItem(item)
		local isCollected = data and data.appearanceIsCollected or false
		
		if not isCollected and sourceID then
			isCollected = C_TransmogCollection.PlayerHasTransmogItemModifiedAppearance(sourceID)
		end
		
		lastItem = item
		lastResult = isCollected
		lastAppearanceID = data and data.appearanceID
		
		return isCollected, lastAppearanceID
	end
	
	local function TooltipAnalyzeItem(self,itemLink)
		local _,_,quality,_,_,class,subclass,_,equipSlot = GetItemInfo(itemLink)
		
		local slot = (subclass and inventoryTypes[subclass]) or (equipSlot and inventoryTypes[equipSlot])
		
		if not slot then
			return
		end
		
		local isLearnedItem, itemAppearanceID = PlayerHasTransmog(itemLink)
		
		if self:GetName() == "GameTooltip" then
			TABFeatureAppID = itemAppearanceID
			TABFeatureSlot = slot
			TABLearnedItem = isLearnedItem
		end
		
		if VLTW.HideTooltipHelp then
			return
		end
		
		if isLearnedItem then
			self:AddLine(TRANSMOGRIFY_TOOLTIP_APPEARANCE_KNOWN,.2,.66,0,true)
			self:Show()
			return
		end
		
		
		if quality < 2 then
			self:AddLine(TRANSMOGRIFY_INVALID_ITEM_TYPE,.533,.666,1,true)
			self:Show()
			return
		end
		
		local found = false
		local tooltipName = self:GetName()
		local numLines = self:NumLines()
		
		for i=numLines,1,-1 do
			local line = _G[tooltipName.."TextLeft"..i]
			if line then
		        	local text = line:GetText()
		        	if text and text == TRANSMOGRIFY_TOOLTIP_APPEARANCE_UNKNOWN then
		            		found = true
		            		break
		       		end
		    	end
		end
		
		if not found then
			if equipSlot == "INVTYPE_TABARD" then
				local itemID = GetItemInfoInstant(itemLink)
				if C_TransmogCollection.PlayerHasTransmog(itemID) then
					self:AddLine(TRANSMOGRIFY_TOOLTIP_APPEARANCE_KNOWN,.2,.66,0,true)
					self:Show()
				end
				return
			end
			if not PlayerCanEquipItem(itemLink) then
				self:AddLine(ERR_TRANSMOGRIFY_CANT_EQUIP,1,.5,.5,true)
			else
				self:AddLine(ERR_TRANSMOGRIFY_INVALID_SOURCE,1,.5,.5,true)
			end
			self:Show()
			return		
		end
	end
	
	local function OnTooltipSetItem(self)
		local _,itemLink = self:GetItem()
		
		if not itemLink then
			return
		end
		
		TooltipAnalyzeItem(self, itemLink)
	end
	
	local function OnTooltipSetRecipeReagentItem(self, tradeSkillId, reagentID)
		local link = C_TradeSkillUI.GetRecipeReagentItemLink(tradeSkillId, reagentID)
		if link then
			TooltipAnalyzeItem(self, link)
		end
	end
	
	local function OnTooltipSetRecipeResultItem(self, tradeSkillId)
		local link = C_TradeSkillUI.GetRecipeItemLink(tradeSkillId)
		if link then
			TooltipAnalyzeItem(self, link)
		end
	end
	
	local function OnTooltipHide(self)
		TABFeatureAppID = nil
	end
			
	for _,tipName in pairs({
		"GameTooltip",
		"ItemRefTooltip",
		"ItemRefShoppingTooltip1",
		"ItemRefShoppingTooltip2",
		"ShoppingTooltip1",
		"ShoppingTooltip2",
	}) do
		local tipFrame = _G[tipName]
		if tipFrame then
			tipFrame:HookScript("OnTooltipSetItem",OnTooltipSetItem)
			tipFrame:HookScript("OnHide",OnTooltipHide)
			hooksecurefunc(tipFrame,"SetRecipeReagentItem",OnTooltipSetRecipeReagentItem)
			hooksecurefunc(tipFrame,"SetRecipeResultItem",OnTooltipSetRecipeResultItem)
		end
	end

	eventsFrame:SetPropagateKeyboardInput(true)
	eventsFrame:SetScript("OnKeyDown",function (self,button)
		if button == "TAB" then
			if not GameTooltip:IsShown() or not TABFeatureAppID or not TABFeatureSlot then
				return
			end
			if not LoadData then
				LoadAddOn("Blizzard_Collections")
				if not LoadData then
					return
				end
			end
			LoadData()
			UpdateModel(models[1], TABFeatureAppID, TABLearnedItem)
			Model_OnClick(models[1],"LeftButton")
		end
	end)
end

do
	local CURRENT_SETS_TYPE = 1

	local setsFrame = CreateFrame("Frame",nil,UIParent)
	setsFrame:SetPoint("CENTER")
	setsFrame:SetSize(585,570)
	setsFrame:SetFrameStrata("DIALOG")
	setsFrame:EnableMouse(true)
	setsFrame:SetMovable(true)
	setsFrame:SetClampedToScreen(true)
	setsFrame:RegisterForDrag("LeftButton")
	setsFrame:SetScript("OnDragStart", function(self) 
		if self:IsMovable() then 
			self:StartMoving() 
		end 
	end)
	setsFrame:SetScript("OnDragStop", function(self)
		self:StopMovingOrSizing()
	end)

	setsFrame:Hide()
	
	_CreateShadowBack(setsFrame,true)
	
	setsFrame:SetBackdrop({bgFile = "Interface\\Buttons\\WHITE8X8",edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",tile = true,tileSize = 1,edgeSize = 8,insets = {left = 2,right = 2,top = 2,bottom = 2}})
	setsFrame:SetBackdropColor(0.2, 0.2, 0.2, 1) 
	setsFrame:SetBackdropBorderColor(0.25, 0.25, 0.25, 1)
	
	setsFrame.titleText = setsFrame:CreateFontString(nil, "OVERLAY","GameFontWhite", 2)
	setsFrame.titleText:SetFont(setsFrame.titleText:GetFont(),12)
	setsFrame.titleText:SetPoint("TOP",0,-6)
	setsFrame.titleText:SetJustifyH("LEFT")
	setsFrame.titleText:SetJustifyV("TOP")
	setsFrame.titleText:SetText("Sets")
	setsFrame.titleText:SetTextColor(1,.6,0,1)
	
	local closeButton = CreateFrame("Button",nil,setsFrame,"UIPanelCloseButton")
	closeButton:SetPoint("TOPRIGHT",3,2)
	closeButton:SetScript("OnClick",function()
		setsFrame:Hide()
	end)
	
	local sourcesFrame = CreateFrame("Frame",GlobalAddonName.."SetsFrameSourcesFrame",UIParent,"UIPanelDialogTemplate")
	sourcesFrame:SetSize(360,320)
	sourcesFrame:SetPoint("CENTER")
	sourcesFrame:SetFrameStrata("DIALOG")
	sourcesFrame:SetClampedToScreen(true)
	sourcesFrame:EnableMouse(true)
	sourcesFrame:SetMovable(true)
	sourcesFrame:RegisterForDrag("LeftButton")
	sourcesFrame:SetScript("OnDragStart", function(self) 
		self:StartMoving() 
	end)
	sourcesFrame:SetScript("OnDragStop", function(self) 
		self:StopMovingOrSizing() 
	end)
	sourcesFrame.title:SetText("Set Visuals")
	sourcesFrame:Hide()
	sourcesFrame:SetToplevel(true)
	sourcesFrame:SetFrameLevel(100)
	
	local function SourcesFrame_MoreInfo_OnClick(self)
		local visualID = self:GetParent().visualID
		FindVisualAndOpen(visualID,self:GetParent().visualIsCollected)
		mainFrame.sourcesFrame:SetFrameLevel(110)
	end

	sourcesFrame.lines = {}
	local function SourceFrame_CreateLine(i)
		if sourcesFrame.lines[i] then
			return sourcesFrame.lines[i]
		end
		local line = CreateFrame("Frame",nil,sourcesFrame)
		sourcesFrame.lines[i] = line
		line:SetPoint("TOPLEFT",10,-30-(i-1)*25)
		line:SetSize(1,20)
		
		line.itemName = line:CreateFontString(nil,"ARTWORK","GameFontWhite")
		line.itemName:SetPoint("LEFT",0,0)
		line.itemName:SetSize(180,20)
		line.itemName:SetJustifyH("LEFT")
		line.itemName:SetJustifyV("MIDDLE")
		
		line.itemNameFrame = CreateFrame("Button",nil,line)
		line.itemNameFrame:SetAllPoints(line.itemName)
		line.itemNameFrame:SetScript("OnEnter",SourcesFrame_ItemName_OnEnter)
		line.itemNameFrame:SetScript("OnLeave",SourcesFrame_HideTooltip)
		
		line.state = line:CreateFontString(nil,"ARTWORK","GameFontWhite")
		line.state:SetPoint("LEFT",line.itemName,"RIGHT",5,0)
		line.state:SetSize(95,20)
		line.state:SetJustifyH("LEFT")
		line.state:SetJustifyV("MIDDLE")
		
		line.moreInfo = CreateFrame("Button",nil,line,"UIPanelButtonTemplate")
		line.moreInfo:SetPoint("LEFT",line.state,"RIGHT",5,0)
		line.moreInfo:SetSize(50,20)
		line.moreInfo:SetText(">>>")
		line.moreInfo:SetScript("OnClick",SourcesFrame_MoreInfo_OnClick)
		
		return line
	end


	local function Model_OnClick(self,button)
		if IsModifiedClick("DRESSUP") then
			for i=1,#self.Equipped do
				DressUpItemLink(self.Equipped[i][1])
			end
			return
		end
		for i=1,#self.Equipped do
			local line = SourceFrame_CreateLine(i)
			
			local data = self.Equipped[i]
			local name,link = GetItemInfo(data[1])
			line.itemName:SetText(link)
			line.itemNameFrame.link = data[1]
			line.visualID = data[2]
			line.state:SetText(data[3] and "|cff00ff00Collected|r" or "|cffff0000Not collected|r") 
			line.visualIsCollected = data[3]
			line:Show()
		end
		for i=#self.Equipped+1,#sourcesFrame.lines do
			sourcesFrame.lines[i]:Hide()
		end
		sourcesFrame:SetHeight(40+#self.Equipped*25)
		sourcesFrame:Show()
	end
	
	local function Model_OnShow(self)
		self:SetUnit("player")
		self:Undress()
		if self.Equipped then
			for i=1,#self.Equipped do
				self:TryOn(self.Equipped[i][1])
			end
		end
	end
	
	local function Model_OnEnter(self)
		self.border:SetBackdropBorderColor(1, 1, 1, 1)
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		GameTooltip:AddLine(self.setData[1]..(IsDebugVersion and " SetID:"..self.setID or ""))
		if self.setData[2] then
			local titles = strjoin(", ", unpack(self.setData[2]))
			GameTooltip:AddLine(titles,1,1,1,true)
		end
		if mainFrame.bigModel:IsShown() then
			mainFrame.bigModel:Undress()
		end
		for i=1,#self.Equipped do
			local data = self.Equipped[i]
			local name,link = GetItemInfo(data[1])
			GameTooltip:AddDoubleLine(link or " ",data[3] and "|cff00ff00Collected|r" or "|cffff0000Not collected|r")
			if mainFrame.bigModel:IsShown() then
				mainFrame.bigModel:TryOn(data[1])
			end
		end
		GameTooltip:Show()
	end
	
	local function Model_OnLeave(self)
		if self.IsCollected then
			self.border:SetBackdropBorderColor(0, 1, 0, 1)
		else
			self.border:SetBackdropBorderColor(0.6, 0.6, 0.6, .8)
		end
		GameTooltip:Hide()
	end
	
	local models = {}
	for i=0,1 do
		for j=0,2 do
			local borderFrame = CreateFrame("Frame",nil,setsFrame)
		
			local model = CreateFrame("DressUpModel",nil,setsFrame)
			models[i*3+j+1] = model
			model:SetPoint("TOPLEFT",40+175*j,-30-250*i)
			model:SetSize(150,200)
			
			model.Equipped = {}
			
			model:SetScript("OnShow",Model_OnShow)
			model:SetScript("OnEnter",Model_OnEnter)
			model:SetScript("OnLeave",Model_OnLeave)
			model:SetScript("OnMouseUp",Model_OnClick)
			
			borderFrame:SetPoint("TOPLEFT",model,-4,4)
			borderFrame:SetPoint("BOTTOMRIGHT",model,4,-4)
			
			borderFrame:SetBackdrop({bgFile = "Interface\\Buttons\\WHITE8X8",edgeFile = "Interface\\Tooltips\\UI-Tooltip-Border",tile = true,tileSize = 1,edgeSize = 8,insets = {left = 2,right = 2,top = 2,bottom = 2}})
			borderFrame:SetBackdropColor(0.08, 0.08, 0.08, 1) 
			borderFrame:SetBackdropBorderColor(0.6, 0.6, 0.6, 1)
			
			model.border = borderFrame
			
			model.setName = model:CreateFontString(nil, "OVERLAY","GameFontWhite", 2)
			model.setName:SetFont(model.setName:GetFont(),10)
			model.setName:SetShadowColor(0,0,0)
			model.setName:SetShadowOffset(1,-1)
			model.setName:SetPoint("TOP",model,"BOTTOM",0,-4)
			model.setName:SetWidth(160)
			model.setName:SetMaxLines(1)
			
			local ProgressBar = CreateFrame("StatusBar",nil,model)
			ProgressBar:SetSize(130,13)
			ProgressBar:SetPoint("TOP",model,"BOTTOM",0,-20)
			ProgressBar:SetStatusBarTexture([[Interface\PaperDollInfoFrame\UI-Character-Skills-Bar]]) 
			ProgressBar:SetStatusBarColor(0.03125,0.85,0.0)
			do
				local borderLeft = ProgressBar:CreateTexture(nil,"OVERLAY")
				borderLeft:SetPoint("LEFT",-3,0)
				borderLeft:SetSize(8,17)
				borderLeft:SetTexture([[Interface\PaperDollInfoFrame\UI-Character-Skills-BarBorder]])
				borderLeft:SetTexCoord(0.007843,0.043137,0.193548,0.774193)
			
				local borderRight = ProgressBar:CreateTexture(nil,"OVERLAY")
				borderRight:SetPoint("RIGHT",4,0)
				borderRight:SetSize(8,17)
				borderRight:SetTexture([[Interface\PaperDollInfoFrame\UI-Character-Skills-BarBorder]])
				borderRight:SetTexCoord(0.043137,0.007843,0.193548,0.774193)
			
				local borderMid = ProgressBar:CreateTexture(nil,"OVERLAY")
				borderMid:SetPoint("TOPLEFT",borderLeft,"TOPRIGHT")
				borderMid:SetPoint("BOTTOMRIGHT",borderRight,"BOTTOMLEFT")
				borderMid:SetTexture([[Interface\PaperDollInfoFrame\UI-Character-Skills-BarBorder]])
				borderMid:SetTexCoord(0.113726,0.1490196,0.193548,0.774193)
				
				local Background = ProgressBar:CreateTexture(nil,"BACKGROUND",nil,-1)
				Background:SetAllPoints()
				Background:SetColorTexture(0,0,0,1)
				
				local text = ProgressBar:CreateFontString(nil,"OVERLAY","TextStatusBarText",1)
				text:SetPoint("CENTER",0,0)
				text:SetSize(0,9)
				text:SetJustifyH("CENTER")
				ProgressBar.text = text
			end
			
			model.ProgressBar = ProgressBar
		end
	end
	
	local currentPage, currentMaxPages = 1, 1
	
	local function UpdateSetModel(model,setID)
		model:Show()
		model.border:Show()
		model:Undress()
		
		wipe(model.Equipped)
		
		local collected = 0
		
		local setData = Sets[CURRENT_SETS_TYPE][setID]
		for i=3,#setData do
			local visualID = setData[i]
			local visualData = Visuals[ visualID ]
			local item = visualData[1]
			local itemID = type(item) == 'number' and item or tonumber(item:match("^(%d+)"))
			local itemLink = "item:"..itemID
			
			if type(item) == 'string' then
				local count = 0
				for j=1,#item do
					if item:sub(j,j) == ":" then
						count = count + 1
					end
				end
				itemLink = itemLink .. "::::::::"..UnitLevel'player'.."::::"..count..":"..item:gsub("^%d+:","")
			end
			
			local isCollected = PlayerHasTransmog(itemLink)
			if isCollected then
				collected = collected + 1
			end
			
			GetItemInfo(itemLink)	--Cache it
			
			model:TryOn(itemLink)
			model.Equipped[#model.Equipped + 1] = {itemLink,visualID,isCollected}
		end
		model.setData = setData
		model.setID = setID
		
		if setData[2] then	
			model.setName:SetText(strjoin(", ", unpack(setData[2])))
		else
			model.setName:SetText(setData[1] or "")
		end
		
		local total = #setData - 2
		
		model.ProgressBar:SetMinMaxValues(0, total)
		model.ProgressBar:SetValue(collected)
		model.ProgressBar.text:SetFormattedText(HEIRLOOMS_PROGRESS_FORMAT, collected, total)
		
		model.IsCollected = collected == total
		Model_OnLeave(model)
	end
	
	local UpdateSetPage
	
	local PageText = setsFrame:CreateFontString(nil,"ARTWORK","GameFontWhite")
	PageText:SetPoint("BOTTOM",-57,28)
	PageText:SetJustifyH("RIGHT")
	
	local PrevPageButton = CreateFrame("Button",nil,setsFrame)
	PrevPageButton:SetPoint("BOTTOM",20,18)
	PrevPageButton:SetSize(32,32)
	PrevPageButton:SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Up") 
	PrevPageButton:SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Down") 
	PrevPageButton:SetDisabledTexture("Interface\\Buttons\\UI-SpellbookIcon-PrevPage-Disabled") 
	PrevPageButton:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight","ADD") 
	PrevPageButton:SetScript("OnClick",function ()
		currentPage = max(1,currentPage - 1)
		UpdateSetPage()
	end)
	
	local NextPageButton = CreateFrame("Button",nil,setsFrame)
	NextPageButton:SetPoint("BOTTOM",55,18)
	NextPageButton:SetSize(32,32)
	NextPageButton:SetNormalTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Up") 
	NextPageButton:SetPushedTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Down") 
	NextPageButton:SetDisabledTexture("Interface\\Buttons\\UI-SpellbookIcon-NextPage-Disabled") 
	NextPageButton:SetHighlightTexture("Interface\\Buttons\\UI-Common-MouseHilight","ADD")
	NextPageButton:SetScript("OnClick",function ()
		currentPage = min(currentMaxPages,currentPage + 1)
		UpdateSetPage()
	end)
	
	setsFrame:SetScript("OnMouseWheel",function (self,delta)
		if delta < 0 and NextPageButton:IsEnabled() then
			NextPageButton:Click()
		elseif delta > 0 and PrevPageButton:IsEnabled() then
			PrevPageButton:Click()
		end
	end)
	
	function UpdateSetPage()
		GameTooltip_Hide()
	
		PageText:SetFormattedText(COLLECTION_PAGE_NUMBER, currentPage, currentMaxPages)
		if currentPage == 1 then PrevPageButton:Disable() else PrevPageButton:Enable() end
		if currentPage >= currentMaxPages then NextPageButton:Disable() else NextPageButton:Enable() end
	
		local pos = (currentPage - 1) * #models + 1
		local m_c = 0
		
		for i=pos,#SetsAllData[CURRENT_SETS_TYPE] do
			m_c = m_c + 1
			local model = models[m_c]
			
			UpdateSetModel(model, SetsAllData[CURRENT_SETS_TYPE][i])
			
			if m_c >= #models then
				break
			end
		end
		for i=m_c+1,#models do
			models[i]:Hide()
			models[i].border:Hide()
		end
	end
	
	setsFrame:SetScript("OnShow",function(self)
		--self:SetScript("OnShow",nil)
		
		for i=1,6 do
			local model = models[i]
			model:SetUnit("player")
			model:Undress()
		end
		
		local total = #SetsAllData[CURRENT_SETS_TYPE]
		
		currentMaxPages = ceil(total / #models)
		UpdateSetPage()
	end)

	local function ButtonOnEnter(self)
		if not self.tooltip then return end
		GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
		GameTooltip:AddLine(self.tooltip)
		GameTooltip:Show()
	end
	local function ButtonOnLeave(self)
		GameTooltip_Hide()
	end
	
	
	local ButtonDropDown = CreateFrame("Button",GlobalAddonName.."SetsButtonDropDown",UIParent,"UIDropDownMenuTemplate")
	
	local isInited = false
	local function InitButtonDropDown(self, level)
		local info = UIDropDownMenu_CreateInfo()
		if level == 1 then
			info.hasArrow = false
			info.isNotRadio = true
			info.notCheckable = true
			
			info.text = "Item Sets"
			info.func = function()
				CURRENT_SETS_TYPE = 1
				currentPage = 1
				setsFrame:Show()
			end
			UIDropDownMenu_AddButton(info, level)
			
			info.text = "Transmog Sets [by wowhead.com]"
			info.func = function()
				CURRENT_SETS_TYPE = 2
				currentPage = 1
				setsFrame:Show()
			end
			UIDropDownMenu_AddButton(info, level)
		end
	end
	
	local function ButtonOnClick(self)
		LoadData()
		if not isInited then
			UIDropDownMenu_Initialize(ButtonDropDown, InitButtonDropDown , "MENU")
			isInited = true
		end
		PlaySound("igMainMenuOptionCheckBoxOn")
		ToggleDropDownMenu(1, nil, ButtonDropDown, self, 20, 5)
	end

	
	function AddSetsButton()
		local button = CreateFrame("Button",nil,WardrobeCollectionFrame)
		button:SetPoint("TOPRIGHT",WardrobeCollectionFrameWeaponDropDown,-45,-29)
		button:SetSize(31,31)
		button:SetScript("OnClick",ButtonOnClick)
		button:SetScript("OnEnter",ButtonOnEnter)
		button:SetScript("OnLeave",ButtonOnLeave)
		button.tooltip = "Sets"
		
		local normalTexture = button:CreateTexture(nil,"BACKGROUND")
		normalTexture:SetAllPoints()
		normalTexture:SetTexture([[Interface\AddOns\LegionWardrobe\Transmogrify]])
		normalTexture:SetTexCoord(231/512,266/512,48/512,85/512)
		
		local highlightTexture = button:CreateTexture(nil,"BACKGROUND")
		highlightTexture:SetSize(31,31)
		highlightTexture:SetAtlas("bags-roundhighlight")
		highlightTexture:SetPoint("CENTER",0,1)
		
		button:SetNormalTexture(normalTexture) 
		button:SetHighlightTexture(highlightTexture,"ADD") 
		
		tinsert(mainFrame.hideButtonsList,button)
	end
end