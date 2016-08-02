-----------------------------------------------
---- Raeli's Spell Announcer Priest Module ----
-----------------------------------------------
local RSA = LibStub("AceAddon-3.0"):GetAddon("RSA")
local L = LibStub("AceLocale-3.0"):GetLocale("RSA")
local RSA_Priest = RSA:NewModule("Priest")
function RSA_Priest:OnInitialize()
	if RSA.db.profile.General.Class == "PRIEST" then
		RSA_Priest:SetEnabledState(true)
	else
		RSA_Priest:SetEnabledState(false)
	end
end -- End OnInitialize
local spellinfo,spelllinkinfo,extraspellinfo,extraspellinfolink,missinfo
function RSA_Priest:OnEnable()
	RSA.db.profile.Modules.Priest = true -- Set state to loaded, to know if we should announce when a spell is refreshed.
	local pName = UnitName("player")
	local MonitorConfig_Priest = {
		player_profile = RSA.db.profile.Priest,
		SPELL_AURA_APPLIED = {
			[9484] = { -- SHACKLE UNDEAD
				profile = 'ShackleUndead',
				replacements = { TARGET = 1 }
			},
			[605] = { -- MIND CONTROL
				profile = 'MindControl',
				replacements = { TARGET = 1 }
			},
			[15286] = { -- VAMPIRIC EMBRACE
				profile = 'VampiricEmbrace',
				replacements = { TARGET = 1 }
			},
			[65081] = { -- BODY AND SOUL
				profile = 'BodyAndSoul',
				replacements = { TARGET = 1 }
			},
			[109964] = { -- SPIRIT SHELL
				profile = 'SpiritShell'
			},
			[112833] = { -- SPECTRAL GUISE
				profile = 'SpectralGuise'
			},
		},
		SPELL_CAST_START = {
			[212036] = { -- MASS RESURRECTION
				profile = 'MassRess'
			},
		},
		SPELL_CAST_SUCCESS = {
			[212036] = { -- MASS RESURRECTION
				profile = 'MassRess',
				section = 'End'
			},
			[73325] = { -- LEAP OF FAITH
				profile = 'LeapOfFaith',
				replacements = { TARGET = 1 }
			},
			[32375] = { -- MASS DISPEL
				profile = 'MassDispel'
			},
			[62618] = { -- POWER WORD: BARRIER
				profile = 'PowerWordBarrier'
			},
			[64843] = { -- DIVINE HYMN
				profile = 'DivineHymn'
			},
			[1706] = { -- LEVITATE
				profile = 'Levitate',
				replacements = { TARGET = 1 }
			},
			[33206] = { -- PAIN SUPPRESSION
				profile = 'PainSuppression',
				replacements = { TARGET = 1 }
			},
			[10060] = { -- POWER INFUSION
				profile = 'PowerInfusion'
			},
			[586] = { -- FADE
				profile = 'Fade'
			},
			[64044] = { -- PSYCHIC HORROR
				profile = 'PsychicHorror',
				replacements = { TARGET = 1 }
			},
			[34433] = { -- SHADOWFIEND (normal)
				profile = 'Shadowfiend'
			},
			[123040] = { -- SHADOWFIEND (mindbender, looks like a little sha)
				profile = 'Shadowfiend'
			},
			[47788] = { -- GUARDIAN SPIRIT
				profile = 'GuardianSpirit',
				replacements = { TARGET = 1 }
			},
			[8122] = { -- PSYCHIC SCREAM
				profile = 'PsychicScream'
			},
			[64901] = { -- SYMBOL OF HOPE
				profile = 'SymbolOfHope'
			},
		},
		SPELL_AURA_REMOVED = {
			[15286] = { -- VAMPIRIC EMBRACE
				profile = 'VampiricEmbrace',
				section = 'End'
			},
			[64843] = { -- DIVINE HYMN
				profile = 'DivineHymn',
				section = 'End'
			},
			[111759] = { -- LEVITATE
				profile = 'Levitate',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[9484] = { -- SHACKLE UNDEAD
				profile = 'ShackleUndead',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[33206] = { -- PAIN SUPPRESSION
				profile = 'PainSuppression',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[10060] = { -- POWER INFUSION
				profile = 'PowerInfusion',
				section = 'End'
			},
			[586] = { -- FADE
				profile = 'Fade',
				section = 'End'
			},
			[15487] = { -- SILENCE
				profile = 'Silence',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[64044] = { -- PSYCHIC HORROR
				profile = 'PsychicHorror',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[112833] = { -- SPECTRAL GUISE
				profile = 'SpectralGuise',
				section = 'End'
			},
			[47788] = { -- GUARDIAN SPIRIT
				profile = 'GuardianSpirit',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[605] = { -- MIND CONTROL
				profile = 'MindControl',
				section = 'End',
				targetNotMe = 1,
				replacements = { TARGET = 1 }
			},
			[64901] = { -- SYMBOL OF HOPE
				profile = 'SymbolOfHope',
				section = 'End',
				targetIsMe = 1
			},
		},
		SPELL_DISPEL = {
			[528] = { -- DISPEL MAGIC
				profile = 'DispelMagic',
				replacements = { TARGET = 1, extraSpellName = "[AURA]", extraSpellLink = "[AURALINK]" }
			},
			[527] = { -- PURIFY
				profile = 'Purify',
				replacements = { TARGET = 1, extraSpellName = "[AURA]", extraSpellLink = "[AURALINK]" }
			}
		},
		SPELL_DISPEL_FAILED = {
			[528] = { -- DISPEL MAGIC
				profile = 'DispelMagic',
				section = 'End',
				replacements = { TARGET = 1, extraSpellName = "[AURA]", extraSpellLink = "[AURALINK]" }
			},
		},
		SPELL_INTERRUPT = {
			[32747] = { -- SILENCE
				profile = 'Silence',
				replacements = { TARGET = 1, extraSpellName = "[TARSPELL]", extraSpellLink = "[TARLINK]" }
			},
		},
	}
	RSA.MonitorConfig(MonitorConfig_Priest, UnitGUID("player"))
	local MonitorAndAnnounce = RSA.MonitorAndAnnounce
	local RSA_Silenced = false -- If we Interrupt and Silence our target, it will fire two events, both of which have announcements linked, this variable is to stop that.
	local RSA_PWBTimer = CreateFrame("Frame", "RSA:PWBTimer") -- Because Power Word: Barrier has no event for end message.
	local PWBTimeElapsed = 0.0
	local RSA_PsychicScream = false
	local ResTarget = L["Unknown"]
	local Ressed
	local function Priest_Spells(self, _, timestamp, event, hideCaster, sourceGUID, source, sourceFlags, sourceRaidFlag, destGUID, dest, destFlags, destRaidFlags, spellID, spellName, spellSchool, missType, ex2, ex3, ex4)
		if RSA.AffiliationMine(sourceFlags) then
			if (event == "SPELL_CAST_SUCCESS" and RSA.db.profile.Modules.Reminders_Loaded == true) then -- Reminder Refreshed
				local ReminderSpell = RSA.db.profile.Priest.Reminders.SpellName
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
			if event == "SPELL_AURA_APPLIED" then
				if spellID == 15487 and RSA_Silenced == false then -- SILENCE
					spellinfo = GetSpellInfo(spellID)
					spelllinkinfo = GetSpellLink(spellID)
					RSA_Silenced = true
					RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					if RSA.db.profile.Priest.Spells.Silence.Messages.Debuff ~= "" then
						if RSA.db.profile.Priest.Spells.Silence.Local == true then
							RSA.Print_LibSink(string.gsub(RSA.db.profile.Priest.Spells.Silence.Messages.Debuff, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Priest.Spells.Silence.Yell == true then
							RSA.Print_Yell(string.gsub(RSA.db.profile.Priest.Spells.Silence.Messages.Debuff, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Priest.Spells.Silence.CustomChannel.Enabled == true then
							RSA.Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.Silence.Messages.Debuff, ".%a+.", RSA.String_Replace), RSA.db.profile.Priest.Spells.Silence.CustomChannel.Channel)
						end
						if RSA.db.profile.Priest.Spells.Silence.Say == true then
							RSA.Print_Say(string.gsub(RSA.db.profile.Priest.Spells.Silence.Messages.Debuff, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Priest.Spells.Silence.SmartGroup == true then
							RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Priest.Spells.Silence.Messages.Debuff, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Priest.Spells.Silence.Party == true then
							if RSA.db.profile.Priest.Spells.Silence.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
							RSA.Print_Party(string.gsub(RSA.db.profile.Priest.Spells.Silence.Messages.Debuff, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Priest.Spells.Silence.Raid == true then
							if RSA.db.profile.Priest.Spells.Silence.SmartGroup == true and GetNumGroupMembers() > 0 then return end
							RSA.Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.Silence.Messages.Debuff, ".%a+.", RSA.String_Replace))
						end
					end
				end -- SILENCE
			end -- IF EVENT IS SPELL_AURA_APPLIED
			if event == "SPELL_CAST_SUCCESS" then
				if spellID == 62618 then -- POWER WORD: BARRIER timed end message
					if RSA.db.profile.Priest.Spells.PowerWordBarrier.Messages.End ~= "" then
						PWBTimeElapsed = 0.0 -- Start a timer for end announcement, because Power Word Barrier has no reliable end event in combat log.
						local duration = 10.5
						local function PWBTimer(self, elapsed)
							PWBTimeElapsed = PWBTimeElapsed + elapsed
							if PWBTimeElapsed < duration then return end
							RSA_PWBTimer:SetScript("OnUpdate", nil)
							PWBTimeElapsed = PWBTimeElapsed - floor(PWBTimeElapsed)
							spellinfo = GetSpellInfo(spellID)
							spelllinkinfo = GetSpellLink(spellID)
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo,}
							if RSA.db.profile.Priest.Spells.PowerWordBarrier.Local == true then
								RSA.Print_LibSink(string.gsub(RSA.db.profile.Priest.Spells.PowerWordBarrier.Messages.End, ".%a+.", RSA.String_Replace))
							end
							if RSA.db.profile.Priest.Spells.PowerWordBarrier.Yell == true then
								RSA.Print_Yell(string.gsub(RSA.db.profile.Priest.Spells.PowerWordBarrier.Messages.End, ".%a+.", RSA.String_Replace))
							end
							if RSA.db.profile.Priest.Spells.PowerWordBarrier.CustomChannel.Enabled == true then
								RSA.Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.PowerWordBarrier.Messages.End, ".%a+.", RSA.String_Replace), RSA.db.profile.Priest.Spells.PowerWordBarrier.CustomChannel.Channel)
							end
							if RSA.db.profile.Priest.Spells.PowerWordBarrier.Say == true then
								RSA.Print_Say(string.gsub(RSA.db.profile.Priest.Spells.PowerWordBarrier.Messages.End, ".%a+.", RSA.String_Replace))
							end
							if RSA.db.profile.Priest.Spells.PowerWordBarrier.SmartGroup == true then
								RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Priest.Spells.PowerWordBarrier.Messages.End, ".%a+.", RSA.String_Replace))
							end
							if RSA.db.profile.Priest.Spells.PowerWordBarrier.Party == true then
								if RSA.db.profile.Priest.Spells.PowerWordBarrier.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
								RSA.Print_Party(string.gsub(RSA.db.profile.Priest.Spells.PowerWordBarrier.Messages.End, ".%a+.", RSA.String_Replace))
							end
							if RSA.db.profile.Priest.Spells.PowerWordBarrier.Raid == true then
								if RSA.db.profile.Priest.Spells.PowerWordBarrier.SmartGroup == true and GetNumGroupMembers() > 0 then return end
								RSA.Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.PowerWordBarrier.Messages.End, ".%a+.", RSA.String_Replace))
							end
						end
						RSA_PWBTimer:SetScript("OnUpdate", PWBTimer)
					end
				end -- POWER WORD: BARRIER
				if spellID == 8122 then -- PSYCHIC SCREAM
					RSA_PsychicScream = false -- announcement done in unified core
				end -- PSYCHIC SCREAM
			end -- IF EVENT IS SPELL_CAST_SUCCESS
			if event == "SPELL_AURA_REMOVED" then
				if spellID == 8122 and RSA_PsychicScream == false then -- PSYCHIC SCREAM
					RSA_PsychicScream = true
					spellinfo = GetSpellInfo(spellID)
					spelllinkinfo = GetSpellLink(spellID)
					RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo,}
					if RSA.db.profile.Priest.Spells.PsychicScream.Messages.End ~= "" then
						if RSA.db.profile.Priest.Spells.PsychicScream.Local == true then
							RSA.Print_LibSink(string.gsub(RSA.db.profile.Priest.Spells.PsychicScream.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Priest.Spells.PsychicScream.Yell == true then
							RSA.Print_Yell(string.gsub(RSA.db.profile.Priest.Spells.PsychicScream.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Priest.Spells.PsychicScream.CustomChannel.Enabled == true then
							RSA.Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.PsychicScream.Messages.End, ".%a+.", RSA.String_Replace), RSA.db.profile.Priest.Spells.PsychicScream.CustomChannel.Channel)
						end
						if RSA.db.profile.Priest.Spells.PsychicScream.Say == true then
							RSA.Print_Say(string.gsub(RSA.db.profile.Priest.Spells.PsychicScream.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Priest.Spells.PsychicScream.SmartGroup == true then
							RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Priest.Spells.PsychicScream.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Priest.Spells.PsychicScream.Party == true then
							if RSA.db.profile.Priest.Spells.PsychicScream.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
							RSA.Print_Party(string.gsub(RSA.db.profile.Priest.Spells.PsychicScream.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Priest.Spells.PsychicScream.Raid == true then
							if RSA.db.profile.Priest.Spells.PsychicScream.SmartGroup == true and GetNumGroupMembers() > 0 then return end
							RSA.Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.PsychicScream.Messages.End, ".%a+.", RSA.String_Replace))
						end
					end
				end -- PSYCHIC SCREAM
				if spellID == 15487 then -- SILENCE
					RSA_Silenced = false -- announcement done in unified core
				end -- SILENCE
			end -- IF EVENT IS SPELL_AURA_REMOVED
			if event == "SPELL_INTERRUPT" then
				if spellID == 32747 then -- SILENCE
					RSA_Silenced = true -- announcement done in unified core
				end -- SILENCE
			end -- IF EVENT IS SPELL_INTERRUPT
			MonitorAndAnnounce(self, _, timestamp, event, hideCaster, sourceGUID, source, sourceFlags, sourceRaidFlag, destGUID, dest, destFlags, destRaidFlags, spellID, spellName, spellSchool, missType, ex2, ex3, ex4)
		end -- IF SOURCE IS PLAYER
	end -- END ENTIRELY
	RSA.CombatLogMonitor:SetScript("OnEvent", Priest_Spells)
	------------------------------
	---- Resurrection Monitor ----
	------------------------------
	local function Priest_Resurrection(_, event, source, spell, rank, dest, _)
		if UnitName(source) == pName then
			if spell == GetSpellInfo(2006) and RSA.db.profile.Priest.Spells.Resurrection.Messages.Start ~= "" then -- RESURRECTION
				if event == "UNIT_SPELLCAST_SENT" then
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
					spellinfo = GetSpellInfo(spell) spelllinkinfo = GetSpellLink(spell)
					RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					if RSA.db.profile.Priest.Spells.Resurrection.Messages.Start ~= "" then
						if RSA.db.profile.Priest.Spells.Resurrection.Local == true then
							RSA.Print_LibSink(string.gsub(RSA.db.profile.Priest.Spells.Resurrection.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Priest.Spells.Resurrection.Yell == true then
							RSA.Print_Yell(string.gsub(RSA.db.profile.Priest.Spells.Resurrection.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Priest.Spells.Resurrection.Whisper == true and dest ~= pName then
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = L["You"],}
							RSA.Print_Whisper(string.gsub(RSA.db.profile.Priest.Spells.Resurrection.Messages.Start, ".%a+.", RSA.String_Replace), dest)
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
						end
						if RSA.db.profile.Priest.Spells.Resurrection.CustomChannel.Enabled == true then
							RSA.Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.Resurrection.Messages.Start, ".%a+.", RSA.String_Replace), RSA.db.profile.Priest.Spells.Resurrection.CustomChannel.Channel)
						end
						if RSA.db.profile.Priest.Spells.Resurrection.Say == true then
							RSA.Print_Say(string.gsub(RSA.db.profile.Priest.Spells.Resurrection.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Priest.Spells.Resurrection.SmartGroup == true then
							RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Priest.Spells.Resurrection.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Priest.Spells.Resurrection.Party == true then
							if RSA.db.profile.Priest.Spells.Resurrection.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
							RSA.Print_Party(string.gsub(RSA.db.profile.Priest.Spells.Resurrection.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Priest.Spells.Resurrection.Raid == true then
							if RSA.db.profile.Priest.Spells.Resurrection.SmartGroup == true and GetNumGroupMembers() > 0 then return end
							RSA.Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.Resurrection.Messages.Start, ".%a+.", RSA.String_Replace))
						end
					end
				elseif event == "UNIT_SPELLCAST_SUCCEEDED" and Ressed ~= true then
					dest = ResTarget
					Ressed = true
					if RSA.db.profile.Priest.Spells.Resurrection.Messages.End ~= "" then
						if RSA.db.profile.Priest.Spells.Resurrection.Local == true then
							RSA.Print_LibSink(string.gsub(RSA.db.profile.Priest.Spells.Resurrection.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Priest.Spells.Resurrection.Yell == true then
							RSA.Print_Yell(string.gsub(RSA.db.profile.Priest.Spells.Resurrection.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Priest.Spells.Resurrection.Whisper == true and dest ~= pName then
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = L["You"],}
							RSA.Print_Whisper(string.gsub(RSA.db.profile.Priest.Spells.Resurrection.Messages.End, ".%a+.", RSA.String_Replace), dest)
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
						end
						if RSA.db.profile.Priest.Spells.Resurrection.CustomChannel.Enabled == true then
							RSA.Print_Channel(string.gsub(RSA.db.profile.Priest.Spells.Resurrection.Messages.End, ".%a+.", RSA.String_Replace), RSA.db.profile.Priest.Spells.Resurrection.CustomChannel.Channel)
						end
						if RSA.db.profile.Priest.Spells.Resurrection.Say == true then
							RSA.Print_Say(string.gsub(RSA.db.profile.Priest.Spells.Resurrection.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Priest.Spells.Resurrection.SmartGroup == true then
							RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Priest.Spells.Resurrection.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Priest.Spells.Resurrection.Party == true then
							if RSA.db.profile.Priest.Spells.Resurrection.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
							RSA.Print_Party(string.gsub(RSA.db.profile.Priest.Spells.Resurrection.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Priest.Spells.Resurrection.Raid == true then
							if RSA.db.profile.Priest.Spells.Resurrection.SmartGroup == true and GetNumGroupMembers() > 0 then return end
							RSA.Print_Raid(string.gsub(RSA.db.profile.Priest.Spells.Resurrection.Messages.End, ".%a+.", RSA.String_Replace))
						end
					end
				end
			end -- RESURRECTION
		end
	end -- END FUNCTION
	RSA.ResMon = RSA.ResMon or CreateFrame("Frame", "RSA:RM")
	RSA.ResMon:RegisterEvent("UNIT_SPELLCAST_SENT")
	RSA.ResMon:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
	RSA.ResMon:SetScript("OnEvent", Priest_Resurrection)
end -- END ON ENABLED
function RSA_Priest:OnDisable()
	RSA.CombatLogMonitor:SetScript("OnEvent", nil)
	RSA.ResMon:SetScript("OnEvent", nil)
end