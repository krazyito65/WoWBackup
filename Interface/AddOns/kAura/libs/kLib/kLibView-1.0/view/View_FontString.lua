local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local kLibView = _G.kLibView

--[[ Create a basic font string attached to the parent item
]]
function kLibView:View_FontString_Create(name, parent, text, color)
	if not parent then return end
	name = self:View_Name(name, parent)
	local object = _G[name] or parent:CreateFontString(name)
	object.objectType = 'FontString'
	self:View_SetColor(object, 'default', color)
	color = self:Color_Get(color) or self:Color_Get(self:View_GetColor(object, 'default'))	
	-- Methods
	object.setFont = function(size, path)
		textType = textType or 'header'
		path = path or [[Interface\AddOns\kLibView\media\fonts\DORISPP.TTF]]
		size = size or 14
		object:SetFont(path, size)
	end		

	object:SetFont([[Interface\AddOns\kLibView\media\fonts\DORISPP.TTF]], 14)
	object:SetJustifyV('TOP')
	object:SetText(text)
	object:SetTextColor(color.r, color.g, color.b, color.a)
	object:SetPoint('CENTER')
	-- Color redraw
	self:View_UpdateColor(frame)	
	return object
end