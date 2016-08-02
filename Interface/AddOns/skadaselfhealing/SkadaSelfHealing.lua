if not Skada then return end
local Skada = Skada

local mod = Skada:NewModule("SelfHealing")
local spellsmod = Skada:NewModule("SelfHealing spell list")

local SelfSpellList = {
	-- GENERAL
	7001,				-- Lightwell
	6262,				-- Healthstone
	78989,				-- Healing Potion
	74555,				-- First Aid
	-- DK
	48743,				-- Dark Pact
	49998,				-- Death Strike
	47541,				-- Death Coil
	49027,				-- Blood Parasite
	49542,				-- Blood Parasite
	48982,				-- Rune Tap
	-- DRUID
	17007,				-- Leader of the Pack (Cat/Bear)
	-- HUNTER
	53209,				-- Chimera Shot
	39578,				-- Spirit Bond
	-- MAGE
	12051,				-- Evocation
	
	-- PALADIN
	20140,				-- Protector of the innocent
	-- PRIEST
	19236,				-- Desperate Prayer
	34433,				-- Shadowfiend
	15286,				-- Vampiric Embrace
	-- ROGUE
	73651,				-- Recuperate
	-- SHAMAN
	
	-- WARRIOR
	23881,				-- Bloodthirst
	55694,				-- Enraged Regeneration
	34428,				-- Victory Rush
	-- WARLOCK
	48210,				-- Haunt
	63106,				-- Siphonlife
	96379,				-- Felarmor
	89653				-- Drainlife
	}
	
local function log_self_heal(set, heal)
	-- Get the player from set.
	local player = Skada:get_player(set, heal.playerid, heal.playername)
	if player then
		-- Subtract overhealing
		local amount = math.max(0, heal.amount - heal.overhealing)

		-- Add to player total.
		player.selfhealing = player.selfhealing + amount
		player.selfoverhealing = player.selfoverhealing + heal.overhealing
		
		-- Also add to set total healing.
		set.selfhealing = set.selfhealing + amount
		
		-- Create spell if it does not exist.
		if not player.selfhealingspells[heal.spellname] then
			player.selfhealingspells[heal.spellname] = {id = heal.spellid, name = heal.spellname, hits = 0, healing = 0, overhealing = 0, min = 0, max = 0}
		end
		
		-- Get the spell from player.
		local spell = player.selfhealingspells[heal.spellname]
		
		spell.healing = spell.healing + amount
		spell.overhealing = spell.overhealing + heal.overhealing
		spell.hits = (spell.hits or 0) + 1
		
		if not spell.min or amount < spell.min then
			spell.min = amount
		end
		if not spell.max or amount > spell.max then
			spell.max = amount
		end
	end
end

local heal = {}
local function SelfSpellHeal(timestamp, eventtype, srcGUID, srcName, srcFlags, dstGUID, dstName, dstFlags, ...)
	local spellID, spellName, spellSchool, samount, soverhealing, absorbed, scritical = ...
	
	-- print("SpellID = " .. spellID)
	for _, SelfSpellID in pairs (SelfSpellList) do
		if SelfSpellID == spellID then
			heal.spellid = spellID
			heal.spellname = spellName
			heal.playerid = dstGUID
			heal.dstName = dstName
			heal.amount = samount
			heal.overhealing = soverhealing
			log_self_heal(Skada.current, heal)
			log_self_heal(Skada.total, heal)
			return
		end
	end
end

function mod:Update(win, set)
	local nr = 1
	local max = 0

	for i, player in ipairs(set.players) do
		if player.selfhealing > 0 then
			
			local d = win.dataset[nr] or {}
			win.dataset[nr] = d
			
			d.id = player.id
			d.label = player.name
			d.value = player.selfhealing
			
			d.valuetext = Skada:FormatValueText(
											Skada:FormatNumber(player.selfhealing), self.metadata.columns.Healing,
											string.format("%02.1f%%", player.selfoverhealing / (player.selfoverhealing + player.selfhealing) * 100), self.metadata.columns.Overhealing,
											string.format("%02.1f%%", player.selfhealing / set.selfhealing * 100), self.metadata.columns.Percent
										)
			d.class = player.class
			
			if player.selfhealing > max then
				max = player.selfhealing
			end
			
			nr = nr + 1
		end
	end
	
	win.metadata.maxvalue = max
end

local function spell_tooltip(win, id, label, tooltip)
	local player = Skada:find_player(win:get_selected_set(), spellsmod.playerid)
	if player then
		local spell = player. healingspells[label]
		if spell then
			tooltip:AddLine(player.name.." - "..label)
			if spell.max and spell.min then
				tooltip:AddDoubleLine("Minimum hit:", Skada:FormatNumber(spell.min), 255,255,255,255,255,255)
				tooltip:AddDoubleLine("Maximum hit:", Skada:FormatNumber(spell.max), 255,255,255,255,255,255)
			end
			tooltip:AddDoubleLine("Average hit:", Skada:FormatNumber(spell.healing / spell.hits), 255,255,255,255,255,255)
			if spell.hits then
				tooltip:AddDoubleLine("Overhealing"..":", ("%02.1f%%"):format(spell.overhealing / (spell.overhealing + spell.healing) * 100), 255,255,255,255,255,255)
			end
		end
	end
end

function spellsmod:Enter(win, id, label)
	spellsmod.playerid = id
	spellsmod.title = label.."'s Self Healing"
end

-- Spell view of a player.
function spellsmod:Update(win, set)
	-- View spells for this player.
		
	local player = Skada:find_player(set, self.playerid)
	local nr = 1
	local max = 0
	
	if player then
		
		for spellname, spell in pairs(player.selfhealingspells) do
		
			local d = win.dataset[nr] or {}
			win.dataset[nr] = d
			
			d.id = spell.id
			d.label = spell.name
			d.value = spell.healing
			d.valuetext = Skada:FormatValueText(
											Skada:FormatNumber(spell.healing), self.metadata.columns.Healing,
											string.format("%02.1f%%", spell.overhealing / (spell.overhealing + spell.healing) * 100), self.metadata.columns.Overhealing,
											string.format("%02.1f%%", spell.healing / player.selfhealing * 100), self.metadata.columns.Percent
										)
			d.icon = select(3, GetSpellInfo(spell.id))
			
			if spell.healing > max then
				max = spell.healing
			end
			
			nr = nr + 1
		end
	end
	
	win.metadata.maxvalue = max
end

function mod:OnEnable()
	mod.metadata		= {showspots = true, click1 = spellsmod, columns = {Healing = true, Overhealing = true, Percent = true}}
	spellsmod.metadata	= {tooltip = spell_tooltip, columns = {Healing = true, Overhealing = true, Percent = true}}
	
	Skada:RegisterForCL(SelfSpellHeal, 'SPELL_HEAL', {src_is_interesting = false, dst_is_not_interesting = false})
	Skada:RegisterForCL(SelfSpellHeal, 'SPELL_PERIODIC_HEAL', {src_is_interesting = false, dst_is_not_interesting = false})

	Skada:AddMode(self)
end

function mod:OnDisable()
	Skada:RemoveMode(self)
end

function mod:GetSetSummary(set)
	return Skada:FormatNumber(set.selfhealing)
end

-- Called by Skada when a new player is added to a set.
function mod:AddPlayerAttributes(player)
	if not player.selfhealing then
		player.selfhealing = 0			-- Self Healing
		player.selfhealingspells = {}	-- Self Healing spells
		player.selfoverhealing = 0		-- Self Overheal total
	end
end

-- Called by Skada when a new set is created.
function mod:AddSetAttributes(set)
	if not set.selfhealing then
		set.selfhealing = 0
	end
end