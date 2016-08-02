local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("DungeonScenMOP") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Pandaria Scenarios\\Unga Ingoo",[[
dungeon 882
description This guide will walk you through the Unga Ingoo scenario.
author support@zygorguides.com
step
goto Krasarang Wilds 51.5,77.3
.talk 65289
..accept 31058
step
goto Unga Ingoo 51.8,86.3 |n
.talk 62467
.' Let's get going!
.' Escort Brewmaster Bo to [50.1,61.9] |goto 50.1,61.9 <5 |c
step
'Leave one party member behind to defend Brewmaster Bo from the oncoming Hozen, if you do not then the Hozen will steal your brew and run off with it. Defenders should use _Inactive Beach Bombs_ and the _Brew Defender_ cannon to help them fight off Hozen.
'The other two party members should run around the island and click on _Unga Mugs_ and _Unga Kegs_ you find scattered throughout the island.
.' Return to the cauldron every time you have 30 stacks of Brew.
.' Once phase 2 is complete, click here to continue. |confirm
step
goto 49.9,56.3
.from Captain Ook##62465 |only if not havequest(31058) |tip He periodically casts Gonna Ook Ya, move from the red circle. When he gets weak a Scurvy-Curing Orange will spawn, click it to pick it up and run it away from Captain Ook.
.kill Captain Ook##62465 |q 31058/1 |only if havequest(31058) |tip He periodically casts Gonna Ook Ya, move from the red circle. When he gets weak a Scurvy-Curing Orange will spawn, click it to pick it up and run it away from Captain Ook.
|confirm |only if not havequest(31058)
step
goto 50.2,62.0
.talk 62491
..turnin 31058
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Pandaria Scenarios\\Arena of Annihilation",[[
dungeon 899
description This guide will walk you through the Arena of Annihilation scenario.
author support@zygorguides.com	
step
goto Proving Grounds 46.6,16.1
.talk 63315
..accept 31207
step
goto 48.9,17.1
.click Tiger Temple Gong
.from Scar-Shell##63311 |tip Crushing Bite reduces the armor of whomever it hits by 50%. Stone Spin is a whirlwind type attack. Immediately after it finishes, Scar-Shell will gain the Dizzy debuff, increses his damage taken by 50% for a short time.
|confirm
step
goto 48.9,17.1
.click Tiger Temple Gong
.from Jol'Grum##63312 |tip Whoever is holding the attention of Jol'Grum should remain still. The tank moving causes his rage bar to build. If the bar reaches 100, he will become Angry. This is a light enrage. He will cast Headbutt on the tank which knocks them back. He will also jump to the middle and use Smash, knocking all players back.
|confirm
step
goto 48.9,17.1
.click Tiger Temple Gong
.from Little Liuyang##63313 |tip Liuyang will constantly shoot off Fireballs and paths of fire. Avoid stand in fire. At around 40%, Firewall will be cast. Run counter-clockwise while killing the Flmecoaxig Spirits. Kill them will cause a section of the firewall to vanish. There are three of them.
.from Flamecoaxing Spirit##63539
|confirm
step
goto 48.9,17.1
.click Tiger Temple Gong
.from Chagan Firehoof##63318 |tip He will use Trailblaze on a random player, this leaves fire on the ground. Hammertime does damage to whomever is tanking. 
.from Batu##63872 |tip There is no real benefit to killing Batu, just ignore him until and kill Chagan.
|confirm
step
goto 48.9,17.1
.click Tiger Temple Gong
.from Satay Byu##64281 |tip Satay Byu will apply Slowing Poison with his basic attacks. If Slowing Poison reaches 20 stacks it will root the target in place. Speed of the Jinja will rapidly strike in front of Satay, run away from this.
step
goto 50.1,18.1
.talk 63314
..turnin 31207
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Pandaria Scenarios\\A Brewing Storm",[[
dungeon 878
description This guide will walk you through the A Brewing Storm scenario.
author support@zygorguides.com
step
goto The Jade Forest 36.9,30.2
.talk 59569
..accept 30567
step
goto A Brewing Storm 55.3,45.0
.talk 58740
.' Let's get this lightning party started, Blanche.
.' Defend the Brewing Process |tip Click on the Brewkegs when they light on fire to extinguish them. Avoid standing near the lightning rods when they light up.
.clicknpc Brewkeg##58916
|confirm
step
goto 55.3,44.9 |n
.talk 58740
.' Escort Blanche to [49.9,32.6] |goto 49.9,32.6 <5 |c
step
goto 30.2,68.3
.talk 58740
.' Let's kill some lizards, Blanche!
.from Borokhula the Destroyer##58739 |tip Borokhula will start to cast Swamp Smash in front of him, do not stand in it. When he begins to channel Earth Shattering, watch the ground and avoid the red circles, large spikes will come out of them. Designate one party member to add control. The adds can be quickly dispatched using the Boomer Brew Strike button on the screen, target an add and click it twice to instantly kill it.
|confirm
step
goto A Brewing Storm 30.3,62.3
.talk 58740
..turnin 30567
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Pandaria Scenarios\\Brewmoon Festival",[[
dungeon 884
description This guide will walk you through the Brewmoon Festival scenario.
author support@zygorguides.com
step
goto The Veiled Stair 51.9,43.7
.talk 63367
..accept 31611
step
goto Brewmoon Festival 36.2,68.8
.from Den Mother Moof##63518 |tip burrows, summons adds, twirlwind
|confirm 
step
goto 41.9,52.1
.talk 62793
.' Can you help me get out on the water, Tart?
|confirm
step
goto 43.7,42.5
.from Li Te##63520 |tip Li Te will periodically be covered in a water shield, when that happens kite it over water spouts before they burst.
|confirm
step
goto 56.2,94.4
.from Karsar the Bloodletter##63529 |tip Karsar the Bloodletter has no aggro table, instead he has an ability called Taste for Blood. This ability causes the highest health party member to automatically have the highest threat.
|confirm
step
'In Stages 2 and 3 Bataari will swarm the village from the southern cave, the eastern bridge, and the western gateway. 
'If your party is strong you will be able to split up and put one person at each attack point. If not, stick together.
|confirm
step
'Stage 2 consists of one wave of Bataari Outrunners from each attack point, allow the Zuen Shield Bearers to tank for you and defeat the Outrunners.
.from Bataari Outrunner##64165+
|confirm
step
'Stage 3 consists of three waves of different Bataari mobs and War Yetis. Only one War Yeti will spawn per wave and it can be at any of the three attack points. 
.from Bataari Flamecaller##63526 +, Bataari Yaungol##63527+, Bataari War Yeti##64185+
|confirm
step
goto 39.0,60.3
.from Warbringer Qobi##63528 |tip Kite him out of Oil Slicks, avoid fire, when he is weak click axe to do a powerful whilrwind
.click Qobi's Axe
step
goto 42.7,79.1
.talk 64901
..turnin 31611
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Pandaria Scenarios\\Crypt of Forgotten Kings",[[
dungeon 900
description This guide will walk you through the Crypt of Forgotten Kings scenarios.
author support@zygorguides.com
step
'We will get information for this Scenario as soon as we can.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Pandaria Scenarios\\Greenstone Village",[[
//dungeon ####
description This guide will walk you through the Greenstone Village scenario.
author support@zygorguides.com
step
'We will get information for this Scenario as soon as we can.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Pandaria Scenarios\\Theramore's Fall",[[
//dungeon ####
description This guide will walk you through the Theramore's Fall scenario.
author support@zygorguides.com
step
'We will get information for this Scenario as soon as we can.
]])
