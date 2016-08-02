local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("Gear") then return end

if not ZygorGuidesViewer.ItemScore then return end

ZygorGuidesViewer.ItemScore.Items = {}


-- If an item is dropped by several bosses, go ahead and copy it to each.

-- Only load these items for mists.

if ZGV.Expansion_Mists then

ZygorGuidesViewer.ItemScore.Items["Pandaria Dungeons\\Temple of the Jade Serpent (TotJS)"] = {
	dungeonmap=867,
	dungeon=464,
	{ boss=56448, -- Wise Mari
	-- items
		80861, -- Riverbed Chestguard
		80862, -- Treads of Corrupted Water
		80860, -- Waterburst Helm
	},
	{ boss=56843, -- Lorewalker Stonestep
	-- items
		80864, -- Girdle of Endemic Anger
		80863, -- Stonestep Boots
		80865, -- Sunheart Waistband
	},
	{ boss=56785, -- Liu Flameheart
	-- items
		80866, -- Cape of Entanglement
		80872, -- Firebelcher Hand Cannon
		80867, -- Serpentstrike Shoulderpads
	},
	{ boss=56439, -- Sha of Doubt
	-- items
		80868, -- Doubtridden Shoulderguards
		80873, -- Dubious Handaxe
		80869, -- Hopecrusher Gauntlets
		80871, -- Neverdare Shoulders
		80870, -- Robes of Despair
		80874, -- Staff of Trembling Will
	},
	-- QUEST: Restoring Jade's Purity
	{ quest={31355},
		87292, -- Flameheart Wristguards
		87293, -- Defiant Archer's Bracers
		87294, -- Scrollkeeper's Cuffs
		87295, -- Summerpetal Cuffs
		87296, -- Coiled Serpent Armband
		87297, -- Wise Mari's Bracers
		87298, -- Bracers of Ancient Tales
		87299, -- Eversight Armplates
		87300, -- Armplates of the Jade Idol
	},
	-- QUEST: Deep Doubts, Deep Wisdom
	{ quest={31356},
		87283, -- Windstrong Leggings
		87284, -- Leggings of the Fifth Sun
		87285, -- Legguards of the Tides
		87286, -- Legplates of Absolute Clarity
		87287, -- Leggings of Inner Peace
		87288, -- Lui's Leggings
		87289, -- Equilibrium Legwraps
		87290, -- Legguards of Ironclad Confidence
		87291, -- Legplates of Pure Purpose
	},
}

ZygorGuidesViewer.ItemScore.Items["Pandaria Dungeons\\Temple of the Jade Serpent (Heroic)"] = {
	dungeonmap=867, heroic=1,
	dungeon=468,
	{ boss=56787, -- Wise Mari
	-- items
		81124, -- Crystalllized Droplet
		81083, -- Riverbed Chestguard
		81072, -- Treads of Corrupted Water
		81075, -- Waterburst Helm
		81123, -- Wind-Soaked Drape
	},
	{ boss=56843, -- Lorewalker Stonestep
	-- items
		81058, -- Girdle of Endemic Anger
		81126, -- Leggings of Whispered Dreams
		81073, -- Stonestep Boots
		81060, -- Sunheart Waistband
		81125, -- Windswept Pages
	},
	{ boss=56732, -- Liu Flameheart
	-- items
		81084, -- Cape of Entanglement
		81067, -- Firebelcher Hand Cannon
		81127, -- Flameheart Sandals
		81070, -- Serpentstrike Shoulderpads
		81128, -- Signet of Dancing Jade
	},
	{ boss=56439, -- Sha of Doubt
	-- items
		81130, -- Binding of Broken Dreams
		81129, -- Cloak of Failing Will
		81071, -- Doubtridden Shoulderguards
		81063, -- Dubious Handaxe
		81131, -- Mindbreaker Pendant
		81074, -- Hopecrusher Gauntlets
		81069, -- Neverdare Shoulders
		81132, -- Paralyzing Gloves
		81082, -- Robes of Despair
		81079, -- Staff of Trembling Will
		87544, -- Je'lyu, Spirit of the Serpent
	},
	-- QUEST: Restoring Jade's Purity
	{ quest={31355},
		87292, -- Flameheart Wristguards
		87293, -- Defiant Archer's Bracers
		87294, -- Scrollkeeper's Cuffs
		87295, -- Summerpetal Cuffs
		87296, -- Coiled Serpent Armband
		87297, -- Wose Mari's Bracers
		87298, -- Bracers of Ancient Tales
		87299, -- Eversight Armplates
		87300, -- Armplates of the Jade Idol
	},
	-- QUEST: Deep Doubts, Deep Wisdom
	{ quest={31356},
		87283, -- Windstrong Leggings
		87284, -- Leggings of the Fifth Sun
		87285, -- Legguards of the Tides
		87286, -- Legplates of Absolute Clarity
		87287, -- Leggings of Inner Peace
		87288, -- Lui's Leggings
		87289, -- Equilibrium Legwraps
		87290, -- Legguards of Ironclad Confidence
		87291, -- Legplates of Pure Purpose
	},
}

ZygorGuidesViewer.ItemScore.Items["Pandaria Dungeons\\Siege of Niuzao Temple (SoNT)"] = {
	dungeonmap=887, heroic=1,
	dungeon=554,
	{ boss=61567, -- Vizier Jin'bak
	-- items
		81262, -- Hood of Viridian Residue
		81271, -- Engraved Amber Pendant
		81272, -- Girdle of Soothing Detonation
		81270, -- Sap-Encrusted Legplates
		81263, -- Flashfrozen Rosin Globule
	},
	{ boss=56843, -- Commander Vo'jak
	-- items
		81273, -- Siege-Captain's Scimitar
		81274, -- Sightfinder Helm
		81275, -- Robes of Arcing Flame
		81276, -- Bombardment Bracers
		81277, -- Archer's Precision Grips
	},
	{ boss=61485, -- General Pa'valak
	-- items
		81279, -- Tempestuous Longbow
		81282, -- Aerial Bombardment Cloak
		81280, -- Siegeworn Bracers
		81281, -- Breezebinder Handwraps
		81264, -- Vial of Ichorous Blood
	},
	{ boss=62205, -- Wing Leader Ner'onok
	-- items
		81292, -- Airbender Sandals
		81284, -- Anchoring Sabatons
		81290, -- Belt of Totemic Binding
		81289, -- Breezeswept Hood
		81285, -- Galedodger Chestguard
		81288, -- Gustwalker Staff
		81286, -- Nero'onok's Razor Katar
		81287, -- Spaulders of Immovable Stone
		81291, -- Whisperwind Spaulders
		81283, -- Windblast Helm
		87547, -- Tolakesh, Horn of the Black Ox
	},
	-- QUEST: Take Down the Wing Leader
	{ quest={31366},
		87356, -- Badge of the Amber Siege
		87357, -- Bridge Breaker Medallion
		87358, -- Hardened Resin Pendant
		87359, -- Mantid Eye Amulet
		87360, -- Saboteur's Locket
	},
}

ZygorGuidesViewer.ItemScore.Items["Pandaria Dungeons\\Stormstout Brewery (SSB)"] = {
	dungeonmap=876,
	dungeon=465,
	{ boss=57963, -- Ook-Ook
	-- items
		80897, -- Bracers of Displaced Air
		80896, -- Nimbletoe Chestguard
		80892, -- Ook's Hozen Slicer
	},
	{ boss=56717, -- Hoptallus
	-- items
		80893, -- Bottle of Potent Potables
		80899, -- Bubble-Breaker Bracers
		80898, -- Hopping Mad Leggings
	},
	{ boss=59479, -- Yan-Zhu the Uncasked
	-- items
		80903, -- Fermenting Belt
		80900, -- Fizzy Spaulders
		80894, -- Gao's Keg Trapper
		80901, -- Sudsy Legplates
		80902, -- Uncasked Chestguard
		80895, -- Yan-Zhu's Pressure Valve
	},
	-- QUEST: Family Secrets
	{ quest={31324},
		87310, -- Stormstout Drink Napkin
		87311, -- Used Bar Rag
		87312, -- Auntie's Cooking Apron
		87313, -- Tasting Room Tablecloth
		87314, -- Black & Tan Cloak
	},
	-- QUEST: Trouble Brewing
	{ quest={31327},
		87301, -- Master Brewer's Gloves
		87302, -- Barrel Stacker's Mitts
		87303, -- Wine Tasting Gloves
		87304, -- Uncorking Gloves
		87305, -- Barrel-Aged Gloves
		87306, -- Virmen Exterminator Gloves
		87307, -- Vegetable Chopping Handguards
		87308, -- Partycrasher's Gauntlets
		87309, -- Handguards of Sturdy Constitution
	},
}

ZygorGuidesViewer.ItemScore.Items["Pandaria Dungeons\\Stormstout Brewery (Heroic)"] = {
	dungeonmap=876, heroic=1,
	dungeon=469,
	{ boss=57963, -- Ook-Ook
	-- items
		81064, -- Bracers of Displaced Air
		81080, -- Nimbletoe Chestguard
		81061, -- Ook's Hozen Slicer
		81134, -- Barreldodger Boots
		81133, -- Empty Fruit Barrel
	},
	{ boss=56717, -- Hoptallus
	-- items
		81076, -- Bottle of Potent Potables
		81065, -- Bubble-Breaker Bracers
		81077, -- Hopping Mad Leggings
		81135, -- Belt of Brazen Inebriation
		81136, -- Cloak of Hidden Flasks
	},
	{ boss=59479, -- Yan-Zhu the Uncasked
	-- items
		81059, -- Fermenting Belt
		81068, -- Fizzy Spaulders
		81062, -- Gao's Keg Trapper
		81078, -- Sudsy Legplates
		81081, -- Uncasked Chestguard
		81066, -- Yan-Zhu's Pressure Valve
		81141, -- Alemental Seal
		81138, -- Carbonic Carbuncle
		81139, -- Lime-Rimmed Signet
		81140, -- Wort Stirring Rod
		87545, -- Inelava, Spirit of Inebriation
	},
	-- QUEST: Family Secrets
	{ quest={31324},
		87310, -- Stormstout Drink Napkin
		87311, -- Used Bar Rag
		87312, -- Auntie's Cooking Apron
		87313, -- Tasting Room Tablecloth
		87314, -- Black & Tan Cloak
	},
	-- QUEST: Trouble Brewing
	{ quest={31327},
		87301, -- Master Brewer's Gloves
		87302, -- Barrel Stacker's Mitts
		87303, -- Wine Tasting Gloves
		87304, -- Uncorking Gloves
		87305, -- Barrel-Aged Gloves
		87306, -- Virmen Exterminator Gloves
		87307, -- Vegetable Chopping Handguards
		87308, -- Partycrasher's Gauntlets
		87309, -- Handguards of Sturdy Constitution
	},
}

ZygorGuidesViewer.ItemScore.Items["Pandaria Dungeons\\Shado-Pan Monastery (SPM)"] = {
	dungeonmap=877,
	dungeon=466,
	{ boss=56747, -- Gu Cloudstrike
	-- items
		80909, -- Azure Serpent Chestguard
		80910, -- Legging of the Charging Soul
		80908, -- Sparkbreath Girdle
	},
	{ boss=64387, -- Master Snowdrift
	-- items
		80912, -- Gauntlets of Resolute Fury
		80911, -- Quivering Heart Girdle
		80937, -- Snowdrift's Bladed Staff
	},
	{ boss=56719, -- Sha of Violence
	-- items
		80883, -- Crescent of Ichor
		80913, -- Gloves of Enraged Slaughter
		80915, -- Spike-Soled Stompers
	},
	{ boss=56884, -- Taran Zhu
	-- items
		80917, -- Blastwalker Footguards
		80919, -- Darkbinder Leggings
		80918, -- Mindbinder Plate Gloves
		80916, -- Shadowspine Shoulderguards
		80935, -- Shield of Blind Hate
		80936, -- Warmace of Taran Zhu
	},
	-- QUEST: Lord of the Shado-Pan
	{ quest={30757},
		87315, -- Cowl of Angry Thoughts
		87316, -- Handcover of Disturbed Serenity
		87317, -- Vexing Coif
		87318, -- Hood of Endless Agitation
		87319, -- Antagonist's Headwrap
		87320, -- Headcover of the Impatient
		87321, -- Cowl of Internal Strife
		87322, -- Helm of Enmity
		87323, -- Helm of Unstable Temperament
	},
	-- QUEST: The Path to Respect Lies in Violence
	{ quest={31342},
		87324, -- Cord of Sha Savagery
		87325, -- Kun-Lai Climbing Belt
		87326, -- Sha-Trapper Waistguard
		87327, -- Cloudstriker Cord
		87328, -- Shado-Pan Initiate's Belt
		87329, -- Elemental Archer's Links
		87330, -- Monastery Guardian Waistguard
		87331, -- Girdle of the Broken Seal
		87332, -- Cord of Disturbed Dreams
	},
}

ZygorGuidesViewer.ItemScore.Items["Pandaria Dungeons\\Shado-Pan Monastery (Heroic)"] = {
	dungeonmap=877, heroic=1,
	dungeon=470,
	{ boss=56747, -- Gu Cloudstrike
	--items
		81110, -- Azure Serpent Chestguard
		81180, -- Cloudstrike Pendant
		81092, -- Legging of the Charging Soul
		81086, -- Sparkbreath Girdle
		81179, -- Star Summoner Bracers
	},
	{ boss=64387, -- Master Snowdrift
	-- items
		81182, -- Eye of the Tornado
		81101, -- Gauntlets of Resolute Fury
		81181, -- Heart of Fire
		81087, -- Quivering Heart Girdle
		81108, -- Snowdrift's Bladed Staff
	},
	{ boss=56719, -- Sha of Violence
	-- items
		81185, -- Bladed Smoke Bracers
		81089, -- Crescent of Ichor
		81102, -- Gloves of Enraged Slaughter
		81184, -- Necklace of Disorientation
		81113, -- Spike-Soled Stompers
	},
	{ boss=56884, -- Taran Zhu
	-- items
		81114, -- Blastwalker Footguards
		81093, -- Darkbinder Leggings
		81187, -- Hateshatter Chestplate
		81103, -- Mindbinder Plate Gloves
		81189, -- Ring of Malice
		81188, -- Robes of Fevered Dreams
		81186, -- Seal of Hateful Meditation
		81099, -- Shadowspine Shoulderguards
		81096, -- Shield of Blind Hate
		81107, -- Warmace of Taran Zhu
		87543, -- Ka'eng, Breath of the Shadow
	},
	-- QUEST: Lord of the Shado-Pan
	{ quest={30757},
		87315, -- Cowl of Angry Thoughts
		87316, -- Handcover of Disturbed Serenity
		87317, -- Vexing Coif
		87318, -- Hood of Endless Agitation
		87319, -- Antagonist's Headwrap
		87320, -- Headcover of the Impatient
		87321, -- Cowl of Internal Strife
		87322, -- Helm of Enmity
		87323, -- Helm of Unstable Temperament
	},
	-- QUEST: The Path to Respect Lies in Violence
	{ quest={31342},
		87324, -- Cord of Sha Savagery
		87325, -- Kun-Lai Climbing Belt
		87326, -- Sha-Trapper Waistguard
		87327, -- Cloudstriker Cord
		87328, -- Shado-Pan Initiate's Belt
		87329, -- Elemental Archer's Links
		87330, -- Monastery Guardian Waistguard
		87331, -- Girdle of the Broken Seal
		87332, -- Cord of Disturbed Dreams
	},
}

ZygorGuidesViewer.ItemScore.Items["Pandaria Dungeons\\Scholomance - Level 90 (Heroic)"] = {
	dungeonmap=898, heroic=1,
	dungeon=472,
	{ boss=58633, -- Instructor Chillheart
	-- items
		81566, -- Anarchist's Pendant
		82821, -- Breastplate of Wracking Souls
		82822, -- Gravetouched Greatsword
		82823, -- Icewrath Belt
		82820, -- Shadow Puppet Bracers
	},
	{ boss=59184, -- Jandice Barov
	-- items
		82848, -- Barovian Ritual Hood
		82851, -- Ghostwoven Legguards
		82847, -- Metanoia Shield
		82850, -- Phantasmal Drape
		82852, -- Wraithplate Treads
	},
	{ boss=59153, -- Rattlegore
	-- items
		82828, -- Bone Golem Boots
		82825, -- Deadwalker Bracers
		82824, -- Goresoaked Headreaper
		82826, -- Necromantic Wand
		82827, -- Rattling Gloves
	},
	{ boss=58722, -- Lilian Voss
	-- items
		82856, -- Dark Blaze Gauntlets
		82854, -- Leggings of Unleashed Anguish
		81567, -- Necklace of the Dark Blaze
		82855, -- Shivbreaker Vest
		82853, -- Soulburner Crown
	},
	{ boss=59080, -- Darkmaster Gandling
	-- items
		82860, -- Gloves of Explosive Pain
		82859, -- Headmaster's Will
		82861, -- Incineration Belt
		81268, -- Lessons of the Darkmaster
		81266, -- Price of Progress
		81267, -- Searing Words
		82862, -- Shoulderguards of Painful Lessons
		82858, -- Tombstone Gauntlets
		82857, -- Vigorsteel Spaulders
	},
	-- QUEST: An End to the Suffering
	{ quest={31448},
		87379, -- Runed Deathbone Chestplate
		87380, -- Carver's Bloodsplattered Chestpiece
		87381, -- Coldforge Carapace
		87382, -- Patchwork Flesh Armor
		87383, -- Ghoulskin Vestments
		87384, -- Darkmaster's Spare Robe
		87385, -- Empowered Necropile Robe
		87386, -- Inscribed Bloodmail Hauberk
		87387, -- Foul Cadaverous Armor
	},
}

ZygorGuidesViewer.ItemScore.Items["Pandaria Dungeons\\Scarlet Monastery - Level 90 (Heroic)"] = {
	dungeonmap=874, heroic=1,
	dungeon=474,
	{ boss=59789, -- Thalnos the Soulrender
	-- items
		81572, -- Bracers of the Fallen Crusader
		81569, -- Forgotten Bloodmage Mantle
		81570, -- Legguards of the Crimson Magus
		81560, -- Signet of the Hidden Door
		81571, -- Soulrender Greatcloak
	},
	{ boss=59223, -- Brother Korloff
	-- items
		81561, -- Firefinger Ring
		81576, -- Firestorm Greatstaff
		81574, -- Helm of Rising Flame
		81573, -- Korloff's Raiment
		81575, -- Scorched Earth Cloak
	},
	{ boss=3977, -- High Inquisitor Whitemane
	-- items
		81578, -- Crown of Holy Flame
		81688, -- Dashing Strike Treads
		81265, -- Flashing Steel Talisman
		81691, -- Greatstaff of Righteousness
		81690, -- Incarnadine Scarlet Spaulders
		81689, -- Leggings of Hallowed Fire
		81577, -- Lightbreaker Greatsword
		81562, -- Triune Signet
		81687, -- Waistplate of Imminent Resurrection
		81692, -- Whitemane's Embroidered Chapeau
		87551, -- Helios, Durand's Soul of Purity
	},
	-- QUEST: Unto Dust Thou Shalt Return
	{ quest={31516},
		87361, -- Martial Purification Gauntlets
		87362, -- Gauntlets of Righteous Conviction
		87363, -- Zealous Fervor Handguards
		87364, -- Gloves of Sanctity
		87365, -- Beneficent Gloves
		87366, -- Scarlet Visionary Gloves
		87367, -- Gloves of Fiery Purification
		87368, -- Gauntlets of Bloody Judgment
		87369, -- Crimson Monk Handwraps
	},
}

ZygorGuidesViewer.ItemScore.Items["Pandaria Dungeons\\Scarlet Halls (SH) - Level 90 (Heroic)"] = {
	dungeonmap=871, heroic=1,
	dungeon=473,
	{ boss=59303, -- Houndmaster Braun
	-- items
		81563, -- Beastbinder Ring
		81696, -- Canine Commander's Breastplate
		81694, -- Commanding Bracers
		81695, -- Hound Trainer's Gloves
		81693, -- Houndmaster's Compound Crossbow
	},
	{ boss=58632, -- Armsmaster Harlan
	-- items
		81568, -- Armsmaster's Sealed Locket
		81698, -- Harlan's Shoulders
		81700, -- Lightblade Bracer
		81699, -- Scarlet Sandals
		81697, -- The Gleaming Ravager
	},
	{ boss=59150, -- Flameweaver Koegler
	-- items
		82815, -- Bindburner Belt
		82819, -- Bradbury's Entropic Legguards
		82813, -- Koegler's Ritual Knife
		82816, -- Melted Hypnotic Blade
		82814, -- Mograine's Immaculate Might
		82812, -- Pyretic Legguards
		82817, -- Robes of Koegler
		81564, -- Scorched Scarlet Key
		81565, -- Temperature-Sensing Necklace
		82818, -- Vellum-Ripper Gloves
		87550, -- Vithrak, Gaze of the Deadman
	},
	-- QUEST: Just for Safekeeping, Of Course
	{ quest={31497},
		87370, -- Waistguard of the Phalanx
		87371, -- Scarlet Champion's Belt
		87372, -- Verdone's Chewed Waistplate
		87373, -- Belt of Singed Shame
		87374, -- Bucket Tosser's Girdle
		87375, -- Cord of Bloody Evangelism
		87376, -- Scholarly Cord
		87377, -- Scarlet Archer's Links
		87378, -- Loksey's Lost Belt
	},
}

ZygorGuidesViewer.ItemScore.Items["Pandaria Dungeons\\Mogu'Shan Palace (MSP)"] = {
	dungeonmap=885,
	dungeon=467,
	{ special=" Defeat the _Trial of the King_ encounter.", -- Legacy of the Clan Leaders
	-- items
		85178, -- Conflagrating Gloves
		85175, -- Crest of the Clan Lords
		85176, -- Hurricane Belt
		85179, -- Meteoric Greathelm
		85177, -- Whirling Dervish Choker
	},
	{ boss=61243, -- Gekkan
	-- items
		85183, -- Claws of Gekkan
		85182, -- Cloak of Cleansing Flame
		85180, -- Glintrok Sollerets
		85184, -- Hexxer's Lethargic Gloves
		85181, -- Iron Protector Talisman
	},
	{ boss=61884, -- Xin the Weaponmaster
	-- items
		85186, -- Axebreaker Gauntlets
		85188, -- Blade Trap Signet
		85187, -- Boots of Plummeting Death
		85190, -- Firescribe Dagger
		85185, -- Ghostheart
		85189, -- Groundshaker Bracers
		85191, -- Mindcapture Pendant
		85193, -- Mind's Eye Breastplate
		85194, -- Regal Silk Shoulderpads
		85192, -- Soulbinder Treads
	},
	-- QUEST: A New Lesson for the Master
	{ quest={31360},
		87333, -- Watchful Dreamer's Trousers
		87334, -- Dreamer's Vigil Leggings
		87335, -- Leggings of Clever Entrapment
		87336, -- Legplates of the Scattered Tribes
		87337, -- Deposer's Leggings
		87338, -- Leggings of the Empty Throne
		87339, -- Leggings of Forceful Instruction
		87340, -- Mogu Warlord Legguards
		87341, -- Weaponmaster's Legplates
	},
	-- QUEST: Relics of the Four Kings
	{ quest={31357},
		87342, -- Subjugation Bracers
		87343, -- Bracers of Swift Wrath
		87344, -- Cuffs of the Endless Shadow
		87345, -- Bindings of Impeccable Strategy
		87346, -- Armbands of the Reawakened
		87347, -- Lost Heritage Bracers
		87348, -- Bracers of Inner Knowledge
		87349, -- Armplates of Martial Artistry
		87350, -- Poet-King's Vambraces
	},
}

ZygorGuidesViewer.ItemScore.Items["Pandaria Dungeons\\Mogu'Shan Palace (Heroic)"] = {
	dungeonmap=885, heroic=1,
	dungeon=519,
	{ special=" Defeat the _Trial of the King_ encounter.", -- Legacy of the Clan Leaders
	-- items
		81240, -- Conflagrating Gloves
		81237, -- Crest of the Clan Lords
		81238, -- Hurricane Belt
		81241, -- Meteoric Greathelm
		81239, -- Whirling Dervish Choker
	},
	{ boss=61243, -- Gekkan
	-- items
		81245, -- Claws of Gekkan
		81244, -- Cloak of Cleansing Flame
		81242, -- Glintrok Sollerets
		81246, -- Hexxer's Lethargic Gloves
		81243, -- Iron Protector Talisman
	},
	{ boss=61884, -- Xin the Weaponmaster
	-- items
		81248, -- Axebreaker Gauntlets
		81251, -- Blade Trap Signet
		81249, -- Boots of Plummeting Death
		81253, -- Firescribe Dagger
		81247, -- Ghostheart
		81252, -- Groundshaker Bracers
		81254, -- Mindcapture Pendant
		81256, -- Mind's Eye Breastplate
		81257, -- Regal Silk Shoulderpads
		81255, -- Soulbinder Treads
	},
	-- QUEST: A New Lesson for the Master
	{ quest={31360},
		87333, -- Watchful Dreamer's Trousers
		87334, -- Dreamer's Vigil Leggings
		87335, -- Leggings of Clever Entrapment
		87336, -- Legplates of the Scattered Tribes
		87337, -- Deposer's Leggings
		87338, -- Leggings of the Empty Throne
		87339, -- Leggings of Forceful Instruction
		87340, -- Mogu Warlord Legguards
		87341, -- Weaponmaster's Legplates
	},
	-- QUEST: Relics of the Four Kings
	{ quest={31357},
		87342, -- Subjugation Bracers
		87343, -- Bracers of Swift Wrath
		87344, -- Cuffs of the Endless Shadow
		87345, -- Bindings of Impeccable Strategy
		87346, -- Armbands of the Reawakened
		87347, -- Lost Heritage Bracers
		87348, -- Bracers of Inner Knowledge
		87349, -- Armplates of Martial Artistry
		87350, -- Poet-King's Vambraces
	},
}

ZygorGuidesViewer.ItemScore.Items["Pandaria Dungeons\\Gate of the Setting Sun (GotSS)"] = {
	dungeonmap=875,
	dungeon=471,
	{ boss=56906, -- Saboteur Kip'tilak
	-- items
		81104, -- Fallout-Filtering Hood
		81095, -- Pendant of Precise Timing
		81090, -- Saboteur's Stabilizing Bracers
		81190, -- Grenadier's Belt
		81191, -- Pulled Grenade Pin
	},
	{ boss=56589, -- Striker Ga'dok
	-- items
		81098, -- Acid-Scarred Spaulders
		81229, -- Bomber's Precision Gloves
		81085, -- Impaler's Girdle
		81111, -- Airstream Treads
		81192, -- Vision of the Predator
	},
	{ boss=56636, -- Commander Ri'mok
	-- items
		81088, -- Mantid Trochanter
		81105, -- Swarmcall Helm
		81230, -- Ri'mok's Shattered Scale
		81106, -- Leggings of the Frenzy
		81232, -- Viscous Ring
	},
	{ boss=56877, -- Raigonn
	-- items
		81094, -- Carapace Breaker
		81234, -- Drape of the Screeching Swarm
		81236, -- Frenzyswarm Bracers
		81100, -- Hive Protector's Gauntlets
		81233, -- Impervious Carapace
		81097, -- Shield of the Protectorate
		81235, -- Shoulders of Engulfing Winds
		81109, -- Swarmbringer Chestguard
		81112, -- Treads of Fixation
		81091, -- Wall-Breaker Legguards
		87546, -- Klatith, Fangs of the Swarm
	},
	-- QUEST: That's a Big Bug!
	{ quest={31364},
		87351, -- Carapace Inlaid Drape
		87352, -- Cloak of the Unending Swarm
		87353, -- Cloak of Collective Thought
		87354, -- Drape of the Burning Signal
		87355, -- Mantid Exterminator's Cloak
	},
}
end

ZygorGuidesViewer.ItemScore.Items["Cataclysm Dungeons\\End Time (ET)"] = {
	dungeonmap=820, heroic=1,
	dungeon=435,
	{ boss=54445, -- Echo of Jaina
		72808, -- Jaina's Staff   |tip This item is dropped from Echo of Jaina. |only Druid,Priest,Shaman
		72809, -- Ward of Incantations   |tip This item is dropped from Echo of Jaina. |only Shaman,Paladin
		72798, -- Cord of Lost Hope   |tip This item is dropped from Echo of Baine, Echo of Jaina, Echo of Sylvanas and Echo of Tyrande. |only Druid
		72799, -- Dead End Boots   |tip Feet |only Shaman, Hunter
		72800, -- Gauntlets of Temporal Interference   |tip This item is dropped from Echo's of Baine, Jaina, Sylvanas and Tyrande |only DeathKnight, Paladin, Warrior
		72801, -- Breastplate of Sorrow   |tip Chest |only DeathKnight, Paladin, Warrior
		72802, -- Time Traveler's Leggings   |tip This item is dropped from Echo of Baine, Echo of Jaina, Echo of Sylvanas and Echo of Tyrande. |only Priest
		72803, -- Girdle of Lost Heroes   |tip This item is dropped from Echo's of Baine, Jaina, Sylvanas and Tyrande |only DeathKnight, Paladin, Warrior
		72804, -- Dragonshrine Scepter   |tip One-Hand Weapon |only DeathKnight, Paladin, Warrior, Shaman
		72805, -- Gloves of the Hollow   |tip This item is dropped from Echo's of Baine, Jaina, Sylvanas and Tyrande |only Druid
		72806, -- Echoing Headguard   |tip This item is dropped from Echo of Baine, Echo of Jaina, Echo of Sylvanas and Echo of Tyrande. |only Shaman
		72807, -- Waistguard of Lost Time   |tip This item is dropped from Echo of Baine, Echo of Jaina, Echo of Sylvanas and Echo of Tyrande. |only Paladin
	},
	{ boss=54544, -- Echo of Tyrande
	-- items
		72812, -- Crescent Moon   |tip Main Hand Axe |only Shaman, Paladin
		72813, -- Whisperwind Robes   |tip Chest |only Warlock, Priest, Mage
		72798, -- Cord of Lost Hope   |tip This item is dropped from Echo of Baine, Echo of Jaina, Echo of Sylvanas and Echo of Tyrande. |only Druid
		72799, -- Dead End Boots   |tip Feet |only Shaman, Hunter
		72800, -- Gauntlets of Temporal Interference   |tip This item is dropped from Echo's of Baine, Jaina, Sylvanas and Tyrande |only DeathKnight, Paladin, Warrior
		72801, -- Breastplate of Sorrow   |tip Chest |only DeathKnight, Paladin, Warrior
		72802, -- Time Traveler's Leggings   |tip This item is dropped from Echo of Baine, Echo of Jaina, Echo of Sylvanas and Echo of Tyrande. |only Priest
		72803, -- Girdle of Lost Heroes   |tip This item is dropped from Echo's of Baine, Jaina, Sylvanas and Tyrande |only DeathKnight, Paladin, Warrior
		72804, -- Dragonshrine Scepter   |tip One-Hand Weapon |only DeathKnight, Paladin, Warrior, Shaman
		72805, -- Gloves of the Hollow   |tip This item is dropped from Echo's of Baine, Jaina, Sylvanas and Tyrande |only Druid
		72806, -- Echoing Headguard   |tip This item is dropped from Echo of Baine, Echo of Jaina, Echo of Sylvanas and Echo of Tyrande. |only Shaman
		72807, -- Waistguard of Lost Time   |tip This item is dropped from Echo of Baine, Echo of Jaina, Echo of Sylvanas and Echo of Tyrande. |only Paladin
	},
	{ boss=54123, -- Echo of Sylvanas
	-- items
		72810, -- Windrunner's Bow   |tip Bow |only Rogue, Hunter
		72811, -- Cloak of the Banshee Queen   |tip Cloak |only Druid, Rogue, Hunter, Shaman
		72798, -- Cord of Lost Hope   |tip This item is dropped from Echo of Baine, Echo of Jaina, Echo of Sylvanas and Echo of Tyrande. |only Druid
		72799, -- Dead End Boots   |tip Feet |only Shaman, Hunter
		72800, -- Gauntlets of Temporal Interference   |tip This item is dropped from Echo's of Baine, Jaina, Sylvanas and Tyrande |only DeathKnight, Paladin, Warrior
		72801, -- Breastplate of Sorrow   |tip Chest |only DeathKnight, Paladin, Warrior
		72803, -- Girdle of Lost Heroes   |tip This item is dropped from Echo's of Baine, Jaina, Sylvanas and Tyrande |only DeathKnight, Paladin, Warrior
		72804, -- Dragonshrine Scepter   |tip One-Hand Weapon |only DeathKnight, Paladin, Warrior, Shaman
		72805, -- Gloves of the Hollow   |tip This item is dropped from Echo's of Baine, Jaina, Sylvanas and Tyrande |only Druid
		72806, -- Echoing Headguard   |tip This item is dropped from Echo of Baine, Echo of Jaina, Echo of Sylvanas and Echo of Tyrande. |only Shaman
		72807, -- Waistguard of Lost Time   |tip This item is dropped from Echo of Baine, Echo of Jaina, Echo of Sylvanas and Echo of Tyrande. |only Paladin
	},
	{ boss=54431, -- Echo of Baine
	-- items
		72798, -- Cord of Lost Hope   |tip This item is dropped from Echo of Baine, Echo of Jaina, Echo of Sylvanas and Echo of Tyrande. |only Druid
		72799, -- Dead End Boots   |tip Feet |only Shaman, Hunter
		72800, -- Gauntlets of Temporal Interference   |tip This item is dropped from Echo's of Baine, Jaina, Sylvanas and Tyrande |only DeathKnight, Paladin, Warrior
		72801, -- Breastplate of Sorrow   |tip Chest |only DeathKnight, Paladin, Warrior
		72802, -- Time Traveler's Leggings   |tip This item is dropped from Echo of Baine, Echo of Jaina, Echo of Sylvanas and Echo of Tyrande. |only Priest
		72803, -- Girdle of Lost Heroes   |tip This item is dropped from Echo's of Baine, Jaina, Sylvanas and Tyrande |only DeathKnight, Paladin, Warrior
		72804, -- Dragonshrine Scepter   |tip One-Hand Weapon |only DeathKnight, Paladin, Warrior, Shaman
		72805, -- Gloves of the Hollow   |tip This item is dropped from Echo's of Baine, Jaina, Sylvanas and Tyrande |only Druid
		72806, -- Echoing Headguard   |tip This item is dropped from Echo of Baine, Echo of Jaina, Echo of Sylvanas and Echo of Tyrande. |only Shaman
		72807, -- Waistguard of Lost Time   |tip This item is dropped from Echo of Baine, Echo of Jaina, Echo of Sylvanas and Echo of Tyrande. |only Paladin
		72814, -- Axe of the Tauren Chieftains   |tip This item is dropped from Echo's of Baine, Jaina, Sylvanas and Tyrande |only DeathKnight
		72815, -- Bloodhoof Legguards   |tip This item is dropped from Echo's of Baine, Jaina, Sylvanas and Tyrande |only DeathKnight, Paladin, Warrior
	},
	{ boss=54432, -- Murozond
		72816, -- Distortion Greaves   |tip Hands  |only Shaman
		72817, -- Time Altered Legguards   |tip This item is dropped from Murozond's Temporal Cache. |only Paladin
		72818, -- Breastplate of Tarnished Bronze   |tip This item is dropped from Echo of Murozond |only DeathKnight, Paladin, Warrior
		72819, -- Chrono Boots   |tip This item is dropped from Echo of Murozond |only Druid
		72820, -- Crown of Epochs   |tip Head |only DeathKnight, Paladin, Warrior
		72821, -- Temporal Pauldrons   |tip Shoulder |only DeathKnight, Paladin, Warrior
		72822, -- Jagged Edge of Time   |tip One-Hand Dagger |only Rogue, Shaman, Hunter
		72823, -- Timeway Headgear   |tip Head |only Druid
		72824, -- Time Twisted Tunic   |tip This item is dropped from Echo of Murozond |only Druid
		72825, -- Mantle of Time   |tip Shoulder |only Mage, Warlock, Priest
		72826, -- Robes of Fate   |tip Chest |only Mage, Warlock, Priest
		72897, -- Arrow of Time   |tip Trinket  |only Rogue, Shaman, Hunter, Druid
	}
}

ZygorGuidesViewer.ItemScore.Items["Cataclysm Dungeons\\Well of Eternity (WOE)"] = {
	dungeonmap=816, heroic=1,
	dungeon=437,
	{ boss=54969, -- Mannoroth and Varo'then
		72846, -- Thornwood Staff   |tip This item drops from Mannoroth and Varo'then |only Druid
		72827, -- Gavel of Peroth'arn   |tip This item drops from Peroth'arn |only DeathKnight, Paladin, Warrior
		72842, -- Annihilan Helm   |tip This item drops from Mannoroth and Varo'then |only DeathKnight, Paladin, Warrior
		72847, -- Helm of Thorns   |tip This item drops from Mannoroth and Varo'then |only Druid
		72835, -- Puppeteer's Pantaloons   |tip This item drops from Queen Azshara |only Druid
		72845, -- Mannoroth's Signet   |tip This item drops from Mannoroth and Varo'then |only Druid
		72837, -- Queen's Boon   |tip This item drops from Queen Azshara |only DeathKnight, Paladin, Warrior
	},
	{ boss=55085,-- Peroth'arn
		72828, -- Trickster's Edge   |tip One-Hand Axe |only Warrior, Paladin, Hunter, Rogue, DeathKnight, Shaman
		72829, -- Orb of the First Satyrs   |tip Held In Off Hand |only Paladin, Priest, Shaman, Mage, Warlock, Druid
		72832, -- Girdle of the Queen's Champion   |tip Waist |only Warrior, Paladin, DeathKnight
		72830, -- Peroth'arn's Belt   |tip Waist  |only Druid, Rogue
		72831, -- Horned Band   |tip Finger |only Paladin, Priest, Shaman, Mage, Warlock, Druid
	},
	-- QUEEN AZSHARA
	{ boss=54853, -- Queen Azshara
		72833, -- Scepter of Azshara   |tip Main Hand Mace |only Paladin, Priest, Shaman, Druid
		72838, -- Cloak of the Royal Protector   |tip Cloak |only Warrior, Paladin, Hunter, Rogue, DeathKnight, Shaman, Druid
		72834, -- Breastplate of the Queen's Guard   |tip Chest |only Hunter, Shaman
		72835, -- Puppeteer's Pantaloons   |tip Legs |only Rogue, Druid
		72836, -- Slipper's of Wizardry   |tip Feet |only Priest, Mage, Warlock
	},
	--MANNOROTH
	{ boss=54969,
		72844, -- Pit Lord's Destroyer   |tip Two-Hand Mace |only Warrior, Paladin, DeathKnight, Shaman, Druid
		72846, -- Thornwood Staff   |tip Two-Hand Staff |only Hunter, Druid
		72839, -- Cowl of Highborne Sorcerors   |tip Head |only Priest, Mage, Warlock
		72847, -- Helm of Thorns   |tip Head |only Rogue, Druid
		72840, -- Spaulders of Eternity   |tip Shoulders |only Druid
		72848, -- Legguards of the Legion   |tip Legs |only Hunter, Shaman
		72845, -- Mannoroth's Signet   |tip Finger |only Warrior, Paladin, Hunter, Rogue, DeathKnight, Shaman, Druid
		72899, -- Varo'then's Brooch   |tip Trinket |only Warrior, Paladin, Hunter, Rogue, DeathKnight, Shaman, Druid
	}
}

ZygorGuidesViewer.ItemScore.Items["Cataclysm Dungeons\\Hour of Twilight (HoT)"] = {
	dungeonmap=819, heroic=1,
	dungeon=439,
	{ boss=54968,
		72855, -- Corrupted Carapace   |tip This item drops from Asira Dawnslayer |only Paladin, Warrior
		72868, -- Desecrated Shoulderguards   |tip This item drops from Archbishop Benedictus |only Druid
		72861, -- Pauldrons of the Dragonblight   |tip This item drops from Archbishop Benedictus |only DeathKnight, Paladin, Warrior
		72854, -- Iceward Cloak   |tip This item drops from Arcurion |only DeathKnight, Paladin, Warrior
		72849, -- Wayfinder Boots   |tip This item drops from Arcurion |only Druid
		72900, -- Veil of Lies   |tip This item drops from Archbishop Benedictus |only Druid, Paladin, DeathKnight, Warrior
	},
	-- ARCHURION
	{ boss=54590,
		76150, -- Evergreen Wristbands   |tip Wrist |only Druid
		72851, -- Chillbane Belt   |tip Waist |only Warlock,Priest,Mage
		72853, -- Arcurion Legguards   |tip Legs |only Paladin,DeathKnight,Warrior
		72850, -- Surestride Boots   |tip Feet |only Shaman
		72849, -- Wayfinder Boots   |tip Feet |only Rogue,Druid
	},
	-- ASIRA DAWNSLAYER
	{ boss=54968,
		72860, -- Mandible of the Old Ones   |tip Off Hand Dagger |only Rogue,Shaman
		72859, -- Dawnslayer Helm   |tip Head |only Rogue,Shaman
		72856, -- Pauldrons of Midnight Whispers   |tip Shoulder |only Druid
		76151, -- Cloak of Subtle Light   |tip Cloak |only Priest,Druid,Shaman
		72857, -- Leggings of Blinding Speed   |tip Legs |only Druid
	},
	-- ARCHBISHOP BENEDICTUS
	{ boss=54938,
		72863, -- Stalk of Corruption   |tip Two-Hand Staff |only Druid,Shaman,Priest,Mage,Warlock
		72867, -- Clattering Claw   |tip Main Hand Fist Weapon |only Rogue,Shaman
		72862, -- Fanged Tentacle   |tip Main Hand Dagger |only Mage,Shaman,Warlock,Priest,Druid
		72866, -- Treachery's Bite   |tip One Hand Sword |only Warrior,DeathKnight
		72869, -- Dragonsmaw Blaster   |tip Gun |only Hunter
		72870, -- Betrayer's Pauldrons   |tip Shoulder |only Hunter,Shaman
		72868, -- Desecrated Shoulderguards   |tip Shoulder. |only Rogue,Druid
		72865, -- Mantle of False Virtue   |tip Shoulder |only Mage,Pirest,Warlock
		72901, -- Rosary of Light   |tip Trinket |only Warrior,Paladin,DeathKnight
		72864, -- Pauldrons of Conviction   |tip This item drops from Archbishop Benedictus. |only Paladin
	}
}

--@@TRIALGUIDE
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Ragefire Chasm (RFC)"] = {
	dungeonmap=680,
	dungeon=4,
	-- ADAROGG
	{ boss=61408, -- Adarogg
		82880, -- Fang of Adarogg
                82879, -- Collarspike Bracers
		82772, -- Snarlmouth Leggings
	},
	-- LAVA GUARD GORDOTH
	{ boss=61528, -- Lava Guard Gordoth
		82888, -- Heartboiler Staff
                82883, -- Bloodcursed Felblade
		82886, -- Gorewalker Treads
	},
	-- SLAGMAW
	{ boss=61463, -- Slagmaw
		82878, -- Fireworm Robes
                82885, -- Flameseared Carapace
		82884, --Chitonous Bracers
	},
	-- DARK SHAMAN KORANTHAL
	{ boss=61412, -- Dark Shaman Koranthal
		82882, -- Dark Ritual Cape
                82877, -- Grasp of the Broken Totem
		82881, -- Cuffs of Black Elements
	},
}

--@@TRIALGUIDE
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Deadmines (DM or VC)"] = {
	dungeonmap=756,
	dungeon=6,
	-- CAPTAIN COOKIE
	{ boss=47739,
		5202, -- Corsair's Overshirt
		5193, -- Cape of the Brotherhood
		5198, -- Cookie's Stirring Rod
		5197, -- Cookie's Tenderizer
		5192, -- Thief's Blade
	},

	-- ADMIRAL RIPSNARL
	{ boss=47626, -- Admiral Ripsnarl
		872, -- Rockslicer
		5196, -- Smite's Reaver

	},
	-- FOE REAPER 5000
	{ boss=43778, -- Foe Reaper 5000
		1937, -- Buzz Saw
		5187, -- Foe Reaper
	},
	-- GLUBTOK
	{ boss=47162,
		2169, -- Buzzer Blade
		5195, -- Gold-Flecked Gloves
	},
	-- HELIX GEARBREAKER
	{ boss=47296, -- Helix Gearbreaker
		5443, -- Gold-Plated Buckler
		5191, -- Cruel Barb
		5200, -- Impaling Harpoon
		5199, -- Smelting Pants
	},
	-- QUEST: THE DEFIAS KINGPIN
	{ quest={27790},
		66019, -- Cookie's Meat Mallet    --Horde Quest--The Defias Kingpin
		66028, -- Cookie's Stirring Stick    --Horde Quest--The Defias Kingpin
		66037, -- Cookie's Table Cloth    --Horde Quest--The Defias Kingpin
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Deadmines - Level 85 (Heroic)"] = {
	dungeonmap=756,
	dungeon=326,
	-- GLUBTOK
	{ boss=47162, -- Glubtok
		65163, -- Buzzer Blade
		63468, -- Defias Brotherhood Vest
		63470, -- Missing Diplomat's Pauldrons
		63467, -- Shadow of the Past
		63471, -- Vest of the Curious Visitor

	},
	-- HELIX GEARBREAKER
	{ boss=47296, -- Helix Gearbreaker
		65164, -- Cruel Barb
		63476, -- Gearbreaker's Bindings
		63474, -- Gear-Marked Gauntlets
		63475, -- Old Friend's Gloves
		63473, -- Cloak of Thredd
	},
	{ boss=43778, -- FOE REAPER 5000
		65166, -- Buzz Saw
		65167, -- Emberstone Staff
		65165, -- Foe Reaper

	},
	-- ADMIRAL RIPSNARL
	{ boss=47626, -- Admiral Ripsnarl
		65170, -- Smite's Reaver
		65169, -- Lavishly Jeweled Ring
		65168, -- Rockslicer

	},
	-- "CAPTAIN" COOKIE
	{ boss=47739, -- "Captain" Cookie
		65174, -- Corsair's Overshirt
		65172, -- Cookie's Stirring Rod
		65171, -- Cookie's Tenderizer
		65173, -- Thief's Blade
		65177, -- Cape of the Brotherhood

	},
	-- VANESSA VANCLEEF
	{ boss=49541, -- Vanessa VanCleef
		63479, -- Bracers of Some Consequence
		63480, -- Record of the Brotherhood's End
		63478, -- Stonemason's Helm
		65178, -- VanCleef's Boots
		63487, -- Book of the Well Sung Song
		63483, -- Guildmaster's Greaves
		63485, -- Cowl of Rebellion
		63482, -- Daughter's Hands
		63486, -- Shackles of the Betrayed
		63484, -- Armbands of Exiled Architects
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Shadowfang Keep (SFK)"] = {
	dungeonmap=764,
	dungeon=8,

	{ boss=3886, -- Razorclaw the Butcher
		1292, -- Butcher's Cleaver
	},

	{ boss=46963, -- Lord Walden , Fel Steed##3864
		6341, -- Eerie Stable Lantern
	},
	{ boss=3872, -- Deathsworn Captain , Lord Godfrey##46964
		6641, -- Haunting Blade
	},

	-- BARON ASHBURY
	{ boss=46962, -- Baron Ashbury
		6323, -- Baron's Scepter
		6324, -- Robes of Arugal
		6314, -- Wolfmaster Cape
	},
	-- BARON SILVERLAINE
	{ boss=3887, -- Baron Silverlaine
		6321, -- Silverlaine's Family Seal
	},
	-- COMMANDER SPRINGVALE
	{ boss=4278, -- Commander Springvale
		3191, -- Arced War Axe
		6320, -- Commander's Crest
	},
	-- LORD GODFREY
	{ boss=46964, -- Lord Godfrey
		6642, -- Phantom Armor
		6220, -- Meteor Shard
		3748, -- Feline Mantle
		6641, -- Haunting Blade
		6318, -- Odo's Ley Staff
	},
	-- LORD WALDEN
	{ boss=46963, -- Lord Walden
		6341, -- Eerie Stable Lantern
		3230, -- Black Wolf Bracers
		1292, -- Butcher's Cleaver
		6642, -- Phantom Armor
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Shadowfang Keep - Level 85 (Heroic)"] = {
	dungeonmap=764, heroic=1,
	dungeon=327,
	-- BARON ASHBURY
	{ boss=46962, -- Baron Ashbury
		63434, -- Gloves of the Greymane Wall
		63437, -- Baron Ashbury's Cuffs
		63433, -- Robes of Arugal
		63436, -- Traitor's Grips
		63435, -- Boots of the Predator
	},
	{ boss=3887, -- Baron Silverlaine
		63444, -- Baron Silverlaine's Greaves
		63438, -- Baroness Silverlaine's Locket
		63440, -- Boots of Lingering Sorrow
		63439, -- Gloves of the Uplifted Cup
		63441, -- Pendant of the Keep

	},
	-- COMMANDER SPRINGVALE
	{ boss=4278, -- Commander Springvale
		63447, -- Breastplate of the Stilled Heart
		63445, -- Arced War Axe
		63448, -- Springvale's Cloak
		63449, -- Thieving Spaulders
		63446, -- Haunting Footfalls

	},
	-- LORD WALDEN
	{ boss=46963, -- Lord Walden
		63453, -- Iron Will Girdle
		63452, -- Burden of Lost Humanity
		63454, -- Double Dealing Bracers
		63450, -- Phantom Armor
		63455, -- Blinders of the Follower

	},
	-- LORD GODFREY
	{ boss=46964, -- Lord Godfrey
		63464, -- Greaves of the Misguided
		63462, -- Helm of Untold Stories
		63458, -- Lord Walden's Breastplate
		63460, -- Relic of Arathor
		63457, -- Shackles of Undeath
		63461, -- Staff of Isolation
		63459, -- Worgen Hunter's Helm
		63465, -- Mantle of Loss
		63463, -- Mantle of the Eastern Lords
		63456, -- Meteor Shard
	}
}

--@@TRIALGUIDE
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Wailing Caverns"] = {
	dungeonmap=749,
	dungeon=1,

	-- DEVIATE FAERIE DRAGON

	{ boss=5912, -- Deviate Faerie Dragon
		6632, -- Feyscale Cloak
		5243, -- Firebelcher
	},
	-- KRESH
	{ boss=3653, -- Kresh
		13245, -- Kresh's Back
		6447, -- Worn Turtle Shell Shield
	},
	-- LADY ANACONDRA
	{ boss=3671, -- Lady Anacondra
		5404, -- Serpent's Shoulders
		10412, -- Belt of the Fang
		6446, -- Snakeskin Bag
	},
	-- LORD COBRAHN
	{ boss=3669, -- Lord Cobrahn
		6465, -- Robe of the Moccasin
		6460, -- Cobrahn's Grasp
		10410, -- Leggings of the Fang
	},
	-- LORD PYTHAS
	{ boss=3670, -- Lord Pythas
		6472, -- Stinging Viper
		6473, -- Armor of the Fang
	},
	-- LORD SERPENTIS
	{ boss=3673, -- Lord Serpentis
		6469, -- Venomstrike
		5970, -- Serpent Gloves
		10411, -- Footpads of the Fang
		6459, -- Savage Trodders
	},
	--  MUTANUS THE DEVOURER
	{ boss=3654, -- Mutanus the Devourer
		6627, -- Mutant Scale Breastplate
		6463, -- Deep Fathom Ring
		6461, -- Slime-Encrusted Pads
	},
	-- SKUM
	{ boss=3674, -- Skum
		6448, -- Tail Spike
		6449, -- Glowing Lizardscale Cloak
	},
	-- VERDAN THE EVERLIVING
	{ boss=5775, -- Verdan the Everliving
		6630, -- Seedcloud Buckler
		6631, -- Living Root
		6629, -- Sporid Cape
	},
	-- QUEST: CLEANSING THE CAVERNS
	{ quest=26870, -- Cleansing the Caverns
		65985, -- Cleansed Pauldrons
		65937, -- Serpentis' Gloves
		65961, -- Cobrahn's Boots
		66003, -- Pythas' Vest
		65911, -- Anacondra's Robe
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Blackfathom Deeps"] = {
	dungeonmap=688,
	dungeon=10,

	-- QUEST: NIGHTMARE OF THE DEEPS (HORDE)
	{ quest=26888, -- Nightmare of the Deeps
		66021, -- Blackfathom Leggings
		66012, -- Je'neu's Robes
		66030, -- Scales of Aku'mai
		66039, -- Shield Against the Evil Presence
	},
	-- QUEST: BARON AQUANIS (HORDE)
	{ quest=6922, -- Baron Aquanis
		16886, -- Outlaw Sabre
		16887, -- Witch's Finger
	},
	-- TWILIGHT LORD KELRIS
	{ boss=4832, -- Twilight Lord Kelris
		1155, -- Rod of the Sleepwalker
		6903, -- Gaze Dreamer Pants
	},
	-- OLD SERRA'KIS
	{ boss=4830, -- Old Serra'kis
		6902, -- Bands of Serra'kis
		6904, -- Bite of Serra'kis
		6901, -- Glowing Thresher Cape
	},
	-- LADY SAREVESS
	{ boss=4831, -- Lady Sarevess
		11121, -- Darkwater Talwar
		888, -- Naga Battle Gloves
		3078, -- Naga Heartpiercer
	},
	--GHAMOO-RA
	{ boss=4887, --GHAMOO-RA
		6907, -- Tortoise Armor
		6908, -- Ghamoo-Ra's Bind
	},
	-- AKU'MAI
	{boss=4829, -- Aku'mai
		6910, -- Leech Pants
		6911, -- Moss Cinch
		6909, -- Strike of the Hydra
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\The Stockade"] = {
	dungeonmap=690,
	dungeon=12,
	{quest=27739, -- Quest The Gnoll King
		65989, -- Hogger's Shiny
		65915, -- Rifle Commander's Eyepatch
		65941, -- Riot Stick
		65965, -- Shield of the Stockades
	},
	-- RANDOLPH MOLOCH
	{ boss=46383, -- Randolph Moloch
		63344, -- Standard Issue Prisoner Shoes
		63346, -- Wicked Dagger
		63345, -- Noble's Robe
	},
	-- LORD OVERHEAT
	{ boss=46264, -- Lord Overheat
		1929, -- Silk-Threaded Trousers
		5967, -- Girdle of Nobility
		4676, -- Skeletal Gauntlets
	},
	-- HOGGER
	{ boss=46254, -- Hogger
		1959, -- Cold Iron Pick
		2168, -- Corpse Rompers
		1934, -- Hogger's Trousers
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Gnomeregan"] = {
	dungeonmap=691,
	dungeon=14,
	-- CROWD PUMMELER 9-60
	{ boss=6229,
		9449, -- Manual Crowd Pummeler
		9450, -- Gnomebot Operating Boots
	},
	-- DARK IRON AMBASSADOR
	{ boss=6228, -- Dark Iron Ambassador
		9456, -- Glass Shooter
		9455, -- Emissary Cuffs
		9457, -- Royal Diplomatic Scepter
	},
	-- ELECTROCUTIONER 6000

	{ boss=6235, -- Electrocutioner 6000
		9447, -- Electrocutioner Lagnut
		9446, -- Electrocutioner Leg
		9448, -- Spidertank Oilrag
	},
	-- GRUBBIS
	{ boss=7361, -- Grubbis
		9445, -- Grubbis Paws
	},
	-- MEKGINEER THERMAPLUGG
	{ boss=7800, -- Mekgineer Thermaplugg
		9461, -- Charged Gear
		9492, -- Electromagnetic Gigaflux Reactivator
		9458, -- Thermaplugg's Central Core
	},
	-- VISCOUS FALLOUT
	{ boss=7079, -- Viscous Fallout
		9452, -- Hydrocane
		9453, -- Toxic Revenger
		9454, -- Acidic Walkers
	},
}
ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Scarlet Halls (Normal)"] = {
	dungeonmap=871, floor=1,
	dungeon=473,
	-- ARMSMASTER HARLAN
	{ boss=58632, -- Armsmaster Harlan
		88273, -- Armsmaster's Sealed Locket
		88269, -- Scarlet Sandals
		88270, -- Lightblade Bracer
		88271, -- Harlan's Shoulders
		88272, -- The Gleaming Ravager
	},
	-- FLAMEWEAVER KOEGLER
	{ boss=59150, -- Flameweaver Koegler
		88283, -- Bradbury's Entropic Legguards
		88274, -- Koegler's Ritual Knife
		88275, -- Scorched Scarlet Key
		88276, -- Bindburner Belt
		88277, -- Pyretic Legguards
		88278, -- Mograine's Immaculate Might
		88279, -- Robes of Koegler
		88280, -- Melted Hypnotic Blade
		88281, -- Temperature-Sensing Necklace
		88282, -- Vellum-Ripper Gloves
	},
	-- HOUNDMASTER BRAUN
	{ boss=59303, -- Houndmaster Braun
		88265, -- Beastbinder Ring
		88266, -- Hound Trainer's Gloves
		88267, -- Commanding Bracers
		88268, -- Canine Commander's Breastplate
		88264, -- Houndmaster's Compound Crossbow
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Scarlet Monastery (Normal)"] = {
	dungeonmap=874, floor=1,
	dungeon=474,
	-- THALNOS THE SOULRENDER
	{ boss=59789, -- Thalnos the Soulrender
		88284, -- Forgotten Bloodmage Mantle
		88285, -- Signet of the Hidden Door
		88286, -- Legguards of the Crimson Magus
		88287, -- Bracers of the Fallen Crusader
		88288, -- Soulrender Greatcloak
	},
	-- BROTHER KORLOFF
	{ boss=59223, -- Flameweaver Koegler
		88289, -- Firestorm Greatstaff
		88290, -- Scorched Earth Cloak
		88291, -- Korloff's Raiment
		88292, -- Helm of rising Flame
		88293, -- Firefinger Ring
	},
	-- HIGH INQUISITOR WHITEMANE
	{ boss=3977, -- High Inquisitor Whitemane
		88303, -- Crown of Holy Flame
		88295, -- Dashing Strike Threads
		88294, -- Flashing Steel Talisman
		88301, -- Greatstaff of Righteousness
		88302, -- Incarnadine Scarlet Spaulders
		88298, -- Leggings of Hallowed Fire
		88297, -- Lightbreaker Greatsword
		88300, -- Triune Signet
		88296, -- Waistplate of Imminent Resurrection
		88299, -- Whitemane's Embroidered Chapeau
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Maraudon: Foulspore Cavern"] = {
	dungeonmap=750,
	dungeon=26,
	--NOXXION
	{ boss=13282, -- Noxxion
		17744, -- Heart of Noxxion
		17745, -- Noxious Shooter
		17746, -- Noxxion's Shackles
	},
	--RAZORLASH
	{ boss=12258, -- Razorlash
		17751, -- Brusslehide Leggings
		17750, -- Chloromesh Girdle
		17749, -- Phytoskin Spaulders
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Maraudon: Wicked Grotto"] = {
	dungeonmap=750,
	dungeon=272,
	-- CELEBRAS THE CURSED
	{ boss=12225, -- Celebras the Cursed
		17738, -- Claw of Celebras
		17739, -- Grovekeeper's Drape
		17740, -- Soothsayer's Headdress
	},
	-- MESHLOK THE HARVESTER
	{ boss=12237, -- Meshlok the Harvester
		17767, -- Bloomsprout Headpiece
		17742, -- Fungus Shroud Armor
		17741, -- Nature's Embrace
	},
	-- LORD VYLETONGUE
	{ boss=12236, -- Lord Vyletongue
		17754, -- Infernal Trickster Leggings
		17755, -- Satyrmane Sash
		17752, -- Satyr's Lash
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Maraudon: Earth Song Falls"] = {
	dungeonmap=750,
	dungeon=273,
	-- LANDSLIDE
	{ boss=12203, -- Landslide
		17737, -- Cloud Stone
		17943, -- Fist of Stone
		17734, -- Helm of the Mountain
		17736, -- Rockgrip Gauntlets
	},
	-- TINKERER GIZLOCK
	{ boss=13601, -- Tinkerer Gizlock
		17718, -- Gizlock's Hypertech Buckler
		17719, -- Inventor's Focal Sword
		17717, -- Megashot Rifle
	},
	-- ROTGRIP
	{ boss=13596, -- Rotgrip
		17728, -- Albino Crocscale Boots
		17730, -- Gatorbite Axe
		17732, -- Rotgrip Mantle
	},
	-- PRINCESS THERADRAS
	{ boss=12201, -- Princess Theradras
		17780, -- Blade of Eternal Darkness
		17713, -- Blackstone Ring
		17714, -- Bracers of the Stone Princess
		17710, -- Charstone Dirk
		17711, -- Elemental Rockridge Leggings
		17715, -- Eye of Theradras
		17707, -- Gemshard Heart
		17766, -- Princess Theradras' Scepter
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Scholomance"] = {
	dungeonmap=898,
	dungeon=472,
	-- INSTRUCTOR CHILLHEART
	{ boss=58633, -- Instructor Chillheart
		88335, -- Anarchist's Pendant
		88336, -- Icewrath Belt
		88337, -- Shadow Puppet Bracers
		88338, -- Breastplate of Wracking Souls
		88339, -- Gravetouch Greatsword

	},
	-- LILIAN VOSS
	{ boss=59200, -- Lilian Voss
		88350, -- Royal Cap Spaulders
		88351, -- Wraithplate Leggings
		88352, -- Ghostloom Leggings
		88353, -- Phantasmal Cloak
		88354, -- Staff of Metanoia

	},
	-- RATTLEGORE
	{ boss=11622, -- Rattlegore
		88340, -- Deadwalker Bracers
		88341, -- Necromantic Wand
		88342, -- Rattling Gloves
		88343, -- Bone Golem Boots
		88344, -- Goresoaked Headreaper

	},

	-- JANDICE BAROV
	{ boss=10503, -- Jandice Barov
		88345, -- Barovian Ritual Hood
		88346, -- Metanoia Shield
		88347, -- Ghostwoven Legguards
		88348, -- Wraithplate Treads
		88349, -- Phantasmal Drape

	},

	-- DARKMASTER GANDLING
	{ boss=1853, -- Darkmaster Gandling
		88355, -- Searing Words
		88356, -- Tombstone Gauntlets
		88357, -- Vigorsteel Spaulders
		88358, -- Lessons of the Darkmaster
		88359, -- Incineration Belt
		88360, -- Price of Progress
		88361, -- Gloves of Explosive Pain
		88362, -- Shoulderguards of Painful Lessons
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Razorfen Downs"] = {
	dungeonmap=760,
	dungeon=20,
	-- QUEST: EXTINGUISHING THE IDOL
	{ quest=27022, -- Extinguishing the Idol
		10710, -- Dragonclaw Ring
	},
	-- THE COLDBRINGER
	{ boss=27009, -- The Coldbringer
		65996, -- Belt of Tyrannic Rule
		65975, -- Chestguard of Redemption
		65926, -- Coldbringer's Leggings
		66009, -- Koristrasza's Amulet
		65951, -- Razorfen Spaulders
	},
	-- TUTEN'KASH
	{ boss=7355,
		10777, -- Arachnid Gloves
		10775, -- Carapace of Tuten'kash
		10776, -- Silky Spider Cape
	},
	-- RAGGLESNOUT
	{ boss=7354, -- Ragglesnout
		10768, -- Boar Champion's Belt
		10767, -- Savage Boar's Guard
		10758, -- X'caliboar
	},
	-- PLAGUEMAW THE ROTTING
	{ boss=7356, -- Plaguemaw the Rotting
		10766, -- Plaguerot Sprig
		10760, -- Swine Fists
	},
	-- MORDRESH FIRE EYE
	{ boss=7357, -- Mordresh Fire Eye
		10771, -- Deathmage Sash
		10769, -- Glowing Eye of Mordresh
		10770, -- Mordresh's Lifeless Skull
	},
	-- GLUTTON
	{ boss=8567, -- Glutton
		10774, -- Fleshhide Shoulders
		10772, -- Glutton's Cleaver
	},
	-- AMNENNAR THE COLDBRINGER
	{ boss=7358, -- Amnennar the Coldbringer
		10765, -- Bonefingers
		10761, -- Coldrage Dagger
		10764, -- Deathchill Armor
		10763, -- Icemetal Barbute
		10762, -- Robes of the Lich
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Stratholme: Main Gate"] = {
	dungeonmap=765,
	dungeon=40,
	-- QUEST: THE DREADLORD BALNAZZAR
	{ quest=27208, -- The Dreadlord Balnazzar
		65928, -- Legguards of Stratholme
		65977, -- Balnazzar's Horn
		65953, -- Dathrohan's Mace
		65998, -- Balnazzar's Hide
	},
	--POSTMASTER MALOWYN
	{ boss=11143, -- Postmaster Malown
		13388, -- The Postmaster's Tunic
		13391, -- The Postmaster's Treads
		13392, -- The Postmaster's Seal
		13390, -- The Postmaster's Band
		13389, -- The Postmaster's Trousers
		13393, -- Malown's Slam
	},
	-- SKUL
	{ boss=10393, -- Skul
		13394, -- Skul's Cold Embrace
		13395, -- Skul's Fingerbone Claws
		13396, -- Skul's Ghastly Touch
	},
	-- THE UNFORGIVEN
	{ boss=10516, -- The Unforgiven
		13404, -- Mask of the Unforgiven
		13408, -- Soul Breaker
		13405, -- Wailing Nightbane Pauldrons
		13409, -- Tearfall Bracers
	},
	-- STONESPINE
	{ boss=10809, -- Stonespine
		13397, -- Stoneskin Gargoyle Cape
		13954, -- Verdant Footpads
		13399, -- Gargoyle Shredder Talons
	},
	-- HEARTHSINGER FORRESTEN
	{ boss=10558, -- Hearthsinger Forresten
		16682, -- Magister's Boots
		13379, -- Piccolo of the Flaming Fire
		13384, -- Rainbow Girdle
		13378, -- Songbird Blouse
		13383, -- Woollies of the Prancing Minstrel
	},
	-- TIMMY THE CRUEL
	{ boss=10808, -- Timmy the Cruel
		13402, -- Timmy's Galoshes
		13401, -- The Cruel Hand of Timmy
		13403, -- Grimgore Noose
		13400, -- Vambraces of the Sadist
	},
	-- WILLEY HOPEBREAKER
	{ boss=10997, -- Willey Hopebreaker
		13381, -- Master Cannoneer Boots
		22407, -- Helm of the New Moon
		22404, -- Willey's Back Scratcher
		22403, -- Diana's Pearl Necklace
		13380, -- Willey's Portable Howitzer
		22405, -- Mantle of the Scarlet Crusade
		16708, -- Shadowcraft Spaulders
		13382, -- Cannonball Runner
		22406, -- Redemption
		18721, -- Barrage Girdle
	},
	-- INSTRUCTOR GALFORD
	{ boss=10811, -- Instructor Galford
		13386, -- Archivist Cape
		18716, -- Ash Covered Boots
		13387, -- Foresight Girdle
		13385, -- Tome of Knowledge
	},
	-- BALNAZZAR
	{ boss=10813, -- Balnazzar
		13353, -- Book of the Dead
		13359, -- Crown of Tyranny
		13348, -- Demonshear
		13369, -- Fire Striders
		13360, -- Gift of the Elven Magi
		18718, -- Grand Crusader's Helm
		18717, -- Hammer of the Grand Crusader
		18720, -- Shroud of the Nathrezim
		12103, -- Star of Mystaria
		13358, -- Wyrmtongue Shoulders
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Stratholme: Service Entrance"] = {
	dungeonmap=765,
	dungeon=274,
	-- BARONESS ANASTARI
	{ boss=10436, -- Baroness Anastari
		18728, -- Anastari Heirloom
		13534, -- Banshee Finger
		13539, -- Banshee's Touch
		13537, -- Chillhide Bracers
		13535, -- Coldtouch Phantom Wraps
		16704, -- Dreadmist Sandals
		18729, -- Screeching Bow
		18730, -- Shadowy Laced Handwraps
		13538, -- Windshrieker Pauldrons
		13514, -- Wail of the Banshee
	},
	--NERUB'ENKAN
	{ boss=10437,
		13508, -- Eye of Arachnida
		16675, -- Beaststalker's Boots
		13530, -- Fangdrip Runners
		13532, -- Darkspinner Claws
		18739, -- Chitinous Plate Legguards
		13531, -- Crypt Stalker Leggings
		18738, -- Carapace Spine Crossbow
		13529, -- Husk of Nerub'enkan
		13533, -- Acid-Etched Pauldrons
		18740, -- Thuzadin Sash
	},
	-- MALEKI THE PALLID
	{ boss=10438, -- Maleki the Pallid
		18737, -- Bone Slicing Hatchet
		13525, -- Darkbind Fingers
		16691, -- Devout Sandals
		13526, -- Flamescarred Girdle
		13527, -- Lavawalker Greaves
		18735, -- Maleki's Footwraps
		18734, -- Pale Moon Cloak
		13524, -- Skull of Burning Shadows
		13528, -- Twilight Void Bracers
		13509, -- Clutch of Foresight
	},
	-- MAGISTRATE BARTHILAS
	{ boss=10435, -- Magistrate Barthilas
		18722, -- Death Grips
		23198, -- Idol of Brutality
		18726, -- Magistrate's Cuffs
		18725, -- Peacemaker
		13376, -- Royal Tribunal Cloak
	},
	-- RAMSTEIN THE GORGER
	{ boss=10439, -- Ramstein the Gorger
		13373, -- Band of Flesh
		18723, -- Animated Chain Necklace
		13375, -- Crest of Retribution
		13374, -- Soulstealer Mantle
		13515, -- Ramstein's Lightning Bolts
		13372, -- Slavedriver's Cane
	},
	-- LORD AURIUS RIVENDARE
	{ boss=45412, -- Lord Aurius Rivendare
		13505, -- Runeblade of Baron Rivendare
		13368, -- Bonescraper
		13340, -- Cape of the Black Baron
		13344, -- Dracorian Gauntlets
		22410, -- Gauntlets of Deftness
		22411, -- Helm of the Executioner
		22408, -- Ritssyn's Wand of Bad Mojo
		13346, -- Robes of the Exalted
		13349, -- Scepter of the Unholy
		13345, -- Seal of Rivendare
		13361, -- Skullforge Reaver
		22412, -- Thuzadin Mantle
		22409, -- Tunic of the Crescent Moon
		66049, -- Book of the Paragon
		66050, -- Idol of the Paragon
		66051, -- Relic of the Paragon
		66048, -- Statue of the Paragon
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Zul'Farrak"] = {
	dungeonmap=686,
	dungeon=24,
	--Antu'sul
	{ boss=8127,
		9641, -- Lifeblood Amulet
		9379, -- Sang'thraze the Deflector
		9639, -- The Hand of Antu'sul
		9640, -- Vice Grips
	},
	-- CHIEF UKORZ SANDSCALP
	{ boss=7267, -- Chief Ukorz Sandscalp
		9476, -- Big Bad Pauldrons
		9479, -- Embrace of the Lycan
		11086, -- Jang'thraze the Protector
		9478, -- Ripsaw
		9477, -- The Chief's Enforcer
		65930, -- Hands of Consequences
		65955, -- Mazoga's Boots
		65979, -- Staff of the Unknown Road
	},
	-- DUSTWRAITH
	{ boss=10081, -- Dustwraith
		12471, -- Desertwalker Cane
	},
	-- GAHZ'RILLA
	{ boss=7273,
		9467, -- Gahz'rilla Fang
		9469, -- Gahz'rilla Scale Armor
	},
	-- SHADOWPRIEST SEZZ'ZIZ
	{ boss=7275,
		9470, -- Bad Mojo Mask
		9475, -- Diabolic Skiver
		9474, -- Jinxed Hoodoo Kilt
		9473, -- Jinxed Hoodoo Skin
	},
	-- WITCH DOCTOR ZUM'RAH
	{ boss=7271,
		18083, -- Jumanza Grips
		18082, -- Zum'rah's Vexing Cane
	},
	-- ZERILLIS
	{ boss=10082, -- Zerillis
		12470, -- Sandstalker Ankleguards
	},
	-- QUEST: A FOOLS ERRAND
	{ quest=27070, -- A Fools Errand
		65954, -- Belt of the Deep
		65929, -- Bilgewhizzle's Armbands
		65978, -- Electrified Leggings
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Temple of Atal'Hakkar"] = {
	dungeonmap=687,
	dungeon=28,
	--MORPHAZ, WEAVER, HAZZAS, DREAMSCYTHE
	{ boss=5719, -- Morphaz , Weaver##5720, Hazzas##5722, Dreamscythe##5721
		12464, -- Bloodfire Talons
		12466, -- Dawnspire Cord
		10795, -- Drakeclaw Band
		12463, -- Drakefang Butcher
		10796, -- Drakestone
		10797, -- Firebreather
		12465, -- Nightfall Drape
	},
	-- JAMMAL'AN THE PROPHET
	{ boss=5710,
		10808, -- Gloves of the Atal'ai Prophet
		10807, -- Kilt of the Atal'ai Prophet
		10806, -- Vestments of the Atal'ai Prophet
	},
	-- OGOM THE WRETCHED
	{ boss=5711, -- Ogom the Wretched
		10803, -- Blade of the Wretched
		10805, -- Eater of the Dead
		10804, -- Fist of the Damned
	},
	-- SHADE OF ERANIKUS
	{ boss=5709, -- Shade of Eranikus
		10847, -- Dragon's Call
		10835, -- Crest of Supremacy
		10828, -- Dire Nail
		10833, -- Horns of Eranikus
		10836, -- Rod of Corrosion
		10829, -- The Dragon's Eye
		10837, -- Tooth of Eranikus
		10454, -- Essence of Eranikus
	},
	-- SHADE OF HAKKAR
	{ boss=8440, -- Shade of Hakkar
		12462, -- Embrace of the Wind Serpent
		10846, -- Bloodshot Greaves
		10843, -- Featherskin Cape
		10838, -- Might of Hakkar
		10844, -- Spire of Hakkar
		10845, -- Warrior's Embrace
		10842, -- Windscale Sarong
	},
	-- ERANIKUS
	{ boss=27605, -- Eranikus
		65931, -- Essence of Eranikus' Shade
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Lower Blackrock Spire"] = {
	dungeonmap=721,
	dungeon=32,
	-- HIGHLORD OMOKK
	{ boss=9196, -- Highlord Omokk
		13167, -- Fist of Omokk
		13168, -- Plate of the Shaman King
		13169, -- Tressermane Leggings
		13170, -- Skyshroud Leggings
		13166, -- Slamshot Shoulders
		16670, -- Boots of Elements
	},
	-- SHADOW HUNTER VOSH'GAJIN
	{ boss=9236,
		12626, -- Funeral Cuffs
		13255, -- Trueaim Gauntlets
		13257, -- Demonic Runed Spaulders
		12653, -- Riphook
		12651, -- Blackcrow
	},
	-- WAR MASTER VOONE
	{ boss=9237, -- War Master Voone
		28972, -- Flightblade Throwing Axe
		22231, -- Kayser's Boots of Precision
		13177, -- Talisman of Evasion
		13179, -- Brazecore Armguards
		12582, -- Keris of Zul'Serak
	},
	-- MOTHER SMOLDERWEB
	{ boss=10596, -- Mother Smolderweb
		13244, -- Gilded Gauntlets
		71636, -- Monstrous Egg
		68673, -- Smolderweb Egg
		13213, -- Smolderweb's Eye
		13183, -- Venomspitter
		16715, -- Wildheart Boots
	},
	-- UROK DOOMHOWL
	{ boss=10584, -- Urok Doomhowl
		13259, -- Ribsteel Footguards
		13178, -- Rosewine Circle
		22232, -- Marksman's Girdle
		13258, -- Slaghide Gauntlets
	},
	-- QUARTERMASTER ZIGRIS
	{ boss=9736, -- Quartermaster Zigris
		12264, -- Worg Carrier
		13252, -- Cloudrunner Girdle
		13253, -- Hands of Power
	},
	-- GIZRUL THE SLAVENER
	{ boss=10268, -- Gizrul the Slavener
		13206, -- Wolfshear Leggings
		13208, -- Bleak Howler Armguards
		13205, -- Rhombeard Protector
	},
	-- HALYCON
	{ boss=10220, -- Halycon
		22313, -- Ironweave Bracers
		13211, -- Slashclaw Bracers
		13212, -- Halycon's Spiked Collar
		13210, -- Pads of the Dread Wolf
	},
	-- OVERLORD WYRMTHALAK
	{ boss=9568, -- Overlord Wyrmthalak
		13162, -- Reiver Claws
		13163, -- Relentless Scythe
		13161, -- Trindlehaven Staff
		22321, -- Heart of Wyrmthalak
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Upper Blackrock Spire"] = {
	dungeonmap=721,
	dungeon=330,
	-- PYROGUARD EMBERSEER
	{ boss=9816, -- Pyroguard Emberseer
		12927, -- Truestrike Shoulders
		12926, -- Flaming Band
		12929, -- Emberfury Talisman
		12905, -- Wildfire Cape
	},
	-- WARCHIEF REND BLACKHAND
	{ boss=10429, -- Warchief Rend Blackhand
		12936, -- Battleborn Armbraces
		12935, -- Warmaster Legguards
		18102, -- Dragonrider Boots
		18103, -- Band of Rumination
		18104, -- Feralsurge Girdle
		12587, -- Eye of Rend
		22247, -- Faith Healer's Boots
		12939, -- Dal'Rend's Tribal Guardian
		12940, -- Dal'Rend's Sacred Charge
		12583, -- Blackhand Doomsaw
		12590, -- Felstriker
		16733, -- Spaulders of Valor
		15282, -- Dragon Finger
	},
	-- GYTH
	{ boss=10339, -- Gyth
		12953, -- Dragoneye Coif
		12960, -- Tribal War Feathers
		22225, -- Dragonskin Cowl
		12952, -- Gyth's Skull
		16669, -- Pauldrons of Elements
	},
	-- THE BEAST
	{ boss=10430, -- The Beast
		12967, -- Bloodmoon Cloak
		12964, -- Tristam Legguards
		12966, -- Blackmist Armguards
		12965, -- Spiritshroud Leggings
		12968, -- Frostweaver Cape
		12963, -- Blademaster Leggings
		12969, -- Seeping Willow
		12709, -- Finkle's Skinner
		19227, -- Ace of Beasts
		16729, -- Lightforge Spaulders
		22311, -- Ironweave Boots
	},
	-- GENERAL DAKKISATH
	{ boss=10363, -- General Drakkisah
		13141, -- Tooth of Gnarr
		22267, -- Spellweaver's Turban
		22253, -- Tome of the Lost
		13098, -- Painweaver Band
		13142, -- Brigam Girdle
		12602, -- Draconian Deflector
		22269, -- Shadow Prowler's Cloak
		22268, -- Draconic Infused Emblem
		12592, -- Blackblade of Shahram
	}
}

ZygorGuidesViewer.ItemScore.Items["Burning Crusade Dungeons\\Coilfang Reservoir: Slave Pens"] = {
	dungeonmap=728,
	dungeon=140,
	-- MENNU THE BETRAYER
	{ boss=17941, -- Mennu the Betrayer
		24359, -- Princely Reign Leggings
		24361, -- Spellfire Longsword
		24360, -- Tracker's Belt
		24357, -- Vest of Living Lightning
		24356, -- Wastewalker Shiv
	},
	-- QUAGMIRRAN
	{ boss=17942, -- Quagmirran
		24364, -- Azureplate Greaves
		24365, -- Deft Handguards
		24366, -- Scorpid-Sting Mantle
		24362, -- Spore-Soaked Vaneer
		24363, -- Unscarred Breastplate
	},
	-- ROKMAR THE CRACKLER
	{ boss=17991, -- Rokmar the Crackler
		24379, -- Bogstrok Scale Cloak
		24380, -- Calming Spore Reed
		24378, -- Coilfang Hammer of Renewal
		24381, -- Coilfang Needler
		24376, -- Runed Fungalcap
	}
}

ZygorGuidesViewer.ItemScore.Items["Burning Crusade Dungeons\\Coilfang Reservoir: Slave Pens (Heroic)"] = {
	dungeonmap=728, heroic=1,
	dungeon=184,
	-- MENNU THE BETRAYER
	{ boss=17941, -- Mennu the Betrayer
		27541, -- Archery Belt of the Broken
		27542, -- Cord of Belief
		27545, -- Mennu's Scaled Leggings
		27543, -- Starlight Dagger
		27544, -- Totem of Spontaneous Regrowth
		27546, -- Traitor's Noose
	},
	-- QUAGMIRRAN
	{ boss=17942, -- Quagmirran
		29349, -- Adamantine Chain of the Unbroken
		29242, -- Boots of Blasphemy
		30538, -- Midnight Legguards
		32078, -- Pauldrons of Wild Magic
		27740, -- Band of Ursol
		27741, -- Bleeding Hollow Warhammer
		28337, -- Breastplate of Righteous Fury
		27800, -- Earthsoul Britches
		27672, -- Girdle of the Immovable
		27742, -- Mage-Fury Girdle
		27796, -- Mana-Etched Spaulders
		27713, -- Pauldrons of Desolation
		27673, -- Phosphorescent Blade
		27683, -- Quagmirran's Eye
		27712, -- Shackles of Quagmirran
		27714, -- Swamplight Lantern
	},
	-- ROKMAR THE CRACKLER
	{ boss=17991, -- Rokmar the Crackler
		27547, -- Coldwhisper Cord
		27548, -- Girdle of Many Blessings
		27550, -- Ironscale War Cloak
		28124, -- Liar's Cord
		27551, -- Skeletal Necklace of Battlerage
		27549, -- Wavefury Boots
	}
}

ZygorGuidesViewer.ItemScore.Items["Burning Crusade Dungeons\\Coilfang Reservoir: The Underbog"] = {
	dungeonmap=726,
	dungeon=146,
	-- GHAZ'AN
	{ boss=18105,
		24459, -- Cloak of Healing Rays
		24461, -- Hatebringer
		24462, -- Luminous Pearls of Insight
		24458, -- Studded Girdle of Virtue
		24460, -- Talisman of Tenacity
	},
	-- HUNGARFEN
	{ boss=17770, -- Hungarfen
		24451, -- Lykul Bloodbands
		24450, -- Manaspark Gloves
		27631, -- Needle Shrike
		24452, -- Starlight Gauntlets
		24413, -- Totem of the Thunderhead
	},
	-- SWAMPLORD MUSEL'EK
	{ boss=17826,
		24454, -- Cloak of Enduring Swiftness
		24456, -- Greaves of the Iron Guardian
		24457, -- Truth Bearer Shoulderguards
		24455, -- Tunic of the Nightwatcher
		24453, -- Zangartooth Shortblade
	},
	-- THE BLACK STALKER
	{ boss=17882, -- The Black Stalker
		24463, -- Pauldrons of Brute Force
		24481, -- Robes of the Augurer
		24465, -- Shamblehide Chestguard
		24466, -- Skulldugger's Leggings
		24464, -- The Stalker's Fangs
	}
}

ZygorGuidesViewer.ItemScore.Items["Burning Crusade Dungeons\\Coilfang Reservoir: The Underbog (Heroic)"] = {
	dungeonmap=726, heroic=1,
	dungeon=186,
	-- GHAZ'AN
	{ boss=18105,
		27760, -- Dunewind Sash
		27755, -- Girdle of Gallantry
		27757, -- Greatstaff of the Leviathan
		27759, -- Headdress of the Tides
		27758, -- Hydra-Fang Necklace
		27761, -- Ring of the Shadow Deeps
	},
	-- HUNGARFEN
	{ boss=17770, -- Hungarfen
		27746, -- Arcanium Signet Bands
		27747, -- Boggspine Knuckles
		27748, -- Cassock of the Loyal
		27743, -- Girdle of Living Flame
		27745, -- Hungarhide Gauntlets
		27744, -- Idol of Ursoc
	},
	-- SWAMPLORD MUSEL'EK
	{ boss=17826, -- Swamplord Musel'ek
		27765, -- Armwraps of Disdain
		27767, -- Bogreaver
		27763, -- Crown of the Forest Lord
		27764, -- Hands of the Sun
		27766, -- Swampstone Necklace
		27762, -- Weathered Band of the Swamplord

	},
	-- THE BLACK STALKER
	{ boss=17882, -- The Black Stalker
		29265, -- Barkchip Boots
		32081, -- Eye of the Stalker
		30541, -- Stormsong Kilt
		29350, -- The Black Stalk
		27896, -- Alembic of Infernal Power
		27770, -- Argussian Compass
		27773, -- Barbaric Legstraps
		27779, -- Bone Chain Necklace
		27781, -- Demonfang Ritual Helm
		27771, -- Doomplate Shoulderguards
		27769, -- Endbringer
		27907, -- Mana-Etched Pantaloons
		27768, -- Oracle Belt of Timeless Mystery
		27780, -- Ring of Fabled Hope
		27938, -- Savage Mask of the Lynx Lord
		27772, -- Stormshield of Renewal
	}
}

ZygorGuidesViewer.ItemScore.Items["Burning Crusade Dungeons\\Coilfang Reservoir: The Steamvault"] = {
	dungeonmap=727,
	dungeon=147,
	-- HYDROMANCER THESPIA
	{ boss=17797, -- Hydromancer Thespia
		27787, -- Chestguard of No Remorse
		27789, -- Cloak of Whispering Shells
		27508, -- Incanter's Gloves
		27783, -- Moonrage Girdle
		27784, -- Scintillating Coral Band
	},
	-- MEKGINEER STEAMRIGGER
	{ boss=17796, -- Mekgineer Steamrigger
		27793, -- Earth Mantle Handwraps
		27790, -- Mask of Penance
		27794, -- Recoilless Rocket Ripper X-54
		27791, -- Serpentcrest Life-Staff
		27792, -- Steam-Hinge Chain of Valor
	},
	-- WARLORD KALITHRESH
	{ boss=17798, -- Warlord Kalithresh
		27874, -- Beast Lord Leggings
		27801, -- Beast Lord Mantle
		28203, -- Breastplate of the Righteous
		27804, -- Devilshark Cape
		27806, -- Fathomheart Gauntlets
		27475, -- Gauntlets of the Bold
		27738, -- Incanter's Pauldrons
		27737, -- Moonglade Shoulders
		27805, -- Ring of the Silver Hand
		27795, -- Sash of Serpentra
		27510, -- Tidefury Gauntlets
		27799, -- Vermillion Robes of the Dominant
	}
}

ZygorGuidesViewer.ItemScore.Items["Burning Crusade Dungeons\\Coilfang Reservoir: The Steamvault (Heroic)"] = {
	dungeonmap=727, heroic=1,
	dungeon=185,
	-- HYDROMANCER THESPIA
	{ boss=17797, -- Hydromancer Thespia
		27787, -- Chestguard of No Remorse
		27789, -- Cloak of Whispering Shells
		27508, -- Incanter's Gloves
		27783, -- Moonrage Girdle
		27784, -- Scintillating Coral Band

	},
	-- MEKGINEER STEAMRIGGER
	{ boss=17796, -- Mekgineer Steamrigger
		27793, -- Earth Mantle Handwraps
		27790, -- Mask of Penance
		27794, -- Recoilless Rocket Ripper X-54
		27791, -- Serpentcrest Life-Staff
		27792, -- Steam-Hinge Chain of Valor

	},
	-- WARLORD KALITHRESH
	{ boss=17798, -- Warlord Kalithresh
		29463, -- Amber Bands of the Aggressor
		30543, -- Pontifex Kilt
		29243, -- Wave-Fury Vambraces
		29351, -- Wrathtide Longbow
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Caverns of Time: Escape from Durnholde Keep"] = {
	dungeonmap=734,
	dungeon=170,
	-- LIEUTENANT DRAKE
	{ boss=17848, -- Lieutenant Drake
		27423, -- Cloak of Impulsiveness
		27436, -- Iron Band of the Unbreakable
		27417, -- Ravenwing Pauldrons
		27418, -- Stormreaver Shadow-Kilt
		27420, -- Uther's Ceremonial Warboots

	},
	-- EPOCH HUNTER
	{ boss=18096, -- Epoch Hunter
		27432, -- Broxigar's Ring of Valor
		27440, -- Diamond Prism of Recurrence
		27434, -- Mantle of Perenolde
		27433, -- Pauldrons of Sufferance
		27431, -- Time-Shifted Dagger

	},
	-- CAPTAIN SKARLOC
	{ boss=17862, -- Captain Skarloc
		27424, -- Amani Venom-Axe
		27427, -- Durotan's Battle Harness
		27426, -- Northshire Battlemace
		27430, -- Scaled Greaves of Patience
		27428, -- Stormfront Gauntlets
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Caverns of Time: Escape from Durnholde Keep (Heroic)"] = {
	dungeonmap=734, heroic=1,
	dungeon=183,
	-- LIEUTENANT DRAKE
	{ boss=17848, -- Lieutenant Drake
		28212, -- Aran's Sorcerous Slacks
		28210, -- Bloodskull Destroyer
		28214, -- Grips of the Lunar Eclipse
		28211, -- Lieutenant's Signet of Lordaeron
		28213, -- Lordaeron Medical Guide
		28215, -- Mok'Nathal Mask of Battle

	},
	-- EPOCH HUNTER
	{ boss=18096, -- Epoch Hunter
		29250, -- Cord of Sanctification
		30536, -- Greaves of the Martyr
		29246, -- Nightfall Wristguards
		30534, -- Wyrmscale Greaves
		28223, -- Arcanist's Stone
		28225, -- Doomplate Warhelm
		27911, -- Epoch's Whispering Cinch
		28401, -- Hauberk of Desolation
		28191, -- Mana-Etched Vestments
		28233, -- Necklace of Resplendent Hope
		28222, -- Reaver of the Infinites
		27904, -- Resounding Ring of Glory
		28227, -- Sparking Arcanite Ring
		28226, -- Timeslicer
		28224, -- Wastewalker Helm
		28344, -- Wyrmfury Pauldrons

	},
	-- DON CARLOS
	{ boss=28132, -- Don Carlos
		38506, -- Don Carlos' Famous Hat

	},
	-- CAPTAIN SKARLOC
	{ boss=17862, -- Captain Skarloc
		28221, -- Boots of the Watchful Heart
		28216, -- Dathrohan's Ceremonial Hammer
		28219, -- Emerald-Scale Greaves
		28220, -- Moon-Crown Antlers
		28218, -- Pontiff's Pantaloons of Prophecy
		28217, -- Tarren Mill Vitality Locket
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Caverns of Time: Opening the Dark Portal"] = {
	dungeonmap=733,
	dungeon=171,
	-- TEMPORUS
	{ boss=17880, -- Temporus
		28033, -- Epoch-Mender
		28034, -- Hourglass of the Unraveller
		28185, -- Khadgar's Kilt of Abjuration
		28186, -- Laughing Skull Battle-Harness
		28184, -- Millennium Blade
		28187, -- Star-Heart Lamp

	},
	-- CHRONO LORD DEJA
	{ boss=17879, -- Chrono Lord Deja
		27988, -- Burnoose of Shifting Ages
		27994, -- Mantle of Three Terrors
		27993, -- Mask of Inner Fire
		27987, -- Melmorta's Twilight Longbow
		27996, -- Ring of Spiritual Precision
		27995, -- Sun-Gilded Shouldercaps

	},
	-- AEONUS
	{ boss=17881, -- Aeonus
		28188, -- Bloodfire Greatstaff
		28206, -- Cowl of the Guiltless
		27509, -- Handgrips of Assassination
		28192, -- Helm of Desolation
		28189, -- Latro's Shifting Sword
		27977, -- Legplates of the Bold
		27839, -- Legplates of the Righteous
		28193, -- Mana-Etched Crown
		27873, -- Moonglade Pants
		28207, -- Pauldrons of the Crimson Flight
		28194, -- Primal Surge Bracers
		28190, -- Scarab of the Infinite Cycle
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Caverns of Time: Opening the Dark Portal (Heroic)"] = {
	dungeonmap=733, heroic=1,
	dungeon=182,
	-- AEONUS
	{ boss=17881, -- Aeonus
		30531, -- Breeches of the Occultist
		29247, -- Girdle of the Deathdealer
		29253, -- Girdle of Valorous Deeds
		29356, -- Quantum Blade
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Razorfen Kraul"] = {
	dungeonmap=761,
	dungeon=16,
	-- AGATHELOS THE RAGING
	{ boss=4422, -- Agathelos the Raging
		6690, -- Ferine Leggings
		6691, -- Swinetusk Shank

	},
	-- AGGEM THORNCURSE
	{ boss=4424, -- Aggem Thorncurse
		6681, -- Thornspike

	},
	--ZONE DROP
	{ boss=4425, -- Blind Hunter
		6697, -- Batwing Mantle
		6696, -- Nightstalker Bow
		6695, -- Stygian Bone Amulet

	},
	-- CHARLGA RAZORFLANK
	{ boss=4421, -- Charlga Razorflank
		6693, -- Agamaggan's Clutch
		6694, -- Heart of Agamaggan
		6692, -- Pronged Reaver

	},
	-- DEATH SPEAKER JARGBA
	{ boss=4428, -- Death Speaker Jargba
		6685, -- Death Speaker Mantle
		6682, -- Death Speaker Robes
		2816, -- Death Speaker Scepter

	},
	-- EARTHCALLER HALMGAR
	{ boss=4842, -- Earthcaller Halmgar
		6688, -- Whisperwind Headdress
		6689, -- Wind Spirit Staff

	},
	-- OVERLORD RAMTUSK
	{ boss=4420, -- Overlord Ramtusk
		6687, -- Corpsemaker
		6686, -- Tusken Helm

	},
	-- RAZORFEN SPEARHIDE
	{ boss=4438, -- Razorfen Spearhide
		6679, -- Armor Piercer

	},
	--QUEST: WILLIX THE IMPORTER
	{ quest=26903, -- Willix the Importer
		6748, -- Monkey Ring
		6750, -- Snake Hoop
		6749, -- Tiger Band
	},
	--QUEST AGAMAAGAN'S CHARGE
	{ quest=26905, --Agamaggan's Charge
		65968, -- Agamaggan-Blessed Greaves
		65918, -- Agamaggan's Gift
		66007, -- Agamaggan's Silent Tear
		65991, -- Boots of the Noble Path
		65944, -- Charlga's Breastplate
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Uldaman"] = {
	dungeonmap=692,
	dungeon=22,
	-- ANCIENT STONE KEEPER
	{ boss=7206, -- Ancient Stone Keeper
		9410, -- Cragfists
		9411, -- Rockshard Pauldrons

	},
	-- ARCHAEDAS
	{ boss=2748, -- Archaedas
		11118, -- Archaedic Stone
		9418, -- Stoneslayer
		9413, -- The Rockpounder

	},
	-- BAELOG - HORDE ONLY
	{ boss=6906, -- Baelog
		9400, -- Baelog's Shortbow
		9401, -- Nordic Longshank

	},
	-- Eric "The Swift"
	{ boss=6907, -- Eric "The Swift"
		9394, -- Horned Viking Helmet
		9398, -- Worn Running Boots

	},
	-- GALGANN FIREHAMMER
	{ boss=7291, -- Galgann Firehammer
		11311, -- Emberscale Cape
		11310, -- Flameseer Mantle
		9412, -- Galgann's Fireblaster
		9419, -- Galgann's Firehammer
	},
	{ boss=4854, -- Grimlok <Stonevault Chieftain>
		9416, -- Grimlok's Charge
		9415, -- Grimlok's Tribal Vestments
		9414, -- Oilskin Leggings

	},
	-- IRONAYA
	{ boss=7228, -- Ironaya
		9409, -- Ironaya's Bracers
		9408, -- Ironshod Bludgeon
		9407, -- Stoneweaver Leggings

	},
	-- OLAF
	{ boss=6908, -- Olaf
		9403, -- Battered Viking Shield
		9404, -- Olaf's All Purpose Shield

	},
	-- REVELOSH
	{ boss=6910, -- Revelosh
		9388, -- Revelosh's Armguards
		9387, -- Revelosh's Boots
		9390, -- Revelosh's Gloves
		9389, -- Revelosh's Spaulders

	},
	--QUEST THE PLATINUM DISCS
	{ quest=2280, -- The Platinum Discs
		65971, -- Band of Uldaman
		65921, -- Durdin's Hammer
		65947, -- Platinum Sword
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Dire Maul: Gordok Commons (North)"] = {
	dungeonmap=699,
	dungeon=38,
	{ special="Gordok Tribute",
	--TRIBUTE RUN
		18480, -- Scarab Plate Helm
		18477, -- Shaggy Leggings
		18475, -- Oddly Magical Belt
		18482, -- Ogre Toothpick Shooter
		18479, -- Carrion Scorpid Helm
		18478, -- Hyena Hide Jerkin
		18528, -- Cyclone Spaulders
		18529, -- Elemental Plate Girdle
		18476, -- Mud Stained Boots
		18500, -- Tarnished Elven Ring
		18481, -- Skullcracking Mace
		18532, -- Mindsurge Robe
		18530, -- Ogre Forged Hauberk
		18531, -- Unyielding Maul
		18499, -- Barrier Shield
		18533, -- Gordok Bracers of Power
		18537, -- Counterattack Lodestone
		18495, -- Redoubt Cloak
		18534, -- Rod of the Ogre Magi
		18538, -- Treant's Bane

	},
	-- ALZZIN THE WILDSHAPER
	{ boss=11492, -- Alzzin the Wildshaper
		18312, -- Energized Chestplate
		18321, -- Energetic Rod
		18326, -- Razor Gauntlets
		18314, -- Ring of Demonic Guile
		18327, -- Whipvine Cord
		18310, -- Fiendish Machete
		18315, -- Ring of Demonic Potency
		18309, -- Gloves of Restoration
		18318, -- Merciful Greaves
		18328, -- Shadewood Cloak

	},
	-- CAPTAIN KROMCRUSH
	{ boss=14325, -- Captain Kromcrush
		18502, -- Monstrous Glaive
		18503, -- Kromcrush's Chestplate
		18507, -- Boots of the Full Moon
		18505, -- Mugger's Belt
	},
	{ boss=14324, -- Cho'Rush the Observer
		18485, -- Observer's Shield
		18484, -- Cho'Rush's Blade
		18490, -- Insightful Hood
		18483, -- Mana Channeling Wand

	},
	-- KING GORDOK
	{ boss=11501, -- King Gordok
		18523, -- Brightly Glowing Stone
		18526, -- Crown of the Ogre King
		18524, -- Leggings of Destruction
		18520, -- Barbarous Blade
		18522, -- Band of the Ogre King
		18525, -- Bracers of Prosperity
		18521, -- Grimy Metal Boots
		18527, -- Harmonious Gauntlets
	},
	{ boss=14322, -- Stomper Kreeg <The Drunk>
		18425, -- Kreeg's Mug
	},
	{ boss=14326, -- Guard Mol'dar
		18493, -- Bulky Iron Spaulders
		18494, -- Denwatcher's Shoulders
		18498, -- Hedgecutter
		18496, -- Heliotrope Cloak
		18497, -- Sublime Wristguards
		18451, -- Hyena Hide Belt
		18462, -- Jagged Bone Fist
		18458, -- Modest Armguards
		18463, -- Ogre Pocket Knife
		18450, -- Robe of Combustion
		18459, -- Gallant's Wristguards
		18464, -- Gordok Nose Ring
		18460, -- Unsophisticated Hand Cannon

	},
	--QUEST KING OF THE GORDOK
	{ quest=27128, -- King of the Gordok  -- HORDE
		65976, -- Pauldrons of Tribute
		65952, -- Wristbands of Tribute
		65927, -- Slippers of Tribute
		65997, -- Tribute Gun
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Dire Maul: Capital Gardens (West)"] = {
	dungeonmap=699,
	dungeon=36,
	-- ILLYANNA RAVENOAK - WEST
	{ boss=11488, -- Illyanna Ravenoak
		18349, -- Gauntlets of Accuracy
		18383, -- Force Imbued Gauntlets
		18386, -- Padre's Trousers
		18347, -- Well Balanced Axe

	},
	-- MAGISTER KALENDRIS
	{ boss=11487, -- Magister Kalendris
		18374, -- Flamescarred Shoulders
		18397, -- Elder Magus Pendant
		18351, -- Magically Sealed Bracers
		18350, -- Amplifying Cloak
		18371, -- Mindtap Talisman

	},
	-- PRINCE TORTHELDRIN
	{ boss=11486, -- Prince Tortheldrin
		18375, -- Bracers of the Eclipse
		18376, -- Timeworn Mace
		18392, -- Distracting Dagger
		18382, -- Fluctuating Cloak
		18396, -- Mind Carver
		18378, -- Silvermoon Leggings
		18380, -- Eldritch Reinforced Legplates
		18373, -- Chestplate of Tranquility
		18395, -- Emerald Flame Ring
		18388, -- Stoneshatter

	},
	-- TENDRIS WARPWOOD
	{ boss=11489, -- Tendris Warpwood
		18352, -- Petrified Bark Shield
		18353, -- Stoneflower Staff
		18390, -- Tanglemoss Leggings
		18393, -- Warpwood Binding
	},
	{ boss=11496, -- Immol'thar
		18384, -- Bile-Etched Spaulders
		18372, -- Blade of the New Moon
		18389, -- Cloak of the Cosmos
		18394, -- Demon Howl Wristguards
		18391, -- Eyestalk Cord
		18385, -- Robe of Everlasting Night
		18379, -- Odious Greaves
		18377, -- Quickdraw Gloves
		18370, -- Vigilance Charm
		18381, -- Evil Eye Pendant
	},
	{ boss=11467, -- Tsu'zee
		18346, -- Threadbare Trousers
		18387, -- Brightspark Gloves
		18345, -- Murmuring Ring
	},
	{ quest=27111, --  QUEST THE TREASURE OF THE SHEN'DRALAR
		65973, -- Fras Siabi's Cigar Cutter
		65924, -- Shen'dralar Trident
		65994, -- Staff of Athen'a
		65949, -- Dire Maul
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Dire Maul: Warpwood Quarter (East)"] = {
	dungeonmap=699,
	dungeon=34,
	{ boss=14327, -- Lethtendris
		18302, -- Band of Vigor
		18325, -- Felhide Cap
		18301, -- Lethtendris' Wand
		18311, -- Quel'dorei Channeling Rod

	},
	-- HYDROSPAWN
	{ boss=13280, -- Hydrospawn
		18317, -- Tempest Talisman
		18305, -- Breakwater Legguards
		18322, -- Waterspout Boots
		18307, -- Riptide Shoes
		18324, -- Waveslicer

	},
	-- PIMGIB
	{ boss=14349, -- Pimgib
		18354, -- Pimgib's Collar

	},
	-- ZEVRIM THORNHOOF
	{ boss=11490, -- Zevrim Thornhoof
		18313, -- Helm of Awareness
		18308, -- Clever Hat
		18323, -- Satyr's Bow
		18319, -- Fervent Helm
		18306, -- Gloves of Shadowy Mist

	},
	-- ALZZIN THE WILDSHAPER
	{ boss=11492, -- Alzzin the Wildshaper
		18312, -- Energized Chestplate
		18321, -- Energetic Rod
		18326, -- Razor Gauntlets
		18314, -- Ring of Demonic Guile
		18327, -- Whipvine Cord
		18310, -- Fiendish Machete
		18315, -- Ring of Demonic Potency
		18309, -- Gloves of Restoration
		18318, -- Merciful Greaves
		18328, -- Shadewood Cloak

	},
	--QUEST ALZZIN THE WILDSHAPER
	{ quest=27104, -- Alzzin the Wildshaper
		65972, -- Warpwood Bow
		65948, -- Warpwood Bark Vest
		65993, -- Warpwood Shield
		65922, -- Warpwood Leaf Mantle

	},
	--QUEST UNFINISHED GORDOK BUSINESS
	{ quest=27124, -- Unfinished Gordok Business
		18366, -- Gordok's Handguards
		18367, -- Gordok's Gauntlets
		18368, -- Gordok's Gloves
		18369, -- Gordok's Handwraps
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Abyssal Maw: Throne of the Tides - Level 80-82"] = {
	dungeonmap=767,
	dungeon=302,
	-- QUEST: RESCUE THE EARTH SPEAKER!
	{ quest={28833,28834}, -- Rescue the Earth Speaker!
		65656, -- Sea Witch Charm   --Horde Quest -- 28833
		65655, -- Leggings of Opportune Strikes   --Horde Quest -- 28833
		65654, -- Belt of a Thousand Deaths   --Horde Quest -- 28833
	},
	{ quest={28836,28843}, -- SINS OF THE SEA WITCH
		65657, -- Deepmist Robes   --Horde Quest -- 28843
		65659, -- Kelp Forest Vest   --Horde Quest -- 28843
		65658, -- Stonespeaker's Belt   --Horde Quest -- 28843

	},
	-- COMMANDER ULTHOK
	{ boss=40765, -- Commander Ulthok
		55207, -- Harp Shell Pauldron
		55206, -- Eagle Ray Cloak
		55205, -- Chromis Chestpiece
		55228, -- Cerith Spire Staff
		55204, -- Caridean Epaulettes

	},
	-- LADY NAZ'JAR
	{ boss=40586, -- Lady Naz'jar
		55195, -- Wrasse Handwraps
		55202, -- Periwinkle Cloak
		55203, -- Lightning Whelk Axe
		55201, -- Entwined Nereis
		55198, -- Aurelian Mitre

	},
	-- MINDBENDER GHUR'SHA
	{ boss=40788, -- Mindbender Ghur'sha
		55237, -- Porcelain Crab
		55235, -- Decapod Slippers
		55248, -- Conch of Thunderring Waves
		55236, -- Anthia's Ring
		55229, -- Anomurn Helm

	},
	-- NEPTULON
	{ boss=205216, -- Neptulon's Cache
		55252, -- Whitefin Axe
		55253, -- Wentletrap Vest
		55249, -- Triton Legplates
		55256, -- Sea Star
		55258, -- Pipefish Cord
		55250, -- Nautilus Ring
		55255, -- Mnemiopsis Gloves
		55251, -- Might of the Ocean
		55259, -- Bioluminescent Lamp
		55254, -- Abalone Plate Armor
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Blackrock Caverns - Level 80-82"] = {
	dungeonmap=753,
	dungeon=303,
	-- QUEST: ASCENDANT LORD OBSIDIUS
	{ quest=28741, -- Ascendant Lord Obsidius
		66886, -- Acid-Eaten Vest
		66885, -- Diamond-Studded Helm
		66884, -- Raz's Breastplate

	},
	-- QUEST: DO MY EYES DECEIVE ME?
	{ quest=28740, -- Do My Eyes Decieve Me
		66890, -- Finkle's Twinkle
		66889, -- Beauty's Cootie-Ridden Blankie
		66887, -- Beauty Jr.'s Collar

	},
	-- QUEST: FORGEMASTER PYRENDIUS
	{ quest=25600, -- Forgemaster Pyrendius
		57270, -- Wolfking Spaulders
		57269, -- Helm of Terrorizing Fangs
		57268, -- Forgemaster's Shattered Shackle

	},
	-- ROM'OGG BONECRUSHER
	{ boss=39665, -- Rom'ogg Bonecrusher
		55777, -- Torturer's Mercy
		55776, -- Skullcracker Ring
		55778, -- Shield of the Iron Maiden
		55278, -- Inquisition Robes
		55279, -- Manacles of Pain

	},
	-- CORLA, HERALD OF TWILIGHT
	{ boss=39679, -- Corla, Herald of Twilight
		55267, -- Corla's Baton
		55266, -- Grace of the Herald
		55263, -- Renouncer's Cowl
		55265, -- Signet of Transformation
		55264, -- Armbands of Change

	},
	-- KARSH STEELBENDER
	{ boss=39698, -- Karsh Steelbender
		55268, -- Bracers of Cooled Anger
		55271, -- Quicksilver Amulet
		55272, -- Steelbender's Masterpiece
		55270, -- Burned Gatherings
		55269, -- Heat Wave Leggings

	},
	-- BEAUTY
	{ boss=39700, -- Beauty
		55277, -- Beauty's Favorite Bone
		55273, -- Beauty's Chew Toy
		55275, -- Beauty's Silken Ribbon
		55276, -- Kibble
		55274, -- Beauty's Plate

	},
	-- ASCENDANT LORD OBSIDIUS
	{ boss=39705, -- Ascendant Lord Obsidius
		55787, -- Witching Hourglass
		55782, -- Amber Messenger
		55788, -- Crepuscular Shield
		55780, -- Twitching Shadows
		55781, -- Carrier Wave Pendant
		55779, -- Raz's Pauldrons
		55783, -- Sandshift Relic
		55784, -- Clutches of Dying Light
		55786, -- Krystel Mantle
		55785, -- Willowy Crown
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\The Stonecore - Level 82-84"] = {
	dungeonmap=768,
	dungeon=307,
	-- QUEST: FOLLOWERS AND LEADERS
	{ quest=28814, -- Followers and Leaders
		66892, -- Band of the One Hundred and One
		66893, -- High Priestess' Signet
		66891, -- Pauldrons of Unholy Rituals

	},
	-- QUEST: WAYWARD CHILD
	{ quest=28824, -- Wayward Child
		66894, -- Leggins of the Lost Child
		66896, -- Stonecore Belt
		66897, -- Crystal Shimmer Cloak

	},
	-- CORBORUS
	{ boss=43438, -- Corborus
		55795, -- Key to the Endless Chamber
		55796, -- Fist of Pained Senses
		55794, -- Phosphorescent Ring
		55792, -- Cinnabar Shoulders
		55793, -- Dolomite Adorned Gloves

	},
	-- SLABHIDE
	{ boss=43214, -- Slabhide
		55799, -- Rose Quartz Band
		55800, -- Stalagmite Dragon
		55797, -- Hematite Plate Gloves

	},
	-- OZRUK
	{ boss=42188, -- Ozruk
		55811, -- Sword of the Bottomless Pit
		55804, -- Pendant of the Lightless Grotto
		55810, -- Tendrils of Burrowing Dark
		55802, -- Elementium Scale Bracers
		55803, -- Belt of the Ringworm

	},
	-- HIGH PRIESTESS AZIL
	{ boss=42333, -- High Priestess Azil
		55815, -- Darkling Staff
		55814, -- Magnetite Mirror
		55821, -- Book of Dark Prophecies
		55820, -- Prophet's Scepter
		55819, -- Tear of Blood
		55817, -- Slippers of the Twilight Prophet
		55813, -- Elementium Fang
		55812, -- Helm of Numberless Shadows
		55816, -- Leaden Despair
		55818, -- Cowl of the Unseen World
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\The Vortex Pinnacle - Level 82-84"] = {
	dungeonmap=769,
	dungeon=311,
		 -- QUEST: A LONG WAY FROM HOME
	{ quest=28779, -- A Long Way From Home
		 66898, -- Cloak of Itesh
		 66899, -- Leggings of the Vortex Pinnacle
		 66900, -- Band of the Dead End##
	},
		 -- QUEST: VENGEANCE OF ORSIS
	{ quest=28760, -- Vengeance of Orsis
		 66902, -- Token of Gratitude
		 66901, -- Greaves of Orsis
		 66903, -- Caliph's Band
	},
		 -- GRAND VIZIER ERTAN
	{ boss=43878, -- Grand Vizier Ertan
		 55834, -- Biting Wind
		 55833, -- Red Sky Pendant
		 55830, -- Stratosphere Belt
		 55832, -- Fallen Snow Shoulderguards
		 55831, -- Headcover of Fog
	},
		 -- ALTAIRUS
	{ boss=43873, -- Altairus
		 55839, -- Skyshard Ring
		 55835, -- Hail-Strung Belt
		 55838, -- Mantle of Bestilled Winds
	},
		 -- ASAAD
	{ boss=43875, -- Asaad
		 55850, -- Shadow of Perfect Bliss
		 55846, -- Lightningflash
		 55852, -- Captured Lightning
		 55851, -- Ring of Frozen Rain
		 55842, -- Legguards of Winnowing Wind
		 55847, -- Billowing Cape
		 55844, -- Gloves of Haze
		 55845, -- Heart of Thunder
		 55849, -- Leggings of Iridescent Clouds
		 55848, -- Lunar Halo
		 55853, -- Thundercall
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Grim Batol - Level 85"] = {
	dungeonmap=757,
	dungeon=304,
	-- CLOSING A DARK CHAPTER
	{ boss=28854, -- A Dark Chapter
		66934, -- Gloves of Baleflame
		66935, -- Eradicator's Bracers
		66933, -- Breastplate of the Witness

	},
	-- KILL THE COURIER
	{ boss=28853, -- Kill The Courier
		66937, -- Sandals of the Courier
		66936, -- Helm of Secret Knowledge
		66938, -- Tooranu's Spaulders

	},
	-- GENERAL UMBRISS
	{ boss=39625, -- General Umbriss
		56116, -- Modgud's Blade
		56115, -- Skardyn's Grace
		56112, -- Wildhammer Riding Helm
		56113, -- Cursed Skardyn Vest
		56114, -- Umbriss Band

	},
	-- FORGEMASTER THRONGUS
	{ boss=40177, -- Forgemaster Throngus
		56120, -- Ring of Dun Algaz
		56118, -- Belt of the Forgemaster
		56121, -- Throngus's Finger
		56122, -- Wand of Untainted Power

	},
	-- DRAHGA SHADOWBURNER
	{ boss=40319, -- Drahga Shadowburner
		56126, -- Azureborne Cloak
		56127, -- Windwalker Blade
		56123, -- Red Scale Boots
		56124, -- Earthshape Pauldrons
		56125, -- Crimsonborne Bracers

	},
	-- ERUDAX
	{ boss=40484, -- Erudax
		56137, -- Staff of Siphoned Essences
		56131, -- Wild Hammer
		56138, -- Gale of Shadows
		56132, -- Mark of Khardros
		56129, -- Circle of Bone
		56136, -- Corrupted Egg Shell
		56133, -- Crown of Enfeebled Bodies
		56130, -- Mace of Transformed Bone
		56128, -- Vest of Misshapen Hides
		56135, -- Bracers of Umbral Mending
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Halls of Origination - Level 85"] = {
	dungeonmap=759,
	dungeon=305,
	-- QUEST: DOING IT THE HARD WAY
	{ quest=28753, -- Doing It The Hard Way
		66917, -- True Archaeologist's Bracers
		66921, -- Helm of Reorigination
		66915, -- Treasure Hunter's Gloves

	},
	-- QUEST: PENETRATING THEIR DEFENSES
	{ quest=28746, -- Penetrating Their Defenses
		66913, -- Repository Gauntlets
		66911, -- Offline Greaves
		66914, -- Boots of the Hard Way

	},
	-- TEMPLE GUARDIAN ANHUUR
	{ boss=39425, -- Temple Guardian Anhuur
		55889, -- Anhuur's Hymnal
		55888, -- Darkhowl Amulet
		55886, -- Poison Fang Bracers
		55890, -- Awakening Footfalls
		55887, -- Belt of Petrified Tears

	},
	-- EARTHRAGER PTAH
	{ boss=39428, -- Earthrager Ptah
		56097, -- Soul Releaser
		56095, -- Mouth of the Earth
		56093, -- Breastplate of the Risen Land
		56096, -- Bulwark of the Primordial Mound
		56094, -- Underworld Cord

	},
	-- ANRAPHET
	{ boss=39788, -- Anraphet
		57855, -- Alpha Bracers
		57857, -- Boots of Crumbling Ruin
		57860, -- Anraphet's Regalia
		57856, -- Omega Breastplate
		57858, -- Mantle of Soft Shadows

	},
	-- ISISET
	{ boss=39587, -- Isiset
		55994, -- Ring of Blinding Stars
		55995, -- Blood of Isiset
		55993, -- Legwraps of Astral Rain
		55996, -- Nova Band
		55992, -- Armguards of Unearthly Light

	},
	-- ANNUNAE
	{ boss=39731, -- Ammunae
		55997, -- Bloodpetal Mantle
		56000, -- Band of Life Energy
		55998, -- Robes of Rampant Growth
		55999, -- Seedling Pod
		56001, -- Salshin Thorns

	},
	-- SETESH
	{ boss=39732, -- Setesh
		57865, -- Scepter of Power
		57864, -- Helm of the Typhonic Beast
		57863, -- Heiroglyphic Vest
		57862, -- Chaotic Wrappings
		57861, -- Helm of Setesh

	},
	-- RAJH
	{ boss=39378, -- Rajh
		56108, -- Blade of the Burning Sun
		56106, -- Band of Rays
		56102, -- Left Eye of Rajh
		56100, -- Right Eye of Rajh
		56107, -- Solar Wind Cloak
		56098, -- Red Beam Cord
		56101, -- Sun Strike
		56099, -- Fingers of Light
		56105, -- Hekatic Slipper
		56104, -- Legguards of Noon
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Lost City of the Tol'vir - Level 85"] = {
	dungeonmap=747,
	dungeon=312,
	-- TARGETS OF OPPORTUNITY
	{ quest=28781, -- Quest - Targets of Opportunity
		66907, -- Captain Hadan's Pauldrons
		66905, -- Clandestine Spaulders
		66906, -- Bracers of the Lost City

	},
	-- THE SOURCE OF THEIR POWER
	{ quest=28783, -- Quest - The Source of Their Power
		66910, -- Blight-Lifter's Mantle
		66908, -- Treads of the Neferset
		66909, -- Ramkahen Front Boots

	},
	-- GENERAL HUSAM
	{ boss=44577, -- General Husam
		55860, -- Seliza's Spear
		55858, -- Kaleki Cloak
		55859, -- Spirit Creeper Ring
		55856, -- Greaves of Wu the Elder
		55857, -- Ionic Gloves

	},
	-- HIGH PROPHET BARIM
	{ boss=43612, -- High Prophet Barim
		55864, -- Tauntka's Necklace
		55861, -- Balkar's Waders
		55865, -- Resonant Kris
		55863, -- Ring of the Darkest Day
		55862, -- Greaves of Wu the Younger

	},
	-- LOCKMAW
	{ boss=43614, -- Lockmaw
		55868, -- Heart of Solace
		55869, -- Veneficial Band
		55870, -- Barim's Main Gauche
		55866, -- Sand Silk Wristband
		55867, -- Sand Dune Belt

	},
	-- SIAMAT
	{ boss=44819, -- Siamat
		55879, -- Sorrowsong
		55874, -- Tia's Grace
		55880, -- Zora's Ward
		55876, -- Mantle of Master Cho
		55872, -- Geordan's Cloak
		55875, -- Hammer of Sparks
		55871, -- Crafty's Gaiters
		55873, -- Ring of Three Lights
		55878, -- Evelyn's Belt
		55877, -- Leggings of the Path
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Zul'Aman - Level 85"] = {
	dungeonmap=781, heroic=1,
	dungeon=340,
	-- QUEST: THE HEX LORD'S FETISH
	{ quest=29186, -- The Hex Lord's Fetish
		69596, -- Voodoo Hunting Bow
		69595, -- Fetish Greaves
		69594, -- T'wansi's Handwraps

	},
	-- QUEST: WARLORD OF THE AMANI
	{ quest=11196, -- Warlord of the Amani
		69599, -- Pauldrons of Ambition
		69598, -- Robes of Dissention
		69597, -- Zulian Throwing Axe

	},
	-- AKIL'ZON
	{ boss=23574, -- Akil'zon
		69549, -- Wristguards of the Predator
		69552, -- Bracers of Hidden Purpose
		69551, -- Feathers of Akil'zon
		69553, -- Talonguard Band
		69550, -- Leggings of Ancient Magics

	},
	-- NALORAKK
	{ boss=23576, -- Nalorakk
		69557, -- Jungle Striders
		69554, -- Pauldrons of Nalorakk
		69556, -- Armbands of the Bear Spirit
		69555, -- Boots of the Ursine
		69558, -- Spiritshield Mask

	},
	-- JAN'ALAI
	{ boss=23578, -- Jan'alai
		69559, -- Amani'shi Bracers
		69560, -- Jan'alai's Spaulders
		69563, -- Ring of the Numberless Brood
		69562, -- Boots of Bad Mojo
		69561, -- Hawkscale Waistguard

	},
	-- HALAZZI
	{ boss=23577, -- Halazzi
		69566, -- Shimmerclaw Band
		69565, -- Breastplate of Primal Fury
		69564, -- The Savager's Mask
		69568, -- Shadowmender Wristguards
		69567, -- Wristwraps of Departed Spirits

	},
	-- HEX LORD MALACRASS
	{ boss=24239, -- Hex Lord Malacrass
		69572, -- Hex Lord's Bloody Cloak
		69569, -- Shadowtooth Trollskin Breastplate
		69571, -- Soul Drain Signet
		69570, -- Waistband of Hexes
		69573, -- Pauldrons of Sacrifice
		70080, -- Reforged Heartless
		69762, -- Miniature Voodoo Mask

	},
	-- DAAKARA
	{ boss=23863, -- Daakara
		69581, -- Amani Scepter of Rites
		69577, -- Collar of Bones
		69576, -- Headdress of Sharpened Vision
		69582, -- Skullpiercer Pauldrons
		69574, -- Tusked Shoulderpads
		69575, -- Mace of the Sacrificed
		69579, -- Amani Headdress
		69578, -- Hexing Robes
		69583, -- Legguards of the Unforgiving
		69580, -- Mask of Restless Spirits
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Zul'Gurub - Level 85"] = {
	dungeonmap=793, heroic=1,
	dungeon=334,
	-- HIGH PRIEST VENOXIS
	{ boss=52155, -- High Priest Venoxis
		69600, -- Belt of Slithering Serpents
		69601, -- Serpentine Leggings
		69602, -- Signet of Venoxis
		69603, -- Breastplate of Serenity
		69604, -- Coils of Hate

	},
	-- BLOODLORD MANDOKIR
	{ boss=52151, -- Bloodlord Mandokir
		69606, -- Hakkari Loa Drape
		69605, -- Amulet of the Watcher
		69609, -- Bloodlord's Protector
		69608, -- Deathcharged Wristguards
		69607, -- Touch of Discord

	},
	-- HAZZA'RAH
	{ boss=52271, -- Hazza'rah
		69636, -- Thekal's Claws
		69637, -- Gurubashi Destroyer
		69633, -- Plunderer's Gauntlets
		69630, -- Handguards of the Tormented
		69632, -- Lost Bag of Whammies
		69631, -- Zulian Voodoo Stick

	},
	-- HIGH PRIESTESS KILNARA
	{ boss=52059, -- High Priestess Kilnara
		69610, -- Arlokk's Signet
		69612, -- Claw-Fringe Mantle
		69613, -- Leggings of the Pride
		69614, -- Roaring Mask of Bethekk
		69611, -- Sash of Anguish

	},
	-- ZANZIL
	{ boss=52053, -- Zanzil
		69615, -- Zombie Walker Legguards
		69618, -- Zulian Slasher
		69616, -- Spiritbinder Spaulders
		69619, -- Bone Plate Handguards
		69617, -- Plumed Medicine Helm

	},
	-- JIN'DO THE GODBREAKER
	{ boss=52148, -- Jin'do the Godbreaker
		69628, -- Jeklik's Smasher
		69624, -- Legacy of Arlokk
		69626, -- Jin'do's Verdict
		69620, -- Twinblade of the Hakkari
		69621, -- Twinblade of the Hakkari
		69627, -- Zulian Ward
		69625, -- Mandokir's Tribute
		69629, -- Shield of the Blood God
		69622, -- The Hexxer's Mask
		69623, -- Vestments of the Soulflayer
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Throne of the Tides - Level 85 (Heroic)"] = {
	dungeonmap=767,
	dungeon=324,
	-- COMMANDER ULTHOK
	{ boss=40765, -- Commander Ulthok
		56272, -- Harp Shell Pauldron
		56275, -- Eagle Ray Cloak
		56274, -- Chromis Chestpiece
		56271, -- Cerith Spire Staff
		56273, -- Caridean Epaulettes

	},
	-- LADY NAZ'JAR
	{ boss=40586, -- Lady Naz'jar
		56268, -- Wrasse Handwraps
		56267, -- Periwinkle Cloak
		56266, -- Lightning Whelk Axe
		56270, -- Entwined Nereis
		56269, -- Aurelian Mitre

	},
	-- MINDBENDER GHUR'SHA
	{ boss=40788, -- Mindbender Ghur'sha
		56280, -- Porcelain Crab
		56277, -- Decapod Slippers
		56279, -- Conch of Thunderring Waves
		56276, -- Anthia's Ring
		56278, -- Anomurn Helm

	},
	-- NEPTULON
	{ special="Neptulon's Cache", -- 205216, -- Neptulon's Cache
		56284, -- Whitefin Axe
		56281, -- Wentletrap Vest
		56283, -- Triton Legplates
		56290, -- Sea Star
		56288, -- Pipefish Cord
		56282, -- Nautilus Ring
		56286, -- Mnemiopsis Gloves
		56285, -- Might of the Ocean
		56289, -- Bioluminescent Lamp
		56291, -- Abalone Plate Armor
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Blackrock Caverns - Level 85 (Heroic)"] = {
	dungeonmap=753, heroic=1,
	dungeon=323,
	-- ROM'OGG BONECRUSHER
	{ boss=39665, -- Rom'ogg Bonecrusher
		56312, -- Torturer's Mercy
		56310, -- Skullcracker Ring
		56314, -- Shield of the Iron Maiden
		56311, -- Inquisition Robes
		56313, -- Manacles of Pain

	},
	-- CORLA, HERALD OF TWILIGHT
	{ boss=39679, -- Corla, Herald of Twilight
		56296, -- Corla's Baton
		56295, -- Grace of the Herald
		56298, -- Renouncer's Cowl
		56299, -- Signet of Transformation
		56297, -- Armbands of Change

	},
	-- KARSH STEELBENDER
	{ boss=39698, -- Karsh Steelbender
		56301, -- Bracers of Cooled Anger
		56300, -- Quicksilver Amulet
		56302, -- Steelbender's Masterpiece
		56304, -- Burned Gatherings
		56303, -- Heat Wave Leggings

	},
	-- BEAUTY
	{ boss=39700, -- Beauty
		56306, -- Beauty's Favorite Bone
		56309, -- Beauty's Chew Toy
		56305, -- Beauty's Silken Ribbon
		56307, -- Kibble
		56308, -- Beauty's Plate

	},
	-- ASCENDANT LORD OBSIDIUS
	{ boss=39705, -- Ascendant Lord Obsidius
		56320, -- Witching Hourglass
		56317, -- Amber Messenger
		56322, -- Crepuscular Shield
		56315, -- Twitching Shadows
		56319, -- Carrier Wave Pendant
		56318, -- Raz's Pauldrons
		56316, -- Sandshift Relic
		56323, -- Clutches of Dying Light
		56324, -- Krystel Mantle
		56321, -- Willowy Crown
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Grim Batol - Level 85 (Heroic)"] = {
	dungeonmap=757, heroic=1,
	dungeon=322,
	-- GENERAL UMBRISS
	{ boss=39625, -- General Umbriss
		56441, -- Modgud's Blade
		56440, -- Skardyn's Grace
		56443, -- Wildhammer Riding Helm
		56442, -- Cursed Skardyn Vest
		56444, -- Umbriss Band

	},
	-- FORGEMASTER THRONGUS
	{ boss=40177, -- Forgemaster Throngus
		56445, -- Ring of Dun Algaz
		56447, -- Belt of the Forgemaster
		56449, -- Throngus's Finger
		56446, -- Wand of Untainted Power
		56448, -- Dark Iron Chain Boots

	},
	-- DRAHGA SHADOWBURNER
	{ boss=40319, -- Drahga Shadowburner
		56450, -- Azureborne Cloak
		56454, -- Windwalker Blade
		56451, -- Red Scale Boots
		56452, -- Earthshape Pauldrons
		56453, -- Crimsonborne Bracers

	},
	-- ERUDAX
	{ boss=40484, -- Erudax
		56461, -- Staff of Siphoned Essences
		56456, -- Wild Hammer
		56462, -- Gale of Shadows
		56458, -- Mark of Khardros
		56457, -- Circle of Bone
		56463, -- Corrupted Egg Shell
		56460, -- Crown of Enfeebled Bodies
		56459, -- Mace of Transformed Bone
		56455, -- Vest of Misshapen Hides
		56464, -- Bracers of Umbral Mending
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Stonecore - Level 85 (Heroic)"] = {
	dungeonmap=768, heroic=1,
	dungeon=320,
	-- CORBORUS
	{ boss=43438, -- Corborus
		56328, -- Key to the Endless Chamber
		56329, -- Fist of Pained Senses
		56332, -- Phosphorescent Ring
		56330, -- Cinnabar Shoulders
		56331, -- Dolomite Adorned Gloves

	},
	-- SLABHIDE
	{ boss=43214, -- Slabhide
		56333, -- Rose Quartz Band
		56337, -- Stalagmite Dragon
		56336, -- Hematite Plate Gloves

	},
	-- OZRUK
	{ boss=42188, -- Ozruk
		56342, -- Sword of the Bottomless Pit
		56338, -- Pendant of the Lightless Grotto
		56339, -- Tendrils of Burrowing Dark
		56340, -- Elementium Scale Bracers
		56341, -- Belt of the Ringworm

	},
	-- HIGH PRIESTESS AZIL
	{ boss=42333, -- High Priestess Azil
		56343, -- Darkling Staff
		56345, -- Magnetite Mirror
		56350, -- Book of Dark Prophecies
		56349, -- Prophet's Scepter
		56351, -- Tear of Blood
		56348, -- Slippers of the Twilight Prophet
		56346, -- Elementium Fang
		56344, -- Helm of Numberless Shadows
		56347, -- Leaden Despair
		56352, -- Cowl of the Unseen World
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\Vortex Pinnacle 85 (Heroic)"] = {
	dungeonmap=769, heroic=1,
	dungeon=319,
	 -- GRAND VIZIER ERTAN
	{ boss=43878, -- Grand Vizier Ertan
		 56357, -- Biting Wind
		 56360, -- Red Sky Pendant
		 56356, -- Stratosphere Belt
		 56359, -- Fallen Snow Shoulderguards
		 56358, -- Headcover of Fog
	},
	 -- ALTAIRUS
	{ boss=43873, -- Altairus
		 56365, -- Skyshard Ring
		 56363, -- Hail-Strung Belt
		 56361, -- Mantle of Bestilled Winds
	},
	 -- ASAAD
	{ boss=43875, -- Asaad
		 56371, -- Shadow of Perfect Bliss
		 56366, -- Lightningflash
		 56372, -- Captured Lightning
		 56373, -- Ring of Frozen Rain
		 56367, -- Legguards of Winnowing Wind
		 56369, -- Billowing Cape
		 56368, -- Gloves of Haze
		 56370, -- Heart of Thunder
		 56375, -- Leggings of Iridescent Clouds
		 56374, -- Lunar Halo
		 56376, -- Thundercall
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\Halls of Origination - Level 85 (Heroic)"] = {
	dungeonmap=759, heroic=1,
	dungeon=321,
	-- TEMPLE GUARDIAN ANHUUR
	{ boss=39425, -- Temple Guardian Anhuur
		56407, -- Anhuur's Hymnal
		56411, -- Darkhowl Amulet
		56409, -- Poison Fang Bracers
		56408, -- Awakening Footfalls
		56410, -- Belt of Petrified Tears

	},
	-- EARTHRAGER PTAH
	{ boss=39428, -- Earthrager Ptah
		56424, -- Soul Releaser
		56422, -- Mouth of the Earth
		56425, -- Breastplate of the Risen Land
		56426, -- Bulwark of the Primordial Mound
		56423, -- Underworld Cord

	},
	-- ANRAPHET
	{ boss=39788, -- Anraphet
		57870, -- Alpha Bracers
		57867, -- Boots of Crumbling Ruin
		57868, -- Anraphet's Regalia
		57869, -- Omega Breastplate
		57866, -- Mantle of Soft Shadows

	},
	-- ISISET
	{ boss=39587, -- Isiset
		56412, -- Ring of Blinding Stars
		56414, -- Blood of Isiset
		56413, -- Legwraps of Astral Rain
		56415, -- Nova Band
		56416, -- Armguards of Unearthly Light

	},
	-- ANNUNAE
	{ boss=39731, -- Ammunae
		56419, -- Bloodpetal Mantle
		56418, -- Band of Life Energy
		56417, -- Robes of Rampant Growth
		56421, -- Seedling Pod
		56420, -- Salshin Thorns

	},
	-- SETESH
	{ boss=39732, -- Setesh
		57872, -- Scepter of Power
		57871, -- Helm of the Typhonic Beast
		57874, -- Heiroglyphic Vest
		57875, -- Chaotic Wrappings
		57873, -- Helm of Setesh

	},
	-- RAJH
	{ boss=39378, -- Rajh
		56433, -- Blade of the Burning Sun
		56432, -- Band of Rays
		56427, -- Left Eye of Rajh
		56431, -- Right Eye of Rajh
		56434, -- Solar Wind Cloak
		56429, -- Red Beam Cord
		56430, -- Sun Strike
		56428, -- Fingers of Light
		56436, -- Hekatic Slipper
		56435, -- Legguards of Noon
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\Lost City of the Tol'vir - Level 85 (Heroic)"] = {
	dungeonmap=747, heroic=1,
	dungeon=325,
	-- GENERAL HUSAM
	{ boss=44577, -- General Husam
		56382, -- Seliza's Spear
		56379, -- Kaleki Cloak
		56380, -- Spirit Creeper Ring
		56381, -- Greaves of Wu the Elder
		56383, -- Ionic Gloves

	},
	-- HIGH PROPHET BARIM
	{ boss=43612, -- High Prophet Barim
		56385, -- Tauntka's Necklace
		56386, -- Balkar's Waders
		56384, -- Resonant Kris
		56388, -- Ring of the Darkest Day
		56387, -- Greaves of Wu the Younger

	},
	-- LOCKMAW & AUGH
	{ boss=43614, -- Lockmaw
		56393, -- Heart of Solace
		56391, -- Veneficial Band
		56390, -- Barim's Main Gauche
		56389, -- Sand Silk Wristband
		56392, -- Sand Dune Belt

	},
	-- SIAMAT
	{ boss=44819, -- Siamat
		56400, -- Sorrowsong
		56394, -- Tia's Grace
		56402, -- Zora's Ward
		56399, -- Mantle of Master Cho
		56397, -- Geordan's Cloak
		56396, -- Hammer of Sparks
		56395, -- Crafty's Gaiters
		56398, -- Ring of Three Lights
		56403, -- Evelyn's Belt
		56401, -- Leggings of the Path
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\Utgarde Keep - Level 69-72"] = {
	dungeonmap=523,
	dungeon=202,
	-- QUEST: A SCORE TO SETTLE (HORDE)
	{ quest=11272, -- A Score to Settle
		39676, -- Wraps of the San'layn
		39678, -- Vendetta Bindings
		39679, -- Runecaster's Bracers
		39680, -- Vambraces of the Vengeance Bringer

	},
	-- QUEST: DISARMAMENT (HORDE)
	{ quest=13206, -- Disarmament
		44400, -- Necklace of Calm Skies
		44401, -- Hundred Tooth Necklace
		44403, -- Amulet of Constrained Power
		44402, -- Tiled-Stone Pendant

	},
	-- QUEST: DISARMAMENT (ALLIANCE)
	{ quest=129764, -- Disarmament
		44374, -- Amulet of the Tranquil Mind
		44375, -- Razor-Blade Pendant
		44376, -- Necklace of Fragmented Light
		44377, -- Woven Steel Necklace

	},
	-- QUEST: EARS OF THE LICH KING (ALLIANCE)
	{ quest=29803, -- Ears of the Lich King
		39676, -- Wraps of the San'layn
		39678, -- Vendetta Bindings
		39679, -- Runecaster's Bracers
		39680, -- Vambraces of the Vengeance Bringer

	},
	-- QUEST: STEALING THEIR THUNDER
	{ quest=29763, -- Stealing Their Thunder
		38218, -- Executioner's Band
		38219, -- Ring of Decimation
		38220, -- Signet of Swift Judgment

	},
	-- QUEST: INGVAR MUST DIE!
	{ quest=11262, -- Ingvar Must Die!
		38218, -- Executioner's Band
		38219, -- Ring of Decimation
		38220, -- Signet of Swift Judgment

	},
	-- PRINCE KELESETH
	{ boss=23953, -- Prince Keleseth
		35571, -- Dragon Stabler's Gauntlets
		35572, -- Reinforced Velvet Helm
		35570, -- Keleseth's Blade of Evocation

	},
	{ boss=27390, -- Skarvald the Constructor
		35575, -- Skarvald's Dragonskin Habergeon
		35573, -- Arm Blade of Augelmir
		35574, -- Chestplate of the Northern Lights

	},
	-- INGVAR THE PLUNDERER
	{ boss=23954, -- Ingvar the Plunderer
		35577, -- Holistic Patchwork Breeches
		35576, -- Ingvar's Monolithic Cleaver
		35578, -- Overlaid Chain Spaulders
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\Utgarde Keep - Level 80 (Heroic)"] = {
	dungeonmap=523, heroic=1,
	dungeon=242,
	-- PRINCE KELESETH
	{ boss=23953, -- Prince Keleseth
		37179, -- Infantry Assault Blade
		37178, -- Strategist's Belt
		37177, -- Wand of the San'layn
		37180, -- Battlemap Hide Helm
	},
	{ boss=24200, -- Skarvald the Constructor
	-- SKARVALD THE CONSTRUCTOR AND DALRONN THE CONTROLLER
		37181, -- Dagger of Betrayal
		37183, -- Bindings of the Tunneler
		37182, -- Helmet of the Constructor
		37184, -- Dalronn's Jerkin

	},
	-- INGVAR THE PLUNDERER
	{ boss=23954, -- Ingvar the Plunderer
		37191, -- Drake-Mounted Crossbow
		37194, -- Sharp-Barbed Leather Belt
		37190, -- Enraged Feral Staff
		37188, -- Plunderer's Helmet
		37186, -- Unsmashable Heavy Band
		37193, -- Staggering Legplates
		37189, -- Breeches of the Caller
		37192, -- Annhylde's Ring
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\The Nexus - Level 71-73"] = {
	dungeonmap=520,
	dungeon=225,
	-- QUEST: QUICKENING
	{ quest=11911, -- Quickening
		42760, -- Sandals of Mystical Evolution
		42762, -- Treads of Torn Future
		42766, -- Spiked Treads of Mutation
		42767, -- Invigorating Sabatons
		42768, -- Boots of the Unbowed Protector

	},
	-- QUEST: ACES HIGH!
	{ quest=13413, -- Aces High!
		44354, -- Assault Hauberk
		44355, -- Incursion Vestments
		44356, -- Vest of the Assailant
		44357, -- Besieging Breastplate

	},
	-- QUEST: HAVE THEY NO SHAME? (Horde)
	{ quest={13094,13095}, -- Have They No Shame
		43181, -- Shoulders of the Northern Lights
		43182, -- Cured Mammoth Hide Mantle
		43183, -- Tundra Tracker's Shoulderguards
		43184, -- Tundra Pauldrons

	},
	{ quest=11905, -- Postponing The Inevitable
		42758, -- Time-Twisted Wraps
		42761, -- Time-Stop Gloves
		42763, -- Bindings of Sabotage
		42765, -- Gauntlets of the Disturbed Giant

	},
	-- QUEST: PRISONER OF WAR
	{ quest=11973, -- Prisoner of War
		38223, -- Cloak of Azure Lights
		38222, -- Mantle of Keristrasza
		38221, -- Shroud of Fluid Strikes

	},
	-- GRAND MAGUS TELESTRA
	{ boss=26731, -- Grand Magus Telestra
		35604, -- Insulating Bindings
		35605, -- Belt of Draconic Runes
		35617, -- Wand of Shimmering Scales

	},
	-- ANOMALUS
	{ boss=26763, -- Anomalus
		35600, -- Cleated Ice Boots
		35598, -- Tome of the Lore Keepers
		35599, -- Gauntlets of Serpent Scales

	},
	-- ORMOROK THE TREE-SHAPER
	{ boss=26794, -- Ormorok the Tree-Shaper
		35601, -- Drakonid Arm Blade
		35603, -- Greaves of the Blue Flight
		35602, -- Chiseled Stalagmite Pauldrons

	},
	-- KERISTRASZA
	{ boss=26723, -- Keristrasza
		35596, -- Attuned Crystalline Boots
		35597, -- Band of Glittering Permafrost
		35595, -- Glacier Sharpened Vileblade
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\Nexus - Level 80 (Heroic)"] = {
	dungeonmap=520, heroic=1,
	dungeon=226,
	-- COMMANDER STOUTBEARD (HORDE)
	{ boss=26796, -- Commander Stoutbeard
		37729, -- Grips of Sculptured Icicles
		37731, -- Opposed Stasis Leggings
		37728, -- Cloak of the Enemy
		37730, -- Cleric's Linen Shoes

	},
	-- COMMANDER KOLURG (ALLIANCE)
	{ boss=26798, -- Commander Kolurg
		37729, -- Grips of Sculptured Icicles
		37731, -- Opposed Stasis Leggings
		37728, -- Cloak of the Enemy
		37730, -- Cleric's Linen Shoes

	},
	-- GRAND MAGUS TELESTRA
	{ boss=26731, -- Grand Magus Telestra
		37139, -- Spaulders of the Careless Thief
		37135, -- Arcane-Shielded Helm
		37138, -- Bands of Channeled Energy

	},
	-- ANOMALUS
	{ boss=26763, -- Anomalus
		37141, -- Amulet of Dazzling Light
		37144, -- Hauberk of the Arcane Wraith
		37150, -- Rift Striders
		37149, -- Helm of Anomalus

	},
	-- ORMOROK THE TREE-SHAPER
	{ boss=26794, -- Ormorok the Tree-Shaper
		37155, -- Frozen Forest Kilt
		37152, -- Girdle of Ice
		37151, -- Band of Frosted Thorns
		37153, -- Gloves of the Crystal Gardener

	},
	-- KERISTRASZA
	{ boss=26723, -- Keristrasza
		37169, -- War Mace of Unrequited Love
		37162, -- Bulwark of the Noble Protector
		37167, -- Dragon Slayer's Sabatons
		37170, -- Interwoven Scale Bracers
		37165, -- Crystal-Infused Tunic
		37166, -- Sphere of Red Dragon's Blood
		37171, -- Flame-Bathed Steel Girdle
		37172, -- Gloves of Glistening Runes
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\Azjol-Nerub - Level 72-74"] = {
	dungeonmap=533,
	dungeon=204,
	-- QUEST: DON'T FORGET THE EGGS!
	{ quest=29808, -- Don't Forget The Eggs!
		44362, -- Expelling Gauntlets
		44363, -- Purging Handguards
		44364, -- Wraps of Quelled Bane
		44365, -- Gloves of Banished Infliction

	},
	-- QUEST: DEATH TO THE TRAITOR KING
	{ quest=29807, -- Death To The Traitor King
		44358, -- Kilix's Silk Slippers
		44359, -- Don Soto's Boots
		44360, -- Husk Shard Sabatons
		44361, -- Greaves of the Traitor

	},
	-- KRIK'THIR THE GATEWATCHER
	{ boss=28684, -- Krik'thir the Gatewatcher
		35655, -- Cobweb Machete
		35656, -- Aura Focused Gauntlets
		35657, -- Exquisite Spider-Silk Footwraps

	},
	-- HARDRONOX
	{ boss=28921, -- Hadronox
		35658, -- Life-Staff of the Web Lair
		35660, -- Spinneret Epaulets
		35659, -- Treads of Aspiring Heights

	},
	-- ANUB'ARAK
	{ boss=29120, -- Anub'arak
		35661, -- Signet of Arachnathid Command
		35662, -- Wing Cover Girdle
		35663, -- Charmed Silken Cord
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\Azjol-Nerub - Level 80 (Heroic)"] = {
	dungeonmap=533, heroic=1,
	dungeon=241,
	-- KRIK'THIR THE GATEWATCHER
	{ boss=28684, -- Krik'thir the Gatewatcher
		37217, -- Golden Limb Bands
		37219, -- Custodian's Chestpiece
		37218, -- Stone-Worn Footwraps
		37216, -- Facade Shield of Glyphs

	},
	-- HARDRONOX
	{ boss=28921, -- Hadronox
		37222, -- Egg Sac Robes
		37220, -- Essence of Gossamer
		37230, -- Grotto Mist Gloves
		37221, -- Hollowed Mandible Legplates

	},
	-- ANUB'ARAK
	{ boss=29120, -- Anub'arak
		37238, -- Rod of the Fallen Monarch
		37237, -- Chitin Shell Greathelm
		37236, -- Insect Vestments
		37240, -- Flamebeard's Bracers
		37235, -- Crypt Lord's Deft Blade
		37232, -- Ring of the Traitor King
		37241, -- Ancient Aligned Girdle
		37242, -- Sash of the Servant
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\The Old Kingdom - Level 73-75"] = {
	dungeonmap=522,
	dungeon=218,
	-- QUEST: THE FACELESS ONES
	{ quest=13187, -- The Faceless Ones
		44350, -- Mantle of Thwarted Evil
		44351, -- Shoulderpads of Abhorrence
		44352, -- Shoulderplates of the Abolished
		44353, -- Epaulets of the Faceless Ones

	},
	-- ELDER NADOX
	{ boss=29309, -- Elder Nadox
		35608, -- Crawler-Emblem Belt
		35606, -- Blade of Nadox
		35607, -- Ahn'kahar Handwraps

	},
	-- PRINCE TALDARAM
	{ boss=29308, -- Prince Taldaram
		35611, -- Gloves of the Blood Prince
		35610, -- Slasher's Amulet
		35609, -- Talisman of Scourge Command

	},
	-- JEDOGA SHADOWSEEKER
	{ boss=29310, -- Jedoga Shadowseeker
		43279, -- Battlechest of the Twilight Cult
		43278, -- Cloak of the Darkcaster
		43277, -- Jedoga's Greatring

	},
	-- HERALD VOLAZJ
	{ boss=29311, -- Herald Volazj
		35613, -- Pyramid Embossed Belt
		35614, -- Volazj's Sabatons
		35612, -- Mantle of Echoing Bats
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\Old Kingdom - Level 80 (Heroic)"] = {
	dungeonmap=522, heroic=1,
	dungeon=219,
	-- ELDER NADOX
	{ boss=29309, -- Elder Nadox
		37591, -- Nerubian Shield Ring
		37594, -- Elder Headpiece
		37593, -- Sprinting Shoulderpads
		37592, -- Brood Plague Helmet

	},
	-- PRINCE TALDARAM
	{ boss=29308, -- Prince Taldaram
		37614, -- Gauntlets of the Plundering Geist
		37595, -- Necklace of Taldaram
		37613, -- Flame Sphere Bindings
		37612, -- Bonegrinder Breastplate

	},
	-- JEDOGA SHADOWSEEKER
	{ boss=29310, -- Jedoga Shadowseeker
		43280, -- Faceguard of the Hammer Clan
		43281, -- Edge of Oblivion
		43282, -- Shadowseeker's Pendant
		43283, -- Subterranean Waterfall Shroud

	},
	-- AMANITAR
	{ boss=30258, -- Amanitar
		43285, -- Amulet of the Spell Flinger
		43287, -- Silken Bridge Handwraps
		43284, -- Amanitar Skullbow
		43286, -- Legguards of Swarming Attacks

	},
	-- HERALD VOLAZJ
	{ boss=29311, -- Herald Volazj
		37618, -- Greaves of Ancient Evil
		37615, -- Titanium Compound Bow
		37620, -- Bracers of the Herald
		37619, -- Wand of Ahn'kahet
		37617, -- Staff of Sinister Claws
		37623, -- Fiery Obelisk Handguards
		37622, -- Skirt of the Old Kingdom
		37616, -- Kilt of the Forgotten One
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\Drak'Tharon Keep - Level 74-76"] = {
	dungeonmap=534,
	dungeon=214,
	-- QUEST: CLEANSING DRAK'THARON
	{ quest=30120, -- Cleansing Drak'Tharon
		40758, -- Shroud of Temptation
		40755, -- Enticing Sabatons
		40757, -- Shackles of Dark Whispers
		40756, -- Shoulders of the Seducer

	},
	-- QUEST: HEAD GAMES
	{ quest=13129, -- Head Games
		44366, -- Shameful Cuffs
		44367, -- Scorned Bands
		44368, -- Accused Wristguards
		44369, -- Disavowed Bracers

	},
	-- TROLLGORE
	{ boss=26630, -- Trollgore
		37714, -- Batrider's Cord
		35620, -- Berserker's Horns
		35618, -- Troll Butcherer
		35619, -- Infection Resistant Legguards

	},
	-- NOVOS THE SUMMONER
	{ boss=26631, -- Novos the Summoner
		35632, -- Robes of Novos
		35630, -- Summoner's Stone Gavel
		35631, -- Crystal Pendant of Warding

	},
	-- KING DRED
	{ boss=27483, -- King Dred
		37723, -- Incisor Fragment
		35633, -- Staff of the Great Reptile
		35634, -- Scabrous-Hide Helm
		35635, -- Stable Master's Breeches

	},
	-- THE PROPHET THARON'JA
	{ boss=26632, -- The Prophet Tharon'ja
		35638, -- Helmet of Living Flesh
		35637, -- Muradin's Lost Greaves
		35636, -- Tharon'ja's Aegis
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\Drak'Tharon Keep - Level 74-76 (Heroic)"] = {
	dungeonmap=534, heroic=1,
	dungeon=215,
	-- TROLLGORE
	{ boss=26630, -- Trollgore
		37714, -- Batrider's Cord
		37717, -- Legs of Physical Regeneration
		37715, -- Cowl of the Dire Troll
		37712, -- Terrace Defence Boots

	},
	-- NOVOS THE SUMMONER
	{ boss=26631, -- Novos the Summoner
		40490, -- Necromantic Wristguards
		37722, -- Breastplate of Undeath
		37721, -- Cursed Lich Blade
		37718, -- Temple Crystal Fragment

	},
	-- KING DRED
	{ boss=27483, -- King Dred
		37725, -- Savage Wound Wrap
		37723, -- Incisor Fragment
		37724, -- Handler's Arm Strap
		37726, -- King Dred's Helm

	},
	-- THE PROPHET THARON'JA
	{ boss=26632, -- The Prophet Tharon'ja
		37732, -- Spectral Seal of the Prophet
		37784, -- Keystone Great-Ring
		37788, -- Limb Regeneration Bracers
		37798, -- Overlook Handguards
		37733, -- Mojo Masked Crusher
		37734, -- Talisman of Troll Divinity
		37735, -- Ziggurat Imprinted Chestguard
		37791, -- Leggings of the Winged Serpent
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\The Violet Hold - Level 75-77"] = {
	dungeonmap=536,
	dungeon=220,
	-- QUEST: CONTAINMENT
	{ quest=29830, -- Containment
		44342, -- Tattooed Deerskin Leggings
		44343, -- Conferred Pantaloons
		44344, -- Labyrinthine Legguards
		44345, -- Dalaran Warden's Legplates

	},
	-- EREKEM
	{ boss=29315, -- Erekem
		43363, -- Screeching Cape
		43375, -- Trousers of the Arakkoa

	},
	-- MORAGG
	{ boss=29316, -- Moragg
		43382, -- Band of Eyes
		43387, -- Shoulderplates of the Beholder

	},
	-- ICHORON
	{ boss=29313, -- Ichoron
		35643, -- Spaulders of Ichoron
		35647, -- Handguards of Rapid Pursuit

	},
	-- XEVOZZ
	{ boss=29266, -- Xevozz
		35642, -- Riot Shield
		35644, -- Xevozz's Belt

	},
	-- LAVANTHOR
	{ boss=29312, -- Lavanthor
		35645, -- Prison Warden's Shotgun
		35646, -- Lava Burn Gloves

	},
	-- ZURAMAT THE OBLITERATOR
	{ boss=29314, -- Zuramat the Obliterator
		43353, -- Void Sentry Legplates
		43358, -- Pendant of Shadow Beams

	},
	-- CYANIGOSA
	{ boss=31134, -- Cyanigosa
		35651, -- Plate Claws of the Dragon
		35650, -- Boots of the Portal Guardian
		35649, -- Jailer's Baton
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\Violet Hold - Level 80 (Heroic)"] = {
	dungeonmap=536, heroic=1,
	dungeon=221,
	-- EREKEM
	{ boss=29315, -- Erekem
		43407, -- Stormstrike Mace
		43406, -- Cloak of the Gushing Wound
		43405, -- Sabatons of Erekem

	},
	-- MORAGG
	{ boss=29316, -- Moragg
		43408, -- Solitaire of Reflecting Beams
		43410, -- Moragg's Chestguard
		43409, -- Saliva Corroded Pike

	},
	-- ICHORON
	{ boss=29313, -- Ichoron
		43401, -- Water-Drenched Robe
		37862, -- Gauntlets of the Water Revenant
		37869, -- Globule Signet

	},
	-- XEVOZZ
	{ boss=29266, -- Xevozz
		37867, -- Footwraps of Teleportation
		37861, -- Necklace of Arcane Spheres
		37868, -- Girdle of the Ethereal

	},
	-- LAVANTHOR
	{ boss=29312, -- Lavanthor
		37870, -- Twin-Headed Boots
		37872, -- Lavanthor's Talisman
		37871, -- The Key

	},
	-- ZURAMAT THE OBLITERATOR
	{ boss=29314, -- Zuramat the Obliterator
		43403, -- Shroud of Darkness
		43402, -- The Obliterator Greaves
		43404, -- Zuramat's Necklace

	},
	-- CYANIGOSA
	{ boss=31134, -- Cyanigosa
		37883, -- Staff of Trickery
		37876, -- Cyanigosa's Leggings
		37874, -- Gauntlets of Capture
		43500, -- Bolstered Legplates
		37886, -- Handgrips of the Savage Emissary
		37873, -- Mark of the War Prisoner
		37875, -- Spaulders of the Violet Hold
		37884, -- Azure Cloth Bindings
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\Gundrak - Level 76-78"] = {
	dungeonmap=530,
	dungeon=216,
	-- QUEST: GAL'DARAH MUST PAY
	{ quest=29834, -- Quest - Gal'Darah Must Pay
		43164, -- Sly Mojo Sash
		43165, -- Strange Voodoo Belt
		43167, -- Ranger's Belt of the Fallen Empire
		43168, -- Clasp of the Fallen Demi-God

	},
	-- SLAD'RAN
	{ boss=29304, -- Slad'ran
		35584, -- Embroidered Gown of Zul'Drak
		35583, -- Witch Doctor's Wildstaff
		35585, -- Cannibal's Legguards

	},
	-- DRAKKARI COLOSSUS AND DRAKKARI ELEMENTAL
	{ boss=29573, -- Drakkari Elemental
		35590, -- Drakkari Hunting Bow
		35591, -- Shoulderguards of the Ice Troll
		35592, -- Hauberk of Totemic Mastery

	},
	-- MOORABI
	{ boss=29305, -- Moorabi
		35587, -- Frozen Scepter of Necromancy
		35589, -- Arcane Focal Signet
		35588, -- Forlorn Breastplate of War

	},
	-- GAL'DARAH
	{ boss=29306, -- Gal'darah
		43306, -- Gal'darah's Signet
		43309, -- Amulet of the Stampede
		43305, -- Shroud of Akali
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\Gundrak - Level 80 (Heroic)"] = {
	dungeonmap=530, heroic=1,
	dungeon=217,
	-- SLAD'RAN
	{ boss=29304, -- Slad'ran
		37627, -- Snake Den Spaulders
		37629, -- Slithering Slippers
		37628, -- Slad'ran's Coiled Cord
		37626, -- Wand of Sseratus

	},
	-- DRAKKARI COLOSSUS AND DRAKKARI ELEMENTAL
	{ boss=29573, -- Drakkari Elemental
		37637, -- Living Mojo Belt
		37634, -- Bracers of the Divine Elemental
		37636, -- Helm of Cheated Fate
		37635, -- Pauldrons of the Colossus

	},
	-- MOORABI
	{ boss=29305, -- Moorabi
		37631, -- Fist of the Deity
		37633, -- Ground Tremor Helm
		37632, -- Mojo Frenzy Greaves
		37630, -- Shroud of Moorabi

	},
	-- ECK THE FEROCIOUS
	{ boss=29932, -- Eck the Ferocious
		43311, -- Helmet of the Shrine
		43310, -- Engraved Chestplate of Eck
		43312, -- Gorloc Muddy Footwraps
		43313, -- Leggings of the Ruins Dweller

	},
	-- GAL'DARAH
	{ boss=29306, -- Gal'darah
		37642, -- Hemorrhaging Circle
		37645, -- Horn-Tipped Gauntlets
		37639, -- Grips of the Beast God
		37641, -- Arcane Flame Altar-Garb
		37643, -- Sash of Blood Removal
		37638, -- Offering of Sacrifice
		37640, -- Boots of Transformation
		37644, -- Gored Hide Legguards
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\Halls of Stone - Level 77-78"] = {
	dungeonmap=526,
	dungeon=208,
	-- QUEST: HALLS OF STONE
	{ quest=13207, -- Quest - Halls of Stone
		44370, -- Mantle of the Intrepid Explorer
		44371, -- Shoulderpads of the Adventurer
		44372, -- Spaulders of Lost Secrets
		44373, -- Pauldrons of Reconnaissance

	},
	-- MAIDEN OF GRIEF
	{ boss=27975, -- Maiden of Grief
		38613, -- Chain of Fiery Orbs
		38614, -- Embrace of Sorrow
		38611, -- Ringlet of Repose

	},
	-- KRYSTALLUS
	{ boss=27977, -- Krystallus
		35672, -- Hollow Geode Helm
		35670, -- Brann's Lost Mining Helmet
		35673, -- Leggings of Burning Gleam

	},
	-- TRIBUNAL OF THE AGES
	{ special=" Defeat the _Tribunal of Ages_ encounter.", -- Tribunal Chest##190586
		35675, -- Linked Armor of the Sphere
		35676, -- Constellation Leggings
		35677, -- Cosmos Vestments

	},
	-- SJONNIR THE IRONSHAPER
	{ boss=27978, -- Sjonnir The Ironshaper
		35679, -- Static Cowl
		35678, -- Ironshaper's Legplates
		35680, -- Amulet of Wills
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\Halls of Stone - Level 80 (Heroic)"] = {
	dungeonmap=526, heroic=1,
	dungeon=213,
	-- MAIDEN OF GRIEF
	{ boss=27975, -- Maiden of Grief
		38617, -- Woeful Band
		38618, -- Hammer of Grief
		38616, -- Maiden's Girdle
		38615, -- Lightning-Charged Gloves

	},
	-- KRYSTALLUS
	{ boss=27977, -- Krystallus
		37652, -- Spaulders of Krystallus
		37650, -- Shardling Legguards
		37651, -- The Prospector's Prize
	},
	{ special=" Defeat the _Tribunal of Ages_ encounter.", -- Tribunal Chest##190586
		37653, -- Sword of Justice
		37655, -- Mantle of the Tribunal
		37656, -- Raging Construct Bands
		37654, -- Sabatons of the Ages

	},
	-- SJONNIR THE IRONSHAPER
	{ boss=27978, -- Sjonnir The Ironshaper
		37670, -- Sjonnir's Girdle
		37658, -- Sun-Emblazoned Chestplate
		37668, -- Bands of the Stoneforge
		37666, -- Boots of the Whirling Mist
		37657, -- Spark of Life
		37669, -- Leggings of the Stone Halls
		37667, -- The Fleshshaper
		37660, -- Forge Ember
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\Hall of Lightning - Level 80"] = {
	dungeonmap=529,
	dungeon=207,
	-- QUEST: DIAMETRICALLY OPPOSED
	{ quest=29860, -- Quest - Diametrically Opposed
		43193, -- Lightning Infused Mantle
		43194, -- Charred Leather Shoulderguards
		43195, -- Stormforged Shoulders
		43197, -- Pauldrons of Extinguished Hatred
		43198, -- Mantle of Volkhan

	},
	-- QUEST: WHATEVER IT TAKES!
	{ quest=29861, -- Quest - Whatever It Takes!
		42844, -- Robes of Lightning
		43207, -- Hardened Tongue Tunic
		43208, -- Lightningbringer's Hauberk
		43209, -- Breastplate of Jagged Stone

	},
	-- GENERAL BJARNGRIM
	{ boss=28586, -- General Bjarngrim
		36981, -- Hardened Vrykul Throwing Axe
		36980, -- Hewn Sparring Quarterstaff
		36982, -- Mantle of Electrical Charges
		36979, -- Bjarngrim Family Signet

	},
	-- VOLKHAN
	{ boss=28587, -- Volkhan
		36983, -- Cape of Seething Steam
		36984, -- Eternally Folded Blade
		36986, -- Kilt of Molten Golems
		36985, -- Volkhan's Hood

	},
	-- IONAR
	{ boss=28546, -- Ionar
		39535, -- Ionar's Girdle
		39657, -- Tornado Cuffs
		39536, -- Thundercloud Grasps
		39534, -- Pauldrons of the Lightning Revenant
	},
	{ boss=28923, -- Loken
		36988, -- Chaotic Spiral Amulet
		36996, -- Hood of the Furtive Assassin
		36992, -- Leather-Braced Chain Leggings
		36994, -- Projectile Activator
		36989, -- Ancient Measuring Rod
		36995, -- Fists of Loken
		36991, -- Raiments of the Titans
		36993, -- Seal of the Pantheon
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\Halls of Lightning - Level 80 (Heroic)"] = {
	dungeonmap=529, heroic=1,
	dungeon=212,
	{ boss=28586, -- General Bjarngrim
		37818, -- Patroller's War-Kilt
		37814, -- Iron Dwarf Smith Pauldrons
		37826, -- The General's Steel Girdle
		37825, -- Traditionally Dyed Handguards

	},
	-- VOLKHAN
	{ boss=28587, -- Volkhan
		37842, -- Belt of Vivacity
		37840, -- Shroud of Reverberation
		37843, -- Giant-Hair Woven Gloves
		37841, -- Slag Footguards

	},
	-- IONAR
	{ boss=28546, -- Ionar
		37847, -- Skywall Striders
		37846, -- Charged-Bolt Grips
		37845, -- Cord of Swirling Winds
		37844, -- Winged Talisman
	},
	{ boss=28923, -- Loken
		37848, -- Lightning Giant Staff
		37852, -- Colossal Skull-Clad Cleaver
		37851, -- Ornate Woolen Stola
		37849, -- Planetary Helm
		37853, -- Advanced Tooled-Leather Bands
		37855, -- Mail Girdle of the Audient Earth
		37854, -- Woven Bracae Leggings
		37850, -- Flowing Sash of Order
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\The Oculus - Level 80"] = {
	dungeonmap=528,
	dungeon=206,
	-- QUEST: A WING AND A PRAYER
	{ quest=13128, -- Quest - A Wing and a Prayer
		44338, -- Cuffs of Gratitude
		44339, -- Soaring Wristwraps
		44340, -- Bindings of Raelorasz
		44341, -- Bracers of Reverence

	},
	-- QUEST: THE STRUGGLE PERSISTS
	{ quest=13124, -- Quest - The Struggle Persists
		44334, -- Ring of Temerity
		44336, -- Flourishing Band
		44335, -- Band of Motivation
		44337, -- Staunch Signet

	},
	-- DRAKOS THE INTERROGATOR
	{ boss=27654, -- Drakos the Interrogator
		36944, -- Lifeblade of Belgaristrasz
		36943, -- Timeless Beads of Eternos
		36946, -- Runic Cage Chestpiece
		36945, -- Verdisa's Cuffs of Dreaming

	},
	-- VAROS CLOUDSTRIDER
	{ boss=27447, -- Varos Cloudstrider
		36949, -- Gloves of the Azure-Lord
		36948, -- Horned Helm of Varos
		36950, -- Wing Commander's Breastplate
		36947, -- Centrifuge Core Cloak

	},
	-- MAGE-LORD UROM
	{ boss=27655, -- Mage-Lord Urom
		36952, -- Girdle of Obscuring
		36951, -- Sidestepping Handguards
		36954, -- The Conjurer's Slippers
		36953, -- Spaulders of Skillful Maneuvers

	},
	-- LEY-GUARDIAN EREGOS
	{ boss=27656, -- Ley-Guardian Eregos
		36969, -- Helm of the Ley-Guardian
		36974, -- Eregos' Ornamented Chestguard
		36975, -- Malygos' Favor
		36962, -- Wyrmclaw Battleaxe
		36961, -- Dragonflight Great-Ring
		36971, -- Headguard of Westrift
		36972, -- Tome of Arcane Phenomena
		36973, -- Vestments of the Scholar
		37744, -- Horrorblood Treads
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\Oculus - Level 80 (Heroic)"] = {
	dungeonmap=528, heroic=1,
	dungeon=211,
	-- DRAKOS THE INTERROGATOR
	{ boss=27654, -- Drakos the Interrogator
		37256, -- Scaled Armor of Drakos
		37258, -- Drakewing Raiments
		37257, -- Band of Torture
		37255, -- The Interrogator

	},
	-- VAROS CLOUDSTRIDER
	{ boss=27447, -- Varos Cloudstrider
		37262, -- Azure Ringmail Leggings
		37261, -- Gloves of Radiant Light
		37260, -- Cloudstrider's Waraxe
		37263, -- Legplates of the Oculus Guardian

	},
	-- MAGE-LORD UROM
	{ boss=27655, -- Mage-Lord Urom
		37288, -- Catalytic Bands
		37195, -- Band of Enchanted Growth
		37289, -- Sash of Phantasmal Images
		37264, -- Pendulum of Telluric Currents

	},
	-- LEY-GUARDIAN EREGOS
	{ boss=27656, -- Ley-Guardian Eregos
		37360, -- Staff of Draconic Combat
		37291, -- Ancient Dragon Spirit Cape
		37292, -- Ley-Guardian's Legguards
		37361, -- Cuffs of Winged Levitation
		37363, -- Gauntlets of Dragon Wrath
		37362, -- Leggings of Protective Auras
		37294, -- Crown of Unbridled Magic
		37293, -- Mask of the Watcher
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\The Culling of Stratholme - Level 80"] = {
	dungeonmap=521,
	dungeon=209,
	-- QUEST: A ROYAL ESCORT
	{ quest=13151, -- Quest - A Royal Escort
		44396, -- Gloves of the Time Guardian
		44397, -- Handwraps of Preserved History
		44398, -- Grips of Chronological Events
		44399, -- Gauntlets of The Culling

	},
	-- MEATHOOK
	{ boss=26529, -- Meathook
		37083, -- Kilt of Sewn Flesh
		37079, -- Enchanted Wire Stitching
		37081, -- Meathook's Slicer
		37082, -- Slaughterhouse Sabatons

	},
	-- SALRAMM THE FLESHCRASFTER
	{ boss=26530, -- Salramm the Fleshcrafter
		37088, -- Spiked Metal Cilice
		37084, -- Flowing Cloak of Command
		37086, -- Tome of Salramm
		37095, -- Waistband of the Thuzadin

	},
	-- CHRONO-LORD EPOCH
	{ boss=26532, -- Chrono-Lord Epoch
		37096, -- Necklace of the Chrono-Lord
		37106, -- Ouroboros Belt
		37105, -- Treads of Altered History
		37099, -- Sempiternal Staff

	},
	-- MAL'GANIS
	{ boss=26533, -- Mal'Ganis
		37108, -- Dreadlord's Blade
		37112, -- Beguiling Scepter
		37109, -- Discarded Silver Hand Spaulders
		37114, -- Gloves of Northern Lordaeron
		37107, -- Leeka's Shield
		37111, -- Soul Preserver
		37110, -- Gauntlets of Dark Conversion
		37113, -- Demonic Fabric Bands
	}
}

ZygorGuidesViewer.ItemScore.Items["WOTLK Dungeons\\The Culling of Stratholme - Level 80 (Heroic)"] = {
	dungeonmap=521, heroic=1,
	dungeon=210,
	-- MEATHOOK
	{ boss=26529, -- Meathook
		37678, -- Bile-Cured Gloves
		37675, -- Legplates of Steel Implants
		37679, -- Spaulders of the Abomination
		37680, -- Belt of Unified Souls

	},
	-- SALRAMM THE FLESHCRASFTER
	{ boss=26530, -- Salramm the Fleshcrafter
		37682, -- Bindings of Dark Will
		37681, -- Gavel of the Fleshcrafter
		37683, -- Necromancer's Amulet
		37684, -- Forgotten Shadow Hood

	},
	-- CHRONO-LORD EPOCH
	{ boss=26532, -- Chrono-Lord Epoch
		37688, -- Legplates of the Infinite Drakonid
		37685, -- Mobius Band
		37686, -- Cracked Epoch Grasps
		37687, -- Gloves of Distorted Time

	},
	-- MAL'GANIS
	{ boss=26533, -- Mal'Ganis
		37691, -- Mantle of Deceit
		37692, -- Pierce's Pistol
		37690, -- Pauldrons of Destiny
		37689, -- Pendant of the Nathrezim
		37693, -- Greed
		43085, -- Royal Crest of Lordaeron
		37694, -- Band of Guile
		37696, -- Plague-Infected Bracers
		37695, -- Legguards of Nature's Power
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Blackrock Depths - Level 50"] = {
	dungeonmap=704,
	dungeon=30, -- that's Detention Block. Upper City should be separate! TODO
	--LORD ROCCOR
	{ boss=9025, -- Lord Roccor
		22234, -- Mantle of Lost Hope
		11631, -- Stoneshell Guard
		11632, -- Earthslag Shoulders
		22397, -- Idol of Ferocity
	},
	--BAEL'GAR
	{ boss=9016, -- Bael'Gar
		11805, -- Rubidium Hammer
		11803, -- Force of Magma
		11807, -- Sash of the Burning Heart
		11802, -- Lavacrest Leggings
	},
	--HOUNDMASTER GREBMAR
	{ boss=9319, -- Houndmaster Grebmar
		11627, -- Fleetfoot Greaves
		11623, -- Spritecaster Cape
		11629, -- Houndmaster's Rifle
		11628, -- Houndmaster's Bow
	},
	--HIGH INTERROGATOR GERSTAHN
	{ boss=9018, -- High Interrogator Gerstahn
		11625, -- Enthralled Sphere
		11624, -- Kentic Amice
		11626, -- Blackveil Cape
		22240, -- Greaves of Withering Despair
	},
	--PYROMANCER LOREGRAIN
	{ boss=9024, -- Pyromancer Loregrain
		11748, -- Pyric Caduceus
		11747, -- Flamestrider Robes
		11750, -- Kindling Stave
		11749, -- Searingscale Leggings
	},
	--GENERAL ANGERFORGE
	{ boss=9033, -- General Angerforge
		11810, -- Force of Will
		11817, -- Lord General's Sword
		11816, -- Angerforge's Battle Axe
		11820, -- Royal Decorated Armor
		11821, -- Warstrife Leggings
	},
	--GOLEM LORD ARGELMACH
	{ boss=8983, -- Golem Lord Argelmach
		11669, -- Naglering
		11822, -- Omnicast Boots
		11823, -- Luminary Kilt
		11819, -- Second Wind
	},
	--HURLEY BLACKBREATH
	{ boss=9537, -- Hurley Blackbreath
		18043, -- Coal Miner Boots
		18044, -- Hurley's Tankard
		22275, -- Firemoss Boots
		11735, -- Ragefury Eyepatch
	},
	--PLUGGER SPAZZRING
	{ boss=9499, -- Plugger Spazzring
		12793, -- Mixologist's Tunic
		12791, -- Barman Shanker
	},
	--PHALANX
	{ boss=9502, -- Phalanx
		11745, -- Fists of Phalanx
		11744, -- Bloodfist
		22212, -- Golem Fitted Pauldrons
	},
	--LORD INCENDIUS
	{ boss=9017, -- Lord Incendius
		11766, -- Flameweave Cuffs
		11767, -- Emberplate Armguards
		11764, -- Cinderhide Armsplints
		11765, -- Pyremail Wristguards
	},
	--FINEOUS DARKVIRE
	{ boss=9056, -- Fineous Darkvire
		11842, -- Lead Surveyor's Mantle
		11841, -- Senior Designer's Pantaloons
		22223, -- Foreman's Head Protector
		11839, -- Chief Architect's Monocle
	},
	--WARDER STILGISS
	{ boss=9041, -- Warder Stilgiss
		11784, -- Arbiter's Blade
		11783, -- Chillsteel Girdle
		11782, -- Boreal Mantle
		22241, -- Dark Warder's Pauldrons
	},
	--VEREK
	{ boss=9042, -- Verek
		22242, -- Verek's Leash
		11755, -- Verek's Collar
	},
	--AMBASSADOR FLAMELASH
	{ boss=9156, -- Ambassador Flamelash
		11814, -- Molten Fists
		11809, -- Flame Wrath
		11832, -- Burst of Knowledge
		11812, -- Cape of the Fire Salamander
		11808, -- Circle of Flame
	},
	--MAGMUS
	{ boss=9938, -- Magmus
		22208, -- Lavastone Hammer
		11746, -- Golem Skull Helm
		22400, -- Libram of Truth
		11935, -- Magmus Stone
		22395, -- Totem of Rage
	},
	--PRINCESS MOIRA BRONZEBEARD
	{ boss=8929, -- Princess Moira Bronzebeard
		12557, -- Ebonsteel Spaulders
		12554, -- Hands of the Exalted Herald
		12553, -- Swiftwalker Boots
		12556, -- High Priestess Boots
	},
	--EMPEROR DAGRAN THAURISSAN
	{ boss=9019, -- Emperor Dagran Thaurissan
		11932, -- Guiding Stave of Wisdom
		11931, -- Dreadforge Retaliator
		11934, -- Emperor's Seal
		11933, -- Imperial Jewel
		11924, -- Robes of the Royal Crown
		11930, -- The Emperor's New Cape
		11815, -- Hand of Justice
		22207, -- Sash of the Grand Hunt
		11928, -- Thaurissan's Royal Scepter
		22204, -- Wristguards of Renown
		11684, -- Ironfoe
	}
}

ZygorGuidesViewer.ItemScore.Items["Burning Crusade Dungeons\\Hellfire Ramparts - Level 60"] = {
	dungeonmap=797,
	dungeon=136,
	-- OMOR THE UNSCARRED
	{ boss=17308, -- Omor the Unscarred
		24090, -- Bloodstained Ravager Gauntlets
		24069, -- Crystalfire Staff
		24073, -- Garrote-String Necklace
		24094, -- Heart Fire Warhammer
		24096, -- Heartblood Prayer Beads
		24091, -- Tenacious Defender
	},
	-- VAZRUDEN
	{ boss=17537, -- Vazruden
		24045, -- Band of Renewal
		24044, -- Hellreaver
		24064, -- Ironsole Clompers
		24046, -- Kilt of Rolling Thunders
		24083, -- Lifegiver Britches
		24151, -- Mok'Nathal Clan Ring
		24150, -- Mok'Nathal Wildercloak
		24063, -- Shifting Sash of Midnight
		24155, -- Ursol's Claw
		24154, -- Witching Band
	},
	-- WATCHKEEPER GARGOLMAR
	{ boss=17306, -- Watchkeeper Gargolmar
		24023, -- Bracers of Finesse
		24021, -- Light-Touched Breastplate
		24024, -- Pauldrons of Arcane Rage
		24022, -- Scale Leggings of the Skirmisher
		24020, -- Shadowrend Longblade
	},
	-- QUEST: WAR ON THE RAMPARTS
	{quest=29527, -- Quest: War on the Ramparts
		25716, -- Handguards of Precision
		25715, -- Jade Warrior Pauldrons
		25718, -- Mantle of Magical Might
		25717, -- Sure-Step Boots
	}
}

ZygorGuidesViewer.ItemScore.Items["Burning Crusade Dungeons\\Hellfire Ramparts (Heroic) - Level 70"] = {
	dungeonmap=797, heroic=1,
	dungeon=188,
	-- OMOR THE UNSCARRED
	{ boss=17308, -- Omor the Unscarred
		27895, -- Band of Many Prisms
		27462, -- Crimson Bracers of Gloom
		27906, -- Crimsonforge Breastplate
		27477, -- Faol's Signet of Cleansing
		27478, -- Girdle of the Blasted Reaches
		27466, -- Headdress of Alacrity
		27539, -- Justice Bearer's Pauldrons
		27465, -- Mana-Etched Gloves
		27464, -- Omor's Unyielding Will
		27467, -- Silent-Strider Kneeboots
		27463, -- Terror Flame Dagger
		27476, -- Truncheon of Five Hells
			},
	-- VAZRUDEN
	{ boss=17537, -- Vazruden
		29346, -- Feltooth Eviscerator
		29238, -- Lion's Heart Girdle
		29264, -- Tree-Mender's Belt
		32077, -- Wrath Infused Gauntlets
		27453, -- Averinn's Ring of Slaying
		27461, -- Chestguard of the Prowler
		27455, -- Irondrake Faceguard
		27457, -- Life Bearer's Gauntlets
		27452, -- Light Scribe Bands
		27458, -- Oceansong Kilt
		27456, -- Raiments of Nature's Breath
		27460, -- Reavers' Ring
		27459, -- Vambraces of Daring
		27454, -- Volcanic Pauldrons
	},
	-- WATCHKEEPER GARGOLMAR
	{ boss=17306, -- Watchkeeper Gargolmar
		27449, -- Blood Knight Defender
		27451, -- Boots of the Darkwalker
		27447, -- Bracers of Just Rewards
		27448, -- Cloak of the Everliving
		27450, -- Wild Stalker Boots
	}
}

ZygorGuidesViewer.ItemScore.Items["Burning Crusade Dungeons\\The Blood Furnace - Level 62"] = {
	dungeonmap=725,
	dungeon=137,
	-- THE MAKER
	{ boss=17381, -- The Maker
		24388, -- Girdle of the Gale Storm
		24386, -- Libram of Saints Departed
		24385, -- Pendant of Battle-Lust
		24384, -- Diamond-Core Sledgemace
		24387, -- Ironblade Gauntlets
	},
	-- BROGGOK
	{ boss=17380, -- Broggok
		24393, -- Bloody Surgeon's Mitts
		24391, -- Kilt of the Night Strider
		24389, -- Legion Blunderbuss
		24392, -- Arcing Bracers
		24390, -- Auslese's Light Channeler
	},
	-- KELI'DAN THE BREAKER
	{ boss=17377, -- Keli'dan the Breaker
		24397, -- Raiments of Divine Authority
		24395, -- Mindfire Waistband
		24396, -- Vest of Vengeance
		24398, -- Mantle of the Dusk-Dweller
		24394, -- Warsong Howling Axe
	},
	-- QUEST: HEART OF RAGE
	{ quest=29536, -- Quest: Heart of Rage
		25714, -- Crimson Pendant of Clarity
		25713, -- Holy Healing Band
		25712, -- Perfectly Balanced Cape
	},
	-- QUEST: MIND THE GAP
	{ quest=29537, -- Quest: Mind The Gap
		25701, -- Breastplate of Retribution
		25702, -- Scaled Legs of Ruination
		25710, -- Moonkin Headdress
		25711, -- Deadly Borer Leggings
	}
}

ZygorGuidesViewer.ItemScore.Items["Burning Crusade Dungeons\\The Blood Furnace (Heroic) - Level 70"] = {
	dungeonmap=725, heroic=1,
	dungeon=187,
	-- THE MAKER
	{ boss=17381, -- The Maker
		27488, -- Mage-Collar of the Firestorm
		27487, -- Bloodlord Legplates
		27485, -- Embroidered Cape of Mysteries
		27484, -- Libram of Avengement
		27483, -- Moon-Touched Bands
	},
	-- BROGGOK
	{ boss=17380, -- Broggok
		27492, -- Moonchild Leggings
		27490, -- Firebrand Battleaxe
		27491, -- Signet of Repose
		27848, -- Embroidered Spellpyre Boots
		27489, -- Virtue Bearer's Vambraces

	-- KELI'DAN THE BREAKER
		},
	{ boss=17377, -- Keli'dan the Breaker
		27788, -- Bloodsworn Warboots
		28121, -- Icon of Unyielding Courage
		27506, -- Robe of Effervescent Light
		27495, -- Soldier's Dog Tags
		27507, -- Adamantine Repeater
		27497, -- Doomplate Gauntlets
		27514, -- Leggings of the Unrepentant
		27505, -- Ruby Helm of the Just
		27512, -- The Willbreaker
		28264, -- Wastewalker Tunic
		27522, -- World's End Bracers
		27494, -- Emerald Eye Bracer
		29347, -- Talisman of the Breaker
		29239, -- Eaglecrest Warboots
		29245, -- Wave-Crest Striders
		32080, -- Mantle of Shadowy Embrace
	}
}

ZygorGuidesViewer.ItemScore.Items["Wrath of the Lich King Dungeons\\Shattered Halls - Level 70"] = {
	dungeonmap=710,
	dungeon=138,
	-- GRAND WARLOCK NETHEKURSE
	{ boss=16807, -- Grand Warlock Nethekurse
		27520, -- Greathelm of the Unbreakable
		27518, -- Ivory Idol of the Moongoddess
		27521, -- Telaari Hunting Girdle
		27517, -- Bands of Nethekurse

	-- WARBRINGER O'MROGG
		},
	{ boss=16809, -- Warbringer O'mrogg
		27525, -- Jeweled Boots of Sanctification
		27526, -- Skyfire Hawk-Bow
		27524, -- Firemaul of Destruction
		27868, -- Runesong Dagger
		27802, -- Tidefury Shoulderguards
	},
	-- WARCHIEF KARGATH BLADEFIST
	{ boss=16808, -- Warchief Kargath Bladefist
		27528, -- Gauntlets of Desolation
		27537, -- Gloves of Oblivion
		27536, -- Hallowed Handwraps
		27534, -- Hortus' Seal of Brilliance
		27540, -- Nexus Torch
		27474, -- Beast Lord Handguards
		27529, -- Figurine of the Colossus
		27527, -- Greaves of the Shatterer
		27533, -- Demonblood Eviscerator
		27535, -- Gauntlets of the Righteous
		27538, -- Lightsworn Hammer
		27531, -- Wastewalker Gloves
	}
}

ZygorGuidesViewer.ItemScore.Items["Wrath of the Lich King Dungeons\\Shattered Halls (Heroic) - Level 70"] = {
	dungeonmap=710, heroic=1,
	dungeon=189,
	-- GRAND WARLOCK NETHEKURSE
	{ boss=16807, -- Grand Warlock Nethekurse
		27520, -- Greathelm of the Unbreakable
		27518, -- Ivory Idol of the Moongoddess
		27521, -- Telaari Hunting Girdle
		27517, -- Bands of Nethekurse
	},
	-- WARBRINGER O'MROGG
	{ boss=16809, -- Warbringer O'mrogg
		27525, -- Jeweled Boots of Sanctification
		27526, -- Skyfire Hawk-Bow
		27524, -- Firemaul of Destruction
		27868, -- Runesong Dagger
		27802, -- Tidefury Shoulderguards
	},
	-- BLOOD GUARD PORUNG
	{ boss=20923, -- Blood Guard Porung
		30707, -- Nimble-Foot Treads
		30709, -- Pantaloons of Flaming Wrath
		30705, -- Spaulders of Slaughter
		30708, -- Belt of Flowing Thought
		30710, -- Blood Guard's Necklace of Ferocity
	},
	-- WARCHIEF KARGATH BLADEFIST
	{ boss=16808, -- Warchief Kargath Bladefist
		27528, -- Gauntlets of Desolation
		27537, -- Gloves of Oblivion
		27536, -- Hallowed Handwraps
		27534, -- Hortus' Seal of Brilliance
		27540, -- Nexus Torch
		27474, -- Beast Lord Handguards
		27529, -- Figurine of the Colossus
		27527, -- Greaves of the Shatterer
		27533, -- Demonblood Eviscerator
		27535, -- Gauntlets of the Righteous
		27538, -- Lightsworn Hammer
		27531, -- Wastewalker Gloves
	},
	{ boss=16808, -- Warchief Kargath Bladefist
		29255, -- Bands of Rarefied Magic
		29263, -- Forestheart Bracers
		29254, -- Boots of the Righteous Path
		29348, -- The Bladefist
	}
}

ZygorGuidesViewer.ItemScore.Items["Wrath of the Lich King Dungeons\\The Utgarde Pinnacle - Level 80"] = {
	dungeonmap=524,
	dungeon=203,
	-- QUEST: JUNK IN MY TRUNK
	{ quest=13131, -- Quest - Junk In My Trunk
		44404, -- Bauble-Woven Gown
		44405, -- Exotic Leather Tunic
		44407, -- Silver-Plated Battlechest
		44406, -- Gilded Ringmail Hauberk

	},
	-- QUEST: VENGEANCE BE MINE!
	{ quest=13132, -- Quest - Vengeance Be Mine!
		44408, -- Cowl of the Vindictive Captain
		44409, -- Headguard of Retaliation
		44410, -- Helmet of Just Retribution
		44412, -- Faceguard of Punishment
		44411, -- Platehelm of Irate Revenge

	},
	-- SVALA SORROWGRAVE
	{ boss=26668, -- Svala Sorrowgrave
		37043, -- Tear-Linked Gauntlets
		37040, -- Svala's Bloodied Shackles
		37038, -- Brazier Igniter
		37037, -- Ritualistic Athame

	},
	-- GORTOK PALEHOOF
	{ boss=26687, -- Gortok Palehoof
		37048, -- Shroud of Resurrection
		37050, -- Trophy Gatherer
		37052, -- Reanimated Armor
		37051, -- Seal of Valgarde

	},
	-- SKADI THE RUTHLESS
	{ boss=26693, -- Skadi the Ruthless
		37057, -- Drake Rider's Tunic
		37055, -- Silken Amice of the Ymirjar
		37053, -- Amulet of Deflected Blows
		37056, -- Harpooner's Striders

	},
	-- KING YMIRON
	{ boss=26861, -- King Ymiron
		37058, -- Signet of Ranulf
		37066, -- Ancient Royal Legguards
		37061, -- Tor's Crest
		37064, -- Vestige of Haldor
		37062, -- Crown of Forgotten Kings
		37065, -- Ymiron's Blade
		37067, -- Ceremonial Pyre Mantle
		37060, -- Jeweled Coronation Sword
	}
}

ZygorGuidesViewer.ItemScore.Items["Wrath of the Lich King Dungeons\\Heroic Utgarde Pinnacle - Level 80"] = {
	dungeonmap=524, heroic=1,
	dungeon=205,
	{ boss=26668, -- Svala Sorrowgrave
		37367, -- Echoing Stompers
		37368, -- Silent Spectator Shoulderpads
		37369, -- Sorrowgrave's Breeches
		37370, -- Cuffs of the Trussed Hall

	},
	-- GORTOK PALEHOOF
	{ boss=26687, -- Gortok Palehoof
		37373, -- Massive Spaulders of the Jormungar
		37371, -- Ring of the Frenzied Wolvar
		37376, -- Ferocious Pauldrons of the Rhino
		37374, -- Ravenous Leggings of the Furbolg

	},
	-- SKADI THE RUTHLESS
	{ boss=26693, -- Skadi the Ruthless
		37389, -- Crenelation Leggings
		37377, -- Netherbreath Spellblade
		37379, -- Skadi's Iron Belt
		37384, -- Staff of Wayward Principles

	},
	-- KING YMIRON
	{ boss=26861, -- King Ymiron
		37408, -- Girdle of Bane
		37401, -- Red Sword of Courage
		37397, -- Gold Amulet of Kings
		37407, -- Sovereign's Belt
		37398, -- Mantle of Discarded Ways
		37390, -- Meteorite Whetstone
		37395, -- Ornamented Plate Regalia
		37409, -- Gilt-Edged Leather Gauntlets
	}
}

ZygorGuidesViewer.ItemScore.Items["Wrath of the Lich King Dungeons\\Trial of the Champion - Level 80"] = {
	dungeonmap=542,
	dungeon=245,
	{ special="CHAMPIONS OF THE ALLIANCE / HORDE",
		47170, -- Belt of Fierce Competition
		47173, -- Bindings of the Wicked
		47171, -- Legguards of Abandoned Fealty
		47175, -- Scale Boots of the Outlander
		47174, -- Binding of the Tranquil Glade
		47172, -- Helm of the Bested Gallant

	},
	-- EADRIC THE PURE
	{ boss=35119, -- Eadric the Pure
		47176, -- Breastplate of the Imperial Joust
		47213, -- Abyssal Rune
		47199, -- Greaves of the Grand Paladin
		47197, -- Gauntlets of the Stouthearted Crusader
		47177, -- Gloves of the Argent Fanatic
		47185, -- Leggings of the Haggard Apprentice
		47210, -- Mantle of Gnarled Overgrowth
		47201, -- Boots of Heartfelt Repentance
		47178, -- Carapace of Grim Visions
		47202, -- Leggings of Brazen Trespass
		47200, -- Signet of Purity
		47181, -- Belt of the Churning Blaze

	},
	-- ARGENT CONFESSOR PALETRESS
	{ boss=34928, -- Argent Confessor Paletress
		47219, -- Brilliant Hailstone Amulet
		47214, -- Banner of Victory
		47176, -- Breastplate of the Imperial Joust
		47177, -- Gloves of the Argent Fanatic
		47218, -- The Confessor's Binding
		47213, -- Abyssal Rune
		47181, -- Belt of the Churning Blaze
		47185, -- Leggings of the Haggard Apprentice
		47211, -- Wristguards of Ceaseless Regret
		47178, -- Carapace of Grim Visions
		47217, -- Gaze of the Somber Keeper
		47212, -- Mercy's Hold

	},
	-- THE BLACK KNIGHT
	{ boss=35451, -- The Black Knight
		47222, -- Uruka's Band of Zeal
		47229, -- Girdle of Arrogant Downfall
		47227, -- Girdle of the Pallid Knight
		47230, -- Handwraps of Surrendered Hope
		47215, -- Tears of the Vanquished
		47232, -- Drape of the Undefeated
		47220, -- Helm of the Violent Fray
		47228, -- Leggings of the Bloodless Knight
		47221, -- Shoulderpads of the Infamous Knave
		47216, -- The Black Heart
		47231, -- Belt of Merciless Cruelty
		47226, -- Mantle of Inconsolable Fear
	}
}

ZygorGuidesViewer.ItemScore.Items["Wrath of the Lich King Dungeons\\Heroic Trial of the Champion - Level 80"] = {
	dungeonmap=542, heroic=1,
	dungeon=249,
	{ special="CHAMPIONS OF THE ALLIANCE / HORDE",
		47493, -- Edge of Ruin
		47249, -- Leggings of the Snowy Bramble
		47243, -- Mark of the Relentless
		47244, -- Chestguard of the Ravenous Fiend
		47250, -- Pauldrons of the Deafening Gale
		47248, -- Treads of Dismal Fortune

	},
	-- EADRIC THE PURE
	{ boss=35119, -- Eadric the Pure
		47508, -- Aledar's Battlestar
		47494, -- Ancient Pendant of Arathor
		47497, -- Helm of the Crestfallen Challenger
		47500, -- Peacekeeper Blade
		47496, -- Armbands of the Wary Lookout
		47501, -- Kurisu's Indecision
		47495, -- Legplates of Relentless Onslaught
		47503, -- Legplates of the Argent Armistice
		47502, -- Majestic Silversmith Shoulderplates
		47504, -- Barkhide Treads
		47498, -- Gloves of Dismal Fortune
		47509, -- Mariel's Sorrow

	},
	-- ARGENT CONFESSOR PALETRESS
	{ boss=34928, -- Argent Confessor Paletress
		47494, -- Ancient Pendant of Arathor
		47497, -- Helm of the Crestfallen Challenger
		47510, -- Trueheart Girdle
		47522, -- Marrowstrike
		47500, -- Peacekeeper Blade
		47496, -- Armbands of the Wary Lookout
		47495, -- Legplates of Relentless Onslaught
		47245, -- Pauldrons of Concealed Loathing
		47511, -- Plated Greaves of Providence
		47514, -- Regal Aurous Shoulderplates
		47498, -- Gloves of Dismal Fortune
		47512, -- Sinner's Confession

	},
	-- THE BLACK KNIGHT
	{ boss=35451, -- The Black Knight
		47527, -- Embrace of Madness
		47561, -- Gloves of the Dark Exile
		47560, -- Boots of the Crackling Flame
		47563, -- Girdle of the Dauntless Conqueror
		47529, -- Mask of Distant Memory
		47562, -- Symbol of Redemption
		47567, -- Gauntlets of Revelation
		47564, -- Gaze of the Unknown
		47569, -- Spectral Kris
		47566, -- The Warlord's Depravity
		47565, -- Vambraces of Unholy Command
		49682, -- Black Knight's Rondel
		47568, -- True-Aim Long Rifle
	}
}

ZygorGuidesViewer.ItemScore.Items["Wrath of the Lich King Dungeons\\The Forge of Souls - Level 80"] = {
	dungeonmap=601,
	dungeon=251,
	-- BRONJAHM
	{ boss=36497, -- Bronjahm
		49783, -- Lucky Old Sun
		50317, -- Papa's New Bag
		49785, -- Bewildering Shoulderpads
		49788, -- Cold Sweat Grips
		49784, -- Minister's Number One Legplates
		49786, -- Robes of the Cheating Heart
		49787, -- Seven Stormy Mornings
		50316, -- Papa's Brand New Bag

	},
	-- DEVOURER OF SOULS
	{ boss=36502, -- Devourer of Souls
		49790, -- Blood Boil Lancet
		49789, -- Heartshiver
		49793, -- Tower of the Mouldering Corpse
		49799, -- Coil of Missing Gems
		49795, -- Sollerets of Suffering
		49798, -- Soul Screaming Boots
		49800, -- Spiteful Signet
		49797, -- Brace Guards of the Starless Night
		49796, -- Essence of Anger
		49794, -- Legplates of Frozen Granite
		49791, -- Lost Reliquary Chestguard
		49792, -- Accursed Crawling Cape
	}
}

ZygorGuidesViewer.ItemScore.Items["Wrath of the Lich King Dungeons\\Heroic Forge of Souls - Level 80"] = {
	dungeonmap=601, heroic=1,
	dungeon=252,
	-- BRONJAHM
	{ boss=36497, -- Bronjahm
		50317, -- Papa's New Bag
		50316, -- Papa's Brand New Bag
		50191, -- Nighttime
		50169, -- Papa's Brand New Knife
		49783, -- Lucky Old Sun
		50196, -- Love's Prisoner
		50194, -- Weeping Gauntlets
		50197, -- Eyes of Bewilderment
		50193, -- Very Fashionable Shoulders
		49784, -- Minister's Number One Legplates
		49785, -- Bewildering Shoulderpads
		49788, -- Cold Sweat Grips
		49786, -- Robes of the Cheating Heart
		49787, -- Seven Stormy Mornings

	},
	-- DEVOURER OF SOULS
	{ boss=36502, -- Devourer of Souls
		50203, -- Blood Weeper
		50210, -- Seethe
		50211, -- Arcane Loops of Anger
		50206, -- Frayed Scoundrel's Cap
		50212, -- Essence of Desire
		50214, -- Helm of the Spirit Shock
		50207, -- Black Spire Sabatons
		50209, -- Essence of Suffering
		50213, -- Mord'rethar Robes
		50198, -- Needle-Encrusted Scorpion
		50208, -- Pauldrons of the Souleater
		50215, -- Recovered Reliquary Boots
	}
}

ZygorGuidesViewer.ItemScore.Items["Wrath of the Lich King Dungeons\\The Pit of Saron - Level 80"] = {
	dungeonmap=602,
	dungeon=253,
	-- FORGEMASTER GARFROST
	{ boss=36494, -- Forgemaster Garfrost
		49801, -- Unspeakable Secret
		49802, -- Garfrost's Two-Ton Hammer
		49806, -- Flayer's Black Belt
		49805, -- Ice-Steeped Sandals
		49803, -- Ring of Carnelian and Bone
		49804, -- Polished Mirror Helm

	},
	-- ICK & KRICK
	{ boss=36476, -- Ick
		49807, -- Krick's Beetle Stabber
		49812, -- Purloined Wedding Ring
		49808, -- Bent Gold Belt
		49809, -- Wristguards of Subterranean Moss
		49811, -- Black Dragonskin Breeches
		49810, -- Scabrous Zombie Leather Belt

	},
	-- SCOURGELORD TYRANNUS
	{ boss=36658, -- Scourgelord Tyrannus
		49813, -- Rimebane Rifle
		49822, -- Rimewoven Silks
		49823, -- Cloak of the Fallen Cardinal
		49825, -- Palebone Robes
		49821, -- Protector of Frigid Souls
		49826, -- Shroud of Rime
		49824, -- Horns of the Spurned Val'kyr
		49817, -- Shaggy Wyrmleather Leggings
		49819, -- Skeleton Lord's Cranium
		49816, -- Scourgelord's Frigid Chestplate
		49820, -- Gondria's Spectral Bracer
		49818, -- Painfully Sharp Choker
	}
}

ZygorGuidesViewer.ItemScore.Items["Wrath of the Lich King Dungeons\\Heroic Pit of Saron - Level 80"] = {
	dungeonmap=602, heroic=1,
	dungeon=254,
	-- FORGEMASTER GARFROST
	{ boss=36494, -- Forgemaster Garfrost
		50227, -- Surgeon's Needle
		50229, -- Legguards of the Frosty Depths
		50234, -- Shoulderplates of Frozen Blood
		50228, -- Barbed Ymirheim Choker
		50230, -- Malykriss Vambraces
		50233, -- Spurned Val'kyr Shoulderguards

	},
	-- ICK & KRICK
	{ boss=36476, -- Ick
		50262, -- Felglacier Bolter
		50264, -- Chewed Leather Wristguards
		50265, -- Blackened Ghoul Skin Leggings
		50263, -- Braid of Salt and Fire
		50266, -- Ancient Polar Bear Hide
		50235, -- Ick's Rotting Thumb

	},
	-- SCOURGELORD TYRANNUS
	{ boss=36658, -- Scourgelord Tyrannus
		50273, -- Engraved Gargoyle Femur
		50268, -- Rimefang's Claw
		50267, -- Tyrannical Beheader
		50285, -- Icebound Bronze Cuirass
		50283, -- Mudslide Boots
		50284, -- Rusty Frozen Fingerguards
		50259, -- Nevermelting Ice Crystal
		50286, -- Prelate's Snowshoes
		50271, -- Band of Stained Souls
		50270, -- Belt of Rotted Fingernails
		50269, -- Fleshwerk Leggings
		50272, -- Frost Wyrm Ribcage
	}
}

ZygorGuidesViewer.ItemScore.Items["Wrath of the Lich King Dungeons\\The Halls of Reflection - Level 80"] = {
	dungeonmap=603,
	dungeon=255,
	-- FALRIC
	{ boss=38112, -- Falric
		49827, -- Ghoulslicer
		49831, -- Muddied Boots of Brill
		49829, -- Valonforth's Tarnished Pauldrons
		49832, -- Eerie Runeblade Polisher
		49828, -- Marwyn's Macabre Fingertips
		49830, -- Fallen Sentry's Hood

	},
	-- MARWYN
	{ boss=38113, -- Marwyn
		49833, -- Splintered Icecrown Parapet
		49836, -- Frostsworn Bone Leggings
		49838, -- Carpal Tunnelers
		49837, -- Mitts of Burning Hail
		49834, -- Frayed Abomination Stitching Shoulders
		49835, -- Splintered Door of the Citadel
		49832, -- Eerie Runeblade Polisher

	-- WRATH OF THE LICH KING
		49845, -- Bone Golem Scapula
		49840, -- Hate-Forged Cleaver
		49839, -- Mourning Malice
		49846, -- Chilled Heart of the Glacier
		49844, -- Crypt Fiend Slayer
		49848, -- Grim Lasher Shoulderguards
		49841, -- Blackened Geist Ribs
		49851, -- Greathelm of the Silver Hand
		49847, -- Legguards of Untimely Demise
		49849, -- Tattered Glacial-Woven Hood
		49843, -- Crystalline Citadel Gauntlets
		49842, -- Tapestry of the Frozen Throne
	}
}

ZygorGuidesViewer.ItemScore.Items["Wrath of the Lich King Dungeons\\Heroic Halls of Reflection - Level 80"] = {
	dungeonmap=603, heroic=1,
	dungeon=256,
	-- FALRIC
	{ boss=38112, -- Falric
		50290, -- Falric's Wrist-Chopper
		50291, -- Soulsplinter
		50292, -- Bracer of Worn Molars
		50294, -- Chestpiece of High Treason
		50293, -- Spaulders of Black Betrayal
		50295, -- Spiked Toestompers

	},
	-- MARWYN
	{ boss=38113, -- Marwyn
		50296, -- Orca-Hunter's Harpoon
		50299, -- Suspiciously Soft Gloves
		50260, -- Ephemeral Snowflake
		50298, -- Sightless Crown of Ulmaas
		50300, -- Choking Hauberk
		50297, -- Frostsworn Bone Chestpiece

	-- WRATH OF THE LICH KING
		50303, -- Black Icicle
		50302, -- Liar's Tongue
		50311, -- Second Helm of the Executioner
		50312, -- Chestguard of Broken Branches
		50309, -- Shriveled Heart
		50310, -- Fossilized Ammonite Choker
		50313, -- Oath of Empress Zoe
		50314, -- Strip of Remorse
		50308, -- Blighted Leather Footpads
		50305, -- Grinning Skull Boots
		50306, -- The Lady's Promise
		50304, -- Hoarfrost Gauntlets
	}
}

ZygorGuidesViewer.ItemScore.Items["Burning Crusade Dungeons\\The Mechanar - Level 80"] = {
	dungeonmap=730,
	dungeon=172,
	-- QUEST: HOW TO BREAK INTO THE ARCATRAZ
	{ quest=10704, -- Quest - How To Break Into The Arcatraz
		31465, -- Sha'tari Anchorite's Cloak
		31461, -- A'dal's Gift
		31464, -- Naaru Belt of Precision
		31462, -- Shattrath's Champion Belt
		31460, -- Sha'tari Vindicator's Waistguard

	-- MECHANO-LORD CAPACITUS
		},
	{ boss=19219, -- Mechano-Lord Capacitus
		28253, -- Plasma Rat's Hyper-Scythe
		28255, -- Lunar-Claw Pauldrons
		28254, -- Warp Engineer's Prismatic Chain
		28256, -- Thoriumweave Cloak
		28257, -- Hammer of the Penitent

	-- GATEWATCHER GYRO-KILL
		},
	{ boss=19218, -- Gatewatcher Gyro-Kill
		28249, -- Capacitus' Cloak of Calibration
		28252, -- Bloodfyre Robes of Annihilation
		28251, -- Boots of the Glade-Keeper
		28248, -- Totem of the Void
		28250, -- Vestia's Pauldrons of Inner Grace

	},
	-- NETHERMANCER SEPETHREA
	{ boss=19221, -- Nethermancer Sepethrea
		28259, -- Cosmic Lifeband
		28262, -- Jade-Skull Breastplate
		28260, -- Manual of the Nethermancer
		28258, -- Nethershrike
		28263, -- Stellaris

	},
	-- PATHALEON THE CALCULATOR
	{ boss=19220, -- Pathaleon the Calculator
		28202, -- Moonglade Robe
		28204, -- Tunic of Assassination
		28288, -- Abacus of Violent Odds
		28275, -- Beast Lord Helm
		28278, -- Incanter's Cowl
		28266, -- Molten Earth Kilt
		28286, -- Telescopic Sharprifle
		28269, -- Baba's Cloak of Arcanistry
		28267, -- Edge of the Cosmos
		27899, -- Mana Wrath
		28265, -- Dath'Remar's Ring of Defense
		28285, -- Helm of the Righteous
	}
}

ZygorGuidesViewer.ItemScore.Items["Burning Crusade Dungeons\\Heroic Mechanar  - Level 80"] = {
	dungeonmap=730, heroic=1,
	dungeon=192,
	-- QUEST: HOW TO BREAK INTO THE ARCATRAZ
	{ quest=10704, -- Quest - How To Break Into The Arcatraz
		31465, -- Sha'tari Anchorite's Cloak
		31461, -- A'dal's Gift
		31464, -- Naaru Belt of Precision
		31462, -- Shattrath's Champion Belt
		31460, -- Sha'tari Vindicator's Waistguard
	},
	-- MECHANO-LORD CAPACITUS
	{ boss=19219, -- Mechano-Lord Capacitus
		28253, -- Plasma Rat's Hyper-Scythe
		28255, -- Lunar-Claw Pauldrons
		28254, -- Warp Engineer's Prismatic Chain
		28256, -- Thoriumweave Cloak
		28257, -- Hammer of the Penitent
	},
	-- GATEWATCHER GYRO-KILL
	{ boss=19218, -- Gatewatcher Gyro-Kill
		28249, -- Capacitus' Cloak of Calibration
		28252, -- Bloodfyre Robes of Annihilation
		28251, -- Boots of the Glade-Keeper
		28248, -- Totem of the Void
		28250, -- Vestia's Pauldrons of Inner Grace

	},
	-- NETHERMANCER SEPETHREA
	{ boss=19221, -- Nethermancer Sepethrea
		28259, -- Cosmic Lifeband
		28262, -- Jade-Skull Breastplate
		28260, -- Manual of the Nethermancer
		28258, -- Nethershrike
		28263, -- Stellaris
		30564, -- Veiled Tanzanite
		30566, -- Defender's Tanzanite
		30565, -- Jagged Chrysoprase

	},
	-- PATHALEON THE CALCULATOR
	{ boss=19220, -- Pathaleon the Calculator
		28202, -- Moonglade Robe
		28204, -- Tunic of Assassination
		28288, -- Abacus of Violent Odds
		28275, -- Beast Lord Helm
		28278, -- Incanter's Cowl
		28266, -- Molten Earth Kilt
		28286, -- Telescopic Sharprifle
		28269, -- Baba's Cloak of Arcanistry
		28267, -- Edge of the Cosmos
		27899, -- Mana Wrath
		28265, -- Dath'Remar's Ring of Defense
		28285, -- Helm of the Righteous
		30533, -- Vanquisher's Legplates
		29251, -- Boots of the Pious
		32076, -- Handguards of the Steady
		29362, -- The Sun Eater
		30564, -- Veiled Tanzanite
		30565, -- Jagged Chrysoprase
		30566, -- Defender's Tanzanite
	}
}

ZygorGuidesViewer.ItemScore.Items["Burning Crusade Dungeons\\The Botanica  - Level 80"] = {
	dungeonmap=729,
	dungeon=173,
	-- QUEST: HOW TO BREAK INTO THE ARCATRAZ
	{ quest=10704, -- Quest - How To Break Into The Arcatraz
		31465, -- Sha'tari Anchorite's Cloak
		31461, -- A'dal's Gift
		31464, -- Naaru Belt of Precision
		31462, -- Shattrath's Champion Belt
		31460, -- Sha'tari Vindicator's Waistguard

	},
	-- COMMANDER SARANNIS
	{ boss=17976, -- Commander Sarannis
		28296, -- Libram of the Lightbringer
		28306, -- Towering Mantle of the Hunt
		28304, -- Prismatic Mittens of Mending
		28301, -- Syrannis' Mystic Sheen
		28311, -- Revenger

	},
	-- HIGH BOTANIST FREYWINN
	{ boss=17975, -- High Botanist Freywinn
		28316, -- Aegis of the Sunbird
		28321, -- Enchanted Thorium Torque
		28317, -- Energis Armwraps
		28318, -- Obsidian Clodstompers
		28315, -- Stormreaver Warblades

	},
	-- THORNGRIN THE TENDER
	{ boss=17978, -- Thorngrin the Tender
		28327, -- Arcane Netherband
		28325, -- Dreamer's Dragonstaff
		28324, -- Gauntlets of Cruel Intention
		28323, -- Ring of Umbral Doom
		28322, -- Runed Dagger of Solace

	},
	-- LAJ
	{ boss=17980, -- Laj
		28339, -- Boots of the Shifting Sands
		28338, -- Devil-Stitched Leggings
		28340, -- Mantle of Autumn
		28328, -- Mithril-Bark Cloak
		27739, -- Spaulders of the Righteous
	},
	{ boss=17977, -- WARP SPLINTER
		28370, -- Bangle of Endless Blessings
		28228, -- Beast Lord Cuirass
		28367, -- Greatsword of Forlorn Visions
		28229, -- Incanter's Robe
		28343, -- Jagged Bark Pendant
		28348, -- Moonglade Cowl
		28371, -- Netherfury Cape
		28349, -- Tidefury Helm
		28350, -- Warhelm of the Bold
		28342, -- Warp Infused Drape
		28345, -- Warp Splinter's Thorn
		28347, -- Warpscale Leggings
		28341, -- Warpstaff of Arcanum
	}
}

ZygorGuidesViewer.ItemScore.Items["Burning Crusade Dungeons\\Heroic Botanica  - Level 80"] = {
	dungeonmap=729, heroic=1,
	dungeon=191,
	-- QUEST: HOW TO BREAK INTO THE ARCATRAZ
	{ quest=10704, -- Quest - How To Break Into The Arcatraz
		31465, -- Sha'tari Anchorite's Cloak
		31461, -- A'dal's Gift
		31464, -- Naaru Belt of Precision
		31462, -- Shattrath's Champion Belt
		31460, -- Sha'tari Vindicator's Waistguard

	},
	-- COMMANDER SARANNIS
	{ boss=17976, -- Commander Sarannis
		28296, -- Libram of the Lightbringer
		28306, -- Towering Mantle of the Hunt
		28304, -- Prismatic Mittens of Mending
		28301, -- Syrannis' Mystic Sheen
		28311, -- Revenger

	},
	-- HIGH BOTANIST FREYWINN
	{ boss=17975, -- High Botanist Freywinn
		28316, -- Aegis of the Sunbird
		28321, -- Enchanted Thorium Torque
		28317, -- Energis Armwraps
		28318, -- Obsidian Clodstompers
		28315, -- Stormreaver Warblades
		30573, -- Mysterious Tanzanite
		30572, -- Purified Tanzanite
		30574, -- Shifting Tanzanite

	},
	-- THORNGRIN THE TENDER
	{ boss=17978, -- Thorngrin the Tender
		28327, -- Arcane Netherband
		28325, -- Dreamer's Dragonstaff
		28324, -- Gauntlets of Cruel Intention
		28323, -- Ring of Umbral Doom
		28322, -- Runed Dagger of Solace
		30573, -- Mysterious Tanzanite
		30572, -- Purified Tanzanite
		30574, -- Shifting Tanzanite

	},
	-- LAJ
	{ boss=17980, -- Laj
		28339, -- Boots of the Shifting Sands
		28338, -- Devil-Stitched Leggings
		28340, -- Mantle of Autumn
		28328, -- Mithril-Bark Cloak
		27739, -- Spaulders of the Righteous
		30573, -- Mysterious Tanzanite
		30572, -- Purified Tanzanite
		30574, -- Shifting Tanzanite
	},
	{ boss=17977, -- WARP SPLINTER
		28370, -- Bangle of Endless Blessings
		28228, -- Beast Lord Cuirass
		28367, -- Greatsword of Forlorn Visions
		28229, -- Incanter's Robe
		28343, -- Jagged Bark Pendant
		28348, -- Moonglade Cowl
		28371, -- Netherfury Cape
		28349, -- Tidefury Helm
		28350, -- Warhelm of the Bold
		28342, -- Warp Infused Drape
		28345, -- Warp Splinter's Thorn
		28347, -- Warpscale Leggings
		28341, -- Warpstaff of Arcanum
		29258, -- Boots of Ethereal Manipulation
		29262, -- Boots of the Endless Hunt
		29359, -- Feral Staff of Lashing
		32072, -- Gauntlets of Dissension
		30573, -- Mysterious Tanzanite
		30572, -- Purified Tanzanite
		30574, -- Shifting Tanzanite
	}
}

ZygorGuidesViewer.ItemScore.Items["Burning Crusade Dungeons\\The Arcatraz  - Level 80"] = {
	dungeonmap=731,
	dungeon=174,
	-- QUEST: MAXIMUM SECURITY BREAKOUT
	{ quest=29681,
		31747, -- Potent Sha'tari Pendant
		31748, -- Shattrath Choker of Power
		31749, -- A'dal's Recovery Necklace

	},
	-- ZEREKETH THE UNBOUND
	{ boss=20870, -- Zereketh the Unbound
		28373, -- Cloak of Scintillating Auras
		28372, -- Idol of Feral Shadows
		28374, -- Mana-Sphere Shoulderguards
		28384, -- Outland Striders
		28375, -- Rubium War-Girdle

	},
	-- DALLIAH THE DOOMSAYER
	{ boss=20885, -- Dalliah the Doomsayer
		28387, -- Lamp of Peaceful Repose
		28386, -- Nether Core's Control Rod
		28392, -- Reflex Blades
		28390, -- Thatia's Self-Correcting Gauntlets
		28391, -- Worldfire Chestguard
	},
	-- WRATH-SCRYER SOCCOTHRATES
	{ boss=20886, -- Wrath-Scryer Soccothrates
		28397, -- Emberhawk Crossbow
		28396, -- Gloves of the Unbound
		28394, -- Ryngo's Band of Ingenuity
		28398, -- The Sleeper's Cord
		28393, -- Warmaul of Infused Light

	},
	-- HARBINGER SKYRISS
	{ boss=20912, -- Harbinger Skyriss
		28205, -- Breastplate of the Bold
		28419, -- Choker of Fluid Thought
		28403, -- Doomplate Chestguard
		28407, -- Elementium Band of the Sentry
		28413, -- Hallowed Crown
		28414, -- Helm of Assassination
		28415, -- Hood of Oblivion
		28416, -- Hungering Spineripper
		28412, -- Lamp of Peaceful Radiance
		28418, -- Shiffar's Nexus-Horn
		28406, -- Sigil-Laced Boots
		28231, -- Tidefury Chestpiece
	}
}

ZygorGuidesViewer.ItemScore.Items["Burning Crusade Dungeons\\Heroic Arcatraz  - Level 80"] = {
	dungeonmap=731, heroic=1,
	dungeon=190,
	-- ZEREKETH THE UNBOUND
	{ boss=20870, -- Zereketh the Unbound
		28373, -- Cloak of Scintillating Auras
		28372, -- Idol of Feral Shadows
		28374, -- Mana-Sphere Shoulderguards
		28384, -- Outland Striders
		28375, -- Rubium War-Girdle
		30575, -- Nimble Chrysoprase
		30582, -- Deadly Fire Opal
		30581, -- Willful Fire Opal

	},
	-- DALLIAH THE DOOMSAYER
	{ boss=20885, -- Dalliah the Doomsayer
		28387, -- Lamp of Peaceful Repose
		28386, -- Nether Core's Control Rod
		28392, -- Reflex Blades
		28390, -- Thatia's Self-Correcting Gauntlets
		28391, -- Worldfire Chestguard
		30575, -- Nimble Chrysoprase
		30582, -- Deadly Fire Opal
		30581, -- Willful Fire Opal
	},
	-- WRATH-SCRYER SOCCOTHRATES
	{ boss=20886, -- Wrath-Scryer Soccothrates
		28397, -- Emberhawk Crossbow
		28396, -- Gloves of the Unbound
		28394, -- Ryngo's Band of Ingenuity
		28398, -- The Sleeper's Cord
		28393, -- Warmaul of Infused Light
		30575, -- Nimble Chrysoprase
		30582, -- Deadly Fire Opal
		30581, -- Willful Fire Opal

	},
	-- HARBINGER SKYRISS
	{ boss=20912, -- Harbinger Skyriss
		28205, -- Breastplate of the Bold
		28419, -- Choker of Fluid Thought
		28403, -- Doomplate Chestguard
		28407, -- Elementium Band of the Sentry
		28413, -- Hallowed Crown
		28414, -- Helm of Assassination
		28415, -- Hood of Oblivion
		28416, -- Hungering Spineripper
		28412, -- Lamp of Peaceful Radiance
		28418, -- Shiffar's Nexus-Horn
		28406, -- Sigil-Laced Boots
		28231, -- Tidefury Chestpiece
		29241, -- Belt of Depravity
		29252, -- Bracers of Dignity
		30582, -- Deadly Fire Opal
		30575, -- Nimble Chrysoprase
		29248, -- Shadowstep Striders
		29360, -- Vileblade of the Betrayer
		30581, -- Willful Fire Opal
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Mana-Tombs - Level 70"] = {
	dungeonmap=732,
	dungeon=148,
	-- PANDEMONIUS
	{ boss=18341, -- Pandemonius
		25943, -- Creepjacker
		25942, -- Faith Bearer's Gauntlets
		25939, -- Voidfire Wand
		25941, -- Boots of the Outlander
		28166, -- Shield of the Void
	},
	-- TAVAROK
	{ boss=18343, -- Tavarok
		25946, -- Nethershade Boots
		25947, -- Lightning-Rod Pauldrons
		25944, -- Shaarde the Greater
		25945, -- Cloak of Revival
		25950, -- Staff of Polarities
	},
	-- NEXUS-PRINCE SHAFFAR
	{ boss=18344, -- Nexus-Prince Shaffar
		25957, -- Ethereal Boots of the Skystrider
		25953, -- Ethereal Warp-Bow
		25962, -- Longstrider's Loop
		25954, -- Sigil of Shaffar
		25955, -- Mask of the Howling Storm
		25956, -- Nexus-Bracers of Vigor
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Mana-Tombs (Heroic) - Level 70"] = {
	dungeonmap=732, heroic=1,
	dungeon=179,
	-- PANDEMONIUS
	{ boss=18341, -- Pandemonius
		27817, -- Starbolt Longbow
		27813, -- Boots of the Colossus
		27816, -- Mindrage Pauldrons
		27818, -- Starry Robes of the Crescent
		27815, -- Totem of the Astral Winds
		27814, -- Twinblade of Mastery
	},
	-- TAVAROK
	{ boss=18343, -- Tavarok
		25952, -- Scimitar of the Nexus-Stalkers
		27824, -- Robe of the Great Dark Beyond
		27822, -- Crystal Band of Valor
		27826, -- Mantle of the Sea Wolf
		27825, -- Predatory Gloves
		27823, -- Shard Encrusted Breastplate
		27821, -- Extravagant Boots of Malice
	},
	-- NEXUS-PRINCE SHAFFAR
	{ boss=18344,
		27843, -- Glyph-Lined Sash
		27827, -- Lucid Dream Bracers
		27844, -- Pauldrons of Swift Retribution
		27829, -- Axe of the Nexus-Kings
		27798, -- Gauntlets of Vindication
		27831, -- Mantle of the Unforgiven
		27840, -- Scepter of Sha'tar
		27835, -- Stillwater Girdle
		27828, -- Warp-Scarab Brooch
		27842, -- Grand Scepter of the Nexus-Kings
		28400, -- Warp-Storm Warblade
		27837, -- Wastewalker Leggings
		28240, -- Bands of Negation
		30535, -- Forestwalker Kilt
		29352, -- Cobalt Band of Tyrigosa
		32082, -- The Fel Barrier
	},
	--QUEST Brother Against Brother
	{ quest=27202, -- Brother Against Brother
		29333, -- Torc of the Sethekk Prophet
		29334, -- Sethekk Oracle's Focus
		29335, -- Talon Lord's Collar
		29336, -- Mark of the Ravenguard
	},
	--QUEST Terokk's Legacy
	{ quest=29606,
		29330, -- The Saga of Terokk
		29332, -- Terokk's Mask
		29329, -- Terokk's Quill
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Sethekk Halls - Level 70"] = {
	dungeonmap=723,
	dungeon=150,
	-- DARKWEAVER SYTH
	{ boss=18472, -- Darkweaver Syth
		27917, -- Libram of the Eternal Rest
		27919, -- Light-Woven Slippers
		27918, -- Bands of Syth
		27914, -- Moonstrider Boots
		27916, -- Sethekk Feather-Darts
		27915, -- Sky-Hunter Swift Boots
	},
	-- TALON KING IKISS
	{ boss=18473, -- Talon King Ikiss
		27946, -- Avian Cloak of Feathers
		27986, -- Crow Wing Reaper
		27985, -- Deathforge Girdle
		27936, -- Greaves of Desolation
		27875, -- Hallowed Trousers
		27838, -- Incanter's Trousers
		27925, -- Ravenclaw Band
		27981, -- Sethekk Oracle Cloak
		27776, -- Shoulderpads of Assassination
		27980, -- Terokk's Nightmace
		27948, -- Trousers of Oblivion
	},
	-- ANZU
	{ boss=23035, -- Anzu
		32778, -- Boots of Righteous Fortitude
		32769, -- Belt of the Raven Lord
		32781, -- Talon of Anzu
		32780, -- The Boomstick
		32779, -- Band of Frigid Elements
	},
	--QUEST Brother Against Brother
	{ quest=27202, -- Brother Against Brother
		29333, -- Torc of the Sethekk Prophet
		29334, -- Sethekk Oracle's Focus
		29335, -- Talon Lord's Collar
		29336, -- Mark of the Ravenguard
	},
	--QUEST Terokk's Legacy
	{ quest=29606,
		29330, -- The Saga of Terokk
		29332, -- Terokk's Mask
		29329, -- Terokk's Quill
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Sethekk Halls (Heroic) - Level 70"] = {
	dungeonmap=723, heroic=1,
	dungeon=180,
	-- DARKWEAVER SYTH
	{ boss=18472, -- Darkweaver Syth
		27917, -- Libram of the Eternal Rest
		27919, -- Light-Woven Slippers
		27918, -- Bands of Syth
		27914, -- Moonstrider Boots
		27916, -- Sethekk Feather-Darts
		27915, -- Sky-Hunter Swift Boots
	},
	-- TALON KING IKISS
	{ boss=18473, -- Talon King Ikiss
		27946, -- Avian Cloak of Feathers
		27986, -- Crow Wing Reaper
		27985, -- Deathforge Girdle
		27936, -- Greaves of Desolation
		27875, -- Hallowed Trousers
		27838, -- Incanter's Trousers
		27925, -- Ravenclaw Band
		27981, -- Sethekk Oracle Cloak
		27776, -- Shoulderpads of Assassination
		27980, -- Terokk's Nightmace
		27948, -- Trousers of Oblivion
		29249, -- Bands of the Benevolent
		29259, -- Bracers of the Hunt
		32073, -- Spaulders of Dementia
		29355, -- Terokk's Shadowstaff
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Auchenai Crypts - Level 70"] = {
	dungeonmap=722,
	dungeon=149,
	-- SHIRRAK THE DEAD WATCHER
	{ boss=18371, -- Shirrak the Dead Watcher
		27408, -- Hope Bearer Helm
		26055, -- Oculus of the Hidden Eye
		27410, -- Collar of Command
		27409, -- Raven-Heart Headdress
		25964, -- Shaarde the Lesser
	},
	-- EXARCH MALADAAR
	{ boss=18373, -- Exarch Maladaar
		27412, -- Ironstaff of Regeneration
		27415, -- Darkguard Face Mask
		27416, -- Fetish of the Fallen
		27413, -- Ring of the Exarchs
		27414, -- Mok'Nathal Beast-Mask
		27411, -- Slippers of Serenity
	},
	--QUEST The End of the Exarch
	{ quest=29596,
		29341, -- Auchenai Anchorite's Robe
		29340, -- Auchenai Monk's Tunic
		29339, -- Auchenai Tracker's Hauberk
		29337, -- The Exarch's Protector
	}
}

ZygorGuidesViewer.ItemScore.Items["Classic Dungeons\\Auchenai Crypts (Heroic) - Level 70"] = {
	dungeonmap=722, heroic=1,
	dungeon=178,
	-- SHIRRAK THE DEAD WATCHER
	{ boss=18371, -- Shirrak the Dead Watcher
		27846, -- Claw of the Watcher
		27493, -- Gloves of the Deadwatcher
		27845, -- Magma Plume Boots
		27866, -- Scintillating Headdress of Second Sight
		27865, -- Bracers of Shirrak
		27847, -- Fanblade Pauldrons
	},
	-- EXARCH MALADAAR
	{ boss=18373, -- Exarch Maladaar
		27523, -- Exarch's Diamond Band
		27871, -- Maladaar's Blessed Chaplet
		27867, -- Boots of the Unjust
		27870, -- Doomplate Legguards
		27869, -- Soulpriest's Ring of Resolve
		27872, -- The Harvester of Souls
		29257, -- Sash of Arcane Visions
		29244, -- Wave-Song Girdle
		29354, -- Light-Touched Stole of Altruism
	},
	{ quest=29596,
	--QUEST The End of the Exarch
		29341, -- Auchenai Anchorite's Robe
		29340, -- Auchenai Monk's Tunic
		29339, -- Auchenai Tracker's Hauberk
		29337, -- The Exarch's Protector
	}
}

ZygorGuidesViewer.ItemScore.Items["Seasonal Dungeons\\Headless Horseman"] = {
	dungeonmap=761, floor=1,
	dungeon=285,
	-- HEADLESS HORSEMAN
	{ boss=23682, -- Headless Horseman
		71327, -- Band of Ghoulish Glee
		71330, -- Seal of the Petrified Pumpkin
		71328, -- The Horseman's Signet
		71329, -- Wicked Witch's Ring
	},
}
