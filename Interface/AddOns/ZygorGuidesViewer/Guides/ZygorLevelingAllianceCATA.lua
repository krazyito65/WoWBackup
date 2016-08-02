local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("LevelingACATA") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Eastern Kingdoms 1-60\\Worgen Starter Guide\\Worgen (1-13)",[[
author support@zygorguides.com
condition suggested raceclass('Worgen') and level<=13 and not completedq(28517) and not raceclass('DEATHKNIGHT')
condition suggested !exclusive
condition end completedq(28517) or raceclass('DEATHKNIGHT')
condition valid raceclass('Worgen') !!Worgen only.
next Zygor's Alliance Leveling Guides\\Kalimdor 1-60\\Darkshore (11-21)\\Darkshore (11-16)
startlevel 1
dynamic on
step
goto Gilneas City,59.1,24.0
.talk 34850
..accept 14078
step
goto 54.7,16.6
.talk 34863
..turnin 14078
..accept 14091
step
goto 59.8,22.2
.talk 34913
..turnin 14091
..accept 14093
..accept 14098
step
goto 59.6,26.8
.talk 34936
..accept 14094
step
goto 56.0,28.6
.kill 8 Rampaging Worgen##34884 |q 14093/1
.click Supply Crate##336+
..get 4 Salvaged Supplies |q 14094/1
.click Merchant Square Door##9023+ |model Market Home
..' Evacuate 3 Market Homes |q 14098/1
step
ding 2
step
goto 59.5,26.8
.talk 34936
..turnin 14094
step
goto 59.9,22.3
.talk 34913
..turnin 14093
..turnin 14098
..accept 14099
step
goto 70.8,55.1
.talk 35840
..turnin 14099
..accept 14265 |only Worgen Warrior |noobsolete
..accept 14269 |only Worgen Rogue |noobsolete
..accept 14273 |only Worgen Warlock |noobsolete
..accept 14275 |only Worgen Hunter |noobsolete
..accept 14277 |only Worgen Mage |noobsolete
..accept 14278 |only Worgen Priest |noobsolete
..accept 14280 |only Worgen Druid |noobsolete
step
ding 3
step
goto 67.1,63.5
.talk 35839
..turnin 14265
..accept 14266 |noobsolete
only Worgen Warrior
step
goto 66.3,61.6
.' Use your Charge ability on one of the Bloodfang Worgen
'|from Bloodfang Worgen##35118
.' Practice using Charge |q 14266/2
only Worgen Warrior
step
goto 67.1,63.5
.talk 35839
..turnin 14266
..accept 14286 |noobsolete
only Worgen Warrior
step
goto 71.4,65.8
.talk 35871
..turnin 14269
..accept 14272 |noobsolete
only Worgen Rogue
step
goto 66.3,61.6
.' Use Sinister Strike on one of the Bloodfang Worgens to build up combo points, then use Eviscerate on it
'|from Bloodfang Worgen##35118
.' Practice Eviscerate |q 14272/2
only Worgen Rogue
step
goto 71.4,65.8
.talk 35871
..turnin 14272
..accept 14285 |noobsolete
only Worgen Rogue
step
goto 71.4,64.4
.talk 35869
..turnin 14273
..accept 14274 |noobsolete
only Worgen Warlock
step
goto 66.3,61.6
.' Use your Corruption ability on a Bloodfang Worgen
'|from Bloodfang Worgen##35118
.' Practice Corruption |q 14274/2
only Worgen Warlock
step
goto 71.4,64.4
.talk 35869
..turnin 14274
..accept 14287 |noobsolete
only Worgen Warlock
step
goto 71.5,61.3
.talk 35874
..turnin 14275
..accept 14276 |noobsolete
only Worgen Hunter
step
goto 67.8,64.2
.' Use your Steady Shot ability on a Bloodfang Worgen
'|from Bloodfang Worgen##35118
.' Practice Steady Shot 2 times |q 14276/2
only Worgen Hunter
step
goto 71.5,61.3
.talk 35874
..turnin 14276
..accept 14290 |noobsolete
only Worgen Hunter
step
goto 68.0,64.7
.talk 35872
..turnin 14277
..accept 14281
only Worgen Mage
step
goto 67.8,64.2
.' Use your Frost Nova ability on a Bloodfang Worgen
'|from Bloodfang Worgen##35118
.' Practice Frost Nova |q 14281/2
only Worgen Mage
step
goto 68.0,64.7
.talk 35872
..turnin 14281
..accept 14288
only Worgen Mage
step
goto 70.4,65.5
.talk 35870
..turnin 14278
..accept 14279
only Worgen Priest
step
goto 68.2,64.2
.' Use your Shadow Word: Pain ability on a Bloodfang Worgen
'|from Bloodfang Worgen##35118
.' Practice Shadow Word: Pain 2 times |q 14279/2
only Worgen Priest
step
goto 70.4,65.5
.talk 35870
..turnin 14279
..accept 14289
only Worgen Priest
step
goto 70.2,66.0
.talk 35873
..turnin 14280
..accept 14283
only Worgen Druid
step
goto 68.2,64.2
.' Use your Moonfire ability on a Bloodfang Worgen
'|from Bloodfang Worgen##35118
.' Practice Moonfire |q 14283/2
only Worgen Druid
step
goto 70.2,66.0
.talk 35873
..turnin 14283
..accept 14291
only Worgen Druid
step
goto 65.8,77.7
.talk 35112
..turnin 14286 |only Worgen Warrior
..turnin 14285 |only Worgen Rogue
..turnin 14287 |only Worgen Warlock
..turnin 14290 |only Worgen Hunter
..turnin 14288 |only Worgen Mage
..turnin 14289 |only Worgen Priest
..turnin 14291 |only Worgen Druid
..accept 14157
step
goto 65.4,77.6
.talk 35115
..accept 24930
step
goto 58.9,67.3
.kill 5 Bloodfang Worgen##35118 |q 24930/1
step
goto 57.8,73.5 |n
.' Enter the doorway |goto 57.8,73.5,0.5 |noway |c
step
goto 57.9,75.6
.talk 50371
..turnin 14157
..accept 28850
step
.' Follow the staircase up to this point |goto 57.5,76.0 <5
step
goto 55.2,62.9
.' Follow the spiral stairs up
.talk 35077
..turnin 28850
..accept 14154
step
goto 55.2,62.9
.' Kill the worgen that attack in droves
.' Survive while holding back the worgen for 2 minutes |q 14154/1 |tip You will receive a buff that lets you know how much time is left.
step
goto 55.2,63.0
.talk 35077
..turnin 14154
..accept 26129
step
goto 65.8,77.7
.' Go downstairs to the street
.talk 35112
..turnin 26129
step
goto 65.3,77.5
.talk 35115
..turnin 24930
step
goto 65.8,77.7
.talk 35112
..accept 14159 |noobsolete
step
ding 4
step
goto 55.7,81.5 |n
.' Click the Cellar Door and go down the steps |goto 55.8,81.5,0.5 |click Cellar Door##9028 |noway |c
step
goto 56.8,85.4
.talk 35369
..turnin 14159
step
goto 56.9,81.4
.talk 35378
..accept 14204
step
goto 47.8,72.0
.' Go upstairs to the street |tip Use your Mastiff's Attack Lurker ability on your pet action bar to help you find the Bloodfang Lurkers.
.kill 6 Bloodfang Lurker##35463+ |q 14204/1
step
goto 56.8,81.4
.talk 35378
..turnin 14204
..accept 14214
step
goto 59.2,83.8
.' Go upstairs to the street
.talk 35550
..turnin 14214
..accept 14293
step
'You will start riding a horse:
.' Spam the Rescue Krennan ability on your hotbar when your horse takes a big leap |tip You should see Krennan Aranas dangling in a tree.
.' Rescue Krennan Aranas |q 14293/1
' |modelnpc 35753
step
goto 55.7,80.7
.talk 35906
..turnin 14293
..accept 14294
step
goto 53.7,84.1 |n
.' Go to this spot
.' Follow this outside road around as you walk |goto 53.7,84.1,1.0 |noway |c
step
goto 30.4,73.2
.talk 35911
..turnin 14294
step
goto 31.1,72.4
.talk 35552
..accept 14212
step
goto 31.3,72.7
.clicknpc Click Crowley's Horse##44429
.' Ride the horse |invehicle |c |q 14212
step
'As you ride on the horse:
.' Use the Throw Torch ability on your hotbar on Bloodfang Stalkers |tip They will chase you.
.' Round up 30 Bloodfang Stalkers |q 14212/1
' |modelnpc 35229
step
goto 40.5,39.4
.talk 35618
..turnin 14212
..accept 14218
step
goto 37.9,40.2
.' Click a Rebel Cannon |tip They look like silver cannons lined up.
.' Use the Rebel Cannon ability on the worgen to shoot them
.kill 80 Bloodfang Stalker##35229 |q 14218/1
' |modelnpc 35317
step
goto 40.6,39.4
.talk 35618
..turnin 14218
..accept 14221
step
goto 48.9,52.8
.talk 35566
..turnin 14221
..accept 14222
step
goto 47.1,49.8
.kill 8 Frenzied Stalker##35627+ |q 14222/1
step
goto 48.9,52.8
.talk 35566
..turnin 14222
step
ding 5
// OUT OF GILNEAS CITY
step
goto Gilneas 36.4,61.3  // Gilneas
.talk 36332
..accept 14375 |instant
step
goto 36.5,62.3
.talk 36170
..accept 14313
step
goto 37.3,63.4
.talk 36132
..turnin 14313
..accept 14320
step
goto 36.8,65.7
.talk 38791
.home Duskhaven
step
goto 32.8,66.4
.click Crate of Mandrake Essence##9093
..turnin 14320
step
goto 32.8,66.1
.clicknpc Slain Watchman##36205
..accept 14321
step
goto 37.3,63.5
.talk 34571
..turnin 14321
..accept 14336
step
goto 36.0,66.2
.talk 36140
..turnin 14336
..accept 14347
..accept 14348
step
ding 6
step
goto 34.1,68.0
.kill 10 Forsaken Invader##34511 |q 14347/1
.' Click Black Gunpowder Kegs				//.click object is not found
.collect Black Gunpowder Keg##49202 |n
.' Use the Black Gunpowder Kegs on Horrid Abominations |use Black Gunpowder Keg##49202
.' Throw Gunpowder Kegs at 4 Horrid Abominations |q 14348/1
' |model 9095
' |modelnpc 36231
step
goto 35.9,66.2
.talk 36140
..turnin 14347
..turnin 14348
..accept 14366
step
goto 37.3,63.5
.talk 34571
..turnin 14366
..accept 14367
step
goto 28.4,64.3 |n
.' Enter the cellar |goto 28.4,64.3,0.5 |noway |c
step
goto 29.0,63.9
.talk 36290
..turnin 14367
..accept 14369
..accept 14382
step
goto 28.9,64.0
.talk 36291
..accept 14368
step
goto 27.9,66.7
.talk 36288 |tip Ashley is in the top room of the house.
.' Rescue Ashley |q 14368/2
step
goto 28.5,66.8
.talk 36289
.' Rescue James |q 14368/3
step
goto 29.6,69.3
.talk 36287
.' Rescue Cynthia |q 14368/1
step
goto 25.1,72.3
.' Find a Forsaken Catapult and kill the Forsaken Machinist driving it. |kill Forsaken Machinist##36292 |n
.invehicle |clicknpc Forsaken Catapult##36283 |q 14382
step
goto 25.0,74.7
.' Use the Launch ability on your hotbar to launch yourself onto the deck of the Forsaken ship at [26.9,79.5]
.kill Captain Anson##36397 |q 14382/1 |tip He is on the bottom level of the ship, one layer down, towards the back.
step
goto 25.1,72.3
.' Find a Forsaken Catapult and kill the Forsaken Machinist driving it. |kill Forsaken Machinist##36292 |n
.invehicle |clicknpc Forsaken Catapult##36283 |q 14382
step
goto 26.9,79.5
.' Use the Launch ability on your hotbar to launch yourself onto the deck of the Forsaken ship at [23.8,74.7]
.kill Captain Morris##36399 |q 14382/2 |tip He is on the bottom level of the ship, one layer down, towards the back.
step
goto 25.2,70.3
.kill 8 Forsaken Combatant |q 14369/1
' |from Forsaken Infantry##38616+, Forsaken Slavedriver##37701+, Forsaken Sailor##36396+
step
goto 28.4,64.3 |n
.' Enter the cellar |goto 28.4,64.3,0.5 |noway |c
step
goto 29.0,63.9
.talk 36290
..turnin 14369
..turnin 14382
step
goto 28.9,64.0
.talk 36291
..turnin 14368
step
goto 29.0,63.9
.talk 36290
..accept 14386
step
ding 7
step
goto 23.9,68.3
.' Use your Mastiff Whistle near Dark Ranger Thyala |use Mastiff Whistle##49240
.kill Dark Ranger Thyala##36312 |q 14386/1
step
goto 28.4,64.3 |n
.' Enter the cellar |goto 28.4,64.3,0.5 |noway |c
step
goto 29.0,63.9
.talk 36290
..turnin 14386
..accept 14396
step
goto 29.0,65.0
.talk 36451
..turnin 14396
..accept 14395
step
goto 26.9,68.4
.clicknpc Drowning Watchmen##36440+
.' Carry the Drowning Watchmen to [29.0,65.1]
.' Rescue 4 Drowning Watchmen |q 14395/1
step
goto 29.0,65.0
.talk 36451
..turnin 14395
..accept 14397
step
goto 37.6,65.2
.talk 36452
..turnin 14397
..accept 14398
..accept 14403
..accept 14406
step
goto 37.7,72.8
.talk 36457
..turnin 14406
..accept 14416
step
goto 39.6,78.8
.clicknpc Mountain Horse##36540
.' Use your Round Up Horse ability on 4 other horses |tip Watch out for the elite Ettin walking around.
.' Bring the 5 Mountain Horses back to Lorna Crowley at [37.7,72.8]
.' Rescue 5 Mountain Horses |q 14416/1
'|modelnpc Koroth the Hillbreaker##36528
step
goto 37.7,72.8
.talk 36457
..turnin 14416
step
goto 32.5,75.5
.talk 36458
..turnin 14398
..accept 14399
step
goto 34.0,77.3
.click Linen-Wrapped Book##00255
..get Linen-Wrapped Book |q 14399/1
step
goto 32.5,75.5
.talk 36458
..turnin 14399
..accept 14400
step
goto 32.0,75.5
.click Grandma's Good Clothes##09122
.get Grandma's Good Clothes |q 14400/1
step
goto 32.5,75.5
.talk 36458
..turnin 14400
..accept 14401
step
goto 35.2,74.8
.clicknpc Chance##36459
.from Lucius the Cruel##36461
.get Chance the Cat |q 14401/1
step
goto 32.5,75.5
.talk 36458
..turnin 14401
step
ding 8
step
goto 36.9,84.2
.talk 36456
..turnin 14403
..accept 14404
..accept 14412
step
goto 36.1,86.4
.click Planks of Wood##06736
.get Planks of Wood |q 14404/2
step
goto 37.5,87.2
.click Shipwright's Tools##00317
.get Shipwright's Tools |q 14404/1
step
goto 37.5,86.0
.click Barrel of Coal Tar##09095
.get Coal Tar |q 14404/3
step
goto 36.7,85.8
.kill 6 Forsaken Castaway##36488 |q 14412/1
step
 goto 36.9,84.2
.talk 36456
..turnin 14404
..turnin 14412
..accept 14405
step
goto 37.6,65.2
.talk 36452
..turnin 14405
..accept 14465
.' You will ride a horse to Greymane Manor |invehicle |c
step
goto 28.1,50.0
.talk 36606
..turnin 14465
..accept 14466
step
goto 26.4,46.9
.' Follow the stairs up.
.talk 36743
..turnin 14466
..accept 14467 |instant
step
goto 26.4,46.9
.talk 36743
..accept 24438
step
goto 29.0,54.2
.clicknpc Stagecoach Carriage##44928
.' Ride in the Stagecoach Carriage |invehicle |c |q 24438
step
goto 51.8,80.5
.talk 37065
..turnin 24438
..accept 24468
step
goto 52.9,75.2
.from Swamp Crocolisk##37078+
.' Rescue 5 Crash Survivors |q 24468/1
step
goto 51.8,80.5
.talk 37065
..turnin 24468
..accept 24472
step
goto 50.8,83.2 |n
.' Follow the path up |goto 50.8,83.2,0.5 |noway |c
step
goto 46.7,83.3
.click Koroth's Banner##6957
.get Koroth's Banner |q 24472/2
step
goto 47.1,85.1
.kill 4 Ogre Minion##36293+ |q 24472/1
step
goto 48.5,85.3 |n
.' Follow the path down |goto 48.5,85.3,0.5 |noway |c
step
goto 51.8,80.5
.talk 37065
..turnin 24472
..accept 24483
step
ding 9
step
goto 59.9,91.7
.talk 37102
..turnin 24483
..accept 24484
step
goto 60.1,91.7
.talk 38792
.home Stormglen Village
step
goto 60.3,91.9
.talk 37815
..accept 24495
step
goto 64.9,91.2
.kill 6 Vilebrood Skitterer##36813 |q 24484/1
.click Old Journal Page##9130+
.get 6 Old Journal Page |q 24495/1
step
goto 59.9,91.7
.talk 37102
..turnin 24484
..accept 24501
step
goto 60.3,91.8
.talk 37815
..turnin 24495
step
goto 68.2,81.6
.kill Rygna##37045 |q 24501/1
step
goto 59.9,91.7
.talk 37102
..turnin 24501
step
goto 60.3,91.8
.talk 37815
..accept 24578
step
goto 63.3,82.9
.talk 37822
..turnin 24578
..accept 24616
step
goto 65.7,81.2
.' Walk over the Freezing Trap lying in the road.
.' Use Belrysa's Talisman to break free from the Dark Scout's Freezing Trap |use Belrysa's Talisman##49944
.kill Dark Scout##37953 |q 24616/1
step
goto 63.4,82.9
.talk 37822
..turnin 24616
..accept 24617
step
goto 68.7,73.3
.talk 37195
..turnin 24617
..accept 24627
step
goto 69.3,73.0
.talk 37873
..accept 24628
step
goto 61.5,78.6
.kill 6 Howling Banshee##37757+ |q 24627/1
.click Moonleaf##270+
.get 6 Moonleaf |q 24628/1
step
goto 68.7,73.2
.talk 37195
..turnin 24627
..accept 24646
step
goto 69.3,73.0
.talk 37873
..turnin 24628
step
ding 10
step
goto 59.1,75.0
.' Use the Horn of Tal'doren to distract the Veteran Dark Rangers |use Horn of Tal'doren##50134 |tip Using the horn before engaging the Dark Rangers will summon worgen to hold agro.
.' Run into the cabin to [57.5,75.6]
.click Worn Coffer##5743
.get Mysterious Artifact |q 24646/1
'|modelnpc Veteran Dark Ranger##38022
step
goto 68.7,73.2
.talk 37195
..turnin 24646
..accept 24593
step
goto 69.0,72.8
.click Well of Fury##439
.' Drink from Well of Fury |q 24593/1
step
goto 69.3,73.1
.click Well of Tranquility##439
.' Drink from Well of Tranquility |q 24593/2
step
goto 69.1,73.5
.click Well of Balance##439
.' Drink from Well of Balance |q 24593/3
step
goto 68.7,73.2
.talk 37195
..turnin 24593
..accept 24673
step
goto 59.9,91.7
.talk 37102
..turnin 24673
..accept 24672
step
goto 72.7,80.1
.talk 37874
..turnin 24672
..accept 24592
step
goto 76.6,75.5
'Use Krennan's Potion of Stealth |use Krennan's Potion of Stealth##50218
.' Become stealthed |havebuff Interface\Icons\Ability_Stealth |c |q 24592
step
goto 85.6,73.5
.' Use Krennan's Potion of Stealth if you accidentally lose stealth |use Krennan's Potion of Stealth##50218
.' While stealthed run towards the tower |tip Avoid the dogs, they can still detect you and will attack.
.kill Baron Ashbury##37735 |q 24592/1 |tip He patrols just outside of the house.
step
'Use Krennan's Potion of Stealth |use Krennan's Potion of Stealth##50218
.' Become stealthed |havebuff Interface\Icons\Ability_Stealth |c |q 24592
step
goto 78.9,65.9
.' Use Krennan's Potion of Stealth if you accidentally lose stealth |use Krennan's Potion of Stealth##50218
.' While stealthed run into the house |tip Avoid the dogs, they can still detect you and will attack.
.kill Lord Walden##37733 |q 24592/2 |tip He patrols around this area and inside the house.
step
'Use Krennan's Potion of Stealth |use Krennan's Potion of Stealth##50218
.' Become stealthed |havebuff Interface\Icons\Ability_Stealth |c |q 24592
step
goto 78.3,72.1
.' Use Krennan's Potion of Stealth if you accidentally lose stealth |use Krennan's Potion of Stealth##50218
.talk 37876
..turnin 24592
..accept 24677
step
goto 78.3,71.9
.talk 38764
..' Tell him you need a horse
.' Ride the horse to Livery Outpost |goto 71.6,39.6,0.1 |noway |c
step
goto 70.9,39.8
.talk 37783
..turnin 24677
..accept 24575
step
goto 70.7,39.7
.talk 38143
..accept 24675
step
goto 70.8,40.1
.talk 37803 |tip He walks back and forth.
..accept 24674
step
goto 75.3,47.4
.from Brown Stag##37786+
.get 10 Side of Stag Meat |q 24675/1
step
goto 76.4,31.2 |n
.' Enter the mine |goto 76.4,31.2,0.5 |noway |c
step
goto 80.4,32.3
.' Follow the path in the mine
.' Kill Forsaken Slavedrivers to get Slaver's Keys and click Ball and Chains to free Enslaved Villagers |tip They are attached to the Enslaved Villagers' legs, who are mining rocks around this area.
.kill Brothogg the Slavemaster##37802 |q 24674/1
' |modelnpc 37701
step
goto 75.3,31.6
.from Forsaken Slavedriver##37701+
.collect Slaver's Key##49881+ |n
.click Ball and Chain##181+
|tip They are attached to the Enslaved Villagers' legs, who are mining rocks around this area.
.' Free 5 Enslaved Gilnean |q 24575/1
step
ding 11
step
goto 76.4,31.2 |n
.' Leave the mine |goto 76.4,31.2,0.5 |noway |c
step
goto 70.9,39.8
.talk 37783
..turnin 24575
step
goto 70.6,39.7
.talk 38143
..turnin 24675
step
goto 70.8,40.1
.talk 37803 |tip He walks back and forth.
..turnin 24674
step
goto 70.9,39.8
.talk 37783
..accept 24676
step
goto 72.8,28.4
.kill Executor Cornell##37686 |q 24676/2
step
goto 74.1,27.7
.kill Valnov the Mad##37685 |q 24676/3
step
goto 73.4,31.5
.kill 4 Forsaken Infantry |q 24676/1
step
goto 70.9,39.8
.talk 37783
..turnin 24676
..accept 24904
step
goto 70.0,40.9
.talk 38553
.' Tell him let us take back our city or that you wish to join the battle underway
.' Click here to continue |confirm
step
goto 67.1,42.6 |n
.' Wait for the Gilnean Militia to run in the city
.' Enter the city of Gilneas here |goto 67.1,42.6,0.5 |noway |c
step
goto 611 38.6,60.2
.' Follow the army of Gilneans through the city and use your Rapier of the Gilnean Patriots on the crowds to heal them |use Rapier of the Gilnean Patriots##50334
.' Achieve victory in the Battle for Gilneas City |q 24904/1
step
goto 38.6,60.2
.talk 38611
..turnin 24904
..accept 24902
step
goto 44.1,51.6
.' Follow Tobias Mistmantle into Lights' Dawn Cathedral. Hide in the water when he tells you to and listen to the meeting.
.' Hunt for Sylvanas |q 24902/1
' |modelnpc 38469
step
goto 38.6,60.3
.talk 38611
..turnin 24902
..accept 24903
step
ding 12
step
goto 32.4,57.0
.talk 38539
..turnin 24903
..accept 24920
step
goto 30.3,61.0
.clicknpc Captured Riding Bat##38540
.' While riding the Captured Riding Bat, use the Iron Bomb ability on your hotbar to do the following:
.kill 6 Forsaken Catapult##38287 |q 24920/1
.kill 40 Invading Forsaken##38364 |q 24920/2
step
'Use the Fly Back ability on your hotbar
.' You will fly back to Greymane Court |goto Gilneas City,30.5,60.9,0.5 |noway |c
step
goto 32.4,57.0
.talk 38539
..turnin 24920
..accept 24678
step
goto 7.7,71.5
.' Go downstairs and run through the tunnel
.' Spam use your Half-Burnt Torch to keep the rats and spiders from attacking you |use Half-Burnt Torch##50220
.' Exit the tunnel on the other side |goto 679 |noway |c |q 24678
step
goto 49.8,56.9
.talk 38144
..turnin 24678
..accept 24602
step
goto 46.4,53.3
.click Disturbed Soil##49
.get 5 Unearthed Memento |q 24602/1
step
goto 49.9,57.0
.talk 38144
..turnin 24602
..accept 24679
step
goto 49.0,53.1
.' Use your Blessed Offerings while standing in front of Aderic's Tomb |use Blessed Offerings##51956 |tip It looks like a silver plaque on a stone statue.
.' Place the Offering |q 24679/1
step
goto 49.8,56.9
.talk 38144
..turnin 24679
..accept 24680
step
goto 41.9,37.6
.talk 38149
..turnin 24680
..accept 24681
step
goto 42.5,37.8 |n
.' Click a Glaive Thrower to take control of it |invehicle |c |q 24681
' |modelnpc 38150
step
goto 30.7,37.7
.' Use the abilities on your action bar to do the following:
.kill 40 Orc Raider##37916+ |q 24681/1
.kill 8 Wolfmaw Outrider##37938+ |q 24681/2
.kill 4 Orchish War Machine##37921+ |q 24681/3
step
goto 41.9,37.6 |n
.' Click the red arrow on your hotbar |outvehicle |c |q 24681
step
goto 41.9,37.6
.talk 38149
..turnin 24681
step
goto 41.6,36.5
.talk 43727
..accept 26706
step
goto 41.6,36.0
.' Wait until Tobias Mistmantle says "Time to go!"
.clicknpc a Hippogryph##43747 |tip Ride the Hippogryph
.' Once you land on the ship, follow the orders Lorna Crowley gives you
.click Coiled Rope##7538 |tip When Lorna tells you, click the rope.
.' Follow Lorna to the bottom level of the gunship and protect her while she plants the explosives.
.' Destroy the Gunship |q 26706/1
step
'You will fly back to Keel Harbor |goto 42.6,38.3,0.5 |noway |c
step
goto 41.6,36.5
.talk 43727
..turnin 26706
step
goto 42.6,35.9
.talk 36616
..accept 14434 |instant
step
goto Teldrassil,55.2,89.2
.talk 42968
..accept 28517
step
goto 55.1,88.4 |n
.' Go into the pink portal to Darnassus |goto Darnassus |noway |c
step
goto 48.1,14.4
.talk 48736
..turnin 28517
..accept 26385
step
ding 13
step
goto 36.9,50.5 |n
.' Go into the pink portal to Rut'theran Village |goto Teldrassil |noway |c
step
fly Lor'danel
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Mount Hyjal (80-82)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Deepholm (82-83)
startlevel 80.00
dynamic on
step
goto Stormwind City,62.9,71.6
.click Hero's Call Board##10016
..accept 27726
step
'When you enter Stormwind City:
.' You will automatically accept a quest
..accept 28825		
step
goto Stormwind City,74.5,19.0
.talk 45226
..turnin 28825
..accept 28826
step
goto 74.4,19.5
.click Waters of Farseeing##445
.' Peer into the Waters of Farseeing |q 28826/1
step
goto 74.5,19.0
.talk 45226
..turnin 28826
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
.clicknpc Aronus##39140
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
.kill 8 Scalding Rock Elemental##40229 |q 25460/1
.click Juniper Berry##28+
.collect 4 Juniper Berries##53009 |n
.' Use your Juniper Berries on Faerie Dragons |use Juniper Berries##53009
.' Follow the Faerie Dragons to find Twilight Inciters
.kill 4 Twilight Inciter##39926 |q 25370/1
|modelnpc Faerie Dragon##39921
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
goto 55.7,15.9
.' Stand in this spot
.' Use Tholo's Horn to call for an emerald dragon |use Tholo's Horn##55122
.' Burn the Infiltrators' Encampment |q 25574/1
step
goto 64.1,22.5
.talk 40278
..turnin 25574
step
goto 47.7,35.5
.talk 54173
..turnin 25317
..accept 25319
step
goto 47.6,35.5
.talk 39869
..accept 25472
step
goto 48.4,29.3
.click Charred Staff Fragment##758+
.get 8 Charred Staff Fragment |q 25472/1
.' You can find more fragments at [44.7,33.3]
step
goto 47.2,25.6
.kill 4 Twilight Flamecaller##38926+ |q 25319/1
.kill 10 Twilight Vanquisher##38913+ |q 25319/2
step
goto 47.7,35.5
.talk 15362
..turnin 25319
..turnin 25472
..accept 25323
step
goto 44.5,33.4
.' Use your Flameseer's Staff on Blazebound Elementals |use Flameseer's Staff##53107 |modelnpc Blazebound Elemental##38896
.kill 30 Unbound Flame Spirit##33838+ |q 25323/1
step
goto 47.7,35.5
.talk 54173
..turnin 25323
..accept 25464
step
goto 44.0,26.9
.' Use your Flameseer's Staff on Baron Geddon |use Flameseer's Staff##54463 |tip He's a big fire elemental standing in the middle of this crater.
.' Weaken Baron Geddon 20 Times |q 25464/1 |tip Run away when you see Galrond of the Claw yell "Look out!".
' |modelnpc 40147
step
goto 47.7,35.5
.talk 54173
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
.talk 38917
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
.kill 6 Twilight Hunter##39437+ |q 25255/1
.kill 4 Twilight Proveditor##39436+ |q 25233/1
.click Twilight Supplies##9379+ |tip The slaves will drop them after you kill the Twilight Slavedriver.
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
.kill Lycanthoth##39446 |q 25273/1
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
.click Bitterblossom##7444
.get Bitterblossom |q 25297/2
step
goto 27.6,34.2
.click Stonebloom##9386
.get Stonebloom |q 25297/1
step
goto 27.2,35.2
.click Eye of Twilight##7011
..turnin 25300
..accept 25301
step
goto 28.4,35.8
.click Darkflame Ember##9569 |tip Inside the brazier
.get Darkflame Ember |q 25297/3
step
goto 28.4,36.4
.click Twilight Cauldron##9387
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
.click Gar'gol's Personal Treasure Chest##10
.get Rusted Skull Key |q 25328/1
step
goto 25.8,41.7
.click The Twilight Apocrypha##470
..turnin 25301
..accept 25303
step
goto 26.0,41.8
.clicknpc Crucible of Fire##39730
.' Activate the Crucible of Fire |q 25303/3
step
goto 25.7,41.7
.clicknpc Crucible of Earth##39737
.' Activate the Crucible of Earth |q 25303/1
step
goto 25.8,41.9
.clicknpc Crucible of Air##39736
.' Activate the Crucible of Air |q 25303/2
step
goto 26.0,41.6
.clicknpc Crucible of Water##39738
.' Activate the Crucible of Water |q 25303/4
step
goto 25.8,41.7
.click Twilight Apocrypha##470
..turnin 25303
..accept 25312
step
.' While inside the cave do the following:
.from Hovel Brute##39642+, Hovel Shadowcaster##39643+
.kill 8 Minion of Gar'gol |q 25278/1
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
.' Leave the cave |goto 27.1,36.0,0.5 |noway |c
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
.kill 8 Twilight Stormcaller##39843+ |q 25352/1
.kill 5 Howling Riftdweller##39844+ |q 25352/2
.click Lightning Channel##9816
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
.kill 12 Dark Iron Laborer##40838+ |q 25576/1
.from Searing Guardian##40841+
.collect 8 Smoldering Core##55123 |n
.' Use your Smoldering Cores next to Twilight Anvils |use Smoldering Core##55123 |tip They are small anvils sitting on the ground around this area.
.' Destroy 8 Smoldering Cores |q 25577/1
.click Twilight Arms Crate##9393+
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
.kill Cindermaul##40844 |q 25599/1
.click Battered Stone Chest##1387
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
.kill Forgemaster Pyrendius##40845 |q 25600/1
step
goto 26.3,41.9
.talk 40834
..turnin 25600
..accept 25611
step
goto 25.9,40.9 |n
.' Go inside the blue portal |goto 25.9,40.9,0.1 |noway |c
step
goto 28.2,29.8
.talk 39433
..turnin 25352
..turnin 25611
step
goto Mount Hyjal,28.3,29.7
.talk 46987
..accept 27874 |tip Skip if you have completed Wings Over Mount Hyjal
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
.click Southern Firestone##9407
.' Examine the Southern Firestone |q 25412/3
step
goto 11.6,41.5
.click Central Firestone##9407
.' Examine the Central Firestone |q 25412/2
step
goto 9.6,36.5
.click Northern Firestone##9407
.' Examine the Northern Firestone |q 25412/1
step
goto 13.3,41.4
.kill 10 Raging Firestorm##39939 |q 25381/1
.kill 6 Twilight Inferno Lord##39974 |q 25382/1		
.' Click Panicked Bunnies and Terrified Squirrels
.get 10 Frightened Animal |q 25385/1
' |modelnpc 39997
' |modelnpc 39998
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
.clicknpc 3 Injured Fawn##39999+
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
.' Click the ladder at the base of the tree
.clicknpc Hyjal Bear Cub##40240
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
.kill 8 Charbringer##40336 |q 25490/1
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
goto 27.8,63.4
.talk 54392
.fpath Sanctuary of Malorne
step
goto 36.2,58.6
.kill 10 Lava Surger##46911+ |q 25492/1
.from Core Hound##46910+
.get 4 Core Hound Entrails |q 25493/1
.click Scorched Soil##768+
.get 10 Hyjal Seedling |q 25491/1
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
ding 81
step
goto 33.0,64.6
.' Click the Flameward |tip It's a floating stone in a golden claw stand.
.' Activate the Flameward |q 25502/1
.' Defend the Flameward |q 25502/2
step
goto 39.3,54.1
.' Use your Heap of Core Hound Innards near Nemesis |use Heap of Core Hound Innards##54744 |tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
.clicknpc Nemesis##40340
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
.click Rod of Subjugation##9469
.' Disable Rod of Subjugation 1 |q 25514/1
step
goto 25.3,54.8
.click Rod of Subjugation##9469
.' Disable Rod of Subjugation 2 |q 25514/2
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
.' Use your Sacred Nectar next to Aviana's Burial Circle |use Sacred Nectar##55208 |model Aviana's Burial Circle##439
.' Offer the Nectar |q 25663/1
.talk 41068
..turnin 25663
..accept 25665
step
goto 38.5,43.0
.from Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
.' Kill 10 Wormwing Harpies |q 25655/1
.click Stolen Hyjal Egg##1867+
.get 8 Hyjal Egg |q 25656/1
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
.click Harpy Signal Fire##7290
.' Fight Marion Wormwing until she gets captured |q 25731/1
.talk 41112
..' Ask her why she is stealing eggs, then tell Thisalee to kill her
.' Interrogate Marion Wormwing |q 25731/2
step
goto 35.7,42.3
.' Use your Enormous Bird Call in Blaithe's Roost |use Enormous Bird Call##55211 |tip It's a huge bird nest sitting on top of this mountain peak.
.from Blaithe##41084
.get Ancient Feather |q 25664/1
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
.click the Codex of Shadows##470
..accept 25763
step
goto 30.9,76.9
.from Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
.' Slay 12 Sethria's Minions |q 25746/1
.click Twilight Armor Plate##7041+
.get 8 Twilight Armor Plate |q 25758/1
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
.' Use Thisalee's Shiv on Twilight Juggernauts |use Thisalee's Shiv##55883 |tip Use Thisalee's Shiv 5 times to remove the Twilight Juggernauts' Armor Plating completely.
.kill 3 Twilight Juggernaut##41031 |q 25761/1
.click Shadow Cloak Generator##9532+ |tip It may not be in the first one, so keep searching.
.' Unveil and Defend Aviana's Egg |q 25764/1
step
goto 32.8,70.8
.talk 41006
..turnin 25761
..turnin 25764
..accept 25776
step
goto 35.5,98.0
.' Fight Sethria
.' Use Thisalee's Signal Rocket when Sethria turns into a dragon |use Thisalee's Signal Rocket##56003
.kill Sethria##41255 |q 25776/1
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
.' Use Herald's Incense next to Aviana's Egg |use Herald's Incense##56016 |tip Aviana's Egg is in the tree tower, in a side room. |modelnpc Aviana's Egg##41224
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
.' If you cannot pick up the quest, go here to get it: [62.0,24.9]
step
goto 39.1,58.3 |n
.' Go inside the blue portal |goto 38.77,58.01 <0.3 |noway |c
step
goto 37.2,56.2
.talk 40578
..turnin 25810
..accept 25523
step
goto 37.2,56.1
.click the Twilight Weapon Rack##130
.collect Twilight Firelance##52716 |q 25523
step
 goto 37.4,56.0
.' Equip the Twilight Firelance |equipped Twilight Firelance##52716 |use Twilight Firelance##52716 
.clicknpc Aviana's Guardian##40723 
.' Ride Aviana's Guardian |invehicle |c |q 25523
step
goto 36.6,53.4
.' Use your Flap ability on your hotbar repeatedly to fly to this green flag
.' Land next to the Guardian Flag
.' Visit the Guardian Flag |q 25523/1
' |model 9475
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
.' Kill 10 Twilight Knight Riders |q 25525/1 |modelnpc Twilight Buzzard##39833+ |tip The knights are riding buzzards.
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
.' Kill 10 Twilight Lancers|q 25544/1 |modelnpc Twilight Firebird##40650+ |tip The lancers are riding buzzards.
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
' |modelnpc 40762
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25560
..accept 25832
step
goto 39.1,57.6 
.' Don't forget to equip your real weapon again
.' Go inside the blue glowing orb |goto 39.1,57.6,0.5 |noway |c
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
.kill 5 Fiery Tormentor##41396 |q 25842/1
step
goto 27.4,55.6
.talk 41381
..turnin 25842
..accept 25372
step
goto 19.5,37.8
.talk 39858
..turnin 25372
..accept 25843
step
goto 41.9,60.7
.talk 41504
..turnin 25843
..accept 25904
step
goto 42.3,60.6
.talk 41507
..accept 25881
..accept 25899
step
goto 46.8,58.7
.from Twilight Field Captain##41502
.get Glyph of Opening |q 25904/1
.kill 10 Twilight Scorchlord##41500 |q 25899/1
.talk 41499
..' Tell them to get on their feet
.' Rescue 8 Lost Wardens |q 25881/1
step
goto 41.9,60.7
.talk 41504
..turnin 25904
..accept 25906
step
goto 57.1,56.0
.talk 41492
..turnin 25881
..accept 25886
..turnin 25899
step
goto 56.8,56.0
.talk 41497
..accept 25901
step
goto 56.3,57.2
.click Warden's Arrows##8094
.get 15 Warden's Arrow |q 25901/1
step
goto 49.0,54.0
.kill 4 Twilight Field Captain##41502+ |q 25886/1 |tip They are uncommon, so you may need to search for them.
step
goto 56.8,56.0
.talk 41497
..turnin 25901
step
goto 57.1,56.0
.talk 41492
..turnin 25886
step
goto 64.9,54.1 |n
.' Go inside the blue portal |goto 64.53,53.54,0.3 |noway |c
step
goto 64.3,53.6
.talk 41498
..turnin 25906
..accept 25910
..accept 25915
step
goto 65.9,58.2
.' Follow the path down
.' Stand next to a Nemesis Crystal with your Child of Tortolla turtle next to you
.' Examine the Nemesis Crystal |q 25915/1
' |model Nemesis Crystal##7989
step
goto 61.8,56.8
.kill 4 Shadowflame Master##41563 |q 25910/1
.kill 10 Molten Tormentor##41565 |q 25910/2
step
goto 64.3,53.6
.talk 41498
..turnin 25910
..turnin 25915
..accept 25923
step
goto 63.2,62.2
.' Follow the path down
.' Fight Nemesis 
.' Use your Totem of Tortolla when Nemesis is about to finish casting Molten Fury |use Totem of Tortolla##56207
.kill Nemesis##40340 |q 25923/1
step
goto 64.3,53.6
.talk 41498
..turnin 25923
..accept 25928
step
goto 64.8,53.6 |n
.' Go inside the blue portal |goto 64.8,53.6,0.3 |noway |c
step
goto 41.9,60.7
.talk 41504
..turnin 25928
..accept 25653
step
'Hearth to Nordrassil |goto 63.1,24.1,0.3 |use Hearthstone##6948 |noway |c
step
goto 62.0,24.9
.talk 40928
..turnin 25653
..accept 25597
step
goto 71.9,58.1
.talk 39621
..turnin 25597
..accept 25274
step
goto 73.5,60.5
.talk 39619
.' Lure the Twilight Recruit away from the group to [72.3,58.9]
.' Use your Blackjack on the Twilight Recruit |use Blackjack##52683
.from Twilight Recruit
.get Twilight Recruitment Papers |q 25274/1
step
goto 71.9,58.1
.talk 39621
..turnin 25274
..accept 25276
step
goto 76.9,62.0
.talk 39442
..turnin 25276
..accept 25223
..accept 25224
step
goto 77.0,62.1
.talk 39451
..accept 25330
step
goto 83.6,62.8
.kill 8 Fiery Instructor##40564 |q 25223/1
.click Flame Blossom##2312+
.get 5 Flame Blossom |q 25224/1
.' Use your Frostgale Crystal on an Immolated Supplicant |tip They are on fire running around this area.  They must be alive for you to be able to save them.  You may need to search for one of them, since they aren't very common. |use Frostgale Crystal##52819
.' Save an Immolated Supplicant |q 25330/1
' |modelnpc 39453
step
goto 77.0,62.1
.talk 39451
..turnin 25330
step
goto 76.9,62.0
.talk 39442
..turnin 25223
..turnin 25224
..accept 25291
step
goto 89.6,59.1
.talk 39413
..turnin 25291
..accept 25509
step
goto 88.3,58.6
.click Outhouse Hideout##3332 
..accept 25296
step
goto 90.2,56.4
.talk 39406
..accept 25294
step
goto 89.5,55.5
.click Crate of Scrolls##8704
.get Twilight Communique |q 25296/1
step
goto 92.0,51.5
.click Hyjal Battleplans##222
.get Hyjal Battleplans |q 25296/2
step
goto 87.3,52.7
.from Spinescale Basilisk##39658+
.collect 5 Charred Basilisk Meat##52708 |q 25294
.click Darkwhisper Lodestone##2571+
.' Break 5 Darkwhisper Lodestones |q 25509/1
step
'Use your Fiery Leash |use Fiery Leash##52717
.' You will summon the Spawn of Smolderos
.' Use your 5 Charred Basilisk Meat |use Charred Basilisk Meat##52708
.' Feed the Spawn of Smolderos 5 Times |q 25294/1
' |modelnpc Spawn of Smolderos##39659
step
goto 88.3,58.6
.click Outhouse Hideout##3332
..turnin 25296
..accept 25308
step
goto 89.6,59.1
.talk 39413
..turnin 25509
..accept 25499
step
goto 89.2,58.0
.' Run around the circular structure in the middle of the camp while the Blazing Trainer fire elemental chases you
.' Run away from the Blazing Trainer for 1 minute
.' Complete your Physical Training |q 25499/1
|modelnpc Blazing Trainer##40434
step
goto 89.6,59.1
.talk 39413
..turnin 25499
..accept 25299
step
'Use your Orb of Ascension |use Orb of Ascension##52828
.' Use the abilities on your action bar to answer Yes or No as the Orb of Ascenion asks questions
.' You must answer 10 questions correct.
.' Complete your Mental Training |q 25299/1
|modelnpc Orb of Ascension##39601
step
goto 89.6,59.1
.talk 39413
..turnin 25299
..accept 25309
step
goto 90.2,56.4
.talk 39406
..turnin 25294
..accept 25494
step
goto 92.1,48.9
.kill 5 Failed Supplicant##39752 |q 25309/1
step
goto 84.9,47.0
.from Spinescale Matriarch##40403
.get Spiked Basilisk Hide |q 25494/1
step
goto 77.5,48.1
.' Use your Ogre Disguise next to the Ogre Outhouse |use Ogre Disguise##55137
.' Put on your Ogre Disguise |havebuff Interface\Icons\inv_misc_ogrepinata |q 25308
|model Ogre Outhouse##3332
step
goto 76.5,49.1
.talk 40489
..' Tell him one of the boys is causing some trouble outside
.kill High Cultist Azennios##40491 |q 25308/1
step
'Right-click the Seeds of Discord buff next to your minimap to take off your Ogre Disguise |nobuff Interface\Icons\inv_misc_ogrepinata |q 25308
step
goto 88.3,58.6
.click Outhouse Hideout##3332 
..turnin 25308
step
goto 89.6,59.1
.talk 39413
..turnin 25309
step
goto 90.2,56.4
.talk 39406
..turnin 25494
..accept 25496
step
goto 77.8,51.4
.talk 40409
..' Tell him Instructor Devoran sends a contender against his raptor
.' Wait until your Spawn of Smolderos kills his raptor, Butcher
.from Gromm'ko
.' Complete the Grudge Match |q 25496/1
step
goto 90.2,56.4
.talk 39406
..turnin 25496
step
goto 89.6,59.1
.talk 39413
..accept 25310
..accept 25311
step
goto 65.3,65.1
.' Use your Talisman of Flame Ascendancy |use Talisman of Flame Ascendancy##54814
.' Use the abilities on your hotbar to fight Garnoth, Fist of the Legion
.kill Garnoth, Fist of the Legion##39726 |q 25310/1
step
goto 66.6,66.9
.kill 10 Horrorguard##48725 |q 25311/1
step
goto 89.6,59.1
.talk 39413
..turnin 25310
..turnin 25311
step
goto 88.3,58.6
.click Outhouse Hideout##3332
..accept 25314
step
goto 78.8,56.4
.kill Okrog##40922 |q 25314/1 |tip You will find him walking up this road from the south.
step
goto 88.3,58.6
.click Outhouse Hideout##3332
..turnin 25314
..accept 25601
step
goto 89.6,59.1
.talk 39413
..turnin 25601
..accept 25315
step
goto 95.2,51.3
.click Initiation Podium##9481
.' Use the abilities on your hotbar to respond to what the crowd says |tip If the crowd says something angry, use your Incite! ability.  If the crowd says something crazy, use your Pander! ability.  If the crowd says something to make it seem like they are bored or unsure, use your Inspire! ability.
.' Please the crowd 10 times
.' Give your Graduation Speech |q 25315/1
step
'Use the Step Down ability on your action bar to stop standing at the podium |nobuff INTERFACE\ICONS\achievement_dungeon_bastion of twilight_twilightascendantcouncil |q 25315
step
goto 95.3,51.3
.talk 40619
..turnin 25315
..accept 25531
step
goto 72.2,74.7
.talk 41025
..turnin 25531
..accept 25608
step
goto 71.9,75.2
.clicknpc Emerald Drake##40780 
.' Ride the Emerald Drake |invehicle |noway |c |q 25608
step
goto 77.9,61.2
.' Use your Aerial Swipe ability on Twilight Stormwakers
.kill 5 Twilight Stormwaker##40573+ |q 25608/1
.' Use your Acid Blast ability on Fiery Instructors and Twilight Initiates on the ground
.' Kill 40 Twilight's Hammer Units |q 25608/2
step
.' Click the red arrow on your hotbar to stop riding on the Emerald Drake |outvehicle
step
  		goto 72.2,74.7
.talk 41025
..turnin 25608
step
goto 72.1,74.0
.talk 40772
..accept 25548
step
goto 71.9,74.1
.talk 41631
..accept 25554
step
goto 71.6,75.3
.talk 43549
.fpath Gates of Sothann	
step
goto 59.7,80.8
.click Burning Litanies##7693
.get The Burning Litanies |q 25554/2
step
goto 58.1,78.9
.click Tome of Flame##6894
.get Tome of Flame |q 25554/3
step
goto 56.8,83.8
.click Ascendant's Codex##6893
.get Ascendant's Codex |q 25554/1
step
goto 59.1,83.9
.click Pure Twilight Egg##9455
..accept 25644
step
goto 58.6,81.3
.kill 4 Flame Ascendant##40709+ |q 25548/1
.kill 5 Twilight Subjugator##40463+ |q 25548/2
step
goto 71.9,74.1
.talk 41631
..turnin 25554
..accept 25555
step
  		goto 72.1,74.0
.talk 41025
..turnin 25548
..accept 25549
step
goto 72.3,74.0
.talk 40816
..turnin 25644
..accept 25552
step
goto 59.1,78.5
.from Young Twilight Drake##40687
.get Young Twilight Drake Skull |q 25552/1
step
goto 57.4,68.0
.' Use your Horn of Cenarius |use Horn of Cenarius##55153
.kill Azralon the Gatekeeper##40814 |q 25555/1
step
goto 57.0,69.4
.kill 4 Twilight Augur##40713+ |q 25549/1
.kill 4 Twilight Retainer##40767+ |q 25549/2
.kill 1 Emissary of Flame##40755 |q 25549/3
.' The Emissary of Flame patrols between the below locations:
.' [54.7,67.0]
.' [60.7,72.6]
step
goto 72.3,74.0
.talk 40816
..turnin 25552
..accept 25553
step
goto 72.1,74.0
.talk 41025
..turnin 25549
..accept 25550
step
goto 71.9,74.1
.talk 41631
..turnin 25555
step
goto 54.4,85.8
.' Use your Young Twilight Drake Skull |use Young Twilight Drake Skull##55173
.kill Desperiona##40974 |q 25553/1
step
goto 43.5,83.6
.' Use your Drums of the Turtle God |use Drums of the Turtle God##55179
.kill King Moltron##40998 |q 25550/1
step
goto 72.1,74.0
.talk 41025
..turnin 25550
step
goto 72.3,74.0
.talk 40816
..turnin 25553
step
goto 71.9,74.1
.talk 40773
..accept 25551
step
goto 55.5,66.3 |n
.' Go through the blue portal |goto 55.5,66.3 |noway |c
step
goto 44.7,79.2
.talk 41631
.' Tell him you're ready.
.kill Ragnaros##41634 |q 25551/1
.' Wait for Hamuul to open a portal back to Hyjal
.' Click the portal to Hyjal |goto Mount Hyjal,72.2,74.8 |noway |c
step
goto 72.1,74.0
.talk 40772
..turnin 25551
..accept 27398
step
ding 82
step
'Hearth to Nordrassil |goto Mount Hyjal,63.1,24.1,0.5 |use Hearthstone##6948 |noway |c
step
goto 62.6,23.1 |n
.' Click the portal to Stormwind |goto Stormwind City |noway |c
step
goto Stormwind City,74.5,19.0
.talk 45226
..turnin 27398
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Vashj'ir (80-82)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Deepholm (82-83)
startlevel 80.00
dynamic on
step
goto Stormwind City,62.9,71.6
.click Hero's Call Board##10016
..accept 27724
step
'When you enter Stormwind City:
.' You will automatically accept a quest
..accept 28825		
step
goto Stormwind City,74.5,19.0
.talk 45226
..turnin 28825
..accept 28826
step
goto 74.4,19.5
.click Waters of Farseeing##445
.' Peer into the Waters of Farseeing |q 28826/1
step
goto 74.5,19.0
.talk 45226
..turnin 28826
step
goto 27.4,24.1
.talk 36799
..turnin 27724
..accept 14482
step
 goto 18.5,25.4 |n
.' Ride the mercenary ship to Vashj'ir |q 14482/1 |tip Wait on the docks, it could take a little while for the boat to finally show up.
step
goto Kelp'thar Forest,45.2,23.4
.talk 36915
..turnin 14482
..accept 24432
step
goto 44.5,25.0
.click Saltwater Stars##9991
.get 3 Saltwater Starfish |q 24432/1
.click Conch Shell##9440
.get Conch Shell |q 24432/2
step
goto 45.2,23.4
.talk 36915
..turnin 24432
..accept 25281
step
goto 44.3,27.6
.' Use your Enchanted Conch on Drowning Warriors |use Enchanted Conch##52710 
.' Rescue 6 Drowning Soldiers |q 25281/1
'|modelnpc Drowning Soldier##39663
step
goto 45.2,23.4
.talk 36915
..turnin 25281
..accept 25405
step
goto 45.2,23.4
.talk 36915
.home The Briny Cutter
step
goto 44.7,22.6
.talk 39887
..turnin 25405
..accept 25357
..accept 25546
step
 goto 43.7,25.6
.from Splitclaw Skitterer##40685+
.get 10 Succulent Crab Meat |q 25546/1
step
goto 48.7,27.4
.kill 8 Zin'jatar Raider##39313+ |q 25357/1
step
goto 44.7,22.6
.talk 39887
..turnin 25357
..turnin 25546
..accept 25545
..accept 25564
step
goto 49.1,21.4
.from Slitherfin Eel##40855
..accept 27729 |tip This quest will automatically be accepted after you kill an eel.
step
goto 48.0,20.9
.click Stormwind Breastplates##4074
.get 5 Stormwind Breastplate |q 25545/1
.click Stormwind Helm##9486
.get 5 Stormwind Helm |q 25545/2
.click Stormwind Spear##9494
.get 5 Stormwind Spear |q 25545/3
.from Gilblin Scavenger##40811+
.get 5 Stormwind Shield |q 25545/4
.click the Stormwind S.E.A.L. Equipment##9280
.get 6 Stormwind S.E.A.L. Equipment |q 25564/1
.from Slitherfin Eel##40855+
.' Justifiably Slay 8 Disgusting Eels |q 27729/1
step
'Click the Quest Completion box that pops up
..turnin 27729
step
goto 44.7,22.6
.talk 39887
..turnin 25545
..turnin 25564
..accept 25547
step
goto 45.0,23.5
.talk 40690
..turnin 25547
..accept 25558
step
goto 44.4,24.6
.' Follow the troops out and help them defend the Briny Cutter from the waves of nagas
.' Swim over to [46.4,46.5] after you get kidnapped
.' Defense of The Briny Gutter Complete |q 25558/1
step
goto 46.3,46.9
.talk 40105
..turnin 25558
step
goto 46.0,46.9
.talk 41248
..accept 25477
step
goto 54.2,53.0
.' Use Moanah's Baitstick on a Speckled Sea Turtle |use Moanah's Baitstick##54462 |modelnpc Speckled Sea Turtle##40223
.' Start swimming back to Moanah Stormhoof at [46.0,46.9]
.' Mount the Sea Turtle |q 25477/1
step
goto 46.0,46.9
.talk 41248
..turnin 25477
..accept 25371
step
goto 45.4,46.6
.click Braided Rope##7548
..' Tie your lure off and let it loose
.' Tie off the Seahorse lure |q 25371/1
.clicknpc Abyssal Seahorse##39629 |invehicle 
step
'Use the abilities on your action bar and follow the on screen instructions to hold onto the seahorse
.' Subdue an Abyssal Seahorse |q 25371/2
step
goto 46.0,46.9
.talk 41248
..turnin 25371
step
.learnmount Subdued Abyssal Seahorse##75207 |use Subdued Abyssal Seahorse##54465
step
goto 46.6,46.8
.talk 41252
..accept 27685
step
goto 53.5,43.0
.talk 39667
..turnin 27685
..accept 25587
step
goto 54.4,33.7 |n
.' Enter the cave |goto 54.4,33.7,0.5 |noway |c
step
goto 56.8,29.8
.' Go to this spot
.' Scout Smuggler's Hole |q 25587/1
step
goto 54.4,33.7 |n
.' Leave the cave |goto 54.4,33.7,0.5 |noway |c
step
goto 54.0,34.6
.' Go to this spot
.' Signal Adarrah |q 25587/2
step
goto 54.4,33.7 |n
.' Enter the cave |goto 54.4,33.7,0.5 |noway |c
step
goto 57.1,28.8
.talk 39883
..turnin 25587
..accept 25598
step
goto 54.4,33.7 |n
.' Leave the cave |goto 54.4,33.7,0.5 |noway |c
step
goto 48.3,39.6
.talk 39669
..' Tell him to make for that cave to the west
.' Rescue Mack and Samir |q 25598/1
step
goto 49.7,40.9
.click Sunken Crate##336
..accept 25388
step
goto 54.4,33.7 |n
.' Enter the cave |goto 54.4,33.7,0.5 |noway |c |travelfor 2
step
goto 57.1,28.8
.talk 39883
..turnin 25598
..turnin 25388
..accept 25390
..accept 25389
step
goto 57.3,28.9
.talk 39884
..accept 25602
step
goto 54.4,33.7 |n
.' Leave the cave |goto 54.4,33.7,0.5 |noway |c
step
goto 49.7,38.4
.from Clacksnap Pincer##39918+
.get 4 Clacksnap Tail |q 25389/1
.collect Tattered Treasure Map##53053 |n
.' Use your Tattered Treasure Map in your bags |use Tattered Treasure Map##53053
..accept 25377
.click Adarrah's Jewelry Boxe##1+
.get 6 Adarrah's Keepsake |q 25390/1
step
goto 55.5,38.8
.click Keg of Gunpowder##472
.get Keg of Gunpowder |q 25602/1
step
goto 57.2,37.8
.from Akasha##39964
.get Horde Chest Key |q 25377/1
step
goto 57.8,35.2
.click Sunken Horde Chest##9281
..turnin 25377
step
goto 54.4,33.7 |n
.' Enter the cave |goto 54.4,33.7,0.5 |noway |c
step
goto 57.1,28.8
.talk 39883
..turnin 25390
..turnin 25389
step
goto 57.3,28.9
.talk 39884
..turnin 25602
step
goto 57.1,28.8
.talk 39883
..accept 25459
step
goto 57.3,29.3
.talk 40983
..accept 25358
step
goto 54.4,33.7 |n
.' Leave the cave |goto 54.4,33.7,0.5 |noway |c
step
goto 55.3,38.9
.talk 46338
..accept 25651	
step
goto 56.8,36.3
.from Brinescale Serpent##39948+
.' Slay 4 Brinescale Serpent |q 25459/1
.click Sunken Cargo##7539
.get 5 Sunken Cargo |q 25358/1
step
goto 52.1,51.5
.from Gilblin Hoarder##41016+
.click Pilfered Cannonball##4177+
.collect 50 Pilfered Cannonball##55185 |n
.' Use your Pilfered Cannonballs |use Pilfered Cannonball##55185
.get Barrel of Gunpowder |q 25651/1
step
goto 55.3,38.9
.talk 46338
..turnin 25651
..accept 25657
step
goto 54.4,33.7 |n
.' Enter the cave |goto 54.4,33.7,0.5 |noway |c
step
goto 57.3,29.3
.talk 40983
..turnin 25358
step
goto 57.1,28.8
.talk 39883
..turnin 25459
step
goto 56.4,30.1
.click Broken Bottle##238
..accept 25638
step
goto 54.4,33.7 |n
.' Leave the cave |goto 54.4,33.7,0.5 |noway |c
step
goto 46.3,46.9
.talk 40105
..turnin 25638
..accept 25794
step
'Use Erunak's Scrying Orb |use Erunak's Scrying Orb##56020 |q 25794/1
step
goto 46.3,46.9
.talk 40105
..turnin 25794
..accept 25812
step
goto 58.3,48.8
.' Use your Booby-Trapped Bait next to the Rusty Harpoon Gun |use Booby-Trapped Bait##55190
.' Feed the Explosive Grub to Gnaws |q 25657/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 25657
..accept 27699
step
goto 58.4,50.1
.click Gnaws' Tooth##9517
.get 5 Gnaws' Tooth |q 27699/1
step
goto 55.3,38.9
.talk 46338
..turnin 27699
..accept 25670
step
goto 58.3,48.8
.' Use your Budd's Chain next to the Rusty Harpoon Gun |use Budd's Chain##55220 
.' While in Gnaws' mouth, spam the ability on your hotbar |tip A huge harpoon will eventually shoot into Gnaws.  Once that happens, you can stop spamming the ability.
.' Slay Gnaws |q 25670/1
step
goto 61.5,63.4 |n
.' Enter the cave |goto 61.5,63.4,0.5 |noway |c
step
goto 64.0,59.8
.talk 41324
..turnin 25812
step
goto 63.9,59.9
.talk 41341
..accept 25824
step
goto 64.0,59.8
.talk 41340
..' Ask him who he is
.' Debrief Private Pollard |q 25824/1
step
goto 63.9,59.9
.talk 41341
..turnin 25824
..accept 25887
step
goto 58.4,48.7
.talk 46458
..turnin 25670
..accept 25732
step
goto 53.6,58.0
.from King Gurboggle##41018
.get The Pewter Pounder |q 25732/1
step
goto 58.4,48.7
.talk 46458
..turnin 25732
..accept 25743
step
'Use The Pewter Pounder |use The Pewter Pounder##55806
.' Destroy The Pewter Prophet |q 25743/1
step
goto 58.4,48.6
.talk 46463
..turnin 25743
step
goto 58.7,72.4
.' Use your Orb of Suggestion on a Famished Great Shark |use Orb of Suggestion##56576
.' Take control of a Famished Great Shark |invehicle |q 25887
step
goto 57.5,72.4
.' Use the Eat Naga ability on your hotbar repeatedly near Zin'jatar Guardians |tip They are nagas all around this area.
.' Eat 10 Zin'jatar Guardians Alive |q 25887/1
.' Use the Return to Safety ability on your hotbar
.' Go back to the Deepmist Grotto |outvehicle |q 25887
' |modelnpc 41481
step
goto 61.1,63.9 |n
.' Enter the cave |goto 61.1,63.9,0.5 |noway |c
step
goto 63.9,59.9
.talk 41341
..turnin 25887
step
goto 63.9,59.9
.talk 41341
.home Deepmist Grotto
step
goto 64.0,59.8
.talk 41340
..accept 25885
step
goto 63.9,59.4
.talk 41347
..accept 25888
step
goto 64.2,59.9
.talk 41344
..accept 25884
step
goto 61.1,63.9 |n
.' Leave the cave |goto 61.1,63.9,0.5 |noway |c
step
goto 60.3,69.9
.click Naga Tridents##9552+
..accept 25883
step
goto 57.7,75.4
.' Swim around on all 3 layers of the naga Holding Pens
.from Zin'jatar Guardian##41996+, Zin'jatar Pearlbinder##41477+, Zin'jatar Overseer##41549+, Zin'jatar Warden##41530
.' Slay 12 Zin'jatar Naga |q 25884/1
.get 7 Wiggleweed Sprout |q 25885/1 
.' Use your Breathstone on Imprisoned Soldiers |use Breathstone##56169 |tip They looks like dead humans in big balls of light all around on the naga Holding Pens.
.' Release 10 Imprisoned Soldiers |q 25888/1
.click Naga Tridents##9552
.' Destroy 6 Naga Weapons |q 25883/1
step
'Click the Quest Complete box that pops up
..turnin 25884
..accept 27708
step
'Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 25883
step
goto 60.1,81.2
.kill Zin'jatar Warden##41530 |q 27708/1
step
'Hearth to Deepmist Grotto |goto 63.8,59.8,0.5 |use Hearthstone##6948 |noway |c
step
goto 63.9,59.9
.talk 41341
..turnin 27708
..accept 25471
step
goto 64.0,59.8
.talk 41340
..turnin 25885
step
goto 63.9,59.4
.talk 41347
..turnin 25888
step
goto 48.3,72.5 |n
.' Enter the cave |goto 48.3,72.5,0.5 |noway |c
step
goto Shimmering Expanse,56.0,13.7
.talk 39226
..turnin 25471
..accept 25334
step
goto 56.0,13.7
.talk 39226
..' Tell him you are ready to join him in the vision
.' Share in Farseer Gadra's Spirit Vision |q 25334/1
step
goto Abyssal Depths,72.9,37.4
.talk 40398
..turnin 25334
step
goto Shimmering Expanse,56.0,13.7
.talk 39226
..accept 25164
step
goto 56.0,13.7
.from Zin'jatar Fathom-Stalker##40162+
.' Fend Off the Naga Attack |q 25164/1 |tip You have to kill 50 nagas.
.kill Fathom-Lord Zin'jatar##40510 |q 25164/2
step
goto 56.0,13.7
.talk 39226
..turnin 25164
step
goto 55.5,12.5
.talk 39877
..accept 25221
step
goto 54.0,23.4
.' Follow the path outside the cave
.' Use Toshe's Hunting Spears near Fleeing Zin'jatar Fathom-Stalkers |use Toshe's Hunting Spears##54466
.kill 20 Fleeing Zin'jatar Fathom-Stalker##40174 |q 25221/1
step
goto 53.3,33.1
.talk 39877
..turnin 25221
..accept 25222
step
goto 50.1,39.1 |n
.' Enter the cave |goto 50.1,39.1,0.5 |noway |c
step
goto 49.5,42.4
.talk 39876
..turnin 25222
..accept 25215
..accept 25216
step
goto 49.2,42.6
.talk 39875
..accept 25219
step
goto 49.1,42.0
.talk 39878
..accept 25220
step
goto 49.1,42.0
.talk 39878
.home Silver Tide Hollow
step
goto 50.3,41.1
.clicknpc Dead Zin'jatar Raider##39911+
.' Bring them to [50.8,45.9] |tip You have to drag them one at a time.
.' Dispose of 3 Dead Zin'jatar Raiders |q 25215/1
step
goto 59.6,40.1
.kill 12 Spiketooth Eel##40237+ |q 25220/1
.clicknpc Coilshell Sifter##39422+
.get 10 Coilshell Sifter |q 25219/1
step
goto 50.1,39.1 |n
.' Enter the cave |goto 50.1,39.1,0.5 |noway |c
step
goto 49.5,42.4
.talk 39876
..turnin 25215
step
goto 49.2,42.6
.talk 39875
..turnin 25219
step
goto 49.1,42.0
.talk 39878
..turnin 25220
step
goto 41.3,34.2
.talk 39882
..turnin 25216
..accept 25218
step
goto 41.1,34.2
.talk 40227
..accept 25360
step
goto 40.5,35.5
.' Use Sambino's Air Balloon next to the bubbling objects |use Sambino's Air Balloon##54608 |tip They look like green bubbling watermelon looking plants with a holes in the tops of them, and big blue bubbling snail shells.  You'll have to do this 10 times.
.' Fill Sambino's Air Balloon |q 25218/1
.kill 10 Green Sand Crab##40238 |q 25360/1
.get Sambino's Air Valve |q 25218/2
' |modelnpc 40399
step
goto 41.3,34.2
.talk 39882
..turnin 25218
..accept 25217
step
goto 41.2,34.2
.talk 40227
..turnin 25360
step
goto 42.7,34.0
.' Use one of Sambino's Modified Totems while standing on an orange spot on the ground: |tip You will only get one of the four totems to use, it's random.
.' Use Sambino's Modified Stoneclaw Totem |use Sambino's Modified Stoneclaw Totem##54214
.' Use Sambino's Modified Earthbind Totem |use Sambino's Modified Earthbind Totem##53052
.' Use Sambino's Modified Stoneskin Totem |use Sambino's Modified Stoneskin Totem##54217
.' Use Sambino's Modified Strength of Earth Totem |use Sambino's Modified Strength of Earth Totem##54216
.' Defend Sambino's Modified Totem
.' Take a Drill Sample |q 25217/1
step
goto 41.3,34.2
.talk 39882
..turnin 25217
..accept 25456
step
goto 50.1,39.0 |n
.' Enter Silver Tide Hollow |goto 50.1,39.0,0.5 |noway |c
step
goto 49.6,42.1
.talk 39876
..turnin 25456
..accept 25359
step
goto 64.1,42.3
.talk 40221
..turnin 25359
..accept 25439
..accept 25441
step
goto 65.8,43.1
.' Use your Globes of Tumultuous Water near Swarming Serpents |use Globes of Tumultuous Water##54785
.' Trap 30 Swarming Serpents |q 25441/1
.kill 10 Zin'jatar Ravager##40275+ |q 25439/1
' |modelnpc 40280
step
goto 64.1,42.3
.talk 40221
..turnin 25439
..accept 25440
..turnin 25441
step
goto 67.3,49.7
.kill Fathom-Lord Zin'jatar##40510 |q 25440/1
.collect 1 Luminescent Pearl##54614 |n
.' Click the Luminescent Pearl in your bags |use Luminescent Pearl##54614
..accept 25442
step
goto 64.1,42.3
.talk 40221
..turnin 25440
step
'Hearth to Silver Tide Hollow |goto 49.1,42.0,0.5 |use Hearthstone##6948 |noway |c
step
goto 49.2,42.6
.talk 39875
..turnin 25442
..accept 25890
step
goto 50.4,41.1 |n
.' Leave the cave |goto 50.4,41.1,0.5 |noway |c
step
goto 51.8,48.6 |n
.' Enter Nespirah |goto 51.8,48.6,0.5 |noway |c
step
'Run up the spiral ramp and follow Earthmender Duarn around after he spawns: |modelnpc Earthmender Duarn##41532
.' Find a way to communicate with Nespirah |q 25890/1
step
goto 51.6,52.2
.talk 41531
..turnin 25890
..accept 25900
step
goto 51.6,52.2
.talk 41531
..' Tell him whenever he's ready
.' Observe as Earthmender Duarn attempts to communicate with Nespirah |q 25900/1
step
goto 51.6,52.2
.talk 41531
..turnin 25900
..accept 25907
..accept 25908
step
goto 54.6,50.6
.kill 7 Idra'kess Sentinel##41466 |q 25908/1
.kill 7 Idra'kess Enchantress##41467 |q 25908/2
.' Use Duarn's Rope near Enslaved Alliance and Horde Pearl Miners |use Duarn's Rope##56178 |tip They are in the trenches with the huge pearls.
.' Rescue 8 Pearl Miners |q 25907/1
|modelnpc Enslaved Alliance Pearl Miner##41494
|modelnpc Enslaved Horde Pearl Miner##41495
step
goto 51.6,52.2
.talk 41531
..turnin 25907
..turnin 25908
..accept 25909
step
 goto 54.7,62.2
.' Use Duarn's Net on the Deepseeker Crab |use Duarn's Net##56184 |tip The Deepseeker Crab is the pet of the Idra'kess Harpooner.
.clicknpc the Deepseeker Crab##41520
.get Deepseeker Crab |q 25909/1
step
goto 51.6,52.2
.talk 41531
..turnin 25909
..accept 25916
step
goto 51.6,52.2
.talk 41531
..' Tell him let's speak with Nespirah
.' Speak with Earthmender Duarn |q 25916/1
step
goto 51.6,52.2
.talk 41531
..turnin 25916
..accept 25917
step
goto 62.7,49.9
.talk 41540
..turnin 25917
..accept 25919
step
goto 62.7,50.0
.talk 41541
..accept 25918
step
goto 62.7,50.5
.talk 41802
..accept 25920
step
goto 62.6,54.2
.from Idra'kess Warlord##41607+, Idra'kess Prophet##41608+
.get 5 Mysterious Pearl |q 25920/1
.click Idra'kess Weapon Rack##9557 +
.get 4 Purloined Polearm |q 25918/1
.' Attack 7 Nespirah Abscesses |q 25919/1
' |model Nespirah Abcess##9547
step
goto 62.7,49.9
.talk 41540
..turnin 25919
step
goto 62.7,50.0
.talk 41541
..turnin 25918
step
goto 62.7,50.5
.talk 41802
..turnin 25920
step
goto 62.7,49.9
.talk 41540
..accept 25921
step
goto 62.9,56.8 |n
.' Follow the path up |goto 62.9,56.8,0.5 |noway |c
step
goto 57.4,56.3
.kill Overseer Idra'kess##41731 |q 25921/1 |tip Kill the Idra'kess Mistresses when instructed to.
|modelnpc Idra'kess Mistress##41795
step
goto 60.2,52.8 |n
.' Follow the path down |goto 60.2,52.8,0.5 |noway |c
step
goto 51.6,52.2
.talk 41531
..turnin 25921
..accept 25922
.' Listen as Duarn speaks to Nespirah |q 25922/1
step
goto 50.3,55.4
.' Follow Erunak Stonespeaker when he runs away
.clicknpc Swiftfin Seahorse##41776
.' Escape on Erunak's Seahorse |q 25922/2
step
goto 49.2,57.0
.talk 40642
..turnin 25922
..accept 25536
step
goto 49.5,57.6
.talk 39881
..accept 25535
step
goto 49.7,57.4
.talk 42873
.home Tranquil Wash
step
goto 46.9,57.5 |n
.' Leave the cave |goto 46.9,57.5,0.5 |noway |c
step
goto 49.0,49.1
.talk 40641
..turnin 25535
..accept 25539
step
goto 49.0,49.2
.talk 40639
..accept 25537
step
goto 43.8,47.9
.kill 10 Glimmerdeep Tidehunter##39664+ |q 25536/1
.click Glimmerdeep Clam##261
.get 16 Glimmerdeep Clam |q 25539/1
.' Use the Anenmone Chemical Extraction Device on the Anemones |use Anenmone Chemical Extraction Device##54840 |tip They look like huge brown spiked flower shaped plants that leak red mist on the walls around this area.
.' Gather 8 Anemone Chemicals |q 25537/1
step
goto 49.0,49.1
.talk 40641
..turnin 25539
step
goto 49.0,49.2
.talk 40639
..turnin 25537
..accept 25538
step
goto 49.0,52.9
.' Use Anemone Chemical Application Device on Clam Divers |use Anemone Chemical Application Device##54851
.' Odorify 8 Clam Divers |q 25538/1
step
goto 49.0,49.2
.talk 40639
..turnin 25538
step
goto 49.0,49.1
.talk 40641
..accept 25540
step
goto 46.9,57.5
.' Swim down under the big stone slab and into the small cove
.' Enter the cave |goto 46.9,57.5,0.5 |noway |c
step
goto 49.2,57.0
.talk 40642
..turnin 25536
step
goto 49.5,57.6
.talk 39881
..turnin 25540
step
goto 49.7,57.1
.talk 40644
..accept 25581
step
goto 49.2,57.0
.talk 40643
..accept 25582
..accept 25579
step
goto 49.2,57.0
.talk 40642
..accept 25580
step
goto 46.9,57.5 |n
.' Leave the cave |goto 46.9,57.5,0.5 |noway |c
step
goto 40.5,74.4
.' Go to this spot in the ruins
.' Scout the Structures South of Quel'Dormir Gardens |q 25582/3
step
goto 40.5,75.5
.click Enormous Skull##9394
..accept 25583
step
goto 39.7,67.7
.click Ranger Valarian##3412
.' Read the Ranger Valarian Statue |q 25581/3
step
goto 38.5,66.0
.click High Priestess Siralen##3412
.' Read the High Priestess Siralen Statue |q 25581/4
step
goto 35.5,62.9
.' Go to this spot in the ruins
.' Scout the Tunnel West of Quel'Dormir Gardens |q 25582/2
step
goto 38.6,59.0
.click the Queen Azshara##3412
.' Read the Queen Azshara Statue |q 25581/2
step
goto 39.7,59.0
.click the Lestharia Vashj##3412
.' Read the Lestharia Vashj Statue |q 25581/1
step
goto 39.2,57.9
.' Go to this spot in the ruins
.' Scout the Northern Quel'Dormir Gardens |q 25582/1
step
goto 41.6,61.9
.from Azsh'ir Monitor##40877+
.' Destroy 8 Azsh'ir Monitor |q 25580/1
.kill 12 Azsh'ir Patroller##39638 |q 25579/1
.collect 1 Ancient Elven Etching##62281 |n |tip You will need to kill the Azsh'ir Mobs until you get this to drop.
.' Click the Ancient Elven Etching in your bags |use Ancient Elven Etching##62281
..accept 27716
step
'Hearth to Tranquil Wash |goto 49.7,57.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 49.7,57.1
.talk 40644
..turnin 25581
..turnin 27716
step
goto 49.2,57.0
.talk 40642
..turnin 25580
step
goto 49.2,57.0
.talk 40643
..turnin 25582
..turnin 25579
..turnin 25583
step
goto 49.2,57.0
.talk 39881
..accept 25760
step
goto 46.9,57.5 |n
.' Leave the cave |goto 46.9,57.5,0.5 |noway |c
step
goto 40.5,75.5
.' Use your Blade of the Naz'jar Battlemaiden next to the Vision of the Battlemaiden |use Blade of the Naz'jar Battlemaiden##55171 |tip It's a bright flashing light on the ground in the ruins.
.' Become a Naz'jar Battlemaiden
.talk 40978
..accept 25619
step
goto 40.5,73.5
.' Use the abilities on your hotbar
.from Kvaldir Deepwalker##41107+, Kvaldir Marauder##39602+
.' Slay 10 Kvaldir Defenders |q 25619/1
step
goto 40.6,75.3
.talk 40978
..turnin 25619
..accept 25620
step
goto 39.4,59.0
.talk 40640
..turnin 25620
..accept 25637
step
goto 39.0,58.6
.talk 41050
..accept 25658
step
goto 35.5,67.5
.' Go to the top level of the ruins
.from Kvaldir Pillager##41102+, Kvladir Plunderer##41108+, Kvaldir Wasteroamer##41106+
.' Slay 16 Kvladir Invaders on the Terrace |q 25637/1
.click Nar'shola Ward##6913+
.' Activate 6 Nar'shola Wards |q 25658/1
step
goto 39.0,58.6
.talk 41050
..turnin 25658
step
goto 36.4,78.7
.talk 41049
..turnin 25637
..accept 25659
step
goto 28.6,78.6
.kill Varkul the Unrelenting##41115 |q 25659/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 25659
step
goto 40.6,75.1
.talk 39881
..turnin 25760
..accept 25747
step
goto 40.6,75.0
.clicknpc Tamed Seahorse##48836
.' You will ride to the Ruins of Vashj'ir |goto 33.1,68.9,0.5 |noway |c
step
goto 33.0,67.9
.talk 40643
..turnin 25747
..accept 25748
step
goto 33.2,68.4
.talk 40642
..accept 25749
step
goto 32.9,69.2
.talk 40639
..accept 25751
step
goto 33.0,74.2
.' Use your Box of Crossbow Bolts on Alliance Lookouts |use Box of Crossbow Bolts##56247 |tip They look like Alliance mobs either standing or on sea horses around this area with crossbows.
.' Restock 8 Alliance Lookouts |q 25749/1
.click Bloated Kelp Bulb##9535
.get 8 Bloated Kelp Bulb |q 25751/1	
|modelnpc Alliance Lookout##46470
step
goto 27.0,79.0
.from Azsh'ir Abyss Priestess##42453+, Azsh'ir Infantry##41227+, Naz'jar Serpent Guard##41228+
.' Slay 10 Southern Naga Forces |q 25748/1
step
goto 32.9,69.2
.talk 40639
..turnin 25751
step
goto 33.2,68.4
.talk 40642
..turnin 25749
step
goto 33.0,67.9
.talk 40643
..turnin 25748
..accept 25752
step
goto 32.9,69.2
.talk 40639
..' Tell him you're ready to begin the assault on the terrace
.' Use the Improvised Explosives ability on your hotbar on the nagas on the ground as you ride the seahorse
.kill 100 Azsh'ir Solider##41249+ |q 25752/2
.kill 20 Wave Screamer##41250+ |q 25752/3
.kill 12 Azsh'ir Archaean##42549+ |q 25752/4
step
goto 39.1,78.7
.talk 40643
..turnin 25752
..accept 25754
step
goto 39.1,78.5
.talk 40642
..accept 25753
step
goto 33.3,67.6
.' Go to this spot at the entrance of the tunnel
.' Scout the Tunnel to the North |q 25754/1
step
goto 30.2,75.1
.' Go to this spot at the entrance of the tunnel
.' Scout the Northwestern Terrace |q 25754/2
step
goto 32.9,78.7
.talk 41281
..' Tell them they should get moving.
.' Rescue 6 Injured Assault Volunteers |q 25753/1
step
goto 39.1,78.7
.talk 40643
..turnin 25754
step
goto 39.1,78.5
.talk 40642
..turnin 25753
step
goto 39.2,78.6
.talk 39881
..accept 25755
step
goto 28.9,78.7
.' Use your Blade of the Naz'jar Battlemaiden next to the Vision of the Battlemaiden |use Blade of the Naz'jar Battlemaiden##55171 |tip It's a bright flashing light on the ground on the stone terrace.
.talk 42076
..accept 25858
step
goto 34.4,78.7
.talk 42072
..' Tell him you are to hunt the Crucible of Nazsharin
.' Speak to Fathom-Lord Zin'jatar |q 25858/1
step
goto 36.8,79.7
.talk 41455
..' Tell him you are to hunt the Crucible of Nazsharin
.' Speak to Overseer Idra'kess |q 25858/3
step
goto 39.2,78.0
.talk 42071
..' Tell her you are to hunt the Crucible of Nazsharin
.' Speak to Lady Sira'kess |q 25858/2
step
goto 46.2,79.6
.talk 42074
..turnin 25858
..accept 25859
step
goto 46.3,78.6
.talk 41476
..accept 25862
step
goto 57.2,89.9
.click Crucible of Nazsharin##9565
..turnin 25862
..accept 25863
step
goto 57.2,85.2
.talk 41457
..accept 25861
step
goto 55.6,86.3
.' Aggro a Kvaldir High-Shaman, but don't kill him
.' Lure the Kvaldir High-Shaman back to Executioner Verathress at [57.2,85.2]
.' Bring Kvaldir High-Shaman to the executioner |q 25861/1
' |modelnpc 41537
step
goto 57.2,85.3
.talk 41457
..turnin 25861
step
goto 57.1,88.3
.' Use the abilities on your hotbar to do the following:
.kill 20 Vrykul Ledge Kvaldir |q 25859/1
' |modelnpc 41537
' |modelnpc 41451
step
goto 46.4,79.0
.talk 42076
..turnin 25863
step
goto 46.5,79.3
.talk 42074
..turnin 25859
step
goto 46.4,79.0
.talk 42076
..accept 26191 |instant
.' Witness the Continuing Story of the Battlemaiden |q 25755/1
step
goto 29.6,78.9
.talk 39881
..turnin 25755
..accept 25892
step
goto 29.5,79.0
.clicknpc Tamed Seahorse##48901
.' You will ride to Tranquil Wash |goto 48.4,57.4,0.5 |noway |c
step
goto 49.2,57.0
.talk 40642
..turnin 25892
..accept 25893
step
goto 47.1,57.5 |n
.' Leave the cave |goto 47.1,57.5,0.5 |noway |c
step
goto 56.9,80.5
.talk 41535
..turnin 25893
..accept 25895
..accept 25897
step
goto 57.0,80.5
.talk 40645
..accept 25894
step
goto 61.4,86.2
.click Alliance Survival Kit##7539
.get Alliance Survival Kit |q 25895/1
step
goto 60.8,85.3
.kill 10 Muckskin Scrounger##41566 |q 25894/1
step
goto 56.7,87.2
.from Kvaldir Fleshcarver##41569+, Kvaldir Seahorror##41606+ 
.click Coils of Kvaldir Rope##7548
.get 8 Coil of Kvaldir Rope |q 25897/1
step
goto 56.9,80.5
.talk 41535
..turnin 25895
..turnin 25897
..turnin 25894
..accept 25898
step
goto 56.6,80.3
.' Swim up to the rescue balloon on the surface |q 25898/1
.click Survival Kit Remains##7539
.collect 1 Rescue Flare##56188 |n
.' Use the Rescue Flare in your bags |use Rescue Flare##56188
.' Fire a rescue flare towards the Horde ships |q 25898/2
step
goto 56.6,80.3
.talk 40645
..turnin 25898
..accept 25911
step
'Hearth to Tranquil Wash |goto 49.6,57.4,0.5 |use Hearthstone##6948 |noway |c
step
goto 49.2,57.0
.talk 40642
..turnin 25911
step
goto 49.5,57.6
.talk 39881
..accept 25626
step
goto 47.1,57.5 |n
.' Leave the cave |goto 47.1,57.5,0.5 |noway |c
step
goto 33.1,77.9
.' Go to the very top of the Naga terrace and into the dome temple
.' Infiltrate the Quel'Dormir Temple |q 25626/1
step
goto 33.1,77.8
.' Swim up to the second floor of the temple
.' Use your Blade of the Naz'jar Battlemaiden next to the Vision of the Battlemaiden |use Blade of the Naz'jar Battlemaiden##55171 |tip It looks like a bright flashing light inside the temple.
.talk 41456
..accept 25896
step
goto 33.1,75.9
.talk 42077
..accept 25629
step
goto 33.1,61.0
.talk 41980
..' Tell him the mistress awaits
.' Gather Fathom-Caller Azrajar |q 25896/2
step
goto 33.1,73.0
.talk 41985
..' Tell them they are needed for the ritual
.' Gather 6 Sira'kess Tide Priestesses |q 25896/1
.' Kill all the Kvaldir mobs attacking Naz'jar Honor Guards around this area
.' Relieve 8 Naz'jar Honor Guards |q 25629/1
step
goto 33.1,75.9
.talk 42077
..turnin 25629
step
goto 33.1,77.9
.talk 41456
..turnin 25896
..accept 25860
step
goto 33.1,76.9
.' Use the abilities on your hotbar
.from Kvladir Sandreaper##42058+, Kvaldir Bonesnapper##42057+
.kill 20 Attacking Kvaldir |q 25860/1
step
goto 33.1,77.9
.talk 41456
..turnin 25860
..accept 25951
step
goto 37.9,78.5
.' Use the abilities on your hotbar
.from Kvaldir Skinflayer##42060+, Kvaldir Fearweaver##42062+
.' Hold the eastern end of Quel'Dormir Terrace |q 25951/1
step
goto 41.9,78.6
.' Use the abilities on your hotbar
.from Hagrim Hopebreaker##42063 |tip He spawns when the naga allies arrive
.' Push the Kvaldir back across the bridge |q 25951/2
step
goto 42.5,78.6
.talk 42077
..turnin 25951
.' Witness the Concluding Story of the Battlemaiden |q 25626/2
step
goto 46.9,57.5
.' Swim down under the big stone slab and into the small cove
.' Enter the cave |goto 46.9,57.5,0.5 |noway |c
step
goto 49.5,57.6
.talk 39881
..turnin 25626
..accept 26005
step
goto 57.1,75.2
.' Use your Boom Boots to get to the water surface quickly |use Boom Boots##57412
.talk 43289
.fpath Voldrin's Hold
step
goto 57.1,75.5 |n
.click Rope Ladder##9094 |tip It's hanging off the side of the boat.
.' Jump up onto the boat |goto 57.1,75.5,0.5 |noway |c
step
goto Vashj'ir,69.6,75.3
.talk 42411
..turnin 26005
..accept 26219
step
goto 69.5,75.3
.talk 43295
.fpath Voldrin's Hold
step
goto 69.8,75.6
.' Board the Pincher once it arrives |q 26219/1 |tip It's a boat, so you may have a to wait a few minutes for it.
step
'Ride the boat
.' Secure Darkbreak Cove |q 26219/2
step
goto  Abyssal Depths 54.4,72.9
.talk 41662
..turnin 26219
step
goto 54.7,72.2
.talk 42963
.home Darkbreak Cove
step
goto 55.5,72.9
.talk 41666
..accept 26103
step
goto 60.0,78.5 |n
.' Leave the cave |goto 53.5,73.8,-310 |noway |c
step
goto 52.5,74.4
.' Swim up above the cave
.from Seabrush Terrapin##42108+, Scourgut Remora##42112+, Spinescale Hammerhead##42113+ 
.' Use your Oil Extrusion Pump on their corpses |use Oil Extrusion Pump##56821
.get 4 Terrapin Oil |q 26103/1
.get 4 Remora Oil |q 26103/2
.get 4 Hammerhead Oil |q 26103/3
step
goto 60.0,78.5 |n
.' Swim down into the cave |goto 60.0,78.5,1.0 |noway |c
step
goto 55.5,72.9
.talk 41666
..turnin 26103
..accept 26106
step
goto 55.8,72.5
.click Fuel Sampling Station##3491
..' Click "Let's get started!"
.' Choose the Hammerhead Oil Sample 3 Times
.' Choose the Remora Oil Sample 2 Times
.' Mix the samples together!
.collect Promising Fuel Sample##56833 |q 26106
step
goto 55.5,72.9
.talk 41666
..' Tell him you made a Promising Fuel Sample
.' Create the perfect bio-fuel |q 26106/1
step
goto 55.5,72.9
.talk 41666
..turnin 26106
step
goto 54.4,72.9
.talk 41662
..accept 26014
step
goto 60.0,78.5 |n
.' Leave the cave |goto 60.0,78.5,1.0 |noway |c
step
goto 47.4,49.7
.talk 41907
..turnin 26014
..accept 26015
step
goto 45.1,53.6
.from Luxscale Grouper##41923+, Pyreshell Scuttler##41922+
.get 6 Underlight Phosphora |q 26015/1
step
goto 47.4,49.7
.talk 41907
..turnin 26015
..accept 26017
..accept 26018
step
goto 45.9,51.7
.kill 4 Coldlight Hunter##41925+ |q 26018/1
.kill 4 Coldlight Oracle##41926+ |q 26018/2
.collect 1 Enormous Eel Egg##56571 |n
.' Click the Enormous Eel Egg in your bags |use Enormous Eel Egg##56571
..accept 26019
.' Get near Coldlight Nibblers |tip Having friendly nameplates active is very useful in finding them. Shift+V will bring them up
.get 30 Coldlight Nibbler |q 26017/1
|modelnpc Underlight Nibbler##41916+
step
goto 47.4,49.7
.talk 41907
..turnin 26017
..turnin 26018
..turnin 26019
..accept 26021
..accept 26080
step
goto 44.4,53.7
.' Use your Eel-Splosive Device in the path of a Devious Great-Eel |use Eel-Splosive Device##56808 |tip They look like big blue eels that swim around this area.  Place the device in their path, so they swim into it.
.from Weakened Great-Eel##41927
.' Avenge Oskar Digsong |q 26021/2
step
goto 47.4,49.7
.talk 41907
..turnin 26021
step
'Hearth to Darkbreak Cove |goto 54.7,72.1,0.5 |use Hearthstone##6948 |noway |c
step
goto 54.4,72.9
.talk 41662
..turnin 26080
step
goto 55.5,73.0
.talk 41667
..accept 25950
..accept 25977
step
goto 55.5,72.9
.talk 41666
..accept 25981
step
goto 55.6,73.0
.talk 41665
..accept 25975
step
goto 60.0,78.5 |n
.' Leave the cave |goto 60.0,78.5,1.0 |noway |c
step
goto 52.5,21.3
.from Fathom-Caller Azrajar##41590
.' Use your Alliance Standard on Fathom-Caller Azrajar's corpse |use Alliance Standard##56250
.' Plant a banner in Fathom-Caller Azrajar's corpse |q 25977/1
step
goto 43.7,16.7
.click Deepfin Plunder##259+
.get 6 Deepfin Plunder |q 25975/1
step
goto 50.2,18.2
.from Sira'kess Guardian##41586+, Sira'kess Tide Priestess##41589+, Sira'kess Sea Witch##41588+
.kill 10 Sira'kess naga |q 25950/1
.kill Taken Gilbin##41729 |n |tip Click the Merciless Ones after the Gilbin is dead
.from Merciless One##41601
.get 6 Merciless Head |q 25981/1
step
goto 60.0,78.5 |n
.' Enter the cave |goto 60.0,78.5,1.0 |noway |c
step
goto 55.6,73.0
.talk 41665
..turnin 25975
step
goto 55.5,72.9
.talk 41666
..turnin 25981
..accept 25987
.' Wear the Mindless One |q 25987/1
step
goto 55.5,72.9
.talk 41666
..turnin 25987
..accept 25983
step
goto 55.5,73.0
.talk 41667
..turnin 25950
..turnin 25977
step
goto 60.0,78.5 |n
.' Leave the cave |goto 60.0,78.5,1.0 |noway |c
step
goto 42.8,38.0
.talk 41598
..turnin 25983
..accept 26070
..accept 26056
step
goto 42.7,37.9
.talk 41639
..accept 26096
step
goto 42.7,37.9
.talk 41600
..accept 26072
step
goto 42.7,32.2
.' Swim down to the ground
.' Use Erunak's Confinement Totem |use Erunak's Confinement Totem##56801
.from Faceless Defilers##41644+ |tip Kill them next to Erunak's Confinement Totem you put down.
.' Confine 5 Corrupting Faceless Energies |q 26072/1
.from Crushing Eel##41646+, Chasm Stalker##41645+, Deep Remora##41647+
.kill 8 Defiled Scalding Chasm wildlife |q 26070/1
.click Scalding Shroom##10057+
.get 5 Scalding Shroom |q 26096/1
step
goto 42.8,38.0
.talk 41598
..turnin 26070
step
goto 42.7,37.9
.talk 41639
..turnin 26096
step
goto 42.7,37.9
.talk 41600
..turnin 26072
..accept 26111
step
goto 47.0,28.0
.click Stonespeaker's Luring Totem##9575
.from Ick'thys the Unfathomable##41648
.get The Brain of the Unfathomable |q 26111/1
step
goto 52.6,27.8
.talk 41640
..turnin 26056
..accept 26065
step
goto 54.4,27.8
.' Use Valoren's Shrinkage Totem next to a Tentacle Horror |use Valoren's Shrinkage Totem##57409
.from Shrunken Tentacle Horror##41641+
.' Kill all the Shrunken Tentacle Horrors attacking Wil'hai
.' Free Wil'hai |q 26065/1
step
goto 52.6,27.8
.talk 41640
..turnin 26065
step
goto 42.7,37.9
.talk 41600
..turnin 26111
..accept 26130
step
goto 42.8,38.0
.talk 41598
..accept 26132
step
goto 36.3,47.0
.' Swim down into the cave
.kill Ur'Goz##41654 |q 26130/1
step
goto 34.6,54.6
.kill Sku'Bu##41655 |q 26130/2
step
goto 29.6,53.0
.kill Neph'Lahim##41656 |q 26130/3
step
goto 31.9,51.3
.kill 8 Nether Fiend##41650 |q 26132/1
step
goto 42.8,38.0
.talk 41598
..turnin 26132
step
goto 42.7,37.9
.talk 41600
..turnin 26130
..accept 26140
step
goto 36.6,42.1 |n
.' Enter L'ghorek |goto 36.6,42.1,0.5 |noway |c
step
goto 38.5,45.3
.' Talk to L'ghorek
..turnin 26140
..accept 26141
..accept 26142
step
goto 27.0,54.0
.from Twilight Champion##41652+, Twilight Candidate##41657+
.collect 1 Twilight Cage Key##57102 |n
.' Click the Twilight Cage Key in your bags |use Twilight Cage Key##57102
..accept 26144
step
goto 27.5,55.7
.click Ancient Conduit##9639+
.' Destroy 5 Ancient Conduits |q 26142/1
.from Twilight Candidate##41657+
.get 7 Runestone of Binding |q 26141/1
.' Click the Cages |tip They looks like metal cages around this area.
.' Rescue 5 Alliance Prisoners |q 26144/1
.' Click the Quest Complete box that pops up
..turnin 26144
step
goto 38.5,45.3
.' Talk to L'ghorek
..turnin 26141
..turnin 26142
..accept 26154
step
goto 34.9,54.0
.' Use your Attuned Runestone of Binding on a Bound Torrent |use Attuned Runestone of Binding##57172 |tip You can run through the groups of mobs, they won't attack you, even though they are red.
.' Possess a Bound Torrent |q 26154/1
step
goto 36.3,52.8
.' Use the abilities on your hotbar on Twilight Devotees and Faceless Overseers
.kill 50 Twilight Devotee##42281+ |q 26154/2
.kill 10 Faceless Overseer##42285+ |q 26154/3
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26154
step
goto 38.5,45.3
.' Talk to L'ghorek
..accept 26143
step
goto 33.1,55.8
.' Keep controlling the elemental. Subdue it again if needed.
.' Use the abilities on your hotbar on Hallazeal the Ascended
.kill Hallazeal the Ascended##41659 |q 26143/1
step
goto 38.5,45.3
.' Talk to L'ghorek
..turnin 26143
..accept 26181
step
'Hearth to Darkbreak Cove |goto 54.7,72.2,0.5 |use Hearthstone##6948 |noway |c
step
goto 55.7,73.0
.talk 41600
..turnin 26181
..accept 26193
step
goto 55.7,73.0
.talk 41600
..' Tell him you are prepared
.' Ride the boat until it stops |tip When the boat stops make sure you follow Erunak
.' Fight in the Battle for Abyssal Breach |q 26193/1
step
goto 69.8,34.4
.talk 44490
..turnin 26193
step
ding 82
step
goto 60.0,78.5 |n
.' Enter the cave |goto 60.0,78.5,1.0 |noway |c
step
|fly Silver Tide Hollow
step
goto Kelp'thar Forest,42.4,66.2
.talk 43287
.fpath Sandy Beach
step
goto Shimmering Expanse,57.0,17.1
.talk 43290
.fpath Sandy Beach
step
|fly Stormwind
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Deepholm (82-83)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Uldum (83-84)
startlevel 82.00
dynamic on
step
goto Stormwind City,62.9,71.6
.click Hero's Call Board##10016
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
.clicknpc Wyvern##45005
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
.from Rockslice Flayer##42606+, Rockslice Ripper##42607+
.get 5 Quartzite Resin |q 26410/1
.' You can find more Rockslice Flayers around [42.5,55.6]
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
goto 46.5,57.3
.talk 42574
..turnin 26410
..turnin 27135
..accept 26411
step
goto 46.6,57.2
.' Use your Explosive Bonding Compound on Flint Oremantle |use Explosive Bonding Compound##58502 |modelnpc Flint Oremantle##43036+
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
goto 49.7,52.9
.talk 43397
..turnin 27136
step
goto 56.1,74.2
.clicknpc Slain Cannoneer##43032
.' Receive the Second Clue |q 26245/2
step
goto 53.5,73.8
.clicknpc Captain Skullshatter##43048 
.' Receive the First Clue |q 26245/1
step
goto 53.6,73.8
.click Captain's Log##6891
..accept 26246
step
goto 56.7,76.4
.clicknpc Unexploded Artillery Shell##43044 
.' Receive the Third Clue |q 26245/3
step
goto 55.9,74.9
.kill 5 Deepstone Elemental##43026+ |q 26244/1
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
.' Use your Spirit Totem on Slain Crew Members |use Spirit Totem##58167
.' Receive 6 Slain Crew Member Information |q 26248/1
|modelnpc Slain Crew Member##42681+
step
'Enter the doorway on the main deck of the air ship:
.talk 43082
..turnin 26249
..accept 26427
step
'Leave through the doorway and immediately turn right:
.click Bottle of Whiskey##9712 |tip Located on the life boat.
.get Bottle of Whiskey |q 26427/1
step
'All around on the deck of the air ship:
.click Spool of Rope##7538
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
.kill 6 Twilight Saboteur##42885 |q 26251/1
step
'Go to the very top of the air ship:
.talk 42684
..turnin 26251
..turnin 26250
..accept 26254
step
Next to Stormcaller Mylra:
.clicknpc Stormbeak##42887
.' Interrogate Mok'norrok |q 26254/1
step
'When you land on the air ship again:
.talk 42684
..turnin 26254
..accept 26255
step
'Hearth to Temple of Earth |goto 49.2,51.9,50 |use Hearthstone##6948 |noway |c
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
.click Slavemaster's Coffer##41
.collect 1 Twilight Slaver's Key##60739 |q 26261
step
goto 61.2,60.1
.from Living Blood##43123+
.get 5 Blood of Neltharion |q 26259/1
step
goto 64.5,65.5
.click Ball and Chain##181+
.' Free 6 Enslaved Miners |q 26261/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26261
..accept 26260
step
goto 63.7,55.4
.click Forgemaster's Log##6891
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
.click Trogg Crate##9855
.collect Trogg Crate##60809 |q 27010
.from Murkstone Trogg##44936
.collect 1 Maziel's Research##60816 |n
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
.click Maziel's Journal##2530
..turnin 27101
..accept 27102
step
goto 69.5,68.0 |n
.' Enter the cave |goto 69.5,68.0,0.5 |noway |c
step
goto 72.8,62.0
.kill Maziel##44967 |q 27102/1
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
goto 58.0,84.8
.from Jadecrest Basilisk##43981+
.' Use Mylra's Knife on Jadecrest Basilisk corpses |use Mylra's Knife##60382
.get 5 Side of Basilisk Meat |q 26766/1 
.from Twilight Dragonstalker##43992+
.get Twilight Snare |q 26768/1
step
goto 64.5,82.1
.talk 44010
..turnin 26766
..turnin 26768
..accept 26771
step
goto 50.9,85.3
.' Use your Trapped Basilisk Meat |use Trapped Basilisk Meat##60773
.kill Stonescale Matriarch##44148 |q 26771/1
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
.from Abyssion##44289
.click The First Fragment of the World Pillar##9779
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
.' Use The Axe of Earthly Sundering on Emerald Colossi |use The Ace of Earthly Sundering##60490
.kill 5 Sundered Emerald Colossus##44229 |q 27932/1 
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
.kill Avalanchion##44372 |q 27935/1
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
.kill 12 Stone Trogg Ambusher##43134+ |q 26500/1
.' Use Stonefather's Banner next to Stone Hearth Defenders |use Stonefather's Banner##58884 |modelnpc Stonehearth Defender##43138+
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
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |modelnpc Earthen Geomancer##43170+
.' Seal the Shrine |q 26501/4
step
goto 26.0,68.8
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |modelnpc Earthen Geomancer##43170+
.' Seal the Barracks |q 26501/3
step
goto 26.2,69.8
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |modelnpc Earthen Geomancer##43170+
.' Seal the Inn |q 26501/2
step
goto 27.3,70.1
.' Use your Rockslide Reagent on the Earthen Geomancer |use Rockslide Reagent##58885 |modelnpc Earthen Geomancer##43170+
.' Seal the Armory |q 26501/1
.click Thunder Stone##9722+
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
.' Use Deepvein's Patch Kit on Injured Earthens |use Deepvein's Patch Kit##58965 |modelnpc Injured Earthen##43233
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
..' Tell him you're ready to escort the catapult |tip You need to be near the catapult or it will stop
.' Safely Escort the Earthen Catapult |q 26632/1
|modelnpc Earthen Catapult##43509+
step
goto 22.7,52.0
.talk 43897
..turnin 26632
..accept 26755
step
goto 22.4,52.0
.clicknpc Earthen Catapult##43509
.' Use your Fire Catapult ability on your hotbar on the Stone Trogg and Fungal mobs
.' Bombard 30 Reinforcements |q 26755/1
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
.clicknpc Deactivated War Construct##43984
.' Reactivate 5 Deactivated War Constructs |q 26762/1
.kill 5 Needlerock Mystic |q 26770/1
.'|tip Activate the golems before attacking mystics.
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
.clicknpc War Guardian##44126
.' Obtain a War Guardian for the Sprout No More quest |q 26791/1
.' Obtain a War Guardian for the Fungal Monstrosities quest |q 26792/1
step
goto 26.8,41.8
.kill 5 Fungal Monstrosity##44035+ |q 26792/2
.clicknpc Giant Mushroom##44049+
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
.click The Stonefather's Safe##7608
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
.get Irestone Core##58168 |q 26313/1 |n
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Relieve Stormcaller Mylra |q 26312/2
|modelnpc Servant of Therazane##42781+
step
goto 44.5,41.3
.from Irestone Rumbler##42780+
.get Irestone Core##58168 |q 26313/1 |n
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Relieve Tawn Winterbluff |q 26312/1
|modelnpc Servant of Therazane##42781+
step
goto 47.6,42.8
.from Irestone Rumbler##42780+
.get Irestone Core##58168 |q 26313/1 |n
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Relieve Hargoth Dimblaze |q 26312/3
|modelnpc Servant of Therazane##42781+
step
goto 46.2,42.2
.from Irestone Rumbler##42780+
.get 6 Irestone Core |q 26313/1
.' Use your Elementium Grapple Line on Servants of Therazane |use Elementium Grapple Line##58169 |tip Run away from the Servants of Therazane to bring them down.
.' Bring down 3 Servants of Therazane |q 26314/1
|modelnpc Servant of Therazane##42781+
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
|modelnpc Boden the Imposing##42471+
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
.kill Dragul Giantbutcher##42921 |q 26376/1
step
goto 59.5,41.5
.click Jade Crystal Cluster##9694+
.collect 6 Jade Crystal Cluster##58500 |q 26377
.' Use your Delicate Chain Smasher next to Quartz Rocklings |use Delicate Chain Smasher##58254 |tip They look like small rock giants around this area.
.' Release 6 Quartz Rocklings |q 26375/1
|modelnpc Quartz Rockling##42900+
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
.' Get next to Felsen the Enduring
.' Find Felsen the Enduring |q 26426/1
' |modelnpc 43805
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
.click Gigantic Painite Cluster##9815
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
.from Jaspertip Borer##42524+, Jaspertip Swarmer##42521+, Jaspertip Ravager##42525+
.kill 12 Jaspertip flayers |q 26438/1
.click Chalky Crystal Formation##9715+
.get 8 Chalky Crystal Formation |q 26437/1 
.clicknpc Dormant Stonebound Elemental##43115
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
'Next to you:
.talk 43116
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
.kill Gorgonite##43339 |q 26575/1
step
goto 47.5,26.8
.clicknpc Petrified Stone Bat##43182+
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
' |modelnpc 43591
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
.kill 6 Stone Drake##42522 |q 26657/1 |tip They will fall to the ground with half health, so you can kill them, even though they are elite.
step
goto 40.0,19.4
.talk 42466
..turnin 26657
..turnin 26658
..accept 26659
step
goto 32.7,24.3
.' Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266 
.' Strike the Pale Resonating Crystal |q 26659/1
.from Aeosera##43641 |tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.  When she is casting her Searing Breath ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
.' Defeat Aeosera |q 26659/2
|model Pale Resonating Crystal##6415
step
goto 33.1,24.1
.talk 42466
..turnin 26659
.' If Terrath the Steady doesn't spawn at the appropriate spot, go to [40.0,19.4]
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
.kill 8 Fungal Behemoth##42475+ |q 26579/1
.from Doomshroom##43388+
.' Destroy 10 Doomshrooms |q 26578/1
.' Gather a sample of the red mist |q 26581/1 |tip There are small clouds of red mist that float around on the ground around this area.  Walk into one of them to gather a sample.
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
.kill Fungalmancer Glop##43372 |q 26583/2 |tip Follow him each time he runs away.  Avoid the mushrooms as you walk, they will give you a debuff.  While fighting Fungalmancer Glop, avoid the Boomshrooms he creates.
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
.kill 8 Verlok Pillartumbler##43513+ |q 26584/1
.click Verlok Miracle-Grow##6895
.get 8 Verlok Miracle-Grow |q 26585/1
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
ding 83
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
.click One-Time Decryption Engine##9842+
.' Decrypt 6 Plans |q 27040/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27040
..accept 27058
step
goto 39.1,73.9
.click the Waygate Controller##9849
.' Destroy the Waygate |q 27058/1
step
goto 39.9,62.2
.kill Haethen Kaul##44835 |q 27042/4 |tip He's up on a huge floating rock.
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
.' [48.5,50.1]
.' [47.4,50.9]
.' [48.1,49.9]
..' Tell them you are joining an assault on Lorthuna's Gate and they are needed.
.' Rally 5 Earthen Ring |q 26827/1
' |modelnpc Windspeaker Lorvarius##43836+
' |modelnpc Yuldris Smolderfury##45034+
' |modelnpc Earthcaller Yevaa##44646+
' |modelnpc Tawn Winterbluff##44634+
' |modelnpc Tharm Wildfire##44631+
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
.kill Desecrated Earthrager##44683 |q 26875/2
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 26875
..accept 26971
' |modelnpc 44681
step
goto 49.6,52.9
.kill High Priestess Lorthuna##43837 |q 26971/1 
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
step
goto 57.2,13.6
.' Click the Portal to Themple of Earth |tip It's a purple swirling portal.
.' Teleport to Temple of Earth |goto 49.3,50.6 <5 |c
step
goto 48.5,53.8
.' Click the Portal to Stormwind |tip It's a blue swirling portal.
.' Teleport to Stormwind City |goto Stormwind City |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Uldum (83-84)",[[
author support@zygorguides.com
next Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Twilight Highlands (84-85)
startlevel 83.00
dynamic on
step
goto Stormwind City,85.8,25.9
.talk 44238
..turnin 28292
step
goto 62.9,71.6
.click Hero's Call Board##10016
..accept 28558
step
goto 22.5,55.8 |n
.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
step
|fly Gunstan's Dig
step
goto Tanaris,30.5,65.5
.talk 44833
..turnin 28558
..accept 27003
step
goto 30.5,65.7
.clicknpc Lady Humps##46517
.' Watch the cutscene
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
.click Neferset Frond##10097
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
.from Neferset Denizen##48267+, Neferset Sentinel##47306+
.click Neferset Armor##10100
.get 6 Neferset Armor |q 27924/1
.' Use your Brazier Torch next to Bales of Hay |use Brazier Torch##63027 |tip They look like bundles of yellow straw sitting on the ground around this area.
.' Burn 5 Bales of Hay |q 27923/1
' |model Bale of Hay##8701
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
.kill Warlord Ihsenn##47755 |q 28502/1
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
.from Pygmy Scout##48041+, Pygmy Oaf##48040+, Pygmy Thief##48043+
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
.click Powder Keg##472
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
.click the Elaborate Disc##8342
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
.click Ornate Tablet Fragment##6420+
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
..accept 27517
step
goto 63.3,28.0
.click Suspended Starlight##9933
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
..turnin 27517
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
.click Watcher Head##10079
.get Orb of the Morning Star |q 27624/1
step
goto 66.8,28.1
.click Watcher Head##10079
.get Orb of the Evening Star |q 27624/2
step
goto 65.3,32.6
.click Watcher Head##10079
.get Orb of the Shooting Star |q 27624/4
step
goto 62.5,32.0
.click Watcher Head##10079
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
.click Sand-Covered Hieroglyphs##5992
..turnin 27602
..accept 27623
step
goto 39.6,40.9
.clicknpc Colossus of the Sun##46041
.from Colossus of the Sun
.get Stone of the Sun |q 27623/2
step
goto 41.2,37.6
.clicknpc Colossus of the Moon##46042
.from Colossus of the Moon
.get Stone of the Moon |q 27623/1
step
goto 40.7,40.2
.kill 6 Scion of Al'Akir##45755+ |q 27520/1
.clicknpc Orsis Survivor##45715+
.' Rescue 8 Orsis Survivors |q 27519/1
step
goto 39.6,45.4
.click Sand-Covered Hieroglyphs##5992
..turnin 27623
..accept 27706
step
goto 39.6,45.4
.click Sacred Receptacle##6502
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
.click Obelisk of the Sun Coffer##8685+
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
.' Use your Titan Activation Device next to the huge statue |use Titan Activation Device##62611
.from Titanic Guardian##47032 |tip While fighting the Titanic Guardian, click the big lava meteors that appear on the ground to do massive to the Titanic Guardian, making him much easier to kill.
.get Lens of the Sun |q 27903/1
step
goto 45.6,57.8
.' Fly up onto the middle platform inside this cave
.' Click the Titan Mechanism
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
'Hearth to Ramkahen |goto 54.7,32.9,0.5 |use Hearthstone##6948 |noway |c
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
.kill 8 Stillwater Slitherer##46868+ |q 27837/1
.click Slitherer Egg##7803+
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
.' When the cat men run in to attack the smugglers, go to [60.5,58.7]
.click Ancient Tol'vir Weapon##10071+
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
.kill 30 Bloodsnarl Scavenger##48199+ |q 28277/1
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
|model Croc Eggs##412
step
'Hearth to Ramkahen |goto 54.7,32.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 58.9,14.2
.kill Scalemother Hevna##46871 |q 27838/1
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
.click Atulhet's Record Fragment##6420+
.get 8 Atulhet's Record Fragment |q 28498/1
.' You can find more Atulhet Fragments and Neferset mobs around [75.2,45.7]
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
.' Use the abilities on your hotbar to command the troops
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
.kill Mekgineer Mixeltweed##46592 |q 27755/2
.kill 6 Crazed Digger##46590+ |q 27755/1
.collect 1 A.I.D.A. Communicator##62483 |n
.' Use the A.I.D.A. Communicator |use A.I.D.A. Communicator##62483
..accept 27760
step
goto 74.1,64.4
.click A.I.D.A. Terminal##7764
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
.click First Bomb Cluster##9277
.' Disarm the First Bomb Cluster |q 27761/1
step
goto 79.0,64.3
.' Use your Holographic Projector next to the Second Bomb Cluster to distract the enemies |use Holographic Projector##62398
.click Second Bomb Cluster##9277
.' Disarm the Second Bomb Cluster |q 27761/2
step
goto 79.0,64.9
.' Use your Holographic Projector next to the Third Bomb Cluster to distract the enemies |use Holographic Projector##62398
.click Third Bomb Cluster##9277
.' Disarm the Third Bomb Cluster |q 27761/3
step
goto 79.0,63.6
.' Use your Holographic Projector next to Unstable Bomb Bots to distract the enemies |use Holographic Projector##62398
.clicknpc Unstable Bomb Bot##46888+
.' Deactivate 4 Unstable Bomb Bots |q 27761/4
step
goto 74.1,64.4
.click A.I.D.A. Terminal##7764
..turnin 27761
..turnin 27777
..accept 27778
step
goto 77.0,62.9
.click Maintenance Tools##317
.collect Maintenance Axe##62621 |q 27778
step
goto 77.0,63.0
.clicknpc Wibson Mainframe##46715
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
.kill High Priest Sekhemet##47730 |q 28480/2
step
goto 50.6,87.0
.kill Scorpion-Lord Namkhare##47742 |q 28480/1
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
.kill Dark Pharaoh Tekahn##47753 |q 28520/1
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
..' Ask him how to find the Commander
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
.clicknpc Desert Fox##47201 |tip It runs around a lot, so you will probably have to search for it to find it.
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
.' Use your Licensed Proton Accelerator Cannon on Furious Specters once they are at half health |use Licensed Proton Accelerator Cannon##62794
.get 5 Furious Spectral Essence |q 27943/1
.clicknpc Dead Trooper##47219+
.get 10 Trooper Uniform |q 27941/1
.click Well-preserved Idol##10092+
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
.' Motivate 6 Slacking Laborers |q 27969/1 |tip You won't motivate all of the Slacking Laborers you talk to.
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
..' Ask her if she is all right
..' Soothe the Privileged Socialite |q 28002/2
step
goto 22.3,64.1
.talk 47520
..' Ask him if he wants to know what happened to the man
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
.clicknpc Schnottz's Siege Tank##47732
.' Ride in Schnottz's Siege Tank
.' Use the Fire Cannon ability on your hotbar on Decrepit Watchers
.' Obliterate 7 Decrepit Watchers |q 27990/1
' |modelnpc 47385
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
.kill Captain Margun##47981 |q 28195/1
step
goto 24.9,69.0
.kill Captain Cork##47980 |q 28195/2
step
goto 26.1,68.6
.kill Captain Kronkh##47978 |q 28195/3
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
|fly Ramkahen
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
'Hearth to Ramkahen |goto 54.7,32.9,0.5 |use Hearthstone##6948 |noway |c
step
|fly Oasis of Vir'sar
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
goto 26.6,8.0
.talk 48203
..turnin 28273
..accept 28274
step
'Watch the cutscene
.' Accompany Sullah |q 28274/1
' |modelnpc 48621
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
goto 27.0,7.5
.talk 48186
..turnin 28353
..accept 28271
..accept 28272
step
goto 38.2,21.6
.from Schnottz Overseer##48205+, Schnottz Excavator##48204+
.' Kill 15 Schnottz Employees at the Obelisk of the Moon |q 28271/1
.click Pillaged Loot Sack##10201+
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
.' Use your Shroud of the Makers every 2 minutes to stay Cloaked |use Shroud of the Makers##63699 |tip If you have a pet with you dismiss it, it does not stealth with you and will attract mobs
.click Schnottz Powder Keg##33+
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
.from Lunar Crystal##48529+
.' Defeat the Titanic Guardian |q 28404/1
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
.clicknpc Confiscated Artillery##48699
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
.' Follow Harrison Jones and fight the Obsidian Colossus |tip Avoid the pink shadow runes on the ground when the Obsidian Colossus casts them.  You will see messages pop up on your screen letting you know what to do.
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
.clicknpc Signal Flare Position##49216 |use Harrison's Signal Flares##64668
.' Place the North Signal Flare |q 28622/1
step
goto 31.4,30.8
.clicknpc Signal Flare Position##49216|use Harrison's Signal Flares##64668
.' Place the West Signal Flaare |q 28622/2
step
goto 32.0,31.6
.clicknpc Signal Flare Position##49216 |use Harrison's Signal Flares##64668
.' Place the South Signal Flare |q 28622/3
step
goto 44.9,67.3
.talk 49248
..turnin 28622
..accept 28633
step
goto 45.0,67.3
.click Coffer of Promise##9968
.get Titan Discs |q 28633/1
step
goto 44.9,67.3
.talk 49351
..turnin 28633
step
ding 84
step
'Hearth to Oasis of Vir'sar |goto 26.6,7.2,0.5 |use Hearthstone##6948 |noway |c
step
|fly Theramore
step
goto Dustwallow Marsh,71.5,56.3 |n
.' Ride the boat to Menethil Harbor |goto Wetlands |noway |c
step
|fly Stormwind City
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Twilight Highlands (84-85)",[[
author support@zygorguides.com
startlevel 84
endlevel 85
dynamic on
step
goto Stormwind City,62.9,71.6
.click Hero's Call Board##10016
..accept 28716
step
goto 85.7,31.8
.talk 29611
..turnin 28716
..accept 26960
step
goto 85.7,31.6
.talk 1747
..' Tell him to come with you
.' Become Introduced to Anduin |q 26960/1
step
goto 85.7,31.8
.talk 29611
..turnin 26960
..accept 26975
..accept 26977
step
goto 85.1,31.3
.talk 2439
..turnin 26977
..accept 26997
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
.click Missing Parts##1211+
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
' |modelnpc 44293
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
' |modelnpc 44293
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
.kill 6 Crazed Cultist##44814+ |q 27072/1
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
.kill The Black Bishop##44816 |q 27092/1
step
goto 50.2,42.6
.click Pile of Explosives##9278 
..turnin 27092
..accept 27106
step
goto 85.1,31.0
.talk 2439
..' Tell him it's over
.' Unmask Major Samuelson |q 27106/1
.kill Samuelson Unmasked##45014 |q 27106/2
step
goto 85.8,31.7
.talk 29611
..turnin 27106
..accept 28238
step
goto 26.1,47.3
.talk 44806
..turnin 28238
..accept 28832
step
goto 25.9,47.6
.clicknpc Flintlocke's Seaplane##50262
.' Ride to Twilight Highlands |goto Twilight Highlands |noway |c
step
goto Twilight Highlands,81.0,79.4
.talk 49022
..turnin 28832
..accept 28596
step
goto 81.1,77.3
.from Axebite Infantry##49008+
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
goto 81.1,77.3
.clicknpc Cannon Powder Barrel##49143+
.get 10 Cannon Powder |q 28597/1
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
.talk 45167
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
.click Water-Logged Crate##335+
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
.kill 12 Axebite Marine##45175+ |q 27366/1 |tip Be careful and pay attention not to stand too close to the red arrows bouncing above the ground.  Cannon balls land at the arrows a few seconds after the arrows appear, and they will hurt you a lot if they hit you.
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
.click Thorny Stankroot##414+
.get 8 Thorny Stankroot |q 27515/1
step
goto 67.7,66.0
.talk 45172
..turnin 27515
..accept 27516
step
goto 67.7,66.0
.talk 45172
..' Tell him you're ready
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
.click Verrall River Muck##10352
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
.talk 46804
..turnin 27621
..accept 27803
..accept 27804
step
goto 60.4,58.1
.talk 49795
.home Firebeard's Patrol
step
goto 60.4,58.3
.talk 46814
..accept 27805
step
goto 59.8,56.2
.' Use your Wildhammer Water Bucket next to fires to extinguish them |use Wildhammer Water Bucket##62508
.click Meara's Dried Roses##10073
.get Meara's Dried Roses |q 27805/1
step
goto 59.5,55.9
.' Use your Wildhammer Water Bucket next to fires to extinguish them |use Wildhammer Water Bucket##62508
.click Aprika's Lost Doll##7514
.get Aprika's Doll |q 27805/3
step
goto 59.3,56.9
.' Use your Wildhammer Water Bucket next to fires to extinguish them |use Wildhammer Water Bucket##62508
.click Parlan's Ivory Hammer##8215
.get Parlan's Ivory Hammer |q 27805/2
step
goto 59.8,56.9
.' Use your Wildhammer Water Bucket next to fires |use Wildhammer Water Bucket##62508
.' Extinguish 50 Village Fires |q 27804/1
.kill 8 Subjugated Firestarter##46838+ |q 27803/1
step
goto 60.2,58.0
.talk 46804
..turnin 27803
..turnin 27804
..accept 27806
step
goto 60.4,58.3
.talk 46814
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
..' Tell him he's not backing out
.from Mullan Gryphon Rider
.' Defeat a Mullan Gryphon Rider |q 27810/1
step
goto 50.8,60.2
.talk 46811
..turnin 27810
step
goto 57.3,67.6
.talk 46968
..' Let the gryphons smell the piece of Charred Highland Birch |tip If you come across a gyphon chained to the ground simply kill the Twilight Trapper and the Twilight Trapper Bindings. Other gryphons may need healing, if you cannot heal them move on.
.' Find and return 8 Mullan Gryphons |q 27811/1
|modelnpc Twilight Trapper Bindings##46975+
|modelnpc Twilight Trapper##46984+
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
.click Dragonmaw Weapon Axe##9561+
.click Dragonmaw Weapon Rack##9921+
.click Dragonmaw Weapon Crate##5271+
.get 8 Dragonmaw Weapon |q 27814/1
step
goto 63.2,47.6
.talk 48053
..turnin 28234
step
goto 62.5,48.4
.talk 46850
..turnin 27813
step
goto 62.6,48.6
.talk 46806
..turnin 27814
step
goto 62.5,48.4
.talk 46850
..accept 27815
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
.clicknpc Firebeard Gryphon Mount##47316
.' Ride the Firebeard Gryphon Mount |invehicle |c |q 27817
step
goto 58.8,53.1
.' While flying on the Firebeard Gryphon Mount:
.' Use the abilities on your action bar to kill Twilight Stormbenders on the floating rocks |tip Use your Storm Shield ability when someone casts a lightning attack on you.
.kill 12 Twilight Stormbender##47199+ |q 27817/1
step
goto 58.6,51.7
.' While flying on the Firebeard Gryphon Mount:
.' Use the abilities on your action bar to weaken Servias Windterror
.' Eventually, you will get off the gryphon and fight him regularly
.kill Servias Windterror##46839 |q 27817/2 |tip When he casts his lightning spell on the ground, move away from that spot to avoid damage when it explodes.
step
goto 60.2,57.9
.talk 46804
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
.' Cayden Dunwald can also be at [45.8,71.7]
.talk 46174
..turnin 27645
..accept 27648
step
goto 45.8,71.7
.talk 46174
..' Tell him yeah...
.' Escort Cayden Dunwald
.' Accompany Cayden through Dunwald Market Row |q 27648/1
step
goto 47.9,74.5
.talk 46174
..turnin 27648
.' Cayden Dunwald can also be at [45.8,71.7]
step
goto 52.9,74.3
.talk 46175
..turnin 27644
..accept 27647
step
goto 52.8,69.8
.click Sacred Ale Tap##7415
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
.click Wildhammer Ale Cask##7415
.' Go into the basement of this building
.' Search the cellar in southern Dunwald Hovel |q 27646/1
step
goto 46.4,53.8
.' As you walk around doing quests:
.talk 46609
.click Wildhammer Ale Cask##7415
.' Go into the basement of this building
.' Search the cellar in northwestern Dunwald Hovel |q 27646/2
step
goto 48.4,52.6
.' As you walk around doing quests:
.talk 46609
.click Wildhammer Ale Cask##7415
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
.click Wildhammer Ale Cask##7415
.get 6 Wildhammer Ale |q 27649/1
.' You can find more of all these things:
.' Around [47.0,66.1]
.' Around [46.4,72.6]
.' Around [50.7,69.8]
step
goto 46.7,66.0 |n
.' Enter this building |goto 46.7,66.0,0.5 |noway |c
step
goto 46.0,65.5
.talk 46177
..turnin 27650
..accept 27651
step
goto 50.5,70.7
.talk 46627
..turnin 27649
step
goto 50.5,70.7
.talk 46143
..turnin 27641
..turnin 27642
step
goto 50.5,70.6
.talk 46628
..' Tell him you're in
.kill Darunga##46624 |q 27651/1
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
goto 46.2,37.4
.from Dragonmaw Marauder##46310+
.get 8 Dragonmaw Insignia |q 27754/1
.click Thundermar Ale Keg##4631+
.get 10 Wildhammer Keg |q 27752/1
.click Wildhammer Food Stores##10034
.get 15 Wildhammer Food Stores |q 27753/1
.' You can find more around [49.1,37.3]
'|model Wildhammer Food Stores##224
'|model Wildhammer Food Stores##229 
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
.talk 48014
..accept 28211
..accept 28212
..accept 28215
step
goto 49.0,29.7
.talk 46591
..accept 28216
step
goto 57.9,33.5
.click Eye of Twilight##7011
..turnin 28241
..accept 28242
step
goto 58.0,32.6
.kill 10 Shaman of the Black##46322+ |q 28242/1
.from Obsidian Stoneslave##47226+
.get 10 Twisted Elementium Loop |q 28215/1
step
goto 57.9,33.5
.click Eye of Twilight##7011
..turnin 28242
..accept 28243
step
goto 49.1,29.4
.talk 48014
..turnin 28215
step
goto 49.7,29.2
.talk 48010
..turnin 28243
..accept 28244
step
goto 49.8,29.1
.click Eye of Twilight##7011
.' Watch the cutscene
.' Peered into the Eye |q 28244/1
step
goto 49.7,29.2
.talk 48010
..turnin 28244
step
goto 42.5,23.5
.from Magmalord Falthazar##48015
.get Magmalord Falthazar's Head |q 28216/1
step
goto 42.2,24.3
.from Unbound Emberfiend##48016+
.get 5 Molten Fury |q 28212/1
.click Tempered Spear##8490 
.get 8 Tempered Spear |q 28211/1
step
goto 49.0,29.7
.talk 46591
..turnin 28216
step
goto 49.1,29.4
.talk 48014
..turnin 28211
..turnin 28212
..accept 28280
step
goto 49.2,29.8
.' Use your Shoulder-Mounted Drake-Dropper on Dragonmaw Black Drakes |use Shoulder-Mounted Drake-Dropper##63393 |tip They are flying in the sky around this area.
.kill 8 Dragonmaw Black Drake##48197+ |q 28280/1
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
.kill 8 Dragonmaw Skyclaw##48194 |q 28281/1
step
goto 49.0,29.7
.talk 48173
..turnin 28281
..accept 28282
step
goto 49.0,29.7
.talk 48173
..' Tell him you're ready to fight him!
.kill Narkrall Rakeclaw##48257 |q 28282/1
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
' |modelnpc 48530
step
goto 37.6,33.4 |n
.' Leave the cave |goto 37.6,33.4,0.5 |noway |c
step
goto 38.7,30.9
.from Glopgut Pounder##48474+, Glopgut Hurler##48475+, Glopgut Basher##48498+
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
.talk 48367
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
.' You can find more at [53.0,13.1]
step
goto 56.8,21.9
.from Tawny Owl##46162+
.click Pristine Owl Feather##3651+
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
.click Crate of Fine Cloth##9105+
.get Fine Dark Cloth |q 28410/1
step
goto 54.3,16.7
.talk 48367
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
.' Complete the Nuptials |q 28655/1
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
.kill 3 Tentacle of Iso'rath##45394 |q 27299/1
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
.click Barrel of Pyreburn Oil##457+
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
.clicknpc Earthen Ring Gryphon##50473
.' Join the assault on Iso'rath |q 27376/1
step
goto 48.4,14.6
.talk 47991
..turnin 27376
..accept 27377
step
'Let the oozes kill you.
.' Survive Iso'rath's defenses |q 27377/1
.talk 48051
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
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Stormcaller Jalara |q 27379/2
' |modelnpc 48789
step
goto 49.1,13.1
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Earthmender Duarn |q 27379/3
' |modelnpc 48793
step
goto 47.0,13.1
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Hargoth Dimblaze |q 27379/1
' |modelnpc 48743
step
goto 47.5,15.6
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Stormcaller Mylra |q 27379/4
' |modelnpc 50469
step
goto 48.7,16.6
.talk 48059
..turnin 27379
..accept 27380
step
goto 48.8,14.9
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
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
' |modelnpc 49417
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
' |modelnpc 45746
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
goto 18.4,16.7 |n
.' Enter the cave |goto 18.4,16.7,0.5 |noway |c
step
goto 18.0,16.9
.' Use your Flashgrowth Mote next to the Twilight Portal |use Flashgrowth Mote##61385 |tip It looks like a blue and pink swirled portal in a metal case.
.' Destroy the Twilight Portal |q 27509/1
step
goto 20.9,15.7
.from Twilight Abductor##45648+, Twilight Flamequencher##45618+
.kill 12 Twilight invaders |q 27507/1
.clicknpc Vermillion Egg##45682
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
.click Twilight Caravan Chest##10106+ 
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
.talk 47611
..accept 28107
step
goto 29.5,51.7
.' Go to this spot
.' Open the Dragonmaw Gate |q 28108/1
step
'Next to you:
.talk 47611
..turnin 28108
..accept 28109
step
goto 27.5,54.6
.from Twilight Sentinel##47406+, Twilight Guardsman##47394+, Twilight Stalker##47401+
.' Kill 30 Wyrm's Bend Cultists |q 28107/1
step
'Next to you:
.talk 47611
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
.clicknpc Vermillion Vanguard##49910
.' Use the abilities on your hotbar on Twilight Shadowdrakes
.kill Twilight Shadowdrake##49873 |q 28758/1
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
.' Use your Wyrmhunter Hooks on Obsidian Pyrewings |use Wyrmhunter Hooks##63092 |tip You will get a message on your screen when the Obsidian Pyrewing is almost dead.  When you see that message, use your Wyrmhunter Hooks on another Obsidian Pyrewing to jump to it.  If you fall, it can hurt you a lot.
.kill 8 Obsidian Pyrewing##46141 |q 28173/1
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
.kill 10 Bloodeye Clan Ogres & Ettins |q 27492/1
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
.click Hidden Explosives##9393
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
.click the Air Portal Controller##9849 |tip It is high in the sky.
.kill Debilitated Aetharon##46270 |q 27659/2
step
goto 38.0,80.2
.click Earth Portal Controller##9849
.kill Debilitated Apexar##46273 |q 27659/1
step
goto 33.2,62.4
.click Water Portal Controller##9849
.kill Debilitated Edemantus##46272 |q 27659/3
step
goto 27.6,63.9
.talk 46413
..turnin 27660
..accept 27661
step
goto 35.2,67.4
.from Corrupted Elementalist##46204+, Citadel Veteran##46205+, Twilight Vindicator##46203+
.kill 10 Twilight Citadel cultists |q 27654/1
.from Dark Assassin##46202+
.get 5 Dark Assassin's Pendant |q 27652/1
.from Enslaved Tempest##46328+, Enslaved Waterspout##46329+, Enslaved Inferno##46327+
.' Free 10 Enslaved Elementals |q 27662/1
step
goto 40.8,79.0
.kill Lord Cannon##46785 |q 27661/1
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
.' Use your Water of Life next to the Corpse of Forgemaster Finlay |use Water of Life##62503 |tip He's chained to an anchor, drowned underwater.
.' Extract Artifact Information |q 27719/1
|modelnpc Corpse of Forgemaster Finlay##46819+
step
goto 36.4,66.0
.talk 45796
..turnin 27719
step
goto 36.1,70.7
.kill Master Klem##46342 |q 27688/2 |tip Mathias Shaw will come and kill him for you after you've fought him for a little bit.
step
goto 40.2,84.0
.from Blindeye the Guardian##46399
.get The Elementium Axe |q 27695/1
step
goto 42.3,83.5
.kill Mia the Rose##46343 |q 27688/3 |tip She's in a small room at the top of this big building.  Mathias Shaw will come and kill her for you after you've fought her for a little bit.
step
goto 43.4,88.5
.kill Dame Alys Finnsson##46341 |q 27688/1 |tip Mathias Shaw will come and kill her for you after you've fought her for a little bit.
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
' |modelnpc 46456
step
goto 36.4,66.0
.talk 45796
..turnin 27700
..accept 27702
step
goto 37.5,75.4
.from Twilight Skyterror##46416+ |tip They are all over this area so you may need to search.
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
.click Elementium Shard##10035+
.get 6 Elementium Shard |n
.click Twilight Rune of Earth##465
..accept 27744
step
goto 35.2,90.4
.click Elementium Shard##10035+
.get 6 Elementium Shard |n
.click Twilight Rune of Water##465
.' Destroy the Rune of Water |q 27744/2
step
goto 33.5,88.4
.click Elementium Shard##10035+
.get 6 Elementium Shard |n
.click Twilight Rune of Air##465
.' Destroy the Rune of Air |q 27744/3
step
goto 34.3,86.6
.click Elementium Shard##10035+
.get 6 Elementium Shard |n
.click Twilight Rune of Fire##465
.' Destroy the Rune of Fire |q 27744/4
step
goto 34.5,86.3
.from Twilight Miner##46610+, Depths Overseer##46579+
.kill 12 Elementium Depths cultists |q 27743/1
.click Elementium Shard##10035+
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
step
goto 36.4,83.8
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
.clicknpc The Hammer of Twilight
..turnin 27784
..accept 27787
.' Watch the cutscene
.' Survive Skullcrusher's Backhand |q 27787/1
step
goto 45.4,87.9
.kill Skullcrusher the Mountain##46732 |q 27787/2 |tip Follow the instructions that pop up on your screen.
step
'Hearth to Victor's Point |goto 43.6,57.3,0.5 |use Hearthstone##6948 |noway |c
step
goto 43.4,57.4
.talk 45668
..turnin 27787
step
ding 85
step
Congratulations, you are now level 85!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Cataclysm 80-85\\Mount Hyjal",[[
author support@zygorguides.com
condition end achieved(4870)
completion quests
leechsteps "Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Mount Hyjal (80-82)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Cataclysm 80-85\\Vashj'ir",[[
author support@zygorguides.com
condition end achieved(4869)
completion quests
leechsteps "Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Vashj'ir (80-82)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Cataclysm 80-85\\Deepholm",[[
author support@zygorguides.com
condition end achieved(4871)
completion quests
leechsteps "Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Deepholm (82-83)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Cataclysm 80-85\\Uldum",[[
author support@zygorguides.com
condition end achieved(4872)
completion quests
leechsteps "Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Uldum (83-84)"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Loremaster Guides\\Cataclysm 80-85\\Twilight Highlands",[[
author support@zygorguides.com
condition end achieved(4873)
completion quests
leechsteps "Zygor's Alliance Leveling Guides\\Cataclysm 80-85\\Twilight Highlands (84-85)"
]])
