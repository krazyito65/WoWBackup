--
-- JSHB Rogue - main
--

if (select(2, UnitClass("player")) ~= "ROGUE") then return end

function JSHB:SetupRogueModule()
	-- register class modules
	JSHB.RegisterConfigFunction("MOD_CROWDCONTROL", JSHB.SetupCrowdControlModule)			-- Crowd Control Module
	JSHB.RegisterConfigFunction("MOD_RESOURCEBAR", JSHB.SetupResourceBarModule)				-- Resource Bar Module
	JSHB.RegisterConfigFunction("MOD_DISPEL", JSHB.SetupDispelModule)										-- Dispel Module
	JSHB.RegisterConfigFunction("MOD_POISONS", JSHB.SetupPoisonModule)									-- Poisons Module
	JSHB.RegisterConfigFunction("MOD_TRICKS", JSHB.SetupTricksOfTheTradeModule)					-- Tricks Announce Module
	JSHB.RegisterConfigFunction("MOD_TRICKSCLICK", JSHB.SetupTricksOfTheTradeClickToCast)	-- Tricks Click to Cast Module
end