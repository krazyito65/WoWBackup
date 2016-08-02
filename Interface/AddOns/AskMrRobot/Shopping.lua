local Amr = LibStub("AceAddon-3.0"):GetAddon("AskMrRobot")
local L = LibStub("AceLocale-3.0"):GetLocale("AskMrRobot", true)
local AceGUI = LibStub("AceGUI-3.0")

local _frameShop
local _panelContent
local _cboPlayers
local _selectedPlayer

local _specs = {
	[1] = true,
	[2] = true,
	[3] = true,
	[4] = true,
}

local _chk1
local _chk2
local _chk3
local _chk4
local _isAhOpen = false

local function onShopFrameClose(widget)
	AceGUI:Release(widget)
	_frameShop = nil
	_cboPlayers = nil
	_chk1 = nil
	_chk2 = nil
	_chk3 = nil
	_chk4 = nil
	_panelContent = nil
end

function Amr:HideShopWindow()
	if not _frameShop then return end
	_frameShop:Hide()
end

local function onPlayerChange(widget, eventName, value)
	_selectedPlayer = value
	Amr:RefreshShoppingUi()
end

local function onSpecClick(widget)
	local spec = widget:GetUserData("spec")	
	_specs[spec] = not _specs[spec]
	
	Amr:RefreshShoppingUi()
end

local function onItemClick(widget)
	local name = widget:GetUserData("itemName")
	if name then
		QueryAuctionItems(name)
	end
end

function Amr:ShowShopWindow()
	if not _frameShop then
		_frameShop = AceGUI:Create("AmrUiFrame")
		_frameShop:SetStatusTable(Amr.db.profile.shopWindow) -- window position is remembered in db
		_frameShop:SetCallback("OnClose", onShopFrameClose)
		_frameShop:SetLayout("None")
		_frameShop:SetWidth(500)
		_frameShop:SetHeight(500)
		_frameShop:SetBorderColor(Amr.Colors.BorderBlue)
		_frameShop:SetBackgroundColor(Amr.Colors.Bg)
		
		if Amr.db.profile.options.uiScale ~= 1 then
			local scale = tonumber(Amr.db.profile.options.uiScale)
			_frameShop:SetScale(scale)
		end
		
		local lbl = AceGUI:Create("AmrUiLabel")
		lbl:SetWidth(400)
		lbl:SetFont(Amr.CreateFont("Bold", 28, Amr.Colors.White))
		lbl:SetText(L.ShopTitle)
		lbl:SetWordWrap(false)
		lbl:SetJustifyH("CENTER")
		lbl:SetPoint("TOP", _frameShop.content, "TOP", 0, 30)
		_frameShop:AddChild(lbl)
		
		lbl:SetCallback("OnMouseDown", function(widget) _frameShop:StartMove() end)
		lbl:SetCallback("OnMouseUp", function(widget) _frameShop:EndMove() end)
		
		-- player picker
		_cboPlayers = AceGUI:Create("AmrUiDropDown")
		_cboPlayers:SetWidth(400)
		_cboPlayers:SetPoint("TOPLEFT", _frameShop.content, "TOPLEFT", 0, -30)
		_frameShop:AddChild(_cboPlayers)
		
		-- spec pickers
		_chk1 = AceGUI:Create("AmrUiCheckBox")
		_chk1:SetPoint("TOPLEFT", _cboPlayers.frame, "BOTTOMLEFT", 0, -20)
		_chk1:SetUserData("spec", 1)
		_chk1:SetCallback("OnClick", onSpecClick)
		_frameShop:AddChild(_chk1)
		
		_chk2 = AceGUI:Create("AmrUiCheckBox")
		_chk2:SetPoint("LEFT", _chk1.frame, "RIGHT", 30, 0)
		_chk2:SetUserData("spec", 2)
		_chk2:SetCallback("OnClick", onSpecClick)
		_frameShop:AddChild(_chk2)
		
		_chk3 = AceGUI:Create("AmrUiCheckBox")
		_chk3:SetPoint("LEFT", _chk2.frame, "RIGHT", 30, 0)
		_chk3:SetUserData("spec", 3)
		_chk3:SetCallback("OnClick", onSpecClick)
		_frameShop:AddChild(_chk3)
		
		_chk4 = AceGUI:Create("AmrUiCheckBox")
		_chk4:SetPoint("LEFT", _chk3.frame, "RIGHT", 30, 0)
		_chk4:SetUserData("spec", 4)
		_chk4:SetCallback("OnClick", onSpecClick)
		_frameShop:AddChild(_chk4)
		
		_panelContent = AceGUI:Create("AmrUiPanel")
		_panelContent:SetLayout("None")
		_panelContent:SetTransparent()
		_panelContent:SetPoint("TOPLEFT", _chk1.frame, "BOTTOMLEFT", 0, -10)
		_panelContent:SetPoint("BOTTOMRIGHT", _frameShop.content, "BOTTOMRIGHT")
		_frameShop:AddChild(_panelContent)
		
		-- update shopping list data
		local player = Amr:ExportCharacter()
		Amr:UpdateShoppingData(player)
		
		-- fill player list	
		local playerList = {}
		for name, data in pairs(Amr.db.global.Shopping) do
			table.insert(playerList, { text = name, value = name })
		end	
		_cboPlayers:SetItems(playerList)
		
		-- set default selected player
		if not _selectedPlayer then
			_selectedPlayer = player.Name .. "-" .. player.Realm
		end	
		_cboPlayers:SelectItem(_selectedPlayer)
		
		Amr:RefreshShoppingUi()
		
		-- set event on dropdown after UI has been initially rendered
		_cboPlayers:SetCallback("OnChange", onPlayerChange)
	else
		_frameShop:Show()
		Amr:RefreshShoppingUi()
	end
	
	_frameShop:Raise()
end

-- helper to render a section of the shopping list
local function renderShopSection(list, scroll, header)
	if not list or next(list) == nil then return end
	
	local w = 440
	
	local panel = AceGUI:Create("AmrUiPanel")
	panel:SetLayout("None")
	panel:SetTransparent()
	panel:SetWidth(w)
	panel:SetHeight(40)
	scroll:AddChild(panel)
	
	local lbl = AceGUI:Create("AmrUiLabel")
	lbl:SetWidth(w)
	lbl:SetFont(Amr.CreateFont("Regular", 18, Amr.Colors.TextHeaderActive))
	lbl:SetText(header)
	lbl:SetPoint("BOTTOMLEFT", panel.content, "BOTTOMLEFT")
	panel:AddChild(lbl)
	
	for itemId, count in pairs(list) do
		panel = AceGUI:Create("AmrUiPanel")
		panel:SetLayout("None")
		panel:SetTransparent()
		panel:SetWidth(w)
		panel:SetHeight(30)
		scroll:AddChild(panel)
		
		lbl = AceGUI:Create("AmrUiLabel")
		lbl:SetWidth(35)
		lbl:SetWordWrap(false)
		lbl:SetFont(Amr.CreateFont("Bold", 20, Amr.Colors.White))
		lbl:SetText(count .. "x")
		lbl:SetPoint("LEFT", panel.content, "LEFT")
		panel:AddChild(lbl)
		
		local icon = AceGUI:Create("AmrUiIcon")
		icon:SetBorderWidth(1)
		icon:SetIconBorderColor(Amr.Colors.White)
		icon:SetWidth(18)
		icon:SetHeight(18)
		icon:SetPoint("LEFT", lbl.frame, "RIGHT", 5, 0)
		panel:AddChild(icon)
		
		local btn = AceGUI:Create("AmrUiTextButton")
		btn:SetWidth(w - 30 - 18 - 15)
		btn:SetJustifyH("LEFT")
		btn:SetWordWrap(false)
		btn:SetFont(Amr.CreateFont("Bold", 14, Amr.Colors.White))
		btn:SetHoverFont(Amr.CreateFont("Bold", 14, Amr.Colors.White))
		btn:SetPoint("LEFT", icon.frame, "RIGHT", 5, 0)
		btn:SetCallback("OnClick", onItemClick)
		panel:AddChild(btn)
		
		Amr.GetItemInfo(itemId, function(obj, name, link, quality, iLevel, reqLevel, class, subclass, maxStack, equipSlot, texture)					
			-- set icon, name, and a tooltip
			obj.itemIcon:SetIcon(texture)
			obj.itemText:SetText(link:gsub("%[", ""):gsub("%]", ""))
			obj.itemText:SetUserData("itemName", name)
			Amr:SetItemTooltip(obj.itemText, link)
		end, { itemIcon = icon, itemText = btn })
	end
	
end

function Amr:RefreshShoppingUi()

	_chk1:SetVisible(false)
	_chk2:SetVisible(false)
	_chk3:SetVisible(false)
	_chk4:SetVisible(false)
	
	_chk1:SetChecked(false)
	_chk2:SetChecked(false)
	_chk3:SetChecked(false)
	_chk4:SetChecked(false)
	
	-- clear out any previous data
	_panelContent:ReleaseChildren()
	
	local data = Amr.db.global.Shopping[_selectedPlayer]
	if not data then		
		_panelContent:SetLayout("None")
		
		local lbl = AceGUI:Create("AmrUiLabel")
		lbl:SetFont(Amr.CreateFont("Italic", 18, Amr.Colors.TextTan))
		lbl:SetText(L.ShopEmpty)
		lbl:SetJustifyH("CENTER")
		lbl:SetPoint("TOP", _panelContent.content, "TOP", 0, -30)
		_panelContent:AddChild(lbl)
	else
		-- set labels on checkboxes
		if data.specs[1] and data.specs[1] ~= 0 then
			_chk1:SetText(L.SpecsShort[data.specs[1]])
			_chk1:SetVisible(true)
			_chk1:SetChecked(_specs[1])
		end
		
		if data.specs[2] and data.specs[2] ~= 0 then
			_chk2:SetText(L.SpecsShort[data.specs[2]])
			_chk2:SetVisible(true)
			_chk2:SetChecked(_specs[2])
		end
		
		if data.specs[3] and data.specs[3] ~= 0 then
			_chk3:SetText(L.SpecsShort[data.specs[3]])
			_chk3:SetVisible(true)
			_chk3:SetChecked(_specs[3])
		end
		
		if data.specs[4] and data.spes[4] ~= 0 then
			_chk4:SetText(L.SpecsShort[data.specs[4]])
			_chk4:SetVisible(true)
			_chk4:SetChecked(_specs[4])
		end
		
		local spec = 0
		if not _specs[1] and not _specs[2] and not _specs[3] and not _specs[4] then
			-- all unchecked, show nothing
		else
			-- both is 0, otherwise the one that is selected
			if not _specs[1] or not _specs[2] then
				spec = _specs[1] and 1 or 2
			end
			
			_panelContent:SetLayout("Fill")
			
			local scroll = AceGUI:Create("AmrUiScrollFrame")
			scroll:SetLayout("List")
			_panelContent:AddChild(scroll)
			
			renderShopSection(data.gems[spec], scroll, L.ShopHeaderGems)
			renderShopSection(data.enchants[spec], scroll, L.ShopHeaderEnchants)		
			renderShopSection(data.materials[spec], scroll, L.ShopHeaderMaterials)
		end
	end
				
end

-- compare gear to everything the player owns, and return the minimum gems/enchants/materials needed to optimize
local function getShoppingData(player, gear, spec)

	local ret = {
		gems = {},
		enchants = {},
		materials = {}
	}
	
	-- used to prevent considering the same item twice
	local usedItems = {}
	
	for slotId, optimalItem in pairs(gear) do
		local matchItemLink, matchItem = Amr:FindMatchingItem(optimalItem, player, usedItems)
		local itemInfo = Amr.db.char.ExtraItemData[spec][optimalItem.id]
		
		-- find gem/enchant differences on the best-matching item
		
		-- gems
		if itemInfo and itemInfo.socketColors then
			for i = 1, #itemInfo.socketColors do
				local g = optimalItem.gemIds[i]
				local isGemEquipped = g ~= 0 and matchItem and matchItem.gemIds and matchItem.gemIds[i] == g
				
				if not isGemEquipped then
					ret.gems[g] = ret.gems[g] and ret.gems[g] + 1 or 1
				end
			end
		end
		
		-- enchant
		if optimalItem.enchantId and optimalItem.enchantId ~= 0 then
			local e = optimalItem.enchantId
			local isEnchantEquipped = matchItem and matchItem.enchantId and matchItem.enchantId == e
			
			if not isEnchantEquipped then
				ret.enchants[e] = ret.enchants[e] and ret.enchants[e] + 1 or 1
			end
		end
	end
	
	return ret
end

-- get the number of a specified item that the player currently owns
local function getOwnedCount(itemId)
	local ret = 0
	
	local list = Amr.db.char.BagItemsAndCounts
	if list and list[itemId] then
		ret = ret + list[itemId]
	end
	
	list = Amr.db.char.BankItemsAndCounts
	if list and list[itemId] then
		ret = ret + list[itemId]
	end
	
	return ret
end

-- look at both gear sets and find stuff that a player needs to acquire to gem/enchant their gear
function Amr:UpdateShoppingData(player)

	-- TODO: re-enable shopping list when Legion comes out
	do return end
	
	-- 0 is combination of all specs
	local required = {
		gems = {
			[0] = {},
			[1] = {},
			[2] = {},
			[3] = {},
			[4] = {}
		},
		enchants = {
			[0] = {},
			[1] = {},
			[2] = {},
			[3] = {},
			[4] = {}
		},
		materials = {
			[0] = {},
			[1] = {},
			[2] = {},
			[3] = {},
			[4] = {}
		},
		specs = player.Specs
	}
	
	local enchantItemIdToId = {}
	
	for spec, gear in pairs(Amr.db.char.GearSets) do
		local obj = getShoppingData(player, gear, spec)
		for k, v in pairs(obj.gems) do
			local gemInfo = Amr.db.char.ExtraGemData[spec][k]
			if gemInfo then
				local prev = required.gems[spec][gemInfo.id]
				required.gems[spec][gemInfo.id] = prev and prev + v or v
				
				prev = required.gems[0][gemInfo.id]
				required.gems[0][gemInfo.id] = prev and prev + v or v
			end
		end
		for k, v in pairs(obj.enchants) do
			local enchInfo = Amr.db.char.ExtraEnchantData[spec][k]
			if enchInfo then
				enchantItemIdToId[enchInfo.itemId] = k
				
				local prev = required.enchants[spec][enchInfo.itemId]
				required.enchants[spec][enchInfo.itemId] = prev and prev + v or v
				
				prev = required.enchants[0][enchInfo.itemId]
				required.enchants[0][enchInfo.itemId] = prev and prev + v or v
			end
		end
	end
	
	-- now subtract stuff the player already has, and generate a list of materials as well
	for spec = 0, 4 do
		local specId = spec == 0 and 1 or GetSpecializationInfo(spec)
		if specId then
			-- now check if the player has any of the gems or enchants in their inventory, and subtract those
			for itemId, count in pairs(required.gems[spec]) do
				required.gems[spec][itemId] = math.max(count - getOwnedCount(itemId), 0)
				
				if required.gems[spec][itemId] == 0 then
					required.gems[spec][itemId] = nil
				end
			end
			
			for itemId, count in pairs(required.enchants[spec]) do
				-- look in both spec extra info cache
				local e = enchantItemIdToId[itemId]		
				local enchInfo = nil
				if Amr.db.char.ExtraEnchantData[1] then
					enchInfo = Amr.db.char.ExtraEnchantData[1][e]
				end
				if not enchInfo then
					if Amr.db.char.ExtraEnchantData[2] then
						enchInfo = Amr.db.char.ExtraEnchantData[2][e]
					end
				end
				
				if enchInfo then
					required.enchants[spec][itemId] = math.max(count - getOwnedCount(itemId), 0)

					if required.enchants[spec][itemId] == 0 then
						required.enchants[spec][itemId] = nil
					else
						-- count up required materials
						if enchInfo.materials then
							local c = required.enchants[spec][itemId]
							for k, v in pairs(enchInfo.materials) do
								local prev = required.materials[spec][k]
								required.materials[spec][k] = prev and prev + (v * c) or (v * c)
							end
						end
					end			
				end	
			end
			
			-- check if player has any of the materials already
			for itemId, count in pairs(required.materials[spec]) do
				required.materials[spec][itemId] = math.max(count - getOwnedCount(itemId), 0)
				
				if required.materials[spec][itemId] == 0 then
					required.materials[spec][itemId] = nil
				end
			end
		end
	end
	
	Amr.db.global.Shopping[player.Name .. "-" .. player.Realm] = required
end

-- TODO: re-enable shopping list with Legion
--[[
Amr:AddEventHandler("AUCTION_HOUSE_SHOW", function() 
	_isAhOpen = true
	if Amr.db.profile.options.shopAh then
		Amr:ShowShopWindow()
	end
end)

Amr:AddEventHandler("AUCTION_HOUSE_CLOSED", function() 
	_isAhOpen = false
	if Amr.db.profile.options.shopAh then
		Amr:HideShopWindow()
	end
end)
]]