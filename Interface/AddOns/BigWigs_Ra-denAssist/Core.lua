--------------------------------------------------------------------------------
--[[ TO DO:
]]--
--------------------------------------------------------------------------------
-- Module Declaration
--

local mod, CL = BigWigs:NewBoss("Ra-den Assist", 930)
if not mod then return end
mod:RegisterEnableMob(69473)
mod.toggleOptions = {"assist", "balls"}
local mainMod = BigWigs:GetBossModule("Ra-den")

local candy = LibStub("LibCandyBar-3.0")
local media = LibStub("LibSharedMedia-3.0")
local colors = BigWigs:GetPlugin("Colors")
local bars = BigWigs:GetPlugin("Bars")
local ML = mainMod:GetLocale()
local chatPrefix = "|cFF33FF99BigWigs_Ra-denAssist|r: "

--------------------------------------------------------------------------------
-- Localization
--

local L = mod:NewLocale("enUS", true)
if L then
	L.modname = "Ra-den Assist"

	L.assist = "Assist"
	L.assist_desc = "Open the main config for more options /bwra (Assuming the module is Enabled (to enable the module, mouse over the boss)). Emphasizing this is highly recommended"

	L.balls = "Custom ball kill order"
	L.balls_desc = "You can customize the kill order in the options subpanel when you type /bwra. If you are a DPS emphasizing this is highly recommended."

	L.killred = "Kill |cffff0000RED|r ball"
	L.ballstouching = "Balls touching (%d)"
	L.firstkillredcount = "How many red balls should be killed before the first time you don't kill any balls?"
	L.secondredkillcount = "How many red balls should be killed between the first and second time you don't kill any balls?"
	L.thirdredkillcount = "How many red balls should be killed between the second and third time you don't kill any balls?"
	L.fourthredkillcount = "How many red balls should be killed between the third and fourth time you don't kill any balls?"

	L.warn = "Raid Warn"
	L.warn_desc = "Tell your raid what to do with a Raid Warning, requires Raid Leader or Raid Officer."

	L.update = "Priority for Unstable Vita '%s' updated to %s by %s."
	L.denied = "You must be Raid Leader or Raid Officer to do that!"
	L.allowed = "Raid members have been updated."
	L.loaded = "Loaded. To configure type /bwra"
	L.syncbutton = "Send Lists"
	L.syncbutton_header = "Send Lists to other BigWigs_Ra-denAssist users. (Requires Raid Leader/Officer). (Also announces the groups in raid chat)"
	L.optionssyncbutton_header = "Send the options (balls kill order, group icons) to ther BigWigs_Ra-denAssist users. (Requires Raid Leader/Officer)."
	L.optionssync = "Sync options"
	L.notsynced = "The following players did not receive the roster updates: %s"
	L.fullysynced = "Everyone in the active groups (first 2 (10 H) or 5 (25 H)) received the roster update."
	L.options = "Options"

	L.close = "Close"
	L.close_desc = "Close the Ra-den Assist display."
	L.togglelock = "Toggle Lock"
	L.toggleloc_desc = "Toggle whether or not the Ra-den Assist window should be locked or not."
	L.wrongdifficulty = "Wrong difficulty (or maybe you are not in an instance)! Change to either 10 H or 25 H, then try again."
	L.updatingroster = "Updating roster from the first 2 (10 H) or 5 (25 H) groups."
	L.updateroster = "Update roster"
	L.updateroster_desc = "Update roster from the first 2 (10 H) or 5 (25 H) groups, in case your raid setup changed."
	L.updatereceived = "Update received from: %s."
	L.groupfilter = "Make the Ra-den Asisst display show both of the groups not just the one you are in."
	L.uv = "UV" -- short for Unstable Vita

	L.group1icon = "Icon used for one of the group"
	L.group2icon = "Icon used for the other group"
	L.group = "Group"
	L.unassigned = "Unassigned:"

	L.oldballs = "It has been changed how the addon handles the ball kill order, please double check if your ball kill order is still accurate!"
	L.warnfordeath = "Remember, when you accept a combat res, it's possible that it'll be instantly your turn to soak again. Be prepared!"
	L.yourturntosoak = "Probably your turn to soak"
	L.nextingroup = "Next in %s: %s"
	L.star     = "STAR"
	L.cicle    = "CIRCLE"
	L.diamond  = "DIAMOND"
	L.triangle = "TRIANGLE"
	L.square   = "SQUARE"
	L.cross    = "CROSS"
end
L = mod:GetLocale()
L.assist_icon = 138308
L.balls_icon = 138321
mod.displayName = L.modname

--------------------------------------------------------------------------------
-- Initialization
--

local defaults = {
	profile = {
		posx = nil,
		posy = nil,
		lock = nil,
		width = 155,
		height = 233,
		redkillcount = { 4, 2, 3, 2 },
		group1icon = 1,
		group2icon = 3,
	}
}

local windowShown = nil
local listenToSyncResponse = nil
local rosterUpdated = {}
local unlock = "Interface\\AddOns\\BigWigs_Ra-denAssist\\Textures\\icons\\lock"
local lock = "Interface\\AddOns\\BigWigs_Ra-denAssist\\Textures\\icons\\un_lock"

local window = nil
local vitaBar = nil

local cooldownCounter, ballCounter = 1, 1

local group1, group2, roster = {}, {}, {}

local raidIcons = {
	"|TInterface\\TARGETINGFRAME\\UI-RaidTargetingIcon_1.blp:0:0:0:0|t",
	"|TInterface\\TARGETINGFRAME\\UI-RaidTargetingIcon_2.blp:0:0:0:0|t",
	"|TInterface\\TARGETINGFRAME\\UI-RaidTargetingIcon_3.blp:0:0:0:0|t",
	"|TInterface\\TARGETINGFRAME\\UI-RaidTargetingIcon_4.blp:0:0:0:0|t",
	nil,
	"|TInterface\\TARGETINGFRAME\\UI-RaidTargetingIcon_6.blp:0:0:0:0|t",
	"|TInterface\\TARGETINGFRAME\\UI-RaidTargetingIcon_7.blp:0:0:0:0|t",
}

local iconName = {
	L.star    ,
	L.cicle   ,
	L.diamond ,
	L.triangle,
	nil,
	L.square  ,
	L.cross   ,
}

local UnitIsUnit = UnitIsUnit
local UnitDebuff = UnitDebuff
local UnitIsDeadOrGhost = UnitIsDeadOrGhost
local UnitIsGroupLeader = UnitIsGroupLeader
local UnitIsGroupAssistant = UnitIsGroupAssistant
local UnitBuff = UnitBuff
local SetRaidTarget = SetRaidTarget
local UnitClass = UnitClass
local UnitExists = UnitExists

-----------------------------------------------------------------------
-- Display Window
--

local function colorizeName(name)
	local hexColors = {}
	for k, v in next, (CUSTOM_CLASS_COLORS or RAID_CLASS_COLORS) do
		hexColors[k] = "|cff" .. format("%02x%02x%02x", v.r * 255, v.g * 255, v.b * 255)
	end
	if not UnitExists(name) or not UnitClass(name) then return name end
	return hexColors[select(2,UnitClass(name))] .. name .. "|r"
end

local function onDragStart(self) self:StartMoving() end
local function onDragStop(self)
	self:StopMovingOrSizing()
	local s = self:GetEffectiveScale()
	mod.db.profile.posx = self:GetLeft() * s
	mod.db.profile.posy = self:GetTop() * s
end
local function OnDragHandleMouseDown(self) self.frame:StartSizing("BOTTOMRIGHT") end
local function OnDragHandleMouseUp(self) self.frame:StopMovingOrSizing() end
local function onResize(self, width, height)
	mod.db.profile.width = width
	mod.db.profile.height = height
	vitaBar:SetWidth(width)
	self.text1:SetPoint("BOTTOM", self, mod.db.profile.groupFilter and -1*mod.db.profile.width/4 or 0, 1)
	self.text2:SetPoint("BOTTOM", self, mod.db.profile.groupFilter and mod.db.profile.width/4 or 0, 1)
end

local locked = nil
local function lockDisplay()
	if locked then return end
	window:EnableMouse(false)
	window:SetMovable(false)
	window:SetResizable(false)
	window:RegisterForDrag()
	window:SetScript("OnSizeChanged", nil)
	window:SetScript("OnDragStart", nil)
	window:SetScript("OnDragStop", nil)
	window.drag:Hide()
	locked = true
end

local function unlockDisplay()
	if not locked then return end
	window:EnableMouse(true)
	window:SetMovable(true)
	window:SetResizable(true)
	window:RegisterForDrag("LeftButton")
	window:SetScript("OnSizeChanged", onResize)
	window:SetScript("OnDragStart", onDragStart)
	window:SetScript("OnDragStop", onDragStop)
	window.drag:Show()
	locked = nil
end

local function updateLockButton()
	if not window then return end
	window.lock:SetNormalTexture(mod.db.profile.lock and unlock or lock)
end

local function toggleLock()
	if mod.db.profile.lock then
		unlockDisplay()
	else
		lockDisplay()
	end
	mod.db.profile.lock = not mod.db.profile.lock
	updateLockButton()
end

local function onControlEnter(self)
	GameTooltip:ClearLines()
	GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT")
	GameTooltip:AddLine(self.tooltipHeader)
	GameTooltip:AddLine(self.tooltipText, 1, 1, 1, 1)
	GameTooltip:Show()
end
local function onControlLeave() GameTooltip:Hide() end
local function closeWindow() window:Hide() windowShown = false end

local function ensureDisplay()
	if window then return end

	local display = CreateFrame("Frame", "RadenAssistAnchor", UIParent)
	display:SetWidth(mod.db.profile.width)
	display:SetHeight(mod.db.profile.height)
	display:SetMinResize(100, 30)
	display:SetClampedToScreen(true)
	local bg = display:CreateTexture(nil, "PARENT")
	bg:SetAllPoints(display)
	bg:SetBlendMode("BLEND")
	bg:SetTexture(0, 0, 0, 0.3)

	local close = CreateFrame("Button", nil, display)
	close:SetPoint("BOTTOMRIGHT", display, "TOPRIGHT", -2, 2)
	close:SetHeight(16)
	close:SetWidth(16)
	close.tooltipHeader = L.close
	close.tooltipText = L.close_desc
	close:SetNormalTexture("Interface\\AddOns\\BigWigs\\Textures\\icons\\close")
	close:SetScript("OnEnter", onControlEnter)
	close:SetScript("OnLeave", onControlLeave)
	close:SetScript("OnClick", closeWindow)

	local lock = CreateFrame("Button", nil, display)
	lock:SetPoint("BOTTOMLEFT", display, "TOPLEFT", 2, 2)
	lock:SetHeight(16)
	lock:SetWidth(16)
	lock.tooltipHeader = L.togglelock
	lock.tooltipText = L.togglelock_desc
	lock:SetScript("OnEnter", onControlEnter)
	lock:SetScript("OnLeave", onControlLeave)
	lock:SetScript("OnClick", toggleLock)
	display.lock = lock

	local header = display:CreateFontString(nil, "OVERLAY", "GameFontNormal")
	header:SetText(L.modname)
	header:SetPoint("BOTTOM", display, "TOP", 0, 4)

	local text1 = display:CreateFontString(nil, "OVERLAY", "GameFontNormalHuge")
	text1:SetFont("Fonts\\FRIZQT__.TTF", 18)
	text1:SetPoint("BOTTOM", display, mod.db.profile.groupFilter and -1*mod.db.profile.width/4 or 0, 1)
	display.text1 = text1

	local text2 = display:CreateFontString(nil, "OVERLAY", "GameFontNormalHuge")
	text2:SetFont("Fonts\\FRIZQT__.TTF", 18)
	text2:SetPoint("BOTTOM", display, mod.db.profile.groupFilter and mod.db.profile.width/4 or 0, 1)
	display.text2 = text2

	local drag = CreateFrame("Frame", nil, display)
	drag.frame = display
	drag:SetFrameLevel(display:GetFrameLevel() + 10) -- place this above everything
	drag:SetWidth(16)
	drag:SetHeight(16)
	drag:SetPoint("BOTTOMRIGHT", display, -1, 1)
	drag:EnableMouse(true)
	drag:SetScript("OnMouseDown", OnDragHandleMouseDown)
	drag:SetScript("OnMouseUp", OnDragHandleMouseUp)
	drag:SetAlpha(0.5)
	display.drag = drag

	local tex = drag:CreateTexture(nil, "BACKGROUND")
	tex:SetTexture("Interface\\AddOns\\BigWigs\\Textures\\draghandle")
	tex:SetWidth(16)
	tex:SetHeight(16)
	tex:SetBlendMode("ADD")
	tex:SetPoint("CENTER", drag)

	window = display

	local x = mod.db.profile.posx
	local y = mod.db.profile.posy
	if x and y then
		local s = display:GetEffectiveScale()
		display:ClearAllPoints()
		display:SetPoint("TOPLEFT", UIParent, "BOTTOMLEFT", x / s, y / s)
	else
		display:ClearAllPoints()
		display:SetPoint("CENTER", UIParent)
	end

	updateLockButton()
	if mod.db.profile.lock then
		locked = nil
		lockDisplay()
	else
		locked = true
		unlockDisplay()
	end
end

local function stripText(t)
	return t:find("|") and t:sub(11, -3) or t
end

local function updateConfigTeamButtons()
	for i=1, 25 do
		mod.unassigned[i][1]:SetText(colorizeName(roster[i]))
		mod.group1Buttons[i][1]:SetText(colorizeName(group1[i]))
		mod.group2Buttons[i][1]:SetText(colorizeName(group2[i]))

		if mod.unassigned[i][1]:GetText() then mod.unassigned[i][1]:Show() else mod.unassigned[i][1]:Hide() end
		if mod.group1Buttons[i][1]:GetText() then mod.group1Buttons[i][1]:Show() else mod.group1Buttons[i][1]:Hide() end
		if mod.group2Buttons[i][1]:GetText() then mod.group2Buttons[i][1]:Show() else mod.group2Buttons[i][1]:Hide() end
		mod.db.profile.roster = roster
		mod.db.profile.group1 = group1
		mod.db.profile.group2 = group2
	end
end

local function playerIsInRaid(player)
	local _, _, diff = GetInstanceInfo()
	local num = GetNumGroupMembers()
	if diff ~= 5 and diff ~= 6 then
		print(chatPrefix .. L.wrongdifficulty)
		return "error"
	end
	for i=1, num do
		local player1, _, subgroup = GetRaidRosterInfo(i)
		if diff == 6 then
			if subgroup < 6 then
				if player and player1 and player1 == player then
					return true
				end
			end
		else
			if subgroup < 3 then
				if player and player1 and player1 == player then
					return true
				end
			end
		end
	end
	return false
end

local function updateRoster()
	local _, _, diff = GetInstanceInfo()
	local num = GetNumGroupMembers()
	if diff ~= 5 and diff ~= 6 then
		print(chatPrefix .. L.wrongdifficulty)
		return
	end
	print(chatPrefix .. L.updatingroster)

	-- remove players from the lista that are not really in the raid
	local c = 1
	while c < #roster+1 do
		if not playerIsInRaid(roster[c]) then
			tremove(roster, c)
			c = 0
		end
		c = c + 1
	end
	local c = 1
	while c < #group1+1 do
		if not playerIsInRaid(group1[c]) then
			tremove(group1, c)
			c = 0
		end
		c = c + 1
	end
	local c = 1
	while c < #group2+1 do
		if not playerIsInRaid(group2[c]) then
			tremove(group2, c)
			c = 0
		end
		c = c + 1
	end
	-- add players to the roster that are really in the raid but not on any list
	local function playerInAnyList(player)
		for i=1, 25 do
			if group1[i] == player or group2[i] == player or roster[i] == player then
				return true
			end
		end
		return false
	end
	for i=1, num do
		local player, _, subgroup = GetRaidRosterInfo(i)
		if diff == 6 then
			if subgroup < 6 then
				if not playerInAnyList(player) then
					tinsert(roster, player)
				end
			end
		else
			if subgroup < 3 then
				if not playerInAnyList(player) then
					tinsert(roster, player)
				end
			end
		end
	end
	updateConfigTeamButtons()
end

local function startbar(destName)
	if vitaBar then vitaBar:Stop() end
	vitaBar = nil
	vitaBar = candy:New(media:Fetch("statusbar", bars.db.profile.texture), mod.db.profile.width, 18*bars.db.profile.scale)
	local module, key = mod, "assist"
	vitaBar:SetColor(colors:GetColor("barColor", module, key))
	vitaBar.candyBarLabel:SetShadowColor(colors:GetColor("barTextShadow", module, key))
	vitaBar.candyBarDuration:SetShadowColor(colors:GetColor("barTextShadow", module, key))
	local f = media:Fetch("font", bars.db.profile.font)
	vitaBar.candyBarLabel:SetFont(f, bars.db.profile.fontSize*bars.db.profile.scale, bars.db.profile.outline ~= "NONE" and bars.db.profile.outline)
	vitaBar.candyBarDuration:SetFont(f, bars.db.profile.fontSize*bars.db.profile.scale, bars.db.profile.outline ~= "NONE" and bars.db.profile.outline)
	vitaBar:SetTimeVisibility(bars.db.profile.time)
	vitaBar:SetIcon(bars.db.profile.icon and (select(3, GetSpellInfo(138308))))
	vitaBar:SetFill(bars.db.profile.fill)
	--currentBarStyler.ApplyStyle(bar) -- would be nice to have same style as BW has, but looks pretty complex to achiev right now
	vitaBar.candyBarLabel:SetJustifyH(bars.db.profile.align)
	vitaBar:SetPoint("TOPLEFT", window, "BOTTOMLEFT", 0, 0)
	vitaBar:SetDuration(5)
	vitaBar:SetLabel(CL["other"]:format(L.uv, colorizeName(destName)))
	vitaBar:Start()
end

function mod:OnBossEnable()
	if not self.db.profile.width then self.db.profile.width = defaults.profile.width end
	if not self.db.profile.height then self.db.profile.height = defaults.profile.height end
	if not self.db.profile.redkillcount then self.db.profile.redkillcount = defaults.profile.redkillcount end
	if not self.db.profile.group1icon then self.db.profile.group1icon = defaults.profile.group1icon end
	if not self.db.profile.group2icon then self.db.profile.group2icon = defaults.profile.group2icon end
	roster = self.db.profile.roster or {}
	group1 = self.db.profile.group1 or {}
	group2 = self.db.profile.group2 or {}

	if self.db.profile.firstredkillcount then
		print(chatPrefix .. L.oldballs)
		self.db.profile.firstredkillcount = nil
		self.db.profile.restredkillcount = nil
	end

	ensureDisplay()
	-- Start the show!
	window:Show()
	windowShown = true

	self:RegisterEvent("INSTANCE_ENCOUNTER_ENGAGE_UNIT", "CheckBossStatus")
	self:Log("SPELL_AURA_APPLIED", "UnstableVitaApplied", 138297, 138308)
	self:Log("SPELL_AURA_REMOVED", "UnstableVitaRemoved", 138297, 138308)
	self:Log("SPELL_CAST_START", "Balls", 138321)
	self:AddSyncListener("roster", 0)
	self:AddSyncListener("group1", 0)
	self:AddSyncListener("group2", 0)
	self:AddSyncListener("ballkillorder", 0)
	self:AddSyncListener("group1icon", 0)
	self:AddSyncListener("group2icon", 0)
	self:AddSyncListener("rosterupdated", 0)
	self:Yell("Disable", ML.kill_trigger)

	if RadenAssist then return end
	local ra = CreateFrame("Frame", "RadenAssist", InterfaceOptionsFramePanelContainer)
	ra.name = "Big Wigs ".. L.modname
	InterfaceOptions_AddCategory(ra)
	local raTitle = ra:CreateFontString(nil, "ARTWORK", "GameFontNormalHuge")
	raTitle:SetPoint("CENTER", ra, "TOP", 0, -20)
	raTitle:SetText(ra.name.." r44-release") --wowace magic, replaced with tag version

	local raOptions = CreateFrame("Frame", "RadenAssistOptions", InterfaceOptionsFramePanelContainer)
	raOptions.parent = "Big Wigs ".. L.modname
	raOptions.name = "Options"
	InterfaceOptions_AddCategory(raOptions)
	local raOptionsTitle = raOptions:CreateFontString(nil, "ARTWORK", "GameFontNormalHuge")
	raOptionsTitle:SetPoint("CENTER", raOptions, "TOP", 0, -20)
	raOptionsTitle:SetText(L.options)

	local group1Header = ra:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	group1Header:SetPoint("CENTER", ra, "TOP", -190, -50)
	group1Header:SetText(CL["other"]:format(L.group, raidIcons[tonumber(mod.db.profile.group1icon)]))

	local unassignedHeader = ra:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	unassignedHeader:SetPoint("CENTER", ra, "TOP", 0, -50)
	unassignedHeader:SetText(L.unassigned)

	local group2Header = ra:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	group2Header:SetPoint("CENTER", ra, "TOP", 190, -50)
	group2Header:SetText(CL["other"]:format(L.group, raidIcons[tonumber(mod.db.profile.group2icon)]))

	local function onRosterButtonClick(frame, destGroup, sourceGroup)
		tinsert(destGroup, stripText(frame:GetParent():GetText()))
		tremove(sourceGroup, frame:GetName():match("%d+"))
		updateConfigTeamButtons()
	end

	local function inGroupButtonClick(frame, group, direction)
		local oldPosition = frame:GetName():match("%d+")
		if direction == "^" and not group[oldPosition-1] then return end
		if direction == "v" and not group[oldPosition+1] then return end
		tremove(group, oldPosition)
		tinsert(group, oldPosition-(direction == "^" and 1 or -1), stripText(frame:GetParent():GetText()))
		updateConfigTeamButtons()
	end

	mod.unassigned = {}
	local unassigned = mod.unassigned
	for i=1, 25 do
		unassigned[i] = {}
		unassigned[i][1] = CreateFrame("Button", "u"..i, ra, "UIPanelButtonTemplate")
		unassigned[i][1]:SetWidth(130)
		unassigned[i][1]:SetHeight(16)
		unassigned[i][1]:SetPoint("TOP", 0, -60-(i*16))
		unassigned[i][1]:SetText(colorizeName(roster[i]))

		unassigned[i][2] = CreateFrame("Button", "uL"..i, unassigned[i][1], "UIPanelButtonTemplate")
		unassigned[i][2]:SetWidth(20)
		unassigned[i][2]:SetHeight(16)
		unassigned[i][2]:SetPoint("LEFT", -21, 0)
		unassigned[i][2]:SetText("<")
		unassigned[i][2]:SetScript("OnClick", function(frame) onRosterButtonClick(frame, group1, roster) end)

		unassigned[i][3] = CreateFrame("Button", "uR"..i, unassigned[i][1], "UIPanelButtonTemplate")
		unassigned[i][3]:SetWidth(20)
		unassigned[i][3]:SetHeight(16)
		unassigned[i][3]:SetPoint("RIGHT", 21, 0)
		unassigned[i][3]:SetText(">")
		unassigned[i][3]:SetScript("OnClick", function(frame) onRosterButtonClick(frame, group2, roster) end)

		if not unassigned[i][1]:GetText() then unassigned[i][1]:Hide() end
	end

	mod.group1Buttons = {}
	local group1Buttons = mod.group1Buttons
	for i=1, 25 do
		group1Buttons[i] = {}
		group1Buttons[i][1] = CreateFrame("Button", "u"..i, ra, "UIPanelButtonTemplate")
		group1Buttons[i][1]:SetWidth(130)
		group1Buttons[i][1]:SetHeight(16)
		group1Buttons[i][1]:SetPoint("TOP", -190, -60-(i*16))
		group1Buttons[i][1]:SetText(colorizeName(group1[i]))

		group1Buttons[i][2] = CreateFrame("Button", "uU"..i, group1Buttons[i][1], "UIPanelButtonTemplate")
		group1Buttons[i][2]:SetWidth(20)
		group1Buttons[i][2]:SetHeight(16)
		group1Buttons[i][2]:SetPoint("LEFT", -21, 0)
		group1Buttons[i][2]:SetText("^")
		group1Buttons[i][2]:SetScript("OnClick", function(frame) inGroupButtonClick(frame, group1, "^") end)

		group1Buttons[i][3] = CreateFrame("Button", "uD"..i, group1Buttons[i][1], "UIPanelButtonTemplate")
		group1Buttons[i][3]:SetWidth(20)
		group1Buttons[i][3]:SetHeight(16)
		group1Buttons[i][3]:SetPoint("LEFT", -42, 0)
		group1Buttons[i][3]:SetText("v")
		group1Buttons[i][3]:SetScript("OnClick", function(frame) inGroupButtonClick(frame, group1, "v") end)

		group1Buttons[i][4] = CreateFrame("Button", "uR"..i, group1Buttons[i][1], "UIPanelButtonTemplate")
		group1Buttons[i][4]:SetWidth(20)
		group1Buttons[i][4]:SetHeight(16)
		group1Buttons[i][4]:SetPoint("RIGHT", 21, 0)
		group1Buttons[i][4]:SetText(">")
		group1Buttons[i][4]:SetScript("OnClick", function(frame) onRosterButtonClick(frame, roster, group1) end)

		if not group1Buttons[i][1]:GetText() then group1Buttons[i][1]:Hide() end
	end

	mod.group2Buttons = {}
	local group2Buttons = mod.group2Buttons
	for i=1, 25 do
		group2Buttons[i] = {}
		group2Buttons[i][1] = CreateFrame("Button", "u"..i, ra, "UIPanelButtonTemplate")
		group2Buttons[i][1]:SetWidth(130)
		group2Buttons[i][1]:SetHeight(16)
		group2Buttons[i][1]:SetPoint("TOP", 190, -60-(i*16))
		group2Buttons[i][1]:SetText(colorizeName(group2[i]))

		group2Buttons[i][2] = CreateFrame("Button", "uU"..i, group2Buttons[i][1], "UIPanelButtonTemplate")
		group2Buttons[i][2]:SetWidth(20)
		group2Buttons[i][2]:SetHeight(16)
		group2Buttons[i][2]:SetPoint("RIGHT", 21, 0)
		group2Buttons[i][2]:SetText("^")
		group2Buttons[i][2]:SetScript("OnClick", function(frame) inGroupButtonClick(frame, group2, "^") end)

		group2Buttons[i][3] = CreateFrame("Button", "uD"..i, group2Buttons[i][1], "UIPanelButtonTemplate")
		group2Buttons[i][3]:SetWidth(20)
		group2Buttons[i][3]:SetHeight(16)
		group2Buttons[i][3]:SetPoint("RIGHT", 42, 0)
		group2Buttons[i][3]:SetText("v")
		group2Buttons[i][3]:SetScript("OnClick", function(frame) inGroupButtonClick(frame, group2, "v") end)

		group2Buttons[i][4] = CreateFrame("Button", "uR"..i, group2Buttons[i][1], "UIPanelButtonTemplate")
		group2Buttons[i][4]:SetWidth(20)
		group2Buttons[i][4]:SetHeight(16)
		group2Buttons[i][4]:SetPoint("LEFT", -21, 0)
		group2Buttons[i][4]:SetText("<")
		group2Buttons[i][4]:SetScript("OnClick", function(frame) onRosterButtonClick(frame, roster, group2) end)

		if not group2Buttons[i][1]:GetText() then group2Buttons[i][1]:Hide() end
	end

	local updateRosterButtonText = ra:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	updateRosterButtonText:SetPoint("TOPLEFT", 130, -490)
	updateRosterButtonText:SetWordWrap(true)
	updateRosterButtonText:SetWidth(480)
	updateRosterButtonText:SetText(L.updateroster_desc)

	local updateRosterButton = CreateFrame("Button", "raUpdateRosterButton", ra, "UIPanelButtonTemplate")
	updateRosterButton:SetWidth(120)
	updateRosterButton:SetHeight(30)
	updateRosterButton:SetPoint("TOPLEFT", 20, -480)
	updateRosterButton:SetText(L.updateroster)
	updateRosterButton:SetScript("OnClick", updateRoster)

	local assistButtonText = ra:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	assistButtonText:SetPoint("TOPLEFT", 100, -520)
	assistButtonText:SetWordWrap(true)
	assistButtonText:SetWidth(500)
	assistButtonText:SetText(L.syncbutton_header)

	local assistUpdate = CreateFrame("Button", "raUpdateButton", ra, "UIPanelButtonTemplate")
	assistUpdate:SetWidth(80)
	assistUpdate:SetHeight(30)
	assistUpdate:SetPoint("TOPLEFT", 20, -510)
	assistUpdate:SetText(L.syncbutton)
	assistUpdate:SetScript("OnClick", function(frame)
		if not UnitIsGroupLeader("player") and not UnitIsGroupAssistant("player") then
			print(chatPrefix.. L.denied)
			return
		end
		listenToSyncResponse = true
		wipe(rosterUpdated)
		local rosterList = ""
		for i=1, #roster do
			rosterList = ("%s %s"):format(rosterList, roster[i])
		end
		mod:Sync("roster", rosterList)
		local group1List = ""
		for i=1, #group1 do
			group1List = ("%s %s"):format(group1List, group1[i])
		end
		mod:Sync("group1", group1List)
		SendChatMessage(("{rt%d} %s"):format(mod.db.profile.group1icon, group1List), "RAID")
		local group2List = ""
		for i=1, #group2 do
			group2List = ("%s %s"):format(group2List, group2[i])
		end
		mod:Sync("group2", group2List)
		SendChatMessage(("{rt%d} %s"):format(mod.db.profile.group2icon, group2List), "RAID")
		print(chatPrefix.. L.allowed)
	end)
	local function buttonShow(frame)
		if not IsInInstance() then
			frame:Disable()
		else
			frame:Enable()
		end
	end
	assistUpdate:SetScript("OnShow", buttonShow)
	buttonShow(assistUpdate)

	local groupFilterBtn = CreateFrame("CheckButton", "raGroupFilterBtn", raOptions, "OptionsBaseCheckButtonTemplate")
	groupFilterBtn:SetScript("OnClick", function(frame)
		if frame:GetChecked() then
			PlaySound("igMainMenuOptionCheckBoxOn")
			self.db.profile.groupFilter = true
			if window then
				window.text1:SetPoint("BOTTOM", window, -1*mod.db.profile.width/4, 1)
				window.text2:SetPoint("BOTTOM", window, mod.db.profile.width/4, 1)
			end
		else
			PlaySound("igMainMenuOptionCheckBoxOff")
			self.db.profile.groupFilter = nil
			if window then
				window.text1:SetPoint("BOTTOM", window, 0, 1)
				window.text2:SetPoint("BOTTOM", window, 0, 1)

			end
		end
	end)
	groupFilterBtn:SetPoint("TOPLEFT", 20, -50)
	if self.db.profile.groupFilter then
		groupFilterBtn:SetChecked(true)
	else
		groupFilterBtn:SetChecked(false)
	end
	local groupFilterBtnText = groupFilterBtn:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	groupFilterBtnText:SetPoint("LEFT", groupFilterBtn, "RIGHT")
	groupFilterBtnText:SetText(L.groupfilter)
	groupFilterBtnText:SetWordWrap(true)

	local raidwarnBtn = CreateFrame("CheckButton", "raRaidWarnBtn", raOptions, "OptionsBaseCheckButtonTemplate")
	raidwarnBtn:SetScript("OnClick", function(frame)
		if frame:GetChecked() then
			PlaySound("igMainMenuOptionCheckBoxOn")
			self.db.profile.disableWarn = nil
		else
			PlaySound("igMainMenuOptionCheckBoxOff")
			self.db.profile.disableWarn = true
		end
	end)
	raidwarnBtn:SetPoint("TOPLEFT", 20, -80)
	if self.db.profile.disableWarn then
		raidwarnBtn:SetChecked(false)
	else
		raidwarnBtn:SetChecked(true)
	end
	local raidwarnBtnText = raidwarnBtn:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	raidwarnBtnText:SetPoint("LEFT", raidwarnBtn, "RIGHT")
	raidwarnBtnText:SetText(L.warn_desc)
	raidwarnBtnText:SetWordWrap(true)

	local function updateRedKillSlider(frame, value)
		if frame:GetName() == "firstRedKillSlider" then
			mod.db.profile.redkillcount[1] = value
			firstRedKillSliderText:SetText(value)
		elseif frame:GetName() == "secondRedKillSlider" then
			mod.db.profile.redkillcount[2] = value
			secondRedKillSliderText:SetText(value)
		elseif frame:GetName() == "thirdRedKillSlider" then
			mod.db.profile.redkillcount[3] = value
			thirdRedKillSliderText:SetText(value)
		elseif frame:GetName() == "fourthRedKillSlider" then
			mod.db.profile.redkillcount[4] = value
			fourthRedKillSliderText:SetText(value)
		end
	end

	local function onShowRedKillSlider(frame)
		if frame:GetName() == "firstRedKillSlider" then
			frame:SetValue(mod.db.profile.redkillcount[1])
			firstRedKillSliderText:SetText(mod.db.profile.redkillcount[1])
		elseif frame:GetName() == "secondRedKillSlider" then
			frame:SetValue(mod.db.profile.redkillcount[2])
			secondRedKillSliderText:SetText(mod.db.profile.redkillcount[2])
		elseif frame:GetName() == "thirdRedKillSlider" then
			frame:SetValue(mod.db.profile.redkillcount[3])
			thirdRedKillSliderText:SetText(mod.db.profile.redkillcount[3])
		elseif frame:GetName() == "fourthRedKillSlider" then
			frame:SetValue(mod.db.profile.redkillcount[4])
			fourthRedKillSliderText:SetText(mod.db.profile.redkillcount[4])
		end
	end

	local firstRedKillSlider = CreateFrame("Slider", "firstRedKillSlider", raOptions, "OptionsSliderTemplate")
	firstRedKillSlider:SetMinMaxValues(1, 6)
	firstRedKillSlider:SetValueStep(1)
	firstRedKillSlider:SetScript("OnValueChanged", updateRedKillSlider)
	firstRedKillSlider:SetScript("OnShow", onShowRedKillSlider)
	firstRedKillSliderLow:SetText("1")
	firstRedKillSliderHigh:SetText("6")
	firstRedKillSlider:SetPoint("TOPLEFT", 400, -150)
	onShowRedKillSlider(firstRedKillSlider)

	local firstRedKillSliderText = firstRedKillSlider:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	firstRedKillSliderText:SetPoint("TOP", firstRedKillSlider, "LEFT", -170, 20)
	firstRedKillSliderText:SetText(L.firstkillredcount)
	firstRedKillSliderText:SetWordWrap(true)
	firstRedKillSliderText:SetWidth(275)

	local secondRedKillSlider = CreateFrame("Slider", "secondRedKillSlider", raOptions, "OptionsSliderTemplate")
	secondRedKillSlider:SetMinMaxValues(1, 6)
	secondRedKillSlider:SetValueStep(1)
	secondRedKillSlider:SetScript("OnValueChanged", updateRedKillSlider)
	secondRedKillSlider:SetScript("OnShow", onShowRedKillSlider)
	secondRedKillSliderLow:SetText("1")
	secondRedKillSliderHigh:SetText("4")
	secondRedKillSlider:SetPoint("TOPLEFT", 400, -200)
	onShowRedKillSlider(secondRedKillSlider)

	local secondRedKillSliderText = secondRedKillSlider:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	secondRedKillSliderText:SetPoint("TOP", secondRedKillSlider, "LEFT", -170, 20)
	secondRedKillSliderText:SetText(L.secondredkillcount)
	secondRedKillSliderText:SetWordWrap(true)
	secondRedKillSliderText:SetWidth(275)

	local thirdRedKillSlider = CreateFrame("Slider", "thirdRedKillSlider", raOptions, "OptionsSliderTemplate")
	thirdRedKillSlider:SetMinMaxValues(1, 6)
	thirdRedKillSlider:SetValueStep(1)
	thirdRedKillSlider:SetScript("OnValueChanged", updateRedKillSlider)
	thirdRedKillSlider:SetScript("OnShow", onShowRedKillSlider)
	thirdRedKillSliderLow:SetText("1")
	thirdRedKillSliderHigh:SetText("4")
	thirdRedKillSlider:SetPoint("TOPLEFT", 400, -250)
	onShowRedKillSlider(thirdRedKillSlider)

	local thirdRedKillSliderText = thirdRedKillSlider:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	thirdRedKillSliderText:SetPoint("TOP", thirdRedKillSlider, "LEFT", -170, 20)
	thirdRedKillSliderText:SetText(L.thirdredkillcount)
	thirdRedKillSliderText:SetWordWrap(true)
	thirdRedKillSliderText:SetWidth(275)

	local fourthRedKillSlider = CreateFrame("Slider", "fourthRedKillSlider", raOptions, "OptionsSliderTemplate")
	fourthRedKillSlider:SetMinMaxValues(1, 6)
	fourthRedKillSlider:SetValueStep(1)
	fourthRedKillSlider:SetScript("OnValueChanged", updateRedKillSlider)
	fourthRedKillSlider:SetScript("OnShow", onShowRedKillSlider)
	fourthRedKillSliderLow:SetText("1")
	fourthRedKillSliderHigh:SetText("4")
	fourthRedKillSlider:SetPoint("TOPLEFT", 400, -300)
	onShowRedKillSlider(fourthRedKillSlider)

	local fourthRedKillSliderText = fourthRedKillSlider:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	fourthRedKillSliderText:SetPoint("TOP", fourthRedKillSlider, "LEFT", -170, 20)
	fourthRedKillSliderText:SetText(L.fourthredkillcount)
	fourthRedKillSliderText:SetWordWrap(true)
	fourthRedKillSliderText:SetWidth(275)

	local function updateIconSlider(frame, value)
		if frame:GetName() == "group1IconSlider" then
			mod.db.profile.group1icon = frame.values[value]
			group1IconSliderText:SetText(raidIcons[frame.values[value]])
			group1Header:SetText(CL["other"]:format(L.group, raidIcons[frame.values[value]]))
		elseif frame:GetName() == "group2IconSlider" then
			mod.db.profile.group2icon = frame.values[value]
			group2IconSliderText:SetText(raidIcons[frame.values[value]])
			group2Header:SetText(CL["other"]:format(L.group, raidIcons[frame.values[value]]))
		end
	end

	local function onShowIconSlider(frame)
		if frame:GetName() == "group1IconSlider" then
			frame:SetValue(mod.db.profile.group1icon)
			group1IconSliderText:SetText(raidIcons[mod.db.profile.group1icon])
		elseif frame:GetName() == "group2IconSlider" then
			frame:SetValue(mod.db.profile.group2icon)
			group2IconSliderText:SetText(raidIcons[mod.db.profile.group2icon])
		end
	end

	local group1IconSlider = CreateFrame("Slider", "group1IconSlider", raOptions, "OptionsSliderTemplate")
	group1IconSlider:SetMinMaxValues(1, 6)
	group1IconSlider:SetValueStep(1)
	group1IconSlider.values = {1,2,3,4,6,7}
	group1IconSlider:SetScript("OnValueChanged", updateIconSlider)
	group1IconSlider:SetScript("OnShow", onShowIconSlider)
	group1IconSliderLow:SetText("")
	group1IconSliderHigh:SetText("")
	group1IconSlider:SetPoint("TOPLEFT", 90, -450)
	onShowIconSlider(group1IconSlider)

	local group1IconSliderText = group1IconSlider:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	group1IconSliderText:SetPoint("TOP", group1IconSlider, "CENTER", 0, 40)
	group1IconSliderText:SetText(L.group1icon)
	group1IconSliderText:SetWordWrap(true)
	group1IconSliderText:SetWidth(275)

	local group2IconSlider = CreateFrame("Slider", "group2IconSlider", raOptions, "OptionsSliderTemplate")
	group2IconSlider:SetMinMaxValues(1, 6)
	group2IconSlider:SetValueStep(1)
	group2IconSlider.values = {1,2,3,4,6,7}
	group2IconSlider:SetScript("OnValueChanged", updateIconSlider)
	group2IconSlider:SetScript("OnShow", onShowIconSlider)
	group2IconSliderLow:SetText("")
	group2IconSliderHigh:SetText("")
	group2IconSlider:SetPoint("TOPLEFT", 390, -450)
	onShowIconSlider(group2IconSlider)

	local group2IconSliderText = group2IconSlider:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	group2IconSliderText:SetPoint("TOP", group2IconSlider, "CENTER", 0, 40)
	group2IconSliderText:SetText(L.group2icon)
	group2IconSliderText:SetWordWrap(true)
	group2IconSliderText:SetWidth(275)

	local optionsUpdate = CreateFrame("Button", "raUpdateOptionsButton", raOptions, "UIPanelButtonTemplate")
	optionsUpdate:SetWidth(100)
	optionsUpdate:SetHeight(30)
	optionsUpdate:SetPoint("TOPLEFT", 50, -500)
	optionsUpdate:SetText(L.optionssync)
	optionsUpdate:SetScript("OnClick", function(frame)
		if not UnitIsGroupLeader("player") and not UnitIsGroupAssistant("player") then
			print(chatPrefix.. L.denied)
			return
		end
		mod:Sync("ballkillorder", table.concat(mod.db.profile.redkillcount, ", "))
		mod:Sync("group1icon", mod.db.profile.group1icon)
		mod:Sync("group2icon", mod.db.profile.group2icon)
		print(chatPrefix.. L.allowed)
	end)
	optionsUpdate:SetScript("OnShow", buttonShow)
	buttonShow(optionsUpdate)

	local optionsUpdateButtonText = optionsUpdate:CreateFontString(nil, "ARTWORK", "GameFontNormal")
	optionsUpdateButtonText:SetPoint("LEFT", optionsUpdate, "RIGHT", 10, -5)
	optionsUpdateButtonText:SetWordWrap(true)
	optionsUpdateButtonText:SetWidth(350)
	optionsUpdateButtonText:SetText(L.optionssyncbutton_header)

	SlashCmdList["BWRA"] = function() InterfaceOptionsFrame_OpenToCategory(ra) end
	SLASH_BWRA1 = "/bwra"
	print(chatPrefix.. L.loaded)
	print(chatPrefix.. L.warnfordeath)
end

function mod:OnEngage()
	cooldownCounter, ballCounter = 1, 1
	ensureDisplay()
	-- Start the show!
	window:Show()
	windowShown = true
end

--------------------------------------------------------------------------------
-- Event Handlers
--

do
	local unstableVitaTarget
	local sensitivity = mod:SpellName(138372)
	local nextSoaker = {}
	local function updateDisplay(group)
		if not window then return end
		local team, text
		local list = ""
		local playerInList = nil
		if group == "group1" then
			team = group1
			text = window.text1
		else
			team = group2
			text = window.text2
		end

		if UnitBuff("boss1", mod:SpellName(138331)) then
			list = ""
			wipe(nextSoaker)
			text:SetText(list)
			return
		end

		for i=1, #team do
			if UnitIsUnit("player", team[i]) then
				playerInList = true
			end
		end

		if not mod.db.profile.groupFilter and not playerInList then
			list = ""
			text:SetText(list)
			return
		end

		local nextList = {}
		for i=1, #team do
			if team[i] ~= unstableVitaTarget and not UnitDebuff(team[i], sensitivity) and not UnitIsDeadOrGhost(team[i]) then
				nextList[#nextList+1] = team[i]
				if UnitIsUnit("player", team[i]) then
					list = ("%s> %s <\n"):format(list, colorizeName(team[i]))
				else
					list = ("%s%s\n"):format(list, colorizeName(team[i]))
				end
			end
		end

		if not nextSoaker then nextSoaker = {} end
		if nextList[1] and nextList[1] ~= nextSoaker[group] and unstableVitaTarget and not UnitIsUnit(unstableVitaTarget, "player") then
			nextSoaker[group] = nextList[1]
			if nextSoaker[group] then
				if UnitIsUnit(nextSoaker[group], "player") then
					mod:Message("assist", "Personal", "Info", L.yourturntosoak..raidIcons[mod.db.profile.group1icon], 138308)
				end
				if UnitIsGroupLeader("player") or UnitIsGroupAssistant("player") then
					local iconIndex = group == "group1" and mod.db.profile.group1icon or mod.db.profile.group2icon
					SetRaidTarget(nextSoaker[group], iconIndex) -- this is throwing that group action protection if a lot of people die quickly, maybe do something about it?
					if not mod.db.profile.disableWarn then
						SendChatMessage(L.nextingroup:format(iconName[iconIndex], nextSoaker[group]), "RAID_WARNING")
					end
				end
			end
		end

		for i=1, #team do
			if UnitDebuff(team[i], sensitivity) and not UnitIsDeadOrGhost(team[i]) then -- Have to do this because alter time and whatnot fucks with CLEU, this is the reliable method
				list = ("%s|TInterface\\Icons\\Spell_Nature_wispSplode:0:0:0:-9|t%s\n"):format(list,colorizeName(team[i]))
			end
		end

		for i=1, #team do
			if unstableVitaTarget ~= team[i] and UnitIsDeadOrGhost(team[i]) then
				list = ("%s|TInterface\\TARGETINGFRAME\\UI-RaidTargetingIcon_8.blp:0:0:0:-9|t%s\n"):format(list, colorizeName(team[i]))
			end
		end

		text:SetText(list)
	end

	local f = CreateFrame("Frame")
	local total = 0
	f:SetScript("OnUpdate", function(self, elapsed)
		total = total + elapsed
		if total > 0.1 then
			updateDisplay("group1")
			updateDisplay("group2")
			total = 0
		end
	end)
	f:Hide()
	function mod:UnstableVitaApplied(args)
		unstableVitaTarget = args.destName
		startbar(args.destName)
		f:Show()
	end
	function mod:UnstableVitaRemoved(args)
		unstableVitaTarget = nil
		f:Hide()
	end
	local prev, scheduled = 0, nil
	local function printNotUpdated()
		local notUpdated = {}
		local num = GetNumGroupMembers()
		for i=1, num do
			local player = GetRaidRosterInfo(i)
			local inRaid = playerIsInRaid(player)
			if player and player == "error" then return end
			if not rosterUpdated[player] and inRaid then
				notUpdated[#notUpdated+1] = colorizeName(player)
			end
		end
		listenToSyncResponse, scheduled = nil, nil
		if #notUpdated > 0 then
			print(chatPrefix.. L.notsynced:format(table.concat(notUpdated, ", ")))
		else
			print(chatPrefix.. L.fullysynced)
		end
	end
	local function sendSyncReponse()
		updateDisplay("group1")
		updateDisplay("group2")
		for i=1, #group1 do
			if group1[i] == UnitName("player") then
				mod:Sync("rosterupdated")
			end
		end
		for i=1, #roster do
			if roster[i] == UnitName("player") then
				mod:ScheduleTimer("Sync", 1, "rosterupdated")
			end
		end
		for i=1, #group2 do
			if group2[i] == UnitName("player") then
				mod:ScheduleTimer("Sync", 2, "rosterupdated")
			end
		end
	end
	function mod:OnSync(sync, rest, nick)
		if sync and rest then
			--print(sync, rest, "FROM: "..nick)
			if sync == "roster" or sync == "group1" or sync == "group2" then
				local t = GetTime()
				if t-prev > 2 then
					prev = t
					print(chatPrefix.. L.updatereceived:format(nick))
					self:ScheduleTimer(sendSyncReponse, 1)
					if nick ~= UnitName("player") then wipe(roster) wipe(group1) wipe(group2) end
				end
				local refT
				if sync == "roster" then refT = roster end
				if sync == "group1" then refT = group1 end
				if sync == "group2" then refT = group2 end
				local i = 1
				for w in rest:gmatch("%S+") do
					refT[i] = w
					i = i + 1
				end
				updateConfigTeamButtons()
			elseif sync == "ballkillorder" then
				local t, i = {}, 1
				for w in rest:gmatch("%d") do
					t[i] = tonumber(w)
					i = i + 1
				end
				mod.db.profile.redkillcount = t
				print(chatPrefix.. L.updatereceived:format(nick))
			elseif sync == "group1icon" then
				mod.db.profile.group1icon = tonumber(rest)
			elseif sync == "group2icon" then
				mod.db.profile.group2icon = tonumber(rest)
			elseif sync == "rosterupdated" then
				if listenToSyncResponse then
					rosterUpdated[nick] = "true"
					if not scheduled then
						scheduled = self:ScheduleTimer(printNotUpdated, 4)
					end
				end
			end
		end
	end
end

function mod:Balls(args)
	local redkillcount = mod.db.profile.redkillcount
	mainMod:ScheduleTimer("StopBar", 0.1, CL["count"]:format(ML["balls"], ballCounter+1))
	if ballCounter == redkillcount[1]+1 or ballCounter == redkillcount[1]+1+redkillcount[2]+1 or ballCounter == redkillcount[1]+1+redkillcount[2]+1+redkillcount[3]+1 or ballCounter == redkillcount[1]+1+redkillcount[2]+1+redkillcount[3]+1+redkillcount[4]+1 then
		self:Message("balls", "Urgent", nil, L.ballstouching:format(cooldownCounter), args.spellId)
		cooldownCounter = cooldownCounter + 1
		ballCounter = ballCounter + 1
		self:Bar("balls", 33, L.killred, args.spellId)
	elseif ballCounter == redkillcount[1] or ballCounter == redkillcount[1]+1+redkillcount[2] or ballCounter == redkillcount[1]+1+redkillcount[2]+1+redkillcount[3] or ballCounter == redkillcount[1]+1+redkillcount[2]+1+redkillcount[3]+1+redkillcount[4] then
		self:Message("balls", "Urgent", "Warning", L.killred, args.spellId)
		ballCounter = ballCounter + 1
		self:Bar("balls", 33, L.ballstouching:format(cooldownCounter), args.spellId)
	else
		self:Message("balls", "Urgent", "Warning", L.killred, args.spellId)
		ballCounter = ballCounter + 1
		self:Bar("balls", 33, L.killred, args.spellId)
	end
end

