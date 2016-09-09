
local addon_name, addon = ...

local module = addon:NewModule("Ready", "AceConsole-3.0", "AceEvent-3.0", "AceTimer-3.0")
addon.Ready = module

local LibPetJournal = LibStub("LibPetJournal-2.0")

--
--
--

local GetSpellInfo, GetTime, HasFullControl, InCombatLockdown, ipairs, IsFalling,
    IsFlying, IsInInstance, IsResting, IsStealthed, next, pairs, rawset, UnitAura,
    UnitCastingInfo, UnitChannelInfo, UnitIsDeadOrGhost, UnitInVehicle
    = GetSpellInfo, GetTime, HasFullControl, InCombatLockdown, ipairs, IsFalling,
    IsFlying, IsInInstance, IsResting, IsStealthed, next, pairs, rawset, UnitAura,
    UnitCastingInfo, UnitChannelInfo, UnitIsDeadOrGhost, UnitInVehicle
local sort, tconcat, tinsert = table.sort, table.concat, table.insert

--
-- spell ids for UnitAura, just need name coverage
--

local INVIS_SPELLS = {66, 11392, 3680}
local CAMO_SPELLS = {198783, 199483}
local FOOD_SPELLS = {430, 433, 167152, 160598, 160599}

--
--
--

local SPELL_NAME_CACHE = setmetatable({}, {
    __index = function(self, key)
        local name = GetSpellInfo(key)
        rawset(self, key, name)
        return name
    end
})

local function PlayerHasAura(spellid, filter)
    filter = filter or "HELPFUL"
    return UnitAura("player", SPELL_NAME_CACHE[spellid], nil, filter)
end

local function PlayerHasAuraInList(spells, filter)
    for i,spellid in ipairs(spells) do
        if PlayerHasAura(spellid, filter) then
            return true
        end
    end
    return false
end

function module:OnInitialize()
    self.is_true = {}                           -- check that is not preventing summon
    self.is_false = { addon_ready = true }      -- check that is preventing summon
    self.is_irrelevant = {}                     -- disabled checks
    self.dismiss_on = {}                       -- if these checks are false, dismiss

    self.last_spell_sent = 0
    
    self:RegisterEvent("COMPANION_UPDATE")
    self:RegisterEvent("UPDATE_STEALTH")
    self:RegisterEvent("UNIT_AURA")
    self:RegisterEvent("UNIT_SPELLCAST_SENT")
    self:RegisterEvent("UNIT_SPELLCAST_CHANNEL_START", "SpellCastUpdate")
    self:RegisterEvent("UNIT_SPELLCAST_CHANNEL_STOP", "SpellCastUpdate")
    self:RegisterEvent("UNIT_SPELLCAST_CHANNEL_UPDATE", "SpellCastUpdate")
    self:RegisterEvent("UNIT_SPELLCAST_FAILED", "SpellCastUpdate")
    self:RegisterEvent("UNIT_SPELLCAST_START", "SpellCastUpdate")
    self:RegisterEvent("UNIT_SPELLCAST_STOP", "SpellCastUpdate")
    self:RegisterEvent("UNIT_SPELLCAST_SUCCEEDED", "SpellCastUpdate")
    self:RegisterEvent("PLAYER_REGEN_DISABLED")
    self:RegisterEvent("PLAYER_REGEN_ENABLED")
    self:RegisterEvent("PLAYER_UPDATE_RESTING")
    self:RegisterEvent("BARBER_SHOP_CLOSE")
    self:RegisterEvent("BARBER_SHOP_OPEN")
    self:RegisterEvent("LOOT_OPENED")
    self:RegisterEvent("LOOT_CLOSED")
    self:RegisterEvent("PLAYER_ALIVE")
    self:RegisterEvent("PLAYER_DEAD")
    self:RegisterEvent("PLAYER_UNGHOST")
    self:RegisterEvent("CONFIRM_XP_LOSS")
    self:RegisterEvent("ZONE_CHANGED_NEW_AREA")
    self:RegisterEvent("UNIT_ENTERED_VEHICLE")
    self:RegisterEvent("UNIT_EXITED_VEHICLE")
    self:RegisterEvent("PLAYER_STARTED_MOVING")
    self:RegisterEvent("PLAYER_FLAGS_CHANGED")

    self:UpdateChecks()
end

function module:OnEnable()
    self:PetListUpdated()
    self:ScheduleRepeatingTimer("FrequentCheck", 0.1)
    self:SetReady("addon_enabled", addon:IsEnabledSummoning())
    self:SetReady("combat", not InCombatLockdown())
    self:SetReady("resting", IsResting())
    self:SetReady("alive", not UnitIsDeadOrGhost("player"))
    self:SetReady("in_battleground", not addon.InBattlegroundOrArena())
    self:SetReady("vehicle", not UnitInVehicle("player"))
    self:UNIT_AURA(nil, "player")
    self:UPDATE_STEALTH()

    self:SetReady("addon_ready", true)

    self:PLAYER_ENTERING_WORLD()
    self:RegisterEvent("PLAYER_ENTERING_WORLD")
    
    LibPetJournal.RegisterCallback(self, "PetListUpdated")
    self:RegisterMessage("PetLeash-EnableState", "OnAddOnState")

    hooksecurefunc("JumpOrAscendStart", function()
        self:SetReady("sitting", true)
    end)

    hooksecurefunc("SitStandOrDescendStart", function()
        -- If we're flying or mounted, this doesn't do anything interesting.
        -- Otherwise it toggles our sitting/standing state, and unfortunately
        -- we can't tell which (except when we stop sitting via jumping/moving)
        if not IsFlying() and not IsMounted() then
            self:ToggleReady("sitting")
        end
    end)

    hooksecurefunc("SendChatMessage", function(msg, msgtype)
        if msgtype == "AFK" then
            self.afk_message = msg
        end
    end)
end

function module:OnAddOnState(event, enabled)
    self:SetReady("addon_enabled", enabled)
end

local function debug_ready_name(module, name, irr)
    local flag = {}
    if module.dismiss_on[name] then
        tinsert(flag, "UN")
    end
    if irr then
        tinsert(flag, "IGN")
    end
    if #flag > 0 then
        return ("%s[%s]"):format(name, tconcat(flag, ","))
    else
        return name
    end
end

function module:DumpDebugState()
    local ready = {}
    local not_ready = {}
    
    for name,_ in pairs(self.is_true) do
        tinsert(ready, debug_ready_name(self, name))
    end
    for name,_ in pairs(self.is_false) do
        tinsert(not_ready, debug_ready_name(self, name))
    end
    for name,value in pairs(self.is_irrelevant) do
        if value then
            tinsert(ready, debug_ready_name(self, name, true))
        else
            tinsert(not_ready, debug_ready_name(self, name, true))
        end
    end

    sort(ready)
    sort(not_ready)
    
    self:Printf("Ready: %s", tconcat(ready, " "))
    self:Printf("Not Ready: %s", tconcat(not_ready, " "))
    self:Printf("Last: %d %d, sum=%s, cast=%f",
                IsFalling(), HasFullControl(),
                addon:CurrentPet() or "nil",
                GetTime() - self.last_spell_sent)
end

function module:UpdateChecks(profile)
    profile = profile or addon.db.profile

    self:EnableCheck("addon_ready", true)
    self:EnableCheck("combat", true)
    self:EnableCheck("in_battleground",
            profile.dismissInBattleground or not profile.enableInBattleground,
            profile.dismissInBattleground)
    self:EnableCheck("in_pve", profile.dismissInPVE or not profile.enableInPVE,
            profile.dismissInPVE)
    self:EnableCheck("resting", profile.disableOutsideCities)
    self:EnableCheck("stealthed", true, profile.dismissWhenStealthed)
    self:EnableCheck("invisible", true, profile.dismissWhenStealthed)
    self:EnableCheck("flying", true)
    self:EnableCheck("near_pew", profile.nearPEWOnly)
    self:EnableCheck("alive", true)
    self:EnableCheck("camo", true, profile.dismissWhenStealthed)
    self:EnableCheck("casting", true)
    self:EnableCheck("have_pets", true)
    self:EnableCheck("barbar", true)
    self:EnableCheck("thunderisle_saurok", true)
    self:EnableCheck("sitting", true)
    self:EnableCheck("feigned", true, profile.dismissWhenStealthed)
    self:EnableCheck("looting", true)
    self:EnableCheck("vehicle", true)           -- XXX not tested
    self:EnableCheck("addon_enabled", true)
    
    self:_CheckSummon()
end

function module:EnableCheck(name, enabled, dismiss)
    local v = true
    if self.is_irrelevant[name] ~= nil then
        v = self.is_irrelevant[name]
        self.is_irrelevant[name] = nil
    elseif self.is_true[name] then
        v = true
        self.is_true[name] = nil
    elseif self.is_false[name] then
        v = false
        self.is_false[name] = nil
    end

    if enabled then
        if v then
            self.is_true[name] = true
        else
            self.is_false[name] = true
        end
        
        if dismiss then
            self.dismiss_on[name] = true
        else
            self.dismiss_on[name] = nil
        end
    else
        self.is_irrelevant[name] = v
    end
end

function module:SetReady(name, value)
    if value then
        if self.is_false[name] then
             self.is_false[name] = nil
             self.is_true[name] = true
             self:_CheckSummon()
             return
        elseif self.is_true[name] then
            return
        end
    else
        if self.is_true[name] then
            self.is_true[name] = nil
            self.is_false[name] = true
            self:_CheckUn(name)
            return
        elseif self.is_false[name] then
            return
        end
    end
    
    self.is_irrelevant[name] = not not value
end

function module:ToggleReady(name)
    if self.is_false[name] then
        self:SetReady(name, true)
    else
        self:SetReady(name, false)
    end
end

function module:LastCheck()
    -- these checks are not tied to an event
    return not IsFalling()
        and HasFullControl()
        and GetTime() - self.last_spell_sent > 1.5
end

function module:_CheckSummon(wait_timer_finished)
    if not next(self.is_false) then
        if addon:CurrentPet() and not self.force then
            return
        end
        
        if wait_timer_finished then
            if self:LastCheck() then
                if self.force then
                    -- XXX We used to dismiss our pet here, but currently
                    -- that just causes SummonPetByID to ignore our choice
                    -- and summon something completely at random.
                    self.force = false
                end
                addon:SummonPet()
                self:ScheduleTimer("CheckForSuccess", 2)
                return
            end
        elseif self.wait_timer then
            return
        end
        
        self.wait_timer_counter = 0
        self.wait_timer = self:ScheduleRepeatingTimer("WaitTimerProgress", 0.5)
    end
end

function module:_CheckUn(name)
    --- TODO add a special flag to unsummon even when we are not enabled
    if self.dismiss_on[name] and addon:IsEnabledSummoning() then
        if not InCombatLockdown() then
            addon:DismissPet(false, true)
        end
    end
    
    if self.wait_timer then
        self:CancelTimer(self.wait_timer)
        self.wait_timer = nil
    end
end

function module:WaitTimerProgress()
    self.wait_timer_counter = self.wait_timer_counter + 0.5
    if self.wait_timer_counter >= addon.db.profile.waitTimer then
        self:CancelTimer(self.wait_timer)
        self.wait_timer = nil
        self:_CheckSummon(true)
    elseif not self:LastCheck() then
        self.wait_timer_counter = 0             -- reset
    end
end

function module:CheckForSuccess()
    self:_CheckSummon()
end

function module:QueueResummon(nowait)
    -- if nowait is true, we pretend we are coming from the timer
    self.force = true
    self:_CheckSummon(nowait)
end

function module:PetListUpdated()
    self:SetReady("have_pets", LibPetJournal:NumPets())
end

function module:FrequentCheck()   
    self:SetReady("flying", not IsFlying())

    -- XXX CRZ loses pet but no event fires (5.3 change?)
    local petID = addon:CurrentPet()
    if not petID and petID ~= self._lastPet then
        self:_CheckSummon()
    end
    self._lastPet = petID
end

function module:PLAYER_ENTERING_WORLD()
    local inInstance, instanceType = IsInInstance()
    if IsInGroup() and (instanceType == "party" or instanceType == "raid" or instanceType == "scenario") then
        self:SetReady("in_pve", false)
    else
        self:SetReady("in_pve", true)
    end

    if not self.near_pew_handle then
        self:SetReady("near_pew", true)
        self.near_pew_handle = self:ScheduleTimer("NearPEWFinish", 6 + (addon.db.profile.waitTimer or 1))
    end
end

function module:NearPEWFinish()
    self:SetReady("near_pew", false)
    self.near_pew_handle = false
end

function module:COMPANION_UPDATE(event, ctype)
    if ctype == "CRITTER" then
        self:_CheckSummon()
    end
end
 
function module:BARBER_SHOP_OPEN()
    self:SetReady("barbar", false)
end

function module:BARBER_SHOP_CLOSE()
    self:SetReady("barbar", true)
end

function module:LOOT_OPENED()
    self:SetReady("looting", false)
end

function module:LOOT_CLOSED()
    self:SetReady("looting", true)
end

function module:PLAYER_ALIVE()
    self:SetReady("alive", not UnitIsDeadOrGhost("player"))
end

function module:PLAYER_DEAD()
    self:SetReady("alive", false)
end

function module:PLAYER_UNGHOST()
    self:SetReady("alive", true)
end

function module:CONFIRM_XP_LOSS()
    self:SetReady("alive", true)
end

function module:UPDATE_STEALTH()
    -- camouflage can include stealth, but needs to be handled seperately
    if IsStealthed() and not PlayerHasAuraInList(CAMO_SPELLS) then
        self:SetReady("stealthed", false)
    else
        self:SetReady("stealthed", true)
    end
end

function module:UNIT_AURA(event, unit)
    if unit ~= "player" then
        return
    end
   
    -- check for invisibility
    self:SetReady("invisible", not PlayerHasAuraInList(INVIS_SPELLS))

    -- check for camo
    self:SetReady("camo", not PlayerHasAuraInList(CAMO_SPELLS))

    -- sauroked
    self:SetReady("thunderisle_saurok", not PlayerHasAura(136461))
   
    -- eating means we are sitting down
    if PlayerHasAuraInList(FOOD_SPELLS) then
        self:SetReady("sitting", true)
    end

    -- feign death
    self:SetReady("feigned", not PlayerHasAura(5384))
end

function module:UNIT_SPELLCAST_SENT(event, unit)
    if unit == "player" then
        self.last_spell_sent = GetTime()
        return self:SpellCastUpdate(event, unit)
    end
end

function module:SpellCastUpdate(event, unit)
    if unit == "player" then
        self:SetReady("casting", not (UnitCastingInfo("player") or UnitChannelInfo("player")))
    end
end

function module:PLAYER_REGEN_DISABLED()
    self:SetReady("combat", false)
end

function module:PLAYER_REGEN_ENABLED()
    self:SetReady("combat", true)
end

function module:PLAYER_UPDATE_RESTING()
   self:SetReady("resting", IsResting())
end

function module:ZONE_CHANGED_NEW_AREA()
    self:SetReady("in_battleground", not addon.InBattlegroundOrArena())
end

function module:UNIT_ENTERED_VEHICLE(event, unit)
    if unit == "player" then
        self:SetReady("vehicle", false)
    end
end

function module:UNIT_EXITED_VEHICLE(event, unit)
    if unit == "player" then
        self:SetReady("vehicle", true)
    end
end

function module:PLAYER_STARTED_MOVING(event)
    self:SetReady("sitting", true)
end

function module:PLAYER_FLAGS_CHANGED(event)
    -- if an afk message is set, it was player initiated, which
    -- doesn't cause them to sit down
    if UnitIsAFK("player") and self.afk_message == nil then
        self:SetReady("sitting", false)
    end
    self.afk_message = nil
end
