local _G, _ = _G, _
local table, tinsert, tremove, wipe, sort, date, time, random = table, table.insert, table.remove, wipe, sort, date, time, random
local math, tostring, string, strjoin, strlen, strlower, strsplit, strsub, strtrim, strupper, floor, tonumber = math, tostring, string, string.join, string.len, string.lower, string.split, string.sub, string.trim, string.upper, math.floor, tonumber
local select, pairs, print, next, type, unpack = select, pairs, print, next, type, unpack
local loadstring, assert, error = loadstring, assert, error
local kLibView = _G.kLibView

--[[ Create a basic frame
]]
function kLibView:View_Frame_Create(name, parent, width, height, colorOrTexture, inheritFrame, frameType)
	local fullName = self:View_Name(name, parent)
	self:Debug('View_Frame_Create', 'fullName: ', fullName, 'parent: ', parent, 2)
	local frame = _G[fullName] or CreateFrame(frameType or 'Frame', fullName, parent or UIParent, inheritFrame)
	frame.objectType = 'Frame'
	frame.name = name
	local width = width or 500
	local height = height or 350
	self:View_SetColor(frame, 'default', colorOrTexture)
	frame.margin = 4
	frame.validEventTypes = {
		'OnEnter',
		'OnLeave',	
		'OnMouseDown',
		'OnMouseWheel',
	}

	-- Generate interaction events to react to
	function frame:addEvent(eventType, event, index)
		if not eventType or not event or not type(event) == 'function' then return end
		self.events = self.events or {}		
		if tContains(self.validEventTypes, eventType) then
			self.events[eventType] = self.events[eventType] or {}
			if index then
				tinsert(self.events[eventType], index, event)
			else
				tinsert(self.events[eventType], event)
			end
		end
	end
	
	-- Delete all events for matching type
	function frame:deleteEvents(eventType)
		if eventType and tContains(self.validEventTypes, eventType) then
			if self.events and self.events[eventType] then
				self.events[eventType] = nil
			end
		end
	end
	
	-- Process previously added events
	function frame:processEvent(eventType, ...)
		if eventType and tContains(self.validEventTypes, eventType) then
			if not self.events or not self.events[eventType] then return end
			for i,v in ipairs(self.events[eventType]) do
				if type(v) == 'function' then
					v(...) -- run event
				end
			end
		end		
	end
		
	-- Destroy events
	frame.events = nil
	
	-- Setup script functions to process events
	for i,v in pairs(frame.validEventTypes) do
		frame:SetScript(v, function(self, ...) self:processEvent(v, ...) end)
	end
	
	-- Generate dimensions
	frame:SetWidth(width)
	frame:SetHeight(height)	
	
	-- Create background texture
	self:View_Texture_Create(frame, colorOrTexture)

	frame:Show()
	return frame
end

--[[ Retrieve the height of a frame
]]
function kLibView:View_Frame_GetHeight(frame)
	if not frame then return end
	return frame:GetHeight()
end

--[[ Retrieve the width of a frame
]]
function kLibView:View_Frame_GetWidth(frame)
	if not frame then return end
	return frame:GetWidth()
end