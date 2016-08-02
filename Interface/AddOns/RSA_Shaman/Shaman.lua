-----------------------------------------------
---- Raeli's Spell Announcer Shaman Module ----
-----------------------------------------------
local RSA = LibStub("AceAddon-3.0"):GetAddon("RSA")
local L = LibStub("AceLocale-3.0"):GetLocale("RSA")
local RSA_Shaman = RSA:NewModule("Shaman")
function RSA_Shaman:OnInitialize()
	if RSA.db.profile.General.Class == "SHAMAN" then
		RSA_Shaman:SetEnabledState(true)
	else
		RSA_Shaman:SetEnabledState(false)
	end
end -- End OnInitialize
local spellinfo,spelllinkinfo,extraspellinfo,extraspellinfolink,missinfo
local RSA_FE_GUID,RSA_EE_GUID,RSA_HT_GUID,RSA_SL_GUID,RSA_WINDWALK_GUID
function RSA_Shaman:OnEnable()
	RSA.db.profile.Modules.Shaman = true -- Set state to loaded, to know if we should announce when a spell is refreshed.
	local pName = UnitName("player")
	local Config_Ascendance = { -- ASCENDANCE
		profile = 'Ascendance'
	}
	local Config_Ascendance_End = { -- ASCENDANCE
		profile = 'Ascendance',
		section = 'End'
	}
	local MonitorConfig_Shaman = {
		player_profile = RSA.db.profile.Shaman,
		SPELL_CAST_START = {
			[212048] = { -- ANCESTRAL VISION
				profile = 'AncestralVision'
			},
		},
		SPELL_CAST_SUCCESS = {
			[212048] = { -- ANCESTRAL VISION
				profile = 'AncestralVision',
				section = 'End'
			},
			[198103] = { -- EARTH ELEMENTAL
				profile = 'EarthElemental'
			},
			[198067] = { -- FIRE ELEMENTAL
				profile = 'FireElemental'
			},
			[108280] = { -- HEALING TIDE TOTEM
				profile = 'HealingTide'
			},
			[98008] = { -- SPIRIT LINK TOTEM
				profile = 'SpiritLink'
			},
			[108273] = { -- WINDWALK TOTEM
				profile = 'WindwalkTotem'
			},
			[2825] = { -- BLOODLUST
				profile = 'Heroism'
			},
			[32182] = { -- HEROISM
				profile = 'Heroism'
			},
			[51490] = { -- THUNDERSTORM
				profile = 'Thunderstorm'
			},
			[108281] = { -- ANCESTRAL GUIDANCE
				profile = 'AncestralGuidance'
			},
			[108271] = { -- ASTRAL SHIFT
				profile = 'AstralShift'
			},
			[51533] = { -- FERAL SPIRIT
				profile = 'FeralSpirit'
			},
			[21169] = { -- REINCARNATION
				profile = 'Reincarnation'
			}
		},
		SPELL_AURA_APPLIED = {
			[51514] = { -- HEX
				profile = 'Hex',
				replacements = { TARGET = 1 }
			},
			[114050] = Config_Ascendance, -- ASCENDANCE
			[114051] = Config_Ascendance, -- ASCENDANCE
			[114052] = Config_Ascendance -- ASCENDANCE
		},
		SPELL_AURA_REMOVED = {
			[198103] = { -- EARTH ELEMENTAL
				profile = 'EarthElemental',
				section = 'End',
			},
			[51514] = { -- HEX
				profile = 'Hex',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[2825] = { -- BLOODLUST
				profile = 'Heroism',
				section = 'End',
				targetIsMe = 1
			},
			[32182] = { -- HEROISM
				profile = 'Heroism',
				section = 'End',
				targetIsMe = 1
			},
			[114050] = Config_Ascendance_End, -- ASCENDANCE
			[114051] = Config_Ascendance_End, -- ASCENDANCE
			[114052] = Config_Ascendance_End, -- ASCENDANCE
			[108281] = { -- ANCESTRAL GUIDANCE
				profile = 'AncestralGuidance',
				section = 'End'
			},
			[108271] = { -- ASTRAL SHIFT
				profile = 'AstralShift',
				section = 'End'
			}
		},
		SPELL_DISPEL = {
			[370] = { -- PURGE
				profile = 'Purge',
				replacements = { TARGET = 1, extraSpellName = "[AURA]", extraSpellLink = "[AURALINK]" }
			},
			[51886] = { -- CLEANSE SPIRIT
				profile = 'CleanseSpirit',
				replacements = { TARGET = 1, extraSpellName = "[AURA]", extraSpellLink = "[AURALINK]" }
			},
			[77130] = { -- PURIFY SPIRIT
				profile = 'CleanseSpirit',
				replacements = { TARGET = 1, extraSpellName = "[AURA]", extraSpellLink = "[AURALINK]" }
			},
		},
		SPELL_DISPEL_FAILED = {
			[370] = { -- PURGE
				profile = 'Purge',
				section = 'End',
				replacements = { TARGET = 1, extraSpellName = "[AURA]", extraSpellLink = "[AURALINK]" }
			},
		},
		SPELL_INTERRUPT = {
			[57994] = { -- WIND SHEAR
				profile = 'WindShear',
				replacements = { TARGET = 1, extraSpellName = "[TARSPELL]", extraSpellLink = "[TARLINK]" }
			},
		},
		SPELL_MISSED = {
			[57994] = {-- WIND SHEAR
				profile = 'WindShear',
				section = 'End',
				immuneSection = "Immune",
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
		},
	}
	RSA.MonitorConfig(MonitorConfig_Shaman, UnitGUID("player"))
	local MonitorAndAnnounce = RSA.MonitorAndAnnounce
	local ResTarget = L["Unknown"]
	local Ressed
	local function Shaman_Spells(self, _, timestamp, event, hideCaster, sourceGUID, source, sourceFlags, sourceRaidFlag, destGUID, dest, destFlags, destRaidFlags, spellID, spellName, spellSchool, missType, ex2, ex3, ex4)
		if RSA.AffiliationMine(sourceFlags) then
			if (event == "SPELL_CAST_SUCCESS" and RSA.db.profile.Modules.Reminders_Loaded == true) then -- Reminder Refreshed
				local ReminderSpell = RSA.db.profile.Shaman.Reminders.SpellName
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
			if event == "SPELL_SUMMON" then
				if spellID == 108280 then -- HEALING TIDE TOTEM
					RSA_HT_GUID = destGUID return
				end -- HEALING TIDE TOTEM
				if spellID == 188616 then -- EARTH ELEMENTAL
					RSA_EE_GUID = destGUID return
				end -- EARTH ELEMENTAL TOTEM
				if spellID == 188592 then -- FIRE ELEMENTAL
					RSA_FE_GUID = destGUID return
				end -- FIRE ELEMENTAL TOTEM
				if spellID == 98008 then -- SPIRIT LINK TOTEM
					RSA_SL_GUID = destGUID return
				end -- SPIRIT LINK TOTEM

				if spellID == 108273 then -- WINDWALK TOTEM
					RSA_WINDWALK_GUID = destGUID return
				end -- WINDWALK TOTEM
			end -- IF EVENT IS SPELL_SUMMON
			if event == "UNIT_DESTROYED" then
				if destGUID == RSA_FE_GUID then -- FIRE ELEMENTAL
					spellinfo = GetSpellInfo(198067) spelllinkinfo = GetSpellLink(198067)
					RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo,}
					if RSA.db.profile.Shaman.Spells.FireElementalTotem.Messages.End ~= "" then
						if RSA.db.profile.Shaman.Spells.FireElementalTotem.Local == true then
							RSA.Print_LibSink(string.gsub(RSA.db.profile.Shaman.Spells.FireElementalTotem.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.FireElementalTotem.Yell == true then
							RSA.Print_Yell(string.gsub(RSA.db.profile.Shaman.Spells.FireElementalTotem.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.FireElementalTotem.CustomChannel.Enabled == true then
							RSA.Print_Channel(string.gsub(RSA.db.profile.Shaman.Spells.FireElementalTotem.Messages.End, ".%a+.", RSA.String_Replace), RSA.db.profile.Shaman.Spells.FireElementalTotem.CustomChannel.Channel)
						end
						if RSA.db.profile.Shaman.Spells.FireElementalTotem.Say == true then
							RSA.Print_Say(string.gsub(RSA.db.profile.Shaman.Spells.FireElementalTotem.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.FireElementalTotem.SmartGroup == true then
							RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Shaman.Spells.FireElementalTotem.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.FireElementalTotem.Party == true then
							if RSA.db.profile.Shaman.Spells.FireElementalTotem.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
							RSA.Print_Party(string.gsub(RSA.db.profile.Shaman.Spells.FireElementalTotem.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.FireElementalTotem.Raid == true then
							if RSA.db.profile.Shaman.Spells.FireElementalTotem.SmartGroup == true and GetNumGroupMembers() > 0 then return end
							RSA.Print_Raid(string.gsub(RSA.db.profile.Shaman.Spells.FireElementalTotem.Messages.End, ".%a+.", RSA.String_Replace))
						end
					end
				end -- FIRE ELEMENTAL TOTEM
				if destGUID == RSA_HT_GUID then -- HEALING TIDE TOTEM
					spellinfo = GetSpellInfo(108280) spelllinkinfo = GetSpellLink(108280)
					RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo,}
					if RSA.db.profile.Shaman.Spells.HealingTide.Messages.End ~= "" then
						if RSA.db.profile.Shaman.Spells.HealingTide.Local == true then
							RSA.Print_LibSink(string.gsub(RSA.db.profile.Shaman.Spells.HealingTide.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.HealingTide.Yell == true then
							RSA.Print_Yell(string.gsub(RSA.db.profile.Shaman.Spells.HealingTide.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.HealingTide.CustomChannel.Enabled == true then
							RSA.Print_Channel(string.gsub(RSA.db.profile.Shaman.Spells.HealingTide.Messages.End, ".%a+.", RSA.String_Replace), RSA.db.profile.Shaman.Spells.HealingTide.CustomChannel.Channel)
						end
						if RSA.db.profile.Shaman.Spells.HealingTide.Say == true then
							RSA.Print_Say(string.gsub(RSA.db.profile.Shaman.Spells.HealingTide.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.HealingTide.SmartGroup == true then
							RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Shaman.Spells.HealingTide.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.HealingTide.Party == true then
							if RSA.db.profile.Shaman.Spells.HealingTide.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
							RSA.Print_Party(string.gsub(RSA.db.profile.Shaman.Spells.HealingTide.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.HealingTide.Raid == true then
							if RSA.db.profile.Shaman.Spells.HealingTide.SmartGroup == true and GetNumGroupMembers() > 0 then return end
							RSA.Print_Raid(string.gsub(RSA.db.profile.Shaman.Spells.HealingTide.Messages.End, ".%a+.", RSA.String_Replace))
						end
					end
				end -- HEALING TIDE TOTEM
				if destGUID == RSA_SL_GUID then -- SPIRIT LINK TOTEM
					spellinfo = GetSpellInfo(98008) spelllinkinfo = GetSpellLink(98008)
					RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo,}
					if RSA.db.profile.Shaman.Spells.SpiritLink.Messages.End ~= "" then
						if RSA.db.profile.Shaman.Spells.SpiritLink.Local == true then
							RSA.Print_LibSink(string.gsub(RSA.db.profile.Shaman.Spells.SpiritLink.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.SpiritLink.Yell == true then
							RSA.Print_Yell(string.gsub(RSA.db.profile.Shaman.Spells.SpiritLink.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.SpiritLink.CustomChannel.Enabled == true then
							RSA.Print_Channel(string.gsub(RSA.db.profile.Shaman.Spells.SpiritLink.Messages.End, ".%a+.", RSA.String_Replace), RSA.db.profile.Shaman.Spells.SpiritLink.CustomChannel.Channel)
						end
						if RSA.db.profile.Shaman.Spells.SpiritLink.Say == true then
							RSA.Print_Say(string.gsub(RSA.db.profile.Shaman.Spells.SpiritLink.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.SpiritLink.SmartGroup == true then
							RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Shaman.Spells.SpiritLink.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.SpiritLink.Party == true then
							if RSA.db.profile.Shaman.Spells.SpiritLink.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
							RSA.Print_Party(string.gsub(RSA.db.profile.Shaman.Spells.SpiritLink.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.SpiritLink.Raid == true then
							if RSA.db.profile.Shaman.Spells.SpiritLink.SmartGroup == true and GetNumGroupMembers() > 0 then return end
							RSA.Print_Raid(string.gsub(RSA.db.profile.Shaman.Spells.SpiritLink.Messages.End, ".%a+.", RSA.String_Replace))
						end
					end
				end -- SPIRIT LINK TOTEM
				if destGUID == RSA_WINDWALK_GUID then -- WINDWALK TOTEM
					spellinfo = GetSpellInfo(108273) spelllinkinfo = GetSpellLink(108273)
					RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo,}
					if RSA.db.profile.Shaman.Spells.WindwalkTotem.Messages.End ~= "" then
						if RSA.db.profile.Shaman.Spells.WindwalkTotem.Local == true then
							RSA.Print_LibSink(string.gsub(RSA.db.profile.Shaman.Spells.WindwalkTotem.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.WindwalkTotem.Yell == true then
							RSA.Print_Yell(string.gsub(RSA.db.profile.Shaman.Spells.WindwalkTotem.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.WindwalkTotem.CustomChannel.Enabled == true then
							RSA.Print_Channel(string.gsub(RSA.db.profile.Shaman.Spells.WindwalkTotem.Messages.End, ".%a+.", RSA.String_Replace), RSA.db.profile.Shaman.Spells.WindwalkTotem.CustomChannel.Channel)
						end
						if RSA.db.profile.Shaman.Spells.WindwalkTotem.Say == true then
							RSA.Print_Say(string.gsub(RSA.db.profile.Shaman.Spells.WindwalkTotem.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.WindwalkTotem.SmartGroup == true then
							RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Shaman.Spells.WindwalkTotem.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.WindwalkTotem.Party == true then
							if RSA.db.profile.Shaman.Spells.WindwalkTotem.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
							RSA.Print_Party(string.gsub(RSA.db.profile.Shaman.Spells.WindwalkTotem.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.WindwalkTotem.Raid == true then
							if RSA.db.profile.Shaman.Spells.WindwalkTotem.SmartGroup == true and GetNumGroupMembers() > 0 then return end
							RSA.Print_Raid(string.gsub(RSA.db.profile.Shaman.Spells.WindwalkTotem.Messages.End, ".%a+.", RSA.String_Replace))
						end
					end
				end -- WINDWALK TOTEM
			end -- IF EVENT IS UNIT_DESTROYED
			MonitorAndAnnounce(self, _, timestamp, event, hideCaster, sourceGUID, source, sourceFlags, sourceRaidFlag, destGUID, dest, destFlags, destRaidFlags, spellID, spellName, spellSchool, missType, ex2, ex3, ex4)
		end -- IF SOURCE IS PLAYER
	end -- END ENTIRELY
	RSA.CombatLogMonitor:SetScript("OnEvent", Shaman_Spells)
	------------------------------
	---- Resurrection Monitor ----
	------------------------------
	local function Shaman_AncestralSpirit(_, event, source, spell, rank, dest, _)
		if UnitName(source) == pName then
			if spell == GetSpellInfo(2008) and RSA.db.profile.Shaman.Spells.AncestralSpirit.Messages.Start ~= "" then -- ANCESTRAL SPIRIT
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
					if RSA.db.profile.Shaman.Spells.AncestralSpirit.Messages.Start ~= "" then
						if RSA.db.profile.Shaman.Spells.AncestralSpirit.Local == true then
							RSA.Print_LibSink(string.gsub(RSA.db.profile.Shaman.Spells.AncestralSpirit.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.AncestralSpirit.Yell == true then
							RSA.Print_Yell(string.gsub(RSA.db.profile.Shaman.Spells.AncestralSpirit.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.AncestralSpirit.Whisper == true and dest ~= pName then
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = L["You"],}
							RSA.Print_Whisper(string.gsub(RSA.db.profile.Shaman.Spells.AncestralSpirit.Messages.Start, ".%a+.", RSA.String_Replace), dest)
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
						end
						if RSA.db.profile.Shaman.Spells.AncestralSpirit.CustomChannel.Enabled == true then
							RSA.Print_Channel(string.gsub(RSA.db.profile.Shaman.Spells.AncestralSpirit.Messages.Start, ".%a+.", RSA.String_Replace), RSA.db.profile.Shaman.Spells.AncestralSpirit.CustomChannel.Channel)
						end
						if RSA.db.profile.Shaman.Spells.AncestralSpirit.Say == true then
							RSA.Print_Say(string.gsub(RSA.db.profile.Shaman.Spells.AncestralSpirit.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.AncestralSpirit.SmartGroup == true then
							RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Shaman.Spells.AncestralSpirit.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.AncestralSpirit.Party == true then
							if RSA.db.profile.Shaman.Spells.AncestralSpirit.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
							RSA.Print_Party(string.gsub(RSA.db.profile.Shaman.Spells.AncestralSpirit.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.AncestralSpirit.Raid == true then
							if RSA.db.profile.Shaman.Spells.AncestralSpirit.SmartGroup == true and GetNumGroupMembers() > 0 then return end
							RSA.Print_Raid(string.gsub(RSA.db.profile.Shaman.Spells.AncestralSpirit.Messages.Start, ".%a+.", RSA.String_Replace))
						end
					end
				elseif event == "UNIT_SPELLCAST_SUCCEEDED" and Ressed ~= true then
					dest = ResTarget
					Ressed = true
					if RSA.db.profile.Shaman.Spells.AncestralSpirit.Messages.End ~= "" then
						if RSA.db.profile.Shaman.Spells.AncestralSpirit.Local == true then
							RSA.Print_LibSink(string.gsub(RSA.db.profile.Shaman.Spells.AncestralSpirit.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.AncestralSpirit.Yell == true then
							RSA.Print_Yell(string.gsub(RSA.db.profile.Shaman.Spells.AncestralSpirit.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.AncestralSpirit.Whisper == true and dest ~= pName then
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = L["You"],}
							RSA.Print_Whisper(string.gsub(RSA.db.profile.Shaman.Spells.AncestralSpirit.Messages.End, ".%a+.", RSA.String_Replace), dest)
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
						end
						if RSA.db.profile.Shaman.Spells.AncestralSpirit.CustomChannel.Enabled == true then
							RSA.Print_Channel(string.gsub(RSA.db.profile.Shaman.Spells.AncestralSpirit.Messages.End, ".%a+.", RSA.String_Replace), RSA.db.profile.Shaman.Spells.AncestralSpirit.CustomChannel.Channel)
						end
						if RSA.db.profile.Shaman.Spells.AncestralSpirit.Say == true then
							RSA.Print_Say(string.gsub(RSA.db.profile.Shaman.Spells.AncestralSpirit.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.AncestralSpirit.SmartGroup == true then
							RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Shaman.Spells.AncestralSpirit.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.AncestralSpirit.Party == true then
							if RSA.db.profile.Shaman.Spells.AncestralSpirit.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
							RSA.Print_Party(string.gsub(RSA.db.profile.Shaman.Spells.AncestralSpirit.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Shaman.Spells.AncestralSpirit.Raid == true then
							if RSA.db.profile.Shaman.Spells.AncestralSpirit.SmartGroup == true and GetNumGroupMembers() > 0 then return end
							RSA.Print_Raid(string.gsub(RSA.db.profile.Shaman.Spells.AncestralSpirit.Messages.End, ".%a+.", RSA.String_Replace))
						end
					end
				end
			end -- ANCESTRAL SPIRIT
		end
	end -- END FUNCTION
	RSA.ResMon = RSA.ResMon or CreateFrame("Frame", "RSA:RM")
	RSA.ResMon:RegisterEvent("UNIT_SPELLCAST_SENT")
	RSA.ResMon:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
	RSA.ResMon:SetScript("OnEvent", Shaman_AncestralSpirit)
end -- END ON ENABLED
function RSA_Shaman:OnDisable()
	RSA.CombatLogMonitor:SetScript("OnEvent", nil)
	RSA.ResMon:SetScript("OnEvent", nil)
end