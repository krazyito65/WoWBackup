local name, addon = ...
local broker = addon:NewModule('DataBroker')

-- Localise global variables
local _G = _G
local format, min = _G.string.format, _G.math.min
local UnitHealthMax = _G.UnitHealthMax

local LibDataBroker = LibStub('LibDataBroker-1.1')
local options

function broker:OnInitialize()
	self.kill = self:CreateDataObject(name .. '_kill', self.FormatText(0, addon.L['to Kill']))
	self.execute = self:CreateDataObject(name .. '_execute', self.FormatText(0, addon.L['to Exec']))
	self.maxHealth = 0

	self:Reset()
end

function broker:OnEnable()
	options = addon:GetModule('Options').db.core

	addon:Subscribe('UPDATE_TARGET', self, 'OnUpdateTarget')
	addon:Subscribe('UPDATE_HEALTH', self, 'OnUpdateHealth')
	addon:Subscribe('UPDATE_ESTIMATES', self, 'OnUpdateEstimates')
	addon:Subscribe('UPDATE_OPTIONS', self, 'OnUpdateOptions')
end

function broker:OnDisable()
	addon:Unsubscribe('UPDATE_TARGET', self, 'OnUpdateTarget')
	addon:Unsubscribe('UPDATE_HEALTH', self, 'OnUpdateHealth')
	addon:Unsubscribe('UPDATE_ESTIMATES', self, 'OnUpdateEstimates')
	addon:Unsubscribe('UPDATE_OPTIONS', self, 'OnUpdateOptions')
end

function broker:OnUpdateOptions(group)
	if group == nil then
		options = addon:GetModule('Options').db.core
	end
end

function broker:OnUpdateTarget(target, targetType)
	if target then
		self.maxHealth = UnitHealthMax(targetType)
	else
		self.maxHealth = 0
	end

	self:Reset()
end

function broker:OnUpdateHealth(health)
	self.currentHealth = health
end

function broker:OnUpdateEstimates(killEstimate, executeEstimate)
	if killEstimate then
		local factor = min(1, options.refreshTime * 1.25)

		self.killEstimate = ((1 - factor) * self.killEstimate) + (factor * killEstimate)
		self.executeEstimate = ((1 - factor) * self.executeEstimate) + (factor * executeEstimate)
	end

	self:UpdateEstimates()
end

function broker:UpdateEstimates()
	self.kill.text = self.FormatText(self.killEstimate, addon.L['to Kill'])

	if self.currentHealth == 0 or options.executePercentage < (self.currentHealth / self.maxHealth * 100) then
		self.execute.text = self.FormatText(self.executeEstimate, addon.L['to Exec'])
	else
		self.execute.text = addon.L['Exec now']
	end
end

function broker:Reset()
	self.currentHealth = self.maxHealth
	self.killEstimate = 0
	self.executeEstimate = 0
	self:UpdateEstimates()
end

function broker:CreateDataObject(name, text)
	local object = {
		type = 'data source',
		icon = 'Interface\\Icons\\INV_Sword_48',
		text = text
	}

	function object.OnEnter(frame)
		if self.enabledState then
			addon:Publish('MOUSE_ENTER', frame)
		end
	end

	function object.OnLeave(frame)
		if self.enabledState then
			addon:Publish('MOUSE_LEAVE', frame)
		end
	end

	function object.OnClick(frame, ...)
		if self.enabledState then
			addon:Publish('MOUSE_CLICK', frame, ...)
		end
	end

	LibDataBroker:NewDataObject(name, object)

	return object
end

function broker.FormatText(seconds, suffix)
	local time = broker.FormatTime(seconds)
	local text = format('%s %s', time, suffix)

	return text
end

function broker.FormatTime(seconds)
	local time = '0:00'

	if seconds > 3600 then
		time = '60:00+'
	elseif seconds > 0 then
		time = format('%d:%02d', seconds / 60, seconds % 60)
	end

	return time
end
