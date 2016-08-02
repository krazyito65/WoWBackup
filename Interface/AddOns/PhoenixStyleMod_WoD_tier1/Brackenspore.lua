psbossfiled13=1




function pscmrbossREPORTd131(wipe,try,reset,checkforwipe)
if reset==nil then
if checkforwipe==nil or (checkforwipe and pswasonbossd13 and pswasonbossd13==1) then
	if psgribpifpaf1 and #psgribpifpaf1>0 then
		for i=1,#psgribpifpaf1 do
			if psgribpifpaf1[i] then
				local time=math.ceil(GetTime()-psgribpifpaf2[i])
				if time<2000 then
					addtotwotables3(psgribpifpaf1[i],time)
					vezaxsort3()
				end
			end
		end
	end

	if pswasonbossd13==1 then
		pssetcrossbeforereport1=GetTime()

		if psraidoptionson[3][1][3][1]==1 then
			strochkavezcrash=psiccdmgfrom.." |s4id163798|id ("..psmainmtotal.."): "
			reportafterboitwotab(psraidchats3[psraidoptionschat[3][1][3][1]], true, vezaxname, vezaxcrash, 1)
		end
		if psraidoptionson[3][1][3][2]==1 then
			strochkavezcrash=psiccdmgfrom.." |s4id163793|id ("..psmainmtotal.."): "
			reportafterboitwotab(psraidchats3[psraidoptionschat[3][1][3][2]], true, vezaxname2, vezaxcrash2, 1)
		end
		if psraidoptionson[3][1][3][3]==1 then
			strochkavezcrash=psmainmgot.." |s4id165223|id ("..psmainmtotal..", "..pssec.."): "
			reportafterboitwotab(psraidchats3[psraidoptionschat[3][1][3][3]], true, vezaxname3, vezaxcrash3, 1)
		end
		if psraidoptionson[3][1][3][4]==1 then
			strochkavezcrash=psmainmgot.." |s4id163666|id ("..psmainmtotal.."): "
			reportafterboitwotab(psraidchats3[psraidoptionschat[3][1][3][4]], true, vezaxname4, vezaxcrash4, 1)
		end


	end
	if pswasonbossd13==1 or (pswasonbossd13==2 and try==nil) then

		psiccsavinginf(psbossnames[3][1][3], try, pswasonbossd13)

		strochkavezcrash=psiccdmgfrom.." |s4id163798|id ("..psmainmtotal.."): "
		reportafterboitwotab("raid", true, vezaxname, vezaxcrash, nil, nil,0,1)
		strochkavezcrash=psiccdmgfrom.." |s4id163793|id ("..psmainmtotal.."): "
		reportafterboitwotab("raid", true, vezaxname2, vezaxcrash2, nil, nil,0,1)
		strochkavezcrash=psmainmgot.." |s4id165223|id ("..psmainmtotal..", "..pssec.."): "
		reportafterboitwotab("raid", true, vezaxname3, vezaxcrash3, nil, nil,0,1)
		strochkavezcrash=psmainmgot.." |s4id163666|id ("..psmainmtotal.."): "
		reportafterboitwotab("raid", true, vezaxname4, vezaxcrash4, nil, nil,0,1)

		psiccrefsvin()

	end




	if wipe then
		pswasonbossd13=2
		pscheckbossincombatmcr_wod1=GetTime()+1
	end
end
end
end


function pscmrbossRESETd131(wipe,try,reset,checkforwipe)
if reset or wipe==nil then
pswasonbossd13=nil


table.wipe(vezaxname)
table.wipe(vezaxcrash)
table.wipe(vezaxname2)
table.wipe(vezaxcrash2)
table.wipe(vezaxname3)
table.wipe(vezaxcrash3)
table.wipe(vezaxname4)
table.wipe(vezaxcrash4)

psgribpifpaf1=nil
psgribpifpaf2=nil

end
end



function pscombatlogbossd13(arg1, arg2, hideCaster, guid1, name1, flag1, new1, guid2, name2, flag2, new2, spellid, spellname, arg11,arg12,arg13,arg14,arg15)




if arg2=="SPELL_DAMAGE" and spellid==163798 then
  if pswasonbossd13==nil then
    pswasonbossd13=1
  end
  psunitisplayer(guid2,name2)
  if psunitplayertrue then

    pscheckwipe1()
    if pswipetrue and pswasonbossd13~=2 then
      psiccwipereport_wod1("wipe", "try")
    end
    addtotwotables1(name2)
    vezaxsort1()
    local tt2=", "..psdamageceil(arg12)
      if arg13>=0 then
        tt2=", "..psdamageceil(arg12-arg13).." |cffff0000("..psoverkill..": "..psdamageceil(arg13)..")|r"
      end
    pscaststartinfo(0,spellname..": "..psaddcolortxt(1,name2)..name2..psaddcolortxt(2,name2)..tt2, -1, "id1", 1, "|s4id"..spellid.."|id - "..psinfo,psbossnames[3][1][3],2)
  end
end

if arg2=="SPELL_DAMAGE" and spellid==163793 then
  if pswasonbossd13==nil then
    pswasonbossd13=1
  end
  psunitisplayer(guid2,name2)
  if psunitplayertrue then

    pscheckwipe1()
    if pswipetrue and pswasonbossd13~=2 then
      psiccwipereport_wod1("wipe", "try")
    end
    addtotwotables2(name2)
    vezaxsort2()
    local tt2=", "..psdamageceil(arg12)
      if arg13>=0 then
        tt2=", "..psdamageceil(arg12-arg13).." |cffff0000("..psoverkill..": "..psdamageceil(arg13)..")|r"
      end
    pscaststartinfo(0,spellname..": "..psaddcolortxt(1,name2)..name2..psaddcolortxt(2,name2)..tt2, -1, "id1", 2, "|s4id"..spellid.."|id - "..psinfo,psbossnames[3][1][3],2)
  end
end



if arg2=="SPELL_CAST_START" and spellid==160013 then
pscheckrunningbossid(guid1)
pscaststartinfo(spellid,spellname..": %s.", 2, guid1, 91, "|s4id"..spellid.."|id - "..pseventsincomb2,psbossnames[3][1][3])
end
if arg2=="SPELL_CAST_START" and spellid==160254 then
pscheckrunningbossid(guid1)
pscaststartinfo(spellid,spellname..": %s.", 2, guid1, 92, "|s4id"..spellid.."|id - "..pseventsincomb2,psbossnames[3][1][3])
end


if arg2=="SPELL_AURA_APPLIED" and spellid==165223 then
  if pswasonbossd13==nil then
    pswasonbossd13=1
  end
  psunitisplayer(guid2,name2)
  if psunitplayertrue then

    pscheckwipe1()
    if pswipetrue and pswasonbossd13~=2 then
      psiccwipereport_wod1("wipe", "try")
    end
    if psgribpifpaf1==nil then
		psgribpifpaf1={}
		psgribpifpaf2={}
	end
	local bil=0
	for i=1,#psgribpifpaf1 do
		if psgribpifpaf1[i]==name2 then
			bil=1
		end
	end
	if bil==0 then
		table.insert(psgribpifpaf1,name2)
		local atime=GetTime()
		table.insert(psgribpifpaf2,atime)
	end
	
    pscaststartinfo(0,spellname..": + "..psaddcolortxt(1,name2)..name2..psaddcolortxt(2,name2), -1, "id1", 3, "|s4id"..spellid.."|id - "..psinfo,psbossnames[3][1][3],2)
  end
end

if arg2=="SPELL_AURA_REMOVED" and spellid==165223 then
  if pswasonbossd13==nil then
    pswasonbossd13=1
  end
  psunitisplayer(guid2,name2)
  if psunitplayertrue then

    pscheckwipe1()
    if pswipetrue and pswasonbossd13~=2 then
      psiccwipereport_wod1("wipe", "try")
    end
	if (psgribpifpaf1 and #psgribpifpaf1>0) then
		local bil=0
		for i=1,#psgribpifpaf1 do
			if psgribpifpaf1[i] and psgribpifpaf1[i]==name2 then
				local time=math.ceil(GetTime()-psgribpifpaf2[i])
				if time<2000 then
					addtotwotables3(name2,time)
					vezaxsort3()
				end
				table.remove(psgribpifpaf1,i)
				table.remove(psgribpifpaf2,i)
			end
		end
	end
    pscaststartinfo(0,spellname..": - "..psaddcolortxt(1,name2)..name2..psaddcolortxt(2,name2), -1, "id1", 3, "|s4id"..spellid.."|id - "..psinfo,psbossnames[3][1][3],2)
  end
end


if arg2=="SPELL_AURA_APPLIED" and spellid==163666 then
  if pswasonbossd13==nil then
    pswasonbossd13=1
  end
  psunitisplayer(guid2,name2)
  if psunitplayertrue then

    pscheckwipe1()
    if pswipetrue and pswasonbossd13~=2 then
      psiccwipereport_wod1("wipe", "try")
    end
    addtotwotables4(name2)
    vezaxsort4()
    pscaststartinfo(0,spellname..": "..psaddcolortxt(1,name2)..name2..psaddcolortxt(2,name2), -1, "id1", 4, "|s4id"..spellid.."|id - "..psinfo,psbossnames[3][1][3],2)
  end
end




end