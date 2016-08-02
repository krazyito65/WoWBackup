local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ProfessionsA") then return end
ZygorGuidesViewer:RegisterInclude("trainer_Alchemy",[[
goto Stormwind City,55.7,86.1
.talk 5499
]])
ZygorGuidesViewer:RegisterInclude("trainer_Archaeology",[[
goto Stormwind City,85.8,25.9
.talk 44238
]])
ZygorGuidesViewer:RegisterInclude("trainer_Blacksmithing",[[
goto 63.7,37.0
.talk 5511
]])
ZygorGuidesViewer:RegisterInclude("trainer_Blacksmithing_Shatt",[[
goto Shattrath City,69.4,43.3
.talk 20124
]])
ZygorGuidesViewer:RegisterInclude("trainer_Cooking",[[
goto Stormwind City,77.3,53.2
.talk 5482
]])
ZygorGuidesViewer:RegisterInclude("trainer_Enchanting",[[
goto Stormwind City,52.9,74.5
.talk 1317
]])
ZygorGuidesViewer:RegisterInclude("trainer_Engineering",[[
goto Stormwind City,62.8,32.0
.talk 5518
]])
ZygorGuidesViewer:RegisterInclude("trainer_FirstAid",[[
goto Stormwind City,52.2,45.4
.talk 2327
]])
ZygorGuidesViewer:RegisterInclude("trainer_Fishing",[[
goto Stormwind City,54.8,69.6
.talk 5493
]])
ZygorGuidesViewer:RegisterInclude("trainer_Herbalism",[[
goto Stormwind City,54.3,84.1
.talk 5566
]])
ZygorGuidesViewer:RegisterInclude("trainer_Inscription",[[
goto Stormwind City,49.8,74.8
.talk 30713
]])
ZygorGuidesViewer:RegisterInclude("trainer_Jewelcrafting",[[
goto Stormwind City,63.5,61.8
.talk 44582
]])
ZygorGuidesViewer:RegisterInclude("trainer_Mining",[[
goto Stormwind City,59.6,37.6 
.talk 5513
]])
ZygorGuidesViewer:RegisterInclude("trainer_Skinning",[[
goto Stormwind City,72.2,62.2
.talk 1292
]])
ZygorGuidesViewer:RegisterInclude("trainer_Skinning_IF",[[
goto Ironforge,39.9,32.6
.talk 6291
]])
ZygorGuidesViewer:RegisterInclude("trainer_Tailoring",[[
goto Stormwind City,53.1,81.3
.talk 1346
]])
ZygorGuidesViewer:RegisterInclude("trainer_Leatherworking",[[
goto Stormwind City,71.7,63.0
.talk 5564
]])
ZygorGuidesViewer:RegisterInclude("vendor_Alchemy",[[
goto 55.9,85.6
.talk 1313
]])
ZygorGuidesViewer:RegisterInclude("vendor_Blacksmithing",[[
goto Stormwind City,63.3,37.8
.talk 5512
]])
ZygorGuidesViewer:RegisterInclude("vendor_Cooking",[[
goto 77.6,53.1
.talk 5483
]])
ZygorGuidesViewer:RegisterInclude("vendor_Enchanting",[[
goto 52.8,74.3
.talk 1318
]])
ZygorGuidesViewer:RegisterInclude("vendor_Engineering",[[
goto 63.1,32.0
.talk 5519
]])
ZygorGuidesViewer:RegisterInclude("vendor_Fishing",[[
goto 55.0,69.7
.talk 5494
]])
ZygorGuidesViewer:RegisterInclude("vendor_Inscription",[[
goto 49.6,74.9
.talk 30730
]])
ZygorGuidesViewer:RegisterInclude("vendor_Jewelcrafting",[[
goto 63.2,61.7
.talk 44583
]])
ZygorGuidesViewer:RegisterInclude("vendor_Mining",[[
goto 59.2,37.5
.talk 5514
]])
ZygorGuidesViewer:RegisterInclude("vendor_Skinning",[[
goto 71.6,62.8
.talk 5565
]])
ZygorGuidesViewer:RegisterInclude("vendor_Tailoring",[[
goto 53.1,81.8
.talk 1347
]])
ZygorGuidesViewer:RegisterInclude("vendor_Leatherworking",[[
goto Stormwind City,71.6,62.8
.talk 5565	
]])
ZygorGuidesViewer:RegisterInclude("questgiver_SWCooking",[[
goto Stormwind City,50.6,71.9
.talk 42288
]])
ZygorGuidesViewer:RegisterInclude("auctioneer",[[
goto 61.1,70.6
.talk 8719
]])
ZygorGuidesViewer:RegisterInclude("auctioneer_dwarven",[[
goto Stormwind City,60.1,32.2
.talk 43841
]])
ZygorGuidesViewer:RegisterInclude("shatt_auctioneer",[[
]])
ZygorGuidesViewer:RegisterInclude("auctioneer_dwarven",[[
goto Stormwind City,60.1,32.2
.talk 43841
]])
ZygorGuidesViewer:RegisterInclude("goto_shatt_auctioneer",[[
goto Shattrath City,51.0,26.5 |only if rep ('The Aldor') >= Neutral
.talk 50143 |only if rep ('The Aldor') >= Neutral
goto Shattrath City,57.0,63.2 |only if rep ('The Scryers') >= Friendly
.talk 50139|only if rep ('The Scryers') >= Friendly
]])
ZygorGuidesViewer:RegisterInclude("go_farm",[[
'You have sufficient %skill% skill to gather these yourself. |only if skill("%skill%")>=%req% |confirm
'Click here if you want to go gathering. |confirm |next "%goto%"  |only if skill("%skill%")>=%req%
'You need %req% points in %skill% to gather these yourself. |only if skill("%skill%")>0 and skill("%skill%")<%req%
]])
ZygorGuidesViewer:RegisterInclude("go_farm_level",[[
'You can gather these yourself. Click here if you want to go gathering. |script ZGV:GotoStep("%goto%") |only if level>=%level%
'You need to be level %level% to gather these yourself. |only if level<%level%
]])
ZygorGuidesViewer:RegisterInclude("go_disenchant",[[
'You have sufficient %skill% skill to gather these yourself by disenchanting items. |only if skill("%skill%")>=%req%
'Click here if you want to go gathering. |confirm |next "%goto%"  |only if skill("%skill%")>=%req%
'You need %req% points in %skill% to gather these yourself. |only if skill("%skill%")>0 and skill("%skill%")<%req%
]])
ZygorGuidesViewer:RegisterInclude("innkeeper_dwarven",[[
goto Stormwind,64.9,31.9
.talk 44235
]])
ZygorGuidesViewer:RegisterInclude("home_TradeDistrict",[[
goto Stormwind City,60.4,75.3
.talk 6740
.home Trade District
]])
ZygorGuidesViewer:RegisterInclude("home_DwarvenDistrict",[[
goto Stormwind City,64.9,31.9
.talk 44235
.home Dwarven District
]])
ZygorGuidesViewer:RegisterInclude("home_OldTown",[[
goto Stormwind City,75.7,54.1
.talk 44237
.home Old Town
]])
ZygorGuidesViewer:RegisterInclude("hearth_hub",[[
'Hearth to the Trade District |goto Stormwind City |use Hearthstone##6948 |noway |c  //60.4,75.3
]])
ZygorGuidesViewer:RegisterInclude("hearth_oldtown",[[
'Hearth to Old Town, Stormwind  |goto Stormwind City |use Hearthstone##6948 |noway |c  //75.6,54.0
]])
ZygorGuidesViewer:RegisterInclude("hearth_dwarven",[[
'Hearth to Dwarven District  |goto Stormwind City |use Hearthstone##6948 |noway |c
]])
ZygorGuidesViewer:RegisterInclude("hearth_dalaran",[[
'Hearth to A Hero's Welcome, Dalaran  |goto Dalaran |use Hearthstone##6948 |noway |c  //44.4,62.7
]])
ZygorGuidesViewer:RegisterInclude("shatt_anvil",[[
goto Shattrath City,69.7,42.7
.' Stand next to this anvil
]])
ZygorGuidesViewer:RegisterInclude("hell_anvil",[[
goto Hellfire Peninsula,56.8,63.8
.' Stand next to this anvil
]])
ZygorGuidesViewer:RegisterInclude("twil_anvil",[[
goto Twilight Highlands,79.2,76.3
.' Stand next to this anvil
]])
ZygorGuidesViewer:RegisterInclude("maincity_anvil2",[[
]])
ZygorGuidesViewer:RegisterInclude("maincity_anvil",[[
goto Stormwind City,63.6,37.0
.' Stand next to this anvil
]])
ZygorGuidesViewer:RegisterInclude("port_blastedlands",[[
goto 49.0,87.3
.' Click the Portal to Blasted Lands |tip It's a blue and purple swirling portal.
.' Teleport to the Blasted Lands |goto Blasted Lands |noway |c
]])
ZygorGuidesViewer:RegisterInclude("darkportal",[[
goto 49.0,87.3
.' Click the Portal to Blasted Lands |tip It's a blue and purple swirling portal.
.' Teleport to the Blasted Lands |goto Blasted Lands |noway |c
step
goto Blasted Lands,55.0,54.1 |n
.' Enter the huge green portal
.' Teleport to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
]])
ZygorGuidesViewer:RegisterInclude("port_hyjal",[[
goto Stormwind City,76.2,18.7
.' Click the Portal to Hyjal |tip It's a swirling blue and green portal.
.' Teleport to Mount Hyjal |goto Mount Hyjal |noway |c
]])
ZygorGuidesViewer:RegisterInclude("port_vashjir",[[
goto Stormwind City,73.3,16.8
.' Click the Portal to Vashj'ir |tip It's a big swirling portal.
.' Teleport to Vashj'ir |goto Kelp'thar Forest |noway |c
]])
ZygorGuidesViewer:RegisterInclude("port_deepholm",[[
goto Stormwind City,73.2,19.7
.' Click the Portal to Deepholm |tip It's a pink and purple swirling portal.
.' Teleport to Deepholm |goto Deepholm |noway |c
]])
ZygorGuidesViewer:RegisterInclude("port_twilight",[[
goto Stormwind City,75.3,16.4
.' Click the Portal to Twilight Highlands |tip It's a big swirling portal.
.' Teleport to Twilight Highlands |goto Twilight Highlands |noway |c
]])
ZygorGuidesViewer:RegisterInclude("shatport_sw",[[
goto Shattrath City,57.2,48.2
.' Click the Portal to Stormwind |goto Stormwind City,49.6,86.5,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterInclude("rideto_ratchet",[[
|fly Booty Bay //Stranglethorn
step
goto The Cape of Stranglethorn,39.0,67.0 |n
.' Ride the boat to Ratchet, Northern Barrens |goto Northern Barrens |noway |c
]])
ZygorGuidesViewer:RegisterInclude("rideto_borean",[[
goto Stormwind City,18.2,25.5 |n
.' Ride the boat to Borean Tundra |goto Borean Tundra |noway |c
]])
ZygorGuidesViewer:RegisterInclude("rideto_howlingfjord",[[
|fly Menethil Harbor
step
goto Wetlands,5.1,55.8 |n
'Ride the boat to Howling Fjord|goto Howling Fjord |noway |c
]])
ZygorGuidesViewer:RegisterInclude("rideto_ruttheranvillage",[[
goto Stormwind City,22.6,56.0 |n
.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
]])
ZygorGuidesViewer:RegisterInclude("rideto_theramoreisle",[[
|fly Menethil Harbor
step
goto Wetlands,6.5,62.1 |n
.' Ride the boat to Theramore Isle, Dustwallow Marsh |goto Dustwallow Marsh |noway |c
]])
ZygorGuidesViewer:RegisterInclude("cast_campfire",[[
'Create a basic campfire |cast Basic Campfire##818
]])
ZygorGuidesViewer:RegisterInclude("dalaran_enter_sewer",[[
Enter the Dalaran sewers |goto Dalaran/2 %q%
'|goto Dalaran/1 60.2,47.7 <0.3 "Sewer entrance" |n %q%
'|goto Dalaran/1 34.8,45.5 <0.3 "Sewer entrance" |n %q%
]])
ZygorGuidesViewer:RegisterInclude("dalaran_leave_sewer",[[
Leave the Dalaran sewers |goto Dalaran/1 %q%
'|goto Dalaran/2 60.2,47.7 <0.3 "Sewer entrance" |n %q%
'|goto Dalaran/2 34.8,45.5 <0.3 "Sewer entrance" |n %q%
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Professions Guides\\Alchemy\\Alchemy 1-525 Leveling Guide",[[
description This guide will walk you through leveling your Alchemy skill from 1-525.
author support@zygorguides.com
completion skill,Alchemy,525
#include profession_dual_start,prof1="Alchemy",prof2="Herbalism"  // All-purpose dual-profession starter. Covers from the introduction through learning the second profession.
// routing to the proper section.
step
label "route"
'Redirecting to Alchemy 1-55 |next "alch_1-55" |only if skill("Alchemy")<55
'Redirecting to Alchemy 55-125 |next "alch_55-125" |only if skill("Alchemy")>=55 and skill("Alchemy")<125
'Redirecting to Alchemy 125-215 |next "alch_125-215" |only if skill("Alchemy")>=125 and skill("Alchemy")<215
'Redirecting to Alchemy 215-275 |next "alch_215-275" |only if skill("Alchemy")>=215 and skill("Alchemy")<275
'Redirecting to Alchemy 275-355 |next "alch_275-355" |only if skill("Alchemy")>=275 and skill("Alchemy")<355
'Redirecting to Alchemy 355-425 |next "alch_355-425" |only if skill("Alchemy")>=355 and skill("Alchemy")<425
'Redirecting to Alchemy 425-525 |next "alch_425-525" |only if skill("Alchemy")>=425 and skill("Alchemy")<525
'Redirecting to Alchemy finale |next "alch_525" |only if default
// ----------
// 1 - 55
// ----------
// TRAIN: Apprentice Alchemy
step
label "alch_1-55"
title + Alchemy 1-55
#include "trainer_Alchemy"
.skillmax Alchemy,75 |tip You must be at least level 5.
step
#include "home_TradeDistrict"
step
#include "auctioneer"
.buy 55 Peacebloom##2447
.buy 55 Silverleaf##765
#include "go_farm",skill="Herbalism",req="1",goto="alch_1-55_farm"
next "alch_1-55_skill"
// GATHER: 55 Peacebloom, 55 Silverleaf
step
label "alch_1-55_farm"
title + Alchemy 1-55 (farming)
'Go outside to Elwynn Forest |goto Elwynn Forest |noway |c
step
map Elwynn Forest
path follow loose;loop;ants straight  // this stays set until the end of the guide.
path	43.4,58.9	48.7,62.6	58.0,65.6
path	64.9,63.5	78.6,63.0	79.6,80.4
path	59.1,78.3	50.8,85.2
path	46.8,81.1	37.3,87.6	26.2,89.0
path	30.1,76.1	33.2,66.5
#include "follow_path_herbs"
.collect 55 Peacebloom##2447
.collect 55 Silverleaf##765
skill Herbalism,50
#include "max_skill_warning",skill="Herbalism",goto="alch_1-55_farm"
step
#include "hearth_hub"
// CREATE: 55 Minor Healing Potion
step
label "alch_1-55_skill"
title Alchemy 1-55
#include "vendor_Alchemy"
.buy 55 Crystal Vial##3371 |tip You can buy more just in case.
step
.create 55 Minor Healing Potion##2330,Alchemy,55 |tip You will need to save 38 of these for later use.
// ----------
// 55 - 125
// ----------
// TRAIN: Journeyman Alchemy
step
label "alch_55-125"
title + Alchemy 55-125
#include "trainer_Alchemy"
.skillmax Alchemy,150 |tip You must be at least level 10.
.learn Lesser Healing Potion##2337
step
#include "auctioneer"
.buy 38 Mageroyal##785
.buy 114 Briarthorn##2450
.buy 38 Minor Healing Potion##118 |only if itemcount("Minor Healing Potion")<38
#include go_farm,skill="Herbalism",req="50",goto="alch_55-125_farm"
|next "alch_55-125_skill"
// GATHER: 38 Peacebloom (if needed), 38 Silverleaf (if needed), 71 Mageroyal, 114 Briarthorn, 33 Stranglekelp
step
label "alch_55-125_farm"
title + Alchemy 55-125 (farming)
#include "trainer_Herbalism"
.skillmax Herbalism,150
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if itemcount("Minor Healing Potion")>=38
'Proceeding to farm |next |only if default
step
'Go outside to Elwynn Forest |goto Elwynn Forest |noway |c
step
map Elwynn Forest
path follow loose;loop;ants straight  // this stays set until the end of the guide.
path	43.4,58.9	48.7,62.6	58.0,65.6
path	64.9,63.5	78.6,63.0	79.6,80.4
path	59.1,78.3	50.8,85.2
path	46.8,81.1	37.3,87.6	26.2,89.0
path	30.1,76.1	33.2,66.5
#include "follow_path_herbs"
.collect 38 Peacebloom##2447
.collect 38 Silverleaf##765
skill Herbalism,50
#include "max_skill_warning",skill="Herbalism",goto="alch_55-125_farm"
step
#include "hearth_hub"
step
label "farm2"
'Skipping 2nd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Refuge Pointe //Arathi
step
'Go northwest to Hillsbrad Foothills |goto Hillsbrad Foothills 50,50 <500
step
label "farming"
map Hillsbrad Foothills
path follow loose;loop;ants straight
path	31.8,62.6	33.9,54.0	35.5,37.8	29.7,44.1	34.5,28.2	39.5,21.0
path	44.2,8.3	51.3,14.0	57.5,20.9	56.1,34.3	49.9,46.2	43.1,50.1
path	38.2,49.1	40.1,55.0	41.3,67.4	34.9,76.7	36.3,69.9
#include "follow_path_herbs"
.collect 71 Mageroyal##785
.collect 114 Briarthorn##2450
.collect 33 Stranglekelp##3820 |opt |tip Keep any Stranglekelp you find for later.
skill Herbalism,125
#include "max_skill_warning",skill="Herbalism",goto="alch_55-125_farm"
step
label "exit"
#include "hearth_hub"
// CREATE: 38 Lesser Healing Potion, 38 Elixir of Wisdom
step
label "alch_55-125_skill"
title + Alchemy 55-125
#include "vendor_Alchemy"
.buy 114 Crystal Vial##3371 |only if itemcount("Minor Healing Potion")<38
.buy 76 Crystal Vial##3371 |only if itemcount("Minor Healing Potion")>=38
step
.create 38 Minor Healing Potion##2330 |tip only if itemcount("Minor Healing Potion")<38
step
.create 38 Lesser Healing Potion##2337,Alchemy,90
step
#include "trainer_Alchemy"
.learn Elixir of Wisdom##3171
step
.create 38 Elixir of Wisdom##3171,Alchemy,125
// ----------
// 125 - 215
// ----------
// TRAIN: Expert Alchemy
step
label "alch_125-215"
title + Alchemy 125-215
#include "trainer_Alchemy"
|skillmax Alchemy,225 |tip You must be at least level 20.
.learn Lesser Mana Potion##3173
step
title + Alchemy 125-215
#include "auctioneer"
.buy 33 Mageroyal##785
.buy 33 Stranglekelp##3820
.buy 40 Wild Steelbloom##3355
.buy 20 Kingsblood##3356
.buy 20 Liferoot##3357
.buy 40 Goldthorn##3821
#include go_farm,skill="Herbalism",req="115",goto="alch_125-215_farm"
|next "alch_125-215_skill"
// GATHER: 33 Mageroyal, 33 Stranglekelp, 40 Wild Steelbloom, 20 Kingsblood, 20 Liferoot, 40 Goldthorn
step
title + Alchemy 125-215 (farming)
label "alch_125-215_farm"
#include "trainer_Herbalism"
.skillmax Herbalism,225
'Your _Herbalism_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 150. It's better to skill up first. |only if skill("Herbalism")<125 and skillmax("Herbalism")<225
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Refuge Pointe //Arathi
step
'Go northwest to Hillsbrad Foothills |goto Hillsbrad Foothills 50,50 <500
step
label "farming"
map Hillsbrad Foothills
path follow loose;loop;ants straight
path	31.8,62.6	33.9,54.0	35.5,37.8	29.7,44.1	34.5,28.2	39.5,21.0
path	44.2,8.3	51.3,14.0	57.5,20.9	56.1,34.3	49.9,46.2	43.1,50.1
path	38.2,49.1	40.1,55.0	41.3,67.4	34.9,76.7	36.3,69.9
#include "follow_path_herbs"
.collect 33 Mageroyal##785
.collect 33 Stranglekelp##3820 |opt
#include "max_skill_warning",skill="Herbalism",goto="alch_125-215_farm"
step
'Go northeast to The Hinterlands |goto The Hinterlands |noway |c
step
label "farm2"
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Chillwind Camp
step
label "farming"
map Western Plaguelands
path	31.8,59.3	36.9,57.1	43.5,53.2	45.9,44.7	45.2,35.2	49.5,35.1
path	49.5,35.1	51.0,47.4	55.2,51.3	61.8,52.0	67.2,44.5	63.6,56.0
path	56.6,60.1	52.6,67.5	46.4,59.2	37.9,62.2	33.7,62.7
#include "follow_path_herbs"
.collect 20 Kingsblood##3356
.collect 33 Stranglekelp##3820 |opt
skill Herbalism,150
#include "max_skill_warning",skill="Herbalism",goto="alch_125-215_farm"
step
label "farm3"
'Skipping 3rd part of farming |next "+farm4" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Light's Hope Chapel
step
label "farming"
map Eastern Plaguelands
path	69.1,56.4	56.9,73.9	48.8,62.7	46.6,43.8	57.5,47.0	66.6,46.2
#include "follow_path_herbs"
.collect 20 Liferoot##3357 |tip They are found around the small lake.
.collect 33 Stranglekelp#3820 |opt
skill Herbalism,150
#include "max_skill_warning",skill="Herbalism",goto="alch_125-215_farm"
step
label "farm4"
'Skipping 4th part of farming |next "+farm5" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Refuge Pointe
step
label "farming"
map Arathi Highlands
path	43.3,39.0	57.6,29.0	70.6,28.6
path	73.6,31.7	50.7,74.5	44.3,76.8	28.5,63.7
path	19.9,34.9	9.0,70.2
#include "follow_path_herbs"
.collect 40 Goldthorn##3821 |tip As you move, cling to the edges of the mountain.
.collect 33 Stranglekelp##3820 |opt
skill Herbalism,200
#include "max_skill_warning",skill="Herbalism",goto="alch_125-215_farm"
step
#include "hearth_hub"
step
label "farm5"
'Skipping 5th part of farming |next "+farm6" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Rebel Camp
step
label "farming"
map Northern Stranglethorn
path	64.2,25.4	63.3,24.2	63.3,24.2	63.9,39.4	56.2,43.2	56.2,43.2
path	45.5,40.7	35.9,32.9	31.5,37.2	23.1,32.3	17.4,24.1
#include "follow_path_herbs"
.collect 40 Wild Steelbloom##3355
.collect 33 Stranglekelp##3820 |opt
skill Herbalism,125
#include "max_skill_warning",skill="Herbalism",goto="alch_125-215_farm"
step
label "farm6"
'Skipping 6th part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Booty Bay
step
label "farming"
map The Cape of Stranglethorn
path follow loose;loop;ants straight
path    44.0,86.1	50.6,80.7	59.4,52.6
path	51.7,8.0	40.7,17.1	39.6,24.9	
path	32.4,32.9	 41.5,41.0	35.1,53.2	
path	36.8,56.2
#include follow_path_herbs
.collect 33 Stranglekelp##3820
#include "max_skill_warning",skill="Herbalism",goto="alch_125-215_farm"
step
label "exit"
#include "hearth_hub"
// CREATE: 33 Lesser Mana Potion, 20 Greater Healing Potion, 20 Elixir of Fortitude, 20 Elixir of Greater Defense
step
label "alch_125-215_skill"
title + Alchemy 125-215
#include "vendor_Alchemy"
.buy 93 Crystal Vial##3371
step
.create 33 Lesser Mana Potion##3173,Alchemy,155
step
#include "trainer_Alchemy"
.learn Greater Healing Potion##7181
step
.create 20 Greater Healing Potion##7181,Alchemy,175
step
#include "trainer_Alchemy"
.learn Elixir of Fortitude##3450
step
.create 20 Elixir of Fortitude##3450,Alchemy,195
step
#include "trainer_Alchemy"
.learn Elixir of Greater Defense##11450
step
.create 20 Elixir of Greater Defense##11450,Alchemy,215
// ----------
// 215 - 275
// ----------
// TRAIN: Artisan Alchemy
step
label "alch_215-275" 
title + Alchemy 215-275
#include "trainer_Alchemy"
.skillmax Alchemy,300 |tip You must be at least level 35.
.learn Superior Healing Potion##11457
step
#include "auctioneer"
.buy 4 Iron Bar##3575 |tip You'll have to buy these off the Auction since you can't farm them yourself.
.buy 1 Black Vitriol##9262 |tip You'll have to buy this off the Auction since you can't farm them yourself.
.buy 37 Khadgar's Whisker##3358
.buy 4 Firebloom##4625
.buy 4 Purple Lotus##8831
.buy 43 Sungrass##8838
.buy 34 Blindweed##8839
.buy 30 Gromsblood##8846
.buy 1 Recipe: Philosopher's Stone##9303 |opt |tip You can try to buy this too, but you can get it from a vendor in Gadgetzan for 80 silver included later in the guide.
#include go_farm,skill="Herbalism",req="160",goto="alch_215-275_farm"
|next "alch_215-275_skill"
// GATHER: 37 Khadgar's Whisker, 34 Blindweed, 43 Sungrass, 4 Firebloom, 4 Purple Lotus, 30 Gromsblood
step
label "alch_215-275_farm"
title + Alchemy 215-275 (farming)
#include "trainer_Herbalism"
.skillmax Herbalism,300
'Your _Herbalism_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 225 and you won't be able to farm anymore. It's better to skill up to 200 first. |only if skill("Herbalism")<200 and skillmax("Herbalism")<300

step
#include "rideto_ratchet"
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Shadebough //Feralas
step
label "farming"
map Feralas
path 73.0,42.0		74.4,35.2	70.5,37.1	
path 69.2,42.3		67.3,45.9	62.5,51.2
path 55.7,47.6
// Sinus added:
path	49.5,41.4	50.2,32.1	49.4,24.1	51.4,14.4	53.8,08.6	49.5,06.2	48.9,11.7	42.4,08.8	37.8,15.3	44.9,23.7	47.7,43.3
// Sinus ends. nodes: 18 so far.
path 53.2,48.3
path 54.8,53.6		56.0,60.1	55.2,66.6	58.6,64.7	64.4,61.5	63.8,53.6
path 67.9,51.0		69.0,60.1	71.4,60.0	72.1,57.3	77.8,56.6	77.1,48.2
path 73.3,50.2
#include follow_path_herbs
.collect 37 Khadgar's Whisker##3358
skill Herbalism,235
.collect 34 Blindweed##8839 |tip You will have to raise your Herbalism skill to 235 to get these.
#include "max_skill_warning",skill="Herbalism",goto="alch_215-275_farm"
step
label "farm2"
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Fizzle & Pozzik's Speedbarge  //Thousand Needles
step
label "farming"
map Thousand Needles
path  7.1,24.1 	 9.0,31.2	 9.3,42.2
path 16.6,44.5	22.3,48.3	26.1,53.0
path 31.0,56.3	35.5,59.1	40.3,62.1
path 44.6,63.4	49.8,63.0	58.6,63.4
path 66.0,70.9	64.3,79.4	65.1,91.9
path 77.8,94.3	84.8,91.4	89.8,85.3
path 94.5,71.8	93.9,58.0	90.8,52.2
path 86.2,49.2	75.0,47.7	72.3,49.2
path 54.8,41.3
#include follow_path_herbs
.collect 43 Sungrass##8838 //230 skill
#include "max_skill_warning",skill="Herbalism",goto="alch_215-275_farm"
step
label "farm3"
'Skipping 3rd part of farming |next "+farm4" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Gadgetzan //Tanaris
step
goto Tanaris,50.8,28.0
.talk 5594
.buy 1 Recipe: Philosopher's Stone##9303
step
label "farming"
map Tanaris
path	48.9,31.4	41.3,28.1	38.8,34.2
path +	49.0,48.9	57.4,54.1	68.1,55.3
path +	71.4,47.7	62.6,60.2	57.0,59.6
path +	53.3,58.4	31.1,50.9
#include follow_path_herbs
.collect 4 Firebloom##4625
skill Herbalism,250
#include "max_skill_warning",skill="Herbalism",goto="alch_215-275_farm"
step
label "farm4"
'Skipping 4th part of farming |next "+recipe" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Emerald Sanctuary //Felwood
step
label "farming"
map Felwood
path 50.5,80.9		47.6,75.8		45.4,71.4	44.9,66.4		42.9,58.3		43.6,52.1	
path 45.2,42.1		49.6,33.6		55.3,24.8	57.5,15.5		54.3,14.1		42.7,21.7	
path 40.0,37.5		40.0,46.5		39.6,56.9	39.1,66.2		38.9,71.3		42.7,84.7
#include follow_path_herbs
.collect 4 Purple Lotus##8831
.collect 30 Gromsblood##8846
skill Herbalism,275
#include "max_skill_warning",skill="Herbalism",goto="alch_215-275_farm"
step
label "recipe"
'Skipping purchasing |next "+exit" |only if itemcount("Recipe: Philosopher's Stone")>=1
'Proceeding to purchase |next |only if default
step
|fly Gadgetzan //Tanaris
step
goto Tanaris,50.8,28.0
.talk 5594
.buy 1 Recipe: Philosopher's Stone##9303
step
label "exit"
#include "hearth_hub"
// CREATE: 23 Superior Healing Potion, 1 Philospher's Stone, 14 Elixir of Greater Intellect, 15 Elixir of Detect Demon, 10 Superior Mana Potion
step
label "alch_215-275_skill"
title + Alchemy 215-275
'Skipping purchasing |next "+exit" |only if itemcount("Recipe: Philosopher's Stone")>=1
'Proceeding to purchase |next |only if default
step
#include "rideto_ratchet"
step
|fly Gadgetzan //Tanaris
step
goto Tanaris,50.8,28.0
.talk 5594
.buy 1 Recipe: Philosopher's Stone##9303
step
#include "hearth_hub"
step
label "exit"
#include "vendor_Alchemy"
.buy 62 Crystal Vial##3371
step
.create 23 Superior Healing Potion##11457,Alchemy,235
step
'Use the Recipe: Philosopher's Stone in your bags |use Recipe: Philosopher's Stone##9303
.learn Philosopher's Stone##11459
step
.create 1 Philosopher's Stone##11459,Alchemy,236 |tip Do not sell this. You will need this for transmutes later in the guide.
step
#include "trainer_Alchemy"
.learn Elixir of Greater Intellect##11465
step
.create 14 Elixir of Greater Intellect##11465,Alchemy,250
step
#include "trainer_Alchemy"
.learn Elixir of Detect Demon##11478
step
.create 15 Elixir of Detect Demon##11478,Alchemy,265
step
#include "trainer_Alchemy"
.learn Superior Mana Potion##17553
step
.create 10 Superior Mana Potion##17553,Alchemy,275
// ----------
// 275 - 355
// ----------
// TRAIN: Master Alchemy
step
title + Alchemy 275-355
label "alch_275-355"
#include "trainer_Alchemy"
.' Learn the Master Alchemist skill |skillmax Alchemy,375 |tip You must be at least level 50.
.learn Major Healing Potion##17556
step
#include "auctioneer"
.buy 77 Golden Sansam##13464
.buy 31 Mountain Silversage##13465
.buy 55 Felweed##22785
.buy 30 Dreaming Glory##22786
.buy 15 Terocone##22789
.buy 20 Netherbloom##22791
.buy 1 Recipe: Super Mana Potion##22907 |opt |tip You can try to buy this too, but you can get it from a vendor in Zangarmarsh for 5 gold included later in the guide.
#include go_farm,skill="Herbalism",req="260",goto="alch_275-355_farm"
|next "alch_275-355_skill"
// GATHER: 77 Golden Sansam, 31 Mountain Silversage, 30 Dreaming Glory, 55 Felweed, 15 Terocone, 20 Netherbloom
step
label "alch_275-355_farm"
title + Alchemy 275-355 (farming)
#include "trainer_Herbalism"
.skillmax Herbalism,375
'Your _Herbalism_ skill is too low to learn this; You can start farming, but your skill gains will stop at 300 and you won't be able to farm anymore. It's better to skill up to 275 first. |only if skill("Herbalism")<275 and skillmax("Herbalism")<375
step
#include "port_blastedlands"
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
'Go north to Swamp of Sorrows |goto Swamp of Sorrows |noway |c
step
label "farming"
map Swamp of Sorrows
path 17.6,52.9		21.6,54.6		30.9,60.7	
path 39.4,56.9		51.7,59.6		64.5,67.3	
path 73.3,81.9		82.0,76.0		85.3,62.6	
path 87.6,39.9		84.9,31.2		80.1,20.6	
path 66.5,22.7		56.8,31.9		47.0,36.0	
path 36.1,39.8		26.9,42.9
#include follow_path_herbs
.collect 77 Golden Sansam##13464
skill Herbalism,280
#include "max_skill_warning",skill="Herbalism",goto="alch_275-355_farm"
step
label "farm2"
#include "darkportal"
step
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Hellfire Peninsula
path	80.6,79.9	67.1,27.3	68.6,76.9
path	62.1,31.3	61.8,78.3	55.8,31.1
path	56.1,71.6	52.5,27.5	51.0,83.1
path	46.3,28.0	44.5,69.9	41.8,29.8
path	40.7,84.5	37.8,30.8	32.9,65.6
path	30.5,33.1	28.0,78.7	23.8,44.6
path	22.9,67.5	20.0,42.4	13.7,63.0
path	13.5,38.7
#include follow_path_herbs
.collect 31 Mountain Silversage##13465 |tip These can be found tucked away in the sides of mountains, so keep an eye out for them.
.collect 30 Dreaming Glory##22786 |opt
.collect 55 Felweed##22785
skill Herbalism,325
#include "max_skill_warning",skill="Herbalism",goto="alch_275-355_farm"
step
label "farm3"
'Skipping 3rd part of farming |next "+farm4" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Allerian Stronghold //Terokkar
step
label "farming"
map Terokkar Forest
path	34.9,7.7	37.1,43.2	32.7,37.0
path	30.9,47.3	16.6,66.9	17.7,77.9
path	23.1,67.5	25.6,79.2	25.4,66.5
path	30.9,80.4	49.6,83.5	56.5,58.3
path	69.3,53.7	69.1,29.8	64.2,52.2
path	63.8,29.3	59.5,51.3	58.4,27.5
path	56.2,40.8	52.1,17.8	50.5,35.2
path	43.8,14.0	41.0,41.9
#include follow_path_herbs
.collect 15 Terocone##22789
.collect 30 Dreaming Glory##22786 |opt
skill Herbalism,350
#include "max_skill_warning",skill="Herbalism",goto="alch_275-355_farm"
step
label "farm4"
'Skipping 4th part of farming |next "+recipe" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Area 52 //Netherstorm
step
label "farming"
map Netherstorm
path	31.5,51.4	25.6,63.5	19.5,67.7
path 	20.3,77.1	40.2,77.2	48.8,78.9
path 	46.2,82.6	48.0,86.9	58.9,88.8
path 	61.4,79.4	51.6,75.7	47.6,79.7
path 	46.0,72.1	34.5,55.8	34.2,50.0
path 	40.1,52.9	50.2,69.0	67.1,60.7
path 	50.8,54.8	46.5,47.1	55.0,39.9
path 	54.2,44.8	56.3,49.6	58.5,47.2
path 	62.7,50.3	73.4,40.5	71.9,38.1
path 	73.2,35.2	68.1,36.2	65.1,30.8
path 	62.1,30.5	58.7,34.8	68.8,40.8
path 	62.8,44.9	56.5,36.8	55.6,31.6
path 	49.8,35.9	48.8,25.5	57.1,24.3
path 	55.5,17.3	55.3,21.1	49.7,17.4
path 	48.9,12.5	44.9,19.8	42.5,16.2
path 	39.5,15.7	35.7,19.8	32.1,29.2
path 	38.5,42.4	31.1,38.1	23.5,35.4
path 	25.1,41.8	22.9,44.1	30.2,43.3
#include follow_path_herbs
.collect 20 Netherbloom##22791
.collect 30 Dreaming Glory##22786
#include "max_skill_warning",skill="Herbalism",goto="alch_275-355_farm"
step
label "recipe"
'Skipping purchasing |next "+exit" |only if itemcount("Recipe: Super Mana Potion")>=1
'Proceeding to purchase |next |only if default
step
|fly Telredor //Zangarmarsh
step
goto Zangarmarsh,67.8,48.0
.talk 18005
.buy 1 Recipe: Super Mana Potion##22907
step
label "exit"
#include "hearth_hub"
// CREATE: 31 Major Healing Potion, 15 Volatile Healing Potion, 15 Elixir of Mastery, 10 Super Healing Potion, 15 Super Mana Potion
step
label "alch_275-355_skill"
title + Alchemy 275-355
'Skipping purchasing |next "+exit" |only if itemcount("Recipe: Super Mana Potion")>=1
'Proceeding to purchase |next |only if default
step
#include "port_blastedlands"
step
#include "darkportal"
step
|fly Telredor //Zangarmarsh
step
goto Zangarmarsh,67.8,48.0
.talk 18005
.buy 1 Recipe: Super Mana Potion##22907
step
#include "hearth_hub"
step
label "exit"
#include "vendor_Alchemy"
.buy 86 Crystal Vial##3371
step
.create 31 Major Healing Potion##17556,Alchemy,300
step
#include "trainer_Alchemy"
.learn Volatile Healing Potion##33732
step
.create 15 Volatile Healing Potion##33732,Alchemy,315
step
#include "trainer_Alchemy"
.learn Elixir of Mastery##33741
step
.create 15 Elixir of Mastery##33741,Alchemy,330
step
#include "trainer_Alchemy"
.learn Super Healing Potion##28551
step
.create 10 Super Healing Potion##28551,Alchemy,340
step
'Click the Recipe: Super Mana Potion recipe in your bags |use Recipe: Super Mana Potion##22907
.learn Super Mana Potion##28555
step
.create 15 Super Mana Potion##28555,Alchemy,355
// ----------
// 355 - 425
// ----------
// TRAIN: Grand Master Alchemy
step
label "alch_355-425"
title + Alchemy 355-425
#include "trainer_Alchemy"
.' Learn the Grand Master Alchemist skill |skillmax Alchemy,450 |tip You must be at least level 65.
.learn Wrath Elixir##53841
step
#include "auctioneer"
.buy 66 Goldclover##36901
.buy 40 Deadnettle##37921 
.buy 20 Tiger Lily##36904
.buy 10 Talandra's Rose##36907
.buy 32 Lichbloom##36905
.buy 40 Icethorn##36906
#include go_farm,skill="Herbalism",req="350",goto="alch_355-425_farm"
|next "alch_355-425_skill"
// GATHER: 96 Goldclover, 40 Deadnettle, 10 Talandra's Rose, 20 Tiger Lily, 40 Icethorn, 102 Lichbloom
step
label "alch_355-425_farm"
title + Alchemy 355-425 (farming)
#include "trainer_Herbalism"
.skillmax Herbalism,450
// starting at 350, no need to scrounge.
step
#include "rideto_howlingfjord"
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Howling Fjord
path	70.1,47.3	72.5,47.2	75.5,50.8
path	79.2,49.7	80.5,46.2	76.3,42.8
path	74.1,44.8	70.3,40.5	70.3,35.5
path	66.5,33.5	70.5,32.4	71.0,28.3
path	73.6,26.7	72.3,18.5	69.4,27.7
path	69.8,19.2	65.8,26.8	61.8,28.5
path	58.5,22.7	50.2,16.6	48.7,21.2
path	26.5,7.9	29.2,12.0	25.2,11.8
path	23.8,14.0	26.8,14.5	28.6,18.0
path	27.2,20.8	29.0,22.2	27.1,29.6
path	31.3,33.3	34.8,34.1	41.7,34.2
path	42.1,27.7	46.3,31.5	47.1,29.0
path	54.1,32.5	49.0,35.8	58.1,37.0
path	60.0,39.2	58.3,40.1	43.3,44.1
path	40.9,40.2	37.0,39.9	37.0,44.9
path	34.9,46.2	46.4,54.3
path	45.9,50.2	51.1,48.3	59.5,51.6
path	59.0,55.6	57.2,55.9	45.1,59.4
path	52.5,60.5	48.7,62.7	56.9,67.1
path	46.8,71.6	52.8,71.5	53.4,76.5
path	60.0,76.8	62.6,80.5	64.8,67.6
path	67.9,59.7	65.8,72.5	67.1,74.9
path	69.5,74.5	70.6,66.1	76.4,67.9
#include follow_path_herbs
.collect 96 Goldclover##36901
.collect 40 Deadnettle##37921
.collect 20 Tiger Lily##36904 |opt
.' Save any Frost Lotus you might find.
skill Herbalism,385
#include "max_skill_warning",skill="Herbalism",goto="alch_355-425_farm"
step
label "farm2"
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Ebon Watch
step
label "farming"
map Zul'Drak
path	20.3,85.1	24.1,81.5	22.0,78.1
path	26.7,75.7	25.8,84.2	29.8,81.4
path	31.6,87.2	35.1,88.7	38.4,88.0
path	39.3,86.2	35.2,69.4	38.6,73.0
path	40.2,69.8	44.3,74.9	45.0,82.0
path	52.3,83.3	54.2,80.8	58.2,81.5
path	56.1,76.2	58.2,73.5	56.7,71.3
path	51.9,76.4	50.7,62.4	49.5,64.7
path	48.9,61.6	44.4,65.0	42.7,61.2
path	42.6,50.5	44.6,51.0	44.3,43.0
path	42.0,46.6	39.8,46.5	41.0,41.7
path	41.0,41.7	37.1,40.8	37.0,43.2
path	29.8,41.5	34.4,45.3	33.4,48.1
path	35.5,50.8	37.2,58.6	39.2,58.6
path	39.3,63.7	35.3,63.5	33.3,65.5
path	29.4,64.3	32.6,73.5	28.7,68.8
path	30.3,73.6
#include follow_path_herbs
.collect 10 Talandra's Rose##36907
.'Save any Frost Lotus you might find.
#include "max_skill_warning",skill="Herbalism",goto="alch_355-425_farm"
step
label "farm3"
'Skipping 3rd part of farming |next "+farm4" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly River's Heart
step
label "farming"
map Sholazar Basin
path	68.7,66.6	69.4,68.5	71.0,70.3
path	69.1,73.6	68.1,70.1	65.3,70.5
path	67.1,75.2	65.3,75.6	61.5,71.2
path	65.1,79.5	62.9,83.5	59.2,72.5
path	57.5,83.3	60.1,85.3	51.6,86.5
path	43.6,75.3	47.9,73.9	50.5,62.6
path	47.9,60.1	46.2,63.1	46.9,65.5
path	43.1,62.3	41.3,67.5	37.9,63.6
path	37.7,66.2	29.8,66.8	31.9,70.1
path	31.1,71.1	43.7,71.0	40.1,76.5
path	43.3,77.4	42.5,83.0	41.0,83.9
path	41.9,86.5	40.8,87.8	37.5,83.3
path	35.2,87.1	35.2,83.4	28.8,84.8
path	28.5,79.5	30.5,75.7	28.5,75.5
path	26.6,77.6	21.6,63.7	22.4,60.3
path	32.7,64.5	32.4,60.4	29.1,61.7
path	32.7,64.5	32.4,60.4	29.1,61.7
path	32.7,64.5	32.4,60.4	29.1,61.7
path	25.3,59.0	21.5,56.3	25.7,55.9
path	32.0,41.7	31.2,55.2	28.7,53.5
path	28.5,60.1	35.2,60.7	35.5,58.7
path	38.2,60.2	38.6,55.5	41.6,56.2
path	41.2,58.8	43.5,59.5	49.5,52.3
path	47.6,49.6	44.6,49.1	46.8,52.1
path	45.5,51.6	39.6,35.8	33.9,31.6
path	38.5,29.6	33.8,24.4	35.4,20.9
path	40.6,26.0	39.9,21.1	43.9,23.5
path	56.5,31.5	62.7,33.9	57.6,41.3
path	59.3,42.1	59.6,45.1	57.7,47.2
path	53.5,44.0	50.5,54.2	52.3,56.8
path	56.6,54.5	55.6,49.9	64.2,46.4
path	63.9,48.9
#include follow_path_herbs
.collect 20 Tiger Lily##36904
.'Save any Frost Lotus you might find.
skill Herbalism,425
#include "max_skill_warning",skill="Herbalism",goto="alch_355-425_farm"
step
label "farm4"
'Skipping 4th part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly K3
step
label "farming"
map The Storm Peaks
path	36.8,86.1	40.3,87.9	37.7,94.3
path	36.6,89.0	32.9,93.8	32.5,86.9
path	31.4,83.1	40.0,82.3	38.4,80.8
path	39.4,79.2	43.5,78.0	42.6,75.6
path	45.4,77.1	45.6,79.1	46.6,78.9
path	47.0,77.2	49.0,78.4	48.5,73.3
path	51.4,75.6	52.2,69.5	58.3,72.0
path	54.3,66.2	58.6,58.3	56.8,66.0
path	60.1,61.5	62.9,62.7	63.0,59.6
path	61.8,58.3	64.2,49.5	64.1,54.1
path	65.0,58.8	66.9,58.5	65.6,63.6
path	72.5,65.0	71.8,56.0	74.0,49.9
path	70.9,47.1	72.8,53.1	70.0,49.9
path	70.9,53.0	68.8,54.7	68.6,47.7
path	66.4,48.7	65.6,40.6	63.1,41.7
path	61.8,44.9	57.4,40.9	59.9,45.0
path	60.9,49.5	56.7,48.5	56.3,52.3
path	51.1,48.1	50.9,51.9	52.5,53.2
path	52.0,59.0	50.2,61.5	50.1,58.6
path	48.6,60.9	47.5,54.4	47.7,63.6
path	46.6,56.7	42.8,53.0	42.0,54.1
path	44.0,59.3	43.6,62.0	42.0,60.3
path	40.3,64.5	39.2,61.9	36.8,64.3
path	39.0,52.7	38.8,48.4	47.7,36.0
path	34.0,38.9	37.2,43.7	34.5,42.2
path	33.5,44.9	35.7,47.1	32.1,50.5
path	29.4,50.5	29.4,50.5	29.2,37.4
path	22.2,36.7	22.3,41.1	25.6,41.6
path	24.3,47.1	28.6,53.1	26.8,55.8
path	21.6,55.7	22.6,62.8	24.5,62.0
path	27.3,58.4	27.8,59.9	25.8,67.2
path	27.2,67.1	27.2,69.7	24.6,72.5
path	26.6,73.1	28.4,70.8	29.4,64.3
path	30.7,64.5	29.9,70.9	31.2,70.6
path	32.8,74.5	35.3,73.5	32.8,66.9
path	33.5,65.5	37.0,67.7	36.3,72.7
path	38.2,76.9	38.9,75.1	40.4,77.6
#include follow_path_herbs
.collect 40 Icethorn##36906
.collect 102 Lichbloom##36905
.'Save any Frost Lotus you might find.
#include "max_skill_warning",skill="Herbalism",goto="alch_355-425_farm"
step
label "exit"
#include "hearth_hub"
// CREATE: 10 Wrath Elixir, 10 Spellpower Elixir, 5 Lesser Flask of Toughness, 5 Potion of Nightmares, 5 Elixir of Mighty Strength, 5 Elixir of Mighty Fortitude, 20 Indestructible Potion, 16 Runic Mana Potion
step
label "alch_355-425_skill"
title + Alchemy 355-425
#include "vendor_Alchemy"
.buy 76 Crystal Vial##3371
step
.create 10 Wrath Elixir##53841,Alchemy,365
step
#include "trainer_Alchemy"
.learn Spellpower Elixir##53842
step
.create 10 Spellpower Elixir##53842,Alchemy,375
step
#include "trainer_Alchemy"
.learn Lesser Flask of Toughness##53899
step
.create 5 Lesser Flask of Toughness##53899,Alchemy,380
step
#include "trainer_Alchemy"
.learn Potion of Nightmares##53900
step
.create 5 Potion of Nightmares##53900,Alchemy,385
step
#include "trainer_Alchemy"
.learn Elixir of Mighty Strength##54218
step
.create 5 Elixir of Mighty Strength##54218,Alchemy,390
step
#include "trainer_Alchemy"
.learn Elixir of Mighty Fortitude##53898
step
.create 5 Elixir of Mighty Fortitude##53898,Alchemy,395
step
#include "trainer_Alchemy"
.learn Indestructible Potion##53905
step
.create 20 Indestructible Potion##53905,Alchemy,415
step
#include "trainer_Alchemy"
.learn Runic Mana Potion##53837
step
.create 16 Runic Mana Potion##53837,Alchemy,425
// ----------
// 425 - 525
// ----------
// TRAIN: Illustrious Grand Master Alchemy
step
title + Alchemy 425-525
label "alch_425-525"
#include "trainer_Alchemy"
.' Learn the Illustrious Grand Master Alchemist skill |skillmax Alchemy,525 |tip You must be at least level 75.
.learn Draught of War##93935
step
#include "auctioneer"
.buy 30 Goldclover##36901
.buy 70 Lichbloom##36905
.buy 87 Cinderbloom##52983
.buy 47 Stormvine##52984
.buy 18 Azshara's Veil##52985
.buy 20 Azshara's Veil##52985 |only Warrior, DeathKnight, Paladin, Shaman, Warlock, Mage, Priest, Druid
.buy 44 Heartblossom##52986
.buy 20 Whiptail##52988
.buy 25 Twilight Jasmine##52987
.buy 50 Volatile Life##52329
.buy 10 Frost Lotus##36908 |tip This herb is rare, it might take you quite a bit to farm it.
'You'll have to buy these off the Auction since you can't farm them yourself:
.buy 27 Jasper##52182
.buy 15 Hessonite##52181
.buy 15 Nightstone##52180
.buy 15 Alicite##52179
#include go_farm,skill="Herbalism",req="425",goto="alch_425-525_farm"
|next "alch_425-525_skill"
// GATHER: 30 Goldclover, 70 Lichbloom, 10 Frost Lotus, 87 Cinderbloom, 47 Stormvine, 50 Volatile Life, 38 Azshara's Veil, 44 Heartblossom, 20 Whiptail, 25 Twilight Jasmine
step
title + Alchemy 425-525 (farming)
label "alch_425-525_farm"
#include "trainer_Herbalism"
.skillmax Herbalism,525
step
'When farming any herbs in this guide section, make sure to save any Volatile Life that you find, as you'll need it later.
|confirm
step
#include "rideto_howlingfjord" |only if itemcount("Goldclover")<30 or itemcount("Lichbloom")<70 or itemcount("Frost Lotus")<10
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Howling Fjord
path	70.1,47.3	72.5,47.2	75.5,50.8
path	79.2,49.7	80.5,46.2	76.3,42.8
path	74.1,44.8	70.3,40.5	70.3,35.5
path	66.5,33.5	70.5,32.4	71.0,28.3
path	73.6,26.7	72.3,18.5	69.4,27.7
path	69.8,19.2	65.8,26.8	61.8,28.5
path	58.5,22.7	50.2,16.6	48.7,21.2
path	26.5,7.9	29.2,12.0	25.2,11.8
path	23.8,14.0	26.8,14.5	28.6,18.0
path	27.2,20.8	29.0,22.2	27.1,29.6
path	31.3,33.3	34.8,34.1	41.7,34.2
path	42.1,27.7	46.3,31.5	47.1,29.0
path	54.1,32.5	49.0,35.8	58.1,37.0
path	60.0,39.2	58.3,40.1	43.3,44.1
path	40.9,40.2	37.0,39.9	37.0,44.9
path	34.9,46.2	46.4,54.3
path	45.9,50.2	51.1,48.3	59.5,51.6
path	59.0,55.6	57.2,55.9	45.1,59.4
path	52.5,60.5	48.7,62.7	56.9,67.1
path	46.8,71.6	52.8,71.5	53.4,76.5
path	60.0,76.8	62.6,80.5	64.8,67.6
path	67.9,59.7	65.8,72.5	67.1,74.9
path	69.5,74.5	70.6,66.1	76.4,67.9
#include follow_path_herbs
.collect 30 Goldclover##36901
.'Save any Frost Lotus you might find.
#include "max_skill_warning",skill="Herbalism",goto="alch_425-525_farm"
step
#include "hearth_hub" |only if itemcount("Lichbloom")>=70 and itemcount("Frost Lotus")>=10
step
label "farm2"
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly K3
step
label "farming"
map The Storm Peaks
path	36.8,86.1	40.3,87.9	37.7,94.3
path	36.6,89.0	32.9,93.8	32.5,86.9
path	31.4,83.1	40.0,82.3	38.4,80.8
path	39.4,79.2	43.5,78.0	42.6,75.6
path	45.4,77.1	45.6,79.1	46.6,78.9
path	47.0,77.2	49.0,78.4	48.5,73.3
path	51.4,75.6	52.2,69.5	58.3,72.0
path	54.3,66.2	58.6,58.3	56.8,66.0
path	60.1,61.5	62.9,62.7	63.0,59.6
path	61.8,58.3	64.2,49.5	64.1,54.1
path	65.0,58.8	66.9,58.5	65.6,63.6
path	72.5,65.0	71.8,56.0	74.0,49.9
path	70.9,47.1	72.8,53.1	70.0,49.9
path	70.9,53.0	68.8,54.7	68.6,47.7
path	66.4,48.7	65.6,40.6	63.1,41.7
path	61.8,44.9	57.4,40.9	59.9,45.0
path	60.9,49.5	56.7,48.5	56.3,52.3
path	51.1,48.1	50.9,51.9	52.5,53.2
path	52.0,59.0	50.2,61.5	50.1,58.6
path	48.6,60.9	47.5,54.4	47.7,63.6
path	46.6,56.7	42.8,53.0	42.0,54.1
path	44.0,59.3	43.6,62.0	42.0,60.3
path	40.3,64.5	39.2,61.9	36.8,64.3
path	39.0,52.7	38.8,48.4	47.7,36.0
path	34.0,38.9	37.2,43.7	34.5,42.2
path	33.5,44.9	35.7,47.1	32.1,50.5
path	29.4,50.5	29.4,50.5	29.2,37.4
path	22.2,36.7	22.3,41.1	25.6,41.6
path	24.3,47.1	28.6,53.1	26.8,55.8
path	21.6,55.7	22.6,62.8	24.5,62.0
path	27.3,58.4	27.8,59.9	25.8,67.2
path	27.2,67.1	27.2,69.7	24.6,72.5
path	26.6,73.1	28.4,70.8	29.4,64.3
path	30.7,64.5	29.9,70.9	31.2,70.6
path	32.8,74.5	35.3,73.5	32.8,66.9
path	33.5,65.5	37.0,67.7	36.3,72.7
path	38.2,76.9	38.9,75.1	40.4,77.6
#include follow_path_herbs
.collect 70 Lichbloom##36905
.'Save any Frost Lotus you might find.
#include "max_skill_warning",skill="Herbalism",goto="alch_425-525_farm"
step
#include "hearth_hub" |only if itemcount("Frost Lotus")>=10
step
label "farm3"
'Skipping 3rd part of farming |next "+farm4" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Fordragon Hold
step
.' Go west to Wintergrasp |goto Wintergrasp |noway |c
step
label "farming"
map Wintergrasp
path	45.3,69.0	30.4,67.2
.collect 10 Frost Lotus##36908 |tip This is a rather rare herb that spawns mostly at the bottom of the map but can be found with most other Northrend herbs.
step
#include "hearth_hub"
step
label "farm4"
'Skipping 4th part of farming |next "+farm5" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "port_hyjal"
step
label "farming"
map Mount Hyjal
path	68.2,23.9	59.2,31.6	57.0,38.9
path	57.9,17.5	51.5,16.9	52.6,35.5
path	48.7,36.5	44.0,24.5	39.8,32.5
path	36.5,21.7	32.3,25.2	34.6,36.9
path	43.5,42.6	36.2,44.9	25.3,37.8	29.0,33.0
path	24.1,31.9	11.8,31.6	14.3,47.0
path	19.0,58.5	25.6,62.0	31.9,46.7
path	33.1,65.2	36.9,53.5	42.3,55.9
path	33.8,65.0	31.3,76.5	33.8,98.2
path	57.1,80.9	59.2,84.5	59.8,77.8
path	55.8,74.7	59.8,71.6	49.1,51.6
path	61.9,60.5	67.1,53.5	74.3,58.8
path	71.9,68.5	77.3,63.2	83.0,64.2
path	89.9,49.8	80.9,51.8	77.5,59.5
#include "follow_path_herbs"
.collect 87 Cinderbloom##52983
.collect 47 Stormvine##52984 |opt
.collect 38 Azshara's Veil##52985 |opt
.collect 50 Volatile Life##52329 |opt |tip You will get this while collecting herbs.
#include "max_skill_warning",skill="Herbalism",goto="alch_425-525_farm"
step
#include "hearth_hub"
step
label "farm5"
'Skipping 5th part of farming |next "+farm6" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "port_vashjir"
step
label "farming"
map Shimmering Expanse
path	37.7,67.1	49.6,59.1	53.2,43.0
path	41.7,37.3	42.2,31.7	52.5,42.5
path	58.5,69.6	51.6,65.0	48.9,62.8
path	42.2,55.2	48.2,81.4	57.8,83.2
path	59.2,83.9
#include "follow_path_herbs"
.collect 38 Azshara's Veil##52985
.collect 47 Stormvine##52984
.collect 50 Volatile Life##52329 |opt |tip You will get this while collecting herbs.
skill Herbalism,475
#include "max_skill_warning",skill="Herbalism",goto="alch_425-525_farm"
step
#include "hearth_hub"
step
label "farm6"
'Skipping 6th part of farming |next "+farm7" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "port_deepholm"
step
label "farming"
map Deepholm
path	69.4,56.0	70.0,60.7	72.9,58.2
path 	74.7,61.1	75.8,67.5	70.9,62.9
path 	71.1,70.6	66.0,68.5	26.8,41.5
path 	26.5,35.6	23.1,35.3	25.9,31.9
path 	27.5,32.3	27.8,27.0	31.2,32.0
path 	28.9,35.6	26.8,41.5
#include "follow_path_herbs"
.collect 44 Heartblossom##52986
.collect 50 Volatile Life##52329 |opt |tip You will get this while collecting herbs.
skill Herbalism,500
#include "max_skill_warning",skill="Herbalism",goto="alch_425-525_farm"
step
#include "hearth_hub"
step
label "farm7"
'Skipping 7th part of farming |next "+farm8" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "port_uldum"
step
label "farming"
map Uldum
path	58.4,31.3	56.2,22.6	57.8,14.5
path 	61.5,14.0	57.1,44.7	60.5,58.3
path 	69.8,76.5	65.9,75.9	60.0,83.2
path 	59.0,58.8	55.3,45.8	52.0,45.6
path 	50.8,42.5	50.8,36.0	50.8,36.0
#include "follow_path_herbs"
.collect 20 Whiptail##52988 //500
.collect 50 Volatile Life##52329 |opt |tip You will get this while collecting herbs.
skill Herbalism,525
#include "max_skill_warning",skill="Herbalism",goto="alch_425-525_farm"
step
#include "hearth_hub"
step
label "farm8"
'Skipping 8th part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "port_twilight"
step
label "farming"
map Twilight Highlands
path	71.7,48.9	68.1,41.8	61.9,36.0
path 	53.9,32.0	47.3,40.3	45.6,45.2
path 	45.3,36.1	41.3,52.0	48.7,54.5
path 	51.5,45.6	58.2,48.0	59.1,40.1
path 	70.9,64.8	73.5,64.0	73.7,72.2
path	69.8,64.7	63.1,60.8	59.5,63.6
path 	55.3,50.4	57.0,77.5	53.0,79.8
path 	49.0,70.0	44.2,70.6	47.9,63.4
path 	33.6,49.9	37.1,48.4	44.3,33.9
path 	46.3,23.2	57.5,27.2	9.1,38.2
path	46.3,23.2	57.5,27.2	69.1,38.2
path 	72.9,47.2
#include "follow_path_herbs"
.collect 25 Twilight Jasmine##52987 //525
.collect 50 Volatile Life##52329 |tip You will get this while collecting herbs.
#include "max_skill_warning",skill="Herbalism",goto="alch_425-525_farm"
step
label "exit"
#include "hearth_hub"
// CREATE: 15 Draught of War, 10 Flask of Endless Rage, 5 Ghost Elixir, 5 Deathblood Venom, 5 Volcanic Potion, 13 Elixir of the Cobra, 5 Elixir of Deep Earth, 5 Elixir of Impossible Accuracy, 5 Potion of the Tol'vi, 5 Elixirs of Mighty Speed, 5 Elixir of the Master, 1 Lifebound Alchemist Stone, 9 Transmute: Dream Emerald, 5 Transmute: Ember Topaz, 5 Transmute: Demonseye, 5 Transmute: Amberjewel
step
label "alch_425-525_skill"
title + Alchemy 425-525
#include "vendor_Alchemy"
.buy 78 Crystal Vial##3371
step
.create 15 Draught of War##93935,Alchemy,440
step
#include "trainer_Alchemy"
.learn Flask of Endless Rage##53903
step
.create 10 Flask of Endless Rage##53903,Alchemy,450
step
#include "trainer_Alchemy"
.learn Ghost Elixir##80478
step
.create 5 Ghost Elixir##80477,Alchemy,455
step
#include "trainer_Alchemy"
.learn Deathblood Venom##80479
step
.create 5 Deathblood Venom##80479,Alchemy,460
step
#include "trainer_Alchemy"
.learn Volcanic Potion##80481
step
.create 5 Volcanic Potion##80481,Alchemy,465
step
#include "trainer_Alchemy"
.learn Elixir of the Cobra##80484
step
.create 13 Elixir of the Cobra##80484,Alchemy,475
step
#include "trainer_Alchemy"
.learn Elixir of Deep Earth##80488
step
.create 5 Elixir of Deep Earth##80488,Alchemy,480
step
#include "trainer_Alchemy"
.learn Elixir of Impossible Accuracy##80491
step
.create 5 Elixir of Impossible Accuracy##80491,Alchemy,485
step
#include "trainer_Alchemy"
.learn Potion of the Tol'vir##80495
step
.create 5 Potion of the Tol'vir##80495,Alchemy,490
step
#include "trainer_Alchemy"
.learn Elixir of Mighty Speed##80493
step
.create 5 Elixir of Mighty Speed##80493,Alchemy,495
step
#include "trainer_Alchemy"
.learn Elixir of the Master##80497
step
.create 5 Elixir of the Master##80497,Alchemy,500
step
#include "trainer_Alchemy"
'Learn one of the following:
.learn Volatile Alchemist Stone##68775 |only Warrior, DeathKnight, Paladin |or
.learn Quicksilver Alchemist Stone##68776 |only Rogue, Hunter, Shaman |or
.learn Vibrant Alchemist Stone##68777 |only Shaman ,Warlock, Mage, Priest, Druid |or
.learn Lifebound Alchemist Stone##80508 |only Warrior, DeathKnight, Paladin |or
step
'Create one of the following:
.create 1 Volatile Alchemist Stone##68775,Alchemy,505 |only Warrior, DeathKnight, Paladin |or
.create 1 Quicksilver Alchemist Stone##68776,Alchemy,505 |only Rogue, Hunter, Shaman |or
.create 1 Vibrant Alchemist Stone##68777,Alchemy,505 |only Shaman, Warlock, Mage, Priest, Druid |or
.create 1 Lifebound Alchemist Stone##80508,Alchemy,505 |only Warrior, DeathKnight, Paladin |or
step
'Equip whichever stone you just made |tip This trinket will allow you to transmute things as an Alchemist.
|confirm
step
#include "trainer_Alchemy"
.learn Transmute: Dream Emerald##80251
step
.create 9 Transmute: Dream Emerald##80251,Alchemy,510
step
#include "trainer_Alchemy"
.learn Transmute: Ember Topaz##80250
step
.create 5 Transmute: Ember Topaz##80250,Alchemy,515
step
#include "trainer_Alchemy"
.learn Transmute: Demonseye##80248
step
.create 5 Demonseye##80248,Alchemy,520
step
#include "trainer_Alchemy"
.learn Transmute: Amberjewel##80247
step
.create 5 Amberjewel##80247,Alchemy,525
step
label "alch_525"
'Congratulations, you are now a level 525 Alchemist!
]])

ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Professions Guides\\Archaeology\\Archaeology 1-525 Leveling Guide",[[
description This guide will walk you through leveling your Archaeology skill from 1-525.
author support@zygorguides.com
completion skill,Archaeology,525
#include "profession_secondary_start",prof1="Archaeology"
// routing to the proper section.
step
'Redirecting to Archaeology 1-50 |next "arc_1-50" |only if skill("Archaeology")<50
'Redirecting to Archaeology 50-150 |next "arc_50-150" |only if skill("Archaeology")>=50 and skill("Archaeology")<150
'Redirecting to Archaeology 150-200 |next "arc_150-200" |only if skill("Archaeology")>=150 and skill("Archaeology")<200
'Redirecting to Archaeology 200-300 |next "arc_200-300" |only if skill("Archaeology")>=200 and skill("Archaeology")<300
'Redirecting to Archaeology 300-375 |next "arc_300-375" |only if skill("Archaeology")>=300 and skill("Archaeology")<375
'Redirecting to Archaeology 375-450 |next "arc_375-450" |only if skill("Archaeology")>=375 and skill("Archaeology")<450
'Redirecting to Archaeology 450-525 |next "arc_450-525" |only if skill("Archaeology")>=450 and skill("Archaeology")<525
'Redirecting to Archaeology finale |next "arc_525" |only if default
// ----------
// 1 - 50
// ----------
// TRAIN: Apprentice Archaeology
step
label "arc_1-50"
title + Archaeology 1-50
#include "trainer_Archaeology"
|skillmax Archaeology,75 |tip You must be at least level 20. 
|only if skill("Archaeology")<1
step
#include "home_TradeDistrict"
step
'Open your world map, find dig sites in Kalimdor and Eastern Kingdoms, and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 3 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.skill Archaeology,50
step
#include "hearth_hub"
// ----------
// 50 - 150
// ----------
// TRAIN: Journeyman Archaeology
step
title + Archaeology 50-150
label "arc_50-150"
#include "trainer_Archaeology"
.' Learn the Journeyman Archaeology skill |skillmax Archaeology,150 |tip You must be at least level 20.
step
'Open your world map, find dig sites in Kalimdor and Eastern Kingdoms, and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 3 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.skill Archaeology,100
step
'Open your world map, find dig sites in Kalimdor and Eastern Kingdoms, and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 3 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' Open your Archaeology profession window |cast Archaeology##78670
.' Click artifacts to open them, then solve them once you have the required amounts of each
.skill Archaeology,150
step
#include "hearth_hub"
// ----------
// 150 - 200
// ----------
// TRAIN: Expert Archaeology
step
title + Archaeology 150-200
label "arc_150-200"
#include "trainer_Archaeology"
.' Learn the Expert Archaeology skill |skillmax Archaeology,225 |tip You must be at least level 20.
step
'Open your world map, find dig sites in Kalimdor and Eastern Kingdoms, and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 3 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' Open your Archaeology profession window |cast Archaeology##78670
.' Click artifacts to open them, then solve them once you have the required amounts of each
.skill Archaeology,200
step
#include "hearth_hub"
// ----------
// 200 - 300
// ----------
// TRAIN: Artisan Archaeology
step
title + Archaeology 200-300
label "arc_200-300"
#include "trainer_Archaeology"
.' Learn the Artisan Archaeology skill |skillmax Archaeology,300 |tip You must be at least level 35.
step
'Open your world map, find dig sites in Kalimdor and Eastern Kingdoms, and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 3 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' Open your Archaeology profession window |cast Archaeology##78670
.' Click artifacts to open them, then solve them once you have the required amounts of each
.skill Archaeology,300
step
#include "hearth_hub"
// ----------
// 300 - 375
// ----------
// TRAIN: Master Archaeology
step
title + Archaeology 300-375
label "arc_300-375"
#include "trainer_Archaeology"
.' Learn the Master Archaeology skill |skillmax Archaeology,375 |tip You must be at least level 50.
step
'Open your world map, find dig sites in Outland, and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 3 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' Open your Archaeology profession window |cast Archaeology##78670
.' Click artifacts to open them, then solve them once you have the required amounts of each
.skill Archaeology,375
// ----------
// 375 - 450
// ----------
// TRAIN: Grand Master Archaeology
step
title + Archaeology 375-450
label "arc_375-450"
#include "trainer_Archaeology"
.' Learn the Grand Master Archaeology skill |skillmax Archaeology,450 |tip You must be at least level 65.
step
'Open your world map, find dig sites in Northrend, and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 3 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' Open your Archaeology profession window |cast Archaeology##78670
.' Click artifacts to open them, then solve them once you have the required amounts of each
.skill Archaeology,450
// ----------
// 450 - 525
// ----------
// TRAIN: Illustrious Grand Master Archaeology
step
title + Archaeology 450-525
label "arc_450-525"
#include "trainer_Archaeology"
.' Learn the Illustrious Grand Master Archaeology skill |skillmax Archaeology,525 |tip You must be at least level 75.
step
'Open your world map, find dig sites in Mount Hyjal, Uldum, and Twilight Highlands, then go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 3 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' Open your Archaeology profession window |cast Archaeology##78670
.' Click artifacts to open them, then solve them once you have the required amounts of each
.skill Archaeology,525
step
title + Archaeology 525
label "arc_525"
'Congratulations, you are now a level 525 Archaeologist.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Professions Guides\\Blacksmithing\\Blacksmithing 1-525 Leveling Guide",[[
description This guide will walk you through leveling your Blacksmithing skill from 1-525.
author support@zygorguides.com
completion skill,Blacksmithing,525
#include profession_dual_start,prof1="Blacksmithing",prof2="Mining"
// routing to the proper section.
step
label "route"
'Redirecting to Blacksmithing 1-75 |next "bla_1-75" |only if skill("Blacksmithing")<75
'Redirecting to Blacksmithing 75-125 |next "bla_75-125" |only if skill("Blacksmithing")>=75 and skill("Blacksmithing")<125
'Redirecting to Blacksmithing 125-210 |next "bla_125-210" |only if skill("Blacksmithing")>=125 and skill("Blacksmithing")<210
'Redirecting to Blacksmithing 210-300 |next "bla_210-300" |only if skill("Blacksmithing")>=210 and skill("Blacksmithing")<300
'Redirecting to Blacksmithing 300-325 |next "bla_300-325" |only if skill("Blacksmithing")>=300 and skill("Blacksmithing")<325
'Redirecting to Blacksmithing 325-350 |next "bla_325-350" |only if skill("Blacksmithing")>=325 and skill("Blacksmithing")<350
'Redirecting to Blacksmithing 350-425 |next "bla_350-425" |only if skill("Blacksmithing")>=350 and skill("Blacksmithing")<425
'Redirecting to Blacksmithing 425-475 |next "bla_425-475" |only if skill("Blacksmithing")>=425 and skill("Blacksmithing")<475
'Redirecting to Blacksmithing 475-525 |next "bla_475-525" |only if skill("Blacksmithing")>=475 and skill("Blacksmithing")<525
'Redirecting to Blacksmithing finale |next "bla_525" |only if default
// ----------
// 1 - 75
// ----------
// TRAIN: Apprentice Blacksmithing
step
title + Blacksmithing 1-75
label "bla_1-75"
#include "trainer_Blacksmithing"
.skillmax Blacksmithing,75 
step
#include "vendor_Blacksmithing"
.buy 1 Blacksmith Hammer##5956
step  
#include "home_DwarvenDistrict"
step
#include "auctioneer_dwarven"
.buy 95 Rough Stone##2835
.buy 150 Copper Bar##2840
#include go_farm,skill="Mining",req="1",goto="bla_1-75_farm"
next "bla_1-75_skill"
// GATHER:  90 Rough Stone, 393 Copper Ore, 385 Copper Bar
step
label "bla_1-75_farm"
#include "vendor_Blacksmithing"
.buy 1 Mining Pick##2901
step
'Go outside to Elwynn Forest |goto Elwynn Forest |noway |c
step
map Elwynn Forest
path follow loose;loop;ants straight  // this stays set until the end of the guide.
path 32.8,50.5	30.2,58.2	28.3,64.8
path 25.6,70.3	21.4,74.5	23.1,82.5
path 31.5,78.1	37.5,71.4	38.2,82.5
path 49.7,84.8	57.3,80.8
path 61.7,75.2	67.3,72.2	70.2,66.1
path 73.7,56.0	73.8,48.2	80.5,54.8
path 80.0,46.1	77.5,38.1	71.4,38.5
path 64.7,37.9	63.3,46.2	62.0,53.0
path 55.1,56.0	49.9,60.4	46.2,53.9
path 43.2,48.7	37.2,51.9
#include "follow_path_mine"
.collect 95 Rough Stone##2835
.collect 385 Copper Ore##2770
.skill Mining,50
#include "max_skill_warning",skill="Mining",goto="bla_1-75_farm"
step
#include "hearth_dwarven"
step
#include "maincity_anvil"
.create Copper Bar##2657,Mining,385 total |n
.collect 385 Copper Bar##2840
// CREATE:  25 Rough Sharpening Stone, 25 Rough Grinding Stone, 25 Copper Chain Belt
step
label "bla_1-75_skill"
#include "maincity_anvil"
.create 35 Rough Sharpening Stone##2660,Blacksmithing,25
step
#include "trainer_Blacksmithing"
.learn Rough Grinding Stone##3320
step
#include "maincity_anvil"
.create 30 Rough Grinding Stone##3320,Blacksmithing,50 |tip Save 10 Rough Grinding Stones, you will need them later.
step
#include "trainer_Blacksmithing"
.learn Copper Chain Belt##2661
step
#include "maincity_anvil"
.create 25 Copper Chain Belt##2661,Blacksmithing,75
// ----------
// 75 - 125
// ----------
// TRAIN: Journeyman Blacksmithing
step
title + Blacksmithing 75-125
label "bla_75-125"
#include "trainer_Blacksmithing"
.skillmax Blacksmithing,150 
step
#include "auctioneer_dwarven"
.buy 60 Coarse Stone##2836
.buy 150 Copper Bar##2840
.buy 120 Bronze Bar##2841
.buy 5 Silver Bar##2842
#include go_farm,skill="Mining",req="65",goto="bla_75-125_farm"
next "bla_75-125_skill"
// GATHER:  60 Coarse Stone, 85 Tin Ore, 5 Silver Ore, 205 Copper Ore
step
label "bla_75-125_farm"
#include "trainer_Mining"
.skillmax Mining,150
.learn Smelt Bronze##2659
.learn Smelt Tin##3304
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 75. It's better to skill up first. |only if skill("Mining")<50 and skillmax("Mining")<150
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if itemcount("Copper Bar")>=235
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
'Go outside to Elwynn Forest |goto Elwynn Forest |noway |c
step
label "farming"
map Elwynn Forest
path follow loose;loop;ants straight  // this stays set until the end of the guide.
path 32.8,50.5	30.2,58.2	28.3,64.8
path 25.6,70.3	21.4,74.5	23.1,82.5
path 31.5,78.1	37.5,71.4	38.2,82.5
path 49.7,84.8	57.3,80.8
path 61.7,75.2	67.3,72.2	70.2,66.1
path 73.7,56.0	73.8,48.2	80.5,54.8
path 80.0,46.1	77.5,38.1	71.4,38.5
path 64.7,37.9	63.3,46.2	62.0,53.0
path 55.1,56.0	49.9,60.4	46.2,53.9
path 43.2,48.7	37.2,51.9
#include "follow_path_mine"
.collect 205 Copper Ore##2770 |only if itemcount("Copper Bar")<235
#include "max_skill_warning",skill="Mining",goto="bla_75-125_farm"
step
label "farm2"
|fly Rebel Camp 
step
map Northern Stranglethorn
path	44.9,19.0	37.5,14.8	34.4,17.3
path	17.1,22.6	23.7,32.3	30.6,36.3
path	34.7,30.0	38.7,34.4	39.6,43.2	
path	47.0,41.5	44.1,49.7	46.3,52.9	
path	54.2,55.8	60.5,51.8	67.2,49.1	
path	67.3,36.9	66.4,25.8	59.9,18.9
path	51.0,17.4
#include "follow_path_mine"
.collect 60 Coarse Stone##2836
.collect 85 Tin Ore##2771
.collect 5 Silver Ore##2775
skill Mining,125
#include "max_skill_warning",skill="Mining",goto="bla_75-125_farm"
step
#include "hearth_dwarven"
step
#include "maincity_anvil"
.create Copper Bar##2657,Mining,205 total |n
.collect 205 Copper Bar##2840
step
#include "maincity_anvil"
.create Tin Bar##3304,Mining,85 total 
.collect 85 Tin Bar##3576
step
#include "maincity_anvil"
.create Bronze Bar##2659,Mining,170 total 
.collect 170 Bronze Bar##2841
step
#include "trainer_Mining"
.learn Smelt Silver##2658
step
#include "maincity_anvil"
.create Silver Bar##2658,Mining,5 total 
.collect 5 Silver Bar##2842
// CREATE:  30 Coarse Grinding Stone, 15 Runed Copper Belt, 5 Silver Rod, 20 Rough Bronze Leggings
step
label "bla_75-125_skill"
#include "trainer_Blacksmithing"
.learn Coarse Grinding Stone##3326
step
#include "maincity_anvil"
.create 30 Coarse Grinding Stone##3326,Blacksmithing,30 total |n
.collect 30 Coarse Grinding Stone##3478 |tip Save 30 Coarse Grinding Stones, you'll need them later.
step
#include "trainer_Blacksmithing"
.learn Runed Copper Belt##2666
step
#include "maincity_anvil"
.create 15 Runed Copper Belt##2666, Blacksmithing,100
step
#include "trainer_Blacksmithing"
.learn Silver Rod##7818
step
#include "maincity_anvil"
.create 5 Silver Rod##7818,Blacksmithing,105
step
#include "trainer_Blacksmithing"
.learn Rough Bronze Leggings##2668
step
#include "maincity_anvil"
.create 20 Rough Bronze Leggings##2668,Blacksmithing,125
// ----------
// 125 - 210
// ----------
// TRAIN: Expert Blacksmithing
step
title + Blacksmithing 125-210
label "bla_125-210"
#include "trainer_Blacksmithing"
.skillmax Blacksmithing,225 
step
#include "auctioneer_dwarven"
.buy 150 Heavy Stone##2838
.buy 230 Iron Bar##3575
.buy 100 Steel Bar##3859
.buy 5 Gold Bar##3577
.buy 50 Bronze Bar##2841
.buy 60 Coarse Stone##2836 |only if itemcount("Coarse Grinding Stone")<30
#include go_farm,skill="Mining",req="125",goto="bla_125-210_farm"
next "bla_125-210_skill"
// GATHER:  150 Heavy Stone, 330 Iron Ore, 5 Gold Ore, 25 Copper Ore, 25 Tin Ore, 60 Coarse Stone
step
label "bla_125-210_farm"
#include "trainer_Mining"
.skillmax Mining,225
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 150. It's better to skill up first. |only if skill("Mining")<125 and skillmax("Mining")<225
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if itemcount("Bronze Bar")>=50
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
'Go outside to Elwynn Forest |goto Elwynn Forest |noway |c
step
label "farming"
map Elwynn Forest
path follow loose;loop;ants straight  // this stays set until the end of the guide.
path 32.8,50.5	30.2,58.2	28.3,64.8
path 25.6,70.3	21.4,74.5	23.1,82.5
path 31.5,78.1	37.5,71.4	38.2,82.5
path 49.7,84.8	57.3,80.8
path 61.7,75.2	67.3,72.2	70.2,66.1
path 73.7,56.0	73.8,48.2	80.5,54.8
path 80.0,46.1	77.5,38.1	71.4,38.5
path 64.7,37.9	63.3,46.2	62.0,53.0
path 55.1,56.0	49.9,60.4	46.2,53.9
path 43.2,48.7	37.2,51.9
#include "follow_path_mine"
.collect 25 Copper Ore##2770
#include "max_skill_warning",skill="Mining",goto="bla_125-210_farm"
step
label "farm2"
'Skipping 2nd part of farming |next "+farm3" |only if itemcount("Bronze Bar")>=50 and itemcount("Coarse Grinding Stone")>=30
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Rebel Camp 
step
label "farming"
map Northern Stranglethorn
path	44.9,19.0	37.5,14.8	34.4,17.3
path	17.1,22.6	23.7,32.3	30.6,36.3
path	34.7,30.0	38.7,34.4	39.6,43.2	
path	47.0,41.5	44.1,49.7	46.3,52.9	
path	54.2,55.8	60.5,51.8	67.2,49.1	
path	67.3,36.9	66.4,25.8	59.9,18.9
path	51.0,17.4
#include "follow_path_mine"
.collect 60 Coarse Stone##2836 |only if itemcount("Coarse Grinding Stone")<30
.collect 25 Tin Ore##2771
#include "max_skill_warning",skill="Mining",goto="bla_125-210_farm"
step
label "farm3"
#include "rideto_ratchet"
step
|fly Feathermoon
step
map Feralas
path	74.9,48.6	84.0,45.6
path	84.9,39.9	71.5,34.7
path	54.3,50.1	48.6,44.0	49.7,34.9
path	51.6,33.8	50.9,26.2	51.3,19.0
path	54.9,8.1	49.4,4.0	40.0,7.7
path	37.1,12.1	38.1,17.6	37.0,25.6
path	45.1,26.2	46.3,38.6	50.3,52.7
path	47.9,55.4	46.9,64.1	54.8,53.9
path	55.2,62.6	52.9,66.2	53.6,73.7
path	60.8,75.8	62.0,55.0	63.7,61.0
path	66.4,51.3	68.2,51.3
path	68.1,61.5	71.6,65.1	77.2,62.1
#include "follow_path_mine"
.collect 150 Heavy Stone##2838
.collect 330 Iron Ore##2772
.collect 5 Gold Ore##2776
.skill Mining,200
#include "max_skill_warning",skill="Mining",goto="bla_125-210_farm"
step
#include "hearth_dwarven"
step
#include "trainer_Mining"
.learn Smelt Gold##3308
.learn Smelt Iron##3307
.learn Smelt Steel##3569
step
#include "maincity_anvil"
.create Bronze Bar##2659,Mining,50 total |n
.collect 50 Bronze Bar##2841 |tip You will need to smelt your Copper and Tin to create this.
step
#include "maincity_anvil"
.create Coarse Grinding Stone##3326,Blacksmithing,30 total |n
.collect 30 Coarse Grinding Stone##3478 |tip Only create this if you do not already have it
step
#include "maincity_anvil"
.create Iron Bar##3307,Mining,330 total 
.collect 330 Iron Bar##3575
step
#include "maincity_anvil"
.create Gold Bar##3308,Mining,5 total
.collect 5 Gold Bar##3577
step
#include "vendor_Blacksmithing"
.buy 100 Coal##3857
step
#include "maincity_anvil"
.create Steel Bar##3569,Mining,100 total 
.collect 100 Steel Bar##3859
// CREATE:  50 Heavy Grinding Stone, 10 Patterned Bronze Bracers, 5 Golden Rod, 10 Green Iron Leggings, 25 Green Iron Bracers, 20 Golden Scale Bracers
step
label "bla_125-210_skill"
#include "vendor_Tailoring"
.buy 35 Green Dye##2605 |tip You will need these to make items later.
step
#include "trainer_Blacksmithing"
.learn Heavy Grinding Stone##3337
step
#include "maincity_anvil"
.create 50 Heavy Grinding Stone##3337,Blacksmithing,50 total |n
.collect 50 Heavy Grinding Stone##3486 |tip Save 50 Heavy Grinding Stones, you'll need them later.
step
#include "trainer_Blacksmithing"
.learn Patterned Bronze Bracers##2672
step
#include "maincity_anvil"
.create 10 Patterned Bronze Bracers##2672,Blacksmithing,150
step
#include "trainer_Blacksmithing"
.learn Golden Rod##14379
step
#include "maincity_anvil"
.create 5 Golden Rod##14379,Blacksmithing,155
step
#include "trainer_Blacksmithing"
.learn Green Iron Leggings##3506
step
#include "maincity_anvil"
.create Green Iron Leggings##3506,Blacksmithing,165
step
#include "trainer_Blacksmithing"
.learn Green Iron Bracers##3501
step
#include "maincity_anvil"
.create 25 Green Iron Bracers##3501,Blacksmithing,190
step
#include "trainer_Blacksmithing"
.learn Golden Scale Bracers##7223
step
#include "maincity_anvil"
.create 20 Golden Scale Bracers##7223,Blacksmithing,210
// ----------
// 210 - 300
// ----------
// TRAIN: Artisan Blacksmithing
step
title + Blacksmithing 210-300
label "bla_210-300"
#include "trainer_Blacksmithing"
.skillmax Blacksmithing,300 	
step
#include "auctioneer_dwarven"
.buy 320 Mithril Bar##3860
.buy 5 Star Ruby##7910
.buy 200 Mageweave Cloth##4338
.buy 400 Thorium Bar##12359
.buy 120 Dense Stone##12365
#include go_farm,skill="Mining",req="1",goto="bla_210-300_farm"
next "bla_210-300_skill"
// GATHER:  320 Mithril Ore, 200 Mageweave Cloth, 5 Star Ruby  --->  Winterspring:  400 Thorium Ore, 40 Dense Stone, 5 Star Ruby
step
label "bla_210-300_farm"
#include "trainer_Mining"
.skillmax Mining,300
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 225. It's better to skill up first. |only if skill("Mining")<200 and skillmax("Mining")<300
step
#include "rideto_ruttheranvillage"
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Talonbranch Glade
step
label "farming"
map Felwood
path	63.5,24.5	62.6,6.9	55.7,18.6
path	42.5,17.1	42.0,24.1	39.9,22.1
path	41.0,27.5	38.6,37.4	38.3,55.6
path	40.7,59.8	35.0,59.1	41.8,62.6
path	36.3,66.8	40.7,72.9	37.8,73.5
path	40.3,77.4	39.1,79.3	43.8,81.5
path	39.0,81.6	42.3,87.1	45.1,84.6
path	45.1,89.7	48.1,92.8	51.2,86.1
path	52.5,88.8	57.7,86.5	58.6,84.8
path	55.9,81.1	49.6,76.6	43.5,60.9
path	42.9,50.8	52.9,31.6	59.6,27.2	
#include "follow_path_mine"
.collect 320 Mithril Ore##3858
.collect 5 Star Ruby##7910 |n |tip Keep any Star Rubies that you find, you will need 5 of them later.
.skill Mining,215
#include "max_skill_warning",skill="Mining",goto="bla_210-300_farm"
step
goto 49.2,87.0
.from Deadwood Gardener##7154+, Deadwood Warrior##7153+, Deadwood Pathfinder##7155+
.from Jadefire Rogue##7106+, Jadefire Shadowstalker##7110+
.from Jaedenar Cultist##7112+, Jaedenar Guardian##7113+, Jaedenar Adept##7115+
.collect 200 Mageweave Cloth##4338
.' You can find more:
.' Around [38.4,67.6]
.' Around [39.4,58.4]
step
label "farm2"
'Skipping 2nd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Everlook
step
label "farming"
map Winterspring
path	52.8,46.2	58.3,41.2	59.7,45.0
path	59.9,21.4	58.3,18.4	54.5,21.2
path	45.9,13.1	44.8,15.3	44.8,29.0
path	47.8,33.2	49.8,42.8	39.5,51.0
path	33.5,47.2	30.2,48.6	31.5,53.5
path	28.4,51.6	27.3,48.0	23.0,45.7
path	22.3,62.4	25.3,61.3	25.9,58.1
path	41.2,57.7	42.1,53.2	46.1,60.8
path	51.0,61.4	53.7,63.6	51.2,69.9
path	55.2,68.9	56.8,81.1	59.0,80.3
path	59.0,85.3	62.0,87.6	64.1,81.8
path	62.2,77.7	62.3,73.3	67.0,68.5
path	67.1,60.1
#include "follow_path_mine"
.collect 400 Thorium Ore##10620
.collect 120 Dense Stone##12365
.collect 5 Star Ruby##7910
.skill Mining,275
#include "max_skill_warning",skill="Mining",goto="bla_210-300_farm"
step
label "exit"
#include "hearth_dwarven"
step
#include "trainer_Mining"
.learn Smelt Mithril##10097
.learn Smelt Thorium##16153
step
#include "maincity_anvil"
.create Mithril Bar##10097,Mining,320 total 
.collect 320 Mithril Bar##3860
step
#include "maincity_anvil"
.create Thorium Bar##16153,Mining,400 total 
.collect 400 Thorium Bar##12359
// CREATE:  20 Heavy Mithril Gauntlet, 20 Mithril Coif, 30 Dense Grinding Stone, 20 Thorium Bracers, 15 Imperial Plate Bracers, 5 Thorium Helm
step
label "bla_210-300_skill"
#include "trainer_Blacksmithing"
.learn Heavy Mithril Gauntlet##9928
step
#include "maincity_anvil"
.create 20 Heavy Mithril Gauntlet##9928,Blacksmithing,230
step
#include "trainer_Blacksmithing"
.learn Mithril Coif##9961
step
#include "maincity_anvil"
.create 20 Mithril Coif##9961,Blacksmithing,250
step
#include "trainer_Blacksmithing"
.learn Dense Grinding Stone##16639
step
#include "maincity_anvil"
.create 30 Dense Grinding Stone##16639,Blacksmithing,260
step
#include "trainer_Blacksmithing"
.learn Thorium Bracers##16644
step
#include "maincity_anvil"
.create 20 Thorium Bracers##16644,Blacksmithing,280
step
#include "trainer_Blacksmithing"
.learn Imperial Plate Bracers##16649
step
#include "maincity_anvil"
.create 15 Imperial Plate Bracers##16649,Blacksmithing,295		
step
#include "trainer_Blacksmithing"
.learn Thorium Helm##16653
step
#include "maincity_anvil"
.create 5 Thorium Helm##16653,Blacksmithing,300
// ----------
// 300 - 325
// ----------
// TRAIN: Master Blacksmithing
step
title + Blacksmithing 300-325
label "bla_300-325"
#include "trainer_Blacksmithing"
.skillmax Blacksmithing,375 
step
#include "auctioneer_dwarven"
.buy 165 Fel Iron Bar##23445
#include go_farm,skill="Mining",req="275",goto="bla_300-325_farm"
|next "bla_300-325_skill"
// GATHER:  330 Fel Iron Ore
step
label "bla_300-325_farm"
#include "trainer_Mining"
.skillmax Mining,375
.learn Smelt Fel Iron##29356
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 300. It's better to skill up first. |only if skill("Mining")<275 and skillmax("Mining")<375
step
#include "darkportal"
step
map Hellfire Peninsula
path	69.3,47.5	74.5,38.7	68.2,37.7
path	62.0,31.0	58.0,32.8	54.0,26.7
path	46.0,29.3	34.1,29.1	32.0,34.5
path	38.5,38.2	35.7,40.7	33.4,49.8
path	30.3,48.6	32.5,43.3	28.5,39.3
path	26.5,45.5	22.6,45.1	18.0,38.3
path	12.5,36.1	17.9,46.3	11.8,41.9
path	12.0,47.0	06.2,49.5	15.4,62.4
path	20.3,52.9	24.0,61.1	21.2,62.7
path	28.1,80.8	27.7,69.5	30.5,72.8
path	30.3,59.9	34.8,66.6	37.7,53.3
path	46.9,46.3	49.3,49.5	60.3,48.6
path	60.8,52.8	52.1,52.7	47.2,57.7
path	45.9,75.5	33.5,89.6	33.1,92.6
path	49.1,77.5	44.6,86.2	55.5,82.8
path	58.7,78.8	56.5,72.3	65.8,63.6
path	67.1,71.7	63.0,73.3	65.8,77.9
path	68.7,77.6	71.0,71.7	70.1,68.6
path	65.0,59.8	65.6,56.0	75.0,63.9
path	78.4,80.2	80.7,77.5	77.3,63.7
path	72.7,60.2	71.5,53.1	68.3,52.0
#include "follow_path_mine"
.collect 330 Fel Iron Ore##23424
.skill Mining,350
#include "max_skill_warning",skill="Mining",goto="bla_300-325_farm"
step
#include "hell_anvil"
.create Fel Iron Bar##29356,Mining,165 total
.collect 165 Fel Iron Bar##23445
|next "bla_300-325_skill2"
// CREATE:  10 Fel Iron Plate Gloves, 5 Fel Iron Plate Belt, 5 Fel Iron Chain Gloves, 5 Fel Iron Plate Boots
step
label "bla_300-325_skill"
#include "darkportal"
step
label	"bla_300-325_skill2"
|fly Wildhammer Stronghold
step
goto Shadowmoon Valley,36.8,55.0
.talk 19373
.buy 1 Plans: Lesser Ward of Shielding##23638 |tip Save this recipe, you will learn it later, when your Blacksmithing skill is higher.  This recipe is a limited supply item, so if it's not available for purchase, keep checking again every few minutes until you can buy it.
step
|fly Shattrath
step
#include "trainer_Blacksmithing_Shatt"
.learn Fel Iron Plate Gloves##29545
step
#include "shatt_anvil"
.create Fel Iron Plate Gloves##29545,Blacksmithing,310
step
#include "trainer_Blacksmithing_Shatt"
.learn Fel Iron Plate Belt##29547
step
#include "shatt_anvil"
.create Fel Iron Plate Belt##29547,Blacksmithing,315
step
#include "trainer_Blacksmithing_Shatt"
.learn Fel Iron Chain Gloves##29552
step
#include "shatt_anvil"
.create Fel Iron Chain Gloves##29552,Blacksmithing,320
step
#include "trainer_Blacksmithing_Shatt"
.learn Fel Iron Plate Boots##29548
step
#include "shatt_anvil"
.create Fel Iron Plate Boots##29548,Blacksmithing,325
// ----------
// 325 - 350
// ----------
step
label	"bla_325-350"
#include "shatt_auctioneer"
.buy 130 Adamantite Bar##23446
#include go_farm,skill="Mining",req="275",goto="bla_325-350_farm"
|next "bla_325-350_skill"
// GATHER:  260 Adamantite Ore
step
label "bla_325-350_farm"
|fly Telaar
step
map Nagrand
path	72.7,64.7	74.3,60.5	69.1,48.6
path	72.3,43.1	66.1,32.3	57.7,30.8
path	59.5,27.3	49.3,24.1	47.1,20.2
path	39.6,20.4	28.2,12.1	25.7,16.5
path	26.8,23.6	30.9,21.9	27.9,25.3
path	27.5,32.1	23.2,27.8	7.1,39.9
path	25.2,61.1	31.9,81.9	41.8,81.8
path	43.5,73.7	57.4,78.3	43.0,62.2
path	32.2,60.3	29.2,54.1	34.0,52.6
path	29.7,45.7	34.1,44.3	35.5,47.3
path	38.8,36.9	45.5,43.9	42.4,50.9
path	48.0,57.5	51.5,55.6	60.5,56.9
path	56.7,64.0	70.1,83.3	69.8,72.5
#include "follow_path_mine"
.collect 260 Adamantite Ore##23425
.skill Mining,375
#include "max_skill_warning",skill="Mining",goto="bla_325-350_farm"
step
|fly Shattrath
// CREATE:  5 Lesser Rune of Warding, 5 Fel Iron Breastplate, 10 Adamantite Cleaver, 5 Lesser Ward of Shielding
step
label "bla_325-350_skill"
#include "shatt_anvil"
.create Adamantite Bar##29358,Mining,76 total 
.collect 76 Adamantite Bar##23446
step
#include "trainer_Blacksmithing_Shatt"
.learn Lesser Rune of Warding##32284
step
#include "shatt_anvil"
.create Lesser Rune of Warding##32284,Blacksmithing,330
step
#include "trainer_Blacksmithing_Shatt"
.learn Fel Iron Breastplate##29550
step
#include "shatt_anvil"
.create Fel Iron Breastplate##29550,Blacksmithing,335	
step
goto Shattrath City,64.1,71.9
.talk 19662
.buy Plans: Adamantite Cleaver##23591 |n |tip This recipe is a limited supply item, so if it's not available for purchase, keep checking again every few minutes until you can buy it.
.' Click the Plans: Adamantite Cleaver in your bags |use Plans: Adamantite Cleaver##23591
.learn Adamantite Cleaver##29568
step
#include "shatt_anvil"
.create Adamantite Cleaver##29568,Blacksmithing,340
step
.' Click the Plans: Lesser Ward of Shielding in your bags |use Plans: Lesser Ward of Shielding##23638
.learn Lesser Ward of Shielding##29728
step
#include "shatt_anvil"
.create Lesser Ward of Shielding##29728,Blacksmithing,345
step
#include "shatt_anvil"
.create Adamantite Cleaver##29568,Blacksmithing,350
step
#include "hearth_dwarven"
// ----------
// 350 - 425
// ----------
// TRAIN: Grand Master Blacksmithing
step
title + Blacksmithing 350-425
label "bla_350-425"
#include "trainer_Blacksmithing"
.skillmax Blacksmithing,450 
step
#include "auctioneer_dwarven"
.buy 320 Cobalt Bar##36916
.buy 151 Saronite Bar##36913
.buy 140 Crystallized Water##37705
.buy 140 Crystallized Earth##37701
.buy 150 Crystallized Shadow##37703
.buy 20 Crystallized Air##37700
#include go_farm,skill="Mining",req="350",goto="bla_350-425_farm"
next "bla_350-425_skill"
// GATHER:  320 Cobalt Ore, 130 Crystallized Water, Saronite Ore, 130 Crystallized Earth, 130 Crystallized Shadow, 20 Crystallized Air
step
label "bla_350-425_farm"
#include "trainer_Mining"
.skillmax Mining,450
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 375. It's better to skill up first. |only if skill("Mining")<350 and skillmax("Mining")<450
step
#include "rideto_howlingfjord"
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Zim'Torga
step
label "farming"
map Zul'Drak
path	74.1,73.8	75.5,75.2	78.8,70.6
path	71.4,52.0	71.6,46.7	75.0,50.9
path	78.5,41.9	70.9,34.0	80.6,25.5
path	78.9,22.5	72.7,29.0	70.7,24.6
path	70.2,33.2	56.9,33.4	57.6,36.2
path	52.6,34.5	52.8,44.8	56.1,47.9
path	53.5,50.5	52.8,56.8	46.4,40.6
path	39.3,43.3	35.6,46.2	31.9,39.2
path	20.9,47.5	24.3,54.8	16.1,57.6
path	14.2,69.9	11.2,75.0	11.6,78.1
path	20.0,76.5	20.4,72.0	23.7,71.1
path	22.5,63.7	29.7,71.5	33.5,68.0
path	32.3,55.2	37.0,55.5	34.7,63.3
path	38.8,67.8	30.8,76.6	32.0,83.1
path	45.0,84.9	45.3,76.5	53.2,69.1
path	60.1,84.3
#include "follow_path_mine"
.collect 320 Cobalt Ore##36909
.collect 140 Crystallized Earth##37701 |n
.collect 140 Crystallized Water##37705 |n
.skill Mining,425
#include "max_skill_warning",skill="Mining",goto="bla_350-425_farm"
step
label "farm2"
'Skipping 2nd part of farming |next "+farm3" |only if itemcount("Crystallized Air")>=20 and itemcount("Crystallized Water")>=140 and itemcount("Crystallized Earth")>=140
'Proceeding to farm |next |only if default
step
goto Zul'Drak,54.8,50.4
.from Frozen Earth##28411
.collect 140 Crystallized Water##37705
.collect 140 Crystallized Earth##37701 |tip Mine the corpse after looting to get Crystallized Earth |n |only if skill("Mining")>=405
step
goto Zul'Drak,72.6,58.8
.from Altar Warden##28784
.collect 20 Crystallized Air##37700
step
label "farm3"
'Skipping 3rd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly River's Heart
step
label "farming"
map Sholazar Basin
path	28.7,61.7	35.8,67.6
path	33.8,73.4	34.2,78.4	43.6,76.6
path	39.3,75.5	40.9,70.1	46.0,60.9
path	47.4,66.9	51.5,62.1	55.5,66.5
path	56.5,57.1	58.9,53.9	60.0,60.2
path	57.2,68.1	63.0,67.1	62.8,62.3
path	71.3,63.8				 
path	77.9,63.8	78.7,52.4	74.3,48.6
path	65.1,30.5	58.9,27.8	58.9,21.1
path	40.8,20.8	32.9,32.8	35.8,40.3
path	33.8,40.6	33.7,35.4	29.7,38.5
path	23.3,48.4	20.8,56.1	20.4,76.6
path	22.6,78.5	22.5,84.0	34.5,88.9
path	60.3,88.8	59.7,81.3	51.5,82.1
path	48.5,76.8	62.3,74.5	63.6,84.4
path	74.2,56.1	69.4,58.3	64.2,53.5
path	75.1,54.0	74.3,48.6	63.5,44.4
path	66.7,40.3	63.7,34.6	58.5,33.3
path	59.4,37.3	48.0,33.2	52.7,39.9
path	47.8,43.1	46.8,39.7	39.6,32.8
path	39.9,39.5	33.5,46.6	35.8,49.9
path	40.0,50.9	
path	38.0,54.9	30.5,55.3
path	35.1,59.5	
#include "follow_path_mine"
.collect 302 Saronite Ore##36912
.collect 150 Crystallized Shadow##37703
#include "max_skill_warning",skill="Mining",goto="bla_350-425_farm"
step
label "exit"
#include "hearth_dwarven"
step
#include "trainer_Mining"
.skillmax Mining,525
.learn Smelt Cobalt##49252
.learn Smelt Saronite##49258
step
#include "maincity_anvil"
.create Cobalt Bar##49252,Mining,320 total
.collect 320 Cobalt Bar##36916
step
#include "maincity_anvil"
.create Saronite Bar##49258,Mining,151 total
.collect 151 Saronite Bar##36913
// CREATE:  10 Cobalt Belt, 10 Cobalt Bracers, 10 Cobalt Gauntlets, 5 Spiked Cobalt Boots, 5 Sure-fire Shuriken, 5 Notched Cobalt War Axe, 5 Brilliant Saronite Belt, 5 Horned Cobalt Helm, 10 Deadly Saronite Dirk, 10 Eternal Belt Buckle
step
label "bla_350-425_skill"
#include "trainer_Blacksmithing"
.learn Cobalt Belt##52568
step
#include "maincity_anvil"
.create 10 Cobalt Belt##52568,Blacksmithing,360
step
#include "trainer_Blacksmithing"
.learn Cobalt Bracers##55834
step
#include "maincity_anvil"
.create 10 Cobalt Bracers##55834,Blacksmithing,370
step
#include "trainer_Blacksmithing"
.learn Cobalt Gauntlets##55835
step
#include "maincity_anvil"
.create 10 Cobalt Gauntlets##55835,Blacksmithing,380
step
#include "trainer_Blacksmithing"
.learn Spiked Cobalt Boots##54918
step
#include "maincity_anvil"
.create 5 Spiked Cobalt Boots##54918,Blacksmithing,385
step
#include "trainer_Blacksmithing"
.learn Sure-fire Shuriken##55202
step
#include "maincity_anvil"
.create 5 Sure-fire Shuriken##55202,Blacksmithing,390
step
#include "trainer_Blacksmithing"
.learn Notched Cobalt War Axe##55204
step
#include "maincity_anvil"
.create 5 Notched Cobalt War Axe##55204,Blacksmithing,395
step
#include "trainer_Blacksmithing"
.learn Brilliant Saronite Belt##59436
step
#include "maincity_anvil"
.create 5 Brilliant Saronite Belt##59436,Blacksmithing,400
step
#include "trainer_Blacksmithing"
.learn Horned Cobalt Helm##54949
step
#include "maincity_anvil"
.create 5 Horned Cobalt Helm##54949,Blacksmithing,405
step
#include "trainer_Blacksmithing"
.learn Deadly Saronite Dirk##55206
step
#include "maincity_anvil"
.create 10 Deadly Saronite Dirk##55206,Blacksmithing,415
step
#include "trainer_Blacksmithing"
.learn Eternal Belt Buckle##55656
step
#include "maincity_anvil"
.create Eternal Belt Buckle##55656,Blacksmithing,425 |tip You have to right click your Crystallized Earth, Crystallized Water, and Crystallized Shadow to convert them into Eternals
// ----------
// 425 - 475
// ----------
// TRAIN: Illustrious Blacksmithing
step
title + Blacksmithing 425-475
label "bla_425-475"
#include "trainer_Blacksmithing"
.skillmax Blacksmithing,525 
step
#include "auctioneer_dwarven"
.buy 150 Obsidium Bar##54849
.buy 15 Volatile Earth##52327
#include go_farm,skill="Mining",req="425",goto="bla_425-475_farm"
next "bla_425-475_skill"
// GATHER:  540 Obsidium Ore, 10 Volatile Earth	
step
label "bla_425-475_farm"
#include "trainer_Mining"
.skillmax Mining,525
.learn Smelt Obsidium##84038
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 450. It's better to skill up first. |only if skill("Mining")<425 and skillmax("Mining")<525
step
#include "port_hyjal"
step
map Mount Hyjal
path	67.2,29.1	61.1,36.7	54.5,17.1
path	41.2,20.5	42.9,27.5	49.6,25.5
path	46.6,35.6	40.5,33.6	39.9,29.4
path	34.9,27.5	35.0,21.7	32.3,28.8
path	35.0,35.6	31.1,40.4	25.7,40.6
path	28.7,35.7	24.3,35.8	25.7,29.8
path	14.7,38.8	13.6,31.6	9.4,36.4
path	17.6,46.5	12.9,46.5	15.5,52.2
path	20.7,60.2	21.5,56.8	23.3,61.5
path	30.3,55.2	27.6,55.0	27.7,51.2
path	34.1,46.8	34.1,55.2	37.5,54.9
path	36.0,51.0	40.3,51.6	41.5,63.3
path	38.9,65.5	36.4,58.6	32.8,61.8
path	35.2,63.5	32.8,66.6	31.3,90.4
path	36.6,95.5	50.8,82.1	51.8,75.1
path	60.6,82.5	59.8,73.0	56.5,69.8
path	58.9,66.4	53.6,66.8	49.6,51.1
path	59.7,56.3	55.5,56.8	62.8,60.0
path	64.5,50.9	67.5,50.6	69.8,56.0
path	75.9,69.6	75.7,63.6	80.2,67.2
path	84.3,64.9	88.1,48.5	84.2,47.5
path	78.5,53.3	84.2,54.5	82.1,60.9
path	72.9,57.9
#include "follow_path_mine"
.collect 460 Obsidium Ore##53038
.collect 173 Volatile Earth##52327 |n
.skill Mining,475
#include "max_skill_warning",skill="Mining",goto="bla_425-475_farm"
step
goto Mount Hyjal,65.0,22.5
.from Scalding Rock Elemental##40229+
.collect 173 Volatile Earth##52327
step
#include "hearth_dwarven"
step
#include "maincity_anvil"
.create Obsidium Bar##84038,Mining,226 total
.collect 226 Obsidium Bar##54849
// CREATE: 75 Folded Obsidium, 5 Hardened Obsidium Gauntlets, 10 Hardened Obsidium Belt, 5 Redsteel Boots
step
label "bla_425-475_skill"
#include "trainer_Blacksmithing"
.learn Folded Obsidium##76178
step
#include "maincity_anvil"
.create Folded Obsidium##76178,Blacksmithing,75 total |n
skill Blacksmithing,455
.collect 75 Folded Obsidium##65365 |tip Save all 75 of these, as you will need them later.
step
#include "trainer_Blacksmithing"
.learn Hardened Obsidium Gauntlets##76180
step
#include "maincity_anvil"
.create 5 Hardened Obsidium Gauntlets##76180,Blacksmithing,460
step
#include "trainer_Blacksmithing"
.learn Hardened Obsidium Belt##76181
step
#include "maincity_anvil"
.create 10 Hardened Obsidium Belt##76181,Blacksmithing,470
step
#include "trainer_Blacksmithing"
.learn Redsteel Boots##76265
step
#include "maincity_anvil"
.create Redsteel Boots##76265,Blacksmithing,475
// ----------
// 475 - 525
// ----------
step
title + Blacksmithing 475-525
label "bla_475-525"
#include "auctioneer_dwarven"
.buy 585 Elementium Bar##52186
.buy 2 Hardened Elementium Bar##53039
.buy 80 Obsidium Bar##54849
.buy 150 Volatile Fire##52325
.buy 50 Volatile Water##52326
#include go_farm,skill="Mining",req="475",goto="bla_475-525_farm"
next "bla_475-525_skill"
// GATHER:  770 Elementium Ore, 100 Volatile Fire, 68 Volatile Earth, 30 Volatile Water
step
label "bla_475-525_farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "port_hyjal"
step
label "farming"
map Mount Hyjal
path	67.2,29.1	61.1,36.7	54.5,17.1
path	41.2,20.5	42.9,27.5	49.6,25.5
path	46.6,35.6	40.5,33.6	39.9,29.4
path	34.9,27.5	35.0,21.7	32.3,28.8
path	35.0,35.6	31.1,40.4	25.7,40.6
path	28.7,35.7	24.3,35.8	25.7,29.8
path	14.7,38.8	13.6,31.6	9.4,36.4
path	17.6,46.5	12.9,46.5	15.5,52.2
path	20.7,60.2	21.5,56.8	23.3,61.5
path	30.3,55.2	27.6,55.0	27.7,51.2
path	34.1,46.8	34.1,55.2	37.5,54.9
path	36.0,51.0	40.3,51.6	41.5,63.3
path	38.9,65.5	36.4,58.6	32.8,61.8
path	35.2,63.5	32.8,66.6	31.3,90.4
path	36.6,95.5	50.8,82.1	51.8,75.1
path	60.6,82.5	59.8,73.0	56.5,69.8
path	58.9,66.4	53.6,66.8	49.6,51.1
path	59.7,56.3	55.5,56.8	62.8,60.0
path	64.5,50.9	67.5,50.6	69.8,56.0
path	75.9,69.6	75.7,63.6	80.2,67.2
path	84.3,64.9	88.1,48.5	84.2,47.5
path	78.5,53.3	84.2,54.5	82.1,60.9
path	72.9,57.9
#include "follow_path_mine"
.collect 160 Obsidium Ore##53038
.collect 158 Volatile Earth##52327 |n
#include "max_skill_warning",skill="Mining",goto="bla_4 75-525_farm"
step
goto Mount Hyjal,65.0,22.5
.from Scalding Rock Elemental##40229+
.collect 158 Volatile Earth##52327
step
#include "hearth_dwarven"
step
label "farm2"
#include "port_twilight"
step
map Twilight Highlands
path 71.4,50.3	54.0,37.6	41.3,56.6
path 37.5,58.2	24.5,56.9	30.0,42.8
path 26.9,28.7	32.3,27.1	31.5,40.1
path 38.6,41.2	39.6,30.4	39.0,19.7
path 46.2,20.1	53.8,24.8	61.5,32.4
path 68.5,37.9
#include "follow_path_mine"
.collect 1224 Elementium Ore##52185
.collect 80 Volatile Fire##52325 |n
.collect 50 Volatile Water##52326 |n
#include "max_skill_warning",skill="Mining",goto="mining_525"
step
goto 69.8,48.4
.from Muddied Water Elemental##44011+
.collect 50 Volatile Water##52326
step
goto 41.6,22.6
.from Unbound Emberfiend##48016+, Bound Fleshburner##45358+, Magmalord Falthazar##48015+
.collect 80 Volatile Fire##52325
step
#include "hearth_dwarven"
step
#include "trainer_Mining"
.learn Smelt Elementium##74530
.learn Smelt Hardened Elementium##74537
step
#include "maincity_anvil"
.create Elementium Bar##74530,Mining,612 total |n
.collect 612 Elementium Bar##52186
step
#include "maincity_anvil"
.create Hardened Elementium Bar##74537,Mining,2 total |n
.collect 2 Hardened Elementium Bar##53039
// CREATE:  5 Elementium Rod, 40 Folded Obsidium, 10 Stormforged Shoulders, 10 Hardened Obsidium Legguards, 10 Redsteel Breastplate, 5 Vicious Pyrium Gauntlets, 5 Vicious Pyrium Gauntlets, 5 Vicious Ornate Pyrium Shoulders
step
label "bla_475-525_skill"
#include "trainer_Blacksmithing"
.learn Elementium Rod##92375
step
#include "maincity_anvil"
.create 5 Elementium Rod##92375,Blacksmithing,480
step
#include "maincity_anvil"
.create Folded Obsidium##76178,Blacksmithing,40 total |n
.collect 40 Folded Obsidium##65365 |tip Save all 40 of these, as you will need them later.
step
#include "trainer_Blacksmithing"
.learn Stormforged Shoulders##76286
step
#include "maincity_anvil"
.create 10 Stormforged Shoulders##76286,Blacksmithing,490
step
#include "trainer_Blacksmithing"
.learn Hardened Obsidium Legguards##76259
step
#include "maincity_anvil"
.create 10 Hardened Obsidium Legguards##76259,Blacksmithing,500
step
#include "trainer_Blacksmithing"
.learn Redsteel Breastplate##76270
step
#include "maincity_anvil"
.create 10 Redsteel Breastplate##76270,Blacksmithing,510
step
#include "port_twilight"
step
goto Twilight Highlands,79.2,76.6
.talk 50382
.buy Plans: Vicious Pyrium Gauntlets##66118 |n
.' Click the Plans: Vicious Pyrium Gauntlets in your bags |use Plans: Vicious Pyrium Gauntlets##66118
.learn Vicious Pyrium Gauntlets##76457
step
#include "twil_anvil"
.create 5 Vicious Pyrium Gauntlets##76457,Blacksmithing,515
step
goto 79.2,76.6
.talk 50382
.buy 1 Plans: Vicious Pyrium Belt##66119 |n
.' Click the Plans: Vicious Pyrium Belt in your bags |use Plans: Vicious Pyrium Belt##66119
.learn Vicious Pyrium Belt##76458
step
#include "twil_anvil"
.create 5 Vicious Pyrium Belt##76458,Blacksmithing,520
step
goto 79.2,76.6
.talk 50382
.buy Plans: Vicious Ornate Pyrium Shoulders##66129 |n
.' Click the Plans: Vicious Ornate Pyrium Shoulders in your bags |use Plans: Vicious Ornate Pyrium Shoulders##66129
.learn Vicious Ornate Pyrium Shoulders##76469
step
#include "twil_anvil"
.create 5 Vicious Ornate Pyrium Shoulders##76469,Blacksmithing,525
step
title + Blacksmithing 525
label "bla_525"
'Congratulations, you are now a level 525 Blacksmith!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Professions Guides\\Cooking\\Cooking 1-525 Leveling Guide\\Cooking 1-525 Leveling Guide",[[
description This guide will walk you through leveling your Cooking skill from 1-525.
author support@zygorguides.com
completion skill,Cooking,525
#include "profession_secondary_start",prof1="Cooking"
step
label "route"
'Redirecting to Cooking 1-75 |next "cook_1-75" |only if skill("Cooking")<75
'Redirecting to Cooking 75-130 |next "cook_75-130" |only if skill("Cooking")>=75 and skill("Cooking")<130
'Redirecting to Cooking 130-225 |next "cook_130-225" |only if skill("Cooking")>=130 and skill("Cooking")<225
'Redirecting to Cooking 225-285 |next "cook_225-285" |only if skill("Cooking")>=225 and skill("Cooking")<285
'Redirecting to Cooking 285-350 |next "cook_285-350" |only if skill("Cooking")>=285 and skill("Cooking")<350
'Redirecting to Cooking 350-400 |next "cook_350-400" |only if skill("Cooking")>=350 and skill("Cooking")<400
'Redirecting to Cooking 400-425 |next "cook_400-425" |only if skill("Cooking")>=400 and skill("Cooking")<425
'Redirecting to Cooking 425-525 |next "cook_425-525" |only if skill("Cooking")>=425 and skill("Cooking")<525
'Redirecting to Cooking finale |next "cook_525" |only if default
// ----------
// 1 - 75
// ----------
// TRAIN: Apprentice Cooking
step
title + Cooking 1-75
label "cook_1-75"
#include "trainer_Cooking"
|skillmax Cooking,75 
.learn Spice Bread##37836
step
#include "home_OldTown"
step
|fly Thelsamar
step
goto Loch Modan,35.6,49.2
.talk 1465
.buy 1 Recipe: Smoked Bear Meat##6892
step
#include "hearth_oldtown"
step
#include "vendor_Cooking"
.buy 50 Simple Flour##30817
.buy 50 Mild Spices##2678
step
#include "auctioneer"
.buy 35 Bear Meat##3173
#include go_farm,skill="Cooking",req="1",goto="cook_1-75_farm"
next "cook_1-75_skill"
// GATHER: 60 Bear Meat
step
label "cook_1-75_farm"
goto Elwynn Forest,80.8,59.2
.from Young Forest Bear##822+
.collect 60 Bear Meat##3173
'You can find more at [85.0,62.1]
'You can find more at [88.5,77.9]
'You can find more at [83.2,84.9]
'You can find more at [48.5,76.5]
'You can find more at [69.5,63.8]
step
#include "hearth_oldtown"
// CREATE: 50 Spice Bread, 35 Smoked Bear Meat
step
label "cook_1-75_skill"
#include "cast_campfire"
.create 50 Spice Bread##37836,Cooking,40
step
'Use the Recipe: Smoked Bear Meat in your bags |use Recipe: Smoked Bear Meat##6892
.learn Smoked Bear Meat##8607
step
#include "cast_campfire"
.create 35 Smoked Bear Meat##8607,Cooking,75
// ----------
// 75 - 130
// ----------
// TRAIN: Journeyman
step
title + Cooking 75-130
label "cook_75-130"
#include "trainer_Cooking"
|skillmax Cooking,150
step
goto 76.6,53.6
.talk 340
.buy 1 Recipe: Blood Sausage##3679
step
goto 76.6,53.6
.talk 1328
.buy 30 Ice Cold Milk##1179
step
|fly Moonbrook
step
goto Westfall,36.2,90.0
.talk 4305
.buy 1 Recipe: Clam Chowder##5528
step
#include "hearth_oldtown"
step
#include "auctioneer"
.buy 25 Bear Meat##3173
.buy 30 Clam Meat##5503
#include go_farm,skill="Cooking",req="75",goto="cook_75-130_farm"
next "cook_75-130_skill"
// GATHER: 25 Bear Meat, 30 Clam Meat
step
label "cook_75-130_farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
goto Elwynn Forest,80.8,59.2
.from Young Forest Bear##822+
.collect 25 Bear Meat##3173
'You can find more at [85.0,62.1]
'You can find more at [88.5,77.9]
'You can find more at [83.2,84.9]
'You can find more at [48.5,76.5]
'You can find more at [69.5,63.8]
step
#include "hearth_oldtown"
step
label "farm2"
'Skipping 2nd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "rideto_ruttheranvillage"
step
|fly Blackfathom Camp
step
label "farming"
goto Ashenvale,10.7,14.5
.from Wrathtail Wave Rider##3713+, Wrathtail Sorceress##3717+, Spined Crawler##3814+, Mystlash Hydra##3721+, Clattering Crawler##3812+
..collect Small Barnacled Clam##5523 |use Small Barnacled Clam##5523 |n
.' Click Clams in your bags.
.collect 30 Clam Meat##5503
step
label "exit"
#include "hearth_oldtown"
// CREATE: 25 Blood Sausage, 30 Clam Chowder
step
label "cook_75-130_skill"
'Use the Recipe: Blood Sausage in your bags |use Recipe: Blood Sausage##3679
.learn Blood Sausage##3371
step
#include "cast_campfire"
.create 25 Blood Sausage##3371,Cooking,100
step
'Use the Recipe: Clam Chowder in your bags |use Recipe: Clam Chowder##5528
.learn Clam Chowder##6501
step
#include "cast_campfire"
.create 30 Clam Chowder##6501,Cooking,130
// ----------
// 130 - 225
// ----------
// TRAIN: Expert Cooking
step
title + Cooking 130-225
label "cook_130-225"
#include "trainer_Cooking"
|skillmax Cooking,225
step
goto 76.6,52.9
.talk 340
.buy 1 Recipe: Curiously Tasty Omelet##3682
step
'Use the Recipe: Curiously Tasty Omelet in your bags |use Recipe: Curiously Tasty Omelet##3682
.learn Curiously Tasty Omelet##3376
step
|fly Rebel Camp
step
goto Arathi Highlands,40.4,48.8
.talk 2810
.buy 1 Recipe: Roast Raptor##12228
step
#include "hearth_oldtown"
step
#include "auctioneer"
.buy 48 Raptor Egg##3685
.buy 56 Raptor Flesh##12184
#include go_farm,skill="Cooking",req="130",goto="cook_130-225_farm"
next "cook_130-225_skill"
// GATHER: 48 Raptor Egg, 56 Raptor Flesh
step
label "cook_130-225_farm"
|fly Menethil Harbor
step
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
goto Wetlands,33.7,22.6
.from Highland Scytheclaw##41401+
.from Highland Razormaw##41400+
.collect 48 Raptor Egg##3685
step
label "farm2"
'Skipping 2nd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
goto Wetlands,6.4,62.2 |n
'Ride the boat to Theramore Isle |goto Dustwallow Marsh |noway |c
step
|fly Marshal's Stand
step
label "farming"
goto 66.9,60.1
.from Ravasaur Runner##6506+, Ravasaur##6505+, Venomhide Ravasaur##6508+, Ravasaur Hunter##6507+
.collect 56 Raptor Flesh##12184
step
label "exit"
#include "hearth_oldtown"
// CREATE: 48 Curiously Tasty Omelet, 56 Roast Raptor
step
label "cook_130-225_skill"
#include "cast_campfire"
.create 48 Curiously Tasty Omelet##3376,Cooking,175
step
'Use the Recipe: Roast Raptor in your bags |use Recipe: Roast Raptor##12228
.learn Roast Raptor##15855
step
#include "cast_campfire"
.create 56 Roast Raptor##15855,Cooking,225 
// ----------
// 225 - 285
// ----------
// TRAIN: Artisan Cooking
step
title + Cooking 225-285
label "cook_225-285"
#include "trainer_Cooking"
|skillmax Cooking,300
step
#include "rideto_ruttheranvillage"
step
|fly Talonbranch Glade
step
goto Felwood,61.2,26.5
.talk 2803
.buy 1 Recipe: Monster Omelet##16110
step
#include "hearth_oldtown"
step
#include "auctioneer"
.buy 25 Giant Egg##12207
.buy 41 Bear Flank##35562
#include go_farm,skill="Cooking",req="225",goto="cook_225-285_farm"
next "cook_225-285_skill"
// GATHER: 25 Giant Egg, 41 Bear Flank
step
label "cook_225-285_farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "rideto_ruttheranvillage"
step
|fly Talonbranch Glade
step
label "farming"
goto Felwood,53.1,83.0
.from Angerclaw Bear##8956+
.collect 41 Bear Flank##35562
.' You can find more at [57.1,84.6]
.' You can find more at [46.2,83.3]
.from Ironbeak Owl##7097+, Ironbeak Hunter##7099+ |n
.collect 25 Giant Egg##12207 |opt |tip Save any Giant Eggs you get for later
step
#include "hearth_oldtown"
step
label "farm2"
'Skipping 2nd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "port_blastedlands"
step
'Go north to Swamp of Sorrows |goto Swamp of Sorrows |noway |c
step
label "farming"
goto Swamp of Sorrows,79.7,28.6
.from Swampstrider##45825+
.collect 25 Giant Egg##12207
step
label "exit"
#include "hearth_oldtown"
// CREATE: 25 Monster Omelet, 41 Juicy Bear Burger
step
label "cook_225-285_skill"
'Use the Recipe: Monster Omelet in your bags |use Recipe: Monster Omelet##16110
.learn Monster Omelet##15933
step
#include "cast_campfire"
.create 25 Monster Omelet##15933,Cooking,250
step
#include "trainer_Cooking"
.learn Juicy Bear Burger##46688
step
#include "cast_campfire"
.create 41 Juicy Bear Burger##46688,Cooking,285
// ----------
// 285 - 350
// ----------
// TRAIN: Master Cooking, CREATE: 15 Smoked Desert Dumplings
step
title + Cooking 285-350
label "cook_285-350"
#include "trainer_Cooking"
|skillmax Cooking,375
step
#include "rideto_ratchet"
step
|fly Cenarion Hold
step
goto 55.4,36.6
.talk 15174
..accept 8307
step
goto 43.6,42.0
'Click on the Sandy Cookbook |tip It looks like a book lying on a crate 
..turnin 8307
..accept 8313
step
goto 55.4,36.6
.talk 15174
..turnin 8313
.learn Smoked Desert Dumplings##24801
step
goto 49.1,46.1
.from Dredge Crusher##11741+
.collect 15 Sandworm Meat##20424
.' You can also get them off Dredge Strikers at [54.1,57.8]
step
#include "hearth_oldtown"
step
#include "cast_campfire"
.create 15 Smoked Desert Dumplings##24801,Cooking,300
step
#include "port_blastedlands"
step
#include "darkportal"
step
|fly Honor Hold
step
goto Hellfire Peninsula,54.2,63.6
.talk 16826
.buy 1 Recipe: Ravager Dog##27688
step
'Use the Recipe: Ravager Dog in your bags |use Recipe: Ravager Dog##27688
.learn Ravager Dog##33284
step
|fly Telaar
step
goto Nagrand,56.2,73.3
.talk 20096
.buy 1 Recipe: Talbuk Steak##27693
step
|fly Shattrath
step
#include "goto_shatt_auctioneer"
.buy 28 Ravager Flesh##27674
.buy 28 Talbuk Venison##27682
#include go_farm,skill="Cooking",req="285",goto="cook_285-350_farm"
next "cook_285-350_skill"
// GATHER: 28 Ravager Flesh, 28 Talbuk Venison
step
label "cook_285-350_farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Temple of Telhamat
step
label "farming"
goto Hellfire Peninsula,22.5,65.1
.from Quillfang Ravager##16934+
.from Quillfang Skitterer##19189+
.collect 28 Ravager Flesh##27674
step
label "farm2"
|fly Telaar
step
goto 72.2,38.4
.from Talbuk Stag##17130
.' You can find more Talbuk Stags at [70.8,46.4]
.' You can find more Talbuk Stags at [53.1,25.0]
.collect 28 Talbuk Venison##27682
// CREATE: 28 Ravager Dog, 28 Talbuk Steak
step
label "cook_285-350_skill"
#include "hearth_oldtown"
step
#include "cast_campfire"
.create 28 Ravager Dog##33284,Cooking,325
step
'Use the Recipe: Talbuk Steak in your bags |use Recipe: Talbuk Steak##27693
.learn Talbuk Steak##33289
step
#include "cast_campfire"
.create 28 Talbuk Steak##33289,Cooking,350
// ----------
// 350 - 400
// ----------
// TRAIN: Grand Master Cooking
step
title + Cooking 350-400
label "cook_350-400"
#include "trainer_Cooking"
|skillmax Cooking,450
.learn Rhino Dogs##45553
step
#include "rideto_borean"
step
goto 57.9,71.5
.talk 26989
..accept 13088 |tip This quest is only available to you if you have 350+ Cooking skill.
step
goto 51.7,68.4
.from Wooly Rhino Matriarch##25487+, Wooly Rhino Calf##25488+, Wooly Rhino Bull##25489+
.get 4 Chilled Meat |q 13088/1
.' You can find more at [51.5,68.8]
.' You can find more at [51.5,68.8]
.' You can find more at [49.8,67.7]
.' You can find more at [46.9,70.7]
.' You can find more at [44.2,71.0]
.' You can find more at [41.1,70.7]
step
goto 57.9,71.5
.talk 26989
..turnin 13088
step
|fly Nesingwary Base Camp
// START PREQUESTS
step
goto 27.2,59.8
.talk 28032
..accept 12524
step
goto 25.4,58.4
.talk 28033
..accept 12522
step
goto 38.7,56.7
.' Click the Flying Machine Engine |tip It's an engine sitting on the ground, next to a crashed plane.
.get Flying Machine Engine |q 12522/1
step
goto 25.4,58.5
.talk 28033
..turnin 12522
..accept 12523
step
goto 32.7,46.9
.' Click the Venture Co. Spare Parts |tip They look like metal assorted parts on the ground around this area.
.get 7 Venture Co. Spare Parts |q 12523/1
step
goto 37.4,46.1
.kill 15 Venture Company member |q 12524/1
step
goto 25.4,58.4
.talk 28033
..turnin 12523
step
goto Sholazar Basin,27.2,59.8
.talk 28032
..turnin 12524
..accept 12525
step
goto Sholazar Basin,36.1,50.5
.kill Foreman Swindlegrin |q 12525/1
.kill Meatpie |q 12525/2
step
goto 27.2,59.8
.talk 28032
..turnin 12525
step
goto 26.7,59
.talk 28031
..accept 12549
step
goto 27.1,58.6
.talk 27986
..accept 12520
step
goto 28,56
.kill 15 Dreadsaber |q 12549/1
.kill 15 Shardhorn Rhino |q 12520/1
.' You can find more Rhino's and Dreadsabers around 38.2,45.3
step
goto 27.1,58.6
.talk 27986
..turnin 12520
step
goto 26.7,59
.talk 28031
..turnin 12549
// END PREQUESTS
step
goto 26.8,60.1
.talk 29157
..accept 12634
step
goto 37.6,61.8
.' Click the Sturdy Vines|tip They look like brown vines that hang from trees around this area.  Sometimes a Dwarf will fall out and give you fruit you need.
.' Click the fruit that falls to the ground or talk to the dwarf that falls
.get Orange |q 12634/1
.get 2 Banana Bunch|q 12634/2
.get Papaya |q 12634/3
step
goto 26.8,60.1
.talk 29157
..turnin 12634
..accept 12644
step
goto 26.7,60
.talk 28566
..'Tell him you are ready to start the distillation process
.' Click the items on the ground or on the machine that he yells at you during the process, it's random
.' Click the barrel on the ground when the process is done
.get Thunderbrew's Jungle Punch|q 12644/1
step
goto 26.8,60.1
.talk 29157
..turnin 12644
..accept 12645
step
goto 27.4,59.4
.' Use your Jungle Punch Sample on Hadrius Harlowe|use Jungle Punch Sample##38697|tip Standing next to a tiki torch.
.' Complete Hadrius' taste test|goal Hadrius' taste test|q 12645/2
step
goto 27.1,58.6
.' Use your Jungle Punch Sample on Hemet Nesingwary|use Jungle Punch Sample##38697|tip Standing in front of a tent.
.' Complete Hemet's taste test|goal Hemet's taste test|q 12645/1
step
goto 50.5,62.1
.' Use your Jungle Punch Sample on Tamara Wobblesprocket |use Jungle Punch Sample##38697
.' Complete Tamara's taste test |q 12645/3
step
goto 26.8,60.1
.talk 29157
..turnin 12645
step
goto Sholazar Basin,25.3,58.5
.talk 28037
.' Fly to Dalaran |goto Dalaran |noway |c
step
goto Dalaran,43.2,24.4
.talk 32516
..accept 13571 |instant
step
goto 43.1,57.0
.talk 29547
.buy 50 Savory Snowplum##35948
.buy 100 Tundra Berries##35949
step
#include "hearth_oldtown"
step
#include "auctioneer"
.buy 24 Chilled Meat##43013
.buy 16 Rhino Meat##43012
#include go_farm,skill="Cooking",req="350",goto="cook_350-400_farm"
next "cook_350-400_skill"
// GATHER: 24 Chilled Meat, 16 Rhino Meat
step
label "cook_350-400_farm"
#include "rideto_borean"
step
goto Borean Tundra,46.7,43.6
.from Wooly Rhino Calf##25488+, Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+
.collect 24 Chilled Meat##43013
.collect 16 Rhino Meat##43012
step
|fly Dalaran
// CREATE: 24 Northrend Stew, 16 Rhono Dogs, 50 Kungaloosh
step
label "cook_350-400_skill"
#include "cast_campfire"
.create 24 Northern Stew##57421,Cooking,365
step
#include "cast_campfire"
.create 16 Rhino Dogs##45553,Cooking,375
step
#include "cast_campfire"
.create 50 Kungaloosh##53056,Cooking,400
// ----------
// 400 - 425
// ----------
// TRAIN
step
label "cook_400-425"
'To get your Cooking skill to level 425, you will need to buy a recipe that costs 3 Dalaran Cooking Awards. |tip You can get Dalaran Cooking Awards by completing the Cooking Dailies section of this guide each day.  When you complete a Cooking daily, you will receive 1 Dalaran Cooking Award and a Small Spice Bag.  Dalaran Cooking Awards can sometimes be found in those Small Spice Bags.
'You will also need 25 Northern Spices. |tip Northern Spices can be found in the Small Spice Bags you receive for completing Cooking dailies.
'Use the Cooking Dailies guide section to complete Cooking dailies until you have gathered:
.collect 25 Northern Spices##43007
step
#include "rideto_borean"
step
|fly Dalaran
step
goto Dalaran,40.7,66.0
.talk 31032
.buy 1 Recipe: Blackened Worg Steak##43032
step
'Use the Recipe: Blackened Worg Steak in your bags |use Recipe: Blackened Worg Steak##43032
.learn Blackened Worg Steak##57438
step
goto Dalaran,38.8,25.2
.talk 35594
.buy 25 Worg Haunch##43011
#include go_farm,skill="Cooking",req="400",goto="cook_400-425_farm"
next "cook_400-425_skill"
// GATHER: 25 Worg Haunch
step
label "cook_400-425_farm"
|fly Amberpine Lodge
step
goto Grizzly Hills,25.4,55.4
.from Graymist Hunter##26592+
.collect 25 Worg Haunch##43011
.' You can find more at [14.9,48.9]
.' You can find more at [17.9,65.7]
step
|fly Dalaran
// CREATE: 25 Blackened Worg Steak
step
label "cook_400-425_skill"
#include "hearth_oldtown"
step
#include "cast_campfire"
.create 25 Blackened Worg Steak##57438,Cooking,425
// ----------
// 425 - 525
// ----------
// TRAIN: Illustrious Grand Master Cooking
step
title + Cooking 425-450
label "cook_425-525"
#include "trainer_Cooking"
|skillmax Cooking,525
.learn Blackened Surprise##88006
step
#include "auctioneer"
.buy 25 Toughened Flesh##62778
#include go_farm,skill="Cooking",req="425",goto="cook_425-450_farm"
next "cook_425-450_skill"
// GATHER: 25 Toughened Flesh
step
label "cook_425-450_farm"
#include "port_hyjal"
step
goto Mount Hyjal,28.2,30.8
.from Hyjal Stag##39588+
.collect 25 Toughened Flesh##62778
step
#include "hearth_hub"
// CREATE: 25 Blackended Surprise
step
label "cook_425-450_skill"
#include "cast_campfire"
.create 25 Blackened Surprise##88006,Cooking,450
step
title + Cooking 450-500
label "cook_450-500"
'To get your Cooking skill maxed at level 525, you will need to buy three recipes that costs 3 Chef's Awards each. |tip You can get Chef Awards by completing the Stormwind Cooking Dailies section of this guide each day.  When you complete a Cooking daily, you will receive 1 Chef's Award.
'Use the Stormwind Cooking Dailies guide section to complete Cooking dailies until you have gathered 3 Chef's Awards |confirm
step
goto Stormwind City,50.4,71.9
.talk 49701
.buy 1 Recipe: Whitecrest Gumbo##65406
step
'Use the Recipe: Seasoned Crab in your bags |use Recipe: Seasoned Crab##65413
.learn Whitecrest Gumbo##65406
step
#include "auctioneer"
.buy 62 Blood Shrimp##62791
#include go_farm,skill="Cooking",req="450",goto="cook_450-500_farm"
next "cook_450-500_skill"
// GATHER: 62 Blood Shrimp
step
label "cook_450-500_farm"
#include "port_vashjir"
step
goto Kelp'thar Forest,49.1,28.0
.from Zin'jatar Raider##39313
.' Open the Abyssal Clam that you get |use Abyssal Clam##52340 |n
.collect 62 Blood Shrimp##62791
step
#include "hearth_oldtown"
// CREATE: 31 Whitecrest Gumbo, 31 Hearty Seafood Soup
step
label "cook_450-500_skill"
#include "cast_campfire"
.create 31 Whitecrest Gumbo##88047,Cooking,475
step
goto Stormwind City,50.4,71.9
.talk 49701
.buy 1 Recipe: Hearty Seafood Soup##65418
step
'Use the Recipe: Hearty Seafood Soup in your bags |use Recipe: Hearty Seafood Soup##65406
.learn Hearty Seafood Soup##88021
step
#include "cast_campfire"
.create 31 Hearty Seafood Soup##88021,Cooking,500
step
title + Cooking 500-525
label "cook_500_525"
goto Stormwind City,50.4,71.9
.talk 49701
.buy 1 Recipe: Grilled Dragon##65428
step
'Use the Recipe: Grilled Dragon in your bags |use Recipe: Grilled Dragon##65428
.learn Grilled Dragon##88020
step
#include "auctioneer"
.buy 35 Dragon Flank##62782
#include go_farm,skill="Cooking",req="500",goto="cook_500-525_farm"
next "cook_500-525_skill"
// GATHER: 35 Dragon Flank
step
label "cook_500-525_farm"
#include "port_twilight"
step
goto Twilight Highlands,63.2,76.2
.from Obsidian Charscale##47797,Obsidian Viletongue##47796
.collect 35 Dragon Flank##62782
step
#include "hearth_oldtown"
// CREATE: 35 Grilled Dragon
step
label "cook_500-525_skill"
#include "cast_campfire"
.create 35 Grilled Dragon##88020,Cooking,525
step
title + Cooking 525
label "cook_525"
'Congratulations, you are now a level 525 Cook!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Professions Guides\\Cooking\\Cooking Dailies\\Stormwind Cooking Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the Cooking daily quests to earn Dalaran Cooking Awards and gather Northern Spices.
daily
step
#include "questgiver_SWCooking"
..accept 26190 |daily |or
..accept 26192 |daily |or
..accept 26177 |daily |or
..accept 26153 |daily |or
..accept 26183 |daily |or
step
goto 54.9,69.0
.' Click Barrel of Canal Fish
.get 5 Gigantic Catfish##57245 |q 26190/1
.' You can find them at [68.8,64.8]
.' You can find them at [62.8,50.6]
.' You can find them at [46.5,58.3]
.' You can find them at [26.2,46.7]
.' You can find them at [26.3,20.3]
.' You can find them at [71.7,22.6]
.' You can find them at [70.6,39.5]
.' You can find them at [74.4,49.3]
step
goto Stormwind City,50.8,95.2
.' Click Confectioners' Sugar
.get 4 Confectioners' Sugar |q 26192/1
'You can find more at:
'[41.2,81.8] 
'[40.8,83.0]
'[64.9,71.5]
step
goto 46.8,70.2
.' Click on the Canal Crabs in the water |tip If you have a large mount such as a drake or mammoth you can walk along the bottom of the water and not get dismounted
.get 10 Canal Crab## |q 26177/1
'You can find more around:
'[57.2,76.6] 
'[58.0,63.0]
'[48.6,65.0] 
'[60.6,45.4]
'[69.6,50.6] 
'[67.6,63.8]
step
goto 54.4,9.4
.' Click on the Stormwind Pumpkins around this area
.get 6 Stormwind Pumpkin##57137 |q 26153/1
step
goto 55.0,73.4
.' Click on the Juicy Apples on the ground, around the tree
.get 12 Juicy Apple##57197 |q 26183/1
'You can find more trees at:
'[55.0,74.5] 
'[49.8,78.4]
'[51.4,81.6]
'[49.2,83.1]
'[44.0,74.8] 
'[53.8,63.4]
'[59.9,58.8]
'[57.2,56.0]
'[49.1,51.3]
'[58.2,43.0]
'[72.3,67.4] 
'[76.1,62.4]
'[72.6,55.4]
'[65.3,61.9]
'[64.7,75.9] 
step
#include "questgiver_SWCooking"
..turnin 26190
step
#include "questgiver_SWCooking"
..turnin 26192 
step
#include "questgiver_SWCooking"
..turnin 26177 
step
#include "questgiver_SWCooking"
..turnin 26153 
step
#include "questgiver_SWCooking"
..turnin 26183
step
.' You have completed the maximum amount of Stormwind Cooking dailies you can do today.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Professions Guides\\Cooking\\Cooking Dailies\\Dalaran Cooking Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the Cooking daily quests to earn Dalaran Cooking Awards and gather Northern Spices.
daily
step
goto Dalaran,40.8,65.4
.talk 28705
.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day, and they all require you have 350+ Cooking skill:
..accept 13103 |daily |or
..accept 13101|daily |or
..accept 13100|daily |or
..accept 13107|daily |or
..accept 13102|daily |or
step
goto 54.7,31.5
.' Click the Aged Dalaran Limburger|tip They look like piles and pieces of yellow cheese on the tables inside this building.
.collect 1 Aged Dalaran Limburger##43137 |q 13103
.' Click the Half Full Glasses of Wine|tip They look like small blue-ish wine glasses sitting on tables, and on the ground, inside this building.  They spawn in random locations.
.collect 6 Half Full Dalaran Wine Glass##43138 |q 13103
.' You can find more Half Full Glasses of Wine inside the building at 49.4,39.3
step
'Use your Empty Cheese Serving Platter in your bags|use Empty Cheese Serving Platter##43139
.get 1 Wine and Cheese Platter |q 13103/1
step
goto 55.0,30.8
.' Click a Full Jug of Wine|tip They look like small blue-ish green jugs sitting on the ground inside this building. They might also be up the stairs.  They spawn in random locations.
.get 1 Jug of Wine |q 13101/2
step
goto Dragonblight,30.0,49.8
.from Rabid Grizzly##26643+, Blighted Elk##26616+
.collect 4 Chilled Meat##43013 |q 13101
step
#include "cast_campfire"
.create 4 Northern Stew##57421,Cooking,4 total |n
.get 4 Northern Stew |q 13101/1
step
goto Dalaran/2 59.5,43.6
..collect 4 Infused Mushroom##43100 |q 13100 |tip They spawn randomly along the sewer lines.
step
goto Dragonblight,30.0,49.8
.from Rabid Grizzly##26643+, Blighted Elk##26616+
.collect 2 Chilled Meat##43013 |q 13100
step
#include "cast_campfire"
'Use your Meatloaf Pan in your bags|use Meatloaf Pan##43101|tip You will need a cooking fire to do this.
.get 1 Infused Mushroom Meatloaf |q 13100/1
step
goto Dalaran,67.7,40.0
.' Click the Wild Mustard|tip They look like small, and kind of hard to see, bushy yellow flowers on the ground around this area.  They spawn randomly in grassy areas.
..collect 4 Wild Mustard##43143 |q 13107
.' You can find more Wild Mustard flowers:
..' At [50.3,48.3]
..' At [37.2,43.9]
step
goto Borean Tundra,46.7,43.6
.from Wooly Rhino Calf##25488+, Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+
..collect 4 Rhino Meat##43012 |q 13107
step
#include "cast_campfire"
.create Rhino Dogs##45553,Cooking,4 total |n
..collect 4 Rhino Dogs##34752 |q 13107
step
'Use your Empty Picnic Basket in your bags|use Empty Picnic Basket##43142
.get 1 Mustard Dog Basket! |q 13107/1
step
goto Crystalsong Forest,26.7,44.1
.' Click the Crystalsong Carrots|tip They looke like carrots sticking out of the ground, at the base of trees around this area underneath Dalaran.  They spawn in random locations around this area.
..collect 4 Crystalsong Carrot##43148 |q 13102
step
goto Dragonblight,30.0,49.8
.from Rabid Grizzly##26643+, Blighted Elk##26616+
..collect 4 Chilled Meat##43013 |q 13102
step
#include "cast_campfire"
'Use your Stew Cookpot in your bags|use Stew Cookpot##43147|tip You will need a cooking fire to do this.
..get 1 Vegetable Stew |q 13102/1
step
goto Dalaran,36.6,27.8
.talk 28718
..turnin 13103
step
goto Dalaran,48.6,37.5
.talk 29049
..turnin 13101
step
goto Dalaran,52.3,55.6
.talk 29527
..turnin 13100
step
goto Dalaran,68.6,42.0
.talk 28160
..turnin 13107
step
#include "dalaran_enter_sewer",q="|q 13102"
step
goto Dalaran,35.5,57.6
.talk 29532
..turnin 13102
step
.' You have completed the maximum amount of Dalaran Cooking dailies you can do today.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Professions Guides\\Enchanting\\Enchanting 1-525 Leveling Guide",[[
description This guide will walk you through leveling your Enchanting skill from 1-525.
author support@zygorguides.com
completion skill,Enchanting,525
#include "profession_single_start",prof1="Enchanting"
step
label "route"
'Redirecting to Enchanting 1-75 |next "ench_1_75" |only if skill("Enchanting")<75
'Redirecting to Enchanting 75-135 |next "ench_75_135" |only if skill("Enchanting")>=75 and skill("Enchanting")<135
'Redirecting to Enchanting 135-205 |next "ench_135_205" |only if skill("Enchanting")>=135 and skill("Enchanting")<205
'Redirecting to Enchanting 205-300 |next "ench_205_300" |only if skill("Enchanting")>=205 and skill("Enchanting")<300
'Redirecting to Enchanting 300-351 |next "ench_300_351" |only if skill("Enchanting")>=300 and skill("Enchanting")<351
'Redirecting to Enchanting 351-426 |next "ench_351_426" |only if skill("Enchanting")>=351 and skill("Enchanting")<426
'Redirecting to Enchanting 426-525 |next "ench_426_525" |only if skill("Enchanting")>=426 and skill("Enchanting")<525
'Redirecting to Enchanting finale |next "ench_525" |only if default
// ----------
// 1 - 75
// ----------
// TRAIN: Apprentice Enchanter
step
title +Enchanting 1-75
label "ench_1_75"
#include "trainer_Enchanting"
.skillmax Enchanting,75
step
#include "vendor_Enchanting"
.buy 1 Copper Rod##6217
step
#include "home_TradeDistrict"
step
#include "auctioneer"
.buy 138 Strange Dust##10940
.buy 1 Lesser Magic Essence##10938
#include "go_disenchant",skill="Enchanting",req="1",goto="ench_1_75_farm"
next "ench_1_75_skill"
// DISENCHANT: 138 Strange Dust, 1 Lesser Magic Essence
step
label "ench_1_75_farm"
'Disenchant any uncommon quality (green) weapons and armor with an item level of 5-15. |cast Disenchant##13262
.collect 125 Strange Dust##10940
.collect 1 Lesser Magic Essence##10938
// ENCHANT: 1 Runed Copper Rod, 48 Bracer - Minor Health
step
label "ench_1_75_skill"
.create 1 Runed Copper Rod##7421,Enchanting,2 |tip Save the Runed Copper Rod in your bags, you will need it to enchant items. 
step
.create 76 Enchant Bracer - Minor Health##7418,Enchanting,75 |tip You can keep enchanting the same item repeatedly.
// ----------
// 75 - 135
// ----------
// TRAIN: Journeyman Enchanter
step
title +Enchanting 75-135
label "ench_75_135"
#include "trainer_Enchanting"
.skillmax Enchanting,150 
step
#include "vendor_Enchanting"
.buy 9 Simple Wood##4470
step
.create 25 Enchant Bracer - Minor Health##7418,Enchanting,90 |tip You can keep enchanting the same item repeatedly.
step
#include "auctioneer"
.buy 1 Silver Rod##6338 |tip You will need to buy this item. It cannot be aquired through Disenchanting.
.buy 12 Greater Magic Essence##10939
.buy 25 Lesser Astral Essence##10998
#include "go_disenchant",skill="Enchanting",req="1",goto="ench_75_135_farm"
next "ench_75_135_skill"
// DISENCHANT: 12 Greater Magic Essence, 25 Lesser Astral Essence
step
label "ench_75_135_farm"
'Disenchant any uncommon quality (green) weapons and armor with an item level of 16-20. |cast Disenchant##13262
.collect 12 Greater Magic Essence##10939
'Disenchant any uncommon quality (green) weapons and armor with an item level of 21-25. |cast Disenchant##13262
.collect 25 Lesser Astral Essence##10998
// ENCHANT: 10 Bracer - Minor Stamina, 1 Runed Silver Rod, 9 Greater Magic Wand, 25 Cloak - Minor Agility
step
label "ench_75_135_skill"
#include "trainer_Enchanting"
.learn Enchant Bracer - Minor Stamina##7457
step
.create 10 Enchant Bracer - Minor Stamina##7457,Enchanting,100 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Runed Silver Rod##7795
step
.create 1 Runed Silver Rod##7795,Enchanting,101
step
#include "trainer_Enchanting"
.learn Greater Magic Wand##14807
step
.create 9 Greater Magic Wand##14807,Enchanting,110
step
#include "rideto_ruttheranvillage"
step
|fly Astranaar
step
goto 35.1,52.1
.talk 3954
.buy 1 Formula: Enchant Bracer - Lesser Strength##11101
.buy 1 Formula: Enchant Cloak - Minor Agility##11039
step
'Learn Formula: Enchant Cloak - Minor Agility |use Formula: Enchant Cloak - Minor Agility##11039 |n
.create 25 Enchant Cloak - Minor Agility##13419,Enchanting,135
// ----------
// 135 - 205
// ----------
// TRAIN: Expert Enchanter
step
title +Enchanting 135-205
label "ench_135_205"
#include "hearth_hub"
step
#include "trainer_Enchanting"
.skillmax Enchanting,225 |tip You must be at least level 20.
.learn Enchant Bracer - Lesser Stamina##13501
step
#include "auctioneer"
.buy 60 Soul Dust##11083
.buy 1 Golden Rod##11128 |tip You will need to buy this item or have a blacksmith make it for you. It cannot be aquired through Disenchanting.
.buy 1 Iridescent Pearl##5500
.buy 2 Greater Astral Essence##11082
.buy 20 Lesser Mystic Essence##11134
.buy 162 Vision Dust##11137
.buy 1 Truesilver Rod##11144 |tip You will need to buy this item or have a blacksmith make it for you. It cannot be aquired through Disenchanting.
.buy 1 Black Pearl##7971
#include "go_disenchant",skill="Enchanting",req="1",goto="ench_135_205_farm"
next "ench_135_205_skill"
// DISENCHANT: 122 Soul Dust, 1 Iridescent Pearl, 2 Greater Astral Essence, 25 Lesser Mystic Essence, 155 Vision Dust, 1 Black Pearl
step
label "ench_135_205_farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
'Disenchant any uncommon quality (green) armor and weapons with an item level of 26-30. |cast Disenchant##13262
.collect 60 Soul Dust##11083
.collect 2 Greater Astral Essence##11082
'Disenchant any uncommon quality (green) weapons and armor with an item level of 31-35. |cast Disenchant##13262
.collect 20 Lesser Mystic Essence##11134
'Disenchant any uncommon quality (green) armor and weapons with an item level of 36-40. |cast Disenchant##13262
.collect 162 Vision Dust##11137
step
label "farm2"
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Refuge Pointe
step
'Go north west to Hillsbrad Foothills |goto Hillsbrad Foothills |noway |c
step
label "farming"
goto 52.1,74.8
.from Daggerspine Shorehunter##2369+, Daggerspine Siren##2371+
.collect 1 Iridescent Pearl##5500
step
label "farm3"
'Skipping 3rd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "hearth_hub"
step
#include "rideto_ratchet"
step
|fly Gadgetzan
step
label "farming"
goto 54.5,40.3
.from Tidal Strider##39022+
.collect 1 Black Pearl##7971 |use Big-Mouth Clam##7973
step
label "exit"
#include "hearth_hub"
// ENCHANT: 20 Bracer - Lesser Stamina, 1 Runed Golden Rod, 9 Bracer - Lesser Strength, 20 Bracer - Spirit, 22 Bracer - Strength, 1 Runed Truesilver Rod
step
label "ench_135_205_skill"
.create 20 Enchant Bracer - Lesser Stamina##13501,Enchanting,155 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Runed Golden Rod##13628
step
.create 1 Runed Golden Rod##13628,Enchanting,156 |tip Save the Runed Golden Rod in your bags, you will need it to enchant items.
step
'Click the Formula: Enchant Bracer - Lesser Strength recipe in your bags |use Formula: Enchant Bracer - Lesser Strength##11101
.learn Enchant Bracer - Lesser Strength##13536
step
.create 9 Enchant Bracer - Lesser Strength##13536,Enchanting,165 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Bracer - Spirit##13642
step
.create 20 Enchant Bracer - Spirit##13642,Enchanting,185 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Bracer - Strength##13661
step
.create 22 Enchant Bracer - Strength##13661,Enchanting,204 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Runed Truesilver Rod##13702
step
.create 1 Runed Truesilver Rod##13702,Enchanting,205 |tip Save the Runed Truesilver Rod in your bags, you will need it to enchant items.
// ----------
// 205 - 300
// ----------
// TRAIN: Artisan Enchanter
step
title +Enchanting 205-300
label "ench_205_300"
#include "trainer_Enchanting"
.skillmax Enchanting,300 
.learn Enchant Cloak - Greater Defense##13746
step
goto Stormwind City,62.8,75.1
.talk 1257
.buy 15 Crystal Vial##3371
step
#include "auctioneer"
.buy 15 Lesser Nether Essence##11174
.buy 120 Dream Dust##11176 -- Increased from 85
.buy 60 Lesser Eternal Essence##16202 -- Increased from 30
.buy 1 Arcanite Rod##16206 |tip You will need to buy this item or have a blacksmith make it for you. It cannot be aquired through Disenchanting.
.buy 10 Illusion Dust##16204
.buy 8 Greater Eternal Essence##16203
.buy 8 Large Brilliant Shard##14344
#include "go_disenchant",skill="Enchanting",req="1",goto="ench_205_300_farm"
next "ench_205_300_skill"
// DISENCHANT: 25 Lesser Nether Essence, 230 Dream Dust, 8 Lesser Eternal Essence, 10 Illusion Dust, 8 Greater Eternal Essence, 8 Large Briliant Shard
step
label "ench_205_300_farm"
'Disenchant any uncommon quality (green) weapons and armor with an item level of 41-45. |cast Disenchant##13262
.collect 15 Lesser Nether Essence##11174
'Disenchant any uncommon quality (green) green armor and weapons with an item level of 46-50. |cast Disenchant##13262
.collect 120 Dream Dust##11176
'Disenchant any uncommon quality (green) green weapons and armor with an item level of 51-55. |cast Disenchant##13262
.collect 60 Lesser Eternal Essence##16202
'Disenchant any uncommon quality (green) green armor and weapons with an item level of 56-60 and 61-65. |cast Disenchant##13262
.collect 10 Illusion Dust##16204
.collect 8 Greater Eternal Essence##16203
'Disenchant any rare quality (blue) items with an item level of 26-30 |cast Disenchant##13262
.collect 8 Large Brilliant Shard##14344
// ENCHANT: 20 Cloak - Greater Defense, 5 Gloves - Agility, 5 Boots - Stamina, 5 Chest - Superior Health, 10 Boots - Lesser Accuracy, 5 Enchant Bracer - Greater Strength, 10 Bracer - Greater Intellect, 15 Shield - Greater Stamina, 1 Runed Arcanite Rod
step
label "ench_205_300_skill"
.create 20 Enchant Cloak - Greater Defense##13746,Enchanting,225 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Gloves - Agility##13815
step
.create 5 Enchant Gloves - Agility##13815,Enchanting,230 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Boots - Stamina##13836
step
.create 5 Enchant Boots - Stamina##13836,Enchanting,235 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Chest: Superior Health##13858
step
.create 5 Enchant Chest: Superior Health##13858,Enchanting,240 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Boots - Lesser Accuracy##63746
step
.create 10 Enchant Boots - Lesser Accuracy##63746,Enchanting,250 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Bracer - Greater Strength##13939
step
.create 5 Enchant Bracer - Greater Strength##13939,Enchanting,255
step
#include "trainer_Enchanting"
.learn Enchant Bracer - Greater Intellect##20008
step
.create 10 Enchant Bracer - Greater Intellect##20008,Enchanting,275 |tip You can keep enchanting the same item repeatedly.
step
#include "rideto_ruttheranvillage"
step
goto Teldrassil,55.1,88.5 |n
.' Go through the Pink Portal here |goto Darnassus |noway |c
step
goto Darnassus,58.1,34.2
.talk 4229
.buy 1 Formula: Enchant Shield - Greater Stamina##16217 |n
.' Click the Formula: Enchant Shield - Greater Stamina recipe in your bags |use Formula: Enchant Shield - Greater Stamina##16217
.learn Enchant Shield - Greater Stamina##20017
step
.create 15 Enchant Shield - Greater Stamina##20017,Enchanting,299 |tip You can keep enchanting the same item repeatedly.
step
goto Darnassus,56.4,31.0
.talk 4213
.learn Runed Arcanite Rod##20051
step
'Use your Enchanting skill to create 1 Runed Arcanite Rod |create Runed Arcanite Rod##20051,Enchanting,300
// ----------
// 300 - 351
// ----------
// TRAIN: Master Enchanter
step
title +Enchanting 300-351
label "ench_300_351"
#include "trainer_Enchanting"
.skillmax Enchanting,375 
.learn Runed Fel Iron Rod##32664
step
#include "auctioneer"
.buy 1 Fel Iron Rod##25843 |tip You will need to buy this item or have a blacksmith make it for you. It cannot be aquired through Disenchanting.
.buy 165 Arcane Dust##22445
.buy 34 Greater Planar Essence##22446
.buy 18 Large Prismatic Shard##22449
.buy 40 Lesser Planar Essence##22447
.buy 15 Nightmare Vine##22792 |tip You will need to buy this item. It cannot be aquired through Disenchanting.
.buy 1 Adamantite Rod##25844 |tip You will need to buy this item or have a blacksmith make it for you. It cannot be aquired through Disenchanting.
.buy 1 Primal Might##23571 |tip You will need to buy this item or have a alchemist transmute it for you. It cannot be aquired through Disenchanting.
#include "go_disenchant",skill="Enchanting",req="1",goto="ench_300_351_farm"
next "ench_300_351_skill" 
// DISENCHANT: 165 Arcane Dust, 40 Lesser Planar Essence, 34 Greater Planar Essence, 18 Large Prismatic Shard
step
label "ench_300_351_farm"
'Disenchant any uncommon quality (green) armor and weapons with an item level of 80-99. |cast Disenchant##13262
.collect 165 Arcane Dust##22445
.collect 40 Lesser Planar Essence##22447
'Disenchant any uncommon quality (green) weapons and armor with an item level of 100-120. |cast Disenchant##13262
.collect 34 Greater Planar Essence##22446
'Disenchant any rare quality (green) items with an item level of 100-120. |cast Disenchant##13262
.collect 18 Large Prismatic Shard##22449
// ENCHANT: 1 Runed Fel Iron Rod, 9 Bracer - Assault, 10 Bracer- Brawn, 10 Chest - Major Spirit, 5 Shields - Major Stamina, 5 Shield - Resilence, 15 Superior Wizard Oil, 1 Runed Adamantite Rod 
step
label "ench_300_351_skill"
.create 1 Runed Fel Iron Rod##32664,Enchanting,1 total|tip Save the Runed Fel Iron Rod in your bags, you will need it to enchant items.
step
goto Darnassus,56.4,31.0
.talk 4213
.learn Enchant Bracer - Assault##34002
step
.create 9 Enchant Bracer - Assault##34002,Enchanting,310 |tip You can keep enchanting the same item repeatedly.
step
goto 56.4,31.0
.talk 4213
.learn Enchant Bracer - Brawn##27899
step
.create 10 Enchant Bracer - Brawn##27899,Enchanting,320 |tip You can keep enchanting the same item repeatedly.
step
goto 56.4,31.0
.talk 4213
.learn Enchant Chest - Major Spirit##33990
step
.create 10 Enchant Chest - Major Spirit##33990,Enchanting,330 |tip You can keep enchanting the same item repeatedly.
step
goto 56.4,31.0
.talk 4213
.learn Enchant Shield - Resilience##44383
step
.create 10 Enchant Shield - Resilience##44383,Enchanting,340 |tip You can keep enchanting the same item repeatedly.
step
goto Shattrath City,63.6,70.0
.talk 19663
.buy 1 Formula: Superior Wizard Oil##22563 |tip Save this in your bags, you will use it to learn the recipe later.
step
'Click the Formula: Superior Wizard Oil recipe in your bags |use Formula: Superior Wizard Oil##22563
.learn Superior Wizard Oil##28019
step
.create 15 Superior Wizard Oil##28019,Enchanting,350
step
#include "shatport_sw"
step
#include "trainer_Enchanting"
.learn Runed Adamantite Rod##32665
step
.create 1 Runed Adamantite Rod##32665,Enchanting,351 |tip Save the Runed Adamantite Rod in your bags, you will need it to enchant items.
step
'From here on, the enchantments can be very expensive.  You have two options:
'1.  Cast the enchantments on Enchanting Vellum. This will allow you to sell the enchantments on the Auction House to recoup some of your costs.  You can buy the Vellums from Jessara Cordell at Stormwind City,52.8,74.2
'
'2.  You could advertise to enchant items for free, using the following enchantments, as long as the player provides their own materials needed for the enchantment.  This may take longer, but would allow you to level your Enchanting skill for free.
// ----------
// 351 - 426
// ----------
// TRAIN: Grand Master Enchanter
step
title +Enchanting 351-426
label "ench_351_426"
#include "trainer_Enchanting"
.skillmax Enchanting,450 |tip You must be at least level 65.
.learn Enchant Cloak - Speed##60609
step
'Skip this step if you are going to try to level your Enchanting skill using option 2 from the previous guide step.
.'
#include "auctioneer"
.buy 632 Infinite Dust##34054
.buy 1 Eternium Rod##25845 |tip You will need to buy this item or have a blacksmith make it for you. It cannot be aquired through Disenchanting.
.buy 1 Titanium Rod##41745 |tip You will need to buy this item or have a blacksmith make it for you. It cannot be aquired through Disenchanting.
.buy 10 Crystallized Water##37705
.buy 29 Greater Cosmic Essence##34055
.buy 2 Dream Shard##34052
#include "go_disenchant",skill="Enchanting",req="1",goto="ench_351_426_farm"
next "ench_351_426_skill" 
// DISENCHANT: 632 Infinite Dust, 29 Greater Cosmis Essence, 2 Dream Shard, 10 Crystallized water
step
label "ench_351_426_farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
'Disenchant any uncommon quality (green) armor and weapons with an item level of 130-151. |cast Disenchant##13262
.collect 632 Infinite Dust##34054
'Disenchant any uncommon quality (green) weapons and armor with an item level of 152-200. |cast Disenchant##13262
.collect 29 Greater Cosmic Essence##34055
'Disenchant any rare quality (blue) items with an item level of 152-200. |cast Disenchant##13262
.collect 2 Dream Shard##34052
step
label "farm2"
'Skipping 2nd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
goto Wintergrasp,77.4,41.9
.from Glacial Spirit##30846+, Water Revenant##30877+
.collect 10 Crystallized Water##37705
.' You can find more at 64.2,58.8
.' You can find more at 44.2,56.7
.' You can find more at 28.9,50.3
step
label "exit"
#include "hearth_hub"
// ENCHANT: 10 Cloak - Speed, 18 Bracer - Striking, 1 Runed Eternium Rod, 23 Bracer - Striking, 5 Bracer - Exceptional Intellect, 10 Boot - Icewalker, 18 Cloak - Superior Agility, 5 Gloves - Expertise, 5 Boot - Greater Spirit, 5 Chest - Greater Mana Restoration, 1 Runed Titanium Rod
step
label "ench_351_426_skill"
.create 10 Enchant Cloak - Speed##60609,Enchanting,360 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Bracers - Assault##60616
step
.create 18 Enchant Bracers - Assault##60616,Enchanting,375 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Runed Eternium Rod##32667
step
.create 1 Runed Eternium Rod##32667,Enchanting,1 total |tip Save the Runed Eternium Rod in your bags, you will need it to enchant items.
step
.create 5 Enchant Bracers - Assault##60616,Enchanting,380 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Bracers - Exceptional Intellect##44555
step
.create 5 Enchant Bracers - Exceptional Intellect##44555,Enchanting,385 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Boots - Icewalker##60623
step
.create 10 Enchant Boots - Icewalker##60623,Enchanting,395 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Cloak - Superior Agility##44500
step
.create 18 Enchant Cloak - Superior Agility##44500,Enchanting,410 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Gloves - Expertise##44484
step
.create 5 Enchant Gloves - Expertise##44484,Enchanting,415 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Boots - Greater Spirit##44508
step
.create 5 Enchant Boots - Greater Spirit##44508,Enchanting,420 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Chest - Greater Mana Restoration##44509
step
.create 5 Enchant Chest - Greater Mana Restoration##44509,Enchanting,425 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Runed Titanium Rod##60619
step
.create 1 Runed Titanium Rod##60619,Enchanting,426 |tip Save the Runed Titanium Rod in your bags, you will need it to enchant items.
// ----------
// 426 - 525
// ----------
// TRAIN: Illustrious Grand Master Enchanter
step
title +Enchanting 426-525
label "ench_426_525"
#include "trainer_Enchanting"
.skillmax Enchanting,525 
.learn Enchant Boots - Earthen Vitality##74189
step
#include "auctioneer"
.buy 527 Hypnotic Dust##52555
.buy 5 Lesser Celestial Essence##52718
.buy 138 Greater Celestial Essence##52719
#include "go_disenchant",skill="Enchanting",req="1",goto="ench_426_525_farm"
next "ench_426_525_skill" 
// DISENCHANT: 503 Hypnotic Dust, 25 Lesser Celestial Essence, 95 Greater Celestial Essence, 8 Heavenly Shard, 5 Abyss Crystal
step
label "ench_426_525_farm"
'Disenchant any uncommon quality (green) armor and weapons with an item level of 272-305 and 305-333.|cast Disenchant##13262
.collect 527 Hypnotic Dust##52555
.collect 5 Lesser Celestial Essence##52718
'Disenchant any uncommon quality (green) armor and weapons with an item level of 272-305 and 305-333. |cast Disenchant##13262
.collect 138 Greater Celestial Essence##52719
'Disenchant any rare quality (blue) items with an item level of 305-346.
// ENCHANT: 14 Boot - Earth Vitality, 18 Cloak - Greater Spell Piercing, 5 Glove - Haste, 5 Boot - Haste, 10 Cloak - Intellect, 5 Glove - Intellect, 5 Boot - Major Agility, 5 Glove - Greater Expertise, 5 Shields - Mastery, 10 Bracer - Precision, 5 Boot -  Precision, 5 Bracer - Exceptional Spirit, 5 Boot - Mastery
step
label "ench_426_525_skill"
.create 14 Enchant Boots - Earthen Vitality##74189,Enchanting,440 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Cloak - Greater Spell Piercing##74192
step
.create 18 Enchant Cloak - Greater Spell Piercing##74192,Enchanting,455 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Gloves - Haste##74198
step
.create 5 Enchant Gloves - Haste##74198,Enchanting,460 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Boots - Haste##74199
step
.create 10 Enchant Boots - Haste##74199,Enchanting,465 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Cloak - Intellect##74202
step
.create 10 Enchant Cloak - Intellect##74202,Enchanting,475 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Gloves - Exceptional Strength##74212
step
.create 5 Enchant Gloves - Exceptional Strength##74212,Enchanting,480 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Boots - Major Agility##74213
step
.create 5 Enchant Boots - Major Agility##74213,Enchanting,485 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Gloves - Greater Expertise##74220
step
.create 5 Enchant Gloves - Greater Expertise##74220,Enchanting,490 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Shield - Blocking##74226
step
.create 5 Enchant Shield - Mastery##74226,Enchanting,495 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Bracer - Precision##74232
step
.create 10 Enchant Bracer - Precision##74232,Enchanting,505 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Boots - Precision##74236
step
.create 5 Enchant Boots - Precision##74236,Enchanting,510 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Bracer - Exceptional Spirit##74237
step
.create 5 Enchant Bracer - Exceptional Spirit##74237,Enchanting,515 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Boots - Mastery##74238
step
.create 5 Enchant Boots - Mastery##74238,Enchanting,520 |tip You can keep enchanting the same item repeatedly.
step
#include "trainer_Enchanting"
.learn Enchant Bracer - Greater Expertise##74239
step
.create 9 Enchant Bracer - Greater Expertise##74239,Enchanting,525 |tip You can keep enchanting the same item repeatedly.
step
label "ench_525"
'Congratulations, you are now a level 525 Enchanter!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Professions Guides\\Engineering\\Engineering 1-525 Leveling Guide",[[
description This guide will walk you through leveling your Engineering skill from 1-525.
author support@zygorguides.com
completion skill,Engineering,525
#include profession_dual_start,prof1="Engineering",prof2="Mining"
step
label "route"
'Redirecting to Engineering 1-75 |next "eng_1-75" |only if skill("Engineering")<75
'Redirecting to Engineering 75-130 |next "eng_75-130" |only if skill("Engineering")>=75 and skill("Engineering")<130
'Redirecting to Engineering 130-210 |next "eng_130-210" |only if skill("Engineering")>=130 and skill("Engineering")<210
'Redirecting to Engineering 210-280 |next "eng_210-280" |only if skill("Engineering")>=210 and skill("Engineering")<280
'Redirecting to Engineering 280-350 |next "eng_280-350" |only if skill("Engineering")>=280 and skill("Engineering")<350
'Redirecting to Engineering 350-425 |next "eng_350-425" |only if skill("Engineering")>=350 and skill("Engineering")<425
'Redirecting to Engineering 425-525 |next "eng_425-525" |only if skill("Engineering")>=425 and skill("Engineering")<525
'Redirecting to Engineering finale |next "eng_525" |only if default
// ----------
// 1 - 75
// ----------
// TRAIN: Apprentice Engineering
step
title +Engineering 1-75
label "eng_1-75"
#include "trainer_Engineering"
.skillmax Engineering,75
step
#include "vendor_Engineering"
.buy 1 Blacksmith Hammer##5956 |tip Save the Blacksmith Hammer, you will need it to create items.
step
#include "home_TradeDistrict"
step
#include "auctioneer"
.buy 38 Rough Stone##2835
.buy 172 Copper Bar##2840
#include go_farm,skill="Mining",req="1",goto="eng_1-75_farm"
next "eng_1-75_skill"
// GATHER: 38 Rough Stone, 142 Copper Bar
step
label "eng_1-75_farm"
'Go outside to Elwynn Forest |goto Elwynn Forest |noway |c
step
map Elwynn Forest
path follow loose;loop;ants straight  // this stays set until the end of the guide.
path   32.8,50.5	30.2,58.2	28.3,64.8
path   25.6,70.3	21.4,74.5	23.1,82.5
path   31.5,78.1	37.5,71.4	38.2,82.5
path   49.7,84.8	57.3,80.8	61.7,75.2
path   67.3,72.2	70.2,66.1	73.7,56.0
path   73.8,48.2	80.5,54.8	80.0,46.1
path   77.5,38.1	71.4,38.5	64.7,37.9
path   63.3,46.2	62.0,53.0	55.1,56.0
path   49.9,60.4	46.2,53.9	43.2,48.7
path   37.2,51.9
#include "follow_path_mine"
.collect 38 Rough Stone##2835
.collect 172 Copper Ore##2770
step
#include "hearth_hub"
step
#include "maincity_anvil"
.create Copper Bar##2657,Mining,172 total |tip Keep any extra Copper Bar you have for making items later.
// CREATE: 38 Rough Blasting Powder, 23 Handful of Copper Bolts, 25 Copper Tube
step
label  "eng_1-75_skill"
.create 38 Rough Blasting Powder##3918,Engineering,30
step
#include "trainer_Engineering"
.learn Handful of Copper Bolts##3922
step
#include "maincity_anvil"
.create 23 Handful of Copper Bolts##3922,Engineering,23 total |tip Save Handfuls of Copper Bolts to use later.
step
#include "trainer_Engineering"
.learn Rough Copper Bomb##3923
step
#include "maincity_anvil"
.create 20 Rough Copper Bomb##3923,Engineering,70
step
#include "trainer_Engineering"
.learn Arclight Spanner##7430
step
#include "maincity_anvil"
.create 5 Arclight Spanner##7430,Engineering,75
// ----------
// 75 - 130
// ----------
// TRAIN: Journeyman Engineer
step
title +Engineering 75-130
label "eng_75-130"
#include "trainer_Engineering"
.skillmax Engineering,150 |tip You must be at least level 10.
step
#include "auctioneer"
.buy 35 Coarse Stone##2836
.buy 24 Linen Cloth##2589
.buy 72 Bronze Bar##2841
.buy 6 Tigerseye##818
#include go_farm,skill="Mining",req="50",goto="eng_75-130_farm"
next "eng_75-130_skill"
// GATHER: 35 Coarse Stone, 24 Linen Cloth, 36 Tin ore, 72 Bronze Bar, 5 Moss Agate
step
label "eng_75-130_farm"
#include "trainer_Mining"
.skillmax Mining,150
.learn Smelt Bronze##2659
.learn Smelt Tin##3304
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 75. It's better to skill up first. |only if skill("Mining")<50 and skillmax("Herbalism")<150
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Sentinel Hill
step
label "farming"
goto Westfall,50.8,53.0
.from Riverpaw Bandit##452+, Riverpaw Brute##124+, Riverpaw Herbalist##501+
.collect 24 Linen Cloth##2589
step
label "farm2"
'Skipping 2nd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Rebel Camp
step
label "farming"
map Northern Stranglethorn
path 40.4,45.0	36.3,44.1	34.0,38.8
path 31.1,34.1	27.0,31.8	21.4,25.2
path 21.8,18.7	26.6,21.9	31.1,22.4
path 34.6,20.9	33.8,17.2	38.5,17.9
path 46.3,19.1	52.5,20.5	58.6,16.8
path 63.5,17.5	63.2,22.1	60.3,24.3
path 57.2,28.2	60.8,34.6	66.1,40.9
path 62.9,47.1	56.2,50.4	48.0,55.2
path 44.3,55.5	48.7,47.2	47.7,39.2
path 50.2,28.6	44.6,28.2	42.9,34.7
path 41.4,41.2
#include "follow_path_mine"
.collect 35 Coarse Stone##2836
.collect 36 Tin Ore##2771
#include "max_skill_warning",skill="Mining",goto="eng_75-130_farm"
step
label "exit"
#include "hearth_hub"
step
#include "maincity_anvil"
.create Tin Bar##3304,Mining,36 total
.create Bronze Bar##2659,Mining,72 total
// CREATE: 35 Coarse Blasting Powder, 12 Copper Modulator, 5 Practice Lock, 8 Bronze Tube, 5 Standard Scope
step
label  "eng_75-130_skill"
#include "trainer_Engineering"
.learn Coarse Blasting Powder##3929
step
.create 35 Coarse Blasting Powder##3929,Engineering,95 |tip Keep at least 20 of these to craft a later item.
step
#include "trainer_Engineering"
.learn Coarse Dynamite##3931
step
#include "maincity_anvil"
.create Coarse Dynamite##3931,Engineering,100
step
#include "trainer_Engineering"
.learn Clockwork Box##8334
step
#include "maincity_anvil"
.create 5 Clockwork Box##8334,Engineering,105
step
#include "trainer_Engineering"
.learn Bronze Tube##3938
step
#include "maincity_anvil"
.create 8 Bronze Tube##3938,Engineering,115 |tip Keep 5 Bronze Tubes to make more items later.
step
#include "trainer_Engineering"
.learn Flying Tiger Goggles##3934
step
#include "maincity_anvil"
.create 2 Flying Tiger Goggles##3934,Engineering,130
// ----------
// 130 - 210
// ----------
// TRAIN: Expert Engineer
step
title +Engineering 130-210
label "eng_130-210"
#include "trainer_Engineering"
.' Learn the Expert Engineer skill |skillmax Engineering,225 |tip You must be at least level 20.
.learn Heavy Blasting Powder##3945
step
#include "auctioneer"
.buy 20 Heavy Stone##2838
.buy 36 Iron Bar##3575
.buy 25 Wool Cloth##2592
.buy 66 Solid Stone##7912
.buy 132 Mithril Bar##3860
.buy 22 Mageweave Cloth##4338
.buy 15 Gold Bar##3577
#include go_farm,skill="Mining",req="200",goto="eng_130-210_farm"
next "eng_130-210_skill"
// GATHER: 20 Heavy Stone, 36 Iron Bar, 66 Solid Stone, 132 Mithril Bar, 22 Mageweave Cloth
step
label "eng_130-210_farm"
#include "trainer_Mining"
.skillmax Mining,300
.learn Smelt Mithril##10097
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 225. It's better to skill up first. |only if skill("Mining")<200 and skillmax("Herbalism")<300
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Raven Hill
step
label "farming"
goto Duskwood,22.6,68.6
.from Anquished Spirit##45614+, Forlorn Spirit##43923+
.collect 25 Wool Cloth##2592
step
label "farm2"
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Chillwind Camp
step
label "farming"
map Western Plaguelands
path   42.6,80.9	39.3,79.9	36.1,77.2
path 33.2,72.6	30.2,69.6	29.3,64.5
path 33.5,63.9	32.5,59.9	31.2,55.5
path 37.1,54.4	38.7,51.6	43.8,49.7
path 48.0,47.8	45.0,41.3	45.0,36.1
path 44.2,31.6	49.9,28.9	54.3,26.4
path 54.8,33.7	51.6,40.2	50.2,45.8
path 54.7,48.9	60.0,52.2	66.3,43.9
path 68.8,45.9	67.4,52.5	65.6,59.7
path 61.4,62.0	63.3,64.8	72.4,59.7
path 80.7,77.4	73.0,83.5	64.4,84.0
path 58.0,82.1	53.1,74.7
#include "follow_path_mine"
.collect 20 Heavy Stone##2838
.collect 36 Iron Ore##2772
#include "max_skill_warning",skill="Mining",goto="eng_130-210_farm"
step
label "farm3"
'Skipping 3rd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "rideto_theramoreisle"
step
|fly Talonbranch Glade
step
label "farming"
map Felwood
path   49.5,77.9	47.3,72.8	43.8,63.7
path 42.5,52.7	47.0,40.6	55.6,27.6
path 58.1,14.9	53.7,12.6	43.5,16.9
path 41.7,25.6	39.8,45.4	39.4,55.9
path 41.1,70.7	41.2,76.1	46.2,85.9
#include "follow_path_mine"
.collect 70 Solid Stone##7912
.collect 132 Mithril Ore##3858
#include "max_skill_warning",skill="Mining",goto="eng_130-210_farm"
step
goto Felwood,63.4,20.7
.from Irontree Chopper##48453+
.collect 22 Mageweave Cloth##4338
step
label "exit"
#include "hearth_hub"
step
#include "vendor_Blacksmithing"
.buy 4 Coal##3857
step
#include "maincity_anvil"
.create Iron Bar##3307,Mining,36 total
.create Steel Bar##3569,Mining,4 total
.create Mithril Bar##10097,Mining,132 total
.create Gold Bar##3308,Mining,15 total
// CREATE: 35 Heavy Blasting Powder, 15 Gold Power Core, 10 Iron Strut, 66 Solid Blasting Powder, 10 Unstable Trigger
step
label  "eng_130-210_skill"
.create 20 Heavy Blasting Powder##3945,Engineering,135
step
#include "trainer_Engineering"
.learn Whirring Bronze Gizmo##3942
step
#include "maincity_anvil"
.create 25 Whirring Bronze Gizmo##3942,Engineering,150
step
#include "trainer_Engineering"
.learn Gold Power Core##12584
step
#include "maincity_anvil"
.create 13 Gold Power Core##12584,Engineering,160
step
#include "trainer_Engineering"
.learn Iron Strut##3958
step
#include "maincity_anvil"
.create 18 Iron Strut##3958,Engineering,170
step
#include "trainer_Engineering"
.learn Gyrochronatom##3961
step
#include "maincity_anvil"
.create 15 Gyrochronatom##3961,Engineering,180
step
#include "trainer_Engineering"
.learn Gyromatic Micro-Adjustor##12590
.learn Solid Blasting Powder##12585
step
#include "maincity_anvil"
.create 1 Gyromatic Micro-Adjustor##12590,Engineering,1 total |tip You will need this to make more Engineering items, do not sell.
step
.create 66 Solid Blasting Powder##12585,Engineering,66 total |n |tip You will need to keep 66 Solid Blasting Powder to make itmes later.
skill Engineering,185
step
#include "maincity_anvil"
.create 8 Gyrochronatom##3961,Engineering,190
step
#include "trainer_Engineering"
.learn Big Iron Bomb##3967
step
#include "maincity_anvil"
.create 8 Big Iron Bomb##3967,Engineering,195
step
#include "trainer_Engineering"
.learn Mithril Tube##12589
step
#include "maincity_anvil"
.create 22 Mithril Tube##12589,Engineering,210
// ----------
// 210 - 280
// ----------
// TRAIN: Artisan Engineer
step
title +Engineering 210-280
label  "eng_210-280"
#include "trainer_Engineering"
.skillmax Engineering,300 |tip You must be at least level 35.
.learn Unstable Trigger##12591
step
#include "maincity_anvil"
.create 22 Unstable Trigger##12591+,Engineering,22 total |n |tip Save 22 Unstable Triggers in your bags, you will need them later to create items.
skill Engineering,215
step
label  "eng_210-250_skill"
#include "trainer_Engineering"
.learn Mithril Casing##12599
step
#include "maincity_anvil"
.create 44 Mithril Casing##12599+,Engineering,44 total |n |tip Save 44 Mithril Casings in your bags, you will need them later to create items.
skill Engineering,235
step
#include "trainer_Engineering"
.learn Hi-Explosive Bomb##12619
step
#include "maincity_anvil"
.create 22 Hi-Explosive Bomb##12619,Engineering,250
step
label "eng_250-280"
#include "trainer_Engineering"
.learn Dense Blasting Powder##19788
step
#include "auctioneer"
.buy 32 Dense Stone##12365
.buy 198 Thorium Bar##12359
.buy 45 Runecloth##14047
#include go_farm,skill="Mining",req="250",goto="eng_250-280_farm"
next "eng_250-280_skill"
// GATHER: 32 Dense Stone, 198 Thorium Bar, 45 Runecloths
step
label  "eng_250-280_farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "rideto_ratchet"
step
|fly Marshal's Stand
step
label "farming"
map Un'Goro Crater
path 36.4,18.1	43.5,14.1	51.5,15.7
path 62.7,17.9	70.4,26.8	76.3,51.0
path 71.8,72.5	62.1,83.7	51.9,88.6
path 37.7,83.1	26.9,71.9	24.0,52.5
path 25.4,35.6	30.4,24.3
#include "follow_path_mine"
skill Mining,255
.collect 198 Thorium Ore##10620
#include "max_skill_warning",skill="Mining",goto="eng_125-210_farm"
step
label "farm2"
'Skipping 2nd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Cenarion Hold
step
label "farming"
goto Silithus,45.8,38.2
.from Twilight Keeper Havunth##11804+, Twilight Geolord##11881+, Twilight Avenger##11880+, Twilight Stonecaller##11882+
.collect 45 Runecloth##14047
.' You can find more:
.' Around 35.7,32.5
.' Around 29.5,73.4
.' Around 66.1,20.3
step
label "exit"
#include "hearth_hub"
// CREATE: 16 Dense Blasting Powder, 7 Dense Dynamite, 20 Thorium Widget
step
label  "eng_250-280_skill"
.create 16 Dense Blasting Powder##19788,Engineering,14 total |n |tip Save 14 Dense Blasting Powder for making items later.
skill Engineering,255
step
#include "trainer_Engineering"
.learn Dense Dynamite##23070
step
#include "maincity_anvil"
.create 7 Dense Dynamite##23070,Engineering,260
step
#include "trainer_Engineering"
.learn Thorium Widget##19791
step
#include "maincity_anvil"
.create 20 Thorium Widget##19791,Engineering,280
// ----------
// 280 - 350
// ----------
// TRAIN: Master Engineering
step
title +Engineering 280-350
label  "eng_280-350"
#include "trainer_Engineering"
.skillmax Engineering,375 |tip You must be at least level 50.
.learn Thorium Tube##19795
step
#include "maincity_anvil"
.create 23 Thorium Tube##19795,Engineering,300
step
#include "auctioneer"
.buy 80 Fel Iron Bar##23445
.buy 20 Mote of Earth##22573
.buy 10 Mote of Fire##22574
.buy 40 Adamantite Bar##23446
.buy 18 Netherweave Cloth##21877
#include go_farm,skill="Mining",req="275",goto="eng_280-350_farm"
next "eng_280-350_skill"
// GATHER: 220 Fel Iron Ore, 20 Mote of Earth, 10 Mote of Fire, 80 Adamantite Ore, 18 Netherweave Cloth
step
label  "eng_280-350_farm"
#include "trainer_Mining"
.skillmax Mining,375
.learn Smelt Fel Iron##29356
//.learn Smelt Eternium##29359
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 300. It's better to skill up first. |only if skill("Mining")<275 and skillmax("Herbalism")<375
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "darkportal"
step
label "farming"
map Hellfire Peninsula
path 68.4,53.5	67.6,58.2	68.7,74.6
path 58.0,76.2	40.9,79.0	29.8,67.0
path 27.2,70.5	18.5,56.5	14.9,60.7
path 9.8,50.3 	31.3,32.7	34.3,42.9
path 58.5,31.5	65.9,34.4
#include "follow_path_mine"
|tip Go into any caves you find as there is lots of ore.
.collect 220 Fel Iron Ore##23424 
//.collect 40 Eternium Ore##23427
#include "max_skill_warning",skill="Mining",goto="eng_280-350_farm"
step
|fly Shattrath
step
goto Shattrath City,72.2,30.7
.talk 18484
.buy 1 Schematic: White Smoke Flare##23811
step
label "farm2"
'Skipping 2nd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Telaar
step
label "farming"
map Nagrand
path 45.7,68.9	43.1,58.9	45.0,54.7
path 49.6,57.5	56.0,54.8	56.3,59.4
path 49.7,66.2	41.9,77.0	35.7,79.3
path 31.1,75.3	27.3,63.0	33.4,57.5
path 33.7,49.4	24.0,47.4	19.7,46.7
path 11.4,43.0	11.3,36.6	19.9,32.1
path 25.0,32.8	28.2,31.8	26.5,20.5
path 30.0,18.1	36.3,23.0	40.5,35.4
path 43.1,22.8	50.8,23.5	57.0,29.0
path 65.0,37.6	70.3,42.6	68.8,51.1
path 72.3,58.1	73.8,67.9	69.8,78.1
path 57.9,75.5	49.0,79.0
#include "follow_path_mine"
|tip Go into any caves you find as there is lots of ore.
.collect 80 Adamantite Ore##23425
.collect 10 Mote of Fire##22574
.collect 20 Mote of Earth##22573
#include "max_skill_warning",skill="Mining",goto="eng_280-350_farm"
step
goto Nagrand,73.3,69.7
.from Boulderfist Mystic##17135+, Boulderfist Crusher##17134+
.collect 30 Netherweave Cloth##21877
step
label "exit"
#include "hearth_hub"
step
 #include "maincity_anvil"
.create Fel Iron Bar##29356,Mining,110 total
//.create Eternium Bar##23447,Mining,20 total // This is needed for Fel Steel
.create Adamantite Bar##29358,Mining,40 total
// CREATE: 44 Handful of Fel Iron Bolts, 10 Elemental Blasting Powder, 12 Fel Iron Casing, 10 Adamantite Grenade, 18 White Smoke Flare
step
label  "eng_280-350_skill"
#include "trainer_Engineering"
.learn Handful of Fel Iron Bolts##30305
step
#include "maincity_anvil"
.create 44 Handful of Fel Iron Bolts##30305,Engineering,44 total |n |tip Save 44 Fel Iron Bolts for making items later.
skill Engineering,310
step
#include "trainer_Engineering"
.learn Elemental Blasting Powder##30303
.learn Fel Iron Casing##30304
step
#include "maincity_anvil"
.create Elemental Blasting Powder##30303,Engineering,10 total |n |tip These will give your 4 at a time, you will need 40 total.
.collect 60 Elemental Blasting Powder##23781 |n
.create 12 Fel Iron Casing##30304,Engineering,12 total |n |tip You will need to keep 12 Fel Iron Casing for making items later.
skill Engineering,315
step
#include "trainer_Engineering"
.learn Fel Iron Bomb##30310
step
#include "maincity_anvil"
.create 12 Fel Iron Bomb##30310,Engineering,325
step
#include "trainer_Engineering"
.learn Adamantite Grenade##30311
step
#include "maincity_anvil"
.create 10 Adamantite Grenade##30311,Engineering,335
step
'Skipping over completed section |next "+exit" |only if step:Find("+buying"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "darkportal"
step
|fly Shattrath
step
label "buying"
goto Shattrath City,72.2,30.7
.talk 18484
.buy 1 Schematic: White Smoke Flare##23811
step
label "exit"
#include "hearth_hub"
step
'Click the Schematic: White Smoke Flare recipe in your bags |use Schematic: White Smoke Flare##23811
.learn White Smoke Flare##30341
step
#include "maincity_anvil"
.create 30 White Smoke Flare##30341,Engineering,350
//	step
//		#include "trainer_Engineering"
//		.learn Felsteel Stabilizer##30309
//	step
//		#include "maincity_anvil"
//		.create 5 Felsteel Stablizer##30309,Engineering,350
// ----------
// 350 - 425
// ----------
// TRAIN: Grand Master Engineer
step
title +Engineering 350-425
label  "eng_350-425"
#include "trainer_Engineering"
.skillmax Engineering,450 |tip You must be at least level 65.
.learn Handful of Cobalt Bolts##56349
step
#include "auctioneer"
.buy 234 Cobalt Bar##36916
.buy 55 Crystallized Water##37705
.buy 13 Crystallized Earth##37701
.buy 221 Saronite Bar##36913
.buy 6 Frostweave Cloth##33470
#include go_farm,skill="Mining",req="350",goto="eng_350-425_farm"
next "eng_350-425_skill"
// GATHER: 234 Cobalt Ore, 55 Crystallized Water, 13 Crystallized Earth, 442 Saronite Ore
step
label  "eng_350-425_farm"
#include "trainer_Mining"
.skillmax Mining,450
.learn Smelt Cobalt##49252
.learn Smelt Saronite##49258 |only if skill("Mining")>=400
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 375. It's better to skill up first. |only if skill("Mining")<350 and skillmax("Herbalism")<450
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "rideto_borean"
step
label "farming"
map Borean Tundra
path 29.6,20.6	24.7,22.2	24.1,26.2
path 28.6,26.3	29.4,21.9	32.5,25.8
path 36.6,29.7	42.7,35.4	43.1,39.1
path 39.5,42.9	34.5,48.2	30.2,54.8
path 33.1,57.3	35.2,65.9	39.4,68.2
path 44.1,66.0	46.3,62.0	50.0,62.4
path 50.8,71.7	53.6,72.0	60.5,59.2
path 67.2,47.4	83.0,44.8	91.8,39.7
path 73.9,20.6	63.9,12.6	59.9,19.0
path 42.5,14.8	46.8,40.4
#include "follow_path_mine"
.collect 234 Cobalt Ore##36909
.collect 55 Crystallized Water##37705
#include "max_skill_warning",skill="Mining",goto="eng_350-425_farm"
step
label "farm2"
'Skipping 2nd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Fordragon Hold
step
.' Go west to Wintergrasp |goto Wintergrasp |noway |c
step
label "farming"
map Wintergrasp
path 47.8,43.5	48.0,60.0	42.0,59.0
path 40.4,53.8	31.5,57.1	27.9,60.1
path 22.0,56.7	16.1,65.2	9.4,55.0
path 24.3,44.3	33.4,52.9	28.7,44.0
path 30.2,19.6	36.5,16.7	42.5,24.6
path 49.4,32.2	54.4,29.9	82.5,65.9
path 63.0,75.3	56.2,79.2	48.2,43.5
#include "follow_path_mine"
.collect 442 Saronite Ore##36912
.collect 13 Crystallized Earth##37701
#include "max_skill_warning",skill="Mining",goto="eng_350-425_farm"
step
label "exit"
#include "hearth_hub"
step
#include "maincity_anvil"
.create Saronite Bar##49258,Mining,221 total
.create Cobalt Bar##49252,Mining,234 total
// CREATE: 50 Handful of Cobalt Bolts, 15 Volatile Blasting Trigger, 10 Overcharged Capacitor, 6 Explosive Decoy, 15 Froststeel Tube, 5 Diamond-cut Refractor Scope, 12 Box of Bombs, 5 Mana Injector Kit,  5 Noise Machine
step
label  "eng_350-425_skill"
#include "maincity_anvil"
.create 25 Handful of Cobalt Bolts##56349,Engineering,370
.collect 20 Handful of Cobalt Bolts##39681 |tip Save 20 Cobalt Bolts for crafting more items.
step
#include "trainer_Engineering"
.learn 8 Volatile Blasting Trigger##53281
step
#include "maincity_anvil"
.create 9 Volatile Blasting Trigger##53281,Engineering,375
.collect 16 Volatile Blasting Trigger##39690 |tip Save 16 Volatile Blasting Trigger for crafting more items later.
step
#include "trainer_Engineering"
.learn Overcharged Capacitor##56464
step
#include "maincity_anvil"
.create 13 Overcharged Capacitor##56464,Engineering,385
step
#include "trainer_Engineering"
.learn Explosive Decoy##56463
step
#include "maincity_anvil"
.create 6 Explosive Decoy##56463,Engineering,390
step
#include "trainer_Engineering"
.learn Froststeel Tube##56471
step
#include "maincity_anvil"
.create 13 Froststeel Tube##56471,Engineering,400
.collect 8 Froststeel Tube##39683 |tip Save 8 Froststeel Tubes for crafting more items later. 
step
#include "trainer_Engineering"
.learn 8 Diamond-cut Refractor Scope##61471
step
.create 7 Diamond-cut Refractor Scope##61471,Engineering,405
step
#include "trainer_Engineering"
.learn Box of Bombs##56468
step
.create 13 Box of Bombs##56468,Engineering,415
step
#include "trainer_Engineering"
.learn Mana Injector Kit##56477
step
#include "maincity_anvil"
.create 13  Mana Injector Kit##56477,Engineering,425
// ----------
// 425 - 525
// ----------
// TRAIN: Illustrious Grand Master
step
title +Engineering 425-525
label  "eng_425-525"
#include "trainer_Engineering"
.skillmax Engineering,525 |tip You must be at least level 75.
.learn Handful of Obsidium Bolts##84403
step
#include "auctioneer"
.buy 90 Obsidium Bar##54849
.buy 28 Volatile Earth##52327
.buy 72 Volatile Air##52328
.buy 13 Volatile Fire##52325
.buy 132 Elementium Bar##52186
.buy 100 Embersilk Cloth##53010
.buy 7 Hardened Elementium Bar##53039
.buy 2 Dream Emerald##52192 |tip If you do not have prospecting you may need to buy this item instead of farm it.
#include go_farm,skill="Mining",req="425",goto="eng_425-525_farm"
next "eng_425-525_skill"
// GATHER: 180 Obsidium Ore, 100 Embersilk Cloth
step
label  "eng_425-525_farm"
#include "trainer_Mining"
.skillmax Mining,525
.learn Smelt Saronite##49258
.learn Smelt Obsidium##84038
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 450. It's better to skill up first. |only if skill("Mining")<425 and skillmax("Herbalism")<525
step
#include "port_hyjal"
step
map Mount Hyjal
path 23.8,36.2	9.4,35.9	17.0,56.4
path 35.2,64.9	33.3,74.8	31.3,84.3
path 34.5,95.3	52.7,60.2	57.2,58.4
path 79.6,58.7	85.7,46.7	81.5,53.8
path 78.4,58.9	58.3,55.5	54.6,54.4
path 36.7,51.9	25.0,40.2	35.7,34.3
path 33.5,26.4
#include "follow_path_mine"
.collect 180 Obsidium Ore##53038
#include "max_skill_warning",skill="Mining",goto="eng_425-525_farm"
step
goto Mount Hyjal,55.8,68.0
.from Twilight Augur##40713+, Twilight Retainer##40767+
.collect 100 Embersilk Cloth##53010
step
#include "hearth_hub"
// CREATE: 25 Handful of Obsidium Bolts, 1 Electrostatic Condenser
step
label  "eng_425-525_skill"
#include "maincity_anvil"
.create Obsidium Bar##84038,Mining,94 total
step
#include "maincity_anvil"
.create 23 Handful of Obsidium Bolts##84403,Engineering,442
step
#include "trainer_Engineering"
.learn Electrostatic Condenser##95703
step
#include "maincity_anvil"
.create Electrostatic Condenser##95703,Engineering,1 total |tip Keep this in your bags, it will help you farm Volatile Air as you mine more.
// GATHER: 264 Elementium Ore, 28 Volatile Earth, 72 Volatile Air, 13 Volatile Fire
step
#include "port_twilight"
step
map Twilight Highlands
path 71.4,50.3	54.0,37.6	41.3,56.6
path 37.5,58.2	24.5,56.9	30.0,42.8
path 26.9,28.7	32.3,27.1	31.5,40.1
path 38.6,41.2	39.6,30.4	39.0,19.7
path 46.2,20.1	53.8,24.8	61.5,32.4
path 68.5,37.9
#include "follow_path_mine"
.collect 264 Elementium Ore##52185
#include "max_skill_warning",skill="Mining",goto="eng_425-525_farm"
step
goto Twilight Highlands,57.9,31.2
.from Obsidian Stoneslave##47226+
.collect 28 Volatile Earth##52327
step
goto 34.6,69.2
.from Enslaved Tempest##46328+
.collect 72 Volatile Air##52328
.' You can find more over here 39.5,85.7
step
goto 42.9,79.1
.from Enslaved Inferno##46327+
.collect 13 Volatile Fire##52325
step
#include "hearth_hub"
step
#include "maincity_anvil"
.create Elementium Bar##74530,Mining,132 total
.create Hardened Elementium Bar##74537,Mining,7 total
step
#include "trainer_Engineering"
.learn Electrified Ether##94748
step
#include "maincity_anvil"
.create 38 Electrified Ether##94748,Engineering,460
.collect 76 Electrified Ether##67749 |tip You will need 76 Electrified Ether to craft more items later.		
step
#include "trainer_Engineering"
.learn Volatile Seaforium Blastpack##84409
step
.create 11 Volatile Seaforium Blastpack##84409,Engineering,467
step
#include "trainer_Engineering"
.learn High-Powered Bolt Gun##84411
step
#include "maincity_anvil"
.create 3 High-Powered Bolt Gun##84411,Engineering,3 total |n
skill Engineering,482
step
#include "trainer_Engineering"
.learn Elementium Dragonling##84418
step
#include "maincity_anvil"
.create 5 Elementium Dragonling##84418,Engineering,5 total |n 
skill Engineering,507
step
#include "trainer_Engineering"
.learn Finely-Tuned Throat Needler##84420
step
#include "maincity_anvil"
.create Finely-Tuned Throat Needler##84420,Engineering,1 total |n
skill Engineering,512
step
#include "trainer_Engineering"
.learn Heat-Treated Spinning Lure##84430
step
#include "maincity_anvil"
.create 18 Heat-Treated Spinning Lure##84430,Engineering,521
step
#include "trainer_Engineering"
.learn Gnomish X-Ray Scope##84428
step
#include "maincity_anvil"
.create Gnomish X-Ray Scope##84428,Engineering,1 total |n
skill Engineering,525
step
title +Engineering 525
label "eng_525"
'Congratulations, you are now a level 525 Engineer!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Professions Guides\\First Aid\\First Aid 1-525 Leveling Guide",[[
description This guide will walk you through leveling your First Aid skill from 1 - 450.
author support@zygorguides.com
completion skill,First Aid,525
#include "profession_secondary_start",prof1="First Aid"
step
label "route"
'Redirecting to First Aid 1-75 |next "aid_1-75" |only if skill("First Aid")<75
'Redirecting to First Aid 75-150 |next "aid_75-150" |only if skill("First Aid")>=75 and skill("First Aid")<150
'Redirecting to First Aid 150-210 |next "aid_150-210" |only if skill("First Aid")>=150 and skill("First Aid")<210
'Redirecting to First Aid 210-300 |next "aid_210-300" |only if skill("First Aid")>=210 and skill("First Aid")<300
'Redirecting to First Aid 300-350 |next "aid_300-350" |only if skill("First Aid")>=300 and skill("First Aid")<350
'Redirecting to First Aid 350-450 |next "aid_350-450" |only if skill("First Aid")>=350 and skill("First Aid")<450
'Redirecting to First Aid 450-525 |next "aid_450-525" |only if skill("First Aid")>=450 and skill("First Aid")<525
'Redirecting to First Aid finale |next "aid_525" |only if default
// ----------
// 1 - 75
// ----------
// TRAIN: Apprentice First Aid
step
title + First Aid 1-75
label "aid_1-75"
#include "trainer_FirstAid"
.skillmax First Aid,75 |tip You must be at least level 5.
step
#include "home_TradeDistrict"
step
#include "auctioneer"
.buy 170 Linen Cloth##2589
#include go_farm,skill="First Aid",req="1",goto="aid_1-75_farm"
|next "aid_1-75_skill"
// GATHER: 170 Linen Cloth
step
label "aid_1-75_farm"
|fly Sentinel Hill
step
goto Westfall,50.8,53.0
.from Riverpaw Bandit##452+, Riverpaw Brute##124+, Riverpaw Herbalist##501+
.collect 170 Linen Cloth##2589
step
#include "hearth_hub"
// CREATE: 50 Linen Bandage, 50 Heavy Linen Bandage
step
label "aid_1-75_skill"
.create Linen Bandage##3275,First Aid,40
step
#include "trainer_FirstAid"
.learn Heavy Linen Bandage##3276
step
.create Heavy Linen Bandage##3276+,First Aid,75
// ----------
// 75 - 150
// ----------
// TRAIN: Journeyman First Aid
step
title + First Aid 75-150
label "aid_75-150"
#include "trainer_FirstAid"
.skillmax First Aid,150 |tip You must be at least level 10.
step
.create Heavy Linen Bandage##3276+,First Aid,80
step
#include "trainer_FirstAid"
.learn Wool Bandage##3530
step
#include "auctioneer"
.buy 180 Wool Cloth##2592
#include go_farm,skill="First Aid",req="80",goto="aid_75-150_farm"
|next "aid_75-150_skill"
// GATHER: 180 Wool Cloth
step
label "aid_75-150_farm"
|fly Raven Hill
step
goto Duskwood,21.4,68.7
.from Anguished Spirit##45614+,Forlorn Spirit##43923+
.collect 180 Wool Cloth##2592
step
#include "hearth_hub"
// CREATE: 60 Wool Bandage, 60 Heavy Wool Bandage
step
label "aid_75-150_skill"
.create Wool Bandage##3277+,First Aid,115
step
#include "trainer_FirstAid"
.learn Heavy Wool Bandage##3531
step
.create Heavy Wool Bandage##3278+,First Aid,150
// ----------
// 150 - 210
// ----------
// TRAIN: Expert First Aid
step
title + First Aid 150-210
label "aid_150-210"
#include "trainer_FirstAid"
.skillmax First Aid,225 |tip You must be at least level 20.
.learn Silk Bandage##7928
step
#include "auctioneer"
.buy 150 Silk Cloth##4306
#include go_farm,skill="First Aid",req="150",goto="aid_150-210_farm"
|next "aid_150-210_skill"
// GATHER: 150 Silk Cloth
step
label "aid_150-210_farm"
|fly Menethil Harbor
step
#include "rideto_theramoreisle"
step
goto Dustwallow Marsh 46.7,46.7
.from Grimtotem Destroyer##23594+
.from Grimtotem Earthbinder##23595+
.collect 150 Silk Cloth##4306
step
#include "hearth_hub"
// CREATE: 50 Silk Bandage, 50 Heavy Silk Bandage
step
label "aid_150-210_skill"
.create Silk Bandage##7928,First Aid,180
step
#include "trainer_FirstAid"
.learn Heavy Silk Bandage##7929
step
.create Heavy Silk Bandage##7929,First Aid,210
// ----------
// 210 - 300
// ----------
// TRAIN: Artisan First Aid
step
title + First Aid 210-300
label "aid_210-300"
#include "trainer_FirstAid"
.skillmax First Aid,300 |tip You must be at least level 35.
.learn Mageweave Bandage##10840
step
#include "auctioneer"
.buy 110 Mageweave Cloth##4338
#include go_farm,skill="First Aid",req="210",goto="aid_210-260_farm"
|next "aid_210-260_skill"
// GATHER: 110 Mageweave Cloth
step
label "aid_210-260_farm"
#include "rideto_ruttheranvillage"
step
|fly Talonbranch Glade
step
goto Felwood,63.4,20.7
.from Irontree Chopper##48453+
.collect 110 Mageweave Cloth##4338
// CREATE: 50 Mageweave Bandage, 30 Heavy Mageweave Bandage
step
label "aid_210-260_skill"
.create 50 Mageweave Bandage##10840,First Aid,240
step
#include "trainer_FirstAid"
.learn Heavy Mageweave Bandage##10841
step
.create 30 Heavy Mageweave Bandage##10841+,First Aid,260
step
#include "trainer_FirstAid"
.learn Runecloth Bandage##18629
step
#include "auctioneer"
.buy 80 Runecloth##14047
#include go_farm,skill="First Aid",req="260",goto="aid_260-300_farm"
|next "aid_260-300_skill"
// GATHER: 80 Runecloth
step
label "aid_260-300_farm"
#include "rideto_ruttheranvillage"
step
|fly Cenarion Hold
step
goto Silithus,45.8,38.2
.from Twilight Keeper Havunth##11804+, Twilight Geolord##11881+, Twilight Avenger##11880+, Twilight Stonecaller##11882+
.collect 80 Runecloth##14047
.' You can find more:
.' Around [35.7,32.5]
.' Around [29.5,73.4]
.' Around [66.1,20.3]
step
#include "hearth_hub"
// CREATE: 50 Runecloth Bandage, 15 Heavy Runecloth Bandage
step
label "aid_260-300_skill"
.create 50 Runecloth Bandage##18629+,First Aid,290
step
#include "trainer_FirstAid"
.learn Heavy Runecloth Bandage##18630
step
.create 15 Heavy Runecloth Bandage##18630,First Aid,300
step
#include "auctioneer"
.buy 115 Netherweave Cloth##21877
#include go_farm,skill="First Aid",req="300",goto="aid_260-300_farm"
|next "aid_300-350"
// GATHER: 115 Netherweave Cloth
 	step
label "aid_260-300_farm"
#include "darkportal"
step
|fly Area 52
step
goto Netherstorm,26.3,68.1
.from Sunfury Magister##18855+, Sunfury Astromancer##19643+, Sunfury Captain##19453+, Sunfury Bloodwarder##18853+, Sunfury Geologist##19779+, Sunfury Warp-Master##18857+
.collect 115 Netherweave Cloth##21877
step
#include "hearth_hub"
// ----------
// 300 - 350
// ----------
// TRAIN: Master First Aid
step
title + First Aid 300-350
label "aid_300-350"
#include "trainer_FirstAid"
.skillmax First Aid,375 |tip You must be at least level 50.
.learn Netherweave Bandage##21990
step
.create 45 Netherweave Bandage##27032,First Aid,330
step
#include "trainer_FirstAid"
.learn Heavy Netherweave Bandage##27033
// CREATE: 35 Heavy Netherweabe Bandage
step
.create 35 Heavy Netherweave Bandage##27033,First Aid,350
// ----------
// 350 - 450
// ----------
// TRAIN: Grand Master First Aid
step
title + First Aid 350-450
label "aid_350-450"
#include "trainer_FirstAid"
.skillmax First Aid,450 |tip You must be at least level 65.
.learn Frostweave Bandage##45545
step
#include "auctioneer"
.buy 150 Frostweave Cloth##33470
#include go_farm,skill="First Aid",req="350",goto="aid_350-450_farm"
|next "aid_350-450_skill"
// GATHER: 150 Frostweave Cloth
step
label "aid_350-450_farm"
#include "rideto_borean"
step
|fly The Argent Vanguard
step
goto Icecrown,61.8,20.8
.from Dark Ritualist##34734+,Dark Zealot##34728+
.collect 250 Frostweave Cloth##33470 |tip You may want to farm more.  Having the guild perk 
step
#include "hearth_hub"
// CREATE: 50 Heavy Frostweave Bandage
step
label "aid_350-450_skill"
.create Frostweave Bandage##45545+,First Aid,400
step
#include "trainer_FirstAid"
.learn Heavy Frostweave Bandage##45546
step
.create Heavy Frostweave Bandage##45546+,First Aid,450
// ----------
// 450 - 525
// ----------
// TRAIN: Illustrious Grand Master First Aid
step
title + First Aid 450-525
label "aid_450-525"
#include "trainer_FirstAid"
.skillmax First Aid,525 |tip You must be at least level 75.
.learn Embersilk Bandage##53049
step
#include "auctioneer"
.buy 280 Embersilk Cloth##53010
#include go_farm,skill="First Aid",req="450",goto="aid_450-525_farm"
|next "aid_450-525_skill"
// GATHER: 280 Embersilk Cloth
step
label "aid_450-525_farm"
#include "port_hyjal"
step
goto Mount Hyjal,35.0,24.0
.from Twilight Augur##40713+, Twilight Retainer##40767+
.collect 280 Embersilk Cloth##53010
step
#include "hearth_hub"
// CREATE: 70 Embersilk Bandage, 105 Heavy Embersilk Bandage
step
label "aid_450-525_skill"
.create Embersilk Bandage##74556,First Aid,475
step
#include "trainer_FirstAid"
.learn Heavy Embersilk Bandage##74557
step
.create 105 Heavy Embersilk Bandage##74557,First Aid,525
step
label "aid_525"
'Congratulations, you are now a level 525 Medic!	
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Professions Guides\\Fishing\\Fishing 1-525 Leveling Guide",[[
description This guide will walk you through leveling your Fishing skill from 1 - 525.
author support@zygorguides.com
completion skill,Fishing,525
#include "profession_secondary_start",prof1="Fishing"
step
label "route"
'Redirecting to Fishing 1-75 |next "fish_1-75" |only if skill("Fishing")<75
'Redirecting to Fishing 75-150 |next "fish_75-150" |only if skill("Fishing")>=75 and skill("Fishing")<150
'Redirecting to Fishing 150-225 |next "fish_150-225" |only if skill("Fishing")>=150 and skill("Fishing")<225
'Redirecting to Fishing 225-300 |next "fish_225-300" |only if skill("Fishing")>=225 and skill("Fishing")<300
'Redirecting to Fishing 300-375 |next "fish_300-375" |only if skill("Fishing")>=300 and skill("Fishing")<375
'Redirecting to Fishing 375-450 |next "fish_375-450" |only if skill("Fishing")>=375 and skill("Fishing")<450
'Redirecting to Fishing 450-525 |next "fish_450-525" |only if skill("Fishing")>=450 and skill("Fishing")<525
'Redirecting to Fishing finale |next "fish_525" |only if default
// ----------
// 1 - 75
// ----------
// TRAIN: Apprentice Fishing
step
title + Fishing 1-75
label "fish_1-75"
#include "trainer_Fishing"
.skillmax Fishing,75
step
#include "vendor_Fishing"
.buy 1 Fishing Pole##6256
.buy 1 Shiny Bauble##6529
step
 goto 54.6,69.0
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
.' Get your Fishing skill to level 75 |skill Fishing,75
// ----------
// 75 - 150
// ----------
// TRAIN: Journeyman Fishing
step
title + Fishing 75-150
label "fish_75-150"
#include "trainer_Fishing"
.skillmax Fishing,150
step
#include "vendor_Fishing"
.buy Shiny Bauble##6529
step
goto Stormwind City,55.0,69.7
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Baubles or Nightcrawlers to help you fish.
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
.' Get your Fishing skill to level 150 |skill Fishing,150
// ----------
// 150 - 225
// ----------
// TRAIN: Expert Fishing
step
title + Fishing 150-225
label "fish_150-225"
#include "trainer_Fishing"
.skillmax Fishing,225
step
#include "vendor_Fishing"
.buy Aquadynamic Fish Attractor##6533
step
goto Stormwind City,55.0,69.7
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use the Aquadynamic Fish Attractor to temporarily increase your Fishing skill, to make it easier to catch fish |use Aquadynamic Fish Attractor##6533 |tip If your Aquadynamic Fish Attractor Fishing skill boost expires, you can buy more Aquadynamic Fish Attractors, Baubles, or Nightcrawlers to help you fish.  If the Aquadynamic Fish Attractors are not available, you can buy Baubles or Nightcrawlers to boost your Fishing skill.
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
.' Get your Fishing skill to level 225 |skill Fishing,225
// ----------
// 225 - 300
// ----------
// TRAIN: Artisan Fishing
step
title + Fishing 225-300
label "fish_225-300"
#include "trainer_Fishing"
.skillmax Fishing,300
step
#include "vendor_Fishing"
.buy 1 Aquadynamic Fish Attractor##6533
step
goto Stormwind City,55.0,69.7
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use the Aquadynamic Fish Attractor to temporarily increase your Fishing skill, to make it easier to catch fish |use Aquadynamic Fish Attractor##6533 |tip If your Aquadynamic Fish Attractor Fishing skill boost expires, you can buy more Aquadynamic Fish Attractors, Baubles, or Nightcrawlers to help you fish.  If the Aquadynamic Fish Attractors are not available, you can buy Baubles or Nightcrawlers to boost your Fishing skill.
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
.' Get your Fishing skill to level 300 |skill Fishing,300
// ----------
// 300 - 375
// ----------
// TRAIN: Master Fishing
step
title + Fishing 300-375
label "fish_300-375"
#include "trainer_Fishing"
.skillmax Fishing,375
step
#include "vendor_Fishing"
.buy 1 Aquadynamic Fish Attractor##6533
step
goto Stormwind City,55.0,69.7
.' Equip your Fishing Pole, if it's not already equipped |use Fishing Pole##6256
.' Use the Aquadynamic Fish Attractor to temporarily increase your Fishing skill, to make it easier to catch fish |use Aquadynamic Fish Attractor##6533 |tip If your Aquadynamic Fish Attractor Fishing skill boost expires, you can buy more Aquadynamic Fish Attractors, Baubles, or Nightcrawlers to help you fish.  If the Aquadynamic Fish Attractors are not available, you can buy Baubles or Nightcrawlers to boost your Fishing skill.
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water |cast Fishing##7620
.' Get your Fishing skill to level 375 |skill Fishing,375
// ----------
// 375 - 450
// ----------
// TRAIN: Grand Master Fishing
step
title + Fishing 375-450
label "fish_375-450"
#include "trainer_Fishing"
.skillmax Fishing,450
step
#include "vendor_Fishing"
.buy 1 Strong Fishing Pole##6365
.buy 1 Aquadynamic Fish Attractor##6533
step
goto Stormwind City,55.0,69.7
.' Equip your Strong Fishing Pole |use Strong Fishing Pole##6365
.' Use the Aquadynamic Fish Attractor to temporarily increase your Fishing skill, to make it easier to catch fish |use Aquadynamic Fish Attractor##6533 |tip If your Aquadynamic Fish Attractor Fishing skill boost expires, you can buy more Aquadynamic Fish Attractors, Baubles, or Nightcrawlers to help you fish.  If the Aquadynamic Fish Attractors are not available, you can buy Baubles or Nightcrawlers to boost your Fishing skill.
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water |cast Fishing##7620
.' Get your Fishing skill to level 450 |skill Fishing,450
// ----------
// 450 - 525
// ----------
// TRAIN: Illustrious Grand Master Fishing
step
title + Fishing 450-525
label "fish_450-525"
#include "trainer_Fishing"
.skillmax Fishing,525
step
goto Borean Tundra,78.2,52.9
.' Equip your Strong Fishing Pole |use Strong Fishing Pole##6365
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water |cast Fishing##7620
.' Get your Fishing skill to level 525 |skill Fishing,525
step
label "fish_525"
'Congratulations, you are now a level 525 Fisherman!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Professions Guides\\Herbalism\\Herbalism 1-525 Leveling Guide",[[
description This guide will walk you through leveling your Herbalism skill from 1 - 525.
author support@zygorguides.com
completion skill,Herbalism,525
#include profession_single_start,prof1="Herbalism"
step
label "route"
'Redirecting to Herbalism 1-70 |next "herb_1-70" |only if skill("Herbalism")<70
'Redirecting to Herbalism 70-150 |next "herb_70-150" |only if skill("Herbalism")>=70 and skill("Herbalism")<150
'Redirecting to Herbalism 150-200 |next "herb_150-200" |only if skill("Herbalism")>=150 and skill("Herbalism")<200
'Redirecting to Herbalism 200-285 |next "herb_200-285" |only if skill("Herbalism")>=200 and skill("Herbalism")<285
'Redirecting to Herbalism 285-375 |next "herb_285-375" |only if skill("Herbalism")>=285 and skill("Herbalism")<375
'Redirecting to Herbalism 375-425 |next "herb_375_425" |only if skill("Herbalism")>=375 and skill("Herbalism")<425
'Redirecting to Herbalism 425-525 |next "herb_425-525" |only if skill("Herbalism")>=425 and skill("Herbalism")<525
'Redirecting to Herbalism finale |next "herb_525" |only if default
// ----------
// 1 - 70
// ----------
// TRAIN: Apprentice Herbalism
step
title + Herbalism 1-70
label	"herb_1-70"
#include "trainer_Herbalism"
.skillmax Herbalism,75
step
#include "home_TradeDistrict"
step
'Go outside to Elwynn Forest |goto Elwynn Forest |noway |c
// GATHER: (Herbalism 70)
step
map Elwynn Forest
path follow loose;loop;ants straight  // this stays set until the end of the guide.
path 43.4,58.9	48.7,62.6	58.0,65.6
path 64.9,63.5	78.6,63.0	79.6,80.4
path 79.6,80.4	59.1,78.3	50.8,85.2
path 46.8,81.1	37.3,87.6	26.2,89.0
path 30.1,76.1	33.2,66.5
path title Herbalism 1-70 Path
#include "follow_path_herbs"
.collect Peacebloom##2447 |n
.collect Silverleaf##765 |n
.collect Earthroot##2449 |n
skill Herbalism,70
step
'Go inside Stormwind City |goto Stormwind City |noway |c
// ----------
// 70 - 150
// ----------
// TRAIN: Journeyman Herbalism
step
title + Herbalism 70-150
label "herb_70-150"
#include "trainer_Herbalism"
.skillmax Herbalism,150
// GATHER: (Herbalism 150)
step
|fly Refuge Pointe
step
'Go northwest to Hillsbrad Foothills |goto Hillsbrad Foothills |noway |c
step
map Hillsbrad Foothills
path 31.8,62.6	33.9,54.0	33.9,54.0
path 29.7,44.1	36.9,38.0	34.5,28.2
path 39.5,21.0	 44.2,8.3 	51.3,14.0
path 57.5,20.9	59.8,23.0	56.1,34.3
path 49.9,46.2	43.1,50.1	38.2,49.1
path 40.1,55.0	41.3,67.4
#include "follow_path_herbs"
.collect Mageroyal##785 |n
.collect Bruiseweed##2453 |n
.collect Briarthorn##2450 |n
skill Herbalism,125
step
map Hillsbrad Foothills
path 47.6,18.8	51.3,22.6	53.5,30.3
path 48.6,33.7	47.0,35.8	43.2,41.1
path 39.1,33.7	40.1,28.5	43.2,20.9
#include "follow_path_herbs"
.' Click _Frozen Herb_ |tip They look like herbs frozen in ice around this area.
skill Herbalism,150
step
#include "hearth_hub"
// ----------
// 150 - 200
// ----------
// TRAIN: Expert Herbalism
step
title + Herbalism 150-200
label	"herb_150-200"
#include "trainer_Herbalism"
.skillmax Herbalism,225
// GATHER: (Herbalism 200)
step
|fly Chillwind Camp
step
map Western Plaguelands
path 31.8,59.3	36.9,57.1	43.5,53.2
path 45.9,44.7	45.2,35.2	49.5,35.1
path 51.0,47.4	55.2,51.3	61.8,52.0
path 67.2,44.5	63.6,56.0	56.6,60.1
path 52.6,67.5	49.2,59.4	45.6,57.6
path 37.9,62.2	33.7,62.7
#include "follow_path_herbs"
.collect Fadeleaf##3818 |n |tip You will mostly have to gather this from the cornfields until you are level 160
.collect Kingsblood##3356 |n
skill Herbalism,200
step
#include "hearth_hub"
// ----------
// 200 - 285
// ----------
// TRAIN: Artisan Herbalism
step
title + Herbalism 200-285
label	"herb_200-285"
#include "trainer_Herbalism"
.skillmax Herbalism,300
// GATHER: (Herbalism 225), (Herbalism 285)
step
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Chillwind Camp
step
label	"farming"
map Western Plaguelands
path 31.8,59.3	36.9,57.1	43.5,53.2
path 45.9,44.7	45.2,35.2	49.5,35.1
path 51.0,47.4	55.2,51.3	61.8,52.0
path 67.2,44.5	63.6,56.0	56.6,60.1
path 52.6,67.5	49.2,59.4	45.6,57.6
path 37.9,62.2	33.7,62.7
#include "follow_path_herbs"
.collect Kingsblood##3356 |n
skill Herbalism,230
step
#include "hearth_hub"
step
label	"farm2"
#include "rideto_ratchet"
step
|fly Gadgetzan
step
'Go north to Thousand Needles |goto Thousand Needles |noway |c
step
map Thousand Needles
path 7.1,24.1 	9.0,31.2	9.3,42.2
path 16.6,44.5	22.3,48.3	26.1,53.0
path 31.0,56.3	35.5,59.1	40.3,62.1
path 44.6,63.4	49.8,63.0	58.6,63.4
path 66.0,70.9	64.3,79.4	65.1,91.9
path 77.8,94.3	84.8,91.4	89.8,85.3
path 94.5,71.8	93.9,58.0	90.8,52.2
path 86.2,49.2	75.0,47.7	72.3,49.2
path 54.8,41.3
#include "follow_path_herbs"
.collect Sungrass##8838 |n
skill Herbalism,285
step
#include "hearth_hub"
// ----------
// 285 - 375
// ----------
// TRAIN: Master Herbalism
step
title + Herbalism 285-375
label	"herb_285-375"
goto 54.3,84.1
.talk 5566
.skillmax Herbalism,375
// GATHER: (Herbalism 300), (Herbalism 350)
step
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "port_blastedlands"
step
'Go north to Swamp of Sorrows |goto Swamp of Sorrows |noway |c
step
label	"farming"
map Swamp of Sorrows
path 17.6,52.9		21.6,54.6		30.9,60.7	
path 39.4,56.9		51.7,59.6		64.5,67.3	
path 73.3,81.9		82.0,76.0		85.3,62.6	
path 87.6,39.9		84.9,31.2		80.1,20.6	
path 66.5,22.7		56.8,31.9		47.0,36.0	
path 36.1,39.8		26.9,42.9
#include "follow_path_herbs"
.collect Golden Sansam##13464 |n
.collect Sorrowmoss##13466 |n
skill Herbalism,300
step
#include "hearth_hub"
step
label	"farm2"
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "rideto_ruttheranvillage"
step
|fly Talonbranch Glade
step
label	"farming"
map Felwood
path 50.5,80.9		47.6,75.8		45.4,71.4	
path 44.9,66.4		42.9,58.3		43.6,52.1	
path 45.2,42.1		49.6,33.6		55.3,24.8	
path 57.5,15.5		54.3,14.1		42.7,21.7	
path 40.0,37.5		40.0,46.5		39.6,56.9	
path 39.1,66.2		38.9,71.3		42.7,84.7	
#include "follow_path_herbs"
.collect Gromsblood##8846 |n
.collect Dreamfoil##13463 |n
.collect Golden Sansam##13464 |n
.collect Sorrowmoss##13466 |n
skill Herbalism,325
step
#include "hearth_hub"
step
label	"farm3"
#include "darkportal"
step
|fly Shattrath 
step
.' Go north to Terokkar Forest |goto Terokkar Forest |noway |c
step
map Terokkar Forest
path 34.4,8.0 		37.5,16.1		41.6,19.9	
path 44.5,11.5		48.0,18.4		51.0,21.0	
path 47.5,22.9		48.4,26.9			
path 60.2,22.5				65.3,32.3	
path 68.3,41.8		73.1,45.3		61.5,48.6	
path 54.0,37.1		48.0,33.5		39.0,34.8	
path 39.2,44.4		47.3,50.0		47.0,79.8	
path 33.5,76.9		19.6,77.8		20.3,71.0	
path 21.5,60.7		31.4,39.9		37.4,30.1	
#include "follow_path_herbs"
.collect Felweed##22785 |n
.collect Dreaming Glory##22786 |n
.collect Terocone##22789 |n
skill Herbalism,375
step
#include "hearth_hub"
// ----------
// 350 - 425
// ----------
// TRAIN: Grand Master Herbalism
step
title + Herbalism 350-425
label	"herb_375_425"
#include "trainer_Herbalism"
.skillmax Herbalism,450
// GATHER: (Herbalism 400), (Herbalism 425)
step
#include "rideto_borean"
step
map Borean Tundra
path 51.9,47.7		53.7,43.4	53.2,38.8
path 54.8,29.9		51.3,20.8
#include "follow_path_herbs"
.collect Goldclover##36901 |n
.collect Tiger Lily##36904 |n
skill Herbalism,400
step
|fly Nesingwary Base Camp
step
map Sholazar Basin
path 32.0,58.2		36.1,65.3		43.9,57.7	
path 44.5,63.9		39.5,66.3		40.4,71.7
path 32.8,82.3		36.1,84.4		42.6,76.0
path 46.8,62.5		51.0,62.0		60.0,73.9
path 55.7,85.9		66.4,82.3		69.3,65.8
path 55.2,57.1		48.9,55.0		55.4,48.1
path 58.1,38.3		34.8,31.4		30.1,43.4
path 32.1,48.5		26.6,55.4		23.7,60.3
#include "follow_path_herbs"
.collect Goldclover##36901 |n
.collect Tiger Lily##36904 |n |tip You must be skill level 375 to gather this.
skill Herbalism,425
step
#include "hearth_hub"
// ----------
// 425 - 525
// ----------
// TRAIN: Illustrious Grand Master
step
title + Herbalism 425-525
label "herb_425-525"
#include "trainer_Herbalism"
.' Learn the Illustrious Grand Master Herbalism skill |skillmax Herbalism,525
// GATHER: (Herbalism 475), (Herbalism 500), (Herbalism 525)
step
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "port_hyjal"
step
label	"farming"
map Mount Hyjal	
path   68.2,23.9		59.2,31.6		57.0,38.9	
path 57.9,17.5		51.5,16.9		52.6,35.5
path 48.7,36.5		44.0,24.5		39.8,32.5
path 36.5,21.7		32.3,25.2		34.6,36.9
path 43.5,42.6		36.2,44.9		25.3,37.8
path 24.1,31.9		11.8,31.6		14.3,47.0
path 19.0,58.5		25.6,62.0		31.9,46.7
path 33.1,65.2		36.9,53.5		42.3,55.9
path 33.8,65.0		31.3,76.5		33.8,98.2
path 57.1,80.9		59.2,84.5		59.8,77.8
path 55.8,74.7		59.8,71.6		49.1,51.6
path 61.9,60.5		67.1,53.5		74.3,58.8
path 71.9,68.5		77.3,63.2		83.0,64.2
path 89.9,49.8		80.9,51.8		77.5,59.5
#include "follow_path_herbs"
.collect Cinderbloom##52983 |n
skill Herbalism,475
step
#include "hearth_hub"
step
label	"farm2"
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "port_deepholm"
step
label	"farming"
map Deepholm	
path 69.4,56.0	        70.0,60.7		72.9,58.2	
path 74.7,61.1		75.8,67.5		70.9,62.9
path 71.1,70.6		66.0,68.5		26.8,41.5
path 26.5,35.6		23.1,35.3		25.9,31.9
path 27.5,32.3		27.8,27.0		31.2,32.0
path 28.9,35.6		26.8,41.5
#include "follow_path_herbs"
.collect Heartblossom##52986 |n
skill Herbalism,500
step
#include "hearth_hub"
step
label	"farm3"
#include "port_uldum"
step
map Uldum
path   58.4,31.3		56.2,22.6		57.8,14.5	
path 61.5,14.0		57.1,44.7		60.5,58.3
path 69.8,76.5		65.9,75.9		60.0,83.2
path 59.0,58.8		55.3,45.8		52.0,45.6
path 50.8,42.5		50.8,36.0		50.8,36.0
#include "follow_path_herbs"
.collect Whiptail##52988 |n
skill Herbalism,525
step
title +Herbalism 525
label "herb_525"
'Congratulations, you are now a level 525 Herbalist!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Professions Guides\\Inscription\\Inscription 1-525 Leveling Guide",[[
description This guide will walk you through leveling your Inscription skill from 1-525.
author support@zygorguides.com
completion skill,Inscription,525
#include profession_dual_start,prof1="Inscription",prof2="Herbalism"  // All-purpose dual-profession starter. Covers from the introduction through learning the second profession.
// routing to the proper section.
step
label "route"
'Redirecting to Inscription 1-50 |next "ins_1-50" |only if skill("Inscription")<50
'Redirecting to Inscription 50-150 |next "ins_50-150" |only if skill("Inscription")>=50 and skill("Inscription")<150
'Redirecting to Inscription 150-200 |next "ins_150-200" |only if skill("Inscription")>=150 and skill("Inscription")<200
'Redirecting to Inscription 200-275 |next "ins_200-275" |only if skill("Inscription")>=200 and skill("Inscription")<275
'Redirecting to Inscription 275-350 |next "ins_275-350" |only if skill("Inscription")>=275 and skill("Inscription")<350
'Redirecting to Inscription 350-425 |next "ins_350-425" |only if skill("Inscription")>=350 and skill("Inscription")<425
'Redirecting to Inscription 425-525 |next "ins_425-525" |only if skill("Inscription")>=425 and skill("Inscription")<525
'Redirecting to Inscription finale |next "ins_525" |only if default
// ----------
// 1 - 50
// ----------
// TRAIN: Apprentice Inscription
step
title + Inscription 1-50
label "ins_1-50"
#include "trainer_Inscription"
.skillmax Inscription,75 |tip You must be at least level 5.
step
#include "home_TradeDistrict"
step
#include "vendor_Inscription"
.buy 1 Virtuoso Inking Set##39505
.buy 17 Light Parchment##39354
step
#include "auctioneer"
.' You need about 160 herbs total
.buy Silverleaf##765 |n
.buy Peacebloom##2447 |n
.buy Earthroot##2449 |n
.buy Bloodthistle##22710 |n
.' Mill the 160 herbs you purchased, or gathered, into Alabaster Pigment |cast Milling##51005
.' You'll need about {_G.max(0 , (69-itemcount(765,2447,2449,22710))*2)} more herbs.
.buy 69 Alabaster Pigment##39151
#include go_farm,skill="Herbalism",req="1",goto="ins_1-50_farm"
|next "ins_1-50_skill"
// GATHER: 69 Alabaster Pigment
step
label "ins_1-50_farm"
'Go outside to Elwynn Forest |goto Elwynn Forest |noway |c
step
map Elwynn Forest
path follow loose;loop;ants straight  // this stays set until the end of the guide.
path 43.4,58.9		48.7,62.6		58.0,65.6	
path 64.9,63.5		78.6,63.0		79.6,80.4	
path 79.6,80.4		59.1,78.3		50.8,85.2	
path 46.8,81.1		37.3,87.6		26.2,89.0	
path 30.1,76.1		33.2,66.5
#include "follow_path_herbs"
.' You need about 160 herbs total
.collect Silverleaf##765 |n
.collect Peacebloom##2447 |n
.' You'll need about {_G.max(0 , (69-itemcount(765,2447,2449,22710))*2)} more herbs.
.' Mill the 160 herbs you gathered into Alabaster Pigment
.collect 69 Alabaster Pigment##39151
#include "max_skill_warning",skill="Herbalism",goto="ins_1-50_farm"
// CREATE: 17 Ivory Ink, 17 Scroll of Intellect, 26 Moonglow Ink
step
label "ins_1-50_skill"
.create 17 Ivory Ink##52738,Inscription,18 |tip Save 17 of these for later use.
step
.create 17 Scroll of Intellect##48114,Inscription,35
step
#include "trainer_Inscription"
.learn Moonglow Ink##52843
step
.create 26 Moonglow Ink##52843,Inscription,26 total
skill Inscription,50
// ----------
// 50 - 150
// ----------
// TRAIN: Journeyman Inscription
step
title + Inscription 50-150
label "ins_50-150"
#include "trainer_Inscription"
.skillmax Inscription,150 |tip You must be at least level 10.
.learn Enchanting Vellum##52739
step
#include "vendor_Inscription"
.buy 59 Light Parchment##39354
step
#include "auctioneer"
.' You need about 85 Dusky giving herbs total
.buy Briarthorn##2450 |n
.buy Bruiseweed##2453 |n
.buy Mageroyal##785 |n
.buy Stranglekelp##3820 |n
.buy Swiftthistle##2452 |n
.' You'll need about {_G.max(0 , (42-itemcount(2450,2453,785,3820,2452))*2)} more herbs.
.' Mill the 85 Dusky-giving herbs you purchased into Dusky Pigment. |cast Milling##51005
.buy 42 Dusky Pigment##39334
#include go_farm,skill="Herbalism",req="50",goto="ins_50-150_farm_pt1"
|next "ins_50-150_skill_pt1"
// GATHER: 42 Dusky Pigment
step
label "ins_50-150_farm_pt1"
#include "trainer_Herbalism"
.skillmax Herbalism,150
step
|fly Refuge Pointe
step
'Go northwest to Hillsbrad Foothills |goto Hillsbrad Foothills |noway |c
step
map Hillsbrad Foothills
path 31.8,62.6		33.9,54.0		33.9,54.0	
path 35.5,37.8		29.7,44.1		34.5,28.2	
path 34.5,28.2		39.5,21.0		39.5,21.0	
path 44.2,8.3		51.3,14.0		57.5,20.9	
path 56.1,34.3		49.9,46.2		43.1,50.1
path 38.2,49.1		40.1,55.0		41.3,67.4
path 41.3,67.4		34.9,76.7		36.3,69.9
#include "follow_path_herbs"
.' You need about 85 Dusky giving herbs total
.collect Mageroyal##785 |n
.collect Bruiseweed##2453 |n
.collect Briarthorn##2450 |n
.' You'll need about {_G.max(0 , (42-itemcount(2450,2453,785,3820,2452))*2)} more herbs.
.' Mill the 85 herbs you gathered into Dusky Pigment
.collect 42 Dusky Pigment##39334
#include "max_skill_warning",skill="Herbalism",goto="ins_50-150_farm_pt1"
step
#include "hearth_hub"
// CREATE: 25 Enchanting Vellum, 1 Minor Inscription Research, 21 Midnight Ink, 7 Discovered Glyph
step
label "ins_50-150_skill_pt1"
.create 25 Enchanting Vellum##52739,Inscription,75
step
#include "trainer_Inscription"
.learn Minor Inscription Research##61288
step
.create Minor Inscription Research##61288,Inscription,76
step
#include "trainer_Inscription"
.learn Midnight Ink##39774
step
.create 21 Midnight Ink##53462,Inscription,21 total
skill Inscription,80
step
#include "trainer_Inscription"
.learn Glyph of Backstab##56800
step
.create 4 Glyph of Backstab##57114,Inscription,92
step
#include "trainer_Inscription"
.learn Glyph of Hammer of Justice##54923
step
.create 3 Glyph of Hammer of Justice##57027,Inscription,101
step
#include "trainer_Inscription"
.learn Lions Ink##57704
step
#include "vendor_Inscription"
.buy 13 Common Parchment##39354
step
#include "auctioneer"
.' You need about 145 Golden giving herbs total
.buy Grave Moss##3369 |n
.buy Kingsblood##3356 |n
.buy Liferoot##3357 |n
.buy Wild Steelbloom##3355 |n
.' You'll need about {_G.max(0 , (36-itemcount(3369,3356,3357,3355))*2)} more herbs.
.' Mill the 220 Golden-giving herbs into Golden Pigment and Burnt Pigment |cast Milling##51005
.buy 80 Golden Pigment##39338
.buy 20 Burnt Pigment##43104
#include go_farm,skill="Herbalism",req="105",goto="ins_50-150_farm_pt2"
|next "ins_50-150_skill_pt2"
// GATHER: 80 Golden Pigment
step
label "ins_50-150_farm_pt2"
|fly Rebel Camp
step
map Northern Stranglethorn
path 64.2,25.4		63.3,24.2		63.3,24.2	
path 63.9,39.4		56.2,43.2		56.2,43.2	
path 45.5,40.7		35.9,32.9		31.5,37.2	
path 23.1,32.3		17.4,24.1
#include "follow_path_herbs"
.' You need about 145 Golden giving herbs total
.collect Grave Moss##3369 |n
.collect Kingsblood##3356 |n
.collect Liferoot##3357 |n
.collect Wild Steelbloom##3355 |n
.' You'll need about {_G.max(0 , (36-itemcount(3369,3356,3357,3355))*2)} more herbs.
.' Mill the 220 herbs you gathered into Golden Pigment |cast Milling##51005
.collect 80 Golden Pigment##39338
.collect 20 Burnt Pigment##43104
#include "max_skill_warning",skill="Herbalism",goto="ins_50-150_farm_pt1"
step
#include "hearth_hub"
// CREATE: 66 Lions Ink, 7 Discovered Glyphs, 15 Dawnstar Ink, 4 Discovered Glyphs, 1 Strange Tarot
step
label "ins_50-150_skill_pt2"
.create 36 Lions Ink##57704,Inscription,36 total
skill Inscription,105
step
#include "vendor_Inscription"
.buy 20 Common Parchment##10648
step
#include "trainer_Inscription"
.learn Glyph of Divine Favor##54937
step
.create 2 Glyph of Divine Favor##57029,Inscription,2 total
skill Inscription,111
step
#include "trainer_Inscription"
.learn Glyph of Fire Nova##57238
step
.create 2 Glyph of Fire Nova##57238,Inscription,2 total
skill Inscription,117
step
#include "trainer_Inscription"
.learn Glyph of Mending##56997
step
.create 1 Glyph of Mending##56997,Inscription,120
step
#include "trainer_Inscription"
.learn Glyph of Expose Armor##57121
step
.create 1 Glyph of Expose Armor##57121,Inscription,2 total
skill Inscription,126
step
#include "trainer_Inscription"
.learn Dawnstar Ink##57706
step
.create 15 Dawnstar Ink##57706,Inscription,15 total
skill Inscription,135
step
#include "trainer_Inscription"
.learn Glyph of Divinity##57031
step
.create 2 Glyph of Divinity##57031,Inscription,141
step
#include "trainer_Inscription"
.learn Glyph of Imp##57269
step
.create 2 Glyph of Imp##57269,Inscription,147
step
#include "trainer_Inscription"
.learn Strange Tarot##59480
step
.create 3 Strange Tarot##59480,Inscription,150 |tip This will give you three skill-up points.
// ----------
// 150 - 200
// ----------
// TRAIN: Expert Inscription
step
title + Inscription 150-200
label "ins_150-200" 
#include "trainer_Inscription"
.skillmax Inscription,225 |tip You must be at least level 20.
.learn Jadefire Ink##57707
step
#include "vendor_Inscription"
.buy 16 Common Parchment##10648
step
#include "auctioneer"
.' You need 155 Emerald-giving herbs total or you can buy the pigment off of the Auction House if you do not want to mill.
.buy Dragon's Teeth##3819 |n
.buy Fadeleaf##3818 |n
.buy Goldthorn##3821 |n
.buy Khadgar's Whisker##3358 |n
.' You'll need about {_G.max(0 , (78-itemcount(3819,3818,3821,3358))*2)} more herbs.
.' Mill the 155 Emerald-giving herbs you purchased into Emerald Pigment |cast Milling##51005
.buy 78 Emerald Pigment##39339
.buy 20 Indigo Pigment##43105
#include go_farm,skill="Herbalism",req="150",goto="ins_150-200_farm"
|next "ins_150-200_skill"
// GATHER: 90 Emerald Pigment
step
label "ins_150-200_farm"
#include "trainer_Herbalism"
.skillmax Herbalism,225
'Your _Herbalism_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 150. It's better to skill up first. |only if skill("Herbalism")<125 and skillmax("Herbalism")<225
step
|fly Booty Bay
step
#include "rideto_ratchet"
step
|fly Shadebough
step
map Feralas
path 73.0,42.0		72.9,37.3		70.5,37.1	
path 69.2,42.3		67.3,45.9		63.9,48.1	
path 59.4,46.6		55.7,47.6		53.2,48.3	
path 54.8,53.6		56.0,60.1		55.2,66.6
path 58.6,64.7		61.3,61.9		62.8,58.0
path 67.9,51.0		69.0,60.1		71.4,60.0
path 72.1,57.3		77.8,56.6		77.1,48.2
path 73.3,50.2
#include "follow_path_herbs"
.' You need 155 herbs total
.collect Fadeleaf##3818 |n
.collect Goldthorn##3821 |n
.collect Khadgar's Whisker##3358 |n
.' You'll need about {_G.max(0 , (78-itemcount(3819,3818,3821,3358))*2)} more herbs.
.' Mill the 155 herbs you gathered, into Emerald Pigment and Indigo Pigment |cast Milling##51005
.collect 155 Emerald Pigment##39339
.collect 20 Indigo Pigment##43105
#include "max_skill_warning",skill="Herbalism",goto="ins_150-200_farm"
step
#include "hearth_home"
// CREATE: 48 Jadefire Ink, 7 Discovered Glyph, 4 Royal Ink, 9 Discovered Glyph, 1 Arcane Tarot
step
label "ins_150-200_skill"
.create 39 Jadefire Ink##57707,Inscription,39 total
.skill Inscription,155
step
#include "trainer_Inscription"
.learn Glyph of Evocation##5697
step
.create 2 Glyph of Evocation##56974,Inscription,161
step
#include "trainer_Inscription"
.learn Glyph of Gouge##57125
step
.create 2 Glyph of Gouge##57125,Inscription,167
step
#include "trainer_Inscription"
.learn Glyph of Lava Lash##57249
step
.create 1 Glyph of Lava Lash##57249,Inscription,170
step
#include "trainer_Inscription"
.learn Glyph of Overpower##57161
step
.create 2 Glyph of Overpower##57161,Inscription,176
step
#include "trainer_Inscription"
.learn Royal Ink##57708
step
.create 10 Royal Ink##57708,Inscription,180
step
#include "trainer_Inscription"
.learn Glyph of Blind##92579
step
.create 2 Glyph of Blind##92579,Inscription,186
step
#include "trainer_Inscription"
.learn Glyph of Frost Shock##57241
step
.create 2 Glyph of Frost Shock##57241,Inscription,192
step
#include "trainer_Inscription"
.learn Glyph of Revenge##57165
step
.create 2 Glyph of Revenge##57165,Inscription,195
step
#include "trainer_Inscription"
.learn Arcane Tarot##59487
step
.create 5 Arcane Tarot##59487,Inscription,200 |tip This will give you three skill-up points.
// ----------
// 200 - 275
// ----------
// TRAIN: Artisan Inscription
step
title + Inscription 200-275
label "ins_200-275"
#include "trainer_Inscription"
.skillmax Inscription,300 |tip You must be at least level 35.
.learn Celestial Ink##57709
step
#include "vendor_Inscription"
.buy 36 Heavy Parchment##39501
step
#include "auctioneer"
.' You need about 240 Violet-giving herbs total
.buy Arthas' Tears##8836 |n
.buy Blindweed##8839 |n
.buy Firebloom##4625 |n
.buy Ghost Mushroom##8845 |n
.buy Gromsblood##8846 |n
.buy Purple Lotus##8831 |n
.buy Sungrass##8838 |n
.' You'll need about {_G.max(0 , (60-itemcount(8836,8839,4625,8845,8846,8831,8838))*2)} more herbs.
.' Mill the 240 herbs you purchased into Violet Pigment |cast Milling##51005
.buy 120 Violet Pigment##39340
#include go_farm,skill="Herbalism",req="1",goto="ins_200-275_farm_pt1"
|next "ins_200-275_skill_pt1"
// GATHER: 102 Violet Pigment
step
label "ins_200-275_farm_pt1"
#include "trainer_Herbalism"
.skillmax Herbalism,300
'Your _Herbalism_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 225 and you won't be able to farm anymore. It's better to skill up to 200 first. |only if skill("Herbalism")<200 and skillmax("Herbalism")<300
step
|fly Light's Hope Chapel
step
map Eastern Plaguelands
path 73.7,55.4		73.4,61.0		71.1,66.8	
path 69.0,72.5		65.1,74.2		59.7,71.1	
path 54.6,68.0		48.9,71.6		44.4,71.7	
path 39.7,73.9		30.2,75.8		21.6,74.3	
path 16.1,70.3		16.5,62.4		23.1,61.5	
path 30.9,61.6		40.0,60.9		45.1,48.1	
path 46.9,30.5		47.4,19.9		56.2,19.5	
path 63.6,37.3		64.1,60.0
#include "follow_path_herbs"
.' You need about 240 Violet-giving herbs total
.collect Sungrass##8838 |n
.collect Arthas' Tears##8836 |n
.' You'll need about {_G.max(0 , (60-itemcount(8836,8839,4625,8845,8846,8831,8838))*2)} more herbs in stacks of 5.
.' Mill the 240 herbs you gathered into Violet Pigment |cast Milling##51005
.collect 120 Violet Pigment##39340
#include "max_skill_warning",skill="Herbalism",goto="ins_200-275_farm_pt1"
step
#include "hearth_hub"
// CREATE: 66 Celestial Ink,
step
label "ins_200-275_skill_pt1"
.create 66 Celestial Ink##57709,Inscription,205
step
#include "trainer_Inscription"
.learn Glyph of Consecration##57023
step
.create 2 Glyph of Consecration##57023,Inscription,211
step
#include "trainer_Inscription"
.learn Glyph of Sinister Strike##57131
step
.create 2 Glyph of Sinister Strike##57131,Inscription,217
step
#include "trainer_Inscription"
.learn Glyph of Healing Stream Totem##57242
step
.create 1 Glyph of Healing Stream Totem##57242,Inscription,220
step
#include "trainer_Inscription"
.learn Glyph of Starfire##56959
step
.create 2 Glyph of Starfire##56959,Inscription,226
step
#include "trainer_Inscription"
.learn Glyph of Disengage##57001
step
.create 2 Glyph of Disengage##57001,Inscription,232
step
#include "trainer_Inscription"
.learn Glyph of Crusader Strike##57024
step
.create 2 Glyph of Crusader Strike##57024,Inscription,235
step
#include "trainer_Inscription"
.learn Glyph of Slice and Dice##57132
step
.create 2 Glyph of Slice and Dice##57132,Inscription,241
step
#include "trainer_Inscription"
.learn Glyph of Cleaving##57154
step
.create 7 Glyph of Cleaving##57154,Inscription,250
step
#include "trainer_Inscription"
.learn Shimmering Ink##57711
step
#include "auctioneer"
.' You need 150 about Silvery-giving herbs total
.collect Dreamfoil##13463 |n
.collect Golden Sansam##13464 |n
.collect Icecap##13467 |n
.collect Mountain Silversage##13465 |n
.collect Sorrowmoss##13466 |n
.' You'll need about {_G.max(0 , (38-itemcount(13463,13464,13467,13465,13466))*2)} more herbs.
.' Mill the 180 herbs you purchased into Silvery Pigment |cast Milling##51005
.collect 90 Silvery Pigment##39341
#include go_farm,skill="Herbalism",req="250",goto="ins_200-275_farm_pt2"
// GATHER: 50 Silvery Pigment
step
label "ins_200-275_farm_pt2"
|fly Nethergarde Keep
step
map Swamp of Sorrows
path 17.7,65.7		22.9,45.3		14.1,33.2	
path 22.9,45.3		31.9,37.6		27.3,62.0	
path 36.9,33.0		34.5,59.6		41.0,34.5	
path 40.5,55.6		50.7,31.3		60.6,62.5	
path 73.5,80.1		77.7,60.6		83.8,59.5	
path 80.1,80.4		88.6,63.4		82.3,23.1	
path 78.0,42.5		75.1,19.5		57.0,36.6
#include "follow_path_herbs"
.' You need 150 about Silvery-giving herbs total
.collect Golden Sansam##13464 |n
.collect Sorrowmoss##13466 |n
.' You'll need about {_G.max(0 , (38-itemcount(13463,13464,13467,13465,13466))*2)} more herbs.
.' Mill the 130 herbs you gathered into Silvery Pigment. |cast Milling##51005
.collect 64 Silvery Pigment##39341
#include "max_skill_warning",skill="Herbalism",goto="ins_200-275_farm_pt1"
step
#include "heath_hub"
// CREATE: 45 Shimmering Ink, 5 Scroll of Spirit, 2 Glyph of Freezing Trap, 2 Glyph of Bone Shield, 1 Glyph of Fear Ward, 2 Glyph of Shadowburn, 2 Glyph of Icy Touch, 1 Glyph of Bloodthirst
step
label "ins_200-275_skill_pt2"
.create 32 Shimmering Ink##57711,Inscription,20 total
skill Inscription,255
step
#include "trainer_Inscription"
.learn Scroll of Spirit V##50608
step
.create 5 Scroll of Spirit V##50608,Inscription,260
step
#include "trainer_Inscription"
.learn Glyph of Freezing Trap##57002
step
.create 2 Glyph of Freezing Trap##57002,Inscription,266
step
#include "trainer_Inscription"
.learn Glyph of Bone Shield##57210
step
.create 2 Glyph of Bone Shield##57210,Inscription,272
step
#include "trainer_Inscription"
.learn Glyph of Fear Ward##57185
step
.create 2 Glyph of Fear Ward##57185,Inscription,275
// ----------
// 275 - 350
// ----------
// TRAIN: Master Inscription
step
title + Inscription 275-350
label "ins_275-350"
#include "trainer_Inscription"
.skillmax Inscription,375 |tip You must be at least level 50.
step
#include "vendor_Inscription"
.buy 2 Light Parchment##39354
.buy 7 Heavy Parchment##39501
.buy 15 Resilient Parchment##39502
step
#include "auctioneer"
.' You need about 170 Nether-giving herbs total
.buy Ancient Lichen##22790 |n
.buy Dreaming Glory##22786 |n
.buy Felweed##22785 |n
.buy Mana Thistle##22793 |n
.buy Ragveil##22787 |n
.buy Terocone##22789 |n
.buy Nightmare Vine##22792 |n
.buy Netherbloom##22791 |n
.' You'll need about {_G.max(0 , (84-itemcount(22790,22786,22785,22793,22787,22789,22792,22791))*2)} more herbs in stacks of 5.
.' Mill the 180 herbs you purchased into Nether Pigment |cast Milling##51005
.buy 90 Nether Pigment##39342
#include go_farm,skill="Herbalism",req="275",goto="ins_275-350_farm"
|next "ins_275-350_skill"
// Gather 90 Nether Pigment
step
label "ins_275-350_farm"
#include "trainer_Herbalism"
.skillmax Herbalism,375
'Your _Herbalism_ skill is too low to learn this; You can start farming, but your skill gains will stop at 300 and you won't be able to farm anymore. It's better to skill up to 275 first. |only if skill("Herbalism")<275 and skillmax("Herbalism")<375
step
#include "darkportal"
step
map Hellfire Peninsula
path 80.6,79.9		67.1,27.3		68.6,76.9	
path 62.1,31.3		61.8,78.3		55.8,31.1	
path 56.1,71.6		52.5,27.5		51.0,83.1	
path 46.3,28.0		44.5,69.9		41.8,29.8	
path 40.7,84.5		37.8,30.8		32.9,65.6		
path 30.5,33.1		28.0,78.7		23.8,44.6	
path 22.9,67.5		20.0,42.4		13.7,63.0		
path 13.5,38.7	
#include "follow_path_herbs"
.' You need about 170 Nether-giving herbs total
.collect Felweed##22785
.collect Dreaming Glory##22786
.' You'll need about {_G.max(0 , (84-itemcount(22790,22786,22785,22793,22787,22789,22792,22791))*2)} more herbs in stacks of 5.
.' Mill the 170 herbs you gathered into Nether Pigment |cast Milling##51005
.collect 84 Nether Pigment##39342
#include "max_skill_warning",skill="Herbalism",goto="ins_275-350_farm"
step
#include "hearth_hub"
// CREATE: 45 Ethereal Ink, 2 Glyph of Feint, 2 Glyph of Rake, 1 Glyph of Arcane Blast, 2 Glyph of Blood Boil, 15 Darkflame Ink, 2 Glyph of Scourge Strike, 2 Glyph of Arcane Power, 1 Glyph of Ambush, 2 Glyph of Whirlwind
step
label "ins_275-350_skill"
#include "trainer_Inscription"
.learn Glyph of Death Coil##64266
step
.create 2 Glyph of Death Coil##64266,Inscription,281
step
#include "trainer_Inscription"
.learn Glyph of Icy Touch##57219
step
.create 2 Glyph of Icy Touch##57219,Inscription,287
step
#include "trainer_Inscription"
.learn Glyph of Bloodthirst##57156
step
.create 1 Glyph of Bloodthirst##57156,Inscription,290
step
#include "trainer_Inscription"
.learn Ethereal Ink##57713
step
.create 45 Ethereal Ink##57713,Inscription,42 total
.skill Inscription,305
step
#include "trainer_Inscription"
.learn Glyph of Feint##57122
step
.create 2 Glyph of Feint##57122,Inscription,311
step
#include "trainer_Inscription"
.learn Glyph of Pounce##56952
step
.create 2 Glyph of Pounce##56952,Inscription,317
step
#include "trainer_Inscription"
.learn Glyph of Arcane Blast##56991
step
.create 1 Glyph of Arcane Blast##56991,Inscription,320
step
#include "trainer_Inscription"
.learn Glyph of Blood Boil##59339
step
.create 2 Glyph of Blood Boil##59339,Inscription,326
step
#include "trainer_Inscription"
.learn Glyph of Mage Armor##56984
step
.create 2 Glyph of Mage Armor##56984,332
step
#include "trainer_Inscription"
.learn Glyph of Lacerate##94402
step
.create 1 Glyph of Lacerate##94402,Inscription,335
step
#include "trainer_Inscription"
.learn Glyph of Arcane Power##56972
step
.create 1 Glyph of Arcane Power##56972,Inscription,341
step
#include "trainer_Inscription"
.learn Glyph of Ambush##57113
step
.create 2 Glyph of Ambush##57113,Inscription,347
step
#include "trainer_Inscription"
.learn Glyph of Raging Blow##57172
step
.create 1 Glyph of Raging Blow##57172,Inscription,350
// ----------
// 350 - 425
// ----------
// TRAIN: Grand Master Inscription
step
title + Inscription 350-425
label "ins_350-425"
#include "trainer_Inscription"
.skillmax Inscription,450 |tip You must be at least level 65.
.learn Ink of Sea##57715
step
goto 49.6,74.9
.talk 30730
.buy 130 Resilient Parchment##39502
step
#include "auctioneer"
.' You need about 255 Azure-giving herbs total
.buy Adder's Tongue##36903 |n
.buy Deadnettle##37921 |n
.buy Fire Leaf##39970 |n
.buy Fire Seed##39969 |n
.buy Goldclover##36901 |n
.buy Talandra's Rose##36907 |n
.buy Tiger Lily##36904 |n
.buy Icethorn##36906 |n
.buy Lichbloom##36905 |n
.' You'll need about {_G.max(0 , (126-itemcount(36903,37921,39970,39969,36901,36901,36907,36904,36906,36905))*2)} more herbs in stacks of 5.
.' Mill the 255 herbs you purchased into Azure Pigment and Icy Pigment |cast Milling##51005
.buy 206 Azure Pigment##39343
.buy 30 Icy Pigment##43109
#include go_farm,skill="Herbalism",req="1",goto="ins_350-425_farm"
|next "ins_350-425_skill"
// GATHER: 270 Azure Pigment
step
label "ins_350-425_farm"
#include "trainer_Herbalism"
.skillmax Herbalism,450
'Your _Herbalism_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 375. It's better to skill up first. |only if skill("Herbalism")<350 and skillmax("Herbalism")<450
step
map The Storm Peaks
path 36.8,86.1		40.3,87.9		37.7,94.3	
path 36.6,89.0		32.9,93.8		32.5,86.9	
path 31.4,83.1		40.0,82.3		38.4,80.8	
path 39.4,79.2		43.5,78.0		42.6,75.6	
path 45.4,77.1		45.6,79.1		46.6,78.9		
path 47.0,77.2		49.0,78.4		48.5,73.3	
path 51.4,75.6		52.2,69.5		58.3,72.0		
path 54.3,66.2		58.6,58.3		56.8,66.0		
path 60.1,61.5		62.9,62.7		63.0,59.6		
path 61.8,58.3		64.2,49.5		64.1,54.1		
path 65.0,58.8		66.9,58.5		65.6,63.6
path 72.5,65.0		71.8,56.0		74.0,49.9		
path 70.9,47.1		72.8,53.1		70.0,49.9
path 70.9,53.0		68.8,54.7		68.6,47.7		
path 66.4,48.7		65.6,40.6		63.1,41.7
path 61.8,44.9		57.4,40.9		59.9,45.0		
path 60.9,49.5		56.7,48.5		56.3,52.3
path 51.1,48.1		50.9,51.9		52.5,53.2		
path 52.0,59.0		50.2,61.5		50.1,58.6
path 48.6,60.9		47.5,54.4		47.7,63.6		
path 46.6,56.7		42.8,53.0		42.0,54.1
path 44.0,59.3		43.6,62.0		42.0,60.3		
path 40.3,64.5		39.2,61.9		36.8,64.3
path 39.0,52.7		38.8,48.4		47.7,36.0		
path 34.0,38.9		37.2,43.7		34.5,42.2
path 33.5,44.9		35.7,47.1		32.1,50.5		
path 29.4,50.5		28.2,45.1		29.2,37.4
path 22.2,36.7		22.3,41.1		25.6,41.6		
path 24.3,47.1		28.6,53.1		26.8,55.8
path 21.6,55.7		22.6,62.8		24.5,62.0		
path 27.3,58.4		27.8,59.9		25.8,67.2
path 27.2,67.1		27.2,69.7		24.6,72.5		
path 26.6,73.1		28.4,70.8		29.4,64.3
path 30.7,64.5		29.9,70.9		31.2,70.6		
path 32.8,74.5		35.3,73.5		32.8,66.9
path 33.5,65.5		37.0,67.7		36.3,72.7		
path 38.2,76.9		38.9,75.1		40.4,77.6
#include "follow_path_herbs"
.' You need about 255 Azure-giving herbs total
.collect Icethorn##36906 |n
.collect Lichbloom##36905 |n
.' You'll need about {_G.max(0 , (126-itemcount(36903,37921,39970,39969,36901,36901,36907,36904,36906,36905))*2)} more herbs in stacks of 5.
.' Mill the 320 herbs you gathered into Nether Pigment and Icy Pigment |cast Milling##51005
.collect 196 Azure Pigment##39343
.collect 30 Icy Pigment##43109
#include "max_skill_warning",skill="Herbalism",goto="ins_350-425_farm"
step
#include "hearth_hub"
// CREATE: 138 Ink of Sea
step
label "ins_350-425_skill"
.create 103 Ink of Sea##57715,Inscription,63 total
skill Inscription,355
step
#include "trainer_Inscription"
.learn Scroll of Spirit VII##50610
step
.create 5 Scroll of Spirit VII##50610,Inscription,360
step
#include "trainer_Inscription"
.learn Scroll of Intellect VII##50603
step
.create 5 Scroll of Intellect VII##50603,Inscription,365
step
#include "trainer_Inscription"
.learn Scroll of Strength VII##58490
step
.create 5 Scroll of Stength VII##58490,Inscription,370
step
#include "trainer_Inscription"
.learn Scroll of Agility VII##58482
step
.create 5 Scroll of Agility VII##58482,Inscription,375
step
#include "trainer_Inscription"
.learn Snowfall Ink##57716
step
.create 15 Snowfall Ink##57716,Inscription,15 total
.skill Inscription,380
step
#include "trainer_Inscription"
.learn Glyph of Focus##62162
step
.create 5 Glyph of Focus##62162,Inscription,385
step
#include "trainer_Inscription"
.learn Northrend Inscription Research##61177
step
'Use your Northrend Inscrption Research ability to discover a new major glyph. |tip This ability has a 20 hour cooldown.
.create Northrend Inscrption Research##61177,Inscription,386
step
'Use Inscription skill to create your Newly Discovered glyph until your Inscription skill is 400. |tip Each glyph will give you three skill-up points. //x20
.' Inscription skill raised to level 400 |skill Inscription,400
step
#include "trainer_Inscription"
.learn Scroll of Stamina VIII##50620
step
.create 5 Scroll of Stamina VIII##50620,Inscription,405
step
#include "trainer_Inscription"
.learn Scroll of Spirit VIII##50611
step
.create 5 Scroll of Spirit VIII##50611,Inscription,410
step
#include "trainer_Inscription"
.learn Scroll of Intellect VIII##50604
step
.create 5 Scroll of Intellect VIII##50604,Inscription,415
step
#include "trainer_Inscription"
.learn Scroll of Strength VIII##58491
step
.create 5 Scroll of Strength VIII##58491,Inscription,420
step
#include "trainer_Inscription"
.learn Scroll of Agility VIII##58483
step
.create 5 Scroll of Agility VIII##58483,Inscription,425
// ----------
// 425 - 525
// ----------
// TRAIN: Illustrious Grand Master Inscription
step
title + Inscription 425-525
label "ins_425-525"
#include "trainer_Inscription"
.skillmax Inscription,525 |tip You must be at least level 75.
.learn Blackfallow Ink##86004
step
#include "vendor_Inscription"
.buy 141 Resilient Parchment##39502
step
#include "port_twilight"
step
goto Twilight Highlands,78.5,76.2
.talk 49703
.buy 2 Deathwing Scale Fragment##62323
.buy 1 Preserved Ogre Eye##67319
step
goto Twilight Highlands 79.5,77.8 |n
.' Enter the Portal to Stormwind City |goto Stormwind City|noway|c
step
#include "auctioneer"
.' You need about 155 Ashen-giving herbs total
.buy Azshara's Veil##52985 |n
.buy Cinderbloom##52983 |n
.buy Deathspore Pod##52989 |n
.buy Stormvine##52984 |n
.buy Twilight Jasmine##52987 |n
.buy Whiptail##52988 |n
.' You'll need about {_G.max(0 , (305-itemcount(52985,52983,52989,52984,52987,52988))*2)} more herbs in stacks of 5.
.' Mill the 155 herbs you purchased into Ashen Pigment and Burning Embers  |cast Milling##51005
.buy 1 Preserved Ogre Eye##67319
.buy 6 Volatile Earth##52327
.buy 12 Volatile Air##52328
.buy 152 Burning Embers##61980
.buy 23 Volatile Fire##52325
.buy 30 Volatile Water##52326
.buy 126 Ashen Pigment##61979
.buy 156 Volatile Life##52329
#include go_farm,skill="Herbalism",req="425",goto="ins_425-525_farm"
|next "ins_425-525_skill"
step
#include "port_hyjal"
// GATHER: 58 Ashen Pigment, 15 Burning Embers, 156 Volatile Life, 24 Volatile Water, 5 Volatile Earth, 12 Volatile Air
step
label "ins_425-525_farm"
#include "trainer_Herbalism"
.skillmax Herbalism,525
'Your _Herbalism_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 450. It's better to skill up first. |only if skill("Herbalism")<425 and skillmax("Herbalism")<525
step
'Skipping next part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Mount Hyjal
path 68.2,23.9		59.2,31.6		57.0,38.9	
path 57.9,17.5		51.5,16.9		52.6,35.5	
path 48.7,36.5		44.0,24.5		39.8,32.5	
path 36.5,21.7		32.3,25.2		34.6,36.9	
path 43.5,42.6		36.2,44.9		25.3,37.8	
path 24.1,31.9		11.8,31.6		14.3,47.0	
path 19.0,58.5		25.6,62.0		31.9,46.7	
path 33.1,65.2		36.9,53.5		42.3,55.9	
path 33.8,65.0		31.3,76.5		33.8,98.2	 
path 57.1,80.9		59.2,84.5		59.8,77.8	
path 55.8,74.7		59.8,71.6		49.1,51.6
path 61.9,60.5		67.1,53.5		74.3,58.8	
path 71.9,68.5		77.3,63.2		83.0,64.2	
path 89.9,49.8		80.9,51.8		77.5,59.5
#include "follow_path_herbs"
.' You need about 155 Ashen-giving herbs total
.collect Cinderbloom##52983 |n
.collect Stormvine##52984 |n
.' You'll need about {_G.max(0 , (305-itemcount(52985,52983,52989,52984,52987,52988))*2)} more herbs in stacks of 5.
.' Mill the 155 herbs you purchased into Ashen Pigment and Burning Embers  |cast Milling##51005
.collect 1 Ashen Pigment##61979
.collect 1 Burning Embers##61980
#include "max_skill_warning",skill="Herbalism",goto="ins_425-525_farm"
step
label "farm2"
'Skipping next part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "port_deepholm"
step
label "farming"
map Deepholm
path 69.4,56.0	        70.0,60.7		72.9,58.2	
path 74.7,61.1		75.8,67.5		70.9,62.9	
path 71.1,70.6		66.0,68.5		26.8,41.5	
path 26.5,35.6		23.1,35.3		25.9,31.9	
path 27.5,32.3		27.8,27.0		31.2,32.0	
path 28.9,35.6		26.8,41.5
.collect 1 Volatile Life##52329 |tip You will get this collecting Cinderbloom and Heartblossom
#include "max_skill_warning",skill="Herbalism",goto="ins_425-525_farm"
step
label "farm3"
'Skipping next part of farming |next "+farm4" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "port_twilight"
step
label "farming"
goto 27.4,54.7
.from Twilight Sentinel##47406+
.collect 1 Volatile Water##52326
step
label "farm4"
'Skipping next part of farming |next "+farm5" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
goto 57.9,31.2
.from Obsidian Stoneslave##47226+
.collect 1 Volatile Earth##52327
step
label "farm5"
'Skipping next part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
goto 34.6,69.2
.from Enslaved Tempest##46328+
.collect 1 Volatile Air##52328
.' You can find more over hat 39.5,85.7
step
label "exit"
#include "hearth_hub"
// CREATE: 40 Blackfallow Ink
step
label "ins_425-525_skill"
.create 63 Blackfallow Ink##86004,Inscription,63 total
skill Inscription,450
step
#include "trainer_Inscription"
.learn Mysterious Fortune Card##86609
step
.create 10 Mysterious Fortune Card##86609,Inscription,460
step
#include "trainer_Inscription"
.learn Adventurer's Journal##89367
step
.create 15 Adventurer's Journal##89367,Inscription,475
step
#include "trainer_Inscription"
.learn Inferno Ink##86005
step
.create 76 Inferno Ink##86005,Inscription,76 total
.' Inscription skill raised to level 485 |skill Inscription,485
step
#include "trainer_Inscription"
.learn Dust of Disappearance##92027
step
.create 3 Dust of Disappearance##92027,Inscription,487
step
#include "trainer_Inscription"
.learn Manual of the Planes##86648
step
.create 3 Manual of the Planes##86648,Inscription,502
step
#include "trainer_Inscription"
.learn Forged Documents##89244 // This item has different id number for each faction.
step
.create 1 Forged Documents##89244,Inscription,503 // This item has different id number for each faction.
step
#include "trainer_Inscription"
.learn Runescroll of Fortitude II##85785
step
.create 2 Runescroll of Fortitude II##85785,Inscription,505
step
#include "trainer_Inscription"
.learn Runed Dragonscale##86649
step
.create 2 Runed Dragonscale##86649,Inscription,511
step
#include "trainer_Inscription"
.learn Dungeoneering Guide##86641
step
.create 1 Dungeoneering Guide##86641,Inscription,514
step
#include "trainer_Inscription"
.learn Battle Tome##86643
step
.create 1 Battle Tome##86643,Inscription,517
step
#include "trainer_Inscription"
.learn Divine Companion##86642
step
.create 1 Divine Companion##86642,Inscription,520
step
#include "trainer_Inscription"
.learn Tattooed Eyeball##86652
step
.create 1 Tattooed Eyeball##86652,Inscription,525
step
label "ins_525"
'Congratulations, you are now a level 525 Scribe!	
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Professions Guides\\Jewelcrafting\\Jewelcrafting 1-525 Leveling Guide",[[
description This guide will walk you through leveling your Jewelcrafting skill from 1-525.
author support@zygorguides.com
completion skill,Jewelcrafting,525
#include profession_dual_start,prof1="Jewelcrafting",prof2="Mining"
step
label "route"
'Redirecting to Jewelcrafting 1-50 |next "jc_1-50" |only if skill("Jewelcrafting")<50
'Redirecting to Jewelcrafting 50-150 |next "jc_50-150" |only if skill("Jewelcrafting")>=50 and skill("Jewelcrafting")<150
'Redirecting to Jewelcrafting 150-200 |next "jc_150-225" |only if skill("Jewelcrafting")>=150 and skill("Jewelcrafting")<225
'Redirecting to Jewelcrafting 200-275 |next "jc_225-300" |only if skill("Jewelcrafting")>=200 and skill("Jewelcrafting")<300
'Redirecting to Jewelcrafting 275-350 |next "jc_300-350" |only if skill("Jewelcrafting")>=275 and skill("Jewelcrafting")<350
'Redirecting to Jewelcrafting 350-425 |next "jc_350-425" |only if skill("Jewelcrafting")>=350 and skill("Jewelcrafting")<425
'Redirecting to Jewelcrafting 425-525 |next "jc_425-525" |only if skill("Jewelcrafting")>=425 and skill("Jewelcrafting")<525
'Redirecting to Jewelcrafting finale |next "jc_525" |only if default
// ----------
// 1 - 50
// ----------
// TRAIN: Apprentice Jewelcrafting
step
title + Jewelcrafting 1-50
label "jc_1-50"
#include "trainer_Jewelcrafting"
.skillmax Jewelcrafting,75
step
#include "vendor_Jewelcrafting"
.buy Jeweler's Kit##20815
step
#include "home_TradeDistrict"
step
#include "auctioneer"
.buy 170 Copper Bar##2840
.buy Tigerseye##818 |n
.buy Malachite##774 |n
.' You'll need about {_G.max(0 , (20-itemcount(818,774))*1)} of the gems above: |condition itemcount(818,774)>=20 
#include go_farm,skill="Mining",req="1",goto="jc_1-50_farm"
|next "jc_1-50_skill"
// GATHER: 155 Copper Ore, 20 Tigerseye
step
label "jc_1-50_farm"
#include vendor_Mining
.buy 1 Mining Pick##2901
step
'Go outside to Elwynn Forest |goto Elwynn Forest |noway |c
step
map Elwynn Forest
path follow loose;loop;ants straight  // this stays set until the end of the guide.
path 32.8,50.5	30.2,58.2	28.3,64.8
path 25.6,70.3	21.4,74.5	23.1,82.5
path 31.5,78.1	37.5,71.4	38.2,82.5
path 49.7,84.8	57.3,80.8
path 61.7,75.2	67.3,72.2	70.2,66.1
path 73.7,56.0	73.8,48.2	80.5,54.8
path 80.0,46.1	77.5,38.1	71.4,38.5
path 64.7,37.9	63.3,46.2	62.0,53.0
path 55.1,56.0	49.9,60.4	46.2,53.9
path 43.2,48.7	37.2,51.9
#include "follow_path_mine"
.collect Tigerseye##818 |n
.collect Malachite##774 |n
.' You'll need about {_G.max(0 , (20-itemcount(818,774))*1)} more of the gems above. |condition itemcount(818,774)>=20 |n
.collect 290 Copper Ore##2770 
.collect Shadowgem##1210 |n |tip Save these for later use.
step
#include "hearth_hub"
step
#include "maincity_anvil"
.create Copper Bar##2657,Mining,170 total
.collect 170 Copper Bar##2840
// only if skillmax("Mining")>=75 - I don't think this works. If the conditions fails you won't be shown a step that you MUST do.
// CREATE: 30 Delicate Copper Wire, 20 Tigerseye Band
step
label "jc_1-50_skill"
.create 60 Delicate Copper Wire##25255,Jewelcrafting,60 total |tip Save all Delicate Copper Wires, you will need them later.
.collect 60 Delicate Copper Wire##20816
step
#include "trainer_Jewelcrafting"
'Learn Prospecting |condition _G.IsSpellKnown(31252)
step
'Prospect the remaining Copper Ore to collect Tigerseyes and Malachite |cast Prospecting##31252
.collect Tigerseyes##818 |n
.collect Malachite##774 |n
.' You'll need about {_G.max(0 , (20-itemcount(818,774))*1)} more of the gems above. |condition itemcount(818,774)>=20 
// only if skillmax("Mining")>=75 - I don't think this works. If the conditions fails you won't be shown a step that you MUST do.
step
#include "trainer_Jewelcrafting"
.learn Malachite Pendant##32178
.learn Tigerseye Band##32179 
step
.create 10 Malachite Pendant##32178,Jewelcrafting,50
|tip If you didn't get enough Malachite but more Tigerseyes from Prospecting, make Tigerseye Band instead. // |only if skillmax("Mining")>=75 - I don't think this works. If the conditions fails you won't be shown a step that you MUST do.
.create 10 Tigerseye Band##32179,Jewelcrafting,50
// ----------
// 50 - 150
// ----------
// TRAIN: Journeyman Jewelcrafting
step
title + Jewelcrafting 50-150
label "jc_50-150" 
#include "trainer_Jewelcrafting"
.skillmax Jewelcrafting,150 
.learn Bronze Setting##25278
step
#include "auctioneer"
.buy 140 Bronze Bar##2841
.buy 60 Shadowgem##1210
.buy 80 Heavy Stone##2838
.buy 30 Moss Agate##1206
#include go_farm,skill="Mining",req="65",goto="jc_50-150_farm"
|next "jc_50-150_skill"
// GATHER: 120 Bronze Bar, 25 Small Lustrous Pearl, 40 Shadowgem, 80 Heavy Stone, 20 Moss Agate
step
label "jc_50-150_farm"
#include "trainer_Mining"
.skillmax Mining,150
.learn Smelt Bronze##2659
.learn Smelt Tin##3304
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 75. It's better to skill up first. |only if skill("Mining")<50 and skillmax("Mining")<150
step
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Rebel Camp
step
label "farming"
map Northern Stranglethorn
path	44.9,19.0	37.5,14.8	34.4,17.3
path	17.1,22.6	23.7,32.3	30.6,36.3
path	34.7,30.0	38.7,34.4	39.6,43.2	
path	47.0,41.5	44.1,49.7	46.3,52.9	
path	54.2,55.8	60.5,51.8	67.2,49.1	
path	67.3,36.9	66.4,25.8	59.9,18.9
path	51.0,17.4
#include "follow_path_mine"
.collect 70 Shadowgem##1210 |tip You can use the prospect ability on the Tin Ore in your bags to get this item. |cast Prospecting##31252
.collect 30 Moss Agate##1206 |tip You can use the prospect ability on the Tin Ore in your bags to get this item. |cast Prospecting##31252
.collect 70 Tin Ore##2771 |tip After you've collected all the gems, collect the ore you need.
.collect Citrine##3864 |n |tip These will be used later.
.collect Aquamarine##7909 |n |tip These will be used later.
#include "max_skill_warning",skill="Mining",goto="jc_50-150_farm"
step
label "farm2"
'Skipping 2nd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Explorers' League Digsite
step
label "farming"
map The Cape of Stranglethorn
path 56.0,48.4	54.6,55.0	55.0,59.4
path 51.0,63.8	42.5,62.0	40.6,51.7
path 43.3,43.1	37.4,33.5	45.0,14.6
path 52.4,13.3	59.5,26.5
#include "follow_path_mine"
.collect 80 Heavy Stone##2838 |tip Keep the Iron Ore you get for prospecting later.
.collect Citrine##3864 |n |tip These will be used later.
.collect Aquamarine##7909 |n |tip These will be used later. 
.collect Star Ruby##7910 |n |tip These will be used later.
#include "max_skill_warning",skill="Mining",goto="jc_50-150_farm"
step
label "exit"
#include "hearth_hub"
step
#include "maincity_anvil"
.create Tin Bar##3304,Mining,70 total
step
#include "maincity_anvil"
.create Bronze Bar##2659,Mining,70 total
// CREATE: 55 Bronze Setting, 20 Simple Pearl Ring, 10 Ring of Twilight Shadows, 10 Heavy Stone Statue, 30 Pendant of the Agate Shield
step
label "jc_50-150_skill"
.create 50 Bronze Setting##25278,Jewelcrafting,50 total |tip Save these, you will need them later
step
#include "trainer_Jewelcrafting"
.learn Gloom Band##25287
step
.create 20 Gloom Band##25287,Jewelcrafting,100
step
#include "trainer_Jewelcrafting"
.learn Ring of Twilight Shadows##25318
step
.create 10 Ring of Twilight Shadows##25318,Jewelcrafting,110
step
#include "trainer_Jewelcrafting"
.learn Heavy Stone Statue##32807
step
.create 10 Heavy Stone Statue##32807,Jewelcrafting,120
step
#include "trainer_Jewelcrafting"
.learn Pendant of the Agate Shield##25610
step
.create Pendant of the Agate Shield##25610,Jewelcrafting,150
step
'Prospect any Iron Ore you may have in your bags, then skip to the next step |cast Prospecting##31252 
|confirm
// ----------
// 150 - 225
// ----------
// TRAIN: Expert Jewelcrafting
step
title +Jewelcrafting 150-225
label "jc_150-225"
#include "trainer_Jewelcrafting"
.skillmax Jewelcrafting,225
.learn Mithril Filigree##25615
step
#include "auctioneer"
.buy 15 Truesilver Bar##6037
.buy 80 Solid Stone##7912
.buy 140 Mithril Bar##3860
.buy 25 Citrine##3864 
#include go_farm,skill="Mining",req="175",goto="jc_150-225_farm"
|next "jc_150-225_skill"
// GATHER: 15 Truesilver Bar, 80 Solid Stone, 140 Mithril Ore
step
label "jc_150-225_farm"
#include "trainer_Mining"
.skillmax Mining,225
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 150. It's better to skill up first. |only if skill("Mining")<125 and skillmax("Mining")<225
step
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "rideto_ruttheranvillage"
step
|fly Talonbranch Glade
step
label "farming"
map Felwood
path	63.5,24.5	62.6,6.9	55.7,18.6
path	42.5,17.1	42.0,24.1	39.9,22.1
path	41.0,27.5	38.6,37.4	38.3,55.6
path	40.7,59.8	35.0,59.1	41.8,62.6
path	36.3,66.8	40.7,72.9	37.8,73.5
path	40.3,77.4	39.1,79.3	43.8,81.5
path	39.0,81.6	42.3,87.1	45.1,84.6
path	45.1,89.7	48.1,92.8	51.2,86.1
path	52.5,88.8	57.7,86.5	58.6,84.8
path	55.9,81.1	49.6,76.6	43.5,60.9
path	42.9,50.8	52.9,31.6	59.6,27.2	
#include "follow_path_mine"
.collect 310 Mithril Ore##3858 
.collect 15 Truesilver Ore##7911
.collect 80 Solid Stone##7912
.collect 25 Citrine##3864 |n |tip These can be prospected from Mithril Ore later. |cast Prospecting##31252
.collect 5 Aquamarine##7909 |n |tip These can be prospected from Mithril Ore later. |cast Prospecting##31252
.collect Star Ruby##7910 |n |tip These can be used later. |cast Prospecting##31252
#include "max_skill_warning",skill="Mining",goto="jc_150-225_farm"
step
#include "hearth_hub"
step
label "exit"
#include "trainer_Mining"
.learn Smelt Mithril##10097      
.skillmax Mining,300
step
#include "maincity_anvil"
.create Mithril Bar##10097,Mining,140 total 
.collect 140 Mithril Bar##3860
step
#include "trainer_Mining"
.learn Smelt Truesilver##10098
step
#include "maincity_anvil"
.create Truesilver Bar##10098,Mining,15 total
.collect 15 Truesilver Bar##6037
// CREATE: 45 Mithril Filigree, 8 Solid Stone Statue, 15 Engraved Truesilver Ring
step
label "jc_150-225_skill"
.create Mithril Filigree##25615,Jewelcrafting,45 total |tip Save these for later
.collect 45 Mithril Filigree##20963
step
#include "trainer_Jewelcrafting"
.learn Solid Stone Statue##32808
// only if skill('Jewelcrafting')< 185 - I don't think this works. If the conditions fails you won't be shown a step that you MUST do.
step
.create Solid Stone Statue##32808,Jewelcrafting,185
step
#include "trainer_Jewelcrafting"
.learn Engraved Truesilver Ring##25620
step
.create Engraved Truesilver Ring##25620,Jewelcrafting,200
step
'Prospect any Mithril Ore you have left over |cast Prospecting##31252 
.collect 25 Citrine##3864
.collect 5 Aquamarine##7909
.' Click here to go back to the farming Mithril Ore step to prospect if you don't have enough Citrine or Aquamarine |script ZGV:GotoStep("jc_150-225_farm")
|confirm
step
#include "trainer_Jewelcrafting"
.learn Citrine Ring of Rapid Healing##25621
step
.create 20 Cirtine Ring of Rapid Heaing##25621,Jewelcrafting,220
step
#include "trainer_Jewelcrafting"
.learn Aquamarine Pendant of the Warrior##26876
step
.create 5 Aquamarine Pendant of the Warrior##26876,Jewelcrafting,225
// ----------
// 225 - 300
// ----------
// TRAIN: Artisan Jewelcrafting
step
title +Jewelcrafting 225-300
label "jc_225-300"
goto 63.5,61.8
.talk 44582
.skillmax Jewelcrafting,300 
step
#include "auctioneer"
.buy 10 Star Ruby##7910
.buy 10 Powerful Mojo##12804
.buy 10 Essence of Earth##7076
.buy 20 Huge Emerald##12364
.buy 20 Large Opal##12799
.buy 50 Thorium Bar##12359
#include go_farm,skill="Mining",req="230",goto="jc_225-300_farm"
next "jc_225-300_skill"
// GATHER: 5 Aquamarine, 10 Star Ruby, 10 Powerful Mojo, 10 Essence of Earth, 20 Huge Emerald, 20 Large Opal, 25 Citrine, 50 Mithril Bar, 50 Thorium Bar
step
label "jc_225-300_farm"
#include "trainer_Mining"
.skillmax Mining,300
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 225. It's better to skill up first. |only if skill("Mining")<200 and skillmax("Mining")<300
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Northpass Tower
step
label "farming"
goto Eastern Plaguelands,64.9,12.8
.from Mossflayer Cannibal##8562+, Mossflayer Scout##8560+, Mossflayer Shadowhunter##8561+
.collect 10 Powerful Mojo##12804 |tip You can also farm these in Blackrock Spire.
step
#include "hearth_hub"
step
label "farm2"
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "rideto_ratchet"
step
|fly Cenarion Hold
step
label "farming"
map Silithus
path	54.8,26.8	52.3,22.8	50.5,15.3
path	55.8,12.5	61.8,12.5	68.3,15.6
path	69.7,19.7	68.4,26.3	72.3,27.9
path	72.5,39.5	70.0,43.5	66.7,44.7
path	64.6,45.0	67.1,55.0	67.0,59.8
path	67.3,63.0	69.5,69.6	68.1,74.1
path	66.3,81.9	65.7,83.4	56.8,76.1
path	56.6,81.2	50.6,80.3	44.6,80.2
path	40.4,80.9	26.1,80.1	25.3,74.2
path	26.7,69.5	33.0,66.3	30.8,62.6
path	26.6,53.5	28.4,47.9	27.8,40.6
path	27.6,33.9	25.2,27.1	28.5,16.2
path	29.5,11.3	35.0,12.0	40.6,13.1
path	45.1,16.3	47.3,19.3	47.3,26.6
#include "follow_path_mine"
.collect 10 Star Ruby##7910 |n
.collect 20 Huge Emerald##12364 |n
.collect 20 Large Opal##12799 |n
|tip You can use the prospect ability on the Thorium ore in your bags to get these gems later. |cast Prospecting##31252
.collect 310 Thorium Ore##10620
#include "max_skill_warning",skill="Mining",goto="jc_225-300_farm"
step
label "farm3"
'Skipping 3rd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
goto Silithus,31.2,13.5
.from Desert Rumbler##11746+
.collect 10 Essence of Earth##7076
|tip Mine Thorium Ore while you're collecting these. |only if skillmax("Mining")>=300
step
label "exit"
#include "hearth_hub"
step
#include "maincity_anvil"
.create Thorium Bar##16153,Mining,50 total
.collect 50 Thorium Bar##12359
// CREATE: 25 Citrine Ring of Rapid Healing, 5 Aquamarine Pendant of the Warrior, 50 Thorium Setting, 10 Ruby Pendant of Fire, 20 Simple Opal Ring, 10 Onslaught Ring, 10 Emerald Lion Ring
step
label "jc_225-300_skill"
#include "trainer_Jewelcrafting"
.learn Thorium Setting##26880
step
.create Thorium Setting##26880,Jewelcrafting,50 total |tip Save these for later use
.collect 50 Thorium Setting##21752
step
'Prospect any Thorium Ore you have |cast Prospecting##31252 
.collect 10 Star Ruby##7910
.collect 20 Huge Emerald##12364 
.collect 20 Large Opal##12799
.' Click here to go back to the farming Thorium Ore step if you don't have enough Star Ruby, Huge Emerald, or Large Opal |script ZGV:GotoStep("jc_225-300_farm")
// only if skillmax("Mining")>=300  - I don't think this works. If the conditions fails you won't be shown a step that you MUST do.
step
#include "trainer_Jewelcrafting"
.learn Ruby Pendant of Fire##26883
step
.create Ruby Pendant of Fire##26883,Jewelcrafting,260
step
#include "trainer_Jewelcrafting"
.learn Simple Opal Ring##26902
step
.create Simple Opal Ring##26902,Jewelcrafting,280
step
#include "trainer_Jewelcrafting"
.learn Onslaught Ring##26907
step
.create Onslaught Ring##26907,Jewelcrafting,290
step
#include "trainer_Jewelcrafting"
.learn Emerald Lion Ring##34961
step
.create Emerald Lion Ring##34961,Jewelcrafting,300
// ----------
// 300 - 350
// ----------
// TRAIN: Master Jewelcrafting
step
title +Jewelcrafting 300-350
label "jc_300-350"
#include "trainer_Jewelcrafting"
.skillmax Jewelcrafting,375 
step
#include "vendor_Jewelcrafting"
.buy Simple Grinder##20824 |tip Keep this in your bags at all times. It is used to make most Jewelcrafting recipes.
step
#include "auctioneer"
.buy 18 Black Diamond##11754
.buy Blood Garnet##23077 |n
.buy Flame Spessparite##21929 |n
.buy Deep Peridot##23079 |n
.' You'll need about {_G.max(0 , (20-itemcount(23077,23079,21929))*1)} more of the gems above. |condition itemcount(23077,23079,21929)>=20 
.buy Shadow Draenite##23107 |n
.buy Azure Moonstone##23117 |n
.' You'll need about {_G.max(0 , (20-itemcount(23107,23117))*1)} more Shadow Draenite and Azure Moonstones. |condition itemcount(23107,23117)>=20 
.buy 10 Adamantite Bar##23446
.buy 10 Primal Earth##22452
.buy 200 Adamantite Ore##23425
#include go_farm,skill="Mining",req="275",goto="jc_300-350_farm"
|next "jc_300-350_skill"
// GATHER: 18 Black Diamond, 15 Blood Garnet
step
label "jc_300-350_farm"
#include "trainer_Mining"
.skillmax Mining,375
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 300. It's better to skill up first. |only if skill("Mining")<275 and skillmax("Mining")<375
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Iron Summit
step
goto Burning Steppes,20.4,20.1 |n
.' Enter Blackrock Mountain here |goto Burning Steppes |noway |c
step
goto 18.4,25.2 |n 
.' Enter doorway here at the bottom level |goto 18.4,25.2,0.5 |noway |c |tip If you don't have a flying mount you can go down the chain, almost at the surface of the lava
step
goto Searing Gorge,27.0,85.7 |n
.' Run through this pathway to the entrance of Blackrock Depths |goto Searing Gorge,27.0,85.7,0.5 |noway |c
step
label "farming"
goto Searing Gorge,26.7,72.5
.' Enter Blackrock Depths
 		.' Zoom your minimap all the way out, track minerals, and gather ore from Dark Iron Deposits in this instance.
.collect 18 Black Diamond##11754 |tip The mobs in the dungeon drop Black Diamonds as well.
step
label "farm2"
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Nethergarde Keep
step
goto Blasted Lands,55.0,54.1 |n
.' Enter the huge green portal
.' Teleport to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
step
label "farming"
map Hellfire Peninsula
path    69.3,47.5	74.5,38.7	68.2,37.7
path	62.0,31.0	58.0,32.8	54.0,26.7
path	46.0,29.3	34.1,29.1	32.0,34.5
path	38.5,38.2	35.7,40.7	33.4,49.8
path	30.3,48.6	32.5,43.3	28.5,39.3
path	26.5,45.5	22.6,45.1	18.0,38.3
path	12.5,36.1	17.9,46.3	11.8,41.9
path	12.0,47.0	06.2,49.5	15.4,62.4
path	20.3,52.9	24.0,61.1	21.2,62.7
path	28.1,80.8	27.7,69.5	30.5,72.8
path	30.3,59.9	34.8,66.6	37.7,53.3
path	46.9,46.3	49.3,49.5	60.3,48.6
path	60.8,52.8	52.1,52.7	47.2,57.7
path	45.9,75.5	33.5,89.6	33.1,92.6
path	49.1,77.5	44.6,86.2	55.5,82.8
path	58.7,78.8	56.5,72.3	65.8,63.6
path	67.1,71.7	63.0,73.3	65.8,77.9
path	68.7,77.6	71.0,71.7	70.1,68.6
path	65.0,59.8	65.6,56.0	75.0,63.9
path	78.4,80.2	80.7,77.5	77.3,63.7
path	72.7,60.2	71.5,53.1	68.3,52.0
#include "follow_path_mine"
|tip You must use the prospect ability on the Fel Iron Ore in your bags to get these items:
.collect Blood Garnet##23077 |n |cast Prospecting##31252
.collect Flame Spessparite##21929 |n |cast Prospecting##31252
.collect Deep Peridot##23079 |n |cast Prospecting##31252
.' You'll need about {_G.max(0 , (20-itemcount(23077,23079,21929))*1)} more of the gems above. |condition itemcount(23077,23079,21929)>=20 
.collect Shadow Draenite##23107 |n |cast Prospecting##31252
.collect Azure Moonstone##23117 |n |cast Prospecting##31252
.' You'll need about {_G.max(0 , (20-itemcount(23107,23117))*1)} more Shadow Draenite and Azure Moonstones. |condition itemcount(23107,23117)>=20 |tip Save EVERY extra gem you recieve for later use
.collect Mote of Earth##22573 |n
.' Click Motes of Earth in your bag to turn them into Primal Earth |use Mote of Earth##22573
.collect 10 Primal Earth##22452 |n
#include "max_skill_warning",skill="Mining",goto="jc_300-350_farm"
step
label "farm3"
'Skipping 3rd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Telaar
step
label "farming"
map Nagrand
path 49.7,66.2	41.9,77.0	35.7,79.3
path 31.1,75.3	27.3,63.0	33.4,57.5
path 33.7,49.4	24.0,47.4	19.7,46.7
path 11.4,43.0	11.3,36.6	19.9,32.1
path 25.0,32.8	28.2,31.8	26.5,20.5
path 30.0,18.1	36.3,23.0	40.5,35.4
path 43.1,22.8	50.8,23.5	
path 57.0,29.0
path 65.0,37.6	70.3,42.6	68.8,51.1
path 72.3,58.1	73.8,67.9	70.1,83.3
path 57.9,75.5	49.0,79.0
path 45.7,68.9	43.1,58.9	45.0,54.7
path 49.6,57.5	56.0,54.8	56.3,59.4
#include "follow_path_mine"
|tip Go into any caves you find as there is lots of ore.
.collect 220 Adamantite Ore##23425
.collect Mote of Earth##22573 |n
.' Click Motes of Earth in your bag to turn them into Primal Earth |use Mote of Earth##22573
.collect 10 Primal Earth##22452
#include "max_skill_warning",skill="Mining",goto="jc_300-350_farm"
step
label "exit"
#include "hearth_hub"
step
#include "maincity_anvil"
.create Adamantite Bar##29358,Mining,10 total
.collect 10 Adamantite Bar##23446
// CREATE: 10 Mercurial Adamantite, 7 Smooth Golden Draenite, 10 Heavy Adamantite Ring
step
label "jc_300-350_skill"
#include "trainer_Jewelcrafting"
.learn Prismatic Black Diamond##62941
step
.create 15 Prismatic Black Diamond##62941,Jewelcrafting,315
step
#include "trainer_Jewelcrafting"
.learn Delicate Blood Garnet##34590
.learn Inscribed Flame Spessarite##28910
.learn Jagged Deep Peridot##28917
step
'Make as many as it takes of these gems to get to 320 Jewelcrafting
.create Delicate Blood Garnet##34590,Jewelcrafting,320
.create Inscribed Flame Spessarite##28910,Jewelcrafting,320
.create Jagged Deep Peridot##28917,Jewelcrafting,320 
step
#include "trainer_Jewelcrafting"
.learn Glinting Shadow Draenite##28914
step
.create 5 Glinting Shadow Draenite##28914,Jewelcrafting,325
step
'Prospect all of your Adamantite Ore |cast Prospecting##31252
.collect 40 Adamantite Powder##24243 |tip Save EVERY extra gem you recieve for later use
step
#include "trainer_Jewelcrafting"
.learn Mercurial Adamantite##38068
step
#include "maincity_anvil"
.' Stand at this forge
.create 10 Mercurial Adamantite##38068,Jewelcrafting,10 total |tip Save these, you will need them later
.collect 10 Mercurial Adamantite##31079
step
#include "trainer_Jewelcrafting"
.learn Sovereign Shadow Draenite##28936
.learn Rigid Azure Moonstone##28948
step
'Make as many as it takes of these two gems to get to 340 Jewelcrafting
.create 5 Sovereign Shadow Draenite##28936,Jewelcrafting,340 
.create 5 Rigid Azure Moonstone##28948,Jewelcrafting,340
step
#include "trainer_Jewelcrafting"
.learn Heavy Adamantite Ring##31052
step
.create 10 Heavy Adamantite Ring##31052,Jewelcrafting,350
// ----------
// 350 - 425
// ----------
// TRAIN: Grand Master Jewelcrafting
step
title +Jewelcrafting 350-425
label "jc_350-425"
#include "trainer_Jewelcrafting"
.skillmax Jewelcrafting,450 
.learn Bloodstone Band##56193
.learn Deft Huge Citrine##53880
.learn Energized Dark Jade##53925
.learn Glinting Shadow Crystal##53861
.learn Solid Chalcedony##53934
.learn Quick Sun Crystal##53856
step
#include "auctioneer"
.buy Chalcedony##36923 |n
.buy Sun Crystal##36920 |n
.buy Shadow Crystal##36926 |n
.buy Huge Citrine##36929 |n
.buy Dark Jade##36932 |n
.' You'll need about {_G.max(0 , (60-itemcount(36923,36920,36926,36929,36932))*1)} more of the gems above. |condition itemcount(36923,36920,36926,36929,36932)>=60 
.buy 5 Dream Shard##34052 |tip These cannot be gathered with Mining or Jewelcrafting so you must buy these.
.buy 10 Bloodstone##36917 
.buy 5 Titanium Bar##41163
.buy 5 Forest Emerald##36933
.buy 20 Crystallized Earth##37701
.buy 50 Eternal Earth##35624
#include go_farm,skill="Mining",req="350",goto="jc_350-425_farm"
|next "jc_350-425_skill"
// GATHER: 60 Bloodstone, 470 Crystallized Earth, 46 Eternal Earth, 5 Forest Emerald, 5 Titanium Ore, 5 Titanium Bar
step
label "jc_350-425_farm"
#include "trainer_Mining"
.skillmax Mining,450
.learn Smelt Adamantite##29358
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 375. It's better to skill up first. |only if skill("Mining")<350 and skillmax("Mining")<450
step
label "farm"
'Skipping 1st part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "rideto_howlingfjord"
step
|fly Ebon Watch
step
label "farming"
map Zul'Drak
path	11.2,75.0	11.6,78.1
path	20.0,76.5	20.4,72.0	23.7,71.1
path	22.5,63.7	29.7,71.5	33.5,68.0
path	32.3,55.2	37.0,55.5	34.7,63.3
path	38.8,67.8	30.8,76.6	32.0,83.1
path	45.0,84.9	45.3,76.5	53.2,69.1
path	60.1,84.3	74.1,73.8	75.5,75.2
path	78.8,70.6	71.4,52.0	71.6,46.7
path	75.0,50.9	78.5,41.9	70.9,34.0
path	80.6,25.5	78.9,22.5	72.7,29.0
path	70.7,24.6	70.2,33.2	56.9,33.4
path	57.6,36.2	
path	53.4,31.3	52.6,34.5	52.8,44.8
path	56.1,47.9	53.5,50.5	52.8,56.8
path	46.4,40.6	39.3,43.3	35.6,46.2
path	31.9,39.2	20.9,47.5	24.3,54.8
path	16.1,57.6	14.2,69.9	
#include "follow_path_mine"
|tip You must use the prospect ability on the Cobalt Ore in your bags to get these items:
.collect Chalcedony##36923 |n |cast Prospecting##31252
.collect Sun Crystal##36920 |n |cast Prospecting##31252
.collect Shadow Crystal##36926 |n |cast Prospecting##31252
.collect Huge Citrine##36929 |n |cast Prospecting##31252
.collect Dark Jade##36932 |n |cast Prospecting##31252
.' You'll need about {_G.max(0 , (60-itemcount(36923,36920,36926,36929,36932))*1)} more of the gems above. |condition itemcount(36923,36920,36926,36929,36932)>=60 
.collect 10 Bloodstone##36917 |cast Prospecting##31252
.collect 5 Forest Emerald |n |cast Prospecting##31252
.collect 20 Crystallized Earth##37701
.collect Crystallized Earth##37701 |n
.' Click Crystallized Earth in your bag to turn 10 into Eternal Earth |use Eternal Earth##37701
.collect 50 Eternal Earth##35624 |n
#include "max_skill_warning",skill="Mining",goto="jc_350-425_farm"
step
goto 55.8,52.2
.from Frozen Earth##28411+
.collect 130 Crystallized Earth##37701
step
#include "hearth_hub"
step
label	"jc_350-425_skill"
'Make as many as it takes of these gems to get to 395 Jewelcrafting
.create Deft Huge Citrine##53880,Jewelcrafting,395
.create Energized Dark Jade##53925,Jewelcrafting,395
.create Glinting Shadow Crystal##53861,Jewelcrafting,395
.create Solid Chalcedony##53934,Jewelcrafting,395
.create Quick Sun Crystal##53856,Jewelcrafting,395
step
.create 5 Bloodstone Band##56193,Jewelcrafting,400
|next "jc_350-425_skill_2" |only if skill('Mining')<=350
|next |only if default
step
label "farm2"
'Skipping 2nd part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
|fly The Argent Vanguard
step
label "farm3"
'Skipping 3rd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Icecrown
path 81.2,67.2	77.7,64.7	77.6,56.3
path 77.2,49.9	76.6,45.5	73.8,38.0
path 69.7,37.8	64.0,33.1	62.0,37.3
path 58.9,43.6	57.1,44.8	56.5,33.3
path 55.5,23.3	53.6,27.8	50.6,45.6
path 48.6,36.4	48.8,30.5	44.9,26.8
path 41.3,36.9	37.8,40.1	38.5,27.2
path 31.0,31.8	30.3,41.2	33.8,47.2
path 39.9,48.3	38.8,54.9	28.9,64.3
path 36.7,65.4	40.9,64.4	47.1,70.5
path 49.5,82.0	50.8,85.7	56.3,83.3
path 54.8,79.5	60.1,74.0	65.7,64.8
path 67.1,71.3	70.7,69.0	72.1,63.3
path 75.9,66.2	78.2,70.5
#include "follow_path_mine"
'You wont be able to farm Titanium Ore until you're 450 Mining skill. Farm Saronite Ore here until you can. |only if skill("Mining")<450
.collect 10 Titanium Ore##36910
.collect Crystallized Earth##37701 |n
.' Click Crystallized Earth in your bag to turn 10 into Eternal Earth |use Crystallized Earth##37701 
.collect 50 Eternal Earth##35624 
.collect 5 Forest Emerald##36933 |tip You must use the prospect ability on the Saronite Ore in your bags to get this item. |cast Prospecting##31252 |use Saronite Ore##36912
#include "max_skill_warning",skill="Mining",goto="jc_350-425_farm"
step
label "exit"
#include "hearth_hub"
step
 #include "maincity_anvil"
.create Titanium Bar##55211,Mining,5 total
.collect 5 Titanium Bar##41163
// CREATE: 55 Bright Bloodstone, 5 Bloodstone Band, 23 Stoneguard Band, 5 Dream Signet
step
label "jc_350-425_skill_2"
#include "trainer_Jewelcrafting"
.learn Stoneguard Band##58145
step
.create Stoneguard Band##58145,Jewelcrafting,420
step
#include "trainer_Jewelcrafting"
.learn Dream Signet##56197
step
.create Dream Signet##56197,Jewelcrafting,425
// ----------
// 425 - 525
// ----------
// TRAIN: Illustrious Grand Master Jewelcrafting
step
label "jc_425-525"
title +Jewelcrafting 425-525
#include "trainer_Jewelcrafting"
.skillmax Jewelcrafting,525 
.learn Brilliant Carnelian##73225
.learn Quick Alicite##73234
.learn Puissant Jasper##73279
.learn Rigid Zephyrite##73230
step
#include "vendor_Jewelcrafting"
.buy 50 Jeweler's Setting##52188
step
#include "auctioneer"
.buy 24 Carnelian##52177
.buy 64 Nightstone##52180
.buy 82 Hessonite##52181
.buy 36 Jasper##52182 
.buy 36 Zephyrite##52178
.buy 24 Alicite##52179
.buy 34 Shadowspirit Diamond##52303 |tip Shadowspirit Diamonds cannot be gathered with Mining or Jewelcrafting so you must buy these or have an Alchemist transmute for you. The materials for these are 3 of each uncommon Cataclysm gem.
#include go_farm,skill="Mining",req="425",goto="jc_425-525_farm"
|next "jc_425-525_skill"
// GATHER: 15 Carnelian, 15 Alicite, 15 Jasper, 15 Nightstone, 15 Zephyrite, 90 Hessonite
step
label "jc_425-525_farm"
#include "trainer_Mining"
.skillmax Mining,525
.learn Smelt Titanium##55211
'Your _Mining_ skill is too low to learn this; You can proceed with farming, but your skill gains will stop at 450. It's better to skill up first. |only if skill("Mining")<425 and skillmax("Mining")<525
step
#include "port_hyjal"
step
map Mount Hyjal
path 61.5,18.7	57.8,14.5	55.2,18.5
path 50.5,17.0	48.2,21.1	48.5,28.0
path 46.6,35.6	43.9,26.6	41.2,20.5
path 39.9,32.9	38.8,29.7	35.8,24.5
path 33.5,23.7	32.3,28.8	35.0,35.6
path 29.6,40.5	26.5,39.5	26.7,34.6
path 23.0,31.5	10.5,34.5	9.4,36.4
path 17.2,45.5	14.6,49.5	18.0,56.5
path 21.5,56.8	23.3,61.5	25.6,60.8
path 29.7,56.1	27.7,51.2	29.9,50.9
path 34.1,46.8	33.2,51.4	37.5,54.9
path 36.4,58.6	32.9,66.0	30.6,75.1
path 31.5,82.3	31.6,87.5	31.3,90.4
path 33.9,91.6	36.6,95.5	51.5,80.3
path 52.5,77.6	56.7,79.3	59.9,81.5
path 59.6,77.5	57.9,68.1	62.0,72.0
path 75.2,66.6	75.7,63.6	82.7,66.1
path 86.1,58.7	88.1,48.5	84.2,47.5
path 80.5,53.8	72.9,57.9	67.5,50.6
path 62.1,57.5	55.5,56.8	52.3,58.6
path 50.5,56.5	47.8,53.5	61.1,36.8
path 65.5,32.5	65.7,18.5
#include "follow_path_mine"
|tip You must use the prospect ability on the Obsidium Ore in your bags to get these items:
.collect 75 Carnelian##52177 |cast Prospecting##31252
.collect 75 Alicite##52179 |cast Prospecting##31252
.collect 87 Jasper##52182 |cast Prospecting##31252
.collect 115 Nightstone##52180 |cast Prospecting##31252
.collect 87 Zephyrite##52178 |cast Prospecting##31252
.collect 133 Hessonite##52181 |cast Prospecting##31252
#include "max_skill_warning",skill="Mining",goto="jc_425-525_farm"
step
#include "hearth_hub"
// CREATE: 25 Hessonite Band, 20 Nightstone Choker, 25 Austere Shadowspirit Diamond, 5 Fire Prism
step
label "jc_425-525_skill"
.create Brilliant Carnelian##73225,Jewelcrafting,432
step
.create Quick Alicite##73234,Jewelcrafting,438
step
.create Puissant Jasper##73279,Jewelcrafting,444
step
.create Rigid Zephyrite##73230,Jewelcrafting,450
step
#include "trainer_Jewelcrafting"
.learn Hessonite Band##73495
step
.create Hessonite Band##73495,Jewelcrafting,485
step
#include "trainer_Jewelcrafting"
.learn Nightstone Choker##73497
step
.create Nightstone Choker##73497,Jewelcrafting,500
step
#include "trainer_Jewelcrafting"
.learn Fire Prism##73478
step
label "fire_prism"
.create Fire Prism##73478,Jewelcrafting,525 |only if skill("Jewelcrafting")<525
|tip You can only make 1 of these every 20 hours. Skip to next step to gain skills quicker. Be sure to make one of these everyday. |only if skill("Jewelcrafting")<525
.create Fire Prism##73478,Jewelcrafting,1 total |only if skill("Jewelcrafting")>=525
|tip Make one of these everyday! |only if skill("Jewelcrafting")>=525
.collect 1 Fire Prism##52304 
// Jewelcrafting Dailies
step
goto 63.8,61.5
.talk 50480
.' You will only be able to accept one of these daily quests
..accept 25154 |daily |or
..accept 25156 |daily |or
..accept 25105 |daily |or
..accept 25155 |daily |or
..accept 25157 |daily |or
step
#include "trainer_Jewelcrafting"
.learn Timeless Nightstone##73243
step
'Use your Jewelcrafting profession to craft Timeless Nightstone
.create Timeless Nightstone##73243,Jewelcrafting,3 total |q 25154/1
.collect 3 Timeless Nightstone |q 25154/2
step
#include "port_hyjal"
step
goto Mount Hyjal,65.0,22.5
.from Scalding Rock Elemental##40229+
.get 10 Elemental Goo |q 25162/1
step
#include "hearth_hub"
step
#include "trainer_Jewelcrafting"
.learn Solid Zephyrite##73227
step
'Use your Jewelcrafting profession to craft
.create Solid Zephyrite##73227,Jewelcrafting,3 total |q 25105/1
.' Make 3 Solid Zephyrite |q 25105/2
step
#include "trainer_Jewelcrafting"
.learn Jagged Jasper##73274
step
'Use your Jewelcrafting profession to craft Jagged Jasper
.create Jagged Jasper##73274,Jewelcrafting,3 total |q 25155/1
.' Make 3 Jagged Jasper |q 25155/2
step
'Use the Stardust in your bags on 10 Humanoids around the city |use Stardust No. 2##52507
.' Test the Stardust No. 2 on 10 Humanoids |q 25157/1 |tip You can use this on NPCs and yourself
step
goto 63.8,61.5
.talk 50480
..turnin 25154 
 		..turnin 25156
..turnin 25105
..turnin 25155
..turnin 25157 
.earn 4 Illustrious Jewelcrafter's Token##361 // |only if skill("Jewelcrafting")<525 - I don't think this works. If the conditions fails you won't be shown a step that you MUST do.
.' If you do not have these click this button to go to make another Fire Prism and go to the start of the Jewelcrafting Dailies to do them again |script ZGV:GotoStep("fire_prism")
step
goto 63.8,61.5
.talk 50480
.buy Design: Austere Shadowspirit Diamond##52437 |n |tip You will need 4 Illustrious Jewelcrafter's Token from doing Jewelcrafting Dailies to buy this.
.' Click on the Design: Austere Shadowspirit Diamond |use Design: Austere Shadowspirit Diamond##52437
.learn Austere Shadowspirit Diamond##73468
// |only if skill("Jewelcrafting")>525 - I don't think this works. If the conditions fails you won't be shown a step that you MUST do.
step
'You will need to get these crafted by an Alchemist. If you farmed the full amount you will have enough materials for all 34 Shadowspirit Diamonds. // |only if skillmax("Mining")>=525 - I don't think this works. If the conditions fails you won't be shown a step that you MUST do.
.collect 34 Shadowspirit Diamond##52303
// |only if skill("Jewelcrafting")<525 - I don't think this works. If the conditions fails you won't be shown a step that you MUST do.
step
.create Austere Shadowspirit Diamond##73468,Jewelcrafting,525
// |only if skill("Jewelcrafting")<525 - I don't think this works. If the conditions fails you won't be shown a step that you MUST do.
step
label "jc_525"
'Congratulations, you are now a level 525 Jewelcrafter!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Professions Guides\\Jewelcrafting\\Jewelcrafting Dailies",[[
description This guide section will walk you through completing the Jewelcrafting daily quests.
author support@zygorguides.com
step
goto Stormwind City,63.8,61.5
.talk 50480
.' You will only be able to accept one of these daily quests
..accept 25154 |daily |or
..accept 25156 |daily |or
..accept 25105 |daily |or
..accept 25155 |daily |or
..accept 25157 |daily |or
step
#include "trainer_Jewelcrafting"
.learn Timeless Nightstone##73243
step
'Use your Jewelcrafting profession to craft Timeless Nightstone
.create Timeless Nightstone##73243,Jewelcrafting,3 total |q 25154/1
.collect 3 Timeless Nightstone |q 25154/2
step
#include "port_hyjal"
step
goto Mount Hyjal,65.0,22.5
.from Scalding Rock Elemental##40229+
.get 10 Elemental Goo |q 25162/1
step
#include "hearth_hub"
step
#include "trainer_Jewelcrafting"
.learn Solid Zephyrite##73227
step
'Use your Jewelcrafting profession to craft
.create Solid Zephyrite##73227,Jewelcrafting,3 total |q 25105/1
.' Make 3 Solid Zephyrite |q 25105/2
step
#include "trainer_Jewelcrafting"
.learn Jagged Jasper##73274
step
'Use your Jewelcrafting profession to craft Jagged Jasper
.create Jagged Jasper##73274,Jewelcrafting,3 total |q 25155/1
.' Make 3 Jagged Jasper |q 25155/2
step
'Use the Stardust in your bags on 10 Humanoids around the city |use Stardust No. 2##52507
.' Test the Stardust No. 2 on 10 Humanoids |q 25157/1 |tip You can use this on NPCs and yourself
step
goto 63.8,61.5
.talk 50480
..turnin 25154 
 		..turnin 25156
..turnin 25105
..turnin 25155
..turnin 25157 
.earn 4 Illustrious Jewelcrafter's Token##361 // |only if skill("Jewelcrafting")<525 - I don't think this works. If the conditions fails you won't be shown a step that you MUST do.
.' If you do not have these click this button to go to make another Fire Prism and go to the start of the Jewelcrafting Dailies to do them again |script ZGV:GotoStep("fire_prism")
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Professions Guides\\Leatherworking\\Leatherworking 1-525 Leveling Guide",[[
description This guide will walk you through leveling your Leatherworking skill from 1-525.
author support@zygorguides.com
completion skill,Leatherworking,525
#include profession_dual_start,prof1="Leatherworking",prof2="Skinning"
step
label "route"
'Redirecting to Leatherworking 1-55 |next "lw_1-55" |only if skill("Leatherworking")<55
'Redirecting to Leatherworking 55-155 |next "lw_55-155" |only if skill("Leatherworking")>=55 and skill("Leatherworking")<155
'Redirecting to Leatherworking 155-200 |next "lw_155-200" |only if skill("Leatherworking")>=155 and skill("Leatherworking")<200
'Redirecting to Leatherworking 200-225 |next "lw_200-225" |only if skill("Leatherworking")>=200 and skill("Leatherworking")<225
'Redirecting to Leatherworking 225-300 |next "lw_225-300" |only if skill("Leatherworking")>=225 and skill("Leatherworking")<300
'Redirecting to Leatherworking 300-350 |next "lw_300-350" |only if skill("Leatherworking")>=300 and skill("Leatherworking")<350
'Redirecting to Leatherworking 350-425 |next "lw_350-425" |only if skill("Leatherworking")>=350 and skill("Leatherworking")<425
'Redirecting to Leatherworking 425-525 |next "lw_425-525" |only if skill("Leatherworking")>=425 and skill("Leatherworking")<525
//...
'Redirecting to Leatherworking finale |next "lw_525" |only if default
// TRAIN:	Apprentice Leatherworking
step
title + Leatherworking 1-55
label "lw_1-55"
#include "trainer_Leatherworking"
.skillmax Leatherworking,75 |tip You must be at least level 5.
step
#include "vendor_Skinning"
.buy 1 Skinning Knife##7005
|only if skill("Skinning")>=1
step
#include "home_TradeDistrict"
step
#include "auctioneer"
.buy 57 Ruined Leather Scraps##2934
.buy 260 Light Leather##2318
#include go_farm,skill="Skinning",req="1",goto="lw_1-55_farm"
|next "lw_1-55_skill"
// GATHER:	130 Coarse Thread, 57 Ruined Leather Scraps, 260 Light Leather
step
label	"lw_1-55_farm"
title + Leatherworking 1-55 (farming)
|fly Ironforge
step
'Skipping next part of farming |next "farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
'Go outside to Dun Morogh |goto Dun Morogh |noway |c
step
label	"farming"
map Dun Morogh
path follow loose;loop;ants curved  // this stays until the end of the guide.
path	81.0,50.1	82.7,55.5	83.0,59.3
path	79.3,60.2	79.5,53.6	78.6,48.7
.' Kill any beasts you see and skin them.
.collect 57 Ruined Leather Scraps##2934 |n
.collect 260 Light Leather##2318 |n
skill Skinning,75
step
|fly Ironforge 
step
label	"farm2"
#include "trainer_Skinning_IF" 
.skillmax Skinning,150
step
'Skipping next part of farming |next "farm3" |only if skill("Skinning")>=125
'Proceeding to farm |next |only if default
step
|fly Thelsamar
step
map Loch Modan
path	50.3,66.3	48.3,61.5	54.8,53.0
path	57.3,50.2	60.4,43.0	62.6,49.3
path	59.4,56.9	53.6,61.7
.' Kill any beasts you see and skin them.
.collect 57 Ruined Leather Scraps##2934 |c
.collect 260 Light Leather##2318 |c
.' If you have an access amount of Ruined Leather Scraps, you can use them to create Light Leather |cast Leatherworking##3811
step
'Skipping next part of farming |next "exit" |only if step:Find("+farm3"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly  Menethil Harbor
step
label	"farm3"
map Wetlands
path	20.2,50.8	22.8,45.6
path	29.4,42.2	30.0,44.6	
path	26.6,47.6	24.7,51.5	23.6,58.7	
.' Kill any beasts you see and skin them.
.collect 57 Ruined Leather Scraps##2934 
.collect 260 Light Leather##2318
.' If you have an excess amount of Ruined Leather Scraps, you can use them to create Light Leather |cast Leatherworking##3811
step
label	"exit"
#include "hearth_hub"
// CREATE:	19 Light Leather, 10 Light Armor Kit, 20 Handstitched Leather Cloak, 5 Handstitched Leahter Belt
step
label	"lw_1-55_skill"
#include "vendor_Leatherworking"
.buy 130 Coarse Thread##2320
step
.create Light Leather##2881,Leatherworking,20 
step
.create Light Armor Kits##2152,Leatherworking,10 total
skill Leatherworking,30
step
#include "trainer_Leatherworking"
.learn Handstitched Leather Belt##3753
step
.create Handstitched Leather Cloak##9058,Leatherworking,20 total
skill Leatherworking,50
step
.create Handstitched Leather Belts##3753,Leatherworking,5 total
skill Leatherworking,55
// TRAIN:	Journeyman Leatherworking
step
title + Leatherworking 55-155
label	"lw_55-155" 
#include "trainer_Leatherworking"
.skillmax Leatherworking,150 |tip You must be at least level 10. 
.learn Embossed Leather Gloves##3756
// GATHER:	75 Salt, 30 Gray Dye, 190 Fine Thread, 15 Medium Hide, 155 Medium Leather
step
#include "auctioneer"
.buy 15 Medium Hide##4232
.buy 155 Medium Leather##2319
#include go_farm,skill="Skinning",req="125",goto="lw_55-155_farm"
|next "lw_55-155_skill" 
step
label	"lw_55-155_farm"
title + Leatherworking 55-155 (farming)
#include "trainer_Skinning" 
.skillmax Skinning,225
'Yor _Skinning_ skill is too low to learn the _Expert_ skill. You can proceed with farming, but your skill gains will stop at 150. It's better to skill up first. |only if skill("Skinning")<125
.' Click here to continue |confirm
step
|fly Rebel Camp
step
goto 61.0,21.2
.from Crystal Spine Basilisk##689+
.from Ironjaw Basilisk##1551+
.' Skin their corpses.
.collect 15 Medium Hide##4232
.collect 155 Medium Leather##2319
#include "max_skill_warning",skill="Skinning",goto="lw_55-155_farm"
step
#include "hearth_hub"
// CREATE:	30 Embossed Leather Gloves, 15 Fine Leather Belts, 15 Cured Medium Hide, 15 Dark Leather Boots
step
label	"lw_55-155_skill"
#include "vendor_Leatherworking"
.buy 75 Salt##4289
.buy 30 Gray Dye##4340
.buy 190 Fine Thread##2321
step
.create Embossed Leather Gloves##3756,Leatherworking,85
        step
#include "trainer_Leatherworking"
.learn Fine Leather Belt##3763
step
.create Fine Leather Belt##3763,Leatherworking,100 
.' Hold on to these for later use
step
#include "trainer_Leatherworking"
.learn Cured Medium Hide##3817
step
.create Cured Medium Hide##3817,Leatherworking,115 
step
#include "trainer_Leatherworking"
.learn Dark Leather Boots##2167
step
.create Dark Leather Boots##2167,Leatherworking,130 
step

.learn Dark Leather Belt##3766	
step
#include "trainer_Leatherworking"
.create Dark Leather Belt##3766,Leatherworking,145 
step
#include "trainer_Leatherworking"
.learn Hillman's Leather Gloves##3764
step
.create Hillman's Leather Gloves##3764,Leatherworking,150
step
.create Heavy Leather##20649,Leatherworking,155 
// TRAIN:	Expert Leatherworking
step
title + Leatherworking 155-200
label	"lw_155-200" 
#include "trainer_Leatherworking"
.learn Heavy Leather##20649
.skillmax Leatherworking,225 |tip You must be at least level 20. 
// GATHER:	145 Silken Thread, 500 Heavy Leather, 410 Thick Leather, 120 Bolt of Silk Cloth, 15 Black Dye
step
#include "auctioneer"
.buy 265 Heavy Leather##4234
.buy 30 Bolt of Silk Cloth##4305
#include go_farm,skill="Skinning",req="185",goto="lw_155-200_farm"
|next "lw_155-200_skill"
step
title + Leatherworking 155-200 (farming)
label	"lw_155-200_farm"
#include "trainer_Skinning" 
.skillmax Skinning,300 
'Your _Skinning_ skill is too low to learn the _Artisan_ skill. You can proceed with farming, but your skill gains will stop at 225. It's better to skill up first. |only if skill("Skinning")<200
.' Click here to continue |confirm |only if skill("Skinning")<200
step
#include "rideto_ratchet"
step
|fly Tower of Estulan
step
goto 55.4,55.0
.from Feral Scar Yeti##5292
.' Skin their corpses.
.collect 500 Heavy Leather##4234
.collect 120 Silk Cloth##4306
.' You can find more Yetis at [53.2,31.8]
#include "max_skill_warning",skill="Skinning",goto="lw_155-200_farm"
step
#include "hearth_hub"
step
'Find a tailor_ to make _Bolt of Silk Cloths_ for you |tip Ask in Trade Chat or in your Guild to help you
.collect 30 Bolt of Silk Cloth##4305
// CREATE:	15 Dark Leather Belt,  5 Hillman's Leather Gloves, 5 Heavy Leather, 5 Thick Armor Kit, 20 Heavy Armor Kit, 15 Dusky Bracers, 5 Guardian Pants
step
label	"lw_155-200_skill"
#include "vendor_Leatherworking"
.buy 145 Silken Thread##4291
.buy 15 Black Dye##2325 
step
#include "trainer_Leatherworking"
.learn Heavy Armor Kit##3780
step
.create Heavy Armor Kit##3780,Leatherworking,180
step
#include "trainer_Leatherworking"
.learn Guardian Pants##7147
step
.create Guardian Pants##7147,Leatherworking,185 
step
#include "trainer_Leatherworking"
.learn Dusky Bracers##9201
step
.create Dusky Bracers##9201,Leatherworking,200
step
title + Leatherworking 200-225
label	"lw_200-225"
#include "auctioneer"		
.buy 410 Thick Leather##4304
#include go_farm,skill="Skinning",req="235",goto="lw_200-225_farm"
|next "lw_200-225_skill"
step
title + Leatherworking 200-225 farm
label	"lw_200-225_farm"
#include "trainer_Skinning" 
.skillmax Skinning,375 |only if skill("Skinning")>=275 
'Your _Skinning_ skill is too low to learn the _Artisan_ skill. You can proceed with farming, but your skill gains will stop at 225. It's better to skill up first. |only if skill("Skinning")<275
.' Click here to continue |confirm |only if skill("Skinning")<275
step
|fly Everlook
step
goto Winterspring,64.8,53.2
.from Ice Thistle Yeti##7458
.collect 410 Thick Leather##4304
#include "max_skill_warning",skill="Skinning",goto="lw_200-225_farm"
step
#include "hearth_hub" 
step
label	"lw_200-225_skill"
#include "trainer_Leatherworking"
.learn Thick Armor Kit##10487
step
.create Thick Armor Kit##10487,Leatherworking,205
step
#include "trainer_Leatherworking"
.learn Nightscape Headband##10507
step
.create Nightscape Headband##10507,Leatherworking,225
// TRAIN:	Artisan Leatherworking
step
title + Leatherworking 225-300
label	"lw_225-300"
#include "trainer_Leatherworking"
.skillmax Leatherworking,300 |tip You must be at least level 35.
// GATHER:	35 Black Dye, 92 Rune Thread, 422 Rugged Leather
step
#include "auctioneer"
.buy 410 Rugged Leather##8170
#include go_farm,skill="Skinning",req="255",goto="lw_225-300_farm"
|next "lw_225-300_skill"
step
title + Leatherworking 225-300 (farming)
label	"lw_225-300_farm"
#include "trainer_Skinning" 
.skillmax Skinning,375 |only if skill("Skinning")>=275
'Your _Skinning_ skill is too low to learn the _Master_ skill. You can proceed with farming, but your skill gains will stop at 300. It's better to skill up first. |only if skill("Skinning")<275 
.' Click here to continue |only if skill("Skinning")<275 |confirm
step
#include "rideto_theramoreisle"
step
|fly Everlook
step
goto Winterspring,64.8,53.2
.from Ice Thistle Yeti##7458
.collect 410 Rugged Leather##8170
#include "max_skill_warning",skill="Skinning",goto="lw_225-300_farm"
step
#include "hearth_hub"
// CREATE:	35 Nightscape Headband, 15 Nightscape Pants, 18 Rugged Armor Kit, 25 Wicked Leather Bracers, 20 Heavy Silken Thread
step
label	"lw_225-300_skill"
#include "vendor_Leatherworking"
.buy 35 Black Dye##2325
.buy 92 Rune Thread##14341
.buy 20 Heavy Silken Thread##8343
step
.create Nightscape Headband##10507,Leatherworking,235
step
#include "trainer_Leatherworking"
.learn Nightscape Boots##10558
step
.create Nightscape Boots##10558,Leatherworking,250
step
#include "trainer_Leatherworking"
.learn Rugged Armor Kit##19058
step
.create Rugged Armor Kit##19058,Leatherworking,265
step
#include "trainer_Leatherworking"
.learn Wicked Leather Bracers##19052
step
.create Wicked Leather Bracers##19052,Leatherworking,290
step
#include "trainer_Leatherworking"
.learn Wicked Leather Headband##19071
step
.create Wicked Leather Headband##19071,Leatherworking,300
// TRAIN:	Master Leatherworking
step
title + Leatherworking 300-350
label	"lw_300-350"
#include "trainer_Leatherworking"
.skillmax Leatherworking,375 |tip You must be at least level 50.
// GATHER:	100 Knothide Leather Scrap, 307 Knothide Leather, 28 Fel Scales,
step
#include "auctioneer"
.buy 100 Knothide Leather Scraps##25649
.buy 307 Knothide Leather##21887
.buy 28 Fel Scales##25700
#include go_farm,skill="Skinning",req="310",goto="lw_300-350_farm"
|next "lw_300-350_skill"
step
title + Leatherworking 300-350 (farming)
label	"lw_300-350_farm"
#include "trainer_Skinning" 
.skillmax Skinning,450 |only if skill("Skinning")>=350
'Your _Skinning_ skill is too low to learn the _Grand Master_ skill. You can proceed with farming, but your skill gains will stop at 375. It's better to skill up first. |only if skill("Skinning")<350
.' Click here to continue |only if skill("Skinning")<350 |confirm
step
#include "darkportal"
step
|fly Honor Hold
step
goto Hellfire Peninsula,21.8,64.8
.from Quillfang Ravager##16934+, Quillfang Skitterer##19189+
.' Skin their corpses.
.collect 100 Knothide Leather Scraps##25649
.collect 307 Knothide Leather##21887
#include "max_skill_warning",skill="Skinning",goto="lw_300-350_farm"
step
|fly Shattrath
step
 goto Terokkar Forest,38.5,12.5
.from Dampscale Basilisk##18461+ |tip They can be found all around Silmyr Lake.
.' Skin their corpses.
.collect 28 Fel Scales##25700
#include "max_skill_warning",skill="Skinning",goto="lw_300-350_farm"
step
#include "hearth_hub"
// CREATE:	10 Wicked Leather Headband, 20 Knothide Leather, 23 Knothide Armor Kit, 43 Heavy Knothide Leather, 5 Thick Draenic Vest, 14 Scaled Draenic Boots, 
step
label	"lw_300-350_skill"
#include "trainer_Leatherworking"
.learn Knothide Leather##32454
step
.create Knothide Leather##32454,Leatherworking,310
step
#include "trainer_Leatherworking"
.talk 19187
.learn Knothide Armor Kit##32456
step
.create Knothide Armor Kit##32456,Leatherworking,325
step
#include "trainer_Leatherworking"
.talk 19187
.learn Heavy Knothide Leather##32455
step
.create Heavy Knothide Leather##32455,Leatherworking,43 total
skill Leatherworking,335
step
#include "trainer_Leatherworking"
.talk 19187
.learn Thick Draenic Vest##32473
step
.create Thick Draeneic Vest##32473,Leatherworking,340
step
#include "trainer_Leatherworking"
.talk 19187
.learn Scaled Draenic Boots##32469
step
.create Scaled Draenic Boots##32469,Leatherworking,350
// TRAIN:	Grand Master Leatherworking
step
title + Leatherworking 350-425
label	"lw_350-425"
#include "trainer_Leatherworking"
.skillmax Leatherworking,450 |tip You must be at least level 65.
.learn Borean Armor Kit##38375
// GATHER:	1166 Borean Leather, 115 Crystallized Water, 50 Crystallized Earth (5 Eternal Earth)
step
#include "auctioneer"
.buy 974 Borean Leather##33568
.buy 100 Crystallized Water##37705 |tip You can create Crystallized Water by using Eternal Waters.
.buy 5 Eternal Earth##35624 |tip You can create Eternal Earth by combining 10 Crystallized Earth.
#include go_farm,skill="Skinning",req="380",goto="lw_350-425_farm"
|next "lw_350-425_skill"
step
title + Leatherworking 350-425 (farming)
label	"lw_350-425_farm"
#include "trainer_Skinning" 
.skillmax Skinning,450 
'Your _Skinning_ skill is too low to learn the _Grand Master_ skill. You can proceed with farming, but your skill gains will stop at 375. It's better to skill up first. |only if skill("Skinning")<350
.' Click here to continue |only if skill("Skinning")<350 |confirm
step
#include "rideto_borean"
step
'Skipping next part of farming |next "+skinninglvl2" |only if step:Find("+skinninglvl"):IsComplete()
'Proceeding to farm |next |only if default
step
label	"skinninglvl"
map Borean Tundra
path 49.8,67.7	46.9,70.7
path 44.2,71.0	41.1,70.7	38.5,71.8
path 41.9,74.4	45.3,74.9	48.1,74.4
path 49.6,72.3	51.6,69.1
.' Kill any beasts you see and skin them.
.collect 974 Borean Leather##33568 |n
skill Skinning,395
step
'Skipping next part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "skinninglvl2"
|fly River's Heart
step
label	"farming"
map Sholazar Basin
path 28.8,55.9	29.7,51.6	31.1,46.4
path 32.2,40.4	28.6,42.9	25.6,47.9
path 23.5,52.3	22.6,58.7	22.6,65.3
path 22.3,70.2	26.4,72.7	28.9,69.1
path 29.6,64.4
.' Kill any beasts you see and skin them.
.collect 974 Borean Leather##33568
#include "max_skill_warning",skill="Skinning",goto="lw_350-425_farm"
step
label	"farm2"
goto 25.9,35.5
.from Aqueous Spirit##28862+
.collect 100 Crystalized Water##37705
.from Stormwatcher##28877+
.collect 50 Crystallized Earth##37701 |use Crystallize Earth##37701
.' There are a few Perch Guardians at [28.7,39.5] to kill that will also drop the Crystallized Earth
step
#include "hearth_hub"
// CREATE:	33 Borean Armor Kit, 10 Arctic Boots, 131 Heavy Borean Leather, 20 Dark Frostscale Leggings, 5 Overcast Bracers,
step
label	"lw_350-425_skill"
.create Borean Armor Kit##50962,Leatherworking,380
step
#include "trainer_Leatherworking"
.learn Arctic Boots##50948
step
.create Arctic Boots##50948,Leatherworking,390
step
#include "trainer_Leatherworking"
.learn Heavy Borean Leather##50936
step
.create Heavy Borean Leather##50936,Leatherworking,405
.collect 131 Heavy Borean Leather##38425 |tip Save these, you'll need these later
step
#include "trainer_Leatherworking"
.learn Dark Frostscale Leggings##60601
step
.create Dark Frostscale Leggings##60601,Leatherworking,420
step
#include "rideto_borean"
step
|fly Dalaran
step
goto Dalaran,37.3,28.7
.talk 32515
.buy Pattern: Overcast Bracers##44524 |n
.learn Overcast Bracers##60720 |use Pattern: Overcast Bracers##44524
step
.create Overcast Bracers##60720,Leatherworking,425
step
goto Dalaran,40.0,62.7
.' Click on the Portal to Stormwind |tip It looks like a light blue swirling portal.
.' Teleport to Stormwind |goto Stormwind City |noway |c
// TRAIN:	Illustrious Grand Master Leatherworking
step
title + Leatherworking 425-525
label	"lw_425-525"
#include "trainer_Leatherworking"
.skillmax Leatherworking,525 |tip You must be at least level 75.
.learn Savage Leather##84950
// GATHER:	35 Eternium Thread, 50 Savage Leather Scraps, 1745 Savage Leather, 58 Volatile Earth, 38 Volatile Water, 8 Volatile Air, 54 Volatile Fire
step
#include "auctioneer"
.buy 50 Savage Leather Scraps##52977
.buy 1745 Savage Leather##52976
.buy 58 Volatile Earth##52327
.buy 38 Volatile Water##52326
.buy 8 Volatile Air##52328
.buy 54 Volatile Fire##52325
#include go_farm,skill="Skinning",req="440",goto="lw_425-525_farm"
|next "lw_425-525_skill"
step
title + Leatherworking 425-525 (farming)
label	"lw_425-525_farm"
#include "trainer_Skinning" 
.skillmax Skinning,525 |only if skill("Skinning")>=425
'Your _Skinning_ skill is too low to learn the _Illustrious Grand Master_ skill. You can proceed with farming, but your skill gains will stop at 450. It's better to skill up first. |only if skill("Skinning")<425
.' Click here to continue |only if skill("Skinning")<425 |confirm
step
#include "port_vashjir"
step
goto Shimmering Expanse,49.7,61.1
.from Sandskin Pincer##40889, Snapjaw Grouper##40912
.' Skin their corpses.
.collect 50 Savage Leather Scraps##52977 
.collect 1745 Savage Leather##52976 |only if level <=83
#include "max_skill_warning",skill="Skinning",goto="lw_425-525_farm"
step
#include "hearth_hub"
step
#include "port_hyjal"
|only if level <=83
step
goto 65.8,23.0
.from Scalding Rock Elemental##40229+
.collect 58 Volatile Earth##52327
|only if level <=83
step
goto 26.1,41.2
.' Go through the Portal to Firelands Forgeworks |tip It looks like a big blue swirling portal.
.' Teleport to Firelands Forgeworks |goto Mount Hyjal,25.8,41.5,0.5 |noway |c
|only if level <=83
step
goto Mount Hyjal,29.1,41.1
.from Searing Guardian##40841+
.collect 54 Volatile Fire##52325
|only if level <=83
step
goto 25.8,40.5
.' Go through the Portal to Mount Hyjal|tip It looks like a big blue swirling portal.
.' Teleport to Mount Hyjal |goto Mount Hyjal,26.3,40.9,0.5 |noway |c
|only if level <=83
step
goto Mount Hyjal,62.7,23.0 |n
.' Click on the Portal to Stormwind |goto Stormwind City |noway |c
|only if level <=83
step
#include "port_twilight"
step
goto Twilight Highlands,67.0,24.7
.from Highland Worg##46153+, Highland Elk##46970+, Tawny Owl##46162, Untamed Gryphon##46158+
.collect 1745 Savage Leather##52976
.' You can find more beasts to skin here [61.2,22.4]
#include "max_skill_warning",skill="Skinning",goto="lw_425-525_farm"
step
goto 57.9,31.2
.from Obsidian Stoneslave##47226+
.collect 58 Volatile Earth##52327
step
goto 66.4,45.9
.from Twilight Sentinel##47406+
.collect 38 Volatile Water##52326
step
goto 34.6,69.2
.from Enslaved Tempest##46328+
.collect 8 Volatile Air##52328
.' You can find more over at [39.5,85.7]
step
goto 42.9,79.1
.from Enslaved Inferno##46327+
.collect 54 Volatile Fire##52325
step
#include "hearth_hub"
// CREATE:	10 Savage Leather, 15 Savage Armor Kit, 10 Tsunami Boots, 10 Savage Cloaks, 5 Darkbrand Boots, 5 Darkbrand Shoulders, 5 Darkbrand Chestguard, 272 Heavy Savage Leather, 2 Darkbrand Leggings, 2 Cloak of Beast, 12 Darkbrand Helms, 3 Bloodied Leather Bracer, 2 Bloodied Leather Boots, 2 Bloodied Leather Helm
step
label	"lw_425-525_skill"  
#include "vendor_Leatherworking"
.buy 35 Eternium Thread##38426
step
.create Savage Leather##84950,Leatherworking,435
step
#include "trainer_Leatherworking"
.learn Savage Armor Kit##56477
step
.create Savage Armor Kit##78379,Leatherworking,450
step
#include "trainer_Leatherworking"
.learn Tsunami Boots##78410
step
.create Tsunami Boots##78410,Leatherworking,460
step
#include "trainer_Leatherworking"
.learn Savage Cloak##78380
step
.create Savage Cloak##78380,Leatherworking,470
step
#include "trainer_Leatherworking"
.learn Darkbrand Boots##78407
step
.create Darkbrand Boots##78407,Leatherworking,475
step
#include "trainer_Leatherworking"
.learn Darkbrand Shoulders##78411
step
.create Darkbrand Shoulders##78411,Leatherworking,480
step
#include "trainer_Leatherworking"
.learn Darkbrand Chestguard##78428
step
.create Darkbrand Chestguard##78428,Leatherworking,485
step
#include "trainer_Leatherworking"
.learn Heavy Savage Leather##78436
step
.create Heavy Savage Leather##78436,Leatherworking,272 total
skill Leatherworking,490
step
#include "trainer_Leatherworking"
.learn Darkbrand Leggings##78433
step
.create Dark Brand Leggings##78433,Leatherworking,2 total
skill Leatherworking,496
step
#include "trainer_Leatherworking"
.learn Cloak of Beasts##78438
step
.create Cloak of the Beast##78438,Leatherworking,3 total
skill Leatherworking,505
step
#include "trainer_Leatherworking"
.learn Darkbrand Helm##78424
step
.create Darkbrand Helm##78424,Leatherworking,12 total
skill Leatherworking,510
step
#include "vendor_Leatherworking"
.buy Pattern: Bloodied Leather Bracers##67046 |tip You will need 10 Heavy Savage Leather to buy this recipe.
.buy Pattern: Bloodied Leather Boots##67060 |tip You will need 10 Heavy Savage Leather to buy this recipe.
.buy Pattern: Bloodied Leather Helm##67077 |tip You will need 10 Heavy Savage Leather to buy this recipe.
step
.learn Bloodied Leather Bracers##78446 |use Pattern: Bloodied Leather Bracers##67046
step
.create Bloodied Leather Bracers##78446,Leatherworking,3 total
skill Leatherworking,516
step
.learn Bloodied Leather Boots##78454 |use Pattern: Bloodied Leather Boots##67060
step
.create Bloodied Leather Boots##78454,Leatherworking,2 total
skill Leatherworking,520
step
.learn Bloodied Leather Helm##78469 |use Pattern: Bloodied Leather Helm##67077
step
.create Bloodied Leather Helm##78469,Leatherworking,3 total
skill Leatherworking,525
step
title + Leatherworking 525
label	"lw_525"
'Congratulations, you are now a level 525 Leatherworker!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Professions Guides\\Mining\\Mining 1-525 Leveling Guide",[[
description This guide will walk you through leveling your Mining skill from 1 - 525.
author support@zygorguides.com
completion skill,Mining,525
#include profession_single_start,prof1="Mining"
step
'Redirecting to Mining 1-65 |next "min_1-65" |only if skill("Mining")<65
'Redirecting to Mining 65-125 |next "min_65-125" |only if skill("Mining")>=65 and skill("Mining")<125
'Redirecting to Mining 125-200 |next "min_125-200" |only if skill("Mining")>=125 and skill("Mining")<200
'Redirecting to Mining 200-275 |next "min_200-275" |only if skill("Mining")>=200 and skill("Mining")<275
'Redirecting to Mining 275-350 |next "min_275-350" |only if skill("Mining")>=275 and skill("Mining")<350
'Redirecting to Mining 350-425 |next "min_350-425" |only if skill("Mining")>=350 and skill("Mining")<425
'Redirecting to Mining 425-525 |next "min_425-525" |only if skill("Mining")>=425 and skill("Mining")<525
//...
'Redirecting to Mining finale |next "min_425-525" |only if default
step
title + Mining 1-65
label "min_1-65"
#include "trainer_Mining"
.skillmax Mining,75 |tip You must be at least level 5.
step
#include "vendor_Mining"
.buy 1 Mining Pick##2901
step
#include "home_TradeDistrict"
step
'Go outside to Elwynn Forest |goto Elwynn Forest |noway |c
step
map Elwynn Forest
path follow loose;loop;ants straight  // this stays set until the end of the guide.
path 32.8,50.5	30.2,58.2	28.3,64.8
path 25.6,70.3	21.4,74.5	23.1,82.5
path 31.5,78.1	37.5,71.4	38.2,82.5
path 44.6,75.2	49.7,84.8	57.3,80.8
path 61.7,75.2	67.3,72.2	70.2,66.1
path 73.7,56.0	73.8,48.2	80.5,54.8
path 80.0,46.1	77.5,38.1	71.4,38.5
path 64.7,37.9	67.9,47.0	68.6,59.0
path 55.1,56.0	49.9,60.4	46.2,53.9
path 43.2,48.7	37.2,51.9
#include "follow_path_mine"
skill Mining,35
step
'Go inside Stormwind City |goto Stormwind City |noway |c
step
 #include "maincity_anvil"
.create Copper Bar##2657,Mining,50 |tip Keep all of the Copper Bars for Smelting later.
step
title + Mining 65-125
label "min_65-125"
#include "trainer_Mining"
.skillmax Mining,150
.learn Smelt Bronze##2659
.learn Smelt Tin##3304
step
|fly Rebel Camp
step
map Northern Stranglethorn
path 40.4,45.0	36.3,44.1	34.0,38.8
path 31.1,34.1	27.0,31.8	21.4,25.2
path 21.8,18.7	26.6,21.9	31.1,22.4
path 34.6,20.9	33.8,17.2	38.5,17.9
path 46.3,19.1	52.5,20.5	58.6,16.8
path 63.5,17.5	63.2,22.1	60.3,24.3
path 57.2,28.2	60.8,34.6	66.1,40.9
path 62.9,47.1	56.2,50.4	48.0,55.2
path 44.3,55.5	48.7,47.2	47.7,39.2
path 50.2,28.6	44.6,28.2	42.9,34.7
path 41.4,41.2
#include "follow_path_mine"
skill Mining,125
step
#include "hearth_hub"
step
title + Mining 125-200
label "min_125-200"
#include "trainer_Mining"
.skillmax Mining,225
.learn Smelt Iron##3307
step
label "farm"
'Skipping next part of farming |next "+farm" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Chillwind Camp	
step
label "farming"
map Western Plaguelands
path 42.6,80.9	39.3,79.9	36.1,77.2
path 33.2,72.6	30.2,69.6	29.8,66.4
path 33.5,63.9	31.2,55.5	37.1,54.4
path 38.7,51.6	43.8,49.7	48.0,47.8
path 45.0,41.3	45.0,36.1	44.2,31.6
path 49.9,28.9	54.3,26.4	54.8,33.7
path 51.6,40.2	50.2,45.8	54.7,48.9
path 60.0,52.2	66.3,43.9	68.8,45.9
path 67.4,52.5	61.4,62.0	72.4,59.7	
path 81.2,68.8	80.7,77.4	73.0,83.5	
path 64.4,84.0	58.0,82.1	53.1,74.7
#include "follow_path_mine"
skill Mining,200
step
|fly Menethil Harbor
step
#include "rideto_theramoreisle"
step
|fly Gadgetzan
step
title + Mining 200-275
label "min_200-275"
goto Tanaris,51.0,29.0
.talk 8128
.skillmax Mining,300
.learn Smelt Iron##3307
step
label "farm"
'Skipping next part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Marshal's Stand
step
label "farming"
map Un'Goro Crater
path 37.5,18.9	43.5,14.1	49.9,18.5
path 62.7,17.9	70.4,26.8	76.3,51.0
path 70.7,71.0	62.1,83.7	52.2,85.9
path 37.7,83.1	27.9,65.8	24.0,52.5
path 26.7,36.4
#include "follow_path_mine"
skill Mining,275
step
label "exit"
#include "hearth_hub"
step
title + Mining 275-350
label "min_275-350"
#include "trainer_Mining"
.skillmax Mining,375
.learn Smelt Fel Iron##29356
step
#include "darkportal"
label "farm"
'Skipping next part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label "farming"
map Hellfire Peninsula
path	69.3,47.5	74.5,38.7	68.2,37.7
path	62.0,31.0	58.0,32.8	54.0,26.7
path	46.0,29.3	34.1,29.1	32.0,34.5
path	38.5,38.2	35.7,40.7	33.4,49.8
path	30.3,48.6	32.5,43.3	28.5,39.3
path	26.5,45.5	22.6,45.1	18.0,38.3
path	12.5,36.1	17.9,46.3	11.8,41.9
path	12.0,47.0	06.2,49.5	15.4,62.4
path	20.3,52.9	24.0,61.1	21.2,62.7
path	28.1,80.8	27.7,69.5	30.5,72.8
path	30.3,59.9	34.8,66.6	37.7,53.3
path	46.9,46.3	49.3,49.5	60.3,48.6
path	60.8,52.8	52.1,52.7	47.2,57.7
path	45.9,75.5	33.5,89.6	33.1,92.6
path	49.1,77.5	44.6,86.2	55.5,82.8
path	58.7,78.8	56.5,72.3	65.8,63.6
path	67.1,71.7	63.0,73.3	65.8,77.9
path	68.7,77.6	71.0,71.7	70.1,68.6
path	65.0,59.8	65.6,56.0	75.0,63.9
path	78.4,80.2	80.7,77.5	77.3,63.7
path	72.7,60.2	71.5,53.1	68.3,52.0
#include "follow_path_mine"
skill Mining,325
step
label "farm2"
'Skipping next part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Telaar
step
label "farming"
map Nagrand
path   45.7,68.9	43.1,58.9	45.0,54.7
path 49.6,57.5	56.0,54.8	56.3,59.4
path 49.7,66.2	41.9,77.0	35.7,79.3
path 31.1,75.3	27.3,63.0	33.4,57.5
path 33.7,49.4	24.0,47.4	19.7,46.7
path 11.4,43.0	11.3,36.6	19.9,32.1
path 25.0,32.8	28.2,31.8	26.5,20.5
path 30.0,18.1	36.3,23.0	40.5,35.4
path 43.1,22.8	50.8,23.5	57.0,29.0
path 65.0,37.6	70.3,42.6	68.8,51.1
path 72.3,58.1	73.8,67.9	69.8,78.1
path 57.9,75.5	49.0,79.0
#include "follow_path_mine"
|tip Go into any caves you find as there is lots of ore.
skill Mining,350
step
label	"exit"
#include "hearth_hub"
step
title + Mining 350-425
label "min_350-425"
#include "trainer_Mining"
.skillmax Mining,450
.learn Smelt Adamantite##29358
.learn Smelt Cobalt##49252
.learn Smelt Eternium##29359
.learn Smelt Felsteel##29360
step
 #include "maincity_anvil"
.' Smelt your ore next to the Forge |cast Smelting##2656
.' When you are done smelting, skip to the next step of the guide.
|confirm
step
#include "rideto_borean"
step
'Skipping next part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label	"farming"
map Borean Tundra
path   29.6,20.6	24.7,22.2	24.1,26.2
path 28.6,26.3	29.4,21.9	32.5,25.8
path 36.6,29.7	42.7,35.4	43.1,39.1
path 39.5,42.9	34.5,48.2	30.2,54.8
path 33.1,57.3	35.2,65.9	39.4,68.2
path 44.1,66.0	46.3,62.0	50.0,62.4
path 50.8,71.7	53.6,72.0	60.5,59.2
path 67.2,47.4	83.0,44.8	91.8,39.7
path 73.9,20.6	63.9,12.6	59.9,19.0
path 42.5,14.8	46.8,40.4
#include "follow_path_mine"
skill Mining,365
step
label	"farm2"
map Borean Tundra
path   29.6,20.6	24.7,22.2	24.1,26.2
path 28.6,26.3	29.4,21.9	32.5,25.8
path 36.6,29.7	42.7,35.4	43.1,39.1
path 39.5,42.9	34.5,48.2	30.2,54.8
path 33.1,57.3	35.2,65.9	39.4,68.2
path 44.1,66.0	46.3,62.0	50.0,62.4
path 50.8,71.7	53.6,72.0	60.5,59.2
path 67.2,47.4	83.0,44.8	91.8,39.7
path 73.9,20.6	63.9,12.6	59.9,19.0
path 42.5,14.8	46.8,40.4
#include "follow_path_mine"
skill Mining,400
step
label "farm"
'Skipping next part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
.' Fly north east to Sholazar Basin |goto Sholazar Basin |noway |c
step
label "farming"
map Sholazar Basin
path	77.9,63.8	78.7,52.4	74.3,48.6
path	65.1,30.5	58.9,27.8	58.9,21.1
path	40.8,20.8	32.9,32.8	35.8,40.3
path	33.8,40.6	33.7,35.4	29.7,38.5
path	23.3,48.4	20.8,56.1	20.4,76.6
path	22.6,78.5	22.5,84.0	34.5,88.9
path	60.3,88.8	59.7,81.3	51.5,82.1
path	48.5,76.8	62.3,74.5	63.6,84.4
path	74.2,56.1	69.4,58.3	64.2,53.5
path	75.1,54.0	74.3,48.6	63.5,44.4
path	66.7,40.3	63.7,34.6	58.5,33.3
path	59.4,37.3	48.0,33.2	52.7,39.9
path	47.8,43.1	46.8,39.7	39.6,32.8
path	39.9,39.5	33.5,46.6	35.8,49.9
path	40.0,50.9	38.0,54.9	30.5,55.3
path	35.1,59.5	28.7,61.7	35.8,67.6
path	33.8,73.4	34.2,78.4	43.6,76.6
path	39.3,75.5	40.9,70.1	46.0,60.9
path	47.4,66.9	51.5,62.1	55.5,66.5
path	56.5,57.1	58.9,53.9	60.0,60.2
path	57.2,68.1	63.0,67.1	62.8,62.3
path	71.3,63.8
#include "follow_path_mine"
skill Mining,425
step
label "exit"
#include "hearth_hub"
step
label "min_425-525"
#include "trainer_Mining"
.skillmax Mining,525
.learn Smelt Obsidium##84038
step
label "farm"
'Skipping next part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "port_hyjal"
step
label "farming"
map Mount Hyjal
path 23.8,36.2	9.4,35.9	17.0,56.4
path 35.2,64.9	33.3,74.8	31.3,84.3
path 34.5,95.3	52.7,60.2	57.2,58.4
path 79.6,58.7	85.7,46.7	81.5,53.8
path 75.8,57.3	58.3,55.5	54.6,54.4
path 36.7,51.9	25.0,40.2	35.7,34.3
path 33.5,26.4
#include "follow_path_mine"
skill Mining,475
step
#include "hearth_hub"
step
label "farm2"
'Skipping next part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
#include "port_twilight"
step
label "farming"
map Twilight Highlands
path   71.4,50.3	54.0,37.6	41.3,56.6
path 37.5,58.2	24.5,56.9	30.0,42.8
path 26.9,28.7	32.3,27.1	31.5,40.1
path 38.6,41.2	39.6,30.4	39.0,19.7
path 46.2,20.1	53.8,24.8	61.5,32.4
path 68.5,37.9
#include "follow_path_mine"
skill Mining,525
step
title + Mining 525
label "min_525"
'Congratulations, you are now a level 525 Miner!	
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Professions Guides\\Mining\\Mining with Smelting 1-525 Leveling Guide",[[
description This guide will walk you through leveling your Mining skill from 1-525 using Smelting up to 375.
author support@zygorguides.com
completion skill,Mining,525
step
'This guide is for players who would prefer to level mining by buying ore from the auction house and smelting it themselves. If you would prefer to level by collecting the ore yourself around the world then use the Mining 1-525 guide.
.' Click here to continue |confirm
#include "profession_single_start",prof1="Mining"
step
#include "home_TradeDistrict"
step
'Redirecting to Mining 1-75 |next "sm_1-75" |only if skill("Mining")<75
'Redirecting to Mining 55-155 |next "sm_75-125" |only if skill("Mining")>=75 and skill("Mining")<125
'Redirecting to Mining 155-215 |next "sm_125-225" |only if skill("Mining")>=125 and skill("Mining")<200
'Redirecting to Mining 200-275 |next "sm_200-275" |only if skill("Mining")>=200 and skill("Mining")<275
'Redirecting to Mining 275-355 |next "sm_275-350" |only if skill("Mining")>=275 and skill("Mining")<350
'Redirecting to Mining 355-425 |next "sm_350-425" |only if skill("Mining")>=350 and skill("Mining")<425
'Redirecting to Mining 355-425 |next "sm_425-525" |only if skill("Mining")>=425 and skill("Mining")<525
//...
'Redirecting to Mining finale |next "sm_525" |only if default
step
title + Mining w/Smelting (1-75)
label	"sm_1-75"
#include trainer_Mining
.skillmax Mining,75 |tip You must be at least level 5.
step
'Skipping next part of guide |next "create" |only if step:Find("+skill"):IsComplete()
'Proceeding to skill up |next |only if default
step
#include auctioneer_dwarven
.buy 90 Copper Ore##2770
step
label	"skill"
#include maincity_anvil
.create Copper Bar##2657,Mining,90 total |n |tip Keep all of the Copper Bars for Smelting later.
.skill Mining,50
step
label	"create"
#include trainer_Mining
.learn Smelt Tin##3304
step
#include auctioneer_dwarven
.buy 90 Tin Ore##2771
step
#include maincity_anvil
.create Tin Bar##3304,Mining,90 total |n |tip Keep all of the tin Bars for Smelting later.
.skill Mining,70
step
title + Mining W/Smelting (75-125)
label	"sm_75-125"
'Skipping next part of guide |next "farm" |only if step:Find("+skill"):IsComplete()
'Proceeding to skill up |next |only if default
step
#include trainer_Mining
.skillmax Mining,150
.learn Smelt Bronze##2659
.learn Smelt Silver##2658
step
label	"skill"
#include maincity_anvil
.create Bronze Bar##2659,Mining,180 total |n
.skill Mining,90
step
'Skipping next part of guide |next "farm1" |only if step:Find("+skill"):IsComplete()
'Proceeding to skill up |next |only if default
step
label	"farm"
#include trainer_Mining
.skillmax Mining,150
.learn Smelt Silver##2658
step
#include auctioneer_dwarven
.buy 10 Silver Ore##2775
step
label	"skill"
#include maincity_anvil
.create Silver Bar##2658,Mining,100
step
label	"farm1"
#include trainer_Mining
.learn Smelt Iron##3307
step
#include auctioneer_dwarven
.buy 40 Iron Ore##2772
step
label	"skill"
#include maincity_anvil
.create Iron Bar##3307,Mining,40 total |tip Keep all the Iron Bars for smelting later.
.skill Mining,125
step
title + Mining w/Smelting (125-225)
label	"sm_125-225"
#include trainer_Mining
.skillmax Mining,225 |tip You must be level 10
step
'Skipping next part of guide |next "farm" |only if step:Find("+skill"):IsComplete()
'Proceeding to skill up |next |only if default
step
#include trainer_Mining
.learn Smelt Steel##3569
step
#include vendor_Mining
.buy 40 Coal##3857
step
label	"skill"
#include maincity_anvil
.create Steel Bar##3569,Mining,40 total |n
.skill Mining,135
step
label	"farm"
#include trainer_Mining
.learn Smelt Gold##3308
step
'Skipping next part of guide |next "farm1" |only if step:Find("+skill"):IsComplete()
'Proceeding to skill up |next |only if default
step
#include auctioneer_dwarven
.buy 15 Gold Ore##2776
step
label	"skill"
#include maincity_anvil
.create Gold Bar##3308,Mining,15 total |n
.skill Mining,150
step
label	"farm1"
#include trainer_Mining
.learn Smelt Mithril##10097
step
'Skipping next part of guide |next "farm2" |only if step:Find("+skill"):IsComplete()
'Proceeding to skill up |next |only if default
step
#include auctioneer_dwarven
.buy 80 Mithril Ore##3858
step
label	"skill"
#include maincity_anvil
.create Mithril Bar##10097,Mining,80 total |n
.skill Mining,190 
step
label	"farm2"
#include "trainer_Mining"
.learn Smelt Truesilver##10098
step
#include auctioneer_dwarven
.buy 10 Truesilver Ore##7911
step
#include "maincity_anvil"
.create Smelt Truesilver##10098,Mining,200
step
title + Mining w/Smelting (225-275)
label	"sm_200-275"
#include trainer_Mining
.skillmax Mining,300 |tip You must be level 25
.learn Smelt Thorium##16153
step
#include auctioneer_dwarven
.buy 150 Thorium Ore##10620
step
#include maincity_anvil
.create Thorium Bar##16153,Mining,150 total |n
.skill Mining,275
step
title + Mining w/Smelting (275-375)
label	"sm_275-350"
#include trainer_Mining
.skillmax Mining,375 |tip You must be level 40
.learn Smelt Fel Iron##29356
step
'Skipping next part of guide |next "farm" |only if step:Find("+skill"):IsComplete()
'Proceeding to skill up |next |only if default
step
#include auctioneer_dwarven
.buy 240 Fel Iron Ore##23424
step
label	"skill"
#include maincity_anvil
.create Fel Iron Bar##29356,Mining,240 total |n
.skill Mining,325
step
label	"farm"
#include trainer_Mining
.learn Smelt Adamantite##29358
step
'Skipping next part of guide |next "sm_275-350_farm" |only if step:Find("+skill"):IsComplete()
'Proceeding to skill up |next |only if default
step
.buy 100 Adamantite Ore##23425
step
label	"skill"
#include maincity_anvil
.create Adamantite Bar##29358,Mining,50 total |n
.skill Mining,340
step
label	"sm_275-350_farm"
step
#include darkportal
step
|fly Telaar
step
map Nagrand
path follow loose;loop  // this stays until the end of the guide.
path   45.7,68.9	43.1,58.9	45.0,54.7
path 49.6,57.5	56.0,54.8	56.3,59.4
path 49.7,66.2	41.9,77.0	35.7,79.3
path 31.1,75.3	27.3,63.0	33.4,57.5
path 33.7,49.4	24.0,47.4	19.7,46.7
path 11.4,43.0	11.3,36.6	19.9,32.1
path 25.0,32.8	28.2,31.8	26.5,20.5
path 30.0,18.1	36.3,23.0	40.5,35.4
path 43.1,22.8	50.8,23.5	57.0,29.0
path 65.0,37.6	70.3,42.6	68.8,51.1
path 72.3,58.1	73.8,67.9	69.8,78.1
path 57.9,75.5	49.0,79.0
#include "follow_path_mine"
|tip Go into any caves you find as there is lots of ore.
skill Mining,350
step
#include "hearth_hub"
step
title + Mining w/Smelting (350-475)
label	"sm_350-425"
#include trainer_Mining
.skillmax Mining,450 |tip You must be level 50
.learn Smelt Cobalt##49252
step
'Skipping next part of guide |next "farm" |only if step:Find("+skill"):IsComplete()
'Proceeding to skill up |next |only if default
step
label	"auctioneer_dwarven"
.buy 60 Cobalt Ore##36909
step
label	"skill"
#include "maincity_anvil"
.create Cobalt Bar##49252,Mining,60 total |n
.skill Mining,370
step
label	"farm"
#include "rideto_borean"
step
map Borean Tundra
path   29.6,20.6	24.7,22.2	24.1,26.2
path 28.6,26.3	29.4,21.9	32.5,25.8
path 36.6,29.7	42.7,35.4	43.1,39.1
path 39.5,42.9	34.5,48.2	30.2,54.8
path 33.1,57.3	35.2,65.9	39.4,68.2
path 44.1,66.0	46.3,62.0	50.0,62.4
path 50.8,71.7	53.6,72.0	60.5,59.2
path 67.2,47.4	83.0,44.8	91.8,39.7
path 73.9,20.6	63.9,12.6	59.9,19.0
path 42.5,14.8	46.8,40.4
#include "follow_path_mine"
skill Mining,400
step
'Skipping next part of guide |next "exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to skill up |next |only if default
step
|fly River's Heart
step
label	"farming"
map Sholazar Basin
path	77.9,63.8	78.7,52.4	74.3,48.6
path	65.1,30.5	58.9,27.8	58.9,21.1
path	40.8,20.8	32.9,32.8	35.8,40.3
path	33.8,40.6	33.7,35.4	29.7,38.5
path	23.3,48.4	20.8,56.1	20.4,76.6
path	22.6,78.5	22.5,84.0	34.5,88.9
path	60.3,88.8	59.7,81.3	51.5,82.1
path	48.5,76.8	62.3,74.5	63.6,84.4
path	74.2,56.1	69.4,58.3	64.2,53.5
path	75.1,54.0	63.5,44.4
path	66.7,40.3	63.7,34.6	58.5,33.3
path	59.4,37.3	48.0,33.2	52.7,39.9
path	47.8,43.1	46.8,39.7	39.6,32.8
path	39.9,39.5	33.5,46.6	35.8,49.9
path	40.0,50.9	38.0,54.9	30.5,55.3
path	35.1,59.5	28.7,61.7	35.8,67.6
path	33.8,73.4	34.2,78.4	43.6,76.6
path	39.3,75.5	40.9,70.1	46.0,60.9
path	47.4,66.9	51.5,62.1	55.5,66.5
path	56.5,57.1	58.9,53.9	60.0,60.2
path	57.2,68.1	63.0,67.1	62.8,62.3
path	71.3,63.8
#include "follow_path_mine"
skill Mining,425
step
label	"exit"
#include "hearth_hub"
step
title + Mining w/Smelting (425-525)
label	"sm_425-525"
#include "trainer_Mining"
.skillmax Mining,525 |tip You must be level 75
.learn Smelt Obsidium##84038
step
'Skipping next part of guide |next "sm_425-525_ele" |only if step:Find("+skill"):IsComplete()
'Proceeding to skill up |next |only if default
step
#include "auctioneer_dwarven"
.buy 300 Obsidium Ore##53038
step
label	"skill"
#include "maincity_anvil"
.create Smelt Obsidium##84038,Mining,150 total |n
.skill Mining,475
step
label	"sm_425-525_ele"
#include "trainer_Mining"
.learn Smelt Elementium##74530
step
'Skipping next part of guide |next "sm_425-525_hard" |only if step:Find("+skill"):IsComplete()
'Proceeding to skill up |next |only if default
step
#include "auctioneer_dwarven"
.buy 280 Elementium Ore##52185
step
label	"skill"
#include "maincity_anvil"
.create Smelt Elementium##74530,Mining,140 total |n |tip Save these to Smelt Hardened Elementium later.
.skill Mining,500
step
label	"sm_425-525_hard"
#include "trainer_Mining"
.learn Smelt Hardened Elementium##74537
step
#include "auctioneer_dwarven"
.buy 320 Volatile Earth##52327  |next "sm_500-525_skill"
.' Making Hardened Elementium may be very expensive to level up with. If you would rather farm to level up to 525, then click below.
.' Click here to go farming |confirm |next "sm_500-525_farm"
step
label	"sm_500-525_skill"
#include "maincity_anvil"
.create Smelt Hardened Elementium##74537,Mining,80 total |n
.skill Mining,525
step
'Skipping next part of guide |next "sm_525" |only if step:Find("+farming"):IsComplete()
'Proceeding to skill up |next |only if default
step
label	"sm_500-525_farm"
#include "port_twilight"
step
label	"farming"
map Twilight Highlands
path 71.4,50.3	54.0,37.6	41.3,56.6
path 37.5,58.2	24.5,56.9	30.0,42.8
path 26.9,28.7	32.3,27.1	31.5,40.1
path 38.6,41.2	39.6,30.4	39.0,19.7
path 46.2,20.1	53.8,24.8	61.5,32.4
path 68.5,37.9
#include "follow_path_mine"
skill Mining,525
step
label	"sm_525"
'Congratulations, you are now a level 525 Miner!		
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Professions Guides\\Skinning\\Skinning 1-525 Leveling Guide",[[
description This guide will walk you through leveling your Skinning skill from 1-525.
author support@zygorguides.com
completion skill,Skinning,525
#include "profession_single_start",prof1="Skinning"
step
'Redirecting to Skinning 1-55 |next "skn_1-60" |only if skill("Skinning")<60
'Redirecting to Skinning 55-130 |next "skn_60-130" |only if skill("Skinning")>=60 and skill("Skinning")<150
'Redirecting to Skinning 130-225 |next "skn_150-205" |only if skill("Skinning")>=150 and skill("Skinning")<205
'Redirecting to Skinning 205-275 |next "skn_205-300" |only if skill("Skinning")>=205 and skill("Skinning")<300
'Redirecting to Skinning 290-350 |next "skn_300-350" |only if skill("Skinning")>=300 and skill("Skinning")<350
'Redirecting to Skinning 350-425 |next "skn_350-425" |only if skill("Skinning")>=350 and skill("Skinning")<425
'Redirecting to Skinning 425-525 |next "skn_425-525" |only if skill("Skinning")>=425 and skill("Skinning")<525
'Redirecting to Skinning finale |next "skn_525" |only if default
next 100
step
title + Skinning 1-60
label	"skn_1-60"
#include "trainer_Skinning"
.skillmax Skinning,75
step
#include "vendor_Leatherworking"
.buy 1 Skinning Knife##7005
step
#include "home_TradeDistrict"
step
title + Skinning (1-60)
label	"skn_1-60_farm"
goto 66.4,34.9|n
'Ride the Deep Run Tram to Ironforge |goto Ironforge |noway |c
step
'Go outside to Dun Morogh |goto Dun Morogh |noway |c
step
'Follow the path in the following steps until your Skinning skill is level 60.
.' Kill any beasts you see and skin them.
|confirm
step
map Dun Morogh
path follow loose;loop;ants curved  // this stays until the end of the guide.
path	81.0,50.1	82.7,55.5	83.0,59.3
path	79.3,60.2	79.5,53.6	78.6,48.7
.' Kill any beasts you see and skin them.
skill Skinning,60
step
|fly Ironforge
step
title Skinning 60-130
label	"skn_60-130"
goto Ironforge,39.5,32.6
.talk 6291
.skillmax Skinning,150
step
'Skipping next part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label	"skn_60-130_farm"
|fly Thelsamar
step
'Follow the path in the following steps until your _Skinning_ skill is level 120.
.' Kill any beasts you see and skin them.
|confirm
step
label	"farming"
map Loch Modan
path	50.3,66.3	48.3,61.5	54.8,53.0
path	57.3,50.2	60.4,43.0	62.6,49.3
path	59.4,56.9	53.6,61.7
.' Kill any beasts you see and skin them.
skill Skinning,120
step
label	"farm2"
'Skipping next part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly  Menethil Harbor
step
'Follow the path in the following steps until your Skinning skill is level 150.
.' Kill any beasts you see and skin them.
|confirm
step
label	"farming"
map Wetlands
path	20.2,50.8	22.8,45.6
path	29.4,42.2	30.0,44.6	
path	26.6,47.6	24.7,51.5	23.6,58.7	
.' Kill any beasts you see and skin them.
skill Skinning,150
step
label	"exit"
#include "hearth_hub"
step
title + Skinning 150-205
label	"skn_150-205"
#include "trainer_Skinning"
.skillmax Skinning,225 |tip You will need to be level 10 to train this.
step
'Skipping next part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label	"skn_150-205_farm"
goto 66.7,34.7 |n
'Ride the Deep Run Tram to Ironforge |goto Ironforge |noway |c
step
|fly Menethil Harbor
step
'Follow the path in the following steps until your Skinning skill is level 185.
.' Kill any beasts you see and skin them.
|confirm
step
label	"farming"
map Wetlands
path	66.8,45.4	79.0,47.2	76.8,43.2
path	69.0,36.4	64.3,28.6
.' Kill any beasts you see and skin them.
skill Skinning,185
step
'Skipping next part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label	"farm2"
|fly Aerie Peak
step
'Follow the path in the following steps until your Skinning skill is level 205.
.' Kill any beasts you see and skin them.
|confirm
step
label	"farming"
map The Hinterlands
path	81.2,52.9	80.4,56.9	79.2,61.2
path	78.0,66.0	78.5,70.1	76.6,72.7
path	75.5,71.9	74.6,68.5	75.3,65.2
path	77.0,62.0	78.4,58.3
.' Kill any beasts you see and skin them.
skill Skinning,205
step
label	"exit"
#include "hearth_hub"
step
title + Skinning 205-300
label	"skn_205-300"
#include "trainer_Skinning"
.skillmax Skinning,300 |tip You need to be level 25 to learn this skill.
step
label	"farm"
#include "rideto_ratchet"
step
'Skipping 2nd part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Gadgetzan
step
'Go north to Thousand Needles |goto Thousand Needles |noway |c
step
'Follow the path in the following steps until your Skinning skill is level 265.
.' Kill any beasts you see and skin them.
|confirm
step
label	"farming"
map Thousand Needles
path 73.0,48.0	69.8,49.1	67.2,46.2
path 64.7,43.9	61.1,43.4	56.9,43.4
path 57.2,56.1	54.3,59.9	61.1,63.8	
path 65.0,68.5	66.0,74.1	63.9,79.3	
path 64.2,85.3	66.5,92.7	70.1,94.5
.' Kill any beasts you see and skin them.
skill Skinning,265
step
'Skipping 2nd part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
'Go south to Tanaris |goto Tanaris |noway |c
step
label	"farm2"
|fly Marshal's Stand
step
label	"farming"
map Un'Goro Crater
path 73.0,48.0	69.8,49.1	67.2,46.2
path 64.7,43.9	63.0,52.9	61.1,63.8
path 65.0,68.5	66.0,74.1	63.9,79.3
path 68.6,73.3	71.0,62.6	72.4,52.1
.' Kill any beasts you see and skin them.
skill Skinning,300
step
label	"exit"
#include "hearth_hub"
step
title + Skinning 300-350
label	"skn_300-350"
#include "trainer_Skinning"
.skillmax Skinning,375 |tip You must be at least level 55 to learn this skill.
step
#include "darkportal"
step
|fly Honor Hold
step
label	"skn_300-350_farm"
'Skipping next part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label	"farming"
map Hellfire Peninsula
path 62.0,56.6	60.6,56.8	58.9,56.1
path 57.2,56.0	56.2,54.3	58.2,54.2
path 59.9,54.6	66.6,61.4	69.1,61.6
path 70.3,63.7	70.6,66.4	69.3,66.5
path 68.0,65.2	66.5,62.5	65.3,61.0
path 64.0,60.1	62.4,57.4
.' Kill any beasts you see and skin them.
skill Skinning,305
step
label	"farm2"
'Skipping next part of farming |next "+farm3" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label	"farming"
map Hellfire Peninsula
path   40.7,85.6	37.6,86.1	34.9,88.8
path 32.7,91.5	33.6,92.4	35.9,91.2
path 37.8,89.9	39.2,88.5	40.7,86.6
.' Kill any beasts you see and skin them.
skill Skinning,330
step
label	"farm3"
'Skipping next part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
|fly Telaar
step
label	"farming"
map Nagrand
path 56.2,21.2	55.2,23.2	53.7,24.3
path 52.7,26.0	52.5,28.4	52.8,31.3
path 50.4,37.1	51.7,39.9	53.1,42.2
path 51.3,45.3	48.8,45.1	48.0,42.0
path 47.9,38.5	48.0,32.4	48.0,29.1
path 50.8,27.4	51.8,23.8	54.8,21.5
path 56.4,20.0i
.' Kill any beasts you see and skin them.
skill Skinning,350
step
label	"exit"
#include "hearth_hub"
step
title + Skinning 350-325
label	"skn_350-425"
#include "trainer_Skinning"
.skillmax Skinning,450 |tip You must be at least level 55 to learn this.
step
label	"skn_350-425_farm"
#include "rideto_borean"
step
'Skipping next part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label	"farming"
map Borean Tundra
path 51.5,68.8	49.8,67.7	46.9,70.7
path 44.2,71.0	41.1,70.7	38.5,71.8
path 41.9,74.4	45.3,74.9	48.1,74.4
path 49.6,72.3	51.6,69.1
.' Kill any rhinos you see and skin them.
skill Skinning,395
step
'Skipping next part of farming |next "+exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label	"farm2"
|fly River's Heart
step
label	"farming"
map Sholazar Basin
path 28.8,55.9	29.7,51.6	31.1,46.4
path 32.2,40.4	28.6,42.9	25.6,47.9
path 23.5,52.3	22.6,58.7	22.6,65.3
path 22.3,70.2	26.4,72.7	28.9,69.1
path 29.6,64.4
.' Kill any beasts you see and skin them.
skill Skinning,450
step
label	"exit"
#include "hearth_hub"
step
title + Skinning 425-525
label	"skn_425-525"
#include "trainer_Skinning"
.skillmax Skinning,525 |tip You must be level 75 to learn this.
step
#include "port_vashjir"
step
map Kelp'thar Forest
path 56.0,36.5	57.8,39.4	59.1,39.7
path 59.4,36.9	57.6,34.9
.' Kill any crabs and serpents in the area.
skill Skinning,525
step
label	"skn_525"
'Congratulations, you are now a level 525 Skinner!	
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Professions Guides\\Tailoring\\Tailoring 1-525 Leveling Guide",[[
description This guide will walk you through leveling your Tailoring skill from 1-525.
author support@zygorguides.com
completion skill,Tailoring,525
#include "profession_single_start",prof1="Tailoring"
step
'Redirecting to Tailoring 1-75 |next "tl_1-75" |only if skill("Tailoring")<75
'Redirecting to Tailoring 75-130 |next "tl_75-125" |only if skill("Tailoring")>=75 and skill("Tailoring")<125
'Redirecting to Tailoring 130-225 |next "tl_125-200" |only if skill("Tailoring")>=125 and skill("Tailoring")<200
'Redirecting to Tailoring 200-250 |next "tl_200-250" |only if skill("Tailoring")>=200 and skill("Tailoring")<250
'Redirecting to Tailoring 250-300 |next "tl_250-300" |only if skill("Tailoring")>=250 and skill("Tailoring")<300
'Redirecting to Tailoring 300-350 |next "tl_300-350" |only if skill("Tailoring")>=300 and skill("Tailoring")<350
'Redirecting to Tailoring 350-425 |next "tl_350-425" |only if skill("Tailoring")>=350 and skill("Tailoring")<425
'Redirecting to Tailoring 425-525 |next "tl_425-525" |only if skill("Tailoring")>=425 and skill("Tailoring")<525
'Redirecting to Tailoring finale |next "tl_525" |only if default
step
title + Tailoring 1-75
label	"tl_1-75"
#include "home_TradeDistrict"
step
#include "trainer_Tailoring"
.skillmax Tailoring,75 |tip You must be at least level 5. 
step
#include "auctioneer"
.buy 276 Linen Cloth##2589
#include go_farm_level,level="8",goto="tl_1-75_farm"
|next "tl_1-75_skill"
// Westfall: 276 Linen Cloth
step
label	"tl_1-75_farm"
|fly Raven Hill
step
goto Duskwood,23.7,36.6
.from Rotted One##948+,Flesh Eater##3+,Bone Chewer##210+
.collect 276 Linen Cloth##2589
.'You can find more mobs in the crypt at [25.8,34.6]
// CREATE:  138 Bolt of Linen Cloth, 5 Reinforced Linen Cape
step
#include "hearth_hub"
step
label	"tl_1-75_skill"
.create 138 Bolt of Linen Cloth##2963,Tailoring,138 total
.skill Tailoring,50
step
#include "trainer_Tailoring"
.learn Heavy Linen Gloves##3840
step
#include "vendor_Tailoring"
.buy 35 Coarse Thread##2320
step
.create 20 Heavy Linen Gloves##3840,Tailoring,70
step
#include "trainer_Tailoring"
.learn Reinforced Linen Cape##2397
step
.create 5 Reinforced Linen Cape##2397,Tailoring,75
// TRAIN: Journeyman Tailoring
step
title + Tailoring 75-125
label	"tl_75-125"
#include "trainer_Tailoring"
.skillmax Tailoring,150 |tip You must be level 10
.learn Bolt of Woolen Cloth##2964
step
#include "auctioneer"
.buy 165 Wool Cloth##2592
#include go_farm_level,level="20",goto="tl_75-125_farm"
|next "tl_75-125_skill"
// The Stockade: 135 Wool Cloth
step
label "tl_75-125_farm"
|fly Raven Hill
step
goto Duskwood,23.7,36.6
.from Rotted One##948+,Flesh Eater##3+,Bone Chewer##210+
.collect 165 Wool Cloth##2592
.'You can find more mobs in the crypt at [25.8,34.6]
step
#include "hearth_hub"
// CREATE:  45 Bolt of Woolen Cloth, 15 Simple Kilts, 15 Double-stitched Woolen Shoulders
step
label	"tl_75-125_skill"
.create 45 Bolt of Woolen Cloth##2964,Tailoring,45 total
.skill Tailoring,100
step
#include "trainer_Tailoring"
.learn Simple Kilt##12046
step
#include "vendor_Tailoring"
.buy 45 Fine Thread##2321
step
.create 40 Simple Kilt##12046,Tailoring,110
step
#include "trainer_Tailoring"
.learn Double-stitched Woolen Shoulders##3848
step
.create 15 Double-stitched Woolen Shoulders##3848,Tailoring,125
// TRAIN: Expert Tailoring
step
title + Tailoring 125-200
label	"tl_125-200"
#include "trainer_Tailoring"
.skillmax Tailoring,225 |tip You must be at least level 20.
.learn Bolt of Silk Cloth##3839
step
#include "auctioneer"
.buy 808 Silk Cloth##4306
.buy 400 Mageweave Cloth##4338
#include go_farm_level,level="30",goto="tl_125-200_farm"
|next "tl_125-200_skill"
// Dustwallow Marsh: 808 Silk Cloth, 400 Mageweave Cloth
step
label	"tl_125-200_farm"
#include "rideto_theramoreisle"
step
'Skipping next part of farming |next "+farm2" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
label	"farming"
goto Dustwallow Marsh,41.9,12.4 
.from Grimtotem Breaker##23592+, Grimtotem Spirit-Shifter##23593+, Grimtotem Elder##23714+ 
.collect 808 Silk Cloth##4306 |tip You can also farm these by killing humanoid mobs in the Scarlet Monastery instance.
step
'Skipping next part of farming |next "exit" |only if step:Find("+farming"):IsComplete()
'Proceeding to farm |next |only if default
step
lable	"farm2"
|fly Talonbranch Glade
step
label	"farming"
goto Felwood,63.4,20.7
.from Irontree Chopper##48453+
.collect 424 Mageweave Cloth##4338
step
label	"exit"
#include "hearth_hub"
// CREATE: 202 Bolts of Silk Cloth, 15 Azure Silk Hood, 10 Silk Headband, 10 Formal White Shirt
step
label	"tl_125-200_skill"
.create 202 Bolt of Silk Cloth##3839,Tailoring,202 total
.skill Tailoring,145
step
#include "trainer_Tailoring"
.learn Azure Silk Hood##8760
step
#include "vendor_Tailoring"
.buy 36 Blue Dye##6260
.buy 45 Fine Thread##2321
.buy 10 Bleach##2324
step
.create 18 Azure Silk Hood##8760,Tailoring,160
step
#include "trainer_Tailoring"
.learn Silk Headband##8762
step
'Use your Tailoring skill to create Silk Headband
.create 10 Silk Headband##8762,Tailoring,170
step
#include "trainer_Tailoring"
.learn Formal White Shirt##3871
step
.create 5 Formal White Shirt##3871,Tailoring,175
step
#include "trainer_Tailoring"
.learn Bolt of Mageweave##3865
// CREATE: 100 Bolts of Mageweave Cloth, 15 Crimson Silk Vest
step
.create 105 Bolt of Mageweave##3865,Tailoring,105 total
.skill Tailoring,185
step
#include "trainer_Tailoring"
.learn Crimson Silk Vest##8791
step
#include "vendor_Tailoring"
.buy 60 Red Dye##2604
.buy 30 Fine Thread##2321
.buy 45 Silken Thread##4291
.buy 70 Heavy Silken Thread##8343
step
.create 15 Crimson Silk Vest##8791,Tailoring,200
// TRAIN: Artisan Tailoring
step
title + Tailoring 200-250
label	"tl_200-250"
#include "trainer_Tailoring"
.skillmax Tailoring,300 |tip You must be at least level 35.
.learn Crimson Silk Pantaloons##8799
// CREATE: 15 Crimson Silk Pantaloons, 5 Black Mageweave Leggings, 10 Black Mageweave Gloves, 25 Black Mageweave Headband
step
.create 15 Crimson Silk Pantaloons##8799,Tailoring,215
step
#include "trainer_Tailoring"
.learn Black Mageweave Leggings##12049
step
.create 5 Black Mageweave Leggings##12049,Tailoring,220
step
#include "trainer_Tailoring"
.learn Black Mageweave Gloves##12053
step
.create 10 Black Mageweave Gloves##12053,Tailoring,230
step
#include "trainer_Tailoring"
.learn Black Mageweave Headband##12072
step
.create 23 Black Mageweave Headband##12072,Tailoring,250
step
label	"tl_250-300"
#include "auctioneer"
.buy 800 Runecloth##14047
#include go_farm_level,level="30",goto="tl_250-300_farm"
|next "tl_250-300_skill"
// Silithus:  780 Runecloth
step
label	"tl_250-300_farm"
#include "rideto_ruttheranvillage"
step
|fly Cenarion Hold
step
goto Silithus,45.8,38.2
.from Twilight Keeper Havunth##11804+, Twilight Geolord##11881+, Twilight Avenger##11880+, Twilight Stonecaller##11882+
.collect 780 Runecloth##14047
.' You can find more:
.' Around [35.7,32.5]
.' Around [29.5,73.4]
.' Around [66.1,20.3]
step
#include "hearth_hub"
// CREATE: 195 Bolt of Runecloth, 20 Runecloth Belt, 20 Runecloth Gloves, 5 Runecloth Headband
step
label	"tl_250-300_skill"
#include "trainer_Tailoring"
.learn Bolt of Runecloth##18401
step
.create 195 Bolt of Runecloth##18401,Tailoring,195 total
.skill Tailoring,260
step
#include "trainer_Tailoring"
.learn Runecloth Belt##18402
step
goto 53.1,81.8
.talk 1347
.buy 75 Rune Thread##14341
step
.create 18 Runecloth Belt##18402,Tailoring,275
step
#include "trainer_Tailoring"
.learn Runecloth Gloves##18417
step
.create 23 Runecloth Gloves##18417,Tailoring,295
step
#include "trainer_Tailoring"
.learn Runecloth Headband##18444
step
.create 5 Runecloth Headband##18444,Tailoring,300
// TRAIN: Master Tailoring
step
title + Tailoring 300-350
label	"tl_300-350"
#include "trainer_Tailoring"
.skillmax Tailoring,375 |tip You must be at least level 50.
.learn Bolt of Netherweave##26745
// Netherstorm:  750 Netherweave Cloth
 	step
label "tl_300-350_farm"
#include "darkportal"
step
|fly Shattrath
step
goto Shattrath City,66.3,69.3
.talk 19213
.buy Pattern: Netherweave Tunic##21897
|next |only if rep ('The Aldor') >= Neutral
|next "auction2" |only if rep ('The Scryers') >= Friendly
step
goto Shattrath City,51.0,26.5
.talk 50143
.buy 750 Netherweave Cloth##21877
#include go_farm_level,level="65",goto="tl_300-350_farm"
|next "tl_300-350_skill"
step
label	"auction2"
goto Shattrath City,57.0,63.2
.talk 50139
.buy 750 Netherweave Cloth##21877
#include go_farm_level,level="65",goto="tl_300-350_farm"
|next "tl_300-350_skill"
step
label	"tl_300-350_farm"
|fly Area 52
step
goto Netherstorm,26.3,68.1
.from Sunfury Magister##18855+, Sunfury Astromancer##19643+, Sunfury Captain##19453+, Sunfury Bloodwarder##18853+, Sunfury Geologist##19779+, Sunfury Warp-Master##18857+
.collect 750 Netherweave Cloth##21877
step
#include "hearth_hub"
// CREATE:20 Knothide Leather, 10 Netherweave Boots, 5 Netherweave Tunic,
step
label	"tl_300-350_skill"
goto Shattrath City,57.0,48.0 |n
.' Click on the Portal to Stormwind City |goto Stormwind City |noway |c
step
#include "auctioneer"
.buy 20 Knothide Leather##21887
step
.create Bolt of Netherweave##26745,Tailoring,150 total
.skill Tailoring,325
step
#include "trainer_Tailoring"
.learn Netherweave Pants##26771
step
#include "vendor_Tailoring"
.buy 30 Rune Thread##14341
step
.create 10 Netherweave Pants##26771,Tailoring,335
step
#include "trainer_Tailoring"
.learn Netherweave Boots##26772
step
.create 10 Netherweave Boots##26772,Tailoring,345
step
'Click the Netherweave Tunic Pattern in your bags
.learn Netherweave Tunic##26774 |use Pattern: Netherweave Tunic##218974
step
.create 5 Netherweave Tunic##26774,Tailoring,350
// TRAIN: Grand Master Tailoring
step
title + Tailoring (350-425)
label	"tl_350-425"
#include "trainer_Tailoring"
.skillmax Tailoring,450 |tip You must be at least level 65.
.learn Bolt of Frostweave##55899
step
#include "auctioneer"
.buy 1700 Frostweave Cloth##33470
#include go_farm_level,level="76",goto="tl_350-425_farm"
|next "tl_350-425_skill"
 // Icecrown:  1700 Frostweave Cloth
step
label	"tl_350-425_farm"
#include "rideto_borean"
step
|fly Argent Tournament Grounds
step
goto Icecrown,61.8,20.8
.from Dark Ritualist##34734+, Dark Zealot##34728+
.collect 1700 Frostweave Cloth##33470
.create Bolt of Frostweave##55899,Tailoring, 340 total |n
.skill Tailoring,375
step
#include "hearth_hub"
// CREATE: 340 Bolt of Frostweave, 5 Frostwoven Belt, 5 Frostwoven Boots, 15 Frostwoven Cowl
step
label	"tl_350-425_skill"
.create Bolt of Frostweave##55899,Tailoring,340 total |n
.skill Tailoring,375
step
#include "trainer_Tailoring"
.learn Frostwoven Belt##55908
step
goto 53.1,81.8
.talk 1347
.buy 50 Eternium Thread##38426
step
.create 5 Frostwoven Belt##55908,Tailoring,380
step
#include "trainer_Tailoring"
.learn Frostwoven Boots##55906
step
.create 5 Frostwoven Boots##55906,Tailoring,385
step
#include "trainer_Tailoring"
.learn Frostwoven Cowl##55907
step
.create 5 Frostwoven Cowl##55907,Tailoring,395
step
#include "trainer_Tailoring"
.learn Duskweave Belt##55914
step
.create 13 Duskweave Belt##55914,Tailoring,405
step
#include "trainer_Tailoring"
.learn Duskweave Wristwraps##55920
step
.create 5 Duskweave Wristwraps##55920,Tailoring,410
step
#include "trainer_Tailoring"
.learn Duskweave Gloves##55922
step
.create 5 Duskweave Gloves##55922,Tailoring,415
step
#include "trainer_Tailoring"
.learn Duskweave Boots##55924
step
.create 13 Duskweave Boots##55924,Tailoring,425
// TRAIN: Illustrious Grand Master Tailoring
step
title + Tailoring (425-525)
label	"tl_425-525"
#include "trainer_Tailoring"
.skillmax Tailoring,525 |tip You must be at least level 75.
.learn Bolt of Embersilk Cloth##74964
step
#include "auctioneer"
.buy 1825 Embersilk Cloth##53010
#include go_farm_level,level="77",goto="tl_425-525_farm"
|next "tl_425-525_skill"
// Mount Hyjal:  1825 Embersilk Cloth
step
label	"tl_425-525_farm"
#include "port_hyjal"
step
goto Mount Hyjal,55.8,68.0
.from Twilight Augur##40713+, Twilight Retainer##40767+
.collect 1825 Embersilk Cloth##53010
.create Bolt of Embersilk Cloth##74964,Tailoring,365 total |n
.skill Tailoring,450
step
#include hearth_hub
// CREATE: 365 Bolt of Embersilk Cloth, 5 Deathsilk Bracers, 5 Deathsilk Boots, 5 Deathsilk Leggings, 5 Deathsilk Cowl, 5 Spiritmend Belt, 5 Spiritmend Boots, 5 Spiritmend Leggings, 15 Spiritmend Robes, 5 Fireweave Bracers, 5 Emberfire Shoulders, 3 Emberfire Belt, 1 Emberfire Gloves, Emberfire Boots
step
label	"tl_425-525_skill"
.create Bolt of Embersilk Cloth##74964,Tailoring,365 total
.skill Tailoring,450
step
#include "auctioneer"
.buy 70 Volatile Fire##52325
.buy 15 Volatile Air##52328
.buy 55 Volatile Water##52326
step
#include "vendor_Tailoring"
.buy 100 Eternium Thread##38426
step
#include "trainer_Tailoring"
.learn Deathsilk Bracers##75249
step
.create 5 Deathsilk Bracers##75249,Tailoring,455
step
#include "trainer_Tailoring"
.learn Deathsilk Boots##75252
step
.create 5 Deathsilk Boots##75252,Tailoring,460
step
#include "trainer_Tailoring"
.learn Deathsilk Leggings##75254
step
.create 5 Deathsilk Leggings##75254,Tailoring,465
step
#include "trainer_Tailoring"
.learn Deathsilk Cowl##75256
step
.create 5 Deathsilk Cowl##75256,Tailoring,470
step
#include "trainer_Tailoring"
.learn Spiritmend Belt##75258
step
.create 5 Spiritmend Belt##75258,Tailoring,475
step
#include "trainer_Tailoring"
.learn Spiritmend Boots##75261
step
.create 5 Spiritmend Boots##75261,Tailoring,480
step
#include "trainer_Tailoring"
.learn Spiritmend Leggings##75263
step
.create 5 Spiritmend Leggings##75263,Tailoring,485
step
#include "trainer_Tailoring"
.learn Spiritmend Robe##75267
step
.create 15 Spiritmend Robe##75267,Tailoring,500
step
#include "trainer_Tailoring"
.learn Fireweave Bracers##75290
step
.create 5 Fireweave Bracers##75290,Tailoring,505
step
#include "trainer_Tailoring"
.learn Bloodthirsty Embersilk Shoulders##75291
step
.create Bloodthirsty Embersilk Shoulders##75291,Tailoring,510 // Fixed to Bloodthirsty
step
#include "trainer_Tailoring"
.learn Bloodthirsty Embersilk Belt##75293
step
.create Bloodthirsty Embersilk Belt##75293,Tailoring,3 total // Fixed to Bloodthirsty
skill Tailoring,516
step
#include "trainer_Tailoring"
.learn Bloodthirsty Embersilk Gloves##75295
step
.create Bloodthirsty Embersilk Gloves##75295,Tailoring,2 total // Fixed to Bloodthirsty
skill Tailoring,520
step
#include "trainer_Tailoring"
.learn Bloodthirsty Embersilk Boots##75297
step
.create Bloodthirsty Embersilk Boots##75297,Tailoring,525 // Fixed to Bloodthirsty
step
label "tl_525"
'Congratulations, you are now a level 525 Tailor!
]])
