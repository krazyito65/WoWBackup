local ZGV = ZygorGuidesViewer
if not ZGV then return end

local L = ZGV.L
local G = _G

local tinsert,tremove,print,ipairs,pairs,wipe=tinsert,tremove,print,ipairs,pairs,wipe

ZGV.ItemScore = {}
ZGV.ItemScore.AutoEquip = {}
local ItemScore = ZGV.ItemScore
local AutoEquip = ZGV.ItemScore.AutoEquip
local IS = ItemScore

local FONT = ZGV.DIR.."\\Skins\\SegoeUI.TTF"
if L['LocaleFont'] and string.find(L['LocaleFont'],"ttf") then FONT=L['LocaleFont'] end

local function flip_array(arr)
	local flipped = {}
	for i,name in ipairs(arr) do flipped[name]=i end
	return flipped
end

ItemScore.items_in_guides = {}

-- Blizzard will NOT play nice... Items only return localized data, how fun. Delocalize everything into numbers, then...
local itemclasses = flip_array({GetAuctionItemClasses()})
local itemweapsubclasses = flip_array({GetAuctionItemSubClasses(1)})
local itemarmsubclasses = flip_array({GetAuctionItemSubClasses(2)})
local class_ids = {"WEAPON","ARMOR"}
local weap_ids = {"AXE","TH_AXE","BOW","GUN","MACE","TH_MACE","TH_POLE","SWORD","TH_SWORD","TH_STAFF","FIST","MISCWEAP","DAGGER","THROWN","XBOW","WAND"}
local arm_ids = {"MISCARM","CLOTH","LEATHER","MAIL","PLATE","SHIELD","RELIC"}

-- Sorry for twohanders being "TH" and not "2H", it was easier to write that way.
-- Offhands are MISCARM.
local rules = {
	["DEATHKNIGHT"] = {
		[1] = { --BLOOD
			itemtypes={ TH_POLE=1,TH_AXE=1,TH_MACE=1,TH_SWORD=1, PLATE=1 },
			stats = { DPS={weight=22}, STRENGTH={weight=20}, STAMINA={weight=18}, PARRY={weight=15}, DODGE={weight=15}, MASTERY={weight=16}, HIT={weight=14,default=12,hitcap=15,category=CR_HIT_MELEE}, EXPERTISE={weight=14,default=10,expcap=7.5}, ATTACK_POWER={weight=10} },
			badstats = { INTELLECT=1,SPIRIT=1,SPELL_POWER=1 },
		},
		[2] = { --FROST
			itemtypes={ TH_POLE=1,TH_AXE=1,TH_MACE=1,TH_SWORD=1, AXE=2,MACE=2,SWORD=2, PLATE=1 },
			stats = { DPS={weight=22}, STRENGTH={weight=20}, HIT={weight=18,default=18,hitcap=7.5,autohitcap=27,category=CR_HIT_MELEE}, EXPERTISE={weight=18,default=16,expcap=7.5}, MASTERY={weight=16}, HASTE={weight=16}, ATTACK_POWER={weight=10} },
			badstats = { INTELLECT=1,SPIRIT=1,SPELL_POWER=1,DODGE=1,PARRY=1,SPELL_PENETRATION=1 },
		},
		[3] = { --UNHOLY
			itemtypes={ TH_POLE=1,TH_AXE=1,TH_MACE=1,TH_SWORD=1, PLATE=1 },
			stats = { DPS={weight=22}, STRENGTH={weight=20}, HIT={weight=18,default=18,hitcap=7.5,category=CR_HIT_MELEE}, HASTE={weight=16}, CRIT={weight=14}, MASTERY={weight=12}, EXPERTISE={weight=18,default=10,expcap=7.5}, ATTACK_POWER={weight=10} },
			badstats = { INTELLECT=1,SPIRIT=1,SPELL_POWER=1,DODGE=1,PARRY=1,SPELL_PENETRATION=1 },
		}
	},
	["DRUID"] = {
		[1] = { --BALANCE
			itemtypes={ DAGGER=1,MACE=1,MISCWEAP=1, TH_STAFF=1, LEATHER=1 },
			stats = { INTELLECT={weight=20}, SPELL_POWER={weight=18}, HIT={weight=16,default=16,hitcap=15,category=CR_HIT_SPELL}, SPIRIT={weight=16,hitcap=15}, HASTE={weight=14}, MASTERY={weight=10}, CRIT={weight=12} },
			badstats = { STRENGTH=1,AGILITY=1,EXPERTISE=1,DODGE=1,PARRY=1 },
		},
		[2] = { --FERAL
			itemtypes={ TH_POLE=1,TH_STAFF=1, TH_MACE=1, LEATHER=1 },
			stats = { DPS={weight=22}, AGILITY={weight=20}, MASTERY={weight=18}, CRIT={weight=16}, HASTE={weight=12}, EXPERTISE={weight=16,default=16,expcap=7.5}, HIT={weight=14,default=8,hitcap=7.5,category=CR_HIT_MELEE}, ATTACK_POWER={weight=10} },
			badstats = { INTELLECT=1,SPIRIT=1,SPELL_POWER=1,SPELL_PENETRATION=1 },
		},
		[3] = { --GUARDIAN
			itemtypes={ TH_POLE=1,TH_STAFF=1, TH_MACE=1, LEATHER=1 },
			stats = { DPS={weight=22}, AGILITY={weight=20}, STAMINA={weight=20}, DODGE={weight=18}, MASTERY={weight=18}, EXPERTISE={weight=14,default=12,expcap=7.5}, CRIT={weight=16}, HIT={weight=14,default=10,hitcap=7.5,category=CR_HIT_MELEE}, HASTE={weight=12}, ATTACK_POWER={weight=10} },
			badstats = { INTELLECT=1,SPIRIT=1,SPELL_POWER=1,SPELL_PENETRATION=1 },
		},
		[4] = { --RESTORATION
			itemtypes={ DAGGER=1,MACE=1,MISCWEAP=1, TH_STAFF=1, LEATHER=1 },
			stats = { INTELLECT={weight=20}, SPELL_POWER={weight=18}, MASTERY={weight=14}, HASTE={weight=16}, CRIT={weight=14}, SPIRIT={weight=18} },
			badstats = { STRENGTH=1,AGILITY=1,HIT=1,EXPERTISE=1,SPELL_PENETRATION=1,DODGE=1,PARRY=1 },
		}
	},
	["HUNTER"] = {  -- all 3 identical
		[1] = { --BEAST MASTERY
			itemtypes={BOW=1,XBOW=1,GUN=1,LEATHER=-50,MAIL=40 },
			stats = { DPS={weight=22}, AGILITY={weight=20}, HIT={weight=18,default=18,hitcap=7.5,category=CR_HIT_RANGED}, EXPERTISE={weight=16,default=16,expcap=7.5}, CRIT={weight=14}, MASTERY={weight=12}, HASTE={weight=10}, ATTACK_POWER={weight=10} },
			badstats = { STRENGTH=1,INTELLECT=1,SPIRIT=1,SPELL_POWER=1,SPELL_PENETRATION=1,DODGE=1,PARRY=1 },
		},
		[2] = { --MARKSMANSHIP,SURVIVAL
			itemtypes={BOW=1,XBOW=1,GUN=1, LEATHER=-50,MAIL=40 },
			stats = { DPS={weight=22}, AGILITY={weight=20}, HIT={weight=18,default=18,hitcap=7.5,category=CR_HIT_RANGED}, EXPERTISE={weight=16,default=16,expcap=7.5}, CRIT={weight=14}, MASTERY={weight=12}, ATTACK_POWER={weight=10}, HASTE={weight=10} },
			badstats = { STRENGTH=1,INTELLECT=1,SPIRIT=1,SPELL_POWER=1,SPELL_PENETRATION=1,DODGE=1,PARRY=1 },
		},
		[3] = { --MARKSMANSHIP,SURVIVAL
			itemtypes={BOW=1,XBOW=1,GUN=1, LEATHER=-50,MAIL=40 },
			stats = { DPS={weight=22}, AGILITY={weight=20}, HIT={weight=18,default=18,hitcap=7.5,category=CR_HIT_RANGED}, EXPERTISE={weight=16,default=16,expcap=7.5}, CRIT={weight=14}, MASTERY={weight=12}, ATTACK_POWER={weight=10}, HASTE={weight=10} },
			badstats = { STRENGTH=1,INTELLECT=1,SPIRIT=1,SPELL_POWER=1,SPELL_PENETRATION=1,DODGE=1,PARRY=1 },
		},
	},
	["MONK"] = {
		[1] = { --BREWMASTER-TANK
			itemtypes={ TH_POLE=1,TH_STAFF=1,FIST=1,AXE=1,SWORD=1,LEATHER=1 },
			stats = { DPS={weight=22}, AGILITY={weight=20}, STAMINA={weight=18}, DODGE={weight=16}, MASTERY={weight=14}, EXPERTISE={weight=12,default=12,expcap=7.5}, CRIT={weight=12}, HIT={weight=10,default=10,hitcap=7.5,category=CR_HIT_MELEE}, HASTE={weight=3}, ATTACK_POWER={weight=10} },
			badstats = { INTELLECT=1,SPIRIT=1,SPELL_POWER=1,SPELL_PENETRATION=1 },
		},
		[2] = { --MISTWEAVER-HEAL
			itemtypes={ TH_POLE=1,TH_STAFF=1,FIST=1,AXE=1,SWORD=1,LEATHER=1 },
			stats = { INTELLECT={weight=20}, SPELL_POWER={weight=18}, SPIRIT={weight=16}, HASTE={weight=14}, MASTERY={weight=14}, CRIT={weight=12} },
			badstats = { STRENGTH=1,AGILITY=1,EXPERTISE=1,DODGE=1,PARRY=1 },
		},
		[3] = { --WINDWALKER-DPS
			itemtypes={ TH_POLE=1,TH_STAFF=1,FIST=1,AXE=1,SWORD=1,LEATHER=1 },
			stats = { DPS={weight=22}, AGILITY={weight=20}, MASTERY={weight=18}, HIT={weight=16,default=16,specialhitcap=7.5,hitcap=15,autohitcap=27,category=CR_HIT_MELEE}, EXPERTISE={weight=14,default=14,expcap=7.5}, HASTE={weight=12}, ATTACK_POWER={weight=10}, CRIT={weight=10} },
			badstats = { INTELLECT=1,SPIRIT=1,SPELL_PENETRATION=1,SPELL_POWER=1,DODGE=1,PARRY=1 },
		}
	},
	["MAGE"] = {  -- all 3 identical
		[1] = {
			itemtypes={ DAGGER=1,SWORD=1,TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT={weight=20}, SPELL_POWER={weight=18}, HIT={weight=18,default=18,hitcap=15,category=CR_HIT_SPELL}, CRIT={weight=16}, HASTE={weight=14}, MASTERY={weight=12} },
			badstats = { STRENGTH=1,AGILITY=1,SPIRIT=1,EXPERTISE=1,DODGE=1,PARRY=1 },
		},
		[2] = {
			itemtypes={ DAGGER=1,SWORD=1,TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT={weight=20}, SPELL_POWER={weight=18}, HIT={weight=18,default=18,hitcap=15,category=CR_HIT_SPELL}, CRIT={weight=16}, HASTE={weight=14}, MASTERY={weight=12} },
			badstats = { STRENGTH=1,AGILITY=1,SPIRIT=1,EXPERTISE=1,DODGE=1,PARRY=1 },
		},
		[3] = {
			itemtypes={ DAGGER=1,SWORD=1,TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT={weight=20}, SPELL_POWER={weight=18}, HIT={weight=18,default=18,hitcap=15,category=CR_HIT_SPELL}, CRIT={weight=16}, HASTE={weight=14}, MASTERY={weight=12} },
			badstats = { STRENGTH=1,AGILITY=1,SPIRIT=1,EXPERTISE=1,DODGE=1,PARRY=1 },
		}
	},
	["PALADIN"] = {
		[1] = { --HOLY
			itemtypes={ AXE=1,MACE=1,SWORD=1, SHIELD=1, MISCARM=1, MAIL=-50,PLATE=40 },
			stats = { SPIRIT={weight=20}, SPELL_POWER={weight=18},INTELLECT={weight=18}, HASTE={weight=16}, CRIT={weight=14}, MASTERY={weight=16} },
			badstats = { AGILITY=1,STRENGTH=1,EXPERTISE=1,HIT=1,SPELL_PENETRATION=1,DODGE=1,PARRY=1 },
		},
		[2] = { --PROTECTION
			itemtypes={ AXE=1,MACE=1,SWORD=1, SHIELD=1, MAIL=-50,PLATE=40 },
			stats = { DPS={weight=22}, STRENGTH={weight=20}, STAMINA={weight=20}, MASTERY={weight=14}, DODGE={weight=16}, PARRY={weight=16}, HIT={weight=12,default=12,hitcap=7.5,category=CR_HIT_MELEE}, EXPERTISE={weight=12,default=12,expcap=7.5}, ATTACK_POWER={weight=10} },
			badstats = { INTELLECT=1,SPIRIT=1,SPELL_POWER=1,AGILITY=1,SPELL_PENETRATION=1 },
		},
		[3] = { --RETRIBUTION
			itemtypes={ TH_POLE=1,TH_AXE=1,TH_MACE=1,TH_SWORD=1, MAIL=-50,PLATE=40 },
			stats = { DPS={weight=22}, STRENGTH={weight=20}, HIT={weight=18,default=18,hitcap=7.5,category=CR_HIT_MELEE}, EXPERTISE={weight=18,default=16,expcap=7.5}, MASTERY={weight=14}, CRIT={weight=12}, HASTE={weight=16}, ATTACK_POWER={weight=10} },
			badstats = { INTELLECT=1,SPIRIT=1,SPELL_POWER=1,DODGE=1,PARRY=1,SPELL_PENETRATION=1 },
		}
	},
	["PRIEST"] = {
		[1] = { --DISCIPLINE
			itemtypes={ DAGGER=1,MACE=1,TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT={weight=20}, SPELL_POWER={weight=18}, SPIRIT={weight=16}, HASTE={weight=14}, CRIT={weight=14}, MASTERY={weight=14} },
			badstats = { STRENGTH=1,AGILITY=1,EXPERTISE=1,HIT=1,DODGE=1,PARRY=1 },
		},
		[2] = { --HOLY
			itemtypes={ DAGGER=1,MACE=1,TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT={weight=20}, SPELL_POWER={weight=18}, SPIRIT={weight=16}, HASTE={weight=14}, MASTERY={weight=14}, CRIT={weight=12} },
			badstats = { STRENGTH=1,AGILITY=1,EXPERTISE=1,HIT=1,DODGE=1,PARRY=1 },
		},
		[3] = { --SHADOW
			itemtypes={ DAGGER=1,MACE=1,TH_STAFF=1, WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT={weight=20}, SPELL_POWER={weight=18}, HIT={weight=18,default=18,hitcap=15,category=CR_HIT_SPELL}, SPIRIT={weight=18,spellhitcap=15}, HASTE={weight=16}, CRIT={weight=12}, MASTERY={weight=14} },
			badstats = { STRENGTH=1,AGILITY=1,EXPERTISE=1,DODGE=1,PARRY=1 },
		}
	},
	["ROGUE"] = {
		[1] = { --ASSASSINATION
			itemtypes={ DAGGER=2,LEATHER=1 },
			stats = { DPS={weight=22}, AGILITY={weight=20}, MASTERY={weight=18}, HIT={weight=16,default=16,specialhitcap=7.5,hitcap=15,autohitcap=27,category=CR_HIT_SPELL}, EXPERTISE={weight=14,default=14,expcap=7.5}, HASTE={weight=12}, ATTACK_POWER={weight=10}, CRIT={weight=10} },
			badstats = { INTELLECT=1,SPIRIT=1,SPELL_PENETRATION=1,SPELL_POWER=1,DODGE=1,PARRY=1 },
		},
		[2] = { --COMBAT
			itemtypes={ DAGGER=2,FIST=2,AXE=2,MACE=2,SWORD=2, LEATHER=1 },
			stats = { DAMAGE={weight=22,onlyinslot="MAINHAND"}, DPS={weight=22,onlyinslot="OFFHAND"}, AGILITY={weight=20}, HIT={weight=16,default=16,hitcap=7.5,poisonhitcap=15,autohitcap=27,category=CR_HIT_MELEE}, EXPERTISE={weight=14,default=14,expcap=7.5}, MASTERY={weight=12}, ATTACK_POWER={weight=10}, HASTE={weight=10}, CRIT={weight=8} },
			badstats = { INTELLECT=1,SPIRIT=1,SPELL_PENETRATION=1,SPELL_POWER=1,DODGE=1,PARRY=1 },
		},
		[3] = { --SUBTLETY
			itemtypes={ DAGGER=2,FIST=2,AXE=2,MACE=2,SWORD=2, LEATHER=1 },
			stats = { DPS={weight=22}, AGILITY={weight=20}, HIT={weight=16,default=16,hitcap=7.5,poisonhitcap=15,autohitcap=27,category=CR_HIT_MELEE}, HASTE={weight=14}, EXPERTISE={weight=14,default=14,expcap=7.5}, CRIT={weight=12}, ATTACK_POWER={weight=10}, MASTERY={weight=10} },
			badstats = { INTELLECT=1,SPIRIT=1,SPELL_PENETRATION=1,SPELL_POWER=1,DODGE=1,PARRY=1 },
		}
	},
	["SHAMAN"] = {
		[1] = { --ELEMENTAL
			itemtypes={ DAGGER=1,FIST=1,AXE=1,MACE=1,TH_STAFF=1,MISCARM=1,SHIELD=1, LEATHER=-50,MAIL=40, },
			stats = { INTELLECT={weight=20}, SPELL_POWER={weight=18}, SPIRIT={weight=16,spellhitcap=15}, HIT={weight=16,default=16,hitcap=15,category=CR_HIT_SPELL}, HASTE={weight=14}, MASTERY={weight=14}, CRIT={weight=12} },
			badstats = { STRENGTH=1,AGILITY=1,EXPERTISE=1,DODGE=1,PARRY=1 },
		},
		[2] = { --ENHANCEMENT:
			itemtypes={ DAGGER=2,FIST=2,AXE=2,MACE=2,MISCARM=1, LEATHER=-50,MAIL=40, }, --dual from 10? --Removing 2h weapons. Bad for Mists ~Errc
			stats = { DPS={weight=22}, AGILITY={weight=20}, HIT={weight=18,default=18,specialhitcap=7.5,hitcap=15,autohitcap=27,category=CR_HIT_SPELL}, EXPERTISE={weight=14,default=14,expcap=7.5}, MASTERY={weight=12}, ATTACK_POWER={weight=10}, CRIT={weight=10},HASTE={weight=8}, },
			badstats = { INTELLECT=1,SPIRIT=1,DODGE=1,PARRY=1 },
		},
		[3] = { --RESTORATION
			itemtypes={ DAGGER=1,FIST=1,AXE=1,MACE=1,TH_STAFF=1,MISCARM=1,SHIELD=1, LEATHER=-50,MAIL=40, },
			stats = { INTELLECT={weight=20}, SPELL_POWER={weight=18}, SPIRIT={weight=16}, HASTE={weight=14}, CRIT={weight=12}, MASTERY={weight=10} },
			badstats = { STRENGTH=1,AGILITY=1,HIT=1,EXPERTISE=1,SPELL_PENETRATION=1,DODGE=1,PARRY=1 },
		}
	},
	["WARLOCK"] = {
		[1] = { --AFFLICTION
			itemtypes={ SWORD=1,DAGGER=1,TH_STAFF=1,WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT={weight=20}, SPELL_POWER={weight=18}, HIT={weight=16,default=16,hitcap=15,category=CR_HIT_SPELL}, CRIT={weight=14}, MASTERY={weight=12}  },
			badstats = { STRENGTH=1,AGILITY=1,SPIRIT=1,EXPERTISE=1,DODGE=1,PARRY=1 },
		},
		[2] = { --DEMONOLOGY
			itemtypes={ SWORD=1,DAGGER=1,TH_STAFF=1,WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT={weight=20}, SPELL_POWER={weight=18}, HIT={weight=16,default=16,hitcap=15,category=CR_HIT_SPELL}, MASTERY={weight=14}, HASTE={weight=12}, CRIT={weight=10} },
			badstats = { STRENGTH=1,AGILITY=1,SPIRIT=1,EXPERTISE=1,DODGE=1,PARRY=1 },
		},
		[3] = { --DESTRUCTION
			itemtypes={ SWORD=1,DAGGER=1,TH_STAFF=1,WAND=1, MISCARM=1, CLOTH=1 },
			stats = { INTELLECT={weight=20}, SPELL_POWER={weight=18}, HIT={weight=16,default=16,hitcap=15,category=CR_HIT_SPELL}, HASTE={weight=14}, CRIT={weight=12}, MASTERY={weight=10}  },
			badstats = { STRENGTH=1,AGILITY=1,SPIRIT=1,EXPERTISE=1,DODGE=1,PARRY=1 },
		}
	},
	["WARRIOR"] = {
		[1] = { --ARMS
			itemtypes={ TH_POLE=1,TH_STAFF=1,TH_AXE=1,TH_MACE=1,TH_SWORD=1, MAIL=-50,PLATE=40 },
			stats = { DPS={weight=22}, STRENGTH={weight=20}, HIT={weight=18,default=18,hitcap=7.5,category=CR_HIT_MELEE}, EXPERTISE={weight=16,default=16,expcap=7.5}, CRIT={weight=14}, MASTERY={weight=14}, HASTE={weight=12}, ATTACK_POWER={weight=10} },
			badstats = { INTELLECT=1,SPIRIT=1,SPELL_POWER=1,DODGE=1,PARRY=1,SPELL_PENETRATION=1 },
		},
		[2] = { --FURY
			itemtypes={ TH_AXE=38,TH_MACE=38,TH_SWORD=38, DAGGER=1,FIST=1,AXE=1,MACE=1,SWORD=1, MAIL=-50,PLATE=40 },  -- duals...
			stats = { DPS={weight=22}, STRENGTH={weight=20}, EXPERTISE={weight=18,default=18,expcap=7.5}, HIT={weight=18,default=18,hitcap=16,autohitcap=27,category=CR_HIT_MELEE}, CRIT={weight=16}, HASTE={weight=12} , ATTACK_POWER={weight=10}, MASTERY={weight=14}},
			badstats = { INTELLECT=1,SPIRIT=1,SPELL_POWER=1,DODGE=1,PARRY=1,SPELL_PENETRATION=1 },
		},
		[3] = { --PROT
			itemtypes={ DAGGER=1,FIST=1,AXE=1,MACE=1,SWORD=1, MAIL=-50,PLATE=40, SHIELD=1 },
			stats = { DPS={weight=22}, STRENGTH={weight=20}, MASTERY={weight=18}, DODGE={weight=14}, PARRY={weight=16}, STAMINA={weight=18}, EXPERTISE={weight=12,default=12,expcap=7.5}, ATTACK_POWER={weight=10}, HIT={weight=10,default=10,hitcap=7.5,category=CR_HIT_MELEE} },
			badstats = { INTELLECT=1,SPIRIT=1,SPELL_POWER=1,SPELL_PENETRATION=1 },
		}
	},
}

ItemScore.rules = rules

do -- Add HIT/CRIT variants
	for class,classrules in pairs(rules) do
		for spec,rule in pairs(classrules) do
			for dataname,data in pairs(rule) do  if dataname=="stats" or dataname=="badstats" then
				-- add _RATING
				local ratings={"HIT","CRIT","DODGE","PARRY","HASTE","MASTERY","EXPERTISE"}
				for i,stat in ipairs(ratings) do  data[stat.."_RATING"]=data[stat]  data[stat]=nil  end

				-- add melee/spell/ranged -- not needed. All Crit/hit rating is just CRIT_RATING or HIT_RATING. The different kinds can be gathered from char menu
			--[[	data.CRIT_MELEE_RATING = data.CRIT_RATING --not needed currently, everything is "HIT_RATING"
				data.CRIT_RANGED_RATING = data.CRIT_RATING
				data.CRIT_SPELL_RATING = data.CRIT_RATING
				data.HIT_MELEE_RATING = data.HIT_RATING
				data.HIT_RANGED_RATING = data.HIT_RATING
				data.HIT_SPELL_RATING = data.HIT_RATING--]]

				data.DAMAGE_PER_SECOND = data.DPS  data.DPS=nil
			end  end
		end
	end
end

-- Artificial "bonuses" on items with special properties that can't be processed automatically.
local special_item_stats = {
	[869] = { --Dazzling Longsword: "Chance on hit: Decrease the armor of the target by 100 for 30 sec.  While affected, the target cannot stealth or turn invisible."
		STRENGTH=7,STAMINA=7
	}
}

local itembase = {}
setmetatable(itembase,{__index=function(tab,key) tab[key]={} return tab[key] end })

itembase.weapon = { 869, 9392, 65947, 1265, 18310, 9401, 13034, 9424, 62201, 33270, 33271 }
itembase.armor = { }
itembase.all = { 869, 9392, 65947, 1265, 18310, 9401, 13034, 9424, 62201, 33270, 33271 }
ItemScore.itembase = itembase

ItemScore.DATA={itemclasses,itemweapsubclasses,itemarmsubclasses,class_ids,weap_ids,arm_ids}
ItemScore.debug=1

function ItemScore:Debug(...)
	local str = ...
	ZGV:Debug("|cffffdd00ItemScore>|cfff8f0ff ".. str, select(2,...) )
end

local item={}

local SC_NORULES = "no rules"
local SC_BADSLOT = "bad slot"
local SC_NOTYET = "not ready"
local SC_BADITEM = "bad item"
local SC_NOTFORU = "not for you"
local SC_LEVELREQ = "level req"
local SC_BADSTAT = "bad stat"

local Gratuity = LibStub("LibGratuity-3.0")

local ItemCache = {}
ItemScore.ItemCache = ItemCache

-- unused?
local function Detemplate(s)
	return s :gsub("([%-%+%.])","%%%1") :gsub("%%d","(%%d+)") :gsub("%%s","(.-)") :gsub("%%%.%d+f","([0-9%%.]+)")
end

ZGVI_DAMAGE_TEMPLATE = DAMAGE_TEMPLATE :gsub("%%d","(%%d+)") :gsub(" %- "," %%- ")
ZGVI_DAMAGE_TEMPLATE_WITH_SCHOOL = DAMAGE_TEMPLATE_WITH_SCHOOL :gsub("%%d","(%%d+)") :gsub(" %- "," %%- ")
ZGVI_WEAPON_SPEED_TEMPLATE = WEAPON_SPEED.." ([0-9%.]+)"

function GetItemStatsWithTooltip(itemid)
	if ItemCache[itemid] then return ItemCache[itemid] end
	if not itemid then return end
	local name,link,quality,ilevel, reqlevel, class, subclass, maxstack, equipslot, texture, vendorprice = GetItemInfo(itemid)
	if not name then return nil end
	local item = {info={name=name,link=link,quality=quality,ilevel=ilevel,reqlevel=reqlevel,class=class,subclass=subclass,equipslot=equipslot,vendorprice=vendorprice}, stats={}, tooltip={}}
	GetItemStats("item:"..itemid,item.stats)
	Gratuity:SetHyperlink("|Hitem:"..itemid.."|h[q]|h")
	local n = Gratuity:NumLines()
	if n <= 1 then return end
	for i=1,n do
		local line=Gratuity:GetLine(i)
		if line then
			local d1,d2 = line:match(ZGVI_DAMAGE_TEMPLATE)  if d1 and d2 then item.stats.DAMAGE1,item.stats.DAMAGE2,item.stats.DAMAGE = tonumber(d1),tonumber(d2),(tonumber(d1)+tonumber(d2))/2 end
			local s1 = line:match(ZGVI_WEAPON_SPEED_TEMPLATE)  if s1 then item.stats.SPEED = tonumber(s1) end
			tinsert(item.tooltip,line)
		end
		local line=Gratuity:GetLine(i,true)  --right line
		if line then
			local d1,d2 = line:match(ZGVI_DAMAGE_TEMPLATE)  if d1 and d2 then item.stats.DAMAGE1,item.stats.DAMAGE2,item.stats.DAMAGE = tonumber(d1),tonumber(d2),(tonumber(d1)+tonumber(d2))/2 end
			local s1 = line:match(ZGVI_WEAPON_SPEED_TEMPLATE)  if s1 then item.stats.SPEED = tonumber(s1) end
			tinsert(item.tooltip,line)
		end
	end

	ItemCache[itemid]=item
	return item
end

function ItemScore:SetFilters(playerclass,playerspec,playerlevel)
	if not playerclass or not playerspec then playerclass,playerspec = (select(2,UnitClass("player")) or "WARRIOR"),(GetSpecialization() or 1) end
	if not playerlevel then playerlevel=UnitLevel("player") or 1 end
	self.playerclass = playerclass
	self.playerspec = playerspec
	self.playerlevel = playerlevel
end

function ItemScore:PushFilters()
	self.old_playerclass = self.playerclass
	self.old_playerspec = self.playerspec
	self.old_playerlevel = self.playerlevel
end

function ItemScore:PopFilters()
	self.playerclass = self.old_playerclass
	self.playerspec = self.old_playerspec
	self.playerlevel = self.old_playerlevel
end

function ItemScore:SetDualWield()-- pretty simple
	if (IsSpellKnown(674) and ZGV.ItemScore.playerclass~="HUNTER")  --Hunter, DK but we do not want hunters to dual wield.
	or IsSpellKnown(86629) --Shaman
	or IsSpellKnown(124146) --Monk
	or IsSpellKnown(23588) then --Warrior onehand dual wield in fury. When is this prefered?
		self.playerdualwield=true
	else
		self.playerdualwield=nil
	end
	
	if IsSpellKnown(46917) then--warrior Titan's Grip. Special handling for 2h dual wielding
		self.playerdual2h=true --fury dual wield 2h
	else
		self.playerdual2h=nil
	end
end

-- EVIL ASSUMPTION: Let's use a different slot, INVTYPE_2HWEAPON, for two-handers. And INVTYPE_SHIELD for shields.

function ItemScore:GetItemScore(itemid, invslot, verbose, itemlink)

	local value=0 -- returns with the ItemScore if nothing is returned before.

	if not rules[self.playerclass] then return -1,SC_NORULES,"no rules for ".. self.playerclass end
	local rule = rules[self.playerclass][self.playerspec]
	if not rule then return -1,SC_NORULES,"no rules for ".. self.playerclass.." ".. self.playerspec end

	--self:Debug("PlayerClassSpec %s %d",playerclass,playerspec)
	local item

	local function _with_debug(code,reason)
		if verbose then self:Debug("Item dropped: |cff88ffff%d %s type: %s  slot: %s  ==  |cffff0000[%s] %s",itemid,item.info.link,item.info.subclass,item.info.equipslot,code,reason) end
		return -1,code,reason
	end


	item = GetItemStatsWithTooltip(itemid)
	if not item then return _with_debug(SC_NOTYET,"item not found (yet)") end
	
	if item.info.reqlevel>self.playerlevel then return _with_debug(SC_LEVELREQ,"|cffff4400 level req "..item.info.reqlevel) end

	if invslot then -- does the shoe fit?
		local bad=false
		local itemslot = item.info.equipslot
		if (invslot=="INVTYPE_WEAPONMAINHAND" and (itemslot=="INVTYPE_WEAPON" or itemslot=="INVTYPE_WEAPONMAINHAND"))
		or (invslot=="INVTYPE_WEAPONOFFHAND" and (itemslot=="INVTYPE_WEAPON" or itemslot=="INVTYPE_WEAPONOFFHAND"))
		or (invslot=="INVTYPE_RANGED" and (itemslot=="INVTYPE_RANGED" or itemslot=="INVTYPE_RANGEDRIGHT" or itemslot=="INVTYPE_THROWN"))
		or (invslot=="INVTYPE_CHEST" and itemslot=="INVTYPE_ROBE") then
			-- it's OK!
		elseif invslot~=item.info.equipslot then
			bad=true
		end
		if bad then  return _with_debug(SC_BADSLOT,"|cffff8888 item for "..item.info.equipslot.." doesn't match slot "..invslot)  end
	end

	local total,worn = GetAverageItemLevel()
	local inguides = ItemScore.items_in_guides[itemid]
	local dungeondata = inguides and ZGV.Dungeons[inguides.dungeon]
	if dungeondata then
		if dungeondata.minLevel and dungeondata.minLevel>self.playerlevel then  return _with_debug(SC_NOTFORU,"|cffff0000 level must be ".. dungeondata.minLevel.." to enter dungeon")  end
		if dungeondata.min_ilevel and dungeondata.min_ilevel>total then  return _with_debug(SC_NOTFORU,"|cffff0088 itemlevel must be "..dungeondata.min_ilevel.." to get this")  end
		if dungeondata.isHoliday then  return _with_debug(SC_NOTFORU,"|cffff88ff holiday dungeons not supported")  end
		if dungeondata.expansionLevel>GetExpansionLevel() then  return _with_debug(SC_NOTFORU,"don't have expansion")  end
	end

	-- Rings, trinkets, necklaces and cloaks are good for everyone.
	if item.info.equipslot~="INVTYPE_FINGER"
	and item.info.equipslot~="INVTYPE_TRINKET"
	and item.info.equipslot~="INVTYPE_NECK"
	and item.info.equipslot~="INVTYPE_CLOAK"
	then
		-- Determine item class
		local class = class_ids[itemclasses[item.info.class] or 0] or item.info.class
		local subclass = item.info.subclass
		if class=="WEAPON" then
			local cl = weap_ids[itemweapsubclasses[item.info.subclass] or 0]
			if not cl then return _with_debug(SC_BADITEM,("Unknown weapon subclass %s"):format(item.info.subclass)) end
			subclass = cl
		elseif class=="ARMOR" then
			local cl = arm_ids[itemarmsubclasses[item.info.subclass] or 0]
			if not cl then return _with_debug(SC_BADITEM,("Unknown armor subclass %s"):format(item.info.subclass)) end
			subclass = cl
		else
			return _with_debug(SC_BADITEM,("Unknown item class %s"):format(class))
		end

		-- Okay, type ascertained. Is it proper for the player at all?
		local uselevel = rule.itemtypes[subclass]
		if self.playerlevel <= 10 and (subclass == "CLOTH" or subclass == "LEATHER") then
			if rule.itemtypes["LEATHER"] and not uselevel then
				uselevel = 1 --Let leather users use cloth until level 10. This is so if a slot is empty, it is better than nothing
			elseif rule.itemtypes["MAIL"] and not uselevel then
				uselevel = 1 --Mail users can use cloth or leather at low level.
			end
			--Yes this over writes the uselevel in some cases, but it is okay because it only happens until level 10.
		end
		--self:Debug("Use at level: %d",uselevel or 0)

		if uselevel==40 and self.playerlevel<50 and self.playerlevel>39 then value=value+100 end --allows hunter/pally/warr/sham to transition from mail->plate from level 40 to 50

		if not uselevel then return -1,SC_NOTFORU,"|cffcc0000 type "..subclass.." bad for ".. self.playerclass.. self.playerspec end
		if (uselevel>0 and self.playerlevel<uselevel) or (uselevel<0 and self.playerlevel>=-uselevel) then return _with_debug(SC_NOTFORU,"|cffff88aa not usable yet at level ".. self.playerlevel) end
	end

	local special = special_item_stats[itemid]
	if special then
		for statname,statvalue in pairs(special) do  item.stats["ITEM_MOD_"..statname]=statvalue  end
	end

	if verbose then self:Debug("Stat analysis: |cff88ffff%d %s type: %s  slot: %s",itemid,item.info.link,item.info.subclass,item.info.equipslot) end

	if itemlink then --Itemlink is needed because for items that are [ITEM OF THE BEAR] the itemid does not include the of the Bear.
		local stat, statvalue
		local prefixTable=GetItemStats(itemlink)
		for stat,statvalue in pairs(prefixTable) do
			if not item.stats[stat] then
				item.stats[stat]=statvalue
			end
		end
	end

	if self.playerlevel<GetMaxPlayerLevel() then
		if self.playerlevel <= 85 and item.info.quality==7 then value = value +10000 end --BoA Heirlooms. They give exp boost so they are very good.
		if self.playerlevel <= 10 and item.stats.RESISTANCE0_NAME then value = value + (item.stats.RESISTANCE0_NAME)*3 end -- Give Armor a weight at low level.

		value = value + item.info.ilevel * 1 -- Item score is only used to make sure value ~=0
	else
		if item.info.ilevel < GetMaxPlayerLevel()*3 then return -1,"Low Item Level" end -- prevent level 1 item from being suggested over a lvl 80 item with 1 badstat
		value= value + item.info.ilevel * 20  -- that's a good start
	end

	--*************LOOK HERE***************
	--There is a code of this for loop in the function below this one. TODO at some point, get rid of the duplicate code.

	for statname,statvalue in pairs(item.stats) do
		if statname:find("^ITEM_MOD_") then
			statname = statname:gsub("^ITEM_MOD_","") :gsub("_SHORT$","") :gsub("_NAME$","")

			if statname=="HIT_RATING" and rule.stats.HIT_RATING then -- if above hit rating cap for each class then make the weight half.
				local hitTable=rule.stats.HIT_RATING
				local currentHit=GetCombatRatingBonus(hitTable.category)+GetHitModifier()
				local default=hitTable.default
				if currentHit > (hitTable.hitcap or 0) or self.playerlevel<GetMaxPlayerLevel() then
					rule.stats.HIT_RATING.weight=default/2 -- set to half importance if hit is over cap or if player is under max level
				else
					rule.stats.HIT_RATING.weight=default
				end
			end

			if statname=="EXPERTISE_RATING" and rule.stats.EXPERTISE_RATING then -- expertise cap of 7.5 makes exp worth half just like ^
				local expTable=rule.stats.EXPERTISE_RATING
				local currentExp=GetExpertise()  --First REturn
				local default=expTable.default
				if currentExp >= (expTable.expcap or 0) or self.playerlevel<GetMaxPlayerLevel() then
					rule.stats.EXPERTISE_RATING.weight=default/2
				else
					rule.stats.EXPERTISE_RATING.weight=default
				end
			end

			local statrule = rule.stats[statname]
			if statrule then
				if (statrule.onlyinslot==invslot) or not statrule.onlyinslot then
					if statname=="DAMAGE_PER_SECOND" or statname=="DAMAGE" then statvalue=statvalue*0.3 end  -- upscaling dps/damage
					value = value + statvalue*(statrule.weight or 1)
					if verbose then  self:Debug("  + |cff00ff00%.1f %s%s|r: |cffaaaaaa * %.1f = |cffffffff%.1f|r",statvalue,statname,special and special[statname] and " (special)" or "", statrule.weight or 1, statvalue*(statrule.weight or 1))  end
				end
			elseif rule.badstats[statname] then
				if verbose then  self:Debug("  + |cffffff00%.1f %s%s|r: |cffff0000REJECTED",statvalue,statname,special and special[statname] and " (special)" or "")  end
				if self.playerlevel==GetMaxPlayerLevel() then return -1,SC_BADSTAT,"useless stat: "..statname end
			else
				--self:Debug("Bonus for |cffffbb00%s%s|r: none",statname,special and special[statname] and " (special)" or "" )
			end
		elseif statname:find("^EMPTY_SOCKET") then
			statname = statname:gsub("^EMPTY_SOCKET_","")--statname is the color of the slot RED/BLUE/YELLOW/META... Can add special rules for each color if desired.
			if self.playerlevel < GetMaxPlayerLevel() then --Don't score these very high, will probably not get gems
				value=value+statvalue*(item.info.ilevel)
			else
				value = value + statvalue*(item.info.ilevel*5)
				--THIS IS ROUGH! Best gems are have a stat of 160. 160*20 = 3200.
				--Itemlevel for max level between 450 and 500, so score it a little low incase best gems are not getting put in the sockets.
			end
		end
	end

	if verbose then  self:Debug("  = |cffccff88%d",value) end

	return value
end

function ItemScore:GetItemScoreWithTable(link)	
	if not rules[self.playerclass] then return -1,SC_NORULES,"no rules for ".. self.playerclass end
	local rule = rules[self.playerclass][self.playerspec]
	if not rule then return -1,SC_NORULES,"no rules for ".. self.playerclass.." ".. self.playerspec end

	local stattable = GetItemStats(link)

	local value = 0
	
	for statname,statvalue in pairs(stattable) do
		if statname:find("^ITEM_MOD_") then
			statname = statname:gsub("^ITEM_MOD_","") :gsub("_SHORT$","") :gsub("_NAME$","")

			if statname=="HIT_RATING" and rule.stats.HIT_RATING then -- if above hit rating cap for each class then make the weight half.
				local hitTable=rule.stats.HIT_RATING
				local currentHit=GetCombatRatingBonus(hitTable.category)+GetHitModifier()
				local default=hitTable.default
				if currentHit > (hitTable.hitcap or 0) or self.playerlevel<GetMaxPlayerLevel() then
					rule.stats.HIT_RATING.weight=default/2 -- set to half importance if hit is over cap or if player is under max level
				else
					rule.stats.HIT_RATING.weight=default
				end
			end

			if statname=="EXPERTISE_RATING" and rule.stats.EXPERTISE_RATING then -- expertise cap of 7.5 makes exp worth half just like ^
				local expTable=rule.stats.EXPERTISE_RATING
				local currentExp=GetExpertise()  --First REturn
				local default=expTable.default
				if currentExp >= (expTable.expcap or 0) or self.playerlevel<GetMaxPlayerLevel() then
					rule.stats.EXPERTISE_RATING.weight=default/2
				else
					rule.stats.EXPERTISE_RATING.weight=default
				end
			end

			local statrule = rule.stats[statname]
			if statrule then
				if (statrule.onlyinslot==invslot) or not statrule.onlyinslot then
					if statname=="DAMAGE_PER_SECOND" or statname=="DAMAGE" then statvalue=statvalue*0.3 end  -- upscaling dps/damage
					value = value + statvalue*(statrule.weight or 1)
				end
			elseif rule.badstats[statname] then
				if self.playerlevel==GetMaxPlayerLevel() then return -1,SC_BADSTAT,"useless stat: "..statname end
			end
		elseif statname:find("^EMPTY_SOCKET") then
			local _,_,_,ilevel = GetItemInfo(link)
			statname = statname:gsub("^EMPTY_SOCKET_","")--statname is the color of the slot RED/BLUE/YELLOW/META... Can add special rules for each color if desired.
			if self.playerlevel < GetMaxPlayerLevel() then --Don't score these very high, will probably not get gems
				value=value+statvalue*(ilevel)
			else
				value = value + statvalue*(ilevel*5)
				--THIS IS ROUGH! Best gems are have a stat of 160. 160*20 = 3200.
				--Itemlevel for max level between 450 and 500, so score it a little low incase best gems are not getting put in the sockets.
			end
		end
	end

	return value
end

-- Selecting Best Quest reward --
function ItemScore:RemoveGlow()
	if self.GlowFrame then
		self.GlowFrame:Hide()
		self.GlowFrame:ClearAllPoints()
	end
end

function ItemScore:QuestRewardGlow(index,selling)
	if ZGV.db.profile.autoselectitem and ZGV.db.profile.autoturnin and ZGV.db.profile.questitemselector then
		GetQuestReward(index)
	else
		local CHAIN = ZGV.ChainCall
		local b = G["QuestInfoItem"..index]
		local questframe = QuestFrameRewardPanel

		if not self.GlowFrame then
			self.GlowFrame = CHAIN(CreateFrame("Frame","",questframe))
				:SetBackdrop({bgFile="",edgeFile=ZGV.DIR.."\\Skins\\glowborder", edgeSize=5})
				:SetSize(109,45)
				:SetPoint("CENTER",b,"CENTER",19,2)
				:SetFrameStrata("HIGH")
				:Show()
			.__END

			--self.GlowFrame.tex = CHAIN(self.GlowFrame:CreateTexture())
			--	:SetTexture("Interface\\MONEYFRAME\\UI-GoldIcon")
			--	:SetSize(15,15)
			--	:SetPoint("TOPRIGHT")
			--.__END

		else
			self.GlowFrame:SetPoint("CENTER",b,"CENTER",19,2)
			self.GlowFrame:Show()
		end
		--self.GlowFrame.tex:SetShown(selling)
	end
end

function ItemScore:GetQuestReward()
	local totalrewards=GetNumQuestChoices()
	local highSellValue = 0
	local highSellIndex

	local upgradeScore = 0
	local upgradeQuestIndex

	if totalrewards < 1 then return end --no items!
	for index=1, totalrewards do --Loop through all items (maybe max 6) before we work with any.
		local link= GetQuestItemLink("choice",index) if not link then return end --Need to wait for iteminfo
	end

	self.QuestItemsReady = true

	local function newQuestUpgrade(increasedScore,questindex)
		if upgradeScore < increasedScore then --We found a upgrade, see if it is the best one
			upgradeScore = increasedScore
			upgradeQuestIndex = questindex
		end
	end

	for index=1, totalrewards do while(1) do -- Now that we are sure the info is there. Do work!
		local name,_,numItems,quality,isUsable=GetQuestItemInfo("choice",index)
		local link= GetQuestItemLink("choice",index)
		if not link or not name then break end --WTF check
		
		local itemid= tonumber(link:match("item:(%d+)"))
		
		local equipslot,_,price = select(9,GetItemInfo(itemid))

		self:SetDualWield() self:SetFilters() --Make sure these are set.
		local slot1, slot2 = ItemScore.AutoEquip:GetSlots(equipslot)
		if not slot1 then break end --Some kind of item we don't deal with. Food or something.
		
		self.AutoEquip:Debug("Testing item "..link)
		
		if isUsable then
			local questItemScore = ItemScore:GetItemScore(itemid,nil,nil,link)
			self.AutoEquip:FindCurrentEquipped() --Call this so we have an updated list of our current items.

			if slot1 == "SecondaryHandSlot" and -- This is a holdable item or a shield. Or OH weap. Don't want it if we can't use it
			 not self.playerdualwield and --maybe we dual wield
			 self.AutoEquip.CurrentGear["MainHandSlot"].equipslot=="INVTYPE_2HWEAPON" then --aww bad news... WE have a staff equipped
				slot1 = nil --We don't want to actually equip it.
			end
			
			if slot1 and questItemScore > 0 then
				if (not self.AutoEquip.CurrentGear[slot1] or (slot2 and not self.AutoEquip.CurrentGear[slot2])) then --We don't have one of the items.
					--TODO WEAP OFFHAND WHEN WE DON'T WANT IT
					newQuestUpgrade(questItemScore,index)
				elseif self.AutoEquip.CurrentGear[slot1].score < questItemScore then --better item
					if slot2 and self.AutoEquip.CurrentGear[slot2].score < self.AutoEquip.CurrentGear[slot1].score then --Already know there is an item in it ^
						newQuestUpgrade((questItemScore - self.AutoEquip.CurrentGear[slot2].score),index)
					else
						newQuestUpgrade((questItemScore - self.AutoEquip.CurrentGear[slot1].score),index)
					end
				else --Item sucks.
				end
			end
		else --Cant use item
		end

		if price > highSellValue then --Test all items for this.
			highSellValue=price
			highSellIndex = index
		end

	break end end

	if upgradeQuestIndex then
		self:QuestRewardGlow(upgradeQuestIndex)
	elseif highSellIndex then
		self:QuestRewardGlow(highSellIndex,true)
	end
end

--Auto Equipping the best items for your spec -- 
AutoEquip.slots = {
	"HeadSlot",
	"NeckSlot",
	"ShoulderSlot",
	"BackSlot",
	"ChestSlot",
	"WristSlot",
	"HandsSlot",
	"WaistSlot",
	"LegsSlot",
	"FeetSlot",
	"Finger0Slot",
	"Finger1Slot",
	"Trinket0Slot",
	"Trinket1Slot",
	"MainHandSlot",
	"SecondaryHandSlot",
}

function AutoEquip:Debug(...)
	local str = ...
	IS:Debug("AutoEquip: "..str)
	--print("|cffffdd00AutoEquip>|cfff8f0ff "..str)
end

function AutoEquip:SetBadUpgrade(id,link)
	if ZGV.db.profile.notUpgrades then ZGV.db.profile.notUpgrades = nil end --TODO Get rid of this later. Just want to remove this massive table from users.
	local spec = GetSpecialization() or 1 -- put stuff in 1 if no spec.
	ZGV.db.profile.badupgrade[spec][id] = link or (select(2,GetItemInfo(id)))
	self:Debug(link.." ID: "..id.." added to bad upgrade.")
end

function AutoEquip:TestForBadUpgrade(id)
	local spec = GetSpecialization() or 1 -- put stuff in 1 if no spec.
	return ZGV.db.profile.badupgrade[spec][id]
end

function AutoEquip:FindCurrentEquipped()
	if not self.CurrentGear then self.CurrentGear = {} else wipe(self.CurrentGear) end
	if  self.PossibleUpgrades then wipe(self.PossibleUpgrades) end --wipe this when we change items so no bad items get in.

	self:Debug("Finding current equipped.")

	for num,slot in ipairs(self.slots) do
		local slotid = GetInventorySlotInfo(slot)
		local itemid = GetInventoryItemID("player", slotid)

		if itemid then
			local link = GetInventoryItemLink("player", slotid) --link is important b/c items with of the bleh have extra stats
			local score = ItemScore:GetItemScore(itemid,nil,nil,link)
			local equipslot = select(9,GetItemInfo(itemid))

			local testTable = GetItemStats(link)
			if not testTable then self.CurrentItemsReady = false return end --Stange error on login where current items do not get parsed in time
			

			self:Debug(("In slot |cffaaffaa"..slot.."|r, "..link.." got scored at |cffff0000%d"):format(score))
		
			self.CurrentGear[slot] = {
				["itemid"] = itemid,
				["link"] = link,
				["score"] = score,
				["equipslot"] = equipslot, --important for seperating 2h and 1h
			}
			self.CurrentGear[slot].tostring = function(self)
				local ret = ("Id = %d , Score = %.1f , Link = %s"):format(self.itemid,self.score,self.link)
				return ret
			end
		end
	end

	self.CurrentItemsReady = true; --We got to the end without returning so we are fine.
end

function AutoEquip:GetSlots(equipslot)
	local slot1, slot2 = ItemScore:GetItemSlot(equipslot)

	if (ItemScore.playerdualwield and equipslot=="INVTYPE_WEAPON") --most classes dual wielding two 1h weapons
	 or (ItemScore.playerdual2h and equipslot=="INVTYPE_2HWEAPON") then --warriors dual wielding two 2h weapons
		slot2 = "SecondaryHandSlot" -- We already can equip it in MH, test OH too
	end

	return slot1,slot2
end

function AutoEquip:ScanBags()
	if self.LastScan and  GetTime()-self.LastScan < 1 then return
	else self.LastScan = GetTime() end

	AutoEquip:FindCurrentEquipped() --Make sure we have current items correct. This seems to be a problem.

	if not self.CurrentItemsReady then return end --Error in caching the current items. Don't continue yet.

	if not self.PossibleUpgrades then self.PossibleUpgrades= {} else wipe(self.PossibleUpgrades) end --wipe this before we put stuff in it in CompareItems
	if self.BestMainHand then wipe(self.BestMainHand) end if self.BestTwoHand then wipe(self.BestTwoHand) end if self.BestSecondaryHand then wipe(self.BestSecondaryHand) end
	
	local function testEquipSlot(equipslot)
		if equipslot:find("^INV") and 
		 equipslot ~= "INVTYPE_BAG" and --bags are bad
		 equipslot ~= "INVTYPE_AMMO" and --ammo even worse
		 equipslot ~= "INVTYPE_QUIVER" and -- ^
		 equipslot ~= "INVTYPE_TABARD" and -- don't allow tabards or shirts in.
		 equipslot ~="INVTYPE_BODY" then
			return true
		end
		return false
	end

	local testitem = {}
	local found

	self:Debug("Scanning bags")

	for bag=0, NUM_BAG_SLOTS do for bagslot=1, GetContainerNumSlots(bag) do while(1) do
		local itemid=GetContainerItemID(bag,bagslot)
		if not itemid then break end
		if self:TestForBadUpgrade(itemid) then
			self:Debug(itemid.." Removed because it is in BadUpgrades.")
			break end	

		local name,_,quality,_,_,_,_,_,equipslot = GetItemInfo(itemid)
		local isUsable = IsUsableItem(itemid)

		if not name then 
			return --Don't suggest anything until this info is available.
		end
			
		if not (quality and (quality > 0 or ItemScore.playerlevel <=10)) --All items should have a quality. We only care if it is not a gray item
		--If the user is less than level 10, we will let them use grey items.
		 or not (equipslot and testEquipSlot(equipslot)) --Only care about items with equipslots we can use.
		 or not isUsable then --Check for class specific items.
		break end 

		 --We have an item to test!
		local slot1,slot2 = self:GetSlots(equipslot)
		local link=GetContainerItemLink(bag,bagslot) --This is needed for exact item stats
		local score = ItemScore:GetItemScore(itemid,nil,nil,link)

		if score < 0 then break end -- Not added to bad upgrades, adding it would make the above code not be needed, but then we would have to store the itemid.

		testitem.itemid = itemid --Just replace these instead of making a new table
		testitem.equipslot = equipslot
		testitem.link = link
		testitem.score = score
		testitem.bag = bag
		testitem.bagslot = bagslot
		testitem.slot1 = slot1
		testitem.slot2 = slot2

		found = true		
		self:CompareItems(testitem) --puts upgrades into self.PossibleUpgrades organized by slot they go in.
	break end end end

	--Now all possible upgrades are in self.PossibleUpgrades

	--Before we Queue all the upgrades, weed out any bad weapon choices. Mainly caster stuff.
	if found then
		self:WeaponTest()

		self:SetQueue()
		if #self.ItemQueue == 0 then return end --No items to try to equip.. we are done

		self:TryToEquipItem()
	end
end

function AutoEquip:WeaponTest()
	local cur = self.CurrentGear
	local pos = self.PossibleUpgrades
	if not self.BestMainHand then self.BestMainHand={} end if not self.BestTwoHand then self.BestTwoHand={} end if not self.BestSecondaryHand then self.BestSecondaryHand={} end

	--TODO will this mess up dual wielding? Fury warrs?
	if ItemScore.playerdualwield or ItemScore.playerdual2h then return end --TODO Is this good? Are there classes with a shield that  can dual wield

	self:Debug("Testing Weapon stuff")

	if not cur.MainHandSlot and not cur.SecondaryHandSlot then -- no weapons so make sure the best 1h/oh or 2h is the only thing to get Qd
		self:Debug("No Items Currently Equipped")		
		if self.BestTwoHand.itemid and self.BestMainHand.itemid and self.BestSecondaryHand.itemid then -- we have all choices
			local score = ItemScore:GetItemScoreWithTable(self.BestSecondaryHand.link) --Get OH score based on stats only

			if self.BestTwoHand.score < (self.BestMainHand.score + score) then --2h worse than 1h + oh combined
				if not self.PossibleUpgrades.MainHandSlot then self.PossibleUpgrades.MainHandSlot = {} end
				for i,k in pairs(self.BestMainHand) do self.PossibleUpgrades.MainHandSlot[i] = k end
				self:Debug("Making a MH Suggested 1")
				--Oh is already in pos. 
				--TODO try to equip these in one popup?
			else --2h is better
				self:Debug("Removing a possible OH 1")
				pos.SecondaryHandSlot = nil --This was in there but get rid of it.
			end

		elseif self.BestTwoHand.itemid and not(self.BestMainHand.itemid and self.BestSecondaryHand.itemid) then
			--We have a 2h, and either no 1h or no oh, either way don't try to equip an oh
			--Let the 2h and 1h fight it out for which one is equipped by themselves
			if self.BestSecondaryHand.itemid and self.BestSecondaryHand.score >  self.BestTwoHand.score then --a OH is better than a 1h
				self:Debug("Removing a possible 2h. A single OH is better")
				pos.MainHandSlot = nil --This could be in there but get rid of it.
			else
				self:Debug("Removing a possible OH 2")
				pos.SecondaryHandSlot = nil --This could be in there but get rid of it.
			end


		else
			--Just let it happen. No problems should arise. Since we won't have a 2h to mess with
		end
		
	elseif cur.MainHandSlot and cur.MainHandSlot.equipslot == "INVTYPE_2HWEAPON" then --We have a 2h equipped!
		self:Debug("2h Currently Equipped")	
		if self.BestMainHand.itemid and self.BestSecondaryHand.itemid then
			local score = ItemScore:GetItemScoreWithTable(self.BestSecondaryHand.link) --Get OH score based on stats only

			if (not self.BestTwoHand.itemid or self.BestTwoHand.score < (self.BestMainHand.score + score)) -- mh+oh is better than best 2h
			 and cur.MainHandSlot.score < (self.BestMainHand.score + score)  then --2h worse than 1h + oh combined
				if not self.PossibleUpgrades.MainHandSlot then self.PossibleUpgrades.MainHandSlot = {} end
				for i,k in pairs(self.BestMainHand) do self.PossibleUpgrades.MainHandSlot[i] = k end
				self:Debug("Making a MH Suggested 3")
				--Oh is already in pos. 
				--TODO try to equip these in one popup?				
			else --2h is better or the best 2h in our bags is better.
				self:Debug("Removing a possible OH 3")
				pos.SecondaryHandSlot = nil --This was in there but get rid of it.
			end
		else --we are missing a 1h or a 2h
			self:Debug("Removing a possible OH 4")
			pos.SecondaryHandSlot = nil
		end	
		
	elseif cur.MainHandSlot and cur.MainHandSlot.equipslot ~= "INVTYPE_2HWEAPON" then --we have a 1h equipped
		self:Debug("1h Currently Equipped")	
		local best1H = cur.MainHandSlot
		if self.BestMainHand.itemid and self.BestMainHand.score > cur.MainHandSlot.score then 
			best1H = self.BestMainHand --We have a MH that is better than our current
		end
		if cur.SecondaryHandSlot and self.BestTwoHand.itemid then --we have a 2h possible, and already have a mh + oh equipped
			local link = cur.SecondaryHandSlot.link
			if self.BestSecondaryHand.itemid and self.BestSecondaryHand.score > cur.SecondaryHandSlot.score then 
				link = self.BestSecondaryHand.link --We have a OH that is better than our current
			end
			
			local score = ItemScore:GetItemScoreWithTable(link) --Get OH score based on stats only

			if (best1H.score + score) < self.BestTwoHand.score then --2h better than the two equipped
				if not self.PossibleUpgrades.MainHandSlot then self.PossibleUpgrades.MainHandSlot = {} end
				for i,k in pairs(self.BestTwoHand) do self.PossibleUpgrades.MainHandSlot[i] = k end --This is likely already there. But make sure
				self:Debug("Removing a possible OH and equipping a 2h")
				pos.SecondaryHandSlot = nil --This was in there but get rid of it.
				--TODO try to remove mh+oh in one popup?
			elseif best1H.itemid == self.BestMainHand.itemid then
				self:Debug("There is a better MH in the bags that we will equip.")
			else --current combo is better
				self:Debug("Removing a Two Hander suggestion 1")
				pos.MainHandSlot = nil --2h may be better than 1h, but not with the OH combined
			end

		elseif self.BestSecondaryHand.itemid and self.BestTwoHand.itemid then --have an OH and a 2h we could equip, but no oh atm
			local score = ItemScore:GetItemScoreWithTable(self.BestSecondaryHand.link) --Get OH score based on stats only

			if (best1H.score + score) < self.BestTwoHand.score then --2h better than the MH + possible OH
				--2h is already in pos.upgrade
				self:Debug("Removing a possible OH 5")
				pos.SecondaryHandSlot = nil --This was in there but get rid of it.
			elseif best1H.itemid == self.BestMainHand.itemid then
				self:Debug("There is a better MH in the bags that we will equip.")
			else --- 1h + oh combo is better
				self:Debug("Removing a Two Hander suggestion 2")
				pos.MainHandSlot = nil --2h may be better than 1h, but not with the OH combined
			end
		else -- we either don't have a oh or don't have a 2h... so let it happen

		end

	elseif not cur.MainHandSlot and cur.SecondaryHandSlot then --Have a OH but no main hand... WHYYYYY
		local bestOH = cur.SecondaryHandSlot
		if self.BestSecondaryHand.itemid and self.BestSecondaryHand.score > cur.SecondaryHandSlot.score then 
			bestOH = self.BestSecondaryHand --We have a OH that is better than our current
		end
			
		local score = ItemScore:GetItemScoreWithTable(bestOH.link) --Get OH score based on stats only

		if self.BestTwoHand.itemid and self.BestMainHand.itemid then -- 1h and 2h to pick from
			if self.BestTwoHand.score < (self.BestMainHand.score + score) then --2h worse than 1h + oh combined
				if not self.PossibleUpgrades.MainHandSlot then self.PossibleUpgrades.MainHandSlot = {} end
				for i,k in pairs(self.BestMainHand) do self.PossibleUpgrades.MainHandSlot[i] = k end
				self:Debug("Suggesting a MH over a 2h because of a OH")
				--1h is not going to be equipped instead of the 2h fo sho
			else --2h is better
				self:Debug("Removing a possible OH 6")
				pos.SecondaryHandSlot = nil --This may have been there
				--TODO Make it clear we are equipping the 2h inplace of the OH
			end

		elseif self.BestTwoHand.itemid and not self.BestMainHand.itemid then --no 1h but we have a 2h
			if self.BestTwoHand.score > bestOH.score then
				pos.SecondaryHandSlot = nil --This could be in there but get rid of it.
				--TODO Make it clear we are equipping the 2h inplace of the OH
			else --lawl the OH is better than the 2h
				self:Debug("A OH is better than a 2h.")
				pos.MainHandSlot = nil
			end
		else
			--Just let it happen. No problems should arise. Since no 2h is available
		end

	end
end

function AutoEquip:CompareItems(item)
	self:Debug(("Testing %s scored: %d"):format(item.link,ItemScore:GetItemScore(item.itemid,nil,nil,link)))
	
	local curritem1,curritem2 = self.CurrentGear[item.slot1],self.CurrentGear[item.slot2]

	local function newPossUpgrade(newitem,slot)
		if not self.PossibleUpgrades[slot] then --Found an item to equip
			self.PossibleUpgrades[slot] = {}
			for i,k in pairs(newitem) do self.PossibleUpgrades[slot][i] = k end --To get around tables passing by reference... Any suggestions? ~Errc
		elseif item.score >= self.PossibleUpgrades[slot].score then --Found a better one, or equal. Have two of the same trinket that are both better.
			local olditem = {}
			local newTestSlot = nil
			for i,k in pairs(self.PossibleUpgrades[slot]) do olditem[i] = k end

			--Before we replace it, make sure the item we are replacing isn't exclusive to that slot and
			--That by replacing it we are not removing the best two possible items.
			--This weapon might be better, but putting it in 2nd best slot is most ideal

			if slot == "MainHandSlot" and 
			  olditem.slot1 == "MainHandSlot" and 
			  not olditem.slot2 and 	--Trying to equip a MH weapon and replacing a MH only weapon.
			  newitem.slot2 and newitem.slot2 == "SecondaryHandSlot" and -- We can put this weapon in the OH
			  self.CurrentGear["SecondaryHandSlot"].score < newitem.score and --Current item in OH is worse.
			  self.PossibleUpgrades["SecondaryHandSlot"].score < newitem.score then -- Maybe we already found an item to replace the OH
				for i,k in pairs(newitem) do olditem[i] = k end --We don't want to replace this MH yet. It might be the 2nd best item
			elseif slot == "SecondaryHandSlot" and 
			  olditem.slot1 == "SecondaryHandSlot" and 
			  not olditem.slot2 and --Trying to equip a OH weapon and replacing a OH only weapon.
			  newitem.slot1 == "MainHandSlot" and -- We can put this weapon in the MH
			  self.CurrentGear["MainHandSlot"].score < newitem.score and --Current item in MH is worse.
			  self.PossibleUpgrades["MainHandSlot"].score < newitem.score then -- Maybe we already found an item to replace the MH
				for i,k in pairs(newitem) do olditem[i] = k end --We don't want to replace this OH yet. It might be the 2nd best item
			else -- Not one of the crazy cases, do the normal thing.
				for i,k in pairs(newitem) do self.PossibleUpgrades[slot][i] = k end 
			end
			

			--TODO Unique Trinket/Fingers?

			--What this is doing is one a item has been replaced, in the slots with two options
			--test the other slot to see if we can put the item we just replaced in the other slot.
			if slot=="Trinket0Slot" then newTestSlot = "Trinket1Slot"
			elseif slot=="Trinket1Slot" then newTestSlot = "Trinket0Slot"
			elseif slot=="Finger0Slot" then newTestSlot = "Finger1Slot"
			elseif slot=="Finger1Slot" then newTestSlot = "Finger0Slot"
			--Fingers and Trinkets are easy
			
			--Weapons are a PITA
			elseif slot=="MainHandSlot" and olditem.slot2 == "SecondaryHandSlot" then newTestSlot = "SecondaryHandSlot"
			elseif slot=="SecondaryHandSlot" and olditem.slot1 == "MainHandSlot" then newTestSlot = "MainHandSlot"
			--Don't try to put these items in a slot that they won't fit in. Staff in OH on a druid...
			--
			end

			if newTestSlot then
				olditem.slot1 = newTestSlot olditem.slot2 = nil -- Only want to try to put it in a slot we pick
				self:CompareItems(olditem)
			end

		else --Another item is already better. 
		end
	end
	

	--Find the best weapon for each slot to test for combinations.

	if not self.BestMainHand then self.BestMainHand = {} end
	if not self.BestSecondaryHand then self.BestSecondaryHand = {} end
	if not self.BestTwoHand then self.BestTwoHand = {} end

	if item.slot1=="MainHandSlot" then --These are used to determine if a MH/OH combo is better than a 2H combo
		if item.equipslot ~= "INVTYPE_2HWEAPON" then --It is a 1h			
			if not self.BestMainHand.score or self.BestMainHand.score < item.score then
				for i,k in pairs(item) do  self.BestMainHand[i] = k end
			end
		else --We need two hands
			if not self.BestTwoHand.score or self.BestTwoHand.score < item.score then
				for i,k in pairs(item) do  self.BestTwoHand[i] = k end
			end
		end
	elseif item.slot1=="SecondaryHandSlot" and (item.equipslot == "INVTYPE_HOLDABLE" or item.equipslot == "INVTYPE_SHIELD") then	
		if not self.BestSecondaryHand.score or self.BestSecondaryHand.score < item.score then
			for i,k in pairs(item) do  self.BestSecondaryHand[i] = k end
		end	
	end

	if not curritem1 then --Main slot for this item is empty. Put it there.
		newPossUpgrade(item,item.slot1)
	elseif item.slot2 and not curritem2 then -- looking at a fing/trink and no item is in the 2nd slot. TODO Weapon?
		newPossUpgrade(item,item.slot2)
	elseif curritem1 then --We have a item in the slot currently,
		self:Debug(("Current gear "..curritem1.link.." scored: %d"):format(curritem1.score))
		if curritem2 then self:Debug(("Current gear #2 "..curritem2.link.." scored: %d"):format(curritem2.score)) end
		
		if curritem2 and item.score > curritem2.score and curritem2.score < curritem1.score then --Have a 2nd item and it is a bigger upgrade than slot1
			newPossUpgrade(item,item.slot2)
			return --Don't want to try to equip this in slot1 too
		end

		if item.score > curritem1.score then newPossUpgrade(item,item.slot1) return end -- Only if new item is better!
		--self:SetBadUpgrade(item.itemid,item.link) --We got here, means this item is a valid item but sucks. Don't look at it again.
		--Uncomment ^ if we want to store more items and not test as many.
	end
end

--Queue junk
function AutoEquip:SetQueue()
	if not self.ItemQueue then self.ItemQueue= {} else wipe(self.ItemQueue) end --wipe this incase something is left over.

	if self.PossibleUpgrades.MainHandSlot then --Weapons go on first
		self.PossibleUpgrades.MainHandSlot.slot = "MainHandSlot"
		self:QueuePush(self.PossibleUpgrades.MainHandSlot)
	end

	for t,k in pairs(self.PossibleUpgrades) do
		if t ~= "MainHandSlot" then --This is put on first, skip it now
			k.slot = t -- want to save the slot into the table
			self:QueuePush(k)
		end
	end
end

function AutoEquip:QueuePop()
	if not self.ItemQueue then return end
	if #self.ItemQueue == 0 then self:Debug("Queue is empty") return nil end -- It would do this automatically but why not make sure
	self:Debug("Popping "..self.ItemQueue[1].link)
	return tremove(self.ItemQueue,1) --returns the item popped and removes it.
end

function AutoEquip:QueuePush(item)
	if not self.ItemQueue then self.ItemQueue= {} end

	local clone = {}
	for i,k in pairs(item) do clone[i] = k end --To make sure we don't get into trouble with references

	function clone:tostring()
		local ret = ("Slot = %s , Link = %s"):format(self.slot,self.link)
		return ret
	end

	--TODO Pop MainhandSlot off first. It is put into queue first, but if they hit esc or go into combat with it, it won't be first
	self:Debug(clone.link.." pushed into Queue")
	tinsert(self.ItemQueue,clone)
end

function AutoEquip:TryToEquipItem()
	if not self.ItemQueue or not ZGV.db.profile.autogear then return end --Should never get this far without autogear on but extra check
	--TODO Handle Config/Tutorial differently?
	if ZGV.Config.Running or ZGV.Tutorial.Running then return end -- If config or Tutorial is running then stop

	if ZGV:IsPlayerInCombat() then self.call_after_combat = function() self:TryToEquipItem() end return end

	local item = self:QueuePop() -- The first item we want to equip
	if not item then return end --No item in queue? We are done because we don't have anything to display

	if UnitLevel("player") >= 10 and not GetSpecialization() then --Found an item but saying no because we don't have a spec.
		if not self.SpecPopup then self.SpecPopup = ZGV.Popup:CreatePopup() end
		self.SpecPopup:SetText(L['itemscore_ae_nospec'])
		
		if not self.SpecPopup.time or GetTime() - self.SpecPopup.time > 3600 then
			self.SpecPopup:Show()
			self.SpecPopup.time = GetTime()
		end
		self:Debug("Get a spec!")
		return
	end

	self:EquipDisplay(item)
end

function AutoEquip:EquipDisplay(item)
	--TODO Something if the Item is BOE

	if ZGV.db.profile.autogearframe then
		--Display a frame with the correct info
		self:ShowPopup(item)
	else
		local str = L['itemscore_ae_equip']..item.link
		if self.CurrentGear[item.slot] then str = str..L['itemscore_ae_over'].. self.CurrentGear[item.slot].link end
		str = str.."." --add a period :D
		--just equip it
		ZGV:Print(str)
		self:Equip(item)
	end
end

function AutoEquip:CreatePopup()
	local CHAIN = ZGV.ChainCall
	self.Popup = ZGV.Popup:CreatePopup("stealth") --Get The basic popup, then butcher it...
	local F = self.Popup

	local function SkinData(property)
		local r=ZGV.Skins.default.styles.stealth[property] or ZGV.Skins.default.styles.stealth.skin.defaultstyle[property]
		if r then
			if type(r)=="function" then -- if it's a function, call it.
				return r(self)
			else -- a property then
				return r
			end
		else
			--error("Unknown property requested: "..propertyname)
		end
	end

	local function showTooltip(self,linkData) GameTooltip:SetOwner(self,"ANCHOR_BOTTOMLEFT") GameTooltip:SetHyperlink(linkData) GameTooltip:Show() end

	local function hideTooltip() GameTooltip:Hide() end

	F:SetWidth(300) -- Make it bigger!
	F.logo:Hide() --No logo
	F.text:SetPoint(F.logo:GetPoint(1)) --Move the text to the top

	F.frame = CHAIN(CreateFrame("Frame",nil,F))
		:SetBackdrop(SkinData("Backdrop")) :SetBackdropColor(0.15,0.15,0.15,1)
		:SetPoint("TOP",F.text,"BOTTOM",0,-5) :SetPoint("BOTTOMRIGHT",F,"BOTTOMRIGHT",0,0) :SetPoint("BOTTOMLEFT",F,"BOTTOMLEFT",0,0)
		:EnableMouse(true) :RegisterForDrag("LeftButton")
		:SetScript("OnDragStart",function(self) self:GetParent():StartMoving() end) :SetScript("OnDragStop",function(self) self:GetParent():StopMovingOrSizing() end)
	.__END

	F.edit1=CHAIN(CreateFrame("EditBox",nil,F.frame))
		:SetHeight(12) :SetFont(FONT,12) :SetPoint("TOP",0,-5) 
		:SetHyperlinksEnabled(true) :Disable() :SetJustifyH("CENTER")
		:SetCursorPosition(0)
		:SetWidth(F.frame:GetWidth()-15) -- -15 for the gap on each side 
		:SetScript("OnHyperlinkEnter", showTooltip) :SetScript("OnHyperlinkLeave", hideTooltip)
		:SetWidth(F:GetWidth()-15)
	.__END

	F.text1=CHAIN(F.frame:CreateFontString(nil,"ARTWORK"))
		:SetPoint("TOP",F.edit1,"BOTTOM",0,-3)
		:SetFont(FONT,11) :SetJustifyH("CENTER")
		:SetText(L['itemscore_ae_with'])
	.__END

	F.tex = CHAIN(F.frame:CreateTexture()) :SetPoint("TOP",F.text1,"BOTTOM",0,-3) :SetSize(35,35).__END

	F.edit=CHAIN(CreateFrame("EditBox",nil,F.frame))
		:SetHeight(12) :SetFont(FONT,12) 
		:SetPoint("TOP",F.tex,"BOTTOM",0,-3) 
		--:SetPoint("TOP",F.text1,"BOTTOM",0,-3)
		:SetHyperlinksEnabled(true) :Disable() :SetJustifyH("CENTER")
		:SetCursorPosition(0)
		:SetWidth(F.frame:GetWidth()-15) -- -15 for the gap on each side 
		:SetScript("OnHyperlinkEnter", showTooltip) :SetScript("OnHyperlinkLeave", hideTooltip)
		:SetWidth(F:GetWidth()-15)
	.__END

	F.stattext=CHAIN(F.frame:CreateFontString(nil,"ARTWORK"))
		:SetPoint("TOP",F.edit,"BOTTOM",0,-3)
		:SetWidth(F.frame:GetWidth()-15) :SetJustifyH("CENTER")
		:SetFont(FONT,11)
	.__END
	
	F.AcceptFunc = function(self) self.manuelvisible = nil AutoEquip:Equip(self.item) end --equip it!
	F.DeclineFunc = function(self) 
		self.manuelvisible = nil 
		AutoEquip:SetBadUpgrade(self.item.itemid,self.item.link) 
		self.itemdeclined = true end --Dont suggest this one again
	F.EscapeFunc = function(self) if self.manuelvisible then self.manuelvisible=nil AutoEquip:QueuePush(self.item) end end --Add it back into the queue
	F.Settings = function(self) ZygorGuidesViewer:OpenOptions("conv") end
	F.AdjustSize = function(self) -- Need to change this because it is different for this kind of Popup
		local offsets = 10 + 10 + 5 + 15 --Logo and top + text and buttons + buttons and bottom + more room
		--offset = offset + self.tex:GetHeight()
		local ItemsAlwaysThere = self.tex:GetHeight() + self.text:GetStringHeight() + self.stattext:GetStringHeight() + self.edit:GetHeight() + self.acceptbutton:GetHeight()
		
		local ItemsSometimes = ((self.edit1:IsVisible() and self.edit1:GetHeight()) or 0) + ((self.text1:IsVisible() and self.text1:GetHeight()) or 0)
		
		self:SetHeight(offsets + ItemsAlwaysThere + ItemsSometimes)
	end

	F:SetScript("OnHide",function(self) if self.itemdeclined then self.itemdeclined = nil AutoEquip:TryToEquipItem() end end)

	F.acceptbutton:SetText(L['itemscore_ae_accept'])
	F.declinebutton:SetText(L['itemscore_ae_decline']) 
	
	F.acceptbutton:SetParent(F.frame)
	F.declinebutton:SetParent(F.frame)
	F.settings:SetParent(F.frame)
end

ITEM_MOD_ATTACK_POWER_SHORT = G["ATTACK_POWER_TOOLTIP"] --Blizzard forgot this one >.<
ITEM_MOD_HOLY_RESISTANCE_SHORT = G["RESISTANCE1_NAME"]
ITEM_MOD_FIRE_RESISTANCE_SHORT = G["RESISTANCE2_NAME"]
ITEM_MOD_NATURE_RESISTANCE_SHORT = G["RESISTANCE3_NAME"]
ITEM_MOD_FROST_RESISTANCE_SHORT = G["RESISTANCE4_NAME"]
ITEM_MOD_SHADOW_RESISTANCE_SHORT = G["RESISTANCE5_NAME"]
ITEM_MOD_ARCANE_RESISTANCE_SHORT = G["RESISTANCE6_NAME"]

function AutoEquip:ShowPopup(item)
	if not self.Popup then self:CreatePopup() end --Popup is saved in self.Popup
	local F = self.Popup F.manuelvisible = true
	F.item = item --TODO What do we do with two items?

	local function GetStatComparison(item)
		local stattable;
		local st1 = ""
		local GREEN = "|cff00ff00"
		local RED = "|cffff0000"

		local function round(num, idp)
			local mult = 10^(idp or 0)
			return math.floor(num * mult + 0.5) / mult
		end

		if self.CurrentGear[item.slot] then
			stattable = GetItemStatDelta(item.link,self.CurrentGear[item.slot].link) -- Returns a table with the differences.
		else
			stattable = GetItemStats(item.link)
		end


		--***NOTE*** I noticed that BoA items return very strange stats at level 90. I am guessing that the function
		-- scales the item as if it was a level 90 BoA item, but it is only a level 80 still.
		--It seems to work correctly pre 80 though.

		for stat,statvalue in pairs(stattable) do --Stat is localized.. I think
			if statvalue > 0 then -- Green for item1, red for 2
				st1 = st1..GREEN.."+"..round(statvalue,1).." "..G[stat].."|r\n"
			elseif statvalue < 0 then --Green for item2, red for 1
				st1 = st1..RED.. round(statvalue, 1).." "..G[stat].."|r\n"
			else --statvalue = 0
			end
		end

		if st1 == "" then -- no stat difference so add item level difference.
			local value = (select(4,GetItemInfo(item.link)))
			if self.CurrentGear[item.slot] then
				value = value - (select(4,GetItemInfo(self.CurrentGear[item.slot].link)))
			end
			if value > 0 then
				st1 = st1..GREEN.."+"..round(value,1).." "..G["ITEM_UPGRADE_STAT_AVERAGE_ITEM_LEVEL"].."|r\n"
			elseif value < 0 then --Can this happen? I sure hope not.
				st1 = st1..RED.."-"..round(value,1).." "..G["ITEM_UPGRADE_STAT_AVERAGE_ITEM_LEVEL"].."|r\n"
			end
		end

		return st1
	end

	if self.CurrentGear[item.slot] then
		F.edit1:Show() F.text1:Show()
		F.edit1:SetText(self.CurrentGear[item.slot].link) F.edit1:SetCursorPosition(0)
		if F.edit1:GetNumLetters() < 4 then return end  --If like is "[]" then item is nor parsed so return and it will get fixed next time.
		F:SetText(L['zgname']..L['itemscore_ae_equip1'])
		F.edit:ClearAllPoints()
		--F.edit:SetPoint("TOP",F.text1,"BOTTOM",0,-3)
		F.edit:SetPoint("TOP",F.tex,"BOTTOM",0,-3)
		F.tex:ClearAllPoints()
		F.tex:SetPoint("TOP",F.text1,"BOTTOM",0,-3)
	else
		F.edit1:Hide() F.text1:Hide()
		F.tex:ClearAllPoints()
		F.tex:SetPoint("TOP",F.frame,"TOP",0,-5)
		F.edit:ClearAllPoints()
		--F.edit:SetPoint("TOP",F.frame,"TOP",0,-5)
		F.edit:SetPoint("TOP",F.tex,"BOTTOM",0,-3)
		F:SetText(L['zgname']..L['itemscore_ae_equip2'])
	end

	F.tex:SetTexture(select(10,GetItemInfo(item.itemid)))
	F.edit:SetText(item.link) 	F.edit:SetCursorPosition(0) -- important for extra long links. Scroll over popup will still work.
	F.stattext:SetText(GetStatComparison(item))	
	F:Show()
	F:AdjustSize()
end

function AutoEquip:Equip(item)
	--TODO Something if the Item is BOE

	self:Debug(("Equipping %s , in %s"):format(item.link,item.slot))
	--if not ZGV.db.profile.autogearframe then self.BOETest = item end --This is the start. It is a fucking mess

	self.itemjustequipped = true

	if item.slot == "Trinket1Slot" 
	 or item.slot == "Finger1Slot"
	 or item.slot == "SecondaryHandSlot" then
		PickupContainerItem(item.bag,item.bagslot)

		local slot = item.slot
		if slot == "Finger1Slot" then slot = INVSLOT_FINGER2
		elseif slot == "Trinket1Slot" then slot = INVSLOT_TRINKET2
		elseif slot == "SecondaryHandSlot" then slot = INVSLOT_OFFHAND end

		EquipCursorItem(slot)
	else
		PickupContainerItem(item.bag,item.bagslot)
		AutoEquipCursorItem() --Do it this way rather than EquipItemByName to deal with equipping two of same item.
	end
end

function AutoEquip:SetupButton()
	local CHAIN = ZGV.ChainCall
	self.Button = CHAIN(CreateFrame("Button", "ZygorGearFinderAutoEquipButton", PaperDollFrame))
		:SetPoint("BOTTOMLEFT",PaperDollFrame,"BOTTOMLEFT",10,8) :SetSize(25,25)
		:SetNormalTexture(ZGV.DIR.."\\Skins\\guideicons-big")
		:SetScript("OnEnter",function(self) CHAIN(GameTooltip):SetOwner(self,"ANCHOR_RIGHT") :SetText(L['itemscore_ae_button']) :Show() end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
		:SetScript("OnClick",function() AutoEquip:ScanBags() end)
	.__END
	self.Button:GetNormalTexture():SetTexCoord(0,0.25,0.25,0.50)
end

function AutoEquip:Toggle() --Called at startup and when options are modified.
	if ZGV.db.profile.autogear then 
		if not self.Button then AutoEquip:SetupButton() end
		self.Button:Show()
	elseif self.Button then
		self.Button:Hide()
	end
end

function ItemScore:RegisterEvents()
	ItemScore.eventFrame=CreateFrame("Frame")
	local e=ItemScore.eventFrame
	--e:RegisterAllEvents()
	--e:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED")e:UnregisterEvent("CURSOR_UPDATE")e:UnregisterEvent("WORLD_MAP_UPDATE")
	--e:UnregisterEvent("UPDATE_MOUSEOVER_UNIT")
	
	--Auto Equip System
	e:RegisterEvent("BAG_UPDATE_DELAYED") --e:RegisterEvent("GET_ITEM_INFO_RECEIVED")
	e:RegisterEvent("PLAYER_ENTERING_WORLD")
	e:RegisterEvent("PLAYER_EQUIPMENT_CHANGED")
	e:RegisterEvent("ITEM_PUSH")
	e:RegisterEvent("PLAYERBANKSLOTS_CHANGED")
	e:RegisterEvent("PLAYER_AVG_ITEM_LEVEL_READY")
	e:RegisterEvent("PLAYER_LEVEL_UP") -- for dual wield updates
	e:RegisterEvent("ACTIVE_TALENT_GROUP_CHANGED")
	e:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED") --This is fired on reload and zone change
	e:RegisterEvent("PLAYER_REGEN_DISABLED")
	e:RegisterEvent("PLAYER_REGEN_ENABLED")
	
	e:RegisterEvent("USE_BIND_CONFIRM") --Which one?
	e:RegisterEvent("AUTOEQUIP_BIND_CONFIRM")
	--e:RegisterEvent("EQUIP_BIND_CONFIRM")

	--Quest Item System
	e:RegisterEvent("QUEST_FINISHED")
	e:RegisterEvent("QUEST_GREETING")
	e:RegisterEvent("QUEST_COMPLETE")
	e:RegisterEvent("QUEST_ITEM_UPDATE")
	
	e:SetScript("OnEvent",ItemScore.OnEvent)
end

--[[
	Some Event info. Gear is not ready on first Player Enter World. So rewrite it on PLAYER_AVG_ITEM_LEVEL_READY
	but, PLAYER_AVG_ITEM_LEVEL_READY is not fired on Reload and the info at PEW is good.
--]]

function ItemScore:OnEvent(event,...)
	local ae = AutoEquip
	ae:Debug(event,...)
	if ZGV.db.profile.autogear then
		if event == "PLAYER_ENTERING_WORLD" then
			ItemScore:SetDualWield()
			ItemScore:SetFilters()
			if not ae.CurrentEquipped then ae:FindCurrentEquipped() end
			-- ae:ScanBags() --NEVER DO THIS. Will cause issues.
		elseif event == "PLAYER_EQUIPMENT_CHANGED" or event == "PLAYER_AVG_ITEM_LEVEL_READY" then
			ae:FindCurrentEquipped()
		elseif event == "ITEM_PUSH" or --New Item from ground
		 event == "PLAYERBANKSLOTS_CHANGED" then --Get item from the bank
			--ae.newitemfound=true
		elseif event == "BAG_UPDATE_DELAYED" then
			--if ae.newitemfound then --This is used to make the system not be annoying. But I guess we want it to be annoying.
				 --ae.newitemfound=nil
				 --ae:ScanBags()
			if ae.itemjustequipped then
				ae.itemjustequipped = nil
				ae:TryToEquipItem()
			else 
				 ae:ScanBags()
			end
		elseif event == "ACTIVE_TALENT_GROUP_CHANGED"  --Changing dual specs
		 or event == "PLAYER_SPECIALIZATION_CHANGED" then --Ran on zone change, and when you learn a talent... Ran all the time. DUMB
			ItemScore:SetDualWield()
			ItemScore:SetFilters()
			ae:FindCurrentEquipped()
			--if ae.ItemQueue and #ae.ItemQueue > 0 then
				if ae.Popup then ae.Popup:Close() end
				ae:ScanBags() --This will clear everything and make sure we are not trying to equip bad items.
			--end
		elseif event == "PLAYER_LEVEL_UP" then
			ItemScore:SetDualWield() --Update this incase they learn a spell when they level up.
		elseif event == "PLAYER_REGEN_DISABLED" then --Combat entered
			if ae.Popup and ae.Popup:IsVisible() then
				ae.Popup:EscapeFunc()	ae.Popup:Close() --Pushs item back onto queue and hide the popup		
				ae.call_after_combat = function() ae:TryToEquipItem() end
			end
		elseif event == "PLAYER_REGEN_ENABLED" then --Combat exited
			if ae.call_after_combat then ae.call_after_combat() ae.call_after_combat=nil end
		elseif event == "USE_BIND_CONFIRM" then --BOE Item trying to be equipped
			--
		end
	end

	if ZGV.db.profile.questitemselector then
		if event == "QUEST_COMPLETE" then --Quest item suggestion system
			ItemScore:RemoveGlow() --Do this to make sure it is hidden. 
			ItemScore:GetQuestReward()
		elseif event == "QUEST_ITEM_UPDATE" and not ItemScore.QuestItemsReady then
			ItemScore:GetQuestReward() --This could be throttled... Doing an extra check in GQR is cheaper than OnUpdate all the time.
		elseif event == "QUEST_FINISHED" or event == "QUEST_GREETING" then --Sometimes doesn't hide on FINISHED.
			ItemScore.QuestItemsReady = nil --next quest
			ItemScore:RemoveGlow()
		end
	end
end

-- Get item suggestions FROM CACHE.
-- Results: SC_NOTYET when the query has just been, or already was, scheduled for caching.
-- Proper results if it's in the cache already.
-- The cache will schedule re-requesting if needed.
function ItemScore:GetBestItems(invslot,count,verbose)
	invslot=invslot or "INVTYPE_WEAPON"
	count=count or 10

	if not self.cached then  self:CacheItems("fast")  end

	-- If we have a match in the cache, use that.
	results = self.ResultsCache:Get(invslot)
	if results==SC_NOTYET then return SC_NOTYET -- just/already scheduled
	elseif results then return results
	else error("WTF? No results, no cache, no nothing?") end

	--return ItemScore:GetBestItems_NoCache(invslot,count,playerclass,playerspec,playerlevel,verbose)
end

-- REMEMBER: invslot is USEFUL slot - for armor this doesn't matter, but for weapons it does.
-- Use INVSLOT_2HWEAPON to find two-handers (even if there's no two-hand "slot")
-- Use INVSLOT_WEAPONMAINHAND to find one-handers (any-hand or main-hand)
-- Use INVSLOT_WEAPONOFFHAND to find off-handers (any-hand or off-hand)
-- Use INVSLOT_RANGED to find off-handers (any-hand or off-hand)
-- Use INVSLOT_HOLDABLE, INVSLOT_SHIELD

function ItemScore:GetBestItems_NoCache(invslot,count,verbose,item_id_order)
	local results

	results={}
	local notyet=false
	for n,itemid in ipairs(itembase[invslot]) do
		local score,code,desc = self:GetItemScore(itemid, invslot)  -- not verbose, there'll be time for that

		--self:Debug(("Item score: |cff00ffff%d %s|r  Score: %s%s %s %s  (Spec: %s)"):format(itemid,GetItemInfo(itemid) or "?",(score>0 and "" or "|cffff8888"),score or "?", code or "", desc or "", playerclass..playerspec))

		-- If it's not cached, then keep trying all items (so that they get cached), but prepare to fail.
		if code==SC_NOTYET then  notyet=true  end
		if code==SC_NORULES then  return SC_NORULES,desc end

		if score>=0 or verbose then
			tinsert (results,{item=itemid,score=score,desc=desc,code=code})
		end
	end

	if item_id_order then  --debugging only!!
		table.sort(results,function(a,b)  return a.item<b.item  end)
	else
		table.sort(results,function(a,b)  return a.score>b.score  end)
	end

	if not verbose and #results>count then  while #results>count do tremove(results) end  end

	-- If some items were not cached, fail now.
	if notyet then return SC_NOTYET end

	if ZGV.db.profile.debug and verbose then
		self:Debug("Spec: ".. self.playerclass.. self.playerspec.."  Slot: "..invslot)
		for k,item in ipairs(results) do
			local name,link,quality,iLevel, reqLevel, class, subclass, maxStack, equipSlot, texture, vendorPrice = GetItemInfo(item.item)
			if ZGV.db.profile.debug then
				if item_id_order then
					self:Debug(("|cffbbff00##%d. %s|r  Score: %s%.1f %s %s"):format(item.item,link,(item.score>0 and "" or "|cffff8888"),item.score or "-666", item.code or "", item.desc or ""))
				else
					self:Debug(("|cffbbff00#%d. %s|r##%d  Score: %s%.1f %s %s"):format(k,link,item.item,(item.score>0 and "" or "|cffff8888"),item.score or "-666", item.code or "", item.desc or ""))
				end
			end
			if item.score>0 then self:GetItemScore(item.item,invslot,verbose) end --just to print debug
		end
		self:Debug("END OF Spec: ".. self.playerclass.. self.playerspec.."  Slot: "..invslot)
	end

	return results
end

--[[
function ItemScore:ParseGuides()
	assert(false,"THIS IS DEPRECATED.")
	IS:Debug("Parsing Gear Guides...")
	for i,guide in ipairs(ZGV.registeredguides) do
		if guide.title:match("^Gear Guide") then
			guide:Parse(true)
			if guide.items then
				IS:Debug("Parsing gear from %d %s",guide.num,guide.title)
				for id,step in pairs(guide.items) do self.items_in_guides[id]=guide end
			else
				IS:Debug("Guide, y u no have gear!? %d %s",guide.num,guide.title)
			end
		end
	end
end
--]]

function ItemScore:ParseItemDatabase()
	if not self.Items then return end
	for dungeon,data in pairs(self.Items) do
		for i,itemset in ipairs(data) do
			for j,item in ipairs(itemset) do
				local boss = itemset.boss
				local quest = itemset.quest
				self.items_in_guides[item]={dungeon=data.dungeon,dungeonmap=data.dungeonmap,heroic=data.heroic,boss=boss,quest=quest}

				-- hack to update dungeons
				if data.dungeon and data.dungeonmap then
					local dungeon = ZGV.Dungeons[data.dungeon]
					if dungeon then
						dungeon.map=data.dungeonmap
						dungeon.floor=data.floor
					end
				end
			end
		end
	end
end

--[[
function ItemScore:ImproviseItems(from,to)
	local items = { 869, 9392, 65947, 1265, 18310, 9401, 13034, 9424, 62201, 33270, 33271 }
	for i,id in ipairs(items) do self.items_in_guides[id]={dungeon=4,boss=1} end
	for id=from,to do
		self.items_in_guides[id]={dungeon=4,boss=1}
	end
end

-- NOT adding current gear anymore; just compare upon results, that should be fine.
function ItemScore:AddCurrentGear()
	for i=1,25 do
		local id = GetInventoryItemID("player",i)
		if id and not self.items_in_guides[id] then
			self:AddItem(id)
			self.items_in_guides[id]={own=1}
		end
	end
end
--]]

--[[
	So here's how we handle item caching.
	Running through ALL the items concerned, we check if there's any unknowns.
	Each known item is removed from the queue (Lua handles nilling removals safely).
	Each unknown has already generated a cache request within the game, so we just total those, per run.
	If the number of cache requests exceeds a limit, we abort so as not to generate too many requests. The game should have that safe, but might not. Typical.
	The caching is restarted in the next frame, and again if an item is still nil - then it's still being cached, we count it as if it generated a new request
	- so that if a subsequent run gives the very same nils as before (typical if results didn't arrive yet), we don't send any new requests till those are done.

	In a nutshell: Check all items, abort after <limit> blanks, retry, never exceed <limit> blanks in one run.
--]]


ItemScore.cache_cached=0
ItemScore.cache_total=0
ItemScore.cache_done=0

--  - Threading removed here. Look in revisions <3769.

local request_limit = 500  -- starting low (500), set to 5000 to speed up at the cost of brief lockup
local this_turn_limit = 500

--local requests_pending = 0
local cache_queue = {}
ItemScore.cache_queue = cache_queue
local waited=0

local all_fine_until = 0


function ItemScore:AddItem(id,item)
	if not item then item = GetItemStatsWithTooltip(id) end
	if not item then return end
	for i,iid in ipairs(itembase.all) do if iid==id then return end end  -- already known
	local slot = item.info.equipslot

	tinsert(itembase.all,id)

	if slot:find("WEAPON") then
		tinsert(itembase.weapon,id)
	else
		tinsert(itembase.armor,id)
	end

	-- Most items (armor and jewelry) are identified by their slot. That works for them, but not for weapons.
	-- Weapons are a goddamn nightmare.

	if slot=="INVTYPE_ROBE" then tinsert(itembase["INVTYPE_CHEST"],id)
	elseif slot=="INVTYPE_RANGEDRIGHT" then tinsert(itembase["INVTYPE_RANGED"],id)
	elseif slot=="INVTYPE_WEAPON" then tinsert(itembase["INVTYPE_WEAPONMAINHAND"],id)  tinsert(itembase["INVTYPE_WEAPONOFFHAND"],id)
	else tinsert(itembase[slot],id)
	end
end

local function ItemScoreFrameCacheWorker()
	local self=ItemScore

	--[[
	if requests_pending>=request_limit then
		IS:Debug("Awaiting for request results.");
		waited=waited+1
		if waited>=20 then requests_pending=0 end  -- oh hell, let's spam it.
		return false
	end
	-- Let's spam it totally.
	--]]

	waited=0

	local requests_pending = 0
	local this_turn = 0

	if next(cache_queue) then
		for id,i in pairs(cache_queue) do while(1) do
			local item = GetItemStatsWithTooltip(id)

			if item then
				-- it's cached already? cool.
				cache_queue[id]=nil
				self.cache_done = self.cache_done + 1
				--IS:Debug("Cached %d %s",id,name)

				if not item.info.equipslot then  ItemCache[id]=nil  break  end
				-- trash non-equipment

				self:AddItem(id,item)
			else
				self.cache_cached = self.cache_cached + 1
				requests_pending = requests_pending + 1
				--IS:Debug("Requested %d",id)

				-- Too many items returned nils? Stop, hammertime.
				if requests_pending>=request_limit then return false,ItemScore.cache_done,ItemScore.cache_total,requests_pending end
			end

			this_turn = this_turn + 1
			if this_turn>this_turn_limit then return false,ItemScore.cache_done,ItemScore.cache_total,requests_pending end  -- Don't lag the game, caching or not.

			break
		end end
	end

	if not ItemScore.cached then
		if self.cache_done==self.cache_total then
			return true,ItemScore.cache_done,ItemScore.cache_total,requests_pending
		elseif requests_pending>0 then
			--IS:Debug("Caching turn done, but requests pending...")
			return false,ItemScore.cache_done,ItemScore.cache_total,requests_pending
		else
			--IS:Debug("WTF? Caching done but not all cached?")
			return true,ItemScore.cache_done,ItemScore.cache_total,requests_pending
		end
	end
end

local olddone=0
local samedone=0

local function ItemScoreFrameOnUpdate()
	if not ItemScore.cached and ItemScore.caching then
		local complete,done,total,pending = ItemScoreFrameCacheWorker()
		if ZGV.db.profile.debug_itemscore then IS:Debug("ItemScore caching: cached %d/%d, requested %d, pending: %d  (looped? %d)",done or -1,total or -1,ItemScore.cache_cached or -1,pending or -1,samedone) end
		if olddone==done then samedone=samedone+1 else samedone=0 end   olddone=done
		if samedone>100 then complete=true IS:Debug("FAILED TO CACHE, LOOPED.") end
		if complete then
			IS:Debug("ItemScore caching DONE.")
			ItemScore.cached = true
			ItemScore.caching = false
			--ItemScore.Frame:SetScript("OnUpdate",nil)
		end
	elseif not ItemScore.ResultsCache.cache_is_clean then
		ItemScore.ResultsCache:CacheOne()
	end
	if ItemScore.new_results_are_available then
		ItemScore:UpdateCharacterFramePane()
	end
end

--[[
local function ItemScoreFrameOnEvent(frame,event)
	if event=="GET_ITEM_INFO_RECEIVED" and not ItemScore.cached then
		requests_pending = max(0,requests_pending - 1)
		IS:Debug("Item info received, now requests pending: %d",requests_pending)
	end
end
--]]

function ItemScore:CacheItems(how)
	if how=="fast" then request_limit=5000 end

	if self.cached or self.caching or self.thread then return end
	--self:ParseGuides()
	self:ParseItemDatabase()
	--self.thread = coroutine.create(self.Threaded_CacheItems)

	self.caching = true

	-- prepare for caching
	ItemScore.cache_total = 0
	for id,guide in pairs(self.items_in_guides) do
		cache_queue[id]=1
		ItemScore.cache_total = ItemScore.cache_total + 1
	end
	IS:Debug("%d items set for caching",ItemScore.cache_total)

	--self.Frame:SetScript("OnEvent",ItemScoreFrameOnEvent)
	--self.Frame:RegisterEvent("GET_ITEM_INFO_RECEIVED")
end


-- Since it takes a while to analyze even one slot, we'll have to cache results.
ItemScore.ResultsCache = { results={}, cache_is_clean=true }

function ItemScore.ResultsCache:Get(invslot,nocache)
	local index = ("%s%d-%d %s"):format(ItemScore.playerclass,ItemScore.playerspec,ItemScore.playerlevel,invslot)
	local result = self.results[index]

	if nocache then result=nil end

	-- if results are ready, just return them...
	if result and type(result)=="table" then
		return result.result or result.code or SC_NOTYET
	end  -- could be results, could be SC_NOTYET in code, could be still queued.

	ItemScore:Debug("Requesting cache of "..index)

	-- ... but if no results are available, queue them up.
	self.results[index]={desc="queued"}
	self.cache_is_clean=false
	return SC_NOTYET
end

function ItemScore.ResultsCache:CacheOne()
	if self.cache_is_clean then return end
	for index,v in pairs(self.results) do
		if v.desc=="queued" or v.desc==SC_NOTYET then
			ItemScore:Debug("Caching queued "..index)
			local class,spec,level,slot = index:match("^(.-)(%d+)%-(%d+) (.+)$")
			ItemScore:SetFilters(class,tonumber(spec),tonumber(level))
			local result,desc = ItemScore:GetBestItems_NoCache(slot,10)
			local code
			if type(result)=="number" then result,code = nil,result end
			self.results[index] = {result=result,desc=desc,code=code}
			ItemScore.new_results_are_available = not not result
			if result then ItemScore:Debug("Notifying display of new results") end
			ItemScore:Debug("Cache is not yet clean")
			return true
		end
	end
	self.cache_is_clean=true
	ItemScore:Debug("Cache is now clean.")
end

function ItemScore.ResultsCache:Clear(key)
end



----------------- CHARACTER FRAME POPUPS

local function ZygorGearFinderButton_OnClick()
end

ItemScore.ItemSlots = {
	"INVTYPE_HEAD",
	"INVTYPE_NECK",
	"INVTYPE_SHOULDER",
	"INVTYPE_CLOAK",
	"INVTYPE_CHEST",
	"INVTYPE_WRIST",
	"INVTYPE_HAND",
	"INVTYPE_WAIST",
	"INVTYPE_LEGS",
	"INVTYPE_FEET",
	"INVTYPE_FINGER",
	"INVTYPE_TRINKET",
	"INVTYPE_2HWEAPON",
	"INVTYPE_WEAPONMAINHAND",
	"INVTYPE_WEAPONOFFHAND",
	"INVTYPE_SHIELD",
	"INVTYPE_HOLDABLE",
	"INVTYPE_RANGED",
}

function ItemScore:ItemSlotToInvSlot(itemslot)

end

function ItemScore:GetItemSlot(itemslot)
	if itemslot=="" or not itemslot then return end --empty or nothing then return
	itemslot = itemslot:gsub("^INVTYPE_","")
	itemslot = itemslot:sub(1,1) .. itemslot:sub(2):lower()

	local itemslot2

	if itemslot=="Hand" then itemslot="Hands"
	elseif itemslot == "Cloak" then itemslot = "Back"
	elseif itemslot == "Robe" then itemslot = "Chest" 
	elseif itemslot == "Shield" or itemslot == "Weaponoffhand" or itemslot == "Holdable" then itemslot = "SecondaryHand"
	elseif itemslot == "Weaponmainhand" or itemslot == "Rangedright" then itemslot="MainHand"
	elseif itemslot == "Weapon" or itemslot == "2hweapon" then itemslot = "MainHand" --itemslot2 = "SecondaryHand" --Can equip these in main or offhand. Check for this where we call the function
	elseif itemslot == "Trinket" then itemslot = "Trinket0" itemslot2 = "Trinket1"
	elseif itemslot == "Finger" then itemslot = "Finger0" itemslot2 = "Finger1"
	elseif itemslot == "Ranged" then itemslot="MainHand"  --Ranged might be obsolete, just in for safety
	else
		--Relics, thrown are old types. These can not be used anymore and any case of them should be reported
		self:Debug(itemslot.." is available and we tried to test for it. If we can actually use it then do something with it.")
	end

	if itemslot then itemslot=itemslot.."Slot" end
	if itemslot2 then itemslot2=itemslot2.."Slot" end

	return itemslot,itemslot2
end

function ItemScore:GetItemInSlot(itemslot)
	local itemslot1,itemslot2 = ItemScore:GetItemSlot(itemslot)

	if itemslot1 then slot1 = GetInventorySlotInfo(itemslot1) end

	if itemslot2 then slot2 = GetInventorySlotInfo(itemslot2) end

	local id1,id2
	if slot1 then id1 = GetInventoryItemID("player",slot1) end
	if slot2 then id2 = GetInventoryItemID("player",slot2) end

	return id1,id2
end

local shiftkeydown,ctrlkeydown

local function SetUp_ZygorGearFinderFrame()
	local CHAIN = ZGV.ChainCall
	--[[
	frame.ZygorGearFinderButton = CreateFrame("BUTTON","ZGVCharacterGearFinderButton",frame,"UIPanelButtonTemplate")
	ZGV.ChainCall (frame.ZygorGearFinderButton) :SetSize(30,45) :SetPoint("TOPRIGHT",frame,"TOPRIGHT",-147,-22) :SetText("ZGF") :SetScript("OnClick",ZygorGearFinderButton_OnClick) :Show()
	--]]

	local frame = PaperDollFrame

	-- Sidebar tab button:
	--tinsert(PAPERDOLL_SIDEBARS,{name=L['Zygor Gear Finder'],frame="ZygorGearFinderFrame",icon=ZGV.DIR.."\\Skins\\zglogo",		texCoords = {0,1,0,0.25} })
	tinsert(PAPERDOLL_SIDEBARS,{name=L['Zygor Gear Finder'],frame="ZygorGearFinderFrame",icon=ZGV.DIR.."\\Skins\\guideicons-big",		texCoords = {0,0.25,0.75,1.0} })

	PaperDollSidebarTab4 = CreateFrame("BUTTON","ZGVCharacterGearFinderButton",PaperDollSidebarTabs,"PaperDollSidebarTabTemplate",4)
	--PaperDollSidebarTab4:SetPoint("RIGHT",PaperDollSidebarTab1,"LEFT",-4,0)
	PaperDollSidebarTab4:SetPoint("LEFT",PaperDollSidebarTab3,"RIGHT",4,0)
	PaperDollSidebarTab4:SetScript("OnLoad",nil)
	PaperDollSidebarTab4.Icon:SetSize(24,24)
	PaperDollSidebarTab4.Icon:SetPoint("BOTTOM",PaperDollSidebarTab4,"BOTTOM",0,2)
	PaperDollSidebarTab3:SetPoint("BOTTOMRIGHT",PaperDollSidebarTabs,"BOTTOMRIGHT",-60,0)
	frame.ZygorGearFinderButton = PaperDollSidebarTab4

	PaperDollSidebarTabs:SetWidth(168+30)

	ZygorGearFinderPopoutButton = CHAIN(CreateFrame("Button", "ZygorGearFinderPopoutButton", frame, nil))
		:SetPoint("TOPRIGHT",frame,"TOPRIGHT",-10,-32) :SetSize(25,25)
		:SetScript("OnClick",function() CharacterFrameExpandButton:Click() PaperDollSidebarTab4:Click() end)
		:SetNormalTexture(ZGV.DIR.."\\Skins\\guideicons-big")
		:SetScript("OnEnter",function(self) CHAIN(GameTooltip):SetOwner(self,"ANCHOR_RIGHT") :SetText("Zygor Gear Guides") :Show() end)
		:SetScript("OnLeave",function(self) GameTooltip:Hide() end)
		.__END
	ZygorGearFinderPopoutButton:GetNormalTexture():SetTexCoord(0,0.25,0.75,1.0)


	-- Sidebar contents:

	ZygorGearFinderFrame = CHAIN(CreateFrame("ScrollFrame","ZygorGearFinderFrame",frame,"UIPanelScrollFrameTemplate2"))
		:SetPoint("TOPLEFT",CharacterFrameInsetRight,"TOPLEFT",4,-4) :SetPoint("BOTTOMRIGHT",CharacterFrameInsetRight,"BOTTOMRIGHT",-27,2)
		:Hide()
		.__END

	ZygorGearFinderFrame.ScrollChild = CHAIN(CreateFrame("FRAME","ZygorGearFinderFrameScrollChild",ZygorGearFinderFrame))
		:SetSize(170,0)
		:SetPoint("TOPLEFT")
		.__END

	ZygorGearFinderFrame:SetScrollChild(ZygorGearFinderFrame.ScrollChild)

	--[[
	ZygorGearFinderFrame.scrollBar = CHAIN(CreateFrame("SLIDER","ZygorGearFinderFrameScrollBar",ZygorGearFinderFrame,"HybridScrollBarTemplate"))
		:SetPoint("TOPLEFT",ZygorGearFinderFrame,"TOPRIGHT",4,-13)
		:SetPoint("BOTTOMLEFT",ZygorGearFinderFrame,"BOTTOMRIGHT",4,14)
		:SetFrameLevel(CharacterFrameInsetRight:GetFrameLevel()+1)
		.__END
	ZygorGearFinderFrame.scrollBar.doNotHide=1
	--]]

	ZygorGearFinderFrame.Header = CHAIN(ZygorGearFinderFrame.ScrollChild:CreateFontString(nil,nil,"SystemFont_Shadow_Small"))
		:SetPoint("TOPLEFT",ZygorGearFinderFrame.ScrollChild,"TOPLEFT",0,-1) :SetPoint("RIGHT",ZygorGearFinderFrame.ScrollChild,"RIGHT",0,0)
		:SetJustifyH("CENTER") :SetJustifyV("TOP")
		:SetText(L['itemfinder_header'])
		:SetFont(FONT,12)
		:SetTextColor(1,0.8,0)
		.__END

	--[[
c	ZygorGearFinderFrame.RefreshButton = CHAIN(CreateFrame("BUTTON","ZygorGearFinderFrame_Refresh", ZygorGearFinderFrame.ScrollChild, "ZygorGuidesViewer_Default_Button"))
		:SetBackdrop({bgFile=nil,edgeFile=ZGV.DIR.."\\Skins\\Default\\midnight\\border-glow", tile = true, edgeSize=10, tileSize = 10, insets = { left = 10, right = 10, top = 10, bottom = 10 }})  :SetBackdropBorderColor(1,1,1,0)
		:SetSize(70,20)
		:SetPoint("TOP",ZygorGearFinderFrame.Header,"BOTTOM",0,-2)
		:SetAttribute("tooltip",L['itemfinder_refresh_desc'])
		:SetText(L['itemfinder_refresh'])
		:SetScript("OnClick",function(self,but)
			ItemScore:RefreshResults()
		end)
		.__END
	--]]

	-- set up "best dungeon" button
	local bestdungbutton = CHAIN(CreateFrame("BUTTON","ZygorGearFinderFrame_BestDungeon", ZygorGearFinderFrame.ScrollChild ,"ZygorGearFinderFrame_ItemFrame"))
		:SetPoint("TOPLEFT",ZygorGearFinderFrame.ScrollChild,"TOPLEFT",0,-ZygorGearFinderFrame.Header:GetHeight()-5) :SetPoint("RIGHT",ZygorGearFinderFrame.ScrollChild,"RIGHT",0,0)
		.__END
	bestdungbutton.BgTop:Hide()
	bestdungbutton.BgBottom:Hide()
	bestdungbutton.BgMiddle:Hide()
	bestdungbutton.Slot:SetFont(FONT,12)  --STANDARD_TEXT_FONT
	bestdungbutton.Label.Text:SetFont(FONT,11)
	ZGV.AssignButtonTexture(bestdungbutton.Dungeon,ZGV.SkinDir.."titlebuttons",11,16)

	ZygorGearFinderFrame.BestDungButton = bestdungbutton


	-- set up item buttons
	ZygorGearFinderFrame.Items = {}

	for i,slot in ipairs(ItemScore.ItemSlots) do
		local itembutton = CHAIN(CreateFrame("BUTTON","ZygorGearFinderFrame_Item"..i, ZygorGearFinderFrame.ScrollChild ,"ZygorGearFinderFrame_ItemFrame"))
			.__END
		--[[
		local itembutton = CHAIN(ZygorGearFinderFrame:CreateFontString(nil,nil,"SystemFont_Shadow_Small"))
			:SetJustifyH("LEFT") :SetJustifyV("TOP")
			--:SetFont(STANDARD_TEXT_FONT,9)
			--:SetTextColor(1.0,0.8,0.0)
			:SetText(slot)
			:SetSize(0,20)
			.__END
			--]]
		itembutton.Slot:SetFont(FONT,12)  --STANDARD_TEXT_FONT
		--itembutton.Slot:SetShadowColor(1,1,1,1)  --STANDARD_TEXT_FONT
		--itembutton.Slot:SetShadowOffset(0.8,0)  --STANDARD_TEXT_FONT
		itembutton.Label.Text:SetFont(FONT,11)
		ZGV.AssignButtonTexture(itembutton.Dungeon,ZGV.SkinDir.."titlebuttons",11,16)
		itembutton.Dungeon:SetFrameLevel(itembutton.Label:GetFrameLevel()+1)
		if i==1 then
			CHAIN(itembutton) :SetPoint("TOPLEFT",bestdungbutton,"BOTTOMLEFT",0,-6) :SetPoint("RIGHT",ZygorGearFinderFrame.ScrollChild,"RIGHT",0,0)
		else
			CHAIN(itembutton) :SetPoint("TOPLEFT",ZygorGearFinderFrame.Items[i-1],"BOTTOMLEFT",0,0) :SetPoint("RIGHT",ZygorGearFinderFrame.ScrollChild,"RIGHT",0,0)
		end

		itembutton.slot = slot

		if ZGV.db.profile.debug then
			local testbutton = CHAIN(CreateFrame("BUTTON","ZygorGearFinderFrame_Test"..i, itembutton, "UIPanelButtonTemplate"))
				:SetSize(10,10)
				:SetPoint("BOTTOMRIGHT")
				:SetScale(0.7)
				:SetScript("OnClick",function(self,but)
					local itype,id,link = GetCursorInfo()
					local slot = self:GetParent().slot
					if itype=="item" then ItemScore:GetItemScore(id,slot,"verbose") return end
					--else
					ItemScore:GetBestItems_NoCache(slot,50,"verbose",IsShiftKeyDown())
					ItemScore:Debug("OWN ITEM(s):")
					local item1,item2 = ItemScore:GetItemInSlot(slot)
					if item1 then ItemScore:GetItemScore(item1,slot,"verbose") end
					if item2 then ItemScore:GetItemScore(item2,slot,"verbose") end
				end)
				:SetScript("OnENTER",function(self) local tip=ShoppingTooltip1  tip:SetOwner(self,"RIGHT") tip:SetText("Click to test\nShift-click to sort by ID") tip:Show() end)
				.__END
		end

		ZygorGearFinderFrame.Items[i] = itembutton
	end

	ZygorGearFinderFrame:SetScript("OnLoad",function(self)
		--HybridScrollFrame_OnLoad(self)
		ScrollFrame_OnLoad(self);
		ScrollFrame_OnScrollRangeChanged(self);
		self.ScrollBar.scrollStep = 50;
		self.initialOffsetY = 0
	end )
	ZygorGearFinderFrame:SetScript("OnShow",function(self)
		--HybridScrollFrame_CreateButtons(self, "PlayerTitleButtonTemplate")
		ItemScore:RefreshResults()
	end )
	ZygorGearFinderFrame:SetScript("OnUpdate",function(self)
		local function maybeshowbutton(but)
			if but:IsShown() then
				if but.dungeonData and but:IsMouseOver() then
					if not but.ismouseover then
						UIFrameFadeIn(but.Dungeon, 0.2, but.Dungeon:GetAlpha(), 1.0)
					end
					if shiftkeydown~=IsShiftKeyDown() then
						but:GetScript("OnEnter")(but)
						shiftkeydown=IsShiftKeyDown()
					end
					if ctrlkeydown~=IsControlKeyDown() then
						ctrlkeydown=IsControlKeyDown()
						if ctrlkeydown then ShowInspectCursor() else ResetCursor() end
					end
				elseif not but:IsMouseOver() and but.ismouseover then
					UIFrameFadeOut(but.Dungeon, 0.2, but.Dungeon:GetAlpha(), 0.0)
				end
				but.ismouseover=but:IsMouseOver()
			end
		end
		for b,but in ipairs(self.Items) do maybeshowbutton(but) end
		maybeshowbutton(ZygorGearFinderFrame.BestDungButton)
	end )
end

local function CharacterFrame_OnShow_Hook()
	if not ZygorGearFinderFrame then
		SetUp_ZygorGearFinderFrame()
	end

	if CharacterFrame.Expanded then ZygorGearFinderPopoutButton:Hide() else ZygorGearFinderPopoutButton:Show() end

	for i,itembutton in ipairs(ZygorGearFinderFrame.Items) do  itembutton.dirty = true  end
end

function ItemScore:RefreshResults()
	ItemScore.ResultsCache.results = {}

	-- update/cache suggestions
	for i,slot in ipairs(ItemScore.ItemSlots) do
		ZGV.ItemScore:GetBestItems(v)
	end

	for i,itembutton in ipairs(ZygorGearFinderFrame.Items) do  itembutton.dirty = true  end

	ItemScore:UpdateCharacterFramePane()
end

function ItemScore:UpdateCharacterFramePane()
	if not ZygorGearFinderFrame or not ZygorGearFinderFrame:IsVisible() then return end

	self:Debug("Display: new results are supposedly in")

	self.new_results_are_available = nil

	local classrules = rules[self.playerclass][self.playerspec]
	local some_are_unknown = false
	for i,slot in ipairs(ItemScore.ItemSlots) do
		local itembutton = ZygorGearFinderFrame.Items[i]

		if itembutton.dirty then
			--print(slot,"dirty",classrules.itemtypes.TH_STAFF,classrules.itemtypes.TH_SWORD)

			-- reject unavailable types
			local types = classrules.itemtypes
			if  (slot=="INVTYPE_SHIELD" and not types.SHIELD)
			or (slot=="INVTYPE_RELIC" and not types.RELIC)
			or (slot=="INVTYPE_RANGED" and not types.BOW and not types.WAND)
			or (slot=="INVTYPE_THROWN" and not types.THROWN)
			or (slot=="INVTYPE_HOLDABLE" and not types.MISCARM)
			or (slot=="INVTYPE_WEAPONOFFHAND" and not types.MISCWEAP)
			or (slot=="INVTYPE_2HWEAPON" and not types.TH_STAFF and not types.TH_SWORD)
			then
				itembutton:Hide()
				itembutton:SetHeight(0.001)
				itembutton.dirty = nil
				--print(slot,"rejected")
			else
				itembutton:Show()
				itembutton:SetHeight(35)
				itembutton:SetSlot(slot)

				local result = ZGV.ItemScore:GetBestItems(slot,10)

				if result==SC_NOTYET then

					itembutton:SetText("...")
					some_are_unknown = true
					-- staying dirty

				elseif type(result)=="table" then
					if result[1] then

						local bestitem = result[1]
						local bestitemid = bestitem.item

						-- gauge own item(s), for comparison
						local item1,item2 = self:GetItemInSlot(slot)
						if item2 and not item1 then item1,item2=item2,item1 end
						local score1,info1,score2,info2

						if slot=="INVTYPE_WEAPONMAINHAND" then  -- exclude twohands from comparison; their stats trump onehanders always, so no onehanders would ever pop up
							local ownitemdata = GetItemStatsWithTooltip(item1)
							if ownitemdata and ownitemdata.info.equipslot=="INVTYPE_2HWEAPON" then  -- it's a twohander and mustn't be compared at all
								item1,score1=nil,0
							end
						end

						-- get scores for own items
						if item1 then  score1,info1 = self:GetItemScore(item1,slot)  end   score1=score1 or 0
						if item2 then  score2,info2 = self:GetItemScore(item2,slot)  end   score2=score2 or 0
						if score1>score2 and score2>0 then score1,score2=score2,score1 end
						-- now we have the worse item's score in score1, the better's in score2. Either is -1 or 0 if there's no (valid) item there.

						--print("slot",slot,"own",item1,item2,"scored",score1,score2)

						if bestitem.score>score1 or (score2>0 and bestitem.score>score2) then
							local data = self.items_in_guides[bestitemid]

							if not data then error("wtf, no data for item? "..bestitemid) end

							itembutton:SetItem(bestitemid)
							assert(type(data.dungeon)=="number","Item "..bestitemid.." has weird dungeon "..type(data.dungeon)..": "..data.dungeon)
							itembutton:SetDungeon(data.dungeon,data.boss,data.quest)
							itembutton:SetAlpha(1.0)
							itembutton.scorediff = bestitem.score-score1
							-- valid suggestion
						else
							itembutton:SetText(ZGV.L['itemfinder_noupgrade'],ZGV.L['itemfinder_noupgrade_desc'])
							itembutton:SetItem()
							itembutton:SetDungeon()
							itembutton:SetAlpha(0.5)
							itembutton.scorediff = nil
						end
					else
						itembutton:SetText(ZGV.L['itemfinder_noitems'],ZGV.L['itemfinder_noitems_desc'])
					end

					itembutton.dirty = nil

				else
					itembutton:SetText("ERROR, wtf")
				end
			end
		end
	end

	if some_are_unknown then
		ZygorGearFinderFrame.BestDungButton:SetDungeon()
		ZygorGearFinderFrame.BestDungButton:SetHeight(35)
		ZygorGearFinderFrame.BestDungButton:SetText("...")
		ZygorGearFinderFrame.BestDungButton:Show()
	else

		-- find the best dungeon

		local bestdungs = {}
		local bestdungitems = {}

		for i,itembutton in ipairs(ZygorGearFinderFrame.Items) do
			if itembutton:IsShown() and itembutton.item then
				local data = self.items_in_guides[itembutton.item]
				bestdungs[data.dungeon] = (bestdungs[data.dungeon] or 0) + itembutton.scorediff
				if not bestdungitems[data.dungeon] then bestdungitems[data.dungeon]={} end
				tinsert(bestdungitems[data.dungeon],{id=itembutton.item,scorediff=itembutton.scorediff})
			end
		end

		local bestdung,bestn=nil,0
		for dung,dungn in pairs(bestdungs) do if dungn>bestn then bestdung,bestn=dung,dungn end end

		if bestdung then
			ZygorGearFinderFrame.BestDungButton.Slot:SetText("BEST DUNGEON:")
			ZygorGearFinderFrame.BestDungButton:SetDungeon(bestdung)
			ZygorGearFinderFrame.BestDungButton.bestitems = bestdungitems[bestdung]
			ZygorGearFinderFrame.BestDungButton:SetText(ZGV.Dungeons[bestdung]:GetName())
			ZygorGearFinderFrame.BestDungButton:SetHeight(35)
			ZygorGearFinderFrame.BestDungButton:Show()
		else
			ZygorGearFinderFrame.BestDungButton:SetHeight(0.001)
			ZygorGearFinderFrame.BestDungButton:Hide()
		end
	end


	-- update scroll height
	local totalHeight = 40
	for b,but in ipairs(ZygorGearFinderFrame.Items) do
		if but:IsShown() then
			totalHeight = totalHeight + but:GetHeight()
		end
	end
	ZygorGearFinderFrame.ScrollChild:SetHeight(totalHeight+10-(CharacterStatsPane.initialOffsetY or 0));
end

ItemScore.ItemFrameProto = {}
-- UI object script handlers and methods
function ItemScore.ItemFrameProto.OnLoad(self)
	self.SetItem = ItemScore.ItemFrameProto.SetItem
	self.SetText = ItemScore.ItemFrameProto.SetText
	self.SetDungeon = ItemScore.ItemFrameProto.SetDungeon
	self.SetSlot = ItemScore.ItemFrameProto.SetSlot
	self.Dungeon:SetScript("OnEnter",ItemScore.ItemFrameProto.Dungeon_OnEnter)
	self.Dungeon:SetScript("OnLeave",ItemScore.ItemFrameProto.Dungeon_OnLeave)
	self.Dungeon:SetScript("OnClick",ItemScore.ItemFrameProto.Dungeon_OnClick)
	self:RegisterForClicks("AnyUp")
end

function ItemScore.ItemFrameProto.SetItem(self,id)
	self.item = id
	if id then
		local stats = GetItemStatsWithTooltip(id)
		local name = stats and stats.info and stats.info.name or "?"
		self:SetText(stats and stats.info and (stats.info.link:gsub("[%[%]]","")) or "?")
	end
end
function ItemScore.ItemFrameProto.SetText(self,text,tip)
	self.Label.Text:SetText(text)
	self.tip = tip
end
function ItemScore.ItemFrameProto.SetDungeon(self,dungid,boss,quest)
	self.Dungeon:SetText(">")
	local dungeon = ZGV.Dungeons[dungid]
	if dungeon then
		self.dungeonName = dungeon:GetName()
		self.dungeonData = dungeon
	else
		self.dungeonName = "?"
		self.dungeonData = nil
	end
	self.heroic = heroic

	self.boss = boss
	self.quest = quest
end
function ItemScore.ItemFrameProto.SetSlot(self,slot)
	if slot=="INVTYPE_SHIELD" then slot="SHIELDSLOT" end
	self.Slot:SetText(_G[slot]:upper())
end

function ItemScore.ItemFrameProto.Dungeon_OnClick(self,but)
	local p=self:GetParent()
	local dmap = p.dungeonData and p.dungeonData.map
	if dmap then
		for g,guide in ipairs(ZGV.registeredguides) do
			if guide.dungeon==dmap then ZGV:SetGuide(guide) return end
		end
		ZGV:Error("How odd. We don't seem to have a guide for "..GetMapNameByID(dmap))
	end
end
function ItemScore.ItemFrameProto.Dungeon_OnLeave(self)
	local tip = GameTooltip
	tip:Hide()
end
function ItemScore.ItemFrameProto.Dungeon_OnEnter(self)
	local p=self:GetParent()
	local dung = p.dungeonData
	local tip = GameTooltip
	if dung then
		local L = ZygorGuidesViewer.L
		tip:SetOwner(self,"TOP")
		if p.boss or p.quest then
			-- normal item button
			tip:SetText(L['itemfinder_openguide_dung']:format(dung:GetName()))
			--[[
			if p.dungeonData and p.dungeonData.heroic then
				GameTooltip:SetText(L['itemfinder_openguide_dung_h']:format(dung:GetName()))
			else
				GameTooltip:SetText(L['itemfinder_openguide_dung']:format(dung:GetName()))
			end
			--]]

			if p.boss then
				tip:AddLine(L['itemfinder_openguide_boss']:format(ZGV.Localizers:GetTranslatedNPC(p.boss)))
			end
			if p.quest then
				if type(p.quest)=="table" then p.quest=p.quest[1] end
				local quest = ZGV.Localizers:GetQuestData(p.quest)
				if quest and quest.title then
					tip:AddLine(L['itemfinder_openguide_quest']:format(quest.title))
				else
					tip:AddLine(L['itemfinder_openguide_quest']:format("?"))
				end
			end
		end
		tip:AddLine(L['itemfinder_openguide_open'])
		tip:Show()
	end
end


-- TESTS --

function ItemScore:TestItem(itemid,class,spec,level)
	self:SetFilters(class,spec,level)
	local score,info = self:GetItemScore(itemid)
	print(("Spec: %s  Item: %d %s  Score: %s%s %s"):format(class..spec,itemid,GetItemInfo(itemid) or "?",(score>0 and "" or "|cffff8888"),score or "?", info or "?"))
end

function ItemScore:Test(...)
	self:TestItem(869,...) --Dazzling Longsword
	self:TestItem(9392,...) --Annealed Blade
	self:TestItem(65947,...) --Platinum Sword
	self:TestItem(1265,...) --Scorpion Sting
	self:TestItem(18310,...) --Fiendish Machete
	self:TestItem(9401,...) --Nordic Longshank
	self:TestItem(13034,...) --Speedsteel Rapier
	self:TestItem(9424,...) --Ginn-Su Sword
	self:TestItem(62201,...) --Kaartish's Sword
	self:TestItem(33270,...) --Mariner's Sword
	self:TestItem(33271,...) --Battlecaster's Edge
end

function ItemScore:TestItemForAll(itemid)
	local _
	if not itemid then local _,itemlink=GameTooltip:GetItem() itemid=itemlink and itemlink:match("item:(%d+)") end
	if not itemid then local typ,_,itemlink=GetCursorInfo() if typ=="item" then itemid=itemlink:match("item:(%d+)") end end
	if not itemid then print("Nothing to check.") return end
	for class,classrules in pairs(rules) do
		for spec,rule in pairs(classrules) do
			self:TestItem(itemid,class,spec)
		end
	end
end

function ItemScore:TestGetBestItems(class,count)
	local results,desc = GetBestItems(class,count, "verbose")
	if results==SC_NOTYET then print ("Caching, please retry.") return end
	if results==SC_NORULES then print ("ERROR: ",desc) return end

	if type(results)~="table" then print ("ERROR: ",results,desc) return end
	for i,res in ipairs(results) do
		local name,link,quality,iLevel, reqLevel, class, subclass, maxStack, equipSlot, texture, vendorPrice = GetItemInfo(res.item)
		print(("%d. %s #%d [score: %.1f]"):format(i,link,res.item,res.score))
	end
end

function ItemScore:TestTip()
	local id = tonumber(select(2,GameTooltip:GetItem()):match(":(%d+)"))
	local info = GetItemStatsWithTooltip(id)
	if info then
		print (self:GetItemScore(id))
	end
end

function ItemScore:DumpItemsForSlot(slot)
	for i,id in ipairs(self.itembase[slot]) do
		local stats = GetItemStatsWithTooltip(id)
		local score = self:GetItemScore(id,slot,true)
		if score>-1 then print("==",score) end
	end
end

tinsert(ZGV.startups,function(self)
	if ItemScore.Items then

		ItemScore.Frame = CreateFrame("FRAME","ZGVItemScoreFrame")
		ItemScore.Frame:SetScript("OnUpdate",ItemScoreFrameOnUpdate)

		local f = CharacterFrame:GetScript("OnShow")
		CharacterFrame:SetScript("OnShow",function(...) f(...)  CharacterFrame_OnShow_Hook(...) end )
		hooksecurefunc("CharacterFrame_Collapse",CharacterFrame_OnShow_Hook)
		hooksecurefunc("CharacterFrame_Expand",CharacterFrame_OnShow_Hook)

		-- dummy data, if missing
		ItemScore:CacheItems()
		ItemScore:SetFilters()

		-- test GetItemInSlot
		assert(ItemScore:GetItemInSlot("INVTYPE_WEAPON")==ItemScore:GetItemInSlot("INVTYPE_2HWEAPON"),"GetItemInSlot failed")

		--self:ScheduleRepeatingTimer("TryToDisplayCreature", 1)
	end
	
	ItemScore:RegisterEvents()
	AutoEquip:Toggle()
end)