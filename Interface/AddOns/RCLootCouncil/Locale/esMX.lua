-- Translate RCLootCouncil to your language at:
-- http://wow.curseforge.com/addons/rclootcouncil/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("RCLootCouncil", "esMX")
if not L then return end

-- L["Abort"] = ""
-- L["Accept Whispers"] = ""
-- L["accept_whispers_desc"] = ""
-- L["Acknowledged as 'response'"] = ""
-- L["Active"] = ""
-- L["active_desc"] = ""
-- L["add"] = ""
-- L["Add Item"] = ""
-- L["Add Note"] = ""
-- L["Add ranks"] = ""
-- L["add_ranks_desc"] = ""
-- L["add_ranks_desc2"] = ""
-- L["Add rolls"] = ""
-- L["All items"] = ""
-- L["All items has been awarded and  the loot session concluded"] = ""
-- L["Alt click Looting"] = ""
-- L["alt_click_looting_desc"] = ""
-- L["Alternatively, flag the loot as award later."] = ""
-- L["Always use RCLootCouncil when I'm Master Looter"] = ""
-- L["Always use when leader"] = ""
-- L["A new session has begun, type '/rc open' to open the voting frame."] = ""
-- L["Announce Awards"] = ""
-- L["announce_awards_desc"] = ""
-- L["announce_awards_desc2"] = ""
-- L["Announce Considerations"] = ""
-- L["announce_considerations_desc"] = ""
-- L["announce_considerations_desc2"] = ""
-- L["Announcements"] = ""
-- L["Anonymous Voting"] = ""
-- L["anonymous_voting_desc"] = ""
-- L["Append realm names"] = ""
-- L["Are you sure you want to abort?"] = ""
-- L["Are you sure you want to give #item to #player?"] = ""
-- L["Ask me every time I become Master Looter"] = ""
-- L["Ask me when leader"] = ""
-- L["Auto Award"] = ""
-- L["auto_award_desc"] = ""
-- L["Auto awarded 'item'"] = ""
-- L["Auto Award to"] = ""
-- L["auto_award_to_desc"] = ""
-- L["Auto Enable"] = ""
-- L["auto_enable_desc"] = ""
-- L["Auto Loot"] = ""
-- L["Autoloot BoE"] = ""
-- L["autoloot_BoE_desc"] = ""
-- L["auto_loot_desc"] = ""
-- L["Auto Open"] = ""
-- L["auto_open_desc"] = ""
-- L["Autopass"] = ""
-- L["Auto Pass"] = ""
-- L["Auto pass BoE"] = ""
-- L["auto_pass_boe_desc"] = ""
-- L["auto_pass_desc"] = ""
-- L["Autopassed on 'item'"] = ""
-- L["Auto Start"] = ""
-- L["auto_start_desc"] = ""
-- L["Autostart isn't supported when testing"] = ""
-- L["award"] = ""
-- L["Award"] = ""
-- L["Award Announcement"] = ""
-- L["Award for ..."] = ""
-- L["Award later?"] = ""
-- L["Award Reasons"] = ""
-- L["award_reasons_desc"] = ""
-- L["Awards"] = ""
-- L["Banking"] = ""
-- L["Button"] = ""
-- L["Buttons and Responses"] = ""
-- L["buttons_and_responses_desc"] = ""
-- L["Cancel"] = ""
-- L["Candidate didn't respond on time"] = ""
-- L["Candidate has disabled RCLootCouncil"] = ""
-- L["Candidate is selecting response, please wait"] = ""
-- L["Candidate removed"] = ""
-- L["Cannot autoaward:"] = ""
-- L["Cannot give 'item' to 'player' due to Blizzard limitations. Gave it to you for distribution."] = ""
-- L["Change Response"] = ""
-- L["Changing LootMethod to Master Looting"] = ""
-- L["Changing loot threshold to enable Auto Awarding"] = ""
-- L["Channel"] = ""
-- L["channel_desc"] = ""
-- L["chat_commands"] = ""
-- L["chat tVersion string"] = ""
-- L["chat version String"] = ""
-- L["Check this to loot the items and distribute them later."] = ""
-- L["Check to append the realmname of a player from another realm"] = ""
-- L["Check to have all frames minimize when entering combat"] = ""
-- L["Choose when to use RCLootCouncil"] = ""
-- L["Clear Loot History"] = ""
-- L["clear_loot_history_desc"] = ""
-- L["Click to add note to send to the council."] = ""
-- L["Click to expand/collapse more info"] = ""
-- L["Click to switch to 'item'"] = ""
-- L["Close"] = ""
-- L["config"] = ""
-- L["confirm_usage_text"] = ""
-- L["Could not Auto Award i because the Loot Threshold is too high!"] = ""
-- L["Could not find 'player' in the group."] = ""
-- L["Couldn't find any councilmembers in the group"] = ""
-- L["council"] = ""
-- L["Council"] = ""
-- L["Current Council"] = ""
-- L["current_council_desc"] = ""
-- L["Date"] = ""
-- L["days and x months"] = ""
-- L["days, x months, y years"] = ""
-- L["Deselect responses to filter them"] = ""
-- L["Diff"] = ""
-- L["Disenchant"] = ""
-- L["disenchant_desc"] = ""
-- L["DPS"] = ""
-- L["Dropped by:"] = ""
-- L["Enable Loot History"] = ""
-- L["enable_loot_history_desc"] = ""
-- L["Enter your note:"] = ""
-- L["Everyone have voted"] = ""
-- L["Filter"] = ""
-- L["Following winners was registered:"] = ""
-- L["Free"] = ""
-- L["From:"] = ""
-- L["g1"] = ""
-- L["g2"] = ""
-- L["General"] = ""
-- L["General options"] = ""
-- L["Greed"] = ""
-- L["Group"] = ""
-- L["Group Council Members"] = ""
-- L["group_council_members_desc"] = ""
-- L["group_council_members_head"] = ""
-- L["Guild"] = ""
-- L["Guild Council Members"] = ""
-- L["Healer"] = ""
-- L["help"] = ""
-- L["Hide Votes"] = ""
-- L["hide_votes_desc"] = ""
-- L["history"] = ""
-- L["ignore_input_desc"] = ""
-- L["ignore_input_usage"] = ""
-- L["Ignore List"] = ""
-- L["ignore_list_desc"] = ""
-- L["Ignore Options"] = ""
-- L["ignore_options_desc"] = ""
-- L["ilvl"] = ""
-- L["ilvl: x"] = ""
-- L[" is not active in this raid."] = ""
-- L["Item"] = ""
-- L["Item has been awarded"] = ""
-- L["Item received and added from 'player'"] = ""
-- L["Item(s) replaced:"] = ""
-- L["Items under consideration:"] = ""
-- L["Latest 'item' won:"] = ""
-- L["Log"] = ""
-- L["log_desc"] = ""
-- L["Loot announced, waiting for answer"] = ""
-- L["Looted items to award later"] = ""
-- L["Loot Everything"] = ""
-- L["loot_everything_desc"] = ""
-- L["Loot History"] = ""
-- L["loot_history_desc"] = ""
-- L["Looting options"] = ""
-- L["Loot won:"] = ""
-- L["Lower Quality Limit"] = ""
-- L["lower_quality_limit_desc"] = ""
-- L["Mainspec/Need"] = ""
-- L["Master Looter"] = ""
-- L["master_looter_desc"] = ""
-- L["Message"] = ""
-- L["message_desc"] = ""
-- L["Minimize in combat"] = ""
-- L["Minor Upgrade"] = ""
-- L["ML sees voting"] = ""
-- L["ml_sees_voting_desc"] = ""
-- L["Multi Vote"] = ""
-- L["multi_vote_desc"] = ""
-- L["Name"] = ""
-- L["'n days' ago"] = ""
-- L["Need"] = ""
-- L["Never use RCLootCouncil"] = ""
-- L["No"] = ""
-- L["No (dis)enchanters found"] = ""
-- L["No entries in the Loot History"] = ""
-- L["No items to award later registered"] = ""
-- L["None"] = ""
-- L["No session running"] = ""
-- L["Not announced"] = ""
-- L["Not cached, please reopen."] = ""
-- L["Note"] = ""
-- L["Notes"] = ""
-- L["notes_desc"] = ""
-- L["Not Found"] = ""
-- L["Not installed"] = ""
-- L["Now handles looting"] = ""
-- L["No winners registered"] = ""
-- L["Number of buttons"] = ""
-- L["number_of_buttons_desc"] = ""
-- L["Number of reasons"] = ""
-- L["number_of_reasons_desc"] = ""
-- L["Observe"] = ""
-- L["observe_desc"] = ""
-- L["Officer"] = ""
-- L["Offline or RCLootCouncil not installed"] = ""
-- L["Offspec/Greed"] = ""
-- L["open"] = ""
-- L["Open the Loot History"] = ""
-- L["open_the_loot_history_desc"] = ""
-- L["Party"] = ""
-- L["Pass"] = ""
-- L["'player' has asked you to reroll"] = ""
-- L["'player' has ended the session"] = ""
-- L["&p was awarded with &i for &r!"] = ""
-- L["Raid"] = ""
-- L["Raid Warning"] = ""
-- L["Rank"] = ""
-- L["RCLootCouncil Loot Frame"] = ""
-- L["RCLootCouncil Loot History"] = ""
-- L["RCLootCouncil Session Setup"] = ""
-- L["RCLootCouncil Version Checker"] = ""
-- L["RCLootCouncil Voting Frame"] = ""
-- L["Reannounce ..."] = ""
-- L["Reason"] = ""
-- L["reason_desc"] = ""
-- L["Remove All"] = ""
-- L["remove_all_desc"] = ""
-- L["Remove from consideration"] = ""
-- L["reset"] = ""
-- L["reset_announce_to_default_desc"] = ""
-- L["reset_buttons_to_default_desc"] = ""
-- L["Reset to default"] = ""
-- L["reset_to_default_desc"] = ""
-- L["Response"] = ""
-- L["Response color"] = ""
-- L["response_color_desc"] = ""
-- L["Responses from Chat"] = ""
-- L["responses_from_chat_desc"] = ""
-- L["Role"] = ""
-- L["Roll"] = ""
-- L["Say"] = ""
-- L["Self Vote"] = ""
-- L["self_vote_desc"] = ""
-- L["Send History"] = ""
-- L["send_history_desc"] = ""
-- L["Sent whisper help to 'player'"] = ""
-- L["session_error"] = ""
-- L["Set the text for button i's response."] = ""
-- L["Set the text on button 'number'"] = ""
-- L["Set the whisper keys for button i."] = ""
-- L["Silent Auto Pass"] = ""
-- L["silent_auto_pass_desc"] = ""
-- L["Something went wrong :'("] = ""
-- L["Start"] = ""
-- L["Status texts"] = ""
-- L["Tank"] = ""
-- L["test"] = ""
-- L["Test"] = ""
-- L["test_desc"] = ""
-- L["Text color"] = ""
-- L["text_color_desc"] = ""
-- L["Text for reason #i"] = ""
-- L["The following council members have voted"] = ""
-- L["The item would now be awarded to 'player'"] = ""
-- L["The loot is already on the list"] = ""
-- L["The Master Looter doesn't allow multiple votes."] = ""
-- L["The Master Looter doesn't allow votes for yourself."] = ""
-- L["The session has ended."] = ""
-- L["This item"] = ""
-- L["This item has been awarded"] = ""
-- L["Time:"] = ""
-- L["Total items received:"] = ""
-- L["Total items won:"] = ""
-- L["tVersion_outdated_msg"] = ""
-- L["Unable to give 'item' to 'player' - (player offline, left group or instance?)"] = ""
-- L["Unable to give out loot without the loot window open."] = ""
-- L["Unguilded"] = ""
-- L["Unknown"] = ""
-- L["Unknown/Chest"] = ""
-- L["Unknown date"] = ""
-- L["Unvote"] = ""
-- L["Upper Quality Limit"] = ""
-- L["upper_quality_limit_desc"] = ""
-- L["Usage"] = ""
-- L["Use the same setting when entering a raid as the group leader?"] = ""
-- L["version"] = ""
-- L["Version"] = ""
-- L["Version Check"] = ""
-- L["version_check_desc"] = ""
-- L["version_outdated_msg"] = ""
-- L["Vote"] = ""
-- L["Voters"] = ""
-- L["Votes"] = ""
-- L["Voting options"] = ""
-- L["Waiting for item info"] = ""
-- L["Waiting for response"] = ""
-- L["whisper"] = ""
-- L["whisper_guide"] = ""
-- L["whisper_guide2"] = ""
-- L["whisper_help"] = ""
-- L["whisperKey_greed"] = ""
-- L["whisperKey_minor"] = ""
-- L["whisperKey_need"] = ""
-- L["Windows reset"] = ""
-- L["winners"] = ""
-- L["x days"] = ""
-- L["x out of x have voted"] = ""
-- L["Yell"] = ""
-- L["Yes"] = ""
-- L["You are not allowed to see the Voting Frame right now."] = ""
-- L[" you are now the Master Looter and RCLootCouncil is now handling looting."] = ""
-- L["You cannot initiate a test while in a group without being the MasterLooter."] = ""
-- L["You cannot use the menu when the session has ended."] = ""
-- L["You cannot use this command without being the Master Looter"] = ""
-- L["You can only auto award items with a quality lower than 'quality' to yourself due to Blizaard restrictions"] = ""
-- L["You can't start a loot session while in combat."] = ""
-- L["You can't start a session before all items are loaded!"] = ""
-- L["You haven't set a council! You can edit your council by typing '/rc council'"] = ""
-- L["You're already running a session."] = ""
-- L["Your note:"] = ""

