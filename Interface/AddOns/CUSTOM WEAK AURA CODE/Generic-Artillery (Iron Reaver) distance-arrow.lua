--EVENTS
local COMBAT_LOG_EVENT_UNFILTERED, ARTILLERY_REMOVED

--On Init
aura_env.playerInfo = { }

--- DistanceBetweenUnits('raid3', 'player') - Get the distance (in yards) between the player and the third raid member.
-- DistanceBetweenUnits('raid3') - Same as above (default unit is 'player').
-- DistanceBetweenUnits('raid19, 'party4') - Distance between raid member nineteen and player's party member four.
-- [@unitA] string - (Optional) Friendly unit A to check.  Defaults to 'player'.
-- [@unitB] string - (Optional) Friendly unit B to check.  Defaults to 'player'.
-- return number - Distance (in yards) between both units.
aura_env.DistanceBetweenUnits = function(unitA, unitB)
    unitA = unitA or 'player'
    unitB = unitB or 'player'
    local ax, ay = UnitPosition(unitA)
    local bx, by = UnitPosition(unitB)
    if ax and bx then
        local dx = ax - bx
        local dy = ay - by
        return (dx * dx + dy * dy) ^ 0.5
    end
    return nil
end

aura_env.setClassColor = function(playerName) -- local function to determine the player class and color it
    local class = select(2, UnitClass(playerName))

    local colorText = RAID_CLASS_COLORS[class] and RAID_CLASS_COLORS[class].colorStr or "ffbbbbbb"
    local name = "|c"..colorText..playerName.."|r"

    return name

end





--Custom Trigger
function trigger(e, ...)

    --[[
    CHEAT SHEET for select (X, ...)

    1st Param    2nd Param    3rd Param    4th Param    5th Param    6th Param    7th Param    8th Param    9th Param    10th Param    11th Param
    timestamp    event    hideCaster    sourceGUID    sourceName    sourceFlags    sourceRaidFlags    destGUID    destName    destFlags    destRaidFlags

    Prefix                    1st Parameter (12th)    2nd Parameter (13th)    3rd Parameter (14th)
    SWING
    RANGE                   spellId                          spellName                      spellSchool
    SPELL                    spellId                          spellName                      spellSchool
    SPELL_PERIODIC     spellId                         spellName                      spellSchool
    SPELL_BUILDING     spellId                         spellName                       spellSchool
    ENVIRONMENTAL    environmentalType

    Suffix                1st Param (15th)    2nd Param (16th)    3rd Param (17th)    4th Param (18th)    5th Param (19th)    6th Param (20st)    7th Param (21nd)    8th Param (22rd)    9th Param (23th)    10th Param (24th)    11th Param (25th)
    _DAMAGE                amount                    overkill                    school                     resisted                 blocked                    absorbed                      critical                 glancing                      crushing               isOffHand                   multistrike
    _AURA_APPLIED      auraType                  amount
    _AURA_REMOVED    auraType                  amount


--------------------------------------------------
        ]]


    local subevent = select(2, ...)
    local destName = select(9, ...)
    local spellName = select(13, ...)
    local spellID = select(12, ...)
    local SPELL = "Artillery"
    SPELL = "Rejuvenation" -- test aura

    if subevent == "SPELL_AURA_APPLIED" and spellName == SPELL then
        local name =  string.gsub(destName, "%-[^|]+", "")    -- remove realm names
        for i = 1, GetNumGroupMembers() do
            local raider = "raid"..i
            if UnitName(raider) == name then
                local infoTable = {NAME = name, UNITID = raider, TIME = GetTime()+13}
                table.insert(aura_env.playerInfo, infoTable)
                return true
            end
        end
    end
end



--untrigger
function untrigger(...)
    if next(aura_env.playerInfo) == nil then
        return true
    end
end




--Custom Display
function Display(...)

    local returnString = ""
    if next(aura_env.playerInfo) ~= nil then

        for index, value in pairs(aura_env.playerInfo) do
            local timer = value.TIME - GetTime()

            if timer <= 0 then
                table.remove (aura_env.playerInfo, index)
                WeakAuras.ScanEvents("ARTILLERY_REMOVED") -- fires a custom event for another trigger (basically if for some reason, no other event fires)
                break
            end

            local arrow = GExRT.F.ArrowTextPlayer(value.UNITID, 32)
            local distance = string.format("%.1f", aura_env.DistanceBetweenUnits("player", value.UNITID))

            if UnitIsUnit("player", value.UNITID) then
                arrow = "";
                distance = "on YOU!"
            end

            local red = "|cFFCC0000"
            local yellow = "|cFFFFFF00"
            local green = "|cFF66FF33"

            if distance ~= "on YOU!" then
                if tonumber(distance) <= 20 then
                    distance = red..distance.."|r"
                elseif tonumber(distance) <= 40 then
                    distance = yellow..distance.."|r"
                else
                    distance = green..distance.."|r"
                end
            end

            local coloredName = aura_env.setClassColor(value.NAME)

            if timer then timer = string.format("%.1f", timer) else timer = "" end

            returnString = returnString .. "\n" .. string.format("%s %s: %s - %s", arrow, coloredName, green..distance.."|r", timer)

        end
        return returnString
    else
        return select(5,...) -- name of the aura (shouldn't really show up unless you have the options open)
    end

end