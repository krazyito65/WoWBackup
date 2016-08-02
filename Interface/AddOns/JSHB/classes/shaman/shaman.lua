--
-- JSHB Shaman - main
--

if (select(2, UnitClass("player")) ~= "SHAMAN") then return end

function JSHB:SetupShamanModule()
	-- register class modules
	JSHB.RegisterConfigFunction("MOD_CROWDCONTROL", JSHB.SetupCrowdControlModule)	-- Crowd Control Module
	JSHB.RegisterConfigFunction("MOD_RESOURCEBAR", JSHB.SetupResourceBarModule)		-- Resource Bar Module
	JSHB.RegisterConfigFunction("MOD_DISPEL", JSHB.SetupDispelModule)				-- Dispel Module
	JSHB.RegisterConfigFunction("MOD_TOTEMINDICATOR", JSHB.SetupTotemIndicatorModule)				-- Totem Indicator Module
	JSHB.RegisterConfigFunction("MOD_SHIELDINDICATOR", JSHB.SetupShieldIndicatorModule)				-- Shield Indicator Module
end