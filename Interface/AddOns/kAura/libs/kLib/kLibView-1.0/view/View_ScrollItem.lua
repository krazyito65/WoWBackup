local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local kLibView = _G.kLibView

--[[ Align ScrollItem frames
]]
function kLibView:View_ScrollItem_Align(frame)
	if not frame or not frame.objectType then return end
	local parent = frame:GetParent()
	if not parent or not parent:GetNumChildren() then return end
	-- Check if frame is first index, and if so align to top left
	if frame.scrollItemIndex and frame.getScrollItemIndex() and frame.getScrollItemIndex() == 1 then
		frame:ClearAllPoints()
		frame:SetPoint('TOPLEFT', parent, 'TOPLEFT', 0, 0)
		return
	end
	for i,v in ipairs({parent:GetChildren()}) do
		if v.objectType and frame.objectType == v.objectType then
			-- Match, align appropriately
			-- Check if index is below current index, if so align
			if v.getScrollItemIndex and v.getScrollItemIndex() and v.getScrollItemIndex() == (frame.getScrollItemIndex() - 1) then
				frame:SetPoint('TOPLEFT', v, 'BOTTOMLEFT', 0, 0)
			end
		end
	end
end

--[[ Create ScrollItem
]]
function kLibView:View_ScrollItem_Create(name, parent, width, height, defaultColor)
	self:Debug('View_ScrollItem_Create', 'name: ', name, 'parent: ', parent, 2)
	local frame = self:View_Frame_Create(name, parent, width, height, defaultColor)

	-- SetPoint
	frame:SetPoint('TOPLEFT', parent, 'TOPLEFT', 0, 0)
	
	-- Events
	-- Flags
	frame.objectType = 'ScrollItem'	
	
	-- Colors
	self:View_SetColor(frame, 'default', defaultColor)
	
	-- Texts
	
	-- Methods
	frame.getScrollItemIndex = function()
		-- Check if assignment exists
		return kLibView:View_GetFlag(frame, 'scrollItemIndex')
	end	
	
	-- Color redraw
	self:View_UpdateColor(frame)
		
	return frame
end

--[[ Count the number of ScrollItems in parent frame with matching objectType
]]
function kLibView:View_ScrollItem_GetScrollItemCount(parent, objectType)
	if not parent or not parent:GetNumChildren() then return end
	local count
	for i,v in ipairs({parent:GetChildren()}) do
		if v.objectType and objectType == v.objectType then
			self:Debug('View_ScrollItem_GetScrollItemCount', 'matched objecttype', v:GetName(), objectType, 2)
			count = count or 0
			count = count + 1
		else
			-- Check for children and recursively loop
			if v:GetNumChildren() then
				self:View_ScrollItem_GetScrollItemCount(v, objectType)
			end
		end
	end
	return count
end

--[[ Set the ScrollItemIndex value for the passed frame
]]
function kLibView:View_ScrollItem_SetScrollItemIndex(frame, parent)
	-- Check if index exists first
	if frame.scrollItemIndex then return end
	self:Debug('View_ScrollItem_SetScrollItemIndex', 'Value: ', self:View_ScrollItem_GetScrollItemCount(parent, frame.objectType) or 1, 2)
	-- Assign index by checking count
	frame.scrollItemIndex = self:View_ScrollItem_GetScrollItemCount(parent, frame.objectType) or 1
end