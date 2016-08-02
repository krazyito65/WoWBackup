local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("TitlesA") then return end
ZygorGuidesViewer:RegisterInclude("port_blastedlands",[[
goto 49.0,87.3
.' Click the Portal to Blasted Lands |tip It's a blue and purple swirling portal.
.' Teleport to the Blasted Lands |goto Blasted Lands |noway |c
]])
ZygorGuidesViewer:RegisterInclude("darkportal",[[
goto Stormwind City,49.0,87.3
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Azeroth Titles\\Ambassador, Home Cities Reputation",[[
author support@zygorguides.com
step
label	"menu"
.' This guide will show you how to become exalted the fastest way, with all your Hometown Factions.
.' Below you will see which faction you are Exalted with and which ones you are not:
.' Exalted with Stormwind |condition rep('Stormwind')==Exalted
.' Click to use the Stormwind rep Guide |confirm |next "sw" |only if rep ('Stormwind')<=Revered
.' or
.' Exalted with Darnassus |condition rep('Darnassus')==Exalted
.' Click to use the Darnassus rep Guide |confirm |next "darn" |only if rep ('Darnassus')<=Revered
.' or
.' Exalted with Gnomeregan |condition rep('Gnomeregan')==Exalted
.' Click to use the Gnomeregan rep Guide |confirm |next "gnom" |only if rep ('Gnomeregan')<=Revered
.' or
.' Exalted with Ironforge |condition rep('Ironforge')==Exalted
.' Click to use the Ironforge Rep Guide |confirm |next "iron" |only if rep ('Ironforge')<Revered
.' or
.' Exalted with The Exodar |condition rep('The Exodar')==Exalted         
.' Click to use the Exodar rep Guide |confirm |next "ex" |only if rep('The Exodar')<=Revered
.' or
.' Exalted with Gilneas |condition rep('Gilneas')==Exalted
.' Click to use the Gilneas rep Guide |confirm |next "gil" |only if rep ('Gilneas')<=Revered
|next "end" |only if achieved(948)
step
label	"sw"
goto Stormwind City,67.7,73.0
.talk 49877
.buy Stormwind Tabard##45574
step
.' Equip your Stormwind Tabard |equipped Stormwind Tabard##45574 |use Stormwind Tabard##45574
.' You can run any dungeon that grants experience to gain reputation for Stormwind.
.' Friendly with Stormwind |condition rep('Stormwind')>=Friendly
.' Honored with Stormwind |condition rep('Stormwind')>=Honored
.' Revered with Stormwind |condition rep('Stormwind')>=Revered
.' Become Exalted with Stormwind |condition rep('Stormwind')==Exalted
|next "menu"
step
label	"darn"
'Skipping next part of guide |next "+darn_tab" |only if step:Find("+darn_buy"):IsComplete()
'Proceeding next step |next |only if default
step
#include "rideto_ruttheranvillage"
step
goto Teldrassil,55.1,88.5
.' Go through the Large Pink Portal
.' Teleport to Darnassus |goto Darnassus |noway |c
step
label	"darn_buy"
goto Darnassus,36.2,48.5
.talk 50305
.buy Darnassus Tabard##45579
step
label	"darn_tab"
.' Equip your Darnassus Tabard |use Darnassus Tabard##45579
.' You can run any dungeon that grants experience to gain reputation for Darnassus.
.' Friendly with Darnassus |condition rep('Darnassus')>=Friendly
.' Honored with Darnassus |condition rep('Darnassus')>=Honored
.' Revered with Darnassus |condition rep('Darnassus')>=Revered
.' Become Exalted with Darnassus |condition rep('Darnassus')==Exalted
|next "menu"
step
label	"ex"
'Skipping next part of guide |next "+ex_tab" |only if step:Find("+ex_buy"):IsComplete()
'Proceeding next step |next |only if default
step
#include "rideto_ruttheranvillage"
step
goto Teldrassil,55.1,88.5
.' Go through the Large Pink Portal
.' Teleport to Darnassus |goto Darnassus |noway |c
step
goto Darnassus,44.2,78.7	
.click Portal to The Exodar##06955
.' Teleport to The Exodar |goto The Exodar |noway |c
step
label	"ex_buy"
goto The Exodar,54.8,36.8
.talk 50306
.buy Exodar Tabard##45580
step
label	"ex_tab"
.' Equip your Exodus Tabard |equipped Exodar Tabard##45580 |use Exodar Tabard##45580
.' You can run any dungeon that grants experience to gain reputation for The Exodar.
.' Friendly with The Exodar |condition rep('The Exodar')>=Friendly
.' Honored with The Exodar |condition rep('The Exodar')>=Honored
.' Revered with The Exodar |condition rep('The Exodar')>=Revered
.' Become Exalted with The Exodar |condition rep('The Exodar')==Exalted
|next "menu"
step
label	"gnom"
'Skipping next part of guide |next "+gnom_tab" |only if step:Find("+gnom_buy"):IsComplete()
'Proceeding next step |next |only if default
step
|fly Ironforge
step
label	"gnom_buy"
goto Ironforge,55.3,48.2
.talk 50308
.buy Gnomeregan Tabard##45578
step
label	"gnom_tab"
.' Equip your Gnomeregan Tabard |equipped Gnomeregan Tabard##45578 |use Gnomeregan Tabard##45578
.' You can run any dungeon that grants experience to gain reputation for Gnomeregan.
.' Friendly with Gnomeregan |condition rep('Gnomeregan')>=Friendly
.' Honored with Gnomeregan |condition rep('Gnomeregan')>=Honored
.' Revered with Gnomeregan |condition rep('Gnomeregan')>=Revered
.' Become Exalted with Gnomeregan |condition rep('Gnomeregan')==Exalted
|next "menu" 
step
label	"iron"
'Skipping next part of guide |next "+iron_tab" |only if step:Find("+iron_buy"):IsComplete()
'Proceeding next step |next |only if default
step
|fly Ironforge
step
label	"iron_buy"
goto Ironforge,55.6,47.3
.talk 50309
.buy Ironforge Tabard##45577

step
label	"iron_tab"
.' Equip your Ironforge Tabard |equipped Ironforge Tabard##45577 |use Ironforge Tabard##45577 
.' You can run any dungeon that grants experience to gain reputation for Ironforge.
.' Friendly with Ironforge |condition rep('Ironforge')>=Friendly
.' Honored with Ironforge |condition rep('Ironforge')>=Honored
.' Revered with Ironforge |condition rep('Ironforge')>=Revered
.' Become Exalted with Ironforge |condition rep('Ironforge')==Exalted
|next "menu"
step
label	"gil"
'Skipping next part of guide |next "+gil_tab" |only if step:Find("+gil_buy"):IsComplete()
'Proceeding next step |next |only if default
step
#include "rideto_ruttheranvillage"
step
goto Teldrassil,55.1,88.5
.' Go through the Large Pink Portal
.' Teleport to Darnassus |goto Darnassus |noway |c
step
label	"gil_buy"
goto Darnassus,37.1,47.5
.talk 50307
.buy Gilneas Tabard##64882
step
label	"gil_tab"
.' Equip your Gilneas Tabard |equipped Gilneas Tabard##64882 |use Gilneas Tabard##64882
.' You can run any dungeon that grants experience to gain reputation for Gilneas.
.' Friendly with Gilneas |condition rep('Gilneas')>=Friendly
.' Honored with Gilneas |condition rep('Gilneas')>=Honored
.' Revered with Gilneas |condition rep('Gilneas')>=Revered
.' Become Exalted with Gilneas |condition rep('Gilneas')==Exalted
|next "menu"
step
label	"end"
.' Congratulations, you have earned the Title _Ambassador_! |achieve 948
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Azeroth Titles\\Bloodsail Admiral",[[
description This Guide will help you get Reputation to earn the title _The Insane_.
author support@zygorguides.com
step
label	"menu"
.' This guide will show you how to earn the Admiral Title the most efficient way possible.
.' Honored with Bloodsail Buccaneers |condition rep('Bloodsail Buccaneeers')>=Honored
.' Click to use the Buccaneers rep Guide |confirm |next "blood_grind"
.' or |only if not completedq(26679)
.' You can click here to run the pirate questline and farm Booty Bay NPC's without level 85 guards attacking you. |only if not completedq(26679)
.' Click here if you would rather run the questline and farm Booty Bay while in a phased zone |confirm always |only if not completedq(26679)
step
label	"blood_quest"
#include "rideto_ratchet"
step
|fly Booty Bay
step
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
label	"blood_grind"
.' You will need a full group of 4 or 5 people to be able to reasonably farm Booty Bay for Bloodsail Reputation.
.' Once you have acquired a group, including a healer and tank, you can proceed
.' Click to continue |confirm
step
|fly Booty Bay
step
goto 42.5,67.4
.' We suggest starting in this tunnel so you do not get overwhelmed by guards.
.' Set your Booty Bay social bar to _At War_ and begin killing Booty Bay Bruisers
.from Booty Bay Bruiser##4624+
.' You will lose reputation with the Steemwheedle Cartel but you will gain 25 points of reputation with each kill
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Azeroth Titles\\Jenkins",[[
description This guide will show you how to earn the Jenkins Title.
author support@zygorguides.com
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
|achieve 2188
step
'Congratulations! You have earned the Title _Jenkins_!!		
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Azeroth Titles\\Argent Champion\\Argent Dawn Reputation",[[
description This guide will show you how to earn the Argent Champion Title.
author support@zygorguides.com
#include "A_Eastern_Plaguelands_Argent_Dawn_Revered"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Azeroth Titles\\Argent Champion\\Argent Crusade Reputation",[[
description This guide will show you how to earn the Argent Champion Title.
author support@zygorguides.com
#include "A_Icecrown_Argent_Crusade_Rep"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Outland Titles\\Of the Shattered Sun\\Prequest and Dailies",[[
description This Guide will help you get your Reputation to Exalted to earn the title of the Shattered Sun.
author support@zygorguides.com
#include "A_SSO_PreQuest_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Outland Titles\\Of the Shattered Sun\\Dailies and Title",[[
description This Guide will help you get your Reputation to Exalted to earn the title of the Shattered Sun.
author support@zygorguides.com
#include "A_SSO_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Northrend Titles\\Crusader, Home Cities Titles\\Human Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Human race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Human.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Human.
|confirm always
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
.click Winter Hyacinth##3231
.collect 4 Winter Hyacinth##45000 |q 13600
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.click Blade of Drak'Mar##8564
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
.kill 15 Boneguard Footman##33438 |q 13847/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout##33550 |q 13847/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant##33429 |q 13847/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
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
goto 76.1,20.5
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Stormwind Steed|invehicle |q 13699
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Northrend Titles\\Crusader, Home Cities Titles\\Night Elf Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Night Elf race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Night Elf.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Night Elf.
|confirm always
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
.click Winter Hyacinth##3231
.collect 4 Winter Hyacinth##45000 |q 13758
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.click Blade of Drak'Mar##8564
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
.kill 15 Boneguard Footman##33438 |q 13855/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout##33550 |q 13855/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant##33429 |q 13855/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Northrend Titles\\Crusader, Home Cities Titles\\Dwarf Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Dwarf race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Dwarf.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Dwarf.
|confirm always
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
.kill 15 Boneguard Footman##33438 |q 13851/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout##33550 |q 13851/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant##33429 |q 13851/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
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
.click Winter Hyacinth##3231
.collect 4 Winter Hyacinth##45000 |q 13742
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.click Blade of Drak'Mar##8564
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
info The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.
info When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.
info Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
.' Defeat the Argent Valiant |q 13713/1
step
goto 76.3,19.1
.talk 33592
..turnin 13713
step
'Congratulations, you are now a Champion of Ironforge! |tip This is the end of the Dwarf Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Northrend Titles\\Crusader, Home Cities Titles\\Gnome Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Gnome race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Gnome.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Gnome.
|confirm always
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
.click Winter Hyacinth##3231
.collect 4 Winter Hyacinth##45000 |q 13747
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.click Blade of Drak'Mar##8564
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
.kill 15 Boneguard Footman##33438 |q 13852/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout##33550 |q 13852/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant##33429 |q 13852/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Northrend Titles\\Crusader, Home Cities Titles\\Draenei Champion Rank",[[
author support@zygorguides.com
description This guide section will walk you through achieving Argent Tournament Grounds Champion Rank with the Draenei race.
description You must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section in order to be able to complete this guide section.
description You cannot complete this section if you are a Draenei.
daily
step
'In order to be able to do this guide section, you must have already completed the Argent Tournament Grounds Valiant Rank Dailies guide section, and earned Champion rank with the Argent Tournament Grounds for your race.
.' After you have earned the Champion rank with your race, you will have access to become a Champion with the other races of your faction.  Earning Champion rank with all the races of your faction, as well as becoming Exalted with Darnassus, Exodar, Gnomeregan Exiles, Ironforge, and Stormwind factions will earn you the Crusader title, and unlock more daily quests.
.' You cannot complete this section if you are a Draenei.
|confirm always
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
.click Winter Hyacinth##3231
.collect 4 Winter Hyacinth##45000 |q 13753
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.click Blade of Drak'Mar##8564
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
.kill 15 Boneguard Footman##33438 |q 13854/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout##33550 |q 13854/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant##33429 |q 13854/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
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
'Congratulations, you are now a Champion of The Exodar! |tip This is the end of the Draenei Champion Rank Guide for the Crusader Title.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Northrend Titles\\Crusader, Home Cities Titles\\Argent Tournament Grounds Aspirant Rank Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing your race's Aspirant Rank dailies
description in order to achieve Argent Tournament Grounds Valiant Rank with your own race and eventually Crusader Title.
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
.click Winter Hyacinth##3231
.collect 4 Winter Hyacinth##45000 |q 13669
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.click Blade of Drak'Mar##8564
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Northrend Titles\\Crusader, Home Cities Titles\\Argent Tournament Grounds Valiant Rank Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing your race's Valiant Rank dailies
description in order to achieve Argent Tournament Grounds Champion Rank with your own race.
description You must have completed the Argent Tournament Grounds Aspirant Rank Dailies guide section
description in order to have access to the quests in this guide section and earn the Crusader Title.
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
..accept 13689 |only NightElf
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
// DRAENEI VALIANT RANK DAILY LOOP (END)
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
.click Winter Hyacinth##3231
.collect 4 Winter Hyacinth##45000 |q 13753
only Draenei
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.click Blade of Drak'Mar##8564
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
.kill 15 Boneguard Footman##33438 |q 13854/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout##33550 |q 13854/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant##33429 |q 13854/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
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
// DRAENEI VALIANT RANK DAILY LOOP (END)
//
// DWARF VALIANT RANK DAILY LOOP (BEGIN)
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
.click Winter Hyacinth##3231
.collect 4 Winter Hyacinth##45000 |q 13742
only Dwarf
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.click Blade of Drak'Mar##8564
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
.kill 15 Boneguard Footman##33438 |q 13851/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout##33550 |q 13851/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant##33429 |q 13851/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
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
// DWARF VALIANT RANK DAILY LOOP (END)
//
// HUMAN VALIANT RANK DAILY LOOP (BEGIN)
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
.click Winter Hyacinth##3231
.collect 4 Winter Hyacinth##45000 |q 13600
only Human
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.click Blade of Drak'Mar##8564
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
.kill 15 Boneguard Footman##33438 |q 13847/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout##33550 |q 13847/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant##33429 |q 13847/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
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
// HUMAN VALIANT RANK DAILY LOOP (END)
//
// NIGHT ELF VALIANT RANK DAILY LOOP (BEGIN)
step
goto 76.3,19.0
.talk 33592
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..accept 13757 |daily |or
..accept 13758 |daily |or
..accept 13759 |daily |or
only NightElf
step
goto 76.3,19.0
.talk 33652
..accept 13760 |daily
only NightElf
step
goto 76.4,19.0
.talk 33654
..accept 13761 |daily
..accept 13855 |daily
only NightElf
step
goto Grizzly Hills,61.2,50.3
.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
.' Target Lake Frogs
.' Use the emote /kiss on the Lake Frogs
.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
.talk 33220
..get Ashwood Brand |q 13757/1
only NightElf
step
goto Icecrown,69.1,76.2
.click Winter Hyacinth##3231
.collect 4 Winter Hyacinth##45000 |q 13758
only NightElf
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.click Blade of Drak'Mar##8564
.get Blade of Drak'Mar |q 13758/1
only NightElf
step
goto Crystalsong Forest,54.5,74.9
.from Lord Everblaze##33289
.collect 1 Everburning Ember##45005 |q 13759
only NightElf
step
goto Howling Fjord,42.2,19.7
.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
.get Winter's Edge |q 13759/1
only NightElf
step
goto Icecrown,48.9,71.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13855
only NightElf
step
goto 50.1,74.8
.kill 15 Boneguard Footman##33438 |q 13855/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout##33550 |q 13855/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant##33429 |q 13855/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
only NightElf
step
goto 49.1,71.4
'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13855
only NightElf
step
goto 44.3,54.2
.kill 10 Converted Hero##32255 |q 13760/1
only NightElf
step
goto 76.0,20.4
.' Equip the Alliance Lance in your bags|use Alliance Lance##46069
.' Click to mount the Stabled Darnassian Nightsaber|invehicle |q 13761
only NightElf
step
goto 75.3,18.5
.' Talk to the riders on mounts of other Alliance races
.' Tell them you are ready to fight!
.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
.get 3 Mark of the Valiant |q 13761/1
only NightElf
step
goto 76.3,19.0
.talk 33592
.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
..turnin 13757
..turnin 13758
..turnin 13759
only NightElf
step
goto 76.3,19.0
.talk 33652
..turnin 13760
only NightElf
step
goto 76.4,19.0
.talk 33654
..turnin 13761
..turnin 13855
only NightElf
// NIGHT ELF VALIANT RANK DAILY LOOP (END)
//
// GNOME VALIANT RANK DAILY LOOP (BEGIN)
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
.click Winter Hyacinth##3231
.collect 4 Winter Hyacinth##45000 |q 13747
only Gnome
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.click Blade of Drak'Mar##8564
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
.kill 15 Boneguard Footman##33438 |q 13852/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout##33550 |q 13852/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant##33429 |q 13852/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
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
// GNOME VALIANT RANK DAILY LOOP (END)
step
'Make sure you have 25 Valiant Seals:
.get 25 Valiant's Seal |q 13718/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Human
.get 25 Valiant's Seal |q 13714/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Dwarf
.get 25 Valiant's Seal |q 13717/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only NightElf
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
only NightElf
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
only NightElf
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
.' Defeat the Argent Valiant |q 13725/1 |only NightElf
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
only NightElf
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
..turnin 13735 |only NightElf
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Cataclysm Titles\\The Flamebreaker",[[
author support@zygorguides.com
step
'This title is earned by completing the _Veteran of the Molten Front_ achievement.
'Use the Zygor Achievement Guides to help obtain this title.
|achieve 5879
step
'Congratulations! You have earned the title "The Flamebreaker"! 
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Profession Titles\\Cooking\\Chef\\Outland Dailies",[[
description This guide will show you how to earn the Chef Title
author support@zygorguides.com
#include "A_Kickin'_It_Up_a_Notch"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Profession Titles\\Cooking\\Chef\\The Outland Gourmet - The Cake is not a lie",[[
description This guide will show you how to earn the Chef Title
author support@zygorguides.com
#include "A_The_Outland_Gourmet"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Profession Titles\\Cooking\\Chef\\Our Daily Bread",[[
description This guide will show you how to earn the Chef Title
author support@zygorguides.com
#include "A_Our_Daily_Bread"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Profession Titles\\Cooking\\Chef\\The Northrend Gourmet - Second That Emotion - Our Daily Bread",[[
description This guide will show you how to earn the Chef Title
author support@zygorguides.com
#include "A_The_Northrend_Gourmet"
#include "A_Captain_Rumsey's_Lager"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Profession Titles\\Cooking\\Chef\\Critter Gitter - Captain Rumsey's Lager - Dinner Impossible",[[
description This guide will show you how to earn the Chef Title
author support@zygorguides.com
#include "A_Critter_Gitter"
#include "A_Captain_Rumsey's_Lager"
#include "A_Dinner_Impossible"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Profession Titles\\Archaeology\\Assistant Professor, Associate Professor, and Professor",[[
step
'These titles require the solving of rare artifacts of any kind.
goto Stormwind City,85.8,25.9 |only if skillmax("Archaeology")<1
.talk 44238 |only if skillmax("Archaeology")<1
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Profession Titles\\Fishing\\Salty\\1000 Fish, One that Didn't Get Away, Fish Don't Leave Footprints, and The Old Gnome and the Sea",[[
description This guide will walk you through the steps
description to earn the title Chef
author support@zygorguides.com
step
goto Stormwind City,54.9,69.7
.talk 5494
.buy 1 Fishing Pole##6256
.buy 10 Shiny Bauble##6529
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
#include "A_Fish_Don't_Leave_Footprints"
#include "A_Old_Gnome_and_the_Sea"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Profession Titles\\Fishing\\Salty\\The Scavenger",[[
description This guide will walk you through the steps
description to earn the title Chef
author support@zygorguides.com
#include "A_The_Scavenger"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Profession Titles\\Fishing\\Salty\\Fishing Diplomat",[[
description This guide will walk you through the steps
description to earn the title Chef
author support@zygorguides.com
#include "A_The_Fishing_Diplomat"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Profession Titles\\Fishing\\Salty\\Old Man Barlowned",[[
description This guide will walk you through the steps
description to earn the title Chef
author support@zygorguides.com
#include "A_Old_Man_Barlowned"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Profession Titles\\Fishing\\Salty\\Outland Angler, Mr. Pinchy's Magical Crawdad Box and The Lurker Above",[[
description This guide will walk you through the steps
description to earn the title Chef
author support@zygorguides.com
#include "A_Outland_Angler"
#include "A_Mr._Pinchy's_Magical_Crawdad_Box"
#include "A_The_Lurker_Above"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Profession Titles\\Fishing\\Salty\\The Coin Master",[[
description This guide will walk you through the steps
description to earn the title Chef
author support@zygorguides.com
#include "A_The_Coin_Master"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Profession Titles\\Fishing\\Salty\\Master Angler of Azeroth",[[
description This guide will walk you through the steps
description to earn the title Salty
author support@zygorguides.com
#include "A_Master_Angler_of_Azeroth"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Profession Titles\\Fishing\\Salty\\Master Angler of Northrend",[[
description This guide will walk you through the steps
description to earn the title Salty
author support@zygorguides.com
#include "A_Master_Angler_of_Northrend"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Miscellaneous Titles\\The Diplomat\\Timbermaw Hold Faction",[[
author support@zygorguides.com
#include "A_Timbermaw_Faction"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Miscellaneous Titles\\The Diplomat\\Sporeggar Faction",[[
author support@zygorguides.com		
#include "A_Sporeggar_Faction"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Miscellaneous Titles\\The Diplomat\\Kurenai Faction",[[
description This Guide will help you reach Exalted status with the Kurenai Faction
author support@zygorguides.com
#include "A_Kurenai_Faction"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Miscellaneous Titles\\Guardian of Cenarius\\Cenarion Expedition Faction",[[
description This guide will take you through the quests needed to become Exalted with Cenarion Expedition
author support@zygorguides.com
#include "A_Cenarion_Expedition_Faction"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Miscellaneous Titles\\Guardian of Cenarius\\Cenarion Circle Faction",[[
#include "A_Cenarion_Circle_Faction"
]])	
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Miscellaneous Titles\\Loremaster",[[
description This guide will refer you to the correct location to go, to get the Loremaster Title. 
author support@zygorguides.com
step
' You can use our Leveling Guides along with our Loremaster guides in the Main Menu to get the Loremaster achievement. 
.' Make sure that you use the Leveling guides first, than go through and get the quests with the Loremaster Guides to finish the quests that you need. 
|achieve 1681
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Miscellaneous Titles\\The Seeker",[[
description This guide will refer you to the correct location to go, to get the Seeker Title. 
author support@zygorguides.com
step
' You can use our Leveling Guides along with our Loremaster guides in the Main Menu to get The Seeker achievement. 
.' Make sure that you use the Leveling guides first, than go through and get the quests with the Loremaster Guides to finish the quests that you need. 
|achieve 978
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Miscellaneous Titles\\The Patient",[[
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
'Congratulations! You have achieved the title The Patient! |achieve 4477
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Miscellaneous Titles\\The Exalted",[[
description This guide will instruct you on how to get The Exalted Title.
author support@zygorguides.com	
step
'Use our Reputations guide to get Exalted reputation with 45 different reputations.
.' Earn Exalted reputation with 45 different reputations |achieve 5374
step
'Congratulations! You have earn the title The Exalted! |achieve 5374
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Miscellaneous Titles\\The Camel-Hoarder",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Raid Titles\\Champion of the Frozen Wastes",[[
author support@zygorguides.com
step
'This title is earned by completing the _Champion of the Frozen Wastes_ achievement.
'Complete every Wrath of the Lich King Heroic Instance, with the exception of The Forge of Souls, the Pit of Saron, and the Halls of Reflection. Then defeat the final bosses in The Eye of Eternity, Naxxramas, and The Obsidian Sanctum.
|achieve 1658
step
'Congratulations! You have earned the title "Champion of the Frozen Wastes"! 
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Raid Titles\\Defender of a Shattered World",[[
author support@zygorguides.com
step
'This title is earned by completing the _Defender of a Shattered World_ achievement.
'Complete the following instances on Heroic difficulty: Blackrock Caverns, Throne of the Tides, The Stonecore, The Vortex Pinnacle, Grim Batol, Halls of Origination, Lost City of Tol'vir, Deadmines, and Shadowfang Keep. 
'Complete the following raid instances: Blackwing Descent, Throne of the Four Winds, and The Bastion of Twilight.
|achieve 5506
step
'Congratulations! You have earned the title "Defender of a Shattered World"! 
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Raid Titles\\Of the Nightfall",[[
author support@zygorguides.com
step
'This title is earned by completing the _The Twilight Zone (10 player)_ achievement from The Obsidian Sanctum.
'Traverse The Obsidian Sanctum and defeat Sartharion with three Twilight Drakes still alive.
.from Sartharion##28860
|achieve 2051
step
'Congratulations! You have earned the title "of the Nightfall"! 
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Raid Titles\\Twilight Vanquisher",[[
author support@zygorguides.com
step
'This title is earned by completing the _The Twilight Zone (25 player)_ achievement from The Obsidian Sanctum.
'Traverse The Obsidian Sanctum and defeat Sartharion with three Twilight Drakes still alive.
.from Sartharion##28860
|achieve 2054
step
'Congratulations! You have earned the title Twilight Vanquisher! 
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Raid Titles\\Starcaller",[[
author support@zygorguides.com
step
'This title is earned by completing the _Observed (10 player)_ achievement from Ulduar.
'Traverse Ulduar and defeat Algalon the Observer.
.from Algalon the Observer##32871
|achieve 3036
step
'Congratulations! You have earned the title Starcaller! 
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Raid Titles\\The Astral Walker",[[
author support@zygorguides.com
step
'This title is earned by completing the _Observed (25 player)_ achievement from Ulduar.
'Traverse Ulduar and defeat Algalon the Observer.
.from Algalon the Observer##32871
|achieve 3037
step
'Congratulations! You have earned the title The Astral Walker 
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Raid Titles\\The Kingslayer",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Raid Titles\\Bane of the Fallen King",[[
author support@zygorguides.com
step
'This title is earned by completing the _Bane of the Fallen King_ achievement from 10 player Heroic: Icecrown Citadel.
'Traverse Icecrown Citadel on Heroic difficulty and defeat The Lich King.
.from The Lich King##36597
|achieve 4583
step
'Congratulations! You have earned the title Bane of the Fallen King! 
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Raid Titles\\The Light of Dawn",[[
author support@zygorguides.com
step
'This title is earned by completing the _"The Light of Dawn"_ achievement from 25 player Heroic: Icecrown Citadel.
'Traverse Icecrown Citadel on Heroic difficulty and defeat The Lich King.
.from The Lich King##36597
|achieve 4584
step
'Congratulations! You have earned the title The Light of Dawn! 
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Raid Titles\\Of the Ashen Verdict",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Raid Titles\\Dragonslayer",[[
author support@zygorguides.com
step
'This title is earned by completing the _Heroic: Sinestra_ achievement from Heroic: The Bastion of Twilight.
'Traverse The Bastion of Twilight on Heroic difficulty and defeat Sinestra.
.from Sinestra##45213
|achieve 5121
step
'Congratulations! You have earned the title Dragonslayer! 
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Raid Titles\\Of the Four Winds",[[
author support@zygorguides.com
step
'This title is earned by completing the _Heroic: Al'Akir_ achievement from Heroic: Throne of the Four Winds. This can be completed on either 10 or 25 player.
'Traverse the Throne of the Four Winds on Heroic difficulty and defeat Al'Akir.
.from Al'Akir##46753
|achieve 5123
step
'Congratulations! You have earned the title "of the Four Winds"! 
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Raid Titles\\Blackwing's Bane",[[
author support@zygorguides.com
step
'This title is earned by completing the _Heroic: Nefarian_ achievement from Heroic: Blackwing Descent.
'Traverse Blackwing Descent on Heroic difficulty and defeat Nefarian.
.from Nefarian##41376
|achieve 5116
step
'Congratulations! You have earned the title Blackwing's Bane! 
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Raid Titles\\Firelord",[[
author support@zygorguides.com
step
'This title is earned by completing the _Heroic: Ragnaros_ achievement from Heroic: Firelands. This can be completed on either 10 or 25 player.
'Traverse the Firelands on Heroic difficulty and defeat Ragnaros.
.from Ragnaros##41634
|achieve 5803
step
'Congratulations! You have earned the title Firelord! 
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Raid Titles\\Avenger of Hyjal",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Raid Titles\\Destroyer's End",[[
author support@zygorguides.com
step
'This title is earned by completing the _Destroyer's End_ achievement from the Dragon Soul raid. This can be completed on either 10 or 25 player and on either Normal or Heroic difficulty.
'Traverse Dragon Soul and defeat Deathwing.
.from Deathwing##56173
|achieve 6177
step
'Congratulations! You have earned the title Destroyer's End! 
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Raid Titles\\Savior of Azeroth",[[
author support@zygorguides.com
step
'This title is earned by completing the _Heroic: Madness of Deathwing_ achievement from Heroic. This can be completed on either 10 or 25 player.
'Traverse Dragon Soul on Heroic Difficulty and defeat Deathwing.
.from Deathwing##56173
|achieve 6116
step
'Congratulations! You have earned the title Savior of Azeroth! 
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Insane in the Membrane\\Bloodsail Buccaneers Group",[[
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
|fly Booty Bay
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Insane in the Membrane\\Bloodsail Buccaneers Solo",[[
step
.' You can only kill NPC's in one place alone now as Booty Bay Bruisers require a 5 man group to kill.
.' Click here to farm the small cove with NPC's for Bloodsail Buccaneer Reputation. |confirm always
.' or |only if not completedq(26679)
.' You can click here to run the pirate questline and farm Booty Bay NPC's without level 85 guards attacking you. |only if not completedq(26679)
.' Click here if you would rather run the questline and farm Booty Bay while in a phased zone |confirm always |only if not completedq(26679)
step
label	"blood_quest"
#include "rideto_ratchet"
step
|fly Booty Bay
step
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Insane in the Membrane\\The Steamwheedle Cartel",[[
description This Guide will help you get Reputation with the Steamwheedle Cartel to earn the title _The Insane_.
author support@zygorguides.com
step
label	"Steam_Menu"
.' To earn the Insane Title, you will need to get your reputation to Exalted with all the 
.' Steamwheedle Cartel factions: _Booty Bay_, _Gadgetzan_, _Everlook_, and _Ratchet_.
.' Click here to continue |confirm
step
label	"Steam_Menu2"
.' You are currently _Friendly_ with Booty Bay |only if rep('Booty Bay')==Friendly
.' You are currently _Honored_ with Booty Bay |only if rep('Booty Bay')==Honored
.' You are currently _Revered_ with Booty Bay |only if rep('Booty Bay')==Revered
.' Become Exalted with Booty Bay |condition rep('Booty Bay')==Exalted
.' Click here to raise your Reputation with Booty Bay |confirm |next "gadget" |only if rep('Booty Bay')<=Revered  
.' You are currently _Friendly_ with Gadgetzan |only if rep('Gadgetzan')==Friendly
.' You are currently _Honored_ with Gadgetzan |only if rep('Gadgetzan')==Honored
.' You are currently _Revered_ with Gadgetzan |only if rep('Gadgetzan')==Revered
.' Become Exalted with Gadgetzan |condition rep('Gadgetzan')==Exalted
.' Click here to raise your Reputation with Gadgetzan |confirm |next "gadget" |only if rep('Gadgetzan')<=Revered    
.' You are currently _Friendly_ with Everlook |only if rep('Everlook')==Friendly
.' You are currently _Honored_ with Everlook |only if rep('Everlook')==Honored
.' You are currently _Revered_ with Everlook |only if rep('Everlook')==Revered
.' Become Exalted with Everlook |condition rep('Everlook')==Exalted
.' Click here to raise your Reputation with Everlook |confirm |next "ratchet" |only if rep('Everlook')<=Revered  
.' You are currently _Friendly_ with Ratchet |only if rep('Ratchet')==Friendly
.' You are currently _Honored_ with Ratchet |only if rep('Ratchet')==Honored
.' You are currently _Revered_ with Ratchet |only if rep('Ratchet')==Revered
.' Become Exalted with Ratchet |condition rep('Ratchet')==Exalted
.' Click here to raise your Reputation with Ratchet |confirm |next "ratchet" |only if rep('Ratchet')<=Revered   
|next "end" |only if default
step
label	"gadget"
#include "rideto_ratchet"
step
|fly Gadgetzan
step
goto Tanaris,72.3,47.1
.from Southsea Pirate##7855+, Southsea Swashbuckler##7858+, Southsea Swabbie##40636+, Southsea Musketeer##40632+, Southsea Strongarm##40635+ 
.' You can find more Pirates around here: goto [69.5,53.8]
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
.' Click to go back to the Steamwheedle Menu |confirm |next "Steam_Menu" 
|next "ratchet2"
step
label	"ratchet2"
|fly Ratchet
|next "ratchet3"
step
label	"ratchet"
#include "rideto_ratchet" 
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
.' Click to go back to the Steamwheedle Menu |confirm |next "Steam_Menu2"
|next "Steam_Menu2"
step
label	"end"
.' Congratulations! You are Exalted with the Steamwheedle Cartel!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Insane in the Membrane\\Ravenholdt",[[
description This Guide will help you get Reputation with Ravenholdt to earn the title _The Insane_.
author support@zygorguides.com
step
'In order to get Exalted with Ravenholdt Faction, you need to grind mobs to _11,999/12,000_ Honored reputation.
.'Once you've reached Honored, you will need to collect a lot of Heavy Junkboxes.  If you aren't a rogue, you will need the assistance of one.
.' You can get a lot of Heavy Junkboxes frequently if you go to Blackrock Spire, but unless you're an engineer, it will be time consuming to run back and forth to a mailbox to clear up space.
|confirm always
step
|fly Refuge Pointe
step
goto Arathi Highlands,27.1,30.6
.from Syndicate Mercenary##2589+, Syndicate Highwayman##2586+, Syndicate Pathstalker##2587+  .from Syndicate Conjuror##2590+, Syndicate Magus##2591+, Syndicate Thief##24477+, Syndicate Prowler##2588+
.' You can find more Syndicate here: [Arathi Highlands,19.5,61.5]
.' Reach _11,999/12,000_ Honored with Ravenholdt. |tip You can only get 1 point away from Revered by grinding, than you will have to do quests.
.' Click here to continue |confirm
step
label	"boxes"
.' Now that you have reached Revered, or close to it, you will need to do repeatable quests until Exalted. 
.' The only thing you need for the repeatable quests are _Heavy Junkboxes_. 
.' You can get these by having a _Rogue_ pickpocket mobs in the Blackrock Spire Dungeon. |tip You can also announce in the Trade Chat of any major city that you are willing to purchase Heavy Junkboxes in multiples of 5, whether by mail or in person for x amount of gold.
.' You will need to turnin a total of 1400 _Heavy Junkboxes_ with at least 1 item left in them to go from _Revered_ to _Exalted_. |tip If you have the guild perk Mr. Popularity you only need 1170.
.collect Heavy Junkbox##16885+ |n
.' Click here to continue and turn in your Boxes. |confirm 
step
|fly Refuge Pointe
step
goto Hillsbrad Foothills 71.4,45.0
.talk 7323
..accept 8249 |instant |repeatable |n  
.' You are currently _Honored_ with Ravenholdt |only if rep('Ravenholdt')==Honored
.' You are currently _Revered_ with Ravenholdt |only if rep('Ravenholdt')==Revered
.' Reach Exalted with Ravenholdt |condition rep('Ravenholdt')==Exalted |next end
.' or
.' Click here to get more _Heavy Junkboxes_ |confirm |next "boxes"
step
label	"end"
.' Congratulations, you have reached Exalted with Ravenholdt!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Insane in the Membrane\\Darkmoon Faire",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Explorer Achievement\\Kalimdor",[[
description This guide section will walk you through completing
description the Explorer achievement.
author support@zygorguides.com
#include "Explorer_Kalimdor"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Explorer Achievement\\Eastern Kingdoms",[[
description This guide section will walk you through completing
description the Explorer achievement.
author support@zygorguides.com
#include "Explorer_EasternKingdoms"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Explorer Achievement\\Outlands",[[
description This guide section will walk you through completing
description the Explorer achievement.
author support@zygorguides.com
#include "Explorer_Outlands"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Explorer Achievement\\Northrend",[[
description This guide section will walk you through completing
description the Explorer achievement.
author support@zygorguides.com
#include "Explorer_Northrend"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\Flame Warden\\Midsummer Fire Festival Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Midsummer Fire Festival event.
startlevel 80
step
goto Stormwind City,60.4,75.3
.talk 6740
.home Trade District
step
goto Stormwind City,61.7,74.2
.talk 18927
..accept 11970
step
goto 49.5,72.3
.talk 16817
..accept 11964
step
goto 49.3,72.3
.talk 26221
..accept 11886
step
goto Stormwind City,50.0,72.3
.talk 25975
..accept 11731
step
'Use your Practice Torches in your bags and throw them at the Torch Target Braziers nearby |use Practice Torches##34862 |tip You must throw the torches at the correct braziers.  Throw the torches at the Torch Target Braziers when they have a floating red arrow point down above them. You will have 40 seconds to complete this before the quest fails.
.' Hit 8 braziers |q 11731/1
step
goto Stormwind City,50.0,72.3
.talk 25975
..turnin 11731
..accept 11657
step
goto 49.8,72.4
.' Use your Unlit Torches in your bags next to the bonfire |use Unlit Torches##34833
.' As soon as you light torch, it will fly in the air.  There will be a small round shadow on the ground indicating where the torch is flying.  Follow that shadow and catch the torch.  When you catch the torch, it will be thrown in the air again.  Follow the shadow again and catch the torch.  Do this until you've caught the torch 4 times in a row without it hitting the ground.
.' Catch 4 torches in a row. |q 11657/1
step
goto 50.1,72.3
.talk 25975
..turnin 11657
step
goto Elwynn Forest,43.5,62.5
.talk 26401
..turnin 11964
step
goto 43.5,62.6
.talk 25898
..accept 11816 |instant
step
goto Elwynn Forest,43.7,62.2
.talk 25962
..accept 11882
step
goto Stormwind City,50.0,72.3
.talk 25975
..turnin 11882
step
goto 22.5,55.8 |n
.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
step
'Go through the pink portal into Darnassus |goto Darnassus |noway |c
step
'Take the east exit out of Darnassus to Teldrassil |goto Teldrassil |noway |c
step
goto 54.9,52.8
.talk 25906
..accept 11824 |instant
step
'Go to Darnassus |goto Darnassus |noway |c
step
.' Go through the pink portal to Rut'theran Village |goto Teldrassil |noway |c
step
goto 52.3,89.5 |n
.' Ride the boat to Azuremyst Isle |goto Azuremyst Isle |noway |c
step
goto Azuremyst Isle,44.5,52.5
.talk 25888
..accept 11806 |instant
step
'Go north to Bloodmyst Isle |goto Bloodmyst Isle |noway |c
step
goto Bloodmyst Isle,55.8,67.9
.talk 25891
..accept 11809 |instant
step
goto 57.7,53.9
.talk 17554
.' Fly to The Exodar |goto The Exodar,54.4,36.6,0.5 |noway |c
step
goto Azuremyst Isle,20.4,54.2 |n
.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
step
goto Teldrassil,55.4,88.4
.talk 3838
.' Fly to Lor'danel, Darkshore |goto Darkshore,51.7,17.7 |noway |c
step
goto 48.7,22.6
.talk 25893
..accept 11811 |instant
step
goto Darkshore,51.7,17.6
.talk 3841
.' Fly to Everlook, Winterspring |goto Winterspring,61.0,48.7,0.5 |noway |c
step
goto Winterspring,61.2,47.3
.talk 25917
..accept 11834 |instant
step
goto 58.1,47.3
 		.click Horde Bonfire##7734 
..accept 11803 |instant
step
goto Winterspring,61.0,48.6
.talk 11138
.' Fly to Forest Song, Ashenvale |goto Ashenvale,85.0,43.5,0.5 |noway |c
step
'Go east to Azshara |goto Azshara |noway |c
step
goto Azshara,60.4,53.3
 		.click Horde Bonfire##7734 
..accept 28919 |instant
step
goto Ashenvale,85.0,43.5
.talk 11138
.' Fly to Astranaar, Ashenvale |goto Ashenvale,34.5,48.0,0.5 |noway |c
step
goto Ashenvale,15.1,18.4
.from Twilight Firesworn##25863+
.get Twilight Correspondence |q 11886/1
step
goto 15.2,21.2
.' Use the Totemic Beacon in your bags |use Totemic Beacon##35828
.talk 25324
..turnin 11886
..accept 11891
step
goto Ashenvale,15.3,20.1
.from Twilight Firesworn##25863+, Twilight Flameguard##25866+
.get Twilight Correspondence |q 11886/1
step
goto Ashenvale,15.7,20.3
.' Use your Totemic Beacon next to the blue bonfire |use Totemic Beacon##35828
.talk 25324
..turnin 11886
..accept 11891
step
goto Ashenvale,9.6,13.2
.' Use your Orb of the Crawler in this spot |use Orb of the Crawler##35237
.' Get the Crab Disguise |havebuff Interface\Icons\Ability_Hunter_Pet_Crab
step
'While in the crab disguise, go to 9.2,12.6 |goto Ashenvale,9.2,12.6
.' Listen to the plan of the Twilight Cultists |q 11891/1
step
goto Ashenvale,9.7,13.3
.' Use your Totemic Beacon next to the blue bonfire |use Totemic Beacon##35828
.talk 25324
..turnin 11891
..accept 29092
step
goto Ashenvale,34.4,48.0
.talk 4267
.' Fly to Rut'theran Village, Teldrassil |goto Teldrassil,55.4,88.5,0.5 |noway |c
step
'Go through the pink portal into Darnassus |goto Darnassus |noway |c
step
goto Darnassus,62.1,49.1
.talk 26221
..turnin 29092
step
.' Go through the pink portal to Rut'theran Village |goto Teldrassil |noway |c
step
goto Teldrassil,55.4,88.4
.talk 3838
.' Fly to Astranaar, Ashenvale |goto Ashenvale,34.5,48.0,0.5 |noway |c
step
goto 51.6,66.6
 		.click Horde Bonfire##7734 
..accept 11765 |instant
step
goto Ashenvale,86.9,41.9
.talk 25883
..accept 11805 |instant
step
goto 85.0,43.6
.talk 22935
.' Fly to Fort Triumpth, Southern Barrens |goto Southern Barrens,49.1,67.9,0.5 |noway |c
step
goto Southern Barrens,48.3,72.2
'Talk to Southern Barrens Flame Warden
..accept 28926
|modelnpc Southern Barrens Flame Warden##25897
step
goto Southern Barrens,40.7,67.3
 		.click Horde Bonfire##7734 
..accept 28914 |instant
step
goto Southern Barrens,49.2,67.8
.talk 39211
.' Fly to Ratchet, The Barrens |goto Northern Barrens,69.2,70.6,0.5 |noway |c
step
'Go northeast to Durotar |goto Durotar |noway |c
step
goto 52.1,47.1
 		.click Horde Bonfire##7734 
..accept 11770 |instant
step
'Go north to Orgrimmar |goto Orgrimmar |noway |c
step
goto Orgrimmar,46.5,37.0
.' Click the Flame of Orgrimmar |tip It's a huge blue bonfire.
.collect Flame of Orgrimmar##23179 |n
.' Click the Flame of Orgrimmar in your bags |use Flame of Orgrimmar##23179
..accept 9324 |tip It is recommended that you be level 80 when attempting to complete this guide step.
step
'Go outside Orgrimmar to Durotar |goto Durotar |noway |c
step
'Go southwest to Northern Barrens|goto Northern Barrens |noway |c
step
goto Northern Barrens,49.9,54.4
 		.click Horde Bonfire##7734 
..accept 11783 |instant
step
goto Northern Barrens,69.1,70.7
 .talk 16227
.' Fly to Mirkfallon Post, Stonetalon Mountains |goto Stonetalon Mountains,48.6,51.5,0.5 |noway |c
step
goto 49.3,51.3
'Talk to Stonetalon Mountains Flame Warden
..accept 28928 |instant
|modelnpc Stonetalon Mountains Flame Warden##25897
step
goto Stonetalon Mountains,53.0,62.3
 		.click Horde Bonfire##7734 
..accept 11780 |instant
step
'Go southwest to Desolace |goto Desolace |noway |c
step
goto 66.1,17.1
.talk 25894
..accept 11812 |instant
step
goto 26.1,77.2
 		.click Horde Bonfire##7734 
..accept 11769 |instant
step
'Go southeast to Feralas |goto Feralas |noway |c
step
goto Feralas,43.4,42.8 |n
.' Ride the boat to Feathermoon |goto Feralas,31.0,39.9,4 |noway |c
step
goto Feralas,46.8,43.7
.talk 25899
..accept 11817 |instant
step
goto Feralas,30.2,43.3
.talk 8019
.' Fly to Thalanaar, Feralas |goto Feralas,89.5,45.9,0.5 |noway |c
step
goto 72.5,47.7
 		.click Horde Bonfire##7734 
..accept 11773 |instant
step
goto 77.3,56.8
.talk 40367
.' Fly to Cenarion Hold, Silithus |goto Silithus,50.7,34.6,0.5 |noway |c
step
goto Silithus,60.3,33.5
.talk 25914
..accept 11831 |instant
step
goto 50.9,41.7
 		.click Horde Bonfire##7734 
..accept 11800 |instant
step
goto 54.4,32.7
.talk 15177
.' Fly to Gadgetzan, Tanaris |goto Tanaris,51.4,29.4,0.5 |noway |c
step
goto Tanaris,49.8,28.1
 		.click Horde Bonfire##7734 
..accept 11802 |instant
step
goto Tanaris,52.6,30.3
.talk 25916
..accept 11833 |instant
step
goto 51.4,29.5
.talk 7823
.' Fly to Theramore, Dustwallow Marsh |goto Dustwallow Marsh,67.5,51.2,0.5 |noway |c
step
goto Dustwallow Marsh,61.8,40.5
.talk 25897
..accept 11815 |instant
step
goto 33.3,30.7
 		.click Horde Bonfire##7734 
..accept 11771 |instant
step
'Go southwest to Southern Barrens |goto Southern Barrens |noway |c
step
'Go northwest to Mulgore |goto Mulgore |noway |c
step
goto Mulgore,52.0,59.4
 		.click Horde Bonfire##7734 
..accept 11777 |instant
step
'Go north to Thunder Bluff |goto Thunder Bluff |noway |c
step
goto Thunder Bluff,21.7,27.5
.' Click the Flame of Thunder Bluff |tip It's a huge blue bonfire.
.collect Flame of Thunder Bluff##23180 |n
.' Click the Flame of Thunder Bluff in your bags |use Flame of Thunder Bluff##23180
..accept 9325 |tip It is recommended that you be level 80 when attempting to complete this guide step.
step
'Go outside to Mulgore |goto Mulgore |noway |c
step
'Go to Northern Barrens |goto Northern Barrens |noway |c
step
goto Northern Barrens,70.2,73.1 |n
.' Ride the boat to Booty Bay |goto The Cape of Stranglethorn |noway |c
step
goto The Cape of Stranglethorn,52.0,67.6
.talk 25915
..accept 11832 |instant
step
goto 50.5,70.7
 		.click Horde Bonfire##7734 
..accept 11801 |instant
step
goto 41.7,74.5
.talk 2859
.' Fly to Fort Livingston, Northern Stranglethorn |goto 52.6,66.3,0.5 |noway |c
step
goto Northern Stranglethorn,52.0,63.5
'Talk to Northern Stranglethorn Flame Warden
..accept 28922
|modelnpc Northern Stranglethorn Falem Warden##25896
step
goto 40.7,51.9
 		.click Horde Bonfire##7734 
..accept 28911 |instant
step
goto 47.9,11.9
.talk 43045
.' Fly to Nethergarde Keep, Blasted Lands |goto Blasted Lands,61.2,21.7,0.5 |noway |c
step
goto Blasted Lands,55.5,14.9
.talk 25890
..accept 11808 |instant
step
'Go northwest to Swamp of Sorrows |goto Swamp of Sorrows |noway |c
step
goto 70.3,15.7
'Talk to Swamp of Sorrows Flame Warden
..accept 28929
|modelnpc Swamp of Sorrows Flame Warden##25899
step
goto Swamp of Sorrows,76.7,14.0
 		.click Horde Bonfire##7734 
..accept 11781 |instant
step
'Go west to Duskwood |goto Duskwood |noway |c
step
goto 73.7,54.6
.talk 25896
..accept 11814 |instant
step
goto Duskwood,77.5,44.3
.talk 2409
.' Fly to Moonbrook, Westfall |goto Westfall |noway |c
step
goto Westfall,44.8,62.1
.talk 25910
..accept 11583
step
goto 42.1,63.3
.talk 42426
.' Fly to Lakeshire, Redridge |goto Redridge Mountains,29.3,53.4,0.5 |noway |c
step
goto Redridge Mountains,24.9,53.4
.talk 25904
..accept 11822 |instant
step
goto 29.4,53.8
.talk 931
.' Fly to Morgan's Vigil, Burning Steppes |goto Burning Steppes,72.1,65.7,0.5 |noway |c
step
goto Burning Steppes,68.3,60.6
.talk 25892
..accept 11810 |instant
step
goto 51.5,29.2
 		.click Horde Bonfire##7734 
..accept 11768 |instant
step
'Go northeast to the Badlands |goto Badlands |noway |c
step
goto Badlands,19.0,56.2
'Talk to Badlands Flame Warden
..accept 28925
|modelnpc Badlands Flame Warden##25897
step
goto 24.1,37.2
 		.click Horde Bonfire##7734 
..accept 11766 |instant
step
'Go northeast to Loch Modan |goto Loch Modan |noway |c
step
goto Loch Modan,32.6,41.0
.talk 25902
..accept 11820 |instant
step
goto Loch Modan,33.9,51.0
.talk 1572
.' Fly to Ironforge, Dun Morogh |goto Ironforge,55.9,47.9,0.5 |noway |c
step
goto Ironforge,63.8,25.3
.talk 16817
..turnin 9324
..turnin 9325
step
'Go outside to Dun Morogh |goto Dun Morogh |noway |c
step
goto Dun Morogh,53.8,45.2
.talk 25895
..accept 11813 |instant
step
'Go northeast to Ironforge |goto Ironforge |noway |c
step
goto Ironforge,55.5,47.7
.talk 1573
.' Fly to Menethil Harbor, Wetlands |goto Wetlands,9.5,59.7,0.5 |noway |c
step
goto 13.5,47.1
.talk 25911
..accept 11828 |instant
step
goto Wetlands,9.4,59.6
.talk 1571
.' Fly to Refuge Pointe, Arathi |goto Arathi Highlands,39.9,47.4,0.5 |noway |c
step
goto Arathi Highlands,44.3,46.0
.talk 25887
..accept 11804 |instant
step
goto 69.2,43.0
 		.click Horde Bonfire##7734 
..accept 11764 |instant
step
'Go west to Hillsbrad Foothills |goto Hillsbrad Foothills |noway |c
step
goto Hillsbrad Foothills,54.6,49.8
 		.click Horde Bonfire##7734 
..accept 11776 |instant
step
'Go northeast to Western Plaguelands |goto Western Plaguelands |noway |c
step
goto Western Plaguelands,43,82
.talk 25909
..accept 11827 |instant
step
goto Western Plaguelands,42.9,85.1
.talk 12596
.' Fly to Aerie Peak, The Hinterlands |goto The Hinterlands,11.1,46.1,0.5 |noway |c
step
goto The Hinterlands,14.3,50.1
.talk 25908
..accept 11826 |instant
step
goto 76.6,74.6
 		.click Horde Bonfire##7734 
..accept 11784 |instant
step
'Go west to Hillsbrad Foothills |goto Hillsbrad Foothills |noway |c
step
'Go west to Silverpine Forest |goto Silverpine Forest |noway |c
step
goto Silverpine Forest,49.6,38.7
 		.click Horde Bonfire##7734 
..accept 11580 |instant
step
'Go northeast to Tirisfal Glades |goto Tirisfal Glades |noway |c
step
goto Tirisfal Glades,57.0,51.8
 		.click Horde Bonfire##7734 
..accept 11786 |instant
step
'Go south to Undercity |goto Undercity |noway |c
step
goto Undercity,67.9,8.3
.' Click the Flame of Undercity |tip It's a huge blue bonfire.
.collect Flame of Undercity##23181 |n
.' Click the Flame of Undercity in your bags |use Flame of Undercity##23181
..accept 9326 |tip It is recommended that you be level 80 when attempting to complete this guide step.
step
'Go outside to Tirisfal Glades |goto Tirisfal Glades |noway |c
step
'Go east to Western Plaguelands |goto Western Plaguelands |noway |c
step
'Fly east to Eastern Plaguelands |goto Eastern Plaguelands |noway |c
step
goto Eastern Plaguelands,54.8,8.5 |n
.' Go inside the huge swirling portal to the Ghostlands |goto Ghostlands |noway |c
step
goto Ghostlands,47,26
 		.click Horde Bonfire##7734 
..accept 11774 |instant
step
'Go north to Eversong Woods |goto Eversong Woods |noway |c
step
goto Eversong Woods,46,50
 		.click Horde Bonfire##7734 
..accept 11772 |instant
step
'Go east to Silvermoon City |goto Silvermoon City |noway |c
step
goto Silvermoon City,69.0,43.4
.' Click the Flame of Silvermoon |tip It's a huge blue bonfire.
.collect Flame of Silvermoon##35568 |n
.' Click the Flame of Silvermoon in your bags |use Flame of Silvermoon##35568
..accept 11935 |tip It is recommended that you be level 80 when attempting to complete this guide step.
step
'Go outside to Eversong Woods |goto Eversong Woods |noway |c
step
'Go south to the Ghostlands |goto Ghostlands |noway |c
step
goto Ghostlands,52.0,97.8 |n
.' Go inside the huge swirling portal to Eastern Plaguelands |goto Eastern Plaguelands |noway |c
step
goto Eastern Plaguelands,75.8,53.4
.talk 12617
.' Fly to Ironforge, Dun Morogh |goto Ironforge,55.9,47.9,0.5 |noway |c
step
goto Ironforge,63.8,25.3
.talk 16817
..turnin 9326
..turnin 11935
..accept 9365 |instant
step
goto Ironforge,27.3,7.0 |n
.' Click the Portal to Blasted Lands |goto Blasted Lands |noway |c
step
'Go inside the big green portal to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
step
goto Hellfire Peninsula,62.2,58.3
.talk 25900
..accept 11818 |instant
step
goto Hellfire Peninsula,57.2,41.8
 		.click Horde Bonfire##7734 
..accept 11775 |instant
step
goto Netherstorm,32.3,68.2
 		.click Horde Bonfire##7734 
..accept 11799 |instant
step
goto Netherstorm,31.2,62.7
.talk 25913
..accept 11830 |instant
step
goto Blade's Edge Mountains,50.0,59.0
 		.click Horde Bonfire##7734 
..accept 11767 |instant
step
goto Blade's Edge Mountains,41.6,65.9
.talk 25889
..accept 11807 |instant
step
goto Zangarmarsh,35.6,51.8
 		.click Horde Bonfire##7734 
..accept 11787 |instant
step
goto Zangarmarsh,68.8,52.0
.talk 25912
..accept 11829 |instant
step
goto Nagrand,51.1,34.0
 		.click Horde Bonfire##7734 
..accept 11778 |instant
step
goto Nagrand,49.6,69.5
.talk 25903
..accept 11821 |instant
step
goto Terokkar Forest,51.9,43.2
 		.click Horde Bonfire##7734 
..accept 11782 |instant
step
goto Terokkar Forest,54.1,55.5
.talk 25907
..accept 11825 |instant
step
goto Shadowmoon Valley,33.5,30.3
 		.click Horde Bonfire##7734 
..accept 11779 |instant
step
goto Shadowmoon Valley,39.6,54.6
.talk 25905
..accept 11823 |instant
step
goto Shattrath City,55.8,36.6 |n
.' Click the Shattrath Portal to Stormwind |goto Stormwind City |noway |c
step
goto Stormwind City,18.2,25.5 |n
.' Ride the boat to Borean Tundra |goto Borean Tundra |noway |c
step
goto Borean Tundra,55.1,20.0
.talk 32801
..accept 13485 |instant
step
goto Borean Tundra,51.1,11.8
 		.click Horde Bonfire##7734 
..accept 13441 |instant
step
goto Sholazar Basin,48.1,66.4
.talk 32802
..accept 13486 |instant
step
goto Sholazar Basin,47.3,61.5
 		.click Horde Bonfire##7734 
..accept 13450 |instant
step
goto Dragonblight,38.5,48.3
 		.click Horde Bonfire##7734 
..accept 13451 |instant
step
goto Dragonblight,75.3,43.8
.talk 32803
..accept 13487 |instant
step
goto Crystalsong Forest,78.2,75.0
.talk 32807
..accept 13491 |instant
step
goto Crystalsong Forest,80.4,52.7
 		.click Horde Bonfire##7734 
..accept 13457 |instant
step
goto The Storm Peaks,40.4,85.6
 		.click Horde Bonfire##7734 
..accept 13455 |instant
step
goto The Storm Peaks,41.4,86.7
.talk 32806
..accept 13490 |instant
step
goto Zul'Drak,40.4,61.3
.talk 32808
..accept 13492 |instant
step
goto Zul'Drak,43.3,71.3
 		.click Horde Bonfire##7734 
..accept 13458 |instant
step
goto Grizzly Hills,19.1,61.5
 		.click Horde Bonfire##7734 
..accept 13454 |instant
step
goto Grizzly Hills,33.9,60.5
.talk 32805
..accept 13489 |instant
step
goto Howling Fjord,48.4,13.4
 		.click Horde Bonfire##7734 
..accept 13453 |instant
step
goto Howling Fjord,57.8,16.1
.talk 32804
..accept 13488 |instant
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\Flame Warden\\Midsummer Fire Festival Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Midsummer Fire Festival event.
startlevel 80
step
'Complete the Midsummer Fire Festival Quests guide section before doing this guide section.
|confirm
step
goto Stormwind City,49.3,72.3
.talk 26221
..' Queue for The Frost Lord Ahune battle.
..' Click Find Group
..from Lord Ahune##25740
.' Complete the Ice the Frost Lord Achievement |achieve 263
step
goto 49.0,72.0
.talk 26123
.buy 15 Juggling Torch##34599
.buy 1 Mantle of the Fire Festival##23324
.buy 1 Vestment of Summer##34685
.buy 1 Sandals of Summer##34683
step
goto 50.5,73.1
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
goto Stormwind City,18.2,25.5 |n
.' Ride the boat to Borean Tundra |goto Borean Tundra |noway |c
step
goto Borean Tundra,59.0,68.3
.talk 26879
.' Fly to Dalaran |goto Dalaran,72.7,45.7,0.5 |noway |c
step
goto Dalaran,36.8,44.1
.' Use your 15 Juggling Torches as fast as you can |tip You must juggle them all in under 15 seconds.  The best way to do this is to place your Juggling Torches on your hotbar.  Press the hotbar key and click the ground at the same time.  Keep spamming the hotbar key and clicking the ground at the same time as fast as possible and don't stop until you get the achievement.
.' Complete the Torch Juggler Achievement |achieve 272
step
'Congratulations, you are now The Flame Warden!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\Elder\\Lunar Festival Main Questline",[[
author support@zygorguides.com
description This guide section will walk you through completing the main questline for the Lunar Festival event.
#include "Lunar Festival Main Quest"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\Elder\\Lunar Festival Optimized Elders Path",[[
author support@zygorguides.com
description This guide section will walk you through an optimized path for honoring the elders
description that are spread out all over Azeroth for the Lunar Festival event.
description The 13 elders that are inside instances are not included in this guide section.
description Using this guide section, you will collect 62 of the total 75 Coins of Ancestry.
#include "Lunar Festival Elder Path"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\Elder\\Lunar Festival Achievements",[[
author support@zygorguides.com
#include "Lunar Festival Achievement"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\The Love Fool\\Love is in the Air Main Questline",[[
author support@zygorguides.com
description This guide section will walk you through completing the main questline for the Love is in the Air event.
next Zygor's Alliance Event Guides\\Love is in the Air (February 7th - 20th)\\Love is in the Air Dailies
step
goto Ironforge,35.3,69.0
.talk 38293
..accept 24804
step
goto Ironforge,55.5,47.8
.talk 1573
.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
step
goto Stormwind City,61.6,75.3
.talk 38066
..turnin 24804
..accept 24655
step
goto 62.4,76.9
.' Find Stormwind Guards that have the Heavily Perfumed buff on them|tip They are all over Stormwind and will have a glowing pink aura around them
.' Use Snagglebolt's Air Analyzer on Stormwind Guards|use Snagglebolt's Air Analyzer##50131
.' Analyze 6 Perfumed Guards|q 24655/1
step
goto Stormwind City,61.6,75.3
.talk 38066
..turnin 24655
..accept 24656
step
' While disguised as a package-runner, RUN to the Crown Chemical Company's stockpile outside the gates of Stormwind|goto Elwynn Forest,34.0,47.4,0.3
.' Get the Crown Chemical Co. Package |havebuff INV_Crate_03 |q 24656
step
' Quickly return the package they toss you to Inspector Snip Snagglebolt in Stormwind.|goto Stormwind City,61.6,75.3,0.3
' Deliver the package in time |condition ZGV.questsbyid[24656] and ZGV.questsbyid[24656].complete |q 24656
.' If you lose your disguise, ask the Inspector for another one and repeat the run.
step
goto Stormwind City,61.6,75.3
.talk 38066
..turnin 24656
..accept 24848
step
goto Stormwind City,60.6,76.4
.talk 38325
..turnin 24848
..accept 24849
step
goto Stormwind City,63.2,79.1
.' Search the Stormwind Counting House|q 24849/1
step
goto Stormwind City,61.2,70.9
.' Search the Stormwind Auction House|q 24849/2
step
goto Stormwind City,61.3,65.0
.' Search the Stormwind Barber Shop|q 24849/3
step
goto Stormwind City,60.6,76.4
.talk 38325
..turnin 24849
..accept 24657
step
goto Stormwind City,27.43,34.8
.talk 37715
.' Talk to him until he gives you Snivel's Ledger
..collect Snivel's Ledger##49915|q 24657/1
step
goto Stormwind City,61.6,75.3
.talk 38066
..turnin 24657
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\The Love Fool\\Love is in the Air Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the Love is in the Air even daily quests.
daily
step
goto Ironforge,33.5,65.6
.talk 16075
..accept 24609 |daily
step
goto 55.5,47.8
.talk 1573
.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
step
goto Stormwind City,61.6,75.3
.talk 38066
..' You have to be at least level 5 to accept a quest from him
..accept 24658 |daily |only if level >= 5 and level < 14
..accept 24659 |daily |only if level >= 14 and level < 23
..accept 24660 |daily |only if level >= 23 and level < 32
..accept 24662 |daily |only if level >= 32 and level < 41
..accept 24663 |daily |only if level >= 41 and level < 51
..accept 24664 |daily |only if level >= 51 and level < 61
..accept 24665 |daily |only if level >= 61 and level < 71
..accept 24666 |daily |only if level >= 71
step
goto 62.4,75.4
.talk 37675
..accept 24629 |daily |or
..accept 24635 |daily |or
..accept 24636 |daily |or
step
goto Stormwind City,62.5,75.0
.talk 16075
..accept 24597 |daily
step
'Run around Stormwind and:
.' Use your Crown Cologne Sprayer on NPCs and other players without a red heart over their head |use Crown Cologne Sprayer##49669
.' Give 10 Cologne Samples |q 24635/1
step
'Run around Stormwind and:
.' Use your Crown Perfume Sprayer on NPCs and other players without a red heart over their head |use Crown Perfume Sprayer##49668
.' Give 10 Perfume Samples |q 24629/1
step
'Run around Stormwind and:
.' Use your Crown Chocolate Sampler on NPCs and other players without a red heart over their head |use Crown Chocolate Sampler##49670
.' Give 10 Chocolate Samples |q 24636/1
step
'Go outside Stormwind to Elwynn Forest |goto Elwynn Forest |noway |c
only if level >= 5 and level < 14
step
goto Elwynn Forest,29.3,65.4
.kill 5 Crown Lackey |q 24658/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24658/1
only if level >= 5 and level < 14
step
'This step depends on your character's level and what you want to do.  
.' If you don't have alot of money, or don't want to spend any more, do this: |tip Go to a place where the mobs are at least green to you, they cannot be grey to you, or they won't drop the items you need.  Now, just kill the mobs until you collect 40 Lovely Charms.  You won't get a Lovely Charm from every mob you kill, so be prepared to grind for a while.
..collect 40 Lovely Charm##49655 |n
.' If you have a lot of money, or don't care about spending money and just want to do the quests very quickly, do this: |tip Go to the Auction House and buy 4 Lovely Charm Bracelets.
.' If you chose to kill mobs, use your Lovely Charms to create 4 Lovely Charm Bracelets |use Lovely Charm##49655
.collect 4 Lovely Charm Bracelet##49916
step
'Go to Stormwind City |goto Stormwind City |noway |c
only if level >= 5 and level < 14
step
goto Stormwind City,61.6,75.3
.talk 38066
..turnin 24658 |daily 
only if level >= 5 and level < 14
step
goto 62.4,75.4
.talk 37675
..turnin 24629
..turnin 24635
..turnin 24636
step
goto 80,38.4
.talk 29611
..turnin 24597
step
goto Stormwind City,22.6,56.0 |n
.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
step
goto Teldrassil,55.4,88.4
.talk 3838
.' Fly to Grove of the Ancients, Darkshore |goto Darkshore,44.4,75.5,0.5 |noway |c
step
goto Darkshore,44.2,78.0
.kill 5 Crown Thugs |q 24659/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24659/1
only if level >= 14 and level < 23
step
goto 44.4,75.5
.talk 33253
.' Fly to Darnassus, Teldrassil |goto Darnassus,36.7,48.3,0.5 |noway |c
step
goto Darnassus,45.4,57.8
.talk 16075
..accept 24610 |daily
step
goto 37.0,50.5
.' Go into the pink portal to Rut'theran Village |goto Teldrassil |noway |c
step
goto Teldrassil,52.3,89.5 |n
.' Ride the boat to Azuremyst Isle |goto Azuremyst Isle |noway |c
step
goto The Exodar,73.6,57.0
.talk 16075
..accept 24611 |daily
..turnin 24611
step
goto 54.5,36.3
 .talk 17555
 .' Fly to Rut'theran Village, Teldrassil |goto Teldrassil,55.4,88.5,0.5 |noway |c
step
goto Teldrassil,55.0,93.7 |n
.' Ride the boat to Stormwind City |goto Stormwind City |noway |c
step
goto Stormwind City,70.9,72.5
.talk 352
.'Fly to Ironforge, Dun Morogh |goto Ironforge,55.9,47.9,0.5 |noway |c
step
goto Ironforge,40.0,55.1
.talk 2784
..turnin 24609
step
goto 55.5,47.8
.talk 1573
.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
step
goto Stormwind City,80,38.4
.talk 29611
..turnin 24610
step
goto 61.6,75.3
.talk 38066
..turnin 24659 |daily
only if level >= 14 and level < 23
step
goto Stormwind City,70.9,72.5
.talk 352
.' Fly to Aerie Peak, The Hinterlands |goto The Hinterlands,11.1,46.1,0.5 |noway |c
only if level >= 23 and level < 32
step
'Go southwest to Hillsbrad Foothills |goto Hillsbrad Foothills |noway |c
only if level >= 23 and level < 32
step
goto Hillsbrad Foothills,34.5,58.4
.kill 5 Crown Duster |q 24660/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24660/1
only if level >= 23 and level < 32
step
'Go northeast to The Hinterlands |goto The Hinterlands |noway |c
only if level >= 23 and level < 32
step
goto The Hinterlands,11.1,46.2
.talk 8018
.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
only if level >= 23 and level < 32
step
goto Ironforge,55.5,47.8
.talk 1573
.' Fly to Menethil Harbor |goto Wetlands,9.4,59.5,0.5 |noway |c
only if level >= 32 and level < 41
step
goto Wetlands,6.4,62.3 |n
.' Ride the boat to Theramore |goto Dustwallow Marsh |noway |c
only if level >= 32 and level < 41
step
goto Dustwallow Marsh,60.8,38.2
.kill 5 Crown Hoodlum |q 24662/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24662/1
only if level >= 32 and level < 41
step
goto 71.5,56.3|n
.' Ride the boat to Menethil Harbor |goto Wetlands |noway |c
only if level >= 32 and level < 41
step
goto Wetlands,9.4,59.6
.talk 1571
.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
only if level >= 32 and level < 41
step
goto Stormwind City,70.9,72.5
.talk 352
.' Fly to Aerie Peak, The Hinterlands |goto The Hinterlands,11.1,46.1,0.5 |noway |c
only if level >= 41 and level < 51
step
goto The Hinterlands,23.6,53.7
.kill 5 Crown Agent |q 24663/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24663/1
only if level >= 41 and level < 51
step
goto The Hinterlands,11.1,46.2
.talk 8018
.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
only if level >= 41 and level < 51
step
goto Stormwind City,61.6,75.3
.talk 38066
..turnin 24660 |only if level >= 23 and level < 32
..turnin 24662 |only if level >= 32 and level < 41
..turnin 24663 |only if level >= 41 and level < 51
only if level >= 23 and level < 51
step
goto Stormwind City,22.6,56.0 |n
.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
only if level >= 51 and level < 61	
step
goto Teldrassil,55.4,88.4
.talk 3838
.' Fly to Everlook |goto Winterspring,61.0,48.7,0.5 |noway |c
only if level >= 51 and level < 61
step
goto Winterspring,63.6,49.4
.kill 5 Crown Sprinkler |q 24664/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24664/1
only if level >= 51 and level < 61
step
goto 61.0,48.6
.talk 11138
.' Fly to Rut'theran Village, Teldrassil |goto Teldrassil,55.4,88.5,0.5 |noway |c
only if level >= 51 and level < 61
step
goto Teldrassil,55.0,93.7 |n
.' Ride the boat to Stormwind City |goto Stormwind City |noway |c
only if level >= 51 and level < 61
step
goto Stormwind City,61.6,75.3
.talk 38066
..turnin 24664
only if level >= 51 and level < 61
step
goto Stormwind City,49.0,87.4 |n
.' Click the Portal to Blasted Lands |tip It's a blue portal at the top of the mage tower.
.' Teleport to the Blasted Lands |goto Blasted Lands |noway |c
only if level >= 61 and level < 71
step
goto Blasted Lands,58.7,59.7 |n
.' Go into the big green portal to Outland |goto Hellfire Peninsula |noway |c
only if level >= 61 and level < 71
step
goto Hellfire Peninsula,87.4,52.4
.talk 18931
.' Fly to Shattrath City |goto Shattrath City,63.8,41.7,0.5 |noway |c
only if level >= 61 and level < 71
step
'Go outside of Shattrath City to Terokkar Forest |goto Terokkar Forest |noway |c
only if level >= 61 and level < 71
step
goto Terokkar Forest,41.4,22.5
.kill 5 Crown Underling |q 24665/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24665/1
only if level >= 61 and level < 71
step
'Go inside Shattrath City |goto Shattrath City |noway |c
only if level >= 61 and level < 71
step
goto Shattrath City,64.1,41.1
.talk 18940
.' Fly to Hellfire Peninsula, The Dark Portal, Alliance |goto Hellfire Peninsula,87.5,52.5,0.5 |noway |c
only if level >= 61 and level < 71
step
'Go through the big green portal to Blasted Lands |goto Blasted Lands |noway |c
only if level >= 61 and level < 71
step
goto Blasted Lands,61.3,21.6
.talk 8609
.' Fly to Stormwind, Elwynn |goto Stormwind City,71.0,73.0,0.5 |noway |c
only if level >= 61 and level < 71
step
goto Stormwind City,61.6,75.3
.talk 38066
..turnin 24665
only if level >= 61 and level < 71
step
goto 18.2,25.5 |n
.'Ride the boat to Borean Tundra |goto Borean Tundra |noway |c
only if level >= 71
step
'Fly to Dalaran|goto Dalaran|noway|c
only if level >= 74
step
.' Follow the road northeast to Dragonblight|goto Dragonblight|noway|c
only if level >= 71 and level < 74
step
.' We recommend the following route to get through Dragonblight
.' Follow the road north east to this point: 50.1,55.6
.' Head towards Wyrmrest temple to this point: 57.9,51.2
.' Travel north up the Path of the Titans starting at: 60.0,42.3
.' Continue up through the Crystal Vice starting here 64.6,23.9|tip Avoid the elite giants the best you can
.' Go north to Crystalsong Forest|goto Crystalsong Forest|noway|c
only if level >= 71 and level < 74
step
goto Crystalsong Forest,49.0,47.8
.kill 5 Crown Sprayer##38032 |q 24666/2
.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
.' Destroy the Chemical Wagon |q 24666/1
only if level >= 71
step
'Go south to Dragonblight|goto Dragonblight|noway|c
only if level >= 71 and level < 74
step
'Go to Dalaran|goto Dalaran,72.4,45.5,1|noway|c
only if level >= 74
step
goto Dragonblight,64.6,23.9
.' We recommend the following route to get through Dragonblight
.' Follow The Crystal Vice to this point 64.6,23.9|tip Avoid the elite giants the best you can
.' Travel south down the Path of the Titans to this point: 60.0,42.3
.' Head towards Wyrmrest temple to this point: 57.9,51.2
.' Follow the road west to this point: 50.1,55.6
.' Go west to Borean Tundra|goto Borean Tundra|noway|c
only if level >= 71 and level < 74
step
'Fly to Valiance Keep|goto Borean Tundra,58.9,68.4,0.5|noway|c
only if level >= 74
step
'Ride the boat to Stormwind City|goto Stormwind City|noway|c
only if level >= 71
step
goto Stormwind City,61.6,75.3
.talk 38066
..turnin 24666
only if level >= 71
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\The Love Fool\\Love is in the Air Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the Love is in the Air event achievements.
step
'You will need Love Tokens in order to purchase items from vendors in this guide section. |tip You can get Love Tokens by completing the dailies in the Love is in the Air Dailies section. 
|confirm
step
goto Ironforge,34.0,66.1
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
goto 34.0,66.1
.talk 37674
.buy 10 Silver Shafted Arrow##22200 |n
.' Use your Silver Shafted Arrows on 10 players inside Ironforge |use Silver Shafted Arrow##22200
.' Shoot 10 Players with the Silver Shafted Arrow |achieve 1188
step
goto 34.0,66.1
.talk 37674
.buy 1 Box of Chocolates##49909 |n
.' Use your Box of Chocolates and get all the chocolate contained inside of it |use Box of Chocolates##49909
.' Eat each type of chocolate:
.' Sweet Surprise |use Sweet Surprise##22239 |achieve 1702/3
.' Very Berry Cream |use Very Berry Cream##22238 |achieve 1702/4
.' Buttermilk Delight |use Buttermilk Delight##22236 |achieve 1702/1 |tip Save the remaining Buttermilk Delights for a later achievement.
.' Dark Desire |use Dark Desire##22237 |achieve 1702/2
step
goto 34.0,66.1
.talk 37674
.buy 10 Love Rocket##34258 |n
.' Spam use your Love Rockets |use Love Rocket##34258
.' Shoot off 10 Love Rockets in 20 seconds or less |achieve 1696
step
goto 34.0,66.1
.talk 37674
.buy 15 Handful of Rose Petals##22218 |achieve 1699
.buy 1 Romantic Picnic Basket##34480 |achieve 1291
.buy 1 "VICTORY" Perfume##49856 |achieve 1279
.buy 5 Love Fool##22261 |achieve 1704
step
goto 18.7,51.8
.talk 5112
.buy 6 Flagon of Mead##2594 |achieve 1279
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
'Go to Ironforge |goto Ironforge |noway |c
step
goto 42.4,35.7
.' Find Sraaz |tip He's a gnome that walks around the circle around The Great Forge.
.' Do the following exactly in order from top to bottom in the step:
.' Use all 6 of your Flagons of Mead to get Completely Smashed |use Flagon of Mead##2594
.' Use your "VICTORY" Perfume |use "VICTORY" Perfume##49856
.' Use your Handful of Rose Petals on Sraaz |use Handful of Rose Petals##22218 |achieve 1279/1
.' Kiss Sraaz |script DoEmote("KISS") |achieve 1279/2
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
.' Drahga Shadowburner in the Grim Batol Dungeon
.' Corla, Herald of Twilight in the Blackrock Caverns
.' High Priestess Azil in The Stonecore Dungeon
.' Lord Godfrey in the Shadowfang Keep Dungeon
.' Get either of these 2 items as a random drop from these bosses:
.collect 1 Bouquet of Red Roses##22206 |n
.collect 1 Bouquet of Ebon Roses##44731 |n
.' Obtain a Bouquet of Red or Ebon Roses during the Love is in the Air celebration |achieve 1703 
step
'Congratulations, you are a Fool For Love!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\The Noble\\Noblegarden Quests and Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests and dailies for the Noblegarden event.
step
#include "Noblegarden Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\The Noble\\Noblegarden Achievements",[[
author support@zygorguides.com
description This guide section will walk you through getting all 12 achievements for the Noblegarden event.
#include "Noblegarden Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\The Matron-Patron\\Children's Week Stormwind Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Stormwind questline for the Children's Week event.
startlevel 60
step
#include "Children's Week Stormwind"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\The Matron-Patron\\Children's Week Shattrath Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Shattrath questline for the Children's Week event.
startlevel 60
step
#include "Children's Week Shattrath"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\The Matron-Patron\\Children's Week Dalaran Oracles Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Dalaran Oracles questline for the Children's Week event.
startlevel 70
step
#include "Children's Week Dalaran Oracles Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\The Matron-Patron\\Children's Week Dalaran Wolvar Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the Dalaran Wolvar questline for the Children's Week event.
startlevel 70
step
#include "Children's Week Dalaran Wolvar Quests"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\The Matron-Patron\\Children's Week Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the Achievements for the Children's Week event.
startlevel 10
step
#include "Children's Week Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\Brewmaster\\Brewfest Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Brewfest event.
step
goto Ironforge,30.8,62.9
.talk 19148
..accept 11441
step
'Go outside to Dun Morogh |goto Dun Morogh |noway |c
step
goto Dun Morogh,55.1,38.1
.talk 24710
..turnin 11441
step
goto 55.1,37.7
.' NOTE: If you are on an EU server, you will be unable to accept these 2 quests. |tip So, just skip them, and also skip the guide steps where you complete the quest goals for these quests.
.talk 23486
..accept 11117
..accept 11118
step
goto 55.1,37.7
.talk 23486
..' Ask him if there's another way you can help out if you don't like drinking, then ask for a pair of Synthebrew Goggles
.collect Synthebrew Goggles##46735 |q 11117
step
 goto 54.7,38.1
.talk 27215
..accept 12022
step
goto 54.8,37.9
.' Click the Complimentary Brewfest Samplers |tip They looks like mugs of beer on the small tables on either side of you.
.' Use your Complimentary Brewfest Samplers |use Complimentary Brewfest Sampler##33096
.' Hit S.T.O.U.T. 5 Times |q 12022/1
step
goto 54.7,38.1
.talk 27215
..turnin 12022
step
goto 53.7,38.6
.talk 23558
..accept 11318
step
'As you run around on the ram:
.' Use your Ram Racing Reins |use Ram Racing Reins##33306 |tip The ram runs slow by default.  You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.  To the ram Trot for 8 seconds, use the Ram Racing Reins every 2 seconds or so to keep the ram running at the speed just above the slow default speed.  To make the Ram Canter for 8 seconds, use the Ram Racing Reins a little more often than when you made the Ram Trot.  To make the Ram Gallop, just spam use the Ram Racing Reins.
.' Maintain a Trot for 8 seconds |q 11318/1
.' Maintain a Canter for 8 seconds |q 11318/2
.' Maintain a Gallop for 8 seconds |q 11318/3
step
goto 53.7,38.6
.talk 23558
..turnin 11318
..accept 11122
step
map Dun Morogh
path follow strict;loop;ants straight
path	54.6,43.3	54.5,47.4	53.1,51.3	
path	53.7,51.8	54.5,47.7	54.6,43.4
path	53.6,38.5
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Stop at every bucket of apples you see on the side of the road to refresh your Ram's fatigue level, allowing the Ram to run faster for longer.
.' _FOLLOW THE WAYPOINT PATH_ Flynn Firebrew will throw you a keg when you get close
.' Once you have a keg, run back and turn it in to Pol Amberstill at |tip Just get near him and you will throw the keg to him.
.' Deliver 3 Kegs in Under 4 Minutes|q 11122/1
step
goto 53.7,38.6
.talk 23558
..turnin 11122
step
goto 53.5,38.6
.talk 24468
.' You will be able to accept one of these quests
..accept 13932 |or
.' or
..accept 29397 |or
step
'Use your Synthebrew Goggles |use Synthebrew Goggles##46735
.' Equip the Synthebrew Goggles |havebuff Interface\Icons\Spell_Holy_SpiritualGuidence |q 11117
step
goto 54.5,38.5
.' Use your Wolpertinger Net on Wild Wolpertingers |use Wolpertinger Net##32907 |tip They look like rabbits with antlers and wings running around on the ground around this area.
.get 5 Stunned Wolpertinger |q 11117/1
step
goto 55.1,37.7
.talk 23486
..turnin 11117
.collect Wolpertinger's Tankard |n
.' Does Your Wolpertinger Linger? |achieve 1936 |tip If you are on the EU server you will be able to achieve this in the Achievments Guide.
step
goto 56.4,37.8
.talk 23710
..turnin 13932 |or
.' or
..turnin 29397 |or
step
'Go inside Ironforge |goto Ironforge |noway |c
step
|fly Stormwind City
step
'Go outside to Elwynn Forest |goto Elwynn Forest |noway |c
step
goto Elwynn Forest,33.5,50.7
'Use your Synthebrew Goggles |use Synthebrew Goggles##46735
.' Equip the Synthebrew Goggles |havebuff Interface\Icons\Spell_Holy_SpiritualGuidence |q 11118
.' Use your Elekk Dispersion Ray on Elwynn Pink Elekks |use Elekk Dispersion Ray##32960
.kill 3 Elwynn Pink Elekk |q 11118/2
step
'Go inside Stormwind City |goto Stormwind City |noway |c
step
goto Stormwind City,22.5,55.8 |n
.' Ride the boat to Rut'theran Village |goto Teldrassil |noway |c
step
goto 55.1,88.3 |n
.' Go through the Pink Portal |goto Darnassus |noway |c
step
goto 67.3,46.1
'Use your Synthebrew Goggles |use Synthebrew Goggles##46735
.' Equip the Synthebrew Goggles |havebuff Interface\Icons\Spell_Holy_SpiritualGuidence |q 11118
.' Use your Elekk Dispersion Ray on Azuremyst Pink Elekks |use Elekk Dispersion Ray##32960
.kill 3 Azuremyst Pink Elekk |q 11118/3
step
goto Darnassus,44.2,78.7
.' Click on the Portal to Exodar |tip It looks like a swirling blue portal
.' Teleport to The Exodar |goto The Exodar |noway |c
step
goto The Exodar,78.4,57.4
'Use your Synthebrew Goggles |use Synthebrew Goggles##46735
.' Equip the Synthebrew Goggles |havebuff Interface\Icons\Spell_Holy_SpiritualGuidence |q 11118
.' Use your Elekk Dispersion Ray on Teldrassil Pink Elekks |use Elekk Dispersion Ray##32960
.kill 3 Teldrassil Pink Elekk |q 11118/1
step
goto 47.6,62.1
.' Click the Portal to Darnassus |tip It looks like a blue swirling portal
.' Teleport to Darnassus |goto Darnassus |noway |c
step
goto 36.3,50.3 |n
.' Go through the Pink Portal |goto Teldrassil |noway |c
step
goto 55.0,93.7 |n
.' Ride the boat to Stormwind |goto Stormwind City |noway |c
step
|fly Ironforge
step
'Go outside to Dun Morogh |goto Dun Morogh |noway |c
step
goto 55.1,37.7
.talk 23486
..turnin 11118
step
'Use the Dungeon Finder (press I) to queue for Coren Direbrew |tip You must be level 80 to complete this quest.
.' You will fight Coren Direbrew
.from Coren Direbrew##23872
.collect 1 Direbrew's Dire Brew##38280 |n
.' Click Direbrew's Dire Brew in your bags |use Direbrew's Dire Brew##38280
..accept 12491
step
'Click the green eye on the edge of your minimap
.' Teleport Out of the Dungeon and go to Dun Morogh |goto Dun Morogh |noway |c
step
goto 55.1,38.1
.talk 24710
..turnin 12491
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\Brewmaster\\Brewfest Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests for the Brewfest event.
daily
step
'You will only be able to do 1 of the first 2 dailies in this guide, per day. |tip Quests "Bark for the Barleybrews!" or "Bark for the Thunderbrews!".
|confirm
step
goto Dun Morogh,56.1,38.0
.talk 23627
..accept 11293 |daily |or
.' Or
 goto 56.6,36.9
.talk 23628
..accept 11294 |daily |or
step
'Ride your ram into Ironforge |goto Ironforge |noway |c |q 11293
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
|only if havequest (11293)
step
'Ride your ram into Ironforge |goto Ironforge |noway |c |q 11294
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
|only if havequest (11294)
step
goto Ironforge,31.7,66.7
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark Outside the Bank |q 11293/1
|only if havequest (11293)
step
goto 61.2,80.0
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Military Ward |q 11293/2
|only if havequest (11293)
step
goto 65.3,24.4
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Hall of Explorers |q 11293/3
|only if havequest (11293)
step
goto 29.5,14.2
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Mystic Ward |q 11293/4
|only if havequest (11293)
step
goto Ironforge,31.7,66.7
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark Outside the Bank |q 11294/1
|only if havequest (11294)
step
goto 61.2,80.0
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Military Ward |q 11294/2
|only if havequest (11294)
step
goto 65.3,24.4
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Hall of Explorers |q 11294/3
|only if havequest (11294)
step
goto 29.5,14.2
.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Just keep a Trot pace most of the time, and only sometimes keep a Canter pace.  If you go too much faster than that, your ram will get tired and you will run out of time.
.' Go to this spot
.' Bark in the Mystic Ward |q 11294/4
|only if havequest (11294)
step
'Go outside to Dun Morogh |goto Dun Morogh |noway |c
step
goto Dun Morogh,56.1,38.0
goto 56.1,38.0
.talk 23627
..turnin 11293
|only if havequest (11293)
step
goto Dun Morogh,56.5,36.9
goto 56.5,36.9
.talk 23628
..turnin 11294
|only if havequest (11294)
step
goto 56.0,37.2
.click Dark Iron Mole Machine Wreckage##7000 |tip It appears after the Dark Iron dwarves attack the Brewfest festival, so you may have to wait for it to appear.
..accept 12020 |daily 
step
goto 56.0,37.1
.' Click the Dark Iron Mole Machine Wreckage |tip You have to defend the three kegs at these locations in order for it to show up.
.' Click the Complimentary Brewfest Sampler here [55.3,37.3]
.' Click the Complimentary Brewfest Sampler here [55.7,38.1]	
.' Thow the Sampler's at the Dark Iron Dwarves and the Mole Machines. |use Complimentary Brewfest Sampler##33096
step
goto Dun Morogh,54.7,38.1
.talk 27215
..turnin 12020
.' Down With The Dark Iron Achievement |achieve 1186
step
goto 53.7,38.6
.talk 23558
..accept 29394 |instant |daily
.' On your Ram, run to Flynn Firebrew at|tip Flynn Firebrew will throw you a keg when you get close.
.' Deliver as many kegs as you can within 4 minutes |tip You get 2 Brewfest Prize Tokens for each keg you deliver, so this is a good way to get some Brewfest Prize Tokens to join the Brew of the Month Club.
step
map Dun Morogh
path follow strict;loop;ants straight
path	54.6,43.3	54.5,47.4	53.1,51.3	
path	53.7,51.8	54.5,47.7	54.6,43.4
path	53.6,38.5
.' Follow this path to pick up Kegs from Flynn Firebrew and run them back to Neill Ramstein
.' Use your Ram Racing Reins |use Ram Racing Reins##33306
step
goto 53.7,38.6
.talk 23558
..turnin 29394 |daily
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\Brewmaster\\Brewfest Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Brewfest event.
step
 goto Dun Morogh,55.6,38.2
.talk 23522
.buy The Essential Brewfest Pretzel##33043 |achieve 1185
step
'Click The Essential Brewfest Pretzels in your bags |use The Essential Brewfest Pretzel##33043
.' Eat The Essential Brewfest Pretzels |achieve 1185/7
step
goto 56.5,37.7
.talk 23521
.buy Spiced Onion Cheese##34065 |achieve 1185
step
'Click the Spiced Onion Cheese in your bags |use Spiced Onion Cheese##34065
.' Eat the Spiced Onion Cheese |achieve 1185/4
step
goto 56.0,36.4
.talk 23481
.buy Dried Sausage##34063 |achieve 1185
.buy Succulent Sausage##34064 |achieve 1185
.buy Savory Sausage##33023 |achieve 1185
.buy Pickled Sausage##33024 |achieve 1185
.buy Spicy Smoked Sausage##33025 |achieve 1185
.buy The Golden Link##33026 |achieve 1185
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
.' Click the Golden Link in your bags |use The Golden Link##33026
.' Eat The Golden Link |achieve 1185/8
.' Achieve The Brewfest Diet! |achieve 1185
step
goto 56.4,37.8
.talk 23710
.buy Fresh Brewfest Hops##37750 |achieve 303 |tip You must be at least level 20 to buy these.
step
'Use your Fresh Brewfest Hops |use Fresh Brewfest Hops##37750
.' Make your Mount Festive for Brewfest! |achieve 303
step
'Complete the Brewfest daily quests each day until you have 200 Brewfest Prize Tokens
.collect 200 Brewfest Prize Token##37829 |achieve 2796
step
goto 56.4,37.9
.talk 23710
.buy 1 "Brew of the Month" Club Membership Form##37736 |n
.' Click the "Brew of the Month" Club Membership Form in your bags |use "Brew of the Month" Club Membership Form##37736
..accept 12420
step
'Go inside Ironforge |goto Ironforge |noway |c
step
goto Ironforge,18.8,53.1
.talk 27478
..turnin 12420
.' Achieve Brew of the Month! |achieve 2796
.' Achieve Brewmaster! |achieve 1684
step
goto Dun Morogh,56.4,37.8
.' If you are on the EU servers go here to buy your Wolpertinger Pet
.buy Wolpertinger's Tankard##32233 |n
.' Does Your Wolpertinger Linger? |achieve 1936
step
'Congratulations, you are a Brewmaster!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\The Hallowed\\Hallow's End Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Hallow's End event.
#include "Hallows_End_Quests_Alliance"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\The Hallowed\\Hallow's End Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing the daily quests for the Hallow's End event.
daily
#include "Hallows_End_Dailies_Alliance"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\The Hallowed\\Hallow's End Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Hallow's End event.
#include "Hallows_End_Achievements_Alliance"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\The Pilgrim\\Pilgrim's Bounty Quests and Cooking 1-300 Guide",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Pilgrim's Bounty event, as well as getting your Cooking skill from 1-300.
#include "Pilgrims_Bounty_Quests_Alliance"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\The Pilgrim\\Pilgrim's Bounty Daily Quests",[[
author support@zygorguides.com
description This quide will help run through the Pilgrims Bounty Dailies and Achievements to earn the Title Pilgrim.
#include "Pilgrims_Bounty_Dailies_Alliance"
step
.' Congratulations! You have earned the Title Pilgrim!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\Merrymaker\\Feast of Winter Veil Quests",[[
author support@zygorguides.com
description This guide section will walk you through completing the quests for the Feast of Winter Veil event.
step
goto Ironforge,33.7,67.3
.talk 13433
..accept 7022
..accept 7042
..accept 8762
step
goto 33.1,65.5
.talk 13444
..turnin 7022
..accept 7025
step
goto 30.2,59.4
.talk 1365
..accept 7062
step
goto 60.1,36.4
.talk 5159
.' Learn the Apprentice Cooking skill, if you don't have it already
|only if skill("Cooking")<=1
step
goto 77.5,11.8
.talk 2916
..turnin 7062
..accept 7063
step
goto 33.7,67.3
.talk 13433
.buy 1 Recipe: Gingerbread Cookie##17200 |n
.' Click the Recipe: Gingerbread Cookie recipe in your bags |use Recipe: Gingerbread Cookie##17200
.' Learn the Gingerbread Cookie recipe
|confirm
step
goto 33.7,67.3
.talk 13433
.buy 5 Holiday Spices##17194 |q 7025
step
'Buy 5 Small Eggs from the Auction House: |tip You can also farm these from mobs, if you'd prefer.
.collect 5 Small Egg##6889 |q 7025
step
goto 32.1,62.8
.' Use your Cooking profession next to the fire to create Gingerbread Cookies
.get 5 Gingerbread Cookie |q 7025/1
step
goto 18.1,51.4
.talk 5111
.buy Ice Cold Milk##1179 |q 7025
step
goto 18.1,51.4
.talk 5111
.home Ironforge
step
goto 33.1,65.5
.talk 13444
..turnin 7025
step
goto 39.2,56.0
.talk 42928
..turnin 7063
step
'Use your Smokeywood Satchel |use Smokywood Satchel##21315
.collect Pouch of Reindeer Dust##21211 |q 8762
step
|fly Chillwind Camp
step
'Go south to Hillsbrad Foothills |goto Hillsbrad Foothills |noway |c
step
goto Hillsbrad Foothills,42.3,41.1
.talk 13636
..turnin 7042
..accept 7043
step
goto 39.2,34.3
.from The Abominable Greench##13602 |tip He is a level 36 elite that spawns randomly around the outer edge of the Ruins of Alterac. You may need to group if you are a lower level.
.get Stolen Treats |q 7043/2
.' Free Metzen the Reindeer |q 7043/1
step
'Go north to Western Plaguelands |goto Western Plaguelands |noway |c
step
goto Western Plaguelands,42.9,85.1
.talk 12596
.' Fly to Thorium Point, Searing Gorge |goto Searing Gorge,37.9,30.4,0.5 |noway |c
step
goto 68.8,34.2
.talk 15664
..' Sprinkle some of the reindeer dust onto Metzen
.' Find Metzen the Reindeer and rescue him |q 8762/1
step
'Hearth to Ironforge |goto Ironforge,18.1,51.5,0.5 |use Hearthstone##6948 |noway |c
step
goto Ironforge,33.7,67.3
.talk 13433
..turnin 7043
..accept 7045
..turnin 8762
step
goto 33.1,65.5
.talk 13444
..turnin 7045
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Events\\Merrymaker\\Feast of Winter Veil Achievements",[[
author support@zygorguides.com
description This guide section will walk you through completing the achievements for the Feast of Winter Veil event.
#include "Feast of Winter Veil Achievements"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Player Versus Player\\Of the Alliance",[[
author support@zygorguides.com
step
'This title is earned by achieving 100,000 honorable kills in any Player vs Player environment.
|achieve 870
step
'Congratulations! You have earned the title of the Alliance!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Player Versus Player\\The Bloodthirsty",[[
author support@zygorguides.com
step
'This title is earned by achieving 250,000 honorable kills in any Player vs Player environment.
|achieve 5363
step
'Congratulations! You have earned the title "The Bloodthirsty"!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Player Versus Player\\Arena Master",[[
author support@zygorguides.com
step
'This title is earned by completing the _"The Arena Master"_ achievement. |tip This is an incredibly difficult title to obtain.
|achieve 1174
step
'Congratulations! You have earned the title Arena Master!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Player Versus Player\\Battlemaster",[[
author support@zygorguides.com
step
'This title is earned by completing the _Battlemaster_ achievement. 
'In order to complete the _Battlemaster_ achievement you must obtain 5 achievements that make you the master of the following battlegrounds: Alterac Valley, Warsong Gulch, Strand of the Ancients, Arathi Basin, and Eye of the Storm.
|achieve 230
step
'Congratulations! You have earned the title Battlemaster!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Player Versus Player\\Justicar",[[
author support@zygorguides.com
step
'This title is earned by completing the _"The Justicar"_ achievement. 
'In order to complete the _"The Justicar"_ achievement you must become Exalted with The League of Arathor, the Silverwing Sentinels, and the Stormpike Guard. Use Zygor's Reputation Guides to do so.
|achieve 907
step
'Congratulations! You have earned the title Justicar!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Player Versus Player\\Private",[[
step
'This title is earned by achieving a rated battleground score of 1100.
|achieve 5330
step
'Congratulations! You have earned the title Private!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Player Versus Player\\Corporal",[[
step
'This title is earned by achieving a rated battleground score of 1200.
|achieve 5331
step
'Congratulations! You have earned the title Corporal!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Player Versus Player\\Sergeant",[[
step
'This title is earned by achieving a rated battleground score of 1300.
|achieve 5332
step
'Congratulations! You have earned the title Sergeant!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Player Versus Player\\Master Sergeant",[[
step
'This title is earned by achieving a rated battleground score of 1400.
|achieve 5333
step
'Congratulations! You have earned the title Master Sergeant!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Player Versus Player\\Sergeant Major",[[
step
'This title is earned by achieving a rated battleground score of 1500.
|achieve 5334
step
'Congratulations! You have earned the title Sergeant Major!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Player Versus Player\\Knight",[[
step
'This title is earned by achieving a rated battleground score of 1600.
|achieve 5335
step
'Congratulations! You have earned the title Knight!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Player Versus Player\\Knight-Lieutenant",[[
step
'This title is earned by achieving a rated battleground score of 1700.
|achieve 5336
step
'Congratulations! You have earned the title Knight-Lieutenant!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Player Versus Player\\Knight-Captain",[[
step
'This title is earned by achieving a rated battleground score of 1800.
|achieve 5337
step
'Congratulations! You have earned the title Knight-Captain!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Player Versus Player\\Knight-Champion",[[
step
'This title is earned by achieving a rated battleground score of 1900.
|achieve 5359
step
'Congratulations! You have earned the title Knight-Champion!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Player Versus Player\\Lieutenant Commander",[[
step
'This title is earned by achieving a rated battleground score of 2000.
|achieve 5339
step
'Congratulations! You have earned the title Lieutenant Commander!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Player Versus Player\\Commander",[[
step
'This title is earned by achieving a rated battleground score of 2100.
|achieve 5340
step
'Congratulations! You have earned the title Commander!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Player Versus Player\\Marshal",[[
step
'This title is earned by achieving a rated battleground score of 2200.
|achieve 5341
step
'Congratulations! You have earned the title Marshal!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Player Versus Player\\Field Marshal",[[
step
'This title is earned by achieving a rated battleground score of 2300.
|achieve 5357
step
'Congratulations! You have earned the title Field Marshal!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Player Versus Player\\Grand Marshal",[[
step
'This title is earned by achieving a rated battleground score of 2400.
|achieve 5343
step
'Congratulations! You have earned the title Grand Marshal!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Player Versus Player\\Veteran of the Alliance",[[
step
'This title is a reward for completing the _"Veteran of the Alliance"_ achievement.
'To earn this achievement win 75 Rated Battlegrounds.
|achieve 5328
step
Congratulations! You have earned the title Veteran of the Alliance!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Titles\\Player Versus Player\\Warbound",[[
step
'This title is a reward for completing the _"Warbound Veteran of the Alliance"_ achievement.
'To earn this achievement win 300 Rated Battlegrounds.
|achieve 5329
step
Congratulations! You have earned the title Warbound!
]])
