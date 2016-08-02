local name, addon = ...
LibStub('AceAddon-3.0'):NewAddon(addon, name, 'AceEvent-3.0', 'AceTimer-3.0', 'LibPubSub-1.0')

-- Localise global variables
local _G = _G
local IsAltKeyDown = _G.IsAltKeyDown
local UnitHealth, UnitIsFriend, UnitGUID = _G.UnitHealth, _G.UnitIsFriend, _G.UnitGUID

local options
local estimate

function addon:OnInitialize()
	self.L = LibStub('AceLocale-3.0'):GetLocale(name)
end

function addon:OnEnable()
	options = addon:GetModule('Options').db.core
	estimate = addon:GetModule('Estimate')

	self:RegisterEvent('UNIT_HEALTH', 'UpdateHealth')
	self:RegisterEvent('PLAYER_TARGET_CHANGED', 'UpdateTarget')
	self:RegisterEvent('PLAYER_FOCUS_CHANGED', 'UpdateTarget')
	self:Subscribe('MOUSE_CLICK', 'OnClick')
	self:Subscribe('UPDATE_OPTIONS', 'OnUpdateOptions')

	self.target = nil
	self.targetType = nil
	self:UpdateTarget()
end

function addon:OnDisable()
	self:UnregisterEvent('UNIT_HEALTH')
	self:UnregisterEvent('PLAYER_TARGET_CHANGED')
	self:UnregisterEvent('PLAYER_FOCUS_CHANGED')
	self:Unsubscribe('MOUSE_CLICK', 'OnClick')
	self:Unsubscribe('UPDATE_OPTIONS', 'OnUpdateOptions')

	self:StopTimer()
end

function addon:OnClick(frame, button)
	if IsAltKeyDown() then
		self:GetModule('Options').Open()
	end
end

function addon:OnUpdateOptions(group, key)
	if group == nil then
		options = addon:GetModule('Options').db.core
	end
	if group == nil or group == 'core' then
		if key == nil or key == 'useFocus' then
			self:UpdateTarget()
		end
		if self.timer and (key == nil or key == 'refreshTime') then
			self:StopTimer()
			self:StartTimer()
		end
	end
end

function addon:UpdateTarget()
	local target = nil
	local targetType = nil

	if options.useFocus and UnitHealth('focus') > 0 and not UnitIsFriend('player', 'focus') then
		targetType = 'focus'
		target = UnitGUID('focus')
	elseif UnitHealth('target') > 0 and not UnitIsFriend('player', 'target') then
		targetType = 'target'
		target = UnitGUID('target')
	end

	if target ~= self.target then
		self.target = target
		self.targetType = targetType
		self:Publish('UPDATE_TARGET', target, targetType)

		if not target then
			addon:StopTimer()
			self:UpdateEstimates()
		elseif not self.timer then
			addon:StartTimer()
		end
	elseif targetType ~= self.targetType then
		self.targetType = targetType
		self:Publish('UPDATE_TARGETTYPE', targetType)
	end
end

function addon:UpdateHealth(event, targetType)
	local target = UnitGUID(targetType)
	if not target or target ~= self.target or targetType ~= self.targetType then
		return
	end

	local health = UnitHealth(targetType)

	if health > 0 then
		self:Publish('UPDATE_HEALTH', health)
	else
		self:UpdateTarget()
	end
end

function addon:StartTimer()
	self.timer = self:ScheduleRepeatingTimer('UpdateEstimates', options.refreshTime)
end

function addon:StopTimer()
	self:CancelTimer(self.timer)
	self.timer = nil
end

function addon:UpdateEstimates()
	local killEstimate = estimate:Calculate(0)
	local executeEstimate = estimate:Calculate(options.executePercentage)

	self:Publish('UPDATE_ESTIMATES', killEstimate, executeEstimate)
end
