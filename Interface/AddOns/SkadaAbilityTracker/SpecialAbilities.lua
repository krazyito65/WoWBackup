local addon, special = ...

special.reset = {}

special.reset.aura = {
	["Lock and Load"] = "Explosive Shot"
}

special.reset.spell = {
	["Readiness"] = "All"
}

special.reduces = {
	["Healing Touch"] = "Swiftmend"
}

special.linked = {
	["Black Arrow"] = "Explosive Trap",
	["Explosive Trap"] = "Black Arrow",
	["Ice Trap"] = "Freezing Trap",
	["Freezing Trap"] = "Ice Trap"
}

special.offgcd = {
	-- Profession
	["Cobalt Frag Bomb"]			= true,
	["Goblin Glider"]				= true,
	["Synapse Springs"]				= true,
	
	-- Hunter
	["Aspect of the Beast"]			= true,
	["Aspect of the Cheetah"]		= true,
	["Aspect of the Fox"]			= true,
	["Aspect of the Hawk"]			= true,
	["Aspect of the Iron Hawk"]		= true,
	["Aspect of the Pack"]			= true,
	["Bestial Wrath"]				= true,
	["Deterrence"]					= true,
	["Disengage"]					= true,
	["Exhilaration"]				= true,
	["Feign Death"]					= true,
	["Fervor"]						= true,
	["Intimidation"]				= true,
	["Rapid Fire"]					= true,
	["Readiness"]					= true,
	["Silencing Shot"]				= true,
	["Trap Launcher"]				= true
	--Pet specials?
}

special.exclude = {
	["Aspect of the Beast"]			= true,
	["Aspect of the Cheetah"]		= true,
	["Aspect of the Fox"]			= true,
	["Aspect of the Hawk"]			= true,
	["Aspect of the Iron Hawk"]		= true,
	["Aspect of the Pack"]			= true,
	["Trap Launcher"]				= true
}

special.inv = {
	["Phase Fingers"]				= 10,
	["Synapse Springs"]				= 10,
}

special.channeled = {
	["Arcane Missiles"]				= true,
	["Barrage"]						= true,
	["Mind Flay"]					= true,
	["Rain of Fire"]				= true,
	["Tranquility"]					= true,
}

special.exclusiveid = {
	["Dire Beast"]					= 120679
}
--[[
-- colors from http://www.rapidtables.com/web/color/RGB_Color.htm

special.colors		= {}
special.colors		= {
	cyan			= {0, 255, 255, 0.5},
	blue			= {0, 0, 255, 0.5},
	green			= {0, 255, 0, 0.5},
	red				= {255, 0, 0, 0.5},
	yellow			= {255, 255, 0, 0.5},
	orange			= {255, 128, 0, 0.5},
	purple			= {128, 0, 128, 0.5},
}

special.coloruse		= {}
special.coloruse		= {
	spam				= {color = "cyan"},
	cut1				= {color = "green", 	go = 1.5, late = 0.15},
	cut2				= {color = "blue", 		go = 2.0, late = 0.4},
	cut3				= {color = "yellow", 	go = 3.0, late = 1.0},
	cut4				= {color = "orange", 	go = 4.0, late = 3.0},
	cut5				= {color = "red", 		go = 5.0, late = 6.0},
	cutend				= {color = "test"}
}
]]

special.coloruse		= {
	spam				= {color = "PRIEST"},
	cut1				= {color = "MONK", 			go = 1.5, late = 0.15},
	cut2				= {color = "SHAMAN", 		go = 2.0, late = 0.5},
	cut3				= {color = "MAGE", 			go = 3.0, late = 1.0},
	cut4				= {color = "ROGUE", 		go = 4.0, late = 3.0},
	cut5				= {color = "DRUID", 		go = 5.0, late = 6.0},
	cutend				= {color = "DEATHKNIGHT"}
}