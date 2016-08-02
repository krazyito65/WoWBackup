local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local kLibView = _G.kLibView

--[[ Create basic button frame
]]
function kLibView:View_Button_Create(name, parent, width, height, defaultColor, selectedColor, hoverColor)
	self:Debug('View_Button_Create', 'name: ', name, 'parent: ', parent, 2)
	width = width or 80
	height = height or 80
	local frame = self:View_Frame_Create(name, parent, width, height, defaultColor)
	-- Flags
	frame.objectType = 'Button'
	frame.selected = false
	
	-- Colors
	self:View_SetColor(frame, 'default', defaultColor)
	self:View_SetColor(frame, 'selected', selectedColor)
	self:View_SetColor(frame, 'hover', hoverColor)
		
	-- Events
	frame:addEvent('OnEnter', function()
		self:View_UpdateColor(frame, 'OnEnter')
	end)	
	frame:addEvent('OnLeave', function()
		self:View_UpdateColor(frame, 'OnLeave')
	end)
	frame:addEvent('OnMouseDown', function()
		self:View_SetFlag(frame, 'selected', not self:View_GetFlag(frame, 'selected'))
		self:View_UpdateColor(frame, 'OnMouseDown')
	end)
	
	-- Set point
	frame:SetPoint('CENTER')
	-- Color redraw
	self:View_UpdateColor(frame)
	return frame
end