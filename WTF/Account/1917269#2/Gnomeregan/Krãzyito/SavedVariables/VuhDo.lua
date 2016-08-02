
VUHDO_CONFIG = {
	["SMARTCAST_CLEANSE"] = false,
	["RANGE_SPELL"] = "Holy Light",
	["BLIZZ_UI_HIDE_PARTY"] = 2,
	["OMIT_DFT_MTS"] = false,
	["BLIZZ_UI_HIDE_PLAYER"] = 2,
	["MAX_EMERGENCIES"] = 5,
	["STANDARD_TOOLTIP"] = false,
	["AOE_ADVISOR"] = {
		["subInc"] = true,
		["config"] = {
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
			["ch"] = {
				["enable"] = true,
				["thresh"] = 15000,
			},
			["poh"] = {
				["enable"] = true,
				["thresh"] = 20000,
			},
			["ef"] = {
				["enable"] = true,
				["thresh"] = 8000,
			},
			["cb"] = {
				["enable"] = false,
				["thresh"] = 10000,
			},
			["lod"] = {
				["enable"] = true,
				["thresh"] = 8000,
			},
			["coh"] = {
				["enable"] = true,
				["thresh"] = 15000,
			},
		},
		["knownOnly"] = true,
		["subIncOnlyCastTime"] = true,
		["refresh"] = 800,
		["isCooldown"] = true,
		["animate"] = true,
	},
	["LOCK_PANELS"] = true,
	["DEBUFF_TOOLTIP"] = true,
	["RANGE_PESSIMISTIC"] = false,
	["SMARTCAST_RESURRECT"] = true,
	["BLIZZ_UI_HIDE_PET"] = 2,
	["SMARTCAST_BUFF"] = false,
	["HIDE_PANELS_PARTY"] = false,
	["SHOW_PANELS"] = true,
	["HIDE_EMPTY_PANELS"] = true,
	["IS_DC_SHIELD_DISABLED"] = false,
	["SHOW_MINIMAP"] = true,
	["DETECT_DEBUFFS_IGNORE_MOVEMENT"] = true,
	["IS_SCAN_TALENTS"] = false,
	["OMIT_OWN_GROUP"] = false,
	["RES_IS_SHOW_TEXT"] = true,
	["BLIZZ_UI_HIDE_RAID"] = 2,
	["DETECT_DEBUFFS_REMOVABLE_ONLY"] = false,
	["CLUSTER"] = {
		["REFRESH"] = 180,
		["RANGE_JUMP"] = 11,
		["CHAIN_MAX_JUMP"] = 3,
		["DISPLAY_DESTINATION"] = 2,
		["CONE_DEGREES"] = 360,
		["IS_NUMBER"] = false,
		["RANGE"] = 15,
		["MODE"] = 1,
		["DISPLAY_SOURCE"] = 2,
		["TEXT"] = {
			["X_ADJUST"] = 40,
			["Y_ADJUST"] = 22,
			["ANCHOR"] = "BOTTOMRIGHT",
			["USE_OUTLINE"] = true,
			["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
			["USE_SHADOW"] = false,
			["COLOR"] = {
				["TG"] = 1,
				["B"] = 0,
				["TB"] = 1,
				["G"] = 0,
				["TR"] = 1,
				["TO"] = 1,
				["useOpacity"] = true,
				["useBackground"] = true,
				["useText"] = true,
				["O"] = 1,
				["R"] = 0,
			},
			["SCALE"] = 85,
		},
		["THRESH_GOOD"] = 5,
		["COOLDOWN_SPELL"] = "",
		["BELOW_HEALTH_PERC"] = 85,
		["THRESH_FAIR"] = 3,
	},
	["OMIT_MAIN_ASSIST"] = false,
	["LOCK_CLICKS_THROUGH"] = false,
	["LOCK_IN_FIGHT"] = false,
	["IS_CLIQUE_COMPAT_MODE"] = false,
	["VERSION"] = 4,
	["DETECT_DEBUFFS_IGNORE_DURATION"] = false,
	["SCAN_RANGE"] = "2",
	["PARSE_COMBAT_LOG"] = true,
	["ON_MOUSE_UP"] = false,
	["OMIT_TARGET"] = false,
	["IS_SHOW_GCD"] = false,
	["BLIZZ_UI_HIDE_FOCUS"] = 2,
	["DETECT_DEBUFFS_IGNORE_NO_HARM"] = false,
	["DETECT_DEBUFFS_IGNORE_BY_CLASS"] = true,
	["RANGE_CHECK_DELAY"] = 260,
	["SHOW_INCOMING"] = true,
	["MODE"] = 1,
	["SHOW_OVERHEAL"] = true,
	["SHOW_PLAYER_TAGS"] = true,
	["BLIZZ_UI_HIDE_RAID_MGR"] = 2,
	["UPDATE_HOTS_MS"] = 150,
	["BLIZZ_UI_HIDE_TARGET"] = 2,
	["IS_ALWAYS_OVERWRITE_PROFILE"] = false,
	["HIDE_PANELS_SOLO"] = false,
	["CURRENT_PROFILE"] = "paladin",
	["AUTO_PROFILES"] = {
		["SPEC_1"] = "Holy: Pally",
	},
	["doCompress"] = true,
	["DIRECTION"] = {
		["isAlways"] = false,
		["isDistanceText"] = true,
		["enable"] = true,
		["isDeadOnly"] = false,
		["scale"] = 76,
	},
	["OMIT_FOCUS"] = false,
	["OMIT_SELF"] = false,
	["OMIT_MAIN_TANKS"] = false,
	["IS_SHARE"] = true,
	["RES_ANNOUNCE_TEXT"] = "Come to life, vuhdo, because Ewanee loves you!",
	["EMERGENCY_TRIGGER"] = 100,
	["THREAT"] = {
		["AGGRO_TEXT_RIGHT"] = "<<",
		["AGGRO_TEXT_LEFT"] = ">>",
		["IS_TANK_MODE"] = false,
		["AGGRO_USE_TEXT"] = false,
		["AGGRO_REFRESH_MS"] = 300,
	},
	["SHOW_TEXT_OVERHEAL"] = true,
	["IS_USE_BUTTON_FACADE"] = false,
	["SHOW_OWN_INCOMING"] = true,
	["CUSTOM_DEBUFF"] = {
		["point"] = "TOPRIGHT",
		["scale"] = 0.65,
		["STORED"] = {
			"Acid-Drenched Mandibles", -- [1]
			"Biting Chill", -- [2]
			"Blackout", -- [3]
			"Boiling Blood", -- [4]
			"Break", -- [5]
			"Burning Bile", -- [6]
			"Chilled to the Bone", -- [7]
			"Cho's Blast", -- [8]
			"Constricting Chains", -- [9]
			"Consuming Darkness", -- [10]
			"Corrosion", -- [11]
			"Defile", -- [12]
			"Delirious Slash", -- [13]
			"Devouring Flames", -- [14]
			"Engulfing Magic", -- [15]
			"Essence of the Blood Queen", -- [16]
			"Expose Weakness", -- [17]
			"Feral Pounce", -- [18]
			"Fire Bomb", -- [19]
			"Flame Torrent", -- [20]
			"Flash Freeze", -- [21]
			"Frost Beacon", -- [22]
			"Frost Blast", -- [23]
			"Frost Breath", -- [24]
			"Frozen", -- [25]
			"Gall's Blast", -- [26]
			"Gas Spore", -- [27]
			"Gaseous Bloat", -- [28]
			"Gastric Bloat", -- [29]
			"Glittering Sparks", -- [30]
			"Gravity Bomb", -- [31]
			"Gravity Core", -- [32]
			"Gravity Crush", -- [33]
			"Grievous Bite", -- [34]
			"Grounded", -- [35]
			"Gut Spray", -- [36]
			"Harvest Soul", -- [37]
			"Hydro Lance", -- [38]
			"Ice Patch", -- [39]
			"Ice Storm", -- [40]
			"Ice Tomb", -- [41]
			"Impale", -- [42]
			"Impaled", -- [43]
			"Incinerate Flesh", -- [44]
			"Incineration Security Measure", -- [45]
			"Infest", -- [46]
			"Instability", -- [47]
			"Instant Heal", -- [48]
			"Iron Roots", -- [49]
			"Jagged Knife", -- [50]
			"Legion Flame", -- [51]
			"Lightning Conductor", -- [52]
			"Lightning Rod", -- [53]
			"Low Health", -- [54]
			"Malevolent Strikes", -- [55]
			"Mangle", -- [56]
			"Mark of the Fallen Champion", -- [57]
			"Mistress' Kiss", -- [58]
			"Mutated Infection", -- [59]
			"Mutated Plague", -- [60]
			"Napalm Shell", -- [61]
			"Necrotic Plague", -- [62]
			"Necrotic Strike", -- [63]
			"Pact of the Darkfallen", -- [64]
			"Paralytic Toxin", -- [65]
			"Parasitic Infection", -- [66]
			"Penetrating Cold", -- [67]
			"Poison Soaked Shell", -- [68]
			"Roaring Flame", -- [69]
			"Rune of Blood", -- [70]
			"Sara's Blessing", -- [71]
			"Searing Flame", -- [72]
			"Searing Light", -- [73]
			"Shadow Prison", -- [74]
			"Shroud of Sorrow", -- [75]
			"Slag Pot", -- [76]
			"Slicing Gale", -- [77]
			"Snobolled!", -- [78]
			"Sonic Breath", -- [79]
			"Soothing Breeze", -- [80]
			"Spinning Pain Spike", -- [81]
			"Stone Grip", -- [82]
			"Swarming Shadows", -- [83]
			"Swirling Winds", -- [84]
			"Touch of Darkness", -- [85]
			"Touch of Light", -- [86]
			"Toxic Spores", -- [87]
			"Vile Gas", -- [88]
			"Volatile Ooze Adhesive", -- [89]
			"Waterlogged", -- [90]
			"Weakened Soul", -- [91]
			"Web Wrap", -- [92]
			"Wrack", -- [93]
			"Tracking", -- [94]
			"Squall Line", -- [95]
			"Corruption: Accelerated", -- [96]
			"Electrical Storm", -- [97]
			"Plucked", -- [98]
			"Grievous Throw", -- [99]
			"Flame Shock", -- [100]
			"Flame Breath", -- [101]
			"Siphon Soul", -- [102]
			"Body Slam", -- [103]
			"Lash of Anguish", -- [104]
			"Ravage", -- [105]
			"Decapitate", -- [106]
			"Bloodletting", -- [107]
			"Whispers of Hethiss", -- [108]
			"Toxic Link", -- [109]
			"Pursuit", -- [110]
			"Toxic Torment", -- [111]
			"Burning Blood", -- [112]
			"Frostburn Formula", -- [113]
			"Fiery Web Silk", -- [114]
			"Torment", -- [115]
			"Searing Seeds", -- [116]
			"Gushing Wound", -- [117]
			"Blaze of Glory", -- [118]
			"Vital Flame", -- [119]
			"The Widow's Kiss", -- [120]
			"Fieroblast", -- [121]
			"Crystal Prison Trap Effect", -- [122]
			"Jagged Tear", -- [123]
			"Burning Wound", -- [124]
			"Melt Armor", -- [125]
			"Icebound Fortitude", -- [126]
			"Survival Instincts", -- [127]
			"Blazing Claw", -- [128]
			"Magma Blast", -- [129]
			"Burning Orbs", -- [130]
			"Burning Orb", -- [131]
			"Fixate", -- [132]
			"Superheated", -- [133]
			"Crush Armor", -- [134]
			"Watery Entrenchment", -- [135]
			"Shattered Ice", -- [136]
			"Twilight Barrage", -- [137]
			"Shockwave", -- [138]
			"Sunder Armor", -- [139]
			"Brutal Strike", -- [140]
			"Degeneration", -- [141]
			"Heroic Will", -- [142]
			"Twilight Shift", -- [143]
			"Twilight Burst", -- [144]
			"Faded Into Twilight", -- [145]
			"Fading Light", -- [146]
			"Deep Corruption", -- [147]
			"Disrupting Shadows", -- [148]
			"Black Blood of Go'rath", -- [149]
			"Grasping Tendrils", -- [150]
			"Fiery Grip", -- [151]
			"Searing Plasma", -- [152]
			"Blood Corruption: Death", -- [153]
			"Blood Corruption: Earth", -- [154]
			"Degradation", -- [155]
			"Degenerative Bite", -- [156]
			"Blistering Heat", -- [157]
			"Tetanus", -- [158]
			"105171", -- [159]
			"108220", -- [160]
			"Blood of Neltharion", -- [161]
			"Exhale", -- [162]
			"Pheromones of Zeal", -- [163]
			"Convert", -- [164]
			"Noise Cancelling", -- [165]
			"Unseen Strike", -- [166]
			"Overwhelming Assault", -- [167]
			"Storm Unleashed", -- [168]
			"Pheromones", -- [169]
			"Pungency", -- [170]
			"Pheromone Trail", -- [171]
			"Amber Prison", -- [172]
			"Residue", -- [173]
			"Corrosive Resin", -- [174]
			"Parasitic Growth", -- [175]
			"Reshape Life", -- [176]
			"Burning Amber", -- [177]
			"Eyes of the Empress", -- [178]
			"Cry of Terror", -- [179]
			"Sticky Resin", -- [180]
			"Trapped!", -- [181]
			"Poison Bomb", -- [182]
			"Poison-Drenched Armor", -- [183]
			"Poison Fumes", -- [184]
			"Consuming Terror", -- [185]
			"Visions of Demise", -- [186]
			"Heart of Fear", -- [187]
			"Petrified", -- [188]
			"Smoke Bomb", -- [189]
			"Jasper Chains", -- [190]
			"Amethyst Pool", -- [191]
			"Jasper Petrification", -- [192]
			"Cobalt Petrification", -- [193]
			"Amethyst Petrification", -- [194]
			"Cobalt Mine Blast", -- [195]
			"Rend Flesh", -- [196]
			"Jade Petrification", -- [197]
			"Lightning Lash", -- [198]
			"Epicenter", -- [199]
			"Flaming Spear", -- [200]
			"Wildfire Spark", -- [201]
			"Arcane Shock", -- [202]
			"Arcane Resonance", -- [203]
			"Arcane Velocity", -- [204]
			"Lightning Charge", -- [205]
			"Shadowburn", -- [206]
			"Voodoo Doll", -- [207]
			"Frail Soul", -- [208]
			"Crossed Over", -- [209]
			"Pillaged", -- [210]
			"Pinned Down", -- [211]
			"Pillage", -- [212]
			"Robbed Blind", -- [213]
			"Overcharged", -- [214]
			"Closed Circuit", -- [215]
			"Arcing Energy", -- [216]
			"Focused Assault", -- [217]
			"Focused Defense", -- [218]
			"Impeding Thrust", -- [219]
			"Energizing Smash", -- [220]
			"Focused Energy", -- [221]
			"Aggressive Behavior", -- [222]
			"Unleashed Wrath", -- [223]
			"Bitter Thoughts", -- [224]
			"Touch of Sha", -- [225]
			"Lightning Prison", -- [226]
			"Corrupted Essence", -- [227]
			"Defiled Ground", -- [228]
			"Dread Shadows", -- [229]
			"Nightmares", -- [230]
			"Shadow Breath", -- [231]
			"Sunbeam", -- [232]
			"Terrorize", -- [233]
			"Fright", -- [234]
			"Bathed in Light", -- [235]
			"Spray", -- [236]
			"Scary Fog", -- [237]
			"Breath of Fear", -- [238]
			"Ominous Cackle", -- [239]
			"Dread Spray", -- [240]
			"Naked and Afraid", -- [241]
			"Waterspout", -- [242]
			"Huddle in Terror", -- [243]
			"Eternal Darkness", -- [244]
			"Sha Globe", -- [245]
			"Penetrating Bolt", -- [246]
			"Reaching Attack", -- [247]
			"Wings of Flame", -- [248]
			"Electrified Waters", -- [249]
			"Focused Lightning", -- [250]
			"Ionization", -- [251]
			"Static Wound", -- [252]
			"Thundering Throw", -- [253]
			"Charge", -- [254]
			"Triple Puncture", -- [255]
			"Stone Gaze", -- [256]
			"Sand Trap", -- [257]
			"Venom Bolt Volley", -- [258]
			"Deadly Plague", -- [259]
			"Mortal Strike", -- [260]
			"Frozen Bolt", -- [261]
			"Hex of Confusion", -- [262]
			"Blazing Sunlight", -- [263]
			"Rending Charge", -- [264]
			"Dire Fixation", -- [265]
			"Frostbite", -- [266]
			"Body Heat", -- [267]
			"Soul Fragment", -- [268]
			"Ensnared", -- [269]
			"Entrapped", -- [270]
			"Shadowed Soul", -- [271]
			"Marked Soul", -- [272]
			"Twisted Fate", -- [273]
			"Quicksand", -- [274]
			"Kick Shell", -- [275]
			"Quake Stomp", -- [276]
			"Sonic Screech", -- [277]
			"Slashing Talons", -- [278]
			"Crystal Shell", -- [279]
			"Cinders", -- [280]
			"Consuming Flames", -- [281]
			"Ignite Flesh", -- [282]
			"Frozen Solid", -- [283]
			"Icy Ground", -- [284]
			"Consuming Magic", -- [285]
			"Arctic Freeze", -- [286]
			"Rot Armor", -- [287]
			"Suppression", -- [288]
			"Slimed", -- [289]
			"Feed Pool", -- [290]
			"Lesson of Icarus", -- [291]
			"Screech", -- [292]
			"Arterial Cut", -- [293]
			"Serious Wound", -- [294]
			"Force of Will Precast", -- [295]
			"Blue Beam Precast", -- [296]
			"Red Beam Precast", -- [297]
			"Yellow Beam Precast", -- [298]
			"Life Drain", -- [299]
			"Dark Parasite", -- [300]
			"Lingering Gaze", -- [301]
			"Fully Mutated", -- [302]
			"Keen Eyesight", -- [303]
			"Impaired Eyesight", -- [304]
			"Improved Synapses", -- [305]
			"Dulled Synapses", -- [306]
			"Thick Bones", -- [307]
			"Clear Mind", -- [308]
			"Clouded Mind", -- [309]
			"Malformed Blood", -- [310]
			"Explosive Slam", -- [311]
			"Touch of the Animus", -- [312]
			"Matter Swap", -- [313]
			"Anima Font", -- [314]
			"Anima Ring", -- [315]
			"Crimson Wake", -- [316]
			"Scorched", -- [317]
			"Arcing Lightning", -- [318]
			"Dead Zone", -- [319]
			"Freeze", -- [320]
			"Frozen Blood", -- [321]
			"Storm Cloud", -- [322]
			"Burning Cinders", -- [323]
			"Rushing Winds", -- [324]
			"Wind Storm", -- [325]
			"Lightning Storm", -- [326]
			"Icy Shadows", -- [327]
			"Flames of Passion", -- [328]
			"Serpent's Vitality", -- [329]
			"Fan of Flames", -- [330]
			"Corrupted Healing", -- [331]
			"Beast of Nightmares", -- [332]
			"Slumber Spores", -- [333]
			"Static Shock", -- [334]
			"Summon Ball Lightning", -- [335]
			"Discharged Energy", -- [336]
			"Overcharge", -- [337]
			"Overloaded Circuits", -- [338]
			"Lightning Bolt", -- [339]
			"Crashing Thunder", -- [340]
			"Electrical Shock", -- [341]
			"Maim", -- [342]
			"Locked On", -- [343]
			"Resonating Amber", -- [344]
			"Corrosive Blast", -- [345]
			"Sha Splash", -- [346]
			"Inferno Strike", -- [347]
			"Vengeful Strikes", -- [348]
			"Corruption Kick", -- [349]
			"Garrote", -- [350]
			"Gouge", -- [351]
			"Mark of Anguish", -- [352]
			"Shadow Weakness", -- [353]
			"Debilitation", -- [354]
			"Sha Sear", -- [355]
			"Wounded Pride", -- [356]
			"Corrupted Prison", -- [357]
			"Fracture", -- [358]
			"Flame Arrows", -- [359]
			"Poison Cloud", -- [360]
			"Flames of Galakrond", -- [361]
			"Laser Burn", -- [362]
			"Ignite Armor", -- [363]
			"Explosive Tar", -- [364]
			"Cutter Laser Target", -- [365]
			"Rend", -- [366]
			"Froststorm Strike", -- [367]
			"Toxic Mist", -- [368]
			"Foul Geyser", -- [369]
			"Iron Prison", -- [370]
			"Iron Tomb", -- [371]
			"Sundering Blow", -- [372]
			"Bonecracker", -- [373]
			"Assassin's Mark", -- [374]
			"Hunter's Mark", -- [375]
			"Fatal Strike", -- [376]
			"Ancient Barrier", -- [377]
			"Ancient Miasma", -- [378]
			"Languish", -- [379]
			"Set to Blow", -- [380]
			"Carnivorous Bite", -- [381]
			"Encapsulated Pheromones", -- [382]
			"Keg Toss", -- [383]
			"Gusting Bomb", -- [384]
			"Panic", -- [385]
			"Tail Lash", -- [386]
			"Acid Breath", -- [387]
			"Freezing Breath", -- [388]
			"Icy Blood", -- [389]
			"Scorching Breath", -- [390]
			"Electrostatic Charge", -- [391]
			"Overload", -- [392]
			"Magnetic Crush", -- [393]
			"Exposed Veins", -- [394]
			"Caustic Blood", -- [395]
			"Tenderizing Strikes", -- [396]
			"Mesmerize", -- [397]
			"Shield Bash", -- [398]
			"Caustic Amber", -- [399]
			"Hewn", -- [400]
			"Genetic Alteration", -- [401]
			"Injection", -- [402]
			"Aim", -- [403]
			"Whirling", -- [404]
			"Hunger", -- [405]
			"Fiery Edge", -- [406]
			"Pierced Armor", -- [407]
			"Loose Quills", -- [408]
			"Savage Vines", -- [409]
			"Rot", -- [410]
			"Blade Dance", -- [411]
			"Chain Hurl", -- [412]
			"On the Hunt", -- [413]
			"Expel Magic: Arcane", -- [414]
			"Expel Magic: Fire", -- [415]
			"Branded", -- [416]
			"Mark of Chaos", -- [417]
			"Slow", -- [418]
			"Crystalline Barrage", -- [419]
			"Petrification", -- [420]
			"The Tenderizer", -- [421]
			"Arcane Wound", -- [422]
			"Blaze", -- [423]
			"Arcane Volatility", -- [424]
			"Marked for Death", -- [425]
			"Attach Slag Bombs", -- [426]
			"Rend and Tear", -- [427]
			"Conflagration", -- [428]
			"Seared Flesh", -- [429]
			"Overwhelming Blows", -- [430]
			"Petrifying Slam", -- [431]
			"Shattered Vertebrae", -- [432]
			"Molten Torrent", -- [433]
			"Rising Flames", -- [434]
			"Charring Breath", -- [435]
			"Warped Armor", -- [436]
			"Acid Torrent", -- [437]
			"Shields Down", -- [438]
			"Bomb", -- [439]
			"Volatile Fire", -- [440]
			"Penetrating Shot", -- [441]
			"Convulsive Shadows", -- [442]
			"Dark Hunt", -- [443]
			"Bloodsoaked Heartseeker", -- [444]
			"Enkindle", -- [445]
			"Prototype Pulse Grenade", -- [446]
			"Delayed Siege Bomb", -- [447]
			"Branded: Displacement", -- [448]
			"Branded: Fortification", -- [449]
			"Branded: Replication", -- [450]
			"Mark of Chaos: Displacement", -- [451]
			"Mark of Chaos: Fortification", -- [452]
			"Mark of Chaos: Replication", -- [453]
			"Slagged", -- [454]
			"Singe", -- [455]
			"Blazing Radiance", -- [456]
			"Unstable Orb", -- [457]
			"Explosive Burst", -- [458]
			"Fel Touch", -- [459]
			"Fel Rage", -- [460]
			"Heart Seeker", -- [461]
			"Fel Corruption", -- [462]
			"Touch of Doom", -- [463]
			"Shared Fate", -- [464]
			"Eye of Anzu", -- [465]
			"Phantasmal Winds", -- [466]
			"Phantasmal Wounds", -- [467]
			"Fel Chakram", -- [468]
			"Fel Bomb", -- [469]
			"Phantasmal Obliteration", -- [470]
			"Reverberating Blow", -- [471]
			"Seed of Destruction", -- [472]
			"Fel Crystal", -- [473]
			"Chains of Fel", -- [474]
			"Black Hole", -- [475]
			"Edict of Condemnation", -- [476]
			"Font of Corruption", -- [477]
			"181099", -- [478]
			"Mannoroth's Gaze", -- [479]
			"Desecrate", -- [480]
			"Shadow Blast", -- [481]
			"Death Brand", -- [482]
			"Shackled Torment", -- [483]
			"Fel Breath", -- [484]
			"Mark of Kazzak", -- [485]
			"184449", -- [486]
			"184450", -- [487]
			"184676", -- [488]
			"185065", -- [489]
			"185066", -- [490]
			"Gift of the Man'ari", -- [491]
			"189030", -- [492]
			"189031", -- [493]
			"189032", -- [494]
			"180164", -- [495]
			"180166", -- [496]
		},
		["isIcon"] = true,
		["selected"] = "",
		["TIMER_TEXT"] = {
			["X_ADJUST"] = 20,
			["Y_ADJUST"] = 26,
			["ANCHOR"] = "BOTTOMRIGHT",
			["USE_OUTLINE"] = false,
			["FONT"] = "Interface\\AddOns\\ElvUI\\media\\fonts\\PT_Sans_Narrow.ttf",
			["USE_SHADOW"] = true,
			["COLOR"] = {
				["TG"] = 1,
				["B"] = 0,
				["TB"] = 1,
				["G"] = 0,
				["TR"] = 1,
				["TO"] = 1,
				["useOpacity"] = true,
				["useBackground"] = true,
				["useText"] = true,
				["O"] = 1,
				["R"] = 0,
			},
			["SCALE"] = 85,
		},
		["COUNTER_TEXT"] = {
			["X_ADJUST"] = -10,
			["Y_ADJUST"] = -15,
			["ANCHOR"] = "TOPLEFT",
			["USE_OUTLINE"] = false,
			["FONT"] = "Interface\\AddOns\\ElvUI\\media\\fonts\\PT_Sans_Narrow.ttf",
			["USE_SHADOW"] = true,
			["COLOR"] = {
				["TG"] = 1,
				["B"] = 0,
				["TB"] = 0,
				["G"] = 0,
				["TR"] = 0,
				["TO"] = 1,
				["useOpacity"] = true,
				["useBackground"] = true,
				["useText"] = true,
				["O"] = 1,
				["R"] = 0,
			},
			["SCALE"] = 70,
		},
		["max_num"] = 5,
		["isColor"] = false,
		["isStacks"] = true,
		["STORED_SETTINGS"] = {
			["Feed Pool"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Crush Armor"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Feral Pounce"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Ensnared"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Tetanus"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Gravity Core"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Electrical Shock"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Inferno Strike"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Lightning Rod"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Twilight Shift"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Melt Armor"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Touch of the Animus"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Infrared Light"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["180166"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["180164"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["189032"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Sticky Resin"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Lightning Prison"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Explosive Burst"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Amethyst Pool"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Poison Fumes"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Blaze of Glory"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Gaseous Bloat"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Enkindle"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Focused Assault"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Instant Heal"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Fire Bomb"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Fixate"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Stone Grip"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Languish"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Poison-Drenched Armor"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Bomb"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Burning Cinders"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Scorching Breath"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Vile Gas"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Mark of Chaos: Replication"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Lingering Gaze"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Jagged Tear"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Flash Freeze"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Dark Hunt"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Grounded"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Jade Petrification"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Mark of Chaos: Displacement"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Crystal Shell"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Consuming Flames"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Flames of Galakrond"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Huddle in Terror"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Sara's Blessing"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Fright"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Paralytic Toxin"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Searing Flame"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Mark of Chaos: Fortification"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Grievous Throw"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Degenerative Bite"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Expose Weakness"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Nightmares"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Glittering Sparks"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Frozen"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Parasitic Infection"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Snobolled!"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Burning Amber"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Searing Plasma"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Mutated Plague"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Shadow Breath"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Branded: Fortification"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Flame Shock"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Branded"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Poison Soaked Shell"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Cobalt Petrification"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Devouring Flames"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["On the Hunt"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Convert"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Mark of Chaos"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Frozen Bolt"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Lightning Charge"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Incinerate Flesh"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Corrupted Essence"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Entrapped"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Froststorm Strike"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Pillaged"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Slashing Talons"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Hewn"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Poison Cloud"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Branded: Displacement"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Shadow Prison"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Pheromone Trail"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Chain Hurl"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Degeneration"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Scary Fog"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["185066"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Seed of Destruction"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Molten Torrent"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Expel Magic: Arcane"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Anima Font"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Pillage"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Encapsulated Pheromones"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Amethyst Petrification"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Flame Torrent"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Gall's Blast"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Impeding Thrust"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Legion Flame"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Toxic Mist"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Summon Ball Lightning"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Convulsive Shadows"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Hunger"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Frozen Solid"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Ignite Flesh"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Aggressive Behavior"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Frost Beacon"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["181099"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Phantasmal Wounds"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Screech"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Ionization"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Seared Flesh"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Bonecracker"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Marked Soul"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Waterlogged"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Overcharge"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Rising Flames"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Smoke Bomb"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Sunder Armor"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Carnivorous Bite"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Garrote"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Charge"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Noise Cancelling"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Amber Prison"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Jasper Chains"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Arterial Cut"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Assassin's Mark"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Scorched"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Robbed Blind"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Unseen Strike"] = {
				["isStacks"] = true,
				["animate"] = false,
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
			["Set to Blow"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Engulfing Magic"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Unstable Orb"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Quake Stomp"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Freeze"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Clouded Mind"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Slag Pot"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Breath of Fear"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Iron Prison"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Ancient Miasma"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Fieroblast"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Savage Vines"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Magnetic Crush"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Blue Beam Precast"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Waterspout"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Heart of Fear"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["184449"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Corruption: Accelerated"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Overloaded Circuits"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Ominous Cackle"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Slagged"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Residue"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Touch of Darkness"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Acid Torrent"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Sundering Blow"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Fel Corruption"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Prototype Pulse Grenade"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Ignite Armor"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Vengeful Strikes"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Sha Globe"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Flames of Passion"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Eyes of the Empress"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Hex of Confusion"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Wings of Flame"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Consuming Terror"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Arcing Energy"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Arcane Resonance"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Rushing Winds"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Brutal Strike"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Explosive Slam"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Vital Flame"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Penetrating Shot"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Bloodletting"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Reshape Life"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Overwhelming Blows"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Toxic Torment"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Twisted Fate"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Discharged Energy"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Matter Swap"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Survival Instincts"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Resonating Amber"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Burning Blood"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Sha Splash"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Frozen Blood"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Flaming Spear"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Petrifying Slam"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Burning Orb"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Tenderizing Strikes"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Dread Shadows"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Pact of the Darkfallen"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Icy Ground"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Mortal Strike"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Magma Blast"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Rend Flesh"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Attach Slag Bombs"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["185065"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Fiery Edge"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Crimson Wake"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Shield Bash"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Debilitation"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Fel Touch"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["184676"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Touch of Sha"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Impaired Eyesight"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Rot"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["189030"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Dead Zone"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Crashing Thunder"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Frostburn Formula"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Searing Seeds"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Fel Crystal"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Freezing Breath"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Pungency"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Corrupted Prison"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Disrupting Shadows"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Rend and Tear"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Napalm Shell"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Reverberating Blow"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Wrack"] = {
				["isStacks"] = true,
				["isAliveTime"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["isFullDuration"] = true,
				["timer"] = true,
			},
			["Cobalt Mine Blast"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Heroic Will"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Explosive Tar"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Storm Unleashed"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Body Slam"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Storm Cloud"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Font of Corruption"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Suppression"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Dread Spray"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Swirling Winds"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Keen Eyesight"] = {
				["isStacks"] = false,
				["animate"] = false,
				["isIcon"] = false,
				["isColor"] = false,
				["timer"] = false,
			},
			["Bloodsoaked Heartseeker"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Touch of Doom"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Poison Bomb"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Shackled Torment"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Shadow Blast"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Fel Rage"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Crossed Over"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Warped Armor"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Deadly Plague"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Constricting Chains"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Black Hole"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Reaching Attack"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Corrupted Healing"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Fel Breath"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Gas Spore"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Mark of the Fallen Champion"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Siphon Soul"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Burning Bile"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Blood Corruption: Earth"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Shattered Vertebrae"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Kick Shell"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Incineration Security Measure"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Overcharged"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["The Widow's Kiss"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Spray"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Stone Gaze"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Unleashed Wrath"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Searing Light"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Arcing Lightning"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Harvest Soul"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Dulled Synapses"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Loose Quills"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Focused Energy"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Ravage"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Mangle"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Toxic Link"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Corrosion"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Red Beam Precast"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Shadow Weakness"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Fading Light"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Fatal Strike"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Crystalline Barrage"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Gut Spray"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Ice Tomb"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Sonic Screech"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Thundering Throw"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Swarming Shadows"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Ice Storm"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Force of Will Precast"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Whirling"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Serpent's Vitality"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Mark of Anguish"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Triple Puncture"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Conflagration"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Wounded Pride"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Grasping Tendrils"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["108220"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Heart Seeker"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Shockwave"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Shared Fate"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Arcane Shock"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Fragile Bones"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Slow"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Shadowburn"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Jagged Knife"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Boiling Blood"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Slumber Spores"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Volatile Fire"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Quicksand"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Pursuit"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Maim"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Wildfire Spark"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Cinders"] = {
				["isStacks"] = true,
				["animate"] = false,
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
			["Parasitic Growth"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Phantasmal Obliteration"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Consuming Darkness"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Lash of Anguish"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Looming Darkness"] = {
				["isStacks"] = true,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Delirious Slash"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Mannoroth's Gaze"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Low Health"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Sha Sear"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Branded: Replication"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Panic"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Break"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Blazing Claw"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Blazing Sunlight"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Static Shock"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Impaled"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Shattered Ice"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Keg Toss"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Shields Down"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Shroud of Sorrow"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Mesmerize"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Jasper Petrification"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Grievous Bite"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Fiery Web Silk"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Engulfing Darkness"] = {
				["isStacks"] = true,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Rune of Blood"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Corrosive Blast"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Mistress' Kiss"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Slimed"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Eternal Darkness"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Shadowed Soul"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Gusting Bomb"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Necrotic Plague"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Blistering Heat"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Sunbeam"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Weakened Soul"] = {
				["isStacks"] = false,
				["animate"] = false,
				["isIcon"] = false,
				["isColor"] = false,
				["timer"] = true,
			},
			["Faded Into Twilight"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Penetrating Bolt"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Terrorize"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Caustic Amber"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Cry of Terror"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Closed Circuit"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Corruption Kick"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Rending Charge"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Fan of Flames"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Soothing Breeze"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Cutter Laser Target"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Delayed Siege Bomb"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Trapped!"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Iron Tomb"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Epicenter"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Icebound Fortitude"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Deep Corruption"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Shadow Conductor"] = {
				["isStacks"] = true,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Death Brand"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Gouge"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Lightning Storm"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Pinned Down"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Focused Defense"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Gift of the Man'ari"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Foul Geyser"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Lightning Bolt"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Ancient Barrier"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Fiery Grip"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Arcane Volatility"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Toxic Spores"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Blazing Radiance"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Hydro Lance"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Burning Orbs"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Improved Synapses"] = {
				["isStacks"] = false,
				["animate"] = false,
				["isIcon"] = false,
				["isColor"] = false,
				["timer"] = false,
			},
			["Frost Breath"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Gastric Bloat"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Whispers of Hethiss"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Visions of Demise"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Watery Entrenchment"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Petrified"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Cho's Blast"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Torment"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Thick Bones"] = {
				["isStacks"] = false,
				["animate"] = false,
				["isIcon"] = false,
				["isColor"] = false,
				["timer"] = false,
			},
			["Blaze"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Singe"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Energizing Smash"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Phantasmal Winds"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["105171"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["184450"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Locked On"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Mutated Infection"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Burning Wound"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Blood of Neltharion"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Arcane Velocity"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Acid-Drenched Mandibles"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Anima Ring"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Icy Shadows"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Blue Rays"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Lightning Conductor"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Injection"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Blackout"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Serious Wound"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Frostbite"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Spinning Pain Spike"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Mark of Kazzak"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Flame Arrows"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Pheromones of Zeal"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Exposed Veins"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Instability"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Body Heat"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Defile"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Decapitate"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Corrosive Resin"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Essence of the Blood Queen"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Charring Breath"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Blood Corruption: Death"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Overload"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Soul Fragment"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Exhale"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Frail Soul"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Sonic Breath"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Icy Blood"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Chilled to the Bone"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Flame Breath"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Edict of Condemnation"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Beast of Nightmares"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Sand Trap"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Twilight Burst"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Degradation"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Volatile Ooze Adhesive"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Aim"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Arcane Wound"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Dire Fixation"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Bright Light"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Static Wound"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Arctic Freeze"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Fel Chakram"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Acid Breath"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Squall Line"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Pierced Armor"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Web Wrap"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Life Drain"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Biting Chill"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Tormented"] = {
				["isStacks"] = false,
				["animate"] = true,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Rot Armor"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Touch of Light"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Malevolent Strikes"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Focused Lightning"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Plucked"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Voodoo Doll"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Bitter Thoughts"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Genetic Alteration"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Electrified Waters"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Lightning Lash"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Black Blood of Go'rath"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Iron Roots"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Roaring Flame"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Clear Mind"] = {
				["isStacks"] = false,
				["animate"] = false,
				["isIcon"] = false,
				["isColor"] = false,
				["timer"] = false,
			},
			["Overwhelming Assault"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Wind Storm"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Marked for Death"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Lesson of Icarus"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["The Tenderizer"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Yellow Beam Precast"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Blade Dance"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Naked and Afraid"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Electrostatic Charge"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Electrical Storm"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Impale"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Tracking"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Malformed Blood"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Penetrating Cold"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Defiled Ground"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Twilight Barrage"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Dark Parasite"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Crystal Prison Trap Effect"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Rend"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["189031"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Fracture"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Fel Bomb"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Gravity Bomb"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Pheromones"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Laser Burn"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Hunter's Mark"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Infest"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Frost Blast"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Tail Lash"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Eye of Anzu"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Necrotic Strike"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Fully Mutated"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Slicing Gale"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Gushing Wound"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Gravity Crush"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Expel Magic: Fire"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Caustic Blood"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Chains of Fel"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Ice Patch"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Bathed in Light"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Venom Bolt Volley"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Superheated"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Consuming Magic"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Petrification"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Desecrate"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
		},
		["version"] = 30,
		["animate"] = false,
		["timer"] = true,
		["isName"] = false,
		["xAdjust"] = -46,
		["yAdjust"] = -36,
	},
	["OMIT_PLAYER_TARGETS"] = false,
}
VUHDO_PANEL_SETUP = {
	{
		["OVERHEAL_TEXT"] = {
			["show"] = false,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 443.374938964844,
			["x"] = 611.27978515625,
			["orientation"] = "BOTTOMRIGHT",
			["relativePoint"] = "BOTTOMLEFT",
			["scale"] = 1,
			["height"] = 34.0000152587891,
			["growth"] = "BOTTOMRIGHT",
			["width"] = 88.0000152587891,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -22,
			["point"] = "BOTTOMLEFT",
			["scale"] = 0.7,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "BACKGROUND",
		["MODEL"] = {
			["groups"] = {
				5, -- [1]
				4, -- [2]
				3, -- [3]
				2, -- [4]
				1, -- [5]
			},
			["ordering"] = 0,
			["sort"] = 3,
			["isReverse"] = true,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 1,
				["G"] = 0,
				["B"] = 0,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 1,
				["G"] = 0,
				["B"] = 0,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = 180.9778,
			["position"] = 1,
			["SCALE"] = 1,
			["relativePoint"] = "LEFT",
			["point"] = "LEFT",
			["y"] = -211.0492,
		},
		["PANEL_COLOR"] = {
			["classColorsHeader"] = false,
			["classColorsBackHeader"] = false,
			["TARGET"] = {
				["TR"] = 1,
				["TO"] = 1,
				["TB"] = 1,
				["useText"] = true,
				["TG"] = 1,
			},
			["BORDER"] = {
				["edgeSize"] = 1,
				["R"] = 0,
				["G"] = 0,
				["useBackground"] = true,
				["B"] = 0,
				["useOpacity"] = true,
				["file"] = "Interface\\AddOns\\ElvUI\\media\\textures\\glowTex.tga",
				["O"] = 0.46,
				["insets"] = 0,
			},
			["barTexture"] = "VuhDo - Polished Wood",
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["useBackground"] = true,
				["textSize"] = 10,
				["useText"] = true,
				["O"] = 0.4,
				["B"] = 1,
			},
			["TEXT"] = {
				["outline"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Interface\\AddOns\\ElvUI\\media\\fonts\\PT_Sans_Narrow.ttf",
				["textSize"] = 13,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 12,
				["maxChars"] = 0,
			},
			["TOT"] = {
				["TR"] = 1,
				["TO"] = 1,
				["TB"] = 1,
				["useText"] = true,
				["TG"] = 1,
			},
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 0.4,
				["G"] = 0,
				["B"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 62,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["headerWidth"] = 100,
			["targetWidth"] = 30,
			["scale"] = 1.1,
			["barHeight"] = 34,
			["barWidth"] = 88,
			["showTot"] = false,
			["targetSpacing"] = 3,
			["isPlayerOnTop"] = true,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = false,
			["damFlashFactor"] = 0.55,
			["sideLeftWidth"] = 6,
			["arrangeHorizontal"] = false,
			["headerSpacing"] = 5,
			["borderGapX"] = 0,
			["manaBarHeight"] = 3,
			["totSpacing"] = 3,
			["totWidth"] = 30,
			["showHeaders"] = false,
			["isDamFlash"] = true,
			["maxColumnsWhenStructured"] = 5,
			["sideRightWidth"] = 6,
			["maxRowsWhenLoose"] = 5,
			["borderGapY"] = 0,
			["columnSpacing"] = 1,
			["targetOrientation"] = 1,
			["rowSpacing"] = 1,
			["alignBottom"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "CENTER+CENTER",
			["yAdjust"] = 0,
			["xAdjust"] = 0,
			["_spacing"] = 24.9999580383301,
			["showPetOwners"] = true,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = true,
			["position"] = 4,
			["showTotalHp"] = false,
			["mode"] = 2,
			["verbose"] = false,
		},
	}, -- [1]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = false,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 626.8999,
			["x"] = 858.7984,
			["orientation"] = "BOTTOMRIGHT",
			["relativePoint"] = "BOTTOMLEFT",
			["scale"] = 1,
			["height"] = 100,
			["growth"] = "BOTTOMRIGHT",
			["width"] = 0.9999,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "BOTTOM",
			["scale"] = 0.7,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "BACKGROUND",
		["MODEL"] = {
			["ordering"] = 0,
			["sort"] = 3,
			["isReverse"] = true,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 1,
				["G"] = 0,
				["B"] = 0,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 1,
				["G"] = 0,
				["B"] = 0,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = -4.286,
			["position"] = 1,
			["SCALE"] = 1,
			["relativePoint"] = "BOTTOMRIGHT",
			["point"] = "BOTTOMRIGHT",
			["y"] = 225.514,
		},
		["PANEL_COLOR"] = {
			["classColorsHeader"] = false,
			["classColorsBackHeader"] = false,
			["TARGET"] = {
				["TR"] = 1,
				["TO"] = 1,
				["TB"] = 1,
				["useText"] = true,
				["TG"] = 1,
			},
			["BORDER"] = {
				["edgeSize"] = 1,
				["R"] = 0,
				["G"] = 0,
				["useBackground"] = true,
				["B"] = 0,
				["useOpacity"] = true,
				["file"] = "Interface\\AddOns\\ElvUI\\media\\textures\\glowTex.tga",
				["O"] = 0.46,
				["insets"] = 0,
			},
			["barTexture"] = "VuhDo - Polished Wood",
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["useBackground"] = true,
				["textSize"] = 10,
				["useText"] = true,
				["O"] = 0.4,
				["B"] = 1,
			},
			["TEXT"] = {
				["outline"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["textSize"] = 12,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["maxChars"] = 0,
			},
			["TOT"] = {
				["TR"] = 1,
				["TO"] = 1,
				["TB"] = 1,
				["useText"] = true,
				["TG"] = 1,
			},
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 0.4,
				["G"] = 0,
				["B"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 68,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["headerWidth"] = 100,
			["targetWidth"] = 109,
			["scale"] = 1.1,
			["barHeight"] = 34,
			["barWidth"] = 1,
			["showTot"] = false,
			["targetSpacing"] = 3,
			["isPlayerOnTop"] = false,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = true,
			["damFlashFactor"] = 0.75,
			["sideLeftWidth"] = 6,
			["arrangeHorizontal"] = false,
			["headerSpacing"] = 5,
			["borderGapX"] = 0,
			["manaBarHeight"] = 3,
			["totSpacing"] = 3,
			["totWidth"] = 30,
			["showHeaders"] = false,
			["isDamFlash"] = true,
			["maxColumnsWhenStructured"] = 5,
			["sideRightWidth"] = 6,
			["maxRowsWhenLoose"] = 5,
			["borderGapY"] = 0,
			["columnSpacing"] = 1,
			["targetOrientation"] = 1,
			["rowSpacing"] = 1,
			["alignBottom"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "BOTTOMRIGHT+BOTTOMRIGHT",
			["yAdjust"] = 0,
			["_spacing"] = 19.999,
			["xAdjust"] = 0,
			["showPetOwners"] = true,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
			["verbose"] = false,
		},
	}, -- [2]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = false,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 220.6359,
			["x"] = 1071.816,
			["orientation"] = "BOTTOMRIGHT",
			["relativePoint"] = "BOTTOMLEFT",
			["scale"] = 1,
			["height"] = 19.9999,
			["growth"] = "BOTTOMRIGHT",
			["width"] = 1,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "BOTTOM",
			["scale"] = 0.7,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "BACKGROUND",
		["MODEL"] = {
			["sort"] = 3,
			["ordering"] = 0,
			["isReverse"] = true,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 1,
				["G"] = 0,
				["B"] = 0,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 1,
				["G"] = 0,
				["B"] = 0,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = -4.286,
			["position"] = 1,
			["SCALE"] = 1,
			["relativePoint"] = "BOTTOMRIGHT",
			["point"] = "BOTTOMRIGHT",
			["y"] = 225.514,
		},
		["PANEL_COLOR"] = {
			["classColorsHeader"] = false,
			["classColorsBackHeader"] = false,
			["TARGET"] = {
				["TR"] = 1,
				["TO"] = 1,
				["TB"] = 1,
				["useText"] = true,
				["TG"] = 1,
			},
			["BORDER"] = {
				["edgeSize"] = 1,
				["R"] = 0,
				["G"] = 0,
				["useBackground"] = true,
				["B"] = 0,
				["useOpacity"] = true,
				["file"] = "Interface\\AddOns\\ElvUI\\media\\textures\\glowTex.tga",
				["O"] = 0.46,
				["insets"] = 0,
			},
			["barTexture"] = "VuhDo - Polished Wood",
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["useBackground"] = true,
				["textSize"] = 10,
				["useText"] = true,
				["O"] = 0.4,
				["B"] = 1,
			},
			["TEXT"] = {
				["outline"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["maxChars"] = 0,
			},
			["TOT"] = {
				["TR"] = 1,
				["TO"] = 1,
				["TB"] = 1,
				["useText"] = true,
				["TG"] = 1,
			},
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 0.4,
				["G"] = 0,
				["B"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 68,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["headerWidth"] = 100,
			["targetWidth"] = 99,
			["scale"] = 1.1,
			["barHeight"] = 34,
			["barWidth"] = 1,
			["showTot"] = false,
			["targetSpacing"] = 3,
			["isPlayerOnTop"] = false,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = true,
			["damFlashFactor"] = 0.75,
			["sideLeftWidth"] = 6,
			["arrangeHorizontal"] = false,
			["headerSpacing"] = 5,
			["borderGapX"] = 0,
			["manaBarHeight"] = 3,
			["totSpacing"] = 3,
			["totWidth"] = 30,
			["showHeaders"] = false,
			["isDamFlash"] = true,
			["maxColumnsWhenStructured"] = 5,
			["sideRightWidth"] = 6,
			["maxRowsWhenLoose"] = 5,
			["borderGapY"] = 0,
			["columnSpacing"] = 1,
			["targetOrientation"] = 1,
			["rowSpacing"] = 1,
			["alignBottom"] = false,
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
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
			["verbose"] = false,
		},
	}, -- [3]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = false,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 673.1196,
			["x"] = 674.5803,
			["orientation"] = "BOTTOMRIGHT",
			["relativePoint"] = "BOTTOMLEFT",
			["scale"] = 1,
			["height"] = 21.2499,
			["growth"] = "BOTTOMRIGHT",
			["width"] = 17,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "BOTTOM",
			["scale"] = 0.7,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "BACKGROUND",
		["MODEL"] = {
			["sort"] = 3,
			["ordering"] = 0,
			["isReverse"] = true,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 1,
				["G"] = 0,
				["B"] = 0,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 1,
				["G"] = 0,
				["B"] = 0,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = -311.287,
			["position"] = 1,
			["SCALE"] = 1,
			["relativePoint"] = "CENTER",
			["point"] = "CENTER",
			["y"] = -209.387,
		},
		["PANEL_COLOR"] = {
			["classColorsHeader"] = false,
			["classColorsBackHeader"] = false,
			["TARGET"] = {
				["TR"] = 1,
				["TO"] = 1,
				["TB"] = 1,
				["useText"] = true,
				["TG"] = 1,
			},
			["BORDER"] = {
				["edgeSize"] = 1,
				["R"] = 0,
				["G"] = 0,
				["useBackground"] = true,
				["B"] = 0,
				["useOpacity"] = true,
				["file"] = "Interface\\AddOns\\ElvUI\\media\\textures\\glowTex.tga",
				["O"] = 0.46,
				["insets"] = 0,
			},
			["barTexture"] = "VuhDo - Polished Wood",
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["useBackground"] = true,
				["textSize"] = 10,
				["useText"] = true,
				["O"] = 0.4,
				["B"] = 1,
			},
			["TEXT"] = {
				["outline"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["maxChars"] = 0,
			},
			["TOT"] = {
				["TR"] = 1,
				["TO"] = 1,
				["TB"] = 1,
				["useText"] = true,
				["TG"] = 1,
			},
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 0.4,
				["G"] = 0,
				["B"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 68,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["headerWidth"] = 100,
			["targetWidth"] = 81,
			["scale"] = 1.1,
			["barHeight"] = 34,
			["barWidth"] = 17,
			["showTot"] = false,
			["targetSpacing"] = 4,
			["isPlayerOnTop"] = false,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = true,
			["damFlashFactor"] = 0.75,
			["sideLeftWidth"] = 6,
			["arrangeHorizontal"] = false,
			["headerSpacing"] = 5,
			["borderGapX"] = 0,
			["manaBarHeight"] = 3,
			["totSpacing"] = 3,
			["totWidth"] = 30,
			["showHeaders"] = false,
			["isDamFlash"] = true,
			["maxColumnsWhenStructured"] = 5,
			["sideRightWidth"] = 6,
			["maxRowsWhenLoose"] = 5,
			["borderGapY"] = 0,
			["columnSpacing"] = 1,
			["targetOrientation"] = 1,
			["rowSpacing"] = 1,
			["alignBottom"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "BOTTOMRIGHT+BOTTOMRIGHT",
			["yAdjust"] = 0,
			["xAdjust"] = 0,
			["_spacing"] = 18,
			["showPetOwners"] = true,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
			["verbose"] = false,
		},
	}, -- [4]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = false,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 442.585205078125,
			["x"] = 700.333923339844,
			["scale"] = 1,
			["relativePoint"] = "BOTTOMLEFT",
			["orientation"] = "BOTTOMRIGHT",
			["height"] = 69.0000152587891,
			["growth"] = "BOTTOMRIGHT",
			["width"] = 87.999984741211,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "BOTTOM",
			["scale"] = 0.7,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "BACKGROUND",
		["MODEL"] = {
			["groups"] = {
				42, -- [1]
			},
			["sort"] = 3,
			["ordering"] = 0,
			["isReverse"] = true,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 1,
				["G"] = 0,
				["B"] = 0,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 1,
				["G"] = 0,
				["B"] = 0,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = -4.286,
			["position"] = 1,
			["SCALE"] = 1,
			["relativePoint"] = "BOTTOMRIGHT",
			["point"] = "BOTTOMRIGHT",
			["y"] = 225.514,
		},
		["PANEL_COLOR"] = {
			["classColorsHeader"] = false,
			["classColorsBackHeader"] = false,
			["TARGET"] = {
				["TR"] = 1,
				["TO"] = 1,
				["TB"] = 1,
				["useText"] = true,
				["TG"] = 1,
			},
			["BORDER"] = {
				["edgeSize"] = 1,
				["R"] = 0,
				["G"] = 0,
				["useBackground"] = true,
				["B"] = 0,
				["useOpacity"] = true,
				["file"] = "Interface\\AddOns\\ElvUI\\media\\textures\\glowTex.tga",
				["O"] = 0,
				["insets"] = 0,
			},
			["barTexture"] = "VuhDo - Polished Wood",
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["useBackground"] = true,
				["textSize"] = 10,
				["useText"] = true,
				["O"] = 0.4,
				["B"] = 1,
			},
			["TEXT"] = {
				["outline"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["maxChars"] = 0,
			},
			["TOT"] = {
				["TR"] = 1,
				["TO"] = 1,
				["TB"] = 1,
				["useText"] = true,
				["TG"] = 1,
			},
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 0,
				["G"] = 0,
				["B"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 68,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["headerWidth"] = 100,
			["targetWidth"] = 30,
			["scale"] = 1.1,
			["barHeight"] = 34,
			["barWidth"] = 88,
			["showTot"] = false,
			["targetSpacing"] = 3,
			["isPlayerOnTop"] = false,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = false,
			["damFlashFactor"] = 0.75,
			["sideLeftWidth"] = 6,
			["arrangeHorizontal"] = false,
			["headerSpacing"] = 5,
			["borderGapX"] = 0,
			["manaBarHeight"] = 3,
			["totSpacing"] = 3,
			["totWidth"] = 30,
			["showHeaders"] = false,
			["isDamFlash"] = true,
			["maxColumnsWhenStructured"] = 5,
			["sideRightWidth"] = 6,
			["maxRowsWhenLoose"] = 5,
			["borderGapY"] = 0,
			["columnSpacing"] = 1,
			["targetOrientation"] = 1,
			["rowSpacing"] = 1,
			["alignBottom"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "BOTTOMRIGHT+BOTTOMRIGHT",
			["yAdjust"] = 0,
			["_spacing"] = 18.0000114440918,
			["xAdjust"] = 0,
			["showPetOwners"] = true,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
			["verbose"] = false,
		},
	}, -- [5]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = false,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 396.466,
			["x"] = 989.6162,
			["orientation"] = "BOTTOMRIGHT",
			["relativePoint"] = "BOTTOMLEFT",
			["scale"] = 1,
			["height"] = 131,
			["growth"] = "BOTTOMRIGHT",
			["width"] = 87.9999,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "BOTTOM",
			["scale"] = 0.7,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "BACKGROUND",
		["MODEL"] = {
			["sort"] = 3,
			["ordering"] = 0,
			["isReverse"] = true,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 1,
				["G"] = 0,
				["B"] = 0,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 1,
				["G"] = 0,
				["B"] = 0,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = -4.286,
			["position"] = 1,
			["SCALE"] = 1,
			["relativePoint"] = "BOTTOMRIGHT",
			["point"] = "BOTTOMRIGHT",
			["y"] = 225.514,
		},
		["PANEL_COLOR"] = {
			["classColorsHeader"] = false,
			["classColorsBackHeader"] = false,
			["TARGET"] = {
				["TR"] = 1,
				["TO"] = 1,
				["TB"] = 1,
				["useText"] = true,
				["TG"] = 1,
			},
			["BORDER"] = {
				["edgeSize"] = 1,
				["R"] = 0,
				["G"] = 0,
				["useBackground"] = true,
				["B"] = 0,
				["useOpacity"] = true,
				["file"] = "Interface\\AddOns\\ElvUI\\media\\textures\\glowTex.tga",
				["O"] = 0.46,
				["insets"] = 0,
			},
			["barTexture"] = "VuhDo - Polished Wood",
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["useBackground"] = true,
				["textSize"] = 10,
				["useText"] = true,
				["O"] = 0.4,
				["B"] = 1,
			},
			["TEXT"] = {
				["outline"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["maxChars"] = 0,
			},
			["TOT"] = {
				["TR"] = 1,
				["TO"] = 1,
				["TB"] = 1,
				["useText"] = true,
				["TG"] = 1,
			},
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 0.4,
				["G"] = 0,
				["B"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 68,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["headerWidth"] = 100,
			["targetWidth"] = 30,
			["scale"] = 1.1,
			["barHeight"] = 34,
			["barWidth"] = 88,
			["showTot"] = false,
			["targetSpacing"] = 3,
			["isPlayerOnTop"] = false,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = false,
			["damFlashFactor"] = 0.75,
			["sideLeftWidth"] = 6,
			["arrangeHorizontal"] = false,
			["headerSpacing"] = 5,
			["borderGapX"] = 0,
			["manaBarHeight"] = 3,
			["totSpacing"] = 3,
			["totWidth"] = 30,
			["showHeaders"] = true,
			["isDamFlash"] = true,
			["maxColumnsWhenStructured"] = 5,
			["sideRightWidth"] = 6,
			["maxRowsWhenLoose"] = 5,
			["borderGapY"] = 0,
			["columnSpacing"] = 1,
			["targetOrientation"] = 1,
			["rowSpacing"] = 1,
			["alignBottom"] = false,
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
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
			["verbose"] = false,
		},
	}, -- [6]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = false,
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
			["growth"] = "BOTTOMRIGHT",
			["width"] = 200,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "BOTTOM",
			["scale"] = 0.7,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "BACKGROUND",
		["MODEL"] = {
			["sort"] = 3,
			["ordering"] = 0,
			["isReverse"] = true,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 1,
				["G"] = 0,
				["B"] = 0,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 1,
				["G"] = 0,
				["B"] = 0,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = -4.286,
			["position"] = 1,
			["SCALE"] = 1,
			["relativePoint"] = "BOTTOMRIGHT",
			["point"] = "BOTTOMRIGHT",
			["y"] = 225.514,
		},
		["PANEL_COLOR"] = {
			["classColorsHeader"] = false,
			["classColorsBackHeader"] = false,
			["TARGET"] = {
				["TR"] = 1,
				["TO"] = 1,
				["TB"] = 1,
				["useText"] = true,
				["TG"] = 1,
			},
			["BORDER"] = {
				["edgeSize"] = 1,
				["R"] = 0,
				["G"] = 0,
				["useBackground"] = true,
				["B"] = 0,
				["useOpacity"] = true,
				["file"] = "Interface\\AddOns\\ElvUI\\media\\textures\\glowTex.tga",
				["O"] = 0.46,
				["insets"] = 0,
			},
			["barTexture"] = "VuhDo - Polished Wood",
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["useBackground"] = true,
				["textSize"] = 10,
				["useText"] = true,
				["O"] = 0.4,
				["B"] = 1,
			},
			["TEXT"] = {
				["outline"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["maxChars"] = 0,
			},
			["TOT"] = {
				["TR"] = 1,
				["TO"] = 1,
				["TB"] = 1,
				["useText"] = true,
				["TG"] = 1,
			},
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 0.4,
				["G"] = 0,
				["B"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 68,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["headerWidth"] = 100,
			["targetWidth"] = 30,
			["scale"] = 1.1,
			["barHeight"] = 34,
			["barWidth"] = 88,
			["showTot"] = false,
			["targetSpacing"] = 3,
			["isPlayerOnTop"] = false,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = false,
			["damFlashFactor"] = 0.75,
			["sideLeftWidth"] = 6,
			["arrangeHorizontal"] = false,
			["headerSpacing"] = 5,
			["borderGapX"] = 0,
			["manaBarHeight"] = 3,
			["totSpacing"] = 3,
			["totWidth"] = 30,
			["showHeaders"] = true,
			["isDamFlash"] = true,
			["maxColumnsWhenStructured"] = 5,
			["sideRightWidth"] = 6,
			["maxRowsWhenLoose"] = 5,
			["borderGapY"] = 0,
			["columnSpacing"] = 1,
			["targetOrientation"] = 1,
			["rowSpacing"] = 1,
			["alignBottom"] = false,
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
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
			["verbose"] = false,
		},
	}, -- [7]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = false,
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
			["growth"] = "BOTTOMRIGHT",
			["width"] = 200,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "BOTTOM",
			["scale"] = 0.7,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "BACKGROUND",
		["MODEL"] = {
			["sort"] = 3,
			["ordering"] = 0,
			["isReverse"] = true,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 1,
				["G"] = 0,
				["B"] = 0,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 1,
				["G"] = 0,
				["B"] = 0,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = -4.286,
			["position"] = 1,
			["SCALE"] = 1,
			["relativePoint"] = "BOTTOMRIGHT",
			["point"] = "BOTTOMRIGHT",
			["y"] = 225.514,
		},
		["PANEL_COLOR"] = {
			["classColorsHeader"] = false,
			["classColorsBackHeader"] = false,
			["TARGET"] = {
				["TR"] = 1,
				["TO"] = 1,
				["TB"] = 1,
				["useText"] = true,
				["TG"] = 1,
			},
			["BORDER"] = {
				["edgeSize"] = 1,
				["R"] = 0,
				["G"] = 0,
				["useBackground"] = true,
				["B"] = 0,
				["useOpacity"] = true,
				["file"] = "Interface\\AddOns\\ElvUI\\media\\textures\\glowTex.tga",
				["O"] = 0.46,
				["insets"] = 0,
			},
			["barTexture"] = "VuhDo - Polished Wood",
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["useBackground"] = true,
				["textSize"] = 10,
				["useText"] = true,
				["O"] = 0.4,
				["B"] = 1,
			},
			["TEXT"] = {
				["outline"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["maxChars"] = 0,
			},
			["TOT"] = {
				["TR"] = 1,
				["TO"] = 1,
				["TB"] = 1,
				["useText"] = true,
				["TG"] = 1,
			},
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 0.4,
				["G"] = 0,
				["B"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 68,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["headerWidth"] = 100,
			["targetWidth"] = 30,
			["scale"] = 1.1,
			["barHeight"] = 34,
			["barWidth"] = 88,
			["showTot"] = false,
			["targetSpacing"] = 3,
			["isPlayerOnTop"] = false,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = false,
			["damFlashFactor"] = 0.75,
			["sideLeftWidth"] = 6,
			["arrangeHorizontal"] = false,
			["headerSpacing"] = 5,
			["borderGapX"] = 0,
			["manaBarHeight"] = 3,
			["totSpacing"] = 3,
			["totWidth"] = 30,
			["showHeaders"] = true,
			["isDamFlash"] = true,
			["maxColumnsWhenStructured"] = 5,
			["sideRightWidth"] = 6,
			["maxRowsWhenLoose"] = 5,
			["borderGapY"] = 0,
			["columnSpacing"] = 1,
			["targetOrientation"] = 1,
			["rowSpacing"] = 1,
			["alignBottom"] = false,
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
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
			["verbose"] = false,
		},
	}, -- [8]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = false,
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
			["growth"] = "BOTTOMRIGHT",
			["width"] = 200,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "BOTTOM",
			["scale"] = 0.7,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "BACKGROUND",
		["MODEL"] = {
			["sort"] = 3,
			["ordering"] = 0,
			["isReverse"] = true,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 1,
				["G"] = 0,
				["B"] = 0,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 1,
				["G"] = 0,
				["B"] = 0,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = -4.286,
			["position"] = 1,
			["SCALE"] = 1,
			["relativePoint"] = "BOTTOMRIGHT",
			["point"] = "BOTTOMRIGHT",
			["y"] = 225.514,
		},
		["PANEL_COLOR"] = {
			["classColorsHeader"] = false,
			["classColorsBackHeader"] = false,
			["TARGET"] = {
				["TR"] = 1,
				["TO"] = 1,
				["TB"] = 1,
				["useText"] = true,
				["TG"] = 1,
			},
			["BORDER"] = {
				["edgeSize"] = 1,
				["R"] = 0,
				["G"] = 0,
				["useBackground"] = true,
				["B"] = 0,
				["useOpacity"] = true,
				["file"] = "Interface\\AddOns\\ElvUI\\media\\textures\\glowTex.tga",
				["O"] = 0.46,
				["insets"] = 0,
			},
			["barTexture"] = "VuhDo - Polished Wood",
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["useBackground"] = true,
				["textSize"] = 10,
				["useText"] = true,
				["O"] = 0.4,
				["B"] = 1,
			},
			["TEXT"] = {
				["outline"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["maxChars"] = 0,
			},
			["TOT"] = {
				["TR"] = 1,
				["TO"] = 1,
				["TB"] = 1,
				["useText"] = true,
				["TG"] = 1,
			},
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 0.4,
				["G"] = 0,
				["B"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 68,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["headerWidth"] = 100,
			["targetWidth"] = 30,
			["scale"] = 1.1,
			["barHeight"] = 34,
			["barWidth"] = 88,
			["showTot"] = false,
			["targetSpacing"] = 3,
			["isPlayerOnTop"] = false,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = false,
			["damFlashFactor"] = 0.75,
			["sideLeftWidth"] = 6,
			["arrangeHorizontal"] = false,
			["headerSpacing"] = 5,
			["borderGapX"] = 0,
			["manaBarHeight"] = 3,
			["totSpacing"] = 3,
			["totWidth"] = 30,
			["showHeaders"] = true,
			["isDamFlash"] = true,
			["maxColumnsWhenStructured"] = 5,
			["sideRightWidth"] = 6,
			["maxRowsWhenLoose"] = 5,
			["borderGapY"] = 0,
			["columnSpacing"] = 1,
			["targetOrientation"] = 1,
			["rowSpacing"] = 1,
			["alignBottom"] = false,
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
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
			["verbose"] = false,
		},
	}, -- [9]
	{
		["OVERHEAL_TEXT"] = {
			["show"] = false,
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
			["growth"] = "BOTTOMRIGHT",
			["width"] = 200,
		},
		["RAID_ICON"] = {
			["show"] = true,
			["yAdjust"] = -20,
			["point"] = "BOTTOM",
			["scale"] = 0.7,
			["xAdjust"] = 0,
		},
		["frameStrata"] = "BACKGROUND",
		["MODEL"] = {
			["sort"] = 3,
			["ordering"] = 0,
			["isReverse"] = true,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 1,
				["G"] = 0,
				["B"] = 0,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 1,
				["G"] = 0,
				["B"] = 0,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = -4.286,
			["position"] = 1,
			["SCALE"] = 1,
			["relativePoint"] = "BOTTOMRIGHT",
			["point"] = "BOTTOMRIGHT",
			["y"] = 225.514,
		},
		["PANEL_COLOR"] = {
			["classColorsHeader"] = false,
			["classColorsBackHeader"] = false,
			["TARGET"] = {
				["TR"] = 1,
				["TO"] = 1,
				["TB"] = 1,
				["useText"] = true,
				["TG"] = 1,
			},
			["BORDER"] = {
				["edgeSize"] = 1,
				["R"] = 0,
				["G"] = 0,
				["useBackground"] = true,
				["B"] = 0,
				["useOpacity"] = true,
				["file"] = "Interface\\AddOns\\ElvUI\\media\\textures\\glowTex.tga",
				["O"] = 0.46,
				["insets"] = 0,
			},
			["barTexture"] = "VuhDo - Polished Wood",
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["useBackground"] = true,
				["textSize"] = 10,
				["useText"] = true,
				["O"] = 0.4,
				["B"] = 1,
			},
			["TEXT"] = {
				["outline"] = false,
				["useText"] = true,
				["useOpacity"] = true,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["maxChars"] = 0,
			},
			["TOT"] = {
				["TR"] = 1,
				["TO"] = 1,
				["TB"] = 1,
				["useText"] = true,
				["TG"] = 1,
			},
			["BACK"] = {
				["useOpacity"] = true,
				["R"] = 0,
				["useBackground"] = true,
				["O"] = 0.4,
				["G"] = 0,
				["B"] = 0,
			},
		},
		["HOTS"] = {
			["size"] = 68,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["headerWidth"] = 100,
			["targetWidth"] = 30,
			["scale"] = 1.1,
			["barHeight"] = 34,
			["barWidth"] = 88,
			["showTot"] = false,
			["targetSpacing"] = 3,
			["isPlayerOnTop"] = false,
			["ommitEmptyWhenStructured"] = true,
			["showTarget"] = false,
			["damFlashFactor"] = 0.75,
			["sideLeftWidth"] = 6,
			["arrangeHorizontal"] = false,
			["headerSpacing"] = 5,
			["borderGapX"] = 0,
			["manaBarHeight"] = 3,
			["totSpacing"] = 3,
			["totWidth"] = 30,
			["showHeaders"] = true,
			["isDamFlash"] = true,
			["maxColumnsWhenStructured"] = 5,
			["sideRightWidth"] = 6,
			["maxRowsWhenLoose"] = 5,
			["borderGapY"] = 0,
			["columnSpacing"] = 1,
			["targetOrientation"] = 1,
			["rowSpacing"] = 1,
			["alignBottom"] = false,
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
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
			["verbose"] = false,
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
		["classColorsName"] = true,
		["HEALTH_TEXT"] = {
			["TR"] = 1,
			["TO"] = 1,
			["TB"] = 0,
			["useText"] = false,
			["TG"] = 0,
		},
		["BARS"] = {
			["useBackground"] = true,
			["R"] = 0.235,
			["useOpacity"] = true,
			["O"] = 1,
			["G"] = 0.235,
			["B"] = 0.235,
		},
		["TEXT"] = {
			["TR"] = 1,
			["TO"] = 1,
			["TB"] = 0,
			["useText"] = true,
			["TG"] = 0.82,
		},
	},
	["HOTS"] = {
		["SLOTS"] = {
			"Gift of the Naaru", -- [1]
			"Eternal Flame", -- [2]
			"Beacon of Light", -- [3]
			"Sacred Shield", -- [4]
			[10] = "BOUQUET_Tank Cooldowns extd",
		},
		["BARS"] = {
			["radioValue"] = 4,
			["width"] = 17.5,
		},
		["TIMER_TEXT"] = {
			["X_ADJUST"] = 24,
			["FONT"] = "Interface\\AddOns\\ElvUI\\media\\fonts\\PT_Sans_Narrow.ttf",
			["Y_ADJUST"] = 0,
			["SCALE"] = 90,
			["USE_SHADOW"] = false,
			["ANCHOR"] = "CENTER",
			["USE_OUTLINE"] = true,
		},
		["SLOTCFG"] = {
			["1"] = {
				["scale"] = 1,
				["others"] = false,
				["mine"] = true,
			},
			["3"] = {
				["scale"] = 1,
				["others"] = false,
				["mine"] = true,
			},
			["2"] = {
				["scale"] = 1,
				["others"] = false,
				["mine"] = true,
			},
			["5"] = {
				["scale"] = 1,
				["others"] = true,
				["mine"] = true,
			},
			["4"] = {
				["scale"] = 1,
				["others"] = false,
				["mine"] = true,
			},
			["7"] = {
				["scale"] = 1,
				["others"] = false,
				["mine"] = true,
			},
			["6"] = {
				["scale"] = 1,
				["others"] = false,
				["mine"] = true,
			},
			["9"] = {
				["scale"] = 1,
				["others"] = false,
				["mine"] = true,
			},
			["8"] = {
				["scale"] = 1,
				["others"] = false,
				["mine"] = true,
			},
			["10"] = {
				["scale"] = 1.5,
				["others"] = false,
				["mine"] = true,
			},
		},
		["version"] = 2,
		["iconRadioValue"] = 1,
		["radioValue"] = 21,
		["COUNTER_TEXT"] = {
			["X_ADJUST"] = -30,
			["FONT"] = "Interface\\AddOns\\ElvUI\\media\\fonts\\PT_Sans_Narrow.ttf",
			["Y_ADJUST"] = -50,
			["SCALE"] = 90,
			["USE_SHADOW"] = false,
			["ANCHOR"] = "TOPLEFT",
			["USE_OUTLINE"] = true,
		},
		["stacksRadioValue"] = 2,
		["BUTTON_FACADE"] = "Blizzard",
	},
	["BAR_COLORS"] = {
		["OVERHEAL_TEXT"] = {
			["TG"] = 1,
			["TO"] = 1,
			["TB"] = 0.8,
			["TR"] = 0.8,
			["useText"] = true,
			["useOpacity"] = true,
		},
		["HOT7"] = {
			["useBackground"] = true,
			["R"] = 1,
			["O"] = 0.75,
			["G"] = 1,
			["B"] = 1,
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
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["modeBack"] = 1,
		},
		["HOT1"] = {
			["TG"] = 1,
			["countdownMode"] = 1,
			["B"] = 0.968,
			["TB"] = 0.968,
			["G"] = 0.984,
			["TR"] = 0.992,
			["R"] = 1,
			["TO"] = 1,
			["isClock"] = false,
			["isFullDuration"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useText"] = true,
		},
		["DIRECTION"] = {
			["useBackground"] = true,
			["R"] = 1,
			["G"] = 0.4,
			["O"] = 1,
			["B"] = 0.4,
		},
		["EMERGENCY"] = {
			["TG"] = 0.82,
			["B"] = 0,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["useOpacity"] = true,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["R"] = 1,
		},
		["BAR_FRAMES"] = {
			["useOpacity"] = true,
			["R"] = 0,
			["useBackground"] = true,
			["O"] = 0.7,
			["G"] = 0,
			["B"] = 0,
		},
		["RAID_ICONS"] = {
			["1"] = {
				["TG"] = 1,
				["R"] = 1,
				["TB"] = 0.607,
				["useText"] = false,
				["useBackground"] = false,
				["TO"] = 1,
				["B"] = 0.305,
				["G"] = 0.976,
				["O"] = 1,
				["TR"] = 0.98,
			},
			["filterOnly"] = false,
			["3"] = {
				["TG"] = 0.674,
				["R"] = 0.788,
				["TB"] = 0.921,
				["useText"] = false,
				["useBackground"] = false,
				["TO"] = 1,
				["B"] = 0.8,
				["G"] = 0.29,
				["O"] = 1,
				["TR"] = 1,
			},
			["2"] = {
				["TG"] = 0.827,
				["R"] = 1,
				["TB"] = 0.419,
				["useText"] = false,
				["useBackground"] = false,
				["TO"] = 1,
				["B"] = 0.039,
				["G"] = 0.513,
				["O"] = 1,
				["TR"] = 1,
			},
			["enable"] = false,
			["4"] = {
				["TG"] = 1,
				["R"] = 0,
				["TB"] = 0.6979,
				["useText"] = false,
				["useBackground"] = false,
				["TO"] = 1,
				["B"] = 0.015,
				["G"] = 0.8,
				["O"] = 1,
				["TR"] = 0.6979,
			},
			["7"] = {
				["TG"] = 0.627,
				["R"] = 0.8,
				["TB"] = 0.619,
				["useText"] = false,
				["useBackground"] = false,
				["TO"] = 1,
				["B"] = 0.129,
				["G"] = 0.184,
				["O"] = 1,
				["TR"] = 1,
			},
			["6"] = {
				["TG"] = 0.831,
				["R"] = 0.121,
				["TB"] = 1,
				["useText"] = false,
				["useBackground"] = false,
				["TO"] = 1,
				["B"] = 0.972,
				["G"] = 0.6899,
				["O"] = 1,
				["TR"] = 0.662,
			},
			["8"] = {
				["TG"] = 0.231,
				["R"] = 0.847,
				["TB"] = 0.231,
				["useText"] = false,
				["useBackground"] = false,
				["TO"] = 1,
				["B"] = 0.89,
				["G"] = 0.866,
				["O"] = 1,
				["TR"] = 0.231,
			},
			["5"] = {
				["TG"] = 0.87,
				["R"] = 0.466,
				["TB"] = 1,
				["useText"] = false,
				["useBackground"] = false,
				["TO"] = 1,
				["B"] = 0.8,
				["G"] = 0.717,
				["O"] = 1,
				["TR"] = 0.725,
			},
		},
		["IRRELEVANT"] = {
			["TG"] = 0.82,
			["B"] = 0.4,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["useOpacity"] = true,
			["useBackground"] = false,
			["useText"] = false,
			["O"] = 0.5,
			["R"] = 0,
		},
		["HOT9"] = {
			["TG"] = 1,
			["countdownMode"] = 2,
			["B"] = 1,
			["TB"] = 1,
			["G"] = 1,
			["R"] = 0.301,
			["TR"] = 0.6,
			["TO"] = 1,
			["isFullDuration"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useText"] = true,
		},
		["HOT_CHARGE_4"] = {
			["TG"] = 1,
			["R"] = 0.8,
			["TB"] = 1,
			["useText"] = true,
			["useBackground"] = true,
			["TO"] = 1,
			["B"] = 0.8,
			["G"] = 0.8,
			["O"] = 1,
			["TR"] = 1,
		},
		["HOT_CHARGE_3"] = {
			["TG"] = 1,
			["R"] = 0.3,
			["TB"] = 0.6,
			["useText"] = true,
			["useBackground"] = true,
			["TO"] = 1,
			["B"] = 0.3,
			["G"] = 1,
			["O"] = 1,
			["TR"] = 0.6,
		},
		["CLUSTER_GOOD"] = {
			["TG"] = 1,
			["R"] = 0,
			["TB"] = 0,
			["useText"] = true,
			["useBackground"] = true,
			["TO"] = 1,
			["B"] = 0,
			["G"] = 0.8,
			["O"] = 1,
			["TR"] = 0,
		},
		["DEBUFF3"] = {
			["TG"] = 0.957,
			["B"] = 0.8,
			["TB"] = 1,
			["G"] = 0.4,
			["TR"] = 0.329,
			["TO"] = 1,
			["useOpacity"] = true,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["R"] = 0.4,
		},
		["INCOMING"] = {
			["TG"] = 0.82,
			["B"] = 0,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["useOpacity"] = true,
			["useBackground"] = false,
			["useText"] = false,
			["O"] = 0.33,
			["R"] = 0,
		},
		["HOT6"] = {
			["useBackground"] = true,
			["R"] = 1,
			["O"] = 0.75,
			["G"] = 1,
			["B"] = 1,
		},
		["TARGET_ENEMY"] = {
			["TG"] = 0,
			["B"] = 0,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["useOpacity"] = true,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["R"] = 1,
		},
		["DEBUFF4"] = {
			["TG"] = 0,
			["B"] = 0.7,
			["TB"] = 1,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["useOpacity"] = true,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["R"] = 0.7,
		},
		["DEBUFF1"] = {
			["TG"] = 1,
			["B"] = 0.8,
			["TB"] = 0.686,
			["G"] = 0.592,
			["TR"] = 0,
			["TO"] = 1,
			["useOpacity"] = true,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["R"] = 0,
		},
		["CHARMED"] = {
			["TG"] = 0.31,
			["B"] = 0.263,
			["TB"] = 0.31,
			["G"] = 0.082,
			["TR"] = 1,
			["TO"] = 1,
			["useOpacity"] = true,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["R"] = 0.51,
		},
		["TARGET_FRIEND"] = {
			["TG"] = 1,
			["B"] = 0,
			["TB"] = 0,
			["G"] = 1,
			["TR"] = 0,
			["TO"] = 1,
			["useOpacity"] = true,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["R"] = 0,
		},
		["NO_EMERGENCY"] = {
			["TG"] = 0.82,
			["B"] = 0.4,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["useOpacity"] = true,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["R"] = 0,
		},
		["HOTS"] = {
			["useColorText"] = true,
			["WARNING"] = {
				["enabled"] = false,
				["lowSecs"] = 3,
				["B"] = 0.2,
				["TB"] = 0.6,
				["G"] = 0.2,
				["TR"] = 1,
				["TO"] = 1,
				["TG"] = 0.6,
				["useBackground"] = true,
				["useText"] = true,
				["O"] = 1,
				["R"] = 0.501,
			},
			["isPumpDivineAegis"] = false,
			["isFadeOut"] = false,
			["isFlashWhenLow"] = false,
			["showShieldAbsorb"] = false,
			["useColorBack"] = false,
		},
		["GCD_BAR"] = {
			["useBackground"] = true,
			["R"] = 0.4,
			["O"] = 0.5,
			["G"] = 0.4,
			["B"] = 0.4,
		},
		["SHIELD"] = {
			["TG"] = 0.52,
			["R"] = 0.35,
			["TB"] = 1,
			["G"] = 0.52,
			["TR"] = 0.35,
			["TO"] = 1,
			["useOpacity"] = true,
			["useBackground"] = true,
			["useText"] = false,
			["O"] = 1,
			["B"] = 1,
		},
		["TAPPED"] = {
			["TG"] = 0.4,
			["B"] = 0.4,
			["TB"] = 0.4,
			["G"] = 0.4,
			["TR"] = 0.4,
			["TO"] = 1,
			["useOpacity"] = true,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["R"] = 0.4,
		},
		["HOT2"] = {
			["TG"] = 1,
			["countdownMode"] = 1,
			["B"] = 0.968,
			["TB"] = 0.968,
			["G"] = 0.984,
			["TR"] = 0.992,
			["R"] = 1,
			["TO"] = 1,
			["isClock"] = false,
			["isFullDuration"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useText"] = true,
		},
		["DEAD"] = {
			["TG"] = 0.5,
			["B"] = 0.3,
			["TB"] = 0.5,
			["G"] = 0.3,
			["TR"] = 0.5,
			["TO"] = 1,
			["useOpacity"] = true,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 0.5,
			["R"] = 0.3,
		},
		["TARGET_NEUTRAL"] = {
			["TG"] = 1,
			["B"] = 0,
			["TB"] = 0,
			["G"] = 1,
			["TR"] = 1,
			["TO"] = 1,
			["useOpacity"] = true,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["R"] = 1,
		},
		["OFFLINE"] = {
			["TG"] = 0.576,
			["B"] = 0.298,
			["TB"] = 0.576,
			["G"] = 0.298,
			["TR"] = 0.576,
			["TO"] = 0.58,
			["useOpacity"] = true,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 0.21,
			["R"] = 0.298,
		},
		["OUTRANGED"] = {
			["TG"] = 0,
			["B"] = 0,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 0,
			["TO"] = 0.5,
			["useOpacity"] = true,
			["useBackground"] = false,
			["useText"] = false,
			["O"] = 0.3,
			["R"] = 0,
		},
		["HOT5"] = {
			["TG"] = 0.992,
			["countdownMode"] = 1,
			["B"] = 0.992,
			["TB"] = 0.992,
			["G"] = 0.992,
			["R"] = 1,
			["TR"] = 1,
			["TO"] = 1,
			["isFullDuration"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useText"] = true,
		},
		["DEBUFF6"] = {
			["TG"] = 0.5,
			["B"] = 0,
			["TB"] = 0,
			["G"] = 0.3,
			["TR"] = 0.8,
			["TO"] = 1,
			["useOpacity"] = true,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["R"] = 0.6,
		},
		["CLUSTER_FAIR"] = {
			["TG"] = 1,
			["R"] = 0.8,
			["TB"] = 0,
			["useText"] = true,
			["useBackground"] = true,
			["TO"] = 1,
			["B"] = 0,
			["G"] = 0.8,
			["O"] = 1,
			["TR"] = 1,
		},
		["DEBUFF2"] = {
			["TG"] = 0,
			["B"] = 0.4,
			["TB"] = 0,
			["G"] = 0.4,
			["TR"] = 1,
			["TO"] = 1,
			["useOpacity"] = true,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["R"] = 0.8,
		},
		["HOT3"] = {
			["TG"] = 1,
			["countdownMode"] = 1,
			["B"] = 1,
			["TB"] = 1,
			["G"] = 1,
			["TR"] = 1,
			["R"] = 1,
			["TO"] = 1,
			["isClock"] = false,
			["isFullDuration"] = false,
			["useBackground"] = true,
			["O"] = 1,
			["useText"] = true,
		},
		["HOT4"] = {
			["TG"] = 0.1409,
			["countdownMode"] = 1,
			["B"] = 0.725,
			["TB"] = 0.854,
			["G"] = 0.1719,
			["R"] = 1,
			["TR"] = 1,
			["TO"] = 1,
			["isFullDuration"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useText"] = true,
		},
		["HOT10"] = {
			["TG"] = 1,
			["countdownMode"] = 2,
			["B"] = 1,
			["TB"] = 1,
			["G"] = 1,
			["R"] = 0.301,
			["TR"] = 0.6,
			["TO"] = 1,
			["isFullDuration"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useText"] = true,
		},
		["THREAT"] = {
			["LOW"] = {
				["useBackground"] = true,
				["R"] = 0,
				["O"] = 1,
				["G"] = 1,
				["B"] = 1,
			},
			["HIGH"] = {
				["useBackground"] = true,
				["R"] = 1,
				["O"] = 1,
				["G"] = 0,
				["B"] = 1,
			},
		},
		["useDebuffIcon"] = true,
		["DEBUFF0"] = {
			["useBackground"] = false,
			["useText"] = false,
			["useOpacity"] = false,
		},
		["HOT8"] = {
			["useBackground"] = true,
			["R"] = 1,
			["O"] = 0.75,
			["G"] = 1,
			["B"] = 1,
		},
		["LIFE_LEFT"] = {
			["GOOD"] = {
				["useBackground"] = true,
				["R"] = 0.223,
				["B"] = 0.223,
				["O"] = 1,
				["G"] = 0.223,
			},
			["LOW"] = {
				["useBackground"] = true,
				["R"] = 0.956,
				["O"] = 1,
				["G"] = 1,
				["B"] = 0.937,
			},
			["FAIR"] = {
				["useBackground"] = true,
				["R"] = 0.517,
				["G"] = 0.517,
				["O"] = 1,
				["B"] = 0.517,
			},
		},
		["HOT_CHARGE_2"] = {
			["TG"] = 1,
			["R"] = 1,
			["TB"] = 0.6,
			["useText"] = true,
			["useBackground"] = true,
			["TO"] = 1,
			["B"] = 0.3,
			["G"] = 1,
			["O"] = 1,
			["TR"] = 1,
		},
	},
}
VUHDO_SPELL_ASSIGNMENTS = {
	["ctrl2"] = {
		"ctrl-", -- [1]
		"2", -- [2]
		"Hand of Protection", -- [3]
	},
	["shift2"] = {
		"shift-", -- [1]
		"2", -- [2]
		"Hand of Freedom", -- [3]
	},
	["shift3"] = {
		"shift-", -- [1]
		"3", -- [2]
		"Guardian of Ancient Kings", -- [3]
	},
	["ctrl1"] = {
		"ctrl-", -- [1]
		"1", -- [2]
		"Lay on Hands", -- [3]
	},
	["ctrl5"] = {
		"ctrl-", -- [1]
		"5", -- [2]
		"Beacon of Light", -- [3]
	},
	["shift4"] = {
		"shift-", -- [1]
		"4", -- [2]
		"Holy Avenger", -- [3]
	},
	["1"] = {
		"", -- [1]
		"1", -- [2]
		"Holy light", -- [3]
	},
	["3"] = {
		"", -- [1]
		"3", -- [2]
		"Holy Shock", -- [3]
	},
	["ctrl4"] = {
		"ctrl-", -- [1]
		"4", -- [2]
		"Divine Plea", -- [3]
	},
	["5"] = {
		"", -- [1]
		"5", -- [2]
		"Holy Radiance", -- [3]
	},
	["4"] = {
		"", -- [1]
		"4", -- [2]
		"Divine Light", -- [3]
	},
	["shift5"] = {
		"shift-", -- [1]
		"5", -- [2]
		"Sacred shield", -- [3]
	},
	["alt2"] = {
		"alt-", -- [1]
		"2", -- [2]
		"menuws", -- [3]
	},
	["alt1"] = {
		"alt-", -- [1]
		"1", -- [2]
		"target", -- [3]
	},
	["2"] = {
		"", -- [1]
		"2", -- [2]
		"Flash of light", -- [3]
	},
	["shift1"] = {
		"shift-", -- [1]
		"1", -- [2]
		"target", -- [3]
	},
	["ctrl3"] = {
		"ctrl-", -- [1]
		"3", -- [2]
		"Hand of Freedom", -- [3]
	},
}
VUHDO_HOSTILE_SPELL_ASSIGNMENTS = {
	["1"] = {
		"", -- [1]
		"1", -- [2]
		"Denounce", -- [3]
	},
	["3"] = {
		"", -- [1]
		"3", -- [2]
		"Holy Shock", -- [3]
	},
	["2"] = {
		"", -- [1]
		"2", -- [2]
		"hammer of wrath", -- [3]
	},
}
VUHDO_MM_SETTINGS = {
	["enabled"] = 1,
	["drag"] = "CIRCLE",
	["position"] = 12.4103942209239,
}
VUHDO_PLAYER_TARGETS = {
}
VUHDO_MAINTANK_NAMES = {
}
VUHDO_BUFF_SETTINGS = {
	["al"] = {
		["enabled"] = false,
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
		["filter"] = {
			[999] = true,
		},
	},
	["CONFIG"] = {
		["SWATCH_COLOR_BUFF_OUT"] = {
			["TG"] = 0,
			["B"] = 0,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 0.8,
			["TO"] = 1,
			["useOpacity"] = true,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["R"] = 0,
		},
		["SHOW_LABEL"] = false,
		["REFRESH_SECS"] = 1,
		["SWATCH_COLOR_BUFF_COOLDOWN"] = {
			["TG"] = 0.6,
			["B"] = 0.3,
			["TB"] = 0.6,
			["G"] = 0.3,
			["TR"] = 0.6,
			["TO"] = 1,
			["useOpacity"] = true,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["R"] = 0.3,
		},
		["SWATCH_COLOR_BUFF_OKAY"] = {
			["TG"] = 0.8,
			["B"] = 0,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 0,
			["TO"] = 1,
			["useOpacity"] = true,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["R"] = 0,
		},
		["SHOW"] = true,
		["PANEL_BG_COLOR"] = {
			["useBackground"] = true,
			["useOpacity"] = false,
			["R"] = 0,
			["useText"] = false,
			["O"] = 0.5,
			["G"] = 0,
			["B"] = 0,
		},
		["SWATCH_COLOR_BUFF_LOW"] = {
			["TG"] = 0.7,
			["B"] = 0,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["useOpacity"] = true,
			["useBackground"] = true,
			["useText"] = true,
			["O"] = 1,
			["R"] = 0,
		},
		["VERSION"] = 2,
		["SCALE"] = 1,
		["BAR_COLORS_TEXT"] = true,
		["BAR_COLORS_IN_FIGHT"] = true,
		["HIGHLIGHT_COOLDOWN"] = true,
		["HIDE_CHARGES"] = false,
		["COMPACT"] = true,
		["PANEL_BORDER_COLOR"] = {
			["useBackground"] = true,
			["useOpacity"] = false,
			["R"] = 0,
			["useText"] = false,
			["O"] = 0.5,
			["G"] = 0,
			["B"] = 0,
		},
		["BAR_COLORS_BACKGROUND"] = true,
		["SWATCH_BG_COLOR"] = {
			["useBackground"] = true,
			["useOpacity"] = false,
			["R"] = 0,
			["useText"] = false,
			["O"] = 1,
			["G"] = 0,
			["B"] = 0,
		},
		["WHEEL_SMART_BUFF"] = false,
		["REBUFF_MIN_MINUTES"] = 3,
		["SWATCH_BORDER_COLOR"] = {
			["useBackground"] = true,
			["useOpacity"] = false,
			["R"] = 0.8,
			["useText"] = false,
			["O"] = 0,
			["G"] = 0.8,
			["B"] = 0.8,
		},
		["REBUFF_AT_PERCENT"] = 25,
		["PANEL_MAX_BUFFS"] = 5,
		["POSITION"] = {
			["y"] = 111.0959,
			["x"] = -1.3953,
			["point"] = "RIGHT",
			["relativePoint"] = "RIGHT",
		},
	},
	["Beacon of Faith"] = {
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
	["Seal"] = {
		["missingColor"] = {
			["TG"] = 1,
			["R"] = 1,
			["TB"] = 1,
			["G"] = 1,
			["show"] = true,
			["B"] = 1,
			["TO"] = 1,
			["useBackground"] = true,
			["TR"] = 1,
			["useText"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["filter"] = {
			[999] = true,
		},
		["enabled"] = true,
		["buff"] = "Seal of Insight",
	},
	["essing"] = {
		["enabled"] = false,
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
		["filter"] = {
			[999] = true,
		},
	},
	["Inquisition"] = {
		["enabled"] = false,
		["missingColor"] = {
			["TG"] = 1,
			["R"] = 1,
			["TB"] = 1,
			["G"] = 1,
			["show"] = false,
			["B"] = 1,
			["TO"] = 1,
			["useBackground"] = true,
			["TR"] = 1,
			["useText"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["filter"] = {
			[999] = true,
		},
	},
	["Sacred Shield"] = {
		["enabled"] = false,
		["missingColor"] = {
			["TG"] = 1,
			["R"] = 1,
			["TB"] = 1,
			["G"] = 1,
			["show"] = false,
			["B"] = 1,
			["TO"] = 1,
			["useBackground"] = true,
			["TR"] = 1,
			["useText"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["name"] = "Krãzyito",
		["filter"] = {
			[999] = true,
		},
	},
	["acon of Light"] = {
		["enabled"] = false,
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
		["filter"] = {
			[999] = true,
		},
	},
	["quisition"] = {
		["enabled"] = false,
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
		["filter"] = {
			[999] = true,
		},
	},
	["ghteous Fury"] = {
		["enabled"] = false,
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
		["filter"] = {
			[999] = true,
		},
	},
	["Blessing"] = {
		["missingColor"] = {
			["TG"] = 1,
			["B"] = 1,
			["TB"] = 1,
			["G"] = 1,
			["show"] = true,
			["useOpacity"] = true,
			["TO"] = 1,
			["useBackground"] = true,
			["useText"] = true,
			["TR"] = 1,
			["O"] = 1,
			["R"] = 1,
		},
		["filter"] = {
			[999] = true,
		},
		["enabled"] = true,
		["buff"] = "Blessing of Might",
	},
	["Beacon of Light"] = {
		["enabled"] = true,
		["missingColor"] = {
			["TG"] = 1,
			["R"] = 1,
			["TB"] = 1,
			["G"] = 1,
			["show"] = false,
			["B"] = 1,
			["TO"] = 1,
			["useBackground"] = true,
			["TR"] = 1,
			["useText"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["name"] = "Erníe",
		["filter"] = {
			[999] = true,
		},
	},
	["Righteous Fury"] = {
		["missingColor"] = {
			["TG"] = 1,
			["R"] = 1,
			["TB"] = 1,
			["G"] = 1,
			["show"] = false,
			["B"] = 1,
			["TO"] = 1,
			["useBackground"] = true,
			["TR"] = 1,
			["useText"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["filter"] = {
			[999] = true,
		},
		["enabled"] = false,
		["buff"] = "Righteous Fury",
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
		["R"] = 0,
		["TB"] = 0.5,
		["G"] = 0.596,
		["TR"] = 0.5,
		["TO"] = 1,
		["B"] = 1,
		["useOpacity"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useText"] = true,
	}, -- [6]
	nil, -- [7]
	{
		["TG"] = 0.95,
		["R"] = 0.87,
		["TB"] = 1,
		["G"] = 0.95,
		["TR"] = 0.87,
		["TO"] = 1,
		["B"] = 1,
		["useText"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useOpacity"] = true,
	}, -- [8]
	[0] = {
		["TG"] = 0,
		["R"] = 0.211,
		["TB"] = 1,
		["G"] = 0.501,
		["TR"] = 0,
		["TO"] = 1,
		["B"] = 1,
		["useOpacity"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useText"] = true,
	},
	[17] = {
		["TG"] = 0.09,
		["R"] = 0.54,
		["TB"] = 0.69,
		["G"] = 0.09,
		["TR"] = 0.54,
		["TO"] = 1,
		["B"] = 0.69,
		["useText"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useOpacity"] = true,
	},
	[18] = {
		["TG"] = 0.09,
		["R"] = 0.54,
		["TB"] = 0.69,
		["G"] = 0.09,
		["TR"] = 0.54,
		["TO"] = 1,
		["B"] = 0.69,
		["useText"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useOpacity"] = true,
	},
	[11] = {
		["TG"] = 0.56,
		["R"] = 0.09,
		["TB"] = 1,
		["G"] = 0.56,
		["TR"] = 0.09,
		["TO"] = 1,
		["B"] = 1,
		["useText"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useOpacity"] = true,
	},
	[13] = {
		["TG"] = 0.97,
		["R"] = 0.15,
		["TB"] = 1,
		["G"] = 0.97,
		["TR"] = 0.15,
		["TO"] = 1,
		["B"] = 1,
		["useText"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["useOpacity"] = true,
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
			"Judgement", -- [3]
		},
		["altctrl2"] = {
			"ALT-CTRL-", -- [1]
			"-w10", -- [2]
			"", -- [3]
		},
		["ctrl2"] = {
			"CTRL-", -- [1]
			"-w6", -- [2]
			"", -- [3]
		},
		["2"] = {
			"", -- [1]
			"-w2", -- [2]
			"", -- [3]
		},
		["ctrlshift2"] = {
			"CTRL-SHIFT-", -- [1]
			"-w14", -- [2]
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
		["altctrl1"] = {
			"ALT-CTRL-", -- [1]
			"-w9", -- [2]
			"", -- [3]
		},
		["ctrl1"] = {
			"CTRL-", -- [1]
			"-w5", -- [2]
			"", -- [3]
		},
		["altctrlshift2"] = {
			"ALT-CTRL-SHIFT-", -- [1]
			"-w16", -- [2]
			"", -- [3]
		},
		["altshift2"] = {
			"ALT-SHIFT-", -- [1]
			"-w12", -- [2]
			"", -- [3]
		},
		["alt2"] = {
			"ALT-", -- [1]
			"-w4", -- [2]
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
		["alt1"] = {
			"ALT-", -- [1]
			"-w3", -- [2]
			"", -- [3]
		},
		["shift1"] = {
			"SHIFT-", -- [1]
			"-w7", -- [2]
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
	["WHEEL"] = {
		["1"] = {
			"", -- [1]
			"-w1", -- [2]
			"Cleanse", -- [3]
		},
		["altctrl2"] = {
			"ALT-CTRL-", -- [1]
			"-w10", -- [2]
			"", -- [3]
		},
		["ctrl2"] = {
			"CTRL-", -- [1]
			"-w6", -- [2]
			"Hand of Salvation", -- [3]
		},
		["2"] = {
			"", -- [1]
			"-w2", -- [2]
			"Word of Glory", -- [3]
		},
		["ctrlshift2"] = {
			"CTRL-SHIFT-", -- [1]
			"-w14", -- [2]
			"", -- [3]
		},
		["shift2"] = {
			"SHIFT-", -- [1]
			"-w8", -- [2]
			"Divine Favor", -- [3]
		},
		["altshift1"] = {
			"ALT-SHIFT-", -- [1]
			"-w11", -- [2]
			"", -- [3]
		},
		["altctrl1"] = {
			"ALT-CTRL-", -- [1]
			"-w9", -- [2]
			"", -- [3]
		},
		["ctrl1"] = {
			"CTRL-", -- [1]
			"-w5", -- [2]
			"Hand of Sacrifice", -- [3]
		},
		["altctrlshift2"] = {
			"ALT-CTRL-SHIFT-", -- [1]
			"-w16", -- [2]
			"", -- [3]
		},
		["altshift2"] = {
			"ALT-SHIFT-", -- [1]
			"-w12", -- [2]
			"", -- [3]
		},
		["alt2"] = {
			"ALT-", -- [1]
			"-w4", -- [2]
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
		["alt1"] = {
			"ALT-", -- [1]
			"-w3", -- [2]
			"", -- [3]
		},
		["shift1"] = {
			"SHIFT-", -- [1]
			"-w7", -- [2]
			"Avenging Wrath", -- [3]
		},
	},
	["SPELL8"] = "",
	["SPELL1"] = "",
	["SPELL11"] = "",
}
VUHDO_SPELL_CONFIG = {
	["IS_LOAD_HOTS"] = false,
	["IS_FIRE_OUT_FIGHT"] = false,
	["IS_AUTO_FIRE"] = true,
	["IS_FIRE_CUSTOM_2"] = false,
	["IS_FIRE_GLOVES"] = false,
	["IS_FIRE_TRINKET_1"] = false,
	["IS_CANCEL_CURRENT"] = false,
	["autoBattleRez"] = true,
	["IS_KEEP_STANCE"] = false,
	["IS_FIRE_TRINKET_2"] = false,
	["IS_AUTO_TARGET"] = false,
	["smartCastModi"] = "all",
	["FIRE_CUSTOM_1_SPELL"] = "",
	["FIRE_CUSTOM_2_SPELL"] = "",
	["IS_TOOLTIP_INFO"] = false,
	["IS_FIRE_CUSTOM_1"] = false,
	["IS_FIRE_HOT"] = false,
}
VUHDO_BUFF_ORDER = {
	["Beacon of Light"] = 4,
	["Beacon of Faith"] = 1,
	["Blessing"] = 2,
	["Seal"] = 3,
	["Righteous Fury"] = 5,
}
VUHDO_SPEC_LAYOUTS = {
	["1"] = "",
	["selected"] = "",
	["2"] = "",
}
VUHDO_GROUP_SIZE = 1
VUHDO_RAID = {
	["player"] = {
		["zone"] = "Shrine of Seven Stars",
		["baseRange"] = true,
		["class"] = "PALADIN",
		["role"] = 63,
		["sortMaxHp"] = 58379,
		["map"] = "ValeofEternalBlossoms",
		["threat"] = 0,
		["powermax"] = 37000,
		["threatPerc"] = 0,
		["isPet"] = false,
		["name"] = "Krãzyito",
		["number"] = 1,
		["isVehicle"] = false,
		["group"] = 1,
		["classId"] = 23,
		["range"] = true,
		["unit"] = "player",
		["powertype"] = 0,
		["healthmax"] = 58379,
		["dead"] = false,
		["charmed"] = false,
		["fullName"] = "Krãzyito",
		["power"] = 37000,
		["aggro"] = false,
		["visible"] = true,
		["targetUnit"] = "target",
		["health"] = 58379,
		["className"] = "Paladin",
		["afk"] = false,
		["debuff"] = 0,
		["connected"] = true,
		["petUnit"] = "pet",
	},
}
VUHDO_INDICATOR_CONFIG = {
	["BOUQUETS"] = {
		["THREAT_BAR"] = "",
		["MOUSEOVER_HIGHLIGHT"] = "",
		["AGGRO_BAR"] = "",
		["BACKGROUND_BAR"] = "Background: Solid",
		["DAMAGE_FLASH_BAR"] = "",
		["SWIFTMEND_INDICATOR"] = "Swiftmendable",
		["HEALTH_BAR_PANEL"] = {
			"", -- [1]
			"", -- [2]
			"", -- [3]
			"", -- [4]
			"", -- [5]
			"", -- [6]
			"", -- [7]
			"", -- [8]
			"", -- [9]
			"", -- [10]
		},
		["CLUSTER_BORDER"] = "",
		["THREAT_MARK"] = "",
		["SIDE_RIGHT"] = "",
		["MANA_BAR"] = "Manabars: All Powers",
		["BAR_BORDER"] = "Border: Multi + Aggro",
		["HEALTH_BAR"] = "Health Bar: (generic, gradient)",
		["SIDE_LEFT"] = "",
		["INCOMING_BAR"] = "",
	},
	["CUSTOM"] = {
		["THREAT_BAR"] = {
			["invertGrowth"] = false,
			["HEIGHT"] = 4,
			["turnAxis"] = false,
			["WARN_AT"] = 85,
			["TEXTURE"] = "VuhDo - Polished Wood",
		},
		["MOUSEOVER_HIGHLIGHT"] = {
			["TEXTURE"] = "LiteStepLite",
		},
		["AGGRO_BAR"] = {
			["TEXTURE"] = "VuhDo - Polished Wood",
		},
		["BACKGROUND_BAR"] = {
			["TEXTURE"] = "VuhDo - Minimalist",
		},
		["CLUSTER_BORDER"] = {
			["FILE"] = "Interface\\AddOns\\VuhDo\\Images\\white_square_16_16",
			["WIDTH"] = 2,
		},
		["SIDE_LEFT"] = {
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
		["SIDE_RIGHT"] = {
			["turnAxis"] = false,
			["vertical"] = true,
			["invertGrowth"] = false,
			["TEXTURE"] = "VuhDo - Polished Wood",
		},
		["HOT_BARS"] = {
			["turnAxis"] = false,
			["vertical"] = false,
			["invertGrowth"] = false,
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
		["SWIFTMEND_INDICATOR"] = {
			["SCALE"] = 0.699,
		},
	},
	["TEXT_INDICATORS"] = {
		["OVERHEAL_TEXT"] = {
			["TEXT_PROVIDER"] = {
				"OVERHEAL_KILO_PLUS_N_K", -- [1]
				"OVERHEAL_KILO_PLUS_N_K", -- [2]
				"OVERHEAL_KILO_PLUS_N_K", -- [3]
				"OVERHEAL_KILO_PLUS_N_K", -- [4]
				"OVERHEAL_KILO_PLUS_N_K", -- [5]
				"OVERHEAL_KILO_PLUS_N_K", -- [6]
				"OVERHEAL_KILO_PLUS_N_K", -- [7]
				"OVERHEAL_KILO_PLUS_N_K", -- [8]
				"OVERHEAL_KILO_PLUS_N_K", -- [9]
				"OVERHEAL_KILO_PLUS_N_K", -- [10]
			},
		},
		["MANA_BAR"] = {
			["TEXT_PROVIDER"] = {
				[0] = "",
			},
			["TEXT"] = {
				["X_ADJUST"] = 7,
				["USE_MONO"] = false,
				["Y_ADJUST"] = 2,
				["ANCHOR"] = "RIGHT",
				["USE_OUTLINE"] = false,
				["SCALE"] = 20,
				["COLOR"] = {
					["TG"] = 0.55,
					["R"] = 0,
					["TB"] = 1,
					["G"] = 0,
					["TR"] = 0.36,
					["TO"] = 1,
					["useOpacity"] = true,
					["useText"] = true,
					["useBackground"] = true,
					["O"] = 1,
					["B"] = 0,
				},
				["USE_SHADOW"] = true,
				["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
			},
		},
		["THREAT_BAR"] = {
			["TEXT_PROVIDER"] = {
				[0] = "",
			},
			["TEXT"] = {
				["X_ADJUST"] = 7,
				["USE_MONO"] = false,
				["Y_ADJUST"] = 2,
				["ANCHOR"] = "RIGHT",
				["USE_OUTLINE"] = false,
				["SCALE"] = 20,
				["COLOR"] = {
					["TG"] = 0,
					["R"] = 0,
					["TB"] = 0,
					["G"] = 0,
					["TR"] = 1,
					["TO"] = 1,
					["useOpacity"] = true,
					["useText"] = true,
					["useBackground"] = true,
					["O"] = 1,
					["B"] = 0,
				},
				["USE_SHADOW"] = true,
				["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
			},
		},
		["SIDE_RIGHT"] = {
			["TEXT_PROVIDER"] = {
				[0] = "",
			},
			["TEXT"] = {
				["X_ADJUST"] = 4,
				["USE_MONO"] = false,
				["Y_ADJUST"] = 0,
				["ANCHOR"] = "BOTTOM",
				["USE_OUTLINE"] = true,
				["SCALE"] = 18,
				["COLOR"] = {
					["TG"] = 1,
					["R"] = 0,
					["TB"] = 1,
					["G"] = 0,
					["TR"] = 1,
					["TO"] = 1,
					["useOpacity"] = true,
					["useText"] = true,
					["useBackground"] = true,
					["O"] = 1,
					["B"] = 0,
				},
				["USE_SHADOW"] = false,
				["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
			},
		},
		["SIDE_LEFT"] = {
			["TEXT_PROVIDER"] = {
				[0] = "",
			},
			["TEXT"] = {
				["X_ADJUST"] = 3,
				["USE_MONO"] = false,
				["Y_ADJUST"] = 0,
				["ANCHOR"] = "BOTTOM",
				["USE_OUTLINE"] = true,
				["SCALE"] = 18,
				["COLOR"] = {
					["TG"] = 1,
					["R"] = 0,
					["TB"] = 1,
					["G"] = 0,
					["TR"] = 1,
					["TO"] = 1,
					["useOpacity"] = true,
					["useText"] = true,
					["useBackground"] = true,
					["O"] = 1,
					["B"] = 0,
				},
				["USE_SHADOW"] = false,
				["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
			},
		},
	},
}
