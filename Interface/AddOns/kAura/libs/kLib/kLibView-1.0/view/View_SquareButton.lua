local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local kLibView = _G.kLibView

--[[ Create square frame button
]]
function kLibView:View_SquareButton_Create(name, parent, headerText, subText, defaultColor, selectedColor, hoverColor)
	self:Debug('View_SquareButton_Create', 'name: ', name, 'parent: ', parent, 2)
	local frame = self:View_Button_Create(name, parent, 80, 80, defaultColor, selectedColor, hoverColor)
	-- Flags
	frame.objectType = 'SquareButton'	
	
	-- Colors
	self:View_SetColor(frame, 'default', defaultColor)
	self:View_SetColor(frame, 'selected', selectedColor)
	self:View_SetColor(frame, 'hover', hoverColor)	
		
	-- Texts
	local topText = self:View_FontString_Create('HeaderText', frame, headerText)
	topText:SetFont([[Interface\AddOns\kLibView\media\fonts\DORISPP.TTF]], 50)
	
	local bottomText = self:View_FontString_Create('BottomText', frame, subText)
	bottomText:SetFont([[Interface\AddOns\kLibView\media\fonts\DORISPP.TTF]], 20)
	bottomText:SetPoint('BOTTOM')
	
	-- Methods
	frame.setFont = function(size, textType, path)
		textType = textType or 'header'
		path = path or [[Interface\AddOns\kLibView\media\fonts\DORISPP.TTF]]
		size = size or 50
		if textType == 'header' then
			topText:SetFont(path, size)
		elseif textType == 'bottom' then
			bottomText:SetFont(path, size)
		end
	end	
	frame.setText = function(text)
		if not text then return end
		topText:SetText(text)
	end
	
	frame:ClearAllPoints()
	frame:SetAllPoints()
	-- Color redraw
	self:View_UpdateColor(frame)
	return frame
end