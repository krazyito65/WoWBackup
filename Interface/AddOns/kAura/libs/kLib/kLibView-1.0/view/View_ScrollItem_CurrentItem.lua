local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local kLibView = _G.kLibView

--[[ Create ScrollItem
]]
function kLibView:View_ScrollItem_CurrentItem_Create(data, name, parent, width, height, defaultColor)
	self:Debug('View_ScrollItem_CurrentItem_Create', 'name: ', name, 'parent: ', parent, 2)
	local frame = self:View_ScrollItem_Create(name, parent, width, height, defaultColor)

	-- Events

	-- Flags
	frame.objectType = 'ScrollItem_CurrentItem'
	
	-- Colors
	
	
	-- Texts
	
	-- Methods
	
	-- Color redraw
	--self:View_UpdateColor(frame)
	
	-- Set index
	self:View_ScrollItem_SetScrollItemIndex(frame, parent)
	
	-- Update
	self:View_ScrollItem_CurrentItem_Update(frame, data)
	return frame
end

--[[ Create column frames
]]
function kLibView:View_ScrollItem_CurrentItemFrames_Create(parent, name, level, test)
	local nameFrame = self:View_Frame_Create('Name', parent, self:View_Frame_GetWidth(parent) / 3, self:View_Frame_GetHeight(parent))
	nameFrame:SetPoint('TOPLEFT', parent, 'TOPLEFT', 0, 0)
	nameFrame:addEvent('OnMouseWheel', function(delta)
		kLibView:Debug('nameFrame, getOffset', HybridScrollFrame_GetOffset(parent:GetParent()), 2)
		if delta == 1 then
			HybridScrollFrame_SetOffset(parent:GetParent(), HybridScrollFrame_GetOffset(parent:GetParent()) + 1)
		elseif delta == -1 then
			HybridScrollFrame_SetOffset(parent:GetParent(), HybridScrollFrame_GetOffset(parent:GetParent()) - 1)
		end
		kLibView:Debug('nameFrame, post change getOffset', HybridScrollFrame_GetOffset(parent:GetParent()), 2)
		kLibView:Debug('nameFrame, onMouseWheel', delta, 2)
		-- Redraw
		kLibView:View_ScrollItem_CurrentItem_Update(parent, parent:GetParent().currentItemTestData)
		--parent:GetParent().update()
	end)
	local nameString = self:View_FontString_Create('NameString', nameFrame, name or 'nameString')
	
	local levelFrame = self:View_Frame_Create('Level', parent, self:View_Frame_GetWidth(parent) / 3, self:View_Frame_GetHeight(parent))
	levelFrame:SetPoint('TOPLEFT', nameFrame, 'TOPRIGHT', 0, 0)
	local levelString = self:View_FontString_Create('LevelString', levelFrame, level or 'levelString')
	
	local testFrame = self:View_Frame_Create('Test', parent, self:View_Frame_GetWidth(parent) / 3, self:View_Frame_GetHeight(parent))
	testFrame:SetPoint('TOPLEFT', levelFrame, 'TOPRIGHT', 0, 0)
	local testString = self:View_FontString_Create('TestString', testFrame, test or 'testString')
end

--[[ Update the ScrollItem_CurrentItem frame
]]
function kLibView:View_ScrollItem_CurrentItem_Update(frame, data, offset)
	if not frame or not frame.objectType then return end
	offset = offset or HybridScrollFrame_GetOffset(frame:GetParent())
	self:Debug('CurrentItem_Update', 'frame.getScrollItemIndex', frame.getScrollItemIndex() + offset, 2)
	self:View_ScrollItem_CurrentItemFrames_Create(frame, data[frame.getScrollItemIndex() + offset][1], data[frame.getScrollItemIndex() + offset][2], data[frame.getScrollItemIndex() + offset][3])
end