local mod = LootMaster:NewModule("EPGPLootmaster_Options")

local L = LibStub("AceLocale-3.0"):GetLocale("EPGPLootmaster")

--local LootMasterML = false

function mod:OnEnable()
  local options = {
    name = "EPGPLootMaster",
    type = "group",
    get = function(i) return LootMaster.db.profile[i[#i]] end,
    set = function(i, v) LootMaster.db.profile[i[#i]] = v end,
    args = {

        global = {
            order = 1,
            type = "group",
            hidden = function(info) return not LootMasterML end,
            name = L["General config"],

                args = {

                help = {
                    order = 0,
                    type = "description",
                    name = L["EPGP is an in game, relational loot distribution system. LootMaster helps you distribute loot to your raid and registers this loot in the EPGP system."],
                },



                no_ml = {
                    order = 2,
                    type = "description",
                    hidden = function(info) return LootMasterML end,
                    name = L["\r\n\r\n|cFFFF8080WARNING: Alot of settings have been hidden because the EPGPLootmaster 'ML' module has been disabled. Please enabled it from the addon configuration screen.|r"],
                },

                config_group = {
                    order = 12,
                    type = "group",
                    guiInline = true,
                    hidden = function(info) return not LootMasterML end,
                    name = L["General config"],
                    args = {

                        use_epgplootmaster = {
                            order = 2,
                            type = "select",
			                width = "double",
                            set = function(i, v)
                                LootMaster.db.profile.use_epgplootmaster = v;
                                if v == 'enabled' then
                                    LootMasterML:EnableTracking();
                                elseif v == 'disabled' then
                                    LootMasterML:DisableTracking();
                                else
                                    LootMasterML.current_ml = nil;
                                    LootMasterML:GROUP_UPDATE();
                                end

                            end,
                            name = L["Use EPGPLootmaster"],
                            desc = L["Controls whether EPGPLootmaster is enabled or not."],
                            values = {
                                ['enabled'] = L['Always use EPGPLootmaster to distribute loot, without asking'],
                                ['disabled'] = L['Never use EPGPLootmaster to distribute loot'],
                                ['ask'] = L['Ask me every time I become loot master']
                            },
                        },

                        loot_timeout = {
                            order = 14,
                            type = "select",
			                width = "double",
                            name = L["Loot selection timeout"],
                            desc = L["Sets the amount of time a loot candidate has to select wether they want the loot or not."],
                            values = {
                                [0] = L['No timeout'],
                                [10] = '10 secs',
                                [15] = '15 secs',
                                [20] = '20 secs',
                                [30] = '30 secs',
                                [40] = '40 secs',
                                [50] = '50 secs',
                                [60] = '1 minute',
                                [90] = '1 min 30 sec',
                                [150] = '2 min 30 sec',
                                [300] = '5 min',
                            },
                        },



                        ignoreResponseCorrections = {
                            type = "toggle",
                            order = 17,
                            width = 'full',
                            name = L["Only accept first candidate response for each item."],
                            desc = L["Normally candidates can send multiple whispers per loot to change their selection. For example they first selected need but then decided to change to greed and give more priority to someone else. If you enable this option only the first response will be counted."],
                        },

                        allowCandidateNotes = {
                            type = "toggle",
                            order = 18,
                            width = 'full',
                            name = L["Allow candidates to add notes to each item."],
                            desc = L["Check this if you want your candidates to send notes to you. The notes will show up as an icon on your loot interface. You can read them by hovering the icon. This allows your candidates to send you messages such as: 'Only needed if noone else needs' or 'Item B has higher priority'. You can disable this if you feel this slows the loot distribution down."],
                        },

                        filterEPGPLootmasterMessages = {
                            type = "toggle",
                            order = 19,
                            width = 'full',
                            name = L["Filter chat announces and whispers."],
                            desc = L["EPGPLootmaster has a nice system where even raid members who don't have EPGPLootmaster installed can need/greed/pass on items. This will be done by whispering and sending chat messages to the raid channel. Enable this option to filter all these messages from your chat."],
                        },

                        audioWarningOnSelection = {
                            type = "toggle",
                            order = 20,
                            width = 'full',
                            name = L["Play audio warning on loot selection popup."],
                            desc = L["This will play an audible warning when the loot selection popup is opened and requires your input."],
                        },
                    }
                },

                buttons_group = {
                    order = 12.5,
                    type = "group",
                    guiInline = true,
                    hidden = function(info) return not LootMasterML end,
                    name = L["Selection buttons"],
                    args = {

                        help = {
                            order = 0,
                            type = "description",
                            name = L["This allows you to configure the selection buttons on the user interfaces of your raiders. Please note that client selections will be sorted the same as the buttons are sorted below. You will need to add one button minimal and the pass button will always be visible."],
                        },

                        buttonNum = {
                            type = "range",
                            width = 'full',
                            order = 1,
                            name = L["Amount of buttons to display:"],
                            min = 1,
                            max = EPGPLM_MAX_BUTTONS,
                            step = 1,
                            desc = L["Specify how many buttons you want to show on your clients. You will need to configure 1 button minimal and be aware that the pass button will always be included."],
                        },


                        button1 = {
                            type = "input",
                            width = 'full',
                            hidden = function(info) return LootMaster.db.profile.buttonNum < 1 end,
                            dialogControl = "EPGPLMButtonConfigWidget",
                            order = 1.1,
                            name = "button1",
                            desc = L["Configure this selection button."],
                        },

                        button2 = {
                            type = "input",
                            width = 'full',
                            hidden = function(info) return LootMaster.db.profile.buttonNum < 2 end,
                            dialogControl = "EPGPLMButtonConfigWidget",
                            order = 1.2,
                            name = "button2",
                            desc = L["Configure this selection button."],
                        },

                        button3 = {
                            type = "input",
                            width = 'full',
                            hidden = function(info) return LootMaster.db.profile.buttonNum < 3 end,
                            dialogControl = "EPGPLMButtonConfigWidget",
                            order = 1.3,
                            name = "button3",
                            desc = L["Configure this selection button."],
                        },

                        button4 = {
                            type = "input",
                            width = 'full',
                            hidden = function(info) return LootMaster.db.profile.buttonNum < 4 end,
                            dialogControl = "EPGPLMButtonConfigWidget",
                            order = 1.4,
                            name = "button4",
                            desc = L["Configure this selection button."],
                        },

                        button5 = {
                            type = "input",
                            width = 'full',
                            hidden = function(info) return LootMaster.db.profile.buttonNum < 5 end,
                            dialogControl = "EPGPLMButtonConfigWidget",
                            order = 1.5,
                            name = "button5",
                            desc = L["Configure this selection button."],
                        },

                        button6 = {
                            type = "input",
                            width = 'full',
                            hidden = function(info) return LootMaster.db.profile.buttonNum < 6 end,
                            dialogControl = "EPGPLMButtonConfigWidget",
                            order = 1.6,
                            name = "button6",
                            desc = L["Configure this selection button."],
                        },

                        button7 = {
                            type = "input",
                            width = 'full',
                            hidden = function(info) return LootMaster.db.profile.buttonNum < 7 end,
                            dialogControl = "EPGPLMButtonConfigWidget",
                            order = 1.7,
                            name = "button7",
                            desc = L["Configure this selection button."],
                        },

                        btnTestPopup = {
                            order = 3,
                            type = "execute",
                            width = 'full',
                            name = L["Open test popup and monitor windows"],
                            desc = L["Opens up a testing popup and monitor window, so you can see what this will look like on your clients. After you're done testing just click the discard loot button to close the monitor window."],
                            func = function()
                                local lootLink
                                for i=1, 20 do
                                  lootLink = GetInventoryItemLink("player", i)
                                  if lootLink then break end
                                end
                                if not lootLink then return end

                                ml = LootMasterML
                                local loot = ml:GetLoot(lootLink)
                                local added = false
                                if not loot then
                                    local lootID = ml:AddLoot(lootLink, true)
                                    loot = ml:GetLoot(lootID)
                                    loot.announced = false
                                    loot.manual = true
                                    added = true
                                end
                                if not loot then return self:Print(L['Unable to register loot.']) end
                                ml:AddCandidate(loot.id, LootMaster.UnitName('player'))
                                ml:AnnounceLoot(loot.id)
                                for i=1, LootMaster.db.profile.buttonNum do
                                  ml:AddCandidate(loot.id, 'Button ' .. i)
                                  ml:SetCandidateResponse(loot.id, 'Button ' .. i, LootMaster.RESPONSE['button'..i], true)
                                end
                                ml:ReloadMLTableForLoot(loot.link)
                            end
                        },
                    },
                },

                auto_hiding_group = {
                    order = 13,
                    type = "group",
                    guiInline = true,
                    hidden = function(info) return not LootMasterML end,
                    name = L["Auto hiding"],
                    args = {

                        help = {
                            order = 0,
                            type = "description",
                            name = L["This allows you to control the automatic hiding features of EPGPLootmaster."],
                        },

                        hideOnSelection = {
                            type = "toggle",
                            order = 16,
                            width = 'full',
                            name = L["Hide monitor window when loot selection opens."],
                            desc = L["Check this to auto hide the Master Looter/Monitor Interface when you are required to select need/greed/pass on loot."],
                        },

                        hideMLOnCombat = {
                            type = "toggle",
                            order = 17,
                            width = 'full',
                            name = L["Hide monitor window when entering combat."],
                            desc = L["Check this to auto hide the Master Looter/Monitor Interface when you are entering combat, it will restore automatically when you leave combat."],
                        },

                        hideSelectionOnCombat = {
                            type = "toggle",
                            order = 18,
                            width = 'full',
                            name = L["Hide loot selection window when entering combat."],
                            desc = L["Check this to auto hide the Loot need/greed/pass selection interface when you are entering combat, it will restore automatically when you leave combat."],
                        },
                    },
                },

                auto_announce_group = {
                    order = 14,
                    type = "group",
                    guiInline = true,
                    hidden = function(info) return not LootMasterML end,
                    name = L["Auto announcement"],
                    args = {

                        help = {
                            order = 0,
                            type = "description",
                            name = L["The EPGP Lootmaster auto announcer allows you to auto announce specific loot to the raid."],
                        },

                        auto_announce_threshold = {
                            order = 13,
                            type = "select",
                            width = 'full',
                            hidden = function(info) return not LootMasterML end,
                            name = L["Auto announcement threshold"],
                            desc = L["Sets automatic loot announcement threshold, any loot that is of equal or higher quality will get auto announced to the raid members."],
                            values = {
                                [0] = L['Never auto announce'],
                                [2] = ITEM_QUALITY2_DESC,
                                [3] = ITEM_QUALITY3_DESC,
                                [4] = ITEM_QUALITY4_DESC,
                                [5] = ITEM_QUALITY5_DESC,
                            },
                        },
                    },
                },


                AutoLootGroup = {

                            type = "group",
                            order = 16,
                            guiInline = true,
                            name = L["Auto looting"],
                            desc = L["Auto looting of items"],
                            hidden = function(info) return not LootMasterML end,
                            args = {

                                help = {
                                    order = 0,
                                    type = "description",
                                    name = L["The EPGP Lootmaster auto looter allows you to send specific BoU and BoE items to a predefined candidate without asking questions."],
                                },
                                AutoLootThreshold = {
                                    order = 1,
                                    type = "select",
                                    width = 'full',
                                    hidden = function(info) return not LootMasterML end,
                                    name = L["Auto loot threshold (BoE and BoU items only)"],
                                    desc = L["Sets automatic looting threshold, any BoE and BoU loot that is of lower or equal quality will get auto sent to the candidate below."],
                                    values = {
                                        [0] = 'Never auto loot',
                                        [2] = ITEM_QUALITY2_DESC,
                                        [3] = ITEM_QUALITY3_DESC,
                                        [4] = ITEM_QUALITY4_DESC,
                                        [5] = ITEM_QUALITY5_DESC,
                                    },
                                },
                                AutoLooter = {
                                    type = "select",
                                    style = 'dropdown',
                                    order = 2,
                                    width = 'full',
                                    name = L["Name of the default candidate (case sensitive):"],
                                    desc = L["Please enter the name of the default candidate to receive the BoE and BoU items here."],
                                    disabled = function(info) return (LootMaster.db.profile.AutoLootThreshold or 0)==0 end,
                                    values = function()
                                        local names = {}
                                        local name;
                                        local num = GetNumGroupMembers()
                                        if num>0 then
                                            -- we're in raid
                                            for i=1, num do
                                                name = GetRaidRosterInfo(i)
                                                names[name] = name
                                            end
                                        else
                                            num = GetNumSubgroupMembers()
                                            if num>0 then
                                                -- we're in party
                                                for i=1, num do
                                                    names[LootMaster.UnitName('party'..i)] = LootMaster.UnitName('party'..i)
                                                end
                                                names[LootMaster.UnitName('player')] = LootMaster.UnitName('player')
                                            else
                                                -- Just show everyone in guild.
                                                local num = GetNumGuildMembers(true);
                                                for i=1, num do repeat
                                                    name = GetGuildRosterInfo(i)
                                                    names[name] = name
                                                until true end
                                        end
                                        end
                                        sort(names)
                                        return names;
                                    end
                                },
                            }
                },

				VotingGroup = {
                            type = "group",
                            order = 16.2,
                            guiInline = true,
                            hidden = function(info) return not LootMasterML end,
							disabled = function(info) return not LootMaster.db.profile.monitorSend end,
                            name = L["Voting system"],
                            args = {

								help = {
									order = 0,
									type = "description",
									name = L["The voting system allows the master looter to request help when making a decision. While this is not something that's encouraged by the EPGP system as it will slow down the looting process a little, it will provide a guild much more flexibility. The master looter can request a vote per item at any time by a simple press of a button."],
								},
								voting = {
                                    type = "toggle",
                                    order = 1,
                                    width = 'full',
                                    name = L["Enable the voting system"],
                                },
                                votingEnableAuto = {
                                    hidden = function(info) return not LootMaster.db.profile.voting end,
                                    type = "toggle",
                                    order = 3,
                                    width = 'full',
                                    name = L["Auto request votes for each item"],
                                    desc = L["This will automatically ask for votes for each registered item (Auto announcing must also be enabled!)"],
                                },
								votingDisallowSelf = {
                                    hidden = function(info) return not LootMaster.db.profile.voting end,
								    type = "toggle",
                                    order = 4,
                                    width = 'full',
                                    name = L["Disallow voting for self"],
                                    desc = L["This will disallow players from voting on themselves"],
                                },
								votingSendAssistantOnly = {
                                    hidden = function(info) return not LootMaster.db.profile.voting end,
								    type = "toggle",
                                    order = 5,
                                    width = 'full',
                                    name = L["Only send to promoted players in raid"],
                                    desc = L["This will cause some overhead, since monitor messages will be sent one-by-one to players. Leave this disabled if you want everybody to be able to see the monitor. Disabling this option also makes the monitors respond faster."],
                                },
								votingSendGuildRank = {
									hidden = function(info) return not LootMaster.db.profile.voting end,
                                    type = "toggle",
                                    order = 6,
                                    width = 'full',
                                    name = L["Only send to specific guildranks"],
                                    desc = L["This will cause some overhead, since monitor messages will be sent one-by-one to players. Leave this disabled if you want everybody to be able to see the monitor. Disabling this option also makes the monitors respond faster."],
                                },
								votingSendGuildRankList = {
									hidden = function(info)
										if not LootMaster.db.profile.voting then return true end
										return not LootMaster.db.profile.votingSendGuildRank
									end,
									type = "multiselect",
									order = 7,
									name = L["Only send to the following guildranks:"],
									values = function()
										local data = {}
										if not IsInGuild() then return data end
										for i=1, GuildControlGetNumRanks() do
											data[i] = GuildControlGetRankName(i)
										end
										return data
									end,
									get = function(i,rankNum)
										if type(LootMaster.db.profile[ i[#i] ])~='table' then return true end
										return LootMaster.db.profile[ i[#i] ][rankNum]
									end,
									set = function(i,rankNum, value)
										if type(LootMaster.db.profile[ i[#i] ])~='table' then
											LootMaster.db.profile[ i[#i] ]={}
										end
                                        if value == nil then value=false end
										LootMaster.db.profile[ i[#i] ][rankNum] = value
									end
								}
							}
				},

				BiddingGroup = {
                            type = "group",
                            order = 16.3,
                            guiInline = true,
                            hidden = function(info) return not LootMasterML end,
                            name = L["Bidding system"],
                            args = {

								help = {
									order = 0,
									type = "description",
									name = L["The bidding system is a variation of the EPGP system where loot candidates are allowed to bid a custom GP value per item. The highest GP bid wins the loot."],
								},
								bidding = {
                                    type = "toggle",
                                    order = 1,
                                    width = 'full',
                                    name = L["Enable the bidding system"],
                                },
								biddingWhen = {
                                    order = 2,
                                    type = "select",
                                    width = 'full',
                                    hidden = function(info) return not LootMaster.db.profile.bidding end,
                                    name = L["When should bidding be available to player?"],
									desc = L["Always: the bidding inputs will always be available when using the auto announcing features.\r\n\r\nManual: Disable the bidding system by default and allow me to select per item (you should disable auto announce). Bidding system will be disabled when you're using the auto announcing system. You can by-pass the auto announcing system per item by alt+clicking an item on the native loot window."],
                                    values = {
                                        ['always'] = L["Always enable bidding"],
                                        ['manually'] = L["Manual, disable bidding when auto announcing"]
                                    },
                                }
							}
				},



                MonitorGroup = {
                            type = "group",
                            order = 17,
                            guiInline = true,
                            hidden = function(info) return not LootMasterML end,
                            name = L["Monitoring"],
                            desc = L["Send and receive monitor messages from the master looter and see what other raidmembers selected."],
                            args = {

                                help = {
                                    order = 0,
                                    type = "description",
                                    name = L["The EPGP Lootmaster Monitor allows you to send messages to other users in your raid. It will show them the same interface as the ML, allowing them to help with the loot distribution."],
                                },

                                monitor = {
                                    type = "toggle",
                                    set = function(i, v)
                                        LootMaster.db.profile[i[#i]] = v;
                                        if LootMasterML and LootMasterML.UpdateUI then
                                            LootMasterML.UpdateUI( LootMasterML );
                                        end
                                    end,
                                    order = 1,
                                    width = 'full',
                                    name = L["Listen for incoming monitor updates"],
                                    desc = L["Check if you want display incoming monitor updates. This function allows you to see the masterlooter interface so you can help in making decisions about the loot distribution."],
                                    disabled = false,
                                },

                                monitorIncomingThreshold = {
                                    order = 2,
                                    width = 'normal',
                                    type = "select",
                                    name = L["Only receive for equal or higher than"],
                                    desc = L["Only listen for monitor messages from the raid for items that match this threshold or are higher. (Please keep in mind that patterns etc also match this threshold)"],
                                    disabled = function(info) return not LootMaster.db.profile.monitor end,
                                    values = {
                                        [2] = ITEM_QUALITY2_DESC,
                                        [3] = ITEM_QUALITY3_DESC,
                                        [4] = ITEM_QUALITY4_DESC,
                                        [5] = ITEM_QUALITY5_DESC,
                                    },
                                },

                                monitorSend = {
                                    type = "toggle",
                                    order = 3.1,
                                    width = 'full',
                                    name = L["Send outgoing monitor updates"],
                                    desc = L["Check if you want send outgoing monitor messages. This functions allows other raidmembers to see the masterlooter interface so they can help in making decisions about the loot distribution. You will only send out messages if you are the master looter."],
                                    disabled = false,
                                },

								monitorSendGuildRank = {
                                    type = "toggle",
                                    order = 3.20,
                                    width = 'full',
                                    name = L["Only send to specific guildranks"],
                                    desc = L["This will cause some overhead, since monitor messages will be sent one-by-one to players. Leave this disabled if you want everybody to be able to see the monitor. Disabling this option also makes the monitors respond faster."],
                                },

								monitorSendGuildRankList = {
									hidden = function(info) return not LootMaster.db.profile.monitorSendGuildRank end,
									type = "multiselect",
									order = 3.21,
									name = L["Only send to the following guildranks:"],
									values = function()
										local data = {}
										if not IsInGuild() then return data end
										for i=1, GuildControlGetNumRanks() do
											data[i] = GuildControlGetRankName(i)
										end
										return data
									end,
									get = function(i,rankNum)
										if type(LootMaster.db.profile[i[#i]])~='table' then return true end
										return LootMaster.db.profile[i[#i]][rankNum]
									end,
									set = function(i,rankNum, value)
										if type(LootMaster.db.profile[i[#i]])~='table' then
											LootMaster.db.profile[i[#i]]={}
										end
                                        if value == nil then value=false end
										LootMaster.db.profile[i[#i]][rankNum] = value
									end
								},

                                monitorSendAssistantOnly = {
                                    type = "toggle",
                                    order = 3.12,
                                    disabled = function(info) return not LootMaster.db.profile.monitorSend end,
                                    width = 'full',
                                    name = L["Only send to promoted players in raid"],
                                    desc = L["This will cause some overhead, since monitor messages will be sent one-by-one to players. Leave this disabled if you want everybody to be able to see the monitor. Disabling this option also makes the monitors respond faster."],
                                },

                                hideResponses = {
                                    type = "toggle",
                                    disabled = function(info) return not LootMaster.db.profile.monitorSend end,
                                    order = 3.4,
                                    width = 'full',
                                    name = L["Mask monitors while selecting"],
                                    desc = L["This is a raid-wide configuration. This will hide the responses from players on monitors while the monitoring player is still making his selection for a specific item. This will prevent players from making selections based on other peoples responses. This prevents 'cheating' and speeds up the selection process because people will stop waiting for eachother"],
                                },

                                monitorThreshold = {
                                    order = 4,
                                    width = 'normal',
                                    type = "select",
                                    name = L["Only send for equal or higher than"],
                                    desc = L["Only send monitor messages to the raid for items that match this threshold or are higher. (Please keep in mind that patterns etc also match this threshold)"],
                                    disabled = function(info) return not LootMaster.db.profile.monitorSend end,
                                    values = {
                                        [2] = ITEM_QUALITY2_DESC,
                                        [3] = ITEM_QUALITY3_DESC,
                                        [4] = ITEM_QUALITY4_DESC,
                                        [5] = ITEM_QUALITY5_DESC,
                                    },
                                },

                                hint = {
                                    order = 5,
                                    width = 'normal',
                                    hidden = function(info) return not LootMaster.db.profile.monitorSend end,
                                    type = "description",
                                    name = L["Only BoE and BoU items will be filtered. BoP items will always send a monitor message."],
                                },
                            }
                },

                ExtraFunctionGroup = {
                            type = "group",
                            order = 18,
                            guiInline = true,
                            hidden = function(info) return not LootMasterML end,
                            name = L["Extra functions"],
                            args = {

                                help = {
                                    order = 0,
                                    type = "description",
                                    name = L["Some extra functions that might come in handy."],
                                },
                                btnVersionCheck = {
                                  order = 1000,
                                  type = "execute",
                                  name = L["Version Checker"],
                                  desc = L["Opens up the version checker frame."],
                                  func = function()
                                           LootMaster:ShowVersionCheckFrame()
                                         end
                                },

                                btnRaidInfoCheck = {
                                  order = 2000,
                                  type = "execute",
                                  name = L["Raidinfo Check"],
                                  desc = L["Checks whether players are locked to an instance."],
                                  func = function()
                                           LootMasterML:ShowRaidInfoLookup()
                                         end
                                }





                            }
                }
            },
        },
    },
  }

  local config = LibStub("AceConfig-3.0")
  local dialog = LibStub("AceConfigDialog-3.0")

  config:RegisterOptionsTable("EPGPLootMaster-Bliz", options)
  dialog:AddToBlizOptions("EPGPLootMaster-Bliz", "EPGPLootMaster", nil, 'global')
  --dialog:AddToBlizOptions("EPGPLootMaster-Bliz", "Monitor", "EPGPLootMaster", 'MonitorGroup')

end