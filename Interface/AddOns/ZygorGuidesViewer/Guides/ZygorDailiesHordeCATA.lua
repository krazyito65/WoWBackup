local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DailiesHCATA") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Deepholm\\Deepholm Pre-Quests",[[
description Contains the pre-quests to unlock 
description the daily quests in Deepholm.
description 
description You must be at least level 82 to
description complete this guide section.
step
goto Orgrimmar,49.7,76.5
.' Click the Warchief's Command Board |tip It looks like a wooden board hanging between 2 wooden posts, with papers pinned on it.
..accept 27722
step
goto 50.5,38.4
.talk 45244
..turnin 27442
..turnin 27722
..accept 27203
step
goto 50.1,37.8
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
'All around on this airship:
.' Use your Spirit Totem on Slain Crew Members |use Spirit Totem##58167 |tip They look like dead Alliance soldiers all over this airship.
.' Receive 6 Slain Crew Member Information |q 26248/1
step
'Enter the doorway on the main deck of the airship:
.talk 43082
..turnin 26249
..accept 26427
step
'Leave through the doorway and immediately turn right:
.' Click the Bottle of Whiskey |tip It's a yellow bottle sitting on the edge of a small life boat on the side of the airship.
.get Bottle of Whiskey |q 26427/1
step
'All around on the deck of the airship:
.' Click a Spool of Rope |tip They are coiled up ropes laying all around on the deck of the airship.
.get Spool of Rope |q 26427/2
step
'Enter the doorway on the main deck of the airship:
.talk 43082
..turnin 26427
step
'Go to the very top of the airship:
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
'All around on this lower deck of the airship:
.kill 6 Twilight Saboteur |q 26251/1
step
'Go to the very top of the airship:
.talk 42684
..turnin 26251
..turnin 26250
..accept 26254
step
Next to Stormcaller Mylra:
.' Click Stormbeak |tip It's a gryphon flying in place next to the airship.
.' Interrogate Mok'norrok |q 26254/1
step
'When you land on the airship again:
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
goto 34.6,34.2
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
goto 34.5,34.4
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
goto 39.9,19.4
.talk 42466
..turnin 26658
step
goto 36.5,18.8
.kill 6 Stone Drake |q 26657/1 |tip They will fall to the ground with half health, so you can kill them, even though they are elite.
step
goto 40.0,19.4
.talk 42466
..turnin 26657
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
step
'Hearth to the Temple of Earth |goto 49.2,51.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 49.5,53.3
.talk 42573
..accept 27953
step
goto 51.3,50.1
.talk 44823
..turnin 27953
..accept 27005
step
goto 51.3,50.0
.talk 44818
..accept 27008
step
goto 39.0,74.2
.' Go to this spot next to the big white portal
.' Investigate the Master's Gate |q 27008/1 
step
goto 40.1,72.2
.from Twilight Cryptomancer##44855+, Twilight Crusher##44849+, Twilight Armsman##44847+
.get Masters' Gate Plans |q 27005/1
step
goto 51.3,50.1
.talk 44823
..turnin 27005
step
goto 51.3,50.0
.talk 44818
..turnin 27008
..accept 27043
step
goto 51.3,50.1
.talk 44823
..accept 27041
step
goto 40.8,66.3
.from Bound Water Elemental##44886
.' Acquire the Water Ward |q 27043/2
step
goto 36.0,67.4
.from Bound Fire Elemental##44887
.' Acquire the Fire Ward |q 27043/1
step
goto 40.5,72.4
.from Bound Air Elemental##44885
.' Acquire the Air Ward |q 27043/3
step
goto 40.2,67.5
.' Click One-Time Decryption Engines |tip They look like machines around this area with a circular scroll spinning around them, and yellow cores floating in the middle of the spinning scrolls.
.' Decrypt 6 Plans |q 27041/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27041
..accept 27059
step
goto 39.1,73.9
.' Click the Waygate Controller |tip It looks like a cylinder stone container with a stone ring on top of it, sitting in front of the huge white portal.
.' Destroy the Waygate |q 27059/1
step
goto 39.9,62.2
.kill Haethen Kaul |q 27043/4 |tip He's up on a huge floating rock.
step
goto 51.3,50.0
.talk 44823
..turnin 27059
..accept 28293
step
goto 51.3,50.0
.talk 44818
..turnin 27043
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
..' Tell her you're ready when she is
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
goto 49.9,50.1
.talk 44644
..' Tell him you are joining an assault on Lorthuna's Gate and he is needed.
.' Skip to the next step in the guide
step
goto 51.5,51.8
.talk 44633
..' Tell her you are joining an assault on Lorthuna's Gate and she is needed.
.' Skip to the next step in the guide
step
goto 49.9,50.1
.talk 44644
..' Tell him you are joining an assault on Lorthuna's Gate and he is needed.
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
step
'Hearth to the Temple of Earth |goto 49.2,51.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 50.9,53.1
.' Click the Portal to Orgrimmar |tip It's a red swirling portal.
.' Teleport to Orgrimmar |goto Orgrimmar |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Deepholm\\Therazane Dailies",[[
description Walks you through completing the
description daily quests in the Therazane 
description region of Deepholm.
author support@zygorguides.com
daily
step
'Increasing your Therazane reputation to Revered will unlock more daily quests. |tip Use the THERAZANE REPUTATION guide in the Cataclysm Reputation section to do this.
step
goto Deepholm,56.1,14.4
.talk 43805
..accept 27046 |daily
..accept 27047 |daily
..accept 28488 |daily |tip This quest can be offered at random and may not be offered every day.
step
goto 56.6,14.1
.talk 43806
..accept 28391 |daily |tip This quest can be offered at random if you have at least Revered reputation with Therazane.  However, the quest may not be offered every day.
only if rep ('Therazane') >= Revered
step
goto 57.3,12.5
.talk 43804
..accept 27049 |daily
..accept 27050 |daily
step
goto 55.4,14.2
.talk 44945
..accept 26710 |daily |tip This quest can be offered at random and may not be offered every day.
step
goto 59.6,14.0
.talk 44973
..accept 27051 |daily
..accept 28390 |daily |only if rep ('Therazane') >= Revered |tip This quest can be offered at random if you have at least Revered reputation with Therazane.  However, the quest may not be offered every day.
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
..accept 27048 |daily |tip This quest can be offered at random and may not be offered every day.
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
.' Click Sprouting Crimson Mushrooms |tip They look like tiny mushrooms on the ground around this area.  Try to only click the solid blue, solid red, or white-brown ones.  The blue ones with red spots will explode and hurt you. 
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Uldum\\Uldum Pre-Quests",[[
description Contains the pre-quests to unlock 
description the daily quests in Uldum.
description 
description You must be at least level 83 to
description complete this guide section.
author support@zygorguides.com
step
goto Orgrimmar,49.6,76.5
.' Click the Warchief's Command Board |tip It looks like a wooden board hanging between 2 wooden posts, with papers pinned on it.
..accept 28557
step
goto 49.1,70.5
.talk 47571
..turnin 28293
step
goto 49.7,59.2
.talk 3310
.' Fly to Dawnrise Expedition, Tanaris |goto Tanaris,33.3,77.3,0.5 |noway |c
step
goto Tanaris,30.5,65.5
.talk 44833
..turnin 28557
..accept 27003
step
goto 30.5,65.7
.' Click Lady Humps |tip It's a camel.
.' Watch the cut scenes
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
.' Watch the cut scene
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
.' Use your Brazier Torch next to Bales of Hay Brazier Torch##63027 |tip They look like bundles of yellow straw sitting on the ground around this area. |use Brazier Torch##63027
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
.' Watch the cut scene
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
.' Watch the cut scene
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
.' Watch the cut scene
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
.' Watch the cut scene
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
.' Use your Licensed Proton Accelerator Cannon on Furious Specters once they are at half health |use Licensed Proton Accelerator Cannon##62794
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
.' Watch the cut scene
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
'Watch the cut scene
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
goto 33.3,19.7
.talk 49151
..turnin 27748
..accept 28612
.' Watch the cut scene
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Uldum\\Tahret Grounds Dailies",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Uldum\\Pilgrim's Precipice Dailies",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Twilight Highlands\\Twilight Highlands Pre-Quests",[[
description Contains the pre-quests to unlock 
description the daily quests in Twilight Highlands.
description 
description You must be at least level 84 to
description complete this guide section.
author support@zygorguides.com
step
goto Orgrimmar,49.6,76.5
.' Click the Warchief's Command Board |tip It looks like a wooden board hanging between 2 wooden posts, with papers pinned on it.
..accept 28717
step
goto 48.1,70.5
.talk 39605
..turnin 28717
..accept 26293
step
goto 47.9,71.0
.talk 42637
..accept 26311
step
goto 71.0,50.8
.talk 42638
..' Ask him to give you a map
.from Twilight Nightblade##42707+
.talk 42638
..' Tell him yes, a map of the coastal approaches
.get Twilight Highlands Coastal Chart |q 26311/1
step
goto 48.0,71.0
.talk 42637
..turnin 26311
step
goto 75.2,0.4
.talk 42672
..turnin 26293
..accept 26294
step
goto 73.9,8.1
.' Click the Hellscream Demolisher |tip It looks like a big wooden catapult vehicle on the side of the road.
.' Discover a Faulty Demolisher |q 26294/1
.' Click the Chief Engineer |tip He's goblin that talks to you and is standing next to the Hellscream Demolisher.
.' Discipline the Chief Engineer |q 26294/2
step
goto 48.1,70.5
.talk 39605
..turnin 26294
..accept 26324
step
'Go northeast to Azshara |goto Azshara |noway |c
step
goto Azshara,59.9,50.4
.talk 42641
..turnin 26324
..accept 26374
..accept 26335
step
goto 60.2,50.4
.talk 42640
..accept 26358
step
goto 57.4,50.6
.' Click AWOL Grunts |tip They look like orc soldiers all around town wearing only a few armor pieces. They can be just standing in one place, or walking around.
.' Discipline 12 AWOL Grunts |q 26374/1
step
goto 54.5,51.2
.talk 42643
..turnin 26358
..accept 26361
step
goto 53.5,47.4
.' Click Foebreaker Blueprints |tip It looks like a big blue piece of paper laying on this small round table on the deck of this ship.
..turnin 26335
..accept 26337
step
goto 55.5,50.3
.' Click Smoot |tip He's a goblin that runs around this area with a metal object spinning in his hand.  You may need to search a little for him, or just stand in this spot and wait for him to run by.
.' Click the Induction Samophlange |tip It's a metal spinning object that spawns on the ground when you click Smoot.
.get Induction Samophlange |q 26361/1
step
goto 56.5,52.5
.talk 42777
..' Tell him nobody shorts Garrosh Hellscream
.' Fight the Bilgewater Foreman
.' Intimidate a Bilgewater Foreman |q 26337/1
step
goto 54.5,51.2
.talk 42643
..turnin 26361
..accept 26372
step
goto 60.2,50.4
.talk 42641
..turnin 26374
..turnin 26337
step
goto 60.2,50.4
.talk 42640
..turnin 26372
..accept 28849
step
goto 50.7,73.9
.talk 50367
..turnin 28849
..accept 26388
step
goto 50.8,73.8
.' Ride the zeppelin to Twilight Highlands
.' Accompany the Air Fleet |q 26388/1
step
goto Twilight Highlands,82.4,50.3
.' Click an Emergency Rampless Debarkation Device |tip They look like wooden signs on the edges of the ship deck.
.' Parachute down to a ship below |goto 82.5,50.1,0.1 |noway |c
step
goto 82.5,49.8
.talk 42978
..turnin 26388
..accept 26539
step
goto 82.6,49.9
.talk 43193
..accept 26538
step
goto 78.8,51.7
.talk 43187
..turnin 26539
..accept 26549
step
goto 76.5,49.5
.talk 43191
..' Ask him if he has medical supplies you can take back with you
.' Persuade the Medicine Man |q 26538/1
step
goto 76.5,49.5
.talk 43191
..turnin 26538
..accept 26540
step
goto 75.4,55.5
.' Watch the dialogue
.' Conclude the Negotiations |q 26549/1
step
goto 73.8,53.9
.talk 43190
..turnin 26549
..accept 26608
step
goto 82.5,49.8
.talk 42978
..turnin 26608
step
goto 82.6,49.9
.talk 43193
..turnin 26540
..accept 26619
step
goto 76.6,49.5
.talk 43581
..turnin 26619
..accept 26621
step
goto 76.7,51.5
.kill 10 Dragonmaw Enforcer |q 26621/2
.kill 4 Dragonmaw Warlock |q 26621/3
.talk 43577
.talk 43578
..' Tell them to either be a warrior or a shaman |tip Choose the type of helper you think you'll need.  If you want extra dps, tell them to be warriors.  If you want healing, tell them to be shamans.  You have to do this with 3 of them, so you can mix it up, depending on what you need.
.' Arm 3 Dragonmaw Civilians |q 26621/1
step
goto 76.6,49.5
.talk 43581
..turnin 26621
..accept 26622
step
goto 75.5,55.6
.kill Warchief Mor'ghor |q 26622/1 |tip You can still talk to Dragonmaw Workers and Merchants and ask them to fight with you as either warriors or shamans.
step
goto 74.8,53.1
.talk 43943
..turnin 26622
..accept 26786
step
goto 74.3,53.3
.talk 44042
..accept 26788
step
goto 73.8,53.9
.talk 44024
..turnin 26786
..accept 26784
step
goto 68.4,48.9
.from Muddied Water Elemental##44011+
.get 5 Whirlpool Core |q 26784/1
.' Click Verrall River Muck |tip They look like mounds of swirled gray and white sand on the ground around this area.
.get 10 Verrall River Muck |q 26788/1
step
goto 74.3,53.3
.talk 44042
..turnin 26788
step
goto 73.8,53.9
.talk 44024
..turnin 26784
..accept 26798
step
goto 73.7,53.9
.' Go inside the portal to Orgrimmar |tip It looks like a swirling portal with a stone ring with purple symbols around it.
.' Teleport to Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,48.1,70.5
.talk 39605
..turnin 26798
..accept 26830
step
goto 43.6,63.6
.talk 44160
..' Ask him if a secret cult has infiltrated the Orgrimmar skyway
.' Reveal Sauranok's Guilt |q 26830/1
.kill Sauranok the Mystic |q 26830/2
step
goto 48.1,70.5
.talk 39605
..turnin 26830
..accept 26840
step
goto 50.2,39.5
.' Click the Portal to Twilight Highlands |tip It looks like a purple swirling portal.
.' Teleport to Twilight Highlands |goto Twilight Highlands |noway |c
step
goto Twilight Highlands,73.8,52.8
.talk 47174
.fpath Dragonmaw Port
step
goto 75.3,54.9
.talk 44169
..turnin 26840
..accept 27583
..accept 27607
step
goto 75.9,52.7
.talk 49498
.home Dragonmaw Post
step
goto 78.2,62.5
.talk 46089
..turnin 27607
..accept 27610
..accept 27611
step
goto 77.5,65.2
.' Go to this spot
.' Scout the Beach Head Control Point |q 27610/1
step
goto 77.0,63.4
.kill 12 Highbank Marine |q 27611/1
step
goto 78.2,62.5
.talk 46089
..turnin 27610
..turnin 27611
step
goto 78.5,62.6
.talk 46090
..accept 27622
step
goto 68.3,61.7
.' Click the Salvageable Shredder |tip It looks like a metal shredder machine laying on the ground.
.' Locate the Salvageable Shredder |q 27622/1
.' Kill the enemies that attack the Salvageable Shredder
.' Defend the Salvageable Shredder |q 27622/2
step
goto 78.5,62.6
.talk 46090
..turnin 27622
..accept 28583
step
goto 70.2,43.3
.talk 45982
..turnin 27583
..accept 27584
step
goto 70.3,43.4
.talk 45983
..accept 27586
step
goto 71.1,42.4
.from Blackscale Mistress##45985+, Blackscale Raider##45984+
.' Slay 15 Blackscale Naga |q 27584/1
.' Click Unexploded Mortar Shells |tip They look like silver metal objects laying on the beach around this area.
.get 8 Unexploded Mortar Shell |q 27586/1
step
goto 70.2,43.3
.talk 45982
..turnin 27584
step
goto 70.3,43.4
.talk 45983
..turnin 27586
..accept 27606
step
goto 71.4,41.7
.' Use your Heth'Jatari Conch in the middle of the Heth'Jatari Banners |use Heth'Jatari Conch##61928 |tip They look like purple flags on golden rods on the beach.
.kill Fathom-Lord Heth'Jatar |q 27606/1 |tip Red arrows will appear on the ground near you while you fight him.  Lure Fathom-Lord Heth'Jatar next to those arrows.  He will get bombarded with mortars and it will be much easier to kil him.
step
goto 70.3,43.4
.talk 45983
..turnin 27606
step
goto 70.2,43.3
.talk 45982
..accept 27690
step
goto 54.8,44.2
.talk 46313
..turnin 27690
..accept 27751
..accept 27929
step
goto 55.1,43.6
.talk 46318
..accept 27747
step
goto 53.8,43.3
.talk 46319
..accept 27750
step
goto 53.3,42.9
.talk 49762
.home Bloodgulch
step
goto 54.1,42.2
.talk 47156
.fpath Bloodgulch
step
goto 52.3,40.6
.' Use your Barbed Fleshhook on Thundermar War Gryphons |use Barbed Fleshhook##62775 |tip They are big white birds that fly in the air around this area.
.kill 4 Thundermar Gryphon Rider |q 27929/1
step
goto 49.1,37.3
.' Click Thundermar Ale Kegs |tip They look like wooden barrels on the ground around this area.
.' Smash 10 Wildhammer Kegs |q 27747/1
.' Click Wildhammer Food Stores |tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
.get 15 Wildhammer Food Stores |q 27750/1
.' You can find more around [46.2,37.4]
step
goto 51.1,38.8
.from Wildhammer Warbrand##46320+
.get 8 Wildhammer Insignia |q 27751/1
step
goto 53.8,43.3
.talk 46319
..turnin 27750
step
goto 55.1,43.6
.talk 46318
..turnin 27747
step
goto 54.8,44.2
.talk 46313
..turnin 27751
..turnin 27929
..accept 28041
step
goto 55.1,43.6
.talk 46318
..accept 28038
step
goto 58.0,44.2
.from Untamed Gryphon##46158
.get Fresh Gryphon Carcass |q 28041/1
.' Click the Quest Complete box that pops up
..turnin 28041
..accept 28043
step
goto 50.7,58.4
.talk 46936
..turnin 28038
step
goto 47.1,63.8
.' Use your Gryphon Carcass Bait on a Highland Black Drake |use Gryphon Carcass Bait##62917 |tip They are orange dragons around this area.
.from Baited Black Drake##47422
.' Click the Baited Black Drake to ride it |tip Eventually, the Baited Black Drake will surrender once you've weakened it enough.
.' Ride the Baited Black Drake back to Bloodgulch
.' Capture the Baited Black Drake |q 28043/1
step
goto 54.4,43.9
.talk 47417
..turnin 28043
..accept 28123
step
goto 53.3,42.7
.talk 46323
..accept 27947
step
goto 53.2,42.7
.talk 46324
..accept 27945
step
goto 49.1,28.2
.' Click The Demon Chain |tip It looks like a golden necklace with a red jewel in it laying on the ground.
.get The Demon Chain |q 28123/1
step
goto 57.9,33.5
.' Click the Eye of Twilight |tip It's a purple orb above a spinning metal machine.
..turnin 27947
..accept 27951
step
goto 58.0,32.6
.kill 10 Shaman of the Black |q 27951/1
.from Obsidian Stoneslave##47226+
.get Black Diamond Heart |q 27945/1
step
goto 57.9,33.5
.' Click the Eye of Twilight |tip It's a purple orb above a spinning metal machine.
..turnin 27951
..accept 27954
step
goto 77.6,16.6
.talk 48993
..turnin 28583
..accept 28588
step
goto 77.7,16.6
.talk 49439
..accept 28584
step
goto 77.7,16.7
.talk 49441
..accept 28586
step
goto 77.5,16.3
.' Follow the path up the ramps
.' Use your Blast Tape next to Faulty Valves |use Blast Tape##65146 |tip They look like red wheel handles spraying out black liquid on the metal platforms.
.' Seal 10 Faulty Valves |q 28584/1
.kill 10 Wildhammer Raider |q 28588/1
step
goto 81.1,15.5
.' Use your Emergency Pool Pony on Krazzworks Laborers |use Emergency Pool Pony##65162 |tip They are goblins in the water all around the area surrounding thie big island.
.' Rescue 10 Krazzworks Laborers |q 28586/1
step
goto 77.7,16.7
.talk 49439
..turnin 28584
step
goto 77.7,16.7
.talk 49441
..turnin 28586
step
goto 77.6,16.6
.talk 48993
..turnin 28588
..accept 28589
step
goto 75.5,17.9
.' Click the Krazz Cannon |tip It looks like a metal bouncing cannon with a place to sit behind it on this big metal platform.
.' Use your Fire Stuff ability to shoot at Wildhammer Stormtalon flying in the sky around this area
.kill 15 Wildhammer Stormtalon |q 28589/2
step
'Click the red arrow on your hotbar |outvehicle |noway |c |q 28589
step
goto 75.3,17.8
.talk 47061
.fpath The Krazzworks
step
goto 77.6,16.6
.talk 48993
..turnin 28589
..accept 28590
step
'On the ship you are standing on:
.talk 49378
..turnin 28590
..accept 28591
step
'Click a Skyshredder Turret |tip They look like bouncing metal cannons with seats on the right side of the airship.
.' Use the abilities on your hotbar to shoot at the Alliance enemies and cannons
.kill 80 Highbank Marksman |q 28591/1
.kill 12 Highbank Cannoneer |q 28591/2
.kill 4 Highbank Cannon |q 28591/3
step
'Click the red arrow on your hotbar |outvehicle |noway |c |q 28591
step
'On the ship you are standing on:
.talk 49378
..turnin 28591
..accept 28593
..accept 28594
step
'On the ship you are standing on:
.talk 49379
..accept 28592
step
goto 81.5,78.8
.' Go to this spot
.' Use Ticker's Explosives on the boat |use Ticker's Explosives##64669
.' Place the Highbank Boat Bomb |q 28592/1
step
goto 79.8,77.4
.' Go to this spot
.' Use Ticker's Explosives in the doorway |use Ticker's Explosives##64669
.' Place the Highbank Keep Bomb |q 28592/2
step
goto 80.0,72.5
.' Go to this spot
.' Use Ticker's Explosives inside at the bottom of the tower |use Ticker's Explosives##64669
.' Place the Highbank Tower Bomb |q 28592/3
step
goto 79.5,78.2 |n
.' Go down the stairs |goto 79.5,78.2,0.5 |noway |c
step
goto 79.5,77.6
.' Click the Induction Samophlange |tip It's a spinning metal gadget in the base of the fortress.
.get Induction Samophlange |q 28593/1
step
goto 80.8,75.6
.from Highbank Marksman##49024+, Highbank Guardsman##49023+, Highbank Prison Guard##49029+
.kill 10 Highbank Defenders |q 28594/1
step
goto 82.1,80.0
.talk 49000
..turnin 28593
..turnin 28594
step
goto 81.8,80.4
.talk 49002
..turnin 28592
step
goto 82.1,80.0
.talk 49000
..accept 28595
step
goto 82.1,81.3
.' Click the Krazzworks Gyrocopter |tip It's a small helicopter flying in place at the top of this tower.
.' Ride back to The Krazzworks |goto 75.5,17.8,0.5 |noway |c
step
goto 77.6,16.6
.talk 48993
..turnin 28595
step
'Hearth to Bloodgulch |goto 53.3,42.9,0.5 |use Hearthstone##6948 |noway |c
step
goto 53.3,42.7
.talk 46323
..turnin 27954
..accept 27955
step
goto 53.3,42.8
.' Click the Eye of Twilight |tip It looks like a purple orb in a stand.
.' Watch the cut scene
.' Peer into the Eye |q 27955/1
step
goto 53.3,42.7
.talk 46323
..turnin 27955
step
goto 53.2,42.7
.talk 46324
..turnin 27945
..accept 27375
step
goto 54.4,43.9
.talk 47417
..turnin 28123
..accept 28133
step
goto 36.4,38.1
.talk 47671
..' Tell her you are ready to fight Torth!
.kill Torth |q 28133/1
step
goto 36.4,38.1
.talk 47671
..turnin 28133
step
goto 36.4,38.0
.talk 47751
..accept 28149
step
goto 36.7,38.0
.talk 47723
..accept 28147
step
goto 36.9,38.0
.talk 47133
.fpath The Gullet
step
goto 39.4,47.3
.' Click the Windspeaker Pylon |tip It looks like a tall gray stone with a hole in the top of it.
.get Windspeaker Charm |q 28149/1
step
goto 40.2,45.1
.from Twilight Windwarper##47724+
.get 8 Twilight Garment Scrap |q 28147/1
.from Storm Vortex##47728+
.get 5 Breath of the Vortex |q 28149/2
step
goto 36.7,37.9
.talk 47723
..turnin 28147
..accept 28151
step
goto 36.4,38.0
.talk 47751
..turnin 28149
..accept 28166
step
goto 40.6,32.9
.' Click The Light of Souls |tip It looks like a white crystal sitting on a pedestal inside this big building.
.get The Light of Souls |q 28166/1
step
goto 39.0,32.3
.from Glopgut Hurler##47768+, Glopgut Pounder##47765+
.' Slay 10 Glopgut Ogres |q 28151/1
step
goto 36.7,38.0
.talk 47723
..turnin 28151
step
goto 36.4,38.0
.talk 47751
..turnin 28166
..accept 28170
step
goto 36.0,37.9 |n
.' Enter the cave |goto 36.0,37.9,0.5 |noway |c
step
goto 35.0,36.6
.talk 47826
..' Tell him you are ready
.' Enter the Spirit Realm |havebuff Interface\Icons\Achievement_Halloween_Ghost_01 |q 28170
step
goto 35.1,35.9 |n
.' Follow this path |goto 35.1,35.9,0.5 |noway |c
step
goto 34.3,35.6
.' Use The Light of Souls to kill enemies when they attack you |use The Light of Souls##67537
.' Go to this spot
.' Cleanse the First Shrine |q 28170/1
step
goto 34.8,36.2 |n
.' Follow this path up |goto 34.8,36.2,0.5 |noway |c
step
goto 33.4,37.2
.' Use The Light of Souls to kill enemies when they attack you |use The Light of Souls##67537
.' Go to this spot
.' Cleanse the Second Shrine |q 28170/2
step
goto 34.8,37.4 |n
.' Follow this path |goto 34.8,37.4,0.5 |noway |c
step
goto 34.2,37.8
.' Use The Light of Souls to kill enemies when they attack you |use The Light of Souls##67537
.' Go to this spot
.' Cleanse the Third Shrine |q 28170/3
step
goto 36.0,37.9 |n
.' Leave the cave |goto 36.0,37.9,0.5 |noway |c
step
goto 36.4,38.0
.talk 47751
..turnin 28170
step
goto 44.0,10.6
.talk 45332
..turnin 27375
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
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Stormcaller Jalara |q 27379/2
step
goto 49.1,13.1
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Earthmender Duarn |q 27379/3
step
goto 47.0,13.1
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Hargoth Dimblaze |q 27379/1
step
goto 47.5,15.6
.' Stand in the yellow bubbles on the ground around this area to heal |tip Watch the Digestive Acids bar near the bottom of your screen.  Don't let it get full.  Go into the yellow bubbles to lower it.
.from Tentacle of Iso'rath##48790
.' Save Stormcaller Mylra |q 27379/4
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
.talk 48264
..accept 27486
step
goto 27.6,21.4
.' You will get captured by a red dragon
.' Meet with Lirastrasza |q 27486/1
step
goto 29.3,25.9
.talk 45528
..turnin 27486
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
.' Protect the Vermillion Menders while they heal Celastrasza to hull health
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
..accept 27576
step
goto 27.3,36.8
.talk 47492
..turnin 27576
..accept 28091
..accept 28090
step
goto 25.6,37.9
.from Twilight Spearwarder##47490+
.get Twilight Caravan Cargo Key |q 28090/1
.' Click a Twilight Caravan Chest |tip They look like boxes with a big purple jewel on top of them, sitting in wagons around this area.
.get Twilight's Hammer Gatestone |q 28090/2
.kill 8 Twilight Spearwarder |q 28091/1
step
goto 27.3,36.8
.talk 47492
..turnin 28091
..turnin 28090
..accept 28097
step
goto 29.6,41.0
.talk 47493
..turnin 28097
..accept 28092
step
'Next to you:
.talk 47374
..accept 28094
step
goto 29.5,51.7
.' Go to this spot
.' Open the Dragonmaw Gate |q 28092/1
step
'Next to you:
.talk 47374
..turnin 28092
..accept 28093
step
goto 27.5,54.6
.from Twilight Sentinel##47406+, Twilight Guardsman##47394+, Twilight Stalker##47401+
.' Kill 30 Wyrm's Bend Cultists |q 28094/1
step
'Next to you:
.talk 47374
..turnin 28094
step
goto 22.8,56.1
.' Go to this spot
.' Secure the Entrance to Grim Batol |q 28093/1
step
goto 22.1,56.6
.talk 47605
..turnin 28093
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
..accept 28249
step
goto 45.3,75.4
.talk 45658
..turnin 28249
..accept 27493
step
goto 45.3,75.3
.talk 45665
..accept 27497
..accept 27491
step
goto 45.8,76.2
.talk 47116
.fpath Crushblow
step
goto 45.1,76.7
.talk 49747
.home Crushblow
step
goto 45.8,76.0
.talk 45947
..' Tell him you're here to lead your wind rider squad and drop off the Kor'kron assassins
.' Get your Wind Rider Squad |q 27491/1
step
goto 39.2,64.5
.' Go to this spot and land on the flashing red X on the ground
.' Drop off the Kor'kron |q 27491/2
step
goto 38.8,64.3
.' Use your Artillery Flare |use Artillery Flare##61367
.' Target the Northern Building |q 27497/1
step
goto 40.0,64.4
.' Use your Artillery Flare |use Artillery Flare##61367
.' Target the Northeastern Building |q 27497/2
step
goto 40.4,69.2
.' Use your Artillery Flare |use Artillery Flare##61367
.' Target the Southwestern Building |q 27497/3
step
goto 41.4,71.2
.' Use your Artillery Flare |use Artillery Flare##61367
.' Target the Southern Building |q 27497/4
step
goto 41.1,69.8
.from Bloodeye Magelord##45795+, Bloodeye Brute##45787+, Twilight Ettin##45838+
.kill 10 Bloodeye Clan ogres & ettins |q 27493/1
step
goto 45.3,75.3
.talk 45665
..turnin 27497
..turnin 27491
step
goto 45.3,75.4
.talk 45658
..turnin 27493
..accept 27495
step
goto 38.1,66.2
.' Click the Hidden Explosives |tip It looks like a wooden crate sitting up on this hill.
.' Detonate the Hidden Explosives |q 27495/1
.' Click the Quest Complete box that pops up
..turnin 27495
..accept 27499
step
goto 40.5,62.3
.' Use your Attack Signal at the top of this tower |use Attack Signal##61511
.' Signal the Attack |q 27499/1
.' Click the Quest Complete box that pops up
..turnin 27499
..accept 27501
step
goto 39.8,71.3 |n
.' Enter the cave |goto 39.8,71.3,0.5 |noway |c
step
goto 37.6,71.3
.from Za'brox##46017
.get Za's Head |q 27501/1
.get Brox's Head |q 27501/4
step
goto 38.7,70.2
.from Beeble'phod##46018
.get Phod's Head |q 27501/2
.get Beeble's Head |q 27501/3
step
'Hearth to Crushblow |goto 45.1,76.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 45.3,75.3
.talk 45665
..turnin 27501
..accept 27503
step
goto 38.9,64.0
.talk 46117
..' Tell him you're ready
.' Speak to the Squad commander |q 27503/1
step
'Follow the Kor'kron Squad Commander and the Kor'kron Assassins up the path
.' Escort the Kor'kron |q 27503/2
.' Click the Quest Complete box that pops up
..turnin 27503
..accept 27638
step
goto 36.4,65.9
.talk 45675
..turnin 27638
..accept 27653
..accept 27655
..accept 27658
step
goto 37.5,88.7
.talk 46242
..turnin 27658
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
.kill 10 Twilight Citadel cultists |q 27655/1
.from Dark Assassin##46202+ |tip They look like black shades that wander around this whole area.  They are much less common than the other enemies, so you will probably have to fly around this whole area and look for them.
.get 5 Dark Assassin's Pendant |q 27653/1
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
goto 36.4,65.9
.talk 45675
..turnin 27653
..turnin 27655
..accept 27689
..accept 27696
step
goto 27.6,63.9
.talk 46413
..turnin 27661
..accept 27798
step
goto 35.1,61.1
.' Use your Water of Life next to the Corpse of Forgemaster Finlay |use Water of Life##62503 |tip He's chained to an anchor, drowned underwater.
.' Extract Artifact Information |q 27798/1
step
goto 36.4,65.9
.talk 45675
..turnin 27798
step
goto 36.1,70.7
.kill Master Klem |q 27689/2 |tip Garona Halforcen will come and kill him for you after you've fought him for a little bit.
step
goto 40.2,84.0
.from Blindeye the Guardian##46399
.get The Elementium Axe |q 27696/1
step
goto 42.3,83.5
.kill Mia the Rose |q 27689/3 |tip She's in a small room at the top of this big building.  Garona Halforcen will come and kill her for you after you've fought her for a little bit.
step
goto 43.4,88.5
.kill Dame Alys Finnsson |q 27689/1 |tip Garona Halforcen will come and kill her for you after you've fought her for a little bit.
step
goto 36.4,65.9
.talk 45675
..turnin 27689
..turnin 27696
..accept 27701
step
goto 32.4,68.7
.' Use The Elementium Axe |use The Elementium Axe##62248
.' Free Lirastrasza |q 27701/1
step
goto 36.4,65.9
.talk 45675
..turnin 27701
..accept 27703
step
goto 37.5,75.4
.from Twilight Skyterror##46416+ |tip They look like blue dragons laying on the ground all around this area.  You will need to fly around and search for them, as there aren't many of them at one time.  Watch Lirastrasza in the sky and you will see the blue dragons fall, so you can immediately fly to them to make it easier.
.' Deliver 5 Coup de Graces |q 27703/1
step
goto 36.4,65.9
.talk 45675
..turnin 27703
..accept 27712
step
goto 37.5,88.7
.talk 46243
..turnin 27712
..accept 28885
step
goto 37.5,88.7
.talk 46243
..' Tell him you're ready for that wild ride
.' Ride the Mine Cart to the End of the Line |q 28885/2
step
'Next to you:
.talk 46513
..turnin 28885
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
step
goto 36.4,83.8
.' Use your Fire Portal Controller |use Fire Portal Controller##62394
.' Use the Fire Portal Controller at the Fire Portal |q 27745/1
step
goto 37.5,88.7
.talk 46243
..turnin 27745
..accept 27783
step
goto 36.4,65.9
.talk 45675
..turnin 27783
..accept 27786
step
'Hearth to Crushblow |goto 45.1,76.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 45.4,88.0
.' Click The Hammer of Twilight |tip It's a huge hammer floating in a beam of blue light on this high platform.
..turnin 27786
..accept 27788
.' Watch the cut scene
.' Survive Skullcrusher's Backhand |q 27788/1
step
goto 45.4,87.9
.kill Skullcrusher the Mountain |q 27788/2 |tip Follow the instructions that pop up on your screen.  Click the altars surrounding the fight, you will gain buffs from them to help you fight.  The altars are stone blocks with candles on them.  Click Warlord Zaela when she becomes unconscious.  You will see a green arrow bouncing above her when you need to click her.  Eventually, she will fall to the ground near the end of the fight.  Click her body to play the drums she drops to call reinforcements to help finish the fight.
step
'Hearth to Crushblow |goto 45.1,76.7,0.5 |use Hearthstone##6948 |noway |c
step
goto 45.3,75.4
.talk 45658
..turnin 27788
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Twilight Highlands\\Bloodgulch Dailies",[[
description Walks you through completing the
description daily quests in the Bloodgulch 
description region of Twilight Highlands.
author support@zygorguides.com
daily
step
goto Twilight Highlands,55.1,43.6
.talk 46318
..accept 28872 |daily
..accept 28874 |daily
step
goto 53.8,43.3
.talk 46319
..accept 28873 |daily
step
goto 53.9,42.1
.talk 49387
..accept 28875 |daily
step
goto 54.0,41.9
.talk 50622
..accept 28871 |daily
step
goto 46.0,33.0
.kill High Shaman MacKilligan |q 28875/1 |tip He runs into town to this spot.  He is elite and the quest is a group quest, so you may need help killing him.
step
goto 49.1,37.3
.' Click Thundermar Ale Kegs |tip They look like wooden barrels on the ground around this area.
.' Smash 10 Wildhammer Kegs |q 28872/1
.' Click Wildhammer Food Stores |tip They look like hanging fish, sliced bread, and legs of meat on the ground around this area.
.get 10 Wildhammer Food Stores |q 28873/1
.' You can find more around [46.2,37.4]
step
goto 51.2,40.4
.' Use your Barbed Fleshhook on Thundermar War Gryphons |use Barbed Fleshhook##62775 |tip They are big white birds that fly in the air around this area.
.kill 4 Thundermar Gryphon Rider |q 28874/1
.from Wildhammer Warbrand##46320+
.get 8 Wildhammer Insignia |q 28871/1
step
goto 55.1,43.6
.talk 46318
..turnin 28872
..turnin 28874
step
goto 53.8,43.3
.talk 46319
..turnin 28873
step
goto 53.9,42.1
.talk 49387
..turnin 28875
step
goto 54.0,41.9
.talk 50622
..turnin 28871
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Tol Barad Peninsula\\Hellscream's Grasp Dailies",[[
description Walks you through completing the
description daily quests in the Hellscream's
description Grasp region of Tol Barad Peninsula.
author support@zygorguides.com
daily
step
goto Orgrimmar,47.4,39.3
.' Click the Portal to Tol Barad |tip It looks like a small white glowing portal.
.' Teleport to Tol Barad |goto Tol Barad Peninsula |noway |c
step
'You will only be able to accept a total of 6 quests in the following guide steps.
.' Skip to the next step in the guide
step
goto Tol Barad Peninsula,55.2,81.3
.talk 48360
..accept 28684 |daily
..accept 28680 |daily
..accept 28678 |daily
..accept 28679 |daily
..accept 28681 |daily
..accept 28683 |daily
step
goto 53.5,80.6
.talk 48358
..accept 28682 |daily
..accept 28685 |daily
..accept 28686 |daily
..accept 28687 |daily
..accept 28721 |daily
step
goto 54.9,79.3
.talk 48363
..accept 28693 |daily
..accept 28691 |daily
..accept 28692 |daily
..accept 28690 |daily
..accept 28689 |daily
step
goto 55.8,78.5
.talk 48361
..accept 28696 |daily
..accept 28698 |daily
..accept 28697 |daily
..accept 28700 |daily
..accept 28695 |daily
..accept 28694 |daily
step
goto 74.3,42.8 |n
.' Follow the path up |goto 74.3,42.8,0.5 |noway |c
step
goto 78.6,42.0
.kill Commander Largo |q 28700/1 |tip He's at the top of the tower.
step
goto 78.2,49.0
.from Overlook Spectre##47182+, Ghastly Worker##47183+, Overlook Spirit##47181+
.' Slay 14 Largo's Overlook Ghosts |q 28697/1
.' Click Stacks of Cannonballs |tip They look like piles of cannonballs shaped like pyramids on the ground around this area.
.get 4 Stack of Cannonballs |q 28698/1
step
goto 69.3,23.1
.' Click Strings of Fish |tip They look like small fish hanging from simple wooden structures on the docks around this area.
.get 22 Rustberg Seabass |q 28687/1
step
goto 67.6,37.1
.from Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
.kill 14 Rustberg Village Residents |q 28686/1
step
goto 54.2,47.0
.kill 12 Darkwood Lurker |q 28683/1
.from Darkwood Broodmother##46507+
.get 4 Sticky Silk Gland |q 28684/1
step
goto 47.9,8.1
.kill Captain P. Harris |q 28678/1 |tip He's walking around on this broken boat.
step
goto 49.4,19.8
.kill Tank |q 28681/1 |tip He's an elite shark that swims in the water around this area.  This is a group quest, so you will probably need help.
.' Click Barrels of Southsea Rum |tip They look like barrels underwater around this area.
.get 6 Barrel of Southsea Rum |q 28680/1
step
goto 49.0,29.4
.kill 8 Shipwrecked Sailor |q 28679/1
step
goto 36.1,27.3
.kill Keep Lord Farson |q 28682/1 |tip He's upstairs in the fort.
step
goto 37.8,29.1
.talk 48308
..' Tell you're here to help him escape
.' Escort the Farson Prisoner |q 28721/1 |tip Follow the Farson Hold Prisoner and protect him.
step
goto 41.2,35.8
.' Click Racks of Rifles |tip They look like wooden stands with guns on them around this area.
.get 12 Rusty Rifle |q 28685/1
step
goto 27.2,47.7
.kill Foreman Wellson |q 28695/1
step
goto 22.2,36.3
.' Click a Cannon |tip They look like black cannons on this small dock.
.' Shoot the boats
.' Destroy 10 Wellson Supply Boats |q 28696/1
step
goto 30.1,43.9
.from Ghastly Dockhand##46641+, Accursed Longshoreman##46630+, Accursed Shipbuilder##46643+
.get 15 Shipyard Lumber |q 28694/1
step
goto 40.2,57.9
.kill 5 Restless Soldier |q 28693/1
.' Use your Magnatized Scrap Collector |use Magnatized Scrap Collector##62829
.' Click Siege Scraps |tip They look like metal objects on the ground that appear after your use your Magnatized Scrap Collector.
.get 7 Siege Engine Scrap |q 28692/1
step
goto 38.4,77.6
.kill First Lieutenant Connor |q 28691/1 |tip He's a big skeleton that walks around this area, so you may need to search for him.
step
goto 38.1,71.5
.from Wandering Soul##46586+, Forgotten Ghoul##46569+
.get 9 Cursed Femur |q 28690/1
.' Click Forgotten Soldier's Tombstones |tip They look like taller and slimmer gravestones around this area.
.' Release 6 Tortured Souls |q 28689/1
step
goto 55.2,81.3
.talk 48360
..turnin 28684
..turnin 28680
..turnin 28678
..turnin 28679
..turnin 28681
..turnin 28683
step
goto 53.5,80.6
.talk 48358
..turnin 28682
..turnin 28685
..turnin 28686
..turnin 28687
..turnin 28721
step
goto 54.9,79.3
.talk 48363
..turnin 28693
..turnin 28691
..turnin 28692
..turnin 28690
..turnin 28689
step
goto 55.8,78.5
.talk 48361
..turnin 28696
..turnin 28698
..turnin 28697
..turnin 28700
..turnin 28695
..turnin 28694
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Tol Barad \\Baradin Hold Dailies",[[
description Walks you through completing the
description daily quests in the Baradin Hold
description region of Tol Barad.
author support@zygorguides.com
daily
step
'These daily quests will only be available if the Horde faction currently controls Tol Barad.
|confirm
step
goto Tol Barad,50.9,49.7
.talk 48069
..accept 28657 |daily
..accept 28658 |daily
..accept 28659 |daily
step
goto 51.4,49.6
|modelnpc Staff Sergeant Lazgar##48062 
..Click here if Staff Sergeant Lazgar is present. |confirm |next lazgar_is_here
|modelnpc Drillmaster Razgoth##48070##48039
..Click here if Drillmaster Razgoth is present. |confirm |next razgoth_is_here
|modelnpc Private Garnoth##48074
..Click here if Private Garnoth is present. |confirm |next garnoth_is_here
'Only one of these NPCs will be available.
step
label "razgoth_is_here"
goto 51.5,49.7
.talk 48070
..accept 28663 |daily
..accept 28664 |daily
..accept 28665 |daily
|next exit
step
label "garnoth_is_here"
goto 51.5,49.7
.talk 48071
..accept 28660 |daily
..accept 28662 |daily
..accept 28661 |daily
|next exit
step
label "lazgar_is_here"
goto 51.5,49.7
.talk 48062
..accept 28670 |daily
..accept 28668 |daily
..accept 28669 |daily
|next exit
step
label "exit"
goto 42.7,39.1 |n
.' Enter the underground jail |goto 42.7,39.1,0.5 |noway |c
step
goto 48.3,30.7
.from Svarnos##47544+
.get Svarnos' Cursed Collar |q 28664/1
step
goto 44.4,30.5
.from Imprisoned Imp##47549+, Cell Watcher##47542+, Shivan Destroyer##47540+, Jailed Wrathguard##47548+
.' Slay 10 Demons |q 28663/1
.' Click Cursed Shackles |tip They look like gray metal ball and chains laying on the ground all around this area.
.get 8 Cursed Shackles |q 28665/1
step
goto 42.1,41.8
.from Baradin Crocolisk##47591+
.get 8 Crocolisk Hide |q 28658/1
step
goto 44.0,69.2 |n
.' Enter the underground jail |goto 44.0,69.2,0.5 |noway |c
step
goto 37.5,71.7
.from Warden Silva##48036
.get Warden's Keys |q 28669/1
step
goto 40.9,78.2
.from Imprisoned Worker##47550+, Exiled Mage##47552+
.' Slay 10 Prisoners |q 28668/1
.' Click Crates of Cellblock Rations |tip They look like slim square wooden boxes on the ground around this area.
.get 12 Cellblock Ration |q 28670/1
step
goto 60.8,50.1 |n
.' Enter the underground jail |goto 60.8,50.1,0.5 |noway |c
step
goto 56.8,54.8
.from Archmage Galus##47537
.get Archmage Galus' Staff |q 28661/1
step
goto 51.4,49.5
.from Captive Spirit##47531+, Ghastly Convict##47590+
.' Slay 9 Ghosts |q 28660/1
.' Click Dusty Prison Journals |tip They are books laying on the ground around this area.
.get 4 Dusty Prison Journal |q 28662/1
step
 goto Tol Barad,35.8,67.8
.from Alliance Mage Infantry##47598+, Alliance Hunter Infantry##47595+, Alliance Paladin Infantry##47600+, Alliance Warrior Infantry##47599+
.kill 12 Alliance Infantry |q 28659/1
step
goto 52.8,36.7
.kill Problim |q 28657/1 |tip He's a tall ogre that walks along the road that surrounds Baradin Hold, so you may need to search for him.  He's elite, and the quest is a group quest, so you may need help killing him.
step
goto 50.9,49.7
.talk 48069
..turnin 28657
..turnin 28658
..turnin 28659
step
goto 51.5,49.7
.talk 48070
..turnin 28663
..turnin 28664
..turnin 28665
step
goto 51.5,49.7
.talk 48071
..turnin 28660
..turnin 28662
..turnin 28661
step
goto 51.5,49.7
.talk 48062
..turnin 28670
..turnin 28668
..turnin 28669
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\Guardians of Hyjal",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\The Earthen Ring",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\Therazane",[[
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
..' You can buy the Tabard of Therazane by talking to D'lom the Collector at [Deepholm 56.95,13.08]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\Ramkahen",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\Dragonmaw Clan",[[
description Walks you through the process
description of obtaining Exalted reputation
description with the Dragonmaw Clan faction.
author support@zygorguides.com
step
map Twilight Highlands
'To gain reputation with the Dragonmaw Clan faction:
.' Complete the Twilight Highlands Pre-Quests guide in the Twilight Highlands section.
.' Complete the Bloodgulch Dailies guide in the Twilight Highlands section. |tip Do this daily, if you'd like.
.' Once you earn Friendly reputation with the Dragonmaw Clan faction, you can buy the Tabard of the Dragonmaw Clan. |tip Wear the Tabard of the Dragonmaw Clan and use the Dungeon Finder tool to complete random Cataclysm Heroics.  You will gain reputation with the Dragonmaw Clan faction for each mob you kill inside the dungeon, so you can gain reputation very quickly doing this.
..' You can buy the Tabard of the Dragonmaw Clan by talking to Grot Deathblow at [Twilight Highlands 53.9,42.1]
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Reputation\\Hellscream's Reach",[[
description Walks you through the process
description of obtaining Exalted reputation
description with the Hellscream's Reach faction.
author support@zygorguides.com
step
map Tol Barad Peninsula
'To gain reputation with the Hellscream's Reach faction:
.' Complete the Hellscream's Grasp Dailies guide in the Tol Barad Peninsula section. |tip Do this daily, if you'd like.
.' Complete the Baradin Hold Dailies guide in the Tol Barad section. |tip Do this daily, if you'd like.  The daily quests in this section will only be available if the Horde faction currently controls Tol Barad.
.' Once you earn Friendly reputation with the Hellscream's Reach faction, you can buy Hellscream's Reach Commendations from Pogg at [54.5,81.3] |tip They cost 10 Tol Barad Commendations each and you can use the Hellscream's Reach Commendations to increase your Hellscream's Reach reputation by 250.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Zandalari Menace Quest Line",[[
description Walks you through completing
description the Zandalari Menace quest line
description in Stranglethorn Vale.
description 
description You must be level 85 to be
description able to use this guide.
author support@zygorguides.com
startlevel 85
step
goto Orgrimmar,32.6,68.1
.talk 53081
..accept 29219
..accept 29220
step
goto 52.5,53.1 |n
.' Ride the zeppelin to Stranglethorn Vale |goto Stranglethorn Vale |noway |c
step
goto Northern Stranglethorn,64.6,40.0
.talk 52980
..turnin 29220
..accept 29221
step
goto 61.2,39.8
.kill 10 Jungle Serpent |q 29221/1
.' Click Injured Bambala Headhunters |tip They look like green bodies laying on the ground around this area.
.' Heal 10 Headhunters |q 29221/2
step
goto 64.6,40.0
.talk 52980
..turnin 29221
step
'Next to you:
.talk 52234
..accept 29222
step
goto 65.1,39.9
.' Click the Bonfire |tip It looks like a big pile of burning sticks.
.' Watch the dialogue
.' Use the Bonfire near Bambala |q 29222/1
step
'Next to you:
.talk 52234
..turnin 29222
step
goto 64.6,40.0
.talk 52980
..accept 29223
step
goto 44.1,22.9
.talk 52294
..turnin 29223
..accept 29226
step
goto 50.4,21.7
.talk 52346
..turnin 29226
..accept 29227
step
goto 64.0,19.6
.from Mauti?##52349
.' Bring Grent Direhammer to the body of Mauti |q 29227/1
step
'Click the Complete Quest box that appears under you minimap
..turnin 29227
.' You will automatically accept a new quest:
..accept 29228
step
goto 77.7,68.4
.' Go to this spot
.' Find Mauti's Lair |q 29228/1
step
'Next to you:
.talk 52234
..turnin 29228
..accept 29230
step
goto 77.2,69.0
.from Mauti##52372
.' Let Bwemba Inspect the Cat |q 29230/1
step
'Next to you:
.talk 52234
..turnin 29230
..accept 29231
step
goto 76.5,67.5 |n
.' Enter the cave |goto 76.5,67.5,0.5 |noway |c
step
goto 76.1,66.7
.talk 52371
..turnin 29231
..accept 29232
step
goto 76.0,66.5
.' Click Direhammer's Boots |tip They look like a small pair of brown boots sitting on the ground inside this cave.
.get Direhammer's Boots |q 29232/1
step
goto 76.1,66.7
.talk 52371
..turnin 29232
step
goto 76.1,66.7
.talk 52374
..accept 29268 |instant
step
'Next to you:
.talk 52234
..accept 29233
step
goto 76.5,67.5 |n
.' Leave the cave |goto 76.5,67.5,0.5 |noway |c
step
goto 38.4,50.2
.talk 52996
..turnin 29233
..accept 29235
step
goto 37.5,50.0
.from Gurubashi War-Seeker##53165+, Gurubashi Bloodfury##52406+, Gurubashi Soul-Seeker##53166+ |tip Once the bar fills up at the bottom of your screen, you will complete the quest.
.' Help Defend Grom'gol Base Camp |q 29235/1
step
goto 38.4,50.2
.talk 52996
..turnin 29233
..accept 29235
step
goto 39.0,51.2
.talk 53008
..accept 29236
step
goto 39.0,51.2
.talk 53008
..' Tell her you need use of a wyvern to fly you to where the Darkspear emissary went
.' You will fly to Hardwrench Hideaway
.' Arrive at Hardwrench Hideaway |q 29236/1
step
'Next to you:
.talk 52234
..turnin 29236
..accept 29237
step
goto The Cape of Stranglethorn,36.3,31.8
.from Hideaway Zombie##53011+
.' Rescue 10 Hideaway Survivors |q 29237/1 |tip You may not rescue every zombie you kill.
step
'Next to you:
.talk 52234
..turnin 29237
..accept 29238
step
goto 33.6,30.2
.' Click the Sack of Spices |tip It looks like a yellow grain bag sitting on the floor next to the wall inside this building.
.' Watch the dialogue
.' Search the Supplies |q 29238/1
step
'Next to you:
.talk 52234
..turnin 29238
step
goto 33.5,30.4
.talk 53078
..accept 29250
step
goto 44.9,65.9 |n
.' Enter the tunnel |goto 44.9,65.9,0.5 |noway |c
step
goto 41.0,73.1
.talk 52767
..turnin 29250
step
goto 41.2,73.0
.' Go to this spot
.' Watch the dialogue
.' Help Bwemba Find the Darkspear Emissary |q 29219/1
step
'Next to you:
.talk 52234
..turnin 29219
step
'To continue with the Zul'Gurub dungeon quest line:
goto 41.2,73.1
.talk 2496
..accept 29251
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Mount Hyjal\\How To Use Firelands Guide Sections -- READ FIRST",[[
description Walks you through how to use the
description Firelands guide sections.
author support@zygorguides.com
daily
step
'The Firelands quests are very dynamic.  You will not be able to complete some daily quests each day, as only a limited amount are available each day.  |tip Accept and complete as many as you can, and simply skip over the ones you can't accept that day.
'
'
'You will need to use the Firelands Quests and Firelands Dailies together.  Complete as many quests as you can in the Firelands Quests guide section, and use the Firelands Dailies guide section to gain Marks of the World Tree.  |tip Marks of the World Tree are currency needed to complete certain quests in order to unlock more daily quests.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Mount Hyjal\\Firelands Pre-Quests",[[
description Contains the pre-quests to unlock 
description the Firelands quest line and daily
description quests.
description 
description You must be at least level 80 to
description complete this guide section.
author support@zygorguides.com
step
goto Orgrimmar,49.7,76.5
.' Click the Warchief's Command Board |tip It looks like a wooden wall with a bunch of paper notes on it.
..accept 27721
.' You will automatically accept a quest by entering Orgrimmar
..accept 28790
step
goto 50.5,38.4
.talk 45244
..turnin 28790
..accept 28805
step
goto 50.8,37.8
.' Click the Waters of Farseeing |tip It looks like a small bowl with spinning bright blue water in it.
.' Witness the Vision of the Farseer |q 28805/1
step
goto 50.5,38.4
.talk 45244
..turnin 28805	
step
goto 39.9,50.9
.talk 15188
..' Ask him to please send you to Moonglade
.' You will teleport to Moonglade |goto Moonglade,45.1,43.1,0.5 |noway |c
step
goto Moonglade,45.5,44.9
.talk 39865
..turnin 27721
..accept 25316
step
goto 46.1,45.5
.talk 39140
.' You will fly to Mount Hyjal |goto Mount Hyjal,63.6,23.3,0.5 |noway |c
step
goto Mount Hyjal,63.1,24.1
.talk 40843
.home Nordrassil
step
goto 62.0,24.9
.talk 40928
..turnin 25316
..accept 25317
step
goto 62.1,21.6
.talk 41861
.fpath Nordrassil
step
goto 64.0,22.6
.talk 39925
..accept 25460
step
goto 64.0,22.5
.talk 40278
..accept 25370
step
goto 65.8,20.8
.kill 8 Scalding Rock Elemental |q 25460/1
.' Click Juniper Berries |tip They look like small green bushes with small red berries on them, at the base of trees around this area.
.collect 4 Juniper Berries##53009 |n
.' Use your Juniper Berries on Faerie Dragons |use Juniper Berries##53009 |tip They look like small blue flying dragons around this area.
.' Follow the Faerie Dragons to find Twilight Inciters
.kill 4 Twilight Inciter |q 25370/1
step
goto 64.0,22.5
.talk 40278
..turnin 25370
..accept 25574
step
goto 64.0,22.6
.talk 39925
..turnin 25460
step
goto 55.9,15.8
.' Use Tholo's Horn to call for an emerald dragon |use Tholo's Horn##55122
.' Burn the Infiltrators' Encampment |q 25574/1
step
goto 64.0,22.5
.talk 40278
..turnin 25574
step
goto 47.7,35.5
.talk 15362
..turnin 25317
..accept 25319
step
goto 47.7,35.5
.talk 39869
..accept 25472
step
goto 47.8,29.4
.kill 4 Twilight Flamecaller |q 25319/1
.kill 10 Twilight Vanquisher |q 25319/2
.' Click Charred Stagg Fragments |tip They look like small white pieces on the ground around this area.
.get 8 Charred Staff Fragment |q 25472/1
step
goto 47.7,35.5
.talk 15362
..turnin 25319
..turnin 25472
..accept 25323
step
goto 44.7,33.2
.' Use your Flameseer's Staff on Blazebound Revenants |use Flameseer's Staff##53107
.kill 30 Unbound Flame Spirit |q 25323/1
.' You can find more Blazebound Revenants at [48.5,29.2]
step
goto 47.7,35.5
.talk 15362
..turnin 25323
..accept 25464
step
goto 44.1,27.0
.' Use your Flameseer's Staff on Baron Geddon |use Flameseer's Staff##54463 |tip He's a big fire elemental standing in the middle of this crater.
.' Weaken Baron Geddon 20 Times |q 25464/1 |tip Run away when you see Galrond of the Claw yell "Look out!".
step
goto 47.7,35.5
.talk 15362
..turnin 25464
step
goto 47.7,35.5
.talk 39869
..accept 25430
step
goto 48.4,19.0
.talk 38917
..turnin 25430
..accept 25320
step
goto 44.5,18.9
.talk 40096
..turnin 25320
..accept 25321
step
goto 44.4,20.7
.from Twilight Overseer##40123
.get Twilight Overseer's Key |q 25321/1
step
goto 44.5,18.9
.talk 40096
..turnin 25321
..accept 25424
step
goto 48.4,19.0
.talk 38917
..turnin 25424
..accept 25324
step
goto 52.6,17.3 |n
.' Enter the cave |goto 52.6,17.3,0.5 |noway |c
step
goto 56.8,18.8
.' Follow the path in the cave
.talk 40139
..turnin 25324
..accept 25325
step
goto 52.6,17.3 |n
.' Leave the cave
.' Deliver Arch Druid Fandral Staghelm |q 25325/1
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
goto 35.8,19.7
.talk 39427
..accept 25233
..accept 25234
step
goto 34.6,24.5
.kill 6 Twilight Hunter |q 25255/1
.kill 4 Twilight Proveditor |q 25233/1 |tip They walk with 3 Twilight slaves and a Twilight Slavedriver.
.' Click Twilight Supplies |tip The Twilight Slaves are carrying them.  You can get the supplies after you kill the Twilight Proveditor and Twilight Slavedriver.
.get 36 Twilight Supplies |q 25234/1
step
goto 35.8,19.7
.talk 39427
..turnin 25233
..turnin 25234
step
goto 35.7,19.4
.talk 39429
..turnin 25255
..accept 25269
step
goto 30.1,31.7
.talk 39432
..turnin 25269
..accept 25270
step
goto 29.0,31.4
.from Lycanthoth Vandal##39445+
.get 6 Polluted Incense |q 25270/1
step
goto 30.1,31.7
.talk 39432
..turnin 25270
..accept 25272
step
goto 32.4,37.3
.' Use Lycanthoth's Incense next to Lycanthoth's Altar |use Lycanthoth's Incense##52682 |tip Inside the cave.
.kill Lycanthoth |q 25272/1
step
goto 32.5,37.4
.talk 39622
..turnin 25272
step
goto 29.6,29.3
.talk 39622
..accept 25279
step
goto 28.4,29.9
.talk 39432
..turnin 25279
..accept 25277
step
goto 28.3,30.0
.talk 39435
..accept 25300
step
goto 28.2,29.9
.talk 39434
..accept 25297
step
goto 28.9,32.1
.' Click a Bitterblossom |tip They look like purple flowers around this small island.
.get Bitterblossom |q 25297/2
step
goto 26.5,35.0
.' Click a Stonebloom |tip They look like piles of brown-ish bags on the ground around this area.
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
goto 28.4,36.5
.' Click the Twilight Cauldron |tip It's a metal pot with blue smoke coming out of it.
..turnin 25297
..accept 25298
step
goto 26.9,36.3 |n
.' Enter the cave |goto 26.9,36.3,0.5 |noway |c
step
goto 27.2,40.8
.talk 39797
..accept 25328 |tip This quest is currently bugged, so some players are able to accept the quest while others cannot.
step
goto 26.5,38.5
.' Click Gar'gol's Personal Treasure Chest |tip It's a small metal chest sitting on a small stone mound.
.get Rusted Skull Key |q 25328/1
step
goto 25.8,41.6
.' Click The Twilight Apocrypha |tip It's an open book layin on a wooden crate at the very back of the cave.
..turnin 25301
..accept 25303
step
goto 26.0,41.8
.' Click the Crucible of Fire |tip It looks like a floating glowing hourglass.
.' Activate the Crucible of Fire |q 25303/3
step
goto 25.6,41.7
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
goto 25.8,41.6
.' Click The Twilight Apocrypha |tip It's an open book layin on a wooden crate at the very back of the cave.
..turnin 25303
..accept 25312
step
goto 26.7,39.2
.from Hovel Brute##39642+, Hovel Shadowcaster##39643+
.' Slay 8 Minions of Gar'gol |q 25277/1
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
.' Leave the cave
.' Escort Kristoff Out |q 25332/1
step
goto 28.6,30.2
.talk 39435
..turnin 25312
..turnin 25332
step
goto 28.4,29.9
.talk 39432
..turnin 25277
..accept 25354
..accept 25355
step
goto 28.2,29.9
.talk 39434
..turnin 25298
step
goto 29.1,40.7
.kill 8 Twilight Stormcaller |q 25354/1
.kill 5 Howling Riftdweller |q 25354/2
.' Click a Lightning Channel |tip They look like rods standing upright around this area, with lamps at the top of them.
..get Charged Condenser Jar |q 25355/1
step
'Use your Totem of Lo'Gosh |use Totem of Lo'Gosh##52854
.talk 39622
..turnin 25355
..accept 25617
step
goto 26.2,41.0 |n
.' Go inside the blue portal |goto 25.8,41.5,0.3 |noway |c
step
goto 26.3,41.9
.talk 40834
..turnin 25617
..accept 25575
..accept 25577
step
goto 26.3,42.0
.talk 40837
..accept 25576
step
goto 29.6,41.8
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
goto 31.9,46.3
.' Click the Portal Runes |tip They are brown metal plates on the ground on this small circular island in the lava.
.' Lure Forgemaster Pyrendius onto the activated Portal Runes |tip This will weaken him and allow you to kill him.
.kill Forgemaster Pyrendius |q 25600/1
step
goto 26.3,41.9
.talk 40834
..turnin 25600
..accept 25612
step
goto 25.9,40.9 |n
.' Go inside the blue portal |goto 26.3,40.9,0.3 |noway |c
step
goto 28.4,29.9
.talk 39432
..turnin 25354
..turnin 25612
step
goto 27.0,62.7
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
goto 21.1,42.6
.from Wailing Weed##40066+
.get 8 Bileberry |q 25408/1
step
goto 22.3,44.9
.talk 39933
..turnin 25408
..accept 25411
step
goto 14.5,45.3
.from Twilight Inferno Lord##39974
.' Use your Bottled Bileberry Brew on the corpse of a Twilight Inferno Lord |use Bottled Bileberry Brew##53120
.' Subjugate a Twilight Inferno Lord |q 25411/1
step
'Next to you:
.talk 40093
..turnin 25411
..accept 25412
step
goto 14.3,45.4
.' Click the Southern Firestone |tip It looks like a metal stand with a small flame at the top of it.
.' Examine the Southern Firestone |q 25412/3
step
goto 11.7,41.5
.' Click the Central Firestone |tip It looks like a metal stand with a small flame at the top of it.
.' Examine the Central Firestone |q 25412/2
step
goto 9.6,36.5
.' Click the Northern Firestone |tip It looks like a metal stand with a small flame at the top of it.
.' Examine the Northern Firestone |q 25412/1
step
goto 11.3,38.2
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
goto 14.6,42.2
.' Use your Charred Branch while in the burning forest area |use Charred Branch##53464
.from Thol'embaar##40107
.get Black Heart of Thol'embaar |q 25428/1
step
goto 12.5,44.6
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
..accept 29066
step
goto 19.0,40.9
.talk 39927
..accept 25940
step
goto 19.0,37.0
.talk 39928
..turnin 29066
step
goto 13.7,32.8
.talk 39932
..turnin 25940
..accept 25462
step
goto 13.9,34.1
.' Click the Climbing Tree |tip They look like small ladders leaning aginst the trees around this area.
.' Click Hyjal Bear Cubs in the tree
.' Use your Climb Up ability to climb to the top of the tree
.' Use your Chuck-a-bear ability to throw the cubs down |tip Aim the yellow spot at the bearskin trampoline on the ground.
.' Rescue 6 Hyjal Bear Cubs |q 25462/1
step
goto 13.7,32.8
.talk 39932
..turnin 25462
..accept 25490
step
goto 16.4,51.8
.kill 8 Charbringer |q 25490/1	
step
goto 27.1,62.6
.talk 5769
..turnin 25490
..accept 25491
..accept 25493
step
goto 27.1,63.0
.talk 40331
..accept 25492
step
goto 34.0,53.2
.kill 10 Lava Surger |q 25492/1
.from Core Hound##46910+
.get 4 Core Hound Entrails |q 25493/1
.' Click Scorched Soil |tip They look like piles of dirt around this area.
.get 10 Hyjal Seedling |q 25491/1
step
goto 41.2,42.6
.talk 43481
.fpath Shrine of Aviana
step
goto 42.2,45.4
.talk 41006
..accept 25655
..accept 25656
step
goto 44.4,46.2
.talk 41005
..turnin 27874
..accept 25663
step
goto 40.4,44.3
.' Use your Sacred Nectar next to Aviana's Burial Circle |use Sacred Nectar##55208
.' Offer the Nectar |q 25663/1
.talk 41068
..turnin 25663
..accept 25665
step
goto 36.9,43.4
.from Wormwing Screecher##41027+, Wormwing Swifttalon##41028+
.' Slay 10 Wormwing Harpies |q 25655/1
.' Click Stolen Hyjal Eggs |tip They look like big white eggs sitting at the base of trees around this area.
.get 8 Hyjal Egg |q 25656/1
step
goto 42.2,45.4
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
goto 38.4,44.2
.' Click the Harpy Signal Fire |tip It's a brazier with red fire in it.
.' Fight Marion Wormwing until she gets captured |q 25731/1
.talk 41112
..' Ask her why she is stealing eggs, then tell Thisalee to kill her
.' Interrogate Marion Wormwing |q 25731/2
step
goto 39.2,37.1
.' Use your Enormous Bird Call in Blaithe's Roost |use Enormous Bird Call##55211 |tip It's a huge bird nest sitting on top of this mountain peak.
.from Blaithe##41084
.get Ancient Feather |q 25664/1
step
goto 42.2,45.4
.talk 41006
..turnin 25731
step
goto 44.4,46.2
.talk 41005
..turnin 25664
step
goto 43.5,45.9
.' Go upstairs in the Shrine of Aviana
.talk 40997
..accept 25740
step
ding 81
step
goto 27.1,62.6
.talk 5769
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
goto 30.9,76.7
.from Twilight Dragonkin##41029+, Twilight Dragonkin Armorers##41030+
.' Slay 12 Sethria's Minions |q 25746/1
.' Click Twilight Armor Plates |tip They look like tan pieces of metal laying on the ground around this area.
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
goto 31.1,76.7
.' Use Thisalee's Shive on Twilight Juggernauts |use Thisalee's Shiv##55883 |tip Use Thisalee's Shive multiple times to remove the Twilight Juggernauts' Armor Plating and make them weaker.
.kill 3 Twilight Juggernaut |q 25761/1
.' Click Shadow Cloak Generators |tip They look like blue glowing machines around this area.
.' Unveil and Defend Aviana's Egg |q 25764/1
step
goto 32.8,70.8
.talk 41006
..turnin 25761
..turnin 25764
..accept 25776
step
goto 35.5,98.0
.from Sethria##41255
.' Use Thisalee's Signal Rocket when Sethria turns into a dragon |use Thisalee's Signal Rocket##56003
.kill Sethria |q 25776/1
step
goto 32.8,70.8
.talk 41006
..turnin 25776
..accept 25795	
step
goto 37.4,52.3
.' Use your Heap of Core hound Innards near Nemesis |use Heap of Core hound Innards##54744 |tip Nemesis is a huge turtle that walks all around The Flamewake area, so you may need to search for him.
.' Click Nemesis when he becomes friendly
.get Nemesis Shell Fragment |q 25507/1
step
goto 44.4,46.2
.talk 41005
..turnin 25795
..accept 25807
step
goto 44.3,47.9
.' Use Herald's Incense next to Aviana's Egg |use Herald's Incense##56016 |tip Aviana's Egg is in the tree tower, in a side room.
.' Burn Herald's Incense |q 25807/1
step
goto 44.3,48.0
.talk 41308
..turnin 25807
step
goto 44.1,45.9
.talk 41003
..accept 25810
step
goto 39.2,58.1 |n
.' Go inside the blue portal |goto 38.8,58.0,0.3 |noway |c
step
goto 37.2,56.2
.talk 40578
..turnin 25810
..accept 25523
step
goto 37.2,56.2
.' Click the Twilight Weapon Rack |tip It's a wooden stand with some weapons leaning against it.
.collect Twilight Firelance##52716 |q 25523
step
goto 37.4,56.0
.' Equip the Twilight Firelance |use Twilight Firelance##52716
.' Click Aviana's Guardian to ride it |invehicle |tip They are hippogryphs.
step
goto 36.4,53.2
.' Use your Flap ability on your hotbar repeatedly to fly to this green flag
.' Visit the Guardian Flag |q 25523/1
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25523
..accept 25525
step
goto 36.8,54.0
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
goto 36.8,54.0
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
goto 33.3,56.9
.' Use your Flap ability on your hotbar repeatedly to fly around this area
.' Run over Firelands Eggs |tip They look like blue eggs on the ground around this area.
.' Destroy 40 Firelands Eggs |q 25560/1
.' You can find more Firelands Eggs all around [35.8,53.6]
step
goto 37.2,56.2
.' Use your Flap ability on your hotbar repeatedly to fly to this spot
.talk 40578
..turnin 25560
..accept 25832
step
'Click the red arrow on your hot bar to get off the hippogryph |outvehicle |c |q 25832
step
'Don't forget to equip your real weapon again
.' Skip to the next step in the guide
step
goto 39.1,57.6 |n
.' Go inside the blue glowing orb |goto 38.8,58.6,0.3 |noway |c
step
goto 44.3,48.0
.talk 41308
..turnin 25832	
step
goto 27.1,62.6
.talk 5769
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
goto 24.0,55.9
.' Click the Rod of Subjugation |tip It's a huge metal rod with an orange spinning ball on top of it.
.' Disable the First Rod of Subjugation |q 25514/1
step
goto 25.2,54.9
.' Click the Rod of Subjugation |tip It's a huge metal rod with an orange spinning ball on top of it.
.' Disable the Second Rod of Subjugation |q 25514/2
step
goto 24.7,55.7
.talk 41504
..turnin 25514
step
goto 24.8,57.1
.from Deep Corruptor##40561+
.' Save 6 Tortolla's Eggs |q 25519/1
step
goto 24.7,55.7
.talk 41504
..turnin 25519
..accept 25520
step
goto 27.1,62.6
.talk 5769
..turnin 25520
step
goto 27.0,62.7
.talk 46998
..accept 25830	
step
goto 27.4,55.5
.talk 41381
..turnin 25830
..accept 25842
step
goto 26.6,53.2
.kill 5 Fiery Tormentor |q 25842/1
step
goto 27.4,55.5
.talk 41381
..turnin 25842
..accept 25372
step
goto 19.5,37.8
.talk 5769
..turnin 25372
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Mount Hyjal\\Firelands Quests",[[
description Walks you through completing the
description Firelands quest line in Mount
description Hyjal.
author support@zygorguides.com
startlevel 85.00
step
'You need to complete the Mount Hyjal Pre-Quests guide section before you will be able to use this guide.
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
|fly Hellscream's Watch
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Mount Hyjal\\Firelands Dailies",[[
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
only if havequest(29148)
step
goto 14.3,33.0
.' Click the Climbing Tree |tip They look like small ladders leaning aginst the trees around this area.
.' Click Hyjal Bear Cubs in the tree
.' Use your Climb Up ability to climb to the top of the tree
.' Use your Chuck-a-bear ability to throw the cubs down |tip Aim the yellow arrow at the bearskin trampoline on the ground.
.' Chuck 6 Hyjal Bear Cubs to Safety |q 29161/1
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
.kill Pyrachnis |q 29162/1
only if havequest(29162)
step
goto 23.6,60.1
.' Click Children of Tortolla |tip They look like small turtles on the ground around this area.
.' Use your Punt Turtle ability |tip Use your right mouse button to aim the yellow arrows into the water to the north.
.' Punt 5 Children of Tortolla into the Water |q 29101/1
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
.get 5 Embergris |q 29255/1 |only if havequest(29255)
.kill 8 Charred Combatant |q 29179/1 |only if havequest(29179)
.kill 3 Druid of the Flame |q 29142/1 |only if havequest(29142)
.kill 5 Lava Burster |q 29137/1 |only if havequest(29137)
.kill 5 Ancient Charhound |q 29304/1 |only if havequest(29304)
.' Use your Enchanted Salve on Wounded Hyjal Defenders |use Enchanted Salve##69240 |tip They look like various race corpses laying on the ground around this area. |only if havequest(29138)
.' Save 8 Wounded Hyjal Defenders |q 29138/1 |only if havequest(29138)
.' Click Ash Piles |tip They look like brown mounds of dirt on the ground around this area. |only if havequest(29139)
.' Plant 5 Smothervines |q 29139/1 |only if havequest(29139)
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
.from Druid of the Flame##52871
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
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dailies Guides\\Cataclysm (80 - 85)\\Mount Hyjal\\The Call of the World-Shaman Quest Line",[[
description Walks you through completing the
description Call of the World-Shaman quest 
description line.
author support@zygorguides.com
step
goto Orgrimmar,50.5,38.4
.talk 45244
..accept 29440
step
goto 51.1,38.3
.' Click the Portal to Hyjal |tip It's a green swirling portal next to some huge tree roots sticking out of the ground.
.' Teleport to Mount Hyjal |goto Mount Hyjal |noway |c
step
goto Mount Hyjal,60.6,31.5
.talk 54313
..turnin 29440
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
.' You will teleport to Uldum |goto Uldum,47.8,88.0,0.5 |noway |c
step
goto Uldum,47.6,88.9
.talk 53524
..turnin 29335
..accept 29327
step
goto 47.6,88.9
.talk 53524
..' Tell him to take you to Thrall
.' You will fly up to the top of a tower |goto 34.3,77.5,0.5 |noway |c
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
.' You will teleport to the Abyssal Depths |goto Abyssal Depths,69.7,34.8,0.5 |noway |c
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
.' You will teleport to Deepholm |goto Deepholm,56.3,13.0,0.5 |noway |c
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
.' You will be taken to the Staidridge |goto 64.2,46.0,0.5 |noway |c
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
.' Teleport to Hyjal |goto Mount Hyjal,60.3,30.4,0.5 |noway |c
step
goto Mount Hyjal,60.2,29.8
.talk 54168
..turnin 29331
step
'Congratulations, you saved Thrall!
]])
