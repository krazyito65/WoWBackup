-----------------------------------------------------
---- Raeli's Spell Announcer Death Knight Module ----
-----------------------------------------------------
local RSA = LibStub("AceAddon-3.0"):GetAddon("RSA")
local L = LibStub("AceLocale-3.0"):GetLocale("RSA")
local RSA_DeathKnight = RSA:NewModule("DeathKnight")
function RSA_DeathKnight:OnInitialize()
	if RSA.db.profile.General.Class == "DEATHKNIGHT" then
		RSA_DeathKnight:SetEnabledState(true)
	else
		RSA_DeathKnight:SetEnabledState(false)
	end
end -- End OnInitialize
function RSA_DeathKnight:OnEnable()
	local Config_DeathGrip_Missed = { -- DEATH GRIP MISSED
		profile = 'DeathGrip',
		section = 'End',
		immuneSection = "Immune",
		replacements = { TARGET = 1, MISSTYPE = 1 },
	}
	local MonitorConfig_DeathKnight = {
		player_profile = RSA.db.profile.DeathKnight,
		SPELL_INTERRUPT = {
			[47528] = { -- MIND FREEZE
				profile = 'MindFreeze',
				replacements = { TARGET = 1, extraSpellName = "[TARSPELL]", extraSpellLink = "[TARLINK]" }
			}
		},
		SPELL_CAST_SUCCESS = {
			[48707] = { -- ANTI MAGIC SHELL
				profile = 'AMS'
			},
			[51052] = { -- ANTI MAGIC ZONE
				profile = 'AMZ'
			},
			[42650] = { -- ARMY OF THE DEAD
				profile = 'Army'
			},
			[49028] = { -- DANCING RUNE WEAPON
				profile = 'DancingRuneWeapon'
			},
			[48792] = { -- ICEBOUND FORTITUDE
				profile = 'IceboundFortitude'
			},
			[49039] = { -- LICHBORNE
				profile = 'Lichborne'
			},
			[51271] = { -- PILLAR OF FROST
				profile = 'PillarOfFrost'
			},
			[61999] = { -- RAISE ALLY
				profile = 'RaiseAlly',
				replacements = { TARGET = 1 }
			},
			[55233] = { -- VAMPIRIC BLOOD
				profile = 'VampiricBlood'
			}
		},
		SPELL_AURA_APPLIED = {
			[108194] = { -- ASPHYXIATE
				profile = 'Asphyxiate',
				replacements = { TARGET = 1 }
			},
			[119975] ={ -- CONVERSION
				profile = 'Conversion'
			},
			[56222] ={ -- DARK COMMAND
				profile = 'DarkCommand',
				replacements = { TARGET = 1 }
			},
			[49560] = { -- DEATH GRIP
				profile = 'DeathGrip',
				replacements = { TARGET = 1 }
			},
			[116888] = { -- PURGATORY
				profile = 'Purgatory'
			},
			[194679] = { -- RUNE TAP
				profile = 'RuneTap'
			},
			[47476] = { -- STRANGULATE
				profile = 'Strangulate',
				replacements = { TARGET = 1 }
			}
		},
		SPELL_AURA_REMOVED = {
			[48707] = { -- ANTI MAGIC SHELL
				profile = 'AMS',
				section = 'End'
			},
			[108194] = { -- ASPHYXIATE
				profile = 'Asphyxiate',
				replacements = { TARGET = 1 },
				section = 'End'
			},
			[119975] ={ -- CONVERSION
				profile = 'Conversion',
				section = 'End'
			},
			[81256] = { -- DANCING RUNE WEAPON
				profile = 'DancingRuneWeapon',
				section = 'End'
			},
			[48792] = { -- ICEBOUND FORTITUDE
				profile = 'IceboundFortitude',
				section = 'End'
			},
			[49039] = { -- LICHBORNE
				profile = 'Lichborne',
				section = 'End'
			},
			[51271] = { -- PILLAR OF FROST
				profile = 'PillarOfFrost',
				section = 'End'
			},
			[116888] = { -- PURGATORY
				profile = 'Purgatory',
				section = 'End'
			},
			[194679] = { -- RUNE TAP
				profile = 'RuneTap',
				section = 'End'
			},
			[47476] = { -- STRANGULATE
				profile = 'Strangulate',
				replacements = { TARGET = 1 },
				section = 'End'
			},
			[55233] = { -- VAMPIRIC BLOOD
				profile = 'VampiricBlood',
				section = 'End'
			}
		},
		SPELL_MISSED = {
			[49560] = Config_DeathGrip_Missed,
			[49576] = Config_DeathGrip_Missed,
			[108194] = {-- Asphyxiate
				profile = 'Asphyxiate',
				section = 'Resist',
				immuneSection = "Immune",
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
			[47476] = {-- Strangulate
				profile = 'Strangulate',
				section = 'Resist',
				immuneSection = "Immune",
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
			[56222] = {-- DARK COMMAND
				profile = 'DarkCommand',
				section = 'End',
				immuneSection = "Immune",
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
			[47528] = {-- MIND FREEZE
				profile = 'MindFreeze',
				section = 'End',
				immuneSection = "Immune",
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
		},
		SPELL_HEAL = {
			[48743] = { -- DEATH PACT
				profile = 'DeathPact',
				replacements = { AMOUNT = 1 }
			}
		},
	}
	RSA.MonitorConfig(MonitorConfig_DeathKnight, UnitGUID("player"))
	local MonitorAndAnnounce = RSA.MonitorAndAnnounce
	RSA.db.profile.Modules.DeathKnight = true -- Set state to loaded, to know if we should announce when a spell is refreshed.
	local pName = UnitName("player")
	local spellinfo,spelllinkinfo,extraspellinfo,extraspellinfolink,missinfo
	local function DeathKnight_Spells(self, _, timestamp, event, hideCaster, sourceGUID, source, sourceFlags, sourceRaidFlag, destGUID, dest, destFlags, destRaidFlags, spellID, spellName, spellSchool, missType, ex2, ex3, ex4)
		if RSA.AffiliationMine(sourceFlags) then
			if (event == "SPELL_CAST_SUCCESS" and RSA.db.profile.Modules.Reminders_Loaded == true) then -- Reminder Refreshed
				local ReminderSpell = RSA.db.profile.DeathKnight.Reminders.SpellName
				if spellName == ReminderSpell and (dest == pName or dest == nil) then
					RSA.Reminder:SetScript("OnUpdate", nil)
					if RSA.db.profile.Reminders.RemindChannels.Chat == true then
						RSA.Print_Self(ReminderSpell .. L[" Refreshed!"])
					end
					if RSA.db.profile.Reminders.RemindChannels.RaidWarn == true then
						RSA.Print_Self_RW(ReminderSpell .. L[" Refreshed!"])
					end
				end
			end -- BUFF REMINDER
			MonitorAndAnnounce(self, _, timestamp, event, hideCaster, sourceGUID, source, sourceFlags, sourceRaidFlag, destGUID, dest, destFlags, destRaidFlags, spellID, spellName, spellSchool, missType, ex2, ex3, ex4)
		end -- IF SOURCE IS PLAYER
	end -- END ENTIRELY
	RSA.CombatLogMonitor:SetScript("OnEvent", DeathKnight_Spells)
end -- END ON ENABLED
function RSA_DeathKnight:OnDisable()
	RSA.CombatLogMonitor:SetScript("OnEvent", nil)
end
