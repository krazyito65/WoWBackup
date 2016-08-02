psbossfiled27=1




function pscmrbossREPORTd271(wipe,try,reset,checkforwipe)
if reset==nil then
if checkforwipe==nil or (checkforwipe and pswasonbossd27 and pswasonbossd27==1) then

	if pswasonbossd27==1 then
		pssetcrossbeforereport1=GetTime()

		if psraidoptionson[3][2][7][1]==1 then
			strochkavezcrash=psiccdmgfrom.." |s4id154960|id ("..psmainmtotal.."): "
			reportafterboitwotab(psraidchats3[psraidoptionschat[3][2][7][1]], true, vezaxname, vezaxcrash, 1)
		end
		if psraidoptionson[3][2][7][2]==1 then
			strochkavezcrash=psiccdmgfrom.." |s4id154989|id ("..psmainmtotal.."): "
			reportafterboitwotab(psraidchats3[psraidoptionschat[3][2][7][2]], true, vezaxname2, vezaxcrash2, 1)
		end


	end
	if pswasonbossd27==1 or (pswasonbossd27==2 and try==nil) then

		psiccsavinginf(psbossnames[3][2][7], try, pswasonbossd27)

		strochkavezcrash=psiccdmgfrom.." |s4id154960|id ("..psmainmtotal.."): "
		reportafterboitwotab("raid", true, vezaxname, vezaxcrash, nil, nil,0,1)
		strochkavezcrash=psiccdmgfrom.." |s4id154989|id ("..psmainmtotal.."): "
		reportafterboitwotab("raid", true, vezaxname2, vezaxcrash2, nil, nil,0,1)

		psiccrefsvin()

	end




	if wipe then
		pswasonbossd27=2
		pscheckbossincombatmcr_wod1=GetTime()+1
	end
end
end
end


function pscmrbossRESETd271(wipe,try,reset,checkforwipe)
if reset or wipe==nil then
pswasonbossd27=nil


table.wipe(vezaxname)
table.wipe(vezaxcrash)
table.wipe(vezaxname2)
table.wipe(vezaxcrash2)

end
end



function pscombatlogbossd27(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)




if arg2=="SPELL_AURA_APPLIED" and spellid==154960 then
  if pswasonbossd27==nil then
    pswasonbossd27=1
  end
  psunitisplayer(guid2,name2)
  if psunitplayertrue then

    pscheckwipe1()
    if pswipetrue and pswasonbossd27~=2 then
      psiccwipereport_wod1("wipe", "try")
    end
    addtotwotables1(name2)
    vezaxsort1()
    local tt2=", "..psdamageceil(arg12)
    pscaststartinfo(0,spellname..": "..psaddcolortxt(1,name2)..name2..psaddcolortxt(2,name2), -1, "id1", 1, "|s4id"..spellid.."|id - "..psinfo,psbossnames[3][2][7],2)
  end
end

if arg2=="SPELL_DAMAGE" and spellid==154989 then
  if pswasonbossd27==nil then
    pswasonbossd27=1
  end
  psunitisplayer(guid2,name2)
  if psunitplayertrue then

    pscheckwipe1()
    if pswipetrue and pswasonbossd27~=2 then
      psiccwipereport_wod1("wipe", "try")
    end
    addtotwotables2(name2)
    vezaxsort2()
    local tt2=", "..psdamageceil(arg12)
      if arg13>=0 then
        tt2=", "..psdamageceil(arg12-arg13).." |cffff0000("..psoverkill..": "..psdamageceil(arg13)..")|r"
      end
    pscaststartinfo(0,spellname..": "..psaddcolortxt(1,name2)..name2..psaddcolortxt(2,name2)..tt2, -1, "id1", 2, "|s4id"..spellid.."|id - "..psinfo,psbossnames[3][2][7],2)
  end
end





end