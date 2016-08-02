local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("DailiesACATA") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Stormwind City\\Cooking Dailies",[[
description Walks you through completing the Cooking daily quests in Stormwind City.
description
description You must be at least level 10 to complete the quests in this guide.
author support@zygorguides.com
daily
#include "A_Stormwind_Cooking_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Stormwind City\\Fishing Dailies",[[
description Walks you through completing the Fishing daily quests in Stormwind City.
description
description You must be at least level 10 to complete the quests in this guide.
author support@zygorguides.com
daily
step
goto Stormwind City,55.0,69.7
.talk 5494
..' You will only be able to complete 1 of the following quests per day
..accept 26488 |daily |or
..accept 26420 |daily |or
..accept 26414 |daily |or
..accept 26442 |daily |or
..accept 26536 |daily |or
step
goto 75.4,84.0
.' Fish in the moat in this spot
.collect Royal Monkfish##58856 |n
.' Click the Royal Monkfish in your bags |use Royal Monkfish##58856
.get Precious Locket |q 26488/1 |tip You may not always get the item inside the first Royal Monkfish, so you'll need to fish more of them.
step
goto 58.6,11.5
.' Click a Worm Mound |tip They look like tiny gray spots on the ground, almost invisible.  Look for sparkles above the ground to find them easier.
.collect 1 Overgrown Earthworm##58788 |q 26420
.' Use your Overgrown Earthworm |use Overgrown Earthworm##58788
.' Fish in the lake in this spot
.get Crystal Bass |q 26420/1
step
goto 48.6,39.1
.' Fish in the lake in this spot
.get 8 Hardened Walleye |q 26414/1
step
goto 24.1,49.7
.' Click Stormwind Lobster Traps |tip They look like gray metal cages on the ground underwater around this area under the Stormwind Harbor docks.
.get 6 Rock Lobster |q 26442/1
step
'Go southeast outside to Elwynn Forest |goto Elwynn Forest |noway |c |q 26536
step
goto Elwynn Forest,28.2,59.3 |n
.' Follow the path up |goto Elwynn Forest,28.2,59.3,0.5 |noway |c |q 26536
step
goto 25.7,59.3
.' Fish in the lake in this spot
.get 4 Violet Perch |q 26536/1
step
'Go northwest into Stormwind City |goto Stormwind City |noway |c |q 26536
step
goto Stormwind City,55.0,69.7
.talk 5494
..' You will only be able to complete 1 of the following quests per day
..turnin 26488
..turnin 26420
..turnin 26414
..turnin 26442
..turnin 26536
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Stormwind City\\Jewelcrafting Dailies",[[
description Walks you through completing the Jewelcrafting daily quests in Stormwind City.
author support@zygorguides.com
daily
step
goto Stormwind City,63.8,61.5
.talk 50480
..' You will only be able to complete 1 of the following quests per day
..accept 25154 |daily |or
..accept 25156 |daily |or |tip This quest requires you to be at least level 80.
..accept 25105 |daily |or
..accept 25155 |daily |or
..accept 25157 |daily |or
step
'Buy 3 Nightstones from the Stormwind City Auction House:
.collect 3 Nightstone##52180 |n |tip You can also try to mine these from any vein type in level 80-85 zones.
.' Use your Jewelcrafting skill to cut the Nightstones
.' Cut 3 Timeless Nightstones |q 25154/1
.get 3 Timeless Nightstone |q 25154/2
.' If you are unable to cut Timeless Nightstones, you can learn from Theresa Denman at [Stormwind City 63.5,61.8]
step
'Buy 3 Zephyrite from the Stormwind City Auction House:
.collect 3 Zephyrite##52178 |n |tip You can also try to mine these from any vein type in level 80-85 zones.
.' Use your Jewelcrafting skill to cut the Zephyrite
.' Cut 3 Solid Zephyrite |q 25105/1
.get 3 Solid Zephyrite |q 25105/2
.' If you are unable to cut Solid Zephyrite, you can learn from Theresa Denman at [Stormwind City 63.5,61.8]
step
'Buy 3 Jasper from the Stormwind City Auction House:
.collect 3 Jasper##52182 |n |tip You can also try to mine these from any vein type in level 80-85 zones.
.' Use your Jewelcrafting skill to cut the Jasper
.' Cut 3 Jagged Jasper |q 25155/1
.get 3 Jagged Jasper |q 25155/2
.' If you are unable to cut Jagged Jasper, you can learn from Theresa Denman at [Stormwind City 63.5,61.8]
step
'Anywhere in Stormwind City:
.' Use your Stardust No. 2 on any Humanoid |use Stardust No. 2##52507 |tip The Humanoids can be NPCs or players, it doesn't matter.
.' Perform 10 Tests of Stardust No. 2 |q 25157/1
step
goto 76.1,18.7 |n
.' Click the Portal to Hyjal |tip It looks like a purple and green swirling portal next to huge tree roots.
.' Teleport to Hyjal |goto Mount Hyjal |noway |c |q 25156
step
goto Mount Hyjal,64.7,22.5
.from Scalding Rock Elemental##40229+
.get 10 Elemental Goo |q 25156/1 |tip This quest requires you to be at least level 80.
step
goto 62.1,21.6
.talk 41861
.' Fly to Rut'theran Village, Teldrassil |goto Teldrassil,55.4,88.5,0.5 |noway |c
step
goto Teldrassil,55.0,93.4 |n
.' Ride the boat to Stormwind City |goto Stormwind City |noway |c
step
goto Stormwind City,63.8,61.5
.talk 50480
..' You will only be able to complete 1 of the following quests per day
..turnin 25154
..turnin 25156
..turnin 25105
..turnin 25155
..turnin 25157
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Borean Tundra\\Borean Tundra Pre-Quests",[[
description This guide section contains the pre-quests to unlock the daily quests in the Coldarra region of Borean Tundra.
description The Kaskala region of Borean Tundra does not have any pre-quests to unlock the daily quest that is available there.
author support@zygorguides.com
step
goto Borean Tundra,33.3,34.5
.talk 26117
..accept 11918
step
goto 35,28
.kill 10 Coldarra Spellweavers |q 11918/1
step
goto 33.3,34.5
.talk 26117
..turnin 11918
..accept 11936
step
'As you do the following steps:
.kill Coldarra Wyrmkin|n
.collect 5 Frozen Axe##35586|q 11936
.' Skip to the next step in the guide
step
goto 27.8,24.2
.' Click Blue Dragon Eggs|tip They look like big eggs with blue crystals on them on the ground.
.' Destroy 5 Dragon Eggs|q 11936/1
step
goto 33.3,34.5
.talk 26117
..turnin 11936
..accept 11919
step
goto 24.6,27.1|n
.' Use your Raelorasz's Spear on a Nexus Drake Hatchling|use Raelorasz's Spear##35506|tip They are flying above you in the sky.
.' Do not kill it, let it hit you until it becomes friendly|havebuff INV_Misc_Head_Dragon_Blue |q 11919
step
goto 33.3,34.5
.' Stand here until it says Captured Nexus Drake|q 11940/1
.talk 26117
..turnin 11919
step
goto 33.5,34.4
.talk 26110
..accept 13412 |tip You must be at least level 80 to be able to accept this quest.
step
goto 29.5,24.8
.talk 32548
..turnin 13412
..accept 13413
step
.' Tell Corastrasza you have the courage to face Malygos drakes
.' She will give you a Wyrmrest Skytalon to ride
.' Before engaging enemies, stack Revivify on yourself 5 times, then target yourself and cast Life Burst
.' Target a Scalesworn Elite flying above Corastrasza.
.' To cause damage, stack Flamestrike five times, then use Engulf in Flames. To keep your health up, stack Revivify 5 times, then target yourself and use Life Burst. Keep Revivify up while Life Burst is in use. Be ready to cast Flame Shield if they cast Arcane Surge.
.kill 5 Scalesworn Elites|q 13413/1
step
goto 29.5,24.8
.talk 32548
She's standing on a platform floating in the sky
..turnin 13413
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Borean Tundra\\Coldarra Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the Coldarra region of Borean Tundra.
daily
step
goto Borean Tundra,33.3,34.5
.talk 26117
..accept 11940|daily
step
goto 24.6,27.1|n
.' Use your Raelorasz's Spear on a Nexus Drake Hatchling|use Raelorasz's Spear##35506|tip They are flying above you in the sky.
.' Do not kill it, let it hit you until it becomes friendly|havebuff INV_Misc_Head_Dragon_Blue |q 11919
step
goto 33.3,34.5
.' Stand here until it says Captured Nexus Drake|q 11940/1
.talk 26117
..turnin 11940
step
goto 29.5,24.8
.talk 32548
..accept 13414|daily
step
.' Tell Corastrasza you are ready
.' She will give you a Wyrmrest Skytalon to ride
.' Before engaging enemies, stack Revivify on yourself 5 times, then target yourself and cast Life Burst
.' Target a Scalesworn Elite flying above Corastrasza.
.' To cause damage, stack Flamestrike five times, then use Engulf in Flames. To keep your health up, stack Revivify 5 times, then target yourself and use Life Burst. Keep Revivify up while Life Burst is in use. Be ready to cast Flame Shield if they cast Arcane Surge.
.kill 5 Scalesworn Elites|q 13414/1
step
goto 29.5,24.8
.talk 32548
..turnin 13414
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Borean Tundra\\Kaskala Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the Kaskala region of Borean Tundra.
description There are no pre-quests needed to unlock the daily quest offered in this guide section.
daily
step
goto Borean Tundra,63.9,45.7
.talk 26213
..accept 11945|daily
step
goto 66.7,48.6
.' Click baskets on the shore
.get 8 Kaskala Supplies|q 11945/1
step
goto 63.9,45.7
.talk 26213
..turnin 11945
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Dalaran\\Cooking Dailies Pre-Quests",[[
author support@zygorguides.com
description This guide section contains the pre-quest to unlock the Cooking daily quests in Dalaran.
description This quest is only available to you if you have 350+ Cooking skill.
step
goto Howling Fjord,58.2,62.1
.talk 26905
..accept 13087|tip This quest is only available to you if you have 350+ Cooking skill.
step
goto 79.0,73.1
.from Lion Seal Whelp##29559+, Lion Seal##23887+, Bull Lion Seal##23886+
.get 4 Chilled Meat |q 13087/1
step
goto 58.2,62.1
.talk 26905
..turnin 13087
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Dalaran\\Jewelcrafting Dailies Pre-Quests",[[
author support@zygorguides.com
description This guide section contains the pre-quest to unlock the Jewelcrafting daily quests in Dalaran.
description This quest is only available to you if you have 375+ Jewelcrafting skill.
step
goto Dalaran,40.7,35.4
.talk 28701
..accept 13041|tip This quest is only available once you have 375+ Jewelcrafting skill.
step
'Go to the Auction House in a major city:
.' Buy 1 Chalcedony|q 13041/1|tip If you don't want to, or can't, buy the Chalcedony, you can also try to get one by mining or prospecting.
step
goto Dalaran,40.7,35.4
.talk 28701
..turnin 13041
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Dalaran\\Cooking Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the Cooking daily quests in Dalaran.
daily
step
goto Dalaran,40.8,65.4
.talk 28705
.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day, and they all require you have 350+ Cooking skill:
..accept 13103 |daily |or
..accept 13101 |daily |or
..accept 13100 |daily |or
..accept 13107 |daily |or
..accept 13102 |daily |or
step
goto 54.7,31.5
.' Click the Aged Dalaran Limburger|tip They look like piles and pieces of yellow cheese on the tables inside this building.
.collect 1 Aged Dalaran Limburger##43137 |q 13103
.' Click the Half Full Glasses of Wine|tip They look like small blue-ish wine glasses sitting on tables, and on the ground, inside this building.  They spawn in random locations.
.collect 6 Half Full Dalaran Wine Glass##43138 |q 13103
.' You can find more Half Full Glasses of Wine inside the building at [49.4,39.3]
step
'Use your Empty Cheese Serving Platter in your bags|use Empty Cheese Serving Platter##43139
.get 1 Wine and Cheese Platter |q 13103/1
step
goto 55.0,30.8
.' Click a Full Jug of Wine|tip They look like small blue-ish green jugs sitting on the ground inside this building.  They spawn in random locations.
.get 1 Jug of Wine |q 13101/2
step
goto Dragonblight,30.0,49.8
.from Rabid Grizzly##26643+, Blighted Elk##26616+
.collect 4 Chilled Meat##43013 |q 13101
step
'Use your Cooking ability to cook 4 Northern Stew|tip You will need a cooking fire to do this.
.get 4 Northern Stew |q 13101/1
step
'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13100
step
goto Dalaran/2 51.6,41.6
.click Infused Mushroom##359+
.collect 4 Infused Mushroom##43100 |q 13100
step
'Leave the Dalaran sewers|goto Dalaran,60.2,47.7,0.3|c|q 13100
step
goto Dragonblight,30.0,49.8
.from Rabid Grizzly##26643+, Blighted Elk##26616+
.collect 2 Chilled Meat##43013 |q 13100
step
'Use your Meatloaf Pan in your bags|use Meatloaf Pan##43101|tip You will need a cooking fire to do this.
.get 1 Infused Mushroom Meatloaf |q 13100/1
step
goto Dalaran,67.7,40.0
.click Wild Mustard##192827
|tip They look like small, and kind of hard to see, bushy yellow flowers on the ground around this area.  They spawn randomly in grassy areas.
.collect 4 Wild Mustard##43143 |q 13107
.' You can find more Wild Mustard flowers:
..' at [50.3,48.3]
..' at [37.2,43.9]
step
goto Borean Tundra,46.7,43.6
.from Wooly Rhino Calf##25488+, Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+
.collect 4 Rhino Meat##43012 |q 13107
step
.create 4 Rhino Dogs##45553,Cooking,4 total |n
'Use your Cooking ability to cook 4 Rhino Dogs|tip You will need a cooking fire to do this.
.collect 4 Rhino Dogs##34752 |q 13107
step
'Use your Empty Picnic Basket in your bags|use Empty Picnic Basket##43142
.get 1 Mustard Dog Basket! |q 13107/1
step
goto Crystalsong Forest,26.9,45.5
.' Click the Crystalsong Carrots|tip they look like carrots sticking out of the ground, at the base of trees around this area underneath Dalaran.  They spawn in random locations around this area.
.collect 4 Crystalsong Carrot##43148 |q 13102
step
goto Dragonblight,30.0,49.8
.from Rabid Grizzly##26643+, Blighted Elk##26616+
.collect 4 Chilled Meat##43013 |q 13102
step
'Use your Stew Cookpot in your bags|use Stew Cookpot##43147|tip You will need a cooking fire to do this.
.get 1 Vegetable Stew |q 13102/1
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
'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13102
step
goto Dalaran,35.5,57.6
.talk 29532
..turnin 13102
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Dalaran\\Fishing Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the Fishing daily quests in Dalaran.
daily
step
goto Dalaran,53.1,64.9
.talk 28742
.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
..accept 13833 |daily |or
..accept 13834 |daily |or
..accept 13832 |daily |or
..accept 13836 |daily |or
..accept 13830 |daily |or
step
goto Borean Tundra,54.6,41.8
.from Wooly Mammoth##24614, Mammoth Calf##24613, Wooly Mammoth Bull##25743
.' Get the Animal Blood buff|havebuff Ability_Seal|q 13833
step
goto 53.7,42.9
.' Walk into the water here to create a pool of blood
.' Fish in the pool of blood
.get 5 Bloodtooth Frenzy |q 13833/1
step
goto Wintergrasp,79.9,41.8
.' Fish in this big lake
.get 10 Terrorfish |q 13834/1
step
'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13832
step
goto 44.4,66.2
.' Fish in the water in the Dalaran sewers
.get 1 Corroded Jewelry |q 13832/1
step
'Leave the Dalaran sewers|goto Dalaran,60.2,47.7,0.3|c|q 13832
step
goto Dalaran,64.8,60.8
.collect Bloated Slippery Eel##45328|n
.' Click the Bloated Slippery Eel in your bags|use Bloated Slippery Eel##45328
.get 1 Severed Arm |q 13836/1
step
goto Sholazar Basin,49.3,61.8
.' Fish in the water here
.collect 1 Phantom Ghostfish##45902|n
.' Click the Phantom Ghostfish in your bags to eat it|use Phantom Ghostfish##45902
.' Discover the Ghostfish mystery|goal Discover the Ghostfish mystery |q 13830/1
step
goto Dalaran,53.1,64.9
.talk 28742
.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
..turnin 13833
..turnin 13834
..turnin 13832
..turnin 13830
step
goto Dalaran,36.6,37.3
.talk 28706
..turnin 13836
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Dalaran\\Jewelcrafting Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the Jewelcrafting daily quests in Dalaran.
daily
step
goto Dalaran,40.7,35.4
.talk 28701
.' You will only be able to accept, and turn in, 1 of these 6 daily quests per day, and they all require you have 375+ Jewelcrafting skill:
..accept 12958 |daily |or
..accept 12962 |daily |or
..accept 12959 |daily |or
..accept 12961 |daily |or
..accept 12963 |daily |or
..accept 12960 |daily |or
step
goto Icecrown,59.1,54.1
.from Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
.collect 1 Vrykul Amulet##41989 |q 12958
step
'Go to the Auction House in a major city:
.' Buy 1 Dark Jade|collect 1 Dark Jade##36932|q 12958|tip If you don't want to, or can't, buy the Dark Jade, you can also try to get one by mining or prospecting.
.' Buy 1 Bloodstone|collect 1 Bloodstone##36917|q 12958|tip If you don't want to, or can't, buy the Bloodstone, you can also try to get one by mining or prospecting.
step
'Use your Vrykul Amulet in your bags|use Vrykul Amulet##41989
.get 1 Blood Jade Amulet |q 12958/1
step
goto Dragonblight,67.3,52.3
.from Ice Revenant##26283
.collect 1 Elemental Armor Scrap##42107 |q 12962
step
'Go to the Auction House in a major city:
.' Buy 1 Huge Citrine|collect 1 Huge Citrine##36929|q 12962|tip If you don't want to, or can't, buy the Huge Citrine, you can also try to get one by mining or prospecting.
.' Buy 1 Bloodstone|collect 1 Bloodstone##36917|q 12962|tip If you don't want to, or can't, buy the Bloodstone, you can also try to get one by mining or prospecting.
step
'Use your Elemental Armor Scrap in your bags|use Elemental Armor Scrap##42107
.get 1 Bright Armor Relic |q 12962/1
step
goto Dragonblight,62.5,47.4
.from Emaciated Mammoth Bull##26271+, Emaciated Mammoth Calf##26273+, Emaciated Mammoth##26272+
.collect 1 Northern Ivory##42104 |q 12959
step
'Go to the Auction House in a major city:
.' Buy 1 Chalcedony|collect 1 Chalcedony##36923|q 12959|tip If you don't want to, or can't, buy the Chalcedony, you can also try to get one by mining or prospecting.
.' Buy 1 Shadow Crystal|collect 1 Shadow Crystal##36926|q 12959|tip If you don't want to, or can't, buy the Shadow Crystal, you can also try to get one by mining or prospecting.
step
'Use your Northern Ivory in your bags|use Northern Ivory##42104
.get 1 Glowing Ivory Figurine |q 12959/1
step
goto The Storm Peaks,23.1,57.7
.from Blighted Proto-Drake##29590+
.collect 1 Proto Dragon Bone##42106 |q 12961
step
'Go to the Auction House in a major city:
Buy 1 Sun Crystal |collect 1 Sun Crystal##36920|q 12959|tip If you don't want to, or can't, buy the Sun Crystal, you can also try to get one by mining or prospecting.
.' Buy 1 Dark Jade|collect 1 Dark Jade##36932|q 12961|tip If you don't want to, or can't, buy the Dark Jade, you can also try to get one by mining or prospecting.
step
'Use your Proto Dragon Bone in your bags|use Proto Dragon Bone##42106
.get 1 Intricate Bone Figurine |q 12961/1
step
goto Dragonblight,56.3,27.5
.from Wastes Taskmaster##26493+, Wastes Digger##26492+
.collect 1 Scourge Curio##42108 |q 12963
step
'Go to the Auction House in a major city:
.' Buy 1 Sun Crystal|collect 1 Sun Crystal##36920|q 12963|tip If you don't want to, or can't, buy the Sun Crystal, you can also try to get one by mining or prospecting.
.' Buy 1 Shadow Crystal|collect 1 Shadow Crystal##36926|q 12963|tip If you don't want to, or can't, buy the Shadow Crystal, you can also try to get one by mining or prospecting.
step
'Use your Scourge Curio in your bags|use Scourge Curio##42108
.get 1 Shifting Sun Curio |q 12963/1
step
'The entrance to the cave starts here|goto The Storm Peaks,26.8,66.9,0.3|c|q 12960
step
goto 26.0,67.2
.from Stormforged Pillager##29586+, Stormforged Loreseeker##29843+
.collect 1 Iron Dwarf Brooch##42105 |q 12960
step
'Leave the cave|goto The Storm Peaks,26.8,66.9,0.3|c|q 12960
step
'Go to the Auction House in a major city:
.' Buy 1 Huge Citrine|collect 1 Huge Citrine##36929|q 12960|tip If you don't want to, or can't, buy the Huge Citrine, you can also try to get one by mining or prospecting.
.' Buy 1 Sun Crystal|collect 1 Sun Crystal##36920|q 12960|tip If you don't want to, or can't, buy the Sun Crystal, you can also try to get one by mining or prospecting.
step
'Use your Iron Dwarf Brooch in your bags|use Iron Dwarf Brooch##42105
.get 1 Wicked Sun Brooch |q 12960/1
step
goto Dalaran,40.7,35.4
.talk 28701
.' You will only be able to accept, and turn in, 1 of these 6 daily quests per day, and they all require you have 375+ Jewelcrafting skill:
..turnin 12958
..turnin 12962
..turnin 12959
..turnin 12961
..turnin 12963
..turnin 12960
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Dragonblight\\Dragonblight Pre-Quests",[[
author support@zygorguides.com
description This guide section contains the pre-quests to unlock the daily quests in the Wyrmrest Temple region of Dragonblight.
description The Moa'ki Harbor region of Dragonblight does not have any pre-quests to unlock the daily quest that is available there.
step
'Go inside the building to 19.4,58.1|goto Dragonblight,19.4,58.1
.from Goramosh##26349
.get Goramosh's Strange Device|n
.' Click Goramosh's Strange Device|use Goramosh's Strange Device##36742
..accept 12055
step
goto 29,55.5
.talk 26673
..turnin 12055
..accept 12060
step
goto 24.2,55.6
.' Use your Surge Needle Teleporter|use Surge Needle Teleporter##36747
.' Walk around on the platform you get teleported onto
.' Observe the Object on the Surge Needle|q 12060/1
step
'Use your Surge Needle Teleporter to go back down to the ground|goto Dragonblight,22.6,57.0,1.0|use Surge Needle Teleporter##36747|noway|c
step
goto 29,55.5
.talk 26673
..turnin 12060
..accept 12065
step
goto 26.4,65
.from Captain Emmy Malin##26762
.get Ley Line Focus Control Ring|n
.' Use the Ley Line Focus Control Ring next to the half-circle|use Ley Line Focus Control Ring##36751|tip It's a big half-circle purple glowing thing.
.' Retrieve ley line focus information|q 12065/1
.get Captain Malin's Letter|n
.' Click Captain Malin's Letter in your bags|use Captain Malin's Letter##36756
..accept 12067
step
goto 29,55.5
.talk 26673
..turnin 12065
..accept 12083
step
goto 32.2,70.6
.from Lieutenant Ta'zinni##26815|tip He walks in a circle around the half-circle purple glowing thing.
.collect Ley Line Focus Control Amulet##36779|q 12083
step
goto 32.2,71.2
.' Use your Ley Line Focus Control Amulet on the Ley Line Focus|use Ley Line Focus Control Amulet##36779|tip It's a big half-circle purple glowing thing.
.' Retrieve ley line focus information|q 12083/1
step
goto 29,55.5
.talk 26673
..turnin 12083
..accept 12098
step
goto 40.3,66.9
.' Click Mage-Commander Evenstar's body|tip His body is floating underwater here.
..turnin 12098
..accept 12107
step
goto 39.8,66.9
.' Use your Ley Line Focus Control Talisman on the Ley Line Focus|use Ley Line Focus Control Talisman##36815|tip It's a big half-circle purple glowing thing underwater.
.' Retrieve ley line focus information|q 12107/1
step
goto 53,66.4
.' Go to this spot on the cliff to Observe Azure Dragonshrine|q 12107/2
step
goto 48.5,74.4
'Fly to Star's Rest|goto Dragonblight,29.2,55.4,0.5|noway|c
step
goto 29,55.5
.talk 26673
..turnin 12107
..accept 12119
step
'Hearth to Moa'ki Harbor|goto Dragonblight,48.2,74.8,0.5|use Hearthstone##6948|noway|c
step
goto 57.9,54.2
.talk 26443
..turnin 12119
..accept 12766
step
home Wyrmrest Temple
step
goto 60,55.1
.talk 27803
..turnin 12766
..accept 12460
step
goto 60.3,51.6
.talk 26851
..fpath Wyrmrest Temple
step
goto 52.2,50
.talk 27506
..turnin 12460
..accept 12416
step
goto 52.7,46.2
.' Help kill the following:
..'12 Frigid Ghoul Attackers|kill 12 Frigid Ghoul Attacker|q 12416/1
..'8 Frigid Geist Attackers|kill 8 Frigid Geist Attacker|q 12416/2
..'1 Frigid Abomination Attacker|kill 1 Frigid Abomination Attacker|q 12416/3
.' You can find more of these at [50.9,52.4]|n
step
goto 52.2,50
.talk 27506
..turnin 12416
..accept 12417
step
goto 46.7,52.8
.' Click the Ruby Acorns|tip The Ruby Acorns look like red stones on the ground around this area.
.collect 6 Ruby Acorn##37727|n
.' Use the Ruby Acorns on the Ruby Keeper corpses|use Ruby Acorn##37727|tip The Ruby Keepers look like huge red dragons on fire.
.' Return 6 Ruby Keepers to the Earth|q 12417/1
step
goto 52.2,50
.talk 27506
..turnin 12417
..accept 12418
step
'Go into the valley to 48.2,47.8|goto 48.2,47.8
.kill 6 Frigid Necromancer|q 12418/1
step
'Go into the tree trunk to 47.6,49|goto Dragonblight,47.6,49
.from Dahlia Suntouch##27680
.' Cleanse the Ruby Corruption|q 12418/2
step
goto 52.2,50
.talk 27506
..turnin 12418
..accept 12768
step
goto 57.9,54.2
.talk 26443
..turnin 12768
..accept 12123
step
goto 57.9,54.2|n
.talk 26443
..'Tell him you need to go to the top of the temple|goto Dragonblight,59.7,53.1,0.1|noway|c
step
goto 59.8,54.7
.talk 26917
..turnin 12123
..accept 12435
step
goto 59.5,53.3|n
.talk 26949
..'Tell him you want to go to Lord Afrasastrasz|goto Dragonblight,59.2,54.3,0.1|noway|c
step
goto 59.2,54.3
.talk 27575
..turnin 12435
..accept 12372
step
goto 58.3,55.2
.talk 27629
..'Tell him you are ready to get into the fight
.' Fly around Wyrmrest Temple fighting the blue dragons in the sky using your abilities on your hotbar
.kill 3 Azure Dragon|q 12372/1
.kill 5 Azure Drake|q 12372/2
step
'Fly southwest to 55.1,66.4|goto 55.1,66.4
.' Fly into the huge purple swirling column
.' Use your Destabilize Azure Dragonshrine ability|petaction Destabilize Azure Dragonshrine
.' Destabilize the Azure Dragonshrine|q 12372/3
step
goto 58.7,54.5|n
'Click the red arrow to get off the dragon on the middle level of the temple|script VehicleExit()|outvehicle|c
step
goto 59.2,54.3
.talk 27575
..turnin 12372
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Dragonblight\\Moa'ki Harbor Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quest in the Moa'ki Harbor region of Dragonblight.
description There are no pre-quests needed to unlock the daily quest offered in this guide section.
daily
step
goto Dragonblight,48.3,74.3
.talk 26228
..accept 11960
step
goto 45.3,63.7
.' Click Snowfall Glade Pups|tip The Snowfall Glade Pups are small creatures in front of the houses.
.get 12 Snowfall Glade Pup|q 11960/1
step
goto 48.3,74.3
.talk 26228
..turnin 11960
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Dragonblight\\Wyrmrest Temple Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quest in the Wyrmrest Temple region of Dragonblight.
daily
step
goto Dragonblight,59.2,54.3
.talk 27575
..accept 12372
step
goto 58.3,55.2
.talk 27629
..'Tell him you are ready to get into the fight
.' Fly around Wyrmrest Temple fighting the blue dragons in the sky using your abilities on your hotbar
.kill 3 Azure Dragon|q 12372/1
.kill 5 Azure Drake|q 12372/2
step
'Fly southwest to 55.1,66.4|goto 55.1,66.4
.' Fly into the huge purple swirling column
.' Use your Destabilize Azure Dragonshrine ability|petaction Destabilize Azure Dragonshrine
.' Destabilize the Azure Dragonshrine|goal Destabilize the Azure Dragonshrine|q 12372/3
step
goto 58.7,54.5|n
'Click the red arrow to get off the dragon on the middle level of the temple|script VehicleExit()|outvehicle|c
step
goto 59.2,54.3
.talk 27575
..turnin 12372
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Grizzly Hills\\Grizzly Hills Pre-Quests",[[
author support@zygorguides.com
description This guide section contains the pre-quests to unlock the daily quest in the Granite Springs region of Grizzly Hills.
description The Blackriver Logging Camp, Blue Sky Logging Grounds, and Venture Bay regions of Grizzly Hills
description do not have any pre-quests to unlock the daily quests that are available in those regions.
step
goto Grizzly Hills,16.2,47.6
.talk 26424
..accept 11984
step
goto 16.4,48.3
.talk 26429
..'Tell him it's time to play with the ice trolls|havebuff Budd's Attention Span|q 11984
step
goto 13.2,60.5
.' Use Budd's pet bar skill Tag Troll to have him stun a troll|petaction Tag Troll
.' Use your Bounty Hunter's Cage on the stunned troll|use Bounty Hunter's Cage##35736
.' Capture a Live Ice Troll|q 11984/1
step
goto 16.2,47.6
.talk 26424
..turnin 11984
step
goto 16.4,47.8
.talk 26423
..accept 11989
step
goto 16.5,47.8
.' Click the Dull Carving Knife|tip It's a knife stuck in the side of this tree trunk.
.collect 1 Dull Carving Knife##38083|q 11989
step
goto 16.4,47.8
.' Use your Dull Carving Knife next to the yellow cage|use Dull Carving Knife##38083
.talk 26423
..'Shake his hand
..'Make a Blood Pact With Drakuru|goal Blood Pact With Drakuru|q 11989/1
step
goto 16.4,47.8
.talk 26423
..turnin 11989
..accept 11990
step
goto 16,47.8
.talk 26474
..buy 1 Imbued Vial|q 11990/1
step
goto 14.6,45.3
.' Click the Hazewood Bushes|tip They look like small flower bushes on the ground around this area.
.get 3 Haze Leaf|q 11990/2
step
goto 15.2,40.3
.' Click a Waterweed|tip They look like big green bushes underwater around this area.
.get Waterweed Frond|q 11990/3
step
goto 16.4,47.8
.talk 26423
..turnin 11990
step
goto 15.7,46.7
.talk 26519
..accept 12484
step
goto 15.7,46.9
.' Click a Scourged Troll Mummy on the ground next to you
.collect 1 Scourged Troll Mummy##38149|q 12484
step
goto 16.9,48.3
.' Use your Scourged Troll Mummy next to the burning pile of mummies|use Scourged Troll Mummy##38149
.' Burn a Mummified Carcass|goal Mummified Carcass Burned|q 12484/1
step
goto 16.7,48.3
.talk 26604
..turnin 12484
..accept 12029
step
goto 16,29.9
.' Jump on the big rock and stand on it
.' Use Mack's Dark Grog and throw it at the trolls running around to the north|use Mack's Dark Grog##35908
.' Burn 20 Scourge Trolls|goal 20 Scourge Trolls Burned |q 12029/1
step
goto 16.7,48.3
.talk 26604
..turnin 12029
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Grizzly Hills\\Blackriver Logging Camp Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quest in the Blackriver Logging Camp region of Grizzly Hills.
description There are no pre-quests needed to unlock the daily quest offered in this guide section.
daily
step
goto Grizzly Hills,30.0,59.8
.talk 27783
..accept 12444
step
goto 28.3,63.4
.' Kill Horde Players or Conquest Hold Raiders in the Blackriver Logging Camp
.' Kill 10 Horde in Blackriver|goal 10 Horde in Blackriver slain|q 12444/1
step
goto 30.0,59.8
.talk 27783
..turnin 12444
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Grizzly Hills\\Blue Sky Logging Grounds Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the Blue Sky Logging Grounds region of Grizzly Hills.
description There are no pre-quests needed to unlock the daily quests offered in this guide section.
daily
step
goto Grizzly Hills,39.3,43.9
.talk 27468
..accept 12289|daily
step
goto 39.5,43.6
.talk 27371
..accept 12244|daily
step
goto 39.6,43.4
.talk 27416
..accept 12268|daily
step
goto 40.5,42.7
.talk 27484
..accept 12296|daily
step
goto 34.9,39.8
.' Use Renewing Bandages on Wounded Wesfall Infantry|use Renewing Bandage##37576
.' Heal 10 Westfall Infantry|goal 10 Westfall Infantry Healed|q 12296/1
.' Click Grooved Cogs, Notched Sprockets, and High Tension Springs on the ground of the Blue Sky Logging Grounds
..get 4 Grooved Cogs##37412|q 12268/1
..get 3 Notched Sprockets##37413|q 12268/2
..get 2 High Tension Springs##37416|q 12268/3
step
goto 33.4,35.7
.' Kill Horde Players or Wounded Skirmishers in the area
.' Eliminate 15 Horde units|goal 15 Horde units eliminated|q 12289/1
step
goto 34.9,39.8
.' Find the Broken-down Shredder that spawns. Blizzards quest helper will mark it on your map for you.
.' Click the Broken-down Shredder to get inside it
.' Use your abilities on your hot bar to return the shredder to Synipus|goto Grizzly Hills,39.5,43.6
.' Deliver 3 Shredders|goal 3 Shredder Delievered|q 12244/1
step
goto 39.3,43.9
.talk 27468
..turnin 12289
step
goto 39.5,43.6
.talk 27371
..turnin 12244
step
goto 39.6,43.4
.talk 27416
..turnin 12268
step
goto 40.5,42.7
.talk 27484
..turnin 12296
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Grizzly Hills\\Granite Springs Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quest in the Granite Springs region of Grizzly Hills.
daily
step
goto Grizzly Hills,16.7,48.3
.talk 26604
..accept 12038
step
goto 16,29.9
.' Jump on the big rock and stand on it
.' Use Mack's Dark Grog and throw it at the trolls running around to the north|use Mack's Dark Grog##35908
.' Burn 30 Scourge Trolls|goal 30 Scourge Trolls Burned |q 12038/1
step
goto Grizzly Hills,16.7,48.3
.talk 26604
..turnin 12038
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Grizzly Hills\\Venture Bay Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the Venture Bay region of Grizzly Hills.
description There are no pre-quests needed to unlock the daily quests offered in this guide section.
daily
step
goto Grizzly Hills,14.8,86.6
.talk 27759
..accept 12437
.' If he's not there, then you have to take control of Venture Bay for the Alliance
..' To take control of Venture Bay for the Alliance, go to 15.1,88.0|tip Hide behind the lighthouse in between the 2 big brown rocks. Flag yourself for PvP and a bar will appear under your minimap. Sit here until the bar marker is all the way to the left, this will make Commander Howser spawn.
step
goto 22.1,81.2
.talk 27602
..accept 12323
step
goto 22.1,81.2
.talk 27562
..accept 12316
step
goto 22.2,81.2
.talk 27520
..accept 12314
step
goto 18.0,79.6
.' Toss the Smoke Bomb into the buildings to smoke out Venture Co. Stragglers|use Smoke Bomb##37621
.' Building one can be found at [18.0,79.6]
.' Building two can be found at [16.4,76.6]
.' Building three can be found at [14.6,76.7]
.' Smoke out 20 Venture Company Stragglers|goal 20 Venture Company Stragglers smoked out|q 12323/1
step
goto 19.9,76.4
.' Kill Horde Players or Conquest Hold Berserker in Venture Bay
.' Kill 10 Horde in Venture Bay|goal 10 Horde killed in Venture Bay|q 12316/1
step
goto 13.3,80.2
..kill Captain Zorna##27511|q 12314/1
step
goto 16.4,80.3
.' Click the Element 115 in the back room of the ship|tip It looks like a red canister with a handle on the top
..collect Element 115##37664|q 12437
step
goto 9.6,79.2
.' On the next step you will guide a rocket into this Horde Lumberboat
.' Your target will be the wooden X on the back
.' Go to 13.6,88.9|goto Grizzly Hills,13.6,88.9,0.5
.' You will want to use your keys, not your mouse, to guide the rocket
.' Avoid icebergs or the rocket will explode and you will have to start over
.' Click a red rocket to take control of one|invehicle|c|q 12437
step
goto 9.6,79.1
.' Hit the wooden X on the back of the Horde Lumberboat
.' Destroy the Horde Lumberboat|goal Horde Lumberboat destroyed|q 12437/1
step
goto 14.8,86.6
.talk 27759
..turnin 12437
step
goto 22.1,81.2
.talk 27562
..turnin 12316
step
goto 22.1,81.2
.talk 27520
..turnin 12314
step
goto 22.1,81.2
.talk 27602
..turnin 12323
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Howling Fjord\\Howling Fjord Pre-Quests",[[
author support@zygorguides.com
description This guide section contains the pre-quests to unlock the daily quest in the Kamagua and Steel Gate regions of Howling Fjord.
description The Westguard Keep region of Howling Fjord does not have any pre-quests to unlock the daily quest that is available there.
step
goto Howling Fjord,40.3,60.3
.talk 23804
..accept 11504
step
goto 57.7,77.5
.' Click the Mound of Debris|tip It looks like a pile of dirt in the bottom of this small pit, next to a skeleton.
.get Fengir's Clue|q 11504/1
step
goto 59.2,77
.' Click the Unlocked Chest|tip It looks like a small chest in the bottom of this small pit, next to a skeleton.
.get Rodin's Clue|q 11504/2
step
goto 59.8,79.4
.' Click the Long Tail Feather|tip It's a small blue feather sitting on a circular shield in this pit, on top of a skeleton.
.get Isuldof's Clue|q 11504/3
step
goto 62,80
.' Click the Cannonball|tip It looks like a big round grey ball sitting in the dirt in this pit, between a skeleton's legs.
.get Windan's Clue|q 11504/4
step
goto 40.3,60.3
.talk 23804
..turnin 11504
..accept 11507
step
'Go northwest across the Ancient Lift to 25.0,57.0|goto 25.0,57.0
.talk 24755
..turnin 11507
..accept 11508
step
goto 23.1,62.7
.talk 24643
..turnin 11508
..accept 11509
step
goto 35.1,80.9
.talk 24539
..turnin 11509
step
goto 37.8,79.6
.talk 24784
..accept 11469
step
goto 31.4,77.9
.from Big Roy##24785
.get Big Roy's Blubber|q 11469/1
step
goto 37.8,79.6
.talk 24784
..turnin 11469
step
goto Howling Fjord,30.2,28.7
.talk 23891
..accept 11176
step
goto 30.8,28.6
.talk 24399
..turnin 11176
..accept 11390
step
'Click the plane near you on the wooden platform to ride in it|invehicle
step
'Fly down into the valley below
.' They look like huge sacks with yellow stuff in them on the ground
.' Use your Grappling Hook ability on your hotbar near a big sack on the ground|petaction Grappling Hook
.' Fly back to the top of the valley and fly toward the red arrows on the big scale things to Deliver a Sack of Relics
.' Repeat this 2 more time
.' Deliver 3 Sacks of Relics|goal 3 Sack of Relics Delivered|q 11390/1
step
'Fly back to the wooden platform and click the red arrow button on your hotbar to get out of the plane|outvehicle
step
goto 30.8,28.6
.talk 24399
..turnin 11390
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Howling Fjord\\Steel Gate Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quest in the Apothecary Camp region of Howling Fjord.
daily
step
goto Howling Fjord,30.8,28.6
.talk 24399
..accept 11391
step
'Click the plane near you on the wooden platform to ride in it|invehicle
step
'Use the abilities on your hotbar as you fly around to fight the flying gargoyles
.kill 8 Gjalerbron Gargoyle|q 11391/1
step
'Fly back to the wooden platform and click the red arrow button on your hotbar to get out of the plane|outvehicle
step
goto 30.8,28.6
.talk 24399
..turnin 11391
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Howling Fjord\\Kamagua Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quest in the Kamagua region of Howling Fjord.
daily
step
goto Howling Fjord,24.6,58.9
.talk 24810
..accept 11472
step
goto 28.9,74.8
.' Use Anuniaq's Net on the Schools of Tasty Reef Fish|use Anuniaq's Net##40946|tip They look like swarms of fish in the water.
.kill Great Reef Sharks|n
.collect 10 Tasty Reef Fish##34127|q 11472
step
goto 31,74.4
.' Use your Tasty Reef Fish on a Reef Bull as far away as you can|use Tasty Reef Fish##34127
.' He will come to the spot where you're standing
.' Keep doing this
.' Lead the Reef Bull to a Reef Cow on the other side of the water|goal Reef Bull led to a Reef Cow|q 11472/1
step
goto 24.6,58.9
.talk 24810
..turnin 11472
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Howling Fjord\\Westguard Keep Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quest in the Westguard Keep region of Howling Fjord.
daily
step
goto Howling Fjord,29,41.9
.talk 23895
..accept 11153
step
goto 28.1,42.1
.' If you have a flying mount you can just fly onto the boats and kill the pirates and cannons
.' If you do not have a flying mount wait for the zeppelin to come back, if it is there already, then get on it
.' Use Petrov's Cluster Bombs in your bags to throw them off the zeppelin at the pirates as you ride|use Petrov's Cluster Bombs##33098
.kill 25 Blockade Pirate|q 11153/1
.' Destroy 10 Blockade Cannons|goal 10 Blockade Cannons destroyed|q 11153/2
step
goto 29,41.9
.talk 23895
..turnin 11153
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Icecrown Full Zone Quest Path (Includes Regular Dailies Pre-Quests)",[[
author support@zygorguides.com
description This guide section contains the quest path for the entire Icecrown zone, which includes the pre-quests
description to unlock the daily quests in the Orgrim's Hammer, Ymirheim, Aldur'Thar, Shadowvault, and Death's Rise regions of Icecrown.
description The Argent Tournament Grounds pre-quests are not included in this guide section.
step
goto Icecrown,87.8,78.1
.talk 30433
..fpath The Argent Vanguard
step
goto 87.5,75.8
.talk 28179
..accept 13036
step
goto 87.1,75.8
.talk 30223
..turnin 13036
..accept 13008
step
goto 86.8,76.7
.talk 30226
..accept 13040
step
goto 86.1,75.8
.talk 30224
..accept 13039
step
goto 84.4,74.3
.from Carrion Fleshstripper##30206+, Forgotten Depths Acolyte##30205+
.kill 15 Forgotten Depths Nerubian|q 13039/1
.from Carrion Fleshstripper##30206+, Forgotten Depths Acolyte##30205+
.get 10 Forgotten Depths Venom Sac|q 13040/1
.' Click Webbed Crusaders|tip They look like white squirming cocoons on the ground around this area.
.' Free 8 Webbed Crusaders|goal 8 Webbed Crusader Freed|q 13008/1
step
goto 86.1,75.8
.talk 30224
..turnin 13039
step
goto 86.8,76.7
.talk 30226
..turnin 13040
step
goto 87.1,75.8
.talk 30223
..turnin 13008
..accept 13044
step
goto 87.0,79.0
.talk 30227
..turnin 13044
..accept 13045
step
goto 87.1,79.1
.' Click an Argent Skytalon dragon to ride it |invehicle |tip They look like dragons under white canopies.
step
goto 79.0,67.4
.' Use the Grab Captured Crusader ability near Captured Crusaders to pick them up |petaction Grab Captured Crusader
.' Once you pick up a Captured Crusader, fly to 86.9,76.5|n
.' Use the Drop Off Captured Crusader ability near the tents to drop off the crusaders
.' Repeat this process 2 more times
.' Rescue 3 Captured Crusaders |goal 3 Captured Crusader Rescued |q 13045/1
step
.' Click the red arrow on your vehicle hot bar to stop riding the dragon |outvehicle
step
goto 87.5,75.8
.talk 28179
..turnin 13045
..accept 13070
step
goto 85.6,76.0
.talk 30657
..turnin 13070
..accept 13086
step
goto 85.3,75.9
.' Click the Argent Cannon to get on it |invehicle |tip It looks like a white cannon on top of a wall tower.
step
'Use the skills on your hotbar to kill scourge mobs and dragons
.kill 100 Scourge Attacker |q 13086/1
.kill 3 Frostbrood Destroyer |q 13086/2
step
.' Click the red arrow on your vehicle hot bar to stop using the cannon |outvehicle
step
goto 85.6,76.0
.talk 30657
..turnin 13086
step
goto 86.0,75.8
.talk 30677
..accept 13105 |only DeathKnight
..accept 13104 |only !DeathKnight
step
goto 83.0,72.9
.talk 30596
..turnin 13105 |only DeathKnight
..turnin 13104 |only !DeathKnight
..accept 13118
..accept 13122
step
goto 83.0,73.1
.talk 30686
..accept 13130
step
goto 83.0,73.1
.talk 30714
..accept 13135
step
goto 82.9,72.8
.talk 30683
..accept 13110
step
goto 80.4,68.2
.kill 8 Reanimated Crusader |q 13118/3
.kill 3 Forgotten Depths Underking |q 13118/2
.from Reanimated Crusader##30202+, Forgotten Depths Underking##30541+
.get 15 Scourgestone |q 13122/1
.' Use your Holy Water on Reanimated Crusader corpses |use Holy Water##43153
.' Free 10 Restless Souls |goal 10 Restless Soul Freed |q 13110/1
step
goto 78.7,60.2
.kill 3 Forgotten Depths High Priest |q 13118/1
.' You can find another Forgotten Depths High Priest at [76.2,61.0] |n
step
goto 82.9,72.8
.talk 30683
..turnin 13110
step
goto 83.0,72.9
.talk 30596
..turnin 13118
..turnin 13122
..accept 13125
step
goto 77.6,62.2
.' Use your War Horn of Acherus on Salranax the Flesh Render |use War Horn of Acherus##43206 |tip A Death Knight is summoned to help you, but make sure you get the first hit on Salranax the Flesh Render, or else you won't get credit for the kill.
.kill Salranax the Flesh Render##30829 |q 13125/1
step
goto 79.7,60.9
.' Use your War Horn of Acherus on High Priest Yath'amon |use War Horn of Acherus##43206 |tip A Death Knight is summoned to help you, but make sure you get the first hit on High Priest Yath'amon, or else you won't get credit for the kill.
.kill High Priest Yath'amon##30831 |q 13125/3
step
goto 76.6,54.1
.' Use your War Horn of Acherus on Underking Talonox |use War Horn of Acherus##43206 |tip A Death Knight is summoned to help you, but make sure you get the first hit on Underking Talonox, or else you won't get credit for the kill.
.kill Underking Talonox##30830 |q 13125/2
step
'Click the dark portal that spawns after you kill Underking Talonox to return to the Valley of Echoes |goto Icecrown,83.0,72.6,0.5 |noway |c
step
goto 83.0,72.9
.talk 30596
..turnin 13125
step
'Go south to Crystalsong Forest |goto Crystalsong Forest |noway |c
step
goto Crystalsong Forest,59.9,57.2
.from Unbound Ent##30862+, Unbound Dryad##30860+
.get 8 Crystallized Energy |q 13135/1
.' Click Crystalline Heartwood |tip They look like pink glowing tree stumps on the ground around this area.
.get 10 Crystalline Heartwood |q 13130/1
step
goto 73.8,53.0
.' Click Ancient Elven Masonry |tip They look like blue stone pieces of a building on the ground around this area.
.get 10 Ancient Elven Masonry |q 13130/2
.' You can find more Ancient Elven Masonry around [79.6,61.3] |n
step
'Go northwest to Icecrown |goto Icecrown |noway |c
step
goto Icecrown,83.0,73.1
.talk 30686
..turnin 13130
step
goto 83.0,73.1
.talk 30714
..turnin 13135
step
goto 82.9,72.8
.talk 30683
..accept 13139
step
goto 86.0,75.8
.talk 30677
..turnin 13139
..accept 13141
step
goto 80.1,72.0
.' Stand next to the Pile of Crusader Skulls
.' Use your Blessed Banner of the Crusade |use Blessed Banner of the Crusade##43243
.' Defend the Banner of the Crusade against oncoming attackers
.' Complete the Battle for Crusaders' Pinnacle |goal Battle for Crusaders' Pinnacle |q 13141/1
step
goto 82.9,72.8
.talk 30683
..turnin 13141
..accept 13157
step
goto 79.8,71.8
.talk 31044
..turnin 13157
..accept 13068
step
goto 79.4,72.9
.talk 31241
..accept 13225
step
goto 79.4,72.4
.talk 31069
..fpath Crusaders' Pinnacle
step
goto 79.8,30.8
.talk 30562
..turnin 13068
..accept 13072
step
goto 79.8,71.8
.talk 31044
..turnin 13072
..accept 13073
step
goto 87.1,77.0
.talk 30630
..' Ask her for a portal to Moonglade
..' Click the Moonglade Portal that appears next to you|goto Moonglade|noway|c
step
goto Moonglade,36.2,41.8
.talk 11832
..turnin 13073
..accept 13074
step
goto 33.7,44.1
.' Click Emerald Acorns|tip They look like brown pinecones on the ground around this area.
.get 3 Emerald Acorn|q 13074/1
step
'Right click your Fitfull Dream buff to awaken from the nightmare|nobuff Spell_Nature_Sleep|q 13074|tip The Fitfull Dream buff icon looks like a closed eye.
step
goto 36.2,41.8
.talk 11832
..turnin 13074
..accept 13075
step
.Talk to Keeper Remulos##11832
.' Tell him you wish to return to Arch Druid Lilliandra.
' Click the Moonglade Return Portal that appears next to you|goto Icecrown|noway|c
step
goto 79.8,30.8
.talk 30562
..turnin 13075
..accept 13076
step
goto 79.8,71.8
.talk 31044
..turnin 13076
..accept 13077
step
goto 79.4,72.4
.talk 31069
..' Fly to Wyrmrest Temple in Dragonblight|goto Dragonblight,60.3,51.4,0.5|noway|c
step
goto Dragonblight,57.9,54.2|n
.talk 26443
..'Tell him you need to go to the top of the temple|goto Dragonblight,59.7,53.1,0.1|noway|c
step
goto 59.8,54.7
.talk 26917
..turnin 13077
..accept 13078
step
goto 59.5,53.3|n
.talk 26949
..'Tell him you want to go to the ground level of the temple|goto Dragonblight,58.0,55.2,0.1|noway|c
step
goto 43.2,51.7
.' There should be a fight happening, so just wait around until the fight is over|tip If there isn't fight happening, just wait until the fighters spawn again, and there should be some red dragon Ruby Watchers flying above the fight.
.' At the end of the fight, a Ruby Watcher will blow alot of fire on the ground and the Dahlia's Tears will spawn
.' Click the Dahlia's Tears|tip They look like yellow flowers on the ground.
.get Dahlia's Tears|q 13078/1
step
goto 57.9,54.2|n
.talk 26443
..'Tell him you need to go to the top of the temple|goto Dragonblight,59.7,53.1,0.1|noway|c
step
goto 59.8,54.7
.talk 26917
..turnin 13078
..accept 13079
step
goto 59.5,53.3|n
.talk 26949
..'Tell him you want to go to the ground level of the temple|goto Dragonblight,58.0,55.2,0.1|noway|c
step
goto 60.3,51.6
.talk 26851
..' Fly to Crusaders' Pinnacle in Icecrown|goto Icecrown,79.3,72.3,0.5|noway|c
step
goto 79.8,30.8
.talk 30562
..turnin 13079
..accept 13080
step
goto 79.8,71.8
.talk 31044
..turnin 13080
..accept 13081
step
'Click the Portal to Shattrath that appears near you|goto Shattrath City|noway|c
step
goto Shattrath City,54,44.8
.talk 18481
..turnin 13081
..accept 13082
step
goto Dalaran,72.2,45.8
.talk 28674
..' Fly to Crusaders' Pinnacle in Icecrown|goto Icecrown,79.3,72.3,0.5|noway|c
step
goto Icecrown,79.8,30.8
.talk 30562
..turnin 13082
step
goto 79.8,30.8
.talk 192833
..accept 13083
step
goto 79.8,71.8
.talk 31044
..turnin 13083
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
..talk 30344
...turnin 13225
...accept 13231
step
'On the Skybreaker airship:
.talk 29799
..accept 12887
step
'On the Skybreaker airship:
.talk 32302
..accept 13336
..accept 13341
step
'On the Skybreaker airship:
.talk 31259
..accept 13300
step
'On the Skybreaker airship:
.talk 30345
..accept 13296
step
goto 62.6,51.3
.talk 31808
..turnin 13341
..accept 13309
step
goto Icecrown,62.5,51.1
.talk 31737
..accept 13284
step
'Follow the Alliance troops up the mountain and help them fight
.'Escort the Alliance troops into Ymirheim|goal 4 Alliance troops escorted to Ymirhem|q 13284/1|tip At least 4 Alliance troops must survive.
step
'The entrance to the cave starts here, go inside the cave|goto 57.0,57.3,0.3|c
step
goto 56.0,57.6
.' Talk to Saronite Mine Slaves
..' Tell them they're free, get out of here!
.' Rescue 10 Saronite Mine Slaves|goal 10 Saronite Mine Slave rescued|q 13300/1
step
'Go outside the cave|goto 57.0,57.3,0.3|c
step
goto 57.3,57.0
.from Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
.kill 20 Ymirheim Vrykul|q 13336/1
step
goto 57.0,62.5
.talk 31776
..turnin 13296
..accept 13280
step
goto 51.9,57.6
'Click Geargrinder's Jumpbot to get in the robot |invehicle
step
goto 54.9,60.1
.' Use your Jump Jets ability to jump up the mountain to this spot|petaction Jump Jets|tip This spot is the peak of the mountain.
.' Use your Plant Alliance Battle Standard ability next to the Ymirheim Peak Skulls|petaction Plant Alliance Battle Standard|tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
.' Plant the Alliance Battle Standard|goal Alliance Battle Standard planted|q 13280/1
step
'Click the red arrow button on your vehicle hotbar to get out of the robot|script VehicleExit()|outvehicle|c
step
goto 57.0,62.5
.talk 31776
..turnin 13280
step
goto 62.6,51.3
.talk 31808
..turnin 13284
step
goto 62.6,50.9
.' Click the Skybreaker Suppression Turret to control the gun on the airplane|invehicle
step
'You will fly off in the airplane:
.' Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around|petaction Suppression Charge
.' Drop 4 Skybreaker Infiltrators|goal 4 Skybreaker Infiltrators dropped|q 13309/1
step
goto 62.6,51.3
.talk 31808
..turnin 13309
step
goto 69.0,67.3
.talk 31304
..' Ask him what happened here
.' Question the Dying Soldier|goal Dying Soldier Questioned|q 13231/1
step
goto 69.0,67.3
.talk 31304
..accept 13232
step
goto 68.8,67.2
.talk 31304
..' Tell 5 Dying Soldiers to travel well
.' Kill 5 Dying Alliance Soldiers|goal 5 Dying Alliance Soldiers slain|q 13232/1
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
..talk 30344
...turnin 13231
...turnin 13232
...accept 13290
...accept 13286
step
'On the Skybreaker airship:
.talk 29799
..turnin 13286
..accept 13287
step
'On the Skybreaker airship:
.talk 32302
..turnin 13336
step
'On the Skybreaker airship:
.talk 31259
..turnin 13300
step
'On the Skybreaker airship:
.talk 30345
..turnin 13290
..accept 13291
step
goto 69.9,64.3
.' Click Abandoned Armor|tip They look like metal armor chestpieces laying on the ground around this area.
.collect 3 Abandoned Armor##43616|q 13291
.' Click Abandoned Helm|tip They look like metal helmets laying on the ground around this area.
.collect 3 Abandoned Helm##43610|q 13291
.' Click Piles of Bones|tip They look like small piles of bones laying on the ground around this area.
.collect 3 Pile of Bones##43609|q 13291
step
goto 68.8,67.5
.' Use Smuggled Solution 3 times|use Smuggled Solution##44048
.' Conduct 3 Field Tests|goal 3 Field Tests Conducted|q 13291/1
step
goto 68.8,66.6
.' Kill 5 Hulking Abominations|goal 5 Hulking Abominations Slain|q 13287/1
.' Kill 5 Malefic Necromancer|goal 5 Malefic Necromancers Slain|q 13287/2
.' Kill 5 Shadow Adept|goal 5 Shadow Adepts Slain|q 13287/3
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 13287
..accept 13288
step
'On the Skybreaker airship:
.talk 30345
..turnin 13291
step
goto 69.8,62.9
.from Hulking Abomination##31140+
.collect Chilled Abomination Guts|n
.' Use your Abomination Reanimation Kit|use Abomination Reanimation Kit##43968
.' With your control Abomination, go to 69.1,61.6|n
.' Use your Burst at the Seams ability to explode the mobs around this area|petaction Burst at the Seams
.' Keep repeating this process until you:
.' Explode 15 Icy Ghouls|goal 15 Icy Ghouls Exploded|q 13288/1
.' Explode 15 Vicious Geists|goal 15 Vicious Geists|q 13288/2
.' Explode 15 Risen Alliance Soldiers|goal 15 Risen Alliance Soldiers Exploded|q 13288/3
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 13288
..accept 13315
step
goto 55.1,43.9
.' Visit Aldur'thar South|goal Aldur'thar South Visited|q 13315/1
step
goto 54.7,38.9
.' Visit Aldur'thar Central|goal Aldur'thar Central Visited|q 13315/2
step
goto 57.5,35.2
.' Visit Aldur'thar North|goal Aldur'thar North Visited|q 13315/3
step
goto 51.3,35.3
.' Visit Aldur'thar Northwest|goal Aldur'thar Northwest Visited|q 13315/4
step
goto 44.3,21.5
.' Use your Eyesore Blaster on The Ocular|use Eyesore Blaster##41265|tip The Ocular is a huge blue glowing eye at the very top of the Shadow Vault.
.' Destroy The Ocular|goal The Ocular has been destroyed|q 12887/1
step
goto 44.1,24.7
.talk 29804
..turnin 12887
..accept 12891
step
goto 43.7,24.8
.from Shadow Cultist##29717+
.get 1 Cultist Rod|q 12891/1
.from Morbid Carcass##29719+
.get 1 Abomination Hook|q 12891/2
.from Vault Geist##29720+
.get 1 Geist Rope|q 12891/3
.from Morbid Carcass##29719+, Vault Geist##29720+, Rabid Cannibal##29722+, Death Knight Master##29738+
.get 5 Scourge Essence|q 12891/4
step
goto 44.1,24.7
.talk 29804
..turnin 12891
..accept 12893
step
goto 43.4,19.1
.from The Leaper##29840
.' Use your Sovereign Rod on The Leaper's corpse|use Sovereign Rod##41366
.' Turn The Leaper|goal The Leaper turned|q 12893/3
step
goto 44.4,27.0
.from Vile##29769
.' Use your Sovereign Rod on Vile's corpse|use Sovereign Rod##41366
.' Turn Vile|goal Vile turned|q 12893/1
step
goto 41.8,24.5
.from Lady Nightswood##29770
.' Use your Sovereign Rod on Lady Nightswood's corpse|use Sovereign Rod##41366
.' Turn Lady Nightswood|goal Lady Nightswood turned|q 12893/2
step
goto 44.1,24.7
.talk 29804
..turnin 12893
..accept 12896
step
'The entrance to the Shadow Vault starts here|goto 43.7,23.6,0.3|c
step
goto 44.9,19.9
.' Click the General's Weapon Rack|It looks like a sqaure metal table rack with swords laying on it, next to a big skull Runeforge with blue eyes.
.' General Lightsbane spawns
.kill General Lightsbane|q 12896/1
step
'Leave the Shadow Vault|goto 43.7,23.6,0.3|c
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 12896
..accept 12898
..turnin 13315
..accept 13318
..accept 13319
..accept 13320
step
goto 53.9,46.9
.' Kill Overseer Faedris|goal Overseer Faedris Killed|q 13319/1|tip He's standing in a tent.
step
goto 53.9,46.1
.from Bitter Initiate##32238
.collect 3 Orb of Illusion|q 13318
step
goto 54.3,45.6
.' Use your Orbs of Illusion on Dark Subjugators|use Orb of Illusion##44246
.' Drag and drop 3 Dark Subjugators|goal 3 Dark Subjugators dragged and dropped|q 13318/1
step
goto 54.7,32.6
.' Kill Overseer Jhaeqon|goal Overseer Jhaeqon Killed|q 13319/2|tip He's standing in a tent.
step
goto 53.7,29.2
.' Kill Overseer Veraj|goal Overseer Veraj Killed|q 13319/3|tip He's standing under a white canopy.
step
goto 49.7,34.4
.' Use your Partitioned Flask next to the big cauldron with purple smoke|use Partitioned Flask##44251
.' Collect the Dark Sample|goal Dark Sample Collected|q 13320/3
step
goto 49.1,34.2
.' Use your Partitioned Flask next to the big cauldron with green smoke|use Partitioned Flask##44251
.' Collect the Green Sample|goal Green Sample Collected|q 13320/2
step
goto 49.0,33.2
.' Use your Partitioned Flask next to the big cauldron with gray or blue smoke|use Partitioned Flask##44251
.' Collect the Blue Sample|goal Blue Sample Collected|q 13320/1
step
goto 49.4,31.2
.' Kill Overseer Savryn|goal Overseer Savryn Killed|q 13319/4|tip He's standing under a white canopy.
step
goto 42.8,24.9
.talk 29343
..turnin 12898
..accept 12938
..accept 13106
step
goto 43.7,24.4
.talk 30314
..fpath The Shadow Vault
step
goto 44.0,22.2
.talk 30308
..home The Shadow Vault
step
goto 44.7,20.3
.talk 30002
..turnin 12938
..accept 12939
step
goto 43.6,24.7
.talk 30074
..accept 12955
step
goto 37.9,25.1
.' Watch out for the Mjordin Combatants. They will attack you!
.talk 30081
..' Challenge him to a duel
.' Defeat Efrem the Faithful|goal Efrem the Faithful defeated|q 12955/2
step
goto 36.1,23.6
.talk 30162
..' Tell her you can't afford her as a distraction
.' Defeat Tinky Wickwhistle|goal Tinky Wickwhistle defeated|q 12955/4
step
goto 37.5,24.6
.' Use your Challenge Flag on Mjordin Combatants to challenge them|use Challenge Flag##41372
..' Challenge and defeat 6 Mjordin Combatants|goal 6 Mjordin Combatants challenged and defeated|q 12939/1
step
goto 37.1,22.5
.talk 30086
..' Tell her you heard vrykul women cannot fight at all
.' Defeat Sigrid Iceborn|goal Sigrid Iceborn defeated|q 12955/1
step
goto 37.9,22.9
.talk 30180
..' Tell him you have bad news for him
.' Defeat Onu'zun|goal Onu'zun defeated|q 12955/3
step
goto 32.4,24.2
.' Click the Jotunheim Rapid-Fire Harpoon
.' Shoot down 15 Jotunheim Proto-Drakes|goal 15 Jotunheim Proto-Drakes & their riders shot down|q 13069/1
step
'Hearth to The Shadow Vault|goto Icecrown,44.0,22.2,0.5|use Hearthstone##6948|noway|c
step
goto 44.7,20.3
.talk 30002
..turnin 12939
..accept 12943
step
goto 43.6,24.7
.talk 30074
..turnin 13069
..turnin 12955
..accept 12999
step
'The entrance to the Ufrang's Hall starts here|goto 38.8,24.0,0.3|c
step
goto 41.0,23.9
.talk 30056
..accept 12949
step
goto 40.3,23.9
.' Use your Shadow Vault Decree on Thane Ulfrang the Mighty|use Shadow Vault Decree##41776
..kill Thane Ulfrang the Mighty|q 12943/1
step
'Leave Ufrang's Hall|goto 38.8,24.0,0.3|c
step
goto 36.5,23.6
.from Instructor Hroegar##29915
.get Key to Vaelan's Chains|q 12949/1
step
'The entrance to the Ufrang's Hall starts here|goto 38.8,24.0,0.3|c
step
goto 41.0,23.9
.talk 30056
..turnin 12949
..accept 12951
step
'Leave Ufrang's Hall|goto 38.8,24.0,0.3|c
step
goto 42.8,24.9
.talk 29343
..turnin 12951
..accept 12995
..accept 13085
step
goto 43.3,24.8
.talk 30216
..accept 12992
step
goto 43.1,21.1
.talk 30218
..turnin 13085
..accept 12982
step
goto 44.7,20.3
.talk 30002
..turnin 12943
..accept 13084
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 13318
..turnin 13319
..accept 13386
..accept 13342
step
'On the Skybreaker airship:
.talk 30345
..turnin 13320
..accept 13321
step
goto 55.2,29.1
.' Use your Diluted Cult Tonic|use Diluted Cult Tonic##44307|tip This gives you a buff that allows you to collect Tainted Essences from dead cultists in Aldur'thar.  If you lose the buff, use this again.
.from Void Summoner##32259+, Shadow Channeler##32262+
.collect 10 Tainted Essence##44301|n
.' Use a Tainted Essence to combine them|use Tainted Essence##44301
..collect 1 Writhing Mass##44304|q 13321
.from Enslaved Minion##32260+
.' Use your Rod of Siphening on the Enslaved Minion corpses|use Rod of Siphening##44433
.collect 5 Dark Matter##44434|q 13342
step
goto 53.8,33.6
.' Click the Summoning Stone
.' Summon the Dark Messenger|goal Dark Messenger summoned|q 13342/1
step
goto 49.1,34.2
.' Use your Writhing Mass next to the big cauldron|use Writhing Mass##44304
.' Banish the Writhing Mass|goal Writhing Mass Banished|q 13321/1
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 13342
..accept 13345
step
'On the Skybreaker airship:
.talk 30345
..turnin 13321
step
.' Some classes may need to get in a three-man group for the next quest
.' Go into the building at [51.9,32.7]|goto 51.9,32.7,0.3|c|q 13345
step
goto Icecrown,51.9,30.8
.from Cult Researcher##32297+
..collect Cult of the Damned Research - Page 1##44459|n
..collect Cult of the Damned Research - Page 2##44460|n
..collect Cult of the Damned Research - Page 3##44461|n
..' Use a Cult of the Damned Research Page to combine them|use Cult of the Damned Research - Page 1##44459
..get Cult of the Damned Thesis##44462|q 13345/1
step
goto 33.0,28.1
.from Njorndar Spear-Sister##30243+, Jotunheim Warrior##29880+, Valhalas Vargul##30250+
.kill 15 Jotunheim vrykul|q 12992/1
.collect 15 Vrykul Bones##43089|q 13092|future
.' Use your Ebon Blade Banner on the Jotunheim vrykul corpses|use Ebon Blade Banner##42480
.' Plant 15 Ebon Blade Banners near vrykul corpses|goal 15 Ebon Blade Banner planted near vrykul corpse|q 12995/1
.collect 8 Jotunheim Cage Key##42422|q 12982|n
.' Click Jortunheim Cages|tip They look like wooden cages on the ground around this area.
.' Set free 8 Ebon Blade Prisoners|goal 8 Ebon Blade Prisoners set free|q 12982/1
.' Click Vrykul Banners|tip They look like big wooden posts with red banners hanging from them around this area.
.' Burn 10 Vrykul banners|goal 10 Vrykul banners burned|q 13084/1
step
goto 32.5,42.9
.talk 30232
..turnin 12999
..accept 13092
..turnin 13092
..accept 13042
step
'The entrance to The Underhalls starts here|goto 32.6,32.1,0.3|c
step
goto 36.1,33.0
.talk 30406
..accept 13059
step
goto 33.1,37.7
.' Use Bethod's Sword in the middle of the room|use Bethod's Sword##42928
.' Issue a challenge using Bethod's Sword|goal Challenge issued using Bethod's Sword|q 13059/1
.kill Thane Illskar|q 13059/2
step
goto 34.0,36.3
.kill Apprentice Osterkilgr##30409|q 13042/2
.' Beat the information out of Apprentice Osterkilgr|goal Information beaten out of Apprentice Osterkilgr|q 13042/1
.collect Dr. Terrible's "Building a Better Flesh Giant"##42772|n
.' Click Dr. Terrible's "Building a Better Flesh Giant" in your bags|use Dr. Terrible's "Building a Better Flesh Giant"##42772
..accept 13043
step
goto 33.4,33.2
.' Click Nergeld to control him|tip He's a big undead monster.
.'Use Nergeld's abilities to kill Dr. Terrible|tip The best way to kill Dr. Terrible is to knock him, and all the other mobs, away using Nergeld's shout ability.  Then, target Dr. Terrible and pull him close with Nergeld's chain ability.  When Dr. Terrible is close to you, use Nergeld's punch ability to get his health down quickly.  When Dr. Terrible tries to heal, use Nergeld's shout ability to interrupt him, then pull him close again and resume punching him.
.kill Dr. Terrible|q 13043
step
goto 36.1,33.0
.talk 30406
..turnin 13059
step
'Leave The Underhalls|goto 32.6,32.1,0.3|c
step
goto 32.5,42.9
.talk 30232
..turnin 13042
..turnin 13043
..accept 13091
step
goto 31.4,41.2
.' Click the huge Lock Gate to control a Water Terror
.' Use the Water Terror's abilities to kill mobs around this area
.' Slay 10 Jotunheim vrykul while possessing a Water Terror|goal 10 Jotunheim vrykul slain while possessing a Water Terror|q 13091/1
step
'Click the red arrow on your vehicle hot bar to stop controlling the Water Terror|script VehicleExit()|outvehicle|c
step
goto 32.5,42.9
.talk 30232
..turnin 13091
..accept 13121
step
'The entrance to Kul'galar Keep starts here|goto 25.1,61.3,0.3|c
step
goto 26.2,62.3
.' Click the Eye of the Lich King|tip It's a blue floating ball up on a stage.
.' Grasp the Eye of the Lich King and focus
.' Gain information for The Bone Witch|goal Information gained for The Bone Witch|q 13121/1
step
'Leave Kul'galar Keep|goto 25.1,61.3,0.3|c
step
goto 32.5,42.9
.talk 30232
..turnin 13121
..accept 13133
step
'The entrance to the Halls of the Ancestors starts here|goto 27.9,47.2,0.3|c
step
goto 27.4,47.9
.talk 30718
..' Waken them to see if it is Iskalder
.' Use The Bone Witch's Amulet on Iskalder|use The Bone Witch's Amulet##43166
.' Bring Iskalder back to The Bone Witch at [32.5,42.9]|n
.' Deliver Iskalder to The Bone Witch|goal Iskalder delivered to The Bone Witch|q 13133/1
step
goto 32.5,42.9
.talk 30232
..turnin 13133
step
goto 35.4,66.3
.talk 30631
..turnin 13106
..accept 13117
step
goto 36.8,70.7
.' Click a Summoning Altar|tip They look like small stone stages with green summoning circles on them on the ground around this area.
.' Investigate a Summoning Altar|goal Summoning Altar investigated|q 13117/1
step
goto 35.4,66.3
.talk 30631
..turnin 13117
..accept 13119
..accept 13120
step
goto 30.5,65.1
.' Click the Cauldron Area Orb Stand|tip It looks like a square metal table with a small blue glowing ball on top of it.
.' Place the orb in the Cauldron Area Orb Stand|goal Orb placed in cauldron area|q 13120/3
step
goto 32.6,70.6
.' Click the Abomination Lab Orb Stand|tip It looks like a square metal table with a small blue glowing ball on top of it.
.' Place the orb in the Abomination Lab Orb Stand|goal Orb placed in abomination lab|q 13120/1
step
goto 34.6,69.6
.' Click the Flesh Giant Lab Orb Stand|tip It looks like a square metal table with a small blue glowing ball on top of it.
.' Place the orb in the Flesh Giant Lab Orb Stand|goal Orb placed in flesh giant lab|q 13120/2
step
goto 37.0,71.1
.from Master Summoner Zarod##30746
.collect 1 Master Summoner's Staff##43159|q 13119
step
goto 36.7,70.7
.' Use your Master Summoner's Staff next to the green summoning altar|use Master Summoner's Staff##43159|tip You can use the staff while on your flying mount, hovering above the summoning altar a little.  You don't have to land.
.' Destroy the First Summoning Altar|goal First Summoning Altar destroyed|q 13119/1
step
goto 36.6,71.6
.' Use your Master Summoner's Staff next to the green summoning altar|use Master Summoner's Staff##43159|tip You can use the staff while on your flying mount, hovering above the summoning altar a little.  You don't have to land.
.' Destroy the Second Summoning Altar|goal Second Summoning Altar destroyed|q 13119/2
step
goto 37.4,71.5
.' Use your Master Summoner's Staff next to the green summoning altar|use Master Summoner's Staff##43159|tip You can use the staff while on your flying mount, hovering above the summoning altar a little.  You don't have to land.
.' Destroy the Fourth Summoning Altar|goal Fourth Summoning Altar destroyed|q 13119/4
step
goto 37.8,70.7
.' Use your Master Summoner's Staff next to the green summoning altar|use Master Summoner's Staff##43159|tip You can use the staff while on your flying mount, hovering above the summoning altar a little.  You don't have to land.
.' Destroy the Third Summoning Altar|goal Third Summoning Altar destroyed|q 13119/3
step
goto 35.4,66.3
.talk 30631
..turnin 13119
..turnin 13120
..accept 13134
step
goto 34.0,70.0
.' Attack the vats of Embalming Fluid|tip They look like big glass balls half full of green liquid with 4 metal legs holding them around this area.
.' Destroy 5 Vats of Embalming Fluid|goal 5 Vats of Embalming Fluid destroyed|q 13134/2
.' Attack the Blood Orbs|tip They look like small glass balls half full of red liquid floating above small metal pillars around this area.
.' Shatter 5 Blood Orbs|goal 5 Blood Orbs shattered|q 13134/1
.from Spiked Ghoul##30597+
.collect 1 Jagged Shard##43242|n
.' Click the Jagged Shard in your bags|use Jagged Shard##43242
..accept 13136
step
goto 34.4,68.9
.from Spiked Ghoul##30597+|tip You can find them all around this area.
.get 10 Jagged Shard|q 13136/1
step
goto 35.4,66.3
.talk 30631
..turnin 13134
step
goto 35.5,66.4
.talk 30708
..turnin 13136
..accept 13138
..accept 13140
step
goto 51.8,86.7
.talk 31444
..turnin 13386
..accept 13387
step
goto 52.2,87.4
.kill 10 Hulking Horror|q 13387/1
step
goto 51.8,86.7
.talk 31444
..turnin 13387
..accept 13388
step
goto 54.4,86.3
.' Click the Saronite Bomb Stack|tip It looks like a pile of big spiked round bombs.
..turnin 13388
..accept 13389
step
goto 54.0,87.3
.' Click the Pulsing Crystal underwater|tip This is underground in Naz'anak: The Forgotten Depths.
..turnin 13389
..accept 13390
step
goto 53.8,86.9
.talk 31237
..turnin 13390
..accept 13391
step
goto 54.5,87.4
.from Faceless Lurker##31691+|tip They look like elephant men with squid arms underground in Naz'anak: The Forgotten Depths.
.get 3 Faceless One's Blood|q 13391/1
step
goto 53.8,86.9
.talk 31237
..turnin 13391
..accept 13392
step
goto 53.8,86.8
.' Click the Surface Portal|tip It looks like a small round green and black portal underground in Naz'anak: The Forgotten Depths.
..' Go to the surface|goto Icecrown,49.1,71.6,0.5|noway|c
step
goto 58.1,70.9
.' Use your Bag of Jagged Shards while standing on the big platform with fire shooting out of it|use Bag of Jagged Shards##43289
.get Smelted Bar|q 13138/1
step
goto 58.9,73.3
.from Skeletal Runesmith##30921+
.get 5 Runed Saronite Plate|q 13140/1
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 13345
..turnin 13392
..accept 13393
..accept 13332
step
goto 66.0,53.7
.from Scavenging Geist##31847+
.get 5 Demolisher Parts|q 13393/1
step
goto 68.0,51.9
.talk 31868
..turnin 13393
step
goto 68.0,51.6
.talk 32408
..accept 13394
step
goto 68.0,51.8
.' Click the Refurbished Demolisher to drive it|invehicle|tip It looks like a big wooden catapult machine.
step
goto 65.4,47.9
.' Use the catapult's abilities around this area to:
.kill 150 Decomposed Ghoul|q 13394/1
.kill 20 Frostskull Magus|q 13394/2
.kill 2 Bone Giant|q 13394/3
step
goto 64.5,44.0
.talk 32404
..turnin 13394
..accept 13395
step
goto 64.9,43.9
.' Use your abilities as Arthas to kill Lordaeron Footsoldiers and turn them into Ghoulish Minions
.' Raise 100 Ghoulish Minions|goal 100 Ghoulish Minions Raised|q 13395/1
step
'Click the red arrow on your vehicle hot bar to stop controlling Arthas|script VehicleExit()|outvehicle|c
step
goto 64.5,44.0
.talk 32404
..turnin 13395
..accept 13396
step
goto 50.6,38.5
.' Use your Barricade Construction Kit near the floating orbs that glow pink|use Barricade Construction Kit##44127
.' Construct 8 Barricades|q 13332/1
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 13332
..turnin 13396
..accept 13397
step
'On the Skybreaker airship:
.talk 30344
..accept 13314
step
goto 43.3,58.2
.' Use the Dart Gun on Orgrim's Hammer Scouts|use Dart Gun##44222|tip They are flying up in the air on purple dragons
.' When they hit the ground, fly down and loot their bodies
..get 6 Orgrim's Hammer Dispatch##44220+|q 13314/1
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 30344
..turnin 13314
step
goto 71.5,37.6
.talk 32423
..accept 13398
step
goto 69.7,36.7
.kill 8 Cultist Corrupter|q 13397/2
.kill 3 Vrykul Necrolord|q 13397/3
.from Frostbrood Whelp##31718+
.get 6 Whelp Bone Dust|q 13398/1
step
goto 71.5,37.6
.talk 32423
..turnin 13398
..accept 13399
step
goto 72.3,36.7
.kill 5 Wyrm Reanimator|q 13397/1
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 13397
step
'Hearth to The Shadow Vault|goto Icecrown,44.0,22.2,0.5|use Hearthstone##6948|noway|c
step
goto 43.1,21.1
.talk 30218
..turnin 12982
step
goto 43.6,25.1
.talk 30074
..accept 13069
step
goto 44.7,20.3
.talk 30002
..turnin 13084
step
goto 43.3,24.8
.talk 30216
..turnin 12992
..accept 13071
step
goto 42.8,24.9
.talk 29343
..turnin 12995
..accept 12806
step
goto 44.1,24.5
.talk 30946
..accept 13168
step
goto 44.1,24.7
.' Click an Eye of Domination|tip They look like red globes floating above small metal pillars.
.' Sieze Control of an Eidolon Watcher|goal Sieze Control of an Eidolon Watcher|q 13168/1
step
goto 44.1,24.5
.talk 30946
..turnin 13168
..accept 13171
..accept 13169
..accept 13170
step
goto 44.1,24.7
.' Click an Eye of Domination|tip They look like red globes floating above small metal pillars.
.' Sieze Control of an Eidolon Watcher|invehicle|c
step
goto 41.5,32.4
.' Use your Eidolon Watcher abilities around this area to:
.' Feed 18 Hungering Plaguehounds|goal 18 Hungering Plaguehounds fed|q 13169/1
.' Assassinate 20 Restless Lookouts|goal 20 Restless Lookouts assassinated|q 13170/1
.' Banish 10 Scourge Crystals|goal 10 Banished Scourge Crystals|q 13171/1|tip The Scourge Crystals look like big crystals floating above small stone pillars around this area.
step
goto 44.1,24.5
.talk 30946
..turnin 13171
..turnin 13169
..turnin 13170
..accept 13172
..accept 13174
step
goto 44.1,24.5
.talk 30946
..' Tell him you are prepared to join the assault|invehicle
step
'Use your Firebomb ability as you fly around to:
.' Slaughter 80 Weeping Quarry Undead|goal 80 Weeping Quarry Undead slaughtered|q 13172/1
step
'Click the red arrow on your vehicle hot bar to stop riding the skeleton mount|script VehicleExit()|outvehicle|c
step
goto 37.2,41.6
.' Click the Weeping Quarry Schedule|tip It looks like a rolled up white scroll laying on the back of this wagon, next to a bunch of wooden boxes.
.get Weeping Quarry Schedule|q 13174/4
step
goto 38.7,39.4
.' Click the Weeping Quarry Map|tip It looks like a tan piece of paper laying on a wooden box, next to a bunch of wooden boxes and a canopy.
.get Weeping Quarry Map|q 13174/3
step
goto 39.2,36.7
.' Click the Weeping Quarry Ledger|tip It looks like a rolled up white scroll laying on the corner of a wooden box, under a canopy.
.get Weeping Quarry Ledger|q 13174/2
step
goto 39.1,33.6
.' Click the Weeping Quarry Document|tip It looks like an unrolled white scroll with black writing on it, laying on the corner of a wooden box, under a canopy.
.get Weeping Quarry Document|q 13174/1
step
goto 44.1,24.5
.talk 30946
..turnin 13172
..turnin 13174
..accept 13155
step
goto 27.2,39.1
.' Click a Njorndar Proto-Drake to ride it|invehicle
step
goto 28.4,37.6
.' Use your Proto-Drake abilities near the buildings around this area to:
.' Burn 8 Vrykul Buildings|goal 8 Vrykul buildings set ablaze|q 13071/1
step
'Click the red arrow on your vehicle hot bar to stop riding the Njorndar Proto-Drake|script VehicleExit()|outvehicle|c
step
goto 19.3,47.8
.talk 31078
..fpath Death's Rise
step
goto 19.5,48.2
.talk 29344
..turnin 12806
..accept 12807
step
goto 19.5,48.2
.talk 29344
..' Tell him you would hear his tale|goal Lord-Commander Arete's tale listened to.|q 12807/1
step
goto 19.5,48.2
.talk 29344
..turnin 12807
..accept 12810
step
goto 19.7,48.4
.talk 29396
..accept 12813
step
goto 19.9,48.3
.talk 29456
..accept 12838
step
goto 9.6,44.3
.from Onslaught Harbor Guard##29330+, Onslaught Paladin##29329+, Onslaught Raven Bishop##29338, Onslaught Gryphon Rider##29333+
.collect Scarlet Onslaught Trunk Key##40652+|n
.' Use Darkmender's Tincture on the Onslaught mobs' corpses|use Darkmender's Tincture##40587
.' Transform 10 Scarlet Onslaught Corpses|goal 10 Scarlet Onslaught corpse transformed|q 12813/1
.' Click Scarlet Onslaught Trunks|tip They look like small wooden boxes on the ground around this area.
.get 5 Onslaught Intel Documents|q 12838/1
.collect Note from the Grand Admiral##40666|n
.' Click the Note from the Grand Admiral in your bags|use Note from the Grand Admiral##40666
..accept 12839
step
goto 10.5,40.8
.from Ravenous Jaws##29392|tip They are sharks in the water.
.' Use your Gore Bladder on their corpses|use Gore Bladder##40551
.' Collect 10 Blood from Ravenous Jaws|goal 10 Blood collected from Ravenous Jaws|q 12810/1
step
goto 19.5,48.2
.talk 29344
..turnin 12810
..accept 12814
..turnin 12839
..accept 12840
step
goto 19.7,48.4
.talk 29396
..turnin 12813
step
goto 19.9,48.3
.talk 29456
..turnin 12838
step
goto 8.5,44.3
.from Onslaught Gryphon Rider##29333+
.collect 1 Onslaught Gryphon Reins##40970|q 12814
step
goto 7.0,41.9
.from Captain Hartford##29490|tip Standind on the top deck of the ship, next to the wooden steering wheel.
.' Beat and kill Captain Hartford for information|goal Captain Hartford beaten for information and killed|q 12840/2
step
goto 5.7,41.9
.from Captain Welsington##29489|tip Standind on the top deck of the ship, next to the wooden steering wheel.
.' Beat and kill Captain Welsington for information|goal Captain Welsington beaten for information and killed|q 12840/1
.' Use your Onslaught Gryphon Reins in your bags|use Onslaught Gryphon Reins##40970
.' Take control of an Onslaught Gryphon|invehicle|q 12814
step
goto 19.6,47.8
.' Use the Deliver Gryphon ability on your gryphon hotbar next to Uzo Deathcaller|tip He's standing on a bunch of scattered straw on the ground.
.' Deliver the Onslaught Gryphon to Uzo Deathcaller|q 12814/1
step
goto 19.6,47.8
.talk 29405
..turnin 12814
..accept 12815
step
goto 19.5,48.2
.talk 29344
..turnin 12840
step
goto 12.5,44.4
.' Use your Bone Gryphon in your bags|use Bone Gryphon##40600
.' Ride a Bone Gryphon|invehicle|q 12815
step
goto 10.2,41.9
.' Use your Bone Gryphon abilities to:
.kill 10 Onslaught Gryphon Rider|q 12815/1
step
'Get to a safe place and click the red arrow on your vehicle hot bar to stop riding the Bone Gryphon|script VehicleExit()|outvehicle|c
step
goto 19.6,47.8
.talk 29405
..turnin 12815
step
goto 35.5,66.4
.talk 30708
..turnin 13138
..turnin 13140
..accept 13211
step
goto 35.4,66.3
.talk 30631
..accept 13152
step
'The entrance to the Sanctum of Reanimation starts here|goto 34.4,68.4,0.3|c
step
goto 34.6,67.7
.' Use Olakin's Torch on Festering Corpses|use Olakin's Torch##43524|tip They look like dead soldiers on the ground inside this cave.
.' Burn 7 Festering Corpses|goal 7 Festering Corpse burned|q 13211/1
step
goto 35.8,67.0
.' Follow the path in the cave to this spot
.' Click the Metal Stake|tip It looks like a big metal spike sticking out of the ground.
.' Free Patches|goal Patches freed|q 13152/1
.' Help Patches kill Doctor Sabnok|goal Help Patches kill Doctor Sabnok|q 13152/2
step
'Leave the Sanctum of Reanimation|goto 34.4,68.4,0.3|c
step
goto 35.4,66.3
.talk 30631
..turnin 13152
step
goto 35.5,66.4
.talk 30708
..turnin 13211
step
goto 35.4,66.3
.talk 30631
..accept 13144
step
goto 35.1,69.4
.' Click Grasping Arms|tip They look like green arms on the ground that reach up sometimes.
.' Get a Burning Skeleton minion
.' With a Burning Skeleton minion, go to 32.2,71.2
.' Stand next to Chained Abominations with your Burning Skeleton to burn them|tip They look like fat white abominations chained to the big spikes around the edge of this platform.
.' Repeat this process 2 more times
.' Burn 3 Chained Abominations|goal 3 Chained Abominations burned|q 13144
step
goto 35.4,66.3
.talk 30631
..turnin 13144
..accept 13212
step
goto 34.0,69.2
.from Corpulent Horror##30696+
.get Olakin's Torso|q 13212/1
.get Olakin's Legs|q 13212/2
.get Olakin's Left Arm|q 13212/3
.get Olakin's Right Arm|q 13212/4
step
goto 35.4,66.3
.talk 30631
..turnin 13212
..accept 13220
step
'The entrance to the Sanctum of Reanimation starts here|goto 34.4,68.4,0.3|c
step
goto 34.7,66.0
.' Click the Spool of Thread|tip It looks like a red spool with white thread wound on it, sitting on a small metal chest with a skull on it, in a small side room in the Sanctum of Reanimation.
.collect 1 Spool of Thread|q 13220
step
goto 36.6,67.6
.' Follow the path in the cave all the way to the end into the doctor's big lab.
.' Click The Doctor's Cleaver|tip It looks like a butcher's cleaver stuck in a bloody metal table.
.collect 1 The Doctor's Cleaver|q 13220
step
goto 35.6,66.7
.' Follow the path in the cave back up into the main entrance room of the cave
.' Use Crusader Olakin's Remains while standing on the big black stone slab made of skulls|use Crusader Olakin's Remains##43564
.' Revive Crusader Olakin Sainrith|goal Crusader Olakin Sainrith revived|q 13220/1
step
'Leave the Sanctum of Reanimation|goto 34.4,68.4,0.3|c
step
goto 35.4,66.3
.talk 30631
..turnin 13220
step
goto 31.8,64.8
.talk 31279
..accept 13482
.' Escort Father Kamaros to safety|goal Escort Father Kamaros to safety|q 13482/1
step
goto 49.2,73.1
.talk 32497
..turnin 13399
..accept 13400
step
goto 49.2,73.9
.' Click a Bloodstained Stone|tip They look like pointed rocks on the ground around this area.
.' Fight Illidan using your Arthas abilities|tip The best way to kill Illidan is to just keep parrying his attacks until your mana is full.  Once your mana is full, use your knockback ability, followed immediately by your Annihilate ability.  Keep repeating this process until Illidan is dead.
.' Find out the Prince's Destiny|goal The Prince's Destiny|q 13400/1
step
goto 49.2,73.1
.talk 32497
..turnin 13400
..accept 13401
step
goto 54.1,71.2
.talk 30944
..turnin 13155
..accept 13143
step
goto 55.5,71.5
.' Fight a Lithe Stalker until you see a message in your chat that it's weak|tip You can find Lithe Stalkers up on this high bridge.
.' Use your Sigil of the Ebon Blade on a weakened Lithe Stalker|use Sigil of the Ebon Blade##43315
.' Bring the Lithe Stalker off the bridge to 55.4,70.8
.' Return the Subdued Lithe Stalker|goal Subdued Lithe Stalker Returned|q 13143/1
step
goto 54.1,71.2
.talk 30944
..turnin 13143
..accept 13145
step
goto 56.1,79.8
.' Explore the Altar of Sacrifice|goal Altar of Sacrifice explored|q 13145/1
step
goto 59.0,73.8
.' Explore the Runeworks|goal Runeworks explored|q 13145/4
step
goto 58.0,71.3
.' Explore the Blood Forge|goal Blood Forge explored|q 13145/2
step
goto 60.4,68.7
.' Explore the Icy Lookout|goal Icy Lookout explored|q 13145/3
step
goto 54.1,71.2
.talk 30944
..turnin 13145
..accept 13146
..accept 13147
..accept 13160
step
goto 54.3,70.6
.' Click the Eye of Domination|tip It looks like a red globe floating above a small metal pillar.
.' Seize control of a Lithe Stalker|invehicle|q 13146
step
goto 57.7,73.7
.' Start 5 Worker Fights|q 13147/1|tip To start a Worker Fight, use your Lithe Stalker Throw Rock ability on Umbral Brutes when they get close to the skeletons around this area.
.' Deliver 4 Scourge Bomb Gifts|q 13146/1|tip The Scourge Bombs look like spiked round metal bombs on the ground around this area.  Use your Lithe Stalker Iron Chain ability on the Scourge Bombs.  Then, drag the Scourge Bombs next to Lumbering Atrocities.  Lumbering Atrocities look like abominations around this area.
step
goto 59.6,76.2
.' Use your Lithe Stalker Leap ability to jump up the cliff to this spot.
.' Destroy 12 Iceskin Sentries|goal 12 Iceskin Sentry destroyed|q 13160|tip The Iceskin Sentries look like gargoyles sitting high up on the cliff side.  Use your Lithe Stalker Leap ability to jump around to them.  Once you get close to them, use your Lithe Stalker Heave ability to destroy them.
step
'Click the red arrow on your hot bar to stop controlling a Lithe Stalker|script VehicleExit()|outvehicle|c
step
goto 54.1,71.2
.talk 30944
..turnin 13146
..turnin 13147
..turnin 13160
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 13401
..accept 13402
step
'On the Skybreaker airship:
.talk 31259
..turnin 13482
step
goto 79.8,71.8
.talk 31044
..turnin 13402
..accept 13403
step
goto 46.1,76.6
.from Cultist Acolyte##32507+
.collect 1 Cultist Acolyte's Hood##44784|q 13403
.' Use your Cultist Acolyte's Hood|use Cultist Acolyte's Hood##44784
.' Become disguised as a cultist|havebuff Ability_Rogue_MasterOfSubtlety|q 13364
step
goto 44.4,76.2
.talk 32239
..' Tell him you're ready and follow him into the cathedral
.' Watch the cut scene
.' See Tirion's Gambit|goal Tirion's Gambit|q 13403/1
step
goto 42.8,78.8|n
.' Click the Escape Portal that appears after the cut scene|goto Icecrown,80.2,70.3,0.5|noway|c
step
goto 79.8,71.8
.talk 31044
..turnin 13403
step
'Hearth to The Shadow Vault|goto Icecrown,44.0,22.2,0.5|use Hearthstone##6948|noway|c
step
goto 43.3,24.8
.talk 30216
..turnin 13071
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Argent Tournament Grounds Pre-Quests",[[
author support@zygorguides.com
description This guide section contains the pre-quests to unlock most of the daily quests in the Argent Tournament Grounds region of Icecrown.
description You will need to achieve the Crusader title, using the Crusader Title Guide section in the Icecrown section, to unlock more daily quests.
step
goto Icecrown,72.6,22.6
.talk 33849
..fpath Argent Tournament Grounds
step
goto Icecrown,69.7,22.9
.talk 33817
..accept 13667
step
goto Icecrown,76.5,19.4
.talk 33625
..turnin 13667
..accept 13828
step
goto 76.5,19.4
.talk 33646
..accept 13837
step
goto Icecrown,76.5,19.5
.talk 33647
..accept 13835
step
goto Icecrown,75.9,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Quel'dorei Steed|invehicle|q 13828
step
goto 73.2,19.2
.talk 33974
.' Listen to Valis Windchaser's advice|q 13835/1
step
goto 72.7,18.9
.talk 33972
.' Listen to Rugan Steelbelly's advice|q 13837/1
step
goto 72.5,19.3
.talk 33973
.' Listen to Jeran Lockwood's advice|q 13828/1
step
goto 72.6,19.7
.' Target a Melee Target
.' If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
.' Use your Thrust ability to attack the target 5 times|q 13828/2
step
goto 72.9,18.8
.' Target a Charge Target from a distance
.' Use Shield-Breaker ability until you notice the targets Defend is gone
.' Use your Charge ability on the Charge Target 2 times|q 13837/2
step
goto 73.1,19.0
.' Target a Ranged Target from a distance
.' Use Shield-Breaker ability on Ranged Target to bring it's shields down
.' Use Shield-Breaker ability on Ranged Target twice, while it's shields are down|q 13835/2
step
'Click the red arrow on your hotbar to stop riding the steed mount|outvehicle|q 13828
step
goto Icecrown,76.5,19.4
.talk 33625
..turnin 13828
step
goto 76.5,19.4
.talk 33646
..turnin 13837
step
goto Icecrown,76.5,19.5
.talk 33647
..turnin 13835
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Argent Tournament Grounds Aspirant Rank Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing your race's Aspirant Rank dailies
description in order to achieve Argent Tournament Grounds Valiant Rank with your own race.
daily
step
goto Icecrown,76.5,19.4
.talk 33625
..accept 13672
step
goto 76.5,19.4
.talk 33625
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13666 |daily |or
..accept 13669 |daily |or
..accept 13670 |daily |or
step
goto 76.5,19.4
.talk 33646
..accept 13671 |daily
step
goto Icecrown,76.5,19.5
.talk 33647
..accept 13625 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
..talk 33220
..get Ashwood Brand |q 13666/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13669
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13669/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13670
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13670/1
step
goto Icecrown,71.3,37.5
.from Vrykul Necrolord##31783+, Frostbrood Whelp##31718+
.kill 8 Icecrown Scourge |q 13671/1
step
goto Icecrown,75.9,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Quel'dorei Steed|invehicle|q 13625
step
goto 72.6,19.7
.' Target a Melee Target
.' If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
.' Use your Thrust ability to attack the target 5 times|q 13625/1
step
goto 72.9,18.8
.' Target a Charge Target from a distance
.' Use Shield-Breaker ability until you notice the targets Defend is gone
.' Use your Charge ability on the Charge Target 2 times|q 13625/3
step
goto 73.1,19.0
.' Target a Ranged Target from a distance
.' Use Shield-Breaker ability on Ranged Target to bring it's shields down
.' Use Shield-Breaker ability on Ranged Target twice, while it's shields are down|q 13625/2
step
goto 76.5,19.4
.talk 33625
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13666
..turnin 13669
..turnin 13670
step
goto 76.5,19.4
.talk 33646
..turnin 13671
step
goto Icecrown,76.5,19.5
.talk 33647
..turnin 13625
step
goto 76.5,19.4
.talk 33625
..turnin 13672
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Argent Tournament Grounds Valiant Rank Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing your race's Valiant Rank dailies
description in order to achieve Argent Tournament Grounds Champion Rank with your own race.
description You must have completed the Argent Tournament Grounds Aspirant Rank Dailies guide section
description in order to have access to the quests in this guide section.
daily
step
goto Icecrown,76.5,19.4
.talk 33625
..accept 13679|tip You must turn in the Up To The Challenge quest before you can accept this quest.  The Up To The Challenge quest is turned in at the end of the ARGENT TOURNAMENT GROUNDS DAILIES (ASPIRANT RANK) guide section.
step
goto 71.8,20.0
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Quel'dorei Steed|invehicle |q 13679
step
goto 71.4,19.6
.talk 33447
.' Tell him you are ready to fight!|tip Use your Defend ability on your hotbar to max your shield out at 3 charges before telling Squire David this.
.'An Argent Valiant runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Valiant|tip The best strategy to defeat the Argent Valiant is to always make sure your shield is up by using your Defend ability.  Then, use your Shield-Breaker ability to bring down the Argent Valiant's shield.  When his shield is down, use your Charge ability on him.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13679/1
step
goto 76.5,19.4
.talk 33625
..turnin 13679
..accept 13684 |only Human
..accept 13689 |only NightElf, Worgen
..accept 13685 |only Dwarf
..accept 13688 |only Gnome
..accept 13690 |only Draenei
step
goto 76.6,19.2
.talk 33225
..turnin 13684
..accept 13718
only Human
step
goto 76.3,19.1
.talk 33592
..turnin 13689
..accept 13717
only NightElf
step
goto 76.6,19.5
.talk 33312
..turnin 13685
..accept 13714
only Dwarf
step
goto 76.5,19.8
.talk 33335
..turnin 13688
..accept 13715
only Gnome
step
goto 76.1,19.2
.talk 33593
..turnin 13690
..accept 13716
only Draenei
step
goto 76.1,19.1
.talk 33593
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13752 |daily |or
..accept 13753 |daily |or
..accept 13754 |daily |or
only Draenei
step
goto 76.1,19.2
.talk 33655
..accept 13755 |daily
only Draenei
step
goto 76.2,19.1
.talk 33656
..accept 13756 |daily
..accept 13854 |daily
only Draenei
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13752/1
only Draenei
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13753
only Draenei
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13753/1
only Draenei
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13754
only Draenei
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13754/1
only Draenei
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13854
only Draenei
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13854/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13854/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13854/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Draenei
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13854
only Draenei
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13755/1
only Draenei
step
goto 76.4,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk|invehicle |q 13756
only Draenei
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13756/1
only Draenei
step
goto 76.1,19.1
.talk 33593
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13752
..turnin 13753
..turnin 13754
only Draenei
step
goto 76.1,19.2
.talk 33655
..turnin 13755
only Draenei
step
goto 76.2,19.1
.talk 33656
..turnin 13756
..turnin 13854
only Draenei
step
goto 76.6,19.5
.talk 33312
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13741 |daily |or
..accept 13742 |daily |or
..accept 13743 |daily |or
only Dwarf
step
goto 76.7,19.4
.talk 33315
..accept 13744 |daily
only Dwarf
step
goto 76.6,19.6
.talk 33309
..accept 13745 |daily
..accept 13851 |daily
only Dwarf
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13741/1
only Dwarf
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13742
only Dwarf
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13742/1
only Dwarf
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13743
only Dwarf
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13743/1
only Dwarf
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13851
only Dwarf
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13851/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13851/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13851/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Dwarf
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13851
only Dwarf
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13744/1
only Dwarf
step
goto 76.3,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram|invehicle |q 13745
only Dwarf
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13745/1
only Dwarf
step
goto 76.6,19.5
.talk 33312
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13741
..turnin 13742
..turnin 13743
only Dwarf
step
goto 76.7,19.4
.talk 33315
..turnin 13744
only Dwarf
step
goto 76.6,19.6
.talk 33309
..turnin 13745
..turnin 13851
only Dwarf
step
goto 76.6,19.1
.talk 33225
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13603 |daily |or
..accept 13600 |daily |or
..accept 13616 |daily |or
only Human
step
goto 76.5,19.1
.talk 33222
..accept 13592 |daily
only Human
step
goto 76.6,19.2
.talk 33223
..accept 13665 |daily
..accept 13847 |daily
only Human
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13603/1
only Human
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13600
only Human
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13600/1
only Human
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13616
only Human
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13616/1
only Human
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13847
only Human
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13847/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13847/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13847/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Human
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13847
only Human
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13592/1
only Human
step
goto 76.1,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed|invehicle |q 13665
only Human
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13665/1
only Human
step
goto 76.6,19.1
.talk 33225
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13603
..turnin 13600
..turnin 13616
only Human
step
goto 76.5,19.1
.talk 33222
..turnin 13592
only Human
step
goto 76.6,19.2
.talk 33223
..turnin 13665
..turnin 13847
only Human
step
goto 76.3,19.0
.talk 33592
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13757 |daily |or
..accept 13758 |daily |or
..accept 13759 |daily |or
only NightElf, Worgen
step
goto 76.3,19.0
.talk 33652
..accept 13760 |daily
only NightElf, Worgen
step
goto 76.4,19.0
.talk 33654
..accept 13761 |daily
..accept 13855 |daily
only NightElf, Worgen
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13757/1
only NightElf, Worgen
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13758
only NightElf, Worgen
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13758/1
only NightElf, Worgen
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13759
only NightElf, Worgen
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13759/1
only NightElf, Worgen
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13855
only NightElf, Worgen
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13855/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13855/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13855/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only NightElf, Worgen
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13855
only NightElf, Worgen
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13760/1
only NightElf, Worgen
step
goto 76.0,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13761
only NightElf, Worgen
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13761/1
only NightElf, Worgen
step
goto 76.3,19.0
.talk 33592
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13757
..turnin 13758
..turnin 13759
only NightElf, Worgen
step
goto 76.3,19.0
.talk 33652
..turnin 13760
only NightElf, Worgen
step
goto 76.4,19.0
.talk 33654
..turnin 13761
..turnin 13855
only NightElf, Worgen
step
goto 76.5,19.8
.talk 33335
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13746 |daily |or
..accept 13747 |daily |or
..accept 13748 |daily |or
only Gnome
step
goto 76.6,19.8
.talk 33648
..accept 13749 |daily
only Gnome
step
goto 76.5,19.9
.talk 33649
..accept 13750 |daily
..accept 13852 |daily
only Gnome
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13746/1
only Gnome
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13747
only Gnome
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13747/1
only Gnome
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13748
only Gnome
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13748/1
only Gnome
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13852
only Gnome
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13852/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13852/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13852/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only Gnome
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13852
only Gnome
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13749/1
only Gnome
step
goto 76.2,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider|invehicle |q 13750
only Gnome
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13750/1
only Gnome
step
goto 76.5,19.8
.talk 33335
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13746
..turnin 13747
..turnin 13748
only Gnome
step
goto 76.6,19.8
.talk 33648
..turnin 13749
only Gnome
step
goto 76.5,19.9
.talk 33649
..turnin 13750
..turnin 13852
only Gnome
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13718/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Human
.get 25 Valiant's Seal |q 13714/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Dwarf
.get 25 Valiant's Seal |q 13717/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only NightElf, Worgen
.get 25 Valiant's Seal |q 13715/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Gnome
.get 25 Valiant's Seal |q 13716/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Draenei
step
goto 76.6,19.2
.talk 33225
..turnin 13718
..accept 13699
only Human
step
goto 76.3,19.1
.talk 33592
..turnin 13717
..accept 13725
only NightElf, Worgen
step
goto 76.6,19.5
.talk 33312
..turnin 13714
..accept 13713
only Dwarf
step
goto 76.5,19.8
.talk 33335
..turnin 13715
..accept 13723
only Gnome
step
goto 76.1,19.2
.talk 33593
..turnin 13716
..accept 13724
only Draenei
step
goto 71.6,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed|invehicle |q 13699
only Human
step
goto 71.6,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13725
only NightElf, Worgen
step
goto 71.8,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram|invehicle |q 13713
only Dwarf
step
goto 71.9,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider|invehicle |q 13723
only Gnome
step
goto 71.7,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk|invehicle |q 13724
only Draenei
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13699/1 |only Human
.' Defeat the Argent Valiant |q 13725/1 |only NightElf, Worgen
.' Defeat the Argent Valiant |q 13713/1 |only Dwarf
.' Defeat the Argent Valiant |q 13723/1 |only Gnome
.' Defeat the Argent Valiant |q 13724/1 |only Draenei
step
goto 76.6,19.2
.talk 33225
..turnin 13699
..accept 13702
only Human
step
goto 76.3,19.1
.talk 33592
..turnin 13725
..accept 13735
only NightElf, Worgen
step
goto 76.6,19.5
.talk 33312
..turnin 13713
..accept 13732
only Dwarf
step
goto 76.5,19.8
.talk 33335
..turnin 13723
..accept 13733
only Gnome
step
goto 76.1,19.2
.talk 33593
..turnin 13724
..accept 13734
only Draenei
step
goto 69.7,22.9
.talk 33817
..turnin 13702 |only Human
..turnin 13735 |only NightElf, Worgen
..turnin 13732 |only Dwarf
..turnin 13733 |only Gnome
..turnin 13734 |only Draenei
..accept 13795 |only DeathKnight
..accept 13794 |only !DeathKnight
step
goto 73.8,20.1
.talk 33762
..turnin 13795
only DeathKnight
step
goto 70.0,23.4
.talk 33759
..turnin 13794
only !DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\ATG Champion Rank Dailies - Death Knight Only",[[
author support@zygorguides.com
description You must be a Death Knight to do the quests in this Argent Tournament Grounds guide section.
description Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.
daily
step
goto Icecrown,73.8,19.4
.talk 33769
..accept 13791 |daily
only DeathKnight
step
goto 73.8,20.1
.talk 33762
..accept 13788 |daily |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
..accept 13864 |daily
only DeathKnight
step
goto 73.6,20.1
.talk 33770
..accept 13793 |daily
only DeathKnight
step
goto 71.7,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk |invehicle |q 13793
only Draenei DeathKnight
step
goto 71.8,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram |invehicle |q 13793
only Dwarf DeathKnight
step
goto 71.6,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed |invehicle |q 13793
only Human DeathKnight
step
goto 71.6,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13793
only NightElf DeathKnight, Worgen DeathKnight
step
goto 71.9,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13793
only Gnome DeathKnight
step
goto 71.6,23.8
.' Talk to the riders on mounts around this area
.' Tell them you are ready to fight!
.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.get 4 Mark of the Champion |q 13793/1
only DeathKnight
step
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13793
only DeathKnight
step
goto 64.3,21.4
.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
.kill 15 Cult of the Damned member |q 13791/1
only DeathKnight
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13864
only DeathKnight
step
goto 50.1,74.8
.kill 3 Boneguard Commander |q 13864/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only DeathKnight
step
goto 48.9,71.4
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13864
only DeathKnight
step
'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only DeathKnight
step
goto 44.1,32.6
.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
.kill Chillmaw |q 13788/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
.kill 3 Cultist Bombardier |q 13788/2
only DeathKnight
step
goto 73.8,19.4
.talk 33769
..turnin 13791
only DeathKnight
step
goto 73.8,20.1
.talk 33762
..turnin 13788
..turnin 13864
only DeathKnight
step
goto 73.6,20.1
.talk 33770
..turnin 13793
only DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\ATG Champion Rank Dailies - Non-Death Knight Only",[[
author support@zygorguides.com
description You must NOT be a Death Knight to do the quests in this Argent Tournament Grounds guide section.
description Also, you must have completed the Argent Tournament Grounds Valiant Rank Dailies guide section.
daily
step
goto Icecrown,69.9,23.3
.talk 33771
..accept 13790 |daily
only !DeathKnight
step
goto 70.0,23.4
.talk 33759
..accept 13682 |daily |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
..accept 13861 |daily
only !DeathKnight
step
goto 69.9,23.5
.talk 33763
..accept 13789 |daily
only !DeathKnight
step
goto 71.7,22.4
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk |invehicle |q 13790
only Draenei Warrior,Draenei Paladin,Draenei Hunter,Draenei Priest,Draenei Shaman,Draenei Mage
step
goto 71.8,22.5
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram |invehicle |q 13790
only Dwarf Warrior,Dwarf Paladin,Dwarf Hunter,Dwarf Rogue,Dwarf Priest,Dwarf Death Knight
step
goto 71.6,22.4
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed |invehicle |q 13790
only Human Warrior,Human Paladin,Human Rogue,Human Priest,Human Death Knight,Human Mage,Human Warlock
step
goto 71.6,22.5
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13790
only NightElf Warrior,NightElf Hunter,NightElf Rogue,NightElf Priest,NightElf Death Knight,NightElf Druid
only Worgen Warrior,Worgen Hunter,Worgen Rogue,Worgen Priest,Worgen Death Knight,Worgen Druid
step
goto 71.9,22.5
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13790
only Gnome Warrior,Gnome Rogue,Gnome Death Knight,Gnome Mage,Gnome Warlock
step
goto 71.6,23.8
.' Talk to the riders on mounts around this area
.' Tell them you are ready to fight!
.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.get 4 Mark of the Champion |q 13790/1
only !DeathKnight
step
'Click the red arrow on your hotbar to get off your mount |outvehicle |q 13790
only !DeathKnight
step
goto 64.3,21.4
.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
.kill 15 Cult of the Damned member |q 13789/1
only !DeathKnight
step
'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only !DeathKnight
step
goto 44.1,32.6
.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
.kill Chillmaw |q 13682/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
.kill 3 Cultist Bombardier |q 13682/2
only !DeathKnight
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse |invehicle |q 13861
only !DeathKnight
step
goto 50.1,74.8
.kill 3 Boneguard Commander |q 13861/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only !DeathKnight
step
goto 48.9,71.4
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13861
only !DeathKnight
step
goto 69.9,23.3
.talk 33771
..turnin 13790
only !DeathKnight
step
goto 70.0,23.4
.talk 33759
..turnin 13682
..turnin 13861
only !DeathKnight
step
goto 69.9,23.5
.talk 33763
..turnin 13789
only !DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Argent Tournament Grounds Crusader Dailies",[[
author support@zygorguides.com
description In order to be able to complete the quests in this guide section, you must already be Exalted
description with the Ironforge, Stormwind City, Exodar, Darnassus and Gnomeregan.
description Also, you must have already become a Champion with each of those factions,
description using the Crusader Title Guide in the Icecrown section of the Dailies guide.
daily
step
goto Icecrown,69.5,23.1
.talk 34882
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..accept 14105 |daily |or
..accept 14101 |daily |or
..accept 14102 |daily |or
..accept 14104 |daily |or
step
goto 69.5,23.1
.talk 35094
.' You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
..accept 14108 |daily |or
..accept 14107 |daily |or
step
goto 64.2,21.4
.kill Deathspeaker Kharos |q 14105/1 |tip He's standing in a small pit area.
step
goto 51.1,38.4
.' Click Discarded Soul Crystals |tip They look like small blue-glowing crystals laying on the ground around this area.
.collect 6 Discarded Soul Crystal##47035 |n
.' Use your Light-Blessed Relic on Fallen Hero's Spirits |use Light-Blessed Relic##47033
.' Bless 6 Fallen Hero's Spirits |q 14107/1
step
goto Hrothgar's Landing,43.9,24.3
.' Use your Mistcaller's Charm while standing inside this cave, next to the blue floating crystal |use Mistcaller's Charm##47009
.kill Mistcaller Yngvar |q 14102/1
step
goto Hrothgar's Landing,50.7,15.4
.' Use Kvaldir War Horn next to the bonfire |use Kvaldir War Horn##47006
.kill Drottinn Hrothgar |q 14101/1
step
goto Hrothgar's Landing,58.5,31.6
.' Use your Captured Kvaldir Banner on the deck of the Bor's Fury ship |use Captured Kvaldir Banner##47029
.kill Ornolf the Scarred |q 14104/1
step
goto Icecrown,69.8,22.2
.' Click a Stabled Argent Hippogryph to ride it
.' Use your Flaming Spears on North Sea Kraken and Kvaldir Deepcallers while flying |use Flaming Spears##46954
.kill 6 Kvaldir Deepcaller |q 14108/2
.' Hurl Spears at 6 North Sea Kraken |q 14108/1
step
goto 69.5,23.1
.talk 34882
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..turnin 14105
..turnin 14101
..turnin 14102
..turnin 14104
step
goto 69.5,23.1
.talk 35094
.' You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
..turnin 14108
..turnin 14107
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\ATG Black Knight Quest Chain",[[
author support@zygorguides.com
description This Argent Tournament Grounds guide section unlocks a Champion Rank group daily quest.
description We recommend you complete the Argent Tournament Grounds Valiant Rank Dailies guide section,
description and achieve Champion Rank with your race, before doing this quest chain.
description Starting this quest chain when you are already Champion Rank will allow you to do the entire quest chain
description without having to switch back and forth between guide sections, allowing you to get it done much faster and more efficiently.
description You will be unable to get some quests in this quest chain if you are not already at Champion Rank with The Argent Tournament Grounds.
step
goto Icecrown,69.4,23.0
.talk 33417
..accept 13633
step
goto 76.2,19.7
.talk 33970
..home Silver Covenant Pavilion
step
goto 72.6,22.6
.talk 33849
..' Fly to Dalaran |goto Dalaran |noway |c |q 13633
step
goto Dalaran,40.1,62.8|n
.' Click the Dalaran Portal to Stormwind City |goto Stormwind City |noway |c |q 13633
step
goto Stormwind City,71.0,72.5
|fly Sentinel Hill
step
goto Westfall,42.1,69.7
.' Click the Dusty Journal |tip It's a blue open book laying on the floor inside this house.
.get Dusty Journal |q 13633/1
step
'Hearth to Silver Covenant Pavilion |goto Icecrown,76.2,19.6,0.5 |use Hearthstone##6948 |noway |c |q 13633
step
goto Icecrown,69.4,23.0
.talk 33417
..turnin 13633
..accept 13641
step
goto Crystalsong Forest,46.5,42.2
.from Unbound Seer##33422+
..get Seer's Crystal |q 13641/1
step
goto Icecrown,69.4,23.0
.talk 33417
..turnin 13641
..accept 13643
step
goto 79.4,23.1
.' Click Sir Wendell's Grave
.' Investigate Sir Wendell Balfour's Death |q 13643/1
step
goto 79.6,23.6
.' Click Lorien's Grave
.' Investigate Lorien Sunblaze's Death |q 13643/2
step
goto 79.6,22.8
.' Click Connall's Grave
.' Investigate Connall Irongrip's Death |q 13643/3
step
goto 69.4,23.0
.talk 33417
..turnin 13643
..accept 13654
step
goto Crystalsong Forest,39.9,58.8
.from Skeletal Woodcutter##33499+
.collect 1 Large Femur##45080 |q 13654
step
goto 38.3,59.5
.' Use your Large Femur on Maloric while standing behind him |use Large Femur##45080
.' Loot Maloric
.get Murderer's Toolkit |q 13654/1
step
goto Icecrown,69.4,23.0
.talk 33417
..turnin 13654
..accept 13663
step
goto 77.8,21.6
.' Use your Enchanted Bridle next to the Black Knight's Gryphon |use Enchanted Bridle##45083
.' Take the Black Knight's Gryphon |q 13663/1 |tip He will take you to an island.
step
goto 54.1,8.6
.' Click the Stolen Tournament Invitation |tip It looks like a flat scroll laying on top of a wooden barrel in this tiny house.
.get Stolen Tournament Invitation |q 13663/2
.' Click the Black Knight's Orders |tip It looks like a rolled up scroll laying on a small wooden crate in this tiny house.
.get Black Knight's Orders |q 13663/3
step
goto 69.4,23.0
.talk 33417
..turnin 13663
..accept 13664
step
goto 72.3,22.6
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Argent Warhorse|invehicle |q 13664
step
goto 71.3,23.2
.talk 33522
..'Ask him to summon the Black Knight.
.' The Black Knight will run up to you on his gryphon
.' Fight the Black Knight |tip This is a really easy fight, but it has 2 phases.  For the first phase, use your abilities to fight him in jousting.  After you've almost killed him, he will get off his gryphon and challenge you to fight him in hand-to-hand combat.  You will automatically dismount your horse, so don't click the red arrow button.  Once you are dismounted from your horse, make sure to equip your weapon again, so you can fight him.  Then, just fight him like a normal mob and kill him.
.kill The Black Knight |q 13664/1
step
goto 69.4,23.0
.talk 33417
..turnin 13664
..accept 14016
step
goto 79.5,23.3
.' Stand next to the tombstone that has a purple and pink swirl around it
.from Cult Assassin##35127|tip You must stay near the tombstone for it to complete
.' Investigate the Black Knight's Grave |q 14016/1
step
goto 69.4,23.0
.talk 33417
..turnin 14016
..accept 14017
step
goto 61.5,22.6
.from Doctor Kohler##35113
.get Doctor Kohler's Orders |q 14017/1
step
goto 69.4,23.0
.talk 33417
..turnin 14017
step
'Congratulations! You've reached the end of this section.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\The Skybreaker",[[
author support@zygorguides.com
daily
step
map Icecrown
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 30344
..accept 13333 |daily
step
'On the Skybreaker airship:
.talk 29799
..accept 13289 |daily
..accept 13323 |daily
..accept 13344 |daily
step
'On the Skybreaker airship:
.talk 31259
..accept 13300 |daily
step
'On the Skybreaker airship:
.talk 32302
..accept 13336 |daily
step
'On the Skybreaker airship:
.talk 30345
..accept 13292 |daily
..accept 13322 |daily
step
goto Icecrown,55.2,29.1
.' Use your Diluted Cult Tonic|use Diluted Cult Tonic##44307|tip This gives you a buff that allows you to collect Tainted Essences from dead cultists in Aldur'thar.  If you lose the buff, use this again.
.from Void Summoner##32259+, Shadow Channeler##32262+
.collect 10 Tainted Essence##44301|n
.' Use a Tainted Essence to combine them|use Tainted Essence##44301
..collect 1 Writhing Mass##44304|q 13322
.' Use your Rod of Siphening on the Enslaved Minion corpses|use Rod of Siphening##44433
.collect 5 Dark Matter##44434|q 13344
step
goto 53.8,33.6
.' Click the Summoning Stone
.' Summon the Dark Messenger|goal Dark Messenger summoned|q 13344/1
step
goto 49.1,34.2
.' Use your Writhing Mass next to the big cauldron|use Writhing Mass##44304
.' Banish the Writhing Mass|goal Writhing Mass Banished|q 13322/1
step
goto 53.9,46.1
.from Bitter Initiate##32238
.collect 3 Orb of Illusion|q 13323
step
goto 54.3,45.6
.' Use your Orbs of Illusion on Dark Subjugators|use Orb of Illusion##44246
.' Drag and drop 3 Dark Subjugators|goal 3 Dark Subjugators dragged and dropped|q 13323/1
step
goto 43.3,58.2
.' Use the Dart Gun on Orgrim's Hammer Scouts|use Dart Gun##44222|tip They are flying up in the air on purple dragons.
.' When they hit the ground, fly down and loot their bodies|tip There are elites and grouped mobs on the ground.
..get 6 Orgrim's Hammer Dispatch##44220+|q 13333/1
step
goto 56.0,57.6
.' Talk to Saronite Mine Slaves
..' Tell them they're free, get out of here!
.' Rescue 10 Saronite Mine Slaves|goal 10 Saronite Mine Slave rescued|q 13300/1
step
goto 57.3,57.0
.from Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
.kill 20 Ymirheim Vrykul|q 13336/1
step
goto 69.8,62.9
.from Hulking Abomination##31140+
.collect Chilled Abomination Guts|n
.' Use your Abomination Reanimation Kit|use Abomination Reanimation Kit##43968
.' With your control Abomination, go to 69.1,61.6|n
.' Use your Burst at the Seams ability to explode the mobs around this area|petaction Burst at the Seams
.' Keep repeating this process until you:
.' Explode 15 Icy Ghouls|goal 15 Icy Ghouls Exploded|q 13289/1
.' Explode 15 Vicious Geists|goal 15 Vicious Geists|q 13289/2
.' Explode 15 Risen Alliance Soldiers|goal 15 Risen Alliance Soldiers Exploded|q 13289/3
step
goto 69.9,64.3
.' Click Abandoned Armor|tip They look like metal armor chestpieces laying on the ground around this area.
.collect 3 Abandoned Armor##43616|q 13292
.' Click Abandoned Helm|tip They look like metal helmets laying on the ground around this area.
.collect 3 Abandoned Helm##43610|q 13292
.' Click Piles of Bones|tip They look like small piles of bones laying on the ground around this area.
.collect 3 Pile of Bones##43609|q 13292
step
goto 68.8,67.5
.' Use Smuggled Solution 3 times|use Smuggled Solution##44048
.' Frostbrood Skytalons Destroyed|goal 3 Field Tests Conducted|q 13292/1
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 30344
..turnin 13333
step
'On the Skybreaker airship:
.talk 29799
..turnin 13289
..turnin 13323
..turnin 13344
step
'On the Skybreaker airship:
.talk 31259
..turnin 13300
step
'On the Skybreaker airship:
.talk 32302
..turnin 13336
step
'On the Skybreaker airship:
.talk 30345
..turnin 13292
..turnin 13322
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\The Valley of Lost Hope",[[
author support@zygorguides.com
daily
step
goto Icecrown,62.6,51.3
.talk 31808
..accept 13309 |daily
step
goto Icecrown,62.5,51.1
.talk 31737
..accept 13284 |daily
step
'Follow the Alliance troops up the mountain and help them fight
.'Escort the Alliance troops into Ymirheim |q 13284/1 |tip At least 4 Alliance troops must survive.
step
goto 62.6,51.3
.talk 31808
..turnin 13284
step
goto 62.6,50.9
.' Click the Skybreaker Suppression Turret to control the gun on the airplane|invehicle
step
'You will fly off in the airplane:
.' Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around|petaction Suppression Charge
.' Drop 4 Skybreaker Infiltrators |q 13309/1
step
goto 62.6,51.3
.talk 31808
..turnin 13309
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Ymirheim",[[
author support@zygorguides.com
daily
step
goto Icecrown,57.0,62.6
.talk 31776
..accept 13280 |daily
step
goto 57.0,62.6
.' Click Geargrinder's Jumpbot to get in the robot |invehicle |q 13280
step
goto 54.9,60.1
.' Use your Jump Jets ability to jump up the mountain to this spot|petaction Jump Jets |tip This spot is the peak of the mountain.
.' Use your Plant Alliance Battle Standard ability next to the Ymirheim Peak Skulls |petaction Plant Alliance Battle Standard |tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
.' Plant the Alliance Battle Standard |q 13280/1
step
'Click the red arrow button on your vehicle hotbar to get out of the robot |script VehicleExit() |outvehicle |c
step
goto 57.0,62.5
.talk 31776
..turnin 13280
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Aldur'thar: The Desolation Gate",[[
author support@zygorguides.com
daily
step
goto Icecrown,54.0,42.9
.talk 32444
..accept 13382 |daily
step
goto 54.0,43.1
.talk 31648
.' Tell her to give you a bomber!|invehicle|q 13382
step
'You fly off in an airplane:
.' Use the 3 different modes on the right side of your hotbar to shoot rockets, drop bombs, or repair your airplane
.' Shoot rockets at the gargoyles and sentries that fly around you (you have to aim it)
..kill 20 Gargoyle Ambusher|q 13382/2
..kill 12 Frostbrood Sentries|q 13382/4
.' Drop bombs on the mobs below
..kill 50 Bombardment Infantry|q 13382/1
..kill 12 Scourge War Machines|q 13382/3
.' Use your Charge Shield ability to keep your airplane's defense up
.' Use your Fight Fire ability to put out fires on your airplane
step
'Click the red arrow to get out of the plane|script VehicleExit()|outvehicle|c|q 13382
step
goto 54.0,42.9
.talk 32444
..turnin 13382
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Shadowvault Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the Shadowvault region of Icecrown.
daily
step
goto Icecrown,42.8,24.9
.talk 29804
..accept 12995 |daily
step
goto 43.6,25.1
.talk 30074
..accept 13069 |daily
step
goto 43.1,25.2
.talk 30216
..accept 13071 |daily
step
goto 33.0,23.9
.' Click a Jotunheim Rapid-Fire Harpoon to control it |invehicle |q 13069
step
'Use your Jotunheim Rapid-Fire Harpoon abilities to shoot at the Jotunheim Proto-Drakes that fly around this area
.' Shoot down 15 Jotunheim Proto-Drakes & Their Riders |q 13069/1
step
.' Click the red arrow on your hotbar to stop controlling the Jotunheim Rapid-Fire Harpoon |outvehicle |q 13069
step
goto 33.0,27.0
.from Njorndar Spear-Sister##30243+, Jotunheim Warrior##29880+, Valhalas Vargul##30250+
.' Use your Ebon Blade Banner on the Jotunheim vrykul corpses|use Ebon Blade Banner##42480
.' Plant 15 Ebon Blade Banners near vrykul corpses |q 12995/1
step
goto 27.2,39.1
.' Click a Njorndar Proto-Drake to ride it|invehicle |q 13071
step
goto 28.4,37.6
.' Use your Proto-Drake abilities near the buildings around this area to:
.' Burn 8 Vrykul Buildings |q 13071/1
step
'Click the red arrow on your vehicle hot bar to stop riding the Njorndar Proto-Drake|script VehicleExit()|outvehicle|c |q 13071
step
goto 42.8,24.9
.talk 29804
..turnin 12995
step
goto 43.6,25.1
.talk 30074
..turnin 13069
step
goto 43.1,25.2
.talk 30216
..turnin 13071
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Death's Rise Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the Death's Rise region of Icecrown.
daily
step
goto Icecrown,19.7,48.4
.talk 29396
..accept 12813 |daily
step
goto 19.9,48.3
.talk 29456
..accept 12838 |daily
step
goto 19.6,47.8
.talk 29405
..accept 12815 |daily
step
goto 9.6,44.3
.from Onslaught Harbor Guard##29330+, Onslaught Paladin##29329+, Onslaught Raven Bishop##29338, Onslaught Gryphon Rider##29333+
.collect Scarlet Onslaught Trunk Key##40652+|n
.' Use Darkmender's Tincture on the Onslaught mobs' corpses|use Darkmender's Tincture##40587
.' Transform 10 Scarlet Onslaught Corpses |q 12813/1
.' Click Scarlet Onslaught Trunks|tip They look like small wooden boxes on the ground around this area.
.get 5 Onslaught Intel Documents|q 12838/1
step
'Use your Bone Gryphon in your bags while in Onslaught Harbor|use Bone Gryphon##40600
.' Ride a Bone Gryphon|invehicle|q 12815
step
goto 10.2,41.9
.' Use your Bone Gryphon abilities to:
.kill 10 Onslaught Gryphon Rider|q 12815/1
step
'Get to a safe place and click the red arrow on your vehicle hot bar to stop riding the Bone Gryphon|script VehicleExit()|outvehicle|c |q 12815
step
goto Icecrown,19.7,48.4
.talk 29396
..turnin 12813
step
goto 19.9,48.3
.talk 29456
..turnin 12838
step
goto 19.6,47.8
.talk 29405
..turnin 12815
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\The Silver Covenant Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests
description for The Silver Covenant faction in the Argent Tournament Grounds area of Icecrown.
daily
step
goto Icecrown,76.3,19.6
.talk 34880
.' You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
..accept 14074 |daily |or 2
..accept 14152 |daily |or 2
..accept 14140 |daily |or 2
..accept 14077 |daily |or 2
..accept 14096 |daily |or 2
step
goto 76.2,19.6
.talk 34912
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 14076 |daily |or
..accept 14090 |daily |or
..accept 14112 |daily |or
step
goto 64.0,21.5
.from Dark Ritualist##34734+, Dark Zealot##34728+
.collect 4 Black Cage Key##46895 |n
.' Click Black Cages |tip They look like big sqaure cages around this area.
.' Rescue 4 Captive Aspirants |q 14096/2
step
goto 64.0,21.5
.from Dark Ritualist##34734+, Dark Zealot##34728+
.collect 1 Black Cage Key##46895 |q 14096
step
goto 60.8,23.2
.' Click the Black Cage |tip It looks like big sqaure cage up on this platform.
.' Rescue Kul the Reckless |q 14096/1
step
goto 67.0,8.1
.' Click a Bucket of Fresh Chum |tip They looks like wooden buckets on the deck of this ship.
.collect 6 Fresh Chum##47036 |q 14112
step
goto 66.8,9.5
.' Use the Fresh Chum in your bags |use Fresh Chum##47036
.from North Sea Sharks|tip They spawn underwater around this area when you use the Fresh Chum.
.get 3 North Sea Shark Meat |q 14112/1
step
goto Hrothgar's Landing,50.4,49.3
.kill 8 Kvaldir Berserker |q 14152/1
.kill 3 Kvaldir Harpooner |q 14152/2
step
goto 43.3,27.5
.' Click Stolen Tallstrider Legs |tip They look like chicken legs laying on objects and on the ground around this area.
.from Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
.get 10 Stolen Tallstrider Leg |q 14074/1
step
goto 46.5,32.8
.from Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
.' Kill 10 Kvaldir |q 14080/1
step
goto 46.5,32.8
.' Use your Confessor's Prayer Book on Slain Tualiq Villagers |use Confessor's Prayer Book##46870 |tip They look like dead walrus men corpses around this area.
.' Administer 8 Last Rites |q 14077/1
step
goto The Storm Peaks,40.5,53.3
.' Use your Earthshaker Drum next to the piles of snow on the ground |use Earthshaker Drum##46893
.from Deep Jormungar##34920 |tip They spawn after using your Earthshaker Drum next to the piles of snow.
.get 4 Jormungar Egg Sac |q 14076/1
step
goto 42.8,81.3
.' Use your Weighted Net on Snowblind Followers |use Weighted Net##46885
.' Capture 8 Snowblind Followers |q 14090/1
step
goto Icecrown,76.3,19.6
.talk 34880
.' You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
..turnin 14074
..turnin 14152
..turnin 14140
..turnin 14077
..turnin 14096
step
goto 76.2,19.6
.talk 34912
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 14076
..turnin 14090
..turnin 14112
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Sholazar Basin\\Sholazar Basin Pre-Quests",[[
author support@zygorguides.com
description This guide section contains the pre-quests to unlock the ability to complete daily quests
description for The Oracles and Frenzyheart Tribe factions in Sholazar Basin.
step
goto Sholazar Basin,50.5,62.1
.talk 28568
..accept 12654
step
goto 50.5,77.3
.from Pitch##28097
.get Pitch's Remains |q 12654/1
step
goto 50.5,76.6
.talk 28095
..accept 12528
step
goto 55,69.1
.talk 28082
..turnin 12528
..accept 12529
step
'Talk to Goregek the Gorilla Hunter who is following you
..accept 12530
step
goto 57.5,73.3
.kill 8 Hardknuckle Forager |q 12529/1
step
goto 61.1,71.7
.kill 6 Hardknuckle Charger |q 12529/2
step
goto 66.9,73.2
.' Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467 |tip Softknuckles are baby gorillas.
.' A Hardknuckle Matriarch will spawn eventually
.kill 1 Hardknuckle Matriarch |q 12530/1
step
goto 55,69.1
.talk 28082
..turnin 12529
..turnin 12530
..accept 12533
step
goto 55.5,69.7
.talk 28138
..accept 12534
step
goto 59.6,75.8
.kill 6 Sapphire Hive Wasp |q 12533/1
.kill 9 Sapphire Hive Drone |q 12533/2
step
goto 59.4,79.1|n
.' The path down to The Sapphire Queen starts here |goto 59.4,79.1,0.3 |noway |c
step
'Follow the path down to 57.1,79.3 |goto 57.1,79.3
.from Sapphire Hive Queen##28087
.get Stinger of the Sapphire Queen |q 12534/1
step
'Go outside to 55.0,69.1|goto 55.0,69.1
.talk 28082
..turnin 12533
..turnin 12534
step
goto 55.5,69.7
.talk 28138
..accept 12532
step
'They are all around the village
.' Click the Chicken Escapees
.get 12 Captured Chicken |q 12532/1
step
goto 55.5,69.7
.talk 28138
..turnin 12532
..accept 12531
step
goto 55,69.1
.talk 28082
..accept 12535
step
goto 56.6,84.6
.' Click the Skyreach Crystal Formations |tip They look like white crystal cluster on the ground along the river bank.
.get 8 Skyreach Crystal Cluster |q 12535/1
step
goto 49.8,85
.from Serfex the Reaver##28083
.get Claw of Serfex |q 12531/1
step
goto 55,69.1
.talk 28082
..turnin 12531
..turnin 12535
..accept 12536
step
goto 57.3,68.4
.talk 28298
..'Tell him let's do this
.' Travel to Mistwhisper Refuge |q 12536/1
step
'When you jump off the crocodile:
.talk 28668
..turnin 12536
..accept 12537
..accept 12538
step
goto 45.4,37.2
.' Use your Skyreach Crystal Clusters next to the stone monument |use Skyreach Crystal Clusters##38510 |tip It's a tall rectangle stone monument.
.' Click the Arranged Crystal Formation that appears
.' Sabotage the Mistwhisper Weather Shrine |q 12537/1
step
goto 45.5,39.8
.' Kill 12 Mistwhisper Gorlocs |q 12538/1
step
'Use Zepik's Hunting Horn if Zepik is not standing next to you: |use Zepik's Hunting Horn##38512
.talk 28216
..turnin 12537
..turnin 12538
..accept 12539
step
goto 55,69.1
.talk 28082
..turnin 12539
..accept 12540
step
goto 55.7,64.9
.talk 28217
..' Pull it to its feet
.' Kill the crocodile that spawns
.' Locate the Injured Rainspeaker Oracle |q 12540/1
step
goto 55.7,64.9
.talk 28217
..turnin 12540
..accept 12570
..'Tell him you are ready to travel to his village now.
.' Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1
step
goto 54.6,56.3
.talk 28027
..turnin 12570
..accept 12571
step
'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
.talk 28120
..accept 12572
step
goto 57.5,52.4
.kill 1 Venomtip |q 12571/2 |tip He walks back and forth on this small path near the waterfall.
step
goto 52.4,53.2
'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
.' Stand on top of the twinkles of light on the ground around this area
.' Lafoo will dig up the treasure
.' Click the random items that appear on the ground
.get 6 Shiny Treasures |q 12572/1
.kill 10 Emperor Cobra |q 12571/1
step
goto 54.6,56.3
.talk 28027
..turnin 12571
..accept 12573
..turnin 12572
step
goto 51.3,64.6
.talk 28315
..'Tell him you brought an offering
.' Extend the Peace Offering to Shaman Vekjik |q 12573/1
step
goto 50.5,62.1
.talk 28568
..turnin 12654
step
goto 54.6,56.3
.talk 28027
..turnin 12573
..accept 12574
step
goto 42.1,38.6
.talk 28114
..turnin 12574
..accept 12575
..accept 12576
step
goto 40.4,26.4
.kill 8 Frenzyheart Spearbearer |q 12576/1
.kill 6 Frenzyheart Scavenger |q 12576/2
step
goto 41.3,19.8
.kill 1 Warlord Tartek |q 12575/1 |tip He comes walking up on a red dragon.
step
goto 41.6,19.5
.' Click the Mistwhisper Treasure |tip It's a yellow glowing floating orb, hovering over a tree stump altar.
.get Mistwhisper Treasure |q 12575/2
step
goto 42.1,38.6
.talk 28114
..turnin 12575
..turnin 12576
..accept 12577
step
goto 54.6,56.3
.talk 28027
..turnin 12577
..accept 12578
step
goto 75.3,54.1
.' Travel to Mosswalker Village |q 12578/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12578
..accept 12580
..accept 12579
step
goto 75.4,52.4
.talk 28113
.' Rescue 6 Mosswalker Victims |q 12580/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12580
step
goto 68.9,54.6
.' Click Lifeblood Shards on the ground |tip They look like small red crystals on the ground around this area.
.get 10 Lifeblood Shard |q 12579/1
step
goto 54.5,56.6
'You can also use Moodle's Stress Ball if you have it in your bags:|use Moodle's Stress Ball##38624
.talk 28122
..turnin 12579
..accept 12581
step
goto 70.8,58.7
.' Enter the cave here
.' Follow the path inside the cave up to 72.2,57.3
.kill Artruis the Heartless |q 12581/1 |tip Kill either Zepik the Gorloc Hunter or Jaloot that spawn during the fight.  Killing Zepik the Gorloc Hunter will make you allied with The Oracles.  Killing Jaloot will make you allied with the Frenzyheart Tribe.
.' Click Artruis's Phylactery that spawns after the fight
..turnin 12581
.' If you kill Zepik the Gorloc Hunter:
..talk 28668
...accept 12582 |daily
...accept 12692
.' If you kill Jaloot:
..talk 28667
...accept 12689 |daily
...accept 12695
step
goto 54.6,56.4
.talk 28027
..turnin 12695
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Sholazar Basin\\Frenzyheart Tribe Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests for the Frenzyheart Tribe faction in Sholazar Basin.
daily
step
'If you are not allied with the Frenzyheart Tribe, you must fight an elite mob, Artruis the Heartless (on the next step of the guide) and, at the end of the fight, kill the Oracles mob, Jaloot, and you will become allied with the Frenzyheart Tribe.
step
goto Sholazar Basin,70.8,58.7 |n
.' Enter the cave here |goto Sholazar Basin,70.8,58.7,0.5 |noway |c
only if rep ('Frenzyheart Tribe') < Friendly
step
'Follow the path inside the cave up to 72.2,57.3
.from Artruis the Heartless##28659 |tip Kill Jaloot that spawns during the fight.  Killing Jaloot will make you allied with the Frenzyheart Tribe.
.talk 28668
..accept 12582 |daily |instant
..accept 12692 |only if not ZGV.completedQuests[12692]
only if rep ('Frenzyheart Tribe') < Friendly
step
goto 55.5,69.7
.talk 28138
..turnin 12692 |only if not ZGV.completedQuests[12692]
..accept 12702 |daily
.' Tell him you need to find Goregek
.collect Goregek's Shackles##38619 |q 12702
step
goto 55.7,69.5
.talk 29043
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..accept 12758 |daily |or
..accept 12734 |daily |or
..accept 12741 |daily |or
..accept 12732 |daily |or
step
goto 55.5,68.7
.talk 29146
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 12703 |daily |or
..accept 12760 |daily |or
..accept 12759 |daily |or
step
'They are all around the village
.' Use your Chicken Net on the Chicken Escapees if you cannot catch them easily |use Chicken Net##38689
.' Click the Chicken Escapees
.get 12 Captured Chicken |q 12702/1
step
goto 33.1,47.3
.from Venture Co. Ruffian##28124+, Venture Co. Excavator##28123+
.collect Venture Co. Explosives##39651 |q 12758
step
goto 26.0,35.4
.from Stormwatcher##28877+
.' Use your Venture Co. Explosives on a Stormwatcher's corpse |use Venture Co. Explosives##39651
.' Click the Stormwatcher's Head that spawns
.get Stormwatcher's Head |q 12758/1
step
goto 59.7,70.9
.from Hardknuckle Charger##28096+
.' Use Rejek's Blade on a Hardknuckle Charger's corpse |use Rejek's Blade##39577
.' Blood your Blade on a Hardknuckle Charger |q 12734/2
step
goto 59.3,75.7
.from Sapphire Hive Wasp##28086+
.' Use Rejek's Blade on a Sapphire Hive Wasp's corpse |use Rejek's Blade##39577
.' Blood your Blade on a Sapphire Hive Wasp |q 12734/1
step
goto 43.1,40.4
.from Mistwhisper Warrior##28109+, Mistwhisper Oracle##28110+
.' Use Rejek's Blade on 3 Mistwhisper mob's corpse |use Rejek's Blade##39577
.' Blood your Blade on 3 Mistwhisper Members |q 12734/3
step
goto 26.5,35.1
.from Aqueous Spirit##28862+
.collect 3 Essence of the Monsoon##39616 |q 12741
.from Storm Revenant##28858+
.collect 3 Essence of the Storm##39643 |q 12741
step
goto 22.4,33.8
.' Stand right up next to the tall stone altar |tip You may even need to rub against, or stand next to it so that you are touching it.
.' Feel the True Power of the Tempest |q 12741/1
step
goto 59.7,23.9
.from Goretalon Matriarch##29044 |tip It looks like a white eagle perched up on a hill, next to a nest with 1 egg in it.
.collect Matriarch's Heartblood##39573 |q 12732
step
goto 33.8,52.1
.' Use Rejek's Vial while standing in the water at the top of the Suntouched Pillar |use Rejek's Vial##39574
.collect Suntouched Water##39576 |n
.' Click the Suntouched Water in your bags |use Suntouched Water##39576
.get Suntouched Heartblood |q 12732/1
step
goto 31.6,69.5
.from Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
.collect Oracle Blood##39265 |q 12703
step
goto 23.3,83.0
.' Use your Oracle Blood next to the Altar of Kartak |use Oracle Blood##39265 |tip The Altar of Kartak has a big skull on top of it, with long curved horns.  There are 3 small fires at the base of the altar, also.
.' Take Control of Kartak |invehicle |c |q 12703
step
goto 30.7,78.0
.' Use Kartak's abilities to kill Oracle mobs around this area
.kill 50 Sparktouched Gorloc |q 12703/1
step
goto 30.1,70.7
.from Sparktouched Warrior##28111+, Sparktouched Oracle##28112+
.' Kill 30 Sparktouched Gorlocs |q 12760/1
step
goto 24.0,83.1
.' Click Zepik's Trap Stash |tip Zepik's Trap Stash looks like a small brown chest on the ground, next to some wiry stick huts.
.collect Spike Bomb##39697 |q 12759
.collect Ensnaring Trap##39695 |q 12759
.collect Volatile Trap##39696 |q 12759
step
goto 28.4,76.1
.' Use your Spike Bomb |use Spike Bomb##39697
.' Use your Ensnaring Trap |use Ensnaring Trap##39695
.' Use your Volatile Trap |use Volatile Trap##39696
.' Use your traps near Oracles mobs around this area
.' Kill 50 Sparktouched Gorlocs |q 12759/1
step
goto 23.4,83.3
.talk 28106
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 12703
..turnin 12760
..turnin 12759
step
goto 55.5,69.7
.talk 28138
..turnin 12702
step
goto 55.7,69.5
.talk 29043
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..turnin 12758
..turnin 12734
..turnin 12741
..turnin 12732
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Sholazar Basin\\The Oracles Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests for the The Oracles faction in Sholazar Basin.
daily
step
'If you are not allied with the The Oracles, you must fight an elite mob, Artruis the Heartless (on the next step of the guide) and, at the end of the fight, kill the Frenzyheart Tribe mob, Zepik, and you will become allied with the The Oracles.
step
goto Sholazar Basin,70.8,58.7 |n
.' Enter the cave here |goto Sholazar Basin,70.8,58.7,0.5 |noway |c
only if rep ('The Oracles') < Friendly
step
'Follow the path inside the cave up to 72.2,57.3
.from Artruis the Heartless##28659 |tip Kill Zepik the Gorloc Hunter that spawns during the fight.  Killing Zepik the Gorloc Hunter will make you allied with the The Oracles.
.talk 28667
..accept 12689 |daily |instant
..accept 12695 |only if not ZGV.completedQuests[12695]
only if rep ('The Oracles') < Friendly
step
goto 54.6,56.4
.talk 28027
..turnin 12695 |only if not ZGV.completedQuests[12695]
..accept 12704 |daily
.' Tell him you need to find Lafoo
.collect Lafoo's Bug Bag##38622 |q 12704
step
goto 53.3,56.5
.talk 29006
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..accept 12735 |daily |or
..accept 12737 |daily |or
..accept 12736 |daily |or
..accept 12726 |daily |or
step
goto 54.2,53.8
.talk 29149
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 12761 |daily |or
..accept 12762 |daily |or
..accept 12705 |daily |or
step
goto 52.4,53.2
'Use Lafoo's Bug Bag if Lafoo is not standing next to you:|use Lafoo's Bug Bag##38622
.' Stand on top of the twinkles of light on the ground around this area
.' Lafoo will dig up the treasure
.' Click the random items that appear on the ground
.get 6 Shiny Treasures|q 12704/1
step
goto 42.7,42.8
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Atha |q 12735/1
step
goto 49.4,62.7
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Ha-Khalan |q 12735/2
step
goto 48.8,70.5
.' Use your Chime of Cleansing in this spot |use Chime of Cleansing##39572
.kill Spirit of Koosu |q 12735/3
step
goto 26.2,37.1
.' Use your Horn of Fecundity next to Soaked Fertile Dirt piles |use Horn of Fecundity##39599
.' Play the Song of Fecundity 8 Times |q 12737/1
step
goto 50.0,37.4
.' Use your Didgeridoo of Contemplation at the top of The Glimmering Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Glimmering Pillar |q 12736/1
step
goto 33.6,52.3
.' Use your Didgeridoo of Contemplation at the top of The Suntouched Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Suntouched Pillar |q 12736/4
step
goto 36.4,74.7
.' Use your Didgeridoo of Contemplation at the top of The Mosslight Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Mosslight Pillar |q 12736/2
step
goto 53.3,79.4
.' Use your Didgeridoo of Contemplation at the top of The Skyreach Pillar |use Didgeridoo of Contemplation##39598
.' Contemplate at the Skyreach Pillar |q 12736/3
step
goto 26.2,37.1
.' Use your Drums of the Tempest to take control of Haiphoon, the Great Tempest |use Drums of the Tempest##39571
.' Haiphoon has 2 forms: Water and Air |tip When in Haiphoon's Water form, use Haiphoon's abilities to fight Storm Revenants around this area.  When the Storm Revenants are weak, use Haiphoon's Devour Wind ability to eat them.  When in Haiphoon's Air form, use Haiphoon's abilities to fight Aqueous Spirits around this area.  When the Aqueous Spirits are weak, use Haiphoon's Devour Water ability to eat them.  After eating an elemental, you will take on Haiphoon's matching form of that elemental you last ate.  Keep repeating this process.
.' Devour 3 Aqueous Spirits |q 12726/1
.' Devour 3 Storm Revenants |q 12726/2
step
goto 33.0,75.7
.' Click the Sparktouched Crystal Defenses |tip It looks like a small bamboo chest sitting at the base of a tree, next to a small hut.
.collect 1 Crystal of the Violent Storm##39694 |q 12761
.collect 1 Crystal of Unstable Energy##39693 |q 12761
.collect 1 Crystal of the Frozen Grip##39689 |q 12761
step
goto 22.2,78.0
.' Use your Crystal of the Frozen Grip |use Crystal of the Frozen Grip##39689
.' Use your Crystal of the Violent Storm |use Crystal of the Violent Storm##39694
.' Use your Crystal of Unstable Energy |use Crystal of Unstable Energy##39693
.' Use your crystals near Frenzyheart mobs around this area
.' Kill 50 Frenzyheart Attackers |q 12761/1
step
goto 65.5,60.2
.' Use your Dormant Polished Crystal at the top of the Lifeblood Pillar, next to the big red crystal |use Dormant Polished Crystal##39747
.get Energized Polished Crystal |q 12762/2
step
goto 22.2,78.0
.' Use your Energized Polished Crystal |use Energized Polished Crystal##39748 |tip This will give you a buff that will heal you a lot every time you do damage to an enemy, so you can fight a LOT of mobs at once.
.' Kill 30 Frenzyheart Attackers |q 12762/1
step
goto 22.9,76.0
.from Frenzyheart Ravager##28078+, Frenzyheart Hunter##28079+
.collect 1 Tainted Crystal##39266 |q 12705
step
goto 33.7,75.0
.' Use your Tainted Crystal next to the tall stone altar |use Tainted Crystal##39266
.' Take control of Soo-holu |invehicle |c |q 12705
step
goto 22.2,78.0
.' Use Soo-holu's abilities to kill Frenzyheart mobs around this area
.kill 50 Frenzyheart Attacker |q 12705/1
step
goto 33.5,74.8
.talk 28107
..turnin 12761
..turnin 12762
..turnin 12705
step
goto 53.3,56.5
.talk 29006
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..turnin 12735
..turnin 12737
..turnin 12736
..turnin 12726
step
goto 54.6,56.4
.talk 28027
..turnin 12704
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\The Storm Peaks\\The Storm Peaks Full Zone Quest Path (Includes Pre-Quests)",[[
author support@zygorguides.com
description This guide section contains the quest path for the entire The Storm Peaks zone,
description which includes the pre-quests to unlock the daily quests in the Brunnhildar Village,
description Dun Niffelem (The Sons of Hodir), Frosthold, and K3 regions of The Storm Peaks.
step
goto The Storm Peaks,41,86.4
.talk 29431
..turnin 12853
..accept 12818
step
home K3
step
goto 41.1,86.1
.talk 29473
..accept 12843
..accept 12844
step
goto 40.9,85.3
.talk 29428
..accept 12827
..accept 12836
step
goto 40.8,84.5
.talk 29721
..fpath K3
step
goto 39.8,86.4
.click Charred Wreckage##6866
.get 10 Charred Wreckage|q 12818/1
step
goto 35,83.8
.from Savage Hill Scavenger##29404+, Savage Hill Brute##29623+
.click Dried Gnoll Rations##335
.get 16 Dried Gnoll Rations|q 12827/1
step
goto 30.3,85.7
.kill Gnarlhide##30003|q 12836/1
step
goto 41,86.4
.talk 29431
..turnin 12818
..accept 12819
step
goto 40.9,85.3
.talk 29428
..turnin 12827
..turnin 12836
..accept 12828
step
goto 35.1,87.8
.click Sparksocket's Tools##1209
.get Sparksocket's Tools|q 12819/1
step
goto 41,86.4
.talk 29431
..turnin 12819
..accept 12826
step
goto 40.9,85.3
.talk 29428
..turnin 12826
..accept 12820
step
goto 43.1,81.2
.' Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676|tip Garm Invaders and Snowblind Followers will run over the mines and die.
.kill 12 Garm Attackers|q 12820/1
'|modelnpc 29619
'|modelnpc 29618
step
goto 41.7,80
.talk 29430
..accept 12829
..accept 12830
step
goto 41.7,80
.click the U.D.E.D. Dispenser##2029
.' Retrieve a bomb from the dispenser
.collect U.D.E.D.##40686|q 12828
step
'Go to [43.9,79.0] quickly
.' Use your U.D.E.D. on an Ironwool Mammoth|use U.D.E.D.##40686|tip They walk around this area spread out.
.click  Mammoth Meat##2951
.get 8 Hearty Mammoth Meat|q 12828/1
step
.' Go into the cave |goto 40.4,77.8 |noway|c
.kill 12 Crystalweb Spiders |q 12829/1
'|modelnpc 29412
step
goto 41.5,74.9
.talk 29434
..accept 12831
step
goto 44,75.9
.kill Snowblind Diggers##29413 |n
.get 5 Impure Saronite Ore|q 12830/1
step
goto 47.1,72.3
.from Icetip Crawler##29461
.get 1 Icetip Venom Sac|q 12831/1
step
goto 43.5,75.2
.talk 29434
..turnin 12831
..accept 12832
step
goto 43.5,75.2
.talk 29434
..'Tell the miner you're ready
.' Escort the Injured Goblin Miner to K3|goal Escort the Injured Goblin Miner to K3.|q 12832/1
step
'Fly up to [39.8,73.3]
.kill Sifreldar Storm Maiden##29323+ |n
.collect 5 Cold Iron Key##40641|n
.click Rusty Cage##7469+
.' Free 5 Goblin Prisoners|goal 5 Goblin Prisoner freed|q 12843/1
.click K3 Equipment##335
.get 8 K3 Equipment|q 12844/1
step
goto 41.7,80
.talk 29430
..turnin 12829
..turnin 12830
step
goto 40.9,85.3
.talk 29428
..turnin 12820
..turnin 12828
..turnin 12832
..accept 12821
step
goto 41.1,86.1
.talk 29473
..turnin 12843
..accept 12846
..turnin 12844
step
goto 45.1,82.4
.click Transporter Power Cell##8099
.get Transporter Power Cell|q 12821/2
step
goto 50.7,81.9
.' Use your Transporter Power Cell next to the Teleportation Pad|use Transporter Power Cell##40731|tip It looks like a tall machine with a fan in the bottom of it.
.' Activate the Garm Teleporter|goal Garm Teleporter Activated|q 12821/1
step
goto 40.9,85.3
.talk 29428
..turnin 12821
..accept 12822
step
goto 50.0,81.8
.talk 29432
..accept 12823
step
'Go inside the cave to [50.5,77.8]
.' Use your Hardpacked Explosive Bundle next to Frostgut's Altar|use Hardpacked Explosive Bundle##41431|tip It's a stone altar with a bunch of melted red candles on it.  Follow the path in the cave that spirals up all the way to the top of the cave to find it.
.kill Tormar Frostgut##29626 |q 12823/2
step
goto 48.1,81.9
.kill 6 Garm Watcher##29409+ |q 12822/1
.kill 8 Snowblind Devotee##29407+ |q 12822/2
step
'Go outside and go to [50.0,81.8]
.talk 29432
..turnin 12823
..accept 12824
step
Fly up into the cave to [42.8,68.9]
.talk 29481
..turnin 12846
..accept 12841
step
goto 44.2,68.9
.from Overseer Syra##29518
.get 1 Runes of the Yrkvinn|q 12841/1
step
goto 42.8,68.9
.talk 29481
..turnin 12841
..accept 12905
step
goto 44.4,68.9
.talk 29885
..turnin 12905
..accept 12906
step
goto 44.8,70.3
.' Use your Disciplining Rod on Exhausted Vrykul|use Disciplining Rod##42837|tip They are sitting on the ground inside these side tunnels inside this mine.
.' Discipline 6 Exhausted Vrykul|goal 6 Exhausted Vrykul Disciplined|q 12906/1
'|modelnpc 30146
step
goto 44.4,68.9
.talk 29885
..turnin 12906
..accept 12907
step
goto 45.4,69.1
.kill 1 Garhal##30147 |q 12907/1
step
goto 44.4,68.9
.talk 29885
..turnin 12907
..accept 12908
step
goto 42.8,68.9
.talk 29481
..turnin 12908
..accept 12921
step
.' Follow the path in the mine east out to the other side to [47.5,69.1]
.talk 29975
..turnin 12921
..accept 12969
step
goto 48.2,69.8
.talk 30154
.' Tell her to skip the warmup
.kill 1 Agnetta Tyrsdottar##30154 |q 12969/1
step
goto 47.5,69.1
.talk 29975
..turnin 12969
..accept 12970
step
goto 47.5,69.1
.talk 29975
..'Ask her about her proposal
.' Listen to Lok'lira's proposal|goal Listen to Lok'lira's proposal|q 12970/1
step
goto 47.5,69.1
.talk 29975
..turnin 12970
..accept 12971
step
goto 51,66.4
.talk 30012
.kill 6 Victorious Challenger##30012+ |q 12971/1
step
goto 47.5,69.1
.talk 29975
..turnin 12971
..accept 12972
step
goto 48.4,72.1
.talk 29997
..accept 12942
..accept 12968
step
goto 48.4,72.1
.talk 30041
..accept 12925
step
goto 53.1,65.7
.talk 29592
..turnin 12972
..accept 12851
step
goto 53.1,65.7
.clicknpc Icefang##29598
.' While riding Icefang, use the Flaming Arrow ability on your hotbar to shoot arrows at the Frostworgs and Frost Giants|petaction Flaming Arrow
.' Burn 7 Frostworgs|goal 7 Frostworgs Burned|q 12851/1
.' Burn 15 Frost Giants|goal 15 Frost Giants Burned|q 12851/2
'|modelnpc 29358
'|modelnpc 29351
step
goto 53.1,65.7
.talk 29592
..turnin 12851
..accept 12856
step
'Fly to 63.9,62.5|goto 63.9,62.5
.click Captive Proto-Drake##29708
.' Use your Ice Shard ability on the Brunnhildar Prisoners|petaction Ice Shard|tip The Brunnhildar Prisoners look like blue blocks of ice around this area on the ground.
.' When your Proto-Drake is holding 3 Brunnhildar Prisoners, start flying toward Brunnhildar Village, the drake will eventually go on autopilot.  Repeat this process 2 more times.
.' Rescue 9 Brunnhildar Prisoners|goal 9 Rescued Brunnhildar Prisoners|q 12856/1
.' Free 3 Proto-Drakes|goal 3 Freed Proto-Drakes|q 12856/2
'|modelnpc 29639
step
goto 53.1,65.7
.talk 29592
..turnin 12856
..accept 13063
step
goto 49.7,71.8
.talk 29839
..turnin 13063
..accept 12900
step
goto 47.9,74.7
.kill Icemane Yeti##29875+|n
.get 3 Icemane Yeti Hide|q 12900/1
step
goto 49.7,71.8
.talk 29839
..turnin 12900
..accept 12983
..accept 12989
step
goto 55.8,63.9
.'Kill 8 Ravenous Jormungar##29605+ |q 12989/1 |tip They are inside the cave.
step
goto 54.8,60.4
.clicknpc Injured Icemaw Matriarch##29563
.' The bear runs back to Brunnhildar Village
.' Rescue the Icemaw Matriarch |goal Icemaw Matriarch Rescued|q 12983/1
step
goto 49.7,71.8
.talk 29839
..turnin 12983
..accept 12996
..turnin 12989
step
'Use your Reins of the Warbear Matriarch outside the building to ride a bear|invehicle|c|use Reins of the Warbear Matriarch##42481
step
goto 50.8,67.7
.' Use the abilities on your hotbar to fight Kirgaraak|tip He's a big white yeti.
.' Defeat Kirgaraak|goal Kirgaraak Defeated|q 12996/1
'|modelnpc 29352
step
'Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
step
goto 49.7,71.8
.talk 29839
..turnin 12996
..accept 12997
step
goto 49.1,69.4
.' Use your Reins of the Warbear Matriarch inside The Pit of the Fang to ride a bear|use Reins of the Warbear Matriarch##42499
.' Use the abilities on your hotbar to fight Hyldsmeet Warbears
.kill 6 Hyldsmeet Warbear##30174+ |q 12997/1
step
'Click the red arrow to get off the bear|script VehicleExit()|outvehicle|c
step
goto 49.7,71.8
.talk 29839
..turnin 12997
..accept 13061
step
goto 47.5,69.1
.talk 29975
..turnin 13061
..accept 13062
step
goto 50.9,65.6
.talk 29796
..turnin 13062
..accept 12886
step
'You fly off on a drake and start flying in circles around a tower:
.' Use your Hyldnir Harpoon in your bags on Hyldsmeet Proto-Drakes to harpoon over to a new drake|use Hyldnir Harpoon##41058
.kill Hyldsmeet Drakerider##29694+ |n
.' Repeat this process 9 more times
.' Defeat 10 Hyldsmeet Drakeriders |goal 10 Hyldsmeet Drakerider Defeated|q 12886/1
step
'They look like light fixtures on the side of the stone columns.
.' Use your Hyldnir Harpoon in your bags on a Column Ornament to get off the drake|outvehicle|c|use Hyldnir Harpoon##41058
step
goto 33.4,58
.talk 29445
..turnin 12886
..accept 13064
step
goto 33.4,58
.talk 29445
..'Ask him what became of Sif
.' Hear Thorim's History|goal Thorim's History Heard|q 13064/1
step
goto 33.4,58
.talk 29445
..turnin 13064
..accept 12915
step
goto 27.3,63.7
.kill 12 Nascent Val'kyr##29570+ |q 12942/1
.kill Valkyrion Aspirant##29569+ |n
.collect 6 Vial of Frost Oil##41612|q 12925
step
goto 23.7,58.3
.' Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs|use Vial of Frost Oil##41612|tip They look like brown spiked eggs sitting in the yellow water around this area.
.' Try to get 6 at a time
.' Destroy 30 Plagued Proto-Drake Eggs|goal 30 Plagued Proto-Drake Egg|q 12925/1
'|model 3891
step
goto 24,61.8
.kill Yulda the Stormspeaker##30046 |q 12968/1
.click Harpoon Crate##8217
..accept 12953
step
goto 26,59.8
.clicknpc Valkyrion Harpoon Gun##30066
.' Use the Flaming Harpoon ability on your hotbar to shoot the tan bundles of straw near buildings and in wagons around this area|petaction Flaming Harpoon
.' Start 6 Fires|goal 6 Fires Started|q 12953/1
step
'Click the red arrow to get off the gun|script VehicleExit()|outvehicle|c
step
'Hearth to K3|goto The Storm Peaks,41.0,85.9,0.5|use Hearthstone##6948|noway|c
step
goto 40.9,85.3
.talk 29428
..turnin 12824
..turnin 12822
..accept 12833
step
goto 43.1,81.2
.' Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676|tip Garm Invaders and Snowblind Followers will run over the mines and die.
.kill 12 Garm Invader|q 12833/1
'|modelnpc 29619
'|modelnpc 29618
step
goto 40.9,85.3
.talk 29428
..turnin 12833
step
goto 48.4,72.1
.talk 30041
..turnin 12925
step
goto 48.4,72.1
.talk 29997
..turnin 12942
..turnin 12968
..turnin 12953
step
goto 75.8,63
.click Granite Boulder##7750+
.' Use Thorim's Charm of Earth on the Stormforged Iron Giants|use Thorim's Charm of Earth##41505
.' Help the dwarves kill them
.kill 5 Stormforged Iron Giant##29375+  |q 12915/2
.collect Slag Covered Metal##41556 |q 12922 |future |n
.use Slag Covered Metal##41556
..accept 12922
step
goto 75.4,63.5
.from Seething Revenant##29504+
.get 10 Furious Spark|q 12922/1
step
goto 77.2,62.9
.click Granite Boulder##7750
.' Use Thorim's Charm of Earth on Fjorn|use Thorim's Charm of Earth##41505|tip He's a huge fire giant, holding a huge smithing hammer.
.' Help the dwarves kill him
.kill Fjorn##29503 |q 12915/1
step
goto 77.2,62.9
.click Fjorn's Anvil##7481
..turnin 12922
..accept 12956
step
goto 33.4,58
.talk 29445
..turnin 12956
..turnin 12915
..accept 12924
step
goto 62.6,60.9
.talk 32571
..fpath Dun Niffelem
step
goto 65.4,60.2
.talk 30105
..accept 12966
step
goto 75.4,63.6
.talk 30099
..turnin 12966
..accept 12967
step
goto 75.7,63.9
.clicknpc Snorri##30123 |invehicle |c
step
goto 76.7,63.4
.' Use the Gather Snow ability on your hotbar to gather snow from Snowdrifts|petaction Gather Snow|tip The Snowdrifts look like piles of snow on the ground.
.' Use the Throw Snowball ability on your hotbar to throw the snow at Seething Revenants|petaction Throw Snowball
.kill 10 Seething Revenant##30120+ |q 12967/1
step
'Click the red arrow on your hotbar to leave Snorri|script VehicleExit()|outvehicle|c
step
goto 75.4,63.6
.talk 30099
..turnin 12967
step
goto 63.2,63.2
.talk 30127
..turnin 12924
..accept 13009
step
goto 63.2,62.9
.click Fjorn's Anvil##7481
..accept 12981
step
goto 65.4,60.2
.talk 30105
..accept 12975
step
goto 69.7,60.2
.kill Brittle Revenant##30160+ |n
.collect 6 Essence of Ice##42246 |q 12981
step
goto 75.3,62.8
.' Use your Essences of Ice next to Smoldering Scraps|use Essence of Ice##42246
.click  Frozen Iron Scrap##8231+
.get 6 Frozen Iron Scrap|q 12981/1
step
goto 72.1,49.4
.click Horn Fragment##8222+
.get 8 Horn Fragment|q 12975/1
step
goto 65.4,60.2
.talk 30105
..turnin 12975
..accept 12976
step
goto 63.2,63.2
.talk 30127
..turnin 12976
step
goto 63.2,62.9
.click Fjorn's Anvil##7481+
..turnin 12981
step
goto 64.1,65.1
.click Hodir's Horn##7352
..accept 12977
step
goto 72.1,51.8
.kill Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+ |n
.' Use Hodir's Horn on their corpses|use Hodir's Horn##42164
.' Free 5 Niffelem Forefathers|goal 5 Niffelem Forefather freed|q 12977/1
.' Free 5 Restless Frostborn|goal 5 Restless Frostborn freed|q 12977/2
step
goto 64.1,65.1
.click Hodir's Horn##7352
..turnin 12977
step
goto 63.2,63.2
.talk 30127
..accept 12985
step
goto 65.4,60.2
.talk 30105
..accept 13011
step
goto 69.7,58.9
.' Use your Diamond Tipped Pick on Dead Iron Giants|use Diamond Tipped Pick##42424
.kill Stormforged Ambusher##30208+ |n
.get 8 Stormforged Eye|q 12985/1
step
goto 63.2,63.2
.talk 30127
..turnin 12985
..accept 12987
step
goto 64.3,59.2
.' Fly to the tip of this ice spike
.' Use the Tablets of Pronouncement in your bags|use Tablets of Pronouncement##42442
.' Mount Hodir's Helm|goal Hodir's Helm Mounted|q 12987/1
step
goto 63.2,63.2
.talk 30127
..turnin 12987
step
goto 64.2,59.2
.click Hodir's Helm##8221+
..accept 13006
step
goto 55.6,63.4
.kill Viscous Oil##30325+ |n
.get 5 Viscous Oil|q 13006/1
.' Use your Everfrost Razor on Dead Icemaw Bears|use Everfrost Razor##42732
.collect 1 Icemaw Bear Flank##42733|q 13011
'|modelnpc 30292
step
goto 54.7,60.8
.' Follow the path inside the cave to this spot
.' Use your Icemaw Bear Flank while standing on the small frozen pond with a bunch of rocks on it|use Icemaw Bear Flank##42733
.kill 1 Jormuttar##30340 |q 13011/1
step
goto 33.4,58
.talk 29445
..turnin 13009
..accept 13050
step
goto 43.7,67.4
.click Small Proto-Drake Egg##7398+
.get 5 Small Proto-Drake Egg|q 13050/1
.' You can find more Small Proto-Drake Eggs at [45.2,66.9] |n
step
goto 33.4,58
.talk 29445
..turnin 13050
..accept 13051
step
goto 38.7,65.6
.' Stand in this big nest
.' use the Stolen Proto-Dragon Eggs in your bags|use Stolen Proto-Dragon Eggs##42797
.' Lure Veranus|goal Veranus Lured|q 13051/1
step
goto 33.4,58
.talk 29445
..turnin 13051
..accept 13010
step
goto 64.2,59.2
.click Hodir's Helm##8221
..turnin 13006
step
goto 65.4,60.2
.talk 30105
..turnin 13011
step
goto 65.4,60.2
.talk 30105
..'Ask him what has become of Krolmir
.' Discover Krolmir's Fate|goal Krolmir's Fate Discovered|q 13010/1
step
goto 71.4,48.8
.talk 30390
..turnin 13010
..accept 13057
step
goto 56.3,51.4
.talk 30295
..turnin 13057
..accept 13005
..accept 13035
step
goto 57.3,46.7
.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
.' Fight mobs around this area
.kill 7 Iron Sentinel##29984+ |q 13005/1
.kill 20 Iron Dwarf Assailant##29978+ |q 13005/2
step
goto 55.3,43.3
.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
.kill Eisenfaust##30341 |q 13035/1
step
goto 48.6,45.6
.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
.kill Halefnir the Windborn##30376 |q 13035/2
step
goto 45,38.1
.' Use your Horn of the Peaks to summon earthen helpers|use Horn of the Peaks##42840
.kill Duronn the Runewrought##30353 |q 13035/3
step
goto 56.3,51.4
.talk 30295
..turnin 13005
..turnin 13035
..accept 13047
step
goto 35.9,31.5
.talk 30399
..'Tell him you are with him
.' Witness the Reckoning|goal Witness the Reckoning|q 13047/1
step
goto 65.4,60.2
.talk 30105
..turnin 13047
step
goto 40.9,85.3
.talk 29428
..accept 12862
step
goto 40.9,85.3
.talk 29428
..'Tell her you are ready to head further into Storm Peaks
.'You will fly to Frosthold|goto 28.6,74.6,0.5|noway|c
step
goto 29.5,74.3
.talk 29750
..fpath Frosthold
step
goto 29.5,74.1
.talk 29650
..accept 12854
step
goto 29.4,73.8
.talk 29743
..accept 12863
step
goto 28.8,74.1
.talk 29744
..turnin 12862
..accept 12870
step
goto 28.7,74.4
home Frosthold
step
goto 29.2,74.9
.talk 29727
..turnin 12863
..accept 12864
step
goto 29.8,75.7
.talk 29732
..accept 12865
step
goto 36.4,77.3
.talk 29811
..'Ask him if he is okay
.' Locate the Missing Scout|goal Locate Missing Scout|q 12864/1
step
goto 46.5,68.3
.kill Vrykuls |n
.' Get 10 Relics of Ulduar|goal 10 Relic of Ulduar|q 12870/1
step
'Go outside to 44.5,60.4|goto 44.5,60.4
.kill Ice Steppe Rhino##29469+, Ice Steppe Bull##30445+ |n
.collect 8 Fresh Ice Rhino Meat##41340|q 12865
step
goto 36.1,64.1
.click Disturbed Snow##5333
.get Burlap-Wrapped Note|q 12854/1
step
goto 33.2,73.7
.' Use your Fresh Ice Rhino Meat on Stormcrest Eagles at the top of this mountain|use Fresh Ice Rhino Meat##41340
.' Feed 8 Stormcrest Eagles|goal 8 Stormcrest Eagles fed|q 12865/1
'|modelnpc 29854
step
goto 29.5,74.1
.talk 29650
..turnin 12854
..accept 12855
step
goto 28.8,74.1
.talk 29744
..turnin 12870
step
goto 29.2,74.9
.talk 29727
..turnin 12864
..accept 12866
step
goto 29.8,75.7
.talk 29732
..turnin 12865
..accept 12867
step
goto 33,66.8
.click Eagle Egg##1867+
.get 15 Stormcrest Eagle Egg|q 12867/1
.kill 8 Frostfeather Screecher##29792+ |q 12866/1
.kill 8 Frostfeather Witch##29793+ |q 12866/2
step
goto 36.4,64.1
.' Use the Frosthound's Collar in your bags next to this broken down tent|use Frosthound's Collar##41430
.' Use the abilities on your hotbar to keep the dwarves away from you
.' Track down the thief|goal Track down thief|q 12855/1
step
goto 48.5,60.8
.kill Tracker Thulin##29695 |q 12855/2
.collect Brann's Communicator##40971|q 12871
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
..turnin 12855
..accept 12858
step
goto 37.6,43.5
.kill Library Guardian##29724 |n
.collect 6 Inventor's Disk Fragment##41130|n
.' Click the Inventor's Disk Fragments in your bags to combine them|use Inventor's Disk Fragment##41130
.get The Inventor's Disk|q 12858/1
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
..turnin 12858
..accept 12860
step
goto 38.5,44.2
.' Use The Inventor's Disk on Databanks|use The Inventor's Disk##41179|tip They look like floating round star things.
.' Gather 7 Hidden Data|goal 7 Hidden Data gathered|q 12860/1
'|modelnpc 29746
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
..turnin 12860
..accept 13415
step
goto 37.4,46.8
.click Inventor's Library Console##8177
..turnin 13415
..accept 12872
step
'Click the Charged Disk in your bags|use Charged Disk##44704
.from Archivist Mechaton##29775
.get Norgannon's Shell|q 12872/1
step
'Use Brann's Communicator in your bags|use Brann's Communicator##40971
.talk 29579
..turnin 12872
..accept 12871
..accept 12885
step
goto 30.6,36.3
.talk 29950
..fpath Bouldercrag's Refuge
step
'Go inside the building to 31.4,38.1|goto 31.4,38.1
.talk 29801
..turnin 12885
..accept 12930
step
'Hearth to Frosthold|goto The Storm Peaks,28.7,74.4,0.5|use Hearthstone##6948|noway|c
step
goto 29.4,73.8
.talk 29743
..turnin 12871
..accept 12873
step
goto 29.2,74.9
.talk 29727
..turnin 12866
step
goto 29.8,75.7
.talk 29732
..turnin 12867
step
goto 30.31,74.8
.talk 29593
..turnin 12873
..accept 12874
step
goto 29.8,75.7
.talk 29732
..'Tell him you are ready for your test|goto The Storm Peaks,53.5,35.1,0.5|c
step
goto 53.6,35.1
.click Battered Storm Hammer##1107
.collect Battered Storm Hammer##42624|q 12874
step
goto 53.5,37.9
.' Use your Battered Storm Hammer on The Iron Watcher repeatedly|use Battered Storm Hammer##42624
.' While he is stunned, run away so the Hammer can recharge
.' When his health is low enough, he will run to the end of the bridge. Throw your hammer one last time and he will fall off
.kill The Iron Watcher##30142 |q 12874/1
step
goto 30.31,74.8
.talk 29593
..turnin 12874
..accept 12875
step
goto 29.8,75.7
.talk 29732
..accept 12876
step
goto 27.0,66.9|n
.' The path to An Experienced Guide and Unwelcome Guests starts here|goto The Storm Peaks,27.0,66.9,0.2|noway|c
step
goto 26.3,66.7
.kill 10 Stormforged Invaders|q 12876/1
.from Stormforged Pillager##29586+, Stormforged Loreseeker##29843+
.get 5 Frostweave Cloth|q 12930/2
step
goto 25.2,68.5
.talk 29751
..turnin 12875
..accept 12877
step
goto 27.1,67.3
.from the Stormforged Monitor##29862
.get Frostgrip's Signet Ring|q 12877/1
step
goto 39.6,59.8
.talk 30052
..turnin 12877
..accept 12986
step
goto 52.6,56.9
.' Use Creteus's Mobile Databank at the top of this temple|use Creteus's Mobile Databank##42679
.' Investigate the Temple of Winter|goal Temple of Winter Investigated|q 12986/2
step
goto 64.3,46.7
.' Use Creteus's Mobile Databank in this broken temple|use Creteus's Mobile Databank##42679
.' Investigate the Temple of Life|goal Temple of Life Investigated|q 12986/3
step
goto 53.5,42.3
.' Use Creteus's Mobile Databank Databank at the top of this temple|use Creteus's Mobile Databank##42679
.' Investigate the Temple of Order|goal Temple of Order Investigated|q 12986/4
step
goto 45.6,49.2
.' Use Creteus's Mobile Databank Databank at the top of this temple|use Creteus's Mobile Databank##42679
.' Investigate the Temple of Invention|goal Temple of Invention Investigated|q 12986/1
step
goto 39.6,59.8
.talk 30052
..turnin 12986
..accept 12878
step
goto 41.5,62.1|n
.' The path to The Hidden Relic starts here|goto The Storm Peaks,41.5,62.1,0.2|noway|c
step
goto 44.5,64.5
.click The Guardian's Charge##1387
..turnin 12878
..accept 12879
step
goto 38.2,61.7
.talk 30082
..turnin 12879
..accept 12880
step
goto 39.6,56.4
.talk 30382
..turnin 12880
..accept 12973
step
.click Brann's Flying Machine##34120
.kill the dwarves that jump on the plane as you fly|n
.' Accompany Brann Bronzebeard to Frosthold|goal Accompany Brann Bronzebeard to Frosthold. |q 12973/1
step
goto 30.3,74.8
.talk 30401
..turnin 12973
step
goto 29.8,75.7
.talk 29732
..turnin 12876
..accept 12869
step
goto 44.6,59.8
.' Use the abilities on your hotbar to fight Stormpeak Wyrms flying in the air around this area
.kill 16 Stormpeak Wyrm##29753+ |q 12869/1
step
goto 29.8,75.7
.' Click the red arrow on your hotbar to get off the eagle|script VehicleExit()
.talk 29732
..turnin 12869
step
goto 28.3,29.4
.click Enchanted Earth##8194
.get 7 Enchanted Earth|q 12930/1
step
goto 31.4,38.1
.talk 29801
..turnin 12930
..accept 12931
..accept 12937
step
home Bouldercrag's Refuge
step
goto 28.1,36.7
.from Stormforged Raider##29377+, Stormforged Reaver##29382+ |n
.kill 10 Stormforged Attacker|q 12931/1
.' Use your Telluric Poultice on Fallen Earthen Defenders|use Telluric Poultice##41988
.' Heal 8 Fallen Earthen Defenders|goal 8 Fallen Earthen Defenders healed|q 12937/1
'|modelnpc 30035
step
goto 31.4,38.1
.talk 29801
..turnin 12931
..turnin 12937
..accept 12957
..accept 12964
step
'Go inside the mine to 27.5,49.7|goto 27.5,49.7
.kill 3 Stormforged Taskmaster##29369+ |q 12957/2
.talk 29384
.' Attempt to free 8 Captive Mechagnomes|goal 8 Attempt to free Captive Mechagnome|q 12957/1
.clicknpc Ore Cart##25986
.get 5 Dark Ore Sample|q 12964/1
step
goto 31.4,38.1
.talk 29801
..turnin 12957
..turnin 12964
..accept 12965
step
goto 31.3,38.2
.talk 30152
..accept 12978
step
goto 25,42.9
.from Stormforged Champion##29370+, Stormforged Magus##29374+, Stormforged War Golem##29380+
.kill 10 Nidavelir Stormforged|q 12978/1
step
goto 24,42.6
.click Loken's Fury##8224
.' Destroy Loken's Fury |q 12965/1
step
goto 26.2,47.7
.click Loken's Power##8224
.' Destroy Loken's Power |q 12965/2
step
goto 24.6,48.4
.click Loken's Favor##8224
.' Destroy Loken's Favor |q 12965/3
step
goto 25,42.9
.from Stormforged War Golem##29380+, Stormforged Champion##29370+, Stormforged Magus##29374+
.kill 10 Nidavelir Stormforged|q 12978/1
.from Stormforged War Golem##29380+
.collect 1 Dark Armor Plate##42203|n
.' Click the Dark Armor Plate in your bags |use Dark Armor Plate##42203
..accept 12979
step
goto 28.7,43.3
.from Stormforged War Golem##29380+
..get 4 Dark Armor Sample |q 12979/1
step
goto 31.4,38.1
.talk 29801
..turnin 12965
step
goto 31.3,38.2
.talk 30152
..turnin 12978
..turnin 12979
..accept 12980
step
'The entrance to Mimir's Workshop starts here |goto 33.6,39.6,0.5 |c
step
goto 32.0,40.7
.talk 30190
.' Tell him you found a strange armor plate
.' Investigate the Armor Plate |q 12980/1
step
'Leave Mimir's Workshop |goto 33.6,39.6,0.5 |c
step
goto 31.3,38.2
.talk 30152
..turnin 12980
step
goto 31.4,38.1
.talk 29801
..accept 12984
step
goto 24.4,52.1
.' Use Bouldercrag's War Horn inside this building near Valduran the Stormborn |use Bouldercrag's War Horn##42419
.' Help fight Valduran the Stormborn
.kill Valduran the Stormborn##29368 |q 12984/1
step
goto 31.4,38.1
.talk 29801
..turnin 12984
..accept 12988
step
goto 31.3,38.2
.talk 30152
..accept 12991
step
goto 29.0,45.8
.' Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441 |tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
.' Damage the North Lightning Forge |q 12988/1
step
goto 29.5,45.9
.' Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441 |tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
.' Damage the Central Lightning Forge |q 12988/2
step
goto 30.2,46.1
.' Use Bouldercrag's Bomb next to the Lightning Forge |use Bouldercrag's Bomb##42441 |tip The Lightning Forge looks like a big brown dwarf head with a big blue crystal on top of it.
.' Damage the South Lightning Forge |q 12988/3
step
goto 30.0,46.3
.kill 10 Stormforged Artificer##29376 |q 12991/1
step
goto 31.4,38.1
.talk 29801
..turnin 12988
step
goto 31.3,38.2
.talk 30152
..turnin 12991
step
goto 31.4,38.1
.talk 29801
..accept 12993
step
goto 28.9,44.1
.click Colossus Attack Specs##210
.get Click the Colossus Attack Specs |q 12993/1
step
goto 29.9,45.8
.click Colossus Defense Specs##210
.get Click the Colossus Defense Specs |q 12993/2
step
goto 31.4,38.1
.talk 29801
..turnin 12993
..accept 12998
step
'The entrance to the big round metal door starts here |goto 32.4,63.9,0.5 |c |tip It's a big metal hole on in the side of the mountain.
step
goto 36.2,60.9
.click Heart of the Storm##7800
.' Attempt to Secure the Heart of the Storm |q 12998/1
step
'Go outside |goto 32.4,63.9,0.5 |c
step
goto 31.4,38.1
.talk 29801
..turnin 12998
..accept 13007
step
goto 27.2,35.9
.click Jormungar Control Orb##7951
.' Start controlling a Jormungar |invehicle |c |q 13007
step
goto 27.2,42.0
.' In order to move as the Jormungar, use the Submerge ability on your hotbar.  When you want to come back up to the surface, use the Emerge ability while submerged underground.
.kill Iron Colossus##30300 |q 13007/1 |tip In order to kill the Iron Colossus, simply spam your Jormungar Strike and Acid Breath abilities when the Iron Colossus is close to you.  When he jumps up to do a ground slam, quickly use your Submerge ability and run away from the Iron Colossus.  Do not try to get behind him, as well will just spin around and ground slam you.  Repeat this process
step
'Click the red arrow button on your hotbar to stop controlling the Jormungar |outvehicle |c |q 13007
step
goto 31.4,38.1
.talk 29801
..turnin 13007
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\The Storm Peaks\\The Sons of Hodir Reputation (Friendly)",[[
author support@zygorguides.com
description This guide section will walk you through earning Honored reputation with The Sons of Hodir.
description You must have completed the The Storm Peaks Full Zone Guide (Includes Pre-Quests) guide section,
description as it contains pre-quests to unlock The Sons of Hodir up to Friendly reputation, before having access to the quests in this guide section.
daily
step
goto The Storm Peaks,64.2,59.2
.click Hodir's Helm##8221
..accept 13006 |daily
step
goto 63.2,62.9
.click Fjorn's Anvil##7481
..accept 12981 |daily
step
goto 64.1,65.1
.click Hodir's Horn##7352
..accept 12977 |daily
step
goto 55.6,63.4
.from Viscous Oil##30325+
.get 5 Viscous Oil |q 13006/1
step
goto 64.2,59.2
.click Hodir's Helm##8221
..turnin 13006
step
goto 69.7,60.2
.from Brittle Revenant##30160+
.collect 6 Essence of Ice##42246 |q 12981
step
goto 75.3,62.8
.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
.click Frozen Iron Scrap##8231+
.get 6 Frozen Iron Scrap |q 12981/1
step
goto 72.1,51.8
.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
.' Free 5 Niffelem Forefathers |q 12977/1
.' Free 5 Restless Frostborn |q 12977/2
step
goto 67.0,45.1
.' If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
.from Scion of Storm##30184+ |tip They are air elementals all around inside this big cave.
.' You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
.collect Relic of Ulduar##42780+|n |tip You turn these in in multiples of 10.  When you are done with this step, skip to the next step of the guide.
step
goto 63.2,62.9
.click Fjorn's Anvil##7481
..turnin 12981
step
goto 64.1,65.1
.' Click Hodir's Horn##7352
..turnin 12977
step
goto 66.2,61.4
.talk 32540
..accept 13559 |tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
step
'Repeat this process until you are Honored with The Sons of Hodir, then go to the The Sons of Hodir (Honored Section) to continue.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\The Storm Peaks\\The Sons of Hodir Reputation (Honored) - Pre-Quest",[[
author support@zygorguides.com
description This guide section will walk you through completing a pre-quest, unlocked by earning
description Honored reputation with The Sons of Hodir faction, that unlocks a daily quest.
description You must have completed the The Sons of Hodir Reputation (Friendly) guide section
description in order to have access to the quest in this guide section.
step
'You must complete the STORM PEAKS PRE-REQS section of this guide before doing this, as it contains pre-quests to unlock The Sons of Hodir to Friendly reputation.  After that, you must complete the THE SONS OF HODIR (FRIENDLY) guide section until you are Honored with The Sons of Hodir.
step
goto The Storm Peaks,64.8,59.1
.talk 30252
..accept 13001
step
goto 59.0,61.2
.from Stoic Mammoth##30260+
..get 3 Stoic Mammoth Hide |q 13001/2
step
'The entrance to the cave starts here |goto 55.9,64.2,0.5 |c |q 13001
step
goto 54.7,60.8
.click Everfrost Shard##8247+
.get 3 Everfrost Shard |q 13001/1
step
'Leave the cave |goto 55.9,64.2,0.5 |c |q 13001
step
goto 64.8,59.1
.talk 30252
..turnin 13001 |tip This quest will unlock the Thrusting Hodir's Spear daily quest.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\The Storm Peaks\\The Sons of Hodir Reputation (Honored)",[[
author support@zygorguides.com
description This guide section will walk you through earning Revered reputation with The Sons of Hodir.
description You must have completed the The Sons of Hodir Reputation (Friendly) guide section and
description the The Sons of Hodir Reputation (Honored) - Pre-Quest guide section
description before having access to the quests in this guide section.
daily
step
'You must complete the STORM PEAKS PRE-REQS section of this guide before doing this, as it contains pre-quests to unlock The Sons of Hodir to Friendly reputation.  After that, you must complete the THE SONS OF HODIR (FRIENDLY) guide section until you are Honored with The Sons of Hodir.
step
goto The Storm Peaks,63.5,59.8
.talk 30294
..accept 12994 |daily
step
goto 64.2,59.2
.' Click Hodir's Helm |tip It's a huge helm on the tip of this ice spike.
..accept 13006 |daily
step
goto 65.1,60.8
.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
..accept 13003 |daily
step
goto 63.2,62.9
.' Click Fjorn's Anvil |tip It's a huge anvil on an ice platform.
..accept 12981 |daily
step
goto 64.1,65.1
.' Click Hodir's Horn |tip It's a huge bone war horn.
..accept 12977 |daily
step
goto 57.2,64.0
.' Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
.' Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
.' Repeat this process 2 more times
.' Kill 3 Stormforged Infiltrators |q 12994/1
step
goto 55.6,63.4
.from Viscous Oil##30325+ |tip They look like slimes inside this cave.
.get 5 Viscous Oil |q 13006/1
step
goto 56.6,64.3
.' Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
.' While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1: |tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
.' In phase 2 of the fight with the Wild Wyrm, the strategy changes: |tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
.' Kill the Wild Wyrm |q 13003/1
step
goto 63.5,59.8
.talk 30294
..turnin 12994
step
goto 64.2,59.2
.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
..turnin 13006
step
goto 65.1,60.8
.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
..turnin 13003
step
goto 69.7,60.2
.from Brittle Revenant##30160+
.collect 6 Essence of Ice##42246 |q 12981
step
goto 75.3,62.8
.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
.' Click the Frozen Iron Scraps
.get 6 Frozen Iron Scrap |q 12981/1
step
goto 72.1,51.8
.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
.' Free 5 Niffelem Forefathers |q 12977/1
.' Free 5 Restless Frostborn |q 12977/2
step
goto 67.0,45.1
.' If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
.from Scion of Storm##30184+ |tip They are air elementals all around inside this big cave.
.' You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
.collect Relic of Ulduar##42780+|n |tip You turn these in in multiples of 10.  When you are done with this step, skip to the next step of the guide.
step
goto 63.2,62.9
.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
..turnin 12981
step
goto 64.1,65.1
.' Click Hodir's Horn|tip It's a huge bone war horn.
..turnin 12977
step
goto 66.2,61.4
.talk 32540
..accept 13559 |tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
step
'Repeat this process until you are Revered with The Sons of Hodir, then go to the The Sons of Hodir (Revered Section) to continue.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\The Storm Peaks\\The Sons of Hodir Reputation (Revered)",[[
author support@zygorguides.com
description This guide section will walk you through earning Exalted reputation with The Sons of Hodir.
description You must have completed the The Sons of Hodir Reputation (Honored) guide section before having access to the quests in this guide section.
daily
step
'You must complete the STORM PEAKS PRE-REQS section of this guide before doing this, as it contains pre-quests to unlock The Sons of Hodir to Friendly reputation.  After that, you must complete the THE SONS OF HODIR (FRIENDLY) guide section until you are Honored with The Sons of Hodir, and then the you must complete the THE SONS OF HODIR (HONORED) guide section until you are Revered with The Sons of Hodir.
step
goto The Storm Peaks,63.5,59.8
.talk 30294
..accept 12994 |daily
step
goto 64.2,59.2
.' Click Hodir's Helm |tip It's a huge helm on the tip of this ice spike.
..accept 13006 |daily
step
goto 65.1,60.8
.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
..accept 13003 |daily
step
goto 67.6,59.9
.' Click Arngrim the Insatiable
..accept 13046 |daily
step
goto 63.2,62.9
.' Click Fjorn's Anvil |tip It's a huge anvil on an ice platform.
..accept 12981 |daily
step
goto 64.1,65.1
.' Click Hodir's Horn |tip It's a huge bone war horn.
..accept 12977 |daily
step
goto 57.2,64.0
.' Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
.' Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
.' Repeat this process 2 more times
.' Kill 3 Stormforged Infiltrators |q 12994/1
step
goto 56.4,65.0
.' Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
.' Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
.' Feed Arngrim's Spirit 5 Times |q 13046/1
step
goto 55.6,63.4
.from Viscous Oil##30325+ |tip They look like slimes inside this cave.
.get 5 Viscous Oil |q 13006/1
step
goto 56.6,64.3
.' Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
.' While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1: |tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
.' In phase 2 of the fight with the Wild Wyrm, the strategy changes: |tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
.' Kill the Wild Wyrm |q 13003/1
step
goto 63.5,59.8
.talk 30294
..turnin 12994
step
goto 64.2,59.2
.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
..turnin 13006
step
goto 65.1,60.8
.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
..turnin 13003
step
goto 67.6,59.9
.' Click Arngrim the Insatiable
..turnin 13046
step
goto 69.7,60.2
.from Brittle Revenant##30160+
.collect 6 Essence of Ice##42246 |q 12981
step
goto 75.3,62.8
.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
.' Click the Frozen Iron Scraps
.get 6 Frozen Iron Scrap |q 12981/1
step
goto 72.1,51.8
.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
.' Free 5 Niffelem Forefathers |q 12977/1
.' Free 5 Restless Frostborn |q 12977/2
step
goto 67.0,45.1
.' If you want to grind mobs for Relics of Ulduar, or buy them on the Auction House, to turn in for The Sons of Hodir reputation, this is an awesome spot, as these mobs drop the Relics of Ulduar frequently.  You get 650 The Sons of Hodir reputation for every 10 Relics of Ulduar you collect.  If you don't want to do this, skip this step.
.from Scion of Storm##30184+ |tip They are air elementals all around inside this big cave.
.' You can also buy the Relics of Ulduar on the Auction House, if you'd like to get the reputation much faster.
.collect Relic of Ulduar##42780+|n |tip You turn these in in multiples of 10.  When you are done with this step, skip to the next step of the guide.
step
goto 63.2,62.9
.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
..turnin 12981
step
goto 64.1,65.1
.' Click Hodir's Horn|tip It's a huge bone war horn.
..turnin 12977
step
goto 66.2,61.4
.talk 32540
..accept 13559 |tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
step
'You can repeat this process until you are Exalted with The Sons of Hodir.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\The Storm Peaks\\Brunnhildar Village Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the Brunnhildar Village region of The Storm Peaks.
daily
step
goto The Storm Peaks,50.9,65.6
.talk 29796
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..accept 13424 |daily |or
..accept 13423 |daily |or
..accept 13422 |daily |or
..accept 13425 |daily |or
step
goto 49.4,67.6
.' Use your Reins of the Icemaw Matriarch inside The Pit of the Fang to ride a bear|use Reins of the Icemaw Matriarch##42499
.' Use the abilities on your hotbar to fight Hyldsmeet Warbears
.kill 6 Hyldsmeet Warbear|q 13424/1
step
goto 50.4,67.5
.talk 30012
.kill 6 Victorious Challenger|q 13423/1
step
'The entrance to the Forlorn Mine is here |goto 47.1,68.5,0.5 |c |q 13422
step
goto 44.9,70.1
.' Use your Disciplining Rod on Exhausted Vrykul|use Disciplining Rod##42837|tip They are sitting on the ground inside these side tunnels inside this mine.
.' Discipline 6 Exhausted Vrykul |q 13422/1
step
'Leave the mine |goto 47.1,68.5,0.5 |c |q 13422
step
goto 27.3,63.7
.from Valkyrion Aspirant##29569+
.collect 6 Vial of Frost Oil##41612 |q 13425
step
goto 23.7,58.3
.' Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs |use Vial of Frost Oil##41612 |tip They look like brown spiked eggs sitting in the yellow water around this area.
.' Try to get 6 at a time
.' Destroy 30 Plagued Proto-Drake Eggs |q 13425/1
step
goto 50.9,65.6
.talk 29796
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..turnin 13424
..turnin 13423
..turnin 13422
..turnin 13425
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\The Storm Peaks\\Dun Niffelem (The Sons of Hodir) Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the Brunnhildar Village region of The Storm Peaks.
description If you are not Revered with The Sons of Hodir, you will not be able to accept some of the quests in this guide section.
description To become Revered with The Sons of Hodir, use the The Sons of Hodir (Friendly), The Sons of Hodir (Honored) - Pre-Quest,
description and The Sons of Hodir (Honored) guide sections in the Reputation section of the Dailies guide.
daily
step
'If you are not Revered with The Sons of Hodir, you will not be able to accept some of the following quests.  To become Revered with The Sons of Hodir, use the THE SONS OF HODIR REPUTATION GUIDE.
step
goto The Storm Peaks,63.5,59.8
.talk 30294
..accept 12994 |daily
step
goto 64.2,59.2
.' Click Hodir's Helm |tip It's a huge helm on the tip of this ice spike.
..accept 13006 |daily
step
goto 65.1,60.8
.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
..accept 13003 |daily
step
goto 67.6,59.9
.' Click Arngrim the Insatiable
..accept 13046 |daily
step
goto 63.2,62.9
.' Click Fjorn's Anvil |tip It's a huge anvil on an ice platform.
..accept 12981 |daily
step
goto 64.1,65.1
.' Click Hodir's Horn |tip It's a huge bone war horn.
..accept 12977 |daily
step
goto 57.2,64.0
.' Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
.' Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
.' Repeat this process 2 more times
.' Kill 3 Stormforged Infiltrators |q 12994/1
step
goto 56.4,65.0
.' Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
.' Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
.' Feed Arngrim's Spirit 5 Times |q 13046/1
step
goto 55.6,63.4
.from Viscous Oil##30325+ |tip They look like slimes inside this cave.
.get 5 Viscous Oil |q 13006/1
step
goto 56.6,64.3
.' Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
.' While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1: |tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
.' In phase 2 of the fight with the Wild Wyrm, the strategy changes: |tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
.' Kill the Wild Wyrm |q 13003/1
step
goto 63.5,59.8
.talk 30294
..turnin 12994
step
goto 64.2,59.2
.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
..turnin 13006
step
goto 65.1,60.8
.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
..turnin 13003
step
goto 69.7,60.2
.from Brittle Revenant##30160+
.collect 6 Essence of Ice##42246 |q 12981
step
goto 75.3,62.8
.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
.' Click the Frozen Iron Scraps
.get 6 Frozen Iron Scrap |q 12981/1
step
goto 72.1,51.8
.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
.' Free 5 Niffelem Forefathers |q 12977/1
.' Free 5 Restless Frostborn |q 12977/2
step
goto 63.2,62.9
.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
..turnin 12981
step
goto 64.1,65.1
.' Click Hodir's Horn|tip It's a huge bone war horn.
..turnin 12977
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\The Storm Peaks\\Frosthold Dailies",[[
author support@zygorguides.com
daily
step
goto The Storm Peaks,29.8,75.7
.talk 29732
..accept 12869 |daily
step
goto 44.6,59.8
.' Use the abilities on your hotbar to fight Stormpeak Wyrms flying in the air around this area
.kill 16 Stormpeak Wyrm|q 12869/1
step
goto 29.8,75.7
.' Click the red arrow on your hotbar to get off the eagle|script VehicleExit()
.talk 29732
..turnin 12869
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\The Storm Peaks\\K3 Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the K3 region of The Storm Peaks.
daily
step
goto The Storm Peaks,40.9,85.3
.talk 29428
..accept 12833 |daily
step
goto 43.1,81.2
.' Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676|tip Garm Invaders and Snowblind Followers will run over the mines and die.
.kill 12 Garm Invader |q 12833/1
step
goto 40.9,85.3
.talk 29428
..turnin 12833
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Zul'Drak\\Zul'Drak Pre-Quests",[[
author support@zygorguides.com
description This guide section contains the pre-quests to unlock the daily quests in the The Argent Stand region of Zul'Drak.
step
goto Zul'Drak,39.5,66.9
.talk 28059
..accept 12740
step
goto 38.4,67.1
.' Use your Crusader Parachute on Argent Shieldmen and Argent Crusaders |use Crusader Parachute##39615 |tip It won't work on all of them.
.' Equip 10 Argent forces with a parachute |q 12740/1
step
goto 39.5,66.9
.talk 28059
..turnin 12740
step
goto 40.3,66.6
.talk 28039
..accept 12596
step
goto 35,52.1
.talk 28205
..accept 12557
step
'Go into the 2 rooms next to you:
.' They are items on shelves that you can click
.' Click a Muddy Mire Maggot and get it |q 12557/1 |tip Muddy Mide Maggots look like an open bag of grain on the ground.
.' Click a Withered Batwing and get it |q 12557/2 |tip Withered Batwings looks like bone wings.
.' Click a Chilled Serpent Mucus and get it |q 12557/4 |tip Chilled Serpent Mucus looks like a skinny green vial.
.' Click an Amberseed and get it |q 12557/3 |tip Amberseeds look like spiked potatoes.
step
goto 35,52.1
.talk 28205
..turnin 12557
.' Complete Alchemist Finklestein's task |q 12596/4
step
goto 48.2,63.9
.talk 28043
..accept 12599
step
goto 46.9,61.4
.' Click Dead Thornwoods|tip They look like curved thorny roots coming out of the water around this area.
.get 20 Dead Thornwood|q 12599/1
step
goto 48.2,63.9
.talk 28043
..turnin 12599
.' Complete Captain Grondel's Task |q 12596/3
step
goto 48.8,78.9
.talk 28042
..accept 12597
step
goto 44.9,79.5
.' Click the Mature Water-Poppy plants |tip They look like tall white-leaved plants with purple bulbs at the top.
.get 5 Mature Water-Poppy|q 12597/1
step
goto 48.8,78.9
.talk 28042
..turnin 12597
.' Complete Captain Brandon's Task |q 12596/1
step
goto 58.1,72.4
.talk 28044
..accept 12598
step
goto 53.4,68.7
.' Use your High Impact Grenade next to Nerubian Tunnels |use High Impact Grenade##38574 |tip They look like squarish pyramid dirt mounds around this area.
.' Seal 5 Nerubian Tunnels |q 12598/1
step
goto 58.1,72.4
.talk 28044
..turnin 12598
.' Complete Captain Rupert's Task |q 12596/2
step
goto 40.3,66.6
.talk 28039
..turnin 12596
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Zul'Drak\\The Argent Stand Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests in the The Argent Stand region of Zul'Drak.
daily
step
'The Zul'Drak daily quests are timed, so having an epic flying mount will help you get them done a lot faster and easier.  You will receive 650 extra Argent Crusade reputation and 18 extra gold by completing these quests within 20 minutes.
step
goto Zul'Drak,40.3,66.6
.talk 28039
..accept 12587 |daily |or
..accept 12563 |daily |or
..accept 12501 |daily |or
step
goto 35.0,52.1
.talk 28205
..accept 12541 |daily
.' Tell Alchemist Finklestein you are ready to begin
.' Some of the items he asks you for can be found in both of the rooms on either side of you.  Those items are: |tip Hairy Herring Heads, Icecrown Bottled Water, Knotroot, Muddy Mire Maggots, Pickled Eagle Egg, Pulverized Gargoyle Teeth, Putrid Pirate Perspiration, Seasoned Cider Slider, Speckled Guano, Spiky Spider Eggs, Withered Bat Wings
.' Here are the items that are only found in the ROOM ON THE LEFT: |tip Abomination Guts, Blight Crystal, Chilled Serpent Mucus, Crushed Basilisk Crystals, Frozen Spider Ichor, Prismatic Mojo, Raptor Claw
.' Here are the items that are only found in the ROOM ON THE RIGHT: |tip Amberseed, Ancient Ectoplasm, Crystallized Hogsnot, Ghoul Drool, Trollbane, Shrunken Dragon's Claw, Wasp's Wings
.' Collect the item's he calls for and bring them back to him and click Finklestein's Cauldron to add the items he needs
.' Create the Truth Serum |q 12541/1 |tip This quest will be MUCH easier and faster once you start to remember where each item is.
step
goto 35.0,52.1
.talk 28205
..turnin 12541
step
goto 48.1,63.9
.talk 28043
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 12594 |daily |or
..accept 12585 |daily |or
..accept 12519 |daily |or
step
goto 45.4,61.2
.from Mossy Rampager##28323+
.' Kill 7 Mossy Rampagers |q 12594/1
step
goto 46.0,61.8
.' Click Dead Thornwoods|tip They look like curved thorny roots coming out of the water around this area.
.get 20 Dead Thornwood|q 12585/1
step
goto 45.6,62.7
.' Click Drakkari Corpses |tip They look like dead blue trolls laying on the ground around this area.
.get 7 Drakkari Medallion |q 12519/1
step
goto 48.1,63.9
.talk 28043
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 12594
..turnin 12585
..turnin 12519
step
goto 58.1,72.4
.talk 28044
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 12568 |daily |or
..accept 12509 |daily |or
..accept 12591 |daily |or
step
goto 56.0,70.8
.' Use your Incinerating Oil on Defeated Argent Footmen |use Incinerating Oil##38556 |tip They look like dead soldiers laying on the ground around this area.
.' Incinerate 5 Argent Footman Corpses |q 12568/1
step
goto 51.6,75.1
.talk 28090
..' Tell them to get out of there
.' Restore 5 Recruit's Courage |q 12509/1
step
goto 53.4,68.7
.' Use your High Impact Grenade next to Nerubian Tunnels|use High Impact Grenade##38574|tip They look like squarish pyramid dirt mounds around this area.
.' Seal 5 Nerubian Tunnels |q 12591/1
step
goto 58.1,72.4
.talk 28044
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 12568
..turnin 12509
..turnin 12591
step
goto 48.8,78.9
.talk 28042
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 12588 |daily |or
..accept 12502 |daily |or
..accept 12564 |daily |or
step
goto 46.8,80.3
.' Use your Steel Spade next to the dirt piles |use Steel Spade##38566 |tip The dirt piles look like big purple-ish mounds of dirt around this area.
.' Investigate 5 Ancient Dirt Mounds |q 12588/1
step
goto 52.5,76.5
.' Use your Argent Crusade Banner next to this stone block |use Argent Crusade Banner##38544
.' Plant the South Argent Crusade Banner |q 12502/1
step
goto 53.3,72.2
.' Use your Argent Crusade Banner next to this stone block |use Argent Crusade Banner##38544
.' Plant the East Argent Crusade Banner |q 12502/3
step
goto 50.6,73.0
.' Use your Argent Crusade Banner next to this stone block |use Argent Crusade Banner##38544
.' Plant the North Argent Crusade Banner |q 12502/2
step
goto 45.6,79.3
.' Click the Mature Water-Poppy plants|tip They look like tall white-leaved plants with purple bulbs at the top.
.get 5 Mature Water-Poppy|q 12564/1
step
goto 48.8,78.9
.talk 28042
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 12588
..turnin 12502
..turnin 12564
step
goto Zul'Drak,40.3,66.6
.talk 28039
..turnin 12563
..turnin 12587
..turnin 12501
autoscript ZGV.completioninterval=5
step
goto 40.3,66.6
.talk 28039
.accept 12604 |daily |instant |tip You can only get this quest if you complete the Troll Patrol daily in under 20 minutes.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Home Cities Reputation\\Ironforge & Gnomeregan\\Dwarf (1-5)",[[
description This guide will help you to get Exalted
description reputation with the Ironforge and
description Gnomeregan factions.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
next Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Home Cities Reputation\\Ironforge & Gnomeregan\\Dwarf & Gnome (5-15)
author support@zygorguides.com
step
'You will not be able to do some of the quests in this section if you are not a Dwarf.
.' Skip to the next step of the guide
step
goto Dun Morogh,36.9,70.0
.talk 37081
..accept 24469
step
goto 36.2,71.9
.kill 6 Rockjaw Invaders |q 24469/1
step
goto 36.9,70.0
.talk 37081
..turnin 24469
..accept 24470
step
goto 36.6,70.4
.talk 658
..accept 24471
step
goto 37.3,72.8
.kill 3 Rockjaw Goon |q 24470/1
.' Use Sten's First Aid Kit on Wounded Coldridge Mountaineers |use Sten's First Aid Kit##49743
.' Aid 4 Wounded Coldridge Mountaineers |q 24471/1
step
goto 36.9,70.0
.talk 37081
..turnin 24470
step
goto 36.6,70.2
.talk 658
..turnin 24471
step
goto 36.9,70.0
.talk 37081
..accept 24473
step
goto 35.8,66.3
.talk 37087 |tip She walks around the forge at the center of the room
..turnin 24473
..accept 24474
step
goto 35.8,66.3
.talk 1104
..accept 24477
step
goto 37.1,67.4
.' Click the Keg of Gnomenbrau |tip It looks like a huge barrel next to a tree.
.get Cask of Gnomenbrau |q 24474/3
step
goto 34.8,67.4
.' Click the Keg of Stonehammer Stout |tip It looks like a huge barrel next to a tree.
.get Cask of Stormhammer Stout |q 24474/1
step
goto 31.5,67.6
.' Click the Keg of Theramore Pale Ale |tip It looks like a huge barrel next to a tree.
.get Cask of Theramore Pale Ale |q 24474/2
step
goto 32.4,68.0
.' Click Forgotten Dwarven Artifacts |tip They look like small mounds of snow on the ground around this area.
.get 5 Forgotten Dwarven Artifact |q 24477/1
.' You can find more around [38.0,66.8]
step
goto 35.8,66.3
.talk 1104
..turnin 24477
..accept 24486
step
goto 35.8,66.3
.talk 37087
..turnin 24474
..accept 24475
step
goto 33.8,71.3
.from Rockjaw Scavenger##37105+
.get 5 Priceless Rockjaw Artifact |q 24486/1
step
goto 33.4,73.3
.from Ragged Young Wolf##705+
.get 4 Ragged Wolf Hide |q 24475/2
.from Small Crag Boar##708+
.get 3 Boar Haunch |q 24475/1
step
goto 35.8,66.3
.talk 1104
..turnin 24486
step
goto 35.8,66.3
.talk 37087
..turnin 24475
..accept 3107 |only Dwarf Paladin
..accept 3106 |only Dwarf Warrior
..accept 3109 |only Dwarf Rogue
..accept 3110 |only Dwarf Priest
..accept 3115 |only Dwarf Warlock
..accept 3108 |only Dwarf Hunter
..accept 3115 |only Dwarf Mage
..accept 24494 |only Dwarf Shaman
..accept 24487
step
goto 35.8,66.8
.talk 926
..turnin 3107
..accept 24528
only Dwarf Paladin
step
goto 35.8,66.8
.talk 926
.' Learn Judgement |q 24528/1
.' Learn Seal of Righteousness |q 24528/3
only Dwarf Paladin
step
goto 35.9,67.7
.' Cast Seal of Righteousness on yourself, then cast Judgement on the Target Dummy
.' Practice using Judgement one time |q 24528/2
only Dwarf Paladin
step
goto 35.8,66.8
.talk 926
..turnin 24528
only Dwarf Paladin
step
goto 35.8,65.6
.talk 912
..turnin 3106
..accept 24531
only Dwarf Warrior
step
goto 35.8,65.6
.talk 912
.' Learn Charge |q 24531/2
only Dwarf Warrior
step
goto 35.7,67.7
.' Use Charge on a Target Dummy on the opposite side of the wall
.' Practice using Charge one time |q 24531/1
only Dwarf Warrior
step
goto 35.8,65.6
.talk 912
..turnin 24531
only Dwarf Warrior
step
goto 35.4,65.9
.talk 916
..turnin 3109
..accept 24532
only Dwarf Rogue
step
goto 35.4,65.9
.talk 916
.' Learn Eviscerate |q 24532/2
only Dwarf Rogue
step
goto 35.9,67.7
.' Use Sinister Strike on the Target Dummies to build up combo points, then use Eviscerate on the Target Dummies
.' Practice Eviscerate 3 times |q 24532/1
only Dwarf Rogue
step
goto 35.4,65.9
.talk 916
..turnin 24532
only Dwarf Rogue
step
goto 35.6,64.8
.talk 837
..turnin 3110
..accept 24533
only Dwarf Priest
step
goto 35.6,64.8
.talk 837
.' Learn Flash Heal |q 24533/2
only Dwarf Priest
step
goto 36.0,64.8
.' Use Flash Heal on the Wounded Militia
.' Practice using Flash Heal 5 times |q 24533/1
only Dwarf Priest
step
goto 35.6,64.8
.talk 837
..turnin 24533
only Dwarf Priest
step
goto 35.7,65.3
.talk 43455
..turnin 3115
..accept 26904
only Dwarf Warlock
step
goto 35.7,65.3
.talk 43455
.' Learn Immolate |q 26904/2
only Dwarf Warlock
step
goto 35.9,67.7
.' Use Immolate 5 times on the Training Dummy
.' Practice Immolate 5 times |q 26904/1
only Dwarf Warlock
step
goto 35.7,65.3
.talk 43455
..turnin 26904
only Dwarf Warlock
step
goto 36.2,65.9
.talk 895
..turnin 3108
..accept 24530
only Dwarf Hunter
step
goto 36.2,65.9
.talk 895
.' Learn Steady Shot |q 24530/2
only Dwarf Hunter
step
goto 35.7,67.7
.' Use the Steady Shot ability on the Training Dummy
.' Practice Steady Shot 5 times |q 24530/1
only Dwarf Hunter
step
goto 36.2,65.9
.talk 895
..turnin 24530
only Dwarf Hunter
step
goto 35.7,64.8
.talk 37121
..turnin 3115
..accept 24526
only Dwarf Mage
step
goto 35.7,64.8
.talk 37121
.' Learn Arcane Missiles |q 24526/2
only Dwarf Mage
step
goto 35.7,67.7
.' Use Arcane Missiles on the target dummies
.' Practise using Arcane Missiles 2 times |q 24526/1
only Dwarf Mage
step
goto 35.7,64.8
.talk 37121
..turnin 24526
only Dwarf Mage
step
goto 35.7,64.6
.talk 37115
..turnin 24494
..accept 24527
only Dwarf Shaman
step
goto 35.7,64.6
.talk 37115
.' Learn Primal Strike |q 24527/2
only Dwarf Shaman
step
goto 35.7,67.7
.' Use Primal Strike on the training dummies
.' Practise Primal Strike 2 times |q 24527/1
only Dwarf Shaman
step
goto 35.7,64.6
.talk 37115
..turnin 24527
only Dwarf Shaman
step
goto 32.1,74.2
.talk 786
..turnin 24487
..accept 182
step
goto 32.2,74.3
.talk 1354
..accept 24489
step
goto 31.9,74.4
.talk 8416
..accept 3361
step
goto 27.8,74.5
.' Kill Frostmane Troll Whelps as you walk
.' Click Felix's Box |tip It looks like a toolbox next to the campfire.
.get Felix Box##10438 |q 3361/1
step
goto 27.8,75.2
.' Kill Frostmane Troll Whelps as you walk
.' Stand here and listen to Soothsayer Mirim'koa talk
.' Scout Soothsayer Mirim'koa |q 24489/3
step
goto 29.8,78.5
.' Kill Frostmane Troll Whelps as you walk
.' Click Felix's Chest |tip It looks like a toolbox next to the campfire.
.get Felix Chest##16313 |q 3361/2
step
goto 29.6,78.8
.' Kill Frostmane Troll Whelps as you walk
.' Stand here and listen to Soothsayer Rikkari talk
.' Scout Soothsayer Rikkari |q 24489/2
step
goto 33.3,77.8
.' Kill Frostmane Troll Whelps as you walk
.' Click Felix's Bucket of Bolts |tip It looks like a toolbox next to the campfire.
.get Felix's Bucket of Bolts##16314 |q 3361/3
step
goto 33.3,78.0
.' Kill Frostmane Troll Whelps as you walk
.' Stand here and listen to Soothsayer Shi'kala talk
.' Scout Soothsayer Shi'kala |q 24489/1
step
goto 33.6,77.5
.kill 10 Frostmane Troll Whelp |q 182/1
step
goto 32.2,74.3
.talk 1354
..turnin 24489
step
goto 32.1,74.2
.talk 786
..turnin 182
..accept 218
step
goto 31.9,74.4
.talk 8416
..turnin 3361
step
goto 33.8,78.3 |n
.' Enter the cave |goto 33.8,78.3,0.5 |noway |c
step
goto 36.9,78.1
.kill Wayward Fire Elemental |q 218/3
step
goto 37.4,78.4
.kill Grik'nir the Cold |q 218/1
step
goto 34.0,78.8
.from Frostmane Blade##37507+, Frostmane Novice##946+
.kill 10 Grik'nir's Servant |q 218/2
step
goto 33.8,78.3 |n
.' Leave the cave |goto 33.8,78.3,0.5 |noway |c
step
goto 32.1,74.2
.talk 786
..turnin 218
..accept 24490
step
'Hearth to Coldridge Valley |goto 36.9,70.1,0.5 |use Hearthstone##6948 |noway |c
step
goto 40.9,70.7
.talk 6782
..turnin 24490
..accept 24491
step
goto 37.4,70.6
.talk 37113
..turnin 24491
..accept 24492
step
goto 35.8,66.3
.talk 37087
..accept 24493
step
goto 35.4,66.0
.' Click the Leftover Boar Meat |tip They look like golden brown turkey legs on this small square table.
.get Leftover Boar Meat##49756 |q 24492/3
step
goto 35.5,65.2
.' Click the Beer Barrel |tip It looks like a wooden barrel sitting on the ground in the corner.
.get Coldridge Beer Flagon##49754 |q 24492/1
step
goto 35.8,64.5
.' Click the Wolf-Hide Cloaks |tip It looks like a wooden crate on its side, upstairs next to some barrels of explosives.
.get Ragged Wolf-Hide Cloak##57541 |q 24492/2
step
goto 37.4,70.6
.talk 37113
..turnin 24492
.' You will fly to Kharanos |goto 53.3,49.8,0.5 |noway |c
step
goto 53.1,50.0
.talk 1872
..turnin 24493
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Home Cities Reputation\\Ironforge & Gnomeregan\\Gnome (1-5)",[[
description This guide will help you to get Exalted
description reputation with the Ironforge and
description Gnomeregan factions.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
next Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Home Cities Reputation\\Ironforge & Gnomeregan\\Dwarf & Gnome (5-15)
author support@zygorguides.com
step
'You will not be able to do some of the quests in this section if you are not a Gnome.
.' Skip to the next step of the guide
step
goto Dun Morogh,25.8,32.0
.talk 45966
..accept 27670
step
goto 27.1,32.1
.kill 6 Crazed Leper Gnome |q 27670/1
step
goto 25.8,32.0
.talk 45966
..turnin 27670
..accept 28167
step
goto 27.7,31.9
.talk 47250
..turnin 28167
..accept 27671
step
goto 28.7,31.4
.' Use your Teleport Beacon on Survivors |use Teleport Beacon##62057 |tip They look like scared gnomes around this area.
.' Rescue 6 Survivors |q 27671/1
step
goto 27.7,31.9
.talk 47250
..turnin 27671
..accept 28169
step
goto 28.0,37.8
.talk 46274
..turnin 28169
..accept 27635
step
goto 28.6,37.7
.' Click a Sanitron 500 |tip They look like little helicopters flying on this spot.
.' Complete Decontamination Process |q 27635/1
step
goto 29.5,37.7
.talk 46255
..turnin 27635
..accept 27674
step
goto 29.6,38.0
.talk 46293
..' Tell him to send you to the surface |goto 33.9,38.6,0.5 |noway |c
step
goto 33.9,38.6
.talk 42396
..turnin 27674
..accept 26202 |only Gnome Warlock
..accept 26197 |only Gnome Mage
..accept 26203 |only Gnome Warrior
..accept 26206 |only Gnome Rogue
..accept 26199 |only Gnome Priest
step
goto 33.9,34.8
.talk 42323
..turnin 26199
..accept 26422
only Gnome Priest
step
goto 33.4,36.7
.talk 42366
..turnin 26206
..accept 26423
only Gnome Rogue
step
goto 34.3,37.5
..turnin 26203
..accept 26425
only Gnome Warrior
step
goto 34.5,35.1
.talk 42331
..turnin 26197
..accept 26421
only Gnome Mage
step
goto 33.3,38.4
.talk 460
..turnin 26202
..accept 26424
only Gnome Warlock
step
goto 33.7,36.4
.talk 42317
..turnin 26424 |only Gnome Warlock
..turnin 26421 |only Gnome Mage
..turnin 26425 |only Gnome Warrior
..turnin 26423 |only Gnome Rogue
..turnin 26422 |only Gnome Priest
..accept 26208
.' Watch the dialogue
.' Learn about Operation: Gnomeregan |q 26208/1
step
goto 33.7,36.5
.talk 26208
..turnin 26208
..accept 26566
step
goto 34.3,34.6
.talk 42553
..turnin 26566
..accept 26222
step
goto 33.2,35.7
.' Click Spare Parts |tip They look like big pieces of metal on the ground around this area.
.get 7 Spare Part |q 26222/1
step
goto 34.3,34.6
.talk 42553
..turnin 26222
..accept 26205
step
goto 33.8,34.1
.talk 42611
..accept 26264
step
goto 33.4,39.3
.talk 42630
..accept 26265
step
goto 33.0,43.2
.kill 6 Living Contamination |q 26265/1
.from Toxic Sludge##42184+
.get 6 Recovered Possession |q 26264/1
.' Stand next to Toxic Pools |tip They look like green spots on the ground that spew liquid around this area.
.' Clean 5 Toxic Pools |q 26205/1
step
goto 33.4,39.3
.talk 42630
..turnin 26265
step
goto 33.9,34.8
.talk 42323
..accept 26200
only Gnome Priest
step
goto 33.9,34.8
.talk 42323
.' Learn Flash Heal |q 26200/2
only Gnome Priest
step
goto 33.9,34.6
.' Use your Flash Heal ability on the Wounded Infantry
.' Practice casting Flash Heal 5 times |q 26200/1
only Gnome Priest
step
goto 33.4,36.8
.talk 42366
..accept 26207
only Gnome Rogue
step
goto 33.4,36.8
.talk 42366
.' Learn Eviscerate |q 26207/2
only Gnome Rogue
step
goto 34.5,37.2
.' Use Sinister Strike on the Target Dummies to build up combo points, then use Eviscerate on the Target Dummies
.' Practice using Eviscerate 3 times |q 26207/1
only Gnome Rogue
step
goto 34.3,37.5
.talk 42324
..accept 26204
only Gnome Warrior
step
goto 34.3,37.5
.talk 42324
.' Learn Charge |q 26204/2
only Gnome Warrior
step
goto 34.3,37.5
.' Use your Charge ability on the Training Dummy
.' Practice using Charge 1 time |q 26204/1
only Gnome Warrior
step
goto 34.5,35.1
.talk 42331
..accept 26198
only Gnome Mage
step
goto 34.5,35.1
.talk 42331
.' Learn Arcane Missiles |q 26198/2
only Gnome Mage
step
goto 34.4,37.5
.' Use your Fireball ability on the Training Dummy to trigger Arcane Missiles, then use Arcane Missiles on the Training Dummy
.' Practice casting Arcane Missiles 2 times |q 26198/1
only Gnome Mage
step
goto 33.3,38.4
.talk 460
..accept 26201
only Gnome Warlock
step
goto 33.3,38.4
.talk 460
.' Learn Immolate |q 26201/2
only Gnome Warlock
step
goto 34.4,37.5
.' Use your Immolate ability on a Training Dummy
.' Practice Casting Immolate 5 Times |q 26201/1
only Gnome Warlock
step
goto 34.3,34.6
.talk 42553
..turnin 26205
step
goto 33.8,34.1
.talk 42611
..turnin 26264
step
goto 33.5,36.7
.talk 42489
..accept 26316
step
goto 33.9,34.8
.talk 42323
..turnin 26200
only Gnome Priest
step
goto 33.4,36.7
.talk 42366
..turnin 26207
only Gnome Rogue
step
goto 34.5,35.1
.talk 42331
..turnin 26198
only Gnome Mage
step
goto 33.2,38.4
.talk 460
..turnin 26201
only Gnome Warlock
step
goto 34.3,37.5
.talk 42324
..turnin 26204
only Gnome Warrior
step
goto 33.1,48.7
.talk 42708
..turnin 26316
..accept 26285
..accept 26284
step
goto 32.9,49.9
.from Rockjaw Marauder##42222+, Rockjaw Bonepicker##42221+
.get 7 Stolen Powder Keg |q 26285/1
.' Attack Makeshift Cages to destroy them |tip They look like bone cages with brown animal hides layong on them around this area.
.' Rescue 6 Captured Demolitionists |q 26284/1
step
goto 33.1,48.7
.talk 42708
..turnin 26285
..turnin 26284
..accept 26318
step
goto 31.9,49.2 |n
.' Enter the cave |goto 31.8,49.2,0.5 |noway |c
step
goto 28.8,49.0
.' Follow the path to the back of the cave
.kill Boss Bruggor |q 26318/2
step
goto 29.2,48.5
.' Click the Detonator |tip It looks like a small metal box with a handle on, sitting on the ground inside the cave.
.' Detonate the Trogg Tunnel |q 26318/1
step
goto 31.9,49.2 |n
.' Leave the cave |goto 31.8,49.2,0.5 |noway |c
step
goto 33.1,48.7
.talk 42708
..turnin 26318
..accept 26329
step
goto 33.7,36.4
.talk 42317
..turnin 26329
..accept 26331
step
goto 33.4,36.8
.talk 42491
..accept 26333
step
goto 39.1,33.1
.from Irradiated Technician##42223+
.' Kill 8 Crushcog's Minions |q 26331/1
.' Use your Techno-Grenade on Repaired Mechano-Tanks |use Techno-Grenade##58200 |tip They look like yellow crab machines around this area.
.' Destroy 5 Repaired Mechano-Tanks |q 26333/1
step
goto 33.7,36.4
.talk 42317
..turnin 26331
step
goto 33.4,36.8
.talk 42491
..turnin 26333
step
goto 33.4,36.8
.talk 42366
..accept 26339
step
goto 37.4,44.0
.talk 42353
..turnin 26339
..accept 26342
step
goto 39.2,41.4
.' Use your Paintinator on Crushcog Sentry-Bots |use Paintinator##58203 |tip They look like small robots with red light heads running around on the frozen lake.
.' Blind 5 Crushcog's Sentry-Bots |q 26342/1
step
goto 37.4,44.0
.talk 42353
..turnin 26342
..accept 26364
step
goto 40.6,42.0
.talk 42849
..' Tell him you're ready to start the assault
.' Use your Orbital Targeting Device to target on Razlo Crushcog |use Orbital Targeting Device##58253
.' Defeat Razlo Crushcog |q 26364/1
step
goto 37.4,44.0
.talk 42353
..turnin 26364
..accept 26373
step
goto Dun Morogh,49.9,45.0
.talk 42933
..accept 26380
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Home Cities Reputation\\Ironforge & Gnomeregan\\Dwarf & Gnome (5-15)",[[
description This guide will help you to get Exalted
description reputation with the Ironforge and
description Gnomeregan factions.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
author support@zygorguides.com
step
goto Dun Morogh,53.9,50.7
.talk 1267
..accept 384
step
goto 54.5,50.8
.talk 1247
..turnin 26380
only Gnome
step
goto 54.5,50.8
.talk 1247
.buy Rhapsody Malt##2894 |q 384/2
step
goto 54.5,50.8
.talk 1247
.home Kharanos
step
goto 54.2,51.2
.talk 1374
..accept 315
step
goto 53.7,52.2
.talk 40950
..turnin 26373 |only Gnome
..accept 25724
step
goto 53.8,52.8
.talk 43701
.fpath Kharanos
step
goto 56.0,48.4
.from Crag Boar##1125+
.get 4 Tender Boar Rib |q 384/1
step
goto 53.9,50.7
.talk 1267
..turnin 384
step
goto 49.9,45.0
.talk 42933
..accept 26380
only Dwarf
step
goto 51.5,40.7 |n
.' Follow the path up |goto 51.5,40.7,0.5 |noway |c
step
goto 48.6,38.0
.kill 5 Frostmane Seer |q 25724/1
.kill 7 Frostmane Snowstrider |q 25724/2
.' Click Shimmerweed Baskets |tip They look like small wooden woven baskets on the ground around this area.
.get 7 Shimmerweed |q 315/1
step
'Hearth to Kharanos |goto 54.5,50.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 54.5,50.9
.talk 1247
..turnin 26380
only Dwarf
step
goto 54.2,51.2
.talk 1374
..turnin 315
step
goto 53.7,52.2
.talk 40950
..turnin 25724
..accept 25667
..accept 313
step
goto 53.7,52.1
.talk 40951
..accept 25668
step
goto 49.5,52.1 |n
.' Enter the cave |goto 49.5,52.1,0.5 |noway |c
step
goto 48.3,47.0
.' Click Pilfered Supplies and get them |tip They look like small wooden barrels and wooden boxes on the ground inside this cave.
.talk 40991
..' Tell him Captain Tharran wants him to deploy his remote observation bots and withdraw to Kharanos
.' Convey orders to Mountaineer Dunstand |q 313/1
step
goto 49.2,47.8
.' Click Pilfered Supplies and get them |tip They look like small wooden barrels and wooden boxes on the ground inside this cave.
.talk 40994
..' Tell him Captain Tharran wants him to deploy his remote observation bots and withdraw to Kharanos
.' Convey orders to Mountaineer Lewin |q 313/2
step
goto 49.3,44.3
.' Click Pilfered Supplies and get them |tip They look like small wooden barrels and wooden boxes on the ground inside this cave.
.talk 41056
..' Tell him Captain Tharran wants him to deploy his remote observation bots and withdraw to Kharanos
.' Convey orders to Mountaineer Valgrum |q 313/3
step
goto 48.3,47.0
.kill 10 Wendigo |q 25667/1
.' Click Pilfered Supplies |tip They look like small wooden barrels and wooden boxes on the ground inside this cave.
.get 6 Pilfered Supplies |q 25668/1
step
goto 49.5,52.1 |n
.' Leave the cave |goto 49.5,52.1,0.5 |noway |c
step
goto 50.5,52.5 |n
.' Follow the path up |goto 50.5,52.5,0.5 |noway |c
step
goto 53.7,52.1
.talk 40951
..turnin 25668
step
goto 53.7,52.2
.talk 40950
..turnin 25667
..turnin 313
..accept 25792
step
goto 53.3,51.9
.talk 1269
..accept 412
step
goto 57.3,56.8
.from Frostmane Scavenger##41146+
.get 8 Gyromechanic Gear |q 412/1
.' Use the Rune of Fire in your bags next to Constriction Totems |use Rune of Fire##56009 |tip They look like wooden spiked rods with green orbs at the top of them around this area.
.' 4 Constriction Totems Burned |q 25792/1
step
goto 53.7,52.2
.talk 40950
..turnin 25792
step
goto 53.3,51.9
.talk 1269
..turnin 412
step
goto 53.7,52.2
.talk 40950
..accept 25838
step
goto 56.8,47.1
.talk 41363
..turnin 25838
..accept 25839
step
goto 56.7,46.5
.' Click the Ultrasafe Personnel Launcher |tip They look like balls of lightning on a metal machine.
.' Use the Ultrasafe Personnel Launcher to deploy to Frostmane Retreat |q 25839/1
step
goto 62.5,53.7
.talk 41298
..turnin 25839
..accept 25840
..accept 25841
step
goto 62.5,53.8
.talk 50601
..accept 28868
step
goto 64.4,54.4
.' Use your Signal Flare |use Signal Flare##56048
.' Attack the Northern Frostmane Retreat |q 25841/1
step
goto 63.8,55.7
.kill Battok the Berserker |q 25840/1
step
goto 63.3,57.3
.' Use your Signal Flare |use Signal Flare##56048
.' Attack the Southern Frostmane Retreat |q 25841/2
step
goto 62.7,55.1
.kill 4 Frostmane Warrior |q 25840/2
.' Use your Viewpoint Equalizer to shrink Frostmane Builders |use Viewpoint Equalizer##67249
.' Shrink 5 Frostmane Builders |q 28868/1
step
goto 62.5,53.8
.talk 50601
..turnin 28868
step
goto 62.5,53.7
.talk 41298
..turnin 25840
..turnin 25841
..accept 25882
step
goto 69.2,51.3 |n
.' Follow the path up |goto 69.2,51.3,0.5 |noway |c
step
goto 70.4,48.9
.talk 41578
..turnin 25882
..accept 25932
.' Help Sergeant Flinthammer and his mountaineers fight off the Frostmane Raiders
.' Defend Amberstill Ranch |q 25932/1
step
goto 70.4,48.9
.talk 41578
..turnin 25932
step
goto 70.7,48.9
.talk 1261
..accept 25905
step
goto 70.3,48.1
.talk 1265
..accept 314
step
goto 69.3,49.6 |n
.' Follow the path up |goto 69.3,49.6,0.5 |noway |c
step
goto 69.7,44.4
.from Vagash##1388
.get Fang of Vagash |q 314/1
step
goto 70.3,48.1
.talk 1265
..turnin 314
step
goto 67.6,55.0
.' Whistle while standing next to Stolen Rams |script DoEmote("WHISTLE") |tip They look like different colored rams around this area.
.' Recover 6 Stolen Rams |q 25905/1
step
goto 70.7,48.9
.talk 1261
..turnin 25905
step
goto 70.4,48.9
.talk 41578
..accept 25933
step
goto 69.9,53.2 |n
.' Go to the road |goto 69.9,53.2,0.5 |noway |c
step
goto 75.9,54.3
.talk 1977
..accept 433
step
goto 75.9,54.5
.talk 43702
.fpath Gol'Bolar Quarry
step
goto 76.3,54.7
.talk 1254
..turnin 25933
..accept 432
step
goto 76.2,53.0
.talk 1255
..accept 25937
step
goto 77.7,55.0 |n
.' Enter the cave |goto 77.7,55.0,0.5 |noway |c
step
goto 78.2,53.3
.kill 8 Rockjaw Skullthumper |q 432/1
.kill 8 Rockjaw Bonesnapper |q 432/2
.' Click Frozen Artifacts |tip They look like crystals made of ice, generally along the walls of the cave.
.get 8 Frozen Artifact |q 25937/1
.' Use Runes of Return on Trapped Miners |use Runes of Return##56222 |tip They look like scared dwarves along the walls inside the cave.
.' Rescue 7 Trapped Miners |q 433/1
step
goto 77.7,55.0 |n
.' Leave the cave |goto 77.7,55.0,0.5 |noway |c
step
goto 75.1,55.9 |n
.' Follow the path up |goto 75.1,55.9,0.5 |noway |c
step
goto 75.9,54.3
.talk 1977
..turnin 433
step
goto 76.3,54.7
.talk 1254
..turnin 432
step
goto 76.2,53.0
.talk 1255
..turnin 25937
step
goto 75.9,54.3
.talk 1977
..accept 25986
step
goto 75.0,53.5 |n
.' Follow the path up to the road |goto 75.0,53.5,0.5 |noway |c
step
goto 82.6,48.3
.talk 41804
..accept 25979
step
goto 82.8,48.4
.talk 41786
..turnin 25986
..accept 25978
step
goto 83.0,51.5
.kill 6 Helm's Bed Surger |q 25979/1
.' Attack Icy Tombs |tip They look like big green chunks of ice around this area.
.' Free 6 Frozen Mountaineers |q 25978/1
step
goto 82.9,48.4
.talk 41786
..turnin 25978
step
goto 82.6,48.3
.talk 41804
..turnin 25979
step
goto 82.9,48.4
.talk 41786
..accept 25997
step
goto 85.2,60.6
.from Captain Beld##6124 |tip He's inside of the house at the bottom of the stairs
.get Dark Iron Attack Plans |q 25997/2
step
goto 84.0,58.1
.kill 5 Dark Iron Spy |q 25997/1
step
goto 82.9,48.4
.talk 41786
..turnin 25997
..accept 25998
step
goto 75.2,52.8
.' Click Mathel's Flying Machine |tip It looks like a helicopter flying in place on a wooden platform.
.' You will fly to Ironforge Airfield |goto 76.0,16.8,0.5 |noway |c
step
goto 78.3,20.5
.talk 41853
..turnin 25998
..accept 26078
step
goto 78.3,24.6
.' Use the Firefighting Gear next to the burning airplanes |use Firefighting Gear##56803
.' Extinquish 6 Fires |q 26078/1
step
goto 78.3,20.5
.talk 41853
..turnin 26078
..accept 26085
step
goto 77.7,30.1
.' Use the Ironforge Banner while standing next to Loose Snow |use Ironforge Banner##56809 |tip They look like piles of white snow on the ground around this area.
.' Plant 8 Ironforge Banners |q 26085/1
step
goto 78.3,20.5
.talk 41853
..turnin 26085
..accept 26094
step
goto 77.1,18.5
.' Click the Repaired Bomber |tip It looks like an airplane parked at the end of the runway, ready to take off.
.' Use Iron Hammer Bomb on the Dark Iron forces below |use Iron Hammer Bomb##56814
.' Kill 30 Dark Iron Attackers |q 26094/1
step
goto 78.3,20.5
.talk 41853
..turnin 26094
..accept 26102
step
goto 78.5,34.4
.kill Dark Iron Golem |n
.kill General Grimaxe |q 26102/1
step
goto 78.3,20.5
.talk 41853
..turnin 26102
..accept 26112
step
'Hearth to Thunderbrew Distillery |goto 54.5,50.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 53.8,52.8
.talk 43701
.' Fly to Ironforge, Dun Morogh |goto Ironforge,55.9,47.9,0.5 |noway |c
step
goto Ironforge,41.4,52.3
.talk 1959
..accept 26131
step
goto 39.8,57.4
.talk 26131
..turnin 26112
..accept 26118
step
goto 36.6,43.2
.' Use the Sturdy Manacles on Ambassador Slaghammer|use Sturdy Manacles##56837
.' Take Ambassaddor Slaghammer to 43.6,50.6
.' Arrest Ambassador Slaghammer and bring him to the High Seat |q 26118/1
step
goto 39.1,56.1
.talk 42129
..turnin 26118
step
goto 55.5,47.7
.talk 6388
..' Tell him Mountaineer Barleybrew said he could help you get to Loch Modan
.' You will fly to Thelsamar |goto Loch Modan,13.9,56.7,0.5 |noway |c
step
goto Loch Modan,14.0,56.5
.talk 1960
..turnin 26131
..accept 26854
step
goto 12.7,58.5 |n
.' Enter the tunnel |goto 12.7,58.5,0.5 |noway |c
step
goto Dun Morogh,87.6,50.1
.' Click the Dwarven Corpse
..turnin 26854
..accept 26855
step
goto 87.5,50.2
.from Mangeclaw##1961
.get Mangy Claw |q 26855/1
step
goto 89.6,51.8 |n
.' Enter the tunnel |goto 89.6,51.8,0.5 |noway |c
step
goto Loch Modan,14.0,56.5
.talk 1960
..turnin 26855
..accept 13635
step
goto 16.4,58.5 |n
.' Enter the tunnel |goto 16.4,58.5,0.5 |noway |c
step
goto 23.4,75.0
.talk 1092
..turnin 13635
..accept 26146
step
goto 23.3,74.9
.talk 1089
..accept 26145
step
goto 29.3,66.7 |n
.' Follow this path southeast |goto 29.3,66.7,0.5 |noway |c
step
goto 31.5,74.6
.kill 12 Stonesplinter Trogg##1161 |q 26146/1
.get 8 Trogg Stone Tooth##2536 |q 26145/1
step
goto 30.5,69.7 |n
.' Go back to the road |goto 30.5,69.7,0.5 |noway |c
step
goto 23.4,75.0
.talk 1092
..turnin 26146
..accept 26148
step
goto 23.3,74.9
.talk 1089
..turnin 26145
step
goto 23.3,75.1
.talk 1090
..accept 26147
step
goto 29.3,66.7 |n
.' Follow this path southeast |goto 29.3,66.7,0.5 |noway |c
step
goto 33.1,69.3 |n
.' Enter the cave |goto 33.1,69.3,0.5 |noway |c
step
goto 34.3,61.0
.' Follow the path in the cave down, around, and then up again
.kill Grawmug |q 26148/1
step
goto 35.5,64.9
.kill 8 Stonesplinter Bonesnapper |q 26147/2
.kill 8 Stonesplinter Shaman |q 26147/1
step
goto 33.1,69.3 |n
.' Leave the cave |goto 33.1,69.3,0.5 |noway |c
step
goto 30.5,69.7 |n
.' Go back to the road |goto 30.5,69.7,0.5 |noway |c
step
goto 23.4,75.0
.talk 1092
..turnin 26148
..accept 26176
step
goto 23.3,75.1
.talk 1090
..turnin 26147
step
goto 33.9,51.0
.talk 1572
.fpath Thelsamar
step
goto 35.1,46.6
.talk 1340
..turnin 26176
..accept 26842
..accept 13636
step
goto 35.5,48.4
.talk 6734
.home Stoutlager Inn
step
goto 34.8,49.3
.talk 1963
..accept 26860
step
goto 35.4,42.8
.talk 1777
..accept 25118
step
goto 37.3,46.5
.' Click the Wanted! Poster |tip It looks like a wooden sign with pictures on it next to a well.
..accept 13648
step
goto 41.4,39.0
.' Click the Stolen Explorers' League Document |tip It looks like a rolled up scroll on the ground under this small wooden platform.
..accept 13655
step
goto 34.6,29.6
.from Black Bear##1129+
.get 8 Bear Rumps |q 26860/1
.kill 8 Forest Lurker |q 25118/1
.' You can find more:
.' at [29.8,17.3]
.' at [39.8,52.3]
step
goto 26.9,56.3
.from Mosshide Scout##44161+, Mosshide Basher##44162+
.get 12 Mosshide Ear |q 26842/1
.' You can find more around [27.3,43.8]
step
goto 35.1,46.6
.talk 1340
..turnin 26842
step
goto 34.8,49.3
.talk 1963
..turnin 26860
step
goto 35.4,42.8
.talk 1777
..turnin 25118
step
goto 37.3,47.8
.talk 1153
..turnin 13655
step
goto 40.7,58.4 |n
.' Follow the path up |goto 40.7,58.4,0.5 |noway |c
step
goto 36.8,61.1
.kill Gorick Guzzledraught |q 13648/1
.' Click the Stolen Explorers' League Document |tip It looks like a rolled up scroll on the ground inside the small cave, next to the campfire.
..accept 13656
step
goto 37.3,47.8
.talk 1153
..turnin 13656
step
goto 34.6,44.5
.talk 1139
..turnin 13648
step
goto 25.4,18.0
.talk 1343
..turnin 13636
..accept 26843
step
goto 26.2,31.8
.kill "Commander" Nazrim |q 26843/1
step
goto 25.4,18.0
.talk 1343
..turnin 26843
..accept 26844
step
goto 35.5,12.5
.kill 5 Tunnel Rat Forager |q 26844/2
.kill 5 Tunnel Rat Surveyor |q 26844/1
.' There are more deeper in, around 35.3,16.1
step
goto 25.4,18.0
.talk 1343
..turnin 26844
..accept 26845
..accept 26863
step
goto 25.4,17.8
.talk 44200
..accept 26846
step
goto 35.4,18.6 |n
.' Enter the cave |goto 35.4,18.6,0.5 |noway |c
step
goto 34.7,27.2
.' Click Miner's League Crates and get Miners' Gear
.from Foreman Sharpsneer##44198
.get Foreman Sharpsneer's Head |q 26845/1
step
goto 35.5,27.8
.kill 5 Tunnel Rat Geomancer |q 26846/1
.' Click the Miner's League Crates |tip They look like piles of wooden boxes inside the cave.
.get 6 Miners' Gear |q 26863/1
step
goto 35.4,18.6 |n
.' Leave the cave |goto 35.4,18.6,0.5 |noway |c
step
goto 25.4,18.0
.talk 1343
..turnin 26845
..accept 26864
..turnin 26863
step
goto 25.4,17.8
.talk 44200
..turnin 26846
step
'Hearth to Stoutlager Inn |goto 35.5,48.3,0.5 |use Hearthstone##6948 |noway |c
step
goto 35.1,46.6
.talk 1340
..turnin 26864
..accept 26927
step
map Ironforge
'To continue gaining reputation with the Ironforge faction:
.' You can buy an Ironforge Tabard from Captain Stonehelm at [Ironforge 55.9,47.9] |tip Wear the Ironforge Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
.'
.'
'To continue gaining reputation with the Gnomeregan faction:
.' You can buy a Gnomeregan Tabard from Master Tinker Trini at [Ironforge 56.2,48.5] |tip Wear the Gnomeregan Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Home Cities Reputation\\Stormwind\\Human (1-20)",[[
description This guide will help you to get Exalted
description reputation with the Stormwind faction.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
author support@zygorguides.com
step
'You will not be able to do some of the quests in this section if you are not a Human.
.' Skip to the next step of the guide
step
goto Elwynn Forest,48.2,42.1
.talk 197
..accept 28757 |only Human Mage
..accept 28762 |only Human Paladin
..accept 28763 |only Human Priest
..accept 28764 |only Human Rogue
..accept 28765 |only Human Warlock
..accept 28766 |only Human Warrior
..accept 28767 |only Human Hunter
step
goto 46.9,39.3
.kill 6 Blackrock Battle Worg |q 28757/1 |only Human Mage
.kill 6 Blackrock Battle Worg |q 28762/1 |only Human Paladin
.kill 6 Blackrock Battle Worg |q 28763/1 |only Human Priest
.kill 6 Blackrock Battle Worg |q 28764/1 |only Human Rogue
.kill 6 Blackrock Battle Worg |q 28765/1 |only Human Warlock
.kill 6 Blackrock Battle Worg |q 28766/1 |only Human Warrior
.kill 6 Blackrock Battle Worg |q 28767/1 |only Human Hunter
step
goto 48.2,42.1
.talk 197
..turnin 28757 |only Human Mage
..accept 28769 |only Human Mage
..turnin 28762 |only Human Paladin
..accept 28770 |only Human Paladin
..turnin 28763 |only Human Priest
..accept 28771 |only Human Priest
..turnin 28764 |only Human Rogue
..accept 28772 |only Human Rogue
..turnin 28765 |only Human Warlock
..accept 28773 |only Human Warlock
..turnin 28766 |only Human Warrior
..accept 28774 |only Human Warrior
..turnin 28767 |only Human Hunter
..accept 28759 |only Human Hunter
step
goto 45.4,43.3
.kill 8 Blackrock Spy |q 28769/1 |only Human Mage |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy |q 28770/1 |only Human Paladin |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy |q 28771/1 |only Human Priest |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy |q 28772/1 |only Human Rogue |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy |q 28773/1 |only Human Warlock |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy |q 28774/1 |only Human Warrior |tip They creep around near the trees around this area.
.kill 8 Blackrock Spy |q 28759/1 |only Human Hunter |tip They creep around near the trees around this area.
step
goto 48.2,42.0
.talk 197
..turnin 28769 |only Human Mage
..accept 3104 |only Human Mage
..turnin 28770 |only Human Paladin
..accept 3101 |only Human Paladin
..turnin 28771 |only Human Priest
..accept 3103 |only Human Priest
..turnin 28772 |only Human Rogue
..accept 3102 |only Human Rogue
..turnin 28773 |only Human Warlock
..accept 3105 |only Human Warlock
..turnin 28774 |only Human Warrior
..accept 3100 |only Human Warrior
..turnin 28759 |only Human Hunter
..accept 26910 |only Human Hunter
step
goto 49.7,39.4
.talk 198
..turnin 3104
..accept 26916
only Human Mage
step
goto 49.7,39.4
.talk 198
.' Learn Arcane Missiles |q 26916/2
only Human Mage
step
goto 48.6,44.2
.' Use your Arcane Missiles ability on the Training Dummy
.' Practice Arcane Missiles 2 times |q 26916/1
only Human Mage
step
goto 49.7,39.4
.talk 198
..turnin 26916
..accept 28784
only Human Mage
step
goto 50.3,39.9
.talk 915
..turnin 3102
..accept 26915
only Human Rogue
step
goto 50.3,39.9
.talk 915
.' Learn Eviscerate |q 26915/2
only Human Rogue
step
goto 48.7,44.2
.' Use your Eviscerate ability on the Training Dummy
.' Practice Eviscerate 3 times |q 26915/1
only Human Rogue
step
goto 50.3,39.9
.talk 915
..turnin 26915
..accept 28787
only Human Rogue
step
goto 49.9,42.6
.talk 459
..turnin 3105
..accept 26914
only Human Warlock
step
goto 49.9,42.6
.talk 459
.' Learn Immolate |q 26914/2
only Human Warlock
step
goto 48.7,44.2
.' Use your Immolate ability on the Training Dummy
.' Practice using Immolate 5 times |q 26914/1
only Human Warlock
step
goto 49.9,42.6
.talk 459
..turnin 26914
..accept 28788
only Human Warlock
step
goto 48.6,42.6
.talk 43278
..turnin 26910
..accept 26917
only Human Hunter
step
goto 48.6,42.6
.talk 43278
.' Learn Steady Shot |q 26917/2
only Human Hunter
step
goto 48.6,44.2
.' Use your Steady Shot ability on the Target Dummy
.' Practice Steady Shot 5 times |q 26917/1
only Human Hunter
step
goto 48.6,42.6
.talk 43278
..turnin 26917
..accept 28780
only Human Hunter
step
goto 49.8,39.5
.talk 375
..turnin 3103
..accept 26919
only Human Priest
step
goto 49.8,39.5
.talk 375
.' Learn Flash Heal |q 26919/2
only Human Priest
step
goto 49.9,39.7
.' Use your Flash Heal ability on the Wounded Trainee
.' Practice Flash Heal 5 times |q 26919/1
only Human Priest
step
goto 49.8,39.5
.talk 375
..turnin 26919
..accept 28786
only Human Priest
step
goto 50.4,42.1
.talk 925
..turnin 3101
..accept 26918
only Human Paladin
step
goto 50.4,42.1
.talk 925
.' Learn Judgement |q 26918/1
.' Learn Seal of Righteousness |q 26918/3
only Human Paladin
step
goto 48.8,44.3
.' Use your Seal of Righteousness ability, then use your Judgement ability on the Training Dummy
.' Practice Judgement 1 time |q 26918/2
only Human Paladin
step
goto 50.4,42.1
.talk 925
..turnin 26918
..accept 28785
only Human Paladin
step
goto 50.2,42.3
.talk 911
..turnin 3100
..accept 26913
only Human Warrior
step
goto 50.2,42.3
.talk 911
.' Learn Charge |q 26913/2
only Human Warrior
step
goto 48.5,44.3
.' Use your Charge ability on a Target Dummy
.' Practice Charge 1 time |q 26913/1
only Human Warrior
step
goto 50.2,42.3
.talk 911
..turnin 26913
..accept 28789
only Human Warrior
step
goto 48.8,38.4
.talk 823
..turnin 28789 |only Human Warrior
..accept 28797 |only Human Warrior
..turnin 28785 |only Human Paladin
..accept 28793 |only Human Paladin
..turnin 28780 |only Human Hunter
..accept 28791 |only Human Hunter
..turnin 28786 |only Human Priest
..accept 28794 |only Human Priest
..turnin 28788 |only Human Warlock
..accept 28796 |only Human Warlock
..turnin 28784 |only Human Mage
..accept 28792 |only Human Mage
..turnin 28787 |only Human Rogue
..accept 28795 |only Human Rogue
step
goto 48.5,38.1
.talk 951
..accept 28813 |only Human Warrior
..accept 28809 |only Human Paladin
..accept 28806 |only Human Hunter
..accept 28810 |only Human Priest
..accept 28812 |only Human Warlock
..accept 28808 |only Human Mage
..accept 28811 |only Human Rogue
step
goto Elwynn Forest,47.4,35.4
.kill 8 Goblin Assassin |q 28797/1 |only Human Warrior
.kill 8 Goblin Assassin |q 28793/1 |only Human Paladin
.kill 8 Goblin Assassin |q 28791/1 |only Human Hunter
.kill 8 Goblin Assassin |q 28794/1 |only Human Priest
.kill 8 Goblin Assassin |q 28796/1 |only Human Warlock
.kill 8 Goblin Assassin |q 28792/1 |only Human Mage
.kill 8 Goblin Assassin |q 28795/1 |only Human Rogue
.' Click Injured Stormwind Infantry |tip They look like Alliance soldiers laying on the ground around this area.
.' Revive 4 Injured Soldiers |q 28813/1 |only Human Warrior
.' Revive 4 Injured Soldiers |q 28809/1 |only Human Paladin
.' Revive 4 Injured Soldiers |q 28806/1 |only Human Hunter
.' Revive 4 Injured Soldiers |q 28810/1 |only Human Priest
.' Revive 4 Injured Soldiers |q 28812/1 |only Human Warlock
.' Revive 4 Injured Soldiers |q 28808/1 |only Human Mage
.' Revive 4 Injured Soldiers |q 28811/1 |only Human Rogue
step
goto 48.5,38.1
.talk 951
..turnin 28813 |only Human Warrior
..turnin 28809 |only Human Paladin
..turnin 28806 |only Human Hunter
..turnin 28810 |only Human Priest
..turnin 28812 |only Human Warlock
..turnin 28808 |only Human Mage
..turnin 28811 |only Human Rogue
step
goto 48.8,38.4
.talk 823
..turnin 28797 |only Human Warrior
..turnin 28793 |only Human Paladin
..turnin 28791 |only Human Hunter
..turnin 28794 |only Human Priest
..turnin 28796 |only Human Warlock
..turnin 28792 |only Human Mage
..turnin 28795 |only Human Rogue
..accept 28823 |only Human Warrior
..accept 28819 |only Human Paladin
..accept 28817 |only Human Hunter
..accept 28820 |only Human Priest
..accept 28822 |only Human Warlock
..accept 28818 |only Human Mage
..accept 28821 |only Human Rogue
step
goto 48.2,42.1
.talk 197
..turnin 28823 |only Human Warrior
..turnin 28819 |only Human Paladin
..turnin 28817 |only Human Hunter
..turnin 28820 |only Human Priest
..turnin 28822 |only Human Warlock
..turnin 28818 |only Human Mage
..turnin 28821 |only Human Rogue
..accept 26389
step
goto 48.1,42.5
.talk 9296
..accept 26391
step
goto 54.0,49.2
.from Blackrock Invader##42937+
.get 8 Blackrock Orc Weapon |q 26389/1
.' Use Milly's Fire Extinguisher on the fires in the area |use Milly's Fire Extinguisher##58362
.' Extinguish 8 Vineyard fires |q 26391/1
step
goto 48.1,42.5
.talk 9296
..turnin 26391
step
goto 48.2,42.1
.talk 197
..turnin 26389
..accept 26390
step
goto 57.0,40.7
.kill Kurtok the Slayer |q 26390/1
step
goto 48.2,42.1
.talk 197
..turnin 26390
..accept 54
step
goto 45.6,47.7
.talk 6774
..accept 2158
step
goto 41.7,64.6
.talk 42983
.fpath Goldshire
step
goto 42.1,65.9
.talk 240
..turnin 54
..accept 62
step
goto 42.1,67.3
.talk 241
..accept 47
step
goto 43.3,65.7
.talk 253
..accept 60
step
goto 43.8,65.8
.talk 295
..turnin 2158
step
goto 43.8,65.8
.talk 295
.home Goldshire
step
goto 41.7,65.5
.talk 514
..accept 26393
only Human
step
goto 41.7,64.6
.talk 42983
..turnin 26393
..accept 26394
only Human
step
goto 41.7,64.6
.talk 42983
.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
only Human
step
goto Stormwind City,77.2,61.0
.talk Osric Strang
..turnin 26394
..accept 26395
only Human
step
goto 70.9,72.5
.talk 352
..turnin 26395
..accept 26396
only Human
step
goto 70.9,72.5
.talk 352
.' Fly to Goldshire, Elwynn |goto Elwynn Forest,41.8,64.6,0.5 |noway |c
only Human
step
goto Elwynn Forest,41.7,65.5
.talk 514
..turnin 26396
only Human
step
goto 39.0,82.4 |n
.' Enter the mine |goto 39.0,82.4,0.5 |noway |c
step
goto 39.9,80.0
.' Go to this spot inside the mine
.' Explore the Fargodeep Mine |q 62/1
step
goto 38.1,82.9
.from Kobold Tunneler##475+, Kobold Miner##40+
.get 10 Gold Dust |q 47/1
.get 8 Large Candle |q 60/1
step
'Hearth to Goldshire |goto 43.8,65.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 43.3,65.7
.talk 253
..turnin 60
..accept 26150
step
goto 42.1,65.9
.talk 240
..turnin 62
..accept 76
step
goto 42.1,67.3
.talk 241
..turnin 47
step
goto 43.1,89.6
.talk 251
..turnin 26150
..accept 106
step
goto 34.5,84.3
.talk 246
..accept 85
step
goto 29.8,86.0
.talk 252
..turnin 106
..accept 111
step
goto 34.9,83.9
.talk 248
..turnin 111
..accept 107
step
goto 43.1,85.7
.talk 247
..turnin 85
..accept 86
step
goto 42.1,86.6
.from Stonetusk Boar##113+
.get 4 Chunk of Boar Meat |q 86/1
step
goto 34.5,84.3
.talk 246
..turnin 86
..accept 84
step
goto 43.1,85.7
.talk 247
..turnin 84
..accept 87
step
goto 40.1,80.6
.from Goldtooth##327
.get Bernice's Necklace |q 87/1
step
goto 34.5,84.3
.talk 246
..turnin 87
step
goto 34.7,84.5
.talk 244
..accept 88
step
goto 33.0,84.7
.from Princess##330
.get Brass Collar |q 88/1
step
goto 34.7,84.5
.talk 244
..turnin 88
step
goto 42.1,67.3
.talk 241
..accept 40
step
goto 42.1,65.9
.talk 240
..turnin 40
..accept 35
step
goto 43.3,65.7
.talk 253
..turnin 107
..accept 112
step
goto 49.5,66.3
.from Murloc##285+, Murloc Streamrunner##735+
.get 4 Crystal Kelp Frond |q 112/1
step
goto 43.3,65.7
.talk 253
..turnin 112
..accept 114
step
goto 43.1,89.6
.talk 251
..turnin 114
step
goto 42.1,65.9
.talk 240
..' Tell him you wish to ride the Stormwind charger
.' Ride the horse to the east side of Elwynn Forest |goto 73.9,72.5,0.5 |noway |c
step
goto 74.0,72.2
.talk 261
..turnin 35
..accept 37
..accept 52
step
goto 74.0,72.3
.' Click the Bounty Board |tip It's a wooden sign to the left of the wooden bridge.
..accept 46
..accept 26152
step
goto 79.5,68.7
.talk 278
..accept 83
step
goto 78.7,67.1
.kill James Clark |q 26152/1
.collect Gold Pickup Schedule##1307 |n
.' Click the Gold Pickup Schedule in your bags |use Gold Pickup Schedule##1307
..accept 123
step
goto 81.4,66.1
.talk 10616
..accept 5545
step
goto 81.8,66.0
.talk 42256
..turnin 26152
..turnin 123
..accept 147
step
goto 72.7,60.3
.' Click the Half-Eaten body |tip On the ground next to some big rocks by the river and a tree.
..turnin 37
..accept 45
step
goto 75.1,56.3
.from Rogue Wizard##474+
.get 6 Linen Scrap |q 83/1
step
goto 79.8,55.5
.' Click Rolf's Corpse |tip On the ground next to a murloc hut.
..turnin 45
..accept 71
step
goto 77.6,59.0
.from Murloc Lurker##732+, Murloc Forager##46+
.get 8 Torn Murloc Fin |q 46/1
step
goto 80.9,61.5
.kill 8 Prowler or Forest Wolf |q 52/1
.kill 5 Young Forest Bear |q 52/2
.' Click Bundles of Wood |tip They look like little stacks of 3 firewood at the base of trees in this area.
.get 8 Bundle of Wood |q 5545/1
step
goto 81.4,66.1
.talk 10616
..turnin 5545
step
goto 79.5,68.7
.talk 278
..turnin 83
step
goto 74.0,72.2
.talk 261
..turnin 71
..accept 59
..turnin 52
..turnin 46
step
goto 71.0,80.8
.from Morgan the Collector##473
.get The Collector's Ring |q 147/1
step
goto 79.5,68.7
.talk 278
..turnin 59
step
goto 81.8,66.0
.talk 42256
..turnin 147
..accept 26378
step
goto 61.7,53.9 |n
.' Enter the Jasperlode Mines |goto 61.7,53.9 |noway |c
step
goto 60.4,49.8
.' Go to this spot inside the mine
.' Explore the Jasperlode Mine |q 76/1
step
'Hearth to Goldshire |goto 43.8,65.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 42.1,65.9
.talk 240
..turnin 76
..accept 239
step
goto 24.6,78.2
.' Click the Wanted Poster |tip It's a sign next to the road.
..accept 176
step
goto 24.2,74.5
.talk 963
..turnin 239
..accept 11
step
goto 24.9,95.0
.from Hogger##448 |tip Don't worry that he's elite, he is pretty easy to kill.
.' Deal with "The Hogger Situation" |q 176/1
step
goto 24.8,95.3
.' Click the Westfall Deed |tip It's a rolled up scroll in the hand of a dead body on the ground.
..accept 184
step
goto 25.2,92.9
.from Riverpaw Outrunner##478+, Riverpaw Runt##97+
.get 8 Painted Gnoll Armband |q 11/1
step
goto 42.1,65.9
.talk 240
..turnin 176
step
goto 24.2,74.5
.talk 963
..turnin 11
step
goto Westfall,60.1,19.3
.talk 42308
..turnin 26378
..accept 26209
..turnin 184
step
goto 59.0,18.2
.talk 42384
.talk 42391
..' Offer them a couple copper and ask them who killed the Furbrowls
.' Obtain Clue #1 |q 26209/1
.' Obtain Clue #2 |q 26209/2
.' Obtain Clue #3 |q 26209/3
.' Obtain Clue #4 |q 26209/4
step
goto 60.1,19.3
.talk 42308
..turnin 26209
..accept 26213
..accept 26214
step
goto 56.5,15.4
.from Riverpaw Gnoll##725+, Riverpaw Scout##500+
.get Riverpaw Gnoll Clue |q 26213/1
step
goto 54.5,11.6
.from Murloc Raider##515+, Murloc Coastrunner##126+
.get Murloc Clue |q 26214/1
step
goto 60.1,19.3
.talk 42308
..turnin 26213
..turnin 26214
..accept 26215
step
goto 49.8,18.7
.talk 42406
.fpath Furlbrow's Pumpkin Farm
step
goto 49.6,19.4
.talk 42405
..turnin 26215
..accept 26228
step
goto 49.6,19.6
.talk 42498
..accept 26229
step
goto 49.5,19.1
.talk 42497
..accept 26230
step
goto 50.4,21.1
.from Coyote##834+
.get 6 Coyote Tail |q 26230/1
.' Click Fresh Dirt |tip They look like mounds of dirt on the ground around this area.
.get 5 Fresh Dirt |q 26230/2
step
goto 44.5,25.0 |n
.' Enter the mine |goto 44.5,25.0,0.5 |noway |c
step
goto 46.3,19.0
.' Use Two-Shoed Lou's Old House at the back of Jangolode Mine |use Two-Shoed Lou's Old House##57761
.' Learn about Livin' the Life |q 26228/1
step
goto 44.5,25.0 |n
.' Leave the mine |goto 44.5,25.0,0.5 |noway |c
step
goto 44.8,25.8
.kill 12 Kobold Digger |q 26229/1
step
goto 49.6,19.6
.talk 42498
..turnin 26229
step
goto 49.6,19.4
.talk 42405
..turnin 26228
..accept 26232
step
goto 49.5,19.1
.talk 42497
..turnin 26230
step
goto 48.2,19.6
.' Stand next to the 4 Thugs behind the barn
.from Thug##42387+
.' Eavesdrop on Thugs |q 26232/1
step
goto 49.7,19.5
.talk 42558
..turnin 26232
..accept 26236
step
goto 56.0,31.2
.talk 233
..turnin 26236
..accept 26237
step
goto 56.4,30.5
.talk 235
..accept 26241
step
goto 50.6,35.7
.from Goretusk##157+, Young Goretusk##454+
.get 6 Goretusk Flank |q 26241/2
.from Fleshripper##1109+ |tip They are spread out and rare around this area, so you will need to search a little for them.
.get 6 Stringy Fleshripper Meat |q 26241/3
.' You can find more Fleshrippers around [59.1,32.5]
step
goto 55.5,32.0
.kill 10 Harvest Watcher##114+ |q 26237/1
.collect Harvest Watcher Heart##57935 |n
.' Click the Harvest Watcher Heart in your bags |use Harvest Watcher Heart##57935
..accept 26252
.' Click Okra |tip They look like big blue and green bushes on the ground around this area.
.get 6 Okra |q 26241/1
step
goto 56.0,31.2
.talk 233
..turnin 26237
..turnin 26252
..accept 26257
step
goto 56.4,30.5
.talk 235
..turnin 26241
step
goto 56.0,31.2
.talk 233
..accept 26270
step
goto 56.4,30.5
.talk 235
..turnin 26270
..accept 26266
step
goto 49.8,34.4
.' Use Harvest Watcher Heart on an Overloaded Harvest Golem |use Harvest Watcher Heart##57954
.' Enable an Overloaded Harvest Golem |q 26257/1
step
goto 47.5,35.0
.' Use the abilities on your action bar to do the following:
.kill 25 Energized Harvest Reaper |q 26257/2
step
goto 50.1,33.8 |n
.' Click the red arrow on your hotbar to stop controlling the Harvest Watcher |outvehicle |q 26257
step
goto 56.0,31.2
.talk 233
..turnin 26257
step
goto 56.6,49.4
.talk 523
.fpath Sentinel Hill
step
goto 57.0,47.1
.talk 42575
..turnin 26266
..accept 26271
step
goto 56.3,47.5
.talk 234
..accept 26286
step
goto 56.5,47.6
.talk 821
..accept 26287
step
goto 52.9,53.7
.talk 8931
.home Sentinel Hill
step
goto 53.9,50.0
.from Riverpaw Brute##124+, Riverpaw Herbalist##501+, Riverpaw Bandit##452+
.' Slay 12 attacking Riverpaw Gnolls |q 26287/1
.get Gnoll Attack Orders |q 26286/1
step
goto 56.9,57.6
.' Use Westfall Stew next to Homeless Stormwind Citizens, West Plains Drifters, and Transients |use Westfall Stew##57991
.' Feed 20 Westfall Homeless |q 26271/1
.' You can find more at [58.2,40.2]
step
goto 56.3,47.5
.talk 234
..turnin 26286
step
goto 56.5,47.6
.talk 821
..turnin 26287
..accept 26288
step
goto 57.0,47.1
.talk 42575
..turnin 26271
step
goto 56.3,47.5
.talk 234
..accept 26289
step
goto 62.3,76.4
.kill Jango Spothide  |q 26288/3
step
goto 63.4,76.2
.kill 5 Riverpaw Mystic |q 26288/1
.kill 5 Riverpaw Taskmaster |q 26288/2
step
goto 68.3,70.4
.talk 7024
..turnin 26289
..accept 26290
step
goto 70.5,74.5
.' You can safely attack the elite mobs, Agent Kearnen will kill them for you.
.' Use your Potion of Shrouding inside the tower |use Potion of Shrouding##58112
.' Become Invisible |havebuff Interface\Icons\Ability_Mage_Invisibility |q 26290
step
goto 70.6,74.1
.' Go to the top of the tower
.' Reveal Helix's Secret |q 26290/1
step
goto 68.3,70.4
.talk 7024
..turnin 26290
..accept 26291
step
'Hearth to Sentinel Hill |goto 52.9,53.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 56.3,47.5
.talk 234
..turnin 26291
..accept 26292
step
goto 56.5,47.6
.talk 821
..turnin 26288
step
goto 56.4,47.3
.talk 878
..accept 26371
step
goto 42.1,64.1
.talk 42425
..turnin 26292
..accept 26295
step
goto 42.1,63.3
.talk 42426
.fpath Moonbrook
step
goto 41.5,67.5
.from Moonbrook Thug##42677
.collect Red Bandana##58117 |n
.' Click the Red Bandana in your bags |use Red Bandana##58117
..accept 26296
step
goto 41.6,66.4
.' Click the Informational Pamphlet |tip It looks like a small brown book sitting on a busted barrel.
.get Informational Pamphlet |q 26295/1
step
goto 41.3,66.5
.' Click the Mysterious Propaganda |tip It looks like a crumbled scroll nailed to the wall.
.get Mysterious Propaganda |q 26295/4
step
goto 43.3,69.9
.' Click The Moonbrook Times |tip It looks like a long scroll laying flat on the ground next to the big fountain in the middle of Moonbrook.
.get Issue of the Moonbrook Times |q 26295/2
step
goto 43.5,66.6
.' Click the Secret Journal |tip It looks like a small blue book laying on the floor, upstairs in the very back room, in the building that looks like an inn.
.get Secret Journal |q 26295/3
step
goto 42.5,69.5
.from Moonbrook Thug##42677+ |tip They are found inside the buildings around Moonbrook.
.get 6 Red Bandana |q 26296/1
step
goto 42.1,64.1
.talk 42425
..turnin 26295
..accept 26297
..turnin 26296
step
goto 43.6,69.5
.' Stand in the crowd
.' Gather information from the Moonbrook Rally |q 26297/1
step
goto 42.1,64.1
.talk 42425
..turnin 26297
..accept 26319
step
goto 43.0,65.0
.talk 42651
..turnin 26319
..accept 26320
step
goto Westfall,38.3,77.5 |n
.' Enter the Defias Hideout and follow the trail of homeless people to this spot
.' Go through the swirling portal into the Deadmines
.' Skip to the next step in the guide
step
'Inside the Deadmines, right at the entrance, do the following:
.' Use your Incense Burner |use Incense Burner##58147
.' Uncover a vision of the past |q 26320/1
step
'Go back through the dungeon portal out of the Deadmines dungeon
.' Skip to the next step in the guide
step
goto Westfall,42.6,71.7
.' Follow the trail of homeless people to leave The Deadmines
.' Go outside to Westfall |goto Westfall |noway |c
step
goto 30.5,85.6
.talk 392
..turnin 26371
..accept 26348
..accept 26347
..accept 26349
step
goto 32.8,82.6
.from Old Murk-Eye##391 |tip He's a gray murloc that walks along this beach, so you may need to search for him.
.get Scale of Old Murk-Eye |q 26349/1
..kill 7 Murloc Tidehunter |q 26348/1
..kill 7 Murloc Oracle |q 26348/2
.collect Captain Sanders' Treasure Map##1357 |n
.' Click Captain Sanders' Treasure Map in your bags |use Captain Sanders' Treasure Map##1357
..accept 26353
.' You can find more Murloc Tidehunters and Murloc Oracles at [28.9,73.9]
step
goto 25.9,47.8
.' Click the Captain's Footlocker |tip It's a rectangle wooden box half-buried in the sand.
..turnin 26353
..accept 26354
step
goto 40.5,47.8
.' Click the Broken Barrel |tip It looks like a busted barrel sitting on the ground.
..turnin 26354
..accept 26355
step
goto 40.2,45.8
.from Chasm Slime##42669+
.get 5 Chasm Ooze |q 26347/1
step
goto 40.6,17.0
.' Click the Old Jug |tip It looks like a blue bottle sitting on the ground next to a log and a wooden windmill.
..turnin 26355
..accept 26356
step
goto 26.0,16.9
.' Click the Locked Chest |tip It looks like a brown treasure chest sitting next to a small wooden shack on this tiny island.
..turnin 26356
step
'Hearth to Sentinel Hill |goto 52.9,53.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 56.3,47.5
.talk 234
..turnin 26320
..accept 26322
step
goto 56.3,47.5
.' Watch the dialogue
.' Witness the Rise of the Brotherhood |q 26322/1
step
goto 56.6,49.5
.talk 523
.' Fly to Moonbrook, Westfall |goto 42.1,63.3,0.5 |noway |c
step
goto 30.5,85.6
.talk 392
..turnin 26348
..turnin 26347
..turnin 26349
step
goto 42.1,63.3
.talk 42426
.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
step
goto 85.8,31.7
.talk 29611
..turnin 26322
..accept 26370
step
goto 70.9,72.5
.talk 352
.' Fly to Sentinel Hill, Westfall |goto Westfall,56.6,49.4,0.5 |noway |c
step
goto Westfall,56.4,49.6
.talk 234
..turnin 26370
..accept 26761 |only Human
step
goto 56.4,49.5
.talk 821
..accept 26365
only Human
step
goto 56.6,49.4
.talk 523
.' Fly to Eastvale Logging Camp, Elwynn |goto Elwynn Forest,81.9,66.4,0.5 |noway |c
step
'Go east to Redridge Mountains |goto Redridge Mountains |noway |c
step
goto Redridge Mountains,16.1,64.6
.' Click the Wanted Poster |tip It looks like a wooden sign with a tan scroll in it, next to the tower entrance.
..accept 26504
step
goto 15.6,65.3
.talk 379
..accept 26506
step
goto 15.3,64.6
.talk 464
..turnin 26365
..accept 26503
step
goto 17.4,65.1
.from Tarantula##442+
.get 4 Tarantula Eye |q 26506/1
.from Dire Condor##428+ |tip You can find them resting on rocks and flying around in the sky.
.get 4 Condor Giblet |q 26506/2
step
goto 16.2,55.3
.' Click the Gnoll Battle Plan |tip It's a big scroll laying flat on the ground next to a campfire.
.get Gnoll Battle Plans |q 26503/1
step
goto 30.6,62.7
.' Click the Gnoll Strategy Guide |tip It's a big scroll laying flat on the ground next to a campfire.
.get Gnoll Strategy Guide |q 26503/3
step
goto 31.0,63.2
.from Great Goretusk##547
.get 4 Goretusk Kidney##58893 |q 26506/3
step
goto 28.0,74.9
.' Click the Gnoll Orders |tip It's a small scroll laying flat on top of a small barrel, next to a small tent.
.get Gnoll Orders |q 26503/2
step
goto 28.3,73.2
.from Redridge Mongrel##423+, Redridge Thrasher##712+, Redridge Brute##426+
.kill 15 Redridge Gnoll |q 26504/1
step
goto 15.6,65.3
.talk 379
..turnin 26506
step
goto 15.3,64.6
.talk 464
..turnin 26504
..turnin 26503
..accept 26505
step
goto 29.4,53.8
.talk 931
.fpath Lakeshire
step
goto 28.7,41.0
.talk 900
..accept 26511
step
goto 28.9,41.1
.talk 344
..turnin 26505
..accept 26510
..turnin 26761 |only Human
step
goto 26.4,41.4
.talk 6727
.home Lakeshire
step
goto 22.1,42.7
.talk 342
..accept 26509
step
goto 17.2,45.0
.from Bellygrub##345
.get Bellygrub's Tusk |q 26509/1
step
goto 22.1,42.7
.talk 342
..turnin 26509
step
goto 28.4,48.9
.talk 8965
..accept 26508
step
goto 32.1,50.3
.' Click the Glinting Mud |tip It looks like a mound of dirt on the ground underwater.  It can spawn in random locations underwater around this whole area near Lakeshire, so you may need to search for it.
.get Nida's Necklace |q 26508/1
step
goto 37.8,42.1
.' Click the Gnomecorder |tip It looks like a metal control console with some levers and a tan scroll on it, on this tiny island.
.get Gnomecorder |q 26510/1
.from Murloc Scout##578+, Murloc Flesheater##422+
.kill 10 Lake Everstill Murloc |q 26511/1
step
goto 28.3,48.9
.talk 8962
..turnin 26508
step
goto 28.7,41.0
.talk 900
..turnin 26511
step
goto 28.9,41.1
.talk 344
..turnin 26510
..accept 26512
step
goto 31.9,44.9
.talk 382
..accept 26513
step
goto 32.3,39.5
.' Go to this spot
.' Test the Gnomecorder at the Lakeshire Graveyard |q 26512/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26512
..accept 26514
step
goto 30.8,38.4
.from Redridge Basher##446+, Redridge Alpha##445+, Redridge Mystic##430+
.get 10 Redridge Gnoll Collar |q 26514/1
.' More Redridge Gnolls can be found around [22.7,33.9]
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26514
..accept 26544
.collect Dirt-Stained Scroll##58898 |n
.' Click the Dirt-Stained Scroll in your bags |use Dirt-Stained Scroll##58898
..accept 26519
.' Click Redridge Supply Crates |tip They look like tan wooden boxes on the ground around this area.
.get 8 Redridge Supply Crate |q 26513/1
.' You can find more crates around [36.5,27.7]
step
goto 21.0,27.3 |n
.' Enter the cave |goto 21.0,27.3,0.5 |noway |c
step
goto 20.2,26.0
.from Blackrock Overseer##43185
.get Blackrock Orc Missive |q 26544/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26544
..accept 26545
step
goto 18.0,18.6
.kill Ardo Dirtpaw |q 26519/1 |tip Follow the path in the cave to the left.  He's at the very back of the cave on top of a rock platform.
step
goto 17.9,18.6
.' Click the Ettin Control Orb |tip It looks like a green glowing orb in a metal stand with 2 wings on it, next to Ardo Dirtpaw.
..turnin 26519
..accept 26520
step
goto 21.0,27.3 |n
.' Leave the cave |goto 21.0,27.3,0.5 |noway |c
step
goto 24.1,32.2
.' Use your Ettin Control Orb on a Canyon Ettin |use Ettin Control Orb##58895 |tip The Canyon Ettin is a big brown two-headed monster that patrols around this area carrying a big log.
.' While controlling the Subdued Canyon Ettin, go to 31.5,44.3
.' Use your Ettin Control Orb to make the Ettin pick up the Huge Boulder |use Ettin Control Orb##58895
.' Save Foreman Oslow |q 26520/1
step
goto 31.9,44.9
.talk 382
..turnin 26513
step
goto 39.5,34.3 |n
.' The path to Yowler starts here |goto 39.5,34.3,0.5 |noway |c
step
goto 26.9,21.9
.kill Yowler |q 26545/1 |tip He is a level 16 elite, so you should be able to kill him easily.
.get Blackrock Invasion Plans |q 26545/2
step
'Hearth to Lakeshire |goto 26.4,41.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 28.9,41.1
.talk 344
..turnin 26520
..turnin 26545
step
goto 28.9,40.9
.talk 43221
..accept 26567
step
goto 26.3,40.1
.talk 43184
..turnin 26567
..accept 26568
step
goto 28.6,40.7
.talk 43221
..turnin 26568
..accept 26571
..accept 26586
step
goto 29.7,44.5
.talk 43194
..accept 26569
step
goto 29.7,44.5
.talk 382
..accept 26570
step
goto 47.5,41.9
.talk 43270
..turnin 26586
..accept 26587
step
goto 50.4,39.9 |n
.' The path to the Blackrock Key Pouch starts here |goto 50.4,39.9,0.5 |noway |c
step
goto 49.2,38.0
.' Wait until the Blackrock Worg Captain is at the other end of the area with all the sleeping worgs |tip Dismiss your pet, if you have one, then run through the path between the worgs without touching any.
.' Click the Blackrock Key Pouch |tip It looks like a light brown bag hanging on the side of this small stump.
.get Messner's Cage Key |q 26587/1
step
goto 51.5,41.3
.from Murduck##43327
.get Keeshan's Bow |q 26571/1
.from Homurk##43329
.get Keeshan's Survial Knife |q 26571/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26571
..accept 26573
step
goto 47.5,41.9
.talk 43270
..turnin 26587
step
'Next to you:
.talk 43300
..accept 26560
step
goto 43.5,10.9
.from Utroka the Keymistress##43350
.get Jorgensen's Cage Key |q 26560/1
step
goto 38.0,16.2 |n
.' The path to Jorgensen starts here |goto 38.0,16.2,0.5 |noway |c
step
goto 33.6,11.8
.talk 43272
..turnin 26560
step
'Next to you:
.talk 43305
..accept 26561
step
goto 31.7,9.4 |n
.' Enter the cave |goto 31.7,9.4,0.5 |noway |c
step
goto 26.0,10.5
.kill Ritualist Tarak |q 26561/1
step
goto 26.6,10.5
.' Click the Blackrock Coffer |tip It looks like a big gray metal chest sitting on the ground inside the cave.
.get Keeshan's Red Headband |q 26573/1
.get Keeshan's Jade Amulet |q 26573/2
step
goto 25.9,10.5
.talk 43274
..turnin 26561
step
'Next to you:
.talk 43303
..accept 26562
step
goto 27.7,18.1
.' Follow the path back and around inside the cave.
.kill Overlord Barbarius |q 26562/1
.get Blackrock Lever Key |q 26562/2
step
goto 27.8,17.9
.' Click the Chain Lever |tip It looks like a small lever on the ground with a tiny skull at the top of it.
.' Swim out to Danforth in middle of the pool of water at [28.3,17.0]
.talk 43275
..turnin 26562
step
'Next to you:
.talk 43302
..accept 26563
step
goto 31.7,9.4 |n
.' Leave the cave |goto 31.7,9.4,0.5 |noway |c
step
goto 32.8,9.9
.from Blackrock Tracker##615+, Blackrock Summoner##4463+
.kill 25 Blackrock Orcs of Alther's Mill or Render's Camp |q 26570/1
.get 5 Blackrock Spyglass |q 26569/1
step
'Hearth to Lakeshire |goto 26.4,41.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 28.7,40.7
.talk 43221
..turnin 26573
..turnin 26563
..accept 26607
step
goto 26.3,40.1
.talk 43184
..turnin 26607
..accept 26616
step
goto 29.6,44.5
.talk 43194
..turnin 26569
step
goto 29.7,44.5
.talk 382
..turnin 26570
step
goto 34.4,46.0
.' Click Keeshan's Riverboat |tip It looks like a small wooden boat with a few people sitting in it, next to the shore.
.' Complete Keeshan's Riverboat Ride |q 26616/1
step
goto 52.9,54.6
.talk 43371
.fpath Camp Everstill
step
goto 52.5,55.4
.talk 43458
..turnin 26616
..accept 26639
step
goto 52.5,55.6
.talk 43462
..accept 26638
step
goto 52.4,55.5
.talk 43459
..accept 26637
step
goto 52.4,55.4
.talk 43461
..accept 26636
step
goto 48.9,58.4
.from Muckdweller##43532+ |tip They are underwater and found throughout the entire lake.
..get 8 Muckdweller Gland |q 26637/1
step
goto Redridge Mountains,52.4,55.5
.talk 43459
..turnin 26637
step
goto 53.1,67.8
.talk 43508
..turnin 26639
..accept 26640
step
goto 49.8,66.8
.kill 8 Blackrock Hunter |q 26638/1
.' Click Piles of Leaves |tip They look like piles of orange leaves on the ground around this area.
.get 5 Pile of Leaves |q 26636/1
.' Click Fox Poop |tip They look like dark mounds on the ground around this area.
.get 5 Fox Poop |q 26636/2
step
goto 52.5,55.6
.talk 43462
..turnin 26638
step
goto 52.5,55.4
.talk 43458
..turnin 26640
step
goto 52.4,55.4
.talk 43461
..turnin 26636
step
goto 52.5,55.4
.talk 43458
..accept 26646
step
goto 53.9,57.7
.' Use your Bravo Company Field Kit |use Bravo Company Field Kit##60384
.' Activate your Bravo Company Field Kit |havebuff Interface\Icons\INV_Misc_EngGizmos_20 |q 26646
step
'Use the Camouflage ability on your hotbar
.' Hide your party from sight |havebuff Interface\Icons\Spell_Nature_ProtectionformNature |q 26646
step
goto 69.5,76.3
.' Use your Camouflage ability on your hotbar every few minutes to make sure you stay camouflaged
.' Use your Distraction ability on your hotbar to distract orcs as you walk, so you can travel unnoticed
.' Use your Chloroform ability on your hotbar to knock out orcs if you cannot get past them simply by distracting them |tip You must be behind the orc to use your Chloroform ability.
.' Click the Blackrock Key Pouch |tip It looks like a small tan bag hanging on the wall in the back of this small cave.
.collect Blackrock Holding Pen Key##59261 |q 26646
step
goto 69.3,59.4
.' Use your Camouflage ability on your hotbar every few minutes to make sure you stay camouflaged
.' Use your Distraction ability on your hotbar to distract orcs as you walk, so you can travel unnoticed
.' Use your Chloroform ability on your hotbar to knock out orcs if you cannot get past them simply by distracting them |tip You must be behind the orc to use your Chloroform ability.
.' Click a Blackrock Holding Pen |tip They look like 3 huge round cages.
.' Free the Prisoners of War |q 26646/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26646
..accept 26651
step
goto 66.4,71.4
.' Use your Camouflage ability on your hotbar every few minutes to make sure you stay camouflaged
.' Use your Distraction ability on your hotbar to distract orcs as you walk, so you can travel unnoticed
.' Use your Chloroform ability on your hotbar to knock out orcs if you cannot get past them simply by distracting them |tip You must be behind the orc to use your Chloroform ability.
.' Use your Plant Seaforium ability in the small room at the top of the tower
.' Plant Seaforium at the Blackrock Tower |q 26651/2
step
goto 63.8,70.4
.' Use your Camouflage ability on your hotbar every few minutes to make sure you stay camouflaged
.' Use your Distraction ability on your hotbar to distract orcs as you walk, so you can travel unnoticed
.' Use your Chloroform ability on your hotbar to knock out orcs if you cannot get past them simply by distracting them |tip You must be behind the orc to use your Chloroform ability.
.' Use your Plant Seaforium ability inside this hut, next to all the Blackrock Explosive Devices
.' Plant Seaforium at the Munitions Hut |q 26651/1
step
goto 72.7,64.4 |n
.' The path up to John J. Keeshan starts here |goto 72.7,64.4,0.5 |noway |c
step
goto 77.7,65.5
.talk 43611
..turnin 26651
step
map Stormwind City
'To continue gaining reputation with the Stormwind faction:
.' You can buy a Stormwind Tabard from Captain Lancy Revshon at [Stormwind City 67.7,72.8] |tip Wear the Stormwind Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Home Cities Reputation\\The Exodar\\Draenei (1-20)",[[
description This guide will help you to get Exalted
description reputation with the Exodar faction.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
author support@zygorguides.com
step
'You will not be able to do some of the quests in this section if you are not a Draenei.
.' Skip to the next step of the guide
step
goto Azuremyst Isle,84.2,43.0
.talk 16475
..accept 9279
step
goto 80.4,45.9
.talk 16477
..turnin 9279
..accept 9280
step
goto 78.6,45.4
.from Vale Moth##16520+
.get 6 Vial of Moth Blood |q 9280/1
step
goto Azuremyst Isle,80.4,45.9
.talk 16477
..turnin 9280
..accept 9409
step
goto 80.1,48.8
.talk 16502
..turnin 9409
..accept 9283
step
goto 80.4,45.9
.talk 16477
..accept 9371
step
goto 79.1,46.5
.talk 16514
..turnin 9371
step
goto Azuremyst Isle,79.1,46.5
.talk 16514
..accept 10302
step
goto 78.4,43.5
.kill 8 Volatile Mutation |q 10302/1
step
goto 79.8,39.2
.' Cast Gift of the Naaru on a Draenei Survivor |cast Gift of the Naaru |tip They are Draeneis that are laying on the ground around this area.  They spawn in random locations, so you may have to search for one.
.' Save a Draenei Survivor |q 9283/1
step
goto 79.1,46.5
.talk 16514
..turnin 10302
..accept 9293
step
goto 79.1,46.6
.talk 20233
..accept 9799
step
goto Azuremyst Isle,80.1,48.8
.talk 16502
..turnin 9283
step
goto 79.7,48.2
.talk 16501 |tip He walks around inside the building healing wounded NPC's
..accept 26966
.' Learn Spell: Seal of Righteousness |q 26966/3
.' Learn Spell: Judgement |q 26966/1
only Draenei Paladin
step
goto 79.9,46.3
.' Cast Seal of Righteousness, then use Judgement on the Training Dummy
.' Practice Judgement 1 time |q 26966/2
only Draenei Paladin
step
goto 79.7,48.2
.talk 16501 |tip He walks around inside the building healing wounded NPC's
..turnin 26966
only Draenei Paladin
step
goto 79.9,49.7
.talk 16499
..accept 26963
.' Learn Steady Shot |q 26963/2
only Draenei Hunter
step
goto 79.8,45.8
.' Use your Steady Shot ability on the Training Dummy
.' Practice Steady Shot 5 times |q 26963/1
only Draenei Hunter
step
goto 79.9,49.7
.talk 16499
..turnin 26963
only Draenei Hunter
step
goto 79.6,49.5
.talk 16503
..accept 26958
.' Learn Charge |q 26958/2
only Draenei Warrior
step
goto 79.7,45.9
.' Practice using Charge on the Target Dummy
.' Practice Charge 1 time |q 26958/1
only Draenei Warrior
step
goto 79.6,49.5
.talk 16503
..turnin 26958
only Draenei Warrior
step
goto 79.4,51.2
.talk 17071
..accept 9305
step
goto 79.5,51.6
.talk 16535
..accept 9303
step
goto Azuremyst Isle,74.9,50.4
.from Mutated Root Lasher##16517+
.get 10 Lasher Sample |q 9293/1
.' Click the Corrupted Flowers |tip The Corrupted Flowers are tall red flowers around this area.
.get 3 Corrupted Flower |q 9799/1
step
goto 79.1,46.6
.talk 20233
..turnin 9799
step
goto 79.1,46.5
.talk 16514
..turnin 9293
..accept 9294
step
goto Azuremyst Isle,77.3,58.7
.' Click the Irradiated Power Crystal |tip It's a huge purple crystal sitting in the lake.
.' Disperse the Neutralizing Agent |q 9294/1
step
goto Azuremyst Isle,78.4,60.4
.' Use your Inoculating Crystal on Nestlewood Owlkins |use Inoculating Crystal##22962
.' Inoculate 6 Nestlewood Owlkins |q 9303/1
step
goto Azuremyst Isle,84.7,65.6
.' Go through the tunnel into the small clearing
.' Click the Emitter Spare Parts |tip They look like purple crystal guns sitting on the ground.
.get 4 Emitter Spare Part |q 9305/1
step
'Hearth to Ammen Vale |goto Azuremyst Isle,84.3,43.0,0.5 |use Hearthstone##6948 |noway |c
step
goto Azuremyst Isle,79.1,46.5
.talk 16514
..turnin 9294
step
goto 79.4,51.2
.talk 17071
..turnin 9305
step
goto 79.5,51.6
.talk 16535
..turnin 9303
..accept 9309
step
goto Azuremyst Isle,72,60.8
.talk 16546
..turnin 9309
..accept 10303
step
goto Azuremyst Isle,71.3,60.7
.kill 10 Blood Elf Scout |q 10303/1
step
goto Azuremyst Isle,72,60.8
.talk 16546
..turnin 10303
..accept 9311
step
goto Azuremyst Isle,69.3,65.7
.kill Surveyor Candress |q 9311/1
.collect Blood Elf Plans##24414 |n
.' Click the Blood Elf Plans in your bags |use Blood Elf Plans##24414
..accept 9798
step
goto 79.5,51.6
.talk 16535
..turnin 9311
..turnin 9798
..accept 9312
step
goto 79.4,51.2
.talk 17071
..turnin 9312
..accept 9313
step
goto 68.3,53.9 |n
.' The path through the mountains starts here |goto 68.3,53.9,0.5 |noway |c
step
goto Azuremyst Isle,64.5,54
.talk 16554
..accept 9314
step
goto Azuremyst Isle,61.1,54.2
.talk 17101
..accept 9452
step
goto Azuremyst Isle,61.9,51.6
.' Use your Draenei Fishing Net next to Schools of Red Snapper |use Draenei Fishing Net##23654 |tip They look like little round schools of fish in the water.
.get 10 Red Snapper |q 9452/1
step
goto Azuremyst Isle,61.1,54.2
.talk 17101
..turnin 9452
..accept 9453
step
goto Azuremyst Isle,49.8,51.9
.talk 17110
..turnin 9453
..accept 9454
step
goto Azuremyst Isle,48.4,51.8
.talk 17214
..accept 9463
step
goto Azuremyst Isle,48.7,50.3
.talk 16551
..turnin 9313
step
goto Azuremyst Isle,48.3,49.2
.talk 16553
..turnin 9314
.home Azure Watch
step
goto 49.7,49.1
.talk 43991
.fpath Azure Watch
step
goto Azuremyst Isle,50.3,56.6
.from Moongraze Stag##17200+
.get 6 Moongraze Stag Tenderloin|q 9454/1
.from Root Trapper##17196+
.get 8 Root Trapper Vine|q 9463/1
step
goto Azuremyst Isle,47,70.2
.talk 17240
..accept 9506
step
goto Azuremyst Isle,46.7,70.5
.talk 17246
..accept 9512
step
goto Azuremyst Isle,47.6,73
.from Skittering Crawler##17216+
.get 6 Skittering Crawler Meat|q 9512/1
step
goto Azuremyst Isle,46.7,70.5
.talk 17246
..turnin 9512
step
goto Azuremyst Isle,47,70.2
.talk 17241
..accept 9513
step
goto Azuremyst Isle,47.2,70
.talk 17242
..accept 9523
step
goto Azuremyst Isle,58.6,66.4
.' Click the Nautical Map |tip It's sitting on a box under a green canopy.
.get Nautical Map##23739 |q 9506/2
step
goto Azuremyst Isle,59.6,67.6
.' Click the Nautical Compass |tip It's sitting on a box under the blue canopy with a green stripe on it
.get Nautical Compass##23738 |q 9506/1
step
goto Azuremyst Isle,47,70.2
.talk 17240
..turnin 9506
..accept 9530
step
goto Azuremyst Isle,45.9,65.7
.' Click a Hollowed Out Tree |tip They look like tall, skinny tree stumps around this area.
.get Hollowed Out Tree |q 9530/1
.' Click Piles of Leaves |tip They look like small piles of purple leaves on the ground around this area.
.get 5 Pile of Leaves |q 9530/2
step
goto Azuremyst Isle,47,70.2
.talk 17240
..turnin 9530
..accept 9531
step
goto Azuremyst Isle,36.1,77
.' Click Ancient Relics |tip They look like white glowing orbs on small stands around this area.
.get 8 Ancient Relic |q 9523/1
.kill 5 Wrathscale Myrmidon |q 9513/1
.kill 5 Wrathscale Naga |q 9513/2
.kill 5 Wrathscale Siren |q 9513/3
.from Wrathscale Myrmidon##17194+, Wrathscale Naga##17193+, Wrathscale Siren##17195+
.collect Rune Covered Tablet##23759 |n
.' Click the Rune Covered Tablet in your bags |use Rune Covered Tablet##23759
..accept 9514
step
goto Azuremyst Isle,18.5,84.3
.' Use your Tree Disguise Kit next to the Naga Flag |use Tree Disguise Kit##23792 |tip It's a red flag on a metal pole on the beach.
.' Watch the conversation
.' Uncover the Traitor |q 9531/1
step
'Hearth to Azure Watch |goto 48.4,49.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 48.4,51.8
.talk 17214
..turnin 9463
step
goto 48.4,51.5
.talk 17215
..accept 9473
step
goto Azuremyst Isle,49.8,51.9
.talk 17110
..turnin 9454
..accept 10324
step
goto Azuremyst Isle,50.6,46.2
.from Moongraze Buck##17201+
.get 6 Moongraze Buck Hide |q 10324/1
.from Infected Nightstalker Runt##17202+
.collect Faintly Glowing Crystal##23678 |n
.' Click the Faintly Glowing Crystal in your bags |use Faintly Glowing Crystal##23678
..accept 9455
step
goto Azuremyst Isle,50.4,37.1
.' Click Azure Snapdragons |tip They are tall flowers with big bulbs that puff smoke at the base of trees.
.get 5 Azure Snapdragon Bulb |q 9473/1
step
goto Azuremyst Isle,49.8,51.9
.talk 17110
..turnin 10324
step
goto Azuremyst Isle,48.4,51.8
.talk 17215
..turnin 9473
step
goto Azuremyst Isle,47.1,50.6
.talk 17116
..turnin 9455
..accept 9456
step
goto Azuremyst Isle,49,51.1
.talk 17488
..accept 10428
step
goto Azuremyst Isle,48.3,49.2
.talk 16553
..accept 9603
step
goto 49.7,49.1
.talk 43991
..turnin 9603
..accept 9604
step
goto 49.7,49.1
.talk 43991
.' Fly to Exodar |goto The Exodar,54.4,36.6 |noway |c
step
goto 57.0,50.1
.talk 16768
..turnin 9604
..accept 9605
step
goto 54.5,36.3
.talk 17555
..turnin 9605
..accept 9606
step
goto 54.5,36.3
.talk 17555
.' Fly to Azure Watch, Azuremyst Isle |goto Azuremyst Isle,49.6,49.2,0.5 |noway |c
step
goto Azuremyst Isle,48.3,49.2
.talk 16553
..turnin 9606
step
goto Azuremyst Isle,45.7,43.9
.kill 8 Infected Nightstalker Runt|q 9456/1
step
goto Azuremyst Isle,47.1,50.6
.talk 17116
..turnin 9456
step
goto 47.0,70.2
.talk 17240
..turnin 9531
..accept 9537
step
goto 47.1,70.3
.talk 17241
..turnin 9513
..turnin 9514
step
goto Azuremyst Isle,47.2,70
.talk 17242
..turnin 9523
step
goto 47.1,70.3
.talk 17241
..accept 9515
step
goto Azuremyst Isle,48.2,72.5
.talk 17243
..' Tell him it's over
.from Engineer "Spark" Overgrind##17243
.get Traitor's Communication |q 9537/1
step
goto Azuremyst Isle,47,70.2
.talk 17240
..turnin 9537
..accept 9602
step
'Hearth to Azure Watch |goto 48.4,49.2,0.5 |use Hearthstone##6948 |noway |c
step
goto Azuremyst Isle,47.1,50.6
.talk 17116
..turnin 9602
step
goto Azuremyst Isle,49.40,51.0
.talk 17232
..accept 9538
.' Click the Stillpine Furbolg Language Primer in your bags |use Stillpine Furbolg Language Primer##23818
.' Read the Stillpine Furbolg Language Primer |q 9538/1
step
goto 49.4,51.0
.' Click the Totem of Akida |tip In the middle of town, next to the giant bone altar thing with the huge pink crystal in it.
..turnin 9538
step
goto 49.4,51.0
.' Click the Totem of Akida |tip In the middle of town, next to the giant bone altar thing with the huge pink crystal in it.
..accept 9539
step
goto 55.2,41.7
.' Follow the ghost furbolg as he runs up the hill
.' Click the Totem of Coo
..turnin 9539
..accept 9540
step
goto 55.6,41.6
.' Follow the ghost furbolg to the edge of the cliff
.' He will give you wings |havebuff Interface\Icons\Spell_Holy_DivineSpirit |q 9540
step
goto Azuremyst Isle,64.5,39.8
.' Click the Totem of Tikti
..turnin 9540
..accept 9541
step
goto 63.8,40.2
.' Follow the ghost furbolg to the river
.' He will give you a swim speed buff |havebuff Interface\Icons\Ability_Creature_Poison_05 |q 9541
step
goto Azuremyst Isle,63,67.9
.' Click the Totem of Yor underwater
..turnin 9541
..accept 9542
step
goto 61.0,69.5
.' Follow the ghost furbolg out of the water
.' He will turn you into a ghost panther |havebuff Interface\Icons\Ability_Druid_SupriseAttack |q 9542
step
goto Azuremyst Isle,28.1,62.4
.' Follow the panther as he runs
.' Click the Totem of Vark
..turnin 9542
..accept 9544
step
goto Azuremyst Isle,28.5,66.4
.from Bristlelimb Ursa##17185+, Bristlelimb Windcaller##17184+, Bristlelimb Furbolg##17183+
.collect Bristlelimb Key##23801 |n
.' Click Bristlelimb Cages |tip They look like yellow cages around this area.
.' Free 8 Stillpine Captives |q 9544/1
step
goto Azuremyst Isle,27.0,76.7 |n
.' Enter the cave |goto Azuremyst Isle,27.0,76.7,0.3 |noway |c
step
goto Azuremyst Isle,25.2,74.2
.' Follow the path to the bottom of the cave
.kill Warlord Sriss'tiz |q 9515/1
step
goto Azuremyst Isle,27.0,76.7 |n
.' Leave the cave |goto Azuremyst Isle,27.0,76.7,0.3 |noway |c
step
goto Azuremyst Isle,16.6,94.5
.talk 17311
..turnin 10428
..accept 9527
step
goto Azuremyst Isle,14.8,92
.from Raving Owlbeast##17188+, Aberrant Owlbeast##17187+, Deranged Owlbeast##17186+
.get Remains of Cowlen's Family |q 9527/1
step
goto Azuremyst Isle,16.6,94.5
.talk 17311
..turnin 9527
step
'Hearth to Azure Watch |goto 48.4,49.2,0.5 |use Hearthstone##6948 |noway |c
step
goto Azuremyst Isle,49.41,51.0
.talk 17114
..turnin 9544
..accept 9559
step
goto Azuremyst Isle,47,70.2
.talk 17241
..turnin 9515
step
goto Azuremyst Isle,44.7,23.6
.talk 17441
..accept 9562
step
goto 44.8,23.9
.talk 17442
..accept 9560
step
goto Azuremyst Isle,46.7,20.6
.talk 17440
..turnin 9559
step
goto 53.1,20.8
.from Ravager Specimen##17199+
.get 8 Ravager Hide |q 9560/1
step
goto Azuremyst Isle,33.8,25.7
.' Follow the road around
.from Siltfin Hunter##17192+, Siltfin Murloc##17190+, Siltfin Oracle##17191+
.' Click Stillpine Grain |tip They look like bags near the murloc huts along the beach.
.get 5 Stillpine Grain |q 9562/1
.from Murgurgala##17475
.collect Gurf's Dignity##23850 |n
.' Click Gurf's Dignity in your bags |use Gurf's Dignity##23850
..accept 9564
step
goto 34.0,26.5
.from Blood Elf Bandit##17591+
..collect Blood Elf Communication##23910
.' Click the Blood Elf Communication in your bags |use Blood Elf Communication##23910
..accept 9616
step
goto Azuremyst Isle,44.7,23.6
.talk 17441
..turnin 9562
..turnin 9564
step
goto 44.8,23.9
.talk 17442
..turnin 9560
step
goto Azuremyst Isle,46.7,20.6
.talk 17440
..accept 9565
step
goto Azuremyst Isle,46.9,21.2
.talk 17445
..accept 9573
step
goto 45.4,19.1 |n
.' Enter the cave |goto 45.4,19.1,0.5 |noway |c
step
goto Azuremyst Isle,47.4,14.1
.' Go to the upper level of the cave
.kill Chieftain Oomooroo |q 9573/1
step
goto Azuremyst Isle,50.5,11.5
.' Click the Blood Crystal |tip It's a huge red crystal on a little dirt island in the water.
..turnin 9565
..accept 9566
step
goto Azuremyst Isle,47.4,16.0
.kill 9 Crazed Wildkin |q 9573/2
step
goto 45.4,19.1 |n
.' Leave the cave |goto 45.4,19.1,0.5 |noway |c
step
goto Azuremyst Isle,46.7,20.6
.talk 17440
..turnin 9566
step
goto Azuremyst Isle,46.9,21.2
.talk 17445
..turnin 9573
step
goto 47.0,22.3
.talk 17443
..accept 9570
step
goto 45.4,19.1 |n
.' Enter the cave |goto 45.4,19.1,0.5 |noway |c
step
goto 49.9,13.0
.from The Kurken##17447
..get The Kurken's Hide |q 9570/1
step
goto 45.4,19.1 |n
.' Leave the cave |goto 45.4,19.1,0.5 |noway |c
step
goto 47.0,22.3
.talk 17443
..turnin 9570
..accept 9571
step
goto Azuremyst Isle,46.7,20.6
.talk 17440
..accept 9622
..turnin 9616
step
goto Azuremyst Isle,44.8,23.9
.talk 17442
..turnin 9571
step
'Hearth to Azure Watch |goto 48.4,49.2,0.5 |use Hearthstone##6948 |noway |c
step
goto Azuremyst Isle,47.1,50.6
.talk 17116
..turnin 9622
..accept 9623
step
goto 49.7,49.1
.talk 43991
.' Fly to Exodar |goto The Exodar,54.4,36.6 |noway |c
step
goto Azuremyst Isle,35.1,43.4
.' Follow the ramp up and outside The Exodar
.talk 17584
..turnin 9623
..accept 9625
step
goto The Exodar,54.5,36.3
.talk 17555
.' Fly to Azure Watch, Azuremyst Isle |goto Azuremyst Isle,49.6,49.2,0.5 |noway |c
step
'Go North to Bloodmyst Isle |goto Bloodmyst Isle |noway |c
step
goto Bloodmyst Isle,63.0,87.9
.talk 17586
..turnin 9625
..accept 9634
step
goto 63.0,87.5
.talk 17649
..accept 9663
step
goto Azuremyst Isle,46.7,20.6
.talk 17440
.' Warn High Chief Stillpine |q 9663/1
step
goto 47.1,50.6
.talk 17116
.' Warn Exarch Menelaous |q 9663/2
step
goto Azuremyst Isle,47,70.2
.talk 17240
.' Warn Admiral Odesyus |q 9663/3
step
'Go north to Bloodmyst Isle |goto Bloodmyst Isle |noway |c
step
goto Bloodmyst Isle,63.0,87.5
.talk 17649
..turnin 9663
..accept 9666
step
goto 63.4,88.8
.talk 17599
..accept 9624
step
goto 57.4,89.8
.kill 10 Bloodmyst Hatchling |q 9634/1
.' Click Sand Pears |tip They look like light brown pears at the base of trees around this area.
.get 10 Sand Pear |q 9624/1
step
goto 63.0,87.9
.talk 17586
..turnin 9634
step
goto 63.4,88.8
.talk 17599
..turnin 9624
step
goto 68.3,81.1
.talk 17682
..accept 9667
step
goto 64.5,77.7
.' Kill furbolgs in this camp until High Chief Bristlelimb appears
.from High Chief Bristlelimb##17702
.collect The High Chief's Key##24099 |q 9667
step
goto 68.8,68.1
.kill Lord Xiz |q 9666/2
.' Use the Draenei Banner on Lord Xiz's corpse |use Draenei Banner##24084
.' Declare your Power |q 9666/1
step
goto 68.2,81.1
.' Click Princess Stillpine's Cage
.' Save Princess Stillpine |q 9667/1
step
goto 63.0,87.5
.talk 17649
..turnin 9666
..accept 9668
step
goto 55.2,56.0
.talk 18803
..turnin 9667
step
goto 55.2,59.1
.' Click the Wanted Poster
..accept 9646
step
goto 55.9,59.8
.talk 17553
.home Blood Watch
step
goto 53.3,57.8
.talk 17434
..accept 9629
step
goto 56.4,56.8
.talk 17663
..accept 9648
step
goto 57.7,53.9
.talk 17554
.fpath Bloodmyst Isle
step
goto 52.7,53.2
.talk 17658
..turnin 9668
..accept 9693
step
goto 52.6,53.2
.talk 17423
..accept 9581
step
goto 55.4,55.3
.talk 17684
..turnin 9693
..accept 9694
step
goto 62.3,53.0
.' Click a Blood Mushroom |tip They can be found at the base of trees in this area.
.get Blood Mushroom |q 9648/2
step
goto 59.7,71.0
.from Stinkhorn Striker##17673
.get Aquatic Stinkhorn |q 9648/1
step
goto 60.7,42.0
.' Click a Ruinous Polyspore
.get Ruinous Polyspore |q 9648/3
step
goto 58.1,83.3
.' Use the Crystal Mining Pick on Impact Site Crystal|use Crystal Mining Pick##23875
.get Impact Site Crystal Sample##23878 |q 9581/1
step
goto 47.8,94.4
.' Use the Murloc Tagger on Blacksilt Scout|use Murloc Tagger##23995
.' Tag 6 Blacksilt Scouts |q 9629/1
step
goto 44.4,82.4
.' Click a Fel Cone Fungus
.get Fel Cone Fungus |q 9648/4
step
'Hearth to Blood Watch|goto 55.9,59.8|use Hearthstone##6948|noway|c
step
goto 53.3,57.8
.talk 17434
..turnin 9629
..accept 9574
step
goto 56.4,56.8
.talk 17663
..turnin 9648
step
goto 52.6,53.2
.talk 17423
..turnin 9581
..accept 9620
step
goto 55.4,55.3
.talk 17684
..accept 9641
step
goto 55.1,58.0
.talk 17433
..accept 9567
step
goto 49.5,47.4
.kill 10 Sunhawk Spy |q 9694/1
step
goto 55.4,55.3
.talk 17684
..turnin 9694
step
goto 61.3,48.4
.' Click the Draenei Cartographer lying on the ground
..turnin 9620
..accept 9628
step
goto 61.6,43.6
.from Wrathscale Marauder##17334, Wrathscale Sorceress##17336
.get Survey Data Crystal |q 9628/1
step
goto 36.4,74.6
.from Corrupted Treant##17352
.get 6 Crystallized Bark |q 9574/1
step
goto 36.5,71.5
.' Click the Nazzivus Monument Glyphs
.get Nazzivus Monument Glyph##23859 |q 9567/1
.from Tzerak##17528
.collect Tzerak's Armor Plate##23900 |n
..accept 9594
step
goto 37.7,76.7
.kill 8 Nazzivus Satyr |q 9594/1
.kill 8 Nazzivus Felsworn |q 9594/2
.get 10 Irradiated Crystal Shard |q 9641/1
step
'Hearth to Blood Watch |goto 55.8,59.8 |use Hearthstone##6948 |noway |c
step
goto 55.1,58.0
.talk 17433
..turnin 9594
..turnin 9567
..accept 9569
step
goto 53.2,57.8
.talk 17434
..turnin 9629
..turnin 9574
step
goto 55.9,57.0
.talk 17642
..accept 9643
..accept 9580
step
goto 55.4,55.3
.talk 17684
..turnin 9641
..accept 9779
step
goto 56.3,54.2
.talk 18804
..accept 10063
step
goto 52.6,53.2
.talk 17423
..turnin 9628
..accept 9584
step
goto 48.8,45.9
.from Sunhawk Spy##17604+
.get Sunhawk Missive##24399 |q 9779/1
step
goto 45.7,47.7
.' Use the Crystal Mining Pick on Altered Bloodmyst Crystal|use Crystal Mining Pick##23876
.get Altered Crystal Sample##23879 |q 9584/1
step
goto 46.6,35.2
.from Elder Brown Bear##17348
.get 8 Elder Brown Bear Flank |q 9580/1
.from Mutated Constrictor##17344
.get 6 Thorny Constrictor Vine |q 9643/1
.' More can be found at [46.6,35.2]
step
goto 55.4,55.3
.talk 17684
..turnin 9779
..accept 9696
step
goto 55.9,57.0
.talk 17642
..turnin 9643
..turnin 9580
..accept 9647
step
goto 54.4,54.5
.talk 17825
..turnin 9696
..accept 9698
step
goto 52.6,53.2
.talk 17423
..turnin 9584
..accept 9585
step
goto 44.5,50.4
.kill 10 Royal Blue Flutterer |q 9647/1
.' More can be found:
.' Around [47.3,32.2]
.' Around [44.6,38.0]
.' Around [44.9,56.0]
step
goto 42.1,21.2
.talk 17421
..turnin 10063
..accept 9548
..accept 9549
step
goto 40.4,20.1
.collect Clopper's Equipment##23830
.' Copper's Equipment spawns around the murloc buildings.
step
goto 38.7,21.2
.from Blacksilt Seer##17330+
.get 3 Crude Murloc Idol |q 9549/1
.from Blacksilt Warrior##17329+, Blacksilt Shorestriker##17328+,
.get 6 Crude Murloc Knife |q 9549/2
step
goto 37.1,30.3
.from Deathclaw##17661
.get Deathclaw's Paw##24025 |q 9646/1
step
goto 42.1,21.2
.talk 17421
..turnin 9548
..turnin 9549
.' Click the Weathered Teasure Map|use Weathered Treasure Map##23837
..accept 9550
step
goto 38.2,37.4
.kill 5 Axxarien Shadowstalker |q 9569/2
.kill 5 Axxarien Helcaller |q 9569/3
.' Click the Corrupted Crystals around Axxarien
.get 5 Corrupted Crystal |q 9569/4
step
goto 41.9,29.5
.kill Zevrax##17494 |q 9569/1
step
goto 41.3,30.9
'Use the Crystal Mining Pick on the Axxarien Crystal|use Crystal Mining Pick##23877
.get Axxarien Crystal Sample##23880 |q 9585/1
step
goto 61.2,41.9
.' Click Battered Ancient Book
..turnin 9550
..accept 9557
step
goto 54.7,53.9
.talk 17424
..turnin 9557
..accept 9561
step
goto 52.6,53.2
.talk Harbinger Mikolaas
..turnin 9646
..turnin 9585
step
goto 56.4,56.8
.talk 17663
..accept 9649
step
goto 55.9,57.0
.talk 17642
..turnin 9647
step
goto 56.0,56.5
.talk 17703 |tip He patrols around camp.
..accept 9671 |instant
step
goto 55.1,58.0
.talk 17433
..turnin 9569
step
goto 55.2,59.2
'Go to your mailbox and retrieve the letter from Admiral Odesyus
.collect A Letter from the Admiral##24132 |n
'Click the Leter from the Admiral in your bags |use A Letter from the Admiral##24132
..accept 9672
step
goto 53.3,57.7
.talk 17434
..accept 9578
step
goto 61.1,49.7
'Click the Mound of Dirt
..turnin 9561
step
goto 74.2,33.5
.talk 17674
.' He Patrols along the bottom of the island
..accept 9687
step
goto 56.8,34.0
'Click the Dragon Bones around Ragefeather Ridge
.get 8 Dragon Bone |q 9687/1
step
goto 74.2,33.5
.talk 17674
..turnin 9687
..accept 9688
step
goto 75.4,29.6
.kill 5 Veridian Whelp |q 9688/1
.kill 5 Veridian Broodling |q 9688/2
step
goto 74.2,33.5
.talk 17674
..turnin 9688
step
goto 75.7,28.5
'Click Ysera's Tears around Wyrmscar Island
.get 2 Ysera's Tear##24049 |q 9649/1
step
goto 79.2,22.6
.talk 17712
..turnin 9672
..accept 9674
step
goto 82.4,26.2
.kill 10 Bloodcursed Naga |q 9674/1
step
goto 79.1,22.6
.talk 17712
..turnin 9674
..accept 9682
step
goto 85.7,14.3
.from Bloodcursed Voyager##17714
.get 4 Bloodcursed Soul |q 9682/1
step
goto 79.1,22.6
.talk 17712
..turnin 9682
..accept 9683
step
goto 85.9,54.3
'Click the Statue of Queen Azshara
.kill Atoph the Bloodcursed |q 9683/1
step
goto 79.1,22.6
.talk 17712
..turnin 9683
step
'Hearth to Blood Watch|goto 55.9,59.8|use Hearthstone##6948|noway|c
step
goto 56.4,56.8
.talk 17663
..turnin 9649
step
goto 37.5,61.2
'Click Galaen's Corpse
..turnin 9578
..accept 9579
'Click Galaen's Journal
..accept 9706
step
goto 39.6,58.9
.from Sunhawk Reclaimer##17606
.get Galaen's Amulet |q 9579/1
.' The Reclaimers spawn all around the Cryo-Core
step
goto 53.3,57.7
.talk 17434
..turnin 9579
step
goto 53.3,57.0
.talk 17676
..accept 9669
step
goto 52.6,53.2
.talk 17423
..accept 10064
step
goto 55.6,55.2
.talk 17843
..turnin 9706
step
goto 30.8,46.9
.talk 17986
..accept 10067
..accept 10066
step
goto 30.2,45.9
.talk 17927
..turnin 10064
..accept 10065
step
goto 30.3,45.9
.talk 17926
..accept 9741
step
goto 31.5,55.8
.kill 8 Mutated Tangler##17346 |q 10066/1
.kill 10 Enraged Ravager##17527 |q 10065/1
.' There are more around [31.4,61.7]
step
goto 20.4,63.3
.kill 12 Void Critter |q 9741/1
step
'Hearth to Blood Watch|goto 55.9,59.8|use Hearthstone##6948|noway|c
step
goto 55.5,55.4
.talk 17844
..turnin 9741
step
goto 30.8,46.9
.talk 17986
..turnin 10066
step
goto 30.3,45.9
.talk 17927
..turnin 10065
step
goto 30.7,40.3
.kill 6 Fouled Water Spirit##17358+ |q 10067/1
step
goto 30.8,46.9
.talk 17986
..turnin 10067
step
goto 24.9,34.4
.talk 17686
..accept 9670
step
goto 18.1,36.2
.kill 8 Myst Leecher |q 9669/1
.kill 8 Myst Spinner |q 9669/2
.kill Zarakh |q 9669/3
..goal 5 Expedition Researcher Freed |q 9670/1
.' There will be webbed creatures along the mountainside.
step
goto Bloodmyst Isle,24.9,34.4
.talk 17686
..turnin 9670
step
goto 53.2,57.0
.talk Achelus
..turnin 9669
step
goto 54.6,53.9
.talk 17424
..accept 9632
step
goto 57.7,53.9
.talk 17554
.' Fly to Exodar |goto The Exodar,54.4,36.6 |noway |c
step
goto 32.9,54.4
.talk 17468
..turnin 9698
..accept 9699
step
'Go outside of the Exodar |goto Azuremyst Isle| noway |c
step
goto 24.2,54.3
.talk 17614
..turnin 9632
step
map The Exodar
'To continue gaining reputation with the Exodar faction:
.' You can buy an Exodar Tabard from Kadu at [The Exodar 69.6,61.7] |tip Wear the Exodar Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide\\Home Cities Reputation\\Darnassus\\Night Elf (1-20)",[[
description This guide will help you to get Exalted
description reputation with the Darnassus faction.
description
description You need to be exalted with these 5 reputations in order to earn your Crusader title and open up more daily quests.
author support@zygorguides.com
step
goto Teldrassil,58.0,39.2
.talk 2079
..accept 28713
step
goto 57.9,40.7
.kill 6 Young Nightsaber |q 28713/1
step
goto 58.0,39.2
.talk 2079
..turnin 28713
..accept 28714
step
goto 58.0,38.8
.talk 2077
..accept 28715
step
goto 55.8,40.1
.from Grell##1988+
.get 6 Fel Moss |q 28714/1
.' Click Melithar's Stolen Bags |tip They look like tan sacks sitting on the ground around this area.
.get 5 Melithar's Stolen Bags |q 28715/1
.' You can find more around [54.6,38.7]
step
goto 58.1,39.0
.talk 2079
..turnin 28714
..accept 28734
step
goto 58.0,38.8
.talk 2077
..turnin 28734
..turnin 28715
..accept 26841 |only NightElf Mage
..accept 3116 |only NightElf Warrior
..accept 3117 |only NightElf Hunter
..accept 3118 |only NightElf Rogue
..accept 3119 |only NightElf Priest
..accept 3120 |only NightElf Druid
step
goto 58.4,35.5
.talk 43006
..turnin 26841
..accept 26940
only NightElf Mage
step
goto 58.4,35.5
.talk 43006
.' Learn Arcane Missiles |q 26940/2
only NightElf Mage
step
goto 58.4,35.4
.' Use Arcane Missiles on the Training Dummy
.' Practice Arcane Missiles 2 times |q 26940/1
only NightElf Mage
step
goto 58.4,35.5
.talk 43006
..turnin 26940
..accept 28723
only NightElf Mage
step
goto Teldrassil,58.9,33.7
.talk 3593
..turnin 3116
..accept 26945
only NightElf Warrior
step
goto Teldrassil,58.9,33.7
.talk 3593
.' Learn Charge |q 26945/2
only NightElf Warrior
step
goto 58.5,35.2
.' Use Charge on the Training Dummy
.' Practice Charge 1 time |q 26945/1
only NightElf Warrior
step
goto 58.9,33.7
.talk 3593
..turnin 26945
..accept 28723
only NightElf Warrior
step
goto 58.9,35.7
.talk 3596
..turnin 3117
..accept 26947
only NightElf Hunter
step
goto 58.9,35.7
.talk 3596
.' Learn Steady Shot |q 26947/2
only NightElf Hunter
step
goto 58.4,35.1
.' Use Steady Shot on the Training Dummies
.' Practice Steady Shot 5 times |q 26947/1
only NightElf Hunter
step
goto 58.9,35.7
.talk 3596
..turnin 26947
..accept 28723
only NightElf Hunter
step
goto Teldrassil,58.9,33.9
.talk 3594
..turnin 3118
..accept 26946
only NightElf Rogue
step
goto Teldrassil,58.9,33.9
.talk 3594
.' Learn Eviscerate |q 26946/2
only NightElf Rogue
step
goto 58.4,35.5
.' Use Eviscerate on the Training Dummy
.' Practice Eviscerate 3 times |q 26946/1
only NightElf Rogue
step
goto 58.9,33.9
.talk 3594
..turnin 26946
..accept 28723
only NightElf Rogue
step
goto 58.5,35.5
.talk 3595
..turnin 3119
..accept 26949
only NightElf Priest
step
goto 58.5,35.5
.talk 3595
.' Learn Flash Heal |q 26949/2
only NightElf Priest
step
goto 58.5,35.4
.' Use Flash Heal on Wounded Sentinels
.' Practice Flash Heal 5 times |q 26949/1
only NightElf Priest
step
goto 58.5,35.5
.talk 3595
..turnin 26949
..accept 28723
only NightElf Priest
step
goto Teldrassil,58.2,34.8
.talk 3597
..turnin 3120
..accept 26948
only NightElf Druid
step
goto Teldrassil,58.2,34.8
.talk 3597
.' Learn Healing Touch |q 26948/2
only NightElf Druid
step
goto 58.7,36.5
.' Use Healing Touch on Wounded Sentinels
.' Practice Healing Touch 5 times |q 26948/1
only NightElf Druid
step
goto 58.2,34.8
.talk 44617
..turnin 26948
..accept 28723
only NightElf Druid
step
goto 57.2,33.3
.talk 49479
..turnin 28723
..accept 28724
step
goto 56.6,33.8
.' Click Moonpetal Lilies |tip They look like pink flowers along the edge of the ponds around this area.
.get 7 Moonpetal Lily |q 28724/1
step
goto 57.2,33.3
.talk 49479
..turnin 28724
..accept 28725
step
goto 56.3,28.1
.from Webwood Spider##1986 |tip Killing a spider will make Tarindrella appear.
.talk 49480
..turnin 28725
..accept 28726
step
goto 56.5,24.4
.kill 12 Webwood Spider |q 28726/1
step
'Next to you:
.talk 49480
..turnin 28726
..accept 28727
step
goto 56.3,23.1
.kill Githyiss the Vile |q 28727/1
step
'Next to you:
.talk 49480
..turnin 28727
..accept 28728
step
goto 57.2,33.3
.talk 49479
..turnin 28728
..accept 28729
step
goto 59.1,29.1
.' Use your Crystal Phial while standing in the water |use Crystal Phial##5185
.get Filled Crystal Phial |q 28729/1
step
goto 57.2,33.3
.talk 49479
..turnin 28729
..accept 28730
step
goto 57.1,36.5 |n
.' Follow the ramp up |goto 57.1,36.5,0.5 |noway |c
step
goto 58.4,34.6
.talk 3514
..turnin 28730
..accept 28731
step
goto 60.2,41.7
.talk 6780
..accept 2159
step
goto 59.4,49.2
.talk 2150
..accept 488
step
goto 60.5,52.5
.from Nightsaber##2042+
.get 2 Nightsaber Fang |q 488/1
.from Strigid Owl##1995+
.get 2 Strigid Owl Feather |q 488/2
.from Webwood Lurker##1998+
.get 2 Webwood Spider Silk |q 488/3
.' There are more around [57.7,52.5]
step
goto 59.5,49.2
.talk 2150
..turnin 488
step
goto 55.8,50.4
.talk 2083
..accept 489
step
goto 55.5,50.4
.talk 40553
.fpath Dolanaar
step
goto 55.5,50.0
.talk 3567
..accept 2438
step
goto 55.7,52.0
.talk 2078
..accept 475
step
goto 55.4,52.2
.talk 6736
..turnin 2159
step
goto 55.4,52.2
.talk 6736
.home Dolanaar
step
goto 55.8,53.9
.talk 3515
..turnin 28731
..accept 929
step
goto 53.9,57.0
.' Click Fel Cones |tip They look like brown pine cones with green smoke coming out of them on the ground around this area.
.get 3 Fel Cone |q 489/1
step
goto 59.5,49.2
.talk 2150
..turnin 489
step
goto 62.1,50.8
.' Use your Jade Phial while standing in the water |use Jade Phial##5619
.get Filled Jade Phial |q 929/1
step
goto 64.6,51.2
.' Go upstairs in the house
.talk 2107
..turnin 475
..accept 476
step
goto 66.1,52.1
.' Click Tallonkai's Dresser |tip It's a wooden piece of furniture with 2 doors on it inside this small house.
.get Emerald Dreamcatcher |q 2438/1
step
'Hearth to Dolanaar |goto Teldrassil,55.4,52.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 55.7,52.0
.talk 2078
..turnin 476
..accept 483
step
goto Teldrassil,55.6,52.0
.talk 2081
..accept 13945
step
goto 55.8,53.9
.talk 3515
..turnin 929
step
goto 55.8,50.4
.talk 2083
..accept 13946
step
goto 55.5,50.0
.talk 3567
..turnin 2438
..accept 2459
..accept 932
step
goto 66.9,46.6
.from Ferocitas the Dream Eater##7234
.get Tallonkai's Jewel |q 2459/2
.kill 7 Gnarlpine Mystic |q 2459/1
step
goto 55.5,50.0
.talk 3567
..turnin 2459
step
goto 53.6,47.2 |n
.' Follow this small path to the cave |goto 53.6,47.2,0.5 |noway |c
step
goto 54.5,46.0 |n
.' Enter the cave |goto 54.5,46.0,0.5 |noway |c
step
goto 52.9,43.9
.' Take the path to the right side of the cave
.' Use your Ireroot Seeds on Shadow Sprites |use Ireroot Seeds##46716
.' Kill 12 Fel Rock Grellkin with Ireroot Seeds |q 13946/1
.from Lord Melenas##2038
.get Melenas' Head |q 932/1
step
goto 54.5,46.0 |n
.' Leave the cave |goto 54.5,46.0,0.5 |noway |c
step
goto 55.8,50.5
.talk 2083
..turnin 13946
step
goto 55.5,50.0
.talk 3567
..turnin 932
step
goto 45.6,50.6 |n
.' Enter the Den |goto Teldrassil,45.6,50.6 |noway |c
step
goto 45.0,53.5
.talk 7317
..accept 2541
step
'Next to you:
.talk 34249
..' Ask her where the Rune of Nesting is |tip You can ask her as many times as you need.
.' Follow the green mist
.' Click the Chest of Nesting |tip It's a small gray chest.
.get Rune of Nesting |q 483/4
.from Gnarlpine Shaman##2009+
.' Keep an eye out for the Shaman Voodoo Charm that drops from Gnarlpine Shamans
step
'Next to you:
.talk 34249
..' Ask her where the Black Feather Quill is |tip You can ask her as many times as you need.
.' Follow the green mist
.' Click the Chest of the Black Feather |tip It's a small gray chest.
.get Black Feather Quill |q 483/2
.from Gnarlpine Shaman##2009+
.' Keep an eye out for the Shaman Voodoo Charm that drops from Gnarlpine Shamans
step
'Next to you:
.talk 34249
..' Ask her where the Sapphire of Sky is |tip You can ask her as many times as you need.
.' Follow the green mist
.' Click the Chest of the Sky |tip It's a small gray chest.
.get Sapphire of Sky |q 483/3
.from Gnarlpine Shaman##2009+
.' Keep an eye out for the Shaman Voodoo Charm that drops from Gnarlpine Shamans
step
'Next to you:
.talk 34249
..' Ask her where the Raven Claw Talisman is |tip You can ask her as many times as you need.
.' Follow the green mist
.' Click the Chest of the Raven Claw |tip It's a small gray chest.
.get Raven Claw Talisman |q 483/1
.from Gnarlpine Shaman##2009+
.get Shaman Voodoo Charm |q 2541/1
step
'Next to you:
.talk 34249
..' Ask her where the exit is |tip You can ask her as many times as you need.
.' Follow the green mist until you see an area with 2 bridges |tip Don't actually leave the cave.
.talk 7317
..turnin 2541
..accept 2561
step
goto 45.7,52.8
.from Rageclaw##7318 |tip He's through the doors in the room immediately next to you and Oben Rageclaw.  Just walk up to the door, even though it is locked, it will automatically open for you.
.' Use your Voodoo Charm on Rageclaw's corpse |use Voodoo Charm##8149
.' Release Oben Rageclaw's Spirit |q 2561/1
step
goto 45.0,53.5
.talk 7317
..turnin 2561
step
'Inside of the Den:
.from Gnarlpine Defender##2010+, Gnarlpine Shaman##009+, Gnarlpine Shaman##2009+, Gnarlpine Augur##2011+,
.kill 20 Ban'ethil Gnarlpine |q 13945/1
step
'Hearth to Dolanaar |goto Teldrassil,55.4,52.3,0.5 |use Hearthstone##6948 |noway |c
step
goto 55.7,52.0
.talk 2078
..turnin 483
..accept 486
step
goto 55.6,52.0
.talk 2081
..turnin 13945
step
goto 56.7,53.5
.talk 4265
..accept 6344
step
goto 55.5,50.4
.talk 40553
..turnin 6344
..accept 6341
step
goto 55.5,50.4
.talk 40553
.' Fly to Darnassus, Teldrassil |goto Darnassus,36.7,48.3,0.5 |noway |c
step
goto Darnassus,36.1,53.5
.talk 7316
..turnin 6341
..accept 6342
step
goto 36.6,47.9
.talk 40552
..turnin 6342
..accept 6343
step
goto 36.6,47.9
.talk 40552
.' Fly to Dolanaar, Teldrassil |goto Teldrassil,55.5,50.4,0.5 |noway |c
step
goto Teldrassil,56.7,53.5
.talk 4265
..turnin 6343
step
goto 49.4,44.7
.talk 2151
..accept 487
step
goto 49.4,43.2 |n
.' Follow the path up |goto 49.4,43.2,0.5 |noway |c
step
goto 51.7,39.4
.' Take the first path to the right that you come to
.kill Ursal the Mauler |q 486/1
.kill 8 Gnarlpine Ambusher |q 487/1
step
goto 49.4,44.6
.talk 2151
..turnin 487
step
goto 55.7,52.0
.talk 2078
..turnin 486
step
goto 55.8,50.5
.talk 2083
..accept 997
step
goto 60.0,59.8
.talk 2080
..turnin 997
..accept 918
..accept 919
step
goto 57.6,62.9
.' Click the Strange Fruited Plant |tip It's a big pink-glowing plants.
..accept 930
step
goto 59.7,60.4
.from Timberling##2022+
.get 6 Timberling Seed |q 918/1
.' Click Timberling Sprouts |tip They look like green plant bulbs sitting on the ground around this area.
.get 10 Timberling Sprout |q 919/1
step
goto 59.9,59.8
.talk 2080
..turnin 918
..accept 922
..turnin 919
..turnin 930
step
goto 55.8,53.9
.talk 3515
..accept 7383
step
goto 44.0,44.2
.talk 3517
..turnin 922
..accept 923
step
goto 43.6,37.4
.' Follow the river north
.from Timberling Trampler##+, Timberling Mire Beast##+ |tip Follow the water north.
.get 5 Mossy Tumor |q 923/1
step
goto 40.5,29.9
.' Use your Amethyst Phial while standing in the water|use Amethyst Phial##18152
.get Filled Amerthyst Phial |q 7383/1
step
goto 39.5,29.9
.talk 3519
..accept 937
step
goto 39.2,29.8
.talk 7313
..accept 2518
step
goto 37.3,25.5
.' Click the Strange Fronded Plant |tip It's a big pink-glowing plants.
..accept 931
step
goto 40.7,22.1
.from Lady Sathrah##7319
.get Silvery Spinnerets |q 2518/1
step
goto 37.2,29.9
.from Bloodfeather Fury##2019+, Bloodfeather Matriarch##2021+, Bloodfeather Wind Witch##2020+
.get 6 Bloodfeather Belt |q 937/1
step
goto 39.3,29.7
.talk 7313
..turnin 2518
step
goto 39.5,29.9
.talk 3519
..turnin 937
step
goto 40.9,45.7
.talk 3515
..turnin 7383
..accept 933
step
goto 43.9,44.2
.talk 2080
..turnin 931
step
goto 44.0,44.2
.talk 3517
..turnin 923
step
goto 43.9,44.2
.talk 2080
..accept 2499
step
goto 43.9,44.1
.' Click a Sprouted Frond |tip They are 3 bushes in a long wooden planter.
..accept 2399 |instant
step
goto 43.9,58.5
.' Use your Tourmaline Phial while standing in the water |use Tourmaline Phial##5621
.get Filled Tourmaline Phial |q 933/1
step
goto 42.5,58.2
.talk 1992
..turnin 933
..accept 14005
step
goto 40.7,69.3
.' Use the abilities on your hotbar to fight Bough of Corruption
.kill Bough of Corruption |q 14005/1
step
goto 42.5,58.2
.talk 1992
..turnin 14005
..accept 935
step
goto 41.0,45.6
.talk 3515
..turnin 935
..accept 14039
step
goto 47.4,35.2
.from Oakenscowl##2166 |tip He's a red and green elemental that walks around this area.
.get Gargantuan Tumor |q 2499/1
step
goto 43.9,44.2
.talk 2080
..turnin 2499
step
'Hearth to Dolanaar |goto Teldrassil,55.4,52.3,0.5 |use Hearthstone##6948 |noway |c
step
goto 55.5,50.4
.talk 40553
.' Fly to Darnassus, Teldrassil |goto Darnassus,36.7,48.3,0.5 |noway |c
step
goto Darnassus,45.0,49.9
.' Click the Hero's Call Board |tip It looks like two white stone pillars with a wooden board hanging between them with papers pinned onto it.
..accept 28490
only Draenei,Dwarf,Gnome Human
step
goto 43.9,76.1
.talk 42936
..accept 26383
only NightElf
step
goto 48.2,14.7
.talk 48736
..accept 26385
only Worgen
step
goto 43.0,78.1
.talk 7999
..turnin 14039
step
goto 36.9,50.5 |n
.' Go inside the pink portal |goto Teldrassil |noway |c
step
goto Teldrassil,55.4,88.4
.talk 3838
.fpath Rut'theran Village
step
goto 55.4,88.4
.talk 3838
.' Fly to Lor'danel, Darkshore |goto Darkshore,51.7,17.7,0.5 |noway |c
step
goto Darkshore,51.8,18.0
.talk 32973
..turnin 28490 |only Draenei,Dwarf,Gnome Human
..turnin 26383 |only NightElf
..turnin 26385 |only Worgen
..accept 13518
step
goto 51.0,18.6
.talk 43420
.home Lor'danel
step
goto 50.2,19.8
.talk 32971 |tip She walks all around town, so you may need to search for her.
..accept 13522
step
goto 45.0,18.2
.talk 33094
.' Rescue Volcor |q 13518/4
step
goto 44.1,17.8
.talk 32911
.' Rescue Gershala Nightwhisper |q 13518/2
step
goto 44.6,19.9
.talk 33093
.' Rescue Cerellean Whiteclaw |q 13518/1
step
goto 42.9,21.5
.talk 33095
.' Rescue Shaldyn |q 13518/3
step
goto 43.1,20.6
.kill 8 Vile Spray |q 13522/1
step
goto 50.2,19.8
.talk 32971 |tip She walks all around town, so you may need to search for her.
..turnin 13522
step
goto 51.8,18.0
.talk 32973
..turnin 13518
step
goto 50.9,18.1
.talk 32972
..accept 13520
step
goto 51.1,19.7
.talk 32977
..accept 13521
step
goto 52.4,18.8
.' Click Encrusted Clams |tip They looks like clams underwater around this area.
.get 16 Encrusted Clam Muscle |q 13520/1
step
goto 53.4,19.5
.from Corrupted Tide Crawler##32935+
.get 4 Corrupted Tide Crawler Flesh |q 13521/1
step
goto 53.3,19.6
.' Click Buzzbox 413 |tip It's a metal box with gears on it, sitting on the beach next to a hill.
..turnin 13521
..accept 13527
step
goto 55.1,21.0
.' Click the Decomposing Thistle Bear |tip It looks like a dead bear laying on the ground.
.get Foul Bear Carcass Sample |q 13527/1
step
goto 51.1,19.7
.talk 32977
..turnin 13527
..accept 13528
step
goto 50.8,18.1
.talk 32972
..turnin 13520
step
goto 55.0,24.1
.from Corrupted Thistle Bear##33009+, Corrupted Thistle Bear Matriarch##33905+ |tip The green ones won't drop loot.
.get 6 Corrupted Thistle Bear Guts |q 13528/1
step
goto 54.2,29.3
.' Click Buzzbox 723 |tip It's a metal box with gears on it, sitting on a hill.
..turnin 13528
..accept 13554
step
goto 56.2,27.2 |n
.' Follow the path up |goto 56.2,27.2,0.5 |noway |c
step
goto 56.8,30.1
.talk 32978
..accept 13529
step
goto 56.9,31.3 |n
.' Enter the cave |goto 56.9,31.3,0.5 |noway |c
step
goto 58.2,33.0
.' Go to the lower level of the cave
.kill Zenn Foulhoof |q 13529/1
.collect Corruptor's Master Key##44927 |n
.' Click the Corruptor's Master Key in your bags |use Corruptor's Master Key##44927
..accept 13557
step
goto 57.4,33.8
.' Click Secure Bear Cages and Secure Duskrat Cages as you walk to free the animals |tip They look like metal cages all around inside the cave.
.' Click the Disgusting Workbench |tip It looks like a wooden table with chemistry equipment on it.
..accept 13831
step
goto 57.0,33.2
.from Vile Corruptor##33022+, Vile Grell##33021+
.get 6 Foul Ichor |q 13554/1
.kill 8 Vile Grell |q 13529/2
.' Click Secure Bear Cages and Secure Duskrat Cages |tip They look like metal cages all around inside the cave.
.' Free 8 Uncorrupted Animals |q 13557/1
step
'Hearth to Lor'danel |goto 51.0,18.6,0.5 |use Hearthstone##6948 |noway |c
step
goto 51.1,19.7
.talk 32977
..turnin 13554
step
goto 51.1,19.7
.talk 32978
..turnin 13529
..turnin 13557
..turnin 13831
step
goto 50.9,18.0
.talk 32960
..accept 13564
step
goto 50.8,17.9
.talk 32959
..accept 13563
step
goto 50.2,19.8
.talk 32971 |tip She walks all around town, so you may need to search for her.
..accept 13562
step
goto 46.8,33.3
.talk 33177
..accept 13561
step
goto 45.9,34.2
.' Click The Final Flame of Bashal'Aran |tip It looks like a brazier with fire in it, up on a hill in blue light.
.' Extinguish the Final Flame of Bashal'Aran |q 13562/1
step
goto 48.5,36.6
.kill Anaya Dawnrunner |q 13563/1
.get Anaya's Pendant |q 13563/2
step
goto 48.2,36.4
.kill 6 Cursed Highborne |q 13561/1
.kill 6 Writhing Highborne |q 13561/2
step
goto 46.8,33.3
.talk 33177
..turnin 13561
step
goto 42.9,39.0
.' Go to this spot
.' Locate Grimclaw |q 13564/1 |tip He's a dead white bear laying on the ground.
step
goto 43.0,39.0
.talk 33048
..turnin 13564
..accept 13598
..accept 13566
step
goto 42.9,39.0
.talk 33126
..accept 13565
step
goto 42.4,39.8
.' Click Moonstalkers |tip They look like blue tigers laying on the ground.  Only click the neutral Moonstalkers laying on the ground. Run away after you get the Moonstalker Whiskers.
.get 3 Moonstalker Whisker |q 13566/1
step
goto 44.1,40.8
.' Click Mottled Does |tip They look like small deer around this area.
.get 3 Tuft of Mottled Doe Hair |q 13566/2
step
goto 46.6,38.9
.' Click Hungry Thistle Bears |tip Only click them when they are neutral, or they will attack you.
.get 3 Thistle Bear Fur |q 13566/3
step
goto 48.6,40.4
.kill Lady Janira |q 13565/1
step
goto 47.7,39.7
.from Darkscale Scout##33206+
.' Use your Petrified Root on Darkscale Scout corpses |use Petrified Root##45911
.' Call 6 Withered Ents |q 13565/2
.' Click Fuming Toadstools |tip They look like yellow mushrooms on the ground around this area.
.get 6 Fuming Toadstool |q 13598/1
step
goto 43.0,39.0
.talk 33048
..turnin 13598
..turnin 13566
step
goto 42.9,39.0
.talk 33126
..turnin 13565
step
goto 43.0,39.0
.talk 33048
..accept 13569
step
goto 42.9,39.0
.' Click the Grovekeeper's Incense |tip It's a small bowl on the ground in front of Keeper Karithus with red smoke coming out of it.
..' Breathe in the smoke to entice visions of the great animal spirits |havebuff Interface\Icons\Spell_Nature_Sleep |q 13569
step
goto 43.8,40.2
.talk 33133 |tip You can also talk to the Great Moonstalker Spirit or the Great Thistle Bear Spirit.  We recommend talking to the Great Stag Spirit because it gives you a 10% increased run speed buff.  If you would like to talk to the other spirits, the Great Moonstalker Spirit gives a 10% haste buff and the Great Thistle Bear Spirit gives a 10% damage reduction buff.  You can only choose one, so pick whichever one you'd like.
..accept 13567 |instant
step
goto 43.0,39.0
.talk 33048
..turnin 13569
..accept 13599
step
'Hearth to Lor'danel |goto 51.0,18.6,0.5 |use Hearthstone##6948 |noway |c
step
goto 50.9,18.2
.talk 32972
..turnin 13599
step
goto 50.8,17.9
.talk 32959
..turnin 13563
step
goto 50.7,19.4
.talk 32971 |tip She walks all around town, so you may need to search for her.
..turnin 13562
..accept 13589
step
goto 51.0,19.2
.talk 32979
..accept 13560
step
goto 53.0,11.0
.' Click the Decoy Bot Control Console |tip It looks like a silver and yellow rectangular metal box sitting on a very tiny island.
.' As the robot, walk north underwater to get near a group of murlocs
.' Use the Depth Charge Countdown Pulse ability on your hotbar to kill them
.kill 50 Scavenging Greymist Murlocs |q 13560/1
step
goto 51.0,19.2
.talk 32979
..turnin 13560
step
goto 58.9,19.4
.talk 32963
..turnin 13589
step
goto 58.9,19.4
.talk 32965
..accept 13504
step
goto 58.9,19.5
.talk 32966
..accept 13505
step
goto 60.5,21.3
.kill 10 Shatterspear Laborer |q 13504/1
.' Click Highborne Relics |tip They look like small white objects on the ground around this area.
.get 8 Highborne Relic |q 13505/1
.from Shatterspear Overseer##32863
.collect Overseer's Orders##44979 |n
.' Click the Overseer's Orders in your bags |use Overseer's Orders##44979
..accept 13506
step
goto 58.9,19.4
.talk 32965
..turnin 13504
step
goto 58.9,19.5
.talk 32966
..turnin 13505
step
goto 58.9,19.4
.talk 32963
..turnin 13506
..accept 13508
..accept 13509
step
goto 58.9,19.4
.talk 32965
..accept 13507
step
goto 61.6,11.6
.kill 6 Horde Enforcer |q 13507/1
.kill 6 Shatterspear Mystic |q 13507/2
.' Use your Sentinel Torch next to Shatterspear Armaments |use Sentinel Torch##44999 |tip They look like brown wooden crates around this area.
.' Burn 12 Shatterspear Armaments |q 13509/1
step
goto 63.8,6.0
.talk 33055
..turnin 13508
..accept 13511
step
goto 64.1,5.3
.kill Rit'ko |q 13511/1
.collect Shatterspear Torturer's Cage Key##45040 |q 13510 |future
step
goto 64.5,5.5
.' Click the Shatterspear Cage |tip It looks like a yellow cage with a night elf kneeling inside it.
.talk 32964
..accept 13510
step
goto 60.2,7.0
.' Follow Sentinel Aynasha as she runs |tip Let her run ahead and get attacked first, or else she won't stop and help you fight.
.' Escort Sentinel Aynasha to the Dock |q 13510/1
step
goto 58.9,19.4
.talk 32965
..turnin 13507
step
goto 58.9,19.4
.talk 32963
..turnin 13511
..turnin 13509
..turnin 13510
..accept 13512
step
goto 58.9,19.5
.talk 32966
..accept 13513
step
goto 59.1,19.6
.talk 34041
..accept 13844
step
goto 61.2,20.4
.' Use your Dryad Spear on Sheya Stormweaver |use Dryad Spear##44995 |tip She's floating above the water in this pit in a blue smokey cyclone.  Throw your spear at her and then hide behind a stone pillar when she casts her spells, so you don't get hit.  Keep alternating between throwing your spear at her and hiding.
.kill Sheya Stormweaver |q 13512/2
step
goto 58.2,23.9
.kill Teegan Holloway |q 13844/1 |tip He's an undead that walks around in this broken tower.
step
goto 58.3,24.0
.' Click the Charred Book |tip It looks like a small black book laying on the floor upstairs in this broken tower.
.get Narassin's Tome |q 13844/2
step
goto 56.8,25.9
.' Use your Dryad Spear on Lorenth Thundercall |use Dryad Spear##44995 |tip He's standing on a big stump. Use your Dryad Spear and move away to the side when he casts his lightning spell.  Keep using your Dryad spear on him and moving to avoid his spell.
.kill Lorenth Thundercall |q 13512/1
step
goto 57.2,25.1
.from Shatterspear Shaman##32860+
.get 6 Shatterspear Amulet |q 13513/1
step
goto 58.9,19.4
.talk 32963
..turnin 13512
step
goto 58.9,19.5
.talk 32966
..turnin 13513
step
goto 58.9,19.4
.talk 32963
..accept 13590
step
goto 59.1,19.6
.talk 34041
..turnin 13844
step
goto 63.6,20.0 |n
.' Follow the path up |goto 63.6,20.0,0.5 |noway |c
step
goto 67.5,18.7 |n
.' Enter the tunnel |goto 67.5,18.7,0.5 |noway |c
step
goto 69.1,19.3
.talk 33176
..accept 13514
step
goto 69.5,18.8
.' Click the Vengeful Protector to ride on it |invehicle |q 13514 |tip it looks like a big purple tree ent.
step
goto 70.3,20.1
.' Use the abilities on your hotbar near the trolls and next to the troll buildings around this area
.' Kill 30 Shatterspear Vale Trolls |q 13514/1
.' Destroy 6 Shatterspear Structures |q 13514/2
step
goto 69.5,18.8
.' Click the red arrow on your hotbar to stop riding on the Vengeful Protector |outvehicle |q 13514
step
goto 69.1,19.3
.talk 33176
..turnin 13514
step
goto 72.3,19.1
.talk 33178
..turnin 13590
..accept 13515
step
goto 72.3,19.1
.talk 33178
..' Tell you are ready, begin the attack
.kill Jor'kil the Soulripper |q 13515/1 |tip Make sure to loot his corpse.
.collect Hellscream's Missive##46318 |n
.' Click Hellscream's Missive in your bags |use Hellscream's Missive##46318
..accept 13591
step
goto 72.4,18.8
.talk 33178
..turnin 13515
step
'Hearth to Lor'danel |goto 50.9,18.6,0.5 |use Hearthstone##6948 |noway |c
step
goto 50.7,19.7
.talk 32971
..turnin 13591
step
goto 50.1,19.5
.talk 32959
..accept 13570 |instant
step
goto 50.3,20.4
.talk 32912
..accept 13519
..accept 13596
step
goto 44.6,30.8
.talk 32932
..accept 13523
step
goto 43.7,31.4
.kill High Cultist Azerynn |q 13519/1
step
goto 44.3,30.1
.from Enraged Tidal Spirit##32890+
.' Use your Orb of Elune on Enraged Tidal Spirit corpses |use Orb of Elune##44975
.' Sooth 6 Tidal Spirits |q 13523/1
step
goto 44.6,30.8
.talk 32932
..turnin 13523
step
goto 44.7,31.1
.kill 10 Twilight Fanatic |q 13519/2
.' Click Twilight Plans |tip They look like small scrolls on the ground around this area.
.get 6 Twilight Plans |q 13596/1
.' You can find more around [43.9,32.5]
step
goto 50.3,20.4
.talk 32912
..turnin 13519
..turnin 13596
..accept 13601
step
goto 42.5,45.0
.talk 33107
..turnin 13601
step
goto 42.5,45.2
.talk 3694
..accept 13542
step
goto 42.7,45.1
.talk 32987
..accept 13543
..accept 13573
step
goto 39.1,43.2
.talk 6887
..accept 13547
step
goto 38.1,44.0
.talk 33037 |tip She's laying on the dock.
..' Coax the spirit out of Caylais Moonfeather's still corpse
.' Coax Caylais Moonfeather's spirit |q 13547/4
step
goto 37.8,42.8
.kill Windmaster Tzu-Tzu |q 13543/2
step
goto 38.5,41.9
.talk 33035
..' Coax Taldan's corpse to give up its spirit
.' Coax Taldan's spirit |q 13547/3
step
goto 41.0,41.4
.talk 33033 |tip She's laying on the ground on the bottom floor of this building.
..' Coax the spirit out of Sentinel Elissa Stareeze's corpse
.' Coax Sentinel Elissa Starbreeze's spirit |q 13547/2
step
goto 40.8,41.5
.kill Cloudtamer Wildmane |q 13543/1
step
goto 39.3,38.9
.talk 33001 |tip He's laying on the ground inside this building.
..' Coax Thundris Windweaver's spirit
.' Coax Thundris Windweaver's spirit |q 13547/1
step
goto 39.1,38.3
.kill Skylord Braax |q 13543/3
step
goto 40.1,41.6
.from Frenzied Cyclone##32985+
.collect 8 Frenzied Cyclone Bracers##44868 |q 13542
step
goto 39.5,42.1
.' Use your Frenzied Cyclone Bracers while standing in the moonwell |use Frenzied Cyclone Bracers##44868
.' Destroy 8 Frenzied Cyclone Bracers |q 13542/1
step
goto 39.1,43.2
.talk 6887
..turnin 13547
..accept 13558
step
goto 36.6,41.0
.' Click the Aetherion Ritual Orb |tip It looks like a floating purple ball with pink and blue electricity coming off of it on the docks.
.from Aetherion##33041
.get Aetherion's Essence |q 13558/2
step
goto 38.6,42.5
.talk 33232
..accept 13605
.' Follow her around and protect her
.' Escort Archaeologist Hollee to safety |q 13605/1
step
goto 42.5,45.1
.talk 3694
..turnin 13542
step
goto 42.6,45.3
.talk 33231
..turnin 13605
step
goto 42.7,45.1
.talk 32987
..turnin 13543
..turnin 13558
step
goto 43.5,51.5 |n
.' Follow the path up |goto 43.5,51.5,0.5 |noway |c
step
goto 43.7,53.4
.talk 33091
..turnin 13573
..accept 13575
..accept 13577
..accept 13579
step
goto 45.1,48.6 |n
.' Enter the cave |goto 45.1,48.6,0.5 |noway |c
step
goto 45.6,48.5
.talk 33119
..turnin 13577
..accept 13578
step
goto 44.1,48.5
.' Click Slain Wildkin Feathers |tip They look like small brown and white feathers on the ground around this area.
.get 8 Slaim Wildkin Feather |q 13578/1
step
goto 45.1,48.6 |n
.' Enter the cave |goto 45.1,48.6,0.5 |noway |c
step
goto 45.6,48.5
.talk 33119
..turnin 13578
..accept 13582
step
goto 46.6,50.7
.from Horoo the Flamekeeper##34385 |tip He's a white owlkin spirit that walks around this area.
.get Elune's Torch |q 13582/1
step
goto 45.1,48.6 |n
.' Enter the cave |goto 45.1,48.6,0.5 |noway |c
step
goto 45.6,48.5
.talk 33119
..turnin 13582
..accept 13583
step
goto 41.0,56.5
.talk 33117
..turnin 13575
..accept 13576
step
goto 40.6,59.2
.from Unbound Fire Elemental##32999+
.' Use your Soothing Totem on their corpses |use Soothing Totem##44959
.' Absorb 8 Unbound Fire Elemental |q 13576/1
step
goto 40.9,56.5
.talk 33117
..turnin 13576
..accept 13580
step
goto 39.7,62.4
.' Use your Energized Soothing Totem in this spot |use Energized Soothing Totem##46546
.' Defend the Energized Soothing Totem
.' Complete the Ritual of Soothing |q 13580/1
step
goto 40.9,56.5
.talk 33117
..turnin 13580
..accept 13581
step
goto 44.4,56.8
.talk 33112
..turnin 13579
..accept 13584
step
goto 44.3,55.8
.kill 8 Enraged Earth Elemental |q 13584/1
step
goto 44.4,56.8
.talk 33112
..turnin 13584
..accept 13585
step
goto 43.6,55.1 |n
.' Follow the path up |goto 43.6,55.1,0.5 |noway |c
step
goto 43.6,53.4
.talk 33091
..turnin 13581
..turnin 13583
..turnin 13585
..accept 13586
step
goto 46.5,54.3 |n
.' Follow the path up |goto 46.5,54.3,0.5 |noway |c
step
goto 47.2,56.0 |n
.' Enter the cave |goto 47.2,56.0,0.5 |noway |c
step
goto 49.0,57.1
.' Follow the path to the end of the cave
.' Click the Nightmare Portal |tip It's a swirling purple, green and black portal in the cave.
.' Enter the Nightmare World |havebuff Interface\Icons\INV_Misc_Herb_Nightmarevine |q 13586
step
goto 49.2,56.9
.talk 33166
..turnin 13586
..accept 13587
step
goto 49.6,55.3
.from Nightmare Guardian##34398 |tip The Nightmare Guardian walks along this path.
.get Emerald Scroll |q 13587/1
step
goto 49.2,56.9
.talk 33166
..turnin 13587
..accept 13940
step
goto 43.7,53.5
.talk 33091
..turnin 13940
..accept 13588
step
goto 43.5,53.7
.' Click Thessera to ride on her |tip She's a big green dragon.
.' While flying, use the Emerald Barrage ability on your hotbar to do the following:
.kill Twilight Portal |q 13588/1
.kill 12 Twilight Rider |q 13588/2
step
'Use the Land Thessera ability on your hotbar
.' Thessera will take you back to the ground |outvehicle |q 13588
step
goto 43.7,53.5
.talk 33091
..turnin 13588
..accept 13902
step
goto 44.4,75.5
.talk 33253
.fpath Grove of the Ancients
step
goto 45.1,75.2
.talk 33250
..accept 13525
step
goto 45.3,75.1
.talk 34402
..turnin 13902
..accept 13892
step
goto 45.2,74.6
.talk 34301
..accept 13881
step
goto 45.0,79.2
.' Go to this spot underwater
.' Investigate the Watering Hole |q 13881/1
step
goto 44.7,79.4
.kill 6 Consumed Thistle Bear |q 13881/2
step
goto 43.5,81.0
.talk 32967
..turnin 13525
..accept 13526
step
goto 44.0,81.6
.' Click Bear's Paws |tip They look like green leafy plants on the ground around this area.
.get 8 Bear's Paw |q 13526/1
step
goto 43.5,81.0
.talk 32967
..turnin 13526
..accept 13544
step
goto 44.8,78.5
.from Fleetfoot##32997 |tip He's a plainstrider that walks around this pond area.
.collect Fleetfoot's Tailfeathers##44886 |q 13544
step
goto 45.3,76.8
.' Use your Bear's Paw Bundle in front of the Ancient Bear Statue |use Bear's Paw Bundle##44888 |tip It's a stone bear head statue in the middle of a bunch of broken stone pillars.
.get Blessed Herb Bundle |q 13544/1
step
goto 45.2,74.6
.talk 34301
..turnin 13881
..accept 13882
step
goto 45.4,74.8
.talk 33072
..' Ask him where you may find a Seed of the Earth
.get Seed of the Earth |q 13882/1
step
goto 42.1,79.0
.' Click the Darkshore Wisp |tip It's a blue-ish floating ball of light.  Stand next to the tree and wait until it flies down and floats towards the ground, so you can reach it.
.get Seed of the Sky |q 13882/3
step
goto 43.5,81.0
.talk 32967
..turnin 13544
..accept 13545
step
goto 43.6,81.0
.talk 32968
..accept 13572
step
goto 44.1,82.5
.' Use your Blessed Herb Bundle on a Blackwood furlbogs |use Blessed Herb Bundle##44889
.from Spirit of Corruption##33000+
.' Cleanse 7 Blackwood Furbolg Cleansed |q 13545/1 |tip You don't have to kill the furbolgs, they will become friendly and disappear after you cleanse them.
.' Click Jadefire Brazier to destroy them |tip They look like bowls with green flames in them on the ground around this area.
.' Destroy 8 Jadefire Brazier |q 13572/1
step
goto 43.5,81.0
.talk 32967
..turnin 13545
..accept 13546
step
goto 43.6,81.0
.talk 32968
..turnin 13572
step
goto 46.3,83.7 |n
.' Enter the cave |goto 46.3,83.7,0.5 |noway |c
step
goto 46.8,84.0
.kill Sharax the Defiler |q 13546/1
step
goto 43.5,81.0
.talk 32967
..turnin 13546
step
goto 42.4,82.3
.' Use your Panther Figurine in this spot |use Panther Figurine##46696 |tip If you have a pet, dismiss it.
.' Transform into a panther |havebuff Interface\Icons\Ability_Druid_CatForm |q 13892
step
goto 40.6,84.5
.' Avoid the Faceless Ones, they can see through your panther disguise stealth
.' Stand in this spot and listen to Foreman Balsoth
.' Complete the Twilight's Hammer surveillance |q 13892/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 13892
..accept 13948
step
goto 38.6,78.2
.' Click a Glittering Shell |tip They look like white clam shells along the beach around this area.
.get Seed of the Sea |q 13882/2
step
goto 39.2,85.1
.' Use your Panther Figurine in this spot |use Panther Figurine##46696 |tip If you have a pet, dismiss it.
.' Transform into a panther |havebuff Interface\Icons\Ability_Druid_CatForm |q 13948
step
goto 39.8,86.4 |n
.' Avoid the Faceless Ones, they can see through your panther disguise stealth
.' Follow the path up |goto 39.8,86.4,0.5 |noway |c
step
goto 41.1,85.4 |n
.' Avoid the Faceless Ones, they can see through your panther disguise stealth
.' Follow the path up |goto 41.1,85.4,0.5 |noway |c
step
goto 39.9,84.8
.' Go to this spot
.' Watch the dialogue
.' Complete the Master's Glaive Surveillance |q 13948/1
step
'Hearth to Lor'danel |goto 50.9,18.6,0.5 |use Hearthstone##6948 |noway |c
step
goto 51.7,17.6
.talk 3841
.' Fly to the Grove of the Ancients, Darkshore |goto 44.4,75.5,0.5 |noway |c
step
goto 45.2,74.6
.talk 34301
..turnin 13882
..accept 13925
step
goto 45.3,75.1
.talk 34402
..turnin 13948
step
goto 45.3,75.1
.talk 34404
..accept 13896
step
goto 42.3,76.7
.' Use Lifebringer Sapling on a Grizzled Thistle Bear |use Lifebringer Sapling##46363
.' Test the Lifebringer Sapling |q 13925/1
step
goto 45.2,74.6
.talk 34301
..turnin 13925
..accept 13885
step
goto 44.5,75.3
.talk 34392
..' Tell him Kathrena sent you to borrow one of his Hippogryphs
.' From the air, use the Protect Wildlife ability on your hotbar on animals on the ground to do the following:
.' Protect 8 Grizzled Thistle Bears |q 13885/1
.' Protect 8 Moonstalkers |q 13885/2
.' Protect 8 Whitetail Deers |q 13885/3
step
goto 45.2,74.6
.talk 34301
..turnin 13885
..accept 13891
step
goto 45.1,78.7
.' Use your Lifebringer Sapling while standing next to the lake |use Lifebringer Sapling##46370
.from Yoth'al the Devourer##34331
.' Destroy the Devouring Artifact |q 13891/1
step
goto 45.2,74.6
.talk 34301
..turnin 13891
step
map Darnassus
'To continue gaining reputation with the Darnassus faction:
.' You can buy a Darnassus Tabard from Moon Priestess Lasara at [Darnassus 36.5,48.5] |tip Wear the Darnassus Tabard and use the Dungeon Finder tool to complete random Azeroth, Northrend, or Cataclysm. The Burning Crusade dungeons will not give any rep when using this tabard.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Human Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Human race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Human.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Human.
step
goto Icecrown,76.6,19.1
.talk 33225
..accept 13593
..turnin 13593
..accept 13718
step
goto Icecrown,76.6,19.1
.talk 33225
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13603 |daily |or
..accept 13600 |daily |or
..accept 13616 |daily |or
step
goto 76.5,19.1
.talk 33222
..accept 13592 |daily
step
goto 76.6,19.2
.talk 33223
..accept 13665 |daily
..accept 13847 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13603/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13600
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13600/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13616
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13616/1
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13847
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13847/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13847/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13847/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13847
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13592/1
step
goto 76.1,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed|invehicle |q 13665
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13665/1
step
goto 76.6,19.1
.talk 33225
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13603
..turnin 13600
..turnin 13616
step
goto 76.5,19.1
.talk 33222
..turnin 13592
step
goto 76.6,19.2
.talk 33223
..turnin 13665
..turnin 13847
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13718/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.6,19.2
.talk 33225
..turnin 13718
..accept 13699
step
goto 76.0,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13699
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13699/1
step
goto 76.6,19.2
.talk 33225
..turnin 13699
step
'Congratulations, you are now a Champion of Stormwind! |tip This is the end of the Human Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Night Elf Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Night Elf race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Night Elf.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Night Elf.
step
goto Icecrown,76.3,19.0
.talk 33592
..accept 13706
..turnin 13706
..accept 13717
step
goto Icecrown,76.3,19.0
.talk 33592
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13757 |daily |or
..accept 13758 |daily |or
..accept 13759 |daily |or
step
goto 76.3,19.0
.talk 33652
..accept 13760 |daily
step
goto 76.4,19.0
.talk 33654
..accept 13761 |daily
..accept 13855 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13757/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13758
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13758/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13759
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13759/1
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13855
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13855/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13855/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13855/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13855
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13760/1
step
goto 76.0,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13761
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13761/1
step
goto 76.3,19.0
.talk 33592
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13757
..turnin 13758
..turnin 13759
step
goto 76.3,19.0
.talk 33652
..turnin 13760
step
goto 76.4,19.0
.talk 33654
..turnin 13761
..turnin 13855
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13717/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.3,19.1
.talk 33592
..turnin 13717
..accept 13725
step
goto 76.0,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13725
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13725/1
step
goto 76.3,19.1
.talk 33592
..turnin 13725
step
'Congratulations, you are now a Champion of Darnassus! |tip This is the end of the Night Elf Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Dwarf Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Dwarf race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Dwarf.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Dwarf.
step
goto Icecrown,76.3,19.0
.talk 33312
..accept 13703
..turnin 13703
..accept 13714
step
goto Icecrown,76.6,19.5
.talk 33312
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13741 |daily |or
..accept 13742 |daily |or
..accept 13743 |daily |or
step
goto 76.7,19.4
.talk 33315
..accept 13744 |daily
step
goto 76.6,19.6
.talk 33309
..accept 13745 |daily
..accept 13851 |daily
step
goto 76.3,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram|invehicle |q 13745
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13745/1
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13744/1
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13851
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13851/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13851/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13851/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13851
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13741/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13742
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13742/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13743
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13743/1
step
goto Icecrown,76.6,19.5
.talk 33312
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13741
..turnin 13742
..turnin 13743
step
goto 76.7,19.4
.talk 33315
..turnin 13744
step
goto 76.6,19.6
.talk 33309
..turnin 13745
..turnin 13851
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13717/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.3,19.1
.talk 33592
..turnin 13714
..accept 13713
step
goto 76.3,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram|invehicle |q 13713
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion
|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.
|tip When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.
|tip Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13713/1
step
goto 76.3,19.1
.talk 33592
..turnin 13713
step
'Congratulations, you are now a Champion of Ironforge! |tip This is the end of the Dwarf Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Gnome Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Gnome race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Gnome.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Gnome.
step
goto Icecrown,76.5,19.8
.talk 33335
..accept 13704
..turnin 13704
..accept 13715
step
goto 76.5,19.8
.talk 33335
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13746 |daily |or
..accept 13747 |daily |or
..accept 13748 |daily |or
step
goto 76.6,19.8
.talk 33648
..accept 13749 |daily
step
goto 76.5,19.9
.talk 33649
..accept 13750 |daily
..accept 13852 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13746/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13747
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13747/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13748
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13748/1
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13852
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13852/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13852/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13852/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13852
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13749/1
step
goto 76.2,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider|invehicle |q 13750
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13750/1
step
goto 76.5,19.8
.talk 33335
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13746
..turnin 13747
..turnin 13748
step
goto 76.6,19.8
.talk 33648
..turnin 13749
step
goto 76.5,19.9
.talk 33649
..turnin 13750
..turnin 13852
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13715/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.5,19.8
.talk 33335
..turnin 13715
..accept 13723
step
goto 71.9,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider|invehicle |q 13723
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13723/1
step
goto 76.5,19.8
.talk 33335
..turnin 13723
step
'Congratulations, you are now a Champion of Gnomeregan! |tip This is the end of the Gnome Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Icecrown\\Crusader Title Guide (Unlocks More Dailies)\\Draenei Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Draenei race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Draenei.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Draenei.
step
goto Icecrown,76.1,19.1
.talk 33593
..accept 13705
..turnin 13705
..accept 13716
step
goto 76.1,19.1
.talk 33593
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13752 |daily |or
..accept 13753 |daily |or
..accept 13754 |daily |or
step
goto 76.1,19.2
.talk 33655
..accept 13755 |daily
step
goto 76.2,19.1
.talk 33656
..accept 13756 |daily
..accept 13854 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13752/1
step
goto Icecrown,69.1,76.2
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13753
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
.get Blade of Drak'Mar |q 13753/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13754
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13754/1
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13854
step
goto 50.1,74.8
.kill 15 Boneguard Footman |q 13854/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13854/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13854/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13854
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13755/1
step
goto 76.4,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk|invehicle |q 13756
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13756/1
step
goto 76.1,19.1
.talk 33593
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13752
..turnin 13753
..turnin 13754
step
goto 76.1,19.2
.talk 33655
..turnin 13755
step
goto 76.2,19.1
.talk 33656
..turnin 13756
..turnin 13854
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13716/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.1,19.2
.talk 33593
..turnin 13716
..accept 13724
step
goto 71.7,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk|invehicle |q 13724
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13724/1
step
goto 76.1,19.2
.talk 33593
..turnin 13724
step
'Congratulations, you are now a Champion of The Exodar! |tip This is the end of the Gnome Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Speed Gold Runs\\Level 80 Dailies Speed Gold Run (No ATG Dailies)",[[
author support@zygorguides.com
description This guide section will walk you through a 25 daily quest speed gold run at level 80, without including any Argent Tournament Grounds dailies.
description To be able to complete all the quests in this guide section, you must have completed the The Storm Peaks Full Zone Guide (Includes Pre-Quests),
description The Sons of Hodir Reputation (Honored), and Icecrown Full Zone Quest Path (Includes Regular Dailies Pre-Quests) guide sections.
daily
step
goto The Storm Peaks,40.9,85.3
.talk 29428
..accept 12833 |daily
step
goto 43.1,81.2
.' Use your Improved Land Mines to place mines on the ground close to each other|use Improved Land Mines##40676|tip Garm Invaders and Snowblind Followers will run over the mines and die.
.kill 12 Garm Invader##29619 |q 12833/1
step
goto 40.9,85.3
.talk 29428
..turnin 12833
step
goto 63.5,59.8
.talk 30294
..accept 12994 |daily
step
goto 64.2,59.2
.' Click Hodir's Helm |tip It's a huge helm on the tip of this ice spike.
..accept 13006 |daily
step
goto 65.1,60.8
.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
..accept 13003 |daily
step
goto 67.6,59.9
.' Click Arngrim the Insatiable
..accept 13046 |daily
step
goto 63.2,62.9
.' Click Fjorn's Anvil |tip It's a huge anvil on an ice platform.
..accept 12981 |daily
step
goto 64.1,65.1
.' Click Hodir's Horn |tip It's a huge bone war horn.
..accept 12977 |daily
step
goto 57.2,64.0
.' Use your Ethereal Worg's Fang next to the Corpse of the Fallen Worg |use Ethereal Worg's Fang##42479
.' Follow the wolf that spawns and kill the Stormforged Infiltrator it finds
.' Repeat this process 2 more times
.' Kill 3 Stormforged Infiltrators |q 12994/1
.' Use Arngrim's Tooth on Roaming Jormungars |use Arngrim's Tooth##42774
.' Fight Disembodied Jormungars until Arngrim the Insatiable comes to eat them
.' Feed Arngrim's Spirit 5 Times |q 13046/1
step
goto 55.6,63.4
.from Viscous Oil##30325+ |tip They look like slimes inside this cave.
.get 5 Viscous Oil |q 13006/1
step
goto 56.6,64.3
.' Use the Spear of Hodir on a Wild Wyrm flying around in the sky |use Spear of Hodir##42769
.' While fighting the Wild Wyrm, there will be 2 phases to the fight.  Phase 1: |tip In phase 1 of the fight, you will be underneath the Wild Wyrm.  Use your Grab On ability to keep your grip high, or you will fall off and die.  Repeatedly use your Thrust Spear ability, until you get a message the Wild Wyrm is about to use its claw attack.  When you see that message, use your Dodge Claws ability, and then immediately use your Mighty Spear Thrust ability after that.  Remember to keep your grip up by using your Grab On ability, and repeat this process until phase 2 of the fight begins.
.' In phase 2 of the fight with the Wild Wyrm, the strategy changes: |tip In phase 2 of the fight, you will be inside the Wild Wyrm's mouth.  Repeatedly use your Pry Jaws Open ability, try to stack it 20 times.  After you stack your Pry Jaws ability 20 times (which will give your Fatal Strike ability 100% chance to hit), use your Fatal Strike ability to kill the Wild Wyrm.  If you are close to dying, just stack your Pry Jaws Open ability as many times as you can, then use your Fatal Strike ability before you die, and hope it kills the Wild Wyrm.
.' Kill the Wild Wyrm |q 13003/1
step
goto 63.5,59.8
.talk 30294
..turnin 12994
step
goto 64.2,59.2
.' Click Hodir's Helm|tip It's a huge helm on the tip of this ice spike.
..turnin 13006
step
goto 65.1,60.8
.' Click Hodir's Spear |tip It's a huge spear hanging from 2 chains.
..turnin 13003
step
goto 67.6,59.9
.' Click Arngrim the Insatiable
..turnin 13046
step
goto 69.7,60.2
.from Brittle Revenant##30160+
.collect 6 Essence of Ice##42246 |q 12981
step
goto 75.3,62.8
.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
.' Click the Frozen Iron Scraps
.get 6 Frozen Iron Scrap |q 12981/1
step
goto 72.1,51.8
.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
.' Free 5 Niffelem Forefathers |q 12977/1
.' Free 5 Restless Frostborn |q 12977/2
step
goto 63.2,62.9
.' Click Fjorn's Anvil|tip It's a huge anvil on an ice platform.
..turnin 12981
step
goto 64.1,65.1
.' Click Hodir's Horn|tip It's a huge bone war horn.
..turnin 12977
step
map Icecrown
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 30344
..accept 13333 |daily
step
'On the Skybreaker airship:
.talk 29799
..accept 13289 |daily
..accept 13323 |daily
..accept 13344 |daily
step
'On the Skybreaker airship:
.talk 31259
..accept 13300 |daily
step
'On the Skybreaker airship:
.talk 32302
..accept 13336 |daily
step
'On the Skybreaker airship:
.talk 30345
..accept 13292 |daily
..accept 13322 |daily
step
goto 62.6,51.3
.talk 31808
..accept 13309 |daily
step
goto 62.6,50.9
.' Click the Skybreaker Suppression Turret to control the gun on the airplane|invehicle
step
'You will fly off in the airplane:
.' Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around|petaction Suppression Charge
.' Drop 4 Skybreaker Infiltrators|goal 4 Skybreaker Infiltrators dropped|q 13309/1
step
goto 62.6,51.3
.talk 31808
..turnin 13309
step
goto 62.5,51.1
.talk 31737
..accept 13284 |daily
step
'Follow the Alliance troops up the mountain and help them fight
.'Escort the Alliance troops into Ymirheim |q 13284/1 |tip At least 4 Alliance troops must survive.
step
'The entrance to the cave starts here, go inside the cave |goto 57.0,57.3,0.3 |c
step
goto 56.0,57.6
.' Talk to Saronite Mine Slaves
..' Tell them they're free, get out of here!
.' Rescue 10 Saronite Mine Slaves |q 13300/1
step
'Go outside the cave |goto 57.0,57.3,0.3 |c
step
goto 57.3,57.0
.from Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
.kill 20 Ymirheim Vrykul |q 13336/1
step
goto 57.0,62.6
.talk 31776
..accept 13280 |daily
step
goto 57.0,62.6
.' Click Geargrinder's Jumpbot to get in the robot |invehicle |q 13280
step
goto 54.9,60.1
.' Use your Jump Jets ability to jump up the mountain to this spot|petaction Jump Jets |tip This spot is the peak of the mountain.
.' Use your Plant Alliance Battle Standard ability next to the Ymirheim Peak Skulls |petaction Plant Alliance Battle Standard |tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
.' Plant the Alliance Battle Standard |q 13280/1
step
'Click the red arrow button on your vehicle hotbar to get out of the robot |script VehicleExit() |outvehicle |c
step
goto 57.0,62.5
.talk 31776
..turnin 13280
step
goto 62.6,51.3
.talk 31808
..turnin 13284
step
goto 69.9,64.3
.' Click Abandoned Armor |tip They look like metal armor chestpieces laying on the ground around this area.
.collect 3 Abandoned Armor##43616 |q 13292
.' Click Abandoned Helm |tip They look like metal helmets laying on the ground around this area.
.collect 3 Abandoned Helm##43610 |q 13292
.' Click Piles of Bones |tip They look like small piles of bones laying on the ground around this area.
.collect 3 Pile of Bones##43609 |q 13292
step
goto 68.8,67.5
.' Use your Smuggled Solution 3 times |use Smuggled Solution##44048
.' Destroy 3 Frostbrood Skytalons |q 13292/1
step
goto 69.8,62.9
.from Hulking Abomination##31140+
.collect Chilled Abomination Guts|n
.' Use your Abomination Reanimation Kit |use Abomination Reanimation Kit##43968
.' With your control Abomination, go to 69.1,61.6 |n
.' Use your Burst at the Seams ability to explode the mobs around this area
.' Keep repeating this process until you:
.' Explode 15 Icy Ghouls |q 13289/1
.' Explode 15 Vicious Geists |q 13289/2
.' Explode 15 Risen Alliance Soldiers |q 13289/3
step
goto 43.3,58.2
.' Use the Dart Gun on Orgrim's Hammer Scouts |use Dart Gun##44222 |tip They are flying up in the air on purple dragons.
.' When they hit the ground, fly down and loot their bodies |tip There are elites and grouped mobs on the ground.
.get 6 Orgrim's Hammer Dispatch |q 13333/1
step
goto 53.9,46.1
.from Bitter Initiate##32238
.collect 3 Orb of Illusion |q 13323
step
goto 54.3,45.6
.' Use your Orbs of Illusion on Dark Subjugators |use Orb of Illusion##44246
.' Drag and drop 3 Dark Subjugators |q 13323/1
step
goto 55.2,29.1
.' Use your Diluted Cult Tonic|use Diluted Cult Tonic##44307 |tip This gives you a buff that allows you to collect Tainted Essences from dead cultists in Aldur'thar.  If you lose the buff, use this again.
.from Void Summoner##32259+, Shadow Channeler##32262+
.collect 10 Tainted Essence##44301 |n
.' Use a Tainted Essence to combine them |use Tainted Essence##44301
..collect 1 Writhing Mass##44304 |q 13322
.' Use your Rod of Siphening on the Enslaved Minion corpses |use Rod of Siphening##44433
.collect 5 Dark Matter##44434 |q 13344
step
goto 53.8,33.6
.' Click the Summoning Stone
.' Summon the Dark Messenger |q 13344/1
step
goto 49.1,34.2
.' Use your Writhing Mass next to the big cauldron |use Writhing Mass##44304
.' Banish the Writhing Mass |q 13322/1
step
goto 42.8,24.9
.talk 29804
..accept 12995 |daily
step
goto 43.6,25.1
.talk 30074
..accept 13069 |daily
step
goto 43.1,25.2
.talk 30216
..accept 13071 |daily
step
goto 33.0,23.9
.' Click a Jotunheim Rapid-Fire Harpoon to control it |invehicle |q 13069
step
'Use your Jotunheim Rapid-Fire Harpoon abilities to shoot at the Jotunheim Proto-Drakes that fly around this area
.' Shoot down 15 Jotunheim Proto-Drakes & Their Riders |q 13069/1
step
.' Click the red arrow on your hotbar to stop controlling the Jotunheim Rapid-Fire Harpoon |outvehicle |q 13069
step
goto 33.0,27.0
.from Njorndar Spear-Sister##30243+, Jotunheim Warrior##29880+, Valhalas Vargul##30250+
.' Use your Ebon Blade Banner on the Jotunheim vrykul corpses|use Ebon Blade Banner##42480
.' Plant 15 Ebon Blade Banners near vrykul corpses |q 12995/1
step
goto 27.2,39.1
.' Click a Njorndar Proto-Drake to ride it|invehicle |q 13071
step
goto 28.4,37.6
.' Use your Proto-Drake abilities near the buildings around this area to:
.' Burn 8 Vrykul Buildings |q 13071/1
step
'Click the red arrow on your vehicle hot bar to stop riding the Njorndar Proto-Drake|script VehicleExit()|outvehicle|c |q 13071
step
goto 19.7,48.4
.talk 29396
..accept 12813 |daily
step
goto 19.9,48.3
.talk 29456
..accept 12838 |daily
step
goto 19.6,47.8
.talk 29405
..accept 12815 |daily
step
goto 9.6,44.3
.from Onslaught Harbor Guard##29330+, Onslaught Paladin##29329+, Onslaught Raven Bishop##29338, Onslaught Gryphon Rider##29333+
.collect Scarlet Onslaught Trunk Key##40652+|n
.' Use Darkmender's Tincture on the Onslaught mobs' corpses|use Darkmender's Tincture##40587
.' Transform 10 Scarlet Onslaught Corpses |q 12813/1
.' Click Scarlet Onslaught Trunks|tip They look like small wooden boxes on the ground around this area.
.get 5 Onslaught Intel Documents|q 12838/1
step
'Use your Bone Gryphon in your bags while in Onslaught Harbor|use Bone Gryphon##40600
.' Ride a Bone Gryphon|invehicle|q 12815
step
goto 10.2,41.9
.' Use your Bone Gryphon abilities to:
.kill 10 Onslaught Gryphon Rider|q 12815/1
step
'Get to a safe place and click the red arrow on your vehicle hot bar to stop riding the Bone Gryphon|script VehicleExit()|outvehicle|c |q 12815
step
goto Icecrown,19.7,48.4
.talk 29396
..turnin 12813
step
goto 19.9,48.3
.talk 29456
..turnin 12838
step
goto 19.6,47.8
.talk 29405
..turnin 12815
step
goto 42.8,24.9
.talk 29804
..turnin 12995
step
goto 43.6,25.1
.talk 30074
..turnin 13069
step
goto 43.1,25.2
.talk 30216
..turnin 13071
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 30344
..turnin 13333
step
'On the Skybreaker airship:
.talk 29799
..turnin 13289
..turnin 13323
..turnin 13344
step
'On the Skybreaker airship:
.talk 31259
..turnin 13300
step
'On the Skybreaker airship:
.talk 32302
..turnin 13336
step
'On the Skybreaker airship:
.talk 30345
..turnin 13292
..turnin 13322
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Northrend (70 - 80)\\Speed Gold Runs\\Level 80 Dailies Speed Gold Run (With ATG Dailies)",[[
author support@zygorguides.com
description This guide section will walk you through a 25 daily quest speed gold run at level 80.
description To be able to complete all the quests in this guide section, you must have completed
description the The Storm Peaks Full Zone Guide (Includes Pre-Quests), The Sons of Hodir Reputation (Honored),
description and Icecrown Full Zone Quest Path (Includes Regular Dailies Pre-Quests) guide sections.
daily
step
goto Icecrown,76.3,19.6
.talk 34880
.' You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
..accept 14074 |daily |or 2
..accept 14152 |daily |or 2
..accept 14080 |daily |or 2
..accept 14077 |daily |or 2
..accept 14096 |daily |or 2
step
goto 76.2,19.6
.talk 34912
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 14076 |daily |or
..accept 14090 |daily |or
..accept 14112 |daily |or
step
goto 73.8,19.4
.talk 33769
..accept 13791 |daily
only DeathKnight
step
goto 73.8,20.1
.talk 33762
..accept 13788 |daily |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
..accept 13864 |daily
only DeathKnight
step
goto 73.6,20.1
.talk 33770
..accept 13793 |daily
only DeathKnight
step
goto 69.9,23.3
.talk 33771
..accept 13790 |daily
only !DeathKnight
step
goto 70.0,23.4
.talk 33759
..accept 13682 |daily |tip You must have turned in the quest The Black Knight's Fall from the ATG Black Knight Quest Chain guide section in order to be able to get this daily quest.
..accept 13861 |daily
only !DeathKnight
step
goto 69.9,23.5
.talk 33763
..accept 13789 |daily
only !DeathKnight
step
goto 69.5,23.1
.talk 34882
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..accept 14105 |daily |or
..accept 14101 |daily |or
..accept 14102 |daily |or
..accept 14104 |daily |or
step
goto 69.5,23.1
.talk 35094
.' You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
..accept 14108 |daily |or
..accept 14107 |daily |or
step
goto 71.7,22.4
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk |invehicle |q 13790
only Draenei Warrior,Draenei Paladin,Draenei Hunter,Draenei Priest,Draenei Shaman,Draenei Mage
step
goto 71.8,22.5
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram |invehicle |q 13790
only Dwarf Warrior,Dwarf Paladin,Dwarf Hunter,Dwarf Rogue,Dwarf Priest,Dwarf Death Knight
step
goto 71.6,22.4
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed |invehicle |q 13790
only Human Warrior,Human Paladin,Human Rogue,Human Priest,Human Death Knight,Human Mage,Human Warlock
step
goto 71.6,22.5
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13790
only NightElf Warrior,NightElf Hunter,NightElf Rogue,NightElf Priest,NightElf Death Knight,NightElf Druid
step
goto 71.9,22.5
.' Equip the Alliance Lance in your bags |use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13790
only Gnome Warrior,Gnome Rogue,Gnome Death Knight,Gnome Mage,Gnome Warlock
step
goto 71.6,23.8
.' Talk to the riders on mounts around this area
.' Tell them you are ready to fight!
.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.get 4 Mark of the Champion |q 13790/1
only !DeathKnight
step
'Click the red arrow on your hotbar to get off your mount |outvehicle |q 13790
only !DeathKnight
step
goto 71.7,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Exodar Elekk |invehicle |q 13793
only Draenei DeathKnight
step
goto 71.8,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Ironforge Ram |invehicle |q 13793
only Dwarf DeathKnight
step
goto 71.6,22.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed |invehicle |q 13793
only Human DeathKnight
step
goto 71.6,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber |invehicle |q 13793
only NightElf DeathKnight
step
goto 71.9,22.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Gnomeregan Mechanostrider |invehicle |q 13793
only Gnome DeathKnight
step
goto 71.6,23.8
.' Talk to the riders on mounts around this area
.' Tell them you are ready to fight!
.' Fight and defeat them|tip The best strategy to defeat the Champion riders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Champion rider (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Champion rider will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back (use your Shield-Breaker ability as you circle around to come back to the Champion rider, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.get 4 Mark of the Champion |q 13793/1
only DeathKnight
step
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13793
only DeathKnight
step
goto 66.9,8.1
.' Click a Bucket of Fresh Chum |tip They looks like wooden buckets on the deck of this ship.
.collect 6 Fresh Chum##47036 |q 14112
step
goto 66.8,9.5
.' Use the Fresh Chum in your bags |use Fresh Chum##47036
.from North Sea Blue Sharks|tip They spawn underwater around this area when you use the Fresh Chum.
.get 3 North Sea Shark Meat |q 14112/1
step
goto Hrothgar's Landing,50.6,49.4
.kill 8 Kvaldir Berserker |q 14152/1
.kill 3 Kvaldir Harpooner |q 14152/2
step
goto 43.3,27.5
.' Click Stolen Tallstrider Legs |tip They look like chicken legs laying on objects and on the ground around this area.
.from Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
.get 10 Stolen Tallstrider Leg |q 14074/1
step
goto 46.5,32.8
.from Kvaldir Mist Binder##34839+, Kvaldir Reaver##34838+
.' Kill 10 Kvaldir |q 14080/1
step
goto 46.5,32.8
.' Use your Confessor's Prayer Book on Slain Tualiq Villagers |use Confessor's Prayer Book##46870 |tip They look like dead walrus men corpses around this area.
.' Administer 8 Last Rites |q 14077/1
step
goto Hrothgar's Landing,43.9,24.3
.' Use your Mistcaller's Charm while standing inside this cave, next to the blue floating crystal |use Mistcaller's Charm##47009
.kill Mistcaller Yngvar |q 14102/1
step
goto Hrothgar's Landing,50.7,15.4
.' Use Kvaldir War Horn next to the bonfire |use Kvaldir War Horn##47006
.kill Drottinn Hrothgar |q 14101/1
step
goto Hrothgar's Landing,58.5,31.6
.' Use your Captured Kvaldir Banner on the deck of the Bor's Fury ship |use Captured Kvaldir Banner##47029
.kill Ornolf the Scarred |q 14104/1
step
goto Icecrown,69.8,22.2
.' Click a Stabled Argent Hippogryph to ride it
.' Use your Flaming Spears on North Sea Kraken and Kvaldir Deepcallers while flying |use Flaming Spears##46954
.kill 3 Kvaldir Deepcaller |q 14108/2
.' Hurl Spears at 6 North Sea Kraken |q 14108/1
step
goto 64.2,21.4
.kill Deathspeaker Kharos |q 14105/1 |tip He's standing in a small pit area.
step
goto 64.0,21.5
.from Dark Ritualist##34734+, Dark Zealot##34728+
.collect 4 Black Cage Key##46895 |n
.' Click Black Cages |tip They look like big sqaure cages around this area.
.' Rescue 4 Captive Aspirants |q 14096/2
step
goto 64.0,21.5
.from Dark Ritualist##34734+, Dark Zealot##34728+
.collect 1 Black Cage Key##46895 |q 14096
step
goto 60.8,23.2
.' Click the Black Cage |tip It looks like big sqaure cage up on this platform.
.' Rescue Kul the Reckless |q 14096/1
step
goto 64.3,21.4
.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
.kill 15 Cult of the Damned member |q 13791/1
only DeathKnight
step
goto 64.3,21.4
.from Deathspeaker Kharos##34808, Dark Zealot##34728+, Dark Ritualist##34734+
.kill 15 Cult of the Damned member |q 13789/1
only !DeathKnight
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 30344
..accept 13333 |daily
step
'On the Skybreaker airship:
.talk 29799
..accept 13289 |daily
..accept 13323 |daily
..accept 13344 |daily
step
'On the Skybreaker airship:
.talk 31259
..accept 13300 |daily
step
'On the Skybreaker airship:
.talk 32302
..accept 13336 |daily
step
'On the Skybreaker airship:
.talk 30345
..accept 13292 |daily
..accept 13322 |daily
step
goto 62.6,51.3
.talk 31808
..accept 13309 |daily
step
goto 62.6,50.9
.' Click the Skybreaker Suppression Turret to control the gun on the airplane|invehicle
step
'You will fly off in the airplane:
.' Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around|petaction Suppression Charge
.' Drop 4 Skybreaker Infiltrators|goal 4 Skybreaker Infiltrators dropped|q 13309/1
step
goto 62.6,51.3
.talk 31808
..turnin 13309
step
goto 62.5,51.1
.talk 31737
..accept 13284 |daily
step
'Follow the Alliance troops up the mountain and help them fight
.'Escort the Alliance troops into Ymirheim |q 13284/1 |tip At least 4 Alliance troops must survive.
step
'The entrance to the cave starts here, go inside the cave |goto 57.0,57.3,0.3 |c
step
goto 56.0,57.6
.' Talk to Saronite Mine Slaves
..' Tell them they're free, get out of here!
.' Rescue 10 Saronite Mine Slaves |q 13300/1
step
'Go outside the cave |goto 57.0,57.3,0.3 |c
step
goto 57.3,57.0
.from Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
.kill 20 Ymirheim Vrykul |q 13336/1
step
goto 57.0,62.6
.talk 31776
..accept 13280 |daily
step
goto 57.0,62.6
.' Click Geargrinder's Jumpbot to get in the robot |invehicle |q 13280
step
goto 54.9,60.1
.' Use your Jump Jets ability to jump up the mountain to this spot|petaction Jump Jets |tip This spot is the peak of the mountain.
.' Use your Plant Alliance Battle Standard ability next to the Ymirheim Peak Skulls |petaction Plant Alliance Battle Standard |tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
.' Plant the Alliance Battle Standard |q 13280/1
step
'Click the red arrow button on your vehicle hotbar to get out of the robot |script VehicleExit() |outvehicle |c
step
goto 57.0,62.5
.talk 31776
..turnin 13280
step
goto 62.6,51.3
.talk 31808
..turnin 13284
step
goto 69.9,64.3
.' Click Abandoned Armor |tip They look like metal armor chestpieces laying on the ground around this area.
.collect 3 Abandoned Armor##43616 |q 13292
.' Click Abandoned Helm |tip They look like metal helmets laying on the ground around this area.
.collect 3 Abandoned Helm##43610 |q 13292
.' Click Piles of Bones |tip They look like small piles of bones laying on the ground around this area.
.collect 3 Pile of Bones##43609 |q 13292
step
goto 68.8,67.5
.' Use your Smuggled Solution 3 times |use Smuggled Solution##44048
.' Destroy 3 Frostbrood Skytalons |q 13292/1
step
goto 69.8,62.9
.from Hulking Abomination##31140+
.collect Chilled Abomination Guts|n
.' Use your Abomination Reanimation Kit |use Abomination Reanimation Kit##43968
.' With your control Abomination, go to 69.1,61.6 |n
.' Use your Burst at the Seams ability to explode the mobs around this area
.' Keep repeating this process until you:
.' Explode 15 Icy Ghouls |q 13289/1
.' Explode 15 Vicious Geists |q 13289/2
.' Explode 15 Risen Alliance Soldiers |q 13289/3
step
goto 43.3,58.2
.' Use the Dart Gun on Orgrim's Hammer Scouts |use Dart Gun##44222 |tip They are flying up in the air on purple dragons.
.' When they hit the ground, fly down and loot their bodies |tip There are elites and grouped mobs on the ground.
.get 6 Orgrim's Hammer Dispatch |q 13333/1
step
goto 53.9,46.1
.from Bitter Initiate##32238
.collect 3 Orb of Illusion |q 13323
step
goto 54.3,45.6
.' Use your Orbs of Illusion on Dark Subjugators |use Orb of Illusion##44246
.' Drag and drop 3 Dark Subjugators |q 13323/1
step
goto 54.0,42.9
.talk 32444
..accept 13382 |daily
step
goto 54.0,43.1
.talk 31648
.' Tell her to give you a bomber!|invehicle|q 13382
step
'You fly off in an airplane:
.' Use the 3 different modes on the right side of your hotbar to shoot rockets, drop bombs, or repair your airplane
.' Shoot rockets at the gargoyles and sentries that fly around you (you have to aim it)
..kill 20 Gargoyle Ambusher|q 13382/2
..kill 12 Frostbrood Sentries|q 13382/4
.' Drop bombs on the mobs below
..kill 50 Bombardment Infantry|q 13382/1
..kill 12 Scourge War Machines|q 13382/3
.' Use your Charge Shield ability to keep your airplane's defense up
.' Use your Fight Fire ability to put out fires on your airplane
step
'Click the red arrow to get out of the plane|script VehicleExit()|outvehicle|c|q 13382
step
goto 51.1,38.4
.' Click Discarded Soul Crystals |tip They look like small blue-glowing crystals laying on the ground around this area.
.collect 6 Discarded Soul Crystal##47035 |n
.' Use your Light-Blessed Relic on Fallen Hero's Spirits |use Light-Blessed Relic##47033
.' Bless 6 Fallen Hero's Spirits |q 14107/1
step
goto 55.2,29.1
.' Use your Diluted Cult Tonic|use Diluted Cult Tonic##44307 |tip This gives you a buff that allows you to collect Tainted Essences from dead cultists in Aldur'thar.  If you lose the buff, use this again.
.from Void Summoner##32259+, Shadow Channeler##32262+
.collect 10 Tainted Essence##44301 |n
.' Use a Tainted Essence to combine them |use Tainted Essence##44301
..collect 1 Writhing Mass##44304 |q 13322
.' Use your Rod of Siphening on the Enslaved Minion corpses |use Rod of Siphening##44433
.collect 5 Dark Matter##44434 |q 13344
step
goto 53.8,33.6
.' Click the Summoning Stone
.' Summon the Dark Messenger |q 13344/1
step
goto 49.1,34.2
.' Use your Writhing Mass next to the big cauldron |use Writhing Mass##44304
.' Banish the Writhing Mass |q 13322/1
step
goto 42.8,24.9
.talk 29804
..accept 12995 |daily
step
goto 43.6,25.1
.talk 30074
..accept 13069 |daily
step
goto 43.1,25.2
.talk 30216
..accept 13071 |daily
step
goto 33.0,23.9
.' Click a Jotunheim Rapid-Fire Harpoon to control it |invehicle |q 13069
step
'Use your Jotunheim Rapid-Fire Harpoon abilities to shoot at the Jotunheim Proto-Drakes that fly around this area
.' Shoot down 15 Jotunheim Proto-Drakes & Their Riders |q 13069/1
step
.' Click the red arrow on your hotbar to stop controlling the Jotunheim Rapid-Fire Harpoon |outvehicle |q 13069
step
goto 33.0,27.0
.from Njorndar Spear-Sister##30243+, Jotunheim Warrior##29880+, Valhalas Vargul##30250+
.' Use your Ebon Blade Banner on the Jotunheim vrykul corpses|use Ebon Blade Banner##42480
.' Plant 15 Ebon Blade Banners near vrykul corpses |q 12995/1
step
goto 27.2,39.1
.' Click a Njorndar Proto-Drake to ride it|invehicle |q 13071
step
goto 28.4,37.6
.' Use your Proto-Drake abilities near the buildings around this area to:
.' Burn 8 Vrykul Buildings |q 13071/1
step
'Click the red arrow on your vehicle hot bar to stop riding the Njorndar Proto-Drake|script VehicleExit()|outvehicle|c |q 13071
step
goto 42.8,24.9
.talk 29804
..turnin 12995
step
goto 43.6,25.1
.talk 30074
..turnin 13069
step
goto 43.1,25.2
.talk 30216
..turnin 13071
step
'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only DeathKnight
step
goto 44.1,32.6
.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
.kill Chillmaw |q 13788/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
.kill 3 Cultist Bombardier |q 13788/2
only DeathKnight
step
goto 48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13864
only DeathKnight
step
goto 50.1,74.8
.kill 3 Boneguard Commander |q 13864/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only DeathKnight
step
goto 48.9,71.4
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13864
only DeathKnight
step
'You will need to get a group of at least 3 people to do the daily quest in the next step of the guide.  Find a group, it should be pretty easy because there are always other players doing this quest.
only !DeathKnight
step
goto 44.1,32.6
.' This is how this fight will happen: |tip You will pull Chillmaw first and fight him until he is at about 75% health.  At that point, a Cultist Bombardier will spawn to help Chillmaw fight.  Kill the Cultist Bombardier IMMEDIATELY, as they do alot of damage, compared to Chillmaw.  Continuing fighting Chillmaw and 2 other Cultist Bombardiers will spawn: 1 when Chillmaw is at about 50% health, and 1 when Chillmaw is at about 25% health.  Again, kill the Cultist Bombardiers immediately when they spawn and this fight will be a fairly easy one.
.kill Chillmaw |q 13682/1 |tip Chillmaw is a big skeletal dragon that flies around this area.
.kill 3 Cultist Bombardier |q 13682/2
only !DeathKnight
step
goto 48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse |invehicle |q 13861
only !DeathKnight
step
goto 50.1,74.8
.kill 3 Boneguard Commander |q 13861/1 |tip The best strategy to defeat the Boneguard Commanders is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fights.  When the fights begin, immediately use your Charge ability on the Boneguard Commanders (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible).  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Boneguard Commanders will try to run away to get into Charge range.  When they start to run away, start spamming your Charge ability until you charge them in the back (use your Shield-Breaker ability as you circle around to come back to the Boneguard Commanders, if possible), then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until you kill 3 Boneguard Commanders.  Also, it may help you try to party with other players while doing this quest, as it will get done much faster and there are always other players in this area doing this same daily quest.
only !DeathKnight
step
goto 48.9,71.4
'Click the red arrow on your hotbar to get off your mount|outvehicle |q 13861
only !DeathKnight
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: 57.4,37.2
.' Point 2: 64.4,55.4
.'Find The Skybreaker flying around in the sky|tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 30344
..turnin 13333
step
'On the Skybreaker airship:
.talk 29799
..turnin 13289
..turnin 13323
..turnin 13344
step
'On the Skybreaker airship:
.talk 31259
..turnin 13300
step
'On the Skybreaker airship:
.talk 32302
..turnin 13336
step
'On the Skybreaker airship:
.talk 30345
..turnin 13292
..turnin 13322
step
goto 69.9,23.3
.talk 33771
..turnin 13790
only !DeathKnight
step
goto 70.0,23.4
.talk 33759
..turnin 13682
..turnin 13861
only !DeathKnight
step
goto 69.9,23.5
.talk 33763
..turnin 13789
only !DeathKnight
step
goto 69.5,23.1
.talk 34882
.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
..turnin 14105
..turnin 14101
..turnin 14102
..turnin 14104
step
goto 69.5,23.1
.talk 35094
.' You will only be able to accept, and turn in, 1 of these 2 daily quests per day:
..turnin 14108
..turnin 14107
step
goto 73.8,19.4
.talk 33769
..turnin 13791
only DeathKnight
step
goto 73.8,20.1
.talk 33762
..turnin 13788
..turnin 13864
only DeathKnight
step
goto 73.6,20.1
.talk 33770
..turnin 13793
only DeathKnight
step
goto The Storm Peaks,40.5,53.3
.' Use your Earthshaker Drum next to the piles of snow on the ground |use Earthshaker Drum##46893
.from Deep Jormungar##34920 |tip They spawn after using your Earthshaker Drum next to the piles of snow.
.get 4 Jormungar Egg Sac |q 14076/1
step
goto The Storm Peaks,42.8,81.3
.' Use your Weighted Net on Snowblind Followers |use Weighted Net##46885
.' Capture 8 Snowblind Followers |q 14090/1
step
goto Icecrown,76.3,19.6
.talk 34880
.' You will only be able to accept, and turn in, 2 of these 5 daily quests per day:
..turnin 14074
..turnin 14152
..turnin 14140
..turnin 14077
..turnin 14096
step
goto 76.2,19.6
.talk 34912
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 14076
..turnin 14090
..turnin 14112
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Outland (60 - 70)\\Netherdrake Mount Guide\\Netherwing Reputation (Neutral) - Pre-Quests", [[
author support@zygorguides.com
description This guide section will walk you through getting Neutral reputation with Netherwing faction. You need to have Artisan flying to complete this section.
startlevel 80
step
'Go to Shadowmoon Valley in Outland |goto Shadowmoon Valley |noway |c
step
goto Shadowmoon Valley,62.9,59.5
.talk 22113
..accept 10804
step
goto 60.5,57.7
.from Rocknail Ripper##21478+, Rocknail Flayer##21477+ |tip The Rocknail Flayers will drop Rocknail Flayer Carcasses, instead of Rocknail Flayer Giblets.
.collect Rocknail Flayer Giblets##31373 |n
.' Click the Rocknail Flayer Giblets in your bags, once you have 5 of them, to combine them into a Rocknail Flayer Carcass |use Rocknail Flayer Giblets##31373
.collect 8 Rocknail Flayer Carcass##31372 |q 10804
step
goto 60.5,57.7
.' Use the Rocknail Flayer Carcasses in your bags |use Rocknail Flayer Carcass##31372
.' Feed 8 Netherwing Drakes |q 10804/1
step
goto 62.9,59.5
.talk 22113
..turnin 10804
..accept 10811
step
goto 68.2,60.4
.talk 21657
..turnin 10811
..accept 10814
.talk 21657
..' Listen to the Tale of Neltharaku |q 10814/1
..turnin 10814
..accept 10836
step
goto 66.4,60.0
.from Dragonmaw Drake-Rider##21719+, Dragonmaw Wrangler##21717+, Dragonmaw Subjugator##21718+
.kill 15 Dragonmaw Orc |q 10836/1
step
goto 68.2,60.4
.talk 21657
..turnin 10836
..accept 10837
step
goto 64.1,80.7
.' Click the Nethervine Crystals |tip They look like big thorny plants with a small puff of red smoke near the top of them, on the ground around this area.
.get 12 Nethervine Crystal |q 10837/1
step
goto 68.2,60.4
.talk 21657
..turnin 10837
..accept 10854
step
goto 67.4,59.3
.' Use your Enchanted Nethervine Crystal on Enslaved Netherwing Drakes |use Enchanted Nethervine Crystal |tip Help the Enslaved Netherwing Drakes kill their Dragonmaw Subjugator after you free them.
..' Free 5 Enslaved Netherwing Drakes |q 10854/1
step
goto 68.2,60.4
.talk 21657
..turnin 10854
..accept 10858
step
goto 69.9,61.5
.talk 22112
..turnin 10858
..accept 10866
step
goto 70.9,61.5
.kill Zuluhed the Whacked |q 10866/2 |tip You will probably need a group to kill Zuluhed the Whacked.  He will summon demons through a portal to help him fight.  To avoid having to fight the demons, pull Zuluhed the Whacked into one of the small buildings, on either side of him, when he casts the portal.
.collect Zuluhed's Key##31664 |q 10866
step
goto 69.8,61.3
.' Click Zuluhed's Chains |tip It looks like a big metal ball and chain.
.' Free Karynaku |q 10866/1
step
goto 69.9,61.5
.talk 22112
..turnin 10866
..accept 10870
step
goto 62.9,59.5
.talk 22113
..turnin 10870
..accept 11012 |instant
..accept 11013
step
goto 66.2,85.7
.talk 23139
..turnin 11013
..accept 11014
step
goto 66.1,86.4
.talk 23140
..turnin 11014
step
goto 66.0,86.5
.talk 23141
..accept 11019 |instant
..accept 11049
step
goto 68.5,61.2
.' Click a Netherwing Egg |tip They look like dark purple eggs with blue crystals on them.  They spawn in random places, so you will probably need to search for them.  For help finding a Netherwing Egg, use the Netherwing Egg Hunting - Optimized Path section of this guide.
.get 1 Netherwing Egg |q 11049/1
step
goto 66.0,86.5
.talk 23141
..turnin 11049
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Outland (60 - 70)\\Netherdrake Mount Guide\\Netherwing Reputation (Neutral)", [[
author support@zygorguides.com
description This guide section will walk you through getting Friendly reputation with the Netherwing faction.
description You must have completed the Netherwing Reputation (Neutral) - Pre-Quests guide section
description in order to be able to complete the quests in this guide section.
startlevel 80
daily
step
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020 |daily
..accept 11035 |daily
step
goto 66.1,86.4
.talk 23140
..accept 11015 |daily
..accept 11016 |daily |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. |or
..accept 11018 |daily |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350. |or
..accept 11017 |daily |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350. |or
step
goto 72.1,75.2
.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
.get 10 Netherwing Relic |q 11035/1
step
goto 60.4,45.2
.from Greater Felfire Diemetradon##21462+, Felboar##21878+
.collect 12 Fel Gland##32502 |q 11020
step
goto 73.6,80.0
.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
.' Poison 12 Dragonmaw Peon Camps |q 11020/1
step
goto 62.6,86.2
.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
.get 40 Netherdust Pollen |q 11017/1
step
goto 70.0,91.4
. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
.get 40 Nethercite Ore |q 11018/1
step
goto 65.3,90.2 |n
.' The entrance to the mine starts here |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c
step
goto 70.8,84.4
.from Nethermine Flayer##23169+, Black Blood of Draenor##23286+
.get 30 Netherwing Crystal |q 11015/1
.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350
.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
step
goto 65.3,90.2 |n
.' Leave the mine |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c
step
goto 66.0,86.5
.talk 23141
..turnin 11020
..turnin 11035
step
goto 66.1,86.4
.talk 23140
..turnin 11015
..turnin 11016 |tip This quest is only available if you have your Skinning skill to at least 350.
..turnin 11018 |tip This quest is only available if you have your Mining skill to at least 350.
..turnin 11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
step
'Repeat this process daily until you are Friendly with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Outland (60 - 70)\\Netherdrake Mount Guide\\Netherwing Reputation (Friendly) - Pre-Quests", [[
author support@zygorguides.com
description This guide section will walk you through a chain of pre-quests, that become available
description once you have earned Friendly reputation with the Netherwing faction.
description This chain of pre-quests will open up more Netherwing faction daily quests.
startlevel 80
step
goto Shadowmoon Valley,66.1,86.4
.talk 23140
..accept 11053
step
goto 66.2,85.7
.talk 23139
..turnin 11053
step
goto 66.1,86.4
.talk 23140
..accept 11075
step
goto 66.8,86.1
.talk 23291
..accept 11054
step
goto 65.4,90.2
.talk 23149
..turnin 11075
step
'Go inside the mine to 71.6,87.6
.talk 23166
..accept 11083
step
goto 73.7,88.1
.kill 1 Crazed Murkblood Foreman |q 11083/1
.kill 5 Crazed Murkblood Miner |q 11083/2
step
goto 71.6,87.6
.talk 23166
..turnin 11083
step
goto 64.8,85.6
.from Black Blood of Draenor##23286+
.collect Sludge-covered Object##32724+ |n
.' Click the Sludge-covered Objects in your bags to open them |use Sludge-covered Object##32724
.collect Murkblood Escape Plans##32726 |n
.' Click the Murkblood Escape Plans in your bags |use Murkblood Escape Plans##32726
..accept 11081
step
goto 65.3,90.2 |n
.' Leave the mine |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c
step
goto 65.4,90.2
.talk 23149
..turnin 11081
..accept 11082
step
'Go inside the mine and follow the path to 73.0,82.2
.talk 23309
..' Tell him you are here for him
.' Gather Murkblood Information |q 11082/1
.get Hand of the Overseer |q 11082/2
step
goto 65.3,90.2 |n
.' Leave the mine |goto Shadowmoon Valley,65.3,90.2,0.5 |noway |c
step
goto 65.4,90.2
.talk 23149
..turnin 11082
step
get 10 Knothide Leather |q 11054/1 |tip You can get the 10 Knothide Leather from the Auction House, or by Skinning mobs for the leather.
.'If you want to get the 10 Knothide Leather by skinning, kill the mobs around 60.4,45.2
step
goto Netherstorm,46.4,10.8
.from Tyrantus##20931
.get Hardened Hide of Tyrantus |q 11054/2
step
goto Shadowmoon Valley,66.8,86.1
.talk 23291
..turnin 11054
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Outland (60 - 70)\\Netherdrake Mount Guide\\Netherwing Reputation (Friendly)", [[
author support@zygorguides.com
description This guide section will walk you through getting Honored reputation with the Netherwing faction.
description You must have completed the Netherwing Reputation (Friendly) - Pre-Quests guide section
description in order to be able to complete the quests in this guide section.
startlevel 80
daily
step
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020 |daily
..accept 11035 |daily
step
goto 66.1,86.4
.talk 23140
..accept 11015 |daily
..accept 11016 |daily |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. |or
..accept 11018 |daily |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350. |or
..accept 11017 |daily |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350. |or
step
goto 66.8,86.1
.talk 23291
..accept 11055 |daily
step
goto 72.1,75.2
.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
.get 10 Netherwing Relic |q 11035/1
step
goto 60.4,45.2
.from Greater Felfire Diemetradon##21462+, Felboar##21878+
.collect 12 Fel Gland##32502 |q 11020
step
goto 73.6,80.0
.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
.' Poison 12 Dragonmaw Peon Camps |q 11020/1
.' Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
.' Discipline 20 Dragonmaw Peons |q 11055/1
step
goto 62.6,86.2
.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
.get 40 Netherdust Pollen |q 11017/1
step
goto 70.0,91.4
. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
.get 40 Nethercite Ore |q 11018/1
step
goto 65.4,90.2
.talk 23149
..accept 11076
step
'Go inside the mine to 65.1,87.5
.talk 23376
..accept 11077
step
goto 66.9,84.0
.' Click Nethermine Cargo |tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
.get 15 Nethermine Cargo |q 11076/1
step
goto 71.5,83.9
.kill 15 Nethermine Flayer |q 11077/1
.kill 5 Nethermine Ravager |q 11077/2
.get 30 Netherwing Crystal |q 11015/1
.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350
.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
step
goto 65.1,87.5
.talk 23376
..turnin 11077
step
goto 65.4,90.2
.talk 23149
..turnin 11076
step
goto 66.0,86.5
.talk 23141
..turnin 11020
..turnin 11035
step
goto 66.1,86.4
.talk 23140
..turnin 11015
..turnin 11016 |tip This quest is only available if you have your Skinning skill to at least 350.
..turnin 11018 |tip This quest is only available if you have your Mining skill to at least 350.
..turnin 11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
step
goto 66.8,86.1
.talk 23291
..turnin 11055
step
'Repeat this process daily until you are Honored with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Outland (60 - 70)\\Netherdrake Mount Guide\\Netherwing Reputation (Honored) - Pre-Quests", [[
author support@zygorguides.com
description This guide section will walk you through a chain of pre-quests, that become available
description once you have earned Honored reputation with the Netherwing faction.
description This chain of pre-quests will open up more Netherwing faction daily quests.
startlevel 80
step
goto Shadowmoon Valley,66.1,86.4
.talk 23140
..accept 11084
step
goto 66.2,85.7
.talk 23139
..turnin 11084
step
goto 65.9,87.2
.talk 22433
..accept 11063 |instant
step
goto 65.2,85.7
.talk 23340
..accept 11064
.' Follow Murg "Oldie" Muckjaw as he flies |tip He will throw pumpkins at you as he flies, and you have to dodge them.  The easiest strategy is to fly sort of far behind him, and above him, so that you are looking down on him as you fly.  Don't let any of the pumpkins hit you and you will win the race.
.' Defeat Murg "Oldie" Muckjaw |q 11064/1
step
goto 65.9,87.2
.talk 22433
..turnin 11064
step
goto 65.2,85.5
.talk 23342
..accept 11067
.' Follow Trope the Filth-Belcher as he flies |tip He will throw green bombs at you as he flies, and you have to dodge them.  The easiest strategy is to fly far behind him, and under him.  Strafe to the sides when he throws the bombs and you can dodge them easily.  Don't let any of the bombs hit you and you will win the race.
.' Defeat Trope the Filth-Belcher |q 11067/1
step
goto 65.9,87.2
.talk 22433
..turnin 11067
step
goto 65.2,85.2
.talk 23344
..accept 11068
.' Follow Corlok the Vet as he flies |tip He will throw groups of skulls at you as he flies, and you have to dodge them.  The easiest strategy is to fly close behind him, but above him, while looking down at him.  Strafe to the sides when he throws the skulls and you can dodge them easily.  Don't let any of the skulls hit you and you will win the race.
.' Defeat Corlok the Vet |q 11068/1
step
goto 65.9,87.2
.talk 22433
..turnin 11068
step
goto 65.2,85.0
.talk 13437
..accept 11069
.' Follow Wing Commander Ichman as he flies |tip He will throw fireballs at you as he flies, and you have to dodge them.  The easiest strategy is to fly behind him, but far above him, while looking down at him.  Strafe to the sides when he throws the fireballs and you can dodge them easily.  Don't let any of the fireballs hit you and you will win the race.  Also, be careful because he does sharp turns and maneuvers, so it's easy to lose track of him if you aren't careful.
.' Defeat Wing Commander Ichman |q 11069/1
step
goto 65.9,87.2
.talk 22433
..turnin 11069
step
goto 65.2,84.9
.talk 13181
..accept 11070
.' Follow Wing Commander Mulverick as he flies |tip He will throw lightning bolts at you as he flies, and you have to dodge them.  The lightning bolts will follow you, unlike the previous race quests, where the objects they throw did not follow you.  The easiest strategy is to fly beside him, while strafing, and almost ahead of him, if you can.  Don't let any of the lightning bolts hit you and you will win the race.
.' Defeat Wing Commander Mulverick |q 11070/1
step
goto 65.9,87.2
.talk 22433
..turnin 11070
step
goto 65.5,85.3
.talk 23348
..accept 11071
.' Follow Captain Skyshatter as he flies |tip Meteors fall all around you as you fly with Captain Skyshatter, and you have to dodge them.  The easiest strategy is to fly beside him, while strafing, and almost ahead of him, if you can.  Stay close to him and the meteors will hit him, as well as you, which will stop him for a second, allowing you to catch up to him, if needed.  You will not get knocked off your mount by the meteors, just stunned for a second, so there's nothing to worry about.
.' Defeat Captain Skyshatter |q 11071/1
step
goto 65.9,87.2
.talk 22433
..turnin 11071
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Outland (60 - 70)\\Netherdrake Mount Guide\\Netherwing Reputation (Honored)", [[
author support@zygorguides.com
description This guide section will walk you through getting Revered reputation with the Netherwing faction.
description You must have completed the Netherwing Reputation (Honored) - Pre-Quests guide section
description in order to be able to complete the quests in this guide section.
startlevel 80
daily
step
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020 |daily
..accept 11035 |daily
step
goto 66.1,86.4
.talk 23140
..accept 11015 |daily
..accept 11016 |daily |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. |or
..accept 11018 |daily |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350. |or
..accept 11017 |daily |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350. |or
step
goto 66.8,86.1
.talk 23291
..accept 11055 |daily
step
goto 66.2,85.7
.talk 23139
..accept 11086 |daily
step
goto 72.1,75.2
.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
.get 10 Netherwing Relic |q 11035/1
step
goto 60.4,45.2
.from Greater Felfire Diemetradon##21462+, Felboar##21878+
.collect 12 Fel Gland##32502 |q 11020
step
goto 73.6,80.0
.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
.' Poison 12 Dragonmaw Peon Camps |q 11020/1
.' Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
.' Discipline 20 Dragonmaw Peons |q 11055/1
step
goto 62.6,86.2
.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
.get 40 Netherdust Pollen |q 11017/1
step
goto 70.0,91.4
. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
.get 40 Nethercite Ore |q 11018/1
step
goto 65.4,90.2
.talk 23149
..accept 11076
step
'Go inside the mine to 65.1,87.5
.talk 23376
..accept 11077
step
goto 66.9,84.0
.' Click Nethermine Cargo |tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
.get 15 Nethermine Cargo |q 11076/1
step
goto 71.5,83.9
.kill 15 Nethermine Flayer |q 11077/1
.kill 5 Nethermine Ravager |q 11077/2
.get 30 Netherwing Crystal |q 11015/1
.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350
.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
step
goto 65.1,87.5
.talk 23376
..turnin 11077
step
goto 65.4,90.2
.talk 23149
..turnin 11076
step
goto Nagrand,12.7,38.9
.from Deathshadow Overlord##22393+, Deathshadow Warlock##22363+, Deathshadow Spellbinder##22342+, Deathshadow Archon##22343+, Deathshadow Acolyte##22341+
.kill 20 Deathshadow Agent |q 11086/1
step
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..turnin 11020
..turnin 11035
step
goto 66.1,86.4
.talk 23140
..turnin 11015
..turnin 11016 |tip This quest is only available if you have your Skinning skill to at least 350.
..turnin 11018 |tip This quest is only available if you have your Mining skill to at least 350.
..turnin 11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
step
goto 66.8,86.1
.talk 23291
..turnin 11055
step
goto 66.2,85.7
.talk 23139
..turnin 11086
step
'Repeat this process daily until you are Revered with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Outland (60 - 70)\\Netherdrake Mount Guide\\Netherwing Reputation (Revered) - Pre-Quests", [[
author support@zygorguides.com
description This guide section will walk you through a chain of pre-quests, that become available
description once you have earned Revered reputation with the Netherwing faction.
description This chain of pre-quests will open up more Netherwing faction daily quests.
startlevel 80
step
goto Shadowmoon Valley,66.1,86.4
.talk 23140
..accept 11092
step
goto 66.2,85.7
.talk 23139
..turnin 11092
..accept 11094 |only if rep ('The Scryers') >= Friendly
..accept 11099 |only if rep ('The Aldor') >= Friendly
step
goto 74.5,86.3
.from Arvoar the Rapacious##23267+ |tip He looks like a big Flayer mob that walks in a circle in this spot.
.collect Partially Digested Hand##32621 |n
.' Click the Partially Digested Hand in your bags |use Partially Digested Hand##32621
..accept 11041
step
goto 70.2,84.3
.kill Barash the Den Mother |q 11041/2 |tip She looks like a big yellow Flayer mob that walks in a circle in this spot.
step
goto 71.3,85.8
.kill 10 Overmine Flayer |q 11041/1
step
goto 66.2,85.7
.talk 23139
..turnin 11041
step
goto 56.3,59.6
.talk 21955
..turnin 11094
..accept 11095
only if rep ('The Scryers') >= Friendly
step
goto 56.5,58.7
.talk 23434
..turnin 11095
only if rep ('The Scryers') >= Friendly
step
goto 62.6,28.4
.talk 21402
..turnin 11099
..accept 11100
only if rep ('The Aldor') >= Friendly
step
goto 62.4,29.3
.talk 23452
..turnin 11100
only if rep ('The Aldor') >= Friendly
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Outland (60 - 70)\\Netherdrake Mount Guide\\Netherwing Reputation (Revered)", [[
author support@zygorguides.com
description This guide section will walk you through getting Exalted reputation with the Netherwing faction.
description You must have completed the Netherwing Reputation (Revered) - Pre-Quests guide section
description in order to be able to complete the quests in this guide section.
startlevel 80
daily
step
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..accept 11020 |daily
..accept 11035 |daily
step
goto 66.1,86.4
.talk 23140
..accept 11015 |daily
..accept 11016 |daily |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350. |or
..accept 11018 |daily |only if skill ("Mining") >= 350 |tip This quest is only available if you have your Mining skill to at least 350. |or
..accept 11017 |daily |only if skill ("Herbalism") >= 350 |tip This quest is only available if you have your Herbalism skill to at least 350. |or
step
goto 66.8,86.1
.talk 23291
..accept 11055 |daily
step
goto 66.2,85.7
.talk 23139
..accept 11086 |daily
step
goto 72.1,75.2
.from Dragonmaw Transporter##23188+ |tip They fly low to the ground near this floating rock and the floating rock just to the east, so you can easily pull them while standing on these floating rocks.
.get 10 Netherwing Relic |q 11035/1
step
goto 56.5,58.7
.talk 23434
..accept 11097
.' Follow Commander Hobb and help him fight the Dragonmaw Skybreakers
.' Protect Commander Hobb, he must survive
.' Defeat the Dragonmaw Forces |q 11097/1
only if rep ('The Scryers') >= Friendly
step
goto 60.4,45.2
.from Greater Felfire Diemetradon##21462+, Felboar##21878+
.collect 12 Fel Gland##32502 |q 11020
step
goto 62.4,29.3
.talk 23452
..accept 11101
.' Follow Commander Arcus and help him fight the Dragonmaw Skybreakers
.' Protect Commander Arcus, he must survive
.' Defeat the Dragonmaw Forces |q 11101/1
only if rep ('The Aldor') >= Friendly
step
goto 73.6,80.0
.' Use Yarzill's Mutton next to groups of Dragonmaw Peons |use Yarzill's Mutton##32503
.' Poison 12 Dragonmaw Peon Camps |q 11020/1
.' Use your Booterang on Disobedient Dragonmaw Peons |use Booterang##32680
.' Discipline 20 Dragonmaw Peons |q 11055/1
step
goto 62.6,86.2
.' Click Netherdust Bushes |tip They look like small green bushes that sparkle and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be and Herbalist with an Herbalism skill of at least 350 to be able to complete this step.
.get 40 Netherdust Pollen |q 11017/1
step
goto 70.0,91.4
. Click Nethercite Deposits |tip They look like dark blue ore deposits with light blue crystals on them and can be found all around Netherwing Ledge, and on the small floating rock islands on the outskirts of Netherwing Ledge.  You must be a Miner with a Mining skill of at least 350 to be able to complete this step.
.get 40 Nethercite Ore |q 11018/1
step
goto 65.4,90.2
.talk 23149
..accept 11076
step
'Go inside the mine to 65.1,87.5
.talk 23376
..accept 11077
step
goto 66.9,84.0
.' Click Nethermine Cargo |tip They look like carts full of ore and crystals all around inside the Netherwing Mines.
.get 15 Nethermine Cargo |q 11076/1
step
goto 71.5,83.9
.kill 15 Nethermine Flayer |q 11077/1
.kill 5 Nethermine Ravager |q 11077/2
.get 30 Netherwing Crystal |q 11015/1
.' Skin Nethermine Flayers |only if skill ("Skinning") >= 350
.get 35 Nethermine Flayer Hide |q 11016/1 |only if skill ("Skinning") >= 350 |tip This quest is only available if you have your Skinning skill to at least 350.
step
goto 65.1,87.5
.talk 23376
..turnin 11077
step
goto 65.4,90.2
.talk 23149
..turnin 11076
step
goto Nagrand,12.7,38.9
.from Deathshadow Overlord##22393+, Deathshadow Warlock##22363+, Deathshadow Spellbinder##22342+, Deathshadow Archon##22343+, Deathshadow Acolyte##22341+
.kill 20 Deathshadow Agent |q 11086/1
step
goto Shadowmoon Valley,66.0,86.5
.talk 23141
..turnin 11020
..turnin 11035
step
goto 66.1,86.4
.talk 23140
..turnin 11015
..turnin 11016 |tip This quest is only available if you have your Skinning skill to at least 350.
..turnin 11018 |tip This quest is only available if you have your Mining skill to at least 350.
..turnin 11017 |tip This quest is only available if you have your Herbalism skill to at least 350.
step
goto 66.8,86.1
.talk 23291
..turnin 11055
step
goto 66.2,85.7
.talk 23139
..turnin 11086
..turnin 11097 |only if rep ('The Scryers') >= Friendly
..turnin 11101 |only if rep ('The Aldor') >= Friendly
step
'Repeat this process daily until you are Exalted with the Netherwing faction.  Also, you can use the Netherwing Egg Optimized Path guide section to find Netherwing Eggs and turn them in for 250 Netherwing reputation per Netherwing Egg.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Outland (60 - 70)\\Netherdrake Mount Guide\\Netherwing Reputation (Exalted) - Getting Your Netherdrake!", [[
author support@zygorguides.com
description This guide section will walk you through the final steps of getting your Netherdrake Mount,
description once you've earned Exalted reputation with the Netherwing faction.
description You must have completed the Netherwing Reputation (Revered) guide section
description in order to be able to complete the quests in this guide section.
startlevel 80
step
goto Shadowmoon Valley,66.1,86.4
.talk 23140
..accept 11107
step
goto 66.2,85.7
.talk 23139
..turnin 11107
..accept 11108
.' Watch the cut scene
.' You will be taken to Shattrath City |goto Shattrath City,65.8,18.6,0.5 |noway |c
step
goto Shattrath City,66.6,16.4
.talk 23433
..turnin 11108
step
goto 66.8,17.6
.' Look at the netherdrakes sitting around this area.  Pick whichever one you like the best and complete the quest it offers you:
..accept 11113 |instant |or
..accept 11114 |instant |or
..accept 11112 |instant |or
..accept 11111 |instant |or
..accept 11110 |instant |or
..accept 11109 |instant |or
step
'Congratulations, you are now the proud owner of a Netherdrake Mount!  Enjoy!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Outland (60 - 70)\\Netherdrake Mount Guide\\Netherwing Egg Hunting - Optimized Path", [[
author support@zygorguides.com
description This guide section will walk you through an optimized path of collecting Netherwing Eggs,
description which you can turn in for 250 Netherwing rep each.
description You must have completed the Netherwing Reputation (Neutral) - Pre-Quests guide section
description in order to be able to collect and turn in the Netherwing Eggs you find using this guide section.
startlevel 80
step
goto Shadowmoon Valley,69.4,63.6 |n
.' There can be an egg here |goto Shadowmoon Valley,69.4,63.6,0.3 |noway |c |tip At the top of the stairs inside this tower.
step
goto 70.1,62.0 |n
.' There can be an egg here |goto Shadowmoon Valley,70.1,62.0,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
goto 71.4,60.7 |n
.' There can be an egg here |goto Shadowmoon Valley,71.4,60.7,0.3 |noway |c |tip Sitting on the middle of this small round table inside this big room on the bottom level of the Dragonmaw Fortress.
step
goto 70.9,62.6 |n
.' There can be an egg here |goto Shadowmoon Valley,70.9,62.6,0.3 |noway |c |tip Sitting on the floor next to this small fire brazier inside this big room on the bottom level of the Dragonmaw Fortress.
step
goto 71.3,62.6 |n
.' There can be an egg here |goto Shadowmoon Valley,71.3,62.6,0.3 |noway |c |tip Sitting on the floor next to the wall inside this big room on the top level of the Dragonmaw Fortress.
step
goto 71.4,60.8 |n
.' There can be an egg here |goto Shadowmoon Valley,71.4,60.8,0.3 |noway |c |tip Sitting on the floor inside this tiny room on the top level of the Dragonmaw Fortress.
step
goto 70.0,60.3 |n
.' There can be an egg here |goto Shadowmoon Valley,70.0,60.3,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
goto 69.7,58.5 |n
.' There can be an egg here |goto Shadowmoon Valley,69.7,58.5,0.3 |noway |c |tip Sitting on the ground in this pen area amongst the baby netherdrakes.
step
goto 68.1,59.7 |n
.' There can be an egg here |goto Shadowmoon Valley,68.1,59.7,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
goto 68.3,59.8 |n
.' There can be an egg here |goto Shadowmoon Valley,68.3,59.8,0.3 |noway |c |tip Sitting on the ground in this corner.
step
goto 68.5,61.2 |n
.' There can be an egg here |goto Shadowmoon Valley,68.5,61.2,0.3 |noway |c |tip Sitting on the ground in this stall inside the stable.
step
goto 67.2,61.3 |n
.' There can be an egg here |goto Shadowmoon Valley,67.2,61.3,0.3 |noway |c |tip Sitting in this wooden wagon.
step
goto 67.2,62.3 |n
.' There can be an egg here |goto Shadowmoon Valley,67.2,62.3,0.3 |noway |c |tip In this tiny hallway of the lookout point on the top level of the Dragonmaw Fortress.
step
goto 68.9,62.5 |n
.' There can be an egg here |goto Shadowmoon Valley,68.9,62.5,0.3 |noway |c |tip Sitting on the ground inside this half burned down hut.
step
goto 76.0,81.2 |n
.' There can be an egg here |goto Shadowmoon Valley,76.0,81.2,0.3 |noway |c |tip Sitting on the corner edge of this wooden landing dock.
step
goto 75.2,82.3 |n
.' There can be an egg here |goto Shadowmoon Valley,75.2,82.3,0.3 |noway |c |tip Sitting on the ground next to this big bunch of blue crystals.
step
goto 73.7,82.3 |n
.' There can be an egg here |goto Shadowmoon Valley,73.7,82.3,0.3 |noway |c |tip Sitting on top of this small mountain peak.
step
goto 73.0,84.0 |n
.' There can be an egg here |goto Shadowmoon Valley,73.0,84.0,0.3 |noway |c |tip Sitting on the edge of this small cliff, between 2 bunchs of big blue crystals.
step
goto 71.0,81.5 |n
.' There can be an egg here |goto Shadowmoon Valley,71.0,81.5,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 68.2,81.7 |n
.' There can be an egg here |goto Shadowmoon Valley,68.2,81.7,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 66.2,83.8 |n
.' There can be an egg here |goto Shadowmoon Valley,66.2,83.8,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 65.7,84.2 |n
.' There can be an egg here |goto Shadowmoon Valley,65.7,84.2,0.3 |noway |c |tip Sitting at the very tip of this huge crystal.
step
goto 63.3,81.5 |n
.' There can be an egg here |goto Shadowmoon Valley,63.3,81.5,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 65.4,76.5 |n
.' There can be an egg here |goto Shadowmoon Valley,65.4,76.5,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 63.2,75.6 |n
.' There can be an egg here |goto Shadowmoon Valley,63.2,75.6,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 62.2,74.2 |n
.' There can be an egg here |goto Shadowmoon Valley,62.2,74.2,0.3 |noway |c |tip Sitting on this small floating rock.  You have to fly down to it.
step
goto 61.7,73.3 |n
.' There can be an egg here |goto Shadowmoon Valley,61.7,73.3,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly down to it.
step
goto 63.0,71.6 |n
.' There can be an egg here |goto Shadowmoon Valley,63.0,71.6,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
step
goto 61.3,70.7 |n
.' There can be an egg here |goto Shadowmoon Valley,61.3,70.7,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 60.6,73.4 |n
.' There can be an egg here |goto Shadowmoon Valley,60.6,73.4,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 59.3,74.1 |n
.' There can be an egg here |goto Shadowmoon Valley,59.3,74.1,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 60.0,76.7 |n
.' There can be an egg here |goto Shadowmoon Valley,60.0,76.7,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 59.6,78.3 |n
.' There can be an egg here |goto Shadowmoon Valley,59.6,78.3,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 61.2,77.3 |n
.' There can be an egg here |goto Shadowmoon Valley,61.2,77.3,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
step
goto 62.2,77.8 |n
.' There can be an egg here |goto Shadowmoon Valley,62.2,77.8,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 63.3,81.5 |n
.' There can be an egg here |goto Shadowmoon Valley,63.3,81.5,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 63.0,83.7 |n
.' There can be an egg here |goto Shadowmoon Valley,63.0,83.7,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 63.5,84.8 |n
.' There can be an egg here |goto Shadowmoon Valley,63.5,84.8,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 65.5,84.9 |n
.' There can be an egg here |goto Shadowmoon Valley,65.5,84.9,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.
step
goto 66.0,86.5
.talk 23141
.' Turn in all of the Netherwing Eggs you have collected
|confirm always
step
goto 64.0,86.1 |n
.' There can be an egg here |goto Shadowmoon Valley,64.0,86.1,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.  This one is pretty well hidden, so pay close attention to this one or you might pass it up.
step
goto 62.5,84.9 |n
.' There can be an egg here |goto Shadowmoon Valley,62.5,84.9,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.
step
goto 60.2,87.1 |n
.' There can be an egg here |goto Shadowmoon Valley,60.2,87.1,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 62.1,89.5 |n
.' There can be an egg here |goto Shadowmoon Valley,62.1,89.5,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
step
goto 64.9,90.8 |n
.' There can be an egg here |goto Shadowmoon Valley,64.9,90.8,0.3 |noway |c |tip Sitting on the ground near this bunch of big blue crystals.
step
'Go inside the mine to 64.8,87.2 |n
.' There can be an egg here |goto Shadowmoon Valley,64.8,87.2,0.3 |noway |c |tip Netherwing Eggs can spawn in various places in this entry hallway in the mines, so look around before moving on.
step
goto 68.3,84.0 |n
.' Jump down off the mine cart track here |goto Shadowmoon Valley,68.3,84.0,0.3 |noway |c
step
goto 68.8,86.1 |n
.' There can be an egg here |goto Shadowmoon Valley,68.8,86.1,0.3 |noway |c |tip Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.
step
goto 72.3,87.3 |n
.' There can be an egg here |goto Shadowmoon Valley,72.3,87.3,0.3 |noway |c |tip Netherwing Eggs can spawn in various places all around this room with the big blue ghost dragon, so make sure to check thoroughly.
step
goto 69.9,85.8 |n
.' There can be an egg here |goto Shadowmoon Valley,69.9,85.8,0.3 |noway |c |tip Go back to the mine cart track and follow the track on the right side.
step
goto 73.6,85.2 |n
.' There can be an egg here |goto Shadowmoon Valley,73.6,85.2,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 73.0,89.3 |n
.' There can be an egg here |goto Shadowmoon Valley,73.0,89.3,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 73.6,85.2 |n
.' There can be an egg here |goto Shadowmoon Valley,73.6,85.2,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 68.5,81.6 |n
.' There can be an egg here |goto Shadowmoon Valley,68.5,81.6,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 64.8,83.0 |n
.' There can be an egg here |goto Shadowmoon Valley,64.8,83.0,0.3 |noway |c |tip Follow the path in the cave to this spot.  Netherwing Eggs can spawn in various places all around this room, so make sure to check thoroughly in each small side space.  Also, be sure to keep an eye out for eggs all around as you run through the mine to this spot.
step
goto 65.2,84.2 |n
.' Jump over the wooden rail in this spot to get down to the hallway below |goto Shadowmoon Valley,65.2,84.2,0.3 |noway |c
step
goto 65.3,90.2 |n
.' Leave the cave |goto Shadowmoon Valley,65.3,90.2,0.3 |noway |c |tip Make sure to keep an eye out for Netherwing Eggs as you run through the entrance hallway to leave the cave.
step
goto 65.5,94.2 |n
.' There can be an egg here |goto Shadowmoon Valley,65.5,94.2,0.3 |noway |c |tip Sitting on this big floating rock.  You have to fly up to it.
step
goto 68.0,94.9 |n
.' There can be an egg here |goto Shadowmoon Valley,68.0,94.9,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 69.6,91.8 |n
.' There can be an egg here |goto Shadowmoon Valley,69.6,91.8,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals.
step
goto 70.9,89.2 |n
.' There can be an egg here |goto Shadowmoon Valley,70.9,89.2,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 71.4,86.6 |n
.' There can be an egg here |goto Shadowmoon Valley,71.4,86.6,0.3 |noway |c |tip Sitting on the ground next to this bunch of big blue crystals, up on the top of this mountain.
step
goto 72.2,87.1 |n
.' There can be an egg here |goto Shadowmoon Valley,72.2,87.1,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 73.4,90.3 |n
.' There can be an egg here |goto Shadowmoon Valley,73.4,90.3,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 75.8,91.6 |n
.' There can be an egg here |goto Shadowmoon Valley,75.8,91.6,0.3 |noway |c |tip Sitting on this small floating rock.
step
goto 77.6,92.6 |n
.' There can be an egg here |goto Shadowmoon Valley,77.6,92.6,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 77.4,95.7 |n
.' There can be an egg here |goto Shadowmoon Valley,77.4,95.7,0.3 |noway |c |tip Sitting on this big floating rock.
step
goto 77.3,85.9 |n
.' There can be an egg here |goto Shadowmoon Valley,77.3,85.9,0.3 |noway |c |tip Sitting on top of this tall mountain peak.
step
goto 76.5,83.3 |n
.' There can be an egg here |goto Shadowmoon Valley,76.5,83.3,0.3 |noway |c |tip Sitting on the ground inside this netherdrake skeleton's mouth.
step
goto 78.9,83.3 |n
.' There can be an egg here |goto Shadowmoon Valley,78.9,83.3,0.3 |noway |c |tip Sitting right next to this bunch of big blue crystals on the side of this cliff.  You have to fly down to it.
step
goto 78.1,81.2 |n
.' There can be an egg here |goto Shadowmoon Valley,78.1,81.2,0.3 |noway |c |tip Sitting on top of this tall mountain peak.  You have to fly up to it.
step
goto 78.8,79.6 |n
.' There can be an egg here |goto Shadowmoon Valley,78.8,79.6,0.3 |noway |c |tip Sitting at the very tip of this huge crystal.
step
autoscript ZGV:FocusStep(1)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Lunar Festival (January 22nd - February 12th)\\Lunar Festival Main Questline",[[
author support@zygorguides.com
description This guide section will walk you through completing the main questline for the Lunar Festival event.
condition suggested isevent('Lunar Festival')
step
#include "Lunar Festival Main Quest"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Lunar Festival (January 22nd - February 12th)\\Lunar Festival Optimized Elders Path",[[
author support@zygorguides.com
description This guide section will walk you through an optimized path for honoring the elders
description that are spread out all over Azeroth for the Lunar Festival event.
description The 13 elders that are inside instances are not included in this guide section.
description Using this guide section, you will collect 62 of the total 75 Coins of Ancestry.
condition suggested isevent('Lunar Festival')
step
#include "Lunar Festival Elder Path"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Lunar Festival (January 22nd - February 12th)\\Lunar Festival Achievements",[[
description
condition suggested isevent('Lunar Festival')
step
#include "Lunar Festival Achievement"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Love is in the Air (February 6th - 20th)\\Love is in the Air Main Questline",[[
author support@zygorguides.com
description This guide section will walk you through completing the main questline for the Love is in the Air event.
condition suggested isevent('Love is in the Air')
step
#include "Love is in the Air Main Quest"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Love is in the Air (February 6th - 20th)\\Love is in the Air Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the Love is in the Air even daily quests.
condition suggested isevent('Love is in the Air')
daily
step
#include "Love is in the Air Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Love is in the Air (February 6th - 20th)\\Love is in the Air Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the Love is in the Air event achievements.
condition suggested isevent('Love is in the Air')
step
#include "Love is in the Air Achievement"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Noblegarden (April 8th - April 15th)\\Noblegarden Quests and Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests and dailies for the Noblegarden event.
condition suggested isevent('Noblegarden')
step
#include "Noblegarden Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Noblegarden (April 8th - April 15th)\\Noblegarden Achievements",[[
author support@zygorguides.com
description This guide section will walk you through getting all 12 achievements for the Noblegarden event.
condition suggested isevent('Noblegarden')
#include "Noblegarden Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Children's Week (April 29th - May 6th)\\Children's Week Stormwind Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Stormwind questline for the Children's Week event.
condition suggested isevent("Children's Week")
startlevel 60
step
#include "Children's Week Stormwind"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Children's Week (April 29th - May 6th)\\Children's Week Shattrath Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Shattrath questline for the Children's Week event.
condition suggested isevent("Children's Week")
startlevel 60
step
#include "Children's Week Shattrath"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Children's Week (April 29th - May 6th)\\Children's Week Dalaran Oracles Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Dalaran Oracles questline for the Children's Week event.
condition suggested isevent("Children's Week")
startlevel 70
step
#include "Children's Week Dalaran Oracles Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Children's Week (April 29th - May 6th)\\Children's Week Dalaran Wolvar Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Dalaran Wolvar questline for the Children's Week event.
condition suggested isevent("Children's Week")
startlevel 70
step
#include "Children's Week Dalaran Wolvar Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Children's Week (April 29th - May 6th)\\Children's Week Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the Achievements for the Children's Week event.
condition suggested isevent("Children's Week")
startlevel 10
step
#include "Children's Week Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Midsummer Fire Festival (June 21st - July 4th)\\Midsummer Fire Festival Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Midsummer Fire Festival event.
condition suggested isevent('Midsummer Fire Festival')
startlevel 80
step
#include "Midsummer Fire Festival Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Midsummer Fire Festival (June 21st - July 4th)\\Midsummer Fire Festival Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Midsummer Fire Festival event.
condition suggested isevent('Midsummer Fire Festival')
startlevel 80
step
#include "Midsummer Fire Festival Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Harvest Festival (September 6th - September 12th)\\Harvest Festival Quest",[[
author support@zygorguides.com
description This guide section will walk you through completing the quest for the Harvest Festival event.
condition suggested isevent('Harvest Festival')
step
#include "Harvest Festival Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Brewfest (September 20th - October 6th)\\Brewfest Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Brewfest event.
condition suggested isevent('Brewfest')
step
#include "Brewfest Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Brewfest (September 20th - October 6th)\\Brewfest Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests for the Brewfest event.
condition suggested isevent('Brewfest')
daily
step
#include "Brewfest Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Brewfest (September 20th - October 6th)\\Brewfest Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Brewfest event.
condition suggested isevent('Brewfest')
step
#include "Brewfest Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Hallow's End (October 18th - October 31st)\\Hallow's End Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Hallow's End event.
condition suggested isevent("Hallow's End")
#include "Hallows_End_Quests_Alliance"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Hallow's End (October 18th - October 31st)\\Hallow's End Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests for the Hallow's End event.
condition suggested isevent("Hallow's End")
daily
#include "Hallows_End_Dailies_Alliance"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Hallow's End (October 18th - October 31st)\\Hallow's End Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Hallow's End event.
condition suggested isevent("Hallow's End")
#include "Hallows_End_Achievements_Alliance"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Pilgrim's Bounty (November 18th - November 24th)\\Pilgrim's Bounty Quests and Cooking 1-300 Guide",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Pilgrim's Bounty event, as well as getting your Cooking skill from 1-300.
condition suggested isevent("Pilgrim's Bounty")
#include "Pilgrims_Bounty_Quests_Alliance"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Pilgrim's Bounty (November 20th - November 26th)\\Pilgrim's Bounty Daily Quests",[[
author support@zygorguides.com
description This quide will help run through the Pilgrims Bounty Dailies and Achievements to earn the Title Pilgrim.
condition suggested isevent("Pilgrim's Bounty")
#include "Pilgrims_Bounty_Dailies_Alliance"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Feast of Winter Veil (December 15th - January 2nd)\\Feast of Winter Veil Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Feast of Winter Veil event.
condition suggested isevent('Feast of Winter Veil')
step
#include "Feast of Winter Veil Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Feast of Winter Veil (December 15th - January 2nd)\\Feast of Winter Veil Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Feast of Winter Veil event.
condition suggested isevent('Feast of Winter Veil')
step
#include "Feast of Winter Veil Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Outland (60 - 70)\\Shattered Sun Offensive\\Pre-Quest with Dailies", [[
author support@zygorguides.com
description This guide section will walk you through the Shattered Sun Offensive Daily Quests.
daily
step
|fly Shattrath
step
goto Shattrath City,49.1,42.5
.talk 24932
..accept 11514 |daily
step
goto 62.8,36.0
.talk 25140
..accept 11877 |daily
step
goto 62.8,35.6
.talk 19202
..accept 11875 |daily
only if skill("Skinning")>300 or skill("Mining")>300 or skill("Herbalism")>300
step
goto Shattrath City,61.7,52.1
.talk 19475
..accept 11880 |daily
step
|fly Telaar
step
goto Nagrand,58.8,75.1
.from Clefthoof Bull##17132+,Talbuk Thorngrazer##17131+,Wild Elekk##18334+
.' Skin their corpses in order to collect the Nether Residue.
.get 8 Nether Residue##35229 |q 11875/1
only if skill("Skinning")>=300
step
goto 40.8,31.6
.' Mine inside the cave and collect Nether Residue.
.collect 8 Nether Residue##35229 |q 11875/1
.' You can check [Nagrand,50.0,56.6] for more Mining Nodes.
only if skill("Mining")>=300
step
goto Nagrand,38.3,65.3
.' Fly around the Spirit Fields looking for Fiery Red Orbs on the ground.
.' Use your Multiphase Spectrographic Goggles on the Orbs. |use Multiphase Spectrographic Goggles##35233
..goal 6 Multiphase Readings Taken |q 11880/1
step
|fly Evergrove
step
goto Blade's Edge Mountains,54.0,18.1
.from Unbound Ethereal##22244+,Bash'ir Raider##22241+,Bash'ir Arcanist##22243+,Bash'ir Spell-Thief##22242+
.get 1 Bash'ir Phasing Device |q 11514
'Use the Bash'ir Phasing Device. |use Bash'ir Phasing Device##34248
.' Collect 10 Smuggled Mana Cell |q 11514/1
step
|fly Area 52
step
goto Netherstorm,25.9,66.8
.from Sunfury Bloodwarder##18853+,Sunfury Captain##19453+,Sunfury Magister##18855+,Sunfury Geologist##19779+,Sunfury Astromancer##19643
.get Sunfury Attack Plans |q 11877/1
step
|fly Shattrath
step
goto Shattrath City,62.8,36.0
.talk 25140
.turnin 11877 |daily
step
goto 62.8,35.6
.talk 19202
.turnin 11875 |daily
step
goto 61.6,52.2
.talk 19475
.turnin 11880 |daily
step
goto 49.1,42.5
.talk 24932 |daily
.turnin 11514 |daily
step
goto Shattrath City,48.6,42.0 |n
.' Click the Shattrath Portal to Isle of Quel'Danas. |goto Isle of Quel'Danas
step
goto Isle of Quel'Danas,47.5,35.4
.talk 25133
..accept 11547 |daily
step
goto 47.5,35.1
.talk 25057
..accept 11533 |daily
step
goto 47.6,35.1
.talk 25061
..accept 11537 |daily
step
goto 48.8,37.2
.talk 25112
..accept 11548 |daily
.' This quest requires that you give 10 Gold in trade of reputation with the Shattered Sun Offensive, you should be able to turn it in immidiately.
..turnin 11548 |daily
step
goto 50.6,39.0
.talk 25108
..accept 11543 |daily
step
goto 49.3,40.4
.talk 25069
..accept 11540 |daily
step
goto 50.6,40.8
.talk 25046
..accept 11536 |daily
..accept 11544 |daily
step
goto 51.5,32.5
.talk 24975
..accept 11521 |daily
..accept 11546 |daily
step
goto 53.8,34.3
.talk 25088
..accept 11541 |daily
step
goto 47.5,30.5
.talk 24967
..accept 11523 |daily
..accept 11526
step
goto 47.1,30.7
.talk 24965
..accept 11525 |daily
step
goto Isle of Quel'Danas,44.3,28.5
.from Wretched Fiend##24966+
.collect 4 Mana Remnants##34338 |q 11523 |c
.kill Erratic Sentry##24972+ |n
.' Use Attuned Crystal Cores on the Erratic Sentries corpse. |use Attuned Crystal Cores##34368
..goal 5 Converted Sentry Deployed |q 11525/1
..collect 5 Bloodberry |q 11546/1 |tip They can be found all around this area on the ground.
step
goto Isle of Quel'Danas,42.1,35.7
.kill 6 Dawnblade Summoner |q 11540/1
.kill 6 Dawnblade Blood Knight |q 11540/2
.kill 3 Dawnblade Marksman |q 11540/3
.' Use your Astromancer's Crystal to sample the Bloodcrystal's density. |use Astromancer's Crystal##34533
.' Bloodcrystal Reading Taken |q 11547/3
step
goto Isle of Quel'Danas,46.5,35.5
.' Use the Mana Remnants to Energize the Crystal Ward. |use Mana Remnants##34338
.' Energize a Crystal Ward |q 11523/1
step
goto 48.5,25.2
.talk 25059
.' Tell him you Need to Intercept the Dawnblade Reinforcements.
.' Use your Flaming Oil to set fire to the ships in the water. |use Flaming Oil##34489
.' Sin'loren sails burned |q 11543/1
.' Bloodoath sails burned |q 11543/2
.' Dawnchaser sails burned |q 11543/3
step
.kill Dawnblade Reservist##25087+ |q 11543/4
.' You can find more at [Isle of Quel'Danas,51.1,9.7]
.' Another spot for them is at [Isle of Quel'Danas,55.2,11.8]
step
goto Isle of Quel'Danas,52.4,17.4
.talk 25236
.' Ride the dragonhawk to Sun's Reach. |goto Isle of Quel'Danas,48.4,25.3 |noway|c
step
goto Isle of Quel'Danas,48.5,25.2
.talk 25059
.' Tell him you've been ordered to undertake an airstrike.
.' Use your Arcane Charges on mobs once you get to the Dead Scar. |use Arcane Charges##34475
.kill 2 Pit Overlord##25031+ |q 11533/1
.kill 3 Eredar Sorcerer##25033+ |q 11533/2
.kill 12 Wrath Enforcer##25030+ |q 11533/3
step
goto Isle of Quel'Danas,48.5,43.7
.kill Emissary of Hate##25003 |n
.' Use your Shattered Sun Banner on his corpse. |use Shattered Sun Banner##34414
.' Impale the Emissary of Hate |q 11537/1
.kill 6 Burning Legion Demon |q 11537/2
.' Use your Astromancer's Crystal to sample the Portal's density. |use Astromancer's Crystal##34533
.' Portal Reading Taken |q 11547/1
step
.' Take this path back to they shoreside. |goto Isle of Quel'Danas,57.3,38.6 |c
step
goto Isle of Quel'Danas,64.1,49.9
.from Darkspine Myrmidon##25060+
..collect Darkspine Chest Key##34477 |n
.from Darkspine Siren##25073+
..collect Orb of Murloc Control##34483 |n
.' Use your Orbs of Murloc Control on Greengill Slaves along the shore. |use Orb of Murloc Control##34483
.' Free 10 Greengill Slaves |q 11541/1
.' Use your Darkspine Chest Keys on the Darkspine Ore Chest.
.get 3 Darkspine Iron Ore |q 11536/1
step
goto Isle of Quel'Danas,61.1,62.0
.' Use your Astromancer's Crystal to sample the Shrine's density. |use Astromancer's Crystal##34533
.' Shrine Reading Taken |q 11547/2
step
goto Isle of Quel'Danas,53.8,34.3
.talk 25088
..turnin 11541 |daily
step
goto 50.6,40.7
.talk 25046
..turnin 11536 |daily
step
goto 50.6,39.0
.talk 25108
..turnin 11543 |daily
step
goto 49.3,40.4
.talk 25069
..turnin 11540 |daily
step
goto 51.5,32.5
.talk 24975
..turnin 11546 |daily
step
goto 47.5,35.3
.talk 25133
.turnin 11547 |daily
step
goto 47.5,35.1
.talk 25057
.turnin 11533 |daily
step
goto 47.6,35.1
.talk 25061
.turnin 11537 |daily
step
goto 47.5,30.5
.talk 24967
.turnin 11523 |daily
step
goto 47.1,30.7
.talk 24965
.turnin 11525 |daily
step
goto Isle of Quel'Danas,48.5,44.7
|use Captured Legion Scroll##34420
.' Teleport to Hellfire Peninsula |goto Hellfire Peninsula,58.6,18.7,0.5 |noway|c
step
goto Hellfire Peninsula,58.2,17.6
.talk 24937
.turnin 11526
..accept 11515 |daily
..accept 11516 |daily
step
goto Hellfire Peninsula,66.4,20.1
.from Wrath Herald##24919+
.collect 4 Demonic Blood##34259
.' use the Sizzling Embers to summon a Living Flare. |use Sizzling Embers##34253
.kill Incandescent Fel Spark##22323+ |n
.' Once you see a message that says "Living Flare becomes unstable with brimming energy!" take it to [Hellfire Peninsula,58.6,18.7].
.' Legion Gateway Destroyed |q 11516/1
step
goto 59.9,21.0
.' Use your Fel Siphon on Felblood Initiates. |use Fel Siphon##34257
.kill 4 Emaciated Felblood##24918 |q 11515/1
step
goto Hellfire Peninsula,58.2,17.6
.talk 24937
.turnin 11516 |daily
.turnin 11515 |daily
step
goto Terokkar Forest,59.7,10.3
.from Razorthorn Flayer##24920+
..collect Razorthorn Flayer Gland##34255 |q 11521
.' Use your Razorthorn Flayer Gland on Razorthorn Ravagers. |use Razorthorn Flayer Gland##34255
.' Use your pets Expose Razorthorn Root ability on mounds of dirt around the area. |cast Expose Razorthorn Root##44935
.collect 5 Razorthorn Root##34254 |q 11521/1
step
|fly Altar of Sha'tar
only if rep ("The Aldor")>=Neutral
step
|fly Sanctum of the Stars
only if rep ("The Scryers")>=Neutral
step
goto Shadowmoon Valley,68.5,37.5
.from Shadowmoon Chosen##22084+,Shadowmoon Slayer##22082+,Shadowmoon Darkweaver##22081+
.collect 5 Ata'mal Armament##34500 |q 11544
step
|fly Shattrath
step
goto Shattrath City,48.6,42.0 |n
.' Click the Shattrath Portal to Isle of Qual'Danas. |goto Isle of Quel'Danas |noway|c
step
goto Isle of Quel'Danas,51.5,32.5
.talk 24975
.turnin 11521 |daily
step
goto 50.6,40.7
.' Click the Ata'mal Armaments and cleanse them at Hauthaa's Anvil. |use Ata'mal Armament##34500
.' Cleanse 5 Ata'mal Metals |q 11544/1
step
goto 50.6,40.7
.talk 25046
..turnin 11544 |daily
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Outland (60 - 70)\\Shattered Sun Offensive\\Dailies", [[
author support@zygorguides.com
description This guide section will walk you through the Shattered Sun Offensive Daily Quests.
daily
step
|fly Shattrath
step
goto Shattrath City,56.3,81.5
.talk 19232
.home
only if rep ("The Scryers")>=Neutral
step
goto Shattrath City,28.2,49.4
.talk 19046
.home
only if rep ("The Aldor")>=Neutral
step
goto Shattrath City,49.1,42.5
.talk 24932
..accept 11514 |daily
step
goto 62.8,36.0
.talk 25140
..accept 11877 |daily
step
goto 62.8,35.6
.talk 19202
..accept 11875 |daily
only if skill("Skinning")>300 or skill("Mining")>300 or skill("Herbalism")>300
step
goto Shattrath City,61.7,52.1
.talk 19475
..accept 11880 |daily
step
goto Shattrath City,48.6,42.0 |n
.' Click the Shattrath Portal to Isle of Quel'Danas. |goto Isle of Quel'Danas
step
goto Isle of Quel'Danas,47.5,35.4
.talk 25133
..accept 11547 |daily
step
goto 47.5,35.1
.talk 25057
..accept 11533 |daily
step
goto 47.6,35.1
.talk 25061
..accept 11537 |daily
step
goto 48.8,37.2
.talk 25112
..accept 11548 |daily
.' This quest requires that you give 10 Gold in trade of reputation with the Shattered Sun Offensive, you should be able to turn it in immidiately.
..turnin 11548 |daily
step
goto 50.6,39.0
.talk 25108
..accept 11543 |daily
step
goto 49.3,40.4
.talk 25069
..accept 11540 |daily
step
goto 50.6,40.8
.talk 25046
..accept 11536 |daily
..accept 11544 |daily
step
goto 51.5,32.5
.talk 24975
..accept 11521 |daily
..accept 11546 |daily
step
goto 53.8,34.3
.talk 25088
..accept 11541 |daily
step
goto 47.5,30.5
.talk 24967
..accept 11523 |daily
..accept 11526
step
goto 47.1,30.7
.talk 24965
..accept 11525 |daily
step
goto Isle of Quel'Danas,44.3,28.5
.from Wretched Fiend##24966+
.collect 4 Mana Remnants##34338 |q 11523 |c
.kill Erratic Sentry##24972+ |n
.' Use Attuned Crystal Cores on the Erratic Sentries corpse. |use Attuned Crystal Cores##34368
..goal 5 Converted Sentry Deployed |q 11525/1
..collect 5 Bloodberry |q 11546/1 |tip They can be found all around this area on the ground.
step
goto Isle of Quel'Danas,42.1,35.7
.kill 6 Dawnblade Summoner |q 11540/1
.kill 6 Dawnblade Blood Knight |q 11540/2
.kill 3 Dawnblade Marksman |q 11540/3
.' Use your Astromancer's Crystal to sample the Bloodcrystal's density. |use Astromancer's Crystal##34533
.' Bloodcrystal Reading Taken |q 11547/3
step
goto Isle of Quel'Danas,46.5,35.5
.' Use the Mana Remnants to Energize the Crystal Ward. |use Mana Remnants##34338
.' Energize a Crystal Ward |q 11523/1
step
goto 48.5,25.2
.talk 25059
.' Tell him you Need to Intercept the Dawnblade Reinforcements.
.' Use your Flaming Oil to set fire to the ships in the water. |use Flaming Oil##34489
.' Sin'loren sails burned |q 11543/1
.' Bloodoath sails burned |q 11543/2
.' Dawnchaser sails burned |q 11543/3
step
.kill Dawnblade Reservist##25087+ |q 11543/4
.' You can find more at [Isle of Quel'Danas,51.1,9.7]
.' Another spot for them is at [Isle of Quel'Danas,55.2,11.8]
step
goto Isle of Quel'Danas,52.4,17.4
.talk 25236
.' Ride the dragonhawk to Sun's Reach. |goto Isle of Quel'Danas,48.4,25.3 |noway|c
step
goto Isle of Quel'Danas,48.5,25.2
.talk 25059
.' Tell him you've been ordered to undertake an airstrike.
.' Use your Arcane Charges on mobs once you get to the Dead Scar. |use Arcane Charges##34475
.kill 2 Pit Overlord##25031+ |q 11533/1
.kill 3 Eredar Sorcerer##25033+ |q 11533/2
.kill 12 Wrath Enforcer##25030+ |q 11533/3
step
goto Isle of Quel'Danas,48.5,43.7
.kill Emissary of Hate##25003 |n
.' Use your Shattered Sun Banner on his corpse. |use Shattered Sun Banner##34414
.' Impale the Emissary of Hate |q 11537/1
.kill 6 Burning Legion Demon |q 11537/2
.' Use your Astromancer's Crystal to sample the Portal's density. |use Astromancer's Crystal##34533
.' Portal Reading Taken |q 11547/1
step
.' Take this path back to they shoreside. |goto Isle of Quel'Danas,57.3,38.6 |c
step
goto Isle of Quel'Danas,64.1,49.9
.from Darkspine Myrmidon##25060+
..collect Darkspine Chest Key##34477 |n
.from Darkspine Siren##25073+
..collect Orb of Murloc Control##34483 |n
.' Use your Orbs of Murloc Control on Greengill Slaves along the shore. |use Orb of Murloc Control##34483
.' Free 10 Greengill Slaves |q 11541/1
.' Use your Darkspine Chest Keys on the Darkspine Ore Chest.
.get 3 Darkspine Iron Ore |q 11536/1
step
goto Isle of Quel'Danas,61.1,62.0
.' Use your Astromancer's Crystal to sample the Shrine's density. |use Astromancer's Crystal##34533
.' Shrine Reading Taken |q 11547/2
step
'Hearth to the Scryer's Tier Inn |goto Shattrath City,56.3,81.5,0.5 |use Hearthstone##6948 |noway|c
only if rep("The Scryers")>=Neutral
step
'Hearth to the Aldor Rise Inn |goto Shattrath City,28.2,49.4,0.5 |use Hearthstone##6948 |noway|c
only if rep ("The Aldor")>=Neutral
step
|fly Altar of Sha'tar
only if rep ("The Aldor")>=Neutral
step
|fly Sanctum of the Stars
only if rep ("The Scryers")>=Neutral
step
goto Shadowmoon Valley,68.5,37.5
.from Shadowmoon Chosen##22084+,Shadowmoon Slayer##22082+,Shadowmoon Darkweaver##22081+
.collect 5 Ata'mal Armament##34500 |q 11544
step
|fly Allerian Stronghold
step
goto Terokkar Forest,59.7,10.3
.from Razorthorn Flayer##24920+
..collect Razorthorn Flayer Gland##34255 |q 11521
.' Use your Razorthorn Flayer Gland on Razorthorn Ravagers. |use Razorthorn Flayer Gland##34255
.' Use your pets Expose Razorthorn Root ability on mounds of dirt around the area. |cast Expose Razorthorn Root##44935
.collect 5 Razorthorn Root##34254 |q 11521/1
step
|fly Telaar
step
goto Nagrand,58.8,75.1
.from Clefthoof Bull##17132+,Talbuk Thorngrazer##17131+,Wild Elekk##18334+
.' Skin their corpses in order to collect the Nether Residue.
.get 8 Nether Residue##35229 |q 11875/1
only if skill("Skinning")>=300
step
goto 40.8,31.6
.' Mine inside the cave and collect Nether Residue.
.collect 8 Nether Residue##35229 |q 11875/1
.' You can check [Nagrand,50.0,56.6] for more Mining Nodes.
only if skill("Mining")>=300
step
goto Nagrand,38.3,65.3
.' Fly around the Spirit Fields looking for Fiery Red Orbs on the ground.
.' Use your Multiphase Spectrographic Goggles on the Orbs. |use Multiphase Spectrographic Goggles##35233
..goal 6 Multiphase Readings Taken |q 11880/1
step
|fly Evergrove
step
goto Blade's Edge Mountains,54.0,18.1
.from Unbound Ethereal##22244+,Bash'ir Raider##22241+,Bash'ir Arcanist##22243+,Bash'ir Spell-Thief##22242+
.get 1 Bash'ir Phasing Device |q 11514
'Use the Bash'ir Phasing Device. |use Bash'ir Phasing Device##34248
.' Collect 10 Smuggled Mana Cell |q 11514/1
step
|fly Area 52
step
goto Netherstorm,25.9,66.8
.from Sunfury Bloodwarder##18853+,Sunfury Captain##19453+,Sunfury Magister##18855+,Sunfury Geologist##19779+,Sunfury Astromancer##19643
.get Sunfury Attack Plans |q 11877/1
step
|fly Honor Hold
.' You can fly through the Twisting Nether to [Hellfire Peninsula,58.2,17.6], but you risk a possible death in doing so.
.' If you choose to fly on your own, click here to proceed. |confirm
step
goto Hellfire Peninsula,58.2,17.6
.talk 24937
..accept 11515 |daily
..accept 11516 |daily
step
goto Hellfire Peninsula,66.4,20.1
.from Wrath Herald##24919+
.collect 4 Demonic Blood##34259
.' use the Sizzling Embers to summon a Living Flare. |use Sizzling Embers##34253
.kill Incandescent Fel Spark##22323+ |n
.' Once you see a message that says "Living Flare becomes unstable with brimming energy!" take it to [Hellfire Peninsula,58.6,18.7].
.' Legion Gateway Destroyed |q 11516/1
step
goto 59.9,21.0
.' Use your Fel Siphon on Felblood Initiates. |use Fel Siphon##34257
.kill 4 Emaciated Felblood##24918 |q 11515/1
step
goto Hellfire Peninsula,58.2,17.6
.talk 24937
.turnin 11516 |daily
.turnin 11515 |daily
step
|fly Shattrath
step
goto Shattrath City,62.8,36.0
.talk 25140
.turnin 11877 |daily
step
goto 62.8,35.6
.talk 19202
.turnin 11875 |daily
step
goto 61.6,52.2
.talk 19475
.turnin 11880 |daily
step
goto 49.1,42.5
.talk 24932 |daily
.turnin 11514 |daily
step
goto Shattrath City,48.6,42.0 |n
.' Click the Shattrath Portal to Isle of Qual'Danas. |goto Isle of Quel'Danas |noway|c
step
goto Isle of Quel'Danas,53.8,34.3
.talk 25088
..turnin 11541 |daily
step
goto 50.6,40.7
.' Click the Ata'mal Armaments and cleanse them at Hauthaa's Anvil. |use Ata'mal Armament##34500
.' Cleanse 5 Ata'mal Metals |q 11544/1
step
goto 50.6,40.7
.talk 25046
..turnin 11536 |daily
..turnin 11544 |daily
step
goto 50.6,39.0
.talk 25108
..turnin 11543 |daily
step
goto 49.3,40.4
.talk 25069
..turnin 11540 |daily
step
goto 51.5,32.5
.talk 24975
..turnin 11546 |daily
.turnin 11521 |daily
step
goto 47.5,35.3
.talk 25133
.turnin 11547 |daily
step
goto 47.5,35.1
.talk 25057
.turnin 11533 |daily
step
goto 47.6,35.1
.talk 25061
.turnin 11537 |daily
step
goto 47.5,30.5
.talk 24967
.turnin 11523 |daily
step
goto 47.1,30.7
.talk 24965
.turnin 11525 |daily
step
goto Isle of Quel'Danas,47.3,30.7
.talk 25032
..accept 11554 |instant
only if rep ("Shattered Sun Offensive")==Friendly
step
goto Isle of Quel'Danas,47.3,30.7
.talk 25032
..accept 11555 |instant
only if rep ("Shattered Sun Offensive")==Honored
step
goto Isle of Quel'Danas,47.3,30.7
.talk 25032
..accept 11556 |instant
only if rep ("Shattered Sun Offensive")==Revered
step
goto Isle of Quel'Danas,47.3,30.7
.talk 25032
..accept 11557 |instant
only if rep ("Shattered Sun Offensive")==Exalted
step
goto Isle of Quel'Danas,51.2,33.1
.talk 25163
..accept 11549 |instant |tip This quest will cost you 1,000 Gold, but give you the title "Of the Shattered Sun".
only if rep ("Shattered Sun Offensive")==Exalted
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Darkmoon Faire\\Darkmoon Faire Quests", [[
description This guide will help you navigate through the Darkmoon Faire Event
condition suggested isevent('Darkmoon Faire')
#include "A_Darkmoon_Faire_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Events Guides\\Darkmoon Faire\\Darkmoon Faire Dailies", [[
description This guide will help you navigate through the Darkmoon Faire Event
condition suggested isevent('Darkmoon Faire')
#include "A_Darkmoon_Faire_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Deepholm\\Deepholm Pre-Quests",[[
description Contains the pre-quests to unlock
description the daily quests in Deepholm.
description
description You must be at least level 82 to
description complete this guide section.
author support@zygorguides.com
step
goto Stormwind City,62.9,71.6
.' Click the Hero's Call Board |tip It's a big white stone hanging board with a gold lion head on it.
..accept 27727
step
goto 74.5,19.0
.talk 45226
..turnin 27727
..accept 27203
step
goto 74.5,18.4
.' Click the Portal to the Maelstrom |tip It looks like a swirling green portal.
.' Teleport to The Maelstrom |goto The Maelstrom |noway |c
step
goto The Maelstrom,33.4,50.2
.talk 45042
..turnin 27203
..accept 27123
step
goto 32.5,52.0
.' Click the Wyvern |tip It looks like a wind rider flying in place.
.' You will fly into Deepholm |goto Deepholm,49.9,54.7,0.5 |noway |c
step
goto Deepholm,49.6,53.0
.talk 43065
..turnin 27123
..accept 26245
step
goto 49.7,52.9
.talk 43397
..accept 27136
..accept 26244
step
goto 49.5,53.3
.talk 42573
..accept 26409
step
goto 49.2,51.9
.talk 45300
.home Temple of Earth
step
goto 46.5,57.3
.talk 42574
..turnin 26409
..accept 26410
..accept 27135
step
goto 45.5,57.9
.from Rockslice Flayer##42606+
.get 5 Quartzite Resin |q 26410/1
.' You can find more Rockslice Flayers around [42.5,55.6]
step
goto 46.5,57.3
.talk 42574
..turnin 26410
step
goto 51.1,61.6
.' Use your Depleted Totem |use Depleted Totem##60835
.from Lodestone Elemental##43258+, Energized Geode##43254+ |tip Kill them next to your Depleted Totems.
.' Energize the Totem 8 Times |q 27136/1
step
goto 52.0,58.9
.' Use Goldmine's Fire Totem in the red lava spot |use Goldmines's Fire Totem##60834
.from Magmatooth##45099
.get The Burning Heart |q 27135/1
step
goto 49.7,52.9
.talk 43397
..turnin 27136
step
goto 46.5,57.3
.talk 42574
..turnin 27135
..accept 26411
step
goto 46.6,57.2
.' Use your Explosive Bonding Compound on Flint Oremantle |use Explosive Bonding Compound##58502 |tip He's laying on the ground next to Initiate Goldmine.
.' Apply the Explosive Bonding Compound |q 26411/1
step
goto 46.5,57.3
.talk 42574
..turnin 26411
..accept 26413
step
goto 49.5,53.3
.' Introduce Flint Oremantle to Earthcaller Yevaa |q 26413/1
step
goto 49.5,53.3
.talk 42573
..turnin 26413
..accept 26484
step
goto 56.1,74.2
.' Click the Slain Cannoneer |tip It looks like a dead orc on the deck of the crashed zeppelin, laying next to a pile of cannon balls and a cannon.
.' Receive the Second Clue |q 26245/2
step
goto 53.5,73.8
.' Click Captain Skullshatter |tip He's a dead orc laying on the ground next to a small round table in a side room on the deck of the crashed zeppelin.
.' Receive the First Clue |q 26245/1
step
goto 53.6,73.8
.' Click the Captain's Log |tip It's a gray book laying on the small round table next to Captain Skullshatter.
..accept 26246
step
goto 56.7,76.4
.' Click the Unexploded Artillery Shell |tip It looks like a metal casing, or bullet type of object laying on the ground underneath the crashed zeppelin.  You can get to it by flying in the 3 open side doors on the north side of the crashed zeppelin.
.' Receive the Third Clue |q 26245/3
step
goto 55.9,74.9
.kill 5 Deepstone Elemental |q 26244/1
step
goto 49.6,52.9
.talk 43065
..turnin 26245
..turnin 26246
step
goto 49.7,52.9
.talk 43397
..turnin 26244
step
goto 49.6,53.0
.talk 43065
..accept 26247
step
goto 62.4,52.6
.talk 42684
..turnin 26247
..accept 26248
..accept 26249
step
'All around on this air ship:
.' Use your Spirit Totem on Slain Crew Members |use Spirit Totem##58167 |tip They look like dead Alliance soldiers all over this airship.
.' Receive 6 Slain Crew Member Information |q 26248/1
step
'Enter the doorway on the main deck of the air ship:
.talk 43082
..turnin 26249
..accept 26427
step
'Leave through the doorway and immediately turn right:
.' Click the Bottle of Whiskey |tip It's a yellow bottle sitting on the edge of a small life boat on the side of the airship.
.get Bottle of Whiskey |q 26427/1
step
'All around on the deck of the air ship:
.' Click a Spool of Rope |tip They are coiled up ropes laying all around on the deck of the airship.
.get Spool of Rope |q 26427/2
step
'Enter the doorway on the main deck of the air ship:
.talk 43082
..turnin 26427
step
'Go to the very top of the air ship:
.talk 42684
..turnin 26248
..accept 26251
..accept 26250
step
'Go onto the main deck of the ship and go down the stairs to the deck below:
.' Fight Mor'norokk the Hateful until he surrenders |tip He's downstairs in the airship, in the very back of the first level you come to.
.talk 42801
.' Subdue Mor'norokk the Hateful |q 26250/1
step
'All around on this lower deck of the air ship:
.kill 6 Twilight Saboteur |q 26251/1
step
'Go to the very top of the air ship:
.talk 42684
..turnin 26251
..turnin 26250
..accept 26254
step
Next to Stormcaller Mylra:
.' Click Stormbeak |tip It's a gryphon flying in place next to the air ship.
.' Interrogate Mok'norrok |q 26254/1
step
'When you land on the air ship again:
.talk 42684
..turnin 26254
..accept 26255
step
'Hearth to Temple of Earth |goto 49.2,51.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 49.6,53.0
.talk 43065
..turnin 26255
..accept 26258
step
goto 49.7,52.9
.talk 43397
..accept 26259
step
goto 59.4,58.2
.' Go to this spot
.' Reach Deathwing's Fall |q 26258/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26258
..accept 26256
step
goto 61.5,60.6
.from Twilight Bloodshaper##43218+
.get Twilight Orders |q 26256/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26256
..accept 26261
step
goto 62.8,59.5
.' Click the Slavemaster's Coffer |tip It looks like a small wooden chest on the ground inside a red tent.
.collect Twilight Slaver's Key##60739 |q 26261
step
goto 61.2,60.1
.from Living Blood##43123+
.get 5 Blood of Neltharion |q 26259/1
step
goto 64.5,65.5
.' Click Ball and Chains |tip They are attached to the feet of the Enslaved Miners around this area.
.' Free 6 Enslaved Miners |q 26261/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26261
..accept 26260
step
goto 63.7,55.4
.' Click the Forgemaster's Log |tip It's a blue-ish book laying on the floor at the very top of this tower.
..turnin 26260
..accept 27007
step
goto 70.6,61.2
.' Go to this spot
.' Reach Upper Silvermarsh |q 27007/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27007
..accept 27010
step
goto 71.8,64.3
.' Click the Trogg Crate |tip It's a brown box sitting next to the water.
.collect Trogg Crate##60809 |q 27010
.from Murkstone Trogg##44936
.collect Maziel's Research##60816 |n
.' Click Maziel's Research in your bags |use Maziel's Research##60816
..accept 27100
step
goto 74.9,64.8
.' Use your Trogg Crate in the water and swim to this spot |use Trogg Crate##60809
.' Watch the dialogue
.' Uncover the World Pillar Fragment Clue |q 27010/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27010
..accept 27061
step
goto 72.5,65.2
.from Mercurial Ooze##43158+
.get 4 Twilight Research Notes |q 27100/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27100
..accept 27101
step
goto 67.2,70.2
.' Click Maziel's Journal |tip It looks like a small black book laying on the ground on this tiny island in a pond, next to a big rock.
..turnin 27101
..accept 27102
step
goto 69.5,68.0 |n
.' Enter the cave |goto 69.5,68.0,0.5 |noway |c
step
goto 72.8,62.0
.kill Maziel |q 27102/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27102
step
goto 69.5,68.0 |n
.' Leave the cave |goto 69.5,68.0,0.5 |noway |c
step
goto 64.5,82.1
.talk 44010
..turnin 27061
..accept 26766
..accept 26768
step
goto 68.2,77.9
.from Scalesworn Cultist##44221+
.get Twilight Snare |q 26768/1
step
goto 64.5,82.1
.talk 44010
..turnin 26768
step
goto 59.9,83.6
.from Jadecrest Basilisk##43981+
.' Use Mylra's Knife on Jadefire Basilisk corpses |use Mylra's Knife##60382
.get 5 Side of Basilisk Meat |q 26766/1
step
goto 64.5,82.1
.talk 44010
..turnin 26766
..accept 26771
step
goto 50.9,85.3
.' Use your Trapped Basilisk Meat |use Trapped Basilisk Meat##60773
.kill Stonescale Matriarch |q 26771/1
step
goto 64.5,82.1
.talk 44010
..turnin 26771
..accept 26857
step
goto 64.6,82.2
.talk 44222
..accept 26861
step
goto 68.7,75.0
.' Use your Stormstone next to the swirling blue portal |use Stormstone##60501
.' Disrupt the Twilight Gate |q 26861/1
step
goto 71.2,75.1
.' Use your Stormstone next to the structure with the floating yellow crystal |use Stormstone##60501
.' Disrupt the Elemental Gate |q 26861/2
step
goto 69.9,76.7
.from Scalesworn Cultist##44221+, Twilight Scalesister##43967+, Twilight Dragonspawn##43966+
.' Defeat 8 Abyssion's Underlings |q 26857/1
step
goto 64.6,82.2
.talk 44222
..turnin 26861
step
goto 64.5,82.2
.talk 44010
..turnin 26857
..accept 26876
step
goto 69.9,76.9
.' Use your Earthen Ring Banner |use Earthen Ring Banner##60810
.from Abyssion##
.' Click The First Fragment of the World Pillar |tip It's a floating green rock that appears after you kill Abyssion.
.get The Upper World Pillar Fragment |q 26876/1
step
'Hearth to Temple of Earth |goto 49.2,51.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 49.6,53.0
.talk 43065
..turnin 26876
step
goto 49.7,52.9
.talk 43397
..turnin 26259
step
goto 27.9,68.7
.talk 43071
..turnin 26484
..accept 27931
step
goto 30.6,77.7
.talk 47195
..turnin 27931
..accept 27932
..accept 27933
step
goto 32.2,79.1
.' Use The Axe of Earthly Sundering on Emerald Colossi |use The Ace of Earthly Sundering##60490 |tip They look like glowing giants that walk around this area.
.kill 5 Sundered Emerald Colossus |q 27932/1
.from Jade Rager##44220+
.get 6 Elemental Ore |q 27933/1
step
goto 30.6,77.7
.talk 47195
..turnin 27932
..turnin 27933
..accept 27934
step
goto 30.6,77.7
.talk 47195
..' Tell him you are ready for the ritual
.' Complete the One With the Ground Ritual |q 27934/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27934
..accept 27935
step
goto 46.9,89.1
.kill Avalanchion |q 27935/1
step
goto 43.4,82.0 |n
.' Leave the cave |goto 43.4,82.0,0.5 |noway |c
step
goto 27.9,68.7
.talk 43071
..turnin 27935
..accept 26499
step
goto 28.2,69.6
.talk 43160
..accept 26500
step
goto 29.7,68.8
kill 12 Stone Trogg Ambusher |q 26500/1
.' Use Stonefather's Banner next to Stone Hearth Defenders |use Stonefather's Banner##58884 |tip They look like dwarves.  Stonefather's Banner won't work on the Stone Hearth Defenders if they already have the Stonefather's Boon buff.
.' Grant the Stonefather's Boon 12 times |q 26499/1
step
goto 28.2,69.6
.talk 43160
..turnin 26500
..accept 26502
step
goto 27.9,68.7
.talk 43071
..turnin 26499
..accept 26501
step
goto 27.3,67.8
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
.' Seal the Shrine |q 26501/4
step
goto 26.0,68.8
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
.' Seal the Barracks |q 26501/3
step
goto 26.2,69.8
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
.' Seal the Inn |q 26501/2
step
goto 27.3,70.1
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |tip They must be out of combat for it to work, so kill any troggs attacking the Earthen Geomancer.
.' Seal the Armory |q 26501/1
.' Click Thunder Stones |tip They looks like blue round spiked cannonballs on the ground and in wagons around this area.
.get 12 Thunder Stone |q 26502/1
step
goto 24.5,62.4
.talk 43168
..turnin 26501
..accept 26537
step
goto 24.8,62.2
.talk 43169
..turnin 26502
..accept 26564
step
goto 24.6,62.2
.talk 43319
..accept 26591
step
goto 23.9,60.3
.' Use Deepvein's Patch Kit on Injured Earthens |use Deepvein's Patch Kit##58965 |tip They look like dwarves laying on the ground around this area.
.' Patch up 10 Injured Earthen |q 26591/1
.' Click Catapult Parts |tip They look kind of like big metal parts laying on the ground around this area.
.get 6 Catapult Part |q 26564/1
.from Stone Trogg Berserker##43228+, Stone Trogg Geomancer##43234+, Needlerock Rider##43250+
.kill 12 Fractured Battlefront stone troggs |q 26537/1
.' You can also look around 23.1,53.9 for more
step
goto 24.5,62.4
.talk 43168
..turnin 26537
step
goto 24.6,62.2
.talk 43319
..turnin 26591
step
goto 24.8,62.2
.talk 43169
..turnin 26564
step
goto 24.5,62.4
.talk 43168
..accept 26625
step
goto 22.6,56.9
.from Troggzor the Earthinator##43456
.get The Earthinator's Cudgel |q 26625/1
step
goto 24.5,62.4
.talk 43168
..turnin 26625
step
goto 24.8,62.2
.talk 43169
..accept 27126
step
goto 20.7,61.6
.talk 45043
..turnin 27126
..accept 26632
step
goto 20.7,61.6
.talk 45043
..' Tell him you're ready to escort the catapult
.' Safely Escort the Earthen Catapult |q 26632/1
step
goto 22.7,52.0
.talk 43897
..turnin 26632
..accept 26755
step
goto 22.4,52.0
.' Click an Earthen Catapult |tip They look like wooden launchers with stone wheels.
.' Use your Fire Catapult ability on your hotbar on the Stone Trogg and Fungal mobs
.' Bombarb 30 Reinforcements |q 26755/1
step
goto 22.7,52.0
.talk 43897
..turnin 26755
..accept 26762
step
goto 22.8,52.1
.talk 43898
..accept 26770
step
goto 22.6,47.6
.' Click Deactivated War Construct |tip They look like metal golems around this area.
.' Reactivate 5 Deactivated War Constructs |q 26762/1
.kill 5 Needlerock Mystic |q 26770/1
step
goto 22.8,52.1
.talk 43898
..turnin 26770
step
goto 22.7,52.0
.talk 43897
..turnin 26762
..accept 26834
step
goto 27.6,44.8
.talk 44143
..turnin 26834
..accept 26791
..accept 26792
step
goto 27.6,44.7
.' Click the War Guardian |tip It looks like a metal golem.
.' Obtain a War Guardian for the Sprout No More quest |q 26791/1
.' Obtain a War Guardian for the Fungal Monstrosities quest |q 26792/1
step
goto 26.8,41.8
.kill 5 Fungal Monstronsity |q 26792/2
.' Click Giant Mushrooms |tip They look like huge mushrooms with orange caps around this area.
.' Destroy 5 Giant Mushrooms |q 26791/2
step
goto 27.6,44.8
.talk 44143
..turnin 26791
..turnin 26792
..accept 26835
step
goto 22.7,52.0
.talk 43897
..turnin 26835
..accept 26836
step
goto 24.5,31.1
.from Bouldergut##44151
.' Rescue Stonefather Oremantle |q 26836/1
step
goto 22.7,52.0
.talk 43897
..turnin 26836
..accept 27937
step
goto 28.0,68.6
.talk 44204
..turnin 27937
..accept 27938
step
goto 28.0,68.7
.' Click The Stonefather's Safe |tip It looks like a metal vault door with gold circles and symbols on it.
.get The Middle Fragment of the World Pillar |q 27938/1
step
'Hearth to Temple of Earth |goto 49.2,51.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 49.5,53.3
.talk 42573
..turnin 27938
step
goto 49.6,53.0
.talk 43065
..accept 26326
step
goto 46.1,45.6
.talk 42730
..turnin 26326
..accept 26312
..accept 26314
step
goto 46.2,45.7
.talk 42731
..accept 26313
step
goto 44.3,43.7
.from Irestone Rumbler##42780+
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Relieve Stormcaller Mylra |q 26312/2
step
goto 44.5,41.3
.from Irestone Rumbler##42780+
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Relieve Tawn Winterbluff |q 26312/1
step
goto 47.6,42.8
.from Irestone Rumbler##42780+
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Relieve Hargoth Dimblaze |q 26312/3
step
goto 46.2,42.2
.from Irestone Rumbler##42780+
.get 6 Irestone Core |q 26313/1
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Bring down 3 Servants of Therazane |q 26314/1
step
goto 46.2,45.7
.talk 42731
..turnin 26313
step
goto 46.1,45.6
.talk 42730
..turnin 26312
..turnin 26314
step
goto 46.2,45.7
.talk 42731
..accept 26315
step
goto 49.2,40.1
.' Use your Earthen Ring Proclamation on Boden the Imposing |use Earthen Ring Proclamation##58177 |tip He's a huge rock giant that walks around this area.
.' Seek Peace with Boden the Imposing |q 26315/1
step
goto 46.2,45.7
.talk 42731
..turnin 26315
..accept 26328
step
goto 56.5,42.7
.talk 42467
..turnin 26328
..accept 26376
..accept 26377
step
goto 56.5,41.0
.talk 42899
..accept 26375
step
goto 60.2,39.4
.kill Dragul Giantbutcher |q 26376/1
step
goto 59.5,41.5
.' Click Jade Crystal Clusters |tip They look like green glowing rocks sitting on the ground all around this area.
.collect 6 Jade Crystal Cluster##58500 |q 26377
.' Use your Delicate Chain Smasher next to Quartz Rocklings |use Delicate Chain Smasher##58254 |tip They look like small rock giants around this area.
.' Release 6 Quartz Rocklings |q 26375/1
step
'Use the Jade Crystal Clusters |use Jade Crystal Cluster##58500
.collect Jade Crystal Composite##58783 |q 26377
step
goto 59.6,41.4
.' Use your Jade Crystal Composite |use Jade Crystal Composite##58783
.' Lure an Agitated Tunneler |q 26377/1
step
goto 59.3,40.6
.from Twilight Laborer##42924+, Twilight Priestess##42823+, Twilight Duskwarden##42917+
.kill 12 Lorthuna's Gate Cultists |q 26376/2
step
goto 56.5,41.0
.talk 42899
..turnin 26375
step
goto 56.5,42.7
.talk 42467
..turnin 26376
..turnin 26377
..accept 26426
step
goto 51.7,31.6
.' Get next to Felsen the Enduring |tip He's a big white rock giant.
.' Find Felsen the Enduring |q 26426/1
step
goto 58.4,25.7
.' Fly to the mouth of this cave
.' Find the entrance to the Crumbling Depths |q 26426/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26426
..accept 26869
step
goto 64.5,21.7 |n
.' Follow the path |goto 64.5,21.7,0.5 |noway |c
step
goto 65.3,18.4 |n
.' Follow the path |goto 65.3,18.4,0.5 |noway |c
step
goto 66.4,20.6
.' Click the Gigantic Painite Cluster |tip It looks like a green crystal cluster near the mouth of the cave.
..turnin 26869
..accept 26871
step
goto 64.3,23.5
.' Follow the path to this spot, then jump down |goto 64.3,23.5,0.5 |noway |c
step
goto 58.3,25.5 |n
.' Leave the cave |goto 58.3,25.5,0.5 |noway |c
step
goto 56.5,42.7
.talk 42467
..turnin 26871
..accept 26436
step
goto 34.3,34.3
.talk 42469
..turnin 26436
..accept 26438
..accept 26437
step
goto 34.1,35.2
.talk 43344
..accept 26439
step
goto 30.5,46.8
.from Jaspertip Borer##42524+, Jaspertip Swarmer##42521+, Jaspertip Ravager##42525+, Jaspertip Crystal-gorger##43171+
.kill 12 Jaspertip flayers |q 26438/1
.' Click Chalky Crystal Formations |tip They look like big white blocks on the ground around this area.
.get 8 Chalky Crystal Formation |q 26437/1
.' Click Dormant Stonebound Elementals |tip They look like crumbled rock elementals on the ground around this area.
.' Reform 6 Stonebound Elementals |q 26439/1
step
goto 34.3,34.3
.talk 42469
..turnin 26438
..turnin 26437
step
goto 34.1,35.2
.talk 43344
..turnin 26439
step
goto 34.4,34.4
.talk 42469
..accept 28869
step
'Next to you:
.talk 43116
..turnin 28869
..accept 26440
step
goto 30.1,47.7
.' Get next to the huge green crystals
.' Bring Pebble to the crystal formation |q 26440/1
step
'Next to you:
.talk 43116
..turnin 26440
..accept 26441
step
goto 34.3,34.3
.talk 42469
..turnin 26441
..accept 26507
..accept 26575
step
goto 47.6,26.8
.kill Gorgonite |q 26575/1
step
goto 47.5,26.8
.' Click Petrified Stone Bats |tip They looks like black stone bats laying on the ground around this area.
.get 12 Petrified Stone Bat |q 26507/1
step
'Next to you:
.talk 43116
..turnin 26507
step
goto 34.3,34.3
.talk 42469
..turnin 26575
..accept 26576
..accept 26577
step
goto 39.9,19.4
.talk 42466
..turnin 26576
..accept 26656
step
goto 39.9,19.4
.talk 42466
..' Tell him you are ready to escort a group of elementals across the open.
.' Speak to Terrath the Steady |q 26656/1
step
goto 51.1,14.7
.' Go to this spot
.' Escort 5 Opalescent Guardians to safety |q 26656/2 |tip Run on the ground with your mount, don't fly or you the rock elementals will disappear when you get too far away from them.
step
goto 39.9,19.4
.talk 42466
..turnin 26656
..accept 26657
..accept 26658
step
goto 35.4,22.5
.from Stone Trogg Beast Tamer##43598 |tip He moves all around this area capturing basilisks, so you may need to look around a bit for him.
.get Stonework Mallet |q 26658/1
step
goto 36.5,18.8
.kill 6 Stone Drake |q 26657/1 |tip They will fall to the ground with half health, so you can kill them, even though they are elite.
step
goto 40.0,19.4
.talk 42466
..turnin 26657
..turnin 26658
..accept 26659
step
goto 32.7,24.3
.' Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266 |tip It's a huge green crystal sitting on the ground.
.' Strike the Pale Resonating Crystal |q 26659/1
.from Aeosera##43641 |tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.  When she is casting her Breath Fire ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
.' Defeat Aeosera |q 26659/2
step
goto 33.1,24.1
.talk 42466
..turnin 26659
.' If Terrath the Steady doesn't spawn at the appropriate spot, go to 40.0,19.4
step
'Hearth to the Temple of Earth |goto 49.2,51.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 72.2,54.0
.talk 42472
..turnin 26577
..accept 26578
..accept 26579
..accept 26580
step
goto 71.8,47.6
.talk 43395
..turnin 26580
..accept 26581
step
goto 73.6,40.8
.kill 8 Fungal Behemoth |q 26579/1
.from Doomshroom##+ |tip They look like orange mushrooms around this area.
.' Destroy 10 Doomshrooms |q 26578/1
.' Gather a sample of the red mist|q 26581/1 |tip There are small clouds of red mist that float around on the ground around this area.  Walk into one of them to gather a sample.
.' You will be able to find more Fungal Behemoths and Doomshrooms around [76.6,44.4]
step
goto 71.8,47.6
.talk 43395
..turnin 26581
..accept 26582
step
goto 72.2,54.0
.talk 42472
..turnin 26578
..turnin 26579
..turnin 26582
..accept 26584
..accept 26585
step
goto 68.5,26.4
.talk 43442
..accept 26583
step
goto 68.6,29.1 |n
.' Enter the cave |goto 68.6,29.1,0.5 |noway |c
step
goto 69.8,31.9
.talk 43503
..' Tell her you're ready when she is |q 26583/1
.kill Fungalmancer Glop |q 26583/2 |tip Follow him each time he runs away.  Avoid the mushrooms as you walk, they will give you a debuff.  While fighting Fungalmancer Glop, kill the Boomshrooms he creates.  Don't let them grow too big, they will explode and deal a lot of damage.
step
goto 70.2,33.8 |n
.' Follow the path up |goto 70.2,33.8,0.5 |noway |c
step
goto 68.6,29.1 |n
.' Leave the cave |goto 68.6,29.1,0.5 |noway |c
step
goto 68.5,26.3
.talk 43442
..turnin 26583
step
goto 69.4,24.8
.kill 8 Verlok Pillartumbler |q 26584/1
.' Click Verlok Miracle-grow |tip They look like gray bags sitting on the ground around this area.
.get 8 Verlok Miracle-grow |q 26585/1
step
goto 72.2,54.0
.talk 42472
..turnin 26584
..turnin 26585
..accept 26750
step
goto 56.3,12.2
.talk 42465
..turnin 26750
..accept 26752
step
'Watch the dialogue
.' Attend the Stonemother's Audience |q 26752/1
step
goto 56.1,13.5
.talk 43809
..turnin 26752
..accept 26827
step
'Hearth to the Temple of Earth |goto 49.2,51.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 47.3,51.4
.talk 44799
..accept 27004
step
goto 47.3,51.4
.talk 44802
..accept 27006
step
goto 39.0,74.2
.' Go to this spot next to the big white portal
.' Investigate the Master's Gate |q 27006/1
step
goto 40.1,72.2
.from Twilight Cryptomancer##44855+, Twilight Crusher##44849+, Twilight Armsman##44847+
.get Masters' Gate Plans |q 27004/1
step
goto 47.3,51.4
.talk 44799
..turnin 27004
step
goto 47.3,51.4
.talk 44802
..turnin 27006
..accept 27042
step
goto 47.3,51.4
.talk 44799
..accept 27040
step
goto 40.8,66.3
.from Bound Water Elemental##44886
.' Acquire the Water Ward |q 27042/2
step
goto 36.0,67.4
.from Bound Fire Elemental##44887
.' Acquire the Fire Ward |q 27042/1
step
goto 40.5,72.4
.from Bound Air Elemental##44885
.' Acquire the Air Ward |q 27042/3
step
goto 40.2,67.5
.' Click One-Time Decryption Engines |tip They look like machines around this area with a circular scroll spinning around them, and yellow cores floating in the middle of the spinning scrolls.
.' Decrypt 6 Plans |q 27040/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27040
..accept 27058
step
goto 39.1,73.9
.' Click the Waygate Controller |tip It looks like a cylinder stone container with a stone ring on top of it, sitting in front of the huge white portal.
.' Destroy the Waygate |q 27058/1
step
goto 39.9,62.2
.kill Haethen Kaul |q 27042/4 |tip He's up on a huge floating rock.
step
goto 47.3,51.4
.talk 44799
..turnin 27058
..accept 28292
step
goto 47.3,51.4
.talk 44802
..turnin 27042
step
goto 48.0,53.7
.' Talk with Windspeaker Lorvarius, Yuldris Smolderfury, Tawn Winterbluff, Earthcaller Yevaa and Tharm Wildfire at the below locations:
.' 48.5,50.1
.' 47.4,50.9
.' 48.1,49.9
..' Tell her you are joining an assault on Lorthuna's Gate and she is needed.
.' Rally 5 Earthen Ring |q 26827/1
step
goto 49.6,53.0
.talk 43065
..turnin 26827
..accept 26828
step
goto 63.3,25.0
.talk 44025
..turnin 26828
..accept 26829
..accept 26832
step
goto 62.6,26.9
.talk 44080
..accept 26831
step
goto 62.4,31.8
.from High Priestess Lorthuna##42914 |tip She is in a small room on the top of this building.  She is elite, but you can still kill her.  She will run away when she is almost dead.
.' Defeat High Priestess Lorthuna |q 26832/2
step
goto 58.9,32.9
.from Boldrich Stonerender##42923
.' Defeat Boldrich Stonerender |q 26832/1
step
goto 63.1,38.1
.from Zoltrik Drakebane##42918 |tip You will eventually get on a stone drake and fly after Zoltrik Drakebane.  You can use your Jump ability to jump onto his drake, if you are a melee class.  Either way, you will land on a rock with him and kill him there.
.' Defeat Zoltrik Drakebane |q 26831/1
step
goto 64.1,36.9
.talk 42614
..turnin 26831
step
goto 60.3,33.2
.from Defaced Earthrager##44076+, Twilight Soulreaper##42916+, Twilight Priestess##42823+
.kill 15 Twilight Precipice Cultists |q 26829/1
step
goto 63.3,25.0
.talk 44025
..turnin 26829
..turnin 26832
..accept 26833
step
goto 49.6,53.0
.talk 43818
..turnin 26833
..accept 26875
step
goto 50.7,49.6
.kill 12 Twilight Invaders |q 26875/1
.kill Desecrated Earthrager |q 26875/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26875
..accept 26971
step
goto 49.6,52.9
.kill High Priestess Lorthuna |q 26971/1
step
goto 49.6,52.9
.talk 43835
..turnin 26971
step
goto 49.8,53.4
.talk 43792
..accept 26709
step
goto 56.4,12.1
.talk 42465
..turnin 26709
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Deepholm\\Therazane's Throne Dailies",[[
description Walks you through completing the
description daily quests in the Therazane's
description Throne region of Deepholm.
author support@zygorguides.com
daily
step
'Increasing your Therazane reputation to Revered will unlock more daily quests. |tip Use the THERAZANE guide in the Cataclysm Reputation section to do this.
.' Skip to the next step in the guide
step
goto Deepholm,56.1,14.4
.talk 43805
..accept 27046 |daily
..accept 27047 |daily
..accept 28488 |daily |tip This quest can be offered at random and may not be offered everyday.
step
goto 56.6,14.1
.talk 43806
..accept 28391 |daily |tip This quest can be offered at random if you have at least Revered reputation with Therazane.  However, the quest may not be offered everyday.
only if rep ('Therazane') >= Revered
step
goto 55.4,14.2
.talk 44945
..accept 26710 |daily |tip This quest can be offered at random and may not be offered everyday.
step
goto 57.3,12.5
.talk 43804
..accept 27049 |daily
..accept 27050 |daily
step
goto 59.6,14.0
.talk 44973
..accept 27051 |daily
..accept 28390 |daily |only if rep ('Therazane') >= Revered |tip This quest can be offered at random if you have at least Revered reputation with Therazane.  However, the quest may not be offered everyday.
step
goto 32.7,24.3
.' Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266 |tip It's a huge green crystal sitting on the ground.
.' Strike the Pale Resonating Crystal |q 28391/1
.from Aeosera##43641 |tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.  When she is casting her Breath Fire ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
.' Defeat Aeosera |q 28391/2
only if rep ('Therazane') >= Revered
step
goto 56.6,14.1
.talk 43806
..turnin 28391
only if rep ('Therazane') >= Revered
step
goto 58.3,25.6 |n
.' Enter the cave |goto 58.3,25.6,0.5 |noway |c
step
goto 61.3,26.2
.talk 44968
..accept 27048 |daily |tip This quest can be offered at random and may not be offered everyday.
step
goto 66.1,28.1
.' Follow the path inside the cave
.' Click the Ruby Gemstone Cluster |tip It looks like 3 dark colored spinning rings with a bunch of red crystals spinning above them.
.from Enormous Gyreworm##48533
.get Ruby Crystal Cluster |q 28488/1
step
goto 63.6,23.0
.' Use Ricket's Tickers next to Deep Alabaster Crystals |use Ricket's Tickers##65514 |tip They look like huge white rocks around this area.
.get 3 Deep Alabaster Crystal |q 27048/1
step
goto 62.6,23.9 |n
.' Follow this path |goto 62.6,23.9,0.5 |noway |c
step
goto 61.8,19.7
.' Use Ricket's Tickers next to Deep Celestite Crystals |use Ricket's Tickers##65514 |tip They look like huge blue rocks around this area.
.get 3 Deep Celestite Crystal |q 27048/2
step
goto 62.0,18.0 |n
.' Follow this path |goto 62.0,18.0,0.5 |noway |c
step
goto 64.4,18.6
.' Use Ricket's Tickers next to Deep Amethyst Crystals |use Ricket's Tickers##65514 |tip They look like huge purple rocks around this area.
.get 3 Deep Amethyst Crystal |q 27048/3
step
goto 65.3,18.4 |n
.' Follow this path |goto 65.3,18.4,0.5 |noway |c
step
goto 66.4,20.2
.' Use Ricket's Tickers next to Deep Garnet Crystals |use Ricket's Tickers##65514 |tip They look like huge red rocks around this area.
.get 3 Deep Garnet Crystal |q 27048/4
step
goto 63.6,23.9
.' All around inside this cave:
.from Gorged Gyreworm##42766+, Gyreworm##44257+
.kill 10 Gyreworm |q 27046/1
.' Click Painite Shards |tip They look like small green glowing crystals sitting on the ground all around inside this cave.
.get 10 Painite Mote |q 27047/1
step
goto 63.1,20.8
.talk 49956
..' Tell him to follow you
step
goto 64.2,17.6 |n
.' Follow this path |goto 64.2,17.6,0.5 |noway |c
step
goto 61.3,26.2
.talk 44968
..turnin 27048
step
goto 58.3,25.6 |n
.' Leave the cave |goto 58.3,25.6,0.5 |noway |c
step
goto 58.3,25.6
.' Wait in this spot until Pebble bobbles around appreciatively and then disappears into the distance
.' Bring Pebble to safety |q 26710/1
step
goto 74.0,41.2
.kill 8 Fungal Behemoth |q 27049/1
.from Verlok Grubthumper##43367+, Verlok Shroomtender##43368+
.get Bag of Verlok Miracle-Grow |q 27051/1
.' Click Sprouting Crimson Mushrooms |tip They look like tiny mushrooms on the ground around this area.  Try to only click the solid blue, solid red or white-brown ones.  The blue ones with red spots will explode and hurt you.
.' Destroy 10 Freshly Sprouted Mushrooms |q 27050/1
step
goto 68.6,29.1 |n
.' Enter the cave |goto 68.6,29.1,0.5 |noway |c
step
goto 69.8,31.9
.talk 43503
..' Tell her you're ready when she is
.kill Fungalmancer Glop |q 28390/1 |tip Follow him each time he runs away.  Avoid the mushrooms as you walk, they will give you a debuff.  While fighting Fungalmancer Glop, kill the Boomshrooms he creates.  Don't let them grow too big, they will explode and deal a lot of damage.
step
goto 70.2,33.8 |n
.' Follow the path up |goto 70.2,33.8,0.5 |noway |c
step
goto 68.6,29.1 |n
.' Leave the cave |goto 68.6,29.1,0.5 |noway |c
step
goto 59.6,14.0
.talk 44973
..turnin 27051
..turnin 28390 |only if rep ('Therazane') >= Revered
step
goto Deepholm,56.1,14.4
.talk 43805
..turnin 27046
..turnin 27047
..turnin 28488
step
goto 55.4,14.2
.talk 44945
..turnin 26710
step
goto 57.3,12.5
.talk 43804
..turnin 27049
..turnin 27050
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Uldum\\Uldum Pre-Quests",[[
description Contains the pre-quests to unlock
description the daily quests in Uldum.
description
description You must be at least level 83 to
description complete this guide section.
author support@zygorguides.com
step
goto Stormwind City,62.9,71.6
.' Click the Hero's Call Board |tip It's a big white stone hanging board with a gold lion head on it.
..accept 28558
step
goto 22.5,55.8 |n
.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
step
goto Teldrassil,55.4,88.4
.talk 3838
.' Fly to Gunstan's Dig, Tanaris |goto Tanaris,40.1,77.4,0.5 |noway |c
step
goto Tanaris,30.5,65.5
.talk 44833
..turnin 28558
..accept 27003
step
goto 30.5,65.7
.' Click Lady Humps |tip It's a camel.
.' Watch the cutscenes
.' Escort the Caravan |q 27003/1
step
goto Uldum,59.7,71.8
.talk 46873
..turnin 27003
step
goto 59.6,72.0
.talk 46872
..accept 27922
step
goto 61.7,71.1
.' Click the Neferset Frond |tip It looks like an aloe vera plant with a tall blue flower in the middle of it, sitting in a pot on the ground upstairs in this building.
.' Watch the cutscene
.' Uncover the Neferset Secret |q 27922/1
step
goto 59.6,72.0
.talk 46872
..turnin 27922
..accept 27923
..accept 28105
step
goto 59.7,72.0
.talk 46875
..accept 27924
step
goto 60.0,74.0
.from Kavem the Callous##47567
.get Neferset Key |q 28105/1
step
goto 60.8,73.9
.from Neferset Denizen##48267+
.' Click Neferset Armor |tip They look like gray metal pieces of armor sitting on tables around this area.
.get 6 Neferset Armor |q 27924/1
.' Use your Brazier Torch next to Bales of Hay |use Brazier Torch##63027 |tip They look like bundles of yellow straw sitting on the ground around this area.
.' Burn 5 Bales of Hay |q 27923/1
step
goto 59.7,72.0
.talk 46875
..turnin 27924
step
goto 59.6,72.0
.talk 46872
..turnin 27923
..turnin 28105
..accept 28112
step
goto 54.9,32.7
.talk 47684
..turnin 28112
..accept 28134
step
goto 54.7,32.9
.talk 48886
.home Ramkahen
step
goto 56.2,33.6
.talk 48275
.fpath Ramkahen
step
goto 53.0,27.7
.talk 47715
..' Tell him you might be able to help
.' Speak with Sun Priest Asaris |q 28134/2
step
goto 53.0,27.7
.talk 47715
..accept 28141
..accept 28145
step
goto 46.3,21.0
.from Wastewander Outrider##45905+
.get 4 Relic of the Sun King |q 28141/1
.from Venomblood Scorpid##45859+
.' Use your Antidote Vial on Venomblood Scorpid corpses |use Antidote Vial##63086
.' Drain 8 Venomblood Scorpids |q 28145/1
.' You can find more Venomblood Scorpid and Wastewander Outriders around [49.9,24.0]
step
goto 53.0,27.7
.talk 47715
..turnin 28141
..turnin 28145
..accept 28502
step
goto 45.7,16.2
.kill Warlord Ihsenn |q 28502/1
step
goto 53.0,27.7
.talk 47715
..turnin 28502
step
goto 49.7,39.2
.talk 47930
..' Tell him the king wishes to be informed about recent Neferset activity
.' Speak with Asaq |q 28134/3
step
goto 49.7,39.1
.talk 47318
..accept 27993
step
goto 60.3,38.3
.talk 46603
..' Tell him King Phaoris sent you to ask him about Neferset activity
.' Speak with Nomarch Teneth |q 28134/1
step
goto 60.3,38.3
.talk 46603
..accept 28250
step
goto 59.1,38.4
.' Use your Tahret Dynasty Mallet next to stacks of Pygmies |use Tahret Dynasty Mallet##63351 |tip They are sitting on each other's shoulders trying to steal fruit out of trees around this area.
.' Smash 30 Thieving Pluckers |q 28250/1
step
goto 60.3,38.3
.talk 46603
..turnin 28250
step
goto 64.4,22.3
.' Go to this spot
.' Investigate Khartut's Tomb |q 27993/1
step
goto 64.4,22.3
.talk 44860
..turnin 27993
..accept 27141
step
goto 64.3,22.2
.' Click the Powder Keg |tip It looks like a small explosives barrel sitting on the ground.
.' Watch the cutscene
.' Assist Harrison at Khartut's Tomb |q 27141/1
step
goto 64.6,28.6
.talk 45180
..turnin 27141
step
goto 64.6,28.7
.talk 45186
..accept 27179
step
goto 64.8,29.6
.' Click the Elaborate Disc |tip It looks like a tiny metal circular object laying on the ground.
..accept 27176
step
goto 66.1,29.0
.from Mangy Hyena##45202
.' You will accept a quest
..accept 27187
step
goto 68.2,31.5
.from Skarf##45204
.from Sultan Oogah##45205
.collect Sultan's Staff##60865 |q 27176
step
'Use your Elaborate Disc |use Elaborate Disc##60859
.get Shaft of the Stars |q 27176/1
step
goto 66.1,29.0
.from Sand Pygmy##45190+
.' Click Ornate Tablet Fragments |tip They looks like broken pieces of stone on the ground around this area.
.get 10 Ornate Tablet Fragment |q 27179/1
.from Mangy Hyena##45202+
.' Eradicate 12 Mangy Hyenas |q 27187/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27187
step
goto 64.6,28.6
.talk 45180
..turnin 27179
..turnin 27176
..accept 27196
step
goto 64.6,28.6
.talk 45180
..' Tell him you're ready!
.' Follow Harrison Jones |tip When he jumps down, use your flying mount to go down into the Chamber of Stars.
.' Accompany Harrison Jones to the Chamber of the Stars |q 27196/1
step
goto 64.5,28.0
.talk 45296
..turnin 27196
..accept 27511
step
goto 65.7,25.8
.' Go to this spot
.' Examine the Northern Hieroglyphs |q 27511/2
step
goto 64.4,29.9
.' Go to this spot
.' Examine the Ancient Mechanism |q 27511/1
step
goto 63.4,32.5
.talk 45874
..accept 27541
step
goto 63.4,32.5
.talk 45874
..' Take the scout's spectacles.
.get Broken Spectacles |q 27541/1
step
goto 63.4,33.9
.' Go to this spot
.' Examine the Southern Hieroglyphs |q 27511/3
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27511
step
goto 64.5,28.0
.talk 45296
..turnin 27541
..accept 27549
..accept 28602
step
goto 63.3,28.0
.' Click Suspended Starlights |tip They look like small orbs of light floating above the ground around this area.
.get 7 Suspended Starlight |q 27549/1
.' Walk near the skeletons laying on the ground around this area
.from Tormented Tomb-Robber##45765+
.get 6 Piece of Rope |q 28602/1
step
goto 64.5,28.0
.talk 45296
..turnin 27549
step
goto 64.5,28.0
.talk 45296
..turnin 28602
..accept 27431
step
goto 64.5,28.0
.talk 45296
..' Ask him what you can do to help
.' Watch the cutscene
.' Stay Out of Harrison's Way |q 27431/1
step
goto 64.5,28.0
.talk 45296
..turnin 27431
..accept 27624
step
goto 64.0,26.4
.' Click the Watcher Head |tip It's the big head of a broken statue laying on the ground.
.get Orb of the Morning Star |q 27624/1
step
goto 66.8,28.1
.' Click the Watcher Head |tip It's the big head of a broken statue laying on the ground.
.get Orb of the Evening Star |q 27624/2
step
goto 65.3,32.6
.' Click the Watcher Head |tip It's the big head of a broken statue laying on the ground.
.get Orb of the Shooting Star |q 27624/4
step
goto 62.5,32.0
.' Click the Watcher Head |tip It's the big head of a broken statue laying on the ground.
.get Orb of the North Star |q 27624/3
step
goto 64.5,28.0
.talk 45296
..turnin 27624
..accept 27669
step
goto 64.5,28.7
.' Use your Orbs of the Stars |use Orbs of the Stars##62054
.' Watch the cutscene
.' Reactivate the Obelisk of the Stars |q 27669/1
step
goto 63.9,33.9
.talk 48034
..turnin 27669
step
goto 54.9,32.7
.talk 47684
..turnin 28134
..accept 28135
step
goto 54.3,35.3
.talk 47005
..accept 27899
step
goto 45.2,38.0
.talk 45799
..turnin 28135
..accept 27520
step
goto 45.3,37.8
.talk 45772
..accept 27519
..accept 27595
step
goto 40.0,40.5
.talk 46003
..turnin 27595
..accept 27602
step
goto 39.6,45.4
.' Click the Sand-Covered Hieroglyphs |tip It's a small silver plaque on the wall inside this small building.
..turnin 27602
..accept 27623
step
goto 39.6,40.9
.' Click the Colossus of the Sun |tip It looks like a statue buried in the sand, with only the head and one arm above the sand.
.from Colossus of the Sun##46041
.get Stone of the Sun |q 27623/2
step
goto 41.2,37.6
.' Click the Colossus of the Moon |tip It looks like a statue buried in the sand, with only the head and one arm above the sand.
.from Colossus of the Moon##46042
.get Stone of the Moon |q 27623/1
step
goto 40.7,40.2
.kill 6 Scion of Al'Akir |q 27520/1
.' Click Orsis Survivors |tip They looks like cat men laying in gray smoke on the ground around this area.
.' Rescue 8 Orsis Survivors |q 27519/1
step
goto 39.6,45.4
.' Click the Sand-Covered Hieroglyphs |tip It's a small silver plaque on the wall inside this small building.
..turnin 27623
..accept 27706
step
goto 39.6,45.4
.' Click the Sacred Receptacle |tip it looks like a half-buried metal box.
.get The Scepter of Orsis |q 27706/1
step
goto 44.0,57.1
.talk 46978
..turnin 27899
..accept 27900
..accept 27901
step
goto 44.3,58.2
.from Schnottz Air Officer##46993
.collect Efficient Excavations##62768 |n
.' Click the Efficient Excavations in your bags |use Efficient Excavations##62768
..accept 28132
step
goto 46.7,58.4
.from Schnottz Air Trooper##46979+
.' Slay 10 Schnottz Air Troopers |q 27900/1
.from Schnottz Air Officer##46993+
.collect Uldum Chest Key Code##62608 |n
.' Click Obelisk of the Sun Coffers |tip They look like wooden baskets with a lids on them, sitting on the ground.
.collect 6 Titan Device Component##62610 |q 27901
step
'Use your Titan Device Components |use Titan Device Component##62610
.get Titan Activation Device |q 27901/1
step
goto 44.0,57.1
.talk 46978
..turnin 27900
..turnin 27901
..accept 27903
step
goto 45.2,58.8 |n
.' Follow the path down |goto 45.2,58.8,0.5 |noway |c
step
goto 47.1,58.8
.' Use your Titan Activation Device next to the huge statue |use Titan Activation Device##62611 |tip It looks like a huge statue at the bottom of the Chamber of the Sun, holding a fireball.
.from Titanic Guardian##47032 |tip While fighting the Titanic Guardian, click the big lava meteors that appear on the ground to do massive to the Titanic Guardian, making him much easier to kill.
.get Lens of the Sun |q 27903/1
step
goto 45.6,57.8
.' Fly up onto the middle platform inside this cave
.' Click the Titan Mechanism |tip It looks like a big spinning metal machine with a bunch of keys that move up and down.
..turnin 27903
step
goto 44.0,57.1
.talk 46978
..accept 27905
.' Use the abilities on your hotbar to shoot down the airplanes that chase you
.' Escape the Obelisk of the Sun |q 27905/1
step
goto 54.6,41.8
.talk 48082
..turnin 27905
step
goto 45.2,38.0
.talk 45799
..turnin 27520
step
goto 45.3,37.8
.talk 45772
..turnin 27519
..turnin 27706
step
goto 45.2,38.0
.talk 45799
..accept 27628
step
'Hearth to Ramhaken |goto 54.7,32.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 54.9,32.7
.talk 47684
..turnin 27628
step
goto 55.0,34.0
.talk 47959
..accept 27630
..accept 27629
..accept 27631
step
goto 52.9,45.3 |n
.' Enter the dam |goto 52.9,45.3,0.5 |noway |c
step
goto 54.2,41.9
.talk 46135
..turnin 27630
..accept 27836
..accept 27837
step
goto 52.9,45.3 |n
.' Leave the dam |goto 52.9,45.3,0.5 |noway |c
step
goto 52.9,40.8
.kill 8 Stillwater Slitherer |q 27837/1
.' Click Slitherer Eggs |tip They look like white eggs on the ground underwater around this area.
.' Destroy 6 Slitherer Eggs |q 27836/1
step
goto 52.9,45.3 |n
.' Enter the dam |goto 52.9,45.3,0.5 |noway |c
step
goto 54.2,41.9
.talk 46135
..turnin 27836
..turnin 27837
..accept 28611
step
goto 52.9,45.3 |n
.' Leave the dam |goto 52.9,45.3,0.5 |noway |c
step
goto 51.8,40.1 |n
.' Enter the underwater cave |goto 51.8,40.1,0.5 |noway |c
step
goto 49.9,40.1
.from Dark Ritualist Zakahn##49148
.' Stop the Neferset Ritual |q 28611/1
step
goto 51.8,40.1 |n
.' Leave the underwater cave |goto 51.8,40.1,0.5 |noway |c
step
goto 52.9,45.3 |n
.' Enter the dam |goto 52.9,45.3,0.5 |noway |c
step
goto 54.2,41.9
.talk 46135
..turnin 28611
..accept 27838
step
goto 52.9,45.3 |n
.' Leave the dam |goto 52.9,45.3,0.5 |noway |c
step
goto 58.9,46.1
.talk 46134
..turnin 27631
..accept 28198
..accept 28201
step
goto 59.0,46.1
.talk 48012
..accept 28200
step
goto 59.6,47.3
.talk 46883
..turnin 28198
..accept 28210
step
goto 56.3,53.5
.talk 46136
..turnin 27629
..accept 27632
step
goto 55.6,53.7
.talk 46333
.' Recruit 8 Ramkahen Laborers |q 28201/1
step
goto 56.7,48.5
.from Riverbed Crocolisk##45321+ |tip They are all along and in this big river.
.get 20 Hardened Crocolisk Hide |q 28200/1
step
goto 59.0,46.1
.talk 48012
..turnin 28200
step
goto 58.9,46.1
.talk 46134
..turnin 28201
..accept 27839
step
goto 60.4,57.5
.' Use your Horn of Ramkahen |use Horn of Ramkahen##62534
.' When the cat men run in to attack the smugglers, go to 60.5,58.7
.' Click the Ancient Tol'vir Weapons |tip They look like 3 white boxes laying on the ground.
.get Ancient Tol'vir Armaments |q 27839/1
step
goto 58.1,60.8
.from Neferset Guard##46340+
.get Vir'Naal Delta Map |q 27632/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27632
..accept 27707
step
goto 55.5,59.5
.from Bloodsnarl Hyena##45353+
.' Help Salhet defeat 8 Bloodsnarl Hyenas |q 28210/1
.' You can find more Bloodsnarl Hyenas around [52.6,56.2]
step
'Next to you:
.talk 48022
..turnin 28210
..accept 28276
step
goto 56.9,62.4
.talk 48237
..turnin 28276
..accept 28277
step
goto 56.9,62.4
.talk 48237
..' Tell him let's see what he and his lions can do
.' Use the abilities on your hotbar to use the lions to kill the hyenas
.kill 30 Bloodsnarl Scavenger |q 28277/1
step
goto 56.9,62.4
.talk 48237
..turnin 28277
..accept 28291
step
goto 71.3,73.7
.talk 46425
..' Tell him you're looking for Tahet
.' Fight the enemies that attack
.' Discover Tahet's Whereabouts |q 27707/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27707
..accept 27738
step
goto 58.3,82.9
.talk 46496
.from Gorebite##46278
.from Caimas the Pit Master##46276 |tip Make him chase you.  Run in front of him so that he runs over the big pink Croc Eggs on the ground around this area.  Baby Crocs will damage him and slow his run speed down.  Eventually, he will die.
.' Free Tahet |q 27738/1
step
'Hearth to Ramhaken |goto 54.7,32.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 58.9,14.2
.kill Scalemother Hevna |q 27838/1 |tip She's a snake underwater.
step
goto 52.9,45.3 |n
.' Enter the dam |goto 52.9,45.3,0.5 |noway |c
step
goto 54.2,41.9
.talk 46135
..turnin 27838
step
goto 52.9,45.3 |n
.' Leave the dam |goto 52.9,45.3,0.5 |noway |c
step
goto 58.9,46.1
.talk 46134
..turnin 28291
..turnin 27839
step
goto 56.3,53.5
.talk 46136
..turnin 27738
..accept 28533
step
goto 54.9,32.7
.talk 47684
..turnin 28533
.' Watch the cutscene
..accept 28561
step
goto 67.2,42.9
.talk 48761
..turnin 28561
..accept 28498
step
goto 67.3,42.8
.talk 48501
..accept 28499
step
goto 71.7,46.1
.from Neferset Raider##48626+, Neferset Scryer##48625+, Neferset Looter##48627+
.kill 10 Neferset intruder |q 28499/1
.' Click Atulhet's Record Fragments |tip They look like broken stone tablet pieces laying on the ground around this area.
.get 8 Atulhet's Record Fragment |q 28498/1
.' You can find more  Atulhet Fragments and Neferset mobs around [75.2,45.7]
step
goto 67.3,42.8
.talk 48501
..turnin 28499
step
goto 67.2,42.9
.talk 48761
..turnin 28498
..accept 28500
step
goto 78.2,45.7
.from Raider Lord Havat##49214
.get The Cypher of Keset |q 28500/1
step
goto 67.2,42.9
.talk 48761
..turnin 28500
..accept 28501
step
goto 66.7,41.8
.talk 49228
.' Use the abilities on your hotbar to command and heal the troops
.' Complete the Defense of Nahom |q 28501/1
step
'Click the red arrow on your hotbar |outvehicle |noway |c |q 28501
step
goto 67.2,42.9
.talk 48761
..turnin 28501
..accept 28623
step
goto 67.3,42.8
.talk 48501
..accept 27755
step
goto 69.8,58.9
.kill Mekgineer Mixeltweed |q 27755/2 |tip He walks around this area in a metal spider-like machine.
.kill 6 Crazed Digger |q 27755/1
.collect A.I.D.A. Communicator##62483 |n
.' Use the A.I.D.A. Communicator |use A.I.D.A. Communicator##62483
..accept 27760
step
goto 74.1,64.4
.' Click the A.I.D.A. Terminal |tip It looks like a box machine with a paper on it with red writing, under a blue and green canopy.
..turnin 27760
..accept 27761
..accept 27777
step
goto 73.3,72.8
.' Use your Mech Control Scrambler on Twizzleflux the Insane repeatedly |use Mech Control Scrambler##62542
.from Twizzleflux the Insane##46587
.get Core Access Codes |q 27777/1
step
goto 78.8,62.1
.' Use your Holographic Projector next to the First Bomb Cluster to distract the enemies |use Holographic Projector##62398
.' Click the First Bomb Cluster |tip It looks like a metal box with a yellow handle on it sitting on a big pile of red dynamite next to the wall.
.' Disarm the First Bomb Cluster |q 27761/1
step
goto 79.0,64.3
.' Use your Holographic Projector next to the Second Bomb Cluster to distract the enemies |use Holographic Projector##62398
.' Click the Second Bomb Cluster |tip It looks like a metal box with a yellow handle on it sitting on a big pile of red dynamite in front of some stone stairs.
.' Disarm the Second Bomb Cluster |q 27761/2
step
goto 79.0,64.9
.' Use your Holographic Projector next to the Third Bomb Cluster to distract the enemies |use Holographic Projector##62398
.' Click the Third Bomb Cluster |tip It looks like a metal box with a yellow handle on it sitting on a big pile of red dynamite next to the wall.
.' Disarm the Third Bomb Cluster |q 27761/3
step
goto 79.0,63.6
.' Use your Holographic Projector next to Unstable Bomb Bots to distract the enemies |use Holographic Projector##62398
.' Click the Unstable Bomb Bots |tip They look like round walking bombs around this area.
.' Deactivate 4 Unstable Bomb Bots |q 27761/4
step
goto 74.1,64.4
.' Click the A.I.D.A. Terminal |tip It looks like a box machine with a paper on it with red writing, under a blue and green canopy.
..turnin 27761
..turnin 27777
..accept 27778
step
goto 77.0,62.9
.' Click the Maintenance Tools |tip It looks like a small wooden tool carrier sitting on the top of this huge metal machine.
.collect Maintenance Axe##62621 |q 27778
step
goto 77.0,63.0
.' Click the Wibson Mainframe |tip It looks like a tall metal box with spinning gears on it.
.' Hack the Wibson Mainframe |q 27778/1
step
goto 77.3,63.3
.talk 46750
..turnin 27778
..accept 27779
step
goto 81.9,58.8
.' Roll down the hill as the Fusion Core
.' Run over gnomes all around this area
.' Obliterate 1000 Crazed Gnomes |q 27779/1
step
goto 77.6,62.4
.' Roll back up the hill
.' Click the red arrow on your hotbar |outvehicle |noway |c |q 27779
step
goto 77.3,63.3
.talk 46750
..turnin 27779
step
goto 52.0,65.5
.talk 48564
..turnin 28623
..accept 28480
..accept 28483
step
goto 52.9,65.5
.talk 49345
..accept 28486
step
goto 54.1,71.2
.talk 49244
.' Protect the rangers as they run up the path
.' Secure Higher Ground |q 28486/1
step
goto 47.5,77.3
.kill High Priest Sekhemet |q 28480/2
step
goto 50.6,87.0
.kill Scorpion-Lord Namkhare |q 28480/1
step
goto 48.7,84.9
.from Neferset Snake Charmer##47738+, Neferset Cursebringer##47760+, Neferset Ritualist##47762+
.get 10 Neferset Insignia |q 28483/1
step
goto 52.9,65.5
.talk 49345
..turnin 28486
step
goto 52.0,65.5
.talk 48564
..turnin 28480
..turnin 28483
..accept 28520
step
goto 52.0,82.3
.kill Dark Pharaoh Tekahn |q 28520/1
step
goto 24.4,64.5
.talk 47670
..turnin 28132
..accept 27926
step
goto 22.5,63.2
.talk 47176
..' Ask him what he thinks of our host
.' Mingle with Ambassador Laurent |q 27926/1
step
goto 22.5,63.2
.talk 47185
..' Ask him what he knows of our generous host
.' Mingle with a Refined Gentleman |q 27926/2
step
goto 22.3,63.2
.talk 47187
..' Ask him how he finds the Commander
.' Mingle with a Budding Artist |q 27926/3
step
goto 22.2,63.2
.talk 47189
..' Ask her how she has been enjoying her time here
.' Mingle with an Aspiring Starlet |q 27926/4
step
goto 22.0,64.5
.talk 49528
.home Schnottz's Landing
step
goto 22.3,64.9
.talk 48273
.fpath Schnottz's Landing
step
goto 24.4,64.5
.talk 47670
..turnin 27926
..accept 27928
step
goto 24.4,64.1
.talk 47159
..accept 27939
step
goto 40.6,68.9
.from Diseased Vulture##47202
.' You will accept a quest
..accept 27940
step
goto 40.6,68.9
.from Diseased Vulture##47202+
.' Slay 8 Diseased Vultures |q 27940/1
.from Shaggy Desert Coyote##47190+
.get 5 Desert Coyote Pelt |q 27928/1
.' Click the Desert Fox |tip It looks like a brown fox that runs all around this area.  It runs around a lot, so you will probably have to search for it to find it.
.get The Desert Fox |q 27939/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27940
step
'Hearth to Schnottz's Landing |goto 22.0,64.5,0.5 |use Hearthstone##6948 |noway |c
step
goto 24.4,64.5
.talk 47670
..turnin 27928
..accept 27941
step
goto 24.4,64.2
.talk 47159
..turnin 27939
..accept 27942
..accept 27943
step
goto 31.2,63.6
.from Furious Specter##47220+
.' Use your Licensed Proton Accelerator Cannon on Furioous Spectors once they are at half health |use Licensed Proton Accelerator Cannon##62794
.get 5 Furious Spectral Essence |q 27943/1
.' Click Dead Troopers |tip They look like dead humans on the ground around this area.
.get 10 Trooper Uniform |q 27941/1
.' Click Well-preserved Idols |tip They look like small purple coyote statues on the ground around this area.
.get 8 Well-preserved Idol |q 27942/1
step
goto 24.4,64.5
.talk 47670
..turnin 27941
step
goto 24.4,64.1
.talk 47159
..turnin 27942
..turnin 27943
..accept 27950
step
goto 24.4,64.1
.talk 47159
..' Tell him the perimeter is secure
.' Witness Gobbles' Transformation Ritual |q 27950/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27950
step
goto 24.4,64.1
.talk 47159
..accept 27969
step
'Use your Refurbished Trooper Uniform |use Refurbished Trooper Uniform##62813
.' Wear the Uniform |havebuff INTERFACE\ICONS\inv_chest_leather_08 |q 27969
step
goto 23.2,60.1
.talk 47292
..' Tell them they're behind schedule
.' Motivate 6 Slackers |q 27969/1 |tip You won't motivate all of the Slacking Laborers you talk to.
.' You can find more Slacking Laborers around [20.5,60.5]
step
goto 24.5,64.2
.talk 47159
..turnin 27969
step
goto 24.4,64.5
.talk 47670
..accept 28002
step
goto 22.5,64.0
.talk 47707
..' Ask him if he saw anything
.' Counsel the Budding Artist |q 28002/4
step
goto 22.4,63.8
.talk 47516
..' Ask him who could have done such a thing
.' Question the Prolific Writer |q 28002/1
step
goto 22.2,63.9
.talk 47519
..' Ask her if she is alright
..' Soothe the Privileged Socialite |q 28002/2
step
goto 22.3,64.1
.talk 47520
..' Ask him doesn't he want to know what happened to the man
.' Chasten the Pretentious Businessman |q 28002/3
step
goto 24.4,64.5
.talk 47670
..turnin 28002
step
goto 24.4,64.1
.talk 47159
..accept 27990
step
goto 21.3,64.6
.' Click Schnottz's Siege Tank |tip It looks like a big car with a cannon on top of it.
.' Ride in Schnottz's Siege Tank
.' Use the Fire Cannon ability on your hotbar on Decrepit Watchers |tip They are giants fighting all around this area.
.' Obliterate 7 Decrepit Watchers |q 27990/1
step
goto 24.4,64.1
.' Go to this spot
.' Return to Schnottz |q 27990/2
step
goto 24.4,64.1
.talk 47940
..turnin 27990
..accept 28187
step
goto 24.4,64.1
.talk 47940
..' Tell him let's move
.' Follow Commander Schnottz
.' Accompany Schnottz to Safety |q 28187/1
step
goto 22.5,63.2
.talk 47972
..turnin 28187
..accept 28193
step
goto 21.9,64.1
.' Go to this spot
.' Visit Schnottz's Guests |q 28193/1
step
goto 21.9,64.0
.talk 47967
..accept 28194
step
goto 22.5,63.2
.talk 47972
..turnin 28193
..accept 28195
step
goto 22.3,67.6
.from Captain Margun##47981 |tip He's standing on the top ship deck, near the ship wheel.
.' Kill Captain Margun |q 28195/1
step
goto 24.9,69.0
.from Captain Cork##47980 |tip He's standing on the top ship deck, near the ship wheel.
.' Kill Captain Cork |q 28195/2
step
goto 26.1,68.6
.from Captain Kronkh##47978 |tip He's standing on the top ship deck, near the ship wheel.
.' Kill Captain Kronkh |q 28195/3
step
goto 24.9,68.4
.from Schnottz Sea Trooper##47982+ |tip Kill them on all 3 of the pirate ships around this area.
.get 6 Fresh Sailor Uniform |q 28194/1
step
goto 21.9,64.0
.talk 47967
..turnin 28194
step
goto 22.5,63.2
.talk 47972
..turnin 28195
..accept 28267
step
goto 22.5,63.2
.talk 47972
..' Tell him you suppose you're ready...
.' Watch the cutscene
.' Go 'Out Back' With Schnottz |q 28267/1
step
goto 23.6,60.3
.talk 48162
..turnin 28267
..accept 28269
step
goto 22.3,64.9
.talk 48273
.' Fly to Ramkahen, Uldum |goto 56.3,33.6,0.5 |noway |c
step
goto 54.9,32.7
.talk 47684
..turnin 28520
step
goto 54.7,32.9
.talk 48886
.home Ramkahen
step
goto 67.3,42.8
.talk 48501
..turnin 27755
step
'Hearth to Ramhaken |goto 54.7,32.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 27.0,7.5
.talk 48186
..turnin 28269
..accept 28273
step
goto 26.6,7.2
.talk 49406
.home Oasis of Vir'sar
step
goto 26.6,8.4
.talk 48274
.fpath Oasis of Vir'sar
step
goto 26.6,8.0
.talk 48203
..turnin 28273
..accept 28274
step
'Watch the cutscene
.' Accompany Sullah |q 28274/1
step
goto 29.6,21.9
.talk 48431
..turnin 28274
..accept 28350
..accept 28352
..accept 28351
step
goto 29.9,38.2
.from Wild Camel##51193+
.' Use Sullah's Camel Harness on Wild Camels when they are weakened |use Sullah's Camel Harness##67241 |tip You will see a message flash on your screen telling you to capture the camel.
.' Capture 3 Wild Camels |q 28352/1
step
goto 29.9,38.2
.from Wild Camel##51193+
.get 5 Meat Scrap |q 28350/1
.from Cavorting Pygmy##51217+
.' Use Sullah's Pygmy Pen on Cavorting Pygmies when they are weakened |use Sullah's Pygmy Pen##67232 |tip You will see a message flash on your screen telling you to cage the pygmy.
.' Capture 5 Sand Pygmies |q 28351/1
step
goto 29.6,21.8
.talk 48431
..turnin 28350
..turnin 28352
..turnin 28351
..accept 28353
step
'Hearth to Oasis of Vir'sar |goto 26.6,7.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 27.0,7.5
.talk 48186
..turnin 28353
..accept 28271
..accept 28272
step
goto 38.2,21.6
.from Schnottz Overseer##48205+
.from Schnottz Excavator##48204+
.' Kill 15 Schnottz Employees at the Obelisk of the Moon |q 28271/1
.' Click Pillaged Loot Sacks |tip They look like green and white striped bags sitting on the ground all around this area.
.get 7 Ancient Copper Scroll |q 28272/1
step
goto 27.0,7.6
.talk 48186
..turnin 28271
..turnin 28272
..accept 28363
step
goto 29.6,21.8
.talk 48431
..turnin 28363
..accept 28367
step
goto 38.4,22.6
.' Use your Shroud of the Makers every 2 minutes to stay Cloaked|use Shroud of the Makers##63699 |tip The big dragon that flies around this area can see through your cloaking, so be careful not to get too close to it.
.' Click Schnottz Powder Kegs |tip They look like explosive wooden barrels on the ground around this area.
.' Sabotage 7 Powder Kegs |q 28367/1
step
goto 27.0,7.5
.talk 48186
..turnin 28367
..accept 28402
step
goto 36.7,20.8 |n
.' Enter the building |goto 36.7,20.8,0.5 |noway |c
step
goto 33.5,17.8 |n
.' Fly down this hole |goto 33.5,17.8,0.5 |noway |c
step
goto 35.0,19.2
.from Schnottz Elite Trooper##48668+
.' Slay 10 Schnottz Elite Troopers |q 28402/1
step
goto 36.1,20.3
.talk 48528
..turnin 28402
..accept 28403
step
goto 36.1,20.3
.talk 48528
..' Tell him you are ready when he is
.' Follow Harrison Jones
.' Upload the Titan Data |q 28403/1
step
goto 39.0,23.2
.talk 48558
..turnin 28403
..accept 28404
step
goto 39.6,23.6
.from Lunar Crystal##48529+ |tip They look like glowing floating spiked crystal balls.
.' Defeat the Titan Guardian |q 28404/1
step
goto 39.0,23.2
.talk 48558
..turnin 28404
step
goto 42.2,25.9
.talk 48621
..accept 28482
step
goto 41.4,5.6
.talk 48698
..turnin 28482
..accept 28497
step
goto 41.4,5.6
.' Click the Confiscated Artillery |tip It looks like a war catapult car machine.
.' Use the Designate Target ability on your hotbar on the Schnottz Infantrymen
.' Slay 100 Schnottz Infantrymen |q 28497/1
step
goto 41.4,5.6
.talk 48698
..turnin 28497
..accept 28613
step
goto 36.1,15.8
.talk 47158
..turnin 28613
..accept 27748
.' Follow Harrison Jones and fight the Obsidian Colossus |tip Occasionally, crates will parachute onto the ground and become treasure chest with glowing jewels floating above them.  Run up next to the treasure chest to gain healing or attack power bonuses.  Avoid the pink shadow runes on the ground when the Obsidian Colossus casts them.  You will see messages pop up on your screen letting you know what to do.
.from Obsidian Colossus##46646
.' Defeat the Obsidian Colossus |q 27748/1
step
goto 33.4,19.7
.talk 49151
..turnin 27748
..accept 28612
.' Watch the cutscene
.' Discover the Coffer of Promise |q 28612/1
step
goto 32.6,30.9
.talk 49204
..turnin 28612
..accept 28621
step
goto 32.6,30.7
.talk 49203
..turnin 28621
..accept 28622
step
goto 32.0,29.9
.' Use Harrison's Signal Flares |use Harrison's Signal Flares##64668
.' Place the North Signal Flare |q 28622/1
step
goto 31.4,30.8
.' Use Harrison's Signal Flares |use Harrison's Signal Flares##64668
.' Place the West Signal Flare |q 28622/2
step
goto 32.0,31.6
.' Use Harrison's Signal Flares |use Harrison's Signal Flares##64668
.' Place the South Signal Flare |q 28622/3
step
goto 44.9,67.3
.talk 49248
..turnin 28622
..accept 28633
step
goto 45.0,67.3
.' Click the Coffer of Promise |tip It looks like a huge stone box with a golden lid on it.
.get Titan Discs |q 28633/1
step
goto 44.9,67.3
.talk 49351
..turnin 28633
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Uldum\\Tahret Grounds Dailies",[[
description Walks you through completing the
description daily quests in the Ramkahen
description region of Uldum.
author support@zygorguides.com
daily
step
goto Uldum,60.3,38.3
.talk 46603
..accept 28250 |daily
step
goto 59.1,38.4
.' Use your Tahret Dynasty Mallet next to stacks of Pygmies |use Tahret Dynasty Mallet##63351 |tip They are sitting on each other's shoulders trying to steal fruit out of trees around this area.
.' Smash 30 Thieving Pluckers |q 28250/1
step
goto 60.3,38.3
.talk 46603
..turnin 28250
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Uldum\\Pilgrim's Precipice Dailies",[[
description Walks you through completing the
description daily quests in the Pilgrim's
description Precipice region of Uldum.
author support@zygorguides.com
daily
step
goto Uldum,41.4,5.5
.talk 49523
..accept 28736 |daily
step
goto 41.4,5.5
.' Click the Confiscated Artillery |tip It looks like a war catapult car machine.
.' Use the Designate Target ability on your hotbar on the Infantrymen
.' Slay 100 Infantrymen |q 28736/1
step
goto 41.4,5.5
.talk 49523
..turnin 28736
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Twilight Highlands\\Twilight Highlands Pre-Quests",[[
description Contains the pre-quests to unlock
description the daily quests in Twilight Highlands.
description
description You must be at least level 84 to
description complete this guide section.
author support@zygorguides.com
step
goto Stormwind City,62.9,71.6
.' Click the Hero's Call Board |tip It looks like two white stone pillars with a wooden board hanging between them with papers pinned onto it.
..accept 28716
step
goto 85.7,31.8
.talk 41735
..turnin 28716
..accept 26960
step
goto 85.7,31.6
.talk 1747
..' Tell him to come with you
.' Become Introduced to Anduin |q 26960/1
step
goto 85.7,31.8
.talk 41735
..turnin 26960
..accept 26975
..accept 26977
step
goto 85.1,31.3
.talk 2439
..turnin 26977
..accept 26997
step
goto 85.8,25.9
.talk 44238
..turnin 28292
step
goto 29.3,26.5
.talk 29152
.' Interrogate 6 Dock Workers |q 26997/1
step
'Next to you:
.talk 44293
..turnin 26997
.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
step
goto 33.1,39.4
.' Go to this spot
.' Escort Anduin to Supply Sergeant Graves |q 26975/1
step
goto 33.1,39.5
.talk 44749
..turnin 26975
..accept 27038
step
'Next to you:
.talk 44293
..accept 27044
.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
step
goto 34.6,46.1
.' Click Missing Parts |tip They look like brown metal buckets with mechanical parts in them on the ground around this area.
.get 5 Missing Parts |q 27038/1
step
goto 34.8,38.2
.talk 44806
..turnin 27038
step
'Next to you:
.talk 44293
..accept 27064
.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
step
goto 52.0,5.8
.' Go to this spot
.' Escort Prince Anduin to Farmer Wollerton |q 27044/1
.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
step
goto 52.1,6.0
.talk 44807
..turnin 27044
..accept 27060
step
goto 43.8,4.6
.' Go to this spot
.' Discover the Crime Scene |q 27060/1
.from Twilight Striker##44808+
.' Protect Prince Anduin |q 27060/2
step
'Next to you:
.talk 44293
..turnin 27060
.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
step
goto 80.2,62.1
.' Go inside this building and up the spiral staircase
.' Allow Anduin to Examine Samuelson's Papers |q 27064/1
.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
step
'Next to you:
.talk 44293
..turnin 27064
..accept 28807
.' If Anduin Wrynn is not next to you, you can find in Stormwind Keep at [85.7,31.6] |tip Talk to him and tell him to come with you, if you have to go get him again.
step
goto 81.3,63.5
.talk 332
..turnin 28807
..accept 27072
step
goto 39.8,56.8
.kill 6 Crazed Cultist |q 27072/1
step
goto 37.2,56.2
.talk 50049
..turnin 27072
..accept 27092
step
goto 52.9,51.0 |n
.' Enter the Cathedral |goto 52.9,51.0,0.5 |noway |c
step
goto 51.3,44.3 |n
.' Follow the spiral ramp down |goto 51.3,44.3,0.5 |noway |c
step
goto 53.2,42.6 |n
.' Follow the stairs down |goto 53.2,42.6,0.5 |noway |c
step
goto 50.6,42.2
.kill The Black Bishop |q 27092/1
step
goto 50.2,42.6
.' Click the Pile of Explosives
..turnin 27092
..accept 27106
step
goto 85.1,31.0
.talk 2439
..' Tell him it's over
.' Unmask Major Samuelson |q 27106/1
.kill Major Samuelson |q 27106/2
step
goto 85.8,31.7
.talk 41735
..turnin 27106
..accept 28238
step
goto 26.1,47.3
.talk 44806
..turnin 28238
..accept 28832
step
goto 25.9,47.6
.' Click Flintlocke's Seaplane |tip It looks like an airplane flying in place above the water.
.' Ride to Twilight Highlands |goto Twilight Highlands |noway |c
step
goto Twilight Highlands,81.0,79.4
.talk 49022
..turnin 28832
..accept 28596
step
goto 81.1,77.3
.' Click Cannon Powder Barrels |tip They look like wooden barrels on the ground around this area.
.get 10 Cannon Powder |q 28597/1
.kill 10 Horde Attackers |q 28596/1
step
goto 81.0,79.4
.talk 49022
..turnin 28596
step
goto 81.0,79.4
.talk 49252
..accept 28597
step
goto 78.8,76.8
.talk 49252
..turnin 28597
..accept 28598
step
'You may have to wait for a few minutes, so just stand here and wait
.' Wait to be launched from Flintlocke's Cannon |q 28598/1
step
'Go downstairs in the zeppelin
.' Use Flintlocke's Explosives while downstairs |use Flintlocke's Explosives##64660
.' Destroy the Skyshredder |q 28598/2
step
goto 78.9,76.7
.talk 49252
..turnin 28598
..accept 28599
step
goto 79.1,78.3
.' Go upstairs in the fort
.talk 49358
..turnin 28599
..accept 27338
step
goto 79.3,78.5
.talk 45170
..accept 27177
..accept 27178
step
goto 76.0,80.0
.talk 45171
..accept 27200
step
goto 76.1,79.8
.from Ophelia##45183
.' Slay Ophelia and Protect Ephram |q 27200/1
step
goto 76.0,80.0
.talk 45171
..turnin 27200
step
goto 76.2,83.0
.' Click Water-Logged Crates |tip They look like wooden boxes on the ground underwater around this area.
.get 8 Recovered Supplies |q 27177/1
.from Blackscale Seacaller##45182+, Blackscale Myrmidon##45179+
.' Slay 10 Blackscale Naga |q 27178/1
step
goto 79.3,78.5
.' Go upstairs in the fort
.talk 45170
..turnin 27177
..turnin 27178
step
goto 76.8,69.8
.talk 45169
..turnin 27338
..accept 27341
..accept 27366
step
goto 77.0,69.9
.talk 49252
..accept 27433
step
goto 77.5,65.3
.' Go to this spot
.' Scout the Beach Head Control Point |q 27341/1
step
goto 77.4,67.1
.kill 12 Axebite Marine |q 27366/1 |tip Be careful and pay attention not to stand too close to the red arrows bouncing above the ground.  Cannon balls land at the arrows a few seconds after the arrows appear, and they will hurt you a lot if they hit you.
step
goto 74.3,68.0
.from Diamond-Blade Shredder##45185+
.get 5 Abused Shredder Parts |q 27433/1
step
goto 76.8,69.8
.talk 45169
..turnin 27341
..turnin 27366
..accept 27514
step
goto 77.0,69.9
.talk 45168
..turnin 27433
..accept 27468
step
goto 73.4,71.2
.talk 45524
..' Tell him you'll cover him while he makes repairs
.' Speak to a Siege Tank Commander |q 27468/1
.from Axebite Grunt##45187+
.' Defend the Siege Tank |q 27468/2
step
goto 77.0,69.9
.talk 45168
..turnin 27468
step
goto 67.7,66.0
.talk 45172
..turnin 27514
..accept 27515
step
goto 71.4,66.2
.' Click Thorny Stankroots |tip They look like gray-ish bumps with green leaves on them on the ground around this area.
.get 8 Thorny Stankroot |q 27515/1
step
goto 67.7,66.0
.talk 45172
..turnin 27515
..accept 27516
step
goto 67.7,66.0
.talk 45172
..' Tell him you're ready, let's go!
.' Fly with Thordun Hammerblow to Highbank |q 27516/1
step
goto 79.4,78.5
.talk 49688
.home Highbank
step
goto 79.1,78.3
.' Go upstairs in the fort
.talk 45167
..turnin 27516
..accept 27537
step
goto 79.2,78.3
.talk 45172
..accept 27538
step
goto 67.7,46.9
.from Muddied Water Elemental##44011+
.get 5 Whirlpool Core |q 27537/1
.' Click Verrall River Muck |tip They look like mounds of swirled gray and white sand on the ground around this area.
.get 10 Verrall River Muck |q 27538/1
step
'Hearth to Highbank |goto 79.4,78.5,0.5 |use Hearthstone##6948 |noway |c
step
goto 79.4,77.6
.talk 45173
..turnin 27537
..turnin 27538
..accept 27545
step
goto 79.1,78.3
.' Go upstairs in the fort
.talk 45167
..turnin 27545
step
goto 79.2,78.3
.talk 45172
..accept 27621
step
goto 60.1,57.9
.talk 49271
..turnin 27621
..accept 27803
..accept 27804
step
goto 60.4,58.1
.talk 49795
.home Firebeard's Patrol
step
goto 60.4,58.3
.talk 49370
..accept 27805
step
goto 60.4,57.6
.talk 47147
.fpath Firebeard's Patrol
step
goto 59.8,56.2
.' Use your Wildhammer Water Bucket next to fires to extinguish them |use Wildhammer Water Bucket##62508
.' Click Meara's Dried Roses |tip They look like a bushel of dark red roses hanging on the wall inside this burning building.
.get Meara's Dried Roses |q 27805/1
step
goto 59.5,55.9
.' Use your Wildhammer Water Bucket next to fires to extinguish them |use Wildhammer Water Bucket##62508
.' Click Aprika's Lost Doll |tip It looks like a white teddy bear with crossed out eyes sitting on the ground inside this burning building.
.get Aprika's Doll |q 27805/3
step
goto 59.3,56.9
.' Use your Wildhammer Water Bucket next to fires to extinguish them |use Wildhammer Water Bucket##62508
.' Click Parlan's Ivory Hammer |tip It looks like a white hammer sitting on the stove inside this burning building.
.get Parlan's Ivory Hammer |q 27805/2
step
goto 59.8,56.9
.' Use your Wildhammer Water Bucket next to fires |use Wildhammer Water Bucket##62508
.' Extinguish 50 Village Fires |q 27804/1
.kill 8 Subjugated Firestarter |q 27803/1
step
goto 60.2,58.0
.talk 49271
..turnin 27803
..turnin 27804
..accept 27806
step
goto 60.4,58.3
.talk 49370
..turnin 27805
step
goto 57.5,58.1
.talk 46805
..turnin 27806
..accept 27807
..accept 27808
..accept 27809
step
goto 50.8,60.2
.talk 46811
..turnin 27807
..accept 27810
step
goto 50.8,60.2
.talk 46812
..accept 27811
step
goto 51.1,59.9
.talk 46813
..' Tell him he's not backing out, is he
.from Mullan Gryphon Rider##46813
.' Defeat a Mullan Gryphon Rider |q 27810/1
step
goto 50.8,60.2
.talk 46811
..turnin 27810
step
goto 57.3,67.6
.talk 46968
..' Let the gryphons smell the piece of charred highland birch
.' Find and return 8 Mullan Gryphons |q 27811/1
step
goto 61.4,67.4
.talk 47317
..turnin 27808
..accept 27999
step
goto 50.8,60.2
.talk 46812
..turnin 27811
step
goto 50.8,60.3
.talk 46811
..accept 27812
step
goto 57.5,58.1
.talk 46805
..turnin 27999
..turnin 27812
step
goto 62.5,48.4
.talk 46850
..turnin 27809
..accept 27813
step
goto 62.6,48.6
.talk 48046
..accept 28233
step
goto 62.6,48.6
.talk 46806
..accept 27814
step
goto 63.1,47.6
.talk 48053
..turnin 28233
..accept 28234
step
goto 62.3,47.0
.' Go upstairs in this building
.from Gorosh the Pant Stealer##48102
.get Bahrum's Pants |q 28234/1
step
goto 62.3,46.8
.talk 47465
..' Help the orcs up
.' Defeat 6 Dragonmaw Stragglers |q 27813/1
.' Click Dragonmaw Weapon Axes |tip The Dragonmaw Stragglers drop them when you help them up.  They look like axes stuck in the ground.
.' Click Dragonmaw Weapon Racks |tip They look like brown racks with 2 axes on them mounted on walls around this area.
.get 8 Dragonmaw Weapon |q 27814/1
step
goto 62.5,48.4
.talk 46850
..turnin 27813
step
goto 62.5,48.4
.talk 46850
..accept 27815
step
goto 62.6,48.6
.talk 46806
..turnin 27814
step
goto 63.2,47.6
.talk 48172
..turnin 28234
step
goto 57.5,58.1
.talk 46805
..turnin 27815
..accept 27816
step
goto 60.2,57.8
.talk 46804
..turnin 27816
..accept 27817
step
goto 59.9,57.3
.' Click a Firebeard Gryphon Mount |tip They look like big eagles standing here.
.' Ride the Firebeard Gryphon Mount |invehicle |c |q 27817
step
goto 58.8,53.1
.' While flying on the Firebeard Gryphon Mount:
.' Use the abilities on your action bar to kill Twilight Stormbenders on the floating rocks |tip Use your Storm Shield ability when someone casts a lightning attack on you.
.kill 12 Twilight Stormbender |q 27817/1
step
goto 58.6,51.7
.' While flying on the Firebeard Gryphon Mount:
.' Use the abilities on your action bar to weaken Servias Windterror
.' Eventually, you will get off the gryphon and fight him regularly
.kill Servias Windterror |q 27817/2 |tip When he casts his lightning spell on the ground, move away from that spot to avoid damage when it explodes.
step
goto 60.2,57.9
.talk 49271
..turnin 27817
..accept 27640
..accept 28001
step
goto 46.7,66.0 |n
.' Enter this building |goto 46.7,66.0,0.5 |noway |c
step
goto 45.9,65.5
.talk 46177
..turnin 27640
..accept 27643
..accept 27644
..accept 27645
step
goto 45.9,65.4
.talk 46143
..accept 27641
..accept 27642
step
goto 45.8,71.7
.talk 46174
..turnin 27645
..accept 27648
step
goto 45.8,71.7
.talk 46174
..' Tell him yeah... and let's get to it then
.' Escort Cayden Dunwald
.' Accompany Cayden through Dunwald Market Row |q 27648/1
.' Cayden Dunwald can also be at [47.9,74.5]
step
goto 47.9,74.5
.talk 46174
..turnin 27648
.' Cayden Dunwald can also be at [45.8,71.7]
step
goto 52.9,74.3
.talk 49013
..turnin 27644
..accept 27647
step
goto 52.8,69.8
.' Click a Sacred Ale Tap |tip They look like 3 wooden kegs built into the wall in the basement of this building.
.get Sacred Wildhammer Ale |q 27647/1
step
goto 52.4,70.3
.talk 46583
..turnin 27647
..accept 27649
step
goto 46.4,59.1
.talk 46176
..turnin 27643
..accept 27646
step
goto 45.4,60.0
.' As you walk around doing quests:
.talk 46609
.' Click Wildhammer Ale Casks and get them |tip They look like brown barrels sitting on the ground around this area.
.' Go into the basement of this building
.' Search the cellar in southern Dunwald Hovel |q 27646/1
step
goto 46.4,53.8
.' As you walk around doing quests:
.talk 46609
.' Click Wildhammer Ale Casks and get them |tip They look like brown barrels sitting on the ground around this area.
.' Go into the basement of this building
.' Search the cellar in northwestern Dunwald Hovel |q 27646/2
step
goto 48.4,52.6
.' As you walk around doing quests:
.talk 46609
.' Click Wildhammer Ale Casks and get them |tip They look like brown barrels sitting on the ground around this area.
.' Go to this spot
.' Search the buildings in eastern Dunwald Hovel |q 27646/3
step
goto 46.0,58.7
.talk 46176
..turnin 27646
..accept 27650
step
goto 45.9,54.8
.from Bloodgorged Ettin##46145+, Twilight Scavenger##46183+, Twilight Pillager##46144+, Twilight Shadeprowler##46526+
.' Welcome 20 Twilight Guests to Dunwald |q 27641/1
.talk 46609
.' Find 12 Dunwald Victims |q 27642/1
.' Click Wildhammer Ale Casks |tip They look like brown barrels sitting on the ground around this area.
.get 6 Wildhammer Ale |q 27649/1
.' You can find more of all these things:
.' Around [47.0,66.1]
.' Around [46.4,72.6]
.' Around [50.7,69.8]
step
goto 46.7,66.0 |n
.' Enter this building |goto 46.7,66.0,0.5 |noway |c
step
goto 46.2,65.6
.talk 46585
..turnin 27649
step
goto 45.9,65.4
.talk 46143
..turnin 27641
..turnin 27642
step
goto 46.0,65.5
.talk 49363
..turnin 27650
..accept 27651
step
goto 50.5,70.6
.talk 46628
..' Tell him you're in
.kill Darunga |q 27651/1
step
goto 50.5,70.6
.talk 46628
..turnin 27651
step
goto 49.0,29.8
.talk 46591
..turnin 28001
..accept 27754
..accept 28369
step
goto 49.8,29.2
.talk 48010
..accept 27752
step
goto 49.8,29.3
.talk 48013
..turnin 28369
..accept 27753
step
goto 49.5,30.4
.talk 49591
.home Thundermar
step
goto 48.5,28.1
.talk 47154
.fpath Thundermar
step
goto 46.2,37.4
.from Dragonmaw Marauder##46310+
.get 8 Dragonmaw Insignia |q 27754/1
.' Click Thundermar Ale Kegs |tip They look like wooden barrels on the ground around this area.
.get 10 Wildhammer Keg |q 27752/1
.' Click Wildhammer Food Stores |tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
.get 15 Wildhammer Food Stores |q 27753/1
.' You can find more around [49.1,37.3]
step
goto 49.0,29.8
.talk 46591
..turnin 27754
step
goto 49.8,29.2
.talk 48010
..turnin 27752
step
goto 49.8,29.3
.talk 48013
..turnin 27753
step
goto 49.8,29.2
.talk 48010
..accept 28241
step
goto 49.1,29.4
.talk 48174
..accept 28211
..accept 28212
..accept 28215
step
goto 49.0,29.7
.talk 49273
..accept 28216
step
goto 57.9,33.5
.' Click the Eye of Twilight |tip It's a purple orb above a spinning metal machine.
..turnin 28241
..accept 28242
step
goto 58.0,32.6
.kill 10 Shaman of the Black |q 28242/1
.from Obsidian Stoneslave##47226+
.get 10 Twisted Elementium Loop |q 28215/1
step
goto 57.9,33.5
.' Click the Eye of Twilight |tip It's a purple orb above a spinning metal machine.
..turnin 28242
..accept 28243
step
goto 49.1,29.4
.talk 48174
..turnin 28215
step
goto 49.7,29.2
.talk 48175
..turnin 28243
..accept 28244
step
goto 49.8,29.1
.' Click the Eye of Twilight |tip It's a spinning purple orb in a metal stand.
.' Watch the cutscene
.' Peered into the Eye |q 28244/1
step
goto 49.7,29.2
.talk 48175
..turnin 28244
step
goto 42.5,23.5
.from Magmalord Falthazar##48015
.get Magmalord Falthazar's Head |q 28216/1
step
goto 42.2,24.3
.from Unbound Emberfiend##48016+
.get 5 Molten Fury |q 28212/1
.' Click Tempered Spears |tip They look like spears with their points sticking out of the ground around this area.
.get 8 Tempered Spear |q 28211/1
step
goto 49.0,29.7
.talk 49273
..turnin 28216
step
goto 49.1,29.4
.talk 48174
..turnin 28211
..turnin 28212
..accept 28280
step
goto 49.2,29.8
.' Use your Shoulder-Mounted Drake-Dropper on Dragonmaw Black Drakes |use Shoulder-Mounted Drake-Dropper##63393 |tip They are flying in the sky around this area.
.kill 8 Dragonmaw Black Drake |q 28280/1
step
goto 49.1,29.4
.talk 48174
..turnin 28280
step
goto 49.0,29.7
.talk 48173
..accept 28281
step
goto 48.1,30.0
.kill 8 Dragonmaw Skyclaw |q 28281/1
step
goto 49.0,29.7
.talk 48173
..turnin 28281
..accept 28282
step
goto 49.0,29.7
.talk 48173
..' Tell him you're ready to fight him!
.kill Narkrall Rakeclaw |q 28282/1
step
goto 49.0,29.7
.talk 48173
..turnin 28282
..accept 28294
step
goto 54.6,18.0
.talk 49574
.home Kirthaven
step
goto 54.3,16.7
.talk 48367
..turnin 28294
step
goto 54.9,17.2
.talk 48365
..accept 28346
step
goto 54.4,16.8
.talk 48364
..turnin 28346
..accept 28377
step
goto 56.8,15.1
.talk 47155
.fpath Kirthaven
step
goto 38.1,34.5
.talk 48472
..turnin 28377
..accept 28378
..accept 28379
step
goto 37.6,33.4 |n
.' Enter the cave |goto 37.6,33.4,0.5 |noway |c
step
goto 35.0,31.1
.' Go to this spot inside the cave
.' Rescue Fanny Thundermar |q 28378/1
step
goto 37.6,33.4 |n
.' Leave the cave |goto 37.6,33.4,0.5 |noway |c
step
goto 38.7,30.9
.from Glopgut Pounder##48474+, Glopgut Hurler##48475+
.' Slay 10 Glopgut Ogres |q 28379/1
step
goto 38.1,34.5
.talk 48472
..turnin 28378
..turnin 28379
..accept 28407
step
'Hearth to Kirthaven |goto 54.6,18.0,0.5 |use Hearthstone##6948 |noway |c
step
goto 54.7,17.9
.talk 48530
..turnin 28407
step
goto 54.6,17.5
.talk 48366
..accept 28413
step
goto 54.6,17.5
.talk 48366
..' Tell him you're ready, let's write a song
.' Create a song |q 28413/1
step
goto 54.6,17.5
.talk 48366
..turnin 28413
step
goto 54.3,16.7
.talk 49374
..accept 28408
..accept 28409
..accept 28410
..accept 28411
step
goto 53.4,24.5
.from Highland Elk##46970+, Highland Doe##46971+
.get 8 Fresh Venison |q 28411/1
.from Highland Worg##46153+
.get 5 Worg Rib |q 28411/2
step
goto 56.8,21.9
.from Tawny Owl##46162+
.' Click Pristine Owl Feathers |tip They look like blue feathers on the ground around this mountainous area.
.get 12 Pristine Owl Feather |q 28408/1
step
goto 64.4,22.6
.talk 48758
..' Tell him you're here to escort a delivery to Kirthaven
.' Follow the dwarves
.from Dragonmaw Skirmisher##48799+
.' Escort the Supply Caravan |q 28409/1
step
goto 75.1,33.8
.' Find a zeppelin flying north or south along this coast between Dragonmaw Port and The Krazzworks
.' Fly onto the zeppelin and land on it
.' Go downstairs on the zeppelin
.' Click a Crate of Fine Cloth |tip They look like yellow metal boxes downstairs in the zeppelin.
.get Fine Dark Cloth |q 28410/1
step
'Hearth to Kirthaven |goto 54.6,18.0,0.5 |use Hearthstone##6948 |noway |c
step
goto 54.3,16.7
.talk 49374
..turnin 28408
..turnin 28409
..turnin 28410
..turnin 28411
step
goto 54.3,16.8
.talk 48368
..accept 28655
step
goto 54.3,16.8
.talk 48368
..' Tell him to let the wedding commence!
.' Watch the cutscene
.from The Beast Unleashed##49234
.' Complete the Nuptuals |q 28655/1
step
goto 55.3,17.3
.talk 49358
..turnin 28655
step
goto 55.2,17.3
.talk 49374
..accept 27374
step
goto 44.0,10.6
.talk 43901
..turnin 27374
..accept 27299
step
goto 41.8,11.4
.kill 3 Tentacle of Iso'rath |q 27299/1
step
goto 44.0,10.6
.talk 45332
..turnin 27299
..accept 27300
step
goto 44.0,11.3
.talk 45391
..accept 27301
step
goto 44.4,11.6
.talk 45432
..accept 27302
step
goto 44.2,18.1
.talk 45362
..turnin 27301
..accept 27303
step
goto 42.3,17.2
.from Twilight Captivator##45359+, Twilight Bonebreaker##45334+
.kill 12 Drakgor cultists |q 27300/1
.from Bound Fleshburner##45358+
.get 5 Fleshburner Heart |q 27303/1
.' Click Barrels of Pyreburn Oil |tip They look like wooden kegs on the ground around this area.
.get 10 Pyreburn Oil |q 27302/1
step
goto 44.4,11.6
.talk 45432
..turnin 27302
step
goto 43.8,11.3
.talk 45386
..turnin 27303
step
goto 44.0,10.6
.talk 45332
..turnin 27300
..accept 27376
step
goto 44.5,10.6
.' Click an Earthen Ring Gryphon |tip They look like big eagles standing in this spot.
.' Join the assault on Iso'rath |q 27376/1
step
goto 48.4,14.6
.talk 47991
..turnin 27376
..accept 27377
step
'Fight the oozes that attack
.' Try to fight as long as you can
.' Survive Iso'rath's defenses |q 27377/1
.' Click the Quest Complete box that pops up
..turnin 27377
..accept 27378
step
'Deathwing will attack you and Thrall
.' Aid Thrall in battling Deathwing |q 27378/1
.' Click the Quest Complete box that pops up
..turnin 27378
..accept 27379
step
goto 49.6,15.8
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom oof your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Stormcaller Jalara |q 27379/2
step
goto 49.1,13.1
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom oof your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Earthmender Duarn |q 27379/3
step
goto 47.0,13.1
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom oof your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Hargoth Dimblaze |q 27379/1
step
goto 47.5,15.6
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom oof your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Stormcaller Mylra |q 27379/4
step
goto 48.7,16.6
.talk 48059
..turnin 27379
..accept 27380
step
goto 48.8,14.9
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom oof your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Brain of Iso'rath##47960
.' Kill Iso'rath |q 27380/1
step
goto 44.0,10.6
.talk 45332
..turnin 27380
step
goto 44.1,10.5
.talk 48265
..accept 27485
step
goto 27.6,21.4
.' You will get captured by a red dragon
.' Meet with Lirastrasza |q 27485/1
step
goto 29.3,25.9
.talk 45528
..turnin 27485
..accept 27504
step
goto 29.9,31.3
.talk 45522
..turnin 27504
..accept 27505
step
goto 29.8,31.4
.talk 45562
..accept 27506
step
goto 29.7,33.1
.' Protect the Vermillion Menders while they heal Celastrasza to full health
.' Defend 5 Vermillion Menders |q 27505/1
.from Twilight Wyrmkiller##45748+
.' Use your Ruby Seeds on Twilight Wyrmkiller and Vermillion Mender corpses |use Ruby Seeds##61323
.' Reclaim 6 Dragonkin corpses |q 27506/1
step
goto 29.9,31.3
.talk 45522
..turnin 27505
step
goto 29.8,31.4
.talk 45562
..turnin 27506
step
goto 29.9,31.3
.talk 45522
..accept 27564
step
goto 29.3,25.9
.talk 45528
..turnin 27564
..accept 27507
..accept 27509
step
goto 29.3,26.0
.talk 45518
..accept 27508
step
goto 28.6,24.9
.talk 47121
.fpath Vermillion Redoubt
step
goto 18.4,16.7 |n
.' Enter the cave |goto 18.4,16.7,0.5 |noway |c
step
goto 18.0,16.9
.' Use your Flashgrowth Mote next to the Twilight Portal |use Flashgrowth Mote##61385 |tip It looks like a blue and pink swirled portal in a metal case.
.' Destroy the Twilight Portal |q 27509/1
step
goto 20.9,15.7
.from Twilight Abductor##45642+, Twilight Flamequencher##45618+
.kill 12 Twilight invaders |q 27507/1
.' Click Vermillion Eggs |tip They look like brown spiked eggs on the ground around this area.
.get 6 Vermillion Egg |q 27508/1
step
goto 29.3,26.0
.talk 45528
..turnin 27507
..turnin 27509
step
goto 29.3,26.0
.talk 45518
..turnin 27508
step
goto 29.3,26.0
.talk 45528
..accept 28101
step
goto 26.0,38.8
.talk 47592
..turnin 28101
..accept 28103
..accept 28104
step
goto 25.6,37.9
.from Twilight Spearwarder##47490+
.get Twilight Caravan Cargo Key |q 28104/1
.' Click a Twilight Caravan Chest |tip They look like boxes with a big purple jewel on top of them, sitting in wagons around this area.
.get Twilight's Hammer Gatestone |q 28104/2
.kill 8 Twilight Spearwarder |q 28103/1
step
goto 26.0,38.8
.talk 47592
..turnin 28103
..turnin 28104
..accept 28108
step
'Next to you:
.talk 47592
..accept 28107
step
goto 29.5,51.7
.' Go to this spot
.' Open the Dragonmaw Gate |q 28108/1
step
'Next to you:
.talk 47592
..turnin 28108
..accept 28109
step
goto 27.5,54.6
.from Twilight Sentinel##47406+, Twilight Guardsman##47394+, Twilight Stalker##47401+
.' Kill 30 Wyrm's Bend Cultists |q 28107/1
step
'Next to you:
.talk 47592
..turnin 28107
step
goto 22.8,56.1
.' Go to this spot
.' Secure the Entrance to Grim Batol |q 28109/1
step
goto 22.1,56.6
.talk 47605
..turnin 28109
step
goto 21.8,57.0
.talk 47603
..accept 28712
step
goto 14.9,16.3
.talk 49417
..turnin 28712
step
goto 14.1,15.4
.talk 49810
..accept 28758
step
goto 14.1,15.1
.' Click the Vermillion Vanguard |tip It's a red dragon.
.' Use the abilities on your hotbar on Twilight Shadowdrakes |tip They are blue dragons that fly around in the air in the area you fly to.
.kill 8 Twilight Shadowdrake |q 28758/1
step
goto 22.1,56.6
.talk 47605
..turnin 28758
..accept 28171
step
goto 59.1,69.8
.talk 47902
..turnin 28171
..accept 28191
..accept 28173
step
goto 59.0,69.8
.talk 47904
..accept 28175
step
goto 63.9,78.0
.' Use Alexstrasza's Tear in the small cave beneath this huge tree |use Alexstrasza's Tear##63139
.' Plant Alexstrasza's Tear |q 28175/1
step
goto 62.7,76.2
.from Obsidian Viletongue##47796+, Obsidian Charscale##47797+
.kill 10 Obsidian Dragonkin |q 28191/1
.' Use your Wyrmhunter Hooks on Obsidian Pyrewings |use Wyrmhunter Hooks##63092 |tip They are red dragons that fly in the sky around this area.  You will get a message on your screen when the Obsidian Pyrewing is almost dead.  When you see that message, use your Wyrmhunter Hooks on another Obsidian Pyrewing to jump to it.  If you fall, it can hurt you a lot.
.kill 8 Obsidian Pyrewing |q 28173/1
step
goto 59.1,69.8
.talk 47902
..turnin 28191
..turnin 28173
step
goto 59.0,69.8
.talk 47904
..turnin 28175
step
goto 59.1,69.8
.talk 47902
..accept 28176
step
goto 59.3,82.5
.' Use your Mother's Flame next to the big blue spikes eggs |use Mother's Flame##63126
.' Hatch the Obsidian Whelps |q 28176/1
step
goto 55.4,83.5 |n
.' Enter the cave |goto 55.4,83.5,0.5 |noway |c
step
goto 49.8,85.8
.' Go to this spot
.' Infiltrate the Obsidian Lair |q 28176/2
step
goto 44.9,91.0
.talk 47905
..turnin 28176
..accept 28247
.from Obsidia##47929
.' Defeat Obsidia |q 28247/1
step
goto 55.4,83.5 |n
.' Leave the cave |goto 55.4,83.5,0.5 |noway |c
step
goto 59.1,69.8
.talk 47902
..turnin 28247
..accept 28248
step
goto 43.4,57.4
.talk 45668
..turnin 28248
..accept 27492
step
goto 43.4,57.3
.talk 45669
..accept 27496
..accept 27490
step
goto 43.6,57.2
.talk 49599
.home Victor's Point
step
goto 43.9,57.3
.talk 47118
.fpath Victor's Point
step
goto 43.8,57.2
.talk 45904
..' Tell him you're here to lead the Wildhammer squad and drop off the SI:7 agents
.' Get your Wildhammer Squad |q 27490/1
step
goto 39.2,64.5
.' Go to this spot and land on the flashing blue X on the ground
.' Drop off the SI:7 |q 27490/2
step
goto 38.8,64.3
.' Use your Artillery Flare |use Artillery Flare##61363
.' Target the Northern Building |q 27496/1
step
goto 40.0,64.4
.' Use your Artillery Flare |use Artillery Flare##61363
.' Target the Northeastern Building |q 27496/2
step
goto 40.4,69.2
.' Use your Artillery Flare |use Artillery Flare##61363
.' Target the Southwestern Building |q 27496/3
step
goto 41.4,71.2
.' Use your Artillery Flare |use Artillery Flare##61363
.' Target the Southern Building |q 27496/4
step
goto 41.1,69.8
.from Bloodeye Magelord##45795+, Bloodeye Brute##45787+, Twilight Ettin##45838+
.kill 10 Bloodeye Clan ogres & ettins |q 27492/1
step
goto 43.4,57.3
.talk 45669
..turnin 27496
..turnin 27490
step
goto 43.4,57.4
.talk 45668
..turnin 27492
..accept 27494
step
goto 38.1,66.2
.' Click the Hidden Explosives |tip It looks like a wooden crate sitting up on this hill.
.' Detonate the Hidden Explosives |q 27494/1
.' Click the Quest Complete box that pops up
..turnin 27494
..accept 27498
step
goto 40.5,62.3
.' Use your Attack Signal at the top of this tower |use Attack Signal##61511
.' Signal the Attack |q 27498/1
.' Click the Quest Complete box that pops up
..turnin 27498
..accept 27500
step
goto 39.8,71.3 |n
.' Enter the cave |goto 39.8,71.3,0.5 |noway |c
step
goto 37.6,71.3
.from Za'brox##46017
.get Za's Head |q 27500/1
.get Brox's Head |q 27500/4
step
goto 38.7,70.2
.from Beeble'phod##46018
.get Phod's Head |q 27500/2
.get Beeble's Head |q 27500/3
step
'Hearth to Victor's Point |goto 43.6,57.3,0.5 |use Hearthstone##6948 |noway |c
step
goto 43.4,57.3
.talk 45669
..turnin 27500
..accept 27502
step
goto 38.9,64.0
.talk 46076
..' Tell him you're ready
.' Speak to the Squad commander |q 27502/1
step
'Follow the SI:7 Squad Commander and the SI:7 Agents up the path
.' Escort the SI:7 |q 27502/2
.' Click the Quest Complete box that pops up
..turnin 27502
..accept 27636
step
goto 36.4,66.0
.talk 45796
..turnin 27636
..accept 27652
..accept 27654
..accept 27657
step
goto 37.5,88.7
.talk 46242
..turnin 27657
..accept 27659
..accept 27660
step
goto 37.6,88.7
.talk 46243
..accept 27662
step
goto 44.1,81.4
.' Click the Air Portal Controller |tip It looks like metal canister sitting on the ground up on this floating island.
.kill Debilitated Aetharon |q 27659/2
step
goto 38.0,80.2
.' Click the Earth Portal Controller |tip It looks like metal canister sitting on the ground.
.kill Debilitated Apexar |q 27659/1
step
goto 33.2,62.4
.' Click the Water Portal Controller |tip It looks like metal canister sitting on the ground.
.kill Debilitated Edemantus |q 27659/3
step
goto 27.6,63.9
.talk 46413
..turnin 27660
..accept 27661
step
goto 35.2,67.4
.from Corrupted Elementalist##46204+, Citadel Veteran##46205+, Twilight Vindicator##46203+
.kill 10 Twilight Citadel cultists |q 27654/1
.from Dark Assassin##46202+ |tip They look like black shades that wander around this whole area.  They are much less common than the other enemies, so you will probably have to fly around this whole area and look for them.
.get 5 Dark Assassin's Pendant |q 27652/1
.from Enslaved Tempest##46328+, Enslaved Waterspout##46329+, Enslaved Inferno##46327+
.' Free 10 Enslaved Elementals |q 27662/1
step
goto 40.8,79.0
.kill Lord Cannon |q 27661/1
step
goto 37.6,88.7
.talk 46243
..turnin 27662
step
goto 37.5,88.7
.talk 46242
..turnin 27659
step
goto 36.4,66.0
.talk 45796
..turnin 27652
..turnin 27654
..accept 27688
..accept 27695
step
goto 27.6,63.9
.talk 46413
..turnin 27661
..accept 27719
step
goto 35.1,61.1
.' Use your Water of Life next to the Corpse of Forgemaster Finlay |use Water of Life##62503 |tip He's chained to an ancor, drowned underwater.
.' Extract Artifact Information |q 27719/1
step
goto 36.4,66.0
.talk 45796
..turnin 27719
step
goto 36.1,70.7
.kill Master Klem |q 27688/2 |tip Mathias Shaw will come and kill him for you after you've fought him for a little bit.
step
goto 40.2,84.0
.from Blindeye the Guardian##46399
.get The Elementium Axe |q 27695/1
step
goto 42.3,83.5
.kill Mia the Rose |q 27688/3 |tip She's in a small room at the top of this big building.  Mathias Shaw will come and kill her for you after you've fought her for a little bit.
step
goto 43.4,88.5
.kill Dame Alys Finnsson |q 27688/1 |tip Mathias Shaw will come and kill her for you after you've fought her for a little bit.
step
goto 36.4,66.0
.talk 45796
..turnin 27688
..turnin 27695
..accept 27700
step
goto 32.4,68.7
.' Use The Elementium Axe |use The Elementium Axe##62248
.' Free Lirastrasza |q 27700/1
step
goto 36.4,66.0
.talk 45796
..turnin 27700
..accept 27702
step
goto 37.5,75.4
.from Twilight Skyterror##46416+ |tip They look like blue dragons laying on the ground all around this area.  You will need to fly around and search for them, as there aren't many of them at one time.  Watch Lirastrasza in the sky and you will see the blue dragons fall, so you can immediately fly to them to make it easier.
.' Deliver 5 Coup de Graces |q 27702/1
step
goto 36.4,66.0
.talk 45796
..turnin 27702
..accept 27711
step
goto 37.5,88.7
.talk 46243
..turnin 27711
..accept 27720
step
goto 37.5,88.7
.talk 46243
..' Tell him you're ready for that wild ride
.' Ride the Mine Cart to the End of the Line |q 27720/2
step
'Next to you:
.talk 46513
..turnin 27720
..accept 27742
..accept 27743
step
goto 37.4,93.2
.' Click Elementium Shards and get them as you walk |tip They look like small piles of flat rocks on the ground inside this cave.
.' Click the Twilight Rune of Earth |tip It looks like a pink symbol on the ground.
..accept 27744
step
goto 35.2,90.4
.' Click Elementium Shards and get them as you walk |tip They look like small piles of flat rocks on the ground inside this cave.
.' Click the Twilight Rune of Water |tip It looks like a pink symbol on the ground.
.' Destroy the Rune of Water |q 27744/2
step
goto 33.5,88.4
.' Click Elementium Shards and get them as you walk |tip They look like small piles of flat rocks on the ground inside this cave.
.' Click the Twilight Rune of Air |tip It looks like a pink symbol on the ground.
.' Destroy the Rune of Air |q 27744/3
step
goto 34.3,86.6
.' Click Elementium Shards and get them as you walk |tip They look like small piles of flat rocks on the ground inside this cave.
.' Click the Twilight Rune of Fire |tip It looks like a pink symbol on the ground.
.' Destroy the Rune of Fire |q 27744/4
step
goto 34.5,86.3
.from Twilight Miner##46610+, Depths Overseer##46579+
.kill 12 Elementium Depths cultists |q 27743/1
.' Click Elementium Shards |tip They look like small piles of flat rocks on the ground inside this cave.  You can also kill Elementium Spinner to get Elementium Shards.
.get 6 Elementium Shard |q 27742/1
step
'Next to you:
.talk 46513
..turnin 27742
..turnin 27743
..turnin 27744
..accept 27745
step
goto 36.4,83.8
.from Magmatooth##46611
.get Fire Portal Controller |q 27745/2
.' Use your Fire Portal Controller |use Fire Portal Controller##62394
.' Use the Fire Portal Controller at the Fire Portal |q 27745/1
step
goto 37.5,88.7
.talk 46243
..turnin 27745
..accept 27782
step
goto 36.4,66.0
.talk 45796
..turnin 27782
..accept 27784
step
goto 45.4,88.0
.' Click The Hammer of Twilight |tip It's a huge hammer floating in a beam of blue light on this high platform.
..turnin 27784
..accept 27787
.' Watch the cutscene
.' Survive Skullcrusher's Backhand |q 27787/1
step
goto 45.4,87.9
.kill Skullcrusher the Mountain |q 27787/2 |tip Follow the instructions that pop up on your screen.  Click the altars surrounding the fight, you will gain buffs from them to help you fight.  The altars are stone blocks with candles on them.  Click Warlord Zaela when she becomes unconscious.  You will see a green arrow bouncing above her when you need to click her.  Eventually, she will fall to the ground near the end of the fight.  Click her body to play the drums she drops to call reinforcements to help finish the fight.
step
'Hearth to Victor's Point |goto 43.6,57.3,0.5 |use Hearthstone##6948 |noway |c
step
goto 43.4,57.4
.talk 45668
..turnin 27787
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Twilight Highlands\\Thundermar Dailies",[[
description Walks you through completing the
description daily quests in the Thundermar
description region of Twilight Highlands.
author support@zygorguides.com
daily
step
goto Twilight Highlands,48.6,30.7
.talk 49386
..accept 28863 |daily |tip This is a 2-person group quest.
step
goto 49.0,29.8
.talk 46591
..accept 28860 |daily
..accept 28864 |daily
step
goto 49.8,29.2
.talk 48010
..accept 28861 |daily
..accept 28862 |daily
step
goto 46.2,37.4
.from Dragonmaw Marauder##46310+
.get 8 Dragonmaw Insignia |q 28860/1
.' Click Thundermar Ale Kegs |tip They look like wooden barrels on the ground around this area.
.get 10 Wildhammer Keg |q 28861/1
.' Click Wildhammer Food Stores |tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
.get 10 Wildhammer Food Stores |q 28862/1
.' You can find more around [49.1,37.3]
step
goto 49.0,37.3
.kill Warlord Halthar |q 28863/1 |tip He flies around on a red drake in the sky, but he lands in this spot to start fighting.  He is elite, and this is marked as a 2-person group quest, so you may need help killing him.
step
goto 64.4,22.6
.talk 48758
..' Tell him you're here to escort a delivery to Kirthaven
.' Follow the dwarves
.from Dragonmaw Skirmisher##48799+
.' Escort the Supply Caravan |q 28864/1
step
goto 49.8,29.2
.talk 48010
..turnin 28861
..turnin 28862
step
goto 49.0,29.8
.talk 46591
..turnin 28860
..turnin 28864
step
goto 48.6,30.7
.talk 49386
..turnin 28863
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Tol Barad Peninsula\\Baradin Base Camp Dailies",[[
description Walks you through completing the
description daily quests in the Baradin Base
description Camp region of Tol Barad Peninsula.
author support@zygorguides.com
daily
#include "A_Baradin_Base_Camp_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Tol Barad\\Baradin Hold Dailies",[[
description Walks you through completing the
description daily quests in the Baradin Hold
description region of Tol Barad.
author support@zygorguides.com
daily
#include "A_Baradin_Hold_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\Guardians of Hyjal",[[
description Walks you through the process
description of obtaining Exalted reputation
description with the Guardians of Hyjal
description faction.
author support@zygorguides.com
step
map Mount Hyjal
'To gain reputation with the Guardians of Hyjal faction:
.' Complete all quests in the Mount Hyjal zone
.' Once you earn Friendly reputation with the Guardians of Hyjal faction, you can buy the Tabard of the Guardians of Hyjal. |tip Wear the Tabard of the Guardians of Hyjal and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Guardians of Hyjal faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
..' You can buy the Tabard of the Guardians of Hyjal by talking to Provisioner Whitecloud at [Mount Hyjal 62.8,23.9]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\The Earthen Ring",[[
description Walks you through the process
description of obtaining Exalted reputation
description with The Earthen Ring faction.
author support@zygorguides.com
step
map Shimmering Expanse
'To gain reputation with The Earthen Ring faction:
.' Complete all quests in the Vashj'ir zone
.' Complete the Deepholm Pre-Quests guide in the Deepholm section.
.' Complete the Twilight Highlands Pre-Quests guide in the Twilight Highlands section.
.' Once you earn Friendly reputation with The Earthen Ring faction, you can buy the Tabard of the Earthen Ring. |tip Wear the Tabard of the Earthen Ring and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with The Earthen Ring faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
..' You can buy the Tabard of the Earthen Ring by talking to Provisioner Arok at [Shimmering Expanse 49.1,42.2]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\Therazane",[[
description Walks you through the process
description of obtaining Exalted reputation
description with the Therazane faction.
author support@zygorguides.com
step
map Deepholm
'To gain reputation with the Therazane faction:
.' Complete the Deepholm Pre-Quests guide in the Deepholm section.
.' Complete the Therazane's Throne Dailies guide section in the Deepholm section. |tip Do this daily, if you'd like.
.' Once you earn Friendly reputation with the Therazane faction, you can buy the Tabard of Therazane. |tip Wear the Tabard of Therazane and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Therazane faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
..' You can buy the Tabard of Therazane by talking to D'lom the Collector at [Deepholm 54.1,33.3]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\Ramkahen",[[
description Walks you through the process
description of obtaining Exalted reputation
description with the Ramkahen faction.
author support@zygorguides.com
step
map Uldum
'To gain reputation with the Ramkahen faction:
.' Complete the Uldum Pre-Quests guide in the Uldum section.
.' Complete the Tahret Grounds Dailies guide in the Uldum section. |tip Do this daily, if you'd like.
.' Once you earn Friendly reputation with the Ramkahen faction, you can buy the Tabard of Ramkahen. |tip Wear the Tabard of Ramkahen and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Ramkahen faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
..' You can buy the Tabard of Ramkahen by talking to Blacksmith Abasi at [Uldum 54.1,33.3]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\Wildhammer Clan",[[
description Walks you through the process
description of obtaining Exalted reputation
description with the Wildhammer Clan faction.
author support@zygorguides.com
step
map Twilight Highlands
'To gain reputation with the Wildhammer Clan faction:
.' Complete the Twilight Highlands Pre-Quests guide in the Twilight Highlands section.
.' Complete the Thundermar Dailies guide in the Twilight Highlands section. |tip Do this daily, if you'd like.
.' Once you earn Friendly reputation with the Wildhammer Clan faction, you can buy the Tabard of the Wildhammer Clan. |tip Wear the Tabard of the Wildhammer Clan and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Wildhammer Clan faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
..' You can buy the Tabard of the Wildhammer Clan by talking to Craw MacGraw at [Twilight Highlands 48.6,30.7]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\Baradin's Wardens",[[
description Walks you through the process
description of obtaining Exalted reputation
description with the Baradin's Wardens faction.
author support@zygorguides.com
step
map Tol Barad Peninsula
'To gain reputation with the Baradin's Wardens faction:
.' Complete the Baradin Base Camp Dailies guide in the Tol Barad Peninsula section. |tip Do this daily, if you'd like.
.' Complete the Baradin Hold Dailies guide in the Tol Barad section. |tip Do this daily, if you'd like.  The daily quests in this section will only be available if the Alliance faction currently controls Tol Barad.
.' Once you earn Friendly reputation with the Baradin's Wardens faction, you can buy Baradin's Wardens Commendations from Quartermaster Brazie at [72.4,63.2] |tip They cost 10 Tol Barad Commendations each and you can use the Baradin's Wardens Commendations to increase your Baradin's Wardens reputation by 250.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Zandalari Menace Quest Line",[[
description Walks you through completing
description the Zandalari Menace quest line
description in Stranglethorn Vale.
description
description You must be level 85 to be
description able to use this guide.
author support@zygorguides.com
startlevel 85
step
goto Stormwind City,25.9,29.3
.talk 52654
..accept 29100
..accept 29102
step
goto 70.9,72.5
.talk 352
.' Fly to Fort Livingston, Stranglethorn Vale |goto Northern Stranglethorn,52.6,66.3,0.5 |noway |c
step
goto Northern Stranglethorn,52.8,66.4
.talk 52281
..turnin 29102
..accept 29103
step
goto 52.0,61.4
.kill 10 Jungle Serpent |q 29103/1
.' Click Fort Livingston Adventurers |tip They look like green bodies laying on the ground around this area.
.' Heal 10 Adventurers |q 29103/2
step
goto 52.8,66.4
.talk 52281
..turnin 29103
step
'Next to you:
.talk 52234
..accept 29104
step
goto 52.9,66.5
.' Click the Bonfire |tip It's a big pile of sticks on fire in the middle of Fort Livingston.
.' Watch the dialogue
.' Use the Bonfire in Fort Livingston |q 29104/1
step
'Next to you:
.talk 52234
..turnin 29104
step
goto 52.8,66.4
.talk 52281
..accept 29105
step
goto 44.1,22.9
.talk 52294
..turnin 29105
..accept 29114
step
goto 50.4,21.7
.talk 52346
..turnin 29114
..accept 29115
step
goto 64.0,19.6
.from Mauti?##52349
.' Bring Grent Direhammer to the body of Mauti |q 29115/1
step
'Click the Complete Quest box that appears under you minimap
..turnin 29115
.' You will automatically accept a new quest:
..accept 29116
step
goto 77.7,68.4
.' Go to this spot
.' Find Mauti's Lair |q 29116/1
step
'Next to you:
.talk 52234
..turnin 29116
..accept 29120
step
goto 77.2,69.0
.from Mauti##52372
.' Let Bwemba Inspect the Cat |q 29120/1
step
'Next to you:
.talk 52234
..turnin 29120
..accept 29213
step
goto 76.5,67.5 |n
.' Enter the cave |goto 76.5,67.5,0.5 |noway |c
step
goto 76.1,66.7
.talk 52371
..turnin 29213
..accept 29121
step
goto 76.0,66.5
.' Click Direhammer's Boots |tip They look like a small pair of brown boots sitting on the ground inside this cave.
.get Direhammer's Boots |q 29121/1
step
goto 76.1,66.7
.talk 52371
..turnin 29121
step
goto 76.1,66.7
.talk 52374
..accept 29267 |instant
step
'Next to you:
.talk 52234
..accept 29124
step
goto 76.5,67.5 |n
.' Leave the cave |goto 76.5,67.5,0.5 |noway |c
step
goto 47.8,12.0
.talk 52410
..turnin 29124
..accept 29131
step
goto 47.5,11.4
.from Gurubashi War-Seeker##53165+, Gurubashi Bloodfury##52406+, Gurubashi Soul-Seeker##53166+ |tip Once the bar fills up at the bottom of your screen, you will complete the quest.
.' Help Defend the Camp |q 29131/1
step
goto 47.8,12.0
.talk 52410
..turnin 29131
step
goto 47.9,11.9
.talk 52753
..accept 29133
step
goto 47.9,11.9
.talk 52753
..' Ask him if one of his gryphons can get you to the Digsite
.' You will fly to the Explorers' League Digsite
.' Arrive at the Digsite |q 29133/1
step
'Next to you:
.talk 52234
..turnin 29133
..accept 29150
step
goto The Cape of Stranglethorn,54.0,42.6
.from Digsite Zombie##52604+
.' Rescue 10 Digsite Survivors |q 29150/1 |tip You may not rescue every zombie you kill.
step
'Next to you:
.talk 52234
..turnin 29150
..accept 29151
step
goto 55.0,42.0
.' Click the Grain Sack |tip It looks like a yellow bag sitting on the ground next to a big pile of barrels and crates.
.' Watch the dialogue
.' Search the Supplies |q 29151/1
step
'Next to you:
.talk 52234
..turnin 29151
step
goto 55.3,42.0
.talk 52646
..accept 29152
step
goto 44.9,65.9 |n
.' Enter the tunnel |goto 44.9,65.9,0.5 |noway |c
step
goto 41.0,73.1
.talk 52767
..turnin 29152
step
goto 41.2,73.0
.' Go to this spot
.' Watch the dialogue
.' Help Bwemba Find the Darkspear Emissary |q 29100/1
step
'Next to you:
.talk 52234
..turnin 29100
step
'To continue with the Zul'Gurub dungeon quest line:
goto 41.2,73.1
.talk 2496
..accept 29153
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Mount Hyjal\\How To Use Firelands Guide Sections - READ FIRST",[[
description Walks you through how to use the
description Firelands guide sections.
author support@zygorguides.com
step
'The Firelands quests are very dynamic.  You will not be able to complete some daily quests each day, as only a limited amount are available each day.  |tip Accept and complete as many as you can, and simply skip over the ones you can't accept that day.
'
'
'You will need to use the Firelands Quests and Firelands Dailies together.  Complete as many quests as you can in the Firelands Quests guide section, and use the Firelands Dailies guide section to gain Marks of the World Tree.  |tip Marks of the World Tree are currency needed to complete certain quests in order to unlock more daily quests.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Mount Hyjal\\Firelands Pre-Quests",[[
description Contains the pre-quests to unlock the Firelands quest line and daily quests.
description You must be at least level 80 to complete this guide section.
author support@zygorguides.com
condition end completedq(25372)
step
goto Stormwind City,62.9,71.6
.' Click the Hero's Call Board |tip It's a big white stone hanging board with a gold lion head on it.
..accept 27726
step
goto 82.6,28.2
.talk 15187
..' Ask her to send you to Moonglade
.' Teleport to Moonglade |goto Moonglade |noway |c
step
goto Moonglade,45.5,44.9
.talk 39865
..turnin 27726
..accept 25316
step
goto 46.1,45.6
.' Click Aronus |tip It's a green dragon flying in place in this spot.
.' You will fly to Mount Hyjal |goto Mount Hyjal |noway |c
step
goto 63.1,24.1
.talk 40843
.home Nordrassil
step
goto Mount Hyjal,62.0,24.9
.talk 40928
..turnin 25316
..accept 25317
step
goto 62.1,21.6
.talk 41861
.fpath Nordrassil
step
goto 64.0,22.7
.talk 39925
..accept 25460
step
goto 64.1,22.5
.talk 40278
..accept 25370
step
goto 67.1,22.6
.kill 8 Scalding Rock Elemental |q 25460/1
.' Click Juniper Berries |tip They look like small green bushes with small red berries on them, at the base of trees around this area.
.collect 4 Juniper Berries##53009 |n
.' Use your Juniper Berries on Faerie Dragons |use Juniper Berries##53009 |tip They look like small blue flying dragons around this area.
.' Follow the Faerie Dragons to find Twilight Inciters
.kill 4 Twilight Inciter |q 25370/1
step
goto 64.1,22.5
.talk 40278
..turnin 25370
..accept 25574
step
goto 64.0,22.7
.talk 39925
..turnin 25460
step
goto 55.8,15.4
.' Use Tholo's Horn to call for an emerald dragon |use Tholo's Horn##55122
.' Burn the Infiltrators' Encampment |q 25574/1
step
goto 64.1,22.5
.talk 40278
..turnin 25574
step
goto 47.7,35.5
.talk 15362
..turnin 25317
..accept 25319
step
goto 47.6,35.5
.talk 39869
..accept 25472
step
goto 43.3,27.4
.' Click Charred Staff Fragments |tip They look like small white pieces on the ground around this area.
.get 8 Charred Staff Fragment |q 25472/1
step
goto 47.2,25.6
.kill 4 Twilight Flamecaller |q 25319/1
.kill 10 Twilight Vanquisher |q 25319/2
step
goto 47.7,35.5
.talk 15362
..turnin 25319
..turnin 25472
..accept 25323
step
goto 48.5,29.2
.' Use your Flameseer's Staff on Blazebound Elementals |use Flameseer's Staff##53107
.kill 30 Unbound Flame Spirit |q 25323/1
step
goto 47.7,35.5
.talk 15362
..turnin 25323
..accept 25464
step
goto 44.1,26.8
.' Use your Flameseer's Staff on Baron Geddon |use Flameseer's Staff##54463 |tip He's a big fire elemental standing in the middle of this crater.
.' Weaken Baron Geddon 20 Times |q 25464/1 |tip Run away when you see Galrond of the Claw yell "Look out!".
step
goto 47.7,35.5
.talk 15362
..turnin 25464
step
goto 47.6,35.5
.talk 39869
..accept 25430
step
goto 48.4,18.9
.talk 38917
..turnin 25430
..accept 25320
step
goto 44.5,18.9
.talk 40096
..turnin 25320
..accept 25321
step
goto 44.5,21.5
.from Twilight Overseer##40123
.get Twilight Overseer's Key |q 25321/1
step
goto 44.5,18.9
.talk 40096
..turnin 25321
..accept 25424
step
goto 48.4,18.9
.talk 38917
..turnin 25424
..accept 25324
step
goto 52.5,17.3 |n
.' Enter the cave |goto 52.5,17.3,0.5 |noway |c
step
goto 56.8,18.8
.talk 40139
..turnin 25324
..accept 25325
step
goto 52.5,17.3 |n
.' Leave the cave |goto 52.5,17.3,0.5 |noway |c |tip Follow the path up.
step
goto 52.2,17.4
.talk 40178
..turnin 25325
..accept 25578
step
goto 62.0,24.9
.talk 40928
..turnin 25578
..accept 25584
step
goto 35.7,19.4
.talk 39429
..turnin 25584
..accept 25255
step
goto 35.7,19.7
.talk 39427
..accept 25233
..accept 25234
step
goto 38.1,23.0
.kill 6 Twilight Hunter |q 25255/1
.kill 4 Twilight Proveditor |q 25233/1 |tip They walk with 3 Twilight slaves and a Twilight Slavedriver.
.' Click Twilight Supplies |tip The Twilight Slaves are carrying them.  You can get the supplies after you kill the Twilight Proveditor and Twilight Slavedriver.
.get 36 Twilight Supplies |q 25234/1
step
goto 35.7,19.7
.talk 39427
..turnin 25233
..turnin 25234
..accept 25268
step
goto 35.7,19.4
.talk 39429
..turnin 25255
step
goto 30.1,31.3
.talk 39433
..turnin 25268
..accept 25271
step
goto 29.3,30.3
.from Lycanthoth Vandal##39445+
.get 6 Polluted Incense |q 25271/1
step
goto 30.1,31.3
.talk 39433
..turnin 25271
..accept 25273
step
goto 32.4,37.3
.' Use Lycanthoth's Incense next to Lycanthoth's Altar |use Lycanthoth's Incense##52682 |tip Inside the cave.
.kill Lycanthoth |q 25273/1
step
goto 32.3,37.0
.talk 39627
..turnin 25273
step
goto 29.6,29.3
.talk 39627
..accept 25280
step
goto 28.2,29.8
.talk 39433
..turnin 25280
..accept 25278
step
goto 28.2,29.9
.talk 39434
..accept 25297
step
goto 28.6,30.2
.talk 39435
..accept 25300
step
goto 28.9,32.2
.' Click a Bitterblossom |tip They look like purple flowers around this small island.
.get Bitterblossom |q 25297/2
step
goto 27.6,34.2
.' Click a Stonebloom |tip They look like piles of red-ish bags on the ground around this area.
.get Stonebloom |q 25297/1
step
goto 27.2,35.2
.' Click the Eye of Twilight |tip It looks like a glowing purple ball in a metal rod with a hook on it.
..turnin 25300
..accept 25301
step
goto 28.4,35.8
.' Click a Darkflame Ember |tip They are purple glowing coals sitting in a brazier.
.get Darkflame Ember |q 25297/3
step
goto 28.4,36.4
.' Click the Twilight Cauldron |tip It's a metal pot with blue smoke coming out of it.
..turnin 25297
..accept 25298
step
goto 27.0,36.0 |n
.' Enter the cave |goto 27.0,36.0,0.5 |noway |c
step
goto 27.2,40.8
.talk 39797
..accept 25328 |tip This quest is currently bugged, so some players are able to accept the quest while others cannot.
step
goto 26.5,38.5
.' Click Gar'gol's Personal Treasure Chest |tip It's a small metal chest sitting on a small stone mound.
.get Rusted Skull Key |q 25328/1
step
goto 25.8,41.7
.' Click The Twilight Apocrypha |tip It's an open book layin on a wooden crate at the very back of the cave.
..turnin 25301
..accept 25303
step
goto 26.0,41.8
.' Click the Crucible of Fire |tip It looks like a floating glowing hourglass.
.' Activate the Crucible of Fire |q 25303/3
step
goto 25.7,41.7
.' Click the Crucible of Earth |tip It looks like a floating glowing hourglass.
.' Activate the Crucible of Earth |q 25303/1
step
goto 25.8,41.9
.' Click the Crucible of Air |tip It looks like a floating glowing hourglass.
.' Activate the Crucible of Air |q 25303/2
step
goto 26.0,41.6
.' Click the Crucible of Water |tip It looks like a floating glowing hourglass.
.' Activate the Crucible of Water |q 25303/4
step
goto 25.8,41.7
.' Click The Twilight Apocrypha |tip It's an open book layin on a wooden crate at the very back of the cave.
..turnin 25303
..accept 25312
step
.' While inside the cave do the following:
.from Hovel Brute##39642+, Hovel Shadowcaster##39643+
.' Slay 8 Minion of Gar'gol |q 25278/1
.talk 39644
..' Administor the drought
.' Free 8 Twilight Servitors |q 25298/1
step
goto 27.2,40.8
.talk 39797
..turnin 25328
..accept 25332
step
goto 27.1,36.0 |n
.' Leave the cave |goto 27.1,36.0,0.5 |noway |c |q 25332
.' Escort Kristoff Out |q 25332/1
step
goto 28.6,30.2
.talk 39435
..turnin 25312
..turnin 25332
step
goto 28.2,29.8
.talk 39433
..turnin 25278
..accept 25352
..accept 25353
step
goto 28.2,29.9
.talk 39434
..turnin 25298
step
goto 27.4,39.2
.kill 8 Twilight Stormcaller |q 25352/1
.kill 5 Howling Riftdweller |q 25352/2
.' Click a Lightning Channel |tip They look like rods standing upright around this area, with lamps at the top of them.
.get Charged Condenser Jar |q 25353/1
step
'Use your Totem of Goldrinn |use Totem of Goldrinn##52853
.talk 39627
..turnin 25353
..accept 25618
step
goto 26.2,41.0 |n
.' Go inside the blue portal |goto 26.2,41.0,0.5 |noway |c
step
goto 26.3,41.9
.talk 40834
..turnin 25618
..accept 25575
..accept 25577
step
goto 26.3,42.0
.talk 40837
..accept 25576
step
.' Do the following in the Firelands Forgeworks
.kill 12 Dark Iron Laborer |q 25576/1
.from Searing Guardian##40841+
.collect 8 Smoldering Core##55123 |n
.' Use your Smoldering Cores next to Twilight Anvils |use Smoldering Core##55123 |tip They are small anvils sitting on the ground around this area.
.' Destroy 8 Smoldering Cores |q 25577/1
.' Click Twilight Arms Crates |tip They look like wooden boxes sitting on the ground around this area.
.' Destroy 10 Twilight Arms Crates |q 25575/1
step
goto 26.3,42.0
.talk 40837
..turnin 25576
step
goto 26.3,41.9
.talk 40834
..turnin 25575
..turnin 25577
..accept 25599
step
goto 30.7,41.7
.kill Cindermaul |q 25599/1
.' Click the Battered Stone Chest |tip It spawns after you kill Cindermaul.
.get Tome of Openings |q 25599/2
step
goto 26.3,41.9
.talk 40834
..turnin 25599
..accept 25600
step
goto 31.6,46.0
.' Click the Portal Runes |tip They are brown metal plates on the ground on this small circular island in the lava.
.' Lure Forgemaster Pyrendius onto the activated Portal Runes |tip This will weaken him and allow you to kill him.
.kill Forgemaster Pyrendius |q 25600/1
step
goto 26.3,41.9
.talk 40834
..turnin 25600
..accept 25611
step
goto 25.9,40.9 |n
.' Go inside the blue portal |goto 25.9,40.9 <30 |noway |c
step
goto 28.2,29.8
.talk 39433
..turnin 25352
..turnin 25611
step
goto Mount Hyjal,27.0,62.7
.talk 46987
..accept 27874
step
goto 28.2,29.9
.talk 39434
..accept 25630
step
goto 19.0,40.9
.talk 39927
..turnin 25630
..accept 25381
..accept 25382
step
goto 19.2,37.9
.talk 39930
..accept 25385
step
goto 19.0,37.0
.talk 39928
..accept 25404
step
goto 19.6,36.4
.talk 41860
.fpath Grove of Aessina
step
goto 22.3,44.9
.talk 39933
..' Tell him you've been sent to request his aid, then tell him he could be destroyed, then ask him if he will help you
.' Persuade Blackhorn |q 25404/1
step
goto 22.3,44.9
.talk 39933
..turnin 25404
..accept 25408
step
goto 21.8,43.7
.from Wailing Weed##40066+
.get 8 Bileberry |q 25408/1
step
goto 22.3,44.9
.talk 39933
..turnin 25408
..accept 25411
step
goto 14.4,45.4
.from Twilight Inferno Lord##39974
.' Use your Bottled Bileberry Brew on the corpse of a Twilight Inferno Lord |use Bottled Bileberry Brew##53120
.' Subjugate a Twilight Inferno Lord |q 25411/1
.talk 40093
..turnin 25411
..accept 25412
step
goto 14.3,45.4
.' Click the Southern Firestone |tip It looks like a metal stand with a small flame at the top of it.
.' Examine the Southern Firestone |q 25412/3
step
goto 11.6,41.5
.' Click the Central Firestone |tip It looks like a metal stand with a small flame at the top of it.
.' Examine the Central Firestone |q 25412/2
step
goto 9.6,36.5
.' Click the Northern Firestone |tip It looks like a metal stand with a small flame at the top of it.
.' Examine the Northern Firestone |q 25412/1
step
goto 13.3,41.4
.kill 10 Raging Firestorm |q 25381/1
.kill 6 Twilight Inferno Lord |q 25382/1
.' Click Panicked Bunnies and Terrified Squirrels |tip They are small and run around this area.
.get 10 Frightened Animal |q 25385/1
step
goto 19.0,40.9
.talk 39927
..turnin 25381
..turnin 25382
step
goto 19.2,37.9
.talk 39930
..turnin 25385
..accept 25392
step
goto 22.3,44.9
.talk 39933
..turnin 25412
..accept 25428
step
goto 12.9,41.4
.' Use your Charred Branch while in the burning forest area |use Charred Branch##53464
.from Thol'embaar##40107
.get Black Heart of Thol'embaar |q 25428/1
step
goto 14.5,40.8
.' Click 3 Injured Fawns |tip They look like tiny deer laying on the ground around this area.
.' Lead the Injured Fawns back to Mylune at [19.2,37.9]
.' Escort 3 Injured Fawns Home |q 25392/1
step
goto 19.2,37.9
.talk 39930
..turnin 25392
step
goto 22.3,44.9
.talk 39933
..turnin 25428
step
goto 19.0,40.9
.talk 39927
..accept 25940
step
goto 13.6,32.8
.talk 39932
..turnin 25940
..accept 25462
step
goto 14.2,32.1
.' Click the Climbing Tree |tip They look like small ladders leaning aginst the trees around this area.
.' Click Hyjal Bear Cubs in the tree
.' Use your Climb Up ability to climb to the top of the tree
.' Use your Chuck-a-bear ability to throw the cubs down |tip Aim the yellow arrow at the bearskin trampoline on the ground.
.' Rescue 6 Hyjal Bear Cubs |q 25462/1
step
goto 13.6,32.8
.talk 39932
..turnin 25462
..accept 25490
step
goto 21.6,59.1
.kill 8 Charbringer |q 25490/1
step
goto 27.1,62.6
.talk 39858
..turnin 25490
..accept 25491
..accept 25493
step
goto 27.1,63.0
.talk 40331
..accept 25492
step
goto 36.2,58.6
.kill 10 Lava Surger |q 25492/1
.from Core Hound##+
..get 4 Core Hound Entrails |q 25493/1
.' Click Scorched Soil |tip They look like piles of dirt around this area.
..get 10 Hyjal Seedling |q 25491/1
step
goto 27.1,62.6
.talk 39858
..turnin 25491
..turnin 25493
..accept 25507
step
goto 27.1,63.0
.talk 40331
..turnin 25492
..accept 25502
step
goto 33.0,64.6
.' Click the Flameward |tip It's a floating stone in a golden claw stand.
.' Activate the Flameward |q 25502/1
.' Defend the Flameward |q 25502/2
step
goto 39.3,54.1
.' Use your Heap of Incendosaur Innards near Nemesis |use Heap of Incendosaur Innards##54744 |tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
.' Click Nemesis when he becomes friendly
.get Nemesis Shell Fragment |q 25507/1
step
goto 27.1,62.6
.talk 39858
..turnin 25507
..accept 25510
step
goto 27.1,63.0
.talk 40331
..turnin 25502
step
goto 24.7,55.7
.talk 41504
..turnin 25510
..accept 25514
..accept 25519
step
goto 23.8,56.0
.' Click the Rod of Subjugation |tip It's a huge metal rod with an orange spinning ball on top of it.
..' Disable Rod of Subjugation 1 |q 25514/1
step
goto 25.3,54.8
.' Click the Rod of Subjugation |tip It's a huge metal rod with an orange spinning ball on top of it.
..' Disable Rod of Subjugation 2 |q 25514/2
step
goto 24.7,55.7
.talk 41504
..turnin 25514
step
goto 24.4,57.4
.from Deep Corruptor##40561+ |tip They are found underwater
.' Save 6 Tortolla's Eggs |q 25519/1
step
goto 24.7,55.7
.talk 41504
..turnin 25519
..accept 25520
step
goto 27.1,62.6
.talk 39858
..turnin 25520
step
goto 44.4,46.2
.talk 41005
..turnin 27874
..accept 25663
step
goto 42.2,45.5
.talk 41006
..accept 25655
..accept 25656
step
goto 41.2,42.6
.talk 43481
.fpath Shrine of Aviana
step
goto 40.3,44.3
.' Use your Sacred Nectar next to Aviana's Burial Circle |use Sacred Nectar##55208
..' Offer the Nectar |q 25663/1
.talk 41068
..turnin 25663
..accept 25665
step
goto 38.5,43.0
.from Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
..' Kill 10 Wormwing Harpies |q 25655/1
.' Click Stolen Hyjal Eggs |tip They look like big white eggs sitting at the base of trees around this area.
..get 8 Hyjal Egg |q 25656/1
step
goto 42.2,45.5
.talk 41006
..turnin 25655
..turnin 25656
..accept 25731
step
goto 44.4,46.2
.talk 41005
..turnin 25665
..accept 25664
step
goto 38.3,44.2
.' Click the Harpy Signal Fire |tip It's a brazier with red fire in it.
..' Fight Marion Wormwing until she gets captured |q 25731/1
.talk 41112
..' Ask her why she is stealing eggs, then tell Thisalee to kill her
..' Interrogate Marion Wormwing |q 25731/2
step
goto 35.7,42.3
.' Use your Enormous Bird Call in Blaithe's Roost |use Enormous Bird Call##55211 |tip It's a huge bird nest sitting on top of this mountain peak.
.from Blaithe##41084
..get Ancient Feather |q 25664/1
step
goto 42.2,45.5
.talk 41006
..turnin 25731
step
goto 44.4,46.2
.talk 41005
..turnin 25664
step
goto 43.5,45.9
.talk 40997
..accept 25740
step
goto 32.8,70.8
.talk 41006
..turnin 25740
..accept 25746
..accept 25758
step
goto 31.3,77.1
.' Click the Codex of Shadows |tip It's an open book sitting on a wooden box.
..accept 25763
step
goto 30.9,76.9
.from Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
..' Slay 12 Sethria's Minions |q 25746/1
.' Click Twilight Armor Plates |tip They look like tan pieces of metal laying on the ground around this area.
..get 8 Twilight Armor Plate |q 25758/1
step
goto 32.8,70.8
.talk 41006
..turnin 25746
..turnin 25758
..accept 25761
..turnin 25763
..accept 25764
step
goto 31.6,75.8
.' Use Thisalee's Shiv on Twilight Juggernauts |use Thisalee's Shiv##55883 |tip Use Thisalee's Shive multiple times to remove the Twilight Juggernauts' Armor Plating and make them weaker.
..kill 3 Twilight Juggernaut |q 25761/1
.' Click Shadow Cloak Generators |tip They look like blue glowing machines around this area.
..' Unveil and Defend Aviana's Egg |q 25764/1
step
goto 32.8,70.8
.talk 41006
..turnin 25761
..turnin 25764
..accept 25776
step
goto 35.5,98.0
.' Fight Sethria
..' Use Thisalee's Signal Rocket when Sethria turns into a dragon |use Thisalee's Signal Rocket##56003
..kill Sethria |q 25776/1
step
goto 32.8,70.8
.talk 41006
..turnin 25776
..accept 25795
step
goto 44.4,46.2
.talk 41005
..turnin 25795
..accept 25807
step
goto 44.3,48.0
.' Use Herald's Incense next to Aviana's Egg |use Herald's Incense##56016 |tip Aviana's Egg is in the tree tower, in a side room.
.' Burn Herald's Incense |q 25807/1
step
goto 44.2,47.8
.talk 41308
..turnin 25807
step
goto 44.1,45.9
.talk 41003
..accept 25810
step
goto 43.8,46.0
.talk 47002
..accept 25830
.' If you cannot pick up the quest, go here to get it: 62.0,24.9
step
goto 39.1,58.3 |n
.' Go inside the blue portal |goto 39.1,58.3,0.3 |noway |c
step
goto 37.2,56.2
.talk 40578
..turnin 25810
..accept 25523
step
goto 37.2,56.1
.' Click the Twilight Weapon Rack |tip It's a wooden stand with some weapons leaning against it.
.collect Twilight Firelance##52716 |q 25523
step
goto 37.4,56.0
.' Equip the Twilight Firelance |use Twilight Firelance##52716
.' Click Aviana's Guardian to ride it |invehicle |tip They are hippogryphs.
step
goto 36.6,53.4
.' Use your Flap ability on your hotbar repeatedly to fly to this green flag
.' Land next to the Guardian Flag |tip It's a green flag on this small floating island.
.' Visit the Guardian Flag |q 25523/1
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25523
..accept 25525
step
goto 35.4,51.7
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.' Fly into Twilight Buzzards to joust them
.kill 10 Twilight Knight Rider |q 25525/1
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25525
..accept 25544
step
goto 35.4,51.7
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.' Fly into Twilight Firebirds to joust them |tip Be careful, don't let the burning Falling Boulders hit you.
.kill 10 Twilight Lancer |q 25544/1
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25544
..accept 25560
step
goto 36.6,53.3
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.' Run over Firelands Eggs |tip They look like blue eggs on the ground around this area.
.' Destroy 40 Firelands Eggs |q 25560/1
.' You can find more Firelands Eggs at [39.3,54.1]
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25560
..accept 25832
step
'Click the red arrow on your hot bar to get off the hippogryph |outvehicle |c
step
goto 39.1,58.1 |n
.' Don't forget to equip your real weapon again
.' Go inside the blue glowing orb |goto 39.1,58.1,0.5 |noway |c
step
goto 44.3,48.0
.talk 41308
..turnin 25832
step
goto 27.4,55.6
.talk 41381
..turnin 25830
..accept 25842
step
goto 27.1,54.5
.kill 5 Fiery Tormentor |q 25842/1
step
goto 27.4,55.6
.talk 41381
..turnin 25842
..accept 25372
step
goto 19.5,37.8
.talk 39858
..turnin 25372
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Mount Hyjal\\Firelands Quests",[[
description Walks you through completing the Firelands quest line in Mount Hyjal.
author support@zygorguides.com
startlevel 85.00
step
'You need to complete the Firelands Pre-Quests guide section before you will be able to use this guide. |q 25372
'Click here to load the Pre-Quests guide. |confirm |next DAILIES\\Cataclysm (80 - 85)\\Mount Hyjal\\Firelands Pre-Quests
step
goto Mount Hyjal,27.2,62.6
.talk 52669
..accept 29145
step
goto 27.1,54.5
.talk 52838
..turnin 29145
..accept 29195
step
goto 27.4,55.6
.from Charred Invader##52853+ |tip When the bar at the bottom of your screen becomes full, Leyara will spawn.
.from Leyara##52863
.' Open the portal to the Firelands |q 29195/1
step
goto 27.4,55.2
.talk 52845
..turnin 29195
..accept 29196
step
goto 27.2,62.6
.talk 52669
..turnin 29196
..accept 29197
step
goto 24.5,55.7
.from Raging Invader##52557+
.' Kill 6 Elementals near Thisalee |q 29197/2
step
goto 34.0,57.5
.from Raging Invader##52557+
.' Kill 6 Elementals near Elderlimb |q 29197/1
step
goto 41.2,56.4
.from Raging Invader##52557+
.' Kill 6 Elementals near Tholo and Anren |q 29197/3
step
goto 27.2,62.6
.talk 52838
..turnin 29197
..accept 29198
step
goto 27.0,62.9
.' Watch the cutscene
.' Protect Malfurion |q 29198/1
step
goto 27.0,62.7
.talk 52845
..turnin 29198
step
goto 27.1,62.8
.talk 52838
..accept 29199
step
'Use the Firelands Dailies Run guide each day: |tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
.earn 20 Mark of the World Tree##416
'Click here to load the Dailies guide. |confirm |next DAILIES\\Cataclysm (80 - 85)\\Mount Hyjal\\Firelands Dailies
step
goto 27.1,62.8
.talk 52838
..turnin 29199
step
goto Mount Hyjal,27.1,62.8
.talk 52838
..accept 29200
step
goto 6.7,33.8
.talk 53014
..' Ask her why, what did Malfurion ever do to her?
.' Watch the dialogue
.' Find Leyara |q 29200/1
step
goto 27.2,62.6
.talk 52669
..turnin 29200
step
goto 27.0,62.7
.talk 52845
..accept 29201
step
goto 27.5,56.4
.' Click the Portal to the Firelands |tip It's a big red swirling portal on the edge of this cliff.
.' Teleport to the Molten Front |goto Molten Front |noway |c
step
goto Molten Front,49.7,85.1
.from Obsidian Slaglord##53381
.' Secure a foothold in the Firelands |q 29201/1
step
goto 47.3,88.2 |n
.' Enter the tree |goto 47.3,88.2,0.5 |noway |c
step
goto 47.1,90.6
.talk 53385
..turnin 29201
step
goto Molten Front,53.0,83.8 |n
.' Click the Portal to Mount Hyjal |tip It's a big red swirling portal.
.' Teleport to Mount Hyjal |goto Mount Hyjal |noway |c
step
goto Mount Hyjal,27.2,62.6
.talk 52669
..accept 29202
step
goto 27.5,62.5
.talk 52986
..turnin 29202
.' Ask him How Hamuul is doing. |achieve 5870/4
step
'Use the Firelands Dailies Run guide each day: |tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
.earn 150 Mark of the World Tree##416
'Click here to load the Dailies guide. |confirm |next DAILIES\\Cataclysm (80 - 85)\\Mount Hyjal\\Firelands Dailies
step
goto Molten Front,47.0,91.3
.talk 52135
..accept 29181
step
goto 53.0,83.8 |n
.' Click the Portal to Mount Hyjal |tip It's a big red swirling portal.
.' Teleport to Mount Hyjal |goto Mount Hyjal |noway |c
step
goto Mount Hyjal,43.5,45.9
.talk 50082
..turnin 29181
step
goto 42.6,45.8
.talk 50068
..accept 29182
step
goto 27.5,56.4
.' Click the Portal to the Firelands |tip It's a big red swirling portal on the edge of this cliff.
.' Teleport to the Molten Front |goto Molten Front |noway |c
step
goto Molten Front,43.0,80.6
.talk 52490
..turnin 29182
step
'Use the Firelands Dailies Run guide each day: |tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
.earn 150 Mark of the World Tree##416
step
goto Molten Front,47.0,91.3
.talk 52135
..accept 29214
step
goto 53.0,83.8 |n
.' Click the Portal to Mount Hyjal |tip It's a big red swirling portal.
.' Teleport to Mount Hyjal |goto Mount Hyjal |noway |c
step
goto Mount Hyjal,26.8,62.2
.talk 52844
..turnin 29214
step
goto 27.2,62.6
.talk 52669
..accept 29215
step
goto 27.5,56.4
.' Click the Portal to the Firelands |tip It's a big red swirling portal on the edge of this cliff.
.' Teleport to the Molten Front |goto Molten Front |noway |c
step
goto Molten Front,47.6,90.5
.talk 52493
..turnin 29215
step
goto 67.0,35.9
.from Druid of the Flame##52871+
.' Click the Dried Acorn |tip It looks like a brown round nut that appears on the corpse of Druid of the Flame.
..accept 29245
step
goto 50.6,87.2
.talk 52489
..turnin 29245
..accept 29249
step
goto 53.5,90.7
.' Click the Un'Goro Soil |tip It looks like a big pile of dirt on the ground.
.' Plant the Acorn |q 29249/1
step
'Click the Complete Quest box that appears under your minimap
..turnin 29249
..accept 29254
step
goto 50.6,87.2
.talk 52489
..turnin 29254
step
'Use the Firelands Dailies Run guide each day: |tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
.earn 125 Mark of the World Tree##416
step
goto 44.4,88.8
.talk 53882
..accept 29283
step
goto 53.0,83.8 |n
.' Click the Portal to Mount Hyjal |tip It's a big red swirling portal.
.' Teleport to Mount Hyjal |goto Mount Hyjal |noway |c
step
goto Mount Hyjal,26.0,61.3
.talk 52906
..turnin 29283
step
goto 27.2,62.6
.talk 52669
..accept 29284
step
goto 27.5,56.4
.' Click the Portal to the Firelands |tip It's a big red swirling portal on the edge of this cliff.
.' Teleport to the Molten Front |goto Molten Front |noway |c
step
goto Molten Front,43.8,89.0
.talk 52488
..turnin 29284
step
'Use the Firelands Dailies Run guide each day: |tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
.earn 125 Mark of the World Tree##416
step
goto 46.9,90.0
.talk 53214
..accept 29281
step
goto 53.0,83.8 |n
.' Click the Portal to Mount Hyjal |tip It's a big red swirling portal.
.' Teleport to Mount Hyjal |goto Mount Hyjal |noway |c
step
goto Mount Hyjal,27.2,62.6
.talk 52669
..turnin 29281
step
goto 27.2,62.6
.talk 52669
..accept 29282
step
goto 27.5,56.4
.' Click the Portal to the Firelands |tip It's a big red swirling portal on the edge of this cliff.
.' Teleport to the Molten Front |goto Molten Front |noway |c
step
goto Molten Front,46.8,90.2
.talk 53196
..turnin 29282
step
'Use the Firelands Dailies Run guide each day: |tip You won't be able to do all the dailies yet.  Just do the dailies you can do for now.
.earn 125 Mark of the World Tree##416
step
goto Molten Front,44.1,86.3
.talk 53881
..accept 29279
step
goto 53.0,83.8 |n
.' Click the Portal to Mount Hyjal |tip It's a big red swirling portal.
.' Teleport to Mount Hyjal |goto Mount Hyjal |noway |c
step
goto Mount Hyjal,27.2,62.6
.talk 52669
..turnin 29279
..accept 29280
step
goto 27.5,56.4
.' Click the Portal to the Firelands |tip It's a big red swirling portal on the edge of this cliff.
.' Teleport to the Molten Front |goto Molten Front |noway |c
step
goto Molten Front,44.1,86.3
.talk 53881
..turnin 29280
step
goto 47.0,91.4
.talk 52135
..accept 29203
step
goto 57.8,49.6 |n
.' Enter the cave |goto 57.8,49.6,0.5 |noway |c
step
goto 64.5,59.2
.kill Leyara |q 29203/1
step
goto 57.8,49.6 |n
.' Leave the cave |goto 57.8,49.6,0.5 |noway |c
step
goto 47.0,91.4
.talk 52135
..turnin 29203
step
goto 53.0,83.8 |n
.' Click the Portal to Mount Hyjal |tip It's a big red swirling portal.
.' Teleport to Mount Hyjal |goto Mount Hyjal |noway |c
step
goto Mount Hyjal,42.0,44.5
.' Click the Mailbox |tip It looks like a small wooden box with black slits in it, next to a lamp post.
.collect Smoke-Stained Locket##69854 |n
.' Click the Smoke-Stained Locket in your bags |use Smoke-Stained Locket##69854
..accept 29298
step
|fly Moonglade
step
goto Moonglade,51.7,45.1
.talk 11801
..turnin 29298
..accept 29302
step
'Watch the dialogue
.' Look into Leyara's Memories |q 29302/1
step
goto 51.7,45.1
.talk 11801
..turnin 29302
..accept 29303
step
|fly Astranaar
step
goto Ashenvale,40.5,53.3
.' Click the Night Elf Grave |tip It looks like a mound of dirt on the ground with a bunch of other dirt graves.
..' Present the Smoke-Stained Locket
.' Watch the dialogue
.' Look deeper into Leyara's memories |q 29303/1
step
'Click the Complete Quest box that appears under your minimap
..turnin 29303
..accept 29310
step
|fly Grove of Aessina
step
goto Mount Hyjal,7.6,34.6
.' Click the Small Gravestone |tip It looks like a small gray rock sitting on the ground.
..' Present the Smoke-Stained Locket
.' Watch the dialogue
.' Look deeper into Leyara's memories |q 29310/1
step
'Click the Complete Quest box that appears under your minimap
..turnin 29310
..accept 29311
step
goto 27.5,56.4
.' Click the Portal to the Firelands |tip It's a big red swirling portal on the edge of this cliff.
.' Teleport to the Molten Front |goto Molten Front |noway |c
step
goto Molten Front,47.0,91.4
.talk 52135
..turnin 29311
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Mount Hyjal\\Firelands Dailies",[[
description Walks you through completing the
description Firelands daily quests in Mount
description Hyjal.
author support@zygorguides.com
startlevel 85.00
daily
step
label "StartFirelandsDailies"
goto Mount Hyjal,27.2,62.6
.talk 52669
..' You will only be able to accept one of these quests per day:
..accept 29163 |daily |or
..accept 29149 |daily |or
..accept 29127 |daily |or
..accept 29123 |daily |or
..accept 29166 |daily |or
step
goto 27.2,62.6
.talk 52669
..' You will only be able to accept one of these quests per day:
..accept 29147 |daily |or
..accept 29164 |daily |or
..accept 29125 |daily |or
step
goto 27.5,62.5
.talk 52986
..' You will only be able to accept one of these quests per day:
..accept 29246 |daily |or
..accept 29247 |daily |or
..accept 29248 |daily |or
step
goto 27.1,62.0
.talk 52671
..' You will only be able to accept one of these quests per day:
..accept 29101 |daily |or
..accept 29161 |daily |or
step
goto Mount Hyjal,27.3,61.6
.talk 53073
..accept 29128 |daily
step
goto 23.8,60.3
.from Flame Terror##52219+
.kill 9 Invader from the Firelands |q 29163/1
only if havequest(29163)
step
goto 23.8,60.3
.from Flame Terror##52219+
.kill 8 Invader from the Firelands |q 29127/1
only if havequest(29127)
step
goto 23.8,60.3
.from Flame Terror##52219+
.kill 7 Invader from the Firelands |q 29149/1
only if havequest(29149)
step
goto 23.8,60.3
.from Flame Terror##52219+
.kill 6 Invader from the Firelands |q 29123/1
only if havequest(29123)
step
goto 24.6,60.4
.from Flame Terror##52219+
.' Use your Fang of the Wolf next to their corpses |use Fang of the Wolf##69235
.' Howl Atop 10 Invaders' Corpses |q 29164/1
only if havequest(29164)
step
'Click the Complete Quest box that appears under your minimap
..turnin 29164
..accept 29165 |daily
only if havequest(29164) or completedq(29164)
step
goto 41.8,56.0
.' Use your Fang of the Wolf |use Fang of the Wolf##69225
.kill Lylagar |q 29165/1
only if havequest(29165)
step
'Use your Quill of the Bird-Queen |use Quill of the Bird-Queen##69234
.' Transform into the Wings of Aviana |invehicle |c |q 29147
only if havequest(29147)
step
goto 14.1,41.8
'Use your Call the Flock ability on your action bar near Alpine Songbirds, Forest Owls, and Goldwing Hawks |tip They are all birds that fly in the sky all around this area.  Alpine Songbirds are small and white.  Forest Owls are medium sized and gray.  Goldwing Hawks are big and brown.
.' Gather 12 Alpine Songbirds |q 29147/1
.' Gather 5 Forest Owls |q 29147/2
.' Gather 2 Goldwing Hawks |q 29147/3
only if havequest(29147)
step
'Click the Complete Quest box that appears under your minimap
..turnin 29147
..accept 29148
only if havequest(29147) or completedq(29147)
step
goto 13.4,44.6
.' Use your Quill of the Bird-Queen |use Quill of the Bird-Queen##69212
.kill Millagazor |q 29148/1
tip When it starts flying up and escaping, let it go - your flock of birds will finish it off. This counts towards _The Meek Shall Inherit Kalimdor_ achievement.
tip Don't get damaged by any of its _Gout of Fire_ spells. This counts towards the _Infernal Ambassadors_ achievement.
only if havequest(29148)
step
goto 14.3,33.0
.' Click the Climbing Tree |tip They look like small ladders leaning aginst the trees around this area.
.' Click Hyjal Bear Cubs in the tree
.' Use your Climb Up ability to climb to the top of the tree
.' Use your Chuck-a-bear ability to throw the cubs down |tip Aim the yellow arrow at the bearskin trampoline on the ground.
.' Chuck 6 Hyjal Bear Cubs to Safety |q 29161/1
.tip Chuck a bear at a sleeping _Core Hound_. This counts towards _The Meek Shall Inherit Kalimdor_ achievement.
only if havequest(29161)
step
'Click the Complete Quest box that appears under your minimap
..turnin 29161
..accept 29162 |daily
only if havequest(29161) or completedq(29161)
step
goto 13.4,44.7
.' Use your Emerald of Aessina to summon Pyrachnis |use Emerald of Aessina##69232
.' Fight Pyrachnis
.' Use your Emerald of Aessina to cleanse yourself of Pyrachnis' Boiling Poison |use Emerald of Aessina##69232 |tip Spam use this item throughout the entire fight.
.tip If you DON'T use the Emerald in the fight, it counts towards the _Infernal Ambassadors_ achievement.
.kill Pyrachnis |q 29162/1
only if havequest(29162)
step
goto 23.6,60.1
.' Click Children of Tortolla |tip They look like small turtles on the ground around this area.
.' Use your Punt Turtle ability |tip Use your right mouse button to aim the yellow arrows into the water to the north.
.' Punt 5 Children of Tortolla into the Water |q 29101/1
.tip Punt a turtle at a fire elemental. This counts towards _The Meek Shall Inherit Kalimdor_ achievement.
only if havequest(29101)
step
'Click the Complete Quest box that appears under your minimap
..turnin 29101
..accept 29122 |daily
only if havequest(29101) or completedq(29101)
step
goto 24.1,55.7
.talk 52425
..' Tell him you are prepared to face Nemesis
.' Follow Tooga and fight Nemesis
.' Run into Tooga's yellow bubble shield right before Nemesis finishes casting his spell |tip You will see a message in your chat when Nemesis is about to errupt.
.kill Nemesis |q 29122/1
only if havequest(29122)
step
goto 36.2,59.2
.' Get close to Spirits of Malorne on the ground |tip They look like deer running around on the ground around this area.
.' Capture 3 Spirits of Malorne |q 29125/1
only if havequest(29125)
step
'Click the Complete Quest box that appears under your minimap
..turnin 29125
..accept 29126 |daily
only if havequest(29125) or completedq(29125)
step
goto 41.7,56.1
.' Use your Guardian's Staff next to the Pile of Ash |use Guardian's Staff##68997 |tip It looks like a mound of dirt on the ground.
.kill Galenges |q 29126/1
only if havequest(29126)
step
goto 38.6,56.9
.from Charred Flamewaker##52791+
.get 100 Flamewaker Scale |q 29248/1
only if havequest(29248)
step
goto 29.8,57.8
.' Click Blueroot Vines |tip They look like grayish colored twisting tree roots sticking out of the ground around this area.
.get 7 Blueroot Vine |q 29166/1
only if havequest(29166)
step
goto 27.1,62.0
.talk 52671
..' You will only be able to turn in one of these quests per day:
..turnin 29162
..turnin 29122
step
goto 27.2,62.6
.talk 52669
..' You will only be able to turn in one of these quests per day:
..turnin 29163
..turnin 29149
..turnin 29127
..turnin 29123
..turnin 29148
..turnin 29165
..turnin 29126
..turnin 29166
step
goto 27.5,62.5
.talk 52986
..turnin 29248
step
goto 30.7,75.9
.from Seething Pyrelord##52300+, Fiery Behemoth##52289+
.' Slay 6 Invaders at Sethria's Roost |q 29128/1 |only if havequest(29128)
.get 4 Flame-Wreathed Heart |q 29246/1 |tip You can only loot these from Seething Pyrelords.  Fiery Behemoths will not drop them. |only if havequest(29246)
.get 4 Sulfur-Laced Wrapping |q 29247/1 |tip You can only loot these from Fiery Behemoths.  Seething Pyrelords will not drop them. |only if havequest(29247)
only if havequest(29128) or havequest(29246) or havequest(29247)
step
goto 27.5,62.5
.talk 52986
..' You will only be able to turn in one of these quests per day:
..turnin 29246
..turnin 29247
step
goto 27.5,56.4
.' Click the Portal to the Firelands |tip It's a big red swirling portal on the edge of this cliff.
.' Teleport to the Molten Front |goto Molten Front |noway |c
step
goto Molten Front,50.6,87.2
.talk 52489
..' You will only be able to accept one of these quests per day:
..accept 29299 |daily |or
..accept 29255 |daily |or
..accept 29257 |daily |or
step
goto 48.7,86.9
.talk 52467
..' You will only be able to accept one of these quests per day:
..accept 29139 |daily |or
..accept 29143 |daily |or
step
goto 46.8,90.2
.talk 53196
..' You will only be able to accept one of these quests per day: |tip She will not offer a quest in this location, on some days.  On those days, she will offer a quest later, in a different location.
..accept 29263 |daily |or
..accept 29278 |daily |or
step
goto 45.6,86.2
.talk 53080
..accept 29138 |daily
step
goto 45.6,85.8
.talk 52824
..turnin 29128
step
goto 45.6,85.8
.talk 52824
..' You will only be able to accept two of these quests per day:
..accept 29179 |daily |or 2
..accept 29142 |daily |or 2
..accept 29141 |daily |or 2
..accept 29137 |daily |or 2
..accept 29304 |daily |or 2
step
goto 51.6,65.0
.' Stand next to the fire portal with your Wisp |tip It looks like 2 steam vents and black smoke riding out of the ground.
.from Firekin##53092+
.' Close a Fire Portal |q 29143/1
only if havequest(29143)
step
goto 50.7,50.8
.from Emberspit Scorpion##53240+ |tip They will spawn Ember Pools on the ground, and your Crimson Lasher will drink from them.
.' Help the Crimson Lasher Drink from 6 Ember Pools |q 29299/1
only if havequest(29299)
step
goto 50.7,50.8
.' Click Magmolias |tip They look like white flowers on the surface of the pools of lave around this area.
.get 8 Magmolia |q 29257/1
only if havequest(29257)
step
goto 52.8,49.9
.' Click Lava Bubbles |tip They look like big light orange bubbles in the pools of lava around this area.
.' Use The Bitter Pill when the Subterranean Magma Worm is almost done casting its Burning Hunger spell |use The Bitter Pill##69759
.kill Subterranean Magma Worm |q 29263/1
only if havequest(29263)
step
goto 50.0,50.8
.' Click Magnetic Stones |tip They look like stone spikes pointing upward on the ground around this area.
.' Click Obsidium Meteorites |tip They look like spiked rocks that crash to the ground in balls of fire after you click the Magnetic Stones.
.get 10 Obsidium Meteorite |q 29278/1
only if havequest(29278)
step
goto 48.2,75.8
.from Charred Soldier##52504+, Charred Vanquisher##52503+
..get 5 Embergris |q 29255/1 |only if havequest(29255)
..kill 8 Charred Combatant |q 29179/1 |only if havequest(29179)
..kill 3 Druid of the Flame |q 29142/1 |only if havequest(29142)
..kill 5 Lava Burster |q 29137/1 |only if havequest(29137)
..kill 5 Ancient Charhound |q 29304/1 |only if havequest(29304)
.' Use your Enchanted Salve on Wounded Hyjal Defenders |use Enchanted Salve##69240 |tip They look like various race corpses laying on the ground around this area. |only if havequest(29138)
..' Save 8 Wounded Hyjal Defenders |q 29138/1 |only if havequest(29138)
.' Click Ash Piles |tip They look like brown mounds of dirt on the ground around this area. |only if havequest(29139)
..' Plant 5 Smothervines |q 29139/1 |only if havequest(29139)
only if havequest(29255) or havequest(29179) or havequest(29142) or havequest(29137) or havequest(29304) or havequest(29138) or havequest(29139)
step
goto 47.2,83.7
.kill 3 Molten Behemoth |q 29141/1
only if havequest(29141)
step
goto 50.6,87.2
.talk 52489
..' You will only be able to turn in one of these quests per day:
..turnin 29299
..turnin 29255
..turnin 29257
step
goto 48.7,86.9
.talk 52467
..' You will only be able to turn in one of these quests per day:
..turnin 29139
..turnin 29143
step
goto 46.9,90.0
.talk 53214
..' You will only be able to turn in one of these quests per day:
..turnin 29263
..turnin 29278
step
goto 45.6,86.2
.talk 53080
..turnin 29138
step
goto 45.6,85.8
.talk 52824
..' You will only be able to turn in two of these quests per day:
..turnin 29179
..turnin 29142
..turnin 29141
..turnin 29137
..turnin 29304
step
goto 45.6,85.8
.talk 52824
..' Decide which daily quest line you want to complete: |tip You can only do one of these quest lines per day.
..accept 29206 |daily |or |next "DruidoftheTalon"
..accept 29205 |daily |or |next "ShadowWardens"
step
label DruidoftheTalon
goto 43.0,80.2
.' Stand in this spot and wait for a Windcaller to start walking into the fire |tip The Windcaller will be a Druid of the Talon, with Windcaller in their name, standing in this spot.
.' Follow the Windcaller through the fire |tip Walk behind them so the flames don't burn you.
.from Flamewaker Assassin##53328+
.from Pyrelord##52683
.' Protect the Druid of the Talon Windcaller |q 29206/1
only if havequest(29206)
step
goto Molten Front,42.5,59.7
.talk 52444
..turnin 29206
..accept 29264 |daily
..accept 29265 |daily
step
goto 41.9,61.5
.talk 52478
..accept 29274
step
goto 48.8,60.0
.from Flamewaker Sentinel##53085+, Flamewaker Hunter##53143+, Flamewaker Shaman##53093+
.kill 8 Flamewaker |q 29264/1
.' Click Luciferns |tip They look like small red plants on the ground around this area.
.get 5 Lucifern |q 29265/1
only if havequest(29264) or havequest(29265)
step
goto 43.2,51.2
.from Charhound##53152+
.get 6 Houndbone Ash |q 29274/1
only if havequest(29274)
step
goto 51.9,31.0
.talk 53233
..accept 29272
step
goto 51.9,31.0
.talk 53233
..' Tell her let's get him out of this cave
.' Follow Anren Shadowseeker through the cave using the air vents
.' Escort Anren to the Front of the Cave |q 29272/1
step
goto 42.5,59.7
.talk 52444
..turnin 29264
step
goto 33.5,67.6
.' Go to this spot and jump
.' You will fly up out of the cavern |goto Molten Front,33.7,65.7,0.5 |noway |c
step
goto Molten Front,36.0,59.0
.talk 52477
..turnin 29272
only if havequest(29272)
step
goto 36.0,59.0
.talk 52477
..accept 29273 |daily
step
goto 35.8,59.4
.talk 52478
..accept 29274 |daily
step
goto 36.3,56.3
.talk 52492
..turnin 29265
step
goto 36.3,56.6
.talk 53304
..accept 29295 |daily
step
goto 34.5,56.2
.talk 52491
..' You will only be able to accept one of these quests per day:
..accept 29287 |daily |or
..accept 29290 |daily |or
..accept 29288 |daily |or
step
goto 34.3,56.4
.talk 53259
..' You will only be able to accept one of these quests per day:
..accept 29293 |daily |or
..accept 29296 |daily |or
step
goto 33.9,57.2
.' Click the Trained Fire Hawk to ride on it |tip It looks like a big orange armored eagle.
.' Use your abilities on your action bar on the mobs below as you fly on the Fire Hawk |tip The mobs look like nagas, spiders, and stone giants on the ground.
.kill 100 Amassing Flamewakers |q 29290/1
.kill 40 Amassing Cinderwebs |q 29290/2
.kill 3 Molten Lords |q 29290/3
only if havequest(29290)
step
'Use your Return to the Furnace ability on your action bar
.' Return to the Furnace |goto Molten Front,34.2,57.0,0.5 |noway |c |q 29290
only if havequest(29290)
step
goto 34.5,56.2
.talk 52491
..turnin 29290
step
goto 26.6,50.5
.' Jump off the cliff next to the floating rocks |tip You won't die, a druid will fly you safely to the other side.
.' Click Injured Druids of the Talon |tip They look like birds and bats laying on the ground around this whole area.  They are pretty spread out, so you will need to search around for them.
.' Rescue 5 Druids of the Talon |q 29293/1
only if havequest(29293)
step
goto 23.5,36.6
.' Follow the path to the top of the mountain |tip Use the air vents on the side of rocks and cliffs to fly up to the next level of the mountain.
.' Use the air vents around the peak of the mountain to jump up can click Fire Hawk Hatchlings |tip They look like small fire birds flying in place around the top of this mountain.
.get 5 Fire Hawk Hatchling |q 29288/1
only if havequest(29288)
step
goto 23.7,39.5
.' Follow the path to the top of the mountain |tip Use the air vents on the side of rocks and cliffs to fly up to the next level of the mountain.
.' Use Tholo's Thermometer next to this pool of lava |use Tholo's Thermometer##69806
.' Sample the Central Lava Pool |q 29273/3
only if havequest(29273)
step
goto 23.7,41.9
.' Follow the path to the top of the mountain
.' Click a Fire Hawk Egg |tip They look like orange eggs sitting on the ground at the top of this mountain, in a bubbling pool of lava.
.get Fire Hawk Egg |q 29287/1
only if havequest(29287)
step
goto 22.5,29.1
.' Follow the path on the mountain |tip Use the air vents on the side of rocks and cliffs to fly up to the next level of the mountain.
.' Use Tholo's Thermometer next to this pool of lava |use Tholo's Thermometer##69806
.' Sample the Northwestern Lava Pool |q 29273/1
only if havequest(29273)
step
goto 30.0,29.8
.' Follow the path on the mountain |tip Use the air vents on the side of rocks and cliffs to fly up to the next level of the mountain.
.' Use Tholo's Thermometer next to this pool of lava |use Tholo's Thermometer##69806
.' Sample the Northeastern Lava Pool |q 29273/2
only if havequest(29273)
step
goto 26.6,50.5
.kill 5 Fire Hawk |q 29296/1 |only if havequest(29296)
.from Obsidium Punisher##52107+ |only if havequest(29295)
.' Click Living Obsidium Chips |tip They look like gray rocks that spawn on the ground after you kill Obsidium Punishers. |only if havequest(29295)
.get 10 Living Obsidium Chip |q 29295/1 |only if havequest(29295)
only if havequest(29296) or havequest(29295)
step
goto 34.5,56.2
.talk 52491
..turnin 29287
..turnin 29288
step
goto 34.3,56.4
.talk 53259
..' You will only be able to turn in one of these quests per day:
..turnin 29293
..turnin 29296
step
goto 36.3,56.3
.talk 52492
..accept 29305 |daily
step
goto 39.3,55.2
.from Ancient Charhound##54339+
.get 6 Houndbone Ash |q 29274/1
.' You can find more Ancient Charhounds around [39.6,39.4]
only if havequest(29274)
step
goto Molten Front,50.3,23.1
.' Kill the big named mob |tip They named mob you have to fight is random, so it is not always the same.
.kill Lieutenant of Flame |q 29305/1
only if havequest(29305)
step
goto 51.5,85.5
.talk 52477
..turnin 29274
step
goto 51.3,85.8
.talk 52478
..turnin 29273
step
goto 46.9,90.0
.talk 53214
..turnin 29295
step
goto 43.0,80.6
.talk 52490
..turnin 29305
next "RestartDailies"
step
label "ShadowWardens"
goto 54.7,70.9
.' Wait until the named mobs starts walking up the big ramp |tip The named mobs' health bars will appear beneath your minimap.
.' Protect the named mobs and help them fight |tip They must stay alive for the entire quest, so don't let them die.
.' Protect the Druid Assault Group |q 29205/1
only if havequest(29205)
step
goto Molten Front,64.9,67.3
.talk 52494
..turnin 29205
step
goto 64.9,67.3
.talk 52494
..' You will only be able to accept one of these quests per day:
..accept 29211 |daily |or
..accept 29192 |daily |or
step
goto 66.4,65.4
.talk 54163
..accept 29297 |daily
step
goto 66.3,66.1
.talk 52477
..accept 29276 |daily |tip This quest will not always be available each day.
step
goto 66.1,63.9
.talk 52921
..' You will only be able to accept two of these quests per day:
..accept 29159 |daily |or 2
..accept 29160 |daily |or 2
..accept 29189 |daily |or 2
step
goto 65.6,50.5
.from Cinderweb Creeper##52648+, Cinderweb Spinner##52981+ |only if havequest(29159) or havequest(29276)
.kill 8 Cinderweb spider |q 29159/1 |only if havequest(29159)
.get 8 Flame Venom |q 29276/1 |only if havequest(29276)
.get 8 Searing Web Fluid |q 29276/2 |only if havequest(29276)
.' Click Cinderweb Egg Sacs |tip They look like brown-ish red slime deposits on the ground around this area. |only if havequest(29160)
.get 20 Cinderweb Egg |q 29160/1 |only if havequest(29160)
.' Click Cinderweb Cocoons |tip They look like bright red web balls stuck to the walls around this area. |only if havequest(29189)
.' Free 8 Victims |q 29189/1 |only if havequest(29189)
only if havequest(29159) or havequest(29276) or havequest(29160) or havequest(29189)
step
goto 71.4,47.3
.' Use your Burd Sticker on Druids of the Flame |use Burd Sticker##69832 |tip They are small orange fire birds that fly in the sky all around this area.  Try to target the ones flying lower to the ground.
.kill 3 Druids of the Flame in Fire Crow form |q 29297/1
only if havequest(29297)
step
goto 70.8,38.3
.' Click the Solar Core |tip It looks like a big floating orb.
.' Detonate the Solar Core |q 29211/1
only if havequest(29211)
step
goto 71.8,42.9
.from Druid of the Flame##52122
..' Lure the Druid of the Flame into the trap |tip Your Shadow Warden will lay a metal trap on the ground and tell you to lure the enemy into it.  Walk over the trap, so that the druid follows you onto the trap.
.' Capture a Druid of the Flame |q 29192/1
only if havequest(29192)
step
goto 66.1,63.9
.talk 52921
..' You will only be able to turn in two of these quests per day:
..turnin 29159
..turnin 29160
..turnin 29189
step
goto 64.9,67.3
.talk 52494
..' You will only be able to turn in one of these quests per day:
..turnin 29211
..turnin 29192
step
goto 64.9,67.3
.talk 52494
..accept 29210 |daily
step
goto 65.9,66.1
.talk 52478
..accept 29275 |daily
step
goto 57.7,49.5
.' Enter the Igneous Depths |q 29210/1
only if havequest(29210)
step
goto 61.7,53.0
.' Click the 8 Flame Runes |tip They look like big glowing blue symbols on the ground around the area inside this cave. |only if havequest(29210)
.' Destroy All the Flame Runes |q 29210/2 |only if havequest(29210)
.' Click a Flame Druid Staff, Spellbook, Reagant Pouch, and Idol |tip They look like tiny sticks, books, vials, and wooden statues on the ground all around inside this cave. |only if havequest(29275)
.get Flame Druid Staff |q 29275/1 |only if havequest(29275)
.get Flame Druid Spellbook |q 29275/2 |only if havequest(29275)
.get Flame Druid Reagent Pouch |q 29275/3 |only if havequest(29275)
.get Flame Druid Idol |q 29275/4 |only if havequest(29275)
only if havequest(29210) or havequest(29275)
step
goto 57.8,49.5
.talk 52823
..turnin 29210
step
goto 57.5,49.5
.talk 53056
..accept 29243 |daily
step
goto Molten Front,50.3,23.1
.' Kill the big named mob |tip They named mob you have to fight is random, so it is not always the same.
.kill Lieutenant of Flame |q 29243/1
only if havequest(29243)
step
goto 51.6,85.5
.talk 52477
..turnin 29275
step
goto 51.3,85.8
.talk 52478
..turnin 29276
step
goto 46.9,90.0
.talk 53214
..turnin 29297
step
goto 47.6,90.5
.talk 52493
..turnin 29243 |next "RestartDailies"
step
label "RestartDailies"
'Click this line to return to the beginning of the Firelands Dailies guide section |confirm |next "StartFirelandsDailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dailies Guides\\Cataclysm (80 - 85)\\Mount Hyjal\\The Call of the World-Shaman Quest Line",[[
description Walks you through completing the Call of the World-Shaman quest line.
condition end completedq(29331)
author support@zygorguides.com
step
goto Stormwind City,74.5,19.0
.talk 45226
..accept 29439
step
goto 76.2,18.7
.' Click the Portal to Hyjal |tip It's a green swirling portal next to some huge tree roots sticking out of the ground.
.' Teleport to Mount Hyjal |goto Mount Hyjal |noway |c
step
goto Mount Hyjal,60.6,31.5
.talk 54313
..turnin 29439
..accept 29326
step
goto 60.6,31.5
.talk 54313
..' Tell him you are ready
.' Watch the cutscene
.' Witness the Ceremony |q 29326/1
step
goto 60.2,30.1
.talk 54312
..turnin 29326
..accept 29335
step
goto 60.2,30.1
.talk 54312
..' Tell her you are ready to travel to Uldum
.' You will teleport to Uldum |goto Uldum,47.8,88.0,0.5 |noway |c |q 29335
step
goto Uldum,47.6,88.9
.talk 53524
..turnin 29335
..accept 29327
step
goto 47.6,88.9
.talk 53524
..' Tell him to take you to Thrall
.' You will fly up to the top of a tower |goto 34.3,77.5,0.5 |noway |c |q 29327
step
goto 34.4,78.1
.from Essence of Doubt##53516+, Shadow of Doubt##53530+
.' You will need to fill up the Protecting Thrall bar at the bottom of your screen
.' Protect Thrall from the Elements |q 29327/1
step
goto 34.3,77.5
.talk 53519
..turnin 29327
..accept 29336
step
goto 34.3,77.5
.talk 53519
..' Tell her you are ready to travel to the Abyssal Maw
.' You will teleport to the Abyssal Depths |goto Abyssal Depths,69.7,34.8,0.5 |noway |c |q 29336
step
goto Abyssal Depths,69.5,34.3
.talk 53677
..turnin 29336
step
goto 69.8,34.2
.talk 53652
..accept 29328
step
goto 67.9,27.2
.from Vortex of Longing##53647+, Tides of Longing##53646+
.' You will need to fill up the Protecting Thrall bar at the bottom of your screen
.' Protect Thrall from the Elements |q 29327/1
.' Click Aggra |tip She is floating in a circle inside of a bubble near the bottom of the huge whirlpool.
.' Protect Aggra from the Elements |q 29328/2
step
goto 69.8,34.2
.talk 53652
..turnin 29328
..accept 29337
step
goto 69.8,34.2
.talk 53652
..' Tell her you are ready to travel to Deepholm
.' You will teleport to Deepholm |goto Deepholm,56.3,13.0,0.5 |noway |c |q 29337
step
goto Deepholm,56.3,12.2
.talk 42465
..turnin 29337
step
goto 56.5,12.5
.talk 53738
..accept 29329
step
goto 56.5,12.5
.talk 53738
..' Tell her you are ready
.' You will be taken to the Staidridge |goto 64.2,46.0,0.5 |noway |c |q 29329
step
goto 64.2,46.0
.from Element of Patience##53739+, Corestone of Patience##53894+
.' You will need to fill up the Protecting Thrall bar at the bottom of your screen
.' Help Thrall Break Out of His Stone Prison |q 29329/1
step
goto 64.0,46.1
.talk 53738
..turnin 29329
..accept 29338
step
goto 64.0,46.1
.talk 53738
..' Tell her let us go to the Firelands and finish this
.' Teleport into the Firelands |q 29338/1
step
goto Molten Front,49.6,31.7
.talk 54014
..turnin 29338
step
goto 51.5,25.8
.talk 53925
..accept 29330
step
goto 52.9,24.6
.from Flames of Fury##53929+, Seed of Fury##53928+
.' You will need to fill up the Freeing Thrall bar at the bottom of your screen |tip You will get onscreen instructions on where to kill the mobs.  You have to kill then next to certain Totems at certain times.
.' Activate Aggra's Totems to Save Thrall |q 29330/1
step
'Click the Complete Quest box that appears under your minimap
..turnin 29330
..accept 29331
step
goto 51.2,27.3
.' Click the Portal to Hyjal |tip It looks like a floating pink swirling portal.
.' Teleport to Hyjal |goto Mount Hyjal,60.3,30.4,0.5 |noway |c |q 29331
step
goto Mount Hyjal,60.2,29.8
.talk 54168
..turnin 29331
step
'Congratulations, you saved Thrall!
]])
