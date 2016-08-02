----------------------------------------------
---- Raeli's Spell Announcer Druid Module ----
----------------------------------------------
local RSA = LibStub("AceAddon-3.0"):GetAddon("RSA")
local L = LibStub("AceLocale-3.0"):GetLocale("RSA")
local RSA_Druid = RSA:NewModule("Druid")
function RSA_Druid:OnInitialize()
	if RSA.db.profile.General.Class == "DRUID" then
		RSA_Druid:SetEnabledState(true)
	else
		RSA_Druid:SetEnabledState(false)
	end
end -- End OnInitialize
function RSA_Druid:OnEnable()
	RSA.db.profile.Modules.Druid = true -- Set state to loaded, to know if we should announce when a spell is refreshed.
	local pName = UnitName("player")
	local Config_StampedingRoar = { -- STAMPEDING ROAR
		profile = 'StampedingRoar',
		targetIsMe = 1
	}
	local Config_StampedingRoar_End = { -- STAMPEDING ROAR
		profile = 'StampedingRoar',
		section = 'End',
		targetIsMe = 1
	}
	local Config_RemoveCorruption = { -- REMOVE CORRUPTION
		profile = 'RemoveCorruption',
		replacements = { TARGET = 1, extraSpellName = "[AURA]", extraSpellLink = "[AURALINK]" }
	}
	local MonitorConfig_Druid = {
		player_profile = RSA.db.profile.Druid,
		SPELL_DISPEL = {
			[2782] = Config_RemoveCorruption, -- REMOVE CORRUPTION
			[88423] = Config_RemoveCorruption, -- NATURE'S CURE
		},
		SPELL_AURA_APPLIED = {
			[106898] = Config_StampedingRoar,
			[77764] = Config_StampedingRoar,
			[77761] = Config_StampedingRoar,
			[6795] = { -- GROWL
				profile = 'Growl',
				replacements = { TARGET = 1 }
			},
			[33786] = { -- CYCLONE
				profile = 'Cyclone',
				replacements = { TARGET = 1 }
			},
			[99] = { -- INCAPACITATING ROAR
				profile = 'IncapacitatingRoar',
				replacements = { TARGET = 1 }
			},
			[339] = { -- ENTANGLING ROOTS
				profile = 'Roots',
				replacements = { TARGET = 1 }
			},
			[102342] = { -- IRONBARK
				profile = 'Ironbark',
				replacements = { TARGET = 1 }
			},
			[33891] = { -- TREE OF LIFE
				profile = 'TreeOfLife'
			},
			[22812] = { -- BARKSKIN
				profile = 'Barkskin'
			},
			[124974] = { -- NATURE'S VIGIL
				profile = 'NaturesVigil'
			},
			[5211] = { -- MIGHTY BASH
				profile = 'MightyBash',
				replacements = { TARGET = 1 }
			}
		},
		SPELL_CAST_START = {
			[212040] = { -- REVITALIZE
				profile = 'Revitalize'
			},
		},
		SPELL_CAST_SUCCESS = {
			[212040] = { -- REVITALIZE
				profile = 'Revitalize',
				section = 'End'
			},
			[22842] = { -- FRENZIED REGENERATION
				profile = 'FrenziedRegeneration'
			},
			[102793] = { -- URSOL'S VORTEX
				profile = 'UrsolsVortex'
			},
			[740] = { -- TRANQUILITY
				profile = 'Tranquility'
			},
			[61336] = { -- SURVIVAL INSTINCTS
				profile = 'SurvivalInstincts'
			}
		},
		SPELL_AURA_REMOVED = {
			[106898] = Config_StampedingRoar_End,
			[77764] = Config_StampedingRoar_End,
			[77761] = Config_StampedingRoar_End,
			[61336] = { -- SURVIVAL INSTINCTS
				profile = 'SurvivalInstincts',
				section = 'End'
			},
			[33891] = { -- TREE OF LIFE
				profile = 'TreeOfLife',
				section = 'End'
			},
			[22812] = { -- BARKSKIN
				profile = 'Barkskin',
				section = 'End'
			},
			[124974] = { -- NATURE'S VIGIL
				profile = 'NaturesVigil',
				section = 'End'
			},
			[740] = { -- TRANQUILITY
				profile = 'Tranquility',
				section = 'End'
			},
			[33786] = { -- CYCLONE
				profile = 'Cyclone',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[99] = { -- INCAPACITATING ROAR
				profile = 'IncapacitatingRoar',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[339] = { -- ENTANGLING ROOTS
				profile = 'Roots',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[102342] = { -- IRONBARK
				profile = 'Ironbark',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[5211] = { -- MIGHTY BASH
				profile = 'MightyBash',
				section = 'End',
				replacements = { TARGET = 1 }
			}
		},
		SPELL_INTERRUPT = {
			--[[[32747] = { -- FAE SILENCE (spell id is general interrupt)
				profile = 'FaeSilence',
				section = 'Interrupt',
				replacements = { TARGET = 1, extraSpellName = "[TARSPELL]", extraSpellLink = "[TARLINK]" }
			},]]--
			[93985] = { -- SKULL BASH
				profile = 'SkullBash',
				replacements = { TARGET = 1, extraSpellName = "[TARSPELL]", extraSpellLink = "[TARLINK]" }
			},
			[97547] = { -- SOLAR BEAM
				profile = 'SolarBeam',
				replacements = { TARGET = 1, extraSpellName = "[TARSPELL]", extraSpellLink = "[TARLINK]" }
			},
		},
		SPELL_MISSED = {
			[6795] = {-- GROWL
				profile = 'Growl',
				section = 'End',
				immuneSection = "Immune",
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
			[93985] = {-- SKULL BASH
				profile = 'SkullBash',
				section = 'End',
				immuneSection = "Immune",
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
		},
	}
	RSA.MonitorConfig(MonitorConfig_Druid, UnitGUID("player"))
	local MonitorAndAnnounce = RSA.MonitorAndAnnounce
	local function Druid_Spells(self, _, timestamp, event, hideCaster, sourceGUID, source, sourceFlags, sourceRaidFlag, destGUID, dest, destFlags, destRaidFlags, spellID, spellName, spellSchool, missType, ex2, ex3, ex4)
		if RSA.AffiliationMine(sourceFlags) then
			if (event == "SPELL_CAST_SUCCESS" and RSA.db.profile.Modules.Reminders_Loaded == true) then -- Reminder Refreshed
				local ReminderSpell = RSA.db.profile.Druid.Reminders.SpellName
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
	RSA.CombatLogMonitor:SetScript("OnEvent", Druid_Spells)
	------------------------------
	---- Resurrection Monitor ----
	------------------------------
	local ResTarget = L["Unknown"]
	local Ressed
	local spellinfo,spelllinkinfo,extraspellinfo,extraspellinfolink,missinfo
	local function Druid_Resurrections(_, event, source, spell, rank, dest, _)
		if UnitName(source) == pName then
			if spell == GetSpellInfo(50769) and RSA.db.profile.Druid.Spells.Revive.Messages.Start ~= "" then -- REVIVE
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
					if RSA.db.profile.Druid.Spells.Revive.Messages.Start ~= "" then
						if RSA.db.profile.Druid.Spells.Revive.Local == true then
							RSA.Print_LibSink(string.gsub(RSA.db.profile.Druid.Spells.Revive.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Revive.Yell == true then
							RSA.Print_Yell(string.gsub(RSA.db.profile.Druid.Spells.Revive.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Revive.Whisper == true and dest ~= pName then
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = L["You"],}
							RSA.Print_Whisper(string.gsub(RSA.db.profile.Druid.Spells.Revive.Messages.Start, ".%a+.", RSA.String_Replace), dest)
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
						end
						if RSA.db.profile.Druid.Spells.Revive.CustomChannel.Enabled == true then
							RSA.Print_Channel(string.gsub(RSA.db.profile.Druid.Spells.Revive.Messages.Start, ".%a+.", RSA.String_Replace), RSA.db.profile.Druid.Spells.Revive.CustomChannel.Channel)
						end
						if RSA.db.profile.Druid.Spells.Revive.Say == true then
							RSA.Print_Say(string.gsub(RSA.db.profile.Druid.Spells.Revive.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Revive.SmartGroup == true then
							RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Druid.Spells.Revive.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Revive.Party == true then
							if RSA.db.profile.Druid.Spells.Revive.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
							RSA.Print_Party(string.gsub(RSA.db.profile.Druid.Spells.Revive.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Revive.Raid == true then
							if RSA.db.profile.Druid.Spells.Revive.SmartGroup == true and GetNumGroupMembers() > 0 then return end
							RSA.Print_Raid(string.gsub(RSA.db.profile.Druid.Spells.Revive.Messages.Start, ".%a+.", RSA.String_Replace))
						end
					end
				elseif event == "UNIT_SPELLCAST_SUCCEEDED" and Ressed ~= true then
					dest = ResTarget
					Ressed = true
					if RSA.db.profile.Druid.Spells.Revive.Messages.End ~= "" then
						if RSA.db.profile.Druid.Spells.Revive.Local == true then
							RSA.Print_LibSink(string.gsub(RSA.db.profile.Druid.Spells.Revive.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Revive.Yell == true then
							RSA.Print_Yell(string.gsub(RSA.db.profile.Druid.Spells.Revive.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Revive.Whisper == true and dest ~= pName then
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = L["You"],}
							RSA.Print_Whisper(string.gsub(RSA.db.profile.Druid.Spells.Revive.Messages.End, ".%a+.", RSA.String_Replace), dest)
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
						end
						if RSA.db.profile.Druid.Spells.Revive.CustomChannel.Enabled == true then
							RSA.Print_Channel(string.gsub(RSA.db.profile.Druid.Spells.Revive.Messages.End, ".%a+.", RSA.String_Replace), RSA.db.profile.Druid.Spells.Revive.CustomChannel.Channel)
						end
						if RSA.db.profile.Druid.Spells.Revive.Say == true then
							RSA.Print_Say(string.gsub(RSA.db.profile.Druid.Spells.Revive.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Revive.SmartGroup == true then
							RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Druid.Spells.Revive.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Revive.Party == true then
							if RSA.db.profile.Druid.Spells.Revive.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
							RSA.Print_Party(string.gsub(RSA.db.profile.Druid.Spells.Revive.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Revive.Raid == true then
							if RSA.db.profile.Druid.Spells.Revive.SmartGroup == true and GetNumGroupMembers() > 0 then return end
							RSA.Print_Raid(string.gsub(RSA.db.profile.Druid.Spells.Revive.Messages.End, ".%a+.", RSA.String_Replace))
						end
					end
				end
			end -- REVIVE
			if spell == GetSpellInfo(20484) and RSA.db.profile.Druid.Spells.Rebirth.Messages.Start ~= "" then -- REBIRTH
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
					if RSA.db.profile.Druid.Spells.Rebirth.Messages.Start ~= "" then
						if RSA.db.profile.Druid.Spells.Rebirth.Local == true then
							RSA.Print_LibSink(string.gsub(RSA.db.profile.Druid.Spells.Rebirth.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Rebirth.Yell == true then
							RSA.Print_Yell(string.gsub(RSA.db.profile.Druid.Spells.Rebirth.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Rebirth.Whisper == true and dest ~= pName then
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = L["You"],}
							RSA.Print_Whisper(string.gsub(RSA.db.profile.Druid.Spells.Rebirth.Messages.Start, ".%a+.", RSA.String_Replace), dest)
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
						end
						if RSA.db.profile.Druid.Spells.Rebirth.CustomChannel.Enabled == true then
							RSA.Print_Channel(string.gsub(RSA.db.profile.Druid.Spells.Rebirth.Messages.Start, ".%a+.", RSA.String_Replace), RSA.db.profile.Druid.Spells.Rebirth.CustomChannel.Channel)
						end
						if RSA.db.profile.Druid.Spells.Rebirth.Say == true then
							RSA.Print_Say(string.gsub(RSA.db.profile.Druid.Spells.Rebirth.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Rebirth.SmartGroup == true then
							RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Druid.Spells.Rebirth.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Rebirth.Party == true then
							if RSA.db.profile.Druid.Spells.Rebirth.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
							RSA.Print_Party(string.gsub(RSA.db.profile.Druid.Spells.Rebirth.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Rebirth.Raid == true then
							if RSA.db.profile.Druid.Spells.Rebirth.SmartGroup == true and GetNumGroupMembers() > 0 then return end
							RSA.Print_Raid(string.gsub(RSA.db.profile.Druid.Spells.Rebirth.Messages.Start, ".%a+.", RSA.String_Replace))
						end
					end
				elseif event == "UNIT_SPELLCAST_SUCCEEDED" and Ressed ~= true then
					dest = ResTarget
					Ressed = true
					if RSA.db.profile.Druid.Spells.Rebirth.Messages.End ~= "" then
						if RSA.db.profile.Druid.Spells.Rebirth.Local == true then
							RSA.Print_LibSink(string.gsub(RSA.db.profile.Druid.Spells.Rebirth.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Rebirth.Yell == true then
							RSA.Print_Yell(string.gsub(RSA.db.profile.Druid.Spells.Rebirth.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Rebirth.Whisper == true and dest ~= pName then
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = L["You"],}
							RSA.Print_Whisper(string.gsub(RSA.db.profile.Druid.Spells.Rebirth.Messages.End, ".%a+.", RSA.String_Replace), dest)
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
						end
						if RSA.db.profile.Druid.Spells.Rebirth.CustomChannel.Enabled == true then
							RSA.Print_Channel(string.gsub(RSA.db.profile.Druid.Spells.Rebirth.Messages.End, ".%a+.", RSA.String_Replace), RSA.db.profile.Druid.Spells.Rebirth.CustomChannel.Channel)
						end
						if RSA.db.profile.Druid.Spells.Rebirth.Say == true then
							RSA.Print_Say(string.gsub(RSA.db.profile.Druid.Spells.Rebirth.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Rebirth.SmartGroup == true then
							RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Druid.Spells.Rebirth.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Rebirth.Party == true then
							if RSA.db.profile.Druid.Spells.Rebirth.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
							RSA.Print_Party(string.gsub(RSA.db.profile.Druid.Spells.Rebirth.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Druid.Spells.Rebirth.Raid == true then
							if RSA.db.profile.Druid.Spells.Rebirth.SmartGroup == true and GetNumGroupMembers() > 0 then return end
							RSA.Print_Raid(string.gsub(RSA.db.profile.Druid.Spells.Rebirth.Messages.End, ".%a+.", RSA.String_Replace))
						end
					end
				end
			end -- REBIRTH
		end
	end -- END FUNCTION
	RSA.ResMon = RSA.ResMon or CreateFrame("Frame", "RSA:RM")
	RSA.ResMon:RegisterEvent("UNIT_SPELLCAST_SENT")
	RSA.ResMon:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
	RSA.ResMon:SetScript("OnEvent", Druid_Resurrections)
end -- END ON ENABLED
function RSA_Druid:OnDisable()
	RSA.CombatLogMonitor:SetScript("OnEvent", nil)
	RSA.ResMon:SetScript("OnEvent", nil)
end