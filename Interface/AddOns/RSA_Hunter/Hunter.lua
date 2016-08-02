-----------------------------------------------
---- Raeli's Spell Announcer Hunter Module ----
-----------------------------------------------
local RSA = LibStub("AceAddon-3.0"):GetAddon("RSA")
local L = LibStub("AceLocale-3.0"):GetLocale("RSA")
local RSA_Hunter = RSA:NewModule("Hunter")
function RSA_Hunter:OnInitialize()
	if RSA.db.profile.General.Class == "HUNTER" then
		RSA_Hunter:SetEnabledState(true)
	else
		RSA_Hunter:SetEnabledState(false)
	end
end -- End OnInitialize
function RSA_Hunter:OnEnable()
	local Config_AncientHysteria = {
		profile = 'AncientHysteria',
		targetIsMe = 1
	}
	local Config_AncientHysteria_End = {
		profile = 'AncientHysteria',
		section = 'End',
		targetIsMe = 1
	}
	local Config_FreezingTrap = {
		profile = 'FreezingTrap',
		replacements = { TARGET = 1 },
		section = 'Placement'
	}
	local Config_EternalGuardian = {
		profile = 'EternalGuardian',
		replacements = { TARGET = 1 }
	}
	local MonitorConfig_Hunter = {
		player_profile = RSA.db.profile.Hunter,
		SPELL_AURA_APPLIED = {
			[90355] = Config_AncientHysteria, -- ANCIENT HYSTERIA
			[160452] = Config_AncientHysteria, -- NETHERWINDS
			[20736] = { -- DISTRACTING SHOT
				profile = 'DistractingShot',
				replacements = { TARGET = 1 }
			},
			[3355] = { -- FREEZING TRAP
				profile = 'FreezingTrap',
				replacements = { TARGET = 1 }
			},
			[19386] = { -- WYVERN STING
				profile = 'WyvernSting',
				replacements = { TARGET = 1 }
			},
			[34477] = { -- MISDIRECTION
				profile = 'Misdirection',
				replacements = { TARGET = 1 }
			},
			[24394] = { -- INTIMIDATION
				profile = 'Intimidation',
				replacements = { TARGET = 1 }
			},
			[199483] = { -- CAMOUFLAGE
				profile = 'Camoflage',
				targetIsMe = 1
			},
		},
		SPELL_AURA_REMOVED = {
			[90355] = Config_AncientHysteria_End, -- ANCIENT HYSTERIA
			[160452] = Config_AncientHysteria_End, -- NETHERWINDS
			[5116] = { -- CONCUSSIVE SHOT
				profile = 'ConcussiveShot',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[3355] = { -- FREEZING TRAP
				profile = 'FreezingTrap',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[19263] = { -- DETERRENCE
				profile = 'Deterrence',
				section = 'End'
			},
			[199483] = { -- CAMOUFLAGE
				profile = 'Camoflage',
				section = 'End',
				targetIsMe = 1
			},
			[19386] = { -- WYVERN STING
				profile = 'WyvernSting',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[53480] = { -- ROAR OF SACRIFICE
				profile = 'RoarOfSacrifice',
				section = 'End',
				replacements = { TARGET = 1 }
			},
			[24394] = { -- INTIMIDATION
				profile = 'Intimidation',
				section = 'End',
				replacements = { TARGET = 1 }
			},
		},
		SPELL_CAST_SUCCESS = {
			[1499] = Config_FreezingTrap,
			[60202] = Config_FreezingTrap,
			[5116] = { -- CONCUSSIVE SHOT
				profile = 'ConcussiveShot',
				replacements = { TARGET = 1 }
			},
			[19263] = { -- DETERRENCE
				profile = 'Deterrence'
			},
			[19577] = { -- INTIMIDATION
				profile = 'Intimidation',
				section = 'Cast'
			},
			[54216] = { -- MASTER'S CALL
				profile = 'MastersCall',
				replacements = { TARGET = 1 }
			},
			[53480] = { -- ROAR OF SACRIFICE
				profile = 'RoarOfSacrifice',
				replacements = { TARGET = 1 }
			},
		},
		SPELL_RESURRECT = {
			[159956] = Config_EternalGuardian, -- DUST OF LIFE
			[159931] = Config_EternalGuardian, -- GIFT OF CHI-JI
			[126393] = Config_EternalGuardian, -- ETERNAL GUARDIAN
		},
		SPELL_INTERRUPT = {
			[147362] = { -- SILENCING SHOT / COUNTER SHOT
				profile = 'SilencingShot',
				replacements = { TARGET = 1, extraSpellName = "[TARSPELL]", extraSpellLink = "[TARLINK]" }
			},
		},
		SPELL_MISSED = {
			[20736] = {-- DISTRACTING SHOT
				profile = 'DistractingShot',
				section = 'End',
				immuneSection = "Immune",
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
			[147362] = {-- SILENCING SHOT / COUNTER SHOT
				profile = 'SilencingShot',
				section = 'End',
				immuneSection = "Immune",
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
		},
	}
	RSA.MonitorConfig(MonitorConfig_Hunter, UnitGUID("player"))
	local MonitorAndAnnounce = RSA.MonitorAndAnnounce
	RSA.db.profile.Modules.Hunter = true -- Set state to loaded, to know if we should announce when a spell is refreshed.
	local spellinfo,spelllinkinfo,extraspellinfo,extraspellinfolink,missinfo
	local pName = UnitName("player")
	local RSA_Misdirection_Damage = 0.0
	local RSA_MDPTimer = CreateFrame("Frame", "RSA:MDPTimer")
	local MDPTimeElapsed = 0.0
	local RSA_MisdirectionTracker = CreateFrame("Frame", "RSA:MDT")
	local function Hunter_Spells(self, _, timestamp, event, hideCaster, sourceGUID, source, sourceFlags, sourceRaidFlag, destGUID, dest, destFlags, destRaidFlags, spellID, spellName, spellSchool, missType, ex2, ex3, ex4)
		if RSA.AffiliationMine(sourceFlags) then
			if (event == "SPELL_CAST_SUCCESS" and RSA.db.profile.Modules.Reminders_Loaded == true) then -- Reminder Refreshed
				local ReminderSpell = RSA.db.profile.Hunter.Reminders.SpellName
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
				if spellID == 34477 and not RSA.IsMe(destFlags) then -- MISDIRECTION
					---- START MISDIRECTION TRACKING ----
					if string.match(RSA.db.profile.Hunter.Spells.Misdirection.Messages.End, ".AMOUNT.") == "[AMOUNT]" then
						RSA_MisdirectionTracker:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
						local function MisdirectionTracker(_, _, _, event, _, _, source, _, _, destGUID, dest, _, _, spellID, spellName, _, amount, overkill)
							if source == pName then
								if event == "SPELL_DAMAGE" or event == "SPELL_PERIODIC_DAMAGE" or event == "RANGE_DAMAGE" then
									if overkill ~= -1 then
										overkill = 0
									end
									RSA_Misdirection_Damage = RSA_Misdirection_Damage + (amount - overkill)
								elseif event == "SWING_DAMAGE" then
									local amount, overkill = spellID, spellName
									if overkill ~= -1 then
										overkill = 0
									end
									RSA_Misdirection_Damage = RSA_Misdirection_Damage + (spellID - spellName)
								end
							end
						end
						RSA_MisdirectionTracker:SetScript("OnEvent", MisdirectionTracker)
					end
					MDPTimeElapsed = 0.0
					local function SBMDPTimer(self, elapsed)
						MDPTimeElapsed = MDPTimeElapsed + elapsed
						if MDPTimeElapsed < 20 then return end
						MDPTimeElapsed = MDPTimeElapsed - floor(MDPTimeElapsed)
						if RSA_Misdirection_Damage == 0.0 then
							RSA_MisdirectionTracker:SetScript("OnEvent", nil)
						end
						RSA_MDPTimer:SetScript("OnUpdate", nil)
					end
					RSA_MDPTimer:SetScript("OnUpdate", SBMDPTimer)
					---- END OF MISDIRECTION TRACKING ----
				end -- MISDIRECTION
			end -- IF EVENT IS SPELL_AURA_APPLIED
			if event == "SPELL_AURA_REMOVED" then
				if spellID == 34477 then -- MISDIRECTION
					spellinfo = GetSpellInfo(spellID)
					spelllinkinfo = GetSpellLink(spellID)
					if string.match(RSA.db.profile.Hunter.Spells.Misdirection.Messages.End, ".AMOUNT.") == "[AMOUNT]" then
						RSA_MisdirectionTracker:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
						RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[AMOUNT]"] = RSA_Misdirection_Damage,}
					else
						RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest,}
					end
					if RSA.db.profile.Hunter.Spells.Misdirection.Messages.End ~= "" then
						if RSA.db.profile.Hunter.Spells.Misdirection.Local == true then
							RSA.Print_LibSink(string.gsub(RSA.db.profile.Hunter.Spells.Misdirection.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Hunter.Spells.Misdirection.Yell == true then
							RSA.Print_Yell(string.gsub(RSA.db.profile.Hunter.Spells.Misdirection.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Hunter.Spells.Misdirection.Whisper == true and RSA.Whisperable(destFlags) then
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = L["You"], ["[AMOUNT]"] = RSA_Misdirection_Damage or 0,}
							RSA.Print_Whisper(string.gsub(RSA.db.profile.Hunter.Spells.Misdirection.Messages.End, ".%a+.", RSA.String_Replace), dest)
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = dest, ["[AMOUNT]"] = RSA_Misdirection_Damage or 0,}
						end
						if RSA.db.profile.Hunter.Spells.Misdirection.CustomChannel.Enabled == true then
							RSA.Print_Channel(string.gsub(RSA.db.profile.Hunter.Spells.Misdirection.Messages.End, ".%a+.", RSA.String_Replace), RSA.db.profile.Hunter.Spells.Misdirection.CustomChannel.Channel)
						end
						if RSA.db.profile.Hunter.Spells.Misdirection.Say == true then
							RSA.Print_Say(string.gsub(RSA.db.profile.Hunter.Spells.Misdirection.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Hunter.Spells.Misdirection.SmartGroup == true then
							RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Hunter.Spells.Misdirection.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Hunter.Spells.Misdirection.Party == true then
							if RSA.db.profile.Hunter.Spells.Misdirection.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
							RSA.Print_Party(string.gsub(RSA.db.profile.Hunter.Spells.Misdirection.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Hunter.Spells.Misdirection.Raid == true then
							if RSA.db.profile.Hunter.Spells.Misdirection.SmartGroup == true and GetNumGroupMembers() > 0 then return end
							RSA.Print_Raid(string.gsub(RSA.db.profile.Hunter.Spells.Misdirection.Messages.End, ".%a+.", RSA.String_Replace))
						end
					end
					if string.match(RSA.db.profile.Hunter.Spells.Misdirection.Messages.End, ".AMOUNT.") == "[AMOUNT]" then
						RSA_MisdirectionTracker:SetScript("OnEvent", nil)
						RSA_Misdirection_Damage = 0.0
					end
				end -- MISDIRECTION
			end -- IF EVENT IS SPELL_AURA_REMOVED
			MonitorAndAnnounce(self, _, timestamp, event, hideCaster, sourceGUID, source, sourceFlags, sourceRaidFlag, destGUID, dest, destFlags, destRaidFlags, spellID, spellName, spellSchool, missType, ex2, ex3, ex4)
		end -- IF SOURCE IS PLAYER
	end -- END ENTIRELY
	RSA.CombatLogMonitor:SetScript("OnEvent", Hunter_Spells)
end -- END ON ENABLED
function RSA_Hunter:OnDisable()
	RSA.CombatLogMonitor:SetScript("OnEvent", nil)
end