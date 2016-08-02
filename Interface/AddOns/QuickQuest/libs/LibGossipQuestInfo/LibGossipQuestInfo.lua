local isBetaClient = select(4, GetBuildInfo()) >= 70000

--- API that returns information about available quests in the gossip window.
-- @name GetAvailableGossipQuestInfo
-- @usage GetAvailableGossipQuestInfo(index)
-- @param index Number between 1 and GetNumGossipAvailableQuests()
-- @return name Name of the quest
-- @return level Suggested character level for attempting the quest
-- @return isTrivial Boolean indicating if the quest is considered trivial (rewards no XP) or not
-- @return isIgnored Boolean indicating if the quest has been flagged as ignored by the player
-- @return isRepeatable Boolean indicating if the quest can be repeated
-- @return isDaily Boolean indicating if the quest can be repeated daily
-- @return isWeekly Boolean indicating if the quest can be repeated weekly
-- @return isLegendary Boolean indicating if the quest is a legendary quest
function GetAvailableGossipQuestInfo(index)
	local name, level, isTrivial, frequency, isRepeatable, isLegendary, isIgnored
	if(isBetaClient) then
		name, level, isTrivial, frequency, isRepeatable, isLegendary, isIgnored = select(((index * 7) - 7) + 1, GetGossipAvailableQuests())
	else
		name, level, isTrivial, frequency, isRepeatable, isLegendary = select(((index * 6) - 6) + 1, GetGossipAvailableQuests())
		isIgnored = false
	end

	return name, level, isTrivial, isIgnored, isRepeatable, frequency == 2, frequency == 3, isLegendary
end

--- API that returns information about active quests in the gossip window.
-- @name GetActiveGossipQuestInfo
-- @usage GetActiveGossipQuestInfo(index)
-- @param index Number between 1 and GetNumGossipActiveQuests()
-- @return name Name of the quest
-- @return level Suggested character level for attempting the quest
-- @return isTrivial Boolean indicating if the quest is considered trivial (rewards no XP) or not
-- @return isIgnored Boolean indicating if the quest has been flagged as ignored by the player
-- @return isCompleted Boolean indicating if the quest has been completed and can be turned in
-- @return isLegendary Boolean indicating if the quest is a legendary quest
function GetActiveGossipQuestInfo(index)
	local name, level, isTrivial, isComplete, isLegendary, isIgnored
	if(isBetaClient) then
		name, level, isTrivial, isComplete, isLegendary, isIgnored = select(((index * 6) - 6) + 1, GetGossipActiveQuests())
	else
		name, level, isTrivial, isComplete, isLegendary = select(((index * 5) - 5) + 1, GetGossipActiveQuests())
		isIgnored = false
	end

	return name, level, isTrivial, isIgnored, isComplete, isLegendary
end
