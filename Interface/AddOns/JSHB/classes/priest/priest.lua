--
-- JSHB Priest - main
--

if (select(2, UnitClass("player")) ~= "PRIEST") then return end

function JSHB:SetupPriestModule()
	-- register class modules
	JSHB.RegisterConfigFunction("MOD_CROWDCONTROL", JSHB.SetupCrowdControlModule)	-- Crowd Control Module
	JSHB.RegisterConfigFunction("MOD_RESOURCEBAR", JSHB.SetupResourceBarModule)		-- Resource Bar Module
	JSHB.RegisterConfigFunction("MOD_DISPEL", JSHB.SetupDispelModule)				-- Dispel Module
end