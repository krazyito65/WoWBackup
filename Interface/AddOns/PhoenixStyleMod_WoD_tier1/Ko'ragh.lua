psbossfiled16=1




function pscmrbossREPORTd161(wipe,try,reset,checkforwipe)
if reset==nil then
if checkforwipe==nil or (checkforwipe and pswasonbossd16 and pswasonbossd16==1) then

	if pswasonbossd16==1 then
		pssetcrossbeforereport1=GetTime()

		if psraidoptionson[3][1][6][1]==1 then
			strochkavezcrash=psiccdmgfrom.." |s4id159412|id (initial, "..psmainmtotal.."): "
			reportafterboitwotab(psraidchats3[psraidoptionschat[3][1][6][1]], true, vezaxname, vezaxcrash, 1)
		end
		if psraidoptionson[3][1][6][2]==1 then
			strochkavezcrash=psiccdmgfrom.." |s4id159413|id (debuff, "..psmainmtotal.."): "
			reportafterboitwotab(psraidchats3[psraidoptionschat[3][1][6][2]], true, vezaxname2, vezaxcrash2, 1)
		end


	end
	if pswasonbossd16==1 or (pswasonbossd16==2 and try==nil) then

		psiccsavinginf(psbossnames[3][1][6], try, pswasonbossd16)

		strochkavezcrash=psiccdmgfrom.." |s4id159412|id (initial, "..psmainmtotal.."): "
		reportafterboitwotab("raid", true, vezaxname, vezaxcrash, nil, nil,0,1)
		strochkavezcrash=psiccdmgfrom.." |s4id159413|id (debuff, "..psmainmtotal.."): "
		reportafterboitwotab("raid", true, vezaxname2, vezaxcrash2, nil, nil,0,1)

		psiccrefsvin()

	end




	if wipe then
		pswasonbossd16=2
		pscheckbossincombatmcr_wod1=GetTime()+1
	end
end
end
end


function pscmrbossRESETd161(wipe,try,reset,checkforwipe)
if reset or wipe==nil then
pswasonbossd16=nil


table.wipe(vezaxname)
table.wipe(vezaxcrash)
table.wipe(vezaxname2)
table.wipe(vezaxcrash2)

end
end



function pscombatlogbossd16(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)




if arg2=="SPELL_DAMAGE" and spellid==99999999 then
  if pswasonbossd16==nil then
    pswasonbossd16=1
  end
  psunitisplayer(guid2,name2)
  if psunitplayertrue then

    pscheckwipe1()
    if pswipetrue and pswasonbossd16~=2 then
      psiccwipereport_wod1("wipe", "try")
    end
    addtotwotables1(name2)
    vezaxsort1()
    local tt2=", "..psdamageceil(arg12)
      if arg13>=0 then
        tt2=", "..psdamageceil(arg12-arg13).." |cffff0000("..psoverkill..": "..psdamageceil(arg13)..")|r"
      end
    pscaststartinfo(0,spellname..": "..psaddcolortxt(1,name2)..name2..psaddcolortxt(2,name2)..tt2, -1, "id1", 1, "|s4id"..spellid.."|id - "..psinfo,psbossnames[3][1][6],2)
  end
end

if arg2=="SPELL_DAMAGE" and spellid==99999999 then
  if pswasonbossd16==nil then
    pswasonbossd16=1
  end
  psunitisplayer(guid2,name2)
  if psunitplayertrue then

    pscheckwipe1()
    if pswipetrue and pswasonbossd16~=2 then
      psiccwipereport_wod1("wipe", "try")
    end
    addtotwotables2(name2)
    vezaxsort2()
    local tt2=", "..psdamageceil(arg12)
      if arg13>=0 then
        tt2=", "..psdamageceil(arg12-arg13).." |cffff0000("..psoverkill..": "..psdamageceil(arg13)..")|r"
      end
    pscaststartinfo(0,spellname..": "..psaddcolortxt(1,name2)..name2..psaddcolortxt(2,name2)..tt2, -1, "id1", 2, "|s4id"..spellid.."|id - "..psinfo,psbossnames[3][1][6],2)
  end
end





end