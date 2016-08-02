local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local kLibView = _G.kLibView

--[[ Create basic button frame
]]
function kLibView:View_Icon_Create(name, parent, width, height, icon)
	self:Debug('View_Icon_Create', 'name: ', name, 'parent: ', parent, 'icon: ', icon, 2)
	width = width or 80
	height = height or 80
	local frame = self:View_Frame_Create(name, parent, width, height, icon)
	-- Flags
	frame.objectType = 'Icon'
	frame.selected = false
		
	-- Set point
	frame:SetPoint('CENTER')
	
	return frame
end