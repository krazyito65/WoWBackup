--------------------------------------------------------
-- Blood Legion Raidcooldowns - Functions --
--------------------------------------------------------
if not BLCD then return end
local BLCD = BLCD
local CB = LibStub("LibCandyBar-3.0")
local Elv = IsAddOnLoaded("ElvUI")
local ACD = LibStub("AceConfigDialog-3.0") -- Also for options panel

local E, L, V, P, G
if(Elv) then
	E, L, V, P, G = unpack(ElvUI);
end


local GameFontHighlightSmallOutline = GameFontHighlightSmallOutline
local _fontName, _fontSize = GameFontHighlightSmallOutline:GetFont()
local _fontShadowX, _fontShadowY = GameFontHighlightSmallOutline:GetShadowOffset()
local _fontShadowR, _fontShadowG, _fontShadowB, _fontShadowA = GameFontHighlightSmallOutline:GetShadowColor()
local bResIDs = {20484, 20707, 61999}
local ACD = LibStub("AceConfigDialog-3.0") -- Also for options panel

--------------------------------------------------------

--------------------------------------------------------
-- Helper Functions --
--------------------------------------------------------
function BLCD:GetPartyType()
	local grouptype = (IsInGroup(2) and 3) or (IsInRaid() and 2) or (IsInGroup() and 1)
	if grouptype == 3 then
		return "instance"
	elseif grouptype == 2 then
		return "raid"
	elseif grouptype == 1 then
		return "party"
	else
		return "none"
	end
end

--[[
0 - None; not in an Instance.
1 - 5-player Instance.
2 - 5-player Heroic Instance.
3 - 10-player Raid Instance.
4 - 25-player Raid Instance.
5 - 10-player Heroic Raid Instance.
6 - 25-player Heroic Raid Instance.
7 - Raid Finder Instance.
8 - Challenge Mode Instance.
9 - 40-player Raid Instance.
10 - Not used.
11 - Heroic Scenario Instance.
12 - Scenario Instance.
13 - Not used.
14 - Flexible Raid.
]]

function BLCD:print_r ( t )
	local print_r_cache={}
	local function sub_print_r(t,indent)
		if (print_r_cache[tostring(t)]) then
			print(indent.."*"..tostring(t))
		else
			print_r_cache[tostring(t)]=true
			if (type(t)=="table") then
				for pos,val in pairs(t) do
					if (type(val)=="table") then
						print(indent.."["..pos.."] => "..tostring(t).." {")
						sub_print_r(val,indent..string.rep(" ",string.len(pos)+8))
						print(indent..string.rep(" ",string.len(pos)+6).."}")
					elseif (type(pos)=="table") then
						print(indent.."["..tostring(pos).."] => "..tostring(t).." {")
						sub_print_r(pos,indent..string.rep(" ",string.len(tostring(pos))+8))
						print(indent..string.rep(" ",string.len(tostring(pos))+6).."}")
					else
						print(indent.."["..tostring(pos).."] => "..tostring(val))
					end
				end
			else
				print(indent..tostring(t))
			end
		end
	end
	sub_print_r(t," ")
end

function BLCD:ClassColorString (class)
	return string.format ("|cFF%02x%02x%02x",
		RAID_CLASS_COLORS[class].r * 255,
		RAID_CLASS_COLORS[class].g * 255,
		RAID_CLASS_COLORS[class].b * 255)
end

function BLCD:print_raid()
	return BLCD:print_r(BLCD['raidRoster'])
end

function BLCD:sec2Min(secs)
	return secs
end

local function print(...)
	DEFAULT_CHAT_FRAME:AddMessage("|cffc41f3bBLCD|r: " .. table.concat({...}, " "))
end
--------------------------------------------------------

--------------------------------------------------------
-- Display Bar Functions --
--------------------------------------------------------

--[[
local rearrangeBars
do
	local function barSorter(a, b)
		return a.remaining < b.remaining and true or false
	end
	local tmp = {}
	rearrangeBars = function(anchor)
		if not anchor then return end
		if anchor == normalAnchor then -- only show the empupdater when there are bars on the normal anchor running
			if next(anchor.bars) and db.emphasize then
				empUpdate:Play()
			else
				empUpdate:Stop()
			end
		end
		if not next(anchor.bars) then return end

		wipe(tmp)
		for bar in next, anchor.bars do
			tmp[#tmp + 1] = bar
		end
		table.sort(tmp, barSorter)
		local lastDownBar, lastUpBar = nil, nil
		local up = nil
		if anchor == normalAnchor then up = db.growup else up = db.emphasizeGrowup end
		for i, bar in next, tmp do
			local spacing = currentBarStyler.GetSpacing(bar) or 0
			bar:ClearAllPoints()
			if up or (db.emphasizeGrowup and bar:Get("bigwigs:emphasized")) then
				if lastUpBar then -- Growing from a bar
					bar:SetPoint("BOTTOMLEFT", lastUpBar, "TOPLEFT", 0, spacing)
					bar:SetPoint("BOTTOMRIGHT", lastUpBar, "TOPRIGHT", 0, spacing)
				else -- Growing from the anchor
					bar:SetPoint("BOTTOMLEFT", anchor, "BOTTOMLEFT", 0, 0)
					bar:SetPoint("BOTTOMRIGHT", anchor, "BOTTOMRIGHT", 0, 0)
				end
				lastUpBar = bar
			else
				if lastDownBar then -- Growing from a bar
					bar:SetPoint("TOPLEFT", lastDownBar, "BOTTOMLEFT", 0, -spacing)
					bar:SetPoint("TOPRIGHT", lastDownBar, "BOTTOMRIGHT", 0, -spacing)
				else -- Growing from the anchor
					bar:SetPoint("TOPLEFT", anchor, "TOPLEFT", 0, 0)
					bar:SetPoint("TOPRIGHT", anchor, "TOPRIGHT", 0, 0)
				end
				lastDownBar = bar
			end
		end
	end
end
]]
local function barSorter(a, b)
		local caster1 = a:Get("raidcooldowns:caster")
		local caster2 = b:Get("raidcooldowns:caster")
	if a.remaining == b.remaining then
		return caster1 < caster2
	else
		return a.remaining < b.remaining
	end
end

function BLCD:RearrangeBars(anchor) -- frameicon
	if not anchor then return end
	if not next(anchor.bars) then
		if anchor:IsVisible() then
			BLCD:BLHeight(anchor:GetParent(), 28*BLCD.db.profile.scale)
		end
		return
	end
	local frame = anchor:GetParent()
	local scale = BLCD.db.profile.scale
	local growth = BLCD.db.profile.growth
	local barheight = BLCD.db.profile.barheight
	local currBars = {}

	for bar in pairs(anchor.bars) do
		if bar:IsVisible() then
			currBars[#currBars + 1] = bar
		else
			bar:Stop()
		end
	end

	BLCD:BLHeight(frame, math.max(28,((5 + barheight)*#currBars))*scale);

	table.sort(currBars, barSorter)

	for i, bar in ipairs(currBars) do
		local yoffset = (((-5 - barheight)*(i-1)) - 2)
		bar:ClearAllPoints()
		if(growth == "right") then
			BLCD:BLPoint(bar, "TOPLEFT", anchor, "TOPRIGHT", 5, yoffset)
		elseif(growth == "left") then
			BLCD:BLPoint(bar, "TOPRIGHT", anchor, "TOPLEFT", -5, yoffset)
		end
	end
end

local backdropBorder = {
	bgFile = "Interface\\Buttons\\WHITE8X8",
	edgeFile = "Interface\\Buttons\\WHITE8X8",
	tile = false, tileSize = 0, edgeSize = 1,
	insets = {left = 0, right = 0, top = 0, bottom = 0}
}

local function styleBar(bar)
	local bd = bar.candyBarBackdrop
	bd:SetBackdrop(backdropBorder)
	bd:SetBackdropColor(0.06, 0.06, 0.06, 1)
	bd:SetBackdropBorderColor(0, 0, 0)

	bd:ClearAllPoints()
	bd:SetPoint("TOPLEFT", bar, "TOPLEFT", -1, 1)
	bd:SetPoint("BOTTOMRIGHT", bar, "BOTTOMRIGHT", 1, -1)

	bar.candyBarLabel:SetTextColor(1,1,1,1)
	bar.candyBarLabel:SetJustifyH("CENTER")
	bar.candyBarLabel:SetJustifyV("MIDDLE")
	bar.candyBarLabel:SetFont("Interface\\AddOns\\BL_Cooldown\\media\\PT_Sans_Narrow.ttf", BLCD.db.profile.barfontsize)
	bar.candyBarLabel:SetShadowOffset(_fontShadowX, _fontShadowY)
	bar.candyBarLabel:SetShadowColor(_fontShadowR, _fontShadowG, _fontShadowB, _fontShadowA)

	bar.candyBarDuration:SetTextColor(1,1,1,1)
	bar.candyBarDuration:SetJustifyH("CENTER")
	bar.candyBarDuration:SetJustifyV("MIDDLE")
	bar.candyBarDuration:SetFont("Interface\\AddOns\\BL_Cooldown\\media\\PT_Sans_Narrow.ttf", BLCD.db.profile.barfontsize)
	bar.candyBarDuration:SetShadowOffset(_fontShadowX, _fontShadowY)
	bar.candyBarDuration:SetShadowColor(_fontShadowR, _fontShadowG, _fontShadowB, _fontShadowA)
	bd:Show()
end

function BLCD:CreateBar(frame,cooldown,caster,frameicon,guid,duration,spell)
	local bar = CB:New(BLCD:BLTexture(), BLCD.db.profile.barwidth, BLCD.db.profile.barheight)
	styleBar(bar)
	frameicon.bars[bar] = true
	bar:Set("raidcooldowns:module", "raidcooldowns")
	bar:Set("raidcooldowns:anchor", frameicon)
	bar:Set("raidcooldowns:key", guid)
	bar:Set("raidcooldowns:spell", spell)
	bar:Set("raidcooldowns:caster", strsplit(" ", caster)) -- Prevent charges from messing it up later
	bar:Set("raidcooldowns:cooldown", cooldown)
	bar:SetParent(frameicon)
	bar:SetFrameStrata("MEDIUM")
	if BLCD.db.profile.classcolorbars then
		local color = RAID_CLASS_COLORS[cooldown['class']] or {r=0.5; g=0.5; b=0.5}
		bar:SetColor(color.r,color.g,color.b,1)
	else
		bar:SetColor(.5,.5,.5,1)
	end
	bar:SetFill(BLCD.db.profile.barfill)
	bar:SetDuration(duration)
	bar:SetScale(BLCD.db.profile.scale)
	bar:SetClampedToScreen(true)

	local caster = strsplit("-",caster)
	bar:SetLabel(caster)

	bar.candyBarLabel:SetJustifyH("LEFT")
	return bar
end

function BLCD:CancelBars(spellID)
	if BLCD.db.profile.cooldown[BLCD.cooldowns[spellID].name] then
		for guid, bar in pairs(BLCD.curr[spellID]) do
			bar:Stop()
		end
	end
end

function BLCD:StopPausedBar(cooldown,guid)
	if BLCD.curr[cooldown['spellID']] and BLCD.curr[cooldown['spellID']][guid] then
		local bar = BLCD.curr[cooldown['spellID']][guid]
		if bar.paused then
			bar:Stop()
		end
	end
end

function BLCD:CheckPausedBars(cooldown,unit)
	if BLCD.db.profile.availablebars then
		local unitDead = UnitIsDeadOrGhost(unit) and true
		local unitOnline = (UnitIsConnected(unit) or false)
		local name = UnitName(unit)
		local guid = UnitGUID(unit)
		
		if BLCD.curr[cooldown['spellID']] then
		for guid, bar in pairs(BLCD.curr[cooldown['spellID']]) do
			local unitA = bar:Get("raidcooldowns:caster")
			if not UnitIsConnected(unitA) then
				if bar.paused then
					bar:Stop()
				end
			end
		end
		end
		if BLCD.curr[cooldown['spellID']] and BLCD.curr[cooldown['spellID']][guid] then
			local bar = BLCD.curr[cooldown['spellID']][guid]
			if unitDead or not unitOnline then
				if bar.paused then
					bar:Stop()
				end
			end
		end
		if BLCD.db.profile.cooldown[cooldown.name] and BLCD.cooldownRoster[cooldown['spellID']][guid] and not (BLCD.curr[cooldown['spellID']] and BLCD.curr[cooldown['spellID']][guid]) then
			if not unitDead and unitOnline then
				BLCD:CreatePausedBar(cooldown, guid)
			end
		end
	end
end


--------------------------------------------------------
-- Visibility Functions --
--------------------------------------------------------
function BLCD:CheckVisibility()
	local frame = BLCooldownBase_Frame
	local grouptype = BLCD:GetPartyType()
	if(BLCD.db.profile.show == "never") then
		frame:Hide()
		BLCD.show = nil
	elseif(BLCD.db.profile.show == "raid" and (grouptype =="raid" or grouptype == "instance")) then
		frame:Show()
		BLCD.show = true
	elseif(BLCD.db.profile.show == "raid" and not (grouptype =="raid" or grouptype == "instance")) then
		frame:Hide()
		BLCD.show = nil
	elseif(BLCD.db.profile.show == "raidorparty" and (grouptype =="raid" or grouptype == "instance" or grouptype=="party")) then
		frame:Show()
		BLCD.show = true
	elseif(BLCD.db.profile.show == "raidorparty" and not (grouptype =="raid" or grouptype == "instance" or grouptype=="party")) then
		frame:Hide()
		BLCD.show = nil
	elseif(BLCD.db.profile.show == "party" and grouptype =="party") then
		frame:Show()
		BLCD.show = true
	elseif(BLCD.db.profile.show == "party" and grouptype ~="party") then
		frame:Hide()
		BLCD.show = nil
	end
end

function BLCD:ToggleVisibility()
	local frame = BLCooldownBase_Frame
	if(BLCD.show) then
		frame:Hide()
		BLCD.show = nil
	else
		frame:Show()
		BLCD.show = true
	end
end

function BLCD:ToggleMoversLock()
	local raidcdbasemover = BLCooldownBaseMover_Frame
	if(BLCD.locked) then
		raidcdbasemover:EnableMouse(true)
		raidcdbasemover:RegisterForDrag("LeftButton")
		raidcdbasemover:Show()
		BLCD.locked = nil
		print("unlocked")
	else
		raidcdbasemover:EnableMouse(false)
		raidcdbasemover:RegisterForDrag(nil)
		raidcdbasemover:Hide()
		BLCD.locked = true
		print("locked")
		local point,_,relPoint,xOfs,yOfs = raidcdbasemover:GetPoint(1)
		BLCD.db.profile.framePoint = point
		BLCD.db.profile.relativePoint = relPoint
		BLCD.db.profile.xOffset = xOfs
		BLCD.db.profile.yOffset = yOfs
	end
end
--------------------------------------------------------
--------------------------------------------------------
-- Minimap Button

function BLCD:initMiniMap()
	local button = CreateFrame("Button", "BLCD_MinimapButton", Minimap)
	button.db = BLCD.db.profile.minimapPos or 0
	button:SetFrameStrata("MEDIUM")
	button:SetSize(31, 31)
	button:SetFrameLevel(8)
	button:RegisterForClicks("anyUp")
	button:RegisterForDrag("LeftButton")
	button:SetHighlightTexture("Interface\\Minimap\\UI-Minimap-ZoomButton-Highlight")
	local overlay = button:CreateTexture(nil, "OVERLAY")
	overlay:SetSize(53, 53)
	overlay:SetTexture("Interface\\Minimap\\MiniMap-TrackingBorder")
	overlay:SetPoint("TOPLEFT")
	local background = button:CreateTexture(nil, "BACKGROUND")
	background:SetSize(20, 20)
	background:SetTexture("Interface\\Minimap\\UI-Minimap-Background")
	background:SetPoint("TOPLEFT", 7, -5)
	local icon = button:CreateTexture(nil, "ARTWORK")
	icon:SetSize(17, 17)
	icon:SetTexture("Interface\\Addons\\BL_Cooldown\\media\\BLCD")
	icon:SetPoint("TOPLEFT", 7, -6)
	button.icon = icon
	button.isMouseDown = false

	--button:SetScript("OnEnter", onEnter)
	--button:SetScript("OnLeave", onLeave)

	local onClick, onMouseUp, onMouseDown, onDragStart, onDragStop, onDragEnd, updatePosition

	local minimapShapes = {
		["ROUND"] = {true, true, true, true},
		["SQUARE"] = {false, false, false, false},
		["CORNER-TOPLEFT"] = {false, false, false, true},
		["CORNER-TOPRIGHT"] = {false, false, true, false},
		["CORNER-BOTTOMLEFT"] = {false, true, false, false},
		["CORNER-BOTTOMRIGHT"] = {true, false, false, false},
		["SIDE-LEFT"] = {false, true, false, true},
		["SIDE-RIGHT"] = {true, false, true, false},
		["SIDE-TOP"] = {false, false, true, true},
		["SIDE-BOTTOM"] = {true, true, false, false},
		["TRICORNER-TOPLEFT"] = {false, true, true, true},
		["TRICORNER-TOPRIGHT"] = {true, false, true, true},
		["TRICORNER-BOTTOMLEFT"] = {true, true, false, true},
		["TRICORNER-BOTTOMRIGHT"] = {true, true, true, false},
	}

	function updatePosition(button)
		local angle = math.rad(BLCD.db.profile.minimapPos or 225)
		local x, y, q = math.cos(angle), math.sin(angle), 1
		if x < 0 then q = q + 1 end
		if y > 0 then q = q + 2 end
		local minimapShape = GetMinimapShape and GetMinimapShape() or "ROUND"
		local quadTable = minimapShapes[minimapShape]
		if quadTable[q] then
			x, y = x*80, y*80
		else
			local diagRadius = 103.13708498985 --math.sqrt(2*(80)^2)-10
			x = math.max(-80, math.min(x*diagRadius, 80))
			y = math.max(-80, math.min(y*diagRadius, 80))
		end
		button:SetPoint("CENTER", Minimap, "CENTER", x, y)
	end

	local function onUpdate(self)
		local mx, my = Minimap:GetCenter()
		local px, py = GetCursorPosition()
		local scale = Minimap:GetEffectiveScale()
		px, py = px / scale, py / scale
		BLCD.db.profile.minimapPos = math.deg(math.atan2(py - my, px - mx)) % 360
		updatePosition(self)
	end

	function onDragStart(self)
		self:LockHighlight()
		self.isMouseDown = true
		self:SetScript("OnUpdate", onUpdate)
		self.isMoving = true
		GameTooltip:Hide()
	end

	function onDragStop(self)
		self:SetScript("OnUpdate", nil)
		self.isMouseDown = false
		self:UnlockHighlight()
		self.isMoving = nil
	end

	button:SetScript("OnClick", function() if ACD.OpenFrames["BLCD"] then ACD:Close("BLCD") else ACD:Open("BLCD") end end)
	button:SetScript("OnDragStart", onDragStart)
	button:SetScript("OnDragStop", onDragStop)
	updatePosition(button)
	if BLCD.db.profile.minimap then
		button:Show()
	else
		button:Hide()
	end
	BLCD.minimapButton = button
end

---------------------------------------------------------------------------------------

--------------------------------------------------------
-- Frame Functions --
--------------------------------------------------------
function BLCD:OnEnter(self, cooldown, rosterCD, onCD)
	GameTooltip:Hide()
	GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT",3, 14)
	GameTooltip:ClearLines()
	GameTooltip:AddSpellByID(cooldown['spellID'])

	if next(rosterCD) ~= nil then
		GameTooltip:AddLine(' ')
		for i,v in pairs(rosterCD) do
		-- guid, name
			local logic = (BLCD.db.profile.availablebars and onCD[i] and onCD[i]['paused']) or (not BLCD.db.profile.availablebars and not onCD[i])
			local unitAlive = not (UnitIsDeadOrGhost(v) or false)
			local unitOnline = (UnitIsConnected(v) or false)
			local hasCharges = ""
			if cooldown['charges'] then
				hasCharges = BLCD['charges'][cooldown['name']][i] and " (has charges)" or ""
			end
			if unitAlive and unitOnline and logic then
				GameTooltip:AddLine(v .. ' Ready!' .. hasCharges, 0, 1, 0)
			elseif not unitOnline then
				GameTooltip:AddLine(v .. ' OFFLINE but ready!', 1, 0, 0)
			else
				GameTooltip:AddLine(v .. ' DEAD but Ready!', 1, 0, 0)
			end
		end
	end
	GameTooltip:Show()
end

function BLCD:OnLeave(self)
	GameTooltip:Hide()
end

function BLCD:PostClick(self, cooldown, rosterCD, onCD)
	if(BLCD.db.profile.clickannounce) then
		if next(rosterCD) ~= nil then
			local name = GetSpellInfo(cooldown['spellID'])
			if IsInRaid() or IsInGroup(2) then
				SendChatMessage('----- '..name..' -----',IsInGroup(2) and "INSTANCE_CHAT" or "RAID")
			elseif IsInGroup() then
				SendChatMessage('----- '..name..' -----','PARTY')
			end

			for i,v in pairs(rosterCD) do
				local logic = onCD[i] and onCD[i]['paused']
				if logic or logic == nil then
					local unitAlive = not (UnitIsDeadOrGhost(v) or false)
					local unitOnline = (UnitIsConnected(v) or false)
					if IsInRaid() or IsInGroup(2) then
						if unitAlive and unitOnline then
							SendChatMessage(v..' ready!',IsInGroup(2) and "INSTANCE_CHAT" or "RAID")
						elseif not unitOnline then
							SendChatMessage(v..' OFFLINE but ready!',IsInGroup(2) and "INSTANCE_CHAT" or "RAID")
						else
							SendChatMessage(v..' DEAD but ready!',IsInGroup(2) and "INSTANCE_CHAT" or "RAID")
						end
					elseif IsInGroup() then
						if unitAlive and unitOnline then
							SendChatMessage(v..' ready!','PARTY')
						elseif not unitOnline then
							SendChatMessage(v..' OFFLINE but ready!', 'PARTY')
						else
							SendChatMessage(v..' DEAD but ready!','PARTY')
						end
					end
				end
			end
		end
	end
end
--------------------------------------------------------

--------------------------------------------------------
-- Frame Appearance Functions --
--------------------------------------------------------
function BLCD:Scale()
	local raidcdbase = BLCooldownBase_Frame
	local raidcdbasemover = BLCooldownBaseMover_Frame
	BLCD:BLSize(raidcdbase,32*BLCD.db.profile.scale,32*BLCD.db.profile.scale)
	BLCD:BLSize(raidcdbasemover,32*BLCD.db.profile.scale,96*BLCD.db.profile.scale)
	local i,cooldown
	for i,cooldown in pairs(BLCD.cooldowns) do
		i = cooldown.index
		if (BLCD.db.profile.cooldown[cooldown.name]) then
		BLCD:BLHeight(_G['BLCooldown'..i],28*BLCD.db.profile.scale);
		BLCD:BLWidth(_G['BLCooldown'..i],145*BLCD.db.profile.scale);
		BLCD:BLSize(_G['BLCooldownIcon'..i],28*BLCD.db.profile.scale,28*BLCD.db.profile.scale);
		BLCD:BLFontTemplate(_G['BLCooldownIcon'..i].text, 20*BLCD.db.profile.scale, 'OUTLINE')
		end
	end
	BLCD:BLSize(BLCD.resFrame,35*BLCD.db.profile.scale,30*BLCD.db.profile.scale);
	BLCD:BLSize(BLCD.resFrameIcon,35*BLCD.db.profile.scale,30*BLCD.db.profile.scale);
	BLCD:BLFontTemplate(BLCD.resFrameIcon.text, 14*BLCD.db.profile.scale, 'OUTLINE')
end

function BLCD:SetBarGrowthDirection(frame, frameicon, index)
	if(BLCD.db.profile.growth == "left") then
		if index == nil then
			BLCD:BLPoint(frame,'TOPRIGHT', 'BLCooldownBase_Frame', 'TOPRIGHT', 2, -2);
		else
			BLCD:BLPoint(frame,'TOPRIGHT', 'BLCooldown'..(index), 'BOTTOMRIGHT', 0, -2);
		end
		BLCD:BLPoint(frameicon,'TOPRIGHT', frame, 'TOPRIGHT');
	elseif(BLCD.db.profile.growth == "right") then
		--[[if index == nil then
			BLCD:BLPoint(frame,'TOPLEFT', 'BLCooldownBase_Frame', 'TOPLEFT', 2, -2);
		else
			BLCD:BLPoint(frame,'TOPLEFT', 'BLCooldown'..(index), 'BOTTOMLEFT', 0, -2);
		end]]
		BLCD:BLPoint(frameicon,'TOPLEFT', frame, 'TOPLEFT');
	end
end

function BLCD:RepositionFrames(frame, index, cooldownFrames)
	if(BLCD.db.profile.growth == "left") then
		if index == nil then
			BLCD:BLPoint(frame,'TOPRIGHT', 'BLCooldownBase_Frame', 'TOPRIGHT', 2, -2);
		else
			BLCD:BLPoint(frame,'TOPRIGHT', 'BLCooldown'..(index), 'BOTTOMRIGHT', 0, -2);
		end
	elseif(BLCD.db.profile.growth == "right") then
		if index == nil then
			BLCD:BLPoint(frame,'TOPLEFT', 'BLCooldownBase_Frame', 'TOPLEFT', 2, -2);
		else
			BLCD:BLPoint(frame,'TOPLEFT', 'BLCooldown'..(index), 'BOTTOMLEFT', 0, -2);
		end
	end
end

function BLCD:InsertFrame(frame, prevIndex, nextIndex, cooldownFrames)
	if prevIndex == nil then
		BLCD:BLPoint(frame,'TOPLEFT', 'BLCooldownBase_Frame', 'TOPLEFT', 2, -2);
		frame:Show()
		if nextIndex ~= nil then BLCD:BLPoint(cooldownFrames[nextIndex],'TOPLEFT', frame, 'BOTTOMLEFT', 0, -2); end
	else
		BLCD:BLPoint(frame,'TOPLEFT', cooldownFrames[prevIndex], 'BOTTOMLEFT', 0, -2);
		frame:Show()
		if nextIndex ~= nil then BLCD:BLPoint(cooldownFrames[nextIndex],'TOPLEFT', frame, 'BOTTOMLEFT', 0, -2); end
	end
end

function BLCD:RemoveFrame(frame, prevIndex, nextIndex, cooldownFrames)
	if prevIndex == nil then
		frame:Hide()
		if nextIndex ~= nil then BLCD:BLPoint(cooldownFrames[nextIndex],'TOPLEFT', 'BLCooldownBase_Frame', 'TOPLEFT', 2, -2); end
	else
		frame:Hide()
		if nextIndex ~= nil then BLCD:BLPoint(cooldownFrames[nextIndex],'TOPLEFT', cooldownFrames[prevIndex], 'BOTTOMLEFT', 0, -2); end
	end
end

function BLCD:BLHeight(frame, height)
	if(Elv) then
		frame:Height(height)
	else
		frame:SetHeight(height)
	end
end

function BLCD:BLWidth(frame, width)
	if(Elv) then
		frame:Width(width)
	else
		frame:SetWidth(width)
	end
end

function BLCD:BLSize(frame, width, height)
	if(Elv) then
		frame:Size(width, height)
	else
		frame:SetSize(width, height)
	end
end

function BLCD:BLPoint(obj, arg1, arg2, arg3, arg4, arg5)
	if(Elv) then
		obj:Point(arg1, arg2, arg3, arg4, arg5)
	else
		obj:SetPoint(arg1, arg2, arg3, arg4, arg5)
	end
end

function BLCD:BLTexture()
	if(Elv and false) then
		return E["media"].normTex
	else
		return "Interface\\AddOns\\BL_Cooldown\\media\\bar15.tga"
	end
end

function BLCD:BLFontTemplate(frame, x, y)
	if(Elv) then
		frame:FontTemplate(nil, x, y)
	else
		frame:SetFont("Interface\\AddOns\\BL_Cooldown\\media\\PT_Sans_Narrow.ttf", x, y)
		frame:SetShadowColor(0, 0, 0, 0.2)
		frame:SetShadowOffset(1, -1)
	end
end
--------------------------------------------------------