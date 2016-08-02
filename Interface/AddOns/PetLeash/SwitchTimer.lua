
local addon_name, addon = ...

local module = addon:NewModule("SwitchTimer", "AceEvent-3.0", "AceTimer-3.0")
addon.SwitchTimer = module

local GetZoneText, IsResting = GetZoneText, IsResting

--
--
--

function module:OnInitialize()
    self.db = addon.db

    self:RegisterEvent("PLAYER_ENTERING_WORLD")
    self:RegisterEvent("ZONE_CHANGED_NEW_AREA")
end

function module:Start(no_restart)
    if self.switch_timer then
        if no_restart then return end
        
        self:CancelTimer(self.switch_timer)
        self.switch_timer = nil
    end
    
    local enabled = self.db.profile.autoSwitch.timer
    local value = self.db.profile.autoSwitch.timerValue
    if enabled then
        self.switch_timer = self:ScheduleTimer("AutoSwitchTimer", value)
    end
end

function module:Stop()
    if self.switch_timer then
        self:CancelTimer(self.switch_timer)
        self.switch_timer = nil
    end
end

function module:AutoSwitchTimer()
    self.switch_timer = nil
    
    if self.db.profile.autoSwitch.citiesOnly and not IsResting() then
        return self:Start()
    end
    
    addon:ResummonPet()
end

function module:PLAYER_ENTERING_WORLD()
    if addon:CurrentPet() then
        self:Start()
    end
end

function module:ZONE_CHANGED_NEW_AREA()
    if addon.db.profile.autoSwitch.onZone then
        -- check to make sure we really changed areas
        -- unfortunately the event fires before the area changes
        self:ScheduleTimer("CheckAutoSwitchZone", 1.0)
    end
end

function module:CheckAutoSwitchZone()
    local currentZone = GetZoneText()
    if currentZone ~= self.autoSwitchLastZone then
        addon.Ready:QueueResummon()
        self.autoSwitchLastZone = currentZone
    end
end
