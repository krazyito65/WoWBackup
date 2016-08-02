------------------------------------------------
---- Raeli's Spell Announcer Paladin Module ----
------------------------------------------------
local RSA = LibStub("AceAddon-3.0"):GetAddon("RSA")
local L = LibStub("AceLocale-3.0"):GetLocale("RSA")
local RSA_Paladin = RSA:NewModule("Paladin")
function RSA_Paladin:OnInitialize()
	if RSA.db.profile.General.Class == "PALADIN" then
		RSA_Paladin:SetEnabledState(true)
	else
		RSA_Paladin:SetEnabledState(false)
	end
end -- End OnInitialize

local spellinfo,spelllinkinfo,extraspellinfo,extraspellinfolink,missinfo
local Config_DivineShield
local Config_DivineShield_End
local MonitorConfig_Paladin

local function FinalStandCheck() -- Checks if we announce Divine Shield with Final Stand or not. 
	local _,_,_,selected = GetTalentInfo(5,3,1) -- Row 5, Column 3, Spec 2 (Final Stand)
	if RSA.db.profile.Paladin.Spells.FinalStand.FinalStandDisable == true then
		if selected == true then
			Config_DivineShield = {
				profile = 'DivineShield',
				section = 'Disabled'
			}
			Config_DivineShield_End = {
				profile = 'DivineShield',
				section = 'Disabled'
			}
		end
		if selected == false then
			Config_DivineShield = {
				profile = 'DivineShield',
				section = 'Start'
			}
			Config_DivineShield_End = {
				profile = 'DivineShield',
				section = 'End'
			}
		end
	end
	if  RSA.db.profile.Paladin.Spells.FinalStand.FinalStandDisable == false then
		Config_DivineShield = {
			profile = 'DivineShield',
			section = 'Start'
		}
		Config_DivineShield_End = {
			profile = 'DivineShield',
			section = 'End'
		}
	end
	MonitorConfig_Paladin.SPELL_AURA_APPLIED[642] = Config_DivineShield
	MonitorConfig_Paladin.SPELL_AURA_REMOVED[642] = Config_DivineShield_End
end

function RSA_Paladin:OnEnable()
	RSA.db.profile.Modules.Paladin = true -- Set state to loaded, to know if we should announce when a spell is refreshed.
	local pName = UnitName("player")
	local Config_AvengingWrath = { -- AVENGING WRATH
		profile = 'AvengingWrath'
	}
	local Config_AvengingWrath_End = { -- AVENGING WRATH
		profile = 'AvengingWrath',
		section = 'End'
	}
	local Config_BoP = { -- BLESSING OF PROTECTION & BLESSING OF SPELLWARDING
		profile = 'HandOfProtection',
		replacements = { TARGET = 1 }
	}
	local Config_BoP_End = { -- BLESSING OF PROTECTION & BLESSING OF SPELLWARDING
		profile = 'HandOfProtection',
		section = 'End',
		replacements = { TARGET = 1 }
	}
	local Config_Cleanse = {-- CLEANSE
		profile = 'Cleanse',
		replacements = { TARGET = 1, extraSpellName = "[AURA]", extraSpellLink = "[AURALINK]" }
	}
	MonitorConfig_Paladin = {
		player_profile = RSA.db.profile.Paladin,
		SPELL_DISPEL = {
			[4987] = Config_Cleanse,
			[213644] = Config_Cleanse,
		},
		SPELL_HEAL = {
			[184250] = { -- DIVINE INTERVENTION
				profile = 'DivineIntervention',
				section = 'Heal',
				replacements = { AMOUNT = 1 },
				tracker = 1 
			},	
			[66235] = { -- ARDENT DEFENDER
				profile = 'ArdentDefender',
				section = 'Heal',
				replacements = { AMOUNT = 1}
			},
			[633] = { -- LAY ON HANDS
				profile = 'LayOnHands',
				replacements = { TARGET = 1, AMOUNT = 1 }
			},	
		},
		SPELL_CAST_START = {
			[212056] = { -- ABSOLUTION
				profile = 'Absolution',
			},
		},
		SPELL_CAST_SUCCESS = {
			[31842] = Config_AvengingWrath, -- AVENGING WRATH
			[31884] = Config_AvengingWrath, -- AVENGING WRATH
			[212056] = { -- ABSOLUTION
				profile = 'Absolution',
				section = 'End'
			},
			[31850] = { -- ARDENT DEFENDER
				profile = 'ArdentDefender',
				tracker = 2
			},
			[53563] = { -- BEACON OF LIGHT
				profile = 'Beacon',
				replacements = { TARGET = 1 }
			},
			[31821] = { -- AURA MASTERY
				profile = 'DevotionAura'
			},
			[1044] = { -- HAND OF FREEDOM
				profile = 'HandOfFreedom',
				replacements = { TARGET = 1 }
			},
			[6940] = { -- HAND OF SACRIFICE
				profile = 'HandOfSacrifice',
				replacements = { TARGET = 1 }
			},
			[204013] = { -- BLESSING OF SALVATION
				profile = 'BlessingOfSalvation',
				replacements = { TARGET = 1 }
			},
		},
		SPELL_AURA_APPLIED = {
			[642] = Config_DivineShield, -- DIVINE SHIELD
			[1022] = Config_BoP, -- BLESSING OF PROTECTION
			[204018] = Config_BoP, -- BLESSING OF SPELLWARDING	
			[853] = { -- HAMMER OF JUSTICE
				profile = 'HammerOfJustice',
				replacements = { TARGET = 1 }
			},
			[498] = { -- DIVINE PROTECTION
				profile = 'DivineProtection',
			},
			[204079] = { -- FINAL STAND
				profile = 'FinalStand',
				tracker = 2
			},
			[25771] = { -- FORBEARANCE
				profile = 'Forbearance',
				replacements = { TARGET = 1 }
			},
			[62124] = { -- HAND OF RECKONING
				profile = 'HandOfReckoning',
				replacements = { TARGET = 1 }
			},
			[105809] = { -- HOLY AVENGER
				profile = 'HolyAvenger'
			},
			[20066] = { -- REPENTANCE
				profile = 'Repentance',
				replacements = { TARGET = 1 }
			},
			[184662] = { -- SHIELD OF VENGEANCE
				profile = 'ShieldOfVengeance'
			},
			[86659] = { -- GUARDIAN OF ANCEINT KINGS
				profile = 'GoAK'
			},
		},
		SPELL_AURA_REMOVED = {
			[31842] = Config_AvengingWrath_End, -- AVENGING WRATH
			[31884] = Config_AvengingWrath_End, -- AVENGING WRATH
			[1022] = Config_BoP_End, -- BLESSING OF PROTECTION
			[204018] = Config_BoP_End, -- BLESSING OF SPELLWARDING			
			[642] = Config_DivineShield_End, -- DIVINE SHIELD			
			[853] = { -- HAMMER OF JUSTICE
				profile = 'HammerOfJustice',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[498] = { -- DIVINE PROTECTION
				profile = 'DivineProtection',
				section = 'End'
			},
			[31850] = { -- ARDENT DEFENDER
				profile = 'ArdentDefender',
				section = 'End',
				tracker = 1
			},
			[204079] = { -- FINAL STAND
				profile = 'FinalStand',
				section = 'End',
				tracker = 1
			},
			[53563] = { -- BEACON OF LIGHT
				profile = 'Beacon',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[31821] = { -- AURA MASTERY
				profile = 'DevotionAura',
				section = 'End',
				targetIsMe = 1
			},
			[25771] = { -- FORBEARANCE
				profile = 'Forbearance',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[1044] = { -- HAND OF FREEDOM
				profile = 'HandOfFreedom',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[6940] = { -- HAND OF SACRIFICE
				profile = 'HandOfSacrifice',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[204013] = { -- BLESSING OF SALVATION
				profile = 'BlessingOfSalvation',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[105809] = { -- HOLY AVENGER
				profile = 'HolyAvenger',
				section = 'End'
			},
			[20066] = { -- REPENTANCE
				profile = 'Repentance',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[184662] = { -- SHIELD OF VENGEANCE
				profile = 'ShieldOfVengeance',
				section = 'End'
			},
			[86659] = { -- GUARDIAN OF ANCEINT KINGS
				profile = 'GoAK',
				section = 'End'
			},
		},
		SPELL_INTERRUPT = {
			[96231] = { -- REBUKE
				profile = 'Rebuke',
				replacements = { TARGET = 1, extraSpellName = "[TARSPELL]", extraSpellLink = "[TARLINK]" }
			},
			[31935] = { -- AVENGERS SHIELD
				profile = 'AvengersShield',
				replacements = { TARGET = 1, extraSpellName = "[TARSPELL]", extraSpellLink = "[TARLINK]" }
			},
		},
		SPELL_MISSED = {
			[96231] = {-- REBUKE
				profile = 'Rebuke',
				section = 'End',
				immuneSection = "Immune",
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
			[31935] = {-- AVENGERS SHIELD
				profile = 'AvengersShield',
				section = 'End',
				immuneSection = "Immune",
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
			[62124] = {-- HAND OF RECKONING
				profile = 'HandOfReckoning',
				section = 'End',
				immuneSection = "Immune",
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
		},
	}
	RSA.MonitorConfig(MonitorConfig_Paladin, UnitGUID("player"))
	local MonitorAndAnnounce = RSA.MonitorAndAnnounce
	local RSA_DivineGuardian = false
	local RSA_GoaKTimer = CreateFrame("Frame", "RSA:GoaKTimer") -- Because GoaK (Prot) has no event for end message.
	local GoaKTimeElapsed = 0.0
	local ArdentDefenderHealed = false
	local ResTarget = L["Unknown"]
	local Ressed
	local function Paladin_Spells(self, _, timestamp, event, hideCaster, sourceGUID, source, sourceFlags, sourceRaidFlag, destGUID, dest, destFlags, destRaidFlags, spellID, spellName, spellSchool, missType, overheal, ex3, ex4)
		if RSA.AffiliationMine(sourceFlags) then
			if (event == "SPELL_CAST_SUCCESS" and RSA.db.profile.Modules.Reminders_Loaded == true) then -- Reminder Refreshed
				local ReminderSpell = RSA.db.profile.Paladin.Reminders.SpellName
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
			MonitorAndAnnounce(self, _, timestamp, event, hideCaster, sourceGUID, source, sourceFlags, sourceRaidFlag, destGUID, dest, destFlags, destRaidFlags, spellID, spellName, spellSchool, missType, overheal, ex3, ex4)
		end -- IF SOURCE IS PLAYER
	end -- END ENTIRELY
	RSA.CombatLogMonitor:SetScript("OnEvent", Paladin_Spells)
	FinalStandCheck() 
	------------------------------
	---- Resurrection Monitor ----
	------------------------------
	local function Paladin_Redemption(_, event, source, spell, rank, dest, spellID)
		if UnitName(source) == pName then
			if spell == GetSpellInfo(7328) and RSA.db.profile.Paladin.Spells.Redemption.Messages.Start ~= "" then -- REDEMPTION
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
					if RSA.db.profile.Paladin.Spells.Redemption.Messages.Start ~= "" then
						if RSA.db.profile.Paladin.Spells.Redemption.Local == true then
							RSA.Print_LibSink(string.gsub(RSA.db.profile.Paladin.Spells.Redemption.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.Redemption.Yell == true then
							RSA.Print_Yell(string.gsub(RSA.db.profile.Paladin.Spells.Redemption.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.Redemption.Whisper == true and dest ~= pName then
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = L["You"],}
							RSA.Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.Redemption.Messages.Start, ".%a+.", RSA.String_Replace), dest)
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
						end
						if RSA.db.profile.Paladin.Spells.Redemption.CustomChannel.Enabled == true then
							RSA.Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.Redemption.Messages.Start, ".%a+.", RSA.String_Replace), RSA.db.profile.Paladin.Spells.Redemption.CustomChannel.Channel)
						end
						if RSA.db.profile.Paladin.Spells.Redemption.Say == true then
							RSA.Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.Redemption.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.Redemption.SmartGroup == true then
							RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Paladin.Spells.Redemption.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.Redemption.Party == true then
							if RSA.db.profile.Paladin.Spells.Redemption.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
								RSA.Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.Redemption.Messages.Start, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.Redemption.Raid == true then
							if RSA.db.profile.Paladin.Spells.Redemption.SmartGroup == true and GetNumGroupMembers() > 0 then return end
							RSA.Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.Redemption.Messages.Start, ".%a+.", RSA.String_Replace))
						end
					end
				elseif event == "UNIT_SPELLCAST_SUCCEEDED" and Ressed ~= true then
					dest = ResTarget
					Ressed = true
					if RSA.db.profile.Paladin.Spells.Redemption.Messages.End ~= "" then
						if RSA.db.profile.Paladin.Spells.Redemption.Local == true then
							RSA.Print_LibSink(string.gsub(RSA.db.profile.Paladin.Spells.Redemption.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.Redemption.Yell == true then
							RSA.Print_Yell(string.gsub(RSA.db.profile.Paladin.Spells.Redemption.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.Redemption.Whisper == true and dest ~= pName then
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = L["You"],}
							RSA.Print_Whisper(string.gsub(RSA.db.profile.Paladin.Spells.Redemption.Messages.End, ".%a+.", RSA.String_Replace), dest)
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
						end
						if RSA.db.profile.Paladin.Spells.Redemption.CustomChannel.Enabled == true then
							RSA.Print_Channel(string.gsub(RSA.db.profile.Paladin.Spells.Redemption.Messages.End, ".%a+.", RSA.String_Replace), RSA.db.profile.Paladin.Spells.Redemption.CustomChannel.Channel)
						end
						if RSA.db.profile.Paladin.Spells.Redemption.Say == true then
							RSA.Print_Say(string.gsub(RSA.db.profile.Paladin.Spells.Redemption.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.Redemption.SmartGroup == true then
							RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Paladin.Spells.Redemption.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.Redemption.Party == true then
							if RSA.db.profile.Paladin.Spells.Redemption.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
								RSA.Print_Party(string.gsub(RSA.db.profile.Paladin.Spells.Redemption.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Paladin.Spells.Redemption.Raid == true then
							if RSA.db.profile.Paladin.Spells.Redemption.SmartGroup == true and GetNumGroupMembers() > 0 then return end
							RSA.Print_Raid(string.gsub(RSA.db.profile.Paladin.Spells.Redemption.Messages.End, ".%a+.", RSA.String_Replace))
						end
					end
				end
			end -- REDEMPTION
		end -- IF SOURCE IS PLAYER
	end -- END FUNCTION
	RSA.ResMon = RSA.ResMon or CreateFrame("Frame", "RSA:RM")
	RSA.ResMon:RegisterEvent("UNIT_SPELLCAST_SENT")
	RSA.ResMon:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED")
	RSA.ResMon:SetScript("OnEvent", Paladin_Redemption)
	
	RSA.TalentMon = RSA.TalentMon or CreateFrame("Frame", "RSA:TalentMonitor")
	RSA.TalentMon:RegisterEvent("PLAYER_TALENT_UPDATE")
	RSA.TalentMon:SetScript("OnEvent", FinalStandCheck)
end -- END ON ENABLED

function RSA_Paladin:OnDisable()
	RSA.CombatLogMonitor:SetScript("OnEvent", nil)
	RSA.ResMon:SetScript("OnEvent", nil)
	RSA.
	TalentMon:SetScript("OnEvent", nil)
end
RSA.FinalStandCheck = FinalStandCheck -- Set the function globally so RSA_Options can force an update when the setting is changed.