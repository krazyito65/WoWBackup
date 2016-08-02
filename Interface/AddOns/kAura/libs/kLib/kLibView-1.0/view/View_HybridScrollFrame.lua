local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local kLibView = _G.kLibView

--[[ Create HybridScrollFrame
]]
function kLibView:View_HybridScrollFrame_Create(name, parent, width, height, defaultColor)
	self:Debug('View_HybridScrollFrame_Create', 'name: ', name, 'parent: ', parent, 2)
	local frame = self:View_Frame_Create(name, parent, width, height, defaultColor, 'HybridScrollFrameTemplate', 'ScrollFrame')
	self:Debug('View_HybridScrollFrame_Create', 'GENERATED NAME: ', frame:GetName(), 3)
	-- Events
	frame:addEvent('OnEnter', function()
		self:Debug('View_HybridScrollFrame_OnEnter', 3)
	end)
	
	-- Flags
	frame.objectType = 'HybridScrollFrame'
	frame.scrollOffset = 0
	frame.stepSize = 20
	frame.buttonHeight = 20
	frame.update = self:View_HybridScrollFrame_Update(frame)
	
	-- Colors
	self:View_SetColor(frame, 'default', defaultColor)
	
	-- Texts
	
	-- Methods
	frame.getScrollOffset = function(self)
		return self.scrollOffset
	end
	frame.setScrollOffset = function(self, offset)
		self.scrollOffset = offset
	end
	
	-- Color redraw
	self:View_UpdateColor(frame)
	
	--local scrollMax = height - 400
	
	--[[
	frame.scrollBar:SetMinMaxValues(0, 5)
	frame.scrollBar:SetValue(0)
	frame.scrollBar:SetScript("OnValueChanged", function(self)
		frame:SetVerticalScroll(self:GetValue())
	end)
	]]
	
	-- Set points
	frame:ClearAllPoints()
	frame:SetAllPoints()

	-- ScrollBar
	frame.scrollBar = self:View_HybridScrollFrameScrollBar_Create('ScrollBar', frame)	
	
	return frame
end

--[[ Create a ScrollFrame ScrollBar
]]
function kLibView:View_HybridScrollFrameScrollBar_Create(name, parent)
	self:Debug('View_ScrollFrameScrollBar_Create', 'name: ', name, 'parent: ', parent, 3)
	local frame = self:View_Frame_Create(name, parent, 16, self:View_Frame_GetHeight(parent), nil, 'HybridScrollBarTemplate', 'Slider')
	self:Debug('View_ScrollFrameScrollBar_Create', 'name: ', frame:GetName(), 3)
	
	frame:SetOrientation("VERTICAL");
	frame:ClearAllPoints()
	frame:SetPoint('TOPRIGHT', parent, 'TOPRIGHT', 0, 0)
	frame:SetValue(0)

	--[[
	frame.scrollBar:SetMinMaxValues(0, 5)
	frame.scrollBar:SetValue(0)
	frame.scrollBar:SetScript("OnValueChanged", function(self)
		frame:SetVerticalScroll(self:GetValue())
	end)
	]]	
	
	-- Set up internal textures for the scrollbar, background and thumb texture
	if not frame.bg then
		frame.bg = frame:CreateTexture(nil, "BACKGROUND")
		frame.bg:SetAllPoints(true)
		frame.bg:SetTexture(0, 0, 0, 0.5)
	end
	 
	if not frame.thumb then
		frame.thumb = frame:CreateTexture(nil, "OVERLAY")
		frame.thumb:SetTexture("Interface\\Buttons\\UI-ScrollBar-Knob")
		frame.thumb:SetSize(25, 25)
		frame:SetThumbTexture(frame.thumb)
	end	
	
	parent.scrollBar = frame -- Set scrollBar to parent frame
	return frame
end

function kLibView:View_HybridScrollFrame_Update(frame)
	HybridScrollFrame_Update(frame, 20*5, 20)
end