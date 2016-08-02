------------------------------------------------
---- Raeli's Spell Announcer Warlock Module ----
------------------------------------------------
local RSA = LibStub("AceAddon-3.0"):GetAddon("RSA")
local L = LibStub("AceLocale-3.0"):GetLocale("RSA")
local RSA_Warlock = RSA:NewModule("Warlock")
function RSA_Warlock:OnInitialize()
	if RSA.db.profile.General.Class == "WARLOCK" then
		RSA_Warlock:SetEnabledState(true)
	else
		RSA_Warlock:SetEnabledState(false)
	end
end -- End OnInitialize
local spellinfo,spelllinkinfo,extraspellinfo,extraspellinfolink,missinfo
function RSA_Warlock:OnEnable()
	RSA.db.profile.Modules.Warlock = true -- Set state to loaded, to know if we should announce when a spell is refreshed.
	local pName = UnitName("player")
	local Config_SpellLock = { -- Spell Lock
		profile = 'SpellLock',
		replacements = { TARGET = 1, extraSpellName = "[TARSPELL]", extraSpellLink = "[TARLINK]" }
	}
	local Config_SpellLock_Missed = { -- Spell Lock
		profile = 'SpellLock',
		section = 'End',
		immuneSection = "Immune",
		replacements = { TARGET = 1, MISSTYPE = 1 },
	}
	local Config_Fear = { -- Fear
		profile = 'Fear',
		replacements = { TARGET = 1 }
	}
	local Config_Fear_End = { -- Fear
		profile = 'Fear',
		section = 'End',
		replacements = { TARGET = 1 }
	}
	local Config_Seduce = { -- Seduce
		profile = 'Seduce',
		replacements = { TARGET = 1 }
	}
	local Config_Seduce_End = { -- Seduce
		profile = 'Seduce',
		section = 'End',
		replacements = { TARGET = 1 }
	}
	local Config_SingeMagic = { -- Singe Magic
		profile = 'SingeMagic',
		replacements = { TARGET = 1, extraSpellName = "[AURA]", extraSpellLink = "[AURALINK]" }
	}
	local MonitorConfig_Warlock = {
		player_profile = RSA.db.profile.Warlock,
		SPELL_AURA_APPLIED = {
			[118699] = Config_Fear, -- FEAR
			[130616] = Config_Fear, -- FEAR (Glyph of Fear)
			[6358] = Config_Seduce, -- SEDUCE
			--[[[196099] = { -- GRIMOIRE OF SACRIFICE
				profile = 'GrimoireOfSacrifice',
				targetIsMe = 1
			},]]--
			[110913] = { -- DARK BARGAIN
				profile = 'DarkBargain'
			},
			[104773] = { -- UNENDING RESOLVE
				profile = 'UnendingResolve'
			},
			[17735] = { -- SUFFERING
				profile = 'Suffering',
				replacements = { TARGET = 1 }
			},
			[710] = { -- BANISH
				profile = 'Banish',
				replacements = { TARGET = 1 }
			},
			[6789] = { -- MORTAL COIL
				profile = 'DeathCoil',
				replacements = { TARGET = 1 }
			},
			[30283] = { -- SHADOWFURY
				profile = 'Shadowfury',
				replacements = { TARGET = 1 }
			},
		},
		SPELL_CAST_SUCCESS = {
			[698] = { -- SUMMONING STONE
				profile = 'SummonStone'
			},
			[5484] = { -- HOWL OF TERROR
				profile = 'HowlOfTerror',
			},
			[111771] = { -- DEMONIC GATEWAY
				profile = 'Gateway'
			},
			[20707] = { -- SOULSTONE
				profile = 'Soulstone',
				replacements = { TARGET = 1 },
				section = 'End'
			}
		},
		SPELL_AURA_REMOVED = {
			[118699] = Config_Fear_End, -- FEAR
			[130616] = Config_Fear_End, -- FEAR (Glyph of Fear)
			[6358] = Config_Seduce_End, -- SEDUCE
			[710] = { -- BANISH
				profile = 'Banish',
				replacements = { TARGET = 1 },
				section = 'End'
			},
			[110913] = { -- DARK BARGAIN
				profile = 'DarkBargain',
				section = 'End'
			},
			[104773] = { -- UNENDING RESOLVE
				profile = 'UnendingResolve',
				section = 'End'
			},
			[5484] = { -- HOWL OF TERROR
				profile = 'HowlOfTerror',
				replacements = { TARGET = 1 },
				section = 'End'
			}
		},
		SPELL_CAST_START = {
			[29893] = { -- SOULWELL
				profile = 'SoulWell'
			}
		},
		SPELL_DISPEL = {
			[89808] = Config_SingeMagic -- SINGE MAGIC
		},
		SPELL_DISPEL_FAILED = {
			[19505] = { -- DEVOUR MAGIC
				profile = 'Devour',
				section = 'End',
				replacements = { TARGET = 1, extraSpellName = "[AURA]", extraSpellLink = "[AURALINK]" }
			}
		},
		SPELL_STOLEN = {
			--[[[115284] = { -- CLONE MAGIC
				profile = 'CloneMagic',
				replacements = { TARGET = 1, extraSpellName = "[AURA]", extraSpellLink = "[AURALINK]" }
			}]]--
		},
		SPELL_INTERRUPT = {
			--[132409] = Config_SpellLock, -- SPELL LOCK (Grimoire of Sacrifice)
			[19647] = Config_SpellLock, -- Felhunter Spell Lock
			--[115781] = Config_SpellLock, -- Observer Optical Blast
			[171138] = Config_SpellLock, -- Terrorguard Shadow Lock
		},
		SPELL_MISSED = {
			--[132409] = Config_SpellLock_Missed, -- SPELL LOCK (Grimoire of Sacrifice)
			[19647] = Config_SpellLock_Missed, -- Felhunter Spell Lock
			--[115781] = Config_SpellLock_Missed, -- Observer Optical Blast
			[171138] = Config_SpellLock_Missed, -- Terrorguard Shadow Lock
			[17735] = {-- SUFFERING
				profile = 'Suffering',
				section = 'End',
				immuneSection = "Immune",
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
			[115284] = {-- CLONE MAGIC
				profile = 'CloneMagic',
				section = 'End',
				immuneSection = "Immune",
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
			[710] = {-- BANISH
				profile = 'Banish',
				section = 'End',
				immuneSection = "Immune",
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
			[5782] = {-- FEAR
				profile = 'Fear',
				section = 'End',
				immuneSection = "Immune",
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
		},
	}
	RSA.MonitorConfig(MonitorConfig_Warlock, UnitGUID("player"))
	local MonitorAndAnnounce = RSA.MonitorAndAnnounce
	local ResTarget = L["Unknown"]
	local Ressed
	local function Warlock_Spells(self, _, timestamp, event, hideCaster, sourceGUID, source, sourceFlags, sourceRaidFlag, destGUID, dest, destFlags, destRaidFlags, spellID, spellName, spellSchool, missType, ex2, ex3, ex4)
		if RSA.AffiliationMine(sourceFlags) then
			if (event == "SPELL_CAST_SUCCESS" and RSA.db.profile.Modules.Reminders_Loaded == true) then -- Reminder Refreshed
				local ReminderSpell = RSA.db.profile.Warlock.Reminders.SpellName
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
	RSA.CombatLogMonitor:SetScript("OnEvent", Warlock_Spells)
	------------------------------
	---- Resurrection Monitor ----
	------------------------------
	local function Warlock_Soulstone(_, event, source, spell, rank, dest, spellID)
		if UnitName(source) == pName then
			if spell == GetSpellInfo(20707) and RSA.db.profile.Warlock.Spells.Soulstone.Messages.Start ~= "" then -- SOULSTONE
				if event == "UNIT_SPELLCAST_SENT" and UnitIsPlayer(dest) then
					Ressed = false
					if (dest == L["Unknown"] or dest == nil) then
						if UnitExists("target") ~= 1 or (UnitHealth("target") > 1 and UnitIsDeadOrGhost("target") ~= 1) then
							if GameTooltipTextLeft1:GetText() == nil then
								dest = L["Unknown"]
								ResTarget = L["Unknown"]
							else
								dest = string.gsub(GameTooltipTextLeft1:GetText(), L["Corpse of "], "")
								ResTarget = string.gsub(GameTooltipTextLeft1:GetText(), L["Corpse of "], "")
							end
						else
							dest = UnitName("target")
							ResTarget = UnitName("target")
						end
					else
						ResTarget = dest
					end
					spellinfo = GetSpellInfo(20707) spelllinkinfo = GetSpellLink(20707)
					RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					if RSA.db.profile.Warlock.Spells.Soulstone.Messages.Start ~= "" then
						if RSA.db.profile.Warlock.Spells.Soulstone.Local == true then
							RSA.Print_LibSink(string.gsub(RSA.db.profile.Warlock.Spells.Soulstone.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.Soulstone.Yell == true then
							RSA.Print_Yell(string.gsub(RSA.db.profile.Warlock.Spells.Soulstone.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.Soulstone.Whisper == true and dest ~= pName then
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = L["You"],}
							RSA.Print_Whisper(string.gsub(RSA.db.profile.Warlock.Spells.Soulstone.Messages.Start, ".%a+.", RSA.String_Replace), dest)
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
						end
						if RSA.db.profile.Warlock.Spells.Soulstone.CustomChannel.Enabled == true then
							RSA.Print_Channel(string.gsub(RSA.db.profile.Warlock.Spells.Soulstone.Messages.Start, ".%a+.", RSA.String_Replace), RSA.db.profile.Warlock.Spells.Soulstone.CustomChannel.Channel)
						end
						if RSA.db.profile.Warlock.Spells.Soulstone.Say == true then
							RSA.Print_Say(string.gsub(RSA.db.profile.Warlock.Spells.Soulstone.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.Soulstone.SmartGroup == true then
							RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Warlock.Spells.Soulstone.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.Soulstone.Party == true then
							if RSA.db.profile.Warlock.Spells.Soulstone.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
							RSA.Print_Party(string.gsub(RSA.db.profile.Warlock.Spells.Soulstone.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Warlock.Spells.Soulstone.Raid == true then
							if RSA.db.profile.Warlock.Spells.Soulstone.SmartGroup == true and GetNumGroupMembers() > 0 then return end
							RSA.Print_Raid(string.gsub(RSA.db.profile.Warlock.Spells.Soulstone.Messages.Start, ".%a+.", RSA.String_Replace))
						end
					end
				end
			end
		end -- SOULSTONE
	end -- END FUNCTION
	RSA.ResMon = RSA.ResMon or CreateFrame("Frame", "RSA:RM")
	RSA.ResMon:RegisterEvent("UNIT_SPELLCAST_SENT")
	RSA.ResMon:SetScript("OnEvent", Warlock_Soulstone)
end -- END ON ENABLED
function RSA_Warlock:OnDisable()
	RSA.CombatLogMonitor:SetScript("OnEvent", nil)
	RSA.ResMon:SetScript("OnEvent", nil)
end