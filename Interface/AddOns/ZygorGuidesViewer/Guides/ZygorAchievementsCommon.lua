local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end

--------------------------------------------------------------------------------------------------------------------------------------
-- Quest Includes
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("FrenzyheartPreQuests",[[
	step
		goto Sholazar Basin 50.5,62.1
		.talk Tamara Wobblesprocket##28568
		..accept The Part-time Hunter##12654
	step
		goto 50.5,77.3
		.from Pitch##28097
		.get Pitch's Remains |q 12654/1
	step
		goto 50.5,76.6
		.talk Tracker Gekgek##28095
		..accept Playing Along##12528
	step
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..turnin Playing Along##12528
		..accept The Ape Hunter's Slave##12529
	step
		'Talk to Goregek the Gorilla Hunter who is following you
		..accept Tormenting the Softknuckles##12530
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
		.talk High-Shaman Rakjak##28082
		..turnin The Ape Hunter's Slave##12529
		..turnin Tormenting the Softknuckles##12530
		..accept The Wasp Hunter's Apprentice##12533
	step
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..accept The Sapphire Queen##12534
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
		.talk High-Shaman Rakjak##28082
		..turnin The Wasp Hunter's Apprentice##12533
		..turnin The Sapphire Queen##12534
	step
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..accept Flown the Coop!##12532
	step
		'They are all around the village
		.' Click the Chicken Escapees
		.get 12 Captured Chicken |q 12532/1
	step
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..turnin Flown the Coop!##12532
		..accept The Underground Menace##12531
	step
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..accept Mischief in the Making##12535
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
		.talk High-Shaman Rakjak##28082
		..turnin The Underground Menace##12531
		..turnin Mischief in the Making##12535
		..accept A Rough Ride##12536
	step
		goto 57.3,68.4
		.talk Captive Crocolisk##28298
		..'Tell him let's do this
		.' Travel to Mistwhisper Refuge |q 12536/1
	step
		'When you jump off the crocodile:
		.talk Zepik the Gorloc Hunter##28668
		..turnin A Rough Ride##12536
		..accept Lightning Definitely Strikes Twice##12537
		..accept The Mist Isn't Listening##12538
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
		.talk Zepik the Gorloc Hunter##28216
		..turnin Lightning Definitely Strikes Twice##12537
		..turnin The Mist Isn't Listening##12538
		..accept Hoofing It##12539
	step
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..turnin Hoofing It##12539
		..accept Just Following Orders##12540
	step
		goto 55.7,64.9
		.talk Injured Rainspeaker Oracle##28217
		..' Pull it to its feet
		.' Kill the crocodile that spawns
		.' Locate the Injured Rainspeaker Oracle |q 12540/1
	step
		goto 55.7,64.9
		.talk Injured Rainspeaker Oracle##28217
		..turnin Just Following Orders##12540
		..accept Fortunate Misunderstandings##12570
		..'Tell him you are ready to travel to his village now.
		.' Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1
	step
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Fortunate Misunderstandings##12570
		..accept Make the Bad Snake Go Away##12571
	step
		'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
		.talk Lafoo##28120
		..accept Gods like Shiny Things##12572
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
		.talk High-Oracle Soo-say##28027
		..turnin Make the Bad Snake Go Away##12571
		..accept Making Peace##12573
		..turnin Gods like Shiny Things##12572
	step
		goto 51.3,64.6
		.talk Shaman Vekjik##28315
		..'Tell him you brought an offering
		.' Extend the Peace Offering to Shaman Vekjik |q 12573/1
	step
		goto 50.5,62.1
		.talk Tamara Wobblesprocket##28568
		..turnin The Part-time Hunter##12654
	step
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Making Peace##12573
		..accept Back So Soon?##12574
	step
		goto 42.1,38.6
		.talk Mistcaller Soo-gan##28114
		..turnin Back So Soon?##12574
		..accept The Lost Mistwhisper Treasure##12575
		..accept Forced Hand##12576
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
		.talk Mistcaller Soo-gan##28114
		..turnin The Lost Mistwhisper Treasure##12575
		..turnin Forced Hand##12576
		..accept Home Time!##12577
	step
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Home Time!##12577
		..accept The Angry Gorloc##12578
	step
		goto 75.3,54.1
		.' Travel to Mosswalker Village |q 12578/1
	step
		'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
		.talk Moodle##28122
		..turnin The Angry Gorloc##12578
		..accept The Mosswalker Savior##12580
		..accept Lifeblood of the Mosswalker Shrine##12579
	step
		goto 75.4,52.4
		.talk Mosswalker Victim##28113
		.' Rescue 6 Mosswalker Victims |q 12580/1
	step
		'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
		.talk Moodle##28122
		..turnin The Mosswalker Savior##12580
	step
		goto 68.9,54.6
		.' Click Lifeblood Shards on the ground |tip They look like small red crystals on the ground around this area.
		.get 10 Lifeblood Shard |q 12579/1
	step
		goto 54.5,56.6
		'You can also use Moodle's Stress Ball if you have it in your bags:|use Moodle's Stress Ball##38624 
		.talk Moodle##28122
		..turnin Lifeblood of the Mosswalker Shrine##12579
		..accept A Hero's Burden##12581
	step
		goto 70.8,58.7
		.' Enter the cave here
		.' Follow the path inside the cave up to 72.2,57.3
		.kill Artruis the Heartless |q 12581/1 |tip Kill Jaloot, who will spawn during the fight. Killing Jaloot will make you allied with the Frenzyheart Tribe.
		.' Click Artruis's Phylactery that spawns after the fight
		..turnin A Hero's Burden##12581
	step
		..talk Zepik the Gorloc Hunter##28668
		...accept Frenzyheart Champion##12582 |daily
		...accept Return of the Lich Hunter##12692
]])

ZygorGuidesViewer:RegisterInclude("FrenzyheartDailies",[[
	step
		goto Sholazar Basin 55.5,69.7
		.talk Elder Harkek##28138
		..turnin Return of the Lich Hunter##12692 |only if not ZGV.completedQuests[12692]
		..accept Chicken Party!##12702 |daily
		.' Tell him you need to find Goregek
		.collect Goregek's Shackles##38619 |q 12702
	step
		goto 55.7,69.5
		.talk Rejek##29043
		.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		..accept A Hero's Headgear##12758 |daily |or
		..accept Rejek: First Blood##12734 |daily |or
		..accept Strength of the Tempest##12741 |daily |or
		..accept The Heartblood's Strength##12732 |daily |or
	step
		goto 55.5,68.7
		.talk Vekgar##29146
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept Kartak's Rampage##12703 |daily |or
		..accept Secret Strength of the Frenzyheart##12760 |daily |or
		..accept Tools of War##12759 |daily |or
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
		goto 26.8,60.1
		.talk Grimbooze Thunderbrew##29157
		..' Ask him for some booze
		.collect Thunderbrew's Hard Ale##39738 |n
		.' Click the Wolvar Berries in your bags |use Wolvar Berries##39739
		.get Secret Strength of the Frenzyheart |q 12760/2
	step
		goto 30.1,70.7
		.' Drink the Secret Strength of the Frenzyheart in your bags |use Secret Strength of the Frenzyheart##39737
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
		.talk Shaman Jakjek##28106
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin Kartak's Rampage##12703
		..turnin Secret Strength of the Frenzyheart##12760
		..turnin Tools of War##12759
	step
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..turnin Chicken Party!##12702
	step
		goto 55.7,69.5
		.talk Rejek##29043
		.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		..turnin A Hero's Headgear##12758
		..turnin Rejek: First Blood##12734
		..turnin Strength of the Tempest##12741
		..turnin The Heartblood's Strength##12732
]])

ZygorGuidesViewer:RegisterInclude("OraclePreQuests",[[
	step
		goto Sholazar Basin,50.5,62.1
		.talk Tamara Wobblesprocket##28568
		..accept The Part-time Hunter##12654
	step
		goto 50.5,77.3
		.from Pitch##28097
		.get Pitch's Remains |q 12654/1
	step
		goto 50.5,76.6
		.talk Tracker Gekgek##28095
		..accept Playing Along##12528
	step
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..turnin Playing Along##12528
		..accept The Ape Hunter's Slave##12529
	step
		'Talk to Goregek the Gorilla Hunter who is following you
		..accept Tormenting the Softknuckles##12530
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
		.talk High-Shaman Rakjak##28082
		..turnin The Ape Hunter's Slave##12529
		..turnin Tormenting the Softknuckles##12530
		..accept The Wasp Hunter's Apprentice##12533
	step
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..accept The Sapphire Queen##12534
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
		.talk High-Shaman Rakjak##28082
		..turnin The Wasp Hunter's Apprentice##12533
		..turnin The Sapphire Queen##12534
	step
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..accept Flown the Coop!##12532
	step
		'They are all around the village
		.' Click the Chicken Escapees
		.get 12 Captured Chicken |q 12532/1
	step
		goto 55.5,69.7
		.talk Elder Harkek##28138
		..turnin Flown the Coop!##12532
		..accept The Underground Menace##12531
	step
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..accept Mischief in the Making##12535
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
		.talk High-Shaman Rakjak##28082
		..turnin The Underground Menace##12531
		..turnin Mischief in the Making##12535
		..accept A Rough Ride##12536
	step
		goto 57.3,68.4
		.talk Captive Crocolisk##28298
		..'Tell him let's do this
		.' Travel to Mistwhisper Refuge |q 12536/1
	step
		'When you jump off the crocodile:
		.talk Zepik the Gorloc Hunter##28668
		..turnin A Rough Ride##12536
		..accept Lightning Definitely Strikes Twice##12537
		..accept The Mist Isn't Listening##12538
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
		.talk Zepik the Gorloc Hunter##28216
		..turnin Lightning Definitely Strikes Twice##12537
		..turnin The Mist Isn't Listening##12538
		..accept Hoofing It##12539
	step
		goto 55,69.1
		.talk High-Shaman Rakjak##28082
		..turnin Hoofing It##12539
		..accept Just Following Orders##12540
	step
		goto 55.7,64.9
		.talk Injured Rainspeaker Oracle##28217
		..' Pull it to its feet
		.' Kill the crocodile that spawns
		.' Locate the Injured Rainspeaker Oracle |q 12540/1
	step
		goto 55.7,64.9
		.talk Injured Rainspeaker Oracle##28217
		..turnin Just Following Orders##12540
		..accept Fortunate Misunderstandings##12570
		..'Tell him you are ready to travel to his village now.
		.' Escort the Injured Rainspeaker Oracle to Rainspeaker Canopy |q 12570/1
	step
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Fortunate Misunderstandings##12570
		..accept Make the Bad Snake Go Away##12571
	step
		'Use Lafoo's Bug Bag if Lafoo is not standing next to you: |use Lafoo's Bug Bag##38622
		.talk Lafoo##28120
		..accept Gods like Shiny Things##12572
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
		.talk High-Oracle Soo-say##28027
		..turnin Make the Bad Snake Go Away##12571
		..accept Making Peace##12573
		..turnin Gods like Shiny Things##12572
	step
		goto 51.3,64.6
		.talk Shaman Vekjik##28315
		..'Tell him you brought an offering
		.' Extend the Peace Offering to Shaman Vekjik |q 12573/1
	step
		goto 50.5,62.1
		.talk Tamara Wobblesprocket##28568
		..turnin The Part-time Hunter##12654
	step
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Making Peace##12573
		..accept Back So Soon?##12574
	step
		goto 42.1,38.6
		.talk Mistcaller Soo-gan##28114
		..turnin Back So Soon?##12574
		..accept The Lost Mistwhisper Treasure##12575
		..accept Forced Hand##12576
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
		.talk Mistcaller Soo-gan##28114
		..turnin The Lost Mistwhisper Treasure##12575
		..turnin Forced Hand##12576
		..accept Home Time!##12577
	step
		goto 54.6,56.3
		.talk High-Oracle Soo-say##28027
		..turnin Home Time!##12577
		..accept The Angry Gorloc##12578
	step
		goto 75.3,54.1
		.' Travel to Mosswalker Village |q 12578/1
	step
		'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
		.talk Moodle##28122
		..turnin The Angry Gorloc##12578
		..accept The Mosswalker Savior##12580
		..accept Lifeblood of the Mosswalker Shrine##12579
	step
		goto 75.4,52.4
		.talk Mosswalker Victim##28113
		.' Rescue 6 Mosswalker Victims |q 12580/1
	step
		'Use Moodle's Stress Ball if Moodle is not standing next to you:|use Moodle's Stress Ball##38624
		.talk Moodle##28122
		..turnin The Mosswalker Savior##12580
	step
		goto 68.9,54.6
		.' Click Lifeblood Shards on the ground |tip They look like small red crystals on the ground around this area.
		.get 10 Lifeblood Shard |q 12579/1
	step
		goto 54.5,56.6
		'You can also use Moodle's Stress Ball if you have it in your bags:|use Moodle's Stress Ball##38624 
		.talk Moodle##28122
		..turnin Lifeblood of the Mosswalker Shrine##12579
		..accept A Hero's Burden##12581
	step
		goto 70.8,58.7
		.' Enter the cave here
		.' Follow the path inside the cave up to 72.2,57.3
		.kill Artruis the Heartless |q 12581/1 |tip Kill either Zepik the Gorloc Hunter who spawns during the fight.  Killing Zepik the Gorloc Hunter will make you allied with The Oracles.
		.' Click Artruis's Phylactery that spawns after the fight
		..turnin A Hero's Burden##12581
	step
		..talk Jaloot##28667
		...accept Hand of the Oracles##12689 |daily
		...accept Return of the Friendly Dryskin##12695
]])

ZygorGuidesViewer:RegisterInclude("OracleDailies",[[
	step
		goto Sholazar Basin 54.6,56.4
		.talk High-Oracle Soo-say##28027
		..turnin Return of the Friendly Dryskin##12695 |only if not ZGV.completedQuests[12695]
		..accept Appeasing the Great Rain Stone##12704 |daily
		.' Tell him you need to find Lafoo
		.collect Lafoo's Bug Bag##38622 |q 12704
	step
		goto 53.3,56.5
		.talk Oracle Soo-nee##29006
		.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		..accept A Cleansing Song##12735 |daily |or
		..accept Song of Fecundity##12737 |daily |or
		..accept Song of Reflection##12736 |daily |or
		..accept Song of Wind and Water##12726 |daily |or
	step
		goto 54.2,53.8
		.talk Oracle Soo-dow##29149
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept Mastery of the Crystals##12761 |daily |or
		..accept Power of the Great Ones##12762 |daily |or
		..accept Will of the Titans##12705 |daily |or
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
		.talk Lightningcaller Soo-met##28107
		..turnin Mastery of the Crystals##12761
		..turnin Power of the Great Ones##12762
		..turnin Will of the Titans##12705
	step
		goto 53.3,56.5
		.talk Oracle Soo-nee##29006
		.' You will only be able to accept, and turn in, 1 of these 4 daily quests per day:
		..turnin A Cleansing Song##12735
		..turnin Song of Fecundity##12737
		..turnin Song of Reflection##12736
		..turnin Song of Wind and Water##12726
	step
		goto 54.6,56.4
		.talk High-Oracle Soo-say##28027
		..turnin Appeasing the Great Rain Stone##12704
]])

ZygorGuidesViewer:RegisterInclude("CleansingDrakTharon",[[
	step
		goto Grizzly Hills,16.2,47.6
		.talk Samir##26424
		..accept Filling the Cages##11984
	step
		goto 16.4,48.3
		.talk Budd##26429
		..'Tell him it's time to play with the ice trolls|havebuff Budd's Attention Span|c
	step
		goto 13.2,60.5
		.' Use Budd's pet bar skill Tag Troll to have him stun a troll|petaction Tag Troll
		.' Use your Bounty Hunter's Cage on the stunned troll|use Bounty Hunter's Cage##35736
		.' Capture a Live Ice Troll|goal Captured Live Ice Troll|q 11984/1
	step
		goto 16.2,47.6
		.talk Samir##26424
		..turnin Filling the Cages##11984
	step
		goto 16.4,47.8
		.talk Drakuru##26423
		..accept Truce?##11989
	step
		goto 16.5,47.8
		.' Click the Dull Carving Knife|tip It's a knife stuck in the side of this tree trunk.
		.collect Dull Carving Knife##38083|q 11989
	step
		goto 16.4,47.8
		.' Use your Dull Carving Knife next to the yellow cage|use Dull Carving Knife##38083
		.talk Drakuru##26423
		..'Shake his hand
		.' Make a Blood Pact With Drakuru|goal Blood Pact With Drakuru|q 11989/1
	step
		goto 16.4,47.8
		.talk Drakuru##26423
		..turnin Truce?##11989
		..accept Vial of Visions##11990
	step
		goto 16,47.8
		.talk Ameenah##26474
		.buy 1 Crystal Vial |q 11990/1
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
		.talk Drakuru##26423
		..turnin Vial of Visions##11990
		..accept Subject to Interpretation##11991
	step
		goto 13.3,58.5
		.kill trolls|n
		.collect 5 Frozen Mojo##35799|q 11991
	step
		goto 13.2,60.9
		.' Use Drakuru's Elixir next to Drakuru's Brazier|use Drakuru's Elixir##35797
		.talk Image of Drakuru##26500
		..turnin Subject to Interpretation##11991
		..accept Sacrifices Must be Made##12007
	step
		goto 14.5,38
		.from Warlord Zim'bo##26544
		.collect Zim'bo's Mojo##35836|q 12007
	step
		'Go up the huge stairs to 17.9,36.5|goto 17.9,36.5
		.' Click the Seer of Zeb'Halak statue|tip It's a huge blue glowing statue at the top of the stairs.
		.get Eye of the Prophets|q 12007/1
	step
		goto 17.4,36.4
		.' Use Drakuru's Elixir next to Drakuru's Brazier|use Drakuru's Elixir##35797
		.talk Image of Drakuru##26543
		..turnin Sacrifices Must be Made##12007
		..accept Heart of the Ancients##12042
	step
		goto 36.9,32.4
		.' Go on top of the control station to 36.9,32.4
		.' Click the Heart of the Ancients|tip It's a small pointed stone laying on the floor at the top of this control station, in a small room, next to a dead goblin.
		..turnin Heart of the Ancients##12042
		..accept My Heart is in Your Hands##12802
	step
		goto 44.2,30.4
		.kill Drakkari Defenders|n
		.collect 5 Desperate Mojo##36743|q 12802
	step
		goto 45.0,28.4
		.' Use Drakuru's Elixir next to Drakuru's Brazier|use Drakuru's Elixir##35797
		.talk Image of Drakuru##26701
		..turnin My Heart is in Your Hands##12802
		..accept Voices From the Dust##12068
	step
		goto 70.5,27.4
		.from Drakkari Protector##26797+, Drakkari Oracle##26795+
		.collect 5 Sacred Mojo##36758|q 12068
	step
		'Inside the crypt, go to 69.4,18.2|goto 69.4,18.2
		.' Click the Drakkari Tablets|tip It's a big stone tablet in the corner of a small room inside this underground crypt.
		.get Drakkari Tablets|q 12068/1
	step
		goto 71.7,26.2
		.' Use Drakuru's Elixir next to Drakuru's Brazier|use Drakuru's Elixir##35797
		.talk Image of Drakuru##26787
		..turnin Voices From the Dust##12068
		..accept Cleansing Drak'Tharon##12238
	step
		goto Grizzly Hills,17.4,21.2 |n
		.' Go through the swirling portal into the instance|goto Drak'Tharon Keep
	step
		.from Drakkari Shaman##26639+, Drakarri Guardian##26620+, Drakarri Commander##27431+ |q 12238
		.collect 5 Enduring Mojo##38303
	step
		.kill The Prophet Tharon'ja##26632|tip He's at the end of the instance |n
		.' Go behind the boss to Drakuru's Brazier.
		.' Use Drakuru's Elixir next to Drakuru's Brazier|use Drakuru's Elixir##35797|tip It's a square bowl at the top of the stairs.
		.talk Drakuru##28016
		.turnin Cleansing Drak'Tharon##12238
]])

ZygorGuidesViewer:RegisterInclude("BetrayalDrakuru",[[
	step
		goto Zul'Drak,15.5,69.8
		.from Withered Trolls
		.collect Writhing Choker##38673|n
		.use Writhing Choker##38673
		..accept Darkness Calling##12633
	step
		goto 14.1,73.8
		.talk Stefan Vadu##28518
		..turnin Darkness Calling##12633
		..accept Close Call##12638
	step
		goto 14.3,74
		.talk Bloodrose Datura##28532
		.' Tell her Stefan said she would demonstrate the item's purpose
		.' Expose the Choker's Purpose|goal Choker's Purpose Exposed|q 12638/1
	step
		goto 14.1,73.8
		.talk Stefan Vadu##28518
		..turnin Close Call##12638
		..accept Silver Lining##12643
	step
		goto 19.9,73.5
		.kill Putrid Abominations|n
		.get 5 Putrid Abomination Guts|q 12643/1 |or
		.' Click the Gooey Ghoul Drool on the ground|tip They look like jelly blobs on the ground around this area.
		.get 5 Gooey Ghoul Drool|q 12643/2
	step
		goto 14.1,73.8
		.talk Stefan Vadu##28518
		..turnin Silver Lining##12643
		..accept Suit Up!##12649
	step
		goto 19.9,75.5
		.' Use the Ensorcelled Choker to wear a ghoul costume|use Ensorcelled Choker##38699
		.talk Gristlegut##28589
		..buy 1 Bitter Plasma|q 12649/1
	step
		goto 14.1,73.8
		.talk Stefan Vadu##28518
		 .' You will only be able to turn in 1 of these quests
		..turnin Suit Up!##12649
		..accept Infiltrating Voltarus##12661
	step
		goto 28.4,44.9
		.' Use your Ensorcelled Choker to become a ghoul|use Ensorcelled Choker##38699
		.' Stand on this green circle
		.'Get teleported up to Overlord Drakuru|goto Zul'Drak,28.1,45.2,0.5|noway|c
	step
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..accept Reunited##12663
	step
		goto 29.9,47.8
		.talk Gorebag##28666
		.' Go on the tour of Zul'Drak
		.' Complete the tour of Zul'Drak|goal Tour of Zul'Drak complete|q 12663/1
	step
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..turnin Reunited##112663
		.' Complete Overlord Drakuru's task|goal 1 Overlord Drakuru's task complete|q 12661/1|c
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.1,44.9,0.5|noway|c
	step
		'Use Stefan's Horn in your bags|use Stefan's Horn##41390
		.talk Stefan Vadu##28518
		..turnin Infiltrating Voltarus##12661
		..accept So Far, So Bad##12669
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.5|noway|c
	step
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..accept It Rolls Downhill##12673
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.5|noway|c
	step
		goto 27.2,45.1
		.' Use your Scepter of Suggestion on Blight Geists|use Scepter of Suggestion##39157
		.' Use the Harvest Blight Crystal ability near Crystallized Blight|petaction Harvest Blight Crystal|tip The Crystallized Blight look like orange crystals on the ground around this area.
		.' Follow the Blight Geists back to the teleport pad
		.' Collect 7 Blight Crystals|goal 7 Blight Crystals collected|q 12673/1
	step
		goto 26.8,47
		.' Use your Diluting Additive next to the big cauldron 5 times|use Diluting Additive##39154|tip It's a big cauldron on the back of this cart vehicle thing. Several Blightguards may pop out for you to fight.  Wait about a minute and use your Diluting Additive next to the cauldron again.  Keep repeating this process.
		.' Dilute the Cauldron 5 times|goal 5 Blight Cauldrons diluted|q 12669/2
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.5|noway|c
	step
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..turnin It Rolls Downhill##12673
		.' Complete Drakuru's task|goal Drakuru's task complete|q 12669/1
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.5|noway|c
	step
		'Use Stefan's Horn in your bags|use Stefan's Horn##41390
		.talk Stefan Vadu##28518
		..turnin So Far, So Bad##12669
		..accept Hazardous Materials##12677
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.5|noway|c
	step
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..accept Zero Tolerance##12686
	step
		goto 27.1,43.9
		.' Click the Harvested Blight Crystal crates|tip They look like big wooden crates around this area in the halls and rooms.
		.get 5 Harvested Blight Crystal|q 12677/2
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.5|noway|c
	step
		goto 29.7,49.6
		.' Use your Scepter of Empowerment on a Servant of Drakaru|use Scepter of Empowerment##39206
		.' Take control of a Servant of Drakaru
		.' Use the abilities on your Servant of Drakaru's pet bar to fight Darmuk at [30.4,51.5]|n
		.' Kill Darmuk|goal Darmuk Slain|q 12686/1|tip He's a huge undead mob walking around on this platform.
	step
		ding 76
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.5|noway|c
	step
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..turnin Zero Tolerance##12686
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.5|noway|c
	step
		'Use Stefan's Horn in your bags|use Stefan's Horn##41390
		.talk Stefan Vadu##28518
		..turnin Hazardous Materials##12677
		..accept Sabotage##12676
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.5|noway|c
	step
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..accept Fuel for the Fire##12690
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.5|noway|c
	step
		goto 32.1,40.6
		.' Use your Scepter of Command on a Bloated Abomination|use Scepter of Command##39238
		.' Take control of the Bloated Abomination
		.' Go up the hill
		.' Send your Bloated Abomination into groups of Drakkari Skullcrushers
		.' Use the Burst at the Seams ability on your pet hotbar|petaction Burst at the Seams
		.' Kill 60 Drakkari Skullcrushers|goal 60 Drakkari Skullcrushers Slain|q 12690/1
		.' Lure 3 Drakkari Chieftains|goal 3 Drakkari Chieftain Lured|q 12690/2
	step
		goto 30.6,45.3
		.' Use your Explosive Charges next to Scourgewagons|use Explosive Charges##39165|tip They look like small catapult carts.
		.' Destroy 5 Scourgewagons|goal 5 Scourgewagons destroyed|q 12676/1
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Get teleported up to Overlord Drakuru|goto 28.1,45.2,0.5|noway|c
	step
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..turnin Fuel for the Fire##12690
		..accept Disclosure##12710
		.' Complete Drakuru's task|goal Drakuru's task complete|q 12676/2
	step
		goto 28.4,44.9
		.' Stand on this blue circle on the small platform above the green circle
		.' Teleport up to Drakuru's upper chamber|goto 27.4,42.5,0.5|noway|c
	step
		goto 27.2,42.3
		.' Click the Musty Coffin|tip It's a brown coffin.
		.' Explore Drakuru's upper chamber|goal Drakuru's upper chamber explored|q 12710/1
	step
		goto 28.4,44.9|n
		.' Stand on this green circle to go to the bottom level of Voltarus|goto 28.1,45.2,0.5|noway|c
	step
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		..turnin Disclosure##12710
		.' Learn Drakuru's secret|goal Learn Drakuru's secret|q 12676/3
	step
		goto 28.4,44.9
		.' Stand on this green circle
		.' Teleport back down to the ground|goto 28.0,44.9,0.5|noway|c
	step
		'Use Stefan's Horn in your bags|use Stefan's Horn##41390
		.talk Stefan Vadu##28518
		..turnin Sabotage##12676
		..accept Betrayal##12713
	step
		goto 28.4,44.9|n
		.' Stand on this green circle to go to the bottom level of Voltarus|goto 28.1,45.2,0.5|noway|c
	step
		goto 27.1,46.2
		.talk Overlord Drakuru##28503
		.' Tell him you're ready to accompany him. |goto 28.3,45.3 |noway |c
	step
		.' Use your Scepter of Domination on Blightblood Trolls |use Scepter of Domination##39664
		.' Use the following abilities when they are off cooldown:
		.' Powerful Strike |use spell##54135
		.' Concussion Blow |use spell##54132
		.' Blightblood Infusion |use spell##54136
		.' Use the Scepter on another Blightblood Troll if yours dies.
		.collect 1 Drakuru's Skull##40425 |q 12713/1
]])

