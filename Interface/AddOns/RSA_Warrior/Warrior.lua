------------------------------------------------
---- Raeli's Spell Announcer Warrior Module ----
------------------------------------------------
local RSA = LibStub("AceAddon-3.0"):GetAddon("RSA")
local L = LibStub("AceLocale-3.0"):GetLocale("RSA")
local RSA_Warrior = RSA:NewModule("Warrior")
function RSA_Warrior:OnInitialize()
	if RSA.db.profile.General.Class == "WARRIOR" then
		RSA_Warrior:SetEnabledState(true)
	else
		RSA_Warrior:SetEnabledState(false)
	end
end -- End OnInitialize
function RSA_Warrior:OnEnable()
	local Config_Intervene = { -- Intervene
		profile = 'Intervene',
		replacements = { TARGET = 1 }
	}
	local MonitorConfig_Warrior = {
		player_profile = RSA.db.profile.Warrior,
		SPELL_CAST_SUCCESS = {
			[3411] = Config_Intervene, -- INTERVENE
			[114029] = Config_Intervene, -- SAFEGUARD
			[871] = { -- SHIELD WALL
				profile = 'ShieldWall'
			},
			[12975] = { -- LAST STAND
				profile = 'LastStand'
			},
			[184364] = { -- ENRAGED REGENERATION
				profile = 'EnragedRegeneration'
			},
			[97462] = { -- RALLYING CRY
				profile = 'RallyingCry'
			},
			[1160] = { -- DEMORALIZING SHOUT
				profile = 'DemoralizingShout'
			},
		},
		SPELL_AURA_APPLIED = {
			[355] = { -- TAUNT
				profile = 'Taunt',
				replacements = { TARGET = 1 },
			},
			[1719] = { -- RECKLESSNESS
				profile = 'Recklessness',
			},
			[114030] = { -- VIGILANCE
				profile = 'Vigilance',
				targetNotMe = 1,
				replacements = { TARGET = 1 },
			},
			[132404] = { -- SHIELD BLOCK
				profile = 'ShieldBlock',
			},
			[118038] = { -- DIE BY THE SWORD
				profile = 'DieByTheSword',
			},
		},
		SPELL_AURA_REMOVED = {
			[871] = { -- SHIELD WALL
				profile = 'ShieldWall',
				section = 'End',
			},
			[12976] = { -- LAST STAND
				profile = 'LastStand',
				section = 'End',
			},
			[184364] = { -- ENRAGED REGENERATION
				profile = 'EnragedRegeneration',
				section = 'End',
			},
			[1719] = { -- RECKLESSNESS
				profile = 'Recklessness',
				section = 'End',
			},
			[114030] = { -- VIGILANCE
				profile = 'Vigilance',
				section = 'End',
				targetNotMe = 1,
				replacements = { TARGET = 1 },
			},
			[2565] = { -- SHIELD BLOCK
				profile = 'ShieldBlock',
				section = 'End',
			},
			[118038] = { -- DIE BY THE SWORD
				profile = 'DieByTheSword',
				section = 'End',
			},
		},
		SPELL_DISPEL = {
			[23922] = { -- SHIELD SLAM DISPEL
				profile = 'ShieldSlamDispel',
				replacements = { TARGET = 1, extraSpellName = "[AURA]", extraSpellLink = "[AURALINK]" }
			},
		},
		SPELL_DISPEL_FAILED = {
			[23922] = { -- SHIELD SLAM DISPEL
				profile = 'ShieldSlamDispel',
				section = 'End',
				replacements = { TARGET = 1, extraSpellName = "[AURA]", extraSpellLink = "[AURALINK]" }
			},
		},
		SPELL_MISSED = {
			[355] = {-- TAUNT
				profile = 'Taunt',
				section = 'End',
				immuneSection = "Immune",
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
			[6552] = {-- PUMMEL
				profile = 'Pummel',
				section = 'End',
				immuneSection = "Immune",
				replacements = { TARGET = 1, MISSTYPE = 1 },
			},
		},
		SPELL_INTERRUPT = {
			[6552] = { -- PUMMEL
				profile = 'Pummel',
				replacements = { TARGET = 1, extraSpellName = "[TARSPELL]", extraSpellLink = "[TARLINK]" }
			},
		},
	}
	RSA.MonitorConfig(MonitorConfig_Warrior, UnitGUID("player"))
	local MonitorAndAnnounce = RSA.MonitorAndAnnounce
	RSA.db.profile.Modules.Warrior = true -- Set state to loaded, to know if we should announce when a spell is refreshed.
	local spellinfo,spelllinkinfo,extraspellinfo,extraspellinfolink,missinfo
	local pName = UnitName("player")
	local RSA_RallyingCry = false
	local RSA_ReflectSource
	local RSA_ReflectAmount = 0
	local RSA_DSTimer = CreateFrame("Frame", "RSA:DSTimer")
	local DSTimeElapsed = 0.0
	local function Warrior_Spells(self, _, timestamp, event, hideCaster, sourceGUID, source, sourceFlags, sourceRaidFlag, destGUID, dest, destFlags, destRaidFlags, spellID, spellName, spellSchool, missType, ex2, ex3, ex4)
		if source == RSA_ReflectSource and dest == RSA_ReflectSource then -- It damaged itself.
			RSA_ReflectAmount = missType
			spellinfo = GetSpellInfo(spellID)
			spelllinkinfo = GetSpellLink(spellID)
			RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo, ["[TARGET]"] = source, ["[AMOUNT]"] = RSA_ReflectAmount}
			if RSA.db.profile.Warrior.Spells.SpellReflect.Messages.Start ~= "" then
				if RSA.db.profile.Warrior.Spells.SpellReflect.Local == true then
					RSA.Print_LibSink(string.gsub(RSA.db.profile.Warrior.Spells.SpellReflect.Messages.Start, ".%a+.", RSA.String_Replace))
				end
				if RSA.db.profile.Warrior.Spells.SpellReflect.Yell == true then
					RSA.Print_Yell(string.gsub(RSA.db.profile.Warrior.Spells.SpellReflect.Messages.Start, ".%a+.", RSA.String_Replace))
				end
				if RSA.db.profile.Warrior.Spells.SpellReflect.CustomChannel.Enabled == true then
					RSA.Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.SpellReflect.Messages.Start, ".%a+.", RSA.String_Replace), RSA.db.profile.Warrior.Spells.SpellReflect.CustomChannel.Channel)
				end
				if RSA.db.profile.Warrior.Spells.SpellReflect.Say == true then
					RSA.Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.SpellReflect.Messages.Start, ".%a+.", RSA.String_Replace))
				end
				if RSA.db.profile.Warrior.Spells.SpellReflect.SmartGroup == true then
					RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Warrior.Spells.SpellReflect.Messages.Start, ".%a+.", RSA.String_Replace))
				end
				if RSA.db.profile.Warrior.Spells.SpellReflect.Party == true then
					if RSA.db.profile.Warrior.Spells.SpellReflect.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
					RSA.Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.SpellReflect.Messages.Start, ".%a+.", RSA.String_Replace))
				end
				if RSA.db.profile.Warrior.Spells.SpellReflect.Raid == true then
					if RSA.db.profile.Warrior.Spells.SpellReflect.SmartGroup == true and GetNumGroupMembers() > 0 then return end
					RSA.Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.SpellReflect.Messages.Start, ".%a+.", RSA.String_Replace))
				end
			end
		end	
		if dest == pName then
			if missType == "REFLECT" then -- SPELL REFLECT
				RSA_ReflectSource = source -- Track which unit we reflected.
			end -- SPELL REFLECT
		end
		if RSA.AffiliationMine(sourceFlags) then
			if (event == "SPELL_CAST_SUCCESS" and RSA.db.profile.Modules.Reminders_Loaded == true) then -- Reminder Refreshed
				local ReminderSpell = RSA.db.profile.Warrior.Reminders.SpellName
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
			if event == "SPELL_CAST_SUCCESS" then
				if spellID == 97462 then -- RALLYING CRY
					RSA_RallyingCry = false
				end -- RALLYING CRY
				if spellID == 1160 then -- DEMORALIZING SHOUT END TIMER
					if RSA.db.profile.Warrior.Spells.DemoralizingShout.Messages.End ~= "" then -- Demoralizing Shout ending doesn't appear on combat log
						DSTimeElapsed = 0.0 -- Start timer for end announcement.
						local function DSTimer(self, elapsed)
							DSTimeElapsed = DSTimeElapsed + elapsed
							if DSTimeElapsed < 9 then return end -- Tooltip says 8s, buff appears to last for 9s.
							if RSA_DemoralizingShoutProcced == true then
								RSA_DSTimer:SetScript("OnUpdate", nil)
								return end
							DSTimeElapsed = DSTimeElapsed - floor(DSTimeElapsed)
							spellinfo = GetSpellInfo(spellID)
							spelllinkinfo = GetSpellLink(spellID)
							RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo }
							if RSA.db.profile.Warrior.Spells.DemoralizingShout.Local == true then
								RSA.Print_LibSink(string.gsub(RSA.db.profile.Warrior.Spells.DemoralizingShout.Messages.End, ".%a+.", RSA.String_Replace))
							end
							if RSA.db.profile.Warrior.Spells.DemoralizingShout.Yell == true then
								RSA.Print_Yell(string.gsub(RSA.db.profile.Warrior.Spells.DemoralizingShout.Messages.End, ".%a+.", RSA.String_Replace))
							end
							if RSA.db.profile.Warrior.Spells.DemoralizingShout.CustomChannel.Enabled == true then
								RSA.Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.DemoralizingShout.Messages.End, ".%a+.", RSA.String_Replace), RSA.db.profile.Warrior.Spells.DemoralizingShout.CustomChannel.Channel)
							end
							if RSA.db.profile.Warrior.Spells.DemoralizingShout.Say == true then
								RSA.Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.DemoralizingShout.Messages.End, ".%a+.", RSA.String_Replace))
							end
							if RSA.db.profile.Warrior.Spells.DemoralizingShout.SmartGroup == true then
								RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Warrior.Spells.DemoralizingShout.Messages.End, ".%a+.", RSA.String_Replace))
							end
							if RSA.db.profile.Warrior.Spells.DemoralizingShout.Party == true then
								if RSA.db.profile.Warrior.Spells.DemoralizingShout.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
								RSA.Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.DemoralizingShout.Messages.End, ".%a+.", RSA.String_Replace))
							end
							if RSA.db.profile.Warrior.Spells.DemoralizingShout.Raid == true then
								if RSA.db.profile.Warrior.Spells.DemoralizingShout.SmartGroup == true and GetNumGroupMembers() > 0 then return end
								RSA.Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.DemoralizingShout.Messages.End, ".%a+.", RSA.String_Replace))
							end
							RSA_DSTimer:SetScript("OnUpdate", nil)
						end
						RSA_DSTimer:SetScript("OnUpdate", DSTimer)
					end -- DEMORALIZING SHOUT TIMER
				end --DEMORALIZING SHOUT
			end -- IF EVENT IS SPELL_CAST_SUCCESS
			if event == "SPELL_AURA_REMOVED" then
				if spellID == 97463 and RSA_RallyingCry == false then -- RALLYING CRY
					RSA_RallyingCry = true
					spellinfo = GetSpellInfo(spellID)
					spelllinkinfo = GetSpellLink(spellID)
					RSA.Replacements = {["[SPELL]"] = spellinfo, ["[LINK]"] = spelllinkinfo,}
					if RSA.db.profile.Warrior.Spells.RallyingCry.Messages.End ~= "" then
						if RSA.db.profile.Warrior.Spells.RallyingCry.Local == true then
							RSA.Print_LibSink(string.gsub(RSA.db.profile.Warrior.Spells.RallyingCry.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.RallyingCry.Yell == true then
							RSA.Print_Yell(string.gsub(RSA.db.profile.Warrior.Spells.RallyingCry.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.RallyingCry.CustomChannel.Enabled == true then
							RSA.Print_Channel(string.gsub(RSA.db.profile.Warrior.Spells.RallyingCry.Messages.End, ".%a+.", RSA.String_Replace), RSA.db.profile.Warrior.Spells.RallyingCry.CustomChannel.Channel)
						end
						if RSA.db.profile.Warrior.Spells.RallyingCry.Say == true then
							RSA.Print_Say(string.gsub(RSA.db.profile.Warrior.Spells.RallyingCry.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.RallyingCry.SmartGroup == true then
							RSA.Print_SmartGroup(string.gsub(RSA.db.profile.Warrior.Spells.RallyingCry.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.RallyingCry.Party == true then
							if RSA.db.profile.Warrior.Spells.RallyingCry.SmartGroup == true and GetNumGroupMembers() == 0 and InstanceType ~= "arena" then return end
							RSA.Print_Party(string.gsub(RSA.db.profile.Warrior.Spells.RallyingCry.Messages.End, ".%a+.", RSA.String_Replace))
						end
						if RSA.db.profile.Warrior.Spells.RallyingCry.Raid == true then
							if RSA.db.profile.Warrior.Spells.RallyingCry.SmartGroup == true and GetNumGroupMembers() > 0 then return end
							RSA.Print_Raid(string.gsub(RSA.db.profile.Warrior.Spells.RallyingCry.Messages.End, ".%a+.", RSA.String_Replace))
						end
					end
				end -- RALLYING CRY
			end -- IF EVENT IS SPELL_AURA_REMOVED
			MonitorAndAnnounce(self, _, timestamp, event, hideCaster, sourceGUID, source, sourceFlags, sourceRaidFlag, destGUID, dest, destFlags, destRaidFlags, spellID, spellName, spellSchool, missType, ex2, ex3, ex4)
		end -- IF SOURCE IS PLAYER
	end -- END ENTIRELY
	RSA.CombatLogMonitor:SetScript("OnEvent", Warrior_Spells)
end -- END ON ENABLED
function RSA_Warrior:OnDisable()
	RSA.CombatLogMonitor:SetScript("OnEvent", nil)
end