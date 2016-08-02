local _;



--
local tComponents = { };
local tNum;
local tModel;
function VUHDO_newOptionsSpellSetModifierHostile(aModifier)
	VUHDO_CURR_SPELL_MODIFIER = aModifier;

	table.wipe(tComponents);
	tComponents = { VuhDoNewOptionsSpellHostileKeyPanel:GetChildren() };

	for _, tComp in pairs(tComponents) do
		if (tComp:IsObjectType("EditBox")) then
			tNum = VUHDO_getComponentPanelNum(tComp);
			tIndex = aModifier .. tNum;
			if (VUHDO_HOSTILE_SPELL_ASSIGNMENTS[tIndex] == nil) then
				VUHDO_HOSTILE_SPELL_ASSIGNMENTS[tIndex] = { VUHDO_MODIFIER_KEYS[aModifier], tostring(tNum), "" };
			end

			tModel = "VUHDO_HOSTILE_SPELL_ASSIGNMENTS." .. tIndex .. ".##3";
			tComp:SetAttribute("model", tModel);
			tComp:Hide();
			tComp:Show();
		end
	end

	table.wipe(tComponents);
	tComponents = { VuhDoNewOptionsSpellHostileWheelPanel:GetChildren() };

	for _, tComp in pairs(tComponents) do
		if (tComp:IsObjectType("EditBox")) then
			tNum = VUHDO_getComponentPanelNum(tComp);
			tModel = "VUHDO_SPELLS_KEYBOARD.HOSTILE_WHEEL." .. aModifier .. tNum .. ".##3";
			tComp:SetAttribute("model", tModel);
			tComp:Hide();
			tComp:Show();
		end
	end

end



--
local tActionLowerName;
local function VUHDO_isHostileActionValid(anActionName)

	if (anActionName == nil or "" == anActionName) then
		return true;
	end

	tActionLowerName = strlower(anActionName);

	if (VUHDO_SPELL_KEY_ASSIST == tActionLowerName
	 or VUHDO_SPELL_KEY_FOCUS == tActionLowerName
	 or VUHDO_SPELL_KEY_TARGET == tActionLowerName 
	 or VUHDO_SPELL_KEY_EXTRAACTIONBUTTON == tActionLowerName) then
		return "Command", 0.8, 1, 0.8;
	end

	if (GetMacroIndexByName(anActionName) ~= 0) then
		return "Macro", 0.8, 0.8, 1;
	end

	if (VUHDO_isSpellKnown(anActionName)) then
		return "Spell", 1, 0.8, 0.8;
	end

	return nil;
end



--
local tText, tLabel, tR, tG, tB;
function VUHDO_newOptionsSpellEditBoxCheckHostileSpell(anEditBox)
	tText, tR, tG, tB = VUHDO_isHostileActionValid(anEditBox:GetText());
	tLabel = _G[anEditBox:GetName() .. "Hint"];
	if (tText ~= nil) then
		anEditBox:SetTextColor(1, 1, 1, 1);
		tLabel:SetText(tText);
		tLabel:SetTextColor(tR, tG, tB, 1);
	else
		anEditBox:SetTextColor(0.8, 0.8, 1, 1);
		tLabel:SetText("");
	end
end

