---------------------------------------------
---- Raeli's Spell Announcer Monk Module ----
---------------------------------------------
local RSA = LibStub("AceAddon-3.0"):GetAddon("RSA")
local L = LibStub("AceLocale-3.0"):GetLocale("RSA")
local RSA_Monk = RSA:NewModule("Monk")
function RSA_Monk:OnInitialize()
	if RSA.db.profile.General.Class == "MONK" then
		RSA_Monk:SetEnabledState(true)
	else
		RSA_Monk:SetEnabledState(false)
	end
end -- End OnInitialize
local spellinfo,spelllinkinfo,extraspellinfo,extraspellinfolink,missinfo
function RSA_Monk:OnEnable()
	RSA.db.profile.Modules.Monk = true -- Set state to loaded, to know if we should announce when a spell is refreshed.
	local pName = UnitName("player")
	local MonitorConfig_Monk = {
		player_profile = RSA.db.profile.Monk,
		SPELL_CAST_START = {
			[212051] = { -- REAWAKEN
				profile = 'Reawaken'
			},
		},
		SPELL_CAST_SUCCESS = {
			[212051] = { -- REAWAKEN
				profile = 'Reawaken',
				section = 'End',
			},
			[119582] = {-- PURIFYING BREW
				profile = 'PurifyingBrew',
			},
			[115310] = {-- REVIVAL
				profile = 'Revival',
			},
			[119381] = {-- LEG SWEEP
				profile = 'LegSweep',
			},
		},
		SPELL_AURA_APPLIED = {
			[115176] = {-- ZEN MEDITATION
				profile = 'ZenMeditation',
				targetIsMe = 1
			},
			[116189] = {-- PROVOKE
				profile = 'Provoke',
				replacements = { TARGET = 1 },
			},
			[120954] = {-- FORTIFYING BREW
				profile = 'FortifyingBrew',
			},
			[115078] = {-- PARALYSIS
				profile = 'Paralysis',
				replacements = { TARGET = 1 },
			},
			[202162] = {-- GUARD
				profile = 'Guard',
				replacements = { TARGET = 1 },
			},
			[115308] = {-- ELUSIVE BREW
				profile = 'ElusiveBrew',
			},
			[122278] = {-- DAMPEN HARM
				profile = 'DampenHarm',
			},
			[116849] = {-- LIFE COCOON
				profile = 'LifeCocoon',
				replacements = { TARGET = 1 },
			},
			[116844] = {-- RING OF PEACE
				profile = 'RingOfPeace',
				replacements = { TARGET = 1 },
			},
			[122783] = {-- DIFFUSE MAGIC
				profile = 'DiffuseMagic',
			},
			[122470] = {-- TOUCH OF KARMA
				profile = 'TouchOfKarma',
				targetIsMe = 1
			},
		},
		SPELL_AURA_REMOVED = {
			[115176] = {-- ZEN MEDITATION
				profile = 'ZenMeditation',
				section = 'End',
				targetIsMe = 1,
			},
			[120954] = {-- FORTIFYING BREW
				profile = 'FortifyingBrew',
				section = 'End',
			},
			[115078] = {-- PARALYSIS
				profile = 'Paralysis',
				section = 'End',
				replacements = { TARGET = 1 },
			},
			[202162] = {-- GUARD
				profile = 'Guard',
				section = 'End',
				replacements = { TARGET = 1 },
			},
			[115308] = {-- ELUSIVE BREW
				profile = 'ElusiveBrew',
				section = 'End',
				replacements = { TARGET = 1 },
			},
			[122278] = {-- DAMPEN HARM
				profile = 'DampenHarm',
				section = 'End',
			},
			[116849] = {-- LIFE COCOON
				profile = 'LifeCocoon',
				section = 'End',
				replacements = { TARGET = 1 },
			},
			[116844] = {-- RING OF PEACE
				profile = 'RingOfPeace',
				section = 'End',
				replacements = { TARGET = 1 },
			},
			[122783] = {-- DIFFUSE MAGIC
				profile = 'DiffuseMagic',
				section = 'End',
			},
			[122470] = {-- TOUCH OF KARMA
				profile = 'TouchOfKarma',
				section = 'End',
				targetIsMe = 1
			},
		},
		SPELL_MISSED = {
			[115078] = {-- PARALYSIS
				profile = 'Paralysis',
				section = 'Resist',
				immuneSection = "Immune",
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
			[116189] = {-- PROVOKE
				profile = 'Provoke',
				section = 'End',
				immuneSection = "Immune",
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
			[116705] = {-- SPEAR HAND STRIKE
				profile = 'SpearHandStrike',
				section = 'End',
				immuneSection = "Immune",
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
		},
		SPELL_DISPEL = {
			[115450] = {-- DETOX
				profile = 'Detox',
				replacements = { TARGET = 1, extraSpellName = "[AURA]", extraSpellLink = "[AURALINK]" }
			},
		},
		SPELL_INTERRUPT = {
			[116705] = {-- SPEAR HAND STRIKE
				profile = 'SpearHandStrike',
				replacements = { TARGET = 1, extraSpellName = "[TARSPELL]", extraSpellLink = "[TARLINK]" }
			},
		}
	}
	RSA.MonitorConfig(MonitorConfig_Monk, UnitGUID("player"))
	local MonitorAndAnnounce = RSA.MonitorAndAnnounce
	local function Monk_Spells(self, _, timestamp, event, hideCaster, sourceGUID, source, sourceFlags, sourceRaidFlag, destGUID, dest, destFlags, destRaidFlags, spellID, spellName, spellSchool, missType, ex2, ex3, ex4)
		if RSA.AffiliationMine(sourceFlags) then
			if (event == "SPELL_CAST_SUCCESS" and RSA.db.profile.Modules.Reminders_Loaded == true) then -- Reminder Refreshed
				local ReminderSpell = RSA.db.profile.Monk.Reminders.SpellName
				if spellName == ReminderSpell and (dest == pName or dest == nil) then
					RSA.Reminder:SetScript("OnUpdate", nil)
					if RSA.db.profile.Reminders.RemindChannels.Chat == true then
						RSA.Print_Self(ReminderSpell .. L[mob_" Refreshed!"])
					end
					if RSA.db.profile.Reminders.RemindChannels.RaidWarn == true then
						RSA.Print_Self_RW(ReminderSpell .. L[" Refreshed!"])
					end
				end
			end -- BUFF REMINDER
			if event == "SPELL_CAST_SUCCESS" then
				if spellID == 115546 and RSA.GetMobID(destGUID) == 61146 then -- PROVOKE / STATUE OF THE BLACK OX
					spellinfo = GetSpellInfo(spellID)
					spelllinkinfo = GetSpellLink(spellID)
					RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					if RSA.db.profile.Monk.Spells.Provoke.Messages.StatueOfTheBlackOx ~= "" then
						if RSA.db.profile.Monk.Spells.Provoke.Local == true then
							RSA.Print_LibSink(string.gsub(RSA.db.profile.Monk.Spells.Provoke.Messages.StatueOfTheBlackOx, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Monk.Spells.Provoke.Yell == true then
							RSA.Print_Yell(string.gsub(RSA.db.profile.Monk.Spells.Provoke.Messages.StatueOfTheBlackOx, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Monk.Spells.Provoke.CustomChannel.Enabled == true then
							RSA.Print_Channel(string.gsub(RSA.db.profile.Monk.Spells.Provoke.Messages.StatueOfTheBlackOx, ".%a+.", RSA.String_Replace), RSA.db.profile.Monk.Spells.Provoke.CustomChannel.Channel)
						end
						if RSA.db.profile.Monk.Spells.Provoke.Say == true then
							RSA.Print_Say(string.gsub(RSA.db.profile.Monk.Spells.Provoke.Messages.StatueOfTheBlackOx, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Monk.Spells.Provoke.SmartGroup == true then
							RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Monk.Spells.Provoke.Messages.StatueOfTheBlackOx, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Monk.Spells.Provoke.Party == true then
							if RSA.db.profile.Monk.Spells.Provoke.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
							RSA.Print_Party(string.gsub(RSA.db.profile.Monk.Spells.Provoke.Messages.StatueOfTheBlackOx, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Monk.Spells.Provoke.Raid == true then
							if RSA.db.profile.Monk.Spells.Provoke.SmartGroup == true and GetNumGroupMembers() > 0 then return end
							RSA.Print_Raid(string.gsub(RSA.db.profile.Monk.Spells.Provoke.Messages.StatueOfTheBlackOx, ".%a+.", RSA.String_Replace))
						end
					end
				end -- PROVOKE
			end -- IF EVENT IS SPELL_CAST_SUCCESS
			MonitorAndAnnounce(self, _, timestamp, event, hideCaster, sourceGUID, source, sourceFlags, sourceRaidFlag, destGUID, dest, destFlags, destRaidFlags, spellID, spellName, spellSchool, missType, ex2, ex3, ex4)
		end -- IF SOURCE IS PLAYER
	end -- END ENTIRELY
	RSA.CombatLogMonitor:SetScript("OnEvent", Monk_Spells)
	------------------------------
	---- Resurrection Monitor ----
	------------------------------
	local Ressed,ResTarget
	local function Monk_Resuscitate(_, event, source, spell, rank, dest, _)
		if UnitName(source) == pName then
			if spell == GetSpellInfo(115178) and RSA.db.profile.Monk.Spells.Resuscitate.Messages.Start ~= "" then -- RESUSCITATE
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
					if RSA.db.profile.Monk.Spells.Resuscitate.Messages.Start ~= "" then
						if RSA.db.profile.Monk.Spells.Resuscitate.Local == true then
							RSA.Print_LibSink(string.gsub(RSA.db.profile.Monk.Spells.Resuscitate.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Monk.Spells.Resuscitate.Yell == true then
							RSA.Print_Yell(string.gsub(RSA.db.profile.Monk.Spells.Resuscitate.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Monk.Spells.Resuscitate.Whisper == true and dest ~= pName then
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = L["You"],}
							RSA.Print_Whisper(string.gsub(RSA.db.profile.Monk.Spells.Resuscitate.Messages.Start, ".%a+.", RSA.String_Replace), dest)
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
						end
						if RSA.db.profile.Monk.Spells.Resuscitate.CustomChannel.Enabled == true then
							RSA.Print_Channel(string.gsub(RSA.db.profile.Monk.Spells.Resuscitate.Messages.Start, ".%a+.", RSA.String_Replace), RSA.db.profile.Monk.Spells.Resuscitate.CustomChannel.Channel)
						end
						if RSA.db.profile.Monk.Spells.Resuscitate.Say == true then
							RSA.Print_Say(string.gsub(RSA.db.profile.Monk.Spells.Resuscitate.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Monk.Spells.Resuscitate.SmartGroup == true then
							RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Monk.Spells.Resuscitate.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Monk.Spells.Resuscitate.Party == true then
							if RSA.db.profile.Monk.Spells.Resuscitate.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
							RSA.Print_Party(string.gsub(RSA.db.profile.Monk.Spells.Resuscitate.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Monk.Spells.Resuscitate.Raid == true then
							if RSA.db.profile.Monk.Spells.Resuscitate.SmartGroup == true and GetNumGroupMembers() > 0 then return end
							RSA.Print_Raid(string.gsub(RSA.db.profile.Monk.Spells.Resuscitate.Messages.Start, ".%a+.", RSA.String_Replace))
						end
					end
				elseif event == "UNIT_SPELLCAST_SUCCEEDED" and Ressed ~= true then
					dest = ResTarget
					Ressed = true
					if RSA.db.profile.Monk.Spells.Resuscitate.Messages.End ~= "" then
						if RSA.db.profile.Monk.Spells.Resuscitate.Local == true then
							RSA.Print_LibSink(string.gsub(RSA.db.profile.Monk.Spells.Resuscitate.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Monk.Spells.Resuscitate.Yell == true then
							RSA.Print_Yell(string.gsub(RSA.db.profile.Monk.Spells.Resuscitate.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Monk.Spells.Resuscitate.Whisper == true and dest ~= pName then
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = L["You"],}
							RSA.Print_Whisper(string.gsub(RSA.db.profile.Monk.Spells.Resuscitate.Messages.End, ".%a+.", RSA.String_Replace), dest)
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
						end
						if RSA.db.profile.Monk.Spells.Resuscitate.CustomChannel.Enabled == true then
							RSA.Print_Channel(string.gsub(RSA.db.profile.Monk.Spells.Resuscitate.Messages.End, ".%a+.", RSA.String_Replace), RSA.db.profile.Monk.Spells.Resuscitate.CustomChannel.Channel)
						end
						if RSA.db.profile.Monk.Spells.Resuscitate.Say == true then
							RSA.Print_Say(string.gsub(RSA.db.profile.Monk.Spells.Resuscitate.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Monk.Spells.Resuscitate.SmartGroup == true then
							RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Monk.Spells.Resuscitate.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Monk.Spells.Resuscitate.Party == true then
							if RSA.db.profile.Monk.Spells.Resuscitate.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
							RSA.Print_Party(string.gsub(RSA.db.profile.Monk.Spells.Resuscitate.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Monk.Spells.Resuscitate.Raid == true then
							if RSA.db.profile.Monk.Spells.Resuscitate.SmartGroup == true and GetNumGroupMembers() > 0 then return end
							RSA.Print_Raid(string.gsub(RSA.db.profile.Monk.Spells.Resuscitate.Messages.End, ".%a+.", RSA.String_Replace))
						end
					end
				end
			end -- RESUSCITATE
		end
	end -- END FUNCTION
	RSA.ResMon = RSA.ResMon or CreateFrame("Frame", "RSA:RM")
	RSA.ResMon:RegisterEvent("UNIT_SPELLCAST_SENT")
	RSA.ResMon:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
	RSA.ResMon:SetScript("OnEvent", Monk_Resuscitate)
end -- END ON ENABLED
function RSA_Monk:OnDisable()
	RSA.CombatLogMonitor:SetScript("OnEvent", nil)
end