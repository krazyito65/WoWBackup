psbossfiled15=1




function pscmrbossREPORTd151(wipe,try,reset,checkforwipe)
if reset==nil then
if checkforwipe==nil or (checkforwipe and pswasonbossd15 and pswasonbossd15==1) then

	if pswasonbossd15==1 then
		pssetcrossbeforereport1=GetTime()

		if psraidoptionson[3][1][5][1]==1 then
			strochkavezcrash=psdidfriendlyf.." |s4id163374|id ("..psmainmtotal.."): "
			reportafterboitwotab(psraidchats3[psraidoptionschat[3][1][5][1]], true, vezaxname, vezaxcrash, 1)
		end
		if psraidoptionson[3][1][5][2]==1 then
			strochkavezcrash=psiccdmgfrom.." |s4id158241|id ("..psmainmtotal.."): "
			reportafterboitwotab(psraidchats3[psraidoptionschat[3][1][5][2]], true, vezaxname2, vezaxcrash2, 1)
		end
		if psraidoptionson[3][1][5][3]==1 then
			strochkavezcrash=psiccdmgfrom.." |s4id177608|id ("..psmainmtotal.."): "
			reportafterboitwotab(psraidchats3[psraidoptionschat[3][1][5][3]], true, vezaxname3, vezaxcrash3, 1)
		end
		if psraidoptionson[3][1][5][4]==1 then
			strochkavezcrash=psiccdmgfrom.." |s4id158159|id ("..psmainmtotal.."): "
			reportafterboitwotab(psraidchats3[psraidoptionschat[3][1][5][4]], true, vezaxname4, vezaxcrash4, 1)
		end
		if psraidoptionson[3][1][5][5]==1 then
			strochkavezcrash=psmainmgot.." |s4id158102|id ("..psmainmtotal.."): "
			reportafterboitwotab(psraidchats3[psraidoptionschat[3][1][5][5]], true, vezaxname5, vezaxcrash5, 1)
		end
		if psraidoptionson[3][1][5][6]==1 then
			strochkavezcrash=psiccdmgfrom.." |s4id157944|id ("..psmainmtotal.."): "
			reportafterboitwotab(psraidchats3[psraidoptionschat[3][1][5][6]], true, vezaxname6, vezaxcrash6, 1)
		end
		if psraidoptionson[3][1][5][7]==1 then
			strochkavezcrash=psiccdmgfrom.." |s4id158417|id (radius 8, "..psmainmtotal.."): "
			reportafterboitwotab(psraidchats3[psraidoptionschat[3][1][5][7]], true, vezaxname7, vezaxcrash7, 1)
		end		


	end
	if pswasonbossd15==1 or (pswasonbossd15==2 and try==nil) then

		psiccsavinginf(psbossnames[3][1][5], try, pswasonbossd15)

		strochkavezcrash=psdidfriendlyf.." |s4id163374|id ("..psmainmtotal.."): "
		reportafterboitwotab("raid", true, vezaxname, vezaxcrash, nil, nil,0,1)
		strochkavezcrash=psiccdmgfrom.." |s4id158241|id ("..psmainmtotal.."): "
		reportafterboitwotab("raid", true, vezaxname2, vezaxcrash2, nil, nil,0,1)
		strochkavezcrash=psiccdmgfrom.." |s4id177608|id ("..psmainmtotal.."): "
		reportafterboitwotab("raid", true, vezaxname3, vezaxcrash3, nil, nil,0,1)
		strochkavezcrash=psiccdmgfrom.." |s4id158159|id ("..psmainmtotal.."): "
		reportafterboitwotab("raid", true, vezaxname4, vezaxcrash4, nil, nil,0,1)
		strochkavezcrash=psmainmgot.." |s4id158102|id ("..psmainmtotal.."): "
		reportafterboitwotab("raid", true, vezaxname5, vezaxcrash5, nil, nil,0,1)
		strochkavezcrash=psiccdmgfrom.." |s4id157944|id ("..psmainmtotal.."): "
		reportafterboitwotab("raid", true, vezaxname6, vezaxcrash6, nil, nil,0,1)
		strochkavezcrash=psiccdmgfrom.." |s4id158417|id (radius 8, "..psmainmtotal.."): "
		reportafterboitwotab("raid", true, vezaxname7, vezaxcrash7, nil, nil,0,1)

		psiccrefsvin()

	end




	if wipe then
		pswasonbossd15=2
		pscheckbossincombatmcr_wod1=GetTime()+1
	end
end
end
end


function pscmrbossRESETd151(wipe,try,reset,checkforwipe)
if reset or wipe==nil then
pswasonbossd15=nil


table.wipe(vezaxname)
table.wipe(vezaxcrash)
table.wipe(vezaxname2)
table.wipe(vezaxcrash2)
table.wipe(vezaxname3)
table.wipe(vezaxcrash3)
table.wipe(vezaxname4)
table.wipe(vezaxcrash4)
table.wipe(vezaxname5)
table.wipe(vezaxcrash5)
table.wipe(vezaxname6)
table.wipe(vezaxcrash6)
table.wipe(vezaxname7)
table.wipe(vezaxcrash7)

pstwinhwogetthedamage1=nil
pstwinhwogetthedamage2=nil

end
end



function pscombatlogbossd15(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)




if arg2=="SPELL_DAMAGE" and spellid==163374 and guid1~=guid2 then
  if pswasonbossd15==nil then
    pswasonbossd15=1
  end
  psunitisplayer(guid2,name2)
  if psunitplayertrue then

    pscheckwipe1()
    if pswipetrue and pswasonbossd15~=2 then
      psiccwipereport_wod1("wipe", "try")
    end
    addtotwotables1(name1)
    vezaxsort1()
    local tt2=", "..psdamageceil(arg12)
      if arg13>=0 then
        tt2=", "..psdamageceil(arg12-arg13).." |cffff0000("..psoverkill..": "..psdamageceil(arg13)..")|r"
      end
    pscaststartinfo(0,spellname..": "..psaddcolortxt(1,name1)..name1..psaddcolortxt(2,name1).." > "..psaddcolortxt(1,name2)..name2..psaddcolortxt(2,name2)..tt2, -1, "id1", 1, "|s4id"..spellid.."|id - "..psinfo,psbossnames[3][1][5],2)
  end
end

if arg2=="SPELL_PERIODIC_DAMAGE" and spellid==158241 then
  if pswasonbossd15==nil then
    pswasonbossd15=1
  end
  psunitisplayer(guid2,name2)
  if psunitplayertrue then

    pscheckwipe1()
    if pswipetrue and pswasonbossd15~=2 then
      psiccwipereport_wod1("wipe", "try")
    end
	local quant=arg12
	if arg13>=0 then
		quant=quant-arg13
	end
    addtotwotables2(name2,quant)
    vezaxsort2()
    local tt2=", "..psdamageceil(arg12)
      if arg13>=0 then
        tt2=", "..psdamageceil(arg12-arg13).." |cffff0000("..psoverkill..": "..psdamageceil(arg13)..")|r"
      end
    pscaststartinfo(0,spellname..": "..psaddcolortxt(1,name2)..name2..psaddcolortxt(2,name2)..tt2, -1, "id1", 2, "|s4id"..spellid.."|id - "..psinfo,psbossnames[3][1][5],2)
  end
end


if arg2=="SPELL_DAMAGE" and spellid==177608 then
  if pswasonbossd15==nil then
    pswasonbossd15=1
  end
  psunitisplayer(guid2,name2)
  if psunitplayertrue then

    pscheckwipe1()
    if pswipetrue and pswasonbossd15~=2 then
      psiccwipereport_wod1("wipe", "try")
    end
    addtotwotables3(name2)
    vezaxsort3()
    local tt2=", "..psdamageceil(arg12)
      if arg13>=0 then
        tt2=", "..psdamageceil(arg12-arg13).." |cffff0000("..psoverkill..": "..psdamageceil(arg13)..")|r"
      end
    pscaststartinfo(0,spellname..": "..psaddcolortxt(1,name2)..name2..psaddcolortxt(2,name2)..tt2, -1, "id1", 3, "|s4id"..spellid.."|id - "..psinfo,psbossnames[3][1][5],2)
  end
end

if arg2=="SPELL_DAMAGE" and spellid==158159 then
  if pswasonbossd15==nil then
    pswasonbossd15=1
  end
  psunitisplayer(guid2,name2)
  if psunitplayertrue then

    pscheckwipe1()
    if pswipetrue and pswasonbossd15~=2 then
      psiccwipereport_wod1("wipe", "try")
    end
    addtotwotables4(name2)
    vezaxsort4()
    local tt2=", "..psdamageceil(arg12)
      if arg13>=0 then
        tt2=", "..psdamageceil(arg12-arg13).." |cffff0000("..psoverkill..": "..psdamageceil(arg13)..")|r"
      end
    pscaststartinfo(0,spellname..": "..psaddcolortxt(1,name2)..name2..psaddcolortxt(2,name2)..tt2, -1, "id1", 4, "|s4id"..spellid.."|id - "..psinfo,psbossnames[3][1][5],2)
  end
end


--12/15 22:55:40.247  SPELL_INTERRUPT,Creature-0-3773-1228-23678-78238-00000F3AD3,"Пол",0xa48,0x0,Player-1602-02D9346D,"Сайрокс-Гордунни",0x514,0x0,158102,"Прерывающий крик",0x1,116,"Ледяная стрела",16
if arg2=="SPELL_INTERRUPT" and spellid==158102 then
  if pswasonbossd15==nil then
    pswasonbossd15=1
  end
  psunitisplayer(guid2,name2)
  if psunitplayertrue then

    pscheckwipe1()
    if pswipetrue and pswasonbossd15~=2 then
      psiccwipereport_wod1("wipe", "try")
    end
    addtotwotables5(name2)
    vezaxsort5()
    pscaststartinfo(0,spellname..": "..psaddcolortxt(1,name2)..name2..psaddcolortxt(2,name2).." ("..arg13..")", -1, "id1", 5, "|s4id"..spellid.."|id - "..psinfo,psbossnames[3][1][5],2)
  end
end


if arg2=="SPELL_DAMAGE" and spellid==157944 then
  if pswasonbossd15==nil then
    pswasonbossd15=1
  end
  psunitisplayer(guid2,name2)
  if psunitplayertrue then

    pscheckwipe1()
    if pswipetrue and pswasonbossd15~=2 then
      psiccwipereport_wod1("wipe", "try")
    end
    addtotwotables6(name2)
    vezaxsort6()
    local tt2=", "..psdamageceil(arg12)
      if arg13>=0 then
        tt2=", "..psdamageceil(arg12-arg13).." |cffff0000("..psoverkill..": "..psdamageceil(arg13)..")|r"
      end
    pscaststartinfo(0,spellname..": "..psaddcolortxt(1,name2)..name2..psaddcolortxt(2,name2)..tt2, -1, "id1", 6, "|s4id"..spellid.."|id - "..psinfo,psbossnames[3][1][5],2)
  end
end


if arg2=="SPELL_DAMAGE" and spellid==158417 then
  if pswasonbossd15==nil then
    pswasonbossd15=1
  end
  psunitisplayer(guid2,name2)
  if psunitplayertrue then

    pscheckwipe1()
    if pswipetrue and pswasonbossd15~=2 then
      psiccwipereport_wod1("wipe", "try")
    end
    addtotwotables7(name2)
    vezaxsort7()
    local tt2=", "..psdamageceil(arg12)
      if arg13>=0 then
        tt2=", "..psdamageceil(arg12-arg13).." |cffff0000("..psoverkill..": "..psdamageceil(arg13)..")|r"
      end
    pscaststartinfo(0,spellname..": "..psaddcolortxt(1,name2)..name2..psaddcolortxt(2,name2)..tt2, -1, "id1", 7, "|s4id"..spellid.."|id (radius 8) - "..psinfo,psbossnames[3][1][5],2)
  end
end


--разделение урона
if arg2=="SPELL_AURA_APPLIED" and spellid==158026 then
  if pswasonbossd15==nil then
    pswasonbossd15=1
  end
  psunitisplayer(guid2,name2)
  if psunitplayertrue then

    pscheckwipe1()
    if pswipetrue and pswasonbossd15~=2 then
      psiccwipereport_wod1("wipe", "try")
    end
    if (pstwinhwogetthedamage1==nil) then
		pstwinhwogetthedamage1={} --кто получил урон
	end
	pstwinhwogetthedamage2=GetTime()+3 --ждем 3 сек до репорта.
	local bil=0
	if (#pstwinhwogetthedamage1>0) then
		for i=1,#pstwinhwogetthedamage1 do
			if (pstwinhwogetthedamage1[i]==name2) then
				bil=1
			end
		end
	end
	if (bil==0) then
		table.insert(pstwinhwogetthedamage1,name2)
	end

    pscaststartinfo(0,spellname..": "..psaddcolortxt(1,name2)..name2..psaddcolortxt(2,name2), -1, "id1", 8, "|s4id"..spellid.."|id - "..psinfo,psbossnames[3][1][5],2)
  end
end




end