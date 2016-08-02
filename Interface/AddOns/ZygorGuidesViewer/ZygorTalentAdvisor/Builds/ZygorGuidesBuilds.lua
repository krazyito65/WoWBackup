if not ZygorTalentAdvisor then return end

local ZTA=ZygorTalentAdvisor

--***Example*** Remove all the --
--Capitalization and spelling matters.
--ZTA:RegisterBuild("CLASS","Name","Spec", [[
--	Talent Tier 1
--	Talent Tier 2
--	Talent Tier 3
--	Talent Tier 4
--	Talent Tier 5
--	Talent Tier 6
--]],[[
--	Major Glyph of 1
--	Major Glyph of 2
--	Major Glyph of 3
--	Minor Glyph of 1
--	Minor Glyph of 2
--	Minor Glyph of 3
--]],"PetSpec") --PetSpec only needed if you are a HUNTER

ZTA:RegisterBuild("DEATHKNIGHT","Leveling Blood(Recommended)","Blood", [[
	Unholy Blight
	Anti-Magic Zone
	Asphyxiate
	Conversion
	Runic Corruption
	Remorseless Winter
]],[[
	Major Glyph of Pestilence
	Major Glyph of Anti-Magic Shell
	Major Glyph of Vampiric Blood
	Minor Glyph of Resilient Grip
	Minor Glyph of Death Gate
	Minor Glyph of Path of Frost
]])
ZTA:RegisterBuild("DEATHKNIGHT","Leveling Frost","Frost", [[
	Unholy Blight
	Anti-Magic Zone
	Asphyxiate
	Death Pact
	Runic Corruption
	Remorseless Winter
]],[[
	Major Glyph of Pestilence
	Major Glyph of Unholy Command
	Major Glyph of Dark Succor
	Minor Glyph of Resilient Grip
	Minor Glyph of Death Gate
	Minor Glyph of Path of Frost
]])
ZTA:RegisterBuild("DEATHKNIGHT","Leveling Unholy","Unholy", [[
	Unholy Blight
	Anti-Magic Zone
	Asphyxiate
	Death Siphon
	Runic Corruption
	Remorseless Winter
]],[[
	Major Glyph of Pestilence
	Major Glyph of Unholy Frenzy
	Major Glyph of Dark Succor
	Minor Glyph of Resilient Grip
	Minor Glyph of Death's Embrace
	Minor Glyph of Path of Frost
]])
ZTA:RegisterBuild("PRIEST","Leveling Shadow(Recommended)","Shadow", [[
	Void Tendrils
	Body and Soul
	From Darkness, Comes Light
	Angelic Bulwark
	Divine Insight
	Divine Star
]],[[
	Major Glyph of Psychic Scream
	Major Glyph of Vampiric Embrace
	Major Glyph of Dark Binding
	Minor Glyph of Dark Archangel
	Minor Glyph of Shadow Ravens
	Minor Glyph of Shadowy Friends
]])
ZTA:RegisterBuild("PRIEST","Leveling Discipline","Discipline", [[
	Void Tendrils
	Body and Soul
	Mindbender
	Angelic Bulwark
	Divine Insight
	Divine Star
]],[[
	Major Glyph of Holy Fire
	Major Glyph of Power Word: Shield
	Major Glyph of Smite
	Minor Glyph of Borrowed Time
	Minor Glyph of Holy Resurrection
	Minor Glyph of Confession
]])
ZTA:RegisterBuild("PRIEST","Leveling Holy","Holy", [[
	Void Tendrils
	Body and Soul
	Mindbender
	Angelic Bulwark
	Power Infusion
	Divine Star
]],[[
	Major Glyph of Holy Fire
	Major Glyph of Renew
	Major Glyph of Smite
	Minor Glyph of Heavens
	Minor Glyph of Holy Resurrection
	Minor Glyph of Confession
]])
ZTA:RegisterBuild("MAGE","Leveling Fire","Fire", [[
	Scorch
	Ice Barrier
	Ice Ward
	Greater Invisibility
	Living Bomb
	Rune of Power
]],[[
	Major Glyph of Combustion
	Major Glyph of Fire Blast
	Major Glyph of Mana Gem
	Minor Glyph of Mirror Image
	Minor Glyph of Arcane Language
	Minor Glyph of Conjure Familiar
]])
ZTA:RegisterBuild("MAGE","Leveling Frost(Recommended)","Frost", [[
	Ice Floes
	Ice Barrier
	Ice Ward
	Cold Snap
	Frost Bomb
	Rune of Power
]],[[
	Major Glyph of Deep Freeze
	Major Glyph of Ice Block
	Major Glyph of Cone of Cold
	Minor Glyph of Monkey
	Minor Glyph of Arcane Language
	Minor Glyph of Conjure Familiar
]])
ZTA:RegisterBuild("MAGE","Leveling Arcane","Arcane", [[
	Ice Floes
	Ice Barrier
	Ice Ward
	Greater Invisibility
	Nether Tempest
	Rune of Power
]],[[
	Major Glyph of Arcane Power
	Major Glyph of Slow
	Major Glyph of Counterspell
	Minor Glyph of Mirror Image
	Minor Glyph of Arcane Language
	Minor Glyph of Conjure Familiar
]])
ZTA:RegisterBuild("WARRIOR","Leveling Arms(Recommended)","Arms", [[
	Double Time
	Impending Victory
	Staggering Shout
	Dragon Roar
	Mass Spell Reflection
	Avatar
]],[[
	Major Glyph of Victory Rush
	Major Glyph of Resonating Power
	Major Glyph of Sweeping Strikes
	Minor Glyph of Blazing Trail
	Minor Glyph of Burning Anger
	Minor Glyph of Mighty Victory
]])
ZTA:RegisterBuild("WARRIOR","Leveling Fury","Fury", [[
	Double Time
	Impending Victory
	Staggering Shout
	Dragon Roar
	Mass Spell Reflection
	Avatar
]],[[
	Major Glyph of Colossus Smash
	Major Glyph of Raging Wind
	Major Glyph of Victory Rush
	Minor Glyph of Gushing Wound
	Minor Glyph of Burning Anger
	Minor Glyph of Mighty Victory
]])
ZTA:RegisterBuild("WARRIOR","Leveling Protection","Protection", [[
	Double Time
	Impending Victory
	Staggering Shout
	Dragon Roar
	Mass Spell Reflection
	Avatar
]],[[
	Major Glyph of Incite
	Major Glyph of Resonating Power
	Major Glyph of Heavy Repercussions
	Minor Glyph of Thunder Strike
	Minor Glyph of Burning Anger
	Minor Glyph of Blazing Trail
]])
ZTA:RegisterBuild("DRUID","Leveling Feral(Recommended)","Feral", [[
	Displacer Beast
	Renewal
	Mass Entanglement
	Soul of the Forest
	Disorienting Roar
	Nature's Vigil
]],[[
	Major Glyph of Prowl
	Major Glyph of Ferocious Bite
	Major Glyph of Savagery
	Minor Glyph of Grace
	Minor Glyph of Aquatic Form
	Minor Glyph of The Predator
]])
ZTA:RegisterBuild("DRUID","Leveling Guardian","Guardian", [[
	Wild Charge
	Renewal
	Typhoon
	Incarnation
	Mighty Bash
	Heart of the Wild
]],[[
	Major Glyph of Fae Silence
	Major Glyph of Maul
	Major Glyph of Might of Ursoc
	Minor Glyph of Grace
	Minor Glyph of The Chameleon
	Minor Glyph of Aquatic Form
]])
ZTA:RegisterBuild("DRUID","Leveling Balance","Balance", [[
	Wild Charge
	Renewal
	Mass Entanglement
	Soul of the Forest
	Disorienting Roar
	Nature's Vigil
]],[[
	Major Glyph of The Moonbeast
	Major Glyph of Faerie Fire
	Major Glyph of Solar Beam
	Minor Glyph of Grace
	Minor Glyph of The Stag
	Minor Glyph of Aquatic Form
]])
ZTA:RegisterBuild("DRUID","Leveling Restoration","Restoration", [[
	Wild Charge
	Cenarion Ward
	Mass Entanglement
	Force of Nature
	Disorienting Roar
	Heart of the Wild
]],[[
	Major Glyph of Blooming
	Major Glyph of Healing Touch
	Major Glyph of Regrowth
	Minor Glyph of Grace
	Minor Glyph of The Stag
	Minor Glyph of Aquatic Form
]])
ZTA:RegisterBuild("SHAMAN","Leveling Elemental","Elemental", [[
	Stone Bulwark Totem
	Frozen Power
	Totemic Projection
	Echo of the Elements
	Healing Tide Totem
	Primal Elementalist
]],[[
	Major Glyph of Thunder
	Major Glyph of Telluric Currents
	Major Glyph of Fire Elemental Totem
	Minor Glyph of Thunderstorm
	Minor Glyph of Astral Recall
	Minor Glyph of Lakestrider
]])
ZTA:RegisterBuild("SHAMAN","Leveling Enhancement(Recommended)","Enhancement", [[
	Astral Shift
	Frozen Power
	Totemic Projection
	Echo of the Elements
	Healing Tide Totem
	Primal Elementalist
]],[[
	Major Glyph of Healing Storm
	Major Glyph of Feral Spirit
	Major Glyph of Fire Elemental Totem
	Minor Glyph of Spectral Wolf
	Minor Glyph of Astral Recall
	Minor Glyph of Lakestrider
]])
ZTA:RegisterBuild("SHAMAN","Leveling Restoration","Restoration", [[
	Astral Shift
	Frozen Power
	Totemic Projection
	Echo of the Elements
	Healing Tide Totem
	Primal Elementalist
]],[[
	Major Glyph of Water Shield
	Major Glyph of Hex
	Major Glyph of Fire Elemental Totem
	Minor Glyph of Spectral Wolf
	Minor Glyph of Astral Recall
	Minor Glyph of Lakestrider
]])
ZTA:RegisterBuild("HUNTER","Leveling Beast Mastery(Recommended)","Beast Mastery", [[
	Narrow Escape
	Wyvern Sting
	Exhilaration
	Dire Beast
	Lynx Rush
	Glaive Toss
]],[[
	Major Glyph of Endless Wrath
	Major Glyph of Marked For Death
	Major Glyph of Mending
	Minor Glyph of Revive Pet
	Minor Glyph of Aspect of the Cheetah
	Minor Glyph of Fetch
]],"Ferocity")
ZTA:RegisterBuild("HUNTER","Leveling Marksmanship","Marksmanship", [[
	Narrow Escape
	Binding Shot
	Exhilaration
	Thrill of the Hunt
	A Murder of Crows
	Powershot
]],[[
	Major Glyph of Chimera Shot
	Major Glyph of Marked For Death
	Major Glyph of Deterrence
	Minor Glyph of Lesser Proportion
	Minor Glyph of Aspect of the Cheetah
	Minor Glyph of Fetch
]],"Tenacity")
ZTA:RegisterBuild("HUNTER","Leveling Survival","Survival", [[
	Narrow Escape
	Binding Shot
	Exhilaration
	Fervor
	A Murder of Crows
	Powershot
]],[[
	Major Glyph of Chimera Shot
	Major Glyph of Marked For Death
	Major Glyph of Deterrence
	Minor Glyph of Lesser Proportion
	Minor Glyph of Aspect of the Cheetah
	Minor Glyph of Fetch
]],"Tenacity")
ZTA:RegisterBuild("MONK","Leveling Brewmaster","Brewmaster", [[
	Momentum
	Zen Sphere
	Ascension
	Charging Ox Wave
	Healing Elixirs
	Invoke Xuen, the White Tiger
]],[[
	Major Glyph of Afterlife
	Major Glyph of Sparring
	Major Glyph of Fortifying Brew
	Minor Glyph of Spirit Roll
	Minor Glyph of Water Roll
	Minor Glyph of Zen Flight
]])
ZTA:RegisterBuild("MONK","Leveling Mistweaver","Mistweaver", [[
	Tiger's Lust
	Chi Wave
	Chi Brew
	Deadly Reach
	Diffuse Magic
	Invoke Xuen, the White Tiger
]],[[
	Major Glyph of Afterlife
	Major Glyph of Renewing Mist
	Major Glyph of Mana Tea
	Minor Glyph of Water Roll
	Minor Glyph of Spirit Roll
	Minor Glyph of Zen Flight
]])
ZTA:RegisterBuild("MONK","Leveling Windwalker(Recommended)","Windwalker", [[
	Momentum
	Zen Sphere
	Ascension
	Charging Ox Wave
	Dampen Harm
	Invoke Xuen, the White Tiger
]],[[
	Major Glyph of Afterlife
	Major Glyph of Sparring
	Major Glyph of Touch of Karma
	Minor Glyph of Water Roll
	Minor Glyph of Spirit Roll
	Minor Glyph of Zen Flight
]])
ZTA:RegisterBuild("WARLOCK","Leveling Demonology(Recommended)","Demonology", [[
	Soul Leech
	Howl of Terror
	Sacrificial Pact
	Burning Rush
	Grimoire of Supremacy
	Archimonde's Vengeance
]],[[
	Major Glyph of Demon Hunting
	Major Glyph of Imp Swarm
	Major Glyph of Soul Consumption
	Minor Glyph of Nightmares
	Minor Glyph of Falling Meteor
	Minor Glyph of Eye of Kilrogg
]])
ZTA:RegisterBuild("WARLOCK","Leveling Destruction","Destruction", [[
	Soul Leech
	Shadowfury
	Dark Bargain
	Burning Rush
	Grimoire of Supremacy
	Kil'jaeden's Cunning
]],[[
	Major Glyph of Burning Embers
	Major Glyph of Conflagrate
	Major Glyph of Soul Consumption
	Minor Glyph of Verdant Spheres
	Minor Glyph of Eye of Kilrogg
	Minor Glyph of Nightmares
]])
ZTA:RegisterBuild("WARLOCK","Leveling Affliction","Affliction", [[
	Harvest Life
	Howl of Terror
	Dark Bargain
	Burning Rush
	Grimoire of Sacrifice
	Kil'jaeden's Cunning
]],[[
	Major Glyph of Soul Consumption
	Major Glyph of Soul Shards
	Major Glyph of Soul Swap
	Minor Glyph of Verdant Spheres
	Minor Glyph of Eye of Kilrogg
	Minor Glyph of Nightmares
]])
ZTA:RegisterBuild("ROGUE","Leveling Assassination","Assassination", [[
	Subterfuge
	Nerve Strike
	Leeching Poison
	Burst of Speed
	Deadly Brew
	Shuriken Toss
]],[[
	Major Glyph of Vendetta
	Major Glyph of Deadly Momentum
	Major Glyph of Cheap Shot
	Minor Glyph of Blurred Speed
	Minor Glyph of Safe Fall
	Minor Glyph of Disguise
]])
ZTA:RegisterBuild("ROGUE","Leveling Combat(Recommended)","Combat", [[
	Subterfuge
	Nerve Strike
	Leeching Poison
	Burst of Speed
	Deadly Brew
	Shuriken Toss
]],[[
	Major Glyph of Adrenaline Rush
	Major Glyph of Deadly Momentum
	Major Glyph of Blade Flurry
	Minor Glyph of Blurred Speed
	Minor Glyph of Safe Fall
	Minor Glyph of Disguise
]])
ZTA:RegisterBuild("ROGUE","Leveling Subtlety","Subtlety", [[
	Nightstalker
	Nerve Strike
	Leeching Poison
	Shadowstep
	Dirty Tricks
	Shuriken Toss
]],[[
	Major Glyph of Ambush
	Major Glyph of Stealth
	Major Glyph of Gouge
	Minor Glyph of Blurred Speed
	Minor Glyph of Safe Fall
	Minor Glyph of Disguise
]])
ZTA:RegisterBuild("PALADIN","Leveling Holy","Holy", [[
	Pursuit of Justice
	Repentance
	Eternal Flame
	Clemency
	Divine Purpose
	Light's Hammer
]],[[
	Major Glyph of Divine Plea
	Major Glyph of Beacon of Light
	Major Glyph of Flash of Light
	Minor Glyph of Winged Vengeance
	Minor Glyph of Falling Avenger
	Minor Glyph of Righteous Retreat
]])
ZTA:RegisterBuild("PALADIN","Leveling Protection","Protection", [[
	Long Arm of the Law
	Fist of Justice
	Sacred Shield
	Hand of Purity
	Holy Avenger
	Execution Sentence
]],[[
	Major Glyph of Alabaster Shield
	Major Glyph of Consecration
	Major Glyph of Harsh Words
	Minor Glyph of Fire From the Heavens
	Minor Glyph of Seal of Blood
	Minor Glyph of Winged Vengeance
]])
ZTA:RegisterBuild("PALADIN","Leveling Retribution(Recommended)","Retribution", [[
	Long Arm of the Law
	Repentance
	Selfless Healer
	Unbreakable Spirit
	Divine Purpose
	Holy Prism
]],[[
	Major Glyph of Harsh Words
	Major Glyph of Inquisition
	Major Glyph of Word of Glory
	Minor Glyph of Fire From the Heavens
	Minor Glyph of Seal of Blood
	Minor Glyph of Righteous Retreat
]])