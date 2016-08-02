local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local kLibView = _G.kLibView

--[[ Create a BidDialog frame
]]
function kLibView:View_BidDialog_Create(auction)
	auction = self:Auction_Get(auction)
	if not auction then return end
	local viewId = 'Bid'
	
	local dialog = self:View_Frame_Create('DialogBid', nil, 800, 600)	
	dialog:SetPoint('TOP', 0, -100)
	dialog:Show()	
	dialog.auctionId = auction.id
	
	-- CURRENT
	local currentItem = self:Item_GetCurrentItem(auction.itemLink)
	local currentItemFrame = self:View_BidDialog_CreateItemFrame('Current', currentItem, dialog)

	local auctionItemFrame = self:View_BidDialog_CreateItemFrame('Auction', auction.itemLink, dialog)
	
	-- CURRENT POPOUT
	local currentItemSelectionFrame = self:View_BidDialog_CreateCurrentItemSelectionFrame('Selection', auction.itemLink, currentItemFrame)
	
	-- BID TYPE FRAME
	local bidTypeFrame = self:View_Frame_Create('BidType', dialog, self:View_Frame_GetWidth(dialog) * 0.7, 100,  {r = 1, g = 1, b = 0, a = 0.5})
	bidTypeFrame:SetPoint('CENTER')
	
	-- normal bid
	local mainspecBidSquareButton = self:View_SquareCategoryButton_Create('BidMainspec', bidTypeFrame, 'bidType', 'M', 'Mainspec')
	mainspecBidSquareButton:ClearAllPoints()
	mainspecBidSquareButton:SetPoint('TOPLEFT', mainspecBidSquareButton.margin, -mainspecBidSquareButton.margin)
	mainspecBidSquareButton.setFont(14, 'bottom')
	
	mainspecBidSquareButton:addEvent('OnMouseDown', function()
		self:Debug('MainspecBid', 'OnMouseDown', dialog.auctionId, 2)
		self:View_BidDialog_UpdateBidButton()
	end)
	
	-- offspec bid
	local offspecBidSquareButton = self:View_SquareCategoryButton_Create('BidOffspec', bidTypeFrame, 'bidType', 'O', 'Offspec')
	offspecBidSquareButton:ClearAllPoints()
	offspecBidSquareButton:SetPoint('TOPLEFT', mainspecBidSquareButton, 'TOPRIGHT', offspecBidSquareButton.margin, 0)
	
	offspecBidSquareButton:addEvent('OnMouseDown', function()
		self:Debug('OffspecBid', 'OnMouseDown', dialog.auctionId, 2)
		self:View_BidDialog_UpdateBidButton()
	end)
	
	-- rot bid
	local rotBidSquareButton = self:View_SquareCategoryButton_Create('BidRot', bidTypeFrame, 'bidType', 'R', 'Rot')
	rotBidSquareButton:ClearAllPoints()
	rotBidSquareButton:SetPoint('TOPLEFT', offspecBidSquareButton, 'TOPRIGHT', rotBidSquareButton.margin, 0)
	
	rotBidSquareButton:addEvent('OnMouseDown', function()
		self:Debug('RotBid', 'OnMouseDown', dialog.auctionId, 2)
		self:View_BidDialog_UpdateBidButton()
	end)
	
	-- FLAGS FRAME
	local flagsFrame = self:View_Frame_Create('Flags', dialog, self:View_Frame_GetWidth(dialog) * 0.7, 100,  {r = 1, g = 1, b = 0, a = 0.5})
	flagsFrame:SetPoint('TOP', bidTypeFrame, 'BOTTOM')
	
	-- BIS
	local flagBISSquareButton = self:View_SquareButton_Create('FlagBIS', flagsFrame, 'B', 'BIS')
	flagBISSquareButton:ClearAllPoints()
	flagBISSquareButton:SetPoint('TOPLEFT', flagBISSquareButton.margin, -flagBISSquareButton.margin)
	
	flagBISSquareButton:addEvent('OnMouseDown', function()
		self:Debug('BISFlag', 'OnMouseDown', dialog.auctionId, 2)
		self:View_BidDialog_UpdateBidButton()
	end)
	
	-- Set
	local flagSetSquareButton = self:View_SquareButton_Create('FlagSet', flagsFrame, 'S', 'Set')
	flagSetSquareButton:ClearAllPoints()
	flagSetSquareButton:SetPoint('TOPLEFT', flagBISSquareButton, 'TOPRIGHT', flagSetSquareButton.margin, 0)	
	
	flagSetSquareButton:addEvent('OnMouseDown', function()
		self:Debug('SetFlag', 'OnMouseDown', dialog.auctionId, 2)
		self:View_BidDialog_UpdateBidButton()
	end)
	
	-- Transmog
	local flagTransmogSquareButton = self:View_SquareButton_Create('FlagTransmog', flagsFrame, 'T', 'Transmog')
	flagTransmogSquareButton:ClearAllPoints()
	flagTransmogSquareButton:SetPoint('TOPLEFT', flagSetSquareButton, 'TOPRIGHT', flagTransmogSquareButton.margin, 0)	
	flagTransmogSquareButton.setFont(12, 'bottom')
	
	flagTransmogSquareButton:addEvent('OnMouseDown', function()
		self:Debug('TransmogFlag', 'OnMouseDown', dialog.auctionId, 2)
		self:View_BidDialog_UpdateBidButton()
	end)
	
	-- Close button
	local closeButton = self:View_SquareButton_Create('Close', dialog, 'Close')
	closeButton:ClearAllPoints()
	closeButton:SetPoint('BOTTOMLEFT')
	closeButton:SetWidth(150)
	
	closeButton:deleteEvents('OnMouseDown')
	
	closeButton:addEvent('OnMouseDown', function()
		self:Debug('Close', 'OnMouseDown', dialog.auctionId, 2)
		dialog:Hide()
	end)
	
	-- Bid button
	-- Check if bid for this auction exists
	local bidButton = self:View_SquareButton_Create('Bid', dialog, 'Bid')
	bidButton:ClearAllPoints()
	bidButton:SetPoint('BOTTOMRIGHT')
	bidButton:SetWidth(150)
		
	bidButton:deleteEvents('OnMouseDown')
	
	bidButton:addEvent('OnMouseDown', function()
		self:Debug('Bid', 'OnMouseDown', dialog.auctionId, 2)
		-- Check if current bid exists
		-- Assign current bid
		local currentBid = self:Bid_ByPlayer(dialog.auctionId)
		if currentBid then -- If current bid, check if updated
			if self:View_BidDialog_IsBidUpdated() then
				-- Update Bid
				self:Bid_Update(
					currentBid, 
					dialog.auctionId, 
					currentItemFrame.getItems(), -- Items table
					self:View_BidDialog_GetBidType(),
					nil, -- Current specialization
					self:View_BidDialog_GetFlags() -- Get current set flags
				)
			end
		elseif self:View_BidDialog_GetBidType() then
			-- Generate bid
			self:Bid_Create(
				nil, -- No id, new bid passed			
				auction,
				currentItemFrame.getItems(), -- Items table
				nil, -- Current player
				self:View_BidDialog_GetBidType(),
				nil, -- Current specialization
				self:View_BidDialog_GetFlags() -- Get current set flags
			)
		end
		self:View_BidDialog_UpdateBidButton()	
	end)
	-- Update bidButton
	self:View_BidDialog_UpdateBidButton()
	
	-- Update selections
	self:View_BidDialog_UpdateFlagSelection(self:Bid_ByPlayer(dialog.auctionId), dialog.auctionId)
	self:View_BidDialog_UpdateBidTypeSelection(self:Bid_ByPlayer(dialog.auctionId))
	
	-- Color redraw
	self:View_UpdateColor(frame)
	return dialog
end

--[[ Create a Current Item Selection frame for the BidDialog
]]
function kLibView:View_BidDialog_CreateCurrentItemSelectionFrame(name, item, parent)
	if not name then return end
	
	local frame = self:View_Frame_Create(('%s'):format(name), parent, 300, 150, nil, 'GlowBoxTemplate')
	frame.item = item
	-- Methods
	-- Retrieve the item for the current Item Frame.
	frame.getItems = function()
		return {frame.item}
	end
	frame:SetPoint('TOPRIGHT', parent, 'TOPLEFT', (parent:GetWidth() / 3) * 1 - (frame:GetWidth() / 2), -15) -- Left third	
	
	frame:SetScript('OnEnter', function(self)

	end)
	frame:SetScript('OnLeave', function(self) 
		
	end)
	
	-- ScrollFrame
	--local scrollFrame = self:View_ScrollFrame_Create('ScrollFrame', frame)
	-- Update
	--self:View_ScrollFrame_Update(scrollFrame)
	self.currentItemTestData = self.currentItemTestData or self:Utility_GenerateTestData(3, 10)
	-- ScrollItem
	--local scrollFrame = self:View_ScrollItem_CurrentItem_Create(self.currentItemTestData, 'CurrentItem', frame, self:View_Frame_GetWidth(frame), self:View_Frame_GetHeight(frame) / 4)
	
	-- HybridScrollFrame
	local hybridScrollFrame = self:View_HybridScrollFrame_CurrentItem_Create(self.currentItemTestData, 'CurrentItem', frame, self:View_Frame_GetWidth(frame), self:View_Frame_GetHeight(frame))
	
	return frame
end

--[[ Create an item frame for the BidDialog
]]
function kLibView:View_BidDialog_CreateItemFrame(name, item, parent)
	if not name then return end
	local tooltipFlip = false
	if name == 'Auction' then tooltipFlip = true end
	
	local frame = self:View_Frame_Create(('%sItem'):format(name), parent, 300, 150)
	frame.item = item
	-- Methods
	-- Retrieve the item for the current Item Frame.
	frame.getItems = function()
		return {frame.item}
	end
	if name == 'Current' then
		frame:SetPoint('TOPLEFT', (parent:GetWidth() / 3) * 1 - (frame:GetWidth() / 2), -15) -- Left third	
	elseif name == 'Auction' then
		frame:SetPoint('TOPRIGHT', -1 * (parent:GetWidth() / 3) * 1 + (frame:GetWidth() / 2), -15) -- Right third
	end
	
	frame:SetScript('OnEnter', function(self)
		kLibView:View_ItemTooltip(item, frame, 
			tooltipFlip and 'TOPLEFT' or 'TOPRIGHT', 
			tooltipFlip and 'TOPRIGHT' or 'TOPLEFT')
	end)
	frame:SetScript('OnLeave', function(self) GameTooltip:Hide() end)		
	
	local titleString = self:View_FontString_Create('Title', frame, strupper(name))
	titleString:SetPoint('TOPLEFT')
	titleString:SetPoint('TOPRIGHT')
	
	local itemString = self:View_FontString_Create('Name', frame, self:Item_Name(item), self:Color_Get(self:Item_ColorByRarity(self:Item_Rarity(item))))
	itemString:ClearAllPoints()
	itemString:SetPoint('LEFT')
	itemString:SetPoint('RIGHT')
	itemString:SetPoint('TOP', titleString, 'BOTTOM', 0, -10)
	itemString.setFont(20) 
	
	local iconPath = self:Item_Icon(item)
	local itemIcon = self:View_Icon_Create('Icon', frame, nil, nil, iconPath)
	itemIcon:ClearAllPoints()
	itemIcon:SetPoint('TOP', itemString, 'BOTTOM', 0, -10)
	
	itemIcon:SetScript('OnEnter', function(self)
		kLibView:View_ItemTooltip(item, frame, 
			tooltipFlip and 'TOPLEFT' or 'TOPRIGHT', 
			tooltipFlip and 'TOPRIGHT' or 'TOPLEFT')
	end)
	itemIcon:SetScript('OnLeave', function(self) GameTooltip:Hide() end)	
	
	local itemLevel = self:View_FontString_Create('Level', frame, self:Item_Level(item))
	itemLevel:ClearAllPoints()
	itemLevel:SetPoint('LEFT')
	itemLevel:SetPoint('RIGHT')
	itemLevel:SetPoint('TOP', itemIcon, 'BOTTOM', 0, -10)
	itemLevel.setFont(20)
	
	return frame
end

--[[ Retrieve the bid settings for this dialog
]]
function kLibView:View_BidDialog_GetBidSettings()
	local settings = {}
	-- Assign current bid
	local dialog = _G['kLibViewDialogBid']
	if not dialog then return end
	local currentBid = self:Bid_ByPlayer(dialog.auctionId)			
	settings.bidType = self:View_BidDialog_GetBidType()
	settings.specialization = currentBid and currentBid.specialization
	settings.items = currentBid and currentBid.items
	settings.flags = self:View_BidDialog_GetFlags()
	return settings
end

--[[ Retrieve the selected bidType if applicable
]]
function kLibView:View_BidDialog_GetBidType()
	if not _G['kLibViewDialogBid'] then return end
	local bidTypeFrame = self:View_FindObject(_G['kLibViewDialogBid'], 'BidType', 'Frame')
	if not bidTypeFrame then return end
	local children = {bidTypeFrame:GetChildren()}
	for i,v in pairs(children) do
		if self:View_GetFlag(v, 'selected') then
			if string.find(v.name, 'Bid%a+') then				
				return string.sub(v.name, 4)
			end
		end
	end	
end

--[[ Get the flag settings table
]]
function kLibView:View_BidDialog_GetFlags()
	local data = {}
	for i,v in pairs(self.bidFlags) do
		data[v] = self:View_BidDialog_HasFlag(v)
	end
	return data
end

--[[ Determine if dialog window has flagType
]]
function kLibView:View_BidDialog_HasFlag(flagType)
	if not _G['kLibViewDialogBid'] then return end
	local flagsFrame = self:View_FindObject(_G['kLibViewDialogBid'], 'Flags', 'Frame')
	local children = {flagsFrame:GetChildren()}
	for i,v in pairs(children) do
		if string.find(v.name, 'Flag%a+') and string.sub(v.name, 5) == flagType and self:View_GetFlag(v, 'selected') then
			return true
		end
	end		
end

--[[ Determine if bid settings for this bidDialog have been updated
]]
function kLibView:View_BidDialog_IsBidUpdated()
	local dialog = _G['kLibViewDialogBid']
	if not dialog or not dialog.auctionId then return end
	return self:Bid_IsUpdated(self:Bid_ByPlayer(dialog.auctionId), dialog.auctionId, self:View_BidDialog_GetBidSettings())
end

--[[ Set the selected bidType option
]]
function kLibView:View_BidDialog_UpdateBidTypeSelection(bid)
	if not bid then return end
	if not _G['kLibViewDialogBid'] then return end
	local bidTypeFrame = self:View_FindObject(_G['kLibViewDialogBid'], 'BidType', 'Frame')
	if not bidTypeFrame then return end
	local children = {bidTypeFrame:GetChildren()}
	for i,v in pairs(children) do
		if string.find(v.name, 'Bid%a+') then
			-- Bid type match
			if bid.bidType == string.sub(v.name, 4) then
				-- Set flag and exit
				self:View_SetFlag(v, 'selected', true)
				self:View_UpdateColor(v, 'OnMouseDown')
				return
			end
		end
	end	
end

--[[ Set the selected flag options
]]
function kLibView:View_BidDialog_UpdateFlagSelection(bid, auction)
	if not _G['kLibViewDialogBid'] then return end
	local flagsFrame = self:View_FindObject(_G['kLibViewDialogBid'], 'Flags', 'Frame')
	local children = {flagsFrame:GetChildren()}
	for i,v in pairs(children) do
		if string.find(v.name, 'Flag%a+') then
			-- Check if bid has flag
			if self:Bid_GetFlag(bid, auction, string.sub(v.name, 5)) then
				self:View_SetFlag(v, 'selected', true)
				self:View_UpdateColor(v, 'OnMouseDown')
			end
		end		
	end		
end


--[[ Update BidButton view
]]
function kLibView:View_BidDialog_UpdateBidButton()
	local dialog = _G['kLibViewDialogBid']
	if not dialog then return end
	local bidButton = self:View_FindObject(dialog, 'Bid', 'SquareButton')
	if not bidButton then return end
	local currentBid = self:Bid_ByPlayer(dialog.auctionId)
	-- Update text
	bidButton.setText(currentBid and 'Update' or 'Bid')		
	-- If no bid, enable
	if (not currentBid or self:View_BidDialog_IsBidUpdated()) and self:View_BidDialog_GetBidType() then
		self:View_EnableObject(bidButton)
		self:Debug('View_BidDialog_UpdateBidButton', 'Enabled.', 2)
	else
		self:View_DisableObject(bidButton)
		self:Debug('View_BidDialog_UpdateBidButton', 'Disabled.', 2)
	end
end