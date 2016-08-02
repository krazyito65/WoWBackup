local name, addon = ...
local estimate = addon:NewModule('Estimate')

-- Localise global variables
local _G = _G
local min, max, insert, remove = _G.math.min, _G.math.max, _G.table.insert, _G.table.remove
local ipairs, unpack = _G.ipairs, _G.unpack
local GetTime, UnitHealthMax = _G.GetTime, _G.UnitHealthMax

local options

function estimate:OnEnable()
	options = addon:GetModule('Options').db.estimate

	self:Reset()

	addon:Subscribe('UPDATE_TARGET', self, 'OnUpdateTarget')
	addon:Subscribe('UPDATE_HEALTH', self, 'OnUpdateHealth')
	addon:Subscribe('UPDATE_OPTIONS', self, 'OnUpdateOptions')
end

function estimate:OnDisable()
	addon:Unsubscribe('UPDATE_TARGET', self, 'OnUpdateTarget')
	addon:Unsubscribe('UPDATE_HEALTH', self, 'OnUpdateHealth')
	addon:Unsubscribe('UPDATE_OPTIONS', self, 'OnUpdateOptions')
end

function estimate:OnUpdateOptions(group)
	if group == nil then
		options = addon:GetModule('Options').db.estimate
	end
end

function estimate:OnUpdateTarget(target, targetType)
	self:Reset()

	if target then
		self.maxHealth = UnitHealthMax(targetType)
	else
		self.maxHealth = 0
	end
end

function estimate:OnUpdateHealth(health)
	local values = self.healthHistory
	local time = GetTime() - self.lastReset

	insert(values, 1, {time, health})

	self.cache = nil

	while (#values > options.historyCount) or (time - values[#values][1] > options.historyTime) do
		remove(values)
	end
end

function estimate:Reset()
	self.maxHealth = 0
	self.healthHistory = {}
	self.lastReset = GetTime()
	self.cache = nil
end

function estimate:Calculate(percentage)
	local seconds = 0
	local values = self.healthHistory
	local n = #values
	local a, b = 0, 0

	-- Simple linear regression
	-- ( E(x^2)   E(x) )  ( a )   ( E(xy) )
	-- ( E(x)       n  )  ( b ) = ( E(y)  )
	-- Format of the above: ( 2x2 Matrix ) * ( 2x1 Vector ) = ( 2x1 Vector )
	-- Solve to find a and b, satisfying y = a + bx
	-- Matrix arithmetic has been expanded and solved to make the following operation as fast as possible
	if n > 1 then
		if not self.cache then
			local x, y = 0, 0
			local Ex2, Ex, Exy, Ey = 0, 0, 0, 0

			for _, value in ipairs(values) do
				x, y = unpack(value)

				Ex2 = Ex2 + x * x
				Ex = Ex + x
				Exy = Exy + x * y
				Ey = Ey + y
			end

			-- Invariant to find matrix inverse
			local invariant = Ex2*n - Ex*Ex

			-- Solve for a and b
			a = (-Ex * Exy / invariant) + (Ex2 * Ey / invariant)
			b = (n * Exy / invariant) - (Ex * Ey / invariant)

			if a ~= 0 and b ~= 0 then
				self.cache = {a, b}
			end
		else
			a, b = unpack(self.cache)
		end
	end

	if b ~= 0 then
		-- Use best fit line to calculate estimated time to reach target health
		seconds = (percentage * 0.01 * self.maxHealth - a) / b
		-- Subtract current time to obtain "time remaining"
		seconds = max(0, seconds - (GetTime() - self.lastReset))
	end

	return seconds
end
