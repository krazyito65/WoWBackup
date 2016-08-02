local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("LevelingHWOTLK") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Eversong Woods (1-12)\\Blood Elf (1-5)",[[
author support@zygorguides.com
condition suggested raceclass('BloodElf') and level<=5.39
next Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Eversong Woods (1-12)\\Eversong Woods (5-12)
startlevel 1.00
step
goto Sunstrider Isle 61.0,45.1
.talk 15278
..accept 8325
step
goto 60.3,51.8
.kill 8 Mana Wyrm##15274+ |q 8325/1
step
goto 61.0,45.1
.talk 15278
..turnin 8325
..accept 8326
..accept 9393 |only BloodElf Hunter
..accept 8329 |only BloodElf Warrior
..accept 9676 |only BloodElf Paladin
..accept 8563 |only BloodElf Warlock
..accept 8328 |only BloodElf Mage
..accept 8564 |only BloodElf Priest
..accept 9392 |only BloodElf Rogue
..accept 31170 |only Bloodelf Monk 
step
goto 64.0,42.9
.talk 15295
..accept 8330
..accept 8345
step
goto 61.8,39.3
.talk 15296
..accept 8336
only BloodElf
step
goto 58.5,38.8
.talk 15297
..accept 8346
only BloodElf
step
goto 54.8,39.7
.' Use your Arcane Torrent ability on a Mana Wyrm |cast Arcane Torrent
.' Unleash the Arcane Torrent |q 8346/1
.' If you miss and waste the cooldown, just skip this step for now.
'|modelnpc Mana Wyrm##15274
step
ding 2
step
goto 54.6,51.7
.from Springpaw Lynx##15372+, Springpaw Cub##15366+
.get 8 Lynx Collar |q 8326/1
step
goto 40.4,50.5
.click Scroll of Scourge Magic##220
.get Scroll of Scourge Magic##20471 |q 8330/2
step
goto 29.6,19.4
.click Shrine of Dath'Remar##3011
.' Read the Shrine of Dath'Remar |q 8345/1
step
goto 52.2,69.5
.click Solanian's Scrying Orb##6476
.get Solanian's Scrying Orb##20470 |q 8330/1
step
goto 60.0,57.1
.click Solanian's Journal##6477
.get Solanian's test Journal##20472 |q 8330/3
step
goto 59.4,56.2
.from Mana Wyrm##15274+
.get 6 Arcane Sliver |q 8336/1
.' Use your Arcane Torrent ability on a Mana Wyrm |cast Arcane Torrent |q 8346/1
step
goto 61.0,45.1
.talk 15278
..turnin 8326
..accept 8327
step
ding 3
step
goto 63.4,42.6
.talk 63332
..turnin 31170
..accept 31171
only BloodElf Monk
step
goto 63.9,42.1
.talk 15285
..turnin 9392
..accept 10071
only BloodElf Rogue
step
goto 62.0,44.0
.' Use Sinister Strike on the Training Dummies to build up combo points, then use Eviscerate.
.' Practice Eviscerate 3 times. |q 10071/2
only BloodElf Rogue
step
goto 63.9,42.1
.talk 15285
..turnin 10071
only BloodElf Rogue
step
goto 65.3,43.2
.talk 15284
..turnin 8564
..accept 10072
only BloodElf Priest
step
goto 62.0,44.0
.' Use your Shadow Word: Pain ability on Training Dummies
.' Practice Shadow Word: Pain 5 times. |q 10072/2
only BloodElf Priest
step
goto 65.3,43.2
.talk 15284
..turnin 10072
only BloodElf Priest
step
goto 64.8,46.5
.talk 15279
..turnin 8328
..accept 10068
only BloodElf Mage
step
goto 63.9,46.5
.talk 15283
..turnin 8563
..accept 10073
only BloodElf Warlock
step
goto 62.0,44.0
.' Use your Corruption ability on Training Dummies
.' Practice Corruption 5 Times |q 10073/2
only BloodElf Warlock
step
goto 63.9,46.5
.talk 15283
..turnin 10073
only BloodElf Warlock
step
goto 65.5,43.8
.talk 15280
..turnin 9676
..accept 10069
only BloodElf Paladin
step
goto 62.0,44.0
.' Cast Seal of Command on yourself, then strike the Training Dummy. |q 10069/2
only BloodElf Paladin
step
goto 65.5,43.8
.talk 15280
..turnin 10069
only BloodElf Paladin
step
goto 64.9,42.4
.talk 43010
..turnin 8329
..accept 27091
only BloodElf Warrior
step
goto 62.0,44.0
.' Cast Charge on a Training Dummy. 
.' Practice Charge |q 27091/2
only BloodElf Warrior	
step
goto 64.9,42.4
.talk 43010
..turnin 27091
only BloodElf Warrior
step
goto 64.2,42.1
.talk 15513
..turnin 9393
..accept 10070
only BloodElf Hunter
step
goto 62.0,44.0
.' Use your Steady Shot ability on Training Dummies
.' Practice Steady Shot 5 Times |q 10070/2
only BloodElf Hunter
step
goto 64.2,42.1
.talk 15513
..turnin 10070
only BloodElf Hunter
step
goto 62.0,44.0
.' Use Frost Nova on the Training Dummies.
.' Practice casting Frost Nova 2 times |q 10068/2
only BloodElf Mage
step
goto 62.0,44.0
.' Use Tiger Palm on a Training Dummy
.' Practice Tiger Palm |q 31171/2
only BloodElf Monk
step
goto 63.4,42.6
.talk 63332
..turnin 31171
only BloodElf Monk
step
goto 64.8,46.5
.talk 15279
..turnin 10068
only BloodElf Mage
step
goto 64.0,42.8
.talk 15295
..turnin 8330
..turnin 8345
step
goto 61.8,39.3
.talk 15296
..turnin 8336
only BloodElf
step
goto 58.5,38.8
.talk 15297
..turnin 8346
only BloodElf
step
ding 4
step
goto 52.9,49.7
.talk 15281
..turnin 8327
..accept 8334
step
goto 41.9,46.6
.kill 7 Tender##15271+ |q 8334/1
.kill 7 Feral Tender##15294+ |q 8334/2
step
goto 52.9,49.7
.talk 15281
..turnin 8334
..accept 8335
step
goto 40.1,63.3
.kill 8 Arcane Wraith##15273+ |q 8335/1
.kill 2 Tainted Arcane Wraith##15298+ |q 8335/2
.collect 1 Tainted Arcane Sliver##20483 |n
.' Click the Tainted Arcane Sliver in your bags |use Tainted Arcane Sliver##20483
..accept 8338
step
goto 38.9,64.0
.' Follow the ramps all the way to the top
.from Felendren the Banished##15367
.get Felendren's Head |q 8335/3
step
ding 5
step
goto 52.9,49.7
.talk 15281
..turnin 8335
..accept 8347
step
goto 58.5,38.8
.talk 15297
..turnin 8338
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Eversong Woods (1-12)\\Eversong Woods (5-12)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Silverpine Forest (11-20)\\Silverpine Forest (11-20)
startlevel 5.39
step
goto Eversong Woods,40.4,32.2
.talk 15301
..turnin 8347 |tip You may not have this breadcrumb quest to turn in.
..accept 9704
step
goto 42.0,35.7
.clicknpc Slain Outrunner##17849
..turnin 9704
..accept 9705
step
goto 40.4,32.2
.talk 15301
..turnin 9705
..accept 8350
step
goto 47.3,46.3
.talk 15418
..accept 8472
step
goto 48.1,47.7
.talk 15433
..turnin 8350
step
goto 48.1,47.7
.talk 15433
.home Falconwing Square
step
goto 48.2,46
.talk 15403
..accept 8463
step
goto 48.2,46.3
.click Wanted: Thaelis the Hungerer##6902
..accept 8468
step
goto 45,37.8
.from Thaelis the Hungerer##15949
.get Thaelis's Head |q 8468/1
step
goto 45.9,43.7
.click Unstable Mana Crystal Crate##6791+
.get 6 Unstable Mana Crystal |q 8463/1
.from Arcane Patroller##15638+
.get 6 Arcane Core |q 8472/1
step
goto 47.3,46.3
.talk 15418
..turnin 8472
..accept 8895
step
goto 47.8,46.6
.talk 16924
..turnin 8468
step
goto 48.2,46
.talk 15403
..turnin 8463
..accept 9352
step
ding 6
step
goto 44.6,53.1
.talk 15405
..turnin 8895
..accept 9119
step
goto 45.2,56.4
.talk 15941
..accept 9035
step
goto 44.9,61.0
.talk 15945
..turnin 9035
..accept 9062
step
goto 44.3,62.0
.click Soaked Tome##2530 |tip It's underwater here under the bridge.
.get Antheol's Elemental Grimoire |q 9062/1
step
goto 44.9,61.0
.talk 15945
..turnin 9062
..accept 9064
step
goto 36.7,57.4
.talk 15401
..turnin 9119
..accept 8486
step
goto 35.4,57.4
.kill 5 Manawraith##15648+ |q 8486/1
.kill 5 Mana Stalker##15647+ |q 8486/2
step
goto 33.9,58.4
.from Darnassian Scout##15968+
.' Defeat an Intruder |q 9352/1
.collect Incriminating Documents##20765 |n
.' Click the Incriminating Documents in your bags |use Incriminating Documents##20765
..accept 8482
step
goto 36.7,57.4
.talk 15401
..turnin 9352
..turnin 8486
step
ding 7
step
goto 30.2,58.3
.talk 15920
..accept 8884
step
goto 27.3,57.2
.from Grimscale Forager##15670+, Grimscale Seer##15950+
.get 8 Grimscale Murloc Head |q 8884/1
step
goto 30.2,58.3
.talk 15920
..turnin 8884
..accept 8885
step
'Hearth to Falconwing Square |goto Eversong Woods,48.2,47.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 48.2,46
.talk 15403
..turnin 8482
..accept 8483
step
goto 44.6,53.1
.talk 15420
..' Tell him you need a moment of his time
.from Prospector Anvilward
.get Prospector Anvilward's Head |q 8483/1
step
goto 48.2,46
.talk 15403
..turnin 8483
..accept 9256
step
goto 50.3,50.8
.talk 15416
..accept 8475
step
goto 50.3,52.9
.kill 8 Plaguebone Pillager##15654+ |q 8475/1
step
goto 50.3,50.8
.talk 15416
..turnin 8475
step
ding 8
step
goto 55.7,54.5
.talk 15970
..turnin 9064
..accept 9066
step
goto 45.2,56.4
.' Use Antheol's Disciplinary Rod on Apprentice Ralen |use Antheol's Disciplinary Rod##22473 |tip Standing next to a broken down red wagon.
.' Discipline Apprentice Ralen |q 9066/2
'|modelnpc Apprentice Ralen##15941
step
goto 44.9,61.0
.' Use Antheol's Disciplinary Rod on Apprentice Meledor |use Antheol's Disciplinary Rod##22473 |tip Standing on the water bank, near the bridge.
.' Discipline Apprentice Meledor |q 9066/1
'|modelnpc Apprentice Meledor##15945
step
goto 44.7,69.6
.talk 15417
..accept 8491
step
goto 44.0,70.8
.talk 16210
..accept 9395
..accept 9254
step
goto 43.7,71.2
.talk 15397
..accept 9358
step
goto 43.7,71.2
.talk 15397
.home Fairbreeze Village
step
goto 43.6,71.2
.talk 16397
..accept 9258
step
goto 43.7,71.6
.talk 16261
..accept 9130
only BloodElf
step
goto 43.3,70.8
.talk 15939
..turnin 9256
..accept 8892
step
goto 43.9,70.0
.talk 44036
..turnin 9130
..accept 9133
only BloodElf
step
goto 54.4,50.8
.talk 44036
.' Fly to Silvermoon City |goto Eversong Woods,54.4,50.8,0.5 |noway |c
only BloodElf
step
goto 55.7,54.5
.talk 15970
..turnin 9066
step
goto Silvermoon City,53.9,71.0
.talk 16191
..turnin 9133
..accept 9134
only BloodElf
step
goto Eversong Woods,54.4,50.7
.talk 16192
..turnin 9134
..accept 9135
only BloodElf
step
goto 54.4,50.7
.talk 16192
.' Fly to Fairbreeze Village, Eversong Woods |goto Eversong Woods,44.0,69.9,0.5 |noway |c
only BloodElf
step
goto 43.7,71.6
.talk 16261
..turnin 9135
only BloodElf
step
goto 40.5,65.6
.from Springpaw Stalker##15651+
.get 6 Springpaw Pelt |q 8491/1
.' There will be more around [46.3,67.3]
step
goto 38.1,73.6
.talk 16144
..turnin 9395
..accept 9067
step
goto 36.4,66.8
.talk 15404
..accept 8480
step
goto 36.4,66.6
.talk 15921
..accept 8886
step
goto 34.1,69.1
.kill 5 Wretched Thug##15645+ |q 8892/1
.kill 5 Wretched Hooligan##16162+ |q 8892/2
.click Weapon Container##6792+ |tip They are all around this area and inside the big building.
.get 8 Sin'dorei Armaments |q 8480/1
step
goto 25.9,68.5
.from Grimscale Murloc##15668+, Grimscale Oracle##15669+
.collect Captain Kelisendra's Lost Rutters##21776 |n
.' Click Captain Kelisendra's Lost Rutters in your bags |use Captain Kelisendra's Lost Rutters##21776
..accept 8887
.click Captain Kelisendra's Cargo##6670 |tip The are sitting upright next to the murloc huts.
.get 6 Captain Kelisendra's Cargo |q 8886/1
.from Mmmrrrggglll##15937 |tip He is a bigger orange murloc that walks along the beach around this area.
.get Ring of Mmmrrrggglll |q 8885/1
step
ding 9
step
goto 30.2,58.3
.talk 15920
..turnin 8885
step
'Hearth to Fairbreeze Village |goto 43.7,71.3,1.0 |use Hearthstone##6948 |noway |c
step
goto 43.3,70.8
.talk 15939
..turnin 8892
..accept 9359
step
goto 44.1,70.3
.talk 16444
.buy 1 Bundle of Fireworks |q 9067/3
step
goto 44.7,69.6
.talk 15417
..turnin 8491
step
goto 36.4,66.8
.talk 15404
..turnin 8480
..accept 9076
step
goto 36.4,66.6
.talk 15921
..turnin 8886
..turnin 8887
step
goto 32.8,69.6
.' Go all the way to the top of the big building
.from Aldaron the Reckless##16294
.get Aldaron's Head |q 9076/1
step
goto 36.4,66.8
.talk 15404
..turnin 9076
step
goto 34.1,80.0
.talk 15398
..turnin 9258
..accept 8473
step
goto 35.0,84.1
.from Old Whitebark##15409
.collect Old Whitebark's Pendant##23228
.' Click Old Whitebark's Pendant in your bags |use Old Whitebark's Pendant##23228
..accept 8474
step
goto 35.0,84.1
.kill 10 Withered Green Keeper##15637+ |q 8473/1
step
ding 10
step
goto 34.1,80.0
.talk 15398
..turnin 8473
..turnin 8474
..accept 10166
step
goto 37.5,86.3
.' Use Old Whitebark's Pendant next to this huge stone with a blue symbol on it |use Old Whitebark's Pendant##28209
.' Fight Whitebark's Spirit until he surrenders
.talk 19456
..turnin 10166
step
goto 46.9,71.8
.talk 15942
..turnin 9358
..accept 9252
step
goto 50.2,78.2
.kill 4 Rotlimb Marauder##15658+ |q 9252/1
.kill 4 Darkwraith##15657+ |q 9252/2
step
goto 54.3,71
.talk 15402
..turnin 9254
..accept 8487
step
goto 52.6,70.9
.click Tainted Soil Sample##49+
.get 8 Tainted Soil Sample |q 8487/1
step
goto 54.3,71
.talk 15402
..turnin 8487
..'Prepare to fight
..accept 8488
step
goto 54.3,71
.' Protect Apprentice Mirveda from the ambushers |q 8488/1
step
goto 54.3,71
.talk 15402
..turnin 8488
..accept 9255
step
goto 46.9,71.8
.talk 15942
..turnin 9252
..accept 9253
step
ding 11
step
goto 44.0,70.8
.talk 16210
..turnin 9255
..accept 9144
step
goto 43.9,70.0
.talk 44036
.' Fly to Silvermoon City |goto Eversong Woods,54.4,50.8,0.5 |noway |c
step
goto 79.5,58.5
.talk 16442
.buy Suntouched Special Reserve |q 9067/1
step
goto 60.4,62.5
.talk 16443
.buy Springpaw Appetizers |q 9067/2
step
goto 60.3,62.8
.talk 15399
..turnin 9359
..accept 8476
step
goto 59.5,62.6
.talk 15400
..accept 8477
step
goto 60.3,61.4
.talk 15951
..accept 8888
step
goto 67.8,56.5
.talk 15924
..turnin 8888
..accept 8889
..accept 9394
step
goto 68.9,52.0
.click Orb of Translocation##7186
..'It will teleport you up to the building |goto 67.5,52.1,0.3 |noway |c
step
goto 68.9,51.9
.click Duskwither Spire Power Source##6706
.' Deactivate the First Power Source |q 8889/1
step
goto 68.9,51.9
.click Duskwither Spire Power Source##6706 |tip It's on the second floor.
.' Deactivate the Second Power Source |q 8889/2
step
goto 69.2,52.1
.click Magister Duskwither's Journal##6619
..accept 8891
step
goto 69.7,53.3
.click Duskwither Spire Power Source##6706 |tip It's all the way at the top of this building, up a huge staircase.
.' Deactivate the Third Power Source |q 8889/3
step
goto 
.click Orb of Translocation##7186
..' It will teleport you back down |goto Eversong Woods,68.9,52.0,0.1 |noway |c
step
goto 68.7,46.9
.talk 15969
..turnin 9394
..accept 8894
step
goto 69.5,48.1
.kill 6 Mana Serpent##15966+ |q 8894/1
.kill 6 Ether Fiend##15967+ |q 8894/2
step
goto 68.7,46.9
.talk 15969
..turnin 8894
step
goto 67.8,56.5
.talk 15924
..turnin 8889
..accept 8890
step
goto 60.3,61.4
.talk 15951
..turnin 8890
..turnin 8891
step
goto 70,72.3
.from Spearcrafter Otembe##15408
.get Otembe's Hammer |q 8477/1
step
goto 70.5,72.3
.talk 15406
..accept 8479
step
goto 62.6,79.7
.from Chieftain Zul'Marosh##15407
.get Chieftain Zul'Marosh's Head |q 8479/1
.collect Amani Invasion Plans##23249 |q 9360
.' Click the Amani Invasion Plans in your bags |use Amani Invasion Plans##23249
..accept 9360
step
ding 12
step
goto 70.5,72.3
.talk 15406
..turnin 8479
step
goto 70,72.3
.kill 5 Amani Berserker##15643+ |q 8476/1
.kill 5 Amani Axe Thrower##15641+ |q 8476/2
step
goto 60.3,62.8
.talk 15399
..turnin 8476
..turnin 9360
..accept 9363
step
goto 59.5,62.6
.talk 15400
..turnin 8477
step
'Hearth to Fairbreeze Village |goto Eversong Woods,43.7,71.3,0.5 |use Hearthstone##6948 |noway |c
step
goto 43.3,70.8
.talk 15939
..turnin 9363
step
goto 38.1,73.6
.talk 16144
..turnin 9067
step
goto 44.2,85.5
.talk 16362
..turnin 9253
..accept 8490
step
goto 55.4,84.2
.' Use your Infused Crystal next to the huge stone with a big blue symbol on it |use Infused Crystal##22693
.' Protect the Infused Crystal from the mobs that come for 1 minute
.' Energize the Runestone |q 8490/1
step
goto 44.2,85.5
.talk 16362
..turnin 8490
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Ghostlands (12-20)\\Ghostlands (12-20)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Hillsbrad Foothills (20-26)\\Hillsbrad Foothills (20-26)
startlevel 12.85
step
goto Eversong Woods,49.0,89.0
.talk 16183
..turnin 9144
|only if havequest(16183)
step
goto 49.0,89.0
.talk 16196
..accept 9147
step
goto Ghostlands,49.3,12.6
.from Starving Ghostclaw##16347+, Mistbat##16353+
.get 4 Plagued Blood Sample |q 9147/1
step
goto Eversong Woods,49.0,89.0
.talk 16196
..turnin 9147
step
goto 49.0,89.0
.talk 16183
..accept 9148
step
ding 13
step
goto Ghostlands,46.3,28.4
.talk 16197
..turnin 9148
..accept 9327 |or
..accept 9329 |or
step
goto 45.4,30.5
.talk 16189
.fpath Tranquillien
step
goto 44.8,32.5
.talk 16252
..turnin 9329 |or
..turnin 9327 |or
..accept 9758
step
goto 46.3,28.4
.talk 16197
..turnin 9758
..accept 9138
step
goto 47.3,28.6
.talk 16224
..accept 9152
step
goto 48.9,32.4
.talk 16542
.home Tranquillien
step
goto 47.7,34.9
.talk 16198
..accept 9149
step
goto 60.6,14.0
.kill 10 Nerubis Guard##16313+ |q 9138/1
step
goto 46.3,28.4
.talk 16197
..turnin 9138
..accept 9139
step
goto 33.6,26.5
.click Rathis Tomber's Supplies##1869 |tip It's in a wagon with a purple canopy over it.
.get Rathis Tomber's Supplies |q 9152/1
step
goto 27.3,16.2
.kill 6 Quel'dorei Ghost##16325+ |q 9139/1
.kill 4 Quel'dorei Wraith##16326+ |q 9139/2
step
goto 20.5,21.4
.from Withered Grimscale##16403+, Zombified Grimscale##16402+
.get 6 Plagued Murloc Spine |q 9149/1
step
'Hearth to Tranquillien |goto 48.9,32.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 47.1,28.3
.talk 16224
..turnin 9152
step
goto 46.3,28.4
.talk 16197
..turnin 9139
..accept 9140
step
goto 46.0,32.0
.talk 16199
..accept 9150
step
goto 45.5,32.5
.talk 16213
..accept 9145
step
goto 44.9,32.5
.talk 16231
..accept 9160
step
goto 44.8,32.3
.talk 16251
..accept 9192
step
goto 46.0,33.6
.talk 16200
..accept 9155
step
goto 47.7,34.9
.talk 16198
..turnin 9149
step
goto 48.4,30.9
.talk 16253
..accept 9171
step
goto 40.5,33.5
.kill 10 Risen Hungerer##16301+ |q 9155/1
.kill 10 Gangled Cannibal##16309+ |q 9155/2
.' More can be found around [38.3,36.5]
step
ding 14
step
goto 35.9,32.9
.from Arcane Devourer##16304+, Mana Shifter##16310+
.get 8 Crystallized Mana Essence |q 9150/1
step
goto 27.6,31.1
.from Spindleweb Spider##16350+
.get 5 Crunchy Spider Leg |q 9171/1
.' You can find more around [33.5,22.2]
step
goto 37.7,22.9 |n
.' Follow the path up |goto 37.7,22.9,0.5 |noway |c
step
goto 35.4,12.4
.' Go to this spot |tip Get near the intertwined tree lamp in the middle of the camp.
.' Investigate An'daroth |q 9160/1
.kill 12 Sentinel Spy##16330+ |q 9160/2
step
goto 48.0,31.0
.talk 16253
..turnin 9171
step
goto 46.0,32.0
.talk 16199
..turnin 9150
step
goto 44.9,32.5
.talk 16231
..turnin 9160
..accept 9163
step
goto 44.7,32.3
.talk 16251
..accept 9199
step
goto 44.8,32.8
.talk 16289
..accept 9193
step
goto 46.0,33.6
.talk 16200
..turnin 9155
step
goto 31.4,48.3
.talk 16293
..accept 9207
step
goto 29.7,46.9
.kill 8 Blackpaw Gnoll##16334+ |q 9192/1
.kill 6 Blackpaw Scavenger##16335+ |q 9192/2
.kill 4 Blackpaw Shaman##16337+ |q 9192/3
.get 6 Underlight Ore |q 9207/1
step
ding 15
step
goto 18.8,46.1
.from Phantasmal Seeker##16323+
.get 6 Phantasmal Substance |q 9140/1
.from Stonewing Slayer##16324+
.get 4 Gargoyle Fragment |q 9140/2
step
goto 12.6,26.5
.click Night Elf Plans: An'daroth##183
.get Night Elf Plans: An'daroth |q 9163/1
.' It can also spawn at [13.7,26.8]
step
goto 12.9,23.9
.click Night Elf Plans: An'owyn##222
.get Night Elf Plans: An'owyn |q 9163/2
.' It can also spawn at [12.5,24.8]
step
goto 10.5,22.6
.click Night Elf Plans: Scrying on the Sin'dorei##164
.get Night Elf Plans: Scrying on the Sin'dorei |q 9163/3
step
'Hearth to Tranquillien |goto 48.9,32.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 46.3,28.4
.talk 16197
..turnin 9140
step
goto 44.9,32.5
.talk 16231
..turnin 9163
..accept 9166
step
goto 44.7,32.3
.talk 16251
..turnin 9192
step
goto 44.8,32.5
.talk 16252
..accept 9173
step
goto 48.9,31.3
.talk 16205
..accept 9218
..accept 9216
step
goto 57.6,14.9
.talk 16601
..accept 9315
step
goto 61.3,15.9
.kill Anok'suten##16357 |q 9315/1 |tip He walks all around this village, so you may need to search for him.
step
goto 69.4,15.2
.talk 16219
..turnin 9145
..accept 9143
step
goto 74.8,12.3
.from Shadowpine Ripper##16340+, Shadowpine Witch##16341+
.get 6 Zeb'Sora Troll Ear |q 9143/1
step
goto 69.4,15.2
.talk 16219
..turnin 9143
..accept 9146
step
goto 72.3,19.1
.talk 16201
..accept 9157
step
goto 72.5,32.1
.talk 16202
..accept 9158
step
goto 72.3,31.3
.talk 16463
..accept 9276
step
goto 72.4,29.6
.talk 16220
..turnin 9146
..accept 9214
step
goto 72.2,29.8
.talk 16462
..accept 9274
step
goto 72.0,32.6
.talk 16203
..accept 9161
step
goto 73.5,21.9
.kill 8 Ravening Apparition##16327+ |q 9274/1
.kill 8 Vengeful Apparition##16328+ |q 9274/2
.click Glistening Mud##49+
.get 8 Wavefront Medallion |q 9157/1
step
goto 72.3,19.1
.talk 16201
..turnin 9157
..accept 9174
step
goto 71.3,15.1
.click Altar of Tidal Mastery##4853
.kill Aquantion##16292 |q 9174/1
step
goto 72.3,19.1
.talk 16201
..turnin 9174
step
ding 16
step
goto 79.6,17.6
.click Dusty Journal##470 |tip It's laying on the balcony platform of this building.
..turnin 9161
..accept 9162
step
goto 75.8,28.4
.kill 10 Ghostclaw Lynx##16348+ |q 9158/1 |tip The Ghostclaw Lynx share spawn points with the bats.
step
goto 72.5,32.1
.talk 16202
..turnin 9158
..accept 9159
step
goto 72.2,29.8
.talk 16462
..turnin 9274
step
goto 72.0,32.6
.talk 16203
..turnin 9162
..accept 9172
step
goto 72.6,31.6
.talk 16464
..accept 9275
step
goto 73.9,38.0
.kill 10 Vampiric Mistbat##16354+ |q 9159/1
step
goto 78.6,38.1
.kill 8 Shadowpine Shadowcaster##16469+ |q 9276/1
.get 3 Shadowcaster Mace |q 9214/2
.kill 8 Shadowpine Headhunter##16344+ |q 9276/2
.get 3 Headhunter Axe |q 9214/1
step
goto 72.3,31.3
.talk 16463
..turnin 9276
..accept 9277
step
'Hearth to Tranquillien |goto 48.9,32.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 46.3,28.4
.talk 16197
..turnin 9315
step
ding 17
step
goto 39.2,36.3
.from Risen Stalker##16302+, Risen Hungerer##16301+
.get 10 Rotting Heart |q 9216/1
.' You can find more around [37.8,45.8]
step
goto 29.8,40.9
.kill 8 Spindleweb Lurker##16351+ |q 9159/2
.' You can find more around [26.4,53.5]
step
goto 17,59
.kill 8 Deatholme Acolyte##16315+ |q 9173/1
.kill 10 Fallen Ranger##16314+ |q 9173/2
.collect The Lady's Necklace##22597 |n
.' Click The Lady's Necklace in your bags |use The Lady's Necklace##22597
..accept 9175
step
'Hearth to Tranquillien |goto 48.9,32.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 48.9,31.3
.talk 16205
..turnin 9216
step
goto 46.0,31.9
.talk 16199
..accept 9151
step
goto 44.8,32.4
.talk 16252
..turnin 9173
..turnin 9175
step
goto 55.2,44.8 |n
.' Follow this path |goto 55.2,44.8,1.0 |noway |c
step
goto 55.1,48.8
.talk 16239
..turnin 9172
..accept 9176
step
goto 54.9,48.5
.talk 16291
..turnin 9207
step
goto 54.9,48.5
.talk 16204
..turnin 9151
..accept 9220
step
ding 18
step
goto 57.1,45.0 |n
.' Follow this path |goto 57.1,45.0,0.5 |noway |c
step
goto 60.7,42.7 |n
.' Follow the path up |goto 60.7,42.7,0.5 |noway |c
step
goto 60.3,35.6
.talk 16237
..turnin 9166
..accept 9169
step
goto 57.8,64.9
.from Sentinel Infiltrator##16333+
.collect Crystal Controlling Orb##23191
step
goto 58.0,65.1
.click Night Elf Moon Crystal##6749
.' Deactivate the Night Elf Moon Crystal |q 9169/1
step
goto 65.1,66.8
.click Raw Meat Rack##4351
.' Poison the Raw Meat Rack |q 9275/1
step
goto 63.0,75.0
.click Smoked Meat Rack##409
.' Poison the Smoked Meat Rack |q 9275/2
step
goto 68.3,57.8
.click Fresh Fish Rack##6705
.' Poison the Fresh Fish Rack |q 9275/3
step
goto 66.9,58.6
.kill 10 Shadowpine Catlord##16345+ |q 9277/1
.get 3 Catlord Claws |q 9214/3
.kill 10 Shadowpine Hexxer##16346+ |q 9277/2
.get 3 Hexxer Stave |q 9214/4
.' You can find more around [63.5,67.4]
step
goto 72.5,32.1
.talk 16202
..turnin 9159
step
goto 72.3,31.2
.talk 16463
..turnin 9277
step
goto 72.4,29.6
.talk 16220
..turnin 9214
step
goto 72.6,31.6
.talk 16464
..turnin 9275
step
goto 67.7,28.9 |n
.' Follow this path |goto 67.7,28.9,0.5 |noway |c
step
goto 66.2,28.5 |n
.' Enter the Amani Catacombs |goto 66.2,28.5,0.5 |noway |c
step
goto 62.9,31.1
.click Mummified Troll Remains##6804 |tip Do this as you walk.
.' Go to this spot
.' Investigate the Amani Catacombs |q 9193/1
step
goto 62.8,31.8
.from Mummified Headhunter##16342+, Shadowpine Oracle##16343+
.get 8 Troll Juju |q 9199/1
.click Mummified Troll Remains##6804
.' Burn 10 Mummified Troll Remains |q 9193/2
.' There are more Mummified Troll Remains in the hallway at [64.9,28.5]
step
62.9,32.7
.talk 16295
..accept 9212
.' Escort Ranger Lilatha back to Farstrider Enclave |q 9212/1
step
goto 72.4,29.6
.talk 16220
..turnin 9212
step
ding 19
step
goto 60.7,42.7 |n
.' Follow this path |goto 60.7,42.7,0.5 |noway |c
step
goto 60.3,35.6
.talk 16237
..turnin 9169
step
'Hearth to Tranquillien |goto 48.9,32.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 44.7,32.3
.talk 16251
..turnin 9199
step
goto 44.8,32.8
.talk 16289
..turnin 9193
step
goto 40.4,49.8
.click Worn Chest##10
.get Stone of Flame |q 9176/1
step
goto 34.3,47.7
.click Dented Chest##10
.get Stone of Light |q 9176/2
step
 goto 38.1,58.6
.from Dreadbone Sentinel##16305+, Deathcage Sorcerer##16308+
.get 10 Spinal Dust |q 9218/1
.' You can find more around [36.3,68.8]
step
goto 36.0,71.7 |n
.' Enter Deatholme |goto 36.0,71.7,0.5 |noway |c
step
goto 36.9,76.1
.kill 6 Nerubis Centurion##16319+ |q 9220/2
.' You can find a few more around [39.2,79.7]
step
goto 37.8,81.3
.kill 5 Eye of Dar'Khan##16320+ |q 9220/1
.kill 6 Wailer##16321+ |q 9220/3
step
goto 46.4,56.4
.talk 16480
..accept 9281
step
goto 46.9,60.4
.kill 10 Greater Spindleweb##16352+ |q 9281/1
.kill 10 Ghostclaw Ravager##16349+ |q 9281/2
.' You can find more:
.' Around [56.4,59.9]
.' Around [42.8,55.8]
step
goto 46.4,56.4
.talk 16480
..turnin 9281
step
goto 55.1,48.8
.talk 16239
..turnin 9176
step
goto 54.9,48.6
.talk 16204
..turnin 9220
..accept 9170
step
goto 54.8,48.4
.talk 16240
..accept 9877
step
ding 20
step
goto 47.7,34.9
.talk 16198
..turnin 9877
..accept 9164
step
goto 48.9,31.3
.talk 16205
..turnin 9218
step
goto 36.0,71.7 |n
.' Enter Deatholme |goto 36.0,71.7,0.5 |noway |c
step
goto 31.7,73.7 |n
.' Enter the crypt |goto 31.7,73.7,0.5 |noway |c
step
goto 32.1,74.3
.kill Jurion the Deceiver##16248 |q 9170/3
step
goto 32.1,74.0
.talk 16208
..' <Administer the restorative draught.>
.' Rescue Apothecary Enith |q 9164/1
step
goto 37.4,79.3
.kill Mirdoran the Fallen##16250 |q 9170/1
step
goto 35.8,89.1
.kill Masophet the Black##16249 |q 9170/4
.' He can also spawn at [29.3,88.9]
step
goto 32.7,90.5
.kill Borgoth the Bloodletter##16247 |q 9170/2
.' He can also be found at [40.9,83.1]
step
goto 32.8,89.8
.talk 16209
..' <Administer the restorative draught.>
.' Rescue Ranger Vedoran |q 9164/3
step
goto 37.5,84.7 |n
.' Follow the path up |goto 37.5,84.7,0.5 |noway |c
step
goto 40.8,83.2
.talk 16206
..' <Administer the restorative draught.>
.' Rescue Apprentice Varnis |q 9164/2
step
'Hearth to Tranquillien |goto 48.9,32.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 54.9,48.5
.talk 16204
..turnin 9170
step
goto 54.8,48.4
.talk 16240
..turnin 9164
step
goto 72.2,31.2
.click Wanted Poster: Kel'gash the Wicked##6902
.accept 9215
.' This is a group quest, so you may need some extra help with it.
step
goto Ghostlands,65.3,79.5
.from Kel'gash the Wicked##16358
.get Head of Kel'gash the Wicked |q 9215/1
step
goto 72.4,29.7
.talk 16220
.turnin 9215
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Death Knight (55-58)",[[
author support@zygorguides.com
condition invalid not raceclass('DeathKnight') !!Death Knight only.
condition suggested raceclass('DeathKnight') and not completedq(13189)
condition suggested !exclusive
condition end completedq(13189)
next Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Blasted Lands (57-60)\\Blasted Lands (57-60)
startlevel 55
dynamic on
step
goto Plaguelands: The Scarlet Enclave,51.3,35.2
.talk 25462
..accept 12593
step
goto 48,28.5
.talk 28357
..turnin 12593
..accept 12619
step
goto 47.4,31
.click Battle-worn Sword##7961
.collect Battle-worn Sword##38607 |n
.' Click the Battle-worn Sword in your bags next to a runeforge |use Battle-worn Sword##38607 |tip The Runforges look like big demon skull furnace things.
.get Runebladed Sword|q 12619/1
step
goto 48,28.5
.talk 28357
..turnin 12619
..accept 12842
step
goto 47.4,31
.' Use your Runeforging ability while standing near the Runeforge |cast Runeforging |tip They look like big skull furnaces.
.' Engrave your sword with the rune of your choice |q 12842/1
step
goto 48,28.5
.talk 28357
..turnin 12842
..accept 12848
step
goto 48.9,28.7
.' Equip the Runed Soulblade |use Runed Soulblade##38707
.click Acherus Soul Prison##8115
.' Dominate an Unworthy Initiate |q 12848/1
step
goto 48,28.5
.talk 28357
..turnin 12848
..accept 12636
step
goto 51.3,35.2
.talk 25462
..turnin 12636
..accept 12641
step
goto 52.1,35.2
.click Eye of Acherus Control Mechanism##8123
..' You will take control over the Eye of Acherus |havebuff Spell_Shadow_UnholyFrenzy |q 12641
..' Your World Map will NOT show your current position anymore!
..' If you stay floating high enough, the soldiers will not attack you.
..' Once the Eye stops moving, go immediately northeast to the blacksmith building.
..' Use your Siphon of Acherus ability near the floating red arrow |petaction 1
..' Analyze the New Avalon Forge |q 12641/1
step
'Go south to the big fort
.' Use your Siphon of Acherus ability near the floating red arrow |petaction 1
..' Analyze Scarlet Hold |q 12641/3
step
'Go west to the town hall building with the huge clock tower
.' Use your Siphon of Acherus ability near the floating red arrow |petaction 1
..' Analyze the New Avalon Town Hall |q 12641/2
step
'Go south to the small church
.' Use your Siphon of Acherus ability near the floating red arrow |petaction 1
..' Analyze the Chapel of the Crimson Flame |q 12641/4
step
'Use your Recall Eye of Acherus ability to return to Ebon Hold |nobuff Spell_Shadow_UnholyFrenzy |petaction 5
step
goto 51.3,35.2
.talk 25462
..turnin 12641
..accept 12657
step
'Stand on the pink glowing circle at the bottom of the stairs to teleport to the bottom level of Ebon Hold |goto 50.1,32.5,0.3 |noway |c
step
goto 48.9,29.7
.talk 28444
..turnin 12657
..accept 12850
step
goto 47.5,26.5
.talk 28472
..accept 12849 |instant
step
goto 51.6,34.5
.talk 28510
..turnin 12850
..accept 12670
step
goto 52.1,35|n
.clicknpc Scourge Gryphon##29488 |goto Plaguelands: The Scarlet Enclave,53.2,31.1,0.5 |noway |c
step
goto 52.3,34
.talk 28377
..turnin 12670
..accept 12678
step
goto 52.5,34.6
.talk 28653
..accept 12680
step
goto 54.6,34.2
.talk 29047
..accept 12733
step
'Walk around Death's Breach
.' Challenge Death Knight Initiates to duel
.' Defeat 5 Death Knights in a duel |q 12733/1
step
goto 54.6,34.2
.talk 29047
..turnin 12733
step
goto 53.2,36.9
.talk 28647
..accept 12679
step
goto 51.8,45.2
' |from Scarlet Captain##28611+, Scarlet Infantryman##28609+, Scarlet Medic##28608+, Scarlet Peasant##28557+
.kill 10 Scarlet Crusader |q 12678/1
step
goto 55.2,46.2
.click Abandoned Mail##4851
..accept 12711 |instant
step
goto 56.4,45
.kill 10 Citizen of Havenshire##28660+ |q 12678/2
step
goto 56.2,49.4
.click Saronite Arrow##8094+
.get 15 Saronite Arrow|q 12679/1
step
goto 55.6,43.2
.clicknpc Havenshire Colt##28607 |invehicle |c |q 12680
.' Run back to Death's Breach quickly
step
goto 52.5,34.6
.' Use your Deliver Stolen Horse ability on your bar when standing next to Salanar the Horseman |petaction Deliver Stolen Horse
.talk 28653
..turnin 12680
..accept 12687
step
goto 52.8,43.7
.from Dark Rider of Acherus##28768
.clicknpc Acherus Deathcharger##28782 |invehicle |c |tip They walk around on horses.
.' Run back to Death's Breach
step
goto 52.5,34.6
.' Use your Horseman's Call ability to call Salanar the Horseman |petaction Horseman's Call
.' Complete the Horseman's Challenge |q 12687/1
step
goto 52.5,34.6
.talk 28653
..turnin 12687
step
goto 52.3,34
.talk 28377
..turnin 12678
step
goto 53.2,36.9
.talk 28647
..turnin 12679
step
ding 56
step
goto 52.3,34
.talk 28377
..accept 12697
step
goto 54.1,35
.talk 28658
..turnin 12697
..accept 12698
step
goto 58.2,31
.' Use your Gift of the Harvester on Scarlet Miners inside this mine |use Gift of the Harvester##39253
.' Create 5 Scarlet Ghouls to follow you
step
goto 54.1,35
.' Stand next to Gothik the Harvester |tip Standing in front of a small roundish stone altar thing.  He has a goat skull on his head.
.' Return 5 Scarlet Ghouls
.talk 28658
..turnin 12698
..accept 12700
step
goto 52.3,34
.talk 28377
..turnin 12700
..accept 12701
step
goto 58.5,33
.click Inconspicuous Mine Car##7997 |tip It's a little mine car sitting next to an outhouse.
.' The miner takes you to a ship
.click Scarlet Cannon##245 |tip On the side of the ship.
.' Shoot the soldiers on the beach with the cannon
.kill 100 Scarlet Defender##4298+ |q 12701/1
step
'Use your Skeletal Gryphon Escape ability on your hotbar to escape to Death's Breach |goto 52.6,34.5,0.5 |noway |c
step
goto 52.3,34
.talk 28377
..turnin 12701
..accept 12706
step
goto 53.1,32.5|n
.clicknpc Scourge Gryphon##29501 |goto 51.1,34.7,0.5 |noway |c
step
goto 48.9,29.7
.talk 28444
..turnin 12706
..accept 12714
step
goto 52.1,35|n
.clicknpc Scourge Gryphon##29488 |goto Plaguelands: The Scarlet Enclave,53.2,31.1,0.5 |noway |c
step
goto 53.5,36.6
.talk 28907
..turnin 12714
..accept 12715
step
goto 55.9,52.4
.talk 28919
..accept 12716
step
'Go southwest into the crypt to 54.3,57.3 |goto 54.3,57.3
.talk 28911
..turnin 12715
..accept 12719
step
goto 54.7,57.4
.talk 28910
..accept 12722
step
goto 57.8,61.8
.click Empty Cauldron##7199 |tip In the basement of the building that looks like an inn.
.get Empty Cauldron|q 12716/1
step
goto 62,60.2
.click Iron Chain##8040 |tip It's inside the blacksmith house.
.get Iron Chain|q 12716/2
step
'Run around the town and do the following:
' |from Scarlet Commander##28936+, Scarlet Crusader##28940+, Scarlet Marksman##28610+, Scarlet Preacher##28939+
.kill 10 Scarlet Crusade Soldier |q 12722/1
.get 10 Crusader Skull |q 12716/3
.kill 15 Citizen of New Avalon##28941+ |q 12722/2
step
goto 52.2,71.2
.kill Mayor Quimby##28945 |q 12719/1
step
goto 52.5,71
.click New Avalon Registry##928
.get New Avalon Registry|q 12719/2
step
'Go northeast into the crypt to 54.3,57.3 |goto 54.3,57.3
.talk 28911
..turnin 12719
..accept 12720
step
goto 54.7,57.4
.talk 28910
..turnin 12722
step
goto 55.9,52.4
.talk 28919
..turnin 12716
..accept 12717
step
goto 56.1,52.1
.click Plague Cauldron##4271
..turnin 12717
step
goto 55.9,60.5
'Open the Ornate Jeweled Box in your bags |use Ornate Jeweled Box##39418
.' Equip the Keleseth's Persuader swords
.' Attack Scarlet soldiers and stop hitting them when they start talking, so you don't kill them too fast
.' Repeat until a soldier gives you information
.' Reveal the "Crimson Dawn" |q 12720/1
step
'Go northwest into the crypt to 54.3,57.3 |goto 54.3,57.3
.talk 28911
..turnin 12720
..accept 12723
step
goto 56.3,79.8
.talk 28914
..turnin 12723
..accept 12724
step
goto 56.3,80.2
.talk 28913
..accept 12725
step
'Go northeast into Scarlet Hold and into the basement to 63.0,67.8 |goto 63.0,67.8
.talk 28912
..turnin 12725
..accept 12727
step
'Koltira Deathweaver forms a bubble and you have to fight the mobs as the come in waves
.' Stay inside the bubble, it reduces spell damage done to you, so you'll live
.from High Inquisitor Valroth##29001
.get Valroth's Head |q 12727/1
step
ding 57
step
goto 63.0,68.3
.' Go upstairs in the fort
.click New Avalon Patrol Schedule##8051
.get New Avalon Patrol Schedule|q 12724/1
step
goto 56.3,79.8
.talk 28914
..turnin 12724
step
goto 56.3,80.2
.talk 28913
..turnin 12727
..accept 12738
step
goto 52.9,81.5
.talk 29053
..turnin 12738
..accept 12739 |only Tauren
..accept 12747 |only BloodElf
..accept 12748 |only Orc
..accept 12749 |only Troll
..accept 12750 |only Scourge
..accept 28650 |only Goblin
step
goto 54.5,83.9
.kill Malar Bravehorn##29032 |q 12739/1
only Tauren
step
goto 53.8,83.8
.kill Iggy Darktusk##29073 |q 12749/1
only Troll
step
goto 53.5,83.3
.kill Antoine Brack##29071 |q 12750/1
only Scourge
step
goto 53.8,83.3
.kill Kug Ironjaw##29072 |q 12748/1
only Orc
step
goto 54.3,83.3
.kill Lady Eonys##29074 |q 12747/1
only BloodElf
step
goto 54.1,83.8
.kill Gally Lumpstain |q 28650/1
only Goblin
step
goto 52.9,81.5
.talk 29053
..turnin 12739 |only Tauren
..turnin 12747 |only BloodElf
..turnin 12748 |only Orc
..turnin 12749 |only Troll
..turnin 12750 |only Scourge
..turnin 28650 |only Goblin
..accept 12751
step
goto 56.3,80.2
.talk 28913
..turnin 12751
step
goto 56.3,79.8
.talk 28914
..accept 12754
step
goto 60,78.5
.' Use your Makeshift Cover while standing on the edge of the hill |use Makeshift Cover##39645
.from Scarlet Courier##29076
.get Scarlet Courier's Belongings |q 12754/1
.get Scarlet Courier's Message |q 12754/2
step
goto 56.3,79.8
.talk 28914
..turnin 12754
..accept 12755
step
goto 65.6,83.8
.talk 29077
..turnin 12755
..accept 12756
step
goto 56.3,79.8
.talk 28914
..turnin 12756
..accept 12757
step
.click Portal to Acherus##8046 |goto 50.2,32.6,0.5 |noway |c
step
goto 48.9,29.7
.talk 28444
..turnin 12757
..accept 12778
step
goto 52.1,35|n
.clicknpc Scourge Gryphon##29488 |goto Plaguelands: The Scarlet Enclave,53.2,31.1,0.5 |noway |c
step
goto 53.6,36.9
.talk 29110
..turnin 12778
..accept 12779
step
.' Click the Horn of the Frostbrood in your bags |use Horn of the Frostbrood##39700
.' This will summon a dragon for you to ride around on
.' Fly and and use your dragon abilities to do the following:
.kill 150 Scarlet Soldier##4286+ |q 12779/1
.' Destroy 10 Scarlet Ballistas |q 12779/2
step
'Fly back to Death's Breach and click the red arrow on your hot bar to jump off the dragon |outvehicle |c
step
goto 53.6,36.9
.talk 29110
..turnin 12779
..accept 12800
step
goto 50.4,31.9|n
.' The path over to Browman Mill starts here |goto 50.4,31.9,0.5 |noway |c
step
'Follow the path northwest to 33.9,30.4 |goto 33.9,30.4
.talk 31082
..turnin 12800
..accept 12801
step
goto 34.4,31.1
.talk 29173
.' Tell him you are ready for the siege (you may be unable to do this if someone else already has, don't worry)
.' Wait for the battle to start in 5 minutes
.' Help fight the epic battle
.' Uncover The Light of Dawn |q 12801/1
step
'Talk to Highlord Darion Mograine after the battle
..turnin 12801
..accept 13165
step
'Use your new Death Gate spell and click the purple portal to go to Ebon Hold |goto Eastern Plaguelands,83.7,50.0,0.5 |cast Death Gate |noway |c
step
goto 83.4,49.4
.talk 29173
..turnin 13165
..accept 13166
step
'Stand on the purple circle to teleport upstairs |goto 82.7,47.8,0.5 |noway |c
step
goto 83,48
' |from Scourge Necromancer##31096+, Terrifying Abomination##31098+, Val'kyr Battle-maiden##31095+
.kill 10 Scourge |q 13166/2
.kill Patchwerk##31099 |q 13166/1
step
'Stand on the purple circle to teleport downstairs |goto 83.0,48.4,0.5 |noway |c
step
goto 83.4,49.4
.talk 31084
..turnin 13166
..accept 13189
step
ding 58
step
.click Portal to Orgrimmar##4395 |goto Durotar |noway |c
step
'Go inside Orgrimmar |goto Orgrimmar |noway |c
step
goto 48.1,70.5
.talk 39605
..turnin 13189
step
goto Orgrimmar,47.1,61.9 |n
.click Portal to Blasted Lands##8948 |goto Blasted Lands |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Tirisfal Glades (1-11)\\Undead (1-11)",[[
author support@zygorguides.com
condition suggested raceclass('Scourge') and level<=11
next Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Silverpine Forest (11-20)\\Silverpine Forest (11-20)
startlevel 1
dynamic on
step
goto Deathknell 40.7,78.5
.talk 49044
..accept 24959
step
goto 43.4,79.9
.talk 1568
..turnin 24959
..accept 28608
step
goto 41.9,82.9
.' Darnell will spawn and greet you.  Lead him into the crypt.
.click Thick Embalming Fluid##8544
.get Thick Embalming Fluid |q 28608/1
.click Corpse-Stitching Twine##9943
.get Corpse-Stitching Twine |q 28608/2
step
goto 43.4,79.9
.talk 1568
..turnin 28608
..accept 26799
step
goto 45.9,80.5
.talk 2307
..accept 24960
step
goto 40.6,73.0
.talk 49231
..' Tell him he died.
.' Speak with Valdred Moray |q 24960/3
step
goto 44.2,70.5
.talk 38895
..' Tell her you want to speak with her.
.' Speak with Lilian Voss |q 24960/1
step
goto  46.5,71.2
.talk 49230
..' Tell him you're not here to fight.
.' Speak with Marshal Redpath |q 24960/2
step
goto 44.0,73.7
.kill 6 Mindless Zombie##1501+ |q 26799/1
step
goto 43.4,79.9
.talk 1568
..turnin 26799
step
ding 2
step
goto 45.9,80.5
.talk 2307
..turnin 24960
..accept 25089
step
goto 49.7,56.5
.talk 1740
..turnin 25089
..accept 26800
step
goto 46.7,58.8
.talk 1569
..accept 26801
step
goto 52.3,44.3
' |from Rattlecage Skeleton##1890+, Wretched Ghoul##1502+
.kill 8 Deathknell Scourge |q 26801/1
.clicknpc Scarlet Corpse##49340+
.' Gather 6 Scarlet Corpses |q 26800/1
step
goto 49.7,56.5
.talk 1740
..turnin 26800
step
goto 46.7,58.8
.talk 1569
..turnin 26801
..accept 24962 |only Scourge Hunter
..accept 3095 |only Scourge Warrior
..accept 3099 |only Scourge Warlock
..accept 3098 |only Scourge Mage
..accept 3097 |only Scourge Priest
..accept 3096 |only Scourge Rogue
..accept 31146 |only Scourge Monk
step
ding 3
step
goto 46.8,58.3
.talk 1661
..accept 24961
step
goto 53.6,56.6
.talk 2122
..turnin 3096
..accept 24967
only Scourge Rogue
step
goto 49.3,61.9
.' Use Sinister Strike on the Target Dummies to build up combo points, then use Eviscerate on the Target Dummies
.' Practice Eviscerate 3 times |q 24967/2
only Scourge Rogue
step
goto 53.6,56.6
.talk 2122
..turnin 24967
only Scourge Rogue
step
goto 53.3,56.8
.talk 63272
..turnin 31146
..accept 31147
only Scourge Monk
step
goto 49.3,61.9
.' Use Tiger Palm on the Training Dummy
.' Practice Tiger Palm |q 31147/2
only Scourge Monk
step
goto 53.3,56.8
.talk 63272
..turnin 31147
only Scourge Monk
step
goto 47.8,58.2
.talk 2123
..turnin 3097
..accept 24966
only Scourge Priest
step
goto 49.3,61.9
.' Cast Shadow Word: Pain on the Training Dummies.
.' Practice Shadow Word: Pain 5 times |q 24966/2
only Scourge Priest
step
goto 47.8,58.2
.talk 2123
..turnin 24966
only Scourge Priest
step
goto 47.0,58.2
.talk 2124
..turnin 3098
..accept 24965
only Scourge Mage
step
goto 49.3,61.9
.' Cast Frost Nova ability on the Training Dummies
.' Practice Frost Nova 2 times |q 24965/2
only Scourge Mage
step
goto 47.0,58.2
.talk 2124
..turnin 24965
only Scourge Mage
step
goto 46.9,59.4
.talk 2126
..turnin 3099
..accept 24968
only Scourge Warlock
step
goto 49.3,61.9
.' Cast Corruption ability on the Training Dummies
.' Practice Corruption 5 times |q 24968/2
only Scourge Warlock
step
goto 46.9,59.4
.talk 2126
..turnin 24968
only Scourge Warlock
step
goto 54.2,56.4
.talk 2119
..turnin 3095
..accept 24969
only Scourge Warrior
step
goto 49.3,61.9
.' Use you Charge ability on a Training Dummy
.' Practice Charge |q 24969/2
only Scourge Warrior
step
goto 54.2,56.4
.talk 2119
..turnin 24969
only Scourge Warrior
step
goto 49.2,56.3
.talk 38911
..turnin 24962
..accept 24964
only Scourge Hunter
step
goto 49.3,61.9
.' Use your Steady Shot ability on the Training Dummies
.' Practice Steady Shot 5 times |q 24964/2
only Scourge Hunter
step
goto 49.2,56.3
.talk 38911
..turnin 24964
only Scourge Hunter
step
goto 54.3,57.2
.talk 38910
..' Tell her she's not hideous
.' Show Lilian her reflection |q 24961/1
.' She can also be found on the upper level of the building at the same coordinate.
step
goto 46.7,58.2
.talk 1661
..turnin 24961
..accept 28672
step
goto 55.5,37.7
.talk 1570
..turnin 28672
..accept 26802
step
goto 59.7,30.2
.from Young Scavenger##1508+, Ragged Scavenger##1509+
.get 4 Scavenger Paw |q 26802/1
.from Duskbat##1512+, Mangy Duskbat##1513+
.get 4 Duskbat Wing |q 26802/2
step
goto 55.5,37.7
.talk 1570
..turnin 26802
..accept 24973
step
goto 36.6,29.0
.kill 8 Young Night Web Spider##1504+ |q 24973/1
step
ding 4
step
goto 29.8,30.7
.kill 5 Night Web Spider##1505+ |q 24973/2
step
goto 55.5,37.7
.talk 1570
..turnin 24973
..accept 24970
step
goto 67.2,42.0
.talk 49425
..turnin 24970
..accept 24971
step
goto 70.0,69.7
.kill Marshal Redpath##49424 |q 24971/1
step
goto 74.4,65.5
.from Rotbrain Magus##49423+, Rotbrain Berserker##49422+
.' Kill 8 Rotbrain Undead |q 24971/2
step
goto 46.7,58.8
.talk 1569
..turnin 24971
..accept 24972
step
goto Tirisfal Glades 44.8,53.7
.talk 1519
..turnin 24972
..accept 24978
step
ding 5
step
goto 44.6,53.8
.talk 1518
..accept 24975
step
goto 44.8,53.7
.' Upstairs sitting on a bed.
.talk 38925
..accept 24974
step
goto 37.3,50.5
' |from Tirisfal Farmer##1934+, Tirisfal Farmhand##1935+
.kill 10 Tirisfal Farmer |q 24978/1
.click Tirisfal Pumpkin##60+
.get 10 Tirisfal Pumpkin |q 24975/1
.' There will be more Pumpkins and farmers around 35.4,51.4
step
goto 36.2,44.2
.' Fight a Vile Fin murloc
.' Use your Murloc Leash on the Vile Fin murloc when it is weak |use Murloc Leash##52059 |tip You will see a message in your chat box letting you know when the Vile Fin murloc is ready to be captured.  Make sure you capture it before you kill it.
.' Capture a Vile Fin |q 24974/1
step
goto 44.8,53.7
.talk 1519
..turnin 24978
..accept 24980
step
goto 44.6,53.8
.talk 1518
..turnin 24975
..accept 24976
step
goto 44.8,53.7
.' Stand on the bed
.' Return the Vile Fine |q 24974/2 |tip The murloc has to get close to the bed in order for you to return it to Sedrick Calston.
step
goto 44.8,53.7
.talk 38925
..turnin 24974
step
goto 49.2,55.0
.click Marrowpetal Stalk##7865+
.get 4 Marrowpetal |q 24976/1
step
goto 40.0,38.7
.click Xavren's Thorn##6807+
.get 4 Xavren's Thorn |q 24976/2
step
ding 6
step
goto 35.3,41.6
.clicknpc Briny Sea Cucumber##38933+
.get 8 Briny Sea Creature |q 24976/3
step
goto 32.5,47.4
.from Scarlet Warrior##1535+
.collect 1 A Scarlet Letter##52079 |n
.' Click A Scarlet Letter in your bags |use A Scarlet Letter##52079
..accept 24979
step
goto 31.7,46.3
.talk 38999
..' Tell her you're here to rescue her
.' Find the Scarlet Prisoner |q 24979/1
step
goto 32.5,47.4
.kill 10 Scarlet Warrior##1535+ |q 24980/1
step
goto 44.8,53.7
.talk 1519
..turnin 24980
..turnin 24979
step
goto 44.6,53.8
.talk 1518
..turnin 24976
..accept 24977
step
goto 44.7,52.6
.talk 1931
..turnin 24977
step
goto 44.1,53.9
.talk 10666
..accept 25038
step
goto 47.1,56.5
.click Gloom Weed##4111+ |tip Gather them as you follow the road east.
.get 3 Gloom Weed |q 25038/1
.' More can be found at [46.1,60.6]
step
goto 52.5,54.8
.talk 1496
..accept 25090
..accept 24982
step
goto 52.2,56.4
.from Ravaged Corpse##1526+, Rotting Dead##1525+
.get 7 Putrid Claw |q 25090/1
step
goto 52.5,54.8
.talk 1496
..turnin 25090
step
goto 60.1,52.7
.talk 10665
..turnin 25038
..accept 24990
step
goto 60.5,51.9
.talk 1515
..accept 24981
step
goto 60.9,51.5
.talk 5688
.home Brill
step
goto 61.0,50.4
.talk 1499 |tip He can be found inside this building up the stairs.
..turnin 24982
..accept 24983
step
goto 58.8,60.2
.from Cursed Darkhound##1548+
.get 5 Darkhound Blood |q 24990/1
.' A Worgen will appear and give you a quest when you kill a Cursed Darkhound
..accept 24992
.' More hounds can be found around [53.9,66.7]
step
ding 7
step
goto 53.0,66.1
.kill 3 Scarlet Zealot##1537+ |q 24981/1
.kill 3 Scarlet Missionary##1536+ |q 24981/2
.get Urgent Scarlet Memorandum |q 24981/3
step
goto 60.5,51.9
.talk 1515
..turnin 24981
..turnin 24992
..accept 24993
step
goto 60.1,52.7
.talk 10665 |tip He sometimes runs around this building. You may find him upstairs. 
..turnin 24990
..accept 24996
step
goto 60.0,52.9
.talk 2211
..turnin 24996
step
goto 59.8,53.2
.talk 10665 |tip He sometimes runs around this building. You may find him upstairs. 
..accept 24991
step
goto 60.1,52.4
.talk 1745
..accept 6321
only Scourge
step
goto 58.8,51.9
.talk 43124
..turnin 6321
..accept 6323
only Scourge
step
goto Undercity,61.5,41.8
.talk 4556
..turnin 6323
..accept 6322
only Scourge
step
goto Undercity,63.3,48.5
.talk 4551
..turnin 6322
..accept 6324
only Scourge
step
goto Tirisfal Glades,60.1,52.4
.talk 1745
..turnin 6324
only Scourge
step
goto 60.3,52.0
.kill 5 Worgen Infiltrator##38949+ |q 24993/1 |tip They walk stealthed around this area.  Look for little puffs of dust moving along the ground to spot them easily.
step
ding 8
step
goto 60.5,51.9
.talk 1515
..turnin 24993
step
goto 65.5,60.3
.talk 1495
..turnin 24983
step
goto 65.2,60.4
.talk 1521
..accept 24988
step
goto 66.9,54.9
.from Greater Duskbat##1553+, Vampiric Duskbat##1554+
.get 5 Duskbat Pelt |q 24988/1
step
goto 65.2,60.4
.talk 1521
..turnin 24988
step
goto 65.5,60.2
.talk 1495
..accept 24989
step
goto 61.0,50.4
.talk 1499
..turnin 24989
step
goto 61.7,34.6
.talk 38977
..turnin 24991
..accept 24994
step
goto 61.6,34.4
.talk 38978
..accept 24997
step
goto 56.7,41.4
.kill 8 Rot Hide Graverobber##1941+ |q 24997/1
.click Gloom Weed##4111+
.get 10 Doom Weed |q 24994/1
step
goto 59.5,38.8
.kill 5 Rot Hide Mongrel |q 24997/2
.from Rot Hide Gnoll##1674+
.get 6 Embalming Ichor |q 24997/3
step
goto 61.7,34.6
.talk 38977
..turnin 24994
..accept 24995
step
goto 61.6,34.4
.talk 38978
..turnin 24997
..accept 24998
..accept 24999
step
goto 58.7,30.7
.from Maggot Eye##1753
.get Maggot Eye's Paw |q 24998/1
step
goto 59.8,27.7
.from Vile Fin Puddlejumper##1543+, Vile Fin Minor Oracle##1544+
.get 5 Vile Fin Scale |q 24995/1
.' Run next to Vile Fin Tadpoles around this area
.' Frighten 12 Vile Fin Tadpoles |q 24999/1
.' There are more to frighten around [65.1,28.7]
step
goto 61.6,34.4
.talk 38978
..turnin 24998
..turnin 24999
step
ding 9
step
goto 61.7,34.6
.talk 38977
..turnin 24995
..accept 25031
step
goto 57.4,29.3 |n
.' The path through the mountains starts here |goto Tirisfal Glades,57.4,29.3,0.5 |noway |c
step
goto 54.6,29.9
.talk 1500
..turnin 25031
..accept 25003
step
goto 52.1,29.8
.kill 8 Wailing Ancestor##1534+ |q 25003/1
.kill 8 Rotting Ancestor##1530+ |q 25003/2
step
goto 54.6,29.9
.talk 1500
..turnin 25003
..accept 25004
..accept 25029
step
goto 46.0,30.3
.from Thurman Agamand##1656
.get Thurman's Remains |q 25029/3
step
goto 45.6,29.6
.from Gregor Agamand##1654
.get Gregor's Remains |q 25029/2
step
goto 49.4,36.0
.from Nissa Agamand##1655
.get Nissa's Remains |q 25029/1
step
goto 48.9,34.0
.from Devlin Agamand##1657
.get Devlin's Remains |q 25029/4
step
goto 47.6,32.4
.from Cracked Skull Soldier##1523+
.get 5 Notched Rib |q 25004/1
.from Darkeye Bonecaster##1522+
.get 3 Notched Skull |q 25004/2
step
goto 54.6,29.9
.talk 1500
..turnin 25004
..turnin 25029
..accept 25005
step
goto 61.0,50.4
.talk 1499
..turnin 25005
..accept 25006
step
goto 60.5,51.9
.talk 1515
..accept 26964
step
goto 62.0,53.0
.talk 39117
..' Tell her you are ready and follow her upstairs
.from Spirit of Devlin Agamand##38980
.' Complete the Procedure |q 25006/1
step
goto 61.0,50.4
.talk 1499
..turnin 25006
..accept 25007
step
goto 83.3,69.2
.talk 11057
..accept 25056
step
goto 83.3,69.0
.talk 10837
..turnin 25007
..accept 25009
step
ding 10
step
goto 83.1,72.0
.talk 46271
.home The Bulwark
step
goto 79.9,67.7
.from Plagued Bruin##39049+
.get 5 Plagued Bruin Hide |q 25056/1
.' You can find more Plagued Bruins at [76.0,70.7]
step
goto 77.5,55.1
.kill 3 Scarlet Zealot##1537+ |q 25009/1
.kill 4 Scarlet Friar##1538+ |q 25009/2
step
goto 83.3,69.0
.talk 10837
..turnin 25009
..accept 25010
step
goto 83.3,69.2
.talk 11057
..turnin 25056
..accept 25013
step
goto 81.5,57.8 |n
.' Pass through the mountains here |goto Tirisfal Glades,81.5,57.8,0.5 |noway |c
step
goto 84.4,52.1
.from Vicious Night Web Spider##1555+
.get 4 Vicious Night Web Spider Venom |q 25013/1
step
goto 87.5,43.3
.talk 13158
..turnin 25010
..accept 25046
step
goto 81.5,43.0 |n
.' Go to the road |goto Tirisfal Glades,81.5,43.0,0.5 |noway |c
step
goto 79.5,39.2 |n
.' The path to A Daughter's Embrace starts here |goto Tirisfal Glades,79.5,39.2,0.5 |noway |c
step
goto 79.5,25.8
.' Watch Lillian Voss kill her father in the tower
.' Accomplish Lillian's Mission |q 25046/1
step
goto 83.3,69.2
.talk 11057
..turnin 25013
step
goto 83.3,69.0
.talk 10837
..turnin 25046
..accept 25011
step
goto 83.6,69.9
.talk 37915
..turnin 25011
..accept 25012
step
goto 83.6,69.9
.talk 37915
..' Tell him you'll take that flight to Brill now |goto Tirisfal Glades,58.9,51.9,0.5 |noway |c
step
goto 60.5,51.9
.talk 1515
..turnin 25012
step
ding 11
step
'Go southwest to Silverpine Forest |goto Silverpine Forest |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Silverpine Forest (11-20)\\Silverpine Forest (11-20)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Hillsbrad Foothills (20-26)\\Hillsbrad Foothills (20-26)
startlevel 11.30
dynamic on
step
goto Silvermoon City 49.5,14.8 |n
.' If you are coming from Eversong Woods or Ghostlands you can transport to Silverpine by using the Orb of Translocation. |goto Tirisfal Glades 59.9,67.5 <5 |noway |c
only BloodElf
step
goto Silverpine Forest,57.4,10.1
.talk 44615
..turnin 26964 |tip You may not have this breadcrumb quest to turn in.
..accept 26965
.' Stand by for Warchief Garrosh Hellscream's arrival |q 26965/1
step
goto 57.4,10.1
.talk 44615 
..turnin 26965 
..accept 26989
step
goto 56.3,8.4
.talk 44784
..accept 26995
step
goto 56.8,9.2
.talk 44778
..accept 26992
step
goto 57.0,14.2
.kill 10 Worgen Renegade##44793+ |q 26989/1
.from Ferocious Grizzled Bear##1778+, Worg##1765+
.get 6 "Clean" Beast Guts |q 26995/1
.click Ferocious Doomweed##4112+
.get 8 Ferocious Doomweed |q 26992/1
.' More can be found around [60.6,13.5]
step
goto 57.4,10.1
.talk 44615
..turnin 26989
step
goto 56.8,9.2
.talk 44778
..turnin 26992
step
goto 56.3,8.4
.talk 44784
..turnin 26995
..accept 26998
step
ding 12
step
goto 57.9,8.7
.talk 44825
..' Tell him you need to take a bat to the Dawning Isles
.' Use the Blight Concoction ability on your hotbar on the murlocs you fly over
.kill 50 Vile Fin Murloc##1541+ |q 26998/2
step
goto 56.3,8.4
.talk 44784
..turnin 26998
step
goto 58.1,9.0
.talk 44789
..accept 27039
step
goto 53.9,13.0
.click Abandoned Outhouse##3332
..turnin 27039
..accept 27045
step
goto 53.3,12.6
.clicknpc Armoire##44894 |tip It's upstairs in this house.
.' Learn of Darius Crowley's Plans |q 27045/1
step
goto 58.1,9.0
.talk 44789
..turnin 27045
..accept 27056
step
goto 57.4,10.2
.talk 44365
..turnin 27056
..accept 27065
step
goto 44.0,21.4
.talk 44916
..turnin 27065
..accept 27069
step
goto 44.0,21.3
.talk 44917
..accept 27073
step
goto 44.8,20.9
.talk 44912
..accept 27082
step
goto 44.4,20.3
.talk 45496
.home Forsaken Rear Guard
step
goto 47.4,20.5
.from Giant Rabid Bear##1797+, Rabid Worg##1766+
.get 8 Diseased Organ |q 27082/1
.' More Wolves and Bears can be found around [50.6,17.5]
step
goto 44.8,20.9
.talk 44912
..turnin 27082
..accept 27088
step
goto 47.0,25.3
.' Use your Mutant Bush Chicken Cage on a Forest Ettin |use Mutant Bush Chicken Cage##60808
.kill Forest Ettin##44367+ |q 27088/1
step
goto 44.8,20.9
.talk 44912
..turnin 27088
step
goto 44.0,21.4
.talk 44916
.' Tell her that you seem to have misplaced your Sea Pup |havebuff Interface\Icons\Achievement_Character_Orc_Male |q 27069
step
goto 40.0,26.9
.kill 10 Bloodfang Scavenger##44549+ |q 27073/1
.click Sea Dog Crate##7635+
.' Recover 5 Sea Dog Crates |q 27069/1
step
goto 44.0,21.4
.talk 44916
..turnin 27069
step
ding 13
step
goto 44.0,21.3
.talk 44917
..turnin 27073
..accept 27095
step
goto 44.0,21.4
.talk 44916
..accept 27093
step
goto 38.5,16.0
' |from Skitterweb Striker##1780+, Skitterweb Lurker##1781+
.kill 12 Skitterweb Spider |q 27095/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27095
..accept 27094
.from Webbed Victim##44941+
.' Rescue 6 Orc Sea Dogs |q 27093/1
step
goto 35.6,13.5 |n
.' Enter the mine |goto Silverpine Forest,35.6,13.5,0.5 |noway |c
step
goto 36.0,8.8
.' Follow the path to the back of the mine
.kill Skitterweb Matriarch##44906 |q 27094/1 |tip She's hanging upside down on the ceiling.
step
'Hearth to Forsaken Rear Guard |goto 44.4,20.3,0.5 |use Heathstone##6948 |noway |c
step
goto 44.0,21.3
.talk 44917
..turnin 27094
step
goto 44.0,21.4
.talk 44916
..turnin 27093
..accept 27096
step
goto 45.9,21.9
.talk 50463
.' Fly to the Forsaken High Command, Silverpine Forest |goto Silverpine Forest,57.9,8.8,0.5 |noway |c
step
goto 57.4,10.2
.talk 44365
..turnin 27096
..accept 27097
step
goto 64.8,22.3
.from Hillsbrad Refugee##44954+
.' Raise 15 Forsaken |q 27097/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27097
..accept 27099
step
ding 14
step
goto 65.7,24.5
.' Go to the top room of the fortress
.' Find the Human Leaders |q 27099/1
step
goto 57.4,10.2
.talk 44365
..turnin 27099
..accept 27098
.' Accompany Lady Sylvanas Windrunner to the Sepulcher |q 27098/1
step
goto 44.9,41.6
.talk 44365
..turnin 27098
..accept 27180
step
goto 45.8,41.9
.talk 44917
..accept 27226
step
goto 45.8,42.0
.talk 44916
..accept 27231
step
goto 46.4,42.7
.talk 6739
.home The Sepulcher
step
goto 52.0,33.6
.kill 10 Hillsbrad Worgen##45255+ |q 27231/1
.' Use your Barrel of Explosive Ale on Orc Sea Dogs |use Barrel of Explosive Ale##60870 |tip They look like dead orcs on the ground around this area.
.' Rouse 8 Orc Sea Dogs |q 27226/1
step
goto 59.2,34.2
.click Horde Communication Panel##356
..turnin 27231
..accept 27232
step
goto 59.9,34.1
.clicknpc Horde Cannon##45263
.' Use your Rocket Blast ability on your hotbar on the worgens swimming in the water
.kill 50 Hillsbrad Worgen##45255+ |q 27232/1
step
goto 45.8,42.0
.talk 44916
..turnin 27232
step
goto 45.8,41.9
.talk 44917
..turnin 27226
step
goto 47.4,46.6
.from Bloodfang Stalker##45195
..accept 27181
step
goto 46.9,49.7
.kill 10 Bloodfang Stalker##45195+ |q 27181/1
.clicknpc Veteran Forsaken Trooper##45197+
.get 6 Forsaken Insignia |q 27180/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27181
..accept 27193
step
goto 45.9,54.4
.from Caretaker Smithers##45219 |tip He's inside the barn, up on the ledge to your left as you enter the barn.
.get Smithers' Logbook |q 27193/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27193
..accept 27194
step
ding 15
step
goto 55.9,46.4
.talk 45228
..turnin 27194
..accept 27195
.' Escort Master Forteski through the Deep Elem Mine |q 27195/1
step
'Hearth to the Sepulcher |goto Silverpine Forest,46.4,42.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 44.9,41.6
.talk 44365
..turnin 27180
..turnin 27195
..accept 27290
step
goto Ruins of Gilneas,57.5,18.9
.talk 45312
..turnin 27290
..accept 27342
step
goto 57.5,18.2
.talk 45315
..accept 27333
..accept 27345
step
goto 57.3,17.7
.talk 45479
.fpath Forsaken Forward Command
step
goto 45.8,22.0
.click Forsaken Communication Device##2091
.get Forsaken Communication Device |q 27345/1
step
goto 53.4,19.3
.kill 12 Worgen Rebel##45292+ |q 27333/1
step
goto 57.5,18.2
.talk 45315
..turnin 27333
..turnin 27345
step
goto 58.3,22.2 |n
.' Cross the road here |goto Ruins of Gilneas,58.3,22.2,0.5 |noway |c
step
goto 64.0,24.7
.click Wolfsbane##9883+
.get 6 Wolfsbane |q 27342/1
step
goto 59.2,21.8 |n
.' Cross the road here |goto Ruins of Gilneas,59.2,21.8,0.5 |noway |c
step
goto 57.5,18.9
.talk 45312
..turnin 27342
step
goto 57.5,18.2
.talk 45315
..accept 27349
step
goto 52.0,32.1
.' Go to this spot, but stay off the main road
.' Investigate Dreadwatch Outpost |q 27349/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27349
..accept 27350
step
goto 65.6,34.1
.talk 45389
..turnin 27350
..accept 27360
..accept 27364
step
ding 16
step
goto 58.9,47.5
.from Master Sergeant Pietro Zaren##45405
.get Orders from High Command |q 27364/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27364
..accept 27401
step
goto 54.9,44.3
.click 7th Legion Telescope##9146
.' Use the 7t Legion Telescope to Scout the Harbor |q 27401/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27401
..accept 27405
step
goto 56.7,44.0
.kill 10 7th Legion Submariner##45403+ |q 27360/1
step
goto 65.6,34.1
.talk 45389
..turnin 27360
step
goto 73.0,30.1
.talk 45312
..turnin 27405
..accept 27406
step
goto 73.4,31.2
.' Go to this spot
..accept 27423
step
goto 75.4,63.1
.'Walk south and southeast along the road:
' |from Bloodfang Scout##45481+, Gilnean Warhound##45499+, Worgen Battlemage##45483+
.kill 20 Worgen Combatant |q 27423/1
step
'Next to you:
.talk 45474
..turnin 27423
step
goto 81.8,64.8 |n
.' The path down to Lord Godfrey starts here |goto Ruins of Gilneas,81.8,64.8,0.5 |noway |c
step
goto 79.7,75.7
.clicknpc Lord Godfrey##44369
.' Find Lord Vincent Godfrey's Corpse |q 27406/1
step
'Next to you:
.talk 45474
..turnin 27406
step
ding 17
step
goto 79.7,75.7
.talk 45312
..accept 27438
.' Escape the Ruins of Gilneas |q 27438/1
step
goto Silverpine Forest,51.8,66.1
.talk 45525
..turnin 27438
..accept 27472
.' Watch Lord Godfrey be Reborn |q 27472/1
step
goto 51.9,65.0
.talk 45617
..turnin 27472
..accept 27474
step
goto 51.9,64.7
.talk 45626
..accept 27475
step
goto 50.9,63.6
.talk 46552
.fpath The Forsaken Front
step
goto 63.5,64.2
.click Ambermill Codex##8520 |tip It's inside the town hall building.
.get Ambermill Codex |q 27474/1
step
goto 59.1,64.3
.from Elemental Servitor##45711+
.get 6 Servitor Core |q 27475/1
step
goto 51.9,64.7
.talk 45626
..turnin 27475
step
goto 51.9,65.0
.talk 45617
..turnin 27474
..accept 27476
step
'Hearth to the Sepulcher |goto Silverpine Forest,46.4,42.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 47.1,43.2
.talk 1938
..turnin 27476
..accept 27478
..accept 27483
step
goto 47.3,43.4
.clicknpc Portal to Dalaran Crater##45731
.' Go to the Dalaran Crater |goto Hillsbrad Foothills |noway |c
step
goto Hillsbrad Foothills,29.9,37.6
.from Arcane Remnant##45728+
.collect Arcane Remnant##61310 |n
.' Click the Arcane Remnant in your bags |use Arcane Remnant##61310
..accept 27480
step
goto 32.3,44.4
.' Follow the purple path up and out of the crater
.from Relios the Relic Keeper##45734 |tip He walks around the crumbled town, so you may need to search for him.
.get Dalaran Archmage's Signet Ring |q 27478/1
step
goto 31.6,43.2
' |from Dalaran Summoner##2358+, Dalaran Worker##2628+
.kill 12 Dalaran Human |q 27483/1
step
ding 18
step
goto 30.8,40.9
.from Arcane Remnant##45728+
.get 8 Arcane Remnant |q 27480/1
step
goto 30.3,36.6
.clicknpc Portal to the Sepulcher##45732
.' Go to the Sepulcher |goto Silverpine Forest |noway |c
step
goto Silverpine Forest,47.1,43.2
.talk 1938
..turnin 27478
..accept 27484
..turnin 27483
..turnin 27480
step
goto 45.4,42.5
.talk 2226
.' Fly to The Forsaken Front, Silverpine Forest |goto Silverpine Forest,50.9,63.6,0.5 |noway |c
step
goto 51.9,65.0
.talk 45617
..turnin 27484
..accept 27512
step
goto 51.7,67.2
.talk 45631
..accept 27510
step
goto 56.1,76.7
.kill 10 Inconspicuous Bear##45750+ |q 27510/1
.' There are more Inconspicuous Bears around [55.3,70.6]
step
goto 60.4,74.7 |n
.' The path up to the Ambermill Dimensional Portal starts here |goto Silverpine Forest,60.4,74.7,0.5 |noway |c
step
goto 58.1,69.9
.clicknpc Ambermill Dimensional Portal##45752
..turnin 27512
..accept 27513
step
goto 58.1,69.9
.clicknpc Ambermill Dimensional Portal##45752
..' <Use the Ambermill Dimensional Portal.>
.' Enter the Transdimensional Shift |havebuff INTERFACE\ICONS\spell_arcane_rune |q 27513
step
goto 62.5,64.1
.' All around the Ambermill town:
' |from Ambermill Watcher##1888+, Ambermill Magister##1914+, Ambermill Warder##1913+, Ambermill Miner##3578+, Ambermill Brewmaster##3577+, Ambermill Witchalok##1889+
.kill 20 Ambermill Mage |q 27513/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27513
..accept 27518
step
ding 19
step
goto 56.6,64.4
.from Archmage Ataeric##2120 |tip He will send minions at you.  Kill the minions while they are close to Archmage Ataeric to release their energy on him.
.' Destroy the Transdimensional Shield |q 27518/1
step
goto 51.9,65.0
.talk 45617
..turnin 27518
..accept 27542 |instant
step
'Next to you:
.talk 45880
..accept 27547
step
'Next to you:
.talk 45879
..accept 27548
step
'Next to you:
.talk 45878
..accept 27550
step
goto 51.7,67.2
.talk 45631
..turnin 27510
..accept 28089
step
goto 46.6,72.7
.' Use your Bundle of Torches in this spot |use Bundle of Torches##61374
.' Torch the Pyrewood Chapel |q 27550/2
step
goto 45.2,72.0
.' Use your Bundle of Torches in this spot |use Bundle of Torches##61374
.' Torch the Pyrewood Inn |q 27550/1
step
goto 44.2,73.2
.' Use your Bundle of Torches in this spot |use Bundle of Torches##61374
.' Torch the Pyrewood Town Hall |q 27550/3
step
'Next to you:
.talk 45878
..turnin 27550
step
goto 45.0,73.5
.' All around Pyrewood Village:
.kill 12 7th Legion Scout##45883+ |q 27548/1
.talk 45910+
.' Rescue 8 Cowering Trooper |q 27547/1
step
'Next to you:
.talk 45880
..turnin 27547
step
'Next to you:
.talk 45879
..turnin 27548
..accept 27577
step
'Next to you:
.talk 45878
..accept 27580
step
goto 42.4,79.2
.kill General Marstone##45995 |q 27580/1
step
'Next to you:
.talk 45878
..turnin 27580
step
goto 42.9,81.0
.from Dwarven Infantry##45855+
.get 7th Legion Battle Plan |q 27577/1
step
'Next to you:
.talk 45879
..turnin 27577
step
ding 20
step
'Next to you:
.talk 45878
..accept 27594
step
goto 50.3,88.3
.from Commander Lorna Crowley##45997
.' Capture Commander Lorna Crowley |q 27594/1
step
'Hearth to the Sepulcher |goto Silverpine Forest,46.4,42.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 45.4,42.5
.talk 2226
.' Fly to The Forsaken Front, Silverpine Forest |goto Silverpine Forest,50.9,63.6,0.5 |noway |c
step
goto 51.9,65.0
.talk 45617
..turnin 27594
..accept 27601
step
'Follow Lady Sylvanas Windrunner through the battle
.' Defeat the Alliance!
.' Fight Lord Walden, Baron Ashbury, and Lord Godfrey until they retreat
.from Lord Walden##46029
.from Baron Ashbury##46030
.from Lord Godfrey##45878
.' Attain Victory: Final and Absolute |q 27601/1
step
goto 45.3,84.5
.talk 46124
..turnin 27601
..accept 27746
step
'Go east to Hillsbrad Foothills |goto Hillsbrad Foothills |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Hillsbrad Foothills (20-26)\\Hillsbrad Foothills (20-26)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Arathi Highlands (26-30)\\Arathi Highlands (26-29)
startlevel 20.70
dynamic on
step
goto Silvermoon City,49.5,14.8 
.' If you are coming from Eversong Woods or Ghostlands you can transport to Undercity by using the Orb of Translocation.
|confirm
only BloodElf
step
goto Hillsbrad Foothills,29.1,64.4
.talk 47655
.fpath Southpoint Gate
step
goto 29.2,63.3
.talk 2215
..turnin 27746
..turnin 28089
..accept 28096
step
goto 29.3,63.4
.clicknpc Skeletal Steed##47445
.talk 47444
..' Tell him maybe he should go take a nap or something
.' Dispense the First Quest |q 28096/1
step
goto 29.3,63.4
.' Continue sitting on the Skeletal Steed
.talk 47443
..' Tell him apparently there is some trouble at Southshore
.' Dispense the Second Quest |q 28096/2
step
goto 29.3,63.4
.' Continue sitting on the Skeletal Steed
.talk 47442
..' Tell him you are having some problems at the Sludge Fields
.' Dispense the Third Quest |q 28096/3
step
goto 29.2,63.3
.talk 2215
..turnin 28096
..accept 28111
step
goto 29.2,64.0
.talk 47432
..accept 28114
..accept 28115
step
goto 32.3,67.2
.kill 8 Infested Bear##47204+ |q 28115/1
.clicknpc Creeper Egg##47203+ |tip They are on the backs of the Infested Bears.
.get 60 Creeper Egg |q 28114/1
step
goto 33.3,73.5
.talk 47554
..turnin 28111
..accept 28138
..accept 28144
step
goto 33.3,73.6
.talk 47551
..turnin 28114
..turnin 28115
..accept 28146
step
goto 33.5,72.0 |n
.' Enter the mine |goto 33.5,72.0,0.5 |noway |c
step
goto 36.6,70.2
.from Hillsbrad Sentry##2270+, Hillsbrad Miner##2269+, Hillsbrad Foreman##2503+ |tip They look like green cocoons inside this mine.
.' Use your Titanium Shackles on the Hillsbrad humans when they are weakened |use Titanium Shackles##63079
.' Capture 8 Hillsbrad Humans |q 28138/1
step
goto 36.6,70.2
.talk 47681
..accept 28156
step
goto 33.5,72.0 |n
.' Leave the mine |goto 33.5,72.0,0.5 |noway |c
step
goto 33.3,73.5
.' Escort Dumass to Safety |q 28156/1
step
goto 33.3,73.5
.talk 47554
..turnin 28138
..turnin 28156
step
ding 21
step
goto 32.5,78.0
.from Muckgill##47759 |tip He's a darker colored murloc that walks along this shore area.
.collect 1 Muckgill's Flipper##63090 |n
.' Click Muckgill's Flipper in your bags |use Muckgill's Flipper##63090
..accept 28154
step
goto 34.3,81.1
.from Torn Fin Coastrunner##2375+, Torn Fin Muckdweller##2374+
.' Feed 12 Murlocs to the Hungry Mine Spider |q 28146/1
'|If you need another spider, report to _Spider-Handler Sarus_ [33.3,73.6]
.click Forsaken Camp "Supplies"##9162+
.get 6 Forsaken Camp "Supplies" |q 28144/1
step
goto 33.3,73.6
.talk 47551
..turnin 28146
step
goto 33.3,73.5
.talk 47554
..turnin 28154
..turnin 28144
..accept 28168
step
goto 36.2,61.1
.talk 47781
..turnin 28168
..accept 28192
step
'Watch the cutscene
.' Assess the situation at the Sludge Fields |q 28192/1
step
goto 36.2,61.1
.talk 47781
..turnin 28192
..accept 28197
step
goto 35.9,61.1
.talk 49394
.home The Sludge Fields
step
goto 36.3,60.2
.talk 47899
..accept 28199
step
goto 38.2,63.1
.kill Clerk Horrace Whitesteed##47789 |q 28197/2 |tip He walks along the road around this area, so you may need to search for him.
.collect 1 The Battle for Hillsbrad##63250 |n
.' Click The Battle for Hillsbrad in your bags |use The Battle for Hillsbrad##63250
..accept 28196
step
goto 39.0,64.7
.' Go to this spot
.kill Citizen Wilkes##47791 |q 28197/1 |tip He will jump on you from above.  He's perched on top of the gazebo type structure.
step
goto 39.7,63.0
.click Shovel##6479
..accept 28189
step
goto 39.5,63.4
.' Use your Shovel on Human Seedlings |use Shovel##63150 |tip They look like humans buried up to their necks all around this area.  You can also simply right-click the Human Seedlings if you'd rather just free them instead of bashing their heads in.  :-)  You'll get credit for the quest either way.
.' "Save" 15 Human Seedlings |q 28189/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28189
step
goto 39.0,63.7
.from Risen Hillsbrad Peasant##47861+
.get 6 Flesh Sample |q 28199/1
step
goto 36.2,61.1
.talk 47781
..turnin 28197
..turnin 28196
step
ding 22
step
goto 36.3,60.2
.talk 47899
..turnin 28199
step
goto 36.2,61.1
.talk 47781
..accept 28206
step
goto 40.3,59.4
.talk 47869
..turnin 28206
step
goto 40.3,59.3
.talk 47900
..accept 28209
step
goto 39.5,59.7
.from Infected Sludge Guard##48017+
.get Lydon's Cage Key |q 28209/1
step
goto 40.3,59.3
.talk 47900
..turnin 28209
step
'Next to you:
.talk 48020
..accept 28230
step
'Next to you:
.talk 48021
..accept 28231
step
goto 38.9,57.5
.kill The Ray-Getz-Kalaba Monstrosity##47793 |q 28230/1
step
'Next to you:
.talk 48020
..turnin 28230
step
goto 38.1,56.5
.kill Blacksmith Verringtan##47792 |q 28231/1
step
'Next to you:
.talk 48021
..turnin 28231
step
'Next to you:
.talk 48020
..accept 28235
step
goto 36.6,58.0
.kill Magistrate Burnside##47790 |q 28235/1 |tip He's floating in a purple orb in the air.  You have to get close to him in order to be able to start fighting him.
step
'Next to you:
.talk 48020
..turnin 28235
..accept 28237
step
goto 36.4,61.2
.from Warden Stillwater##48080
.get Head of Warden Stillwater |q 28237/1
step
goto 36.6,61.2
.talk 47900
..turnin 28237
..accept 28251
step
goto 49.1,66.4
.talk 2391
..turnin 28251
..accept 28324
..accept 28325
step
goto 49.1,66.3
.talk 48129
..accept 28331
..accept 28332
step
goto 46.5,68.3
.' Use Helcular's Rod on Dark Rangers |use Helcular's Rod##63508 |tip They are fighting Bloodfang Forsaken Hunters all around this area.
.' Empower 8 Dark Rangers |q 28331/1
.kill 15 Bloodfang Forsaken Hunter##48272+ |q 28332/1
step
ding 23
step
goto 49.1,66.3
.talk 48129
..turnin 28331
..turnin 28332
..accept 28344
step
goto 49.0,68.0
.' Use your Lethality Analyzer on Blight Slimes |use Lethality Analyzer##63426
.' Take 250 Blight Samples |q 28324/1
.click Used Blight Canister##8445+
.get 8 Used Blight Canister |q 28325/1
'|modelnpc Blight Slime##48136
step
goto 48.7,71.5
.from Angry Blight Slime##48319
..accept 28329
step
goto 48.7,71.5
.kill 5 Angry Blight Slime##48319+ |q 28329/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28329
..accept 28330
step
goto 47.9,72.4
.kill Chet the Slime-Breeder##48322 |q 28330/1 |tip He is elite, but he is fairly easy to kill, so you should be able to do it.  If not, try to find one other person to group with you.
step
goto 49.6,74.4
.talk 48218
..turnin 28344
..accept 28345
step
goto 49.6,74.4
.talk 48218
..' Tell him his feet are touching the ground and to just stand up and walk to shore
.' Safely Escort Orkus Out of the Water |q 28345/1
step
goto 50.0,74.3
.talk 48218
..turnin 28345
..accept 28348
step
'Watch the cutscene
.' Learn about the Stormpike rendezvous |q 28348/1
step
goto 50.0,74.3
.talk 48218
..turnin 28348
..accept 28354
step
goto 56.9,74.7
.from Mudsnout Gnoll##2372
..accept 28355
step
goto 57.2,74.6
' |from Mudsnout Gnoll##2372+, Mudsnout Shaman##2373+
.kill 10 Mudsnout Gnoll or Shaman |q 28355/1
.click Mudsnout Blossom##389+
.get 8 Mudsnout Blossom |q 28354/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28355
step
goto 49.1,66.4
.talk 2391
..turnin 28324
..turnin 28325
..turnin 28330
step
ding 24
step
goto 50.0,74.3
.talk 48218
..turnin 28354
..accept 28375
step
'Watch the cutscene
.' Take The Road to Purgation |q 28375/1
step
'Next to you:
.talk 48470
..turnin 28375
..accept 28397
step
goto 28.6,84.2
' |from Stormpike Mountaineer##48482+, Stormpike Ram Rider##48483+
.kill 8 Stormpike Dwarf |q 28397/1
.kill 8 Bloodfang Sentry##48484+ |q 28397/2
step
'Next to you:
.talk 48470
..turnin 28397
..accept 28400
step
goto 27.4,87.3
.' Run up the path to this spot
.talk 48503
..' Tell him you're ready, let's do this!
.' Kingslayer Orkus will instantly kill the Stormpike Battle Master
.' Loot the Stormpike Battle Master
.get Alliance Battle Plans |q 28400/2
step
'You will automatically fly to Tarren Mill, watch the dialogue
.' Become Heroes of the Horde |q 28400/1
step
goto 57.7,46.9
.talk 2229
..accept 28620
step
goto 58.0,47.3
.talk 2388
.home Tarren Mill
step
goto 57.7,45.2
.talk 2397
..accept 28489
step
goto 57.1,46.2
.talk 48545
..turnin 28400
..accept 28587
step
goto 57.0,45.7
.talk 2437
..accept 28484
step
goto 57.2,45.5
.talk 2419
..accept 28487
step
goto 56.7,47.5
.talk 17092
..accept 28495
step
goto 49.2,55.0
.' Use Duskingdawn's Wand on Hill Fawns |use Duskingdawn's Wand##64416
.' "Save" 10 Hill Fawns |q 28495/1
.from Hill Stag##48184+
.get 8 Stag Meat |q 28489/1
step
goto 46.5,54.4 |n
.' Enter the cave |goto 46.5,54.4,0.5 |noway |c
step
goto 45.1,51.3
.click Humbert's Sword##4175 |tip Follow the path immediately to the right when you enter the cave.
.get Humbert's Sword |q 28487/1
step
goto 44.6,50.9
.click Humbert's Helm##10216 |tip Follow the spiral ramp down in the cave, then into the side room directly to the left at the bottom.
.get Humbert's Helm |q 28487/2
step
goto 44.1,53.2
.click Humbert's Pants##9170 |tip Go out and across to the other side room in the cave.
.get Humbert's Pants |q 28487/3
step
goto 45.3,52.
.from Ferocious Yeti##48628+, Cave Yeti##2248+
.get 12 Beating Yeti Heart |q 28484/1
step
'Hearth to Tarren Mill |goto 58.0,47.3,0.5 |use Hearthstone##6948 |noway |c
step
goto 56.7,47.5
.talk 17092
..turnin 28495
step
goto 57.0,45.7
.talk 2437
..turnin 28484
step
goto 57.2,45.5
.talk 2419
..turnin 28487
step
goto 57.7,45.2
.talk 2397
..turnin 28489
step
ding 25
step
goto 56.5,47.1
.click Warchief's Command Board##10241
..accept 28619
step
goto 58.7,34.3
.talk 13817
..turnin 28587
..accept 28600
step
'Watch the cutscene
.' Learn of Matter's of Loyalty |q 28600/1
step
goto 57.1,46.3
.talk 48545
..turnin 28600
..accept 28506
step
'Watch the cutscene
.' See the March of the Stormpike |q 28506/1
step
goto 57.1,46.3
.talk 48545
..turnin 28506
..accept 28556
step
goto 57.3,46.3
.talk 2278
..accept 28538
step
goto 55.5,38.2
.from SI:7 Assassin##48742+, SI:7 Operative##48741+
.' Use your Banshee Mirror |use Banshee Mirror##64445 |tip You will see a message on your screen telling you when to use it.
.' Capture 10 SI:7 Agents |q 28538/1
.' Click the Quest Completion box that appears under the mini map
..turnin 28538
..accept 28566
step
goto 55.4,38.4
.' Use the Goblin Pocket-Nuke while standing in the campsite |use Goblin Pocket-Nuke##64471
.' Arm the Pocket-Nuke at Sofera's Naze |q 28556/1
step
goto 49.4,46.8
.kill Captain Iceheart##48880 |q 28566/1
.' Use the Goblin Pocket-Nuke while standing in the campsite |use Goblin Pocket-Nuke##64471
.' Arm the Pocket-Nuke at Corrahn's Dagger |q 28556/2
.kill 12 Stormpike Soldier##48878+ |q 28566/2
.' Click the Quest Completion box that appears under the mini map
..turnin 28566
..accept 28603
step
'Next to you:
.talk 49035
..accept 28604
step
goto 44.5,49.1
.talk 48922
..' Coerce him into fighting you
.kill Instructor Rufus##48922 |q 28603/1
step
goto 44.1,50.5
.talk 48924
..' Coerce him into fighting you
.kill Captain Crudbeard##48924 |q 28603/3
step
goto 43.4,49.9
.talk 48923
..' Coerce him into fighting you
.kill Drill Sergeant Magnus |q 28603/2
.' Click the Quest Completion box that appears under the mini map
..turnin 28603
step
goto 44.0,49.1
.' Use the Goblin Pocket-Nuke while standing in the campsite |use Goblin Pocket-Nuke##64471
.' Arm the Pocket-Nuke at The Headland |q 28556/3
.' Use Water Barrel next to Stormpike Trainees |use Water Barrel##64583
.' Poison 30 Stormpike Trainees |q 28604/1
step
'Next to you:
.talk 49035
..turnin 28604
..accept 28605
step
goto 39.6,49.0
.' Use the Goblin Pocket-Nuke while standing next to the huge gears |use Goblin Pocket-Nuke##64471
.' Arm the Pocket-Nuke at Gavin's Naze |q 28556/4
.kill 10 Stormpike Engineer##49116+ |q 28605/1
step
'Hearth to Tarren Mill |goto 58.0,47.3,0.5 |use Hearthstone##6948 |noway |c
step
goto 57.3,46.3
.talk 2278
..turnin 28605
step
ding 26
step
goto 57.1,46.3
.talk 48545
..turnin 28556
..accept 28616
step
'Watch the cutscene
.' Witness the Stormpike Apocalypse |q 28616/1
step
goto 57.1,46.3
.talk 48545
..turnin 28616
step
goto 59.6,63.3
.talk 47661
.fpath Eastpoint Tower
step
goto 60.1,63.4
.talk 49243
..accept 28635
step
goto 60.0,63.7
.talk 49201
..turnin 28620
..accept 28634
step
goto 64.0,66.7
.kill 12 Rampaging Owlbeast##49245+ |q 28634/1
.' More Rampaging Owlbeast around [71.0,67.6]
step
goto 62.0,84.2
.' Go to this spot
.' Search Dun Garok for Evidence of a Haunting |q 28635/1
step
goto 62.0,84.2
.talk 49240
..turnin 28635
..accept 28636
step
goto 62.1,82.8
.kill 10 Dun Garok Spirit##49269+ |q 28636/1 |tip You can also find more inside of Dun Garok.
step
goto 60.1,63.4
.talk 49243
..turnin 28636
step
goto 60.0,63.7
.talk 49201
..turnin 28634
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Northern Stranglethorn (26-31)\\Northern Stranglethorn (26-31)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\The Cape of Stranglethorn (31-36)\\The Cape of Stranglethorn (31-36)
startlevel 26.94
dynamic on
step
goto Northern Stranglethorn,38.4,50.4
.talk 2464
..accept 26278
step
goto 37.4,51.9
.talk 5814
.home Grom'gol Base Camp
step
goto 36.0,43.5
.kill 12 Lashtail Egg##42620+ |q 26278/1 |tip They look like small white eggs on the ground around this area.
.' You will automatically accept a quest:
..accept 26317
step
goto 38.4,50.4
.talk 2464
..turnin 26278
..accept 26279
..accept 26280
step
goto 38.4,51.1
.talk 2465
..turnin 26317
..accept 26321
step
ding 27
step
goto 45.2,53.4
.kill 4 Mosh'Ogg Brute##1142+ |q 26279/1
.kill 4 Mosh'Ogg Witch Doctor##1144+ |q 26279/2
..collect Disfigured Mosh'Ogg Hand##58491
..' Click the Disfigured Mosh'Ogg Hand in your bags |use Disfigured Mosh'Ogg Hand##58491
..accept 26407
step
goto 43.1,40.9
.' If your Lashtail Hatchling isn't next to you, use your Lashtail Raptor Egg Fragment |use Lashtail Raptor Egg Fragment##58165
' |from Murkgill Oracle##4459+, Murkgill Warrior##4461+
.kill 15 Murkgill Murloc |q 26280/1
.' Feed the Lashtail Hatchling 40 Bites of Murkgill Meat |q 26321/1
step
goto 42.0,42.4 |n
.' Follow the path up |goto 42.0,42.4,0.5 |noway |c
step
goto 38.4,50.5
.talk 2464
..turnin 26279
..turnin 26280
..accept 26281
step
goto 38.4,51.1
.talk 2465
..turnin 26321
..turnin 26407
step
goto 38.1,50.1
.talk 17094
..accept 9436
step
goto 38.4,48.7
.talk 2497
..accept 26298
step
goto 33.7,37.2
.talk 42736
..accept 26323
step
goto 34.4,35.2
.click Grom'gol Rations Crate##5531
.get Grom'gol Rations |q 26281/1
step
goto 33.7,36.5
.from Bloodscalp Axe Thrower##694+, Bloodscalp Warrior##587+
.get 6 Bloodscalp Tusk |q 26298/1
.from Bloodscalp Shaman##697+
.get Bloodscalp Totem |q 9436/1
step
goto 38.4,48.7
.talk 2497
..turnin 26298
..accept 26299
..turnin 26323
step
goto 38.5,48.6
.click Bubbling Cauldron##216
..accept 26325
step
goto 38.1,50.1
.talk 17094
..turnin 9436
..accept 9457
step
goto 38.4,50.5
.talk 2464
..turnin 26281
step
goto 19.1,40.8
.' Use your Gift of Naias next to the Altar of Naias |use Gift of Naias##23680 |tip It looks like a stone slab table.
.from Naias##17207
.get Heart of Naias |q 9457/1
step
goto 20.7,23.5
.' Use your Lashtail Raptor Egg Fragment |use Lashtail Raptor Egg Fragment##58165
.' Follow your Lashtail Hatchling around
.get 8 Zuuldaian Fetish |q 26325/1
step
goto 20.7,25.5
.from Bloodscalp Berserker##597+, Bloodscalp Headhunter##671+, Bloodscalp Witch Doctor##660+
.get 25 Shrunken Head |q 26299/1
step
'Hearth to Grom'gol Base Camp |goto 37.4,51.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 38.1,50.1
.talk 17094
..turnin 9457
..accept 26340
step
goto 38.4,48.7
.talk 2497
..turnin 26299
..accept 26300
step
goto 38.5,48.6
.click Bubbling Cauldron##216
..turnin 26325
..accept 26330
step
goto 38.4,51.1
.talk 2465
..accept 26338
step
ding 28
step
goto 48.4,41.9 |n
.' Follow this road |goto 48.4,41.9,0.5 |noway |c  // SPLIT POINT
step
goto 43.6,23.4
.talk 2495
..accept 26343
step
goto 44.3,22.1
.talk 716
..turnin 26340
..accept 583
step
goto 44.0,23.3
.talk 715
..turnin 583
..accept 194
step
goto 43.7,22.3
.talk 718
..accept 190
step
goto 44.2,22.1
.talk 716
..accept 26269
step
goto 44.5,22.7
.talk 717
..accept 185
step
goto 45.2,20.8
.from River Crocolisk##1150+
.get 2 Large River Crocolisk Skin |q 26343/1
.get Green Hills of Stranglethorn - Page 14 |q 26269/1
step
goto 44.2,22.1
.talk 716
..turnin 26269
step
goto 43.6,23.4
.talk 2495
..turnin 26343
..accept 26344
step
goto 42.3,24.2
.kill 10 Young Stranglethorn Tiger##681+ |q 185/1
.' You can find more Young Stranglethorn Tigers around [38.7,20.3]
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 185
..accept 186
step
goto 52.0,23.8
.kill 10 Young Panther##683+ |q 190/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 190
..accept 191
step
goto 61.3,27.0
.kill 10 Stranglethorn Tiger##682+ |q 186/1
.' You can find more Stranglethorn Tigers around [56.5,28.7]
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 186
..accept 187
step
goto 53.5,30.3
.from Snapjaw Crocolisk##1152+
.get 5 Snapjaw Crocolisk Skin |q 26344/1
.' You can find more Snapjaw Crocolisks around [51.1,35.8]
step
goto 43.6,23.4
.talk 2495
..turnin 26344
..accept 26345
step
goto 38.1,30.1
.kill 5 Elder Stranglethorn Tiger##1085+ |q 187/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 187
..accept 188
step
ding 29
step
goto 38.5,32.5
.from Sin'Dall##729
.get Paw of Sin'Dall |q 188/1
step
goto 33.8,28.2
.kill 10 Panther##736+ |q 191/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 191
..accept 192
step
goto 31.7,28.0
.kill 10 Stranglethorn Raptor##685+ |q 194/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 194
..accept 195
step
goto 31.2,23.2 |n
.' Enter the Ruins of Zul'Kunda |goto 31.2,23.2,0.5 |noway |c
step
goto 26.7,19.5
.' Follow the path to the top of the ruins
.from Nezzliok the Dire##1062
.get Nezzliok's Head |q 26300/1
step
goto 24.9,18.2
.from Gan'zulah##1061
.get Gan'zulah's Body |q 26330/1
step
goto 27.9,23.1
.kill 7 Bloodscalp Mystic##701+ |q 26338/1
.kill 7 Bloodscalp Scout##588+ |q 26338/2
.kill 7 Bloodscalp Hunter##595+ |q 26338/3
.kill Bloodscalp Beastmaster##699 |q 26338/4
step
goto 44.5,22.7
.talk 717
..turnin 188
step
goto 45.8,43.1
.kill 10 Lashtail Raptor##686+ |q 195/1
.' You can find more Lashtail Raptors around [39.3,43.9]
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 195
..accept 196
step
goto 38.5,48.6
.click Bubbling Cauldron##216
..turnin 26300
..turnin 26330
..accept 26332
..accept 26301
step
goto 38.4,51.1
.talk 2465
..turnin 26338
step
goto 50.5,47.4
.from Elder Snapjaw Crocolisk##2635+
.get Elder Crocolisk Skin |q 26345/1
step
goto 54.3,47.2
.kill 10 Jungle Stalker##687+ |q 196/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 196
..accept 197
step
ding 30
step
goto 61.9,49.0
.kill 5 Shadowmaw Panther##684+ |q 192/1 |tip They are stealthed, so keep an eye out for them.
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 192
..accept 193
step
goto 66.0,43.4
.from Bhag'thera##728
.get Fang of Bhag'thera |q 193/1
.' Bhag'thera can also spawn
.' at [61.7,50.6]
.' at [64.4,36.6]
step
goto 62.5,61.3
.from Tethis##730
.get Talon of Tethis |q 197/1
step
goto 60.2,55.9
.click Balia'mah Trophy Skulls##293
.get Balia'mah Trophy |q 26301/1
step
goto 54.0,61.8
.click Ziata'jai Trophy Skulls##293
.get Ziata'jai Trophy |q 26301/2
step
goto 54.5,62.1
.from Skullsplitter Warrior##667+, Skullsplitter Mystic##780+, Skullsplitter Axe Thrower##696+
.get 6 Skullsplitter Mojo |q 26332/1
step
'Hearth to Grom'gol Base Camp |goto 37.4,51.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 38.5,48.6
.click Bubbling Cauldron##216
..turnin 26332
..turnin 26301
..accept 26302
step
goto 38.5,48.6
.talk 42790
..accept 26334
..turnin 26334
step
goto 38.4,48.7
.talk 2497
..accept 26350
step
goto 48.4,41.9 |n
.' Follow this road |goto 48.4,41.9,0.5 |noway |c
step
goto 44.0,23.3
.talk 715
..turnin 197
step
goto 43.6,23.4
.talk 2495
..turnin 26345
step
goto 43.7,22.3
.talk 718
..turnin 193
step
goto 44.2,23.0
.talk 715
..accept 208
step
goto 62.4,39.2 // SPLIT POINT
.talk 43052
.fpath Bambala
step
goto 63.5,39.0
.talk 42812
..turnin 26350
..accept 26351
step
goto 62.9,40.2
.talk 42814
..accept 26404
step
goto 63.1,41.5
.talk 2519
..turnin 26302
..accept 26303
step
goto 66.7,49.1 |n
.' Enter the cave |goto 66.7,49.1,0.5 |noway |c
step
goto 70.8,48.5
.from Mai'Zoth##818
.get Mind's Eye |q 26303/1
step
goto 66.7,49.1 |n
.' Leave the cave |goto 66.7,49.1,0.5 |noway |c
step
goto 61.9,44.8 |n
.' Go to this spot |goto 61.9,44.8,0.5 |noway |c
step
goto 58.6,49.1
.from Jungle Stalker##687+
.get 5 Jungle Stalker Feather |q 26351/1
.' You can find more Jungle Stalkers around [53.7,48.8]
step
goto 63.1,41.5
.talk 2519
..turnin 26303
..accept 26305
step
goto 63.5,39.0
.talk 42812
..turnin 26351
..accept 26359
step
ding 31
step
goto 63.5,39.0
.talk 42812
..' Tell her you are ready for the Mind Vision ritual
.' Complete the Mind Vision |q 26359/1
step
goto 63.5,39.0
.talk 42812
..turnin 26359
..accept 26360
step
goto 63.3,38.8
.talk 42811
..accept 26405
step
goto 63.3,39.8
.talk 42813
..accept 26304
step
goto 62.8,74.5
.from Braddok##42858
.get Braddok's Big Brain |q 26360/1
step
goto 57.3,75.4
.' Use your Soul Gem on Yenniku |use Soul Gem##3912 |tip He's inside this small cave.
.get Filled Soul Gem |q 26305/1
|modelnpc Yenniku##2530
step
goto 58.1,71.7
' |from Skullsplitter Scout##782+, Skullsplitter Hunter##669+, Skullsplitter Witch Doctor##670+
.kill 16 Skullsplitter Troll |q 26405/1
.click Zul'Mamwe Brazier##2570+
.' Extinguish 8 Zul'Mamwe Braziers |q 26304/1
step
'Hearth to Grom'gol Base Camp |goto 37.4,51.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 38.4,48.7
.talk 2497
..turnin 26305
step
goto 47.8,59.0
.from King Bangalash##731 |tip He's a white tiger that walks around on this big hill.
.get Head of Bangalash |q 208/1
step
|fly Bambala
step
goto 63.5,39.0
.talk 42812
..turnin 26360
..accept 26362
step
goto 63.5,39.0
.talk 42812
..' Tell her you are ready for the Mind Control ritual
.' Become the Captured Lashtail Hatchling |invehicle |q 26362
step
goto 89.1,46.3
.' Stay away from the trolls as you walk, or you will have to start over
.talk 42881
..' <Learn to bite through nets from the elder raptor.>
.' Speak with Tan'shang |q 26362/1
step
goto 86.9,44.6
.' Stay away from the trolls as you walk, or you will have to start over
.talk 42882
..' Tell him you'll go get him some food from the sleeping trolls
.' Skip to the next step in the guide
step
goto 86.9,50.0
.' Stay away from the trolls as you walk, or you will have to start over
.clicknpc Gurubashi Soldier##42871
.' Steal Raptor Food |havebuff Interface\Icons\INV_Misc_Bag_10_Blue |q 26362
step
goto 86.9,44.6
.' Stay away from the trolls as you walk, or you will have to start over
.talk 42882
..' Tell him you've brought some food for him, then learn to light fires from the elder raptor
.' Help Tenjiyu |q 26362/2
step
goto 86.9,41.2
.click Gurubashi Brazier |tip It's a square metal container with fire in it on the ground in the middle of the path.
.' Get a Burning Twig
.' Use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki |tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.
.' The guards blocking the path will run to put out the burning tiki
.' Run past the guards into the next area
.' Skip to the next step in the guide
step
goto 86.4,39.3
.' Click the Gurubashi Brazier |tip It's a square metal container with fire in it on the ground in the middle of the path.
.' Get a Burning Twig
.' Run down the path and use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki at [86.1,38.0] |tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.  You will need to use your Dash ability on your hotbar to get to the tiki in time, before you lose your Burning Twig.
.' The guards blocking the path will run to put out the burning tiki
.' Run past the guards into the next area
.' Skip to the next step in the guide
step
goto 85.3,37.7
.' Click the Gurubashi Brazier |tip It's a square metal container with fire in it on the ground in the middle of the path.
.' Get a Burning Twig
.' Run down the path and use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki at [83.9,38.3] |tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.  You will need to use your Dash ability on your hotbar to get to the tiki in time, before you lose your Burning Twig.
.' The guards blocking the path will run to put out the burning tiki
.' Run past the guards
.' Skip to the next step in the guide
step
goto 82.8,37.5
.talk 42883
..' <Learn to drop skulls from the elder raptor.>
.' Speak with Chiyu |q 26362/3
step
goto 82.5,33.9
.' Click the Giant Skullpile |tip It looks like a big pile of skulls sitting in this small troll hut.
.' Walk onto the bridge to [81.7,34.0]
.' Use your Drop Skull ability to put the skull on the bridge
.' The troll will trip on the skull and fall off the bridge
.' Run to the other side of the bridge
.' Skip to the next step in the guide
step
goto 79.9,34.2
.' Click the Giant Skullpile |tip It looks like a big pile of skulls sitting in this small troll hut.
.' Walk onto the bridge to [79.0,33.5]
.' Use your Drop Skull ability to put the skull on the bridge
.' The troll will trip on the skull and fall off the bridge
.' Run to the other side of the bridge
.' Skip to the next step in the guide
step
goto 74.3,31.2
.' Click the Gurubashi Brazier |tip It's a square metal container with fire in it on the ground in the middle of the path.
.' Get a Burning Twig
.' Use the Light Tiki Fire ability on your hotbar next to the Zul'Gurub Tiki at [74.7,32.0] |tip It's a floating wooden mask in front of you, next to the Gurubashi Brazier.  You will need to use your Dash ability on your hotbar to get to the tiki in time, before you lose your Burning Twig.
.' The guards blocking the path will run to put out the burning tiki
.' Run past the guards
.' Run up the big staircase
.' Escape from Zul'Gurub |q 26362/4
step
goto 63.5,39.0
.talk 42812
..turnin 26362
..accept 26386
step
goto 63.2,38.8
.talk 42811
..turnin 26386
..turnin 26405
step
goto 63.3,39.8
.talk 42813
..turnin 26304
step
goto 44.0,23.3
.talk 715
..turnin 208
step
goto 62.4,39.2
.talk 43052
..' Tell him Skeezy says he already paid for your flight to Hardwrench Hideaway
.' You will fly to Hardwrench Hideaway |goto The Cape of Stranglethorn,35.1,29.3,0.5 |noway |c |q 26404
step
goto The Cape of Stranglethorn,34.7,29.5
.talk 43095
..turnin 26404
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\The Cape of Stranglethorn (31-36)\\The Cape of Stranglethorn (31-36)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Western Plaguelands (34-39)\\Western Plaguelands (34-39)
startlevel 31.95
dynamic on
step
goto The Cape of Stranglethorn 34.7,29.5
.talk 43095
..accept 26487
..accept 26450
step
goto 33.6,29.2
.talk 43096
..accept 26590
step
goto 35.1,27.2
.talk 44190
.home Hardwrench Hideaway
step
goto 39.1,44.8 |n
.' Follow the path up |goto 39.1,44.8,0.5 |noway |c
step
goto 40.9,45.1 |n
.' Follow the path up |goto 40.9,45.1,0.5 |noway |c
step
goto 41.3,50.6 |n
.' Follow this path |goto 41.3,50.6,0.5 |noway |c
step
goto 43.9,48.9
.click The Holy Spring##90
.get The Holy Water of Clarity |q 26590/1
step
goto 39.2,47.1
.from Naga Explorer##1907+
.get 6 Akiris Reed |q 26487/1
.click Naga Icon##4853+
.get 6 Naga Icon |q 26450/1
step
ding 32
step
goto 34.7,29.5
.talk 43095
..turnin 26487
..turnin 26450
..accept 26493
step
goto 33.6,29.2
.talk 43096
..turnin 26590
..accept 26434
..accept 26592
step
goto 36.7,35.6
.click Bloodsail Sapphire##9024
.get Bloodsail Sapphire |q 26592/2
step
goto 42.0,30.4 |n
.' Follow this road |goto 42.0,30.4,0.5 |noway |c
step
goto 49.0,36.4
.click Bloodsail Ruby##7075
.get Bloodsail Ruby |q 26592/1
step
goto 58.5,29.0
.from Thrashtail Basilisk##1550+
.get 7 Sassy's Secret Ingredient |q 26493/1
step
goto 51.4,27.5 |n
.' Follow this path |goto 51.4,27.5,0.5 |noway |c
step
goto 46.9,19.1
.from Stranglethorn Tigress##772+
.get 4 Supple Tigress Fur |q 26434/1
.from Elder Shadowmaw Panther##1713+
.get 4 Velvety Panther Fur |q 26434/2
step
'Hearth to Hardwrench Hideaway |goto 35.1,27.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 34.7,29.5
.talk 43095
..turnin 26493
..accept 26494
..accept 26495
step
goto 35.2,27.5
.talk 43097
..turnin 26494
..accept 26533
step
goto 34.5,27.9
.talk 43098
..turnin 26495
..accept 26550
step
goto 33.6,29.2
.talk 43096
..turnin 26434
..turnin 26592
..accept 26435
step
goto 42.4,30.9 |n
.' Follow this path |goto 42.4,30.9,0.5 |noway |c
step
goto 54.2,31.4
.click Totem of Hir'eek##7954
..' Place the incense at the foot of the statue
.' Place incense in front of Totem of Hir'eek |q 26550/1
.' Watch as you fly as a gargoyle
.' Spy on Zanzil |q 26550/2
step
goto 53.4,31.9
.from Zanzil Mindslave##43223+, Zanzil Zombie##1488+
.get 5 Zanzil's Mixture |q 26533/1
step
goto 45.4,36.1 |n
.' Follow this path |goto 45.4,36.1,0.5 |noway |c
step
goto 35.2,27.5
.talk 43097
..turnin 26533
..accept 26534
step
goto 34.6,28.0
.talk 43098
..turnin 26550
..accept 26551
step
goto 35.9,30.1
.talk 43203
..' <Offer the murloc a drink.>
.' Test Gmurgl |q 26534/1
step
goto 35.9,30.3
.talk 43204
..' <Offer the ogre a drink.>
.' Test Orgus |q 26534/2
step
goto 35.7,30.3
.talk 43205
..' <Offer the pirate a drink.>
.' Test Captain Bartholomew Softbeard |q 26534/3
step
goto 35.2,27.5
.talk 43097
..turnin 26534
..accept 26535
step
goto 52.3,36.3 |n
.' Follow this path |goto 52.3,36.3,0.5 |noway |c
step
goto 61.2,44.3
.' Go to this spot
.' You don't have to actually fight him at all
.kill Zanzil the Outcast##43255 |q 26551/1
.' Click the Complete Quest box that appears under your minimap
..turnin 26551
..accept 26552
step
goto 61.1,43.4
.from Zanzil Witch Doctor##1490+
.get Zanzil's Formulation |q 26535/1
step
goto 61.2,44.3
.click Zanzil's Portal##9041
.' Pass through Zanzil's Portal |q 26552/1
.' Click the Complete Quest box that appears under your minimap
..turnin 26552
..accept 26553
step
ding 33
step
goto Northern Stranglethorn,78.3,44.0
.from High Priestess Jeklik##43257
.' Destroy High Priestess Jeklik's body |q 26553/1
.' Click the Quest Completion box that appears under your mini map
..turnin 26553
..accept 26554
step
goto 77.9,44.4
.click Zanzil's Portal##9041
.' Pass through Zanzil's Portal |q 26554/1
.' Click the Quest Completion box that appears under your mini map
..turnin 26554
..accept 26555
step
goto 84.1,36.9
.from High Priest Venoxis##43323
.' Deal with High Priest Venoxis |q 26555/1
.clicknpc Rope Ladder##44157 |tip It's hanging from a plane.  You must click it or you will die.
.' You will teleport back to Hardwrench Hideaway |goto The Cape of Stranglethorn,34.7,30.5,0.5 |noway |c |q 26555
step
goto 35.2,27.5
.talk 43097
..turnin 26535
step
goto 34.6,28.0
.talk 43098
..turnin 26555
step
goto 45.0,65.9 |n // SPLIT POINT
.' Enter Booty Bay |goto 45.0,65.9,0.5 |noway |c
step
goto 40.3,67.8
.talk 2500
..accept 26599
step
goto 41.8,72.8
.talk 2486
..accept 26597
step
goto 42.1,73.4
.talk 2501
..accept 26593
step
goto 42.0,73.6
.' Go downstairs
.talk 43849
..turnin 26435
step
goto 40.9,73.8
.talk 6807
.home Booty Bay
step
goto 40.6,73.4
.talk 2858
.fpath Booty Bay
step
goto 42.4,67.9 |n
.' Leave Booty Bay |goto 42.4,67.9,0.5 |noway |c
step
goto 54.6,65.3
.from Gorlash##1492 |tip He's a big blue giant that walks along the shore here.
.get Smotts' Chest |q 26599/1
step
goto 54.3,65.4
.click Half-Buried Bottle##228 |tip They can spawn all along this beach.
..accept 26603
step
goto 47.4,63.8 |n
.' Go back to the main road |goto 47.4,63.8,0.5 |noway |c
step
goto 52.5,51.6
.from Elder Mistvale Gorilla##1557+
.collect Gorilla Fang##2799 |q 26597
step
goto 54.2,46.4
.talk 1449
..turnin 26598 |n
.from Mokk the Savage##1514 |tip Stand at the entrance of this cave.  He is a white gorilla, the third gorilla that comes to attack you.
.get Heart of Mokk |q 26597/1
step
goto 51.7,53.0
.from Elder Mistvale Gorilla##1557+
.get 5 Mistvale Giblets |q 26593/1
step
goto 45.0,65.9 |n
.' Enter Booty Bay |goto 45.0,65.9,0.5 |noway |c
step
goto 40.5,67.7
.talk 2502
..turnin 26593
..accept 26594
step
goto 40.3,67.8
.talk 2500
..turnin 26599
..accept 26600
step
goto 42.8,69.0
.talk 2664
.get Crate of Grade-E Meat |q 26600/1
step
goto 41.8,72.8
.talk 2486
..turnin 26597
step
goto 42.1,73.4
.talk 2501
..turnin 26594
..accept 26595
step
goto 41.0,74.0
.talk 2491
.get Crate of Pupellyverbos Port |q 26600/2
step
goto 40.3,67.8
.talk 2500
..turnin 26600
..accept 26602
step
goto 42.4,67.9 |n
.' Leave Booty Bay |goto 42.4,67.9,0.5 |noway |c
step
goto 59.5,79.0
.talk 2634
..turnin 26603
..accept 26604
step
goto 58.2,80.7
.kill 5 Jaguero Stalker##2522+ |q 26604/1
step
goto 59.5,79.1
.talk 2634
..turnin 26604
..accept 26605
step
goto 60.5,77.9
.from Skymane Gorilla##2521+, Skymane Bonobo##43417+
.get Poobah's Tiara |q 26605/1
.get Poobah's Scepter |q 26605/2
.get Poobah's Slippers |q 26605/3
.get Poobah's Diary |q 26605/4
step
ding 34
step
goto 59.5,79.0
.talk 2634
..turnin 26605
..accept 26606
step
goto 63.0,83.7
.from King Mukla##1559
.get Shackle Key |q 26606/1
step
goto 59.5,79.0
.talk 2634
..turnin 26606
step
goto 49.7,81.2
.click Ruined Lifeboat##223
..' <Place the food and drink inside the lifeboat.>
.kill Negolash##1494 |q 26602/1
step
goto 56.8,53.6
.talk 43376 |tip She's a friendly Goblin that walks around this area.
..' Tell him to pay up
.from Freewheelin' Juntz Fitztittle##43376
.get Fitztittle's Ratcheting Torque Wrench |q 26595/2
step
goto 59.5,49.2
.from Maury "Club Foot" Wilkins##2535
.get Maury's Clubbed Foot |q 26595/1
step
goto 55.8,52.0
.from Ephram "Midriff" Moonfall##43377 |tip He walks around this area, so you may need to search for him.
.get Ephram's Jeweled Mirror |q 26595/3
step
'Hearth to Booty Bay |goto 40.9,73.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 42.1,73.4
.talk 2501
..turnin 26595
step
goto 42.6,72.0
.talk 2490
..accept 26609
step
goto 40.3,67.8
.talk 2500
..turnin 26602
..accept 26601
step
goto 34.7,65.3
.kill Mok'rash the Cleaver##1493 |q 26601/1
step
goto 41.3,61.2
.click Bloodsail Correspondence##183
..turnin 26609
..accept 26610
.from "Good-Boy" Bruce##43454
.collect Weather-Beaten Coin##59143 |n
.' Click the Weather-Beaten Coin in your bags |use Weather-Beaten Coin##59143
..accept 26617
step
goto 45.0,65.9 |n
.' Enter Booty Bay |goto 45.0,65.9,0.5 |noway |c
step
goto 40.3,67.8
.talk 2500
..turnin 26601
step
goto 42.6,72.0
.talk 2490
..turnin 26610
..accept 26611
step
goto 41.1,73.3
.talk 2487
..turnin 26617
step
goto 41.2,73.1
.talk 2496
..turnin 26611
..accept 26612
step
goto 40.7,73.8
.talk 2488
..accept 26613
step
goto 43.4,71.5
.talk 2493
..accept 26614
step
goto 42.4,67.9 |n
.' Leave Booty Bay |goto 42.4,67.9,0.5 |noway |c
step
goto 45.0,79.5
.click Bloodsail Charts##222
.get Bloodsail Charts |q 26612/3
.click Bloodsail Orders##220
.get Bloodsail Orders |q 26612/4
.' The Bloodsail Orders and Charts can also spawn at the following locations:
.' at [42.0,83.2]
.' at [40.9,82.8]
.kill 8 Bloodsail Sea Dog##1565+ |q 26612/1
.kill 8 Bloodsail Elder Magus##1653+ |q 26612/2
.get 15 Snuff |q 26613/1
.get Dizzy's Eye |q 26614/1
step
goto 45.0,65.9 |n
.' Enter Booty Bay |goto 45.0,65.9,0.5 |noway |c
step
goto 43.4,71.5
.talk 2493
..turnin 26614
step
goto 40.7,73.8
.talk 2488
..turnin 26613
step
goto 41.2,73.1
.talk 2496
..turnin 26612
..accept 26624
step
goto 42.4,67.9 |n
.' Leave Booty Bay |goto 42.4,67.9,0.5 |noway |c
step
goto 43.8,56.5
.talk 43504
..turnin 26624
..accept 26629
step
goto 45.0,65.9 |n
.' Enter Booty Bay |goto 45.0,65.9,0.5 |noway |c
step
goto 41.1,73.3
.talk 2487
..accept 26630
step
goto 43.3,71.7
.talk 43505
..' Tell her you need to cut off her head, then do the deed
.get Cow Head |q 26630/3
step
goto 42.6,69.1
.talk 2663
..' Tell him you need an extra-large pirate hat.  Seahorn's orders.
.get Oversized Pirate Hat |q 26630/2
step
goto 41.1,73.3
.talk 2487
..' Give him the head and the hat and tell him he's the boss
.' Return both items to Fleet Master Seahorn |q 26630/1
step
goto 41.1,73.3
.talk 2487
..turnin 26630
.get Head of Fleet Master Seahorn |q 26629/1
step
goto 42.4,67.9 |n
.' Leave Booty Bay |goto 42.4,67.9,0.5 |noway |c
step
goto 43.8,56.5
.talk 43504
..turnin 26629
..accept 26631
step
ding 35
step
goto 51.1,69.0 |n
.' Go to the beach |goto 51.1,69.0,0.5 |noway |c
step
goto 44.5,91.4
.talk 2548
..turnin 26631
..accept 26633
step
goto 44.5,92.5
.' Go upstairs to the top deck of the ship
.click Swabbie's Mop##9742
.clicknpc Deck Stain##43511+ |tip They spawn on the deck of the ship.
.' Swab the Decks |q 26633/1 |tip If you have trouble swabbing the decks, you can pay "Pretty Boy" Duncan, on the deck of the ship, 1 gold and he will do it for you.
step
goto 44.5,93.3
.talk 2545
..accept 26635
step
goto 44.5,91.9
.talk 2549
..accept 26634
step
goto 44.5,91.6
.talk 2548
..turnin 26633
step
goto 46.3,96.0
.click Bloodsail Cannonball##153+ |tip They are underwater.
.get 6 Bloodsail Cannonball |q 26635/1
step
goto 52.5,87.9
.click Lime Crate##2350+
.get 5 Bushel of Limes |q 26634/1
.' You can find more Lime Crates around [56.6,80.0]
step
goto 44.5,93.2
.talk 2545
..turnin 26635
step
goto 44.5,91.9
.talk 2549
..turnin 26634
step
goto 44.4,91.6
.talk 2548
..accept 26644
step
goto 46.7,95.3
.talk 2546
..turnin 26644
step
goto 46.6,95.0
.talk 2547
..accept 26647
step
goto 46.8,94.0
.' Go upstairs
.talk 43556
..accept 26648
step
goto 46.9,93.9
.clicknpc Ol' Blasty##43562
.' Use the abilities on your hotbar to shoot at Smilin' Timmy Sticks |tip It looks like a target dummy floating around in a small boat in the water near the ship you're on.
.' Hit Smilin' Timmy Sticks with 5 Cannonballs |q 26647/1
step
.' Click the red arrow on your hotbar to stop using Ol' Blasty |outvehicle |q 26647
step
goto 46.6,95.0
.' Go downstairs
.talk 2547
..turnin 26647
..accept 26649
step
goto 45.9,89.7
.talk 43605
..' Tell him ahoy matey!
.' Use the abilities on your hotbar to shoot at the Venture Co. Oil Workers |tip They are working on the metal machines.
.kill 75 Venture Co. Oil Worker##43596+ |q 26649/1
step
'Use the Return to Shore ability on your hotbar
.' Return to the Wild Shore |goto 46.0,89.4,0.5 |noway |c
step
goto 46.6,95.0
.' Go downstairs in the ship
.talk 2547
..turnin 26649
step
goto 57.1,82.4
.' Use Dead-Eye's Flare Gun |use Dead-Eye's Flare Gun##59226
.kill 15 Ninja##43553+ |q 26648/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26648
step
goto 46.7,95.3
.talk 2546
..accept 26650
step
goto 50.2,91.5
.click Captain Stillwater's Charts##222 |tip It's downstairs in this ship.
..turnin 26650
..accept 26662
..accept 26663
..accept 26664
step
goto 51.3,91.4
.talk 43659
.. Ask him if the Brashtide Crew is ready for battle
.' Speak with Long John Copper |q 26662/1
step
goto 50.6,91.5
.' Go all the way downstairs in this ship
.talk 43636
..' Tell them they're mutinous dogs, and to draw steel!
.' Kill as many Bloodsail Corsairs as you can on this ship
.click Grog Barrel##9095
..' <Nudge the cork.>
.' Sabotage the Grog |q 26663/1
step
goto 46.7,94.2
.' Go all the way downstairs in this ship
.talk 43660
..' Ask him what he can tell you about the Brashtide Crew
.' Speak with Enormous Shawn Stooker |q 26662/2
step
goto 46.8,93.7
.talk 43636
..' Tell them they're mutinous dogs, and to draw steel!
.' Kill as many Bloodsail Corsairs as you can on this ship, unless you've already killed 9 of them
.click Gunpowder Barrel##9095
..' <Pour the water onto the gunpowder.>
.' Sabotage the Gunpowder |q 26663/2
step
goto 44.5,93.2
.' Go downstairs in this ship
.talk 43661
..' Ask her if she knows the battle plan
.' Speak with Wailing Mary Smitts |q 26662/3
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26662
step
goto 44.7,92.8
.' Go all the way downstairs in this ship
.click Cannonball Crate##9651
..' <Grease the cannonballs.>
.' Sabotage the Cannonballs |q 26663/3
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26663
step
goto 44.8,92.9
.talk 43636
..' Tell them they're mutinous dogs, and to draw steel!
.' Accuse and kill 9 Bloodsail Corsairs |q 26664/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26664
..accept 26665
step
'Hearth to Booty Bay |goto 40.9,73.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 41.2,73.1
.' Go upstairs
.talk 2496
..turnin 26665
..accept 26678
step
goto 40.6,73.2
.' Go downstairs one level
.click Barrel of Doublerum##32
..turnin 26678
..accept 26679
step
goto 41.2,73.1
.' Go upstairs
.talk 2496
..turnin 26679
..accept 26695
..accept 26698
step
goto 41.5,73.0
.talk 2487
..turnin 26698
..accept 26700
..accept 26699
step
goto 42.6,69.1
.click Narkk's Handbombs##9651
.get Narkk's Handbombs |q 26695/1
step
goto 41.2,73.1
.talk 2496
..turnin 26695
..accept 26697
step
ding 36
step
goto 40.4,73.5
.talk 737
..' Tell him you need a wind rider to take on a special mission
.' Use your Throw Handbombs ability on your hotbar on the Bloodsail mobs in the boats below
.kill 85 Brashtide Crewman##43717+ |q 26697/1
.' Destroy 6 Brashtide Attack Boats |q 26697/2 |tip The Brashtide Attack Boats are the small wooden boats in the water.
step
'Use your Return to Booty Bay ability on your hotbar
.' Return to Booty Bay |goto 40.5,73.3,0.5 |noway |c
step
goto 41.2,73.1
.talk 2496
..turnin 26697
step
goto 41.5,73.0 |n
.click Blackwater Rope##7538
.' Swing over to the Bloodsail ship |goto 41.0,70.7,0.5 |noway |c
step
goto 41.2,70.7
.kill 8 Bloodsail Corsair##43726+ |q 26700/1 |tip They are all around inside this ship.
step
goto 41.1,70.9 |n
.click Bloodsail Rope##7538
.' Swing over to the Booty Bay docks |goto 41.4,73.0,0.5 |noway |c
step
goto 42.5,72.5
.kill 10 Brashtide Raider##43716+ |q 26699/1
step
goto 41.2,73.1
.talk 2496
..turnin 26700
..turnin 26699
..accept 26703
step
goto 40.4,73.5
.talk 737
..' Tell him you need another wind rider
.' You will fly onto a Bloodsail ship |goto 36.5,65.9,0.5 |noway |c
step
goto 35.6,66.8
.kill Fleet Master Firallon##2546 |q 26703/1 |tip He's downstairs in the ship, in the Captain's room.
step
goto 41.2,73.1
.talk 2496
..turnin 26703
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Arathi Highlands (26-30)\\Arathi Highlands (26-29)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Arathi Highlands (26-30)\\Arathi Highlands (29-30)
startlevel 26.85
dynamic on
step
|fly Galen's Fall
step
goto Arathi Highlands,13.4,35.9
.talk 41949
..turnin 28619
..accept 26022
step
goto 13.3,34.1
.talk 41966
..accept 26053
step
goto 13.8,33.9
.talk 4486
..accept 26428
step
goto 25.1,30.1
.from Syndicate Mercenary##2589+, Syndicate Highwayman##2586+, Syndicate Pathstalker##2587+
.get 10 Bloodstone Amulet |q 26022/1
step
ding 27
step
goto 28.6,45.3 |n
.' Enter the cave |goto 28.6,45.3,0.5 |noway |c
step
goto 27.8,45.7
.kill 10 Boulderfist Enforcer##2564+ |q 26053/2
step
goto 28.6,45.3 |n
.' Leave the cave |goto 28.6,45.3,0.5 |noway |c
step
goto 29.9,45.1
.kill 8 Boulderfist Ogre##2562+ |q 26053/1
step
goto 13.3,35.9
.talk 41949
..turnin 26022
..accept 26023
..accept 26025
step
goto 12.9,36.2
.talk 41944
..turnin 26023
..accept 26030
step
goto 13.4,34.2
.talk 41966
..turnin 26053
..accept 26027
step
goto 19.5,57.3 |n
.' Enter Stromgarde Keep |goto 19.5,57.3,0.5 |noway |c
step
goto 23.4,63.9 |n
.' Go behind the house through this space on the side of the house |goto 23.4,63.9,0.5 |noway |c
step
goto 23.2,64.8
.from Marez Cowl##2783
.get Befouled Bloodstone Orb |q 26025/1
.' She can also be located at [23.1,66.1] |tip You'll have to go back to the fork in the road and take the middle path up and then to the left.
step
goto 20.2,62.0
.from Syndicate Thief##24477+, Syndicate Conjuror##2590+, Syndicate Magus##2591+, Syndicate Prowler##2588+
.get Sigil of Strom |q 26030/1
step
goto 17.8,63.0 |n
.' Walk down this road |goto 17.8,63.0,0.5 |noway |c
step
goto 14.9,69.1
.kill 7 Boulderfist Shaman##2570+ |q 26027/1
.kill 3 Boulderfist Lord##2571+ |q 26027/2
step
'Hearth to Tarren Mill |goto Hillsbrad Foothills,58.0,47.3,0.5 |use Hearthstone##6948 |noway |c
step
|fly Galen's Fall
step
goto Arathi Highlands,13.4,36.0
.talk 41949
..turnin 26027
..turnin 26025
step
goto 12.9,36.2
.talk 41944
..turnin 26030
..accept 26031
step
ding 28
step
goto 13.4,34.2
.talk 41966
..accept 26029
step
goto 19.5,57.3 |n
.' Enter Stromgarde Keep |goto 19.5,57.3,0.5 |noway |c
step
goto 16.0,62.5
.from Stromgarde Defender##2584+
.get 5 Sigil Fragment |q 26031/1
step
goto 17.8,63.0 |n
.' Walk down this road |goto 17.8,63.0,0.5 |noway |c
step
goto 14.7,67.5
.from Or'Kalar##2773
.get Or'Kalar's Head |q 26029/1
step
goto 17.8,63.0 |n
.' Leave the ogre area |goto 17.8,63.0,0.5 |noway |c
step
goto 19.5,57.3 |n
.' Leave Stromgarde Keep |goto 19.5,57.3,0.5 |noway |c
step
goto 12.9,36.2
.talk 41944
..turnin 26031
..accept 26032
step
goto 13.4,34.2
.talk 41966
..turnin 26029
step
goto 36.0,56.5
.from Lieutenant Valorcall##2612 |tip He patrols the section of the road between Stromgarde Keep and Refuge Point, so you may need to search for him.
.get Sigil of Arathor |q 26032/1
step
goto 12.9,36.2
.talk 41944
..turnin 26032
..accept 26033
step
goto 19.5,57.3 |n
.' Enter Stromgarde Keep |goto 19.5,57.3,0.5 |noway |c
step
goto 17.4,62.3 |n
.' Go through this large doorway |goto 17.4,62.3,0.5 |noway |c
step
goto 19.1,59.8 |n
.' Cross this bridge |goto 19.1,59.8,0.5 |noway |c
step
goto 22.8,60.7 |n
.' Enter the crypt |goto 22.8,60.7,0.5 |noway |c
step
goto 22.4,61.4
.click Trollbane's Tomb##11
.get Sheathed Trol'kalar |q 26033/1
step
'Hearth to Tarren Mill |goto Hillsbrad Foothills,58.0,47.3,0.5 |use Hearthstone##6948 |noway |c
step
|fly Galen's Fall
step
goto Arathi Highlands,12.9,36.2
.talk 41944
..turnin 26033
..accept 26081
step
goto 13.4,36.0
.talk 41949
..turnin 26081
..accept 26084
step
goto 12.8,34.1
.talk 42088
..accept 26083
step
goto 24.3,53.5 |n
.' Follow this road south |goto 24.3,53.5,0.5 |noway |c
step
goto 24.4,69.7 |n
.' Follow the path on the left here |goto 24.4,69.7,0.5 |noway |c
step
goto 27.6,83.0
.talk 2768
..accept 26050
step
goto 29.5,82.1
.' Escort Professor Phizzlethorpe
.' Defend Professor Phizzlethorpe |q 26050/1
step
goto 27.6,82.9
.talk 2774
..turnin 26050
..accept 26051
step
goto 27.7,83.3
.talk 2769
..accept 26055
step
goto 25.4,85.3
.talk 2766
..turnin 26083
step
'Equip your Goggles of Gem Hunting |use Goggles of Gem Hunting##4491
.' Skip to the next step in the guide
step
goto 16.2,91.4
.kill 10 Daggerspine Raider##2595+ |q 26055/1
.kill 3 Daggerspine Sorceress##2596+ |q 26055/2
.click Calcified Elven Gem##247+ |tip You can find them easily if you have your Goggles of Gem Hunting equipped.  You will see yellow dots on your minimap where they are located.
.get 10 Elven Gem |q 26051/1
step
ding 29
step
'Remember to equip your regular helmet, if you have one
.' Skip to the next step in the guide
step
goto 27.7,83.3
.talk 2769
..turnin 26055
step
goto 27.6,82.9
.talk 2774
..turnin 26051
..accept 26052
step
goto 25.9,83.9
.talk 2610
..turnin 26052
..accept 26628
step
goto 25.4,85.2
.' Kill the naga that attack Faldir's Cove
.' Defend Shakes O'Breen |q 26628/1
step
goto 25.9,83.9
.talk 2610
..turnin 26628
step
goto 27.9,82.0 |n
.' Follow the path up |goto 27.9,82.0,0.5 |noway |c
step
goto 51.3,41.6
.from Fardel Dabyrie##4479
.get Fardel's Head |q 26428/3
step
goto 48.6,39.1
.from Marcel Dabyrie##4481
.get Marcel's Head |q 26428/2
step
goto 50.9,37.0
.from Kenata Dabyrie##4480
.get Kenata's Head |q 26428/1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Arathi Highlands (26-30)\\Arathi Highlands (29-30)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\The Hinterlands (30-34)\\The Hinterlands (30-32)
startlevel 29.70
dynamic on
step
goto Arathi Highlands,57.2,34.6
.click Shards of Myzrael##1667
..accept 26039
step
goto 67.7,34.8
.talk 42130
..turnin 26084
..accept 26107
step
goto 68.2,33.4
.talk 2851
.fpath Hammerfall
step
goto 69.0,33.2
.talk 9501
.home Hammerfall
step
goto 69.0,34.8
.talk 2771
..accept 26429
..accept 26430
step
goto 76.4,41.0 |n
.' Go up this path |goto 76.4,41.0,0.5 |noway |c
step
goto 78.2,36.9 |n
.' Enter the cave |goto 78.2,36.9,0.5 |noway |c
step
goto 79.0,36.1
.' All around inside this cave:
.from Drywhisker Digger##2574+, Drywhisker Surveyor##2573+
.get 12 Mote of Myzrael |q 26039/1
step
goto 79.8,31.6
.click Iridescent Shards##1687 |tip It's at the end of the path in the cave.
..turnin 26039
..accept 26041
step
goto 78.2,36.9 |n
.' Leave the cave |goto 78.2,36.9,0.5 |noway |c
step
goto 76.4,41.0 |n
.' Follow the path down |goto 76.4,41.0,0.5 |noway |c
step
goto 61.6,30.4
.click Stone of East Binding##236
.get Cresting Key |q 26041/2
step
goto 63.0,35.6
.from Highland Strider##2559+
.get 10 Highland Raptor Eye |q 26107/1
.' More Highland Striders can be found around 60.6,43.5
step
ding 30
step
goto 67.7,34.8
.talk 42130
..turnin 26107
..accept 26108
step
goto 46.4,52.1
.click Stone of Outer Binding##236
.get Thundering Key |q 26041/3
step
goto 48.5,67.7
.from Highland Fleshstalker##2561+
.get 12 Raptor Heart |q 26108/1
step
goto 59.5,71.9
.kill 10 Witherbark Axe Thrower##2554+ |q 26429/1
.kill 10 Witherbark Headhunter##2556+ |q 26429/2
.kill 8 Witherbark Witch Doctor##2555+ |q 26429/3
.' More Witherbark can be found at [65.3,72.8]
step
'Hearth to Hammerfall |goto 69.0,33.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 69.0,34.8
.talk 2771
..turnin 26429
step
goto 67.7,34.8
.talk 42130
..turnin 26108
step
|fly Galen's Fall
step
goto 13.8,33.9
.talk 4486
..turnin 26428
step
goto 18.9,30.9
.click Stone of West Binding##236
.get Burning Key |q 26041/1
step
goto 30.0,59.1
.click Stone of Inner Binding##236
..turnin 26041
..accept 26042
step
goto 43.7,67.1
.from Fozruk##2611
.get Rod of Order |q 26042/1
step
goto 29.9,59.8
.click Keystone##235
..turnin 26042
step
goto 30.0,59.1
.click Stone of Inner Binding##236
..accept 26911
step
|fly Hammerfall
step
goto 69.7,36.5
.talk 2787
..turnin 26911
step
goto 68.2,33.4
.talk 2851
..' Tell her to take your to Revantusk Village
.' You will fly to Revantusk Village |goto The Hinterlands,81.7,81.9,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\The Hinterlands (30-34)\\The Hinterlands (30-32)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\The Hinterlands (30-34)\\The Hinterlands (32-34)
startlevel 30.90
dynamic on
step
goto The Hinterlands,81.7,81.8
.talk 4314
.fpath Revantusk Village
step
goto 80.3,81.5
.talk 14740
..accept 26210
..accept 26211
step
goto 78.1,81.4
.talk 14731
..accept 26212
step
goto 78.1,81.4
.talk 14731
.home Revantusk Village
step
goto 78.2,81.3
.' Go upstairs
.talk 42613
..accept 26238
..accept 26263
step
goto 79.2,79.5
.talk 14741
..accept 26223
step
goto 78.8,78.2
.talk 14739
..accept 26240
step
goto 77.3,80.0
.talk 42464
..accept 26225
step
ding 31
step
goto 76.8,74.8
.kill 10 Saltwater Snapjaw##2505+ |q 26211/1
.click Pupellyverbos Port##225+
.get 12 Pupellyverbos Port |q 26225/1
.' You can find more Salt Water Snapjaw and Pupellyverbos Port all along the coast up to [81.8,49.4]
step
goto 77.2,70.7
.from Gammerita##7977 |tip She's a blue turtle that walks around this area, so you may need to search for her.
.get Katoom's Best Lure |q 26210/1
.' Gammerita spawns at [75.5,65.1]
step
goto 84.5,41.2
.click Lard's Picnic Basket##5993
.from Vilebranch Kidnapper##14748+
.get Lard's Lunch |q 26212/1
step
'Hearth to Revantusk Village |goto 78.2,81.3,0.5 |use Hearthstone##6948 |noway |c
step
goto 78.1,81.4
.talk 14731
..turnin 26212
step
goto 80.3,81.5
.talk 14740
..turnin 26210
..turnin 26211
step
goto 77.3,80.0
.talk 42464
..turnin 26225
step
goto 76.0,75.9 |n
.' Follow the path up |goto 76.0,75.9,0.5 |noway |c
step
goto 71.0,48.5
.kill Thornar Thunderclash##42610 |q 26263/1
step
goto 71.3,50.0
' |from Wildhammer Warrior##42518+,Wildhammer Shaman##42554+
.kill 10 Wildhammer |q 26238/1
.' Use your Revantusk War Drums on Revantusk Stalkers |use Revantusk War Drums##57920
.' Bolster 6 Revantusk Warriors |q 26240/1
step
goto 70.1,60.0
.kill 8 Silvermane Stalker##2926+ |q 26223/1
step
goto 70.8,64.3 |n
.' Follow the path down |goto 70.8,64.3,0.5 |noway |c
step
goto 78.8,78.2
.talk 14739
..turnin 26240
step
goto 79.2,79.5
.talk 14741
..turnin 26223
..accept 26224
step
goto 78.2,81.3
.' Go to the top of the building
.talk 42613
..turnin 26238
..turnin 26263
..accept 26267
..accept 26268
step
goto 78.0,78.1
.talk 42612
..accept 26283
step
goto 76.0,75.9 |n
.' Follow the path up |goto 76.0,75.9,0.5 |noway |c
step
goto 57.5,38.9 |n
.' Enter the cave |goto 57.5,38.9,0.5 |noway |c
step
goto 57.4,41.5
.' Go down the ramp
.from The Direglob##42592
.get Direglob Sample |q 26283/1
.click Ooze-coated Supply Crate##1988+
.get 5 Ooze-Coated Supply Crate |q 26268/1
step
goto 57.5,38.9 |n
.' Go up the ramp
.' Leave the cave |goto 57.5,38.9,0.5 |noway |c
step
goto 59.3,40.2
.kill 10 Jade Ooze##2656+ |q 26267/1
step
ding 32
step
goto 59.5,47.7
.kill 10 Savage Owlbeast##2929+ |q 26224/1 |tip Beware the Razorbeak Skylord that patrols the area.
.' There are more Savage Owlbeasts around [62.7,49.5]
step
|fly Revantusk Village
step
goto 78.2,81.3
.' Go to the top of the building
.talk 42613
..turnin 26267
..turnin 26268
..accept 26432
step
goto 79.2,79.5
.talk 14741
..turnin 26224
step
goto 78.0,78.1
.talk 42612
..turnin 26283
step
goto 76.0,75.9 |n
.' Follow the path up |goto 76.0,75.9 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\The Hinterlands (30-34)\\The Hinterlands (32-34)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Western Plaguelands (34-39)\\Western Plaguelands (34-39)
startlevel 32.25
dynamic on
step
goto The Hinterlands 67.8,66.3
.talk 42624
..accept 26357
step
goto 67.8,66.5
.talk 42642
..turnin 26432
..accept 26306
..accept 26366
step
goto 67.6,66.6
.talk 42622
..accept 26310
step
goto 66.7,68.5
.' Follow the path through Jintha'Alor
.kill 5 Vilebranch Headhunter##2641+ |q 26306/1
.kill 5 Vilebranch Witch Doctor##2640+ |q 26306/2
.' Use your Tiki Torch next to tiki masks |use Tiki Torch##58209 |tip They look like big wooden faces hanging on the walls all throughout Jintha'Alor.
.' Burn 8 Tiki Masks |q 26357/1
.clicknpc Skittering Spiderling##42689+ |tip They are really small, so keep an eye out for them.
.get 8 Skittering Spiderling |q 26310/1
step
goto 65.2,64.9
.' Follow the path up into and through Jintha'Alor
.from Umboda Three-Heads##42724
.get Umboda's Head |q 26366/1
step
goto 67.6,66.6
.talk 42622
..turnin 26310
..accept 26309
step
goto 67.8,66.5
.talk 42642
..turnin 26306
..accept 26307
..turnin 26366
step
goto 67.8,66.3
.talk 42624
..turnin 26357
step
goto 65.3,75.8
.' Follow the path further through Jintha'Alor
.kill 5 Vilebranch Berserker##2643+ |q 26307/1
.kill 1 Vilebranch Shadowcaster##2642 |q 26307/2
step
goto 67.8,66.5
.talk 42642
..turnin 26307
..accept 26308
..accept 26367
step
ding 33
step
goto 60.7,71.4
.' Follow the path through Jintha'Alor to almost the top level
.kill 5 Vilebranch Soul Eater##2647+ |q 26308/1
.kill 5 Vilebranch Blood Drinker##2646+ |q 26308/2
.click Vessel of Tainted Blood##216+ |tip They are rare, except on the almost top level of Jintha'Alor, so you may need to search hard for them.
.get 5 Vessel of Tainted Blood |q 26309/1
step
goto 62.3,75.6
.from Ongo'longo##42815
.' Enrage Ongo'longo |q 26367/1
step
goto 67.6,66.6
.talk 42622
..turnin 26309
..accept 26368
step
goto 67.8,66.5
.talk 42642
..turnin 26308
..turnin 26367
..accept 26363
step
goto 59.4,77.7
.' Follow the path through Jintha'Alor to the top level
.clicknpc Sacrificed Vilebranch##42857+
.get 8 Spider Idol |q 26363/1
step
goto 58.6,79.2 |n
.' Enter the cave |goto 58.6,79.2,0.5 |noway |c
step
goto 57.7,81.1
.from Spawn of Shadra##42879+
.get 6 Shadra-Spawn Venom Sample |q 26368/1
step
goto 58.6,79.2 |n
.' Leave the cave |goto 58.6,79.2,0.5 |noway |c
step
goto 67.6,66.6
.talk 42622
..turnin 26368
step
goto 67.8,66.5
.talk 42642
..turnin 26363
..accept 26369
step
goto 58.6,79.2 |n
.' Follow the path through Jintha'Alor to the top level
.' Enter the cave |goto 58.6,79.2,0.5 |noway |c
step
goto 57.5,86.5
.from Morta'gya the Keeper##42877
.get Tablet of Shadra |q 26369/1
step
goto 58.6,79.2 |n
.' Leave the cave |goto 58.6,79.2,0.5 |noway |c
step
goto 67.8,66.5
.talk 42642
..turnin 26369
step
ding 34
step
goto 67.6,66.6
.talk 42622
..accept 26384
step
goto 31.8,58.0
.talk 43739
.home Hiri'watha Research Station
step
goto 31.9,58.4
.talk 42898
..turnin 26384
..accept 26381
step
goto 31.8,58.6
.talk 42896
..accept 26382
step
goto 45.5,38.9
.click Cache of Shadra##2450
.get Eye of Shadra |q 26381/1
step
goto 46.1,40.3
.click Shadraspawn Egg##6171+
.get 5 Shadraspawn Egg |q 26382/1
step
goto 31.9,58.4
.talk 42898
..turnin 26381
..accept 26406
step
goto 31.8,58.6
.talk 42896
..turnin 26382
..accept 26387
step
goto 49.5,52.1
.click Cache of Shadra##2450
.get Fang of Shadra |q 26406/1
.kill 6 Cocooned Victim##42907+ |q 26387/1
step
'Hearth to Hiri'watha Research Station |goto 31.8,58.0,0.5 |use Hearthstone##6948 |noway |c
step
goto 31.9,58.4
.talk 42898
..turnin 26406
..accept 26418
step
goto 31.8,58.6
.talk 42896
..turnin 26387
step
goto 48.4,67.8
.from Qiaga the Keeper##42919
.get Shell of Shadra |q 26418/1
step
goto 31.9,58.4
.talk 42898
..turnin 26418
..accept 26558
step
goto 32.1,67.3
.' Use your Idol of Shadra at the top of the temple |use Idol of Shadra##58784
.' Use the Idol at the Northwestern Temple |q 26558/1
step
goto 32.5,76.2
.' Use your Idol of Shadra at the top of the temple |use Idol of Shadra##58784
.' Use the Idol at the Southwestern Temple |q 26558/3
step
goto 37.0,71.5
.' Use your Idol of Shadra at the top of the temple |use Idol of Shadra##58784
.' Use the Idol at the Eastern Temple |q 26558/2
step
goto 35.6,68.4
.talk 43299
..turnin 26558
..accept 26419
step
goto 34.4,69.6
.kill Shadra##43007 |q 26419/1
step
goto 31.9,58.4
.talk 42898
..turnin 26419
step
goto 31.9,58.4
.talk 42898
..accept 28508
step
goto 32.5,58.1
.talk 43573
..' Tell him you need a bat and you're headed to Western Plaguelands
.' You will fly to Andorhal, Western Plaguelands |goto Western Plaguelands,46.6,64.7,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Western Plaguelands (34-39)\\Western Plaguelands (34-39)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Eastern Plaguelands (39-44)\\Eastern Plaguelands (39-44)
startlevel 34.93
dynamic on
step
goto Western Plaguelands 47.3,64.4
.talk 44462
..accept 26922
step
goto 47.8,65.2
.talk 44452
..turnin 28508
..accept 26921
step
goto 47.6,65.6
.talk 44466
..accept 26923
step
goto 44.0,63.1
.' Use Jearl's Hand Grenades next to the Scourge Bone Animus |tip It looks like a pile of bones on the floor inside this tower. |use Jearl's Hand Grenades##60678
.' Destroy the Scourge Bone Animus |q 26922/1
.kill 5 Stickbone Berserker##44329+ |q 26922/2
step
goto 44.9,64.8
' |from Desiccated Spearman##44316+, Desiccated Magus##44315+
.kill 15 Desiccated Scourge |q 26921/1
.kill 6 Opengut Behemoth##44562+ |q 26923/1
step
ding 35
step
goto 47.6,65.6
.talk 44466
..turnin 26923
step
goto 47.8,65.2
.talk 44452
..turnin 26921
..accept 26924
..accept 27117
step
goto 47.3,64.4
.talk 44462
..turnin 26922
..accept 26925
step
goto 48.3,63.8
.talk 47857
.home Andorhal
step
goto 45.2,69.3
.' Use Jearl's Hand Grenades on Stickbone Berserkers, if they spawn |use Jearl's Hand Grenades##60678
.from Araj the Summoner##1852 |tip Don't worry that he's marked as elite, he's easy to kill.
.click Araj's Phylactery##4712
.get Araj's Phylactery Shard |q 26925/1
step
goto 45.3,72.8
.from Darkmaster Gandling##44323 |tip Koltira Deathweaver will join you when Darkmaster Gandling is weakened, to help finish him off.  Don't worry that he's marked as elite, he's easy to kill.
.' Deal with Darkmaster Gandling |q 26924/1
step
goto 46.7,71.7
.kill The Ravenian##44317 |q 27117/1 |tip Don't worry that he's marked as elite, he's easy to kill.
step
goto 47.8,65.2
.talk 44452
..turnin 26924
..turnin 26925
..turnin 27117
..accept 26926
step
|fly The Bulwark
step
goto Tirisfal Glades,83.4,69.8
.talk 11055
..accept 26931
step
goto 83.3,69.2
.talk 11057
..accept 26934
step
goto 83.3,69.0
.talk 10837
..turnin 26926
..accept 26930
step
goto Western Plaguelands,34.0,64.1
.from Diseased Black Bear##1815+ |tip Don't kill Shaggy Black Bears, they do not count as Diseased Black Bears.  The Diseased Black Bears are literally named Diseased Black Bears.  The Diseased Black Bears are rare, so you may need to search for them around this area.
.click Plague Tangle##7845+
.get 20 Plague Tangle |q 26934/1
step
goto 38.7,64.0
.kill 4 Alliance Fox Hunter##44432+ |q 26931/1
.kill 4 Bullmastiff##44476+ |q 26931/2
.kill 4 Whitetail Fox##44474+ |q 26931/3
.' More Alliance Fox Hunters, Bullmastiffs and Whitetail Fox can be found around [40.6,56.8]
step
goto 40.7,52.4
.' Go to this spot
.' Scout the Scarlet Crusade Camp |q 26930/1
step
goto Tirisfal Glades,83.4,69.8
.talk 11055
..turnin 26931
..accept 26933
step
goto 83.3,69.2
.talk 11057
..turnin 26934
..accept 26978
step
goto 83.3,69.0
.talk 10837
..turnin 26930
step
goto Western Plaguelands,37.3,56.4
.' Use Dithers' Plague Drums next to the windmill |use Dithers' Plague Drums##60753
.' Leave a Drum near the Windmill |q 26978/1
step
goto 38.6,55.3
.' Use Dithers' Plague Drums right inside the doorway inside this barn |use Dithers' Plague Drums##60753
.' Leave a Drum inside the Barn |q 26978/4
step
goto 38.1,54.5
.' Use Dithers' Plague Drums right inside the doorway inside this house |use Dithers' Plague Drums##60753
.' Leave a Drum inside the Ranch House |q 26978/3
step
goto 36.9,54.6
.' Use Dithers' Plague Drums next to the 2 tall metal structures |use Dithers' Plague Drums##60753
.' Leave a Drum near the Grain Silos |q 26978/2
step
goto 37.3,55.8
.kill 9 Alliance Laborer##44433+ |q 26933/1
step
ding 36
step
goto Tirisfal Glades,83.4,69.8
.talk 11055
..turnin 26933
step
goto 83.3,69.2
.talk 11057
..turnin 26978
step
goto 83.3,69.0
.talk 10837
..accept 26936 |instant
..accept 26979
step
goto 83.2,68.5
.talk 10839
..accept 26952
step
goto Western Plaguelands,40.7,52.0
.talk 44466
..turnin 26979
..accept 26937
step
goto 38.1,55.3
.from Alliance Laborer##45047+
.' Slay and Convert 8 Alliance Laborers |q 26937/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26937
..accept 26938
step
goto 37.4,55.1
.' Use your Enthralled Val'kyr's Call to Arms ability on Forsaken Troopers
.' Mobilize 5 Forsaken Troopers |q 26938/1
step
goto 38.8,55.0
.kill Opengut Behemoth##44562 |q 26938/2
step
goto Western Plaguelands,40.7,52.0
.talk 44466
..turnin 26938
step
goto 48.5,54.9
.talk 44457
..accept 26956
step
goto 48.9,54.8
.talk 44456
..accept 26953
step
goto 49.3,55.0
.talk 44454
..turnin 26952
..accept 26999
step
goto 50.5,52.2
.talk 46011
.fpath The Menders' Stead
step
goto 47.4,52.9
.click Unhealthy-Looking Pumpkin##6326+
.from Thrashing Pumpkin##44487+
.' Remove 3 Unhealthy-Looking Pumpkins |q 26956/3
step
goto 46.8,54.1
.click Rotten Apple##9820+
.from Pome Wraith##44488+
.' Remove 4 Rotten Apples |q 26956/2
step
goto 45.8,53.4
.click Bad Corn##9819+
.from Corn Stalker##44489+
.' Remove 6 Bad Corn |q 26956/1
step
goto 46.0,48.7
.from Hulking Plaguebear##44482+
.get 4 Hulking Plaguebear Sample |q 26999/3
.from Diseased Wolf##1817+
.get 4 Diseased Wolf Sample |q 26999/4
step
goto 48.5,54.9
.talk 44457
..turnin 26956
step
goto 57.0,62.7
.from Plague Lurker##1824+
.get 4 Plague Lurker Sample |q 26999/1
.from Venom Mist Lurker##1822+
.get 4 Venom Mist Lurker Sample |q 26999/2
step
goto 50.3,59.6
.from Plague Lurker##1824+, Venom Mist Lurker##1822+ |tip You must do this with the troll Zen'Kiki next to you. If you lose him, return to the Menders' Stead and talk to him.
.' Kill 20 Wildlife with Zen'Kiki |q 26953/1
step
goto 49.3,55.0
.talk 44454
..turnin 26999
..accept 26935
step
goto 48.9,54.8
.talk 44456
..turnin 26953
..accept 26954
step
ding 37
step
goto 52.4,53.2 |n
.' The path up to A Different Approach starts here |goto 52.4,53.2,0.5 |noway |c
step
goto 53.9,53.7
.clicknpc Zen'Kiki##44863 |tip Keep clicking him to pull the Diseased Hawks down to you.
.kill 7 Diseased Hawk##44481+ |q 26954/1
step
goto 48.9,54.8
.talk 44456
..turnin 26954
step
goto 48.1,32.4
.talk 11616
..turnin 26935
..accept 27000
step
goto 48.4,31.9
.talk 44472
..accept 27013
step
goto 47.7,31.7
.clicknpc Hearthglen Mustang##44836
.' Ride the Hearthglen Mustang |invehicle |c |q 27000
step
goto 47.4,35.0
.' Use your Whinny ability on your hotbar near Northridge Spiders
.' Frighten 25 Northridge Spiders |q 27000/1
step
.' Click the red arrow on your hotbar to stop riding the Hearthglen Mustang |outvehicle |c |q 27000
step
goto 46.6,30.5
.kill 12 Rabid Fox##44551+ |q 27013/1
step
goto 48.1,32.4
.talk 11616
..turnin 27000
..accept 27001
step
goto 48.3,31.9
.talk 44472
..turnin 27013
..accept 27011
..accept 27012
step
goto 47.7,31.7
.clicknpc Hearthglen Mustang##44836
.' Ride the Hearthglen Mustang |invehicle |c |q 27001
step
goto 47.0,35.3
.' Use your Whinny ability on your hotbar near Northridge Spiders
.' Continuously scare the Northridge Spiders and try to make them run to [48.0,32.9]
.' The Hearthglen Recruits will kill the Northridge Spiders
.' Lure 10 Northridge Spiders to Lumber Mill |q 27001/1
step
.' Click the red arrow on your hotbar to stop riding the Hearthglen Mustang |outvehicle |c |q 27001
step
goto 47.6,39.0
.from Redpine Gnoll##44478+
.get 6 Redpine Club |q 27012/1
.from Redpine Shaman##44479+
.get 6 Redpine Stave |q 27012/2
.click Northridge Lumber##1248+
.get 10 Northridge Lumber |q 27011/1
.' You can find more Northridge Lumber around [46.6,45.4]
step
goto 48.1,32.4
.talk 11616
..turnin 27001
..accept 27002
step
goto 48.3,31.9
.talk 44472
..turnin 27011
..turnin 27012
step
goto 44.7,18.5
.talk 47875
.fpath Hearthglen
step
 goto 43.2,15.9
.talk 45157
..accept 27156
step
goto 43.0,16.3
.talk 45162
..' Tell them Lieutenant Myner asked you to challenge them to a duel
.' Challenge and Defeat 7 Hearthglen Trainees |q 27156/1
step
 goto 43.2,15.9
.talk 45157
..turnin 27156
..accept 27157
step
goto 42.6,15.0
.talk 44905
..accept 26957
step
goto 42.0,14.8
.talk 44441
..turnin 27002
step
goto 42.2,15.0
.talk 45147
..accept 27151
step
goto 45.8,12.1 |n
.' Enter the mine |goto 45.8,12.1,0.5 |noway |c
step
goto 45.7,9.4
.kill Shadril##45156 |q 27157/1
step
goto 45.8,12.1 |n
.' Leave the mine |goto 45.8,12.1,0.5 |noway |c
step
goto 43.2,15.9
.talk 45157
..turnin 27157
step
goto 53.2,23.3
.kill 10 Redpine Looter##45153+ |q 27151/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27151
..accept 27152
step
ding 38
step
goto 57.7,36.1
.kill Moldfang##45155 |q 27152/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27152
..accept 27153
step
goto 43.7,17.3
.talk 45150
..' Ask her if she's heard any interesting rumors lately
.' Speak with Bree Ironstock |q 27153/3
step
goto 42.1,18.2
.talk 45151
..' Ask him if he has any leads for you
.' Speak with High Cleric Alphus |q 27153/4
step
goto 44.4,13.5
.talk 45148
..' Ask him if he's noticed anything strange lately or any new customers in the blacksmith shop
.' Speak with Morris Vant |q 27153/1
step
goto 44.8,12.4
.talk 45149
.' Ask him if he's noticed anything strange lately or any new customers buying anything suspicious
.' Speak with Outfitter Mendelev |q 27153/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27153
..accept 27154
step
goto 45.8,18.4
.' Go to the top of the tower
.talk 45152
..' Ask him what he knows about the gnolls to the south
.from Magus Bisp##45152
.' "Speak with" Magus Bisp |q 27154/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27154
..accept 27155
step
goto 42.0,14.8
.talk 44441
..turnin 27155
step
goto 44.7,18.5
.talk 47875
.' Fly to The Menders' Stead, Western Plaguelands |goto 50.5,52.4,0.5 |noway |c
step
goto 50.6,52.6
.talk 44458
..turnin 26957
..accept 27017
step
goto 49.3,54.9
.talk 44454
..accept 27053
step
goto 62.7,58.9
.from Cauldron Lord Soulwrath##11078
.get Gahrron's Withering Cauldron Key |q 27053/1
step
goto 62.6,58.6
.click Scourge Cauldron##4271
..turnin 27053
..accept 27057
step
goto 64.9,59.3
.click Child's Painting##9848 |tip It's hanging above the fireplace in this house.
.get Faded Finger Painting |q 27017/2
step
goto 64.9,59.5
.click Prayer Book##8051 |tip It's laying on floor upstairs in this house.
.get Gahrron Prayer Book |q 27017/1
step
goto 50.6,52.6
.talk 44458
..turnin 27017
step
goto 49.3,55.0
.talk 44454
..turnin 27057
..accept 27054
step
ding 38
step
goto 49.3,53.1
.talk 45013
..accept 27083
step
|fly Andorhal
step
goto 47.0,63.8
.talk 44452
..turnin 27083
..accept 27084
..accept 27086
step
goto 46.9,63.5
.talk 44462
..accept 27085
step
goto 48.2,66.1
.' Use your Ebon Gargoyle Collar on Provincial Minutemen |use Ebon Gargoyle Collar##60815
.' Release 6 Ebon Gargoyles |q 27084/1
step
goto 47.0,63.8
.talk 44452
..turnin 27084
step
goto 43.8,67.9
.kill 3 Andorhal Force-Commander##44450+ |q 27086/1
step
goto 44.9,68.4
.kill 15 Andorhal Defender##44332+ |q 27085/1
step
goto 47.0,63.8
.talk 44452
..turnin 27086
step
goto 46.9,63.5
.talk 44462
..turnin 27085
step
ding 39
step
goto 47.0,63.8
.talk 44452
..accept 27087
step
goto 49.0,63.7
.talk 44466
..turnin 27087
step
goto 49.0,63.7
.talk 44451
..accept 27089
step
goto 48.4,66.4
.from Frightened Provincial Minuteman##45101+
.' Slay and Convert 5 Frightened Provincial Minutemen |q 27089/1
.' Mobilize 5 Forsaken Trooper |q 27089/2
step
goto 39.4,70.7
.' Go to this spot
.' Hunt Thassarian |q 27089/3
step
goto 39.4,70.5
.talk 45129
..turnin 27089
..accept 27090
step
goto 49.0,63.7
.talk 44451
..turnin 27090
..accept 27144
step
'Watch the cutscene
.' Witness the Reckoning |q 27144/1
step
goto 49.0,63.7
.talk 44451
..turnin 27144
step
|fly The Menders' Stead
step
goto 48.9,54.8
.talk 44456
..accept 26955
..accept 27683
step
goto 66.1,47.7
.from Instructor Malicia##44442
.get Cult Orders |q 27054/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27054
..accept 27055
step
goto 66.7,48.9
.click Cultist Cage##4154+
.' Free and Heal 4 Captive Plaguebears |q 26955/1
step
goto Western Plaguelands,65.0,38.7 |n
.' Enter the cave |goto 65.0,38.7,0.5 |noway |c
step
goto 64.6,35.1
.kill 2 Krastinovian Disciple##44445+ |q 27055/1
step
goto 63.2,37.5
.' Walk around inside this cave and do the following:
.kill 2 Flesh-Cobbled Brute##44484+ |q 27055/2
.kill 2 Flesh-Cobbled Ripper##44485+ |q 27055/3
.kill 4 Unholy Corpuscle##44486+ |q 27055/4
step
'Hearth to Andorhal |goto 48.3,63.8,0.5 |use Hearthstone##6948 |noway |c
step
|fly The Menders' Stead
step
goto 49.3,55.0
.talk 44454
..turnin 27055
step
goto 48.9,54.8
.talk 44456
..turnin 26955
step
goto 50.5,52.2
.talk 46011
.' Fly to Thondroril River, Eastern Plaguelands |goto Eastern Plaguelands,10.1,65.8,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Eastern Plaguelands (39-44)\\Eastern Plaguelands (39-44)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Badlands (44-47)\\Badlands (44-47)
startlevel 39.80
dynamic on
step
goto Eastern Plaguelands,9.0,66.5
.talk 45417
..turnin 27683
..accept 27367
..accept 27370
step
goto Eastern Plaguelands,4.1,36.0
.talk 45428
..turnin 27367
..accept 27368
step
goto 4.7,35.6 |n
.' Enter the tunnel |goto 4.7,35.6,0.5 |noway |c
step
goto 5.1,33.4
.from Crypt Stalker##8555+, Crypt Horror##8557+ |tip They are big insects inside this tunnel.
.get 8 Crypt Bile |q 27368/1
step
goto 4.7,35.6 |n
.' Leave the tunnel |goto 4.7,35.6,0.5 |noway |c
step
goto Eastern Plaguelands,4.1,36.0
.talk 45428
..turnin 27368
..accept 27369
step
goto 3.4,38.0
.click Banshee's Bell##9889+ |tip They are all along the river.
.get 10 Banshee's Bells |q 27369/1
.' More Banshee's Bells can be found along the Thondroril River up to [8.9,55.7]
step
goto 9.0,66.5
.talk 45417
..turnin 27369
step
goto 18.4,74.8
.talk 45429
..turnin 27370
..accept 27371
step
goto 18.6,76.9
.kill 5 Death's Step Miscreation##45444+ |q 27371/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27371
..accept 27372
step
goto 17.2,68.7
.from Plaguehound Runt##8596+ |tip They share spawn locations with the Carrion Grubs.  So, if you are having trouble find Plaguehound Runts, kill Carrion Grubs and more should spawn.
.get 10 Plaguehound Blood |q 27372/1
.' More Plaguehound Runts can be found around [12.4,70.0]
step
ding 40
step
goto 9.0,66.5
.talk 45417
..turnin 27372
..accept 27373
step
goto 8.8,66.6
.clicknpc Fiona's Caravan##45400
..' Choose 1 of the 3 buffs you can choose from |tip All of the buffs only work while you're in Eastern Plaguelands.  Fiona's Lucky Charm gives you a chance to loot extra gold or items from enemies.  Gidwin's Weapon Oil gives you a chance to do extra Holy damage on melee and ranged attacks.  Tarenar's Talisman gives you a chance to do extra Holy damage on successful spell attacks.
.' Skip to the next step in the guide |confirm
step
goto 8.8,66.6
.clicknpc Fiona's Caravan##45400
..' Choose to go to the next destination
.' Ride Fiona's Caravan |q 27373/1
step
goto 34.9,67.9
.talk 44232
.fpath Crown Guard Tower
step
goto 35.0,68.1
.talk 45500
..accept 27432
step
goto 34.9,69.1
.talk 45417
..turnin 27373
step
goto 35.3,68.8
.talk 45429
..accept 27381
step
goto 35.6,68.9
.talk 11063
..accept 27383
step
goto 35.9,69.3
.' Go to the top of the tower
.talk 45451
..' Ask him if he's interested in joining your caravan
.' Find a traveling companion |q 27381/1
step
goto 35.9,69.3
.talk 45451
..accept 27382
step
goto 35.3,68.9
.talk 45429
..turnin 27381
step
goto 32.4,83.7
.talk 10926
..turnin 27383
..accept 27384
..accept 27392
step
goto 35.5,83.0
.' You can find the doll parts in all of the buildings
.click Pamela's Doll's Right Side##4233
.collect Pamela's Doll's Right Side##12888 |q 27384
.click Pamela's Doll's Left Side##4232
.collect Pamela's Doll's Left Side##12887 |q 27384
.click Pamela's Doll's Head##4231
.collect Pamela's Doll's Head##12886 |q 27384
step
'Use Pamela's Doll's Head |use Pamela's Doll's Head##12886
.get Pamela's Doll |q 27384/1
step
goto 40.3,83.8
.from The Lone Hunter##45450
.get Joseph's Hunting Blade |q 27392/1
step
goto 32.4,83.7
.talk 10926
..turnin 27384
..turnin 27392
..accept 27385
step
goto 35.6,68.9
.talk 11063
..turnin 27385
..accept 27386
step
goto 35.3,68.0
.talk 10667
..turnin 27386
..accept 27387
..accept 27388
..accept 27389
step
goto 35.0,68.1
.talk 45500
..accept 27544
step
goto 35.6,68.9
.talk 11063
..' Ask him if he has the extended Annals of Darrowshire
.get Extended Annals of Darrowshire |q 27388/1
step
goto 39.8,72.4
.click Shattered Sword of Marduk##4175
.get Shattered Sword of Marduk |q 27387/2
step
goto 40.0,73.7
.kill 13 Plaguebat##8600+ |q 27382/1
.' More Plaguebats can be found around [35.7,75.0]
step
goto 35.9,69.2
.' Go to the top of the tower
.talk 45451
..turnin 27382
step
goto 24.2,78.5 |n
.' Enter the crypt |goto 24.2,78.5,0.5 |noway |c
step
goto 23.8,77.9
.' Go to the bottom of the crypt
.from Zaeldarr the Outcast##12250
.get Zaeldarr's Head |q 27432/1
step
goto 22.1,68.2
.click Redpath's Shield##4172
.get Redpath's Shield |q 27388/3
step
goto 22.3,68.3
.' Go upstairs
.click Davil's Libram##430 |tip It's laying in the fireplace in the upstairs room of this house.
.get Davil's Libram |q 27388/2
step
goto 35.0,68.2
.talk 45500
..turnin 27432
step
goto 35.2,68.1
.talk 10667
..turnin 27388
step
goto 37.3,60.2
.click Horgus' Skull##4173
.get Skull of Horgus |q 27387/1
step
goto 30.2,56.9
.talk 16135
..turnin 27544
..accept 27420
..accept 27421
step
goto 33.7,44.4
.' Go inside the necropolis
.' Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
.' Plant a Seed in the Western Necropolis |q 27421/2
step
goto 37.8,42.5
.' Go inside the necropolis
.' Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
.' Plant a Seed in the Northeastern Necropolis |q 27421/3
step
goto 37.6,48.3
.' Go inside the necropolis
.' Use Rayne's Seeds while standing on the platform above the green liquid |use Rayne's Seeds##61036
.' Plant a Seed in the Southeastern Necropolis |q 27421/1
step
goto 36.4,46.0
.from Scourge Champion##8529+
.collect Fetid Skull##13157 |n
.' Use your Mystic Crystal when you have a Fetid Skull |use Mystic Crystal##13156
.get 5 Resonating Skull |q 27389/1
.from Shadowmage##8550+, Dark Adept##8546+
.collect Plague Disseminator Control Rune##61037 |n
.' Use your Overcharged Mote when you have a Plague Disseminator Control Rune |use Overcharged Mote##61038
.' Destroy 3 Plague Disseminators |q 27420/1
step
goto 30.2,56.9
.talk 16135
..turnin 27420
..turnin 27421
step
goto 35.3,68.1
.talk 10667
..turnin 27387
..turnin 27389
..accept 27390
step
goto 35.1,84.0
.' Use your Relic Bundle |use Relic Bundle##15209
.' Fight in the battle and follow the instructions that appear on your screen
.from Redpath the Corrupted##10938
.' Joseph Redpath will appear after the battle at [35.1,84.0]
.talk 10936
.' Accept Redpath's Forgiveness |q 27390/1
step
goto 32.4,83.7
.talk 10926
..turnin 27390
..accept 27391
step
ding 41
step
goto 32.2,83.4
.click Joseph's Chest##318 |tip It's behind the building where Pamela Redpath is at.
..turnin 27391
step
goto 34.9,69.2
.talk 45417
..accept 27448
step
goto 35.0,69.3
.clicknpc Fiona's Caravan##45400
..' Choose to go to the next destination
.' Ride in Fiona's Caravan |q 27448/1
step
goto 52.8,53.6
.talk 44231
.fpath Light's Shield Tower
step
goto 52.9,53.1
.talk 45417
..turnin 27448
..accept 27455
step
goto 53.0,53.1
.clicknpc Fiona's Caravan##45400
.' Complete the Argus' Journal quest |tip This will give you a 2% experience bonus while in Eastern Plaguelands, so will allow you to level faster.
.' Skip to the next step in the guide |confirm
step
goto 53.2,54.6
.talk 11035
..accept 27451
..accept 27452
step
goto 53.8,54.0
.' Go to the top of the tower
.talk 45575
..accept 27450
step
goto 52.8,51.4
.talk 45574
..accept 27449
.kill 3 Mossflayer Rogue##45579+ |q 27449/1
step
goto 52.8,51.4
.talk 45574
..turnin 27449
step
goto 50.2,61.3
.clicknpc Plague Puffer##45650+ |tip They look like small blowfish swimming underwater around this area.
.get 8 Plague Puffer |q 27450/1
.clicknpc Infectis Incher##45655+ |tip They look like small brown snails on the ground underwater around this area.
.get 8 Infectis Incher |q 27450/2
.clicknpc Infectis Scuttler##45657+ |tip They look like small brown crabs walking around underwater around this area.
.get 8 Infectis Scuttler |q 27450/3
step
goto 53.7,62.3
.from Unseen Servant##8538+, Stitched Horror##8543+, Hate Shrieker##8541+, Dark Caster##8526+, Scourge Warder##8525+, Gibbering Ghoul##8531+
.collect 7 Living Rot##15447 |n |tip These only last 10 minutes, so keep an eye on the timer and try to get them as fast as you can.
.' Use Mortar and Pestle once you have 7 Living Rot |use Mortar and Pestle##15454
.get Coagulated Rot |q 27451/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27451
step
goto 55.7,61.0
.from Dark Summoner##8551+, Vile Tutor##8548+
.get Death Cultist Headwear |q 27452/1
.get Death Cultist Robes |q 27452/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27452
..accept 27453
step
goto 57.6,72.6
.' Use Betina's Flasks on Plague Ravagers and Blighted Surges underwater |use Betina's Flasks##61284
.get 8 Active Liquid Plague Agent |q 27453/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27453
..accept 27454
step
goto 61.7,75.5
.' Use your Death Cultist Disguise |use Death Cultist Disguise##61283
.' Wear your Death Cultist Disguise |havebuff INTERFACE\ICONS\inv_helmet_152 |q 27454
step
goto 62.4,76.4
.click Mereldar Plague Cauldron##4331
..' Choose to throw in an entire flask
.' Disturb the Mereldar Plague Cauldron |q 27454/1
step
goto 53.2,54.6
.talk 11035
..turnin 27454
step
goto 53.8,54.0
.' Go to the top of the tower
.talk 45575
..turnin 27450
step
goto 74.4,53.3
.talk 45431
..turnin 27455
..accept 27463
step
goto 73.8,51.9
.talk 16134
..accept 27456
step
goto 74.9,53.5
.talk 11033
..accept 27458
step
goto 75.6,52.4
.talk 16256
.home Light's Hope Chapel
step
goto 75.6,52.0
.talk 11036
..accept 27459
step
goto 75.9,52.0
.talk 11034
..turnin 27463
..accept 27464
step
goto 77.2,50.8 |n
.' Enter the crypt |goto 77.2,50.8,0.5 |noway |c
step
goto 77.2,51.4
.' Go to the bottom of the crypt
.' Use your Argent Scroll |use Argent Scroll##61309
.from Argent Warden##45698+
.from Lord Raymond George##45707
.' Complete the Trial of the Crypt |q 27464/1
step
goto 75.9,52.0
.talk 11034
..turnin 27464
..accept 27465
step
goto 75.7,52.0
.talk 16365
..accept 27467
step
goto 71.9,45.4
.from Stephen Browman##46167
.get Browman's Wrappings |q 27458/1
step
goto 72.1,41.6 |n
.' Run up this path |goto 72.1,41.6,0.5 |noway |c
step
goto 77.4,37.3
' |from Diseased Flayer##8532+, Dread Weaver##8528+, Death Singer##8542+
.kill 16 Noxious Glade Scourge |q 27465/1
' |from Skullmage##45691+, Noxious Assassin##45692+
.kill 8 Noxious Glade Cultists |q 27465/2
.clicknpc Slain Scourge Trooper##45695+
.' Bury 10 Blades |q 27467/1
step
'Hearth to Light's Hope Chapel |goto 75.6,52.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 75.7,52.0
.talk 16365
..turnin 27467
step
goto 75.9,52.0
.talk 11034
..turnin 27465
step
goto 74.9,53.5
.talk 11033
..turnin 27458
step
ding 42
step
goto 71.1,60.6
.from Carrion Grub##8603+
.get 15 Slab of Carrion Worm Meat |q 27456/1
.' More Carrion Grubs can be found [69.7,67.2]
step
goto 72.6,74.8
.talk 16116
..turnin 27459
..accept 27460
step
goto 73.6,74.8
' |from Scarlet Enchanter##9452+, Scarlet Warder##9447+, Scarlet Cleric##9449+
.kill 10 Tyr's Hand Scarlet Crusader |q 27460/1
step
goto 77.6,79.4
.click Crusader's Flare##6543
..turnin 27460
..accept 27461
..accept 27462
step
goto 75.3,76.2
.talk 16112
..turnin 27462
..accept 27614
..accept 27615
..accept 27616
..accept 27619
step
goto 74.8,76.7
.click Battered Chest##10
.get Crimson Boar |q 27614/1
step
goto 74.2,78.3
.click Battered Chest##10
.get Lihanna's Strand |q 27614/2
step
goto 75.1,79.0
.click Battered Chest##10
.get Shroud of Uther |q 27614/3
step
goto 75.9,77.5
.click Battered Chest##10
.get Gavinrad's Sigil |q 27614/4
step
goto 75.0,78.3
.' Go into the basement of the fortress
.kill Mataus the Wrathcaster##46093 |q 27615/1
step
goto 74.9,78.3
.' Go upstairs into the big main room in the fortress
.kill Scarlet Commander Marjhan##46092 |q 27619/1
step
goto 74.5,77.5
.' Go down the hall and up more stairs
.kill Huntsman Leopold##46094 |q 27616/1
step
goto 75.3,76.2
.talk 16112
..turnin 27614
..turnin 27615
..turnin 27616
..turnin 27619
..accept 27618
step
goto 76.1,75.3
.talk 16116
..turnin 27618
step
goto 76.7,73.1
.talk 16115
..turnin 27461
..accept 27612
..accept 27613
step
goto 77.8,71.0
.' Click Argent Portal |tip It looks like a swirling portal on this square wooden table upstairs in a side room inside the building.  Follow the stairs up in the Library Wing, not the big spiral stairs in the middle of the building.
.' Open the Portal within the Library Wing |q 27612/2
step
goto 78.6,72.9
.' Click the Argent Portal |tip It looks like a swirling portal on this round table in a side room inside the building.
.' Open the Portal within the Hall of Arms |q 27612/1
step
goto 77.6,72.7
.' Follow the big spiral stairs up to the top of the bell tower in the building
.kill Rohan the Assassin##46095 |q 27613/1
step
goto 76.7,73.1
.talk 16115
..turnin 27612
..turnin 27613
..accept 27617
step
goto 76.1,75.3
.talk 16116
..turnin 27617
..accept 27620
step
goto 82.3,79.4
.kill Crusader Lord Valdelmar##46096 |q 27620/1
step
'Hearth to Light's Hope Chapel |goto 75.6,52.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 75.6,52.0
.talk 11036
..turnin 27620
step
goto 75.8,52.4
.talk 45729
..accept 27466
step
goto 73.8,51.9
.talk 16134
..turnin 27456
..accept 27457
step
|fly Eastwall Tower
step
goto 60.6,43.3
.talk 45574
..accept 27481
step
goto 61.6,44.5
.talk 45736
.' He walks around the front side of the Tower, some searching may be required
..accept 27479
step
goto 61.6,43.1
.talk 45735
..accept 27477
step
goto 61.5,42.7
.talk 45417
..turnin 27466
..turnin 27457
step
goto 61.6,43.2
.talk 45729
..accept 27487
step
goto 61.8,35.7
.kill Ix'lar the Underlord##45744 |q 27487/1 |tip He walks around this area, so you may need to search for him.
' |from Scourge Guard##8527+, Gangled Golem##8544+, Nerubian Sycophant##45743+
.kill 10 Ix'lar's minion |q 27487/2
step
ding 43
step
goto 56.7,27.9
.kill Borelgore##11896 |q 27477/1 |tip He walks along in this big trench.
step
goto 58.9,20.4 |n
.' Run up this path |goto 58.9,20.4,0.5 |noway |c
step
goto 66.8,9.9
.' Don't walk over the dirt piles on the ground, they spawn more enemies
.from Warlord Thresh'jin##10822 |tip Don't worry that he's elite, you can kill him easily
.get Body of Warlord Thresh'jin |q 27481/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27481
..accept 27482
step
goto 67.4,9.0
.' Use the Body of Warlord Thresh'jin next to the Bonfire at the top of the temple |use Body of Warlord Thresh'jin##61316
.' Burn Warlord Thresh'jin's Body |q 27482/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27482
step
goto 64.5,13.7
.' Don't walk over the dirt piles on the ground, they spawn more enemies
.from Mossflayer Cannibal##8562+, Mossflayer Scout##8560+, Mossflayer Shadowhunter##8561+
.get 30 Mossflayer Eye |q 27479/1
step
'Hearth to Light's Hope Chapel |goto 75.6,52.4,0.5 |use Hearthstone##6948 |noway |c
step
|fly Eastwall Tower
step
goto 61.3,44.5
.talk 45736
.' He walks around the front side of the Tower, some searching may be required
..turnin 27479
step
goto 61.6,43.1
.talk 45735
..turnin 27477
step
goto 61.5,42.7
.talk 45417
..turnin 27487
step
goto 61.6,43.2
.talk 45729
..accept 27488
step
goto 65.5,24.4
.click Open Prayer Book##254
.get Gidwin's Prayer Book |q 27488/1
step
goto 61.6,43.2
.talk 45729
..turnin 27488
..accept 27489
step
goto 61.6,42.5
.clicknpc Fiona's Caravan##45400
..' Choose to go to the next destination
.' Ride Fiona's Caravan to Northpass Tower |q 27489/1
step
goto 51.4,21.3
.talk 28621
.fpath Northpass Tower
step
goto 50.4,20.1
.talk 45729
..turnin 27489
..accept 27522
step
goto 50.0,19.5
.talk 45826
..accept 27521
step
goto 54.6,19.1
.from Scourge Siege Engineer##17878+
.' Beat 6 Scourge Siege Engineers |q 27522/1
.' Discover Gidwin's Location |q 27522/2
.' Discover Gidwin's Captor |q 27522/3
step
goto 47.0,17.4
' |from Wretched Pathstrider##8565+, Wretched Woodsman##8563+, Wretched Ranger##8564+
.kill 9 Quel'lithien Wretched |q 27521/1
step
goto 48.0,23.0
.talk 45816
..accept 27523
step
goto 46.4,33.8
.' Use The Corpseburner's Flare in this spot |use The Corpseburner's Flare##61334
.from Duskwing##11897
.get Patch of Duskwing's Fur |q 27523/1
step
goto 48.0,23.0
.talk 45816
..turnin 27523
step
goto 50.5,20.2
.talk 45417
..turnin 27522
..accept 27524
step
goto 50.5,20.2
.talk 45451
..accept 27532
step
goto 50.0,19.5
.talk 45826
..turnin 27521
step
goto 27.6,21.2
.talk 45729
..turnin 27524
..accept 27525
step
goto 27.6,20.9
.talk 45831
..accept 27528
..accept 27529
..accept 27539
step
goto 29.4,19.7
.kill Karthis Darkrune##45868 |q 27525/2
.collect The Baroness' Missive##61378 |n
.' Click The Baroness' Missive in your bags |use The Baroness' Missive##61378
..accept 27551
step
goto 27.4,21.3
.talk 45729
..turnin 27551
..accept 27526
step
goto 29.1,26.2
.' Enter this building and watch the cutscene
.' Find Gidwin Goldbraids |q 27526/1
step
goto 28.4,25.9
.talk 45730
..turnin 27526
..accept 27527
step
goto 25.4,19.8
.kill Omasum Blighthoof##45867 |q 27525/1
step
goto 31.4,20.3
.' All around Plaguewood, do the following:
.from Overstuffed Golem##45851+
.' Use your Crusader's Torch on their corpses |use Crusader's Torch##61369
.' Burn 8 Overstuffed Golem Corpses |q 27528/1
.from Cursed Mage##8524+, Scourge Soldier##8523+
.get 16 Stinking Skull |q 27539/1
.from Cannibal Ghoul##8530+
.talk 11064 |tip They spawn after you kill Cannibal Ghouls.
.' Free 8 Darrowshire Spirits |q 27529/1
step
ding 44
step
goto 28.5,25.9
.talk 45729
..turnin 27525
step
goto 27.6,20.9
.talk 45831
..turnin 27528
..turnin 27529
..turnin 27539
..accept 27530
step
goto 28.3,32.3
.' Use your Argent Lightwell Charm next to the big brown monster corpses |use Argent Lightwell Charm##61375 |tip You will have to put 3 around each corpse, and you can't put them too close together.
.' Destroy 3 Corpsebeasts |q 27530/1
step
goto 27.6,20.9
.talk 45831
..turnin 27530
step
goto 18.5,27.4
.talk 44233
.fpath Plaguewood Tower
step
goto 17.7,28.0
.talk 45828
..turnin 27532
..accept 27531
..accept 27535
step
goto 25.1,34.5
.click Flesh Giant Foot##8077
.get Flesh Giant Foot Scrapings |q 27531/3
step
goto 23.5,22.4
.click Rotberry Bush#28+
.get 20 Rotberry |q 27531/1
.click Disembodied Arm##8373+ |tip They are really hard to see, so just look for the sparkles floating around them.
.get 5 Disembodied Arm |q 27531/2
step
goto 17.7,28.0
.talk 45828
..turnin 27531
step
goto 11.3,28.6
.talk 12384
..turnin 27535
..accept 27533
..accept 27534
step
goto 14.2,26.3
.click Augustus' Receipt Book##4872 |tip It's laying on the floor in the very back room upstairs in this building.
.get Augustus' Receipt Book |q 27534/1
step
goto 14.4,28.5
.kill 9 Plagued Swine##16117+ |q 27533/1
step
goto 11.3,28.6
.talk 12384
..turnin 27533
..turnin 27534
step
'Use Gidwin's Hearthstone |use Gidwin's Hearthstone##61379
.' Teleport to Light's Hope Chapel |goto 75.6,52.4,0.5 |noway |c
step
goto 73.7,52.1
.talk 45417
..turnin 27527
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Badlands (44-47)\\Badlands (44-47)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Searing Gorge (47-49)\\Searing Gorge (47-49)
startlevel 44.90
dynamic on
step
goto Eastern Plaguelands,73.7,53.1
.talk 48704
..accept 27762
step
goto 73.7,53.1
.clicknpc The Uncrashable##48708
.' You will fly to the Badlands |goto Badlands,91.9,38.5,0.5 |noway |c
step
goto Badlands,92.6,39.0
.talk 46650
..turnin 27762
..accept 27763
step
goto 88.0,32.5
.' Walk into the teleporter |tip it looks like a machine with a blue circle at the bottom of it.
.' Teleport up the mountain |goto 82.8,33.9,0.5 |noway |c
step
goto 65.1,38.4
.talk 46652
..turnin 27763
..accept 27774
step
goto 64.3,38.1
.talk 46653
..accept 27775
step
goto 64.3,35.0
.talk 44407
.fpath Fuselight
step
goto 66.1,28.1
.from Dustbelcher Instructor##46693+ |tip They walk around this area, so you may need to search for one.
.get Instructor's Rod |q 27775/1
' |from Dustbelcher Instructor##46693+, Dustbelcher Trainee##46695+
.kill 9 Dustbelcher |q 27774/1
.' You can find more Dustbelcher ogres around [58.2,26.5]
step
goto 64.3,38.1
.talk 46653
..turnin 27775
..accept 27776
step
goto 65.1,38.4
.talk 46652
..turnin 27774
..accept 27764
step
goto 64.6,37.1
.' Use your Billy Goat Blaster on Billy Goats |use Billy Goat Blaster##62397 |tip They are rams all around the outskirts of this town.
.' Nudge 12 Billy Goats |q 27776/1
step
goto 64.3,38.1
.talk 46653
..turnin 27776
step
goto 66.4,55.5
.talk 46654
..turnin 27764
..accept 27765
..accept 27766
step
ding 45
step
goto 65.6,51.5
.from Scalding Whelp##2725+
.get 10 Scalding Whelp Corpse |q 27766/1
.click Wild Black Dragon Egg##5972+
.get 6 Wild Black Dragon Egg |q 27765/1
step
goto 66.4,55.5
.talk 46654
..turnin 27765
..turnin 27766
..accept 27770
.' Witness the final piece of Rhea's studies |q 27770/1
step
goto 66.4,55.5
.talk 46654
..turnin 27770
..accept 27771
step
goto 65.9,56.8
.from Nyxondra##46658 |tip She will slump down in exhaustion before you kill her, allowing you to get her eggs.
.click Nyxondra's Egg##9456+
.get 3 Nyxondra's Egg |q 27771/1
step
goto 66.4,55.5
.talk 46654
..turnin 27771
..accept 27769
.' Discover Rhea's true identity |q 27769/1
step
goto 66.5,55.5
.talk 46655
..turnin 27769
..accept 27772
step
goto 52.4,50.8
.talk 44408
.fpath Bloodwatcher Point
step
goto 52.1,51.6
.talk 46758
..accept 27878
step
goto 52.3,51.7
.talk 46759
..accept 27877
step
goto 47.0,56.5
.talk 46664
..turnin 27772
..accept 27789
step
goto 49.3,55.2
.clicknpc Blam Turret##46707
.' Use the abilities on your hotbar to shoot at the troggs that run at you from all directions
.' Survive the first wave |q 27789/1
.' Survive the second wave |q 27789/2
.' Survive the third wave |q 27789/3
.' Survive the final wave |q 27789/4
step
goto 47.0,56.5
.talk 46664
..turnin 27789
..accept 27881
step
goto 52.1,51.2
.talk 46757
..turnin 27881
..accept 27882
step
goto 52.3,40.0
.from Explorers' League Excavator##46773+
.get Broken Chalice |q 27882/1
.get Dusty Vase |q 27882/2
.get Earthen Hieroglyph |q 27882/3
.get Trogg Tool |q 27882/4
step
goto 40.6,26.1 |n
.' Enter Angor Fortress |goto 40.6,26.1,0.5 |noway |c
step
goto 40.1,25.1
.' Go into the basement of Angor Fortress
.click Angor's Coffer##10
.get Engraved Tablets of Golganneth |q 27878/1
step
goto 41.1,26.8
.from Shadowforge Tunneler##2739+, Shadowforge Darkweaver##2740+
.get 15 Dark Iron Head |q 27877/1
step
goto 52.1,51.2
.talk 46757
..turnin 27882
..accept 27883
..accept 27884
step
goto 52.1,51.6
.talk 46758
..turnin 27878
step
goto 52.2,51.7
.talk 46759
..turnin 27877
step
goto 50.4,48.5 |n
.' Enter the Tomb of the Watchers |goto 50.4,48.5,0.5 |noway |c
step
goto 48.0,50.9
.click Marble Slab##10060
..turnin 27884
..accept 27886
step
goto 48.6,51.0
.clicknpc Sentinel's Pawn##46398 |tip Click it 2 times.
.' Skip to the next step in the guide |confirm
step
goto 48.0,51.3
.clicknpc Sentinel's Pawn##46398 |tip Click it 1 time.
.' Skip to the next step in the guide
step
goto 49.0,51.7
.clicknpc Sentinel's Pawn##46398 |tip Click it 2 times.
.' Skip to the next step in the guide
step
goto 48.4,52.3
.clicknpc Sentinel's Pawn##46398 |tip Click it 1 time.
.' Skip to the next step in the guide
step
goto 48.8,52.8
.clicknpc Sentinel's Pawn##46398 |tip Click it 2 times.
.' Skip to the next step in the guide
step
goto 48.0,53.1
.clicknpc Sentinel's Pawn##46398 |tip Click it 2 times.
.' Complete the Sentinel's Game |q 27886/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27886
step
goto 50.3,54.3
.' Follow the path around
.click Stone Slab##10061
..turnin 27883
..accept 27885
step
goto 50.3,54.3
.clicknpc Warden's Pawn##46344+ |tip Click the pawns directly across from each other to make all of the pawns face inward, instead of outward.
.' Complete the Warden's Game |q 27885/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27885
..accept 27887
step
goto 50.3,52.6
.talk 46768 |tip It's a huge green stone golem.
..' <Place the pawn in the indentation.>
.from The Warden##46768
.' Thoroughly investigate The Warden |q 27887/1
step
goto 50.3,51.7
.talk 46769 |tip It's a red green stone golem.
..' <Place the pawn in the indentation.>
.from The Sentinel##46769
.' Thoroughly investigate The Sentinel |q 27887/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27887
..accept 27913
step
goto 50.3,53.3
.click Trove of the Watchers##1387
..turnin 27913
..accept 27888
step
ding 46
step
goto 50.4,48.4 |n
.' Leave the Tomb of the Watchers |goto 50.4,48.4,0.5 |noway |c
step
goto 47.0,56.6
.talk 46664
..turnin 27888
..accept 27889
step
goto 26.2,62.3
.talk 2785
..accept 27713
step
goto 27.6,60.8
.' Use your Theldurin's Fist ability on your hotbar on Dang-Blasted Rock Elementals
.kill 5 Dang-Blasted Rock Elemental##46467+ |q 27713/1
step
goto 41.9,43.6
.' Use your Theldurin's Fist ability on the Gol'Durned Rock Heaps to get past them
.' Punch Deathwing in the Face |q 27713/2
step
goto 26.2,62.3
.talk 2785
..turnin 27713
step
goto 26.3,62.5
.talk 2920
..accept 27714
step
'Use your Shrink the World ability on your hotbar 5 times
.' Grow large enough to reach the clouds |q 27714/1
step
goto 29.5,57.9
.' Use your Search Cloud ability on your hotbar on the Clouds |tip They look like big gray clouds floating in the air all around this area, even on the sides of this big trench.
.' Search 5 Clouds |q 27714/2
step
'Directly above you:
.
Click The Sun |tip It's a big orange orb that spawns floating directly above you.
.' Find Deathwing |q 27714/3
step
goto 26.3,62.5
.talk 2920
..turnin 27714
step
goto 26.2,62.5
.talk 4618
..accept 27715
step
goto 26.3,62.4
.talk 47124
..' Tell her to hop in, baby
.' Choose an admirer to save |q 27715/1
step
goto 42.2,43.6
.' Avoid the falling rocks as you ride
.' Ride to the end of the canyon |q 27715/2
step
goto 39.9,39.2
.' Fly to the top of this pillar
.' Find Deathwing |q 27715/3
.' His ridiculous story gets rudely interrupted, haha
.' "Beat" Deathwing in a knife fight |q 27715/4
step
goto 26.2,62.5
.talk 4618
..turnin 27715
step
goto 19.1,39.9 |n
.' Follow the path up |goto 19.1,39.9 |noway |c
step
goto 18.5,41.5
.talk 46660
..accept 27879
..accept 28512
step
goto 18.1,42.5
.talk 46654
..turnin 27889
..accept 27890
step
goto 18.3,42.6
.talk 9356
.home New Kargath
step
goto 18.9,43.0
.talk 47011
..turnin 27890
..accept 27891
step
'Next to you:
.talk 47024
..accept 27892
step
'Next to you:
.talk 47022
..accept 27893
step
goto 17.7,43.9
.talk 1068
..accept 27880
step
goto 17.6,45.6
.' Use Amakkar's Kidney Shot ability on your pet bar on an enemy
.' Use Amakkar's Kidney Shot |q 27891/1
.' Use Jurrix's Fiery Blast ability on your pet bar on an enemy
.' Use Jurrix's Fiery Blast |q 27892/1
.' Use Gargal's Mighty Shout ability on your pet bar on an enemy
.' Use Gargal's Mighty Shout |q 27893/2
step
goto 17.6,45.6
.' Use Amakkar's Pocket Potion ability on your pet bar
.' Use Amakkar's Pocket Potion |q 27891/2
.' Use Jurrix's Time Warp ability on your pet bar
.' Use Jurrix's Time Warp |q 27892/2
.' Use Gargal's Shield Wall ability on your pet bar
.' Use Gargal's Shield Wall |q 27893/1
step
'Next to you:
.talk 47021
..turnin 27891
step
'Next to you:
.talk 47024
..turnin 27892
step
'Next to you:
.talk 47022
..turnin 27893
..accept 27894
step
goto 26.1,45.6
.' Use the 3 orcs abilities on your pet bar to fight enemies around this area
.kill Kalaran the Annihilator##46859 |q 27894/1 |tip He flies around in the air around this area.
.kill 4 Darkflight Soldier##46915+ |q 27894/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27894
..accept 27895
step
goto 16.8,49.2
.' Use the 3 orcs abilities on your pet bar to fight
.kill Moldarr##46938 |q 27895/2
step
goto 15.5,43.3
.' Go to the top of the tower
.' Use the 3 orcs abilities on your pet bar to fight
.kill General Jirakka##46860 |q 27895/1
step
goto 13.7,43.0
.' Use the 3 orcs abilities on your pet bar to fight
' |from Darkflight Shadowspeaker##46918+, Darkflight Flameblade##46917+
.kill 6 Darkflight dragonspawn |q 27895/3
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27895
..accept 27896
step
goto 10.7,39.5
.' Use the 3 orcs abilities on your pet bar to fight
.kill Nyxondra##46861 |q 27896/1 |tip She's flying in a circle in the sky around this area.  Clear out a big area by killing Nyxondra's Hatchlings before you try to fight Nyxondra because she fears you while you fight her.
.kill 12 Nyxondra's Broodling##46916+ |q 27896/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27896
..accept 27897
step
goto 15.3,36.3 |n
.' The path up to Rhea starts here |goto 15.3,36.3,0.5 |noway |c
step
goto 16.0,33.4
.talk 46654
..turnin 27897
..accept 27898
step
'Watch the cutscene
.' Wait for Rhea to retrieve the egg |q 27898/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27898
..accept 27930
step
goto 18.9,30.3
.click Rhea's Final Note##6817
..turnin 27930
step
goto 18.1,30.5
.talk 46664
..accept 27859 |instant
step
'Hearth to Kargath |goto 18.3,42.6,0.5 |use Hearthstone##6948 |noway |c
step
goto 11.9,71.5 |n
.' Enter the cave |goto 11.9,71.5,0.5 |noway |c
step
goto 12.6,73.4
.click Dustbelcher Meat##10075+
.get 6 Dustbelcher Meat |q 27879/1
.click Dustbelcher Chest##9855+
.get 10 Dustbelcher Silk |q 27879/2
step
ding 47
step
goto 11.9,71.5 |n
.' Leave the cave |goto 11.9,71.5,0.5 |noway |c
step
goto 13.2,66.4
' |from Dustbelcher Mauler##2717+, Dustbelcher Shaman##2718+
.kill 12 Dustbelcher combatant |q 27880/1
step
goto 19.1,39.9 |n
.' Follow the path up |goto 19.1,39.9,0.5 |noway |c
step
goto 18.5,41.5
.talk 46660
..turnin 27879
step
goto 17.7,44.0
.talk 1068
..turnin 27880
step
goto 9.8,51.3 |n
.' The path over to Searing Gorge starts here |goto 9.8,51.3,0.5 |noway |c
step
'Go west to Searing Gorge |goto Searing Gorge |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Searing Gorge (47-49)\\Searing Gorge (47-49)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Burning Steppes (49-52)\\Burning Steppes (49-52)
startlevel 47.30
dynamic on
step
goto Searing Gorge,68.9,53.3
.talk 47269
..accept 27956
step
goto 68.6,53.4
.talk 47266
..turnin 28512
..accept 27963
step
goto 68.5,53.3
.talk 47267
..accept 27960
step
goto 62.2,61.3
.from Gravius Grimesilt##47270 |tip He walks around this area, so you may have to search for him.
.get Dark Iron Memo |q 27963/1
' |from Dark Iron Geologist##5839+, Dark Iron Watchman##8637+
.kill 10 Dark Iron Geologist or Watchman |q 27960/1
.from Tempered War Golem##5853+
.get 15 Tempered Flywheel |q 27956/1
step
goto 68.5,53.3
.talk 47267
..turnin 27960
..accept 27961
..accept 27962
step
goto 68.6,53.4
.talk 47266
..turnin 27963
..accept 27964
step
goto 68.9,53.3
.talk 47269
..turnin 27956
..accept 27957 |instant
step
goto 68.7,53.3
.talk 47268
..accept 27958
step
goto 58.1,62.4
.from Glassweb Spider##5856
.' Lunk will appear next to you
.talk 47280
..accept 27959
step
goto 58.1,62.4
.from Glassweb Spider##5856+
.' Let Lunk ride 7 spiders |q 27959/1
.clicknpc Lunk##47269
.get 14 Glassweb Venom |q 27958/1
.clicknpc Ash Chicken##47278+
.get 8 Ash Chicken |q 27961/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27959
step
goto 65.1,75.9 |n
.' The path up to Margol the Rager starts here |goto 65.1,75.9,0.5 |noway |c
step
goto 71.2,73.5
.from Margol the Rager##5833 |tip He's a blue dinosaur that walks on the path around this area.
.get Margol's Gigantic Horn |q 27962/1
step
goto 68.5,53.3
.talk 47267
..turnin 27961
..turnin 27962
step
goto 68.7,53.3
.talk 47268
..turnin 27958
step
goto 63.4,38.5 |n
.' Follow the path down |goto 63.4,38.5,0.5 |noway |c
step
goto 54.2,44.4
.from Dark Iron Footman##47275+, Dark Iron Excavator##47276+
.' Eventually, Dig-Boss Dinwhisker will spawn |tip You will see him yell in your chat window, asking what in hell's name is going on out here.  He spawns in the location where this step's arrow points to.
.from Dig-Boss Dinwhisker##47271
.click Dark Ember##5746
.get Dark Ember |q 27964/1
step
goto 58.2,40.6 |n
.' Follow the path up |goto 58.2,40.6,0.5 |noway |c
step
goto 68.6,53.4
.talk 47266
..turnin 27964
..accept 27965
step
goto 40.9,36.7 |n
.' The path up to Thorium Point starts here |goto 40.9,36.7,0.5 |noway |c
step
goto 37.7,26.6
.talk 14634
..accept 27980
step
goto 38.1,27.0
.talk 14625
..turnin 27965
..accept 28099
step
goto 38.5,27.9
.talk 14627
..accept 27976
..accept 27981
step
goto 37.2,28.7
.talk 14626
..accept 27977
step
goto 34.8,30.9
.talk 3305
.fpath Thorium Point
step
goto 41.0,39.6
.from Dark Iron Steamsmith##5840
.' Lunk will appear next to you
.talk 47332
..accept 27983
step
goto 41.6,41.4
.from Dark Iron Steamsmith##5840+
.' Let Lunk put 7 Dark Iron Steamsmiths to sleep |q 27983/1
.get Smithing Tuyere |q 27977/1
.get Lookout's Spyglass |q 27977/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27983
step
goto 42.6,36.6
.from Rasha'krak##47553 |tip He's a magma elemental that patrols the lava pools around this area.  You may need to search for him.
.get Rasha'krak's Bracers of Binding |q 28099/1
.' Use your Furnace Flasks on Blazing Elementals and Magma Elementals while they are alive |use Furnace Flasks##62826
.get 10 Filled Furnace Flask |q 27981/1
.' You can also find Rasha'krak, along with more Blazing Elementals and Magma Elementals at the following locations:
.' at [39.3,40.5]
.' at [31.6,43.1]
step
ding 48
step
goto 29.8,42.0
' |from Greater Lava Spider##5858+
.kill 9 Lava Spider |q 27980/1
step
goto 32.3,46.6
.kill 12 Heavy War Golem##5854+ |q 27976/1
step
goto 40.9,36.7 |n
.' The path up to Thorium Point starts here |goto 40.9,36.7,0.5 |noway |c
step
goto 38.5,27.9
.talk 14627
..turnin 27976
..turnin 27981
step
goto 36.8,28.2
.talk 14626
..turnin 27977
..accept 27982
step
goto 38.5,27.9
.talk 14627
..accept 27979
step
goto 37.7,26.6
.talk 14634
..turnin 27980
step
goto 38.1,27.0
.' Go to the top of the tower
.talk 14625
..turnin 28099
step
goto 24.3,33.0 |n
.' Follow the path up |goto 24.3,33.0 |noway |c
step
goto 24.6,26.3
.from Minister Finister##47311
.collect Finister's Spherule##62824 |q 27979
step
goto 29.5,26.4
.talk 8436
..accept 27984
step
goto 29.5,26.4
.talk 8436
..' Tell him you wish to hear his tale
.' Listen to Zamael's Story |q 27984/1
step
goto 29.5,26.4
.talk 8436
..turnin 27984
..accept 27985
step
goto 23.1,35.4
.click Twilight's Hammer Crate##10106
.get Prayer to Elune |q 27985/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27985
step
goto 22.0,36.4 |n
.' Enter the cave |goto 22.0,36.4 |noway |c
step
goto 17.6,42.4
.' Follow the path immediately to the left after you enter the cave
.from Minister Kiyuubi##47309
.collect Kiyuubi's Spherule##62825 |q 27979
step
goto 14.6,36.2
.from Minister Letherio##47310
.collect Letherio's Spherule##62823 |n
.' Use Letherio's Spherule |use Letherio's Spherule##62823
.get Twilight Tripetricine |q 27979/1
step
'All around inside this cave:
.from Twilight Dark Shaman##5860+, Twilight Geomancer##5862+, Twilight Fire Guard##5861+
.get 20 Twilight Collar |q 27982/1
step
goto 22.0,36.4 |n
.' Leave the cave |goto 22.0,36.4 |noway |c
step
goto 31.9,33.3 |n
.' Follow the path up |goto 31.9,33.3 |noway |c
step
goto 38.5,27.9
.talk 14627
..turnin 27979
..accept 27986
step
goto 38.7,28.7
.talk 14624
..turnin 27982
step
goto 38.3,63.3 |n
.' Follow the path up |goto 38.3,63.3 |noway |c
step
|fly Iron Summit
step
goto 39.4,66.3
.talk 47942
.home Iron Summit
step
goto 39.4,67.9
.talk 47393
..turnin 27986
..accept 28028
..accept 28029
..accept 28030
step
goto 38.8,68.9
.talk 47440
..accept 28032
step
goto 35.7,60.7
.click Sentry Brazier##524
.' Set the Southwestern Tower Ablaze |q 28029/2
step
goto 33.3,54.5
.click Sentry Brazier##524
.' Set the Western Tower Ablaze |q 28029/1
step
goto 33.3,66.2
.from Incendosaur##9318+
.get 6 Fire-Gizzard |q 28032/1
step
goto 44.0,60.9
.click Sentry Brazier##524
.' Set the Southeastern Tower Ablaze |q 28029/3
step
goto 52.5,58.0 |n
.' Cross the hanging wooden bridge |goto 52.5,58.0,0.5 |noway |c
step
goto 50.1,54.7
.click Sentry Brazier##524
.' Set the Eastern Tower Ablaze |q 28029/4
step
goto 51.4,55.6 |n
.' Cross the hanging wooden bridge |goto 51.4,55.6,0.5 |noway |c
step
goto 49.6,63.0
.kill 9 Dark Iron Marksman##8338+ |q 28028/1
.click Dark Iron Bullet##1868+
.get 200 Dark Iron Bullet |q 28030/1
step
goto 45.0,67.3 |n
.' Follow the path up |goto 45.0,67.3,0.5 |noway |c
step
goto 38.8,68.9
.talk 47440
..turnin 28032
step
goto 39.4,67.9
.talk 47393
..turnin 28028
..turnin 28029
..turnin 28030
..accept 28033
step
goto 39.8,67.9
.talk 47429
..turnin 28033
..accept 28034
step
goto 40.6,68.1
.talk 47434
..' Ask them if they care to join your dance
.' Build up a three-dwarf conga line |q 28034/1
step
goto 39.4,67.9
.talk 47393
..turnin 28034
..accept 28035
step
ding 49
step
|fly Thorium Point
step
goto 38.1,27.0
.talk 14625
..turnin 28035
..accept 28052
step
goto 34.8,30.9
.talk 3305
..' Tell her you're ready to take the flight into the Cauldron
.' Use the Shoot ability on your hotbar on the dwarves that start shooting at you
.' Secure entrance into the Slag Pit |q 28052/1
step
goto 40.8,51.7
.talk 47393
..turnin 28052
..accept 28054
..accept 28055
..accept 28056
step
goto 41.3,25.4
.' Follow the path in The Slag Pit
.talk 5843 |tip Talk to them as you walk through The Slag Pit and do other quests.
..' Tell them to come and get out of here
.from Dark Iron Slaver##5844+, Dark Iron Taskmaster##5846+
.click Altar of Suntara##328
..' Touch the Suntara stone and call forth Lathoric the Black and his guardian, Obsidion
.kill Obsidion##8400 |q 28056/1
.kill Lathoric the Black##8391 |q 28056/2
step
goto 42.1,25.1
.talk 5843+ |tip Talk to them as you walk through The Slag Pit and do other quests.
..' Tell them to come and get out of here
.' Free or kill 12 Slave Workers |q 28055/1
' |from Dark Iron Slaver##5844+, Dark Iron Taskmaster##5846+
.kill 10 Dark Iron Taskmaster or Slaver |q 28054/1
step
goto 43.8,28.7
.talk 14628
..turnin 28054
..turnin 28055
..turnin 28056
..accept 28057
step
goto 46.2,27.1
.click Dark Iron Pillow##5911+ |tip A big group of dwarves runs up and down the hallway once you steal some pillows. You can kill them easily, though, they have low hit points.
.get 16 Dark Iron Pillow |q 28057/1
step
goto 42.2,34.5
.talk 14626
..turnin 28057
..accept 28060
step
goto 42.3,34.6
.talk 14627
..' Tell him let's take out Maltorius and Arkkus!
.kill Overseer Maltorius##14621 |q 28060/1
.kill Twilight-Lord Arkkus##47460 |q 28060/2
step
goto 47.7,42.0 |n
.' Jump off the bridge to the path below |goto 47.7,42.0,0.5 |noway |c
step
goto 50.0,39.0
.talk 14625
..turnin 28060
..accept 28062
..accept 28061
step
goto 48.0,27.4
.kill 6 Searing Flamewraith##47463+ |q 28061/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28061
step
goto 42.7,30.3
.from Archduke Calcinder##47462
.' Use your Consecrated Tripetricine on Archduke Calcinder when he is sufficiently weakened |use Consecrated Tripetricine##62925 |tip You will see a message pop up when he is at about half health.
.' Banish Archduke Calcinder |q 28062/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28062
..accept 28064
step
'Hearth to Iron Summit |goto 39.8,66.1,0.5 |use Hearthstone##6948 |noway |c
step
|fly Thorium Point
step
goto 39.0,26.0
.talk 47429
..accept 28053 |instant
step
goto 38.1,27.0
.talk 14625
..turnin 28064
..accept 28515
step
|fly Iron Summit
step
goto Searing Gorge,34.8,85.4 |n
.' Enter Blackrock Mountain
|confirm
step
'Follow the path to the other side to Burning Steppes |goto Burning Steppes |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Burning Steppes (49-52)\\Burning Steppes (49-52)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Swamp of Sorrows (52-54)\\Swamp of Sorrows (52-54)
startlevel 49.70
dynamic on
step
goto Burning Steppes 17.5,51.6
.talk 48559
..accept 28418
step
goto 17.0,51.3
.talk 47779
..turnin 28515
..accept 28417
step
goto 17.5,60.5
.clicknpc Fettered Green Whelpling##47820
.' Free a Green Whelpling |q 28417/2
step
goto 19.2,61.6
.clicknpc Fettered Blue Whelpling##47821
.' Free a Blue Whelpling |q 28417/3
step
goto 17.8,61.4 |n
.' Follow the path up |goto 17.8,61.4,0.5 |noway |c
step
goto 15.1,69.7
.clicknpc Fettered Bronze Whelpling##47822
.' Free a Bronze Whelpling |q 28417/4
step
goto 14.2,66.8
.clicknpc Fettered Red Whelpling##47814
.' Free a Red Whelpling |q 28417/1
step
goto 16.0,66.0
.kill 5 Blackrock Whelper##47782+ |q 28418/1
.kill 5 Flamescale Broodling##7049+ |q 28418/2
step
goto 17.5,51.6
.talk 48559
..turnin 28418
..accept 28419
..accept 28420
..accept 28421
step
goto 17.0,51.3
.talk 47779
..turnin 28417
step
goto 15.5,45.0
.click Obsidian-Flecked Mud##20+
.get 9 Obsidian-Flecked Mud |q 28421/1
step
goto 11.8,47.7
.from Ember Worg##9690+
.get 11 Ember Worg Hide |q 28420/1
.from Venomtip Scorpid##9691+
.get 5 Razor-Sharp Scorpid Barb |q 28419/1
step
ding 50
step
goto 17.5,51.6
.talk 48559
..turnin 28419
..turnin 28420
..turnin 28421
..accept 28422
step
goto 8.4,35.8
.talk 14437
..turnin 28422
..accept 28423
..accept 28424
step
goto 9.9,29.7
.kill Ner'gosh the Shadow##47805+ |q 28424/1
step
goto 5.4,32.0
.click Slumber Sand##6483
.get Slumber Sand |q 28423/2
step
goto 5.2,30.9
.click Fel Slider Cider##334
.get Fel Slider Cider |q 28423/3
step
goto 6.8,31.8
.from Blackrock Warlock##7028+
.get Clear Glass Orb |q 28423/1
step
goto 8.4,35.8
.talk 14437
..turnin 28423
..turnin 28424
..accept 28425
step
goto 17.5,51.6
.talk 48559
..turnin 28425
..accept 28426
step
goto 31.5,52.1
' |from Blackrock Slayer##7027+, Smolderthorn Shaman##48118+, Firegut Reaver##48120+, Blackrock Sorcerer##7026+
.kill 15 Blackrock troop |q 28426/1
step
goto 46.8,44.1
.talk 48033
..turnin 28426
..accept 28225
..accept 28226
step
goto 46.1,41.8
.talk 48321
.fpath Chiselgrip
step
goto 44.5,44.4
.talk 48568
..accept 28427
step
goto 45.5,46.4
.talk 48001
..turnin 28427
.' He will offer you one of the following four quests:
..accept 28428 |or
..accept 28429 |or
..accept 28430 |or
..accept 28431 |or
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 2 Hides
..' Take 4 Handfuls of Mud
..' Take 2 Spools of Thread
.' Skip to the next step in the guide
only Orc
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 3 Hides
..' Take 2 Handfuls of Mud
..' Take 1 Spool of Thread
.' Skip to the next step in the guide
only Troll
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 1 Hide
..' Take 3 Handfuls of Mud
..' Take 4 Spools of Thread
..' Skip to the next step in the guide
only Goblin
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 2 Hides
..' Take 4 Handfuls of Mud
..' Take 2 Spools of Thread
..' Skip to the next step in the guide
only Scourge
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 4 Hides
..' Take 1 Handful of Mud
..' Take 3 Spools of Thread
..' Skip to the next step in the guide
only Tauren
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 3 Hides
..' Take 2 Handfuls of Mud
..' Take 1 Spool of Thread
..' Skip to the next step in the guide
only BloodElf
step
goto 45.5,46.4
.talk 48001
..' Tell him you brought him some hides, mud, and thread
.' Create the Perfect Costume |q 28428/1
.' Create the Perfect Costume |q 28429/1
.' Create the Perfect Costume |q 28430/1
.' Create the Perfect Costume |q 28431/1
step
goto 44.5,44.4
.talk 48568
..turnin 28428
..turnin 28429
..turnin 28430
..turnin 28431
..accept 28432
step
'Use your Blackrock Disguise |use Blackrock Disguise##63357
.' You will get a different disguise, depending on the costume you had to make:
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Orc_Male |q 28432 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Orc_Female |q 28432 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Troll_Male |q 28432 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Troll_Female |q 28432 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Goblin_Male |q 28432 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Goblin_Female |q 28432 |or
.' Wear your Blackrock Ogre Disguise |havebuff Interface\Icons\Achievement_Reputation_Ogre |q 28432 |or
step
goto 45.3,51.7
.talk 48085
..turnin 28432
..accept 28433
..accept 28434
step
goto 45.0,52.5
.' Go to the very top of the tower
.' Use your Razor-Sharp Scorpid Barb on Voodooist Timan |use Razor-Sharp Scorpid Barb##63350
.kill Voodooist Timan##48100 |q 28434/3
step
goto 39.2,56.1
.' Use your Razor-Sharp Scorpid Barb on Worgmistress Othana |use Razor-Sharp Scorpid Barb##63350
.kill Worgmistress Othana##48099 |q 28434/2
step
goto 42.1,60.1
.' Use your Razor-Sharp Scorpid Barb on Gorlop |use Razor-Sharp Scorpid Barb##63350
.kill Gorlop##9176 |q 28434/1 |tip He's an ogre that runs back and forth between the 2 lava pools here, so you may need to search for him.
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28434
step
goto 39.7,55.7
.click Blackrock Boots##10182+
.' Polish 7 Pairs of Blackrock Boots |q 28433/1
step
goto 45.3,51.7
.talk 48085
..turnin 28433
..accept 28435
step
goto 44.9,58.8
.' Use your Horn of the Callers next to Blackrock War Kodos |use Horn of the Callers##63356
.from Blackrock War Kodo##48111+
.' Summon 7 Blackrock War Kodos back to camp |q 28435/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28435
..accept 28436
step
goto 44.5,44.4
.talk 48568
..turnin 28436
step
goto 45.7,39.1
' |from Thaurissan Agent##7038+, Thaurissan Firewalker##7037+, Thaurissan Spy##7036+
.kill 10 Thaurissan dwarf |q 28225/1
.from War Reaver##7039+
.click War Reaver Parts##449+
..' You are given a choice on what to salvage from the War Reaver Parts. |tip Choose to Salvage a Stone Power Core the first chance you get, because you only need one and they are rare.  Otherwise, just salvage the parts you need most.
.get 3 Obsidian Piston |q 28226/1
.get 3 Flux Exhaust Sieve |q 28226/2
.get 3 Thorium Gearshaft |q 28226/3
.get Stone Power Core |q 28226/4
step
goto 46.8,44.1
.talk 48033
..turnin 28225
..turnin 28226
..accept 28227
step
ding 51
step
goto 46.4,45.2
.talk 48037 |tip They are metal golems all around town.
..' Tell them you are here to help them with their combat training, golem
.from Chiseled Golem##48037+ |tip You will have to beat them 3 times in a row to train them.
.' Train 4 Chiseled Golems |q 28227/1
step
goto 46.8,44.1
.talk 48033
..turnin 28227
step
goto 44.5,44.4
.talk 48568
..accept 28437
step
'Use your Blackrock Disguise |use Blackrock Disguise##63357
.' You will get a different disguise, depending on the costume you had to make:
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Orc_Male |q 28437 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Orc_Female |q 28437 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Troll_Male |q 28437 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Troll_Female |q 28437 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Goblin_Male |q 28437 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Goblin_Female |q 28437 |or
.' Wear your Blackrock Ogre Disguise |havebuff Interface\Icons\Achievement_Reputation_Ogre |q 28437 |or
step
goto 30.7,33.7
.talk 48133
..turnin 28437
..accept 28438
step
goto 30.8,33.4
.talk 48159
..' Tell him you'd like to challenge his magma lord to a fight
.kill Magma Lord Kolob##48156 |q 28438/1
step
goto 30.7,33.7
.talk 48133
..turnin 28438
..accept 28439
..accept 28440
step
goto 33.6,36.3
.' Use your Blackrock Cudgel of Discipline on Smolderthorn Assassins, Firegut Flamespeakers, and Blackrock Soldiers |use Blackrock Cudgel of Discipline##63390 |tip If they discover you are wearing a mask, spam use the Blackrock Cudgel of Discipline on them to kill them.
.' Cudgel 20 Blackrock Minions |q 28439/1
.' Use your Blackrock Cudgel of Discipline repeatedly on Blackrock Sergeants |use Blackrock Cudgel of Discipline##63390 |tip Spam use the Blackrock Cudgel of Discipline, so you kill them quickly.
.kill 5 Blackrock Sergeant##48201+ |q 28440/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28440
..accept 28441
step
goto 30.7,33.7
.talk 48133
..turnin 28439
step
goto 44.5,44.4
.talk 48568
..turnin 28441
..accept 28442
step
goto 54.2,24.2
.talk 13177
.fpath Flame Crest
step
goto 54.9,22.5
.talk 10260
..turnin 28442
..accept 28491
step
goto 54.7,24.5
.talk 48569
..accept 28443
..accept 28444
..accept 28445
step
goto 54.9,31.4
.from Flamekin Torcher##9778+, Flamekin Rager##9779+, Flamekin Spitter##9776+
.clicknpc Fallen Flamekin##48649+
.get 18 Fallen Flamekin |q 28444/1
.clicknpc Flamefly##48671+
.get 7 Flamefly |q 28491/1
step
goto 62.4,35.4
.from Greater Obsidian Elemental##7032+
.get 9 Obsidian Ashes |q 28443/1
step
goto 67.3,31.1
.from Giant Ember Worg##9697+
.' Use your Worgsaw on their corpses |use Worgsaw##63427
.get 40 Worg Cutlet |q 28445/1
step
goto 54.7,24.5
.talk 48569
..turnin 28443
..turnin 28444
..turnin 28445
step
goto 54.8,24.6
.talk 48565
..accept 28446
step
'Next to you:
.talk 48567
..accept 28447
..accept 28448
step
goto 54.9,22.5
.talk 10260
..turnin 28491
..accept 28570
step
goto 72.3,27.4
.kill Terromath the Seared##48288 |q 28447/2
step
goto 75.7,37.0
.kill Tugnar Goremaw##48291 |q 28447/4
step
goto 82.1,31.5
.talk 48292
..turnin 28448
step
goto 79.8,51.0
.kill Minyoth##48289 |q 28447/3
step
goto 64.9,59.7
.kill Whelptamer Akumi##48287 |q 28447/1
step
'Next to you:
.talk 48567
..turnin 28447
step
goto 76.7,53.4
' |from Black Dragonspawn##7040+, Black Wyrmkin##7041+
.kill 25 Black Dragonspawn |q 28446/1
step
'Next to you:
.talk 48567
..turnin 28446
..accept 28449
step
ding 52
step
goto 54.7,24.5
.talk 48569
..turnin 28449
..accept 28450
..accept 28451
..accept 28452
step
'Use your Blackrock Disguise |use Blackrock Disguise##63357
.' You will get a different disguise, depending on the costume you had to make:
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Orc_Male |q 28450 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Orc_Female |q 28450 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Troll_Male |q 28450 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Troll_Female |q 28450 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Goblin_Male |q 28450 |or
.' Wear your Blackrock Orc Disguise |havebuff Interface\Icons\Achievement_Character_Goblin_Female |q 28450 |or
.' Wear your Blackrock Ogre Disguise |havebuff Interface\Icons\Achievement_Reputation_Ogre |q 28450 |or
step
goto 70.7,38.3 |n
.' Enter the cave |goto 70.7,38.3,0.5 |noway |c
step
goto 70.2,47.3
.' Follow the path in the cave to the left
.talk 48314
..turnin 28451
step
goto 70.7,38.3 |n
.' Leave the cave |goto 70.7,38.3,0.5 |noway |c
step
goto 64.3,37.5 |n
.' Follow the path up |goto 64.3,37.5,0.5 |noway |c
step
goto 69.6,42.9
.talk 48312
..turnin 28452
step
goto 65.3,46.5 |n
.' Enter the cave |goto 65.3,46.5,0.5 |noway |c
step
goto 66.5,40.5
.talk 48316
..turnin 28450
..accept 28453
step
goto 65.3,46.5 |n
.' Leave the cave |goto 65.3,46.5,0.5 |noway |c
step
goto 54.7,24.5
.talk 48569
..turnin 28453
step
goto 54.8,24.6
.talk 48565
..accept 28454
step
goto 63.7,49.7
.' Use your Fiery Breath ability on your hotbar on the Blackrock Invaders below |tip They are all around the mountain, so fly around.
' |from Blackrock Invader##48432+, Blackrock Invader##48414+
.kill 200 Blackrock Invader |q 28454/1
step
goto 54.7,24.5
.talk 48569
..turnin 28454
..accept 28455
step
goto 70.7,38.3 |n
.' Enter the cave |goto 70.7,38.3,0.5 |noway |c
step
goto 70.2,47.3
.' Follow the path in the cave to the left
.kill High Warlock Xi'lun##48312 |q 28455/3
step
goto 70.7,38.3 |n
.' Leave the cave |goto 70.7,38.3,0.5 |noway |c
step
goto 64.4,37.5 |n
.' Follow the path up |goto 64.4,37.5,0.5 |noway |c
step
goto 69.7,42.9
.kill Dragon-Lord Neeralak##48314 |q 28455/2
step
goto 65.3,46.5 |n
.' Enter the cave |goto 65.3,46.5,0.5 |noway |c
step
goto 66.5,40.5
.kill General Thorg'izog##48316 |q 28455/1
step
goto 65.3,46.5 |n
.' Leave the cave |goto 65.3,46.5,0.5 |noway |c
step
goto 54.7,24.5
.talk 48569
..turnin 28455
..accept 28456
step
goto 54.8,24.4
.click Crate of Left Over Supplies##31
..turnin 28456
step
goto 78.3,58.8
.talk 48948
..' Tell her let's head down to the Swamp of Sorrows
.' Ride the rocket to Swamp of Sorrows |goto Swamp of Sorrows,75.3,13.3,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Swamp of Sorrows (52-54)\\Swamp of Sorrows (52-54)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Winterspring (54-58)\\Winterspring (54-58)
startlevel 52.70
dynamic on
step
goto Swamp of Sorrows,73.2,14.9
.talk 45786
..turnin 28570
..accept 27587
step
goto 71.7,13.8
.talk 47334
.home Bogpaddle
step
goto 72.0,12.0
.talk 43086
.fpath Bogpaddle
step
goto 73.6,9.2
.talk 46010
..accept 27592
step
goto 75.2,5.4
.from Swampshore Makrura##45809+
.get 6 Intact Swampshore Tail |q 27587/1
.from Silt Crawler##922+
.get 10 Stolen Silversnap Ice |q 27592/1
step
goto 73.6,9.2
.talk 46010
..turnin 27592
step
goto 73.2,14.9
.talk 45786
..turnin 27587
..accept 27536
..accept 27656
step
goto 74.2,12.2
.talk 46182
..accept 27663
step
goto 80.5,26.8
.kill 8 Sawtooth Crocolisk##45807+ |q 27656/1
.from Swampstrider##45825+
.get 9 Jumbo Swampstrider Drumstick |q 27663/1
.click Stray Land Mine##8586+
.get 8 Disarmed Land Mine |q 27536/1
step
goto 73.2,14.9
.talk 45786
..turnin 27536
..turnin 27656
..accept 27597
step
goto 74.2,12.2
.talk 46182
..turnin 27663
step
goto 84.0,40.1
.talk 45948
..turnin 27597
..accept 27598
..accept 27599
step
goto 89.8,29.9
.kill 7 Gilblin Stalker##45701+ |q 27598/1
.clicknpc Deceased Bogpaddle Privateer##46014+
.get 6 Steamwheedle Ditty Bag |q 27599/1
step
ding 53
step
goto 84.0,40.1
.talk 45948
..turnin 27598
..turnin 27599
..accept 27600
step
goto 83.6,37.9
.talk 46245
..' Tell him to load you into that cannon, boy!
.' You will get launched onto a ship |goto 98.8,27.8,0.5 |noway |c
step
goto 97.9,25.0
.click the Thousand-Thread-Count Fuse##7548
.get Thousand-Thread-Count Fuse |q 27600/1
step
goto 98.9,27.9
.' Go downstairs
.click the Extra-Pure Blasting Powder##9945 |tip It's in the captain's room.
.get Extra-Pure Blasting Powder |q 27600/2
step
goto 98.8,27.2
.' Go downstairs
.click the Stack of Questionable Publications##43 |tip It's sitting on the floor at the very bottom deck of the ship.
.get Stack of Questionable Publications |q 27600/3
step
goto 98.1,26.0
.' Go upstairs
.click the Landward Cannon##9925
..' Get in and fire it!
.' You will be launched to shore |goto 83.9,37.2,0.5 |noway |c
step
goto 84.0,40.1
.talk 45948
..turnin 27600
..accept 27740
step
goto 82.8,41.1
.talk 46503
..' Tell her that her dad says to fire you across the bay
.' You will be launched to Stagalbog |goto 69.5,75.6,1.5 |noway |c
step
goto 69.1,76.5
.talk 46172
..turnin 27740
..accept 27691
step
goto 79.9,85.7
.kill 12 Marshfin Murkdweller##45967+ |q 27691/1
step
goto 69.1,76.5
.talk 46172
..turnin 27691
..accept 27757
step
goto 66.3,75.0 |n
.' Enter the cave |goto 66.3,75.0,0.5 |noway |c
step
goto 64.5,80.2 |n
.' Follow the middle path inside the cave |goto 64.5,80.2,0.5 |noway |c
step
goto 64.3,85.8 |n
.' Follow the path up |goto 64.3,85.8,0.5 |noway |c
step
goto 63.2,85.5
.kill Hr'nglth the Lost##46371 |q 27757/1
step
goto 66.3,75.0 |n
.' Leave the cave |goto 66.3,75.0,0.5 |noway |c
step
goto 69.1,76.5
.talk 46172
..turnin 27757
..accept 27818
step
goto 72.3,79.3
.from Stagalbog Serpent##46146+
.get 5 Intact Stagalbog Serpent Heart |q 27818/1
.' You can find more Stagalbog Serpents around [84.0,63.1]
step
goto 69.1,76.5
.talk 46172
..turnin 27818
..accept 27869
step
goto 69.5,54.5
.talk 46071
..turnin 27869
..accept 27694
step
goto 67.8,60.7
.click Atal'ai Artifact##651+ |tip They are underwater.
.get 5 Atal'ai Artifact |q 27694/1
step
goto 69.5,54.5
.talk 46071
..turnin 27694
..accept 27704
step
goto 73.8,44.3 |n
.' Follow the path in the temple and go to this spot
.' Find the Hall of Masks |q 27704/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27704
..accept 27705
step
goto 74.8,49.3
.' Follow the path in the temple downstairs to the right
.kill Priestess Udum'bra##46424 |q 27705/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27705
..accept 27768
step
goto 77.5,46.0
.' Follow the path in the temple back upstairs then down the other set of stairs
.kill Gomora the Bloodletter##46623 |q 27768/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27768
..accept 27773
step
goto Swamp of Sorrows,76.6,41.5
.' Follow the path in the temple through the long hallway full of trolls, into a big square 3-layered room
.' Defeat Jammal'an the Prophet |q 27773/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27773
..accept 27914
step
goto Swamp of Sorrows,69.5,54.5
.talk 46071
..turnin 27914
step
goto Swamp of Sorrows,69.5,54.5
.talk 46071
..accept 27871
step
goto 49.4,55.3
.talk 7623
..turnin 27871
..accept 27852
..accept 27853
step
goto 63.6,34.8
.kill 5 Marshtide Peasant##46487+ |q 27853/1
.' You can find more Marshtide Peasants around [70.5,31.1]
step
goto 59.6,42.5
.kill 10 Marshtide Footman##46164+ |q 27852/1
step
goto 49.4,55.3
.talk 7623
..turnin 27852
..turnin 27853
..accept 27854
..accept 27855
..accept 27856
step
ding 54
step
goto 61.8,41.9
.kill 3 Marshtide Mage##46775+ |q 27855/1
.kill 6 Marshtide Knight##46414+ |q 27854/1
.' Use your Banner of the Fallen next to Fallen Stonard Warriors |use Banner of the Fallen##62548 |tip They look like dead orcs laying on the ground around this area.
.' Mark 7 Fallen Stonard Warriors |q 27856/1
step
goto 49.4,55.3
.talk 7623
..turnin 27854
..turnin 27855
..turnin 27856
..accept 27857
step
goto 48.0,53.9
.kill 12 Marshtide Invader##46869+ |q 27857/1
step
goto 49.4,55.3
.talk 7623
..turnin 27857
..accept 27906
step
goto 21.2,51.7
.talk 47041
..turnin 27906
..accept 27907
..accept 27908
step
goto 27.6,48.3
.click Prayerbloom##7791+
.get 10 Prayerblossom |q 27907/1
.from Shifting Mireglob##46997+ |tip They are blobs in the water all around this area.
.get 10 Invigorated Silt |q 27908/1
step
goto 21.2,51.7
.talk 47041
..turnin 27907
..turnin 27908
..accept 27909
..accept 27910
step
goto 20.3,55.5
.from Purespring Elemental##46953+
.get 8 Purespring Mote |q 27909/1
step
goto 21.9,43.6 |n
.' Enter Misty Valley |goto 21.9,43.6,0.5 |noway |c
step
goto 10.3,33.7
.from Duskfang##47053
.get Duskfang's Hide |q 27910/1
step
goto 21.9,43.6 |n
.' Leave Misty Valley |goto 21.9,43.6,0.5 |noway |c
step
goto 21.2,51.7
.talk 47041
..turnin 27909
..turnin 27910
..accept 27911
step
goto 21.2,51.7
.' Watch the dialogue
.' Witness Helgrum's last moments
..turnin 27911
..accept 27916
step
goto 49.4,55.3
.talk 7623
..turnin 27916
step
goto 47.8,55.2
.talk 6026
.' Fly to Brill, Tirisfal Glades |goto Tirisfal Glades,58.9,51.9,0.5 |noway |c
step
goto Tirisfal Glades,60.7,58.8 |n
.' Ride the zeppelin to Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,49.7,59.2
.talk 3310
.fpath Orgrimmar
step
'Go northeast to Azshara |goto Azshara |noway |c
step
goto Azshara,14.4,65.0
.talk 36728
.fpath Valormok
step
'Go west to Ashenvale |goto Ashenvale |noway |c
step
goto Ashenvale,73.2,61.6
.talk 12616
.fpath Splintertree Post
step
goto 59.8,62.6 |n
.' Follow the road north |goto 59.8,62.6,0.5 |noway |c
step
'Go north to Felwood |goto Felwood |noway |c
step
goto Felwood,51.5,80.9
.talk 22931
.fpath Emerald Sanctuary
step
goto 44.3,61.9
.talk 43079
.fpath Wildheart Point
step
goto 43.6,28.7
.talk 43073
.fpath Whisperwind Grove
step
goto 55.3,15.0 |n
.' Follow the path |goto 55.3,15.0,0.5 |noway |c
step
goto 56.4,8.6
.talk 43085
.fpath Irontree Clearing
step
goto 55.3,15.0 |n
.' Go back to the road |goto 55.3,15.0,0.5 |noway |c
step
goto 64.4,10.0 |n
.' Enter the cave |goto 64.4,10.0,0.5 |noway |c
step
goto 67.4,8.0 |n
.' Follow the path east to Winterspring |goto Winterspring |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Blasted Lands (57-60)\\Blasted Lands (57-60)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Outland 60-70\\Hellfire Peninsula (60-62)
startlevel 57.95
dynamic on
step
 goto Blasted Lands,43.7,14.3
.talk 43121
 .fpath Dreadmaul Hold
step
 goto 40.5,11.6
.talk 41124
 ..turnin 28858
 ..accept 25674
step
goto 43.6,16.9
.kill Dreadmaul Ambusher##41136 |q 25674/1
step
goto 40.5,11.6
.talk 41124
..turnin 25674
..accept 25676
step
goto 42.6,14.0
.talk 41125
..accept 25675
step
goto 45.2,34.6
.kill 6 Dreadmaul Mauler##5977+ |q 25675/1
.kill 5 Dreadmaul Warlock##5978+ |q 25675/2
step
ding 58
step
goto 50.4,10.3 |n
.' Enter the mine |goto 50.4,10.3,0.5 |noway |c
step
goto 59.6,3.5
.talk 41133
..turnin 25676
..accept 25677
..accept 25678
step
goto 58.8,4.1
.click Ore Heap##9526+
.' Dissolve 6 Ore Heaps |q 25677/1
.kill 8 Nethergarde Miner##5996+ |q 25678/1
.kill 3 Nethergarde Engineer##5997+ |q 25678/2
.kill 3 Nethergarde Foreman##5998+ |q 25678/3
step
goto 59.6,3.5
.talk 41133
..turnin 25677
..turnin 25678
..accept 25679
step
goto 62.2,1.4
.talk 41134
..turnin 25679
..accept 25680
step
goto 65.6,8.5
.kill Illycor##41163 |q 25680/1
step
goto 62.2,1.4
.talk 41134
..turnin 25680
..accept 25681
step
goto 62.0,1.3
.click the Inconspicuous Box##6448
.' Disguise yourself as a box |invehicle |c |q 25681
step
goto 52.2,2.6
.' Use your abandon box ability to get out of the box
.kill Chief Prospector Hondo##41173 |q 25681/1
step
 goto 51.9,2.7
 .click the Inconspicuous Box##6448
.' Disguise yourself as a box |invehicle |c |q 25681
step
goto 62.2,1.4
.' Use your abandon box ability to get out of the box |outvehicle |c |q 25681
step
goto 62.2,1.4
.talk 41134
..turnin 25681
..accept 25682
step
goto 50.4,10.3 |n
.' Leave the mine |goto 50.4,10.3,0.5 |noway |c
step
goto 42.6,14.0
.talk 41125
..turnin 25675
step
goto 40.5,11.6
.talk 41124
..turnin 25682
..accept 25683
step
goto 41.4,33.2 |n
.' Enter the cave |goto 41.4,33.2,0.5 |noway |c
step
goto 39.2,36.3
.' Follow the path in the cave to the end
.talk 7506
..turnin 25683
..accept 25684
step
goto 39.3,35.6
.click Bloodstone Teleporter##6837
.' Use the internal Bloodstone Teleporter |q 25684/1
step
goto 41.5,32.0
.click Bloodstone Teleporter##6837
.' Use the external Bloodstone Teleporter |q 25684/2
step
goto 39.2,36.3
.talk 7506
..turnin 25684
..accept 25685
step
goto 39.3,36.2
.talk 7505
..accept 25690
step
goto 39.3,35.6
.click Bloodstone Teleporter##6837
.' Teleport outside the cave |goto 41.6,31.9,0.5 |noway |c
step
goto 48.2,34.2
.from Ashmane Boar##5992+
.get 5 Ashmane Steak |q 25690/1
.from Redstone Basilisk##5990+
.get 9 Redstone Basilisk Blood |q 25685/2
.from Snickerfang Hyena##5985+
.get 9 Snickerfang Hyena Blood |q 25685/1
.' You can find more Ashmane Boars and Redstone Basilisk around [56.9,24.8]
step
goto 41.5,32.0
.click Bloodstone Teleporter##6837
.' Teleport inside the cave |goto 39.3,35.8,0.5 |noway |c
step
goto 39.3,36.2
.talk 7505
..turnin 25690
step
goto 39.2,36.3
.talk 7506
..turnin 25685
..accept 25686
step
goto 39.2,36.3
.talk 7506
..' Tell her you would like to start the Blood Ritual
|confirm
step
goto 39.2,36.3
.talk 7506
..turnin 25686
..accept 25687
step
goto 39.3,35.6
.click Bloodstone Teleporter##6837
.' Teleport outside the cave |goto 41.6,31.9,0.5 |noway |c
step
goto 41.4,33.2 |n
.' Enter the cave |goto 41.4,33.2,0.5 |noway |c
step
goto 40.0,37.2
.click Dreadmaul Cache##4192
.get Loramus' Torso |q 25687/2
step
goto 41.4,33.2 |n
.' Leave the cave |goto 41.4,33.2,0.5 |noway |c
step
goto 45.1,30.4 |n
.' Enter the cave |goto 45.1,30.4,0.5 |noway |c
step
goto 46.7,26.9
.click Dreadmaul Cache##4192
.get Loramus' Head |q 25687/1
step
goto 45.1,30.4 |n
.' Leave the cave |goto 45.1,30.4,0.5 |noway |c
step
goto 46.1,39.0 |n
.' Enter the cave |goto 46.1,39.0,0.5 |noway |c
step
goto 47.0,39.5
.click Dreadmaul Cache##4192
.get Loramus' Legs |q 25687/3
step
goto 46.1,39.0 |n
.' Leave the cave |goto 46.1,39.0,0.5 |noway |c
step
goto 41.5,32.0
.click Bloodstone Teleporter##6837
.' Teleport inside the cave |goto 39.3,35.8,0.5 |noway |c
step
goto 39.2,36.3
.talk 7506
..turnin 25687
..accept 25688
step
goto 39.3,35.6
.click Bloodstone Teleporter##6837
.' Teleport outside the cave |goto 41.6,31.9,0.5 |noway |c
step
goto 40.2,35.7 |n
.' Follow the path up |goto 40.2,35.7,0.5 |noway |c
step
goto 37.0,28.4
.click Blood Altar##227
.' Defend Loranus's Body while he performs the ritual
.' Resurrect Loramus |q 25688/1
step
goto 41.5,32.0
.click Bloodstone Teleporter##6837
.' Teleport inside the cave |goto 39.3,35.8,0.5 |noway |c
step
goto 39.4,35.8
.talk 7783
..turnin 25688
..accept 25689
step
goto 39.3,35.6
.click Bloodstone Teleporter##6837
.' Teleport outside the cave |goto 41.6,31.9,0.5 |noway |c
step
goto 54.3,50.1
.talk 41159
..turnin 25689
..accept 25691
..accept 25692
step
goto 54.5,50.5
.talk 19254
..accept 25694
step
goto 59.9,43.1
.kill Shahandana##41165 |q 25694/2
step
goto 52.3,41.9
.kill Gomegaz##41166 |q 25694/3
step
goto 43.9,47.7
.kill Jarroc Torn-Wing##41164 |q 25694/1
step
goto 48.9,46.0
.from Felguard Sentry##6011+, Felhound##6010+, Oath-Chained Infernal##41253+
.get 7 Vile Demonic Blood |q 25692/1
.click Charred Granite Outcropping##9537+
.get 24 Charred Granite Chips |q 25691/1
step
goto 54.3,50.1
.talk 41159
..turnin 25691
..turnin 25692
..accept 25693
step
goto 54.5,50.5
.talk 19254
..turnin 25694
..accept 25695
step
ding 59
step
  goto 55.6,50.2
.click Alliance Plans##163 |tip Click the plans as soon as the Alliance Portal Sentry has his back turned to you while he's pacing, or else he will attack you when you try to get the plans.
.' Examine the Alliance Plans |q 25695/1
step
goto 54.5,50.5
.talk 19254
..turnin 25695
..accept 25696
step
goto 41.5,32.0
.click the Bloodstone Teleporter##6837
.' Teleport inside the cave |goto 39.3,35.8,0.5 |noway |c
step
goto 39.4,35.8
.talk 7783
..turnin 25693
..accept 25697
..accept 25698
..accept 25699
step
goto 39.3,35.6
.click the Bloodstone Teleporter##6837
.' Teleport outside the cave |goto 41.6,31.9,0.5 |noway |c
step
goto 60.8,29.4 |n
.' Enter the cave |goto 60.8,29.4,0.5 |noway |c
step
goto 61.6,26.8
.click the Allistarjian Vault##5743
.get Amulet of Allistarj |q 25697/1
step
goto 60.8,29.4 |n
.' Leave the cave |goto 60.8,29.4,0.5 |noway |c
step
goto 71.0,35.5
.click the Head of Grol##4411
.from Spirit of Grol##41267
.get Amulet of Grol |q 25699/1
step
goto 69.4,46.5 |n
.' Follow the path up |goto 69.4,46.5,0.5 |noway |c
step
goto 73.2,47.4
.talk 41265
..accept 25702
step
goto 73.2,47.4
.talk 41265
..' Tell him you need the Amulet of Sevine.
.get Amulet of Sevine |q 25698/1
step
goto 71.0,60.0
.talk 41354
..turnin 25702
..accept 25703
step
goto 71.8,62.5
.kill 10 Bloodwash Barbarian##41386+ |q 25703/1
.kill 10 Bloodwash Enchantress##41387+ |q 25703/2
step
goto 71.0,60.0
.talk 41354
..turnin 25703
..accept 25705
..accept 25706
step
goto 61.4,62.9 |n
.' Enter the cave |goto 61.4,62.9,0.5 |noway |c
step
goto 61.4,59.9
.click Azsh'ir Idol##4853+
.' Destroy 8 Azsh'ir Idols |q 25705/1
.kill 8 Bloodwash Zealot##41422+ |q 25706/1
.kill 8 Bloodwash Acolyte##41423+ |q 25706/2
step
goto 61.4,62.9 |n
.' Leave the cave |goto 61.4,62.9,0.5 |noway |c
step
goto 63.0,64.3
.clicknpc Abandoned Bloodwash Crate##41402
..' <Help the Rockpool tadpoles.>
.' Click the Quest Discovered box that displays on the right side of the screen under your minimap
..accept 25707
step
goto 60.2,71.0
.clicknpc Abandoned Bloodwash Crate##41402 |tip Remember to get it again after each time you have to fight.
.kill 4 Bloodwash Idolater##41405+ |q 25706/4
step
goto 65.9,74.5
.clicknpc Abandoned Bloodwash Crate##41402 |tip Remember to get it again after each time you have to fight.
.kill 4 Bloodwash Gambler##41404+ |q 25706/3
step
goto 70.1,80.4
.clicknpc Abandoned Bloodwash Crate##41402 |tip Remember to get it again after each time you have to fight.
.' Drag the Abandoned Bloodwash Crate to this spot
.' Return the Rockpool Tadpoles to the Forbidding Sea |q 25707/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 25707
step
goto 71.0,60.0
.talk 41354
..turnin 25705
..turnin 25706
step
goto 53.0,76.0 |n
.' Follow the path up |goto 53.0,76.0,0.5 |noway |c
step
goto 50.9,72.9
.talk 43114
.fpath Sunveil Excursion
step
goto 50.9,72.9
.talk 43114
.' Fly to Dreadmaul Hold, Blasted Lands |goto 43.6,14.3,0.5 |noway |c
step
goto 41.5,32.0
.click Bloodstone Teleporter##6837
.' Teleport inside the cave |goto 39.3,35.8,0.5 |noway |c
step
goto 39.2,36.3
.talk 7506
..turnin 25697
..turnin 25698
..turnin 25699
..accept 25700
step
goto 39.2,36.3
.talk 7506
..' Tell her you would like to start the Amulet Ritual
.' Participate in the ritual |q 25700/1
step
goto 39.4,35.8
.talk 7783
..turnin 25700
..accept 25701
step
goto 39.3,35.6
.click the Bloodstone Teleporter##6837
.' Teleport outside the cave |goto 41.6,31.9,0.5 |noway |c
step
goto 46.5,21.9
.talk 8816
..' Tell him you wish to face the Defiler
.from Razelikh the Defiler##41280
.' Destroy Razelikh's body |q 25701/1
.' Use the Stone Knife of Sealing on Loramus Thalipedes when he tells you to |use Stone Knife of Sealing##56012 |q 25701/2
.' Imprison Razelikh's soul |q 25701/2
step
goto 54.3,50.1
.talk 41159
..turnin 25701
step
goto 43.7,14.3
.talk 43121
.' Fly to Sunveil Excursion, Blasted Lands |goto 50.9,72.7,0.5 |noway |c
step
goto 49.8,71.4
.talk 42344
..turnin 25696
..accept 25717
step
goto 48.0,72.0 |n
.' Follow the path down |goto 48.0,72.0,0.5 |noway |c
step
goto 33.4,76.3
.kill 3 Felspore Bog Lord##45125+ |q 25717/4
step
goto 35.0,75.3
.kill 5 Doomguard Destroyer##41470+ |q 25717/1
.kill 5 Corrupted Darkwood Treant##45119+ |q 25717/3
.kill 5 Dreadlord Defiler##41471+ |q 25717/2
.' There are more demons around [40.0,74.6]
step
goto 44.7,72.5 |n
.' Follow the path up |goto 44.7,72.5,0.5 |noway |c
step
goto 49.8,71.4
.talk 42344
..turnin 25717
..accept 25718
step
goto 47.1,69.1
.talk 42348
..turnin 25718
..accept 25719
step
goto 35.9,57.8
.from Tainted Nightstalker##42337
.collect 20 Nightstalker Leg##57178 |q 25719
.from Tainted Black Bear##42336
.collect 4 Tainted Hide##57177 |q 25719
.from Tainted Screecher##42338+
.collect 2 Screecher Brain##57179 |q 25719
step
'Use your Nightstalker Legs |use Nightstalker Leg##57178
.collect 20 Crushed Nightstalker Leg##57181 |q 25719
step
'Use your Screecher Brains |use Screecher Brain##57179
.collect 2 Screecher Brain Paste##57182 |q 25719
step
'Use your Tainted Hides |use Tainted Hide##57177
.collect Tainted Hide Pouch##57180 |q 25719
step
'Use your Crushed Nightstalker Legs |use Crushed Nightstalker Leg##57181
.collect Demoniac Commixture##57183 |q 25719
step
'Use your Demoniac Commixture |use Demoniac Commixture##57183
.get Demoniac Vessel |q 25719/1
step
goto 44.7,72.5 |n
.' Follow the path up |goto 44.7,72.5,0.5 |noway |c
step
goto 49.8,71.4
.talk 42344
..turnin 25719
..accept 25720
step
goto 48.0,72.0 |n
.' Follow the path down |goto 48.0,72.0,0.5 |noway |c
step
goto 34.7,67.8
.' Use the Demoniac Vessel on Marl Wormthorn |use Demoniac Vessel##57185
.kill Marl Wormthorn##42334 |q 25720/1
step
goto 44.7,72.5 |n
.' Follow the path up |goto 44.7,72.5,0.5 |noway |c
step
goto 49.8,71.4
.talk 42344
..turnin 25720
step
ding 60
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Durotar (1-11)\\Orc (1-5)",[[
author support@zygorguides.com
condition suggested raceclass('Orc') and level<=5
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Durotar (1-11)\\Durotar (5-8)
startlevel 1
dynamic on
step
goto Valley of Trials 45.2,68.41
.talk 10176
..accept 25152
step
goto 44.9,66.41
.talk 3143
..turnin 25152
..accept 25126
step
goto 47.7,48.11
.from Mottled Boar##3098+
.' Slaughter 6 Mottled Boars |q 25126/1
step
goto 44.9,66.41
.talk 3143
..turnin 25126
..accept 25172
..accept 31156 |only Orc Monk
..accept 3087 |only Orc Hunter
..accept 2383 |only Orc Warrior
..accept 3088 |only Orc Rogue
..accept 3089 |only Orc Shaman
..accept 25138 |only Orc Mage
..accept 3090 |only Orc Warlock
step
ding 2
step
goto 45.8,85.41
.kill 7 Northwatch Scout##39317+ |q 25172/1
step
goto 44.9,66.41
.talk 3143
..turnin 25172
..accept 25127
step
goto 42.9,62.41
.talk 9796
..accept 25136
step
goto 31.1,45.7
.from Scorpid Worker##3124+
.get 8 Scorpid Worker Tail |q 25127/1
.click Cactus Apple##3451+
.get 6 Cactus Apple |q 25136/1
step
ding 3
step
goto 34.6,44.31
.talk 3287
..accept 25129
step
goto 34.1,62.81
.from Sarkoth##3281
.get Sarkoth's Mangled Claw |q 25129/1
step
goto 34.6,44.31
.talk 3287
..turnin 25129
..accept 25130
step
goto 44.9,66.51
.talk 3143
..turnin 25127
..turnin 25130
step
goto 41.6,65.71
.talk 3156
..turnin 3090
..accept 25145
only Orc Warlock
step
goto 44.0,70.11
.' Use your Corruption ability on the Training Dummy
.' Practice Corruption 5 times |q 25145/2
only Orc Warlock
step
goto 41.6,65.71
.talk 3156
..turnin 25145
only Orc Warlock
step
goto 42.1,69.5
.talk 39206
..turnin 25138
..accept 25149
only Orc Mage
step
goto 44.0,70.11
.' Use your Frost Nova ability on the Training Dummy
.' Practice Frost Nova 2 times |q 25149/2
only Orc Mage
step
goto 42.1,69.5
.talk 39206
..turnin 25149
only Orc Mage
step
goto 41.6,69.3
.talk 3157
..turnin 3089
..accept 25143
only Orc Shaman
step
goto 45.2,63.4
.' Use your Primal Strike ability on the Training Dummy
.' Practice Primal Strike 3 times |q 25143/2
only Orc Shaman
step
goto 41.6,69.3
.talk 3157
..turnin 25143
only Orc Shaman
step
goto 41.5,68.5
.talk 3155
..turnin 3088
..accept 25141
only Orc Rogue
step
goto 45.2,63.4
.' Use Sinister Strike on Training Dummies to build up combo points and then use Eviscerate.
.' Practice Eviscerate 3 times |q 25141/2
only Orc Rogue
step
goto 41.5,68.5
.talk 3155
..turnin 25141
only Orc Rogue
step
goto 43.6,71.2
.talk 3153
..turnin 2383
..accept 25147
only Orc Warrior
step
goto 44.8,69.7
.' Use your Charge ability on a Training Dummy
.' Practice Charge |q 25147/2
only Orc Warrior
step
goto 43.6,71.2
.talk 3153
..turnin 25147
only Orc Warrior
step
goto 43.4,70.7
.talk 39214
..turnin 3087
..accept 25139
only Orc Hunter
step
goto 44.8,70.5
.' Use your Steady Shot ability on a Training Dummy
.' Practice Steady Shot 5 Times |q 25139/2
only Orc Hunter
step
goto 43.4,70.7
.talk 39214
..turnin 25139
only Orc Hunter
step
goto 42.1,68.7
.talk 63296
..turnin 31156
..accept 31157
only Orc Monk
step
goto 44.8,70.5
.' Use your Tiger Palm ability on a Training Dummy
.' Practice Tiger Palm 2 times. |q 31157/2
only Orc Monk
step
goto 42.1,68.7
.talk 63296
..turnin 31157
only Orc monk
step
goto 41.8,70.0
.talk 5887
..accept 25128
step
goto 43.0,62.4
.talk 9796
..turnin 25136
step
ding 4
step
goto 45.8,63.4
.talk 3145
..accept 25131
step
goto 46.2,63.11
.talk 11378
..accept 25134
step
goto 54.5,57.0
.' Use your Foreman's Blackjack on Lazy Peons along this mountainside |use Foreman's Blackjack##16114 |tip You may have to stand next to them and wait for them to go to sleep, if they are all chopping trees.
.' Waken 4 Peons |q 25134/1
step
goto 53.8,24.8
.kill 8 Vile Familiar##3101+ |q 25131/1
step
goto 34.6,44.1
.talk 3287
..turnin 25128
step
goto 46.2,63.1
.talk 11378
..turnin 25134
step
goto 45.8,63.3
.talk 3145
..turnin 25131
..accept 25132
step
goto 46.2,63.1
.talk 11378
..accept 25135
step
.' Go inside the cave |goto Durotar 45.3,56.41 <5 |c
step
goto 40.7,52.4
.' Kill Felstalkers as you walk
.click Thazz'ril's Pick##4992
.get Thazz'ril's Pick |q 25135/1
step
goto 42.4,53.71
.' Kill Felstalkers as you walk
.from Yarrog Baneshadow##3183
.get Burning Blade Medallion |q 25132/2
step
'While inside this cave.
.kill 7 Felstalker##3102+ |q 25132/1
step
ding 5
step
'Hearth to Valley of Trials |goto Valley of Trials 45.2,69.0 <5 |use Hearthstone##6948 |noway |c
step
goto 46.2,63.1
.talk 11378
..turnin 25135
step
goto 45.8,63.3
.talk 3145
..turnin 25132
..accept 25133
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Durotar (1-11)\\Troll (1-5)",[[
author support@zygorguides.com
condition suggested raceclass('Troll') and level<=5
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Durotar (1-11)\\Durotar (5-8)
startlevel 1
dynamic on
step
goto Echo Isles 42.8,53.41
.talk 37951
..accept 31159 |only Troll Monk
..accept 24776 |only Troll Hunter
..accept 24607 |only Troll Warrior
..accept 24770 |only Troll Rogue
..accept 24782 |only Troll Priest
..accept 24764 |only Troll Druid
..accept 26272 |only Troll Warlock
..accept 24750 |only Troll Mage
..accept 24758 |only Troll Shaman
step
goto 49.9,52.71
.talk 38242
..turnin 24758
..accept 24759
only Troll Shaman
step
goto 59.7,52.11
.talk 38246
..turnin 24750
..accept 24751
only Troll Mage
step
goto 50.0,50.01
.talk 42618
..turnin 26272
..accept 26273
only Troll Warlock
step
goto 58.1,54.11
.talk 38243
..turnin 24764
..accept 24765
only Troll Druid
step
goto 58.1,49.11
.talk 38245
..turnin 24782
..accept 24783
only Troll Priest
step
goto 52.9,49.91
.talk 38244
..turnin 24770
..accept 24771
only Troll Rogue
step
goto 56.4,50.21
.talk 38247
..turnin 24776
..accept 24777
only Troll Hunter
step
goto 52.5,53.71
.talk 38037
..turnin 24607
..accept 24639
only Troll Warrior
step
goto 52.6,51.8
.talk 63310
..turnin 31159
..accept 31158
only Troll Monk
step
goto 52.9,53.21
.kill 6 Tiki Target##38038+ |q 24759/1
only Troll Shaman
step
goto 52.9,53.21
.kill 6 Tiki Target##38038+ |q 24771/1
only Troll Rogue
step
goto 52.9,53.21
.kill 6 Tiki Target##38038+ |q 24639/1
only Troll Warrior
step
goto 52.9,53.21
.kill 6 Tiki Target##38038+ |q 26273/1
only Troll Warlock
step
goto 56.4,50.11
.kill 6 Tiki Target##38038+ |q 24751/1
only Troll Mage
step
goto 56.4,50.11
.kill 6 Tiki Target##38038+ |q 24777/1
only Troll Hunter
step
goto 58.8,54.1
.kill 6 Tiki Target##38038+ |q 24765/1
only Troll Druid
step
goto 56.4,50.11
.kill 6 Tiki Target##38038+ |q 24783/1
only Troll Priest
step
goto 52.7,51.2
.kill 6 Tiki Target##38038+ |q 31158/1
only Troll Monk
step
goto 49.9,52.71
.talk 38242
..turnin 24759
..accept 24761
only Troll Shaman
step
goto 59.7,52.11
.talk 38246
..turnin 24751
..accept 24753
only Troll Mage
step
goto 50.1,50.01
.talk 42618
..turnin 26273
..accept 26275
only Troll Warlock
step
goto 58.1,54.11
.talk 38243
..turnin 24765
..accept 24767
only Troll Druid
step
goto 58.1,49.11
.talk 38245
..turnin 24783
..accept 24785
only Troll Priest
step
goto 52.9,49.91
.talk 38244
..turnin 24771
..accept 24773
only Troll Rogue
step
goto 56.4,50.11
.talk 38247
..turnin 24777
..accept 24779
only Troll Hunter
step
goto 52.6,53.61
.talk 38037
..turnin 24639
..accept 24641
only Troll Warrior
step
goto 52.6,51.8
.talk 63310
..turnin 31158
..accept 31160
only Troll Monk
step
goto 56.7,45.11
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 24767/1
only Troll Druid
step
goto 56.7,45.11
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 24785/1
only Troll Priest
step
goto 56.7,45.11
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 24753/1
only Troll Mage
step
goto 56.7,45.11
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 24779/1
only Troll Hunter
step
goto 47.9,49.31
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 24761/1
only Troll Shaman
step
goto 47.9,49.31
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 24641/1
only Troll Warrior
step
goto 47.9,49.31
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 26275/1
only Troll Warlock
step
goto 47.9,49.31
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 24773/1
only Troll Rogue
step
goto 46.5,52.9
.from Wildmane Cat##38046+
.get 6 Wildmane Cat Pelt |q 31160/1
only Troll Monk
step
ding 2
step
goto 50.1,52.81
.talk 38242
..turnin 24761
..accept 24762
only Troll Shaman
step
goto 59.7,52.11
.talk 38246
..turnin 24753
..accept 24754
only Troll Mage
step
goto 50.1,50.01
.talk 42618
..turnin 26275
..accept 26276
only Troll Warlock
step
goto 58.1,54.11
.talk 38243
..turnin 24767
..accept 24768
only Troll Druid
step
goto 58.1,49.11
.talk 38245
..turnin 24785
..accept 24786
only Troll Priest
step
goto 52.9,49.91
.talk 38244
..turnin 24773
..accept 24774
only Troll Rogue
step
goto 56.4,50.11
.talk 38247
..turnin 24779
..accept 24780
only Troll Hunter
step
goto 52.6,53.61
.talk 38037
..turnin 24641
..accept 24642
only Troll Warrior
step
goto 52.6,51.8
.talk 63310
..turnin 31160
..accept 31161
only Troll Monk
step
goto 57.6,52.71
.talk 39062
.' Tell him you are ready to face your challenge |q 26276/1
.kill Captive Spitescale Scout##38142+ |q 24754/2
only Troll Mage
step
goto 57.6,52.71
.talk 39062
.' Tell him you are ready to face your challenge |q 24768/1
.kill Captive Spitescale Scout##38142+ |q 24768/2
only Troll Druid
step
goto 57.6,52.71
.talk 39062
.' Tell him you are ready to face your challenge |q 24786/1
.kill Captive Spitescale Scout##38142+ |q 24786/2
only Troll Priest
step
goto 57.6,52.71
.talk 39062
.' Tell him you are ready to face your challenge |q 24780/1
.kill Captive Spitescale Scout##38142+ |q 24780/2
only Troll Hunter
step
goto 57.6,52.71
.talk 39062
.' Tell him you are ready to face your challenge |q 24774/1
.kill Captive Spitescale Scout##38142+ |q 24774/2
only Troll Rogue
step
goto 57.6,52.71
.talk 39062
.' Tell him you are ready to face your challenge |q 24642/1
.kill Captive Spitescale Scout##38142+ |q 24642/2
only Troll Warrior
step
goto 57.6,52.71
.talk 39062
.' Tell him you are ready to face your challenge |q 26276/1
.kill Captive Spitescale Scout##38142+ |q 26276/2
only Troll Warlock
step
goto 57.6,52.71
.talk 39062
.' Tell him you are ready to face your challenge |q 24762/1
.kill Captive Spitescale Scout##38142+ |q 24762/2
only Troll Shaman
step
goto 57.6,52.71
.talk 39062
.' Tell him you are ready to face your challenge |q 31161/1
.kill Captive Spitescale Scout##38142+ |q 31161/2
only Troll Monk
step
goto 50.1,52.81
.talk 38242
..turnin 24762
..accept 24760
only Troll Shaman
step
goto 59.7,52.11
.talk 38246
..turnin 24754
..accept 24752
only Troll Mage
step
goto 50.1,50.01
.talk 42618
..turnin 26276
..accept 26274
only Troll Warlock
step
goto 58.1,54.11
.talk 38243
..turnin 24768
..accept 24766
only Troll Druid
step
goto 58.1,49.11
.talk 38245
..turnin 24786
..accept 24784
only Troll Priest
step
goto 52.9,49.91
.talk 38244
..turnin 24774
..accept 24772
only Troll Rogue
step
goto 56.4,50.11
.talk 38247
..turnin 24780
..accept 24778
only Troll Hunter
step
goto 52.6,53.61
.talk 38037
..turnin 24642
..accept 24640
only Troll Warrior
step
goto 52.0,52.0
.talk 63310
..turnin 31161
..accept 31162
only Troll Monk
step
ding 3
step
goto 49.9,54.11
.' Use your Primal Strike ability on the Tiki Target
.' Practice Primal Strike 3 times |q 24760/2
only Troll Shaman
step
goto 50.1,52.81
.talk 38242
..turnin 24760
..accept 24763
only Troll Shaman
step
goto 60.9,52.61
.' Use Frost Nova on the Training Dummies.
.' Practice casting Frost Nova 2 times |q 24752/2
only Troll Mage
step
goto 52.7,51.2
.' Use Tiger Palm on a Tiki Target. 
.' Practice Tiger Palm |q 31162/2
only Troll Monk
step
goto 59.7,52.11
.talk 38246
..turnin 24752
..accept 24755
only Troll Mage
step
goto 50.4,48.81
.' Use your Corruption on the Tiki Targets
.' Practice Corruption 5 times |q 26274/2
only Troll Warlock
step
goto 50.1,50.01
.talk 42618
..turnin 26274
..accept 26277
only Troll Warlock
step
goto 58.7,53.9
.' Use Moonfire on the Tiki Targets
.' Practice Moonfire |q 24766/2
only Troll Druid
step
goto 58.1,54.11
.talk 38243
..turnin 24766
..accept 24769
only Troll Druid
step
goto 58.5,49.71
.' Use your Shadow Word: Pain ability on the Tiki Targets
.' Practice Shadow Word: Pain 5 times |q 24784/2
only Troll Priest
step
goto 58.1,49.11
.talk 38245
..turnin 24784
..accept 24787
only Troll Priest
step
goto 52.9,49.21
.' Use Sinister Strike to build up combo points and then use your Eviscerate ability on the Tiki Targets
.' Practice Eviscerate 3 times |q 24772/2
only Troll Rogue
step
goto 52.9,49.91
.talk 38244
..turnin 24772
..accept 24775
only Troll Rogue
step
goto 55.8,50.41
.' Use your Steady Shot ability on the Tiki Targets
.' Practice Steady Shot 5 times |q 24778/2
only Troll Hunter
step
goto 56.4,50.11
.talk 38247
..turnin 24778
..accept 24781
only Troll Hunter
step
goto 52.5,53.51
.' Use your Charge ability on a Tiki Target
.' Practice Charge |q 24640/2
only Troll Warrior
step
goto 52.6,53.61
.talk 38037
..turnin 24640
..accept 24643
only Troll Warrior
step
goto 52.0,52.0
.talk 63310
..turnin 31162
..accept 31163
only Troll Monk
step
goto 61.5,65.91
.talk 38966
..turnin 24781 |only Troll Hunter
..turnin 24643 |only Troll Warrior
..turnin 24775 |only Troll Rogue
..turnin 24787 |only Troll Priest
..turnin 24769 |only Troll Druid
..turnin 26277 |only Troll Warlock
..turnin 24755 |only Troll Mage
..turnin 24763 |only Troll Shaman
..turnin 31163 |only Troll Monk
..accept 25064
step
goto 60.5,62.91
.talk 39007
..accept 25037
step
goto 66.0,55.81
.from Pygmy Surf Crawler##39004+
.get 5 Fresh Crawler Meat |q 25037/1
step
goto 60.5,62.91
.talk 39007
..turnin 25037
step
goto 56.8,63.71
.talk 38005
..turnin 25064
..accept 24622
step
goto 45.5,85.21
.talk 37969
..turnin 24622
..accept 24623
step
goto 45.7,84.91
.talk 37987
..accept 24624
..accept 24625
step
goto 36.8,69.01
.from Naj'tess##39072
.get Naj'tess' Orb of Corruption |q 24625/1
.kill 8 Corrupted Bloodtalon##37961+ |q 24624/1
.' Use your Bloodtalon Whistle near Lost Bloodtalon Hatchlings |use Bloodtalon Whistle##52283 |tip They look like tiny red raptors around this area.
.' Rescue 12 Bloodtalon Hatchlings |q 24623/1
step
ding 4
step
goto 45.5,85.21
.talk 37969
..turnin 24623
step
goto 45.7,84.91
.talk 37987
..turnin 24624
..turnin 24625
step
goto 45.5,85.21
.talk 37969
..accept 24626
step
goto 42.9,84.61
.' Use your Bloodtalon Lasso on Swiftclaw |use Bloodtalon Lasso##50053 |tip Swiftclaw is a dark colored raptor that runs really fast around this area, so you may need to search for him.
.' Capture Swiftclaw |q 24626/1
step
goto 52.9,65.31
.' Run to this spot while riding Swiftclaw
.' Return Swiftclaw to the Raptor Pens |q 24626/2
step
goto 56.8,63.71
.talk 38005
..turnin 24626
step
goto 61.9,65.51
.talk 38440
..accept 25035
step
goto 59.0,66.81
.talk 38989
..' Ask him if he has a raptor that can take you there |goto Durotar,67.9,74.3,0.5 |noway |c |q 25035
step
goto 59.0,23.11
.talk 38442
..turnin 25035
..accept 24812
..accept 24813
step
goto 59.3,64.61
' |from Spitescale Wavethrasher##38300+, Spitescale Siren##38301+
.kill 12 Spitelash Naga |q 24812/1
.' Use your Territorial Fetish next to Spitescale Flags |use Territorial Fetish##52065 |tip They look like red penant flags on blue-ish tridents stuck in the ground all around inside this cave.
.' Place 8 Territorial Fetishes |q 24813/1
step
ding 5
step
goto 59.0,23.11
.talk 38442
..turnin 24812
..turnin 24813
..accept 24814
step
goto 62.2,18.01
.talk 10540 |tip Follow the path around the island to find him, don't go inside the cave.
..' Tell him you are ready |q 24814/1
.' Help Vol'jin fight Zat'jira and click the 3 braziers behind Zar'jira when the message displays on the screen telling you to stamp them out.
.kill Zar'jira##38306 |q 24814/2
step
goto 60.2,15.81
.talk 39027
.' Ask her to take you back to Darkspear Hold
goto 68.2,87.8 |noway |c
step
goto 61.6,65.91
.talk 10540
..turnin 24814
..accept 25073
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Durotar (1-11)\\Durotar (5-8)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Durotar (1-11)\\Durotar (8-11)
startlevel 5.50
dynamic on
step
goto Durotar,55.4,73.3
.talk 41142
.fpath Sen'jin Village
step
goto 56.0,74.7
.talk 3188
..turnin 25133 |only Orc
..turnin 25073 |only Troll
..accept 25167
step
goto 55.7,75.3
.talk 10578
..accept 25170
step
goto 55.4,79.3
.from Surf Crawler##3107+
.get 5 Crawler Mucus |q 25170/1
step
goto 52.2,81.2
.' Destroy 3 Northwatch Supply Crates |q 25167/1 |tip They are huge wooden crates with big red + signs on them, being carried by Northwatch Lugs.
.kill 10 Northwatch Lug##39249+ |q 25167/2
step
goto 55.7,75.3
.talk 10578
..turnin 25170
..accept 25165
step
goto 56.0,74.7
.talk 3188
..turnin 25167
..accept 25168
step
goto 55.4,75.1
.talk 3140
..accept 25169
step
ding 6
step
goto 52.4,74.4
.' Use your Poison Extraction Totem |use Poison Extraction Totem##52505
.' Fight Clattering Scorpions next to the Poison Extraction Totem
.' Collect 6 Samples of Scorpid Venom |q 25165/1
step
goto 50.8,79.1 |n
.' Enter the Northwatch Foothold here |goto Durotar,50.8,79.1,0.5 |noway |c
step
goto 49.7,81.6
.click the Attack Plan: Valley of Trials##210
.' Burn the Attack Plan: Valley of Trials |q 25169/1
step
goto 47.9,77.5
.click the Attack Plan: Sen'jin Village |tip It looks like a piece of paper laying on a wooden crate, in between 2 white tents.
.' Burn the Attack Plan: Sen'jin Village |q 25169/2
step
goto 46.4,78.8
.click the Attack Plan: Orgrimmar |tip It looks like a piece of paper laying on the ground, under a bed in a blue tent.
.' Burn the Attack Plan: Orgrimmar |q 25169/3
step
goto 49.4,79.3
' |from Northwatch Ranger##39261+, Northwatch Infantryman##39260+
.kill 12 Northwatch Troop |q 25168/1
step
goto 50.8,79.1 |n
.' Leave the Northwatch Foothold here |goto Durotar,50.8,79.1,0.5 |noway |c
step
goto 55.7,75.3
.talk 10578
..turnin 25165
step
goto 55.4,75.1
.talk 3140
..turnin 25169
step
goto 56.0,74.7
.talk 3188
..turnin 25168
..accept 25171
step
goto 55.3,74.7
.talk 10676
..' Ask him if you can catch a ride to Razor Hill
.' Ride to Razor Hill |goto Durotar,52.5,44.2,0.5 |noway |c |q 25171
step
goto 53.1,43.6
.talk 41140
.fpath Razor Hill
step
goto 51.9,43.5
.talk 3139
..turnin 25171
..accept 25173
step
goto 51.5,41.6
.talk 6928
.home Razor Hill
step
goto 53.1,43.1
.talk 39423
..accept 25176
step
goto 59.7,58.3
.click Kul Tiras Treasures and get Kul Tiras Treasure |tip They look like wooden chests on the ground around this area.
.kill Lieutenant Palliter##39269 |q 25173/3 |tip He's in the top room of the fort.
step
ding 7
step
goto 58.2,55.4
.kill 6 Northwatch Sharpshooter##39268+ |q 25173/2
.kill 6 Northwatch Marine##39267+ |q 25173/1
.click Kul Tiras Treasures |tip They look like wooden chests on the ground around this area.
.get 6 Kul Tiras Treasure |q 25176/1
step
'Hearth to Razor Hill |goto Durotar,51.6,41.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 51.9,43.5
.talk 3139
..turnin 25173
..accept 25177
step
goto 53.1,43.1
.talk 39423
..turnin 25176
..accept 25178
step
goto 58.0,46.2
.kill 11 Foaming Sea Elemental##39272+ |q 25177/1
.click Gnomish Toolboxes |tip They look like small metal chests on the ground around this area.
.get 4 Gnomish Tools |q 25178/1
.talk 39270
..accept 25179
.talk 39270
.' Rescue 4 Injured Razor Hill Grunts |q 25179/1
step
goto 53.1,43.1
.talk 39423
..turnin 25178
..accept 25227
step
goto 51.9,43.5
.talk 3139
..turnin 25177
..turnin 25179
step
ding 8
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Durotar (1-11)\\Durotar (8-11)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Northern Barrens (10-20)\\Northern Barrens (10-13)
startlevel 8.10
dynamic on
step
goto Durotar,52.2,43.2
.talk 3142
..accept 25232
step
goto 50.7,42.8
.talk 3881
..accept 6365
only Troll,Orc
step
goto 53.1,43.6
.talk 41140
..turnin 6365
..accept 6384
only Troll,Orc
step
goto 53.1,43.6
.talk 41140
.' Fly to Orgrimmar, Durotar |goto Orgrimmar,49.3,59.4,0.5 |noway |c
only Troll,Orc
step
goto Orgrimmar,53.6,78.8
.talk 6929
..turnin 6384
..accept 6385
only Troll,Orc
step
goto 49.7,59.2
.talk 3310
..turnin 6385
..accept 6386
only Troll,Orc
step
goto 49.7,59.2
.talk 3310
.' Fly to Razor Hill, Durotar |goto Durotar,53.0,43.6,0.5 |noway |c
only Troll,Orc
step
goto Durotar,50.7,42.8
.talk 3881
..turnin 6386
only Troll,Orc
step
goto 49.6,40.2
.talk 39323
..turnin 25227
..accept 25187
step
goto 49.6,40.2
.' Use Thonk's Spyglass at the top of the tower |use Thonk's Spyglass##52514 |tip You will need to use Thonk's Spyglass 4 times.
.' Find Raggaran |q 25187/1
.' Find the flooded hut |q 25187/2
.' Find Misha |q 25187/3
.' Find Zen'Taji |q 25187/4
step
goto 49.6,40.2
.talk 39323
..turnin 25187
..accept 25188
step
goto 43.4,30.6
.talk 3193
..accept 25193
step
goto 42.9,34.1
.from Dreadmaw Toothgnasher##39452
.get 250 Durotar Crocolisk Tooth |q 25193/1
step
goto 43.4,30.6
.talk 3193
..turnin 25193
.' Help Misha Tor'kren |q 25188/3
step
goto 40.6,35.0
.talk 39325
..accept 25189
.' Escort Grandmatron Tekla to Raggaran |q 25189/1
step
goto 42.7,49.9
.talk 39326
..turnin 25189
..accept 25190
.' Help Grandmatron Tekla |q 25188/1
step
goto 44.1,49.2
.kill 4 Razormane Quilboar##3111+ |q 25190/1
.kill 4 Razormane Scout##3112+ |q 25190/2
step
goto 42.7,49.9
.talk 39326
..turnin 25190
..accept 25192
step
ding 9
step
goto 38.1,55.3
.kill 5 Razormane Dustrunner##3113+ |q 25192/1
.kill 5 Razormane Battleguard##3114+ |q 25192/2
step
goto 42.7,49.9
.talk 39326
..turnin 25192
.' Help Raggaran |q 25188/2
step
goto 35.8,41.4
.talk 39324
..accept 25194
step
goto 35.3,39.6
.from Wayward Plainstrider##39337+ |tip Don't actually kill them, just get them to low health or you won't get credit.  You will find them spread out along the coastline.
.' Return 3 Wayward Plainstriders |q 25194/1
step
goto 35.8,41.4
.talk 39324
..turnin 25194
..accept 25195
step
goto 35.4,30.5
.kill Screamslash##39385 |q 25195/1 |tip He walks around this area.
step
goto 35.8,41.4
.talk 39324
..turnin 25195
.' Help Zen'Taji |q 25188/4
step
'Hearth to Razor Hill |goto Durotar,51.5,41.6,0.5 |use hearthstone##6948 |noway |c
step
goto 49.6,40.2
.talk 39323
..turnin 25188
step
goto 53.1,40.5 |n
.' Follow the path to the right of the canyon.  Don't walk into the canyon heading north. |goto Durotar,53.1,40.5,0.5 |noway |c
step
goto 52.8,28.9 |n
.' Enter the cave |goto Durotar,52.8,28.9,0.5 |noway |c
step
goto 53.1,27.2
.from Burning Blade Thug##3195+, Burning Blade Neophyte##3196+, Burning Blade Cultist##3199+
.get 6 Burning Blade Spellscroll |q 25232/1
step
goto 52.8,28.9 |n
.' Leave the cave |goto Durotar,52.8,28.9,0.5 |noway |c
step
goto 52.2,43.2
.talk 3142
..turnin 25232
..accept 25196
step
goto 46.4,22.9
.talk 3293
..accept 834
..accept 835
step
goto 49.3,21.7
' |from Dustwind Harpy##3115+, Dustwind Pillager##3116+
.kill 12 Durotar Harpy |q 835/1
.click Stolen Supply Sacks |tip They look like small tan sacks on the ground around this area.
.get 5 Sack of Supplies |q 834/1
step
ding 10
step
goto 46.4,22.9
.talk 3293
..turnin 834
..turnin 835
step
goto Durotar,45.0,14.8
.talk 39379
..turnin 25196
..accept 25260
..accept 25236
step
goto Durotar,44.9,14.8
.talk 39380
..accept 25205
step
goto Durotar,44.9,14.8
.talk 39380
..' Ask him to tell you his fable |havebuff Interface\Icons\Ability_Mount_Kodo_03 |q 25205
step
goto Durotar,53.0,13.8
.' As the wolf, run to this spot |tip If you don't see 2 kodos fighting, look around this area to find some, then go stand next to them.
.' Listen to the shaman's fable |q 25205/1
step
goto Durotar,44.9,14.8
.talk 39380
..turnin 25205
step
goto Durotar,45.0,14.8
.talk 39379
..accept 25206
step
goto Durotar,38.0,22.3
' |from Teeming Waterguard##39596+, Furious Earthguard##39595+
.kill 12 Warring Elemental |q 25206/1
step
goto Durotar,39.9,24.4
.click Drowned Thunder Lizards |tip They are underwater, on the ground.
.' Remove 8 Drowned Thunder Lizards |q 25236/1
step
goto Durotar,42.1,26.7
.click Fizzle Darkclaw's corpse |tip It's floating underwater.
..' Attempt to remove the orb, then attempt to remove Fizzle's Hand
.get Fizzle's Orb |q 25260/1
step
goto Durotar,45.0,14.8
.talk 39379
..turnin 25260
..accept 25261
..turnin 25236
..turnin 25206
..accept 25648
step
goto Durotar,56.4,20.0
.talk 3208
..turnin 25261
..accept 25262
step
goto Durotar,56.3,20.2
.talk 39604
..accept 25256
step
goto Durotar,58.8,23.2
.talk 39590
..turnin 25256
..accept 25257
..accept 25258
..accept 25259
step
goto Durotar,59.0,22.2
.talk 39353
..' Challenge him to combat
..' Defeat Griswold Hanniston |q 25258/1
step
goto Durotar,59.7,22.6
.talk 39351
..' Challenge her to combat
..' Defeat Ghislania |q 25257/1
step
goto Durotar,59.4,23.5
.talk 39352
..' Challenge him to combat
..' Defeat Gaur Icehorn |q 25259/1
step
goto Durotar,58.8,23.2
.talk 39590
..turnin 25257
..turnin 25258
..turnin 25259
step
ding 11
step
goto Durotar,55.1,10.0
.from Burning Blade Fanatic##3197+, Burning Blade Apprentice##3198+
.get 6 Searing Collar |q 25262/1
step
goto Durotar,56.4,20.0
.talk 3208
..turnin 25262
..accept 25263
step
'Go northwest to Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,47.6,71.2
.talk 35068
..accept 26642
step
goto 45.9,66.9 |n
.' The path down to Neeru Fireblade starts here |goto Orgrimmar,45.9,66.9,0.5 |noway |c
step
goto 49.9,59.2
.talk 3216
..turnin 25263
..accept 25264
step
'Hearth to Razor Hill |goto Durotar,51.5,41.6,0.5 |use hearthstone##6948 |noway |c
step
goto Durotar,50.8,43.6
.talk 3336
..accept 840
step
'Go west to Northern Barrens |goto Northern Barrens |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Mulgore (1-10)\\Tauren (1-4)",[[
author support@zygorguides.com
condition suggested raceclass('Tauren') and level<=4
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Mulgore (1-10)\\Mulgore (4-10)
startlevel 1
dynamic on
step
goto Camp Narache 27.7,28.31
.talk 2981
..accept 14449
step
goto 39.5,37.31
.talk 2980
..turnin 14449
..accept 14452
step
goto 48.1,42.01
' |from Bristleback Invader##36943+
.kill 8 Bristleback Quilboar |q 14452/1
step
goto 39.5,37.31
.talk 2980
..turnin 14452
..accept 24852
step
ding 2
step
goto 48.9,33.61
.click Quilboar Cages
.' Free 4 Braves |q 24852/1
'|model Quilboar Cage##1787
step
goto 39.5,37.31
.talk 2980
..turnin 24852
..accept 14458
step
goto 30.9,50.61
.talk 36694
..turnin 14458
..accept 14456
..accept 14455
step
goto 35.9,68.01
.kill 7 Bristleback Thorncaller##36697+ |q 14455/1
.from Bristleback Gun Thief##36708+
.get 7 Stolen Rifle |q 14456/1
step
ding 3
step
goto 30.9,50.61
.talk 36694
..turnin 14456
..turnin 14455
..accept 14459
..accept 14461
step
goto 30.8,49.41
.talk 44927
..accept 3092 |only Tauren Hunter
..accept 3091 |only Tauren Warrior
..accept 3094 |only Tauren Druid
..accept 3093 |only Tauren Shaman
..accept 27014 |only Tauren Priest
..accept 27015 |only Tauren Paladin
..accept 31165 |only Tauren Monk
step
goto Mulgore 44.7,87.81
.' Use Adana's Torch next to the tub of meat |use Adana's Torch##49539 |tip It looks like a wooden tub full of pink meat.
.' Burn the First Trough |q 14461/1
step
goto 44.3,88.71
.' Use Adana's Torch next to the tub of meat |use Adana's Torch##49539 |tip It looks like a wooden tub full of pink meat.
.' Burn the Second Trough |q 14461/2
step
goto 45.3,89.11
.' Use Adana's Torch next to the tub of meat |use Adana's Torch##49539 |tip It looks like a wooden tub full of pink meat.
.' Burn the Third Trough |q 14461/3
.kill 10 Armored Battleboar##36696+ |q 14459/1
step
goto Camp Narache 30.9,50.61
.talk 36694
..turnin 14459
..turnin 14461
..accept 14460
step
ding 4
step
goto Mulgore 41.1,81.41
.from Chief Squealer Thornmantle##36712
.get Mane of Thornmantle |q 14460/1
step
'Hearth to Camp Narache |goto Camp Narache 27.6,28.61 <5 |use Hearthstone##6948 |noway |c
step
goto 27.7,28.21
.talk 2981
..turnin 14460
..accept 24861
step
goto 27.5,27.71
.' Use your Water Pitcher under the wooden burial stand |use Water Pitcher##50465
.' Place the Offering |q 24861/1
step
goto 27.7,28.21
.talk 2981
..turnin 24861
..accept 23733
step
goto 28.0,28.3 
.talk 63327
..turnin 31165
..accept 31166
only Tauren Monk
step
goto 28.6,28.2
.' Use your Tiger Palm ability on the Training Dummy.
.' Practice Tiger Palm |q 31166/2
'|from Training Dummy##48304
only Tauren Monk
step
goto 28.0,28.3 
.talk 63327
..turnin 31166
only Tauren Monk
step
goto 27.1,27.91
.talk 37737
..turnin 27015
..accept 27023
only Tauren Paladin
step
goto 29.2,27.81
.' Use your Seal of Command ability, then strike the Training Dummy |q 27023/2
'|from Training Dummy##48304
only Tauren Paladin
step
goto 27.1,27.91
.talk 37737
..turnin 27023
only Tauren Paladin
step
goto 27.2,27.41
.talk 37724
..turnin 27014
..accept 27066
only Tauren Priest
step
goto 29.3,28.01
.' Use your Shadow Word: Pain ability on a Training Dummy
.' Practice Shadow Word: Pain 5 times |q 27066/2
'|from Training Dummy##48304
only Tauren Priest
step
goto 27.2,27.41
.talk 37724
..turnin 27066
only Tauren Priest
step
goto 27.6,27.21
.talk 3062
..turnin 3093
..accept 27027
only Tauren Shaman
step
goto 29.2,27.81
.' Use your Primal Strike ability on a Training Dummy
.' Practice Primal Strike 3 times |q 27027/2
'|from Training Dummy##48304
only Tauren Shaman
step
goto 27.6,27.21
.talk 3062
..turnin 27027
only Tauren Shaman
step
goto 27.9,27.31
.talk 3060
..turnin 3094
..accept 27067
only Tauren Druid
step
goto 29.3,28.01
.' Use your Moonfire ability on a Training Dummy
.' Practice Moonfire |q 27067/2
'|from Training Dummy##48304
only Tauren Druid
step
goto 27.9,27.31
.talk 3060
..turnin 27067
only Tauren Druid
step
goto 27.2,28.51
.talk 3059
..turnin 3091
..accept 27020
only Tauren Warrior
step
goto 29.3,28.01
.' Use your Charge ability on a Training Dummy
.' Practice Charge |q 27020/2
'|from Training Dummy##48304
only Tauren Warrior
step
goto 27.2,28.51
.talk 3059
..turnin 27020
only Tauren Warrior
step
goto 28.1,27.81
.talk 3061
..turnin 3092
..accept 27021
only Tauren Hunter
step
goto 29.3,28.01
.' Use your Steady Shot ability on a Training Dummy
.' Practice Steady Shot 5 Times |q 27021/2
'|from Training Dummy##48304
only Tauren Hunter
step
goto 28.1,27.81
.talk 3061
..turnin 27021
only Tauren Hunter
step
.' Follow the path up |goto 19.2,33.61 <5 |c
step
goto 15.6,30.31
.talk 36803
..turnin 23733
..accept 24215
step
'Use your Water of Vision in your bags |use Water of Vision##49652
.' You will fly to Bloodhoof Village |goto Mulgore,47.8,59.9,0.5 |noway |c |q 24215
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Mulgore (1-10)\\Mulgore (4-10)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Northern Barrens (10-20)\\Northern Barrens (10-13)
startlevel 4.88
dynamic on
step
goto Mulgore,47.7,59.6
.talk 36644
..turnin 24215 |tip You may not have this breadcrumb quest to turn in, depending on which guides you completed.
..accept 14438
step
goto 48.6,59.8
.talk 2948
..accept 20440
only Tauren
step
goto 48.8,58.8
.talk 2947
..accept 761
step
goto 46.8,60.4
.talk 6747
.home Bloodhoof Village
step
goto 48.3,53.1
.talk 23618
..accept 11129
step
ding 5
step
goto 55.3,63.1
.from Adult Plainstrider##2956+
.get 4 Plainstrider Talon |q 20440/2 |only Tauren
.collect 1 Tender Strider Meat##33009 |q 11129
.from Swoop##2970+
.get 8 Trophy Swoop Quill |q 761/1
.from Prairie Wolf##2958+ |only Tauren
.get 6 Prairie Wolf Paw |q 20440/1 |only Tauren
step
goto 53.0,71.0
'|from Palemane Skinner##2950+, Palemane Poacher##2951+, Palemane Tanner##2949+
.kill 15 Palemane Gnoll |q 14438/1
step
goto 47.7,59.6
.talk 36644
..turnin 14438
..accept 14491
..accept 24459 |only if level <=6
step
ding 6
step
goto 47.5,61.3
.talk 2985
..accept 743
step
goto 48.6,59.8
.talk 2948
..turnin 20440
..accept 24440
only Tauren
step
goto 48.8,58.8
.talk 2947
..turnin 761
step
goto 47.2,56.7
.talk 3055
..accept 26188
step
goto 48.6,61.4
.' Use Tender Strider Meat on Kyle the Frenzied when Kyle is running nearby |use Tender Strider Meat##33009 |tip Kyle the Frenzied is a white wolf that runs around Bloodhoof Village, so you may need to search for him.
.' Feed Kyle |q 11129/1
step
goto 53.4,65.3
.' Use your Winterhoof Cleansing Totem next to the well |use Winterhoof Cleansing Totem##5411
.' Cleanse the Well |q 24440/1
only Tauren
step
goto 57.1,60.4
.talk 2988
..turnin 24459
..accept 749
step
goto 62.7,69.0
.from Windfury Wind Witch##2963+, Windfury Harpy##2962+
.get 8 Windfury Talon |q 743/1
step
'Hearth to Bloodhoof Village |goto Mulgore,46.8,60.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 47.5,61.3
.talk 2985
..turnin 743
step
goto 48.6,59.8
.talk 2948
..turnin 24440
..accept 24441
only Tauren
step
goto 48.3,53.1
.talk 23618
..turnin 11129
step
ding 7
step
goto 53.5,48.3
.click the Sealed Supply Crate |tip It's a crate sitting on the ground next to a bonfire.
..turnin 749
..accept 751
step
goto 55.4,49.9
.from Prairie Stalker##2959+
.get 6 Stalker Claws |q 24441/1
.from Flatland Cougar##3035+
.get Flatland Cougar Femur |q 26188/1
.get 6 Cougar Claws |q 24441/2
.' You can find more around [57.1,44.9]
step
goto 57.1,60.4
.talk 2988
..turnin 751
..accept 26179
..accept 26180
step
goto 60.8,47.4 |n
.' Enter the mine |goto 60.8,47.4,0.5 |noway |c
step
goto 61.1,46.5
.from Supervisor Fizsprocket##3051
.get Fizsprocket's Clipboard |q 26180/1
step
goto 60.8,47.4 |n
.' Leave the mine |goto 60.8,47.4,0.5 |noway |c
step
goto 59.5,50.0
.kill 7 Venture Co. Worker##2978+ |q 26179/1
step
goto 57.1,60.4
.talk 2988
..turnin 26179
..turnin 26180
step
ding 8
step
goto 48.6,59.8
.talk 2948
..turnin 24441
..accept 24456
only Tauren
step
goto 46.1,58.2
.talk 3079
..accept 6361
only Tauren
step
goto 47.4,58.6
.talk 40809
..turnin 6361
..accept 6362
only Tauren
step
goto 47.4,58.6
.talk 40809
.' Fly to Thunder Bluff, Mulgore |goto Thunder Bluff,46.7,49.9,0.5 |noway |c
only Tauren
step
goto Thunder Bluff,45.8,55.9
.talk 8359
..turnin 6362
..accept 6363
only Tauren
step
goto 47.0,49.8
.talk 2995
..turnin 6363
..accept 6364
only Tauren
step
goto 47.0,49.8
.talk 2995
.' Fly to Bloodhoof Village, Mulgore |goto Mulgore,47.4,58.6,0.5 |noway |c
only Tauren
step
goto Mulgore,46.1,58.2
.talk 3079
..turnin 6364
only Tauren
step
goto 47.2,56.7
.talk 3055
..turnin 26188
step
goto 44.8,45.7
.' Use your Thunderhorn Cleansing Totem next to the well |use Thunderhorn Cleansing Totem##5415
.' Clean the Well |q 24456/1
only Tauren
step
goto 33.5,48.9
.' Use your Drum of Soothed Earth on Agitated Earth Spirits |use Drum of Soothed Earth##49647 |tip They look like rock elementals.
.' Calm 6 Spirits |q 14491/1
step
'Hearth to Bloodhoof Village |goto Mulgore,46.8,60.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 47.7,59.6
.talk 36644
..turnin 14491
step
goto 48.6,59.8
.talk 2948
..turnin 24456
..accept 24457
only Tauren
step
goto 47.9,57.1
.talk 3054
..turnin 24457
..accept 20441
only Tauren
step
goto 47.9,57.1
.' Use your Water of Vision next to the bonfire |use Water of Vision##49651
.' You will run to Camp Sungraze |goto Mulgore,49.4,17.5,0.5 |noway |c |q 20441
only Tauren
step
ding 9
step
goto Mulgore,49.4,17.3
.talk 37024
..turnin 20441 |tip You may not have this breadcrumb quest to turn in, depending on which guides you completed.
..accept 24523
only Tauren
step
goto 49.5,17.1
.talk 3233
..accept 773
..accept 833
step
goto 49.7,17.2
.talk 3052
..accept 861
step
goto 49.6,17.6
.talk 2987
..accept 744
step
goto 50.1,19.8
.from Prairie Wolf Alpha##2960+
.get 4 Prairie Alpha Tooth |q 24523/1
.from Flatland Prowler##3566+
.get 4 Flatland Prowler Claw |q 861/1
only Tauren
step
goto 54.9,19.8
.from Windfury Matriarch##2965+
.get 6 Bronze Feather |q 744/2
.from Windfury Sorceress##2964+
.get 6 Azure Feather |q 744/1
step
goto 60.8,22.7
.talk 2994
..turnin 773
step
goto 60.9,23.8
.kill 8 Bristleback Interloper##3232+ |q 833/1
step
goto 49.4,17.3
.talk 37024
..turnin 24523
..accept 24524
only Tauren
step
goto 49.5,17.1
.talk 3233
..turnin 833
step
goto 49.7,17.2
.talk 3052
..turnin 861
step
goto Mulgore,49.6,17.6
.talk 2987
..turnin 744
step
ding 10
step
goto 43.3,16.1
.' Use your Wildmane Cleansing Totem next to the well |use Wildmane Cleansing Totem##5416
.' Cleanse the Wildmane Well |q 24524/1
only Tauren
step
goto 49.4,17.3
.talk 37024
..turnin 24524
..accept 24550
only Tauren
step
'Go southwest into Thunder Bluff |goto Thunder Bluff |noway |c
step
goto Thunder Bluff,60.3,51.7
.talk 2993
..turnin 24550
..accept 24540 |only Tauren
step
goto 54.3,26.9 |n
.' Ride the elevator down and go outside to Mulgore |goto Mulgore |noway |c
only Tauren
step
goto Mulgore,37.0,12.0
.kill Orno Grimtotem##36931 |q 24540/1 |tip Don't worry that he's elite, Baine Bloodhoof will come and kill him for you.
only Tauren
step
'Go south into Thunder Bluff |goto Thunder Bluff |noway |c
only Tauren
step
goto Thunder Bluff,60.3,51.7
.talk 2993
..turnin 24540
..accept 26397
only Tauren
step
goto 47.0,49.8
.talk 2995
..' Tell him to send you to Orgrimmar
.' You will fly to Orgrimmar |goto Orgrimmar,49.3,59.4,0.5 |noway |c
only Tauren
step
goto Orgrimmar,49.7,59.2
.talk 3310
.fpath Orgrimmar
step
goto 48.1,70.5
.talk 25237
..turnin 26397
step
goto 47.6,71.2
.talk 35068
..accept 26642
step
'Go outside to Durotar |goto Durotar |noway |c
step
goto 50.8,43.6
.talk 3336
..accept 840
step
'Go west to Northern Barrens |goto Northern Barrens |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Northern Barrens (10-20)\\Northern Barrens (10-13)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Northern Barrens (10-20)\\Northern Barrens (13-17)
startlevel 10.90
dynamic on
step
goto Northern Barrens,67.7,39.4
.talk 3337
..turnin 26642 |tip You may not have this breadcrumb quest to turn in, depending on which guides you completed.
..turnin 840 |tip You may not have this breadcrumb quest to turn in, depending on which guides you completed.
..accept 871
step
goto 67.4,38.7
.talk 34258
..accept 844
step
goto 67.3,37.0
.from Greater Plainstrider##3244+, Fleeting Plainstrider##3246+
.get 7 Plainstrider Beak |q 844/1
.' You can find more Greater Plainstriders at [64.6,41.3]
step
ding 11
step
goto 67.4,38.7
.talk 34258
..turnin 844
step
goto 67.8,40.6
.talk 3521
..turnin 25264 |tip You may not have this breadcrumb quest to turn in, depending on which guides you completed.
step
goto 67.1,45.5
.talk 34284
..accept 13878
step
goto 66.6,47.3
.click Wolf Chains##8721+
.' Free 3 Wolves |q 13878/1
step
ding 12
step
goto 66.8,49.8
.kill 8 Razormane Plunderer##3267+ |q 871/1
.kill 3 Razormane Hunter##3265+ |q 871/2
step
goto 67.1,45.5
.talk 34284
..turnin 13878
step
goto 67.7,39.4
.talk 3337
..turnin 871
..accept 872
step
goto 67.4,38.7
.talk 34258
..accept 5041
step
goto 66.0,52.5 |n
.' Enter the cave |goto Northern Barrens,66.0,52.5,0.5 |noway |c
step
goto 64.3,55.0
.' Follow the path in the cave until it dead ends on a small platform.
.from Kreenig Snarlsnout##3438
.get Kreenig Snarlsnout's Tusk |q 872/3
step
goto 64.7,53.2
.kill 5 Razormane Thornweaver#3268+ |q 872/1
.kill 5 Razormane Defender##3266+ |q 872/2
.click Crossroads Supply Crates |tip They look like wooden crates on the ground inside the cave.
.get 5 Crossroads Supply Crate |q 5041/1
step
goto 66.0,52.5 |n
.' Leave the cave |goto Northern Barrens,66.0,52.5,0.5 |noway |c
step
goto 67.7,39.4
.talk 3337
..turnin 872
step
goto 67.4,38.7
.talk 34258
..turnin 5041
..accept 13949
step
goto 67.4,38.7
.talk 34258
..' Tell her you're ready
.click the Lead Caravan Kodo that walks up to ride on it
.' Use your Shoot ability to kill the quilboars that attack the caravan as you ride the kodo |tip To kill them very easily, spam the 1 button on your hotbar and the Tab key on your keyboard together.
.' Escort the Caravan |q 13949/1
step
goto 56.5,40.4
.talk 5907
..turnin 13949
step
goto 56.6,40.3
.talk 34513
..accept 13961
step
goto 56.1,43.4
.' Use your Grol'dom Net on a Razormane Pillager |use Grol'dom Net##46722
.talk 34503
..' <Pound this chump.>
.' Drag a Razormane |havebuff Interface\Icons\INV_Misc_Head_Quillboar_01 |c |q 13961
step
goto 56.6,40.3
.' Deliver the Razormane Prisoner |q 13961/1
step
goto 56.6,40.3
.talk 34513
..turnin 13961
..accept 13963
step
goto 56.6,39.9
.talk 34523
..' Choose all three dialog options
.' Interrogate the Razormane Prisoner |q 13963/1
step
goto 56.6,40.3
.talk 34513
..turnin 13963
..accept 13968
step
goto 56.8,40.2
.talk 5907
..accept 13969
step
goto 55.2,41.0
.talk 3432
..accept 899
step
goto 53.9,40.9
.talk 34560
..accept 13973
step
goto 53.1,42.4
.kill 6 Razormane Pillager##34503+ |q 13973/1
step
goto 54.0,41.3
.talk 34560
..turnin 13973
step
goto 58.0,49.3
.talk 34547
..turnin 13969
..accept 13970
step
goto 62.1,48.6
.kill Tortusk##34544 |q 13968/1
step
goto 62.3,48.6
.from Razormane Geomancer##3269+, Razormane Frenzy##34545+
.get 30 Quilboar Tusk |q 899/1
.click Stolen Grain Sack##696
.get 5 Stolen Grain |q 13970/1
.' You can find more around [59.0,49.3]
step
goto 58.0,49.3
.talk 34547
..turnin 13970
..accept 13971
step
ding 13
step
goto 56.4,40.3
.talk 5907
..turnin 13971
step
goto 56.6,40.3
.talk 34513
..turnin 13968
step
goto 55.2,41.0
.talk 3432
..turnin 899
step
goto 54.6,41.5
.talk 34578
..accept 13975
step
goto 54.6,41.5
.talk 34578
..' Tell him to bring it on
.click the Head Caravan Kodo that walks up to ride on it
.' Use your abilities on your hotbar on the Burning Blade mobs that attack you |tip It's easier to just manually left click the Burning Blade mobs and spam the 1 button on your hotbar to shoot them all.  Don't bother with the melee attack at all.
.' Escort the Crossroads Caravan |q 13975/1
step
goto 48.7,59.6
.talk 3429
..turnin 13975
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Northern Barrens (10-20)\\Northern Barrens (13-17)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Northern Barrens (10-20)\\Northern Barrens (17-20)
startlevel 13.54
dynamic on
step
goto Northern Barrens,50.0,59.8
.talk 3338
..accept 845
..accept 903
step
goto 49.5,57.9
.talk 3934
.home The Crossroads
step
goto 49.5,58.7
.talk 3448
..accept 870
step
goto 48.7,58.7
.talk 3615
.fpath The Crossroads
step
goto 48.6,58.3
.talk 3390
..accept 848
step
goto 43.2,52.0
.from Zhevra Runner##3242+
.get 4 Zhevra Hooves |q 845/1
.from Savannah Huntress##3415+
.get 5 Huntress Claws |q 903/1
step
goto 50.0,59.8
.talk 3338
..turnin 845
..turnin 903
..accept 881
step
goto 44.9,47.8
.' Use your Horn of Echeyakee |use Horn of Echeyakee##10327
.from Echeyakee##3475
.' Conquer Echeyakee |q 881/1
step
goto 38.0,46.6
.talk 34841
..accept 850
step
goto 37.5,45.9
.talk 34613
..accept 13992
step
goto 37.3,44.9
.' Go to this spot underwater
.' Explore the waters of the Forgotten Pools |q 870/1
step
goto 37.0,44.2
.click Laden Mushrooms |tip They look like big blue mushrooms around this area.
.get 5 Fungal Spores |q 848/1
step
goto 33.3,46.7
.from Barak Kodobane##3394
.get Kodobane's Head |q 850/1
step
goto 36.4,45.8
.from Kolkar Wrangler##3272+, Kolkar Stormer##3273+
.' Kill 8 Kolkar Centaurs |q 13992/1
step
goto 37.5,45.9
.talk 34613
..turnin 13992
step
goto 38.0,46.6
.talk 34841
..turnin 850
step
ding 14
step
'Hearth to The Crossroads |goto 49.5,57.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 49.5,58.7
.talk 3448
..turnin 870
..accept 13988
step
goto 48.6,58.3
.talk 3390
..turnin 848
..accept 13998
step
goto 50.0,59.9
.talk 3338
..turnin 881
..accept 905
step
goto 48.6,72.1
.from Sunscale Lashtail##3254+, Sunscale Screecher##3255+
.collect 3 Sunscale Feather##5165 |q 905
step
goto 47.9,74.3 |n
.' Follow the path up |goto 47.9,74.3,0.5 |noway |c
step
goto 48.0,76.1
.' Use your Sunscale Feather next to the Sunscale Nest |use Sunscale Feather##5165 |tip It looks like a yellow-glowing straw nest with purple eggs in it.
.' Visit the Yellow Raptor Nest |q 905/2
step
goto 48.6,74.8
.' Use your Sunscale Feather next to the Sunscale Nest |use Sunscale Feather##5165 |tip It looks like a blue-glowing straw nest with purple eggs in it.
.' Visit the Blue Raptor Nest |q 905/3
step
goto 49.7,75.2
.' Use your Sunscale Feather next to the Sunscale Nest |use Sunscale Feather##5165 |tip It looks like a red-glowing straw nest with purple eggs in it.
.' Visit the Red Raptor Nest |q 905/1
step
goto 55.2,78.4
.talk 34638
..accept 14072
step
goto 55.0,78.7
.' Go to this spot
.' Use your Fungal Cultures |use Fungal Cultures##46789
.' Plant the Fungal Culture |q 13998/1
step
goto 55.0,78.7
.talk 34634
..accept 13995
.' Follow Gorgal Angerscar and kill the Kolkar centaurs that attack
.kill Kurak##34635 |q 13995/2
.' Cause Some Trouble |q 13995/1
step
goto 55.2,78.4
.talk 34638
..turnin 13995
step
goto 52.3,76.1
.click Centaur Intelligence##222
get 4 Centaur Intelligence##46857 |q 14072/1
.' You can find more:
.' Around [52.8,80.9]
.' Around [51.3,83.9]
.' Around [54.1,87.3]
step
goto 55.2,78.4
.talk 34638
..turnin 14072
..accept 851
step
goto 50.9,78.9
.from Wyneth##34846
.' Verog the Dervish will spawn after you kill Wyneth
.from Verog the Dervish##3395
.get Verog's Head |q 851/1
step
goto 55.2,78.4
.talk 34638
..turnin 851
step
goto 58.8,81.1 |n
.' Follow the path up |goto 58.8,81.1,0.5 |noway |c
step
goto 60.9,85.9,0.5
.'Take Tonga's Eyes to the summit |q 13988/1
.'Use Tonga's Totem to summon the companion again, if it's missing. |use 46782
step
goto 60.7,85.4
.talk 34626
..turnin 13988
..accept 877
..accept 880
step
ding 15
step
goto 55.9,80.5
.click Bubbling Fissure |tip It looks like a big cracked rock underwater with bubbles floating out of it.
.' Test the Dried Seeds |q 877/1
step
goto 56.5,81.0
.from Oasis Snapjaw##3461+
.get 6 Altered Snapjaw Shell |q 880/1
step
goto 50.0,59.9
.talk 3338
..turnin 905
..accept 13991
step
goto 49.5,58.7
.talk 3448
..turnin 877
..turnin 880
step
goto 48.6,58.3
.talk 3390
..turnin 13998
..accept 13999
step
goto 66.9,72.8
.talk 3464
..turnin 13991
..accept 14066
step
goto 67.7,74.0
.talk 3339
..accept 891
step
goto 67.0,74.8
.talk 34651
..turnin 13999
step
goto 67.3,74.7
.talk 6791
.home Ratchet
step
goto 67.9,71.5
.talk 3446
..accept 865
step
goto 68.3,71.2
.click WANTED Poster##15
..accept 895
step
goto 68.4,69.1
.talk 3391
..accept 14034
..accept 14045
step
goto 69.6,73.0
.talk 3453
..accept 887
..accept 14052
step
goto 67.0,74.7
.talk 34754
..' <Club him unconscious.>
..' <Rifle through his pockets.>
.get Ship Schematics |q 14034/1
step
goto 68.4,69.1
.talk 3391
..turnin 14034
..accept 14038
step
goto 59.0,67.4
.' Go to this spot
.' Search the Caravan Scene |q 14066/1
.click the Complete Quest box that appears under your minimap
..turnin 14066
..accept 869
step
goto 62.4,63.9
.talk 34828
..accept 14068
step
goto 62.6,61.7
.' Go to this spot
.' Discover the Source of the Tracks |q 869/1
.click the Complete Quest box that appears under your minimap
..turnin 869
..accept 14067
step
goto 64.9,59.3
.'Use your Waptor Twap next to raptors around this area |use Waptor Twap##46853
.' Run away and wait for the raptor to be trapped
.click the Woaded Waptor Twap |tip It looks like a small metal shaking trap on the ground.
.get 5 Wittle Waptor |q 14068/1
step
goto 63.7,58.8
.click the Stolen Silver Lockbox |tip It looks like a small gray metal chest sitting on the ground.
.get Stolen Silver |q 14067/3
step
goto 62.1,58.8
.kill 8 Sunscale Ravager##44164+ |q 14067/1
.kill 4 Sunscale Scytheclaw##3256+ |q 14067/2
step
ding 16
step
goto 65.7,59.9
.from King Reaperclaw##34829 |tip He's a big green raptor that walks around this area with 2 raptor guards.  You will probably need to search for him.
.get King Reaperclaw's Horn |q 865/1
step
goto 62.4,63.9
.talk 34828
..turnin 14068
step
goto 66.9,72.8
.talk 3464
..turnin 14067
step
goto 67.9,71.5
.talk 3446
..turnin 865
step
goto 70.4,84.2
.kill Lieutenant Pyre##34752 |q 891/2
step
goto 69.9,85.2
.talk 3467
..turnin 14045
..accept 14046
step
goto 69.9,85.2
.talk 3467
..' <Break Longshore's manacles and free him.>
.' Strike a Deal with Baron Longshore |q 14046/1
.click the Complete Quest box that appears under your minimap
..turnin 14046
..accept 14049
step
goto 69.4,81.6
.click Hanging Pirate Head##8971
.get Tattooed Pirate Head |q 14049/1
step
goto 70.8,85.1
.kill Lieutenant Buckland##34753 |q 891/1 |tip He walks around this area.
step
goto 72.6,85.4
.' Use your Limpet Mine next to the Thinnest Part of the Hull |use Limpet Mine##46829 |tip It looks like a large wooden section of the ship underwater.
.' Mine the Bellipotent |q 14038/1
.click the Complete Quest box that appears under your minimap
..turnin 14038
..accept 14042
step
goto 71.4,83.2
.from Theramore Marine##3385+, Theramore Preserver##3386+, Theramore Deck Hand##34707+
.get 10 Theramore Medal |q 891/3
.click Theramore Ammunition Stockpile##243+
.' Destroy 5 Ammo Dumps |q 14042/1
step
goto 77.3,91.4
.talk 34749
..turnin 14052
..accept 14056
step
goto 76.9,90.8
.from Glomp##34747
.get Glomp's Booty |q 14056/1
step
goto 77.3,91.4
.talk 34749
..turnin 14056
..accept 14057
step
ding 17
step
goto 77.9,89.2
.from Cap'n Garvey##34750
.get Cap'n Garvey's Head |q 895/1
.click Southsea Gun Rack##8972+
.get 6 Heavy Dwarven Rifle |q 14057/1
step
goto 77.3,91.4
.talk 34749
..turnin 14057
..accept 14063
step
goto 79.8,91.1
.' Use your Pirate Signal Horn on the ship deck |use Pirate Signal Horn##46838
.' Follow Tony Two-Tusk downstairs
.from Alicia Cuthbert##34782
.' Capture the Maiden's Dagger |q 14063/1
step
goto 77.2,90.0
.from Southsea Privateer##3384+, Southsea Cutthroat##3383+
.' Kill 8 Fray Island Pirates |q 887/1
step
'Hearth to Ratchet |goto 67.3,74.6,0.5 |use Hearthstone##6948 |noway |c
step
goto 67.7,74.0
.talk 3339
..turnin 891
step
goto 69.6,73.0
.talk 3453
..turnin 14063
..turnin 887
step
goto 68.4,69.1
.talk 3391
..turnin 14049
..turnin 14042
..turnin 895
..accept 14050
step
goto 62.6,74.8 |n
.' Follow the path up |goto 62.6,74.8,0.5 |noway |c
step
goto 66.3,77.6
.click the Curious Pirate Landmark##2351
.get Gazlowe's Treasure Chest |q 14050/1
step
goto 68.4,69.1
.talk 3391
..turnin 14050
..accept 26769
step
goto 72.9,65.6
.clicknpc Riverboat##44057
.' Board the Riverboat to Nozzlepot |q 26769/1
step
goto 62.5,16.7
.talk 34698
..turnin 26769
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Northern Barrens (10-20)\\Northern Barrens (17-20)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Ashenvale (20-26)\\Ashenvale (20-23)
startlevel 17.80
dynamic on
step
goto Northern Barrens,62.5,16.7
.talk 34698
..accept 29087
..accept 29088
step
goto 62.5,16.6
.talk 43945
.home Nozzlepot's Outpost
step
goto 62.3,17.1
.talk 40558
.fpath Nozzlepot's Outpost
step
goto 62.3,17.5
.talk 3442
..accept 29086
..accept 29021
step
goto 58.8,21.1
.clicknpc Muddy Tracks##52171
.' Examine 5 Muddy Tracks |q 29087/1
step
'Click the Quest Complete box that appears under your mini map
..turnin 29087
..accept 29089
step
goto 58.2,19.4
.click Sludge Pile##49 
|tip It looks like a dirt mound under the water
.kill Sludge Beast##52165 |q 29089/1
step
goto 57.6,18.3
.talk 3439
..accept 858
step
goto 57.2,20.6
.' Go to the top of the oil rig
.from Supervisor Lugwizzle##3445
.get Ignition Key |q 858/1
step
goto 57.6,18.3
.talk 3439
..turnin 858
..accept 863
.' Protect Wizzlecrank's Shredder as it tries to escape
.' Escort Wizzlecrank out of the Venture Co |q 863/1
step
goto 54.8,23.0
.kill 6 Hecklefang Hyena##4127+ |q 29088/1
step
goto 50.3,25.7
.click Control Console##356
..turnin 29021
..accept 29022
step
goto 50.1,25.6
.click Main Control Valve##353 |tip It looks like a small red wheel on the side of this metal pipe.
.' Shut off the Main Control Valve |q 29022/1
step
goto 50.1,25.3
.click Regulator Valve##353 |tip It looks like a small red wheel on the side of this metal pipe.
.' Shut off the Regulator Valve |q 29022/3
step
goto 50.3,25.3
.click Fuel Control Valve##353 |tip It looks like a small red wheel on the side of this big brown barrel container.
.' Shut off the Fuel Control Valve |q 29022/2
step
goto 50.3,25.7
.click Control Console##356
..turnin 29022
..accept 29023
step
ding 18
step
goto 51.1,23.5
.from Tinkerer Sniggles##3471
.get Console Key |q 29023/1
step
goto 50.3,25.7
.click Control Console##356
..turnin 29023
..accept 29024
step
goto 50.3,25.7
.from Venture Co. Drudger##3284+, Venture Co. Mercenary##3282+, Venture Co. Drudger##3284+
.get 6 Sputtervalve's Blueprints |q 29086/1
step
'Hearth Nozzlepot's Outpost |goto 62.5,16.6,0.5 |use Hearthstone##6948 |noway |c
step
goto 62.5,16.7
.talk 34698
..turnin 29089
..turnin 29088
step
goto 62.3,17.5
.talk 3442
..turnin 29086
..turnin 29024
..accept 14003
..turnin 863
step
goto 62.7,17.0
.talk 34674
..turnin 14003
..accept 29026
step
goto 62.7,17.0
.talk 34674
..' Tell him you're ready to teleport
.' Teleport to Wenikee Boltbucket |goto 44.2,25.1,0.5 |noway |c
step
goto 44.4,24.9
.talk 9316
..turnin 29026
..accept 29027
step
goto 44.3,25.1
.talk 52192
..accept 29090
step
goto 42.7,31.8
.click Tool Buckets##2891 |tip They look like wooden buckets with tools in them around this area.
.get 10 Nugget Slug |q 29027/1
step
goto 42.9,31.6
.from Burning Blade Acolyte##3380+, Burning Blade Bruiser##3379+
.' Slay 8 Members of the Burning Blade |q 29090/1
.' You can find more Members of the Burning Blade here [40.6,32.9]
step
goto 44.3,25.1
.talk 52192
..turnin 29090
step
goto 44.4,24.9
.talk 9316
..turnin 29027
..accept 14004
step
|fly Nozzlepot's Outpost
step
goto 62.3,17.5
.talk 3442
..turnin 14004
..accept 14006
step
ding 19
step
goto 62.7,17.0
.talk 34674
..accept 29015
step
goto 67.6,18.5 |n
.' Follow the path up |goto 67.6,18.5,0.5 |noway |c
step
goto 65.3,11.9 |n
.' Enter the mine |goto 65.3,11.9,0.5 |noway |c
step
goto 64.8,11.8
.from Boss Copperplug##9336
.collect Samophlange Manual Cover##11147 |q 14006
step
goto 65.3,11.9 |n
.' Leave the mine |goto 65.3,11.9,0.5 |noway |c
step
goto 66.3,13.1
.from Venture Co. Enforcer##3283+, Venture Co. Overseer##3286+
.get Cats Eye Emerald |q 29015/1
.collect 5 Samophlange Manual Page##11148 |n
.' Use your Samophlange Manual Cover |use Samophlange Manual Cover##11147
.get Samophlange Manual |q 14006/1
step
goto 66.5,20.0 |n
.' Follow the path down |goto 66.5,20.0,0.5 |noway |c
step
goto 62.3,17.5
.talk 3442
..turnin 14006
step
goto 62.7,17.0
.talk 34674
..turnin 29015
step
goto 62.3,17.5
.talk 3442
..accept 29094
step
|fly The Crossroads
step
goto 49.5,57.9
.talk 3934
.home The Crossroads
step
goto 48.7,59.6
.talk 3429
..accept 14073
|only if completedq (851)
step
goto 37.8,55.3
.talk 3389
..turnin 14073
..accept 852
..accept 855
|only if completedq (851)
step
goto 42.2,71.8
.from Hezrul Bloodmark##3396 |tip He walks around the entire Lushwater Oasis with 2 guards, so you will probably need to search for him.
.get Hezrul's Head |q 852/1
|only if completedq (851)
step
goto 40.6,70.5
.from Kolkar Stormseer##9523+, Kolkar Marauder##3275+
.get 10 Centaur Bracers |q 855/1
|only if completedq (851)
step
goto 37.8,55.3
.talk 3389
..turnin 852
..turnin 855
..accept 4021 |tip This is a group quest, so you may need a partner to help.  If you can't solo it and can't find a partner, just skip this quest.
|only if completedq (851)
step
goto 35.9,54.8
.from Kolkar Invader##9524+
.' Eventually, Warlord Krom'zar will spawn
.from Warlord Krom'zar##9456
.click Krom'zar's Banner |tip It looks like a tall pole with a red flag on it.
.get Piece of Krom'zar's Banner |q 4021/1 |tip This is a group quest, so you may need a partner to help.  If you can't solo it and can't find a partner, just skip this quest.
|only if completedq (851)
step
goto 37.8,55.3
.talk 3389
..turnin 4021
|only if completedq (851)
step
goto 30.6,45.9
.talk 3449
..accept 867
..accept 875
step
goto 28.6,35.3
.from Witchwing Harpy##3276+, Witchwing Windcaller##3280+
.get 6 Witchwing Talon |q 867/1
.' Click the Quest Complete box that appears under your mini map
..turnin 867
..accept 875
step
ding 20
step
goto 27.4,31.6
.kill 6 Witchwing Slayer##3278+ |q 875/1
.' Click the Quest Complete box that appears under your mini map
..turnin 875
..accept 876
step
goto 26.9,26.6
.from Serena Bloodfeather##3452
.get Serena's Head |q 876/1
step
goto 30.6,45.9
.talk 3449
..turnin 876
..accept 29095
step
'Hearth to The Crossroads |goto 49.5,57.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 48.7,59.6
.talk 3429
..turnin 29095
..accept 29109
step
goto 50.3,57.2
.' Talk Rocco Whipshank |q 29109/1
.' Click the Kodo that runs up next to you to ride it |tip It looks like a large Green Kodo with an Orc riding it.
.clicknpc Chief Caravan Kodo##52209
.' Ride Caravan to Dreadmist Peak |q 29109/2
step
goto 47.5,39.6
.talk 52207
..turnin 29109
..accept 29110
step
goto 47.0,37.9 |n
.' Follow this path up the Mountain |goto 47.0,37.9,1 |noway |c
step
goto 41.1,39.2
.talk 52309
..turnin 29110
..accept 29112
step
goto 42.5,38.8
.' Go in this small cave
.click The Demon Seed##327
|tip It looks like a red crystal spinning above a rock that is on fire.
.get Demon Seed |q 29112/1
step
goto 44.2,37.0 |n
.' Follow this path down the mountain |goto 44.2,37.0,1 |noway |c
step
goto 47.5,39.6
.talk 52207
..turnin 29112
..accept 29111
step
goto 47.5,39.6
.talk 52207
.' Tell her you're ready to ride
.' Speak to Nagala Whipshank |q 29111/1
step
goto 47.8,39.5
.talk 52314
.' Click Chief Caravan Kodo##52209 |invehicle |c
step
.' Use the Abilities on your action bar to fight off the enemies
.' Mor'shan Caravan Ride Defended |q 29111/2
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Azshara (10-22)\\Azshara (10-12)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Azshara (10-22)\\Azshara (12-21)
startlevel 10.90
dynamic on
step
goto Azshara,26.8,76.9
.talk 8576
..turnin 25648 |only Orc,Troll
..accept 14118
..accept 14117
step
goto 27.0,77.1
.talk 35086
..turnin 28496 |only Tauren
..turnin 25275 |only Goblin
..accept 14129
step
goto 27.4,74.6
.' Fight a Runaway Shredder until it surrenders |tip They are spread out all around this area.
.click the Runaway Shredder to control it
.' Capture the Runaway Shredder |q 14129/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 14129
..accept 14134
step
ding 11
step
goto 26.2,75.2
.' Use your Gather Lumber ability on your hotbar next to Azshara Lumber Piles |tip They looks like piles of 3 logs all around this area.
.get 6 Azshara Lumber |q 14134/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 14134
..accept 14135
step
goto 30.0,76.6
.' Use your Buzzsaw ability on your hotbar next to Azshara Saplings. |tip They look like smaller trees with a bunch of red leaves on them.  When you cut the Azshara Saplings, Talrendis Snipers will spawn.
.' Use the abilities on your hotbar to kill the Talrendis Snipers
.kill 9 Talrendis Sniper##35149+ |q 14135/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 14135
..accept 14146
step
goto 27.0,77.2
.' Use your abilities on your hotbar to kill Talrendis Raiders that are attacking
.kill 20 Talrendis Raider##35177+ |q 14146/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 14146
..accept 14155
step
goto 21.5,75.9
.' Use your abilities on your hotbar to kill the Talrendis Ancient
.kill Talrendis Ancient##35198 |q 14155/1
step
goto 25.5,74.8 |n
.click the red arrow to stop controlling the Runaway Shredder |outvehicle |c |q 14155
step
goto 25.5,74.8
.from Weakened Mosshoof Stag##35096+
.get 15 Slab of Venison |q 14118/1
.kill 8 Talrendis Scout##35095+ |q 14117/1 |tip They are stealthed all around this area, so keep an eye out for them.
.' You can find more Talrendis Scouts at [29.8,72.5]
.collect Scout's Orders##47039 |n
.click the Scout's Orders in your bags |use Scout's Orders##47039
..accept 14127
step
goto 27.0,77.1
.talk 35195
..turnin 14155
..accept 14162
step
goto 26.8,76.9
.talk 35194
..turnin 14118
..turnin 14117
..turnin 14127
..accept 14128
step
ding 12
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Azshara (10-22)\\Azshara (12-21)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Azshara (10-22)\\Azshara (21-22)
startlevel 12.16
dynamic on
step
goto Azshara,29.7,66.9
.talk 35087
..turnin 14128 |tip You may not have this breadcrumb quest to turn in, depending on which guides you completed.
step
goto 29.2,66.3
.talk 35085
..accept 14197
step
goto 29.1,66.2
.talk 35091
..turnin 14162 |tip You may not have this breadcrumb quest to turn in, depending on which guides you completed.
..accept 14161
..accept 14165
step
goto 26.7,70.1
.kill 10 Greystone Basilisk##35245+ |q 14161/1
.click Iron Ingots |tip They look like silver bars laying on the ground and in the carts around this area.
.get 20 Mountainfoot Iron |q 14197/1
.click a Mountainfoot Miner |tip They look like darker goblins standing in place around this area.  Not all of them are clickable, so just search around until you find one you can click.
.' Carry the Mountainfoot Miner |havebuff Interface\Icons\Ability_Warrior_IntensifyRage |q 14165
step
goto 25.8,68.6 |n
.' Follow the path down |goto Azshara,25.8,68.6,0.5 |noway |c
step
goto 29.1,66.2
.' Stand next to Horzak Zignibble
.' Deliver the Stonified Miner |q 14165/1
step
goto 29.1,66.2
.talk 35091
..turnin 14161
..turnin 14165
..accept 14190
step
goto 29.2,66.3
.talk 35085
..turnin 14197
step
goto 22.0,69.3
.from Talrendis Saboteur##35312+
.get Crystal Pendant |q 14190/1
step
goto 20.3,70.4
.click Headquarters Radio##356 |tip It's a metal console inside a round building.
..turnin 14190
..accept 14192
step
goto 20.0,70.0
.click Weapons Cabinet##41 |tip It's a wooden chest inside a round building.
..turnin 14192
..accept 14194
step
goto 22.1,68.8
.' Use The Refleshifier on Mountainfoot Miners |use The Refleshifier##48104 |tip They look like darker goblins standing in place around this area.  You won't be able to select all of them.
.' Destone 8 Mountainfoot Miners |q 14194/1
step
ding 13
step
goto 25.8,68.6 |n
.' Follow the path up |goto Azshara,25.8,68.6,0.5 |noway |c
step
goto 29.1,66.2
.talk 35091
..turnin 14194
step
goto 29.5,66.8
.talk 36752
..accept 14468
step
goto 29.5,57.7
.talk 36749
..turnin 14468
..accept 14469
step
goto 29.4,57.6
.talk 36744
..accept 14470
step
goto 29.1,57.9
.talk 36746
..accept 14471
step
goto 31.3,57.9
.clicknpc Bligewater Mortar##36768 |tip They look like red and white cannons.
.' Use the Mortar Round ability on your hotbar to shoot the Spitelash Myrmidon nagas to the east, in the valley.
.' Blow 60 Spitelash Attackers to bits |q 14471/1
step
.click the red arrow in your hotbar 
|outvehicle |q 14471
step
goto 29.1,57.9
.talk 36746
..turnin 14471
step
goto 28.2,55.3
.clicknpc Dead Soldier##36756+ |tip They look like dead orcs on the ground amongst a ton of land mines. Don't step on the land mines.
.get 12 Military Supplies |q 14469/1
step
goto 27.6,51.9
.kill Warlord Krellian##8408 |q 14470/1
.click SFG##9182 |tip It's a red dynamite rocket laying on the ground next to a dead goblin.
.get SFG |q 14470/2
step
goto 29.4,57.6
.talk 36744
..turnin 14470
..accept 14472
step
goto 29.5,57.7
.talk 36749
..turnin 14469
step
goto 31.4,60.6
.' Use your SFG on an Enslaved Son of Arkkoroc |use SFG##49700 |tip They are walking back and forth around this area.
.kill Enslaved Son of Arkkoroc##36868 |q 14472/1
step
goto 29.4,57.6
.talk 36744
..turnin 14472
step
goto 29.5,57.7
.talk 36749
..accept 24452
step
goto 31.4,50.5
.' If you become unstealthed at any time, use your Stealth Field Generator |use Stealth Field Generator##49701 |tip If you have a pet of any kind, dismiss it.
.' Go to this spot to Identify the Heart of Arkkoroc |q 24452/1
step
goto 29.5,57.7
.talk 36749
..turnin 24452
..accept 24453
step
goto 29.5,66.8
.talk 36752
..turnin 24453
step
goto 29.6,66.9
.talk 35088
..accept 14202
step
goto 29.7,66.9
.talk 35087
..accept 14201
step
goto 34.7,71.6
.click Ancient Debris Piles and get Recovered Artifacts |tip The Ancient Debris Piles look like half buried pots with green stripes on them around the lake.
.' Stand next to the Survey Equipment |tip It looks like a small pole with a red handle on it.
.' Survey the North Marker |q 14202/2
step
goto 37.4,74.6
.click Ancient Debris Piles and get Recovered Artifacts |tip The Ancient Debris Piles look like half buried pots with green stripes on them around the lake.
.' Stand next to the Survey Equipment |tip It looks like a small pole with a red handle on it.
.' Survey the East Marker |q 14202/3
step
goto 34.3,76.7
.click Ancient Debris Piles and get Recovered Artifacts |tip The Ancient Debris Piles look like half buried pots with green stripes on them around the lake.
.' Stand next to the Survey Equipment |tip It looks like a small pole with a red handle on it.
.' Survey the West Marker |q 14202/1
step
'Make sure you have 5 Recovered Artifacts
.get 5 Recovered Artifacts |q 14201/1
step
goto 29.7,66.9
.talk 35087
..turnin 14201
..accept 14215
step
goto 29.6,66.9
.talk 35088
..turnin 14202
..accept 14209
step
ding 14
step
goto 30.1,67.2
.click Clubnik's Dozer##35526 |tip It's a big gray metal vehicle.
.from Ectoplasmic Exhaust##35558
.get Ectosplatter Sample |q 14209/1
step
goto 29.6,66.9
.talk 35088
..turnin 14209
..accept 14423
step
goto 30.0,67.2
.' Use your Blessed Flaregun next to Clubnik's Dozer |use Blessed Flaregun##49350
.from Clubnik's Dozer##35526
.' Exorcise Clubnik's Dozer |q 14423/1
step
goto 29.6,66.9
.talk 35088
..turnin 14423
..accept 14424
step
goto Azshara,36.4,72.4
.talk 35567
..' <Merge with the spirit.>
.' Explore the Memories of Kalytha |havebuff Interface\Icons\Spell_Shadow_Twilight |q 14215
step
goto Azshara,37.5,74.5
.talk 35595
..' Tell her you will hide the stone
.' Learn Kalytha's Secret |q 14215/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 14215
..accept 14216
step
goto Azshara,35.6,75.3
.click the Ancient Stone Cask |tip It's a half-buried stone box underwater.
.get Sarcen Stone |q 14216/1
step
goto Azshara,29.7,66.9
.talk 35087
..turnin 14216
step
goto Azshara,29.5,66.2
.talk 43217
..' Tell him Southern Rocketway Terminus, please
.' Ride the rocket to the Southern Rocketway Terminus |goto Azshara,51.0,74.1,1.5 |noway |c
step
goto Azshara,50.4,74.3
.talk 39199
..turnin 14424
..accept 14308
step
goto Azshara,51.5,74.3
.talk 37005
.fpath Southern Rocketway Terminus
step
goto Azshara,52.2,74.2
.talk 35817
..accept 14258
step
goto Azshara,45.1,75.5
.talk 36146
..accept 14322
step
goto Azshara,42.9,77.6 |n
.' Follow the path up |goto Azshara,42.9,77.6,0.5 |noway |c
step
goto Azshara,42.2,76.1
.talk 36500
..accept 14408
step
goto 42.7,79.4
.kill 8 Static-Charged Hippogryph##36147+ |q 14322/1
step
goto Azshara,44.3,75.3
.click Goblin Mortar Shell##8487+
.get 5 Goblin Mortar Shell |q 14258/1
.' Use your Fireliminator X-21 on Research Interns and next to the fires on structures |use Fireliminator X-21##49132 |tip The Research Interns are goblins running around on fire.
.' Extinguish 8 Lab Fires |q 14308/1
.' Rescue 6 Research Interns |q 14308/2
step
goto Azshara,43.8,77.4
.click Secret Lab Squawkbox##356
..turnin 14308
..accept 14310
step
goto Azshara,43.8,77.3
.click Reactor Control Console##295
.' Follow the Hulking Labgoblin as he pushes the cart on the tracks
.' Use your Fireliminator X-21 on the Azsharite Core  every few seconds to keep it cool |use Fireliminator X-21##49132
.' Deliver the Azsharite Core |q 14310/1
step
goto Azshara,50.4,74.3
.talk 39199
..turnin 14310
..accept 14370
..accept 14371
step
goto Azshara,52.2,74.2
.talk 35817
..turnin 14258
step
goto Azshara,50.7,75.3
.talk 35657
..accept 14262
..accept 14267
step
goto Azshara,45.9,76.1
.clicknpc Buzzer##36472 |tip It's a pole standing upright with a yellow orb on top.
.' <Ring the Buzzer>
.from Mutant Goblin##36156
.get Secret Rocket Plans |q 14408/1
step
goto Azshara,45.1,75.5
.talk 36146
..turnin 14322
step
ding 15
step
goto 42.9,77.6 |n
.' Follow the path up |goto 42.9,77.6,0.5 |noway |c
step
goto Azshara,42.2,76.1
.talk 36500
..turnin 14408
..accept 14422
step
goto Azshara,43.2,75.4
.click Specimen Cages |tip They look like gray metal cages around this area.
.' Get the Babysitting Raptors buff 5 times |tip If you use any form of stealth during this buff, the raptors will leave and you will start over.
|confirm
step
goto 42.9,77.6 |n
.' Follow the path up |goto 42.9,77.6,0.5 |noway |c
step
goto Azshara,42.2,75.8
.' Deliver 5 Experimental Raptors |q 14422/1
step
goto Azshara,42.2,76.1
.talk 36500
..turnin 14422
step
goto Azshara,39.7,77.9
.click Azsharite Formations |tip They look like frozen people and big blue crystals laying on the ground around this area along the cliffs.
.get 5 Azsharite Sample |q 14370/1
.from Mistwing Cliffdweller##36304+
.get 8 Mutilated Mistwing Carcass |q 14371/1
step
goto Azshara,50.4,74.3
.talk 39199
..turnin 14370
..turnin 14371
..accept 14377
step
goto Azshara,47.7,75.5
.talk 36297
..' Tell him you brought him something to eat.
.' Discover the Secret of Azsharite |q 14377/1
step
goto Azshara,50.4,74.3
.talk 39199
..turnin 14377
..accept 14385
step
goto Azshara,50.5,74.7
.talk 38120
..accept 14383
step
goto 55.6,76.5 |n
.' Cross this bridge |goto 55.6,76.5,0.5 |noway |c
step
goto Azshara,59.0,71.8
.click Naga Power Stone##7340
..turnin 14267
..accept 14270
step
goto Azshara,57.5,71.0
.click Keystone Shard##9185
.get Keystone Shard |q 14270/1
step
goto Azshara,59.0,71.8
.click Naga Power Stone##7340
..turnin 14270
..accept 14271
step
goto Azshara,56.8,76.0
.kill 6 Spitelash Stormfury##35831+ |q 14262/1
.kill 6 Spitelash Seacaller##35832+ |q 14262/2
.' You can find more around [55.1,76.9]
step
goto Azshara,50.7,75.3
.talk 35657
..turnin 14262
..turnin 14271
..accept 14295
step
goto Azshara,63.2,75.9
.clicknpc Silisthra's Power Stone##35892
.kill Lady Silisthra##35880 |q 14295/1
step
goto Azshara,63.7,79.4
.clicknpc Vesthra's Power Stone##35968
.kill Lady Vesthra##35881 |q 14295/2
step
ding 16
step
goto Azshara,50.7,75.3
.talk 35657
..turnin 14295
step
goto 47.1,79.8 |n
.' Follow the path down |goto 47.1,79.8,0.5 |noway |c
step
goto Azshara,39.8,84.7
.kill Bingham Gadgetspring##36407 |q 14383/1
step
goto Azshara,39.9,84.8
.' Ride the elevator up
.click Giant-Sized Laxative##9118
.get Giant-Sized Laxative |q 14385/2
step
goto Azshara,40.1,84.0
.kill 4 Netgun Gnome##36385+ |q 14383/2
.kill 6 Zapper Gnome##36384+ |q 14383/3
step
goto Azshara,41.1,83.8 |n
.' Follow the path up |goto Azshara,41.1,83.8,0.5 |noway |c
step
goto Azshara,47.7,75.5
.talk 36297
..' Tell him to eat the special chocolate rock
.' Try to Feed Gormungan |q 14385/1
step
goto Azshara,50.4,74.3
.talk 39199
..turnin 14385
..accept 14388
step
goto Azshara,50.4,74.3
.talk 39199
..' Tell her to shrink you
.' Become mouse-sized! |havebuff Interface\Icons\Spell_Fire_ElementalDevastation
step
goto Azshara,50.3,74.4
.clicknpc Rocketway Rat##36437
|invehicle |q 14388
step
goto Azshara,47.7,75.5
.talk 36297
..' SQUEAK!!
.' Scare Gormungan |q 14388/1
step
goto Azshara,50.4,74.3
.talk 39199
..turnin 14388
step
goto Azshara,50.5,74.7
.talk 38120
..turnin 14383
..accept 24458
step
goto Azshara,51.5,74.3
.talk 37005
..' Tell him to just give you the 'copter
.' You will fly to Bilgewater Harbor |goto Azshara,57.6,50.6,0.5 |noway |c
step
goto 57.0,50.1
.click Wrenchmen Recruitment Poster##9584
..accept 14478
step
goto Azshara,57.1,50.4
.talk 43771
.home Bilgewater Harbor
step
goto 59.3,50.8
.talk 36999
..accept 14407
step
goto Azshara,60.6,51.0
.talk 37009
..turnin 24458
step
goto Azshara,60.6,50.6
.talk 36749
..turnin 14478
..accept 24455
step
goto Azshara,58.1,52.3
.talk 36956
..turnin 24455
..accept 14479
step
goto Azshara,55.5,52.1
.talk 35867
..turnin 14407
..accept 14130
step
goto Azshara,52.9,49.9
.talk 8610
.fpath Bilgewater Harbor
step
goto Azshara,57.9,52.2
.clicknpc the Surface to Other Surface Transport##36917
.' Go to The Shattered Strand |goto Azshara,39.1,51.3,0.5 |noway |c
step
goto Azshara,39.1,51.8
.talk 36795
..accept 24437
step
goto Azshara,41.5,53.7
.talk 36920
..turnin 14479
..accept 24435
step
goto Azshara,41.4,53.9
.talk 36921
..accept 24436
step
goto Azshara,43.9,59.9
.' Use your Flag of Territorial Claim in the blue light |use Flag of Territorial Claim##49685
.' Claim the Southern Pagoda |q 24437/1
step
goto Azshara,41.2,52.0
.' Use your Sanctified Flaregun on Wounded Soldier |use Sanctified Flaregun##49679 |tip They look like dead goblins on the ground around this area.
.' Rescue 8 Wounded Soldier |q 24436/1
|modelnpc Wounded Soldier##36922
step
goto Azshara,43.6,43.4
.' Use your Flag of Territorial Claim in the blue light |use Flag of Territorial Claim##49685
.' Claim the Big ol' Tower |q 24437/2
step
goto Azshara,45.5,38.5
.' Use your Flag of Territorial Claim in the blue light |use Flag of Territorial Claim##49685
.' Claim the Northern Vista |q 24437/3
step
goto Azshara,41.2,52.0
' |from Spitelash Warrior##6190+, Spitelash Siren##6195+
.kill 12 Defending Naga |q 24435/1
step
ding 17
step
goto Azshara,39.1,51.8
.talk 36795
..turnin 24437
step
goto Azshara,41.5,53.7
.talk 36920
..turnin 24435
step
goto Azshara,41.4,53.9
.talk 36921
..turnin 24436
step
goto Azshara,41.5,53.7
.talk 36920
..accept 24448
step
goto 37.0,45.3 |n
.' Follow the path up |goto 37.0,45.3,0.5 |noway |c
step
goto Azshara,34.3,44.9
.talk 36745
..turnin 24448
..accept 14487
step
goto Azshara,34.5,44.7
.talk 36895
..accept 14480
..accept 14484
..accept 14485
step
goto Azshara,34.5,44.7
.talk 36894
..accept 14486
step
goto Azshara,36.0,47.6
.' Use your Gob Squad Flare to get a team of goblins to help you |use Gob Squad Flare##49629 |tip You can use your Gob Squad Flare every minute, so you'll always have a team helping you.
.' Stand next to the Spitelash Runestone |tip It looks like a tall stone statue with pink light at the base of it.
.' Destroy the Spitelash Runestone
.' You can find 2 more Spitelash Runestones:
.' at [34.3,48.2]
.' at [34.1,51.6]
.' Destroy 3 Spitelash Runestones |q 14485/1
.click Highborne Tablet##2651+
step
goto Azshara,33.3,49.9
.' Use your Gob Squad Flare to get a team of goblins to help you |use Gob Squad Flare##49629 |tip You can use your Gob Squad Flare every minute, so you'll always have a team helping you.
.click Highborne Tablet##2651+
.get 12 Highborne Tablet |q 14486/1
step
goto Azshara,31.9,50.1
.' Use your Gob Squad Flare to get a team of goblins to help you |use Gob Squad Flare##49629 |tip You can use your Gob Squad Flare every minute, so you'll always have a team helping you.
.click the Heart of Arkkoroc |tip It's a floating red crystal.
.get Heart of Arkkoroc |q 14487/1
step
goto Azshara,36.0,49.8
.' Use your Gob Squad Flare to get a team of goblins to help you |use Gob Squad Flare##49629 |tip You can use your Gob Squad Flare every minute, so you'll always have a team helping you.
.' Fight Lord Kassarus
.click the Impaling Spines he throws at you
.collect Impaling Spine##49649 |n
.' Use the Impaling Spines on Lord Kassarus to increase the damage your team does to him |use Impaling Spine##49649
.kill Lord Kassarus##36822 |q 14484/1
step
goto Azshara,34.2,49.9
.' Use your Gob Squad Flare to get a team of goblins to help you |use Gob Squad Flare##49629 |tip You can use your Gob Squad Flare every minute, so you'll always have a team helping you.
' |from Spitelash Battlemaster##7885+, Spitelash Enchantress##7886+
.kill 30 Spitelash Naga |q 14480/1
step
goto Azshara,34.3,44.9
.talk 36745
..turnin 14487
step
goto Azshara,34.5,44.7
.talk 36895
..turnin 14480
..turnin 14484
..turnin 14485
step
goto Azshara,34.5,44.7
.talk 36894
..turnin 14486
step
goto Azshara,34.3,44.9
.talk 36745
..accept 24449
step
goto Azshara,34.5,44.5
.clicknpc Military Gyrocopter##37145
.' Fly to the top of Bilgewater Harbor |goto Azshara,60.1,50.3,0.5 |noway |c
step
goto Azshara,60.6,50.5
.talk 36959
..turnin 24449
step
ding 18
step
goto Azshara,52.9,49.9
.talk 8610
.' Fly to Southern Rocketway, Azshara |goto Azshara,51.5,74.3,0.5 |noway |c
step
goto 50.7,74.2
.talk 43217
..' Tell him Northern Rocketway Terminus, please
.' Ride the rocket to the Northern Rocketway Terminus |goto 66.5,21.0,0.5 |noway |c
step
goto 69.7,26.2 |n
.' Follow the path down |goto 69.7,26.2,0.5 |noway |c
step
goto Azshara,70.4,36.2
.talk 35142
..turnin 14130
..accept 14131
..accept 14132
..accept 14323
step
goto Azshara,77.6,36.5
.' Run around and get near to Vile Splashes to absorb them |modelnpc Vile Splash##36131
.get 20 Simmering Water Droplet |q 14323/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 14323
..accept 14324
step
goto Azshara,81.3,30.7
.' Use your Engorged Azshari Sea Sponge next to the Stone of the Scalding Water Lords |use Engorged Azshari Sea Sponge##49176 |tip It's looks like a huge pointed stone.
.from Scalding Water Lord##36130
.get Globe of Boiling Water |q 14324/1
step
goto Azshara,71.9,36.1
.click Kawphi Plant##7816+
.get 10 Kawphi Bean |q 14131/1
' |from Makrinni Scrabbler##6370+
.kill 10 Ruins of Arkkoran Makrinni |q 14132/1
step
goto Azshara,70.4,36.2
.talk 35142
..turnin 14131
..turnin 14132
..turnin 14324
..accept 14345
.' You will be taken to the Northern Rocketway Exchange |goto Azshara,42.7,25.2,0.5 |noway |c |q 14345
step
goto Azshara,42.7,25.1
.talk 36210
..turnin 14345
..accept 14340
step
goto Azshara,42.6,23.7
.talk 36596
..accept 14428
step
goto Azshara,42.4,23.6
.talk 8586
..accept 14431
step
goto 38.4,26.6
.kill 8 Talrendis Biologist##36611+ |q 14431/1
.get Blackmaw Intelligence |q 14431/2
step
goto 42.4,23.6
.talk 8586
..turnin 14431
..accept 14432
..accept 14433
step
goto 47.7,18.6 |n
.' Follow the path up |goto 47.7,18.6,0.5 |noway |c
step
'Put on your Dingy Wizard Hat |use Dingy Wizard Hat##49201
.' Convey the appearance of quite a convincing mage |havebuff INTERFACE\ICONS\inv_helmet_29 |q 14340
step
goto Azshara,47.2,20.9
.' Approach Archmage Xylem while wearing your Wizard Hat |q 14340/1
.talk 35187
..turnin 14340
step
goto Azshara,47.0,21.0
.talk 35754
..accept 14263
step
goto Azshara,47.2,21.1
.talk 37151
..accept 14249
step
goto Azshara,47.3,21.2
.talk 35755
..accept 14250
step
goto Azshara,49.2,18.8
.from Thunderhead Hippogryph##6375+, Thunderhead Stagwing##6377+
.get 80 Pristine Thunderhead Feather |q 14249/1
.click Living Ire Thyme##7844+
.get 8 Living Ire Thyme |q 14263/1
step
goto Azshara,48.7,18.4
.' Find Balboa |modelnpc Balboa##35759
.' Use your Arcane Charge in the road in front of Balboa |use Arcane Charge##49038 |tip Balboa will walk over the charge and spawn 5 Animate Besalt Chunks.
.click Animate Besalt Chunks##312
.get 5 Animate Besalt |q 14250/1
step
goto Azshara,49.8,28.5
.from Lorekeeper Amberwind##36594
.get Amberwind's Journal |q 14428/1
step
goto Azshara,49.5,28.8
.click Upper Scrying Stone##9128
..turnin 14428
..accept 14429
step
ding 19
step
goto Azshara,51.7,28.1
.from Apprentice Illuminator##36593+, Apprentice Investigator##36592+
.get 10 Attuned Runestone |q 14429/1
step
goto Azshara,53.0,29.0
.click Lower Scrying Stone##9128
..turnin 14429
..accept 14430
step
goto Azshara,53.0,30.0
.talk 36599
..' Tell it Al'teth ... la c'tolgar
.' Hack the Arcane Construct |q 14430/1
step
goto 48.4,19.8 |n
.' Follow the path up |goto 48.4,19.8,0.5 |noway |c
step
goto Azshara,47.0,21.0
.talk 35754
..turnin 14263
step
goto Azshara,47.2,21.1
.talk 37151
..turnin 14249
step
goto Azshara,47.3,21.2
.talk 35755
..turnin 14250
step
goto Azshara,47.1,21.1
.talk 35756
..accept 14230
step
goto Azshara,47.2,20.9
.talk 35187
..accept 14226
step
goto 55.2,25.2
.click Stolen Manual##6908
.get Abjurer's Manual |q 14230/1
.' Use the Personal Arcane Assistant's Polymorph Insect ability on the Legashi satyrs around this area
.kill 12 Polymorphed Cockroach##35628+ |q 14226/1
step
'Use the Personal Arcane Assistant's Return to Camp ability to return to Xylem's camp |goto Azshara,47.1,20.3,0.5 |noway |c |q 14226
step
goto Azshara,47.2,20.9
.talk 35187
..turnin 14226
step
goto Azshara,47.1,21.1
.talk 35756
..turnin 14230
step
goto Azshara,47.2,20.9
.talk 35187
..accept 14413
.' You will fly off to an island |goto Azshara,55.7,14.7,0.5 |noway |c |q 14413
step
goto Azshara,55.7,14.8
.talk 36334
..turnin 14413
..accept 14296
step
goto Azshara,55.7,14.8
.click the Energy Conduit 6 times |tip It's a small stone pillar with light coming out of the top of it.
.' Get the Energized buff 6 times
|confirm
step
'Run to the sparkling circles on the ground |tip You will shoot up to another ledge on the island.
.' Keep running to the sparkling circles on the ground and click the Energy Conduits on some of the ledges to keep your Energized buff at 6 charges
.' Reach the top of the island
.' Complete the Arcane Trial |q 14296/1
step
goto Azshara,55.9,12.2
.talk 36361
..turnin 14296
..accept 14300
..accept 24478
..accept 24479
step
goto Azshara,56.0,11.9
.click the Frost Portal Stone |tip It's a floating crystal with a blue ring around it.
.click the Icy Morality swirling portal next to you |goto Azshara,62.1,21.2,0.5 |noway |c |q 24478
|confirm
step
'Run around on top of the mountain and get next to the floating white orbs. |tip Don't step on the snowy ground and try not to let the blue mist hit you, if you can.  It will help to dismiss your pet, if you have one.  Take your time and stay on the outskirts, don't go in the middle at all.
.' Gather 20 of the white orbs |tip You'll see how many you've gathered as a buff that stacks.
.' Complete the Trial of Frost |q 24478/1
step
goto Azshara,62.2,21.1
.talk 36336
..turnin 24478
step
goto Azshara,62.1,21.2 |n
.click the Waning Sanity swirling portal |goto Azshara,56.2,12.1,0.5 |noway |c
step
goto Azshara,56.1,11.9
.click the Fire Portal Stone |tip It's a floating crystal with an orange ring around it.
.click the Burning Determination swirling portal next to you |goto Azshara,32.9,23.4,0.5 |noway |c |q 14300
|confirm
step
'You have to stand on the red fire runes without getting hit by fire 10 times in a row. |tip You can see which runes will shoot fire up because they will have a little flame in their center a few seconds before the fire shoots up.  You need to run to a fire rune that doesn't have the little flame in the center.  Do this 10 times.
.' Complete the Trial of Fire |q 14300/1
step
goto Azshara,33.0,23.6
.talk 36335
..turnin 14300
step
goto Azshara,32.8,23.4 |n
.click the Waning Sanity swirling portal |goto Azshara,56.2,12.1,0.5 |noway |c
|confirm
step
ding 20
step
goto Azshara,56.1,11.9
.click the Shadow Portal Stone |tip It's a floating crystal with a purple ring around it.
.click the Grim Intention swirling portal next to you |goto Azshara,31.2,26.7,0.5 |noway |c |q 24479
|confirm
step
goto Azshara,30.8,27.3
.click the Touch to Begin crystal |tip It's a big floating purple crystal.
.' You have to lure 20 Weeping Souls into the purple shadow runes on the ground without getting hit. |tip A shadow will shoot out of you and you can see it on the ground heading to one of the portals.  Position yourself so that the Weeping Souls that come out of the portals have to walk over the shadow runes on the ground in order to get to you.  You'll have to move every so often to make sure they have to walk over the runes.
.' Complete the Trial of Shadow |q 24479/1
step
goto Azshara,31.1,26.8
.talk 36337
..turnin 24479
step
goto Azshara,31.2,26.6 |n
.click the Waning Sanity swirling portal |goto Azshara,56.2,12.1,0.5 |noway |c
|confirm
step
goto Azshara,55.9,12.2
.talk 36361
..accept 14299
step
goto Azshara,56.2,12.1 |n
.click the Xylem's Retreat swirling portal |goto Azshara,22.5,43.6,0.5 |noway |c |q 14299
step
goto 22.6,41.7 |n
.' Follow the path up |goto 22.6,41.7,0.5 |noway |c
step
goto Azshara,25.6,38.0
.talk 36372
..turnin 14299
..accept 14389
step
goto Azshara,25.7,38.0 |n
.click the Ambitious Reach portal |goto Azshara,27.8,41.0,0.5 |noway |c |tip You will die, it's part of the quest.
step
goto Azshara,27.8,40.6
.' Find Anara, and hopefully, Azuregos |q 14389/1
step
goto Azshara,27.9,40.1
.talk 36436
..turnin 14389
..accept 14390
step
goto Azshara,27.9,40.1
.talk 36436
..' Tell him Kalec sent you
.' Convince Azuregos to meet with Kalecgos |q 14390/1
step
goto Azshara,27.9,40.1
.talk 36436
..turnin 14390
..accept 14391
step
goto Azshara,27.6,39.6
.talk 37040
..' Ask her to return you back to life
.' Return back to life |nobuff Interface\Icons\Ability_Vanish |c |q 14391
step
goto Azshara,29.8,38.6
.click the Important Documents##9130
.get Blackmaw Meeting Agenda |q 14433/1
step
goto Azshara,30.2,38.6
.from Talrendis Ambassador##36614+
.get 1 Ambassador's Robes |q 14433/2
.from Blackmaw Warrior##36013+, Blackmaw Pathfinder##36015+
.click Briaroot Brews |tip They look like bowls with yellow liquid in them all around this village.
.get 10 Briaroot Brew |q 14432/1
step
goto Azshara,25.9,49.6
.talk 43217
..' Ask him to go to the Northern Rocketway Exchange, please |goto Azshara,42.8,24.7,3.0 |noway |c
step
goto Azshara,42.6,23.7
.talk 36596
..turnin 14430
step
goto Azshara,42.4,23.6
.talk 8586
..turnin 14432
..turnin 14433
..accept 14435
step
goto Azshara,42.6,23.7
.' Use your Ambassador Disguise |use Ambassador Disguise##49368
.talk 36596
..' Tell him you are ready to teleport to Blackmaw Hold |goto Azshara,31.2,29.9,0.5 |noway |c |q 14435
step
goto Azshara,31.0,30.0
.talk 36618
..' Choose any of the funny conversation options
.' Sabotage the Negotiations |q 14435/1
step
goto Azshara,32.5,31.8
.' Leave Blackmaw Hold, killing Blackmaw furbolgs in the process |tip Make your way up the steps and over the wooden bridge, then up another staircase and down a long hallway.
.kill 4 Blackmaw Warrior##36013+ |q 14435/2
.kill 4 Blackmaw Shaman##36012+ |q 14435/3
step
goto Azshara,42.4,23.6
.talk 8586
..turnin 14435
step
goto Azshara,42.5,24.6
.talk 43217
..' Ask him to go to the Northern Rocketway Terminus, please |goto Azshara,66.3,20.8,3.0 |noway |c
step
goto Azshara,66.6,20.4
.talk 35867
..turnin 14391
..accept 24467
step
goto Azshara,66.3,20.3
.talk 37061
..accept 14297
step
goto Azshara,66.5,19.6
.talk 37064
..accept 14261
step
goto Azshara,69.1,15.3 |n
.' Follow the path up |goto Azshara,69.1,15.3,0.5 |noway |c
step
goto Azshara,71.6,16.7
.kill Twilight Lord Katrana##36638 |q 24467/1
.kill Malicion##36649 |q 24467/2 |tip Azuregos will come and kill Malicion for you, don't worry.
step
goto Azshara,71.8,16.7
.talk 36689
..turnin 24467
step
goto Azshara,67.0,18.4
.kill 8 Sable Drake##36640+ |q 14261/1 |tip They fly around in the sky and sit on the hilltops around this area.
.from Twilight Desecrator##36637+, Twilight Dragon Hunter##36636+, Sable Drakonid##36639+
.collect Ironwrought Key##49533 |n
.click Twilight Cage##9123
.' Rescue 4 Bilgewater Laborers |q 14297/1
step
ding 21
step
goto Azshara,66.5,19.6
.talk 37064
..turnin 14261
step
goto Azshara,66.3,20.3
.talk 37061
..turnin 14297
step
goto Azshara,67.0,20.5
.talk 36676
..accept 14392
step
goto Azshara,66.5,21.0
.talk 43328
.' Fly to Bilgewater Harbor, Azshara |goto Azshara,53.0,49.9,0.5 |noway |c
step
goto Azshara,53.3,50.0
.talk 36210
..turnin 14392
step
goto Azshara,53.0,49.8
.talk 37142
..accept 24497
step
goto Azshara,60.5,52.2
.clicknpc Wings of Steel##37139
.' You will fly to Valormok |goto Azshara,14.1,64.6,0.5 |noway |c |q 24497
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Azshara (10-22)\\Azshara (21-22)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Ashenvale (20-26)\\Ashenvale (20-23)
startlevel 21.32
dynamic on
step
goto Azshara,14.0,64.8
.talk 36730
..turnin 24497
..accept 14462
..accept 24433
step
goto Azshara,13.9,64.5
.talk 36919
..accept 24434
step
goto Azshara,14.4,65.0
.talk 36728
..accept 14475
step
goto Azshara,12.5,67.5
.talk 36729
..turnin 14462
step
'If you have a pet, dismiss your pet now.
.' Skip to the next step in the guide
step
goto Azshara,12.5,67.5
.talk 36729
..accept 14464
step
goto Azshara,11.8,68.2
.from Captain Grunwald##36680
.get Grunwald's Head |q 14464/1
.click Sharshiv's Parachute after the fight
.' You'll parachute down to the ground |goto Azshara,14.1,65.2,0.5 |noway |c |q 14464
step
goto Azshara,14.0,64.8
.talk 36730
..turnin 14464
step
goto 13.7,70.7 |n
.' Follow the path up |goto 13.7,70.7,1.0 |noway |c
step
goto Azshara,14.5,75.6
.talk 36785
..turnin 14475
..accept 14476
step
goto Azshara,15.0,74.3
.click Detonator Charge 1##6811
.' Arm Detonator Charge 1 |q 14476/1
step
goto Azshara,15.5,73.7
.click Detonator Charge 2##6811
.' Arm Detonator Charge 2 |q 14476/2
step
goto Azshara,15.6,74.5
.click Detonator Charge 3##6811
.' Arm Detonator Charge 3 |q 14476/3
step
goto Azshara,14.5,75.6
.talk 36785
..turnin 14476
..accept 14477
step
goto Azshara,14.4,75.7
.click the Goblin Detonator |tip It looks like a big red button on the side of a wooden box.
.' Detonate the Explosives |q 14477/1
step
goto Azshara,11.0,71.9
.kill 12 Talrendis Defender##36816+ |q 24433/1
.kill 6 Talrendis Sentinel##36914+ |q 24433/2
.kill 5 Talrendis Lorekeeper##36849+ |q 24434/1
step
goto Azshara,10.5,69.9
.clicknpc Lorekeeper's Summoning Stone##36918
..turnin 24434
step
goto Azshara,10.5,69.9
.clicknpc Lorekeeper's Summoning Stone##36918
..' <Use the stone to teleport back to Valormok.>
..' Teleport back to Valormok |goto Azshara,13.9,64.9,0.5 |noway |c
step
goto Azshara,14.0,64.8
.talk 36730
..turnin 24433
step
goto Azshara,14.4,65.0
.talk 36728
..turnin 14477
step
goto Azshara,14.5,65.7
.talk 36903
..accept 24430
step
ding 22
step
goto Azshara,14.4,65.8
.click the Grounded Wind Rider to ride it |invehicle |c |q 24430
|confirm
step
goto Azshara,15.9,69.9
.' Fly high so they won't shoot at you
.' Use your Bomb Toss ability on your hotbar to bomb Talrendis Glaive Throwers
.kill 6 Talrendis Glaive Thrower##36890+ |q 24430/1
step
goto Azshara,9.2,72.9
.' Fly high so they won't shoot at you
.' Use your Bomb Toss ability on your hotbar to bomb the Command Center |tip It's a big building with a pink-ish roof.
.' Bomb the Command Center |q 24430/2
step
goto Azshara,14.5,65.7
.click the red arrow on your hotbar to stop riding the Wind Rider |outvehicle |c |q 24430
step
goto Azshara,14.5,65.7
.talk 36903
..turnin 24430
step
goto Azshara,14.0,64.8
.talk 36730
..accept 24439
step
goto Azshara,9.1,72.8
.from Commander Jarrodenus##36884
.get The Head of Jarrodenus |q 24439/1
step
goto Azshara,10.5,69.9
.clicknpc Lorekeeper's Summoning Stone##36918
..' <Use the stone to teleport back to Valormok.>
..' Teleport back to Valormok |goto Azshara,13.9,64.9,0.5 |noway |c
step
goto Azshara,14.0,64.8
.talk 36730
..turnin 24439
step
goto Azshara,14.4,65.0
.talk 8610
..accept 24463
step
goto Ashenvale,94.4,46.8
.talk 34195
..turnin 24463
..accept 13866
step
goto Ashenvale,94.4,46.8
.talk 34195
..' Ask him to send you to the Mor'shan Ramparts |goto Northern Barrens,42.7,15.3,0.5 |noway |c |q 13866
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Ashenvale (20-26)\\Ashenvale (20-23)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Ashenvale (20-26)\\Ashenvale (23-26)
startlevel 20.00
dynamic on
step
goto Northern Barrens,42.7,15.0
.talk 8582
..turnin 29111 |tip You may not have this breadcrumb quest to turn in, depending on which guides you completed.
..turnin 13866 |tip You may not have this breadcrumb quest to turn in, depending on which guides you completed.
..accept 13612
..accept 13618
step
goto Northern Barrens,42.3,15.2
.talk 33284
..accept 13615
step
goto Northern Barrens,42.4,15.8
.talk 33263
..accept 13613
step
goto Ashenvale,64.2,84.5
.talk 33294
..turnin 13618
..accept 13619
step
goto Ashenvale,66.2,85.7
.kill 5 Ashenvale Skirmisher##34126+ |q 13612/1
.kill 5 Ashenvale Bowman##34012+ |q 13612/2
.' Use your Medicated Salve on Wounded Mor'shan Defenders |use Medicated Salve##45001 |tip They look like orcs and tauren laying, or kneeling, on the ground around this area.
.' Rescue 5 Wounded Mor'shan Defenders |q 13613/1
.click Servicable Arrow##8572+
|tip They look like the back end of arrows sticking out of the ground around this area.
.get 10 Servicable Arrow |q 13615/1
|modelnpc Wounded Mor'shan Defender##33266
step
goto Northern Barrens,42.7,15.0
.talk 8582
..turnin 13612
..turnin 13619
..accept 13620
step
goto Northern Barrens,42.3,15.2
.talk 33284
..turnin 13615
step
goto Northern Barrens,42.4,15.8
.talk 33263
..turnin 13620
..turnin 13613
..accept 13621
step
goto Ashenvale,64.2,84.5
.' Use Gorat's Imbued Blood on Gorat's corpse |use Gorat's Imbued Blood##45023
.' Follow the Spirit of Gorat
.kill Captain Elendilad##33302 |q 13621/1
'|modelnpc Gorat##33304
step
goto Northern Barrens,42.7,15.0
.talk 8582
..turnin 13621
step
goto Northern Barrens,42.3,15.2
.talk 33284
..accept 13628
step
goto Northern Barrens,42.7,15.0
.talk 8582
..' Ask him to use Brutusk
.collect Kadrak's Reins##45051 |q 13628
step
goto Northern Barrens,42.8,16.1
.clicknpc Brutusk##33374
.' Mount Brutusk |q 13628/1
step
goto Ashenvale,72.9,80.4
.talk 33421
..turnin 13628
..accept 13640
step
goto Ashenvale,71.8,81.1
.talk 33440
..' Ask them to work and promise to protect them
.click Freshly Cut Wood##289
.get 5 Freshly Cut Wood |q 13640/1
step
goto Ashenvale,72.9,80.4
.talk 33421
..turnin 13640
..accept 13651
step
ding 21
step
goto Ashenvale,72.8,78.5
.from Rotting Slime##3928+
.get 5 Natural Oil |q 13651/1
.' You can find more Rotting Slimes around [71.3,75.7]
step
goto Ashenvale,72.9,80.4
.talk 33421
..turnin 13651
..accept 13653
step
goto Ashenvale,72.9,80.4
.talk 33421
..' Tell her you are ready
.' Follow Gorka and ride Brutusk to The Mor'shan Rampart |q 13653/1
'|modelnpc Brutusk##33374
step
goto Northern Barrens,42.7,15.0
.talk 8582
..turnin 13653
..accept 13712
step
goto Northern Barrens,42.7,15.0
.talk 8582
.' Tell him you are ready to accompany him to Splintertree
.' You will ride Brutusk with him
.' Break the Splintertree Post Siege |q 13712/1
'|modelnpc Brutusk##33374
step
goto Ashenvale,73.6,62.1
.talk 33837
..turnin 13712
..accept 13803
step
goto Ashenvale,73.2,61.6
.talk 12616
.fpath Splintertree Post
step
goto Ashenvale,74.0,60.6
.talk 12196
.home Splintertree Post
step
goto Ashenvale,73.6,60.9
.talk 12867
..accept 6503
step
goto Ashenvale,73.2,60.1
.talk 17355
..accept 26448
step
goto Ashenvale,72.2,57.7
.talk 33760
..turnin 13803
..accept 13805
step
goto Ashenvale,73.3,62.1
.talk 33726
..accept 13730
step
goto Ashenvale,73.9,62.5
.talk 12724
..accept 13801
step
goto Ashenvale,81.6,66.8
.' Use your Reinforced Canister next to fel flame patches |use Reinforced Canister##45478 |tip They look like spots of green fire on the ground around this area.
.' Siphon 7 Fel Fires |q 13730/1
.from Mannoroc Lasher##11697+, Searing Infernal##6073+, Roaming Felguard##6115+
.' Slay 15 Demons |q 26448/1
.collect Diabolical Plans##23797 |n
.click the Diabolical Plans in your bags |use Diabolical Plans##23797
..accept 26447
step
goto Ashenvale,72.7,73.0
.kill 9 Ashenvale Outrunner##12856+ |q 6503/1 |tip They are stealthed around this area, so you will need to search a little for them.
.from Sharptalon##12676
.' Sharptalon is a blue hippogryph that flies around this area.
.collect Sharptalon's Claw##16305 |n
.click Sharptalon's Claw in your bags |use Sharptalon's Claw##16305
..accept 2
step
goto 76.0,75.4 |n
.' Enter the den |goto 76.0,75.4,0.5 |noway |c |tip Wait until Gaivan Shadewalker, the level 25 pvp cat, is as far to the right of the entrance as he will go, then sneak past him on the hills into the entrance.
step
goto Ashenvale,75.5,74.2
.' Follow the trail of red crystals
.' Use your Tainted Blood of the Kaldorei next to The Forest Heart |use Tainted Blood of the Kaldorei##45683
.' Corrupt the Forest Heart |q 13805/1
.from Severed Druid##3799+, Severed Keeper##3803+
.' Kill 15 Night Elf Ghosts |q 13801/1
'|model The Forest Heart##7918
step
'Hearth to Splintertree Post |goto Ashenvale,74.0,60.7,0.5 |use hearthstone##6948 |noway |c
step
goto Ashenvale,73.6,60.9
.talk 12867
..turnin 6503
step
goto Ashenvale,73.2,60.1
.talk 17355
..turnin 26448
..turnin 26447
step
ding 22
step
goto Ashenvale,73.3,62.1
.talk 33726
..turnin 13730
..accept 13751
step
goto Ashenvale,73.6,62.1
.talk 33837
..turnin 13805
..accept 13808
..accept 13848
step
goto Ashenvale,73.9,62.5
.talk 12724
..turnin 13801
step
goto Ashenvale,72.2,57.7
.talk 33760
..turnin 13751
..accept 13797
step
goto Ashenvale,72.2,56.5
.click Fresh Rubble##6926
.get 10 Chunk of Ore |q 13797/1
step
goto Ashenvale,72.2,57.7
.talk 33760
..turnin 13797
..accept 13798
step
goto Ashenvale,74.2,63.0
.' Use your Accursed Ore to mark spots on the ground in the battle to the south |use Accursed Ore##45598
.' Slay 30 Attacking Elves |q 13798/1
.' Slay 10 Raging Ancients |q 13798/2
step
goto Ashenvale,72.2,57.7
.talk 33760
..turnin 13798
step
goto Ashenvale,82.5,53.7
.' Use your Secret Signal Powder next to the Smoldering Brazier |use Secret Signal Powder##45710
.talk 33889
..turnin 13808
..accept 13815
..accept 13865
step
goto Ashenvale,89.6,48.6
.talk 34242
..accept 13875
step
goto Ashenvale,85.5,56.1
.kill Protector Endolar##34208 |q 13865/1
.' Use your Splintertree Axe next to Ashenvale Oaks and chop them down |use Splintertree Axe##45807
.click Thorned Bloodcups##8720|tip They are scattered close to the main road around this area.
'|modelnpc Ashenvale Oak##34167
step
goto Ashenvale,85.7,57.9
.kill Protector Arminon##34204 |q 13865/3
.' Use your Splintertree Axe next to Ashenvale Oaks and chop them down |use Splintertree Axe##45807
.click Thorned Bloodcups##8720|tip They are scattered close to the main road around this area.
'|modelnpc Ashenvale Oak##34167
step
goto Ashenvale,85.3,60.7
.kill Protector Dorinar##34294 |q 13865/2
.' Use your Splintertree Axe next to Ashenvale Oaks and chop them down |use Splintertree Axe##45807
.click Thorned Bloodcups##8720|tip They are scattered close to the main road around this area.
'|modelnpc Ashenvale Oak##34167
step
goto Ashenvale,87.4,52.2
.from Ashenvale Scout##34177+
.' Defeat 12 Ashenvale Scouts |q 13865/4
.' Use your Splintertree Axe next to Ashenvale Oaks |use Splintertree Axe##45807
.' Chop down 6 Ashenvale Oaks |q 13815/1
.click Thorned Bloodcups##8720 |tip They are scattered close to the main road around this area.
.collect 8 Thorned Bloodcup##46315 |n
.' Use your Orc-Hair Braid once you have 8 Thorned Bloodcups |use Orc-Hair Braid##46316
.get Bloodcup Braid |q 13875/1
'|modelnpc Ashenvale Oak##34167
step
goto Ashenvale,82.5,53.7
.' Use your Secret Signal Powder next to the Smoldering Brazier |use Secret Signal Powder##45710
.talk 33889
..turnin 13815
..turnin 13865
..accept 13870
step
goto 90.9,58.1
.talk 17304
..turnin 13870
..accept 13871
step
'Run around inside this building and the outskirts close around the building:
.from Kaldorei Assassin##34206 |tip She's stealthed and can spawn in many places inside Kargathia Keep, or close to the walls outside the building, so you will need to search for her.
.get Kaldorei Assassin's Head |q 13871/1
step
goto Ashenvale,90.9,58.1
.talk 17304
..turnin 13871
step
ding 23
step
goto Ashenvale,90.8,58.2
.talk 34233
..accept 13873
step
goto Ashenvale,89.6,48.6
.talk 34242
..turnin 13873
step
'Hearth to Splintertree Post |goto Ashenvale,74.0,60.7,0.5 |use hearthstone##6948 |noway |c
step
goto Ashenvale,73.3,62.1
.talk 33726
..turnin 13875
step
goto 73.2,61.6
.talk 12616
..' Tell her you must get to Zoram'gar right away
.' You will fly to the Zoram Strand |goto 11.2,34.4,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Ashenvale (20-26)\\Ashenvale (23-26)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Stonetalon Mountains (26-31)\\Stonetalon Mountains (26-31)
startlevel 23.15
dynamic on
step
goto Ashenvale,11.2,34.4
.talk 11901
.fpath Zoram'gar Outpost
step
goto Ashenvale,11.6,35.3
.talk 34303
..accept 13883
step
goto Ashenvale,12.7,35.4
.talk 12719
..accept 6442
step
goto Ashenvale,13.0,34.2
.talk 43606
.home Zoram'gar Outpost
step
goto Ashenvale,12.1,33.8
.talk 34122
..turnin 13848
..accept 13890
step
goto Ashenvale,12.8,31.4
.from Wrathtail Wave Rider##3713+, Wrathtail Sorceress##3717+
.get 20 Wrathtail Head |q 6442/1
step
goto Ashenvale,9.5,21.2
.from Mystlash Hydra##3721+
.collect 10 Mystlash Hydra Blubber##46365 |q 13890
.click Sunken Scrap Metal##454
|tip They look like pieces of tan metal underwater all around this area.
.get 10 Sunken Scrap Metal |q 13883/1
step
goto Ashenvale,11.6,35.3
.talk 34303
..turnin 13883
.' Use your Mystlash Hydra Blubber in your bags |use Mystlash Hydra Blubber##46365
.collect Mystlash Hydra Oil##46366 |q 13890
step
goto Ashenvale,12.7,35.4
.talk 12719
..turnin 6442
step
goto Ashenvale,12.8,34.2
.talk 12717
..accept 6641
.' Follow Muglash and click the Naga Brazier when he tells you to
.click Naga Brazier##475
.from Vorsha the Lasher##12940
.' Defeat Vorsha the Lasher |q 6641/1
step
goto Ashenvale,6.7,29.0
.click Lighthouse Fire##655
|tip It's a small fire in a bowl at the top of the lighthouse.
.' Light the Lighthouse Fire |q 13890/1
step
goto Ashenvale,12.1,33.8
.talk 34122
..turnin 13890
..accept 13920
step
goto 12.5,35.1
.talk 12863
..turnin 6641
step
goto Ashenvale,16.1,29.7
.from Wild Buck##3816+
.get 5 Venison Steak |q 13920/1
step
'Hearth to Zoram'gar Outpost |goto Ashenvale,13.0,34.2,0.5 |use Hearthstone##6948 |noway |c
step
goto Ashenvale,12.1,33.8
.talk 34122
..turnin 13920
..accept 13923
step
goto Ashenvale,11.2,34.4
.talk 11901
..' Tell him Grimfang has ordered you to Hellscream's Watch
.' You will fly to Hellscream's Watch |goto Ashenvale,38.1,42.2,0.5 |noway |c
step
goto Ashenvale,38.1,42.2
.talk 34429
.fpath Hellscream's Watch
step
goto 38.6,42.2
.talk 43624
.home Hellscream's Watch
step
goto Ashenvale,38.9,42.4
.talk 12721
..accept 6462
step
goto Ashenvale,38.5,43.8
.talk 34359 |tip He walks around the camp a bit, so you may have to look around.
..turnin 13923
..accept 13936
step
goto Ashenvale,38.0,43.9
.talk 34395
..turnin 13936
..accept 13942
step
goto Ashenvale,37.8,43.5
.talk 12757
..accept 216
step
goto Ashenvale,38.5,43.8
.talk 34359 |tip He walks around the camp a bit, so you may have to look around.
..accept 13943
step
goto Ashenvale,36.6,45.7
.kill 10 Astranaar Skirmisher##34419+ |q 13943/1
.kill 3 Astranaar Officer##34420+ |q 13943/2
.click Moon-kissed Clay##20
|tip They look like small dirt piles around this area.
.get 10 Moon-kissed Clay |q 13942/1
step
ding 24
step
goto 31.3,46.1 |n
.' Follow this path north |goto 31.3,46.1,0.5 |noway |c
step
goto 37.1,32.9 |n
.' Follow the path up |goto 37.1,32.9,0.5 |noway |c
step
goto 38.3,30.6 |n
.' Enter the cave |goto 38.3,30.6,0.5 |noway |c
step
goto Ashenvale,40.0,32.4
.click Troll Chests##2450
|tip They look like small wooden chests on the ground inside the cave.
.get 8 Troll Charm |q 6462/1
step
goto Ashenvale,41.5,34.5
.talk 12818
..accept 6482
.' Escort Ruul from the Thistlefurs |q 6482/1
step
goto 38.7,36.9
.from Thistlefur Avenger##3925+, Thistlefur Shaman##3924+
.' Kill 15 Thistlefur Village Furbolgs |q 216/1
step
goto Ashenvale,37.3,40.1 |n
.' Follow the path up |goto Ashenvale,37.3,40.1,0.5 |noway |c
step
goto Ashenvale,37.8,43.5
.talk 12757
..turnin 216
step
goto Ashenvale,38.0,43.9
.talk 34395
..turnin 13942
..accept 13944
step
goto Ashenvale,38.5,43.8
.talk 34359 |tip He walks around the camp a bit, so you may have to look around.
..turnin 13943
step
goto Ashenvale,38.4,44.2
.' Use Tweedle's Improvised Explosive next to the Broken-down Wagon |use Tweedle's Improvised Explosive##46701
.' Explode the Broken Wagon |q 13944/1
step
goto Ashenvale,38.5,43.8
.talk 34359  |tip He walks around the camp a bit, so you may have to look around.
..turnin 13944
..accept 13947
step
goto Ashenvale,38.9,42.4
.talk 12721
..turnin 6462
step
goto Ashenvale,38.1,42.2
.talk 34429
..' Tell her you are to bomb Astranaar
.' Use the Throw Explosive ability on your hot bar to on the mobs in Astranaar
.kill 20 Astranaar Sentinel##52000+ |q 13947/1
.' Destroy 10 Astranaar Throwers |q 13947/2
.' Use the Return to Base! ability on your hotbar when you are finished
.' Go back to Hellscream's Watch |goto Ashenvale,38.1,42.3,0.5 |noway |c |q 13947
step
goto Ashenvale,38.5,43.8
.talk 34359 |tip He walks around the camp a bit, so you may have to look around.
..turnin 13947
..accept 13958
step
goto Ashenvale,38.8,43.3
.talk 34510
..accept 13879
step
goto Ashenvale,38.0,43.9
.talk 34395
..accept 13974
step
goto Ashenvale,52.1,56.5
.talk 34512
..turnin 13879
step
goto Ashenvale,52.1,56.7
.talk 34292
..accept 13884
step
goto Ashenvale,52.3,56.5
.talk 34290
..accept 13880
step
goto Ashenvale,51.7,55.4
.kill 10 Lava Rager##34314+ |q 13884/1
.' Use your Gift of the Earth next to Lava Fissures |use Gift of the Earth##46352 |tip They look like piles of dirt on the ground around this area.
.' Fill 8 Lava Fissures |q 13880/1 
step
goto Ashenvale,52.3,56.5
.talk 34290
..turnin 13880
step
goto Ashenvale,52.1,56.7
.talk 34292
..turnin 13884
step
goto Ashenvale,52.3,56.8
.talk 34289
..accept 13888
step
goto Ashenvale,52.3,56.8
.talk 34289
..' Tell him you are ready to be one with the whirling vortex and defeat Lord Magmathar
.' Use the abilities on your hotbar to fight Lord Magmathar
.kill Lord Magmathar##34295 |q 13888/1
step
goto Ashenvale,52.1,56.5
.talk 34512
..turnin 13888
step
ding 25
step
goto Ashenvale,49.7,65.1
.talk 12696
..turnin 2
..accept 13967
step
goto Ashenvale,49.3,65.2
.talk 34943
.fpath Silverwind Refuge
step
goto Ashenvale,50.0,67.3
.talk 34569
..turnin 13974
..accept 13977
step
goto Ashenvale,50.1,67.6
.talk 34559
..accept 25
step
goto Ashenvale,50.4,67.2
.talk 43633
.home Silverwind Refuge
step
goto Ashenvale,48.2,69.7
.kill 12 Befouled Water Elemental##3917+ |q 25/1
.kill Tideress##12759 |q 25/2
.collect Befouled Water Globe##16408 |n
.click the Befouled Water Globe in your bags |use Befouled Water Globe##16408
..accept 1918
step
goto Ashenvale,46.2,63.3
.talk 34596
..turnin 13977
..accept 13980
..accept 13983
step
goto Ashenvale,40.9,66.3
.' Use Jinx'z Goggles in your bags to detect elves |use Jinx's Goggles##46776
.kill 12 Ashenvale Assassin##34603+ |q 13980/1 |tip They are stealthed all around this area.
.from Ursangous##12678
.collect Ursangous' Paw##16303 |n
.click Ursangous' Paw in your bags |use Ursangous' Paw##16303
..accept 23
.click Copper Plating##7041+
.get 3 Copper Plating |q 13983/2
.click Locking Bolt##8938+
.get 5 Locking Bolt |q 13983/3
.click Bronze Cog##451
.get 3 Bronze Cog |q 13983/1
step
goto Ashenvale,46.2,63.3
.talk 34596
..turnin 13980
..turnin 13983
step
goto Ashenvale,50.1,67.6
.talk 34559
..turnin 25
..turnin 23
step
goto Ashenvale,52.8,63.5
.from Foulweald Totemic##3750+, Foulweald Warrior##3743+, Foulweald Pathfinder##3745+
.get 15 Furbolg Ear |q 13967/1
step
goto Ashenvale,49.7,65.1
.talk 12696
..turnin 13967
..accept 6621
step
goto Ashenvale,56.4,63.5
.' Use Senani's Banner while standing on this small hill |use Senani's Banner##16972
.' Kill the enraged furbolgs that rush you until Chief Murgut appears
.from Chief Murgut##12918
.click Murgut's Totem Basket##5131
.get Murgut's Totem |q 6621/1
step
goto Ashenvale,60.,53.2
.talk 34518
..turnin 13958
..accept 13962
step
goto Ashenvale,62.0,52.3
.from Shadumbra##12677 |tip She's a black panther that walks around this area.
.collect Shadumbra's Head##16304 |n
.click Shadumbra's Head in your bags |use Shadumbra's Head##16304
..accept 24
step
ding 26
step
goto Ashenvale,62.1,51.4
.' Go to the top of the tower
.kill Keeper Ordanus##4273 |q 13962/1
step
goto Ashenvale,60.,53.2
.talk 34518
..turnin 13962
step
'Hearth to Silverwind Refuge |goto Ashenvale,50.4,67.1,0.5 |use hearthstone##6948 |noway |c
step
goto Ashenvale,49.7,65.1
.talk 12696
..turnin 6621
step
goto Ashenvale,49.3,65.2
.talk 34943
.' Fly to Splintertree Post, Ashenvale |goto Ashenvale,73.3,61.7,0.5 |noway |c
step
goto Ashenvale,74.1,60.9
.talk 12837
..turnin 6482
step
goto 74.2,60.7
.talk 12737
..turnin 1918
step
goto 73.4,62.0
.talk 33726
..accept 13841
step
goto Ashenvale,73.2,61.6
.talk 12616
.' Fly to Hellscream's Watch, Ashenvale |goto 38.1,42.3,0.5 |noway |c
step
goto Ashenvale,38.5,43.8
.talk 34359 |tip He walks around the camp a bit, so you may have to look around.
..turnin 24
step
|fly Orgrimmar
step
goto 48.2,70.6
.talk 39605
..turnin 13841
step
|fly Silverwind Refuge
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Stonetalon Mountains (26-31)\\Stonetalon Mountains (26-31)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Southern Barrens (31-35)\\Southern Barrens (31-34)
startlevel 26.46
dynamic on
step
goto Ashenvale,49.9,65.8
.talk 41678
..accept 25945
step
goto Ashenvale,48.5,66.4
.clicknpc Krom'gar Wagon##41744
.' Take the Krom'gar Wagon to the Fold |goto Stonetalon Mountains,74.3,47.5,1.0 |noway |c |q 25945
step
goto Stonetalon Mountains,74.3,47.7
.talk 34341
..turnin 25945
..accept 25999
step
goto Stonetalon Mountains,73.3,45.1
.click Krom'gar "Elf Killer"s |tip They look like small black spiked bombs on the ground around this area.
.' Arm 8 Krom'gar "Elf Killer"s |q 25999/1
step
goto Stonetalon Mountains,74.3,47.7
.talk 34341
..turnin 25999
..accept 26001
step
goto Stonetalon Mountains,74.4,47.7
.talk 40926
..accept 26003
step
goto Stonetalon Mountains,73.3,56.6
.talk 40901
..turnin 26001
..accept 26002
step
goto Stonetalon Mountains,75.4,58.3
.from Huntress Davinia##41864
.get Alliance Attack Plans |q 26002/1
step
goto Stonetalon Mountains,73.2,53.1
.kill 12 Darnassian Scout##41865+ |q 26003/1
.' If your Infrared Heat Focals buff wears off, use your Infrared Heat Focals to get the buff again |use Infrared Heat Focals##56470
step
goto Stonetalon Mountains,74.4,47.7
.talk 40926
..turnin 26003
step
goto Stonetalon Mountains,74.3,47.7
.talk 34341
..turnin 26002
..accept 26004
step
ding 27
step
goto 68.2,60.4 |n
.' Follow the path up |goto 68.2,60.4,0.5 |noway |c
step
goto 66.5,62.7
.talk 35140
.fpath Krom'gar Fortress
step
goto Stonetalon Mountains,66.3,63.6
.talk 41023
..turnin 26004
..accept 26009
..accept 26010
step
goto Stonetalon Mountains,66.1,64.2
.talk 40907
..accept 26026
step
goto Stonetalon Mountains,66.5,64.2
.talk 41892
.home Krom'gar Fortress
step
goto Stonetalon Mountains,65.9,64.1
.talk 42028
..accept 28084 |instant
step
goto Stonetalon Mountains,65.8,63.3
.talk 40903
..accept 26011
step
goto Stonetalon Mountains,62.1,68.0
.kill Marshal Paltrow##41937 |q 26011/1
.collect Orders from Base Camp##56474 |n
.click the Orders from Base Camp in your bags |use Orders from Base Camp##56474
..accept 26016
step
goto Stonetalon Mountains,61.5,66.8
.' Use your Krom'gar Flame Thrower next to the white tents around this area |use Krom'gar Flame Thrower##56473
.' Incinerate 8 Northwatch Tents |q 26010/1
step
goto Stonetalon Mountains,59.9,64.2
.click Mechanized Air##9523
.get Mechanized Air |q 26026/4
step
goto Stonetalon Mountains,63.1,56.7
.click Mechanized Fire##9519
.get Mechanized Fire |q 26026/2
step
goto Stonetalon Mountains,66.2,50.0
.click Mechanized Ice##9521
.get Mechanized Ice |q 26026/3
step
goto 69.3,46.2 |n
.' Follow the path up |goto 69.3,46.2,0.5 |noway |c
step
goto Stonetalon Mountains,63.0,45.6
.click BD-816 War Apparatus##9504
.get BD-816 War Apparatus |q 26026/1
step
'Hearth to Krom'gar Fortress |goto Stonetalon Mountains,66.5,64.2,0.5 |use hearthstone##6948 |noway |c
step
goto Stonetalon Mountains,66.3,63.6
.talk 41023
..turnin 26010
..accept 26020
..turnin 26016
step
goto Stonetalon Mountains,66.1,64.2
.talk 40907
..turnin 26026
..accept 26028
step
goto Stonetalon Mountains,65.8,60.1
.' Use the abilities on your hotbar to fight Gnomebot Pounders and Gnome Engineers around this area
.kill 5 Gnomebot Pounder##35203+ |q 26028/1
.kill 20 Gnome Engineer##35334+ |q 26028/2
.kill 20 Alliance Soldier |q 26009/1
step
goto Stonetalon Mountains,66.3,63.6 |n
.click the red arrow to stop controlling the Large Daddy |outvehicle |c
step
goto Stonetalon Mountains,66.3,63.6
.talk 41023
..turnin 26009
..turnin 26028
step
goto Stonetalon Mountains,66.2,62.9
.talk 40902
..turnin 26020
..accept 26044
step
ding 28
step
goto Stonetalon Mountains,65.8,63.3
.talk 40903
..turnin 26011
step
goto 66.4,60.7 |n
.' Enter the mine |goto 66.4,60.7,0.5 |noway |c
step
goto Stonetalon Mountains,67.1,64.5
.talk 41991
..turnin 26044
..accept 26045
step
goto Stonetalon Mountains,67.2,64.5
.talk 41992
..accept 26047
step
goto Stonetalon Mountains,67.1,64.6
.talk 41990
..accept 26046
step
goto Stonetalon Mountains,66.9,65.5
.kill 12 Raging Earth Elemental##41993+ |q 26046/1
.click Spare Part##9567
.get 10 Spare Part |q 26045/1
.talk 41989
.' Rescue 10 Frightened Peons |q 26047/1
step
goto Stonetalon Mountains,67.1,64.6
.talk 41990
..turnin 26046
step
goto Stonetalon Mountains,67.1,64.5
.talk 41991
..turnin 26045
step
goto Stonetalon Mountains,67.2,64.5
.talk 41992
..turnin 26047
step
goto Stonetalon Mountains,67.1,64.5
.talk 41991
..accept 26048
step
goto Stonetalon Mountains,66.4,60.7 |n
.' Leave the mine |goto Stonetalon Mountains,66.4,60.7,0.5 |noway |c
step
goto 68.0,60.7 |n
.' Follow the path up |goto 68.0,60.7,0.5 |noway |c
step
goto Stonetalon Mountains,66.2,62.9
.talk 40902
..turnin 26048
..accept 26058
step
goto Stonetalon Mountains,66.1,63.0
.clicknpc Goblin Heavy Gun##41894
.' Shoot at the airplanes flying in the sky, then shoot the people who parachute out of the destroyed airplanes
' |from Gnomish Bomber##42015+
.kill 15 Gnomish Flying Machine |q 26058/1
.kill 25 Gnome Wing Commander##42017+ |q 26058/2
step
.click the red arrow on your hotbar to stop controlling the Goblin Heavy Gun |outvehicle |c |q 26058
step
goto Stonetalon Mountains,66.3,63.6
.talk 41023
..turnin 26058
..accept 26059
step
goto Stonetalon Mountains,64.9,82.7
.talk 11821
..accept 26063
step
goto Stonetalon Mountains,59.9,74.2 |n
.' The path up to The Queen and Her Court starts here |goto Stonetalon Mountains,59.9,74.2,0.5 |noway |c
step
goto Stonetalon Mountains,55.9,73.7
.kill Queen Silith##41185+ |q 26063/1 |tip She walks around this area.
' |from Deepmoss Venomspitter##4007+, Deepmoss Creeper##4005+, Deepmoss Webspinner##4006+
.kill 10 Webwinder Hollow Spider |q 26063/2
step
goto Stonetalon Mountains,64.9,82.7
.talk 11821
..turnin 26063
step
ding 29
step
goto Stonetalon Mountains,70.5,88.1 |n
.' Follow the path up |goto Stonetalon Mountains,70.5,88.1,0.5 |noway |c
step
goto Stonetalon Mountains,71.1,91.2
.talk 3995
..turnin 26059
..accept 26060
..accept 26061
..accept 26069
step
goto Stonetalon Mountains,72.0,91.2
.talk 3411
..accept 26064
step
goto Stonetalon Mountains,67.2,83.3
.from Stonetalon Ram##34894+
.get 6 Stonetalon Ram Horns |q 26061/1
.from Cliff Stormer##4008+
.get 1 Stormer Heart |q 26060/1
.click Kalimdor Eagle Nest##7143
.get 8 Kalimdor Eagle Egg |q 26064/1
step
goto Stonetalon Mountains,70.5,88.1 |n
.' The path into Malaka'jin starts here |goto Stonetalon Mountains,70.5,88.1,0.5 |noway |c
step
goto Stonetalon Mountains,71.1,91.2
.talk 3995
..turnin 26060
..turnin 26061
..accept 26062
step
goto Stonetalon Mountains,71.2,91.1
.talk 42023
..accept 26066
step
goto Stonetalon Mountains,72.0,91.2
.talk 3411
..turnin 26064
step
goto 66.8,85.4 |n
.' Follow the path up |goto 66.8,85.4,0.5 |noway |c
step
goto 61.9,89.2
.' Use Subjugator Devo's Whip on kobolds inside the cave |use Subjugator Devo's Whip##56794
.' Subdue 6 Boulderslide Kobolds |q 26066/1
.click Resonite Crystal##5011
.get 8 Resonite Crystal |q 26062/1
step
goto 62.0,89.3 |n
.' Leave the cave |goto 62.0,89.3,0.5 |noway |c
step
goto Stonetalon Mountains,70.5,88.1 |n
.' Follow the path up |goto Stonetalon Mountains,70.5,88.1,0.5 |noway |c
step
goto Stonetalon Mountains,71.2,91.1
.talk 42023
..turnin 26066
..accept 26068
step
goto Stonetalon Mountains,71.1,91.2
.talk 3995
..turnin 26062
..accept 26067
step
goto Stonetalon Mountains,70.3,85.6
.' Use Jin'Zil's Voodoo Stick on Krom'gar Marauders around this area |use Jin'Zil's Voodoo Stick##56798
.' Empower 12 Krom'gar Marauders |q 26067/1
step
goto Stonetalon Mountains,79.0,81.2 |n
.' Follow the path up |goto Stonetalon Mountains,79.0,81.2,0.5 |noway |c
step
goto Stonetalon Mountains,73.9,78.3
.' Use your Kobold War Horn next to the Horde Banner |use Kobold War Horn##56799 |tip It looks like a tall pole with 2 red flags hanging on it.
.' Unleash the Kobold Army! |q 26068/1
step
'Hearth to Krom'gar Fortress |goto Stonetalon Mountains,66.5,64.2,0.5 |use hearthstone##6948 |noway |c
step
goto Stonetalon Mountains,66.5,62.7
.talk 35140
.' Fly to Malaka'jin, Stonetalon Mountains |goto Stonetalon Mountains,70.6,89.4,0.5 |noway |c
step
goto Stonetalon Mountains,71.2,91.1
.talk 42023
..turnin 26068
step
goto Stonetalon Mountains,71.1,91.2
.talk 3995
..turnin 26067
..accept 26073
step
ding 30
step
goto Stonetalon Mountains,70.6,89.5
.talk 35139
.' Fly to Krom'gar Fortress, Stonetalon Mountains |goto Stonetalon Mountains,66.5,62.8,0.5 |noway |c
step
goto Stonetalon Mountains,66.3,63.6
.talk 41023
..turnin 26073
..accept 26074
step
goto Stonetalon Mountains,66.7,63.7
.clicknpc Rope Ladder##41019
.' Ride the Krom'gar Hot Air Balloon to the Sludgewerks |q 26074/1
step
goto Stonetalon Mountains,53.0,39.1
.talk 42033
..turnin 26074
..accept 26075
step
goto Stonetalon Mountains,53.9,40.1
.talk 41246
.fpath The Sludgewerks
step
goto Stonetalon Mountains,54.8,47.3
.kill 6 Pridewing Wyvern##4012+ |q 26075/1
step
goto Stonetalon Mountains,53.0,39.1
.talk 42033
..turnin 26075
..accept 26076
step
goto Stonetalon Mountains,52.3,41.9
.' Use Jibbly's Gas Bomb on the moving white light and sparkles around The Sludgewerks |use Jibbly's Gas Bomb##56800
.kill 8 Alliance Spy##42034+ |q 26076/1
step
goto Stonetalon Mountains,53.0,39.1
.talk 42033
..turnin 26076
..accept 26077
step
goto Stonetalon Mountains,51.2,45.5
.clicknpc Krom'gar Hot Air Balloon
.' Ride the Krom'gar Hot Air Balloon to Cliffwalker Post |q 26077/1
|modelnpc Krom'gar Hot Air Balloon##40984
step
goto Stonetalon Mountains,45.1,32.8
.talk 42050
..turnin 26077
..accept 26082
step
goto Stonetalon Mountains,45.1,30.9
.talk 35141
.fpath Cliffwalker Post
step
goto Stonetalon Mountains,46.0,37.2
.click a Krom'gar Demolisher to control it |invehicle |c
|modelnpc Krom'gar Demolisher##35163
step
goto Stonetalon Mountains,42.5,36.2
.' Use the abilities on your hotbar to do the following:
.' Destroy 5 Darnassian Glaive Throwers |q 26082/1
' |from Battlescar Ancient##35152+, Darnassian Glaive Thrower##35150+, Draenei Paladin##35153+, Night Elf Mage##35154+, Stonetalon Warder##35151+
.kill 20 Alliance Solder in Battlescar Vallet |q 26082/2
step
.click the red arrow to stop controlling the Krom'gar Demolisher |outvehicle |c
step
goto Stonetalon Mountains,45.1,32.8
.talk 42050
..turnin 26082
step
goto Stonetalon Mountains,45.0,32.8
.talk 42039
..accept 26097
step
goto Stonetalon Mountains,39.7,46.4
.talk 42091
..turnin 26097
..accept 26098
step
goto Stonetalon Mountains,45.0,32.8
.talk 42039
..turnin 26098
..accept 26099
step
'Watch the dialogue and fight
.' Defend yourself |q 26099/1
step
goto Stonetalon Mountains,45.0,32.8
.talk 42047
..turnin 26099
..accept 26100
step
'Hearth to Krom'gar Fortress |goto Stonetalon Mountains,66.5,64.2,0.5 |use hearthstone##6948 |noway |c
step
goto Stonetalon Mountains,66.3,63.6
.talk 41023
..turnin 26100
..accept 26101
step
ding 31
step
goto Stonetalon Mountains,66.5,62.8
.talk 35140
.' Fly to Cliffwalker Post, Stonetalon Mountains |goto Stonetalon Mountains,45.1,30.9,0.5 |noway |c
step
goto Stonetalon Mountains,45.6,34.2
.talk 41023
..turnin 26101
..accept 26115
step
'Watch the Alliance village get destroyed and the dialogue
.' Learn what it means to be Horde. |q 26115/1
step
goto Stonetalon Mountains,45.6,34.2
.talk 42039
..turnin 26115
step
goto Stonetalon Mountains,45.1,30.9
.talk 35141
.' Fly to Malaka'jin, Stonetalon Mountains |goto Stonetalon Mountains,70.6,89.4,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Desolace (31-36)\\Desolace (31-33)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Desolace (31-36)\\Desolace (33-36)
startlevel 31.15
dynamic on
step
goto Desolace,54.8,8.8
.talk 35286
..accept 14184
step
goto 54.8,8.7
.clicknpc Furien's Mount##35287
.' You will fly to Furien's Post |goto 44.6,30.0,0.5 |noway |c
step
goto 44.6,29.4
.talk 35295
..turnin 14184
..accept 14188
step
goto 44.9,29.5
.talk 35298
..turnin 14188
..accept 14189
step
goto 44.3,29.7
.talk 35315
.fpath Furien's Post
step
goto 61.0,29.0
.talk 35757
..accept 14251
..accept 14252
..accept 14253
step
goto 59.0,17.6
.from Gritjaw Basilisk##4728+
.get 15 Aged Basilisk Tail |q 14252/1
.from Scorpashi Snapper##4696+
.get 15 Scorpion Stinger |q 14251/1
.from Dread Swoop##4692+
.get 25 Dread Swoop Feather |q 14253/1
.' You can find more of all of these around [66.2,25.3]
step
goto 61.0,29.0
.talk 35757
..turnin 14251
..turnin 14252
..turnin 14253
step
goto 69.3,29.3
.click Ancient Tablets##2652
..turnin 14189
..accept 14191
step
goto 70.7,32.9
.talk 35556
.fpath Thunk's Abode
step
goto 70.4,33.0
.talk 35661
..accept 14246
..accept 14247
step
goto 65.2,23.2
.' Click your Swoop Eggs while standing in a Swoop Nest and protect them until they are collected by Defiant Swoop |use Swoop Eggs##49014 |tip They look like big brown bird nests on the ground around this area
.' Protect 3 Swoop Eggs |q 14246/1
step
goto 69.2,21.2
.click Smouldering Stone##9067
..turnin 14247
..accept 14254
step
goto 62.3,24.1
.click Element 116##384
.get 7 Element 116 |q 14254/1
step
goto 61.0,29.0
.talk 35757
..turnin 14254
step
goto 70.4,33.0
.talk 35661
..turnin 14246
step
goto 75.8,26.6
.' Go to this spot
.' Visit Elune's Cathedral Ruins |q 14191/1
step
goto 75.8,26.6
.click Elune's Handmaiden##9053
..accept 14219
step
goto 78.7,23.2
.' Go to this spot
.' Visit Elune's Temple Ruins |q 14191/2
step
goto 78.7,23.2
.click Elune's Brazier##6661
..accept 14213
step
goto 77.0,18.1
.' Go to this spot
.' Visit Elune's Sanctuary Ruins |q 14191/3
step
goto 77.0,18.1
.click the Complete Quest Box that appears under your mini map.
..turnin 14191
..accept 14360
step
ding 32
step
goto 78.7,18.7
.click Melonfruit##434
.collect 8 Melonfruit##48106 |q 14360
  	step
goto 77.0,18.1
.' Use your Melonfruit |use Melonfruit##48106
.' Complete the Cleansing Ritual |q 14360/1
.click the Complete Quest Box that appears under your mini map.
..turnin 14360
..accept 14195
step
goto 76.3,23.7
.click Weapon Rack##130+
.collect 20 Satyr Saber##48943 |q 14219
.' You can find more Weapon Racks around [72.1,19.1]
step
goto 76.3,23.7
.from Hatefury Trickster##4671+, Hatefury Felsworn##4672+, Hatefury Betrayer##4673+, Hatefury Rogue##4670+, Hatefury Hellcaller##4675+, Hatefury Shadowstalker##4674+
.collect 10 Satyr Flesh##48857 |q 14213
step
goto 73.3,16.3 |n
.' Follow this hill up |goto 73.3,16.3,0.5 |noway |c
step
goto 74.8,13.3
.' Go to this spot
.goal Ruins of Elune's Palace Located |q 14195/1
step
goto 74.8,13.3
.click the Ancient Vortex Runestone##235
..turnin 14195
..accept 14196
step
goto 75.2,17.6
.' Use your Vortex Gem |use Vortex Gem##48110
.from Disciple of Elune##35384+
.' Create Raging Vortex |q 14196/1 |tip You need to kill 7 Disciples of Elune while your Vortex is out to make it grow into a Raging Vortex.
.' You can find more Disciples of Elune around [77.1,18.1]
.click on the Complete Quest Box that appears under your mini map.
..turnin 14196
..accept 14198
step
goto 78.8,23.1
.' Use your Satyr Flesh while standing next to Elunes Brazier |use Satry Flesh##48857 |tip It looks like a yellow and blue object between stone pillars.
.' Complete the Sacrificial Offering |q 14213/1
|model Elune's Brazier##6661
step
goto 78.8,23.1
.click Elune's Brazier##6661
..turnin 14213
step
goto 75.9,26.6
.' Use your Satyr Sabers while standing next to Elune's Handmaiden |use Satyr Sabers##48943 |tip It looks like a stone statue holding a bowl of water.
.' Complete Elune's Ritual of War |q 14219/1
|model Elune's Handmaiden##9053
step
goto 75.9,26.6
.click Elune's Handmaiden##9053
..turnin 14219
step
goto 67.7,17.1
.' Use your Raging Vortex Gem |use Raging Vortex Gem##48249 |tip You need to be standing at the entrance to Nijel's Point for this to activate.
.' Use your Flashfire spell on Nijel's Point enemies
.' Slay 15 Nijel's Point Merchants |q 14198/2
.' Slay 40 Nijel's Point Defenders |q 14198/1
step
'Use your Calm the Storm spell to exit the Raging Vortex
.' You will fly back to Furien's Post |outvehicle |c |q 14198
step
goto 44.6,29.4
.talk 35295
..turnin 14198
..accept 14255
step
goto 44.9,29.5
.talk 35298
..accept 14223
step
goto 53.2,32.9
.from Kohor##35632
.' Slay Kohor |q 14223/1
.click on the Complete Quest Box that appears under your mini map.
..turnin 14223
..accept 14225
step
goto 56.1,29.6 |n
.' Enter the fortress |goto 56.1,29.6,0.5 |noway |c
step
goto 55.9,29.3
.from Burning Blade Augur##4663, Burning Blade Reaver##4664, Burning Blade Felsworn##4666
.collect Burning Blade Ear##49010 |n
.click the Burning Blade Ear in your bag |use Burning Blade Ear##49010
..accept 14232
step
goto 52.9,29.0
.click Demonic Chest##5743
.get Ancient Summoning Ritual |q 14225/1
.click on the Complet Quest Box that appears under your mini map.
..turnin 14225
..accept 14227
step
goto 55.0,26.7
.click Bleached Skullpiles##293
.collect 100 Bleached Skull##48953 |q 14227
step
goto 55.0,26.7
.' Use your Bleached Skulls while standing in this Summoning Circle to summon Nazargen |use Bleached Skull##48953
.kill Nazargen##35647 |q 14227/1
step
goto 55.9,28.8
.from Burning Blade Felsworn##4666+
.get 25 Burning Blade Ear |q 14232/1
step
goto 56.0,29.5 |n
.' Leave the fortress |goto 56.0,29.5,0.5 |noway |c
step
goto 44.9,29.5
.talk 35298
..turnin 14227
..turnin 14232
step
goto 41.1,29.0 |n
.' Follow the path up |goto 41.1,29.0,0.5 |noway |c
step
goto 38.8,27.0
.talk 35773
..turnin 14255
..accept 14256
step
goto 38.8,27.0
.talk 35773
..' Tell him you are ready to be shown the threat he speaks of.
.' Scout the Naga Forces |q 14256/1
step
goto 38.8,27.0
.talk 35773
..turnin 14256
..accept 14257
step
ding 33
step
goto 41.6,25.4
.from Slitherblade Naga##4711+
.get 10 Slitherblade Bones |q 14257/1
.from Slitherblade Sorceress##4712+
.get 30 Slitherblade Scale |q 14257/2
.from Slitherblade Warrior##4713+
.get 4 Slitherblade Fin |q 14257/3
.' You can find more of these around [37.5,24.9]
step
goto 41.1,29.0 |n
.' Follow the path up |goto 41.1,29.0,0.5 |noway |c
step
goto 38.8,26.9
.talk 35773
..turnin 14257
..accept 14260
step
goto 38.8,26.9
.' Use your Slitherblade Charm |use Slitherblade Charm##49064
.' Use the Slitherblade Charm |q 14260/1
step
goto 30.9,30.9
.' Be careful of Sharks and other Sea Creatures, they can see through your Disguise.
.talk 35827
..turnin 14260
..accept 14264
step
goto 33.1,16.7
.from Servant of Neptulon##35842+
.' Defeat 5 Servants of Neptulon |q 14264/1
step
goto 30.9,30.9
.talk 35827
..turnin 14264
..accept 14268
step
goto 29.2,15.0
.' Use your Shatter Rubble ability to shoot Piles of Rubble around this area |tip Just spam your 4 key, you don't have to target the rubble.
.collect 4 Ancient Tablet Fragment##49102 |q 14268
.' Use your Ancient Tablet Fragments |use Ancient Tablet Fragment##49102
.get Ancient Engravings of Neptulon |q 14268/1
.click on the Complete Quest Box that appears under your mini map.
..turnin 14268
..accept 14282
|model Ancient Tablet Fragment
step
goto 41.1,29.0 |n
.' Follow this path up |goto 41.1,29.0,0.5 |noway |c
step
goto Desolace,38.8,27.0
.talk 35773
..turnin 14282
..accept 14292
step
goto 29.1,8.1
.talk 35902
..turnin 14292
..accept 14284
step
goto 29.1,8.1
.talk 35902
.' Tell him you are prepared to join him in battle! |invehicle |c
step
.' Use your abilities to kill Valishj
.from Valishj##35898
.' Slay Valishj |q 14284/1
.click the red arrow on your hotbar to stop controling Lord Hydronis |outvehicle |c
step
goto 29.1,8.1
.talk 35902
..turnin 14284
..accept 14301
step
goto 41.1,29.0 |n
.' Follow this path up |goto 41.1,29.0,0.5 |noway |c
step
goto 38.8,27.0
.talk 35773
..turnin 14301
..accept 14302
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Desolace (31-36)\\Desolace (33-36)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Feralas (36-40)\\Feralas (36-40)
startlevel 33.80
dynamic on
step
goto Desolace,57.5,47.7
.talk 36034
..turnin 14302 |tip You will only be able to turn this in if you have completed the Desolace 31-33 guide.
..accept 14307
step
goto 56.7,50.0
.talk 43872
.home Karnum's Glade
step
goto 57.7,49.8
.talk 35478
.fpath Karnum's Glade
step
goto 58.6,48.7
.talk 36060
..accept 14305
..accept 14306
step
goto 58.8,46.4
.talk 36048
..accept 14304
step
goto 57.4,39.3
.' Use your Bottle of Leeches on Rejuvenated Thunder Lizards in this area, then kill them to spawn Blood-Filled Leeches |use Bottle of Leeches##49138
.collect 10 Blood-Filled Leech##49136 |q 14304
.' You can find more Rejuvenated Thunder Lizards around here [52.8,45.1]
|modelnpc Rejuvenated Thunder Lizard##35412
step
goto 51.6,45.6
.from Uprooted Lasher##36062+
.' Slay 7 Uprooted Lashers |q 14306/1
step
goto 48.1,40.2
.from Whirlwind Stormwalker##11577+
.' Destroy 5 Whirlwind Stormwalkers |q 14307/1
step
ding 34
step
goto 53.9,52.2 |n
.' Follow this path up |goto 53.9,52.2,0.5 |noway |c
step
goto 52.2,53.4
.talk 4498
..accept 14339
step
goto 55.4,55.8
.talk 11259
..accept 14341
step
goto 56.2,59.6
.talk 5395
..accept 14342
..accept 5581
step
goto 53.5,59.6
.click on Aloe Thistle |tip They look like dark green spiny plants around this area.
.get 10 Aloe Thistle |q 14305/1
.' You can find more Aloe Thistle around here [53.6,46.8]
.from Dying Kodo##4701+
.get 3 Hollow Kodo Horn |q 14339/1
step
goto 53.8,52.4 |n
.' Follow this path up |goto 53.8,52.4,0.5 |noway |c
step
goto 52.2,53.4
.talk 4498
..turnin 14339
..accept 14343
step
goto 57.5,47.7
.talk 36034
..turnin 14307
..turnin 14343
..accept 14346
step
goto 57.6,47.7
.clicknpc Grimfeather##36227
.' Mount Grimfeather |invehicle |c
step
'As you fly:
.' Use your Throw Concoction ability on the mobs below
.' Defeat 10 Slitherblade Sirens |q 14346/2
.' Defeat 3 Sea Giants |q 14346/3
.' Defeat 10 Slitherblade Invaders |q 14346/4
step
'Use your Fly Home ability to return to Karnum's Grove |outvehicle |c |q 14346
step
goto 57.5,47.7
.talk 36034
..turnin 14346
step
goto 58.6,48.7
.talk 36060
..turnin 14305
..turnin 14306
..accept 14311
step
goto 58.8,46.4
.talk 36048
..turnin 14304
..accept 14309
step
goto 62.3,39.0
.talk 11438
..accept 5501
step
goto 60.9,58.7
.click on your Cenarion Seeds while standing next to patches of dirt in this area |use Cenarion Seeds##49150
.' Plant Cenarion Seeds |q 14311/1
.' Use Soothing Broth near Enraged Kodo in this area |use Soothing Broth##49144
.' Calm 5 Enraged Kodo |q 14309/1
.' You can find more Enraged Kodo here [58.0,58.9]
|modelnpc Enraged Kodo##36094
step
goto 60.9,61.9
.talk 11596
..turnin 14341
..accept 5561
step
goto 54.3,52.8 |n
.' Enter the Kodo Graveyard here |goto 54.3,52.8,0.5 |noway |c
step
goto 52.2,58.6
.click Kodo Bone##4453
.get 10 Kodo Bone |q 5501/1
step
goto 52.2,58.6
.' Use your Kodo Kombobulator on Ancient or Aged Kodo |use Kodo Kombobulator##13892
.' Lead the kodo to [60.8,61.9] |tip They will follow you here once you get here you will need to inspect the Kodo
.' Tame 3 Kodo |q 5561/1
|modelnpc Aged Kodo##4700
|modelnpc Ancient Kodo##4702
step
goto 60.9,61.9
.talk 11596
..turnin 5561
step
goto 58.6,48.7
.talk 36060
..turnin 14311
step
goto 58.5,49.9
.talk 36052
..accept 14312
step
goto 58.3,50.1
.talk 36056
..turnin 14312
..accept 14314
step
goto 58.4,49.8
.talk 36052
..accept 14316
step
goto 58.8,46.4
.talk 36048
..turnin 14309
step
goto 62.3,39.0
.talk 11438
..turnin 5501
step
goto 70.0,48.2
.click Cenarion Supply Crate##6035+
.get 7 Cenarion Supply Crate |q 14316/1
step
goto 71.5,56.0
.from Magram Warden##36134
.' Free the Kolkar Prisoners |q 14314/1
step
goto 58.3,50.1
.talk 36056
..turnin 14314
step
goto 58.5,49.9
.talk 36052
..turnin 14316
step
ding 35
step
goto 58.3,50.1
.talk 36056
..accept 14318
step
goto 58.3,50.1
.talk 36056
.' Tell him you are ready to do battle with the Magram Clan! |invehicle |c
step
goto 71.1,45.3
.' Use your Place Spear ability when you get to the Fatherstone |outvehicle |c
step
goto 71.1,45.5
.' Defend the Spear to break the will of the Magram |q 14318/1
step
goto 71.7,45.6
.talk 36163
..turnin 14318
..accept 14325
step
goto 62.6,37.4
.from Revitalized Basilisk##35409+
.get 5 Basilisk Flank |q 14325/1
step
goto 73.3,41.6
.talk 36163
..turnin 14325
..accept 14327
step
goto 58.3,50.1
.talk 36056
..turnin 14327
..accept 14328
step
goto 53.2,79.8
.from Lesser Infernal##35591
.collect Infernal Power Core##49200 |n
.click the Infernal Power Core in your bags |use Infernal Power Core##49200
..accept 14344
step
goto 53.2,79.8
.click Demon Portal##4713
.' Banish 6 Portals |q 5581/1
.from Lesser Infernal##35591+
.' Destroy 10 Lesser Infernals |q 14342/1
step
goto 54.3,78.1
.' Use your Infernal Power Core to control Lord Azrethoc |use Infernal Power Core##49199
.' Use the abilities on your action bar while controlling Lord Azrethoc to kill Jugkar Grim'rod.
.' Slay Jugkar Grim'rod |q 14344/1
.click the Complete Quest box that appears under your mini map
..turnin 14344
step
goto 41.8,82.5
.from Rhoho##36181
.' Defeat Rhoho |q 14328/1
step
goto 35.5,81.4
.from Sherik##36182
.' Defeat Sherik |q 14328/2
step
goto 35.6,92.3
.from Jorreth##36183
.' Defeat Jorreth |q 14328/3
step
goto 36.9,91.3 |n
.' Follow this path down |goto 36.9,91.3,0.5 |noway |c
step
goto 37.6,85.7 |n
.' Follow this path up and to the cave |goto 37.6,85.7,0.5 |noway |c
step
goto 38.5,90.9 |n
.' Enter the cave here |goto 38.5,90.9 |noway |c
step
goto 40.5,95.5
.talk 36185
..turnin 14328
..accept 14329
step
'Hearth to Karnum's Glade |goto 56.7,50.0,0.5 |use Hearthstone##6948 |noway |c
step
goto 57.6,56.3 |n
.' Follow this path up |goto 57.6,56.3,0.5 |noway |c
step
goto 56.2,59.6
.talk 5395
..turnin 14342
..turnin 5581
step
goto 57.5,56.4 |n
.' Follow this path up |goto 57.5,56.4,0.5 |noway |c
step
goto 56.2,59.6
.talk 5395
..turnin 5581
..turnin 14342
step
goto 38.4,61.0 |n
.' Go into the Valley of Spears |goto 38.4,61.0,0.5 |noway |c
step
goto 32.8,53.7
.from Maraudine Mauler##4656
.collect Maraudine Prisoner Manifest##38567 |n
.click on Maraudine Prisoner Manifest in your bags |use Maraudine Prisoner Manifest##38567
..accept 14330
step
goto 29.1,62.5
.click the Stone Door |tip It's huge stone double doors.
.' Enter Maraudon and follow the path
.' Skip to the next step in the guide
step
goto 27.2,63.1
.talk 36196
..turnin 14330
..accept 14332
step
goto 27.2,63.4
.click the Broken Relic##406
..accept 14333
step
goto 29.0,62.6
.click the Stone Door |tip It's huge stone double doors.
.' Go outside to Desolace |goto Desolace |noway |c
step
goto 31.9,60.9
.click Defiled Relic##406
.collect 6 Defiled Relic##49194 |q 14333
.click on Defiled Relic in your bags |use Defiled Relic##49194
.' Destroy Defiled Relic |q 14333/1
.click on the Complete Quest box that appears under your mini map
..turnin 14333
step
goto 33.1,53.8
.' Slay 10 Maraudine Maulers |q 14329/1
.click the Complete Quest box that appears under your mini map
..turnin 14329
step
ding 36
step
 goto 33.9,53.5
.talk 12277
.accept 6132
.' Escort Melizza Brimbuzzle through the Valley of Spears |q 6132
step
goto 47.8,61.8
.talk 6019
..turnin 6132
step
goto 72.3,67.4
.talk 36398
..turnin 14332
..accept 14393
step
goto 72.3,67.4
.talk 36398
.' Tell him you are ready and want to join in the battle!
.' You will ride on a Centaur Commander |invehicle |c |q 14393
step
goto 69.3,75.8
.' Use the abilities on your action bar to fight
.from Burning Blade Warlock##36414+, Doomguard Invader##36412+, Priestess Than'darissa##36413
.' Slay 3 Doomguard Invaders |q 14393/2
.' Slay 15 Burning Blade Warlocks |q 14393/1
.' Slay Priestess Than'darissa |q 14393/3 |tip She's a big blue 6-armed demon that walks all around this area, so you may need to search for her.
step
goto 72.3,67.4
.talk 36398
..turnin 14393
..accept 14394
step
goto 76.7,76.0 |n
.' Follow this path |goto 76.7,76.0,0.5 |noway |c
step
goto 79.8,79.2 |n
.' Follow this path up and to the left |goto 79.8,79.2,0.5 |noway |c
step
goto 82.0,80.6
.from Agogridon##36442
.' Defeat Agogridon |q 14394/1
step
goto 82.4,80.9
.talk 36444
..turnin 14394
step
.click the red button on your hotbar to stop riding the Centaur Commander |outvehicle |c
step
'Go southwest to Feralas |goto Feralas |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Desolace (31-36)\\Shadowprey Village Quests (33-34)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Desolace (31-36)\\Desolace (33-36)
startlevel 33.80
dynamic on
step
goto Desolace,22.6,72.0
.talk 12031
.accept 14334
step
goto 22.4,73.1
.talk 11317
.accept 5421
step
goto 23.4,77.0
.kill Blubbergut##10973 |q 14334/1 |tip He swims around the pier of Shadowmoon Village.
step
goto 23.4,77
.collect 5 Shellfish##13545 |q 5421/1 |tip They are underwater in cages
step
goto Desolace,22.4,73.1
.talk 11317
.turnin 5421
step
goto 22.6,72.0
.talk 12031
.turnin 14334
step
goto Desolace,25.8,68.2
.talk 11624
.accept 14335
step
goto 18.9,80.6
.kill 5 Drysnap Pincer##11563+ |q 14335/1 |tip They are underwater, along the bottom.
.' You can find more around [19.8,75.2]
step
goto 26.2,79.3
.kill 5 Drysnap Crawler##11562+ |q 14335/2 |tip They are along the shore line and in the water.
step
goto Desolace,25.8,68.2
.talk 11624
..turnin 14335
step
.' You have completed this section
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Feralas (36-40)\\Feralas (36-40)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Thousand Needles (39-44)\\Thousand Needles (39-44)
startlevel 36.50
dynamic on
step
goto Feralas,41.6,15.2
.talk 7776
..accept 25339
..accept 25340
step
goto 41.5,15.4
.talk 40473
.fpath Camp Ataya
step
goto 41.4,15.4
.talk 39377
..accept 25210
step
goto 41.4,15.8
.talk 40467
.home Camp Ataya
step
goto 41.3,11.2
.from Northspring Windcaller##5366+, Northspring Harpy##5362+
.collect Horn of Hatetalon##9530 |q 25340
step
goto 40.6,8.5
.' Use your Horn of Hatetalon next to the Hatetalon Stones |use Horn of Hatetalon##9530 |tip They look like 2 big tall rocks.
.from Edana Hatetalon##8075
.get Edana's Dark Heart |q 25340/1
step
goto 40.5,10.1
.kill 6 Northspring Harpy##5362+ |q 25339/1
.kill 6 Northspring Windcaller##5366+ |q 25339/2
step
goto Feralas,41.6,15.2
.talk 7776
..turnin 25339
..turnin 25340
step
ding 37
step
goto 40.7,18.2
.from Sharphorn Stag##40193+
.get 8 Infected Stag Antler |q 25210/1
step
goto 41.4,15.4
.talk 39377
..turnin 25210
..accept 25230
step
goto 46.1,9.2
.kill 10 Noxious Whelp##39384+ |q 25230/1
step
goto 41.4,15.4
.talk 39377
..turnin 25230
..accept 25237
..accept 25241
step
goto 39.6,20.8 |n
.' Follow the path up |goto 39.6,20.8,0.5 |noway |c
step
goto 39.5,21.6
.kill 7 Corrupted Cliff Giant##40972+ |q 25241/1
.click Stonetear##9514
.get 7 Stonetear |q 25237/1
step
goto 41.4,15.4
.talk 39377
..turnin 25237
..turnin 25241
..accept 25250
step
goto 51.3,10.7
.' Use Ysondre's Tear next to the big green portal |use Ysondre's Tear##52576 |tip The portal is at the top of a white stone staircase.
.' Seal the Portal |q 25250/1
step
goto 41.4,15.4
.talk 39377
..turnin 25250
..accept 25386
step
goto 48.7,44.8
.talk 14637
..accept 25465
..accept 25466
step
goto 51.9,48.0
.talk 39656
..turnin 25386
..accept 25209
..accept 25341
step
goto 52.3,48.0
.talk 39894
..accept 25336
step
goto 52.8,47.1
.talk 7854
..accept 25452
step
goto 51.0,48.4
.talk 41605
.fpath Stonemaul Hold
step
goto 51.9,47.4
.talk 44376
.home Stonemaul Hold
step
goto 58.8,64.6
.from Gordunni Shaman##5236+, Gordunni Warlock##5240+, Gordunni Mauler##5234+
.' Slay 16 Gordunni Ogres |q 25209/1
.get Gordunni Orb |q 25341/1
.' Use your Beast Muisek Vessel on any Beasts you kill |use Beast Muisek Vessel##9618 |tip You can determine if a mob is a Beast by hovering over it and reading the tooltip that displays.
step
goto 58.9,61.0
.from Ironfur Bear##5268+, Longtooth Runner##5286+
.' Use your Beast Muisek Vessel on their corpses |use Beast Muisek Vessel##9618
.get 10 Beast Muisek |q 25336/1
step
goto 53.3,51.8 |n
.' Follow the path down |goto 53.3,51.8,0.5 |noway |c
step
goto 46.5,55.4
.' Use Zorbin's Ultra-Shrinker on Shore Striders |use Zorbin's Ultra-Shrinker##18904 |tip They are giants that walk along the coast around this area.
.from Zapped Shore Strider##5359+
.get 6 Miniaturization Residue |q 25465/1
.from Sea Spray##5462+
.get 10 Water Elemental Core |q 25466/1
step
goto 50.6,51.5 |n
.' Follow the path up |goto 50.6,51.5,0.5 |noway |c
step
goto 51.9,48.0
.talk 39656
..turnin 25209
..accept 25252
..turnin 25341
..accept 25342
step
goto 52.3,48.0
.talk 39894
..turnin 25336
..accept 25337
step
goto 52.7,46.6 |n
.' Follow the path up |goto 52.7,46.6,0.5 |noway |c
step
goto 51.9,46.7
.talk 39840
..turnin 25342
..accept 25344
step
goto 48.7,44.8
.talk 14637
..turnin 25465
..turnin 25466
step
goto 48.6,37.9 |n
.' Follow the path |goto 48.6,37.9,0.5 |noway |c
step
goto 51.5,32.4 |n
.' Follow the path up |goto 51.5,32.4,0.5 |noway |c
step
goto 52.1,31.7
.from Rage Scar Yeti##40224+
.get 10 Thick Yeti Hide |q 25452/1
step
goto 48.2,38.7 |n
.' Follow the path back to the road |goto 48.2,38.7,0.5 |noway |c
step
goto 52.8,47.1
.talk 7854
..turnin 25452
..accept 25453
step
ding 38
step
goto 59.1,45.8
.kill 6 Gordok Enforcer##11440+ |q 25252/1
.kill 6 Gordok Ogre-Mage##11443+ |q 25252/2
.' Use your Modified Soul Orb on a Gordok Ogre-Mage when it's almost dead |use Modified Soul Orb##52833
.' Capture a Gordok Ogre Mage |q 25344/1
step
goto 55.6,56.4
.from Feral Scar Yeti##39896+
.get 10 Feral Scar Yeti Hide |q 25453/1
.collect Perfect Yeti Hide##55167 |n
.click the Perfect Yeti Hide |use Perfect Yeti Hide##55167
..accept 25454
step
goto 55.2,65.0
.from Frayfeather Stagwing##5304+, Frayfeather Hippogryph##5300+
.' Use your Hippogryph Muisek Vessel on their corpses |use Hippogryph Muisek Vessel##9619
.get 10 Hippogryph Muisek |q 25337/1
step
goto 51.9,48.0
.talk 39656
..turnin 25252
step
goto 52.3,48.0
.talk 39894
..turnin 25337
..accept 25641
step
goto 52.8,47.1
.talk 7854
..turnin 25453
..turnin 25454
step
goto 52.7,46.6 |n
.' Follow the path up |goto 52.7,46.6,0.5 |noway |c
step
goto 51.9,46.7
.talk 39840
..turnin 25344
step
goto 51.9,48.0
.talk 39656
..accept 25329
step
goto 59.1,45.1 |n
.' Follow the path up |goto 59.1,45.1,0.5 |noway |c
step
goto 59.3,39.1 |n
.' Follow this path |goto 59.3,39.1,0.5 |noway |c
step
goto 61.1,34.9 |n
.' Follow this path |goto 61.1,34.9,0.5 |noway |c
step
goto 60.7,32.3 |n
.' Enter the tunnel |goto 60.7,32.3,0.5 |noway |c
step
goto 62.5,30.1
.' Watch the dialogue and kill the ogres that attack you
.from Cho'gall##43932
.' Disrupt the Sermon |q 25329/1
step
'Hearth to Stonemaul Hold |goto 51.9,47.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 51.9,48.0
.talk 39656
..turnin 25329
..accept 25387
step
goto 74.4,43.4
.talk 8115
..turnin 25641
..accept 25338
step
goto 74.6,42.9
.talk 39847
..turnin 25387
..accept 25373
..accept 25349
step
goto 74.9,42.5
.talk 7875
..accept 25363
step
goto 75.1,42.7
.talk 5390
..accept 25643
step
goto 74.8,45.2
.talk 7737
.home Camp Mojache
step
goto 72.1,44.1
.from Wandering Forest Walker##7584+
.' Use your Treant Muisek Vessel on their corpses |use Treant Muisek Vessel##9606
.get 3 Treant Muisek |q 25338/1
step
goto 72.7,38.3
.from Woodpaw Trapper##5251+, Woodpaw Brute##5253+, Woodpaw Mongrel##5249+
.get 10 Woodpaw Gnoll Mane |q 25363/1
step
goto 74.9,35.2 |n
.' Follow the path up |goto 74.9,35.2,0.5 |noway |c
step
goto 75.5,34.2
.kill 5 Gordunni Hillguard##39952+ |q 25373/1
step
goto 75.5,37.0
.kill 7 Corrupted Dryad##40168+ |q 25349/1
step
goto 74.4,43.4
.talk 8115
..turnin 25338
..accept 25345
step
ding 39
step
goto 74.6,42.9
.talk 39847
..turnin 25373
..turnin 25349
..accept 25378
..accept 25374
..accept 25375
step
goto 74.9,42.5
.talk 7875
..turnin 25363
..accept 25364
..accept 25365
step
goto 74.8,43.4
.talk 4544
..accept 25361
step
goto 70.8,46.0
.from Sprite Darter##5278+
.get 10 Iridescent Sprite Darter Wing |q 25361/1
.' Use your Faerie Dragon Muisek Vessel on Sprite Darter corpses |use Faerie Dragon Muisek Vessel##9620
.get 8 Faerie Dragon Muisek |q 25345/1
step
goto 68.0,53.6 |n
.' Follow the path up |goto 68.0,53.6,0.5 |noway |c
step
goto 66.1,52.2
.kill 5 Woodpaw Alpha##5258+ |q 25364/1
step
goto 71.6,55.9
.click Woodpaw Battle Map##222
..turnin 25365
..accept 25366
step
goto 67.7,60.2 |n
.' Follow the path up |goto 67.7,60.2,0.5 |noway |c
step
goto 65.9,62.9
.click Empty Pedastal##439
..turnin 25643
step
goto 65.9,62.8
.talk 40131
..accept 25422
..accept 25423
step
goto 65.3,61.0
.from Highborne Poltergeist##40059+
.get 6 Soul Essence |q 25423/1
.click Loose Soil##49
.get 6 Glowing Soil |q 25422/1
step
goto 65.9,62.8
.talk 40131
..turnin 25422
..turnin 25423
..accept 25368
step
goto 64.3,55.9
.' Use your Mournful Essence next to the big dead tree |use Mournful Essence##54456
.kill Verinias the Twisted##40136 |q 25368/1
step
goto 65.9,62.8
.talk 40131
..turnin 25368
step
goto 65.9,62.9
.click Empty Pedastal##439
..accept 25645
step
'Hearth to Camp Mojache |goto 74.8,45.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 74.4,43.4
.talk 8115
..turnin 25345
..accept 25346
step
goto 74.8,43.3
.talk 4544
..turnin 25361
..accept 25362
step
goto 74.9,42.5
.talk 7875
..turnin 25364
..turnin 25366
..accept 25367
..accept 25369
step
ding 40
step
goto 75.1,42.7
.talk 5390
..turnin 25645
step
goto 74.9,35.2 |n
.' Follow the path up |goto 74.9,35.2,0.5 |noway |c
step
goto 74.8,28.5
.kill Bigfist##39958 |q 25374/1
step
goto 75.2,29.6
.kill 6 Gordunni Tamer##39957+ |q 25375/1
step
goto 75.3,34.4 |n
.' Follow the path down |goto 75.3,34.4,0.5 |noway |c
step
goto 70.2,38.9
.from Grimtotem Naturalist##7726+, Grimtotem Raider##7725+, Grimtotem Shaman##7727+
.get 20 Grimtotem Horn |q 25362/1
step
goto 69.9,58.9
.from Mountain Giant##40026+
.' Use your Mountain Giant Muisek Vessel on their corpses |use Mountain Giant Muisek Vessel##9621
.get 7 Mountain Giant Muisek |q 25346/1
step
goto 74.5,62.5
.from Stinglasher##14661
.get Stinglasher's Glands |q 25369/1
step
goto 74.1,61.4
.from Zukk'ash Worker##5246+, Zukk'ash Wasp##5245+
.get 20 Zukk'ash Carapace |q 25367/1
step
'Hearth to Camp Mojache |goto 74.8,45.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 74.4,43.4
.talk 8115
..turnin 25346
..accept 25391
..turnin 25391
step
goto 74.8,43.4
.talk 4544
..turnin 25362
step
goto 74.6,42.9
.talk 39847
..turnin 25374
..turnin 25375
step
goto 74.9,42.5
.talk 7875
..turnin 25367
..turnin 25369
step
goto 80.4,42.9 |n
.' Follow the path up |goto 80.4,42.9,0.5 |noway |c
step
goto 81.5,42.4
.talk 39407
..turnin 25378
..accept 25379
step
goto 81.4,42.5
.from Taerar##39853
.' Defeat Taerar |q 25379/1
step
goto 81.5,42.4
.talk 39407
..turnin 25379
..accept 25383
step
goto 74.6,42.9
.talk 39847
..turnin 25383
step
goto 74.6,42.9
.talk 39893
..accept 25356
step
goto 75.4,44.4
.talk 39898
..' Tell her you need to get to Westreach Summit!
.' Fly on the Windrider |q 25356/1
step
'Fly to Westreach Summit |goto Thousand Needles,11.1,11.6,0.5 |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Southern Barrens (31-35)\\Southern Barrens (31-34)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Southern Barrens (31-35)\\Southern Barrens (34-35)
startlevel 31.15
dynamic on
step
goto Southern Barrens,30.6,10.9 |n
.' Follow the path up |goto Southern Barrens,30.6,10.9,0.5 |noway |c
step
goto Southern Barrens,31.4,13.3
.talk 37135
..turnin 26069
..accept 24504
step
goto Southern Barrens,32.9,12.7
.kill 3 High Road Scout##37159+ |q 24504/1
step
goto Southern Barrens,37.5,17.0
.talk 37137
..turnin 24504
..accept 24505
step
goto Southern Barrens,37.7,16.6
.talk 37153
..accept 24512
..accept 25284
step
goto Southern Barrens,37.4,16.6
.click Coiled Rope##7538
.' You will jump down |goto Southern Barrens,37.2,15.5,0.2 |noway |c
step
goto Southern Barrens,37.2,15.1
.kill 5 Tower Warden##37160+ |q 25284/1
.click Confiscated Arms |tip They look like flat-ish square boxes on the ground with red axe symbols on them.
.collect 5 Confiscated Arms##49769 |q 24512
step
goto Southern Barrens,37.2,14.1
.talk 37167
..' Tell them you recovered their armor and weapons
.' Arm 5 Stonetalon Prisoners |q 24512/1
step
goto Southern Barrens,37.1,13.9
.talk 37136
..accept 24513
step
goto Southern Barrens,37.2,13.9
.from Captain Peake##37157 |tip He's at the top of the tower.
.get 2 Captain Peake's Eyeballs |q 24513/1
step
goto Southern Barrens,37.1,13.9
.talk 37136
..turnin 24513
step
goto Southern Barrens,37.3,15.5
.click Coiled Rope##7538
.' You will jump up |goto Southern Barrens,37.3,16.6,0.2 |noway |c
step
goto Southern Barrens,37.7,16.6
.talk 37153
..turnin 24512
..turnin 25284
step
goto Southern Barrens,39.2,20.0
.talk 44270
.home Hunter's Hill
step
goto Southern Barrens,39.5,20.3
.talk 37138
..turnin 24505
..accept 24514
..accept 24515
step
goto Southern Barrens,39.8,20.3
.talk 39340
.fpath Hunter's Hill
step
goto Southern Barrens,39.6,19.9
.talk 37154
..accept 24517
step
goto Southern Barrens,40.4,23.7
.from Terrortooth Runner##37083+, Terrortooth Scytheclaw##37084+
.get 8 Terrortooth Hide |q 24514/1
step
goto Southern Barrens,41.5,20.3
.kill 1 Honor's Stand Officer##37216 |q 24517/1 |tip They walk along this road on horses.
.collect Roadway Plans##49776 |n
.click the Roadway Plans in your bags |use Roadway Plans##49776
..accept 24518
step
goto Southern Barrens,39.6,15.8
.kill 8 Honor's Stand Footman##37161+ |q 24517/2
step
'Hearth to Hunter's Hill |goto Southern Barrens,39.2,20.0,0.5 |use hearthstone##6948 |noway |c
step
goto Southern Barrens,39.5,20.3
.talk 37138
..turnin 24514
step
goto Southern Barrens,39.6,19.9
.talk 37154
..turnin 24517
..turnin 24518
..accept 24519
step
goto Southern Barrens,41.0,18.3
.kill Henry Zykes##37165 |q 24519/1 |tip He walks along this road with his assistant, so you may need to search for him.
step
goto Southern Barrens,39.8,22.3 |n
.' Follow the path up |goto Southern Barrens,39.8,22.3,0.5 |noway |c
step
goto Southern Barrens,39.6,19.9
.talk 37154
..turnin 24519
step
goto Southern Barrens,44.4,33.3
.talk 37515
..accept 24539
step
goto Southern Barrens,44.2,33.7
.talk 11857
..turnin 24515
..accept 24525
..accept 24529
step
goto Southern Barrens,45.3,32.5
.from Grasping Overgrowth##37548+
.' Rescue 5 Taurajo Refugees from Overgrowth |q 24539/1
step
goto Southern Barrens,44.4,33.3
.talk 37515
..turnin 24539
..accept 24542
step
ding 32
step
goto Southern Barrens,42.4,36.5
' |from Bristleback Bladewarden##37511+, Bristleback Thornweaver##3261+
.kill 8 Bristleback Quilboar |q 24529/2
.click Bristleback Cage##1787
.' Release 5 Taurajo Refugees from Cages |q 24529/1
step
goto Southern Barrens,42.1,38.7
.kill 6 Hecklefang Scavenger##37086+ |q 24525/1
step
goto Southern Barrens,44.2,33.7
.talk 11857
..turnin 24525
..turnin 24529
..accept 24534
step
goto Southern Barrens,44.5,33.6
.talk 37516
..accept 24543
step
goto Southern Barrens,45.7,34.4
.click Budding Flowers##3232
.get 10 Unusual Flower Bud |q 24542/1
step
goto Southern Barrens,43.0,41.8
.' Use your Horn of Challenge in this pit area |use Horn of Challenge##49782
.kill Sabersnout##37513 |q 24534/1
step
goto Southern Barrens,41.8,46.7
.talk 3433
..accept 24551
step
goto Southern Barrens,41.6,46.5
.talk 3418
..turnin 24543
..accept 24546
step
goto Southern Barrens,41.5,47.2
.talk 3387
..accept 24552
step
goto Southern Barrens,42.2,46.0
.from Plains Prowler##37206+, Plains Pridemane##37207+
.' Slay 5 Barrens Lions |q 24552/1
step
goto Southern Barrens,46.4,47.2
.click Field Banner##6211
.' Capture the Point |q 24546/1
.' Fight off the Northwatch mobs that spawn
.' Defend the Point |q 24546/2
step
goto Southern Barrens,46.1,44.8
.from Northwatch Recon##37585+
.get 10 Theramore Merit Badge |q 24551/1
step
goto Southern Barrens,41.6,46.5
.talk 3418
..turnin 24546
step
goto Southern Barrens,41.4,46.8
.talk 37679
..turnin 24551
..accept 24569
step
goto 41.5,47.6
.talk 52060
.fpath Vendetta Point
step
goto Southern Barrens,41.5,47.2
.talk 3387
..turnin 24552
step
goto Southern Barrens,42.0,50.4
.click Northwatch Siege Engine##7270
.' Destroy 4 Siege Engines |q 24569/1
step
goto Southern Barrens,41.4,46.8
.talk 37679
..turnin 24569
..accept 24572
step
goto Southern Barrens,41.5,46.6
.talk 37717
..accept 24573
step
goto Southern Barrens,43.7,52.3
.' Use your Funerary Totem next to Omusa Thunderhorn's corpse |use Funerary Totem##49880
.' Eulogize Omusa |q 24573/4
step
goto Southern Barrens,44.3,52.6
.' Use your Funerary Totem next to Yonada's corpse |use Funerary Totem##49880 |tip Laying on the floor inside the long teepee building.
.' Eulogize Yonada |q 24573/3
step
goto Southern Barrens,44.5,52.2
.' Use your Funerary Totem next to Dranh's corpse |use Funerary Totem##49880
.' Eulogize Dranh |q 24573/2
step
goto Southern Barrens,44.4,50.9
.' Use your Funerary Totem next to Krulmoo Fullmoon's corpse |use Funerary Totem##49880 |tip Laying on the ground inside the small teepee building.
.' Eulogize Krulmoo |q 24573/1
step
goto Southern Barrens,44.5,51.5
.kill 8 Taurajo Looter##37743+ |q 24572/1
step
goto Southern Barrens,41.5,46.6
.talk 37717
..turnin 24573
step
goto Southern Barrens,41.4,46.8
.talk 37679
..turnin 24572
step
ding 33
step
goto Southern Barrens,44.2,33.7
.talk 11857
..turnin 24534
step
goto Southern Barrens,50.3,40.4
.talk 38314
..accept 24570
..accept 24571
step
goto Southern Barrens,50.4,40.7
.talk 37570
..turnin 24542
..accept 24565
step
goto Southern Barrens,50.7,39.9
.from Lashvine##37093+
.get 4 Writhing Seed |q 24571/1
.clicknpc Enervated Adders##37738
.get 5 Evervated Adder |q 24570/1
.kill 5 Deviate Terrortooth##37090+ |q 24565/1
.kill 5 Deviate Plainstrider##37091+ |q 24565/2
step
goto Southern Barrens,50.3,40.4
.talk 38314
..turnin 24570
..turnin 24571
..accept 24566
step
goto Southern Barrens,50.4,40.7
.talk 37570
..turnin 24565
..accept 24574
step
goto Southern Barrens,50.9,39.7
.' Use your Soothing Seeds on Deviate Plainstriders and Deviate Terrortooths |use Soothing Seeds##49882
.' Observe 6 Results |q 24566/1
step
goto Southern Barrens,49.5,37.6
.kill 5 Outgrowth##37092+ |q 24574/1 |tip They can only be found in the water.
.get Squirming Heart |q 24574/2
step
goto Southern Barrens,50.3,40.4
.talk 38314
..turnin 24566
step
goto Southern Barrens,50.4,40.7
.talk 37570
..turnin 24574
..accept 24601
step
goto Southern Barrens,48.2,38.6
.talk 37570
..' Tell him you're ready
.' Protect Naralex from the mobs that spawn
.' Seal the Nightmare Scar |q 24601/1
step
goto Southern Barrens,48.2,38.6
.talk 37570
..turnin 24601
..accept 24807
step
goto Southern Barrens,41.5,46.6
.talk 37717
..turnin 24807
step
goto Southern Barrens,41.4,46.8
.talk 37679
..accept 24577
step
goto Southern Barrens,41.4,46.8
.talk 37679
..' Tell him you are ready to ride
.' Ride to Desolation Hold |goto Southern Barrens,41.8,69.7,0.5 |noway |c
step
goto Southern Barrens,41.6,69.8
.talk 37811
..' Tell him you're here on behalf of Warlord Bloodhilt
.' Notify Gar'dul |q 24577/1
step
goto Southern Barrens,41.6,69.8
.talk 37811
..turnin 24577
..accept 24591
step
goto Southern Barrens,41.6,69.4
.talk 37910
..accept 24654
step
ding 34
step
goto Southern Barrens,40.7,69.3
.' Go to the top of the tower |q 24591/1
.' Help fight Warlord Gar'dul
.' Relieve Gar'dul of Command |q 24591/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 24591
step
goto Southern Barrens,40.8,69.3
.talk 44276
.home Desolation Hold
step
goto Southern Barrens,41.6,69.8
.talk 37837
..accept 24618
..accept 24634
step
goto Southern Barrens,41.1,71.0
.talk 37909
..accept 24631
step
goto Southern Barrens,41.2,70.8
.talk 39330
.fpath Desolation Hold
step
goto Southern Barrens,42.6,70.2
.talk 37908
..accept 24619
step
goto Southern Barrens,43.0,69.7
.from Barrens Operative##37924 |tip He's stealthed next to the wall in the bushes.
.get SI:7 Briefings |q 24634/1
step
goto Southern Barrens,42.3,67.9
.' Use your Bucket of Burning Pitch next to the big rocks around this area |use Bucket of Burning Pitch##50128
.kill 10 Silithid Swarmer##3252+ |q 24654/1
step
goto Southern Barrens,45.3,69.8
.' Go to this spot
.' Scout the Battlescar Flag |q 24618/1
.kill 10 Triumph Vanguard##37923+ |q 24618/2
.' Use Tomusa's Hook on Triumph War Gryphons in the sky |use Tomusa's Hook##50031
.kill 5 Wildhammer Mercenary##37977+ |q 24631/1
.' Use Calder's Bonesaw on any corpses around this area |use Calder's Bonesaw##49948
.click Mutilated Remain##14
.get 15 Severed Extremity |q 24619/1
step
goto Southern Barrens,42.6,70.2
.talk 37908
..turnin 24619
..accept 24620
step
goto Southern Barrens,41.6,69.4
.talk 37910
..turnin 24654
..accept 24667
step
goto Southern Barrens,41.6,69.8
.talk 37679
..turnin 24618
..turnin 24634
..accept 24637
step
goto Southern Barrens,41.1,71.0
.talk 37909
..turnin 24631
..accept 24632
step
goto Southern Barrens,48.2,58.2
.talk 38015
..' Tell him you're ready
.kill General Hawthorne##38323 |q 24637/1
step
goto Southern Barrens,41.6,69.8
.talk 37679
..turnin 24637
step
goto Southern Barrens,43.7,74.1
.from Landquaker Bull##37556
.get Enormous Kodo Heart |q 24620/1
step
goto Southern Barrens,42.6,70.2
.talk 37908
..turnin 24620
..accept 24621
step
goto 46.2,68.1 |n
.' Follow the path up |goto 46.2,68.1,0.5 |noway |c
step
goto Southern Barrens,46.9,69.3
.from Triumph Captain##37926 |tip He's riding around on a horse, so you may need to search for him.
.get Fresh Brain |q 24621/1
step
goto Southern Barrens,42.6,70.2
.talk 37908
..turnin 24621
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Southern Barrens (31-35)\\Southern Barrens (34-35)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Dustwallow Marsh (35-39)\\Dustwallow Marsh (35-39)
startlevel 34.74
dynamic on
step
goto Southern Barrens,45.1,85.3
.talk 37834
..turnin 24667
..accept 24824
step
goto Southern Barrens,45.1,85.4
.talk 37812
..accept 24604
step
goto Southern Barrens,44.5,88.1
.talk 3432
..turnin 24604
..accept 24603
step
goto 41.8,83.2
.from Razormane Pathfinder##3456+, Razormane Warfrenzy##3459+, Razormane Seer##3458+
.collect Carved Boar Idol##49932 |n
.click the Carved Boar Idol in your bags |use Carved Boar Idol##49932
..accept 24606
step
goto 41.8,83.2
.from Razormane Pathfinder##3456+, Razormane Warfrenzy##3459+, Razormane Seer##3458+
.' Slay 13 Razormane Quilboars |q 24603/1
.get 6 Blood Shard Trinket |q 24606/1
step
goto Southern Barrens,47.1,84.3
.from Disturbed Earth Elemental##37553+
.get 4 Disturbed Earth Fragment |q 24824/1
step
goto Southern Barrens,45.1,85.3
.talk 37834
..turnin 24824
step
goto Southern Barrens,45.1,85.4
.talk 37812
..turnin 24606
..accept 24653
step
ding 35
step
goto Southern Barrens,44.5,88.1
.talk 3432
..turnin 24603
..accept 24608
step
goto Southern Barrens,40.4,83.0
.click Boar Skulls##9240
.get 3 Polished Boar Skull |q 24653/1
step
goto 39.1,81.8 |n
.' Follow the path up |goto 39.1,81.8,0.5 |noway |c
step
goto Southern Barrens,37.7,81.5
.kill Mangletooth##37940 |q 24608/1
step
goto Southern Barrens,44.5,88.1
.talk 3432
..turnin 24608
step
goto Southern Barrens,45.1,85.4
.talk 37812
..turnin 24653
..accept 24633
step
goto Southern Barrens,44.5,88.1
.talk 3432
..' Tell him Mahka wants him to come see her
.' Complete Mahka's Plea |q 24633/1
step
goto Southern Barrens,45.1,85.4
.talk 37812
..turnin 24633
step
goto Southern Barrens,49.2,82.4
.talk 3341
..turnin 24632
..accept 24684
step
goto Southern Barrens,49.0,85.9
.from Bael'Dun Soldier##3376+, Bael'Dun Rifleman##3377+, Bael'Dun Officer##3378+
.' Slay 10 Bael'Dun Dwarves |q 24684/1
step
goto Southern Barrens,50.7,86.8
.talk 38140
..turnin 24684
..accept 24685
step
goto Southern Barrens,50.1,86.8
.' Go down the stairs
.click Bael'dun Fortress Schematics##440
.get Bael'Dun Fortress Schematics |q 24685/1
step
goto Southern Barrens,50.7,86.8
.talk 38140
..turnin 24685
..accept 24747
step
goto Southern Barrens,50.7,86.0
.clicknpc Dwarven Artillery Shell##38190
.' Sabotage the Artillery Shell |q 24747/1
step
goto Southern Barrens,49.4,87.0
.' Go outside
.' Get Out of There! |q 24747/2
step
goto Southern Barrens,49.2,82.4
.talk 3341
..turnin 24747
step
goto Southern Barrens,49.2,82.1
.talk 39697
..accept 25292
step
goto Dustwallow Marsh 28.5,47.2 |n
'Go northeast to Dustwallow Marsh |goto Dustwallow Marsh |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Dustwallow Marsh (35-39)\\Dustwallow Marsh (35-39)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Thousand Needles (39-44)\\Thousand Needles (39-44)
startlevel 35.85
dynamic on
step
goto Dustwallow Marsh,29.7,47.6
.click Suspicious Hoofprint##520
..accept 27259
step
goto Dustwallow Marsh,29.8,48.2
.click Theramore Guard Badge##522
..accept 27260
step
goto Dustwallow Marsh,29.6,48.6
.click Black Shield##58
..accept 27254
step
goto Dustwallow Marsh,37.5,31.5
.click Wanted Poster##4371
..accept 27229
step
goto Dustwallow Marsh,36.9,32.3
.talk 24208
.home Brackenwall Village
step
goto Dustwallow Marsh,37.2,33.1
.talk 4501
..accept 27182
step
goto Dustwallow Marsh,36.4,31.9
.talk 4926
..turnin 27259
..turnin 27260
..turnin 27254
..accept 27255
..accept 26682
..accept 25051
..accept 27253
..accept 27306
step
goto Dustwallow Marsh,36.5,30.8
.talk 5087
..turnin 27255
..accept 27256
step
goto Dustwallow Marsh,35.5,30.1
.talk 39144
..turnin 25292
step
ding 36
step
goto Dustwallow Marsh,35.2,30.7
.talk 4791
..accept 1201
step
goto Dustwallow Marsh,35.6,31.9
.talk 11899
.fpath Brackenwall Village
step
goto Dustwallow Marsh,35.9,31.7
.talk 17095
..accept 9437
step
goto Dustwallow Marsh,37.2,33.1
.talk 4501
..accept 27414
step
goto 38.2,26.0
.kill 9 Theramore Infiltrator##4834+ |q 1201/1 |tip They are spread out all around the outskirts of Brackenwall Village, so you will have to search a little for them.
step
goto 33.2,22.8 |n
.' Enter Darkmist Cavern |goto 33.2,22.8,0.5 |noway |c
step
goto 31.1,20.4
.' Follow the path in the cave
.from Darkmist Broodqueen##45227
..get Broodqueen Pedipalp |q 27229/1
.click Darkmist Egg##378
.' Destroy 8 Darkmist Eggs |q 25051/1
step
goto 33.2,22.8 |n
.' Leave Darkmist Cavern |goto 33.2,22.8,0.5 |noway |c
step
goto 33.6,22.7
.from Darkmist Silkspinner##4379+, Darkmist Recluse##4378+, Darkmist Spider##4376+
.get 5 Acidic Venom Sac |q 27256/1
step
goto 37.6,23.1
' |from Withervine Creeper##4382+, Withervine Rager##4385+
.kill 7 Withervine |q 26682/1
step
goto Dustwallow Marsh,46.6,24.5
.talk 17119
.' Tell her you were sent to get her out of here
.' Rescue Ithania from North Point Tower |q 9437/1
step
goto Dustwallow Marsh,46.6,24.6
.' Go to the top of the tower
.click Warped Crates##36
.get Dawn Runner Cargo |q 9437/2
step
goto Dustwallow Marsh,55.4,26.3
.talk 4792
..turnin 27182
..accept 27183
step
goto 55.6,26.1
.talk 23843
..accept 27188
step
goto 55.4,25.9
.click Loose Dirt##498
..accept 27244
step
goto Dustwallow Marsh 55.1,25.3
'All around "Swamp Eye" Jarl's house:
.from Giant Marsh Frog##23979+
.get 10 Marsh Frog Leg |q 27183/1
step
goto Dustwallow Marsh,55.4,26.3
.talk 4792
..turnin 27183
..accept 27184
step
goto 55.9,28.5
.from Risen Husk##23555+, Risen Spirit##23554+ |tip If you have a pet, you must get the killing blow, instead of your pet, in order to gather information.
.' Gather 10 Information |q 27188/1
step
goto 55.6,26.1
.talk 23843
..turnin 27188
..accept 27189
step
goto Dustwallow Marsh,55.2,27.7
.click Witchbane##7445
.get 9 Witchbane |q 27189/1
step
goto 55.6,26.1
.talk 23843
..turnin 27189
..accept 27190
step
goto Dustwallow Marsh,55.2,26.7
'Use your Witchbane Torch while standing at the end of the dock right outside |use Witchbane Torch##33113
.from Zelfrax##23864
.' Cleanse Witch Hill |q 27190/1
step
goto 55.6,26.1
.talk 23843
..turnin 27190
step
'Hearth to Brackenwall Village |goto Dustwallow Marsh,36.9,32.3,0.5 |use hearthstone##6948 |noway |c
step
goto 36.4,31.9
.talk 4926
..turnin 26682
..turnin 25051
..turnin 27229
step
ding 37
step
goto 36.3,31.4
.talk 4500
..accept 27424
step
goto Dustwallow Marsh,36.5,30.8
.talk 5087
..turnin 27256
..accept 27257
step
goto 37.4,31.4
.talk 4502
..accept 1168
step
goto Dustwallow Marsh,36.4,31.9
.talk 4926
..turnin 27257
step
goto Dustwallow Marsh,35.9,31.7
.talk 17095
..turnin 9437
step
goto Dustwallow Marsh,35.2,30.7
.talk 4791
..turnin 1201
..turnin 27244
..accept 11213
step
goto Dustwallow Marsh,35.6,22.5
.from Darkmist Silkspinner##4379+, Darkmist Recluse##4378+, Darkmist Spider##4376+
.get 20 Unpopped Darkmist Eye |q 27184/1
step
goto Dustwallow Marsh,55.4,26.3
.talk 4792
..turnin 27184
..accept 27191
..accept 27186
step
goto 57.8,19.6 |n
.' Follow the path down |goto 57.8,19.6,0.5 |noway |c
step
goto 57.9,18.7
.from Razorspine##23841 |tip He walks up and down this path.
.get Razorspine's Sword |q 27186/1
step
goto 57.4,16.8
.from Mirefin Coastrunner##4362+, Mirefin Murloc##4359+
.get 8 Mirefin Head |q 27191/1
step
goto 57.9,18.4 |n
.' Follow the path up |goto 57.9,18.4,0.5 |noway |c
step
goto Dustwallow Marsh,55.4,26.3
.talk 4792
..turnin 27191
..turnin 27186
step
'Hearth to Brackenwall Village |goto Dustwallow Marsh,36.9,32.3,0.5 |use hearthstone##6948 |noway |c
step
goto Dustwallow Marsh,41.0,36.7
.talk 4983
..turnin 27306
..accept 27261
.' Follow Ogron
.' Question Reethe with Ogron |q 27261/1
step
goto 29.8,47.6
.talk 23567
..turnin 27253
step
goto 46.1,57.2
.talk 6546
..turnin 11213
step
goto 46.0,57.2
.talk 23601
..accept 27339
step
goto 46.1,57.4
.talk 23600
..accept 27340
..accept 27346
step
goto 41.5,52.9
.from Darkfang Creeper##4412+, Noxious Shredder##4348+
.get 6 Marsh Venom |q 27339/1
step
goto 46.6,49.1
.from Grimtotem Destroyer##23594+, Grimtotem Earthbinder##23595+
.' Kill 12 Direhorn Grimtotems |q 27340/1
step
goto 46.0,57.2
.talk 23601
..turnin 27339
step
ding 38
step
goto 46.1,57.2
.talk 6546
..accept 11211
step
goto 46.1,57.4
.talk 23600
..turnin 27340
step
goto 53.6,56.9
.talk 23797
..turnin 27346
..accept 27347
..accept 27348
step
goto 53.1,56.0
.' Use your Ooze Buster on green and blue oozes while Energized! |use Ooze Buster##33108 |tip Stand next to the blue lightning structures to get the Energized! buff.
.' Dissolve 10 Oozes |q 27347/1
.click the Zeppelin Cargo |tip The Zeppelin Cargo look like wooden boxes on the ground around this area.
.get 8 Zeppelin Cargo |q 27348/1
|modelnpc Bubbling Swamp Ooze##4394, Acidic Swamp Ooze##
step
goto 53.6,56.9
.talk 23797
..turnin 27347
..turnin 27348
..accept 11208
step
goto 42.8,72.4
.talk 23612
.fpath Mudsprocket
step
goto 41.8,73.1
.click Wanted Poster##3053
..accept 27412
step
goto 41.9,74
.talk 23579
..accept 27407
step
goto 41.9,74.2
.talk 23995
.home Mudsprocket
step
goto 41.5,73
.talk 23570
..accept 27413
step
goto 42.3,72.9
.talk 23572
..turnin 11211
..turnin 11208
step
goto 32.4,65.4
.kill Goreclaw the Ravenous##23873 |q 27412/1 |tip He's standing at the entrance to the cave.
.from Bloodfen Razormaw##4356+, Bloodfen Lashtail##4357+
.get 5 Bloodfen Feather |q 27407/1
step
goto 42.3,72.9
.talk 23572
..turnin 27412
step
goto 41.9,74
.talk 23579
..turnin 27407
..accept 27408
..accept 27409
step
goto 38.7,65.6
.click Mok'Morokk's Grog##459
.get Mok'Morokk's Grog |q 27424/2
.' Use Brogg's Totem on corpses of mobs you kill |use Brogg's Totem##33088
step
goto 38.5,65.9 |n
.' Enter the cave |goto Dustwallow Marsh,38.5,65.9,0.5 |noway |c
step
goto 38.1,69.4
.click Stonemaul Banner##6957
.get Stonemaul Banner |q 27408/1
.' Use Brogg's Totem on corpses of mobs you kill |use Brogg's Totem##33088
step
goto 36.6,69.6
.click Mok'Morokk's Strongbox##10
.get Mok'Morokk's Strongbox |q 27424/3
.kill 5 Firemane Scalebane##4328+ |q 1168/3
.' Use Brogg's Totem on corpses of mobs you kill |use Brogg's Totem##33088
step
goto 38.5,65.9 |n
.' Leave the cave |goto Dustwallow Marsh,38.5,65.9,0.5 |noway |c
step
goto 39.4,66.6
.from Firemane Scout##4329+, Firemane Ash Tail##4331+
.' Use Brogg's Totem on their corpses |use Brogg's Totem##33088
.get 10 Black Dragonkin Essence |q 27409/1
step
goto 44.5,66.0
.click Mok'Morokk's Snuff##457
.get Mok'Morokk's Snuff |q 27424/1
.kill 10 Firemane Scout##4329+ |q 1168/1
.kill 10 Firemane Ash Tail##4331+ |q 1168/2
step
'Hearth to Mudsprocket |goto 41.9,74.1,0.5 |use Hearthstone##6948 |noway |c
step
goto 41.9,74.0
.talk 23579
..turnin 27408
..turnin 27409
..accept 27410
step
goto 45.8,68.4
.click Ogre Remains##7431
.from Stonemaul Spirit##23786+
.' Lay 10 Stonemaul Spirits to Rest |q 27410/1
step
goto 41.9,74.0
.talk 23579
..turnin 27410
..accept 27411
step
ding 39
step
goto 52.1,75.8
.' Use your Stonemaul Banner at the foot of the stone ramp at the entrance to Onyxia's Lair |use Stonemaul Banner##33095
.from Smolderwing##23789
.' Avenge the Stonemaul Clan |q 27411/1
step
goto 45.3,75.9
.click Wyrmtail##391
.get 8 Wyrmtail|q 27413/1
.from Searing Hatchling##4323+, Searing Whelp##4324+
.get 7 Searing Tongue |q 27414/1
.get 7 Searing Heart |q 27414/2
step
goto 41.5,73.0
.talk 23570
..turnin 27413
step
goto 41.9,74.0
.talk 23579
..turnin 27411
step
goto 42.8,72.4
.talk 23612
.' Fly to Brackenwall Village, Dustwallow Marsh |goto 35.6,31.8,0.5 |noway |c
step
goto 36.3,31.4
.talk 4500
..turnin 27424
step
goto 36.4,31.9
.talk 4926
..turnin 27261
step
goto 37.2,33.1
.talk 4501
..turnin 27414
..accept 27416
step
goto 36.3,31.4
.talk 4500
..turnin 27416
..accept 27417
step
goto 37.2,33.1
.talk 4501
..turnin 27417
..accept 27415
step
goto 37.4,31.4
.talk 4502
..turnin 1168
step
goto 35.6,31.9
.talk 11899
.' Fly to Mudsprocket, Dustwallow Marsh |goto 42.9,72.4,0.5 |noway |c
step
goto 48.4,76
.click Egg of Onyxia##477 
.' Destroy 5 Eggs of Onyxia |q 27415/1
.' You can find more Eggs of Onyxia at [48.5,73.6]
step
goto 42.8,72.4
.talk 23612
.' Fly to Brackenwall Village, Dustwallow Marsh |goto 35.6,31.8,0.5 |noway |c
step
goto 37.2,33.1
.talk 4501
..turnin 27415
step
'Hearth to Mudsprocket |goto 41.9,74.1,0.5 |use hearthstone##6948 |noway |c
step
goto Dustwallow Marsh,41.9,73.9
.talk 4317
..accept 25478
step
goto 42.8,72.4
.talk 40358
..' Tell him you need to get to Westreach Summit
.' Ride a Wind Rider to Westreach Summit |q 25478/1
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Thousand Needles (39-44)\\Thousand Needles (39-44)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Tanaris (44-47)\\Tanaris (44-47)
startlevel 39.97
dynamic on
step
goto Thousand Needles 11.1,11.2
.talk 39895
..turnin 25478 |tip You may not have this breadcrumb quest to turn in.
..turnin 25356 |tip You may not have this breadcrumb quest to turn in.
..accept 25487
step
goto 13.4,8.2
.kill 7 Grimtotem Pillager##39947+ |q 25487/1
step
goto 10.5,8.5
.talk 39963
..turnin 25487
..accept 25489
step
ding 40
step
'You will get taken away in a small boat
.' Ride the boat to Fizzle & Pozzik's Speedbarge |goto Thousand Needles,79.0,76.1,0.5 |noway |c
step
goto 79.2,71.9
.talk 40769
.fpath Fizzle & Pozzik's Speedbarge
step
goto 75.9,74.7
.talk 40028
..turnin 25489
..accept 25505
step
goto 77.2,74.5
.talk 40487
..turnin 25505
..accept 25516
step
goto 78.1,73.7
.talk 40556
..accept 25518
step
goto 76.5,74.8
.talk 40832
.buy 1 Bottle of Grog##54747 |n
.' Use your Bottle of Grog on a Gnome Bar Patron |use Bottle of Grog##54747
.' Start a Bar Fight! |q 25518/1
step
goto 78.1,73.7
.talk 40556
..turnin 25518
step
goto 79.5,75.0
.click Submerged Outhouse##3332 |tip It's laying in a trench underwater.
..accept 25526
step
goto 79.5,76.1
.from Southsea Treasure Hunter##40449+
.collect Pirate's Crowbar##54821 |q 25526
.click Rocket Car Parts##450 |tip They look like tan pieces of metal and gray metal gears on the ground underwater around this area.
.get 15 Rocket Car Parts |q 25516/1
step
goto 79.5,75.0
.' Use your Pirate's Crowbar next to the Submerged Outhouse |use Pirate's Crowbar##54821
.' Use the crowbar on the house |q 25526/1
.click the Submerged Outhouse##3332 |tip It's laying in a trench underwater.
..turnin 25526
step
goto 77.2,74.5
.talk 40487
..turnin 25516
..accept 25533
step
goto 78.7,76.0
.talk 40727
..' Tell him to get you into your boat
.' Get your boat from Griznak |q 25533/1
step
'Use your Frost Cannon ability on the fires of the huge ship as you ride around in your boat
.' Extinguish 15 Fires |q 25533/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 25533
..accept 25543
step
'Use your Fire Cannon ability on the small boats floating in the water all around you as you ride in your boat
.' Sink 15 Rowboats |q 25543/1
step
.click the red arrow on your hotbar |goto 78.3,73.3,0.5 |noway |c
step
goto 77.2,74.5
.talk 40487
..turnin 25543
..accept 25586
step
goto 75.9,74.7
.talk 40028
..accept 25745
step
goto 78.1,73.7
.talk 40556
..accept 25596
step
goto 78.2,73.7
.talk 40595
..accept 25589
step
goto 78.3,73.6
.talk 40727
..accept 28042
step
goto 69.9,85.2
.talk 47383
..turnin 28042
..accept 28045
..accept 28051
step
goto 70.1,85.4
.from Silithid Ravager##47388+
.get 8 Scoop of Silithid Goo |q 28045/1
.clicknpc Dead Employee##47446
.' Hook 10 Dead Employees |q 28051/1
step
goto 69.9,85.2
.talk 47383
..turnin 28045
..turnin 28051
..accept 28047
..accept 28048
step
goto 66.2,86.2 |n
.' Enter the bug hive |goto 66.2,86.2,0.5 |noway |c
step
goto 66.0,86.5
.' Use your I-Scream Cryocannon next to the Refrigeration Pipe |use I-Scream Cryocannon##62912 |tip It looks like a big metal pipe on the wall inside the bug hive.
.' Freeze the First Pipe |q 28047/1
step
goto 65.3,86.9
.' Use your I-Scream Cryocannon next to the Refrigeration Pipe |use I-Scream Cryocannon##62912 |tip It looks like a big metal pipe on the wall inside the bug hive.
.' Freeze the Second Pipe |q 28047/2
step
goto 65.0,84.5
.' Use your I-Scream Cryocannon next to the Refrigeration Pipe |use I-Scream Cryocannon##62912 |tip It looks like a big metal pipe on the wall inside the bug hive.
.' Freeze the Third Pipe |q 28047/3
step
goto 64.9,85.7
.' Use your I-Scream Cryocannon next to the Refrigeration Pipe |use I-Scream Cryocannon##62912 |tip It looks like a big metal pipe on the wall inside the bug hive.
.' Freeze the Fourth Pipe |q 28047/4
step
goto 63.8,86.3
.kill Hive Controller##47389 |q 28048/1
step
goto 66.2,86.2 |n
.' Leave the bug hive |goto 66.2,86.2,0.5 |noway |c
step
goto 69.9,85.2
.talk 47383
..turnin 28047
..turnin 28048
step
goto 89.3,72.8 |n
.' Follow the path up |goto 89.3,72.8,0.5 |noway |c
step
goto 91.7,79.3
.talk 40888
..turnin 25596
..accept 25610
step
goto 90.8,77.9
' |from Southsea Sailor##40092+, Southsea Parrot Handler##40432+
.kill 15 Southsea pirates |q 25589/1
.click Holdfast Cannons |tip They are lined up on the edge of the cliff.
.' Destroy 8 Holdfast Cannons |q 25586/1
step
goto 78.2,73.6
.talk 40595
..turnin 25589
step
goto 77.2,74.5
.talk 40487
..turnin 25586
step
ding 41
step
goto 81.6,68.0
.click Sunken Treasure Chest##259 |tip They are underwater around this area.
.get 12 Sunken Treasure Chest |q 25610/1
step
goto 89.3,72.8 |n
.' Follow the path up |goto 89.3,72.8,0.5 |noway |c
step
goto 91.7,79.3
.talk 40888
..turnin 25610
..accept 25628
step
goto 92.0,83.2 |n
.' Use your Fake Treasure on Den Whompers to make them friendly |use Fake Treasure##55158
.' Enter the cave |goto 92.0,83.2,0.5 |noway |c
|modelnpc Den Whomper##40959
step
goto 95.2,79.5
.' Use your Fake Treasure on Den Whompers to make them friendly |use Fake Treasure##55158
.from Tony Two-Tusk##40958 |tip Follow the path to the left in the cave to get to him.  He will jump inside a treasure chest and scramble around.  Just keep attacking him when he reopens his chest.
.get Rusted Cage Key |q 25628/1
|modelnpc Den Whomper##40959
step
goto 92.0,83.2 |n
.' Use your Fake Treasure on Den Whompers to make them friendly |use Fake Treasure##55158
.' Leave the cave |goto 92.0,83.2,0.5 |noway |c
|modelnpc Den Whomper##40959
step
goto 91.7,79.3
.talk 40888
..turnin 25628
step
'Next to you:
.talk 41058
..accept 25660
step
goto 96.8,72.5
.talk 41060
..turnin 25660
..accept 25661
step
goto 91.0,69.0
.from Evil Dolly##41076 |tip She's downstairs in the boat, on the middle level, in the captain's room.
.get Evil Dolly's Heart |q 25661/1
step
goto 88.1,73.9
.click the Rope Ladder hanging off the boat to get on the boat
.' Jump up onto the ship |goto 88.1,73.9,0.2 |noway |c
|modelnpc Rope Ladder##42029
step
goto 88.5,72.8
.from Seadog Fajardo##41081 |tip He's on the top deck of the ship, in a side room, directly under where the ship wheel is on the back of the boat.
.get Seadog Fajardo's Lungs |q 25661/2
step
goto 88.5,77.0
.click the Rope Ladder hanging off the boat to get on the boat
.' Jump up onto the ship |goto 88.5,77.0,0.2 |noway |c
|modelnpc Rope Ladder##42029
step
goto 87.8,76.0
.from Lilly Landlubber##41082 |tip She's at the very top of the ship, next to the ship wheel.
.get Lilly Landlubber's Liver |q 25661/3
step
goto 89.3,72.8 |n
.' Follow the path up |goto 89.3,72.8,0.5 |noway |c
step
goto 96.8,72.5
.talk 41060
..turnin 25661
..accept 25672
step
goto 85.5,65.5
.clicknpc Sparkleshell Snappers##48148
.clicknpc Scorpid Reaver##41100
.get 10 Creature Carcass |q 25672/1
.' You can find more at [83.5,57.2]
step
goto 89.3,72.8 |n
.' Follow the path up |goto 89.3,72.8,0.5 |noway |c
step
goto 96.8,72.5
.talk 41060
..turnin 25672
..accept 25704
step
goto 97.2,72.2
.click Ajamon's Portal to Tirth's Haunt |tip It looks like a big green swirling portal.
.' Teleport to Mad Magus Tirth |goto 86.1,92.1,0.5 |noway |c
step
goto 85.1,91.8
.from Mad Magus Tirth##41131
.' Use your Soul Stick on Mad Magus Tirth's corpse |use Soul Stick##55230
.' Extract Mad Magus Tirth's Soul |q 25704/1
step
goto 86.2,92.1
.click Ajamon's Portal to the Southsea Holdfast |tip It looks like a big green swirling portal.
.' Teleport to Ajamon |goto 96.8,72.3,0.5 |noway |c
step
goto 96.8,72.5
.talk 41060
..turnin 25704
step
goto 88.3,58.2 |n
.' Follow the path up |goto 88.3,58.2,0.5 |noway |c
step
goto 88.6,54.8
.talk 41184
..turnin 25745
..accept 25757
step
goto 90.1,53.0
.talk 40082
..accept 25762
step
goto 86.8,51.5
.from Kravel Koalbeard##41196 |tip He will become stunned, you don't have to actually kill him.
.click Kravel Koalbeard while he is stunned
.get Alliance's Proposal |q 25757/1
step
goto 88.6,54.8
.talk 41184
..turnin 25757
..accept 25775
step
goto 44.1,37.3 |n
.' Enter the cave underwater |goto 44.1,37.3,0.5 |noway |c
step
goto 42.0,31.5
.' Use your Splithoof Brand next to The Ancient Brazier |use Splithoof Brand##55986 |tip It's a small bowl on the ground with blinking purple coals in it, and smoke rising out of it.
.' Reignite The Ancient Brazier |q 25762/1
.click Needles Iron Pyrite##311
.get Thousand Needles Pyrite Ore Chunks |n
step
goto 42.2,33.0
.from Aquarian##41236
.get The Sacred Flame |q 25762/2
step
goto 44.1,37.3 |n
.' Leave the cave |goto 44.1,37.3,0.5 |noway |c
step
goto 42.8,37.8
.click Needles Iron Pyrite##311
.get 8 Needles Pyrite Ore Chunk |q 25775/1
step
goto 88.3,58.2 |n
.' Follow the path up |goto 88.3,58.2,0.5 |noway |c
step
goto 88.6,54.8
.talk 41184
..turnin 25775
..accept 25779
step
goto 90.1,53.0
.talk 40082
..turnin 25762
step
goto 86.8,51.6
.talk 41205
..turnin 25779
..accept 25791
step
goto 88.6,54.8
.talk 41184
..turnin 25791
..accept 25797
..accept 25799
step
goto 90.1,51.5
.' Use your Oil Drilling Rig next to the bubbling pond |use Oil Drilling Rig##56011
.' Defend the Oil Drilling Rig |q 25799/1
' |from Galak Mauler##40062+, Galak Wrangler##40063+, Galak Stormer##40061+
.kill 15 Splithoof Heights centaurs |q 25797/1
step
goto 88.6,54.8
.talk 41184
..turnin 25797
..turnin 25799
..accept 25814
step
goto 87.5,46.5 |n
.' Follow the path up |goto 87.5,46.5,0.5 |noway |c
step
goto 89.5,47.0
.click the Horn Mouthpiece##750 |tip It's the very tip of the bottom of the big spiral horn.
.' Blow the Horn |q 25814/1
.kill Whrrrl##41334 |q 25814/2
step
goto 88.6,54.8
.talk 41184
..turnin 25814
..accept 25826
step
ding 42
step
goto 75.9,74.7
.talk 4630
..turnin 25826
..accept 25836
step
goto 46.4,57.8
.talk 41446
..turnin 25836
..accept 25870
step
goto 46.8,55.9
.talk 41421
..accept 25872
step
goto 44.6,50.0
.' Follow the path up
.talk 45271
..accept 25874
step
goto 45.2,50.2
.clicknpc Captured Freewind Brave##41460 |tip He's chained to a big totem pole.
.' Free the Captured Freewind Brave |q 25872/1
step
goto 46.1,51.5
.from Cliffwatcher Longhorn##10537
.get Longhorn's Horn |q 25874/1
step
goto 42.1,49.4
.kill 10 Grimtotem Invader##41431+ |q 25870/1
step
goto 46.8,55.9
.talk 41421
..turnin 25872
..accept 27276
step
goto 46.4,57.8
.talk 10645
..turnin 25870
..turnin 25874
step
goto 42.2,48.2
.' Go onto the bridge, he will spawn next to you
.talk 9525
..turnin 27276
..accept 27311
..accept 27313
..accept 27315
step
goto 43.8,43.7
.kill Isha Gloomaxe##45387 |q 27315/1
.click Grimtotem Weapon Racks and Burn them
step
goto 43.4,43.4
.click The Rattle of Bones##9887 |tip It looks like a small white rattle laying on a blue rug next to a big tent.
..accept 27317
.click Grimtotem Weapon Racks and Burn them
step
'Next to you:
.talk 9525
..turnin 27315
..accept 27319
..turnin 27317
..accept 27321
..accept 27326
step
goto 39.2,41.4
.kill Elder Stormhoof##45410 |q 27319/1
.click Grimtotem Weapon Racks and Burn them
step
goto 38.7,41.9
.click The Writ of History##9888
.get The Writ of History |q 27321/1
.click Grimtotem Weapon Racks and Burn them
step
'Next to you:
.talk 9525
..turnin 27319
..accept 27324
..turnin 27321
step
goto 34.1,40.1
.kill Grundig Darkcloud##45418 |q 27324/1
.click Grimtotem Weapon Racks and Burn them
step
goto 34.0,37.1
.click The Drums of War##7698 |tip It looks like some bongo drums sitting on the ground inside a small tent hut.
.get The Drums of War |q 27326/1
.click Grimtotem Weapon Racks and Burn them
step
'Next to you:
.talk 9525
..turnin 27324
..accept 27328
..turnin 27326
step
goto 37.8,26.6
.kill Arnak Grimtotem##45438 |q 27328/1 |tip When fighting this NPC, focus on the adds, and let the Freewind Brave fight him.
.click Grimtotem Weapon Racks and Burn them
step
'Next to you:
.talk 9525
..turnin 27328
..accept 27358
step
goto 39.1,25.7
.talk 45442
..turnin 27358
..accept 27330
.click Grimtotem Weapon Racks and Burn them
step
ding 43
step
goto 38.1,35.4
.' Use your Shu'halo Artifacts in the middle of the circle of rocks |use Shu'halo Artifacts##61043
.' Defeat Arikara |q 27330/1
.click Grimtotem Weapon Racks and Burn them
|modelnpc Arikara##47941
step
goto 34.0,37.1
' |from Grimtotem Geomancer##45381+, Grimtotem Reaver##45385+, Grimtotem Stomper##45383+
.kill 20 Grimtotem on Darkcloud Pinnacle |q 27313/1
.click Grimtotem Weapon Rack##9882 |tip They look like wooden stands around this area with a bunch of weapons leaning on them.
.' Burn 8 Weapon Racks |q 27311/1
step
'Next to you:
.talk 9525
..turnin 27311
..turnin 27313
step
goto 39.1,25.7
.talk 45442
..turnin 27330
..accept 28085
step
'Jump down into the water
.' Skip to the next step in the guide
step
goto 13.8,33.8 |n
.' Follow this path |goto 13.8,33.8,0.5 |noway |c
step
goto 12.9,34.0
.talk 47471
..turnin 28085
..accept 28086
..accept 28087
step
goto 12.0,34.3
.from Twilight Trapper##47479+
.get 8 Trapper Net |q 28087/1
.clicknpc Highperch Prideling##47481
.' Free 12 Pridelings |q 28086/1
step
goto 12.9,34.0
.talk 47471
..turnin 28086
..turnin 28087
..accept 28088
step
goto 13.2,39.7 |n
.' Follow the path up |goto 13.2,39.7,0.5 |noway |c
step
goto 17.8,40.9
.from Twilight Subduer##47487+ |tip Kill the 4 Twilight Subduers who are holding a rope attached to Heartrazor, who is flying in the air.
.' Release Heartrazor |q 28088/1
step
goto 14.7,39.5 |n
.' Follow the path down |goto 14.7,39.5,0.5 |noway |c
step
goto 12.9,34.0
.talk 47471
..turnin 28088
..accept 28098
step
goto 12.9,34.0
.clicknpc Heartrazor##47507
.' Get a flight from Heartrazor |q 28098/1
step
goto 19.5,48.9
.from Twilight Skymaster Richtofen##47510
.' Deal with Twilight Skymaster Richtofen |q 28098/2
step
goto 15.9,45.8
.clicknpc Heartrazor##47507
.' Fly back to Pao'ka Swiftmountain |goto 12.8,34.1,0.5 |noway |c
step
goto 12.9,34.0
.talk 47471
..turnin 28098
..accept 28124
step
goto 30.5,49.3
.talk 47580
..turnin 28124
..accept 28125
..accept 28127
step
goto 28.9,54.1
.from Twilight Jailer##47630+
.' Free 5 Bulwark Prisoners |q 28127/1
.from Bulwark Defender##47583+, Twilight Jailer##47630+, Twilight Magus##47585+
.get 10 Twilight's Hammer Armor |q 28125/1
step
goto 30.5,49.3
.talk 47580
..turnin 28125
..turnin 28127
..accept 28139
..accept 28136
step
'Use your Bulwark Disguise |use Bulwark Disguise##63071
.' Wear the Bulwark Disguise |havebuff INTERFACE\ICONS\inv_helm_plate_twilighthammer_c_01 |q 28136
step
goto 30.0,54.1
.talk 47620 |tip He's at the top of the tower.
..' Tell him to look behind him!
.' Assassinate Commander Fastfuse |q 28136/2
step
goto 28.0,57.4
.talk 47619
..' Tell him to look behind him!
.' Assassinate Elementalist Starion |q 28136/3
step
goto 31.2,59.7
.talk 47602
..' Tell him to look behind him!
.' Assassinate Codemaster Deethuk |q 28136/1
.click Codemaster's Code Device##10150
.get Codemaster's Code |q 28139/1
step
goto 30.5,49.3
.talk 47580
..turnin 28139
..turnin 28136
..accept 28140
step
'Use your Bulwark Disguise |use Bulwark Disguise##63071
.' Wear the Bulwark Disguise |havebuff INTERFACE\ICONS\inv_helm_plate_twilighthammer_c_01 |q 28140
step
goto 35.9,60.6
.click Magatha's Bonds Controller##9849
.' Disable the Controller |q 28140/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28140
..accept 28142
step
goto 50.1,62.6
.talk 47745
..turnin 28142
..accept 28157
..accept 28158
step
goto 52.8,58.6
.click Twilight Element of Water##9506
.get Twilight Element of Water |q 28157/4
step
goto 53.3,59.3
.from Bound Fury##47763
.' Unbind the Bound Fury |q 28158/1
step
goto 57.6,59.6
.click Twilight Element of Air##9415
.get Twilight Element of Air |q 28157/1
step
goto 57.4,61.0
.from Bound Vortex##47766
.' Unbind the Bound Vortex |q 28158/2
step
goto 60.5,64.5
.click Twilight Element of Fire##9416
.get Twilight Element of Fire |q 28157/3
step
goto 53.3,63.7
.click the Twilight Element of Earth##10153
.get Twilight Element of Earth |q 28157/2
step
ding 44
step
goto 50.1,62.6
.talk 47745
..turnin 28157
..turnin 28158
..accept 28159
step
goto 54.8,62.4
.' Use your Elemental Nullifier on Animus |use Elemental Nullifier##63104 |tip He's floating in the air.
.from Animus##47777
.get The Doomstone |q 28159/1
step
goto 50.1,62.6
.talk 47745
..turnin 28159
..accept 28161
step
goto 75.9,74.7
.talk 40028
..turnin 28161
..accept 27447
step
goto Tanaris 51.2,22.3 |n
.'Go south to Tanaris |goto Tanaris |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Tanaris (44-47)\\Tanaris (44-47)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Felwood (47-51)\\Felwood (47-48)
startlevel 44.45
dynamic on
step
goto Tanaris,52.0,27.6
.talk 7824
.fpath Gadgetzan
step
goto 52.6,27.0
.talk 7733
.home Gadgetzan
step
goto 52.3,28.1
.talk 39178
..accept 25112
step
goto 51.2,30.0
.talk 38534
..turnin 27447
..accept 24906
..accept 24907
step
goto 51.3,36.2
.from Glasshide Basilisk##5419+
.' Use your Butcherbot Control Gizmo on Glasshide Basilisk corpses |use Butcherbot Control Gizmo##52715
.' Harvest 10 Glasshide Basilisks |q 25112/1
step
goto 53.8,39.6
.kill 8 Tidal Strider##39022+ |q 24907/1
.click Steamwheedle Crate##7539
.get 7 Steamwheedle Supplies |q 24906/1
step
'Hearth to Gadgetzan |goto 52.6,27.0,0.5 |use Hearthstone##6948 |noway |c
step
goto 52.3,28.1
.talk 39178
..turnin 25112
..accept 25111
step
goto 51.2,30.0
.talk 38534
..turnin 24906
..turnin 24907
..accept 24910
step
goto 53.4,27.4
.clicknpc Steamwheedle Rescue Balloon##40604
.' Use your Deliver Life-Rocket ability on your hotbar on Steamwheedle survivors on the ground
.' Use your Pirate-Destroying Bomb on Southsea Blockaders on the ground
.' Deliver 5 Life Rockets |q 24910/1
.kill 40 Southsea Blockader##40583+ |q 24910/2
step
'Use the Emergency Rocket Pack ability on your hotbar
.' Return to Gadgetzan |goto 53.1,28.1,0.5 |noway |c |q 24910
step
goto 51.2,30.0
.talk 38534
..turnin 24910
..accept 24947
step
goto 49.6,34.9
.from Fire Roc##5429+
.' Use your Butcherbot Control Gizmo on Fire Roc corpses |use Butcherbot Control Gizmo##52715
.' Harvest 12 Fire Rocs |q 25111/1
.' You can find more Fire Rocs as [46.3,38.8]
step
goto 52.3,28.1
.talk 39178
..turnin 25111
..accept 25115
step
goto 48.1,28.3
.from Blisterpaw Hyena##5426+
.' Use your Butcherbot Control Gizmo on Blisterpaw Hyena corpses |use Butcherbot Control Gizmo##52715
.' Harvest 10 Blisterpaw Hyenas |q 25115/1
step
goto 52.3,28.1
.talk 39178
..turnin 25115
..accept 25091
step
goto 42.5,24.0
.talk 7804
..turnin 25091
step
goto 42.5,24.2
.talk 40580
..accept 25521
step
goto 42.3,23.8
.talk 38927
..accept 25021
step
goto 38.3,24.8
.from Sandfury Firecaller##5647+, Sandfury Hideskinner##5645+, Sandfury Axe Thrower##5646+
.get 6 Fistful of Blood |q 25021/1
.from Duneclaw Lasher##40717+, Duneclaw Matriarch##40656+
.get Duneclaw Stinger |n
step
goto 44.4,25.2
.from Duneclaw Lasher##40717+, Duneclaw Matriarch##40656+
.get 6 Duneclaw Stinger |q 25521/1
step
goto 42.3,23.8
.talk 38927
..turnin 25021
..accept 25025
step
ding 45
step
goto 42.5,24.2
.talk 40580
..turnin 25521
..accept 25522
step
goto 46.1,23.6
.from Gargantapid##40581
.get Gargantapid's Poison Gland |q 25522/1
step
goto 42.5,24.2
.talk 40580
..turnin 25522
step
goto 44.9,44.9
.from Zakkaru##40648
.get Sealed Sang'thraze |q 25025/1
step
goto 42.3,23.8
.talk 38927
..turnin 25025
..accept 25026
step
goto 38.9,23.9
.click Shallow Grave##1767
.from Sandfury Zombie##38909+
.get 6 Darkest Mojo |q 25026/1
step
goto 42.3,23.8
.talk 38927
..turnin 25026
..accept 25032
step
goto 39.1,34.9
.click Jang'thraze the Protector##768
.from Mazoga##38927
.' Discover the Fate of Jang'thraze |q 25032/1
step
goto 42.5,24.0
.talk 7804
..turnin 25032
step
goto 67.8,41.8 |n
.' Enter Lost Rigger Cove |goto 67.8,41.8,0.5 |noway |c
step
goto 71.8,45.5
.talk 38703
..turnin 24947
..accept 24927
..accept 24928
..accept 24949
step
goto 72.6,46.2
.' Use your Burning Rum next to the building |use Burning Rum##51547
.' Burn the Northeast Shack |q 24928/3
.click Pirate Booty and get Pirate Booty |tip They look like small objects on the ground and inside buildings around this area.
step
goto 71.8,46.8
.' Use your Burning Rum next to the building |use Burning Rum##51547
.' Burn the Northwest Shack |q 24928/1
.click Pirate Booty and get Pirate Booty |tip They look like small objects on the ground and inside buildings around this area.
step
goto 72.0,47.9
.' Use your Burning Rum next to the building |use Burning Rum##51547
.' Burn the Southwest Shack |q 24928/2
.click Pirate Booty and get Pirate Booty |tip They look like small objects on the ground and inside buildings around this area.
step
goto 72.2,47.0
' |from Southsea Swashbuckler##7858+, Southsea Pirate##7855+
.kill 15 Southsea Freebooters |q 24927/1
.click Pirate Booty##9297 |tip They look like small objects on the ground and inside buildings around this area.
.get 20 Pirate Booty |q 24949/1
step
goto 71.8,45.5
.talk 38703
..turnin 24927
..accept 25534
..turnin 24928
..turnin 24949
..accept 25541
step
goto 74.5,45.6
.kill Southsea Taskmaster##40593 |q 25534/1 |tip They are downstairs in this boat.
step
goto 72.0,49.9
.from Southsea Musketeer##40632+, Southsea Strongarm##40635+
.get 20 Gold Filling |q 25541/1
step
goto 71.8,45.5
.talk 38703
..turnin 25534
..turnin 25541
..accept 24950
step
goto 71.0,55.8
.kill Captain Dreadbeard##38749 |q 24950/1
step
goto 71.8,45.5
.talk 38703
..turnin 24950
..accept 25103
step
goto 55.9,60.6
.talk 41214
.fpath Bootlegger Outpost
step
goto 55.6,60.9
.talk 38706
..turnin 25103
..accept 24932
..accept 25072
step
goto 56.3,61.8
' |from Hazzali Stinger##5450+, Hazzali Worker##5452+, Hazzali Swarmer##5451+
.kill 15 Hazzali Silithid |q 24932/1
.from Hazzali Cocoon##39081+
.' Rescue 8 Goblins |q 25072/1
step
goto 55.6,60.9
.talk 38706
..turnin 24932
..accept 24933
..turnin 25072
step
ding 46
step
goto 55.2,60.3
.talk 11811
..accept 24931
step
goto 55.6,58.3
.from Glasshide Gazer##5420+
.get 5 Ocular Crystal |q 24931/1
.from Rabid Blisterpaw##5427+
.get 6 Hyena Chunk |q 24933/1
step
goto 55.2,60.3
.talk 11811
..turnin 24931
step
goto 55.6,60.9
.talk 38706
..turnin 24933
..accept 24951
step
goto 53.4,62.7
.' Use your Bootlegger Bug Bait on a Hazzali Swarmer |use Bootlegger Bug Bait##52031
.' Take control of a Hazzali Swarmer |havebuff Interface\Icons\Ability_Hunter_Pet_Silithid |q 24951
step
goto 55.6,60.9
.' Stand next to Zeke Bootscuff |tip Don't mount while running back to Zeke Bootscuff, or you will lose your Hazzali Swarmer and not get credit.
.' Wrangle a Swarmer |q 24951/1
step
goto 55.6,60.9
.talk 38706
..turnin 24951
..accept 24953
step
goto 55.2,60.3
.talk 11811
..' Tell him you're ready to pilot our silithid
.' Start mind-controlling a Hazzali Swarmer |invehicle |q 24953
step
goto 54.4,69.9 |n
.' Enter the hive |goto 54.4,69.9,0.5 |noway |c
step
goto 54.5,72.1
.' Use the Sense Pheromones ability on your hotbar and follow the orange trail to this spot
.' Use the Detonate Silithid ability on your hotbar
.' Destroy the Hive |q 24953/1
step
goto 55.6,60.9
.talk 38706
..turnin 24953
..accept 24905
step
goto 44.6,52.7
.talk 38849
..turnin 24905
..accept 24955
step
goto 43.7,52.9
.' Use your Refurbished Ogre Suit |use Refurbished Ogre Suit##52038
.' Become an ogre |havebuff Interface\Icons\achievement_reputation_ogre |q 24955
step
goto 42.3,53.3
.' Talk to Dunemaul ogres around this area
..' Tell them to sign the charter
.' Obtain 10 "Signatures" |q 24955/1
step
goto 44.6,52.7
.talk 38849
..turnin 24955
..accept 24957
step
goto 37.0,47.4
.from Centipaar Sandreaver##5460+, Centipaar Worker##5458+, Centipaar Wasp##5455+, Centipaar Tunneler##5459+
.get 20 Centipaarts |q 24957/1
step
goto 44.6,52.7
.talk 38849
..turnin 24957
..accept 24963
step
goto 43.4,53.6
.' Fight ogres around this area
.' Use your Bilgewater Cartel Promotional Delicacy Morsels on weakened ogres |use Bilgewater Cartel Promotional Delicacy Morsels##52044 |tip You will be able to use the morsel when the ogres are a little lower than half health.
.' Feed 10 Ogres |q 24963/1
step
goto 44.6,52.7
.talk 38849
..turnin 24963
..accept 25001
step
goto 41.8,57.4
.kill Sandscraper##38880 |q 25001/1 |tip He's inside this small cave.
step
goto 41.9,57.5
.click Sandscraper's Chest##1387
..accept 25014
step
goto 44.6,52.7
.talk 38849
..turnin 25001
..turnin 25014
..accept 25018
step
ding 47
step
goto 33.3,77.0
.talk 38922
..turnin 25018
..accept 25020
..accept 25019
step
goto 33.2,76.9
.talk 44374
..accept 26896
step
goto 33.3,77.4
.talk 41215
.fpath Dawnrise Expedition
step
goto 39.7,71.0
.kill 10 Explorer's League Digger##38998+ |q 25019/1
.click Ancient Hieroglyph##6419
.get 5 Ancient Hieroglyphs |q 25020/1
step
goto 33.3,77.0
.talk 38922
..turnin 25020
..turnin 25019
..accept 25017
step
goto 35.5,75.7
.kill 6 Sandstone Golem##38914+ |q 25017/1
step
goto 33.3,77.0
.talk 38922
..turnin 25017
..accept 25068
..accept 25069
step
goto 37.7,79.1 |n
.' Enter Uldum |goto 37.7,79.1,0.5 |noway |c
step
goto Uldum,84.5,43.3
.click Antediluvean Chest##1387
..turnin 25069
..accept 25070
step
goto 84.5,42.3
.from Antechamber Guardian##39077
.' Defeat the Antechamber Guardian |q 25070/1
step
goto 84.5,43.3
.click the Antediluvean Chest |tip It looks like a big stone box at the end of the hallway.
..turnin 25070
..accept 25107
step
goto 84.5,42.3
.from Sandstone Earthen##38916+
.get 5 Earthen Jewel |q 25068/1
step
goto Tanaris,37.7,79.1 |n
.' Leave Uldum |goto Tanaris,37.7,79.1,0.5 |noway |c
step
goto 33.3,77.0
.talk 38922
..turnin 25068
..turnin 25107
step
'Hearth to Gadgetzan |goto 52.6,27.0,0.5 |use Hearthstone##6948 |noway |c
step
goto 51.8,28.1
.talk 39034
..turnin 26896
step
goto 52.0,27.6
.talk 7824
.' Fly to Silverwind Refuge, Ashenvale |goto Ashenvale,49.3,65.4,0.5 |noway |c
step
'Go northeast to Felwood |goto Felwood |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Felwood (47-51)\\Felwood (47-48)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Felwood (47-51)\\Felwood (48-51)
startlevel 47.55
dynamic on
step
goto Felwood,51.5,80.9
.talk 22931
.fpath Emerald Sanctuary
step
goto 51.4,80.4
.talk 11554
..accept 28100
step
goto 51.1,80.5
.talk 10923
..accept 27997
step
goto 50.9,80.1
.talk 10921
..accept 28148
step
goto 51.5,83.7
.click Totem of Ruumbo##10099
..turnin 28100
..accept 27994
..accept 27989
step
goto 55.6,84.1
.from Angerclaw Bear##8956+, Felpaw Wolf##8959+
.get 10 Corrupted Pelt |q 28148/1
step
goto 49.9,86.2
' |from Deadwood Gardener##7154+, Deadwood Warrior##7153+, Deadwood Pathfinder##7155+
.kill 15 Deadwood Furbolg |q 27994/1
.' Use Ruumbo's Honey Stick next to Bee Hives |use Ruumbo's Honey Stick##62819 |tip They look like yellow glowing bee hives on wooden post branches around this area.
.get 10 Deadwood Honey Glob |q 27989/1
step
goto 44.0,82.8 |n
.' The path to The Corruption of the Jadefire starts here |goto 44.0,82.8,0.5 |noway |c
step
goto 42.8,84.6
' |from Jadefire Satyr##7105+, Jadefire Felsworn##7109+
.kill 12 Jadefire Glen satyr |q 27997/1
step
goto 44.0,82.8 |n
.' Leave Jadefire Glen |goto 44.0,82.8,0.5 |noway |c
step
goto 50.9,80.1
.talk 10921
..turnin 28148
step
goto 51.1,80.5
.talk 10923
..turnin 27997
step
goto 51.5,83.7
.click Totem of Ruumbo##10099
..turnin 27994
..turnin 27989
..accept 27995
.' Discover Ruumbo's Secret |q 27995/1
step
goto 51.4,80.4
.talk 11554
..turnin 27995
step
goto 51.1,80.5
.talk 10923
..accept 28150
step
goto 41.9,72.0
.talk 47341
..turnin 28150
..accept 28000
step
goto 47.9,73.3
.' Fight Impsy
.' Use your Enchanted Imp Sack on Impsy when he is weakened |use Enchanted Imp Sack##62899 |tip You will see a message pop up saying "Catch Impsy in the sack!" when you are able to capture Impsy.
.' Capture Impsy |q 28000/1
|modelnpc Impsy##47366
step
goto 41.9,72.0
.talk 47341
..turnin 28000
step
goto 41.9,72.0
.talk 47366
..accept 28049
step
goto 41.1,71.4
.from Cursed Ooze##7086+
.get 8 Cursed Ooze |q 28049/1
step
goto 41.9,72.0
.talk 47366
..turnin 28049
..accept 28044
step
goto 41.0,75.8
.' Stand on the Mark of Tichondrius |tip It's a green glowing symbol on the ground.
.' Use your Phaseblood Potion |use Phaseblood Potion##62920
.' Shift into the Nether |havebuff Interface\Icons\Spell_Shadow_ImpPhaseShift |q 28044
step
goto 42.3,79.9
.from Vorlus##47398
.get Claw of Tichondrius |q 28044/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28044
step
goto 41.9,72.0
.talk 47341
..accept 28113
step
goto 42.0,71.8
.talk 9116
..accept 28102
step
goto 37.2,66.0 |n
.' Follow the path up |goto 37.2,66.0,0.5 |noway |c
step
goto 33.4,65.7
.' Use your Claw of Tichondrius next to the fire blocking the path to make it go away |use Claw of Tichondrius##63031
.kill Xavathras##9454 |q 28113/1
step
goto 37.6,66.0
' |from Jadefire Rogue##7106+, Jadefire Shadowsworn##7110+
.kill 8 Jadefire Rogue or Shadowsworn |q 28102/1
step
goto 41.9,72.0
.talk 47341
..turnin 28113
..accept 28288
step
goto 42.0,71.8
.talk 9116
..turnin 28102
..accept 28152
step
ding 48
step
goto 41.2,76.2
.' Use Delaris's Prism near imps around this area |use Delaris's Prism##63395
.' Terrify 20 Imps |q 28288/1
step
goto 41.9,72.0
.talk 47341
..turnin 28288
step
goto 44.3,61.9
.talk 43079
.fpath Wildheart Point
step
goto 44.0,61.8
.talk 10922
..turnin 28152
..accept 28116
step
goto 44.0,61.9
.talk 48599
.home Wildheart Point
step
goto 44.1,62.0
.talk 11019
..accept 28121
step
goto 37.1,60.7
.from Jaedenar Guardian##7113+, Jaedenar Cultist##7112+, Jaedenar Adept##7115+, Jaedenar Hound##7125+
.' Slay 12 Jaedenar Forces |q 28121/1
.click Crying Violet##10140
.get 8 Crying Violet |q 28116/1
step
goto 36.4,58.3
.talk 51664
..turnin 28116
..turnin 28121
..accept 28119
step
goto 36.0,59.3
.' Use your Empty Canteen in the green water |use Empty Canteen##12922
.get Corrupt Moonwell Water |q 28119/1
step
goto 36.4,58.3
.talk 51664
..turnin 28119
..accept 28128
..accept 28129
..accept 28126
step
goto 36.1,58.1 |n
.' Enter Shadow Hold |goto 36.1,58.1,0.5 |noway |c
step
goto 37.0,55.5
.' Follow the path down
.kill Prince Xavalis##9877 |q 28129/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28129
..accept 28131
step
goto 37.0,55.9
.click Brazier of Pain##475
.' Extinguish the Brazier of Pain |q 28126/1
step
goto 37.1,54.9
.' Follow the path
.click Brazier of Hatred##475
.' Extinguish the Brazier of Hatred |q 28126/4
step
goto 37.4,53.1
.' Follow the path deeper into Shadow Hold
.click Brazier of Suffering##475
.' Extinguish the Brazier of Suffering |q 28126/3
step
goto 38.3,52.5
.click the Brazier of Malice##475
.' Extinguish the Brazier of Malice |q 28126/2
step
goto 38.9,50.4
.' Follow the path past some oozes
.kill Moora##9861 |q 28131/1
.kill Salia##9860 |q 28131/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28131
..accept 28153
step
goto 40.5,47.8 |n
.' Follow the path down |goto 40.5,47.8,0.3 |noway |c
step
goto 39.5,47.0
.kill Shadow Lord Fel'dan##9517 |q 28153/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28153
..accept 28155
step
goto 38.4,47.8
.' Follow the path up the ramp
.kill Lord Banehollow##9516 |q 28155/1
step
'All around inside this cave:
.from Jaedenar Hunter##7126+, Jaedenar Warlock##7120+, Jaedenar Darkweaver##7118+, Jaedenar Legionnaire##9862+, Jaedenar Enforcer##7114+
.' Slay 12 Shadow Hold Defenders |q 28128/1
step
goto 38.1,47.9
.click Portal to Wildheart Point##9382
..' Step through the portal and return to Wildheart Point |goto 44.1,61.9,0.5 |noway |c
step
goto 44.1,61.8
.talk 47617
..turnin 28155
step
goto 44.0,61.8
.talk 10922
..turnin 28126
step
goto 44.1,62.0
.talk 11019
..turnin 28128
step
goto 44.1,61.8
.talk 47617
..accept 28305
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Felwood (47-51)\\Felwood (48-51)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Winterspring (51-55)\\Winterspring (51-52)
startlevel 48.90
dynamic on
step
goto Felwood,41.3,49.9
.talk 47696
..turnin 28305
..accept 28207
step
goto 41.3,50.0
.talk 47692
..accept 28190
step
goto 41.8,49.7
.kill 8 Tainted Ooze##7092+ |q 28190/1
.click Emerald Shimmercap##6880
.get 7 Emerald Shimmercap |q 28207/1
step
goto 41.3,49.9
.talk 47696
..turnin 28207
step
goto 41.3,50.0
.talk 47692
..turnin 28190
step
goto 41.3,49.9
.talk 47696
..accept 28208
step
goto 38.6,53.8
.from Winna's Kitten##47687
.get Kitty's Eartag |q 28208/1
step
goto 41.3,49.9
.talk 47696
..turnin 28208
..accept 28213
step
goto 41.3,50.0
.talk 47692
..accept 28214
step
goto 35.6,52.8
.' Use Kitty's Eartag on Winna Hazzard |use Kitty's Eartag##63284
.kill Winna Hazzard##47679 |q 28213/1
step
goto 35.4,51.7
.kill 6 Bloodvenom Slimeslave##47675+ |q 28214/1
step
ding 49
step
goto 41.3,50.0
.talk 47692
..turnin 28214
step
goto 41.3,49.9
.talk 47696
..turnin 28213
..accept 28306
step
goto 43.3,30.4
.talk 48459
..turnin 28306
..accept 28360
..accept 28361
step
goto 43.6,28.7
.talk 43073
.fpath Whisperwind Grove
step
goto 43.9,27.9
.talk 48339
..accept 28341
..accept 28342
step
goto 44.0,27.9
.talk 48349
..accept 28358
..accept 28359
step
goto 44.8,29.2
.talk 48215
.home Whisperwind Grove
step
goto 48.0,39.9
.from Kroshius##48344
.get Kroshius' Infernal Core |q 28359/1
step
goto 45.3,39.4
.from Entropic Horror##9879+
.get 8 Entropic Essence |q 28341/1
.kill 6 Infernal Sentry##7136+ |q 28358/1
.click Infernal Debris |tip They look like small gray rocks on the ground around this area.
.get 9 Infernal Debris |q 28342/1
step
goto 41.1,35.9
.kill 8 Felrot Courser##48455+ |q 28360/1
.clicknpc Tainted Squirrel##48457
.' Scrub 6 Tainted Squirrels |q 28361/1
step
goto 43.3,30.4
.talk 48459
..turnin 28360
..turnin 28361
..accept 28374
step
goto 43.8,31.1
.clicknpc Whisperwind Lasher##47747
.' Check 7 Whisperwind Lashers |q 28374/1
step
goto 43.3,30.4
.talk 48459
..turnin 28374
step
goto 43.5,28.2
.talk 47843
..accept 28217
step
goto 43.9,28.2
.talk 48126
..accept 28229
step
goto 44.0,28.4
.' Stand in the water
.' Use your Empty Moonwell Vial |use Empty Moonwell Vial##63332
.collect Whisperwind Moonwell Water##63387 |q 28229
step
goto 43.9,27.9
.talk 48339
..turnin 28341
..turnin 28342
step
goto 44.0,27.9
.talk 48349
..turnin 28358
..turnin 28359
step
goto 48.6,25.2
.' Use your Whisperwind Moonwell Water on this hill |use Whisperwind Moonwell Water##63387
.' Water Irontree Hill |q 28229/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28229
..accept 28220
step
'Next to you:
.talk 48032
..accept 28219
step
goto 48.7,28.1
.kill 10 Ironwood Buzzer##48038+ |q 28219/1
.' Stand next to the small piles of dirt on the ground around this area
.' Produce 7 Rich Soil |q 28220/1
step
'Next to you:
.talk 48032
..turnin 28220
..turnin 28219
..accept 28222
step
'Next to you:
.talk 48042
..accept 28221
step
goto 48.2,23.7
.kill 10 Irontree Stomper##7139+ |q 28221/1
.' Stand in the white spotlights of light around this area
.' Bask in 5 Sunbeams |q 28222/1
step
'Next to you:
.talk 48042
..turnin 28222
..turnin 28221
..accept 28224
step
ding 50
step
goto 53.3,24.1
.kill Withered Protector##7149 |q 28224/1
step
'Next to you:
.talk 48044
..turnin 28224
..accept 28228
step
goto 48.7,25.2
.' Bring the Protector Back to the Hill |q 28228/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28228
step
goto 45.6,20.1
.talk 47923
..' Tell him you're here to put an end to his killing
.kill Feronas Sindweller |q 28217/1
step
goto 45.6,20.1
.talk 47923
..turnin 28217
..accept 28218
step
goto 45.3,19.8
.from Arthas##47733
.' Defeat Arthas |q 28218/1
step
goto 45.6,20.1
.talk 47923
..turnin 28218
..accept 28256
step
goto 45.3,19.8
.' Fight the mobs that spawn
.' Obtain the Skull of Gul'dan |q 28256/1
step
goto 45.6,20.1
.talk 47923
..turnin 28256
..accept 28257
step
goto 45.3,19.8
.from Tichondrius##47917
.' Defeat Tichondrius |q 28257/1
step
goto 45.6,20.1
.talk 47923
..turnin 28257
..accept 28261
step
goto 47.9,18.1 |n
.' Follow the path up |goto 47.9,18.1,0.5 |noway |c
step
goto 46.2,16.4
.' Use your Sindweller Blindfold |use Sindweller Blindfold##63419
.' Wear the Sindweller Blindfold |havebuff INTERFACE\ICONS\inv_misc_bandana_01 |q 28261
step
goto 43.8,16.2
.kill 12 Jadefire Shifter##48154+ |q 28261/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28261
..accept 28264
step
goto 44.8,29.2
.' Go to the top of the tower
.talk 47842
..' Tell him he's accused of being a demon in disguise
.kill Arch Druid Navarax |q 28264/1
step
goto 43.5,28.2
.talk 47843
..turnin 28264
step
goto 44.2,27.9
.talk 48469
..accept 28372
step
goto 43.6,28.7
.talk 43073
..' Tell her you've got a ride to Irontree Clearing waiting for you on behalf of Fez Hobnob
.' You will fly to Irontree Clearing |goto 56.4,8.5,0.5 |noway |c
step
goto 56.4,8.6
.talk 43085
.fpath Irontree Clearing
step
goto 56.3,8.2
.talk 48127
..turnin 28372
..accept 28333
..accept 28334
step
goto 55.0,15.5
.' Use Darla's Box of Megaflares on the ground around this area |use Darla's Box of Megaflares##63514
.kill 8 Talonbranch Prowler##48311+ |q 28334/1
.' Use Darla's Grapple near the red and green floating balloons around this area |use Darla's Grapple##63513
.collect Irontree Oilcan##63515 |n
.' Use your Irontree Oilcans next to Irontree Shredders |use Irontree Oilcan##63515 |tip They are sawing machines chopping on tree stumps around this area.
.' Oil 7 Shredders |q 28333/1
step
goto 56.3,8.2
.talk 48127
..turnin 28333
..turnin 28334
..accept 28357
..accept 28370
step
goto 61.5,19.3
.kill 8 Talonbranch Defender##48452+ |q 28357/1
.' Use Darla's Wisp Magnet near Talonbranch Wisps |use Darla's Wisp Magnet##63698 |tip They look like little balls of light around this area.
.' Capture 5 Talonbranch Wisps |q 28370/1
|modelnpc Talonbranch Wisp##48454
step
goto 56.3,8.2
.talk 48127
..turnin 28357
..turnin 28370
..accept 28336
..accept 28339
step
goto 55.7,11.9
.from Oily Sludge##48315+
.get 10 Crude Tarball |q 28339/1
.clicknpc Panicking Worker##48331
.' Slap 7 Panicking Workers |q 28336/1
.'You can find more Tarballs around [53.7,17.5]
step
goto 56.3,8.2
.talk 48127
..turnin 28336
..turnin 28339
..accept 28380
step
goto 54.7,18.4
.talk 48333
..turnin 28380
..accept 28335
..accept 28340
step
goto 55.6,18.6 |n
.' Enter the cave |goto 55.6,18.6,0.5 |noway |c
step
goto 60.5,22.3
.click Irontree Explosives and get Irontree Explosives |tip They look like small bombs laying on the ground inside the cave.
.click Master Control Pump##9877
..turnin 28335
..accept 28368
step
goto 55.6,18.6
.click Irontree Explosive##9055
.get 8 Irontree Explosives |q 28340/1
step
goto 55.6,18.6 |n
.' Leave the cave |goto 55.6,18.6,0.5 |noway |c
step
goto 54.7,18.4
.talk 48333
..turnin 28340
step
goto 55.7,22.3
.kill Grolvitar the Everburning##48352 |q 28368/1
step
ding 51
step
goto 56.3,8.2
.talk 48127
..turnin 28368
..accept 28373
step
goto 64.0,10.3
.' Follow the road around
.talk 15395
..turnin 28373
..accept 28338
..accept 28366
step
goto 64.1,10.3
.talk 48461
..accept 28362
step
goto 60.6,9.5
.talk 47556
..turnin 28362
..accept 28364
step
goto 62.1,9.8
.from Chieftain Bloodmaw##9462
.get Drizle's Key |q 28364/1
step
goto 60.6,9.5
.talk 47556
..turnin 28364
step
goto 61.4,9.8
' |from Deadwood Avenger##7157+, Deadwood Shaman##7158+, Deadwood Den Watcher##7156+
.kill 15 Deadwood Furbolg |q 28338/1
.collect Deadwood Ritual Totem##20741 |n
.click the Deadwood Ritual Totem in your bags |use Deadwood Ritual Totem##20741
..accept 8470
.click Deadwood Weapon Pile##10202
.get 7 Deadwood Weapons |q 28366/1
step
goto 63.2,17.0 |n
.' Go to the road |goto 63.2,17.0,0.5 |noway |c
step
goto 64.0,10.3
.talk 15395
..turnin 28338
..turnin 28366
..accept 28521
step
goto 64.4,10.0 |n
.' Enter the cave |goto 64.4,10.0,0.5 |noway |c
step
goto 64.6,4.5
.talk 11558
..turnin 8470
step
goto 67.4,8.0 |n
.' Follow the path east to Winterspring |goto Winterspring |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Winterspring (51-55)\\Winterspring (51-52)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Winterspring (51-55)\\Winterspring (52-55)
startlevel 51.65
dynamic on
step
goto Winterspring,21.1,46.2
.talk 11556
..turnin 28521
..accept 28524
..accept 28522
step
goto 25.1,58.5
.talk 9298
..turnin 28524
..accept 28460
..accept 28464
step
goto 25.2,58.5
.talk 10307
..accept 28540
step
goto 28.9,58.6
.from Rimepelt##48765
.get Rimepelt's Heart |q 28540/1
step
goto 25.2,58.5
.talk 10307
..turnin 28540
step
goto 24.5,47.6
.click Winterfall Cauldron##216
..turnin 28464
..accept 28467
step
goto 24.4,48.9
' |from Winterfall Totemic##7441+, Winterfall Pathfinder##7442+, Winterfall Den Watcher##7440+
.kill 15 Winterfall Furbolg |q 28460/1
.get 10 Winterfall Spirit Beads |q 28522/1
.' Kill Winterfall mobs until you randomly accept this quest:
..accept 28656
step
goto 21.1,46.2
.talk 11556
..turnin 28522
step
goto 25.1,58.5
.talk 9298
..turnin 28460
..turnin 28467
..accept 28469
..accept 28530
step
goto 25.2,58.5
.talk 10307
..turnin 28656
step
goto 32.3,50.9
.from Boiling Springbubble##48768+, Scalding Springsurge##48767+
.get 7 Suspicious Green Sludge |q 28530/1
step
goto 28.2,54.7
.from Winterfall Runner##10916 |tip They are white furbolgs that walk and run along this road, so you may need to search for one of them.
.get Winterfall Crate |q 28469/1
step
ding 52
step
goto 25.1,58.5
.talk 9298
..turnin 28469
..accept 28470
..turnin 28530
step
goto 36.9,55.6
.kill High Chief Winterfall##10738 |q 28470/1
.collect Crudely-Written Log##12842 |n
.click the Crudely-Written Log in your bags |use Crudely-Written Log##12842
..accept 28471
step
goto 25.1,58.5
.talk 9298
..turnin 28470
..turnin 28471
..accept 28472
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Winterspring (51-55)\\Winterspring (52-55)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Un'Goro Crater (55-57)\\Un'Goro Crater (55-57)
startlevel 52.40
dynamic on
step
goto Winterspring,46.9,53.8
.talk 10920
..turnin 28472
..accept 28479
step
goto 50.7,54.9
.talk 48658
..turnin 28479
..accept 28513
step
goto 49.8,54.4
.from Anguished Highborne##7524+, Suffering Highborne##7523+
.' Release 8 Highborne Spirits |q 28513/1
step
goto 50.7,54.9
.talk 48658
..turnin 28513
..accept 28534
step
goto 50.8,55.0
.talk 48659
..turnin 28534
..accept 28518
step
goto 54.0,57.9
.from Archmage Maenius##48740
.get Memory of Zin-Malor |q 28518/1
step
goto 50.8,55.0
.talk 48659
..turnin 28518
..accept 28535
step
goto 50.7,55.1
.talk 48660
..turnin 28535
..accept 28519
step
goto 50.1,56.2
' |from Wretched Spirit##48664+, Wretched Spectre##48665+
.kill 7 Wretched Spirit |q 28519/1
step
goto 50.7,55.1
.talk 48660
..turnin 28519
..accept 28536
step
goto 46.9,53.8
.talk 10920
..turnin 28536
..accept 28537
step
goto 46.1,56.8 |n
.' Go to the road |goto 46.1,56.8,0.5 |noway |c
step
goto 49.7,60.8 |n
.' Follow the path up, avoiding the pink bubbles because they will damage you |goto 49.7,60.8,0.5 |noway |c
step
goto 50.7,63.6
.from Shade of the Spiritspeaker##48678
.get Shard of the Spiritspeaker |q 28537/1
step
goto 46.9,53.8
.talk 10920
..turnin 28537
..accept 28848
step
goto 58.8,48.3
.talk 11139
.fpath Everlook
step
goto 59.7,50.5
.talk 50366
..turnin 28848
step
goto 59.9,51.2
.talk 11118
.home Everlook
step
goto 59.9,49.2
.talk 11191
..accept 28609
step
goto 59.8,49.7
.talk 48965
..turnin 28609
..accept 28610
step
goto 57.3,58.0
.from Frostshard Rumbler##48960+
.get 6 Prime Rubble Chunk |q 28610/1
step
goto 59.8,49.7
.talk 48965
..turnin 28610
..accept 28618
step
goto 59.9,49.2
.talk 11191
..turnin 28618
step
goto 59.8,49.1
.talk 11192
..accept 28624
step
goto 59.8,49.7
.talk 48965
..turnin 28624
..accept 28625
step
goto 54.7,51.1
.from Frostleaf Treant##48952+
.get 10 Fresh-Cut Frostwood |q 28625/1
step
goto 59.8,49.7
.talk 48965
..turnin 28625
..accept 28626
step
goto 59.8,49.1
.talk 11192
..turnin 28626
step
goto 59.8,49.3
.talk 11193
..accept 28627
step
goto 59.8,49.7
.talk 48965
..turnin 28627
..accept 28632
step
goto 59.3,49.8
.talk 10305
..accept 28629
..accept 28630
..accept 28631
step
goto 67.0,55.1
.click Echo Three##8171
..turnin 28630
step
goto 69.6,49.8
.click the icicle you are hanging from to get down
.from Icewhomp##49235
.get Icewhomp's Pristine Horns |q 28631/1
step
goto 71.4,53.7
.clicknpc Solid Ice##49233
.get 7 Pure Glacier Ice |q 28632/1
step
goto 67.2,54.5 |n
.' Leave the cave |goto 67.2,54.5,0.5 |noway |c
step
goto 65.5,55.7
.from Ice Thistle Yeti##7458+, Ice Thistle Patriarch##7460+, Ice Thistle Matriarch##7459+
.get 10 Thick Yeti Fur |q 28629/1
step
ding 53
step
'Hearth to Everlook |goto 59.8,51.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 59.3,49.8
.talk 10305
..turnin 28629
..turnin 28631
..accept 28722
step
goto 59.8,49.7
.talk 48965
..turnin 28632
..accept 28628
step
goto 59.8,49.3
.talk 11193
..turnin 28628
step
goto 60.1,50.9
.' Use Umi's Mechanical Yeti on Legacki |use Umi's Mechanical Yeti##12928
.' Scare Legacki |q 28722/1
step
goto 59.3,49.8
.talk 10305
..turnin 28722
step
goto 59.8,49.7
.talk 48965
..accept 28674
step
goto 59.7,50.5
.talk 50366
..accept 28847
step
goto 48.7,41.0
.talk 11079
..turnin 28674
..accept 28676
..accept 28701
step
goto 47.0,40.2 |n
.' Enter the cave |goto 47.0,40.2,0.5 |noway |c
step
goto 45.8,41.0
.' Follow the path down
.talk 49407
..turnin 28676
..accept 28703
..accept 28706
step
goto 45.6,41.6
.click Ancient Urns and get Starfall Relics as you walk through the cave completing quests |tip They look like red vases on the ground inside this cave.
.' Follow the path down
.talk 49399
..turnin 28706
..accept 28707
step
goto 46.3,42.6
.click Ancient Urns and get Starfall Relics as you walk through the cave completing quests |tip They look like red vases on the ground inside this cave.
.' Follow the path down
.talk 49400
..turnin 28707
..accept 28710
step
goto 48.1,40.6
.click Ancient Urns and get Starfall Relics as you walk through the cave completing quests |tip They look like red vases on the ground inside this cave.
.' Follow the path down |tip You will have to go up some ramps and then through a small passageway to get over to the balcony she's standing on.
.talk 49402
..turnin 28710
..accept 28718
step
goto 47.7,41.4
.' Start following the path up to the exit of the cave
.kill 10 Coldlurk Creeper##49346+ |q 28703/1
.kill 5 Coldlurk Burrower##49347+ |q 28703/2
.click Ancient Urn##10250
.get 5 Starfall Relic |q 28701/1
step
goto 45.8,41.0
.' Follow the path up
.talk 49407
..turnin 28703
step
goto 47.1,40.2 |n
.' Leave the cave |goto 47.1,40.2,0.5 |noway |c
step
goto 48.7,41.0
.talk 11079
..turnin 28701
step
goto 55.9,28.1
.talk 49396
..turnin 28718
..accept 28640
..accept 28828
step
goto 56.0,28.2
.talk 49537
..accept 28638
step
goto 55.9,28.3
.talk 49436
..accept 28637
step
goto 56.8,24.4
.click Chillwind Eggs##321
.get 40 Chillwind Egg |q 28828/1
step
goto 54.3,22.1
' |from Frostsaber##7431+, Frostsaber Stalker##7432+
.kill 15 Frostsaber |q 28640/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28640
..accept 28641
step
goto 47.3,22.3
' |from Frostsaber Huntress##7433+, Frostsaber Pride Watcher##7434+
.kill 15 Frostsaber Pride Watcher |q 28641/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28641
..accept 28742
step
goto 46.0,17.5
.kill Shy-Rotam##10737 |q 28742/1 |tip He walks around this area near this huge slanted rock.
step
ding 54
step
goto 51.0,30.9
.kill 15 Shardtooth Bear##7444+ |q 28637/1
.kill 15 Winterspring Owl##7455+ |q 28638/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28637
..accept 28719
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28638
..accept 28745
step
goto 55.5,35.3
.kill 15 Winterspring Screecher##7456+ |q 28745/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28745
..accept 28782
step
goto 52.4,33.4
.kill Hell-Hoot##50044 |q 28782/1 |tip He flies slowly around this area.
step
goto 52.3,40.4
.kill 15 Shardtooth Mauler##7443+ |q 28719/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28719
..accept 28639
step
goto 57.8,39.0 |n
.' Follow the path up |goto 57.8,39.0,0.5 |noway |c
step
goto 59.7,40.8
.kill Ursius##10806 |q 28639/1 |tip He's up the hill inside this small cave.
step
goto 56.0,28.2
.talk 49537
..turnin 28782
step
goto 55.9,28.1
.talk 49396
..turnin 28742
..turnin 28828
step
goto 55.9,28.3
.talk 49436
..turnin 28639
step
'Hearth to Everlook |goto 59.8,51.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 58.0,63.8
.talk 10929
..turnin 28847
..accept 28837
step
goto 55.9,66.5
.from Altered Beast##49161+
.get 5 Mana-Addled Brain |q 28837/1
step
goto 58.0,63.8
.talk 10929
..turnin 28837
..accept 28838
step
goto 57.1,75.4
.click Abandoned Research Samples##5743
.get Owlbeast Dreamcatcher |q 28838/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28838
..accept 28839
step
goto 61.9,74.7
.talk 50263
..accept 28829
step
goto 64.8,81.0
.click Owlbeast Moon-Totem##10289
.get Essence of the Moon-Totem |q 28839/3
step
goto 65.6,77.6
.click Owlbeast Life-Totem##10290
.get Essence of the Life-Totem |q 28839/2
step
goto 65.1,73.9
.click Owlbeast Claw-Totem##10288
.get Essence of the Claw-Totem |q 28839/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28839
..accept 28840
step
goto 64.7,75.9
' |from Berserk Owlbeast##7454+, Moontouched Owlbeast##7453+
.kill 12 Crazed Owlbeast |q 28829/1
step
goto 61.9,74.7
.talk 50263
..turnin 28829
..accept 28830
..accept 28831
step
ding 55
step
goto 57.2,78.1 |n
.' Follow the path down |goto 57.2,78.1,0.5 |noway |c
step
goto 63.2,86.0
.kill Frostilicus##50251 |q 28831/1
step
goto 61.3,85.6
.from Ice Avatar##50250+
.get 7 Winterwater |q 28840/1
step
goto 57.2,78.1 |n
.' Leave Frostwhisper Gorge |goto 57.2,78.1,0.5 |noway |c
step
goto 58.3,77.3
.kill 8 Frostmaul Tumbler##50258+ |q 28830/1
step
goto 61.9,74.7
.talk 50263
..turnin 28830
..turnin 28831
step
goto 58.0,63.8
.talk 10929
..turnin 28840
..accept 28841
..accept 28842
step
goto 55.0,64.0 |n
.' Enter the cave |goto 55.0,64.0,0.5 |noway |c
step
goto 52.2,63.9
.' Use your Empowered Dreamcatcher next to Arcane Tesseracts |use Empowered Dreamcatcher##66060 |tip They look like big blue and pink balls of electricity throughout the cave.
.' Close 5 Arcane Tesseracts |q 28841/1
step
goto 50.0,69.9
.kill Umbranse the Spiritspeaker##50325 |q 28842/1
step
'Use your Bluescale Sigil |use Bluescale Sigil##66061
.' Teleport back to Haleh |goto 58.0,63.7,0.5 |noway |c
step
goto 58.0,63.8
.talk 10929
..turnin 28841
..turnin 28842
step
goto 58.8,48.3
.talk 11139
.' Fly to Dawnrise Expedition, Tanaris |goto Tanaris,33.3,77.3,0.5 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Winterspring (54-58)\\Winterspring (54-58)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Blasted Lands (57-60)\\Blasted Lands (57-60)
startlevel 54.80
dynamic on
step
goto Winterspring,21.1,46.2
.talk 11556
..accept 28524
..accept 28522
step
goto 25.1,58.5
.talk 9298
..turnin 28524
..accept 28460
..accept 28464
step
goto 25.2,58.5
.talk 10307
..accept 28540
step
goto 28.9,58.6
.from Rimepelt##48765
.get Rimepelt's Heart |q 28540/1
step
goto 25.2,58.5
.talk 10307
..turnin 28540
step
goto 24.5,47.6
.click the Winterfall Cauldron##216
..turnin 28464
..accept 28467
step
ding 55
step
goto 24.4,48.9
' |from Winterfall Totemic##7441+, Winterfall Pathfinder##7442+, Winterfall Den Watcher##7440+
.kill 15 Winterfall Furbolg |q 28460/1
.get 10 Winterfall Spirit Beads |q 28522/1
.' Kill Winterfall mobs until you randomly accept this quest:
..accept 28656
step
goto 21.1,46.2
.talk 11556
..turnin 28522
step
goto 25.1,58.5
.talk 9298
..turnin 28460
..turnin 28467
..accept 28469
..accept 28530
step
goto 25.2,58.5
.talk 10307
..turnin 28656
step
goto 32.3,50.9
.from Boiling Springbubble##48768+, Scalding Springsurge##48767+
.get 7 Suspicious Green Sludge |q 28530/1
step
goto 28.2,54.7
.from Winterfall Runner##10916 |tip They are white furbolgs that walk and run along this road, so you may need to search for one of them.
.get Winterfall Crate |q 28469/1
step
goto 25.1,58.5
.talk 9298
..turnin 28469
..accept 28470
..turnin 28530
step
goto 36.9,55.6
.kill High Chief Winterfall##10738 |q 28470/1
.collect Crudely-Written Log##12842 |n
.' Click the Crudely-Written Log in your bags |use Crudely-Written Log##12842
..accept 28471
step
goto 25.1,58.5
.talk 9298
..turnin 28470
..turnin 28471
..accept 28472
step
goto 46.9,53.8
.talk 10920
..turnin 28472
..accept 28479
step
goto 50.7,54.9
.talk 48658
..turnin 28479
..accept 28513
step
goto 49.8,54.4
.from Anguished Highborne##7524+, Suffering Highborne##7523+
.' Release 8 Highborne Spirits |q 28513/1
step
goto 50.7,54.9
.talk 48658
..turnin 28513
..accept 28534
step
goto 50.8,55.0
.talk 48659
..turnin 28534
..accept 28518
step
goto 54.0,57.9
.from Archmage Maenius##48740
.get Memory of Zin-Malor |q 28518/1
step
goto 50.8,55.0
.talk 48659
..turnin 28518
..accept 28535
step
goto 50.7,55.1
.talk 48660
..turnin 28535
..accept 28519
step
goto 50.1,56.2
' |from Wretched Spirit##48664+, Wretched Spectre##48665+
.kill 7 Wretched Spirit |q 28519/1
step
goto 50.7,55.1
.talk 48660
..turnin 28519
..accept 28536
step
goto 46.9,53.8
.talk 10920
..turnin 28536
..accept 28537
step
goto 46.1,56.8 |n
.' Go to the road |goto 46.1,56.8,0.5 |noway |c
step
goto 49.7,60.8 |n
.' Follow the path up, avoiding the pink bubbles because they will damage you |goto 49.7,60.8,0.5 |noway |c
step
goto 50.7,63.6
.from Shade of the Spiritspeaker##48678
.get Shard of the Spiritspeaker |q 28537/1
step
goto 46.9,53.8
.talk 10920
..turnin 28537
..accept 28848
step
goto 58.8,48.3
.talk 11139
.fpath Everlook
step
goto 59.7,50.5
.talk 50366
..turnin 28848
step
goto 59.9,51.2
.talk 11118
.home Everlook
step
goto 59.9,49.2
.talk 11191
..accept 28609
step
goto 59.8,49.7
.talk 48965
..turnin 28609
..accept 28610
step
ding 56
step
goto 59.0,59.4
.from Frostshard Rumbler##48960+
.get 6 Prime Rubble Chunk |q 28610/1
step
goto 59.8,49.7
.talk 48965
..turnin 28610
..accept 28618
step
goto 59.9,49.2
.talk 11191
..turnin 28618
step
goto 59.8,49.1
.talk 11192
..accept 28624
step
goto 59.8,49.7
.talk 48965
..turnin 28624
..accept 28625
step
goto 54.7,51.1
.from Frostleaf Treant##48952+
.get 10 Fresh-Cut Frostwood |q 28625/1
.' You can find more Frostleaf Treants around [49.7,49.5]
step
goto 59.8,49.7
.talk 48965
..turnin 28625
..accept 28626
step
goto 59.8,49.1
.talk 11192
..turnin 28626
step
goto 59.8,49.3
.talk 11193
..accept 28627
step
goto 59.8,49.7
.talk 48965
..turnin 28627
..accept 28632
step
goto 59.3,49.8
.talk 10305
..accept 28629
..accept 28630
..accept 28631
step
goto 67.0,55.1
.click Echo Three##8171
..turnin 28630
step
goto 69.6,49.8
.' Click the icicle you are hanging from to get down
.from Icewhomp##49235
.get Icewhomp's Pristine Horns |q 28631/1
step
goto 71.4,53.7
.clicknpc Solid Ice##49233+
.get 7 Pure Glacier Ice |q 28632/1
step
goto 67.2,54.5 |n
.' Leave the cave |goto 67.2,54.5,0.5 |noway |c
step
goto 65.5,55.7
.from Ice Thistle Yeti##7458+, Ice Thistle Patriarch##7460+, Ice Thistle Matriarch##7459+
.get 10 Thick Yeti Fur |q 28629/1
step
'Hearth to Everlook |goto 59.8,51.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 59.3,49.8
.talk 10305
..turnin 28629
..turnin 28631
..accept 28722
step
goto 59.8,49.7
.talk 48965
..turnin 28632
..accept 28628
step
goto 59.8,49.3
.talk 11193
..turnin 28628
step
goto 60.1,50.9
.' Use Umi's Mechanical Yeti on Legacki |use Umi's Mechanical Yeti##12928
.' Scare Legacki |q 28722/1
step
goto 59.3,49.8
.talk 10305
..turnin 28722
step
goto 59.8,49.7
.talk 48965
..accept 28674
step
goto 59.7,50.5
.talk 50366
..accept 28847
step
goto 48.7,41.0
.talk 11079
..turnin 28674
..accept 28676
..accept 28701
step
goto 47.0,40.2 |n
.' Enter the Den |goto 47.0,40.2,0.5 |noway |c
step
goto 45.8,41.0
.' Follow the path down
.talk 49407
..turnin 28676
..accept 28703
..accept 28706
step
goto 45.6,41.6
.click Ancient Urn##10250+ |tip Get Starfall Relics as you walk through the cave completing quests.
.' Follow the path down
.talk 49399
..turnin 28706
..accept 28707
step
goto 46.3,42.6
.click Ancient Urn##10250+ |tip Get Starfall Relics as you walk through the cave completing quests.
.' Follow the path down
.talk 49400
..turnin 28707
..accept 28710
step
goto 48.1,40.6
.click Ancient Urn##10250+ |tip Get Starfall Relics as you walk through the cave completing quests.
.' Follow the path down |tip You will have to go up some ramps and then through a small passageway to get over to the balcony she's standing on.
.talk 49402
..turnin 28710
..accept 28718
step
goto 47.7,41.4
.' Start following the path up to the exit of the cave
.kill 10 Coldlurk Creeper##49346+ |q 28703/1
.kill 5 Coldlurk Burrower##49347+ |q 28703/2
.click Ancient Urn##10250+
.get 5 Starfall Relic |q 28701/1
step
goto 45.8,41.0
.' Follow the path up
.talk 49407
..turnin 28703
step
goto 47.1,40.2 |n
.' Leave the cave |goto 47.1,40.2,0.5 |noway |c
step
goto 48.7,41.0
.talk 11079
..turnin 28701
step
goto 55.9,28.1
.talk 49396
..turnin 28718
..accept 28640
..accept 28828
step
goto 56.0,28.2
.talk 49537
..accept 28638
step
goto 55.9,28.3
.talk 49436
..accept 28637
step
goto 56.8,24.4
.click Chillwind Egg##321+
.get 40 Chillwind Egg |q 28828/1
.' More Chillwind Eggs can be found around [58.5,20.5]
step
goto 54.3,22.1
' |from Frostsaber##7431+, Frostsaber Stalker##7432+
.kill 15 Frostsaber |q 28640/1
.' More Frostsaber mobs can be found between [50.6,19.5]
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28640
..accept 28641
step
goto 47.3,22.3
' |from Frostsaber Huntress##7433+, Frostsaber Pride Watcher##7434+
.kill 15 Frostsaber Pride Watcher |q 28641/1
.' More can be found around [45.2,21.4]
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28641
..accept 28742
step
ding 57
step
goto 46.0,17.5
.kill Shy-Rotam##10737 |q 28742/1 |tip He's a white tiger that walks around this area near this huge slanted rock.
step
goto 51.0,30.9
.kill 15 Shardtooth Bear##7444+ |q 28637/1
.kill 15 Winterspring Owl##7455+ |q 28638/1
.' Shardtooth Bears and Winterspring Owls can also be found at the below locations:
.' [54.1,29.3]
.' [56.3,30.7]
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28637
..accept 28719
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28638
..accept 28745
step
goto 55.5,35.3
.kill 15 Winterspring Screecher##7456+ |q 28745/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28745
..accept 28782
step
goto 52.4,33.4
.kill Hell-Hoot##50044 |q 28782/1 |tip He flies slowly around this area.
.' Hell-Hoot patrols up to [52.6,35.2]
step
goto 52.3,40.4
.kill 15 Shardtooth Mauler##7443+ |q 28719/1
.' More Shardtooth Maulers can be found around [56.6,40.0]
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28719
..accept 28639
step
goto 57.8,39.0 |n
.' Follow the path up |goto 57.8,39.0,0.5 |noway |c
step
goto 59.7,40.8
.kill Ursius##10806 |q 28639/1 |tip He's up the hill inside this small cave.
step
goto 56.0,28.2
.talk 49537
..turnin 28782
step
goto 55.9,28.1
.talk 49396
..turnin 28742
..turnin 28828
step
goto 55.9,28.3
.talk 49436
..turnin 28639
step
'Hearth to Everlook |goto 59.8,51.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 58.0,63.8
.talk 10929
..turnin 28847
..accept 28837
step
goto 55.9,66.5
.from Altered Beast##49161+
.get 5 Mana-Addled Brain |q 28837/1
.' More Altered Beasts can be found at [57.3,68.8]
step
goto 58.0,63.8
.talk 10929
..turnin 28837
..accept 28838
step
goto 57.1,75.4
.click the Abandoned Research Samples##5743
.get Owlbeast Dreamcatcher |q 28838/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28838
..accept 28839
step
goto 61.9,74.7
.talk 50263
..accept 28829
step
goto 64.8,81.0
.click the Owlbeast Moon-Totem##10289
.get Essence of the Moon-Totem |q 28839/3
step
goto 65.6,77.6
.click the Owlbeast Life-Totem##10290
.get Essence of the Life-Totem |q 28839/2
step
goto 65.1,73.9
.click the Owlbeast Claw-Totem##10288
.get Essence of the Claw-Totem |q 28839/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 28839
..accept 28840
step
goto 64.7,75.9
' |from Berserk Owlbeast##7454+, Moontouched Owlbeast##7453+
.kill 12 Crazed Owlbeast |q 28829/1
step
goto 61.9,74.7
.talk 50263
..turnin 28829
..accept 28830
..accept 28831
step
goto 57.2,78.1 |n
.' Follow the path down |goto 57.2,78.1,0.5 |noway |c
step
goto 63.2,86.0
.kill Frostilicus##50251 |q 28831/1
step
goto 61.3,85.6
.from Ice Avatar##50250+
.get 7 Winterwater |q 28840/1
step
goto 57.2,78.1 |n
.' Leave Frostwhisper Gorge |goto 57.2,78.1,0.5 |noway |c
step
goto 58.3,77.3
.kill 8 Frostmaul Tumbler##50258+ |q 28830/1
step
goto 61.9,74.7
.talk 50263
..turnin 28830
..turnin 28831
step
goto 58.0,63.8
.talk 10929
..turnin 28840
..accept 28841
..accept 28842
step
ding 58
step
goto 55.0,64.0 |n
.' Enter the cave |goto 55.0,64.0,0.5 |noway |c
step
goto 52.2,63.9
.' Use your Empowered Dreamcatcher next to Arcane Tesseracts |use Empowered Dreamcatcher##66060 |tip They look like big blue and pink balls of electricity throughout the cave.
.' Close 5 Arcane Tesseracts |q 28841/1
step
goto 50.0,69.9
.kill Umbranse the Spiritspeaker##50325 |q 28842/1
.' Use your Bluescale Sigil after you kill Umbranse the Spiritspeaker |use Bluescale Sigil##66061
.' Teleport back to Haleh |goto 58.0,63.7,0.5 |noway |c
step
goto 58.0,63.8
.talk 10929
..turnin 28841
..turnin 28842
step
'Hearth to Everlook |goto 59.8,51.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 59.9,51.2
.talk 11118
..accept 28858
step
goto 58.8,48.3
.talk 11139
.' Fly to Orgrimmar, Durotar |goto Orgrimmar,49.3,59.4,0.5 |noway |c
step
goto Orgrimmar,44.7,67.9 |n
.click the Portal to Blasted Lands##8948 |goto Blasted Lands |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Silithus (55-57)\\Silithus (55-57)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Un'Goro Crater (55-57)\\Un'Goro Crater (55-57)
startlevel 55.58
dynamic on
step
goto Silithus,54.9,36.0
.talk 15191
..accept 8280
step
goto 55.0,36.0
.' Click the Wanted Poster: Deathclasp |model 3053
..accept 8283 |tip You must kill an elite mob for this quest, so you may need a partner if you cannot solo it.  You can skip this quest if you can't solo it and can't find a partner to help.
step
goto 55.5,36.8
.talk 15174
.home Cenarion Hold
step
goto 55.4,36.3
.talk 15189
..accept 8277
step
goto 53.0,34.6
.talk 17081
..accept 9416
step
goto 53.2,35.1
.talk 15306
..accept 8318
step
goto 53.2,35.1
.talk 15270
..accept 8320
step
goto 45.4,41.3
.from Twilight Avenger##11880+, Twilight Geolord##11881+, Twilight Stonecaller##11882+
.get 10 Encrypted Twilight Text |q 8318/1
.collect 20 Encrypted Twilight Text##20404 |q 8323 |future |tip You need 10 extra Encrypted Twilight Text for a future quest.
.kill 10 Twilight Geolord##11881+ |q 8320/1
step
goto 46.2,34.8
.from Sand Skitterer##11738+
.get 8 Sand Skitterer Fang |q 8277/2
.from Stonelash Scorpid##11735+
.get 8 Stonelash Scorpid Stinger |q 8277/1
.kill 15 Dredge Striker##11740+ |q 8280/1
step
'Hearth to Cenarion Hold |goto 55.5,36.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 55.4,36.3
.talk 15189
..turnin 8277
..accept 8278
step
goto 54.9,36.0
.talk 15191
..turnin 8280
..accept 8281
step
goto 53.2,35.1
.talk 15306
..turnin 8318
step
goto 53.2,35.2
.talk 15270
..turnin 8320
..accept 8321
step
goto 70.2,16.1 |n
.' Enter the cave |goto 70.2,16.1,0.5 |noway |c
step
goto 73.1,16.5
.' Follow the path inside the cave
.from Vyral the Vile##15202
.get Vyral's Signet Ring |q 8321/1
step
goto 70.2,16.1 |n
.' Leave the cave |goto 70.2,16.1,0.5 |noway |c
step
goto 53.2,35.2
.talk 15270
..turnin 8321
step
goto 53.6,35.3
.talk 15183
..accept 8284
step
goto 31.0,13.6
.click Twilight Tablet Fragments##6419
.get 8 Twilight Tablet Fragment |q 8284/1
step
goto 53.6,35.3
.talk 15183
..turnin 8284
..accept 8285
step
goto 68.7,63.0
.talk 15194
..turnin 8285
..accept 8279
step
goto 53.0,53.1
.from Stonelash Pincer##11736+
.get 3 Stonelash Pincer Stinger |q 8278/2
step
goto 46.2,39.8
.from Twilight Keeper Havunth##11804 |tip He walks around this area in a purple robe, so you may need to search for him.
.get Twilight Lexicon - Chapter 3 |q 8279/3
step
goto 33.9,34.1
.from Twilight Keeper Mayna##15200 |tip She walks around this area carrying a book, so you may need to search for her.
.get Twilight Lexicon - Chapter 1 |q 8279/1
step
goto 44.9,48.7
.kill 20 Dredge Crusher##11741+ |q 8281/1
.' You can find more Dredge Crushers around [37.9,32.4]
step
ding 56
step
goto 54.5,62.9
.talk 17079
..turnin 9416
..accept 9422
step
goto 50.0,49.9
.click Silithyst Geyser##6862 |tip They look like small pink rocks with holes in the top of them.  They have smoke floating out of their tops, and they blow up a stream of orange steam occasionally.  You can find them all around Silithus.
.' Surround yourself in Silithyst Dust |havebuff Interface\Icons\Spell_Holiday_ToW_SpiceCloud |c |q 9422
.' They spawn in various locations, you find more at:
.' [53.2,41.6]
.' [57.1,47.2]
.' [60.0,41.1]
step
goto 54.9,63.4
.' Stand inside the big red-glowing metal machine
.' Deliver Silithyst |q 9422/1
step
goto 54.5,62.9
.talk 17079
..turnin 9422
step
goto 51.7,64.7
.from Stonelash Flayer##11737+
.get 3 Stonelash Flayer Stinger |q 8278/1
.from Rock Stalker##11739+
.get 3 Rock Stalker Fang |q 8278/3
step
goto 54.9,36.0
.talk 15191
..turnin 8281
step
goto 55.4,36.3
.talk 15189
..turnin 8278
step
goto 55.3,36.2
.talk 15190
..accept 8282
step
goto 53.2,32.5
.talk 15181
..accept 8304
step
goto 46.0,79.4
.talk 15171
..' Tell him you've heard he might have some information as to the whereabouts of Mistress Natalia Mar'alith
.' Question Frankal |q 8304/1
step
goto 46.4,79.1
.talk 15170
..' Tell him the Commander has sent you here to gather some information about his missing wife
.' Question Rutgar |q 8304/2
step
.' Click the Quest Complete Box under your minimap
..turnin 8304
..accept 8306
step
goto 47.4,81.1 |n
.' Follow the path up |goto 47.4,81.1,0.5 |noway |c
step
goto 49.2,81.6
.click Noggle's Satchel##323 |tip It looks like a tan bag sitting on the ground next to the wall.  Be careful of Deathclasp, the elite scorpion that patrols this small area.
.get Noggle's Satchel |q 8282/1
step
goto 49.5,81.3
.from Deathclasp##15196 |tip He's an elite scorpion that patrols this small area with his 2 guards.
.get Deathclasp's Pincer |q 8283/1 |tip Deathclasp is an elite mob, so you may need a partner if you cannot solo him.  You can skip this quest if you can't solo it and can't find a partner to help.
step
goto 24.8,77.3
.from Twilight Keeper Exeter##11803
.get Twilight Lexicon - Chapter 2 |q 8279/2
step
'Hearth to Cenarion Hold |goto 55.5,36.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 55.3,36.2
.talk 15190
..turnin 8282
step
goto 54.3,34.0 |n
.' Follow the path up |goto 54.3,34.0,0.5 |noway |c
step
goto 54.5,32.0
.talk 15182
..turnin 8283
step
goto 46.0,79.4
.talk 15171
..accept 8310
step
goto 46.4,79.1
.talk 15170
..accept 8309
step
goto 58.5,78.4 |n
.' Enter the hive |goto 58.5,78.4,0.5 |noway |c
step
goto 57.2,79.2 |n
.' Follow this path |goto 57.2,79.2,0.5 |noway |c
step
goto 56.4,83.0 |n
.' Follow this path |goto 56.4,83.0,0.5 |noway |c
step
goto 56.1,87.8 |n
.' Follow this path |goto 56.1,87.8,0.5 |noway |c
step
goto 55.6,90.6
.from Mistress Natalia Mar'alith##15215
.' Discover the Fate of Mistress Natalia Mar'alith |q 8306/1
step
goto 55.6,90.5
.click Hive'Regal Glyphed Crystal##6414
..' <Use the transcription device to gather a rubbing.>
.get Hive'Regal Rubbing |q 8309/1
step
goto 56.1,87.8 |n
.' Follow this path |goto 56.1,87.8,0.5 |noway |c
step
goto 56.4,83.0 |n
.' Follow this path |goto 56.4,83.0,0.5 |noway |c
step
goto 57.2,79.2 |n
.' Follow this path |goto 57.2,79.2,0.5 |noway |c
step
goto 58.5,78.4 |n
.' Leave the hive |goto 58.5,78.4,0.5 |noway |c
step
goto 59.3,74.8
.from Hive'Regal Ambusher##11730+, Hive'Regal Slavemaker##11733+, Hive'Regal Spitfire##11732+, Hive'Regal Hive Lord##11734+
.get Hive'Regal Silithid Brain |q 8310/1
.collect Brann Bronzebeard's Lost Letter##20461 |n
.click Brann Bronzebeard's Lost Letter |use Brann Bronzebeard's Lost Letter##20461
..accept 8308
step
goto 68.7,63.0
.talk 15194
..turnin 8279
..accept 8287
..accept 8323
step
goto 53.2,32.5
.talk 15181
..turnin 8306
..turnin 8287
step
goto 45.4,41.3
.from Twilight Avenger##11880+, Twilight Geolord##11881+, Twilight Stonecaller##11882+
.get 10 Encrypted Twilight Text |q 8323/1
step
goto 46.0,79.4
.talk 15171
..turnin 8310
step
ding 57
step
goto 46.4,79.1
.talk 15170
..turnin 8308
..turnin 8309
..accept 8314
step
goto 68.7,63.0
.talk 15194
..turnin 8323
step
'Hearth to Cenarion Hold |goto 55.5,36.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 53.6,35.3
.talk 15183
..turnin 8314
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Un'Goro Crater (55-57)\\Un'Goro Crater (55-57)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Blasted Lands (57-60)\\Blasted Lands (57-60)
startlevel 55.58
dynamic on
step
goto Tanaris,33.2,76.9
.talk 44374
..accept 24911
step
'Go northwest to Un'Goro Crater |goto Un'Goro Crater |noway |c
step
goto Un'Goro Crater,71.2,76.6
.talk 9619
..accept 24731
step
goto 70.6,76.2
.talk 38274
..accept 24719
step
goto 64.8,75.2
.click Fresh Threshadon Carcass##3191
.get Piece of Threshadon Carcass |q 24731/1
step
goto 64.8,75.2
.from Ravasaur##6505+, Ravasaur Runner##6506+
.get 5 White Ravasaur Claw |q 24719/1
step
goto 70.6,76.2
.talk 38274
..turnin 24719
..accept 24686
step
goto Un'Goro Crater,71.2,76.6
.talk 9619
..turnin 24731
..accept 24732
step
goto 67.3,73.0
.' Stand on the piles of purple eggs
.from Lar'korwi Mate##9683+
.get 2 Ravasaur Pheromone Gland |q 24732/1
.' You can find another pile of purple eggs at [60.9,72.2]
step
goto 72.8,59.2
.' Use Garl's Net next to Bloodpetal Seeds |use Garl's Net##50441 |tip They look like small spiked orange balls floating around underwater around this area.
.get 4 Un'Goro Lasher Seed |q 24686/1
|modelnpc Bloodpetal Seed##38202
step
goto 70.6,76.2
.talk 38274
..turnin 24686
..accept 24689
step
goto Un'Goro Crater,71.2,76.6
.talk 9619
..turnin 24732
..accept 24733
step
goto 56.0,64.2
.talk 10583
.fpath Marshal's Stand
step
goto 55.3,62.5
.talk 10302
..accept 24742
step
goto 55.1,62.2
.talk 9270
..turnin 24911
..accept 24740
step
goto 54.2,62.5
.talk 9117
..accept 24720
step
goto 55.0,60.6
.talk 38270
..accept 24697
step
'As you walk around Un'Goro Crater, click the colored crystals on the ground:
.' Get 7 Red Power Crystal
.' Get 7 Yellow Power Crystal
.' Get 7 Green Power Crystal
.' Get 7 Blue Power Crystal
.' Skip to the next step in the guide
step
goto 57.5,61.9
.' Use your Scraps of Rotting Meat on Diemetradons and Young Diemetradons |use Scraps of Rotting Meat##50430
.' When the dinosaurs start chasing you, lead them to [56.9,62.9]
.' Bait 4 Dinosaurs |q 24697/1
|modelnpc Diemetradon##9163
step
goto 55.0,60.6
.talk 38270
..turnin 24697
step
goto 57.5,61.9
.click Blue Power Crystal##2971 |tip They are on the ground all around this area.  You will probably need to search around for them.
.get 7 Blue Power Crystal |q 24720/4
step
goto 70.1,40.9
.' Stand on the rock
.' Use Torwa's Pouch |use Torwa's Pouch##11568
.collect Preserved Threshadon Meat##11569 |n
.collect Preserved Pheromone Mixture##11570 |n
.' Use your Preserved Threshadon Meat |use Preserved Threshadon Meat##11569
.' Use your Preserved Pheromone Mixture |use Preserved Pheromone Mixture##11570
.from Lar'korwi##9684
.get Lar'korwi's Head |q 24733/1
step
goto 68.5,36.5
.click Crate of Foodstuffs##336 |tip It looks like a box sitting on the ground under a white canopy.
..accept 24865
step
goto 76.4,48.3
.talk 38263
..turnin 24689
..accept 24687
step
goto 73.5,39.9
' |from Juvenile Bloodpetal##38213+
.kill 6 Pack of Juvenile Bloodpetals |q 24687/1
step
goto 76.4,48.3
.talk 38263
..turnin 24687
..accept 24855
step
goto 71.7,37.5
' |from Bloodpetal Thresher##6511+, Bloodpetal Flayer##6510+, Bloodpetal Lasher##6509+
.kill 11 Bloodpetal |q 24855/1
step
goto 76.4,48.3
.talk 38263
..turnin 24855
..accept 24721
step
goto 77.2,50.0
.click Eastern Crystal Pylon##3080
..' Examine the pylon.
.' Discover and Examine the Eastern Crystal Pylon |q 24721/1
step
goto 68.5,36.5
.click Green Power Crystal##2972 |tip They are on the ground all around this area.  You will probably need to search around for them.
.get 7 Green Power Crystal |q 24720/3
step
goto 71.3,76.6
.talk 9619
..turnin 24733
step
goto 55.1,62.2
.talk 9270
..turnin 24865
step
goto 54.2,62.5
.talk 9117
..turnin 24721
step
ding 56
step
goto 48.4,43.4
.' Run around the outskirts of the mountain
.' Use Krakle's Thermometer next to Fire Plume Ridge Hot Spots |use Krakle's Thermometer##12472
.' Find the hottest area of Fire Plume Ridge |q 24742/1
step
goto 52.3,42.6
.from Scorching Elemental##6520+, Living Blaze##6521+
.get 9 Un'Goro Ash |q 24740/1
step
goto 55.1,62.2
.talk 9270
..turnin 24740
..accept 24690
step
goto 55.4,62.5
.talk 10302
..turnin 24742
..accept 24794
step
goto 55.1,62.7
.talk 9997
..turnin 24794
..accept 24734
step
goto 54.7,55.9 |n
.' Follow the path up |goto 54.7,55.9,0.5 |noway |c
step
goto 53.1,51.9
.click Ringo's Sack##323
..turnin 24734
step
goto 49.4,49.3
.' Follow the path to the top of the mountain
.kill Blazerunner##9376 |q 24690/1
step
goto 52.0,49.8
.' Follow the path down the mountain and into the small cave
.talk 9999
..accept 24735
step
goto 54.9,62.1
.' Escort Ringo to this spot
.click Ringo to hit him when he stops walking and gets dizzy |tip You have to right-click him to hit him.
.' Use Spraggle's Canteen on Ringo to revive him ONLY if he passes out completely |use Spraggle's Canteen##11804
.' Escort Ringo to Marshal's Stand |q 24735/1
step
goto 55.1,62.2
.talk 9270
..turnin 24690
step
goto 55.0,62.2
.talk 9271
..accept 24692
step
goto 55.1,62.7
.talk 9997
..turnin 24735
step
goto 54.8,63.8
.talk 10977
..accept 24691
step
goto 50.6,78.4 |n
.' Follow the path down |goto 50.6,78.4,0.5 |noway |c
step
goto 49.1,82.8 |n
.' Follow the path west |goto 49.1,82.8,0.5 |noway |c
step
goto 46.7,83.3 |n
.' Follow the path south |goto 46.7,83.3,0.5 |noway |c
step
goto 46.7,86.9
.kill Gorishi Fledgling Colossus##38305 |q 24692/1 |tip Don't worry that it's an elite mob, it's easy to kill solo at this level.  Fight like you normally do, but pay attention for when the Fledgling Colossus starts casting Poison Explosion.  When you see it start to cast Poison Explosion, hide behind something for cover.
step
goto 46.7,83.3 |n
.' Follow the path east |goto 46.7,83.3,0.5 |noway |c
step
goto 49.1,82.8 |n
.' Follow the path north |goto 49.1,82.8,0.5 |noway |c
step
goto 50.6,78.4 |n
.' Leave the hive |goto 50.6,78.4,0.5 |noway |c
step
goto 52.5,72.8
.from Gorishi Worker##6552+, Gorishi Wasp##6551+, Gorishi Reaver##6553+, Gorishi Tunneler##6555+, Gorishi Stinger##6554+
.get 96 Silithid Leg |q 24691/1
step
goto 38.5,66.1
.click Research Equipment##36
..accept 24866
step
goto 40.6,63.0
.click Red Power Crystal##2973 |tip They are on the ground all around this area.  You will probably need to search for them.
.get 7 Red Power Crystal |q 24720/1
step
goto 54.8,63.8
.talk 10977
..turnin 24691
..accept 24693
step
goto 55.0,62.2
.talk 9271
..turnin 24692
..turnin 24866
step
goto 43.1,41.7
.talk 38275
..turnin 24693
step
goto 43.3,40.8
.talk 38276
..accept 24737
..accept 24700
step
goto 43.2,40.9
.talk 38277
..accept 24701
step
goto 43.4,41.3
.talk 9998
..accept 24736
step
goto 44.1,40.3
.talk 39175
.fpath Mossy Pile
step
goto 39.8,36.9
.from Frenzied Pterrordax##9167+
.get 35 Webbed Pterrordax Scale |q 24736/1
.click Yellow Power Crystal |tip They look like yellow glowing crystals on the ground all around this area.  You will probably need to search for them.
.get 7 Yellow Power Crystal |q 24720/2
step
goto 47.4,20.8
.from Tar Lord##6519+, Tar Lurker##6518+
.' Use Tara's Tar Scraper on their corpses |use Tara's Tar Scraper##50742
.get 8 Super Sticky Tar |q 24737/1
.click Tarblossom##390 |tip They are underwater in the tar pools.
.get 4 Tarblossom Blossom |q 24700/1
step
goto 46.1,13.5 |n
.' Follow the path up |goto 46.1,13.5,0.5 |noway |c
step
goto 43.6,9.5
.click Discarded Supplies##6606
.get 10 Discarded Supplies |q 24701/1
step
goto 43.3,40.8
.talk 38276
..turnin 24737
..accept 24699
..turnin 24700
step
goto 43.2,40.9
.talk 38277
..turnin 24701
step
goto 43.4,41.3
.talk 9998
..turnin 24736
step
goto 43.1,41.7
.talk 38275
..accept 24717
step
goto 43.5,40.9
.talk 9618
..accept 24714
step
goto 59.4,29.8
.from Gormashh##38307 |tip He roams around this area, so you may need to search for him.
.' Use Tara's Tar Scraper on Gormashh's corpse |use Tara's Tar Scraper##50746
.get Unbelievably Sticky Tar |q 24699/1
step
goto 63.8,19.7
.talk 9623
..turnin 24714
..accept 24715
step
goto 61.5,18.5
.click the Un'Goro Coconut |tip They look like a brown balls on the ground at the base of palm trees around this area.
.collect Un'Goro Coconut##50237 |q 24715
step
goto 64.1,20.0
.' Use your Un'Goro Coconut next to the Sturdy Rock |use Un'Goro Coconut##50237
.collect Cracked Un'Goro Coconut##50238 |n
.' Use your Cracked Un'Goro Coconut |use Cracked Un'Goro Coconut##50238
.get High Viscosity Coconut Milk |q 24715/1
step
goto 63.8,19.7
.talk 9623
..turnin 24715
..accept 24926
step
goto 64.0,16.4 |n
.' Enter the cave |goto 64.0,16.4,0.5 |noway |c
step
goto 65.0,16.8
.' Go to this spot
..accept 24718
step
goto 68.1,15.9
.from U'cha##9622
.get U'cha's Pelt |q 24718/1
step
'Inside and outside of this cave:
.from Un'Goro Gorilla##6514+
.get 2 Un'Goro Gorilla Pelt |q 24717/1
.from Un'Goro Stomper##6513+
.get 2 Un'Goro Stomper Pelt |q 24717/2
.from Un'Goro Thunderer##6516+
.get 2 Un'Goro Thunderer Pelt |q 24717/3
step
goto 43.5,40.9
.talk 9618
..turnin 24926
step
goto 43.1,41.7
.talk 38275
..turnin 24717
..turnin 24718
..accept 24722
step
goto 43.3,40.8
.talk 38276
..turnin 24699
step
goto 58.0,14.6 |n
.' Follow the path up |goto 58.0,14.6,0.5 |noway |c
step
goto 56.5,12.4
.click Northern Pylon##3080 |tip It looks like a stone statue with a blue crystal spinning on top of it.
..' Examine the pylon.
.' Discover and Examine the Northern Crystal Pylon |q 24722/1
step
ding 57
step
goto 44.1,40.3
.talk 39175
.' Fly to Marshal's Stand, Un'Goro Crater |goto 56.1,64.1,0.5 |noway |c
step
goto 54.2,62.5
.talk 9117
..turnin 24722
..turnin 24720
step
goto 55.0,60.6
.talk 38270
..accept 24698
step
goto 56.0,64.2
.talk 10583
.' Fly to Mossy Pile, Un'Goro Crater |goto 44.0,40.2,0.5 |noway |c
step
goto 31.1,51.7 |n
.' Follow the path up |goto 31.1,51.7,0.5 |noway |c
step
goto 31.9,50.3
.talk 9272
..turnin 24698
..accept 24730
step
goto 30.6,51.1
.talk 38237
..accept 24703
step
goto 30.6,51.1
.talk 38237
..' Tell him you're ready
.' Complete your Squire Training |q 24703/1
step
goto 30.6,51.1
.talk 38237
..turnin 24703
..accept 24704
..accept 24705
step
goto 36.4,59.1
.click "Damsel's" "Purse"##9251
.collect Blood Elf's Belongings##50288 |q 24705
step
goto 36.5,59.4
.talk 38238
.' Save the Damsel by the Shore |q 24705/1
step
goto 31.0,77.7
.from Elder Diemetradon##9164+
.click Dinosaur Bone##758
.get 8 Dinosaur Bone |q 24730/1
step
goto 24.2,51.3 |n
.' Follow the path up |goto 24.2,51.3,0.5 |noway |c
step
goto 23.8,50.0
.' Stand next to the Damsel in the Cliffs
.' Watch Maximillian of Northshire push the poor woman off the cliff to her doom
.' Save the Damsel in the Cliffs |q 24705/2
|modelnpc Damsel in the Cliffs##38239
step
goto 28.7,21.0
.' Stand next to the Damsel of the North |tip She's a goblin that walks up and down this path.
.' Watch Maximillian of Northshire murder her pet bird
.' Save the Damsel of the North |q 24705/3
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 24705
|modelnpc Damsel of the North##38240
step
goto 31.4,30.5
' |from Elder Diemetradon##9164+, Frenzied Pterrordax##9167+
.kill 15 "Dragon" |q 24704/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 24704
step
'Next to you:
.talk 38237
..accept 24706
step
goto 33.9,47.8
.' Stand next to Steaming Furies
.' Maximillian of Northshire will pray to them
.' Complete 2 Prayers |q 24706/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 24706
|modelnpc Steaming Fury##38254
step
goto 31.9,50.3
.talk 9272
..turnin 24730
..accept 24708
step
goto 30.6,51.1
.talk 38237
..accept 24707
.' Use the abilities on your hotbar on the Devilsaur Queen the kill her
' |from Devilsaur Queen##38708
.kill Un'Goro's Broodmother |q 24707/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 24707
step
goto 32.7,74.6
.' Use your Fossil-Finder 3000 |use Fossil-Finder 3000##50405
.click Suspicious Mound of Dirt##20
.get Enormous Dinosaur Talon |q 24708/1
step
goto 31.9,50.3
.talk 9272
..turnin 24708
..accept 24709
step
goto 37.6,81.4
.from Durrin Direshovel##38329 |tip He walks around this area on a raptor.
.get Durrin's Archaeological Findings |q 24709/1
step
goto 31.9,50.3
.talk 9272
..turnin 24709
..accept 24723
step
goto 24.2,51.2 |n
.' Follow the path up |goto 24.2,51.2,0.5 |noway |c
step
goto 23.5,50.0
.click Western Crystal Pylon##3080
..' Examine the pylon.
.' Discover and examine the Western Crystal Pylon |q 24723/1
step
goto 44.1,40.3
.talk 39175
.' Fly to Marshal's Stand, Un'Goro Crater |goto 56.1,64.1,0.5 |noway |c
step
goto 54.2,62.5
.talk 9117
..turnin 24723
step
goto 53.8,62.5
.clicknpc Un'Goro Examinant##38504
..accept 24694
step
goto 53.8,62.5
.clicknpc Un'Goro Examinant##38504
..' Tell it you're ready to go to The Shaper's Terrace
.' Teleport to The Shaper's Terrace |goto 79.7,45.9,0.5 |noway |c
step
goto 83.5,46.0
.talk 38502
..turnin 24694
..accept 24695
step
goto 83.5,45.3
.click Bloodpetal Observation Lever##295
.' Become a Bloodpetal |havebuff Interface\Icons\INV_Misc_Herb_Nightmarevine |q 24695
step
goto 66.8,30.6
.' Use the abilities on your hotbar
.from Bloodpetal Flayer##6510
.' Complete the Bloodpetal Observation |q 24695/1
step
goto 84.0,45.6
.click Pterrordax Observation Lever##295
.' Become a Pterrordax |havebuff Interface\Icons\INV_Misc_LeatherScrap_13 |q 24695
step
goto 37.8,33.5
.' Use the Pterrordash ability on your hotbar
.' Fly upward
.' Complete the Pterrordax Observation |q 24695/4
step
goto 84.0,46.4
.click Gorilla Observation Lever##295
.' Become a Gorilla |havebuff Interface\Icons\Ability_Hunter_Pet_Gorilla |q 24695
step
goto 63.2,17.0
.talk 6513
.talk 6514
.talk 6516 |tip They can only be found inside the cave.
..' Ask each type of gorilla what it can teach you
.' Complete the Gorilla Observation |q 24695/3
step
goto 83.5,46.7
.click Diemetradon Observation Lever##295
.' Become a Diemetradon |havebuff Interface\Icons\INV_Misc_MonsterScales_12 |q 24695
step
goto 54.3,64.5
.' Use your Bite ability on your hotbar on any Humanoid in the Marshal's Stand camp
..' If your hotbar doesn't refresh, bite is in the #2 slot and Bone Armor is in the #3 slot.
.' Bite 5 Humanoids
.' Complete the Diemetradon Observation |q 24695/2
step
goto 83.5,46.0
.talk 38502
..turnin 24695
step
goto 83.5,46.0
.talk 38502
..' Tell her you'd like to return to Marshal's Stand, please
.' Teleport to Marshal's Stand |goto 55.3,61.9,0.5 |noway |c
step
'Hearth to Everlook |goto Winterspring,59.9,51.2,0.5 |use Hearthstone##6948 |noway |c
step
goto Winterspring 59.9,51.2
.talk 11118
..accept 28858
step
goto 58.8,48.3
.talk 11139
.' Fly to Orgrimmar, Durotar |goto Orgrimmar,49.3,59.4,0.5 |noway |c
step
goto Orgrimmar 44.7,67.9 |n
.click the Portal to Blasted Lands |goto Blasted Lands |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Outland 60-70\\Hellfire Peninsula (60-62)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Outland 60-70\\Zangarmarsh (62-64)
startlevel 60.00
dynamic on
step
goto Blasted Lands 54.45,50.52
.talk 19254
..accept 9407
step
.' Go into the big green portal to Outland |goto Hellfire Peninsula
step
goto Hellfire Peninsula 87.4,49.8
.talk 19253
..turnin 9407
..accept 10120
step
goto 87.3,48.1
.talk 18930
..turnin 10120
..accept 10289
step
|fly Thrallmar
step
goto 55.9,36.8
.talk 19255
..turnin 10289
..accept 10291
step
goto 55,36
.talk 3230
..turnin 10291
..accept 10121
step
goto 55.1,36.4
.talk 21256
..accept 10450
step
goto 55.2,38.8
.talk 21283
..accept 10086
step
goto 56.6,37.6
.talk 16602
.home Thrallmar
step
goto 58,41.3
.talk 19256
..turnin 10121
..accept 10123
step
goto 60.8,35.9
.kill 1 Dreadcaller##19434 |q 10123/1
.kill 4 Flamewaker Imp##19136+ |q 10123/2
.kill 6 Infernal Warbringer##19261+ |q 10123/3
step
goto 58,41.3
.talk 19256
..turnin 10123
..accept 10124
step
goto 65.9,43.6
.talk 19273
..turnin 10124
..accept 10208
step
goto 70.8,45.4
.from Doomwhisperer##18981+, Wrathguard##18975+, Fel Handler##19190+, Netherhound##16950+
.collect 4 Demonic Rune Stone##28513 |q 10208 |n
.' Stand inside Portal Xilus
.click Portal Xilus##7022
.' Disrupt Port Xilus |q 10208/1
step
goto 74,38.7
.from Doomwhisperer##18981+, Wrathguard##18975+, Fel Handler##19190+, Netherhound##16950+
.collect 4 Demonic Rune Stone##28513 |q 10208 |n
.' Stand inside Portal Kruul
.click Portal Kruul##7022
.' Disrupt Port Kruul |q 10208/2
step
goto 65.9,43.6
.talk 19273
..turnin 10208
..accept 10129
step
goto 66.1,43.7
.talk 19401
.' Take the flight
.click the bomb in your bags, bomb Gateway Shaadraz |use Seaforium PU-36 Explosive Nether Modulator##28038 |q 10129/2
.click the bomb in your bags, bomb Gateway Murketh |use Seaforium PU-36 Explosive Nether Modulator##28038 |q 10129/1 |tip They look like big machines with giant green crystals floating above them.
step
goto 65.9,43.6
.talk 19273
..turnin 10129
..accept 10162
..accept 10388
step
goto 66.1,43.7
.talk 19401
.' Fly to the Abyssal Shelf
.' Use the bomb in your bags to bomb the mobs |use Area 52 Special##28132
.' Destroy 5 Fel Cannons |q 10162/3
.kill 5 Mo'arg Overseer##19397+ |q 10162/2
.kill 20 Gan'arg Peon##19398+ |q 10162/1 |tip If you don't complete this in the first run, you can fly again until it is done.
step
goto 65.9,43.6
.talk 19273
..turnin 10162
step
goto 55.2,39.1
.talk 16577
..accept 9498 |only !BloodElf
..accept 9499 |only BloodElf
step
goto 55,36
.talk 3230
..turnin 10388
..accept 10390
..accept 9400
step
goto 64.4,31.9
.kill 10 Gan'arg Servant##16947+ |q 10390/1
.from Razorsaw##20798
.get Head of Forgefiend Razorsaw |q 10390/2
.collect the Burning Legion Missive##29590 |n
.click the Burning Legion Missive |use Burning Legion Missive##29590
..accept 10393
step
goto 55,36
.talk 3230
..turnin 10390
..accept 10391
step
goto 55.1,36
.talk 21175
..turnin 10393
step
goto 57.5,31.2
.kill 3 Fel Cannon MKI##22461+ |q 10391/1
step
goto 55,36
.talk 3230
..turnin 10391
..accept 10392
step
goto 52.8,26.4
.kill Warbringer Arix'Amal##19298 |q 10392/1
.get Burning Legion Gate Key |q 10392/3
step
goto 53.1,27.6
.' Go inside the portal
.click the floating thing inside the portal
.' Close the Burning Legion Gate |q 10392/2 |tip You might have to stand right underneath it and zoom in your view to be able to click the floating glyph inside the portal.
step
goto 55,36
.talk 3230
..turnin 10392
step
goto 55.1,36
.talk 21175
..accept 10389
step
goto 56.6,47.1
.click Salvageable Metal##6999
..get 8 Salvaged Metal |q 10086/1
.click Salvageable Wood##6481
..get 8 Salvaged Wood |q 10086/2
.from Bonechewer Evoker##19701+, Bonechewer Mutant##16876+, Bonechewer Scavenger##18952+, Bonechewer Raider##16925+
..get 12 Bonechewer Blood |q 10450/1
step
goto 55.2,38.8
.talk 21283
..turnin 10086
..accept 10087
step
goto 55.1,36.4
.talk 21256
..turnin 10450
..accept 10449
step
goto 66.2,42
.talk 21257
..turnin 10449
..accept 10242
step
goto 66.1,43.7
.talk 19401
.' Fly to Spinebreaker Post |goto Hellfire Peninsula,61.4,81.4,1 |noway |c
step
goto 61.7,81.2
.talk 19558
.fpath Spinebreaker Post
step
goto 61.9,81.5
.talk 19683
..accept 10278
step
goto 61.8,81.7
.talk 19682
..accept 10220
step
goto 61.1,81.8
.talk 21279
..turnin 10242
..accept 10538
step
goto 60.9,81.7
.talk 16858
..accept 9345
step
goto 61.2,80.6
.click Wanted Poster##4371
..accept 10809
step
goto 59.5,66.3
.click Hellfire Spineleaf##6807
.get 12 Hellfire Spineleaf |q 9345/1
step
goto 58,79
.kill 12 Unyielding Footman##16904+ |q 10220/1
.kill 8 Unyielding Knight##16906+ |q 10220/2
.kill 6 Unyielding Sorcerer##16905+ |q 10220/3
.collect A Mysterious Tome##28552 |n
.click the Mysterious Tome |use A Mysterious Tome##28552
..accept 10229
step
goto 60.9,81.7
.talk 16858
..turnin 9345
..accept 10213
step
goto 61.8,81.7
.talk 19736
..turnin 10229
..accept 10230
.talk 19682
..turnin 10220
step
goto 54.7,83.7
.from Lieutenant Commander Thalvos##16978
.get Unyielding Battle Horn |q 10230/1
step
goto 61.8,81.7
.talk 19736
..turnin 10230
..accept 10250
step
goto 63.5,77.6
.click the Unyielding Battle Horn in your bags next to the white flag |use Unyielding Battle Horn##28651
.kill Urtrak##19862 |q 10250/1
step
goto 61.8,81.7
.talk 19736
..turnin 10250
..accept 10258
step
goto 56.9,77.4
.talk 19937
..turnin 10258
step
goto 64.6,72.7
.from Bleeding Hollow Tormentor##19424+, Bleeding Hollow Necrolyte##19422+, Bleeding Hollow Grunt##16871+, Bleeding Hollow Peon##16907+, Bleeding Hollow Dark Shaman##16873+
.collect 12 Bleeding Hollow Blood##30425 |q 10538
step
goto 65.2,71.2
.click Cursed Cauldron##7271
.' Each time you click the cauldron, scarabs will run out.
.' Run away and stand away from the cauldron until the scarabs disappear.
.get 12 Boiled Blood |q 10538/1
step
goto 68.4,73.6
.from Worg Master Kruush##19442 |tip He's standing in the stables.
.get Worg Master's Head |q 10809/1
step
goto 61.2,81.3
.talk 22107
..turnin 10809
..accept 10792
step
goto 61.1,81.8
.talk 21279
..turnin 10538
..accept 10835
step
goto 61.7,81.9
.talk 22231
..accept 10813
step
goto 66.4,74
.' Use Zezzak's Shard on an Eye of Grillok |use Zezzak's Shard##31463 |tip It has to channel for 3 seconds and turn your character green.
.' Absorb an Eye of Grillok |havebuff Interface\Icons\Spell_Nature_ElementalShields |q 10813
|modelnpc Eye of Grillok##19440
step
goto 61.7,81.9
.' Stand next to the cauldron
.' Return the Eye of Grillok |q 10813/1
step
goto 61.7,81.9
.talk 22231
..turnin 10813
..accept 10834
step
ding 61
step
goto 66.6,71.4
.' Go inside the cave
.from Grillok "Darkeye"##19457
.get Grillok's Eyepatch |q 10834/1
step
goto 68.7,69.8
.from Bleeding Hollow Peon##16907+
.collect 4 Bleeding Hollow Torch##31347 |q 10792 |n
.click the torches in your bags next to the forge |use Bleeding Hollow Torch##31347
.collect 4 Burning Bleeding Hollow Torch##31346 |q 10792
step
goto 69.5,70.2
.' Stand near the Eastern Hovel
.click a Burning Bleeding Hollow Torch |use Burning Bleeding Hollow Torch##31346 |n
.' Burn the Eastern Hovel |q 10792/2
step
goto 68.6,72.9
.' Stand near the Stable
.click a Burning Bleeding Hollow Torch in your bags |use Burning Bleeding Hollow Torch##31346 |n
.' Burn the Stable |q 10792/4
step
goto 67.6,75.5
.' Stand near the Western Hovel
.click a Burning Bleeding Hollow Torch in your bags |use Burning Bleeding Hollow Torch##31346 |n
.' Burn the Western Hovel |q 10792/3
step
goto 68.8,76.4
.' Stand near the Barracks
.click a Burning Bleeding Hollow Torch in your bags |use Burning Bleeding Hollow Torch##31346
.' Burn the Barracks |q 10792/1
step
goto 61.2,81.3
.talk 22107
..turnin 10792
step
goto 61.7,81.9
.talk 22231
..turnin 10834
step
goto 49.2,74.8
.talk 19367
..turnin 10213
..accept 10161
.talk 19344
..accept 9349
step
goto 58.1,71.3
.click Zeppelin Debris##7000 |tip They look like pieces of metal and wood around this whole area.
.get 30 Zeppelin Debris |q 10161/1
step
goto 49.2,74.8
.talk 19367
..turnin 10161
..accept 9351
step
goto 49.5,81.8
.from Uncontrolled Voidwalker##16975+, Rogue Voidwalker##16974+
.get 10 Condensed Voidwalker Essence |q 9351/1
step
goto 46.8,83.1
.' Use your Unstable Warp Rift Generator under the big black ball of lightning |use Unstable Warp Rift Generator##29027
.from Unstable Voidwalker##20145+
.get 3 Warp Nether |q 10278/1
step
goto 41.2,84.4
.click Ravager Egg##1867
.from Razorfang Ravagers##16933+
.get 12 Ravager Egg |q 9349/1
step
goto 49.2,74.8
.talk 19367
..turnin 9351
.talk 19344
..turnin 9349
..accept 9361
step
goto 50.2,74.8
.from Hulking Helboar##16880+, Starving Helboar##16879+, Deranged Helboar##16863+
.collect Tainted Helboar Meat##23270 |q 9361 |n
.' Use your Purification Mixture on the Tainted Helboar Meat |use Purification Mixture##23268
.get 8 Purified Helboar Meat |q 9361/1 |tip The meat won't become purified every time, it can become toxic as well.
step
goto 47.8,65.8
.from Crust Burster##16844+ |tip They are under the jumping piles of rocks, they come up to fight when you get close.
.collect Eroded Leather Case##23338 |n
.click the Eroded Leather Case |use Eroded Leather Case##23338
..accept 9373
step
goto 49.2,74.8
.talk 19344
..turnin 9361
..accept 9356
step
goto 62.6,67.3
.from Bonestripper Buzzard##16972+
.get 12 Plump Buzzard Wing |q 9356/1
step
goto 49.2,74.8
.talk 19344
..turnin 9356
step
goto 61.9,81.5
.talk 19683
..turnin 10278
..accept 10294
step
goto 75.4,66.3
.from Collapsing Voidwalker##17014+, Vacillating Voidcaller##19527+
.get 40 Void Ridge Soul Shard |q 10294/1
step
goto 61.9,81.5
.talk 19683
..turnin 10294
..accept 10295
step
goto 81.1,78.9
.' Stand next to the 2 big pink crystals
.click the Warp Rift Generator in  your bags |use Warp Rift Generator##29226
.from Void Baron Galaxis##16939
.get Galaxis Soul Shard |q 10295/1
step
goto 61.9,81.5
.talk 19683
..turnin 10295
step
'Hearth to Thrallmar |goto Hellfire Peninsula,56.7,37.5,0.5 |use hearthstone##6948 |noway |c
step
goto 52.3,36.5
.talk 16588
..turnin 10835
..accept 10864
step
goto 51.4,30.6
.talk 16915
..accept 10236
step
goto 48.9,35.4
.click Shredder Parts##335
.get 6 Shredder Spare Parts |q 10236/1
step
goto 45.9,39.8
.from Shattered Hand Berserker##16878+, Shattered Hand Guard##19414+
.' Reap 20 Shattered Hand Souls |q 10864/1
step
goto 51.4,30.6
.talk 16915
..turnin 10236
..accept 10238
step
goto 52.3,36.5
.talk 16588
..turnin 10864
..accept 10838
step
goto 45.1,41.0
.click Manni's Cage##1787
.' Save Manni |q 10238/1
step
goto 46.5,45.2
.click Moh's Cage##1787
.' Save Moh |q 10238/2
step
goto 47.5,46.6
.click Jakk's Cage##1787
.' Save Jakk |q 10238/3
step
goto 45.5,47.2
.' Use your Demoniac Scryer in your bags at this spot |use Demoniac Scryer##31606
.' Defend the Demoniac Scryer until a bunch of purple things start swirling around it.
.talk 22258
.get Demoniac Scryer Reading |q 10838/1
step
'Hearth to Thrallmar |goto Hellfire Peninsula,56.7,37.5,0.5 |use hearthstone##6948 |noway |c
step
goto 52.3,36.5
.talk 16588
..turnin 10838
..accept 10875
step
goto 55,36
.talk 3230
..turnin 10875
step
goto 51.4,30.6
.talk 16915
..turnin 10238
..accept 10629
step
goto 51.4,30.6
.' Use the Felhound Whistle while standing next to Forman Razelcraz |use Felhound Whistle##30803
|modelnpc Foreman Razelcraz##16915
step
goto 49.9,29.3
.from Deranged Helboar##16863+
.' The Fel Guard Hound will eat the corpses and poop
.click Felhound Poo##3675
.get Shredder Keys |q 10629/1
step
goto 51.4,30.6
.talk 16915
..turnin 10629
..accept 10630
step
goto 51.6,31.7 |n
.' Enter the mine |goto Hellfire Peninsula,51.6,31.7,0.5 |noway |c
step
'Follow this mine shaft |goto 54.4,31.4
.kill Urga'zz##18976 |q 10630/1 |tip All the way in the back of the mine.
step
'Leave the mine |goto Hellfire Peninsula,51.6,31.7,0.5 |noway |c
step
goto 51.4,30.6
.talk 16915
..turnin 10630
step
goto 61.1,52.3
.click the Flaming Torch in your bags near the huge tank |use Flaming Torch##27479
.' Burn the Eastern Cannon |q 10087/1
step
goto 55,54
.click the Flaming Torch in your bags near the huge tank |use Flaming Torch##27479
.' Burn the Western Cannon |q 10087/2
step
goto 55.2,38.8
.talk 21283
..turnin 10087
step
goto 33.6,43.5
.' Go to this spot
.' Find Krun Spinebreaker |q 9400/1
|modelnpc Krun Spinebreaker##17405
step
goto 33.6,43.5
.clicknpc Fel Orc Corpse##17062
..turnin 9400
..accept 9401
step
goto 26.4,60.3
.talk 16793
..accept 9374
step
goto 26.8,59.7
.talk 16794
..accept 9387
step
goto 27,59.5
.talk 16791
..accept 9366
step
goto 27.1,59.8
.talk 16792
..accept 9396
step
goto 27.7,60.3
.talk 16790
..accept 9381
..accept 9397
..accept 10442
step
goto 27.8,60
.talk 18942
..fpath Falcon Watch
step
goto 28.5,60.2
.' Go inside the building next to the flight path
.click Orb of Translocation##7161
.talk 16789
..turnin 9498|only !BloodElf
..turnin 9499|only BloodElf
..accept 9340
..accept 10103
step
.click Orb of Translocation##7161
.' Skip to the next step
step
goto 30.2,54
.from Bonestripper Vulture##16973+
.get 8 Bonestripper Tail Feather |q 9381/1
.' You can find more Bonestripper Vultures around [23.8,47.3]
step
goto 40.1,37.2
.click Arelion's Knapsack##7144
.' Get Arelion's Knapsack
.click Arelion's Knapsack in your bags |use Arelion's Knapsack##31955
.' Get Arelion's Journal |q 9374/1
step
goto 39.4,36.1
.kill 10 Terrorfiend##16951+ |q 10389/1
.get 6 Felblood Sample |q 9366/1
step
goto 35.5,57.4
.kill 8 Stonescythe Whelp##16927+ |q 9340/1
.kill 3 Stonescythe Alpha##16929+ |q 9340/2
step
goto 26.4,60.3
.talk 16793
..turnin 9374
..accept 10286
step
ding 62
step
goto 27,59.5
.talk 16791
..turnin 9366
..accept 9370
step
goto 27.7,60.3
.talk 16790
..turnin 9381
step
goto 28.5,60.2
.' Go inside the building next to the flight path
.click Orb of Translocation##7161
.talk 16789
..turnin 9340
..accept 9391
step
.click Orb of Translocation##7161
.' Skip to the next step.
step
goto 39,40.3
.' Stand on the big stone block
.click the Signaling Gem in your bags |use Signaling Gem##23358
.' They come walking from the west
.kill Draenei Anchorite##16994 |q 9370/1
step
goto 18.1,49.9
.' He walks along the road from Falcon Watch to Zangarmarsh. Some searching may be required.
.talk 20159
.' Fight him until he's almost dead
..turnin 10286
..accept 10287
step
goto 15.7,52
.talk 16991
..turnin 9373
..turnin 10442
..accept 9372
.talk 16888
..accept 10159
.talk 16885
..accept 9912
step
goto 24.9,54.3
.from Hulking Helboar##16880+
.get 6 Helboar Blood Sample |q 9372/1
step
goto 26.4,60.3
.talk 16793
..turnin 10287
..accept 9472
step
goto 27,59.5
.talk 16791
..turnin 9370
step
goto 30,60.5
.click the Western Beacon##759
.' Light the Western Beacon |q 9391/1
step
goto 34,60
.click the Central Beacon##759
.' Light the Central Beacon |q 9391/2
step
goto 36.1,65.4
.click the Southern Beacon##759
.' Light the Southern Beacon |q 9391/3
step
goto 28.5,60.2
.' Go inside the building next to the flight path
.click Orb of Translocation##7161
.talk 16789
..turnin 9391
step
.click Orb of Translocation##7161
.' Skip to the next step.
step
goto 15.7,52
.talk 16991
..turnin 9372
..accept 10255
step
goto 25,54
.' Use the Cenarion Antidote on a Hulking Helboar |use Cenarion Antidote##23337
.from Dreadtusk##16992
.' Administer the Antidote |q 10255/1
step
goto 15.7,52
.talk 16991
..turnin 10255
step
goto 12.3,49.9
.kill 8 Thornfang Ravager##19349+ |q 10159/1
.kill 8 Thornfang Venomspitter##19350+ |q 10159/2
step
 goto Zangarmarsh 82.9,65.4 |n
.' Go west to Zangarmash |goto Zangarmarsh
step
goto Zangarmarsh,78.5,62.9
.talk 18907
.buy 1 Cenarion Spirits##29112 |q 9483 |future
step
goto Hellfire Peninsula 4.7,50.9 |n
.' Go east to Hellfire Peninsula |goto Hellfire Peninsula
step
goto Hellfire Peninsula,15.7,52
.talk 16888
..turnin 10159
step
goto 15.1,55.7
.from Illidari Taskmaster##17058+
.get 5 Demonic Essence |q 9387/1
step
goto 15.6,58.8
.talk 20678
..accept 10403
step
goto 16.3,65.1
.talk 19361
..turnin 10403
..accept 10367
step
goto 14.3,63.5
.click Metal Coffer##10 |tip In the back of the big red hut, on the floor.
.get Sha'naar Key |q 10367/1
step
goto 16.3,65.1
.talk 19361
..turnin 10367
..accept 10368
step
goto 15.6,58.8
.talk 20678
.' Free Akoru the Firecaller |q 10368/2
step
goto 13,58.4
.talk 20679
.' Free Aylaan the Waterwaker |q 10368/3
step
goto 13.1,61
.talk 20677
.' Free Morod the Windstirrer |q 10368/1
step
goto 16.3,65.1
.talk 19361
..turnin 10368
..accept 10369
step
goto 14.4,62.3
.' Wait until Arzeth the Merciless is up on top of the stairs by himself.
.' Use the Staff of the Dreghood Elders on Arzeth the Merciless |use Staff of the Dreghood Elders##29513
.kill Arzeth the Powerless##20680 |q 10369/1
step
goto 16.3,65.1
.talk 19361
..turnin 10369
step
goto 26.8,59.7
.talk 16794
..turnin 9387
step
goto 27.1,62.1
.talk 17226
..turnin 9483 |n
.' Follow Viera Sunwhisper
.' When she stops, use Carinda's Scroll of Retribution on her |q 9472/1 |use Carinda's Scroll of Retribution##23693
step
goto 26.4,60.3
.talk 16793
..turnin 9472
step
goto 25.6,70.3
.from Haal'eshi Windwalker##16966+, Haal'eshi Talonguard##16967+, Avruu##17084 |tip You can find them all around this area, and in the canyon also.
.get 4 Haal'eshi Scroll |q 9396/1
step
goto 25.4,71.6
.click Kaliri Nest##7143
.' When a female Kaliri hatchling spawns, use your Empty Birdcage on it |use Empty Birdcage##23485
.' Cage the Female Kaliri Hatchling |q 9397/1
step
goto 26.2,77.1|n
.' The path up to Avruu starts here |goto Hellfire Peninsula,26.1,77.1,0.3 |noway |c
step
goto 25.7,75.1
.from Avruu##17084 |tip Up the path, and over the bridge, to the left.
.collect Avruu's Orb##23580 |n
.click Avruu's Orb in your bags |use Avruu's Orb##23580
..accept 9418
step
goto 29,81.5
.click the Haal'eshi Altar##6964
.' Fight Aeranas until he's almost dead
.talk 17085
..turnin 9418
step
goto 24.6,76
.talk 16993
..accept 9375
.goal Escort Wounded Blood Elf Pilgrim to Falcon Watch |q 9375/1
step
goto 27.2,61.9
.talk 17015
..turnin 9375
..accept 9376
step
goto 27.1,59.8
.talk 16792
..turnin 9396
step
goto 27.7,60.3
.talk 16790
..turnin 9397
step
goto 27.8,60.0
.talk 18942
.' Fly to Thrallmar |goto 56.3,36.4,0.5 |noway |c
step
goto 55.1,36
.talk 21175
..turnin 10389
step
goto 55,36
.talk 3230
..turnin 9401
..accept 9405
step
goto 54.2,37.9
.talk 16574
..turnin 9405
..accept 9410
step
goto 33.6,43.5
.' Use your Ancestral Spirit Wolf Totem next to the Fel Orc Corpse |use Ancestral Spirit Wolf Totem##23669 |tip It's a corpse laying halfway up the hill.
.' Follow the spirit wolf |tip Stay close to the wolf and follow it until it stops, or you will not be able to turn in the quest.
.' Follow the wolf to this spot |goto 32,27.8,0.5 |c
|modelnpc Fel Orc Corpse##17062
|modelnpc Ancestral Spirit Wolf##17077
step
goto 32,27.8
.talk 16845
..turnin 9410
..accept 9406
step
'Hearth to Thrallmar |goto Hellfire Peninsula,56.7,37.5,0.5 |use hearthstone##6948 |noway |c
step
goto 55,36
.talk 3230
..turnin 9406
step
|fly Falcon Watch
step
goto 22.1,68.3
.click Torn Pilgrim's Pack##323
.get Torn Pilgrim's Pack |q 9376/1
step
goto 27.2,61.9
.talk 17015
..turnin 9376
step
goto Zangarmarsh 82.9,65.4 |n
'Go northwest to Zangarmarsh |goto Zangarmarsh
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Outland 60-70\\Zangarmarsh (62-64)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Outland 60-70\\Terokkar Forest (64-66)
startlevel 62.90
dynamic on
step
goto Zangarmarsh 80.4,64.2
.talk 17909
..accept 9802
.talk 17956
..accept 9747
step
goto 79.1,65.3
.talk 17858
..accept 9728
step
goto 78.5,63.1
.talk 17834
..accept 9895
step
goto 78.4,62
.talk 17841
..turnin 9912
..accept 9716
step
goto 80.1,73.3
.from Marshfang Ripper##18130+, Young Sporebat##20387+, Umbraglow Stinger##18132+
.get 10 Unidentified Plant Parts |q 9802/1
step
goto 81,72.2
.kill Boglash##18281 |q 9895/1 |tip Despite his elite status, he's pretty easy to kill. He walks around in the water, so some searching may be necessary.
step
goto 82.6,72.3
.from Boglash##18281, Fen Strider##18134+ |tip It's easier if you just run around in the water all around the east part of Zangarmarsh.
.collect 6 Fertile Spores##24449 |q 9806 |future
step
goto 80.4,64.2
.talk 17909
..turnin 9802
step
goto 78.5,63.1
.talk 17834
..turnin 9895
step
goto 84.8,84.4
.kill 6 Umbrafen Oracle##18077+ |q 9747/2
.kill 8 Umbrafen Seer##18079+ |q 9747/3
.kill 6 Umbrafen Witchdoctor##20115+ |q 9747/4
step
goto 85.3,90.9
.kill Kataru##18080 |q 9747/1 |tip In the big building, all the way at the top.
step
ding 63
step
goto 83.4,85.5
.talk 17969
..accept 9752
.' Escort Kayra Longmane to safety |q 9752/1
step
goto 80.4,64.2
.talk 17956
..turnin 9747
..accept 9788
.talk 17909
..accept 10096
step
goto 80.4,64.7
.talk 18070
..accept 9894
step
goto 78.4,62
.talk 17841
..turnin 9752
step
goto 75.7,90.2
.kill 10 Marsh Lurker##18136+ |q 10096/2
.kill 10 Marsh Dredger##18137+ |q 10096/1
step
'Go southwest inside the cave to [70.5,97.9]
.click Ikeyen's Belongings##318
.get Ikeyen's Belongings |q 9788/1
step
'Go northeast inside the cave to [72.5,94]
.kill Lord Klaq##18282 |q 9894/1 |tip On the bottom level of the cave, in the small round room all the way in the back.
step
goto 70.9,82.1
'Stand here to Investigate Umbrafen Lake |q 9716/1
.from Steam Pump Overseer##18340+, Darkcrest Slaver##19946+, Darkcrest Sorceress##19947+
.get 30 Naga Claws |q 9728/1
step
goto 80.4,64.7
.talk 18070
..turnin 9894
step
goto 80.4,64.2
.talk 17956
..turnin 9788
.talk 17909
..turnin 10096
.' Turn in any stacks of 10 Unidentified Plant Parts you have
.' If you found an Uncatalogued Species, turn that in also
step
goto 79.1,65.3
.talk 17858
..turnin 9728
step
goto 78.5,63.1
.talk 17834
..accept 9697
..accept 9957 |only if not completedq(9968) or not completedq(9971)
step
goto 78.4,62
.talk 17841
..turnin 9716
..accept 9718
step
'Use your Stormcrow Amulet |use Stormcrow Amulet##25465
.' Watch yourself fly as a crow.
.' Explore the Lakes of Zangarmarsh |q 9718/1
step
goto 78.4,62
.talk 17841
..turnin 9718
..accept 9720
step
goto 80.4,64.7
.talk 18070
..accept 9785
step
goto 78.1,63.8
.talk 17901
.' Get the Mark of War |q 9785/2
step
goto 81.1,63.9
.talk 17900
.' Get the Mark of Lore |q 9785/1
step
goto 80.4,64.7
.talk 18070
..turnin 9785
step
goto 70.6,80.3
.' Use your Ironvine Seeds on the Umbrafen Lake Pump Controls |use Ironvine Seeds##24355
.' Disable the Umbrafen Lake Pump Controls |q 9720/1 |tip The pump controls look like a little box with some levers on it
step
goto 63.1,64.1
.' Use your Ironvine Seeds on the Lagoon Pump Controls |use Ironvine Seeds##24355
.' Disable the Lagoon Pump Controls |q 9720/4 |tip The pump controls look like a little box with some levers on it
step
goto 84.8,55.1
.talk 20762
.fpath Swamprat Post
step
goto 85.3,54.8
.talk 18011
..turnin 10103
..accept 9774
..accept 9796
..accept 9775
step
goto 85,54
.talk 18012
..accept 9770
step
goto 84.4,54.3
.talk 18016
..accept 9769
..accept 9773
step
goto 74.2,60.7
.from Mire Hydra##18213+
.get 12 Thick Hydra Scale |q 9774/1
.from Umbrafen Eel##18138+
.get 8 Eel Filet |q 9773/1
step
goto 79.7,70.1
.from Umbraglow Stinger##18132+
.get 8 Diaphanous Wing |q 9769/1
step
goto 84.4,54.3
.talk 18016
..turnin 9769
..turnin 9773
..accept 9899
step
goto 85.3,54.8
.talk 18011
..turnin 9774
..accept 9771
step
goto 62,40.8
.' Use your Ironvine Seeds on the Serpent Lake Controls |use Ironvine Seeds##24355 |tip The pump controls look like a little box with some levers on it
.' Disable the Serpent Lake Controls |q 9720/3
.from Steam Pump Overseer##18340+, Bloodscale Overseer##20088+, Bloodscale Wavecaller##20089+
.' Get a Drain Schematics
.click the Drain Schematics in your bags |use Drain Schematics##24330
..accept 9731
step
goto 73.2,41.5
.kill 10 Marshfang Ripper##18130+ |q 9770/1
step
goto 77.2,45.9
.kill Sporewing##18280 |q 9899/1
step
goto 78.3,45.2
.from Withered Bog Lord##19402+, Withered Giant##18124+
.collect 6 Bog Lord Tendril##24291 |q 9743 |future
.from Withered Giant##18124+
.collect Withered Basidium##24484 |n
.click the Withered Basidium |use Withered Basidium##24484 |tip The Bog Lord Tendrils and the Withered Basidium have a very low drop rate so it may take a while.
..accept 9828
step
goto 80.8,36.3
.talk 18035
..turnin 9771
..accept 9772
step
goto 81.6,35
.from Withered Giant##18124+
.get Scout Jyoba's Report |q 9772/1
step
goto 84.4,54.3
.talk 18016
..turnin 9899
step
goto 85,54
.talk 18012
..turnin 9770
..accept 9898
..turnin 9828
step
goto 85.3,54.8
.talk 18011
..turnin 9772
step
goto 50.4,40.8
.' Swim straight down into the big bubbling pipe opening below until you discover the drain
.' Locate the drain in Serpent Lake |q 9731/1
step
goto 49.5,59.2
.from Blacksting##18283 |tip He's a red, yellow and black flying wasp-looking bug.
.get Blacksting's Stinger |q 9898/1
step
goto 32.8,59.1
.from "Count" Ungula##18285 |tip He's a huge Marshfang.
.collect "Count" Ungula's Mandible##25459 |n
.click "Count" Ungula's Mandible in your bags |use "Count" Ungula's Mandible##25459
..accept 9911
step
goto 32.9,48.9
.talk 18014
..accept 9814
step
goto 32.2,49.6
.talk 18018
..accept 9845
step
goto 32,49.3
.click Wanted Poster##17
..accept 9820
..accept 10117
step
goto 31.6,49.2
.talk 18015
..accept 9841
step
goto 30.6,50.8
.talk 18245
.home Zabra'jin
step
goto 30.7,50.9
.talk 18013
..turnin 9775
step
goto 32.4,52
.talk 18017
..accept 9846
step
goto 33.1,51.1
.talk 18791
.fpath Zabra'jin
step
goto 46,60.3
.from Feralfen Mystic##18114+, Feralfen Hunter##18113+, Feralfen Druid##20270+
.get 10 Feralfen Protection Totem |q 9846/1
step
goto 48.1,38.4
.kill 10 Fenclaw Thrasher##18214+ |q 9845/1
step
goto 32.2,49.6
.talk 18018
..turnin 9845
..accept 9903
..accept 9904
step
goto 32.4,52
.talk 18017
..turnin 9846
..accept 9847
step
goto 42.2,41.4
.kill Mragesh##18286 |q 9903/1
step
goto 44.4,66
.' Use your Feralfen Totem at the base of the big stairs |use Feralfen Totem##24498
.from Feralfen Serpent Spirit##18185
.' Kill the Feralfen Serpent Spirit that spawns |q 9847/1
step
'Hearth to Zabra'jin |goto Zangarmarsh,31.7,49.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 32.2,49.6
.talk 18018
..turnin 9903
step
goto 32.4,52
.talk 18017
..turnin 9847
step
goto 28.9,52.6
.click Burstcap Mushroom##6432
.get 6 Burstcap Mushroom |q 9814/1
step
goto 32.9,48.9
.talk 18014
..turnin 9814
..accept 9816
step
goto 23.3,66.2
.talk 17831
..turnin 9697
..accept 9701
..turnin 9911
step
goto 19,64
.talk 17923
..accept 9739
..accept 9743
..turnin 9743
step
goto 14.5,61.6
.click Mature Spore Sac##6911
.collect 40 Mature Spore Sac##24290 |q 9739 |tip You need 30 extra to turn in for Sporeggar reputation, so you can accept quests. |future
.' If you find this quest is bugged and you are not able to collect all _40 Mature Spore Sac_ then click below to continue.
|confirm |next "collect_10_sac"
|next "collect_40_sac" |only if default
step
label	"collect_10_sac"
goto 13.6,59.8
.from Starving Fungal Giant##18125+, Starving Bog Lord##19519+ |only if rep ('Sporeggar') <= Unfriendly
.collect 6 Bog Lord Tendril##24291 |only if rep ('Sporeggar') <= Unfriendly
.' Go here to Investigate the Spawning Glen |q 9701/1
step
goto 19.1,63.9
.talk 17923
..turnin 9739
..accept 9919 |only if rep ('Sporeggar') >= Neutral
..accept 9744 |instant |only if rep ('Sporeggar') <= Unfriendly
next "collect_6_tendril" |only if rep ('Sporeggar') <= Unfriendly
next "Sporeggar_friendly" |only if rep ('Sporeggar') >= Neutral
step
label	"collect_6_tendril"
goto 13.6,59.8
.from Starving Fungal Giant##18125+, Starving Bog Lord##19519+
.collect 6 Bog Lord Tendril##24291
step
goto 19.1,63.9
.talk 17923
..accept 9744 |instant
next "collect_6_tendril" |only if rep ('Sporeggar') <= Unfriendly
next "Sporeggar_friendly" |only if rep ('Sporeggar') >= Neutral
step
label	"collect_40_sac"
goto 13.6,59.8
.' Go here to Investigate the Spawning Glen |q 9701/1
step
goto 19.1,63.9
.talk 17923
..accept 9919
step
label	"Sporeggar_friendly"
goto 23.3,66.2
.talk 17831
..turnin 9701
..accept 9702
step
ding 64
step
goto 27,63.3
.click Discarded Nutriment##6940
.get 10 Discarded Nutriment|q 9702/1
step
goto 23.3,66.2
.talk 17831
..turnin 9702
..accept 9708
step
goto 19.7,52.1
.talk 17924
..turnin 9919
step
goto 19.2,49.4
.talk 17925
..accept 9806
..turnin 9806
step
goto 19.5,50
.talk 17856
..accept 9726
step
goto 22.4,46.1
.kill Terrorclaw##20477 |q 9904/1
step
goto 16.3,39.6
.kill 8 Marshlight Bleeder##18133+ |q 9841/1
.' More can be found around [26.3,33.7]
step
goto 25.4,42.9
.' Use your Ironvine Seeds on the Marshlight Lake Pump Controls |use Ironvine Seeds##24355 |tip The pump controls look like a little box with some levers on it.
.' Disable the Marshlight Lake Pump Controls |q 9720/2
step
goto 26.8,43
.kill 12 Bloodscale Slavedriver##18089+ |q 9726/1
.kill 6 Bloodscale Enchantress##18088+ |q 9726/2
step
goto 34.5,34.8
.' Kill Boss Grog'ak |tip He's standing on the side of the road.
.get Boss Grog'ak's Head |q 9820/1
|modelnpc Boss Grog'ak##18159
step
goto 29.6,28.3
.from Ango'rosh Ogre##18117+, Ango'rosh Shaman##18118+, Boss Grog'ak##18159
.get 15 Mushroom Sample |q 9708/1
step
goto 32.2,49.6
.talk 18018
..turnin 9904
step
goto 31.6,49.2
.talk 18015
..turnin 9841
..accept 9842
step
goto 30.7,50.9
.talk 18013
..turnin 9820
..accept 9822
step
goto 35.9,58.6
.from Marshfang Slicer##18131+
.get 10 Marshfang Slicer Blade |q 9842/1
step
goto 31.6,49.2
.talk 18015
..turnin 9842
step
goto 23.3,66.2
.talk 17831
..turnin 9708
..accept 9709
step
goto 19.5,50
.talk 17856
..turnin 9726
step
goto 19.9,27.1
.click Ango'rosh Attack Plans##222 |tip It's at the top of the tower.
.get Ango'rosh Attack Plans |q 9822/1
step
goto 30.7,50.9
.talk 18013
..turnin 9822
..accept 9823
..accept 10118
step
goto 23.8,26.8
.' Go to the top of the tower
.from Chieftain Mummaki##19174 |tip At the top of the big tower, straight ahead as you reach the top of the stairs.
.get Chieftain Mummaki's Totem |q 10117/1
step
goto 23.8,24.5
.kill 3 Daggerfen Assassin##18116+ |q 10118/1
.kill 15 Daggerfen Muckdweller##18115+ |q 10118/2
step
goto 26.8,22.6
.' Clear this area of all mobs before clicking the cage, or else they will all attack you.
.click the Murloc Cage in your bags |use Murloc Cage##24470 |tip Stand on this big flat gray rock and click your Murloc Cage to release the murlocs.
.' Release Murlocs at Daggerfen Village |q 9816/1
step
goto 17.3,10.2
.kill 10 Ango'rosh Mauler##18120+ |q 9823/2
.kill 10 Ango'rosh Souleater##18121+ |q 9823/3
.click Box of Mushrooms##2350
.get 10 Box of Mushrooms |q 9709/1
step
goto 18.3,7.7
.kill Overlord Gorefist##18160 |q 9823/1 |tip Follow the path up the hill. Overlord Gorefist is inside the small house on the left.
step
'Hearth to Zabra'jin |goto Zangarmarsh,31.7,49.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 30.7,50.9
.talk 18013
..turnin 9823
..turnin 10118
..turnin 10117
step
goto 32.9,48.9
.talk 18014
..turnin 9816
step
goto 23.3,66.2
.talk 17831 |tip Don't follow her when she walks away
..turnin 9709
step
|fly Swamprat Post
step
goto 85,54
.talk 18012
..turnin 9898
step
goto 78.4,62
.talk 17841
..turnin 9720
..turnin 9731
..accept 9724
step
goto Hellfire Peninsula 4.7,50.8 |n
.' Go east to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
step
goto Hellfire Peninsula,15.7,52
.talk 16885
..turnin 9724
..accept 9732
step
goto Zangarmarsh 83.0,65.5 |n
.' Go northwest to Zangarmarsh |goto Zangarmarsh |noway |c
step
goto Zangarmarsh,78.4,62
.talk 17841
..turnin 9732
step
goto Terokkar Forest 32.6,5.0 |n
.' Go southeast to Terokkar Forest |goto Terokkar Forest
step
 goto Shattrath City 69.2,4.1 |n
.' Go south to Shattrath City |goto Shattrath City |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Outland 60-70\\Terokkar Forest (64-66)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Outland 60-70\\Nagrand (66-67)
startlevel 64.79
dynamic on
step
goto Shattrath City 59.8,41.3
.talk 19684
..accept 10210
step
goto 54,44.8
.talk 18481
..turnin 10210 |tip She is the big glowing floating being in the middle of the room.
step
goto 54.8,44.3
.talk 18166
..accept 10211
.' Follow the pink voidwalker
step
goto 64,15.5
.' As you follow the pink voidwalker:
.talk 18653 |tip You see him as you follow the pink Voidwalker for City of Light quest.
..accept 10037
step
goto 52.6,21
.' Also while you follow the pink voidwalker:
.talk 22292 |tip You see him as you follow the pink Voidwalker for City of Light quest.
..accept 10847
.' Finish the City of Light tour |q 10211/1
step
goto 54.8,44.3
.talk 18166
..turnin 10211
.' You will only be able to accept allegiance with one of these factions:
..accept 10551 |instant |or
..accept 10552 |instant |or
step
goto 54.8,44.3
.talk 18166
..accept 10554
only if rep ('The Aldor') >= Neutral
step
goto 41.7,38.6 |n
.' Ride the elevator up to the Aldor Rise |goto Shattrath City,41.7,38.6,0.5 |noway |c
only if rep ('The Aldor') >= Neutral
step
goto 30.7,34.6
.talk 18537
..accept 10325
only if rep ('The Aldor') >= Neutral
step
goto 24,29.7
.talk 18538
..turnin 10554
..accept 10021
only if rep ('The Aldor') >= Neutral
step
goto 28.2,48.4
.talk 19046
.home Shattrath City
only if rep ('The Aldor') >= Neutral
step
goto 54.8,44.3
.talk 18166
..accept 10553
only if rep ('The Scryers') >= Neutral
step
goto 50.0,62.9 |n
.' Ride the elevator up to the Scryer Rise |goto Shattrath City,50.0,62.9,0.3 |noway |c
only if rep ('The Scryers') >= Neutral
step
goto 42.8,91.7
.talk 18530
..turnin 10553
only if rep ('The Scryers') >= Neutral
step
goto 55.8,80.8
.talk 19232
.home Shattrath City
only if rep ('The Scryers') >= Neutral
step
goto Terokkar Forest 34.7,13.7 |n
.' Go outside to Terokkar Forest |goto Terokkar Forest |noway |c
step
goto Terokkar Forest,38.6,8.5
.from Shimmerscale Eels##18750
.get 8 Pristine Shimmerscale Eel |q 10037/1
step
goto 44.3,26.3
.talk 18446
..turnin 9957 |only if havequest(9957)
..accept 9968
..accept 9971
step
goto 45,22.5
.talk 18424 |tip He walks along the path leading into the house on the right.
..accept 9951
step
goto 45.1,21.8
.click Strange Object##7214 |tip Inside the building next to a dead body.
.' Examine the Strange Object |q 9971/1
step
goto 44.3,26.3
.talk 18446
..turnin 9971
step
goto 43.4,22.1
.kill Naphthal'ar##18438 |q 9951/1 |tip At the top of the big tower.
step
goto 45,22.5
.talk 18424
..turnin 9951
step
goto 44.1,23.8
.from Vicious Teromoth##18437+
.get 4 Vicious Teromoth Sample |q 9968/2
step
goto 45.8,29.8
.from Teromoth##18468+
.get 4 Teromoth Sample |q 9968/1
step
goto 44.3,26.3
.talk 18446
..turnin 9968
..accept 9978
step
goto 47.1,27
.talk 18482
.' Fight Empoor until he's almost dead
..turnin 9978
..accept 9979
step
goto 49.2,20.3
.click the Eastern Altar
.' Purify the Eastern Altar |q 10021/2
only if rep ('The Aldor') >= Neutral
step
goto 49.9,16.5 |n
.' The path up to the Eye of Veil Reskk starts here |goto Terokkar Forest,49.9,16.5,0.3 |noway |c
step
goto 50.1,19.4
.click Eye of Veil Reskk##621
.get Eye of Veil Reskk |q 10847/1
step
goto 50.7,16.6
.click the Northern Altar
.' Purify the Northern Altar |q 10021/1
only if rep ('The Aldor') >= Neutral
step
goto 48.1,14.5
.click the Western Altar
.' Purify the Western Altar |q 10021/3
only if rep ('The Aldor') >= Neutral
step
goto 57.9,23.2
.click Eye of Veil Shienor##621 |tip Climb the path inside the other tree, run across the bridge.
.get Eye of Veil Shienor |q 10847/2
step
goto Shattrath City 84.0,54.5
.' Go to Shattrath City |goto Shattrath City |noway |c
step
goto Shattrath City,24,29.7
.talk 18538
..turnin 10021
only if rep ('The Aldor') >= Neutral
step
goto Shattrath City,52.6,21
.talk 22292
..turnin 10847
..accept 10849
step
goto 64,15.5
.talk 18653
..turnin 10037
step
goto 72.2,30.7
.talk 18484
..turnin 9979
..accept 10112
step
goto Terokkar Forest 36.4,29.9
.' Go outside to Terokkar Forest |goto Terokkar Forest |noway |c
step
goto Terokkar Forest,37.4,51.5
.talk 22272
..turnin 10849
..accept 10839
step
goto 37.7,51.3
.talk 22365
..accept 10852
step
goto 37.4,51.2
.talk 22370
..accept 10878
step
goto 37.9,51.7
.talk 22420
..accept 10896
step
ding 65
step
goto 35.2,48.8
.from Infested Root-walker##22095+
.kill 25 Wood Mite##22419+ |q 10896/1
.' You can find more Infested Root-walkers at [39.1,47.0]
step
goto 32.2,52.8
.kill 8 Cabal Skirmisher##21661+ |q 10878/1
.from Cabal Abjurist##21660+, Cabal Initiate##21907+, Cabal Skirmisher##21661+, Cabal Spell-weaver##21902+, Cabal Tomb-Raider##21662+
.get 10 Mark of Kil'jaeden |q 10325/1 |only if rep ('The Aldor') >= Neutral
.collect Cabal Orders##31707 |n
.' Use the Cabal Orders in your bags |use Cabal Orders##31707
..accept 10880
step
goto 37.4,51.2
.talk 22370
..turnin 10880
..accept 10881
step
goto 37.9,51.7
.talk 22420
..turnin 10896
step
goto 39.4,55.1
.kill 4 Cabal Spell-weaver##21902+ |q 10878/2
.kill 2 Cabal Initiate##21907+ |q 10878/3
step
goto 37.4,51.2
.talk 22370
..turnin 10878
step
goto Terokkar Forest 31.7,52.6
.' Enter the Shadow Tomb |goto Terokkar Forest 31.7,52.6 |noway |c
step
goto 29.7,51.7
.click Cabal Chest##10
.get Gavel of K'alen |q 10881/2 |tip Inside the Shadow Tomb, inside a Cabal Chest in the back left of the room on the ground.
step
goto 32.1,51.2
.click Cabal Chest##10
.get Drape of Arunen |q 10881/1 |tip Inside the Shadow Tomb, inside a Cabal Chest in the back left of the room on the ground.
step
goto 31.2,46.7
.click Cabal Chest##10
.get Scroll of Atalor |q 10881/3 |tip Inside the Shadow Tomb, inside a Cabal Chest in the back right of the room on the ground.
step
'Go outside to 37.4,51.2 |goto 37.4,51.2
.talk 22370
..turnin 10881
step
goto 30.8,42.1
.' Use the Rod of Purification on the Darkstone of Terokk |use Rod of Purification##31610 |tip It's a big black floating crystal.
.' Purify the Darkstone of Terokk |q 10839/1
step
goto 32.3,41.7
.from Skithian Windripper##18453+, Skithian Dreadhawk##18452+
.get 5 Lathrai's Stolen Goods |q 10112/1
.collect Veil Skith Prison Key##31655+ |n
.click the yellow cages around this area
.' Rescue 12 Children |q 10852/1
step
goto 37.4,51.5
.talk 22272
..turnin 10839
..accept 10848
step
goto 37.7,51.3
.talk 22365
..turnin 10852
step
goto 30.2,51.1
.kill 4 Deathtalon Spirit##21198+ |q 10848/1
.kill 4 Screeching Spirit##21200+ |q 10848/2
.kill 2 Spirit Raven##21324+ |q 10848/3
step
goto 37.4,51.5
.talk 22272
..turnin 10848
..accept 10861
step
goto 24.2,70.5
.click Cursed Egg##477 |tip They're on the ground in nests next to the huts around this area.
.' Redeem 3 Hatchlings |q 10861/1
.kill 3 Malevolent Hatchling##22337+ |q 10861/2
step
goto 31,76.1
.talk 22446
..accept 10913
.talk 22458
..accept 10922
.' Escort the Archaeologists |q 10922/1
step
goto 31,76.1
.talk 22481
..turnin 10922
step
goto 31.1,76.5
.talk 22456
..accept 10877
step
goto 31.4,75.7
.talk 22364
..accept 10873
step
goto 35,76.5
.' Use your Sha'tari Torch on corpses |use Sha'tari Torch##31769 |tip They are corpses laying all over the ground around this area.
.' Burn 8 Slain Sha'tari Vindicator corpses |q 10913/1
.' Burn 8 Slain Auchenai Warrior corpses |q 10913/2
step
goto 43.9,76.4
.click Massive Treasure Chest##1387
.get Dread Relic |q 10877/1
step
goto 49.7,76.2
.talk 22462
..accept 10920
step
goto 51.2,77.5
.kill 20 Dreadfang Widow##18467+ |q 10920/1
.from Netherweb Victim##22355+
.' Free 6 Sha'tar Warriors |q 10873/1 |tip Ensure your pet is set to passive to free the Warriors.
step
goto 49.7,76.2
.talk 22462
..turnin 10920
step
goto 31.4,75.7
.talk 22364
..turnin 10873
step
goto 31,76.1
.talk 22446
..turnin 10913
..accept 10914
step
goto 31.1,76.5
.talk 22456
..turnin 10877
step
goto 36.7,74.4
.kill 12 Auchenai Initiate##21284+ |q 10914/1
.kill 5 Auchenai Doomsayer##21285+ |q 10914/2
step
goto 31,76.1
.talk 22446
..turnin 10914
..accept 10915
step
goto 35.9,65.7
.click Auchenai Coffin##7251
.' Kill the Reanimated Exarch that appears |q 10915/1
step
goto 31,76.1
.talk 22446
..turnin 10915
step
goto 37.4,51.5
.talk 22272
..turnin 10861
..accept 10874
step
goto 37.5,50.8
.talk 22278
..accept 10840
..accept 10842
step
goto 47.0,55.2 |n
.' Enter the tomb |goto 47.0,55.2,0.5 |noway |c
step
goto 47.6,54.8
.kill 10 Ethereal Nethermancer##21370+ |q 10840/1
.kill 10 Ethereal Plunderer##21368+ |q 10840/2
.from Vengeful Draenei##21636+
.' Slay 5 Vengeful Draenei |q 10842/1
step
goto 47.0,55.2 |n
.' Leave the tomb |goto 47.0,55.2,0.5 |noway |c
step
goto 54.9,66.1 |n
.' The path up to Veil Shalas starts here |goto Terokkar Forest,54.9,66.0,0.5 |noway |c
step
goto 57.3,65 |n
.' The path up to the Sapphire Signal Fire starts here |goto 57.3,65.0,0.3 |noway |c
step
goto 55.2,67.1
.click Sapphire Signal Fire##7289 |tip Across the hanging bridge and down the spiraling stairs.
.' Extinguish the Sapphire Signal Fire |q 10874/1
step
goto 57,71.8 |n
.' The path up to the Emerald Signal Fire starts here |goto 57.0,71.8,0.3 |noway |c
step
goto 55.5,69.7
.click Emerald Signal Fire##7200 |tip Over the hanging bridge.
.' Extinguish the Emerald Signal Fire |q 10874/2
step
goto 56,72.7 |n
.' The path up to the Bloodstone and Violet Signal Fires starts here |goto 56.0,72.7,0.3 |noway |c |tip It is a tunnel path inside the tree. The entrance is behind the tree to the right a little.
step
goto 56.1,72.4
.' Go up the path
.click Bloodstone Signal Fire##7290 |tip Up the path inside the tree, on your left as you reach the top.
.' Extinguish the Bloodstone Signal Fire |q 10874/4
step
goto 56.7,69.2
.click Violet Signal Fire##5151 |tip Across the hanging bridge from the Bloodstone Signal Fire.
.' Extinguish the Violet Signal Fire |q 10874/3
step
goto 37.4,51.5
.talk 22272
..turnin 10874
..accept 10889
step
goto 37.5,50.8
.talk 22278
..turnin 10840
..turnin 10842
step
goto 51.1,51.6 |n
.' The path up to Stonebreaker Hold starts here |goto 51.1,51.6,0.5 |noway |c
step
goto 50.2,46.4
.talk 18384
..accept 10018
step
goto 50.1,44.9
.talk 18385
..accept 9993
step
goto 49.8,45.3
.click Wanted Poster##3053 |tip In the center of town, next to a tall stone statue thing.
..accept 10034
step
goto 49.7,43.3
.talk 18249
..turnin 9796
step
goto 49.2,43.4
.talk 18807
.fpath Stonebreaker Hold
step
goto 49,44.6
.talk 18386
..accept 9987
.talk 18712
..accept 10039
..accept 10868
step
goto 48.8,45.7
.talk 18383
..accept 10000
..accept 10027
step
goto 48.8,45.0
.talk 18957
.home Stonebreaker Hold
step
|fly Shattrath
step
goto Shattrath City,72.2,30.7
.talk 18484
..turnin 10112
..accept 9990
step
goto 52.6,21
.talk 22292
..turnin 10889
.talk 22373
.' You're about to fight 3 waves of birds and a bird boss. Make sure you're ready.
..accept 10879
step
goto 52.6,21
. 'Kill Minion of Terokk |tip They will spawn in 3-4 waves right around you.
.' Kill Avatar of Terokk |tip It spawns after you've killed all of the other mobs during this event.
.' Thwart the Attack |q 10879/1
|modelnpc Minion of Terokk##22376
|modelnpc Avatar of Terokk##22375
step
goto 52.6,21
.talk 22292
..turnin 10879
step
goto 30.7,34.6
.talk 18537
..turnin 10325
only if rep ('The Aldor') >= Neutral
step
|fly Stonebreaker Hold
step
goto Terokkar Forest,41.6,51.6
.kill 20 Bonelasher##18470+ |q 10034/1
step
goto 34.9,42.8
.click Olemba Cone##6970
.get 30 Olemba Seed |q 9993/1
.kill 10 Warp Stalker##18464+ |q 10027/1
.from Timber Worg##18476+
.get 12 Timber Worg Pelt |q 10018/1
.' You can find more Timber Worgs at [36.8,37.5]
step
goto 29.9,42.8 |n
.' The path up to Urdak starts here |goto 29.9,42.8,0.3 |noway |c
step
goto 31.4,42.5
.kill Urdak##18541 |q 9987/3 |tip Up ramp, across the hanging bridge, then on your left.
step
goto 39,43.7
.talk 18714
..turnin 10039
..accept 10041
.' She puts an orc disguise on you |havebuff Interface\Icons\Spell_Shadow_NetherCloak |q 10041 |tip Be careful, the hunter, the guy walking around with a group of people, in the camp can see through the disguise |n
step
goto 40.3,39.1
.' Talk to the Shadowy Advisor |q 10041/3 |tip Inside the big building.
|modelnpc Shadowy Advisor##18719
step
goto 39,39.7
.' Talk to the Shadowy Initiate |q 10041/1 |tip On a wooden platform next to a blue glowing symbol.
|modelnpc Shadowy Initiate##18716
step
goto 38.4,39.3
.' Talk to the Shadowy Laborer |q 10041/2 |tip The Shadowy Laborer walks around this area hammering at things.  Some searching may be necessary.
|modelnpc Shadowy Laborer##18717
step
goto 39,43.7
.talk 18714
..turnin 10041
..accept 10043
step
goto 40.3,39.1
.kill Shadowmaster Grieve##18720 |q 10043/3 |tip Inside the big building.
step
goto 39.8,40.8
.kill 10 Shadowy Executioner##16519+ |q 10043/1
.kill 10 Shadowy Summoner##17088+ |q 10043/2
step
goto 54,30
.click Sealed Box##6881 |tip A green glowing crate inside the hut directly east of you if you are standing on the bridge.
.get Sealed Box |q 9990/1
step
goto 44.3,26.3
.talk 18446
..turnin 9990
..accept 9995
step
goto 49.9,16.5 |n
.' The path up to Ashkaz starts here |goto 49.9,16.5,0.3 |noway |c
step
goto 49.1,16.9
.kill Ashkaz##18539 |q 9987/1 |tip Up the ramp, on the right.
step
goto 48.9,17.3
.kill 14 Shienor Talonite##18449+ |q 10868/1
.kill 6 Shienor Sorcerer##18450+ |q 10868/2
step
goto 59.4,23.4
.kill Ayit##18540 |q 9987/2 |tip Inside a small purple hut.
step
goto 65.5,50.6
.kill 12 Warped Peon##18595+ |q 10000/1
step
goto 63.4,42.7
.talk 18566
..turnin 10000
..accept 10003
..accept 10008
step
goto 68,53.2
.kill Lisaile Fireweaver##18583 |q 10003/1 |tip Inside the big building.
step
goto 67.9,53.6
.click Fel Orc Plans##222 |tip Inside the big building, it's a brown flat scroll laying on the floor next to some big logs.
..accept 10013
step
goto 69.1,53
.kill 10 Bonechewer Devastator##16772+ |q 10008/1
.kill 6 Bonechewer Backbreaker##16810+ |q 10008/2
step
ding 66
step
goto 63.4,42.7
.talk 18566
..turnin 10003
..turnin 10008
step
'Hearth to Stonebreaker Hold |goto Terokkar Forest,49.2,45.3,2.5 |use Hearthstone##6948 |noway |c
step
goto 49,44.6
.talk 18712
..turnin 10043
..turnin 10868
.talk 18386
..turnin 9987
..turnin 10013
step
goto 48.8,45.7
.talk 18383
..turnin 10027
step
goto 49.3,45.9
.talk 18705
..turnin 10034
step
goto 50.2,46.4
.talk 18384
..turnin 10018
..accept 10023
step
goto 50,45.9
.talk 18447
..turnin 9995
..accept 10448
step
goto 50.1,44.9
.talk 18385
..turnin 9993
..accept 10201
step
goto 49.8,45.3
.talk 19606
.' Ask him to try the weapon oil
.' Have Grek Test Olemba Oil |q 10201/1
step
goto 50.1,44.9
.talk 18385
..turnin 10201
step
goto 63.3,42.4
.talk 21007
..turnin 10448
..accept 9997
step
goto 66.3,34.7
.from Ironjaw##18670 |tip He is a brown wolf that wanders around this area, so some searching may be necessary.
.get Ironjaw's Pelt |q 10023/1
step
goto 68.1,36.5
.kill 10 Firewing Defender##5355+ |q 9997/1
.kill 10 Firewing Bloodwarder##1410+ |q 9997/2
.kill 10 Firewing Warlock##16769+ |q 9997/3
step
goto 63.3,42.4
.talk 21007
..turnin 9997
..accept 10447
step
goto 73.3,34.6
.click Orb of Translocation##7161 |tip Upstairs from Isla Starmane, on the balcony.
.' It will teleport you to the top of the tower |goto 73.5,35.0,0.2 |noway |c
step
goto 73.9,35.8
.from Sharth Voldoun##18554 |tip Up the winding ramp.
.collect The Final Code##29912 |q 10447
step
goto 74.2,36.5
.click Orb of Translocation##7161 |tip Up the ramp from Sharth Voldoun.
.' It will teleport you to the bottom of the tower |goto 73.3,36.3,0.2 |noway |c
step
goto 71.3,37.4
.click Mana Bomb##7213
.' Activate the Mana Bomb using the Final Code |q 10447/1
step
goto 50,45.9
.talk 18447
..turnin 10447
..accept 10006
step
goto 50.2,46.4
.talk 18384
..turnin 10023
..accept 10791
.' Use the Ceremonial Incense he gave you |use Ceremonial Incense##31344
.' Help Malukaz Summon the Wolf Spirit |q 10791/1
step
goto 50.2,46.4
.talk 18384
..turnin 10791
step
goto 49.2,43.4
.talk 18807
.' Fly to Shattrath City |goto Shattrath City |noway |c
step
goto Terokkar Forest 38.1,26.6 |n
.' Go outside to Terokkar Forest |goto Terokkar Forest |noway |c
step
goto Terokkar Forest,44.3,26.3
.talk 18446
..turnin 10006
step
goto Shattrath City 84.0,54.8 |n
.' Go west to Shattrath City |goto Shattrath City |noway |c
step
goto 63.8,41.6
.talk 18940
.' Fly to Zabra'jin |goto Zangarmarsh,31.7,49.8,0.5 |noway |c
step
goto Zangarmarsh,32,50.4
.talk 18091
..accept 9797
step
goto 33.0,51.0
.talk 18791
.' Fly to Swamprat Post |goto Zangarmarsh,85.2,54.2,2 |noway |c
step
goto Nagrand 74.0,33.3 |n
.' Go southwest to Nagrand |goto Nagrand |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Outland 60-70\\Nagrand (66-67)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Outland 60-70\\Blade's Edge Mountains (67-68)
startlevel 66.46
dynamic on
step
goto Hellfire Peninsula,55,36
.talk 3230
.accept 9400
step
goto 33.6,43.5
.' Go to this spot
.' Find Krun Spinebreaker |q 9400/1
step
goto 33.6,43.5
.click the Fel Orc Corpse |tip It's a corpse laying halfway up the hill.
..turnin 9400
..accept 9401
step
goto 55,36
.talk 3230
..turnin 9401
..accept 9405
step
goto 54.2,37.9
.talk 16574
..turnin 9405
..accept 9410
step
goto 33.6,43.5
.' Use your Ancestral Spirit Wolf Totem next to the Fel Orc Corpse |use Ancestral Spirit Wolf Totem##23669 |tip It's a corpse laying halfway up the hill.
.' Follow the spirit wolf |tip Stay close to the wolf and follow it until it stops, or you will not be able to turn in the quest.
.' Follow the wolf to this spot |goto 32,27.8,0.5 |c
step
goto 32,27.8
.talk 16845
..turnin 9410
..accept 9406
step
goto 55,36
.talk 3230
..turnin 9406
step
goto Nagrand,71.6,40.5
.talk 18200
..accept 9854
.talk 18180
..accept 9789
.talk 18218
..accept 9857
step
goto 72.2,38.4
.kill 12 Talbuk Stag##17130+ |q 9857/1
.' You can find more Talbuk Stags at [70.8,46.4]
step
goto 66.5,39.5
.kill 12 Windroc##17128+ |q 9854/1
step
goto 64,45.1
.kill 12 Clefthoof##18205+ |q 9789/1
.from Wild Elekk##18334
.collect 3 Pair of Ivory Tusks##25463 |q 9914 |future
.from Dust Howlers##17158
.collect Howling Wind##24504 |n
.' Use the Howling Wind in your bags |use Howling Wind##24504
..accept 9861
.' You can find more Clefthoofs, Elekks, and Dust Howlers at [70.8,46.4]
step
goto 71.6,40.5
.talk 18200
..turnin 9854
..accept 9855
.talk 18180
..turnin 9789
..accept 9850
.talk 18218
..turnin 9857
..accept 9858
step
goto 57.2,35.2
.talk 18808
.fpath Garadar
step
goto 57.1,34.9
.talk 18302
..accept 9944
step
goto 56.6,34.6
.talk 18913
.home Garadar
step
goto 55.4,37.4
.talk 18090
..turnin 9797
step
goto 55.5,37.6
.talk 18106
..accept 9888
step
goto 55.8,38
.talk 18407
..accept 10479
.click the Garadar Bulletin Board
..accept 9935
..accept 9939
step
goto 55,39
.talk 18234
..accept 9870
step
goto 54.7,39.7
.talk 18066
..accept 9863
.talk 18067
..accept 9864
.talk 18068
..accept 9867
step
goto 51.9,34.8
.talk 18335
..accept 9913
step
goto 60.5,22.4
.talk 18074
..turnin 9861
..accept 9862
.talk 18072
..turnin 9870
.talk 18073
..accept 9800
..accept 9815
.talk 18071
..accept 9818
step
goto 61.8,24.4
.talk 18099 |tip He may not be in this spot, he wanders around the Throne of Elements area.
..turnin 9818
..accept 9819
step
goto 52.1,25.6
.kill 12 Talbuk Thorngrazer##17131+ |q 9858/1
.click Dung##3675
.get 8 Digested Caracoli |q 9800/1
step
goto 51.6,30.8
.kill 12 Clefthoof Bull##17132+ |q 9850/1
.' You can find more Clefthoof Bulls at [49.7,35.6]
step
goto 46.5,18.2
.kill Zorbo the Advisor##18413 |q 9939/1 |tip Inside the cave at the top of the hill.
step
goto 48.3,21.5
.kill 5 Warmaul Shaman##18064+ |q 9939/2
.kill 5 Warmaul Reaver##17138+ |q 9939/3
step
goto 48.3,21.5
.from Warmaul Shaman##18064+, Warmaul Reaver##17138+
.get 10 Obsidian Warbeads |q 10479/1
step
goto 32.4,36.1
.talk 18229
..turnin 9864
..accept 9865
.talk 18414
..turnin 9944
..accept 9945
.talk 18415
..accept 9948
step
goto 29.2,31.6 |n
.' The path up to 'War on the Warmaul' and 'Finding the Survivors' starts here |goto 29.2,31.6,0.5 |noway |c
step
goto 23.4,29.2
.kill 8 Warmaul Brute##18065+ |q 9945/1
.kill 8 Warmaul Warlock##18037+ |q 9945/2
.collect Warmaul Prison Key##25604 |n
.click the yellow cages around this area
.' Free 5 Mag'har Prisoners |q 9948/1
step
goto 32.4,36.1
.talk 18414
..turnin 9945
.talk 18415
..turnin 9948
step
goto 41.5,40.9
.from Muck Spawn##17154+
.get 5 Muck-ridden Core |q 9815/1
step
goto 32,39.1
.kill 20 Murkblood Scavenger##18207+ |q 9865/1
.kill 10 Murkblood Raider##18203+ |q 9865/2
.kill 5 Murkblood Putrifier##18202+ |q 9862/1
.get 10 Murkblood Idol |q 9863/1
step
goto 30.9,42.3
.from Ortor of Murkblood##18204 |tip He's standing inside the big building here.
.get Head of Ortor of Murkblood |q 9867/1
step
goto 32.4,36.1
.talk 18229
..turnin 9865
..accept 9866
step
goto 30.8,58.1
.talk 18276
..accept 9900
..accept 9925
step
goto 31.4,57.8
.talk 18265
..turnin 9913
..accept 9882
step
goto 31.8,56.8
.talk 18333
..accept 9914
..turnin 9914
step
goto 33.4,62.4
.click Oshu'gun Crystal Fragment##6415
.from Vir'aani Raider##17149
.get 10 Oshu'gun Crystal Fragment |q 9882/1
step
goto 30.6,67.5
.kill 8 Voidspawn##17981+ |q 9925/1
step
goto 42.4,73.5
.kill Gava'xi##18298 |q 9900/1 |tip He spawns at the peak of a small hill at this location, sometimes he spawns at the base of the hill though, so keep an eye out.  He walks around all around this area, near this hill, so you may need to search for him.
step
goto 48.4,61.5
.kill 12 Ravenous Windroc##18220+ |q 9855/1
step
goto 30.8,58.1
.talk 18276
..turnin 9900
..turnin 9925
step
goto 31.4,57.8
.talk 18265
..turnin 9882
step
goto 61.7,67.1
.talk 19035
..accept 10109
step
goto 65.4,70.8
.kill 10 Tortured Earth Spirit##17156+ |q 9819/1
step
goto 69.4,56.9
.from Dust Howler##17158+
.get 3 Air Elemental Gas |q 10109/1
.' You can find more Dust Howlers at [65.5,46.9]
step
goto 61.7,67.1
.talk 19035
..turnin 10109
step
goto Terokkar Forest 20.3,55.8 |n
.' Go southeast to Terokkar Forest |goto Terokkar Forest |noway |c
step
goto Terokkar Forest,19.8,60.9
.talk 18273
..turnin 9888
..accept 9889
step
goto 20,63.1
.kill 10 Boulderfist Invader##18260+ |q 9889/2
step
goto 20,63.1
.' Fight Unkor the Ruthless until he submits |q 9889/1
.talk 18262
..turnin 9889
..accept 9890
step
goto 19.8,60.9
.talk 18273
..turnin 9890
..accept 9891
step
ding 67
step
'Hearth to Garadar |goto Nagrand,56.7,34.6,0.5 |use Hearthstone##6948 |noway |c
step
goto Nagrand,55.5,37.6
.talk 18106
..turnin 9891
..accept 9906
step
goto 55.8,38
.talk 18407
..turnin 10479
..turnin 9939
step
goto 55.5,37.6
.talk 18300
..accept 9910
step
goto 54.7,39.7
.talk 18066
..turnin 9863
.talk 18067
..turnin 9866
.talk 18068
..turnin 9867
step
goto 61.8,24.4
.talk 18099
..turnin 9819
..accept 9821 |tip He may not be in this spot, he wanders around the Throne of Elements area.
step
goto 60.5,22.4
.talk 18073
..turnin 9800
..accept 9804
..turnin 9815
.talk 18074
..turnin 9862
step
goto 59.7,27.3
.kill 8 Lake Spirit##17153+ |q 9804/1
step
goto 60.5,22.4
.talk 18073
..turnin 9804
..accept 9805
step
goto 52,20.2
.from Enraged Crusher##18062+ |tip You can find them all along this cliffside.
.get 10 Enraged Crusher Core |q 9821/1
step
goto 61.8,24.4
.talk 18099 |tip He may not be in this spot, he wanders around the Throne of Elements area.
..turnin 9821
..accept 9849
step
goto 71.6,40.5
.talk 18218
..turnin 9858
.talk 18180
..turnin 9850
.talk 18200
..turnin 9855
step
goto 70.8,51.2
.' Go inside the hut
.' Use the Living Fire in your bags |use Living Fire##24467
.' Destroy the Western Hut |q 9805/2
step
goto 72.4,50.3
.' Go inside the hut
.' Use the Living Fire in your bags |use Living Fire##24467
.' Destroy the Large Hut |q 9805/1
step
goto 72.8,54.7
.' Go inside the hut
.' Use the Living Fire in your bags |use Living Fire##24467
.' Destroy the Eastern Hut |q 9805/4
step
goto 71.2,53.2
.' Go inside the hut
.' Use the Living Fire in your bags |use Living Fire##24467
.' Destroy the Southern Hut |q 9805/3
step
goto 60.5,22.4
.talk 18073
..turnin 9805
..accept 9810
step
goto 72.1,69.9
.' Use your Mag'har Battle Standard next to the bonfire |use Mag'har Battle Standard##25458
.' Place the First Battle Standard |q 9910/1
step
goto 74.7,69.8
.' Use your Mag'har Battle Standard next to the bonfire |use Mag'har Battle Standard##25458 |tip Up the hill on the middle ledge, overlooking the camp.
.' Place the Second Battle Standard |q 9910/2
step
goto 75.8,68.4
.' Use your Mag'har Battle Standard next to the bonfire |use Mag'har Battle Standard##25458 |tip All the way up the hill.
.' Place the Third Battle Standard |q 9910/3
step
goto 72.9,69.8
.kill 8 Boulderfist Mystic##17135+ |q 9906/1
.kill 8 Boulderfist Crusher##17134+ |q 9906/2
step
goto 55.5,37.6
.talk 18106
..turnin 9906
..accept 9907
step
goto 55.5,37.6
.talk 18300
..turnin 9910
..accept 9916
step
goto 40.8,31.5
.kill 10 Boulderfist Warrior##17136+ |q 9907/1
.kill 10 Boulderfist Mage##17137+ |q 9907/2
.click Bleeding Hollow Supply Crate##5531
.get 10 Bleeding Hollow Supply Crate |q 9916/1 |tip They look like wooden boxes with a red symbol on the side of them.  There are a lot of them inside the cave.
step
goto 33.8,48.9
.kill 8 Lake Surger##17155+ |q 9810/2
step
goto 33.1,50.8
.kill Watoosun's Polluted Essence##18145 |q 9810/1 |tip He's underwater.
step
goto 27.9,77.6
.' Use Gordawg's Boulder on Shattered Rumblers |use Gordawg's Boulder##24501
.' Kill the Minions of Gurok that spawn from their corpses
.kill 30 Minion of Gurok##18181+ |q 9849/1
|modelnpc Shattered Rumbler##17157
step
'Hearth to Garadar |goto Nagrand,56.7,34.6,0.5 |use Hearthstone##6948 |noway |c
step
goto 55.5,37.6
.talk 18300
..turnin 9916
step
goto 55.5,37.6
.talk 18106
..turnin 9907
..accept 10107
step
goto 73.8,68.1 |n
.' The path up to Lantressor of the Blade starts here |goto 73.8,68.1,0.5 |noway |c
step
goto 73.8,62.6
.talk 18261
.' Listen to his story
.' Hear the story of the Blademaster |q 10107/1
..turnin 10107
..accept 9928
..accept 9927
step
goto 71.1,82.4
.kill Giselda the Crone##18391 |q 9935/1 |tip Inside the big circle building, in the middle.
step
goto 71.4,79.4
.click the Kil'sorrow Armaments##6959 |tip They look like skinny, square, tan boxes on the ground with a red axe logo on them.
.click Kil'sorrow Armaments##6959
.get 10 Kil'sorrow Armaments |q 9928/1
.from Kil'sorrow Deathsworn##17148, Kil'sorrow Cultist##17147, Kil'sorrow Spellbinder##17146
.' Kill 10 Kil'sorrow Agents |q 9935/2
.' Use your Warmaul Ogre Banner on their corpses |use Warmaul Ogre Banner##25552
.' Plant 10 Warmaul Ogre Banners |q 9927/1
step
goto 73.8,62.6
.talk 18261
..turnin 9928
..turnin 9927
..accept 9931
..accept 9932
step
goto 55.8,38
.talk 18407
..turnin 9935
step
goto 61.8,24.4
.talk 18099
..turnin 9849
step
goto 60.5,22.4
.talk 18073
..turnin 9810
step
goto 46.5,24.3
.from Warmaul Shaman##18064+, Warmaul Reaver##17138+
.' Use your Kil'sorrow Banner on their copses |use Kil'sorrow Banner##25555
.' Plant 10 Kil'sorrow Banners |q 9931/1
.' Use the Damp Woolen Blanket on the Blazing Warmaul Pyre |use Damp Woolen Blanket##25658 |tip It looks like a big burning bonfire.
.' Defend the 2 ogres that spawn until they finish placing corpses around
.' Plant the Kil'sorrow Bodies |q 9932/1
step
goto 73.8,62.6
.talk 18261
..turnin 9931
..turnin 9932
..accept 9934
step
'Hearth to Garadar |goto Nagrand,56.7,34.6,0.5 |use Hearthstone##6948 |noway |c
step
goto 55.5,37.6
.talk 18063
..turnin 9934
step
goto 57.2,35.2
.talk 18808
.' Fly to Swamprat Post |goto Zangarmarsh,85.2,54.2,2 |noway |c
step
goto Zangarmarsh,70.1,33.8 |n
.' The path to Blade's Edge Mountains starts here |goto Zangarmarsh,70.1,33.8,0.5 |noway |c
step
goto Blade's Edge Mountains 52.2,98.7
'Go north to Blade's Edge Mountains |goto Blade's Edge Mountains |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Outland 60-70\\Blade's Edge Mountains (67-68)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Outland 60-70\\Netherstorm (68-70)
startlevel 67.68
dynamic on
step
goto Blade's Edge Mountains,53,96.2
.talk 22489
..accept 10928
step
goto 52.4,93.3
.kill 6 Cavern Crawler##22044+ |q 10928/1
step
goto 51.9,58.4
.talk 21147
..turnin 10928
..accept 10503
step
goto 51.9,57.8
.click Wanted Poster##4371
..accept 10489
step
goto 52.3,57.6
.talk 21117
..accept 10486
step
goto 53.2,55.4
.talk 19470
.home Thunderlord Stronghold
step
goto 52.1,54.1
.talk 18953
.fpath Thunderlord Stronghold
step
goto 51.3,65.5
.kill 12 Bladewing Bloodletter##21033+ |q 10486/1
step
goto 52.3,57.6
.talk 21117
..turnin 10486
..accept 10487
step
'Go west across the big bridge |goto Blade's Edge Mountains,42.8,65.6,0.5 |c
step
goto 41.2,67.2
.from Fey Drake##20713+
.get 4 Dust of the Fey Drake |q 10487/1
step
goto 37.1,70
.from Stronglimb Deeproot##21023 |tip He walks up and down this road.
.get Stronglimb Deeproot's Trunk |q 10489/1
step
goto 51.9,58.4
.talk 21147
..turnin 10489
step
goto 52.3,57.6
.talk 21117
..turnin 10487
..accept 10488
step
goto 50.4,60.9
.' Use Gor'drek's Ointment on 5 Thunderlord Dire Wolves |use Gor'drek's Ointment##30175
.' Strengthen 5 Thunderlord Dire Wolves |q 10488/1
step
goto 52.3,57.6
.talk 21117
..turnin 10488
step
goto 49.8,54 |n
.' The path down to Bladespire Hold starts here |goto Blade's Edge Mountains,49.8,54.1,0.5 |noway |c
step
goto 41.6,54.0
' |from Bladespire Champion##21296+, Bladespire Cook##20334+, Bladespire Shaman##19998+
.kill 30 Bladespire Ogres |q 10503/1
.kill 10 Bladespire Raptor##20728+ |q 10503/2
.collect Thunderlord Clan Artifact##30431 |n
.click the Thunderlord Clan Artifact in your bags |use Thunderlord Clan Artifact##30431
..accept 10524
step
goto 40.2,58.3
.click Thunderlord Clan Drum##7217
.get Thunderlord Clan Drum##30432 |q 10524/2
step
goto 40.9,51.9 |n
.' The path up to the Thunderlord Clan Arrow starts here |goto Blade's Edge Mountains,40.9,51.8,0.5 |noway |c
step
goto 41.5,52.6
.click Thunderlord Clan Arrow##7218
.get Thunderlord Clan Arrow |q 10524/1
step
goto 41.2,46.5
.click Thunderlord Clan Tablet##6420
.get Thunderlord Clan Tablet |q 10524/3
step
goto 51.9,58.4
.talk 21147
..turnin 10503
..accept 10505
step
goto 52.8,59
.talk 21311
..turnin 10524
..accept 10525
.' Use the Fiery Soul Fragment she just gave you |use Fiery Soul Fragment##30481
.' Watch yourself fly around as a red wisp
.' Discover the Final Thunderlord Artifact |q 10525/1
..turnin 10525
..accept 10526
step
goto 51.7,51.5 |n
.' Follow the path down |goto Blade's Edge Mountains,51.7,51.5,0.5 |noway |c
step
goto 45,72.3
.talk 21349
..accept 10542
step
goto 42.4,79.4
' |from Bloodmaul Brewmaster##19957+, Bloodmaul Drudger##21238, Bloodmaul Geomancer##19952+, Bloodmaul Goon##21294+, Bloodmaul Lookout##19956, Bloodmaul Shaman##19992+, Bloodmaul Skirmisher##19948+
.kill 30 Bloodmaul ogres |q 10505/1
.click Bloodmaul Brew Keg##334
.collect 16 Bloodmaul Brutebane Brew##29443 |q 10542 |tip You need the extra Brew to make a later quest much easier.
step
goto 42.1,81.2
.click T'chali's Hookah##5497
.get T'chali's Hookah |q 10542/1
step
'Go south into the mine to 42.5,83.6 |n
.' Go all the way to the back of the cave |goto Blade's Edge Mountains,42.5,83.6,0.5 |c
step
'Go to 39.7,85.5 inside the mine |goto 39.7,85.5
.click Thunderspike##5994
.from Gor Grimgut##21319
.get The Thunderspike |q 10526/1
step
goto 45,72.3
.talk 21349
..turnin 10542
..accept 10545
step
goto 42.7,55.8
.' Use your Bloodmaul Brutebane Keg when semi-close to a Bladespire ogre |use Bloodmaul Brutebane Keg##30353
.' The ogre will run and grab the beer and get drunk
.get 5 Bladespire Ogres drunk |q 10545/1
|modelnpc Bladespire Ogre##21296
step
goto 45,72.3
.talk 21349
..turnin 10545
..accept 10543
step
ding 68
step
goto 45.4,80.4 |n
.' Go to the top of the tower
.kill Grimnok Battleborn##20095 |q 10543/1
step
goto 42.8,46.7 |n
.' The path up to Korgaah starts here |tip It's a stone ramp on the left side of the really tall house.
.' Follow the path up |goto Blade's Edge Mountains,42.8,46.7,0.3 |noway |c
step
goto 43.2,46.1
.' Use your Bloodmaul Brutebane Keg at this spot on the ramp |use Bloodmaul Brutebane Keg##30353
.' Or use your Bloodmaul Brutebane Brew at this spot on the ramp |use Bloodmaul Brutebane Brew##29443
.' Lure the ogres out 1 by 1 and kill them
.' Lure Korgaah out with the beer
.kill Korgaah##20723 |q 10543/2
step
goto 45,72.3
.talk 21349
..turnin 10543
..accept 10544
step
goto 47.1,78
.' Use your Wicked Strong Fetish in the doorway of this building |use Wicked Strong Fetish##30479
.from Bloodmaul Evil Spirit##21452 |tip This Spirit will spawn when you use your Fetish.
.' Use your Wicked Strong Fetish on this building 2 times
.' Curse 2 Bloodmaul Outpost buildings |q 10544/2
step
goto 42.4,53.8
.' Use your Wicked Strong Fetish in the doorway of this building |use Wicked Strong Fetish##30479
.from Bladespire Evil Spirit##21446 |tip This Spirit will spawn when you use your Fetish.
.' Use your Wicked Strong Fetish on this building 5 times
.' Curse 5 Bladespire Hold buildings |q 10544/1
step
goto 45,72.3
.talk 21349
..turnin 10544
step
'Hearth to Thunderlord Stronghold |goto 53.3,55.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 51.9,58.4
.talk 21147
..turnin 10505
step
goto 52.8,59
.talk 21311
..turnin 10526
.talk 21950 |tip You can't see Garm Wolfbrother until after you've completed the quest The Thunderspike
..accept 10718
step
goto 51.9,58.4
.talk 21984
..turnin 10718
..accept 10614
step
goto 55.8,72.7 |n
.' Follow the road east to Mok'nathal Village |goto Blade's Edge Mountains,55.7,72.7,0.5 |noway |c
step
goto 52.0,54.2
.talk 18953
.' Fly to Mok'Nathal Village |goto Blade's Edge Mountains,76.3,65.8,0.7 |noway |c
step
goto 75.1,62.1
.talk 21496
..accept 10565
step
goto 75.3,60.9
.talk 22004
..turnin 10614
..accept 10709
step
goto 76.1,60.3
.talk 21088
..accept 10860
.home Mok'Nathal Village
step
goto 75.9,61.5
.talk 21895
..accept 10617
.talk 21896
..accept 10618
step
goto 76.4,65.8
.talk 22455
.' Fly to Thunderlord Stronghold |goto Blade's Edge Mountains,52.1,54.3,0.5 |noway |c
step
goto 51.9,58.4
.talk 21984
..turnin 10709
..accept 10714
step
goto 52.0,54.2
.talk 18953
.' Fly to Mok'Nathal Village |goto Blade's Edge Mountains,76.3,65.8,0.7 |noway |c
step
goto 73.8,64.9
.from Silkwing Larva##20747+
.get 8 Silkwing Cocoon |q 10617/1
.from Silkwing##21373+
.get 12 Iridescent Wing |q 10618/1
step
goto 76.4,75.4
.from Vekh'nir Keeneye##19982+, Vekh'nir Matriarch##20161, Vekh'nir Dreadhawk##19984+
.collect Vekh'nir Crystal##30561 |q 10565
step
goto 77.8,74.7
.' Stand on the big purple glowing circle on the ground
.click the Vekh'nir Crystal in your bags |use Vekh'nir Crystal##30561
.' Charge the Vekh'nir Crystal |q 10565/1
step
goto 75.1,62.1
.talk 21496
..turnin 10565
..accept 10566
step
goto 75.9,61.5
.talk 21895
..turnin 10617
.talk 21896
..turnin 10618
step
goto 75.3,60.9
.talk 22004
..accept 10846
step
.click Dertrok's Wand Case in your bags |use Dertrok's Wand Case##30650
.collect Dertrok's First Wand##30651 |q 10566
.collect Dertrok's Second Wand##30652 |q 10566
.collect Dertrok's Third Wand##30653 |q 10566
.collect Dertrok's Fourth Wand##30654 |q 10566
step
goto 73.2,74.6
.from Vekh'nir Stormcaller##19983+, Vekh'nir Dreadhawk##19984+
.collect 4 Infused Vekh'nir Crystal##30655 |n
.' Use Dertrok's First Wand on the ogres |use Dertrok's First Wand##30651
.' Test Dertrok's First Wand |q 10566/1
.' Use Dertrok's Second Wand on the ogres |use Dertrok's Second Wand##30652
.' Test Dertrok's Second Wand |q 10566/2
.' Use Dertrok's Third Wand on the ogres |use Dertrok's Third Wand##30653
.' Test Dertrok's Third Wand |q 10566/3
.' Use Dertrok's Fourth Wand on the ogres |use Dertrok's Fourth Wand##30654
.' Test Dertrok's Fourth Wand |q 10566/4
step
'Go inside the cave |n
.' Keep going straight inside the cave to 71.3,74.4
.kill Vekh##22305 |q 10846/1 |tip Inside the arrakoa cave. Just keep going straight inside the cave and you will find him.
step
.'Leave the cave and go to 75.1,62.1 |goto 75.1,62.1
.talk 21496
..turnin 10566
..accept 10615
step
goto 75.3,60.9
.talk 22004
..turnin 10846
..accept 10843
step
goto 74.9,60.5
.talk 22312
..accept 10851
step
goto 68.9,67.2
.from Scalewing Serpent##20749+
.get 3 Serpent Flesh |q 10860/2
step
goto 65.2,56.9
.from Daggermaw Lashtail##20751+
.get 3 Raptor Ribs |q 10860/1
step
goto 59.3,56
.from Bladespire Crusher##20765+, Bladespire Mystic##20766+
.get 5 Bladespire Totem |q 10851/1
step
goto 57.1,54.6
.kill Gnosh Brognat##20768 |q 10843/1 |tip He's Standing under a green canopy draped over some big rocks.
step
goto 75.3,60.9
.talk 22004
..turnin 10843
..accept 10845
step
goto 74.9,60.5
.talk 22312
..turnin 10851
..accept 10853
step
goto 76.1,60.3
.talk 21088 |tip She is the innkeeper.
..turnin 10860
step
goto 65.6,75.6
.' Use your Spirit Calling Totems to plant Spirit Calling Totems |use Spirit Calling Totems##31663 |tip If you run out of totems, you will have to go all the way back to Mok'Nathal Village to get more, so use them with care.
.from Lesser Nether Drake##21004+ |tip Make sure to kill at least 2 drakes per totem before the totem disappears
.get 8 Lesser Nether Drake Spirit |q 10853/1
.kill Dreadwing##21032 |q 10845/1 |tip He is a huge spirit dragon that walks around this area.
step
'Hearth to Mok'Nathal Village |goto Blade's Edge Mountains,75.4,61.4,4.7 |use Hearthstone##6948
step
goto 75.3,60.9
.talk 22004
..turnin 10845
step
goto 74.9,60.5
.talk 22312
..turnin 10853
..accept 10859
step
goto 65.5,46.6
.' Use the Orb Collecting Totem repeatedly at the base of the pole with the purple lightning circle on it |use Orb Collecting Totem##31668
.' It will capture the Razaani Light Orbs as they are produced
.' Collect 15 Razaani Light Orbs |q 10859/1
step
goto 74.9,60.5
.talk 22312
..turnin 10859
..accept 10865
step
goto 75.3,60.9
.talk 22004
..turnin 10865
..accept 10867
step
goto 66.3,44.3
.from Razaani Nexus Stalker##20609+, Razaani Raider##20601+, Razaani Spell-Thief##20614+
.' After a while, Nexus-Prince Razaan will come out of the portal
.from Nexus-Prince Razaan##21057
.click the Collection of Souls hovering over his corpse
.' Get the Collection of Souls |q 10867/1
step
goto 62.2,39.1
.talk 21782
..turnin 10615
..accept 10567
step
goto 62.6,38.2
.talk 22133
..accept 10753
step
goto 61.2,38.4
.talk 22053
..accept 10770
..accept 10771
step
goto 62,39.5
.talk 22007
..accept 10682
step
goto 61.7,39.6
.talk 22216
.fpath Evergrove
.' Fly to Mok'Nathal Village |goto 75.4,61.4,4.7 |noway |c
step
goto 74.9,60.5
.talk 22312
..turnin 10867
step
goto 76.4,65.8
.talk 22455
.' Fly to Thunderlord Stronghold |goto 52.1,56.7,4 |noway |c
step
goto 53.4,55.4
.talk 19470
.home Thunderlord Stronghold
step
goto 52.0,54.2
.talk 18953
.' Fly to Evergrove |goto 62.4,38.4,3 |noway |c
step
goto 68.9,35.6
.kill 2 Fel Corrupter##21300+ |q 10753/3
.kill 4 Felsworn Scalewing##21123+ |q 10753/1
.kill 4 Felsworn Daggermaw##21124+ |q 10753/2
.from Fel Corrupter##21300+
.collect Damaged Mask##31384 |n
.click the Damaged Mask in your bags |use Damaged Mask##31384
..accept 10810
step
goto 71.7,22.4
.click Fertile Volcanic Soil##7297
.' Plant the Ironroot Seeds |q 10771/1
step
goto 71.6,20.3
.click Fertile Volcanic Soil##7297
.' Plant the Ironroot Seeds |q 10771/2
step
goto 71.6,18.5
.click Fertile Volcanic Soil##7297
.' Plant the Ironroot Seeds |q 10771/3
step
goto 70.7,20.2
.kill 8 Scorch Imp##21021+ |q 10770/1
step
goto 62.7,40.4
.talk 22020
..turnin 10810
..accept 10812
step
goto 62.2,40.1
.talk 22127
..turnin 10812
..accept 10819
step
goto 62.6,38.2
.talk 22133
..turnin 10753
step
goto 61.2,38.4
.talk 22053
..turnin 10770
..turnin 10771
step
goto 58.8,39.1
.talk 21981 |tip He wanders around the Wyrmcult camps.
.' Negotiate with Overseer Nuaar |q 10682/1
step
goto 62,39.5
.talk 22007
..turnin 10682
..accept 10713
.talk 21983
..accept 10717
step
goto 59.9,37.8
.kill 10 Wyrmcult Hewer##21810+ |q 10713/1
.from Wyrmcult Poacher##21809+
.get 5 Wyrmcult Net |q 10717/1
.collect Meeting Note##31120 |n
.click the Meeting Note in your bags |use Meeting Note##31120
..accept 10719
step
goto 62,39.5
.talk 21983
..turnin 10717
..accept 10747
.talk 22007
..turnin 10713
..turnin 10719
..accept 10894
step
'Make sure you have your Felsworn Gas Mask in your bags |collect Felsworn Gas Mask##31366 |q 10819
.' It has a 60 minute timer on it
.' If you need another one, talk to Wildlord Antelarion at [62.6,39.6]
.' Skip to the next step
step
goto 73.3,40.1
.' Use your Felsworn Gas Mask to equip it |use Felsworn Gas Mask##31366
.' Wear the Felsworn Gas Mask |havebuff Interface\Icons\INV_Helmet_31 |c |q 10821
.click Legion Communicator##7091 |tip Between 2 big green floating crystals. You must be wearing the Felsworn Gas Mask to use the Legion Communicator
..turnin 10819
..accept 10820
step
goto 74.9,39.9
.kill 4 Doomforge Attendant##19961+ |q 10820/1
.kill 4 Doomforge Engineer##19960+ |q 10820/2
step
goto 73.3,40.1
.' Use your Felsworn Gas Mask to equip it |use Felsworn Gas Mask##31366
.' Wear the Felsworn Gas Mask |havebuff Interface\Icons\INV_Helmet_31 |c |q 10821
.click Legion Communicator##7091
..turnin 10820 |tip Between 2 big green floating crystals. Click the Legion Communicator. You must be wearing the Felsworn Gas Mask to use the Legion Communicator
step
goto 63.9,31.5
.from Ruuan'ok Ravenguard##19987+, Ruuan'ok Skyfury##19986+, Ruuan'ok Cloudgazer##19985+, Ruuan'ok Matriarch##20211+
.collect 6 Ruuan'ok Claw##30704 |q 10567
step
goto 64.5,33.1
.' Use the 6 Ruuan'ok Claws inside the glowing circle |use Ruuan'ok Claw##30704
.from Harbinger of the Raven##21767 |tip On the little island in the pond.
.get Harbinger's Pendant##30706 |q 10567/1
step
goto 58.4,30.8
.' Stand near to the little torch stick on the hill
.' Use Rexxar's Whistle |use Rexxar's Whistle##31128
.' Position the green circle on the ground near the 2 ogres talking
.' The owl will fly over to them
.' Eavesdrop on the Bloodmaul ogres' plans |q 10714/1
step
'Hearth to Thunderlord Stronghold |goto 53.3,55.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 51.9,58.4
.talk 21984
..turnin 10714
..accept 10783
step
goto 52.0,54.2
.talk 18953
.' Fly to Evergrove |goto 62.4,38.4,3 |noway |c
step
goto 62.2,39.1
.talk 21782
..turnin 10567
..accept 10607
step
goto 53.3,41.2
.talk 22103
..turnin 10783
..accept 10715
step
goto 49,44.5
.from Crust Burster##16844+
.get 7 Crust Burster Venom Gland |q 10715/1
step
goto 53.3,41.2
.talk 22103
..turnin 10715
..accept 10749
step
goto 61.7,39.6
.talk 22216
.' Fly to Thunderlord Stronghold, Blade's Edge Mountains |goto 52.1,54.3,0.5 |noway |c
step
goto 51.9,58.4
.talk 21984
..turnin 10749
..accept 10720
.talk 21147
..accept 10784
step
goto 52.0,54.2
.talk 18953
.' Fly to Evergrove |goto 62.4,38.4,3 |noway |c
step
goto 56.2,26.7
.' Clear the mobs around the kegs around this area to make the next few steps easier
.kill 10 Bloodmaul Mauler##19993+ |q 10784/1
.kill 5 Bloodmaul Warlock##19994+ |q 10784/2
step
goto 56.4,29.2
.click your Kodohide Drum next to the small stone burrow |use Kodohide Drum##31141
.' Coax a marmot |havebuff Interface\Icons\INV_Misc_Drum_01
step
goto 55.4,28.2
.' As a marmot, do the following:
.' Stand next to the wooden keg
.click the Poison Kegs button on your pet bar
.' Poison the Keg of Ripe Moonshine |q 10720/2 |tip It's a wooden keg laying on its side on the ground.
step
goto 55.3,26
.' Stand next to the wooden keg
.click the Poison Kegs button on your pet bar
.' Poison the Keg of Green Spot Grog |q 10720/1 |tip It's a wooden keg laying on its side on the ground.
step
goto 55.9,23.1
.' Stand next to the wooden keg
.click the Poison Kegs button on your pet bar
.' Poison the Keg of Fermented Seed Beer |q 10720/3 |tip It's a wooden keg laying on its side on the ground.
step
goto 56,29
.' Right-click the marmot buff at the top right of your screen to stop playing as a marmot.
.' Dismiss the marmot |nobuff Coax Marmot |q 10720
step
goto 61.6,39.6
.talk 22216
.' Fly to Thunderlord Stronghold |goto 52.1,54.3,0.5 |noway |c
step
goto 51.9,58.4
.talk 21984
..turnin 10720
..accept 10721
.talk 21147
..turnin 10784
step
goto 52.0,54.2
.talk 18953
.' Fly to Evergrove |goto 61.7,39.6,0.5 |noway |c
step
goto 60.2,47.6
.' Use Huffer's Whistle in your bags |use Huffer's Whistle##31350
.' A boar will appear and start distracting Grulloc
.click Grulloc's Sack##323 |tip Run away right after you get the sack.
.get Grulloc's Sack |q 10721/1
step
goto 53.3,41.2
.talk 22103
..turnin 10721
..accept 10785
step
'Hearth to Thunderlord Stronghold |goto Blade's Edge Mountains,53.4,55.4,4 |use Hearthstone##6948
step
goto 51.9,58.4
.talk 21984
..turnin 10785
..accept 10723
.talk 21147
..accept 10786
step
goto 52.0,54.2
.talk 18953
.' Fly to Evergrove |goto Blade's Edge Mountains,61.7,39.6,0.5 |noway |c
step
'Go northwest across the big bridge |goto Blade's Edge Mountains,53.1,37.9,0.5
step
goto 49.9,35.9
.talk 22386
..turnin 10894
..accept 10893
step
goto 49.5,35.8 |n
.' Go into the tunnel |goto 49.5,35.8,0.5 |noway |c
step
goto 46.7,32.9
.kill Draaca Longtail##22396 |q 10893/1 |tip She walks near the Raven's Wood end of the cave.
step
goto 49.9,35.9
.talk 22386
..turnin 10893
..accept 10722
step
'Go northwest through the tunnel to Grishnath |goto Blade's Edge Mountains,43.1,29.9,0.3
step
goto 40.9,20.4
.from Grishna Harbinger##19989+, Grishna Falconwing##19988+
.' Get the Understanding Ravenspeech buff |havebuff Interface\Icons\Ability_Hunter_Pet_DragonHawk
.' You must deliver the killing blow (not your pet) to receive the buff
.' The buff lasts for 2 minutes
.' Anytime the buff wears off, kill arakkoas again to get it back
step
goto 40.7,18.7
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on
.' Receive the Third Prophecy |q 10607/3 |tip On the ground, next to a pond with basilisks in it. It looks like a wooden totem.
step
goto 39,17.2
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on
.' Receive the First Prophecy |q 10607/1 |tip Up the left ramp, then left across the hanging bridge. It looks like a wooden totem.
step
goto 42.5,21.6
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on
.' Receive the Second Prophecy |q 10607/2 |tip Up the right ramp, then go right across the hanging bridge, then down the stairs to the left. It looks like a wooden totem.
step
goto 40.2,23
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on |tip On the ground, in front of a hut. It looks like a wooden totem.
.' Receive the Fourth Prophecy |q 10607/4
.from Grishna Scorncrow##19990+, Grishna Harbinger##19989+, Grishna Falconwing##19988+
.collect Orb of the Grishna##31489 |n
.click the Orb of the Grishna in your bags |use Orb of the Grishna##31489
..accept 10825
step
goto 32.3,34.9
.' Go inside the cave
.' Use the Blackwhelp Net on Wyrmcult Blackwhelps |use Blackwhelp Net##31129
.' Capture 10 Wyrmcult Blackwhelps |q 10747/1
.from Wyrmcult Scout##21637+, Wyrmcult Acolyte##21383+, Wyrmcult Zealot##21382+
.collect 5 Costume Scraps##31121 |q 10722
step
goto 32.6,37.5
.' Combine your 5 Costume Scraps to make an Overseer Disguise |use Costume Scraps##31121
.' Put on the Overseer Disguise |havebuff Interface\Icons\INV_Chest_Wolf |q 10722 |use Overseer Disguise##31122
.talk 22019
.' Attend the meeting with Kolphis Darkscale |q 10722/1
step
goto 30.3,24.6
.kill 5 Boulder'mok Brute##21046+ |q 10786/1
.kill 3 Boulder'mok Shaman##21047+ |q 10786/2
.collect 3 Grisly Totem##31754 |q 10723
step
goto 30.6,22.2
.click Gorgrom's Altar##206
.' He will run up to the altar and die
.' Use the Grisly Totems on his corpse |use Grisly Totem##31754
.' Plant 3 Grisly Totems |q 10723/1
step
goto 62,39.5
.talk 21983
..turnin 10747
.talk 22007
..turnin 10722
..accept 10748
..turnin 10825
..accept 10829
step
goto 62.2,39.1
.talk 21782
..turnin 10607
step
goto 61.7,39.6
.talk 22216
.' Fly to Thunderlord Stronghold, Blade's Edge Mountains |goto 52.1,54.3,0.5 |noway |c
step
goto 51.9,58.4
.talk 21984
..turnin 10723
.talk 21147
..turnin 10786
step
goto 61.6,39.6
.talk 18953
.' Fly to Evergrove |goto Blade's Edge Mountains,62.4,38.4,3 |noway |c
step
goto 36.6,23.1
.talk 22215
..turnin 10829
..accept 10830
step
goto 39.3,20.2
.click Grishnath Orb##7011
.collect 5 Grishnath Orb##31495 |q 10830
step
goto 30.1,28.6
.from Dire Raven##21042
.collect 5 Dire Pinfeather##31517 |q 10830
step
goto 33.8,29.4
.click your Grishnath Orbs in your bags to combine the orbs and pinfeathers |use Grishnath Orb##31495
.collect 5 Exorcism Feather##31518 |n |q 10830
.' Use Exorcism Feathers on the Raven's Wood Leafbeards |use Exorcism Feather##31518
.' Kill the Koi Koi spirits that spawn to free the trees |tip The trees will stop attacking you once the spirit is dead.
.' Free 5 Raven's Wood Leafbeards |q 10830/1
|modelnpc Koi-Koi Spirit##22226
step
goto 36.6,23.1
.talk 22215
..turnin 10830
step
'Go southwest to the Blackwing Coven |goto Blade's Edge Mountains,31.9,33.1,0.5
step
'Go inside the cave |goto Blade's Edge Mountains,32.1,34.1,0.3
step
goto 33.9,35.4
.kill 1 Maxnar the Ashmaw##21389 |q 10748/1 |tip Follow the cave path until it dead ends into him.
step
.'Hearth to Thunderlord Stronghold |goto Blade's Edge Mountains,53.4,55.4,4 |use Hearthstone##6948
step
goto 52.0,54.2
.talk 18953
.' Fly to Evergrove |goto Blade's Edge Mountains,62.4,38.4,3 |noway |c
step
goto 62,39.5
.talk 22007
..turnin 10748
step
goto Netherstorm 20.2,56.1
.' Go northeast to Netherstorm |goto Netherstorm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Outland 60-70\\Netherstorm (68-70)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Northrend 70-80\\Borean Tundra (70-72)
startlevel 68.97
dynamic on
step
goto Netherstorm 20.5,56.3
.talk 19569
..accept 10183
step
goto 31.5,56.6
.talk 19578
..accept 10190
step
goto 26.5,51.9
.from Phase Hunter##18879+
.' You will see a message in your chat window saying 'Phase Hunter is very weak'
.' Use your Battery Recharging Blaster on them when you see this message |use Battery Recharging Blaster##28369
.' Battery Charge Level (10) |q 10190/1
step
goto 31.5,56.6
.talk 19578
..turnin 10190
step
ding 69
step
goto 32.3,63.9
.talk 19617
..accept 10342
step
goto 32.4,64.2
.talk 19880
..accept 10265
step
goto 32,64
.talk 19468
..accept 10189
only if rep ('The Scryers') >= Neutral
step
goto 32.1,64.2
.talk 19466
..accept 10241
only if rep ('The Aldor') >= Neutral
step
goto 32.0,64.4
.talk 19571
..home Area 52
step
goto 32.7,65
.talk 19570
..turnin 10183
..accept 10186
step
goto 31.4,66.2
.talk 19217
..accept 10173
step
goto 33.7,64
.talk 18938
..fpath Area 52
step
goto 33.1,60
.from Shaleskin Flayer##20210
.get 5 Shaleskin Shale |q 10342/1
step
goto 31.5,56.6
.talk 19589
..accept 10191
.' Escort Maxx A. Million Mk. V to safety through the ruins |q 10191/1
.click the red glowing crystals on the ground while escorting Maxx A. Million Mk. V
.get 10 Etherlithium Matrix Crystal |q 10186/1
step
goto 31.5,56.6
.talk 19578
..turnin 10191
step
goto 32.3,63.9
.talk 19617
..turnin 10342
..accept 10199
step
goto 32.7,65
.talk 19570
..turnin 10186
..accept 10203
..accept 10225
step
goto 32.4,66.8
.talk 19709
..turnin 10225
..accept 10224
step
goto 34.8,59.1
.from Mana Wraith##18864+
.get 7 Mana Wraith Essence |q 10224/1
step
goto 32.4,66.8
.talk 19709
..turnin 10224
..accept 10226
step
goto 27.8,65
.from Captain Arathyn##19635 |tip He walks around this area on a big purple bird.
.get B'naar Personnel Roster |q 10189/1
only if rep ('The Scryers') >= Neutral
step
goto 26.3,66.7
.kill 8 Sunfury Magister##18855+ |q 10241/1
.kill 8 Sunfury Bloodwarder##18853+ |q 10241/2
only if rep ('The Aldor') >= Neutral
step
goto 35.4,76.5
.' Use the Elemental Power Extractor on Sundered Rumblers and Warp Aberrations and kill them |use Elemental Power Extractor##28547
.click the blue crystal floating over their corpses
.get 5 Elemental Power |q 10226/1
|modelnpc Sundered Rumbler##18881
|modelnpc Warp Aberration##18865
step
goto 40.3,72.9
.click Multi-Spectrum Terrain Analyzer##7082
.' Retrieve the Multi-Spectrum Terrain Analyzer |q 10203/3
step
goto 41,73.8
.click Hyper Rotational Dig-A-Matic##7080
.' Retrieve the Hyper Rotational Dig-A-Matic |q 10203/1
step
goto 42.4,72.8
.from Pentatharon##20215 |tip To the right as you enter the ruins, up on a small stage looking platform.
.get Arklon Crystal Artifact |q 10265/1
step
goto 42.5,72.2
.click Big Wagon Full of Explosives##7083
.' Retrieve the Big Wagon Full of Explosives |q 10203/4
step
goto 41.4,71.8
.click Servo-Pneumatic Dredging Claw##7081
.' Retrieve the Servo-Pneumatic Dredging Claw |q 10203/2
step
goto 40.9,72.5
.' Stand next to the broken, smoking altar on the small hill
.' Use your Conjuring Powder to summon Ekkorash |use Conjuring Powder##29207
.from Ekkorash##19493
.get Archmage Vargoth's Staff |q 10173/1
step
goto 44.6,72.1
.from Nether Ray##18880+
.get 5 Nether Ray Stinger |q 10199/1
step
goto 34.2,68.1
.talk 19634
..turnin 10203
..accept 10221
step
goto 32.4,66.8
.talk 19709
..turnin 10226
step
goto 31.4,66.2
.talk 19217
..turnin 10173
..accept 10300
step
goto 32.4,64.2
.talk 19880
..turnin 10265
..accept 10262
step
goto 32.3,63.9
.talk 19617
..turnin 10199
step
goto 33,64.7
.talk 19645
..accept 10206
step
goto 32,64
.talk 19468
..turnin 10189
..accept 10193
.talk 19469
..accept 10204
only if rep ('The Scryers') >= Neutral
step
goto 32.1,64.2
.talk 19466
..turnin 10241
..accept 10313
.talk 19467
..accept 10243
only if rep ('The Aldor') >= Neutral
step
goto 33.5,53
.from Disembodied Exarch##21058+, Disembodied Protector##18873+, Disembodied Vindicator##18872+
.get 4 Flawless Crystal Shard |q 10300/1
step
goto 35,59.6
.' Dr. Boom sends out little walking bombs that blow up |tip When you see a clear passage to Dr. Boom, click the Boom's Doom in your bags, then run close enough to Dr. Boom so you can put the green circle under him, then click to throw the bomb.  Get just close enough so that the very edge of the green circle is under his feet.  This way, you will be close enough to hit him, but far enough away that he won't throw bombs back at you.
.click Boom's Doom in your bags |use Boom's Doom##29429
.kill Dr. Boom##20284 |q 10221/1
step
goto 31.4,66.2
.talk 19217
..turnin 10300
..accept 10174
step
goto 34.2,68.1
.talk 19634
..turnin 10221
step
goto 26.3,66.7
.' Kill Sunfury Magisters
.get a Bloodgem Shard |n
.' Use the Bloodgem Shard next to a big red floating crystal |use Bloodgem Shard##28452
.' Siphon the Bloodgem Crystal |q 10204/1
|modelnpc Sunfury Magister##18855
only if rep ('The Scryers') >= Neutral
step
goto 26.9,70.5
.kill 2 Sunfury Warp-Master##18857+ |q 10193/1
.kill 6 Sunfury Warp-Engineer##18852+ |q 10193/2
.kill 8 Sunfury Geologist##19779+ |q 10193/3
only if rep ('The Scryers') >= Neutral
step
goto 25.7,60.6
.' Stand next to the Northern Pipeline
.' Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
.' Measure the Northern Pipeline |q 10313/1
only if rep ('The Aldor') >= Neutral
step
goto 20.9,66.9
.' Stand next to the Western Pipeline
.' Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
.' Measure the Western Pipeline |q 10313/4
only if rep ('The Aldor') >= Neutral
step
goto 20.7,70.7
.' Stand next to the Southern Pipeline
.' Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
.' Measure the Southern Pipeline |q 10313/3
only if rep ('The Aldor') >= Neutral
step
goto 23.2,68.2
.click the B'naar Control Console |tip Inside the doorway northeast of the Southern Pipeline, to the left.
..turnin 10243
..accept 10245
only if rep ('The Aldor') >= Neutral
step
goto 29,72.7
.' Stand next to the Eastern Pipeline
.' Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
.' Measure the Eastern Pipeline |q 10313/2
only if rep ('The Aldor') >= Neutral
step
goto 30.2,75.5
.from Zaxxis Raider##18875+, Zaxxis Stalker##19642+
.get 10 Zaxxis Insignia |q 10262/1
.click Ethereal Technology##7088
.get 10 Ethereal Technology |q 10206/1
step
goto 33,64.7
.talk 19645
..turnin 10206
step
goto 32.4,64.2
.talk 19880
..turnin 10262
..accept 10205
step
goto 32,64
.talk 19468
..turnin 10193
..accept 10329
.talk 19469
..turnin 10204
only if rep ('The Scryers') >= Neutral
step
goto 32.1,64.2
.talk 19466
..turnin 10313
.talk 19467
..turnin 10245
..accept 10299
only if rep ('The Aldor') >= Neutral
step
goto 23.9,70.7
.from Overseer Theredis##20416
.get B'naar Access Crystal |q 10329/2
only if rep ('The Scryers') >= Neutral
step
goto 23.2,68.1
'Before you start this event, make sure you have cleared the main room of enemies.
.click B'naar Control Console##7076
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge B'naar |q 10329/1
|modelnpc Sunfury Technician##20218
only if rep ('The Scryers') >= Neutral
step
'Go inside Manaforge B'naar to 23.3,68.6 |goto 23.9,70.7
.from Overseer Theredis##20416
.get B'naar Access Crystal |q 10299/2
only if rep ('The Aldor') >= Neutral
step
goto 23.2,68.1
.' Kill all Warp-Engineers in the nearest area to make your life easier.
.click the B'naar Control Console
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge B'naar |q 10299/1
only if rep ('The Aldor') >= Neutral
step
'Hearth to Area 52 |goto Netherstorm,32.3,65.5,3 |use Hearthstone##6948 |noway |c
step
goto 32.1,64.2
.talk 19467
..turnin 10299
..accept 10321
.talk 19466
..accept 10246
only if rep ('The Aldor') >= Neutral
step
goto 32,64
.talk 19468
..turnin 10329
..accept 10194
only if rep ('The Scryers') >= Neutral
step
goto 28.2,79.4
.kill Warp-Raider Nesaad##19641 |q 10205/1
step
goto 32.4,64.2
.talk 19880
..turnin 10205
..accept 10266
step
goto 33.8,64.2
.talk 20162
..turnin 10194
..accept 10652
.talk 20162
..click "I'm as ready as I'll ever be."
..'You will fly to Manaforge Coruu |goto 48.0,86.0,2 |noway |c
only if rep ('The Scryers') >= Neutral
step
goto 48.2,86.6
.talk 19840
..turnin 10652
..accept 10197
only if rep ('The Scryers') >= Neutral
step
goto 47.7,84.9
.from Sunfury Arcanists##20134+
.get Sunfury Arcanist Robes |q 10197/3
only if rep ('The Scryers') >= Neutral
step
goto 49,81.5
.from Sunfury Researcher##20136+
.get Sunfury Researcher Gloves |q 10197/1
only if rep ('The Scryers') >= Neutral
step
'Go outside to 50.8,83.2 |goto 50.8,83.2
.from Sunfury Guardsmen##18850
.get Sunfury Guardsman Medallion |q 10197/2
only if rep ('The Scryers') >= Neutral
step
goto 48.2,86.6
.talk 19840
..turnin 10197
..accept 10198
only if rep ('The Scryers') >= Neutral
step
'Use the Sunfury Disguise in your bags |havebuff Sunfury Disguise |use Sunfury Disguise##28607
only if rep ('The Scryers') >= Neutral
step
'Go inside Manaforge Coruu to 48.2,84.1 |goto 48.2,84.1
.' Be careful to avoid the Arcane Annihilator, he can see through the disguise and will attack you.
.' Stand between the 2 blood elves at the back of the room with a bunch blood elves lined up in it
.' Listen to them talk
.' Gather the Information |q 10198/1
|modelnpc Arcane Annihilator##18856
only if rep ('The Scryers') >= Neutral
step
'Go outside to 48.2,86.6 |goto 48.2,86.6
.talk 19840
..turnin 10198
..accept 10330
only if rep ('The Scryers') >= Neutral
step
'Go inside Manaforge Coruu to 49,81.5 |goto 49,81.5
.from Overseer Seylanna##20397
.get Coruu Access Crystal |q 10330/2
'Before you start the next part, make sure you clear the room of enemies.
.click Coruu Control Console##7076
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge Coruu |q 10330/1
only if rep ('The Scryers') >= Neutral
step
'Go outside to 48.2,86.6 |goto 48.2,86.6
.talk 19840
..turnin 10330
..accept 10200
only if rep ('The Scryers') >= Neutral
step
goto 45.9,79.4
.kill 8 Sunfury Arcanist##20134+ |q 10246/2
only if rep ('The Aldor') >= Neutral
step
'Go inside Manaforge Coruu to 49,81.5 |goto 49,81.5
.kill 5 Sunfury Researcher##20136+ |q 10246/1
.' Kill Overseer Seylanna
..collect Coruu Access Crystal##29396 |q 10321 |sticky
.click the Coruu Control Console
..click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge Coruu |q 10321/1
only if rep ('The Aldor') >= Neutral
step
goto 57.7,85.2
.talk 20464
..accept 10334
.talk 20463
..accept 10331
step
goto 57.5,86.3
.talk 19488
..accept 10184
.' Use Archmage Vargoth's Staff |use Archmage Vargoth's Staff##28455
.talk 19644
..turnin 10174
..accept 10188
.talk 19488
..accept 10185
.talk 19489
..accept 10343
step
.' Kill 20 Severed Spirits as you quest around this area
.' Skip to the next step of the guide
|modelnpc Severed Spirit##19881
step
goto 59.1,78.8
.talk 20415
..turnin 10334
..accept 10337
.' Escort Bessy to Thadell |q 10337/1 |tip When escorting Bessy, let her get hit first, or else she won't help you fight.
step
goto 57.7,85.2
.talk 20464
..turnin 10337
step
goto 58.4,88.3
.from Abjurist Belmara##19546
.collect Belmara's Tome##29234 |n
.click Belmara's Tome in your bags |use Belmara's Tome##29234
..accept 10305 |tip She walks around in this area, some searching may be necessary.
step
goto 59.6,87.7
.from Cohlien Frostweaver##19545 |tip He is a gnome that walks around this area, so some searching may be necessary.
.collect Cohlien's Cap##29236 |n
.click Cohlien's Cap in your bags |use Cohlien's Cap##29236
..accept 10307
step
goto 60.4,88
.from Battle-Mage Dathric##19543 |tip He is inside the building that looks like a town hall, in the big room, in the back left corner on the stage.
.collect Dathric's Blade##29233 |n
.click Dathric's Blade |use Dathric's Blade##29233
..accept 10182
step
goto 59.9,85.6
.from Conjurer Luminrath##19544 |tip He walks around this area, so some searching may be necessary.
.collect Luminrath's Mantle##29235 |n
.click Luminrath's Mantle in your bags |use Luminrath's Mantle##29235
..accept 10306
step
goto 61,85
.' Kill Kirin'Var Apprentices
.get Smithing Hammer |q 10331/1
step
'Make sure you have killed 20 Severed Spirits |kill 20 Severed Spirit |q 10184/1
|modelnpc Severed Spirit##19881
step
goto 57.7,85.2
.talk 20463
..turnin 10331
..accept 10332
step
goto 57.5,86.3
.talk 19488
..turnin 10184
..accept 10312
step
goto 61.3,85
.kill Rhonsus##20410 |q 10332/1 |tip He is usually standing inside the blacksmith house. He sometimes walks around this area, so you may need to look for him.
step
goto 57.7,85.2
.talk 20463
..turnin 10332
step
'Kill 10 Mana Seekers and 10 Mageslayers as you do the following steps: |n
.' Skip to the next step of the guide
|modelnpc Mana Seeker##18867
|modelnpc Mageslayer##18866
step
goto 56.9,86.8
.' Go inside the little house
.click Dathric's Blade when standing next to the Weapon Rack |use Dathric's Blade##28351
.' Put Dathric's Spirit to Rest |q 10182/1
step
goto 56.4,87.8
.' Go inside the little house
.click Luminrath's Mantle when standing next to the Dresser |use Luminrath's Mantle##28352
.' Put Luminrath's Spirit to Rest |q 10306/1
step
goto 55.7,87.2
.click Mana Bomb Fragment##7214
.get Mana Bomb Fragment |q 10343/1
step
goto 55.1,87.5
.' The Footlocker is in a pile of junk in a house with no roof |tip A small rectangular wooden box in a pile of junk in the corner of a house with no roof.
.click Cohlien's Cap when standing next to the Foot Locker |use Cohlien's Cap##28353
.' Put Cohlien's Spirit to Rest |q 10307/1
step
goto 55.5,86.5
.' Go inside the house with a huge log laying diagonally into it
.click Belmara's Tome when standing next to the Bookshelf |use Belmara's Tome##28336
.' Put Belmara's Spirit to Rest |q 10305/1
step
goto 55.5,86.7
.'Make sure you've done the following:
.kill 10 Mana Seeker##18867+ |q 10185/1
.kill 10 Mageslayer##18866+ |q 10185/2
step
goto 57.5,86.3
.talk 19488
..turnin 10305
..turnin 10185
..turnin 10307
..turnin 10182
..turnin 10306
.talk 19489
..turnin 10343
..accept 10239
step
goto 60.4,88
.from Battle-Mage Dathric##19543 |tip He is inside the building that looks like a town hall, in the big room, in the back left corner on the stage.
.get Annals of Kirin'Var |q 10312/1
step
goto 57.5,86.3
.talk 19488
..turnin 10312
..accept 10316
step
goto 60.3,78
.' Go inside the barn
.click Necromantic Focus##4972
..turnin 10316
..accept 10314
step
goto 59.8,79.5
.from Tormented Soul##20512+, Tormented Citizen##21065+, Kirin'Var Ghost##20480+, Kirin'Var Spectre##20496+
.get 10 Loathsome Remnant |q 10314/1
step
goto 57.5,86.3
.talk 19488
..turnin 10314
..accept 10319
step
goto 59.9,80.4
.' Go behind the first building on the right as you walk over the bridge
.click Suspicious Outhouse##3332 |tip The middle outhouse behind the first building on your right as you walk over the bridge, headed away from the huge tower where the quest gives are.
.get Naberius's Phylactery |q 10319/1
step
goto 57.5,86.3
.talk 19488
..turnin 10319
step
goto 51.1,82.5
.click Energy Isolation Cube##7088 |tip They look like little clear boxes with purple light in them on the ground.
.get 10 Energy Isolation Cube |q 10239/1
.from Spellbinder Maryana##19593 |tip She wanders around outside in this area, so some searching may be necessary.
.get Sigil of Krasus |q 10188/1
step
goto 51.1,80.7
'Use Archmage Vargoth's Staff |use Archmage Vargoth's Staff##28455
.talk 19644
..turnin 10188
..accept 10192
step
goto 57.5,86.3
.talk 19489
..turnin 10239
step
goto 57.6,89.6
.click Krasus's Compendium - Chapter 2##6817
.get Krasus's Compendium - Chapter 2 |q 10192/2
step
goto 58.6,89.2
.click Krasus's Compendium - Chapter 1##440
.get Krasus's Compendium - Chapter 1 |q 10192/1
step
goto 58.8,87.9
.click Krasus's Compendium - Chapter 3##525
.get Krasus's Compendium - Chapter 3 |q 10192/3
step
'Use Archmage Vargoth's Staff |use Archmage Vargoth's Staff##28455
.talk 19644
..turnin 10192
..accept 10301
step
goto Netherstorm,57.6,86.3
.talk 19489
..accept 10233
..accept 10240
step
goto 57.5,86.4
.talk 19488
..accept 10222
step
goto 59.3,85.4
.' Use the Rune Activation Device next to the Kirin'Var Rune |use Rune Activation Device##28725
.' Activate Eastern Rune |q 10240/1
step
goto 57.3,82.9
.' Use the Rune Activation Device next to the Kirin'Var Rune |use Rune Activation Device##28725
.' Activate Northeastern Rune |q 10240/2
step
goto 54.3,86.1
.' Use the Rune Activation Device next to the Kirin'Var Rune |use Rune Activation Device##28725
.' Activate Western Rune |q 10240/3
step
goto 55.2,79.7
.' Use Flaming Torch on Sunfury Ballistas and Tents |use Flaming Torch##28550
.' Destroy 4 Sunfury Ballistas |q 10233/1 |tip They look sort of like catapults all around this area.
.' Destroy 4 Sunfury Tents |q 10233/2
.kill 10 Sunfury Archer##19707+ |q 10222/1
step
goto 56.6,78.2
.from Spellreaver Marathelle##19926+
..get Heliotrope Oculus |q 10301/1
step
'Use Archmage Vargoth's Staff |use Archmage Vargoth's Staff##28455
.talk 19644
..turnin 10301
..accept 10209
step
goto 57.5,86.3
.talk 19488
..turnin 10222
..accept 10223
step
goto 57.6,86.3
.talk 19489
..turnin 10233
..turnin 10240
step
goto 56.0,66.8
.kill Master Daellis Dawnstrike##19705 |q 10223/1
step
goto 59.2,62.9
.from Summoner Kanthin##19657 |tip He patrols this area, some searching may be necessary.
.get Stone of Glacius##28479 |q 10209/1
step
'Use Archmage Vargoth's Staff |use Archmage Vargoth's Staff##28455
.talk 19644
..turnin 10209
..accept 10176
step
goto 57.5,86.3
.talk 19488
..turnin 10223
step
goto 58.1,86.5
.kill Ar'kelos##19494 |q 10176/1 |tip He on the bottom level of the tower.
step
goto 58.3,86.4
.talk 19481 |tip He's at the top of the tower.
..turnin 10176
step
'Use Archmage Vargoth's Staff |use Archmage Vargoth's Staff##28455
.talk 19644
..turnin 10176
step
'Hearth to Area 52 |goto Netherstorm,32.0,64.3,1 |use Hearthstone##6948 |noway |c
step
goto 32,64
.talk 19468
..turnin 10200
only if rep ('The Scryers') >= Neutral
step
goto 32.1,64.2
.talk 19466
..turnin 10246
..accept 10328
.talk 19467
..turnin 10321
..accept 10322
only if rep ('The Aldor') >= Neutral
step
goto 32.0,64.0
.talk 19469
.accept 10341
.talk 19468
..accept 10338
only if rep ('The Scryers') >= Neutral
step
goto 33,64.7
.talk 19645
..accept 10333
..accept 10232
step
goto 46.7,56.9
.talk 20066
..turnin 10266
..accept 10267
step
goto 46.6,56.5
.talk 19728
..turnin 10333
..accept 10234
step
goto 46.4,56.4
.talk 20810
..accept 10417
..accept 10348
step
goto 46.5,56.0
.talk 20921
..accept 10433
step
goto 48.2,55.0
.click Diagnostic Equipment##7192 |tip It looks like a small cylinder machine with pink electricity inside of it.
.get Diagnostic Results |q 10417/1
step
goto 48.2,53.9
.click Ivory Bell##7176
.get 15 Ivory Bell |q 10348/1
.from Ripfang Lynx##20671
.get 10 Ripfang Lynx Pelt |q 10433/1
step
goto 48.8,59.3
.kill 15 Gan'arg Engineer##16948+ |q 10232/2
.kill 5 Mo'arg Doomsmith##16944+ |q 10232/1
.click Fel Reaver Part##7114
.get 10 Fel Reaver Parts |q 10234/1 |tip They look like metal parts on the ground around this area.
step
goto 46.6,56.5
.talk 19728
..turnin 10234
..accept 10235
step
goto 46.4,56.4
.talk 20810
..turnin 10348
..turnin 10417
..accept 10418
step
goto 46.5,56.0
.talk 20921
..turnin 10433
step
goto 46.8,53.9
.kill 8 Barbscale Crocolisk##20773+ |q 10418/1
step
goto 50.7,57.1
.from Doomclaw##19738
..get Doomclaw's Hand |q 10235/1
step
goto 57.9,63.4
.from Sunfury Conjurer##20139+
.get 1 Sunfury Arcane Briefing|q 10328/2
.from Sunfury Bowman##20207+, Sunfury Centurion##20140+
.get 1 Sunfury Military Briefing|q 10328/1
only if rep ('The Aldor') >= Neutral
step
goto 57.9,63.4
.kill 8 Sunfury Conjurer##20139+ |q 10341/1
.kill 6 Sunfury Bowman##20207+ |q 10341/2
.kill 4 Sunfury Centurion##20140+ |q 10341/3
only if rep ('The Scryers') >= Neutral
step
goto 57.6,63.9
.click Box of Surveying Equipment##6881 |tip They look like white boxes scattered throughout this area.
.get 10 Box of Surveying Equipment |q 10267/1
step
'Go inside Manaforge Duro to [60.0,68.5]|goto 60.0,68.5
.from Overseer Athanel##20435
.get 1 Duro Access Crystal|q 10322/2
only if rep ('The Aldor') >= Neutral
step
goto 59.1,66.8
.click the Duro Control Console
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge Duro |q 10322/1
only if rep ('The Aldor') >= Neutral
step
'Go inside Manaforge Duro to 60.0,68.5 |goto 60.0,68.5
.from Overseer Athanel##20435
.get 1 Duro Access Crystal|q 10338/2
only if rep ('The Scryers') >= Neutral
step
goto 59.1,66.8
.click the Duro Control Console
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge Duro |q 10338/1
only if rep ('The Scryers') >= Neutral
step
goto 46.5,56.0
.talk 20921
..accept 10434
step
goto 46.4,56.4
.talk 20810
..turnin 10418
..accept 10423
step
goto 46.6,56.5
.talk 19728
..turnin 10235
..accept 10237
step
goto 46.7,56.9
.talk 20066
..turnin 10267
..accept 10268
step
ding 70
step
'Hearth to Area 52 |goto Netherstorm,32.3,65.5,3 |use Hearthstone##6948 |noway |c
step
goto 33.0,64.7
.talk 19645
..turnin 10232
step
goto 32.7,65.0
.talk 19570
..turnin 10237
step
goto 32.0,64.1
.talk 19468
..turnin 10338
.talk 19469
..turnin 10341
..accept 10202
only if rep ('The Scryers') >= Neutral
step
goto 32.1,64.2
.talk 19466
..turnin 10328
..accept 10431
.talk 19467
..turnin 10322
only if rep ('The Aldor') >= Neutral
step
goto 43.5,35.1
.talk 20811
..turnin 10423
..accept 10424
step
goto 44.7,36.8
.talk 20205
..turnin 10434
..accept 10435
step
goto 44.7,34.9
.talk 20470
..accept 10335
step
goto 44.7,34.9
.talk 20471
..accept 10336
..accept 10855
step
goto 34.8,38.3
.talk 20780
..turnin 10431
..accept 10380
only if rep ('The Aldor') >= Neutral
step
goto 34.6,38.0
.talk 20112
..accept 10317
step
goto 34.5,37.8
.talk 20341
..accept 10315
step
goto 26.2,41.6
.talk 20920
..turnin 10202
..accept 10432
only if rep ('The Scryers') >= Neutral
step
.' Go inside Manaforge Ara to [27.1,39.2] |goto 27.1,39.2
.from Mo'arg Warp-Master |q 10380/3
only if rep ('The Aldor') >= Neutral
step
.' Go inside Manaforge Ara to 27.1,39.2 |goto 27.1,39.2
.from Gan'arg Warp-Tinker##20285+, Mo'arg Warp-Master##20326+, Daughter of Destiny##18860+ |tip You can also find more outside of Manaforge Ara.
..get 8 Orders From Kael'thas |q 10432/1
only if rep ('The Scryers') >= Neutral
step
goto 30.8,40.8
.kill 15 Sunfury Nethermancer##20248+ |q 10315/1
step
goto 30.8,40.8
.kill 3 Daughter of Destiny##18860+ |q 10380/2
only if rep ('The Aldor') >= Neutral
step
goto 26.4,44.0 |n
.' The entrance to Trelleum Mine starts here |goto 26.4,44.0,0.5 |noway |c
step
goto 26.4,42.3
.talk 20393
..turnin 10317
..accept 10318
step
goto 26.8,36.0
.kill Overmaster Grindgarr##20803 |q 10318/1
step
goto 26.4,42.3
.kill 6 Gan'arg Warp-Tinker##20285+ |q 10380/1
.kill 6 Mo'arg Warp-Master##20326+ |q 10380/2
only if rep ('The Aldor') >= Neutral
step
goto Netherstorm,34.5,37.8
.talk 20341
..turnin 10315
step
goto 34.6,37.9
.talk 20112
..turnin 10318
step
goto 32.0,64.1
.talk 19468
..turnin 10432
..accept 10508
only if rep ('The Scryers') >= Neutral
step
goto 34.8,38.3
.talk 20780
..turnin 10380
..accept 10381
only if rep ('The Aldor') >= Neutral
step
'Hearth to Area 52 |goto Netherstorm,43.3,36.2,3 |use Hearthstone##6948 |noway |c
only if rep ('The Aldor') >= Neutral
step
goto 32.1,64.2
.talk 19466
..turnin 10381
only if rep ('The Aldor') >= Neutral
step
goto 39.1,28.9
.from Gan'arg Mekgineer##16949+
..collect 5 Condensed Nether Gas##31653 |q 10855
step
goto 37.1,27.8
.from Forgemaster Morug##20800
..get First Half of Socrethar's Stone |q 10508/1
only if rep ('The Scryers') >= Neutral
step
goto 40.8,19.6
.from Silroth##20801+
..get Second Half of Socrethar's Stone |q 10508/2
only if rep ('The Scryers') >= Neutral
step
goto 38.0,25.5
.talk 22293
..turnin 10850 |n
.' Destroy Inactive Fel Reaver |q 10855/1
step
goto 44.7,34.9
.talk 20471
..turnin 10855
..accept 10856
step
goto 47.6,26.8
.' Use Diagnostic Device next to the generator |use Diagnostic Device##29803
.' Get the Diagnostic Results |q 10424/1
step
goto 41.9,23.6
.kill 12 Wrathbringer##18858+ |q 10856/1
step
goto 44.2,12.6
.click Dome Generator Segment##7089
..get 10 Dome Generator Segment |q 10435/1
step
goto 51.6,20.5
.' Use Surveying Markers next to this draenei banner |use Surveying Markers##29445
.' Place Surveying Marker One |q 10335/1
step
goto 54.5,22.8
.' Use Surveying Markers next to this draenei banner |use Surveying Markers##29445
.' Place Surveying Marker Two |q 10335/2
step
goto 55.8,20.0
.' Use Surveying Markers next to this draenei banner |use Surveying Markers##29445
.' Place Surveying Marker Three |q 10335/3
step
goto 51.7,20.4
.kill 10 Hound of Culuthas##20141+ |q 10336/1
.kill 5 Eye of Culuthas##20394+ |q 10336/2
step
goto 43.5,35.2
.talk 20811
..turnin 10424
..accept 10430
step
goto 44.7,34.9
.talk 20471
..turnin 10856
..accept 10857
..turnin 10336
step
goto 44.7,34.9
.talk 20470
..turnin 10335
step
goto 44.7,36.7
.talk 20205
..turnin 10435
step
goto 39.2,20.0
.' Use the Mental Interference Rod on Cyber-Rage Forgelord |use Mental Interference Rod##31678
.' Use the Detonate Teleporter ability next to teleporters at [39.1,20.5]
.' Destroy the Western Teleporter |q 10857/1
step
goto 41.2,19.4
.' Use the Mental Interference Rod on Cyber-Rage Forgelord |use Mental Interference Rod##31678
.' Use the Detonate Teleporter ability next to teleporters at [41.2,19.4]
.' Destroy the Central Teleporter |q 10857/2
step
goto 42.2,20.9
.' Use the Mental Interference Rod on Cyber-Rage Forgelord |use Mental Interference Rod##31678
.' Use the Detonate Teleporter ability next to teleporters at [42.2,20.9]
.' Destroy the Eastern Teleporter |q 10857/3
step
goto 44.7,14.6
.talk 20913
..turnin 10430
..accept 10436
step
goto 45.6,11.2
.kill 12 Scythetooth Raptor##20634+ |q 10436/1
step
goto 44.7,14.6
.talk 20913
..turnin 10436
..accept 10440
step
goto 43.5,35.2
.talk 20811
..turnin 10440
step
goto 44.7,34.9
.talk 20471
..turnin 10857
step
goto 44.7,34.9
.talk 20471
..turnin 10857
step
goto 42.3,32.6
.talk 20871
..accept 10426
step
goto 41.2,32.2
.' Use Energy Field Modulator on Farahlon Lashers |use Energy Field Modulator##29818
.from Mutated Farahlon Lasher##20983+
.' Test Energy Modulator 10 times |q 10426/1
step
goto 42.3,32.6
.talk 20871
..turnin 10426
..accept 10427
step
goto 40.4,35.5
.from Talbuk Doe##20610+, Talbuk Sire##20777
.' Use the Talbuk Tagger on talbuks when they are below 20 percent health. |use Talbuk##29817
.' Tag 12 Talbuk |q 10427/1
step
goto 42.3,32.6
.talk 20871
..turnin 10427
..accept 10429
step
goto 44.3,28.5
.from Markaru##20775+
..get Hulking Hydra Heart |q 10429/1
step
goto 42.3,32.6
.talk 20871
..turnin 10429
step
goto 45.9,36.0
.talk 20084
..turnin 10268
..accept 10269
step
goto 66.8,34.8
.' Use the Triangulation Device in your bags |use Triangulation Device##28962
.' A red arrow will appear showing you where to go.
.' Discover the first triangulation point |q 10269/1
step
goto Netherstorm,58.3,31.3
.talk 20092
..turnin 10269
..accept 10275
step
goto 58.3,31.7
.talk 20071
..accept 10270
step
goto 59.2,32.1
.talk 20450
..accept 10422
step
goto Netherstorm,59.2,32.6
.talk 20449
..accept 10411
step
goto 59.5,32.4
.talk 20448
..accept 10339
step
goto 60.1,31.7
.talk 20907
..accept 10437
step
goto 57.1,36.5
.kill Captain Zovax##20727 |q 10339/4 |tip He walks around this area.
.kill 5 Ethereum Assassin##20452+ |q 10339/1
.kill 5 Ethereum Shocktrooper##20453+ |q 10339/2
.kill 2 Ethereum Researcher##20456+ |q 10339/3
step
goto 56.8,38.7
.click the Ethereum Transponder Zeta
.talk 20482
..turnin 10339
..accept 10384
step
goto 55.8,39.9
.click the Ethereum Data Cell##1247
..get Ethereum Data Cell |q 10384/1
step
goto 54.4,40.1
.from Warden Icoshock##20770+
..collect The Warden's Key##29742
step
goto 55.2,42.8
.' Use Navuud's Concoction in your bags |use Navuud's Concoction##29737
.' While under the effects of the Electro-Shock Therapy buff do the following: |tip This buff lasts for 60 minutes. High levels will need to use melee since the effect only works by random chance.
.kill 30 Void Waste Globule##20805+ |q 10411/2
step
goto 53.3,41.5
.click Captain Tyralius's Prison |tip It looks like a glowing pink orb
.' Free Captain Tyralius |q 10422/1
|modelnpc Captain Tyralius##20787
step
goto 56.8,38.7
.click the Ethereum Transponder Zeta
.talk 20482
..turnin 10384
..accept 10385
step
goto 56.5,38.6
.from Ethereum Shocktrooper##20453+, Ethereum Assassin##20452+
..collect Ethereum Essence##29482 |n
.' Use Ethereum Essence in your bags to see Ethereum Relays |use Ethereum Essence##29482
.from Ethereum Relay##20619+
.get 15 Ethereum Relay Data |q 10385/1
step
goto 56.8,38.7
.click the Ethereum Transponder Zeta
.talk 20482
..turnin 10385
..accept 10405
step
goto 55.8,40.5
.from Ethereum Assassin##20452+, Ethereum Archon##20458+
..get Prepared Ethereum Wrapping |q 10405/1
step
goto 56.8,38.7
.click the Ethereum Transponder Zeta
.talk 20482
..turnin 10405
..accept 10406
step
goto 56.8,38.6
.' Escort the Protectorate Demolitionist while he sabotages the Ethereum Conduit |tip If you have trouble with this, clear the path first before accepting the escort quest.
.' Sabotage Ethereum Conduit |q 10406/1
|modelnpc Protectorate Demolitionist##20802
step
goto 56.8,38.7
.click the Ethereum Transponder Zeta
.talk 20482
..turnin 10406
step
goto 57.1,37.6
.from Ethereum Gladiator##20854+ |tip He is fighting a Captured Protectorate Vanguard. Killing him will unlock an escort quest If he is not here you will have to wait for him to respawn.
.talk 20763
..accept 10425
step
'Escort the Captured Protectorate Vanguard to Protectorate Watch Post
.' Escort Captured Protectorate Vanguard |q 10425/1
|modelnpc Captured Protectorate Vanguard##20763
step
goto 59.5,32.4
.talk 20448
..turnin 10425
step
goto 59.3,32.0
.talk 20450
..turnin 10422
step
goto 62.5,34.7
.from Voidshrieker##18870+, Unstable Voidwraith##18869+
..get 8 Fragment of Dimensius |q 10437/1
step
goto 59.5,39.9
.' Use Navuud's Concoction in your bags |use Navuud's Concoction##29737
.' While under the effects of the Electro-Shock Therapy buff do the following: |tip This buff lasts for 60 minutes. High levels will need to use melee since the effect only works by random chance.
.kill 30 Seeping Sludge Globule##20806+ |q 10411/1
step
goto 59.4,45.0
.talk 20551
..accept 10345
step
goto 61.0,45.6 |n
'The entrance to the Access Shaft Zeon cave starts here. |goto 61.0,45.6,0.5 |noway |c
step
goto 59.8,42.6
.' Go inside the cave |n
.' Use the Protectorate Igniter in your bags on Withered Corpses |use Protectorate Igniter##29473
.' Use 12 Withered Corpses Burned |q 10345/1 |tip If you get to close they will turn into fleshbeasts. There are more corpses inside the cave.
|modelnpc Withered Corpse##20561
step
goto 60.9,41.5
.talk 20552
..accept 10353
step
goto 61.0,41.5
.click the Teleporter Power Pack |tip It looks like a large case with handles on the side and purple electricity in the middle of it.
..get Teleporter Power Pack |q 10270/1
step
goto 60.1,40.1
.kill Arconus the Insatiable##20554 |q 10353/1
step
goto 61.1,45.4,0.5 |n
'Leave the Access Shaft Zeon |goto 61.1,45.4,0.5 |noway |c
step
goto 59.4,45.0
.talk 20551
..turnin 10345
step
goto 59.2,32.6
.talk 20449
..turnin 10411
step
goto 59.5,32.4
.talk 20448
..turnin 10353
step
goto 60.1,31.7
.talk 20907
..turnin 10437
..accept 10438
step
goto 60.2,31.7
.talk 20903
.' Tell the dragon you are ready to fly.
.' Use the Phase Disruptor in your bags while flying around the Void Conduit |use Phase Disruptor##29778
.' Destroy the Void Conduit |q 10438/1
step
goto 60.1,31.7
.talk 20907
..turnin 10438
step
goto 71.1,39.0
.click the Ethereum Transponder Zeta
.' Attempt to contact Wind Trader Marid.
.talk 20518
..turnin 10270
..accept 10271
step
goto 71.8,38.7
.' Use your Essence Gatherer on Nether Drakes and Nether Dragons around this area |use Essence Gatherer##69825
..get 8 Nether Dragon Essence |q 10271/1
step
goto 70.9,38.8
.talk 20154
..turnin 10271
..accept 10281
step
goto 71.2,35.1
.talk 20110
..turnin 10281
..accept 10272
step
goto 72.0,38.4
.click Nether Dragonkin Eggs |tip They look like spiky eggs close to the crystals in this area.
..get 15 Nether Dragonkin Egg |q 10272/1
step
goto 71.2,35.1
.talk 20110
..turnin 10272
..accept 10273
step
goto 58.3,31.7
.talk 20071
..' Tell him, "Wind Trader Marid, I've returned with more information..."
.' Follow him away from Protectorate Watch Post
.kill Wind Trader Marid##20071 |q 10273/1
step
goto 71.2,35.1
.talk 20110
..turnin 10273
step
goto 29.2,40.5
.' Use the Triangulation Device in your bags |use Triangulation Device##29018
.' A red arrow will appear showing you where to go.
.' Discover the second triangulation point |q 10275/1
step
goto 34.6,38.0
.talk 20112
..turnin 10275
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Outland 60-70\\Shadowmoon Valley (68-70)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Northrend 70-80\\Borean Tundra (70-72)
startlevel 68.97
dynamic on
step
goto Shadowmoon Valley,30.4,32.4
.talk 21359
..accept 10595
step
goto 31.0,29.8
.talk 22043
..accept 10760
step
goto 30.3,29.2
.talk 19317
.fpath Shadowmoon Village
step
goto Shadowmoon Valley,30.1,28.3
.talk 21770
..accept 10660
step
goto 29.9,27.7
.talk 21772
..accept 10624
step
goto 30.2,27.7
.talk 19319
.home Shadowmoon Village
step
goto 28.5,26.6
.talk 21938
..accept 10681
step
goto 28.5,26.5
.talk 21769
..accept 10702
step
goto 30.8,33.4
.kill 10 Infernal Attacker##21419+ |q 10595/1
step
goto 30.4,37.0
.from Felfire Diemetradon##21408+
.get 8 Felfire Spleen |q 10660/1
.click Ever-burning Ash##7256
.get 15 Ever-Burning Ash |q 10624/1
step
goto 34.1,39.0
' |from Felboar##21878+, Vilewing Chimaera##21879+
.kill 20 Shadowmoon Valley Wildlife |q 10702/1
step
goto 36.4,33.5
.from Dark Conclave Ravenguard##19827+, Dark Conclave Shadowmancer##19826+, Dark Conclave Hawkeye##21386+
.get Sketh'lon Commander's Journal - Page 1 |q 10760/1
.get Sketh'lon Commander's Journal - Page 2 |q 10760/2
.get Sketh'lon Commander's Journal - Page 3 |q 10760/3
step
goto 30.4,32.4
.talk 21359
..turnin 10595
..accept 10596
step
goto 31.0,29.8
.talk 22043
..turnin 10760
..accept 10761
step
goto 30.1,28.3
.talk 21770
..turnin 10660
..accept 10672
step
goto 29.9,27.7
.talk 21772
..turnin 10624
..accept 10625
step
goto 28.5,26.4
.talk 21769
..turnin 10702
step
ding 69
step
goto 28.7,26.9
.' Use your Spectrecles to equip them |use Spectrecles##30719
.kill 12 Shadowmoon Zealot##21788+ |q 10625/1 |tip They are all around Shadowmoon Village. You must be wearing the Spectrecles to see them.
step
goto 29.9,27.7
.talk 21772
..turnin 10625
..accept 10633
step
goto 23.6,36.8
.' Fly up onto the platform
.click the Box o' Tricks in your bag while standing next to the Legion Communication Device |use Box o' Tricks##30638
.' Discover Legion's Plans |q 10596/1
step
goto 30.4,32.4
.talk 21359
..turnin 10596
..accept 10597
step
goto 26.3,41.2
.click Fel Reaver Power Core##7237 |tip It looks like a big green-glowing metal object underwater.
.get Fel Reaver Power Core |q 10597/1
step
goto 22.2,35.6
.click Fel Reaver Armor Plating##7238 |tip It looks like a green-glowing metal helmet sitting on the ground.
.get Fel Reaver Armor Plating |q 10597/2
step
goto 30.4,32.4
.talk 21359
..turnin 10597
..accept 10598
step
goto 35.4,42.1
.talk 22024 |tip He walks up and down this path, so you may need to search for him.
..turnin 10761
..accept 10777
step
goto 39.8,29.8
.from Asghar##22025 |tip He looks like an arakkoa that walks around Sketh'lon Wreckage, so you may need to search for him.
.get Sketh'lon War Totem |q 10777/1
step
goto 35.2,39.1
.talk 22024
..turnin 10777
..accept 10778
step
goto 42.2,45.1
.talk 21024
..turnin 10681
..accept 10458
step
goto 46.5,46.9
.' Use your Totem of Spirits |use Totem of Spirits##30094 |tip Kill the mobs next to the totems you plant.
.from Enraged Earth Spirit##21050+
.' Capture 8 Earthen Souls |q 10458/1
.from Enraged Fire Spirit##21061+
.' Capture 8 Fiery Souls |q 10458/2
step
goto 42.2,45.1
.talk 21024
..turnin 10458
..accept 10480
step
goto 46.5,65.6
.from Eclipsion Archmage##19796+, Eclipsion Centurion##19792+, Eclipsion Bloodwarder##19806+
.get Lianthe's Key |q 10778/1
step
goto 47.5,71.7
.click Lianthe's Strongbox##41
.get Rod of Lianthe |q 10778/2
step
goto 54.7,58.2
.talk 21953
..accept 10807
only if rep ('The Scryers') >= Neutral
step
goto Shadowmoon Valley,58.2,70.8
.talk 21797
..turnin 10633
..accept 10635
step
goto 63.9,47.0
.' Use your Spectrecles to equip them |use Spectrecles##30721
.from Cleric of Karabor##21815
.get Gorefiend's Cloak |q 10635/1
step
goto 58.8,36.5
.kill 3 Ashtongue Handler##21803+ |q 10807/1
.kill 4 Ashtongue Warrior##21454+ |q 10807/2
.kill 6 Ashtongue Shaman##21453+ |q 10807/3
only if rep ('The Scryers') >= Neutral
step
goto 62.2,40.3
.click Arcano Control Unit##6466
.' Use the Tag Greater Felfire Diemetradon ability on Diemetradons
.' Tag 8 Greater Felfire Diemetradons |q 10672/1
step
goto 50.6,24.3
.' Use your Totem of Spirits |use Totem of Spirits##30094 |tip Kill the mobs next to the totems you plant.
.from Enraged Water Spirit##21059+
.' Capture 5 Watery Souls |q 10480/1
step
'Hearth to Shadowmoon Village |goto 30.2,27.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 30.1,28.3
.talk 21770
..turnin 10672
..accept 10673
step
goto 35.2,40.7
.talk 22024 |tip He walks up and down this path, so you may need to search for him.
..turnin 10778
..accept 10780
step
goto 42.2,45.1
.talk 21024
..turnin 10480
..accept 10481
step
goto 43.0,56.6
.click Sketh'lon Feather##6962+
.get 8 Sketh'lon Feather |q 10780/1
step
goto 35.4,37.6
.talk 22024 |tip He walks up and down this path, so you may need to search for him.
..turnin 10780
..accept 10782
step
goto 43.1,44.9
.' Use your Unfinished Headpiece next to Gul'dan |use Unfinished Headpiece##31360 |tip He's a kneeling orc warlock.
.get Energized Headpiece |q 10782/1
step
goto 35.4,37.4
.talk 22024 |tip He walks up and down this path, so you may need to search for him.
..turnin 10782
..accept 10808
step
goto 41.1,60.8
.from Dark Conclave Ritualist##22138+ |tip You have to kill all the ones that are channeling a purple spell around this area.
.' Use your Staff of Parshah on the big blue blob in the center of the lava. You don't have to be in the lava. |use Staff of Parshah##31386
.' End the Dark Conclave Summoning Ritual |q 10808/1
step
goto 35.4,38.1
.talk 22024 |tip He walks up and down this path, so you may need to search for him.
..turnin 10808
step
goto 54.7,58.2
.talk 21953
..turnin 10807
..accept 10817
only if rep ('The Scryers') >= Neutral
step
goto 58.2,70.8
.talk 21797
..turnin 10635
step
goto 59.9,69.1
.' Use your Totem of Spirits |use Totem of Spirits##30094 |tip Kill the mobs near the totems you plant.
.from Enraged Air Spirit##21060+
.' Capture 10 Air Souls |q 10481/1
step
goto 56.1,44.4
.from Felspine the Greater##21897
.get Felspine's Hide |q 10673/1
step
goto 67.4,37.6
.kill 8 Shadowmoon Slayer##22082+ |q 10817/1
.kill 8 Shadowmoon Chosen##22084+ |q 10817/2
.kill 4 Shadowmoon Darkweaver##22081+ |q 10817/3
only if rep ('The Scryers') >= Neutral
step
'Hearth to Shadowmoon Village |goto 30.2,27.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 30.1,28.3
.talk 21770
..turnin 10673
step
goto 22.6,39.9
.' Use your Fel Bomb while standing on the glowing green glyph on the ground |use Fel Bomb##30614
.' Destroy the Legion Hold Infernals |q 10598/1
step
goto 30.4,32.4
.talk 21359
..turnin 10598
..accept 10599
step
goto 38.6,38.2
.talk 21475
..turnin 10599
..accept 10600
step
goto 38.9,35.4
.kill 10 Deathforge Guardian##20878+ |q 10600/1
.kill 5 Deathforge Summoner##20872+ |q 10600/2
.' More can be found around [40.3,38.0]
step
goto 38.6,38.2
.talk 21475
..turnin 10600
..accept 10601
..accept 10602
step
goto 40.1,38.2 |n
.' Enter the Deathforge using the upper entrance |goto 40.1,38.2,0.5 |noway |c
step
goto 37.6,41.3
.from Deathforge Tinkerer##19754+, Deathforge Smith##19756+
.get Elemental Displacer |q 10602/2
step
goto 35.2,40.2
.clicknpc Kagrosh##21725
..' Search Kagrosh's corpse for his pack
.get Kagrosh's Pack |q 10601/1
step
goto 40.1,38.2 |n
.' Leave the Deathforge |goto 40.1,38.2,0.5 |noway |c
step
goto 40.4,39.4 |n
.' Enter the Deathforge using the lower entrance |goto 40.4,39.4,0.5 |noway |c
step
goto 37.7,37.7
.' Use your Elemental Displacer on Summoner Skartax |use Elemental Displacer##30672
.from Infernal Oversoul##21735
.' End the Infernal Summoning Ritual |q 10602/1
step
goto 40.4,39.4 |n
.' Leave the Deathforge |goto 40.4,39.4,0.5 |noway |c
step
goto 38.6,38.2
.talk 21475
..turnin 10601
..turnin 10602
..accept 10603
step
goto 40.1,38.2 |n
.' Enter the Deathforge using the upper entrance |goto 40.1,38.2,0.5 |noway |c
step
goto 37.4,42.7
.click the Heavy Iron Portcullis
.' Continue through gate to [39.1,46.6]
.kill Warbringer Razuun##21287 |q 10603/1
.get Razuun's Orders |q 10603/2
step
goto 40.4,39.4 |n
.' Leave the Deathforge |goto 40.3,38.0,0.5 |noway |c
step
goto 30.4,32.4
.talk 21359
..turnin 10603
..accept 10604
step
goto 25.2,32.4
.from Mo'arg Weaponsmith##19755+
.get Legion Teleporter Control |q 10604/1
step
goto 30.4,32.4
.talk 21359
..turnin 10604
..accept 10767
step
goto 25.6,36.3|n
.' Step into the teleporter |goto 27.3,21.6,0.5 |noway |c
step
goto Shadowmoon Valley 27.5,21.2
.talk 21789
..turnin 10767
..accept 10611
step
goto 28.9,20.5
.from Doctor Maleficus##21779
.collect The Doctor's Key##30712 |n
.click The Doctor's Strongbox##41
.get The Art of Fel Reaver Maintenance |q 10611/1
step
goto 27.5,21.2
.talk 21789
..turnin 10611
..accept 10613
step
goto 27.8,19.7
.click the Fel Reaver Control Console to take control of a Fel Reaver Sentinel |tip It looks like a metal box with a bunch of levers on it.  If you are a death knight, hunter or warlock you will have to dismiss your pet first.
.' Use the abilities on your hotbar to do the following:
.from Deathforged Infernal##21316+
.' Destroy 60 Deathforged Infernals |q 10613/1 |tip If your character gains too much aggro, exit out of the Fel Reaver and run up the hill and go through the green skull teleporter. When you come back you won't have any aggro and you can continue the quest.
step
goto 27.5,21.2
.talk 21789
..turnin 10613
..accept 10745
step
goto 28.5,26.4
.talk 21769
..turnin 10745
step
goto 42.2,45.1
.talk 21024
..turnin 10481
..accept 10513
step
goto 54.7,58.2
.talk 21953
..turnin 10817
only if rep ('The Scryers') >= Neutral
step
goto 53.9,23.5
.talk 21183
.' If he or his Domesticated Felboar are being attacked, you will have to kill the Ravenous Flayers before you can talk to him.
..turnin 10513
..accept 10514
step
goto 53.5,17.3
.' Use Oronok's Boar Whistle next to Shadowmoon Tuber Mounds while boars are nearby |use Oronok's Boar Whistle##30462 |tip They look like carrots sticking out of the ground around this area.
.' A boar will run over and dig up the tuber
.click the Shadowmoon Tuber's that spawn
.get 10 Shadowmoon Tuber |q 10514/1
.' Be sure to kill the Ravenous Flayer in the area so there will be boars around to dig up the tubers.
step
goto 53.9,23.5
.talk 21183
..turnin 10514
..accept 10515
step
goto 56.1,15.8
.click Ravenous Flayer Egg##477+ |tip They look like brown spiked eggs on the ground around this area.
.' Destroy 10 Ravenous Flayer Eggs |q 10515/1
step
goto 53.9,23.5
.talk 21183
..turnin 10515
..accept 10519
step
goto 53.9,23.5
.talk 21183
..' Tell him you are ready to listen to his story
.' Listen to the Cipher of Damnation - History and Truth |q 10519/1
step
goto 53.9,23.5
.talk 21183
..turnin 10519
..accept 10521
..accept 10527
..accept 10546
step
goto 44.6,23.7
.talk 21291
..turnin 10521
..accept 10522
step
goto 52.6,27.4
.from Coilskar Sorceress##19767+, Coilskar Myrmidon##19765+
.collect Coilskar Chest Key##30426 |n
.click Coilskar Chest##1387+ |tip They look like big gray stone containers around this area.
.get First Fragment of the Cipher of Damnation |q 10522/1
step
goto 44.5,23.6
.talk 21291
..turnin 10522
..accept 10523
step
goto 53.9,23.5
.talk 21183
..turnin 10523
step
goto 29.6,50.4
.talk 21292
..turnin 10527
..accept 10528
step
goto 28.0,47.5
.from Painmistress Gabrissa##21309+
.get Crystalline Key |q 10528/1
step
goto 29.6,50.4
.talk 21292
..turnin 10528
step
goto 29.5,50.5
.talk 21318
..accept 10537
step
goto 29.6,50.3
.from Illidari Satyr##21656+, Illidari Shocktrooper##19802+, Illidari Dreadbringer##19799+, Illidari Painlasher##19800+
.get Lohn'goron, Bow of the Torn-Heart |q 10537/1
step
goto 29.5,50.5
.talk 21318
..turnin 10537
..accept 10540
step
goto 30.7,58.3
.' Walk with the Spirit Hunter to this spot
.from Veneratus the Many##20427
.get Second Fragment of the Cipher of Damnation |q 10540/1
step
goto 29.5,50.5
.talk 21318
..turnin 10540
..accept 10541
step
goto 47.6,57.2
.talk 21293
..turnin 10546
..accept 10547
step
goto 44.8,58.2
.click a Rotten Arakkoa Egg |tip They look like small pink-ish eggs with green steam rising off of them on the ground around this area.
.get Rotten Arakkoa Egg |q 10547/1
step
goto 53.9,23.5
.talk 21183
..turnin 10541
step
goto 61.2,29.2
.talk 21860
..accept 10587
only if rep ('The Aldor') >= Neutral
step
goto 61.2,29.1
.talk 21822
..accept 10619
only if rep ('The Aldor') >= Neutral
step
goto 61.1,28.3
.talk 21746
.home Altar of Sha'tar
only if rep ('The Aldor') >= Neutral
step
goto 62.6,28.4
.talk 21402
..accept 10568
only if rep ('The Aldor') >= Neutral
step
|fly Shattrath
only if rep ('The Aldor') >= Neutral
step
goto Shattrath City,64.0,70.0
.talk 21411
..turnin 10547
..accept 10550
only if rep ('The Aldor') >= Neutral
step
'Hearth to Altar of Sha'tar |goto Shadowmoon Valley,61.1,28.3,0.5 |use Hearthstone##6948 |noway |c
only if rep ('The Aldor') >= Neutral
step
goto 56.5,34.8
.kill 3 Ashtongue Handler##21803+ |q 10619/1
.kill 4 Ashtongue Warrior##21454+ |q 10619/2
.kill 6 Ashtongue Shaman##21453+ |q 10619/3
.click Baar'ri Tablet Fragment |tip They look like green glowing tablets on the ground around this area.
.from Ashtongue Worker##21455
.get 12 Baa'ri Tablet Fragment |q 10568/1
only if rep ('The Aldor') >= Neutral
step
goto 71.1,52.0
.from Demon Hunter Initiate##21180+, Demon Hunter Supplicant##21179+
.get 8 Sunfury Glaive |q 10587/1
only if rep ('The Aldor') >= Neutral
step
goto 61.2,29.2
.talk 21860
..turnin 10587
..accept 10637
only if rep ('The Aldor') >= Neutral
step
goto 61.2,29.1
.talk 21822
..turnin 10619
..accept 10816
only if rep ('The Aldor') >= Neutral
step
goto 62.6,28.4
.talk 21402
..turnin 10568
..accept 10571
only if rep ('The Aldor') >= Neutral
step
goto 57.2,32.9
.from Oronu the Elder##21663
.get Orders From Akama |q 10571/1
only if rep ('The Aldor') >= Neutral
step
goto 67.4,37.6
.kill 8 Shadowmoon Slayer##22082+ |q 10816/1
.kill 8 Shadowmoon Chosen##22084+ |q 10816/2
.kill 4 Shadowmoon Darkweaver##22081+ |q 10816/3
only if rep ('The Aldor') >= Neutral
step
goto 70.0,51.4
.from Sunfury Warlock##21503+
.collect Scroll of Demonic Unbanishing##30811 |n
.' Use the Scroll of Demonic Unbanishing on Azaloth |use Scroll of Demonic Unbanishing##30811
.' Free Azaloth |q 10637/1
only if rep ('The Aldor') >= Neutral
step
goto 61.2,29.2
.talk 21860
..turnin 10637
only if rep ('The Aldor') >= Neutral
step
goto 61.2,29.1
.talk 21822
..turnin 10816
only if rep ('The Aldor') >= Neutral
step
goto 62.6,28.4
.talk 21402
..turnin 10571
..accept 10574
only if rep ('The Aldor') >= Neutral
step
ding 70
only if rep ('The Aldor') >= Neutral
step
goto 62.3,29.8
.talk 22214
..accept 10826
only if rep ('The Aldor') >= Neutral
step
goto 49.8,23.1
.from Lakaan##21416 |tip You must destroy the totems first before you can attack him.
.get Lakaan's Medallion Fragment |q 10574/3
only if rep ('The Aldor') >= Neutral
step
goto 48.2,39.8
.from Uylaru##21710 |tip You must destroy the totems first before you can attack him.
.get Uylaru's Medallion Fragment |q 10574/4
only if rep ('The Aldor') >= Neutral
step
'Go inside of the Deathforge at [40.1,38.2] |goto 40.1,38.2,0.5 |c
only if rep ('The Aldor') >= Neutral
step
goto 40.0,38.4
.from Deathforge Guardian##20878+, Deathforge Smith##19756+, Deathforge Tinkerer##19754+, Deathforge Summoner##20872+
..get 10 Mark of Sargeras |q 10826/1
only if rep ('The Aldor') >= Neutral
step
goto 51.3,52.9
.from Eykenen##21709 |tip You must destroy the totems first before you can attack him.
.get Eykenen's Medallion Fragment |q 10574/1
only if rep ('The Aldor') >= Neutral
step
goto 57.1,73.3
.from Haalum##21711 |tip You must destroy the totems first before you can attack him.
.get Haalum's Medallion Fragment |q 10574/2
only if rep ('The Aldor') >= Neutral
step
'Hearth to Altar of Sha'tar |goto Shadowmoon Valley,61.1,28.3,0.5 |use Hearthstone##6948 |noway |c
only if rep ('The Aldor') >= Neutral
step
goto 62.3,29.8
.talk 22214
..turnin 10826
only if rep ('The Aldor') >= Neutral
step
goto 62.6,28.4
.talk 21402
..turnin 10574
..accept 10575
only if rep ('The Aldor') >= Neutral
step
goto 57.4,49.7 |n
.' Follow the path down |goto 57.4,49.7,0.5 |noway |c
only if rep ('The Aldor') >= Neutral
step
goto 57.3,49.6
.talk 21826
..turnin 10575
..accept 10622
only if rep ('The Aldor') >= Neutral
step
goto 57.4,49.4 |n
.' Go back to the top of "Warden's Cage" |goto 57.4,49.4,0.5 |noway |c
only if rep ('The Aldor') >= Neutral
step
goto 57.1,48.6
.kill Zandras##21827 |q 10622/1 |tip He patrols the top of the prison wall, so you may need to search for him.
only if rep ('The Aldor') >= Neutral
step
goto 57.4,49.7 |n
.' Follow the path down |goto 57.4,49.7,0.5 |noway |c
only if rep ('The Aldor') >= Neutral
step
goto 57.3,49.6
.talk 21826
..turnin 10622
..accept 10628
only if rep ('The Aldor') >= Neutral
step
goto 57.5,47.8 |n
.' Go to this spot and swim down to the other side |goto 57.5,47.8,0.5 |noway |c
only if rep ('The Aldor') >= Neutral
step
goto 58.1,48.2
.talk 21700
..turnin 10628
only if rep ('The Aldor') >= Neutral
step
goto 30.3,29.2
.talk 19317
.' Fly to Shattrath City, Terokkar |goto Shattrath City |noway |c
only if rep ('The Scryers') >= Neutral
step
goto Shattrath City,64.0,70.0
.talk 21411
..accept 10550
..turnin 10547
only if rep ('The Scryers') >= Neutral
step
goto Shadowmoon Valley,47.6,57.2
.talk 21293
..turnin 10550
..accept 10570
step
goto 49.0,57.5
.' Use your Bundle of Bloodthistle at the other end of the bridge |use Bundle of Bloodthistle##30616
.from Envoy Icarius##21409
.get Stormrage Missive |q 10570/1
step
goto 47.6,57.2
.talk 21293
..turnin 10570
..accept 10576
step
goto 49.3,60.5
.from Eclipsion Centurion##19792+, Eclipsion Blood Knight##19795+, Eclipsion Archmage##19796+, Eclipsion Bloodwarder##19806+
.get 6 Eclipsion Armor |q 10576/1
step
goto 47.6,57.2
.talk 21293
..turnin 10576
..accept 10577
step
goto 45.3,68.2
.' Use your Blood Elf Disguise |havebuff Interface\Icons\INV_Mask_01 |use Blood Elf Disguise##30639 |c
step
goto 46.5,71.9
.talk 20563
.' Deliver Illidan's Message |q 10577/1
step
goto 47.6,57.2
.talk 21293
..turnin 10577
step
goto 59.8,58.7
.talk 22113 |tip He wanders around this area, so you may need to search for him.
..accept 10804
step
goto 61.4,56.0
.from Rocknail Flayer##21477+, Rocknail Ripper##21478+
.collect Rocknail Flayer Giblets##31373 |n
.' Use Rocknail Flayer Giblets to create a Rocknail Flayer Carcass |use Rocknail Flayer Giblets##31373 |tip It takes 5 Giblets to create 1 Carcass.
.collect 8 Rocknail Flayer Carcass##31372 |q 10804
step
goto 61.1,58.4
.' Use your Rocknail Flayer Carcasses on the ground near Mature Netherwing Drakes |use Rocknail Flayer Carcass##31372 |tip They look like blue dragons flying in the sky around this area.
.' A dragon will fly down and eat the carcass
.' Feed 8 Mature Netherwing Drakes |q 10804/1
step
goto 59.3,58.7
.talk 22113
..turnin 10804
..accept 10811
step
goto 56.3,57.8
.talk 21766
.fpath Sanctum of the Stars
only if rep ('The Scryers') >= Neutral
step
goto 55.7,58.2
.talk 21954
..accept 10687
only if rep ('The Scryers') >= Neutral
step
goto 56.3,58.8
.talk 22211
..accept 10824
only if rep ('The Scryers') >= Neutral
step
goto 56.3,59.6
.talk 21955
..accept 10683
only if rep ('The Scryers') >= Neutral
step
goto 51.7,65.6
.from Eclipsion Soldier##22016+, Eclipsion Spellbinder##22017+, Eclipsion Cavalier##22018+
.get 10 Sunfury Signet |q 10824/1
only if rep ('The Scryers') >= Neutral
step
goto 56.3,58.8
.talk 22211
..turnin 10824
only if rep ('The Scryers') >= Neutral
step
goto 64.3,60.9
.talk 21657
..turnin 10811
..accept 10814
step
goto 64.3,60.9
.talk 21657
..' Listen to his story
.' Listen to the Tale of Neltharaku |q 10814/1
step
goto 64.3,60.9
.talk 21657
..turnin 10814
..accept 10836
step
goto 66.3,60.1
.from Dragonmaw Wrangler##21717+, Dragonmaw Subjugator##21718+, Dragonmaw Drake-Rider##21719+
.' Slay 15 Dragonmaw Orcs |q 10836/1
step
goto 71.1,52.0
.from Demon Hunter Initiate##21180+, Demon Hunter Supplicant##21179+
.get 8 Sunfury Glaive |q 10687/1
only if rep ('The Scryers') >= Neutral
step
goto 55.7,58.2
.talk 21954
..turnin 10687
..accept 10688
only if rep ('The Scryers') >= Neutral
step
goto 64.3,60.9
.talk 21657
..turnin 10836
..accept 10837
step
goto 73.9,84.9
.click Nethervine Crystal##5691+
.get 12 Nethervine Crystal |q 10837/1
step
goto 63.5,60.9
.talk 21657
..turnin 10837
..accept 10854
step
goto 68.7,61.4
.' Use your Enchanted Nethervine Crystal on Enslaved Netherwing Drakes |use Enchanted Nethervine Crystal##31652
.' Free 5 Enslaved Netherwing Drakes |q 10854/1 |tip If the Enslaved Netherwing Drake begins attacking the Dragonmaw Subjugator after you use the crystal on them, you may need to help them so they don't die. Be careful not to make the Drake attack you though.
step
goto 63.5,60.9
.talk 21657
..turnin 10854
step
goto 70.0,51.4
.from Sunfury Warlock##21503+
.collect Scroll of Demonic Unbanishing##30811 |n
.' Use the Scroll of Demonic Unbanishing on Azaloth |use Scroll of Demonic Unbanishing##30811
.' Free Azaloth |q 10688/1
only if rep ('The Scryers') >= Neutral
step
goto 55.7,58.2
.talk 21954
..turnin 10688
..accept 10689
only if rep ('The Scryers') >= Neutral
step
goto 57.1,38.4
.click Baa'ri Tablet Fragment##6419+
.from Ashtongue Worker##21455+
.get 12 Baa'ri Tablet Fragment |q 10683/1
only if rep ('The Scryers') >= Neutral
step
goto 56.3,59.6
.talk 21955
..turnin 10683
..accept 10684
only if rep ('The Scryers') >= Neutral
step
goto 57.2,32.9
.from Oronu the Elder##21663
.get Orders From Akama |q 10684/1
only if rep ('The Scryers') >= Neutral
step
goto 56.3,59.6
.talk 21955
..turnin 10684
..accept 10685
only if rep ('The Scryers') >= Neutral
step
goto 57.1,73.3
.from Haalum##21711 |tip You must destroy the totems first before you can attack him.
.get Haalum's Medallion Fragment |q 10685/2
only if rep ('The Scryers') >= Neutral
step
goto 51.3,52.9
.from Eykenen##21709 |tip You must destroy the totems first before you can attack him.
.get Eykenen's Medallion Fragment |q 10685/1
only if rep ('The Scryers') >= Neutral
step
goto 48.2,39.8
.from Uylaru##21710 |tip You must destroy the totems first before you can attack him.
.get Uylaru's Medallion Fragment |q 10685/4
only if rep ('The Scryers') >= Neutral
step
goto 49.8,23.1
.from Lakaan##21416 |tip You must destroy the totems first before you can attack him.
.get Lakaan's Medallion Fragment |q 10685/3
only if rep ('The Scryers') >= Neutral
step
goto 56.3,59.6
.talk 21955
..turnin 10685
..accept 10686
only if rep ('The Scryers') >= Neutral
step
goto 57.4,49.7 |n
.' Follow the path down |goto 57.4,49.7,0.5 |noway |c
only if rep ('The Scryers') >= Neutral
step
goto 57.3,49.6
.talk 21826
..turnin 10686
..accept 10622
only if rep ('The Scryers') >= Friendly
step
goto 57.4,49.7 |n
.' Go back to the top of "Warden's Cage" |goto 57.4,49.7,0.5 |noway |c
only if rep ('The Scryers') >= Friendly
step
goto 57.1,48.6
.kill Zandras##21827 |q 10622/1 |tip He patrols the top of the prison wall, so you may need to search for him.
only if rep ('The Scryers') >= Friendly
step
goto 57.4,49.7 |n
.' Follow the path down |goto 57.4,49.7,0.5 |noway |c
only if rep ('The Scryers') >= Friendly
step
goto 57.3,49.6
.talk 21826
..turnin 10622
..accept 10628
only if rep ('The Scryers') >= Friendly
step
goto 57.5,47.8 |n
.' Go to this spot and swim down to the other side |goto 57.5,47.8,0.5 |noway |c
only if rep ('The Scryers') >= Friendly
step
goto 58.1,48.2
.talk 21700
..turnin 10628
only if rep ('The Scryers') >= Friendly
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Northrend 70-80\\Borean Tundra (70-72)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Northrend 70-80\\Dragonblight (71-74)
startlevel 70.00
dynamic on
step
goto Orgrimmar,44.8,62.3|n
.' Ride the zeppelin to Borean Tundra |goto Borean Tundra |noway |c
step
goto Borean Tundra,41.6,54
.talk 25273
..accept 11585
step
goto 41.3,53.6
.' Go downstairs
.talk 25237
..turnin 11585
step
goto 41.3,53.6
.talk 25256
..accept 11596  // maybe it's this one..?
step
goto 43.2,55
.' Go outside
.talk 25279
..turnin 11596
..accept 11598
step
goto 43.3,55.4
.talk 25327
..accept 11606
step
goto 42.2,56.2
.talk 25280
..accept 11611
step
goto 43.3,57.9
' |from Nerub'ar Corpse Harvester##25445+, Nerub'ar Invader##24562+, Nerub'ar Skitterer##24566+, Nerub'ar Sky Darkener##25451, Nerub'ar Web Lord##25294
.kill 15 Nerub'ar |q 11598/1
.click the Warsong Munitions crates |tip They look like wooden crates on the ground around this area.
.get 15 Warsong Munitions |q 11606/1
step
goto 42.8,58.1
.' Attack the Nerub'ar Victims
.' Free 5 Warsong Peons |q 11611/1
|modelnpc Nerub'ar Victim##25284
step
goto 42.2,56.2
.talk 25280
..turnin 11611
step
goto 43.3,55.4
.talk 25327
..turnin 11606
..accept 11608
step
goto 43.2,55
.talk 25279
..turnin 11598
..accept 11602
.talk 25394
..accept 11614
step
'Go south up the metal stairs to 44.6,59.3 |goto 44.6,59.3
.click Nerub'ar Egg Sac##7803
.' Destroy 10 Nerub'ar Egg Sacs |q 11602/1
step
goto 44.3,56.9
.' Use your Seaforium Depth Charge Bundle while standing next to the hole |use Seaforium Depth Charge Bundle##34710 |tip It's down the hill, looks like a bunch of cobwebs with rocks on a hole.
.' Destroy the East Nerub'ar Sinkhole |q 11608/2
step
goto 41.7,58.3
.' Use your Seaforium Depth Charge Bundle while standing next to the hole |use Seaforium Depth Charge Bundle##34710 |tip It's down the hill, looks like a bunch of cobwebs with rocks on a hole.
.' Destroy the South Nerub'ar Sinkhole |q 11608/1
step
goto 39.8,52.6
.' Use your Seaforium Depth Charge Bundle while standing next to the hole |use Seaforium Depth Charge Bundle##34710 |tip It's down the hill, looks like a bunch of cobwebs with rocks on a hole.
.' Destroy the West Nerub'ar Sinkhole |q 11608/3
step
goto 40.1,52.1
.talk 25328
..turnin 11614
..accept 11615
step
goto 41.3,50.4
.' Use your Seaforium Depth Charge Bundle while standing next to the hole |use Seaforium Depth Charge Bundle##34710 |tip It's down the hill, looks like a bunch of cobwebs with rocks on a hole.
.' Destroy the North Nerub'ar Sinkhole |q 11608/4
step
goto 43.3,55.4
.talk 25327
..turnin 11608
step
goto 43.2,55
.talk 25279
..turnin 11602
..accept 11634
.talk 25394
..turnin 11615
..accept 11616
step
'Go into Warsong Hold to 41.3,53.6 |goto 41.3,53.6
.talk 25237
..turnin 11616
..accept 11618
step
'Go to the very top of Warsong Hold to 40.4,51.4 |goto 40.4,51.4
.talk 25288
..fpath Warsong Hold
step
goto 42.3,54.9
.talk 25289
..turnin 11634
..accept 11636
step
'Go northwest outside to 38.1,52.6 |goto 38.1,52.6
.talk 25437
..turnin 11618
..accept 11686
step
goto 37.9,52.6
.talk 25438
..accept 11676
step
goto 37.9,52.3
.talk 25607
..accept 11688
step
goto 37.2,51.4
.kill 10 Unliving Swine##25600+ |q 11688/1
step
goto 39.5,48.1
.' Scout the Warsong Slaughterhouse |q 11686/3
step
goto 36.4,48.1
' |from En'kilah Necrolord##25609+, Warsong Aberration##25611+
.collect 5 Scourge Cage Key##34908+ |n
.click the Scourge Cages as you see them |tip The Scourge Cages look like tall cages with big white skulls on top of them.
.' Free 5 Scourge Prisoners |q 11676/1
step
goto 36.7,52.4
.' Scout Torp's Farm |q 11686/2
step
goto 35,54.7
.' Scout the Warsong Granary |q 11686/1
step
goto 37.9,52.6
.talk 25438
..turnin 11676
.talk 25437
..turnin 11686
..accept 11703
step
goto 37.9,52.3
.talk 25607
..turnin 11688
..accept 11690
step
'Search around for Infected Kodo Beasts
.' Use Torp's Kodo Snaffle on Infected Kodo Beasts |use Torp's Kodo Snaffle##34954
.' Ride the kodos back to Farmer Torp
.' Use the Deliver Kodo skill to return the kodos |petaction Deliver Kodo
.' Rescue 8 Kodos |q 11690/1
|modelnpc Infected Kodo Beast##25596
step
goto 37.9,52.3
.talk 25607
..turnin 11690
step
'Go northwest to the top of the tower at [34.6,46.4] |goto 34.6,46.4
.talk 25729
..turnin 11703
..accept 11705
step
'Follow Shadowstalker Getry down the tower and watch the cutscene
.' Make sure to hit Varidus the Flenser at least once, then let the NPCs fight for you
.' Defeat Varidus the Flenser |q 11705/1
|modelnpc Shadowstalker Getry##25729
|modelnpc Varidus the Flenser##25618
step
goto 41.3,53.6
.talk 25237
..turnin 11705
..accept 11709
step
'Go outside to 43.7,54.5 |goto 43.7,54.5
.talk 25379
..turnin 11709
..accept 11711
step
.' An Alliance Deserter will begin to follow you. Lead him to [55.3,50.8] |tip We do not recommend flying for this part.
.' Standing at the crossroads and use your Warsong Flare Gun |use Warsong Flare Gun##34971
.' Deliver the Alliance Deserter |q 11711/1
|modelnpc Alliance Deserter##25361
step
goto 53.1,51.6
.talk 25440
..turnin 11711
..accept 11714
step
goto 52.1,52.5
.talk 25381
..accept 11716
step
goto 52.7,52.7
.click Bloodspore Carpel##7662
.get 10 Bloodspore Carpel |q 11716/1
.kill 8 Bloodspore Harvester##25467+ |q 11714/1
.kill 5 Bloodspore Firestarter##25470+ |q 11714/2
.kill 2 Bloodspore Roaster##25468+ |q 11714/3
step
goto 52.1,52.5
.talk 25381
..turnin 11716
..accept 11717
step
goto 53.1,51.6
.talk 25440
..turnin 11714
step
goto 52.8,52.5
.from Bloodspore Moth##25464+
.get 5 Bloodspore Moth Pollen|q 11717/1
step
goto 52.1,52.5
.talk 25381
..turnin 11717
..accept 11719
step
.' Use the Pollinated Bloodspore Flower in your bags |use Pollinated Bloodspore Flower##34978
..goal Bloodspore Flower Used |q 11719/1
step
goto 52.1,52.5
.talk 25381
..turnin 11719
..accept 11720
step
goto 52.2,52.8
.talk 25380
..turnin 11720
..accept 11721
step
'Go southwest into the cave at [49.2,58.4] |n
.' Go inside the cave |goto 49.2,58.4,0.5 |noway |c
step
'Follow the path all the way down to 46.1,62.1 |goto 46.1,62.1
.' Use your Pouch of Crushed Bloodspore on Gammothra the Tormentor |use Pouch of Crushed Bloodspore##34979
.from Gammothra the Tormentor##25789
.get Head of Gammothra|q 11721/1
step
'Leave the cave and go southeast to 49.4,65.6 |goto 49.4,65.6 |n
.' The path up to the Massive Glowing Egg starts here |goto 49.4,65.6,0.5 |noway |c
step
'Follow the path up and jump down to 48.5,59.1 |goto 48.5,59.1
.click Massive Glowing Egg##7649 |tip Near the top of the hill, among a bunch of moths.  You will have to jump down to it.
..accept 11724
step
goto 52.2,52.8
.talk 25380
..turnin 11721
..accept 11722
step
goto 52.2,52.8
.talk 25381
..turnin 11724
step
goto 41.3,53.6
.talk 25237
..turnin 11722
step
'Go to the top of Warsong Hold to 42.3,55.7 |goto 42.3,55.7
.talk 25459
.' Go to Garrosh's Landing |goto 32.1,54.6,1 |c |noway
step
goto 32.2,54.1
.talk 25329
..turnin 11636
..accept 11642
step
goto 32.1,54.3
.talk 25475
..turnin 11642
..accept 11643
..accept 11644
step
goto 32.3,54.3
.talk 25476
..accept 11655
..accept 11660
step
'Go north to the top of the tower to 31.9,52.3 |goto 31.9,52.3
.talk 25504
..accept 11664
step
.' Escort Mootoo the Younger out of the tower |q 11664/1
|modelnpc Mootoo the Younger##25504
step
goto 31.7,54.4
.talk 25503
..turnin 11664
step
goto 29.9,54.4
.click Super Strong Metal Plate##7643+
.get 10 Super Strong Metal Plate|q 11644/1
step
goto 30.4,53.5
.from Kvaldir Mist Lord##25496, Kvaldir Mistweaver##25479+
.get 8 Tuskarr Relic |q 11655/1
.get Horn of the Ancient Mariner |q 11660/1
step
goto 32.4,49.1
.click Pneumatic Tank Transjigamarig##7159
.get Pneumatic Tank Transjigamarig|q 11643/1
step
goto 32.1,54.3
.talk 25475
..turnin 11643
..turnin 11644
..accept 11651
step
goto 32.2,54.1
.talk 25329
..turnin 11651
..accept 11652
step
goto 32.3,54.3
.talk 25476
..turnin 11655
..accept 11656
..turnin 11660
..accept 11661
step
goto 29.8,52.6
.' Stand at the front of the ship
.' Use your Tuskarr Torch |use Tuskarr Torch##34830
.' Destroy Bor's Hammer |q 11656/3
step
goto 31,49
.' Stand at the front of the ship
.' Use your Tuskarr Torch |use Tuskarr Torch##34830
.' Destroy The Kur Drakkar |q 11656/2
step
goto 31.7,48.3
.' Stand at the front of the ship
.' Use your Tuskarr Torch |use Tuskarr Torch##34830
.' Destroy The Serpent's Maw |q 11656/1
step
goto 26.8,54.7
.' Stand at the very edge of the rocks
.' Use your Horn of the Ancient Mariner |use Horn of the Ancient Mariner##34844
.kill Orabus the Helmsman##32576 |q 11661/1
step
goto 30.1,61.7
.' Stand at the front of the ship
.' Use your Tuskarr Torch |use Tuskarr Torch##34830
.' Destroy Bor's Anvil |q 11656/4
step
goto 32.3,54.3
.talk 25476
..turnin 11656
..turnin 11661
..accept 11662
step
goto 31.8,54.7
.click one of the Horde Siege Tanks sitting behind you to get into one |invehicle |c
|modelnpc Horde Siege Tank##25334
step
'Ride south to 34,61.6 |goto 34,61.6 |n
.' Use the buttons on your tank action bar to do the following around this area:
.' Ride near the big undead structure to Identify the Scourge Leader |q 11652/1
.' Obliterate 100 Scourge Units |q 11652/2
.' Rescue 3 Injured Warsong Soldiers |q 11652/3
step
'Exit the tank in a safe spot and go to Warsong Hold |goto 41.3,53.6
.talk 25237
..turnin 11652
..accept 11916
step
goto 41.7,54.7
.talk 25247
..accept 11574
step
'Go southeast outside to 47.1,75.5 |goto 47.1,75.5
.talk 25435
..turnin 11662
..accept 11613
step
goto 46.5,77.2
.kill 6 Skadir Raider##25522+ |q 11613/1
.kill 5 Skadir Longboatsman##25521+ |q 11613/2
step
goto 44.2,77.8
.' Kill the Riplash Myrmidon and cheering Skadir mobs
.talk 25636
..accept 12471
step
goto 47.1,75.5
.talk 25435
..turnin 11613
..accept 11619
..turnin 12471
step
goto 46.4,78.2
.' Kill Gamel the Cruel inside the cave |kill 1 Gamel the Cruel |q 11619/1 |tip He's standing inside a small cave.
step
goto 47.1,75.5
.talk 25435
..turnin 11619
..accept 11620
step
goto 43.6,80.5
.talk 25450
..turnin 11620
..accept 11625
step
goto 54.7,89.1
.' Go into the big building
.from Ragnar Drakkarlund##26451
.get Trident of Naz'jan |q 11625/1
step
goto 43.6,80.5
.talk 25450
..turnin 11625
..accept 11626
step
goto 52.2,88.2
.' Swim underwater to the bubbling rock at the very bottom |tip Stand on the bubbling rock at the very bottom underwater, so you don't run out of air.
.' Use your Trident of Naz'jan on Leviroth |use Trident of Naz'jan##35850
.kill 1 Leviroth##26452 |q 11626/1 |tip He's underwater.
step
goto 47.1,75.5
.talk 25435
..turnin 11626
step
goto 57,44.3
.talk 25809
..accept 11864 |instant
..accept 11866
..accept 11876
step
goto 57.3,44.1
.talk 25810
..accept 11869
step
goto 57,44
.talk 25812
..accept 11884
step
goto 56.8,44
.talk 25811
..accept 11865
step
goto 53.8,40.6
.' Use your D.E.H.T.A. Trap Smasher while standing next to Trapped Mammoth Calves |use D.E.H.T.A. Trap Smasher##35228 |tip They look like baby elephants laying on the ground in a trap.
.' Free 8 Mammoth Calves |q 11876/1
|modelnpc Trapped Mammoth Calf##25850
step
goto 53.4,42.7
.kill 10 Loot Crazed Diver##25836+ |q 11869/1
.get 15 Nesingwary Lackey Ear|q 11866/1
step
goto 46.4,40
.kill "Lunchbox"##25968 |q 11884/2 |tip It's a big rhino walking around this area with someone riding on his back.
.kill Nedar, Lord of Rhinos##25801 |q 11884/1 |tip He jumps off once "Lunchbox" dies.
step
goto 56.2,50.5
.' Stand inside the Caribou Traps on the ground |tip They look like metal spiked traps on the ground.
.' Use your Pile of Fake Furs |use Pile of Fake Furs##35127
.' Trap 8 Nesingwary Trappers |q 11865/1
|model Caribou Trap##7529
step
goto 57,44.3
.talk 25809
..turnin 11866
..turnin 11876
..accept 11878
step
goto 57.3,44.1
.talk 25810
..turnin 11869
..accept 11870
step
goto 57,44
.talk 25812
..turnin 11884
step
goto 56.8,44
.talk 25811
..turnin 11865
..accept 11868
step
goto 59.5,30.4
.' Deliver the Orphaned Mammoth Calf to Khu'nok |q 11878/1
step
goto 59.5,30.4
.talk 25862
..turnin 11878
..accept 11879
step
'Ride around and find a Wooly Mammoth Bull |n
.click it to ride it |invehicle |c
|modelnpc Wooly Mammoth Bull##25743
step
'Go north on the Wooly Mammoth Bull to 53.7,23.9 |goto 53.7,23.9
.' Use the skills on your mammoth action bar to do the following:
.from Kaw the Mammoth Destroyer##25802
.click Kaw's War Halberd on the ground
.get Kaw's War Halberd |q 11879/1
step
goto 57,44.3
.talk 25809
..turnin 11879
step
goto 57.3,56.5
.kill Karen "I Don't Caribou" the Culler##25803 |q 11868/1 |tip She walks around in this spot.  Be careful, she has 2 stealthed guards that come with her.
step
goto 57.8,55.1
.talk 25838
..turnin 11870
..accept 11871
step
goto 59.1,55.9
.from Northsea Thug##25843+
.click Shipment of Animal Parts##7678
.get 12 Shipment of Animal Parts|q 11871/1
step
goto 57.8,55.1
.talk 25838
..turnin 11871
..accept 11872
step
goto 61.5,66.5
.kill Clam Master K##25800 |q 11872/1 |tip He's walking around underwater.
step
goto 57.3,44.1
.talk 25810
..turnin 11872
step
goto 56.8,44
.talk 25811
..turnin 11868
step
goto 54.3,36.1
.talk 25292
..accept 11612
step
goto 54.7,35.8
.talk 187565
..accept 11605
step
goto 54.4,35.1
.kill 12 Beryl Treasure Hunter##25353+ |q 11612/1
step
goto 52.8,34
.click Elder Sagani##7655
.' Identify the Elder Sagani |q 11605/2
step
goto 52.3,31.2
.click Elder Takret##7655
.' Identify the Elder Takret |q 11605/3
step
goto 50.9,32.4
.click Elder Kesuk##7655
.' Identify the Elder Kesuk |q 11605/1
step
goto 54.7,35.8
.talk 187565
..turnin 11605
..accept 11607
step
goto 54.3,36.1
.talk 25292
..turnin 11612
..accept 11617
step
goto 51.5,31.4
.from Beryl Hound##25355+
.get 6 Cores of Malice|n
.' Use the Cores of Malice on Kaskala Craftsmen and Kaskala Shaman |use Core of Malice##34711
.' Free 3 Kaskala Craftsman spirits |q 11607/1
.' Free 3 Kaskala Shaman spirits |q 11607/2
|modelnpc Kaskala Craftsman##25321
|modelnpc Kaskala Shaman##25322
step
'Kill Beryl Reclaimers all around this area
.collect 3 Gnomish Grenade##34772|q 11617
|modelnpc Beryl Reclaimer##25449
step
goto 52.2,32.1
.' Use your Gnomish Grenade while standing under the floating platform |use Gnomish Grenade##34772 |tip If you can fly, you can stand on the floating platform and use your Gnomish Grenade.
.' Destroy the North Platform |q 11617/2
step
goto 51,33.9
.' Use your Gnomish Grenade while standing under the floating platform |use Gnomish Grenade##34772 |tip If you can fly, you can stand on the floating platform and use your Gnomish Grenade.
.' Destroy the West Platform |q 11617/3
step
goto 52.8,34.5
.' Use your Gnomish Grenade while standing under the floating platform |use Gnomish Grenade##34772 |tip If you can fly, you can stand on the floating platform and use your Gnomish Grenade.
.' Destroy the East Platform |q 11617/1
step
goto 54.7,35.8
.talk 187565
..turnin 11607
..accept 11609
step
goto 54.3,36.1
.talk 25292
..turnin 11617
..accept 11623
step
ding 71
step
goto 53.1,33.3
.click Tuskarr Ritual Object##7626
.get 6 Tuskarr Ritual Object|q 11609/1
step
goto 50.1,32.6
.' Go up the hill
.kill Curator Insivius##25448 |q 11623/1 |tip He's standing on a big blue circle platform.
step
goto 54.7,35.8
.talk 187565
..turnin 11609
..accept 11610
step
goto 54.3,36.1
.talk 25292
..turnin 11623
step
goto 52.8,34
.' Use your Tuskarr Ritual Object while standing next to the Elder Sagani |use Tuskarr Ritual Object##34715
.' Complete Elder Sagani's ceremony |q 11610/2
|model Elder Sagani##7655
step
goto 52.3,31.2
.' Use your Tuskarr Ritual Object while standing next to the Elder Takret |use Tuskarr Ritual Object##34715
.' Complete Elder Takret's ceremony |q 11610/3
|model Elder Takret##7655
step
goto 50.9,32.4
.' Use your Tuskarr Ritual Object while standing next to the Elder Kesuk |use Tuskarr Ritual Object##34715
.' Complete Elder Kesuk's ceremony |q 11610/1
|model Elder Kesuk##7655
step
goto 54.7,35.8
.talk 187565
..turnin 11610
step
goto 45.3,34.5
.talk 24795
..fpath Amber Ledge
step
goto 45.3,33.4
.talk 25262
..turnin 11574
..accept 11587
step
goto 45,33.4
.talk 25291
..accept 11576
step
goto 40.5,39.2
.from Beryl Mage Hunter##25585+
.get Beryl Prison Key|n
.click an Arcane Prison
.' Free an Arcane Prisoner |q 11587/1
step
goto 41.2,41.8|n
.' The path down to Monitoring the Rift: Cleftcliff Anomaly starts here |goto 41.2,41.8,0.5 |noway |c
step
goto 34.3,42
.' Use your Arcanometer in this spot next to the purple glowing crack in the ground |use Arcanometer##34669
.' Take the Cleftcliff Anomaly Reading |q 11576/1
step
goto 45.3,33.3
.talk 25262
..turnin 11587
..accept 11590
step
goto 45,33.4
.talk 25291
..turnin 11576
..accept 11582
step
goto 46.8,29.3|n
.' The path down to Monitoring the Rift: Sundered Chasm starts here |goto 46.8,29.3,0.5 |noway |c
step
'Go down the path and underwater to 44,28.6 |goto 44,28.6
.' Use your Arcanometer next to the huge pink crack underwater |use Arcanometer##34669
.' Take the Sundered Chasm Reading |q 11582/1
step
goto 45,33.4
.talk 25291
..turnin 11582
..accept 12728
step
goto 46.8,29.3|n
.' The path down to Monitoring the Rift: Sundered Chasm starts here |goto 46.8,29.3,0.5 |noway |c
step
goto 40.1,19.7
.' Stand in the mouth of the cave, past the torches
.' Use your Arcanometer |use Arcanometer##34669
.' Take the Winterfin Cavern Reading |q 12728/1
step
goto 45,33.4
.talk 25291
..turnin 12728
step
goto 43.5,37.4
.' Fight a Beryl Sorcerer
.' Use your Arcane Binder on him when you see the "Beryl Sorcerer can now be captured" message in your chat window |use Arcane Binder##34691
.' Capture a Beryl Sorcerer|q 11590/1
|modelnpc Beryl Sorcerer##25316
step
goto 45.3,33.3
.talk 25262
..turnin 11590
..accept 11646
step
'Go inside the tall tower to 46.3,32.8 |goto 46.3,32.8
.talk 25480
..turnin 11646
..accept 11648
step
'Use your Neural Needler on the Imprisoned Beryl Sorcerer repeatedly to Interrogate the Prisoner |use Neural Needler##34811
.' Interrogate the Prisoner |q 11648/1
|modelnpc Imprisoned Beryl Sorcerer##25478
step
goto 46.3,32.8
.talk 25480
..turnin 11648
..accept 11663
step
'Go outside the tower to 45.3,33.3 |goto 45.3,33.3
.talk 25262
..turnin 11663
..accept 11671
step
goto 42.1,39.5
.' Use your Beryl Shield Detonator inside the big blue glowing circle |use Beryl Shield Detonator##34897 |tip If it won't let you, wait until Inquisitor Salrand appears again.
.from Inquisitor Salrand##25584
.click Salrand's Lockbox
.get Salrand's Broken Key |q 11671/1
step
goto 45.3,33.3
.talk 25262
..turnin 11671
..accept 11679
step
goto 45.3,34.5
.talk 24795
..turnin 11679
..accept 11680
step
goto 46.4,37.3
.talk 25356
..turnin 11680
..accept 11681
'Watch the cutscene, then you'll get teleported back to Amber Ledge |goto 46.4,32.6,0.3 |noway |c
step
goto 46.4,32.4
.talk 25785
..turnin 11681
..accept 11682
step
'Go outside the tower to 45.3,34.5 |goto 45.3,34.5
.talk 24795
..turnin 11682
..accept 11733
.' Fly to Transitus Shield |goto 33.1,34.4,0.3 |c |noway
step
goto 32.9,34.4
.talk 25314
..turnin 11733
..accept 11900
..accept 11910
step
goto 33.3,34.5
.talk 26117
..accept 11918
step
goto 33.5,34.4
.talk 26110
..accept 11912
step
'As you do the following steps, do the following:
.' Kill Glacial Ancients and get 3 Glacial Splinters |n
.' Kill Magic-Bound Ancients and get 3 Magic-Bound Splinters |n
.' Kill 10 Coldarra Spellweaver |n
.click Frostberry Bushes
.get 10 Frostberry|n
|modelnpc Glacial Ancient##25709
|modelnpc Magic-Bound Ancient##25707
|modelnpc Coldarra Spellweaver##25722
|model Frostberry Bush##7702
step
goto 32.7,29
.from Coldarra Spellbinder##25719+
.get Scintillating Fragment|n
.click the Scintillating Fragment in your bags|use Scintillating Fragment##35648
..accept 11941
step
goto 28.3,28.5
.click Coldarra Geological Monitor##7800
.' Take the Nexus Geological Reading |q 11900/1
step
goto 31.7,20.6
.click Coldarra Geological Monitor##7800
.' Take the Northern Coldarra Reading |q 11900/3
step
goto 22.6,23.5
.click Coldarra Geological Monitor##7800
.' Take the Western Coldarra Reading |q 11900/4
step
goto 28.3,35
.click Coldarra Geological Monitor##7800
.' Take the Southern Coldarra Reading |q 11900/2
step
'Make sure you have:
.kill 10 Coldarra Spellweaver##25722+ |q 11918/1
.from Glacial Ancient##25709+
.get 3 Glacial Splinter |q 11910/1
from Magic-Bound Ancient##25707+
.get 3 Magic-Bound Splinter |q 11910/2
.' 10 Frostberries |get 10 Frostberry |q 11912/1
step
goto 32.9,34.4
.talk 25314
..turnin 11900
..turnin 11910
step
goto 33.3,34.5
.talk 26117
..turnin 11918
..accept 11936
..turnin 11941
..accept 11943
step
goto 33.5,34.4
.talk 26110
..turnin 11912
..accept 11914
step
'As you do the following steps:
.from Coldarra Wyrmkin##25728+
.get 5 Frozen Axe|n
.' Skip to the next step of the guide
step
goto 24.1,29.6
.from Warbringer Goredrak##25712
.get Energy Core|q 11943/1
step
goto 27.3,20.5
.from General Cerulean##25716
.get Prison Casing|q 11943/2
step
'Make sure you have 5 Frozen Axes |collect 5 Frozen Axe##35586 |q 11936
step
goto 27.8,24.2
.from Arcane Serpent##25721+
.get 5 Nexus Mana Essence|q 11914/1
.click Blue Dragon Eggs |tip The Blue Dragon Eggs look like big eggs with blue crystals on them on the ground.
.' Destroy 5 Dragon Eggs |q 11936/1
step
goto 33.3,34.5
.talk 26117
..turnin 11936
..accept 11919
..turnin 11943
step
goto 33.5,34.4
.talk 26110
..turnin 11914
step
goto 24.6,27.1|n
.' Use your Raelorasz's Spear on a Nexus Drake Hatchling |use Raelorasz's Spear##35506 |tip They are flying above you in the sky.
.' Do not kill it, let it hit you until it becomes friendly |havebuff Drake Hatchling Subdued |c
|modelnpc Nexus Drake Hatchling##26127
step
goto 33.3,34.5
.' Capture the Nexus Drake |q 11919/1
.talk 26117
..turnin 11919
..accept 11931
step
'Use the Augmented Arcane Prison in your bags |use Augmented Arcane Prison##35671
.talk 26237
..accept 11946
..turnin 11946
..accept 11951
step
goto 32.7,29
.from Coldarra Spellbinder##25719+
.get 3 Shimmering Rune|q 11931/1
step
goto 32.7,27.8
.from Inquisitor Caleras##25720
.get Azure Codex|q 11931/2
step
'Wander all around and do the following:
.click Crystallized Mana##5013
.get 10 Crystallized Mana Shard|q 11951/1
step
'Use the Augmented Arcane Prison in your bags |use Augmented Arcane Prison##35671
.talk 26237
..turnin 11951
..accept 11957
step
'Use the Augmented Arcane Prison in your bags |use Augmented Arcane Prison##35671
.talk 26206
.'Tell her you are ready to face Saragosa |goto 21.2,22.5,0.5 |noway |c
step
'She teleports you to a platform
.click the Arcane Power Focus in your bags|use Arcane Power Focus##35690
.from Saragosa##26231
.get Saragosa's Corpse |q 11957/1
step
'Use the Augmented Arcane Prison in your bags |use Augmented Arcane Prison##35671
.talk 26206
..turnin 11957
..accept 11967
step
'Use the Augmented Arcane Prison in your bags |use Augmented Arcane Prison##35671
.talk 26206
.' Tell her to return you to Transitus Shield |goto 33.3,34.4,0.5 |noway |c
step
goto 33.3,34.5
.talk 26117
..turnin 11931
..turnin 11967
..accept 11969
step
goto 25.4,21.7
.' Use Raelorasz' Spark next to the Signal Fire |use Raelorasz' Spark##44950
.' Watch the cutscene
.' Lure Malygos |q 11969/1
|model Signal Fire##1967
step
goto 33.3,34.5
.talk 26117
..turnin 11969
step
'Fly to Warsong Hold |goto 40.4,51.5,0.5 |c |noway
step
'Go downstairs to 41.7,54.7 |goto 41.7,54.7
.talk 25978
..accept 11888
step
goto 41.6,53.5
.talk 25272
..accept 12486
step
goto 40.4,51.5
.talk 25288
'Fly to Amber Ledge |goto 45.1,34.1,0.5 |noway |c
step
goto 63.8,46.1
.talk 26169
..accept 11949
step
goto 64,45.7
.talk 26213
..accept 11945
step
goto 65.3,47.2
.kill 12 Kvaldir Raider##25760+ |q 11949/1
.click Kaskala Supplies##644
.get 8 Kaskala Supplies|q 11945/1
step
goto 63.8,46.1
.talk 26169
..turnin 11949
..accept 11950
step
goto 64,45.7
.talk 26213
..turnin 11945
step
goto 67.2,54.9
.talk 26218
..turnin 11950
..accept 11961
step
goto 67.7,50.4
.click Iruk's body |tip His body is floating underwater.
.' Search his corpse
.get Issliruk's Totem |q 11961/1
|modelnpc Iruk##26219
step
goto 67.2,54.9
.talk 26218
..turnin 11961
..accept 11968
step
goto 67.4,56.8
.kill Heigarr the Horrible##26266 |q 11968/1 |tip He is fighting amongst the raiders here.
step
goto 67.2,54.9
.talk 26218
..turnin 11968
step
goto 67.2,54.9
.talk 28382
..accept 12117
step
goto 64,35.8
.talk 25984
..accept 11887
step
goto 62.9,35.8
.click Fizzcrank Recon Pilots on the ground around this area
.' Search their bodies for the pilot's emergency toolkit
.get 7 Gnomish Emergency Toolkit|q 11887/1
step
goto 77.8,37.8
.talk 26847
..fpath Taunka'le Village
step
goto 77.5,37
.talk 25849
..turnin 11887
..accept 11881
step
goto 77.3,36.9
.talk 25602
..accept 11674
step
home Taunka'le Village
step
goto 75.9,37.2
.talk 24703
..turnin 11916
step
goto 77.1,37.8
.talk 24702
..accept 11684
step
goto 77.3,38.5
.talk 25982
..turnin 11888 |instant
..accept 11890
step
goto 70.6,36.9
.' Use your Map of the Geyser Fields next to the huge hole in the ground |use Map of the Geyser Fields##34920
.' Mark the Location of the South Sinkhole |q 11684/1
step
goto 69.9,32.8
.' Use your Map of the Geyser Fields next to the huge hole in the ground |use Map of the Geyser Fields##34920
.' Mark the Location of the Northeast Sinkhole |q 11684/2
step
goto 66.4,32.9
.' Use your Map of the Geyser Fields next to the huge hole in the ground |use Map of the Geyser Fields##34920
.' Mark the Location of the Northwest Sinkhole |q 11684/3
step
goto 63.5,37
.' Use Jenny's Whistle next to this crashed airplane |use Jenny's Whistle##35272
.' Escort Jenny back to Fezzix Geartwist at [77.5,37] |q 11881/1
step
goto 77.5,37
.talk 25849
..turnin 11881
step
goto 77.6,36.9
.talk 25983
..accept 11893
step
goto 77.1,37.8
.talk 24702
..turnin 11684
..accept 11685
step
goto 75.5,33.6
.' Use your Windsoul Totem to plant a Windsoul Totem in the ground |use Windsoul Totem##35281
.from Steam Rager##24601+ |tip Kill them near your totem.
.' Collect 10 Energy |q 11893/1
step
goto 74.7,23.7
.talk 25604
..turnin 11674
..accept 11675
step
goto 75.2,18.7
.kill 10 Plagued Magnataur##25615+ |q 11675/1
step
goto 74.7,23.7
.talk 25604
..turnin 11675
..accept 11677
step
goto 74.7,14.1
.' Use Highmesa's Cleansing Seeds next to the Den of Dying Plague Cauldron |use Highmesa's Cleansing Seeds##34913 |tip It looks like a big pot inside the cave.
.' Neutralize the Plague Cauldron |q 11677/1
|model Den of Dying Plague Cauldron##216
step
goto 74.7,23.7
.talk 25604
..turnin 11677
..accept 11678
..accept 11683
step
goto 68.2,17
' |from Bone Warrior##26126+, Cult Plaguebringer##24957+
.' Destroy 20 Talramas Scourge |q 11683/1
step
'Go inside the undead building and upstairs to 69.8,12.6 |goto 69.8,12.6
.talk 25658
..turnin 11678
..accept 11687
step
goto 69.7,13.1
.' Go outside and follow the path up the building
.kill Doctor Razorgrin##25678 |q 11687/1 |tip He walks around in a side room almost at the top of the undead building.
step
goto 69.7,13.9
.' Follow the path to the very top of the building
.kill Lich-Lord Chillwinter##25682 |q 11687/2 |tip Standing at the very top of the undead building.
step
goto 74.7,23.7
.talk 25604
..turnin 11687
..accept 11689
..turnin 11683
step
goto 66.2,21.9
.' Inspect the Fizzcrank Pumping Station environs |q 11890/1
step
'Hearth to Taunka'le Village |goto 76.3,37.2,0.5 |use hearthstone##6948 |noway |c
step
goto 77.3,36.9
.talk 25602
..turnin 11689
step
goto 77.6,36.9
.talk 25983
..turnin 11893
step
goto 77.5,37
.talk 25849
..accept 11894
step
goto 77.3,38.5
.talk 25982
..turnin 11890
..accept 11895
step
goto 77.1,38.7
.click the Storm Totem
.from Storm Tempest##26045
.' Master the Storm |q 11895/1
step
goto 77.3,38.5
.talk 25982
..turnin 11895
..accept 11896
step
goto 76.9,37.6
.talk 26104
..accept 11906
step
goto 77.3,36.9
.talk 25602
..accept 11899
step
goto 76.5,40.7
.from Marsh Caribou##25680+
.collect 5 Uncured Caribou Hide##35288 |q 11894
step
goto 87.7,42.5
.from Frozen Elemental##25715+
.get 5 Elemental Heart|q 11685/1
step
goto 75.6,35.8
.talk 24730
..turnin 11685
..accept 11695
step
goto 75.8,32.5
.click the Uncured Caribou Hides in your bags next to the small steam vent |use Uncured Caribou Hide##35288 |tip It looks like a small white bump on the ground with steam coming out of it.
.get 5 Steam Cured Hide|q 11894/1
step
goto 78.7,28.4
.from Chieftain Gurgleboggle##25725
.get Gurbleboggle's Key |n
.click Gurbleboggle's Bauble |tip Gurbleboggle's Bauble looks like a small stone altar in this small pond with a big white pearl sitting on it.
.get Lower Horn Half|q 11695/2
step
goto 77.5,37
.talk 25849
..turnin 11894
step
goto 75.9,37.2
.talk 24703
..accept 11628
step
goto 82.2,30.4
.from Scourged Mammoth##25452+
.get 5 Scourged Mammoth Pelt|q 11628/1
step
goto 75.9,37.2
.talk 24703
..turnin 11628
..accept 11630
step
goto 76.1,28
.click Scourged Earth##49
.get 8 Scourged Earth|q 11630/1
step
goto 75.9,37.2
.talk 24703
..turnin 11630
..accept 11633
step
goto 84.1,31.1,1
.' Equip the Imbued Scourge Shroud in your bags |havebuff Shroud of the Scourge |use Imbued Scourge Shroud##34782
step
goto 88.9,28.6
.' Scout the Spire of Pain |q 11633/3 |tip Go up the staircase into this room to Scout the Spire of Pain.
step
goto 88.11,20.9
.' Scout the Spire of Blood |q 11633/2 |tip Go all the way up the staircase into this room to Scout the Spire of Blood.
step
goto 83.91,20.5
.' Scout the Spire of Decay |q 11633/1 |tip Go up the staircase into this room to Scout the Spire of Decay.
step
goto 75.9,37.2
.talk 24703
..turnin 11633
..accept 11640
step
goto 76,37.3
.talk 24709
..accept 11647
.talk 24706
..accept 11641
step
goto 68.6,40.4
.from Chieftain Burblegobble##25726
.get Burblegobble's Key |n
.click Burblegobble's Bauble |tip Burblegobble's Bauble looks like a small stone altar in this small pond with a big white pearl sitting on it.
.get Upper Horn Half|q 11695/1
step
.click Fizzcrank Spare Parts on the ground as you do the following steps: |tip They look like metal parts on the ground.
.get 15 Fizzcrank Spare Parts|n
.' Skip to the next step of the guide
|model Fizzcrank Spare Parts##6314
|model Fizzcrank Spare Parts##449
|model Fizzcrank Spare Parts##6868
|model Fizzcrank Spare Parts##6867
step
goto 68.1,27.5
.' Use Sage's Lightning Rod on robots and kill them |use Sage's Lightning Rod##35352
.' Weaken and destroy 15 Robots |q 11896/1
step
goto 64.6,23.6
.from Fizzcrank Mechagnome##25814+
.' Use The Greatmother's Soulcatcher on their bodies |use The Greatmother's Soulcatcher##35401
.' Capture 10 Gnome souls |q 11899/1
step
'Make sure you have 15 Fizzcrank Spare Parts |q 11906/1
step
ding 72
step
'Hearth to Taunka'le Village |goto 76.3,37.2,0.5 |use hearthstone##6948 |noway |c
step
goto 76.9,37.6
.talk 26104
..turnin 11906
step
goto 77.3,38.5
.talk 25982
..turnin 11896
..accept 11907
step
goto 77.3,36.9
.talk 25602
..turnin 11899
..accept 11909
step
goto 75.6,35.8
.talk 24730
..turnin 11695
..accept 11706
step
goto 85.2,28.5
.kill 15 En'kilah Ghoul##25393+ |q 11641/1
.kill 5 En'kilah Necromancer##25378+ |q 11641/2
step
goto 89.4,28.9
.' Kill the 2 bug guards and the 2 cocoons next to him
.from High Priest Talet-Kha##26073
.get High Priest Talet-Kha's Scroll |q 11640/2
step
goto 87.7,29.8
.' Use Sage Aeire's Totem next to this big cauldron |use Sage Aeire's Totem##34806
.' Cleanse the East Cauldron |q 11647/1
step
goto 88.1,20.9
.from High Priest Andorath##25392
.get High Priest Andorath's Scroll |q 11640/3
step
goto 86.2,22.7
.' Use Sage Aeire's Totem next to this big cauldron |use Sage Aeire's Totem##34806
.' Cleanse the Central Cauldron |q 11647/2
step
goto 83.9,20.5
.from Mystical Webbing##25422+
.from High Priest Naferset##26076
.get High Priest Naferset's Scroll |q 11640/1
step
goto 85.5,20.2
.' Use Sage Aeire's Totem next to this big cauldron |use Sage Aeire's Totem##34806
.' Cleanse the West Cauldron |q 11647/3
step
goto 87.7,22.0
'Find and Kill Darkfallen Bloodbearer |tip He walks up and down the path to the biggest temple.
.get Vial of Fresh Blood|n
.click the Vial of Fresh Blood|use Vial of Fresh Blood##34815
..accept 11654
|modelnpc Darkfallen Bloodbearer##26115
step
'Go inside the big temple to 87.6,20 |goto 87.6,20
.talk 25516
..turnin 11654
..accept 11659
step
'Walk around on this floor:
.' Attack En'Kilah Blood Globes |tip They look like red globes sitting on golden pedestals.
.' Shatter 5 Blood Globes |q 11659/1
step
goto 76.7,37.9
.talk 24733
..turnin 11659
step
goto 76,37.3
.talk 24709
..turnin 11647
step
goto 76,37.3
.talk 24706
..turnin 11641
step
goto 75.9,37.2
.talk 24703
..turnin 11640
step
goto 70.6,36.9
.' Stand next to the sinkhole |tip It's a huge hole in the ground.
.' Use The Horn of Elemental Fury in your bags |use The Horn of Elemental Fury##34968
..' Collapse the Nerubian tunnels |q 11706/2
.' Wait for Lord Kryxix that spawns
.kill Lord Kryxix##25629 |q 11706/1
step
goto 65.2,28.8
.click South Point Station Valve##353
.kill The Grinder##25833 |q 11907/4
step
'Go north on top of the pump station to 64.4,23.4 |goto 64.4,23.4
.click The Gearmaster's Manual##7883 |tip It looks like a big open book on the floor in a small room at the very top of the pump station.
.' Research The Gearmaster's Manual |q 11909/1
.from Gearmaster Mechazod##25834
.get Mechazod's Head |q 11909/2
step
goto 63.7,22.5
.click Mid Point Station Valve##353
.kill Max Blasto##25832 |q 11907/3
step
goto 60.2,20.4
.click West Point Station Valve##353
.kill Twonky##25830 |q 11907/1
step
goto 65.4,17.4
.click North Point Station Valve##353
.kill ED-210##25831 |q 11907/2
step
goto 75.6,35.8
.talk 24730
..turnin 11706
step
goto 77.3,36.9
.talk 25602
..turnin 11909
step
goto 77.3,38.5
.talk 25982
..turnin 11907
step
goto 77.7,37.8 |n
.talk 26847
'Fly to Amber Ledge |goto 45.1,34.1,0.5 |noway |c
step
goto 48.4,19.7
.talk 25336
..accept 11593
..accept 11594
step
goto 47.9,21.3
.' Use Ragefist's Torch on Dead Caravan Guards and Workers |use Ragefist's Torch##34692 |tip The Dead Caravan Guards and Workers are corpses laying on the ground around this area.
.' Torch 10 Fallen Caravan Guards & Workers |q 11593/1
.from Ghostly Sage##25351+, Risen Longrunner##25350+
.' Lay 20 Taunka spirits to rest |q 11594/1
step
goto 48.4,19.7
.talk 25336
..turnin 11593
..turnin 11594
step
goto 48.3,19.7
.talk 25335
..accept 11592
step
'Follow and fight with Longrunner Proudhoof
.' Make sure to keep him alive
.' Successfully assist Longrunner Proudhoof's assault |q 11592/1
|modelnpc Longrunner Proudhoof##25335
step
goto 43.5,14
.talk 25197
..accept 11571
step
goto 42.5,15.9
.from Scalder##25226 |tip He walks back and forth on the pink trench underwater.
.' Use The King's Empty Conch on Scalder's corpse |use The King's Empty Conch##34598
.get The King's Filled Conch |q 11571/1
step
goto 43.5,14
.talk 25197
..turnin 11571
..accept 11559
step
goto 41.5,13.4
.click Winterfin Clam##261 |tip They are scattered around the ground underwater.
.get 5 Winterfin Clam|q 11559/1
step
goto 43,13.8
.talk 25206
..turnin 11559
step
goto 42.8,13.7
.talk 25199
..accept 11561
step
goto 43.5,14
.talk 25197
..accept 11560
step
goto 40.6,17.5
' |from Winterfin Oracle##25216+, Winterfin Shorestriker##25215+
.kill 15 Winterfin murlocs |q 11561/1
.click the yellow cages
.' Rescue 20 Winterfin Tadpoles |q 11560/1
|model Cage##1787
step
goto 42.8,13.7
.talk 25199
..turnin 11561
step
goto 43.5,14
.talk 25197
..turnin 11560
..accept 11562
step
goto 42,12.8
.talk 25205
..turnin 11562
..accept 11563
step
goto 42,13.2
.talk 25211
..accept 11564
step
goto 40.3,12.4
.from Glimmer Bay Orca##25204+
.get 7 Succulent Orca Blubber|q 11564/1
step
goto 37.4,9.8
.from Glrggl##25203
.get Glrggl's Head |q 11563/1
step
goto 42,12.8
.talk 25205
..turnin 11563
..accept 11565
step
goto 42,13.2
.talk 25211
..turnin 11564
step
goto 43.5,14
.talk 25197
..turnin 11565
..accept 11566
step
'Go southwest to Winterfin Village |n
.' Use King Mrgl-Mrgl's Spare Suit |havebuff INV_Misc_Head_Murloc_01 |use King Mrgl-Mrgl's Spare Suit##34620
step
'Go inside the cave to 37.8,23.2 |goto 37.8,23.2
.talk 28375
..accept 11569
step
'Go down the path and underneath you to 38.4,22.7 |goto 38.4,22.7
.from Keymaster Urmgrgl##25210
.get Urmgrgl's Key |q 11569/1
step
'Follow the path up and to the back of the cave to 37.6,27.4 |goto 37.6,27.4
.from Claximus##25209
.get Claw of Claximus|q 11566/1
step
'Go back up the path to 37.8,23.2 |goto 37.8,23.2
.talk 28375
..turnin 11569
step
goto 37.8,23
.talk 25208
..accept 11570
.' Escort Lurgglbr to safety |q 11570/1
step
goto 43.5,14
.talk 25197
..turnin 11566
..turnin 11570
step
goto 49.6,11.1
.talk 26848
..fpath Bor'gorok Outpost
step
goto 49.6,10.6
.talk 25326
..turnin 11592
step
goto 50.3,9.7
.talk 25339
..turnin 12486
..accept 11624
step
goto 46.6,9.3
.talk 25376
..turnin 11624
..accept 11627
step
goto 45.9,13.1
.' Fight Churn until he submits |q 11627/2
|modelnpc Churn##25418
step
goto 50.8,15.5
.' Fight Simmer until he submits |q 11627/1
|modelnpc Simmer##25416
step
goto 46.6,9.3
.talk 25376
..turnin 11627
..accept 11649
step
goto 45.2,9.3
.from Enraged Tempest##25415+
.get 5 Tempest Mote|q 11649/1
step
goto 46.6,9.3
.talk 25376
..turnin 11649
..accept 11629
step
goto 50.3,9.7
.talk 25339
..turnin 11629
..accept 11631
step
'Use Imperean's Primal in your bags next to Spirit Talker Snarlfang's Totem |use Imperean's Primal##34779
.' Divine Farseer Grimwalker's fate |q 11631/1
|modelnpc Snarlfang's Totem##25455
step
goto 50.3,9.7
.talk 25339
..turnin 11631
..accept 11635
step
goto 49.5,10
.talk 25374
..accept 11639
step
goto 53.8,9.4
.kill 10 Magmoth Shaman##25428+ |q 11639/1
.kill 5 Magmoth Forager##25429+ |q 11639/2
.kill 3 Magmoth Crusher##25434+ |q 11639/3
step
goto 54.2,13.1
.'Kill 3 Mate of Magmothregar inside this cave |kill 3 Mate of Magmothregar |q 11639/4
step
'Go to the bottom of the cave to 56.1,9.1 |goto 56.1,9.1
.talk 25425
..turnin 11635
..accept 11637
step
goto 56.2,12.8
.from Kaganishu##25427
.get Kaganishu's Fetish |q 11637/2
step
goto 56.1,9.1
.' Use Kaganishu's Fetish on Farseer Grimwalker's Spirit |use Kaganishu's Fetish##34781
.talk 25425
..turnin 11637
..accept 11638
.click Farseer Grimwalker's Remains##7640
.get Farseer Grimwalker's Remains |q 11638/1
step
'Leave the cave and go to 49.5,10 |goto 49.5,10
.talk 25374
..turnin 11639
step
goto 50.3,9.7
.talk 25339
..turnin 11638
step
|fly Venomspite
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Northrend 70-80\\Howling Fjord (70-71)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Northrend 70-80\\Dragonblight (71-74)
startlevel 70.00
dynamic on
step
'Go down the zeppelin tower to 78.5,29 |goto Howling Fjord,78.5,29
.talk 24126
..accept 11167
step
goto 79.7,30.8
.talk 24342
home Vengeance Landing
step
goto 79.2,31.2
.talk 23938
..accept 11227
step
goto 78.6,31.2
.talk 23780
..accept 11270
step
goto 75.8,31.5
.' Use your Burning Torch on Alliance and Forsaken Corpses |use Burning Torch##33278
.' Burn 10 Fallen Combatants |q 11270/1
.' Use your Plaguehound Cage |use Plaguehound Cage##33221
.from Fjord Crow##23945+ |tip They are flying overhead around this area.
.collect 5 Crow Meat##33238|q 11227 |n
.click the Crow Meat in your bags|use Crow Meat##33238
.' Feed your Plaguehound 5 times |q 11227/1
step
goto 81,35.5
.click Plague Containers##7470
.get 10 Intact Plague Container|q 11167/1
step
goto 78.6,31.2
.talk 23780
..turnin 11270
..accept 11221
step
goto 79.2,31.2
.talk 23938
..turnin 11227
..accept 11253
step
goto 78.5,29
.talk 24126
..turnin 11167
..accept 11168
step
goto 77.6,34.7
.talk 23998
.' Listen to Razael's Report |q 11221/1
step
goto 80.1,37.8
.talk 23778
.' Listen to Lyana's Report |q 11221/2
step
goto 78.6,31.2
.talk 23780
..turnin 11221
..accept 11229
step
goto 79.2,31.2
.' Stand next to Pontius |tip Standing in front of some dog kennels.
.' Use the Plaguehound Leash in your bags |use Plaguehound Leash##33486
.' Follow the Plaguehound Tracker that spawns
.' He leads you to a cave |goto 76.5,20.1,0.5 |c
|modelnpc Pontius##23938
|modelnpc Plaguehound Tracker##24156
step
'Go inside the cave to 75.9,19.7 |goto 75.9,19.7
.click Dragonskin Scroll##163
..turnin 11253
..accept 11254
step
goto 76.9,20
.from Giant Tidecrawler##23929+
.get 3 Giant Toxin Gland |q 11168/1
step
goto 78.5,29
.talk 24126
..turnin 11168
..accept 11170
step
goto 78.6,31.2
.talk 23780
..turnin 11254
..accept 11295
step
goto 79.1,29.8
.talk 23816
.' Tell her you want to intercept the Alliance reinforcements
.' Use the Plague Vials in your bags while flying over the Alliance ships |use Plague Vials##33349
.' Infect 16 North Fleet Reservists |q 11170/1
step
goto 78.5,29
.talk 24126
..turnin 11170
..accept 11304
step
goto 79.1,29.8
.talk 23816
.' Fly to the Windrunner |goto Howling Fjord,81.0,36.4,2 |noway |c
step
goto 84.7,36.5
.talk 24037
..turnin 11229
..accept 11230
step
goto 84.7,36.5
.kill 15 North Fleet Marine##23983+ |q 11230/1
step
goto 84.7,36.5
.talk 24037
..turnin 11230
..accept 11232
step
goto 80.3,38.2
.' Use Cannoneer's Smoke Flare next to the cannon |use Cannoneer's Smoke Flare##33335 |tip It's a cannon on top of the wooden wall.
.' Mark the Eastern Cannon |q 11232/1
step
goto 79.3,40.1
.' Use Cannoneer's Smoke Flare next to the cannon |use Cannoneer's Smoke Flare##33335 |tip It's a cannon on top of the wooden wall.
.' Mark the Western Cannon |q 11232/2
step
goto 78.7,37.1
.talk 23778
..turnin 11232
..accept 11233
step
goto 82.2,40.8
.kill Sergeant Lorric##23963 |q 11233/3 |tip Standing between 2 cannons on the shore.
step
goto 81.5,43.4
.kill Captain Olster##23962 |q 11233/1 |tip Standing in front of a tent.
step
goto 83.2,43.3
.kill Lieutenant Celeyne##23964 |q 11233/2 |tip Standing on a big flat rock on the shore.
step
goto 83.2,43.2
.talk 23784
..accept 11241
.' Escort Apothecary Hanes to safety |q 11241/1
step
goto 79.5,36.2
.talk 23778
..turnin 11233
..accept 11234
step
goto 78.6,31.2
.talk 23780
..turnin 11234
step
goto 78.5,29
.talk 24126
..turnin 11241
step
'Go southwest up the huge lift to 71.1,39.1 |goto 71.1,39.1
.talk 24027
..turnin 11295
..accept 11282
step
goto 71.5,39.2
.talk 28314
..accept 12566
step
goto 69.1,38.5
.from Winterskorn Defender##24015+
.' Oric the Baleful will spawn here |tip You will see them yell in red text in your chat.
.from Oric the Baleful##24161
.' Use your Forsaken Banner on his corpse |use Forsaken Banner##33563
.' Impale Oric the Baleful |q 11282/1
step
goto 69.6,40.1
.from Winterskorn Defender##24015+
.' Gunnar Thorvardsson will spawn here |tip You will see them yell in red text in your chat.
.from Gunnar Thorvardsson##24162
.' Use your Forsaken Banner on his corpse |use Forsaken Banner##33563
.' Impale Gunnar Thorvardsson |q 11282/3
step
goto 69.4,39.5
.from Winterskorn Defender##24015+
.' Ulf the Bloodletter will spawn here |tip You will see them yell in red text in your chat.
.from Ulf the Bloodletter##24016
.' Use your Forsaken Banner on his corpse |use Forsaken Banner##33563
.' Impale Ulf the Bloodletter |q 11282/2
step
goto 71.1,39.1
.talk 24027
..turnin 11282
..accept 11285
..accept 11283
step
goto 66.7,39.8
.' Use Gorth's Torch while standing next to this tower |use Gorth's Torch##33472
.' Burn the Winterskorn Watchtower |q 11285/2
step
goto 66.2,39.6
.' Use Gorth's Torch while standing next to this bridge |use Gorth's Torch##33472
.' Burn the Winterskorn Bridge |q 11285/3
step
goto 63.8,40
.' Use Gorth's Torch while standing next to this building |use Gorth's Torch##33472
.' Burn the Winterskorn Barracks |q 11285/4
step
goto 64.9,40.9
.' Use Gorth's Torch while standing next to this building |use Gorth's Torch##33472
.' Burn the Winterskorn Dwelling |q 11285/1
step
'Kill Winterskorn Vrykuls all around this town
.get Baleheim Bodycount to 16 |q 11283/1
step
goto 71.1,39.1
.talk 24027
..turnin 11283
..turnin 11285
..accept 11303
step
goto 65.9,36.8
.talk 24458
..turnin 11303
..accept 12481
step
goto 64.2,38.8
.' Use your Vrykul Insult on Bjorn Halgurdsson |use Vrykul Insult##33581 |tip He's on a big red dragon, if he's not there, just wait a minute.
.' Insult Bjorn Halgurdsson |q 12481/1
step
goto 65.9,36.8
.' RUN BACK TO LYDELL |tip Next to a huge cart.
.' Defeat Bjorn Halgurdsson |q 12481/2
step
goto 65.9,36.8
.talk 24458
..turnin 12481
step
goto 67.4,60.6
.talk 27922
..accept 12482
step
goto 67.3,60.3
.talk 24548
..accept 11423
step
goto 69.6,57.1
.kill 5 Dragonflayer Warrior##23654+ |q 12482/1
.kill 4 Dragonflayer Rune-Seer##23656+ |q 12482/2
.kill 4 Dragonflayer Hunting Hound##23994+ |q 12482/3
step
goto 67.4,57.2
.click Saga of the Val'kyr##525
.get Saga of the Val'kyr |q 11423/2
step
goto 68.9,52.6
.click the Saga of the Winter Curse##525
.get Saga of the Winter Curse|q 11423/3
step
goto 64.7,53.6
.click the Saga of the Twins##525
.get Saga of the Twins|q 11423/1
step
goto 67.4,60.6
.talk 27922
..turnin 12482
step
goto 67.3,60.3
.talk 24548
..turnin 11423
step
goto 53.6,66.4
.talk 24251
..turnin 11304
..accept 11305
step
goto 53.7,65.2
.talk 24252
..accept 11424
step
goto 53.1,66.9
.talk 24157
..accept 11279
step
goto 52.2,66.4
.talk 24149
.home New Agamand
step
goto 52,67.4
.talk 24155
..fpath New Agamand
step
goto 57.6,76.5
.from Risen Vrykul Ancestor##24871+
.get 5 Ancient Vrykul Bone|q 11424/1
step
goto 46.8,68.1
.from Thorvald##27926
.get Dragonflayer Patriarch's Blood |q 11305/1
step
goto 40.3,60.3
.talk 23804
..accept 11504
step
goto 42,54.4
.' Use Tillinghast's Plague Canister on Proto-Drake Eggs |use Tillinghast's Plague Canister##33418 |tip They look like big eggs sitting next to trees.
.from Plagued Proto-Whelp##24160+
.get 10 Plagued Proto-Whelp Specimen|q 11279/1
|modelnpc Proto-Drake Egg##23777
step
goto 37.4,51.9
.talk 23870
..accept 11182
step
goto 40.6,51.5
.kill 5 Dragonflayer Handler##23871+ |q 11182/1
step
goto 41.5,52.3
.kill Skeld Drakeson##23940 |q 11182/2 |tip Standing inside this small house.
step
goto 37.4,51.9
.talk 23870
..turnin 11182
step
'Hearth to New Agamand |goto 52.2,66.5,0.5 |use hearthstone##6948 |noway |c
step
goto 53.1,66.9
.talk 24157
..turnin 11279
..accept 11280
step
goto 53.7,65.2
.talk 24252
..turnin 11424
step
goto 53.6,66.4
.talk 24251
..turnin 11305
..accept 11306
step
goto 53.6,66.5
.' Stand next to the cauldron
.' Use the Empty Apothecary's Flask in your bags |use Empty Apothecary's Flask##34023
.collect 1 Flask of Vrykul Blood##33615|q 11306 |n
.' Stand next to the table at [53.5,66.3] |n
.' Use the Flask of Vrykul Blood in your bags |use Flask of Vrykul Blood##34024
.' Keep filling the Empty Apothecary's Flasks at the cauldron |use Empty Apothecary's Flask##33614
.' And then use the Flask of Vrykul Blood next to the table |use Flask of Vrykul Blood##33615
.get 1 Balanced Concoction|q 11306/1
step
goto 53.6,66.4
.talk 24251
..turnin 11306
..accept 11307
step
goto 57.7,77.5
.click Mound of Debris##20
.get Fengir's Clue |q 11504/1
step
goto 59.2,77
.click Unlocked Chest##5743
.get Rodin's Clue |q 11504/2
step
goto 59.8,79.4
.click Long Tail Feather##3651
.get Isuldof's Clue |q 11504/3
step
goto 62,80
.click Cannonball##153
.get Windan's Clue |q 11504/4
step
goto 48.5,57.4
.' Use your Plague Spray on Plagued Dragonflayer mobs |use Plague Spray##33621
.' Spray 10 Plagued Vrykul |q 11307/1
|modelnpc Plagued Dragonflayer Handler##24199
|modelnpc Plagued Dragonflayer Rune-Caster##24198
|modelnpc Plagued Dragonflayer Tribesman##23564
step
goto 40.3,60.3
.talk 23804
..turnin 11504
..accept 11507
step
goto 41.7,53.7
.' Use Tillinghast's Plagued Meat in your bags when a Proto-Drake is flying over you |use Tillinghast's Plagued Meat##33441
.from Proto-Drake##23689 |tip They fly overhead.
.' Observe the Proto-Drake Plague Results |q 11280/1
step
goto 53.1,66.9
.talk 24157
..turnin 11280
step
goto 53.6,66.4
.talk 24251
..turnin 11307
..accept 11308
step
goto 53.7,65.2
.talk 24252
..turnin 11308
..accept 11309
step
goto 50.3,65.8
.from Shoveltusk##23690+
.get 6 Shoveltusk Ligament|q 11309/1
step
goto 49.4,74.3
.talk 24291
..buy 1 Fresh Pound of Flesh|q 11309/2
step
goto 53.7,65.2
.talk 24252
..turnin 11309
..accept 11310
step
goto 49.6,57.2
.' Use your Abomination Assembly Kit to control the Mindless Abomination |use Abomination Assembly Kit##33613
.' Run around and gather a bunch of Plagued Dragonflayer mobs
.' Use your Plagued Blood Explosion to explode the group of mobs |petaction Plagued Blood Explosion
.' Exterminate 20 Plagued Vrykul |q 11310/1
|modelnpc Mindless Abomination##23575
|modelnpc Plagued Dragonflayer Handler##24199
|modelnpc Plagued Dragonflayer Rune-Caster##24198
|modelnpc Plagued Dragonflayer Tribesman##23564
step
goto 53.7,65.2
.talk 24252
..turnin 11310
step
'Go northwest across the Ancient Lift to 25.0,57.0 |goto 25.0,57.0
.talk 24755
..turnin 11507
..accept 11508
..accept 11456
step
goto 24.7,57.8
.talk 28197
..fpath Kamagua
step
goto 29.1,58.8
.from Island Shoveltusk##24681+
.get 6 Island Shoveltusk Meat|q 11456/1
step
goto 25.0,57.0
.talk 24755
..turnin 11456
..accept 11457
step
goto 26.4,62.9
.from Frostwing Chimaera##24673+ |tip You will only find them on the snowy parts of the ground.
.get 3 Chimaera Horn|q 11457/1
step
goto 25.0,57.0
.talk 24755
..turnin 11457
..accept 11458
step
goto 23.1,62.7
.talk 24643
..turnin 11508
..accept 11509
step
goto 35.1,80.9
.talk 24539
..turnin 11509
..accept 11510
step
goto 35.6,80.2
.talk 24537
..accept 11434
step
goto 37.8,79.6
.talk 24784
..accept 11469
step
goto 38.3,83.4
.from "Scoodles"##24899
.get Sin'dorei Scrying Crystal |q 11510/1
step
goto 37.8,84.6
.click Eagle Figurine##6925 |tip It's inside the sunken ship at the bottom of the ocean.
.get Eagle Figurine|q 11434/2
step
goto 37.1,85.5
.click Amani Vase##7495
.get Amani Vase|q 11434/1
step
goto 31.4,77.9
.from Big Roy##24785
.get Big Roy's Blubber |q 11469/1
step
goto 35.1,80.9
.talk 24539
..turnin 11510
..accept 11567
..accept 11512
..accept 11519
..accept 11511
step
goto 35.6,80.2
.talk 24537
..turnin 11434
..accept 11455
step
goto 36.3,80.5
.talk 24541
..accept 11464
step
goto 35.1,80.9
.talk 24539
..'Tell him to pay up
..'Fight him until he surrenders
..get "Silvermoon" Harry's Debt |q 11464/1 |q 11464/1
step
goto 36.3,80.5
.talk 24541
..turnin 11464
..accept 11466
step
'Go inside the long building to 35.3,79.6 |goto 35.3,79.6
.talk 24639
..' Pay 1 gold to bribe her into giving Jack Adams a drink
.' He passes out on the table
.talk 24788
..'Search his pockets
..get Jack Adams' Debt |q 11466/1 |q 11466/1
step
goto 36.3,80.5
.talk 24541
..turnin 11466
..accept 11467
step
goto 37.8,79.6
.talk 24784
..turnin 11469
step
goto 37.2,74.8
.talk 24910 |tip He's on a boat that sails around, so you may need to search for him.
..turnin 11519
..accept 11527
step
goto 37.2,74.8
.' Go downstairs in the ship
.from Mutinous Sea Dog##25026+
.get 5 Barrel of Blasting Powder|q 11527/1
step
'Go upstairs to the ship deck to 37.2,74.8 |goto 37.2,74.8
.talk 24910
..turnin 11527
..accept 11529
step
'Run to the other end of the ship deck to the big cannon
.' Keep clicking The Big Gun until Sorlof is dead
.' Sorlof will drop a big pile of gold on the shore
.' Jump off the ship and click Sorlof's Booty
.get Sorlof's Booty |q 11529/1
|modelnpc The Big Gun##24992
|modelnpc Sorlof##24914
|model Sorlof's Booty##7343
step
goto 37.2,74.8
.talk 24910
..turnin 11529
..accept 11530
step
goto 34.1,76.9
.from Rabid Brown Bear##24633+
.get 4 Bear Musk|q 11455/1
step
'Go down into the cave to 33.5,75.4 |goto 33.5,75.4,0.5 |c
step
'Go down the hill and into the cave to 32.3,78.7 |goto 32.3,78.7
.' Hug the wall to the left inside the cave to avoid fighting "Mad" Jonah Sterling
.' Follow the path around past the big white sleeping bear, he won't attack you if he's asleep
.click The Frozen Heart of Isuldof##7554
.get The Frozen Heart of Isuldof|q 11512/1
step
'Leave the cave and go north to 33.2,63.9 |goto 33.2,63.9
.kill 8 Crazed Northsea Slaver##24676+ |q 11458/1
step
'Go onto the ship to 35.3,64.8 |goto 35.3,64.8
.' Wait for Abdul the Insane to walk up to the top deck, then run downstairs
.click The Staff of Storm's Fury##1708 |tip On the very bottom floor of this ship.
.get The Staff of Storm's Fury |q 11511/1
step
goto 29.0,60.5|n
.' The path up to Dead Man's Debt starts here |goto 29.0,60.5,0.3 |noway |c
step
goto 32.7,60.2
.click Dirt Mound##20
.' Kill Black Conrad's Ghost and his friends that spawn
.get Black Conrad's Treasure |q 11467/1
step
goto 25.0,57.0
.talk 24755
..turnin 11458
step
goto 24.6,58.9
.talk 24810
..accept 11472
step
goto 28.9,74.8
.' Use Anuniaq's Net on the Schools of Tasty Reef Fish |use Anuniaq's Net##40946 |tip They look like swarms of fish in the water.
.from Great Reef Shark##24637+
.collect 10 Tasty Reef Fish##34127|q 11472
step
goto 31,74.4
.' Use your Tasty Reef Fish on a Reef Bull as far away as you can |use Tasty Reef Fish##34127
.' He will come to the spot where you're standing
.' Keep doing this |tip The goal is to lead the Reef Bull to the other side of the water to a Reef Cow.
.' Lead the Reef Bull to a Reef Cow on the other side of the water |q 11472/1
|modelnpc Reef Bull##24786
|modelnpc Reef Cow##24797
step
goto 35.6,80.2
.talk 24537
..turnin 11455
..accept 11473
step
goto 35.6,80.6
.talk 24525
..turnin 11473
..accept 11459
step
goto 35.6,80.2
.talk 24537
..turnin 11459
..accept 11476
step
goto 35.1,80.9
.talk 24539
..buy 1 Shiny Knife|q 11476/2
step
goto 35.6,81.7
.clicknpc Scalawag Frog##26503
.get Scalawag Frog|q 11476/1
step
goto 35.6,80.6
.talk 24525
..turnin 11476
..accept 11479
step
goto 36.3,80.5
.talk 24541
..turnin 11467
step
goto 35.9,83.6
.talk 24713 |tip Tell him that the frog says he's a traitor.
.kill "Crowleg" Dan |q 11479/1
step
goto 35.6,80.2
.talk 24537
..turnin 11479
..accept 11480
step
'Go inside the long building to 35.4,79.4 |goto 35.4,79.4
.talk 24741
..turnin 11480
step
goto 36.1,81.6
.talk 27933
..'Tell her to want to fly to Bael'gun's
.' You will land near a ship |goto 80.9,75.1,0.3 |noway |c
step
'Go onto the ship and downstairs to 81.8,73.9 |goto 81.8,73.9
.click The Ancient Armor of the Kvaldir##7624 |tip Inside this ship, on the very bottom floor in the very back of the room.
.get The Ancient Armor of the Kvaldir|q 11567/1
step
goto 80.9,75.1
.click Harry's Bomber |n |tip It's a plane on the water's edge.
.' Go back to Scalawag Point |goto 36.1,81.7,0.3 |noway |c
step
'Ride the big lift to the top of the cliff and go to 40.3,60.3 |goto 40.3,60.3
.talk 23804
..turnin 11567
..turnin 11512
..turnin 11530
..turnin 11511
..accept 11568
step
goto 57.6,77.4
.' Use your Bundle of Vrykul Artifacts while standing near the skeleton |use Bundle of Vrykul Artifacts##34624
.' Return the Shield of Aesirites |q 11568/1
step
goto 59.2,77
.' Use your Bundle of Vrykul Artifacts while standing near the skeleton |use Bundle of Vrykul Artifacts##34624
.' Return the Staff of Storm's Fury |q 11568/2
step
goto 59.7,79.4
.' Use your Bundle of Vrykul Artifacts while standing near the skeleton |use Bundle of Vrykul Artifacts##34624
.' Return the Frozen Heart of Isuldof |q 11568/3
step
goto 61.9,80.2
.' Use your Bundle of Vrykul Artifacts while standing near the skeleton |use Bundle of Vrykul Artifacts##34624
.' Return the Ancient Armor of the Kvaldir |q 11568/4
step
goto 40.3,60.3
.talk 23804
..turnin 11568
..accept 11572
step
'Go across the Ancient Lift to 25.0,57.0 |goto 25.0,57.0
.talk 24755
..turnin 11572
step
goto 24.6,58.9
.talk 24810
..turnin 11472
step
'Go back across the Ancient Lift and north to 31.3,24.4 |goto 31.3,24.4
.talk 24209
..accept 11296
step
goto 31.2,24.5
.talk 24186
..accept 11286
step
ding 71
step
goto 31.1,20.9
.' Attack Riven Widow Cocoons |tip They look like big squirming white cocoons.
.' Free 7 Winterhoof Longrunners |q 11296/1
|modelnpc Riven Widow Cocoon##24210
step
goto 31.3,24.4
.talk 24209
..turnin 11296
step
goto 31.8,25.6
.click Steel Gate Artifact##6420+
.get 10 Steel Gate Artifact|q 11286/1
step
'Go back up the hill to 31.2,24.5 |goto 31.2,24.5
.talk 24186
..turnin 11286
..accept 11317
step
goto 26,25.1
.talk 26844
..fpath Apothecary Camp
step
goto 26.1,24.7
.talk 24359
..accept 11397
step
goto 26,24.4
.talk 24218
..accept 11301
step
goto 26.4,24.5
.talk 24152
..accept 11298
step
goto 33.8,33.7|n
.' The path down to Brains! Brains! Brains! and What's in That Brew? starts here |goto 33.8,33.7,0.5 |noway |c
step
'Go down the hill to 33.3,36.5 |goto 33.3,36.5
.click Dwarven Kegs##7490
.get 5 Dwarven Keg|q 11298/1
.from Deranged Explorer##23967+
.' Use Grick's Bonesaw on their corpses |use Grick's Bonesaw##33554
.get 12 Deranged Explorer Brain|q 11301/1
step
goto 26.4,24.5
.talk 24152
..turnin 11298
step
goto 26,24.4
.talk 24218
..turnin 11301
step
goto 25.5,20.1 |n
.' Follow the path down |goto 25.5,20.1,0.3 |noway |c
step
goto 23,21.9
' |from Mur'ghoul Flesheater##23644+, Necrotech##24540+, Servitor Shade##24485+, Unstable Mur'ghoul##23643+, Mur'ghoul Corrupter##23645+
.kill 15 Chillmere Coast Scourge |q 11397/1
.collect Scourge Device##33962 |n
.click the Scourge Device in your bags |use Scourge Device##33962
..accept 11398
step
goto 19.8,22.2
.talk 24544
..accept 11422
step
goto 23.7,35.2
.from Rotgill##24546
.get Rotgill's Trident |q 11422/1
step
goto 19.8,22.2
.talk 24544
..turnin 11422
step
goto 23.7,21.8|n
.' The path back up from the coast starts here |goto 23.7,21.8 |noway |c
step
'Go up the path and south to 26.1,24.7 |goto 26.1,24.7
.talk 24359
..turnin 11397
..turnin 11398
..accept 11399
step
goto 25.5,20.1|n
.' The path down to the coast starts here |goto 25.5,20.1,0.3 |noway |c
step
'Go down the path to 22.9,20.1 |goto 22.9,20.1
.' Use your Scourging Crystal Controller on the Scourge Crystal |use Scourging Crystal Controller##33960
.' Attack the Scourge Crystal when the purple bubble shield disappears
.' Destroy 3 Scourge Crystals |q 11399/1
.' The second Scourge Crystal can be found at [22.6,17.6]
.' The third Scourge Crystal can be found at [21.8,22.5]
|modelnpc Scourge Crystal##24464
step
goto 23.7,21.8|n
.' The path back up from the coast starts here |goto 23.7,21.8 |noway |c
step
'Go up the path and south to 26.1,24.7 |goto 26.1,24.7
.talk 24359
..turnin 11399
step
|fly Camp Winterhoof
step
goto 48.9,12
.talk 24256
..accept 11311
step
goto 49.3,12
.talk 24123
..accept 11275
step
goto 49.6,11.6
.talk 24032
..fpath Camp Winterhoof
step
goto 48.4,11
.talk 24127
..accept 11271
step
goto 48,10.7
.talk 24129
..turnin 12566
step
goto 50.9,11
.click Spotted Hippogryph Down feathers on the ground |tip They look like brown feathers on the ground all around this area.
.get 10 Spotted Hippogryph Down|q 11271/1
.from Frosthorn Ram##23740+
.get 6 Undamaged Ram Horn|q 11275/1
step
goto 52.5,6.5
' |from Howling Cyclone##24229+
.kill 8 Mountain Elementals |q 11311/1
.' You can find more Elementals around [51.2,2.9]
|modelnpc Iceshard Elemental##24228
step
goto 48.4,11
.talk 24127
..turnin 11271
step
goto 48.9,12
.talk 24256
..turnin 11311
step
goto 49.3,12
.talk 24123
..turnin 11275
..accept 11281
..accept 11312
step
goto 49.2,12.2
.talk 24362
..accept 11350
step
goto 52.4,3.7
.' Use your Carved Horn next to the Frozen Waterfall |use Carved Horn##33450
.from Frostgore##24173
.' Test Nokoma's Horn |q 11281/1
step
goto 54.1,8.2 |n
.' Follow the path up |goto 54.1,8.2,0.3 |noway |c
step
goto 61.1,2
.click Frostblade Shrine##4291 |tip It's a big blue glowing altar table thing.
.from Your Inner Turmoil
.' Become Cleansed of Your Inner Turmoil |q 11317/1
step
goto 61.5,22.8
.talk 24117
..turnin 11312
..accept 11313
step
goto 60.6,22.4
.from Ice Elemental##23919+
.get 15 Icy Core|q 11313/1
step
goto 61.5,22.8
.talk 24117
..turnin 11313
..accept 11314
..accept 11315
step
goto 53.3,27.8
.' Use Lurielle's Pendant on Chill Nymphs when they are weak |use Lurielle's Pendant##33606 |tip Walk up to them until you're in combat and then use Lurielle's Pendant, you don't have to hit them.
.' Free 7 Chill Nymphs |q 11314/1
.kill 8 Scarlet Ivy##23763+ |q 11315/1
|modelnpc Chill Nymph##23678
step
goto 61.5,22.8
.talk 24117
..turnin 11314
..turnin 11315
..accept 11316
..accept 11319
step
goto 54.7,20.5
.kill 10 Thornvine Creeper##23874+ |q 11316/1
.from Spore##23876+
.' Use your Enchanted Ice Core on Spore corpses |use Enchanted Ice Core##33607
.' Freeze 8 Spores |q 11319/1
step
goto 61.5,22.8
.talk 24117
..turnin 11316
..turnin 11319
..accept 11428
step
goto 53.7,18.6
.kill Keeper Witherleaf##24638 |q 11428/1 |tip He walks around this area.
step
goto 61.5,22.8
.talk 24117
..turnin 11428
step
goto 65.0,28.5
.from Iron Rune Stonecaller##24030+, Iron Rune Binder##23796+
.collect 1 Book of Runes - Chapter 1##33778 |n
.collect 1 Book of Runes - Chapter 2##33779 |n
.collect 1 Book of Runes - Chapter 3##33780 |n
.click a Book of Runes - Chapter in your bags|use Book of Runes - Chapter 1##33778
.get The Book of Runes|q 11350/1
step
goto 49.2,12.2
.talk 24362
..turnin 11350
..accept 11351
step
goto 49.3,12
.talk 24123
..turnin 11281
step
goto 48,10.7
.talk 24129
..accept 11256
step
goto 71.2,28.7
.click Iron Rune Carving Tools##318
.get Iron Rune Carving Tools|q 11351/1
.' If they are not there, they can also spawn at the following 5 locations as well:
..' at [67.5,23.5]
..' at [69.1,22.8]
..' at [72.4,17.8]
..' at [73.4,24.9]
..' at [67.5,29.2]
step
goto 49.2,12.2
.talk 24362
..turnin 11351
..accept 11352
step
goto 71.9,24.6
.' Use your Rune of Command on a Stone Giant around this area to control it |use Rune of Command##33796
.' Once you are controlling the Stone Giant, come here
.kill Binder Murdis##24334 |q 11352/2
step
goto 49.2,12.2
.talk 24362
..turnin 11352
step
goto 44.4,26.2
.' Use your Winterhoof Emblem in your bags |use Winterhoof Emblem##33340
.talk 24130
..turnin 11256
..accept 11257
..accept 11258
..accept 11259
step
goto 45.3,27
.from Winterskorn Berserker##23666+, Winterskorn Elder##23670+, Winterskorn Raider##23665+, Winterskorn Rune-Caster##23668+, Winterskorn Shield-Maiden##23663+, Winterskorn Warrior##23664+, Winterskorn Woodsman##23662+
.' Use The Brave's Machete on their corpses |use The Brave's Machete##33342
.' Dismember 20 Winterskorn Vrykul |q 11257/1
.get Vrykul Scroll of Ascension|n
.click the Vrykul Scroll of Ascension in your bags|use Vrykul Scroll of Ascension##33345
..accept 11260
step
goto 43.7,28.5
.' Use the Brave's Torch inside this house |use Brave's Torch##33343
.' Set the Northwest Longhouse Ablaze |q 11258/1
step
goto 43.6,30.3
.' Use the Brave's Flare next to this tower |use Brave's Flare##33344
.' Target the Northwest Tower |q 11259/1
step
goto 43.2,35.8
.' Use the Brave's Flare next to this tower |use Brave's Flare##33344
.' Target the Southwest Tower |q 11259/3
step
goto 44.9,35
.' Use your Vrykul Scroll of Ascension next to the bonfire |use Vrykul Scroll of Ascension##33346
.kill Halfdan the Ice-Hearted##23671 |q 11260/1
step
goto 46.9,37.1
.' Use the Brave's Flare next to this tower |use Brave's Flare##33344
.' Target the Southeast Tower |q 11259/4
step
goto 46.5,33.2
.' Use the Brave's Flare next to this tower |use Brave's Flare##33344
.' Target the East Tower |q 11259/2
step
goto 46,30.7
.' Use the Brave's Torch inside this building |use Brave's Torch##33343
.' Set the Barracks Ablaze |q 11258/3
step
goto 46.4,28.2
.' Use the Brave's Torch inside this house |use Brave's Torch##33343
.' Set the Northeast Longhouse Ablaze |q 11258/2
step
'Use your Winterhoof Emblem in your bags |use Winterhoof Emblem##33340
.talk 24130
..turnin 11257
..turnin 11258
..turnin 11259
..accept 11261
step
goto 48.2,10.7
.talk 24135
..turnin 11260
step
goto 48,10.7
.talk 24129
..turnin 11261
..accept 11263
step
goto 48.2,10.7
.talk 24135
..accept 11265
step
goto 31.2,24.5
.talk 24186
..turnin 11317
..accept 11323
step
goto 29.7,5.7
.' Use your Worg Disguise to turn into a Worg |use Worg Disguise##33618
.talk 24261
..turnin 11323
..accept 11415
step
goto 28.3,23.9
.kill Bjomolf##24516 |q 11415/1 |tip He walks around this area.
step
goto 33.8,29.3
.kill Varg##24517 |q 11415/2 |tip He walks around this area.
step
goto 35.1,16
.kill 15 Gjalerbron Warrior##23991+ |q 11263/1
.kill 8 Gjalerbron Rune-Caster##23990+ |q 11263/2
.kill 8 Gjalerbron Sleep-Watcher##23989+ |q 11263/3
.collect 10 Gjalerbron Cage Key##33284 |n
.click Gjalerbron Cages
.' Free 10 Gjalerbron Prisoners |q 11265/1
.get Gjalerbron Attack Plans|n
.click the Gjalerbron Attack Plans in your bags|use Gjalerbron Attack Plans##33347
..accept 11266
step
goto 29.7,5.7
.' Use your Worg Disguise to turn into a Worg |use Worg Disguise##33618
.talk 24261
..turnin 11415
..accept 11417
step
goto 41.4,37.7
.click Talonshrike's Egg##1867
.from Talonshrike##24518
.get Eyes of the Eagle|q 11417/1
step
goto 29.7,5.7
.' Use your Worg Disguise to turn into a Worg |use Worg Disguise##33618
.talk 24261
..turnin 11417
..accept 11324
step
goto 26.3,12.8
.kill Garwal##24277 |q 11324/1 |tip He walks around this area.
step
goto 31.2,24.5
.talk 24186
..turnin 11324
step
goto 48.2,10.7
.talk 24135
..turnin 11265
..accept 11268
step
goto 48,10.7
.talk 24129
..turnin 11263
..accept 11264
step
goto 48.4,11
.talk 24127
..accept 11433
step
goto 49.6,11.6
.talk 24032
..turnin 11266
step
goto 49.5,10.8
.talk 24033
.home Camp Winterhoof
step
goto 35.7,15.8
.kill 10 Deathless Watcher##24013+ |q 11268/1
.kill 2 Putrid Wight##23992+ |q 11268/3
.' You can find another Putrid Wight and more Deathless Watchers at [38.2,11.8]
step
goto 38.8,13
.kill 1 Necro Overlord Mezhen##24018 |q 11264/1 |tip On a platform in the very back of Gjalerbron, surrounded by Nerolords.
.get Mezhen's Writings |n
.click Mezhen's Writings |use Mezhen's Writings##34091
..accept 11453
step
goto 39.8,7.6 |n
.' Enter this building |goto 39.8,7.6,0.3 |noway |c |tip Go up the big ramp to this spot.
step
goto 40.9,6.5
.kill Queen Angerboda##24023 |q 11453/1 |tip She's standing up on the platform.
step
goto 39.8,7.6 |n
.' Leave this building |goto 39.8,7.6,0.3 |noway |c
step
goto 34.5,13.2 |n
.' Enter the Walking Halls |goto 34.5,13.2,0.3 |noway |c
step
goto 35,11.9
.kill 4 Fearsome Horror##24073+ |q 11268/2
.from Necrolord##24014+
.collect 5 Awakening Rod##34083|q 11433 |n
.' Use your Awakening Rods on Dormant Vrykul |use Awakening Rod##34083 |tip They are sleeping upright inside the walls, like mummies.
.kill 5 Dormant Vrykul##24669+ |q 11433/1
step
'Hearth to Camp Winterhoof |goto 49.5,10.8,0.3 |use hearthstone##6948 |noway |c
step
goto 48.4,11
.talk 24127
..turnin 11433
step
goto 48.2,10.7
.talk 24135
..turnin 11268
step
goto 48,10.7
.talk 24129
..turnin 11264
..turnin 11453
step
goto 48.1,10.5
.talk 24390
..accept 11365
step
goto 68.5,23.8
.from Runed Stone Giant##23725 |tip The Giants you need to kill will be aggressive, don't try and attack the elite mobs.
.' Use your Runeseeking Pick on Runed Stone Giants. |use Runeseeking Pick##33806
.' Analyze 4 Runed Stone Giant Corpses |q 11365/1
step
goto 48.1,10.5
.talk 24390
..turnin 11365
..accept 11366
step
goto 71.6,17.6
.' Use the Rune Sample in your bags next to the Broken Tablet |use Rune Sample##33819
.' Watch the dialogue
.' Compare Runes with the Broken Tablet |q 11366/1
step
goto 48.1,10.5
.talk 24390
..turnin 11366
..accept 11367
step
goto 68.4,10.9
.kill Megalith##24371 |tip He patrols around this area, so some searching may be necessary. |q 11367/1
step
goto 48.1,10.5
.talk 24390
..turnin 11367
step
|fly New Agamand
step
goto 53.6,66.4
.talk 24251
..accept 12181
step
goto 52,67.4
.talk 24155
..turnin 12181
..accept 12182
step
'He will fly you to Dragonblight |goto Dragonblight,76.6,62.4,0.3 |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Northrend 70-80\\Dragonblight (71-74)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Northrend 70-80\\Grizzly Hills (74-75)
startlevel 71.95
dynamic on
step
goto Dragonblight,76.5,62.2
.talk 26845
..fpath Venomspite
step
goto 77,62.9
.talk 27248
..accept 12206
step
'Next to where you are standing, there is a Scarlet Onslaught Prisoner in a cage:
.' Use your Flask of Blight on the Scarlet Onslaught Prisoner |use Flask of Blight##37129
.' Test the Flask of Blight |q 12206/1
|modelnpc Scarlet Onslaught Prisoner##27349
step
goto 77,62.9
.talk 27248
..turnin 12206
..accept 12211
step
goto 76.9,62.8
.click Wanted Poster##15
..accept 12205
step
goto 77.7,62.8
.talk 27172
..turnin 12182 |tip You will only be able to turn this quest in if you went to Howling Fjord for levels 70-72.
..accept 12188
step
goto 76.9,63.1
home Venomspite
step
goto 76,63.3
.talk 27267
..accept 12303
..accept 12209
step
goto 79.3,65.1
.talk 32599
..accept 12304
step
goto 82.9,65.1
' |from Forgotten Footman##27229+, Forgotten Knight##27224+, Forgotten Peasant##27226+, Forgotten Rifleman##27225+
.kill 20 Forgotten ghosts |q 12304/1
.get 10 Ectoplasmic Residue|q 12188/1
step
goto 82.5,73.1
.click Forgotten Treasure##5744
.get 6 Forgotten Treasure|q 12303/1
step
goto 79.3,65.1
.talk 32599
..turnin 12304
step
goto 76,63.3
.talk 27267
..turnin 12303
step
goto 77.7,62.8
.talk 27172
..turnin 12188
..accept 12200
step
goto 73.7,66.6
' |from Onslaught Deckhand##27233+, Onslaught Executioner##27211+, Onslaught Footman##27405+, Onslaught Footman##27406+, Onslaught Knight##27206+, Onslaught Raven Priest##27202+, Onslaught Workman##27207+
.kill 20 Members of the Scarlet Onslaught |q 12205/1
.' Use your Container of Rats on Scarlet Onslaught corpses after you kill them |use Container of Rats##37187
.' Pick 15 Scarlet Onslaught corpses clean |q 12211/1
step
goto 72.6,69.7
.click Scarlet Onslaught Weapon Rack##130
.get 8 Scarlet Onslaught Weapon|q 12209/2
.click Scarlet Onslaught Armor Stand##7827
.get 8 Scarlet Onslaught Armor|q 12209/1
step
'Go southwest to 63.3,70.3 |goto 63.3,70.3
.click Emerald Dragon Tear##7821
.get 8 Emerald Dragon Tear|q 12200/1
step
goto 63.7,71.9
.talk 27255 |tip She walks up and down this road, some searching may be necessary.
..accept 12454
step
goto 63.8,72.4
.kill 5 Emerald Skytalon##27244+ |q 12454/1 |tip They fly around over your head around the lake.
step
goto 63.7,71.9
.talk 27255
..turnin 12454
step
goto 76,63.3
.talk 27267
..turnin 12209
step
goto 75.9,61.9
.talk 27028
..accept 12214
step
ding 72
step
goto 77,62.9
.talk 27248
..turnin 12211
step
goto 76.8,63.3
.talk 27243
..turnin 12205
step
'Go upstairs to 76.7,63 |goto 76.7,63
.talk 27337
..accept 12245
step
goto 77.7,62.8
.talk 27172
..turnin 12200
..accept 12218
step
goto 77.5,62
.talk 27320
..accept 12230
step
goto 74.5,65.8
.from Onslaught Knight##27206+ |tip Be careful, don't kill the horse.
.collect Onslaught Riding Crop##37202 |n
.' Use the Onslaught Riding Crop on the Onslaught Warhorse |use Onslaught Riding Crop##37202
.' Ride the horse back to Hansel Bauer at [75.9,61.9]
.' Use the Hand Over Reins ability to turn the horse in
.' Repeat this 3 times
.' Hand over 3 Scarlet Onslaught Warhorse reins |q 12214/1
step
goto 75.9,61.9
.talk 27028
..turnin 12214
step
goto 71.4,72.2
.talk 27376
.kill Deathguard Schneider |q 12245/1
step
goto 72.7,72.6
.talk 27381
.kill Chancellor Amai |q 12245/4
step
goto 72.8,74.4
.talk 27379
.kill Engineer Burke |q 12245/3
step
goto 69.4,73.9
.talk 27378
.kill Senior Scrivener Barriga |q 12245/2
step
goto 76.8,63.3
.talk 27243
..turnin 12245
..accept 12252
step
goto 69.8,72
.' Use High Executor's Branding Iron 5 times on Torturer LeCraft |use High Executor's Branding Iron##37314 |tip He's in the basement of this fort building.
.' Fully Question Torturer LeCraft |q 12252/1
.kill Torturer LeCraft##27209 |q 12252/2
.collect Torturer's Rod##37432 |n
.click the Torturer's Rod in your bags |use Torturer's Rod##37432
..accept 12271
step
'Go northeast out of the fort to 76.8,63.3 |goto 76.8,63.3
.talk 27243
..turnin 12252
..turnin 12271
..accept 12273
step
goto 70.8,70.5
.' Use the Rod of Compulsion on Blacksmith Goodman when he's about halfway dead |use Rod of Compulsion##37438 |tip He's inside the blacksmith building.
.from Blacksmith Goodman##27234
.'Get Blacksmith Goodman's denouncement & death |q 12273/3
step
'Go inside the fort and upstairs to 69.7,71.8 |goto 69.7,71.8
.' Use the Rod of Compulsion on Commander Jordan when he's about halfway dead |use Rod of Compulsion##37438 |tip He's inside the big fort, upstairs in the big room.
.from Commander Jordan##27237
.'Get Commander Jordan's denouncement & death |q 12273/1
step
'Go outside of the fort to 67.9,75.9 |goto 67.9,75.9
.' Use the Rod of Compulsion on Stable Master Mercer when he's about halfway dead |use Rod of Compulsion##37438 |tip He's standing in front of the stables.
.from Stable Master Mercer##27236
.'Get Stable Master Mercer's denouncement & death |q 12273/4
step
'Go southeast down the big hill to 72.9,78.1 |goto 72.9,78.1
.' Use the Rod of Compulsion on Lead Cannoneer Zierhut when he's about halfway dead |use Rod of Compulsion##37438 |tip He's standing down a big hill, next to a cannon.
.from Lead Cannoneer Zierhut##27235
.'Get Lead Cannoneer Zierhut's denouncement & death |q 12273/2
step
'Hearth to Venomspite |goto 76.9,63.1,0.3 |use hearthstone##6948 |noway |c
step
goto 76.8,63.3
.talk 27243
..turnin 12273
step
goto 77.8,61.6|n
.click a Forsaken Blight Spreader to ride it |invehicle |c
|modelnpc Forsaken Blight Spreader##26523
step
goto 85.9,57.9
.' Shoot your catapult toward the ghouls and skeletons to the northwest
.kill 30 Hungering Dead##27335+ |q 12218/1
step
.click the red arrow button to leave the Vehicle |outvehicle |c
step
goto 85,51.1
.click Siegesmith Bomb##8185 |tip They will be sitting on the ground around this area.
.get 6 Siegesmith Bomb|q 12230/1
step
goto 77.5,62
.talk 27320
..turnin 12230
..accept 12232
step
goto 77.7,62.8
.talk 27172
..turnin 12218
..accept 12221
step
goto 77,62.9
.talk 27248
..accept 12240
step
goto 76.7,63
.talk 27337
..accept 12234
step
goto 73.3,67.6
.' Use your Siegesmith Bombs on New Hearthglen Ballistas |use Siegesmith Bombs##37259 |tip They look like big arrow gun carts all around this area.
.' Bombard 5 New Hearthglen Ballistas |q 12232/1
step
'Go into the fort to 69.7,71.9 |goto 69.7,71.9
.click Scarlet Onslaught Daily Orders: Barracks##183 |tip Sitting on a small table next to the base of the stairs, inside the fort.
.get Scarlet Onslaught Daily Orders: Barracks|q 12234/2
step
'Go across the courtyard into the cathedral to 73.4,72.6 |goto 73.4,72.6
.click Scarlet Onslaught Daily Orders: Abbey##163 |tip Sitting on a table with a bunch of books on it, in the Library Wing of the cathedral building.
.get Scarlet Onslaught Daily Orders: Abbey|q 12234/1
step
'Go down the hill to the beach to 71.6,80.4 |goto 71.6,80.4
.click Scarlet Onslaught Daily Orders: Beach##164 |tip Sitting on a small crate on the beach, next to a bonfire and some tents.
.get Scarlet Onslaught Daily Orders: Beach|q 12234/3
step
'Go back up the hill and into the lumber mill to 68.3,74.2 |goto 68.3,74.2
.' Stand inside the Lumber Mill here
.' Use your Levine Family Termites |use Levine Family Termites##37300
.kill Foreman Kaleiki##27238 |q 12240/1
step
goto 77,62.9
.talk 27248
..turnin 12240
..accept 12243
step
'Go inside the building to 76.7,63 |goto 76.7,63
.talk 27337
..turnin 12234
..accept 12239
step
goto 77.5,62
.talk 27320
..turnin 12232
step
goto 73.6,73.5
.talk 27350
..turnin 12239
..accept 12254
step
goto 69.2,76.7
.from Bishop Street##27246
.get Bishop Street's Prayer Book |q 12254/1
step
goto 73.6,73.5
.talk 27350
..turnin 12254
..accept 12260
step
'Run around this area and find an Onslaught Raven Priest
.' Use Banshee's Magic Mirror on an Onslaught Raven Priest |use Banshee's Magic Mirror##37381
.' Steal an Onslaught Raven Priest's image |q 12260/1
|modelnpc Onslaught Raven Priest##27202
step
goto 73.6,73.5
.talk 27350
..turnin 12260
..accept 12274
step
'Go to the top floor of the cathedral behind you to 72.9,73.5 |goto 72.9,73.5
.click Abbey Bell Rope##7717 |tip It's in the attic of the cathedral building.
.' Ring the Abbey Bell |q 12274/1
step
'Go downstairs to 73.5,74.3 |goto 73.5,74.3
.talk 27245
.' Go to the entrance of the cathedral building
.' Follow the priest to a spot on a nearby cliff
.' Speak with High Abbot Landgren |q 12274/2
step
goto 73.6,73.5
.talk 27350
..turnin 12274
..accept 12283
step
goto 68.3,77
.click The Diary of High General Abbendis##6619 |tip It's sitting on a nightstand between 2 beds, on the second floor of this house.
.get The Diary of High General Abbendis|q 12283/1
step
'Go down the hill to the beach to 71.5,82.6 |goto 71.5,82.6
.' Stand on the plank
.' Use you Apothecary's Burning Water and throw it at the ship's sail |use Apothecary's Burning Water##37304
.' Set the Sails of the Sinner's Folly afire |q 12243/1
step
'When the crew is distracted, go downstairs into the ship to 71.9,84 |goto 71.9,84
.from Captain Shely##27232
.get Captain Shely's Rutters |q 12243/2
step
'Hearth to Venomspite |goto 76.9,63.1,0.3 |use hearthstone##6948 |noway |c
step
goto 76.8,63.3
.talk 27243
..turnin 12283
step
goto 77,62.9
.talk 27248
..turnin 12243
step
|fly Moa'ki
step
goto 48.2,74.8
.talk 27174
home Moa'ki Harbor
step
goto 48,74.9
.talk 26194
..turnin 12117 |tip You will only be able to turn this quest in if you completed the Borean Tundra section of the guide.
..accept 11958
step
goto 48,74.8
.talk 26441
..accept 11996
step
goto 48.3,74.3
.talk 26228
..accept 11960
step
goto 45.3,63.7
.from Snowfall Glade Den Mother##26199+, Snowfall Glade Reaver##26197+, Snowfall Glade Shaman##26201+, Snowfall Glade Wolvar##26198+
.get 6 Stolen Moa'ki Goods |q 11958/1
.clicknpc Snowfall Glade Pup##26200
.get 12 Snowfall Glade Pup|q 11960/1
step
goto 48.3,74.3
.talk 26228
..turnin 11960
step
goto 48,74.9
.talk 26194
..turnin 11958
..accept 11959
step
goto 46.3,59.2
.from Loguhn##26196 |tip Standing in front of a small house.
.get Blood of Loguhn|n
.click the Blood of Loguhn|use Blood of Loguhn##35688
.' Smear the Blood of Loguhn on yourself |q 11959/1
step
goto 48,74.9
.talk 26194
..turnin 11959
step
goto 49.2,75.6
.talk 26595
..accept 12028
step
goto 48.9,75.8
.' Use Toalu'u's Spiritual Incense next to Toalu'u's Brazier |use Toalu'u's Spiritual Incense##35907 |tip Sitting next to the entrance to the small house.
.' Watch yourself fly as a wisp
.' Attain Spiritual Insight concerning Indu'le Village |q 12028/1
step
goto 49.2,75.6
.talk 26595
..turnin 12028
..accept 12030
step
goto 47.7,76.6
.talk 26245
..accept 12009
step
goto 46.6,77.5
.click Tua'kea's Crab Trap##7759
.get 8 Tua'kea Crab Trap |q 12009/1
step
goto 47.7,80
.click Wrecked Crab Trap##7762
..accept 12011
step
goto 47.7,76.6
.talk 26245
..turnin 12009
..turnin 12011
..accept 12016
step
goto 43.7,82.3
.from Kili'ua##26521
.get The Flesh of "Two Huge Pincers"|q 12016/1
step
goto 47.7,76.6
.talk 26245
..turnin 12016
..accept 12017
step
goto 46.7,78.2
.' Use Tu'u'gwar's Bait next to Tua'kea's Fishing Hook |use Tu'u'gwar's Bait##35838 |tip It looks like a rope leading into the water, with a big hook on the end.
.kill Tu'u'gwar##26510 |q 12017/1
step
goto 47.7,76.6
.talk 26245
..turnin 12017
step
goto 36.4,65
.talk 188419
..turnin 12030
..accept 12031
step
goto 37.2,65.5
.from Indu'le Mystic##26336+, Indu'le Warrior##26344+
.' Put 15 Indu'le spirits to rest |q 12031/1 |tip Deranged Indu'le Villagers will not count.
step
goto 36.4,65
.talk 188419
..turnin 12031
..accept 12032
step
goto 34.3,79.9|n
.' The path up to Conversing With the Depths starts here |goto 34.3,79.9,0.3 |noway |c
step
'Follow the path up to [34,83.4]
.click The Pearl of the Depths##402
.' Oacha'noa appears and tells you to jump in the water
.' Jump in the water when he tells you to
.' Obey Oacha'noa's compulsion |q 12032/1
|modelnpc Oacha'noa##26648
step
'Hearth to Moa'ki Harbor |goto 48.2,74.7,0.3 |use hearthstone##6948 |noway |c
step
goto 49.2,75.6
.talk 26595
..turnin 12032
step
|fly Agmar's Hammer
step
goto 36.1,48.9
.talk 26505
..turnin 12221
step
goto 38.1,46.2
.talk 26471
..turnin 11996
..accept 11999
step
goto 38.2,46.0
.talk 26985
home Agmar's Hammer
step
goto 37.5,45.8
.talk 26566
..fpath Agmar's Hammer
step
goto 36.6,46.6
.talk 26415
..accept 11979
step
goto 26.2,50.8
.talk 26653
..accept 12040
step
goto 26.1,49.6
.kill 6 Anub'ar Underlord##26605+ |q 12040/1 |tip Inside this cave.
step
goto 26.2,50.8
.talk 26653
..turnin 12040
..accept 12041
step
'Go outside the cave and southwest to 22.3,54.1 |goto 22.3,54.1
.' Loot the Dead Mage Hunter bodies on the ground
.collect Mage Hunter Personal Effects bags |n
.click the Mage Hunter Personal Effects bags|use Mage Hunter Personal Effects##35792
..get Moonrest Gardens Plans|q 11999/1
|modelnpc Dead Mage Hunter##32572
step
goto 38.1,46.3
.talk 26379
..turnin 12041
step
goto 38.1,46.2
.talk 26471
..turnin 11999
..accept 12005
step
goto 18.4,58.9
.from Wind Trader Mu'fah##26496
.get Wind Trader Mu'fah's Remains |q 12005/1
step
'Go inside the building to 19.4,58.1 |goto 19.4,58.1
.from Goramosh##26349
.get The Scales of Goramosh|q 12005/2
.get Goramosh's Strange Device |n
.click Goramosh's Strange Device |use Goramosh's Strange Device##36746
..accept 12059
step
goto 38.1,46.2
.talk 26471
..turnin 12005
..turnin 12059
..accept 12061
step
goto 22.2,54.8
.' Use your Surge Needle Teleporter anywhere inside Moonrest Gardens |use Surge Needle Teleporter##36747
.' Move toward the center of the platform you get teleported onto
.' Observe the Object on the Surge Needle |q 12061/1
step
'Use your Surge Needle Teleporter to go back down to the ground |goto 22.6,57.0,0.3 |use Surge Needle Teleporter##36747 |noway |c
step
goto 38.1,46.2
.talk 26471
..turnin 12061
..accept 12066
step
goto 24.2,60.1
.talk 26501
..accept 12006
step
goto 20.9,60.4
' |from Dragonblight Mage Hunter##32572+, Focus Wizard##26816+, Moonrest Stalker##26281+, Surge Needle Sorcerer##26257+
.kill 15 Blue Dragonflight forces at Moonrest Gardens |q 12006/1 |tip Moonrest Highbornes will not give you credit.
step
goto 24.2,60.1
.talk 26501
..turnin 12006
..accept 12013
step
goto 20,59.7
.kill Arcanimus##26370 |q 12013/1 |tip He's at the bottom of this pit.
step
goto 24.2,60.1
.talk 26501
..turnin 12013
step
goto 26.4,65
.from Captain Emmy Malin##26762
.get Ley Line Focus Control Ring|n
.' Use the Ley Line Focus Control Ring next to the half-circle |use Ley Line Focus Control Ring##36751 |tip It's a big half-circle purple glowing thing.
.' Retrieve ley line focus information |q 12066/1
step
'Hearth to Agmar's Hammer |goto 38.1,46.6,1 |use hearthstone##6948 |noway |c
step
goto 38.1,46.2
.talk 26471
..turnin 12066
..accept 12084
step
goto 36.5,47.9
.talk 26854
..accept 12096
step
goto 31.2,59.7
.talk 26421
.collect 3 Bark of the Walkers##36786|q 12096
step
goto 30.6,63.4
.' Use your Bark of the Walkers on Lothalor Ancients |use Bark of the Walkers##36786 |tip They just stand around this area and they are friendly toward you.
.' Strengthen 3 Lothalor Ancients |q 12096/1
|modelnpc Lothalor Ancient##26321
step
goto 32.2,70.6
.from Lieutenant Ta'zinni##26815
.get Ley Line Focus Amulet|n
.get Lieutenant Ta'zinni's Letter |n
.click Lieutenant Ta'zinni's Letter |use Lieutenant Ta'zinni's Letter##36780
..accept 12085
step
goto 32.2,71.2
.' Use your Ley Line Focus Control Amulet on the Ley Line Focus |use Ley Line Focus Control Amulet##36779 |tip It's a big half-circle purple glowing thing.
.' Retrieve Ley Line Focus information |q 12084/1
step
goto 36.5,47.9
.talk 26854
..turnin 12096
step
goto 38.1,46.2
.talk 26471
..turnin 12084
..accept 12106
step
goto 38.1,46.3
.talk 26379
..turnin 12085
step
goto 40.3,66.9
.click Mage-Commander Evenstar's body floating underwater
..turnin 12106
..accept 12110
step
goto 39.8,66.9
.' Use your Ley Line Focus Control Talisman on the Ley Line Focus |use Ley Line Focus Control Talisman##36815 |tip It's a big half-circle purple glowing thing underwater.
.' Retrieve Ley Line Focus information|q 12110/1
step
goto 53,66.4
.' Go to this spot on the cliff to Observe Azure Dragonshrine |q 12110/2
step
goto 38.1,46.2
.talk 26471
..turnin 12110
..accept 12122
step
goto 14.2,49.8
.talk 26180
..accept 11980
step
goto 12.8,48.5
.talk 26181
..turnin 11979
..accept 11978
step
goto 15.5,51.2
.kill 15 Anub'ar Ambusher##26402+ |q 11980/1
.click Horde Armament crates |tip The Horde Armaments look like crates sitting on the ground around this area.
.get 10 Horde Armaments|q 11978/1
step
goto 14.2,49.8
.talk 26180
..turnin 11980
step
goto 12.8,48.5
.talk 26181
..turnin 11978
..accept 11983
step
ding 73
step
.talk 26184
.' Admit 5 Taunka Into the Horde |q 11983/1
step
goto 12.8,48.5
.talk 26181
..turnin 11983
..accept 12008
step
goto 38.1,46.3
.talk 26379
..turnin 12008
..accept 12034
step
goto 36.6,46.6
.talk 26415
..turnin 12034
..accept 12036
step
goto 36.6,47.2
.talk 26564
..accept 12039
step
goto 37.1,48.6
.talk 26504
..accept 12100
step
goto 35.8,48.4
.talk 26618
..accept 12056
step
goto 29,50.7
' |from Blighted Elk##26616+, Rabid Grizzly##26643+
.kill 15 Infected Wildlife |q 12100/1
.get Rot Resistant Organ |q 12100/2
step
goto 26.5,49.6
.click Black Blood of Yogg-Saron##7836
.get 10 Black Blood of Yogg-Saron Sample|q 12039/1
step
'Go down into the cave to 28.9,49.7 |goto 28.9,49.7
.from High Cultist Zangus##26655
.get Head of High Cultist Zangus|q 12056/1
step
'Inside the cave, go to 26.2,50.4 |goto 26.2,50.4
.' Explore the Pit of Narjun |q 12036/1 |tip Next to the instance portal.
step
'Go outside the cave and east to 35.8,48.4 |goto 35.8,48.4
.talk 26618
..turnin 12056
step
goto 37.1,48.6
.talk 26504
..turnin 12100
..accept 12101
step
goto 36.1,48.9
.talk 26505
..turnin 12101
..accept 12102
step
goto 36.6,47.2
.talk 26564
..turnin 12039
..accept 12048
step
goto 36.6,46.6
.talk 26415
..turnin 12036
..accept 12053
step
goto 35.8,46.7
.talk 26652
..accept 12063
step
goto 26.9,43.3
.from Anub'ar Slayer##26606+, Anub'ar Cultist##26319+
.get 8 Scourge Armament|q 12048/1
.get Flesh-bound Tome|n
.click the Flesh-bound Tome|use Flesh-bound Tome##36744
..accept 12057
step
goto 22.6,41.7
.talk 26733
..turnin 12063
..accept 12064
step
goto 24.8,41.2
.' Use your Warsong Battle Standard in this spot |use Warsong Battle Standard##36738
.' Defend the Warsong Battle Standard |q 12053/1
step
goto 26.6,39.2
.from Tivax the Breaker##26770
.get Tivax's Key Fragment |q 12064/2
.' You can also find Tivax the Breaker in another big hut at [24.0,39.5] |c |n
step
goto 26.2,44.5
.from Sinok the Shadowrager##26771
.get Sinok's Key Fragment |q 12064/3
.' Sinok the Shadowrager will has several spawn points inside of the building.
step
goto 24.9,43.9
.from Anok'ra the Manipulator##26769
.get Anok'ra's Key Fragment |q 12064/1
step
goto 22.6,41.7
.talk 26733
..turnin 12064
..accept 12069
step
goto 25.6,40.9
.click Anub'ar Mechanism to free Roanauk Icemist
.' Help him kill Under-king Anub'et'kan
.click Anub'et'kan's Carapace
.get Fragment of Anub'et'kan's Husk |q 12069/1
|modelnpc Roanauk Icemist##26654
|model Anub'ar Mechanism##7786
step
'Hearth to Agmar's Hammer |goto 38.1,46.0,1 |use hearthstone##6948 |noway |c
step
goto 38.2,46.3
.talk 26379
..turnin 12069
..accept 12140
step
goto 36.6,46.6
.talk 26415
..turnin 12053
..accept 12071
..accept 12488
step
goto 36.6,47.2
.talk 26564
..turnin 12048
step
goto 35.8,48.4
.talk 26618
..turnin 12057
..accept 12115
step
goto 37.1,46.5
.talk 26581
..turnin 12115
..accept 12125
..accept 12126
..accept 12127
step
goto 37.2,45.7
.talk 26574
..turnin 12071
..accept 12072
step
goto 36.2,45.4
.talk 26810
.' Initiate Roanauk Icemist |q 12140/1
step
goto 36.3,45.6
.talk 26379
..turnin 12140
step
goto 37.5,64.1
.' Fight a Deranged Indu'le Villager
.' Use your Blood Gem on it when it is almost dead |use Blood Gem##36827
.get Filled Blood Gem|q 12125/1
|modelnpc Deranged Indu'le Villager##26411
step
goto 27.5,44.8
.' Use Valnok's Flare Gun on this bridge to call a Kor'kron War Rider |use Valnok's Flare Gun##36774
.click the Kor'kron War Rider to ride it |invehicle |c
|modelnpc Kor'kron War Rider##26572d
step
goto 27.8,38.9
.' Use the abilities on your action bar
.kill 25 Anub'ar Blightbeast##26607+ |q 12072/1 |tip They are flying around the buildings here.
step
goto 37.1,46.5
.talk 26581
..turnin 12125
step
goto 37.2,45.7
.talk 26574
..turnin 12072
step
goto 47.7,49.1
.from Dahlia Suntouch##27680
.get Ruby Brooch|n
.click the Ruby Brooch in your bags|use Ruby Brooch##37833
..accept 12419
.click Ruby Lilac##7791
.get Ruby Lilac|q 12102/1
step
goto 46.9,50
.' Fight Duke Vallenhal |tip He walks around this tree on a horse.
.' Use your Unholy Gem on him when he's almost dead |use Unholy Gem##36835
.get Filled Unholy Gem|q 12126/1
|modelnpc Duke Vallenhal##26926
step
goto 57.9,54.2
.talk 26443
..turnin 12122
..accept 12767
step
goto 57.9,54.2
.talk 26443
..'Tell him you need to go to the top of the temple |goto 59.7,53.1,0.5 |noway |c
step
goto 59.6,54.4
.talk 27785
..accept 12458
step
goto 59.8,54.7
.talk 27990
..turnin 12419
step
goto 60,54.5
.talk 27856
..accept 12470
step
goto 60.1,54.2
.talk 27765
..accept 12447
step
goto 59.5,53.3
.talk 26949
..'Tell him you want to go to the ground level of the temple |goto 58.0,55.2,0.5 |noway |c
step
goto 58,55.4
.talk 27804
..turnin 12767
..accept 12461
step
goto 59.8,54.2
.talk 27950
home Wyrmrest Temple
step
goto 66.2,52.9
.' Fight an Ice Revenant
.' Use your Frost Gem on it when it's almost dead |use Frost Gem##36847
.get Filled Frost Gem|q 12127/1
|modelnpc Ice Revenant##26283
step
|fly Agmar's Hammer
step
goto 37.1,46.5
.talk 26581
..turnin 12126
..turnin 12127
..accept 12132
step
goto 37.1,46.5
.' He puts you in the world of shadows
.kill 6 Shadowy Tormentor##26966+ |q 12132/1 |tip They're all around town in Agmar's Hammer.
step
'Right click the World of Shadows buff at the top right of your screen to leave the world of shadows |nobuff World of Shadows |c
step
goto 37.1,46.5
.talk 26581
..turnin 12132
..accept 12136
step
goto 36.1,48.9
.talk 26505
..turnin 12102
..accept 12104
step
goto 35.8,48.4
.talk 26618
..turnin 12136
step
goto 37.1,48.6
.talk 26504
..turnin 12104
..accept 12111
step
goto 38.4,48.3
.' Use your Pack of Vaccine and throw it at 5 Arctic Grizzlies and 5 Snowfall Elk |use Pack of Vaccine##36818
.' Inoculate 5 Snowfall Elk |q 12111/1
.' Inoculate 5 Arctic Grizzlies |q 12111/2
step
goto 37.1,48.6
.talk 26504
..turnin 12111
step
goto 43,50.9
.talk 27763
..turnin 12461
..accept 12448
step
goto 42.8,51.4
.' Help kill the following:
.' 12 Frigid Ghoul Attackers |kill 12 Frigid Ghoul Attacker |q 12448/1
.' 8 Frigid Geist Attackers |kill 8 Frigid Geist Attacker |q 12448/2
.' 1 Frigid Abomination Attacker |kill 1 Frigid Abomination Attacker |q 12448/3
|modelnpc Frigid Ghoul Attacker##27685
|modelnpc Frigid Geist Attacker##27686
|modelnpc Frigid Abomination Attacker##27531
step
'Go up the hill to 43,50.9 |goto 43,50.9
.talk 27763
..turnin 12448
..accept 12449
step
goto 46.7,52.8
.click Ruby Acorns##5746
.get Ruby Acorns|n
.' Use the Ruby Acorns on the Ruby Keeper corpses |use Ruby Acorn##37727 |tip The Ruby Keepers look like huge red dragons on fire.
.' Return 6 Ruby Keepers to the Earth |q 12449/1
step
goto 43,50.9
.talk 27763
..turnin 12449
..accept 12450
step
goto 48.2,47.8
.kill 6 Frigid Necromancer##27539+ |q 12450/1
step
goto 47.7,49.1
.' Go inside the tree trunk
.from Dahlia Suntouch##27680
.' Cleanse the Ruby Corruption |q 12450/2
step
'Go out of the valley to 43.0,50.9 |goto 43.0,50.9
.talk 27763
..turnin 12450
..accept 12769
step
goto 57.9,54.2
.talk 26443
..turnin 12769
..accept 12124
step
goto 57.9,54.2
.talk 26443
..'Tell him you want to go to the top of the temple |goto 59.7,53.1,0.5 |noway |c
step
goto 59.8,54.7
.talk 26917
..turnin 12124
..accept 12435
step
goto 59.5,53.3
.talk 26949
..'Tell him you want to go to Lord Afrasastrasz |goto 59.2,54.3,0.5 |noway |c
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
.kill 3 Azure Dragon##27608+ |q 12372/1
.kill 5 Azure Drake##27682+ |q 12372/2
step
'Fly southwest to 55.1,66.4 |goto 55.1,66.4
.' Fly into the huge purple swirling column
.' Use your Destabilize Azure Dragonshrine ability |petaction Destabilize Azure Dragonshrine
.' Destabilize the Azure Dragonshrine |q 12372/3
step
goto 58.7,54.5|n
.click the red arrow to get off the dragon on the middle level of the temple|script VehicleExit()|outvehicle|c
step
goto 59.2,54.3
.talk 27575
..turnin 12372
step
goto 59.2,54.3
.talk 27575
..'Tell him you want to go to the ground level |goto 58.0,55.2,0.5 |noway |c
step
goto 63.3,71
.from Emerald Lasher##27254+
.get 3 Lasher Seed|q 12458/1
step
goto 57.9,54.2
.talk 26443
..'Tell him you want to go to the top of the temple |goto 59.7,53.1,0.5 |noway |c
step
goto 59.6,54.4
.talk 27785
..turnin 12458
..accept 12459
step
goto 59.5,53.3
.talk 26949
..'Tell him you want to go to the ground level of the temple |goto 58.0,55.2,0.5 |noway |c
step
goto 55.2,45.7
.' Use your Seeds of Nature's Wrath on a Reanimated Frost Wyrm to weaken it |use Seeds of Nature's Wrath##37887
.kill Weakened Reanimated Frost Wyrm##27821 |q 12459/1
step
|fly Venomspite
step
goto Dragonblight 76.8,63.3
.talk 27243
..turnin 12488
..accept 12487
step
goto 86.2,47
.' Use your Seeds of Nature's Wrath on Turgid the Vile to weaken him |use Seeds of Nature's Wrath##37887 |tip He's in the basement of this building.
.kill Weakened Turgid the Vile##27809 |q 12459/2
step
goto 89.5,19.1
.' Use your Seeds of Nature's Wrath on Overseer Deathgaze to weaken him |use Seeds of Nature's Wrath##37887 
.kill Weakened Overseer Deathgaze##27807 |q 12459/3
step
goto 71.7,38.9
.' Use your Hourglass of Eternity anywhere around this area |use Hourglass of Eternity##37923
.' Fight the mobs that spawn
.' Protect the Hourglass of Eternity |q 12470/1
|modelnpc Hourglass of Eternity##27840
step
'Hearth to Wyrmrest Temple |goto 59.7,54.2,0.5 |use hearthstone##6948 |noway |c
step
goto 57.9,54.2
.talk 26443
..'Tell him you want to go to the top of the temple |goto 59.7,53.1,0.5 |noway |c
step
goto 59.6,54.4
.talk 27785
..turnin 12459
step
goto 60,54.5
.talk 27856
..turnin 12470
step
goto 59.5,53.3
.talk 26949
..'Tell him you want to go to the ground level of the temple |goto 58.0,55.2,0.5 |noway |c
step
goto 46.7,33.5
.talk 26979
..accept 12144
step
goto 37.2,31.8|n
.' The path to Serinar starts here |goto 37.2,31.8,0.3 |noway |c
step
'Go inside the cave to 35.2,30.0 |goto 35.2,30.0
.talk 26593
..turnin 12447
..accept 12262
..accept 12261
step
'Go outside the cave to 37.9,32.0 |goto 37.9,32.0
.kill 6 Burning Depths Necrolyte##27356+ |q 12262/1
.kill 10 Smoldering Skeleton##33016+ |q 12262/2
step
goto 42.1,32
'Make sure you clear the area of mobs before you start this event.
.' Use your Destructive Wards in this spot |use Destructive Wards##37445
.' Defend the Destructive Ward from the mobs that spawn
.' Fully Charge the Destructive Ward  |q 12261/1
|modelnpc Destructive Ward##27430
step
'Go west into the cave to 35.2,30.0 |goto 35.2,30.0
.talk 26593
..turnin 12262
..turnin 12261
..accept 12263
step
'Follow the path in the cave while disguised as a cultist to 31.8,30.5 |goto 31.8,30.5
.' Uncover the Magmawyrm Resurrection Chamber |q 12263/1
step
'Follow the path back down to 35.2,30.0 |goto 35.2,30.0
.talk 26593
..turnin 12263
..accept 12264
..accept 12265
step
'Follow the path in the cave to 34.2,26.8 |goto 34.2,26.8
.kill 3 Burning Depths Necromancer##27358+ |q 12264/1
.kill 6 Smoldering Construct##33017+ |q 12264/2
.kill 6 Smoldering Geist##27363+ |q 12264/3
.click Necromantic Rune##465
.' Destroy 8 Necromantic Runes |q 12265/1
step
'Go back down in the cave to 35.2,30.0 |goto 35.2,30.0
.talk 26593
..turnin 12264
..turnin 12265
..accept 12267
step
'Follow the path in the cave to 31.6,31.2 |goto 31.6,31.2
.' Use Neltharion's Flame to Cleanse the Summoning Area |use Neltharion's Flame##37539 |tip Stand on the edge of the rock, next to the lava.
.kill Rothin the Decaying##27355 |q 12267/2
step
'Go back down in the cave to 35.2,30.0 |goto 35.2,30.0
.talk 26593
..turnin 12267
..accept 12266
step
'Hearth to Wyrmrest Temple |goto 59.7,54.2,0.3 |use hearthstone##6948 |noway |c
step
goto 57.9,54.2
.talk 26443
..'Tell him you want to go to the top of the temple |goto 59.7,53.1,0.5 |noway |c
step
goto 60.1,54.2
.talk 27765
..turnin 12266
step
goto 59.5,53.3
.talk 26949
..'Tell him you want to go to the ground level of the temple |goto 58.0,55.2,0.5 |noway |c
step
goto 56.8,56.3
' |from Magnataur Patriarch##26295+, Magnataur Youngling##26480+
.kill 3 Dragonblight Magnataurs |q 12144/2
step
goto 55.6,52.8
' |from Snowplain Shaman##27279+, Snowplain Zealot##27278+
.kill 10 Snowplain Snobolds |q 12144/1
.' You can find more around [55.7,58.4]
step
goto 46.7,33.5
.talk 26979
..turnin 12144
..accept 12145
step
'Follow the running kobolds to 42.4,38.9 |goto 42.4,38.9
.kill Icefist##27004 |q 12145/1
.get Emblazoned Battle Horn|n
.click the Emblazoned Battle Horn|use Emblazoned Battle Horn##36856
..accept 12147
step
goto 46.7,33.5
.talk 26979
..turnin 12145
step
goto 48.5,24.1
.talk 26896
..accept 12469
step
goto 54.5,23.6
.talk 26647
..accept 12043
step
goto 54.7,23.2
.talk 26661
..accept 12045
step
goto 55,23.4
.talk 26660
..turnin 12469
..accept 12044
step
goto 53.7,18.9
.from Crystalline Ice Elemental##26316+
.get 4 Ice Shard Cluster|q 12045/1
step
goto 54.7,23.2
.talk 26661
..turnin 12045
..accept 12046
step
goto 53.7,25.4
.from Dragonbone Condor##26483+,Jormungar Tunneler##26467+
.collect 12 Thin Animal Hide|q 12046/1
.' You can find more around [51.6,26.3]
step
goto 54.7,23.2
.talk 26661
..turnin 12046
..accept 12047
step
goto 55,23.4
.talk 26660
..accept 12049
step
goto 57.5,23.9
.click Splintered Bone Chunk##6327
.get 12 Splintered Bone Chunk|q 12047/1
.' More Splintered Bone Chunks can be found:
.' [60.0,26.7]
.' [62.8,28.8]
step
goto 57.5,23.9
.' Fight a Hulking Jormungar
.' Use your Potent Explosive Charges on the Hulking Jormungar when he opens his mouth |use Potent Explosive Charges##36732
.click the Jormungar Meat
.get 6 Seared Jormungar Meat|q 12049/1
step
goto 55,23.4
.talk 26660
..turnin 12049
step
goto 54.7,23.2
.talk 26661
..turnin 12047
step
goto 54.5,23.6
.talk 26647
..accept 12052
step
goto 55,23.4
.talk 26660
..accept 12050
step
goto 53.1,19.5
.' Use Xink's Shredder Control Device |use Xink's Shredder Control Device##36734
.click the shredder to ride it
' |from Coldwind Waste Huntress##26575+, Coldwind Witch##26577+
.kill 15 Coldwind Harpies |q 12052/2
.' Use your Gather Lumber ability next to Coldwind Trees |petaction Gather Lumber |tip The Coldwind Trees look like trees with small pieces of paper with X's on them.
.get 50 Coldwind Lumber|q 12050/1
step
goto 44.9,9.1
.' Use Xink's Shredder Control Device |use Xink's Shredder Control Device##36734
.kill Mistress of the Coldwind##26578 |q 12052/1 |tip She flies around this area.
step
goto 54.5,23.6
.talk 26647
..turnin 12052
step
goto 55,23.4
.talk 26660
..turnin 12050
step
goto 54.5,23.6
.talk 26647
..accept 12112
step
goto 52.4,30.4
.kill 12 Wastes Digger##26492+ |q 12043/2
.kill Wastes Taskmaster##26493 |q 12043/1
.click Composite Ore##333
.get 8 Composite Ore|q 12044/1
.' You can find more of all of these at [56.5,28.1] |n
step
goto 54.5,23.6
.talk 26647
..turnin 12043
step
goto 55,23.4
.talk 26660
..turnin 12044
step
goto 59.4,18.2
.talk 26659
..turnin 12112
..accept 12075
step
'Go into the cave to 56.2,12.0 |goto 56.2,12.0
.click the Ravaged Crystalline Ice Giant |tip It's an ice giant corpse laying inside this cave.
.get Sample of Rockflesh|q 12075/1
|modelnpc Ravaged Crystalline Ice Giant##26809
step
goto 59.4,18.2
.talk 26659
..turnin 12075
..accept 12076
step
ding 74
step
goto 59,17.8
.talk 26473
..accept 12079
step
goto 57.5,12.4
.' Fight Ice Heart Jormungar Feeders
.' They will cast a poison on you
.' Use Zort's Scraper when you are affected by the poison |use Zort's Scraper##36775
.get 2 Vial of Corrosive Spit|q 12076/1
.kill 8 Ice Heart Jormungar Feeder##26358+ |q 12079/1
step
'Go outside the cave to 59.4,18.2 |goto 59.4,18.2
.talk 26659
..turnin 12076
..accept 12077
step
goto 59,17.8
.talk 26473
..turnin 12077
..turnin 12079
step
goto 59.4,18.2
.talk 26659
..accept 12078
step
'Go into the cave to 55.3,11.0 |goto 55.3,11.0
.' Use your Sturdy Crates on Ice Heart Jormungar Spawns |use Sturdy Crates##36771
.click Captured Jormungar Spawn Crate##528
.get 3 Captured Jormungar Spawn|q 12078/1
|modelnpc Ice Heart Jormungar Spawn##26359
step
'Go outside the cave to 59.4,18.2 |goto 59.4,18.2
.talk 26659
..turnin 12078
step
'Hearth to Wyrmrest Temple |goto 59.7,54.2,0.5 |use hearthstone##6948 |noway |c
step
goto 60,55.2
.talk 26983
..turnin 12147
step
|fly Agmar's Hammer
step
goto 38.2,46.3
.talk 26379
..accept 12224
step
|fly Kor'kron Vanguard
step
goto 40.7,18.1
.talk 25257
..turnin 12224
..accept 12496
step
|fly Wyrmrest Temple
step
goto 57.9,54.2
.talk 26443
..'Tell him you want to go to the top of the temple |goto 59.7,53.1,0.5 |noway |c
step
goto 59.8,54.7
.talk 26917
..turnin 12496
..accept 12497
step
goto 59.5,53.3
.talk 26949
..turnin 12497
..accept 12498
step
'Use your Ruby Beacon of the Dragon Queen |use Ruby Beacon of the Dragon Queen##38302
.click the red dragon to ride it |invehicle |c
step
goto 57.2,33.1
.' Use the abilities on your hotbar
.kill 30 Wastes Scavenger##28005+ |q 12498/1
step
'Fly to 54.5,31.3 |goto 54.5,31.3
.' Use the abilities on your hotbar
.from Thiassi the Lightning Bringer##28018 |tip At the peak of this mountain.
.click the red arrow on your hot bar to jump off the dragon
.from Grand Necrolord Antiok##28006
.click the Scythe of Antiok
.get Scythe of Antiok|q 12498/2
step
'Use your Ruby Beacon of the Dragon Queen |use Ruby Beacon of the Dragon Queen##38302
.click the red dragon to ride it |invehicle |c
step
'Fly to 59.8,54.7 |goto 59.8,54.7
.' Jump off the dragon |script VehicleExit()
.talk 26917
..turnin 12498
..accept 12500
step
goto 59.5,53.3
.talk 26949
..'Tell him you want to go to the ground level of the temple |goto 58.0,55.2,0.5 |noway |c
step
|fly Kor'kron Vanguard
step
goto 40.7,18.1
.talk 25257
..turnin 12500
step
|fly Agmar's Hammer
step
goto Dragonblight,38.1,46.2
.talk 26471
..accept 12791
..'Teleport to Dalaran |goto Dalaran |noway |c
step
'Go downstairs to 56.3,46.8 |goto Dalaran,56.3,46.8
.talk 29156
..turnin 12791
..accept 12790
step
goto 56.3,46.8
.click Teleport to Violet Stand Crystal##8070
.' Use the Teleport to Violet Stand Crystal |q 12790/1
step
goto Crystalsong Forest,15.8,42.5
.click Teleport to Dalaran Crystal##8070
.' Use the Teleport to Dalaran Crystal |q 12790/2
step
'Go downstairs to 56.3,46.8 |goto Dalaran,56.3,46.8
.talk 29156
..turnin 12790
step
|fly Conquest Hold
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Northrend 70-80\\Grizzly Hills (74-75)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Northrend 70-80\\Zul'Drak (75-77)
startlevel 74.30
dynamic on
step
goto Grizzly Hills,22.7,66.2
.talk 26868
..accept 12436
step
goto 22,65.1
.talk 27037
..accept 12175
step
goto Grizzly Hills 20.8,64.6
.talk 27125
.home Conquest Hold
step
goto 20.7,64.2
.talk 26860
..turnin 12488
..accept 12468
step
goto 21,64.1
.talk 27388
..turnin 12468
..accept 12257
..accept 12256
step
goto 24.7,66.9
.from Graymist Hunter##26592+
.get 3 Gray Worg Hide|q 12175/1
step
goto 24.4,60.7
.from Tallhorn Stag##26363+
.get 5 Succulent Venison|q 12436/1
.' More Tallhorn Stags can be found around [20.8,57.0]
step
goto 22.7,66.2
.talk 26868
..turnin 12436
step
goto 22,65.1
.talk 27037
..turnin 12175
..accept 12176
step
goto 28.4,56.5
.from Grizzly Bear##27131+
.get 6 Grizzly Hide|q 12176/1
step
goto 22,65.1
.talk 27037
..turnin 12176
..accept 12177
step
goto 22.7,66.2
.talk 26868
..buy 5 Simple Flour|q 12177/2
step
goto 23.4,63.1
.talk 27134
..buy 1 Coal|q 12177/1
step
goto 22,65.1
.talk 27037
..turnin 12177
..accept 12178
step
goto 20.7,64.2
.talk 26860
..turnin 12178
step
goto 30.6,77.2
.kill 12 Dragonflayer Huscarl##27260+ |q 12257/1
.from Dragonflayer Flamebinder##27259+
.get 3 Flame-Imbued Talisman |q 12256/1
step
goto 21,64.1
.talk 27388
..turnin 12257
..turnin 12256
..accept 12259
step
goto 26.6,77.9
.talk 27292
.' Unchain and control Flamebringer |invehicle |c
step
'Fly to 27.1,73.0 |goto 27.1,73.0
.' Use the abilities on your hotbar
.kill Thane Torvald Eriksson##27377 |q 12259/1 |tip Standing at the top of this tower.  If you have trouble killing him with the drake, just fly up to him on your flying mount, get off your mount and fight him normally.
step
goto 21,64.1
.talk 27388
..turnin 12259
..accept 12451
step
goto 20.7,64.2
.talk 26860
..accept 12412
step
goto 36.3,67.9
.kill Vladek##27547 |q 12412/2 |tip Standing inside a house.
.get Mikhail's Journal |n
.click Mikhail's Journal |use Mikhail's Journal##37830
..accept 12423
step
goto 35.2,69.9
.kill 8 Silverbrook Hunter##27546+ |q 12412/1
step
goto 20.7,64.2
.talk 26860
..turnin 12412
..accept 12413
..turnin 12423
..accept 12424
step
goto 21,64
.talk 27102
..turnin 12424
..accept 12422
step
goto 22.2,64.7
.talk 27266
..accept 12208
step
goto 22.5,62.8
.talk 27262
..accept 12453
step
goto 16.2,47.6
.talk 26424
..turnin 12208
..accept 11984
step
goto 16.4,48.3
.talk 26422
..'Tell him it's time to play with the ice trolls |havebuff INV_Misc_Head_Troll_01 |q 11984
step
goto 13.2,60.5
.' Use Budd's pet bar skill Tag Troll to have him stun a troll |petaction Tag Troll
.' Use your Bounty Hunter's Cage on the stunned troll |use Bounty Hunter's Cage##35736
.' Capture a Live Ice Troll |q 11984/1
|modelnpc Drakkari Warrior##26425
|modelnpc Drakkari Shaman##26447
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
.click Dull Carving Knife##7871
.collect 1 Dull Carving Knife##38083|q 11989
step
goto 16.4,47.8
.' Use your Dull Carving Knife next to the yellow cage |use Dull Carving Knife##38083
.talk 26423
..'Shake his hand
..'Make a Blood Pact With Drakuru |q 11989/1
step
goto 16.4,47.8
.talk 26423
..turnin 11989
..accept 11990
step
goto 16,47.8
.talk 26474
.buy 1 Crystal Vial |q 11990/1
step
goto 14.6,45.3
.click Hazewood Bush##358 |tip They are scattered around this area.
.get 3 Haze Leaf|q 11990/2
step
goto 15.2,40.3
.click Waterweed##267
.get Waterweed Frond|q 11990/3
step
goto 16.4,47.8
.talk 26423
..turnin 11990
..accept 11991
step
goto 15.7,46.7
.talk 26519
..accept 12484
step
goto 15.7,46.9
.click Scourged Troll Mummy##6804
.collect 1 Scourged Troll Mummy##38149|q 12484
step
goto 16.9,48.3
.' Use your Scourged Troll Mummy next to the burning pile of mummies |use Scourged Troll Mummy##38149
.' Burn a Mummified Carcass |q 12484/1
step
goto 16.7,48.3
.talk 26604
..turnin 12484
..accept 12029
step
goto 15.7,46.7
.talk 26519
..accept 12483
step
goto 11.1,61.8
.click Shimmering Snowcap##7756
.get 5 Shimmering Snowcap|q 12483/2
step
goto 13.3,58.5
.from Ice Serpent##26446+
.get 5 Ice Serpent Eye|q 12483/1
.from Drakkari Shaman##26447+, Drakkari Warrior##26425+
.collect 5 Frozen Mojo##35799|q 11991
step
goto 13.2,60.9
.' Use Drakuru's Elixir next to Drakuru's Brazier |use Drakuru's Elixir##35797 |tip It's a square bowl at the top of these stairs.
.talk 26500
..turnin 11991
..accept 12007
step
goto 18.4,38.5
.click Sweetroot##7813
.get 5 Sweetroot|q 12483/3
step
goto 14.5,38
.from Warlord Zim'bo##26544 |tip Standing inside this hut, next to a bonfire.
.collect 1 Zim'bo's Mojo##35836 |q 12007
step
'Go up the huge stairs to 17.9,36.5 |goto 17.9,36.5
.click Seer of Zeb'Halak##7785
.get Eye of the Prophets|q 12007/1
step
goto 17.4,36.4
.' Use Drakuru's Elixir next to Drakuru's Brazier |use Drakuru's Elixir##35797
.talk 26543
..turnin 12007
..accept 12042
step
goto 16,29.9
.' Jump on the big rock and stand on it
.' Use Mack's Dark Grog and throw it at the trolls running around to the north |use Mack's Dark Grog##35908
.' Burn 20 Scourge Trolls |q 12029/1
step
goto 21.9,29.9
.talk 27497
..turnin 12422
step
goto 24,33.6
.kill 8 Silverbrook Defender##27676+ |q 12413/1
step
'Go on top of the control station to 36.9,32.4 |goto 36.9,32.4
.click Heart of the Ancients##7075
..turnin 12042
..accept 12802
step
goto 44.2,30.4
.from Drakkari Defender##26704+
.collect 5 Desperate Mojo##36743|q 12802
step
goto 45,28.4
.' Use Drakuru's Elixir next to Drakuru's Brazier |use Drakuru's Elixir##35797 |tip It's a square bowl in the middle of this stone courtyard.
.talk 26701
..turnin 12802
..accept 12068
step
'Hearth to Conquest Hold |goto 20.9,64.5,0.5 |use hearthstone##6948 |noway |c
step
goto 20.7,64.2
.talk 26860
..turnin 12413
step
goto 21,64
.talk 27102
..accept 12425
step
goto 22.5,62.8
.talk 27262
..accept 12207
..accept 12213
step
goto 16.7,48.3
.talk 26604
..turnin 12029
step
goto 15.7,46.7
.talk 26519
..turnin 12483
..accept 12190
step
goto Grizzly Hills,26.5,46.6
.from Entropic Ooze##26366+
.get 6 Slime Sample|q 12207/1
step
goto 28.6,45.1|n
.' The path down to Vordrassil's Tears starts here |goto 28.6,45.1,0.3 |noway |c
step
'Go underground to 30.5,43.9 |goto 30.5,43.9
.' Use your Geomancer's Orb |use Geomancer's Orb##37173 |tip Go underground into this tunnel, all the way to the end.  Stand under the black mist.
.' Use the Orb beneath Vordrassil's Tears |q 12213/3
step
'Go outside the tunnel to 33.3,48.5 |goto 33.3,48.5 |n
.' The path down to Vordrassil's Limb starts here |goto 33.3,48.5,0.3 |noway |c
step
'Go underground to 32.2,45.8 |goto 32.2,45.8
.' Use your Geomancer's Orb |use Geomancer's Orb##37173 |tip Go underground into this tunnel, all the way to the end.  Stand under the black mist.
.' Use the Orb beneath Vordrassil's Limb |q 12213/2
step
'Go outside the tunnel to 40.7,52 |goto 40.7,52 |n
.' The path down to Vordrassil's Heart starts here |goto 40.7,52,0.3 |noway |c
step
'Go underground to 41.2,54.7 |goto 41.2,54.7
.' Use your Geomancer's Orb |use Geomancer's Orb##37173 |tip Go underground into this tunnel, all the way to the end.  Stand under the black mist.
.' Use the Orb beneath Vordrassil's Heart |q 12213/1
step
'Go outside the tunnel to 43.8,53.3 |goto 43.8,53.3
.' Use your Silver Feather on Imperial Eagles |use Silver Feather##37877 |tip They sit on big rocks around this area.
.' Bind 6 Imperial Eagles' sight |q 12453/1
step
goto 44,47.9
.talk 27581
..turnin 12425
..accept 12328
step
goto 46.8,35.7
.from Fern Feeder Moth##27421+
.get 4 Gossamer Dust|q 12328/1
step
goto 44,47.9
.talk 27581
..turnin 12328
..accept 12327
step
'Drink the Gossamer Potion in your bags next to Ruuna's Crystal Ball right next to you |use Gossamer Potion##37661
.' See the Vision from the Past |q 12327/1
step
goto 44,47.9
.talk 27581
..turnin 12327
..accept 12329
step
goto 65,46.9
.talk 26853
..fpath Camp Oneqwah
step
goto 65,47.9
.talk 26944
..accept 12415
step
goto 65.2,47.7
.talk 26666
..turnin 12451
..accept 12074
step
goto 65.3,47.5
.talk 27221
..accept 12195
step
home Camp Oneqwah
step
|fly Conquest Hold
step
goto 22.5,62.8
.talk 27262
..turnin 12453
..turnin 12207
..turnin 12213
..accept 12229
..accept 12231
step
|fly Camp Oneqwah
step
goto 60.4,54.3
.from Silvercoat Stag##27230+
.get 5 Mature Stag Horn|q 12195/1
.' You can find more around [57.3,48.2]
step
goto 66.9,62.4
.talk 27275
.' Listen to Kodian's Story |q 12231/2
step
goto 63.6,57.9
.from Redfang Elder##26436+, Redfang Hunter##26356+
.get 8 Crazed Furbolg Blood|q 12229/1
step
goto 48.1,58.9
.talk 27274
..'Listen to Orsonn's Story |q 12231/1
step
goto 57.5,41.3
.talk 26935
..turnin 12329
..accept 12134
..accept 12330
step
goto 60.4,40.2
.kill 12 Solstice Hunter##26389+ |q 12134/1
step
goto 62.3,42
.' Use your Tranquilizer Dart on Tatjana |use Tranquilizer Dart##37665 |tip She's sitting on a horse.
.click the horse to jump on it
.' Deliver Tatjana |q 12330/1
|modelnpc Tatjana##27627
step
goto 57.5,41.3
.talk 26935
..turnin 12134
..turnin 12330
..accept 12411
step
goto 64.8,43.4
.talk 27646
..turnin 12411
step
goto 65.3,47.5
.talk 27221
..turnin 12195
..accept 12165
step
goto 69.1,40.1
.talk 26484
..accept 12279
step
goto 73.8,34
.talk 26884
..turnin 12190
..accept 12113
..accept 12114
step
goto 73.9,34.1
.talk 26886
..accept 12116
step
goto 72.7,37.6
.from Longhoof Grazer##26418+
.get 10 Shovelhorn Steak|q 12113/2
.from Duskhowl Prowler##27408+
.get 10 Fibrous Worg Meat|q 12113/1
step
goto 61.6,32.6
.' Use your Flashbang Grenade on Highland Mustangs |use Flashbang Grenade##37716
.' Frighten 15 Highland Mustangs |q 12415/1
.' You can find more around [62.6,14.6]
step
goto 64.3,15.0|n
.' The path up to Kurun starts here |goto 64.3,15.0,0.3 |noway |c
step
'Follow the road into the mountains around to 65.8,17.8 |goto 65.8,17.8
.talk 26260
..turnin 12074
..accept 11982
step
goto 66.1,13.8
.click Boulder##7749
.collect 5 Boulder##35734|q 11982 |n
.' Walk over to the nearby trench cliff
.' Use your Boulders on Iron Rune mobs below |use Boulder##35734
.' Disrupt 5 Iron Dwarf Operations |q 11982/1
step
goto 65.8,17.8
.talk 26260
..turnin 11982
..accept 12070
step
goto 68.3,10.1
.' Use your Shard of the Earth on Grizzly Hills Giants that are physically fighting another mob |use Shard of the Earth##36764
.' Rally 5 Grizzly Hills Giants |q 12070/1
.' Kill 5 Iron Rune Avengers that spawn |q 12070/2
step
goto 65.8,17.8
.talk 26260
..turnin 12070
..accept 11985
step
goto 64.3,19.8
.click Battered Journal##6891
..accept 12026
step
'They look like torn pages that spawn all around this area on the ground
.click Missing Journal Page##7752
.collect 8 Missing Journal Page##35737|q 12026 |n
.click the Incomplete Journal in your bags|use Incomplete Journal##35739
.get Brann Bronzebeard's Journal |q 12026/1
step
goto 70.2,13.0
.kill Iron Thane Argrum##26348 |q 11985/1 |tip Standing at the very back of the trench inside the building.
step
'Go out of the building and up the path to 65.8,17.8 |goto 65.8,17.8
.talk 26260
..turnin 11985
..accept 12081
step
goto 70.5,27.4
.kill 10 Drakkari Protector##26797+ |q 12114/1
.kill 10 Drakkari Oracle##26795+ |q 12114/2
.collect 5 Sacred Mojo##36758 |q 12068
step
'Go inside the underground crypt to 70.8,21.8 |goto 70.8,21.8
.click Drakkari Canopic Jar##7792 |tip They look like small gray urns sitting against the walls inside this underground crypt.
.get 5 Drakkari Canopic Jar|q 12116/1
step
'Inside the crypt, go to 69.4,18.2 |goto 69.4,18.2
.click Drakkari Tablet##5 |tip It's in the corner of a small room inside this underground crypt.
.get Drakkari Tablets|q 12068/1
step
'Inside the crypt, go to 69.5,17.5 |goto 69.5,17.5
.talk 26814
..accept 12082
.' Escort Harrison from the Drakil'jin Ruins |q 12082/1
step
goto 71.7,26.2
.' Use Drakuru's Elixir next to Drakuru's Brazier |use Drakuru's Elixir##35797 |tip It's a square bowl at the top of the stairs.
.talk 26787
..turnin 12068
step
ding 75
step
goto 75.5,26.9
.' Use your Fishing Net on Schools of Northern Salmon |use Fishing Net##37542 |tip They look like schools of fish in the water around this area.
.get 6 Northern Salmon|q 12279/1
step
goto 79.8,33.6
.talk 26420
..turnin 12081
..accept 12093
step
goto 79.1,43.3
.from Iron Rune-Weaver##26820+
.kill Overseer Brunon##26923 |q 12093/4
step
goto 75.3,36.7
.from Iron Rune-Weaver##26820+
.kill Overseer Lochli##26922 |q 12093/3
step
goto 73.9,34.1
.talk 26886
..turnin 12116
..accept 12120
step
goto 73.8,34
.talk 26884
..turnin 12113
..turnin 12114
..turnin 12082
step
goto 72.1,33.9
.from Iron Rune-Weaver##26820+
.kill Overseer Korgan##26921 |q 12093/2
step
goto 67.7,29.6
.from Iron Rune-Weaver##26820+
.kill Overseer Durval##26920 |q 12093/1
step
goto 71.6,28.1
.from Drak'aguul##26919
.get Drakil'jin Mallet |q 12120/1
step
goto 73.9,34.1
.talk 26886
..turnin 12120
..accept 12121
step
goto 79.8,33.6
.talk 26420
..turnin 12093
..accept 12094
step
goto 78.8,39.9
.' Use your Shard of Gavrock next to the Second Ancient Stone |use Shard of Gavrock##36787 |tip It's a big blue glowing stone statue.
.' Draw Power from the Second Ancient Stone |q 12094/2
step
goto 74.1,44.3
.' Use your Shard of Gavrock next to the Third Ancient Stone |use Shard of Gavrock##36787 |tip It's a big blue glowing stone statue.
.' Draw Power from the Third Ancient Stone |q 12094/3
step
goto 71.3,39.9
.' Use your Shard of Gavrock next to the First Ancient Stone |use Shard of Gavrock##36787 |tip It's a big blue glowing stone statue.
.' Draw Power from the First Ancient Stone |q 12094/1
step
goto 71.5,24.7
.' Use your Charged Drakil'jin Mallet next to a gong |use Charged Drakil'jin Mallet##36834 |tip They are 3 gongs sitting close together here.
.get killed by Warlord Jin'arrak |q 12121/1
.' STAY DEAD |havebuff On the Other Side
step
'While dead, go inside the crypt to 69.4,19.5 |goto 69.4,19.5
.talk 26924
..turnin 12121
..accept 12137
step
goto 69.4,19.5
.click Gan'jo's Chest##5744 |tip Gan'jo's Chest is sitting in the wall sink.
.get Snow of Eternal Slumber|q 12137/1
step
goto 69.4,19.5
.talk 26924
..'Tell him you are ready to return to the realm of the living |nobuff On the Other Side |c
step
goto 70,20.4
.' Use your Snow of Eternal Slumber on Ancient Drakkari mobs |use Snow of Eternal Slumber##36859
.' They run to nearby mummies on the ground, follow them
.click Drakkari Spirit Particles##7788
.get 5 Drakkari Spirit Particles|q 12137/2
|modelnpc Ancient Drakkari Soothsayer##26812
|modelnpc Ancient Drakkari Warmonger##26811
step
'Go outside to 73.9,34.1 |goto 73.9,34.1
.talk 26886
..turnin 12137
..accept 12152
step
'Go into the crypt to 71.3,19.6 |goto 71.3,19.6
.click Sacred Drakkari Offering##381 |tip It's a small fruit bowl on the ground inside the crypt, next to a skull statue.
.get Sacred Drakkari Offering|n
.' Use your Drakkari Spirit Dust |use Drakkari Spirit Dust##36873
.collect 1 Infused Drakkari Offering##37063|q 12152
step
'Go outside to 71.4,24.4 |goto 71.4,24.4
.' Use your Infused Drakkari Offering next to a gong |use Infused Drakkari Offering##37063
.' Destroy Warlord Jin'arrak |q 12152/1
step
goto 73.9,34.1
.talk 26886
..turnin 12152
step
goto 79.8,33.6
.talk 26420
..turnin 12094
..accept 12099
step
goto 76.2,37.7
.' Use Gavrock's Runebreaker on Runed Giants |use Gavrock's Runebreaker##36796 |tip You can use the item multiple times on the same Runed Giant until it becomes friendly.
.' Free 4 Runed Giants |q 12099/1
step
goto 79.8,33.6
.talk 26420
..turnin 12099
step
'Hearth to Camp Oneqwah |goto 65.4,47.0,0.5 |use hearthstone##6948 |noway |c
step
goto 65.2,47.7
.talk 26584
..turnin 12026
..accept 12054
step
goto 65.2,47.7
.talk 26666
..accept 12204
step
goto 65,47.9
.talk 26944
..turnin 12415
step
goto 69.1,40.1
.talk 26484
..turnin 12279
..'Talk to him about Loken
..'Question Hugh Glass |q 12204/1
step
goto 79.8,33.6
.talk 26420
..'Talk to him about Loken |tip He's a huge rock elemental standing on a small island.
..'Question Gavrock |q 12204/2
step
goto 76.6,55.1
.from Iron Rune-Smith##26408+
.collect Golem Blueprint Section 1##36849|q 12165 |n
.collect Golem Blueprint Section 2##36850|q 12165 |n
.collect Golem Blueprint Section 3##36851|q 12165 |n
.click the Golem Blueprint Section 1 in your bags|use Golem Blueprint Section 1##36849
.get War Golem Blueprint|q 12165/1
step
goto 66.6,58.8
.from Grumbald One-Eye##26681
.get Spiritsbreath|q 12054/1
step
goto 65.2,47.7
.talk 26584
..turnin 12054
..accept 12058
step
goto 65.2,47.7
.talk 26666
..turnin 12204
..accept 12201
..accept 12073
step
goto 65,47
.talk 27227
..turnin 12165
..accept 12196
step
goto 76.6,54.8
.from Iron Rune Overseer##27177
.get Overseer's Uniform |q 12201/1
.click War Golem Part##7731 |tip The War Golem Parts look like metal parts sitting around inside this room and buildings around this area.
.get 8 War Golem Part|q 12196/1
.' You can find more Golem Parts around [75.3,57.3]
step
goto 65.2,47.7
.talk 26666
..turnin 12201
..accept 12202
step
goto 65,47
.talk 27227
..turnin 12196
..accept 12197
step
goto 76.2,57.3
.from Iron Rune Overseer##27177+, Iron Rune-Smith##26408+
.' Use Rokar's Camera on their corpses |use Rokar's Camera##37125
.' Capture 8 Iron Dwarf Images |q 12202/1
step
goto 76.8,59.4
.from Rune-Smith Kathorn##26410
.get Kathorn's Power Cell |q 12197/2
step
goto 74.9,56.9
.from Rune-Smith Durar##26409
.get Durar's Power Cell |q 12197/1
step
goto 65.2,47.7
.talk 26666
..turnin 12202
..accept 12203
step
goto 65.1,47.3
.talk 27227
..turnin 12197
..accept 12198
step
goto 73.7,51.4
.' Use your Golem Control Unit |use Golem Control Unit##36936
.from Lightning Sentry##26407+
.get 10 Charge Level|q 12198/1
step
goto 81.5,60.3
.' Use your Overseer Disguise Kit |use Overseer Disguise Kit##37071
.click Loken's Pedastal |tip It's a big square stone altar thing inside this building.
.' Receive the Message from Loken  |q 12203/1
step
goto 65.2,47.7
.talk 26666
..turnin 12203
step
goto 65.1,47.3
.talk 27227
..turnin 12198
..accept 12199
step
'Go into this building and downstairs to 76.2,63.2 |goto 76.2,63.2
.' Use your Golem Control Unit to ride in your War Golem |use Golem Control Unit##36865
.' Use your EMP skill to stun The Anvil and remove Iron Thane Furyhammer's Shield
.kill Iron Thane Furyhammer##26405 |q 12199/1 |tip He's in the highest building at the top of the hill, downstairs with a green shield bubble around him.
step
goto 65.3,47.5
.talk 27221
..turnin 12199
step
goto 65.2,19.4
' |from Rune Reaver##26268+
.kill 10 Iron Dwarf Defender |q 12073/1
step
goto 68.5,16.2
.click Third Rune Plate##3452 |tip It is across a metal door in the wall.
.' Decipher the Third Prophecy |q 12058/3
step
goto 69,14.4
.click First Rune Plate##3452 |tip It is across a metal door in the wall.
.' Decipher the First Prophecy |q 12058/1
step
goto 70.2,14.7
.click Second Rune Plate##3452 |tip It is across a metal door in the wall.
.' Decipher the Second Prophecy |q 12058/2
step
'Hearth to Camp Oneqwah |goto 65.4,47.0,0.5 |use hearthstone##6948 |noway |c
step
goto 65.2,47.7
.talk 26666
..turnin 12073
step
goto 65.2,47.7
.talk 26584
..turnin 12058
step
|fly Conquest Hold
step
goto 22.5,62.8
.talk 27262
..turnin 12229
..turnin 12231
..accept 12241
..accept 12242
step
|fly Camp Oneqwah
step
goto 50.5,45.9|n
.' The path down to Destroy the Sapling starts here |goto 50.5,45.9,0.5 |noway |c
step
'Follow the path down to 50.8,42.6 |goto 50.8,42.6
.' Use your Verdant Torch next to the tall tree |use Verdant Torch##37306 |tip It's a tall tree at the bottom of the spiral path.
.get Vordrassil's Ashes |q 12241/1
step
'Go outside to 51.5,47.1 |goto 51.5,47.1
.click Vordrassil's Seed##424
.get 8 Vordrassil's Seed |q 12242/1
step
|fly Conquest Hold
step
goto 22.5,62.8
.talk 27262
..turnin 12241
..turnin 12242
step
|fly Dalaran
step
goto 60.2,47.6 |n
.' Enter the Dalaran Sewers |goto 60.2,47.6,0.5 |noway |c
step
goto 45.4,40.8
.talk 30137
..accept 12974
step
goto 34.1,43.1 |n
.' Leave the Dalaran Sewers |goto 34.1,43.1,0.5 |noway |c
step
'Go upstairs to 30.6,48.6 |goto 30.6,48.6
.talk 16128
..accept 29829
step
goto Dalaran 68.5,70.4 |n
.' Go through the purple portal to The Violet Hold | goto The Violet Hold |c
step
.' Proceed forward into The Violet Hold |goto The Violet Hold 45.8,93.6 |c
step
goto The Violet Hold 47.7,89.7
.talk 30658
..turnin 29829
step
|fly Zim'Torga
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Northrend 70-80\\Zul'Drak (75-77)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Northrend 70-80\\Sholazar Basin (77-78)
startlevel 75.73
dynamic on
step
goto Zul'Drak,60,56.7
.talk 28624
..fpath Zim'Torga
step
goto Zul'Drak 59.3,57.3
.talk 29583
home Zim'Torga
step
goto 48.4,56.4
.talk 30007
..turnin 12974
step
goto 41.6,64.4
.talk 28623
..fpath The Argent Stand
step
goto 32.2,74.4
.talk 28618
..fpath Light's Breach
step
goto 32.0,74.5
.talk 29137
..turnin 12792
step
goto 32,75.6
.talk 29733
..accept 12859
step
goto 32.2,75.7
.talk 29687
..accept 12902
step
goto 32.2,75.7
.talk 29690
..accept 12861
step
goto 34.9,83.9
.click Orders From Drakuru##8032
..turnin 12902
..accept 12883
step
goto 34.9,81
.from Drakuru Berserker##29656+, Drakuru Prophet##29697+, Drakuru Blood Drinker##29654+
.get Drakuru "Lock Openers"|n
.' Use your Drakuru "Lock Openers" next to Captured Rageclaws |use Drakuru "Lock Opener"##41161
.' Free 8 Captured Rageclaws |q 12861/1
.' Use your Rageclaw Fire Extinguisher next to burning huts |use Rageclaw Fire Extinguisher##41131
.' Douse 15 Hut Fires |q 12859/1
|modelnpc Captured Rageclaw##29686
step
goto 32.2,75.7
.talk 29687
..turnin 12883
..accept 12884
..accept 12894
step
goto 32.2,75.7
.talk 29690
..turnin 12861
step
goto 32,75.6
.talk 29733
..turnin 12859
step
goto 14,73.6
.talk 28615
..fpath Ebon Watch
step
goto 14.1,73.8
.talk 28518
..turnin 12884
..accept 12630
step
.from Withered Troll##28519+
.collect 1 Writhing Choker##38673|n
.use Writhing Choker##38673
..accept 12633 |or
.'- OR -
.collect 1 Unliving Choker##38660|n
.use Unliving Choker##38660
..accept 12631 |or
step
goto 14.1,73.8
.talk 28518
..turnin 12630
..turnin 12633 |only if havequest(12633)
..turnin 12631 |only if havequest(12631)
step
goto 14.1,73.8
.talk 28518
..accept 12638 |only if completedq(12633)
..accept 12637 |only if completedq(12631) 
step
goto 14.3,74
.talk 28532
..accept 12795
.' Tell her Stefan said she would demonstrate the item's purpose
.' Expose the Choker's Purpose |q 12637/1
|only if havequest(12637)
step
goto 14.3,74
.talk 28532
..accept 12795
.' Tell her Stefan said she would demonstrate the item's purpose
.' Expose the Choker's Purpose |q 12638/1
|only if havequest(12638)
step
goto 14.1,73.8
.talk 28518
..turnin 12638 |only if havequest(12638)
..turnin 12637 |only if havequest(12637)
step
goto 14.1,73.8
.talk 28518
..accept 12643 |only if completedq(12638)
..accept 12629 |only if completedq(12637)
step
goto 19.9,73.5
.kill Putrid Abomination##28564+ |n
.get 5 Putrid Abomination Guts|q 12643/1 |orl
.clicknpc Gooey Ghoul Drool##29856
.get 5 Gooey Ghoul Drool|q 12643/2
|only if havequest(12643)
step
goto 19.9,73.5
.kill Putrid Abomination##28564+ |n
.get 5 Putrid Abomination Guts|q 12629/1 |or
.clicknpc Gooey Ghoul Drool##29856 
.get 5 Gooey Ghoul Drool|q 12629/2
|only if havequest(12629)
step
goto 14.1,73.8
.talk 28518
..turnin 12643 |only if havequest(12643)
..turnin 12629 |only if havequest(12629)
step
goto 14.1,73.8
.talk 28518
..accept 12648 |only if completedq(12629)
..accept 12649 |only if completedq(12643)
step
goto 19.9,75.5
.' Use the Ensorcelled Choker to wear a ghoul costume |use Ensorcelled Choker##38699
.talk 28589
..accept 12652
..' Buy a Bitter Plasma from Gristlegut
step
goto 20.5,74.8
.' Use your Bowels and Brains Bowel near Decaying Ghouls |use Bowels and Brains Bowl##38701
.' Feed 10 Decaying Ghouls |q 12652/1 |modelnpc Decaying Ghoul##28565 
|tip Be careful of the Blightguards, they will attack you through your disguise. |modelnpc Blightguard##28603
step
goto 19.9,75.5
.talk 28589
..turnin 12652
step
goto 14.1,73.8
.talk 28518
..turnin 12649 |only if havequest(12649)
..turnin 12648 |only if havequest(12648)
..accept 12661
step
goto 25.3,64
.talk 29689
..turnin 12894
..accept 12903
step
goto 25.3,64
.talk 29688
..accept 12901
step
goto 19.4,61.4
.click Scourge Scrap Metal##8040
.get 10 Scourge Scrap Metal|q 12901/1
|model Scourge Scrap Metal##7974
|model Scourge Scrap Metal##7975
step
goto 17.6,57.6
.' Find Gerk |q 12903/2
.talk 29455
..accept 12904
step
goto 15.7,59.4
.' Find Burr |q 12903/3 |tip Laying on a metal table.
|modelnpc Burr##29454
step
goto 16.9,58.7
' |from Vargul Deathwaker##29449+, Vargul Runelord##29450+, Vargul Slayer##29451+
.kill 15 Vargul |q 12904/1
step
goto 17.6,57.6
.talk 29455
..turnin 12904
step
goto 19.7,56.4
.talk 29647
..accept 12912
step
goto 25.1,51.6
.' Find Crusader Dargath |q 12903/1 |tip Standing on a huge platform, with a spiral wind flowing around him.
|modelnpc Crusader Dargath##29454
step
goto 28.4,44.9
.' Use your Ensorcelled Choker to become a ghoul |use Ensorcelled Choker##38699
.' Stand on this green circle
.' Get teleported up to Overlord Drakuru |goto 28.1,45.2,0.2 |noway |c
step
goto 27.1,46.2
.talk 28503
..accept 12664 |only if not completedq(12238)
..accept 12663 |only if completedq(12238)
step
goto 29.9,47.8
.talk 28666
.' Go on the tour of Zul'Drak
.' Complete the tour of Zul'Drak |q 12664/1
step
goto 27.1,46.2
.talk 28503
..turnin 12664
.' Complete Overlord Drakuru's task |q 12661/1
step
goto 28.4,44.9
.' Stand on this green circle
.' Teleport back down to the ground |goto 28.0,44.9,0.2 |noway |c
step
'Use Stefan's Horn in your bags |use Stefan's Horn##41390
.talk 28518
..turnin 12661
..accept 12669
step
goto 28.4,44.9
.' Stand on this green circle
.' Get teleported up to Overlord Drakuru |goto 28.1,45.2,0.2 |noway |c
step
goto 27.1,46.2
.talk 28503
..accept 12673
step
goto 28.4,44.9
.' Stand on this green circle
.' Teleport back down to the ground |goto 28.0,44.9,0.2 |noway |c
step
goto 27.2,45.1
.' Use your Scepter of Suggestion on Blight Geists |use Scepter of Suggestion##39157
.' Use the Harvest Blight Crystal ability near Crystallized Blight |petaction Harvest Blight Crystal |tip The Crystallized Blight look like orange crystals on the ground around this area.
.' Follow the Blight Geists back to the teleport pad
.' Collect 7 Blight Crystals |q 12673/1
step
goto 26.8,47
.' Use your Diluting Additive next to the big cauldron 5 times |use Diluting Additive##39154 |tip It's a big cauldron on the back of this cart vehicle thing.  Wait about a minute and use your Diluting Additive next to the cauldron again.  Keep repeating this process.
.' Dilute the Cauldron 5 times |q 12669/2
step
goto 28.4,44.9
.' Stand on this green circle
.' Get teleported up to Overlord Drakuru |goto 28.1,45.2,0.2 |noway |c
step
goto 27.1,46.2
.talk 28503
..turnin 12673
.' Complete Drakuru's task |q 12669/1
step
goto 28.4,44.9
.' Stand on this green circle
.' Teleport back down to the ground |goto 28.0,44.9,0.2 |noway |c
step
'Use Stefan's Horn in your bags |use Stefan's Horn##41390
.talk 28518
..turnin 12669
..accept 12677
step
goto 28.4,44.9
.' Stand on this green circle
.' Get teleported up to Overlord Drakuru |goto 28.1,45.2,0.2 |noway |c
step
goto 27.1,46.2
.talk 28503
..accept 12686
step
goto 27.1,43.9
.click Harvested Blight Crystal##285
.get 5 Harvested Blight Crystal|q 12677/2
step
goto 28.4,44.9
.' Stand on this green circle
.' Teleport back down to the ground |goto 28.0,44.9,0.2 |noway |c
step
goto 29.7,49.6
.' Use your Scepter of Empowerment on a Servant of Drakaru |use Scepter of Empowerment##39206
.' Take control of a Servant of Drakuru
.' Use the abilities on your Servant of Drakaru's pet bar to fight Darmuk at [30.4,51.5] |n |tip He's a huge undead mob walking around on this platform.
.' Kill Darmuk |q 12686/1
|modelnpc Servant of Drakuru##28802
|modelnpc Darmuk##28793
step
goto 28.4,44.9
.' Stand on this green circle
.' Get teleported up to Overlord Drakuru |goto 28.1,45.2,0.2 |noway |c
step
goto 27.1,46.2
.talk 28503
..turnin 12686
step
goto 28.4,44.9
.' Stand on this green circle
.' Teleport back down to the ground |goto 28.0,44.9,0.2 |noway |c
step
'Use Stefan's Horn in your bags |use Stefan's Horn##41390
.talk 28518
..turnin 12677
..accept 12676
step
goto 28.4,44.9
.' Stand on this green circle
.' Get teleported up to Overlord Drakuru |goto 28.1,45.2,0.2 |noway |c
step
goto 27.1,46.2
.talk 28503
..accept 12690
step
goto 28.4,44.9
.' Stand on this green circle
.' Teleport back down to the ground |goto 28.0,44.9,0.2 |noway |c
step
goto 32.1,40.6
.' Use your Scepter of Command on a Bloated Abomination |use Scepter of Command##39238
.' Take control of the Bloated Abomination
.' Go up the hill
.' Send your Bloated Abomination into groups of Drakkari Skullcrushers
.' Use the Burst at the Seams ability on your pet hotbar |petaction Burst at the Seams
.' Kill 60 Drakkari Skullcrushers |q 12690/1
.' Lure 3 Drakkari Chieftains |q 12690/2
|modelnpc Bloated Abomination##28843
|modelnpc Drakkari Skullcrusher##28844
|modelnpc Drakkari Chieftain##28873
step
goto 30.6,45.3
.' Use your Explosive Charges next to Scourgewagons |use Explosive Charges##39165 |tip They look like small catapult carts.
.' Destroy 5 Scourgewagons |q 12676/1
step
goto 28.4,44.9
.' Stand on this green circle
.' Get teleported up to Overlord Drakuru |goto 28.1,45.2,0.2 |noway |c
step
goto 27.1,46.2
.talk 28503
..turnin 12690
..accept 12710
.' Complete Drakuru's task |q 12676/2
step
goto 28.4,44.9
.' Stand on this blue circle on the small platform above the green circle
.' Teleport up to Drakuru's upper chamber |goto 27.4,42.5,0.2 |noway |c
step
goto 27.2,42.3
.click Musty Coffin##7225 |tip Click on the Coffin again after he says "Ahh... there you are. The Master told us you'd be arriving soon."  This will allow you to complete the exploration without doing the tour.
.' Explore Drakuru's upper chamber |q 12710/1
step
goto 28.4,44.9|n
.' Stand on this green circle to go to the bottom level of Voltarus |goto 28.1,45.2,0.2 |noway |c
step
goto 27.1,46.2
.talk 28503
..turnin 12710
.' Learn Drakuru's secret |q 12676/3
step
goto 28.4,44.9
.' Stand on this green circle
.' Teleport back down to the ground |goto 28.0,44.9,0.2 |noway |c
step
'Use Stefan's Horn in your bags |use Stefan's Horn##41390
.talk 28518
..turnin 12676
step
goto 25.3,64
.talk 29688
..turnin 12901
..turnin 12912
..accept 12914
step
goto 25.3,64
.talk 29689
..turnin 12903
step
ding 76
step
goto 23.9,62.4
.from Banshee Soulclaimer##29646+ |tip They are flying around in the air.
.get 6 Banshee Essence|q 12914/1
step
goto 15.9,71.5
.from Icetouched Earthrager##29436+
.get 6 Diatomaceous Earth |q 12914/2
step
goto 25.3,64
.talk 29688
..turnin 12914
..accept 12916
step
goto 19.7,56.4
.click the Scourge Enclosure |tip It's Gymer's huge cage.
.' Blow Up the Scourge Enclosure |q 12916/1
step
goto 19.7,56.4
.talk 29647
..turnin 12916
step
goto 39.4,67
.talk 28059
..turnin 12795
..accept 12503
..accept 12740
step
goto 40.8,66.3
.talk 28791
home The Argent Stand
step
goto 40.5,65.6
.talk 28062
..accept 12565
step
goto 38.4,67.1
' |from Rampaging Geist##28026+, Sky Terror##28246+, Rotting Abomination##28023+
.' Destroy 10 Scourge at The Argent Stand |q 12503/1
.' Use your Crusader Parachute on Argent Shieldmen and Argent Crusaders |use Crusader Parachute##39615 |tip It won't work on all of them.
.' Equip 10 Argent forces with a parachute |q 12740/1
.collect 10 Drakkari Offerings##38551 |q 12565
step
goto 36.7,72.6
.talk 190535
..turnin 12565
step
goto 39.4,67
.talk 28059
..turnin 12503
..turnin 12740
step
goto 40.3,66.6
.talk 28039
..accept 12505
..accept 12596
..accept 12792
step
goto 40.5,65.6
.talk 28062
..accept 12506
step
goto 35.6,52.2
.talk 28045
..accept 12799
step
goto 35,52.1
.talk 28205
..accept 12557
step
'Go into the 2 rooms next to you:
.' They are items on shelves that you can click
.click Muddy Mire Maggot##6484 |q 12557/1
.click Withered Batwing##7924 |q 12557/2
.click Chilled Serpent Mucus##228 |q 12557/4
.click Amberseed##7918 |q 12557/3
step
goto 35,52.1
.talk 28205
..turnin 12557
.' Complete Alchemist Finklestein's task |q 12596/4
step
goto 36.6,60.5
.from Lost Drakkari Spirit##29129+
.get 5 Ancient Ectoplasm |q 12799/1
step
goto 35.6,52.2
.talk 28045
..turnin 12799
..accept 12609
..accept 12610
step
goto 36.1,51.1
.from Trapdoor Crawler##28221+
.get 7 Fresh Spider Ichor |q 12609/1
.from Zul'Drak Bat##28233+
.get 7 Unblemished Bat Wing |q 12610/1
step
goto 35.6,52.2
.talk 28045
..turnin 12609
..turnin 12610
step
goto 40.4,48.2
.talk 28056
..turnin 12505
..accept 12504
step
goto 40.4,48.2
.talk 28099
..accept 12508
step
goto 40.4,47
.talk 28041
.' Tell 10 Argent Soldiers told to report back to the sergeant |q 12504/1
' |from Champion of Sseratus##28036+, Priest of Sseratus##28035+
.kill 10 Followers of Sseratus |q 12508/1
.get Strange Mojo|n
.click the Strange Mojo|use Strange Mojo##38321
..accept 12507
step
'Fly inside the building to 40.3,39.3 |goto 40.3,39.3
.' Investigate the Main building at the Altar of Sseratus |q 12506/1
step
goto 40.4,48.2
.talk 28056
..turnin 12504
step
goto 40.4,48.2
.talk 28099
..turnin 12508
step
goto 40.5,65.6
.talk 28062
..turnin 12506
..turnin 12507
..accept 12510
step
goto 40.2,68.9
.talk 28309
..accept 12562
step
goto 40.2,73.6
.kill 10 Drakkari Water Binder##28303+ |q 12562/1
.from Crazed Water Spirit##16570+
.collect 3 Water Elemental Links##38323 |n
.' Use the Water Elemental Links to create Tethers to the Plane of Water |use Water Elemental Link##38323
.' Use the Tethers to the Plane of Water |use Tether to the Plane of Water##38324
.from Watery Lord##28118+
.get 3 Precious Elemental Fluids |q 12510/1
step
goto 40.2,68.9
.talk 28309
..turnin 12562
step
goto 40.5,65.6
.talk 28062
..turnin 12510
..accept 12514
step
goto 41.3,65.1
.talk 28204
..accept 12527
step
goto 41.4,57.4
.clicknpc Zul'Drak Rat##28202
.collect 25 Zul'Drak Rat##38380 |q 12527 |n
.' Use the Zul'Drak Rats on Lurking Basilisks |use Zul'Drak Rat##38380
.clicknpc Gorged Lurking Basilisk##28203
.get 5 Basilisk Crystals|q 12527/1
.click Muddlecap Fungus##7916
.get 10 Muddlecap Fungus|q 12514/1
|modelnpc Lurking Basilisk##28145
step
goto 40.5,65.6
.talk 28062
..turnin 12514
..accept 12516
step
goto 35,52.1
.talk 28205
..turnin 12527
step
goto 40.2,42.6
.' Use your Modified Mojo on the Prophet of Sseratus |use Modified Mojo##38332 |tip He's a huge green snake.
.kill Muddled Prophet of Sseratus##28151 |q 12516/1
step
'Hearth to The Argent Stand |goto 40.8,66.2,0.5 |use hearthstone##6948 |noway |c
step
goto 40.5,65.6
.talk 28062
..turnin 12516
..accept 12623
step
goto 48.2,63.9
.talk 28043
..accept 12599
step
goto 46.9,61.4
.click Dead Thornwood##7938
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
.click the Mature Water-Poppy plant##7935
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
goto 58.7,72.5
.talk 28125
..accept 12512
step
goto 53.6,75
.' Use your Crusader's Bandage on Crusader Lamoof |use Crusader's Bandage##38330 |tip Laying on the ground inside this building.
.' Escort Crusader Lamoof back to Dr. Rogers at [58.1,72.4] |n
.' Save Crusader Lamoof |q 12512/2
|modelnpc Crusader Lamoof##28141
step
goto 49.4,74.7
.' Use your Crusader's Bandage on Crusader Josephine |use Crusader's Bandage##38330 |tip Laying on the ground inside this building.
.' Escort Crusader Josephine back to Dr. Rogers at [58.1,72.4] |n
.' Save Crusader Josephine |q 12512/3
|modelnpc Crusader Josephine##28143
step
goto 53.4,68.7
.' Use your High Impact Grenade next to Nerubian Tunnels |use High Impact Grenade##38574 |tip They look like squarish pyramid dirt mounds around this area.
.' Seal 5 Nerubian Tunnels |q 12598/1
step
goto 50.7,69.9
.' Use your Crusader's Bandage on Crusader Jonathan |use Crusader's Bandage##38330 |tip Laying on the ground inside this building.
.' Escort Crusader Jonathan back to Dr. Rogers at [58.1,72.4] |n
.' Save Crusader Jonathan |q 12512/1
|modelnpc Crusader Jonathan##28136
step
goto 58.1,72.4
.talk 28044
..turnin 12598
..accept 12606
.' Complete Captain Rupert's Task |q 12596/2
step
goto 58.7,72.5
.talk 28125
..turnin 12512
step
goto 58.1,72
.talk 28283
..accept 12552
step
goto 58.3,72
.talk 28284
..accept 12553
step
goto 57.6,75.2
.kill 8 Hath'ar Necromagus##28257+ |q 12552/1
.from Hath'ar Skimmer##28258+
.get 5 Intact Skimmer Spinneret |q 12553/1
step
goto 58.1,72
.talk 28283
..turnin 12552
step
goto 58.3,72
.talk 28284
..turnin 12553
..accept 12583
step
goto 58.1,72.4 |tip Standing in the entrance to this building.
.talk 28044
..accept 12584
step
goto 56.7,69.7
.' Attack the Nerubian Cocoons |tip They look like squirming big white cocoons on the ground around this area.
.' Free 3 Captive Footmen |q 12606/1
step
goto 48.8,75.6
.click Crashed Plague Sprayer##7937
.get Plague Sprayer Parts|q 12583/1
step
goto 58.1,72.4
.talk 28044
..turnin 12606
step
goto 58.3,72
.talk 28284
..turnin 12583
..accept 12555
step
goto 58.3,74.3
.' Use your Tangled Skein Thrower on Plague Sprayers |use Tangled Skein Thrower##38515 |tip They hover around in this area.
.' Web and destroy 5 Plague Sprayers |q 12555/1
|modelnpc Plague Sprayer##28274
step
goto 61,78.6
.click Chunk of Saronite##7836
.get 10 Chunk of Saronite|q 12584/1
step
goto 58.3,72
.talk 28284
..turnin 12555
step
'Make sure you have 10 Drakkari Offerings in your bags |collect 10 Drakkari Offerings |c |q 12565 |future
.' If not, grind around this area until you do.
step
'Hearth to The Argent Stand |goto 40.8,66.2,0.5 |use hearthstone##6948 |noway |c
step
goto 41,67
.talk 28244
..turnin 12584
step
goto 40.3,66.6
.talk 28039
..turnin 12596
step
|fly Zim'Torga
step
goto 59.5,58.1
.talk 28479
..turnin 12623
..accept 12627
..accept 12615
step
goto 59.4,57.2
.talk 190602
..turnin 12615
step
goto Zul'Drak 59.3,57.3
.talk 29583
home Zim'Torga
step
goto 59.2,56.2
.talk 28484
..accept 12622
step
goto 57.6,61.7
.click Purple Cauldron##7411
.' Disturb the Purple Cauldron |q 12627/3
step
goto 55.7,64.3
.click Green Cauldron##7410
.' Disturb the Green Cauldron |q 12627/2
step
goto 57.2,65.3
.click Blue Cauldron##7407
.' Disturb the Blue Cauldron |q 12627/1
step
goto 58.8,62.7
.click Red Cauldron##7408
.' Disturb the Red Cauldron |q 12627/4
step
goto 57.4,62.6
.from Jin'Alai Medicine Man##28504+, Jin'Alai Warrior##28388+
.' Kill Chulo the Mad, Gawanil, and Kutube'sa when they spawn.
.from Kutube'sa##28494
.click Treasure of Kutube'sa##2450
.get 1 Treasure of Kutube'sa |q 12622/1
.from Gawanil##28495
.click Treasure of Gawanil##2450
.get 1 Treasure of Gawanil|q 12622/2
.from Chulo the Mad##28496
.click Treasure of Chulo the Mad##2450
.get 1 Treasure of Chulo the Mad|q 12622/3
step
goto 59.5,58.1
.talk 28479
..turnin 12627
..accept 12628
step
goto 60,57.9
.talk 28527
..accept 12635
step
goto 59.2,56.2
.talk 28484
..turnin 12622
..accept 12640
step
goto 59.4,56.4
.talk 28480
..accept 12639
step
goto 63.8,70.5
.talk 28401
..turnin 12628
..accept 12632
step
goto 62.9,70.6
.click the Har'koan Relics |tip The Har'koan Relics look like upright stone tablets on the ground around this area.
.get 10 Har'koan Relic |q 12635/1
.from Cursed Offspring of Har'koa##28404+
.' Use your Whisker of Har'koa on their corpses |use Whisker of Har'koa##38676
.' Resurrect 7 Cursed Offsprings of Har'koa |q 12632/1
step
goto 63.8,70.5
.talk 28401
..turnin 12632
..accept 12642
step
goto 60,57.9
.talk 28527
..turnin 12635
..accept 12650
..accept 13549
step
goto 59.5,58.1
.talk 28479
..accept 12655
step
goto 56.4,52.8
.from Frozen Earth##28411+
.get 7 Essence of the Frozen Earth|q 12639/1
.' Fight the Elemental Rifts |tip The Elemental Rifts look like swirling lightning clouds around this area.
.' Seal 7 Elemental Rifts |q 12640/1
.collect 10 Drakkari Offerings##38551|q 12655
step
goto 54,49.1
.from Priest of Rhunok##28417+
.get 7 Rhunokian Artifact |q 12650/1
step
goto 53.4,39.2
.talk 28561
..turnin 12642
..accept 12646
step
goto 54,47.3
.from Prophet of Rhunok##28442
.get Arctic Bear God Mojo|q 12646/1
step
goto 53.4,39.2
.talk 28561
..turnin 12646
..accept 12647
step
goto 53.4,35.9
.from Rhunok's Tormentor##28575
.collect 1 Tormentor's Incense##38696 |q 12647
step
goto 53.5,34.5
.' Use your Tormentor's Incense next to Rhunok's body |use Tormentor's Incense##38696
.kill Rhunok##28416 |q 12647/1
step
goto 53.4,39.2
.talk 28561
..turnin 12647
..accept 12653
step
goto 59.3,44.5
.talk 190657
..turnin 12655
step
goto 59.2,56.2
.talk 28484
..turnin 12640
..accept 12659
step
goto 59.4,56.4
.talk 28480
..turnin 12639
..accept 12662
step
goto 60,57.9
.talk 28527
..turnin 12650
step
goto 63.8,70.5
.talk 28401
..turnin 12653
..accept 12665
step
goto 63.8,70.5
.talk 28401
.' Ask to call one of her children to carry you into the Altar of Quetz'lun
.' Reveal Quetz'lun's fate |q 12665/1
step
'When you return to 63.8,70.5 |goto 63.8,70.5
.talk 28401
..turnin 12665
..accept 12666
step
goto 64.1,69.9
.from Har'koan Subduer##28403+, Claw of Har'koa##28402+
.get 8 Sacred Adornment |q 12666/1
step
goto 63.8,70.5
.talk 28401
..turnin 12666
..accept 12667
step
goto 74.3,66.7
.' Use To'kini's Blowgun on Frost Leopards and Icepaw Bears around this area |use To'kini's Blowgun##44890
.click the mobs when they get knocked out and lift their tail to check if they are male or female
.' Recover 3 Female Frost Leopards |q 13549/1
.' Recover 3 Female Icepaw Bears |q 13549/2
|modelnpc Frost Leopard##29327
|modelnpc Icepaw Bear##29319
step
goto 75.4,58.6
.talk 28030
..turnin 12667
..accept 12672
step
goto 74.6,59.8
.click Underworld Power Fragment##6573
.get 10 Underworld Power Fragment|q 12672/1
step
goto 75.4,58.6
.talk 28030
..turnin 12672
..accept 12668
step
goto 73.9,58.7
' |from Quetz'lun Worshipper##28747+, Serpent-Touched Berserker##28748+
.kill 12 Trolls near a Soul Font |q 12668/1 |tip Soul Fonts look like altars all around this whole area.
step
goto 75.4,58.6
.talk 28030
..turnin 12668
..accept 12674
step
ding 77
step
goto 74.5,57.4
.' Use Quetz'lun's Hexxing Stick on High Priest Mu'funu |use Quetz'lun's Hexxing Stick##39158
.from High Priest Mu'funu##28752
.' Hex High Priest Mu'funu at death |q 12674/1
step
goto 73.5,60.8
.' Use Quetz'lun's Hexxing Stick on High Priest Tua-Tua |use Quetz'lun's Hexxing Stick##39158
.from High Priest Tua-Tua##28754
.' Hex High Priest Tua-Tua at death |q 12674/2
step
goto 76,54.9
.' Use Quetz'lun's Hexxing Stick on High Priest Hawinni |use Quetz'lun's Hexxing Stick##39158
.from High Priest Hawinni##28756
.' Hex High Priest Hawinni at death |q 12674/3
step
goto 75.4,58.6
.talk 28030
..turnin 12674
..accept 12675
step
goto 63.8,70.5
.talk 28401
..turnin 12675
..accept 12684
step
goto 64.2,52.6
.click Heb'Jin's Drum |tip It's a big drum in the middle of the road.
.' Use your Bat Net on Heb'Jin's Bat to pin it to the ground |use Bat Net##39041
.kill Heb'Jin##28636 |q 12662/1
step
goto 64.6,57
.from Heb'Drakkar Headhunter##28600+, Heb'Drakkar Striker##28465+
.' Use Ahunae's Knife on their corpses to scalp them |use Ahunae's Knife##38731
.' Scalp 10 Heb'Drakkar trolls |q 12659/1
step
goto 70.5,50.4
.from Blood of Mam'toth##28779+
.get 7 Blood of Mam'toth |q 12684/1
step
'Hearth to Zim'Torga |goto Zul'Drak,59.3,57.2,0.5 |use hearthstone##6948 |noway |c
step
goto 59.4,56.4
.talk 28480
..turnin 12662
step
goto 59.2,56.2
.talk 28484
..turnin 12659
step
goto 60,57.9
.talk 28527
..turnin 13549
step
goto 63.8,70.5
.talk 28401
..turnin 12684
..accept 12685
step
goto Zul'Drak,75.2,58.6
.' Use Quetz'lun's Ritual next to Quetz'lun's body |use Quetz'lun's Ritual##39187
.kill Drained Prophet of Quetz'lun##28795 |q 12685/1
step
goto 59.5,58.1
.talk 28479
..turnin 12685
step
goto 60,57.9
.talk 28527
..accept 12709
step
goto 60.3,57.8
.talk 28401 |tip He may take a couple minutes to appear.
..accept 12712
step
goto 59.4,56.4
.talk 28480
..accept 12708
step
goto 59.2,56.2
.talk 28484
..accept 12707
step
goto 69.5,41.1
.' Use your Medallion of Mam'toth on Enraged Mammoths to ride them |use Medallion of Mam'toth##39268
.' Use the abilities on your mammoth hotbar
.' Trample 12 Mam'toth Disciples to death |q 12707/1
step
goto 68.2,35.3
.from Drek'Maz##28918 |tip Standing inside this building.
.collect 1 Drek'Maz's Tiki##39315 |q 12712
step
goto 67.9,32.8
.from Yara##28917 |tip Standing inside this building.
.collect 1 Yara's Sword##39313 |q 12712
step
goto 63.8,37.2
.from Tiri##28916 |tip Standing inside this building.
.collect 1 Tiri's Magical Incantation##39316 |q 12712
step
.click Tiri's Magical Incantation in your bags |use Tiri's Magical Incantation##39316
.collect 1 Tiki Dervish Ceremony##39314|q 12712
step
goto 69.2,35.9
.from Enchanted Tiki Warrior##28882+
.' Destroy 12 Enchanted Tiki Warriors |q 12708/1
.click the Zol'Maz Stronghold Caches |tip The Zol'Maz Stronghold Caches look like bamboo boxes on the ground around this area.
.get 12 Zol'Maz Stronghold Cache |q 12709/1
step
goto 66.2,33.4
.' Use your Tiki Dervish Ceremony in front of this huge metal gate |use Tiki Dervish Ceremony##39314
.from Warlord Zol'Maz##28902
.get Key of Warlord Zol'Maz |q 12712/1
step
|fly Zim'Torga
step
goto 60.3,57.8
.talk 28401
..turnin 12712
..accept 12721
step
goto 60,57.9
.talk 28527
..turnin 12709
step
goto 59.4,56.4
.talk 28480
..turnin 12708
step
goto 59.2,56.2
.talk 28484
..turnin 12707
step
|fly Gundrak
step
goto 78.1,24.2
.click the 4 Akali Chain Anchors
.' Unfetter Akali from his chains |q 12721/1
|model Akali Chain Anchor##7936
step
|fly Zim'Torga
step
goto 59.5,58.1
.talk 28479
..turnin 12721
step
|fly Bor'gorok Outpost
step
'Go north to Sholazar Basin |goto Sholazar Basin |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Northrend 70-80\\Sholazar Basin (77-78)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Northrend 70-80\\The Storm Peaks (78-80)
startlevel 77.39
dynamic on
step
goto Sholazar Basin,27.2,59.9
.talk 28032
..accept 12524
step
goto Sholazar Basin 26.8,59.2
.talk 28038
home Nesingwary Base Camp
step
goto 26.9,58.9
.talk 28497
..accept 12624
step
goto 25.4,58.5
.talk 28033
..accept 12522
step
goto 38.7,56.7
.click Flying Machine Engine##304
.get Flying Machine Engine|q 12522/1
step
goto 35.5,47.4
.talk 28787
..accept 12688
.' Escort Engineer Helice out of Swindlegrin's Dig |q 12688/1
step
goto 37.4,46.1
' |from Venture Co. Excavator##28123+, Venture Co. Ruffian##28124+
.kill 15 Venture Company member |q 12524/1
.get Golden Engagement Ring |q 12624/1
step
goto 27.2,59.9
.talk 28032
..turnin 12524
..accept 12525
step
goto 26.9,58.9
.talk 28497
..turnin 12624
step
goto 27.1,58.6
.talk 27986
..turnin 12688
step
goto 25.4,58.5
.talk 28033
..turnin 12522
..accept 12523
step
goto 32.7,46.9
.click Venture Co. Spare Parts##6868
.get 7 Venture Co. Spare Parts|q 12523/1
|model Venture Co. Spare Parts##449
|model Venture Co. Spare Parts##6867
step
goto 35.8,50.3
.kill Meatpie##28188 |q 12525/2 |tip He walks up and down this platform, and around this area.
.kill Foreman Swindlegrin##28186 |q 12525/1 |tip He walks around on top of this platform.
step
goto 27.2,59.9
.talk 28032
..turnin 12525
step
goto 25.4,58.5
.talk 28033
..turnin 12523
step
goto 25.4,58.5
.talk 28266
..accept 12696
step
goto 25.3,58.5
.talk 28037
..fpath Nesingwary Base Camp
step
goto 26.7,59
.talk 28031
..accept 12549
step
goto 27.1,58.6
.talk 27986
..accept 12520
step
goto 27.1,59.9
.talk 28328
..accept 12589
step
goto 27.1,59.9
'Use your RJR Rifle on the gnome close to you with an apple on his head |use RJR Rifle##38573
.' Keep using the rifle until you hit the apple
.' Shoot the apple on Lucky Wilhelm's Head |q 12589/1
|modelnpc Lucky Wilhelm##28054
step
goto 27.1,59.9
.talk 28328
..turnin 12589
..accept 12592
step
goto 28,56
.kill 15 Dreadsaber##28001+ |q 12549/1
.kill 15 Shardhorn Rhino##28009+ |q 12520/1
.kill 60 Game Animals |q 12592/1
.' Another spot you can find Rhino's and Dreadsabers is at [38.2,45.3]
step
goto 26.7,59
.talk 28031
..turnin 12549
..accept 12550
step
goto 27.1,58.6
.talk 27986
..turnin 12520
..accept 12526
step
goto 26.7,59.5
.talk 28046
..accept 12804
step
goto 26.8,60.1
.talk 29157
..accept 12634
step
goto 27.1,59.9
.talk 28328
..turnin 12592
step
goto 27.2,59.9
.talk 28032
..accept 12551
step
goto 25.6,66.5
.talk 28191
..turnin 12526
..accept 12543
step
goto 29.5,66.4
.from Longneck Grazer##28129+
.get 5 Longneck Grazer Steak|q 12804/1
step
goto 29,62.5
.kill 15 Mangal Crocolisk##28002+ |q 12551/1
step
goto 36.3,65.8
.from Emperor Cobra##28011+
.get 5 Intact Cobra Fang|q 12543/1
step
goto 37.6,61.8
.click Sturdy Vine##8129
.click the fruit that falls to the ground or talk to the dwarf that falls
.get Orange|q 12634/1
.get 2 Banana Bunch|q 12634/2
.get Papaya|q 12634/3
step
goto 50,61.5
.talk 28746
..turnin 12696
..accept 12699
..accept 12803
step
goto 50.5,62.1
.talk 28568
..accept 12654
step
goto 48.6,64
.click Raised Mud##20 |tip You may have to click many Raised Muds to get the keys.
.get Vic's Keys |q 12699/1
step
goto 50,61.5
.talk 28746
..turnin 12699
..accept 12671
step
goto 50,61.5
'You go flying in a plane
.' Use the abilities on your hotbar to fight the bats
.' The engine blows up and you have to fly back to Pilot Vic at [50.1,61.4] |n
.' Land the plane inside the blue crystal circle
.' Use the Land Flying Machine ability on your hotbar to land the plane |petaction Land Flying Machine
.' Complete the Reconnaissance Flight |q 12671/1
step
goto 50,61.5
.talk 28746
..turnin 12671
step
goto 39.9,43.7
.click Dreadsaber Track##8298
.' Identify 3 Shango Tracks |q 12550/1
step
goto 26.7,59
.talk 28031
..turnin 12550
..accept 12558
step
goto 26.7,59.5
.talk 28046
..turnin 12804
step
goto 26.8,60.1
.talk 29157
..turnin 12634
..accept 12644
step
goto 26.7,60
.talk 28566
..'Tell him you are ready to start the distillation process
.click the items on the ground or on the machine that he yells at you during the process, it's random
.click the barrel on the ground when the process is done
.get Thunderbrew's Jungle Punch |q 12644/1
step
goto 26.8,60.1
.talk 29157
..turnin 12644
..accept 12645
step
goto 27.2,59.9
.talk 28032
..turnin 12551
..accept 12560
step
goto 27.4,59.4
.' Use your Jungle Punch Sample on Hadrius Harlowe |use Jungle Punch Sample##38697
.' Complete Hadrius' taste test |q 12645/2
|modelnpc Hadrius Harlowe##28047
step
goto 27.1,58.6
.' Use your Jungle Punch Sample on Hemet Nesingwary |use Jungle Punch Sample##38697
.' Complete Hemet's taste test |q 12645/1
|modelnpc Hemet Nesingwary##27986
step
goto 25.6,66.5
.talk 28191
..turnin 12543
..accept 12544
step
goto 26.1,71.6
.' Use Soo-rahm's Incense next to the Offering Bowl |use Soo-rahm's Incense##38519 |tip It's a small bowl in front of the skull of these bones.
.' Reveal the Location of Farunn |q 12544/1
step
goto 27.1,58.6
.talk 27986
..turnin 12544
..accept 12556
step
goto 33.4,34.7
.from Shango##28297
.get Shango's Pelt |q 12558/1
step
goto 34.7,41.5
.click Sandfern##8452
.get 5 Sandfern|q 12560/1
step
goto 47.4,43.9
.from Farunn##28288
.get Farunn's Horn |q 12556/1
step
goto 50.5,62.1
.' Use your Jungle Punch Sample on Tamara Wobblesprocket |use Jungle Punch Sample##38697 |tip Standing in front of a tent.
.' Complete Tamara's taste test |q 12645/3
|modelnpc Tamara Wobblesprocket##28568
step
|fly Nesingwary Base Camp
step
goto 27.1,58.6
.talk 27986
..turnin 12556
step
goto 26.7,59
.talk 28031
..turnin 12558
step
goto 26.8,60.1
.talk 29157
..turnin 12645
step
goto 27.2,59.9
.talk 28032
..turnin 12560
..accept 12569
step
|fly River's Heart
step
goto 46.3,63.4
.' Use your Sandfern Disguise next to this big log laying halfway in the water |use Sandfern Disguise##38564
.from Bushwhacker##28317
.get Bushwhacker's Jaw |q 12569/1
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
|modelnpc Goreget the Gorilla Hunter##28214
step
goto 57.5,73.3
.kill 8 Hardknuckle Forager##28098+ |q 12529/1
step
goto 61.1,71.7
.kill 6 Hardknuckle Charger##28096+ |q 12529/2
step
goto 66.9,73.2
.' Use your Softknuckle Poker on Softknuckles |use Softknuckle Poker##38467 |tip Softknuckles are baby gorillas.
.' A Hardknuckle Matriarch will spawn eventually
.kill Hardknuckle Matriarch##28213 |q 12530/1
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
.kill 6 Sapphire Hive Wasp##28086+ |q 12533/1
.kill 9 Sapphire Hive Drone##28085+ |q 12533/2
step
goto 59.4,79.1|n
.' The path down to The Sapphire Queen starts here |goto 59.4,79.1,0.3 |noway |c
step
'Follow the path down to 57.1,79.3 |goto 57.1,79.3
.from Sapphire Hive Queen##28087
.get Stinger of the Sapphire Queen|q 12534/1
step
'Go outside to 55.0,69.1 |goto 55.0,69.1
.talk 28082
..turnin 12533
..turnin 12534
step
goto 55.5,69.7
.talk 28138
..accept 12532
step
'They are all around the village
.clicknpc Chicken Escapee##28161
.get 12 Captured Chicken|q 12532/1
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
.click Skyreach Crystal Formation##7927
.get 8 Skyreach Crystal Cluster|q 12535/1
step
goto 49.8,85
.from Serfex the Reaver##28083
.get Claw of Serfex|q 12531/1
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
.talk 28668  |tip If he doesn't appear, use Zepik's Hunting Horn in your bags to summon him.
..turnin 12536
..accept 12537
..accept 12538
step
goto 45.4,37.2
.' Use your Skyreach Crystal Clusters next to the stone monument |use Skyreach Crystal Clusters##38510 |tip It's a tall rectangle stone monument.
.click Arranged Crystal Formation##7927
.' Sabotage the Mistwhisper Weather Shrine |q 12537/1
step
goto 45.5,39.8
' |from Mistwhisper Warrior##28109+, Mistwhisper Oracle##28110+
.' Kill 12 Mistwhisper Gorloc |q 12538/1
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
.from Mangal Crocolisk##28002
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
ding 78
step
'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
.talk 28120
..accept 12572
step
goto 57.5,52.4
.kill Venomtip##28358 |q 12571/2 |tip He walks back and forth on this small path near the waterfall.
step
goto 52.4,53.2
'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
.' Stand on top of the twinkles of light on the ground around this area
.' Lafoo will dig up the treasure
.click the random items that appear on the ground
.get 6 Shiny Treasures|q 12572/1
.kill 10 Emperor Cobra##28011+ |q 12571/1
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
goto 42.1,28.7
.talk 28771
..accept 12683
step
goto 40.4,26.4
.kill 8 Frenzyheart Spearbearer##28080+ |q 12576/1
.kill 6 Frenzyheart Scavenger##28081+ |q 12576/2
step
goto 41.3,19.8
.kill Warlord Tartek##28105 |q 12575/1 |tip He comes walking up on a red dragon.
step
goto 41.6,19.5
.click Mistwhisper Treasure##7951
.get Mistwhisper Treasure|q 12575/2
step
goto 39.7,38
.' Fight Bittertide Hydras |tip They are underwater in this lake.
.' They will spit on you with Hydra Sputum
.' Use your Sample Container in your bags when you have the Hydra Sputum debuff |use Sample Container##39164
.' Collect 5 Sputum Samples |q 12683/1
.kill 5 Bittertide Hydra##28003+ |q 12683/2
step
goto 42.1,38.6
.talk 28114
..turnin 12575
..turnin 12576
..accept 12577
step
goto 42.1,28.7
.talk 28771
..turnin 12683
step
'Hearth to Nesingwary Base Camp |goto 26.9,59.2,0.5 |use hearthstone##6948 |noway |c
step
goto 27.2,59.9
.talk 28032
..turnin 12569
step
goto 27.1,58.6
.talk 27986
..accept 12595
step
goto 42.3,28.7
.talk 28376
..turnin 12595
..accept 12603
..accept 12605
step
goto 44.7,27.4
.kill 6 Primordial Drake##28378+ |q 12603/1 |tip The Primordial Drakes fly around in the air around this area.
.' Attack the Primordial Drake Eggs 
.click the Primordial Hatchlings that spawn
.get 6 Primordial Hatchling|q 12605/1
|modelnpc Primordial Drake Egg##28408
|modelnpc Primordial Hatchling##28389
step
goto 42.3,28.7
.talk 28376
..turnin 12603
..turnin 12605
..accept 12614
step
goto 47.1,21.1
.' Use the abilities on your hotbar to kill Broodmother Slivina
..kill Broodmother Slivina |q 12614/1
step
goto 42.3,28.7
.talk 28376
..turnin 12614
step
goto 42.1,28.7
.talk 28771
..accept 12681
step
goto 42.1,28.9
.talk 28374
..accept 12607
..accept 12658
step
goto 39.3,27.3
.' Use your Mammoth Harness on a Shattertusk Mammoth |use Mammoth Harness##38627
.' Ride the mammoth back to Zootfizzle at [42.1,28.9] |n
.' Use the Hand Over Mammoth ability on your hotbar |petaction Hand Over Mammoth
.' Deliver the Shattertusk Mammoth |q 12607/1
|modelnpc Shattertusk Mammoth##28379
step
goto 42.1,28.9
.talk 28374
..turnin 12607
step
goto 54.5,27.9
.from Goretalon Roc##28004+
.get 5 Twisted Roc Talon|q 12681/1
.click Roc Egg##1867
.get 7 Roc Egg|q 12658/1
step
goto 42.1,28.7
.talk 28771
..turnin 12681
step
goto 42.1,28.9
.talk 28374
..turnin 12658
step
goto 54.6,56.3
.talk 28027
..turnin 12577
..accept 12578
step
goto 64.5,48.7
.talk 27801
..turnin 12803
..accept 12561
step
goto 67.3,51.4
.kill 6 Blighted Corpse##28101+ |q 12561/1
.kill 10 Bonescythe Ravager##28108+ |q 12561/2
step
goto 64.5,48.7
.talk 27801
..turnin 12561
..accept 12611
step
goto 66.5,44.2
.' Fight Thalgran Blightbringer |tip He's a tall undead standing on this small hill.
.' Use Freya's Ward in your bags to reflect Thalgran Blightbringer's Deathbolts back at him |use Freya's Ward##38657 |tip Deathbolts are a purple shadow spell when he's casting it.
.kill Thalgran Blightbringer##28443 |q 12611/1
step
goto 64.5,48.7
.talk 27801
..turnin 12611
..accept 12612
..accept 12805
step
goto 65.1,60.3
.clicknpc Cultist Corpse##28464 |tip On the ground at the very top of the pillar, next to a huge red crystal.
..turnin 12612
..accept 12608
step
goto 69.7,57.9
.from Lifeblood Elemental##29124+
.' Use your Lifeblood Gem on their corpses |use Lifeblood Gem##40397
.' Recover 8 Lifeblood Energy |q 12805/1
step
goto 75.3,54.1
.' Travel to Mosswalker Village |q 12578/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you: |use Moodle's Stress Ball##38624
.talk 28122
..turnin 12578
..accept 12580
..accept 12579
step
goto 75.4,52.4
.talk 28113
.' Rescue 6 Mosswalker Victims |q 12580/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you: |use Moodle's Stress Ball##38624
.talk 28122
..turnin 12580
step
goto 68.9,54.6
.click Lifeblood Shard##6835
.get 10 Lifeblood Shard|q 12579/1
step
'Use Moodle's Stress Ball if Moodle is not standing next to you: |use Moodle's Stress Ball##38624
.talk 28122
..turnin 12579
step
goto 64.5,48.7
.talk 27801
..turnin 12608
..turnin 12805
..accept 12617
..accept 12660
step
goto 57.5,41.1
.kill 8 Cultist Infiltrator##28373+ |q 12617/1
.click Unstable Explosives##8181 |tip The Unstable Explosives look like big metal spiked balls on the ground around this area.
.' Destroy 4 Unstable Explosives |q 12660/1
step
goto 64.5,48.7
.talk 27801
..turnin 12617
..turnin 12660
..accept 12620
step
goto 50.1,37.3
.' Fly to the very top of this tall pillar
.' Stand under the big floating structure
.' Use Freya's Horn |use Freya's Horn##38684
.' Release The Lifewarden's Wrath |q 12620/1
step
goto 64.5,48.7
.talk 27801
..turnin 12620
..accept 12621
step
goto 64.5,48.7
.talk 27801
.' Ask her how you can help
.get Freya's Pact |q 12621/1
step
goto 64.5,48.7
.talk 27801
..turnin 12621
..accept 12559
step
'Hearth to Nesingwary Base Camp |goto 26.9,59.2,0.5 |use hearthstone##6948 |noway |c
step
goto 28.4,39.1|n
.' The path to Activation Switch Gamma starts here |goto 28.4,39.1,0.5 |noway |c |tip It's a big balcony you'll have to fly to.
step
goto 26.2,35.5
.click Activations Switch Gamma##6424  |q 12559/1 |tip It looks like a rectangle upright control panel in the middle between 3 huge windows.
step
goto 64.5,48.7
.talk 27801
..turnin 12559
..accept 12613
step
goto 80.4,55.8
.click Timeworn Coffer##8441
..accept 12691
step
goto 89.1,52.9
.click Activation Switch Theta##6424 |q 12613/1 |tip At the very end of the hallway, it's a rectangle upright control panel.
step
goto 80.3,54.9
.from Sholazar Guardian##28069+
.get Huge Stone Key|q 12691/1
step
goto 80.4,55.8
.click the Timeworn Coffer |tip It's a big stone box sitting on the big balcony.
..turnin 12691
step
goto 64.5,48.7
.talk 27801
..turnin 12613
..accept 12548
step
goto 40.3,82.9|n
.' Stand inside the light to go through the Waygate |goto Un'Goro Crater |noway |c
step
goto Un'Goro Crater,47.4,9.2
.talk 28092
..turnin 12548
..accept 12547
step
'Go up the steps and into the tunnel to 48.2,2.5 |goto 48.2,2.5
.from High Cultist Herenn##28601
.get Omega Rune|q 12547/1
step
goto 47.4,9.2
.talk 28092
..turnin 12547
..accept 12797
step
goto 50.5,7.8|n
.' Stand inside the light to go through the Waygate |goto Sholazar Basin |noway |c
step
goto Sholazar Basin,64.5,48.7
.talk 27801
..turnin 12797
step
'Hearth to Nesingwary Base Camp |goto 26.9,59.2,0.5 |use hearthstone##6948 |noway |c
step
|fly Dalaran
step
goto Dalaran,35,45.3|n
.' The path down to Rin Duoctane starts here |goto 35,45.3,0.2 |noway |c
step
'Go into the sewer to 31.6,49.2 |goto 31.6,49.2
.talk 30490
..accept 12853
step
|fly K3
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Northrend 70-80\\The Storm Peaks (78-80)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Mount Hyjal (80-82)
startlevel 78.72
dynamic on
step
goto The Storm Peaks,41,86.4
.talk 29431
..turnin 12853
..accept 12818
step
goto 41.1,85.9
.talk 29904
.home K3
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
goto 39.8,86.4
.click Charred Wreckage##8108
.get 10 Charred Wreckage|q 12818/1
|model Charred Wreckage##7000
|model Charred Wreckage##5391
|model Charred Wreckage##6868
|model Charred Wreckage##6867
|model Charred Wreckage##6314
|model Charred Wreckage##449
step
goto 35,83.8
.from Savage Hill Brute##29623+, Savage Hill Mystic##29622+, Savage Hill Scavenger##29404+
.click Dried Gnoll Rations##335
.get 16 Dried Gnoll Rations|q 12827/1
step
goto 30.3,85.7
.kill Gnarlhide##30003 |q 12836/1 |tip Standing in front of a tent.
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
goto The Storm Peaks,36.4,88.5
.' Enter the minefield here |tip Dismiss any pets you may have.
.click Sparksocket's Tools when you get Here 35.1,87.8 |tip They look like a box of tools in the middle of the mine field. Navigate carefully through the wide paths in the mine field to get here. Stepping close to the mines will blow your character away.
.get Sparksocket's Tools |q 12819/1
|model Sparksocket's Tools##1209
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
.' Use your Improved Land Mines to place mines on the ground close to each other |use Improved Land Mines##40676 |tip Garm Invaders and Snowblind Followers will run over the mines and die.
' |from Snowblind Follower##29618+, Garm Invader##29619+
.kill 12 Garm Attackers |q 12820/1
step
goto 41.7,80
.talk 29430
..accept 12829
..accept 12830
step
goto 41.7,80
.click U.D.E.D. Dispenser##2029 |tip It is next to Tore Rumblewrench
.' Retrieve a bomb from the dispenser
.collect 1 U.D.E.D.##40686 |q 12828
step
'Mount up and go to 43.9,79.0 |goto 43.9,79.0
.' Use your U.D.E.D. on an Ironwool Mammoth |use U.D.E.D.##40686 |tip They walk around this area spread out.
.click the Mammoth Meat on the ground
.get 8 Hearty Mammoth Meat |q 12828/1
step
goto 40.4,78.2 |n
.' Enter the Cave here |goto 40.4,78.2 |noway |c
step
goto 41.5,74.9
.talk 29434
..accept 12831
step
goto 44,75.9
.from Snowblind Digger##29413+
.get 5 Impure Saronite Ore |q 12830/1
step
goto 47.1,72.3
.from Icetip Crawler##29461+
.get 1 Icetip Venom Sac |q 12831/1
step
'Go into the cave to 40.4,77.8 |goto 40.4,77.8
' |from Crystalweb Spitter##29412+, Crystalweb Weaver##29411+
.kill 12 Crystalweb Spiders |q 12829/1
step
goto 43.5,75.2
.talk 29434
..turnin 12831
..accept 12832
step
goto 43.5,75.2
.talk 29434
..'Tell the miner you're ready
.' Escort the Injured Goblin Miner to K3 |q 12832/1
step
'Fly up to 39.8,73.3 |goto 39.8,73.3
.from Sifreldar Storm Maiden##29323+
.collect 5 Cold Iron Key##40641 |n
.click Rusty Cage##7469
.' Free 5 Goblin Prisoners |q 12843/1
.click K3 Equipment##335
.get 8 K3 Equipment |q 12844/1
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
.get Transporter Power Cell |q 12821/2
step
goto 50.7,81.9
.' Use your Transporter Power Cell next to the Teleportation Pad |use Transporter Power Cell##40731 |tip It looks like a tall machine with a fan in the bottom of it.
.' Activate the Garm Teleporter |q 12821/1
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
'Go inside the cave to 50.5,77.8 |goto 50.5,77.8
.' Use your Hardpacked Explosive Bundle next to Frostgut's Altar |use Hardpacked Explosive Bundle##41431 |tip It's a stone altar with a bunch of melted red candles on it.  Follow the path in the cave that spirals up all the way to the top of the cave to find it.
.kill Tormar Frostgut##29626 |q 12823/2
step
'Go inside the cave to 48.1,81.9 |goto 48.1,81.9
.kill 6 Garm Watcher##29553+ |q 12822/1
.kill 8 Snowblind Devotee##29554+ |q 12822/2
step
'Go outside and go to 50.0,81.8 |goto 50.0,81.8
.talk 29432
..turnin 12823
..accept 12824
step
'Go outside and fly up into the cave to 42.8,68.9 |goto 42.8,68.9
.talk 29481
..turnin 12846
..accept 12841
step
goto 44.2,68.9
.from Overseer Syra##29518 |tip If you don't see her some searching may be required in the caves to either side.
.get 1 Runes of the Yrkvinn |q 12841/1
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
.' Use your Disciplining Rod on Exhausted Vrykul |use Disciplining Rod##42837 |tip They are sitting on the ground inside these side tunnels inside this mine.
.' Discipline 6 Exhausted Vrykul |q 12906/1
|modelnpc Exhausted Vrykul##30146
step
goto 44.4,68.9
.talk 29885
..turnin 12906
..accept 12907
step
goto 45.4,69.1
.kill Garhal##30147 |q 12907/1 |tip Standing off to the side of the path.
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
'Follow the path in the mine east out to the other side to 47.5,69.1 |goto 47.5,69.1
.talk 29975
..turnin 12921
..accept 12969
step
goto 48.2,69.8
.talk 30154
..'Tell her to skip the warm up
.kill Agnetta Tyrsdottar##30154 |q 12969/1
step
goto 47.5,69.1
.talk 29975
..turnin 12969
..accept 12970
step
goto 47.5,69.1
.talk 29975
..'Ask her about her proposal
.' Listen to Lok'lira's proposal |q 12970/1
step
goto 47.5,69.1
.talk 29975
..turnin 12970
..accept 12971
step
goto 51,66.4
.talk 30012
.kill 6 Victorious Challenger |q 12971/1
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
ding 79
step
goto 53.1,65.7
.clicknpc Icefang##29598
.' While riding Icefang, use the Flaming Arrow ability on your hotbar to shoot arrows at the Frostworgs and Frost Giants |petaction Flaming Arrow
.' Burn 7 Frostworgs |q 12851/1
.' Burn 15 Niffelem Frost Giants |q 12851/2
|modelnpc Frostworg##30455
|modelnpc Niffelem Frost Giant##29351
step
goto 53.1,65.7
.talk 29592
..turnin 12851
..accept 12856
step
'Fly to 63.9,62.5 |goto 63.9,62.5
.clicknpc Captive Proto-Drake##29708 |tip The Captive Proto-Drakes are chained up flying in the sky.
.' Use your Ice Shard ability on the Brunnhildar Prisoners |petaction Ice Shard |tip The Brunnhildar Prisoners look like blue blocks of ice around this area on the ground.
.' When your Proto-Drake is holding 3 Brunnhildar Prisoners, start flying toward Brunnhildar Village here [50.3,67.0], the drake will eventually go on autopilot.  Repeat this process 2 more times.
.' Rescue 9 Brunnhildar Prisoners |q 12856/1
.' Free 3 Proto-Drakes |q 12856/2
|modelnpc Brunnhildar Prisoner##29639
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
.from Icemane Yeti##29875+
.get 3 Icemane Yeti Hide |q 12900/1
step
goto 49.7,71.8
.talk 29839
..turnin 12900
..accept 12983
..accept 12989
step
goto 55.8,63.9
.'Kill 8 Ravenous Jormungar inside this cave |q 12989/1
|modelnpc Ravenous Jormungar##30291
step
'Follow the path in the cave to 54.8,60.4 |goto 54.8,60.4
.clicknpc Injured Icemaw Matriarch##29563
.' The bear runs back to Brunnhildar Village
.' Rescue the Icemaw Matriarch |q 12983/1
step
goto 49.7,71.8
.talk 29839
..turnin 12983
..accept 12996
..turnin 12989
step
'Use your Reins of the Icemaw Matriarch outside the building to ride a bear |invehicle |c |use Reins of the Warbear Matriarch##42481
step
goto 50.8,67.7
.' Use the abilities on your hotbar to fight Kirgaraak |tip He's a big white yeti.
.' Defeat Kirgaraak |q 12996/1
step
goto 49.7,71.8
.talk 29839
..turnin 12996
..accept 12997
step
.click the red arrow to get off the bear |outvehicle |c
step
goto 49.1,69.4
.' Use your Reins of the Icemaw Matriarch inside The Pit of the Fang to ride a bear |use Reins of the Warbear Matriarch##42481
.' Use the abilities on your hotbar to fight Hyldsmeet Warbears
.kill 6 Hyldsmeet Warbear##30174+ |q 12997/1
step
.click the red arrow to get off the bear |outvehicle |c
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
.' Use your Hyldnir Harpoon in your bags on Hyldsmeet Proto-Drakes to harpoon over to a new drake |use Hyldnir Harpoon##41058
.from Hyldsmeet Drakerider##29694+
.' Defeat 10 Hyldsmeet Drakeriders |q 12886/1
step
'They look like light fixtures on the side of the stone columns.
.' Use your Hyldnir Harpoon in your bags on a Column Ornament to get off the drake |outvehicle |c |use Hyldnir Harpoon##41058
|modelnpc Column Ornament##29754
step
goto 33.4,58
.talk 29445
..turnin 12886
..accept 13064
step
goto 33.4,58
.talk 29445
..'Ask him what became of Sif
.' Hear Thorim's History |q 13064/1
step
goto 33.4,58
.talk 29445
..turnin 13064
..accept 12915
step
goto 27.3,63.7
.kill 12 Nascent Val'kyr##29570+ |q 12942/1
.from Valkyrion Aspirant##29569+
.collect 6 Vial of Frost Oil##41612|q 12925
step
goto 23.7,58.3
.' Use your Vials of Frost Oil on the Plagued Proto-Drake Eggs |use Vial of Frost Oil##41612 |tip They look like brown spiked eggs sitting in the yellow water around this area.
.' Try to get 6 at a time
.' Destroy 30 Plagued Proto-Drake Eggs |q 12925/1
|model Plagued Proto-Drake Egg##3891
step
goto 24,61.8
.kill Yulda the Stormspeaker##30046 |q 12968/1 |tip Yulda the Stormspeaker is standing inside this house.
.click Harpoon Crate##8217
..accept 12953
step
goto 26,59.8
.clicknpc Valkyrion Harpoon Gun##30066
.' Use the Flaming Harpoon ability on your hotbar to shoot the tan bundles of straw near buildings and in wagons around this area |petaction Flaming Harpoon
.' Start 6 Fires |q 12953/1
step
.click the red arrow to get off the gun |outvehicle |c
step
'Hearth to K3 |goto 41.0,85.9,0.5 |use hearthstone##6948 |noway |c
step
goto 40.9,85.3
.talk 29428
..turnin 12824
..turnin 12822
..accept 12833
step
goto 43.1,81.2
.' Use your Improved Land Mines to place mines on the ground close to each other |use Improved Land Mines##40676 |tip Garm Invaders and Snowblind Followers will run over the mines and die.
.kill 12 Garm Invader##29619+ |q 12833/1
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
.click Granite Boulder##7750 |tip You can only carry 1 of these at a time.
.' Use Thorim's Charm of Earth on the Stormforged Iron Giants |use Thorim's Charm of Earth##41505
.' Help the dwarves kill them
.kill 5 Stormforged Iron Giant##29375+ |q 12915/2
.' Get Slag Covered Metal
.click the Slag Covered Metal in your bags |use Slag Covered Metal##41556
..accept 12922
step
goto 75.4,63.5
.from Seething Revenant##29504+
.get 10 Furious Spark |q 12922/1
step
goto 77.2,62.9
.click Granite Boulder##7750
.' Use Thorim's Charm of Earth on Fjorn |use Thorim's Charm of Earth##41505 |tip He's a huge fire giant, holding a huge smithing hammer.
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
.click Snorri to accompany on him |invehicle |c |tip Standing on the side of the road.
step
goto 76.7,63.4
.' Use the Gather Snow ability on your hotbar to gather snow from Snowdrifts |petaction Gather Snow |tip The Snowdrifts look like piles of snow on the ground.
.' Use the Throw Snowball ability on your hotbar to throw the snow at Seething Revenants |petaction Throw Snowball
.kill 10 Seething Revenant##29504+ |q 12967/1
step
.click the red arrow on your hotbar to leave Snorri |outvehicle |c
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
goto The Storm Peaks 62.6,61.0
.talk 32571
.fpath Dun Niffelem
step
goto 63.2,62.9
.click Fjorn's Anvil##8218
..accept 12981
step
goto 65.4,60.2
.talk 30105
..accept 12975
step
goto 69.7,60.2
.from Brittle Revenant##30160+
.collect 6 Essence of Ice##42246|q 12981
step
goto 75.3,62.8
.' Use your Essences of Ice next to Smoldering Scraps |use Essence of Ice##42246 |tip The Smoldering Scraps look like small smoking pieces of metal on the ground around this area.
.click Frozen Iron Scrap##8231
.get 6 Frozen Iron Scrap |q 12981/1
step
goto 72.1,49.4
.click Horn Fragment##8222 |tip The Horn Fragments look like grey scraps on the ground around this area.
.get 8 Horn Fragment |q 12975/1
.' Kill mobs in the area.
.collect 10 Relic of Ulduar##42780 |q 12975
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
.click Fjorn's Anvil##8218
..turnin 12981
step
goto 63.2,63.2
.talk 30127
..accept 12985
step
goto 64.1,65.1
.click Hodir's Horn##7352
..accept 12977
step
goto 65.4,60.2
.talk 30105
..accept 13011
step
goto 69.7,58.9
.' Use your Diamond Tipped Pick on Dead Iron Giants |use Diamond Tipped Pick##42424
.from Stormforged Ambusher##30208+
.get 8 Stormforged Eye|q 12985/1
step
goto 72.1,51.8
.from Niffelem Forefather##29974+, Restless Frostborn Ghost##30144+
.' Use Hodir's Horn on their corpses |use Hodir's Horn##42164
.' Free 5 Niffelem Forefathers |q 12977/1
.' Free 5 Restless Frostborn |q 12977/2
step
goto 63.2,63.2
.talk 30127
..turnin 12985
..accept 12987
step
goto 64.1,65.1
.click Hodir's Horn##7352
..turnin 12977
step
goto 64.3,59.2
.' Fly to the tip of this ice spike
.' Use the Tablets of Pronouncement in your bags |use Tablets of Pronouncement##42442
.' Mount Hodir's Helm |q 12987/1
step
goto 63.2,63.2
.talk 30127
..turnin 12987
step
goto 64.2,59.2
.click Hodir's Helm##8221
..accept 13006
step
goto 55.6,63.4
.from Viscous Oil##30325+
.get 5 Viscous Oil|q 13006/1
.' Use your Everfrost Razor on Dead Icemaw Bears |use Everfrost Razor##42732
.collect 1 Icemaw Bear Flank##42733|q 13011
step
goto 54.7,60.8
.' Follow the path inside the cave to this spot
.' Use your Icemaw Bear Flank while standing on the small frozen pond with a bunch of rocks on it |use Icemaw Bear Flank##42733
.kill Jormuttar##30340 |q 13011/1
step
'Go outside and go to 33.4,58.0 |goto 33.4,58.0
.talk 29445
..turnin 13009
..accept 13050
step
goto 43.7,67.4
.click Small Proto-Drake Egg##7398
.get 5 Small Proto-Drake Egg |q 13050/1
.' You can find more Small Proto-Drake Eggs at [45.2,66.9] |n
step
goto 33.4,58
.talk 29445
..turnin 13050
..accept 13051
step
goto 38.7,65.6
.' Stand in this big nest
.click the Stolen Proto-Dragon Eggs in your bags |use Stolen Proto-Dragon Eggs##42797
.' Lure Veranus |q 13051/1
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
.' Discover Krolmir's Fate |q 13010/1
step
goto 71.4,48.8
.talk 30390
..turnin 13010
..accept 13057
step
goto 65.7,51.4
.talk 30381
..accept 13034
step
goto 65.8,50.4
.click First History Scroll##8271
.' Read the First History Scroll |q 13034/1
step
goto 66.8,50.1
.click Second History Scroll##8272
.' Read the Second History Scroll |q 13034/2
step
goto 67.5,50.6
.click Third History Scroll##8274
.' Read the Third History Scroll |q 13034/3
step
goto 65.7,51.4
.talk 30381
..turnin 13034
..accept 13037
step
'The entrance to the cave starts here |goto 62.5,41.5,0.5 |c
step
goto 61.2,39.0
.talk 30395
.' Ask him what he remembers of his brother |q 13037/1
step
goto 61.2,39.0
.talk 30395
..accept 13038
step
 goto 61.7,39.8
.' Use The Chieftain's Totem near the big yellow and black spinning circles inside this cave |use The Chieftain's Totem##42781
.' Close 4 Frostfloe Rifts |q 13038/1
step
'Leave the cave |goto 62.5,41.5,0.5 |c
step
goto 65.7,51.4
.talk 30381
..turnin 13037
..turnin 13038
..accept 13048
..accept 13049
step
'The entrance to the cave starts here |goto 67.0,44.9,0.5 |c
step
goto 67.2,44.3
.from Scion of Storm##30184+
.get 1 Stormhoof's Spear |q 13049/1
.get 1 Stormhoof's Mail |q 13049/2
.click Taunka Artifacts |tip They look like staves stuck in the ground, scrolls, or baskets laying on the ground inside this cave.
.' Attune the Lorehammer to Stormhoof's time 6 times |q 13048/1
step
'Leave the cave |goto 67.0,44.9,0.5 |c
step
goto 65.7,51.4
.talk 30381
..turnin 13048
..turnin 13049
..accept 13058
step
goto 64.9,48.1
.' Use The Lorehammer in your bags |use The Lorehammer##42918
.' Go back in time and become Stormhoof |invehicle |q 13058
step
goto 64.5,47.5
.' Use your Stormhoof abilities to fight and kill The North Wind |tip Use the Storm Call ability, whenever it is available, on the ground when The North Wind is next to you.  Spam the Rhino Strike ability whenever you can.  Only use the Earth Shock ability on The North Wind when it is trying to cast its Cyclone spell, to interrupt it.
.' When The North Wind is dazed, go to 64.6,46.9
.click Horn of Elemental Fury##7352
.' Restore the True Timeline |q 13058/1
|modelnpc The North Wind##30474
step
goto 65.7,51.4
.talk 30381
..turnin 13058
step
goto 56.2,51.3
.talk 30295
..turnin 13057
..accept 13005
..accept 13035
step
goto 57.3,46.7
.' Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
.' Fight mobs around this area
.kill 7 Iron Sentinel##29984+ |q 13005/1
.kill 20 Iron Dwarf Assailant##29978+ |q 13005/2
step
'Fly up into the building to 55.3,43.3 |goto 55.3,43.3
.' Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
.kill Eisenfaust##30341 |q 13035/1 |tip He's inside this Hall of the Shaper building in the very back of the room.
step
goto 48.6,45.6
.' Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
.kill Halefnir the Windborn##30376 |q 13035/2 |tip Standing in the middle of this huge staircase.
step
goto 45,38.1
.' Use your Horn of the Peaks to summon earthen helpers |use Horn of the Peaks##42840
.kill Duronn the Runewrought##30353 |q 13035/3 |tip Standing at the bottom of this huge staircase.  Use Earth Shock to interrupt his Reconstruction, which will restore all of his health.
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
.' Witness the Reckoning |q 13047/1
step
goto 36.2,49.4
.talk 29757
..fpath Grom'arsh Crash-Site
step
goto 36.4,49.1
.talk 30247
..accept 13054
..accept 13000
step
goto 37.0,49.5
.talk 30472
..accept 12882
step
goto 37.3,49.7
.talk 29651
..accept 12895
step
goto 37.1,49.5
.talk 29944
.home Grom'arsh Crash-Site
step
'Go inside the cave to 48.5,54.3 |goto 48.5,54.3
.talk 30469
..turnin 13054
..accept 13055
step
goto 48.3,53.8
.collect 8 Cave Mushroom##42926 |q 13055 |tip They look like two mushrooms on the ground and are found throughout the cave.
.from Infesting Jormungar##30148+
.collect 1 Toxin Gland##42927|q 13055
|model Cave Mushroom##2090
step
goto 48.5,54.3
.talk 30469
..turnin 13055
..accept 13056
step
'Go deeper into the cave to 48.2,48.1 |goto 48.2,48.1
.from Cavedweller Worgs|n
..collect 6 Worg Fur##42510|q 13056
.kill Gimorak##30167 |q 13056/1 |tip He patrols around the big room.
step
goto 48.5,54.3
.talk 30469
..turnin 13056
step
goto 65.4,60.2
.talk 30105
..turnin 13047
step
goto 36.1,64.1
.click the Disturbed Snow pile
..collect Burlap-Wrapped Note##40947|q 12895
step
goto 36.4,49.1
.talk 30247
..turnin 13000
step
goto 37.3,49.7
.talk 29651
..turnin 12895
..accept 12909
step
goto 40.8,51.2
.talk 29855
..turnin 12909
..accept 12910
step
.clicknpc Frostbite##29857
.' Use the abilities on your hotbar to keep the dwarves away from you
.' Track scent to its source |q 12910/1
step
goto 48.5,60.8
.from Tracker Thulin##29695 |q 12910/1 |tip He's sitting on the ground inside this small cave.
.collect Brann's Communicator##40971 |c
step
'Use Brann's Communicator in your bags |use Brann's Communicator##40971
.talk 29579
..turnin 12910
..accept 12913
step
goto 37.3,49.7
.talk 29937
..turnin 12913
..accept 12917
step
goto 28.5,48.5
.from Stormrider##29624
..collect 5 Voice of the Wind##41514|q 12917
..collect 10 Relic of Ulduar##42780|q 12882
step
goto 37.0,49.5
.talk 30472
..turnin 12882
step
goto 37.3,49.7
.talk 29937
..turnin 12917
step
goto 37.3,49.7
.talk 29651
..accept 12920
step
'Use Brann's Communicator in your bags |use Brann's Communicator##40971
.talk 29579
.' Speak with Brann |q 12920/1
step
goto 37.3,49.7
.talk 29651
..turnin 12920
..accept 12926
step
goto 37.6,43.5
.from Library Guardian##29724+
.collect 6 Inventor's Disk Fragment##41130 |n
.click the Inventor's Disk Fragments in your bags to combine them |use Inventor's Disk Fragment##41130
.get The Inventor's Disk |q 12926/1
step
..click Brann's Communicator |use Brann's Communicator##40971
..talk 29579
..turnin 12926
..accept 12927
step
ding 80
step
goto 38.5,44.2
.' Use The Inventor's Disk on Databanks |use The Inventor's Disk##41179
.' Gather 7 Hidden Data |q 12927/1
|modelnpc Databank##29746
step
'Use Brann's Communicator in your bags |use Brann's Communicator##40971
.talk 29579
..turnin 12927
..accept 13416
step
goto 37.4,46.8
.click the Inventor's Library Console##8177
..turnin 13416
..accept 12928
step
.click the Charged Disk in your bags|use Charged Disk##44704
.from Archivist Mechaton##29775
.get Norgannon's Shell |q 12928/1
step
'Use Brann's Communicator in your bags |use Brann's Communicator##40971
.talk 29579
..turnin 12928
..accept 13273
..accept 12929
step
goto 59.2,51.5
.click Prospector Soren's Maps##222
.get Prospector Soren's Maps |q 13273/2
step
goto 59.8,52.6
.click Prospector Khrona's Notes##5851
.get Prospector Khrona's Notes |q 13273/1
step
'Use Brann's Communicator in your bags |use Brann's Communicator##40971
.talk 29579
..turnin 13273
..accept 13274
step
'The entrance to the big round metal door starts here |goto 56.5,58.5,0.5 |c |tip It's a big metal hole on in the side of the mountain.
step
goto 56.4,52.1
.from Athan##31798
.get Norgannon's Core |q 13274/1
step
'Use Brann's Communicator in your bags |use Brann's Communicator##40971
.talk 29579
..turnin 13274
..accept 13285
step
'Go outside |goto 56.5,58.5,0.5 |c
step
goto 45.5,49.5
.talk 29579
..' Tell him you're ready to make the keystone
.' Help Brann Create the Keystone |q 13285/1
step
goto 37.3,49.7
.talk 29651
..turnin 13285
step
goto 30.6,36.3
.talk 29950
..fpath Bouldercrag's Refuge
step
'Go inside the building to 31.4,38.1 |goto 31.4,38.1
.talk 29801
..turnin 12929
..accept 12930
step
goto 28.9,36.7
.from Stormforged Raider##29377+
.get 5 Frostweave Cloth |q 12930/2
step
goto 28.3,29.4
.click the Enchanted Earth##8194
.get 7 Enchanted Earth|q 12930/1
step
'Go inside the building to 31.4,38.1 |goto 31.4,38.1
.talk 29801
..turnin 12930
..accept 12931
..accept 12937
step
goto The Storm Peaks 30.9,37.3
.talk 29963
.home Bouldercrag's Refuge
step
goto 28.1,36.7
' |from Stormforged Raiders##29377+, Stormforged Reavers##29382+
.kill 10 Stormforged Attacker |q 12931/1
.' Use your Telluric Poultice on Fallen Earthen Defenders |use Telluric Poultice##41988
.' Heal 8 Fallen Earthen Defenders |q 12937/1
step
'Go inside the building to 31.4,38.1 |goto 31.4,38.1
.talk 29801
..turnin 12931
..turnin 12937
..accept 12957
..accept 12964
step
'Go inside the mine to 27.5,49.7 |goto 27.5,49.7
.kill 3 Stormforged Taskmaster##29369+ |q 12957/2
.talk 29384
.' Attempt to free 8 Captive Mechagnomes |q 12957/1
.click Ore Carts |tip They look like carts with ore in them.
.get 5 Dark Ore Sample|q 12964/1
step
'Go outside and inside the building to 31.4,38.1 |goto 31.4,38.1
.talk 29801
..turnin 12957
..turnin 12964
..accept 12965
step
goto 31.3,38.2
.talk 30152
..accept 12978
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
' |from Stormforged War Golem##29380+, Stormforged Champion##29370+, Stormforged Magus##29374+
.kill 10 Nidavelir Stormforged |q 12978/1
.from Stormforged War Golem##29380+
.collect 1 Dark Armor Plate##42203|n
.click the Dark Armor Plate in your bags |use Dark Armor Plate##42203
..accept 12979
step
goto 28.7,43.3
.from Stormforged War Golem##29380+
..get 4 Dark Armor Sample |q 12979/1
step
'Go inside the building to 31.4,38.1 |goto 31.4,38.1
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
.kill 10 Stormforged Artificer##29376+ |q 12991/1
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
.click the red arrow button on your hotbar to stop controlling the Jormungar |outvehicle |c |q 13007
step
goto 31.4,38.1
.talk 29801
..turnin 13007
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Leveling Guides\\Northrend 70-80\\Icecrown (78-80)",[[
author support@zygorguides.com
next Zygor's Horde Leveling Guides\\Cataclysm 80-85\\Mount Hyjal (80-82)
startlevel 78.72
dynamic on
step
|fly The Argent Vanguard
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
' |from Carrion Fleshstripper##30206+, Forgotten Depths Acolyte##30205+
.kill 15 Forgotten Depths Nerubian |q 13039/1
.from Carrion Fleshstripper##30206+, Forgotten Depths Acolyte##30205+
.get 10 Forgotten Depths Venom Sac |q 13040/1
.clicknpc Webbed Crusader##30273 |tip If your Pet Attacks first you will not get credit for freeing webbed crusaders.
.' Free 8 Webbed Crusaders |q 13008/1
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
.' Click an Argent Skytalon dragon to ride it |invehicle |c
|modelnpc Argent Skytalon##30500
step
goto 79.0,67.4
.' Use the Grab Captured Crusader ability near Captured Crusaders to pick them up |petaction Grab Captured Crusader
.' Once you pick up a Captured Crusader, fly to [86.9,76.5] |n
.' Use the Drop Off Captured Crusader ability near the tents to drop off the crusaders
.' Repeat this process 2 more times
.' Rescue 3 Captured Crusaders |q 13045/1
|modelnpc Captured Crusader##30407
step
.' Click the red arrow on your vehicle hot bar to stop riding the dragon |outvehicle |c
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
.' Click the Argent Cannon to get on it |invehicle |c
|modelnpc Argent Cannon##30236
step
'Use the skills on your hotbar to kill scourge mobs and dragons
' |from Forgotten Depths Slayer##30593+
.kill 100 Scourge Attacker |q 13086/1
.kill 3 Frostbrood Destroyer##30575+ |q 13086/2
step
.' Click the red arrow on your vehicle hot bar to stop using the cannon |outvehicle |c
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
.kill 8 Reanimated Crusader##31043+ |q 13118/3
.kill 3 Forgotten Depths Underking##31039+ |q 13118/2
.get 15 Scourgestone |q 13122/1
.' Use your Holy Water on Reanimated Crusader corpses |use Holy Water##43153
.' Free 10 Restless Souls |q 13110/1
step
goto 78.7,60.2
.kill 3 Forgotten Depths High Priest##31037+ |q 13118/1
.' You can find another Forgotten Depths High Priest at [76.2,61.0]
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
.' Click the dark portal that spawns after you kill Underking Talonox to return to the Valley of Echoes |goto Icecrown,83.0,72.6,0.5 |noway |c
step
goto 83.0,72.9
.talk 30596
..turnin 13125
step
goto Crystalsong Forest,59.9,57.2
.from Unbound Ent##30862+, Unbound Dryad##30860+
.get 8 Crystallized Energy |q 13135/1
.click Crystalline Heartwood##8439
.get 10 Crystalline Heartwood |q 13130/1
step
goto 73.8,53.0
.click Ancient Elven Masonry |tip They look like blue stone pieces of a building on the ground around this area.
.get 10 Ancient Elven Masonry |q 13130/2
.' You can find more Ancient Elven Masonry around [79.6,61.3] |n
|model Ancient Elven Masonry##8353
|model Ancient Elven Masonry##8354
|model Ancient Elven Masonry##8355
|model Ancient Elven Masonry##8356
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
.' Use your Blessed Banner of the Crusade |use Blessed Banner of the Crusade##43243
.' Watch the Battle for Crusaders' Pinnacle |q 13141/1
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
goto 79.5,72.7
.talk 31240
..accept 13224
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
.. 'Click the Moonglade Portal that appears next to you |goto Moonglade |noway |c
step
goto Moonglade,36.2,41.8
.talk 11832
..turnin 13073
..accept 13074
step
goto 33.7,44.1
.click Emerald Acorn##424
.get 3 Emerald Acorn|q 13074/1
step
'Right click your Fitfull Dream buff to awaken from the nightmare |nobuff Spell_Nature_Sleep |q 13074 |tip The Fitfull Dream buff icon looks like a closed eye.
step
goto 36.2,41.8
.talk 11832
..turnin 13074
..accept 13075
step
.talk 11832
..' Tell him you wish to return to Arch Druid Lilliandra.
..' Click the Moonglade Return Portal that appears next to you|goto Icecrown |noway |c
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
|fly Wyrmrest Temple
step
goto Dragonblight,57.9,54.2|n
.talk 26443
..'Tell him you need to go to the top of the temple |goto Dragonblight,59.7,53.1,0.1 |noway |c
step
goto 59.8,54.7
.talk 26917
..turnin 13077
..accept 13078
step
goto 59.5,53.3|n
.talk 26949
..'Tell him you want to go to the ground level of the temple |goto Dragonblight,58.0,55.2,0.1 |noway |c
step
goto 43.2,51.7
.' There should be a fight happening, so just wait around until the fight is over |tip If there isn't fight happening, just wait until the fighters spawn again, and there should be some red dragon Ruby Watchers flying above the fight.
..' At the end of the fight, a Ruby Watcher will blow a lot of fire on the ground and the Dahlia's Tears will spawn
..click Dahlia's Tears##8329
..get Dahlia's Tears |q 13078/1
..' You can try to find more around [51.8,47.4]
step
goto 57.9,54.2|n
.talk 26443
..'Tell him you need to go to the top of the temple |goto Dragonblight,59.7,53.1,0.1 |noway |c
step
goto 59.8,54.7
.talk 26917
..turnin 13078
..accept 13079
step
goto 59.5,53.3|n
.talk 26949
..'Tell him you want to go to the ground level of the temple |goto Dragonblight,58.0,55.2,0.1 |noway |c
step
goto Icecrown 79.8,30.8
.talk 30562
..turnin 13079
..accept 13080
step
goto 79.8,71.8
.talk 31044
..turnin 13080
..accept 13081
step
.' Click the Portal to Shattrath that appears near you|goto Shattrath City|noway|c
step
goto Shattrath City,54,44.8
.talk 18481
..turnin 13081
..accept 13082
step
goto Dalaran,72.2,45.8
.talk 28674
..' Fly to Crusaders' Pinnacle in Icecrown |goto Icecrown,79.3,72.3,0.5 |noway |c
step
goto Icecrown,79.8,30.8
.talk 30562
..turnin 13082
step
goto 79.8,30.8
.click Bridenbrad's Possessions##1
..accept 13083
step
goto 79.8,71.8
.talk 31044
..turnin 13083
step
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: [60.6,34.9]
.' Point 2: [68.0,52.5]
.' Point 3: [68.9,27.0]
.'Find Orgrim's Hammer flying around in the sky |tip On you world map, it looks like a ship icon with 2 long red-ish balloons on either side of it.
..talk 30824
...turnin 13224
...accept 13228
step
'On the Orgrim's Hammer airship:
.talk 29795
..accept 12892
step
'On the Orgrim's Hammer airship:
.talk 32301
..accept 13330
..accept 13340
step
'On the Orgrim's Hammer airship:
.talk 31261
..accept 13302
step
'On the Orgrim's Hammer airship:
.talk 30825
..accept 13293
step
goto 58.3,46.0
.talk 31834
..turnin 13340
..accept 13310
step
goto 58.2,45.9
.talk 31833
..accept 13301
step
'Follow the Horde troops up the mountain and help them fight
.'Escort the Horde troops into Ymirheim |q 13301/1 |tip At least 4 Horde troops must survive.
|modelnpc Kor'kron Squad Leader##31833
|modelnpc Kor'kron Infantry##31832
step
'The entrance to the cave starts here, go inside the cave |goto 57.0,57.3,0.3 |c
step
goto 56.0,57.6
.talk 31397+
..' Tell them they're free, get out of here!
.' Rescue 10 Saronite Mine Slaves |q 13302/1
step
'Go outside the cave |goto 57.0,57.3,0.3 |c
step
goto 57.3,57.0
' |from Ymirjar Element Shaper##31267+, Blight Falconer##31262+, Ymirheim Chosen Warrior##31258+
.kill 20 Ymirheim Vrykul |q 13330/1
step
goto 51.9,57.6
.talk 31781
..turnin 13293
..accept 13283
step
goto 51.9,57.6
.' Click Thunderbomb's Jumpbot to get in the robot |invehicle |c
step
goto 54.9,60.1
.' Use your Jump Jets ability to jump up the mountain to this spot |petaction Jump Jets |tip This spot is the peak of the mountain.
.' Use your Plant Horde Battle Standard ability next to the Ymirheim Peak Skulls |petaction Plant Horde Battle Standard |tip The Ymirheim Peak Skulls look like a big pile of skulls at the peak of the mountain, next to 2 blue flame torch lights.
.' Plant the Horde Battle Standard |q 13283/1
step
.' Click the red arrow button on your vehicle hotbar to get out of the robot |outvehicle |c
step
goto 51.9,57.6
.talk 31781
..turnin 13283
step
goto 58.3,46.0
.talk 31834
..turnin 13301
step
goto 59.5,45.9
.' Click the Kor'kron Suppression Turret to control the gun on the airplane |invehicle |c
step
'You will fly off in the airplane:
.' Use your Suppression Charge ability on the cannons on the ground to stun them as you fly around |petaction Suppression Charge
.' Drop 4 Kor'kron Infiltrators |q 13310/1
|modelnpc Ymirheim Spear Gun##31280
step
goto 58.3,46.0
.talk 31834
..turnin 13310
step
goto 69.0,67.3
.talk 31273
..' Ask him what happened here
.' Question the Dying Berserker |q 13228/1
step
goto 69.0,67.3
.talk 31273
..accept 13230
step
goto 68.8,67.2
.from Dying Soldier##31304
.' Kill 5 Dying Alliance Soldiers |q 13230/1
step
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: [60.6,34.9]
.' Point 2: [68.0,52.5]
.' Point 3: [68.9,27.0]
.'Find Orgrim's Hammer flying around in the sky |tip On you world map, it looks like a ship icon with 2 long red-ish balloons on either side of it.
..talk 30824
...turnin 13228
...turnin 13230
...accept 13238
...accept 13260
step
'On the Orgrim's Hammer airship:
.talk 29795
..turnin 13260
..accept 13237
step
'On the Orgrim's Hammer airship:
.talk 32301
..turnin 13330
step
'On the Orgrim's Hammer airship:
.talk 31261
..turnin 13302
step
'On the Orgrim's Hammer airship:
.talk 30825
..turnin 13238
..accept 13239
step
goto 69.9,64.3
.click Abandoned Armor##8419
.collect 3 Abandoned Armor##43616|q 13239
.click Abandoned Helm##7740
.collect 3 Abandoned Helm##43610|q 13239
.click Pile of Bones##293
.collect 3 Pile of Bones##43609|q 13239
step
goto 68.8,67.5
.' Use Copperclaw's Volatile Oil 3 times |use Copperclaw's Volatile Oil##43608
.' Conduct 3 Field Tests |q 13239/1
step
goto 68.8,66.6
.' Kill 5 Hulking Abominations |q 13237/1
.' Kill 5 Malefic Necromancer |q 13237/2
.' Kill 5 Shadow Adept |q 13237/3
step
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: [60.6,34.9]
.' Point 2: [68.0,52.5]
.' Point 3: [68.9,27.0]
.'Find Orgrim's Hammer flying around in the sky |tip On you world map, it looks like a ship icon with 2 long red-ish balloons on either side of it.
.talk 29795
..turnin 13237
..accept 13264
step
'On the Orgrim's Hammer airship:
.talk 30825
..turnin 13239
step
goto 69.8,62.4
.from Hulking Abomination##31140+
.collect Chilled Abomination Guts##43966 |n
.' Use your Abomination Reanimation Kit |use Abomination Reanimation Kit##43968
.' With your control Abomination, go to [69.1,61.6] |n
.' Use your Burst at the Seams ability to explode the mobs around this area |petaction Burst at the Seams
.' Keep repeating this process until you:
.' Explode 15 Icy Ghouls |q 13264/1
.' Explode 15 Vicious Geists |q 13264/2
.' Explode 15 Risen Alliance Soldiers |q 13264/3
step
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: [60.6,34.9]
.' Point 2: [68.0,52.5]
.' Point 3: [68.9,27.0]
.'Find Orgrim's Hammer flying around in the sky |tip On you world map, it looks like a ship icon with 2 long red-ish balloons on either side of it.
.talk 29795
..turnin 13264
..accept 13351
step
goto 57.5,35.2
.' Visit Aldur'thar North |q 13351/3
step
goto 53.9,38.5
.' Visit Aldur'thar Central |q 13351/2
step
goto 55.1,43.9
.' Visit Aldur'thar South |q 13351/1
step
goto 51.3,35.3
.' Visit Aldur'thar Northwest |q 13351/4
step
goto 44.3,21.5
.' Use your Eyesore Blaster on The Ocular |use Eyesore Blaster##41265 |tip The Ocular is a huge blue glowing eye at the very top of the Shadow Vault.
.' Destroy The Ocular |q 12892/1
step
goto 44.1,24.7
.talk 29804
..turnin 12892
..accept 12891
step
goto 43.7,24.8
.from Shadow Cultist##29717+
.get 1 Cultist Rod|q 12891/1
.from Morbid Carcass##29719+
.get 1 Abomination Hook |q 12891/2
.from Vault Geist##29720+
.get 1 Geist Rope |q 12891/3
.from Morbid Carcass##29719+, Vault Geist##29720+, Rabid Cannibal##29722+, Death Knight Master##29738+
.get 5 Scourge Essence |q 12891/4
step
goto 44.1,24.7
.talk 29804
..turnin 12891
..accept 12893
step
goto 43.4,19.1
.from The Leaper##29840 |tip The Leaper patrols around the upper ring, easy to spot from the air.
.' Use your Sovereign Rod on The Leaper's corpse |use Soveriegn Rod##41366
.' Turn The Leaper |q 12893/3
step
goto 44.4,27.0
.from Vile##29769
.' Use your Sovereign Rod on Vile's corpse |use Soveriegn Rod##41366
.' Turn Vile |q 12893/1
step
goto 41.8,24.5
.from Lady Nightswood##29770
.' Use your Sovereign Rod on Lady Nightswood's corpse |use Soveriegn Rod##41366
.' Turn Lady Nightswood |q 12893/2
step
goto 44.1,24.7
.talk 29804
..turnin 12893
..accept 12897
step
'The entrance to the Shadow Vault starts here |goto Icecrown,43.7,23.6,0.5 |c
step
goto 44.9,19.9
.click General's Weapon Rack##7950
.kill General Lightsbane##29851 |q 12897/1
step
'Leave the Shadow Vault |goto 43.7,23.6,0.5 |c
step
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: [60.6,34.9]
.' Point 2: [68.0,52.5]
.' Point 3: [68.9,27.0]
.'Find Orgrim's Hammer flying around in the sky |tip On you world map, it looks like a ship icon with 2 long red-ish balloons on either side of it.
.talk 29795
..turnin 12897
..accept 12899
..turnin 13351
..accept 13352
..accept 13354
..accept 13355
step
goto 53.9,46.9
.kill Overseer Faedris##32250 |q 13354/1 |tip He's standing in a tent.
step
goto 53.9,46.1
.from Bitter Initiate##32238
.collect 3 Orb of Illusion##44246 |n
.' Use your Orbs of Illusion on Dark Subjugators |use Orb of Illusion##44246
.' Drag and drop 3 Dark Subjugators |q 13352/1
|modelnpc Dark Subjugator##32236
step
goto 54.7,32.6
.kill Overseer Jhaeqon##32285 |q 13354/2 |tip He's standing in a tent.
step
goto 53.7,29.2
.kill Overseer Veraj##32263 |q 13354/3 |tip He's standing under a white canopy.
step
goto 49.7,34.4
.' Use your Partitioned Flask next to the big cauldron with purple smoke |use Partitioned Flask##44251
.' Collect the Dark Sample |q 13355/3
|model Dark Sample Cauldron##7411
step
goto 49.1,34.2
.' Use your Partitioned Flask next to the big cauldron with green smoke |use Partitioned Flask##44251
.' Collect the Green Sample |q 13355/2
|model Green Sample Cauldron##7410
step
goto 49.0,33.2
.' Use your Partitioned Flask next to the big cauldron with gray or blue smoke |use Partitioned Flask##44251
.' Collect the Blue Sample |q 13355/1
|model Blue Sample Cauldron##7407
step
goto 49.4,31.2
.' Kill Overseer Savryn |q 13354/4 |tip He's standing under a white canopy.
step
goto 42.8,24.9
.talk 29343
..turnin 12899
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
goto 37.9,22.9
.talk 30180
..' Tell him you have bad news for him
.' Defeat Onu'zun |q 12955/3
step
goto 37.9,25.1
.talk 30081
..' Challenge him to a duel
.' Defeat Efrem the Faithful |q 12955/2
step
goto 37.5,24.6
.' Use your Challenge Flag on Mjordin Combatants to challenge them |use Challenge Flag##41372
..' Challenge and defeat 6 Mjordin Combatants |q 12939/1
step
goto 37.1,22.5
.talk 30086
..' Tell her you heard vrykul women cannot fight at all
.' Defeat Sigrid Iceborn |q 12955/1
step
goto 36.2,23.6
.talk 30162
..' Tell her you can't afford her as a distraction
.' Defeat Tinky Wickwhistle |q 12955/4
step
'Hearth to The Shadow Vault |goto Icecrown,44.0,22.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 44.7,20.3
.talk 30002
..turnin 12939
..accept 12943
step
goto 43.6,24.7
.talk 30074
..turnin 12955
..accept 12999
step
'The entrance to the Ufrang's Hall starts here |goto 38.8,24.0,0.5 |c
step
goto 41.0,23.9
.talk 30056
..accept 12949
step
goto 40.3,23.9
.' Use your Shadow Vault Decree on Thane Ufrang the Mighty |use Shadow Vault Decree##41776
.kill Thane Ufrang the Mighty##29919 |q 12943/1
step
'Leave Ufrang's Hall |goto 38.8,24.0,0.5 |c
step
goto 36.5,23.6
.from Instructor Hroegar##29915
.get Key to Vaelan's Chains |q 12949/1
step
'The entrance to the Ufrang's Hall starts here |goto 38.8,24.0,0.5 |c
step
goto 41.0,23.9
.talk 30056
..turnin 12949
..accept 12951
step
'Leave Ufrang's Hall |goto 38.8,24.0,0.3 |c
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
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: [60.6,34.9]
.' Point 2: [68.0,52.5]
.' Point 3: [68.9,27.0]
.'Find Orgrim's Hammer flying around in the sky |tip On you world map, it looks like a ship icon with 2 long red-ish balloons on either side of it.
.talk 29795
..turnin 13352
..turnin 13354
..accept 13258
..accept 13358
step
'On the Orgrim's Hammer airship:
.talk 30825
..turnin 13355
..accept 13356
step
goto 55.2,29.1
.' Use your Diluted Cult Tonic |use Diluted Cult Tonic##44307 |tip This gives you a buff that allows you to collect Tainted Essences from dead cultists in Aldur'thar.  If you lose the buff, use this again.
.from Void Summoner##32259+, Shadow Channeler##32262+
.collect 10 Tainted Essence##44301 |n
.from Enslaved Minion##32260+
.' Use your Rod of Siphening on the Enslaved Minion corpses |use Rod of Siphening##44433
.collect 5 Dark Matter##44434 |q 13358
.' Use a Tainted Essence to combine them |use Tainted Essence##44301
..collect 1 Writhing Mass##44304 |q 13356
step
goto 53.8,33.6
.click the Summoning Stone
.' Summon the Dark Messenger |q 13358/1
step
goto 49.1,34.2
.' Use your Writhing Mass next to the big cauldron |use Writhing Mass##44304
.' Banish the Writhing Mass |q 13356/1
step
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: [60.6,34.9]
.' Point 2: [68.0,52.5]
.' Point 3: [68.9,27.0]
.'Find Orgrim's Hammer flying around in the sky |tip On you world map, it looks like a ship icon with 2 long red-ish balloons on either side of it.
.talk 29795
..turnin 13358
..accept 13366
step
'On the Orgrim's Hammer airship:
.talk 30825
..turnin 13356
step
.' Go into the building at [51.9,32.7] |goto 51.9,32.7,0.5 |c |q 13366
step
goto 51.9,30.8
.from Cult Researcher##32297+
..collect Cult of the Damned Research - Page 1##44459 |n
..collect Cults of the Damned Research - Page 2##44460 |n
..collect Cult of the Damned Research - Page 3##44461 |n
.' Use a Cult of the Damned Research Page to combine them |use Cult of the Damned Research - Page 1##44459
.get Cult of the Damned Thesis |q 13366/1
step
goto 33.0,27.0
' |from Njorndar Spear-Sister##30243+, Jotunheim Warrior##29880+, Valhalas Vargul##30250+
.kill 15 Jotunheim vrykul |q 12992/1
.collect 15 Vrykul Bones##43089 |q 13092 |future
.' Use your Ebon Blade Banner on the Jotunheim vrykul corpses |use Ebon Blade Banner##42480
.' Plant 15 Ebon Blade Banners near vrykul corpses |q 12995/1
.collect 8 Jotunheim Cage Key##42422 |q 12982 |n
.click Jortunheim Cages |tip They look like wooden cages on the ground around this area.
.' Set free 8 Ebon Blade Prisoners |q 12982/1
.click Vrykul Banner##8188 |tip They look like big wooden posts with red banners hanging from them around this area.
.' Burn 10 Vrykul banners |q 13084/1
step
goto 32.5,42.9
.talk 30232
..turnin 12999
..accept 13092
..turnin 13092
..accept 13042
step
'The entrance to The Underhalls starts here |goto 32.6,32.1,0.3 |c
step
goto 36.1,33.0
.talk 30406
..accept 13059
step
goto 33.1,37.7
.' Use Bethod's Sword in the middle of the room |use Bethod's Sword##42928
.' Issue a challenge using Bethod's Sword |q 13059/1
.kill Thane Illskar##30475 |q 13059/2
step
goto 34.0,36.3
.kill Apprentice Osterkilgr##30409 |q 13042/2
.' Beat the information out of Apprentice Osterkilgr |q 13042/1
.collect Dr. Terrible's "Building a Better Flesh Giant"##42772 |n
.click Dr. Terrible's "Building a Better Flesh Giant" in your bags |use Dr. Terrible's "Building a Better Flesh Giant"##42772
..accept 13043
step
goto 33.4,33.2
.click Nergeld to control him |tip He's a big undead monster.
.'Use Nergeld's abilities to kill Dr. Terrible |tip The best way to kill Dr. Terrible is to knock him, and all the other mobs, away using Nergeld's shout ability.  Then, target Dr. Terrible and pull him close with Nergeld's chain ability.  When Dr. Terrible is close to you, use Nergeld's punch ability to get his health down quickly.  When Dr. Terrible tries to heal, use Nergeld's shout ability to interrupt him, then pull him close again and resume punching him.
.kill Dr. Terrible##30404 |q 13043/1
step
goto 36.1,33.0
.talk 30406
..turnin 13059
step
'Leave The Underhalls |goto 32.6,32.1,0.3 |c
step
goto 32.5,42.9
.talk 30232
..turnin 13042
..turnin 13043
..accept 13091
step
goto 31.4,41.2
.click the huge Lock Gate to control a Water Terror
.' Use the Water Terror's abilities to kill mobs around this area
.' Slay 10 Jotunheim vrykul while possessing a Water Terror |q 13091/1
step
.' Click the red arrow on your vehicle hot bar to stop controlling the Water Terror |outvehicle |c
step
goto 32.5,42.9
.talk 30232
..turnin 13091
..accept 13121
step
'The entrance to Kul'galar Keep starts here |goto 25.1,61.3,0.3 |c
step
goto 26.2,62.3
.click the Eye of the Lich King |tip It's a blue floating ball up on a stage.
.' Grasp the Eye of the Lich King and focus
.' Gain information for The Bone Witch |q 13121/1
step
'Leave Kul'galar Keep |goto 25.1,61.3,0.3 |c
step
goto 32.5,42.9
.talk 30232
..turnin 13121
..accept 13133
step
'The entrance to the Halls of the Ancestors starts here |goto 27.9,47.2,0.3 |c
step
goto 27.4,47.9
.talk 30718
..' Waken them to see if it is Iskalder
.' Use The Bone Witch's Amulet on Iskalder |use The Bone Witch's Amulet##43166
.' Bring Iskalder back to The Bone Witch at [32.5,42.9] |n
.' Deliver Iskalder to The Bone Witch |q 13133/1
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
.click Summoning Altar##8009
.' Investigate a Summoning Altar |q 13117/1
step
goto 35.4,66.3
.talk 30631
..turnin 13117
..accept 13119
..accept 13120
step
goto 30.5,65.1
.click Cauldron Area Orb Stand##8357
.' Place the orb in the Cauldron Area Orb Stand |q 13120/3
step
goto 32.6,70.6
.click Abomination Lab Orb Stand##8357
.' Place the orb in the Abomination Lab Orb Stand |q 13120/1
step
goto 34.6,69.6
.click Flesh Giant Lab Orb Stand##8357
.' Place the orb in the Flesh Giant Lab Orb Stand |q 13120/2
step
goto 37.0,71.1
.from Master Summoner Zarod##30746
.collect 1 Master Summoner's Staff##43159 |q 13119
step
goto 36.7,70.7
.' Use your Master Summoner's Staff next to the green summoning altar |use Master Summoner's Staff##43159 |tip You can use the staff while on your flying mount, hovering above the summoning altar a little.  You don't have to land.
.' Destroy the First Summoning Altar |q 13119/1
step
goto 36.6,71.6
.' Use your Master Summoner's Staff next to the green summoning altar |use Master Summoner's Staff##43159 |tip You can use the staff while on your flying mount, hovering above the summoning altar a little.  You don't have to land.
.' Destroy the Second Summoning Altar |q 13119/2
step
goto 37.4,71.5
.' Use your Master Summoner's Staff next to the green summoning altar |use Master Summoner's Staff##43159 |tip You can use the staff while on your flying mount, hovering above the summoning altar a little.  You don't have to land.
.' Destroy the Fourth Summoning Altar |q 13119/4
step
goto 37.8,70.7
.' Use your Master Summoner's Staff next to the green summoning altar |use Master Summoner's Staff##43159 |tip You can use the staff while on your flying mount, hovering above the summoning altar a little.  You don't have to land.
.' Destroy the Third Summoning Altar |q 13119/3
step
goto 35.4,66.3
.talk 30631
..turnin 13119
..turnin 13120
..accept 13134
step
goto 34.0,70.0
.click Embalming Fluid##8544
.' Destroy 5 Vats of Embalming Fluid |q 13134/2
.click Blood Orb##8365
.' Shatter 5 Blood Orbs |q 13134/1
.from Spiked Ghoul##30597+
.collect 1 Jagged Shard##43242|n
.' Click the Jagged Shard in your bags |use Jagged Shard##43242
..accept 13136
step
goto 34.4,68.9
.from Spiked Ghoul##30597+ |tip You can find them all around this area.
.' You can find more spiked Ghouls on this lower platform [32.3,69.3]
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
goto 54.9,84.2
.talk 31440
..turnin 13258
..accept 13259
step
goto 54.8,85.0
.kill 10 Hulking Horror##31413+ |q 13259/1
step
goto 54.9,84.2
.talk 31440
..turnin 13259
..accept 13262
step
goto 54.4,86.3
.click Saronite Bomb Stack##8181
..turnin 13262
..accept 13263
step
goto 54.0,87.3
.click Pulsing Crystal##6395 |tip This is underground in Naz'anak: The Forgotten Depths.
..turnin 13263
..accept 13271
step
goto 53.8,86.9
.talk 31237
..turnin 13271
..accept 13275
step
goto 54.5,87.4
.from Faceless Lurker##31691+
.get 3 Faceless One's Blood |q 13275/1
step
goto 53.8,86.9
.talk 31237
..turnin 13275
..accept 13282
step
goto 53.8,86.8
.click the Surface Portal |tip It looks like a small round green and black portal underground in Naz'anak: The Forgotten Depths.
..' Go to the surface |goto Icecrown,49.1,71.6,0.5 |noway |c
step
goto 58.1,70.9
.' Use your Bag of Jagged Shards while standing on the big platform with fire shooting out of it |use Bag of Jagged Shards##43289
.get Smelted Bar |q 13138/1
step
goto 58.9,73.3
.from Skeletal Runesmith##30921+
.get 5 Runed Saronite Plate |q 13140/1
step
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: [60.6,34.9]
.' Point 2: [68.0,52.5]
.' Point 3: [68.9,27.0]
.'Find Orgrim's Hammer flying around in the sky |tip On you world map, it looks like a ship icon with 2 long red-ish balloons on either side of it.
.talk 29795
..turnin 13282
..accept 13304
..turnin 13366
step
goto 66.0,53.7
.from Scavenging Geist##31847+
.get 5 Demolisher Parts |q 13304/1
step
goto 68.0,51.9
.talk 31868
..turnin 13304
step
goto 68.0,51.6
.talk 32408
..accept 13305
step
goto 68.0,51.8
.' Click the Refurbished Demolisher to drive it |invehicle |c
|modelnpc Wrecked Demolisher##31868
step
goto 65.4,47.9
.' Use the catapult's abilities around this area to:
.kill 150 Decomposed Ghoul##31812+ |q 13305/1
.kill 20 Frostskull Magus##31813+ |q 13305/2
.kill 2 Bone Giant##31815+ |q 13305/3
step
.' Click the red arrow on your vehicle hot bar to stop controlling the Refurbished Demolisher |outvehicle |c
step
goto 64.5,44.0
.talk 32404
..turnin 13305
..accept 13236
step
goto 64.9,43.9
.' Use your abilities as Arthas to kill Lordaeron Footsoldiers and turn them into Ghoulish Minions
.' Raise 100 Ghoulish Minions |q 13236/1
step
.' Click the red arrow on your vehicle hot bar to stop controlling Arthas |outvehicle |c
step
goto 64.5,44.0
.talk 32404
..turnin 13236
..accept 13348
step
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: [60.6,34.9]
.' Point 2: [68.0,52.5]
.' Point 3: [68.9,27.0]
.'Find Orgrim's Hammer flying around in the sky |tip On you world map, it looks like a ship icon with 2 long red-ish balloons on either side of it.
.talk 29795
..turnin 13348
..accept 13349
..accept 13306
step
goto 71.5,37.6
.talk 32423
..accept 13359
step
goto 69.7,36.7
.kill 8 Cultist Corrupter##31738+ |q 13349/2
.kill 3 Vrykul Necrolord##31783+ |q 13349/3
.from Frostbrood Whelp##31718+
.get 6 Whelp Bone Dust |q 13359/1
step
goto 71.5,37.6
.talk 32423
..turnin 13359
..accept 13360
step
goto 72.3,36.7
.kill 5 Wyrm Reanimator##31731+ |q 13349/1
step
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: [60.6,34.9]
.' Point 2: [68.0,52.5]
.' Point 3: [68.9,27.0]
.'Find Orgrim's Hammer flying around in the sky |tip On you world map, it looks like a ship icon with 2 long red-ish balloons on either side of it.
.talk 29795
..turnin 13349
step
goto 51.1,39.6
.' Use your Barricade Construction Kit next to the pink and purple orbs |use Barricade Construction Kit##44127 |tip They look like pink and purple orbs that flash and disappear around this area.
.' Construct 8 Barricades |q 13306/1
step
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: [60.6,34.9]
.' Point 2: [68.0,52.5]
.' Point 3: [68.9,27.0]
.'Find Orgrim's Hammer flying around in the sky |tip On you world map, it looks like a ship icon with 2 long red-ish balloons on either side of it.
.talk 29795
..turnin 13306
..accept 13307
step
'On the Orgrim's Hammer airship:
.talk 30824
..accept 13313
step
goto 49.4,39.3
.kill 5 Scourge Converter##32257+ |q 13307/3
.' Use your SGM-3 on Skybreaker Recon Fighters |use SGM-3##44212 |tip They look like airplanes flying around this area.
.' Shoot Down 6 Skybreaker Recon Fighters |q 13313/1
step
goto 46.2,49.9
.kill 5 Scourge Banner-Bearer##31900+ |q 13307/1
.kill 20 Converted Hero##32255+ |q 13307/2
step
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: [60.6,34.9]
.' Point 2: [68.0,52.5]
.' Point 3: [68.9,27.0]
.'Find Orgrim's Hammer flying around in the sky |tip On you world map, it looks like a ship icon with 2 long red-ish balloons on either side of it.
.talk 30824
..turnin 13313
step
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: [60.6,34.9]
.' Point 2: [68.0,52.5]
.' Point 3: [68.9,27.0]
.'Find Orgrim's Hammer flying around in the sky |tip On you world map, it looks like a ship icon with 2 long red-ish balloons on either side of it.
.talk 29795
..turnin 13307
step
'Hearth to The Shadow Vault |goto Icecrown,44.0,22.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 43.1,21.1
.talk 30218
..turnin 12982
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
.click Eye of Dominion##8365
.' Seize Control of an Eidolon Watcher |q 13168/1
step
goto 44.1,24.5
.talk 30946
..turnin 13168
..accept 13171
..accept 13169
..accept 13170
step
goto 44.1,24.7
.click Eye of Dominion##8365
.' Seize Control of an Eidolon Watcher |invehicle |c
step
goto 41.5,32.4
.' Use your Eidolon Watcher abilities around this area to:
.' Feed 18 Hungering Plaguehounds |q 13169/1
.' Assassinate 20 Restless Lookouts |q 13170/1
.' Banish 10 Scourge Crystals |q 13171/1 |tip The Scourge Crystals look like big crystals floating above small stone pillars around this area.
|modelnpc Hungering Plaguehound##30952
|modelnpc Restless Lookout##30951
step
.' Click the red arrow on your vehicle hot bar to stop controlling The Eidolon Watcher |outvehicle |c
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
..' Tell him you are prepared to join the assault |invehicle
step
'Use your Firebomb ability as you fly around to:
.' Slaughter 80 Weeping Quarry Undead |q 13172/1
step
.' Click the red arrow on your vehicle hot bar to stop riding the skeleton mount |outvehicle |c
step
goto 37.2,41.6
.click Weeping Quarry Schedule##6817
.get Weeping Quarry Schedule |q 13174/4
step
goto 38.7,39.4
.click Weeping Quarry Map##222
.get Weeping Quarry Map |q 13174/3
step
goto 39.2,36.7
.click Weeping Quarry Ledger##164
.get Weeping Quarry Ledger |q 13174/2
step
goto 39.1,33.6
.click Weeping Quarry Document##163
.get Weeping Quarry Document |q 13174/1
step
goto 44.1,24.5
.talk 30946
..turnin 13172
..turnin 13174
..accept 13155
step
goto 27.2,39.1
.' Click a Njorndar Proto-Drake to ride it |invehicle |q 13071
step
goto 28.4,37.6
.' Use your Proto-Drake abilities near the buildings around this area to:
.' Burn 8 Vrykul Buildings |q 13071/1
step
.' Click the red arrow on your vehicle hot bar to stop riding the Njorndar Proto-Drake |outvehicle |c |q 13071
step
goto 43.3,24.8
.talk 30216
..turnin 13071
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
..' Tell him you would hear his tale |q 12807/1
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
.collect Scarlet Onslaught Trunk Key##40652+ |n
.' Use Darkmender's Tincture on the Onslaught mobs' corpses |use Darkmender's Tincture##40587
.' Transform 10 Scarlet Onslaught Corpses |q 12813/1
.click Scarlet Onslaught Trunk##41
.' You can find trunks here: [Icecrown,5.7,38.6]
.get 5 Onslaught Intel Documents |q 12838/1
.collect Note from the Grand Admiral##40666|n
.click the Note from the Grand Admiral in your bags |use Note from the Grand Admiral##40666
..accept 12839
step
goto 10.5,40.8
.from Ravenous Jaws##29392 |tip They are sharks in the water.
.' Use your Gore Bladder on their corpses |use Gore Bladder##40551
.' Collect 10 Blood from Ravenous Jaws |q 12810/1
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
.from Captain Hartford##29490 |tip Standing on the top deck of the ship, next to the wooden steering wheel.
.' Beat and kill Captain Hartford for information |q 12840/2
step
goto 5.7,41.9
.from Captain Welsington##29489 |tip Standing on the top deck of the ship, next to the wooden steering wheel.
.' Beat and kill Captain Welsington for information |q 12840/1
.' Use your Onslaught Gryphon Reins in your bags |use Onslaught Gryphon Reins##40970
.' Take control of an Onslaught Gryphon |invehicle |q 12814
step
goto 19.6,47.8
.' Use the Deliver Gryphon ability on your gryphon hotbar next to Uzo Deathcaller |tip He's standing on a bunch of scattered straw on the ground.
.' Deliver the Onslaught Gryphon to Uzo Deathcaller |q 12814/1
|modelnpc Uzo Deathcaller##29405
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
.' Use your Bone Gryphon in your bags |use Bone Gryphon##40600
.' Ride a Bone Gryphon |invehicle |q 12815
step
goto 10.2,41.9
.' Use your Bone Gryphon abilities to:
.kill 10 Onslaught Gryphon Rider##29333+ |q 12815/1
step
'Get to a safe place and click the red arrow on your vehicle hot bar to stop riding the Bone Gryphon |outvehicle |c
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
'The entrance to the Sanctum of Reanimation starts here |goto 34.4,68.4,0.3 |c
step
goto 34.6,67.7
.' Use Olakin's Torch on Festering Corpses |use Olakin's Torch##43524 |tip They look like dead soldiers on the ground inside this cave.
.' Burn 7 Festering Corpses |q 13211/1
step
goto 35.8,67.0
.' Follow the path in the cave to this spot
.click Metal Stake##8380
.' Free Patches |q 13152/1
.' Help Patches kill Doctor Sabnok |q 13152/2
step
'Leave the Sanctum of Reanimation |goto 34.4,68.4,0.3 |c
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
.click Grasping Arm##8389
.' Get a Burning Skeleton minion
.' With a Burning Skeleton minion, go to [32.2,71.2]
.' Stand next to Chained Abominations with your Burning Skeleton to burn them |tip They look like fat white abominations chained to the big spikes around the edge of this platform.
.' Repeat this process 2 more times
.' Burn 3 Chained Abominations |q 13144/1
|modelnpc Chained Abomination##30689
step
goto 35.4,66.3
.talk 30631
..turnin 13144
..accept 13212
step
goto 34.0,69.2
.from Corpulent Horror##30696+
.get Olakin's Torso |q 13212/1
.get Olakin's Legs |q 13212/2
.get Olakin's Left Arm |q 13212/3
.get Olakin's Right Arm |q 13212/4
step
goto 35.4,66.3
.talk 30631
..turnin 13212
..accept 13220
step
'The entrance to the Sanctum of Reanimation starts here |goto 34.4,68.4,0.3 |c
step
goto 34.7,66.0
.click Spool of Thread##1747
.collect 1 Spool of Thread##43567 |q 13220
step
goto 36.6,67.6
.' Follow the path in the cave all the way to the end into the doctor's big lab.
.click The Doctor's Cleaver##8392
.collect 1 The Doctor's Cleaver##43568 |q 13220
step
goto 35.6,66.7
.' Follow the path in the cave back up into the main entrance room of the cave
.' Use Crusader Olakin's Remains while standing on the big black stone slab made of skulls |use Crusader Olakin's Remains##43564
.' Revive Crusader Olakin Sainrith |q 13220/1
|modelnpc Crusader Olakin Sainrith##31235
step
'Leave the Sanctum of Reanimation |goto 34.4,68.4,0.3 |c
step
goto 35.4,66.3
.talk 30631
..turnin 13220
..accept 13235
step
goto 29.8,61.3
.talk 31306
..' Tell him let's kill this... thing... and get this over with
.kill Morbidus##30698 |q 13235/1
step
goto 35.4,66.3
.talk 30631
..turnin 13235
step
goto 31.8,64.8
.talk 31279
..accept 13481
.' Escort Father Kamaros to safety |q 13481/1
step
goto 49.2,73.1
.talk 32497
..turnin 13360
..accept 13361
step
goto 49.2,73.9
.click a Bloodstained Stone |tip They look like pointed rocks on the ground around this area.
.' Fight Illidan using your Arthas abilities |tip The best way to kill Illidan is to just keep parrying his attacks until your mana is full.  Once your mana is full, use your knockback ability, followed immediately by your Annihilate ability.  Keep repeating this process until Illidan is dead.
.' Find out the Prince's Destiny |q 13361/1
step
goto 49.2,73.1
.talk 32497
..turnin 13361
..accept 13362
step
goto 54.1,71.2
.talk 30944
..turnin 13155
..accept 13143
step
goto 55.5,71.5
.' Fight a Lithe Stalker until you see a message in your chat that it's weak |tip You can find Lithe Stalkers up on this high bridge.
.' Use your Sigil of the Ebon Blade on a weakened Lithe Stalker |use Sigil of the Ebon Blade##43315
.' Bring the Lithe Stalker off the bridge to [55.4,70.8] |tip If you cannot get this quest to complete, pull two Lithe Stalkers to this point, subdue one then kill the other.
.' Return the Subdued Lithe Stalker |q 13143/1
|modelnpc Lithe Stalker##31323
step
goto 54.1,71.2
.talk 30944
..turnin 13143
..accept 13145
step
goto 56.1,79.8
.' Explore the Altar of Sacrifice |q 13145/1
step
goto 59.0,73.8
.' Explore the Runeworks |q 13145/4
step
goto 58.0,71.3
.' Explore the Blood Forge |q 13145/2
step
goto 60.4,68.7
.' Explore the Icy Lookout |q 13145/3
step
goto 54.1,71.2
.talk 30944
..turnin 13145
..accept 13146
..accept 13147
..accept 13160
step
goto 54.3,70.6
.click the Eye of Dominion##8365 |tip It looks like a red globe floating above a small metal pillar.
.' Seize control of a Lithe Stalker |invehicle |q 13146
step
goto 57.7,73.7
.' Start 5 Worker Fights |q 13147/1 |tip To start a Worker Fight, use your Lithe Stalker Throw Rock ability on Umbral Brutes when they get close to the skeletons around this area.
.' Deliver 4 Scourge Bomb Gifts |q 13146/1 |tip The Scourge Bombs look like spiked round metal bombs on the ground around this area.  Use your Lithe Stalker Iron Chain ability on the Scourge Bombs.  Then, drag the Scourge Bombs next to Lumbering Atrocities.  Lumbering Atrocities look like abominations around this area.
|modelnpc Scourge Bomb##31075
step
goto 59.6,76.2
.' Use your Lithe Stalker Leap ability to jump up the cliff to this spot.
.' Destroy 12 Iceskin Sentries |q 13160/1 |tip The Iceskin Sentries look like gargoyles sitting high up on the cliffside.  Use your Lithe Stalker Leap ability to jump around to them.  Once you get close to them, use your Lithe Stalker Heave ability to destroy them.
|modelnpc Iceskin Sentry##31012
step
.' Click the red arrow on your hot bar to stop controlling a Lithe Stalker |outvehicle|c
step
goto 54.1,71.2
.talk 30944
..turnin 13146
..turnin 13147
..turnin 13160
step
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: [60.6,34.9]
.' Point 2: [68.0,52.5]
.' Point 3: [68.9,27.0]
.'Find Orgrim's Hammer flying around in the sky |tip On you world map, it looks like a ship icon with 2 long red-ish balloons on either side of it.
.talk 29795
..turnin 13362
..accept 13363
step
'On the Orgrim's Hammer airship:
.talk 31261
..turnin 13481
step
goto 79.8,71.8
.talk 31044
..turnin 13363
..accept 13364
step
goto 45.2,77.0
.from Cultist Acolyte##32507+
.collect 1 Cultist Acolyte's Hood##44784 |q 13364
.' Use your Cultist Acolyte's Hood |use Cultist Acolyte's Hood##44784
.' Become disguised as a cultist |havebuff Ability_Rogue_MasterOfSubtlety |q 13364
step
goto 44.4,76.2
.talk 32239
..' Tell him you're ready and follow him into the cathedral
.' Watch the cutscene
.' See Tirion's Gambit |q 13364/1
step
goto 42.8,78.8|n
.' Click the Escape Portal that appears after the cutscene |goto Icecrown,80.2,70.3,0.5 |noway |c
step
goto 79.8,71.8
.talk 31044
..turnin 13364
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Eastern Kingdoms 1-60\\Arathi Highlands",[[
author support@zygorguides.com
condition end achieved(4896)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Arathi Highlands (26-30)\\Arathi Highlands (26-29)"
leechsteps "Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Arathi Highlands (26-30)\\Arathi Highlands (29-30)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Eastern Kingdoms 1-60\\Badlands",[[
author support@zygorguides.com
condition end achieved(4900)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Badlands (44-47)\\Badlands (44-47)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Eastern Kingdoms 1-60\\Blasted Lands",[[
author support@zygorguides.com
condition end achieved(4909)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Blasted Lands (57-60)\\Blasted Lands (57-60)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Eastern Kingdoms 1-60\\Burning Steppes",[[
author support@zygorguides.com
condition end achieved(4901)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Burning Steppes (49-52)\\Burning Steppes (49-52)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Eastern Kingdoms 1-60\\Cape of Stranglethorn",[[
author support@zygorguides.com
condition end achieved(4905)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\The Cape of Stranglethorn (31-36)\\The Cape of Stranglethorn (31-36)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Eastern Kingdoms 1-60\\Eastern Plaguelands",[[
author support@zygorguides.com
condition end achieved(4892)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Eastern Plaguelands (39-44)\\Eastern Plaguelands (39-44)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Eastern Kingdoms 1-60\\Ghostlands",[[
author support@zygorguides.com
condition end achieved(4908)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Ghostlands (12-20)\\Ghostlands (12-20)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Eastern Kingdoms 1-60\\Hillsbrad Foothills",[[
author support@zygorguides.com
condition end achieved(4895)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Hillsbrad Foothills (20-26)\\Hillsbrad Foothills (20-26)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Eastern Kingdoms 1-60\\Hinterlands",[[
author support@zygorguides.com
condition end achieved(4897)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\The Hinterlands (30-34)\\The Hinterlands (30-32)"
leechsteps "Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\The Hinterlands (30-34)\\The Hinterlands (32-34)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Eastern Kingdoms 1-60\\Northern Stranglethorn",[[
author support@zygorguides.com
condition end achieved(4906)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Northern Stranglethorn (26-31)\\Northern Stranglethorn (26-31)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Eastern Kingdoms 1-60\\Searing Gorge",[[
author support@zygorguides.com
condition end achieved(4910)
startlevel 00.00
dynamic on
step
leechsteps "Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Searing Gorge (47-49)\\Searing Gorge (47-49)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Eastern Kingdoms 1-60\\Silverpine Forest",[[
author support@zygorguides.com
condition end achieved(4894)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Silverpine Forest (11-20)\\Silverpine Forest (11-20)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Eastern Kingdoms 1-60\\Swamp of Sorrows",[[
author support@zygorguides.com
condition end achieved(4904)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Swamp of Sorrows (52-54)\\Swamp of Sorrows (52-54)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Eastern Kingdoms 1-60\\Western Plaguelands",[[
author support@zygorguides.com
condition end achieved(4893)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Eastern Kingdoms 1-60\\Western Plaguelands (34-39)\\Western Plaguelands (34-39)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Kalimdor 1-60\\Ashenvale",[[
author support@zygorguides.com
condition end achieved(4976)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Ashenvale (20-26)\\Ashenvale (20-23)"
leechsteps "Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Ashenvale (20-26)\\Ashenvale (23-26)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Kalimdor 1-60\\Azshara",[[
author support@zygorguides.com
condition end achieved(4927)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Azshara (10-22)\\Azshara (10-12)"
leechsteps "Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Azshara (10-22)\\Azshara (12-21)"
leechsteps "Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Azshara (10-22)\\Azshara (21-22)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Kalimdor 1-60\\Desolace",[[
author support@zygorguides.com
condition end achieved(4930)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Desolace (31-36)\\Desolace (31-33)"
leechsteps "Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Desolace (31-36)\\Desolace (33-36)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Kalimdor 1-60\\Dustwallow Marsh",[[
author support@zygorguides.com
condition end achieved(4978)
startlevel 00.00
dynamic on
step
'You must complete the Dustwallow Marsh Leveling Guide before completing this guide section. |tip We recommend being at least level 60 before trying to complete this guide. |script ZGV:SetGuide("Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Dustwallow Marsh (35-39)\\Dustwallow Marsh (35-39)")
|confirm
step
goto Dustwallow Marsh,35.2,30.7
.talk 4791
..accept 1202
step
goto 36.3,31.4
.talk 4500
..accept 27418
.from Overlord Mok'Morokk##4500
.' Drive Overlord Mok'Morokk from Brackenwall Village |q 27418/1
step
goto 36.4,31.9
.talk 4926
..accept 27258
step
goto 37.1,33.1
.talk 4501
..turnin 27418
step
goto 36.9,32.4
.talk 24208
.home Brackenwall Village
step
goto 71.5,51.2
.click Captain's Footlocker##8
.get Captain's Documents |q 1202/1
step
'Hearth to Brackenwall Village |goto 36.9,32.3,0.5 |use Hearthstone##6948 |noway |c
step
goto 35.2,30.7
.talk 4791
..turnin 1202
step
|fly Thunder Bluff
step
goto Thunder Bluff 54.0,80.8
.talk 4943
..turnin 27258
..accept 27292
step
goto 47.0,49.6
.talk 2995
.' Fly to Brackenwall Village, Dustwallow Marsh |goto Dustwallow Marsh,35.6,31.8,0.5 |noway |c
step
goto Dustwallow Marsh 36.4,31.9
.talk 4926
..turnin 27292
..accept 27294
..accept 27293
step
goto 42.9,14.3
.from Grimtotem Elder##23714+
.collect 4 Grimtotem Note##33050 |n
.click the Grimtotem Notes |use Grimtotem Note##33050
.get Grimtotem Battle Plan |q 27293/1
.click Blackhoof Armaments##7425
.get 7 Blackhoof Armaments |q 27294/1
step
goto 36.4,31.9
.talk 4926
..turnin 27294
..turnin 27293
..accept 27295
step
goto 46.0,57.1
.talk 6546
..turnin 27295
..accept 27296
step
goto 47.4,47.5
.' Use Tabetha's Torch inside this tent house |use Tabetha's Torch##33072
.' Burn the East Tent |q 27296/3
step
goto 47.2,46.6
.' Use Tabetha's Torch inside this tent house |use Tabetha's Torch##33072
.' Burn the Northeast Tent |q 27296/2
step
goto 46.6,46.0
.' Use Tabetha's Torch inside this tent house |use Tabetha's Torch##33072
.' Burn the North Tent |q 27296/1
step
goto 46.0,57.1
.talk 6546
..turnin 27296
..accept 27297
step
goto 36.4,31.9
.talk 4926
..turnin 27297
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Kalimdor 1-60\\Felwood",[[
author support@zygorguides.com
condition end achieved(4931)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Felwood (47-51)\\Felwood (47-48)"
leechsteps "Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Felwood (47-51)\\Felwood (48-51)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Kalimdor 1-60\\Feralas",[[
author support@zygorguides.com
condition end achieved(4979)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Feralas (36-40)\\Feralas (36-40)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Kalimdor 1-60\\Northern Barrens",[[
author support@zygorguides.com
condition end achieved(4933)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Northern Barrens (10-20)\\Northern Barrens (10-13)"
leechsteps "Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Northern Barrens (10-20)\\Northern Barrens (13-17)"
leechsteps "Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Northern Barrens (10-20)\\Northern Barrens (17-20)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Kalimdor 1-60\\Silithus",[[
author support@zygorguides.com
condition end achieved(4934)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Silithus (55-57)\\Silithus (55-57)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Kalimdor 1-60\\Stonetalon Mountains",[[
author support@zygorguides.com
condition end achieved(4980)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Stonetalon Mountains (26-31)\\Stonetalon Mountains (26-31)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Kalimdor 1-60\\Southern Barrens",[[
author support@zygorguides.com
condition end achieved(4981)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Southern Barrens (31-35)\\Southern Barrens (31-34)"
leechsteps "Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Southern Barrens (31-35)\\Southern Barrens (34-35)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Kalimdor 1-60\\Tanaris",[[
author support@zygorguides.com
condition end achieved(4935)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Tanaris (44-47)\\Tanaris (44-47)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Kalimdor 1-60\\Thousand Needles",[[
author support@zygorguides.com
condition end achieved(4938)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Thousand Needles (39-44)\\Thousand Needles (39-44)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Kalimdor 1-60\\Un'Goro Crater",[[
author support@zygorguides.com
condition end achieved(4939)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Un'Goro Crater (55-57)\\Un'Goro Crater (55-57)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Kalimdor 1-60\\Winterspring",[[
author support@zygorguides.com
condition end achieved(4940)
startlevel 00.00
dynamic on
leechsteps "Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Winterspring (51-55)\\Winterspring (51-52)"
leechsteps "Zygor's Horde Leveling Guides\\Kalimdor 1-60\\Winterspring (51-55)\\Winterspring (52-55)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Outland 60-70\\Hellfire Peninsula",[[
author support@zygorguides.com
condition end achieved(1271)
startlevel 00.00
dynamic on
step
'You must complete the Hellfire Peninsula Leveling Guide before completing this guide section. |tip We recommend being at least level 80 before trying to complete this guide. |script ZGV:SetGuide("Zygor's Horde Leveling Guides\\Outland 60-70\\Hellfire Peninsula (60-62)")
|confirm
step
goto Hellfire Peninsula,55.0,36.0
.talk 3230
..accept 10136
..accept 10876
step
goto 43.9,31.6
.kill Arazzius the Cruel##19191 |q 10136/1
step
goto 47.3,49.6
.from Force-Commander Gorax##19264 |tip He walks back and forth in this small area.
.' Use your Challenge from the Horde on Force-Commander Gorax's corpse |use Challenge from the Horde##31702
.from Hand of Kargath##22374
.get The Head of the Hand of Kargath |q 10876/1
step
goto 55.0,36.0
.talk 3230
..turnin 10136
..turnin 10876
step
goto 15.6,52.0
.talk 19293
..accept 10132
step
goto 14.7,44.6
.kill 5 Raging Colossus##19188+ |q 10132/1
.collect Crimson Crystal Shard##29476 |n
.click the Crimson Crystal Shard in your bags |use Crimson Crystal Shard##29476
..accept 10134
step
goto 15.6,52.0
.talk 19293
..turnin 10132
..turnin 10134
..accept 10349
step
goto 16.0,51.6
.talk 19294
..turnin 10349
..accept 10351
step
goto 13.6,39.1
.' Use your Seed of Revitalization while standing on the Earthbinder's Circle |use Seed of Revitalization##29478 |tip It's a bright green symbol on the ground.
.from Goliathon##19305
.' Revitalize Fallen Sky Ridge |q 10351/1
step
goto 16.0,51.6
.talk 19294
..turnin 10351
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Outland 60-70\\Zangarmarsh",[[
author support@zygorguides.com
condition end achieved(1190)
startlevel 00.00
dynamic on
step
'You must complete the Zangarmarsh Leveling Guide before completing this guide section. |tip We recommend being at least level 80 before trying to complete this guide. |script ZGV:SetGuide("Zygor's Horde Leveling Guides\\Outland 60-70\\Zangarmarsh (62-64)")
.' Skip to the next step in the guide
step
goto Zangarmarsh,79.1,64.9
.click the Wanted Poster |tip It's a piece of paper hanging on the wall of this tower.
..accept 9730
..accept 9817
step
goto 65.1,68.7
.kill Rajah Haghazed##18046 |q 9730/1
step
goto 65.2,40.9
.kill Rajis Fyashe##18044 |q 9817/1
step
goto 79.1,65.3
.talk 17858
..turnin 9730
..turnin 9817
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Outland 60-70\\Terokkar Forest",[[
author support@zygorguides.com
condition end achieved(1272)
startlevel 00.00
dynamic on
step
'You must complete the Terokkar Forest Leveling Guide before completing this guide section. |tip We recommend being at least level 80 before trying to complete this guide. |script ZGV:SetGuide("Zygor's Horde Leveling Guides\\Outland 60-70\\Terokkar Forest (64-66)")
|confirm
step
goto Shattrath City,48.2,18.7
.talk 22429
..accept 10917
step
goto 58.0,15.2
.talk 19045
..accept 10180 |or
..accept 10097 |or
step
goto Terokkar Forest,50.2,17.4
.from Shienor Talonite##18449+, Shienor Sorcerer##18450+
.get 30 Arakkoa Feather |q 10917/1
step
goto 73.9,35.2
.talk 18760
..accept 10052
.' Follow her as she walks and protect her
.' Escort Isla Starmane to safety |q 10052/1
step
goto 48.9,44.6
.talk 18712
..turnin 10052
step
goto 49.3,45.9
.talk 18705
..accept 10036
step
goto 43.3,51.7
.from Trachela##21515 |tip It's a big two-headed white bird that flies around this area.
.collect Trachela's Carcass##30618 |q 10036
step
goto 37.0,49.5
.talk 18675
..accept 10030
step
goto 32.4,56.5
.click Restless Bones##6328 |tip They look like white-glowing bones laying on the ground all around this area.  They are kind of rare, so you may need to search around a little for them.
.get 10 Restless Bones |q 10030/1
step
goto 26.9,55.6
.' Use Trachela's Carcass next to Torgos's Bane |use Trachela's Carcass##30618 |tip It's a big blue-glowing bird scarecrow.
.from Torgos##18707
.get Tail Feather of Torgos |q 10036/1
step
goto 31.2,52.7 |n
.' Enter the crypt |goto 31.2,52.7,0.5 |noway |c
step
goto 30.6,49.1
.talk 22377
..accept 10887
step
goto 33.8,51.6 |n
.' Protect Akuno and escort him to this spot |goto 33.8,51.6,0.5 |noway |c |q 10887
.' Help Akuno find his way to the Refugee Caravan |q 10887/1
step
goto 38.1,51.8
.talk 22370
..turnin 10887
step
goto 37.3,65.6 |n
.' Fly into the Ring of Observance and follow this path |goto 37.3,65.6,0.5 |noway |c
step
goto 35.1,65.1
.talk 19697
..accept 10227
step
goto 35.1,66.3
.talk 19417
..turnin 10030
..accept 10031
..turnin 10227
..accept 10228
step
goto 37.3,65.6 |n
.' Go outside and fly from this spot |goto 37.3,65.6,0.5 |noway |c
step
goto 31.7,64.9
.kill 10 Lost Spirit##18460+ |q 10031/1
step
goto 31.0,76.2
.talk 22481
..accept 10929
step
goto 31.1,76.5
.talk 22456
..accept 10923
step
goto 37.6,77.3
.' Use your Fumper while standing on the ground |use Fumper##31810 |tip You can just keep using it in the same spot, it doesn't matter.
.from Mature Bone Sifter##22482+
.get 8 Mature Bone Sifter Carcass |q 10929/1
step
goto 31.0,76.2
.talk 22481
..turnin 10929
..accept 10930
step
goto 40.1,77.5
.kill 10 Broken Skeleton##16805+ |q 10031/2
.' You can find more around [48.2,71.9]
step
goto 48.0,75.1
.from Decrepit Clefthoof##22105+
.' Use your Fumper next to Decrepit Clefthoof corpses |use Fumper##31825 |tip You may have to do this multiple times until the huge worm, Hai'shulud spawns.
.from Hai'shulud##22038
.get Enormous Bone Worm Organs |q 10930/1
step
goto 49.7,76.2
.talk 22462
..accept 10921
step
goto 54.1,81.7
.kill Terokkarantula##20682 |q 10921/1
step
goto 49.7,76.2
.talk 22462
..turnin 10921
..accept 10926
step
goto 53.7,72.3
.talk 22424
..accept 10898
.' Follow Skywing and protect him
.' Escort Skywing |q 10898/1
step
goto 50.0,67.8
.from Auchenai Death-Speaker##21242+, Auchenai Doomsayer##21285+
.collect 20 Doom Skull##31812 |q 10923
step
goto 48.7,67.2
.' Use your Dread Relic on the Writhing Mound Summoning Circle |use Dread Relic##31811 |tip It looks like a purple glowing symbol on the ground.
.kill Teribus the Cursed##22441 |q 10923/1
step
goto 42.1,65.6 |n
.' Fly into the Ring of Observance and follow this path |goto 42.1,65.6,0.5 |noway |c
step
goto Terokkar Forest 44.9,65.6 |n
.' Enter Sethekk Halls here. |goto Sethekk Halls |noway |c
step
goto 72.2,35.5
.talk 18933
..turnin 10180
step
goto Terokkar Forest,42.1,65.6 |n
.' Go outside and fly from this spot |goto 42.1,65.6,0.5 |noway |c
step
goto 31.4,75.7
.talk 22364
..turnin 10926
step
goto 31.0,76.2
.talk 22481
..turnin 10930
step
goto 31.1,76.5
.talk 22456
..turnin 10923
step
goto 37.0,49.5
.talk 18675
..turnin 10031
step
goto 49.3,45.9
.talk 18705
..turnin 10036
step
goto Shattrath City,53.7,32.6
.talk 19715
..turnin 10228
step
goto 52.6,21.0
.talk 22292
..turnin 10898
step
goto 50.3,18.3
.talk 22429
..turnin 10917
step
goto Nagrand,55.2,36
.talk 18301
..accept 9983
step
goto 27.3,43.1
.talk 18417
..turnin 9983
..accept 9991 |tip Make sure you dismount before accepting this quest, or you will have to abandon it, and pick it back up.
step
'You will fly off on a nether drake:
.' Survey the Forge Camps |q 9991/1
step
goto 27.3,43.1
.talk 18417
..turnin 9991
..accept 9999
step
goto 25.2,38.3
.kill 2 Felguard Legionnaire##17152+ |q 9999/1
.kill 3 Mo'arg Engineer##16945+ |q 9999/2
.kill 8 Gan'arg Tinkerer##17151+ |q 9999/3
step
goto 27.3,43.1
.talk 18417
..turnin 9999
..accept 10001
step
goto 23.6,34.6
.from Mo'arg Master Planner##18567
.get The Master Planner's Blueprints |q 10001/1
step
goto 27.3,43.1
.talk 18417
..turnin 10001
..accept 10004
step
goto Shattrath City,77.3,34.9
.talk 18584
..' Tell him Altruis sent you
.from Sal'salabim##18584
.' Persuade Sal'salabim |q 10004/1
step
goto 77.3,34.9
.talk 18584
..turnin 10004
..accept 10009
step
goto 75.0,31.4
.talk 18585
..' Tell him you've been sent by Sal'salabim to collect a debt that you owe
.from Raliq the Drunk##18585
.get Raliq's Debt |q 10009/1
step
goto Zangarmarsh,80.8,91.2
.talk 18586
..' Tell him you've been sent by Sal'salabim to collect a debt that you owe
.from Coosh'coosh##18586
.get Coosh'coosh's Debt |q 10009/2
step
goto Terokkar Forest,27.6,58.1
.talk 18588
..' Tell him you've been sent by Sal'salabim to collect a debt that you owe
.from Floon##18588
.get Floon's Debt |q 10009/3
step
goto Shattrath City,77.3,34.9
.talk 18584
..turnin 10009
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Outland 60-70\\Nagrand",[[
author support@zygorguides.com
condition end achieved(1273)
startlevel 00.00
dynamic on
step
'You must complete the Nagrand Leveling Guide before completing this guide section. |tip We recommend being at least level 80 before trying to complete this guide. |script ZGV:SetGuide("Zygor's Horde Leveling Guides\\Outland 60-70\\Nagrand (66-67)")
|confirm
step
goto Nagrand,71.6,40.5
.talk 18200
..accept 9856
step
goto 71.4,40.6
.talk 18218
..accept 9859
step
goto 71.5,40.8
.talk 18180
..accept 9851
step
goto 55.2,36.1
.talk 18301
..accept 9983
step
goto 59.8,23.2
.talk 18099
..accept 9853
step
goto 47.0,23.8
.from Warmaul Shaman##18064+, Warmaul Reaver##17138+
.collect 7 Warmaul Skull##24502 |q 9853
step
goto 42.8,20.7
.talk 18471
..accept 9962
step
goto 43.6,20.4
.from Brokentoe##18398
.' Defeat Brokentoe |q 9962/1
step
goto 42.8,20.7
.talk 22893
..turnin 9962
step
goto 42.8,20.7
.talk 18471
..accept 9967
step
goto 43.6,20.4
.from Murkblood Twin##18399+
.' Defeat The Blue Brothers |q 9967/1
step
goto 42.8,20.7
.talk 22893
..turnin 9967
step
goto 42.8,20.7
.talk 18471
..accept 9970
step
goto 43.6,20.4
.from Rokdar the Sundered Lord##18400
.' Defeat Rokdar the Sundered Lord |q 9970/1
step
goto 42.8,20.7
.talk 22893
..turnin 9970
step
goto 42.8,20.7
.talk 18471
..accept 9972
step
goto 43.6,20.4
.from Skra'gath##18401
.' Defeat Skra'gath |q 9972/1
step
goto 42.8,20.7
.talk 22893
..turnin 9972
step
goto 42.8,20.7
.talk 18471
..accept 9973
step
goto 43.6,20.4
.from Warmaul Champion##18402
.' Defeat the Warmaul Champion |q 9973/1
step
goto 42.8,20.7
.talk 22893
..turnin 9973
step
goto 42.8,20.7
.talk 18471
..accept 9977
step
goto 43.6,20.4
.from Mogor##18069
.' Defeat Mogor, Hero of the Warmaul |q 9973/1
step
goto 42.8,20.7
.talk 22893
..turnin 9977
step
goto 29.1,25.0
.' Use your Warmaul Skulls in this big purple circle |use Warmaul Skull##24502 |tip It's on a high plateau.
.from Gurok the Usurper##18182
.get Gurok's Earthen Head |q 9853/1
step
goto 31.5,31.4
.from Gutripper##18257 |tip He's a big black bird that flies around this area.
.get Eye of Gutripper |q 9856/1
step
goto 32.3,36.1
.talk 18414
..accept 9946
step
goto 27.6,11.3 |n
.' Enter the cave |goto 27.6,11.3,0.5 |noway |c
step
goto 25.9,13.7
.' Follow the path up inside the cave
.from Cho'war the Pillager##18423
.get Head of Cho'war |q 9946/1
step
goto 32.3,36.1
.talk 18414
..turnin 9946
step
goto 27.3,43.1
.talk 18417
..turnin 9983
..accept 9991
step
'You will fly off on a nether drake:
.' Survey the Forge Camps |q 9991/1
step
goto 27.3,43.1
.talk 18417
..turnin 9991
..accept 9999
step
goto 25.2,38.3
.kill 2 Felguard Legionnaire##17152+ |q 9999/1
.kill 3 Mo'arg Engineer##16945+ |q 9999/2
.kill 8 Gan'arg Tinkerer##17151+ |q 9999/3
step
goto 27.3,43.1
.talk 18417
..turnin 9999
..accept 10001
step
goto 23.6,34.6
.from Mo'arg Master Planner##18567
.get The Master Planner's Blueprints |q 10001/1
step
goto 27.3,43.1
.talk 18417
..turnin 10001
..accept 10004
step
goto 25.8,53.8
.from Bach'lor##18258 |tip He is a talbuk that walks around following these points:
.get Hoof of Bach'lor |q 9859/1
.' Point 1: [25.8,53.8]
.' Point 2: [24.0,44.0]
.' Point 3: [28.8,34.6]
.' Point 4: [30.8,36.6]
step
goto 31.3,44.1
.from Murkblood Brute##18211+
.talk 18210
..accept 9868
.' Escort and protect the Mag'har Captive
.' Free the Mag'har Captive |q 9868/1
step
goto 40.8,61.1
.from Banthar##18259 |tip He's a huge clefthoof that walks around this area, so you may need to search for him.
.get Horn of Banthar |q 9851/1
step
goto 39.9,57.6
.from Murkblood Invader##18238+ |tip They are a group of 3 riding on elephants.  They walk on this road back and forth, so you may need to search for them.
.collect Murkblood Invasion Plans##24558 |n
.click the Murkblood Invasion Plans in your bags |use Murkblood Invasion Plans##24558
..accept 9872
step
goto 61.7,67.2
.talk 19035
..accept 10111
step
goto 61.3,67.0
.' Fly up to the nest in the tree
.click Mysterious Egg##3851
.' Attempt to Steal the Egg |q 10111/1
.from Windroc Matriarch##19055
.get Severed Talon of the Matriarch |q 10111/2
step
goto 61.7,67.2
.talk 19035
..turnin 10111
step
goto 55.4,37.6
.talk 18063
..turnin 9872
..turnin 9868
step
goto 59.8,23.2
.talk 18099
..turnin 9853
step
goto 71.6,40.5
.talk 18200
..turnin 9856
step
goto 71.4,40.6
.talk 18218
..turnin 9859
step
goto 71.5,40.8
.talk 18180
..turnin 9851
..accept 9852
step
goto Shattrath City,77.3,34.9
.talk 18584
..' Tell him Altruis sent you
.from Sal'salabim##18584
.' Persuade Sal'salabim |q 10004/1
step
goto 77.3,34.9
.talk 18584
..turnin 10004
..accept 10009
step
goto 75.0,31.4
.talk 18585
..' Tell him you've been sent by Sal'salabim to collect a debt that you owe
.from Raliq the Drunk##18585
.get Raliq's Debt |q 10009/1
step
goto Zangarmarsh,80.8,91.2
.talk 18586
..' Tell him you've been sent by Sal'salabim to collect a debt that you owe
.from Coosh'coosh##18586
.get Coosh'coosh's Debt |q 10009/2
step
goto Terokkar Forest,27.6,58.1
.talk 18588
..' Tell him you've been sent by Sal'salabim to collect a debt that you owe
.from Floon##18588
.get Floon's Debt |q 10009/3
step
goto Shattrath City,77.3,34.9
.talk 18584
..turnin 10009
..accept 10010
step
goto Nagrand,44.5,65.4
.from Tusker##18290
.get Heart of Tusker |q 9852/1
step
goto 27.3,43.1
.talk 18417
..turnin 10010
..accept 10011
step
goto 25.0,36.1
.from Demos, Overseer of Hate##18535
.collect Fel Cannon Activator##25770 |q 10011
step
goto 25.1,36.0
.' Use your Fel Cannon Activator on the Fel Cannon: Hate |use Fel Cannon Activator##25770
.' Destroy Forge Camp: Hate |q 10011/1
step
goto 19.6,51.1
.from Xirkos, Overseer of Fear##18536
.collect Fel Cannon Activator##25771 |q 10011
step
goto 19.4,50.8
.' Use your Fel Cannon Activator on the Fel Cannon: Fear |use Fel Cannon Activator##25771
.' Destroy Forge Camp: Fear |q 10011/2
step
goto 27.3,43.1
.talk 18417
..turnin 10011
step
goto 71.5,40.8
.talk 18180
..turnin 9852
step
goto 55.8,37.9
.talk 18407
..accept 9937
step
goto 55.4,37.6
.talk 18063
..accept 10044
step
goto 56.7,34.3
.talk 18141
..' Tell her Garrosh told you she wanted to speak to you
.' Listen to Greatmother Geyah |q 10044/1
step
goto 56.7,34.3
.talk 18141
..turnin 10044
..accept 10045
step
goto 58.7,53.8
.click Telaari Frond##701
.get Telaari Frond |q 10045/3
step
goto Terokkar Forest 32.7,38.5
.click Olemba Root##414
.get Olemba Root |q 10045/1
step
goto Blade's Edge Mountains 39.6,72.4
.click Dragonspine##2313 |tip They are usually next to the big spike rock formations.
.get Dragonspine |q 10045/4
step
goto Zangarmarsh 20.0,8.6
.click Marshberry##7030 |tip They look like big red balls on the ground around this area.
.get Marshberry |q 10045/2
step
goto Nagrand 56.7,34.3
.talk 18141
..turnin 10045
..accept 10081
step
goto 46.4,63.7
.kill Durn the Hungerer##18411 |q 9937/1 |tip He walks all around this area.  You will probably need to search for him.
step
goto 26.1,60.6
.talk 18687
..turnin 10081
..accept 10082
step
goto 26.4,60.3
.kill 8 Agitated Orc Spirit##18043+ |q 10082/1
step
goto 26.1,60.6
.talk 18687
..turnin 10082
..accept 10085
step
goto 31.6,43.7
.' Go to this spot
.' Visit Sunspring Post |q 10085/1
step
goto 46.7,23.6
.' Go to this spot
.' Visit the Laughing Skull Clan Ruins |q 10085/2
step
goto 54.6,36.1
.' Go to this spot
.' Visit Garadar |q 10085/3
step
goto 55.8,38.0
.talk 18407
..turnin 9937
step
goto 55.4,37.5
.talk 18090
..accept 11048
step
goto Terokkar Forest,20.0,63.0
.' Go to this spot
.' Visit the Bleeding Hollow Clan Ruins |q 10085/4
step
goto Shadowmoon Valley,30.4,32.4
.talk 21359
..turnin 11048
step
goto 61.2,29.2
.talk 21860
..accept 10587
only if rep ('The Aldor') >= Neutral
step
goto 71.1,52.0
.from Demon Hunter Initiate##21180+, Demon Hunter Supplicant##21179+
.get 8 Sunfury Glaive |q 10587/1
only if rep ('The Aldor') >= Neutral
step
goto 61.2,29.2
.talk 21860
..turnin 10587
..accept 10637
only if rep ('The Aldor') >= Neutral
step
goto 69.3,48.7
.from Sunfury Warlock##21503+, Sunfury Summoner##21505+
.collect Scroll of Demonic Unbanishing##30811 |q 10637
only if rep ('The Aldor') >= Neutral
step
goto 70.0,51.4
.' Use the Scroll of Demonic Unbanishing on Azaloth |use Scroll of Demonic Unbanishing##30811 |tip He's a big fat dragon, holding a huge sword.
.' Free Azaloth |q 10637/1
only if rep ('The Aldor') >= Neutral
step
goto 61.2,29.2
.talk 21860
..turnin 10637
..accept 10640
only if rep ('The Aldor') >= Neutral
step
goto 55.7,58.2
.talk 21954
..accept 10687
only if rep ('The Scryers') >= Neutral
step
goto 71.1,52.0
.from Demon Hunter Initiate##21180+, Demon Hunter Supplicant##21179+
.get 8 Sunfury Glaive |q 10687/1
only if rep ('The Scryers') >= Neutral
step
goto 55.7,58.2
.talk 21954
..turnin 10687
..accept 10688
only if rep ('The Scryers') >= Neutral
step
goto 69.3,48.7
.from Sunfury Warlock##21503+, Sunfury Summoner##21505+
.collect Scroll of Demonic Unbanishing##30811 |q 10688
only if rep ('The Scryers') >= Neutral
step
goto 70.0,51.4
.' Use the Scroll of Demonic Unbanishing on Azaloth |use Scroll of Demonic Unbanishing##30811 |tip He's a big fat dragon, holding a huge sword.
.' Free Azaloth |q 10688/1
|modelnpc Azaloth##21506
only if rep ('The Scryers') >= Neutral
step
goto 55.7,58.2
.talk 21954
..turnin 10688
..accept 10689
only if rep ('The Scryers') >= Neutral
step
goto Nagrand,26.1,60.6
.talk 18687
..turnin 10085
..accept 10101
step
goto 35.8,67.6 |n
.' Enter Oshu'gun |goto 35.8,67.6,0.5 |noway |c
step
goto 35.5,77.8
.' Follow the path inside Oshu'gun
.talk 17545
..turnin 10101
..accept 10102
step
goto 35.8,67.6 |n
.' Leave Oshu'gun |goto 35.8,67.6,0.5 |noway |c
step
goto 27.3,43.1
.talk 18417
..turnin 10640 |only if rep ('The Aldor') >= Neutral
..turnin 10689 |only if rep ('The Scryers') >= Neutral
..accept 10641
..accept 10668
..accept 10669
step
goto Zangarmarsh 16.2,40.7
.' Use your Imbued Silver Spear in this spot |use Imbued Silver Spear##30853
.kill Xeleth##21894 |q 10669/1
step
goto Netherstorm 39.6,20.5
.from Wrath Priestess##18859+
.collect Freshly Drawn Blood##30850 |n
.' Use the Freshly Drawn Blood immediately |use Freshly Drawn Blood##30850 |tip It only last 1 minute, then it disappears if you don't use it in time.
.kill Avatar of Sathal##21925 |q 10641/1
step
goto Shattrath City 54.1,44.7
.talk 18481
..turnin 10102
..accept 10167
step
goto Terokkar Forest 37.2,65.6 |n
.' Follow this path |goto Terokkar Forest,37.2,65.6,0.5 |noway |c
step
goto 34.3,65.6 |n
.' Enter the Auchenai Crypts dungeon |goto Auchenai Crypts |noway |c
step
'Follow the path in the Auchenai Crypts dungeon to the very end
.kill Exarch Maladaar##18373 |q 10167/1
.talk 19412 |tip It's a big white floating alien being that appears after you kill Exarch Maladaar.
..turnin 10167
..accept 10168
.click a Soul Mirror |tip They look like big pink floating crystals near the walls inside the Auchenai Crypts dungeon.
.get Soul Mirror |q 10168/2
step
'Leave the Auchenai Crypts dungeon
.' Go outside to Terokkar Forest |goto Terokkar Forest |noway |c
step
goto Terokkar Forest 37.2,65.6 |n
.' Fly from this spot |goto Terokkar Forest,37.2,65.6,0.5 |noway |c
step
goto Shadowmoon Valley 28.3,49.5
.kill Lothros##21928 |q 10668/1 |tip He walks around this area, so you may need to search for him.
step
goto Nagrand 35.9,66.3
.' Use your Soul Mirror on Ancient Orc Ancestors |use Soul Mirror##28283 |tip They are ghosts that walk from all around this area to the entrance of this cave.  You can find them quickly by searching all around this area.
.kill 15 Darkened Spirit##19480+ |q 10168/1
|modelnpc Ancient Orc Ancestor##18688
step
goto 26.1,60.6
.talk 18687
..turnin 10168
..accept 10170
step
goto 27.3,43.1
.talk 18417
..turnin 10641
..turnin 10668
..turnin 10669
..accept 10646
step
goto 27.3,43.1
.talk 18417
..' Ask him to tell you about the demon hunter training grounds at the Ruins of Karabor
.' Listen to Illidan's Pupil |q 10646/1
step
goto 27.3,43.1
.talk 18417
..turnin 10646
step
goto 56.7,34.3
.talk 18141
..turnin 10170
..accept 10171
step
goto 55.4,37.6
.talk 18063
..turnin 10171
..accept 10172
step
goto 56.7,34.3
.talk 18141
..' Tell her that Garrosh is beyond redemption
.' Speak to Greatmother Geyah |q 10172/1
step
goto 56.7,34.3
.talk 18141
..turnin 10172
step
'Kill any type of mob in Nagrand, except ogres
.collect 10 Oshu'gun Crystal Powder Sample##26042 |future |q 10074
step
goto 41.2,44.3
.talk 18816 |tip You will only be able to see her if the Horde controls Halaa.  If the Alliance controls Halaa, kill the Alliance guards in Halaa to take control of Halaa for the Horde.
..accept 10074
..turnin 10074
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Outland 60-70\\Blade's Edge Mountains",[[
author support@zygorguides.com
condition end achieved(1193)
startlevel 00.00
dynamic on
step
'You must complete the Blade's Edge Mountains Leveling Guide before completing this guide section. |tip We recommend being at least level 80 before trying to complete this guide. |script ZGV:SetGuide("Zygor's Horde Leveling Guides\\Outland 60-70\\Blade's Edge Mountains (67-68)")
|confirm
step
goto Blade's Edge Mountains,51.8,58.3
.talk 21984
..accept 10724
step
goto 55.4,45.3
.talk 22995
..accept 10989
step
goto 55.5,44.9
.talk 22941
..turnin 10989
..accept 10995
..accept 10996
..accept 10997
step
goto 61.0,47.6
.from Grulloc##20216
.click Grulloc's Dragon Skull##7354 |tip It spawns on the ground after you kill Grulloc.
.get Grulloc's Dragon Skull |q 10995/1
step
goto 64.6,54.9
.from Maggoc##20600 |tip He is a brown giant that patrols this path to the west and the east, so you will probably need to search for him.
.click Maggoc's Treasure Chest##41 |tip It spawns on the ground after you kill Maggoc.
.get Maggoc's Treasure Chest |q 10996/1
step
goto 55.5,44.9
.talk 22941
..turnin 10995
..turnin 10996
step
goto 62.2,40.1
.talk 22127
..' Ask him if he has another Felsworn Gas Mask
.collect Felsworn Gas Mask##31366 |future |q 10821
step
goto 73.3,40.1
.' Use your Felsworn Gas Mask to equip it |use Felsworn Gas Mask##31366
.' Wear the Felsworn Gas Mask |havebuff Interface\Icons\INV_Helmet_31 |c |future |q 10821
step
goto 73.3,40.1
.click the Legion Communicator |tip It looks like a metal altar sitting on the ground.
..accept 10821
step
goto 73.0,41.0
.from Anger Guard##16952+
.collect 5 Camp Anger Key##31536 |q 10821
step
goto 73.5,43.5
.click Legion Obelisk##7017
|confirm
step
goto 75.3,41.7
.click Legion Obelisk##7017
|confirm
step
goto 73.8,41.0
.click Legion Obelisk##7017
|confirm
step
goto 75.4,40.6
.click Legion Obelisk##7017
|confirm
step
goto 74.0,39.9
.click Legion Obelisk##7017
|confirm
step
goto 74.3,42.5
.kill Doomcryer##19963 |q 10821/1
step
goto 62.1,20.3
.from Bladespire Enforcer##19997+
.collect Wyvern Cage Key##31755 |q 10724
step
goto 65.7,20.2
.' Go to this spot
.' Use Spirit's Whistle |use Spirit's Whistle##31144
.' Rescue Leokk |q 10724/1
step
goto 62.4,38.4
.talk 22127
..turnin 10821
..accept 10910
step
goto 63.2,65.5
.' Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
.talk 22423
..turnin 10910
..accept 10904
step
goto 63.8,66.5
.from Death's Might##21519+, Deathforge Over-Smith##19978+, Death's Watch##21516+
.get 5 Fel Cannonball |q 10904/1
step
'Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
.talk 22423
..turnin 10904
..accept 10911
step
goto 64.8,68.3
.' Use your Naturalized Ammunition next to the Death's Door Fel Cannon |use Naturalized Ammunition##31807 |tip It looks like a big metal green-glowing bullet shaped machine.
.' Use the Artillery on the Warp-Gate ability 7 times
.' Destroy the South Warp-Gate |q 10911/1
|modelnpc Death's Door Fel Cannon##22443
step
goto 62.0,60.3
.' Use your Naturalized Ammunition next to the Death's Door Fel Cannon |use Naturalized Ammunition##31807 |tip It looks like a big metal green-glowing bullet shaped machine.
.' Use the Artillery on the Warp-Gate ability 7 times
.' Destroy the North Warp-Gate |q 10911/2
step
'Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
.talk 22423
..turnin 10911
..accept 10912
step
goto 63.6,59.1
.kill Baelmon the Hound-Master##19747 |q 10912/1
step
goto 51.8,58.3
.talk 21984
..turnin 10724
..accept 10742
step
goto 62.7,39.4
.talk 22127
..turnin 10912
step
goto 64.2,18.6
.' Use Rexxar's Battle Horn next to the Altar of Goc |tip It looks like a large gray stone table on the ground.
.kill Goc##20555 |q 10742/1
step
goto 51.8,58.3
.talk 21984
..turnin 10742
step
goto Terokkar Forest 20.5,17.7
.from Slaag##22199 |tip He is a brown giant inside this big round building.  You will have to fly to reach it.
.click Slaag's Standard##7215 |tip It spawns after you kill Slaag.
.get Slaag's Standard |q 10997/1
step
goto Blade's Edge Mountains 55.5,44.9
.talk 22941
..turnin 10997
..accept 10998
step
goto 77.5,30.5
.' Stand in this ring of fire on the ground
.from Vim'gol the Vile##22911
.click Vim'gol's Vile Grimoire##255 |tip It's a red book that spawns on Vim'gol the Vile's stomach after you kill him.
.get Vim'gol's Vile Grimoire |q 10998/1
step
goto 55.5,44.9
.talk 22941
..turnin 10998
..accept 11000
step
goto 60.0,24.1
.' Use Vim'gol's Grimoire while standing on the stone table |use Vim'gol's Grimoire##32467
.from Sundered Spirit##22912+
.' Protect The Soulgrinder |tip It is a purple circular object that appears after you read Vim'gol's Grimoire.
.from Skulloc Soulgrinder##22910
.click Skulloc's Soul##7244 |tip It's a big green glowing orb that appears after you kill Skulloc Soulgrinder.
.get Skulloc's Soul |q 11000/1
step
goto 55.5,44.9
.talk 22941
..turnin 11000
..accept 11009
step
goto 28.8,57.4
.talk 23233
..turnin 11009
..accept 11025
step
goto 29.2,65.2
.click Apexis Shard Formation##7210+ |tip They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.get 5 Apexis Shard |q 11025/1
step
goto 28.8,57.4
.talk 23233
..turnin 11025
..accept 11058
step
goto 28.4,57.6
.talk 23316
..accept 11030
step
goto 29.2,65.2
.click Apexis Shard Formation##7210+ |tip They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect Apexis Shard##32569 |q 11058
step
goto 31.5,63.4
.click Apexis Relic##7378 |tip It looks like a smaller floating crystal hovering over a white orb on the ground.
..' Insert an Apexis Shard, and begin!
.' Repeat the color patterns that are shown |tip Ignore the floating crystal now, focus on the crystals on the ground.  You will be shown a color sequence.  Once the sequence is done, you have to click the stones on the ground in the same order.  It's random every time, and you'll have to repeat 6 sequences.  It helps to stand directly under the floating crystal and move your camera up so you are looking down at the top of your head.
.' Attain the Apexis Vibrations |q 11058/1
.' If you fail, get another Apexis Shard around 29.2,65.2
step
goto 28.8,57.4
.talk 23233
..turnin 11058
..accept 11080
step
goto 29.2,65.2
.click Apexis Shard Formation##7210+ |tip They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect Apexis Shard##32569 |q 11080
step
goto 31.5,63.4
.click Apexis Relic##7378 |tip It looks like a smaller floating crystal hovering over a white orb on the ground.
..' Insert an Apexis Shard, and begin!
.' Repeat the color patterns that are shown |tip Ignore the floating crystal now, focus on the crystals on the ground.  You will be shown a color sequence.  Once the sequence is done, you have to click the stones on the ground in the same order.  It's random every time, and you'll have to repeat 8 sequences.  It helps to stand directly under the floating crystal and move your camera up so you are looking down at the top of your head.
.' Attain the Apexis Vibrations |q 11080/1
.' If you fail, get another Apexis Shard around 29.2,65.2
step
goto 28.8,57.4
.talk 23233
..turnin 11080
step
goto 31.2,52.2
.click Apexis Shard Formation##7210+ |tip They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect 10 Apexis Shard##32569 |q 11030
step
goto 32.8,40.5
.click a Fel Crystalforge##7391 |tip It looks like a metal machine with green bubbling floating out of it quickly.
..' Purchase 1 Unstable Flask of the Beast for the cost of 10 Apexis Shards
.get Unstable Flask of the Beast |q 11030/1
step
goto 28.4,57.6
.talk 23316
..turnin 11030
..accept 11061
step
goto 28.8,57.4
.talk 23233
..accept 11062
step
goto 27.4,52.7
.talk 23334
..turnin 11062
step
goto 27.6,52.9
.talk 23120
..accept 11010 |only !Druid
..accept 11102 |only Druid
step
goto 33.3,44.0
.' Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456 |tip They look like piles of gray stones on the ground around this area.
.' Destroy 15 Fel Cannonball Stacks |q 11010/1
only !Druid
step
goto 33.3,44.0
.' Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456 |tip They look like piles of gray stones on the ground around this area.
.' Destroy 15 Fel Cannonball Stacks |q 11102/1
only Druid
step
goto 27.6,52.9
.talk 23120
..turnin 11010 |only !Druid
..turnin 11102 |only Druid
step
goto 27.4,52.7
.talk 23334
..accept 11119
step
goto 27.9,52.2
.talk 23473
..turnin 11119
step
goto 28.0,51.5
.talk 23335
..accept 11065
step
goto 31.6,56.4
.from Aether Ray##22181+
.' Use your Wrangling Rope on Aether Rays when they are ready to be wrangled |use Wrangling Rope##32698 |tip You will see a message in your chat window.  It may help to take off some of your gear if you are high level.
.' Wrangle 5 Aether Rays |q 11065/1
step
goto 28.8,57.4
.talk 23233
..accept 11059
step
goto 31.2,52.2
.click Apexis Shard Formation##7210+ |tip They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect 35 Apexis Shard##32569 |q 11059
step
goto 31.8,63.8
.click the Apexis Monument |tip It's a huge floating crystal that changes colors.
..' Insert 35 Apexis Shards, and begin!
.click any of the 4 big colored buttons on the ground |tip You will get hit for 7,000 damage, but if you are high level, it shouldn't be a big deal.  This will make the quest mob spawn faster.
.from Apexis Guardian##22275
.get Apexis Guardian's Head |q 11059/1
step
goto 28.8,57.4
.talk 23233
..turnin 11059
step
goto 28.0,51.5
.talk 23335
..turnin 11065
step
goto 27.4,52.7
.talk 23334
..accept 11078
step
goto 31.2,52.2
.click Apexis Shard Formation##7210+ |tip They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect 35 Apexis Shard##32569 |q 11078
step
goto 27.2,64.8
.click Rivendark's Egg |tip It looks like a big brown spiked egg sitting in a nest on the ground.
..' Place 35 Apexis Shards near the dragon egg to crack it open
.from Rivendark##23061
.get Dragon Teeth |q 11078/1
step
goto 31.2,52.2
.click Apexis Shard Formation##7210+ |tip They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect 10 Apexis Shard##32569 |q 11061
step
goto 27.4,52.7
.talk 23334
..turnin 11078
step
goto 54.4,10.8
.click Bash'ir Crystalforge##7392
..' Purchase 1 Unstable Flask of the Sorcerer for the cost of 10 Apexis Shards
.get Unstable Flask of the Sorcerer |q 11061/1
step
goto 28.4,57.6
.talk 23316
..turnin 11061
step
goto 28.5,58.1
.talk 23300
..accept 11079
step
goto 31.2,52.2
.click Apexis Shard Formation##7210+ |tip They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect 35 Apexis Shard##32569 |q 11079
step
goto 33.9,44.2
.click the Fel Crystal Prism |tip It's a big green crystal floating in green smoke above 4 metal vents.
..' Place 35 Apexis Shards into the prism
.' There are 4 different demons that can spawn:
.from Mo'arg Incinerator##23354
.from Braxxus##23353
.from Galvanoth##22281
.from Zarcsin##23355
.get Fel Whip |q 11079/1
step
goto 28.5,58.1
.talk 23300
..turnin 11079
step
goto 28.8,57.4
.talk 23233
..accept 11091
step
goto 28.1,58.7
.talk 23428
..turnin 11091
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Outland 60-70\\Netherstorm",[[
author support@zygorguides.com
condition end achieved(1194)
step
'You must complete the Netherstorm Leveling Guide before completing this guide section. |tip We recommend being at least level 80 before trying to complete this guide. |script ZGV:SetGuide("Zygor's Horde Leveling Guides\\Outland 60-70\\Netherstorm (68-70)")
|confirm
step
goto Netherstorm,57.5,86.4
.talk 19488
..accept 10320
step
goto 58.3,86.4
.talk 19481
..accept 10256
step
goto 62.8,78.9
.kill Naberius##20483 |q 10320/1
step
goto 51.9,70.7
.from Apex##19940 |tip He is a giant with purple crystals on his back who patrols around this area. Some searching may be required.
..collect Apex's Crystal Focus##28786 |q 10256
step
goto 57.5,86.4
.talk 19488
..turnin 10320
step
goto 58.4,86.3
.' Use Apex's Crystal Focus next to Archmage Vargoth's Orb |use Apex's Crystal Focus##28786
.' Discover the Keymaster's identity |q 10256/1
step
goto 58.3,86.4
.talk 19481
..turnin 10256
step
goto 46.7,56.9
.talk 20066
..accept 10311
step
goto 48.1,63.5
.talk 20281
..turnin 10311
..accept 10310
step
.' Escort Drijya while he sabotages the warp-gate.
.' Burning Legion warp-gate sabotaged |q 10310/1
step
goto 46.7,56.9
.talk 20066
..turnin 10310
step
goto 45.9,36.0
.talk 20084
..accept 10268
step
goto 32.7,65.0
.talk 19570
..turnin 10237
..accept 10247
step
goto 37.3,63.7
.talk 19832
..turnin 10247
..accept 10248
step
goto 37.4,63.7
.' Use Scrap Reaver X6000 Controller |use Scrap Reaver X6000 Controller##28634
.from Negatron##19851
.' Complete the Scrap Reaver X6000 Test |q 10248/1
step
goto Netherstorm,37.3,63.8
.talk 19832
..turnin 10248
..accept 10249
step
goto 32.1,64.7
.click Wanted Poster##2491
..accept 10261
..accept 10701
step
goto 32.0,64.2
.talk 19467
..accept 10323
..accept 10407
only if rep ('The Aldor') >= Neutral
step
goto 32.0,64.1
.talk 19468
..accept 10365
only if rep ('The Scryers') >= Neutral
step
goto 20.4,68.9
.from Arcane Annihilator##18856 |tip He patrols around Manaforge B'naar. Some searching may be required.
..get Annihilator Servo |q 10261/1
step
goto 19.2,74.6
.kill Netherock##20772 |q 10701/1 |tip He spawns here and walks southeast along the cliff edge near Manaforge B'naar.
step
goto 32.7,65.0
.talk 19570
..turnin 10701
..turnin 10249
step
goto 33.0,64.7
.talk 19645
..turnin 10261
step
.' Go inside of Manaforge Ara to 26.7,36.8 |goto 26.7,36.8
.from Overseer Azarad##20685 |tip He walks around inside Manaforge Ara and stops in at this small side room.
.get Ara Access Crystal##29411 |q 10323/2
only if rep ('The Aldor') >= Neutral
step
goto 26.0,38.8
.click Ara Control Console##7076
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge Duro |q 10323/1
only if rep ('The Aldor') >= Neutral
step
.' Go inside of Manaforge Ara to 26.7,36.8 |goto 26.7,36.8
.from Overseer Azarad##20685 |tip He walks around inside Manaforge Ara and stops in at this small side room.
.get Ara Access Crystal##29411 |q 10365/2
only if rep ('The Scryers') >= Neutral
step
goto 26.0,38.8
.click Ara Control Console##7076
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge Duro |q 10365/1
only if rep ('The Scryers') >= Neutral
step
goto 37.1,27.8
.from Forgemaster Morug##20800
..get First Half of Socrethar's Stone |q 10407/1
only if rep ('The Aldor') >= Neutral
step
goto 40.8,19.6
.from Silroth##20801+
..get Second Half of Socrethar's Stone |q 10407/2
only if rep ('The Aldor') >= Neutral
step
goto 32.0,64.2
.talk 19467
..turnin 10323
..turnin 10407
..accept 10410
only if rep ('The Aldor') >= Neutral
step
goto 44.0,36.0
.talk 20067
..accept 10290
step
goto 34.6,38.0
.talk 20112
..accept 10276
step
goto 44.5,21.6
.from Farahlon Breaker##18886+ |tip If you kill them fast enough and are careful you can avoid having to fight the Farahkib Shardlings
..get 4 Raw Farahlite |q 10290/1
step
goto 53.5,21.5
.from Culuthas##20138+
..get Ata'mal Crystal |q 10276/1
step
goto 60.1,31.7
.talk 20907
..accept 10439
step
goto 60.6,32.1
.talk 20985
.' Speak to Captain Saeed |q 10439/2
.' Tell him, "Let's go!"
step
.' Follow Captain Saeed and his men to 60.8,39.3 |goto 60.8,39.3
.talk 20985
.' Tell him, "I am ready"
.kill Dimensius the All-Devouring##19554 |q 10439/1
step
goto 60.1,31.7
.talk 20907
..turnin 10439
step
goto 56.8,38.7
.click the Ethereum Transponder Zeta
.talk 20482
..accept 10408
step
goto 53.7,42.4
.' Use Protectorate Disruptor next to each of the three huge force fields protecting Nexus-King Salhadaar. |use Protectorate Disruptor##29618
.kill Nexus-King Salhadaar##20454 |q 10408/1 |tip He will split into three, but you only need to kill one of them to complete the quest.
step
goto 56.8,38.7
.click the Ethereum Transponder Zeta
.talk 20482
..turnin 10408
step
goto 44.1,36.1
.talk 20067
..turnin 10290
..accept 10293
step
goto 45.9,36.0
.talk 20084
..turnin 10276
..accept 10280
step
goto Netherstorm 45.8,36.3
.talk 22899
..accept 10969
step
goto 59.5,32.4
.talk 20448
..turnin 10969
..accept 10970
step
goto 56.7,37.9
.from Ethereum Assassin##20452+, Captain Zovax##20727+, Ethereum Researcher##20456+, Ethereum Shocktrooper##20453+, Ethereum Archon##20458+, Ethereum Nexus-Stalker##20474+
.get Salvaged Ethereum Prison Key |q 10970/1
step
goto 59.5,32.4
.talk 20448
..turnin 10970
step
goto 49.7,17.5
.from Cragskaar##20202
.get Farahlite Core |q 10293/1
step
goto 44.1,36.0
.talk 20067
..turnin 10293
step
goto 32.0,64.1
.talk 19468
..turnin 10365
only if rep ('The Scryers') >= Neutral
step
|fly Shattrath
step
goto Shattrath City 54.1,44.9
.talk 18481
..turnin 10280
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Outland 60-70\\Shadowmoon Valley",[[
author support@zygorguides.com
condition end achieved(1195)
step
'You must complete the Shadowmoon Valley Leveling Guide before completing this guide section. |tip We recommend being at least level 80 before trying to complete this guide. |script ZGV:SetGuide("Zygor's Horde Leveling Guides\\Outland 60-70\\Shadowmoon Valley (68-70)")
|confirm
step
goto Shadowmoon Valley,28.5,26.5
.talk 21769
..accept 10750
step
goto Shadowmoon Valley,30.2,27.7
.talk 19319
.home Shadowmoon Village
step
goto Shadowmoon Valley,47.6,57.2
.talk 21293
..accept 10578
step
goto 51.4,63.4
.' Discover the Path of Conquest |q 10750/1 |tip You should receive a message saying you discovered the Path of Conquest just by going to this spot.
step
'Use your Kor'kron Flare Gun in your bag |use Kor'kron Flare Gun##31108
.talk 21998
..turnin 10750
..accept 10751
step
goto 51.7,65.0
.kill 20 Eclipsion Soldier##22016+ |q 10751/1
.kill 10 Eclipsion Cavalier##22018+ |q 10751/2
.kill 10 Eclipsion Spellbinder##22017+ |q 10751/3
step
'Use your Kor'kron Flare Gun in your bag |use Kor'kron Flare Gun##31108
.talk 21998
..turnin 10751
..accept 10765
step
goto 52.9,69.8
.kill Corok the Mighty##22011 |q 10765/2 |tip Be careful to avoid the patrolling mobs.
.kill Chancellor Bloodleaf##22012 |q 10765/1
.get Illidan's Command |q 10765/3
step
'Use your Kor'kron Flare Gun in your bag |use Kor'kron Flare Gun##31108
.talk 21998
..turnin 10765
..accept 10768
step
goto 51.7,65.0
.from 20 Eclipsion Soldier##22016+, Eclipsion Cavalier##22018, Eclipsion Spellbinder##22017+
.get 10 Illidari Tabard |q 10768/1
step
'Use your Kor'kron Flare Gun in your bag |use Kor'kron Flare Gun##31108
.talk 21998
..turnin 10768
..accept 10769
step
goto 41.9,69.1
.' Use your Enchanted Illidari Tabard |use Enchanted Illidari Tabard##31279
.from Crazed Colossus##19823+
.' Slay 5 Crazed Colossus while in disguise |q 10769/1
step
goto 28.5,26.5
.talk 21769
..turnin 10769
step
goto 61.4,57.0
.from Ruul the Darkener##21315
.get Third Fragment of the Cipher of Damnation |q 10578/1
step
goto 47.6,57.2
.talk 21293
..turnin 10578
..accept 10579
step
goto 53.9,23.5
.talk 21183
..turnin 10579
step
goto 53.1,25.3
.' Go into the Coilskar Cistern |goto 53.1,25.3,0.3 |noway |c
step
goto Shadowmoon Valley,51.7,17.6
.from Keeper of the Cistern##20795
.' Walk to [52.1,18.8]
.talk 21027
..accept 10451
.' Escort Earthmender Wilda to Safety |q 10451/1
step
goto Shadowmoon Valley,42.2,45.1
.talk 21024
..turnin 10451
step
goto 23.0,35.3
.from Overseer Ripsaw##21499
.collect Illidari-Bane Shard##30579 |n
.' Use the Illidari-Bane Shard in your bags |use Illidari-Bane Shard##30579
..accept 10623
step
goto 29.8,31.3
.talk 19333
..turnin 10623
..accept 10627
step
goto 25.2,33.4
.from Makazradon##21501 |tip He is a giant winged demon who walks around Legion Hold, so you may need to search for him.
.get Makazradon's Glaive |q 10627/1
step
goto 22.9,38.3
.from Morgroron##21500 |tip He is a giant winged demon who walks around Legion Hold, so you may need to search for him.
.get Morgroron's Glaive |q 10627/2
step
goto 29.8,31.3
.talk 19333
..turnin 10627
..accept 10663
step
goto Terokkar Forest,77.6,38.7
.talk 21465
..turnin 10663
step
goto Shadowmoon Valley,30.4,30.8
.click Wanted Poster##3053
..accept 10647
step
goto 54.9,49.3
.from Uvuros##21102
.get Uvuros' Fiery Mane |q 10647/1
step
goto 58.2,70.8
.talk 21797
..accept 10636
..accept 10634
step
goto 69.8,85.9
.' Use your Spectrecles to equip them while standing on this hill |use Spectrecles##30721
.from Vhel'kur##21801 |tip He is a dragon flying around in the sky. If he does not show up as attackable try unequiping and re-equipping your Spectrecles. You will need to stand on the tallest hill and pull him to you. If you can't reach him you may need to ask someone for help.
.get Gorefiend's Armor |q 10634/1
step
goto 58.3,70.8
.talk 21797
..turnin 10634
step
 goto 52.5,57.3
.' Use your Spectrecles to equip them |use Spectrecles##30721
.' Starting from this bridge, follow the main road clockwise around Shadowmoon Valley
.from Ghostrider of Karabor##21784 |tip You will only be able to see them if you have your Spectrecles equipped.  If they do not show up as attackable try unequipping and re-equipping your Spectrecles.
.get Gorefiend's Truncheon |q 10636/1
step
goto 58.2,70.8
.talk 21797
..turnin 10636
..accept 10639
step
goto 58.2,70.8
.' Use the abilities on your action bar to do the following:
.from Karsius the Ancient Watcher##21877
.' Slay Karsius the Ancient Watcher |q 10639/1
step
'Hearth to Shadowmoon Village |goto 30.2,27.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 29.9,27.7
.talk 21772
..turnin 10639
step
goto 30.5,30.9
.talk 21771
..turnin 10647
step
goto 53.9,23.5
.talk 21183
..accept 10588
step
goto 43.1,44.9
.' Use the Cipher of Damnation while standing in front of the altar |use Cipher of Damnation##30657
.' Go to [42.8,44.7]
.talk 21685 |tip It will take a minute for him to show up.
..' Tell him you are ready.
.' Follow Oronok Torn-heart
.kill Cyrukh the Firelord##21181 |q 10588/1
step
goto 42.2,45.1
.talk 21024
..turnin 10588
step
goto 53.3,59.0
.from Val'zareq the Conqueror##21979
.collect The Journal of Val'zareq##31345 |n
.click The Journal of Val'zareq in your bags |use The Journal of Val'zareq##31345
..accept 10793
step
goto 51.4,72.8
.click Crystal Prison##6905 |tip It looks like a big green floating crystal.
..turnin 10793
step
goto 60.0,53.8
.talk 21657+
..accept 10858
step
goto 69.9,61.5
.talk 22112
..turnin 10858
..accept 10866
step
goto 70.9,61.5
.kill Zuluhed the Whacked##11980 |q 10866/2 |tip You will probably need a group to kill Zuluhed the Whacked.  He will summon demons through a portal to help him fight.  To avoid having to fight the demons, pull Zuluhed the Whacked into one of the small buildings, on either side of him, when he casts the portal.
.collect Zuluhed's Key##31664 |q 10866
step
goto 69.8,61.3
.click Zuluhed's Chains##181 |tip It looks like a big metal ball and chain.
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
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Northrend 70-80\\Borean Tundra",[[
author support@zygorguides.com
condition end achieved(1358)
leechsteps "Zygor's Horde Leveling Guides\\Northrend 70-80\\Borean Tundra (70-72)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Northrend 70-80\\Howling Fjord",[[
author support@zygorguides.com
condition end achieved(1356)
leechsteps "Zygor's Horde Leveling Guides\\Northrend 70-80\\Howling Fjord (70-71)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Northrend 70-80\\Dragonblight",[[
author support@zygorguides.com
condition end achieved(1359)
step
'You must complete the Dragonblight Leveling Guide before completing this guide section. |tip We recommend being at least level 85 before trying to complete this guide. |script ZGV:SetGuide("Zygor's Horde Leveling Guides\\Northrend 70-80\\Dragonblight (71-74)")
|confirm
step
|fly Wyrmrest Temple
step
goto Dragonblight 60,55.2
.talk 26983
..accept 12148
step
goto Dragonblight 51.2,59.5
.from Bonesunder##27006 |tip When he begins to cast Bone Crack, back away until it hits the ground around him, then continue attacking.
..get Emblazoned Battle Horn |q 12148/1
step 
goto 60,55.2
.talk 26983
..turnin 12148
..accept 12149
step
goto Dragonblight 67.5,70.4
..kill Bloodfeast##27008 |q 12149/2 |tip He spawns several Blood Maggots, but he's still pretty easy to kill.
step
goto 68.9,50.2
..kill Iceshatter##27007 |q 12149/1 |tip He patrols this area, so you may have to search for him.
step
goto Dragonblight 68.1,37.0
..kill Drakegore##27009 |q 12149/3 |tip He patrols this area, so you may have to search for him.
step
goto 60,55.2
.talk 26983
..turnin 12149
..accept 12150
step
goto 72.2,49.5
.' Fight Dregmar Runebrand until he surrenders |q 12150/1 |tip When you see a rune appear under you, move away to avoid being hit with a high damage attack.
|modelnpc Dregmar Runebrand##27003
step
goto 60,55.2
.talk 26983
..turnin 12150
..accept 12151
step
goto 57.1,76.2
.' Use the Emblazoned Battle Horn in your bags to Summon Grom'thar the Thunderbringer |use Emblazoned Battle Horn##36864
.from Grom'thar the Thunderbringer##27002+
..get Grom'thar's Head |q 12151/1
step
goto 60,55.2
.talk 26983
..turnin 12151
step
|fly Agmar's Hammer
step
goto Dragonblight,37.7,46.6
.click Wanted! |tip It looks like a wooden bulletin board with papers pinned onto it.
..accept 12089
..accept 12091
..accept 12090
step
goto 45.2,44.3
.kill Dreadtalon##26838 |q 12091/1 |tip He flies in a circle around this area.
step
goto 46.8,62.6
.kill Gigantaur##26836 |q 12090/1 |tip He walks around this area.
step
goto 21.1,64.0
.kill Magister Keldonus##26828 |q 12089/1
step
goto 35.8,48.4
.talk 26618
..turnin 12089
..turnin 12090
..turnin 12091
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Northrend 70-80\\Grizzly Hills",[[
author support@zygorguides.com
condition end achieved(1357)
leechsteps "Zygor's Horde Leveling Guides\\Northrend 70-80\\Grizzly Hills (74-75)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Northrend 70-80\\Zul'Drak",[[
author support@zygorguides.com
condition end achieved(36)
step
'You must complete the Zul'Drak Leveling Guide before completing this guide section. |tip We recommend being at least level 85 before trying to complete this guide.
|confirm
step
|fly The Argent Stand
step
goto Zul'Drak,58.1,72.0
.talk 28283
..accept 12554
step
goto 61.0,78.0
.from Malas the Corrupter##28255 |tip He's at the top of Kolkamas.
.get Head of the Corrupter |q 12554/1
step
goto 58.1,72.0
.talk 28283
..turnin 12554
step
goto 59.5,58.1
.talk 28479
..accept 12729
step
goto 72.6,58.0
.from Altar Warden##28784+
.get Gusty Essence of the Warden |q 12729/2
step
goto 58.3,46.6
.from Guardian of Zim'Rhuk##28597+
.get Unblemished Heart of the Guardian |q 12729/1
step
goto 70.0,21.0
.talk 33025
..accept 13556
step
goto 71.5,21.0
.from Gundrak Raptor##29334+
.click Gundrak Raptor Egg##3851
.get 12 Gundrak Raptor Egg |q 13556/1
step
goto 70.0,21.0
.talk 33025
..turnin 13556
step
goto 60.3,57.8
.talk 28401
..turnin 12729
step
goto 48.4,56.4
.talk 30007
..accept 12932
step
goto 47.9,56.9
.from Yggdras##30014
.' Defeat Yggdras |q 12954/1
step
goto 48.5,56.4
.talk 30009
..turnin 12932
step
goto 48.4,56.4
.talk 30007
..accept 12933
step
goto 47.9,56.9
.from Stinkbeard##30017
.' Defeat Stinkbeard |q 12933/1
step
goto 48.5,56.4
.talk 30009
..turnin 12933
step
goto 48.4,56.4
.talk 30007
..accept 12934
step
goto 47.9,56.9
.' You will have to fight one of these 4 mobs:
.from Az'Barin, Prince of the Gust##30026
.from Duke Singen##30019
.from Erathius, King of Dirt##30025
.from Gargoral the Water Lord##30024
.' Defeat an Elemental Lord |q 12934/1
step
goto 48.5,56.4
.talk 30009
..turnin 12934
step
goto 48.4,56.4
.talk 30007
..accept 12935
step
goto 47.9,56.9
.from Orinoko Tuskbreaker##30020
.' Defeat Orinoko Tuskbreaker |q 12935/1
step
goto 48.5,56.4
.talk 30009
..turnin 12935
step
goto 48.4,56.4
.talk 30007
..accept 12936
step
goto 47.9,56.9
.from Korrak the Bloodrager##30023
.' Defeat Korrak the Bloodrager |q 12936/1
step
goto 48.5,56.4
.talk 30009
..turnin 12936
step
goto 48.4,56.4
.talk 30007
..accept 12948
step
goto 47.9,56.9
.from Enormos##30021
.from Vladof the Butcher##30022
.' Defeat Vladof the Butcher |q 12948/1
step
goto 48.5,56.4
.talk 30009
..turnin 12948
step
goto 60.1,57.7
.talk 28401
..accept 12730
step
goto 77.6,36.6
.' Use your Prophet of Akali Convocation in this spot |use Prophet of Akali Convocation##39566
..kill Prophet of Akali##28996 |q 12730/1
step
goto 60.1,57.7
.talk 28401
..turnin 12730	
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Northrend 70-80\\Sholazar Basin",[[
author support@zygorguides.com
condition end achieved(39)
step
'You must complete the Sholazar Basin Leveling Guide Before completing this guide section. |tip We recommend being at least level 85 before trying to complete this guide.
|confirm
step
|fly River's Heart
step
goto 54.5,56.6
.talk 28122
..accept 12581
step
goto 72.1,57.5
..kill Artruis the Heartless##28659 |q 12581/1 |tip During this fight, you will have to choose to kill one of the two minions. You are free to pick which one you prefer.
.' From here, talk to the NPC that you saved and complete their quest.
|confirm
step
goto 64.6,48.6
.talk 27801
..accept 12546
step
goto 71.2,43.2
.' Use the Omega Rune in your bag in this spot. |use Omega Rune##38709
step
'Use the abilities on your toolbar and fight your way up to the top of the mountain.
.kill 200 Scourge Minions |q 12546/1
.kill Bythius the Flesh-Shaper##28212 |q 12546/2
.kill Urgreth of the Thousand Tombs##28103 |q 12546/3
.kill Hailscorn##28208 |q 12546/4
step
goto 64.6,48.6
.talk 27801
..turnin 12546
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Northrend 70-80\\The Storm Peaks",[[
author support@zygorguides.com
condition end achieved(38)
leechsteps "Zygor's Horde Leveling Guides\\Northrend 70-80\\The Storm Peaks (78-80)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Loremaster Guides\\Northrend 70-80\\Icecrown",[[
author support@zygorguides.com
condition end achieved(40)
map Icecrown
step
'You must complete the Icecrown Leveling Guide before completing this guide section. |tip We recommend being at least level 85 before trying to complete this guide.
|confirm
step
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: [60.6,34.9]
.' Point 2: [68.0,52.5]
.' Point 3: [68.9,27.0]
.'Find Orgrim's Hammer flying around in the sky |tip On you world map, it looks like a ship icon with 2 long red-ish balloons on either side of it.
.talk 29795
..accept 13367
..accept 13277
step
goto 67.8,58.0
.from Pustulent Horror##31139+
.get 5 Pustulant Spine |q 13277/1
step
goto 51.9,32.9 |n
.' Enter this huge doorway |goto 51.9,32.9,0.5 |noway |c
step
goto 50.5,30.0
.click Alumeth's Skull##8508
.collect Alumeth's Skull##44476 |q 13367
step
goto 52.8,30.7
.click Alumeth's Heart##8508
.collect Alumeth's Heart##44477 |q 13367
step
goto 52.8,29.8
.click Alumeth's Scepter##8508
.collect Alumeth's Scepter##44478 |q 13367
step
goto 53.0,29.0
.click Alumeth's Robes##8508
.collect Alumeth's Robes##44479 |q 13367
step
'Use Alumeth's Skull |use Alumeth's Skull##44476
.collect Alumeth's Remains##44480 |q 13367
step
goto 51.9,28.7
.' Use Alumeth's Remains next to this huge crystal |use Alumeth's Remains##44480
.from Alumeth the Ascended##32300
.' Defeat Alumeth the Ascended |q 13367/1
step
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: [60.6,34.9]
.' Point 2: [68.0,52.5]
.' Point 3: [68.9,27.0]
.'Find Orgrim's Hammer flying around in the sky |tip On you world map, it looks like a ship icon with 2 long red-ish balloons on either side of it.
.talk 29795
..turnin 13367
..turnin 13277
..accept 13279
..accept 13312
..accept 13278
step
goto 45.5,46.5
.' Use your Rune of Distortion next to Grimkor's Orb |use Rune of Distortion##44186 |tip It's a green winged pedastal with a blinking orb sitting on it, sitting on this high platform.
.kill Grimkor the Wicked##32162 |q 13312/1
step
goto 63.2,62.1 |n
.' Enter this huge doorway |goto 63.2,62.1,0.5 |noway |c
step
goto 60.7,62.2
.from Coprous the Defiled##31198
.' Defeat Coprous the Defiled |q 13278/1
step
goto 61.5,63.8
.' Use your Pustulant Spinal Fluid next to the Plague Cauldron |use Pustulant Spinal Fluid##44010 |tip It looks like a huge pot with bright green bubbling liquid in it.
.' Continue using your Pustulant Spinal Fluid next to the Plague Cauldron in between fights
.' Neutralize the Plague Cauldron |q 13279/1
step
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: [60.6,34.9]
.' Point 2: [68.0,52.5]
.' Point 3: [68.9,27.0]
.'Find Orgrim's Hammer flying around in the sky |tip On you world map, it looks like a ship icon with 2 long red-ish balloons on either side of it.
.talk 29795
..turnin 13279
..turnin 13312
..turnin 13278
..accept 13329
step
goto 47.3,63.4
.from Skeletal Reaver##32467+
.' Use your Volatile Acid on their corpses |use Volatile Acid##44653
.' Dissolve 6 Skeletal Reaver Bones |q 13329/1
step
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: [60.6,34.9]
.' Point 2: [68.0,52.5]
.' Point 3: [68.9,27.0]
.'Find Orgrim's Hammer flying around in the sky |tip On you world map, it looks like a ship icon with 2 long red-ish balloons on either side of it.
.talk 29795
..turnin 13329
..accept 13316
..accept 13328
step
goto 49.8,66.7
.click the Shard of Despair##8122
.get Broken Shard of Despair |q 13328/2
step
goto 45.8,69.5
.click the Shard of Suffering##8122
.get Broken Shard of Suffering |q 13328/3
step
goto 47.8,68.1
.click the Shard of Horror##8122
.get Broken Shard of Horror |q 13328/1
step
goto 44.6,70.5
.kill 5 Harbinger of Horror##32278+ |q 13316/1 |tip Make sure you are not standing with your back towards any ledge or cliff, they have a massive knock back ability.
.kill 5 Corp'rethar Guardian##32280+ |q 13316/2
step
goto 54.1,71.2
.talk 30944
..accept 13161
..accept 13162
..accept 13163
step
goto 56.0,80.5
.kill Rokir##30954 |q 13161/1
step
goto 59.1,71.4
.kill Baelok##30953 |q 13163/1
step
goto 61.9,68.6
.kill Sapph##31161 |q 13162/1
step
goto 54.1,71.2
.talk 30944
..turnin 13161
..turnin 13162
..turnin 13163
..accept 13164
step
goto 55.2,82.7 |n
.' Go between the huge wall slots |goto 55.2,82.7,0.5 |noway |c
step
goto 54.5,86.1
.kill Orbaz Bloodbane##31283 |q 13164/1
step
goto 54.1,71.2
.talk 30944
..turnin 13164
step
'Orgrim's Hammer flies in a triangular pattern using these points:
.' Point 1: [60.6,34.9]
.' Point 2: [68.0,52.5]
.' Point 3: [68.9,27.0]
.'Find Orgrim's Hammer flying around in the sky |tip On you world map, it looks like a ship icon with 2 long red-ish balloons on either side of it.
.talk 29795
..turnin 13316
..turnin 13328
step
goto 32.5,42.9
.talk 30232
..accept 13137
step
goto 28.7,51.9
.click Battlescar Signal Fire##1967
.from Possessed Iskalder##30924
.' Defeat Iskalder in Battle |q 13137/1
step
goto 32.5,42.9
.talk 30232
..turnin 13137
..accept 13142
step
goto 18.2,56.4
.click War Horn of Jotunheim##7352
.kill Overthane Balargarde##31016 |q 13142/1
step
goto 32.5,42.9
.talk 30232
..turnin 13142
..accept 13213
step
goto 30.7,28.9
.talk 31135
..turnin 13213
..accept 13214
step
'Geirrvif will announce the start of the quest, a few seconds later six scourge come out and you fight them all. |tip Kill Father Jhadras first as he heals the rest of the scourge.
.' Defeat the Fallen Heroes |q 13214/1
|modelnpc Eldreth##31195
|modelnpc Geness Half-Soul##31193
|modelnpc Jhadras##31191
|modelnpc Masud##31192
|modelnpc Rith##31196
|modelnpc Talla##31194
step
goto 31.6,31.0
.talk 31154
..turnin 13214
step
goto 19.5,48.1
.talk 29344
..accept 12847
step
goto 9.5,45.3 |n
.' Enter the Cathedral here |goto 9.5,45.3,0.5 |noway |c
step
goto 9.5,46.6 |n
.' Enter the main chamber and clear out the mobs before engaging Archbishop Landgren
.kill Archbishop Landgren##29542 |q 12847/1
.' Use Arete's gate in your bags next to Archbishop Landgren's corpse |use Arete's gate##40730
.' Summon Arete's Gate |q 12847/2
step
.' Watch the short cutscene before turning in the quest
.talk 29560
..turnin 12847
..accept 12852
step
goto 9.3,49.0 |n
.' Enter the Cave here |goto 9.3,49.0,05 |noway |c
step
goto 8.6,46.1
.' Take the path down into the lower section of the cave and into the back of cave.
.from Grand Admiral Westwind##29621
.' Use Lord-Commander's Nullifier on Grand Admiral Westwind when he brings up his protective shield |use Lord-Commander's Nullifier##40917
.' Deal with Grand Admiral Westwind |q 12852/1
step
goto 19.5,48.2
.talk 29344
..turnin 12852
]])
ZygorGuidesViewer:RegisterGuideSorting({
"Eastern Kingdoms 1-60",
"Kalimdor 1-60",
"Outland 60-70",
"Northrend 70-80",
"Cataclysm 80-85"})
