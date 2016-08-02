--
-- JSHB Death Knight - main
--

if (select(2, UnitClass("player")) ~= "DEATHKNIGHT") then return end

function JSHB:SetupDeathKnightModule()
	-- register class modules
	JSHB.RegisterConfigFunction("MOD_CROWDCONTROL", JSHB.SetupCrowdControlModule)	-- Crowd Control Module
	JSHB.RegisterConfigFunction("MOD_DISPEL", JSHB.SetupDispelModule)								-- Dispel Module
	JSHB.RegisterConfigFunction("MOD_RESOURCEBAR", JSHB.SetupResourceBarModule)			-- Resource Bar Module
	JSHB.RegisterConfigFunction("MOD_PRESENCE", JSHB.SetupPresenceIndicatorModule)		-- Presence Indicator Module
end

local lastCost = 0
local currentCost = 0

function JSHB.GetMainSpellCost()

	local thisSpec = GetSpecialization()

	-- manual work around due to 6.0 removing cost return from GetSpellInfo().
	if thisSpec == 1 then
		currentCost = 30 -- Death Coil
	elseif thisSpec == 2 then
		if UnitAura("player", "Frost Presence") then
			currentCost = 25 -- Frost Strike
		else
			currentCost = 40 -- Frost Strike
		end
	elseif thisSpec == 3 then
		currentCost = 30 -- Death Coil
	end
	
	if (currentCost ~= 0) then
		lastCost = currentCost
	end
	
	return lastCost
end

function JSHB.GetMainSpellIcon()
	local thisSpec = GetSpecialization()
	local spellIcon

	if thisSpec == 1 or 3 then
		spellIcon =  select(3, GetSpellInfo(47541)) -- Death Coil
	elseif thisSpec == 2 then
		spellIcon = select(3, GetSpellInfo(49143)) -- Runic Strike
	end
	
	return spellIcon
end

-- need a better way to handle this
JSHB.RunicPowerSpells = {
--  [spellID]  = cost,
	["77606"] = 20, -- Dark Simulacrum
	["61999"] = 30, -- Raise Ally
}

function JSHB.GetSpellRunicPowerCost(spellName)
	local spellCost, spellID
	spellID = JSHB.NameToSpellID(spellName)
	
	for k,v in pairs(JSHB.RunicPowerSpells) do
		if (k == spellID) then
			spellCost = tonumber(v)
		end
	end

	-- Add a check for Glyph of Raise Ally that removes the Runic Power cost.
	return spellCost
end

function JSHB.Options:GetPlayerRunicPowerSpells()
	local spellTable = {}

	for k,v in pairs(JSHB.RunicPowerSpells) do
		local thisSpellName = select(1,GetSpellInfo(k))
		local thisSpellCost = v
		if (thisSpellName ~= nil) then
			spellTable[thisSpellName] = thisSpellName .. " (" .. thisSpellCost .. ")"
		else
			spellTable[k] = "SpellID:" .. k .. " error"
		end
	end
	
	return spellTable
end