-----------------------------------------------------------------------
-- Upvalued Lua API.
-----------------------------------------------------------------------
local _G = getfenv(0)

-- Functions
local ipairs = _G.ipairs
local pairs = _G.pairs
local select = _G.select
local tonumber, tostring = _G.tonumber, _G.tostring
local type = _G.type

-- Libraries
local bit = _G.bit
local table = _G.table

-----------------------------------------------------------------------
-- AddOn namespace.
-----------------------------------------------------------------------
local FOLDER_NAME, private = ...

local LibStub = _G.LibStub
local addon = LibStub("AceAddon-3.0"):GetAddon(private.addon_name)
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)

local AcquireTypes = private.AcquireTypes

private.recipe_list = {}

-----------------------------------------------------------------------
-- Local constants.
-----------------------------------------------------------------------
local Recipe = {}
local recipeMetatable = {
	__index = Recipe
}

-- Defined at the bottom of the file.
local BLACKLISTED_RECIPE_IDS

-----------------------------------------------------------------------
-- Helpers.
-----------------------------------------------------------------------
function addon:AddRecipe(module, recipeData)
	local spellID = recipeData._spellID

	if BLACKLISTED_RECIPE_IDS[spellID] then
		return nil
	end

	local recipeList = private.recipe_list
	local existingRecipe = recipeList[spellID]

	if existingRecipe then
		self:Debug("Duplicate recipe from %s: %d - %s", module.Name, spellID, existingRecipe:LocalizedName())
		return
	end

	local recipe = _G.setmetatable(recipeData, recipeMetatable)
	recipe.ProfessionModule = module
	recipe:AddFilters(private.FILTER_IDS.ALLIANCE, private.FILTER_IDS.HORDE)

	if not recipe:LocalizedName() or recipe:LocalizedName() == "" then
		recipe:SetLocalizedName(("%s: %d"):format(_G.UNKNOWN, tonumber(spellID)))
		self:Debug(L["SpellIDCache"]:format(spellID))
	end
	recipeList[spellID] = recipe

    local profession = private.Professions[recipe._localizedProfessionName]
    recipe.Profession = profession

    local professionRecipes = profession.Recipes
    if not professionRecipes then
        professionRecipes = module.Recipes
        profession.Recipes = professionRecipes
    end
    professionRecipes[spellID] = recipe

	return recipe
end

-------------------------------------------------------------------------------
-- Recipe methods.
-------------------------------------------------------------------------------
function Recipe:AcquirePairs()
    return pairs(self._acquireTypeData)
end

function Recipe:AcquireDataOfType(acquireType)
    return self._acquireTypeData[acquireType]
end

function Recipe:GetOrCreateAcquireDataOfType(acquireType, ...)
    local sourceData = self._acquireTypeData[acquireType]
    if not sourceData then
        self._acquireTypeData[acquireType] = {}
        sourceData = self._acquireTypeData[acquireType]
    end

    if acquireType == private.AcquireTypes.Reputation then
        local factionID, reputationLevel = ...
        if factionID and reputationLevel then
            if not sourceData[factionID] then
                sourceData[factionID] = {
                    [reputationLevel] = {}
                }
            elseif not sourceData[factionID][reputationLevel] then
                sourceData[factionID][reputationLevel] = {}
            end
        end
    end

    return sourceData
end

function Recipe:ExpansionID()
    return self._expansionID
end

function Recipe:LocalizedName()
    return self._localizedName
end

function Recipe:SetLocalizedName(localizedName)
    self._localizedName = localizedName
end

function Recipe:QualityID()
    return self._qualityID
end

function Recipe:SetQualityID(qualityID)
    self._qualityID = qualityID
end

function Recipe:SpellID()
    return self._spellID
end

function Recipe:IsVisible()
    return self:HasState("VISIBLE") and not self:HasState("IGNORED") and addon.Frame.search_editbox:MatchesRecipe(self)
end

function Recipe:HasCoordinates()
    for acquireType in self:AcquirePairs() do
		if acquireType:HasCoordinates() then
			return true
		end
	end
end

function Recipe:SetRecipeItem(item_id, binding_type)
	local item_name, item_link, item_quality = _G.GetItemInfo(item_id) -- Do this now to get the item into the cache.
	self.recipe_item_id = item_id
	self.recipe_item_binding = binding_type
end

function Recipe:RecipeItem()
	return self.recipe_item_id, self.recipe_item_binding
end

function Recipe:SetCraftedItem(item_id, binding_type)
	local item_name, item_link, item_quality = _G.GetItemInfo(item_id) -- Do this now to get the item into the cache.
	self.crafted_item_id = item_id
	self.crafted_item_binding = binding_type
end

function Recipe:CraftedItem()
	return self.crafted_item_id, self.crafted_item_binding
end

function Recipe:SetSkillLevels(skill_level, optimal_level, medium_level, easy_level, trivial_level)
	self.skill_level = skill_level
	self.optimal_level = optimal_level or skill_level
	self.medium_level = medium_level or skill_level + 10
	self.easy_level = easy_level or skill_level + 15
	self.trivial_level = trivial_level or skill_level + 20
end

function Recipe:SkillLevels()
	return self.skill_level, self.optimal_level, self.medium_level, self.easy_level, self.trivial_level
end

function Recipe:SetSpecialty(spell_id)
	self.specialty = spell_id
end

function Recipe:Specialty()
	return self.specialty
end

-- Used to set the faction for recipes which only can be learned by one faction (e.g. BoP recipes, etc.)
-- These recipes will never be able to be learned so we do not want to load them.
function Recipe:SetRequiredFaction(faction_name)
	self.required_faction = faction_name

	if faction_name then
		if faction_name == "Alliance" then
			self:RemoveFilters(private.FILTER_IDS.HORDE)
		elseif faction_name == "Horde" then
			self:RemoveFilters(private.FILTER_IDS.ALLIANCE)
		else
			addon:Debug("Unknown faction_name \"%s\" passed to SetRequiredFaction for recipe %d.", faction_name, self.SpellID())
		end

		if private.Player.faction ~= faction_name then
            self:AddState("IGNORED")
		end
	else
		addon:Debuf("No faction name passed to SetRequiredFaction for recipe %d", self.SpellID())
	end
end

function Recipe:RequiredFaction()
	return self.required_faction
end

-- Sets the spell ID for the recipe this recipe replaces
function Recipe:SetPreviousRankSpellID(spell_id)
	self._previousRankSpellID = spell_id
end

function Recipe:PreviousRankSpellID()
	return self._previousRankSpellID
end

-------------------------------------------------------------------------------
-- Recipe state flags.
-------------------------------------------------------------------------------
do
	local RECIPE_STATE_FLAGS = {
		KNOWN = 0x00000001,
		RELEVANT = 0x00000002,
		VISIBLE = 0x00000004,
		LINKED = 0x00000008,
        IGNORED = 0x00000010,
	}

	function Recipe:HasState(state_name)
        local flag = RECIPE_STATE_FLAGS[state_name]
		return self.state and (bit.band(self.state, flag) == flag) or false
	end

	function Recipe:AddState(state_name)
		if not self.state then
			self.state = 0
		end

        local flag = RECIPE_STATE_FLAGS[state_name]
		if bit.band(self.state, flag) == flag then
			return
		end
		self.state = bit.bxor(self.state, flag)
	end

	function Recipe:RemoveState(state_name)
		if not self.state then
			return
		end

        local flag = RECIPE_STATE_FLAGS[state_name]
		if bit.band(self.state, flag) ~= flag then
			return
		end
		self.state = bit.bxor(self.state, flag)

		if self.state == 0 then
			self.state = nil
		end
	end
end -- do-block

do
	local BITFIELD_MAP = {}
	for index = 1, #private.FLAG_WORDS do
		BITFIELD_MAP[private.FLAG_MEMBERS[index]] = private.FLAG_WORDS[index]
	end

	function Recipe:HasFilter(field_name, flag_name)
		local bitfield = self._bitflags[field_name]
		local bitset = BITFIELD_MAP[field_name]
		local value = bitset[flag_name]

		return bitfield and (bit.band(bitfield, value) == value) or false
	end
end -- do-block

do
	local SKILL_LEVEL_FORMAT = "[%d]"

	function Recipe:GetDisplayName()
		local _, _, _, quality_color = _G.GetItemQualityColor(self:QualityID())
		local recipeName = self:LocalizedName()

		if private.CurrentProfession:LocalizedName() == private.LOCALIZED_PROFESSION_NAMES.ENCHANTING then
			recipeName = recipeName:gsub(_G.ENSCRIBE .. " ", "")
		end
		local has_faction = private.Player:HasProperRepLevel(self:AcquireDataOfType(private.AcquireTypes.Reputation))
		local skill_level = private.current_profession_scanlevel
		local recipe_level = self.skill_level

		local diff_color

		if has_faction then
			if recipe_level > skill_level then
				diff_color = "impossible"
			elseif skill_level >= self.trivial_level then
				diff_color = "trivial"
			elseif skill_level >= self.easy_level then
				diff_color = "easy"
			elseif skill_level >= self.medium_level then
				diff_color = "medium"
			elseif skill_level >= self.optimal_level then
				diff_color = "optimal"
			else
				diff_color = "trivial"
			end
		else
			diff_color = "impossible"
		end
		local display_name = ("|c%s%s|r"):format(quality_color, recipeName)
		local level_text = private.SetTextColor(private.DIFFICULTY_COLORS[diff_color].hex, SKILL_LEVEL_FORMAT):format(recipe_level)

		if addon.db.profile.skill_view then
			display_name = ("%s - %s"):format(level_text, display_name)
		else
			display_name = ("%s - %s"):format(display_name, level_text)
		end

		if addon.db.profile.exclusionlist[self:SpellID()] then
			display_name = ("** %s **"):format(display_name)
		end
		return display_name
	end
end -- do-block

function Recipe:SetItemFilterType(filter_type)
	if not addon.constants.ITEM_FILTER_TYPES[filter_type:upper()] then
		addon:Debug("Attempting to set invalid item filter type '%s' for '%s' (%d)", filter_type, self:LocalizedName(), self:SpellID())
		return
	end
	self.item_filter_type = filter_type:lower()
end

function Recipe:ItemFilterType()
	return self.item_filter_type
end

local function SetFilterState(recipe, turn_on, ...)
	local numFilters = select('#', ...)

	for filterIndex = 1, numFilters do
		local filterID = select(filterIndex, ...)

		if filterID then
			local filterName = private.FILTER_STRINGS[filterID]
			local bitfield
			local memberName

			for table_index, bits in ipairs(private.FLAG_WORDS) do
				if bits[filterName] then
					bitfield = bits
					memberName = private.FLAG_MEMBERS[table_index]
					break
				end
			end

			if not bitfield or not memberName then
				addon:Debug("Recipe '%s' (spell ID %d): Attempting to assign non-existent filter flag %s.", recipe:LocalizedName(), recipe:SpellID(), filterName)
				return
			end

			if not recipe._bitflags[memberName] then
				recipe._bitflags[memberName] = 0
			end

            local flag = bitfield[filterName]
			if turn_on then
				if bit.band(recipe._bitflags[memberName], flag) == flag then
					if recipe._bitflags[memberName] == 0 then
						recipe._bitflags[memberName] = nil
					end
					return
				end
			else
				if bit.band(recipe._bitflags[memberName], flag) ~= flag then
					if recipe._bitflags[memberName] == 0 then
						recipe._bitflags[memberName] = nil
					end
					return
				end
			end
			recipe._bitflags[memberName] = bit.bxor(recipe._bitflags[memberName], flag)

			if recipe._bitflags[memberName] == 0 then
				recipe._bitflags[memberName] = nil
			end
		else
			addon:Debug("Recipe '%s' (spell ID %d): Attempting to %s non-existent filter flag.", recipe:LocalizedName(), recipe:SpellID(), turn_on and "assign" or "remove")
		end
	end
end

function Recipe:AddFilters(...)
	SetFilterState(self, true, ...)
end

function Recipe:RemoveFilters(...)
	SetFilterState(self, false, ...)
end

local InvalidLocationRegistry = {}

function Recipe:AddAcquireData(acquireType, typeLabel, ...)
	local acquireData = self:GetOrCreateAcquireDataOfType(acquireType)
	local isLimitedVendor = typeLabel == "Limited Vendor"

	acquireType:AssignRecipe(self:SpellID())

	local variablesCount = select('#', ...)
	local currentVariableIndex = 1
	while currentVariableIndex <= variablesCount do
		-- A quantity of true means unlimited - normal vendor item.
		local quantity = true
        local affiliation
		local localizedLocationName
		local identifier = select(currentVariableIndex, ...)
		currentVariableIndex = currentVariableIndex + 1

		if isLimitedVendor then
			quantity = select(currentVariableIndex, ...)
			currentVariableIndex = currentVariableIndex + 1
		end
		acquireData[identifier] = true

		if acquireType:HasEntities() then
			local entity = acquireType:GetEntity(identifier)
			if entity then
				affiliation = entity.faction

                if entity.Location then
                    entity.Location:AssignRecipe(self, affiliation or true)
                end

				entity.item_list[self:SpellID()] = quantity
            else
                addon:Debug("Spell ID %d: %s ID %s does not exist in the %s AcquireType's Entity table.",
                    self:SpellID(),
                    typeLabel,
                    identifier,
                    acquireType:Label())
            end
		else
			local isStringID = type(identifier) == "string"

			localizedLocationName = isStringID and identifier or nil

			if localizedLocationName then
				affiliation = "world_drop"
			elseif isStringID then
				addon:Debug("%s with no location: %d %s", typeLabel, self:SpellID(), self:LocalizedName())
			end
		end

		if affiliation then
			acquireType:AssignRecipe(self:SpellID(), affiliation)
		end

		if localizedLocationName then
            local location = private.LocationsByLocalizedName[localizedLocationName]
            if location then
                location:AssignRecipe(self, affiliation or true)
            else
                if not InvalidLocationRegistry[localizedLocationName] then
                    addon:Debug("Invalid location: %s", localizedLocationName)
                    InvalidLocationRegistry[localizedLocationName] = true
                end
            end
        end
	end
end

function Recipe:AddMobDrop(...)
	self:AddAcquireData(AcquireTypes.MobDrop, "Mob", ...)
	self:AddFilters(private.FILTER_IDS.MOB_DROP)
end

function Recipe:AddTrainer(...)
	self:AddAcquireData(AcquireTypes.Trainer, "Trainer", ...)
	self:AddFilters(private.FILTER_IDS.TRAINER)
end

function Recipe:AddVendor(...)
	self:AddAcquireData(AcquireTypes.Vendor, "Vendor", ...)
	self:AddFilters(private.FILTER_IDS.VENDOR)
end

function Recipe:AddLimitedVendor(...)
	self:AddAcquireData(AcquireTypes.Vendor, "Limited Vendor", ...)
	self:AddFilters(private.FILTER_IDS.VENDOR)
end

function Recipe:AddWorldDrop(...)
	self:AddAcquireData(AcquireTypes.WorldDrop, "World Drop", ...)
	self:AddFilters(private.FILTER_IDS.WORLD_DROP)
end

function Recipe:AddQuest(...)
	self:AddAcquireData(AcquireTypes.Quest, "Quest", ...)
	self:AddFilters(private.FILTER_IDS.QUEST)
end

function Recipe:AddAchievement(...)
	self:AddAcquireData(AcquireTypes.Achievement, "Achievement", ...)
	self:AddFilters(private.FILTER_IDS.ACHIEVEMENT)
end

function Recipe:AddCustom(...)
	self:AddAcquireData(AcquireTypes.Custom, "Custom", ...)
	self:AddFilters(private.FILTER_IDS.CUSTOM)
end

function Recipe:AddDiscovery(...)
	self:AddAcquireData(AcquireTypes.Discovery, "Discovery", ...)
	self:AddFilters(private.FILTER_IDS.DISC)
end

function Recipe:AddWorldEvent(...)
	self:AddAcquireData(AcquireTypes.WorldEvent, "World Event", ...)
	self:AddFilters(private.FILTER_IDS.WORLD_EVENT)
end

function Recipe:AddRepVendor(factionID, reputationLevel, ...)
    local reputationAcquireType = AcquireTypes.Reputation
    local vendorAcquireType = AcquireTypes.Vendor
    local acquireData = self:GetOrCreateAcquireDataOfType(reputationAcquireType, factionID, reputationLevel)
    local faction = acquireData[factionID]

	local variablesCount = select('#', ...)
	local currentVariableIndex = 1

	while currentVariableIndex <= variablesCount do
		local affiliation
		local vendorID = select(currentVariableIndex, ...)
		currentVariableIndex = currentVariableIndex + 1

		local reputation = reputationAcquireType:GetEntity(factionID)
		if reputation then
			if vendorID then
				local reputationVendor = vendorAcquireType:GetEntity(vendorID)
				if reputationVendor then
					faction[reputationLevel][vendorID] = true

					affiliation = reputationVendor.faction

                    if reputationVendor.Location then
                        reputationVendor.Location:AssignRecipe(self, affiliation or true)
                    end

					reputationVendor.reputation_id = factionID
					reputationVendor.item_list[self:SpellID()] = true

					reputation.item_list[self:SpellID()] = true

					self:AddFilters(private.FILTER_IDS[private.FACTION_LABELS_FROM_ID[factionID]])
				else
                    addon:Debug("Spell ID %d (%s): Reputation Vendor ID %s does not exist in the %s AcquireType Entity table.",
                        self:SpellID(),
                        tostring(self:LocalizedName()),
                        tostring(vendorID),
                        vendorAcquireType:Label())
                end
			else
				addon:Debug("Spell ID %d (%s): Nil Reputation Vendor ID passed.", self:SpellID(), tostring(self:LocalizedName()))
			end
		else
			addon:Debug("Spell ID %d: Faction ID %d does not exist in the %s AcquireType Entity table.", self:SpellID(), factionID, reputationAcquireType:Label())
		end

        reputationAcquireType:AssignRecipe(self:SpellID(), affiliation)
	end

	self:AddFilters(private.FILTER_IDS.REPUTATION)
end

function Recipe:Retire()
	self:AddAcquireData(AcquireTypes.Retired, "Retired")
	self:AddFilters(private.FILTER_IDS.RETIRED)
end

do
	local SOFT_FILTERS
	local filter_db
	local player_filters
	local obtain_filters

	local function InitializeFilters()
		filter_db = addon.db.profile.filters
		player_filters = filter_db.player
		obtain_filters = filter_db.obtain

		-- HARD_FILTERS and SOFT_FILTERS are used to determine if a recipe should be shown based on the value of the key compared to the value
		-- of its saved_var.
		private.HARD_FILTERS = {
			------------------------------------------------------------------------------------------------
			-- Player Type flags.
			------------------------------------------------------------------------------------------------
			melee	= { flagName = "DPS",		field = "common1",	sv_root = player_filters },
			tank	= { flagName = "TANK",		field = "common1",	sv_root = player_filters },
			healer	= { flagName = "HEALER",	field = "common1",	sv_root = player_filters },
			caster	= { flagName = "CASTER",	field = "common1",	sv_root = player_filters },
		}

		SOFT_FILTERS = {
			achievement	= { flagName = "ACHIEVEMENT",	field = "common1",	sv_root = obtain_filters },
			discovery	= { flagName = "DISC",			field = "common1",	sv_root = obtain_filters },
			instance	= { flagName = "INSTANCE",		field = "common1",	sv_root = obtain_filters },
			mobdrop		= { flagName = "MOB_DROP",		field = "common1",	sv_root = obtain_filters },
			pvp			= { flagName = "PVP",			field = "common1",	sv_root = obtain_filters },
			quest		= { flagName = "QUEST",			field = "common1",	sv_root = obtain_filters },
			raid		= { flagName = "RAID",			field = "common1",	sv_root = obtain_filters },
			retired		= { flagName = "RETIRED",		field = "common1",	sv_root = obtain_filters },
			reputation	= { flagName = "REPUTATION",	field = "common1",	sv_root = obtain_filters },
			worldevent	= { flagName = "WORLD_EVENT",	field = "common1",	sv_root = obtain_filters },
			trainer		= { flagName = "TRAINER",		field = "common1",	sv_root = obtain_filters },
			vendor		= { flagName = "VENDOR",		field = "common1",	sv_root = obtain_filters },
			worlddrop	= { flagName = "WORLD_DROP",	field = "common1",	sv_root = obtain_filters },
			custom		= { flagName = "CUSTOM",		field = "common1",	sv_root = obtain_filters },
		}

		InitializeFilters = nil
	end

	local Q = private.ITEM_QUALITIES
	local QUALITY_FILTERS = {
		[Q.COMMON] = "common",
		[Q.UNCOMMON] = "uncommon",
		[Q.RARE] = "rare",
		[Q.EPIC] = "epic",
	}

	local REPUTATION_BITFLAG_FILTERS = {}
	for index = 1, #private.REP_FLAGS do
		REPUTATION_BITFLAG_FILTERS[index] = {}

		for flag_name, bitflag in pairs(private.REP_FLAGS[index]) do
			REPUTATION_BITFLAG_FILTERS[index][bitflag] = flag_name:lower()
		end

	end

	local CLASS_FLAGS_WORD1 = private.CLASS_FLAGS_WORD1
	local CLASS_BITFLAG_FILTERS = {
		[CLASS_FLAGS_WORD1.DK]			= "deathknight",
		[CLASS_FLAGS_WORD1.DRUID]		= "druid",
		[CLASS_FLAGS_WORD1.HUNTER]		= "hunter",
		[CLASS_FLAGS_WORD1.MAGE]		= "mage",
		[CLASS_FLAGS_WORD1.PALADIN]		= "paladin",
		[CLASS_FLAGS_WORD1.PRIEST]		= "priest",
		[CLASS_FLAGS_WORD1.SHAMAN]		= "shaman",
		[CLASS_FLAGS_WORD1.ROGUE]		= "rogue",
		[CLASS_FLAGS_WORD1.WARLOCK]		= "warlock",
		[CLASS_FLAGS_WORD1.WARRIOR]		= "warrior",
		[CLASS_FLAGS_WORD1.MONK]		= "monk",
		[CLASS_FLAGS_WORD1.DEMONHUNTER]		= "demonhunter",
	}

	-- Returns true if any of the filter flags are turned on.
	local function HasEnabledFlag(filters, bitfield, name_field)
		if not bitfield then
			return true
		end

		for bitflag, flag_name in pairs(filters) do
			if bit.band(bitfield, bitflag) == bitflag and name_field[flag_name] then
				return true
			end
		end
		return false
	end

	--- Scans a specific recipe to determine if it is to be displayed or not.
	function Recipe:CanDisplay()
		if InitializeFilters then
			InitializeFilters()
		end

		if addon.db.profile.exclusionlist[self:SpellID()] and not addon.db.profile.ignoreexclusionlist then
			return false
		end
		local general_filters = filter_db.general

		-------------------------------------------------------------------------------
		-- Stage 1 - Loop through exclusive flags (hard filters).
		-- If one of these does not pass, the recipe is not displayed.
		-------------------------------------------------------------------------------

		-- Display both horde and alliance factions?
		if not general_filters.faction and not private.Player:HasRecipeFaction(self) then
			return false
		end

		-- Display all skill levels?
		if not general_filters.skill and self.skill_level > private.current_profession_scanlevel then
			return false
		end

		-- Display all specialities?
		if not general_filters.specialty then
			local specialty = self.specialty

			if specialty and specialty ~= private.current_profession_specialty then
				return false
			end
		end

		-- Expansion filters.
		if not obtain_filters[private.EXPANSION_FILTERS[self:ExpansionID()]] then
			return false
		end

		-- Quality filters.
		if not filter_db.quality[QUALITY_FILTERS[self:QualityID()]] then
			return false
		end

		local itemFilterType = self:ItemFilterType()
        if itemFilterType then
            local professionModule = private.CurrentProfession:Module()
            if not professionModule or not professionModule.db.profile.filters.item[itemFilterType] then
                return false
            end
        end

		-- Assume that recipes without a recipe item are obtained via trainers, and treat them as bind on pickup.
		local _, recipe_item_binding = self:RecipeItem()
		if recipe_item_binding and not addon.db.profile.filters.binding["recipe_" .. recipe_item_binding:lower()] then
			return false
		elseif not recipe_item_binding and not addon.db.profile.filters.binding.recipe_bind_on_pickup then
			return false
		end

		local _, crafted_item_binding = self:CraftedItem()
		if crafted_item_binding and not addon.db.profile.filters.binding["item_" .. crafted_item_binding:lower()] then
			return false
		end

		-- Check the hard filter flags.
		for filterName, filterData in pairs(private.HARD_FILTERS) do
			if self:HasFilter(filterData.field, filterData.flagName) and not filterData.sv_root[filterName] then
				return false
			end
		end

		-- Check the reputation filter flags.
		for index = 1, #REPUTATION_BITFLAG_FILTERS do
			if not HasEnabledFlag(REPUTATION_BITFLAG_FILTERS[index], self._bitflags[("reputation%d"):format(index)], filter_db.rep) then
				return false
			end
		end

		-- Check the class filter flags
		if not HasEnabledFlag(CLASS_BITFLAG_FILTERS, self._bitflags.class1, filter_db.classes) then
			return false
		end

		------------------------------------------------------------------------------------------------
		-- Stage 2
		-- loop through nonexclusive (soft filters) flags until one is true
		-- If one of these is true (ie: we want to see trainers and there is a trainer flag) we display the recipe
		------------------------------------------------------------------------------------------------
		for filterName, filterData in pairs(SOFT_FILTERS) do
			if self:HasFilter(filterData.field, filterData.flagName) and filterData.sv_root[filterName] then
				return true
			end
		end
	end
end --do-block

local DUMP_FUNCTION_FORMATS = {
	[AcquireTypes.Achievement] = "recipe:AddAchievement(%s)",
	[AcquireTypes.Custom] = "recipe:AddCustom(%s)",
	[AcquireTypes.Discovery] = "recipe:AddDiscovery(%s)",
	[AcquireTypes.WorldEvent] = "recipe:AddWorldEvent(%s)",
	[AcquireTypes.Trainer] = "recipe:AddTrainer(%s)",
	[AcquireTypes.MobDrop] = "recipe:AddMobDrop(%s)",
	[AcquireTypes.WorldDrop] = "recipe:AddWorldDrop(%s)",
	[AcquireTypes.Quest] = "recipe:AddQuest(%s)",
	[AcquireTypes.Retired] = "recipe:Retire()",
}

local sortedData = {}
local reverseMap = {}

-- These are automatically added when assigning the appropriate acquire type; dumping them is redundant.
local IMPLICIT_FLAGS = {
	ACHIEVEMENT = true,
	ALLIANCE = true,
	DISC = true,
	HORDE = true,
	CUSTOM = true,
	MOB_DROP = true,
	QUEST = true,
	REPUTATION = true,
	RETIRED = true,
	TRAINER = true,
	VENDOR = true,
	WORLD_DROP = true,
	WORLD_EVENT = true,
}

-- Reputation flags are automatically added when a reputation vendor is assigned to the recipe.
for reputationIndex = 1, #private.REP_FLAGS do
	for reputationName in pairs(private.REP_FLAGS[reputationIndex]) do
		IMPLICIT_FLAGS[reputationName] = true
	end
end

function Recipe:Dump(output, useExpansionID)
	local expansionID = (useExpansionID and self:ExpansionID() or nil)

	if expansionID and output:Lines(expansionID) == 0 then
		output:AddLine("-------------------------------------------------------------------------------", expansionID)
		output:AddLine(("-- %s."):format(_G["EXPANSION_NAME" .. expansionID - 1]), expansionID)
		output:AddLine("-------------------------------------------------------------------------------", expansionID)
	end

	output:AddLine(("-- %s -- %d"):format(self:LocalizedName(), self:SpellID()), expansionID)
	output:AddLine(("recipe = AddRecipe(%d, V.%s, Q.%s)"):format(self:SpellID(), private.GAME_VERSION_NAMES[self:ExpansionID()], private.ITEM_QUALITY_NAMES[self:QualityID()]), expansionID)
	output:AddLine(("recipe:SetSkillLevels(%d, %d, %d, %d, %d)"):format(self.skill_level, self.optimal_level, self.medium_level, self.easy_level, self.trivial_level), expansionID)

	if self.recipe_item_id then
		output:AddLine(("recipe:SetRecipeItem(%d, \"%s\")"):format(self.recipe_item_id, self.recipe_item_binding), expansionID)
	end

	if self.crafted_item_id then
		output:AddLine(("recipe:SetCraftedItem(%d, \"%s\")"):format(self.crafted_item_id, self.crafted_item_binding), expansionID)
	end

	local previousRankRecipe = self.Profession.Recipes[self:PreviousRankSpellID()]
	if previousRankRecipe then
		output:AddLine(("recipe:SetPreviousRankSpellID(%d)"):format(previousRankRecipe:SpellID()), expansionID)
	end

	if self.specialty then
		output:AddLine(("recipe:SetSpecialty(%d)"):format(self.specialty), expansionID)
	end

	if self.required_faction then
		output:AddLine(("recipe:SetRequiredFaction(\"%s\")"):format(self.required_faction), expansionID)
	end

	if self.item_filter_type then
		output:AddLine(("recipe:SetItemFilterType(\"%s\")"):format(self.item_filter_type:upper()), expansionID)
	end

	local filterOutputText
	for flagWordIndex = 1, #private.FLAG_WORDS do
		table.wipe(sortedData)
		table.wipe(reverseMap)

		local bitsTable = private.FLAG_WORDS[flagWordIndex]
		for flagName, flagBit in pairs(bitsTable) do
			if not IMPLICIT_FLAGS[flagName] then
				local bitfield = self._bitflags[private.FLAG_MEMBERS[flagWordIndex]]

				if bitfield and bit.band(bitfield, flagBit) == flagBit then
					table.insert(sortedData, flagBit)
					reverseMap[flagBit] = flagName
				end
			end
		end
		table.sort(sortedData)

		for flagIndex = 1, #sortedData do
			local flagBit = sortedData[flagIndex]
			local bitfield = self._bitflags[private.FLAG_MEMBERS[flagWordIndex]]

			if bitfield and bit.band(bitfield, flagBit) == flagBit then
				if filterOutputText then
					filterOutputText = ("%s, F.%s"):format(filterOutputText, private.FILTER_STRINGS[private.FILTER_IDS[reverseMap[flagBit]]])
				else
					filterOutputText = ("F.%s"):format(private.FILTER_STRINGS[private.FILTER_IDS[reverseMap[flagBit]]])
				end
			end
		end
	end

	if filterOutputText then
		output:AddLine(("recipe:AddFilters(%s)"):format(filterOutputText), expansionID)
	end
	filterOutputText = nil

	for acquireType, acquireData in self:AcquirePairs() do
		if acquireType == AcquireTypes.Reputation then
			for factionID, factionData in pairs(acquireData) do
				local factionLabel = private.FACTION_LABELS_FROM_ID[factionID]

				if factionLabel then
					factionLabel = ("FAC.%s"):format(factionLabel)
				else
					factionLabel = factionID
					addon:Printf("Recipe %d (%s) - no string for faction %d", self:SpellID(), self:LocalizedName(), factionID)
				end

				for level, levelData in pairs(factionData) do
					local reputationLevelString = ("REP.%s"):format(private.REP_LEVEL_STRINGS[level or 1])
					local values

					table.wipe(sortedData)
					table.wipe(reverseMap)

					for entityID in pairs(levelData) do
						table.insert(sortedData, entityID)
					end
					table.sort(sortedData)

					for entityIDIndex, vendorID in ipairs(sortedData) do
						if values then
							values = ("%s, %d"):format(values, vendorID)
						else
							values = vendorID
						end
					end
					output:AddLine(("recipe:AddRepVendor(%s, %s, %s)"):format(factionLabel, reputationLevelString, values), expansionID)
				end
			end
		elseif acquireType == AcquireTypes.Vendor then
			local values
			local limitedValues

			table.wipe(sortedData)
			table.wipe(reverseMap)

			for id_num in pairs(acquireData) do
				table.insert(sortedData, id_num)
			end
			table.sort(sortedData)

			for index, identifier in ipairs(sortedData) do
				local savedID

				if type(identifier) == "string" then
					savedID = ("\"%s\""):format(identifier)
				else
					savedID = identifier
				end
				local vendor = acquireType:GetEntity(identifier)
				local quantity = vendor.item_list[self:SpellID()]

				if type(quantity) == "number" then
					if limitedValues then
						limitedValues = ("%s, %s, %d"):format(limitedValues, savedID, quantity)
					else
						limitedValues = ("%s, %d"):format(savedID, quantity)
					end
				else
					if values then
						values = ("%s, %s"):format(values, savedID)
					else
						values = savedID
					end
				end
			end

			if values then
				output:AddLine(("recipe:AddVendor(%s)"):format(values), expansionID)
			end

			if limitedValues then
				output:AddLine(("recipe:AddLimitedVendor(%s)"):format(limitedValues), expansionID)
			end
		elseif DUMP_FUNCTION_FORMATS[acquireType] then
			local values

			table.wipe(sortedData)
			table.wipe(reverseMap)

			for id_num in pairs(acquireData) do
				table.insert(sortedData, id_num)
			end
			table.sort(sortedData)

			for index, identifier in ipairs(sortedData) do
				local saved_id

				if type(identifier) == "string" then
					if acquireType == AcquireTypes.WorldDrop then
						saved_id = ("Z.%s"):format(private.ZONE_LABELS_FROM_NAME[identifier])
					else
						saved_id = ("\"%s\""):format(identifier)
					end
				else
					saved_id = identifier
				end

				if values then
					values = ("%s, %s"):format(values, saved_id)
				else
					values = saved_id
				end
            end

			output:AddLine((DUMP_FUNCTION_FORMATS[acquireType]):format(values), expansionID)
		end
	end

	output:AddLine(" ", expansionID)
end

function Recipe:DumpTrainers(registry)
	local trainerData = self:AcquireDataOfType(AcquireTypes.Trainer)
	if not trainerData then
		return
	end

	for identifier in pairs(trainerData) do
		registry[identifier] = true
	end
end

--- Public API function for retrieving specific information about a recipe.
-- @name AckisRecipeList:GetRecipeData
-- @usage AckisRecipeList:GetRecipeData(28972, "profession")
-- @param spell_id The [[http://www.wowpedia.org/SpellLink|Spell ID]] of the recipe being queried.
-- @param data Which member of the recipe table is being queried.
-- @return Variable, depending upon which member of the recipe table is queried.
function addon:GetRecipeData(spell_id, data)
	local recipe = private.recipe_list[spell_id]
	return recipe and recipe[data] or nil
end

-- List of recipe IDs which never made it into the game, so should never be automatically added via a profession scan.
BLACKLISTED_RECIPE_IDS = {
	---------------------------------------------------------------------------------------
	-----ALCHEMY
	---------------------------------------------------------------------------------------
	[17579] = true, 	[54020] = true,		[156567] = true, 	[156588] = true,
	[156589] = true, 	[156590] = true, 	[156592] = true, 	[156593] = true,
	[168042] = true,

	---------------------------------------------------------------------------------------
	---BLACKSMITHING
	---------------------------------------------------------------------------------------
	[2671] = true, 		[8366] = true, 		[8368] = true,		[9942] = true,
	[16960] = true,		[16965] = true, 	[16967] = true,		[16980] = true,
	[16986] = true, 	[16987] = true, 	[122568] = true, 	[122569] = true,
	[122570] = true, 	[122571] = true,	[122572] = true, 	[122573] = true,
	[122574] = true, 	[122575] = true,	[122584] = true, 	[122585] = true,
	[122586] = true,	[122587] = true,	[122588] = true, 	[122589] = true,
	[122590] = true, 	[122591] = true,	[122600] = true, 	[122601] = true,
	[122602] = true, 	[122603] = true,	[122604] = true, 	[122605] = true,
	[122606] = true, 	[122607] = true,	[122608] = true, 	[122609] = true,
	[122610] = true, 	[122611] = true,	[122612] = true, 	[122613] = true,
	[122614] = true, 	[122615] = true,	[126869] = true, 	[153605] = true,
	[153606] = true, 	[153607] = true, 	[153608] = true,	[153609] = true,
	[153610] = true, 	[153611] = true, 	[153612] = true,	[153627] = true,
	[153628] = true, 	[153629] = true, 	[153630] = true,	[153631] = true,
	[153643] = true,	[153644] = true,	[153645] = true,	[153646] = true,
	[153647] = true,	[153648] = true,	[153649] = true,	[153650] = true,
	[153651] = true,	[153652] = true,	[153653] = true,	[153654] = true,
	[153655] = true,	[153656] = true,	[153657] = true,	[153658] = true,
	[153659] = true,	[153660] = true,	[153661] = true,	[153663] = true,
	[153664] = true,	[153665] = true,	[153666] = true,	[153667] = true,
	[153668] = true,	[171718] = true,

	-- Legion Quests items you don't actually learn
	[183278] = true,	[183279] = true,	[183280] = true,	[183281] = true,
	[183283] = true,	[183562] = true,	[184214] = true,	[184215] = true,
	[184216] = true,	[184217] = true,	[184218] = true,	[184219] = true,
	[184220] = true,	[184308] = true,	[184309] = true,	[184310] = true,
	[184312] = true,	[184313] = true,	[184314] = true,	[184315] = true,
	[184336] = true,	[184337] = true,	[184338] = true,	[184339] = true,
	[184340] = true,	[184341] = true,	[184342] = true,	[184343] = true,
	[184344] = true,	[184345] = true,	[184403] = true,	[184404] = true,
	[184405] = true,	[184407] = true,	[184408] = true,

	---------------------------------------------------------------------------------------
	----COOKING
	---------------------------------------------------------------------------------------
	[145167] = true,	[145170] = true,	[145197] = true,	[169693] = true,
	[169696] = true,	[169699] = true,

	---------------------------------------------------------------------------------------
	----ENCHANTING
	---------------------------------------------------------------------------------------
	[28021] = true,		[44612] = true, 	[62257] = true, 	[178241] = true,
	[173716] = true,	[173717] = true,	[173718] = true,	[173719] = true,
	[173720] = true,	[173721] = true,	[173722] = true,	[173723] = true,
	[173724] = true,	[173725] = true,	[173726] = true,	[173727] = true,
	[173728] = true,	[173729] = true,	[173730] = true,	[173731] = true,
	[173732] = true,	[174979] = true,	[175070] = true,	[175071] = true,
	[175072] = true,	[175074] = true,	[175076] = true,	[175078] = true,
	[175085] = true,	[175086] = true,	[177355] = true,	[181870] = true,

	---------------------------------------------------------------------------------------
	----ENGINEERING
	---------------------------------------------------------------------------------------
	[12900] = true,		[30342] = true,		[30343] = true,		[162208] = true,
	[178242] = true,

	-----------------------------------------------------------------------------------------
	---JEWELCRAFTING
	-----------------------------------------------------------------------------------------
	[25614] = true, 	[26918] = true, 	[26920] = true, 	[32810] = true,
	[73233] = true, 	[73259] = true, 	[170832] = true,
}
