
VUHDO_CONFIG = {
	["SMARTCAST_CLEANSE"] = false,
	["RANGE_SPELL"] = "",
	["BLIZZ_UI_HIDE_PARTY"] = false,
	["OMIT_PLAYER_TARGETS"] = false,
	["BLIZZ_UI_HIDE_TARGET"] = false,
	["DIRECTION"] = {
		["isAlways"] = false,
		["isDistanceText"] = true,
		["enable"] = true,
		["isDeadOnly"] = false,
		["scale"] = 76,
	},
	["STANDARD_TOOLTIP"] = false,
	["AOE_ADVISOR"] = {
		["subInc"] = true,
		["config"] = {
			["poh"] = {
				["enable"] = true,
				["thresh"] = 20000,
			},
			["coh"] = {
				["enable"] = true,
				["thresh"] = 15000,
			},
			["ef"] = {
				["enable"] = true,
				["thresh"] = 8000,
			},
			["tq"] = {
				["enable"] = true,
				["thresh"] = 15000,
			},
			["hr"] = {
				["enable"] = false,
				["thresh"] = 10000,
			},
			["wg"] = {
				["enable"] = true,
				["thresh"] = 15000,
			},
			["lod"] = {
				["enable"] = true,
				["thresh"] = 8000,
			},
			["ch"] = {
				["enable"] = true,
				["thresh"] = 15000,
			},
		},
		["knownOnly"] = true,
		["subIncOnlyCastTime"] = true,
		["isCooldown"] = true,
		["refresh"] = 800,
		["animate"] = true,
		["isGroupWise"] = false,
	},
	["LOCK_PANELS"] = false,
	["DEBUFF_TOOLTIP"] = true,
	["RANGE_PESSIMISTIC"] = true,
	["SMARTCAST_RESURRECT"] = true,
	["BLIZZ_UI_HIDE_PET"] = false,
	["SMARTCAST_BUFF"] = false,
	["HIDE_PANELS_PARTY"] = false,
	["SHOW_PANELS"] = true,
	["HIDE_EMPTY_PANELS"] = true,
	["RANGE_CHECK_DELAY"] = 220,
	["SHOW_MINIMAP"] = true,
	["DETECT_DEBUFFS_IGNORE_MOVEMENT"] = true,
	["IS_SCAN_TALENTS"] = true,
	["OMIT_OWN_GROUP"] = false,
	["MODE"] = 1,
	["BLIZZ_UI_HIDE_RAID"] = false,
	["DETECT_DEBUFFS_REMOVABLE_ONLY"] = true,
	["CLUSTER"] = {
		["REFRESH"] = 180,
		["CHAIN_MAX_JUMP"] = 3,
		["DISPLAY_DESTINATION"] = 2,
		["CONE_DEGREES"] = 360,
		["BELOW_HEALTH_PERC"] = 85,
		["IS_NUMBER"] = true,
		["MODE"] = 1,
		["DISPLAY_SOURCE"] = 2,
		["TEXT"] = {
			["X_ADJUST"] = 40,
			["USE_MONO"] = false,
			["Y_ADJUST"] = 22,
			["ANCHOR"] = "BOTTOMRIGHT",
			["USE_OUTLINE"] = true,
			["SCALE"] = 85,
			["COLOR"] = {
				["TG"] = 1,
				["R"] = 0,
				["TB"] = 1,
				["G"] = 0,
				["TR"] = 1,
				["TO"] = 1,
				["B"] = 0,
				["useBackground"] = true,
				["useText"] = true,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
			["USE_SHADOW"] = false,
		},
		["THRESH_GOOD"] = 5,
		["COOLDOWN_SPELL"] = "",
		["RANGE"] = 30,
		["THRESH_FAIR"] = 3,
	},
	["OMIT_MAIN_ASSIST"] = false,
	["RES_ANNOUNCE_TEXT"] = "Come to life, vuhdo, because Ewanee loves you!",
	["LOCK_IN_FIGHT"] = false,
	["IS_CLIQUE_COMPAT_MODE"] = false,
	["VERSION"] = 4,
	["DETECT_DEBUFFS_IGNORE_DURATION"] = true,
	["SCAN_RANGE"] = "2",
	["PARSE_COMBAT_LOG"] = true,
	["ON_MOUSE_UP"] = false,
	["OMIT_TARGET"] = false,
	["IS_SHOW_GCD"] = false,
	["BLIZZ_UI_HIDE_FOCUS"] = false,
	["DETECT_DEBUFFS_IGNORE_NO_HARM"] = true,
	["DETECT_DEBUFFS_IGNORE_BY_CLASS"] = true,
	["OMIT_MAIN_TANKS"] = false,
	["OMIT_DFT_MTS"] = false,
	["SHOW_PLAYER_TAGS"] = true,
	["BLIZZ_UI_HIDE_PLAYER"] = false,
	["UPDATE_HOTS_MS"] = 250,
	["MAX_EMERGENCIES"] = 5,
	["LOCK_CLICKS_THROUGH"] = false,
	["HIDE_PANELS_SOLO"] = false,
	["CURRENT_PROFILE"] = "Krazyito: Druid",
	["EMERGENCY_TRIGGER"] = 100,
	["SHOW_INCOMING"] = true,
	["IS_SHARE"] = true,
	["OMIT_FOCUS"] = false,
	["HIDE_EMPTY_BUTTONS"] = false,
	["RES_IS_SHOW_TEXT"] = true,
	["OMIT_SELF"] = false,
	["BLIZZ_UI_HIDE_RAID_MGR"] = false,
	["IS_ALWAYS_OVERWRITE_PROFILE"] = false,
	["AUTO_PROFILES"] = {
	},
	["CUSTOM_DEBUFF"] = {
		["animate"] = true,
		["scale"] = 0.6,
		["STORED"] = {
			"Grievous Bite", -- [1]
			"Instant Heal", -- [2]
			"Impale", -- [3]
			"Web Wrap", -- [4]
			"Jagged Knife", -- [5]
			"Frost Blast", -- [6]
			"Slag Pot", -- [7]
			"Gravity Bomb", -- [8]
			"Searing Light", -- [9]
			"Stone Grip", -- [10]
			"Feral Pounce", -- [11]
			"Napalm Shell", -- [12]
			"Snobolled!", -- [13]
			"Burning Bile", -- [14]
			"Paralytic Toxin", -- [15]
			"Incinerate Flesh", -- [16]
			"Touch of Light", -- [17]
			"Touch of Darkness", -- [18]
			"Penetrating Cold", -- [19]
			"Acid-Drenched Mandibles", -- [20]
			"Iron Roots", -- [21]
			"Sara's Blessing", -- [22]
			"Fire Bomb", -- [23]
			"Legion Flame", -- [24]
			"Mistress' Kiss", -- [25]
			"Spinning Pain Spike", -- [26]
			"Expose Weakness", -- [27]
			"Impaled", -- [28]
			"Necrotic Strike", -- [29]
			"Mark of the Fallen Champion", -- [30]
			"Boiling Blood", -- [31]
			"Rune of Blood", -- [32]
			"Vile Gas", -- [33]
			"Gastric Bloat", -- [34]
			"Gas Spore", -- [35]
			"Mutated Infection", -- [36]
			"Gaseous Bloat", -- [37]
			"Volatile Ooze Adhesive", -- [38]
			"Mutated Plague", -- [39]
			"Shadow Prison", -- [40]
			"Glittering Sparks", -- [41]
			"Delirious Slash", -- [42]
			"Swarming Shadows", -- [43]
			"Shroud of Sorrow", -- [44]
			"Pact of the Darkfallen", -- [45]
			"Essence of the Blood Queen", -- [46]
			"Corrosion", -- [47]
			"Gut Spray", -- [48]
			"Ice Tomb", -- [49]
			"Chilled to the Bone", -- [50]
			"Instability", -- [51]
			"Frost Breath", -- [52]
			"Frost Beacon", -- [53]
			"Infest", -- [54]
			"Defile", -- [55]
			"Harvest Soul", -- [56]
			"Necrotic Plague", -- [57]
			"Consuming Darkness", -- [58]
			"Constricting Chains", -- [59]
			"Parasitic Infection", -- [60]
			"Mangle", -- [61]
			"Poison Soaked Shell", -- [62]
			"Lightning Conductor", -- [63]
			"Incineration Security Measure", -- [64]
			"Flash Freeze", -- [65]
			"Biting Chill", -- [66]
			"Searing Flame", -- [67]
			"Roaring Flame", -- [68]
			"Sonic Breath", -- [69]
			"Break", -- [70]
			"Low Health", -- [71]
			"Blackout", -- [72]
			"Devouring Flames", -- [73]
			"Engulfing Magic", -- [74]
			"Malevolent Strikes", -- [75]
			"Hydro Lance", -- [76]
			"Waterlogged", -- [77]
			"Frozen", -- [78]
			"Flame Torrent", -- [79]
			"Lightning Rod", -- [80]
			"Gravity Core", -- [81]
			"Gravity Crush", -- [82]
			"Cho's Blast", -- [83]
			"Gall's Blast", -- [84]
			"Ice Patch", -- [85]
			"Soothing Breeze", -- [86]
			"Toxic Spores", -- [87]
			"Slicing Gale", -- [88]
			"Ice Storm", -- [89]
			"Corruption: Accelerated", -- [90]
			"Electrical Storm", -- [91]
			"Plucked", -- [92]
			"Grievous Throw", -- [93]
			"Flame Shock", -- [94]
			"Flame Breath", -- [95]
			"Siphon Soul", -- [96]
			"Body Slam", -- [97]
			"Lash of Anguish", -- [98]
			"Ravage", -- [99]
			"Decapitate", -- [100]
			"Bloodletting", -- [101]
			"Whispers of Hethiss", -- [102]
			"Toxic Link", -- [103]
			"Pursuit", -- [104]
			"Toxic Torment", -- [105]
			"Burning Blood", -- [106]
			"Frostburn Formula", -- [107]
			"Wrack", -- [108]
			"The Widow's Kiss", -- [109]
			"Fieroblast", -- [110]
			"Gushing Wound", -- [111]
			"Crystal Prison Trap Effect", -- [112]
			"Jagged Tear", -- [113]
			"Tormented", -- [114]
			"Searing Seeds", -- [115]
			"Burning Wound", -- [116]
			"Melt Armor", -- [117]
			"Torment", -- [118]
			"Crush Armor", -- [119]
			"Watery Entrenchment", -- [120]
			"Shattered Ice", -- [121]
			"Twilight Barrage", -- [122]
			"Shockwave", -- [123]
			"Sunder Armor", -- [124]
			"Brutal Strike", -- [125]
			"Degeneration", -- [126]
			"Heroic Will", -- [127]
			"Twilight Shift", -- [128]
			"Twilight Burst", -- [129]
			"Faded Into Twilight", -- [130]
			"Fading Light", -- [131]
			"Deep Corruption", -- [132]
			"Disrupting Shadows", -- [133]
			"Black Blood of Go'rath", -- [134]
			"Grasping Tendrils", -- [135]
			"Fiery Grip", -- [136]
			"Searing Plasma", -- [137]
			"Blood Corruption: Death", -- [138]
			"Blood Corruption: Earth", -- [139]
			"Degradation", -- [140]
			"Degenerative Bite", -- [141]
			"Blistering Heat", -- [142]
			"Tetanus", -- [143]
			"Shrapnel", -- [144]
			"Shadow Infusion", -- [145]
			"Shadow Conductor", -- [146]
			"Engulfing Darkness", -- [147]
		},
		["isIcon"] = true,
		["selected"] = "",
		["TIMER_TEXT"] = {
			["X_ADJUST"] = 20,
			["USE_MONO"] = false,
			["Y_ADJUST"] = 26,
			["ANCHOR"] = "BOTTOMRIGHT",
			["USE_OUTLINE"] = false,
			["SCALE"] = 85,
			["COLOR"] = {
				["TG"] = 1,
				["R"] = 0,
				["TB"] = 1,
				["G"] = 0,
				["TR"] = 1,
				["TO"] = 1,
				["B"] = 0,
				["useBackground"] = true,
				["useText"] = true,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
			["USE_SHADOW"] = true,
		},
		["yAdjust"] = -34,
		["isColor"] = false,
		["version"] = 19,
		["isStacks"] = true,
		["STORED_SETTINGS"] = {
			["Burning Bile"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Blood Corruption: Earth"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Flame Breath"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Crush Armor"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Feral Pounce"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Sonic Breath"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Tetanus"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Searing Light"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Gravity Core"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Paralytic Toxin"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Twilight Shift"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Melt Armor"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Toxic Link"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Pursuit"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Fading Light"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Gut Spray"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Ice Tomb"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Blaze of Glory"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Gaseous Bloat"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Ice Storm"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Instant Heal"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Fire Bomb"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Harvest Soul"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Grasping Tendrils"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Vile Gas"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Electrical Storm"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Jagged Tear"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Burning Blood"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Jagged Knife"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Boiling Blood"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Napalm Shell"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Shadow Infusion"] = {
				["isStacks"] = true,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Degenerative Bite"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Lash of Anguish"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Glittering Sparks"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Shockwave"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Snobolled!"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Burning Wound"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Whispers of Hethiss"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Shattered Ice"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Acid-Drenched Mandibles"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Devouring Flames"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Shroud of Sorrow"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Grievous Bite"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Consuming Darkness"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Rune of Blood"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Mistress' Kiss"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Break"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Necrotic Plague"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Searing Plasma"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Degeneration"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Stone Grip"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Soothing Breeze"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Flame Torrent"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Legion Flame"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Deep Corruption"] = {
				["isStacks"] = true,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Shadow Conductor"] = {
				["isStacks"] = true,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Toxic Spores"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Blistering Heat"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Searing Flame"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Fiery Grip"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Bloodletting"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Hydro Lance"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Poison Soaked Shell"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Gastric Bloat"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Watery Entrenchment"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Cho's Blast"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Torment"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Impaled"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Engulfing Magic"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Mutated Infection"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Incinerate Flesh"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Lightning Conductor"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Shadow Prison"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Spinning Pain Spike"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Touch of Darkness"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Penetrating Cold"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Decapitate"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Constricting Chains"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Blood Corruption: Death"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Impale"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Chilled to the Bone"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Twilight Burst"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Toxic Torment"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Sunder Armor"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Degradation"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Corrosion"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Biting Chill"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Tormented"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Touch of Light"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Slag Pot"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Malevolent Strikes"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["The Widow's Kiss"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Frostburn Formula"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Fieroblast"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Frozen"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Faded Into Twilight"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Shrapnel"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Waterlogged"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Black Blood of Go'rath"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Iron Roots"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Roaring Flame"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Incineration Security Measure"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Flame Shock"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Blackout"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Mutated Plague"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Mangle"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Frost Blast"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Lightning Rod"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Web Wrap"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Searing Seeds"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Parasitic Infection"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Low Health"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Engulfing Darkness"] = {
				["isStacks"] = true,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Gall's Blast"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Disrupting Shadows"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Sara's Blessing"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Plucked"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Twilight Barrage"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Wrack"] = {
				["isStacks"] = false,
				["isAliveTime"] = true,
				["isColor"] = false,
				["isIcon"] = true,
				["timer"] = true,
				["isFullDuration"] = true,
				["animate"] = true,
			},
			["Crystal Prison Trap Effect"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Heroic Will"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Expose Weakness"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Body Slam"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Defile"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Gravity Bomb"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Flash Freeze"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Ice Patch"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Corruption: Accelerated"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Infest"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Grievous Throw"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Brutal Strike"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Ravage"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Necrotic Strike"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Volatile Ooze Adhesive"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Slicing Gale"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Gushing Wound"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Gravity Crush"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Delirious Slash"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Swarming Shadows"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Pact of the Darkfallen"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Essence of the Blood Queen"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Instability"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Frost Breath"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Frost Beacon"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Gas Spore"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Mark of the Fallen Champion"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Siphon Soul"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
		},
		["COUNTER_TEXT"] = {
			["X_ADJUST"] = -10,
			["USE_MONO"] = false,
			["Y_ADJUST"] = -15,
			["ANCHOR"] = "TOPLEFT",
			["USE_OUTLINE"] = false,
			["SCALE"] = 70,
			["COLOR"] = {
				["TG"] = 1,
				["R"] = 0,
				["TB"] = 0,
				["G"] = 0,
				["TR"] = 0,
				["TO"] = 1,
				["B"] = 0,
				["useBackground"] = true,
				["useText"] = true,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
			["USE_SHADOW"] = true,
		},
		["point"] = "TOPRIGHT",
		["timer"] = true,
		["isName"] = false,
		["xAdjust"] = -2,
		["max_num"] = 3,
	},
	["THREAT"] = {
		["AGGRO_USE_TEXT"] = false,
		["AGGRO_TEXT_LEFT"] = ">>",
		["IS_TANK_MODE"] = false,
		["AGGRO_TEXT_RIGHT"] = "<<",
		["AGGRO_REFRESH_MS"] = 300,
	},
	["SHOW_TEXT_OVERHEAL"] = true,
	["IS_USE_BUTTON_FACADE"] = false,
	["SHOW_OWN_INCOMING"] = true,
	["SHOW_OVERHEAL"] = true,
	["IS_DC_SHIELD_DISABLED"] = false,
}
VUHDO_PANEL_SETUP = {
	{
		["OVERHEAL_TEXT"] = {
			["show"] = true,
			["yAdjust"] = 0,
			["point"] = "TOPLEFT",
			["scale"] = 1.9,
			["xAdjust"] = -2,
		},
		["POSITION"] = {
			["y"] = 288.3737882379556,
			["x"] = 692.8869576028521,
			["orientation"] = "TOPLEFT",
			["relativePoint"] = "BOTTOMLEFT",
			["scale"] = 1,
			["height"] = 39.00000184645547,
			["growth"] = "TOPLEFT",
			["width"] = 119.0000029406513,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "TOP",
			["scale"] = 0.8,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "HIGH",
		["MODEL"] = {
			["ordering"] = 0,
			["groups"] = {
				1, -- [1]
				2, -- [2]
				3, -- [3]
				4, -- [4]
				5, -- [5]
				6, -- [6]
				7, -- [7]
				8, -- [8]
			},
			["sort"] = 3,
			["isReverse"] = false,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = -153,
			["position"] = 1,
			["SCALE"] = 1,
			["y"] = 172.999,
			["point"] = "BOTTOMRIGHT",
			["relativePoint"] = "BOTTOMRIGHT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0,
				["useBackground"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
			},
			["BORDER"] = {
				["edgeSize"] = 1,
				["B"] = 0,
				["G"] = 0,
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["file"] = "Interface\\Tooltips\\UI-Tooltip-Border",
				["O"] = 0,
				["insets"] = 0,
			},
			["barTexture"] = "VuhDo - Marble",
			["TEXT"] = {
				["outline"] = true,
				["USE_MONO"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Interface\\Addons\\MikScrollingBattleText\\Fonts\\yellowjacket.ttf",
				["textSizeLife"] = 15,
				["USE_SHADOW"] = false,
				["textSize"] = 9,
				["maxChars"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 42,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["rowSpacing"] = 2,
			["arrangeHorizontal"] = false,
			["scale"] = 1.1,
			["maxColumnsWhenStructured"] = 8,
			["barWidth"] = 76,
			["columnSpacing"] = 5,
			["borderGapY"] = 5,
			["targetSpacing"] = 3,
			["targetOrientation"] = 1,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = true,
			["maxRowsWhenLoose"] = 6,
			["sideLeftWidth"] = 6,
			["manaBarHeight"] = 4,
			["headerSpacing"] = 5,
			["borderGapX"] = 5,
			["sideRightWidth"] = 6,
			["totSpacing"] = 3,
			["isPlayerOnTop"] = true,
			["showHeaders"] = false,
			["totWidth"] = 30,
			["showTot"] = false,
			["isDamFlash"] = true,
			["headerWidth"] = 100,
			["isTarClassColBack"] = false,
			["targetWidth"] = 30,
			["isTarClassColText"] = true,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 29,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 2,
			["verbose"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "BOTTOMRIGHT+BOTTOMRIGHT",
			["yAdjust"] = 0,
			["_spacing"] = 23.99999507611876,
			["xAdjust"] = 0,
			["showPetOwners"] = true,
		},
	}, -- [1]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = true,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = -23.05249589146562,
			["x"] = 190.002676813327,
			["orientation"] = "LEFT",
			["relativePoint"] = "LEFT",
			["scale"] = 1,
			["height"] = 35.99998386061149,
			["growth"] = "TOPLEFT",
			["width"] = 142.9999980167701,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "TOP",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "MEDIUM",
		["MODEL"] = {
			["ordering"] = 0,
			["sort"] = 3,
			["isReverse"] = false,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = 100,
			["position"] = 2,
			["SCALE"] = 1,
			["y"] = -100,
			["point"] = "TOPLEFT",
			["relativePoint"] = "TOPLEFT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0,
				["useBackground"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
			},
			["BORDER"] = {
				["edgeSize"] = 1,
				["B"] = 0,
				["G"] = 0,
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["file"] = "Interface\\Tooltips\\UI-Tooltip-Border",
				["O"] = 0,
				["insets"] = 0,
			},
			["barTexture"] = "VuhDo - Marble",
			["TEXT"] = {
				["outline"] = true,
				["USE_MONO"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Fonts\\FRIZQT__.TTF",
				["textSizeLife"] = 13,
				["USE_SHADOW"] = false,
				["textSize"] = 7,
				["maxChars"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 76,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["rowSpacing"] = 2,
			["arrangeHorizontal"] = false,
			["scale"] = 1,
			["maxColumnsWhenStructured"] = 8,
			["barWidth"] = 100,
			["columnSpacing"] = 5,
			["borderGapY"] = 5,
			["targetSpacing"] = 3,
			["targetOrientation"] = 1,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = true,
			["maxRowsWhenLoose"] = 6,
			["sideLeftWidth"] = 6,
			["manaBarHeight"] = 3,
			["headerSpacing"] = 5,
			["borderGapX"] = 5,
			["sideRightWidth"] = 6,
			["totSpacing"] = 3,
			["isPlayerOnTop"] = true,
			["showHeaders"] = false,
			["totWidth"] = 30,
			["showTot"] = false,
			["isDamFlash"] = true,
			["headerWidth"] = 100,
			["isTarClassColBack"] = false,
			["targetWidth"] = 30,
			["isTarClassColText"] = true,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 26,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 2,
			["verbose"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "BOTTOMRIGHT+BOTTOMRIGHT",
			["yAdjust"] = 0,
			["xAdjust"] = 0,
			["showPetOwners"] = true,
		},
	}, -- [2]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = true,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 709,
			["x"] = 363,
			["orientation"] = "TOPLEFT",
			["relativePoint"] = "BOTTOMLEFT",
			["scale"] = 1,
			["height"] = 124.75,
			["growth"] = "TOPLEFT",
			["width"] = 85,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "TOP",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "MEDIUM",
		["MODEL"] = {
			["ordering"] = 0,
			["sort"] = 3,
			["isReverse"] = false,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = 100,
			["position"] = 2,
			["SCALE"] = 1,
			["y"] = -100,
			["point"] = "TOPLEFT",
			["relativePoint"] = "TOPLEFT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0,
				["useBackground"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
			},
			["BORDER"] = {
				["edgeSize"] = 1,
				["B"] = 0,
				["G"] = 0,
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["file"] = "Interface\\Tooltips\\UI-Tooltip-Border",
				["O"] = 0,
				["insets"] = 0,
			},
			["barTexture"] = "VuhDo - Marble",
			["TEXT"] = {
				["outline"] = true,
				["USE_MONO"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Fonts\\FRIZQT__.TTF",
				["textSizeLife"] = 13,
				["USE_SHADOW"] = false,
				["textSize"] = 7,
				["maxChars"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 76,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["rowSpacing"] = 2,
			["arrangeHorizontal"] = false,
			["scale"] = 1,
			["maxColumnsWhenStructured"] = 8,
			["barWidth"] = 75,
			["columnSpacing"] = 5,
			["borderGapY"] = 5,
			["targetSpacing"] = 3,
			["targetOrientation"] = 1,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = true,
			["maxRowsWhenLoose"] = 6,
			["sideLeftWidth"] = 6,
			["manaBarHeight"] = 3,
			["headerSpacing"] = 5,
			["borderGapX"] = 5,
			["sideRightWidth"] = 6,
			["totSpacing"] = 3,
			["isPlayerOnTop"] = true,
			["showHeaders"] = false,
			["totWidth"] = 30,
			["showTot"] = false,
			["isDamFlash"] = true,
			["headerWidth"] = 100,
			["isTarClassColBack"] = false,
			["targetWidth"] = 30,
			["isTarClassColText"] = true,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 25,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 2,
			["verbose"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "BOTTOMRIGHT+BOTTOMRIGHT",
			["yAdjust"] = 0,
			["_spacing"] = 17.99999193030574,
			["xAdjust"] = 0,
			["showPetOwners"] = true,
		},
	}, -- [3]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = true,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 668,
			["x"] = 100,
			["orientation"] = "TOPLEFT",
			["relativePoint"] = "BOTTOMLEFT",
			["scale"] = 1,
			["height"] = 124.75,
			["growth"] = "TOPLEFT",
			["width"] = 85,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "TOP",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "MEDIUM",
		["MODEL"] = {
			["ordering"] = 0,
			["sort"] = 3,
			["isReverse"] = false,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = 100,
			["position"] = 2,
			["SCALE"] = 1,
			["y"] = -100,
			["point"] = "TOPLEFT",
			["relativePoint"] = "TOPLEFT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0,
				["useBackground"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
			},
			["BORDER"] = {
				["edgeSize"] = 1,
				["B"] = 0,
				["G"] = 0,
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["file"] = "Interface\\Tooltips\\UI-Tooltip-Border",
				["O"] = 0,
				["insets"] = 0,
			},
			["barTexture"] = "VuhDo - Marble",
			["TEXT"] = {
				["outline"] = true,
				["USE_MONO"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Fonts\\FRIZQT__.TTF",
				["textSizeLife"] = 13,
				["USE_SHADOW"] = false,
				["textSize"] = 7,
				["maxChars"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 76,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["rowSpacing"] = 2,
			["arrangeHorizontal"] = false,
			["scale"] = 1,
			["maxColumnsWhenStructured"] = 8,
			["barWidth"] = 75,
			["columnSpacing"] = 5,
			["borderGapY"] = 5,
			["targetSpacing"] = 3,
			["targetOrientation"] = 1,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = true,
			["maxRowsWhenLoose"] = 6,
			["sideLeftWidth"] = 6,
			["manaBarHeight"] = 3,
			["headerSpacing"] = 5,
			["borderGapX"] = 5,
			["sideRightWidth"] = 6,
			["totSpacing"] = 3,
			["isPlayerOnTop"] = true,
			["showHeaders"] = false,
			["totWidth"] = 30,
			["showTot"] = false,
			["isDamFlash"] = true,
			["headerWidth"] = 100,
			["isTarClassColBack"] = false,
			["targetWidth"] = 30,
			["isTarClassColText"] = true,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 25,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 2,
			["verbose"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "BOTTOMRIGHT+BOTTOMRIGHT",
			["yAdjust"] = 0,
			["_spacing"] = 18,
			["xAdjust"] = 0,
			["showPetOwners"] = true,
		},
	}, -- [4]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = true,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 668,
			["x"] = 100,
			["orientation"] = "TOPLEFT",
			["relativePoint"] = "BOTTOMLEFT",
			["scale"] = 1,
			["height"] = 200,
			["growth"] = "TOPLEFT",
			["width"] = 200,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "TOP",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "MEDIUM",
		["MODEL"] = {
			["sort"] = 3,
			["ordering"] = 0,
			["isReverse"] = false,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = 100,
			["position"] = 2,
			["SCALE"] = 1,
			["y"] = -100,
			["point"] = "TOPLEFT",
			["relativePoint"] = "TOPLEFT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0,
				["useBackground"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
			},
			["BORDER"] = {
				["edgeSize"] = 1,
				["B"] = 0,
				["G"] = 0,
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["file"] = "Interface\\Tooltips\\UI-Tooltip-Border",
				["O"] = 0,
				["insets"] = 0,
			},
			["barTexture"] = "VuhDo - Marble",
			["TEXT"] = {
				["outline"] = true,
				["USE_MONO"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Fonts\\FRIZQT__.TTF",
				["textSizeLife"] = 13,
				["USE_SHADOW"] = false,
				["textSize"] = 7,
				["maxChars"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 76,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["rowSpacing"] = 2,
			["arrangeHorizontal"] = false,
			["scale"] = 1,
			["maxColumnsWhenStructured"] = 8,
			["barWidth"] = 75,
			["columnSpacing"] = 5,
			["borderGapY"] = 5,
			["targetSpacing"] = 3,
			["targetOrientation"] = 1,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = true,
			["maxRowsWhenLoose"] = 6,
			["sideLeftWidth"] = 6,
			["manaBarHeight"] = 3,
			["headerSpacing"] = 5,
			["borderGapX"] = 5,
			["sideRightWidth"] = 6,
			["totSpacing"] = 3,
			["isPlayerOnTop"] = true,
			["showHeaders"] = false,
			["totWidth"] = 30,
			["showTot"] = false,
			["isDamFlash"] = true,
			["headerWidth"] = 100,
			["isTarClassColBack"] = false,
			["targetWidth"] = 30,
			["isTarClassColText"] = true,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 25,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 2,
			["verbose"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "BOTTOMRIGHT+BOTTOMRIGHT",
			["yAdjust"] = 0,
			["xAdjust"] = 0,
			["showPetOwners"] = true,
		},
	}, -- [5]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = true,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 668,
			["x"] = 100,
			["orientation"] = "TOPLEFT",
			["relativePoint"] = "BOTTOMLEFT",
			["scale"] = 1,
			["height"] = 200,
			["growth"] = "TOPLEFT",
			["width"] = 200,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "TOP",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "MEDIUM",
		["MODEL"] = {
			["sort"] = 3,
			["ordering"] = 0,
			["isReverse"] = false,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = 100,
			["position"] = 2,
			["SCALE"] = 1,
			["y"] = -100,
			["point"] = "TOPLEFT",
			["relativePoint"] = "TOPLEFT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0,
				["useBackground"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
			},
			["BORDER"] = {
				["edgeSize"] = 1,
				["B"] = 0,
				["G"] = 0,
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["file"] = "Interface\\Tooltips\\UI-Tooltip-Border",
				["O"] = 0,
				["insets"] = 0,
			},
			["barTexture"] = "VuhDo - Marble",
			["TEXT"] = {
				["outline"] = true,
				["USE_MONO"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Fonts\\FRIZQT__.TTF",
				["textSizeLife"] = 13,
				["USE_SHADOW"] = false,
				["textSize"] = 7,
				["maxChars"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 76,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["rowSpacing"] = 2,
			["arrangeHorizontal"] = false,
			["scale"] = 1,
			["maxColumnsWhenStructured"] = 8,
			["barWidth"] = 75,
			["columnSpacing"] = 5,
			["borderGapY"] = 5,
			["targetSpacing"] = 3,
			["targetOrientation"] = 1,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = true,
			["maxRowsWhenLoose"] = 6,
			["sideLeftWidth"] = 6,
			["manaBarHeight"] = 3,
			["headerSpacing"] = 5,
			["borderGapX"] = 5,
			["sideRightWidth"] = 6,
			["totSpacing"] = 3,
			["isPlayerOnTop"] = true,
			["showHeaders"] = false,
			["totWidth"] = 30,
			["showTot"] = false,
			["isDamFlash"] = true,
			["headerWidth"] = 100,
			["isTarClassColBack"] = false,
			["targetWidth"] = 30,
			["isTarClassColText"] = true,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 25,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 2,
			["verbose"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "BOTTOMRIGHT+BOTTOMRIGHT",
			["yAdjust"] = 0,
			["xAdjust"] = 0,
			["showPetOwners"] = true,
		},
	}, -- [6]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = true,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 668,
			["x"] = 100,
			["orientation"] = "TOPLEFT",
			["relativePoint"] = "BOTTOMLEFT",
			["scale"] = 1,
			["height"] = 200,
			["growth"] = "TOPLEFT",
			["width"] = 200,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "TOP",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "MEDIUM",
		["MODEL"] = {
			["sort"] = 3,
			["ordering"] = 0,
			["isReverse"] = false,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = 100,
			["position"] = 2,
			["SCALE"] = 1,
			["y"] = -100,
			["point"] = "TOPLEFT",
			["relativePoint"] = "TOPLEFT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0,
				["useBackground"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
			},
			["BORDER"] = {
				["edgeSize"] = 1,
				["B"] = 0,
				["G"] = 0,
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["file"] = "Interface\\Tooltips\\UI-Tooltip-Border",
				["O"] = 0,
				["insets"] = 0,
			},
			["barTexture"] = "VuhDo - Marble",
			["TEXT"] = {
				["outline"] = true,
				["USE_MONO"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Fonts\\FRIZQT__.TTF",
				["textSizeLife"] = 13,
				["USE_SHADOW"] = false,
				["textSize"] = 7,
				["maxChars"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 76,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["rowSpacing"] = 2,
			["arrangeHorizontal"] = false,
			["scale"] = 1,
			["maxColumnsWhenStructured"] = 8,
			["barWidth"] = 75,
			["columnSpacing"] = 5,
			["borderGapY"] = 5,
			["targetSpacing"] = 3,
			["targetOrientation"] = 1,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = true,
			["maxRowsWhenLoose"] = 6,
			["sideLeftWidth"] = 6,
			["manaBarHeight"] = 3,
			["headerSpacing"] = 5,
			["borderGapX"] = 5,
			["sideRightWidth"] = 6,
			["totSpacing"] = 3,
			["isPlayerOnTop"] = true,
			["showHeaders"] = false,
			["totWidth"] = 30,
			["showTot"] = false,
			["isDamFlash"] = true,
			["headerWidth"] = 100,
			["isTarClassColBack"] = false,
			["targetWidth"] = 30,
			["isTarClassColText"] = true,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 25,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 2,
			["verbose"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "BOTTOMRIGHT+BOTTOMRIGHT",
			["yAdjust"] = 0,
			["xAdjust"] = 0,
			["showPetOwners"] = true,
		},
	}, -- [7]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = true,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 668,
			["x"] = 100,
			["orientation"] = "TOPLEFT",
			["relativePoint"] = "BOTTOMLEFT",
			["scale"] = 1,
			["height"] = 200,
			["growth"] = "TOPLEFT",
			["width"] = 200,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "TOP",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "MEDIUM",
		["MODEL"] = {
			["sort"] = 3,
			["ordering"] = 0,
			["isReverse"] = false,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = 100,
			["position"] = 2,
			["SCALE"] = 1,
			["y"] = -100,
			["point"] = "TOPLEFT",
			["relativePoint"] = "TOPLEFT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0,
				["useBackground"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
			},
			["BORDER"] = {
				["edgeSize"] = 1,
				["B"] = 0,
				["G"] = 0,
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["file"] = "Interface\\Tooltips\\UI-Tooltip-Border",
				["O"] = 0,
				["insets"] = 0,
			},
			["barTexture"] = "VuhDo - Marble",
			["TEXT"] = {
				["outline"] = true,
				["USE_MONO"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Fonts\\FRIZQT__.TTF",
				["textSizeLife"] = 13,
				["USE_SHADOW"] = false,
				["textSize"] = 7,
				["maxChars"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 76,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["rowSpacing"] = 2,
			["arrangeHorizontal"] = false,
			["scale"] = 1,
			["maxColumnsWhenStructured"] = 8,
			["barWidth"] = 75,
			["columnSpacing"] = 5,
			["borderGapY"] = 5,
			["targetSpacing"] = 3,
			["targetOrientation"] = 1,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = true,
			["maxRowsWhenLoose"] = 6,
			["sideLeftWidth"] = 6,
			["manaBarHeight"] = 3,
			["headerSpacing"] = 5,
			["borderGapX"] = 5,
			["sideRightWidth"] = 6,
			["totSpacing"] = 3,
			["isPlayerOnTop"] = true,
			["showHeaders"] = false,
			["totWidth"] = 30,
			["showTot"] = false,
			["isDamFlash"] = true,
			["headerWidth"] = 100,
			["isTarClassColBack"] = false,
			["targetWidth"] = 30,
			["isTarClassColText"] = true,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 25,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 2,
			["verbose"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "BOTTOMRIGHT+BOTTOMRIGHT",
			["yAdjust"] = 0,
			["xAdjust"] = 0,
			["showPetOwners"] = true,
		},
	}, -- [8]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = true,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 668,
			["x"] = 100,
			["orientation"] = "TOPLEFT",
			["relativePoint"] = "BOTTOMLEFT",
			["scale"] = 1,
			["height"] = 200,
			["growth"] = "TOPLEFT",
			["width"] = 200,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "TOP",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "MEDIUM",
		["MODEL"] = {
			["sort"] = 3,
			["ordering"] = 0,
			["isReverse"] = false,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = 100,
			["position"] = 2,
			["SCALE"] = 1,
			["y"] = -100,
			["point"] = "TOPLEFT",
			["relativePoint"] = "TOPLEFT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0,
				["useBackground"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
			},
			["BORDER"] = {
				["edgeSize"] = 1,
				["B"] = 0,
				["G"] = 0,
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["file"] = "Interface\\Tooltips\\UI-Tooltip-Border",
				["O"] = 0,
				["insets"] = 0,
			},
			["barTexture"] = "VuhDo - Marble",
			["TEXT"] = {
				["outline"] = true,
				["USE_MONO"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Fonts\\FRIZQT__.TTF",
				["textSizeLife"] = 13,
				["USE_SHADOW"] = false,
				["textSize"] = 7,
				["maxChars"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 76,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["rowSpacing"] = 2,
			["arrangeHorizontal"] = false,
			["scale"] = 1,
			["maxColumnsWhenStructured"] = 8,
			["barWidth"] = 75,
			["columnSpacing"] = 5,
			["borderGapY"] = 5,
			["targetSpacing"] = 3,
			["targetOrientation"] = 1,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = true,
			["maxRowsWhenLoose"] = 6,
			["sideLeftWidth"] = 6,
			["manaBarHeight"] = 3,
			["headerSpacing"] = 5,
			["borderGapX"] = 5,
			["sideRightWidth"] = 6,
			["totSpacing"] = 3,
			["isPlayerOnTop"] = true,
			["showHeaders"] = false,
			["totWidth"] = 30,
			["showTot"] = false,
			["isDamFlash"] = true,
			["headerWidth"] = 100,
			["isTarClassColBack"] = false,
			["targetWidth"] = 30,
			["isTarClassColText"] = true,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 25,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 2,
			["verbose"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "BOTTOMRIGHT+BOTTOMRIGHT",
			["yAdjust"] = 0,
			["xAdjust"] = 0,
			["showPetOwners"] = true,
		},
	}, -- [9]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = true,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 668,
			["x"] = 100,
			["orientation"] = "TOPLEFT",
			["relativePoint"] = "BOTTOMLEFT",
			["scale"] = 1,
			["height"] = 200,
			["growth"] = "TOPLEFT",
			["width"] = 200,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "TOP",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "MEDIUM",
		["MODEL"] = {
			["sort"] = 3,
			["ordering"] = 0,
			["isReverse"] = false,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useBackground"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = 100,
			["position"] = 2,
			["SCALE"] = 1,
			["y"] = -100,
			["point"] = "TOPLEFT",
			["relativePoint"] = "TOPLEFT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0,
				["useBackground"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\VuhDo\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
			},
			["BORDER"] = {
				["edgeSize"] = 1,
				["B"] = 0,
				["G"] = 0,
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["file"] = "Interface\\Tooltips\\UI-Tooltip-Border",
				["O"] = 0,
				["insets"] = 0,
			},
			["barTexture"] = "VuhDo - Marble",
			["TEXT"] = {
				["outline"] = true,
				["USE_MONO"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Fonts\\FRIZQT__.TTF",
				["textSizeLife"] = 13,
				["USE_SHADOW"] = false,
				["textSize"] = 7,
				["maxChars"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 76,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["rowSpacing"] = 2,
			["arrangeHorizontal"] = false,
			["scale"] = 1,
			["maxColumnsWhenStructured"] = 8,
			["barWidth"] = 75,
			["columnSpacing"] = 5,
			["borderGapY"] = 5,
			["targetSpacing"] = 3,
			["targetOrientation"] = 1,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = true,
			["maxRowsWhenLoose"] = 6,
			["sideLeftWidth"] = 6,
			["manaBarHeight"] = 3,
			["headerSpacing"] = 5,
			["borderGapX"] = 5,
			["sideRightWidth"] = 6,
			["totSpacing"] = 3,
			["isPlayerOnTop"] = true,
			["showHeaders"] = false,
			["totWidth"] = 30,
			["showTot"] = false,
			["isDamFlash"] = true,
			["headerWidth"] = 100,
			["isTarClassColBack"] = false,
			["targetWidth"] = 30,
			["isTarClassColText"] = true,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 25,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 2,
			["verbose"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "BOTTOMRIGHT+BOTTOMRIGHT",
			["yAdjust"] = 0,
			["xAdjust"] = 0,
			["showPetOwners"] = true,
		},
	}, -- [10]
	["RAID_ICON_FILTER"] = {
		true, -- [1]
		true, -- [2]
		true, -- [3]
		true, -- [4]
		true, -- [5]
		true, -- [6]
		true, -- [7]
		true, -- [8]
	},
	["PANEL_COLOR"] = {
		["TEXT"] = {
			["TR"] = 1,
			["TO"] = 1,
			["TB"] = 0,
			["useText"] = true,
			["TG"] = 0.878,
		},
		["HEALTH_TEXT"] = {
			["TR"] = 1,
			["TO"] = 1,
			["TB"] = 0,
			["useText"] = false,
			["TG"] = 0,
		},
		["BARS"] = {
			["useOpacity"] = true,
			["R"] = 0.7,
			["B"] = 0.7,
			["G"] = 0.7,
			["O"] = 1,
			["useBackground"] = true,
		},
		["classColorsName"] = true,
	},
	["HOTS"] = {
		["radioValue"] = 20,
		["SLOTS"] = {
			[10] = "BOUQUET_AOE Advice",
		},
		["COUNTER_TEXT"] = {
			["X_ADJUST"] = -25,
			["SCALE"] = 66,
			["USE_MONO"] = false,
			["Y_ADJUST"] = 0,
			["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
			["USE_SHADOW"] = false,
			["ANCHOR"] = "TOPLEFT",
			["USE_OUTLINE"] = true,
		},
		["TIMER_TEXT"] = {
			["X_ADJUST"] = 10,
			["SCALE"] = 84,
			["USE_MONO"] = false,
			["Y_ADJUST"] = 0,
			["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
			["USE_SHADOW"] = false,
			["ANCHOR"] = "CENTER",
			["USE_OUTLINE"] = true,
		},
		["iconRadioValue"] = 2,
		["SLOTCFG"] = {
			["1"] = {
				["scale"] = 1,
				["mine"] = true,
				["others"] = false,
			},
			["3"] = {
				["scale"] = 1,
				["mine"] = true,
				["others"] = false,
			},
			["2"] = {
				["scale"] = 1,
				["mine"] = true,
				["others"] = false,
			},
			["5"] = {
				["scale"] = 1,
				["mine"] = true,
				["others"] = false,
			},
			["4"] = {
				["scale"] = 1,
				["mine"] = true,
				["others"] = false,
			},
			["7"] = {
				["scale"] = 1,
				["mine"] = true,
				["others"] = false,
			},
			["6"] = {
				["scale"] = 1,
				["mine"] = true,
				["others"] = false,
			},
			["9"] = {
				["scale"] = 1,
				["mine"] = true,
				["others"] = false,
			},
			["8"] = {
				["scale"] = 1,
				["mine"] = true,
				["others"] = false,
			},
			["10"] = {
				["scale"] = 1.5,
				["mine"] = true,
				["others"] = false,
			},
		},
		["stacksRadioValue"] = 3,
		["BARS"] = {
			["radioValue"] = 1,
			["width"] = 25,
		},
	},
	["BAR_COLORS"] = {
		["OVERHEAL_TEXT"] = {
			["useOpacity"] = true,
			["TO"] = 1,
			["TB"] = 0.031,
			["TG"] = 1,
			["useText"] = true,
			["TR"] = 0.074,
		},
		["HOT7"] = {
			["useBackground"] = true,
			["R"] = 1,
			["B"] = 1,
			["G"] = 1,
			["O"] = 0.75,
		},
		["CLUSTER_FAIR"] = {
			["TG"] = 1,
			["R"] = 0.8,
			["TB"] = 0,
			["G"] = 0.8,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0,
			["useBackground"] = true,
			["O"] = 1,
			["useText"] = true,
		},
		["HOT1"] = {
			["TG"] = 0.6,
			["countdownMode"] = 1,
			["R"] = 1,
			["TB"] = 0.6,
			["G"] = 0.3,
			["TR"] = 1,
			["B"] = 0.3,
			["TO"] = 1,
			["isClock"] = false,
			["O"] = 1,
			["useBackground"] = true,
			["isFullDuration"] = false,
			["useText"] = true,
		},
		["useDebuffIconBossOnly"] = true,
		["EMERGENCY"] = {
			["TG"] = 0.82,
			["R"] = 1,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["BAR_FRAMES"] = {
			["useOpacity"] = true,
			["R"] = 0,
			["B"] = 0,
			["G"] = 0,
			["O"] = 0.7,
			["useBackground"] = true,
		},
		["RAID_ICONS"] = {
			["1"] = {
				["TG"] = 1,
				["R"] = 1,
				["TB"] = 0.607,
				["G"] = 0.976,
				["TR"] = 0.98,
				["TO"] = 1,
				["B"] = 0.305,
				["useBackground"] = true,
				["O"] = 1,
				["useText"] = true,
			},
			["filterOnly"] = false,
			["3"] = {
				["TG"] = 0.674,
				["R"] = 0.788,
				["TB"] = 0.921,
				["G"] = 0.29,
				["TR"] = 1,
				["TO"] = 1,
				["B"] = 0.8,
				["useBackground"] = true,
				["O"] = 1,
				["useText"] = true,
			},
			["2"] = {
				["TG"] = 0.827,
				["R"] = 1,
				["TB"] = 0.419,
				["G"] = 0.513,
				["TR"] = 1,
				["TO"] = 1,
				["B"] = 0.039,
				["useBackground"] = true,
				["O"] = 1,
				["useText"] = true,
			},
			["enable"] = false,
			["4"] = {
				["TG"] = 1,
				["R"] = 0,
				["TB"] = 0.698,
				["G"] = 0.8,
				["TR"] = 0.698,
				["TO"] = 1,
				["B"] = 0.015,
				["useBackground"] = true,
				["O"] = 1,
				["useText"] = true,
			},
			["7"] = {
				["TG"] = 0.627,
				["R"] = 0.8,
				["TB"] = 0.619,
				["G"] = 0.184,
				["TR"] = 1,
				["TO"] = 1,
				["B"] = 0.129,
				["useBackground"] = true,
				["O"] = 1,
				["useText"] = true,
			},
			["6"] = {
				["TG"] = 0.831,
				["R"] = 0.121,
				["TB"] = 1,
				["G"] = 0.69,
				["TR"] = 0.662,
				["TO"] = 1,
				["B"] = 0.972,
				["useBackground"] = true,
				["O"] = 1,
				["useText"] = true,
			},
			["8"] = {
				["TG"] = 0.231,
				["R"] = 0.847,
				["TB"] = 0.231,
				["G"] = 0.866,
				["TR"] = 0.231,
				["TO"] = 1,
				["B"] = 0.89,
				["useBackground"] = true,
				["O"] = 1,
				["useText"] = true,
			},
			["5"] = {
				["TG"] = 0.87,
				["R"] = 0.466,
				["TB"] = 1,
				["G"] = 0.717,
				["TR"] = 0.725,
				["TO"] = 1,
				["B"] = 0.8,
				["useBackground"] = true,
				["O"] = 1,
				["useText"] = true,
			},
		},
		["IRRELEVANT"] = {
			["TG"] = 0.82,
			["R"] = 0,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0.4,
			["useBackground"] = false,
			["useText"] = false,
			["O"] = 0.2,
			["useOpacity"] = true,
		},
		["HOT9"] = {
			["TG"] = 1,
			["countdownMode"] = 1,
			["R"] = 0.3,
			["TB"] = 1,
			["G"] = 1,
			["TR"] = 0.6,
			["B"] = 1,
			["TO"] = 1,
			["isClock"] = false,
			["O"] = 1,
			["useBackground"] = true,
			["isFullDuration"] = false,
			["useText"] = true,
		},
		["TAPPED"] = {
			["TG"] = 0.4,
			["R"] = 0.4,
			["TB"] = 0.4,
			["G"] = 0.4,
			["TR"] = 0.4,
			["TO"] = 1,
			["B"] = 0.4,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["HOT_CHARGE_3"] = {
			["TG"] = 1,
			["R"] = 0.3,
			["TB"] = 0.6,
			["G"] = 1,
			["TR"] = 0.6,
			["TO"] = 1,
			["B"] = 0.3,
			["useBackground"] = true,
			["O"] = 1,
			["useText"] = true,
		},
		["CLUSTER_GOOD"] = {
			["TG"] = 1,
			["R"] = 0,
			["TB"] = 0,
			["G"] = 0.8,
			["TR"] = 0,
			["TO"] = 1,
			["B"] = 0,
			["useBackground"] = true,
			["O"] = 1,
			["useText"] = true,
		},
		["DEBUFF3"] = {
			["TG"] = 0.957,
			["R"] = 0.4,
			["TB"] = 1,
			["G"] = 0.4,
			["TR"] = 0.329,
			["TO"] = 1,
			["B"] = 0.8,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["INCOMING"] = {
			["TG"] = 0.82,
			["R"] = 0,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0,
			["useBackground"] = false,
			["useText"] = false,
			["O"] = 0.33,
			["useOpacity"] = true,
		},
		["HOT6"] = {
			["useBackground"] = true,
			["R"] = 1,
			["B"] = 1,
			["G"] = 1,
			["O"] = 0.75,
		},
		["TARGET_ENEMY"] = {
			["TG"] = 0,
			["R"] = 1,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["DEBUFF4"] = {
			["TG"] = 0,
			["R"] = 0.7,
			["TB"] = 1,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0.7,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["DEBUFF6"] = {
			["TG"] = 0.5,
			["R"] = 0.6,
			["TB"] = 0,
			["G"] = 0.3,
			["TR"] = 0.8,
			["TO"] = 1,
			["B"] = 0,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["HOT5"] = {
			["TG"] = 0.6,
			["countdownMode"] = 1,
			["R"] = 1,
			["TB"] = 1,
			["G"] = 0.3,
			["TR"] = 1,
			["B"] = 1,
			["TO"] = 1,
			["isClock"] = false,
			["O"] = 1,
			["useBackground"] = true,
			["isFullDuration"] = false,
			["useText"] = true,
		},
		["TARGET_FRIEND"] = {
			["TG"] = 1,
			["R"] = 0,
			["TB"] = 0,
			["G"] = 1,
			["TR"] = 0,
			["TO"] = 1,
			["B"] = 0,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["NO_EMERGENCY"] = {
			["TG"] = 0.82,
			["R"] = 0,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0.4,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["HOTS"] = {
			["useColorText"] = true,
			["useColorBack"] = true,
			["isPumpDivineAegis"] = false,
			["isFadeOut"] = false,
			["isFlashWhenLow"] = false,
			["showShieldAbsorb"] = true,
			["WARNING"] = {
				["enabled"] = false,
				["lowSecs"] = 3,
				["R"] = 0.5,
				["TB"] = 0.6,
				["G"] = 0.2,
				["TR"] = 1,
				["TO"] = 1,
				["B"] = 0.2,
				["useBackground"] = true,
				["useText"] = true,
				["O"] = 1,
				["TG"] = 0.6,
			},
		},
		["GCD_BAR"] = {
			["useBackground"] = true,
			["R"] = 0.4,
			["B"] = 0.4,
			["G"] = 0.4,
			["O"] = 0.5,
		},
		["TARGET_NEUTRAL"] = {
			["TG"] = 1,
			["R"] = 1,
			["TB"] = 0,
			["G"] = 1,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["HOT2"] = {
			["TG"] = 1,
			["countdownMode"] = 1,
			["R"] = 1,
			["TB"] = 0.6,
			["G"] = 1,
			["TR"] = 1,
			["B"] = 0.3,
			["TO"] = 1,
			["isClock"] = false,
			["O"] = 1,
			["useBackground"] = true,
			["isFullDuration"] = false,
			["useText"] = true,
		},
		["DEAD"] = {
			["TG"] = 0.5,
			["R"] = 0.3,
			["TB"] = 0.5,
			["G"] = 0.3,
			["TR"] = 0.5,
			["TO"] = 1,
			["B"] = 0.3,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 0.5,
			["useOpacity"] = true,
		},
		["useDebuffIcon"] = true,
		["OFFLINE"] = {
			["TG"] = 0.576,
			["R"] = 0.298,
			["TB"] = 0.576,
			["G"] = 0.298,
			["TR"] = 0.576,
			["TO"] = 0.58,
			["B"] = 0.298,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 0.21,
			["useOpacity"] = true,
		},
		["OUTRANGED"] = {
			["TG"] = 0,
			["R"] = 0,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 0,
			["TO"] = 0.5,
			["B"] = 0,
			["useBackground"] = false,
			["useText"] = false,
			["O"] = 0.25,
			["useOpacity"] = true,
		},
		["CHARMED"] = {
			["TG"] = 0.31,
			["R"] = 0.51,
			["TB"] = 0.31,
			["G"] = 0.082,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0.263,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["HOT3"] = {
			["TG"] = 1,
			["countdownMode"] = 1,
			["R"] = 1,
			["TB"] = 1,
			["G"] = 1,
			["TR"] = 1,
			["B"] = 1,
			["TO"] = 1,
			["isClock"] = false,
			["O"] = 1,
			["useBackground"] = true,
			["isFullDuration"] = false,
			["useText"] = true,
		},
		["HOT4"] = {
			["TG"] = 0.6,
			["countdownMode"] = 1,
			["R"] = 0.3,
			["TB"] = 1,
			["G"] = 0.3,
			["TR"] = 0.6,
			["B"] = 1,
			["TO"] = 1,
			["isClock"] = false,
			["O"] = 1,
			["useBackground"] = true,
			["isFullDuration"] = false,
			["useText"] = true,
		},
		["DEBUFF2"] = {
			["TG"] = 0,
			["R"] = 0.8,
			["TB"] = 0,
			["G"] = 0.4,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0.4,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["DEBUFF0"] = {
			["useBackground"] = false,
			["useText"] = false,
			["useOpacity"] = false,
		},
		["HOT8"] = {
			["useBackground"] = true,
			["R"] = 1,
			["B"] = 1,
			["G"] = 1,
			["O"] = 0.75,
		},
		["HOT10"] = {
			["TG"] = 1,
			["countdownMode"] = 1,
			["R"] = 0.3,
			["TB"] = 0.3,
			["G"] = 1,
			["TR"] = 0.6,
			["B"] = 0.3,
			["TO"] = 1,
			["isClock"] = false,
			["O"] = 1,
			["useBackground"] = true,
			["isFullDuration"] = false,
			["useText"] = true,
		},
		["THREAT"] = {
			["LOW"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 1,
				["G"] = 1,
				["O"] = 1,
			},
			["HIGH"] = {
				["useBackground"] = true,
				["R"] = 1,
				["B"] = 1,
				["G"] = 0,
				["O"] = 1,
			},
		},
		["HOT_CHARGE_4"] = {
			["TG"] = 1,
			["R"] = 0.8,
			["TB"] = 1,
			["G"] = 0.8,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0.8,
			["useBackground"] = true,
			["O"] = 1,
			["useText"] = true,
		},
		["TARGET"] = {
			["TG"] = 1,
			["R"] = 0,
			["TB"] = 1,
			["G"] = 1,
			["modeText"] = 2,
			["TR"] = 1,
			["B"] = 0,
			["TO"] = 1,
			["useOpacity"] = true,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["modeBack"] = 1,
		},
		["DEBUFF1"] = {
			["TG"] = 1,
			["R"] = 0,
			["TB"] = 0.6860000000000001,
			["G"] = 0.592,
			["TR"] = 0,
			["TO"] = 1,
			["B"] = 0.8,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["LIFE_LEFT"] = {
			["GOOD"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 1,
				["O"] = 1,
			},
			["LOW"] = {
				["useBackground"] = true,
				["R"] = 1,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
			},
			["FAIR"] = {
				["useBackground"] = true,
				["R"] = 1,
				["B"] = 0,
				["G"] = 1,
				["O"] = 1,
			},
		},
		["HOT_CHARGE_2"] = {
			["TG"] = 1,
			["R"] = 1,
			["TB"] = 0.6,
			["G"] = 1,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0.3,
			["useBackground"] = true,
			["O"] = 1,
			["useText"] = true,
		},
	},
}
VUHDO_SPELL_ASSIGNMENTS = {
	["altshift14"] = {
		"alt-shift-", -- [1]
		"14", -- [2]
		"", -- [3]
	},
	["alt6"] = {
		"alt-", -- [1]
		"6", -- [2]
		"", -- [3]
	},
	["altctrlshift15"] = {
		"alt-ctrl-shift-", -- [1]
		"15", -- [2]
		"", -- [3]
	},
	["altctrl16"] = {
		"alt-ctrl-", -- [1]
		"16", -- [2]
		"", -- [3]
	},
	["altshift13"] = {
		"alt-shift-", -- [1]
		"13", -- [2]
		"", -- [3]
	},
	["altctrl13"] = {
		"alt-ctrl-", -- [1]
		"13", -- [2]
		"", -- [3]
	},
	["alt13"] = {
		"alt-", -- [1]
		"13", -- [2]
		"", -- [3]
	},
	["ctrl12"] = {
		"ctrl-", -- [1]
		"12", -- [2]
		"", -- [3]
	},
	["alt12"] = {
		"alt-", -- [1]
		"12", -- [2]
		"", -- [3]
	},
	["altctrlshift12"] = {
		"alt-ctrl-shift-", -- [1]
		"12", -- [2]
		"", -- [3]
	},
	["altctrl15"] = {
		"alt-ctrl-", -- [1]
		"15", -- [2]
		"", -- [3]
	},
	["ctrl8"] = {
		"ctrl-", -- [1]
		"8", -- [2]
		"", -- [3]
	},
	["shift3"] = {
		"shift-", -- [1]
		"3", -- [2]
		"", -- [3]
	},
	["alt8"] = {
		"alt-", -- [1]
		"8", -- [2]
		"", -- [3]
	},
	["altshift16"] = {
		"alt-shift-", -- [1]
		"16", -- [2]
		"", -- [3]
	},
	["altshift11"] = {
		"alt-shift-", -- [1]
		"11", -- [2]
		"", -- [3]
	},
	["ctrl3"] = {
		"ctrl-", -- [1]
		"3", -- [2]
		"", -- [3]
	},
	["altshift2"] = {
		"alt-shift-", -- [1]
		"2", -- [2]
		"", -- [3]
	},
	["altctrl1"] = {
		"alt-ctrl-", -- [1]
		"1", -- [2]
		"", -- [3]
	},
	["altctrlshift16"] = {
		"alt-ctrl-shift-", -- [1]
		"16", -- [2]
		"", -- [3]
	},
	["altctrl14"] = {
		"alt-ctrl-", -- [1]
		"14", -- [2]
		"", -- [3]
	},
	["shift8"] = {
		"shift-", -- [1]
		"8", -- [2]
		"", -- [3]
	},
	["altctrlshift14"] = {
		"alt-ctrl-shift-", -- [1]
		"14", -- [2]
		"", -- [3]
	},
	["altshift6"] = {
		"alt-shift-", -- [1]
		"6", -- [2]
		"", -- [3]
	},
	["shift4"] = {
		"shift-", -- [1]
		"4", -- [2]
		"", -- [3]
	},
	["altctrlshift9"] = {
		"alt-ctrl-shift-", -- [1]
		"9", -- [2]
		"", -- [3]
	},
	["shift15"] = {
		"shift-", -- [1]
		"15", -- [2]
		"", -- [3]
	},
	["ctrl11"] = {
		"ctrl-", -- [1]
		"11", -- [2]
		"", -- [3]
	},
	["altctrlshift6"] = {
		"alt-ctrl-shift-", -- [1]
		"6", -- [2]
		"", -- [3]
	},
	["ctrlshift1"] = {
		"ctrl-shift-", -- [1]
		"1", -- [2]
		"", -- [3]
	},
	["ctrlshift14"] = {
		"ctrl-shift-", -- [1]
		"14", -- [2]
		"", -- [3]
	},
	["alt15"] = {
		"alt-", -- [1]
		"15", -- [2]
		"", -- [3]
	},
	["shift7"] = {
		"shift-", -- [1]
		"7", -- [2]
		"", -- [3]
	},
	["altctrlshift5"] = {
		"alt-ctrl-shift-", -- [1]
		"5", -- [2]
		"", -- [3]
	},
	["altshift12"] = {
		"alt-shift-", -- [1]
		"12", -- [2]
		"", -- [3]
	},
	["altctrl3"] = {
		"alt-ctrl-", -- [1]
		"3", -- [2]
		"", -- [3]
	},
	["ctrl2"] = {
		"ctrl-", -- [1]
		"2", -- [2]
		"", -- [3]
	},
	["altshift15"] = {
		"alt-shift-", -- [1]
		"15", -- [2]
		"", -- [3]
	},
	["altshift1"] = {
		"alt-shift-", -- [1]
		"1", -- [2]
		"", -- [3]
	},
	["altctrlshift2"] = {
		"alt-ctrl-shift-", -- [1]
		"2", -- [2]
		"", -- [3]
	},
	["ctrlshift6"] = {
		"ctrl-shift-", -- [1]
		"6", -- [2]
		"", -- [3]
	},
	["altctrl5"] = {
		"alt-ctrl-", -- [1]
		"5", -- [2]
		"", -- [3]
	},
	["ctrl15"] = {
		"ctrl-", -- [1]
		"15", -- [2]
		"", -- [3]
	},
	["ctrl16"] = {
		"ctrl-", -- [1]
		"16", -- [2]
		"", -- [3]
	},
	["ctrlshift15"] = {
		"ctrl-shift-", -- [1]
		"15", -- [2]
		"", -- [3]
	},
	["16"] = {
		"", -- [1]
		"16", -- [2]
		"", -- [3]
	},
	["altctrlshift11"] = {
		"alt-ctrl-shift-", -- [1]
		"11", -- [2]
		"", -- [3]
	},
	["shift6"] = {
		"shift-", -- [1]
		"6", -- [2]
		"", -- [3]
	},
	["altctrl7"] = {
		"alt-ctrl-", -- [1]
		"7", -- [2]
		"", -- [3]
	},
	["ctrlshift13"] = {
		"ctrl-shift-", -- [1]
		"13", -- [2]
		"", -- [3]
	},
	["altctrlshift3"] = {
		"alt-ctrl-shift-", -- [1]
		"3", -- [2]
		"", -- [3]
	},
	["ctrl4"] = {
		"ctrl-", -- [1]
		"4", -- [2]
		"", -- [3]
	},
	["shift1"] = {
		"shift-", -- [1]
		"1", -- [2]
		"", -- [3]
	},
	["altshift4"] = {
		"alt-shift-", -- [1]
		"4", -- [2]
		"", -- [3]
	},
	["shift2"] = {
		"shift-", -- [1]
		"2", -- [2]
		"", -- [3]
	},
	["alt5"] = {
		"alt-", -- [1]
		"5", -- [2]
		"", -- [3]
	},
	["altctrl11"] = {
		"alt-ctrl-", -- [1]
		"11", -- [2]
		"", -- [3]
	},
	["alt3"] = {
		"alt-", -- [1]
		"3", -- [2]
		"", -- [3]
	},
	["ctrlshift16"] = {
		"ctrl-shift-", -- [1]
		"16", -- [2]
		"", -- [3]
	},
	["shift9"] = {
		"shift-", -- [1]
		"9", -- [2]
		"", -- [3]
	},
	["altctrlshift7"] = {
		"alt-ctrl-shift-", -- [1]
		"7", -- [2]
		"", -- [3]
	},
	["12"] = {
		"", -- [1]
		"12", -- [2]
		"", -- [3]
	},
	["shift10"] = {
		"shift-", -- [1]
		"10", -- [2]
		"", -- [3]
	},
	["ctrl6"] = {
		"ctrl-", -- [1]
		"6", -- [2]
		"", -- [3]
	},
	["ctrlshift12"] = {
		"ctrl-shift-", -- [1]
		"12", -- [2]
		"", -- [3]
	},
	["ctrl7"] = {
		"ctrl-", -- [1]
		"7", -- [2]
		"", -- [3]
	},
	["alt4"] = {
		"alt-", -- [1]
		"4", -- [2]
		"", -- [3]
	},
	["alt11"] = {
		"alt-", -- [1]
		"11", -- [2]
		"", -- [3]
	},
	["shift11"] = {
		"shift-", -- [1]
		"11", -- [2]
		"", -- [3]
	},
	["1"] = {
		"", -- [1]
		"1", -- [2]
		"target", -- [3]
	},
	["3"] = {
		"", -- [1]
		"3", -- [2]
		"focus", -- [3]
	},
	["5"] = {
		"", -- [1]
		"5", -- [2]
		"menu", -- [3]
	},
	["ctrl1"] = {
		"ctrl-", -- [1]
		"1", -- [2]
		"", -- [3]
	},
	["ctrlshift8"] = {
		"ctrl-shift-", -- [1]
		"8", -- [2]
		"", -- [3]
	},
	["ctrl5"] = {
		"ctrl-", -- [1]
		"5", -- [2]
		"", -- [3]
	},
	["altctrl10"] = {
		"alt-ctrl-", -- [1]
		"10", -- [2]
		"", -- [3]
	},
	["altctrlshift4"] = {
		"alt-ctrl-shift-", -- [1]
		"4", -- [2]
		"", -- [3]
	},
	["alt14"] = {
		"alt-", -- [1]
		"14", -- [2]
		"", -- [3]
	},
	["ctrlshift3"] = {
		"ctrl-shift-", -- [1]
		"3", -- [2]
		"", -- [3]
	},
	["7"] = {
		"", -- [1]
		"7", -- [2]
		"", -- [3]
	},
	["alt1"] = {
		"alt-", -- [1]
		"1", -- [2]
		"", -- [3]
	},
	["8"] = {
		"", -- [1]
		"8", -- [2]
		"", -- [3]
	},
	["altshift9"] = {
		"alt-shift-", -- [1]
		"9", -- [2]
		"", -- [3]
	},
	["2"] = {
		"", -- [1]
		"2", -- [2]
		"assist", -- [3]
	},
	["ctrlshift2"] = {
		"ctrl-shift-", -- [1]
		"2", -- [2]
		"", -- [3]
	},
	["4"] = {
		"", -- [1]
		"4", -- [2]
		"menu", -- [3]
	},
	["alt9"] = {
		"alt-", -- [1]
		"9", -- [2]
		"", -- [3]
	},
	["6"] = {
		"", -- [1]
		"6", -- [2]
		"", -- [3]
	},
	["9"] = {
		"", -- [1]
		"9", -- [2]
		"", -- [3]
	},
	["15"] = {
		"", -- [1]
		"15", -- [2]
		"", -- [3]
	},
	["altctrlshift10"] = {
		"alt-ctrl-shift-", -- [1]
		"10", -- [2]
		"", -- [3]
	},
	["altctrlshift8"] = {
		"alt-ctrl-shift-", -- [1]
		"8", -- [2]
		"", -- [3]
	},
	["altctrlshift1"] = {
		"alt-ctrl-shift-", -- [1]
		"1", -- [2]
		"", -- [3]
	},
	["shift13"] = {
		"shift-", -- [1]
		"13", -- [2]
		"", -- [3]
	},
	["11"] = {
		"", -- [1]
		"11", -- [2]
		"", -- [3]
	},
	["altctrl12"] = {
		"alt-ctrl-", -- [1]
		"12", -- [2]
		"", -- [3]
	},
	["ctrlshift7"] = {
		"ctrl-shift-", -- [1]
		"7", -- [2]
		"", -- [3]
	},
	["altctrl2"] = {
		"alt-ctrl-", -- [1]
		"2", -- [2]
		"", -- [3]
	},
	["altctrlshift13"] = {
		"alt-ctrl-shift-", -- [1]
		"13", -- [2]
		"", -- [3]
	},
	["ctrl14"] = {
		"ctrl-", -- [1]
		"14", -- [2]
		"", -- [3]
	},
	["altctrl8"] = {
		"alt-ctrl-", -- [1]
		"8", -- [2]
		"", -- [3]
	},
	["alt10"] = {
		"alt-", -- [1]
		"10", -- [2]
		"", -- [3]
	},
	["shift16"] = {
		"shift-", -- [1]
		"16", -- [2]
		"", -- [3]
	},
	["ctrlshift5"] = {
		"ctrl-shift-", -- [1]
		"5", -- [2]
		"", -- [3]
	},
	["alt16"] = {
		"alt-", -- [1]
		"16", -- [2]
		"", -- [3]
	},
	["shift12"] = {
		"shift-", -- [1]
		"12", -- [2]
		"", -- [3]
	},
	["altshift5"] = {
		"alt-shift-", -- [1]
		"5", -- [2]
		"", -- [3]
	},
	["altctrl6"] = {
		"alt-ctrl-", -- [1]
		"6", -- [2]
		"", -- [3]
	},
	["ctrlshift11"] = {
		"ctrl-shift-", -- [1]
		"11", -- [2]
		"", -- [3]
	},
	["ctrlshift10"] = {
		"ctrl-shift-", -- [1]
		"10", -- [2]
		"", -- [3]
	},
	["ctrl9"] = {
		"ctrl-", -- [1]
		"9", -- [2]
		"", -- [3]
	},
	["altshift10"] = {
		"alt-shift-", -- [1]
		"10", -- [2]
		"", -- [3]
	},
	["alt7"] = {
		"alt-", -- [1]
		"7", -- [2]
		"", -- [3]
	},
	["ctrl10"] = {
		"ctrl-", -- [1]
		"10", -- [2]
		"", -- [3]
	},
	["altshift3"] = {
		"alt-shift-", -- [1]
		"3", -- [2]
		"", -- [3]
	},
	["altctrl4"] = {
		"alt-ctrl-", -- [1]
		"4", -- [2]
		"", -- [3]
	},
	["13"] = {
		"", -- [1]
		"13", -- [2]
		"", -- [3]
	},
	["altshift8"] = {
		"alt-shift-", -- [1]
		"8", -- [2]
		"", -- [3]
	},
	["altctrl9"] = {
		"alt-ctrl-", -- [1]
		"9", -- [2]
		"", -- [3]
	},
	["shift5"] = {
		"shift-", -- [1]
		"5", -- [2]
		"", -- [3]
	},
	["14"] = {
		"", -- [1]
		"14", -- [2]
		"", -- [3]
	},
	["altshift7"] = {
		"alt-shift-", -- [1]
		"7", -- [2]
		"", -- [3]
	},
	["shift14"] = {
		"shift-", -- [1]
		"14", -- [2]
		"", -- [3]
	},
	["alt2"] = {
		"alt-", -- [1]
		"2", -- [2]
		"", -- [3]
	},
	["ctrlshift9"] = {
		"ctrl-shift-", -- [1]
		"9", -- [2]
		"", -- [3]
	},
	["ctrlshift4"] = {
		"ctrl-shift-", -- [1]
		"4", -- [2]
		"", -- [3]
	},
	["ctrl13"] = {
		"ctrl-", -- [1]
		"13", -- [2]
		"", -- [3]
	},
	["10"] = {
		"", -- [1]
		"10", -- [2]
		"", -- [3]
	},
}
VUHDO_HOSTILE_SPELL_ASSIGNMENTS = {
	["altshift14"] = {
		"alt-shift-", -- [1]
		"14", -- [2]
		"", -- [3]
	},
	["alt6"] = {
		"alt-", -- [1]
		"6", -- [2]
		"", -- [3]
	},
	["altctrlshift15"] = {
		"alt-ctrl-shift-", -- [1]
		"15", -- [2]
		"", -- [3]
	},
	["altctrl16"] = {
		"alt-ctrl-", -- [1]
		"16", -- [2]
		"", -- [3]
	},
	["altshift13"] = {
		"alt-shift-", -- [1]
		"13", -- [2]
		"", -- [3]
	},
	["altctrl13"] = {
		"alt-ctrl-", -- [1]
		"13", -- [2]
		"", -- [3]
	},
	["alt13"] = {
		"alt-", -- [1]
		"13", -- [2]
		"", -- [3]
	},
	["ctrl12"] = {
		"ctrl-", -- [1]
		"12", -- [2]
		"", -- [3]
	},
	["alt12"] = {
		"alt-", -- [1]
		"12", -- [2]
		"", -- [3]
	},
	["altctrlshift12"] = {
		"alt-ctrl-shift-", -- [1]
		"12", -- [2]
		"", -- [3]
	},
	["altctrl15"] = {
		"alt-ctrl-", -- [1]
		"15", -- [2]
		"", -- [3]
	},
	["ctrl8"] = {
		"ctrl-", -- [1]
		"8", -- [2]
		"", -- [3]
	},
	["shift3"] = {
		"shift-", -- [1]
		"3", -- [2]
		"", -- [3]
	},
	["alt8"] = {
		"alt-", -- [1]
		"8", -- [2]
		"", -- [3]
	},
	["altshift16"] = {
		"alt-shift-", -- [1]
		"16", -- [2]
		"", -- [3]
	},
	["altshift11"] = {
		"alt-shift-", -- [1]
		"11", -- [2]
		"", -- [3]
	},
	["ctrl3"] = {
		"ctrl-", -- [1]
		"3", -- [2]
		"", -- [3]
	},
	["altshift2"] = {
		"alt-shift-", -- [1]
		"2", -- [2]
		"", -- [3]
	},
	["altctrl1"] = {
		"alt-ctrl-", -- [1]
		"1", -- [2]
		"", -- [3]
	},
	["altctrlshift16"] = {
		"alt-ctrl-shift-", -- [1]
		"16", -- [2]
		"", -- [3]
	},
	["altctrl14"] = {
		"alt-ctrl-", -- [1]
		"14", -- [2]
		"", -- [3]
	},
	["shift8"] = {
		"shift-", -- [1]
		"8", -- [2]
		"", -- [3]
	},
	["altctrlshift14"] = {
		"alt-ctrl-shift-", -- [1]
		"14", -- [2]
		"", -- [3]
	},
	["altshift6"] = {
		"alt-shift-", -- [1]
		"6", -- [2]
		"", -- [3]
	},
	["shift4"] = {
		"shift-", -- [1]
		"4", -- [2]
		"", -- [3]
	},
	["altctrlshift9"] = {
		"alt-ctrl-shift-", -- [1]
		"9", -- [2]
		"", -- [3]
	},
	["shift15"] = {
		"shift-", -- [1]
		"15", -- [2]
		"", -- [3]
	},
	["ctrl11"] = {
		"ctrl-", -- [1]
		"11", -- [2]
		"", -- [3]
	},
	["altctrlshift6"] = {
		"alt-ctrl-shift-", -- [1]
		"6", -- [2]
		"", -- [3]
	},
	["ctrlshift1"] = {
		"ctrl-shift-", -- [1]
		"1", -- [2]
		"", -- [3]
	},
	["ctrlshift14"] = {
		"ctrl-shift-", -- [1]
		"14", -- [2]
		"", -- [3]
	},
	["alt15"] = {
		"alt-", -- [1]
		"15", -- [2]
		"", -- [3]
	},
	["shift7"] = {
		"shift-", -- [1]
		"7", -- [2]
		"", -- [3]
	},
	["altctrlshift5"] = {
		"alt-ctrl-shift-", -- [1]
		"5", -- [2]
		"", -- [3]
	},
	["altshift12"] = {
		"alt-shift-", -- [1]
		"12", -- [2]
		"", -- [3]
	},
	["altctrl3"] = {
		"alt-ctrl-", -- [1]
		"3", -- [2]
		"", -- [3]
	},
	["ctrl2"] = {
		"ctrl-", -- [1]
		"2", -- [2]
		"", -- [3]
	},
	["altshift15"] = {
		"alt-shift-", -- [1]
		"15", -- [2]
		"", -- [3]
	},
	["altshift1"] = {
		"alt-shift-", -- [1]
		"1", -- [2]
		"", -- [3]
	},
	["altctrlshift2"] = {
		"alt-ctrl-shift-", -- [1]
		"2", -- [2]
		"", -- [3]
	},
	["ctrlshift6"] = {
		"ctrl-shift-", -- [1]
		"6", -- [2]
		"", -- [3]
	},
	["altctrl5"] = {
		"alt-ctrl-", -- [1]
		"5", -- [2]
		"", -- [3]
	},
	["ctrl15"] = {
		"ctrl-", -- [1]
		"15", -- [2]
		"", -- [3]
	},
	["ctrl16"] = {
		"ctrl-", -- [1]
		"16", -- [2]
		"", -- [3]
	},
	["ctrlshift15"] = {
		"ctrl-shift-", -- [1]
		"15", -- [2]
		"", -- [3]
	},
	["16"] = {
		"", -- [1]
		"16", -- [2]
		"", -- [3]
	},
	["altctrlshift11"] = {
		"alt-ctrl-shift-", -- [1]
		"11", -- [2]
		"", -- [3]
	},
	["shift6"] = {
		"shift-", -- [1]
		"6", -- [2]
		"", -- [3]
	},
	["altctrl7"] = {
		"alt-ctrl-", -- [1]
		"7", -- [2]
		"", -- [3]
	},
	["ctrlshift13"] = {
		"ctrl-shift-", -- [1]
		"13", -- [2]
		"", -- [3]
	},
	["altctrlshift3"] = {
		"alt-ctrl-shift-", -- [1]
		"3", -- [2]
		"", -- [3]
	},
	["ctrl4"] = {
		"ctrl-", -- [1]
		"4", -- [2]
		"", -- [3]
	},
	["shift1"] = {
		"shift-", -- [1]
		"1", -- [2]
		"", -- [3]
	},
	["altshift4"] = {
		"alt-shift-", -- [1]
		"4", -- [2]
		"", -- [3]
	},
	["shift2"] = {
		"shift-", -- [1]
		"2", -- [2]
		"", -- [3]
	},
	["alt5"] = {
		"alt-", -- [1]
		"5", -- [2]
		"", -- [3]
	},
	["altctrl11"] = {
		"alt-ctrl-", -- [1]
		"11", -- [2]
		"", -- [3]
	},
	["alt3"] = {
		"alt-", -- [1]
		"3", -- [2]
		"", -- [3]
	},
	["ctrlshift16"] = {
		"ctrl-shift-", -- [1]
		"16", -- [2]
		"", -- [3]
	},
	["shift9"] = {
		"shift-", -- [1]
		"9", -- [2]
		"", -- [3]
	},
	["altctrlshift7"] = {
		"alt-ctrl-shift-", -- [1]
		"7", -- [2]
		"", -- [3]
	},
	["12"] = {
		"", -- [1]
		"12", -- [2]
		"", -- [3]
	},
	["shift10"] = {
		"shift-", -- [1]
		"10", -- [2]
		"", -- [3]
	},
	["ctrl6"] = {
		"ctrl-", -- [1]
		"6", -- [2]
		"", -- [3]
	},
	["ctrlshift12"] = {
		"ctrl-shift-", -- [1]
		"12", -- [2]
		"", -- [3]
	},
	["ctrl7"] = {
		"ctrl-", -- [1]
		"7", -- [2]
		"", -- [3]
	},
	["alt4"] = {
		"alt-", -- [1]
		"4", -- [2]
		"", -- [3]
	},
	["alt11"] = {
		"alt-", -- [1]
		"11", -- [2]
		"", -- [3]
	},
	["shift11"] = {
		"shift-", -- [1]
		"11", -- [2]
		"", -- [3]
	},
	["1"] = {
		"", -- [1]
		"1", -- [2]
		"", -- [3]
	},
	["3"] = {
		"", -- [1]
		"3", -- [2]
		"", -- [3]
	},
	["5"] = {
		"", -- [1]
		"5", -- [2]
		"", -- [3]
	},
	["ctrl1"] = {
		"ctrl-", -- [1]
		"1", -- [2]
		"", -- [3]
	},
	["ctrlshift8"] = {
		"ctrl-shift-", -- [1]
		"8", -- [2]
		"", -- [3]
	},
	["ctrl5"] = {
		"ctrl-", -- [1]
		"5", -- [2]
		"", -- [3]
	},
	["altctrl10"] = {
		"alt-ctrl-", -- [1]
		"10", -- [2]
		"", -- [3]
	},
	["altctrlshift4"] = {
		"alt-ctrl-shift-", -- [1]
		"4", -- [2]
		"", -- [3]
	},
	["alt14"] = {
		"alt-", -- [1]
		"14", -- [2]
		"", -- [3]
	},
	["ctrlshift3"] = {
		"ctrl-shift-", -- [1]
		"3", -- [2]
		"", -- [3]
	},
	["7"] = {
		"", -- [1]
		"7", -- [2]
		"", -- [3]
	},
	["alt1"] = {
		"alt-", -- [1]
		"1", -- [2]
		"", -- [3]
	},
	["8"] = {
		"", -- [1]
		"8", -- [2]
		"", -- [3]
	},
	["altshift9"] = {
		"alt-shift-", -- [1]
		"9", -- [2]
		"", -- [3]
	},
	["2"] = {
		"", -- [1]
		"2", -- [2]
		"", -- [3]
	},
	["ctrlshift2"] = {
		"ctrl-shift-", -- [1]
		"2", -- [2]
		"", -- [3]
	},
	["4"] = {
		"", -- [1]
		"4", -- [2]
		"", -- [3]
	},
	["alt9"] = {
		"alt-", -- [1]
		"9", -- [2]
		"", -- [3]
	},
	["6"] = {
		"", -- [1]
		"6", -- [2]
		"", -- [3]
	},
	["9"] = {
		"", -- [1]
		"9", -- [2]
		"", -- [3]
	},
	["15"] = {
		"", -- [1]
		"15", -- [2]
		"", -- [3]
	},
	["altctrlshift10"] = {
		"alt-ctrl-shift-", -- [1]
		"10", -- [2]
		"", -- [3]
	},
	["altctrlshift8"] = {
		"alt-ctrl-shift-", -- [1]
		"8", -- [2]
		"", -- [3]
	},
	["altctrlshift1"] = {
		"alt-ctrl-shift-", -- [1]
		"1", -- [2]
		"", -- [3]
	},
	["shift13"] = {
		"shift-", -- [1]
		"13", -- [2]
		"", -- [3]
	},
	["11"] = {
		"", -- [1]
		"11", -- [2]
		"", -- [3]
	},
	["altctrl12"] = {
		"alt-ctrl-", -- [1]
		"12", -- [2]
		"", -- [3]
	},
	["ctrlshift7"] = {
		"ctrl-shift-", -- [1]
		"7", -- [2]
		"", -- [3]
	},
	["altctrl2"] = {
		"alt-ctrl-", -- [1]
		"2", -- [2]
		"", -- [3]
	},
	["altctrlshift13"] = {
		"alt-ctrl-shift-", -- [1]
		"13", -- [2]
		"", -- [3]
	},
	["ctrl14"] = {
		"ctrl-", -- [1]
		"14", -- [2]
		"", -- [3]
	},
	["altctrl8"] = {
		"alt-ctrl-", -- [1]
		"8", -- [2]
		"", -- [3]
	},
	["alt10"] = {
		"alt-", -- [1]
		"10", -- [2]
		"", -- [3]
	},
	["shift16"] = {
		"shift-", -- [1]
		"16", -- [2]
		"", -- [3]
	},
	["ctrlshift5"] = {
		"ctrl-shift-", -- [1]
		"5", -- [2]
		"", -- [3]
	},
	["alt16"] = {
		"alt-", -- [1]
		"16", -- [2]
		"", -- [3]
	},
	["shift12"] = {
		"shift-", -- [1]
		"12", -- [2]
		"", -- [3]
	},
	["altshift5"] = {
		"alt-shift-", -- [1]
		"5", -- [2]
		"", -- [3]
	},
	["altctrl6"] = {
		"alt-ctrl-", -- [1]
		"6", -- [2]
		"", -- [3]
	},
	["ctrlshift11"] = {
		"ctrl-shift-", -- [1]
		"11", -- [2]
		"", -- [3]
	},
	["ctrlshift10"] = {
		"ctrl-shift-", -- [1]
		"10", -- [2]
		"", -- [3]
	},
	["ctrl9"] = {
		"ctrl-", -- [1]
		"9", -- [2]
		"", -- [3]
	},
	["altshift10"] = {
		"alt-shift-", -- [1]
		"10", -- [2]
		"", -- [3]
	},
	["alt7"] = {
		"alt-", -- [1]
		"7", -- [2]
		"", -- [3]
	},
	["ctrl10"] = {
		"ctrl-", -- [1]
		"10", -- [2]
		"", -- [3]
	},
	["altshift3"] = {
		"alt-shift-", -- [1]
		"3", -- [2]
		"", -- [3]
	},
	["altctrl4"] = {
		"alt-ctrl-", -- [1]
		"4", -- [2]
		"", -- [3]
	},
	["13"] = {
		"", -- [1]
		"13", -- [2]
		"", -- [3]
	},
	["altshift8"] = {
		"alt-shift-", -- [1]
		"8", -- [2]
		"", -- [3]
	},
	["altctrl9"] = {
		"alt-ctrl-", -- [1]
		"9", -- [2]
		"", -- [3]
	},
	["shift5"] = {
		"shift-", -- [1]
		"5", -- [2]
		"", -- [3]
	},
	["14"] = {
		"", -- [1]
		"14", -- [2]
		"", -- [3]
	},
	["altshift7"] = {
		"alt-shift-", -- [1]
		"7", -- [2]
		"", -- [3]
	},
	["shift14"] = {
		"shift-", -- [1]
		"14", -- [2]
		"", -- [3]
	},
	["alt2"] = {
		"alt-", -- [1]
		"2", -- [2]
		"", -- [3]
	},
	["ctrlshift9"] = {
		"ctrl-shift-", -- [1]
		"9", -- [2]
		"", -- [3]
	},
	["ctrlshift4"] = {
		"ctrl-shift-", -- [1]
		"4", -- [2]
		"", -- [3]
	},
	["ctrl13"] = {
		"ctrl-", -- [1]
		"13", -- [2]
		"", -- [3]
	},
	["10"] = {
		"", -- [1]
		"10", -- [2]
		"", -- [3]
	},
}
VUHDO_MM_SETTINGS = {
	["enabled"] = 1,
	["drag"] = "CIRCLE",
	["position"] = 0,
}
VUHDO_PLAYER_TARGETS = {
}
VUHDO_MAINTANK_NAMES = {
}
VUHDO_BUFF_SETTINGS = {
	["Vigilance"] = {
		["missingColor"] = {
			["TG"] = 1,
			["R"] = 1,
			["TB"] = 1,
			["G"] = 1,
			["show"] = false,
			["useOpacity"] = true,
			["TO"] = 1,
			["useBackground"] = true,
			["useText"] = true,
			["TR"] = 1,
			["O"] = 1,
			["B"] = 1,
		},
		["enabled"] = false,
		["filter"] = {
			[999] = true,
		},
	},
	["Shout"] = {
		["missingColor"] = {
			["TG"] = 1,
			["R"] = 1,
			["TB"] = 1,
			["G"] = 1,
			["show"] = false,
			["useOpacity"] = true,
			["TO"] = 1,
			["useBackground"] = true,
			["useText"] = true,
			["TR"] = 1,
			["O"] = 1,
			["B"] = 1,
		},
		["enabled"] = false,
		["filter"] = {
			[999] = true,
		},
	},
	["CONFIG"] = {
		["SWATCH_COLOR_BUFF_OUT"] = {
			["TG"] = 0,
			["R"] = 0,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 0.8,
			["TO"] = 1,
			["B"] = 0,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["SHOW_LABEL"] = false,
		["REFRESH_SECS"] = 1,
		["SWATCH_COLOR_BUFF_COOLDOWN"] = {
			["TG"] = 0.6,
			["R"] = 0.3,
			["TB"] = 0.6,
			["G"] = 0.3,
			["TR"] = 0.6,
			["TO"] = 1,
			["B"] = 0.3,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["SWATCH_COLOR_BUFF_OKAY"] = {
			["TG"] = 0.8,
			["R"] = 0,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 0,
			["TO"] = 1,
			["B"] = 0,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["SHOW"] = true,
		["PANEL_BG_COLOR"] = {
			["useBackground"] = true,
			["R"] = 0,
			["B"] = 0,
			["G"] = 0,
			["O"] = 0.5,
			["useText"] = false,
			["useOpacity"] = false,
		},
		["SWATCH_COLOR_BUFF_LOW"] = {
			["TG"] = 0.7,
			["R"] = 0,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["VERSION"] = 3,
		["SCALE"] = 1,
		["BAR_COLORS_TEXT"] = true,
		["BAR_COLORS_IN_FIGHT"] = true,
		["HIGHLIGHT_COOLDOWN"] = true,
		["HIDE_CHARGES"] = false,
		["COMPACT"] = true,
		["PANEL_BORDER_COLOR"] = {
			["useBackground"] = true,
			["R"] = 0,
			["B"] = 0,
			["G"] = 0,
			["O"] = 0.5,
			["useText"] = false,
			["useOpacity"] = false,
		},
		["BAR_COLORS_BACKGROUND"] = true,
		["POSITION"] = {
			["y"] = -251.296,
			["x"] = 340.951,
			["point"] = "LEFT",
			["relativePoint"] = "LEFT",
		},
		["SWATCH_BG_COLOR"] = {
			["useBackground"] = true,
			["R"] = 0,
			["B"] = 0,
			["G"] = 0,
			["O"] = 1,
			["useText"] = false,
			["useOpacity"] = false,
		},
		["PANEL_MAX_BUFFS"] = 5,
		["REBUFF_MIN_MINUTES"] = 3,
		["SWATCH_BORDER_COLOR"] = {
			["useBackground"] = true,
			["R"] = 0.8,
			["B"] = 0.8,
			["G"] = 0.8,
			["O"] = 0,
			["useText"] = false,
			["useOpacity"] = false,
		},
		["REBUFF_AT_PERCENT"] = 25,
		["WHEEL_SMART_BUFF"] = false,
		["USE_COMBINED"] = true,
	},
}
VUHDO_POWER_TYPE_COLORS = {
	{
		["TG"] = 0,
		["R"] = 1,
		["TB"] = 0,
		["G"] = 0,
		["TR"] = 1,
		["TO"] = 1,
		["B"] = 0,
		["useOpacity"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useText"] = true,
	}, -- [1]
	{
		["TG"] = 0.5,
		["R"] = 1,
		["TB"] = 0.25,
		["G"] = 0.5,
		["TR"] = 1,
		["TO"] = 1,
		["B"] = 0.25,
		["useOpacity"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useText"] = true,
	}, -- [2]
	{
		["TG"] = 1,
		["R"] = 1,
		["TB"] = 0,
		["G"] = 1,
		["TR"] = 1,
		["TO"] = 1,
		["B"] = 0,
		["useOpacity"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useText"] = true,
	}, -- [3]
	{
		["TG"] = 1,
		["R"] = 0,
		["TB"] = 1,
		["G"] = 1,
		["TR"] = 0,
		["TO"] = 1,
		["B"] = 1,
		["useOpacity"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useText"] = true,
	}, -- [4]
	nil, -- [5]
	{
		["TG"] = 0.5,
		["R"] = 0.5,
		["TB"] = 0.5,
		["G"] = 0.5,
		["TR"] = 0.5,
		["TO"] = 1,
		["B"] = 0.5,
		["useOpacity"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useText"] = true,
	}, -- [6]
	[0] = {
		["TG"] = 0,
		["R"] = 0,
		["TB"] = 1,
		["G"] = 0,
		["TR"] = 0,
		["TO"] = 1,
		["B"] = 1,
		["useOpacity"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useText"] = true,
	},
}
VUHDO_SPELLS_KEYBOARD = {
	["SPELL15"] = "",
	["SPELL6"] = "",
	["SPELL13"] = "",
	["HOSTILE_WHEEL"] = {
		["1"] = {
			"", -- [1]
			"-w1", -- [2]
			"", -- [3]
		},
		["altctrl2"] = {
			"ALT-CTRL-", -- [1]
			"-w10", -- [2]
			"", -- [3]
		},
		["alt1"] = {
			"ALT-", -- [1]
			"-w3", -- [2]
			"", -- [3]
		},
		["2"] = {
			"", -- [1]
			"-w2", -- [2]
			"", -- [3]
		},
		["ctrl2"] = {
			"CTRL-", -- [1]
			"-w6", -- [2]
			"", -- [3]
		},
		["shift2"] = {
			"SHIFT-", -- [1]
			"-w8", -- [2]
			"", -- [3]
		},
		["altshift1"] = {
			"ALT-SHIFT-", -- [1]
			"-w11", -- [2]
			"", -- [3]
		},
		["shift1"] = {
			"SHIFT-", -- [1]
			"-w7", -- [2]
			"", -- [3]
		},
		["ctrl1"] = {
			"CTRL-", -- [1]
			"-w5", -- [2]
			"", -- [3]
		},
		["alt2"] = {
			"ALT-", -- [1]
			"-w4", -- [2]
			"", -- [3]
		},
		["altshift2"] = {
			"ALT-SHIFT-", -- [1]
			"-w12", -- [2]
			"", -- [3]
		},
		["altctrlshift2"] = {
			"ALT-CTRL-SHIFT-", -- [1]
			"-w16", -- [2]
			"", -- [3]
		},
		["altctrlshift1"] = {
			"ALT-CTRL-SHIFT-", -- [1]
			"-w15", -- [2]
			"", -- [3]
		},
		["ctrlshift1"] = {
			"CTRL-SHIFT-", -- [1]
			"-w13", -- [2]
			"", -- [3]
		},
		["altctrl1"] = {
			"ALT-CTRL-", -- [1]
			"-w9", -- [2]
			"", -- [3]
		},
		["ctrlshift2"] = {
			"CTRL-SHIFT-", -- [1]
			"-w14", -- [2]
			"", -- [3]
		},
	},
	["SPELL3"] = "",
	["SPELL4"] = "",
	["SPELL2"] = "",
	["SPELL16"] = "",
	["INTERNAL"] = {
	},
	["SPELL7"] = "",
	["SPELL12"] = "",
	["SPELL5"] = "",
	["SPELL9"] = "",
	["SPELL10"] = "",
	["version"] = 2,
	["SPELL14"] = "",
	["SPELL11"] = "",
	["SPELL8"] = "",
	["SPELL1"] = "",
	["WHEEL"] = {
		["1"] = {
			"", -- [1]
			"-w1", -- [2]
			"", -- [3]
		},
		["altctrl2"] = {
			"ALT-CTRL-", -- [1]
			"-w10", -- [2]
			"", -- [3]
		},
		["alt1"] = {
			"ALT-", -- [1]
			"-w3", -- [2]
			"", -- [3]
		},
		["2"] = {
			"", -- [1]
			"-w2", -- [2]
			"", -- [3]
		},
		["ctrl2"] = {
			"CTRL-", -- [1]
			"-w6", -- [2]
			"", -- [3]
		},
		["shift2"] = {
			"SHIFT-", -- [1]
			"-w8", -- [2]
			"", -- [3]
		},
		["altshift1"] = {
			"ALT-SHIFT-", -- [1]
			"-w11", -- [2]
			"", -- [3]
		},
		["shift1"] = {
			"SHIFT-", -- [1]
			"-w7", -- [2]
			"", -- [3]
		},
		["ctrl1"] = {
			"CTRL-", -- [1]
			"-w5", -- [2]
			"", -- [3]
		},
		["alt2"] = {
			"ALT-", -- [1]
			"-w4", -- [2]
			"", -- [3]
		},
		["altshift2"] = {
			"ALT-SHIFT-", -- [1]
			"-w12", -- [2]
			"", -- [3]
		},
		["altctrlshift2"] = {
			"ALT-CTRL-SHIFT-", -- [1]
			"-w16", -- [2]
			"", -- [3]
		},
		["altctrlshift1"] = {
			"ALT-CTRL-SHIFT-", -- [1]
			"-w15", -- [2]
			"", -- [3]
		},
		["ctrlshift1"] = {
			"CTRL-SHIFT-", -- [1]
			"-w13", -- [2]
			"", -- [3]
		},
		["altctrl1"] = {
			"ALT-CTRL-", -- [1]
			"-w9", -- [2]
			"", -- [3]
		},
		["ctrlshift2"] = {
			"CTRL-SHIFT-", -- [1]
			"-w14", -- [2]
			"", -- [3]
		},
	},
}
VUHDO_SPELL_CONFIG = {
	["IS_LOAD_HOTS"] = false,
	["IS_FIRE_HOT"] = false,
	["IS_AUTO_FIRE"] = true,
	["IS_FIRE_CUSTOM_2"] = false,
	["IS_FIRE_GLOVES"] = false,
	["IS_FIRE_TRINKET_1"] = false,
	["IS_CANCEL_CURRENT"] = false,
	["autoBattleRez"] = true,
	["IS_KEEP_STANCE"] = false,
	["IS_FIRE_TRINKET_2"] = false,
	["IS_AUTO_TARGET"] = false,
	["IS_FIRE_OUT_FIGHT"] = false,
	["FIRE_CUSTOM_1_SPELL"] = "",
	["FIRE_CUSTOM_2_SPELL"] = "",
	["IS_TOOLTIP_INFO"] = false,
	["IS_FIRE_CUSTOM_1"] = false,
	["smartCastModi"] = "all",
}
VUHDO_BUFF_ORDER = {
	["01Shout"] = 1,
	["02Vigilance"] = 2,
}
VUHDO_SPEC_LAYOUTS = {
	["1"] = "",
	["selected"] = "",
	["2"] = "",
}
VUHDO_GROUP_SIZE = 1
VUHDO_RAID = {
	["player"] = {
		["visible"] = 1,
		["powertype"] = 1,
		["targetUnit"] = "target",
		["group"] = 1,
		["classId"] = 20,
		["range"] = true,
		["unit"] = "player",
		["number"] = 1,
		["debuff"] = 0,
		["healthmax"] = 60,
		["isAltPower"] = false,
		["baseRange"] = true,
		["sortMaxHp"] = 60,
		["isVehicle"] = false,
		["class"] = "WARRIOR",
		["debuffName"] = "",
		["connected"] = 1,
		["powermax"] = 100,
		["power"] = 0,
		["petUnit"] = "pet",
		["zone"] = "Teldrassil",
		["threatPerc"] = 0,
		["isPet"] = false,
		["map"] = "Teldrassil",
		["health"] = 60,
		["className"] = "Warrior",
		["fullName"] = "Kázyito",
		["aggro"] = false,
		["role"] = 60,
		["name"] = "Kázyito",
	},
}
VUHDO_INDICATOR_CONFIG = {
	["CUSTOM"] = {
		["THREAT_BAR"] = {
			["invertGrowth"] = false,
			["turnAxis"] = false,
			["HEIGHT"] = 4,
			["WARN_AT"] = 85,
			["TEXTURE"] = "VuhDo - Polished Wood",
		},
		["MOUSEOVER_HIGHLIGHT"] = {
			["TEXTURE"] = "VuhDo - Aluminium",
		},
		["AGGRO_BAR"] = {
			["TEXTURE"] = "VuhDo - Polished Wood",
		},
		["BACKGROUND_BAR"] = {
			["TEXTURE"] = "VuhDo - Minimalist",
		},
		["CLUSTER_BORDER"] = {
			["WIDTH"] = 2,
			["FILE"] = "Interface\\AddOns\\VuhDo\\Images\\white_square_16_16",
		},
		["SWIFTMEND_INDICATOR"] = {
			["SCALE"] = 1,
		},
		["SIDE_RIGHT"] = {
			["turnAxis"] = false,
			["vertical"] = true,
			["invertGrowth"] = false,
			["TEXTURE"] = "VuhDo - Polished Wood",
		},
		["BAR_BORDER"] = {
			["FILE"] = "Interface\\AddOns\\VuhDo\\Images\\white_square_16_16",
			["ADJUST"] = 0,
			["WIDTH"] = 1,
		},
		["HEALTH_BAR"] = {
			["turnAxis"] = false,
			["vertical"] = false,
			["invertGrowth"] = false,
		},
		["MANA_BAR"] = {
			["turnAxis"] = false,
			["invertGrowth"] = false,
			["TEXTURE"] = "VuhDo - Pipe, light",
		},
		["SIDE_LEFT"] = {
			["turnAxis"] = false,
			["vertical"] = true,
			["invertGrowth"] = false,
			["TEXTURE"] = "VuhDo - Polished Wood",
		},
	},
	["BOUQUETS"] = {
		["THREAT_BAR"] = "",
		["MOUSEOVER_HIGHLIGHT"] = "",
		["AGGRO_BAR"] = "",
		["BACKGROUND_BAR"] = "Background: Solid",
		["HEALTH_BAR_PANEL"] = {
			"Health (generic, class col)", -- [1]
			"Health (generic, class col)", -- [2]
			"Health (generic, class col)", -- [3]
			"Health (generic, class col)", -- [4]
			"Health (generic, class col)", -- [5]
			"Health (generic, class col)", -- [6]
			"Health (generic, class col)", -- [7]
			"Health (generic, class col)", -- [8]
			"Health (generic, class col)", -- [9]
			"Health (generic, class col)", -- [10]
		},
		["SIDE_LEFT"] = "",
		["INCOMING_BAR"] = "",
		["CLUSTER_BORDER"] = "",
		["THREAT_MARK"] = "",
		["SIDE_RIGHT"] = "",
		["MANA_BAR"] = "Manabars: Mana only",
		["BAR_BORDER"] = "Border: Multi + Aggro",
		["HEALTH_BAR"] = "Health (generic, class col)",
		["DAMAGE_FLASH_BAR"] = "",
		["SWIFTMEND_INDICATOR"] = "Role Icon",
	},
}
VUHDO_EVENT_TIMES = nil
