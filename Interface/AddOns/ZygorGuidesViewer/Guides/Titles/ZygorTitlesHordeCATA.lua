local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("TitlesH") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Azeroth Titles\\Ambassador, Home Cities Reputation",[[
author support@zygorguides.com
step
label	"menu"
.' This guide will show you how to become exalted the fastest way, with all your Hometown Factions.
.' Below you will see which faction you are Exalted with and which ones you are not:
.' Exalted with Orgrimmar |condition rep('Orgrimmar')==Exalted
.' Click to use the Orgrimmar rep Guide |confirm always |next "org" |only if rep ('Orgrimmar')<=Revered
.' or
.' Exalted with Thunder Bluff |condition rep('Thunder Bluff')==Exalted
.' Click to use the Thunder Bluff rep Guide |confirm always |next "tb" |only if rep ('Thunder Bluff')<=Revered
.' or
.' Exalted with Undercity |condition rep('Undercity')==Exalted
.' Click to use the Undercity rep Guide |confirm always |next "uc" |only if rep ('Undercity')<=Revered
.' or
.' Exalted with Darkspear Trolls |condition rep('Darkspear Trolls')==Exalted
.' Click to use the Darkspear Trolls Rep Guide |confirm always |next "troll" |only if rep ('Darkspear Trolls')<Revered
.' or
.' Exalted with Silvermoon City |condition rep('Silvermoon City')==Exalted
.' Click to use Silvermoon City rep Guide |confirm always |next "belf" |only if rep('Silvermoon City')<=Revered
.' or
.' Exalted with Bilgewater Cartel |condition rep('Bilgewater Cartel')==Exalted
.' Click to use the Bilgewater Cartel rep Guide |confirm always |next "bilge" |only if rep ('Bilgewater Cartel')<=Revered
|next "end" |only if achieved(762)
step
label	"org"
goto Orgrimmar,50.4,58.4
.talk 50488
.buy Orgrimmar Tabard##45581
step
.' Equip your Orgrimmar Tabard |equipped Orgrimmar Tabard##45581 |use Orgrimmar Tabard##45581
.' You can run any dungeon that grants experience to gain reputation for Orgrimmar.
.' Friendly with Orgrimmar |condition rep('Orgrimmar')>=Friendly
.' Honored with Orgrimmar |condition rep('Orgrimmar')>=Honored
.' Revered with Orgrimmar |condition rep('Orgrimmar')>=Revered
.' Become Exalted with Orgrimmar |condition rep('Orgrimmar')==Exalted
|next "menu"
step
label	"tb"
'Skipping next part of guide |next "+tb_tab" |only if step:Find("+tb_buy"):IsComplete()
'Proceeding next step |next |only if default
step
|fly Thunder Bluff
step
label	"tb_buy"
goto Thunder Bluff,47.0,50.2
.talk 50483
.buy Thunder Bluff Tabard##45584
step
label	"tb_tab"
.' Equip your Thunder Bluff Tabard |equipped Thunder Bluff Tabard##45584 |use Thunder Bluff Tabard##45584
.' You can run any dungeon that grants experience to gain reputation for Thunder Bluff.
.' Friendly with Thunder Bluff |condition rep('Thunder Bluff')>=Friendly
.' Honored with Thunder Bluff |condition rep('Thunder Bluff')>=Honored
.' Revered with Thunder Bluff |condition rep('Thunder Bluff')>=Revered
.' Become Exalted with Thunder Bluff |condition rep('Thunder Bluff')==Exalted
|next "menu"
step
label	"belf"
'Skipping next part of guide |next "+belf_tab" |only if step:Find("+belf_buy"):IsComplete()
'Proceeding next step |next |only if default
step
#include "rideto_tirisfal"
step
goto Undercity,54.9,11.3
.click Orb of Translocation##7161
.' Teleport to Silvermoon City |goto Silvermoon City |noway |c
step
label	"belf_buy"
goto Eversong Woods,54.3,50.8
.talk 50484
.buy Silvermoon City Tabard##45585
step
label	"belf_tab"
.' Equip your Silvermoon City Tabard |equipped Silvermoon City Tabard##45585 |use Silvermoon City Tabard##45585
.' You can run any dungeon that grants experience to gain reputation for Silvermoon City.
.' Friendly with Silvermoon City |condition rep('Silvermoon City')>=Friendly
.' Honored with Silvermoon City |condition rep('Silvermoon City')>=Honored
.' Revered with Silvermoon City |condition rep('Silvermoon City')>=Revered
.' Become Exalted with Silvermoon City |condition rep('Silvermoon City')==Exalted
|next "menu"
step
label	"uc"
'Skipping next part of guide |next "+uc_tab" |only if step:Find("+uc_buy"):IsComplete()
'Proceeding next step |next |only if default
step
#include "rideto_tirisfal"
step
label	"uc_buy"
goto Undercity,63.0,49.1
.talk 50304
.buy Undercity Tabard##45583
step
label	"uc_tab"
.' Equip your Undercity Tabard |equipped Undercity Tabard##45583 |use Undercity Tabard##45583
.' You can run any dungeon that grants experience to gain reputation for Undercity.
.' Friendly with Undercity |condition rep('Undercity')>=Friendly
.' Honored with Undercity |condition rep('Undercity')>=Honored
.' Revered with Undercity |condition rep('Undercity')>=Revered
.' Become Exalted with Undercity |condition rep('Undercity')==Exalted
|next "menu"
step
label	"troll"
'Skipping next part of guide |next "+troll_tab" |only if step:Find("+troll_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"troll_buy"
goto Orgrimmar,50.0,58.1
.talk 50477
.buy Darkspear Tabard##45582
step
label	"troll_tab"
.' Equip your Darkspear Trolls Tabard |equipped Darkspear Tabard##45582 |use Darkspear Tabard##45582
.' You can run any dungeon that grants experience to gain reputation for Darkspear Trolls.
.' Friendly with Darkspear Trolls |condition rep('Darkspear Trolls')>=Friendly
.' Honored with Darkspear Trolls |condition rep('Darkspear Trolls')>=Honored
.' Revered with Darkspear Trolls |condition rep('Darkspear Trolls')>=Revered
.' Become Exalted with Darkspear Trolls |condition rep('Darkspear Trolls')==Exalted
|next "menu"
step
label	"bilge"
'Skipping next part of guide |next "+bilge_tab" |only if step:Find("+bilge_buy"):IsComplete()
'Proceeding next step |next |only if default
step
label	"bilge_buy"
goto Orgrimmar,50.1,58.6
.talk 50323
.buy Bilgewater Cartel Tabard##64884
step
label	"bilge_tab"
.' Equip your Bilgewater Cartel Tabard |equipped Bilgewater Cartel Tabard##64884 |use Bilgewater Cartel Tabard##64884
.' You can run any dungeon that grants experience to gain reputation for Bilgewater Cartel.
.' Friendly with Bilgewater Cartel |condition rep('Bilgewater Cartel')>=Friendly
.' Honored with Bilgewater Cartel |condition rep('Bilgewater Cartel')>=Honored
.' Revered with Bilgewater Cartel |condition rep('Bilgewater Cartel')>=Revered
.' Become Exalted with Bilgewater Cartel |condition rep('Bilgewater Cartel')==Exalted
|next "menu"
step
label	"end"
.' Congratulations, you have earned the Title _Ambassador_! |achieve 948
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Azeroth Titles\\Bloodsail Admiral",[[
description This Guide will help you get Reputation to earn the title _Bloodsail Admiral_.
author support@zygorguides.com
step
label	"menu"
.' This guide will show you how to earn the _Bloodsail Admiral_ the quickest way possible.
.' Honored with Bloodsail Buccaneers |condition rep('Bloodsail Buccaneeers')>=Honored
.' Click to use the Buccaneers rep Guide |confirm always |next "blood_grind"
.' or |only if not completedq(26679)
.' You can click here to run the pirate questline and farm Booty Bay NPC's without level 85 guards attacking you. |only if not completedq(26679)
.' Click here if you would rather run the questline and farm Booty Bay while in a phased zone |confirm always |only if not completedq(26679)
step
label	"blood_quest"
goto The Cape of Stranglethorn,42.1,73.4
.talk 2501
..accept 26593
step
goto 50.4,54.6
.from Elder Mistvale Gorilla##1557+
.get 5 Mistvale Giblets |q 26593/1
step
goto The Cape of Stranglethorn,40.5,67.7
.talk 2502
..turnin 26593
..accept 26594
step
goto 42.1,73.4
.talk 2501
..turnin 26594
..accept 26595
step
goto The Cape of Stranglethorn,56.6,57.6
.from Freewheelin' Juntz Fitztittle##43376
.get Fitztittle's Ratcheting Torque Wrench |q 26595/2
step
goto The Cape of Stranglethorn 57.0,54.4
.click Half-Buried Bottle##204406
..accept 26603
step
goto 57.8,48.6
.talk 43377
.' Tell him, So you kno why I'm here then. all right Midriff, pay up.
.from Ephram "Midriff" Moonfall##43377
.get Ephram's Jeweled Mirror |q 26595/3
step
goto The Cape of Stranglethorn,59.7,49.2
.from Maury "Club Foot" Wilkins##2535
.get Maury's Clubbed Foot |q 26595/1
step
goto The Cape of Stranglethorn 59.4,79.1
.talk 2634
..turnin 26603
..accept 26604
step
goto The Cape of Stranglethorn 58.4,80.4
.from Jaguero Stalker##2522+ |q 26604 |tip They are stealthed around this area, so you may need to search a bit.
step
goto The Cape of Stranglethorn 59.4,79.1
.talk 2634
..turnin 26604
..accept 26605
step
goto The Cape of Stranglethorn 62.6,78.2
.from Skymane Gorilla##2521+
.get Poobah's Tiara##59057 |q 26605/1
.get Poobah's Scepter##59058 |q 26605/2
.get Poobah's Slippers##59059 |q 26605/3
.get Poobah's Diary##59060 |q 26605/4
step
goto The Cape of Stranglethorn 59.4,79.1
.talk 2634
..turnin 26605
..accept 26606
step
goto The Cape of Stranglethorn 63.4,83.2
.from King Mukla##1559+
..get Shackle Key |q 26606/1
step
goto The Cape of Stranglethorn 59.4,79.1
.talk 2634
..turnin 26606
step
goto 42.1,73.4
.talk 2501
..turnin 26595
step
goto 42.6,72.0
.talk 2490
..accept 26609
step
goto 41.3,61.2
.click Bloodsail Correspondence##183
..turnin 26609
..accept 26610
step
goto 42.6,72.0
.talk 2490
..turnin 26610
..accept 26611
step
goto 41.2,73.1
.talk 2496
..turnin 26611
..accept 26612
step
goto 45.0,79.7
.click Bloodsail Orders##220
.get Bloodsail Orders##220 |q 26612/4
step
goto 40.7,82.2
.click Bloodsail Orders##220
.get Bloodsail Charts |q 26612/3
.kill 8 Bloodsail Sea Dog##1565 |q 26612/1
.kill 8 Bloodsail Elder Magus##1653+ |q 26612/2
step
goto 41.2,73.1
.talk 2496
..turnin 26612
..accept 26624
step
goto 43.8,56.5
.talk 43504
..turnin 26624
..accept 26629
step
goto 41.1,73.3
.talk 2487
..accept 26630
step
goto 43.3,71.7
.talk 43505 |tip Upstairs in this store
.' Tell Bossy _Moo_
.' <Do the Deed.>  :'(
'|get Cow Head |q 26630/3
step
goto 42.6,69.1
.talk 2663
.' Tell him _I need an extra-large pirate hat._
.get Oversized Pirate Hat |q 26630/2
step
goto 41.1,73.3
.talk 2487
.' Tell him _Here' the head and the hat, Fleet Master._
.' and _You're the boss._
.' Return both items to Fleet Master Seahorn |q 26630/1
..turnin 26630
.get Head of Fleet Master Seahorn |q 26629/1
step
goto The Cape of Stranglethorn,43.8,56.5
.talk 43504
..turnin 26629
..accept 26631
step
goto 44.4,91.5
.talk 2548
..turnin 26631
..accept 26633
step
.' Go up to the ship deck and use a mop to swob a deck
.click Swabbie's Mop##09742
.clicknpc Deck Stains##43511
.' Swab the decks |q 26633/1 |tip If you have trouble swabbing the decks, you can pay "Pretty Boy" Duncan, on the deck of the ship, 1 gold and he will do it for you.
step
goto 44.5,91.6
.talk 2548
..turnin 26633
step
goto 44.5,93.0
.talk 2545
..accept 26635
step
goto 47.3,95.5
.click Bloodsail Cannonball##153+
.get 6 Bloodsail Cannonball |q 26635/1
step
goto 44.5,92.9
.talk 2545
..turnin 26635
step
goto 44.5,91.9
.talk 2549
..accept 26634
step
goto 41.9,83.0
.click Lime Crate##2350+
.get 5 Bushel of Limes |q 26634/1 |tip You will get attacked by a lime thief when you loot these.
.' You can find more crates around: [40.3,82.9]
.' And [44.9,79.9]
step
goto 44.5,91.9
.talk 2549
..turnin 26634
step
goto 44.5,91.6
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
goto 46.9,94.2
.clicknpc Ol' Blasty##43562 |invehicle |c |q 26647
.' Use your abilities to shoot the target dummy in the boat
.' Hit Smilin' Timmy Sticks with a cannoball 5 times |q 26647/1
step
.' Click the Red Arrow on your action bar to exit the Cannon |outvehicle |c |q 26647
step
goto 46.6,95.0
.talk 2547
..turnin 26647
..accept 26649
step
goto 46.8,95.1
.talk 43556
..accept 26648
step
goto 45.9,89.7
.talk 43605
..' Tell him ahoy matey!
.' Use the abilities on your hotbar to shoot at the Venture Co. Oil Workers |tip They look like goblins working on the metal machines.
.kill 75 Venture Co. Oil Worker##43596+ |q 26649/1
step
goto 46.6,95.0
.talk 2547
..turnin 26649
step
goto 56.5,87.1
.' Use Dead-Eye's Flare Gun to reveal the ninja's around this area |use Dead-Eye's Flare Gun##59226
.kill 15 Ninja##43553+ |q 26648/1
.' Click the Complete Quest box in the top right of your screen
.turnin 26648
step
goto 46.7,95.3
.talk 2546
..accept 26650
step
goto 50.3,91.4
.' Go to the room below the stairs on this boat
.click Captain Stillwater's Charts##222
..turnin 26650
..accept 26662
..accept 26663
..accept 26664
step
goto 51.3,91.4
.talk 43659
.' Tell him, _Long John Copper, is the Brashtide Crew ready for battle_ |tip He's standing in the middle of the boat.
.' Speak with Long John Copper |q 26662/1
step
.' Go to the lower deck of the boat
.' Talk to Bloodsail Corsair
.' Tell them _You're a mutinous dog! Draw steel!_
.kill 9 Bloodsail Corsair##43636+ |q 26664/1
.' Click the Complete Quest box in the right corner
..turnin 26664
step
goto 50.6,91.5
.click Grog Barrel##9095
.' _Nudge the cork._
.'  Sabotage the Grog |q 26663/1
step
goto 46.8,94.2
.talk 43660
.' Tell him _What can you tell me about the Brashtide Crew?_ |tip Standing on the bottom deck of the boat.
.'  Speak with Enormous Shawn Stooker |q 26662/2
step
goto 46.8,93.7
.click Gunpowder Barrel##9095
.' _Pour the water onto the gunpowder_
.'  Sabotage the Gunpowder |q 26663/2
step
goto 44.5,93.2
.talk 43661 |tip Standing in the middle of the boat
.' Tell her _You know the battle plan, right?_
.' Speak with Wailing Mary Smitts |q 26662/3
.' Click the Complete Quest box in the right corner
..turnin 26662
step
goto 44.6,92.8
.click Cannonball Crate##9651
.' _Grease the Cannonballs_
.' Sabotage the Cannonballs |q 26663/3
.' Click the Complete Quest box in the right corner
..turnin 26663
..accept 26665
step
goto 41.2,73.1
.talk 2496
..turnin 26665
..accept 26678
step
goto 40.6,73.2
.click Barrel of Doublerum##32
.' Just down the stairs in the room on the right
.get Barrel of Doublerum |q 26678/1
..turnin 26678
..accept 26679
step
.' _WARNING WARNING WARNING_
.' DO NOT TURN IN THIS QUEST
.' You can kill _Booty Bay citizens_ and gain repuation with the Bloodsail Buccaneers |tip You will lose reputation with ALL Steemwheedle Cartel if you do this
.' Click here to gain reputation with the Bloodsail Buccaneers |confirm always |next "Bloodsail_grind"
step
label	"Bloodsail_grind"
.' Kill any Booty Bay Citizen in this area to gain reputation with Bloodsaid Buccaneers |tip To attack them, open your Factions list, scroll down and find Booty Bay. Click on Booty Bay and check the At War box.
.' In order to accept the quest needed for the title "Bloodsail Admiral" you must be Friendly with the Bloodsail Buccaneers and Hated with Booty Bay.
.' Hated with Bloodsail |condition rep('Bloodsail Buccaneers')>=Hated |only if rep('Bloodsail Buccaneers')<=Hated
.' Hostile with Bloodsail |condition rep('Bloodsail Buccaneers')>=Hostile |only if rep('Bloodsail Buccaneers')<=Hostile
.' Unfriendly with Bloodsail |condition rep('Bloodsail Buccaneers')>=Unfriendly |only if rep('Bloodsail Buccaneers')<=Unfriendly
.' Neutral with Bloodsail |condition rep('Bloodsail Buccaneers')>=Neutral |only if rep('Bloodsail Buccaneers')<=Neutral
.' Friendly with Bloodsail |condition rep('Bloodsail Buccaneers')>=Friendly
.' Hated with Booty Bay |condition rep('Booty Bay')==Hated
step
goto 44.5,93.0
.talk 2545
..accept 1036
step
goto 46.7,95.3
.talk 2546
..turnin 1036
..accept 4621
step
goto 41.6,73.0
.kill Fleet Master Seahorn##2487 |q 4621/2
step
goto 41.1,73.1
.kill Baron Revilgaz##2496 |q 4621/1
step
goto 46.7,95.3
.talk 2546
..turnin 4621
step
'Congratulations! You have earned the title Bloodsail Admiral!
.' Click here to farm your rep with Booty Bay again. |tip Any Steamwheedle Cartel town will be hostile toward you. Farming your reputation back up now would save you from being attacked when you enter one of these towns. |confirm
step
goto 41.3,71.2
.' You can stay here and grind reputation with Booty Bay by killing Bloodsail Corsair
.from Bloodsail Corsair##43726+
.' Hated with Booty Bay |condition rep('Booty Bay')>=Hated |only if rep('Booty Bay')<=Hated
.' Hostile with Booty Bay |condition rep('Booty Bay')>=Hostile |only if rep('Booty Bay')<=Hostile
.' Unfriendly with Booty Bay |condition rep('Booty Bay')>=Unfriendly |only if rep('Booty Bay')<=Unfriendly
.' Neutral with Booty Bay |condition rep('Booty Bay')>=Neutral |only if rep('Booty Bay')<=Neutral
.' Friendly with Booty Bay |condition rep('Booty Bay')>=Friendly |only if rep('Booty Bay')<=Friendly
.' Honored with Booty Bay |condition rep('Booty Bay')>=Honored |only if rep('Booty Bay')<=Honored
.' Revered with Booty Bay |condition rep('Booty Bay')>=Revered |only if rep('Booty Bay')<=Revered
.' Exalted with Booty Bay |condition rep('Booty Bay')>=Exalted |only if rep('Booty Bay')<=Exalted
.' If you are at least Neutral with Booty Bay you can begin doing quests in this Area to gain rep faster.
.' Click here to start questing |confirm always |next "booty_quest" |only if rep('Booty Bay')>=Neutral
|next "end" |only if rep('Booty Bay')<=Unfriendly
step
label	"booty_quest"
goto 41.1,73.1
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
.kill 10 Brashtide Raider##43716+ |q 26699/1
step
goto 41.5,73.0
.click Blackwater Rope##7538
.' Swing over to the boat |goto 41.0,70.7,0.5 |noway |c
step
goto 41.4,71.0
.kill 8 Bloodsail Corsair##43726+ |q 26700/1
step
goto 41.1,70.9
.click Blackwater Rope##7538
.' Swing to the docks |goto 41.5,73.0,0.5 |noway |c
step
goto 41.1,73.2
.talk 2496
..turnin 26699
..turnin 26700
..turnin 26695
..accept 26697
step
goto The Cape of Stranglethorn,40.4,73.4
.talk 737
.' Tell him _Sorry, not here to chat. I need a wind rider_ |invehicle |noway |c
step
.' Use the _Throw Handbombs_ key on your action bar
.kill 85 Brashtide Crewman##43717+ |q 26697/1
.' Destoy 6 Brashtide Attack Boats |q 26697/2 |modelnpc 43790
.' Use your _Return to Booty Bay_ button |outvehicle |noway |c
step
goto 41.1,73.2
.talk 2496
..turnin 26697
..accept 26703
step
goto 35.7,66.8
.kill Fleet Master Firallon##2546 |q 26703/1
step
goto 41.2,73.1
.talk 2496
..turnin 26703
|next "end"
step
label	"blood_grind"
.' You will need a full group of 4 or 5 people to be able to reasonably farm Booty Bay for Bloodsail Reputation.
.' Once you have acquired a group, including a healer and tank, you can proceed
.' Click to continue |confirm always
step
#include "rideto_bootybay"
step
goto 42.5,67.4
.' We suggest starting in this tunnel so you do not get overwhelmed by guards.
.' Set your Booty Bay social bar to _At War_ and begin killing Booty Bay Bruisers
.from Booty Bay Bruiser##4624+
.' You will lose reputation with the Steemwheedle Cartel but you will gain 5 points of reputation with each kill
.' Hated with Bloodsail |condition rep('Bloodsail Buccaneers')>=Hated |only if rep('Bloodsail Buccaneers')<=Hated
.' Hostile with Bloodsail |condition rep('Bloodsail Buccaneers')>=Hostile |only if rep('Bloodsail Buccaneers')<=Hostile
.' Unfriendly with Bloodsail |condition rep('Bloodsail Buccaneers')>=Unfriendly |only if rep('Bloodsail Buccaneers')<=Unfriendly
.' Neutral with Bloodsail |condition rep('Bloodsail Buccaneers')>=Neutral |only if rep('Bloodsail Buccaneers')<=Neutral
.' Friendly with Bloodsail |condition rep('Bloodsail Buccaneers')>=Friendly |only if rep('Bloodsail Buccaneers')<=Friendly
.' Honored with Bloodsail |condition rep('Bloodsail Buccaneers')>=Honored
step
label	"end"
.' End of Guide
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Azeroth Titles\\Argent Champion\\Argent Dawn Reputation",[[
description This guide will show you how to earn the Argent Champion Title.
author support@zygorguides.com
#include "H_Eastern_Plaguelands_Argent_Dawn"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Azeroth Titles\\Argent Champion\\Argent Crusade Reputation",[[
description This guide will show you how to earn the Argent Champion Title.
author support@zygorguides.com
#include "H_Icecrown_Argent_Crusade_Rep"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Azeroth Titles\\Jenkins",[[
description This guide will show you how to earn the Jenkins Title.
author support@zygorguides.com
step
#include "rideto_stranglethorn"
step
|fly Flamestar Post
step
goto 21.0,38.0 |n
.' Enter Blackrock Mountain here |goto 21.0,38.0,0.5 |noway |c
step
goto 24.8,30.1 |n
.' Follow this hallway, up and to the right, to Blackrock Spire |goto 24.8,30.1,0.5 |noway |c
step
goto 24.3,25.7 |n
.' Enter Blackrock Spire here | goto 24.3,25.7,0.5 |noway |c
step
.' Follow the ramp up and to the left and enter the hallway _Dragonspire Hall_
.' Kill all the mobs in the room to the left, including all the little side rooms
.' Go through the door at the end of the room once you have killed all mobs here
|confirm
step
Run to the left side of the room _Hall of Binding_
.click Blackrock Altar##04076
.kill Pyroguard Emberseer##9816 |n
|confirm
step
'Continue through the next door into _The Rookery_
.kill 50 Rookery Whelp##10161+ |n
.' Earn the Achievement Leeeeeeeeeeeroy! |achieve 2188
step
'Congratulations! You have earned the Title _Jenkins_!!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Northrend Titles\\Crusader, Home Cities Titles\\Orc Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Orc race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
description in order to be able to complete this guide section.
description You cannot complete this section if you are an Orc.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are an Orc.
|confirm always
step
goto Icecrown,76.5,24.6
.talk 33361
..accept 13707
..turnin 13707
..accept 13697
step
goto 76.5,24.6
.talk 33361
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13762 |daily |or
..accept 13763 |daily |or
..accept 13764 |daily |or
step
goto 76.5,24.5
.talk 33405
..accept 13765 |daily
step
goto 76.4,24.6
.talk 33544
..accept 13767 |daily
..accept 13856 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13762/1
step
goto Icecrown,69.1,76.2
.click Winter Hyacinth##3231
.collect 4 Winter Hyacinth##45000 |q 13763
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.click Blade of Drak'Mar##8564
.get Blade of Drak'Mar |q 13763/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13764
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13764/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13856
step
goto 50.1,74.8
.kill 15 Boneguard Footman##33438|q 13856/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout##33550 |q 13856/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant##33429 |q 13856/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13856
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13765/1
step
goto 75.5,24.0
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13767
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13767/1
step
goto 76.5,24.6
.talk 33361
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13762
..turnin 13763
..turnin 13764
step
goto 76.5,24.5
.talk 33405
..turnin 13765
step
goto 76.4,24.6
.talk 33544
..turnin 13767
..turnin 13856
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13697/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.5,24.6
.talk 33361
..turnin 13697
..accept 13726
step
goto 72.2,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13726
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13726/1
step
goto 76.5,24.6
.talk 33361
..turnin 13726
step
'Congratulations, you are now a Champion of Orgrimmar! |tip This is the end of the Orc Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Northrend Titles\\Crusader, Home Cities Titles\\Tauren Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Tauren race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
description in order to be able to complete this guide section.
daily
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Tauren.
|confirm always
step
goto Icecrown,76.2,24.6
.talk 33403
..accept 13709
..turnin 13709
..accept 13720
step
goto 76.2,24.6
.talk 33403
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13773 |daily |or
..accept 13774 |daily |or
..accept 13775 |daily |or
step
goto 76.3,24.7
.talk 33539
..accept 13776 |daily
step
goto 76.1,24.6
.talk 33549
..accept 13777 |daily
..accept 13858 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you are glad to help
.get Ashwood Brand |q 13773/1
step
goto Icecrown,69.1,76.2
.click Winter Hyacinth##3231
.collect 4 Winter Hyacinth##45000 |q 13774
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.click Blade of Drak'Mar##8564
.get Blade of Drak'Mar |q 13774/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13775
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13775/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13858
step
goto 50.1,74.8
.kill 15 Boneguard Footman##33438|q 13858/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout##33550 |q 13858/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant##33429 |q 13858/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13858
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13776/1
step
goto 75.5,24.3
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13777
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13777/1
step
goto 76.2,24.6
.talk 33403
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13773
..turnin 13774
..turnin 13775
step
goto 76.3,24.7
.talk 33539
..turnin 13776
step
goto 76.1,24.6
.talk 33549
..turnin 13777
..turnin 13858
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13720/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.2,24.6
.talk 33403
..turnin 13720
..accept 13728
step
goto 71.9,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13728
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13728/1
step
goto 76.2,24.6
.talk 33403
..turnin 13728
step
'Congratulations, you are now a Champion of Thunder Bluff! |tip This is the end of the Tauren Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Northrend Titles\\Crusader, Home Cities Titles\\Troll Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Troll race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
description in order to be able to complete this guide section.
daily
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Troll.
|confirm always
step
goto Icecrown,76.0,24.5
.talk 33372
..accept 13708
..turnin 13708
..accept 13719
step
goto 76.0,24.5
.talk 33372
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13768 |daily |or
..accept 13769 |daily |or
..accept 13770 |daily |or
step
goto 76.0,24.6
.talk 33540
..accept 13771 |daily
step
goto 75.9,24.4
.talk 33545
..accept 13772 |daily
..accept 13857 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you are glad to help
.get Ashwood Brand |q 13768/1
step
goto Icecrown,69.1,76.2
.click Winter Hyacinth##3231
.collect 4 Winter Hyacinth##45000 |q 13769
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.click Blade of Drak'Mar##8564
.get Blade of Drak'Mar |q 13769/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13770
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13770/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13857
step
goto 50.1,74.8
.kill 15 Boneguard Footman##33438|q 13857/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout##33550 |q 13857/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant##33429 |q 13857/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13857
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13771/1
step
goto 75.6,23.8
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13772
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13772/1
step
goto 76.0,24.5
.talk 33372
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13768
..turnin 13769
..turnin 13770
step
goto 76.0,24.6
.talk 33540
..turnin 13771
step
goto 75.9,24.4
.talk 33545
..turnin 13772
..turnin 13857
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13719/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.0,24.5
.talk 33372
..turnin 13719
..accept 13727
step
goto 72.0,22.5
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13727
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13727/1
step
goto 76.0,24.5
.talk 33372
..turnin 13727
step
'Congratulations, you are now a Champion of Sen'jin! |tip This is the end of the Troll Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Northrend Titles\\Crusader, Home Cities Titles\\Blood Elf Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Blood Elf race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
description in order to be able to complete this guide section.
daily
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Blood Elf.
|confirm always
step
goto Icecrown,76.5,23.9
.talk 33379
..accept 13711
..turnin 13711
..accept 13722
step
goto 76.5,23.9
.talk 33379
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13783 |daily |or
..accept 13784 |daily |or
..accept 13785 |daily |or
step
goto 76.4,23.8
.talk 33538
..accept 13786 |daily
step
goto 76.5,23.9
.talk 33548
..accept 13787 |daily
..accept 13859 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you are glad to help
.get Ashwood Brand |q 13783/1
step
goto Icecrown,69.1,76.2
.click Winter Hyacinth##3231
.collect 4 Winter Hyacinth##45000 |q 13784
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.click Blade of Drak'Mar##8564
.get Blade of Drak'Mar |q 13784/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13785
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13785/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13859
step
goto 50.1,74.8
.kill 15 Boneguard Footman##33438|q 13859/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout##33550 |q 13859/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant##33429 |q 13859/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13859
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13786/1
step
goto 75.5,24.1
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13787
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13787/1
step
goto 76.5,23.9
.talk 33379
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13783
..turnin 13784
..turnin 13785
step
goto 76.4,23.8
.talk 33538
..turnin 13786
step
goto 76.5,23.9
.talk 33548
..turnin 13787
..turnin 13859
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13722/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.5,23.9
.talk 33379
..turnin 13722
..accept 13731
step
goto 72.2,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13731
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13731/1
step
goto 76.5,23.9
.talk 33379
..turnin 13731
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Northrend Titles\\Crusader, Home Cities Titles\\Undead Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Undead race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section
description in order to be able to complete this guide section.
daily
step
'In order to be able to do this guide section, you must have already completed the ARGENT TOURNAMENT GROUNDS DAILIES (VALIANT RANK) guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with the Darkspear Trolls, Orgrimmar, Silvermoon City, Thunder Bluff, and Undercity factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are an Undead.
|confirm always
step
goto Icecrown,76.5,24.2
.talk 33373
..accept 13710
..turnin 13710
..accept 13721
step
goto 76.5,24.2
.talk 33373
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13778 |daily |or
..accept 13779 |daily |or
..accept 13780 |daily |or
step
goto 76.6,24.1
.talk 33541
..accept 13781 |daily
step
goto 76.5,24.3
.talk 33547
..accept 13782 |daily
..accept 13860 |daily
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..' Tell her you're glad to help
.get Ashwood Brand |q 13778/1
step
goto Icecrown,69.1,76.2
.click Winter Hyacinth##3231
.collect 4 Winter Hyacinth##45000 |q 13779
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.click Blade of Drak'Mar##8564
.get Blade of Drak'Mar |q 13779/1
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13780
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13780/1
step
goto Icecrown,48.9,71.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13860
step
goto 50.1,74.8
.kill 15 Boneguard Footman##33438|q 13860/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout##33550 |q 13860/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant##33429 |q 13860/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13860
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13781/1
step
goto 75.6,23.9
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13782
step
goto 75.3,26.0
.' Talk to the riders on mounts of other Horde races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13782/1
step
goto 76.5,24.2
.talk 33373
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13778
..turnin 13779
..turnin 13780
step
goto 76.6,24.1
.talk 33541
..turnin 13781
step
goto 76.5,24.3
.talk 33547
..turnin 13782
..turnin 13860
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13721/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals.
step
goto 76.5,24.2
.talk 33373
..turnin 13721
..accept 13729
step
goto 72.1,22.4
.' Equip the Horde Lance in your bags|use Horde Lance##46070
.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13729
step
goto 68.6,21.0
.talk 33518
..' Tell him you are ready to fight!
.'An Argent Champion runs up on a horse
.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13729/1
step
goto 76.5,24.2
.talk 33373
..turnin 13729
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Northrend Titles\\Crusader, Argent Tournament Grounds Aspirant Rank Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing your race's Aspirant Rank dailies
description in order to achieve Argent Tournament Grounds Valiant Rank with your own race and eventually the Crusader Title.
daily
step
#include "Argent Tourney_Aspirant"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Northrend Titles\\Crusader, Argent Tournament Grounds Valiant Rank Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing your race's Valiant Rank dailies
description in order to achieve Argent Tournament Grounds Champion Rank with your own race.
description You must have completed the Argent Tournament Grounds Aspirant Rank Dailies guide section
description in order to have access to the quests in this guide section and gain the Crusader Title.
daily
step
#include "Argent Tourney_Valiant"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Outland Titles\\Of the Shattered Sun\\Prequest and Dailies",[[
author support@zygorguides.com
description These dailies will walk you through getting the reputation
description needed to purchase the Title of the Shattered Sun.
#include "H_SSO_PreQuest_with_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Outland Titles\\Of the Shattered Sun\\Dailies and Title",[[
author support@zygorguides.com
description These dailies will walk you through getting the reputation
description needed to purchase the Title of the Shattered Sun.
#include "H_SSO_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Miscellaneous Titles\\The Flamebreaker",[[
author support@zygorguides.com
step
'This title is earned by completing the _Veteran of the Molten Front_ achievement.
'Use the Zygor Achievement Guides to help obtain this title.
|achieve 5879
step
'Congratulations! You have earned the title "The Flamebreaker"!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Miscellaneous Titles\\Guardian of Cenarius\\Cenarion Expedition Faction",[[
description This guide will take you through the quests needed to become Exalted with Cenarion Expedition
author support@zygorguides.com
step
.' You will need to farm Cenarion Circle and Cenarion Expedition reputation.
.' Farming rep in the dungeons Slave Pens and Underbog is a good way to gain reputation up to Honored.
.' You can also kill naga or any mobs for Unidentified Plant Parts until friendly.
.' You can also grind reputation from Heroic Coilfang Instances up to Exalted if you would rather do that.
.' Coilfang Armaments drop in normal Steamvaults, as well as heroic Coilfang instances.
|confirm always
step
goto Hellfire Peninsula,47.8,65.8
.from Crust Burster##16844+ |tip They are under the jumping piles of rocks, they come up to fight when you get close to the jumping rocks.
.collect Eroded Leather Case##23338 |n
.' Click the Eroded Leather Case |use Eroded Leather Case##23338
..accept 9373
step
goto 15.7,52
.talk 16991
..turnin 9373
..accept 9372
step
goto 24.9,54.3
.from Hulking Helboar##16880+
.get 6 Helboar Blood Sample |q 9372/1
step
goto 15.7,52
.talk 16991
..turnin 9372
..accept 10255
step
goto 15.7,52
.talk 16888
..accept 10159
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
goto 10.1,53.2
.kill 8 Thornfang Ravager##19349+ |q 10159/1
.kill 8 Thornfang Venomspitter##19350+ |q 10159/2
step
goto Hellfire Peninsula,15.7,52
.talk 16888
..turnin 10159
step
goto 15.6,52.0
.talk 19293
..accept 10132
step
goto 14.7,44.6
.kill 5 Raging Colossus##19188+ |q 10132/1
.collect Crimson Crystal Shard##29476 |n
.' Click the Crimson Crystal Shard in your bags |use Crimson Crystal Shard##29476
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
step
goto Zangarmarsh,80.4,64.2
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
'Kill all mobs in this area
.get 10 Unidentified Plant Parts |q 9802/1
step
goto 81,72.2
.kill Boglash##18281 |q 9895/1 |tip I found Boglash here. He is a tall alien looking thing with really long legs. Kill him, he's really easy, despite his elite status. He walks around in the water, so some searching may be necessary.
step
goto 80.4,64.2
.talk 17909
..turnin 9802
step
goto 78.5,63.1
.talk 17834
..turnin 9895
step
goto 85.3,90.9
.kill Kataru##18080 |q 9747/1 |tip In the big building, all the way at the top.
step
goto 83.1,85.2
.kill 6 Umbrafen Oracle##18077+ |q 9747/2
.kill 8 Umbrafen Seer##18079+ |q 9747/3
.kill 6 Umbrafen Witchdoctor##20115+ |q 9747/4
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
goto 74.7,91.6|n
.' The path to 'Ikeyen's Belongings' starts here |goto Zangarmarsh,74.7,91.6,0.3 |noway |c
step
'Go southwest inside the cave to 70.5,97.9 |goto 70.5,97.9
.click Ikeyen's Belongings##318
.get Ikeyen's Belongings |q 9788/1
step
'Go northeast inside the cave to 72.5,94.0 |goto 72.5,94.0
.kill Lord Klaq##18282 |q 9894/1 |tip On the bottom level of the cave, in the small round room all the way in the back.
step
goto 75.7,90.2
.kill 10 Marsh Lurker##18136+ |q 10096/2
.kill 10 Marsh Dredger##18137+ |q 10096/1
step
goto 70.9,82.1
.' Stand here to Investigate Umbrafen Lake |q 9716/1
.from Darkcrest Slaver##19946+,Darkcrest Sorceress##19947+
.get 10 Unidentified Plant Parts|q 9802/1
.get 30 Naga Claws|q 9728/1
.' You can find more Naga at:
.' [73.4,82.3]
.' [72.2,75.8]
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
..accept 9957
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
goto 62,40.8
.' Use your Ironvine Seeds on the Serpent Lake Controls |use Ironvine Seeds##24355 |tip The pump controls look like a little box with some levers on it
.' Disable the Serpent Lake Controls |q 9720/3
.from Steam Pump Overseer##18340+, Bloodscale Overseer##20088+, and Bloodscale Wavecaller##20089+
.' Get a Drain Schematics
.' Click the Drain Schematics in your bags |use Drain Schematics##24330
..accept 9731
step
goto 50.4,40.8
.' Swim straight down into the big bubbling pipe opening below until you discover the drain
.' Locate the drain in Serpent Lake |q 9731/1
step
goto 25.4,42.9
.' Use your Ironvine Seeds on the Umbrafen Lake Pump Controls |use Ironvine Seeds##24355
.' Disable the Umbrafen Lake Pump Controls |q 9720/2 |tip The pump controls look like a little box with some levers on it
step
goto 78.4,62
.talk 17841
..turnin 9720
..turnin 9731
..accept 9724
step
goto 78.5,63.1
.talk 17834
..accept 9957
step
goto Hellfire Peninsula,16,52.2
.talk 16885
..turnin 9724
..accept 9732
step
goto Zangarmarsh,78.4,62
.talk 17841
.turnin 9732
..accept 29566
..accept 29616
step
goto Zangarmarsh,50.4,40.9 |n
.' Swim down this drain to Coifang Reservoir |goto Zangarmarsh,50.4,40.9,0.5 |noway |c
step
goto 49.0,35.7|n
.' Go through the swirling portal into The Slave Pens dungeon |goto The Slave Pens |noway |c
step
goto The Slave Pens 18.9,11.3
.talk 54667
..turnin 29566
step
goto The Slave Pens 18.9,11.3
.talk 54667
..accept 29563
..accept 29565
step
goto 17.9,12.1
.talk 54668
..accept 29564
step
goto 25.0,51.2 |n
.' Follow the path and go straight through this main room |goto 25.0,51.2,1 |noway |c
step
goto 40.2,35.5 |n
.' Follow this hallway |goto 40.2,35.5,0.5 |noway |c
step
goto 48.8,24.3
.' You can either stand back and pull Mennu from the ramp, or clear the enemies first so they won't aggro.
.kill Mennu the Betrayer##17941 |q 29564/1
step
goto 48.9,83.4
.talk 17890
.' Discover Weeder Greenthumb |q 29563/2
step
goto 57.3,45.4
.from Rokmar the Crackler##17991+
.get The Invader's Claw |q 29565/1
step
goto 74.9,51.4 |n
.' Follow this path up |goto 74.9,51.4,1 |noway |c
step
goto 95.7,66.2
.talk 17893
.' Discover Naturalist Bite |q 29563/2
step
goto 95.7,66.2
.' Be ready to fight a couple mobs
.from Coilfang Champion##17957+, Coilfang Enchantress##17961+
.talk 17893
.' Tell him
.' <Naturalist, please grant me your boon |havebuff Interface\Icons\Ability_Druid_FerociousBite
step
goto The Slave Pens 86.2,67.9
.from Quagmirran##17942+
.get The Slave Master's Eye |q 29565/2
step
goto The Slave Pens 17.9,12.2
.talk 54668
..turnin 29564
step
goto 18.8,11.3
.talk 54667
..turnin 29563
..turnin 29565
step
goto 21.1,13.7 |n
.' Leave this instance |goto Zangarmarsh |noway |c
step
goto Zangarmarsh 54.2,34.4 |n
.' Enter The Underbog |goto The Underbog |noway |c
step
goto The Underbog 29.5,64.7
.talk 54678
..accept 29568
step
goto 30.9,65.3
.talk 54675
..accept 29570
step
goto 31.5,65.5
.talk 54674
..accept 29567
..accept 29691
step
'As you go through the dungeon, look for Sanguine Hibiscus
.click Sanguine Hibiscus##5031
.collect 5 Sanguine Hibiscus##24246 |n
|confirm
step
goto 42.5,62.0 |n
.' Keep following this straight path |goto 42.5,62.0,0.5 |noway |c
step
goto 57.4,82.9 |n
.' Follow this path up and around |goto 57.4,82.9,0.5 |noway |c
step
goto 70.0,90.0
.' He will summon mushrooms, these will explode to deal damage to player, and heal the boss.
.' Keep moving him so that doesn't happen.
.kill Hungarfen##17770 |q 29568/1
step
goto 77.2,43.8
.' Follow the path around until you get here
.from Ghaz'an##18105
|confirm
step
goto 78.9,24.5 |n
.' Jump down in the water here  |goto 78.9,24.5,0.5 |noway |c
step
goto 79.6,15.2 |n
.' Swim across the water and jump down here |goto 79.6,15.2,0.5 |noway |c
step
goto 67.4,21.3
.talk 17885
.' Discover Earthbinder Rayge |q 29570/1
step
goto 67.0,14.0 |n
.' Follow this path down and to the right |goto 67.0,14.0,0.5 |noway |c
step
goto 41.5,25.4
.from Swamplord Musel'ek##17826, Claw##17827
.' Talk to Windcaller Claw
.' Discover Windcaller Claw |q 29570/2
step
goto The Underbog 25.9,45.5
.from The Black Stalker##17882
.get Black Stalker's Brain |q 29567/1
step
'Make sure you have picked up 5 Sanguine Hibiscus
.click Sanguine Hibiscus##5031
.get 5 Sanguine Hibiscus##24246 |q 29691/1
step
goto The Underbog 29.5,64.5
.talk 54678
..turnin 29568
step
goto 30.8,65.3
.talk 54675
..turnin 29570
step
goto 31.6,65.5
.talk 54674
..turnin 29567
..turnin 29691
step
goto 28.7,69.8 |n
.' Leave the Underbog |goto Zangarmarsh |noway |c
step
goto 50.3,33.3 |n
.' Go through the portal to the Steamvaults. |goto The Steamvault |noway|c
step
goto The Steamvault 17.9,27.3
.talk 54848
..turnin 29616
..accept 29613
step
goto 17.5,25.9
.talk 54849
..accept 29614
step
goto 18.9,27.8
.talk 54851
..accept 29615
step
goto 33.7,22.7
.kill 3 Bog Overlord##21694+|q 29614/1
step
goto The Steamvault 54.3,12.4
.kill Hydromancer Thespia##17797 |q 29615/1
step
goto 54.2,10.6
.click Main Chambers Access Panel##7147
.' You hear a faint echo...
|confirm always
step
goto 42.1,32.9 |n
.' Go through the opening on your left. |goto 42.1,32.9,0.5 |noway |c
step
goto 49.3,42.8 |n
.' Go up the ramp |goto 49.3,42.8,0.5 |noway |c
step
goto 55.8,47.3 |n
.' Go up to the bridge on the right side |goto 55.8,47.3,0.25 |noway |c
step
goto 39.7,69.0 |n
.' Cross the bridge and go through the hallway |goto 39.7,69.0,0.5 |noway |c
step
goto The Steamvault 33.6,81.2
.from Mekgineer Steamrigger##17796
.get Irradiated Gear |q 29614/3
.kill 6 Coilfang Leper##21338+ |q 29614/2
step
goto 31.8,84.0
.click Main Chambers Access Panel##7147
.' You hear a faint echo... and You hear a loud rumble of metal grinding on stone....
|confirm always
step
goto 54.0,51.4 |n
.' Follow the tunnel back to the bridge |goto 54.0,51.4,0.5 |noway |c
step
goto 69.8,43.4 |n
.' Take a right after crossing the bridge, and go up a ramp |goto 69.8,43.4,0.5 |noway |c
step
goto 78.7,43.3 |n
.kill Warlord Kalithresh##17798 |q 29613/1
step
goto 49.1,42.6 |n
.' Follow the path down to the ramp |goto 49.1,42.6,0.5 |noway |c
step
goto 42.5,33.0 |n
.' Enter this doorway |goto 42.5,33.0,0.5 |noway |c
step
goto 18.8,27.6
.talk 54851
..turnin 29615
step
goto 18.0,27.2
.talk 54848
..turnin 29613
step
goto 17.6,25.9
.talk 54849
..turnin 29614
step
goto 17.6,30.6 |n
.' Leave The Steamvault |goto Zangarmarsh |noway |c
step
goto 51.9,38.2 |n
.' Swim through the tunnel to the other side. |goto Zangarmarsh,50.4,40.9,0.5 |noway|c
step
goto 79.1,64.8
.click Wanted Poster##15
..accept 9730
..accept 9817
step
goto Zangarmarsh 65.1,68.7
.kill Rajah Haghazed##18046 |q 9730/1
step
goto Zangarmarsh 65.1,40.9
.kill Rajis Fyashe##18044 |q 9817/1
step
goto 79.1,65.2
.talk 17858
..turnin 9730
..turnin 9817
step
goto Terokkar Forest,44.3,26.3
.talk 18446
..turnin 9957
..accept 9968
..accept 9971
step
goto 45,22.5
.talk 18424
..accept 9951
step
goto 45.1,21.8
.click Strange Object##7214
.' Examine the Strange Object |q 9971/1 |tip Inside the building, looks like a white ball on the floor next to a dead guy.
step
goto 43.4,22.1
.kill Naphthal'ar |q 9951/1 |tip At the top of the big tower.
step
goto 45,22.5
.talk 18424
..turnin 9951
step
goto 44.3,26.3
.talk 18446
..turnin 9971
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
goto Shattrath City,72.2,30.7
.talk 18484
..turnin 9979
..accept 10112
step
goto Terokkar Forest 30.9,42.0
.from Skithian Windripper##18453+
.from Skithian Dreadhawk##18452+
.get 5 Lathrai's Stolen Goods |q 10112/1
step
goto Shattrath City 72.3,30.9
.talk 18484
..turnin 10112
..accept 9990
step
goto Terokkar Forest 54.0,30.0
.click Sealed Box##6881
.get Sealed Box |q 9990/1
step
goto 44.4,26.3
.talk 18446
..turnin 9990
..accept 9994
step
goto 57.0,53.6
.talk 18447
..turnin 9994
..accept 10444
step
goto 69.6,44.6
.talk 21006
..turnin 10044
..accept 9996
step
goto 70.5,37.4
.kill 10 Firewing Defender##5355+ |q 9996/1
.kill 10 Firewing Bloodwarder##1410+ |q 9996/2
.kill 10 Firewing Warlock##16769+ |q 9996/3
step
goto 69.6,44.6
.talk 21006
..turnin 9996
..accept 10446
step
goto 73.4,36.3 |n
.' Enter this building |goto 73.4,36.3,0.5 |noway |c
step
goto 73.3,34.6
.click Orb of Translocation##7161
.' Run up the ramp to [73.9,35.8]
.from Sharth Voldoun##18554+
.collect The Final Code##29912
step
goto 74.2,36.5 |n
.click Orb of Translocation##7161
.' Teleport to the bottom of the tower |goto 73.3,36.3,0.5 |noway |c
step
goto 71.3,37.4
.click Mana Bomb##7213
.' Activate Mana Bomb |q 10446/1
step
goto 57.0,53.6
.talk 18459
..turnin 10446
..accept 10005
step
goto Terokkar Forest,44.3,26.3
.talk 18446
..turnin 10005
step
goto 37.9,51.7
.talk 22420
..accept 10896
step
goto 35.2,48.8
.from Infested Root-walker##22095+
.' Kill the Wood Mites that come out of their corpses
.kill 25 Wood Mite |q 10896/1
.' You can find more Infested Root-walkers at [39.1,47.0]
step
goto 37.9,51.7
.talk 22420
..turnin 10896
step
|fly Evergrove
step
goto 62.2,39.1
.talk 21782
..accept 10567
step
goto 62.0,39.5
.talk 22007
..accept 10682
step
goto 62.5,38.2
.talk 22133
..accept 10753
step
goto 61.3,38.4
.talk 22053
..accept 10771
..accept 10770
step
goto 58.8,39.1
.talk 21981 |tip He wanders around the Wyrmcult camps.
.' Negotiate with Overseer Nuaar |q 10682/1
step
goto 62,39.5
.talk 22007
..turnin 10682
..accept 10713
step
goto 61.8,39.6
.talk 21983
..accept 10717
step
goto 59.9,37.8
.kill 10 Wyrmcult Hewer##21810 |q 10713/1
.from Wyrmcult Poacher##21809+
.get 5 Wyrmcult Net |q 10717/1
.collect 1 Meeting Note##31120 |n
.' Click the Meeting Note in your bags |use Meeting Note##31120
..accept 10719
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
goto 62.2,39.1
.talk 21782
..turnin 10567
..accept 10607
step
goto 62,39.5
.talk 21983
..turnin 10717
step
goto 62.0,39.6
.talk 22007
..turnin 10713
..turnin 10719
..accept 10894
step
goto 49.9,35.9
.talk 22386
..turnin 10894
..accept 10893
step
goto 46.7,32.9
.kill Draaca Longtail##22396 |q 10893/1 |tip She walks near the Raven's Wood end of the cave.
step
goto 49.9,35.9
.talk 22386
..turnin 10893
..accept 10722
step
goto 42.2,25.1
.from Grishna Scorncrow##19990+, Grishna Falconwing##19988+, Grishna Harbinger##19989+
.' Get the Understanding Ravenspeech buff |havebuff Interface\Icons\Ability_Hunter_Pet_DragonHawk
|tip Must be within melee range to receive the buff
.' Anytime the buff wears off, kill Grishna mobs again to get it back
step
goto 40.7,18.7
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you |tip On the ground, next to a pond with basilisks in it.
.' Receive the Third Prophecy |q 10607/3
|model The Third Prophecy##7249
step
goto 39,17.2
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you |tip Up the left ramp, then left across the hanging bridge.
.' Receive the First Prophecy |q 10607/1
|model The First Prophecy##7249
step
goto 42.5,21.6
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you |tip Up the right ramp, then go right across the hanging bridge, then down the stairs to the left.
.' Receive the Second Prophecy |q 10607/2
|model The Second Prophecy##7249
step
goto 40.2,23
.' Stand next to the wooden totem with the Understanding Ravenspeech buff on you |tip On the ground, in front of a hut.
.' Receive the Fourth Prophecy |q 10607/4
|model The Fourth Prophecy##7249
step
goto 32.3,34.9
.' Go inside the cave
.from Wyrmcult Scout##21637+, Wyrmcult Acolyte##21383+, Wyrmcult Zealot##21382+
.collect 5 Costume Scraps##31121 |q 10722
step
goto 32.6,37.5
.' Combine your 5 Costume Scraps to make an Overseer Disguise |use Costume Scraps##31121
.' Put on the Overseer Disguise |havebuff Interface\Icons\INV_Chest_Wolf |q 10722 |use Overseer Disguise##31122
.talk 22019
.' Attend the meeting with Kolphis Darkscale |q 10722/1
step
goto 62.0,39.5
.talk 22007
..turnin 10722
..accept 10748
step
'Go inside the cave |goto Blade's Edge Mountains,32.1,34.1,0.3
step
goto 33.9,35.4
.kill Maxnar the Ashmaw##21389 |q 10748/1 |tip Follow the cave path until it dead ends into him.
step
'Leave the cave. |goto Blade's Edge Mountains,32.1,34.1,0.3
step
goto 62,39.5
.talk 22007
..turnin 10748
step
goto 62.2,39.1
.talk 21782
..turnin 10607
step
goto 68.9,35.6
.kill 4 Felsworn Scalewing##21123+ |q 10753/1
.kill 4 Felsworn Daggermaw##21124+ |q 10753/2
.kill 2 Fel Corrupter##21300+ |q 10753/3
.get Damaged Mask|n
.' Click the Damaged Mask |use Damaged Mask##31384
..accept 10810
step
goto 71.7,22.4
.click Fertile Volcanic Soil##7297
.' Plant the Ironroot Seeds |q 10771/1
step
goto 71.6,20.3
.click Fertile Volcanic Soil##7297
.' Plant the Ironroot Seeds|q 10771/2
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
'Make sure you have your Felsworn Gas Mask in your bags |collect Felsworn Gas Mask##31366 |q 10819
.' It has a 60 minute timer on it
.' If you need another one, talk to Wildlord Antelarion at [62.6,39.6]
.' Click here to continue. |confirm always
step
goto 73.2,40
'Put on your Felsworn Gas Mask |equipped Felswron Gas Mask##31366 |use Felsworn Gas Mask##31366
.click Legion Communicator##7091
..turnin 10819
..accept 10820
step
goto 74.9,39.9
.kill 4 Doomforge Attendant##19961+ |q 10820/1
.kill 4 Doomforge Engineer##19960+ |q 10820/2
step
goto 73.2,40
'Put on your Felsworn Gas Mask |equipped Felswron Gas Mask##31366 |use Felsworn Gas Mask##31366
.click Legion Communicator##7091
..turnin 10820
step
goto 73.3,40.1
.' Use your Felsworn Gas Mask to equip it |use Felsworn Gas Mask##31366
.' Wear the Felsworn Gas Mask |havebuff Interface\Icons\INV_Helmet_31 |c |q 10819
.click Legion Communicator##7091
..accept 10821
step
goto 73.0,41.0
.from Anger Guard##16952+
.collect 5 Camp Anger Key##31536 |q 10821
step
goto 73.5,43.5
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Click here to proceed. |confirm always
step
goto 75.3,41.7
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Click here to proceed. |confirm always
step
goto 73.8,41.0
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Click here to proceed. |confirm always
step
goto 75.4,40.6
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Click here to proceed. |confirm always
step
goto 74.0,39.9
.' Click the Legion Obelisk to activate it |tip It's a metal structure with a floating tall metal piece in the middle of it.
.' Click here to proceed. |confirm always
step
goto 74.3,42.5
.kill Doomcryer##19963 |q 10821/1
step
goto 62.4,38.4
.talk 22127
..turnin 10821
..accept 10910
step
goto 63.2,65.5
.' Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
.' Talk to Evergrove Druid
..turnin 10910
..accept 10904
step
goto 63.8,66.5
.from Death's Might##21519+, Deathforge Over-Smith##19978+, Death's Watch##21516+
.get 5 Fel Cannonball |q 10904/1
step
'Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
.' Talk to Evergrove Druid
..turnin 10904
..accept 10911
step
goto 64.8,68.3
.' Use your Naturalized Ammunition next to the Death's Door Fel Cannon |use Naturalized Ammunition##31807 |tip It looks like a big metal green-glowing bullet shaped machine.
.' Use the Artillery on the Warp-Gate ability 7 times |cast Artillery on the Warp-Gate##39221
.' Destroy the South Warp-Gate |q 10911/1
step
goto 62.0,60.3
.' Use your Naturalized Ammunition next to the Death's Door Fel Cannon |use Naturalized Ammunition##31807 |tip It looks like a big metal green-glowing bullet shaped machine.
.' Use the Artillery on the Warp-Gate ability 7 times |cast Artillery on the Warp-Gate##39221
.' Destroy the North Warp-Gate |q 10911/2
step
'Use your Druid Signal anywhere in Death's Door |use Druid Signal##31763
.' Talk to Evergrove Druid
..turnin 10911
..accept 10912
step
goto 63.6,59.1
.kill Baelmon the Hound-Master##19747 |q 10912/1
step
goto 62.7,39.4
.talk 22127
..turnin 10912
step
|fly The Stormspire
step
goto Netherstorm,42.3,32.6
.talk 20871
..accept 10426
step
goto 41.2,32.2
.' Use Energy Field Modulator on Farahlon Lashers |use Energy Field Modulator##29818
.from Mutated Farahlon Lasher##20774+
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
|fly Shattrath
step
goto Shattrath City,57.2,48.2
.clicknpc Stormwind Portal##31640
.' Teleport to Stormwind |goto Stormwind City |noway |c
step
#include "rideto_borean"
step
goto Borean Tundra,57,44.3
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
.' Use your D.E.H.T.A. Trap Smasher while standing next to Trapped Mammoth Calves|use D.E.H.T.A. Trap Smasher##35228|tip They look like baby elephants laying on the ground in a trap.
.' Free 8 Mammoth Calves |q 11876/1 |modelnpc 24613
step
goto 53.4,42.7
.kill 10 Loot Crazed Diver##25836 |q 11869/1
.kill Loot Crazed Divers|n
.get 15 Nesingwary Lackey Ear |q 11866/1
step
goto 46.4,40
.' Find and kill "Lunchbox"|kill "Lunchbox"|q 11884/2
.kill Nedar, Lord of Rhinos##25801|q 11884/1|tip He walks around this area.  Kill 'Lunchbox' and then Nedar, Lord of Rhinos will jump off.
step
goto 56.2,50.5
.' Stand inside the Caribou Traps on the ground|tip They look like metal spiked traps on the ground.
.' Use your Pile of Fake Furs|use Pile of Fake Furs##35127
.' Trap 8 Nesingwary Trappers |q 11865/1 |modelnpc 25835
step
goto 57,44.3
.talk 25809
..turnin 11866
..turnin 11876
..accept 11878
.' After you turn in Ears of Our Enemies, you will get a repeatable quest called Can't Get Ear-nough...
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
'|from Mammoth Calf##24613, Khu'nok the Behemoth##25862
step
goto 59.5,30.4
.talk 25862
..turnin 11878
..accept 11879
step
'Ride around and find a Wooly Mammoth Bull|n |modelnpc 25743
.' Click it to ride it|invehicle|c
step
'Go north on the Wooly Mammoth Bull to 53.7,23.9|goto 53.7,23.9
.' Use the skills on your mammoth action bar to do the following:
.from Kaw the Mammoth Destroyer##25802
.' Click Kaw's War Halberd on the ground
.get Kaw's War Halberd|q 11879/1
step
goto 57,44.3
.talk 25809
..turnin 11879
step
goto 57.3,56.5
.kill Karen "I Don't Caribou" the Culler##25803 |q 11868/1|tip She walks around in this spot.  Be careful, she has 2 stealthed guards that come with her.
step
goto 57.8,55.1
.talk 25838
..turnin 11870
..accept 11871
step
goto 59.1,55.9
.kill Northsea Thugs##25843 |n
.' Click the Shipment of Animal Parts containers on the ground|tip They look like brown bags and crates sitting on the ground around this area.
.get 12 Shipment of Animal Parts|q 11871/1
step
goto 57.8,55.1
.talk 25838
..turnin 11871
..accept 11872
step
goto 61.5,66.5
.kill 1 Clam Master K##25800 |q 11872/1 |tip He's walking around underwater.
step
goto 57.3,44.1
.talk 25810
..turnin 11872
step
goto 56.8,44
.talk 25811
..turnin 11868
step
goto 43.5,14
.talk 25197
..accept 11571
step
'Go southwest underwater to 42.5,15.9|goto 42.5,15.9
.kill Scalder##25226 |n |tip He is a water elemental that walks back and forth on the pink trench underwater.
.' Use The King's Empty Conch on Scalder's corpse |use The King's Empty Conch##34598
.get The King's Filled Conch|q 11571/1
step
goto 42.5,16.4
.click Winterfin Clam##261
.collect 5 Winterfin Clam##34597
step
goto 43.5,14
.talk 25197
..turnin 11571
..accept 11559
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
.kill 15 Winterfin murlocs|q 11561/1
.click Cage##1787
.' Rescue 20 Winterfin Tadpoles |q 11560/1
' |from Winterfin Oracle##25216+, Winterfin Shorestriker##25215+, Winterfin Warrior##25217+
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
goto 37.4,9.8
.from Glrggl##25203
.get Glrggl's Head |q 11563/1
step
goto 40.3,12.4
.kill Glimmer Bay Orca##25204+ |n
.get 7 Succulent Orca Blubber|q 11564/1
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
'Go southwest to Winterfin Village|n
.' Use King Mrgl-Mrgl's Spare Suit|havebuff INV_Misc_Head_Murloc_01|use King Mrgl-Mrgl's Spare Suit##34620
step
'Go inside the cave to [37.8,23.2]|goto 37.8,23.2
.talk 28375
..accept 11569
step
'Go down the path and underneath you to [38.4,22.7]|goto 38.4,22.7
.from Keymaster Urmgrgl##25210
.get Urmgrgl's Key|q 11569/1
step
'Follow the path up and to the back of the cave to [37.6,27.4]|goto 37.6,27.4
.from Claximus##25209
.get Claw of Claximus|q 11566/1
step
'Go back up the path to [37.8,23.2]|goto 37.8,23.2
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
.' If you are not Exalted with the Cenarion Expedition, you can turn in Lackey Ears for a repeatable quest, or run Heroic Dungeons.
.' The Heroic Dungeons are Slave Pens, Underbog and Steamvault.
.' Click here to do the repeatable quest |confirm
step
label ears
goto Borean Tundra 60.9,63.4
.from Northsea Mercenary##25839+, Northsea Thug##25843+
.collect Nesingwary Lackey Ear##35188
.' Collect Lackey Ears in stacks of 15.
.' When you want to turn in Lackey Ears, click here. |next "turnin" |confirm
step
label turnin
goto 57.1,44.3
.talk 25809
..accept 11867 |n
..' Click here to go back to farming ears. |next "ears" |confirm
..' Keep repeating this quest until you are Exalted with the Cenarion Expedition |condition rep('Cenarion Expedition')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with the Cenarion Expedition!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Miscellaneous Titles\\Guardian of Cenarius\\Cenarion Circle Faction",[[
step
label	"menu"
.' There are several ways to earn reputation with _Cenarion Circle_.  Earning Exalted with this Faction is half of the _Achievement Guardian of Cenarius_.
.' You can _farm mobs and bosses_ in the _Ruins of Ahn'Qiraj_.  You would need at least 1 other person to form the raid.
.' or
.' There are a large number of _quests_ available _at Cenarion Hold_, but once those are completed you'll need to grind your way to Exalted. Click here to go to these quests |confirm always |next "quest"
.' or
.' The _only repeatable quest_ as of 4.2 is from Bor Wildmane at Cenarion Hold.  You will need to _collect 10 Encrypted Twilight Text_ per _turn in_. Click here to continue |confirm always |next "farm"
|next "exalted" |only if rep('Cenarion Circle')==Exalted
step
label	"quest"
|fly Cenarion Hold
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
goto 54.5,33.0
.talk 17082
..accept 9415
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
.from Twilight Avenger##11880+, Twilight Stonecaller##11882+
.get 10 Encrypted Twilight Text |q 8318/1
.collect 20 Encrypted Twilight Text##20404 |q 8323 |future |tip You need 10 extra Encrypted Twighlight Text for a future quest.
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
goto 52.7,35.6
.talk 15306
..turnin 8318
step
goto 52.7,35.7
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
goto 52.7,35.6
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
goto 53.2,32.5
.talk 15181
..accept 8304
step
goto 68.7,63.0
.talk 15194
..turnin 8285
..accept 8279
step
goto 39.6,47.0
.talk 17080
..turnin 9415
..accept 9422
step
goto 50.0,49.9
.click Silithyst Geyser##6862
.' Surround yourself in Silithyst Dust |havebuff Interface\Icons\Spell_Holiday_ToW_SpiceCloud |c |q 9422
.' They spawn in various locations, you find more at:
.' [53.2,41.6]
.' [57.1,47.2]
.' [60.0,41.1]
step
goto 39.1,46.9
.' Stand inside the big blue-glowing metal machine
.' Deliver Silithyst |q 9422/1
step
goto 39.6,47.0
.talk 17080
..turnin 9422
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
.' You can find more Dredge Crushers around [Silithus,37.9,32.4]
step
goto 42.8,63.5
.from Stonelash Flayer##11737+
.get 3 Stonelash Flayer Stinger |q 8278/1
.from Stonelash Pincer##11736+
.get 3 Stonelash Pincer Stinger |q 8278/2
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
goto 46.0,79.4
.talk 15171
..' Tell him you've heard he might have some information as to the weareabouts of Mistress Natalia Mar'alith
.' Question Frankal |q 8304/1
step
goto 46.4,79.1
.talk 15170
..' Tell him the Commander has sent you here to gather some information about his missing wife
.' Question Rutgar |q 8304/2
step
.' Click the Complete Quest box in the top right corner of your screen
..turnin 8304
..accept 8306
step
goto 47.4,81.1 |n
.' Follow the path up |goto 47.4,81.1,0.5 |noway |c
step
goto 49.2,81.6
.click Noggle's Satchel##323 |tip Be careful of Deathclasp, the elite scorpion that patrols this small area.
.get Noggle's Satchel##20379 |q 8282/1
step
goto 49.5,81.3
.from Deathclasp##15196
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
.click the Hive'Regal Glyphed Crystal##6414
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
.collect 1 Brann Bronzebeard's Lost Letter##20461 |n
.' Click Brann Bronzebeard's Lost Letter |use Brann Bronzebeard's Lost Letter##20461
..accept 8308
step
goto 65.8,76.5 |n
.' Follow the path up |goto 65.8,76.5,0.5 |noway |c
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
goto 46.4,79.1
.talk 15170
..turnin 8308
..turnin 8309
..accept 8314
step
goto 65.8,76.5 |n
.' Follow the path up |goto 65.8,76.5,0.5 |noway |c
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
|next "menu"
step
label	"farm_text"
|fly Cenarion Hold
step
goto Silithus,45.6,40.1
.from Twilight Avenger##11880+, Twilight Keeper Havunth##11804+, Twilight Stonecaller##11882+, Twilight Geolord##11881+
.collect Encrypted Twilight Text##20404 |n
.' More Twilight mobs can be found at [28.0,74.8]
.' Here [69.7,16.6]
.' Here [33.5,33.9]
.' When you have a lot of Twilight Texts to turn in, click here |confirm
step
goto Silithus,53.2,35.1
.talk 15306
..accept 8319 |n
.' You can click here to farm more Texts |confirm |next "farm_text"
.' or
.' Click here to do quests outside of Silithus for more rep |confirm
|next "exalted" |only if rep('Cenarion Circle')==Exalted
step
|fly Marshal's Stand
step
goto Un'Goro Crater,55.7,60.6
.talk 38269
..accept 24854
step
goto 70.8,76.4
.talk 38274
..turnin 24854
..accept 24719
step
goto 67.4,72.3
.from Ravasaur##6505+,Ravasaur Runner##6506+,Ravasaur Hunter##6507+,Venomhide Ravasaur##6508+
..get 5 White Ravasaur Claw |q 24719/1
.' More can be found around [Un'Goro Crater,69.1,57.1]
step
goto 70.6,76.8
.talk 38274
..turnin 24719
..accept 24686
step
goto 73.5,60.2
.' While traveling to the coordinates, look in the water for Bloodpetal Seeds |modelnpc 38202
.' Catch the Bloodpetal Seeds with Garl's Net. |use Garl's Net##50441
.get 4 Un'Goro Lasher Seed |q 24686/1
step
goto 70.6,75.9
.talk 38274
..turnin 24686
..accept 24689
step
goto 76.4,48.3
.talk 38263
..turnin 24689
..accept 24687
step
goto 75.8,44.1
.' Attack the Juvenile Bloodpetals in the area.
..kill 6 Pack of Juvenile Bloodpetal##38213+ |q 24687/1
step
goto 76.4,48.3
.talk 38263
..turnin 24687
..accept 24855
step
goto 69.9,34.1
.kill 11 Bloodpetal##6512+ |q 24855/1
step
goto 76.4,48.3
.talk 38263
..turnin 24855
step
|fly Ratchet
step
goto Northern Barrens,70.1,73.3
.' Ride the boat to Booty Bay
.' Go to Booty Bay |goto The Cape of Stranglethorn|noway |c
step
|fly The Menders' Stead
step
goto 48.9,54.8
.talk 44456
..accept 26953
step
goto 48.5,54.9
.talk 44457
..accept 26956
step
goto 47.4,52.9
.click Unhealthy-Looking Pumpkin##6326
.from Thrashing Pumpkin##44487+
.' Remove 3 Unhealthy-Looking Pumpkins |q 26956/3
step
goto 46.8,54.1
.click Rotten Apple##9820+
.from Pome Wraith##44488+
.' Remove 4 Rotten Apples |q 26956/2
step
goto 45.8,53.4
.click Bad Corn##9819
.from Corn Stalker##44489+
.' Remove 6 Bad Corn |q 26956/1
step
goto 50.3,59.6
.from Plague Lurker##1824+, Venom Mist Lurker##1822+, Diseased Wolf##1817+, Hulking Plaguebear##44482+ |tip You must do this with the Troll Zen'Kiki next to you. If you lose him, return to the Menders' Stead and talk to him.
.' Kill 20 Wildlife with Zen'Kiki |q 26953/1
step
goto 48.9,54.8
.talk 44456
..turnin 26953
..accept 26954
step
goto 48.5,54.9
.talk 44457
..turnin 26956
step
goto 53.9,53.7
.' Click Zen'Kiki |tip He's the Troll that's following you around.  Keep clicking him to pull the Diseased Hawks down to you.
.kill 7 Diseased Hawk##44481 |q 26954/1
step
goto 48.9,54.8
.talk 44456
..turnin 26954
step
goto 49.3,55.0
.talk 44454
..accept 26999
step
goto 46.0,48.7
.from Hulking Plaguebear##44482+
.get 4 Hulking Plaguebear Sample |q 26999/3
.from Diseased Wolf##1817+
.get 4 Diseased Wolf Sample |q 26999/4
step
goto 57.0,62.7
.from Plague Lurker##1824+
.get 4 Plague Lurker Sample |q 26999/1
.from Venom Mist Lurker##1822+
.get 4 Venom Mist Lurker Sample |q 26999/2
step
goto 49.3,55.0
.talk 44454
..turnin 26999
..accept 26935
step
goto 48.1,32.4
.talk 11616
..turnin 26935
..accept 27000
step
goto 47.7,31.7
.clicknpc Hearthglen Mustang##44836
.' Ride the Hearthglen Mustang |invehicle |c |q 27000
step
goto 47.4,35.0
.' Use your Whinny ability on your hotbar near Northridge Spiders
.' Frighten 25 Northridge Spiders |q 27000/1
|modelnpc Northridge Spider##44284
step
'Click the red arrow on your hotbar to stop riding the Hearthglen Mustang |outvehicle |c |q 27000
step
goto 48.1,32.4
.talk 11616
..turnin 27000
..accept 27001
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
'Click the red arrow on your hotbar to stop riding the Hearthglen Mustang |outvehicle |c |q 27001
step
goto 48.1,32.4
.talk 11616
..turnin 27001
..accept 27002
step
goto 42.0,14.8
.talk 44441
..turnin 27002
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
.' Click the Scourge Cauldron |tip It's a huge shaking black pot with orange liquid in it on a stone platform.
..turnin 27053
..accept 27057
step
goto 49.3,55.0
.talk 44454
..turnin 27057
step
goto 48.9,54.8
.talk 44456
..accept 26955
step
goto 66.7,48.9
.' Click Cultist Cages |tip They look like big yellow cages around this area. |model 01787
.' Free and Heal 4 Captive Plaguebears |q 26955/1
step
goto 48.9,54.8
.talk 44456
..turnin 26955
step
|fly Crown Guard Tower
step
goto Eastern Plaguelands,35.6,68.9
.talk 11063
..accept 27383
step
goto Eastern Plaguelands,32.5,83.7
.talk 10926
..turnin 27383
..accept 27384
step
goto 35.5,85.3
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
goto 32.4,83.7
.talk 10926
..turnin 27384
..accept 27392
step
goto 40.3,83.8
.from The Lone Hunter##45450
.get Joseph's Hunting Blade |q 27392/1
step
goto 32.5,83.6
.talk 10926
..turnin 27392
..accept 27385
step
goto 35.6,68.9
.talk 11063
..turnin 27385
..accept 27386
step
goto 35.3,68.1
.talk 10667
..turnin 27386
step
goto Eastern Plaguelands,35.0,68.1
.talk 45500
..accept 27544
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
.from Shadowmage##8550+, Dark Adept##8546+
.collect Plague Disseminator Control Rune##61037 |n
.' Use your Overcharged Mote when you have a Plague Disseminator Control Rune |use Overcharged Mote##61038
.' Destroy 3 Plague Disseminators |q 27420/1
step
goto 30.2,56.9
.talk 16135
..turnin 27420
..turnin 27421
|next "exalted" |only if rep('Cenarion Circle')==Exalted
step
.' This is the end of the questing
.' Click here to go back to the Silithus Reputation menu |confirm |next "menu"
step
label	"exalted"
.' Congratulations, you are Exalted with Cenarion Expedition |only if rep('Cenarion Circle')==Exalted
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Miscellaneous Titles\\The Diplomat\\Timbermaw Hold Faction",[[
author support@zygorguides.com
step
|fly Whisperwind Grove
step
goto Felwood,64.0,10.3
.talk 15395
..accept 28338
..accept 28366
step
goto 64.1,10.3
.talk 48461
..accept 28362
step
goto 60.6,9.5
.talk 47556
.turnin 28362
.accept 28364
step
goto 62.1,9.9
.from Chieftain Bloodmaw##9462
.get Drizle's Key##63695 |q 28364/1
step
goto 60.6,9.5
.talk 47556
.turnin 28364
step
goto 62.0,12.8
.from Deadwood Den Watcher##7156+, Deadwood Avenger##7157+, Deadwood Shaman##7158+
.'Kill 15 Deadwood Furbolg |q 28338/1
.click Deadwood Weapon Pile##10202
.get 7 Deadwood Weapons |q 28366/1
..collect 1 Deadwood Ritual Totem##20741 |n
..accept 8470
.' You can find more around [Felwood,59.7,9.8].
step
goto 64.0,10.3
.talk 15395
..turnin 28338
..turnin 28366
..accept 28521
.' You should be able to turn in Feathers for Nafien, a repeatable reputation quest.
step
goto 64.7,5.7
.talk 11558
.turnin 8470
.' You should be friendly with Timbermaw after completing this quest.
only if rep('Timbermaw Hold')>=Neutral
step
goto 64.9,5.2
.talk 11557
.accept 6031
only if rep ('Timbermaw Hold')>=Friendly
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
goto 24.5,47.6
.' Click the Winterfall Cauldron.
..turnin 28464
..accept 28467
step
goto 24.5,47.6
.from Winterfall Totemic##7441+, Winterfall Den Watcher##7440+, Winterfall Runner##10916+
.'Kill 15 Winterfall Furbolg |q 28460/1
..get 10 Winterfall Spirit Beads |q 28522/1
.' You can find more mobs around [Winterspring,27.3,49.3].
step
goto 25.1,58.5
.talk 9298
..turnin 28467
..turnin 28460
..accept 28469
..accept 28530
step
goto 29.3,54.8
.from Winterfall Runner##10916
.get Winterfall Crate |q 28469/1
.' They walk along the road so some searching may be required.
step
goto 32.7,50.6
.from Scalding Springsurge##48767+,Boiling Springbubble##48768+
.get 7 Suspicious Green Sludge |q 28530/1
step
goto 25.1,58.5
.talk 9298
..turnin 28469
..turnin 28530
..accept 28470
.' You should be honored with Timbermaw Hold at this point.
step
goto 37.0,55.6
.kill High Chief Winterfall##10738 |q 28470/1
step
goto 25.1,58.5
.talk 9298
..turnin 28470
step
goto 21.1,46.2
.talk 11556
..turnin 28522
.' You should now be able to do the quest More Beads for Salfa.
step
goto 65.3,46.2
.talk 48722
.accept 28614
step
goto 65.4,46.2
.talk 48723
..accept 28615
step
goto 67.0,47.7
' Use Tanrir's Overcharged Totem to overload Winterfall Earth Totems. |use Tanrir's Overcharged Totem##64637
.' Overload 4 Winterfall Earth Totems |q 28615/1
|modelnpc Winterfall Earth Totem##49177
step
goto 69.3,50.6
..kill Grolnar the Berserk##49178 |q 28614/1
step
goto Winterspring,65.4,46.2
.talk 48723
..turnin 28615
step
goto 65.3,46.2
.talk 48722
..turnin 28614
step
label	"the_grind"
.' At this point, you can do two repeatable quests, as well as grind to earn rep.
.' More Beads for Salfa requires that you grind in Winterspring.  You collect 5 Winterfall Spirit Beads, which are worth 2,000 Reputation per turn in.  Click here to farm at the Winterspring location. |confirm |next "winterfall"
.' or
.' Feathers for Nafien requires that you grind in Felwood. You collect 5 Deadwood Headdress Feathers, which are worth 2,000 Reputation per turn in.  Click here to farm at the Felwood location. |confirm |next "deadwood"
.' Collecting 65 Beads/Feathers will get you from Honored to Exalted.
step
label	"winterfall"
goto 67.5,49.8
.from Winterfall Shaman##7439+,Winterfall Ursa##7438+
..collect Winterfall Spirit Beads##21383 |n |tip You need to collect at least 5.
.' 5 Winterfall Spirit Beads = 2,000 Reputation. You're aiming for at least 60 to 65 Winterfall Spirit Beads in total.
.' More can be found at [Winterspring,35.6,56.3]
.' Click here to turn in your beads |confirm
step
goto 21.1,46.2
.talk 11556
..accept 28523 |n
.' Click here to go back to grinding. |next "the_grind" |only if rep('Timbermaw Hold')<=Revered |confirm
.' or
.' Exalted with Timbermaw Hold |next "exalted" |condition rep('Timbermaw Hold')==Exalted
step
label	"deadwood"
goto Felwood,61.9,12.3
.from Deadwood Avenger##7157+,Deadwood Den Watcher##7156+,Deadwood Shaman##7158+
..collect Deadwood Headdress Feather##21377 |n |tip You need to collect at least 5.
.' 5 Feather Headresses = 2,000 Reputation.  You're aiming for at least 60 to 65 Feather Headresses in total.
.' More can be found at [Felwood,59.6,8.9]
.' Click here to turn in your feathers |confirm |next "turnin"
step
label	"turnin"
goto 64.0,10.3
.talk 15395
..accept 28395 |n
.' Click here to go back to grinding. |next "the_grind" |only if rep('Timbermaw Hold')<=Revered |confirm
.' or
.' Exalted with Timbermaw Hold |next "exalted" |condition rep('Timbermaw Hold')==Exalted
step
label	"exalted"
.' Congratulations, you are now Exalted with Timbermaw Hold!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Miscellaneous Titles\\The Diplomat\\Sporeggar Faction",[[
author support@zygorguides.com
step
#include "darkportal"
step
|fly Zabra'jin
step
label	"back up"
goto Zangarmarsh,19.1,64.2
.talk 17923
.accept 9739
.accept 9743
.' turn in these two quests 4 times to go from unfriend to friendly.
|only if rep('Sporeggar')<=Neutral
step
goto 16.0,60.3
.from Starving Fungal Giant##18125+, Starving Bog Lord##19519+
.get 6 Bog Lord Tendril##24291 |q  9743/1
.click Mature Spore Sac##6911+
.get 10 Mature Spore Sac##24290 |q 9739/1 |tip They are on the ground throughout the area.
|only if rep('Sporeggar')<=Neutral
step
goto Zangarmarsh,19.1,64.2
.talk 17923
.turnin 9739 |repeatable
..turnin 9743 |repeatable
|only if rep('Sporeggar')<=Neutral
step
goto 16.0,60.3
.from Starving Fungal Giant##18125+, Starving Bog Lord##19519+
.collect 6 Bog Lord Tendril##24291+ |n
.click Mature Spore Sac##6911+
.collect 10 Mature Spore Sac##24290 |n |tip They are on the ground throughout the area.
.' Turn in 10 Spore Sacs or 6 Bog Lord Tendrils at a time here: [19.0,63.3]
.' Reach Friendly with Sporeggar |condition rep('Sporeggar')>=Friendly
step
goto Zangarmarsh,19.1,64.2
.talk 17923
..accept 9919
step
goto 19.7,52.0
.talk 17924
..turnin 9919
step
.' Once you have reached friendly, you can farm the quest Now That We're Friends... and Bring Me A Shrubbery!  Grinding mobs at The Spawning Glen no longer will give you reputation.
.' Collecting 265 Sanguine Hibiscus from The Underbog will give you enough
.' Click here if you want to grind out Sanguine Hibiscus. |confirm always |next "hibiscus_1"
.' or
.' Click here if you want to grind Naga mobs.|confirm always |next "grind_1"
step
label	"hibiscus_1"
goto 50.3,40.9 |n
.' Swim down through the pipe underwater to the other side. |goto 51.9,38.1,1 |c
step
goto Zangarmarsh,54.2,34.4 |n
.' Enter the Underbog |goto Zangarmarsh,54.2,34.4,0.5 |noway |c
step
goto The Underbog 31.6,65.4
.talk 54674
..accept 29691
..accept 29567
step
label	"hibiscus"
.' You can find the Sanguine Hibiscus on the ground scattered through out the instance.
.' You can also get Sanguine Hibiscus from Underbat, Underbog Lurkers, Underbog Shamblers, Bog Overlords, Bog Giants and Underbog Lords.
.collect Sanguine Hibiscus##24246 |n
.' You need 5 Sanguine Hibiscus for 750 Reputation.
.' 40 Sanguine Hibiscus = 6,000 Reputation.
.' 80 Sanguine Hibiscus = 12,000 Reputation.
.' Click when you are ready to turn in |confirm always
step
goto The Underbog 25.7,44.1
.from The Black Stalker##17882+
.get Brain of the Black Stalker |q 29567/1
step
goto The Underbog 31.6,65.4
.talk 54674
..turnin 29691
..turnin 29567
step
label	"hibiscus_r"
goto The Underbog 31.6,65.4
.talk 54674
.accept 9714 |instant |repeatable |or
.' or
.' Click here to go farming for more _Sanguine Hibiscus_ |confirm always |next "hibiscus" |or
.' or
.' Click here if you would like to farm Naga for more reputation |confirm always |next "grind_1" |or
step
goto 19.5,50.0
.talk 17856
.turnin 9715
|next "hibiscus_r" |only if rep('Sporeggar')<=Revered
|next "exalted" |only if rep('Sporeggar')==Exalted
|only if havequest(9715)
step
goto 19.5,50.0
.talk 17856
.turnin 9714
|next "hibiscus_r" |only if rep('Sporeggar')<=Revered
|next "exalted" |only if rep('Sporeggar')==Exalted
|only if havequest(9714)
step
label	"grind_1"
goto Zangarmarsh 19.5,50.0
.talk 17856
.accept 9726
|only if rep('Sporeggar')>=Friendly
|next "grind_2"
step
label	"grind_r"
goto 19.5,50.0
.talk 17856
..accept 9727 |repeatable |next "grind"|or
.' or
.' Click here to go farming for _Sanguine Hibiscus_ |confirm |next "hibiscus_1" |or
|only if rep('Sporeggar')>=Friendly
step
label	"grind_2"
goto Zangarmarsh,26.9,41.7
.kill 12 Bloodscale Slavedriver##18089+ |q 9726/1
.kill 6 Bloodscale Enchantress##18088+ |q 9726/2
|only if havequest(9726)
|next "grind_3"
step
label	"grind"
goto Zangarmarsh,26.9,41.7
.kill 12 Bloodscale Slavedriver##18089+ |q 9727/1 |repeatable
.kill 6 Bloodscale Enchantress##18088+ |q 9727/2 |repeatable
|only if havequest(9727)
|next "grind_4"
step
label	"grind_3"
goto 19.5,50.0
.talk 17856
.turnin 9726
|next "grind_r" |only if rep('Sporeggar')<=Revered
|next "exalted" |only if rep('Sporeggar')==Exalted
|only if havequest(9726)
step
label	"grind_4"
goto 19.5,50.0
.talk 17856
.turnin 9727
|next "grind_r" |only if rep('Sporeggar')<=Revered
|next "exalted" |only if rep('Sporeggar')==Exalted
|only if havequest(9727)
step
label	"exalted"
.' Congratulations, you are now exalted with Sporeggar!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Miscellaneous Titles\\The Diplomat\\Mag'har Faction",[[
description This Guide will help you reach Exalted status with the Mag'har Faction
author support@zygorguides.com
#include "H_Maghar_Faction"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Miscellaneous Titles\\Loremaster",[[
description This guide will refer you to the correct location to go, to get the Loremaster Title.
author support@zygorguides.com
step
' You can use our Leveling Guides along with our Loremaster guides in the Main Menu to get the Loremaster achievement.
.' Make sure that you use the Leveling guides first, than go through and get the quests with the Loremaster Guides to finish the quests that you need.
|achieve 7520
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Miscellaneous Titles\\The Seeker",[[
description This guide will refer you to the correct location to go, to get the Seeker Title.
author support@zygorguides.com
step
' You can use our Leveling Guides along with our Loremaster guides in the Main Menu to get The Seeker achievement.
.' Make sure that you use the Leveling guides first, than go through and get the quests with the Loremaster Guides to finish the quests that you need.
|achieve 978
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Miscellaneous Titles\\The Patient",[[
description This guide will instruct you on how to get The Patient Title.
author support@zygorguides.com
step
'Getting the title _The Patient_ is obtained by running random dungeons with 50 different people.
|confirm
step
'Press the letter _[I]_ on your keyboard to bring up your _Dungeon Finder_
.' Choose any Random Heroic Dungeon and make sure to kill the final boss.
.' Run random Heroic Dungeons with 10 random people |achieve 4476
step
'Press the letter _[I]_ on your keyboard to bring up your _Dungeon Finder_
.' Choose any Random Heroic Dungeon and make sure to kill the final boss.
.' Run random Heroic Dungeons with 50 random people |achieve 4477
step
'Congratulations! You have achieved the title The Patient |achieve 4477
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Miscellaneous Titles\\The Exalted",[[
description This guide will instruct you on how to get The Exalted Title.
author support@zygorguides.com
step
'Use our Reputations guide to get Exalted reputation with 45 different reputations.
.' Earn Exalted reputation with 45 different reputations |achieve 5374
step
'Congratulations! You have achieved the title The Exalted! |achieve 5374
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Miscellaneous Titles\\The Camel-Hoarder",[[
step
'This title is attained when you learn a mount dropped by a rare spawn.
|confirm
step
'This mount drops off a rare spawn called Dormus the Camel-Hoarder. You get to him by clicking the Mysterious Camel Figurines around Uldum. They have a chance to teleport you to his area and you get a debuff giving you 20 minutes to kill him.
'Go to Uldum |goto Uldum |noway |c
step
.from Dormus the Camel-Hoarder |n
.collect 1 Reins of the Grey Riding Camel##63046
|modeldisplay 35135
step
.learnmount Grey Riding Camel##88750 |use Reins of the Grey Riding Camel##63046
.' Learn the Grey Riding Camel mount. |achieve 5767
step
'Congratulations! You have achieved the title The Camel-Hoarder! |achieve 5767
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Profession Titles\\Cooking\\Chef\\Outland Dailies",[[
description This guide will walk you through the steps
description to earn the title Chef
author support@zygorguides.com
#include "H_Kickin'_It_Up_a_Notch"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Profession Titles\\Cooking\\Chef\\The Outland Gourmet - The Cake is not a lie",[[
description This guide will walk you through the steps
description to earn the title Chef
author support@zygorguides.com
#include "H_The_Outland_Gourmet"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Profession Titles\\Cooking\\Chef\\Our Daily Bread",[[
description This guide will walk you through the steps
description to earn the title Chef
author support@zygorguides.com
#include "H_Our_Daily_Bread"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Profession Titles\\Cooking\\Chef\\The Northrend Gourmet - Second That Emotion - Our Daily Bread",[[
description This guide will walk you through the steps
description to earn the title Chef
author support@zygorguides.com
#include "H_The_Northrend_Gourmet"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Profession Titles\\Cooking\\Chef\\Critter Gitter - Captain Rumsey's Lager - Dinner Impossible",[[
description This guide will walk you through the steps
description to earn the title Chef
author support@zygorguides.com
#include "H_Critter_Gitter"
#include "H_Captain_Rumsey's_Lager"
#include "H_Dinner_Impossible"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Profession Titles\\Archaeology\\Assistant Professor, Associate Professor, and Professor",[[
step
'These titles require the solving of rare artifacts of any kind.
goto Orgrimmar 49.0,70.7 |only if skillmax("Archaeology")<1
.talk 47571 |only if skillmax("Archaeology")<1
.skillmax Archaeology,75 |only if skillmax("Archaeology")<1
|confirm |only if default
step
'Open your world map, find dig sites, and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
.' Use your Survey ability inside the dig site area |cast Survey##80451
.' A telescope will appear, follow the direction it points in and continue using your Survey ability to eventually find the artifacts |tip Each dig site has 3 artifacts you can find.
.' Click the Archaeology Fragments that spawn on the ground
.' Open your Archaeology profession window |cast Archaeology##78670
.' Click artifacts to open them, then solve them once you have the required amounts of each
.' Find and solve a rare artifact and earn the Assistant Professor title |achieve 4854
.' Find and solve 10 rare artifacts and earn the Associate Professor title |achieve 4855
.' Find and solve 20 rare artifacts and earn the Professor title |achieve 4856
step
'Congratulations! You have earned all of the Archaeology titles!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Profession Titles\\Fishing\\Salty\\1000 Fish, One that Didn't Get Away, Fish Don't Leave Footprints and The Old Gnome and the Sea",[[
description This guide will walk you through the steps
description to earn the title Chef
author support@zygorguides.com
step
.' Equip your Fishing Pole |use Fishing Pole##6256
.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
.' Stand on the end of this wooden dock
.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
.' Catch 25 Fish. |achieve 1556
.' Catch 50 Fish. |achieve 1557
.' Catch 100 Fish. |achieve 1558
.' Catch 250 Fish. |achieve 1559
.' Catch 500 Fish. |achieve 1560
.' Catch 1000 Fish. |achieve 1561
.' Catch a 32 Pound Catfish |achieve 878
step
'Congratulations! You've earned the 1000 Fish achievement!
'Congratulations! You've earned the One that Didn't Get Away achievement!
#include "H_Fish_Don't_Leave_Footprints"
#include "H_Old_Gnome_and_the_Sea"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Profession Titles\\Fishing\\Salty\\The Scavenger",[[
description This guide will walk you through the steps
description to earn the title Chef
author support@zygorguides.com
#include "H_The_Scavenger"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Profession Titles\\Fishing\\Salty\\Fishing Diplomat",[[
description This guide will walk you through the steps
description to earn the title Chef
author support@zygorguides.com
#include "H_The_Fishing_Diplomat"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Profession Titles\\Fishing\\Salty\\Old Man Barlowned",[[
description This guide will walk you through the steps
description to earn the title Chef
author support@zygorguides.com
#include "H_Old_Man_Barlowned"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Profession Titles\\Fishing\\Salty\\Outland Angler, Mr. Pinchy's Magical Crawdad Box and The Lurker Above",[[
description This guide will walk you through the steps
description to earn the title Chef
author support@zygorguides.com
#include "H_Outland_Angler"
#include "H_Mr._Pinchy's_Magical_Crawdad_Box"
#include "H_The_Lurker_Above"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Profession Titles\\Fishing\\Salty\\The Coin Master",[[
description This guide will walk you through the steps
description to earn the title Chef
author support@zygorguides.com
#include "H_The_Coin_Master"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Profession Titles\\Fishing\\Salty\\Master Angler of Azeroth",[[
description This guide will walk you through the steps
description to earn the title Salty
author support@zygorguides.com
#include "H_Master_Angler_of_Azeroth"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Profession Titles\\Fishing\\Salty\\Master Angler of Northrend",[[
description This guide will walk you through the steps
description to earn the title Salty
author support@zygorguides.com
#include "H_Master_Angler_of_Northrend"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Insane in the Membrane\\Bloodsail Buccaneers Solo",[[
step
.' You can only kill NPC's in one place alone now as Booty Bay Bruisers require a 5 man group to kill.
.' Click here to farm the small cove with NPC's for Bloodsail Buccaneer Reputation. |confirm always
.' or |only if not completedq(26679)
.' You can click here to run the pirate questline and farm Booty Bay NPC's without level 85 guards attacking you. |only if not completedq(26679)
.' Click here if you would rather run the questline and farm Booty Bay while in a phased zone |confirm always |only if not completedq(26679)
step
label	"blood_quest"
goto The Cape of Stranglethorn,42.1,73.4
.talk 2501
..accept 26593
step
goto 50.4,54.6
.from Elder Mistvale Gorilla##1557+
.get 5 Mistvale Giblets |q 26593/1
step
goto The Cape of Stranglethorn,40.5,67.7
.talk 2502
..turnin 26593
..accept 26594
step
goto 42.1,73.4
.talk 2501
..turnin 26594
..accept 26595
step
goto The Cape of Stranglethorn,56.6,57.6
.from Freewheelin' Juntz Fitztittle##43376
.get Fitztittle's Ratcheting Torque Wrench |q 26595/2
step
goto The Cape of Stranglethorn 57.0,54.4
.click Half-Buried Bottle##204406
..accept 26603
step
goto 57.8,48.6
.talk 43377
.' Tell him, So you kno why I'm here then. all right Midriff, pay up.
.from Ephram "Midriff" Moonfall##43377
.get Ephram's Jeweled Mirror |q 26595/3
step
goto The Cape of Stranglethorn,59.7,49.2
.from Maury "Club Foot" Wilkins##2535
.get Maury's Clubbed Foot |q 26595/1
step
goto The Cape of Stranglethorn 59.4,79.1
.talk 2634
..turnin 26603
..accept 26604
step
goto The Cape of Stranglethorn 58.4,80.4
.from Jaguero Stalker##2522+ |q 26604 |tip They are stealthed around this area, so you may need to search a bit.
step
goto The Cape of Stranglethorn 59.4,79.1
.talk 2634
..turnin 26604
..accept 26605
step
goto The Cape of Stranglethorn 62.6,78.2
.from Skymane Gorilla##2521+
.get Poobah's Tiara##59057 |q 26605/1
.get Poobah's Scepter##59058 |q 26605/2
.get Poobah's Slippers##59059 |q 26605/3
.get Poobah's Diary##59060 |q 26605/4
step
goto The Cape of Stranglethorn 59.4,79.1
.talk 2634
..turnin 26605
..accept 26606
step
goto The Cape of Stranglethorn 63.4,83.2
.from King Mukla##1559+
..get Shackle Key |q 26606/1
step
goto The Cape of Stranglethorn 59.4,79.1
.talk 2634
..turnin 26606
step
goto 42.1,73.4
.talk 2501
..turnin 26595
step
goto 42.6,72.0
.talk 2490
..accept 26609
step
goto 41.3,61.2
.click Bloodsail Correspondence##183
..turnin 26609
..accept 26610
step
goto 42.6,72.0
.talk 2490
..turnin 26610
..accept 26611
step
goto 41.2,73.1
.talk 2496
..turnin 26611
..accept 26612
step
goto 45.0,79.7
.click Bloodsail Orders##220
.get Bloodsail Orders##220 |q 26612/4
step
goto 40.7,82.2
.click Bloodsail Charts##222
.get Bloodsail Charts |q 26612/3
.kill 8 Bloodsail Sea Dog##1565 |q 26612/1
.kill 8 Bloodsail Elder Magus##1653+ |q 26612/2
step
goto 41.2,73.1
.talk 2496
..turnin 26612
..accept 26624
step
goto 43.8,56.5
.talk 43504
..turnin 26624
..accept 26629
step
goto 41.1,73.3
.talk 2487
..accept 26630
step
goto 43.3,71.7
.talk 43505 |tip Upstairs in this store
.' Tell Bossy _Moo_
.' <Do the Deed.>  :'(
.get Cow Head |q 26630/3
step
goto 42.6,69.1
.talk 2663
.' Tell him _I need an extra-large pirate hat._
.get Oversized Pirate Hat |q 26630/2
step
goto 41.1,73.3
.talk 2487
.' Tell him _Here' the head and the hat, Fleet Master._
.' and _You're the boss._
.' Return both items to Fleet Master Seahorn |q 26630/1
..turnin 26630
.get Head of Fleet Master Seahorn |q 26629/1
step
goto The Cape of Stranglethorn,43.8,56.5
.talk 43504
..turnin 26629
..accept 26631
step
goto 44.4,91.5
.talk 2548
..turnin 26631
..accept 26633
step
.' Go up to the ship deck and use a mop to swob a deck
.click Swabbie's Mop##09742
.clicknpc Deck Stains##43511a
.' Swab the decks |q 26633/1 |tip If you have trouble swabbing the decks, you can pay "Pretty Boy" Duncan, on the deck of the ship, 1 gold and he will do it for you.
step
goto 44.5,91.6
.talk 2548
..turnin 26633
step
goto 44.5,93.0
.talk 2545
..accept 26635
step
goto 47.3,95.5
.click Bloodsail Cannonball##153+
.get 6 Bloodsail Cannonball |q 26635/1
step
goto 44.5,92.9
.talk 2545
..turnin 26635
step
goto 44.5,91.9
.talk 2549
..accept 26634
step
goto 41.9,83.0
.click Lime Crate##2350+
.get 5 Bushel of Limes |q 26634/1 |tip You will get attacked by a lime thief when you loot these.
.' You can find more crates around: [40.3,82.9]
.' And [44.9,79.9]
step
goto 44.5,91.9
.talk 2549
..turnin 26634
step
goto 44.5,91.6
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
goto 46.9,94.2
.clicknpc Ol' Blasty##43562 |invehicle |c |q 26647
.' Use your abilities to shoot the target dummy in the boat
.' Hit Smilin' Timmy Sticks with a cannoball 5 times |q 26647/1
step
.' Click the Red Arrow on your action bar to exit the Cannon |outvehicle |c |q 26647
step
goto 46.6,95.0
.talk 2547
..turnin 26647
..accept 26649
step
goto 46.8,95.1
.talk 43556
..accept 26648
step
goto 45.9,89.7
.talk 43605
..' Tell him ahoy matey!
.' Use the abilities on your hotbar to shoot at the Venture Co. Oil Workers |tip They look like goblins working on the metal machines.
.kill 75 Venture Co. Oil Worker##43596+ |q 26649/1
step
.' Tell the Oarsman to Return to Shore |outvehicle |q 26649
step
goto 46.6,95.0
.talk 2547
..turnin 26649
step
goto 56.5,87.1
.' Use Dead-Eye's Flare Gun to reveal the ninja's around this area |use Dead-Eye's Flare Gun##59226
.kill 15 Ninja##43553+ |q 26648/1
.' Click the Complete Quest box in the top right of your screen
.turnin 26648
step
goto 46.7,95.3
.talk 2546
..accept 26650
step
.' Go to the room below the stairs on this boat
.click Captain Stillwater's Charts##222
..turnin 26650
..accept 26662
..accept 26663
..accept 26664
step
goto 51.3,91.4
.talk 43659
.' Tell him, _Long John Copper, is the Brashtide Crew ready for battle_ |tip He's standing in the middle of the boat.
.' Speak with Long John Copper |q 26662/1
step
.' Go to the lower deck of the boat
.' Talk to Bloodsail Corsair
.' Tell them _You're a mutinous dog! Draw steel!_
.kill 9 Bloodsail Corsair##43636+ |q 26664/1
.' Click the Complete Quest box in the right corner
..turnin 26664
step
goto 50.6,91.5
.click Grog Barrel##9095
.' _Nudge the cork._
.'  Sabotage the Grog |q 26663/1
step
goto 46.8,94.2
.talk 43660
.' Tell him _What can you tell me about the Brashtide Crew?_ |tip Standing on the bottom deck of the boat.
.'  Speak with Enormous Shawn Stooker |q 26662/2
step
goto 46.8,93.7
.click Gunpowder Barrel##9095
.' _Pour the water onto the gunpowder_
.'  Sabotage the Gunpowder |q 26663/2
step
goto 44.5,93.2
.talk 43661 |tip Standing in the middle of the boat
.' Tell her _You know the battle plan, right?_
.' Speak with Wailing Mary Smitts |q 26662/3
.' Click the Complete Quest box in the right corner
..turnin 26662
step
goto 44.6,92.8
.click Cannonball Crate##9651
.' _Grease the Cannonballs_
.' Sabotage the Cannonballs |q 26663/3
.' Click the Complete Quest box in the right corner
..turnin 26663
..accept 26665
step
goto 41.2,73.1
.talk 2496
..turnin 26665
..accept 26678
step
goto 40.6,73.2
.click Barrel of Doublerum##32
.' Just down the stairs in the room on the right
.get Barrel of Doublerum |q 26678/1
..turnin 26678
..accept 26679
step
.' _WARNING WARNING WARNING_
.' DO NOT TURN IN THIS QUEST
.' You can kill _Booty Bay citizens_ and gain repuation with the Bloodsail Buccaneers |tip You will lose reputation with ALL Steemwheedle Cartel if you do this
.' Click here to gain reputation with the Bloodsail Buccaneers |confirm |next "Bloodsail_grind"
step
label	"Bloodsail_grind"
.' Kill any Booty Bay Citizen in this area to gain reputation with Bloodsaid Buccaneers |tip To attack them, open your Factions list, scroll down and find Booty Bay. Click on Booty Bay and check the At War box.
.' You will lose reputation with the Steemwheedle Cartel but you will gain 5 points of reputation
.' With each kill
.' Hated with Bloodsail |condition rep('Bloodsail Buccaneers')>=Hated |only if rep('Bloodsail Buccaneers')<=Hated
.' Hostile with Bloodsail |condition rep('Bloodsail Buccaneers')>=Hostile |only if rep('Bloodsail Buccaneers')<=Hostile
.' Unfriendly with Bloodsail |condition rep('Bloodsail Buccaneers')>=Unfriendly |only if rep('Bloodsail Buccaneers')<=Unfriendly
.' Neutral with Bloodsail |condition rep('Bloodsail Buccaneers')>=Neutral |only if rep('Bloodsail Buccaneers')<=Neutral
.' Friendly with Bloodsail |condition rep('Bloodsail Buccaneers')>=Friendly |only if rep('Bloodsail Buccaneers')<=Friendly
.' Honored with Bloodsail |condition rep('Bloodsail Buccaneers')>=Honored
|next "end" |only if default
step
goto 41.3,71.2
.' You can stay here and grind reputation with Booty Bay by killing Bloodsail Corsair
.from Bloodsail Corsair##43726+
.' Hated with Booty Bay |condition rep('Booty Bay')>=Hated |only if rep('Booty Bay')<=Hated
.' Hostile with Booty Bay |condition rep('Booty Bay')>=Hostile |only if rep('Booty Bay')<=Hostile
.' Unfriendly with Booty Bay |condition rep('Booty Bay')>=Unfriendly |only if rep('Booty Bay')<=Unfriendly
.' Neutral with Booty Bay |condition rep('Booty Bay')>=Neutral |only if rep('Booty Bay')<=Neutral
.' Friendly with Booty Bay |condition rep('Booty Bay')>=Friendly |only if rep('Booty Bay')<=Friendly
.' Honored with Booty Bay |condition rep('Booty Bay')>=Honored |only if rep('Booty Bay')<=Honored
.' Revered with Booty Bay |condition rep('Booty Bay')>=Revered |only if rep('Booty Bay')<=Revered
.' Exalted with Booty Bay |condition rep('Booty Bay')>=Exalted |only if rep('Booty Bay')<=Exalted
.' If you are at least Neutral with Booty Bay you can begin doing quests in this Area to gain rep faster.
.' Click here to start questing |confirm |next "booty_quest" |only if rep('Booty Bay')>=Neutral
|next "end" |only if rep('Booty Bay')<=Unfriendly
step
label	"booty_quest"
goto 41.1,73.1
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
.kill 10 Brashtide Raider##43716+ |q 26699/1
step
goto 41.5,73.0
.click Blackwater Rope##7538
.' Swing over to the boat |goto 41.0,70.7,0.5 |noway |c
step
goto 41.4,71.0
.kill 8 Bloodsail Corsair##43726+ |q 26700/1
step
goto 41.1,70.9
.click Blackwater Rope##7538
.' Swing to the docks |goto 41.5,73.0,0.5 |noway |c
step
goto 41.1,73.2
.talk 2496
..turnin 26699
..turnin 26700
..turnin 26695
..accept 26697
step
goto The Cape of Stranglethorn,40.4,73.4
.talk 737
.' Tell him _Sorry, not here to chat. I need a wind rider_ |invehicle |noway |c
step
.' Use the _Throw Handbombs_ key on your action bar
.kill 85 Brashtide Crewman##43717+ |q 26697/1
.' Destoy 6 Brashtide Attack Boats |q 26697/2 |modelnpc 43790
.' Use your _Return to Booty Bay_ button |outvehicle |noway |c
step
goto 41.1,73.2
.talk 2496
..turnin 26697
..accept 26703
step
goto 35.7,66.8
.kill Fleet Master Firallon##2546 |q 26703/1
step
goto 41.2,73.1
.talk 2496
..turnin 26703
|next "end"
step
goto 26.0,83.8
'You can kill only a handful of NPCs here, but due to their relatively quick respawn time you can get about 2000 rep an hour before perks.
.' Click here to do the Booty Bay questline |next "blood_quest"
step
label "end"
'End of Guide
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Insane in the Membrane\\Bloodsail Buccaneers Group",[[
description This Guide will help you get Reputation to earn the title _The Insane_.
author support@zygorguides.com
step
label	"menu"
.' This guide will show you how to earn the Insane in the Membrane Achievement the quickest way possible.
.' Honored with Bloodsail Buccaneers |condition rep('Bloodsail Buccaneeers')>=Honored
.' Click to use the Buccaneers rep Guide |confirm |next "blood_grind"
step
label	"blood_grind"
.' You will need a full group of 4 or 5 people to be able to reasonably farm Booty Bay for Bloodsail Reputation.
.' Once you have acquired a group, including a healer and tank, you can proceed
.' Click to continue |confirm
step
#include "rideto_stranglethorn"
step
goto The Cape of Stranglethorn 42.5,67.4
.' We suggest starting in this tunnel so you do not get overwhelmed by guards.
.' Set your Booty Bay social bar to _At War_ and begin killing Booty Bay Bruisers
.from Booty Bay Bruiser##4624+
.' You will lose reputation with the Steemwheedle Cartel but you will gain 5 points of reputation with each kill
.' Hated with Bloodsail |condition rep('Bloodsail Buccaneers')>=Hated |only if rep('Bloodsail Buccaneers')<=Hated
.' Hostile with Bloodsail |condition rep('Bloodsail Buccaneers')>=Hostile |only if rep('Bloodsail Buccaneers')<=Hostile
.' Unfriendly with Bloodsail |condition rep('Bloodsail Buccaneers')>=Unfriendly |only if rep('Bloodsail Buccaneers')<=Unfriendly
.' Neutral with Bloodsail |condition rep('Bloodsail Buccaneers')>=Neutral |only if rep('Bloodsail Buccaneers')<=Neutral
.' Friendly with Bloodsail |condition rep('Bloodsail Buccaneers')>=Friendly |only if rep('Bloodsail Buccaneers')<=Friendly
.' Honored with Bloodsail |condition rep('Bloodsail Buccaneers')>=Honored
step
label	"end"
.' End of Guide
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Insane in the Membrane\\The Steamwheedle Cartel",[[
description This Guide will help you get Reputation with the Steamwheedle Cartel to earn the title _The Insane_.
author support@zygorguides.com
step
label	"Steam_Menu"
.' To earn the Insane Title, you will need to get your reputation to Exalted with all the
.' Steamwheedle Cartel factions: _Booty Bay_, _Gadgetzan_, _Everlook_, and _Ratchet_. While raising your reputation with these factions
.' you will need to keep Honored status with the _Bloodsail Buccaneers_.
.' Click here to continue |confirm always
step
label	"Steam_Menu2"
.' You are currently _Friendly_ with Booty Bay |only if rep('Booty Bay')==Friendly
.' You are currently _Honored_ with Booty Bay |only if rep('Booty Bay')==Honored
.' You are currently _Revered_ with Booty Bay |only if rep('Booty Bay')==Revered
.' Become Exalted with Booty Bay |condition rep('Booty Bay')==Exalted
.' Click here to raise your Reputation with Booty Bay |confirm always |next "gadget" |only if rep('Booty Bay')<=Revered
.' You are currently _Friendly_ with Gadgetzan |only if rep('Gadgetzan')==Friendly
.' You are currently _Honored_ with Gadgetzan |only if rep('Gadgetzan')==Honored
.' You are currently _Revered_ with Gadgetzan |only if rep('Gadgetzan')==Revered
.' Become Exalted with Gadgetzan |condition rep('Gadgetzan')==Exalted
.' Click here to raise your Reputation with Gadgetzan |confirm always |next "gadget" |only if rep('Gadgetzan')<=Revered
.' You are currently _Friendly_ with Everlook |only if rep('Everlook')==Friendly
.' You are currently _Honored_ with Everlook |only if rep('Everlook')==Honored
.' You are currently _Revered_ with Everlook |only if rep('Everlook')==Revered
.' Become Exalted with Everlook |condition rep('Everlook')==Exalted
.' Click here to raise your Reputation with Everlook |confirm always |next "ratchet" |only if rep('Everlook')<=Revered
.' You are currently _Friendly_ with Ratchet |only if rep('Ratchet')==Friendly
.' You are currently _Honored_ with Ratchet |only if rep('Ratchet')==Honored
.' You are currently _Revered_ with Ratchet |only if rep('Ratchet')==Revered
.' Become Exalted with Ratchet |condition rep('Ratchet')==Exalted
.' Click here to raise your Reputation with Ratchet |confirm always |next "ratchet" |only if rep('Ratchet')<=Revered
|next "end" |only if default
step
label	"gadget"
|fly Gadgetzan
step
goto Tanaris,72.3,47.1
.from Southsea Pirate##7855+, Southsea Swashbuckler##7858+, Southsea Swabbie##40636+, Southsea Musketeer##40632+, Southsea Strongarm##40635+
.' You can find more Pirates around here: [69.5,53.8]
.' Hated |condition rep('Gadgetzan')>=Hated |only if rep('Gadgetzan')>=Hated and rep('Gadgetzan')<=Hated
.' Hostile |condition rep('Gadgetzan')>=Hostile |only if rep('Gadgetzan')>=Hostile and rep('Gadgetzan')<=Hostile
.' Unfriendly |condition rep('Gadgetzan')>=Unfriendly |only if rep('Gadgetzan')>=Unfriendly and rep('Gadgetzan')<=Unfriendly
.' Neutral |condition rep('Gadgetzan')>=Neutral |only if rep('Gadgetzan')>=Neutral and rep('Gadgetzan')<=Neutral
.' Friendly |condition rep('Gadgetzan')>=Friendly |only if rep('Gadgetzan')>=Friendly and rep('Gadgetzan')<=Friendly
.' Honored |condition rep('Gadgetzan')>=Honored |only if rep('Gadgetzan')>=Honored and rep('Gadgetzan')<=Honored
.' Revered |condition rep('Gadgetzan')>=Revered |only if rep('Gadgetzan')>=Revered and rep('Gadgetzan')<=Revered
.' Gain Exalted reputation with Gadgetzan |condition rep('Gadgetzan')==Exalted
.' And
.' Hated |condition rep('Booty Bay')>=Hated |only if rep('Booty Bay')>=Hated and rep('Booty Bay')<=Hated
.' Hostile |condition rep('Booty Bay')>=Hostile |only if rep('Booty Bay')>=Hostile and rep('Booty Bay')<=Hostile
.' Unfriendly |condition rep('Booty Bay')>=Unfriendly |only if rep('Booty Bay')>=Unfriendly and rep('Booty Bay')<=Unfriendly
.' Neutral |condition rep('Booty Bay')>=Neutral |only if rep('Booty Bay')>=Neutral and rep('Booty Bay')<=Neutral
.' Friendly |condition rep('Booty Bay')>=Friendly |only if rep('Booty Bay')>=Friendly and rep('Booty Bay')<=Friendly
.' Honored |condition rep('Booty Bay')>=Honored |only if rep('Booty Bay')>=Honored and rep('Booty Bay')<=Honored
.' Revered |condition rep('Booty Bay')>=Revered |only if rep('Booty Bay')>=Revered and rep('Booty Bay')<=Revered
.' Gain Exalted reputation with Booty Bay |condition rep('Booty Bay')==Exalted
.' Click to go back to the Steamwheedle Menu |confirm always |next "Steam_Menu"
|next "ratchet2"
step
label	"ratchet2"
|fly Ratchet
|next "ratchet3"
step
label	"ratchet"
|fly Ratchet
step
label	"ratchet3"
goto Northern Barrens,77.5,90.1
.from Southsea Privateer##3384+, Southsea Cutthroat##3383+, Glomp##34747, Southsea Recruit##44168+
.' Hated |condition rep('Ratchet')>=Hated |only if rep('Ratchet')>=Hated and rep('Ratchet')<=Hated
.' Hostile |condition rep('Ratchet')>=Hostile |only if rep('Ratchet')>=Hostile and rep('Ratchet')<=Hostile
.' Unfriendly |condition rep('Ratchet')>=Unfriendly |only if rep('Ratchet')>=Unfriendly and rep('Ratchet')<=Unfriendly
.' Neutral |condition rep('Ratchet')>=Neutral |only if rep('Ratchet')>=Neutral and rep('Ratchet')<=Neutral
.' Friendly |condition rep('Ratchet')>=Friendly |only if rep('Ratchet')>=Friendly and rep('Ratchet')<=Friendly
.' Honored |condition rep('Ratchet')>=Honored |only if rep('Ratchet')>=Honored and rep('Ratchet')<=Honored
.' Revered |condition rep('Ratchet')>=Revered |only if rep('Ratchet')>=Revered and rep('Ratchet')<=Revered
.' Gain Exalted reputation with Ratchet |condition rep('Ratchet')==Exalted
.' And
.' Hated |condition rep('Everlook')>=Hated |only if rep('Everlook')>=Hated and rep('Everlook')<=Hated
.' Hostile |condition rep('Everlook')>=Hostile |only if rep('Everlook')>=Hostile and rep('Everlook')<=Hostile
.' Unfriendly |condition rep('Everlook')>=Unfriendly |only if rep('Everlook')>=Unfriendly and rep('Everlook')<=Unfriendly
.' Neutral |condition rep('Everlook')>=Neutral |only if rep('Everlook')>=Neutral and rep('Everlook')<=Neutral
.' Friendly |condition rep('Everlook')>=Friendly |only if rep('Everlook')>=Friendly and rep('Everlook')<=Friendly
.' Honored |condition rep('Everlook')>=Honored |only if rep('Everlook')>=Honored and rep('Everlook')<=Honored
.' Revered |condition rep('Everlook')>=Revered |only if rep('Everlook')>=Revered and rep('Everlook')<=Revered
.' Gain Exalted reputation with Everlook |condition rep('Everlook')==Exalted
.' Click to go back to the Steamwheedle Menu |confirm always |next "Steam_Menu2"
|next "Steam_Menu2"
step
label	"end"
.' Congratulations! You are honored with the Steamwheedle Cartel!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Insane in the Membrane\\Ravenholdt",[[
description This Guide will help you get Reputation with Ravenholdt to earn the title _The Insane_.
author support@zygorguides.com
step
'In order to get exalted with Ravenholdt Faction, you need to grind mobs to 11,999/12,000 Honored reputation.
.'Once you've reached Honored, you will need to collect a lot of Heavy Junkboxes.  If you aren't a rogue, you will need the assistance of one.
.' You can get a lot of Heavy Junkboxes frequently if you go to Blackrock Spire, but unless you're an engineer, it will be time consuming to run back and forth to a mailbox to clear up space.
.' You can farm Syndicate mobs at [Arathi Highlands,27.1,30.6] - [Arathi Highlands,19.5,61.9] - or around [Hillsbrad Foothills,57.9,25.3]
|confirm always
step
#include "rideto_tirisfal"
step
|fly Hammerfall
step
goto Arathi Highlands,27.1,30.6
.from Syndicate Mercenary##2589+, Syndicate Highwayman##2586+, Syndicate Pathstalker##2587+  .from Syndicate Conjuror##2590+, Syndicate Magus##2591+, Syndicate Thief##24477+, Syndicate Prowler##2588+
.' You can find more Syndicate here: [Arathi Highlands,19.5,61.5]
.' Reach _11,999/12,000_ Honored with Ravenholdt. |tip You can only get 1 point away from Revered by grinding, than you will have to do quests.
.' Click here to continue |confirm always
step
label	"boxes"
.' Now that you have reached Revered, or close to it, you will need to do repeatable quests until exalted.
.' The only thing you need for the repeatable quests are _Heavy Junkboxes_.
.' You can get these by having a _Rogue_ pickpocket mobs in the Blackrock Spire Dungeon. |tip You can also announce in the Trade Chat of any major city that you are willing to purchase Heavy Junkboxes in multiples of 5, whether by mail or in person for x amount of gold.
.' You will need to turnin a total of 7000 unopened _Heavy Junkboxes_, to go from _Revered_ to _Exalted_.
.collect Heavy Junkbox##16885+ |n
.' Click here to continue and turn in your Boxes. |confirm always
step
#include "rideto_tirisfal"
step
|fly Hammerfall
step
goto Hillsbrad Foothills,70.6,45.7
.talk 6707
..accept 8249 |instant |repeatable |n
.' Reached Honored with Ravenholdt |condition rep('Ravenholdt')>=Honored
.' Reached Revered with Ravenholdt |condition rep('Ravenholdt')>=Revered
.' Reach Exalted with Ravenholdt |condition rep('Ravenholdt')==Exalted
.' or
.' Click here to get more _Heavy Junkboxes_ |confirm always |next "boxes"
step
label	"end"
.' Congratulations, you have reached Exalted with Ravenholdt! |condition rep('Ravenholdt')==Exalted
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Insane in the Membrane\\Darkmoon Faire",[[
description This Guide will help you get Reputation with The Darkmoon Faire to earn the title _The Insane_.
author support@zygorguides.com
step
'The Darkmoon Faire starts the first Sunday of the month and lasts for one week. The easiest way to earn reputation with
'the Darkmoon Faire is to do dailies on Darkmoon Faire Island every day that the Faire is in town.
|confirm
step
'Look at Zygor's Darkmoon Faire Dailies Guide for more information on dailies.
'You can also earn reputation by turning in Darkmoon Decks. Click here to view the Darkmoon Deck statistics. |next cards |confirm
step
label	"cards"
.' Cards may be the most expensive turnin for the Faire, but they also provide the most reputation.
.' The higher level of card that you turn in, the more reputation you will receive.
.' You will receive 350 reputation for turning in any Epic Darkmoon Decks and 25 reputation for rogues decks.
.' This means that without guild perks you need 109 epic decks or 1520 rogues decks to become Exalted from Friendly.
.' Reach Neutral with Darkmoone Faire |condition rep('Darkmoon Faire')>=Neutral
.' Reach Friendly with Darkmoone Faire |condition rep('Darkmoon Faire')>=Friendly
.' Reach Honored with Darkmoone Faire |condition rep('Darkmoon Faire')>=Honored
.' Reach Revered with Darkmoone Faire |condition rep('Darkmoon Faire')>=Revered
.' Reach Exalted with Darkmoone Faire |condition rep('Darkmoon Faire')>=Exalted
|next "end"
step
label	"end"
' Congratulations, you have reached Exalted with The Darkmoon Faire! |condition rep('Darkmoon Faire')>=Exalted
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Champion of the Frozen Wastes",[[
author support@zygorguides.com
step
'This title is earned by completing the _Champion of the Frozen Wastes_ achievement.
'Complete every Wrath of the Lich King Heroic Instance, with the exception of The Forge of Souls, the Pit of Saron, and the Halls of Reflection. Then defeat the final bosses in The Eye of Eternity, Naxxramas, and The Obsidian Sanctum.
|achieve 1658
step
'Congratulations! You have earned the title "Champion of the Frozen Wastes"!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Defender of a Shattered World",[[
author support@zygorguides.com
step
'This title is earned by completing the _Defender of a Shattered World_ achievement.
'Complete the following instances on Heroic difficulty: Blackrock Caverns, Throne of the Tides, The Stonecore, The Vortex Pinnacle, Grim Batol, Halls of Origination, Lost City of Tol'vir, Deadmines, and Shadowfang Keep.
'Complete the following raid instances: Blackwing Descent, Throne of the Four Winds, and The Bastion of Twilight.
|achieve 5506
step
'Congratulations! You have earned the title "Defender of a Shattered World"!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Of the Nightfall",[[
author support@zygorguides.com
step
'This title is earned by completing the _The Twilight Zone (10 player)_ achievement from The Obsidian Sanctum.
'Traverse The Obsidian Sanctum and defeat Sartharion with three Twilight Drakes still alive.
.from Sartharion##28860
|achieve 2051
step
'Congratulations! You have earned the title "of the Nightfall"!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Twilight Vanquisher",[[
author support@zygorguides.com
step
'This title is earned by completing the _The Twilight Zone (25 player)_ achievement from The Obsidian Sanctum.
'Traverse The Obsidian Sanctum and defeat Sartharion with three Twilight Drakes still alive.
.from Sartharion##28860
|achieve 2054
step
'Congratulations! You have earned the title Twilight Vanquisher!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Starcaller",[[
author support@zygorguides.com
step
'This title is earned by completing the _Observed (10 player)_ achievement from Ulduar.
'Traverse Ulduar and defeat Algalon the Observer.
.from Algalon the Observer##32871
|achieve 3036
step
'Congratulations! You have earned the title Starcaller!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\The Astral Walker",[[
author support@zygorguides.com
step
'This title is earned by completing the _Observed (25 player)_ achievement from Ulduar.
'Traverse Ulduar and defeat Algalon the Observer.
.from Algalon the Observer##32871
|achieve 3037
step
'Congratulations! You have earned the title The Astral Walker
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\The Kingslayer",[[
author support@zygorguides.com
step
'This title is earned by completing the _"The Frozen Throne"_ achievement from the Icecrown Citadel raid. This can be completed on either 10 or 25 player.
'Traverse Icecrown Citadel raid and defeat The Lich King.
.from The Lich King##36597
|achieve 4530 |or
|achieve 4597 |or
step
'Congratulations! You have earned the title The Kingslayer!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Bane of the Fallen King",[[
author support@zygorguides.com
step
'This title is earned by completing the _Bane of the Fallen King_ achievement from 10 player Heroic: Icecrown Citadel.
'Traverse Icecrown Citadel on Heroic difficulty and defeat The Lich King.
.from The Lich King##36597
|achieve 4583
step
'Congratulations! You have earned the title Bane of the Fallen King!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\The Light of Dawn",[[
author support@zygorguides.com
step
'This title is earned by completing the _"The Light of Dawn"_ achievement from 25 player Heroic: Icecrown Citadel.
'Traverse Icecrown Citadel on Heroic difficulty and defeat The Lich King.
.from The Lich King##36597
|achieve 4584
step
'Congratulations! You have earned the title The Light of Dawn!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Of the Ashen Verdict",[[
step
'This title is gained by becoming Exalted with The Ashen Verdict reputation.
'This reputation can be earned by running the Icecrown Citadel raid.
|confirm
step
'This will _require_ you to be in a _raid group_.
.' To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
label start
#include "rideto_borean"
step
|fly The Argent Vanguard
step
goto Icecrown 53.8,87.1
.' Enter Icecrown Citadel here. |goto Icecrown 53.8,87.1 <5 |noway |c
step
'Kill every creature that is hostile in this instance in order to gain reputation. |tip You will have to clear this place a few times to reach Exalted.
'Click here to go back to the beginning of the guide |next "start" |confirm
'Earn Exalted status with the Ashen Verdict |condition rep('Ashen Verdict')==Exalted |next "exalted"
step
label exalted
'Congratulations! You have earned the title "of the Ashen Verdict"!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Dragonslayer",[[
author support@zygorguides.com
step
'This title is earned by completing the _Heroic: Sinestra_ achievement from Heroic: The Bastion of Twilight.
'Traverse The Bastion of Twilight on Heroic difficulty and defeat Sinestra.
.from Sinestra##45213
|achieve 5121
step
'Congratulations! You have earned the title Dragonslayer!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Of the Four Winds",[[
author support@zygorguides.com
step
'This title is earned by completing the _Heroic: Al'Akir_ achievement from Heroic: Throne of the Four Winds. This can be completed on either 10 or 25 player.
'Traverse the Throne of the Four Winds on Heroic difficulty and defeat Al'Akir.
.from Al'Akir##46753
|achieve 5123
step
'Congratulations! You have earned the title "of the Four Winds"!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Blackwing's Bane",[[
author support@zygorguides.com
step
'This title is earned by completing the _Heroic: Nefarian_ achievement from Heroic: Blackwing Descent.
'Traverse Blackwing Descent on Heroic difficulty and defeat Nefarian.
.from Nefarian##41376
|achieve 5116
step
'Congratulations! You have earned the title Blackwing's Bane!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Firelord",[[
author support@zygorguides.com
step
'This title is earned by completing the _Heroic: Ragnaros_ achievement from Heroic: Firelands. This can be completed on either 10 or 25 player.
'Traverse the Firelands on Heroic difficulty and defeat Ragnaros.
.from Ragnaros##41634
|achieve 5803
step
'Congratulations! You have earned the title Firelord!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Avenger of Hyjal",[[
author support@zygorguides.com
step
'This title is gained by becoming Exalted with The Avengers of Hyjal reputation.
'This reputation can be gained by running the Firelands raid.
'A full run will grant roughly 2400 reputation.
|confirm
step
'This will _require_ you to be in a _raid group_.
.' To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
#include port_hyjal
step
goto Mount Hyjal 47.2,78.1
'Enter the Firelands here |goto Mount Hyjal 47.2,78.1 <5 |noway |c
step
'Kill every creature that is hostile in this instance in order to gain reputation. |tip This will only work until you reach Honored, after that only bosses and larger mobs will grant reputation.
'Click here to go back to the beginning of the guide |next "start" |confirm
'Earn Exalted status with the Avengers of Hyjal |condition rep('Avengers of Hyjal')==Exalted |next "exalted"
step
label exalted
'Congratulations! You have earned the title Avenger of Hyjal!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Destroyer's End",[[
author support@zygorguides.com
step
'This title is earned by completing the _Destroyer's End_ achievement from the Dragon Soul raid. This can be completed on either 10 or 25 player and on either Normal or Heroic difficulty.
'Traverse Dragon Soul and defeat Deathwing.
.from Deathwing##56173
|achieve 6177
step
'Congratulations! You have earned the title Destroyer's End!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Raid Titles\\Savior of Azeroth",[[
author support@zygorguides.com
step
'This title is earned by completing the _Heroic: Madness of Deathwing_ achievement from Heroic. This can be completed on either 10 or 25 player.
'Traverse Dragon Soul on Heroic Difficulty and defeat Deathwing.
.from Deathwing##56173
|achieve 6116
step
'Congratulations! You have earned the title Savior of Azeroth!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Explorer Achievement\\Kalimdor",[[
description This guide section will walk you through completing
description the Explorer achievement.
author support@zygorguides.com
step
' This guide assumes you have a flying mount and can fly in Azeroth as well. You can do this
.' without having a flying mount but it will be much more efficient with one.
|confirm always
step
label	"start"
' Explore Durotar |achieve 728
' Explore Northern Barrens |achieve 750
' Explore Southern Barrens |achieve 4996
' Explore Dustwallow Marsh |achieve 850
' Explore Thousand Needles |achieve 846
' Explore Tanaris |achieve 851
' Explore Un'Goro Crater |achieve 854
' Explore Uldum |achieve 4865
' Explore Silithus |achieve 856
' Explore Feralas |achieve 849
' Explore Desolace |achieve 848
' Explore Mulgore |achieve 736
' Explore Stonetalon Mountains |achieve 847
' Explore Ashenvale |achieve 845
' Explore Mount Hyjal |achieve 4863
' Explore Winterspring |achieve 857
' Explore Azshara |achieve 852
' Explore Moonglade |achieve 855
' Explore Felwood |achieve 853
' Explore Darkshore |achieve 844
' Explore Teldrassil |achieve 842
' Explore Azuremyst Isle |achieve 860
' Explore Bloodmyst Isle |achieve 861
|confirm always
step
'Skipping next part of guide |next "+n_barrens" |only if step:Find("+durotar"):IsComplete()
'Proceeding next step |next |only if default
step
goto Orgrimmar,45.4,8.5
.' Discover Orgrimmar |achieve 728/12
step
goto Durotar,54.0,9.0
.' Discover Skull Rock |achieve 728/11
step
goto 52.4,24.2
.' Discover Drygulch Ravine |achieve 728/10
step
goto 53.5,43.4
.' Discover Razor Hill |achieve 728/7
step
goto 58.1,60.2
.' Discover Tiragarde Keep |achieve 728/6
step
goto 66.6,82.9
.' Discover Echo Isles |achieve 728/5
step
goto 56.1,75.8
.' Discover Sen'jin Village |achieve 728/4
step
goto 48.5,79.1
.' Discover Northwatch Foothold |achieve 728/2
step
goto 44.5,62.2
.' Discover Valley of Trials |achieve 728/1
step
goto 44.6,50.6
.' Discover Razormane Grounds |achieve 728/8
step
goto 40.5,40.0
.' Discover Southfury Watershed |achieve 728/3
step
goto 40.3,24.7
.' Discover Thunder Ridge |achieve 728/9
step
label	"durotar"
'Explore Durotar |achieve 728
step
label	"n_barrens"
'Skipping next part of guide |next "+s_barrens" |only if step:Find("+n_barrens1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Northern Barrens,67.2,12.1
.' Discover Boulder Lode Mine |achieve 750/1
step
goto 55.7,18.5
.' Discover The Sludge Fen |achieve 750/4
step
goto 39.6,14.1
.' Discover The Mor'shan Rampart |achieve 750/3
step
goto 25.5,31.7
.' Discover The Dry Hills |achieve 750/6
step
goto 36.8,45.9
.' Discover The Forgotten Pools |achieve 750/7
step
goto 43.1,35.4
.' Discover Dreadmist Peak |achieve 750/5
step
goto 54.9,41.1
.' Discover Grol'dom Farm |achieve 750/8
step
goto 67.0,41.3
.' Discover Far Watch Post |achieve 750/9
step
goto 58.8,50.0
.' Discover Thorn Hill |achieve 750/10
step
goto 50.2,57.3
.' Discover The Crossroads |achieve 750/11
step
goto 40.3,73.9
.' Discover Lushwater Oasis |achieve 750/2
step
goto 55.7,78.6
.' Discover The Stagnant Oasis |achieve 750/12
step
goto 70.3,84.1
.' Discover The Merchant Coast |achieve 750/14
step
label	"n_barrens1"
'Explore Northern Barrens |achieve 750
step
label	"s_barrens"
'Skipping next part of guide |next "+dustwallow" |only if step:Find("+s_barrens1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Southern Barrens,68.8,49.1
.' Discover Northwatch Hold |achieve 4996/7
step
goto 52.2,48.6
.' Discover Forward Command |achieve 4996/3
step
goto 47.8,33.68
.' Discover The Overgrowth |achieve 4996/10
step
goto 39.3,22.3
.' Discover Hunter's Hill |achieve 4996/6
step
goto 36.5,11.1
.' Discover Honor's Stand |achieve 4996/5
step
goto 42.4,44.0
.' Discover Vendetta Point |achieve 4996/11
step
goto 44.9,54.3
.' Discover Ruins of Taurajo |achieve 4996/9
step
goto 41.0,78.2
.' Discover Frazzlecraz Motherlode |achieve 4996/4
step
goto 50.7,84.0
.' Discover Bael Modan |achieve 4996/1
step
label	"s_barrens1"
'Explore Southern Barrens |achieve 4996
step
label	"dustwallow"
'Skipping next part of guide |next "+thousand" |only if step:Find("+dustwallow1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Dustwallow Marsh,29.7,49.0
.' Discover Shady Rest Inn |achieve 850/5
step
goto 36.3,30.4
.' Discover Brackenwall Village |achieve 850/7
step
goto 41.4,12.4
.' Discover Blackhoof Village |achieve 850/2
step
goto 76.0,17.5
.' Discover Alcaz Island |achieve 850/9
step
goto 61.5,30.2
.' Discover Dreadmurk Shore |achieve 850/6
step
goto 67.1,49.8
.' Discover Theramore Isle |achieve 850/1
step
goto 46.6,46.1
.' Discover Direhorn Post |achieve 850/3
step
goto 41.4,75.1
.' Discover Mudsprocket |achieve 850/4
step
goto 43.4,75.5
.' Discover Wyrmbog |achieve 850/8
step
label	"dustwallow1"
' Explore Dustwallow Marsh |achieve 850
step
label	"thousand"
'Skipping next part of guide |next "+tanaris" |only if step:Find("+thousand1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Thousand Needles,88.4,47.8
.' Discover Splithoof Heights |achieve 846/10
step
goto 51.7,30.0
.' Discover Razorfen Downs |achieve 846/2
step
goto 33.6,38.6
.' Discover Darkcloud Pinnacle |achieve 846/8
step
goto 32.1,18.3
.' Discover The Great Lift |achieve 846/1
step
goto 13.4,10.3
.' Discover Westreach Summit |achieve 846/7
step
goto 13.1,37.5
.' Discover Highperch |achieve 846/12
step
goto 31.1,58.8
.' Discover Twilight Bulwark |achieve 846/6
step
goto 47.0,50.7
.' Discover Freewind Post |achieve 846/9
step
goto 54.9,63.2
.' Discover The Twilight Withering |achieve 846/5
step
goto 67.1,85.7
.' Discover Sunken Dig Site |achieve 846/3
step
goto 92.4,78.8
.' Discover Southsea Holdfast |achieve 846/4
step
label	"thousand1"
' Explore Thousand Needles |achieve 846
step
label	"tanaris"
'Skipping next part of guide |next "+ungoro" |only if step:Find("+tanaris1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Tanaris,37.3,14.3
.' Discover Zul'Farrak |achieve 851/15
step
goto 40.9,27.3
.' Discover Sandsorrow Watch |achieve 851/2
step
goto 52.3,45.4
.' Discover Broken Pillar |achieve 851/6
step
goto 55.1,40.9
.' Discover Abyssal Sands |achieve 851/5
step
goto 64.2,50.0
.' Discover Caverns of Time |achieve 851/16
step
goto 71.6,49.4
.' Discover Lost Rigger Cove |achieve 851/4
step
goto 63.0,59.2
.' Discover Southbreak Shore |achieve 851/9
step
goto 53.7,67.6
.' Discover The Gaping Chasm |achieve 851/10
step
goto 53.6,91.7
.' Discover Land's End Beach |achieve 851/12
step
goto 37.8,77.7
.' Discover Valley of the Watchers |achieve 851/3
step
goto 40.8,70.6
.' Discover  Southmoon Ruins |achieve 851/13
step
goto 47.2,64.9
.' Discover Eastmoon Ruins |achieve 851/11
step
goto 30.4,66.4
.' Discover Thistleshrub Valley |achieve 851/14
step
goto 41.0,55.5
.' Discover Dunemaul Compound |achieve 851/8
step
goto 34.3,45.3
.' Discover The Noxious Lair |achieve 851/7
step
label	"tanaris1"
' Explore Tanaris |achieve 851
step
label	"ungoro"
'Skipping next part of guide |next "+uldum" |only if step:Find("+ungoro1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Un'Goro Crater,77.1,39.2
.' Discover Ironstone Plateau |achieve 854/11
step
goto 39.2,34.3
.' Discover The Roiling Gardens |achieve 854/5
step
goto 65.7,14.3
.' Discover Fungal Rock |achieve 854/2
step
goto 51.4,25.6
.' Discover Lakkari Tar Pits |achieve 854/12
step
goto 42.2,41.7
.' Discover Mossy Pile |achieve 854/4
step
goto 29.0,35.8
.' Discover The Screaming Reaches |achieve 854/6
step
goto 34.4,54.0
.' Discover Golakka Hot Springs |achieve 854/7
step
goto 33.2,70.7
.' Discover Terror Run |achieve 854/8
step
goto 54.5,48.0
.' Discover Fire Plume Ridge |achieve 854/1
step
goto 54.0,60.9
.' Discover Marshal's Stand |achieve 854/3
step
goto 67.9,54.8
.' Discover The Marshlands |achieve 854/10
step
goto 51.1,77.5
.' Discover The Slithering Scar |achieve 854/9
step
label	"ungoro1"
' Explore Un'Goro Crater |achieve 854
step
label	"uldum"
'Skipping next part of guide |next "+silithus" |only if step:Find("+uldum1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Uldum,64.5,16.1
.' Discover Khartut's Tomb |achieve 4865/3
step
goto 69.0,21.8
.' Discover The Gate of Unending Cycles |achieve 4865/19
step
goto 64.6,31.8
.' Discover Obelisk of the Stars |achieve 4865/9
step
goto 67.1,40.9
.' Discover Nahorn |achieve 4865/6
step
goto 84.7,52.8
.' Discover The Cursed Landing |achieve 4865/18
step
goto 80.3,60.0
.' Discover The Trail of Devastation |achieve 4865/21
step
goto 63.9,73.3
.' Discover Lost City of the Tol'vir |achieve 4865/4
step
goto 51.2,82.0
.' Discover Neferset City |achieve 4865/7
step
goto 43.7,70.4
.' Discover Cradle of the Ancients |achieve 4865/2
step
goto 45.6,56.2
.' Discover Obelisk of the Sun |achieve 4865/10
step
goto 54.3,52.2
.' Discover Akhenet Fields |achieve 4865/1
step
goto 58.3,40.9
.' Discover Vir'naal Dam |achieve 4865/22
step
goto 60.5,39.2
.' Discover Tahret Grounds |achieve 4865/16
step
goto 54.8,32.4
.' Discover Ramkahen |achieve 4865/12
step
goto 49.0,38.4
.' Discover Mar'at |achieve 4865/5
step
goto 46.1,15.5
.' Discover Ruins of Ahmtul |achieve 4865/13
step
goto 40.8,22.9
.' Discover Obelisk of the Moon |achieve 4865/8
step
goto 33.7,30.9
.' Discover Temple of Uldum |achieve 4865/17
step
goto 40.5,39.9
.' Discover Orsis |achieve 4865/11
step
goto 32.1,65.5
.' Discover Ruins of Ammon |achieve 4865/14
step
goto 20.8,61.8
.' Discover Schnottz's Landing |achieve 4865/15
step
label	"uldum1"
' Explore Uldum |achieve 4865
step
label	"silithus"
'Skipping next part of guide |next "+feralas" |only if step:Find("+silithus1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Silithus,60.0,71.7
.' Discover Hive'Regal |achieve 856/5
step
goto 32.0,78.9
.' Discover The Scarab Wall |achieve 856/6
step
goto 31.4,53.8
.' Discover Hive'Zora |achieve 856/4
step
goto 30.9,16.0
.' Discover The Crystal Vale |achieve 856/1
step
goto 49.4,22.4
.' Discover Hive'Ashi |achieve 856/7
step
goto 54.4,34.2
.' Discover Cenarion Hold |achieve 856/3
step
goto 65.3,47.4
.' Discover Southwind Village |achieve 856/2
step
goto 81.3,17.8
.' Discover Valor's Rest |achieve 856/8
step
label	"silithus1"
' Explore Silithus |achieve 856
step
label	"feralas"
'Skipping next part of guide |next "+desolace" |only if step:Find("+feralas1"):IsComplete()
'Proceeding next step |next |only if default
step
goto  Feralas,75.9,62.4
.' Discover The Writhing Deep |achieve 849/8
step
goto 83.0,40.9
.' Discover Lower Wilds |achieve 849/1
step
goto 76.5,44.4
.' Discover Camp Mojache |achieve 849/9
step
goto 75.6,29.8
.' Discover Gordunni Outpost |achieve 849/11
step
goto 68.7,40.3
.' Discover Grimtotem Compound |achieve 849/10
step
goto 60.4,35.6
.' Discover Dire Maul |achieve 849/5
step
goto 67.7,58.5
.' Discover Darkmist Ruins |achieve 849/12
step
goto 58.6,73.0
.' Discover Ruins of Isildien |achieve 849/7
step
goto 55.4,56.2
.' Discover Feral Scar Vale |achieve 849/6
step
goto 49.7,49.2
.' Discover The Forgotten Coast |achieve 849/4
step
goto 45.8,49.6
.' Discover Feathermoon Stronghold |achieve 849/13
step
goto 28.5,49.1
.' Discover Ruins of Feathermoon |achieve 849/2
step
goto 46.3,17.9
.' Discover The Twin Colossals |achieve 849/3
step
label	"feralas1"
' Explore Ferals |achieve 849
step
label	"desolace"
'Skipping next part of guide |next "+mulgore" |only if step:Find("+desolace1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Desolace,36.1,88.6
.' Discover Gelkis Village |achieve 848/12
step
goto 51.3,78.5
.' Discover Mannoroc Coven |achieve 848/13
step
goto 36.5,69.9
.' Discover Thargad's Camp |achieve 848/2
step
goto 24.2,70.9
.' Discover Shadowprey Village |achieve 848/11
step
goto 35.34,57.2
.' Discover Valley of Spears |achieve 848/9
step
goto 29.9,29.4
.' Discover Slitherblade Shore |achieve 848/16
step
goto 28.7,9.01
.' Discover Ranazjar Isle |achieve 848/8
step
goto 51.5,10.0
.' Discover Tethris Aran |achieve 848/1
step
goto 54.5,25.2
.' Discover Thunder Axe Fortress |achieve 848/5
step
goto 66.7,8.7
.' Discover Nijel's Point |achieve 848/3
step
goto 78.2,21.6
.' Discover Sargeron |achieve 848/4
step
goto 74.7,45.6
.' Discover Magram Territory |achieve 848/7
step
goto 56.1,47.3
.' Discover Cenarion Wildlands |achieve 848/6
step
goto 50.7,59.0
.' Discover Kodo Graveyard |achieve 848/10
step
goto 70.6,74.8
.' Discover Shok'Thokar |achieve 848/14
step
goto 80.3,79.3
.' Discover Shadowbreak Ravine |achieve 848/15
step
label	"desolace1"
' Explore Desolace |achieve 848
step
label	"mulgore"
'Skipping next part of guide |next "+stonetalon" |only if step:Find("+mulgore1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Mulgore,32.3,50.6
.' Discover Bael'dun Digsite |achieve 736/10
step
goto 35.5,61.3
.' Discover Palemane Rock |achieve 736/2
step
goto 53.8,85.8
.' Discover Red Cloud Mesa |achieve 736/1
step
goto 53.7,66.7
.' Discover Winterhoof Water Well |achieve 736/4
step
goto 47.8,58.4
.' Discover Bloodhoof Village |achieve 736/3
step
goto 61.1,60.5
.' Discover The Rolling Plains |achieve 736/5
step
goto 62.7,42.6
.' Discover The Venture Co. Mine |achieve 736/6
step
goto 54.2,47.9
.' Discover Ravaged Caravan |achieve 736/7
step
goto 44.9,43.5
.' Discover Thunderhorn Water Well |achieve 736/9
step
goto 59.82,19.9
.' Discover Red Rocks |achieve 736/11
step
goto 54.2,20.9
.' Discover The Golden Plains |achieve 736/8
step
goto 43.1,14.2
.' Discover Wildmane Water Well |achieve 736/13
step
label	"mulgore1"
' Explore Mulgore |achieve 736
step
label "stonetalon"
'Skipping next part of guide |next "+ashenvale" |only if step:Find("+stonetalon1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Stonetalon Mountains,72.6,92.4
.' Discover Malaka'jin |achieve 847/9
step
goto 76.7,75.8
.' Discover Unearthed Grounds |achieve 847/5
step
goto 69.6,85.1
.' Discover Greatwood Vale |achieve 847/12
step
goto 63.4,88.7
.' Discover Boulderslide Ravine |achieve 847/11
step
goto 59.6,78.9
.' Discover Webwinder Path |achieve 847/10
step
goto 57.2,72.7
.' Discover Webwinder Hollow |achieve 847/6
step
goto 48.8,76.3
.' Discover Ruins of Eldre'thar |achieve 847/3
step
goto 49.3,63.4
.' Discover Sun Rock Retreat |achieve 847/12
step
goto 31.6,71.5
.' Discover The Charred Vale |achieve 847/15
step
goto 37.0,54.3
.' Discover Battlescar Valley |achieve 847/1
step
goto 35.8,31.5
.' Discover Thal'darah Overlook |achieve 847/4
step
goto 40.9,19.9
.' Discover Stonetalon Peak |achieve 847/17
step
goto 45.1,30.2
.' Discover Cliffwalker Post |achieve 847/8
step
goto 51.6,47.3
.' Discover Mirkfallon Lake |achieve 847/16
step
goto 59.1,57.7
.' Discover Windshear Hold |achieve 847/7
step
goto 66.9,66.2
.' Discover Krom'gar Fortress |achieve 847/2
step
goto 66.9,49.3
.' Discover Windshear Crag |achieve 847/13
step
label	"stonetalon1"
' Explore Stonetalon Mountains |achieve 847
step
label	"ashenvale"
'Skipping next part of guide |next "+hyjal" |only if step:Find("+ashenvale1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Ashenvale,32.6,65.6
.' Discover The Ruins of Stardust |achieve 845/10
step
goto 35.9,50.2
.' Discover Astranaar |achieve 845/9
step
goto 21.4,55.3
.' Discover The Shrine of Aessina |achieve 845/8
step
goto 20.2,41.1
.' Discover Lake Falathim |achieve 845/5
step
goto 27.5,37.7
.' Discover Maestra's Post |achieve 845/6
step
goto 26.0,19.7
.' Discover Orendil's Retreat |achieve 845/2
step
goto 37.0,32.9
.' Discover Thistlefur Village |achieve 845/7
step
goto 48.9,46.4
.' Discover Thunder Peak |achieve 845/4
step
goto 53.2,32.6
.' Discover The Howling Vale |achieve 845/11
step
goto 59.7,50.0
.' Discover Raynewood Retreat |achieve 845/12
step
goto 68.2,47.9
.' Discover Splintertree Post |achieve 845/14
step
goto 80.4,49.7
.' Discover Satyrnaar |achieve 845/15
step
goto 83.1,65.3
.' Discover Felfire Hill |achieve 845/18
step
goto 87.4,58.6
.' Discover Warsong Lumber Camp |achieve 845/17
step
goto 93.4,39.2
.' Discover Bough Shadow |achieve 845/16
step
label	"ashenvale1"
' Explore Ashenvale |achieve 845
step
label "hyjal"
'Skipping next part of guide |next "+winter" |only if step:Find("+hyjal1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Mount Hyjal,72.5,76.7
.' Discover Gates of Sothann |achieve 4863/5
step
goto 76.0,64.9
.' Discover Darkwhisper Gorge |achieve 4863/4
step
goto 53.4,55.1
.' Discover The Scorched Plain |achieve 4863/10
step
goto 45.3,80.5
.' Discover The Throne of Flame |achieve 4863/11
step
goto 31.4,84.9
.' Discover Sethria's Roost |achieve 4863/7
step
goto 25.5,64.5
.' Discover Rim of the World |achieve 4863/1
step
goto 31.8,53.5
.' Discover Ashen Lake |achieve 4863/3
step
goto 32.9,51.2
.' Discover The Flamewake |achieve 4863/9
step
goto 28.5,27.5
.' Discover Shrine of Goldrinn |achieve 4863/8
step
goto 45.1,26.0
.' Discover The Circle of Cinders |achieve 4863/2
step
goto 63.4,21.0
.' Discover Nordrassil |achieve 4863/6
step
label	"hyjal1"
' Explore Mount Hyjal |achieve 4863
step
label	"winter"
'Skipping next part of guide |next "+azshara" |only if step:Find("+winter1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Winterspring,59.8,85.5
.' Discover Frostwhisper Gorge |achieve 857/12
step
goto 64.5,77.2
.' Discover Owl Wing Thicket |achieve 857/9
step
goto 67.8,64.4
.' Discover Ice Thistle Hills |achieve 857/8
step
goto 68.1,48.5
.' Discover Winterfall Village |achieve 857/9
step
goto 59.9,48.9
.' Discover Everlook |achieve 857/6
step
goto 62.7,24.7
.' Discover The Hidden Grove |achieve 857/10
step
goto 45.3,15.4
.' Discover Frostsaber Rock |achieve 857/11
step
goto 47.7,39.1
.' Discover Starfall Village |achieve 857/4
step
goto 51.1,55.1
.' Discover Lake Kel'Theril |achieve 857/3
step
goto 54.8,62.9
.' Discover Mazthoril |achieve 857/5
step
goto 36.4,56.7
.' Discover Timbermaw Post |achieve 857/2
step
goto 31.9,49.3
.' Discover Frostfire Hot Springs |achieve 857/1
step
label	"winter1"
' Explore Winterspring |achieve 857
step
label	"azshara"
'Skipping next part of guide |next "+moon" |only if step:Find("+azshara1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Azshara,52.25,26.95
.' Discover Darnassian Base Camp |achieve 852/4
step
goto 73.69,20.98
.' Discover Bitter Reaches |achieve 852/11
step
goto 80.90,32.34
.' Discover Tower of Eldara |achieve 852/3
step
goto 69.89,34.83
.' Discover Ruins of Arkkoran |achieve 852/12
step
goto 58.29,51.00
.' Discover Bilgewater Harbor |achieve 852/2
step
goto 68.41,75.62
.' Discover Southridge Beach |achieve 852/7
step
goto 64.65,79.31
.' Discover Ravencrest Monument |achieve 852/16
step
goto 56.99,76.50
.' Discover Storm Cliffs |achieve 852/9
step
goto 46.54,76.25
.' Discover The Secret Lab |achieve 852/13
step
goto 39.83,84.67
.' Discover The Ruined Reaches |achieve 852/17
step
goto 35.72,73.99
.' Discover Lake Mennar |achieve 852/8
step
goto 26.75,77.96
.' Discover Orgrimmar Rear Gate |achieve 852/6
step
goto 21.04,57.1
.' Discover Gallywix Pleasure Palace |achieve 852/1
step
goto 39.21,55.46
.' Discover The Shattered Strand |achieve 852/10
step
goto 31.95,50.02
.' Discover Ruins of Eldarath |achieve 852/15
step
goto 25.47,38.00
.' Discover Bear's Head |achieve 852/5
step
goto 33.06,32.76
.' Discover Blackmaw Hold |achieve 852/14
step
label	"azshara1"
' Explore Azshara |achieve 852
step
label	"moon"
'Skipping next part of guide |next "+felwood" |only if step:Find("+moon1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Moonglade,67.8,53.8
.' Discover Stormrage Barrow Dens |achieve 855/4
step
goto 52.5,55.4
.' Discover Lake Elune'ara |achieve 855/1
step
goto 48.2,37.9
.' Discover Nighthaven |achieve 855/2
step
goto 36.3,38.8
.' Discover Shrine of Remulos |achieve 855/3
step
label	"moon1"
' Explore Moonglade |achieve 855
step
label	"felwood"
'Skipping next part of guide |next "+darkshore" |only if step:Find("+felwood1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Felwood,61.2,11.5
.' Discover Felpaw Village |achieve 853/1
step
goto 62.6,26.7
.' Discover Talonbranch Glade |achieve 853/2
step
goto 50.3,26.0
.' Discover Irontree Woods |achieve 853/3
step
goto 43.6,18.6
.' Discover Jadefire Run |achieve 853/4
step
goto 43.1,41.9
.' Discover Shatter Scar Vale |achieve 853/5
step
goto 52.2,78.2
.' Discover Emerald Sanctuary |achieve 853/10
step
goto 56.6,86.8
.' Discover Morlos'Aran |achieve 853/12
step
goto 48.0,89.2
.' Discover Deadwood Village |achieve 853/11
step
goto 41.8,85.4
.' Discover Jadefire Glen |achieve 853/9
step
goto 38.0,72.3
.' Discover Ruins of Constellas |achieve 853/8
step
goto 37.0,59.1
.' Discover Jaedenar |achieve 853/7
step
label	"felwood1"
' Explore Felwood |achieve 853
step
label	"darkshore"
'Skipping next part of guide |next "+teldrassil" |only if step:Find("+darkshore1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Darkshore,40.3,86.2
.' Discover The Master's Glaive |achieve 844/11
step
goto 32.0,84.0
.' Discover Nazj'vel |achieve 844/10
step
goto 42.5,69.5
.' Discover Wildbend River |achieve 844/4
step
goto 43.7,60.5
.' Discover Ameth'Aran |achieve 844/8
step
goto 42.9,54.9
.' Discover The Eye of the Vortex |achieve 844/7
step
goto 37.9,44.1
.' Discover Ruins of Auberdine |achieve 844/1
step
goto 51.2,19.2
.' Discover Lor'danel |achieve 844/9
step
goto 63.9,21.9
.' Discover Ruins of Mathystra |achieve 844/6
step
goto 72.5,17.3
.' Discover Shatterspear Vale |achieve 844/2
step
goto 65.9,7.0
.' Discover Shatterspear War Camp |achieve 844/3
step
label	"darkshore1"
' Explore Darkshore |achieve 844
step
label	"teldrassil"
'Skipping next part of guide |next "+azure" |only if step:Find("+teldrassil1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Teldrassil,55.0,61.0
.' Discover Lake Al'Ameth |achieve 842/6
step
goto 55.6,51.2
.' Discover Dolanaar |achieve 842/3
step
goto 64.7,49.1
.' Discover Starbreeze Village |achieve 842/8
step
goto 58.4,33.0
.' Discover Shadowglen |achieve 842/1
step
goto 50.7,38.0
.' Discover The Cleft |achieve 842/2
step
goto 44.4,34.4
.' Discover Wellspring Lake |achieve 842/10
step
goto 40.0,26.7
.' Discover The Oracle Glade |achieve 842/9
step
goto 30.4,50.1
.' Discover Darnassus |achieve 842/11
step
goto 41.9,56.9
.' Discover Pools of Arlithrien |achieve 842/7
step
goto 44.8,67.4
.' Discover Gnarlpine Hold |achieve 842/5
step
label	"teldrassil1"
' Explore Teldrassil |achieve 842
step
label	"azure"
'Skipping next part of guide |next "+blood" |only if step:Find("+azure1"):IsComplete()
'Proceeding next step |next |only if default
step
goto 52.4,89.3
.' Ride the boat to Azuremyst Isle |tip Make sure to avoid Alliance Guards as best you can
.' Ride to Azuremyst Isle |goto Azuremyst Isle |noway |c
step
goto Azuremyst Isle,23.7,54.0
.' Discover Valaar's Berth |achieve 860/16
step
goto 26.5,65.1
.' Discover Bristlelimb Village |achieve 860/4
step
goto 12.7,78.6
.' Discover Silvermyst Isle |achieve 860/13
step
goto 32.0,79.3
.' Discover Wrathscale Point |achieve 860/17
step
goto 37.0,58.4
.' Discover Pod Cluster |achieve 860/10
step
goto 49.3,50.7
.' Discover Azure Watch |achieve 860/3
step
goto 46.6,72.4
.' Discover Odesyus' Landing |achieve 860/9
step
goto 52.7,61.3
.' Discover Pod Wreckage |achieve 860/11
step
goto 58.3,67.0
.' Discover Geezle's Camp |achieve 860/7
step
goto 61.3,53.6
.' Discover Ammen Ford |achieve 860/2
step
goto 77.6,43.7
.' Discover Ammen Vale |achieve 860/1
step
goto 52.7,41.8
.' Discover Moongraze Woods |achieve 860/8
step
goto 29.2,35.1
.' Discover The Exodar |achieve 860/15
step
goto 35.3,12.4
.' Discover Silting Shore |achieve 860/12
step
goto 46.0,20.0
.' Discover Stillpine Hold |achieve 860/14
step
goto 58.8,17.6
.' Discover Emberglade |achieve 860/5
step
goto 47.7,6.6
.' Discover Fairbridge Strand |achieve 860/6
step
label	"azure1"
' Explore Azuremyst Isle |achieve 860
step
label	"blood"
'Skipping next part of guide |next "+end" |only if step:Find("+blood1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Bloodmyst Isle,61.9,90.0 |kessel's crossing
step
goto 57.4,81.0
.' Discover The Lost Fold |achieve 861/22
step
goto 67.0,78.2
.' Discover Bristlelimb Enclave |achieve 861/7
step
goto 69.0,66.6
.' Discover Wrathscale Lair |achieve 861/27
step
goto 85.4,52.8
.' Discover Bloodcurse Isle |achieve 861/5
step
goto 72.0,29.6
.' Discover Wyrmscar Island |achieve 861/28
step
goto 73.4,20.9
.' Discover Talon Stand |achieve 861/14
step
goto 81.0,20.1
.' Discover The Bloodcursed Reef |achieve 861/16
step
goto 74.4,7.5
.' Discover Veridian Point |achieve 861/25
step
goto 62.6,25.4
.' Discover The Crimson Reach |achieve 861/16
step
goto 54.2,17.1
.' Discover The Warp Piston |achieve 861/24
step
goto 56.1,34.9
.' Discover Ragefeather Ridge |achieve 861/12
step
goto 61.6,45.2
.' Discover Ruins of Loreth'Aran |achieve 861/13
step
goto 54.6,55.4
.' Discover Blood Watch |achieve 861/6
step
goto 51.7,76.6
.' Discover Middenvale |achieve 861/9
step
goto 43.9,84.7
.' Discover Mystwood |achieve 861/10
step
goto 33.2,90.3
.' Discover Blacksilt Shore |achieve 861/3
step
goto 37.9,75.7
.' Discover Nazzivian |achieve 861/11
step
goto 38.5,59.5
.' Discover The Cryo-Core |achieve 861/19
step
goto 45.9,45.1
.' Discover Bladewood |achieve 861/4
step
goto 40.8,33.0
.' Discover Axxarien |achieve 861/2
step
goto 38.7,21.9
.' Discover The Bloodwash |achieve 861/17
step
goto 32.7,19.8
.' Discover The Hidden Reef |achieve 861/21
step
goto 29.2,36.8
.' Discover The Foul Pool |achieve 861/20
step
goto 30.2,46.2
.' Discover Vindicator's Rest |achieve 861/26
step
goto 24.4,41.2
.' Discover Tel'athion's Camp |achieve 861/15
step
goto 18.8,30.9
.' Discover Amberweb Pass |achieve 861/1
step
goto 18.0,53.4
.' Discover The Vector Coil |achieve 861/23
step
label	"blood1"
' Explore Bloodmyst Isle |achieve 861
step
label "end"
' Congratulations! You have Explored Kalimdor |achieve 43 |only if achieved(43)
' Congratulations! You have Explored Cataclysm |achieve 4868 |only if achieved(4868)
' Congratulations! You have Earned the Achievement World Explorer! |achieve 46 |only if achieved(46)
.' You have not fully explored Kalimdor |only if not achieved(43)
|confirm |next "start" |only if not achieved(43)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Explorer Achievement\\Eastern Kingdoms",[[
description This guide section will walk you through completing
description the Explorer achievement.
author support@zygorguides.com
step
' This guide assumes you have a flying mount and can fly in Azeroth as well. You can do this
.' without having a flying mount but it will be much more efficient with one.
|confirm always
step
label	"start"
' Explore Elwynn Forest |achieve 776
' Explore Badlands |achieve 765
' Explore Burning Steppes |achieve 775
' Explore Duskwood |achieve 778
' Explore Loch Modan |achieve 779
' Explore Tirisfal Glades |achieve 768
' Explore Searing Gorge |achieve 774
' Explore Ghostlands |achieve 858
' Explore The Cape of Stranglethorn |achieve 4995
' Explore The Hinterlands |achieve 773
' Explore Wetlands |achieve 841
' Explore Western Plaguelands |achieve 770
' Explore Isle of Quel'Danas |achieve 868
' Explore Arathi Highlands |achieve 761
' Explore Blasted Lands |achieve 766
' Explore Dun Morogh |achieve 627
' Explore Hillsbrad Foothills |achieve 772
' Explore Redridge Mountains |achieve 780
' Explore Eversong Woods |achieve 859
' Explore Silverpine Forest |achieve 769
' Explore Northern Stranglethorn |achieve 781
' Explore Swamp of Sorrows |achieve 782
' Explore Westfall |achieve 802
' Explore Deadwind Pass |achieve 777
' Explore Eastern Plaguelands |achieve 771
' Explore Vashj'ir |achieve 4825
' Explore Deepholm |achieve 4864
' Explore Twilight Highlands |achieve 4866
|confirm
step
'Skipping next part of guide |next "+vashj'ir" |only if step:Find("+deepholm1"):IsComplete()
'Proceeding next step |next |only if default
step
#include "portal_deepholm"
step
goto Deepholm,55.8,75.4
.' Discover Storm's Fury Wreckage |achieve 4864/5
step
goto 68.3,77.8
.' Discover Twilight Overlook |achieve 4864/10
step
goto 62.9,58.5
.' Discover Deathwing's Fall |achieve 4864/1
step
goto 74.2,40.7
.' Discover Crimson Expanse |achieve 4864/12
step
goto 56.6,10.9
.' Discover Therazane's Throne |achieve 4864/8
step
goto 39.8,18.6
.' Discover The Pale Roost |achieve 4864/7
step
goto 26.8,32.6
.' Discover Needlerock Chasm |achieve 4864/2
step
goto 21.7,47.7
.' Discover Needlerock Slag |achieve  4864/3
step
goto 26.3,69.5
.' Discover Stonehearth |achieve 4864/4
step
goto 35.2,80.3
.' Discover The Quaking Fields |achieve 4864/9
step
goto 39.2,69.1
.' Discover Masters' Gate |achieve 4864/11
step
label	"deepholm1"
' Explore Deepholm |achieve 4864
step
goto Deepholm,50.9,53.1
.' Click on the Portal to Orgrimmar |tip It looks like a blue and red swirling portal.
.' Teleport to Orgrimmar |goto Orgrimmar |noway |c
step
label	"vashj'ir"
'Skipping next part of guide |next "+strangle" |only if step:Find("+vashj'ir1"):IsComplete()
'Proceeding next step |next |only if default
step
#include "port_vashj'ir"
step
goto Abyssal Depths,54.1,63.9
.' Discover Korthun's End |achieve 4825/5
step
goto 42.2,70.0
.' Discover Underlight Canyon |achieve 4825/3
step
goto 22.1,80.2
.' Discover Abandoned Reef |achieve 4825/1
step
goto 32.3,54.1
.' Discover L'ghorek |achieve 4825/6
step
goto 39.4,19.3
.' Discover Deepfin Ridge |achieve 4825/4
step
goto 54.9,43.5
.' Discover Seabrush |achieve 4825/7
step
goto 71.5,29.8
.' Discover Abyssal Breach |achieve 4825/2
step
goto Shimmering Expanse,50.9,21.5
.' Discover Shimmering Grotto |achieve 4825/20
step
goto 47.9,37.8
.' Discover Silver Tide Hollow |achieve 4825/21
step
goto 43.6,48.4
.' Discover Glimmerdeep Gorge |achieve 4825/9
step
goto 33.7,72.4
.' Discover Ruins of Vashj'ir |achieve 4825/19
step
goto 55.4,83.0
.' Discover Beth'mora Ridge |achieve 4825/16
step
goto 59.2,56.5
.' Discover Nespirah |achieve 4825/17
step
goto 66.4,41.7
.' Discover Ruins of Thelserai Temple |achieve 4825/18
step
goto Kelp'thar Forest,58.8,81.4
.' Discover The Clutch |achieve 4825/12
step
goto 61.5,58.9
.' Discover Gnaws' Boneyard |achieve 4825/10
step
goto 53.2,56.2
.' Discover Gurboggle's Ledge |achieve 4825/11
step
goto 39.7,29.7
.' Discover Legion's Fate |achieve 4825/14
step
goto 50.3,24.1
.' Discover Seafarer's Tomb |achieve 4825/13
step
goto Kelp'thar Forest,64.8,49.3
.' Discover The Skeletal Reef |achieve 4825/15
step
label	"vashj'ir1"
' Explore Vashj'ir |achieve 4825
step
#include "hearth"
step
label	"strangle"
'Skipping next part of guide |next "+n_strangle" |only if step:Find("+strangle1"):IsComplete()
'Proceeding next step |next |only if default
step
goto The Cape of Stranglethorn,39.7,71.0
.' Discover Booty Bay |achieve 4995/1
step
goto 43.5,81.4
.' Discover The Wild Shore |achieve 4995/10
step
goto 60.8,81.6
.' Discover Jaquero Isle |achieve 4995/5
step
goto 50.5,58.1
.' Discover Mistvale Valley |achieve 4995/6
step
goto 43.0,49.1
.' Discover Nek'mani Wellspring |achieve 4995/7
step
goto 34.1,32.4
.' Discover Hardwrench Hideaway |achieve 4995/4
step
goto 46.3,22.5
.' Discover Gurubashi Arena |achieve 4995/3
step
goto 54.4,30.3
.' Discover Ruins of Jubuwal |achieve 4995/9
step
goto 62.2,43.7
.' Discover Ruins of Aboraz |achieve 4995/8
step
goto 62.4,28.1
.' Discover Crystalvein Mine |achieve 4995/2
step
label	"strangle1"
' Explore The Cape of Stranglethorn |achieve 4995
step
label	"n_strangle"
'Skipping next part of guide |next "+westfall" |only if step:Find("+n_strangle1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Northern Stranglethorn,53.2,66.0
.' Discover Fort Livingston |achieve 781/4
step
goto 59.0,55.2
.' Discover Balia'mah Ruins |achieve 781/2
step
goto 66.9,50.9
.' Discover Mosh'Ogg Ogre Mound |achieve 781/11
step
goto 64.7,39.7
.' Discover Bambala |achieve 781/3
step
goto 83.9,32.5
.' Discover Zul'Gurub |achieve 781/16
step
goto 60.2,19.9
.' Discover Kurzen's Compound |achieve 781/8
step
goto 46.7,9.5
.' Discover Rebel Camp |achieve 781/7
step
goto 44.1,19.8
.' Discover Nesingwary's Expedition |achieve 781/6
step
goto 42.2,38.4
.' Discover Kal'ai Ruins |achieve 781/9
step
goto 46.1,52.9
.' Discover Mizjah Ruins |achieve 781/10
step
goto 37.8,48.4
.' Discover Grom'gol Base Camp |achieve 781/1
step
goto 33.0,42.5
.' Discover The Vile Reef |achieve 781/14
step
goto 34.3,36.2
.' Discover Bal'lal Ruins |achieve 781/13
step
goto 19.2,25.6
.' Discover Zuuldaia Ruins |achieve 781/5
step
goto 26.4,20.2
.' Discover Ruins of Zul'Kunda |achieve 781/15
step
label	"n_strangle1"
' Explore Northern Stranglethorn |achieve 781
step
label	"westfall"
'Skipping next part of guide |next "+duskwood" |only if step:Find("+westfall1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Westfall,63.4,72.5
.' Discover The Dust Plains |achieve 802/14
step
goto 44.9,82.0
.' Discover The Dagger Hills |achieve 802/12
step
goto 30.0,86.8
.' Discover Westfall Lighthouse |achieve 802/11
step
goto 33.9,73.6
.' Discover Demont's Place |achieve 802/10
step
goto 42.4,65.5
.' Discover Moonbrook |achieve 802/8
step
goto 38.2,52.3
.' Discover Alexston Farmstead |achieve 802/9
step
goto 39.2,43.2
.' Discover The Raging Chasm |achieve 802/13
step
goto 45.3,34.9
.' Discover the Molsen Farm |achieve 802/6
step
goto 44.9,23.9
.' Discover Jangolode Mine |achieve 802/5
step
goto 51.0,21.4
.' Discover Furlbrow's Pumpkin Farm |achieve 802/3
step
goto 57.7,15.8
.' Discover The Jansen Stead |achieve 802/4
step
goto 54.4,32.3
.' Discover Saldean's Farm |achieve 802/2
step
goto 55.9,49.3
.' Discover Sentinel Hill |achieve 802/1
step
goto 61.5,59.2
.' Discover the Dead Acre |achieve 802/7
step
label	"westfall1"
' Explore Westfall |achieve 802
step
label	"duskwood"
'Skipping next part of guide |next "+deadwind" |only if step:Find("+duskwood1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Duskwood,10.1,44.3
.' Discover The Hushed Bank |achieve 778/1
step
goto 19.6,41.3
.' Discover Raven Hill Cemetery |achieve 778/4
step
goto 19.8,55.2
.' Discover Raven Hill |achieve 778/3
step
goto 21.4,69.9
.' Discover Addle's Stead |achieve 778/2
step
goto 35.8,72.7
.' Discover Vul'Gol Ogre Mound |achieve 778/5
step
goto 51.0,74.0
.' Discover The Yorgen Farmstead |achieve 778/7
step
goto 63.8,71.9
.' Discover The Rotting Orchard |achieve 778/9
step
goto 46.8,38.6
.' Discover Twilight Grove |achieve 778/6
step
goto 54.6,21.2
.' Discover The Darkened Bank |achieve 778/13
step
goto 64.7,37.7
.' Discover Brightwood Grove |achieve 778/8
step
goto 77.1,35.9
.' Discover Manor Mistmantle |achieve 778/12
step
goto 74.5,46.2
.' Discover Darkshire |achieve 778/11
step
goto 79.7,66.1
.' Discover Tranquil Gardens Cemetery |achieve 778/10
step
label	"duskwood1"
' Explore Duskwood |achieve 778
step
label	"deadwind"
'Skipping next part of guide |next "+blasted" |only if step:Find("+deadwind1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Deadwind Pass,45.1,35.8
.' Discover Deadman's Crossing |achieve 777/1
step
goto 42.6,68.8
.' Discover Karazhan |achieve 777/3
step
goto 58.6,64.7
.' Discover The Vice |achieve 777/2
step
label	"deadwind1"
' Explore Deadwind Pass |achieve 777
step
label	"blasted"
'Skipping next part of guide |next "+swamp" |only if step:Find("+blasted1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Blasted Lands,39.5,12.9
.' Discover Dreadmaul Hold |achieve 766/1
step
goto 45.1,26.7
.' Discover Rise of the Defiler |achieve 766/9
step
goto 47.1,40.1
.' Discover Dreadmaul Post |achieve 766/7
step
goto 54.4,52.9
.' Discover The Dark Portal |achieve 766/5
step
goto 32.3,45.7
.' Discover The Tainted Scar |achieve 766/8
step
goto 34.2,72.3
.' Discover The Tainted Forest |achieve 766/14
step
goto 44.5,86.1
.' Discover Surwich |achieve 766/12
step
goto 50.7,70.9
.' Discover Sunveil Excursion |achieve 766/11
step
goto 65.8,78.0
.' Discover The Red Reaches |achieve 766/13
step
goto 69.1,33.5
.' Discover Shattershore |achieve 766/10
step
goto 60.3,28.4
.' Discover Serpent's Coil |achieve 766/4
step
goto 64.3,15.8
.' Discover Nethergare Keep |achieve 766/3
step
label	"blasted1"
' Explore Blasted Lands |achieve 766
step
label	"swamp"
'Skipping next part of guide |next "+redridge" |only if step:Find("+swamp1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Swamp of Sorrows,67.8,74.9
.' Discover Stagalbog |achieve 782/7
step
goto 84.2,38.9
.' Discover Sorrowmurk |achieve 782/8
step
goto 77.3,13.7
.' Discover Misty Reed Strand |achieve 782/10
step
goto 72.3,12.8
.' Discover Bogpaddle |achieve 782/9
step
goto 68.4,35.8
.' Discover Marshtide Watch |achieve 782/12
step
goto 62.6,50.0
.' Discover Pool of Tears |achieve 782/6
step
goto 48.8,42.1
.' Discover The Shifting Mire |achieve 782/4
step
goto 47.1,54.2
.' Discover Stonard |achieve 782/5
step
goto 18.6,68.1
.' Discover Purespring Cavern |achieve 782/11
step
goto 22.3,49.4
.' Discover Splinterspear Junction |achieve 782/3
step
goto 14.7,35.8
.' Misty Valley |achieve 782/1
step
goto 28.8,32.1
.' Discover The Harborage |achieve 782/2
step
label	"swamp1"
' Explore Swamp of Sorrows |achieve 782
step
label	"redridge"
'Skipping next part of guide |next "+elwynn" |only if step:Find("+redridge1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Redridge Mountains,38.2,68.5
.' Discover Lakeridge Highway |achieve 780/4
step
goto 41.9,52.6
.' Discover Lake Everstill |achieve 780/2
step
goto 53.4,54.7
.' Discover Camp Everstill |achieve 780/13
step
goto 60.9,52.5
.' Discover Stonewatch Keep |achieve 780/10
step
goto 64.7,71.3
.' Discover Render's Valley |achieve 780/8
step
goto 81.0,62.4
.' Discover Shalewind Canyon |achieve 780/12
step
goto 47.2,39.2
.' Discover Alther's Mill |achieve 780/6
step
goto 35.1,12.8
.' Discover Render's Camp |achieve 780/9
step
goto 30.2,26.1
.' Discover Redridge Canyons |achieve 780/5
step
goto 25.5,43.4
.' Discover Lakeshire |achieve 780/1
step
goto 19.7,59.1
.' Discover Three Corners |achieve 780/3
step
label	"redridge1"
' Explore Redridge Mountains |achieve 780
step
label	"elwynn"
'Skipping next part of guide |next "+burning" |only if step:Find("+elwynn1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Elwynn Forest,83.5,66.9
.' Discover Eastvale Logging Camp |achieve 776/8
step
goto 84.8,79.4
.' Discover Ridgepoint Tower |achieve 776/9
step
goto 69.4,79.4
.' Discover Brackwell Pumpkin Patch |achieve 776/7
step
goto 64.6,69.3
.' Discover Tower of Azora |achieve 776/6
step
goto 52.9,66.2
.' Discover Crystal Lake |achieve 776/10
step
goto 48.5,85.8
.' Discover Jerod's Landing |achieve 776/5
step
goto 39.5,80.3
.' Discover Fargodeep Mine |achieve 776/4
step
goto 24.5,73.3
.' Discover Westbrook Garrison |achieve 776/2
step
goto 42.1,64.7
.' Discover Goldshire |achieve 776/3
step
goto 50.4,42.5
.' Discover Northshire Valley |achieve 776/1
step
goto 74.0,51.5
.' Discover Stone Cairn Lake |achieve 776/11
step
label	"elwynn1"
' Explore Elwynn Forest |achieve 776
step
label	"burning"
'Skipping next part of guide |next "+searing" |only if step:Find("+burning1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Burning Steppes,66.7,77.5
.' Discover Blackrock Pass |achieve 775/4
step
goto 73.5,68.0
.' Discover Morgan's Vigil |achieve 775/2
step
goto 73.9,53.4
.' Discover Terror Wing Path |achieve 775/3
step
goto 69.7,40.5
.' Discover Dreadmaul Rock |achieve 775/1
step
goto 56.6,37.4
.' Discover Ruins of Thaurissan |achieve 775/5
step
goto 36.1,53.5
.' Discover Black Tooth Hovel |achieve 775/6
step
goto 24.3,57.7
.' Discover The Whelping Downs |achieve 775/8
step
goto 32.3,36.5
.' Discover Blackrock Stronghold |achieve 775/7
step
goto 20.7,29.2
.' Discover Blackrock Mountain |achieve 775/10
step
goto 9.4,27.5
.' Discover Altar of Storms |achieve 775/9
step
label	"burning1"
' Explore Burning Steppes |achieve 775
step
label	"searing"
'Skipping next part of guide |next "+dun" |only if step:Find("+searing1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Searing Gorge,39.9,82.9
.' Discover Blackrock Mountain |achieve 774/8
step
goto 21.2,80.1
.' Discover Balckchar Cave |achieve 774/3
step
goto 23.8,31.8
.' Discover Firewatch Ridge |achieve 774/1
step
goto 37.7,29.9
.' Discover Thorium Point |achieve 774/7
step
goto 52.7,49.6
.' Discover The Cauldron |achieve 774/2
step
goto 71.8,26.8
.' Discover Dustfire Valley |achieve 774/6
step
label	"searing1"
' Explore Searing Gorge |achieve 774
step
label	"dun"
'Skipping next part of guide |next "+loch" |only if step:Find("+dun1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Dun Morogh,84.1,51.8
.' Discover Helm's Bed Lake |achieve 627/10
step
goto 76.5,57.2
.' Discover Gol'Bolar Quarry |achieve 627/11
step
goto 71.5,46.2
.' Discover Amberstill Ranch |achieve 627/9
step
goto 67.2,53.9
.' Discover The Tundrid Hills |achieve 627/8
step
goto 58.6,57.7
.' Discover Frostmane Front |achieve 627/3
step
goto 53.6,50.5
.' Discover Kharanos |achieve 627/7
step
goto 48.3,52.8
.' Discover The Grizzled Den |achieve 627/14
step
goto 43.9,64.5
.' Discover Coldridge Pass |achieve 627/1
step
goto 34.6,75.6
.' Discover Coldridge Valley |achieve 627/2
step
goto 31.5,51.9
.' Discover Frostmane Hold |achieve 627/13
step
goto 33.8,37.5
.' Discover New Tinkertown |achieve 627/4
step
goto 41.4,40.2
.' Discover Iceflow Lake |achieve 627/15
step
goto 48.3,37.9
.' Discover Shimmer Ridge |achieve 627/6
step
goto 59.6,33.8
.' Discover Gates of Ironforge |achieve 627/16
step
goto 78.0,24.2
.' Discover Ironforge Airfield |achieve 627/5
step
goto 90.3,37.6
.' Discover North Gate Outpost |achieve 627/12
step
label	"dun1"
' Explore Dun Morogh |achieve 627
step
label	"loch"
'Skipping next part of guide |next "+twilight" |only if step:Find("+loch1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Loch Modan,20.3,78.5
.' Discover Valley of Kings |achieve 779/11
step
goto 32.5,78.3
.' Discover Stonesplinter Valley |achieve 779/10
step
goto 38.0,60.7
.' Discover Grizzlepaw Ridge |achieve 779/8
step
goto 69.4,65.3
.' Discover Ironband's Excavation Site |achieve 779/7
step
goto 82.3,65.0
.' Discover The Farstrider Lodge |achieve 779/6
step
goto 71.0,23.8
.' Discover Mo'grosh Stronghold |achieve 779/3
step
goto 35.2,47.6
.' Discover Thelsamar |achieve 779/9
step
goto 20.2,17.1
.' Discover North Gate Pass |achieve 779/5
step
goto 34.8,21.5
.' Discover Silver Stream Mine |achieve 779/4
step
goto 48.0,11.4
.' Discover Stonewrought Dam |achieve 779/2
step
label	"loch1"
' Explore Loch Modan |achieve 779
step
label	"twilight"
'Skipping next part of guide |next "+wetlands" |only if step:Find("+twilight1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Twilight Highlands,18.9,51.4
.' Discover Grim Batol |achieve 4866/10
step
goto 29.0,47.8
.' Discover Wyrms' Bend |achieve 4866/26
step
goto 36.39,38.03
.' The Gullet |achieve 4866/19
step
goto 39.9,46.6
.' The Twilight Breach |achieve 4866/21
step
goto 43.2,58.1
.' Discover Victor's Point |achieve 4866/25
step
goto 46.1,77.2
.' Discover Crushblow |achieve 4866/3
step
goto 49.5,68.8
.' Discover Dunwald Ruins |achieve 4866/6
step
goto 64.4,78.9
.' Discover Obsibian Forest |achieve 4866/15
step
goto 71.0,70.9
.' Discover Twilight Shore |achieve 4866/23
step
goto 80.7,76.8
.' Discover Highbank |achieve 4866/11
step
goto 76.0,53.0
.' Discover Dragonmaw Port |achieve 4866/5
step
goto 59.9,57.0
.' Discover Firebeards's Patrol |achieve 4866/7
step
goto 54.0,62.9
.' Discover Highland Forest |achieve 4866/12
step
goto 50.7,56.9
.' Discover Crucible of Carnage |achieve 4866/2
step
goto 54.1,42.7
.' Discover Bloodgulch |achieve 4866/1
step
goto 62.7,46.0
.' Discover Gorshak War Camp |achieve 4866/9
step
goto 71.0,38.8
.' Discover Slithering Cove |achieve 4866/17
step
goto 76.8,14.5
.' Discover The Krazzworks |achieve 4866/20
step
goto 54.9,17.3
.' Discover Kirthaven |achieve 4866/14
step
goto 57.9,30.3
.' Discover The Black Breach |achieve 4866/18
step
goto 50.2,29.1
.' Discover Thundermar |achieve 4866/22
step
goto 47.8,10.6
.' The Maw of Madness |achieve 4866/27
step
goto 43.6,18.1
.' Ruins of Drakgor |achieve 4866/16
step
goto 44.3,27.3
.' Discover Humboldt Conflagration |achieve 4866/13
step
goto 38.3,29.0
.' Discover Glopgut's Hollow |achieve 4866/8
step
goto 25.3,21.0
.' Discover Vermillion Redoubt |achieve 4866/24
step
label	"twilight1"
' Explore Twilight Highlands |achieve 4866
step
label	"wetlands"
'Skipping next part of guide |next "+arathi" |only if step:Find("+wetlands1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Wetlands,67.9,34.9
.' Discover Raptor Ridge |achieve 841/16
step
goto 57.9,40.6
.' Discover Greenwarden's Grove |achieve 841/11
step
goto 61.9,56.6
.' Discover Mosshide Fen |achieve 841/12
step
goto 58.4,71.0
.' Discover Slabchisel's Survey |achieve 841/15
step
goto 50.0,76.4
.' Discover Dun Algaz |achieve 841/14
step
goto 52.2,61.4
.' Discover Thelgen Rock |achieve 841/10
step
goto 48.5,48.0
.' Discover Angerfang Encampment |achieve 841/9
step
goto 35.8,48.9
.' Discover Whelgar's Excavation Site |achieve 841/4
step
goto 10.2,58.2
.' Discover Menethil Harbor |achieve 841/1
step
goto 19.3,46.9
.' Discover Black Channel Marsh |achieve 841/2
step
goto 18.9,36.0
.' Discover Bluegill Marsh |achieve 841/3
step
goto 24.5,24.3
.' Discover Sundown Marsh |achieve 841/5
step
goto 32.5,17.6
.' Discover Saltspray Glen |achieve 841/6
step
goto 43.6,25.9
.' Discover Ironbeard's Tomb |achieve 841/7
step
goto 46.9,16.5
.' Discover Dun Modr |achieve 841/8
step
label	"wetlands1"
' Explore Wetland |achieve 841
step
label	"arathi"
'Skipping next part of guide |next "+hillsbrad" |only if step:Find("+arathi1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Arathi Highlands,41.3,91.0
.' Discover Thandol Span |achieve 761/8
step
goto 49.1,78.9
.' Discover Boulderfist Hall |achieve 761/9
step
goto 61.6,70.3
.' Discover Witherbark Village |achieve 761/12
step
goto 56.4,57.6
.' Discover Go'Shek Farm |achieve 761/13
step
goto 69.3,37.2
.' Discover Hammerfall |achieve 761/16
step
goto 59.3,32.8
.' Discover Circle of East Binding |achieve 761/15
step
goto 49.9,41.3
.' Discover Dabyrie's Farmstead |achieve 761/14
step
goto 47.3,51.4
.' Discover Circle of Outer Binding |achieve 761/11
step
goto 39.8,46.4
.' Discover Refuge Pointe |achieve 761/10
step
goto 30.1,59.3
.' Discover Circle of Inner Binding |achieve 761/7
step
goto 23.8,81.8
.' Discover Faldir's Cove |achieve 761/6
step
goto 16.5,64.1
.' Discover Stromgarde Keep |achieve 761/5
step
goto 27.5,44.2
.' Discover Boulder'gor |achieve 761/3
step
goto 27.0,27.1
.' Discover Northfold Manor |achieve 761/2
step
goto 13.0,36.4
.' Discover Galen's Fall |achieve 761/4
step
label	"arathi1"
' Explore Arathi Highlands |achieve 761
step
label	"hillsbrad"
'Skipping next part of guide |next "+silver" |only if step:Find("+hillsbrad1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Hillsbrad Foothills,68.3,60.0
.' Discover Durnholde Keep |achieve 772/10
step
goto 68.1,32.9
.' Discover Chillwind Point |achieve 772/5
step
goto 58.3,23.4
.' Discover Strahnbrad |achieve 772/22
step
goto 57.51,74.96
.' Discover Nethander Stead |achieve 772/15
step
goto 52.4,12.6
.' Discover The Uplands |achieve 772/26
step
goto 44.9,9.1
.' Discover Dandred's Fold |achieve 772/7
step
goto 45.3,29.0
.' Discover Ruins of Alterac |achieve 772/17
step
goto 43.2,38.5
.' Discover Growless Cave |achieve 772/13
step
goto 55.6,38.5
.' Discover Sofera's Naze |achieve 772/20
step
goto 56.7,46.9
.' Discover Tarren Mill |achieve 772/23
step
goto 49.6,46.7
.' Discover Corrahn's Dagger |achieve 772/3
step
goto 48.97,71.89
.' Discover Ruins of Southshore |achieve 772/18
step
goto 44.2,48.6
.' Discover The Headland |achieve 772/24
step
goto 40.0,47.6
.' Discover Gavin's Naze |achieve 772/12
step
goto 35.06,26.14
.' Discover Misty Shore |achieve 772/14
step
goto 33.8,46.5
.' Discover Brazie Farmstead |achieve 772/2
step
goto 30.4,36.2
.' Discover Dalaran Crater |achieve 772/6
step
goto 29.5,63.6
.' Discover Southpoint Gate |achieve 772/21
step
goto 34.0,73.8
.' Discover Azurlode Mine |achieve 772/1
step
goto 27.0,85.6
.' Discover Purgation Isle |achieve 772/16
step
label	"hillsbrad1"
' Explore Hillsbrad Foothills |achieve 772
step
label	"silver"
'Skipping next part of guide |next "+tirisfal" |only if step:Find("+silver1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Silverpine Forest,46.1,79.5
.' Discover The Battlefront |achieve 769/1
step
goto 42.2,63.2
.' Discover Shadowfang Keep |achieve 769/12
step
goto 50.9,66.6
.' Discover The Forsaken Front |achieve 769/3
step
goto 61.2,62.4
.' Discover Ambermill |achieve 769/11
step
goto 46.1,51.0
.' Discover Olsen's Farthing |achieve 769/10
step
goto 45.0,40.0
.' Discover The Sepulcher |achieve 769/8
step
goto 37.3,28.0
.' Discover North Tide's Beachead |achieve 769/5
step
goto 34.8,12.4
.' Discover The Skittering Dark |achieve 769/4
step
goto 44.9,18.8
.' Discover Forsaken Rear Guard |achieve 769/15
step
goto 53.2,25.6
.' Discover Valgan's Field |achieve 769/7
step
goto 56.5,34.7
.' Discover The Decrepit Fields |achieve 769/2
step
goto 59.3,45.4
.' Discover Deep Elem Mine |achieve 769/9
step
goto 69.1,26.8
.' Discover Fenris Isle |achieve 769/6
step
goto 62.0,8.7
.' Discover Forsaken High Command |achieve 769/13
step
label	"silver1"
' Explore Silverpine Forest |achieve 769
step
label	"tirisfal"
'Skipping next part of guide |next "+w_plague" |only if step:Find("+tirisfal1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Tirisfal Glades,32.2,63.8
.' Discover Deathknell |achieve 768/1
step
goto 45.1,65.4
.' Discover Nightmare Vale |achieve 768/4
step
goto 53.8,58.7
.' Discover Cold Hearth Manor |achieve 768/5
step
goto 46.2,51.4
.' Discover Calston Estate |achieve 768/16
step
goto 38.4,48.9
.' Discover Solliden Farmstead |achieve 768/9
step
goto 45.6,32.9
.' Discover Agamand Mills |achieve 768/3
step
goto 56.9,35.6
.' Discover Garren's Haunt |achieve 768/7
step
goto 59.7,50.9
.' Discover Brill |achieve 768/6
step
goto 68.3,45.0
.' Discover Brightwater Lake |achieve 768/8
step
goto 78.4,26.9
.' Discover Scarlet Watch Post |achieve 768/11
step
goto 87.00,47.2
.' Discover Venomweb Vale |achieve 768/12
step
goto 79.1,54.7
.' Discover Crusader Outpost |achieve 768/10
step
goto 73.7,60.0
.' Discover Balnir Farmstead |achieve 768/9
step
goto 84.9,69.4
.' Discover The Bulwark |achieve 768/15
step
label	"tirisfal1"
' Explore Tirisfal Glades |achieve 768
step
label	"w_plague"
'Skipping next part of guide |next "+hinterlands" |only if step:Find("+w_plague1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Western Plaguelands,27.0,57.7
.' Discover The Bulwark |achieve 770/5
step
goto 36.5,54.6
.' Discover Felstone Field |achieve 770/6
step
goto 45.1,51.2
.' Discover Dalson's Farm |achieve 770/7
step
goto 46.0,45.5
.' Discover Redpine Dell |achieve 770/11
step
goto 47.2,33.4
.' Northridge Lumber Camp |achieve 770/9
step
goto 44.9,17.0
.' Discover Hearthglen |achieve 770/10
step
goto 64.4,40.1
.' Discover The Weeping Cave |achieve 770/13
step
goto 69.6,50.7
.' Discover Thondroril River |achieve 770/14
step
goto 63.9,58.2
.' Discover Gahrron's Withering |achieve 770/12
step
goto 54.9,66.2
.' Discover The Writhing Haunt |achieve 770/8
step
goto 54.6,85.5
.' Discover Sorrow Hill |achieve 770/3
step
goto 68.3,81.1
.' Discover Caer Darrow |achieve 770/2
step
label	"w_plague1"
' Explore Western Plaguelands |achieve 770
step
label	"hinterlands"
'Skipping next part of guide |next "+e_plague" |only if step:Find("+hinterlands1"):IsComplete()
'Proceeding next step |next |only if default
step
goto The Hinterlands,13.9,45.0
.' Discover Aerie Peak |achieve 773/1
step
goto 23.1,33.5
.' Discover Plaguemist Ravine |achieve 773/2
step
goto 33.3,45.6
.' Discover Quel'Danil Lodge |achieve 773/4
step
goto 34.6,72.0
.' Discover Shadra'Alor |achieve 773/5
step
goto 40.5,59.3
.' Discover Valorwind Lake |achieve 773/6
step
goto 48.4,66.9
.' Discover The Altar of Zul |achieve 773/9
step
goto 49.0,52.1
.' Discover The Creeping Ruin |achieve 773/8
step
goto 63.1,74.7
.' Discover Jintha'Alor |achieve 773/13
step
goto 72.7,66.1
.' Discover The Overlook Cliffs |achieve 773/14
step
goto 73.2,54.2
.' Discover Shaol'watha |achieve 773/12
step
goto 57.6,42.6
.' Discover Skulk Rock |achieve 773/11
step
goto 62.7,24.1
.' Discover Seradane |achieve 773/10
step
label	"hinterlands1"
' Explore The Hinterlands |achieve 773
step
label	"e_plague"
'Skipping next part of guide |next "+ghost" |only if step:Find("+e_plague1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Eastern Plaguelands,35.1,84.2
.' Discover Darrowshire |achieve 771/6
step
goto 24.0,78.8
.' Discover The Undercroft |achieve 771/3
step
goto 22.6,66.0
.' The Marris Stead |achieve 771/2
step
goto 12.5,26.3
.' Discover Terrordale |achieve 771/20
step
goto 26.8,9.8
.' Discover Statholme |achieve 771/22
step
goto 33.6,24.4
.' Discover Plaguewood |achieve 771/21
step
goto 36.1,44.8
.' Discover The Fungal Vale |achieve 771/5
step
goto 35.7,68.5
.' Discover Crown Guard Tower |achieve 771/4
step
goto 57.4,74.1
.' Discover Lake Mereldar |achieve 771/9
step
goto 55.6,62.9
.' Discover Corin's Crossing |achieve 771/8
step
goto 46.3,43.5
.' Discover Blackwood Lake |achieve 771/15
step
goto 48.1,13.1
.' Discover Quel'Lithien Lodge |achieve 771/19
step
goto 50.5,20.5
.' Discover Northpass Tower |achieve 771/18
step
goto 62.4,41.7
.' Discover Eastwall Tower |achieve 771/14
step
goto 68.7,56.5
.' Discover Pestilent Scar |achieve 771/7
step
goto 75.6,75.2
.' Discover Tyr's Hand |achieve 771/10
step
goto 87.1,78.5
.' Discover Ruins of the Scarlet Enclave |achieve 771/23
step
goto 76.8,53.9
.' Discover Light's Hope Chapel |achieve 771/11
step
goto 78.1,35.8
.' Discover The Noxious Glade |achieve 771/13
step
goto 66.1,25.0
.' Discover Northdale |achieve 771/16
step
goto 66.4,10.3
.' Discover Zul'Mashar |achieve 771/17
step
label	"e_plague1"
' Explore Eastern Plaguelands |achieve 771
step
label	"ghost"
'Skipping next part of guide |next "+eversong" |only if step:Find("+ghost1"):IsComplete()
'Proceeding next step |next |only if default
step
goto 54.4,7.0
.' Go through the Portal to Ghostlands |tip It looks like a big swirling portal.
.' Teleport to Ghostlands |goto Ghostlands |noway |c
step
goto Ghostlands,48.2,84.3
.' Discover Thalassian Pass |achieve 858/16
step
goto 33.1,79.9
.' Discover Deatholme |achieve 858/10
step
goto 13.6,55.7
.' Discover Windrunner Spire |achieve 858/13
step
goto 17.9,41.4
.' Discover Windrunner Village |achieve 858/4
step
goto 25.0,15.0
.' Discover Goldenmist Village |achieve 858/3
step
goto 33.4,32.2
.' Discover Sanctum of the Moon |achieve 858/5
step
goto 34.2,46.7
.' Discover Bleeding Ziggurat |achieve 858/14
step
goto 41.2,49.7
.' Discover Howling Ziggurat |achieve 858/9
step
goto 47.12,32.8
.' Discover Tranquillien |achieve 858/1
step
goto 56.1,47.9
.' Sanctum of the Sun |achieve 858/6
step
goto 66.2,61.1
.' Discover Zeb'Nowa |achieve 858/11
step
goto 77.3,64.4
.' Discover Amani Pass |achieve 858/12
step
goto 77.2,32.1
.' Discover Farstrider Enclave |achieve 858/6
step
goto 78.6,18.7
.' Discover Dawnstart Spire |achieve 858/7
step
goto 60.46,11.7
.' Discover Suncrown Village |achieve 858/2
step
label	"ghost1"
' Explore Ghostlands |achieve 858
step
label	"eversong"
'Skipping next part of guide |next "+isle_q" |only if step:Find("+eversong1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Eversong Woods,36.2,86.0
.' Discover The Scorched Grove |achieve 859/13
step
goto 44.1,85.8
.' Discover Runestone Falithas |achieve 859/19
step
goto 55.8,84.2
.' Discover Rusestone Shan'dor |achieve 859/20
step
goto 62.2,79.3
.' Discover Zeb'Watha |achieve 859/25
step
goto 65.9,78.6
.' Discover Lake Elrendar |achieve 859/18
step
goto 72.0,79.3
.' Discover Tor'Watha |achieve 859/12
step
goto 64.6,73.1
.' Discover Elreandar Falls |achieve 859/16
step
goto 61.2,63.7
.' Discover Farstrider Rereat |achieve 859/7
step
goto 55.7,56.4
.' Discover Stillwhisper Pond |achieve 859/8
step
goto 60.6,54.2
.' Discover Thuron's Livery |achieve 859/23
step
goto 71.6,45.3
.' Discover Azurebreeze Coast |achieve 859/15
step
goto 52.4,39.4
.' Disocver Silvermoon City |achieve 859/14
step
goto 31.3,16.0
.' Discover Sunstrider Isle |achieve 859/1
step
goto 42.9,39.3
.' Discover Ruins of Silvermoon |achieve 859/2
step
goto 42.7,50.4
.' Discover North Sanctum |achieve 859/5
step
goto 35.3,57.6
.' Discover West Sanctum |achieve 859/3
step
goto 28.5,57.8
.' Discover Tranquil Shore |achieve 859/24
step
goto 29.4,69.3
.' Discover Sunsail Anchorage |achieve 859/4
step
goto 23.5,74.8
.' Discover Golden Strand |achieve 859/22
step
goto 33.4,77.6
.' Discover Goldenbough Pass |achieve 859/17
step
goto 38.3,73.5
.' Discover Saltheril's Haven |achieve 859/21
step
goto 43.9,73.7
.' Discover Fairbreeze Village |achieve 859/10
step
goto 52.3,73.1
.' Discover East Sanctum |achieve 859/6
step
goto 54.2,71.9
.' Discover The Living Wood |achieve 859/11
step
goto 36.2,86.0
.' Discover The Scorched Grove |achieve 859/13
step
label	"eversong1"
' Explore Eversong Woods |achieve 859
step
label	"isle_q"
'Skipping next part of guide |next "+end" |only if step:Find("+isle_q1"):IsComplete()
'Proceeding next step |next |only if default
step
|fly Shattered Sun Staging Area
step
label	"isle_q1"
' Explore Isle of Quel'Danas |achieve 868
step
label	"end"
' Congratulations! You have Explored the Eastern Kingdoms |achieve 42 |only if achieved(42)
.' Congratulations! You have Explored Cataclysm |achieve 4868 |only if achieved(4868)
' Congratulations! You have Earned the Achievement World Explorer! |achieve 46 |only if achieved(46)
.' You have not explored all of Eastern Kingdoms yet |only if not achieved(42)
|confirm |next "start" |only if not achieved(42)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Explorer Achievement\\Outlands",[[
description This guide section will walk you through completing
description the Explorer achievement.
author support@zygorguides.com
step
' This guide assumes you have a flying mount. You can do this guide
.' without having a flying mount but it will be much more efficient with one.
|confirm always
step
label	"start"
' Explore Hellfire Peninsula |achieve 862
' Explore Terokkar Forest |achieve 867
' Explore Shadowmoon Valley |achieve 864
' Explore Nagrand |achieve 866
' Explore Zangarmarsh |achieve 863
' Explore Blade's Edge Mountains |achieve 865
' Explore Netherstorm |achieve 843
|confirm always
step
#include "darkportal"
step
'Skipping next part of guide |next "+terokkar" |only if step:Find("+hellfire1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Hellfire Peninsula,87.7,50.3
.' Discover The Stair of Destiny |achieve 862/1
step
goto 62.0,17.8
.' Discover Throne of Kil'jaeden |achieve 862/12
step
goto 58.9,31.2
.' Discover Forge Camp: Mageddon |achieve 862/18
step
goto 55.4,38.7
.' Disocver Thrallmar |achieve 862/11
step
goto 70.0,50.4
.' Discover The Legion Front |achieve 862/10
step
goto 79.1,72.9
.' Discover Void Ridge |achieve 862/16
step
goto 70.1,73.6
.' Discover Zeth'Gor |achieve 862/13
step
goto 54.3,84.3
.' Discover Expedition Armory |achieve 862/2
step
goto 45.3,82.5
.' Discover The Warp Fields |achieve 862/17
step
goto 54.8,64.5
.' Discover Honor Hold |achieve 862/5
step
goto 47.2,52.9
.' Discover Hellfire Citadel |achieve 862/4
step
goto 41.2,32.6
.' Discover Pools of Aggonar |achieve 862/7
step
goto 31.3,26.9
.' Discover Mag'har Post |achieve 862/6
step
goto 23.5,40.0
.' Discover Temple of Telhamat |achieve 862/9
step
goto 26.9,62.3
.' Discvoer Falcon Watch |achieve 862/3
step
goto 27.5,77.0
.' Discover Den of Haal'esh |achieve 862/14
step
goto 14.3,41.0
.' Discover Fallen Sky Ridge |achieve 862/15
step
goto 13.3,59.4
.' Discover Ruins of Sha'naar |achieve 862/8
step
label	"hellfire1"
' Explore Hellfire Peninsula |achieve 862
step
label	"terokkar"
'Skipping next part of guide |next "+shadowmoon" |only if step:Find("+terokkar1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Terokkar Forest,59.9,17.0
.' Discover Razorthorn Shelf |achieve 867/11
step
goto 53.0,29.1
.' Discover Tuurem |achieve 867/7
step
goto 43.8,20.2
.' Discover Cenarion Thicket |achieve 867/3
step
goto 29.1,23.3
.' Discover Shattrath City |achieve 867/8
step
goto 22.4,10.5
.' Discover The Barrier Hills |achieve 867/10
step
goto 17.8,65.4
.' Discover Bleeding Hollow Ruins |achieve 867/1
step
goto 24.4,59.9
.' Discover Veil Rhaze |achieve 867/19
step
goto 31.3,52.5
.' Discover Shadow Tomb |achieve 867/17
step
goto 37.5,49.6
.' Discover Refugee Caravan |achieve 867/15
step
goto 42.9,51.0
.' Discover Carrion Hill |achieve 867/14
step
goto 39.5,39.4
.' Discover Grangol'var Village |achieve 867/5
step
goto 46.6,43.0
.' Discover Stonebreaker Hold |achieve 867/6
step
goto 60.6,40.2
.' Discover Raastok Glade |achieve 867/9
step
goto 71.7,34.7
.' Discover Firewing Point |achieve 867/4
step
goto 66.5,52.3
.' Discover Bonechewer Ruins |achieve 867/12
step
goto 57.1,56.6
.' Discover Allerian Stronghold |achieve 867/2
step
goto 49.1,66.0
.' Discover Writhing Mound |achieve 867/20
step
goto 39.5,65.5
.' Discover Ring of Observance |achieve 867/16
step
goto 33.0,71.8
.' Discover Auchenai Grounds |achieve 867/13
step
goto 43.9,76.1
.' Discover Derelict Caravan |achieve 867/18
step
goto 58.9,76.4
.' Discover Skettis |achieve 867/21
step
label	"terokkar1"
' Explore terokkar Forest |achieve 867
step
label	"shadowmoon"
'Skipping next part of guide |next "+nagrand" |only if step:Find("+shadowmoon1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Shadowmoon Valley,24.1,39.2
.' Discover Legion Hold |achieve 864/3
step
goto 29.8,52.3
.' Discover Illidari Point |achieve 864/12
step
goto 35.5,60.2
.' Discover Wildhammer Stronghold |achieve 864/10
step
goto 44.9,66.8
.' Discover Eclipse Point |achieve 864/2
step
goto 70.8,85.7
.' Discover Netherwing Ledge |achieve 864/4
step
goto 64.2,58.5
.' Discover Netherwing Fields |achieve 864/15
step
goto 57.3,50.1
.' Discover Warden's Cage |achieve 864/9
step
goto 49.8,41.2
.' Discover The Hand of Gul'dan |achieve 864/8
step
goto 39.6,39.6
.' Discover The Deathforge |achieve 864/7
step
goto 29.4,26.1
.' Discover Shadowmoon Village |achieve 864/5
step
goto 45.3,26.3
.' Discover Coilskar Point |achieve 864/1
step
goto 61.5,26.1
.' Discover Altar of Sha'tar |achieve 864/11
step
goto 77.6,40.6
.' Discover The Black Temple |achieve 864/6
step
label	"shadowmoon1"
' Explore Shadowmoon Valley |achieve 864
step
label	"nagrand"
'Skipping next part of guide |next "+zangar" |only if step:Find("+nagrand1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Nagrand,74.3,52.9
.' Discover Windyreed Village |achieve 866/18
step
goto 75.1,66.8
.' Discover Burning Blade Ruins |achieve 866/12
step
goto 68.9,79.9
.' Discover Kil'sorrow Fortress |achieve 866/4
step
goto 62.5,64.3
.' Discover Clan Watch |achieve 866/13
step
goto 65.8,54.0
.' Discover The Ring of Trials |achieve 866/9
step
goto 49.8,55.9
.' Discover Southwind Cleft |achieve 866/15
step
goto 52.8,69.1
.' Discover Telaar |achieve 866/8
step
goto 42.0,71.8
.' Discover Spirit Fields |achieve 866/6
step
goto 42.5,44.0
.' Discover Halaa |achieve 866/3
step
goto 33.5,44.7
.' Discover Sunspring Post |achieve 866/7
step
goto 20.6,51.3
.' Discover Forge Camp: Fear |achieve 866/1
step
goto 10.8,39.2
.' Discover The Twilight Ridge |achieve 866/16
step
goto 25.9,37.1
.' Discover Forge Camp: Hate |achieve 866/14
step
goto 29.7,24.6
.' Discover Warmaul Hill |achieve 866/11
step
goto 33.9,18.4
.' Discover Zangar Ridge |achieve 866/19
step
goto 46.9,18.9
.' Discover Laughing Skull Ruins |achieve 866/5
step
goto 56.1,36.4
.' Discover Garadar |achieve 866/2
step
goto 60.8,21.1
.' Discover Throne of the Elements |achieve 866/10
step
goto 72.4,36.3
.' Discover Windyreed Pass |achieve 866/17
step
label	"nagrand1"
' Explore Nagrand |achieve 866
step
label	"zangar"
'Skipping next part of guide |next "+blade" |only if step:Find("+zangar1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Zangarmarsh,70.6,79.9
.' Discover Darkcrest Shore |achieve 863/20
step
goto 83.5,82.0
.' Discover Umbrafen Village |achieve 863/11
step
goto 81.1,63.4
.' Discover Cenarion Refuge |achieve 863/1
step
goto 82.5,37.5
.' Discover The Dead Mire |achieve 863/8
step
goto 68.5,49.2
.' Discover Teredor |achieve 863/7
step
goto 62.7,41.2
.' Discover Bloodscale Grounds |achieve 863/14
step
goto 58.6,61.8
.' Discover The Lagoon |achieve 863/9
step
goto 47.8,51.7
.' Discover Twin Spire Ruins |achieve 863/10
step
goto 44.9,66.3
.' Discover Feralfen Village |achieve 863/3
step
goto 31.8,52.3
.' Discover Zabra'jin |achieve 863/17
step
goto 29.0,60.7
.' Discover Quagg Ridge |achieve 863/6
step
goto 14.5,61.9
.' Discover The Spawning Glen |achieve 863/16
step
goto 17.8,49.6
.' Discover Sporeggar |achieve 863/12
step
goto 21.7,39.6
.' Discover Marshlight Lake |achieve 863/5
step
goto 18.0,23.1
.' Disocver Ango'rosh Grounds |achieve 863/2
step
goto 18.6,8.0
.' Discover Ango'rosh Stronghold |achieve 863/13
step
goto 33.6,35.3
.' Discover Hewn Bog |achieve 863/4
step
goto 44.9,25.2
.' Discover Orebor Harborage |achieve 863/15
step
label	"zangar1"
' Explore Zangarmarsh |achieve 863
step
label	"blade"
'Skipping next part of guide |next "+nether" |only if step:Find("+blade1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Blade's Edge Mountains,29.1,81.0
.' Discover Forge Camp: Terror |achieve 865/10
step
goto 30.5,59.5
.' Discover Vortex Summit |achieve 865/26
step
goto 33.5,41.1
.' Discover Forge Camp: Wrath |achieve 865/11
step
goto 31.9,27.5
.' Discover Raven's Wood |achieve 865/16
step
goto 39.6,19.9
.' Discover Grishnath |achieve 865/12
step
goto 51.7,16.7
.' Discover Bash'ir Landing |achieve 865/1
step
goto 68.0,10.8
.' Discover Crystal Spine |achieve 865/21
step
goto 77.9,25.9
.' Discover Broken Wilds |achieve 865/6
step
goto 72.0,22.9
.' Discover Skald |achieve 865/19
step
goto 67.7,23.5
.' Discover Gruul's Lair |achieve 865/13
step
goto 55.6,26.2
.' Discover Bloodmaul Camp |achieve 865/4
step
goto 40.7,53.0
.' Discover Bladespire Hold |achieve 865/3
step
goto 37.0,65.4
.' Discover Sylvanaar |achieve 865/20
step
goto 36.4,78.7
.' Discover Veil Lashh |achieve 865/22
step
goto 46.3,77.2
.' Discover Bloodmaul Outpost |achieve 865/5
step
goto 48.0,64.9
.' Discover Jagged Ridge |achieve 865/14
step
goto 56.0,69.0
.' Discover Razor Ridge |achieve 865/17
step
goto 64.2,61.0
.' Discover Death's Door |achieve 865/8
step
goto 53.1,54.7
.' Discover Thunderlord Stronghold |achieve 865/22
step
goto 53.6,43.9
.' Discover Circle of Blood |achieve 865/7
step
goto 61.2,36.5
.' Discover Ruuan Weald |achieve 865/18
step
goto 65.1,31.6
.' Discover Veil Ruuan |achieve 865/24
step
goto 65.9,36.8
.' Discover Bladed Gulch |achieve 865/2
step
goto 74.7,41.8
.' Discover Forge Camp: Anger |achieve 865/9
step
goto 73.9,62.6
.' Discover Mok'Nathal Village |achieve 865/15
step
goto 77.1,75.2
.' Discover Vekhaar Stand |achieve 865/25
step
label	"blade1"
' Explore Blade's Edge Mountains |achieve 865
step
label	"nether"
'Skipping next part of guide |next "+end" |only if step:Find("+nether1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Netherstorm,23.5,72.9
.' Discover Manaforge B'naar |achieve 843/2
step
goto 28.4,77.5
.' Discover The Heap |achieve 843/9
step
goto 33.5,66.0
.' Discover Area 52 |achieve 843/1
step
goto 39.7,73.5
.' Discover Arklon Ruins |achieve 843/10
step
goto 48.8,84.5
.' Discover Manaforge Coruu |achieve 843/3
step
goto 57.1,88.5
.' Discover Kirin'Var Village |achieve 843/12
step
goto 56.0,77.8
.' Discover Sunfury Hold |achieve 843/15
step
goto 59.6,68.2
.' Discover Maforge Duro |achieve 843/4
step
goto 75.8,62.5
.' Discover Tempest Keep |achieve 843/8
step
goto 72.5,38.7
.' Discover Celestial Ridge |achieve 843/11
step
goto 61.7,38.2
.' Discover Manaforge Ultris |achieve 843/6
step
goto 55.1,43.5
.' Discover Ethereum Staging Grounds |achieve 843/19
step
goto 54.4,21.3
.' Discover Ruins of Farahlon |achieve 843/7
step
goto 49.5,17.0
.' Discover Netherstone |achieve 843/13
step
goto 46.1,9.6
.' Discover Eco-Dome Farfield |achieve 843/18
step
goto 29.9,16.0
.' Discover Socrethar's Seat |achieve 843/20
step
goto 37.5,26.4
.' Discover Forge Base: Oblivion |achieve 843/21
step
goto 45.1,35.8
.' Discover The Stormspire |achieve 843/16
step
goto 45.3,53.7
.' Discover Eco-Dome Midrealm |achieve 843/22
step
goto 32.9,54.9
.' Discover ruins of Enkaat |achieve 843/14
step
goto 23.2,55.9
.' Discover Gyro-Plank Bridge |achieve 843/17
step
goto 26.8,39.3
.' Discover Manaforge Ara |achieve 843/5
step
label	"nether1"
' Explore Netherstorm |achieve 843
step
label	"end"
' Congratulations! You have Explored Outlands! |achieve 44 |only if achieved(44)
' Congratulations! You have Earned the Achievement World Explorer! |achieve 46 |only if achieved(46)
' You have not fully explored Outlands yet |only if not achieved(44)
|confirm |next "start" |only if not achieved(44)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Explorer Achievement\\Northrend",[[
description This guide section will walk you through completing
description the Explorer achievement.
author support@zygorguides.com
step
' This guide is required that you have a flying mount. You can _NOT_ do this guide
.' without having a flying mount.
|confirm always
step
label	"start"
' Explore Borean Tundra |achieve 1264
' Explore Dragonblight |achieve 1265
' Explore Zul'Drak |achieve 1267
' Explore Crystalsong Forest |achieve 1457
' Explore Icecrown |achieve 1270
' Explore Howling Fjord |achieve 1263
' Explore Grizzly Hills |achieve 1266
' Explore Sholazar Basin |achieve 1268
' Explore Storm Peaks |achieve 1269
|confirm always
step
#include "rideto_borean"
step
label	"borean"
'Skipping next part of guide |next "+sholazar" |only if step:Find("+borean1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Borean Tundra,43.4,53.2
.' Discover Warsong Hold |achieve 1264/10
step
goto 57.7,69.3
.' Discover Valiance Keep |achieve 1264/11
step
goto 47.4,81.1
.' Discover Riplash Stand |achieve 1264/3
step
goto 27.9,51.6
.' Discover Garrosh's Landing |achieve 1264/5
step
goto 25.8,38.4
.' Discover Coldarra |achieve 1264/7
step
goto 46.1,34.8
.' Discover Amber Ledge |achieve 1264/9
step
goto 50.2,24.3
.' Discover Steeljaw's Carvan |achieve 1264/2
step
goto 50.2,10.3
.' Discover Bor'gorok Outpost |achieve 1264/8
step
goto 66.3,28.5
.' Discover The Geyser Fields |achieve 1264/12
step
goto 66.2,51.1
.' Discover Kaskala |achieve 1264/4
step
goto 82.4,46.4
.' Discover Death's Stand |achieve 1264/6
step
goto 87.6,25.1
.' Discover Temple City of En'kilah |achieve 1264/1
step
goto 76.4,16.4
.' Discover The Dens of the Dying |achieve 1264/13
step
label	"borean1"
' Explore Borean Tundra |achieve 1264
step
label	"sholazar"
'Skipping next part of guide |next "+icecrown" |only if step:Find("+sholazar1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Sholazar Basin,81.0,55.4
.' Discover Makers' Overlook |achieve 1268/4
step
goto 65.9,60.1
.' Discover The Lifeblood Pillar |achieve 1268/8
step
goto 53.7,52.5
.' Discover Rainspeaker Canopy |achieve 1268/7
step
goto 48.0,63.2
.' Discover River's Heart |achieve 1268/1
step
goto 36.0,75.3
.' Discover The Mosslight Pillar |achieve 1268/3
step
goto 24.3,81.7
.' Discover Kartak's Hold |achieve 1268/11
step
goto 33.3,52.3
.' Discover The Suntouched Pillar |achieve 1268/6
step
goto 29.7,40.1
.' Discover Makers' Perch |achieve 1268/5
step
goto 24.5,33.5
.' Discover The Stormwright's Shelf |achieve 1268/12
step
goto 46.8,26.1
.' Discover The Savage Thicket |achieve 1268/2
step
goto 29.5,36.3
.' Discover The Glimmering Pillar |achieve 1268/10
step
goto 74.5,34.6
.' Discover The Avalanche |achieve 1268/9
step
label	"sholazar1"
' Explore Sholazar Basin |achieve 1268
step
label	"icecrown"
'Skipping next part of guide |next "+dragon" |only if step:Find("+icecrown1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Icecrown,8.9,42.9
.' Discover Onslaught Harbor |achieve 1270/3
step
goto 27.1,39.0
.' Discover Jotunheim |achieve 1270/13
step
goto 36.5,24.1
.' Discover Valhalas |achieve 1270/8
step
goto 44.4,22.6
.' Discover The Shadow Vault |achieve 1270/15
step
goto 52.8,30.6
.' Discover Aldur'thar: The Desolation Gate |achieve 1270/6
step
goto 63.7,44.0
.' Discover The Bombardment |achieve 1270/1
step
goto 74.0,37.7
.' Discover Sindragosa's Fall |achieve 1270/7
step
goto 78.4,60.2
.' Discover Scourgeholme |achieve 1270/14
step
goto 79.6,69.1
.' Valley of Echoes |achieve 1270/9
step
goto 69.2,64.4
.' Discover The Broken Front |achieve 1270/4
step
goto 54.9,56.2
.' Discover Ymirheim |achieve 1270/10
step
goto 43.6,56.5
.' Discover The Conflagration |achieve 1270/11
step
goto 33.1,66.4
.' Discover The Fleshwerks |achieve 1270/5
step
goto 48.4,70.6
.' Discover Corp'rethar: The Horror Gate |achieve 1270/12
step
goto 54.2,85.8
.' Discover Icecrown Citadel |achieve 1270/2
step
label	"icecrown1"
' Explore Icecrown |achieve 1270
step
label	"dragon"
'Skipping next part of guide |next "+crystal" |only if step:Find("+dragon1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Dragonblight,36.0,15.0
.' Discover Angrathar the Wrath Gate |achieve 1265/11
step
goto 38.4,31.9
.' Discover Obsidian Dragonshrine |achieve 1265/4
step
goto 25.0,3931
.' Discover Icemist Village |achieve 1265/8
step
goto 13.8,46.2
.' Discover Westwind Refugee Camp |achieve 1265/14
step
goto 36.9,47.8
.' Discover Agmar's Hammer |achieve 1265/12
step
goto 39.7,67.0
.' Discover Lake Indu'le |achieve 1265/2
step
goto 47.3,48.7
.' Discover Ruby Dragonshrine |achieve 1265/3
step
goto 54.9,32.7
.' Discover Galakrond's Rest |achieve 1265/1
step
goto 59.7,49.8
.' Discover Wyrmrest Temple |achieve 1265/13
step
goto 63.5,72.7
.' Discover Emerald Dragonshrine |achieve 1265/9
step
goto 71.0,75.2
.' Discover New Hearthglen |achieve 1265/5
step
goto 77.1,60.0
.' Discover Venomspite |achieve 1265/15
step
goto 82.5,70.7
.' Discover The Forgotten Shore |achieve 1265/16
step
goto 88.9,44.0
.' Discover Naxxramas |achieve 1265/6
step
goto 83.6,25.6
.' Discover Light's Trust |achieve 1265/7
step
goto 72.7,25.6
.' Discover Scarlet Point |achieve 1265/18
step
goto 61.8,19.5
.' Discover The Crystal Vice |achieve 1265/17
step
goto 50.0,17.5
.' Discover Coldwind Heights |achieve 1265/10
step
label	"dragon1"
' Explore Dragonblight |achieve 1265
step
label	"crystal"
'Skipping next part of guide |next "+storm" |only if step:Find("+crystal1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Crystalsong Forest,26.4,61.4
.' Discover The Azure Front |achieve 1457/1
step
goto 14.5,44.1
.' Discover Violet Stand |achieve 1457/7
step
goto 13.1,33.9
.' Discover The Great Tree |achieve 1457/6
step
goto 16.0,15.4
.' Discover The Decrepit Flow |achieve 1457/2
step
goto 43.0,42.5
.' Discover Forlorn Woods |achieve 1457/4
step
goto 64.7,60.4
.' Discover The Unbound Thicket |achieve 1457/8
step
goto 75.2,83.0
.' Discover Windrunner's Overlook |achieve 1457/5
step
goto 76.9,46.3
.' Discover Sunreaver's Command |achieve 1457/3
step
label	"crystal1"
' Explore Crystalsong Forest |achieve 1457
step
label	"storm"
'Skipping next part of guide |next "+zul" |only if step:Find("+storm1"):IsComplete()
'Proceeding next step |next |only if default
step
goto The Storm Peaks,35.1,84.0
.' Discover Sparksocket Minefield |achieve 1269/7
step
goto 35.3,68.7
.' Discover Bor's Breath |achieve 1269/4
step
goto 35.9,58.0
.' Discover Temple of Storms |achieve 1269/12
step
goto 29.4,73.8
.' Discover Frosthold |achieve 1269/15
step
goto 24.0,60.5
.' Discover Valkyrion |achieve 1269/5
step
goto 23.9,50.1
.' Discover Nidavelir |achieve 1269/16
step
goto 27.3,41.9
.' Discover Snowdrift Plains |achieve 1269/13
step
goto 32.2,39.6
.' Discover Narvir's Cradle |achieve 1269/2
step
goto 41.3,17.4
.' Discover Ulduar |achieve 1269/10
step
goto 50.3,44.7
.' Discover Terrace of the Makers |achieve 1269/6
step
goto 64.8,44.8
.' Discover Temple of Life |achieve 1269/9
step
goto 72.9,48.5
.' Discover Thunderfall |achieve 1269/11
step
goto 64.4,59.1
.' Discover Dun Niffelem |achieve 1269/3
step
goto 40.9,57.2
.' Discover Engine of the Makers |achieve 1269/8
step
goto 47.8,68.2
.' Discover Brunnhildar Village |achieve 1269/1
step
goto 47.1,81.6
.' Discover Garm's Bane |achieve 1269/14
step
label	"storm1"
' Explore The Storm Peaks |achieve 1269
step
label	"zul"
'Skipping next part of guide |next "+grizzly" |only if step:Find("+zul1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Zul'Drak,17.0,57.3
.' Discover Thrym's End |achieve 1267/12
step
goto 28.2,45.1
.' Discover Voltarus |achieve 1267/11
step
goto 40.5,38.8
.' Discover Altar of Sseratus |achieve 1267/4
step
goto 53.3,36.5
.' Discover Altar of Rhunok |achieve 1267/5
step
goto 83.7,16.7
.' Discover Gundrak |achieve 1267/1
step
goto 73.2,45.6
.' Discover Altar of Mam'toth |achieve 1267/7
step
goto 76.9,59.3
.' Discover Altar of Quetz'lun |achieve 1267/6
step
goto 59.3,57.8
.' Discover Zim'Torga |achieve 1267/9
step
goto 64.4,68.9
.' Discover Altar of Har'koa |achieve 1267/8
step
goto 62.0,77.6
.' Discover Kolrama |achieve 1267/14
step
goto 48.2,56.4
.' Discover Ampitheater of Anguish |achieve 1267/3
step
goto 41.7,76.8
.' Discover Drak'Sorta Fields |achieve 1267/2
step
goto 32.0,76.4
.' Discover Light's Breach |achieve 1267/13
step
goto 21.1,75.2
.' Discover Zeramas |achieve 1267/10
step
label	"zul1"
' Explore Zul'Drak |achieve 1267
step
label	"grizzly"
'Skipping next part of guide |next "+howling" |only if step:Find("+grizzly1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Grizzly Hills,17.5,23.6
.' Discover Drak'Tharon Keep |achieve 1266/2
step
goto 15.8,49.6
.' Discover Granite Springs |achieve 1266/5
step
goto 21.3,65.3
.' Discover Conquest Hold |achieve 1266/1
step
goto 14.5,84.4
.' Discover Venture Bay |achieve 1266/9
step
goto 29.0,76.5
.' Discover Voldrune |achieve 1266/10
step
goto 31.4,57.9
.' Discover Amberpine Lodge |achieve 1266/11
step
goto 36.0,37.9
.' Discover Blue Sky Logging Grounds |achieve 1266/12
step
goto 48.2,42.2
.' Discover Grizzlemaw |achieve 1266/6
step
goto 56.8,28.4
.' Discover Westfall Brigade Encampment |achieve 1266/14
step
goto 68.1,14.8
.' Discover Thor Modan |achieve 1266/8
step
goto 71.8,27.9
.' Discover Drakil'jin Ruins |achieve 1266/3
step
goto 64.9,45.6
.' Discover Camp Oneqwah |achieve 1266/13
step
goto 77.9,59.3
.' Discover Dun Argol |achieve 1266/4
step
goto 50.3,57.2
.' Discover Rage Fang Shrine |achieve 1266/7
step
label	"grizzly1"
' Explore Grizzly Hills |achieve 1266
step
label	"howling"
'Skipping next part of guide |next "+end" |only if step:Find("+howling1"):IsComplete()
'Proceeding next step |next |only if default
step
goto Howling Fjord,36.6,9.5
.' Discover Gjalerbron |achieve 1263/9
step
goto 47.8,12.1
.' Discover Camp Winterhoof |achieve 1263/3
step
goto 54.2,16.8
.' Discover The Twisted Glade |achieve 1263/17
step
goto 60.7,12.8
.' Discover Fort Wildervar |achieve 1263/12
step
goto 68.6,26.5
.' Discover Giant's Run |achieve 1263/9
step
goto 78.1,27.3
.' Discover Vengeance Landing |achieve 1263/5
step
goto 78.2,46.2
.' Discover Ivald's Ruin |achieve 1263/13
step
goto 72.5,71.3
.' Discover Baelgun's Excavation Site |achieve 1263/20
step
goto 67.9,52.8
.' Discover Nifflevar |achieve 1263/8
step
goto 66.6,39.1
.' Discover Baleheim |achieve 1263/21
step
goto 57.6,35.9
.' Discover Cauldros Isle |achieve 1263/2
step
goto 58.3,45.9
.' Discover Utgarde Keep |achieve 1263/18
step
goto 50.1,54.1
.' Discover Halgrind |achieve 1263/14
step
goto 52.9,69.0
.' Discover New Agamand |achieve 1263/15
step
goto 34.3,75.5
.' Discover Scalawag Point |achieve 1263/7
step
goto 24..9,57.7
.' Discover Kamagua |achieve 1263/1
step
goto 40.0,50.6
.' Discover Ember Clutch |achieve 1263/10
step
goto 45.1,33.1
.' Discover Skorn |achieve 1263/16
step
goto 30.3,41.4
.' Discover Westguard Keep |achieve 1263/19
step
goto 31.3,25.9
.' Discover Steel Gate |achieve 1263/6
step
goto 26.5,21.3
.' Discover Apothecary Camp |achieve 1263/4
step
label	"howling1"
' Explore Howling Fjord |achieve 1263
step
label	"end"
' Congratulations! You have Explored Northrend |achieve 45 |only if achieved(45)
' Congratulations! You have Earned the Achievement World Explorer! |achieve 46 |only if achieved(46)
.' You have not fully discovered Northrend yet |only if not achieved(45)
|confirm |next "start" |only if not achieved(45)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\Flame Keeper\\Midsummer Fire Festival Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Midsummer Fire Festival event.
#include "Midsummer_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\Flame Keeper\\Midsummer Fire Festival Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Midsummer Fire Festival event.
step
'Complete the Midsummer Fire Festival Quests guide section before doing this guide section.
|confirm
step
goto Undercity,66.9,13.6
.talk 26221
..' Queue for The Frost Lord Ahune battle.
..' Click Find Group
..from Lord Ahune##25740
.' Complete the Ice the Frost Lord Achievement |achieve 263
step
goto Undercity,68.1,11.2
.talk 26124 |tip You will only be able to afford all this if you've done the Midsummer Quest Guide.
.buy 15 Juggling Torch##34599
.buy 1 Mantle of the Fire Festival##23324
.buy 1 Vestment of Summer##34685
.buy 1 Sandals of Summer##34683
step
goto Undercity,68.0,14.4
.' Equip your Mantle of the Fire Festival |use Mantle of the Fire Festival##23324
.' Equip your Vestment of Summer |use Vestment of Summer##34685
.' Equip your Sandals of Summer |use Sandals of Summer##34683
.' Click the Ribbon Pole |tip It looks like a tall metal pole with a small fire on top of it.
.' Let your character spin around for 1 minute
.' Complete the Burning Hot Pole Dance Achievement |achieve 271
step
'Don't forget to put your regular gear back on
|confirm
step
'Go outside to Tirisfal Glades |goto Tirisfal Glades |noway |c
step
goto Tirisfal Glades,59.1,59.0 |n
.' Ride the zeppelin to Howling Fjord |goto Howling Fjord |noway |c
step
goto Howling Fjord,79.0,29.7
.talk 27344
.' Fly to Dalaran |goto Dalaran,72.7,45.7,0.5 |noway |c
step
goto Dalaran,36.8,44.1
.' Use your 15 Juggling Torches as fast as you can |tip You must juggle them all in under 15 seconds.  The best way to do this is to place your Juggling Torches on your hotbar.  Press the hotbar key and click the ground at the same time.  Keep spamming the hotbar key and clicking the ground at the same time as fast as possible and dont stop until you get the achievement.
.' Complete the Torch Juggler Achievement |achieve 272
step
'Congratulations, you are now The Flame Warden!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\Elder\\Lunar Festival Main Questline",[[
author support@zygorguides.com
description This guide section will walk you through completing the main questline for the Lunar Festival event.
#include "H_Lunar_Festival_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\Elder\\Lunar Festival Optimized Elders Path",[[
author support@zygorguides.com
#include "H_Lunar_Festival_Elders"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\Elder\\Lunar Festival Achievements",[[
author support@zygorguides.com
#include "H_Lunar_Festival_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Love Fool\\Love is in the Air Main Questline",[[
author support@zygorguides.com
description This guide section will walk you through completing the main questline for the Love is in the Air event.
step
goto Orgrimmar,50.8,75.2
.talk 37172
..accept 24536
step
goto 51.9,76.3
.' Use Snagglebolt's Air Analyzer on pink glowing Orgrimmar Grunts around this area |use Snagglebolt's Air Analyzer##50131
.' Analyze 6 Perfumed Guards |q 24536/1
step
goto 50.8,75.2
.talk 37172
..turnin 24536
..accept 24541
step
'Go outside Orgrimmar |goto Durotar |noway |c
step
goto Durotar,47.7,11.8
.' Get the Crown Chemical Co. Package |havebuff INV_Crate_03 |q 24541 |tip To get the package, run outside the gates of Orgrimmar and take an immediate left.  Keep close to the wall, you will eventually get to a small camp where two Undead NPCs are standing next to a pile of boxes.  Get close to them in order to get the package.
step
'Run back inside Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,50.8,75.2
.' Return the Crown Chemical Co. Package |tip Simply walk next to Detective Snap Snagglebolt to return the package to him. |condition ZGV.questsbyid[24541] and ZGV.questsbyid[24541].complete |q 24541
.' If you lose your disguise, ask the Detective for another one and repeat the run.
step
goto Orgrimmar,50.8,75.2
.' Return the Crown Chemical Co. Package |tip Simply walk next to Detective Snap Snagglebolt to return the package to him.
.talk 37172
..turnin 24541
..accept 24850
step
goto 57.6,60.8
.talk 38328
..turnin 24850
..accept 24851
step
goto 53.8,73.5
.' Search the Orgrimmar Auction House |q 24851/2
step
goto 48.7,83.6
.' Search the Orgrimmar Bank |q 24851/1
step
goto 40.1,60.5
.' Search the Orgrimmar Barber Shop |q 24851/3
step
goto 57.6,60.8
.talk 38328
..turnin 24851
..accept 24576
step
'Go outside Orgrimmar |goto Durotar |noway |c
step
goto Durotar,51.6,54.75
.talk 37715
..' Tell him you have a rocket with his mark on it.
..get Snivel's Ledger |q 24576/1
step
'Go inside Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,50.8,75.2
.talk 37172
..turnin 24576
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Love Fool\\Love is in the Air Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the Love is in the Air event daily quests.
daily
step
goto Orgrimmar,50.8,75.3
.talk 37172
..' You have to be at least level 5 to accept a quest from him
..accept 24638 |daily |only if level >= 5 and level < 14
..accept 24645 |daily |only if level >= 14 and level < 23
..accept 24647 |daily |only if level >= 23 and level < 32
..accept 24648 |daily |only if level >= 32 and level < 41
..accept 24649 |daily |only if level >= 41 and level < 51
..accept 24650 |daily |only if level >= 51 and level < 61
..accept 24651 |daily |only if level >= 61 and level < 71
..accept 24652 |daily |only if level >= 71 and level <81
..accept 28935 |daily |only if level >= 81
step
goto 53.1,77.2
.talk 37675
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 24635 |daily |or
..accept 24629 |daily |or
..accept 24636 |daily |or
step
goto 53.0,76.8
.talk 38042
..accept 24612 |daily
step
'Run around Orgrimmar and:
.' Use your Crown Cologne Sprayer on NPCs and other players without a red heart over their head |use Crown Cologne Sprayer##49669
.' Give 10 Cologne Samples |q 24635/1
step
'Run around Orgrimmar and:
.' Use your Crown Perfume Sprayer on NPCs and other players without a red heart over their head |use Crown Perfume Sprayer##49668
.' Give 10 Perfume Samples |q 24629/1
step
'Run around Orgrimmar and:
.' Use your Crown Chocolate Sampler on NPCs and other players without a red heart over their head |use Crown Chocolate Sampler##49670
.' Give 10 Chocolate Samples |q 24636/1
step
'Go outside Orgrimmar to Durotar |goto Durotar |noway |c
only if level >= 5 and level < 14
step
goto Durotar,40.2,15.4
.kill 5 Crown Lackey##37214+ |q 24638/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24638/1
only if level >= 5 and level < 14
step
goto Orgrimmar,43.1,64.9 |n
.' Ride the zeppelin to Thunder Bluff |goto Thunder Bluff |noway |c
step
goto Thunder Bluff,44.0,52.6
.talk 38042
..accept 24614 |daily
step
goto 43.6,52.9
.talk 37675
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 24635
..turnin 24629
..turnin 24636
step
goto Uldum,67.8,19.8
.kill 5 Crown Technician##51613+ |q 28935/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 28935/1
only if level >= 81
step
goto 47.0,49.6
.talk 2995
.' Fly to Orgrimmar, Durotar |goto Orgrimmar,49.3,59.4,0.5 |noway |c
step
goto Orgrimmar,50.9,55.7 |n
.' Ride the zeppelin to Undercity |goto Tirisfal Glades |noway |c
step
Go inside Undercity |goto Undercity |noway |c
step
goto Undercity,66.5,38.6
.talk 38042 |tip He is in the Ruins of Lordaeron.
..accept 24613 |daily
step
goto 63.3,48.5
.talk 4551
..' Fly to The Forsaken Front, Silverpine Forest |goto Silverpine Forest,50.9,63.6,0.5 |noway |c
only if level >= 14 and level < 23
step
goto Silverpine Forest,54.7,61.3
.kill 5 Crown Thug##37917+ |q 24645/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24645/1
only if level >= 14 and level < 23
step
goto 50.9,63.6
.talk 46552
..' Fly to Undercity |goto Undercity |noway |c
only if level >= 14 and level < 23
step
goto Undercity,63.3,48.5
.talk 4551
..' Fly to Southpoint Gate, Hillsbrad |goto Hillsbrad Foothills,29.1,64.4,0.5 |noway |c
only if level >= 23 and level < 32
step
goto Hillsbrad Foothills,34.5,58.4
.kill 5 Crown Duster##37984 |q 24647/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24647/1
only if level >= 23 and level < 32
step
goto 29.1,64.4
.talk 47655
..' Fly to Undercity |goto Undercity |noway |c
only if level >= 23 and level < 32
step
goto Undercity,63.3,48.5
.talk 4551
..' Fly to Hiri'watha Research Station, The Hinterlands |goto The Hinterlands,32.4,58.1,0.5 |noway |c
only if level >= 41 and level < 51
step
goto The Hinterlands,23.6,53.7
.kill 5 Crown Agent##38016 |q 24649/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24649/1
only if level >= 41 and level < 51
step
goto 32.5,58.1
.talk 43573
..' Fly to Undercity |goto Undercity |noway |c
only if level >= 41 and level < 51
step
goto Undercity,54.9,11.3 |n
.click Orb of Translocation##7161
.' Go to Silvermoon City |goto Silvermoon City |noway |c
step
goto Silvermoon City,64.4,66.5
.talk 38042
..accept 24615 |daily
step
'This step depends on your character's level and what you want to do.
.' If you don't have a lot of money, or don't want to spend any more, do this: |tip Go to a place where the mobs are at least green to you, they cannot be grey to you, or they won't drop the items you need.  Now, just kill the mobs until you collect 40 Lovely Charms.  You won't get a Lovely Charm from every mob you kill, so be prepared to grind for a while.
..collect 40 Lovely Charm##49655 |n
.' If you have a lot of money, or don't care about spending money and just want to do the quests very quickly, do this: |tip Go to the Auction House and buy 4 Lovely Charm Bracelets.
.' If you chose to kill mobs, use your Lovely Charms to create 4 Lovely Charm Bracelets |use Lovely Charm##49655
.collect 4 Lovely Charm Bracelet##49916
step
'Go to Silvermoon City |goto Silvermoon City |noway |c
step
goto Silvermoon City,53.8,20.2
.talk 16802
..turnin 24615
step
goto 49.4,14.8 |n
.click Orb of Translocation##7161
.' Teleport to the Undercity |goto Undercity |noway |c
step
goto Undercity,58.1,91.8
.talk 10181
..turnin 24613
step
'Go outside of Undercity to Tirisfal Glades |goto Tirisfal Glades |noway |c
step
goto Tirisfal Glades,60.7,58.8 |n
.' Ride the zeppelin to Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,43.1,64.9 |n
.' Ride the zeppelin to Thunder Bluff |goto Thunder Bluff |noway |c
step
goto Thunder Bluff,60.3,51.7
.talk 3057
..turnin 24614
step
goto 15.4,25.7 |n
.' Ride the zeppelin to Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,44.6,62.4 |n
.' Ride the zeppelin to Borean Tundra |goto Borean Tundra |noway |c
only if level >= 71
step
goto Borean Tundra,40.4,51.4
.talk 25288
..' Fly to Dalaran |goto Dalaran |noway |c
only if level >= 71
step
'Go outside of Dalaran to Crystalsong Forest |goto Crystalsong Forest |noway |c
only if level >= 71
step
goto Crystalsong Forest,46.3,50.8
.kill 5 Crown Sprayer##38032 |q 24652/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24652/1
only if level >= 71
step
'Go to Dalaran |goto Dalaran |noway |c
only if level >= 71
step
goto Dalaran,72.2,45.8
.talk 28674
.' Fly to Warsong Hold, Borean Tundra |goto Borean Tundra,40.4,51.5,0.5 |noway |c
only if level >= 71
step
goto Borean Tundra,41.4,53.7 |n
.' Ride the zeppelin to Orgrimmar |goto Orgrimmar |noway |c
only if level >= 71
step
goto Orgrimmar,49.7,59.2
.talk 3310
..' Fly to Brackenwall Village |goto Dustwallow Marsh,35.6,31.8,0.5 |noway |c
only if level >= 32 and level < 41
step
goto Dustwallow Marsh,60.7,38.3
.kill 5 Crown Hoodlum##38006 |q 24648/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24648/1
only if level >= 32 and level < 41
step
goto 35.6,31.9
.talk 11899
..' Fly to Orgrimmar |goto Orgrimmar,49.3,59.4,0.5 |noway |c
only if level >= 32 and level < 41
step
goto Orgrimmar,49.7,59.2
.talk 3310
..' Fly to Everlook |goto Winterspring,58.9,48.3,0.5 |noway |c
only if level >= 51 and level < 61
step
goto Winterspring,63.6,49.4
.kill 5 Crown Sprinkler##38023 |q 24650/2 |tip They are on top of this big hill.
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24650/1
only if level >= 51 and level < 61
step
goto 58.8,48.3
.talk 11139
..' Fly to Orgrimmar |goto Orgrimmar,49.3,59.4,0.5 |noway |c
only if level >= 51 and level < 61
step
goto Orgrimmar,47.1,61.9 |n
.' Click the Portal to Blasted Lands |goto Blasted Lands |noway |c
only if level >= 61 and level < 71
step
goto Blasted Lands,55.0,54.1 |n
.' Go into the big green portal to Outland |goto Hellfire Peninsula |noway |c
only if level >= 61 and level < 71
step
goto Hellfire Peninsula,87.3,48.1
.talk 18930
..' Fly to Shattrath City |goto Shattrath City |noway |c
only if level >= 61 and level < 71
step
'Go outside of Shattrath City to Terokkar Forest |goto Terokkar Forest |noway |c
only if level >= 61 and level < 71
step
goto Terokkar Forest,41.4,22.4
.kill 5 Crown Underling##38030 |q 24651/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24651/1
only if level >= 61 and level < 71
step
'Go inside Shattrath City |goto Shattrath City |noway |c
only if level >= 61 and level < 71
step
goto Shattrath City,64.1,41.1
.talk 18940
.' Fly to Hellfire Peninsula, The Dark Portal, Horde |goto Hellfire Peninsula,87.4,48.2,0.5 |noway |c
only if level >= 61 and level < 71
step
'Go through the big green portal to Blasted Lands |goto Blasted Lands |noway |c
only if level >= 61 and level < 71
step
goto Blasted Lands,50.9,72.9
.talk 43114
.' Fly to Booty Bay, Stranglethorn |goto The Cape of Stranglethorn,40.5,73.3,0.5 |noway |c
only if level >= 61 and level < 71
step
goto The Cape of Stranglethorn,39.3,67.2 |n
.' Ride the boat to Ratchet |goto Northern Barrens |noway |c
only if level >= 61 and level < 71
step
goto Northern Barrens,69.1,70.7
.talk 16227
.' Fly to Orgrimmar, Durotar |goto Orgrimmar,49.3,59.4,0.5 |noway |c
only if level >= 61 and level < 71
step
goto Orgrimmar,48.1,70.5
.talk 39605
..turnin 24612
step
goto 50.8,75.3
.talk 37172
..' You have to be at least level 5 to accept a quest from him
..turnin 24638 |only if level >= 5 and level < 14
..turnin 24645 |only if level >= 14 and level < 23
..turnin 24647 |only if level >= 23 and level < 32
..turnin 24648 |only if level >= 32 and level < 41
..turnin 24649 |only if level >= 41 and level < 51
..turnin 24650 |only if level >= 51 and level < 61
..turnin 24651 |only if level >= 61 and level < 71
..turnin 24652 |only if level >= 71
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Love Fool\\Love is in the Air Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the Love is in the Air event achievements.
step
'You will need Love Tokens in order to purchase items from vendors in this guide section. |tip You can get Love Tokens by completing the dailies in the Love is in the Air Dailies section.
|confirm
step
goto Orgrimmar,53.1,77.0
.talk 37674
.buy Bag of Heart Candies##21813 |n
.' Get the 8 different types of Heart Candy:
.' Be Mine! |collect 1 Heart Candy##21816
.' I'll follow you all around Azeroth. |collect 1 Heart Candy##21818
.' All yours. |collect 1 Heart Candy##21819
.' I'm all yours! |collect 1 Heart Candy##21821
.' Hot Lips. |collect 1 Heart Candy##21823
.' You're Mine! |collect 1 Heart Candy##21822
.' You're the best! |collect 1 Heart Candy##21820
.' I LOVE YOU |collect 1 Heart Candy##21817
step
'Eat the 8 different type of Heart Candy:
.' Be Mine! |use 1 Heart Candy##21816 |achieve 1701/1
.' I'll follow you all around Azeroth. |use 1 Heart Candy##21818 |achieve 1701/2
.' All yours. |use 1 Heart Candy##21819 |achieve 1701/3
.' I'm all yours! |use 1 Heart Candy##21821 |achieve 1701/4
.' Hot Lips. |use 1 Heart Candy##21823 |achieve 1701/5
.' You're Mine! |use 1 Heart Candy##21822 |achieve 1701/6
.' You're the best! |use 1 Heart Candy##21820 |achieve 1701/7
.' I LOVE YOU |use 1 Heart Candy##21817 |achieve 1701/8
step
goto 53.1,77.0
.talk 37674
.buy 10 Silver Shafted Arrow##22200 |n
.' Use your Silver Shafted Arrows on 10 players inside Orgrimmar |use Silver Shafted Arrow##22200
.' Shoot 10 Players with the Silver Shafted Arrow |achieve 1188
step
goto 53.1,77.0
.talk 37674
.buy 1 Box of Chocolates##49909 |n
.' Use your Box of Chocolates and get all the chocolate contained inside of it |use Box of Chocolates##49909
.' Eat each type of chocolate:
.' Sweet Surprise |use Sweet Surprise##22239 |achieve 1702/3
.' Very Berry Cream |use Very Berry Cream##22238 |achieve 1702/4
.' Buttermilk Delight |use Buttermilk Delight##22236 |achieve 1702/1 |tip Save the remaining Buttermilk Delights for a later achievement.
.' Dark Desire |use Dark Desire##22237 |achieve 1702/2
step
goto 53.1,77.0
.talk 37674
.buy 10 Love Rocket##34258 |n
.' Spam use your Love Rockets |use Love Rocket##34258
.' Shoot off 10 Love Rockets in 20 seconds or less |achieve 1696
step
goto 53.1,77.0
.talk 37674
.buy 15 Handful of Rose Petals##22218 |achieve 1699
.buy 1 Romantic Picnic Basket##34480 |achieve 1291
.buy 1 "VICTORY" Perfume##49856 |achieve 1280
.buy 5 Love Fool##22261 |achieve 1704
step
goto 54.8,78.0
.talk 5611
.buy 6 Flagon of Mead##2594 |achieve 1280
step
'Go to Dalaran |goto Dalaran |noway |c
step
'All around Dalaran:
.' Use your Handful of Rose Petals on the follow race/class combinations: |use Handful of Rose Petals##22218 |tip Save any extra Handfuls of Rose Petals you have, you'll need one later.
.' Gnome Warlock |achieve 1699/1
.' Orc Death Knight |achieve 1699/2
.' Human Death Knight |achieve 1699/3
.' Night Elf Priest |achieve 1699/4
.' Orc Shaman |achieve 1699/5
.' Tauren Druid |achieve 1699/6
.' Undead Warrior |achieve 1699/7
.' Troll Rogue |achieve 1699/8
.' Blood Elf Mage |achieve 1699/9
.' Draenei Paladin |achieve 1699/10
.' Dwarf Hunter |achieve 1699/11
step
'In Dalaran:
.' Find a player to have a picnic with you
.' Use your Romantic Picnic Basket |use Romantic Picnic Basket##34480
.' While having a picnic, use your Buttermilk Delight |use Buttermilk Delight##22236
.' Enjoy a Buttermilk Delight with someone in Dalaran at a Romantic Picnic |achieve 1291
step
'Go to Wintergrasp in Northrend:
.' Use your Love Fool anywhere inside Wintergrasp |use Love Fool##22261
.' Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/1
step
'Go to Undercity |goto Undercity |noway |c
step
goto Undercity,67.6,44.1
.' Do the following exactly in order from top to bottom in the step:
.' Use all 6 of your Flagons of Mead to get Completely Smashed |use Flagon of Mead##2594
.' Use your "VICTORY" Perfume |use "VICTORY" Perfume##49856
.' Use your Handful of Rose Petals on Jeremiah Payson |use Handful of Rose Petals##22218 |achieve 1280/1
.' Kiss Jeremiah Payson |script DoEmote("KISS") |achieve 1280/2
step
'Go to the Gurubashi Arena in The Cape of Stranglethorn: |tip The Cape of Stranglethorn is the southern-most zone on the Eastern Kingdoms continent.
.' Use your Love Fool anywhere inside the Gurubashi Arena |use Love Fool##22261
.' Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/2
step
'Enter the Arathi Basin PvP Battleground:
.' Use your Love Fool inside the Blacksmith subzone inside Arathi Basin |use Love Fool##22261
.' Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/3
step
'Enter the Culling of Stratholme dungeon:
.' Use your Love Fool anywhere inside the Culling of Stratholme dungeon |use Love Fool##22261
.' Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/4
step
'Enter the Naxxramas raid:
.' Use your Love Fool anywhere inside the Naxxramas raid |use Love Fool##22261
.' Target the Love Fool and Pity it |script DoEmote("PITY") |achieve 1704/5
step
'Go to a place where the mobs are at least green to you, they cannot be grey to you, or they won't drop the items you need.
.' Kill the mobs until you collect 120 Lovely Charms.  |tip You won't get a Lovely Charm from every mob you kill, so be prepared to grind for a while.
.collect 120 Lovely Charm##49655 |n
.' Use your Lovely Charms to create 12 Lovely Charm Bracelets |use Lovely Charm##49655
.' Create 12 Lovely Charm Bracelets |achieve 260
step
'Kill these certain bosses in any of the following dungeons: |tip You can enter either Normal or Heroic difficulty, it doesn't matter.
.' Maiden of Grief in the Halls of Stone dungeon
.' Prince Keleseth in the Utgarde Keep dungeon
.' Prince Taldaram in the Ahn'kahet: The Old Kingdom dungeon
.' Get either of these 2 items as a random drop from these bosses:
.collect 1 Bouquet of Red Roses##22206 |n
.collect 1 Bouquet of Ebon Roses##44731 |n
.' Obtain a Bouquet of Red or Ebon Roses during the Love is in the Air celebration |achieve 1703
step
'Congratulations, you are a Fool For Love!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Noble\\Noblegarden Quests and Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests and dailies for the Noblegarden event.
#include "H_Noblegarden_Quests_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Noble\\Noblegarden Achievements",[[
author support@zygorguides.com
description This guide section will walk you through getting all 12 achievements for the Noblegarden event.
#include "H_Noblegarden_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Matron-Patron\\Children's Week Orgrimmar Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Orgrimmar questline for the Children's Week event.
startlevel 10
#include "H_Children's_Week_Ogrimmar_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Matron-Patron\\Children's Week Shattrath Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Shattrath questline for the Children's Week event.
startlevel 60
#include "H_Children's_Week_Shattrath_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Matron-Patron\\Children's Week Dalaran Oracles Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Dalaran Oracles questline for the Children's Week event.
startlevel 70
#include "H_Children's_Week_Oracle_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Matron-Patron\\Children's Week Dalaran Wolvar Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Dalaran Wolvar questline for the Children's Week event.
startlevel 70
#include "H_Children's_Week_Wolvar_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Matron-Patron\\Children's Week Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the Achievements for the Children's Week event.
startlevel 10
#include "H_Children's_Week_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\Brewmaster\\Brewfest Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Brewfest event.
step
goto Orgrimmar,51.6,75.2
.talk 19175
..accept 11446
step
'Go outside to Durotar |goto Durotar |noway |c
step
goto Durotar,42.6,17.8
.talk 24497
..accept 11409
step
'As you run around on the ram:
.' Use your Ram Racing Reins |use Ram Racing Reins##33306 |tip The ram runs slow by default.  You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds. To make the ram Trot for 8 seconds, use the Ram Racing Reins every 2 seconds or so to keep the ram running at the speed just above the slow default speed.  To make the Ram Canter for 8 seconds, use the Ram Racing Reins a little more often than when you made the Ram Trot.  To make the Ram Gallop, just spam use the Ram Racing Reins.
.' Maintain a Trot for 8 seconds |q 11409/1
.' Maintain a Canter for 8 seconds |q 11409/2
.' Maintain a Gallop for 8 seconds |q 11409/3
step
goto Durotar,42.6,17.9
.talk 24497
..turnin 11409
..accept 11412
step
goto 50.6,13.5
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Run as fast as you can without making your Ram stop from being too tired.  Stop at every bucket of apples you see on the side of the road to refresh your Ram's fatigue level, allowing the Ram to run faster for longer.
.' Bok Dropcertain will throw you a keg when you get close
.' Once you have a keg, run back and turn it in to Driz Tumblequick at [42.6,17.7] |tip Just get near him and you will throw the keg to him.
.' Deliver 3 Kegs in Under 4 Minutes|q 11412/1
step
goto Durotar,42.6,17.8
.talk 24497
..turnin 11412
step
goto Durotar,42.7,17.7
.talk 24510
.' You will only be able to accept one of these quests
..accept 29396 |or
..accept 13931 |or
step
goto Durotar,41.6,18.4
.talk 24711
..turnin 11446
step
goto Durotar,41.5,17.6
.talk 27216
..accept 12191
step
goto Durotar,41.5,17.5
.' Click the Complimentary Brewfest Samplers |tip They looks like mugs of beer on the small tables on either side of you.
.' Use your Complimentary Brewfest Samplers |use Complimentary Brewfest Sampler##33096
.' Hit S.T.O.U.T. 5 Times |q 12191/1
step
goto 41.5,17.5
.talk 27216
..turnin 12191
step
goto 41.2,18.5
.' NOTE: If you are on an EU server, you will be unable to accept these 2 quests. |tip So, just skip them, and also skip the guide steps where you complete the quest goals for these quests.
.talk 24657
..accept 11431
..accept 11120
step
goto 41.3,17.9
.talk 24657
..' Ask him if there's another way you can help out if you don't like drinking, then ask for a pair of Synthebrew Goggles
.collect Synthebrew Goggles##46735 |q 11431
step
goto 40.3,17.9
.talk 24495
.' You will only be able to turn in one of these quests
..turnin 29396 |or
..turnin 13931 |or
step
'Use your Synthebrew Goggles |use Synthebrew Goggles##46735
.' Equip the Synthebrew Goggles |havebuff Interface\Icons\Spell_Holy_SpiritualGuidence |q 11431
step
goto Durotar,41.2,18.1
.' Use your Wolpertinger Net on Wild Wolpertingers |use Wolpertinger Net##32907 |tip They look like rabbits with antlers and wings running around on the ground around this area.
.get 5 Stunned Wolpertinger |q 11431/1
step
goto Durotar,41.2,18.5
.talk 24657
..turnin 11431
.' Earn Does Your Wolpertinger Linger? achievement |achieve 1683/6
step
.' Go Northeast to Orgrimmar |goto Orgrimmar |noway|c
step
goto Orgrimmar,50.9,55.7 |n
.' Ride the zepplin to Tirisfal Glades |goto Tirisfal Glades |noway|c
step
'Go south into Undercity |goto Undercity |noway |c
step
goto Undercity,70.5,12.0
.' Use your Elekk Dispersion Ray on Tirisfal Pink Elekks |use Elekk Dispersion Ray##32960
.kill 3 Tirisfal Pink Elekk##23530 |q 11120/3
step
goto 54.9,11.3 |n
.click Orb of Translocation##7161
.' Teleport to Silvermoon City |goto Silvermoon City |noway |c
step
'Go outside to Eversong Woods |goto Eversong Woods |noway |c
step
goto Eversong Woods,57.0,53.1
.' Use your Elekk Dispersion Ray on Eversong Pink Elekks |use Elekk Dispersion Ray##32960
.kill 3 Eversong Pink Elekk##23531 |q 11120/1
step
'Go inside Silvermoon City |goto Silvermoon City |noway |c
step
goto Silvermoon City,49.5,14.8 |n
.click Orb of Translocation##7161
.' Teleport to Undercity |goto Undercity |noway |c
step
'Go outside to Tirisfal Glades |goto Tirisfal Glades |noway |c
step
goto Tirisfal Glades,60.7,58.7 |n
.' Ride the zeppelin to Orgrimmar |goto Orgrimmar |noway |c
step
|fly Thunder Bluff
step
goto Thunder Bluff,34.7,74.7
.' Go down the lifts
.' Use your Elekk Dispersion Ray on Mulgore Pink Elekks |use Elekk Dispersion Ray##32960
.kill 3 Mulgore Pink Elekk##23529 |q 11120/2
step
|fly Orgrimmar
step
'Go outside to Durotar |goto Durotar |noway |c
step
goto Durotar,41.2,18.5
.talk 24657
..turnin 11120
step
'Use the Dungeon Finder (press I) to queue for Coren Direbrew |tip You must be level 80 do complete this quest.
.' You will fight Coren Direbrew
.from Coren Direbrew##23872
.collect 1 Direbrew's Dire Brew##38281 |n
.' Click Direbrew's Dire Brew in your bags |use Direbrew's Dire Brew##38281
..accept 12492
.' Kill Coren  Direbrew |achieve 1683/3
step
'Click the green eye on the edge of your minimap
.' Teleport Out of the Dungeon |goto Durotar |noway |c
step
goto Durotar,41.6,18.5
.talk 24711
..turnin 12492
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\Brewmaster\\Brewfest Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests for the Brewfest event.
daily
step
goto Durotar,40.6,18.2
.talk 24498
..accept 11407 |daily |or
.' Go to [Durotar,40.2,17.1]
.talk 24499
..accept 11408 |daily |or
.' You will only be able to accept one of these quests per day.
step
'Ride your ram into Orgrimmar |goto Orgrimmar |noway |c |q 11407
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
step
'Ride your ram into Orgrimmar |goto Orgrimmar |noway |c |q 11294
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
step
goto Orgrimmar,52.1,75.0
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark Outside the Auction House |q 11407/1
step
goto 67.0,48.2
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Valley of Honor |q 11407/2
step
goto 44.3,49.1
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Valley of Wisdom |q 11407/3
step
goto 38.0,75.6
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Valley of Spirits |q 11407/4
step
goto Orgrimmar,52.9,66.5
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark Outside the Auction House |q 11408/1
step
goto 71.5,34.8
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Valley of Honor |q 11408/2
step
goto 43.8,36.5
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Valley of Wisdom |q 11408/3
step
goto 37.0,74.3
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Valley of Spirits |q 11408/4
step
'Go outside to Durotar |goto Durotar |noway |c
step
goto Durotar,40.6,18.2
.talk 24498
..turnin 11407
step
goto Durotar,43.6,17.6
.talk 24499
..turnin 11408
step
goto 40.4,18.0
.click Dark Iron Mole Machine Wreckage##7000 |tip It appears after the Dark Iron dwarves attack the Brewfest festival, so you may have to wait for it to appear.
..accept 12192 |daily
step
goto 41.5,17.6
.talk 27216
..turnin 12192
.' Earn the Down With the Dark Iron achievement |achieve 1683/4
step
goto 42.7,17.6
.talk 24497
..accept 29393 |instant |daily
.' On your Ram, run to Bok Dropcertain at [50.6,13.5] |tip Bok Dropcertain will throw you a keg when you get close.
.' Deliver as many kegs as you can within 4 minutes |tip You get 2 Brewfest Prize Tokens for each keg you deliver, so this is a good way to get some Brewfest Prize Tokens to join the Brew of the Month Club.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\Brewmaster\\Brewfest Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Brewfest event.
step
goto Durotar,41.0,18.3
.talk 23603
.buy 1 The Essential Brewfest Pretzel##33043 |achieve 1185
step
'Click The Essential Brewfest Pretzels in your bags |use The Essential Brewfest Pretzel##33043
.' Eat The Essential Brewfest Pretzels |achieve 1185/7
step
goto 40.2,17.7
.talk 23604
.buy 1 Spiced Onion Cheese##34065 |achieve 1185
step
'Click the Spiced Onion Cheese in your bags |use Spiced Onion Cheese##34065
.' Eat the Spiced Onion Cheese |achieve 1185/4
step
goto 41.2,17.3
.talk 23605
.buy 1 Dried Sausage##34063 |achieve 1185
.buy 1 Succulent Sausage##34064 |achieve 1185
.buy 1 Savory Sausage##33023 |achieve 1185
.buy 1 Pickled Sausage##33024 |achieve 1185
.buy 1 Spicy Smoked Sausage##33025 |achieve 1185
.buy 1 The Golden Link##33026 |achieve 1185
step
'Do the following:
.' Click the Dried Sausage in your bags |use Dried Sausage##34063
.' Eat the Dried Sausage |achieve 1185/1
.' Click the Succulent Sausage in your bags |use Succulent Sausage##34064
.' Eat the Succulent Sausage |achieve 1185/6
.' Click the Savory Sausage in your bags |use Savory Sausage##33023
.' Eat the Savory Sausage |achieve 1185/3
.' Click the Pickled Sausage in your bags |use Pickled Sausage##33024
.' Eat the Pickled Sausage |achieve 1185/2
.' Click the Spicy Smoked Sausage in your bags |use Spicy Smoked Sausage##33025
.' Eat Spicy Smoked Sausage |achieve 1185/5
.' Click the The Golden Link in your bags |use The Golden Link##33026
.' Eat The Golden Link |achieve 1185/8
.' Earn The Brewfest Diet |achieve 1683/1
step
goto 40.3,17.9
.talk 24495
.buy Fresh Brewfest Hops##37750 |achieve 303 |tip You must be at least level 20 to buy these.
step
'Use your Fresh Brewfest Hops |use Fresh Brewfest Hops##37750
.' Make your Mount Festive for Brewfest! |achieve 303
.' Earn Have Keg, Will Travel |achieve 1683/5
step
'Complete the Brewfest daily quests each day until you have 200 Brewfest Prize Tokens
.collect 200 Brewfest Prize Token##37829 |achieve 2796
step
goto 40.3,17.9
.talk 24495
.buy 1 "Brew of the Month" Club Membership Form##37599 |n
.' Click the "Brew of the Month" Club Membership Form in your bags |use "Brew of the Month" Club Membership Form##37599
..accept 12306
.buy Wolpertinger's Tankard##32233
.learnpet Wolpertinger##22943 |use Wolpertinger's Tankard##32233|achieve 1683/6
step
'Go inside Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,50.4,73.5
.talk 27489
..turnin 12306
.' Earn the Brew of the Month achievement |achieve 1683/2
step
'Congratulations, you are a Brewmaster! |achieve 1683
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Hallowed\\Hallow's End Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Hallow's End event.
#include "Hallows_End_Quests_Horde"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Hallowed\\Hallow's End Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests for the Hallow's End event.
daily
#include "Hallows_End_Dailies_Horde"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Hallowed\\Hallow's End Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Hallow's End event.
#include "Hallows_End_Achievements_Horde"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Pilgrim\\Pilgrim's Bounty Quests and Cooking 1-300 Guide",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Pilgrim's Bounty event, as well as getting your Cooking skill from 1-300.
#include "Pilgrims_Bounty_Quests_Horde"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\The Pilgrim\\Pilgrim's Bounty Achievement",[[
#include "Pilgrims_Bounty_Achievements_Horde"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\Merrymaker\\Feast of Winter Veil Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Feast of Winter Veil event.
#include "H_Winterveil_Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Events\\Merrymaker\\Feast of Winter Veil Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Feast of Winter Veil event.
#include "H_Winterveil_Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Of the Horde",[[
author support@zygorguides.com
step
'This title is earned by achieving 100,000 honorable kills in any Player vs Player environment.
|achieve 870
step
'Congratulations! You have earned the title of the Horde!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\The Bloodthirsty",[[
author support@zygorguides.com
step
'This title is earned by achieving 250,000 honorable kills in any Player vs Player environment.
|achieve 5363
step
'Congratulations! You have earned the title "The Bloodthirsty"!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Arena Master",[[
author support@zygorguides.com
step
'This title is earned by completing the _"The Arena Master"_ achievement. |tip This is an incredibly difficult title to obtain.
|achieve 1174
step
'Congratulations! You have earned the title Arena Master!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Battlemaster",[[
author support@zygorguides.com
step
'This title is earned by completing the _Battlemaster_ achievement.
'In order to complete the _Battlemaster_ achievement you must obtain 5 achievements that make you the master of the following battlegrounds: Alterac Valley, Warsong Gulch, Strand of the Ancients, Arathi Basin, and Eye of the Storm.
|achieve 1175
step
'Congratulations! You have earned the title Battlemaster!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Conqueror",[[
author support@zygorguides.com
step
'This title is earned by completing the _"The Conqueror"_ achievement.
'In order to complete the _"The Conqueror"_ achievement you must become Exalted with The Defilers, the Warsong Outriders, and the Frostwolf Clan. Use Zygor's Reputation Guides to do so.
|achieve 714
step
'Congratulations! You have earned the title Conqueror!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Scout",[[
step
'This title is earned by achieving a rated battleground score of 1100.
|achieve 5345
step
'Congratulations! You have earned the title Scout!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Grunt",[[
step
'This title is earned by achieving a rated battleground score of 1200.
|achieve 5346
step
'Congratulations! You have earned the title Grunt!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Sergeant",[[
step
'This title is earned by achieving a rated battleground score of 1300.
|achieve 5347
step
'Congratulations! You have earned the title Sergeant!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Senior Sergeant",[[
step
'This title is earned by achieving a rated battleground score of 1400.
|achieve 5348
step
'Congratulations! You have earned the title Senior Sergeant!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\First Sergeant",[[
step
'This title is earned by achieving a rated battleground score of 1500.
|achieve 5349
step
'Congratulations! You have earned the title First Sergeant!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Stone Guard",[[
step
'This title is earned by achieving a rated battleground score of 1600.
|achieve 5350
step
'Congratulations! You have earned the title Stone Guard!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Blood Guard",[[
step
'This title is earned by achieving a rated battleground score of 1700.
|achieve 5351
step
'Congratulations! You have earned the title Blood Guard!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Legionnaire",[[
step
'This title is earned by achieving a rated battleground score of 1800.
|achieve 5352
step
'Congratulations! You have earned the title Legionnaire!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Centurion",[[
step
'This title is earned by achieving a rated battleground score of 1900.
|achieve 5338
step
'Congratulations! You have earned the title Centurion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Champion",[[
step
'This title is earned by achieving a rated battleground score of 2000.
|achieve 5353
step
'Congratulations! You have earned the title Champion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Lieutenant General",[[
step
'This title is earned by achieving a rated battleground score of 2100.
|achieve 5354
step
'Congratulations! You have earned the title Lieutenant General!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\General",[[
step
'This title is earned by achieving a rated battleground score of 2200.
|achieve 5355
step
'Congratulations! You have earned the title General!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Warlord",[[
step
'This title is earned by achieving a rated battleground score of 2300.
|achieve 5342
step
'Congratulations! You have earned the title Warlord!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\High Warlord",[[
step
'This title is earned by achieving a rated battleground score of 2400.
|achieve 5356
step
'Congratulations! You have earned the title High Warlord!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Veteran of the Horde",[[
step
'This title is a reward for completing the _"Veteran of the Horde"_ achievement.
'To earn this achievement win 75 Rated Battlegrounds.
|achieve 5325
step
Congratulations! You have earned the title Veteran of the Horde!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Titles\\Player Versus Player\\Warbringer",[[
step
'This title is a reward for completing the _"Warbringer of the Horde"_ achievement.
'To earn this achievement win 300 Rated Battlegrounds.
|achieve 5326
step
Congratulations! You have earned the title Warbringer!
]])
