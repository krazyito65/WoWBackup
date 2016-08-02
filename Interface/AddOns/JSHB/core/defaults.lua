--
-- JSHB - defaults
--

-- New alert defaults
JSHB.newAlertDefaults = {
	enabled = true,
	alerttype = "DEBUFF",
	enablesound = true,
	sound = "Raid Warning",
	aura = JSHB.L["ENTER NAME OR ID"],
	target = "target",
	sparkles = true,
	healthpercent = 0.4,
}

-- Timer conditions
JSHB.TimerConditions = {
	"AURA_NOEXIST",		--  0
	"AURA_EXIST",		--  1
	"HEALTH",			--  2
}

-- New timer defaults
JSHB.newTimerDefaults = {
	"*NEW TIMER",	--  1: Spell
	nil,			--  2: Item
	"player",		--  3: Check target
	"COOLDOWN",		--  4: Check type
	"PLAYERS",		--  5: Owner
	0,				--  6: What specilization (0 = all or 1 - 3 respectively)
	"CENTER",		--  7: Timer text position
	nil,			--  8: Flash when expiring?
	nil,			--  9: Only if known flag (nil or true)
	nil,			-- 10: <removed, was growth setting>
	0.4,			-- 11:  - <removed, Grow start>
	1.4,			-- 12:  - <removed, Grow size>
	nil,			-- 13: Change alpha over time?
	0.4,			-- 14:  - Alpha Start
	1,				-- 15:  - Alpha End
	0,				-- 16: Internal Cooldown time
	0,				-- 17: Last time for Internal Cooldown
	nil,			-- 18: Show the icon when? { 1 = Active / 0 or nil = Always }
	nil,			-- 19: Position on bar (values: 1 - total timers)
	0.5,			-- 20: Inactive Alpha when always on bar for stationary timers
	nil,			-- 21: Collapse flag, for options.
	nil,			-- 22: Conditions (conditions must evaluate to true to activate a timer):(this field is nil if no conditions are defined, otherwise a table of key=val){ "AURA_EXIST,SPELL=1978", "HEALTH,<=,20", "AURA_NOEXIST,SPELL=1978", ...more examples added when implemented }
}

-- Initial install defaults
JSHB.defaultDefaults = {
	DEATHKNIGHT = {
		timers = {
			timerbar1 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
				},
			},
			timerbar2 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
					{ 20572 , nil, "player", "DURATION", "PLAYERS", 0, "CENTER", nil, true, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 8 , 0.5 }, 			-- Blood Fury
					{ 32182 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 9 , 0.5 }, 			-- Heroism
					{ 90355 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 10, 0.5 }, 			-- Ancient Hysteria
					{ 80353 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 11, 0.5 }, 			-- Time Warp
				},
			},
			timerbar3 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
				},
			},
		},
	},
	DRUID = {
		timers = {
			timerbar1 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
				},
			},
			timerbar2 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
					{ 20572 , nil, "player", "DURATION", "PLAYERS", 0, "CENTER", nil, true, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 8 , 0.5 }, 			-- Blood Fury
					{ 32182 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 9 , 0.5 }, 			-- Heroism
					{ 90355 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 10, 0.5 }, 			-- Ancient Hysteria
					{ 80353 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 11, 0.5 }, 			-- Time Warp
				},
			},
			timerbar3 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
				},
			},
		},
	},
	HUNTER = {
		timers = {
			timerbar1 = {
				timers = { -- see JSHB\core\defaults.lua for table description
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
					{ 121818, nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil, true, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 0 , 1 , 0.5 }, 			-- Stampede
					{ 120679, nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil, true, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 0 , 2 , 0.5 }, 			-- Dire Beast
					{ 19574 , nil, "pet"   , "COOLDOWN", "PLAYERS", 1, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 0 , 3 , 0.5 }, 			-- Bestial Wrath
					{ 34026 , nil, "player", "COOLDOWN", "PLAYERS", 1, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 0 , 4 , 0.5 }, 			-- Kill Command
					{ 3045  , nil, "player", "COOLDOWN", "PLAYERS", 2, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 0 , 5 , 0.5 }, 			-- Rapid Fire
					{ 53301 , nil, "player", "COOLDOWN", "PLAYERS", 3, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 0 , 6 , 0.5 }, 			-- Explosive Shot
					{ 3674  , nil, "player", "COOLDOWN", "PLAYERS", 3, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 0 , 7 , 0.5 }, 			-- Black Arrow
					{ 131894, nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil, true, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 0 , 8 , 0.5 }, 			-- A Murder of Crows
					{ 53209 , nil, "player", "COOLDOWN", "PLAYERS", 2, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 0 , 9 , 0.5 }, 			-- Chimaera Shot
					{ 120360, nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil, true, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 0 , 10, 0.5 }, 			-- Barrage
					{ 117050, nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil, true, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 0 , 11, 0.5 }, 			-- Glaive Toss
					{ 109259, nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil, true, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 0 , 12, 0.5 }, 			-- Power Shot
					{ 13813 , nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 0 , 13, 0.5 }, 			-- Explosive Trap
				},
			},
			timerbar2 = {
				timers = {
				--	{ 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
					{ 19574 , nil, "player", "DURATION", "PLAYERS", 1, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 1 , 0.5 }, 			-- Bestial Wrath
					{ 3045  , nil, "player", "DURATION", "PLAYERS", 2, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 2 , 0.5 }, 			-- Rapid Fire
					{ 3674  , nil, "target", "DURATION", "PLAYERS", 3, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 3 , 0.5 }, 			-- Black Arrow
					{ 118253, nil, "target", "DURATION", "PLAYERS", 3, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 0 , 4 , 0.5 }, 			-- Serpent Sting
					{ 32182 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 5 , 0.5 }, 			-- Heroism
					{ 90355 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 6 , 0.5 }, 			-- Ancient Hysteria
					{ 80353 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 7 , 0.5 }, 			-- Time Warp
					{ 2825  , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 8 , 0.5 }, 			-- Blood Lust
					{ 136   , nil, "pet"   , "DURATION", "PLAYERS", 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 0 , 9 , 0.5 }, 			-- Mend Pet
					{ 131894, nil, "target", "DURATION", "PLAYERS", 0, "CENTER", nil, true, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 10, 0.5 }, 			-- A Murder of Crows
					{ 20572 , nil, "player", "DURATION", "PLAYERS", 0, "CENTER", nil, true, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 11, 0.5 }, 			-- Blood Fury
					{ 121818, nil, "target", "DURATION", "PLAYERS", 0, "CENTER", nil, true, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 12, 0.5 }, 			-- Stampede
					{ 105697, nil, "player", "DURATION", "PLAYERS", 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 13, 0.5 }, 			-- Virmen's Bite
					{ 109085, nil, "player", "DURATION", "PLAYERS", 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 14, 0.5 }, 			-- Lord Blastington's Scope of Doom
					{ 177668, nil, "player", "DURATION", "PLAYERS", 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 15, 0.5 }, 			-- Steady Focus
					{ 34720 , nil, "player", "DURATION", "PLAYERS", 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 16, 0.5 }, 			-- Thrill of the Hunt
					{ 34477 , nil, "player", "DURATION", "PLAYERS", 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 17, 0.5 }, 			-- Misdirection
					{ 13812 , nil, "target", "DURATION", "PLAYERS", 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 0 , 18, 0.5 }, 			-- Explosive Trap
				},
			},
			timerbar3 = {
				timers = {
				--	{ 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
				},
			},
		},
	},
	MAGE = {
		timers = {
			timerbar1 = {
				timers = {
				},
			},
			timerbar2 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
					{ 20572 , nil, "player", "DURATION", "PLAYERS", 0, "CENTER", nil, true, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 8 , 0.5 }, 			-- Blood Fury
					{ 32182 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 9 , 0.5 }, 			-- Heroism
					{ 90355 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 10, 0.5 }, 			-- Ancient Hysteria
					{ 80353 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 11, 0.5 }, 			-- Time Warp
				},
			},
			timerbar3 = {
				----{ 1     , 2  , 3       , 4          , 5        , 6, 7       , 8  , 9  , 10 , 11 , 12 , 13 , 14, 15, 16 , 17 , 18 , 19 , 20   , 21,  22 }, -- Index
				timers = {
				},
			},
		},
	},
	MONK = {
		timers = {
			timerbar1 = {
				timers = {
				},
			},
			timerbar2 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
					{ 20572 , nil, "player", "DURATION", "PLAYERS", 0, "CENTER", nil, true, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 8 , 0.5 }, 			-- Blood Fury
					{ 32182 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 9 , 0.5 }, 			-- Heroism
					{ 90355 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 10, 0.5 }, 			-- Ancient Hysteria
					{ 80353 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 11, 0.5 }, 			-- Time Warp
				},
			},
			timerbar3 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
				},
			},
		},
	},
	PALADIN = {
		timers = {
			timerbar1 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
				},
			},
			timerbar2 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
					{ 20572 , nil, "player", "DURATION", "PLAYERS", 0, "CENTER", nil, true, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 8 , 0.5 }, 			-- Blood Fury
					{ 32182 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 9 , 0.5 }, 			-- Heroism
					{ 90355 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 10, 0.5 }, 			-- Ancient Hysteria
					{ 80353 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 11, 0.5 }, 			-- Time Warp
				},
			},
			timerbar3 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
				},
			},
		},
	},
	PRIEST = {
		timers = {
			timerbar1 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
				},
			},
			timerbar2 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
					{ 20572 , nil, "player", "DURATION", "PLAYERS", 0, "CENTER", nil, true, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 8 , 0.5 }, 			-- Blood Fury
					{ 32182 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 9 , 0.5 }, 			-- Heroism
					{ 90355 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 10, 0.5 }, 			-- Ancient Hysteria
					{ 80353 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 11, 0.5 }, 			-- Time Warp
				},
			},
			timerbar3 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
				},
			},
		},
	},
	ROGUE = {
		timers = {
			timerbar1 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
				},
			},
			timerbar2 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
					{ 20572 , nil, "player", "DURATION", "PLAYERS", 0, "CENTER", nil, true, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 8 , 0.5 }, 			-- Blood Fury
					{ 32182 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 9 , 0.5 }, 			-- Heroism
					{ 90355 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 10, 0.5 }, 			-- Ancient Hysteria
					{ 80353 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 11, 0.5 }, 			-- Time Warp
				},
			},
			timerbar3 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
				},
			},
		},
	},
	SHAMAN = {
		timers = {
			timerbar1 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
				},
			},
			timerbar2 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
					{ 20572 , nil, "player", "DURATION", "PLAYERS", 0, "CENTER", nil, true, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 8 , 0.5 }, 			-- Blood Fury
					{ 32182 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 9 , 0.5 }, 			-- Heroism
					{ 90355 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 10, 0.5 }, 			-- Ancient Hysteria
					{ 80353 , nil, "player", "DURATION", "ANY"    , 0, "CENTER", nil,  nil, nil, nil, nil, nil, 0.4, 1 , 0 , nil, 1 , 11, 0.5 }, 			-- Time Warp
				},
			},
			timerbar3 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
				},
			},
		},
	},
	WARLOCK = {
		timers = {
			timerbar1 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,   9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17, 18 , 19, 20   , 21,  22 }, -- Index
					{ 980   , nil, "target", "DURATION", "PLAYERS", 1, "CENTER", nil,   nil, nil, 0.4, 1.4, nil, 0.4,  1,  0,  0, nil, 1 , 0.5 }, 			 -- Agony
					{ 105174, nil, "player", "COOLDOWN", "PLAYERS", 2, "CENTER", nil, false, nil, 0.4, 1.4, nil, 0.4,  1,  0,  0, nil, 2 , 0.5 }, 			 -- Hand of gul'dan
					{ 172   , nil, "target", "DURATION", "PLAYERS", 1, "CENTER", nil,   nil, nil, 0.4, 1.4, nil, 0.4,  1,  0,  0, nil, 3 , 0.5 }, 			 -- Corruption (Affliction)
					{ 172   , nil, "target", "DURATION", "PLAYERS", 2, "CENTER", nil,   nil, nil, 0.4, 1.4, nil, 0.4,  1,  0,  0, nil, 4 , 0.5 }, 			 -- Corruption (Demonology)
					{ 30108 , nil, "target", "DURATION", "PLAYERS", 1, "CENTER", nil,   nil, nil, 0.4, 1.4, nil, 0.4,  1,  0,  0, nil, 5 , 0.5 }, 			 -- Unstable Affliction
					{ 48181 , nil, "target", "DURATION", "PLAYERS", 1, "CENTER", nil,   nil, nil, 0.4, 1.4, nil, 0.4,  1,  0,  0, nil, 6 , 0.5 }, 			 -- Haunt
					{ 17962 , nil, "player", "COOLDOWN", "PLAYERS", 3, "CENTER", nil,   nil, nil, 0.4, 1.4, nil, 0.4,  1,  0,  0,   0, 7 , 0.5 }, 			 -- Conflagrate
					{ 104232, nil, "player", "DURATION", "PLAYERS", 3, "CENTER", nil,   nil, nil, 0.4, 1.4, nil, 0.4,  1,  0,  0, nil, 8 , 0.5 }, 			 -- Rain of Fire (Destruction)
					{ 113860, nil, "player", "COOLDOWN", "PLAYERS", 1, "CENTER", nil,   nil, nil, 0.4, 1.4, nil, 0.4,  1,  0,  0, nil, 9 , 0.5 }, 			 -- Dark Soul: Misery
					{ 113861, nil, "player", "COOLDOWN", "PLAYERS", 2, "CENTER", nil,   nil, nil, 0.4, 1.4, nil, 0.4,  1,  0,  0, nil, 10, 0.5 }, 			 -- Dark Soul: Knowledge
					{ 113858, nil, "player", "COOLDOWN", "PLAYERS", 3, "CENTER", nil,   nil, nil, 0.4, 1.4, nil, 0.4,  1,  0,  0, nil, 11, 0.5 }, 			 -- Dark Soul: Instability
					{ 80240 , nil, "player", "COOLDOWN", "PLAYERS", 3, "CENTER", nil,   nil, nil, 0.4, 1.4, nil, 0.4,  1,  0,  0, nil, 12, 0.5 }, 			 -- Havok
					{ 108359, nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil,  true, nil, 0.4, 1.4, nil, 0.4,  1,  0,  0, nil, 13, 0.5 }, 			 -- Dark Regeneration
					{ 5484  , nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil,  true, nil, 0.4, 1.4, nil, 0.4,  1,  0,  0, nil, 14, 0.5 }, 			 -- Howl of Terror
					{ 6789  , nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil,  true, nil, 0.4, 1.4, nil, 0.4,  1,  0,  0, nil, 15, 0.5 }, 			 -- Mortal Coil
					{ 30283 , nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil,  true, nil, 0.4, 1.4, nil, 0.4,  1,  0,  0, nil, 16, 0.5 }, 			 -- Shadowfury
					{ 108415, nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil,  true, nil, 0.4, 1.4, nil, 0.4,  1,  0,  0, nil, 17, 0.5 }, 			 -- Soul Link
					{ 108416, nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil,  true, nil, 0.4, 1.4, nil, 0.4,  1,  0,  0, nil, 18, 0.5 }, 			 -- Sacraficial Pact
					{ 110913, nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil,  true, nil, 0.4, 1.4, nil, 0.4,  1,  0,  0, nil, 19, 0.5 }, 			 -- Dark Bargin
					{ 111397, nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil,  true, nil, 0.4, 1.4, nil, 0.4,  1,  0,  0, nil, 20, 0.5 }, 			 -- Blood Horror
					{ 108482, nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil,  true, nil, 0.4, 1.4, nil, 0.4,  1,  0,  0, nil, 21, 0.5 }, 			 -- Unbound Will
					{ 104773, nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil,   nil, nil, 0.4, 1.4, nil, 0.4,  1,  0,  0, nil, 22, 0.5 }, 			 -- Unending Resolve
				},
			},
			timerbar2 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  , 9    , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18 , 19, 20   , 21,  22 }, -- Index
					{ 90355 , nil, "player", "DURATION",     "ANY", 0, "CENTER", nil,   nil, nil, nil, nil, nil, 0.4,  1,  0, nil,   1, 1 , 0.5 }, 			  -- Ancient Hystaria
					{ 117828, nil, "player", "DURATION", "PLAYERS", 3, "CENTER", nil,   nil, nil, 0.4, 1.4, nil, 0.4,  1,  0,   0, nil, 2 , 0.5 }, 			  -- Backdraft
					{ 20572 , nil, "player", "DURATION", "PLAYERS", 0, "CENTER", nil,  true, nil, nil, nil, nil, 0.4,  1,  0, nil,   1, 3 , 0.5 }, 			  -- Blood Fury
					{ 113858, nil, "player", "DURATION", "PLAYERS", 3, "CENTER", nil,   nil, nil, 0.4, 1.4, nil, 0.4,  1,  0,   0, nil, 4 , 0.5 }, 			  -- Dark Soul: Instability
					{ 113861, nil, "player", "DURATION", "PLAYERS", 2, "CENTER", nil,   nil, nil, 0.4, 1.4, nil, 0.4,  1,  0,   0, nil, 5 , 0.5 }, 			  -- Dark Soul: Knowledge
					{ 113860, nil, "player", "DURATION", "PLAYERS", 1, "CENTER", nil,   nil, nil, 0.4, 1.4, nil, 0.4,  1,  0,   0, nil, 6 , 0.5 }, 			  -- Dark Soul: Misery
					{ 80240 , nil, "player", "DURATION", "PLAYERS", 3, "CENTER", nil,   nil, nil, 0.4, 1.4, nil, 0.4,  1,  0,   0, nil, 7 , 0.5 }, 			  -- Havok
					{ 32182 , nil, "player", "DURATION",     "ANY", 0, "CENTER", nil,   nil, nil, nil, nil, nil, 0.4,  1,  0, nil,   1, 8 , 0.5 }, 			  -- Heroism
					{ 348  	, nil, "target", "DURATION", "PLAYERS", 3, "CENTER", nil, false, nil, 0.4, 1.4, nil, 0.4,  1,  0,   0, nil, 9 , 0.5 }, 			  -- Immolate
					{ 108366, nil, "player", "DURATION", "PLAYERS", 0, "CENTER", nil, false, nil, 0.4, 1.4, nil, 0.4,  1,  0,   0, nil, 10, 0.5 }, 			  -- Soul Leech
					{ 74434 , nil, "player", "DURATION", "PLAYERS", 1, "CENTER", nil,   nil, nil, 0.4, 1.4, nil, 0.4,  1,  0,   0, nil, 11, 0.5 }, 			  -- Soulburn
					{ 80353 , nil, "player", "DURATION",     "ANY", 0, "CENTER", nil,   nil, nil, nil, nil, nil, 0.4,  1,  0, nil,   1, 12, 0.5 }, 			  -- Time Warp
				},
			},
			timerbar3 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
				},
			},
		},
	},
	WARRIOR = {
		timers = {
			timerbar1 = {
				timers = {
				--  { 1         , 2  , 3         , 4                   , 5             , 6, 7             , 8  ,   9  ,  10 , 11 , 12 , 13 , 14, 15, 16, 17, 18, 19, 20  , 21,  22 },	-- Index
					{   12294, nil, "player", "COOLDOWN", "PLAYERS", 1, "CENTER", nil,   nil,  nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil,  1, 0.5}, 				-- Mortal Strike
                    {   23881, nil, "player", "COOLDOWN", "PLAYERS", 2, "CENTER", nil,   nil,  nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil,  2, 0.5}, 				-- Bloodthirst                 
                    {   23922, nil, "player", "COOLDOWN", "PLAYERS", 3, "CENTER", nil,   nil,  nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil,  3, 0.5}, 				-- Shield Bash
                    {   86346, nil, "player", "COOLDOWN", "PLAYERS", 1, "CENTER", nil,   nil,  nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil,  4, 0.5}, 				-- Colossus Smash - Arms
                    {   86346, nil, "player", "COOLDOWN", "PLAYERS", 2, "CENTER", nil,   nil,  nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil,  5, 0.5}, 				-- Colossus Smash - Fury
                    {     6572, nil, "player", "COOLDOWN", "PLAYERS", 3, "CENTER", nil,   nil,  nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil,  6, 0.5}, 				-- Revenge
                    {   18499, nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil,   nil,  nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil,  7, 0.5}, 				-- Berserker Rage
                    {   46924, nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil, true, nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil,  8, 0.5}, 				-- Bladestorm
                    {   46968, nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil, true, nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil,  9, 0.5}, 				-- Shockwave
                    { 118000, nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil, true, nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil, 10, 0.5}, 				-- Dragon Roar
                    { 107574, nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil, true, nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil, 12, 0.5}, 				-- Avatar
                    {   12292, nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil, true, nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil, 13, 0.5}, 				-- Bloodbath
                    { 107570, nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil, true, nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil, 14, 0.5}, 				-- Storm Bolt
                    {   64382, nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil, true, nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil, 16, 0.5}, 				-- Shattering Throw
                    {     1719, nil, "player", "COOLDOWN", "PLAYERS", 0, "CENTER", nil,   nil, nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil, 17, 0.5}, 				-- Recklessness
				},
			},
			timerbar2 = {
				timers = {
				--  { 1       ,  2  , 3         , 4                , 5               , 6, 7            , 8  , 9  , 10 , 11 , 12 , 13, 14 , 15, 16, 17, 18 , 19, 20  , 21,  22 },	-- Index
					{  64382, nil, "target", "DURATION",         "ANY", 0, "CENTER", nil, nil, nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil,  1, 0.5}, 					-- Shattering Throw
                    {    1719, nil, "player", "DURATION", "PLAYERS", 0, "CENTER", nil, nil, nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil,  2, 0.5}, 					-- Recklessness
                    {      871, nil, "player", "DURATION", "PLAYERS", 0, "CENTER", nil, nil, nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil,  3, 0.5}, 					-- Shield Wall
                    { 125565, nil, "player", "DURATION", "PLAYERS", 3, "CENTER", nil, nil, nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil,  4, 0.5}, 					-- Demoralizing Shout
                    { 118038, nil, "player", "DURATION", "PLAYERS", 1, "CENTER", nil, nil, nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil,  5, 0.5}, 					-- Die by the Sword - Arms
                    { 118038, nil, "player", "DURATION", "PLAYERS", 2, "CENTER", nil, nil, nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil,  6, 0.5}, 					-- Die by the Sword - Fury
                    {   12975, nil, "player", "DURATION", "PLAYERS", 3, "CENTER", nil, nil, nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil,  7, 0.5}, 					-- Last Stand
                    { 114192, nil, "player", "DURATION", "PLAYERS", 3, "CENTER", nil, nil, nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil,  8, 0.5}, 					-- Mocking Banner
                    {   97462, nil, "player", "DURATION", "PLAYERS", 0, "CENTER", nil, nil, nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil,  9, 0.5}, 					-- Rallying Cry
                    { 132404, nil, "player", "DURATION", "PLAYERS", 3, "CENTER", nil, nil, nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil, 10, 0.5}, 					-- Shield Block
                    { 115798, nil, "target", "DURATION", "PLAYERS", 0, "CENTER", nil, nil, nil, 0.4, 1.4, nil, 0.4,  1,   0,   0, nil, 11, 0.5}, 					-- Weakend Blows
				},
			},
			timerbar3 = {
				timers = {
				--  { 1     , 2  , 3       , 4         , 5        , 6, 7       , 8  ,  9  , 10 , 11 , 12 , 13 , 14 , 15, 16, 17 , 18, 19, 20   , 21,  22 }, -- Index
				},
			},
		},
	},
	-- Blackwing Descent
	alerts_BWD = {
		["BWD: Parasitic Infection"]         = { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 94679, target = "player", sparkles = true },
		["BWD: Fixate (Toxitron)"]           = { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 80094, target = "player", sparkles = true },
		["BWD: Lightning Conductor"]         = { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 91433, target = "player", sparkles = true },
		["BWD: Shadow Conductor"]     		 = { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 92053, target = "player", sparkles = true },
		["BWD: Consuming Flames (Maloriak)"] = { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 77786, target = "player", sparkles = true },
		["BWD: Fixate (Maloriak)"]           = { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 78617, target = "player", sparkles = true },
		["BWD: Dark Sludge"]                 = { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 92987, target = "player", sparkles = true },
		["BWD: Sonic Breath"]                = { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 92407, target = "player", sparkles = true },
		["BWD: Roaring Flame"]               = { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 92485, target = "player", sparkles = true },
		["BWD: Searing Flame"]               = { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 92423, target = "player", sparkles = true },
		["BWD: Dominion"]                    = { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 79318, target = "player", sparkles = true },
		["BWD: Stolen Power"]                = { enabled = true, alerttype = "BUFF"  , enablesound = true, sound = "Raid Warning", aura = 80627, target = "player", sparkles = true },
		["BWD: Explosive Cinders"]           = { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 79339, target = "player", sparkles = true },
	},
	-- Bastion of Twilight
	alerts_BOT = {
		["BOT: Waterlogged"]    		= { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 82762, target = "player", sparkles = true },
		["BOT: Heart of Ice"]			= { enabled = true, alerttype = "BUFF"  , enablesound = true, sound = "Raid Warning", aura = 82665, target = "player", sparkles = true },
		["BOT: Frost Beacon"]			= { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 93207, target = "player", sparkles = true },
		["BOT: Burning Blood"]			= { enabled = true, alerttype = "BUFF"  , enablesound = true, sound = "Raid Warning", aura = 82660, target = "player", sparkles = true },
		["BOT: Gravity Core"]			= { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 92075, target = "player", sparkles = true },
		["BOT: Lightning Rod (Arion)"]	= { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 83099, target = "player", sparkles = true },
		["BOT: Blackout"]     			= { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 86788, target = "player", sparkles = true },
		["BOT: Engulfing Magic"]   		= { enabled = true, alerttype = "BUFF"  , enablesound = true, sound = "Raid Warning", aura = 86622, target = "player", sparkles = true },
		["BOT: Twilight Meteorite"]  	= { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 88518, target = "player", sparkles = true },
		["BOT: Devouring Flames"]   	= { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 86840, target = "player", sparkles = true },
	},
	-- Mogu'shan Vaults
	alerts_MV = {
		["MV: Voodoo Doll"]    		  = { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 122151, target = "player", sparkles = true },
		["MV: Crossed Over"]   		  = { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 116161, target = "player", sparkles = true },
		["MV: Spiritual Innervation"] = { enabled = true, alerttype = "BUFF"  , enablesound = true, sound = "Raid Warning", aura = 117549, target = "player", sparkles = true },
		["MV: Arcane Resonance"]	  = { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 116434, target = "player", sparkles = true },
		["MV: Frail Soul"]			  = { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 117723, target = "player", sparkles = true },
	},
	-- Heart of Fear
	alerts_HOF = {
		["HoF: Pungency"] = { enabled = true, alerttype = "DEBUFF", enablesound = true, sound = "Raid Warning", aura = 123081, target = "player", sparkles = true },
	},
	-- Terrace of Endless Springs
	alerts_TOES = {
	},
	-- Throne of Thunder
	alerts_ToT = {
	},
	-- Player/Pet health alerts
	alerts_HEALTH = {
		["Player Health Alert"] = { enabled=true, alerttype="HEALTH",	 enablesound=true, sound="Raid Warning", aura="", target="player", sparkles=true, healthpercent=0.3 },
		["Pet Health Alert"] 	= { enabled=true, alerttype="PETHEALTH", enablesound=true, sound="Raid Warning", aura="", target="pet",    sparkles=true, healthpercent=0.3 },
	},
}

function JSHB.ImportAlerts(importKey)
	for key,val in pairs(JSHB.defaultDefaults[importKey]) do
		for key2,val2 in pairs(JSHB.defaultDefaults[importKey][key]) do
			if not JSHB.db.profile.alerts.alerts[key] then JSHB.db.profile.alerts.alerts[key] = {} end
			JSHB.db.profile.alerts.alerts[key][key2] = JSHB.DeepCopy(JSHB.defaultDefaults[importKey][key][key2])
		end
	end
end

--[[
	This function returns a deep copy of a given table.
	The function below also copies the metatable to the new table if there is one,
	so the behaviour of the copied table is the same as the original.
	*** But the 2 tables share the same metatable, you can avoid this by setting the
	"deepcopymeta" option to true to make a copy of the metatable, as well.
--]]

function JSHB.DeepCopy(object, deepcopymeta)
    local lookup_table = {}
    local function _copy(object)
        if type(object) ~= "table" then
            return object
        elseif lookup_table[object] then
            return lookup_table[object]
        end
        local new_table = {}
        lookup_table[object] = new_table
        for index, value in pairs(object) do
            new_table[_copy(index)] = _copy(value)
        end
        return setmetatable(new_table, deepcopymeta and _copy(getmetatable(object) ) or getmetatable(object) )
    end
    return _copy(object)
end

--[[
	Defaults need to be setup after the options table is defined in Ace (defaults that may be totally removed).
	If not, when you remove an object (as in timers), it will create a 'nil' table entry and totally fuck things up.
--]]

function JSHB.CheckForNewInstallSetup(forceIt)
	if (JSHB.db.profile.newinstall == false) and (not forceit) then return end
	
	-- Timer sets, merge default defaluts into the profile for new installs
	for key,val in pairs(JSHB.defaultDefaults[JSHB.playerClass].timers) do
		for key2,val2 in pairs(JSHB.defaultDefaults[JSHB.playerClass].timers[key]) do
			if not JSHB.db.profile.timers[key] then JSHB.db.profile.timers[key] = {} end
			JSHB.db.profile.timers[key][key2] = JSHB.DeepCopy(JSHB.defaultDefaults[select(2, UnitClass("player") )].timers[key][key2])
		end
	end
	
	JSHB.db.profile.newinstall = false
end

function JSHB.ClearTimersForSet(barNum)
	wipe(JSHB.db.profile.timers["timerbar"..barNum].timers)
end

function JSHB.ImportDefaultTimersForSet(barNum)
	if not JSHB.db.profile.timers["timerbar"..barNum] then
		JSHB.db.profile.timers["timerbar"..barNum] = {}
	end
	
	JSHB.ClearTimersForSet(barNum) -- Clear the current timers
	
	for key,val in pairs(JSHB.defaultDefaults[JSHB.playerClass].timers["timerbar"..barNum]) do
		JSHB.db.profile.timers["timerbar"..barNum][key] = JSHB.DeepCopy(JSHB.defaultDefaults[JSHB.playerClass].timers["timerbar"..barNum][key])
	end
end