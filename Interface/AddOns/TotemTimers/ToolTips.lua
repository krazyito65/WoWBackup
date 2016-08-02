-- Copyright © 2008 - 2012 Xianghar  <xian@zron.de>
-- All Rights Reserved.
-- This code is not to be modified or distributed without written permission by the author.
-- Current distribution permissions only include curse.com, wowinterface.com and their respective addon updaters

if select(2,UnitClass("player")) ~= "SHAMAN" then return end

local L = LibStub("AceLocale-3.0"):GetLocale("TotemTimers", true)

local SpellNames = TotemTimers.SpellNames

local r = 0
local g = 0.9
local b = 1


local function SetTooltipSpellID(id)
    if GetCVar("UberTooltips") == "1" then
         GameTooltip:SetSpellByID(id)
    else
        GameTooltip:ClearLines()
        GameTooltip:AddLine(SpellNames[id],1,1,1)
    end
end

function TotemTimers.PositionTooltip(self)
    if not TotemTimers.ActiveProfile.TooltipsAtButtons then 
        GameTooltip_SetDefaultAnchor(GameTooltip, self)
    else
        local left = self:GetLeft()
        if left<UIParent:GetWidth()/2 then
            GameTooltip:SetOwner(self, "ANCHOR_RIGHT")
        else			
            GameTooltip:SetOwner(self, "ANCHOR_LEFT")
        end
    end
end

function TotemTimers.HideTooltip(self)
    GameTooltip:Hide()
end

function TotemTimers.timerTooltip(self)
    if false and self.timer and self.element and not IsModifierKeyDown() and TotemTimers.ActiveProfile.ShowRaidRangeTooltip then
        if self.timer.timers[1] <= 0 then return end
        local count = TotemTimers.GetOutOfRange(self.element)
        if count <= 0 then return end
        local missingBuffGUIDs, names, classes = TotemTimers.GetOutOfRangePlayers(self.element)
        GameTooltip:ClearLines()
        TotemTimers.PositionTooltip(self)
        for guid,_ in pairs(missingBuffGUIDs) do
            GameTooltip:AddLine(names[guid], RAID_CLASS_COLORS[classes[guid]].r, RAID_CLASS_COLORS[classes[guid]].g, RAID_CLASS_COLORS[classes[guid]].b)
        end
        GameTooltip:Show()
    elseif self:GetAttribute("tooltip") then
        local spell = self:GetAttribute("*spell1")
		if spell and type(spell) == "string" then spell = TotemTimers.NameToSpellID[spell] end
        if spell and spell > 0 then
            TotemTimers.PositionTooltip(self)
            SetTooltipSpellID(spell)
        end
    end
end


function TotemTimers.TotemTooltip(self)
    local spell = self:GetAttribute("*spell1")
    if spell and type(spell) == "string" then spell = TotemTimers.NameToSpellID[spell] end
    TotemTimers.PositionTooltip(self)
    if spell and spell > 0 then
        SetTooltipSpellID(spell)
    end

    GameTooltip:AddLine(" ")
    GameTooltip:AddLine(L["Leftclick to cast spell"],r,g,b,1)
    local button = L["Fire Button"]
    if self.bar.order == 2 then button = L["Earth Button"]
    elseif self.bar.order == 3 then button = L["Water Button"]
    elseif self.bar.order == 4 then button = L["Air Button"] end
    GameTooltip:AddLine(L["Rightclick to assign totem to timer button"],r,g,b,1)
    GameTooltip:Show()
end


function TotemTimers.SetTooltip(self)
    if not TotemTimers.ActiveProfile.Tooltips then return end
    TotemTimers.PositionTooltip(self)
    GameTooltip:AddLine(L["Leftclick to open totem set menu"],r,g,b,1)
    GameTooltip:AddLine(L["Rightclick to save active totem configuration as set"],r,g,b,1)
    GameTooltip:Show()
end

function TotemTimers.SetButtonTooltip(self)
    TotemTimers.PositionTooltip(self)
    GameTooltip:AddLine(L["Leftclick to load totem set"],r,g,b,1)
    GameTooltip:AddLine(L["Rightclick to delete totem set"],r,g,b,1)
    GameTooltip:Show()
end
