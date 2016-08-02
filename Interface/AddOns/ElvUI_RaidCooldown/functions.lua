--------------------------------------------------------
-- System Settable Variables --
--------------------------------------------------------
local E, L, V, P, G =  unpack(ElvUI);
local RC = E:NewModule('RaidCooldown', 'AceEvent-3.0', 'AceTimer-3.0');
--------------------------------------------------------

--------------------------------------------------------
-- Cooldowns --
--------------------------------------------------------
RC.cooldowns = {
	
	     -- Paladin
	{ -- Divine Guardian (4pc gone with MOP)
		spellID = 70940,
		name = "DG",
		succ = "SPELL_CAST_SUCCESS",
		CD = 180,
		class = "PALADIN",
		spec = 2,
	},
	{ -- Aura Mastery
		spellID = 31821,
		name = "AM",
		succ = "SPELL_CAST_SUCCESS",
		CD = 120,
		class = "PALADIN",
		spec = 1,
	},
	{ -- Hand of Sacrifice
		spellID = 6940,
		name = "HoS",
		succ = "SPELL_CAST_SUCCESS",
		CD = 120,
		class = "PALADIN",
	},
	
	
	     -- Priest
	{ -- Power Word: Barrier 
		spellID = 62618,
		succ = "SPELL_CAST_SUCCESS",
		name = "PWB",
		CD = 180,
		class = "PRIEST", 
		cast_time = 10,
		spec = 1,
	},
	{ -- Pain Suppression  
		spellID = 33206,
		succ = "SPELL_CAST_SUCCESS",
		name = "PS",
		CD = 180,
		class = "PRIEST", 
		cast_time = 8,
		spec = 1,
	},
	{ -- Guardian Spirit 
		spellID = 47788,
		succ = "SPELL_CAST_SUCCESS",
		name = "GS",
		CD = 180,
		class = "PRIEST", 
		cast_time = 10,
		spec = 2,
	},
	{ -- Hymn of Hope 
		spellID = 64901,
		succ = "SPELL_CAST_SUCCESS",
		name = "HH",
		CD = 360,
		class = "PRIEST", 
		cast_time = 8,
	},
	{ -- Divine Hymn
		spellID = 64843,
		succ = "SPELL_CAST_SUCCESS",
		name = "DH",
		CD = 480,
		class = "PRIEST", 
		cast_time = 8,
	}, 
	
	
	     -- Druid
	{ -- Rebirth 
		spellID = 20484,
		succ = "SPELL_CAST_START",
		name = "R",
		CD = 600,
		class = "DRUID",
	},
	{ -- Innervate 
		spellID = 29166,
		succ = "SPELL_CAST_SUCCESS",
		name = "I",
		CD = 180,
		class = "DRUID",
		cast_time = 10,
	},
	{ -- Tranquility
		spellID = 740,
		succ = "SPELL_CAST_SUCCESS",
		name = "T",
		CD = 480,
		class = "DRUID",
		cast_time = 8,
	},
	{ -- Frenzied Regeneration (4pc gone with MOP)
		spellID = 22842,
		succ = "SPELL_CAST_SUCCESS",
		name = "FR",
		CD = 180,
		class = "DRUID",
		spec = 2,
	},
	
	
		     -- Shaman
	{ -- Spirit Link Totem
		spellID = 98008,
		succ = "SPELL_CAST_SUCCESS",
		name = "SLT",
		CD = 180,
		class = "SHAMAN", 
		cast_time = 6,
		spec = 3,
	},
	{ -- Mana Tide Totem
		spellID = 16190,
		succ = "SPELL_CAST_SUCCESS",
		name = "MTT",
		CD = 180,
		class = "SHAMAN",
		cast_time = 12,
		spec = 3,
	},
	
	     -- Warlock
	{ -- Soulstone Resurrection
		spellID = 20707,
		succ = "SPELL_CAST_START",
		name = "SR",
		CD = 900,
		class = "WARLOCK",
	},
	
	     -- Death Knight
	{ -- Raise Ally
		spellID = 61999,
		succ = "SPELL_CAST_SUCCESS", 
		name = "RA",
		CD = 600,
		class = "DEATHKNIGHT",
	},
	{ -- Anti-Magic Zone
		spellID = 51052,
		succ = "SPELL_CAST_SUCCESS",
		name = "AMZ",
		CD = 120,
		class = "DEATHKNIGHT",
		spec = 3,
	},
		{ -- Vampiric Blood (4pc gone with MOP)
		spellID = 55233,
		succ = "SPELL_CAST_SUCCESS", 
		name = "VB",
		CD = 60,
		class = "DEATHKNIGHT",
		spec = 1,
	},
	
	     -- Warrior
	{ -- Rallying Cry
		spellID = 97462,
		succ = "SPELL_CAST_SUCCESS",
		name = "RC",
		CD = 180,
		class = "WARRIOR",
	},
		{ -- Shield Wall (4pc gone with MOP)
		spellID = 871,
		succ = "SPELL_CAST_SUCCESS",
		name = "SW",
		CD = 300,
		class = "WARRIOR",
		spec = 3,
	},
}

function RC:which_spec (n1, n2, n3)
    return (n1 > n2 and n1 > n3 and 1) or (n2 > n1 and n2 > n3 and 2) or (n3 > n1 and n3 > n2 and 3) or 0
end

function RC:GetPartyType()
    return ((select(2, IsInInstance()) == "pvp" and "battleground") or (select(2, IsInInstance()) == "arena" and "battleground") or (GetNumRaidMembers() > 0 and "raid") or (GetNumPartyMembers() > 0 and "party") or "none") 
end

function RC:ClassColorString (class)
    return string.format ("|cFF%02x%02x%02x",
        RAID_CLASS_COLORS[class].r * 255,
        RAID_CLASS_COLORS[class].g * 255,
        RAID_CLASS_COLORS[class].b * 255)
end

function RC:InRaid()
    local grouptype = RC:GetPartyType()
    if(grouptype == "none") then
        ElvUI_RaidCooldownBase:Hide()
    else
        ElvUI_RaidCooldownBase:Show()
    end
end

function RC:IsInRaid(player)
	for i = 1, GetNumRaidMembers() do
		local name, _, subgroup = GetRaidRosterInfo(i)
			if name == player then return true end
	end
	return false
end
--------------------------------------------------------

--------------------------------------------------------
-- Misc Functions --
--------------------------------------------------------

function RC:OnEnter(self, cooldown)
    local parent = self:GetParent()
	GameTooltip:Hide()
	GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT",3, 14)
	GameTooltip:ClearLines()
	GameTooltip:AddSpellByID(cooldown['spellID'])
	GameTooltip:Show()
end

function RC:OnLeave(self)
    GameTooltip:Hide()
end

function RC:Scale()
    ElvUI_RaidCooldownBase:Height(((28*#RC.cooldowns)+(1*#RC.cooldowns+3))*E.db.raidcooldown.scale);
    for i=1,#RC.cooldowns do
        _G['RaidCooldown'..i]:Height(28*E.db.raidcooldown.scale);
        _G['RaidCooldownIcon'..i]:Size(28*E.db.raidcooldown.scale);
    end
end
 
function RC:MoverSize()
	ElvUI_RaidCooldownBase.mover:SetWidth(E.db.raidcooldown.scale * ElvUI_RaidCooldownBase:GetWidth())
	ElvUI_RaidCooldownBase.mover:SetHeight(E.db.raidcooldown.scale * ElvUI_RaidCooldownBase:GetHeight() + 1);
end
--------------------------------------------------------

E:RegisterModule(RC:GetName());