
local addon_name, addon = ...

local _G = _G
_G.PetLeash = LibStub("AceAddon-3.0"):NewAddon(addon, addon_name, "AceConsole-3.0", "AceEvent-3.0", "AceTimer-3.0")

local L = LibStub("AceLocale-3.0"):GetLocale("PetLeash")
local LibPetJournal = LibStub("LibPetJournal-2.0")

local assert, C_PetJournal, error, fastrandom, format, getmetatable,
    hooksecurefunc, ipairs, InCombatLockdown, IsInInstance, next, pairs,
    setmetatable, strfind, tinsert, type, wipe
    = assert, C_PetJournal, error, fastrandom, format, getmetatable,
    hooksecurefunc, ipairs, InCombatLockdown, IsInInstance, next, pairs,
    setmetatable, strfind, tinsert, type, wipe
local math_huge = math.huge

--
-- Binding globals
--

_G.BINDING_HEADER_PETLEASH = addon_name
_G.BINDING_NAME_PETLEASH_SUMMON = L["Summon Another Pet"]
_G.BINDING_NAME_PETLEASH_DESUMMON = L["Dismiss Pet"]
_G.BINDING_NAME_PETLEASH_TOGGLE = L["Toggle Non-Combat Pet"]
_G.BINDING_NAME_PETLEASH_CONFIG = L["Open Configuration"]

--
-- Default DB
--

local defaults = {
    profile = {
        enable = true,
        enableInBattleground = true,
        dismissInBattleground = false,
        disableOutsideCities = false,
        dismissWhenStealthed = false,
        disableForQuestItems = true,
        enableInPVE = true,
        dismissInPVE = false,
        nearPEWOnly = false,
        overrideSetLoadout = false,
        waitTimer = 3,
        verbose = true,
        autoSwitch = {
            timer = false,
            timerValue = 30*60,
            citiesOnly = false,
            onZone = false,
        },
        minimap = {
            hide = true,
        },
        sets = {
            ["$Default"] = {
                name = DEFAULT,
                enabled = true,
                defaultValue = 1,
                priority = -1,
                pets = {},
                filter = {},
            },
            ["*"] = {
                enabled = true,
                defaultValue = 0,
                priority = 1,
                pets = {},
                filter = {},
                trigger = {}
            }
        },
    }
}

local default_ignore_override = {
    -- by speciesID
    [114] = true,     -- Disgusing Oozling (Combat Effect)
    [283] = true,     -- Guild Page, Horde (Long cooldown)
    [281] = true,     -- Guild Herald, Horde (Long cooldown)
    [280] = true,     -- Guild Page, Alliance (Long cooldown)
    [282] = true,     -- Guild Herald, Alliance (Long cooldown)
}

--
-- Initialization
--

function addon:OnInitialize()
    self.setCache = {}

    self.db = LibStub("AceDB-3.0"):New("PetLeash3DB", defaults, true)   

    self.db.RegisterCallback(self, "OnProfileChanged", "OnProfileChange")
    self.db.RegisterCallback(self, "OnProfileCopied", "OnProfileChange")
    self.db.RegisterCallback(self, "OnProfileReset", "OnProfileChange")

    hooksecurefunc(C_PetJournal, "SetPetLoadOutInfo", function(...) self:OnSetPetLoadOut(...) end)
    
    LibPetJournal.RegisterCallback(self, "PetsUpdated")
end

function addon:OnEnable()
    self:ReloadSets()
end

function addon:OnProfileChange()
    self:ReloadSets()    
    self.Ready:UpdateChecks(self.db.profile)
end

function addon:ReloadSets()
    for _,set in pairs(self.setCache) do
        set:Free()
    end
    wipe(self.setCache)
    self.currentSet = nil

    self:UpdateCurrentSet()
end

--
-- Utility
--

function addon:IsEnabledSummoning()
    return self.db.profile.enable
end

function addon:EnableSummoning(v)
    local oldv = self.db.profile.enable

    if((not oldv) ~= (not v)) then
        self.db.profile.enable = v
        
        -- TODO: is there a better way to trigger config update?
        LibStub("AceConfigRegistry-3.0"):NotifyChange("PetLeash")
        
        -- XXX Use :Enable/:Disable instead
        self:SendMessage("PetLeash-EnableState", v)
    end
end

function addon:OpenOptions()
    self:GetModule("Options"):OpenOptions()
end

function addon:DumpDebugState()
    if self:IsEnabledSummoning() then
        self:Printf("Enabled")
    else
        self:Printf("Disabled")
    end    
    
    for name, module in self:IterateModules() do
        local f = module["DumpDebugState"]
        if f then
            f(module)
        end
    end
end

function addon:InBattlegroundOrArena()
    local _,t = IsInInstance()
    return t == "pvp" or t == "arena"
end

function addon:InInstanceOrRaid()
    local _,t = IsInInstance()
    return t == "party" or t == "raid"
end

function addon:OnSetPetLoadOut(slotid, petid)
    if self.db.profile.overrideSetLoadout and slotid == 1 then
        self:ResummonPet()
    end
end

function addon:CurrentPet()
    return C_PetJournal.GetSummonedPetGUID()
end

function addon:PetsUpdated()
    for setName, set in self:IterateSets() do
        if set.RefreshSet then
            set:RefreshSet()
        end
    end
end

--
-- Sets
--

local SetMT = {
    Refresh = function(self)
        self.noNotify = true
        self.name = self.settings.name or self.name
        self:RefreshTriggers()
        self:RefreshSet()

        self.noNotify = false
        self:_NotifyAddOn()
    end,

    RefreshTriggers = function(self)
        assert(not self.invalid)
        addon:RebuildSetTriggers(self)
        self:UpdateValue()
    end,

    RefreshSet = function(self)
        assert(not self.invalid)

        if self.settings.enabled and self.value then
            self:_NotifyAddOn()
        end

        self.setDirty = true
        wipe(self.weightTable)
    end,

    GetPriority = function(self)
        if self.invalid then
            return -math_huge
        end
        return self.settings.priority
    end,

    IsActive = function(self)
        if self.invalid then
            return false
        end

        if not self.settings.enabled or not self.value then
            return false
        end

        if self.setDirty then
            addon:BuildSetWeights(self.settings, self.weightTable)
        end

        return self.weightTable.total > 0
    end,

    IsImmediate = function(self)
        return self.settings.immediate
    end,

    UpdateValue = function(self)
        local alltrue = true
        for tr in pairs(self.triggers) do 
            if not tr.value then
                alltrue = false
                break
            end
        end
        if self.value ~= alltrue then
            self.value = alltrue
            self:_NotifyAddOn()
        end
    end,

    Contains = function(self, petID)
        if self.setDirty then
            addon:BuildSetWeights(self.settings, self.weightTable)
        end

        for i = 1,#self.weightTable,2 do
            if petID == self.weightTable[i+1] then
                return true
            end
        end
        return false
    end,

    PickPet = function(self)
        assert(not self.invalid)

        if self.setDirty then
            addon:BuildSetWeights(self.settings, self.weightTable)
        end

        local r = fastrandom()*self.weightTable.total
        for i = 1,#self.weightTable,2 do
            local w, id = self.weightTable[i], self.weightTable[i+1]
            r = r - w
            if r <= 0 then
                return id
            end
        end
    end,

    _NotifyAddOn = function(self)
        if not self.noNotify then
            addon:NotifySetStateChanged(self)
        end
    end,

    Free = function(self)
        self.invalid = true
        if addon.currentSet == self then
            addon:UpdateCurrentSet()
        end
        addon:FreeSetTriggers(self)
    end,

    Rename = function(self, name)
        assert(not strfind(name, "^%$"))
        assert(addon.db.profile.sets[self.name])
        -- XXX handle renaming over an existing (reload everything?)
        addon.db.profile.sets[name] = addon.db.profile.sets[self.name]
        addon.db.profile.sets[self.name] = nil
        self.settings.name = name
        self:Refresh()
    end,

    Delete = function(self)
        addon.db.profile.sets[self.name] = nil
        self:Free()
    end,
}
SetMT.__index = SetMT

function addon:GetSetByName(name)
    if self.setCache[name] then
        return self.setCache[name]
    elseif not self.db.profile.sets[name] then
        return
    end

    local set = setmetatable({
        name = name,
        setDirty = false,
        weightTable = {},
        settings = self.db.profile.sets[name],
    }, SetMT)

    local mt = getmetatable(set.settings.pets)
    if not mt or not mt.isPetsMT then
        setmetatable(set.settings.pets, {
            isPetsMT = true,
            __index = function(self, key)
                local speciesID = C_PetJournal.GetPetInfoByPetID(key)
                if speciesID and default_ignore_override[speciesID] then
                    return 0
                end
                return set.settings.defaultValue
            end
        })
    end

    self.setCache[name] = set
    set:Refresh()
    
    return set
end

function addon:UpdateCurrentSet()
    -- scan sets for highest priority active
    local current
    for _, set in self:IterateSets() do
        if set:IsActive() and (not current or current:GetPriority() <= set:GetPriority()) then
            current = set
        end
    end

    if current then
        self.currentSet = current

        if current:IsImmediate() and not current:Contains(self:CurrentPet()) then
            self:QueueResummon()
        end
    end
end

function addon:NotifySetStateChanged(set)  
    local oldCurrent = self.currentSet
    local higherPrio = not oldCurrent or set:GetPriority() >= oldCurrent:GetPriority()

    if higherPrio or oldCurrent == set then
        self:UpdateCurrentSet()
    end
end

function addon:NewSet(name)
    -- XXX check for existance?
    self.db.profile.sets[name].name = name
    return self:GetSetByName(name)
end

function addon:DeleteSet(name)
    local set = self:GetSetByName()
    assert(set ~= nil)
    set:Delete()
end

local function nextSetIt(a, i)
    local n = next(a.db.profile.sets, i)
    if n then
        return n, a:GetSetByName(n)
    end
end

function addon:IterateSets()
    return nextSetIt, self
end

function addon:BuildSetWeights(input, output)
    output = output or {}

    output.total = 0
    for _, petID in LibPetJournal:IteratePetIDs() do
        local value = input.pets[petID]
        local isSummonable = C_PetJournal.PetIsSummonable(petID) and not C_PetJournal.PetNeedsFanfare(petID)
        if value and value > 0 and isSummonable then
            tinsert(output, value)
            output.total = output.total + value

            tinsert(output, petID)
        end
    end

    for _, filterOpt in pairs(input.filter) do
        local filter = self:GetFilterByKey(filterOpt[1])
        if filter then
            filter:GetPets(filterOpt, output)
        end
    end

    return output
end

function addon:GetCurrentSet()
    if not self.currentSet then
        self:UpdateCurrentSet()
    end
    return self.currentSet
end

--
-- Pet Summoning
--

function addon:PickPet()
    local set
    for name, module in self:IterateModules() do
        local f = module["PickPet"]
        if f then
            local id = f(module)
            if id then
                return id
            end
        end
    end

    local currentSet = self:GetCurrentSet()
    if currentSet then
        return currentSet:PickPet()
    end
end

function addon:GetPetName(petid)
    local _, customName, _, _, _, _, _, petName = C_PetJournal.GetPetInfoByPetID(petid)
    return customName or petName or "?"
end

function addon:SummonPet()
    local petid = self:PickPet()
    if self:CurrentPet() == petid then
        return false
    elseif not petid then
        return false
    end

    if C_PetJournal.GetPetCooldownByGUID and (C_PetJournal.GetPetCooldownByGUID(petid) or 0) > 0 then
        return false
    end

    if self.db.profile.verbose then
        self:Printf(L["SUMMONING_MSG"], self:GetPetName(petid))
    end

    C_PetJournal.SummonPetByGUID(petid)

    self.SwitchTimer:Start()
    
    return true
end

function addon:_DismissVerify(petID)
    if C_PetJournal.GetSummonedPetGUID() == petID then
        if not InCombatLockdown() then
            C_PetJournal.SummonPetByGUID(petID)
        end
    else
        self:CancelTimer(self.dismissVerifyHandle)
        self.dismissVerifyHandle = nil
    end
end

function addon:DismissPet(disable, verify)
    local curid = C_PetJournal.GetSummonedPetGUID()

    if curid ~= nil and curid ~= 0 then
        C_PetJournal.SummonPetByGUID(curid)

        if verify then
            self:CancelTimer(self.dismissVerifyHandle)
            self.dismissVerifyHandle = self:ScheduleRepeatingTimer("_DismissVerify", 0.3, curid)
        end
    end

    if disable then
        addon:EnableSummoning(false)
    end
end

function addon:ResummonPet(enable, nowait)
    if enable then
        self:EnableSummoning(true)
    end

    self.Ready:QueueResummon(nowait)
end

function addon:QueueResummon()
    self.Ready:QueueResummon()
end

function addon:TogglePet()
    if self:CurrentPet() then
        self:DismissPet(true)
    else
        self:ResummonPet(true, true)
    end
end

