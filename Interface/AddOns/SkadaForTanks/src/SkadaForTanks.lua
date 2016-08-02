local s = Skada
if s == nil then
	return
end

local addonName, a = ...
local L = a.Localize
local u = BittensGlobalTables.GetTable("BittensUtilities")
local sL = LibStub("AceLocale-3.0"):GetLocale("Skada", false)

local COMBATLOG_OBJECT_AFFILIATION_OUTSIDER = COMBATLOG_OBJECT_AFFILIATION_OUTSIDER
local COMBATLOG_OBJECT_CONTROL_PLAYER = COMBATLOG_OBJECT_CONTROL_PLAYER
local COMBATLOG_OBJECT_REACTION_MASK = COMBATLOG_OBJECT_REACTION_MASK
local GetSpellInfo = GetSpellInfo
local UnitBuff = UnitBuff
local UnitClass = UnitClass
local UnitGUID = UnitGUID
local UnitName = UnitName
local bit = bit
local math = math
local pairs = pairs
local select = select
local string = string
local wipe = wipe

local function updateBars(win, columnFlags, data, getTime, isSpell, overrideMax)
	if data == nil then
		return nil
	end
	
	local numBars = 0
	local total = 0
	
	-- set the values for each bar
	local max = 0
	for id, info in pairs(data) do
		local amount = info.healingRequired or info.amount
		if amount and amount > 0 then
			numBars = numBars + 1
			local bar = u.GetOrMakeTable(win.dataset, numBars)
			bar.id = info.id or id
			bar.label = info.name
			bar.value = amount
			bar.class = info.class
			if getTime then
				bar.activetime = getTime(info)
			end
			if isSpell then
				bar.icon = select(3, GetSpellInfo(bar.id))
			end
			
			max = math.max(max, amount)
			total = total + amount
		end
	end
	
	win.metadata.wipestale = true
	win.metadata.maxvalue = overrideMax or max
	while #win.dataset > numBars do
		win.dataset[#win.dataset] = nil
	end
	
	-- set the text for each bar (in a separate loop so we know %s)
	for i = 1, numBars do
		local bar = win.dataset[i]
		bar.valuetext = s:FormatValueText(
			bar.value < 1000 and bar.value or s:FormatNumber(bar.value),
			columnFlags.Healing == nil or columnFlags.Healing,
			string.format(
				"%02.1f", bar.value / math.max(1, bar.activetime or 0)),
			columnFlags.HPS,
			string.format(
				"%02.1f%%", bar.value / (overrideMax or total) * 100),
			columnFlags.Percent)
	end
end

--------------------------------------------------------- Healing Required Mode
local healingRequiredMode = s:NewModule(L["Healing Required"])
local sourceSubmenu = s:NewModule(L["Source Details"])
local spellSubmenu = s:NewModule(L["Spell Details"])
local buffsSubmenu = s:NewModule(L["Buff Details"])
local damageTakenSubmenu

healingRequiredMode.metadata = {
	showspots = true,
	click1 = sourceSubmenu,
	columns = { Healing = true, HPS = true, Percent = true }
}

function healingRequiredMode:Update(win, set)
	updateBars(
		win, 
		self.metadata.columns, 
		u.GetFromTable(set, "players"), 
		function(info)
			return s:PlayerActiveTime(set, info)
		end)
end

function healingRequiredMode:GetSetSummary(set)
	return s:FormatNumber(set.healingRequired)
end

---------------------------------------------------------------- Source Submenu
sourceSubmenu.metadata = {
	showspots = true,
	click1 = spellSubmenu,
	columns = { Healing = true, HPS = true, Percent = true }
}

function sourceSubmenu:Enter(win, id, label)
	self.targetID = id
	self.title = L["Healing done to"] .. " " .. label
end

function sourceSubmenu:Update(win, set)
	local player = s:find_player(set, self.targetID)
	updateBars(
		win, 
		self.metadata.columns, 
		u.GetFromTable(player, "healingRequiredSources"), 
		function(info)
			return s:PlayerActiveTime(set, player)
		end)
end

----------------------------------------------------------------- Spell Submenu
spellSubmenu.metadata = {
	showspots = true,
	columns = { Healing = true, HPS = true, Percent = true }
}

function spellSubmenu:Enter(win, id, label)
	self.sourceID = id
	self.title = string.format(
		"%s %s %s %s", 
		L["Healing done to"],
		s:find_player(win:get_selected_set(), sourceSubmenu.targetID).name,
		L["by"],
		label)
end

function spellSubmenu:Update(win, set)
	local player = s:find_player(set, sourceSubmenu.targetID)
	updateBars(
		win, 
		self.metadata.columns, 
		u.GetFromTable(player, "healingRequiredSources", self.sourceID, "spells"), 
		function(info)
			return s:PlayerActiveTime(set, player)
		end,
		true)
end

----------------------------------------------------------------- Buffs Submenu
buffsSubmenu.metadata = {
--	showspots = true,
	columns = { Percent = true }
}

function buffsSubmenu:Enter(win, id, label)
	self.spellName = label
	self.title = string.format(
		"%s %s %s %s", 
		L["Tanking buffs on"],
		s:find_player(win:get_selected_set(), damageTakenSubmenu.playerid).name,
		L["during"],
		label)
end

function buffsSubmenu:Update(win, set)
	local spell = u.GetFromTable(
		s:find_player(set, damageTakenSubmenu.playerid), 
		"damagetakenspells", 
		self.spellName)
	updateBars(
		win, 
		self.metadata.columns, 
		u.GetFromTable(spell, "buffs"), 
		nil,
		true,
		u.GetFromTable(spell, "count"))
end

-------------------------------------------------------------------- Combat Log
local shields = {}
local multipliers = {
	[55233] = 2, -- Vampiric Blood
	[124769] = 2, -- Frenzied Regeneration
}
local buffs = {}
local interestingBuffs = {
	
	-- Death Knight
	[48707] = true, -- Anti-Magic Shell
	[81256] = true, -- Dancing Rune Weapon
	[77535] = true, -- Blood Shield
	[49222] = true, -- Bone Shield
	[55233] = true, -- Vampiric Blood
	[48792] = true, -- Icebound Fortitude
	[42650] = true, -- Army of the Dead
	[119975] = true, -- Conversion
	[49039] = true, -- Lichborne
	
	[50461] = true, -- Anti-Magic Zone
	
	-- Druid
	[132402] = true, -- Savage Defense
	[22812] = true, -- Barkskin
	[124769] = true, -- Frenzied Regeneration
	[61336] = true, -- Survival Instincts
	[106922] = true, -- Might of Ursoc
	[108291] = true, -- Heart of the Wild for Balance
	[108292] = true, -- Heart of the Wild for Feral
	[108293] = true, -- Heart of the Wild for Guardian
	[108294] = true, -- Heart of the Wild for Restoration
	[124974] = true, -- Nature's Vigil
	
	[102351] = true, -- Cenarion Ward
	[102342] = true, -- Ironbark
	
	-- Symbiosis
	[113072] = true, -- Might of Ursoc (on a DK)
	[113306] = true, -- Survival Instincts (on a Monk)
	[113075] = true, -- Barkskin (on a Paladin)
	[113612] = true, -- Growl? (on a Rogue)
	[113613] = true, -- Growl? (on a Rogue)
	[122286] = true, -- Savage Defense (on a Warrior)
	
	[110570] = true, -- Anti-Magic Shell (from a DK)
	[122285] = true, -- Bone Shield (from a DK)
	[110575] = true, -- Icebound Fortitude (from a DK)
	[110617] = true, -- Deterrence (from a Hunter)
	[110696] = true, -- Ice Block (from a Mage)
	[126453] = true, -- Elusive Brew (from a Monk)
	[126456] = true, -- Fortifying Brew (from a Monk)
	[110700] = true, -- Divine Shield (from a Paladin)
	[110715] = true, -- Dispersion (from a Priest)
	[110788] = true, -- Cloak of Shadows (from a Rogue)
	[122289] = true, -- Feint (from a Rogue)
	[110791] = true, -- Evasion (from a Rogue)
	[122291] = true, -- Unending Resolve (from a Warlock)
	[113002] = true, -- Spell Reflection (from a Warrior)
	
	-- Paladin
	[498] = true, -- Divine Protection
	[86659] = true, -- Guardian of Ancient Kings
	[31850] = true, -- Ardent Defender
	[642] = true, -- Divine Shield
	[132403] = true, -- Shield of the Righteous
	[105809] = true, -- Holy Avenger
	[114232] = true, -- Sanctified Wrath
	
	[1022] = true, -- Hand of Protection
	[6940] = true, -- Hand of Sacrifice
	[31821] = true, -- Devotion Aura
	[114039] = true, -- Hand of Purity
	[20925] = true, -- Sacred Shield
	
	-- Warrior
	[132404] = true, -- Shield Block
	[871] = true, -- Shield Wall
	[55694] = true, -- Enraged Regeneration
	[9125667] = true, -- Second Wind
	[23920] = true, -- Spell Reflection
	[12975] = true, -- Last Stand
	[112048] = true, -- Shield Barrier
	--[1160] = true, -- demoralizing shout
	
	[97463] = true, -- Rallying Cry
	[114028] = true, -- Mass Spell Reflection
	[46947] = true, -- Safeguard
	[114030] = true, -- Vigilance
	[114203] = true, -- Demoralizing Banner
	
	-- Monk
	[120945] = true, -- Fortifying Brew
	[115308] = true, -- Elusive Brew
	[115295] = true, -- Guard
	[122278] = true, -- Dampen Harm
	[122783] = true, -- Diffuse Magic
	[115307] = true, -- Shuffle
	
	[115213] = true, -- Avert Harm (on self and raid)
	[116844] = true, -- Ring of Peace
	[115176] = true, -- Zen Meditation (on raid)
	[131523] = true, -- Zen Meditation (on self)
	
	-- Mage
	[113862] = true, -- Greater Invisibility
	[45438] = true, -- Ice Block
	[115610] = true, -- Temporal Shield
	[11426] = true, -- Ice Barrier
	[108978] = true, -- Alter Time?
	[110909] = true, -- Alter Time?
	
	-- Shaman
	[108271] = true, -- Astral Shift
	[114839] = true, -- Stone Bulwark Totem
	[118475] = true, -- Unleashed Fury for Rockbiter Weapon
	[30823] = true, -- Shamanistic Rage
	
	[8178] = true, -- Grounding Totem Effect
	
	-- Hunter
	[19263] = true, -- Deterrence
	[109260] = true, -- Aspect of the Iron Hawk
	
	[53480] = true, -- Roar of Sacrifice
	
	-- Warlock
	[108359] = true, -- Dark Regeneration
	[108446] = true, -- Soul Link
	[108416] = true, -- Sacrificial Pact
	[110913] = true, -- Dark Bargain
	[104773] = true, -- Unending Resolve
	[6229] = true, -- Twilight Ward
	[132413] = true, -- Shadow Bulwark
	
	-- Rogue
	[5277] = true, -- Evasion
	[1966] = true, -- Feint
	[31224] = true, -- Cloak of Shadows
	[74001] = true, -- Combat Readiness
	[31230] = true, -- Cheat Death
	
	[76577] = true, -- Smoke Bomb
	
	-- Priest
	[47585] = true, -- Dispersion
	
	[33206] = true, -- Pain Suppression
	[81782] = true, -- Power Word: Barrier
	[47788] = true, -- Guardian Spirit
	
	-- Items
--	[107951] = true, -- Elusive (buff from the trinket Fire of the Deep)
--	[109864] = true, -- Fury of the Beast Heroic (staff proc)
--	[109861] = true, -- Fury of the Beast LFR (staff proc)
--	[108011] = true, -- Fury of the Beast (staff proc)
--	[109776] = true, -- Master Tactician Heroic (trinket proc)
--	[109774] = true, -- Master Tactician LFR (trinket proc)
--	[107986] = true, -- Master Tactician (trinket proc)
--	[74243] = true, -- Windwalk (Buff from the weapon enchant)
--	[102667] = true, -- Veil of Lies (Buff from the trinket)
	[116660] = true, -- River's Song (buff from the weapon enchant)
	[105698] = true, -- Potion of the Mountains
	[137593] = true, -- Fortitude (proc from Indomitable Primal Diamond)
	
	-- Other
--	[106466] = true, -- Dream (from the extra button in Madness of Deathwing)
--	[109634] = true, -- Dream (from the extra button in Madness of Deathwing)
--	[109635] = true, -- Dream (from the extra button in Madness of Deathwing)
--	[109636] = true, -- Dream (from the extra button in Madness of Deathwing)
}
local sourceInfo = {}
local targetInfo = {}
local bufferInfo = {}

local function setSourceAndTarget(
	sourceID, sourceName, sourceFlags, 
	targetID, targetName, targetFlags,
	spellName)
	
	sourceInfo.playerid = sourceID
	sourceInfo.playername = sourceName
	sourceInfo.playerflags = sourceFlags
	sourceInfo.spellname = spellName
	s:FixPets(sourceInfo)
	
	targetInfo.playerid = targetID
	targetInfo.playername = targetName
	targetInfo.playerflags = targetFlags
	s:FixPets(targetInfo)
	
	return sourceInfo.spellname
end

local function incrementInfo(table, id, name, amount)
	local info = table[id]
	local new
	if info then
		info.amount = (info.amount or 0) + amount
		new = false
	else
		info = { id = id, name = name, amount = amount}
		table[id] = info
		new = true
	end
	return info, new
end

------------------------------------------------------------------- Healing
-- set.healingRequired
-- set.player[i].healingRequired
-- set.player[i].healingRequiredSources[player_id].amount
-- set.player[i].healingRequiredSources[player_id].name
-- set.player[i].healingRequiredSources[player_id].id
-- set.player[i].healingRequiredSources[player_id].class
-- set.player[i].healingRequiredSources[player_id].spells[spell_id].amount
-- set.player[i].healingRequiredSources[player_id].spells[spell_id].name
-- set.player[i].healingRequiredSources[player_id].spells[spell_id].id

local function recordHeal(set, spellID, spellName, amount, adjustedSourceInfo)
	
	local player = s:get_player(set, targetInfo.playerid, targetInfo.playername)
	if not player then
		return
	end
	
	local required = amount
	if adjustedSourceInfo.playerid == targetInfo.playerid then
		required = 0
	end
	
	-- total
	set.healingRequired = (set.healingRequired or 0) + required
	
	-- player
	player.healingRequired = (player.healingRequired or 0) + required
	
	-- source
	local source, new = incrementInfo(
		u.GetOrMakeTable(player, "healingRequiredSources"), 
		adjustedSourceInfo.playerid, 
		adjustedSourceInfo.playername, 
		amount)
	if new then
		source.class = select(2, UnitClass(adjustedSourceInfo.playername))
		source.spells = {}
	end
	
	-- spell
	incrementInfo(source.spells, spellID, spellName, amount)
end

local function maybeRecordHeal(
	sourceID, sourceName, sourceFlags, 
	targetID, targetName, targetFlags, 
	spellID, spellName, amount)
	
	if amount <= 0 or not UnitExists(sourceName) or not targetName then
		return
	end
	
	spellName = setSourceAndTarget(
		sourceID, sourceName, sourceFlags, 
		targetID, targetName, targetFlags, 
		spellName)
	
	for i = 1, 99999 do
		local buffName, _, _, _, _, _, _, caster, _, _, buffID, _, _, v1, v2, v3
			= UnitBuff(targetInfo.playername, i)
		if buffName == nil then
			break
		end
		
		local multiplier = 0
		if multipliers[buffID] == 1 then
			multiplier = v1
		elseif multipliers[buffID] == 2 then
			multiplier = v2
		elseif multipliers[buffID] == 3 then
			multiplier = v3
		end
		
		if multiplier > 0 then
			local buffAmount = amount / (1 + 100 / multiplier)
			bufferInfo.playerid = UnitGUID(caster)
			bufferInfo.playername = UnitName(caster)
			recordHeal(s.current, buffID, buffName, buffAmount, bufferInfo)
			recordHeal(s.total, buffID, buffName, buffAmount, bufferInfo)
			amount = amount - buffAmount
		end
	end
	
	recordHeal(s.current, spellID, spellName, amount, sourceInfo)
	recordHeal(s.total, spellID, spellName, amount, sourceInfo)
end

local function parseHeal(_, _, 
	sourceID, sourceName, sourceFlags, 
	targetID, targetName, targetFlags, 
	spellID, spellName, _, amount, overhealing, absorbed)
	
	maybeRecordHeal(
		sourceID, sourceName, sourceFlags, 
		targetID, targetName, targetFlags, 
		spellID, spellName, amount - overhealing + absorbed)
end

--------------------------------------------------------------------- Auras
local function parseAuraApplied(_, _, 
	sourceID, sourceName, sourceFlags, 
	targetID, targetName, targetFlags, 
	spellID, spellName, _, _, amount)

	if interestingBuffs[spellID] then
		u.GetOrMakeTable(buffs, targetID)[spellID] = spellName
	end
	
	if amount and sourceID
		and bit.band(sourceFlags, COMBATLOG_OBJECT_AFFILIATION_OUTSIDER) == 0
		and bit.band(sourceFlags, targetFlags, COMBATLOG_OBJECT_CONTROL_PLAYER) ~= 0
		and bit.band(sourceFlags, targetFlags, COMBATLOG_OBJECT_REACTION_MASK) ~= 0
		and bit.band(targetFlags, COMBATLOG_OBJECT_AFFILIATION_OUTSIDER) == 0 then
		
		u.GetOrMakeTable(shields, sourceID, targetID)[spellID] = amount
	end
end

local function parseAuraChanged(_, event, 
	sourceID, sourceName, sourceFlags, 
	targetID, targetName, targetFlags, 
	spellID, spellName, _, _, amount)
	
	if amount and sourceID then
		local t = u.GetFromTable(shields, sourceID, targetID)
		if t then
			if t[spellID] then
				maybeRecordHeal(
					sourceID, sourceName, sourceFlags, 
					targetID, targetName, targetFlags, 
					spellID, spellName, t[spellID] - amount)
			end
			
			if event == "SPELL_AURA_REMOVED" then
				t[spellID] = nil
			else
				t[spellID] = amount
			end
		end
	end
	
	if event == "SPELL_AURA_REMOVED" then
		local t = u.GetFromTable(buffs, targetID)
		if t then
			t[spellID] = nil
		end
	end
end

-------------------------------------------------------------------- Damage
-- set.player[i].damagetakenspells[spell_name].id
-- set.player[i].damagetakenspells[spell_name].spellName
-- set.player[i].damagetakenspells[spell_name].damage
-- set.player[i].damagetakenspells[spell_name].count
-- set.player[i].damagetakenspells[spell_name].buffs[buff_id].amount
-- set.player[i].damagetakenspells[spell_name].buffs[buff_id].name
-- set.player[i].damagetakenspells[spell_name].buffs[buff_id].id

local function recordDamage(set, spellID, spellName)
	local player = s:get_player(set, targetInfo.playerid, targetInfo.playername)
	if player == nil then
		return
	end
	
	local spell = u.GetOrMakeTable(player, "damagetakenspells", spellName)
	if not spell.id then
		spell.id = spellID
		spell.name = spellName
		spell.damage = 0
		spell.critical = 0
		spell.crushing = 0
		spell.glancing = 0
		spell.blocked = 0
		spell.resisted = 0
		spell.absorbed = 0
	end
	
	local num = 0
	local buffList = u.GetOrMakeTable(spell, "buffs")
	for buffID, buffName in pairs(u.GetOrMakeTable(buffs, targetInfo.playerid)) do
		incrementInfo(buffList, buffID, buffName, 1)
		num = num + 1
	end
	if num == 1 then
		incrementInfo(buffList, -num, num .. " " .. L["Buff"], 1)
	else
		incrementInfo(buffList, -num, num .. " " .. L["Buffs"], 1)
	end
	spell.count = (spell.count or 0) + 1
end

local function parseDamage(_, _, 
	sourceID, sourceName, sourceFlags, 
	targetID, targetName, targetFlags, 
	spellID, spellName)
	
	spellName = setSourceAndTarget(
		sourceID, sourceName, sourceFlags, 
		targetID, targetName, targetFlags, 
		spellName)
	recordDamage(s.current, spellID, spellName)
	recordDamage(s.total, spellID, spellName)
end

local function parseSwing(_, _, 
	sourceID, sourceName, sourceFlags, 
	targetID, targetName, targetFlags)
	
	parseDamage(_, _,
		sourceID, sourceName, sourceFlags, 
		targetID, targetName, targetFlags, 
		6603, sL["Attack"])
end

-------------------------------------------------------------------------- Init
function healingRequiredMode:AddSetAttributes(set)
	set.healingRequired = set.healingRequired or 0
	wipe(shields)
	wipe(buffs)
end

--function healingRequiredMode:AddPlayerAttributes(player)
--	player.healingRequired = player.healingRequired or 0
--	u.GetOrMakeTable(player, "healingRequiredSources")
--	for _, source in pairs(player.healingRequiredSources) do
--		source.healing = source.healing or 0
--		for _, spell in pairs(u.GetOrMakeTable(source, "spells")) do
--			spell.healing = spell.healing or 0
--		end
--	end
--end

function healingRequiredMode:OnEnable()
	local noFlags = { }
	local healFlags = { src_is_interesting = true }
	s:RegisterForCL(parseHeal, 'SPELL_HEAL', healFlags)
	s:RegisterForCL(parseHeal, 'SPELL_PERIODIC_HEAL', healFlags)
	s:RegisterForCL(parseAuraApplied, 'SPELL_AURA_APPLIED', noFlags)
	s:RegisterForCL(parseAuraChanged, 'SPELL_AURA_REFRESH', noFlags)
	s:RegisterForCL(parseAuraChanged, 'SPELL_AURA_REMOVED', noFlags)
	damageTakenSubmenu = s:GetModule(sL["List of damaging spells"], true)
	if damageTakenSubmenu then
		local damageFlags = { dst_is_interesting_nopets = true }
		s:RegisterForCL(parseDamage, 'DAMAGE_SHIELD', damageFlags)
		s:RegisterForCL(parseDamage, 'SPELL_DAMAGE', damageFlags)
		s:RegisterForCL(parseDamage, 'SPELL_MISSED', damageFlags)
		s:RegisterForCL(parseDamage, 'SPELL_PERIODIC_DAMAGE', damageFlags)
		s:RegisterForCL(parseDamage, 'SPELL_PERIODIC_MISSED', damageFlags)
		s:RegisterForCL(parseDamage, 'SPELL_BUILDING_DAMAGE', damageFlags)
		s:RegisterForCL(parseDamage, 'SPELL_BUILDING_MISSED', damageFlags)
		s:RegisterForCL(parseDamage, 'RANGE_DAMAGE', damageFlags)
		s:RegisterForCL(parseDamage, 'RANGE_MISSED', damageFlags)
		s:RegisterForCL(parseSwing, 'SWING_DAMAGE', damageFlags)
		s:RegisterForCL(parseSwing, 'SWING_MISSED', damageFlags)
		healingRequiredMode.metadata.click2 = damageTakenSubmenu
		if damageTakenSubmenu.metadata then
			damageTakenSubmenu.metadata.click1 = buffsSubmenu
		else
			local damageTakenMod = s:GetModule(sL["Damage taken"], true)
			local realEnable = damageTakenMod.OnEnable
			damageTakenMod.OnEnable = function (...)
				realEnable(...)
				damageTakenSubmenu.metadata.click1 = buffsSubmenu
			end
		end
	end
	s:AddMode(healingRequiredMode)
end

function healingRequiredMode:OnDisable()
	s:RemoveMode(healingRequiredMode)
end
