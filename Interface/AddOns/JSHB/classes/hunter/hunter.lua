--
-- JSHB Hunter - main
--

if (select(2, UnitClass("player")) ~= "HUNTER") then return end 

function JSHB:SetupHunterModule()
	-- register class modules
	JSHB.RegisterConfigFunction("MOD_CROWDCONTROL", JSHB.SetupCrowdControlModule)       -- Crowd Control Module
	JSHB.RegisterConfigFunction("MOD_RESOURCEBAR", JSHB.SetupResourceBarModule)         	-- Resource Bar Module
	JSHB.RegisterConfigFunction("MOD_DISPEL", JSHB.SetupDispelModule)									-- Dispel Module
	JSHB.RegisterConfigFunction("MOD_ASPECTINDICATOR", JSHB.SetupAspectModule)				-- Aspect Indicator Module
	JSHB.RegisterConfigFunction("MOD_MDANNOUNCE", JSHB.SetupMisdirectionModule)				-- Misdirection Announce Module
	JSHB.RegisterConfigFunction("MOD_MDCLICKTOCAST", JSHB.SetupMisdirectionClickToCast) 	-- Misdirection Click to Cast Module
	JSHB.RegisterConfigFunction("MOD_MASTERSCALL", JSHB.SetupMastersCallModule)				-- Master's Call Announce Module
	JSHB.RegisterConfigFunction("MOD_SNIPERTRAINING", JSHB.SetupSniperTrainingModule)		-- Sniper Training Indicator Module
	JSHB.RegisterConfigFunction("MOD_BINDINGSHOT", JSHB.SetupBindingShotModule)				-- Binding Shot Announce Module
end

local lastCost = 0
local currentCost = 0

function JSHB.GetMainSpellCost()
	local thisSpec = GetSpecialization()
	-- manual work around due to 6.0 removing cost return from GetSpellInfo().
	if thisSpec == 1 then
		currentCost = 40 -- Kill Command
		if UnitAura("player", "Bestial Wrath") then
			currentCost = ceil(currentCost/2)
		end
	elseif thisSpec == 2 then 
		currentCost = 35 -- Chimera Shot
	elseif thisSpec == 3 then 
		currentCost = 15 -- Explosive Shot
	end
	
	if (currentCost ~= 0) then
		lastCost = currentCost
	end
	
	return lastCost
end

function JSHB.GetMainSpellIcon()
	local spellIcon
	local thisSpec = GetSpecialization()
	
	if thisSpec == 1 then
		spellIcon =  select(3, GetSpellInfo(34026)) -- Kill Command
	elseif thisSpec == 2 then
		spellIcon = select(3, GetSpellInfo(53209)) -- Chimera Shot
	elseif thisSpec == 3 then
		spellIcon = select(3, GetSpellInfo(53301)) -- Explosive Shot
	end
	
	return spellIcon
end

function JSHB.GetBaseFocus()
	local baseFocus
	if (JSHB.CheckIfKnown(163485) or JSHB.CheckIfKnown(152245)) then -- Focusing Shot
		baseFocus = 50
	else
		baseFocus = 14
	end
	return baseFocus	
end

function JSHB.GetKillShotHP()
	local killShotHP
	if (JSHB.CheckIfKnown(157707)) then -- Enhanced Kill Shot
		killShotHP = .35
	else
		killShotHP = .2
	end
	return killShotHP
end

-- need a better way to handle this

JSHB.focusSpells = {
--  [spellID]  = cost,
	["A Murder of Crows"] = 30, -- A Murder of Crows
	["Barrage"]				= 60, -- Barrage
	["Glaive Toss"]			= 15, -- Glaive Toss
	["Multi-Shot"]				= 40, -- Multi-Shot
	["Power Shot"]			= 15, -- Power Shot
	["Tranquilizing Shot"]	= 20, -- Tranquilizing Shot
	["Aimed Shot"]			= 50, -- Aimed Shot
	["Arcane Shot"]			= 30, -- Arcane Shot
	["Black Arrow"]			= 35, -- Black Arrow
}

function JSHB.GetSpellFocusCost(spellName)
	--local spellCost, spellID
	local spellCost
	--spellID = JSHB.NameToSpellID(spellName)
	
	for k,v in pairs(JSHB.focusSpells) do
		if (k == spellName) then
			baseCost = v
		end
	end
	
	if UnitAura("player", "Thrill of the Hunt") then -- reduces the focus cost of your next Arcane, Aimed and Multi-Shot by 20. 
		--if spellID == 3044 then -- Arcane Shot
		if spellName ==  "Arcane Shot" then
			spellCost = (baseCost - 20)
		--elseif spellID == 19434 then -- Aimed Shot
		elseif spellName == "Aimed Shot" then
			spellCost = (baseCost - 20)
		--elseif spellID == 2643 then -- Multi-Shot
		elseif spellName == "Multi-Shot" then
			spellCost = (baseCost - 20)
		else
			spellCost = baseCost
		end
	elseif UnitAura("player", "Bestial Wrath") then -- reduces focus cost of abilities by 50% 
		spellCost = ceil(baseCost / 2)
	elseif UnitAura("player", "Bombardment") then -- reduces Mulit-Shot focus cost by 25
		--if spellID == 2643 then -- Multi-Shot
		if spellName == "Multi-Shot" then
			spellCost = (baseCost - 25)
		else
			spellcost = baseCost
		end
	else
		spellCost = baseCost
	end
	
	return spellCost
end

function JSHB.Options:GetPlayerFocusSpells()
	local spellTable = {}

	for k,v in pairs(JSHB.focusSpells) do
		local thisSpellName = select(1,GetSpellInfo(k))
		local thisSpellCost = v
		if (thisSpellName ~= nil) then
			spellTable[thisSpellName] = thisSpellName .. " (" .. thisSpellCost .. ")"
		else
			spellTable[k] = k .. " (unknown)"
		end
	end
	
	return spellTable
end