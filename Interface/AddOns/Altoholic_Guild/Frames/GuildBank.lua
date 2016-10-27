local addonName = "Altoholic"
local addon = _G[addonName]
local colors = addon.Colors

local L = LibStub("AceLocale-3.0"):GetLocale(addonName)

local THIS_ACCOUNT = "Default"
local NUM_GUILDBANK_ROWS = 7
local MAX_BANK_TABS = 8

local currentGuildKey
local currentGuildBankTab = 0

local function _Init(frame)
	local menuIcons = frame.MenuIcons
	menuIcons.RarityIcon:SetRarity(addon:GetOption("UI.Tabs.Guild.BankItemsRarity"))
		
	-- load the drop down with a guild
	local currentRealm = GetRealmName()
	local currentGuild = GetGuildInfo("player")
	
	-- if the player is not in a guild, set the drop down to the first available guild on this realm, if any.
	if not currentGuild then
		-- if the guild that will be displayed is not the one the current player is in, then disable the button
		menuIcons.UpdateIcon:Disable()
		menuIcons.UpdateIcon.Icon:SetDesaturated(true)
	
		for guildName, guild in pairs(DataStore:GetGuilds(currentRealm, THIS_ACCOUNT)) do
			local money = DataStore:GetGuildBankMoney(guild)
			if money then		-- if money is not nil, the guild bank has been populated
				currentGuild = guildName
				break	-- if there's at least one guild, let's set the right value and break immediately
			end
		end
	end
	
	-- if the current guild or at least a guild on this realm was found..set the right values
	if currentGuild then
		currentGuildKey = DataStore:GetThisGuildKey()

		-- pick the first available tab
		for i = 1, MAX_BANK_TABS do 
			local tabName = DataStore:GetGuildBankTabName(currentGuildKey, i)
			if tabName then
				currentGuildBankTab = i
				break
			end
		end
	end
	
	frame:UpdateBankTabButtons()
end

local function _Update(frame)
	if not currentGuildKey or not currentGuildBankTab then		-- no tab found ? exit
		for rowIndex = 1, NUM_GUILDBANK_ROWS do
			frame["Entry"..rowIndex]:Hide()
		end
		return 
	end
	
	local tab = DataStore:GetGuildBankTab(currentGuildKey, currentGuildBankTab)
	if not tab.name then return end		-- tab not yet scanned ? exit
	
	local _, _, guildName = strsplit(".", currentGuildKey)
	AltoholicTabGuild.Status:SetText(format("%s %s/ %s", colors.green..guildName, colors.white, tab.name))

	frame.Info1:SetText(format(L["Last visit: %s by %s"], colors.green..tab.ClientDate..colors.white, colors.green..tab.visitedBy))
	local localTime, realmTime
	localTime = format("%s%02d%s:%s%02d", colors.green, tab.ClientHour, colors.white, colors.green, tab.ClientMinute )
	realmTime = format("%s%02d%s:%s%02d", colors.green, tab.ServerHour, colors.white, colors.green, tab.ServerMinute )
	frame.Info2:SetText(format(L["Local Time: %s   %sRealm Time: %s"], localTime, colors.white, realmTime))
	
	local money = DataStore:GetGuildBankMoney(currentGuildKey)
	frame.Info3:SetText(MONEY .. ": " .. addon:GetMoneyString(money or 0, colors.white))
	
	local rarity = addon:GetOption("UI.Tabs.Guild.BankItemsRarity")
	
	local rowFrame
	local itemButton
	
	for rowIndex = 1, NUM_GUILDBANK_ROWS do
		rowFrame = frame["Entry"..rowIndex]
	
		local from = mod(rowIndex, NUM_GUILDBANK_ROWS)
		if from == 0 then from = NUM_GUILDBANK_ROWS end
	
		for columnIndex = 14, 1, -1 do
			itemButton = rowFrame["Item" .. columnIndex]
			itemButton.IconBorder:Hide()
			itemButton.Icon:SetDesaturated(false)
			
			local itemIndex = from + ((columnIndex - 1) * NUM_GUILDBANK_ROWS)
			
			local itemID, itemLink, itemCount = DataStore:GetSlotInfo(tab, itemIndex)
			
			if itemID then
				itemButton.Icon:SetTexture(GetItemIcon(itemID))
				
				if rarity ~= 0 then
					local _, _, itemRarity = GetItemInfo(itemID)
					if itemRarity and itemRarity == rarity then
						local r, g, b = GetItemQualityColor(itemRarity)
						itemButton.IconBorder:SetVertexColor(r, g, b, 0.5)
						itemButton.IconBorder:Show()
					else
						itemButton.Icon:SetDesaturated(true)
					end
				end
			else
				itemButton.Icon:SetTexture("Interface\\PaperDoll\\UI-Backpack-EmptySlot")
			end
			
			itemButton.id = itemID
			itemButton.link = itemLink
			itemButton:SetScript("OnEnter", function(self) 
					addon:Item_OnEnter(self)
				end)
			
			if not itemCount or (itemCount < 2) then
				itemButton.Count:Hide();
			else
				itemButton.Count:SetText(itemCount);
				itemButton.Count:Show();
			end
		
			itemButton:Show()
		end
		rowFrame:Show()
	end
	
	frame:Show()
end

local function _UpdateBankTabButtons(frame)
	if not currentGuildKey then return end
	
	for i = 1, MAX_BANK_TABS do 
		local button = frame["TabButton"..i]
		local tabName = DataStore:GetGuildBankTabName(currentGuildKey, i)
	
		if tabName then
			local icon = DataStore:GetGuildBankTabIcon(currentGuildKey, i)
			local iconNumber = tonumber(icon)
			
			button.Icon:SetTexture(iconNumber or icon)
			button:Show()
		else
			button:Hide()
		end
	end
end

local function _GetCurrentGuild(frame)
	return currentGuildKey
end

local function _SetCurrentGuild(frame, newGuild)
	currentGuildKey = newGuild
end

local function _GetCurrentBankTab(frame)
	return currentGuildBankTab
end

local function _SetCurrentBankTab(frame, newBankTab)
	currentGuildBankTab = newBankTab
	frame:Update()
end

addon:RegisterClassExtensions("AltoGuildBank", {
	Init = _Init,
	Update = _Update,
	GetCurrentGuild = _GetCurrentGuild,
	SetCurrentGuild = _SetCurrentGuild,
	GetCurrentBankTab = _GetCurrentBankTab,
	SetCurrentBankTab = _SetCurrentBankTab,
	UpdateBankTabButtons = _UpdateBankTabButtons,
})
