--Custom Trigger: Damage Text
function(e, ...)
	
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

	Suffix       1st Param (15th)    2nd Param (16th)    3rd Param (17th)    4th Param (18th)    5th Param (19th)    6th Param (20st)    7th Param (21nd)    8th Param (22rd)    9th Param (23th)    10th Param (24th)    11th Param (25th)
	_DAMAGE    amount                      overkill                    school                     resisted                 blocked                    absorbed                      critical                 glancing                      crushing               isOffHand                   multistrike
--------------------------------------------------
		
  

------ PET DAMAGE EVENTS
COMBAT_LOG_EVENT_UNFILTERED 1438429786.334 SPELL_DAMAGE false Creature-0-3779-1153-26215-94852-00003CB250 Fey Moonwing 8465 0 Creature-0-3779-1153-26215-87761-0000BC8478 Dungeoneer's Training Dummy 68136 0 188046 Fey Missile 72 3627 -1 72 nil nil nil false false false false false

COMBAT_LOG_EVENT_UNFILTERED 1438435929.592 SWING_DAMAGE false Pet-0-3023-1153-23296-93349-0102430CD1 Abbie 4370 0 Creature-0-3020-1153-8717-87761-00003CBDFC Dungeoneer's Training Dummy 68136 128 762 -1 1 nil nil nil false false false false

 local myPet = sourceFlags and bit.band(sourceFlags, COMBATLOG_OBJECT_AFFILIATION_MASK) == 1 --check if its MY pet or creature (not others)
]]
	
	local intRing = "Nithramus" -- placeholder text for checking if the event happened
	local strRing = "Thorasus"
	local agiRing = "Maalus"
	
	local subevent = select(2, ...) -- lazy variables so i dont have to use underscores (thiking about it now way after i did it, this is pretty smart cause fuck trying to count to make sure I got the right one)
	local spellName = select(13, ...)
	local sourceGUID = select(4, ...)
	
	if subevent == "SPELL_AURA_APPLIED" and (spellName == intRing or spellName == strRing or spellName == agiRing) and not aura_env.triggered then -- if the buff is applies to SOMEONE then show the number, make sure to only trigger once as to not reset whole thing
		return true
		
		--[[
			If the subevent is a 'damaging player event' (SPELL_DAMAGE, SPELL_PERIODIC_DAMAGE, SWING_DAMAGE, SPELL_BUILDING_DAMAGE (player damage to building? idk), or RANGE_DAMAGE)
		]]
		
		
	elseif subevent == "SPELL_DAMAGE" or subevent == "SPELL_PERIODIC_DAMAGE" or subevent == "SWING_DAMAGE" or subevent == "SPELL_BUILDING_DAMAGE" or subevent == "RANGE_DAMAGE" then -- if damage events happen
		
		local name =  string.gsub(select(5, ...), "%-[^|]+", "") -- remove realm names, of the source unit, if any. 5 = SourceName
		local isPet
		if string.match(sourceGUID, "Player") ~= "Player"  then isPet = true else isPet = false end -- 4 is sourceGUID, check if this is a pet
		
		if isPet then
			intRing, strRing, agiRing = nil, nil, nil -- pets keep adding damage and ignore all the checks...
			--local myPet = sourceFlags and bit.band(sourceFlags, COMBATLOG_OBJECT_AFFILIATION_MASK) == 1 --check if its MY pet or creature
			--TODO: find owner of 'creatures' (non player controlled pets, like moonkin 2pc/trinket summoned creatures)
		end
		
		
		---------------------Giant stupid check becasue fuck partys....
		--[[
			  Basic idea here is, check if we are solo, in a party or in a raid. 
			  If one of those are true, find the UnitID of the sourceName (either player, partyN, or raidN, and their pets)
			  If we find a macthing UnitID then make sure that UnitID has the Ring buff (if its a pet, check if the owner has the buff)
			  If they have the buff, we save the name of the ring just to have a 'true' check (if no buff then its nil)
		  ]]

		if GetNumGroupMembers() == 0 then -- not in a party or raid group
			
			intRing = UnitBuff("player", "Nithramus") -- overrides original variable with nil if we do not have the buff
			strRing = UnitBuff("player", "Thorasus")
			agiRing = UnitBuff("player", "Maalus")
			
		elseif GetNumGroupMembers() <= 5 then -- need to check if in a party
			
		   if UnitInRaid("player") == nil then  -- if nil, we are in party, so fuck you. This makes it more complicated (have to check 'party1-4' and 'player')
				
				if UnitName("player") == name or (sourceGUID == UnitGUID("playerpet")) then -- the player or his pet casted the spell
					intRing = UnitBuff("player", "Nithramus") -- overrides original variable with nil if we do not have the buff
					strRing = UnitBuff("player", "Thorasus")
					agiRing = UnitBuff("player", "Maalus")
				else -- someone else casted the spell
					for i=1, GetNumGroupMembers() do
						local raider = "party"..i -- its gonna check for party5, but its nil so fuck it, it may break before then anyway. (there is only party1-4)
						if UnitName(raider) == name or (sourceGUID == UnitGUID(raider.."pet")) then -- UnitName returns only the name in the first parameter (realm in the second), or the units pet
							intRing = UnitBuff(raider, "Nithramus") -- overrides original variable with nil if we do not have the buff
							strRing = UnitBuff(raider, "Thorasus")
							agiRing = UnitBuff(raider, "Maalus")
							break
						end --end current raider
					end -- end for loop
				end -- end player / raid member check
				
			else -- we are in a raid, yay so easy
				for i=1, GetNumGroupMembers() do
					local raider = "raid"..i
					if UnitName(raider) == name or (sourceGUID == UnitGUID(raider.."pet")) then -- UnitName returns only the name in the first parameter (realm in the second), or the units pet
						intRing = UnitBuff(raider, "Nithramus") -- overrides original variable with nil if we do not have the buff
						strRing = UnitBuff(raider, "Thorasus")
						agiRing = UnitBuff(raider, "Maalus")
						break
					end-- end current raider
				end --end for loop
			end -- end party check
		end -- end raid/party check   
		---------------------Giant stupid check becasue fuck partys....
		
		
		--[[
			  If we have a ring buff, then Check if the damage was a swing or not
			  Regardless of what it was, add the damage amount to the total
		  ]]
		
		if intRing ~= nil or strRing ~= nil or agiRing ~= nil then -- if we have the buff
			if subevent == "SWING_DAMAGE" then -- swing has different return postions
				aura_env.amount = aura_env.amount + select(12, ...)  -- 12 is SWING_DAMAGE amount
			else -- its any other event we were checking for
				aura_env.amount = aura_env.amount + select(15, ...) -- 15 is SPELL_DAMAGE amount
			end -- end swing check
		end --end buff check
	end -- end event check
end -- end function

