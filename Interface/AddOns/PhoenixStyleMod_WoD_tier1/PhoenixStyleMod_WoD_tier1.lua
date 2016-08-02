function psloadpatchwod3()

pslocalepatchwod31()

if GetLocale()=="deDE" or GetLocale()=="ruRU" or GetLocale()=="zhTW" or GetLocale()=="zhCN" or GetLocale()=="frFR" or GetLocale()=="koKR" or GetLocale()=="esES" or GetLocale()=="esMX" then
pslocalepatchwod3()
end

--description of the menu
psraidoptionstxtd1={}
psraidoptionstxtd1[1]={{"|tip2 "..psmainmdamagefrom.." |sid159412|id (initial)", "|tip2 "..psmainmdamagefrom.." |sid159412|id (debuff)", "|tip2 "..psmainmdamagefrom.." |sid159311|id"},
{},
{"|tip2 "..psmainmdamagefrom.." |sid163798|id","|tip2 "..psmainmdamagefrom.." |sid163793|id", "|tip2 "..psmainmgot.." |sid165223|id (total time)", "|tip2 "..psmainmgot.." |sid163666|id"},
{"|tip2 "..psmainmdamagefrom.." |sid162370|id","|tip2 "..psmainmdamagefrom.." |sid163209|id"},
{"|tip2 "..psdidfriendlyf.." |sid163374|id","|tip2 "..psmainmdamagefrom.." |sid158241|id","|tip2 "..psmainmdamagefrom.." |sid177608|id","|tip2 "..psmainmdamagefrom.." |sid158159|id","|tip2 "..psmainmgot.." |sid158102|id","|tip2 "..psmainmdamagefrom.." |sid157944|id","|tip2 "..psmainmdamagefrom.." |sid158417|id (radius 8)","|tip1 "..psmainmdontsplitdamage.." |sid158026|id"},
{},
{"|tip2 "..psmainmgot.." |sid159200|id"},
}
psraidoptionstxtd1[2]={{"|tip2 "..psmainmdamagefrom.." |sid155301|id"},
{"|tip2 "..psmainmdamagefrom.." |sid156374|id","|tip2 "..psmainmdamagefrom.." |sid155900|id"},
{},
{"|tip2 "..psmainmdamagefrom.." |sid161570|id","|tip2 "..psmainmdamagefrom.." |sid155818|id","|tip2 "..psmainmdamagefrom.." |sid158140|id"},
{"|tip2 "..psmainmdamagefrom.." |sid155314|id","|tip2 "..psmainmdamagefrom.." |sid156018|id"},
{"|tip2 "..psmainmdamagefrom.." |sid157659|id","|tip2 "..psmainmdamagefrom.." |sid157247|id"},
{"|tip2 "..psmainmdamagefrom.." |sid154960|id","|tip2 "..psmainmdamagefrom.." |sid154989|id"},
{"|tip2 "..psmainmdamagefrom.." |sid158084|id","|tip2 "..psmainmdamagefrom.." |sid156554|id"},
{"|tip2 "..psmainmdamagefrom.." |sid157884|id"},
{},
}
psraidoptionstxtd1[3]={{},
{"|tip2 "..psmainmdamagefrom.." |sid185284|id","|tip2 "..psmainmdamagefrom.." |sid179897|id"},
{"|tip2 "..psmainmdamagefrom.." |sid181292|id"},
{"|tip2 "..psmainmdamagefrom.." |sid188852|id"},
{"|tip2 "..psmainmdamagefrom.." |sid183226|id"},
{"|tip2 "..psmainmdamagefrom.." |sid181295|id","|tip2 "..psmainmdamagefrom.." |sid180017|id","|tip2 "..psmainmdamagefrom.." |sid180146|id","|tip2 "..psmainmdamagefrom.." |sid179995|id"},
{"|tip2 "..psmainmdamagefrom.." |sid182600|id","|tip2 "..psmainmdamagefrom.." |sid181824|id"},
{"|tip2 "..psmainmdamagefrom.." |sid182218|id"},
{"|tip2 "..psmainmdamagefrom.." |sid183090|id","|tip2 "..psmainmdamagefrom.." |sid180252|id"},
{"|tip2 "..psmainmdamagefrom.." |sid181921|id"},
{"|tip2 "..psmainmdamagefrom.." |sid185656|id"},
{"|tip2 "..psmainmdamagefrom.." |sid181793|id","|tip2 "..psmainmdamagefrom.." |sid181566|id"},
{"|tip2 "..psmainmdamagefrom.." |sid187244|id","|tip2 "..psmainmdamagefrom.." |sid183586|id","|tip2 "..psmainmdamagefrom.." |sid186562|id"},
}


for i=1,#psraidoptionstxtd1 do
	for j=1,#psraidoptionstxtd1[i] do
		for k=1,#psraidoptionstxtd1[i][j] do
			psraidoptionstxtd1[i][j][k]=psspellfilter(psraidoptionstxtd1[i][j][k])
		end
	end
end

--chat settings 1 or 2 or 3
psraidoptionschatdefd1={}
psraidoptionschatdefd1[1]={{1,1,1},
{},
{1,1,1,1},
{1,1},
{1,1,2,2,1,1,1,1},
{},
{1},
}
psraidoptionschatdefd1[2]={{1},
{1,1},
{},
{1,1,1},
{1,1},
{1,1},
{1,1},
{1,1},
{1},
{},
}
psraidoptionschatdefd1[3]={{},
{1,1},
{1},
{1},
{1},
{1,1,1,1},
{1,1},
{1},
{1,1},
{1},
{1},
{1,1},
{1,1,1},
}


--chat settings on or off
psraidoptionsondefd1={}
psraidoptionsondefd1[1]={{1,1,1},
{},
{1,1,1,1},
{1,1},
{1,1,1,1,1,1,1,1},
{},
{1},
}
psraidoptionsondefd1[2]={{1},
{1,1},
{},
{1,1,1},
{1,1},
{1,1},
{1,1},
{1,1},
{1},
{},
}
psraidoptionsondefd1[3]={{},
{1,1},
{1},
{1},
{1},
{1,1,1,1},
{1,1},
{1},
{1,1},
{1},
{1},
{1,1},
{1,1,1},
}


SetMapToCurrentZone()
if GetCurrentMapAreaID()==pslocations[3][1] or GetCurrentMapAreaID()==pslocations[3][2] or GetCurrentMapAreaID()==pslocations[3][3] then
	PhoenixStyleMod_patchwod3:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
end
	PhoenixStyleMod_patchwod3:RegisterEvent("PLAYER_REGEN_DISABLED")
	PhoenixStyleMod_patchwod3:RegisterEvent("PLAYER_REGEN_ENABLED")
	PhoenixStyleMod_patchwod3:RegisterEvent("ZONE_CHANGED_NEW_AREA")
	PhoenixStyleMod_patchwod3:RegisterEvent("ADDON_LOADED")
	PhoenixStyleMod_patchwod3:RegisterEvent("CHAT_MSG_ADDON")
	PhoenixStyleMod_patchwod3:RegisterEvent("CHAT_MSG_RAID_BOSS_EMOTE")
	PhoenixStyleMod_patchwod3:RegisterEvent("CHAT_MSG_MONSTER_EMOTE")
	

end



--онапдейт
function psonupdatepatchwod3(curtime)





--тут всякие онапдейт модули

--кто не разделил урон
if pstwinhwogetthedamage2 and curtime>pstwinhwogetthedamage2 then
pstwinhwogetthedamage2=nil
	local text=""
	
	--собираем инфо по тем кто НЕ разделил урон и жив!
	local taball={}
	local psgroup=8

	--получаем ИД своей зоны
	local myzone="nozone"
	for ko=1,GetNumGroupMembers() do
		local name,_,_,_,_,_,zone = GetRaidRosterInfo(ko)
		if name==UnitName("player") then
		  --моя зона
		  myzone=zone
		end
	end

	
	
	for i = 1,GetNumGroupMembers() do
		name, _, subgroup, _, _, _, zone, online, isDead = GetRaidRosterInfo(i)
		if GetMapNameByID(GetCurrentMapAreaID())==zone or zone==myzone then
			if subgroup<=psgroup and online and (isDead==nil or isDead==false) and UnitIsDeadOrGhost(name)==false then
				--народ с дебафом не заносим
				local a=GetSpellInfo(163374)
				if UnitDebuff(i, a)==nil or UnitDebuff(i, a)==false then
					table.insert(taball,name)
				end
			end
		end
	end

	--удаляем тех, кто получил урон
	for k=1,#pstwinhwogetthedamage1 do
        if pstwinhwogetthedamage1[k] then
          if #taball>0 then
            for j=1,#taball do
              if taball[j] and taball[j]==pstwinhwogetthedamage1[k] then
                table.remove(taball,j)
              end
            end
          end
        end
	end
      if #taball>0 then
        text=text..". |cffff0000"..psmainmdontsplitdamage.." ("..#taball..")"
        if #taball<9 then
          text=text..": |r"
          for v=1,#taball do
            text=text..psaddcolortxt(1,taball[v])..taball[v]..psaddcolortxt(2,taball[v])
            if v~=#taball then
              text=text..", "
            end
          end
        else
          text=text..".|r"
        end
      end
			

	
	if string.len(text)>2 then
		pscaststartinfo(0,text, -1, "id1", 8, "|s4id158026|id - "..psinfo,psbossnames[3][1][5],2)
		if psraidoptionson[3][1][5][8]==1 and pswasonbossd15==1 then
		  pszapuskanonsa(psraidchats3[psraidoptionschat[3][1][5][8]], "{rt8} "..text)
		end
	end

pstwinhwogetthedamage1=nil
end





--evade after 3 sec
if pscmrcheckforevade_wod1 and curtime>pscmrcheckforevade_wod1 then
pscmrcheckforevade_wod1=pscmrcheckforevade_wod1+7
local id=0
if UnitGUID("boss1") then
	id=psGetUnitID(UnitGUID("boss1"))
end
local bil=0
if #psbossbugs>0 then
	for i=1,#psbossbugs do
		if psbossbugs[i]==id then
			bil=1
		end
	end
end
if (UnitName("boss1")==nil and UnitName("boss2")==nil and UnitName("boss3")==nil) or bil==1 or (UnitName("boss1") and UnitName("boss1")=="") then
psiccwipereport_wod1(nil,"try")
end
end



if pscatamrdelayzone_wod1 and curtime>pscatamrdelayzone_wod1 then
pscatamrdelayzone_wod1=nil
local a1, a2, a3, a4, a5 = GetInstanceInfo()
if UnitInRaid("player") or (a2=="raid" or (a2=="party" and a3==2)) then
SetMapToCurrentZone()
end
if GetCurrentMapAreaID()==pslocations[3][1] or GetCurrentMapAreaID()==pslocations[3][2] or GetCurrentMapAreaID()==pslocations[3][3] then
PhoenixStyleMod_patchwod3:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
else
PhoenixStyleMod_patchwod3:UnregisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
end
end

--announce delay for phasing
if psiccrepupdate_wod1 and curtime>psiccrepupdate_wod1 then
psiccrepupdate_wod1=nil
psiccwipereport_wod1(psdelcount1,psdelcount2,psdelcount3)
psdelcount1=nil
psdelcount2=nil
psdelcount3=nil
end


--прерванные бои
if pscheckbossincombatmcr_wod1 and GetTime()>pscheckbossincombatmcr_wod1 then
	pscheckbossincombatmcr_wod1=pscheckbossincombatmcr_wod1+2


local id=0
if UnitGUID("boss1") then
	id=psGetUnitID(UnitGUID("boss1"))
end
local bil=0
if #psbossbugs>0 then
	for i=1,#psbossbugs do
		if psbossbugs[i]==id then
			bil=1
		end
	end
end

	if UnitGUID("boss1") and bil==0 and UnitName("boss1")~="" then
	else
		pscheckbossincombatmcr_wod1=nil
		pscheckbossincombatmcr_wod12=GetTime()+1
	end
end

if pscheckbossincombatmcr_wod12 and GetTime()>pscheckbossincombatmcr_wod12 then
	pscheckbossincombatmcr_wod12=nil
	if psbossblock==nil then
		psiccwipereport_wod1(nil, nil, "reset")
	end
end

if pscatadelaycheckboss and curtime>pscatadelaycheckboss then
pscatadelaycheckboss=nil
if psdevmode then
print("пытаюсь понять что за босс в бою")
end

	if UnitGUID("boss1") then
		local id2=UnitGUID("boss1")
		local id=psGetUnitID(id2)
local bil=0
if #psbossbugs>0 then
	for i=1,#psbossbugs do
		if psbossbugs[i]==id then
			bil=1
		end
	end
end
		if bil==0 and UnitName("boss1")~="" then
			pscmroncombatstartcheckboss_wod1(id)
		else
			pscmrdelayofbosccheck_wod1=GetTime()+1
		end
	else
		pscmrdelayofbosccheck_wod1=GetTime()+1
	end
end


--постоянная проверка по ходу боя...
if pscmrdelayofbosccheck_wod1 and curtime>pscmrdelayofbosccheck_wod1 then
pscmrdelayofbosccheck_wod1=curtime+1
if psdevmode then
print("пытаюсь понять что за босс в бою2")
end

	if UnitGUID("boss1") then
		local id2=UnitGUID("boss1")
		local id=psGetUnitID(id2)
local bil=0
if #psbossbugs>0 then
	for i=1,#psbossbugs do
		if psbossbugs[i]==id then
			bil=1
		end
	end
end
		if bil==0 and UnitName("boss1")~="" then
			pscmroncombatstartcheckboss_wod1(id)
			pscmrdelayofbosccheck_wod1=nil
		end
	end
end


--hunter die delay

if psicchunterdiedelay and curtime>psicchunterdiedelay then
psicchunterdiedelay=nil


psicchunterdiedelaytable=nil
psicchunterdiedelayboss=nil
end







end

function pscmroncombatstartcheckboss_wod1(id)

if psbossblock==nil then

SetMapToCurrentZone()
if GetCurrentMapAreaID()==pslocations[3][1] or GetCurrentMapAreaID()==pslocations[3][2] or GetCurrentMapAreaID()==pslocations[3][3] then
  pscmrcheckforevade_wod1=GetTime()+10
end


--ыыытест новые боссы прописывать тут (2 места)



if GetCurrentMapAreaID()==pslocations[3][1] then
	if (id==78714) and psbossfiled11 then
		pswasonbossd11=1
	end
	if (id==77404) and psbossfiled12 then
		pswasonbossd12=1
	end
	if (id==78491) and psbossfiled13 then
		pswasonbossd13=1
	end
	if (id==78948) and psbossfiled14 then
		pswasonbossd14=1
	end
	if (id==78237) and psbossfiled15 then
		pswasonbossd15=1
	end
	if (id==79015) and psbossfiled16 then
		pswasonbossd16=1
	end
	if (id==77428) and psbossfiled17 then
		pswasonbossd17=1
	end
end

if GetCurrentMapAreaID()==pslocations[3][2] then
	if (id==76877) and psbossfiled21 then
		pswasonbossd21=1
	end
	if (id==77182) and psbossfiled22 then
		pswasonbossd22=1
	end
	if (id==76806) and psbossfiled23 then
		pswasonbossd23=1
	end
	if (id==76973 or id==76974) and psbossfiled24 then
		pswasonbossd24=1
	end
	if (id==76814) and psbossfiled25 then
		pswasonbossd25=1
	end
	if (id==77692) and psbossfiled26 then
		pswasonbossd26=1
	end
	if (id==76865) and psbossfiled27 then
		pswasonbossd27=1
	end
	if (id==76906) and psbossfiled28 then
		pswasonbossd28=1
	end
	if (id==77557) and psbossfiled29 then
		pswasonbossd29=1
	end
	if (id==77325) and psbossfiled210 then
		pswasonbossd210=1
	end
end

if GetCurrentMapAreaID()==pslocations[3][3] then
if psdevmode then
print ("ID BOSSA: "..id)
end
	if (id==93023) and psbossfiled31 then
		pswasonbossd31=1
	end
	if (id==90284) and psbossfiled32 then
		pswasonbossd32=1
	end
	if (id==90435) and psbossfiled33 then
		pswasonbossd33=1
	end
	if (id==90378) and psbossfiled34 then
		pswasonbossd34=1
	end
	if (id==92146 or id==92144 or id==93713) and psbossfiled35 then
		pswasonbossd35=1
	end
	if (id==90199) and psbossfiled36 then
		pswasonbossd36=1
	end
	if (id==90316) and psbossfiled37 then
		pswasonbossd37=1
	end
	if (id==90296) and psbossfiled38 then
		pswasonbossd38=1
	end
	if (id==90269) and psbossfiled39 then
		pswasonbossd39=1
	end
	if (id==89890) and psbossfiled310 then
		pswasonbossd310=1
	end
	if (id==93068) and psbossfiled311 then
		pswasonbossd311=1
	end
	if (id==91349 or id==91305) and psbossfiled312 then
		pswasonbossd312=1
	end
	if (id==91331) and psbossfiled313 then
		pswasonbossd313=1
	end
end


end

end


function psoneventpatchwod3(self,event,...)


if event == "COMBAT_LOG_EVENT_UNFILTERED" then

local arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15,arg16,arg17,arg18 = ...

--Inst 6
if GetCurrentMapAreaID()==pslocations[3][1] then

if pswasonbossd11 then
pscombatlogbossd11(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd12 then
pscombatlogbossd12(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd13 then
pscombatlogbossd13(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd14 then
pscombatlogbossd14(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd15 then
pscombatlogbossd15(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd16 then
pscombatlogbossd16(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd17 then
pscombatlogbossd17(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)

else

pscombatlogbossd11(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd12(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd13(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd14(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd15(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd16(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd17(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)

end

end
--inst 6 end


--Inst 6
if GetCurrentMapAreaID()==pslocations[3][2] then


if pswasonbossd21 then
pscombatlogbossd21(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd22 then
pscombatlogbossd22(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd23 then
pscombatlogbossd23(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd24 then
pscombatlogbossd24(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd25 then
pscombatlogbossd25(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd26 then
pscombatlogbossd26(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd27 then
pscombatlogbossd27(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd28 then
pscombatlogbossd28(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd29 then
pscombatlogbossd29(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd210 then
pscombatlogbossd210(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)

else

pscombatlogbossd21(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd22(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd23(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd24(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd25(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd26(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd27(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd28(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd29(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd210(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)

end

end
--Inst 7

if GetCurrentMapAreaID()==pslocations[3][3] then


if pswasonbossd31 then
pscombatlogbossd31(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd32 then
pscombatlogbossd32(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd33 then
pscombatlogbossd33(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd34 then
pscombatlogbossd34(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd35 then
pscombatlogbossd35(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd36 then
pscombatlogbossd36(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd37 then
pscombatlogbossd37(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd38 then
pscombatlogbossd38(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd39 then
pscombatlogbossd39(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd310 then
pscombatlogbossd310(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd311 then
pscombatlogbossd311(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd312 then
pscombatlogbossd312(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
elseif pswasonbossd313 then
pscombatlogbossd313(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)

else

pscombatlogbossd31(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd32(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd33(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd34(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd35(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd36(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd37(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd38(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd39(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd310(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd311(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd312(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)
pscombatlogbossd313(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)

end

end



--res to reset info
if arg2=="SPELL_RESURRECT" and (spellid==83968 or spellid==7328 or spellid==50769 or spellid==2008 or spellid==2006) then
psiccwipereport_wod1(nil,"try")
end


else

--остальные евенты

local arg1, arg2, arg3,arg4,arg5,arg6 = ...

if event == "PLAYER_REGEN_DISABLED" then


if (psbilresnut and GetTime()<psbilresnut+3) or pscheckbossincombat then


else

--тут резет всего в начале боя ыытест


pselegontabldamage3={{},{},{},{}}
table.wipe (pselegontabldamage3[1])
table.wipe (pselegontabldamage3[2])
table.wipe (pselegontabldamage3[3])
table.wipe (pselegontabldamage3[4])



if UnitGUID("boss1") then
local id2=UnitGUID("boss1")
local id=psGetUnitID(id2)
local bil=0
if #psbossbugs>0 then
	for i=1,#psbossbugs do
		if psbossbugs[i]==id then
			bil=1
		end
	end
end
if bil==0 and UnitName("boss1")~="" then
pscmroncombatstartcheckboss_wod1(id)
else
pscatadelaycheckboss=GetTime()+2
end

else
pscatadelaycheckboss=GetTime()+2
end


end
end


if event=="PLAYER_REGEN_ENABLED" then
	if UnitAffectingCombat("player")==false and UnitIsDeadOrGhost("player")==false then --and UnitName("boss1")==nil
    --if pswasonbossp42 then
    --  psrezetnotcombp3=GetTime()+3
    --else
      psrezetnotcombp3=GetTime()+5
    --end
	end
end



if event == "ZONE_CHANGED_NEW_AREA" then


psiccwipereport_wod1(nil,"try")
pscatamrdelayzone_wod1=GetTime()+3


end


if event == "CHAT_MSG_ADDON" then


end

if event =="CHAT_MSG_MONSTER_EMOTE" then



end

if event=="CHAT_MSG_RAID_BOSS_EMOTE" then



end




if event == "ADDON_LOADED" then

if arg1=="PhoenixStyleMod_WoD_tier1" then



local psiccnewveranoncet={}
if GetLocale()=="ruRU" then
psiccnewveranoncet={}
end 




pslastmoduleloadtxt="Raids WoD"


--перенос переменных

pscmrpassvariables_wod1()


for i=1,#psraidoptionsond1 do
	if psraidoptionson[3][i]==nil then psraidoptionson[3][i]={}
	end
	for j=1,#psraidoptionsond1[i] do
		if psraidoptionson[3][i][j]==nil then
			psraidoptionson[3][i][j]={}
		end
		for t=1,#psraidoptionsond1[i][j] do
			if psraidoptionson[3][i][j][t]==nil then
				psraidoptionson[3][i][j][t]=psraidoptionsond1[i][j][t]
			end
		end
	end

	if psraidoptionstxt[i]==nil then psraidoptionstxt[i]={}
	end
	for j=1,#psraidoptionstxtd1[i] do
		if psraidoptionstxt[i][j]==nil then
			psraidoptionstxt[i][j]={}
		end
		for t=1,#psraidoptionstxtd1[i][j] do
			if psraidoptionstxt[i][j][t]==nil then
				psraidoptionstxt[i][j][t]=psraidoptionstxtd1[i][j][t]
			end
		end
	end




	if psraidoptionschat[3][i]==nil then psraidoptionschat[3][i]={}
	end
	for j=1,#psraidoptionschatd1[i] do
		if psraidoptionschat[3][i][j]==nil then
			psraidoptionschat[3][i][j]={}
		end
		for t=1,#psraidoptionschatd1[i][j] do
			if psraidoptionschat[3][i][j][t]==nil then
				psraidoptionschat[3][i][j][t]=psraidoptionschatd1[i][j][t]
			end
		end
	end
end



--boss manual localization update



end
end
--остальные евенты конец





end --рейд


end --КОНЕЦ ОНЕВЕНТ


--tryorkill - if try then true, if kill - nil, reset - only reset no report
--pswasonboss42 1 если мы в бою с боссом и трекерим, 2 если вайпнулись и продолжаем трекерить ПОСЛЕ анонса
function psiccwipereport_wod1(wipe, tryorkill, reset, checkforwipe)
local aa=""
if wipe then
aa=aa.."wipe:"..wipe.."."
end
if tryorkill then
aa=aa.."tryorkill:"..tryorkill.."."
end
if reset then
aa=aa.."reset:"..reset.."."
end
if checkforwipe then
aa=aa.."checkforwipe:"..checkforwipe.."."
end


	if pszapuskdelayphasing>0 then
	psiccrepupdate_wod1=pszapuskdelayphasing
	pszapuskdelayphasing=0
	if psiccrepupdate_wod1>7 then psiccrepupdate_wod1=7 end
	psiccrepupdate_wod1=psiccrepupdate_wod1+GetTime()
	psdelcount1=wipe
	psdelcount2=tryorkill
	psdelcount3=reset
	else

		if psiccrepupdate_wod1==nil then

--ыыытест новые боссы прописывать тут (2 места)
pscmrcheckforevade_wod1=nil



if (pswasonbossd11) then
pscmrbossREPORTd111(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd111(wipe, tryorkill, reset, checkforwipe)
end

if (pswasonbossd12) then
pscmrbossREPORTd121(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd121(wipe, tryorkill, reset, checkforwipe)
end

if (pswasonbossd13) then
pscmrbossREPORTd131(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd131(wipe, tryorkill, reset, checkforwipe)
end

if (pswasonbossd14) then
pscmrbossREPORTd141(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd141(wipe, tryorkill, reset, checkforwipe)
end

if (pswasonbossd15) then
pscmrbossREPORTd151(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd151(wipe, tryorkill, reset, checkforwipe)
end

if (pswasonbossd16) then
pscmrbossREPORTd161(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd161(wipe, tryorkill, reset, checkforwipe)
end

if (pswasonbossd17) then
pscmrbossREPORTd171(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd171(wipe, tryorkill, reset, checkforwipe)
end




if (pswasonbossd21) then
pscmrbossREPORTd211(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd211(wipe, tryorkill, reset, checkforwipe)
end

if (pswasonbossd22) then
pscmrbossREPORTd221(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd221(wipe, tryorkill, reset, checkforwipe)
end

if (pswasonbossd23) then
pscmrbossREPORTd231(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd231(wipe, tryorkill, reset, checkforwipe)
end

if (pswasonbossd24) then
pscmrbossREPORTd241(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd241(wipe, tryorkill, reset, checkforwipe)
end

if (pswasonbossd25) then
pscmrbossREPORTd251(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd251(wipe, tryorkill, reset, checkforwipe)
end

if (pswasonbossd26) then
pscmrbossREPORTd261(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd261(wipe, tryorkill, reset, checkforwipe)
end

if (pswasonbossd27) then
pscmrbossREPORTd271(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd271(wipe, tryorkill, reset, checkforwipe)
end

if (pswasonbossd28) then
pscmrbossREPORTd281(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd281(wipe, tryorkill, reset, checkforwipe)
end

if (pswasonbossd29) then
pscmrbossREPORTd291(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd291(wipe, tryorkill, reset, checkforwipe)
end

if (pswasonbossd210) then
pscmrbossREPORTd2101(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd2101(wipe, tryorkill, reset, checkforwipe)
end


if (pswasonbossd31) then
pscmrbossREPORTd311(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd311(wipe, tryorkill, reset, checkforwipe)
end
if (pswasonbossd32) then
pscmrbossREPORTd321(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd321(wipe, tryorkill, reset, checkforwipe)
end
if (pswasonbossd33) then
pscmrbossREPORTd331(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd331(wipe, tryorkill, reset, checkforwipe)
end
if (pswasonbossd34) then
pscmrbossREPORTd341(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd341(wipe, tryorkill, reset, checkforwipe)
end
if (pswasonbossd35) then
pscmrbossREPORTd351(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd351(wipe, tryorkill, reset, checkforwipe)
end
if (pswasonbossd36) then
pscmrbossREPORTd361(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd361(wipe, tryorkill, reset, checkforwipe)
end
if (pswasonbossd37) then
pscmrbossREPORTd371(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd371(wipe, tryorkill, reset, checkforwipe)
end
if (pswasonbossd38) then
pscmrbossREPORTd381(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd381(wipe, tryorkill, reset, checkforwipe)
end
if (pswasonbossd39) then
pscmrbossREPORTd391(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd391(wipe, tryorkill, reset, checkforwipe)
end
if (pswasonbossd310) then
pscmrbossREPORTd3101(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd3101(wipe, tryorkill, reset, checkforwipe)
end
if (pswasonbossd311) then
pscmrbossREPORTd3111(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd3111(wipe, tryorkill, reset, checkforwipe)
end
if (pswasonbossd312) then
pscmrbossREPORTd3121(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd3121(wipe, tryorkill, reset, checkforwipe)
end
if (pswasonbossd313) then
pscmrbossREPORTd3131(wipe, tryorkill, reset, checkforwipe)
pscmrbossRESETd3131(wipe, tryorkill, reset, checkforwipe)
end

		end

	end

if wipe==nil and psbossblock==nil then
psbossblock=GetTime()
end

end


function pscmrpassvariables_wod1()

if psraidoptionschatd1==nil then psraidoptionschatd1={} end

for i=1,#psraidoptionschatdefd1 do
	if psraidoptionschatd1[i]==nil then
		psraidoptionschatd1[i]={}
	end
	for j=1,#psraidoptionschatdefd1[i] do
		if psraidoptionschatd1[i][j]==nil then
			psraidoptionschatd1[i][j]={}
		end
		for t=1,#psraidoptionschatdefd1[i][j] do
			if psraidoptionschatd1[i][j][t]==nil or (psraidoptionschatd1[i][j][t] and psraidoptionschatd1[i][j][t]==0) then
				psraidoptionschatd1[i][j][t]=psraidoptionschatdefd1[i][j][t]
			end
		end
	end
end

if psraidoptionsond1==nil then psraidoptionsond1={} end

for i=1,#psraidoptionstxtd1 do
	if psraidoptionsond1[i]==nil then
		psraidoptionsond1[i]={}
	end
	for j=1,#psraidoptionschatdefd1[i] do
		if psraidoptionsond1[i][j]==nil then
			psraidoptionsond1[i][j]={}
		end
		for t=1,#psraidoptionschatdefd1[i][j] do
			if psraidoptionsond1[i][j][t]==nil then
				psraidoptionsond1[i][j][t]=psraidoptionschatdefd1[i][j][t]
			end
		end
	end
end

end