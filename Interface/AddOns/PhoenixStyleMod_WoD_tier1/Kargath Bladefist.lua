psbossfiled11=1




function pscmrbossREPORTd111(wipe,try,reset,checkforwipe)
if reset==nil then
if checkforwipe==nil or (checkforwipe and pswasonbossd11 and pswasonbossd11==1) then

	if pswasonbossd11==1 then
		pssetcrossbeforereport1=GetTime()

		if psraidoptionson[3][1][1][1]==1 then
			strochkavezcrash=psiccdmgfrom.." |s4id159412|id (initial, "..psmainmtotal.."): "
			reportafterboitwotab(psraidchats3[psraidoptionschat[3][1][1][1]], true, vezaxname, vezaxcrash, 1)
		end
		if psraidoptionson[3][1][1][2]==1 then
			strochkavezcrash=psiccdmgfrom.." |s4id159413|id (debuff, "..psmainmtotal.."): "
			reportafterboitwotab(psraidchats3[psraidoptionschat[3][1][1][2]], true, vezaxname2, vezaxcrash2, 1)
		end
		if psraidoptionson[3][1][1][3]==1 then
			strochkavezcrash=psiccdmgfrom.." |s4id159311|id ("..psmainmtotal.."): "
			reportafterboitwotab(psraidchats3[psraidoptionschat[3][1][1][3]], true, vezaxname3, vezaxcrash3, 1)
		end
		
		

	end
	if pswasonbossd11==1 or (pswasonbossd11==2 and try==nil) then

		psiccsavinginf(psbossnames[3][1][1], try, pswasonbossd11)

		strochkavezcrash=psiccdmgfrom.." |s4id159412|id (initial, "..psmainmtotal.."): "
		reportafterboitwotab("raid", true, vezaxname, vezaxcrash, nil, nil,0,1)
		strochkavezcrash=psiccdmgfrom.." |s4id159413|id (debuff, "..psmainmtotal.."): "
		reportafterboitwotab("raid", true, vezaxname2, vezaxcrash2, nil, nil,0,1)
		strochkavezcrash=psiccdmgfrom.." |s4id159311|id ("..psmainmtotal.."): "
		reportafterboitwotab("raid", true, vezaxname3, vezaxcrash3, nil, nil,0,1)

		psiccrefsvin()

	end




	if wipe then
		pswasonbossd11=2
		pscheckbossincombatmcr_wod1=GetTime()+1
	end
end
end
end


function pscmrbossRESETd111(wipe,try,reset,checkforwipe)
if reset or wipe==nil then
pswasonbossd11=nil


table.wipe(vezaxname)
table.wipe(vezaxcrash)
table.wipe(vezaxname2)
table.wipe(vezaxcrash2)
table.wipe(vezaxname3)
table.wipe(vezaxcrash3)

end
end



function pscombatlogbossd11(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)




if arg2=="SPELL_DAMAGE" and spellid==159412 then
  if pswasonbossd11==nil then
    pswasonbossd11=1
  end
  psunitisplayer(guid2,name2)
  if psunitplayertrue then

    pscheckwipe1()
    if pswipetrue and pswasonbossd11~=2 then
      psiccwipereport_wod1("wipe", "try")
    end
    addtotwotables1(name2)
    vezaxsort1()
    local tt2=", "..psdamageceil(arg12)
      if arg13>=0 then
        tt2=", "..psdamageceil(arg12-arg13).." |cffff0000("..psoverkill..": "..psdamageceil(arg13)..")|r"
      end
    pscaststartinfo(0,spellname..": "..psaddcolortxt(1,name2)..name2..psaddcolortxt(2,name2)..tt2, -1, "id1", 1, "|s4id"..spellid.."|id - "..psinfo,psbossnames[3][1][1],2)
  end
end

if arg2=="SPELL_PERIODIC_DAMAGE" and spellid==159413 then
  if pswasonbossd11==nil then
    pswasonbossd11=1
  end
  psunitisplayer(guid2,name2)
  if psunitplayertrue then

    pscheckwipe1()
    if pswipetrue and pswasonbossd11~=2 then
      psiccwipereport_wod1("wipe", "try")
    end
    addtotwotables2(name2)
    vezaxsort2()
    local tt2=", "..psdamageceil(arg12)
      if arg13>=0 then
        tt2=", "..psdamageceil(arg12-arg13).." |cffff0000("..psoverkill..": "..psdamageceil(arg13)..")|r"
      end
    pscaststartinfo(0,spellname..": "..psaddcolortxt(1,name2)..name2..psaddcolortxt(2,name2)..tt2, -1, "id1", 2, "|s4id"..spellid.."|id - "..psinfo,psbossnames[3][1][1],2)
  end
end


if arg2=="SPELL_PERIODIC_DAMAGE" and spellid==159311 then
  if pswasonbossd11==nil then
    pswasonbossd11=1
  end
  psunitisplayer(guid2,name2)
  if psunitplayertrue then

    pscheckwipe1()
    if pswipetrue and pswasonbossd11~=2 then
      psiccwipereport_wod1("wipe", "try")
    end
    addtotwotables3(name2)
    vezaxsort3()
    local tt2=", "..psdamageceil(arg12)
      if arg13>=0 then
        tt2=", "..psdamageceil(arg12-arg13).." |cffff0000("..psoverkill..": "..psdamageceil(arg13)..")|r"
      end
    pscaststartinfo(0,spellname..": "..psaddcolortxt(1,name2)..name2..psaddcolortxt(2,name2)..tt2, -1, "id1", 3, "|s4id"..spellid.."|id - "..psinfo,psbossnames[3][1][1],2)
  end
end




end