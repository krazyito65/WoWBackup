
local addon_name, addon = ... 

local LibPetJournal = LibStub("LibPetJournal-2.0")

local L = LibStub("AceLocale-3.0"):GetLocale("PetLeash")

local _G = _G
local C_PetJournal, error, format, ipairs, pairs, setmetatable, tinsert, tonumber, tostring
    = C_PetJournal, error, format, ipairs, pairs, setmetatable, tinsert, tonumber, tostring

--
--
--

local FilterMT = {
    New = function(self)
        local n = { [1] = self.key, [2] = 1 }
        self:OnNew(n)
        return n
    end,
    OnNew = function(self, new) end,
    GetPets = function(self, opts, t, flat)
        t = t or {}
        for _, petID in LibPetJournal:IteratePetIDs() do
            if self:Filter(petID, opts) then
                if not flat then
                    local weight = opts[2] or 1
                    tinsert(t, weight)
                    t.total = (t.total or 0) + weight
                end
                tinsert(t, petID)
            end
        end
        return t
    end,
    Filter = function(self, petID, opts)
        error("not implemented")
    end,
    FillOptions = function(self, parent, settings)
        -- can be nothing
    end,
    MakeOption = function(self, name, type, settings, ...)
        return addon._FT_MakeOption(self, name, type, settings, ...)
    end,
    _SettingsChanged = function(self)
        
    end,
}
FilterMT.__index = FilterMT

addon.filters = {}
function addon:RegisterFilter(name, obj)
    obj.key = name

    if self.filters[name] then
        error(format("Filter by the name of %s already exists", name))
    end
    self.filters[name] = setmetatable(obj or {}, {
        __index = FilterMT
    })

    return self.filters[name]
end

function addon:IterateFilters()
    return pairs(self.filters)
end

function addon:GetFilterByKey(name)
    return self.filters[name]
end

--
--
--

local ops = {
    ["=="] = function(a,b)
        return a == b
    end,
    [">="] = function(a,b)
        return a >= b
    end,
    [">"] = function(a,b)
        return a > b
    end,
    ["<="] = function(a,b)
        return a <= b
    end, 
    ["<"] = function(a,b)
        return a < b
    end,
}

local opnames = {}
for op in pairs(ops) do
    opnames[op] = op
end

addon:RegisterFilter("AND", {
    OnNew = function(self, new)
        new.items = {}
    end,
    GetName = function(self)
        return "(And)"
    end,
    FillOptions = function(self, parent, settings)
        local func = parent:GetUserData("_fillFunc")
        func(nil, parent, "filter", settings.items)
    end,
    Filter = function(self, petID, settings)
        for _,subSettings in ipairs(settings.items) do 
            local filter = addon:GetFilterByKey(subSettings[1])
            if filter and not filter:Filter(petID, subSettings) then
                return false
            end
        end
        return true
    end
})

addon:RegisterFilter("OR", {
    OnNew = function(self, new)
        new.items = {}
    end,
    GetName = function(self)
        return "(Or)"
    end,
    FillOptions = function(self, parent, settings)
        local func = parent:GetUserData("_fillFunc")
        func(nil, parent, "filter", settings.items)
    end,
    Filter = function(self, petID, settings)
        for _,subSettings in ipairs(settings.items) do 
            local filter = addon:GetFilterByKey(subSettings[1])
            if filter and filter:Filter(petID, subSettings) then
                return true
            end
        end
        return false
    end
})

addon:RegisterFilter("level", {
    OnNew = function(self, new)
        new.operator = ">="
        new.level = 1
    end,
    GetName = function(self)
        return LEVEL
    end,
    FillOptions = function(self, parent, settings)
        parent:AddChild(self:MakeOption("operator", "select", settings,
                                        "name", "Operator",
                                        "width", 100,
                                        "values", opnames))
        parent:AddChild(self:MakeOption("level", "input", settings,
                                        "name", "Level",
                                        "width", 100))
    end,
    Filter = function(self, petID, crit)
        local _, _, lvl = C_PetJournal.GetPetInfoByPetID(petID)
        local cmp = ops[crit.operator or "?"]
        if cmp then
            return cmp(lvl, tonumber(crit.level))
        end
    end,
})

addon:RegisterFilter("favorites", {
    GetName = function(self)
        return FAVORITES
    end,
    Filter = function(self, petID, criteria)
        local _, _, _, _, _, _, isFavorite = C_PetJournal.GetPetInfoByPetID(petID)
        return isFavorite
    end
})

addon:RegisterFilter("petType", {
    OnNew = function(self, new)
        new.petType = 1
    end,
    GetName = function(self)
        return "Pet Type"
    end,
    Filter = function(self, petID, criteria)
        local _, _, _, _, _, _, _, _, _, petType = C_PetJournal.GetPetInfoByPetID(petID)
        return petType == tonumber(criteria.petType)
    end,
    _Values = function(self)
        local tmp = {}
        for i = 1,C_PetJournal.GetNumPetTypes() do
            tmp[tostring(i)] = _G["BATTLE_PET_NAME_"..i]
        end
        return tmp
    end,
    FillOptions = function(self, parent, settings)
        parent:AddChild(self:MakeOption("petType", "select", settings,
                                        "name", "Pet Type",
                                        "values", self:_Values()))
    end
})
