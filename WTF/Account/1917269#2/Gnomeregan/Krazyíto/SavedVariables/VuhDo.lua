
VUHDO_CONFIG = {
	["SMARTCAST_CLEANSE"] = false,
	["RANGE_SPELL"] = "Heal",
	["BLIZZ_UI_HIDE_PARTY"] = 2,
	["OMIT_DFT_MTS"] = false,
	["BLIZZ_UI_HIDE_PLAYER"] = 2,
	["MAX_EMERGENCIES"] = 5,
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
			["lod"] = {
				["enable"] = true,
				["thresh"] = 10000,
			},
			["cb"] = {
				["enable"] = false,
				["thresh"] = 10000,
			},
			["hr"] = {
				["enable"] = false,
				["thresh"] = 10000,
			},
			["wg"] = {
				["enable"] = true,
				["thresh"] = 15000,
			},
			["tq"] = {
				["enable"] = true,
				["thresh"] = 15000,
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
		["isGroupWise"] = true,
	},
	["LOCK_PANELS"] = true,
	["DEBUFF_TOOLTIP"] = true,
	["RANGE_PESSIMISTIC"] = false,
	["SMARTCAST_RESURRECT"] = true,
	["BLIZZ_UI_HIDE_PET"] = 2,
	["IS_ALWAYS_OVERWRITE_PROFILE"] = false,
	["HIDE_PANELS_PARTY"] = false,
	["SHOW_PANELS"] = true,
	["HIDE_EMPTY_PANELS"] = true,
	["RANGE_CHECK_DELAY"] = 260,
	["SHOW_MINIMAP"] = true,
	["DETECT_DEBUFFS_IGNORE_MOVEMENT"] = true,
	["IS_SCAN_TALENTS"] = false,
	["OMIT_OWN_GROUP"] = false,
	["MODE"] = 1,
	["BLIZZ_UI_HIDE_RAID"] = 2,
	["DETECT_DEBUFFS_REMOVABLE_ONLY"] = false,
	["IS_READY_CHECK_DISABLED"] = false,
	["CLUSTER"] = {
		["REFRESH"] = 180,
		["RANGE_JUMP"] = 11,
		["CHAIN_MAX_JUMP"] = 3,
		["DISPLAY_DESTINATION"] = 2,
		["BELOW_HEALTH_PERC"] = 85,
		["RANGE"] = 15,
		["IS_NUMBER"] = false,
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
				["useText"] = true,
				["useBackground"] = true,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
			["USE_SHADOW"] = false,
		},
		["THRESH_GOOD"] = 5,
		["COOLDOWN_SPELL"] = "",
		["CONE_DEGREES"] = 360,
		["THRESH_FAIR"] = 3,
	},
	["OMIT_MAIN_ASSIST"] = false,
	["HIDE_PANELS_PET_BATTLE"] = true,
	["LOCK_CLICKS_THROUGH"] = true,
	["LOCK_IN_FIGHT"] = false,
	["IS_CLIQUE_COMPAT_MODE"] = false,
	["VERSION"] = 4,
	["DETECT_DEBUFFS_IGNORE_DURATION"] = false,
	["RES_ANNOUNCE_MASS_TEXT"] = "Casting mass resurrection!",
	["CUSTOM_DEBUFF"] = {
		["animate"] = false,
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
			"Electrified Waters", -- [248]
			"Focused Lightning", -- [249]
			"Ionization", -- [250]
			"Static Wound", -- [251]
			"Thundering Throw", -- [252]
			"Charge", -- [253]
			"Triple Puncture", -- [254]
			"Stone Gaze", -- [255]
			"Sand Trap", -- [256]
			"Venom Bolt Volley", -- [257]
			"Deadly Plague", -- [258]
			"Mortal Strike", -- [259]
			"Frozen Bolt", -- [260]
			"Hex of Confusion", -- [261]
			"Blazing Sunlight", -- [262]
			"Rending Charge", -- [263]
			"Dire Fixation", -- [264]
			"Frostbite", -- [265]
			"Body Heat", -- [266]
			"Soul Fragment", -- [267]
			"Ensnared", -- [268]
			"Entrapped", -- [269]
			"Shadowed Soul", -- [270]
			"Marked Soul", -- [271]
			"Twisted Fate", -- [272]
			"Quicksand", -- [273]
			"Kick Shell", -- [274]
			"Quake Stomp", -- [275]
			"Sonic Screech", -- [276]
			"Slashing Talons", -- [277]
			"Crystal Shell", -- [278]
			"Cinders", -- [279]
			"Consuming Flames", -- [280]
			"Ignite Flesh", -- [281]
			"Frozen Solid", -- [282]
			"Icy Ground", -- [283]
			"Consuming Magic", -- [284]
			"Arctic Freeze", -- [285]
			"Rot Armor", -- [286]
			"Suppression", -- [287]
			"Slimed", -- [288]
			"Feed Pool", -- [289]
			"Lesson of Icarus", -- [290]
			"Screech", -- [291]
			"Arterial Cut", -- [292]
			"Serious Wound", -- [293]
			"Force of Will Precast", -- [294]
			"Blue Beam Precast", -- [295]
			"Red Beam Precast", -- [296]
			"Yellow Beam Precast", -- [297]
			"Life Drain", -- [298]
			"Dark Parasite", -- [299]
			"Infrared Light", -- [300]
			"Blue Rays", -- [301]
			"Bright Light", -- [302]
			"Lingering Gaze", -- [303]
			"Fully Mutated", -- [304]
			"Keen Eyesight", -- [305]
			"Impaired Eyesight", -- [306]
			"Improved Synapses", -- [307]
			"Dulled Synapses", -- [308]
			"Thick Bones", -- [309]
			"Fragile Bones", -- [310]
			"Clear Mind", -- [311]
			"Clouded Mind", -- [312]
			"Malformed Blood", -- [313]
			"Explosive Slam", -- [314]
			"Touch of the Animus", -- [315]
			"Matter Swap", -- [316]
			"Anima Font", -- [317]
			"Anima Ring", -- [318]
			"Crimson Wake", -- [319]
			"Scorched", -- [320]
			"Arcing Lightning", -- [321]
			"Dead Zone", -- [322]
			"Freeze", -- [323]
			"Frozen Blood", -- [324]
			"Storm Cloud", -- [325]
			"Burning Cinders", -- [326]
			"Rushing Winds", -- [327]
			"Wind Storm", -- [328]
			"Lightning Storm", -- [329]
			"Icy Shadows", -- [330]
			"Flames of Passion", -- [331]
			"Serpent's Vitality", -- [332]
			"Fan of Flames", -- [333]
			"Corrupted Healing", -- [334]
			"Beast of Nightmares", -- [335]
			"Slumber Spores", -- [336]
			"Static Shock", -- [337]
			"Summon Ball Lightning", -- [338]
			"Discharged Energy", -- [339]
			"Overcharge", -- [340]
			"Overloaded Circuits", -- [341]
			"Lightning Bolt", -- [342]
			"Crashing Thunder", -- [343]
			"Electrical Shock", -- [344]
			"Maim", -- [345]
			"Locked On", -- [346]
			"Resonating Amber", -- [347]
			"Corrosive Blast", -- [348]
			"Sha Splash", -- [349]
			"Inferno Strike", -- [350]
			"Vengeful Strikes", -- [351]
			"Corruption Kick", -- [352]
			"Garrote", -- [353]
			"Gouge", -- [354]
			"Mark of Anguish", -- [355]
			"Shadow Weakness", -- [356]
			"Debilitation", -- [357]
			"Sha Sear", -- [358]
			"Wounded Pride", -- [359]
			"Corrupted Prison", -- [360]
			"Fracture", -- [361]
			"Flame Arrows", -- [362]
			"Poison Cloud", -- [363]
			"Flames of Galakrond", -- [364]
			"Laser Burn", -- [365]
			"Ignite Armor", -- [366]
			"Explosive Tar", -- [367]
			"Cutter Laser Target", -- [368]
			"Rend", -- [369]
			"Froststorm Strike", -- [370]
			"Toxic Mist", -- [371]
			"Foul Geyser", -- [372]
			"Iron Prison", -- [373]
			"Iron Tomb", -- [374]
			"Sundering Blow", -- [375]
			"Bonecracker", -- [376]
			"Assassin's Mark", -- [377]
			"Hunter's Mark", -- [378]
			"Fatal Strike", -- [379]
			"Ancient Barrier", -- [380]
			"Ancient Miasma", -- [381]
			"Languish", -- [382]
			"Set to Blow", -- [383]
			"Carnivorous Bite", -- [384]
			"Encapsulated Pheromones", -- [385]
			"Keg Toss", -- [386]
			"Gusting Bomb", -- [387]
			"Panic", -- [388]
			"Tail Lash", -- [389]
			"Acid Breath", -- [390]
			"Freezing Breath", -- [391]
			"Icy Blood", -- [392]
			"Scorching Breath", -- [393]
			"Electrostatic Charge", -- [394]
			"Overload", -- [395]
			"Magnetic Crush", -- [396]
			"Exposed Veins", -- [397]
			"Caustic Blood", -- [398]
			"Tenderizing Strikes", -- [399]
			"Mesmerize", -- [400]
			"Shield Bash", -- [401]
			"Caustic Amber", -- [402]
			"Hewn", -- [403]
			"Genetic Alteration", -- [404]
			"Injection", -- [405]
			"Aim", -- [406]
			"Whirling", -- [407]
			"Hunger", -- [408]
			"Fiery Edge", -- [409]
			"Pierced Armor", -- [410]
			"Loose Quills", -- [411]
			"Savage Vines", -- [412]
			"Rot", -- [413]
			"Blade Dance", -- [414]
			"Chain Hurl", -- [415]
			"On the Hunt", -- [416]
			"Expel Magic: Arcane", -- [417]
			"Expel Magic: Fire", -- [418]
			"Branded", -- [419]
			"Mark of Chaos", -- [420]
			"Slow", -- [421]
			"Crystalline Barrage", -- [422]
			"Petrification", -- [423]
			"The Tenderizer", -- [424]
			"Arcane Wound", -- [425]
			"Blaze", -- [426]
			"Arcane Volatility", -- [427]
			"Marked for Death", -- [428]
			"Attach Slag Bombs", -- [429]
			"Rend and Tear", -- [430]
			"Conflagration", -- [431]
			"Seared Flesh", -- [432]
			"Overwhelming Blows", -- [433]
			"Petrifying Slam", -- [434]
			"Shattered Vertebrae", -- [435]
			"Molten Torrent", -- [436]
			"Rising Flames", -- [437]
			"Charring Breath", -- [438]
			"Warped Armor", -- [439]
			"Acid Torrent", -- [440]
			"Shields Down", -- [441]
			"Bomb", -- [442]
			"Volatile Fire", -- [443]
			"Rapid Fire", -- [444]
			"Penetrating Shot", -- [445]
			"Convulsive Shadows", -- [446]
			"Dark Hunt", -- [447]
			"Bloodsoaked Heartseeker", -- [448]
			"Enkindle", -- [449]
			"Prototype Pulse Grenade", -- [450]
			"Delayed Siege Bomb", -- [451]
			"Branded: Displacement", -- [452]
			"Branded: Fortification", -- [453]
			"Branded: Replication", -- [454]
			"Mark of Chaos: Displacement", -- [455]
			"Mark of Chaos: Fortification", -- [456]
			"Mark of Chaos: Replication", -- [457]
			"Slagged", -- [458]
			"Singe", -- [459]
			"Blazing Radiance", -- [460]
			"Eye of Anzu", -- [461]
			"Unstable Orb", -- [462]
			"Explosive Burst", -- [463]
			"Fel Touch", -- [464]
			"Mark of the Necromancer", -- [465]
			"Fel Rage", -- [466]
			"Heart Seeker", -- [467]
			"Fel Corruption", -- [468]
			"Shadow of Death", -- [469]
			"Touch of Doom", -- [470]
			"Shared Fate", -- [471]
			"Phantasmal Winds", -- [472]
			"Phantasmal Wounds", -- [473]
			"Fel Chakram", -- [474]
			"Fel Bomb", -- [475]
			"Phantasmal Obliteration", -- [476]
			"Reverberating Blow", -- [477]
			"Seed of Destruction", -- [478]
			"Fel Crystal", -- [479]
			"Befouled", -- [480]
			"Chains of Fel", -- [481]
			"Black Hole", -- [482]
			"Touch of Harm", -- [483]
			"Edict of Condemnation", -- [484]
			"Font of Corruption", -- [485]
			"Mark of Doom", -- [486]
			"Mannoroth's Gaze", -- [487]
			"Desecrate", -- [488]
			"Shadow Blast", -- [489]
			"Death Brand", -- [490]
			"Shackled Torment", -- [491]
			"Fel Breath", -- [492]
			"Mark of Kazzak", -- [493]
			"Gift of the Man'ari", -- [494]
			"184449", -- [495]
			"184450", -- [496]
			"184676", -- [497]
			"185065", -- [498]
			"185066", -- [499]
			"189030", -- [500]
			"189031", -- [501]
			"189032", -- [502]
			"180164", -- [503]
			"180166", -- [504]
			"Infested", -- [505]
			"Infested Ground", -- [506]
			"Volatile Rot", -- [507]
			"Burst of Corruption", -- [508]
			"Unstable Decay", -- [509]
			"Nightmare Corruption", -- [510]
			"Dispersed Spores", -- [511]
			"Touch of Corruption", -- [512]
			"Nightmare Explosion", -- [513]
			"Mind Flay", -- [514]
			"Spew Corruption", -- [515]
			"Cursed Blood", -- [516]
			"Web of Pain", -- [517]
			"Necrotic Venom", -- [518]
			"Venomous Pool", -- [519]
			"Twisting Shadows", -- [520]
			"Wind Burn", -- [521]
			"Dripping Fangs", -- [522]
			"Focused Gaze", -- [523]
			"Momentum", -- [524]
			"Nightmarish Cacophony", -- [525]
			"Miasma", -- [526]
			"Mark of Ysondre", -- [527]
			"Nightmare Bloom", -- [528]
			"Wasting Dread", -- [529]
			"Mark of Emeriss", -- [530]
			"Volatile Infection", -- [531]
			"Mark of Lethon", -- [532]
			"Shadow Burst", -- [533]
			"Mark of Taerar", -- [534]
			"Bellowing Roar", -- [535]
			"Collapsing Nightmare", -- [536]
			"Cleansed Ground", -- [537]
			"Creeping Nightmares", -- [538]
			"Nightmare Brambles", -- [539]
			"Desiccating Stomp", -- [540]
			"Nightmare Javelin", -- [541]
			"Scorned Touch", -- [542]
			"Ancient Dream", -- [543]
			"Unbound Touch", -- [544]
			"Unbound Essence", -- [545]
			"Dream Simulacrum", -- [546]
			"Awakening to the Nightmare", -- [547]
			"Corruption: Descent into Madness", -- [548]
			"Corruption: Madness", -- [549]
			"Darkening Soul", -- [550]
			"Nightmare Blades", -- [551]
			"Tormenting Fixation", -- [552]
			"Blackening Soul", -- [553]
			"Blackened", -- [554]
			"Bonds of Terror", -- [555]
			"Tainted Discharge", -- [556]
			"The Infinite Dark", -- [557]
			"228796", -- [558]
			"227959", -- [559]
			"228915", -- [560]
			"228030", -- [561]
			"228228", -- [562]
			"228250", -- [563]
			"232450", -- [564]
			"193367", -- [565]
			"228519", -- [566]
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
				["useText"] = true,
				["useBackground"] = true,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["FONT"] = "Interface\\AddOns\\ElvUI\\media\\fonts\\PT_Sans_Narrow.ttf",
			["USE_SHADOW"] = true,
		},
		["max_num"] = 5,
		["version"] = 32,
		["isColor"] = false,
		["isNoRangeFade"] = false,
		["isStacks"] = true,
		["STORED_SETTINGS"] = {
			["Feed Pool"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Bright Light"] = {
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
			["Frostbite"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Inferno Strike"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Lightning Rod"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Infested Ground"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Melt Armor"] = {
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
			["Troll Rush"] = {
				["isStacks"] = false,
				["animate"] = true,
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
			["Grievous Throw"] = {
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
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Fire Bomb"] = {
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
			["Enkindle"] = {
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
			["Jagged Tear"] = {
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
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Consuming Flames"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Purified"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Branded"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Sara's Blessing"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Stunning Strike"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Expose Weakness"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
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
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Ground Slam"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Snobolled!"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Burning Wound"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Flame Shock"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Devouring Flames"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Mark of Chaos"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Molten Torrent"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Pillaged"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Deadly Plague"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Hewn"] = {
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
			["Stone Grip"] = {
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
			["Convert"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Legion Flame"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Corruption: Madness"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Hunger"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Ionization"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Volatile Ooze Adhesive"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Marked Soul"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Bloodletting"] = {
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
			["Carnivorous Bite"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Charge"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Poison Bomb"] = {
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
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Scorched"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Robbed Blind"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Set to Blow"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Mangle"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Quake Stomp"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Freeze"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Incinerate Flesh"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Ancient Miasma"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Magnetic Crush"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Shadow Prison"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Heart of Fear"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Overloaded Circuits"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["On the Hunt"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Touch of Darkness"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Penetrating Cold"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Flames of Passion"] = {
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
			["Rushing Winds"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Explosive Slam"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Vital Flame"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Gall's Blast"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Marked for Death"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Overwhelming Blows"] = {
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
			["Scorching Breath"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Sha Splash"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Burning Orb"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Screech"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Slag Pot"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Icy Ground"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Magma Blast"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Ignite Armor"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Cleansed Ground"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Searing Seeds"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Fel Crystal"] = {
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
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
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
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Frostburn Formula"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Wrack"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Defile"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Storm Cloud"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Hex of Confusion"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Suppression"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Dread Spray"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Nightmare Corruption"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Bloodsoaked Heartseeker"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Blackened"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Shackled Torment"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Incineration Security Measure"] = {
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
			["Black Hole"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Corrupted Healing"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Mark of the Fallen Champion"] = {
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
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Edict of Condemnation"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Ravage"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Nightmare Blades"] = {
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
			["Shadowburn"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Ice Storm"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Corrosive Resin"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Wounded Pride"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Grasping Tendrils"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Arcing Lightning"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Penetrating Bolt"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Slow"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isIcon"] = true,
				["isColor"] = true,
				["color"] = {
					["TG"] = 0.5,
					["R"] = 0.6,
					["TB"] = 0,
					["G"] = 0.3,
					["TR"] = 0.8,
					["TO"] = 1,
					["B"] = 0,
					["useText"] = true,
					["useBackground"] = true,
					["O"] = 1,
					["useOpacity"] = true,
				},
			},
			["Jagged Knife"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Boiling Blood"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Slumber Spores"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Quicksand"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Sundering Bite"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Phantasmal Obliteration"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Lash of Anguish"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Delirious Slash"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Dissonance Field"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Sha Sear"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Panic"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Slam"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Blazing Claw"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Pyroblast"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Acid-Drenched Mandibles"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Shroud of Sorrow"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Grievous Bite"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Corrosive Blast"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Soul Sever"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Shadowed Soul"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Sunbeam"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Weakened Soul"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Rending Charge"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Singe"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Soothing Breeze"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Thick Bones"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Delayed Siege Bomb"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Trapped!"] = {
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
			["Nightmare Brambles"] = {
				["isStacks"] = true,
				["animate"] = false,
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
			["Focused Defense"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Foul Geyser"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Lightning Storm"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Arcane Volatility"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Force of Will"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Mark of Doom"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Terrorize"] = {
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
			["Branded: Replication"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Torment"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Impaled"] = {
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
			["Cinders"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Creeping Nightmares"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Arcane Velocity"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
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
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Serious Wound"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Corrosion"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
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
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Dispersed Spores"] = {
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
			["Exhale"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Volatile Rot"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Chilled to the Bone"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Grievous Whirl"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Beast of Nightmares"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Twilight Burst"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Gusting Bomb"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Arctic Freeze"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Eyes of the Empress"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Sundering Blow"] = {
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
			["Iron Prison"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Electrified Waters"] = {
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
			["Roaring Flame"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Clear Mind"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Wind Storm"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Aggressive Behavior"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Blade Dance"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Toxic Mist"] = {
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
			["Frozen"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Defiled Ground"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Dark Parasite"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Rend"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Tainted Discharge"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Cobalt Petrification"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Hunter's Mark"] = {
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
			["Mark of Chaos: Fortification"] = {
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
			["Chains of Fel"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Venom Bolt Volley"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Superheated"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Consuming Magic"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Petrification"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Dismantled Armor"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Shadow Burst"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Dream Simulacrum"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Flame Breath"] = {
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
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Gravity Core"] = {
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
			["Ancient Dream"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Twilight Shift"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Touch of the Animus"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Dark Hunt"] = {
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
			["189032"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
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
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Swarming Shadows"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Languish"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Bomb"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Twisting Shadows"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Vile Gas"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Mark of Chaos: Replication"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Bathed in Light"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Jade Petrification"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["The Infinite Dark"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Impeding Thrust"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Epicenter"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Anima Font"] = {
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
			["Parasitic Infection"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Burning Amber"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Mutated Plague"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Whispers of Hethiss"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
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
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Froststorm Strike"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Slashing Talons"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Befouled"] = {
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
			["Collapsing Nightmare"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Searing Plasma"] = {
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
			["Burning Cinders"] = {
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
			["Encapsulated Pheromones"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Web Wrap"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Summon Ball Lightning"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Fully Mutated"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Blackening Soul"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["228796"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Searing Flame"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Overcharge"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Rising Flames"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Laser Burn"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Noise Cancelling"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Discharged Energy"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Assassin's Mark"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Overwhelming Corruption"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Fracture"] = {
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
			["Clouded Mind"] = {
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
			["Mind Flay"] = {
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
			["Triple Puncture"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Ominous Cackle"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Frozen Bolt"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Acid Torrent"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Sha Globe"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Burning Sting"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Awakening to the Nightmare"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Electrostatic Charge"] = {
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
			["Toxic Torment"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Overwhelming Assault"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Matter Swap"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Survival Instincts"] = {
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
			["Flaming Spear"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Rapid Fire"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Tenderizing Strikes"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Wind Step"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Pact of the Darkfallen"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Mortal Strike"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
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
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
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
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
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
			["Impaired Eyesight"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Rot"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Dead Zone"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Venomous Pool"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Reverberating Blow"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
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
			["227959"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Body Slam"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["228519"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Mark of Emeriss"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Static Wound"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["193367"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["232450"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Kick Shell"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Shadow Blast"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["228250"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["228228"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["228030"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Plucked"] = {
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
			["184450"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Mark of the Necromancer"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Swirling Winds"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Unbound Essence"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Gas Spore"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Amber Prison"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Siphon Soul"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Burning Bile"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
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
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Ensnared"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Gastric Bloat"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Bellowing Roar"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Sonic Breath"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Hydro Lance"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Stone Gaze"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
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
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Volatile Infection"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Napalm Shell"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Dulled Synapses"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Loose Quills"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Keen Eyesight"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Mark of Lethon"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Gale Force Winds"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Toxic Link"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Mark of Ysondre"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Miasma"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Shadow Weakness"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
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
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Crystalline Barrage"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Gut Spray"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Spew Corruption"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Destabilizing Energies"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Thundering Throw"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Dripping Fangs"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Flash Freeze"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Blistering Heat"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Whirling"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Rot Armor"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Gouge Throat"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Touch of Corruption"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Harvest Soul"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Unstable Decay"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Static Shock"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Momentum"] = {
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
			["Body Heat"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Shared Fate"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Chain Hurl"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Soul Fragment"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Shield Bash"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Touch of Harm"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Keg Toss"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Crush"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Paralytic Toxin"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Volatile Fire"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Electrical Shock"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Wildfire Spark"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Maim"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Cleansing Waters"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Maddening Shout"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Serpent's Vitality"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["108220"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Wind Burn"] = {
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
			["Yellow Beam Precast"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Weak Points"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["228915"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Shadow of Death"] = {
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
			["Huddle in Terror"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Savage Vines"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Frozen Blood"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Ice Patch"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Conflagration"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Blazing Sunlight"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Corruption: Accelerated"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Slagged"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Shattered Ice"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Focused Gaze"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Mutated Infection"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Blood of Neltharion"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Mesmerize"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Unbound Touch"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Pursuit"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Fiery Web Silk"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Stomp"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Rune of Blood"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Flame Torrent"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Mistress' Kiss"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Fieroblast"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Corruption Kick"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Break"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Debilitation"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Necrotic Plague"] = {
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
			["Touch of Light"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Shields Down"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Faded Into Twilight"] = {
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
			["Sha Corruption"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Caustic Amber"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
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
			["Eternal Darkness"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Biting Chill"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Fan of Flames"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Focused Energy"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Cutter Laser Target"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Wasting Dread"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Necrotic Venom"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Iron Tomb"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Poison Soaked Shell"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Expel Magic: Fire"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Deep Corruption"] = {
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
			["Fragile Bones"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Pheromone Trail"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Crimson Wake"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Toxic Spores"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Engulfing Magic"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Gouge"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Dire Fixation"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Lightning Bolt"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Ancient Barrier"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Petrifying Slam"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Fiery Grip"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Freezing Breath"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Crashing Thunder"] = {
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
			["Bonecracker"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["189030"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Frost Breath"] = {
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
			["Scary Fog"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Jasper Petrification"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Ignite Flesh"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Low Health"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Cho's Blast"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Riposte"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Force of Will Precast"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Blaze"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Consuming Darkness"] = {
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
			["Phantasmal Winds"] = {
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
			["Web of Pain"] = {
				["isStacks"] = true,
				["animate"] = false,
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
			["Arcing Energy"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Blood Corruption: Death"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Red Beam Precast"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Constricting Chains"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Convulsive Shadows"] = {
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
			["Icy Shadows"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Resonating Amber"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Frost Blast"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Injection"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Instability"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Bitter Thoughts"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Blazing Radiance"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Spinning Pain Spike"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Blackout"] = {
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
			["Pheromones of Zeal"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Frost Beacon"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Spray"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Life Drain"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Twisted Fate"] = {
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
			["Penetrating Shot"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Essence of the Blood Queen"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Garrote"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Warped Armor"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Overload"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Locked On"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Exposed Veins"] = {
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
			["Arterial Bleeding"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Icy Blood"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Explosive Tar"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Slimed"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Waterspout"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Pinned Down"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Sand Trap"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Touch of Sha"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Expel Magic: Arcane"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Lightning Charge"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Aim"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Arcane Wound"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Infested"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Burning Orbs"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Improved Synapses"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Nightmarish Cacophony"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Gift of the Man'ari"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Acid Breath"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Vengeful Strikes"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Pierced Armor"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Arcane Shock"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Energizing Smash"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Prototype Pulse Grenade"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Fel Corruption"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Devastating Arc"] = {
				["isStacks"] = false,
				["animate"] = true,
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
			["Malevolent Strikes"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Focused Lightning"] = {
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
			["Voodoo Doll"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Nightmare Bloom"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Genetic Alteration"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Storm Unleashed"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
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
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Waterlogged"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Seared Flesh"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Mark of Anguish"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Phantasmal Wounds"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Flames of Galakrond"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Lesson of Icarus"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["The Tenderizer"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Frozen Solid"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Sonic Screech"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Naked and Afraid"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Fel Bomb"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["color"] = {
					["TG"] = 0.5,
					["R"] = 0.6,
					["TB"] = 0,
					["G"] = 0.3,
					["TR"] = 0.8,
					["TO"] = 1,
					["useOpacity"] = true,
					["useText"] = true,
					["useBackground"] = true,
					["O"] = 1,
					["B"] = 0,
				},
				["isColor"] = true,
				["timer"] = true,
			},
			["Nightmare Explosion"] = {
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
			["Anima Ring"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Malformed Blood"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Consuming Terror"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Lingering Gaze"] = {
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
			["Poison Cloud"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Crystal Prison Trap Effect"] = {
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
			["Mannoroth's Gaze"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Burst of Corruption"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Mortal Rend"] = {
				["isStacks"] = false,
				["animate"] = true,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Gravity Bomb"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Cursed Blood"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Branded: Fortification"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Charring Breath"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Infest"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Tormenting Fixation"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Tail Lash"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
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
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Ice Tomb"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Slicing Gale"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Gushing Wound"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Gravity Crush"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Mark of Taerar"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Caustic Blood"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Darkening Soul"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Nightmare Javelin"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Scorned Touch"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Fixate"] = {
				["isStacks"] = true,
				["animate"] = false,
				["timer"] = true,
				["isColor"] = false,
				["isIcon"] = true,
			},
			["Corruption: Descent into Madness"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Desiccating Stomp"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Electrical Storm"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
			},
			["Bonds of Terror"] = {
				["isStacks"] = true,
				["animate"] = false,
				["isIcon"] = true,
				["isColor"] = false,
				["timer"] = true,
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
				["useText"] = true,
				["useBackground"] = true,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["FONT"] = "Interface\\AddOns\\ElvUI\\media\\fonts\\PT_Sans_Narrow.ttf",
			["USE_SHADOW"] = true,
		},
		["point"] = "TOPRIGHT",
		["timer"] = true,
		["isName"] = false,
		["xAdjust"] = -46,
		["yAdjust"] = -36,
	},
	["PARSE_COMBAT_LOG"] = true,
	["ON_MOUSE_UP"] = false,
	["OMIT_TARGET"] = false,
	["IS_SHOW_GCD"] = false,
	["BLIZZ_UI_HIDE_FOCUS"] = 2,
	["DETECT_DEBUFFS_IGNORE_NO_HARM"] = false,
	["DETECT_DEBUFFS_IGNORE_BY_CLASS"] = true,
	["EMERGENCY_TRIGGER"] = 100,
	["BLIZZ_UI_HIDE_RAID_MGR"] = 2,
	["OMIT_PLAYER_TARGETS"] = false,
	["SHOW_OVERHEAL"] = true,
	["SHOW_SHIELD_BAR"] = true,
	["SHOW_PLAYER_TAGS"] = true,
	["DIRECTION"] = {
		["isAlways"] = false,
		["isDistanceText"] = true,
		["enable"] = false,
		["isDeadOnly"] = false,
		["scale"] = 76,
	},
	["UPDATE_HOTS_MS"] = 150,
	["SMARTCAST_BUFF"] = false,
	["OMIT_MAIN_TANKS"] = false,
	["HIDE_PANELS_SOLO"] = false,
	["CURRENT_PROFILE"] = "WOD HEALS",
	["AUTO_PROFILES"] = {
	},
	["SHOW_INCOMING"] = true,
	["RES_IS_SHOW_TEXT"] = true,
	["OMIT_FOCUS"] = false,
	["HIDE_EMPTY_BUTTONS"] = true,
	["OMIT_SELF"] = false,
	["RES_ANNOUNCE_TEXT"] = "Come to life, vuhdo, because Ewanee loves you!",
	["IS_SHARE"] = true,
	["BLIZZ_UI_HIDE_TARGET"] = 2,
	["SCAN_RANGE"] = "2",
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
	["DETECT_DEBUFFS_REMOVABLE_ONLY_ICONS"] = false,
	["IS_DC_SHIELD_DISABLED"] = false,
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
			["y"] = 440.531005859375,
			["x"] = 675.474426269531,
			["scale"] = 1,
			["relativePoint"] = "BOTTOMLEFT",
			["orientation"] = "BOTTOMRIGHT",
			["height"] = 34.0000152587891,
			["growth"] = "BOTTOMRIGHT",
			["width"] = 87.999984741211,
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
				6, -- [1]
				5, -- [2]
				4, -- [3]
				3, -- [4]
				2, -- [5]
				1, -- [6]
			},
			["ordering"] = 0,
			["sort"] = 6,
			["isReverse"] = true,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = 7.9186,
			["position"] = 1,
			["SCALE"] = 1,
			["y"] = -134.4681,
			["point"] = "RIGHT",
			["relativePoint"] = "RIGHT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0.4,
				["useOpacity"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
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
			["TEXT"] = {
				["outline"] = false,
				["USE_MONO"] = false,
				["useText"] = true,
				["maxChars"] = 0,
				["font"] = "Interface\\AddOns\\ElvUI\\media\\fonts\\PT_Sans_Narrow.ttf",
				["textSize"] = 13,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 12,
				["useOpacity"] = true,
			},
		},
		["HOTS"] = {
			["size"] = 62,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["rowSpacing"] = 1,
			["targetWidth"] = 30,
			["scale"] = 1.1,
			["maxColumnsWhenStructured"] = 6,
			["barWidth"] = 88,
			["borderGapY"] = 0,
			["columnSpacing"] = 1,
			["targetSpacing"] = 3,
			["showTarget"] = false,
			["ommitEmptyWhenStructured"] = true,
			["targetOrientation"] = 1,
			["maxRowsWhenLoose"] = 6,
			["sideLeftWidth"] = 6,
			["sideRightWidth"] = 6,
			["headerSpacing"] = 5,
			["borderGapX"] = 0,
			["manaBarHeight"] = 3,
			["headerWidth"] = 100,
			["isPlayerOnTop"] = true,
			["showHeaders"] = false,
			["isDamFlash"] = true,
			["showTot"] = false,
			["totWidth"] = 30,
			["totSpacing"] = 3,
			["isTarClassColBack"] = false,
			["arrangeHorizontal"] = false,
			["isTarClassColText"] = true,
			["damFlashFactor"] = 0.55,
			["barHeight"] = 34,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = true,
			["position"] = 4,
			["showTotalHp"] = false,
			["mode"] = 1,
			["verbose"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "CENTER+CENTER",
			["yAdjust"] = 0,
			["_spacing"] = 25,
			["xAdjust"] = 0,
			["showPetOwners"] = true,
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
			["y"] = 442.906158447266,
			["x"] = 677.820922851563,
			["scale"] = 1,
			["relativePoint"] = "BOTTOMLEFT",
			["orientation"] = "BOTTOMLEFT",
			["height"] = 68.999984741211,
			["growth"] = "BOTTOMLEFT",
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
			["sort"] = 7,
			["ordering"] = 1,
			["groups"] = {
				42, -- [1]
			},
			["isReverse"] = false,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = -4.286,
			["position"] = 1,
			["SCALE"] = 1,
			["y"] = 225.514,
			["point"] = "BOTTOMRIGHT",
			["relativePoint"] = "BOTTOMRIGHT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0.4,
				["useOpacity"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
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
			["TEXT"] = {
				["outline"] = false,
				["USE_MONO"] = false,
				["useText"] = true,
				["maxChars"] = 0,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["textSize"] = 12,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["useOpacity"] = true,
			},
		},
		["HOTS"] = {
			["size"] = 68,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["rowSpacing"] = 1,
			["targetWidth"] = 30,
			["scale"] = 1.1,
			["maxColumnsWhenStructured"] = 1,
			["barWidth"] = 88,
			["borderGapY"] = 0,
			["columnSpacing"] = 1,
			["targetSpacing"] = 3,
			["showTarget"] = false,
			["ommitEmptyWhenStructured"] = true,
			["targetOrientation"] = 1,
			["maxRowsWhenLoose"] = 2,
			["sideLeftWidth"] = 6,
			["sideRightWidth"] = 6,
			["headerSpacing"] = 5,
			["borderGapX"] = 0,
			["manaBarHeight"] = 3,
			["headerWidth"] = 100,
			["isPlayerOnTop"] = false,
			["showHeaders"] = false,
			["isDamFlash"] = true,
			["showTot"] = false,
			["totWidth"] = 30,
			["totSpacing"] = 3,
			["isTarClassColBack"] = false,
			["arrangeHorizontal"] = false,
			["isTarClassColText"] = true,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 34,
			["alignBottom"] = true,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
			["verbose"] = false,
		},
		["ID_TEXT"] = {
			["showClass"] = false,
			["showName"] = true,
			["showTags"] = true,
			["position"] = "BOTTOMRIGHT+BOTTOMRIGHT",
			["yAdjust"] = 0,
			["xAdjust"] = 0,
			["_spacing"] = 19.9999866485596,
			["showPetOwners"] = true,
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
			["y"] = 754.7151,
			["x"] = 459.1671,
			["scale"] = 1,
			["relativePoint"] = "BOTTOMLEFT",
			["orientation"] = "BOTTOMRIGHT",
			["height"] = 110,
			["growth"] = "BOTTOMRIGHT",
			["width"] = 88,
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
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = -4.286,
			["position"] = 1,
			["SCALE"] = 1,
			["y"] = 225.514,
			["point"] = "BOTTOMRIGHT",
			["relativePoint"] = "BOTTOMRIGHT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0.4,
				["useOpacity"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
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
			["TEXT"] = {
				["outline"] = false,
				["USE_MONO"] = false,
				["useText"] = true,
				["maxChars"] = 0,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["useOpacity"] = true,
			},
		},
		["HOTS"] = {
			["size"] = 68,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["rowSpacing"] = 1,
			["targetWidth"] = 30,
			["scale"] = 1.1,
			["maxColumnsWhenStructured"] = 2,
			["barWidth"] = 88,
			["borderGapY"] = 0,
			["columnSpacing"] = 1,
			["targetSpacing"] = 3,
			["showTarget"] = false,
			["ommitEmptyWhenStructured"] = true,
			["targetOrientation"] = 1,
			["maxRowsWhenLoose"] = 5,
			["sideLeftWidth"] = 6,
			["sideRightWidth"] = 6,
			["headerSpacing"] = 5,
			["borderGapX"] = 0,
			["manaBarHeight"] = 3,
			["headerWidth"] = 100,
			["isPlayerOnTop"] = false,
			["showHeaders"] = false,
			["isDamFlash"] = true,
			["showTot"] = false,
			["totWidth"] = 30,
			["totSpacing"] = 3,
			["isTarClassColBack"] = false,
			["arrangeHorizontal"] = false,
			["isTarClassColText"] = true,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 34,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
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
			["y"] = 591.5653,
			["x"] = 242.9405,
			["scale"] = 1,
			["relativePoint"] = "BOTTOMLEFT",
			["orientation"] = "BOTTOMRIGHT",
			["height"] = 110,
			["growth"] = "BOTTOMRIGHT",
			["width"] = 88,
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
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = -311.287,
			["position"] = 1,
			["SCALE"] = 1,
			["y"] = -209.387,
			["point"] = "CENTER",
			["relativePoint"] = "CENTER",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0.4,
				["useOpacity"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
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
			["TEXT"] = {
				["outline"] = false,
				["USE_MONO"] = false,
				["useText"] = true,
				["maxChars"] = 0,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["useOpacity"] = true,
			},
		},
		["HOTS"] = {
			["size"] = 68,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["rowSpacing"] = 1,
			["targetWidth"] = 30,
			["scale"] = 1.1,
			["maxColumnsWhenStructured"] = 5,
			["barWidth"] = 88,
			["borderGapY"] = 0,
			["columnSpacing"] = 1,
			["targetSpacing"] = 3,
			["showTarget"] = false,
			["ommitEmptyWhenStructured"] = true,
			["targetOrientation"] = 1,
			["maxRowsWhenLoose"] = 5,
			["sideLeftWidth"] = 6,
			["sideRightWidth"] = 6,
			["headerSpacing"] = 5,
			["borderGapX"] = 0,
			["manaBarHeight"] = 3,
			["headerWidth"] = 100,
			["isPlayerOnTop"] = false,
			["showHeaders"] = false,
			["isDamFlash"] = true,
			["showTot"] = false,
			["totWidth"] = 30,
			["totSpacing"] = 3,
			["isTarClassColBack"] = false,
			["arrangeHorizontal"] = false,
			["isTarClassColText"] = true,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 34,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
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
			["y"] = 442.9859,
			["x"] = 841.0563,
			["scale"] = 1,
			["relativePoint"] = "BOTTOMLEFT",
			["orientation"] = "BOTTOMRIGHT",
			["height"] = 110,
			["growth"] = "BOTTOMRIGHT",
			["width"] = 88,
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
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = -4.286,
			["position"] = 1,
			["SCALE"] = 1,
			["y"] = 225.514,
			["point"] = "BOTTOMRIGHT",
			["relativePoint"] = "BOTTOMRIGHT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0,
				["useOpacity"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
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
			["TEXT"] = {
				["outline"] = false,
				["USE_MONO"] = false,
				["useText"] = true,
				["maxChars"] = 0,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["useOpacity"] = true,
			},
		},
		["HOTS"] = {
			["size"] = 68,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["rowSpacing"] = 1,
			["targetWidth"] = 30,
			["scale"] = 1.1,
			["maxColumnsWhenStructured"] = 5,
			["barWidth"] = 88,
			["borderGapY"] = 0,
			["columnSpacing"] = 1,
			["targetSpacing"] = 3,
			["showTarget"] = false,
			["ommitEmptyWhenStructured"] = true,
			["targetOrientation"] = 1,
			["maxRowsWhenLoose"] = 5,
			["sideLeftWidth"] = 6,
			["sideRightWidth"] = 6,
			["headerSpacing"] = 5,
			["borderGapX"] = 0,
			["manaBarHeight"] = 3,
			["headerWidth"] = 100,
			["isPlayerOnTop"] = false,
			["showHeaders"] = false,
			["isDamFlash"] = true,
			["showTot"] = false,
			["totWidth"] = 30,
			["totSpacing"] = 3,
			["isTarClassColBack"] = false,
			["arrangeHorizontal"] = false,
			["isTarClassColText"] = true,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 34,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
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
			["scale"] = 1,
			["relativePoint"] = "BOTTOMLEFT",
			["orientation"] = "BOTTOMRIGHT",
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
			["ordering"] = 0,
			["sort"] = 3,
			["isReverse"] = true,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = -4.286,
			["position"] = 1,
			["SCALE"] = 1,
			["y"] = 225.514,
			["point"] = "BOTTOMRIGHT",
			["relativePoint"] = "BOTTOMRIGHT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0.4,
				["useOpacity"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
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
			["TEXT"] = {
				["outline"] = false,
				["USE_MONO"] = false,
				["useText"] = true,
				["maxChars"] = 0,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["useOpacity"] = true,
			},
		},
		["HOTS"] = {
			["size"] = 68,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["rowSpacing"] = 1,
			["targetWidth"] = 30,
			["scale"] = 1.1,
			["maxColumnsWhenStructured"] = 5,
			["barWidth"] = 88,
			["borderGapY"] = 0,
			["columnSpacing"] = 1,
			["targetSpacing"] = 3,
			["showTarget"] = false,
			["ommitEmptyWhenStructured"] = true,
			["targetOrientation"] = 1,
			["maxRowsWhenLoose"] = 5,
			["sideLeftWidth"] = 6,
			["sideRightWidth"] = 6,
			["headerSpacing"] = 5,
			["borderGapX"] = 0,
			["manaBarHeight"] = 3,
			["headerWidth"] = 100,
			["isPlayerOnTop"] = false,
			["showHeaders"] = true,
			["isDamFlash"] = true,
			["showTot"] = false,
			["totWidth"] = 30,
			["totSpacing"] = 3,
			["isTarClassColBack"] = false,
			["arrangeHorizontal"] = false,
			["isTarClassColText"] = true,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 34,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
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
			["show"] = false,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 668,
			["x"] = 100,
			["scale"] = 1,
			["relativePoint"] = "BOTTOMLEFT",
			["orientation"] = "TOPLEFT",
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
			["ordering"] = 0,
			["sort"] = 3,
			["isReverse"] = true,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = -4.286,
			["position"] = 1,
			["SCALE"] = 1,
			["y"] = 225.514,
			["point"] = "BOTTOMRIGHT",
			["relativePoint"] = "BOTTOMRIGHT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0.4,
				["useOpacity"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
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
			["TEXT"] = {
				["outline"] = false,
				["USE_MONO"] = false,
				["useText"] = true,
				["maxChars"] = 0,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["useOpacity"] = true,
			},
		},
		["HOTS"] = {
			["size"] = 68,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["rowSpacing"] = 1,
			["targetWidth"] = 30,
			["scale"] = 1.1,
			["maxColumnsWhenStructured"] = 5,
			["barWidth"] = 88,
			["borderGapY"] = 0,
			["columnSpacing"] = 1,
			["targetSpacing"] = 3,
			["showTarget"] = false,
			["ommitEmptyWhenStructured"] = true,
			["targetOrientation"] = 1,
			["maxRowsWhenLoose"] = 5,
			["sideLeftWidth"] = 6,
			["sideRightWidth"] = 6,
			["headerSpacing"] = 5,
			["borderGapX"] = 0,
			["manaBarHeight"] = 3,
			["headerWidth"] = 100,
			["isPlayerOnTop"] = false,
			["showHeaders"] = true,
			["isDamFlash"] = true,
			["showTot"] = false,
			["totWidth"] = 30,
			["totSpacing"] = 3,
			["isTarClassColBack"] = false,
			["arrangeHorizontal"] = false,
			["isTarClassColText"] = true,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 34,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
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
			["show"] = false,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 668,
			["x"] = 100,
			["scale"] = 1,
			["relativePoint"] = "BOTTOMLEFT",
			["orientation"] = "TOPLEFT",
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
			["ordering"] = 0,
			["sort"] = 3,
			["isReverse"] = true,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = -4.286,
			["position"] = 1,
			["SCALE"] = 1,
			["y"] = 225.514,
			["point"] = "BOTTOMRIGHT",
			["relativePoint"] = "BOTTOMRIGHT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0.4,
				["useOpacity"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
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
			["TEXT"] = {
				["outline"] = false,
				["USE_MONO"] = false,
				["useText"] = true,
				["maxChars"] = 0,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["useOpacity"] = true,
			},
		},
		["HOTS"] = {
			["size"] = 68,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["rowSpacing"] = 1,
			["targetWidth"] = 30,
			["scale"] = 1.1,
			["maxColumnsWhenStructured"] = 5,
			["barWidth"] = 88,
			["borderGapY"] = 0,
			["columnSpacing"] = 1,
			["targetSpacing"] = 3,
			["showTarget"] = false,
			["ommitEmptyWhenStructured"] = true,
			["targetOrientation"] = 1,
			["maxRowsWhenLoose"] = 5,
			["sideLeftWidth"] = 6,
			["sideRightWidth"] = 6,
			["headerSpacing"] = 5,
			["borderGapX"] = 0,
			["manaBarHeight"] = 3,
			["headerWidth"] = 100,
			["isPlayerOnTop"] = false,
			["showHeaders"] = true,
			["isDamFlash"] = true,
			["showTot"] = false,
			["totWidth"] = 30,
			["totSpacing"] = 3,
			["isTarClassColBack"] = false,
			["arrangeHorizontal"] = false,
			["isTarClassColText"] = true,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 34,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
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
			["show"] = false,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 668,
			["x"] = 100,
			["scale"] = 1,
			["relativePoint"] = "BOTTOMLEFT",
			["orientation"] = "TOPLEFT",
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
			["ordering"] = 0,
			["sort"] = 3,
			["isReverse"] = true,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = -4.286,
			["position"] = 1,
			["SCALE"] = 1,
			["y"] = 225.514,
			["point"] = "BOTTOMRIGHT",
			["relativePoint"] = "BOTTOMRIGHT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0.4,
				["useOpacity"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
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
			["TEXT"] = {
				["outline"] = false,
				["USE_MONO"] = false,
				["useText"] = true,
				["maxChars"] = 0,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["useOpacity"] = true,
			},
		},
		["HOTS"] = {
			["size"] = 68,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["rowSpacing"] = 1,
			["targetWidth"] = 30,
			["scale"] = 1.1,
			["maxColumnsWhenStructured"] = 5,
			["barWidth"] = 88,
			["borderGapY"] = 0,
			["columnSpacing"] = 1,
			["targetSpacing"] = 3,
			["showTarget"] = false,
			["ommitEmptyWhenStructured"] = true,
			["targetOrientation"] = 1,
			["maxRowsWhenLoose"] = 5,
			["sideLeftWidth"] = 6,
			["sideRightWidth"] = 6,
			["headerSpacing"] = 5,
			["borderGapX"] = 0,
			["manaBarHeight"] = 3,
			["headerWidth"] = 100,
			["isPlayerOnTop"] = false,
			["showHeaders"] = true,
			["isDamFlash"] = true,
			["showTot"] = false,
			["totWidth"] = 30,
			["totSpacing"] = 3,
			["isTarClassColBack"] = false,
			["arrangeHorizontal"] = false,
			["isTarClassColText"] = true,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 34,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
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
			["show"] = false,
			["yAdjust"] = 0,
			["point"] = "LEFT",
			["scale"] = 1,
			["xAdjust"] = 0,
		},
		["POSITION"] = {
			["y"] = 668,
			["x"] = 100,
			["scale"] = 1,
			["relativePoint"] = "BOTTOMLEFT",
			["orientation"] = "TOPLEFT",
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
			["ordering"] = 0,
			["sort"] = 3,
			["isReverse"] = true,
		},
		["TOOLTIP"] = {
			["BACKGROUND"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["inFight"] = false,
			["BORDER"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 1,
				["useOpacity"] = true,
			},
			["showBuffs"] = false,
			["show"] = true,
			["x"] = -4.286,
			["position"] = 1,
			["SCALE"] = 1,
			["y"] = 225.514,
			["point"] = "BOTTOMRIGHT",
			["relativePoint"] = "BOTTOMRIGHT",
		},
		["PANEL_COLOR"] = {
			["BACK"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 0,
				["G"] = 0,
				["O"] = 0.4,
				["useOpacity"] = true,
			},
			["HEADER"] = {
				["TG"] = 0.859,
				["R"] = 1,
				["TB"] = 0.38,
				["barTexture"] = "LiteStepLite",
				["G"] = 1,
				["TR"] = 1,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["TO"] = 1,
				["B"] = 1,
				["O"] = 0.4,
				["useText"] = true,
				["textSize"] = 10,
				["useBackground"] = true,
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
			["TEXT"] = {
				["outline"] = false,
				["USE_MONO"] = false,
				["useText"] = true,
				["maxChars"] = 0,
				["font"] = "Interface\\AddOns\\ArkInventory\\Fonts\\Emblem.ttf",
				["textSize"] = 10,
				["USE_SHADOW"] = true,
				["textSizeLife"] = 8,
				["useOpacity"] = true,
			},
		},
		["HOTS"] = {
			["size"] = 68,
		},
		["SCALING"] = {
			["headerHeight"] = 16,
			["rowSpacing"] = 1,
			["targetWidth"] = 30,
			["scale"] = 1.1,
			["maxColumnsWhenStructured"] = 5,
			["barWidth"] = 88,
			["borderGapY"] = 0,
			["columnSpacing"] = 1,
			["targetSpacing"] = 3,
			["showTarget"] = false,
			["ommitEmptyWhenStructured"] = true,
			["targetOrientation"] = 1,
			["maxRowsWhenLoose"] = 5,
			["sideLeftWidth"] = 6,
			["sideRightWidth"] = 6,
			["headerSpacing"] = 5,
			["borderGapX"] = 0,
			["manaBarHeight"] = 3,
			["headerWidth"] = 100,
			["isPlayerOnTop"] = false,
			["showHeaders"] = true,
			["isDamFlash"] = true,
			["showTot"] = false,
			["totWidth"] = 30,
			["totSpacing"] = 3,
			["isTarClassColBack"] = false,
			["arrangeHorizontal"] = false,
			["isTarClassColText"] = true,
			["damFlashFactor"] = 0.75,
			["barHeight"] = 34,
			["alignBottom"] = false,
		},
		["LIFE_TEXT"] = {
			["show"] = true,
			["hideIrrelevant"] = false,
			["position"] = 3,
			["showTotalHp"] = false,
			["mode"] = 1,
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
			["TG"] = 0.82,
		},
		["HEALTH_TEXT"] = {
			["TR"] = 1,
			["TO"] = 1,
			["TB"] = 0,
			["useText"] = false,
			["TG"] = 0,
		},
		["BARS"] = {
			["useBackground"] = true,
			["R"] = 0.2353,
			["B"] = 0.2353,
			["G"] = 0.2353,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["classColorsName"] = true,
	},
	["HOTS"] = {
		["iconRadioValue"] = 1,
		["SLOTS"] = {
			"Renew", -- [1]
			"Prayer of Mending", -- [2]
			"BOUQUET_PW:S & Weakened Soul", -- [3]
			"Echo of Light", -- [4]
			"Divine Aegis", -- [5]
			[10] = "BOUQUET_Tank Cooldowns extd",
			[9] = "Spirit Shell",
		},
		["BARS"] = {
			["radioValue"] = 4,
			["width"] = 17.5,
		},
		["TIMER_TEXT"] = {
			["X_ADJUST"] = 24,
			["SCALE"] = 90,
			["USE_MONO"] = false,
			["Y_ADJUST"] = 0,
			["FONT"] = "Interface\\AddOns\\ElvUI\\media\\fonts\\PT_Sans_Narrow.ttf",
			["USE_SHADOW"] = false,
			["ANCHOR"] = "CENTER",
			["USE_OUTLINE"] = true,
		},
		["radioValue"] = 21,
		["SLOTCFG"] = {
			["1"] = {
				["scale"] = 1,
				["mine"] = true,
			},
			["3"] = {
				["scale"] = 1,
				["mine"] = true,
			},
			["2"] = {
				["scale"] = 1,
				["mine"] = true,
				["others"] = true,
			},
			["5"] = {
				["scale"] = 1,
				["mine"] = true,
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
		["stacksRadioValue"] = 2,
		["COUNTER_TEXT"] = {
			["X_ADJUST"] = -30,
			["SCALE"] = 90,
			["USE_MONO"] = false,
			["Y_ADJUST"] = -50,
			["FONT"] = "Interface\\AddOns\\ElvUI\\media\\fonts\\PT_Sans_Narrow.ttf",
			["USE_SHADOW"] = false,
			["ANCHOR"] = "TOPLEFT",
			["USE_OUTLINE"] = true,
		},
	},
	["BAR_COLORS"] = {
		["OVERHEAL_TEXT"] = {
			["TR"] = 0.8,
			["TO"] = 1,
			["TB"] = 0.8,
			["TG"] = 1,
			["useText"] = true,
			["useOpacity"] = true,
		},
		["HOT7"] = {
			["useBackground"] = true,
			["R"] = 1,
			["B"] = 1,
			["O"] = 0.75,
			["G"] = 1,
		},
		["TARGET"] = {
			["TG"] = 1,
			["R"] = 0,
			["TB"] = 1,
			["G"] = 1,
			["modeText"] = 3,
			["TR"] = 1,
			["B"] = 0,
			["TO"] = 1,
			["useOpacity"] = true,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["modeBack"] = 4,
		},
		["HOT1"] = {
			["TG"] = 1,
			["countdownMode"] = 1,
			["R"] = 1,
			["TB"] = 0.968,
			["G"] = 0.984,
			["B"] = 0.968,
			["useOpacity"] = false,
			["O"] = 1,
			["TO"] = 1,
			["isClock"] = false,
			["useBackground"] = true,
			["useText"] = true,
			["isFullDuration"] = true,
			["TR"] = 0.992,
		},
		["useDebuffIconBossOnly"] = false,
		["DIRECTION"] = {
			["useBackground"] = true,
			["R"] = 1,
			["B"] = 0.4,
			["O"] = 1,
			["G"] = 0.4,
		},
		["EMERGENCY"] = {
			["TG"] = 0.82,
			["R"] = 1,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["BAR_FRAMES"] = {
			["useBackground"] = true,
			["R"] = 0,
			["B"] = 0,
			["G"] = 0,
			["O"] = 0.7,
			["useOpacity"] = true,
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
				["useText"] = false,
				["useBackground"] = false,
				["O"] = 1,
				["useOpacity"] = false,
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
				["useText"] = false,
				["useBackground"] = false,
				["O"] = 1,
				["useOpacity"] = false,
			},
			["2"] = {
				["TG"] = 0.827,
				["R"] = 1,
				["TB"] = 0.419,
				["G"] = 0.513,
				["TR"] = 1,
				["TO"] = 1,
				["B"] = 0.039,
				["useText"] = false,
				["useBackground"] = false,
				["O"] = 1,
				["useOpacity"] = false,
			},
			["enable"] = false,
			["4"] = {
				["TG"] = 1,
				["R"] = 0,
				["TB"] = 0.6979,
				["G"] = 0.8,
				["TR"] = 0.6979,
				["TO"] = 1,
				["B"] = 0.015,
				["useText"] = false,
				["useBackground"] = false,
				["O"] = 1,
				["useOpacity"] = false,
			},
			["7"] = {
				["TG"] = 0.627,
				["R"] = 0.8,
				["TB"] = 0.619,
				["G"] = 0.184,
				["TR"] = 1,
				["TO"] = 1,
				["B"] = 0.129,
				["useText"] = false,
				["useBackground"] = false,
				["O"] = 1,
				["useOpacity"] = false,
			},
			["6"] = {
				["TG"] = 0.831,
				["R"] = 0.121,
				["TB"] = 1,
				["G"] = 0.6899,
				["TR"] = 0.662,
				["TO"] = 1,
				["B"] = 0.972,
				["useText"] = false,
				["useBackground"] = false,
				["O"] = 1,
				["useOpacity"] = false,
			},
			["8"] = {
				["TG"] = 0.231,
				["R"] = 0.847,
				["TB"] = 0.231,
				["G"] = 0.866,
				["TR"] = 0.231,
				["TO"] = 1,
				["B"] = 0.89,
				["useText"] = false,
				["useBackground"] = false,
				["O"] = 1,
				["useOpacity"] = false,
			},
			["5"] = {
				["TG"] = 0.87,
				["R"] = 0.466,
				["TB"] = 1,
				["G"] = 0.717,
				["TR"] = 0.725,
				["TO"] = 1,
				["B"] = 0.8,
				["useText"] = false,
				["useBackground"] = false,
				["O"] = 1,
				["useOpacity"] = false,
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
			["O"] = 0.5,
			["useOpacity"] = true,
		},
		["HOT9"] = {
			["TG"] = 1,
			["countdownMode"] = 2,
			["R"] = 0.301,
			["TB"] = 1,
			["G"] = 1,
			["B"] = 1,
			["useOpacity"] = false,
			["O"] = 1,
			["TO"] = 1,
			["isClock"] = false,
			["useBackground"] = true,
			["useText"] = true,
			["isFullDuration"] = true,
			["TR"] = 0.6,
		},
		["TAPPED"] = {
			["TG"] = 0.4,
			["R"] = 0.4,
			["TB"] = 0.4,
			["G"] = 0.4,
			["TR"] = 0.4,
			["TO"] = 1,
			["B"] = 0.4,
			["useText"] = true,
			["useBackground"] = true,
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
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = false,
		},
		["CLUSTER_GOOD"] = {
			["TG"] = 1,
			["R"] = 0,
			["TB"] = 0,
			["G"] = 0.8,
			["TR"] = 0,
			["TO"] = 1,
			["B"] = 0,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = false,
		},
		["DEBUFF3"] = {
			["TG"] = 0.957,
			["R"] = 0.4,
			["TB"] = 1,
			["G"] = 0.4,
			["TR"] = 0.329,
			["TO"] = 1,
			["B"] = 0.8,
			["useText"] = true,
			["useBackground"] = true,
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
			["O"] = 0.75,
			["G"] = 1,
		},
		["TARGET_ENEMY"] = {
			["TG"] = 0,
			["R"] = 1,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0,
			["useText"] = true,
			["useBackground"] = true,
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
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["DEBUFF1"] = {
			["TG"] = 1,
			["R"] = 0,
			["TB"] = 0.686,
			["G"] = 0.592,
			["TR"] = 0,
			["TO"] = 1,
			["B"] = 0.8,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["TARGET_NEUTRAL"] = {
			["TG"] = 1,
			["R"] = 1,
			["TB"] = 0,
			["G"] = 1,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["TARGET_FRIEND"] = {
			["TG"] = 1,
			["R"] = 0,
			["TB"] = 0,
			["G"] = 1,
			["TR"] = 0,
			["TO"] = 1,
			["B"] = 0,
			["useText"] = true,
			["useBackground"] = true,
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
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["HOTS"] = {
			["useColorText"] = true,
			["useColorBack"] = false,
			["isPumpDivineAegis"] = false,
			["isFadeOut"] = false,
			["isFlashWhenLow"] = false,
			["showShieldAbsorb"] = true,
			["WARNING"] = {
				["TG"] = 0.6,
				["lowSecs"] = 3,
				["R"] = 0.501,
				["TB"] = 0.6,
				["G"] = 0.2,
				["TR"] = 1,
				["TO"] = 1,
				["B"] = 0.2,
				["useBackground"] = true,
				["useText"] = true,
				["O"] = 1,
				["enabled"] = false,
			},
		},
		["SHIELD"] = {
			["TG"] = 0.52,
			["R"] = 0.35,
			["TB"] = 1,
			["G"] = 0.52,
			["TR"] = 0.35,
			["TO"] = 1,
			["B"] = 1,
			["useBackground"] = true,
			["useText"] = false,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["HOT5"] = {
			["TG"] = 0.992,
			["countdownMode"] = 1,
			["R"] = 1,
			["TB"] = 0.992,
			["G"] = 0.992,
			["B"] = 0.992,
			["useOpacity"] = false,
			["O"] = 1,
			["TO"] = 1,
			["isClock"] = false,
			["useBackground"] = true,
			["useText"] = true,
			["isFullDuration"] = true,
			["TR"] = 1,
		},
		["GCD_BAR"] = {
			["useBackground"] = true,
			["R"] = 0.4,
			["B"] = 0.4,
			["O"] = 0.5,
			["G"] = 0.4,
		},
		["HOT2"] = {
			["TG"] = 1,
			["countdownMode"] = 1,
			["R"] = 1,
			["TB"] = 0.968,
			["G"] = 0.984,
			["B"] = 0.968,
			["useOpacity"] = false,
			["O"] = 1,
			["TO"] = 1,
			["isClock"] = false,
			["useBackground"] = true,
			["useText"] = true,
			["isFullDuration"] = true,
			["TR"] = 0.992,
		},
		["DEAD"] = {
			["TG"] = 0.5,
			["R"] = 0.3,
			["TB"] = 0.5,
			["G"] = 0.3,
			["TR"] = 0.5,
			["TO"] = 1,
			["B"] = 0.3,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 0.5,
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
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["OFFLINE"] = {
			["TG"] = 0.576,
			["R"] = 0.298,
			["TB"] = 0.576,
			["G"] = 0.298,
			["TR"] = 0.576,
			["TO"] = 0.58,
			["B"] = 0.298,
			["useText"] = true,
			["useBackground"] = true,
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
			["O"] = 0.3,
			["useOpacity"] = true,
		},
		["HOT3"] = {
			["TG"] = 1,
			["countdownMode"] = 1,
			["R"] = 1,
			["TB"] = 1,
			["G"] = 1,
			["B"] = 1,
			["useOpacity"] = false,
			["O"] = 1,
			["TO"] = 1,
			["isClock"] = false,
			["useBackground"] = true,
			["useText"] = true,
			["isFullDuration"] = true,
			["TR"] = 1,
		},
		["HOT4"] = {
			["TG"] = 0.1409,
			["countdownMode"] = 1,
			["R"] = 1,
			["TB"] = 0.854,
			["G"] = 0.1719,
			["B"] = 0.725,
			["useOpacity"] = false,
			["O"] = 1,
			["TO"] = 1,
			["isClock"] = false,
			["useBackground"] = true,
			["useText"] = true,
			["isFullDuration"] = true,
			["TR"] = 1,
		},
		["HOT_CHARGE_4"] = {
			["TG"] = 1,
			["R"] = 0.8,
			["TB"] = 1,
			["G"] = 0.8,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0.8,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = false,
		},
		["DEBUFF2"] = {
			["TG"] = 0,
			["R"] = 0.8,
			["TB"] = 0,
			["G"] = 0.4,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0.4,
			["useText"] = true,
			["useBackground"] = true,
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
			["O"] = 0.75,
			["G"] = 1,
		},
		["HOT10"] = {
			["TG"] = 1,
			["countdownMode"] = 2,
			["R"] = 0.301,
			["TB"] = 1,
			["G"] = 1,
			["B"] = 1,
			["useOpacity"] = false,
			["O"] = 1,
			["TO"] = 1,
			["isClock"] = false,
			["useBackground"] = true,
			["useText"] = true,
			["isFullDuration"] = true,
			["TR"] = 0.6,
		},
		["THREAT"] = {
			["LOW"] = {
				["useBackground"] = true,
				["R"] = 0,
				["B"] = 1,
				["O"] = 1,
				["G"] = 1,
			},
			["HIGH"] = {
				["useBackground"] = true,
				["R"] = 1,
				["B"] = 1,
				["O"] = 1,
				["G"] = 0,
			},
		},
		["useDebuffIcon"] = true,
		["CLUSTER_FAIR"] = {
			["TG"] = 1,
			["R"] = 0.8,
			["TB"] = 0,
			["G"] = 0.8,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = false,
		},
		["DEBUFF6"] = {
			["TG"] = 0.5,
			["R"] = 0.6,
			["TB"] = 0,
			["G"] = 0.3,
			["TR"] = 0.8,
			["TO"] = 1,
			["B"] = 0,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["LIFE_LEFT"] = {
			["GOOD"] = {
				["useBackground"] = true,
				["R"] = 0.2235,
				["B"] = 0.2235,
				["O"] = 1,
				["G"] = 0.2235,
			},
			["LOW"] = {
				["useBackground"] = true,
				["R"] = 0.9569,
				["B"] = 0.9373,
				["O"] = 1,
				["G"] = 1,
			},
			["FAIR"] = {
				["useBackground"] = true,
				["R"] = 0.5176,
				["B"] = 0.5176,
				["O"] = 1,
				["G"] = 0.5176,
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
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = false,
		},
	},
}
VUHDO_SPELL_ASSIGNMENTS = {
	["altctrl2"] = {
		"alt-ctrl-", -- [1]
		"2", -- [2]
		"Renew", -- [3]
	},
	["altctrl3"] = {
		"alt-ctrl-", -- [1]
		"3", -- [2]
		"Levitate", -- [3]
	},
	["ctrl2"] = {
		"ctrl-", -- [1]
		"2", -- [2]
		"Renew", -- [3]
	},
	["shift2"] = {
		"shift-", -- [1]
		"2", -- [2]
		"Mind Sear", -- [3]
	},
	["shift3"] = {
		"shift-", -- [1]
		"3", -- [2]
		"Leap of Faith", -- [3]
	},
	["altctrl1"] = {
		"alt-ctrl-", -- [1]
		"1", -- [2]
		"Prayer of Healing", -- [3]
	},
	["ctrl5"] = {
		"ctrl-", -- [1]
		"5", -- [2]
		"Power Infusion", -- [3]
	},
	["ctrlshift1"] = {
		"ctrl-shift-", -- [1]
		"1", -- [2]
		"Target", -- [3]
	},
	["ctrlshift3"] = {
		"ctrl-shift-", -- [1]
		"3", -- [2]
		"Leap of Faith", -- [3]
	},
	["alt4"] = {
		"alt-", -- [1]
		"4", -- [2]
		"Greater Heal", -- [3]
	},
	["1"] = {
		"", -- [1]
		"1", -- [2]
		"Heal", -- [3]
	},
	["ctrlshift2"] = {
		"ctrl-shift-", -- [1]
		"2", -- [2]
		"Mind Sear", -- [3]
	},
	["3"] = {
		"", -- [1]
		"3", -- [2]
		"Power Word: Shield", -- [3]
	},
	["2"] = {
		"", -- [1]
		"2", -- [2]
		"Flash Heal", -- [3]
	},
	["5"] = {
		"", -- [1]
		"5", -- [2]
		"Penance", -- [3]
	},
	["4"] = {
		"", -- [1]
		"4", -- [2]
		"Greater Heal", -- [3]
	},
	["shift1"] = {
		"shift-", -- [1]
		"1", -- [2]
		"Target", -- [3]
	},
	["alt5"] = {
		"alt-", -- [1]
		"5", -- [2]
		"Penance", -- [3]
	},
	["alt1"] = {
		"alt-", -- [1]
		"1", -- [2]
		"Heal", -- [3]
	},
	["alt3"] = {
		"alt-", -- [1]
		"3", -- [2]
		"Power Word: Shield", -- [3]
	},
	["ctrl3"] = {
		"ctrl-", -- [1]
		"3", -- [2]
		"Levitate", -- [3]
	},
	["alt2"] = {
		"alt-", -- [1]
		"2", -- [2]
		"Flash Heal", -- [3]
	},
	["ctrl4"] = {
		"ctrl-", -- [1]
		"4", -- [2]
		"Pain Suppression", -- [3]
	},
	["altctrl4"] = {
		"alt-ctrl-", -- [1]
		"4", -- [2]
		"Pain Suppression", -- [3]
	},
	["ctrl1"] = {
		"ctrl-", -- [1]
		"1", -- [2]
		"Prayer of Healing", -- [3]
	},
	["altctrl5"] = {
		"alt-ctrl-", -- [1]
		"5", -- [2]
		"Power Infusion", -- [3]
	},
}
VUHDO_HOSTILE_SPELL_ASSIGNMENTS = {
	["1"] = {
		"", -- [1]
		"1", -- [2]
		"Smite", -- [3]
	},
	["3"] = {
		"", -- [1]
		"3", -- [2]
		"Shadow Word: Pain", -- [3]
	},
	["2"] = {
		"", -- [1]
		"2", -- [2]
		"Holy Fire", -- [3]
	},
	["5"] = {
		"", -- [1]
		"5", -- [2]
		"Penance", -- [3]
	},
	["ctrl3"] = {
		"ctrl-", -- [1]
		"3", -- [2]
		"mana burn", -- [3]
	},
	["ctrl1"] = {
		"ctrl-", -- [1]
		"1", -- [2]
		"Smite", -- [3]
	},
	["shift2"] = {
		"shift-", -- [1]
		"2", -- [2]
		"mind spike", -- [3]
	},
	["ctrl2"] = {
		"ctrl-", -- [1]
		"2", -- [2]
		"Mind Control", -- [3]
	},
	["4"] = {
		"", -- [1]
		"4", -- [2]
		"Mind Blast", -- [3]
	},
}
VUHDO_MM_SETTINGS = {
	["drag"] = "CIRCLE",
	["position"] = 0,
}
VUHDO_PLAYER_TARGETS = {
}
VUHDO_MAINTANK_NAMES = {
}
VUHDO_BUFF_SETTINGS = {
	["Inner Fire"] = {
		["enabled"] = true,
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
			["R"] = 0.9607,
		},
		["filter"] = {
			[999] = true,
		},
	},
	["Power Infusion"] = {
		["enabled"] = false,
		["missingColor"] = {
			["TG"] = 1,
			["B"] = 1,
			["TB"] = 1,
			["G"] = 1,
			["show"] = false,
			["useOpacity"] = true,
			["TO"] = 1,
			["useBackground"] = true,
			["useText"] = true,
			["TR"] = 1,
			["O"] = 1,
			["R"] = 1,
		},
		["name"] = "Krazyíto",
		["filter"] = {
			[999] = true,
		},
	},
	["Vampiric Embrace"] = {
		["missingColor"] = {
			["TG"] = 1,
			["B"] = 1,
			["TB"] = 1,
			["G"] = 1,
			["show"] = false,
			["useOpacity"] = true,
			["TO"] = 1,
			["useBackground"] = true,
			["useText"] = true,
			["TR"] = 1,
			["O"] = 1,
			["R"] = 0.9764,
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
			["useText"] = true,
			["useBackground"] = true,
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
			["useText"] = true,
			["useBackground"] = true,
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
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
		},
		["SHOW"] = false,
		["PANEL_BG_COLOR"] = {
			["useBackground"] = true,
			["R"] = 0,
			["B"] = 0,
			["O"] = 0.5,
			["G"] = 0,
		},
		["SWATCH_COLOR_BUFF_LOW"] = {
			["TG"] = 0.7,
			["R"] = 0,
			["TB"] = 0,
			["G"] = 0,
			["TR"] = 1,
			["TO"] = 1,
			["B"] = 0,
			["useText"] = true,
			["useBackground"] = true,
			["O"] = 1,
			["useOpacity"] = true,
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
			["R"] = 0,
			["B"] = 0,
			["O"] = 0.5,
			["G"] = 0,
		},
		["BAR_COLORS_BACKGROUND"] = true,
		["SWATCH_BG_COLOR"] = {
			["useBackground"] = true,
			["R"] = 0,
			["B"] = 0,
			["O"] = 1,
			["G"] = 0,
		},
		["POSITION"] = {
			["y"] = -228.6732,
			["x"] = 1.8865,
			["point"] = "TOPRIGHT",
			["relativePoint"] = "TOPRIGHT",
		},
		["PANEL_MAX_BUFFS"] = 5,
		["SWATCH_BORDER_COLOR"] = {
			["useBackground"] = true,
			["R"] = 0.8,
			["B"] = 0.8,
			["O"] = 0,
			["G"] = 0.8,
		},
		["REBUFF_AT_PERCENT"] = 25,
		["REBUFF_MIN_MINUTES"] = 3,
		["WHEEL_SMART_BUFF"] = false,
	},
	["Pain Suppression"] = {
		["enabled"] = false,
		["missingColor"] = {
			["TG"] = 1,
			["B"] = 1,
			["TB"] = 1,
			["G"] = 0.9843,
			["show"] = false,
			["useOpacity"] = true,
			["TO"] = 1,
			["useBackground"] = true,
			["useText"] = true,
			["TR"] = 1,
			["O"] = 1,
			["R"] = 0.9843,
		},
		["name"] = "Krazyíto",
		["filter"] = {
			[999] = true,
		},
	},
	["!"] = {
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
	["Power Word: Fortitude"] = {
		["enabled"] = true,
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
			["R"] = 0.9921,
		},
		["filter"] = {
			[999] = true,
		},
	},
	["Shadowfiend"] = {
		["missingColor"] = {
			["TG"] = 1,
			["B"] = 1,
			["TB"] = 1,
			["G"] = 1,
			["show"] = false,
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
		["enabled"] = false,
		["buff"] = "Shadowfiend",
	},
	["Levitate"] = {
		["enabled"] = true,
		["missingColor"] = {
			["TG"] = 1,
			["B"] = 0.647,
			["TB"] = 1,
			["G"] = 0.647,
			["show"] = false,
			["useOpacity"] = true,
			["TO"] = 1,
			["useBackground"] = true,
			["useText"] = true,
			["TR"] = 1,
			["O"] = 1,
			["R"] = 0.647,
		},
		["filter"] = {
			[999] = true,
		},
	},
	["Fear Ward"] = {
		["enabled"] = true,
		["missingColor"] = {
			["TG"] = 1,
			["B"] = 1,
			["TB"] = 1,
			["G"] = 1,
			["show"] = false,
			["useOpacity"] = true,
			["TO"] = 1,
			["useBackground"] = true,
			["useText"] = true,
			["TR"] = 1,
			["O"] = 1,
			["R"] = 1,
		},
		["name"] = "Sylvaeiardor",
		["filter"] = {
			[999] = true,
		},
	},
	["Chakra"] = {
		["missingColor"] = {
			["TG"] = 1,
			["B"] = 1,
			["TB"] = 1,
			["G"] = 1,
			["show"] = false,
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
		["enabled"] = false,
		["buff"] = "Chakra: Chastise",
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
		["useOpacity"] = true,
		["useText"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["B"] = 0,
	}, -- [1]
	{
		["TG"] = 0.5,
		["R"] = 1,
		["TB"] = 0.25,
		["G"] = 0.5,
		["TR"] = 1,
		["TO"] = 1,
		["useOpacity"] = true,
		["useText"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["B"] = 0.25,
	}, -- [2]
	{
		["TG"] = 1,
		["R"] = 1,
		["TB"] = 0,
		["G"] = 1,
		["TR"] = 1,
		["TO"] = 1,
		["useOpacity"] = true,
		["useText"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["B"] = 0,
	}, -- [3]
	{
		["TG"] = 1,
		["R"] = 0,
		["TB"] = 1,
		["G"] = 1,
		["TR"] = 0,
		["TO"] = 1,
		["useOpacity"] = true,
		["useText"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["B"] = 1,
	}, -- [4]
	nil, -- [5]
	{
		["TG"] = 0.5,
		["R"] = 0,
		["TB"] = 0.5,
		["G"] = 0.596,
		["TR"] = 0.5,
		["TO"] = 1,
		["useOpacity"] = true,
		["useText"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["B"] = 1,
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
		["useOpacity"] = true,
		["useText"] = true,
		["useBackground"] = true,
		["O"] = 1,
		["B"] = 1,
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
		["alt1"] = {
			"ALT-", -- [1]
			"-w3", -- [2]
			"", -- [3]
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
			"Shadow Word: Death", -- [3]
		},
		["shift1"] = {
			"SHIFT-", -- [1]
			"-w7", -- [2]
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
		["1"] = {
			"", -- [1]
			"-w1", -- [2]
			"Dispel Magic", -- [3]
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
	["WHEEL"] = {
		["alt1"] = {
			"ALT-", -- [1]
			"-w3", -- [2]
			"Purify", -- [3]
		},
		["altctrl2"] = {
			"ALT-CTRL-", -- [1]
			"-w10", -- [2]
			"Prayer of mending", -- [3]
		},
		["ctrl2"] = {
			"CTRL-", -- [1]
			"-w6", -- [2]
			"Prayer of mending", -- [3]
		},
		["2"] = {
			"", -- [1]
			"-w2", -- [2]
			"binding heal", -- [3]
		},
		["shift1"] = {
			"SHIFT-", -- [1]
			"-w7", -- [2]
			"Cure Disease", -- [3]
		},
		["shift2"] = {
			"SHIFT-", -- [1]
			"-w8", -- [2]
			"Hymn of hope", -- [3]
		},
		["altshift1"] = {
			"ALT-SHIFT-", -- [1]
			"-w11", -- [2]
			"", -- [3]
		},
		["altctrl1"] = {
			"ALT-CTRL-", -- [1]
			"-w9", -- [2]
			"Fear Ward", -- [3]
		},
		["ctrl1"] = {
			"CTRL-", -- [1]
			"-w5", -- [2]
			"Fear Ward", -- [3]
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
			"Binding Heal", -- [3]
		},
		["altctrlshift1"] = {
			"ALT-CTRL-SHIFT-", -- [1]
			"-w15", -- [2]
			"", -- [3]
		},
		["ctrlshift1"] = {
			"CTRL-SHIFT-", -- [1]
			"-w13", -- [2]
			"Cure Disease", -- [3]
		},
		["1"] = {
			"", -- [1]
			"-w1", -- [2]
			"Purify", -- [3]
		},
		["ctrlshift2"] = {
			"CTRL-SHIFT-", -- [1]
			"-w14", -- [2]
			"Hymn of hope", -- [3]
		},
	},
	["SPELL8"] = "",
	["SPELL1"] = "",
	["SPELL11"] = "",
}
VUHDO_SPELL_CONFIG = {
	["IS_FIRE_OUT_FIGHT"] = false,
	["IS_LOAD_HOTS"] = false,
	["IS_TOOLTIP_INFO"] = false,
	["smartCastModi"] = "all",
	["IS_FIRE_GLOVES"] = false,
	["IS_AUTO_FIRE"] = true,
	["IS_FIRE_CUSTOM_2"] = false,
	["IS_FIRE_TRINKET_2"] = false,
	["IS_FIRE_TRINKET_1"] = false,
	["IS_AUTO_TARGET"] = false,
	["FIRE_CUSTOM_2_SPELL"] = "",
	["FIRE_CUSTOM_1_SPELL"] = "",
	["autoBattleRez"] = true,
	["IS_CANCEL_CURRENT"] = false,
	["IS_FIRE_CUSTOM_1"] = false,
	["IS_FIRE_HOT"] = false,
}
VUHDO_BUFF_ORDER = {
	["!"] = 7,
	["Power Infusion"] = 1,
	["Vampiric Embrace"] = 2,
	["Shadowfiend"] = 4,
	["Power Word: Fortitude"] = 5,
	["Levitate"] = 6,
	["Pain Suppression"] = 3,
}
VUHDO_SPEC_LAYOUTS = {
	["1"] = "",
	["selected"] = "Disc",
	["2"] = "",
}
VUHDO_GROUP_SIZE = 1
VUHDO_RAID = {
	["player"] = {
		["zone"] = "Stormwind City",
		["baseRange"] = true,
		["class"] = "PRIEST",
		["role"] = 63,
		["sortMaxHp"] = 64239,
		["map"] = "StormwindCity",
		["threat"] = 0,
		["powermax"] = 37000,
		["threatPerc"] = 0,
		["isPet"] = false,
		["name"] = "Krazyíto",
		["number"] = 1,
		["isVehicle"] = false,
		["group"] = 1,
		["classId"] = 28,
		["range"] = true,
		["unit"] = "player",
		["powertype"] = 0,
		["healthmax"] = 64239,
		["dead"] = false,
		["charmed"] = false,
		["fullName"] = "Krazyíto",
		["power"] = 37000,
		["aggro"] = false,
		["visible"] = true,
		["targetUnit"] = "target",
		["health"] = 64239,
		["className"] = "Priest",
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
		["INCOMING_BAR"] = "",
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
		["SIDE_LEFT"] = "",
		["THREAT_MARK"] = "",
		["SIDE_RIGHT"] = "",
		["MANA_BAR"] = "Manabars: All Powers",
		["BAR_BORDER"] = "Border: Multi + Aggro",
		["HEALTH_BAR"] = "Health Bar: (generic, gradient)",
		["DAMAGE_FLASH_BAR"] = "",
		["CLUSTER_BORDER"] = "",
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
			["WIDTH"] = 2,
			["FILE"] = "Interface\\AddOns\\VuhDo\\Images\\white_square_16_16",
		},
		["SWIFTMEND_INDICATOR"] = {
			["SCALE"] = 0.7,
		},
		["MANA_BAR"] = {
			["turnAxis"] = false,
			["invertGrowth"] = false,
			["TEXTURE"] = "VuhDo - Pipe, light",
		},
		["BAR_BORDER"] = {
			["FILE"] = "Interface\\AddOns\\VuhDo\\Images\\white_square_16_16",
			["ADJUST"] = 0,
			["WIDTH"] = 1,
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
		["SIDE_RIGHT"] = {
			["turnAxis"] = false,
			["vertical"] = true,
			["invertGrowth"] = false,
			["TEXTURE"] = "VuhDo - Polished Wood",
		},
		["SIDE_LEFT"] = {
			["turnAxis"] = false,
			["vertical"] = true,
			["invertGrowth"] = false,
			["TEXTURE"] = "VuhDo - Polished Wood",
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
					["B"] = 0,
					["useText"] = true,
					["useBackground"] = true,
					["O"] = 1,
					["useOpacity"] = true,
				},
				["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
				["USE_SHADOW"] = true,
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
					["B"] = 0,
					["useText"] = true,
					["useBackground"] = true,
					["O"] = 1,
					["useOpacity"] = true,
				},
				["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
				["USE_SHADOW"] = false,
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
					["B"] = 0,
					["useText"] = true,
					["useBackground"] = true,
					["O"] = 1,
					["useOpacity"] = true,
				},
				["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
				["USE_SHADOW"] = false,
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
					["B"] = 0,
					["useText"] = true,
					["useBackground"] = true,
					["O"] = 1,
					["useOpacity"] = true,
				},
				["FONT"] = "Interface\\AddOns\\VuhDo\\Fonts\\ariblk.ttf",
				["USE_SHADOW"] = true,
			},
		},
	},
}
