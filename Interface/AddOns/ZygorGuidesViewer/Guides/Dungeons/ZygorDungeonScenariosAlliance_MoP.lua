local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ScenarioAMOP") then return end
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
.' Escort Brewmaster Bo to [50.1,61.9]
scenariogoal 19210
step
'Leave one party member behind to defend Brewmaster Bo from the oncoming Hozen, if you do not then the Hozen will steal your brew and run off with it. Defenders should use _Inactive Beach Bombs_ and the _Brew Defender_ cannon to help them fight off Hozen.
'The other two party members should run around the island and click on _Unga Mugs_ and _Unga Kegs_ you find scattered throughout the island.
.' Return to the cauldron every time you have 30 stacks of Brew.
scenariogoal 21304
step
goto 49.9,56.3
.from Captain Ook##62465 |only if not havequest(31058) |tip He periodically casts Gonna Ook Ya, move from the red circle. When he gets weak a Scurvy-Curing Orange will spawn, click it to pick it up and run it away from Captain Ook.
.kill Captain Ook##62465 |q 31058/1 |only if havequest(31058) |tip He periodically casts Gonna Ook Ya, move from the red circle. When he gets weak a Scurvy-Curing Orange will spawn, click it to pick it up and run it away from Captain Ook.
scenariogoal 20696
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
scenariogoal 20810
.from Scar-Shell##63311 |tip Crushing Bite reduces the armor of whomever it hits by 50%. Stone Spin is a whirlwind type attack. Immediately after it finishes, Scar-Shell will gain the Dizzy debuff, increses his damage taken by 50% for a short time.
scenariogoal 19336
step
scenariostage 1
step
goto 48.9,17.1
.click Tiger Temple Gong
scenariogoal 20810
.from Jol'Grum##63312 |tip Whoever is holding the attention of Jol'Grum should remain still. The tank moving causes his rage bar to build. If the bar reaches 100, he will become Angry. This is a light enrage. He will cast Headbutt on the tank which knocks them back. He will also jump to the middle and use Smash, knocking all players back.
scenariogoal 19337
step
scenariostage 2
step
goto 48.9,17.1
.click Tiger Temple Gong
scenariogoal 20810
.from Little Liuyang##63313 |tip Liuyang will constantly shoot off Fireballs and paths of fire. Avoid stand in fire. At around 40%, Firewall will be cast. Run counter-clockwise while killing the Flmecoaxig Spirits. Kill them will cause a section of the firewall to vanish. There are three of them.
.from Flamecoaxing Spirit##63539
scenariogoal 21922
step
scenariostage 3
step
goto 48.9,17.1
.click Tiger Temple Gong
scenariogoal 20810
.from Chagan Firehoof##63318 |tip He will use Trailblaze on a random player, this leaves fire on the ground. Hammertime does damage to whomever is tanking.
.from Batu##63872 |tip There is no real benefit to killing Batu, just ignore him until and kill Chagan.
scenariogoal 19341
step
scenariostage 4
step
goto 48.9,17.1
.click Tiger Temple Gong
scenariogoal 20810
.from Satay Byu##64281 |tip Satay Byu will apply Slowing Poison with his basic attacks. If Slowing Poison reaches 20 stacks it will root the target in place. Speed of the Jinja will rapidly strike in front of Satay, run away from this.
scenariogoal 20587
step
scenariostage 5
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
scenariogoal 22197
step
scenariostage 1
step
goto 55.3,44.9 |n
.talk 58740 |tip She patrols around the area.
.' Take Blanche to [49.9,32.6]
scenariogoal 19564
step
scenariostage 2
step
goto 30.2,68.3
.talk 58740
.' Let's kill some lizards, Blanche!
.from Borokhula the Destroyer##58739 |tip Borokhula will start to cast Swamp Smash in front of him, do not stand in it. When he begins to channel Earth Shattering, watch the ground and avoid the red circles, large spikes will come out of them. Designate one party member to add control. The adds can be quickly dispatched using the Boomer Brew Strike button on the screen, target an add and click it twice to instantly kill it.
scenariogoal 19565
step
scenariostage 3
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
scenariogoal 19524
step
goto 41.9,52.1
.talk 62793
.' Can you help me get out on the water, Tart?
.from Li Te##63520 |tip Li Te will periodically be covered in a water shield, when that happens kite it over water spouts before they burst.
scenariogoal 19525
step
goto 56.2,94.4
.from Karsar the Bloodletter##63529 |tip Karsar the Bloodletter has no aggro table, instead he has an ability called Taste for Blood. This ability causes the highest health party member to automatically have the highest threat.
scenariogoal 19526
step
.' Kickstart the brew.
scenariogoal 19716
step
scenariostage 1
step
goto Brewmoon Festival 43.4,74.3
'In Stages 2 and 3 Bataari will swarm the village from the southern cave, the eastern bridge, and the western gateway.
'If your party is strong you will be able to split up and put one person at each attack point. If not, stick together.
.from Bataari Outrunner##64165+
scenariogoal 19527
scenariogoal 19530
scenariogoal 19531
step
goto Brewmoon Festival 44.0,68.6
.talk 64017
scenariogoal 19529
step
scenariostage 2
step
goto Brewmoon Festival 42.1,66.6
'Stage 3 consists of three waves of different Bataari mobs and War Yetis. Only one War Yeti will spawn per wave and it can be at any of the three attack points.
.from Bataari Flamecaller##63526 +, Bataari Yaungol##63527+, Bataari War Yeti##64185+
scenariogoal 19523
step
scenariostage 3
step
goto 39.0,60.3
.from Warbringer Qobi##63528 |tip Kite him out of Oil Slicks, avoid fire, when he is weak click axe to do a powerful whilrwind
.click Qobi's Axe
scenariogoal 19528
step
goto 42.7,79.1
.talk 64901
..turnin 31611
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Pandaria Scenarios\\Theramore's Fall",[[
dungeon 906
step
goto 906 69.5,74.0
'Stage 1 Off the ship
.from Rok'nah Grunt##64732+
.' Upon killing the horde troops, you will initiate stage 2.
..scenariostage 1
step
goto 59.7,64.7
.from Sky-Captain "Dashing" Dazrip##65609
..scenariogoal 21030 1
step
goto 59.9,64.8
.clicknpc Leaking Oil Drum##65571
..scenariogoal 19980 1
step
goto 53.5,82.8
.from Captain Mousson##65444 |tip It may be a different captain, this one often changes.
..scenariogoal 21030 2
'|modelnpc 65151
step
goto 50.7,85.1
.clicknpc Leaking Oil Drum##65571
..scenariogoal 19980 2
step
goto 76.6,49.0
.from Blood Guard Grunk##65154
..scenariogoal 21030 3
step
goto 77.9,50.8
.clicknpc Leaking Oil Drum##65571
..scenariogoal 19980 3
step
scenariostage 2
step
goto 53.4,51.3
.' Fight you way toward Gash'nul.
..scenariogoal 21033
.from Gash'nul##64900
..scenariogoal 21109
.from Vicious Wyvern##64957+
..scenariogoal 21110
.' During the fight, he will place a _Storm Totem_ on the battlefield. Either kill it, or move away from it as it deals a lot of damage.
step
scenariostage 3
step
goto 46.1,34.2
.talk 64727
.' She will tell you to eliminate the remaining forces.
..scenariogoal 21112
step
scenariostage 4
step
goto 36.3,40.1
.from Gatecrusher##64479
..scenariogoal 21113
step
37.7,37.9
.' Click the Stolen Standard
.scenariogoal 21114 1
step
32.9,44.1
.' Click the Stolen Standard
.scenariogoal 21114 2
step
29.3,39.2
.' Click the Stolen Standard
.scenariogoal 21114 3
step
scenariostage 5
step
goto 46.2,34.1
.from Warlord Rok'nah##65442
..scenariogoal 21115
.' Clear all the enemies around Lady Jaina Proudmoore. | scenariogoal 22223
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Pandaria Scenarios\\Crypt of Forgotten Kings",[[
dungeon 900
description This guide will walk you through the Crypt of Forgotten Kings scenarios.
step
goto Crypt of Forgotten Kings/1 44.5,39.9
.' Fight your way to
.from Jin Ironfist##61814
.' He will randomly jump to players in your group.
.scenariogoal 19223
'|modelnpc 61610
'|modelnpc 65304
'|modelnpc 61709
step
.scenariostage 1
step
goto 46.9,58.3
.from Spawn of Hate##61709
.' Fight here until the Pool of Life is cleansed
.scenariogoal 20882
'|modelnpc 61709
step
.scenariostage 2
step
goto Crypt of Forgotten Kings/1 63.8,81.6
.click Treasure Urn
.from Quilen Statue##61565+
|confirm
step
.' Go down the steps here. |goto 69.7,80.1 <10 |c
step
goto 64.1,80.5 |n
.' Go down the steps here. |goto Crypt of Forgotten Kings/2|noway|c
.scenariogoal 21041
step
.scenariostage 3
step
goto Crypt of Forgotten Kings/2 48.7,38.7
.' You will need to fight your way around the room to the _Abomination of Anger_.
.from Abomination of Anger##61707
.scenariogoal 19225
.' During the fight, he will use an ability called _Deathforce_ which will pull you to him. Run out of the red circle that surrounds him as fast as possibly to avoid instant death.
.' He will create red clouds on the ground that move around during the fight which should also be avoided.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Dungeon Guides\\Pandaria Scenarios\\Greenstone Village",[[
dungeon 880
description This guide will walk you through the Greenstone Village scenario.
step
goto 880 56.6,63.5
.' Search for villagers around the area.
.' Save them by killing enemies around them.
.scenariogoal 19204
.scenariogoal 21336
.scenariogoal 19200
.scenariogoal 19201
.scenariogoal 19202
.scenariogoal 19203
'|modelnpc 61462
'|modelnpc 61350
'|modelnpc 61346
'|modelnpc 61343
'|modelnpc 61461
'|modelnpc 65271
step
scenariostage 1
step
goto 51.0,69.8
.from Beast of Jade##1236+, Jade Destroyer##62619+
.talk 61203
scenariogoal 19199
step
scenariostage 2
step
.' Run around the entire instance clicking on _Burgled Barrels_.
.' They will look like cogs on your mini map.
.' Bring them to [51.8,69.0]
scenariogoal 19229 6
step
scenariostage 3
step
goto 57.1,30.4
.talk 62989
scenariogoal 19264
step
goto 53.1,32.6
.talk 62988
.scenariogoal 1244
step
goto 54.7,25.0
.talk 62990
scenariogoal 19265
step
scenariostage 4
step
goto 52.4,23.5
.from Vengeful Hui##61156+
scenariogoal 19205
]])
