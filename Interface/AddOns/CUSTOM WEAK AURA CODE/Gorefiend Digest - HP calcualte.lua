--OnInit
aura_env.playerInfo = {}

function Trigger(e, ...)
    
    ---Events. Shortcut variables.
    local CLEU = "COMBAT_LOG_EVENT_UNFILTERED"
    local FU = "FRAME_UPDATE"
    ---
    if e == FU then
        --return true every frame (due to FRAME_UPDATE)
        return true
    end
    
    if e == CLEU then
        
        --subevents.  Shortcut variables, kinda obvious what each one pertains to.
        local SAA = "SPELL_AURA_APPLIED" 
        local SAR = "SPELL_AURA_REMOVED" 
        local SwD = "SWING_DAMAGE"
        local SpD = "SPELL_DAMAGE"
        local SPD = "SPELL_PERIODIC_DAMAGE"
        local RD = "RANGE_DAMAGE"
        ---
        
        -- CLEU parameters.
        local DIGEST = "Digest" -- spellname used to remove player from a table
        local CORRUPTION = "Gorefiend's Corruption" -- spell name that is used to check if a ghost spawns
        local subevent = select(2, ...) -- used for above subevents.
        local destGUID = select(8, ...) -- used for checking if the target is a 'Creature' (i.e. not a player)
        local destName = select(9, ...) -- name of the target of the debuff / damage event.
        local swingAmount = select(12, ...) -- only for SWING_DAMAGE, otherwise its spellID
        local spellName = select(13, ...) -- spell name, only used to check for Digest debuff.  Don't care about anything else.
        local damageAmount = select(15, ...) -- for all damage events that is not swing. Includes overkill (we dont care about overkill in this instance.)
        
        
        if subevent == SAA and spellName == CORRUPTION then -- If Gorefiend's Corruption is applied.
            
            local name =  string.gsub(destName, "%-[^|]+", "") -- remove realm names, if any
            
            for k,v in pairs(aura_env.playerInfo) do -- for every player in the list
                if v.NAME == name then -- if their name is already in the list
                    table.remove(aura_env.playerInfo, k) -- remove them before we add them.
                    break -- stop looping once we find the player
                end
            end
            
            local infoTable = {NAME = name, DMG_TAKEN = 0} -- store name and inital damage taken(0 damage when it spawns)
            table.insert(aura_env.playerInfo, infoTable) -- insert the above table into the main table we will cycle through.
            
        elseif subevent == SAR and spellName == DIGEST then -- if digest is removed.
            local name =  string.gsub(destName, "%-[^|]+", "") -- remove realm names, if any
            for k,v in pairs(aura_env.playerInfo) do -- for every player we added to the table
                if v.NAME == name then -- if the player whos debuff was removed name is in the table.
                    table.remove(aura_env.playerInfo, k) -- remove them from the table.
                    break -- stop looking through the table.
                end
            end
            
        elseif (subevent == SwD or subevent == SpD or subevent == SPD or subevent == RD) and string.match(destGUID, "Creature") == "Creature"then
            -- damage happened to a creature, add it to damage taken if in the list.
            
            local name =  string.gsub(destName, "%-[^|]+", "") -- remove realm names, if any (redundant since souls don't have realm names?)
            
            for k,v in pairs(aura_env.playerInfo) do -- for every player in the table
                if v.NAME == name then -- if the name matches the unit that took damage and is a creature.
                    if subevent == SwD then -- if the damage was a swing damage
                        v.DMG_TAKEN = v.DMG_TAKEN + swingAmount -- add the amount of damage taken
                    else
                        v.DMG_TAKEN = v.DMG_TAKEN + damageAmount -- add the amount of damage taken
                    end
                    break -- stop looping through the table.
                end
            end
        end
    end
end


function Untrigger() return false end -- never untrigger. Trigger 1 is used for triggering the aura. (the table should never get populated until digest happens anyway




function Display(...)
    
    local digestName = select(5,...) -- this is the name of the player who got digested (taken from trigger 1, so this will always be accurate)
    digestName  =  string.gsub(digestName, "%-[^|]+", "") -- remove realm names, if any (redundant maybe?)
    
    local initalHP = 1047180 -- 1,047,180 hp per soul
    local dmgReturn = 0 -- just setting up to use this variable to return the amount of damage taken.
    
    
    for k,v in pairs(aura_env.playerInfo) do -- for every player in the table
        if digestName == v.NAME then -- if their name matches trigger 1's name
            dmgReturn = v.DMG_TAKEN -- save the amount of damage that player took so far
            break -- stop looping through the table 
        end
    end
    
    return string.format("%s - %d %%%%", digestName, ((initalHP - dmgReturn) / initalHP) * 100)
    -- return "Name - HP%", name of the person and the health calculation (1m - damage taken / 1m) * 100
end


