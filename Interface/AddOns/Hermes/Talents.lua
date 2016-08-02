local Hermes = LibStub("AceAddon-3.0"):GetAddon("Hermes")
if not Hermes then return end

local mod = Hermes:NewModule("HermesTalents", "AceEvent-3.0", "AceTimer-3.0")
if not mod then return end

local LibGroupInspect = LibStub:GetLibrary("LibGroupInSpecT-1.1")

local roster = {}
local cantinspect = {}
local onupdate = nil
local onremove = nil
local onclasstalentsupdated = nil
local dbg = nil

local SPEC_CHANGE_SPELLS = {}
for index, id in ipairs(_G.TALENT_ACTIVATION_SPELLS) do
	SPEC_CHANGE_SPELLS[GetSpellInfo(id)] = index
end

function mod:OnInitialize()
end

function mod:OnEnable()
	wipe(roster)
	wipe(cantinspect)

	LibGroupInspect.RegisterCallback(mod, "GroupInSpecT_Update");
	LibGroupInspect.RegisterCallback(mod, "GroupInSpecT_Remove");
end

function mod:OnDisable()
	LibGroupInspect.UnregisterCallback(mod, "GroupInSpecT_Update");
	LibGroupInspect.UnregisterCallback(mod, "GroupInSpecT_Remove");

	wipe(roster)
	wipe(cantinspect)
end

function mod:GroupInSpecT_Update(event, guid, unit, info)
	onupdate(guid, unit, info);
	if info.class then
		onclasstalentsupdated(info.class)
	end
end

function mod:GroupInSpecT_Remove(guid)
end

function mod:SetProfile(profile)
	dbg = profile
end

function mod:SetOnUpdate(func)
	onupdate = func
end

function mod:SetOnRemove(func)
	onremove = func
end

function mod:SetOnClassTalentsUpdated(func)
	onclasstalentsupdated = func
end

function mod:GetPrimarySpecializationForGuid(guid)
	local info = LibGroupInspect:GetCachedInfo(guid);
	if not info then return nil end -- We're still waiting to get this data
	
	return info.global_spec_id;
end

function mod:IsTalentAvailable(guid, talentIndex)
	local info = LibGroupInspect:GetCachedInfo(guid)
	if not info then return false end -- We're still waiting to get this data
	local available = false

	for key, spellInfo in pairs(info.talents) do
		-- print(spellInfo.talent_id, talentIndex)
		if ((spellInfo.tier * spellInfo.column) == talentIndex) then
			available = true
			break
		end
	end

	return available;
end
