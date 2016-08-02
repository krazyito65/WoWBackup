--
-- JSHB Warrior - main
--

if (select(2, UnitClass("player")) ~= "WARRIOR") then return end

function JSHB:SetupWarriorModule()
	-- register class modules
	JSHB.RegisterConfigFunction("MOD_CROWDCONTROL", JSHB.SetupCrowdControlModule)		-- Crowd Control Module
	JSHB.RegisterConfigFunction("MOD_DISPEL", JSHB.SetupDispelModule)									-- Dispel Module
	JSHB.RegisterConfigFunction("MOD_RESOURCEBAR", JSHB.SetupResourceBarModule)				-- Resource Bar Module
	JSHB.RegisterConfigFunction("MOD_STANCEINDICATOR", JSHB.SetupStanceIndicatorModule) 	-- Stance Indicator Module
end