local addonName = "Altoholic"
local addon = _G[addonName]

local L = LibStub("AceLocale-3.0"):GetLocale(addonName)

local SPELLS_PER_PAGE = 12

addon.Spellbook = {}

local ns = addon.Spellbook		-- ns = namespace

local parent = "AltoholicFrameSpellbook"
local currentSchool
local currentPage

function ns:OnEnter(frame)

	if frame.spellID then 
		AltoTooltip:SetOwner(frame, "ANCHOR_LEFT");
		AltoTooltip:ClearLines();
		AltoTooltip:SetHyperlink("spell:" ..frame.spellID);
		AltoTooltip:Show();
	elseif frame.glyphID then 
		AltoTooltip:SetOwner(frame, "ANCHOR_LEFT");
		AltoTooltip:ClearLines();
		AltoTooltip:SetGlyphByID(frame.glyphID);
		AltoTooltip:Show();
	end
end

function ns:OnClick(frame, button)
	if button ~= "LeftButton" or not IsShiftKeyDown() then return end
	
	local chat = ChatEdit_GetLastActiveWindow()
	if not chat:IsShown() then return end
	
	local link, _
	
	if frame.spellID then
		link = DataStore:GetCompanionLink(frame.spellID)
	elseif frame.glyphID then
		_, _, link = DataStore:GetGlyphInfoByID(frame.glyphID)
	end
	
	if link then
		chat:Insert(link)
	end
end

local function SetPage(pageNum)
	currentPage = pageNum
	
	local character = addon.Tabs.Characters:GetAltKey()
	
	if currentPage == 1 then
		_G[parent .. "PrevPage"]:Disable()
	else
		_G[parent .. "PrevPage"]:Enable()
	end
	
	local maxPages = 1

	if currentSchool then
		maxPages = ceil(DataStore:GetNumSpells(character, currentSchool) / SPELLS_PER_PAGE)
	end
	
	if maxPages == 0 then
		maxPages = 1
	end
	
	if currentPage == maxPages then
		_G[parent .. "NextPage"]:Disable()
	else
		_G[parent .. "NextPage"]:Enable()
	end

	_G[parent .. "_PageNumber"]:SetText(format(PAGE_NUMBER, currentPage))	
	
	if currentSchool then ns:Update() end
end

function ns:GoToPreviousPage()
	SetPage(currentPage - 1)

end

function ns:GoToNextPage()
	SetPage(currentPage + 1)
end

function ns:Update()
	local character = addon.Tabs.Characters:GetAltKey()
	AltoholicTabCharacters.Status:SetText(format("%s|r / %s / %s", DataStore:GetColoredCharacterName(character), SPELLBOOK, currentSchool))
	
	local itemName, itemButton
	local spellID, availableAt

	local maxSpells = DataStore:GetNumSpells(character, currentSchool)
	local offset = (currentPage-1) * SPELLS_PER_PAGE
	local spellIndex = offset + 1
	
	local index = 1
	while index <= SPELLS_PER_PAGE do
		spellID, availableAt = DataStore:GetSpellInfo(character, currentSchool, spellIndex)
		
		if spellID then
			itemName = parent .. "_SpellIcon" .. index
			itemButton = _G[itemName]
			itemButton.spellID = spellID
			itemButton.glyphID = nil
	
			local name, info, icon = GetSpellInfo(spellID)
			
			addon:SetItemButtonTexture(itemName, icon, 30, 30)
			_G[itemName .. "SpellName"]:SetText(name)
			_G[itemName .. "SpellName"]:Show()
			
			_G[itemName .. "SubSpellName"]:Show()
			
			if availableAt == 0 then	-- 0 = already known
				_G[itemName .. "SpellName"]:SetTextColor(NORMAL_FONT_COLOR.r, NORMAL_FONT_COLOR.g, NORMAL_FONT_COLOR.b)
				_G[itemName .. "SubSpellName"]:SetText(info)
				_G[itemName .. "SubSpellName"]:SetTextColor(0.50, 0.25, 0)
				_G[itemName .. "IconTexture"]:SetDesaturated(false)
				_G[itemName .. "IconTexture"]:SetVertexColor(1.0, 1.0, 1.0)
			else
				_G[itemName .. "SpellName"]:SetTextColor(0.4, 0.4, 0.4)
				_G[itemName .. "SubSpellName"]:SetFormattedText(SPELLBOOK_AVAILABLE_AT, availableAt)
				_G[itemName .. "SubSpellName"]:SetTextColor(0.4, 0.4, 0.4)
				_G[itemName .. "IconTexture"]:SetDesaturated(true)
				_G[itemName .. "IconTexture"]:SetVertexColor(0.4, 0.4, 0.4)
			end
			
			itemButton:Show()
			index = index + 1
		end
		
		spellIndex = spellIndex + 1
	
		if spellIndex > maxSpells then
			break
		end
	end
	
	while index <= SPELLS_PER_PAGE do
		itemButton = _G[parent .. "_SpellIcon" .. index]
		itemButton:Hide()
		index = index + 1
	end
	
	_G[ parent ]:Show()
end

function ns:SetSchool(school)
	currentSchool = school
	SetPage(1)
end
