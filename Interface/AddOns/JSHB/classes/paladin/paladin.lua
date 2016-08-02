--
-- JSHB Paladin - main
--

if (select(2, UnitClass("player")) ~= "PALADIN") then return end

function JSHB:SetupPaladinModule()
	-- register class modules
	JSHB.RegisterConfigFunction("MOD_CROWDCONTROL", JSHB.SetupCrowdControlModule)	-- Crowd Control Module
	JSHB.RegisterConfigFunction("MOD_RESOURCEBAR", JSHB.SetupResourceBarModule)		-- Resource Bar Module
end