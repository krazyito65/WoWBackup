local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local kLibView = _G.kLibView

--[[ Create square frame button
]]
function kLibView:View_SquareCategoryButton_Create(name, parent, category, headerText, subText, defaultColor, selectedColor, hoverColor)
	self:Debug('View_SquareCategoryButton_Create', 'name: ', name, 'parent: ', parent, 2)
	local frame = self:View_SquareButton_Create(name, parent, headerText, subText, defaultColor, selectedColor, hoverColor)
	-- Flags
	frame.objectType = 'SquareCategoryButton'
	
	-- Events
	frame:addEvent('OnMouseDown', function()
		self:View_SquareCategoryButton_ResetSelections(parent, category)
	end, 1)	-- Add this to first index, to occur prior to normal button events	
	
	-- Colors
	self:View_SetColor(frame, 'default', defaultColor)
	self:View_SetColor(frame, 'selected', selectedColor)
	self:View_SetColor(frame, 'hover', hoverColor)	
	
	self:View_UpdateColor(frame)
	return frame
end

--[[ Update selection values for all SquareButtons in parent of type category
]]
function kLibView:View_SquareCategoryButton_ResetSelections(parent, category)
	if not parent or not parent:GetNumChildren() then return end
	category = category or 'default'
	for i,v in ipairs({parent:GetChildren()}) do
		if v.objectType and (string.find(v.objectType, 'Category')) then
			v.selected = false
			self:View_UpdateColor(v) -- Reset color
		else
			-- Check for children and recursively loop
			if v:GetNumChildren() then
				self:View_SquareCategoryButton_ResetSelections(v, category)
			end
		end
	end
end