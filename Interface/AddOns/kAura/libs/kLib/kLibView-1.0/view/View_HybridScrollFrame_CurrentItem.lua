local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local kLibView = _G.kLibView

--[[ Create HybridScrollFrame_CurrentItem
]]
function kLibView:View_HybridScrollFrame_CurrentItem_Create(data, name, parent, width, height, defaultColor)
	self:Debug('View_HybridScrollFrame_CurrentItem_Create', 'name: ', name, 'parent: ', parent, 2)
	local frame = self:View_HybridScrollFrame_Create(name, parent, width, height, defaultColor, 'HybridScrollFrameTemplate', 'ScrollFrame')

	-- Events
	frame:deleteEvents('OnEnter') -- Destroy previous OnEnter assignments
	frame:addEvent('OnEnter', function()
		self:Debug('View_HybridScrollFrame_CurrentItem_OnEnter', 3)
	end)
	
	-- Flags
	frame.objectType = 'HybridScrollFrame_CurrentItem'	
	frame.update = self:View_HybridScrollFrame_CurrentItem_Update(frame)
	
	-- Colors
	
	-- Texts
	
	-- Methods
	
	-- Color redraw
	self:View_UpdateColor(frame)
	
	--[[
	frame.scrollBar:SetScript("OnValueChanged", function(self)
		frame:SetVerticalScroll(self:GetValue())
	end)
	]]
	
	-- Generate ScrollItems
	self:View_HybridScrollFrame_CurrentItem_ScrollItems_Create(data, frame)
	
	return frame
end

--[[ Create ScrollItem objects
]]
function kLibView:View_HybridScrollFrame_CurrentItem_ScrollItems_Create(data, parent)
	local ROW_COUNT = 5
	local frame
	-- Create X items
	for index=1,ROW_COUNT do
		frame = self:View_ScrollItem_CurrentItem_Create(data, ('ScrollItem%d'):format(index), parent, self:View_Frame_GetWidth(parent), self:View_Frame_GetHeight(parent) / ROW_COUNT)
		self:View_ScrollItem_Align(frame)
	end
end

function kLibView:View_HybridScrollFrame_CurrentItem_Update(frame)
	self:Debug('UPDATE for View_HybridScrollFrame_CurrentItem_Update', 2)
	self.currentItemTestData = self.currentItemTestData or self:Utility_GenerateTestData(3, 10)
	self:View_HybridScrollFrame_CurrentItem_ScrollItems_Create(self.currentItemTestData, frame)
	HybridScrollFrame_Update(frame, 20*5, 20)
end