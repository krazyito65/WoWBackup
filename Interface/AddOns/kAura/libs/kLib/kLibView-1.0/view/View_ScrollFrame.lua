--[[ DEPRECATED ]]
local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local kLibView = _G.kLibView

--[[ Create ScrollFrame
]]
function kLibView:View_ScrollFrame_Create(name, parent, width, height, defaultColor)
	self:Debug('View_ScrollFrame_Create', 'name: ', name, 'parent: ', parent, 2)
	local SCROLLBAR_WIDTH = 16
	local frame = self:View_Frame_Create(name, parent, width, height, defaultColor, nil, 'ScrollFrame')
	-- Scroll Child
	self:Debug('View_ScrollFrame_Create', 'scrollbarwidth: ', frame:GetWidth() - SCROLLBAR_WIDTH - 20, 2)
	local scrollChild = self:View_Frame_Create('ScrollChild', frame, frame:GetWidth() - SCROLLBAR_WIDTH, frame:GetHeight(), defaultColor)	
	frame.scrollChild = scrollChild
	
	-- Events
	scrollChild:addEvent('OnEnter', function()
		self:Debug('View_ScrollFrame_Create_ScrollChild_OnEnter', 2)
	end)
	
	frame:SetScrollChild(frame.scrollChild)	
	-- Flags
	frame.objectType = 'ScrollFrame'	
	scrollChild.objectType = 'Frame'
	
	-- Colors
	self:View_SetColor(frame, 'default', defaultColor)
	self:View_SetColor(scrollChild, 'default', defaultColor)
	
	-- Texts
	
	-- Methods
	
	-- Color redraw
	self:View_UpdateColor(frame)
	self:View_UpdateColor(scrollChild)
	
	-- ScrollBar
	frame.scrollBar = self:View_ScrollFrameScrollBar_Create('ScrollBar', frame)
	--local scrollMax = height - 400
	frame.scrollBar:SetOrientation("VERTICAL");
	frame.scrollBar:SetSize(SCROLLBAR_WIDTH, self:View_Frame_GetHeight(parent))
	frame.scrollBar:SetPoint("TOPRIGHT", frame, "TOPRIGHT", 0, 0)
	frame.scrollBar:SetMinMaxValues(0, scrollChild:GetHeight() - self:View_Frame_GetHeight(parent))
	frame.scrollBar:SetValue(0)
	frame.scrollBar:SetScript("OnValueChanged", function(self)
		frame:SetVerticalScroll(self:GetValue())
	end)
	
	-- Set points
	frame:ClearAllPoints()
	frame:SetAllPoints()
	scrollChild:ClearAllPoints()	
	-- Attach scroll child to edges but leave scroll bar gap on side
	scrollChild:SetPoint('TOPLEFT', frame, 'TOPLEFT', 0, 0)
	scrollChild:SetPoint('BOTTOMRIGHT', frame.scrollBar, 'BOTTOMLEFT', -15, 0)
	scrollChild:SetSize(frame:GetWidth() - SCROLLBAR_WIDTH, frame:GetHeight())	
	return frame
end

--[[ Create a ScrollFrame ScrollBar
]]
function kLibView:View_ScrollFrameScrollBar_Create(name, parent)
	self:Debug('View_ScrollFrameScrollBar_Create', 'name: ', name, 'parent: ', parent, 2)
	local frame = self:View_Frame_Create(name, parent, nil, nil, nil, nil, 'Slider')
	-- scrollbar is just to the right of the scrollframe
	--parent.scrollBar = CreateFrame("Slider","CKBIScrollFrameScrollBar",self.scrollFrame,"HybridScrollBarTemplate")
	--parent.scrollBar:SetPoint("TOPLEFT",KeyBindingFrameScrollFrameScrollBar,"TOPLEFT",0,0)
	--parent.scrollBar:SetPoint("BOTTOMRIGHT",KeyBindingFrameScrollFrameScrollBar,"BOTTOMRIGHT",1,0)
	-- ScrollFrame creation
	--parent.stepSize = 12*4 -- jump by 4 buttons on mousewheel
	--parent.update = self.Update
	--parent.scrollBar = frame
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
	return frame
end

--[[ Get test data
]]
function kLibView:View_ScrollFrame_GetScrollTestData()
	local data = {}
	local characters = {
		'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 
		'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 
		's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', 
		'1', '2', '3', '4', '5', '6', '7', '8', '9'
	}	
	for i,v in pairs(characters) do
		tinsert(data, ('%s%s%s'):format(v, v, v))
	end
	return data
end

--[[ Update a ScrollFrame
]]
function kLibView:View_ScrollFrame_Update(frame)
	self:View_ScrollFrame_UpdateTest(frame)
end

--[[ Populate with test data
]]
function kLibView:View_ScrollFrame_UpdateTest(frame)
	local data = self:View_ScrollFrame_GetScrollTestData()
	local fontString
	for i,v in pairs(data) do
		fontString = self:View_FontString_Create(i,frame.scrollChild,v)
		fontString:SetPoint('TOPLEFT', 0, -1 * i * 12)
	end
end