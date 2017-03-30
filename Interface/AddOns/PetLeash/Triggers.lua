
local addon_name, addon = ...

local L = LibStub("AceLocale-3.0"):GetLocale("PetLeash")

local error, format, FillLocalizedClassList, GetSubZoneText, GetZoneText, ipairs,
    IsInGroup, IsResting, loadstring, pairs, pcall, print, SecureCmdOptionParse,
    setmetatable, tinsert, tonumber, tostring, type, UnitClass, wipe
    = error, format, FillLocalizedClassList, GetSubZoneText, GetZoneText, ipairs,
    IsInGroup, IsResting, loadstring, pairs, pcall, print, SecureCmdOptionParse,
    setmetatable, tinsert, tonumber, tostring, type, UnitClass, wipe

local AceEvent = LibStub("AceEvent-3.0")
local AceGUI = LibStub("AceGUI-3.0")

--
--
--

local TriggerMT = {
    New = function(self)
        local n = { [1] = self.key }
        self:OnNew(n)
        return n
    end,

    OnNew = function(self, new) end,

    MakeOption = function(self, name, type, settings, ...)
        return addon._FT_MakeOption(self, name, type, settings, ...)
    end,

    -- instance methods

    OnInitialize = function(self)

    end,

    RegisterEvent = function(self, event, func)
        AceEvent.RegisterEvent(self, event, func or "CheckUpdate")
    end,

    UnregisterEvent = function(self, event)
        AceEvent.UnregisterEvent(self, event)
    end,

    UnregisterAllEvents = function(self)
        AceEvent.UnregisterAllEvents(self)
    end,

    Free = function(self)
        self:UnregisterAllEvents()
        self:CancelAllTimers()
        self:OnFree()
    end,

    OnFree = function(self) end,

    FillOptions = function(self, parent, settings)
    end,

    CheckUpdate = function(self, ...)
        self:Update(self:Check(...))
    end,

    Check = function(self)
        error("not implemented")
    end,

    Update = function(self, value)
        if value ~= self.value then
            self.value = value
            self.parent:UpdateValue()
        end
    end,

    _SettingsChanged = function(self)
        self.set:RefreshTriggers()
    end,
}
TriggerMT.__index = TriggerMT

LibStub("AceTimer-3.0"):Embed(TriggerMT)

addon.triggers = {}
function addon:RegisterTrigger(name, obj)
    if self.triggers[name] then
        error(format("Summon trigger by the name of %s already exists", name))
    end

    self.triggers[name] = setmetatable(obj or {}, {
        __index = TriggerMT,
    })

    obj.key = name
    obj.instanceMT = {
        __index = function(t, k)
            return obj[k]   -- check self, obj, and TriggerMT
        end
    }

    return self.triggers[name]
end    

function addon:IterateTriggers()
    return pairs(self.triggers)
end

function addon:GetTriggerByKey(name)
    return self.triggers[name]
end

--
--
--

local function buildTriggers(parent, dst, src)
    for _, tr in ipairs(src) do
        local cls = addon:GetTriggerByKey(tr[1])
        if cls then
            local inst = setmetatable({
                name = tr[1],
                settings = tr,
                parent = parent
            }, cls.instanceMT)

            dst[inst] = true
            inst:OnInitialize()

            inst:CheckUpdate("OnInitialize")
        end
    end
end

function addon:RebuildSetTriggers(set)
    if not set.triggers then
        set.triggers = {}
    else
        self:FreeSetTriggers(set)
    end
    
    if not set.invalid and set.settings.trigger then
        buildTriggers(set, set.triggers, set.settings.trigger)
    end
end

function addon:FreeSetTriggers(set)
    if not set.triggers then
        return
    end

    for t in pairs(set.triggers) do
        t:Free()
    end
    wipe(set.triggers)
end

--
--
--

addon:RegisterTrigger("AND", {
    OnNew = function(self, new)
        new.items = {}
    end,
    GetName = function(self)
        return "(And)"
    end,
    FillOptions = function(self, parent, settings)
        local func = parent:GetUserData("_fillFunc")
        func(nil, parent, "trigger", settings.items)
    end,
    OnInitialize = function(self)
        self.subTriggers = {}
        buildTriggers(self, self.subTriggers, self.settings.items)
    end,
    UpdateValue = function(self)
        return self:Update(self:Check())
    end,
    Check = function(self)
        for tr in pairs(self.subTriggers) do 
            if not tr.value then
                return false
            end
        end
        return true
    end,
    OnFree = function(self)
        for t in pairs(self.subTriggers) do
            t:Free()
        end
    end
})

addon:RegisterTrigger("OR", {
    OnNew = function(self, new)
        new.items = {}
    end,
    GetName = function(self)
        return "(Or)"
    end,
    FillOptions = function(self, parent, settings)
        local func = parent:GetUserData("_fillFunc")
        func(nil, parent, "trigger", settings.items)
    end,
    OnInitialize = function(self)
        self.subTriggers = {}
        buildTriggers(self, self.subTriggers, self.settings.items)
    end,
    UpdateValue = function(self)
        return self:Update(self:Check())
    end,
    Check = function(self)
        for tr in pairs(self.subTriggers) do 
            if tr.value then
                return true
            end
        end
        return false
    end,
    OnFree = function(self)
        for t in pairs(self.subTriggers) do
            t:Free()
        end
    end
})


addon:RegisterTrigger("zone", {
    GetName = function(self)
        return ZONE
    end,
    OnNew = function(self, new)
        new.zoneName = GetZoneText()
    end,
    _PullZone = function(frame, settings)
        settings.zoneName = GetZoneText()
        local zn = frame:GetUserData("zoneNameWidget")
        zn:GetUserData("widgetUpdate")(zn)
    end,
    _PullSubZone = function(frame, settings)
        settings.zoneName = GetSubZoneText()
        local zn = frame:GetUserData("zoneNameWidget")
        zn:GetUserData("widgetUpdate")(zn)
    end,
    FillOptions = function(self, parent, settings)
        local zoneName = self:MakeOption("zoneName", "input", settings,
                                            "name", "Name",
                                            "width", 180)
        parent:AddChild(zoneName)

        local grabZone = self:MakeOption("grabZone", "execute", settings,
                                            "name", L["Copy Current Zone"],    -- Localize
                                            "func", self._PullZone,
                                            "width", 180)
        grabZone:SetUserData("zoneNameWidget", zoneName)
        parent:AddChild(grabZone)

        local grabSubZone = self:MakeOption("grabZone", "execute", settings,
                                            "name", L["Copy Current Subzone"],    -- Localize
                                            "func", self._PullSubZone,
                                            "width", 180)
        grabSubZone:SetUserData("zoneNameWidget", zoneName)
        parent:AddChild(grabSubZone)
    end,
    Check = function(self)
        return GetZoneText() == self.settings.zoneName or
            GetSubZoneText() == self.settings.zoneName
    end,
    OnInitialize = function(self)
        self:RegisterEvent("PLAYER_ENTERING_WORLD")
        self:RegisterEvent("ZONE_CHANGED")
        self:RegisterEvent("ZONE_CHANGED_INDOORS")
        self:RegisterEvent("ZONE_CHANGED_NEW_AREA")
    end
})

addon:RegisterTrigger("specialLocation", {
    GetName = function(self)
        return L["Special Location"]
    end,
    OnNew = function(self, new)
        new.loc = "city"
    end,
    _Values = { city = L["City"], battleground = BATTLEGROUND, instance = L["Instance"] },
    FillOptions = function(self, parent, settings) 
        parent:AddChild(self:MakeOption("loc", "select", settings,
                                        "name", TYPE,
                                        "values", self._Values))   
    end,
    Check = function(self)
        if self.settings.loc == "city" then
            return IsResting()
        elseif self.settings.loc == "battleground" then
            return addon.InBattlegroundOrArena()
        elseif self.settings.loc == "instance" then
            return addon.InInstanceOrRaid()
        else
            return true
        end
    end,
    OnInitialize = function(self)
        self:RegisterEvent("ZONE_CHANGED")
        self:RegisterEvent("ZONE_CHANGED_INDOORS")
        self:RegisterEvent("ZONE_CHANGED_NEW_AREA")
        self:RegisterEvent("PLAYER_UPDATE_RESTING")
    end
})

addon:RegisterTrigger("groupType", {
    GetName = function(self)
        return GROUP
    end,
    OnNew = function(self, new)
        new.party = true
        new.raid = true
    end,
    FillOptions = function(self, parent, settings)
        parent:AddChild(self:MakeOption("party", "toggle", settings,
                                        "name", PARTY))
        parent:AddChild(self:MakeOption("raid", "toggle", settings,
                                        "name", RAID))
    end,
    Check = function(self)
        return IsInGroup()
    end,
    OnInitialize = function(self)
        self:RegisterEvent("GROUP_ROSTER_UPDATE")
    end
})

addon:RegisterTrigger("macro", {
    GetName = function(self)
        return L["Macro Conditional"]
    end,
    OnNew = function(self, new)
        new.macro = ""
    end,
    FillOptions = function(self, parent, settings)
        parent:AddChild(self:MakeOption("macro", "input", settings))

        local help = AceGUI:Create("Label")
        help:SetText(L["MACRO_CONDITION_HELP"])
        parent:AddChild(help)
    end,
    Check = function(self)
        local macro = self.settings.macro
        if not macro or macro == "" then
            return false
        end

        local v = SecureCmdOptionParse(macro)
        if(v == nil) then
            return false
        end
        return true
    end,
    OnInitialize = function(self)
        -- XXX Basically how SecureStateDriver does it
        self:ScheduleRepeatingTimer(function() 
            self:CheckUpdate()
        end, 0.2)
    end
})

addon:RegisterTrigger("specialization", {
    GetName = function(self)
        return L["Class Specialization"]
    end,
    OnNew = function(self, new)
        local _, className = UnitClass("player")
        new.class = className
        new.spec = -1
    end,
    FillOptions = function(self, parent, settings)
        local values = {}
        local order = {}

        FillLocalizedClassList(values)
        for k, v in pairs(values) do
            tinsert(order, k)
        end
        table.sort(order, function(a,b)
            return values[a] < values[b]
        end)

        values[""] = L["Any"]
        tinsert(order, 1, "")

        parent:AddChild(self:MakeOption("class", "select", settings,
                                        "name", CLASS, "values", values, "order", order))

        values = {}
        for i = 1,4 do
            local namefmt = ""
            local _, name = GetSpecializationInfo(i)
            if name then
                namefmt = format(" (%s)", name)
            end

            values[i] = format("#%d%s", i, namefmt)
        end
        values[-1] = L["Any"]

        parent:AddChild(self:MakeOption("spec", "select", settings,
                                        "name", SPECIALIZATION, "values", values))
    end,
    Check = function(self)
        if self.settings.class ~= nil then
            local _, playerClass = UnitClass("player")
            if self.settings.class ~= playerClass then
                return false
            end
        end
        if self.settings.spec ~= -1 then
            return GetSpecialization() == self.settings.spec
        end
        return true
    end,
    OnInitialize = function(self)
        self:RegisterEvent("PLAYER_SPECIALIZATION_CHANGED")
    end
})

addon:RegisterTrigger("luacode", {
    GetName = function(self)
        return L["Lua Code"]
    end,
    OnNew = function(self, new)
        new.code = "-- self:RegisterEvent(\"EVENT_NAME\")\n-- return function()\n--    return IsSomething()\n-- end\n"
    end,
    FillOptions = function(self, parent, settings)
        parent:AddChild(self:MakeOption("code", "input", settings, "multiline", true, "width", "full"))
    end,
    _Build = function(self)
        self.func = nil
        self:UnregisterAllEvents()

        if not self.settings.code or self.settings.code == "" then
            return
        end

        local code = "return function(self) "..(self.settings.code or "").." end"
        local outerFunc, errorString = loadstring(code)
        if not outerFunc then
            print("Luacode error[1]: " .. errorString)
            return
        end

        local success, func = pcall(outerFunc, self)
        if not success then
            print("Luacode error[2]: " .. func)
        elseif type(func) == "function" then
            self.func = func
        else
            print("Didn't get a function in luacode (make sure to return it)")
        end
    end,
    Check = function(self)
        if self.func then
            local success, result = pcall(self.func, self)
            if success then
                return result
            else
                print("Luacode error: " .. result)
            end
        end
    end,
    OnInitialize = function(self)
        self:_Build()
    end
})

