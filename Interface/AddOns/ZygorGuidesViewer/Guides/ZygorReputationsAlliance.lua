local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Alliance" then return end
if ZGV:DoMutex("ReputationsA") then return end
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\Home Cities Reputation",[[
author support@zygorguides.com
step
label	"menu"
.' This guide will show you how to become Exalted the fastest way, with all your Hometown Factions.
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
.' Exalted with Exodar |condition rep('Exodar')==Exalted         
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
.' Equip your Exodar Tabard |equipped Exodar Tabard##45580 |use Exodar Tabard##45580
.' You can run any dungeon that grants experience to gain reputation for Exodar.
.' Friendly with Exodar |condition rep('Exodar')>=Friendly
.' Honored with Exodar |condition rep('Exodar')>=Honored
.' Revered with Exodar |condition rep('Exodar')>=Revered
.' Become Exalted with Exodar |condition rep('Exodar')==Exalted
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\Timbermaw Hold Faction",[[
author support@zygorguides.com
#include "A_Timbermaw_Faction"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\Cenarion Circle Faction",[[
#include "A_Cenarion_Circle_Faction"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\The Steamwheedle Cartel",[[
description This Guide will help you get Reputation with the Steamwheedle Cartel to earn the title _The Insane_.
author support@zygorguides.com
step
.' To earn the Insane Title, you will need to get your reputation to Exalted with all the 
.' Steamwheedle Cartel factions: _Booty Bay_, _Gadgetzan_, _Everlook_, and _Ratchet_. While raising your reputation with these factions you will need to keep Honored status with the _Bloodsail Buccaneers_. 
.' If you want the Insane Title, we suggest you get your Bloodsail Buccaneers rep to Revered before working in this guide.
.' You must also become Exalted with the _Darkmoon Faire_ and _Ravenholdt_. For information on these two refer to the Azeroth section of the Zygor Reputation Guides.
.' Click here to continue |confirm
step
label	"Steam_Menu2"
.' You are currently _Friendly_ with Booty Bay |only if rep('Booty Bay')==Friendly
.' You are currently _Honored_ with Booty Bay |only if rep('Booty Bay')==Honored
.' You are currently _Revered_ with Booty Bay |only if rep('Booty Bay')==Revered
.' Become Exalted with Booty Bay |condition rep('Booty Bay')==Exalted
.' Click here to raise your Reputation with Booty Bay |confirm |next "gadget" |only if rep('Booty Bay')<=Revered |tip    
.' You are currently _Friendly_ with Gadgetzan |only if rep('Gadgetzan')==Friendly
.' You are currently _Honored_ with Gadgetzan |only if rep('Gadgetzan')==Honored
.' You are currently _Revered_ with Gadgetzan |only if rep('Gadgetzan')==Revered
.' Become Exalted with Gadgetzan |condition rep('Gadgetzan')==Exalted
.' Click here to raise your Reputation with Gadgetzan |confirm |next "gadget" |only if rep('Gadgetzan')<=Revered |tip      
.' You are currently _Friendly_ with Everlook |only if rep('Everlook')==Friendly
.' You are currently _Honored_ with Everlook |only if rep('Everlook')==Honored
.' You are currently _Revered_ with Everlook |only if rep('Everlook')==Revered
.' Become Exalted with Everlook |condition rep('Everlook')==Exalted
.' Click here to raise your Reputation with Everlook |confirm |next "ratchet" |only if rep('Everlook')<=Revered |tip    
.' You are currently _Friendly_ with Ratchet |only if rep('Ratchet')==Friendly
.' You are currently _Honored_ with Ratchet |only if rep('Ratchet')==Honored
.' You are currently _Revered_ with Ratchet |only if rep('Ratchet')==Revered
.' Become Exalted with Ratchet |condition rep('Ratchet')==Exalted
.' Click here to raise your Reputation with Ratchet |confirm |next "ratchet" |only if rep('Ratchet')<=Revered |tip     
|next "end" |only if default
step
label	"gadget"
#include "rideto_ratchet"
step
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
.' Gain Exalted reputation with Booty Bay |condition rep('Booty Bay')==Exalted |tip             
.' Click to go back to the Steamwheedle Menu |confirm |next "Steam_Menu2" 
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
.' Gain Exalted reputation with Everlook |condition rep('Everlook')==Exalted |tip                  
.' Click to go back to the Steamwheedle Menu |confirm |next "Steam_Menu2"
|next "Steam_Menu2"
step
label	"end"
.' Congratulations, you are Exalted with the Steamwheedle Cartel!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\Ravenholdt",[[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\Darkmoon Faire",[[
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
.' Reach Neutral with Darkmoone Faire |condition rep('Darkmoon Faire')>=Neutral |only if rep('Darkmoon Faire')>=Neutral and rep('Darkmoon Faire')<=Neutral
.' Reach Friendly with Darkmoone Faire |condition rep('Darkmoon Faire')>=Friendly |only if rep('Darkmoon Faire')>=Friendly and rep('Darkmoon Faire')<=Friendly
.' Reach Honored with Darkmoone Faire |condition rep('Darkmoon Faire')>=Honored |only if rep('Darkmoon Faire')>=Honored and rep('Darkmoon Faire')<=Honored
.' Reach Revered with Darkmoone Faire |condition rep('Darkmoon Faire')>=Revered |only if rep('Darkmoon Faire')>=Revered and rep('Darkmoon Faire')<=Revered
.' Reach Exalted with Darkmoone Faire |condition rep('Darkmoon Faire')>=Exalted
|next "end"
step
label	"end"
' Congratulations, you have reached Exalted with The Darkmoon Faire! |condition rep('Darkmoon Faire')>=Exalted |only if rep('Darkmoon Faire')>=Exalted
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\Argent Dawn",[[
description This Guide will help you get Reputation with The Argent Dawn
author support@zygorguides.com
#include "A_Eastern_Plaguelands_Argent_Dawn_Revered"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\Hydraxian Waterlords",[[
step
'This reputation can be earned by running the Molten Core raid.
'Molten Core is a 40 man raid and will require you to be higher level, bringing some friends is recommended.
|confirm
step
label start
'If you have never entered Molten Core before you will need to get your attunement to the instance. Click here. |next "attune" |confirm
'If you already have your attunement, click here. |next "noattune" |confirm
step
label attune
'Enter Blackrock Mountain here. |goto Searing Gorge 34.9,84.7 <5 |c
step
'Follow this chain down and follow the path all the way to the bottom of the platform, then cross a second chain. |goto Burning Steppes 21.8,24.6 <5 |c
step
goto Burning Steppes 18.2,24.9
.talk 14387
..accept 7848
step
'Enter this doorway |goto 18.6,25.1 <5 |c
step
'Follow the path around and enter Blackrock Depths here |goto Searing Gorge 26.9,72.5 <5 |c 
step
'Follow the path and click on the Shadowforge Gate to open it |goto Blackrock Depths 37.9,66.0 <5 |c
step
goto 55.4,32.4 |n
'Follow the path to this spot and jump into the lava |goto 55.4,32.4 |c |tip It will do 600 damage every few seconds so most high levels will be in no danger.		
step
'Swim through the lava to this point |goto Blackrock Depths/2 63.0,30.4 <5 |c
'If you are having trouble keeping your health up you can take breaks to heal at [Blackrock Depths/2 54.5,49.6] 
'and [Blackrock Depths/2 59.4,33.7]
step
'Follow this bridge across |goto Blackrock Depths/2 62.4,29.1 <5 |c
step	
goto Blackrock Depths/2 69.2,36.9
.click Core Fragment##5740 
.get 1 Core Fragment |q 7848/1	
step
'Enter Molten Core through the portal in front of you |goto Molten Core |noway |c
step
'Exit Molten Core through the portal behind you |goto Burning Steppes |noway |c
step
goto Burning Steppes 18.2,24.9
.talk 14387
..turnin 7848 
step
'Now you will be able to enter Molten Core by speaking with Lothos.
|confirm
step
label noattune
goto 18.2,24.9
.talk 14387
.' Ask Lothos to transport you to Molten Core |goto Molten Core |noway |c
step
'Kill every creature that is hostile in this instance in order to gain reputation. |tip You will have to clear this place many times to reach Exalted.
'Click here to go back to the beginning of the guide |next "start" |confirm
'Earn Exalted status with the Hydraxian Waterlords |condition rep('Hydraxian Waterlords')==Exalted |next "exalted" |tip You can only become Exalted by killing Golemagg the Incinerator or Ragnaros, the maximum rep you can get without these two dying is 20999/21000 Revered.
step
label exalted
'Congratulations, you are now Exalted with the Hydraxian Waterlords!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\Brood of Nozdormu",[[
step
'This reputation can be earned by running the Ahn'Qiraj raid.
'Ahn'Qiraj is a 40 man raid and will require you to be higher level, bringing some friends is recommended.
|confirm
step
label start
#include "uldum_port"
step
|fly Cenarion Hold
step
'Enter Ahn'Qiraj here |goto Ahn'Qiraj: The Fallen Kingdom 46.9,7.6 <5 |c
step
'Skipping to next step |condition rep('Brood of Nozdormu')>=Neutral |next "farm" |only if rep('Brood of Nozdormu')>Neutral
'Skipping to next step |condition rep('Brood of Nozdormu')<=Friendly |next "hun" |only if rep('Brood of Nozdormu')<Friendly
step
label hun	
.' You are currently _Hated_ with Brood of Nozdormu |only if rep('Brood of Nozdormu')==Hated
'Every enemy npc in this instance gives reputation and has a chance to drop Ancient Qiraji Artifacts. Collect as many of these as you can. Do not use them yet. |only if rep('Brood of Nozdormu')==Hated
'Bosses in this instance drop Qiraji Lord's Insignias. Hold on to these. |only if rep('Brood of Nozdormu')==Hated
.' You are currently _Hostile_ with Brood of Nozdormu |only if rep('Brood of Nozdormu')==Hostile
'Every enemy npc in this instance gives reputation and has a chance to drop Ancient Qiraji Artifacts. Collect as many of these as you can. Do not use them yet. |only if rep('Brood of Nozdormu')==Hostile
'Bosses in this instance drop Qiraji Lord's Insignias. Hold on to these. |only if rep('Brood of Nozdormu')==Hostile
.' You are currently _Unfriendly_ with Brood of Nozdormu |only if rep('Brood of Nozdormu')==Unfriendly 
'Every enemy npc in this instance gives reputation and has a chance to drop Ancient Qiraji Artifacts. Collect as many of these as you can. Do not use them yet. |only if rep('Brood of Nozdormu')==Unfriendly
'Bosses in this instance drop Qiraji Lord's Insignias. Hold on to these. |only if rep('Brood of Nozdormu')==Unfriendly 
.' You are currently _Neutral_ with Brood of Nozdormu |only if rep('Brood of Nozdormu')==Neutral
'Every enemy npc in this instance gives reputation and has a chance to drop Ancient Qiraji Artifacts. Collect as many of these as you can. Do not use them yet. |only if rep('Brood of Nozdormu')==Neutral
'Bosses in this instance drop Qiraji Lord's Insignias. Hold on to these. |only if rep('Brood of Nozdormu')==Neutral
'When you have _2999/3000_ Neutral reputation: |only if rep('Brood of Nozdormu')<Friendly
.' Click here to turn in Ancient Qiraji Artifacts |next "turninmob" |confirm
.' Click here to turn in Qiraji Lord's Insignias |next "turninboss" |confirm
step
label turninmob
goto Ahn'Qiraj 59.6,68.6
'Use Ancient Qiraji Artifact |use Ancient Qiraji Artifact##21230
..accept 8784 |n
.talk 15502
..turnin 8784 |n
.' Repeat this step until you run out of Ancient Qiraji Artifacts.
.' Click here to turn in Qiraji Lord's Insignias |next "turninboss" |confirm
.' Click here to go back to farming. |next "farm" |confirm
'Earn Exalted status with the Brood of Nozdormu |condition rep('Brood of Nozdormu')==Exalted |next "exalted"
step
label turninboss
goto Ahn'Qiraj 58.8,68.6
.talk 15503
..accept 8579 |only if not completedq(8579) |n
..accept 8595 |only if completedq(8579) |n
..turnin 8579 |only if not completedq(8579) |n
..turnin 8595 |only if completedq(8579) |n
.' Repeat this step until you run out of Qiraji Lord's Insignias.
.' Click here to turn in Ancient Qiraji Artifacts |next "turninmob" |confirm
.' Click here to go back to farming. |next "farm" |confirm
'Earn Exalted status with the Brood of Nozdormu |condition rep('Brood of Nozdormu')==Exalted |next "exalted"
step 
label farm
.' You are currently _Friendly_ with Brood of Nozdormu |only if rep('Brood of Nozdormu')==Friendly
.' You are currently _Honored_ with Brood of Nozdormu |only if rep('Brood of Nozdormu')==Honored
.' You are currently _Revered_ with Brood of Nozdormu |only if rep('Brood of Nozdormu')==Revered
'Every enemy npc in this instance gives reputation and has a chance to drop Ancient Qiraji Artifacts. Collect as many of these as you can.
'Bosses in this instance drop Qiraji Lord's Insignias.
.' Click here to turn in Ancient Qiraji Artifacts |next "turninmob" |confirm
.' Click here to turn in Qiraji Lord's Insignias |next "turninboss" |confirm
'Earn Exalted status with the Brood of Nozdormu |condition rep('Brood of Nozdormu')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are Exalted with the Brood of Nozdormu!'
]])	
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\Thorium Brotherhood",[[
step
'The Thorium Brotherhood reputation is gained through questing in Searing Gorge and Burning Steppes. It is also gained by turning certain items in to Lokhtos Darkbargainer, most of these items come from Molten Core. See our Hydraxian Waterlords guide for more information on Molten Core.
'Click here to start questing in Searing Gorge |next "searing" |confirm
'Click here to start questing in Burning Steppes |next "burning" |confirm
'Click here to turn in items to Lokhtos Darkbargainer |next "turnin" |confirm
step
label searing
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
.kill 10 Dark Iron Geologist or Watchman |q 27960/1
.from Tempered War Golem##5853+
.get 15 Tempered Flywheel |q 27956/1
' |from Dark Geologist##5839, Dark Iron Watchman##8637
step
goto 68.5,53.3
.talk 47267
..turnin 27960
..accept 27961
..accept 27962
step
ding 47
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
.clicknpc Lunk##47299
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
.from Margol the Rager##5833 
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
goto 37.9,30.9
.talk 2941
.fpath Thorium Point
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
.' Use your Furnace Flasks on Blazing Elementals, Magma Elementals and Inferno Elementals while they are alive |use Furnace Flasks##62826
.get 10 Filled Furnace Flask |q 27981/1
.' You can also find Rasha'krak, along with more elementals at the following locations:
.' At [Searing Gorge,39.3,40.5]
.' At [Searing Gorge,31.6,43.1]
|modelnpc Inferno Elemental##5852
|modelnpc Blazing Elemental##5850
|modelnpc Magma Elemental##5855
step
goto 29.8,42.0
.kill 9 Lava Spider |q 27980/1
' |from Greater Lava Spider##5858+
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
ding 48
step
goto 38.1,27.0
.' Go to the top of the tower
.talk 14625
..turnin 28099
step
goto 24.3,33.0 |n
.' Follow the path up |goto 24.3,33.0,0.5 |noway |c
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
.click Twilight's Hammer Crate##10106+
.get Prayer to Elune |q 27985/1
.' Click the Quest Complete box that displays on the right side of the screen under your minimap
..turnin 27985
step
goto 22.0,36.4 |n
.' Enter the cave |goto 22.0,36.4,0.5 |noway |c
step
goto 17.6,42.4
.' Follow the path immediately to the left after you enter the cave
.from Minister Kiyuubi##47309
.collect Kiyuubi's Spherule##62825 |q 27979
step
goto 14.6,36.2
.from Minister Letherio##47310
.collect 1 Letherio's Spherule##62823 |n
.' Use Letherio's Spherule |use Letherio's Spherule##62823
.get Twilight Tripetricine |q 27979/1
step
'All around inside this cave:
.from Twilight Dark Shaman##5860+, Twilight Geomancer##5862+, Twilight Fire Guard##5861+
.get 20 Twilight Collar |q 27982/1
step
goto 22.0,36.4 |n
.' Leave the cave |goto 22.0,36.4,0.5 |noway |c
step
goto 31.9,33.3 |n
.' Follow the path up |goto 31.9,33.3,0.5 |noway |c
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
.talk 2941
.' Fly to Iron Summit, Searing Gorge |goto 41.0,68.8 <5 |noway |c
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
goto 41.1,68.8
.talk 47927
.' Fly to Thorium Point, Searing Gorge |goto 37.9,30.4,0.5 |noway |c
step
goto 38.1,27.0
.talk 14625
..turnin 28035
..accept 28052
step
goto 37.9,30.9
.talk 2941
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
.talk 5843 |tip Talk to them as you walk through The Slag Pit and do other quests.
..' Tell them to come and get out of here
.' Free or kill 12 Slave Workers |q 28055/1
.kill 10 Dark Iron Taskmaster or Slaver |q 28054/1
' |from Dark Iron Slaver##5844+, Dark Iron Taskmaster##5846+
step
goto 43.8,28.7
.talk 14628
..turnin 28054
..turnin 28055
..turnin 28056
..accept 28057
step
ding 49
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
..' Tell him "Let's take out Maltorius and Arkkus!"
.kill Overseer Maltorius##14621 |q 28060/1
.kill Twilight-Lord Arkkus##47460 |q 28060/2
step
goto 47.7,42.0 |n
.' Jump off the bridge to the path below
|confirm
step
goto 50.0,39.0
.talk 14625
..turnin 28060
..accept 28062
..accept 28061
..accept 28514
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
goto 41.1,68.8
.talk 47927
.' Fly to Thorium Point, Searing Gorge |goto 37.9,30.4,0.5 |noway |c
step
goto 39.0,26.0
.talk 47429
..accept 28053 |instant
step
goto 38.1,27.0
.talk 14625
..turnin 28064
step
|fly Flamestar Post
step
label burning
goto Burning Steppes 17.3,52.1
.talk 47811
..' You will only be able to accept 1 of these 2 quests |tip Which quest is offered to you depends on whether or not you completed a quest line in Redridge Mountains at a lower level.
..accept 28416 |or
..accept 28174 |or
step
goto 17.0,51.3
.talk 47779
..turnin 28514
..accept 28172
step
goto 17.5,60.5
.clicknpc Fettered Green Whelpling##47820
.' Free a Green Whelpling |q 28172/2
step
goto 19.2,61.6
.clicknpc Fettered Blue Whelpling##47821
.' Free a Blue Whelpling |q 28172/3
step
goto 17.8,61.4 |n
.' Follow the path up |goto 17.8,61.4,0.5 |noway |c
step
goto 15.1,69.7
.clicknpc Fettered Bronze Whelpling##47822
.' Free a Bronze Whelpling |q 28172/4
step
goto 14.2,66.8
.clicknpc Fettered Red Whelpling##47814
.' Free a Red Whelpling |q 28172/1
step
goto 16.0,66.0
.kill 5 Blackrock Whelper##47782+ |q 28416/1
.kill 5 Flamescale Broodling##7049+ |q 28416/2
step
goto 16.0,66.0
.kill 5 Blackrock Whelper##47782+ |q 28174/1
.kill 5 Flamescale Broodling##7049+ |q 28174/2
step
goto 17.3,52.1
.talk 47811
..' You will only be able to turn in 1 of the 2 Burning Vengeance quests, depending on which one he gave you
..turnin 28416
..turnin 28174
..accept 28177
..accept 28178
..accept 28179
step
goto 17.0,51.3
.talk 47779
..turnin 28172
step
goto 15.5,45.0
.click Obsidian-Flecked Mud##20
.get 9 Obsidian-Flecked Mud |q 28179/1
step
goto 11.8,47.7
.from Ember Worg##9690+
.get 11 Ember Worg Hide |q 28178/1
.from Venomtip Scorpid##9691+
.get 5 Razor-Sharp Scorpid Barb |q 28177/1
step
goto 17.3,52.1
.talk 47811
..turnin 28177
..turnin 28178
..turnin 28179
..accept 28180
step
goto 8.4,35.8
.talk 14437
..turnin 28180
..accept 28181
..accept 28182
step
goto 9.9,29.7
.kill Ner'gosh the Shadow##47805 |q 28182/1
step
goto 5.4,32.0
.click Slumber Sand##6483
.get Slumber Sand |q 28181/2
step
goto 5.2,30.9
.click Fel Slider Cider##334
.get Fel Slider Cider |q 28181/3
step
goto 6.8,31.8
.from Blackrock Warlock##7028+
.get Clear Glass Orb |q 28181/1
step
goto 8.4,35.8
.talk 14437
..turnin 28181
..turnin 28182
..accept 28183
step
ding 50
step
goto 17.3,52.1
.talk 47811
..turnin 28183
..accept 28184
step
goto 31.5,52.1
.kill 15 Blackrock troop |q 28184/1
' |from Blackrock Slayer##7027+, Smolderthorn Shaman##48118+, Firegut Reaver##48120+, Blackrock Sorcerer##7026+
step
goto 46.8,44.1
.talk 48033
..turnin 28184
..accept 28225
..accept 28226
step
goto 46.4,46.0
.talk 48109
..accept 28254
step
goto 45.5,46.4
.talk 48001
..turnin 28254
..accept 28202 |or
..accept 28203 |or
..accept 28204 |or
..accept 28205 |or
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 2 Hides
..' Take 4 Handfuls of Mud
..' Take 2 Spools of Thread
.' Click to proceed. |confirm
only Human
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 2 Hides
..' Take 4 Handfuls of Mud
..' Take 2 Spools of Thread
.' Click to proceed. |confirm
only Dwarf
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 1 Hide
..' Take 3 Handfuls of Mud
..' Take 4 Spools of Thread
.' Click to proceed. |confirm
only Gnome
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 4 Hides
..' Take 1 Handful of Mud
..' Take 3 Spools of Thread
.' Click to proceed. |confirm
only Draenei
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 4 Hides
..' Take 1 Handful of Mud
..' Take 3 Spools of Thread
.' Click to proceed. |confirm
only Worgen
step
goto 45.6,46.3
.click Tailor's Table##7209
..' Investigate the hides.
..' Take 3 Hides
..' Take 2 Handfuls of Mud
..' Take 1 Spool of Thread
.' Click to proceed. |confirm
only NightElf
step
goto 45.5,46.4
.talk 48001
..' Tell him you brought him some hides, mud, and thread
.' Create the Perfect Costume |q 28202/1
.' Create the Perfect Costume |q 28203/1
.' Create the Perfect Costume |q 28204/1
.' Create the Perfect Costume |q 28205/1
step
goto 46.4,46.0
.talk 48109
..turnin 28202
..turnin 28203
..turnin 28204
..turnin 28205
step
'From this point you will need to turn in items to Lokhtos Darkbargainer. He is found in Blackrock Depths.
'Click here to for the path to him. |next "turnin" |confirm
step
label turnin
'Enter Blackrock Mountain here. |goto Searing Gorge 34.9,84.7 <5 |c
step
'Follow this chain down and follow the path all the way to the bottom of the platform, then cross a second chain. |goto Burning Steppes 21.8,24.6 <5 |c
step
'Enter this doorway |goto 18.6,25.1 <5 |c
step
'Follow the path around and enter Blackrock Depths here |goto Searing Gorge 26.9,72.5 <5 |c 
step
'Follow the path and click on the Shadowforge Gate to open it |goto Blackrock Depths 37.9,66.0 <5 |c
step
'Turn right and follow the path through this doorway |goto 60.4,25.4 <5 |c
step
'Follow the ramp up and enter Shadowforge City |goto Blackrock Depths/2 59.9,60.0 <5 |c 
step
'Enter this doorway |goto Blackrock Depths 54.9,35.9 <5 |c
step
'Go up the staircase and follow the path |goto Blackrock Depths/2 56.3,90.0 <5 |c
step
'Circle around the Ring of the Law and follow the path down |goto Blackrock Depths 45.9,63.1 <5 |c
step
'Go down the steps and click the Shadowforge Lock. |goto Blackrock Depths/2 41.4,88.4 <5 |n
|confirm
step
'Go back up the staircase and follow the path |goto Blackrock Depths/2 42.3,73.2 <5 |c
step
'Go down these steps |goto 36.5,77.4 <5 |c 
step
'Follow the path right to The Grim Guzzler |goto 47.4,64.7 <5 |c 
step
'Go up the staircase and around to Lukhtos Darkbargainer |goto 50.3,58.5 <5 |c
step
goto 50.3,58.5
.talk 12944 |tip All of these quests are repeatable and all of the items can be farmed in Molten Core. |n
..accept 6642 |tip Dark Iron Ore can be mined inside Molten Core, requires 175 mining. |n
..accept 6643 |tip Fiery Cores are dropped by the Fire Elementals in Molten Core, also by Molten Destroyers. |n
..accept 6644 |tip Lava Cores are dropped by the Earthen Elementals in Molten Core, also by the Molten Giants. |n
..accept 6645 |tip Core Leather can be skinned from the various Core Hounds within Molten Core. |n
..accept 6646 |tip These are dropped only by Molten Destroyers, but they can be mined from Dark Iron Deposits. |n
'Earn Exalted status with the Thorium Brotherhood |condition rep('Thorium Brotherhood')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are Exalted with the Thorium Brotherhood!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\Bloodsail Buccaneers",[[
step
'The Bloodsail Buccaneer reputation requires a lot of farming.
'Click here if you have completed all of The Cape of Stranglethorn quests. |next "bruiser" |confirm
'Click here if you have not completed all of The Cape of Stranglethron quests. |next "rum" |confirm
step
label bruiser
'If you are going to attempt to get exalted with the Bloodsail Buccaneers, our suggestion is that you are max level, have high level gear, and have friends with you. 
'The quickest way to gain reputation with the Bloodsail Buccaneers is to farm Booty Bay Bruisers. 
'Bruisers have proven to be incredibly difficult to kill. They have a variety of knockbacks and nets, they have high damage and health, and they will call for help so you can quickly find yourself overwhelmed.
|confirm
step
|fly Booty Bay
step
'In order to farm reputation you must be "At War" with Booty Bay. Do this by hitting _[U]_ and finding the Booty Bay reputation among your list. Click on it and then check the box next to "At War" on the new window that appears.
.from Booty Bay Bruiser##4624
'Earn Exalted status with the Bloodsail Buccaneers |condition rep('Bloodsail Buccaneers')==Exalted |next "exalted"
step
label rum
|fly Booty Bay
step
goto 42.1,73.4
.talk 2501
..accept 26593
step
goto 42.4,67.9 |n
.' Leave Booty Bay |goto 42.4,67.9,0.5 |noway |c
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
goto 42.1,73.4
.talk 2501
..turnin 26594
..accept 26595
step
goto 42.4,67.9 |n
.' Leave Booty Bay |goto 42.4,67.9,0.5 |noway |c
step
goto 56.8,53.6
.from Freewheelin' Juntz Fitztittle##43376
.get Fitztittle's Ratcheting Torque Wrench |q 26595/2
step
goto 59.5,49.2
.from Maury "Club Foot" Wilkins##2535
.get Maury's Clubbed Foot |q 26595/1
step
goto 55.8,52.0
'Talk to Ephram "Midriff" Moonfall
.' Tell him to pay up
.from Ephram "Midriff" Moonfall##43377
.get Ephram's Jeweled Mirror |q 26595/3
step
goto 45.0,65.9 |n
.' Enter Booty Bay |goto 45.0,65.9,0.5 |noway |c
step
goto 42.1,73.4
.talk 2501
..turnin 26595
step
goto 42.6,72.0
.talk 2490
..accept 26609
step
goto 42.4,67.9 |n
.' Leave Booty Bay |goto 42.4,67.9,0.5 |noway |c
step
goto 41.3,61.2
.click Bloodsail Correspondence##183
..turnin 26609
..accept 26610 
step
goto 45.0,65.9 |n
.' Enter Booty Bay |goto 45.0,65.9,0.5 |noway |c
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
goto 42.4,67.9 |n
.' Leave Booty Bay |goto 42.4,67.9,0.5 |noway |c	
step
goto 45.0,79.5
.click Bloodsail Charts##222+
.get Bloodsail Charts |q 26612/3
.click Bloodsail Orders##220+ |tip It looks like a white scroll.
.get Bloodsail Orders |q 26612/4
.' The Bloodsail Orders and Charts can also spawn at the following locations:
.' At [42.0,83.2]
.' At [40.9,82.8]
.kill 8 Bloodsail Sea Dog##1565+ |q 26612/1
.kill 8 Bloodsail Elder Magus##1653+ |q 26612/2
step
goto 45.0,65.9 |n
.' Enter Booty Bay |goto 45.0,65.9,0.5 |noway |c
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
..' Tell him you need an extra-large pirate hat. Seahorn's orders.
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
.clicknpc Deck Stain##43511+
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
ding 35
step
goto 46.3,96.0
.click Bloodsail Cannonball##153+
.get 6 Bloodsail Cannonball |q 26635/1
step
goto 52.5,87.9
.click Lime Crate##2350+
.get 5 Bushel of Limes |q 26634/1
.' You can find more Lime Crates around [The Cape of Stranglethorn,56.6,80.0]
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
'Click the red arrow on your hotbar to stop using Ol' Blasty |outvehicle |q 26647
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
.' Use the abilities on your hotbar to shoot at the Venture Co. Oil Workers |tip They look like goblins working on the metal machines.
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
.click Captain Stillwater's Charts##222
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
.click Cannonball Crate##9651+
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
goto 45.0,65.9 |n
.' Enter Booty Bay |goto 45.0,65.9,0.5 |noway |c
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
'It is very important that you do not turn this quest in. As long as you have it in your log you will be in the correct phase to farm Bloodsail Buccaneer reputation on weaker units.
|confirm
step
'In order to farm reputation you must be "At War" with Booty Bay. Do this by hitting _[U]_ and finding the Booty Bay reputation among your list. Click on it and then check the box next to "At War" on the new window that appears.
'Kill any npc with a Booty Bay I.D. in their name, most will award you reputation. |tip The following NPCs give more reputation than the others in Booty Bay: Baron Revilgaz, Viznik and Rickle Goldgrubber, Gizzlowe, and Wharfmaster Lozgil.
'Earn Exalted status with the Bloodsail Buccaneers |condition rep('Bloodsail Buccaneers')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are Exalted with the Bloodsail Buccaneers!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Azeroth\\Wintersaber Trainers",[[
step
'This reputation will take _20 days_ to get to Exalted.
#include ruttheranvillage
step
|fly Everlook
step
goto 46.6,17.6
.talk 10618
..accept 29032
step
goto 46.6,17.6
.clicknpc Frostsaber Cub##51681
.get 8 Frostsaber Cub##68638 |q 29032/1
step
goto 46.6,17.6
.talk 10618
..turnin 29032
..accept 29034
step
label "dailies"
'Go to _Winterspring_ |goto Winterspring |noway |c
step
title +Winterspring Frostsaber Dailies
|use Winterspring Cub##68646
.talk 51677
..accept 29040 |or |only NightElf,Gnome,Draenei
..accept 29051 |or |only Dwarf,Worgen
..accept 29035 |or |only NightElf,Gnome,Draenei
..accept 29052 |or |only Dwarf,Worgen
..accept 29038 |or |only NightElf,Gnome,Draenei
..accept 29039 |or |only Dwarf,Worgen
..accept 29037 |or |only NightElf,Gnome,Draenei
..accept 29053 |or |only Dwarf,Worgen
step
goto 66.1,55.9
.from Ice Thistle Yeti##7458+
.collect 1 Tough Yeti Hide##68663 |q 29040
|only NightElf,Gnome,Draenei
|onlyif havequest(29040)
step
goto 57.5,75.7
.from Berserk Owlbeast##7454+, Crazed Owlbeast##7452+
.collect 5 Wildkin Feather##68662 |q 29040
|only NightElf,Gnome,Draenei
|only if havequest(29040)
step
|use Winterspring Cub##68646
'Use the _Tough Yeti Hides_ in your bag to make the _Cat Toy_ |use Tough Yeti Hide##68663
.' Use the Winterspring Cat Toy to play with your Winterspring Cub |use Winterspring Cat Toy##68668
.' Try out Winterspring Cat Toy |q 29040/1
|only NightElf,Gnome,Draenei
|only if havequest(29040)
step
goto 66.1,55.9
.from Ice Thistle Yeti##7458+
.collect 1 Tough Yeti Hide##68663 |q 29051
|only Dwarf,Worgen
|only if havequest(29051)
step
goto 57.5,75.7
.from Berserk Owlbeast##7454+, Crazed Owlbeast##7452+
.collect 5 Wildkin Feather##68662 |q 29051
|only Dwarf,Worgen
|only if havequest(29051)
step
|use Winterspring Cub##68646
'Use the _Tough Yeti Hide_ in your bag to make the _Cat Toy_ |use Tough Yeti Hide##68663
.' Use the Winterspring Cat Toy to play with your Winterspring Cub |use Winterspring Cat Toy##68668
.' Try out Winterspring Cat Toy |q 29051/1
|only Dwarf,Worgen
|only if havequest(29051)
step
goto Winterspring,57.7,39.6
.from Shardtooth Mauler##7443+
.collect 6 Shardtooth Meat##12622 |q 29035
|only NightElf,Gnome,Draenei
|only if havequest(29035)
step
|use Winterspring Cub##68646
.' Feed your cub |use Shardtooth Meat##12622
.' Feed Shardtooth Meat to Cub |q 29035/1
|only NightElf,Gnome,Draenei
|only if havequest(29035)
step
goto Winterspring,57.7,39.6
.from Shardtooth Mauler##7443+
.collect 6 Shardtooth Meat##12622 |q 29052
|only Dwarf,Worgen
|only if havequest(29052)
step
|use Winterspring Cub##68646
.' Feed your cub |use Shardtooth Meat##12622
.' Feed Shardtooth Meat to Cub |q 29052/1
|only Dwarf,Worgen
|only if havequest(29052)
step
goto 53.5,27.5
|use Winterspring Cub##68646
.' Bring your _cub_ next to the _snow mounds_ around this area |tip They look like white snow mounds that are glittering
.' Hunting Practice |q 29038/1
|only NightElf,Gnome,Draenei
'|model Snow-Covered Burrow##5333
|only if havequest(29038)
step
goto 53.5,27.5
|use Winterspring Cub##68646
.' Bring your _cub_ next to the _snow mounds_ around this area |tip They look like white snow mounds that are glittering
.' Hunting Practice |q 29039/1
|only Dwarf,Worgen
'|model Snow-Covered Burrow##5333
|only if havequest(29039)
step
goto 67.0,46.0
.click Smoked Meat##409
.collect 6 Smoked Meat##68645 |q 29037
|only NightElf,Gnome,Draenei
|only if havequest(29037)
step
|use Winterspring Cub##68646
.' _Feed_ your _cub_ |use Smoked Meat##68645 
.' _Feed_ Winterspring Cub _Smoked Meat_ |q 29037/1
|only NightElf,Gnome,Draenei
|only if havequest(29037)
step
goto 67.0,46.0
.click Smoked Meat##409
.collect 6 Smoked Meat##68645 |q 29053
|only Dwarf,Worgen
|only if havequest(29053)
step
|use Winterspring Cub##68646
.' _Feed_ your _cub_ |use Smoked Meat##68645 
.' _Feed_ Winterspring Cub _Smoked Meat_ |q 29053/1
|only Dwarf,Worgen
|only if havequest(29053)
step
|use Winterspring Cub##68646
.talk 51677
..turnin 29040 |or |only NightElf,Gnome,Draenei |only if havequest(29040)
..turnin 29051 |or |only Dwarf,Worgen |only if havequest(29051)
..turnin 29035 |or |only NightElf,Gnome,Draenei |only if havequest(29035)
..turnin 29052 |or |only Dwarf,Worgen |only if havequest(29052)
..turnin 29038 |or |only NightElf,Gnome,Draenei |only if havequest(29038)
..turnin 29039 |or |only Dwarf,Worgen |only if havequest(29039)
..turnin 29037 |or |only NightElf,Gnome,Draenei |only if havequest(29037)
..turnin 29053 |or |only Dwarf,Worgen |only if havequest(29053)
.' _Click here_ to return to the _ beginning_ of the _daily quests_ |script ZGV:GotoStep("dailies") 
.get 20 Cub Whisker##68644 |q 29034/1
step
'You can either _buy_ these _items from_ the _Auction House_ or _farm_ them:
.collect 20 Runecloth##14047
.collect 20 Rugged Leather##8170
step
goto 46.6,17.6
.talk 10618
..turnin 29034
'Earn Exalted status with the Wintersaber Trainers |condition rep('Wintersaber Trainers')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are Exalted with the Wintersaber Trainers!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Sporeggar Faction",[[
author support@zygorguides.com		
#include "A_Sporeggar_Faction"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Kurenai Faction",[[
description This Guide will help you reach Exalted status with the Kurenai Faction
author support@zygorguides.com
#include "A_Kurenai_Faction"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Cenarion Expedition Faction",[[
description This guide will take you through the quests needed to become Exalted with Cenarion Expedition
author support@zygorguides.com
#include "A_Cenarion_Expedition_Faction"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Sha'tari Skyguard\\Skyguard Faction Pre-Quests(Do-First)",[[
description This guide will take you through the quests needed to become Exalted with the Shatari Skyguard
author support@zygorguides.com
step
#include "darkportal"
step
|fly Shattrath
step
goto Shattrath City,64.3,42.3
.talk 23449
..accept 11096
step
|fly Allerian Stronghold
step
goto Terokkar Forest,21.8,16.1
.from 20 Gordunni Back-Breaker##22143+, Gordunni Soulreaper##23022+, Gordunni Head-Splitter##22148+, Gordunni Elementalist##22144+ |q 11096/1
.' You can find more around here [24.4,8.9]
step
goto Shattrath City,64.3,42.3
.talk 23449
..turnin 11096
..accept 11098
step
|fly Allerian Stronghold
step
goto Terokkar Forest,64.5,66.7
.talk 23048
..turnin 11098
step
goto 63.5,65.8
.talk 23415
..accept 11093
step
goto 64.0,66.9
.talk 23042
..accept 11004
step
goto 61.4,81.8
.' Use your Nether Ray Cage |use Nether Ray Cage##32834 |tip Keep your Nether Ray out while killing Warp Chasers and wait until it is done eating before you kill another.
.from Blackwind Warp Chaser##23219+
.' You can find more Warp Chasers here [64.5,84.4]
.get 10 Nether Ray Meal |q 11093/1
step
goto Terokkar Forest,61.6,75.3
.from Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
.get 6 Shadow Dust |q 11004/1
.' You can find more here [69.5,85.5]
.' here [73.2,87.9]
.' here [75.2,81.3]
.' And here [69.2,74.1]
step
goto Terokkar Forest,64.0,66.9
.talk 23042
..turnin 11004
step
goto 63.5,65.8
.talk 23415
..turnin 11093
step
goto 64.1,66.9
.talk 23038
..accept 11005
step
goto 69.7,74.7
.' Use the Elixer of Shadows in your bags |use Elixer of Shadows##32446
.' You will get a buff Elixir of Shadows |havebuff Interface\Icons\Spell_Shadow_DetectInvisibility
step
goto 70.1,74.5
.kill Talonpriest Zellek##23068 |q 11005/3
step
goto 69.3,78.1
.kill Talonpriest Ishaal##23066+ |q 11005/1
.collect Ishaal's Almanac##32523 |n |use Ishaal's Almanac##32523
..accept 11021
step
goto 69.8,81.8
.kill Talonpriest Skizzik##23067+ |q 11005/2
step
goto 64.1,66.9
.talk 23038
..turnin 11005
..turnin 11021
..accept 11024
step
|fly Shattrath
step
goto 52.5,21.0
.talk 22292
..turnin 11024
..accept 11028
step
|fly Allerian Stronghold
step
goto Terokkar Forest,64.1,66.9
.talk 18940
..turnin 11028
step
goto 64.2,66.9
.talk 23306
..accept 11056
step
goto 74.8,80.1
.click Hazzik's Package##6396
.get Hazzik's Package |q 11056/1
step
goto 64.3,66.9
.talk 23306
..turnin 11056
..accept 11029
step
goto 66.2,77.5
.' Use the Shabby Arakkoa Disguise in your bags |use Shabby Arakkoa Disguise##32741
.' Wear the Shabby Arakkoa Disguise |havebuff Interface\Icons\INV_Misc_Birdbeck_01
step
  goto 67.0,79.7
.talk 23363
.buy Adversarial Bloodlines##32742 |q 11029
step
goto 64.3,66.9
.talk 23306
..turnin 11029
..accept 11885
step
goto Terokkar Forest,61.6,75.3
.from Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
.collect 12 Shadow Dust##32388 |q 11885 |future
.' You can find more here [69.5,85.5]
.' here [73.2,87.9]
.' here [75.2,81.3]
.' And here [69.2,74.1]
step
goto 64.0,66.9
.talk 23042
..accept 11006 |instant
..collect 2 Elixir of Shadows##32446+ |q 11885 |future
step
' This next quest is meant to be a _3 person_ quest. Make sure that you are either high level, or that you have a group to continue. 
|confirm always
step
.' Use the Elixer of Shadows in your bags |use Elixer of Shadows##32446
.' You will get a buff Elixir of Shadows |havebuff Interface\Icons\Spell_Shadow_DetectInvisibility
step
goto Terokkar Forest,61.6,75.3
.from Time-Lost Skettis High Priest##21787+
.from Time-Lost Skettis Reaver##21651+
.from Time-Lost Skettis Worshipper##21763+
..collect 40 Time-Lost Scroll##32620+
.' You can find more here [69.5,85.5]
.' here [73.2,87.9]
.' here [75.2,81.3]
.' And here [69.2,74.1]
step
goto 69.7,74.7
.click Skull Pile##6393 |tip This will use 10 Time-Lost Scrolls
.' <Call forth Darkscreecher Akkarai.>
.' <Call forth Karrog.>
.' <Call forth Gezzarak the Huntress.>
.' <Call forth Vakkiz the Windrager.>
.kill Darkscreecher Akkarai##23161 |q 11885/1
.collect Akkarai's Talons##32715
.kill Karrog##23165 |q 11885/2
.collect Karrog's Spine##32717
.kill Gezzarak the Huntress##23163 |q 11885/3
.collect Gezzarak's Claws##32716
.kill Vakkiz the Windrager##23204 |q 11885/4
.collect Vakkiz's Scale##32718
.'You can find more skull piles here: [70.1,79.5]
.' Here [73.5,80.7]
.' Here [70.2,83.3]
step
goto 64.2,66.9
.talk 23306
..turnin 11885
..accept 11074 |instant
step
goto 64.1,66.9
.talk 23038
  		..accept 11073
step
goto 66.2,77.5
.click Skull Pile##6393 |tip This will use 1 Time-Lost Offering.
.' <Call forth Terokk.>
.from Terokk##21838 |tip When he gets a shield and becomes immune, walk him over the Blue Smoke. A meteor will come down and break his shield.
.' Killing Terokk will gain you 550 reputation with Ska'tari Skyguard
|confirm always
step
goto 64.1,66.9
.talk 23038
  		..turnin 11073
step
' This is the end of the Pre-quests. You can do the Daily Quests and you should be friendly, or close to it by now. 
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Sha'tari Skyguard\\Skyguard Faction Dailies",[[
description This guide will take you through the quests needed to become Exalted with the Shatari Skyguard
author support@zygorguides.com
step
label	"menu"
'You can do a couple dailys and also grind for reputation with the _Sha'tari Skyguard_
.' Click here to do the Dailys and then grind |confirm always |next "dailies" |or
.' or
.' Click here to grind for reputation |confirm always |next "grind" |or 
step
label	"dailies"
goto Terokkar Forest,64.5,66.7
.talk 23048
..accept 11008 |daily
step
goto 63.1,80.0
.' Fly to the top of this tree and use your Blasting charges to destroy _Monstrous Kaliri Eggs_
.' Use the Skyguard Blasting Charges in your bags |use Skyguard Blasting Charges##32406
.Destroy 20 Monstrous Kaliri Eggs |q 11008/1 
.' You can find more eggs here:  goto [61.3,79.9]
.' Here [67.5,79.3]
.' Here [68.0,85.6]
.' and here [70.3,84.5]
'|model 378
step
goto 64.5,66.7
.talk 23048
..turnin 11008 |daily
step
goto 61.0,75.6
.talk 23383
..accept 11085 |daily
.' He can also be found here: [68.4,74.0]
.' and here: [75.0,86.5]
step
.' Escort the Skyguard Prisoner to the bottom of the bridge |tip Help him kill any mobs on the way down.
.' Rescue the Skyguard Prisoner. |q 11085/1 |daily
'|modelnpc 23383
step
goto 64.5,66.7
.talk 23048
..turnin 11085
step
label	"grind"
goto Terokkar Forest,61.6,75.3
.from Skettis Soulcaller##21911+, Skettis Windwalker##21649+, Skettis Wing Guard##21644+, Skettis Talonite##21650+
.collect 12 Shadow Dust##32388 
.' You can find more here [69.5,85.5]
.' here [73.2,87.9]
.' here [75.2,81.3]
.' And here [69.2,74.1]
step
goto 64.0,66.9
.talk 23042
..accept 11006 |instant |n
..collect 2 Elixir of Shadows##32446
step
.' Use the Elixer of Shadows in your bags |use Elixer of Shadows##32446
.' You will get a buff Elixir of Shadows |havebuff Interface\Icons\Spell_Shadow_DetectInvisibility
step
goto Terokkar Forest,61.6,75.3
.from Time-Lost Skettis High Priest##21787+
.from Time-Lost Skettis Reaver##21651+
.from Time-Lost Skettis Worshipper##21763+
..collect 40 Time-Lost Scroll##32620+
.' You can find more here [69.5,85.5]
.' here [73.2,87.9]
.' here [75.2,81.3]
.' And here [69.2,74.1]
step
goto 69.7,74.7
.click Skull Pile##6393 |tip This will use 10 Time-Lost Scrolls
.' <Call forth Darkscreecher Akkarai.>
.' <Call forth Karrog.>
.' <Call forth Gezzarak the Huntress.>
.' <Call forth Vakkiz the Windrager.>
.from Darkscreecher Akkarai##23161
.collect Akkarai's Talons##32715
.from Karrog##23165
.collect Karrog's Spine##32717
.from Gezzarak the Huntress##23163
.collect Gezzarak's Claws##32716
.from Vakkiz the Windrager##23204
.collect Vakkiz's Scale##32718
.'You can find more skull piles here: [70.1,79.5]
.' Here [73.5,80.7]
.' Here [70.2,83.3]
step
goto Terokkar Forest,64.3,66.9
.talk 23306
..accept 11074 |instant |n
.collect Time-Lost Offering##32720
step
goto 66.2,77.5
.click Skull Pile##6393 |tip This will use 1 Time-Lost Offering.
.' <Call forth Terokk.>
.from Terokk##21838 |tip When he gets a shield and becomes immune, walk him over the Blue Smoke. A meteor will come down and break his shield.
.' Killing Terokk will gain you 550 reputation with Ska'tari Skyguard
|confirm always |next "menu"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Keepers of Time Faction",[[
description This guide will help you earn Exalted
description reputation with the Keepers of Time.
step
.' This faction largely relies on running certain instances repeatedly in order to gain reputation.
.' There are a few Daily Quests to look out for in Shattrath City.  However, they won't be available to you every day.
..' Click here to proceed. |confirm
step
.home Trade District
step
goto Stormwind City,49.0,87.3 |n
.' Click the swirling portal to Blasted Lands. |goto Blasted Lands |noway|c
step
goto Blasted Lands,55.0,54.0 |n
.' Go through the Dark Portal. |goto Hellfire Peninsula |noway|c
step
|fly Shattrath
step
goto Shattrath City,75.1,36.6
.talk 24369
.accept 11382 |daily |or
.accept 11378 |daily |or
..' Neither of the quests may be available. If that is the case, click here to proceed. |confirm
step
goto 75.5,37.3
.talk 24370
.accept 11383 |daily
..' This quest may not be available for the day.  If it isn't, click here to proceed. |confirm
step
goto Shattrath City,57.2,48.2
.' Click the Portal to Stormwind |goto Stormwind City,49.6,86.5,0.5 |noway |c
step
|fly Menethil Harbor
step
goto Wetlands,6.3,62.1 |n
' Ride the boat to Theramore. |goto Dustwallow Marsh
step
|fly Gadgetzan
step
goto Tanaris,65.3,49.7
.talk 20142
..accept 10279
.' Ask the Steward of Time to take you to the master's lair. |goto 59.1,53.9,0.5 |noway|c
step
goto 58.1,54.1
.talk 20130
.turnin 10279
..accept 10277
.' For this quest you can either follow the Custodian around or do something else while waiting.  This is a long process.
step
goto 58.1,54.1
.talk 20130
.turnin 10277
..accept 10282
step
goto 55.4,53.8
.' Enter the swirling portal to Old Hillsbrad Foothills. |goto Old Hillsbrad Foothills |noway|c
step
goto Old Hillsbrad Foothills,29.0,48.3
.talk 18723
.turnin 10282
..accept 10283
.' Tell him you need a pack of incendiary bombs.
.get 1 Pack of Incendiary Bombs##25853 |q 10283
step
goto 29.2,47.9
.talk 18725
..' Tell him you're ready to go to Durnholde Keep. |goto Old Hillsbrad Foothills,69.3,71.6 |noway|c
step
.' Go into Durnholde and cross the bridge. |goto 72.2,63.4 |noway|c
step
.' Go to this ledge and jump down. |goto Old Hillsbrad Foothills,77.2,61.6 |noway|c
step
goto 77.6,65.7
.click Barrel##334
.' It will be somewhere inside of this building.
.' Once you've clicked the barrel, click here to continue. |confirm
step
goto Old Hillsbrad Foothills,76.0,68.1
.click Barrel##334
.' It will be somewhere inside of this building.
.' Once you've clicked the barrel, click here to continue. |confirm
step
goto 74.6,68.4
.click Barrel##334
.' It will be somewhere inside of this building.
.' Once you've clicked the barrel, click here to continue. |confirm
step
goto 69.0,62.4
.click Barrel##334
.' It will be somewhere inside of this building.
.' Once you've clicked the barrel, click here to continue. |confirm
step
goto 68.6,58.7
.click Barrel##334
.' It will be somewhere inside of this building.
.' Once you've clicked the barrel, click here to continue. |confirm
.' Internment Lodges Set Ablaze. |q 10283/1
step
goto 75.6,64.7
.kill Lieutenant Drake##17848 |n
..' After you fight him, go up the stairs.
.' Click here to continue. |confirm
step
.' Go up the hill to the entrance of the barracks. |goto 73.2,61.4 |noway|c
step
goto Old Hillsbrad Foothills,74.6,58.4
.' Go down the steps here.
.' Click here once you're in the basement. |confirm
step
goto Old Hillsbrad Foothills,74.5,57.7
.talk 17876
.turnin 10283
..accept 10284
step
.' Tell him you're ready to get out of there.
..' Follow and Protect Thrall.
.kill Captain Skarloc##17862+ |n
.' After you kill Captain Skarloc, tell Thrall that Taretha cannot see him.
.' Click here to proceed. |confirm
step
.' Continue following and protecting Thrall until he stops again.
.' Tell him that you're ready.
.' Click here to continue. |confirm
step
.' Follow and protect Thrall once more.
.' Once you're upstairs with Taretha, ask her about the Strange Wizard.
.' Click here to continue. |confirm
step
.' Follow Thrall outside and protect him.
.kill Epoch Hunter##18096+ |n
..' Thrall's Destiny Fulfilled. |q 10284/1
step
goto Old Hillsbrad Foothills,50.2,30.9
.talk 18723
.turnin 10284
..accept 10285
.' Ask Erozion to take you back to your time. |goto Tanaris |noway|c
step
goto Tanaris,58.1,54.1
.talk 20130
.turnin 10285
..accept 10296
step
goto 57.1,62.3 |n
.' Enter the giant swirling portal. |goto The Black Morass|noway|c
step
goto The Black Morass,49.3,6.5
.talk 20201
.turnin 10296
..accept 10297
step
goto The Black Morass,49.2,71.1
.' Moving to this spot will activate the event.
..' You will need to move to the portals that appear nearby, and kill everything that comes out of it.
..' If Medivh is under attack you must kill whatever is attacking him.  If his shield drops to 0% you will fail.
...' Open the Dark Portal. |q 10297/1
step
goto 49.3,6.5
.talk 20201
.turnin 10297
..accept 10298
step
.' Leave the instance back to the Caverns of Time. |goto Tanaris |noway|c
step
goto Tanaris,58.1,54.1
.talk 20130
.turnin 10298
step
.' After turning in the series of quests you should almost be Revered.
..' Hearth to Stormwind.  |goto Stormwind City 60.4,75.3 <5 |use Hearthstone##6948 |noway |c
step
goto Orgrimmar,35.5,69.1 |n
.' Click the swirling portal to Blasted Lands. |goto Blasted Lands |noway|c
step
goto Blasted Lands,55.0,54.0 |n
.' Go through the Dark Portal. |goto Hellfire Peninsula |noway|c
step
|fly Shattrath
step
goto Shattrath City,75.1,36.6
.talk 24369
.turnin 11382 |daily |or
.turnin 11378 |daily |or
step
goto 75.5,37.3
.talk 24370
.turnin 11383 |daily
step
.' At this point you will need to grind The Black Morass and Old Hillsbrad Foothills to gain reputation.
.' If you're revered with the Keepers of time, you'll be able to talk to Zephyr in Shattrath who will teleport you to Tanaris.
.'Earn Exalted reputation with the Keepers of Time |condition rep('Keepers of Time')==Exalted |next "exalted" 
step
label exalted
'Congratulations, you are now Exalted with the Keepers of Time!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\The Consortium",[[
description This guide will help you earn Exalted
description reputation with The Consortium Faction.
step
.' From neutral, you have a few options as to how to earn your reputation.
.' The first way is running the Mana Tombs, although it will stop giving you reputation on Normal Mode as soon as you hit Honored.
.' The second way is by doing repeatable quests in Nagrand until you hit friendly.
..' Click here to continue. |confirm
step
goto Orgrimmar,35.5,69.1 |n
.' Click the swirling portal to Blasted Lands. |goto Blasted Lands |noway|c
step
goto Blasted Lands,55.0,54.0 |n
.' Go through the Dark Portal. |goto Hellfire Peninsula |noway|c
step
|fly Telaar
step
goto Nagrand,52.0,34.8
.talk 18335
.accept 9913
step
goto 50.8,40.1
.from Wild Elekk##18334+
.collect 3 Pair of Ivory Tusks##25463+ |future
..They are scattered all over Nagrand.  Don't confuse them with Bull Elekks.
' More can be found at the locations below:
.' [55.2,44.9]
.' [61.4,41.5]
.' [67.2,39.9]
.' [69.9,46.0]
step
goto Nagrand,31.8,56.8
.talk 18333
.accept 9914
step
goto 31.4,57.8
.talk 18265
.turnin 9913
..accept 9882
step
goto Nagrand,30.8,58.1
.talk 18276
.accept 9900
..accept 9925
step
.' Once you have accepted A Head Full of Ivory and Stealing from Thieves, you will want to complete both, but only turn one in.
.' Click here to confirm. |confirm
step
goto Nagrand,34.0,63.4
.from Vir'aani Raider##17149+
.get 10 Oshu'gun Crystal Fragment |q 9882/1
.' You can keep collecting more if you wish. You can turn them in multiples of ten.
step
goto Nagrand,36.2,65.5
.kill Voidspawn##17981+ |q 9925/1
.' More can be found around [37.9,66.1]
step
goto 42.6,73.6
.kill Gava'xi##18298 |q 9900/1
.' He patrols around [42.1,71.2], so you might find him there.
step
goto Nagrand,31.4,57.8
.talk 18265
.turnin 9882
step
goto 30.8,58.1
.talk 18276
.turnin 9900
.turnin 9925
.' Click here to farm Crystals. |next crystal |confirm |only if rep("The Consortium")<=Neutral
|next friend |only if rep("The Consortium")>=Friendly
step
label "crystal"
goto Nagrand,34.0,63.4
.from Vir'aani Raider##17149+
.get 10 Oshu'gun Crystal Fragment |q 9882/1
.' You can keep collecting more if you wish. You can turn them in multiples of ten.
step
goto Nagrand,31.4,57.8
.talk 18265
.accept 9883 |instant |n
.' Click here to go back to farming. |next "crystal" |confirm |only if rep("The Consortium")<=Neutral
|next friend |only if rep("The Consortium")>=Friendly
step
label "friend"
goto 31.8,56.8
.talk 18333
.turnin 9914
step
goto Nagrand,31.4,57.8
.talk 18265
..accept 9886 |instant
..accept 9893
step
goto Nagrand,49.9,56.7
.from Boulderfist Warrior##17136+, Boulderfist Mage##17137+
.get 10 Obsidian Warbeads |q 9893/1
.' You can collect more than 10.
.' Be sure to collected multiples of 10.
step
goto Nagrand,31.4,57.8
.talk 18265
.turnin 9893
step
label "bead_farm"
goto Nagrand,49.9,56.7
.from Boulderfist Warrior##17136+, Boulderfist Mage##17137+
.collect Obsidian Warbeads##25433
.' You can collect more than 10.
.' To get from Friendly to Honored, you will need 240 Obsidian Warbeads.
.' Be sure to collected multiples of 10.
step
goto Nagrand,31.4,57.8
.talk 18265
.accept 9892 |instant |n
.' Click here to continue farming Warbeads. |next bead_farm |confirm |only if rep("The Consortium")<=Friendly
|next nsquest |only if rep("The Consortium")>=Honored
step
label "nsquest"
|fly Area 52
step
goto 32.4,64.2
.talk 19880
..accept 10265
step
goto 42.4,72.8
.from Pentatharon##20215 |tip To the right as you enter the ruins, up on a small stage looking platform.
.get Arklon Crystal Artifact |q 10265/1
step
goto 32.4,64.2
.talk 19880
..turnin 10265
..accept 10262
step
goto 30.2,75.5
.from Zaxxis Stalker##19642+, Zaxxis Raider##18875+
.get 10 Zaxxis Insignia |q 10262/1
step
goto 32.4,64.2
.talk 19880
..turnin 10262
..accept 10205
.' A Heap of Ethereals becomes a daily after you turn the quest in.
step
goto 28.2,79.4
.kill Warp-Raider Nesaad##19641 |q 10205/1 |tip In a small camp.
step
goto 32.4,64.2
.talk 19880
..turnin 10205
..accept 10266
step
goto 46.7,56.9
.talk 20066
..turnin 10266
..accept 10267
..accept 10311
step
goto 46.4,56.4
.talk 20810
..accept 10417
..accept 10348
step
goto 48.2,55.0
.click Diagnostic Equipment##7192
.get Diagnostic Results |q 10417/1
step
goto 57.6,63.9
.click Box Surveying Equipment##6881 
.get 10 Box of Surveying Equipment |q 10267/1
step
goto 48.2,53.9
.click Ivory Bell##7176
.get 15 Ivory Bell |q 10348/1
step
goto 46.4,56.4
.talk 20810
..turnin 10348
..turnin 10417
..accept 10418
step
goto 46.8,53.9
.kill 8 Barbscale Crocolisk##20773+ |q 10418/1
step
goto 46.4,56.4
.talk 20810
..turnin 10418
..accept 10423
step
goto 46.7,56.9
.talk 20066
..turnin 10267
..accept 10268
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
goto 43.5,35.1
.talk 20811
..turnin 10423
..accept 10424
step
goto 45.9,36.0
.talk 20084
..turnin 10268
..accept 10269
step
goto 47.6,26.8
.' Use Diagnostic Device next to the generator |use Diagnostic Device##29803
.' Get the Diagnostic Results |q 10424/1
step
goto 43.5,35.2
.talk 20811
..turnin 10424
..accept 10430
step
goto 44.7,14.6
.talk 20913
..turnin 10430
..accept 10436
step
goto 45.6,11.2
..kill 12 Scythetooth Raptor##20634+ |q 10436/1
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
..kill Captain Zovax##20727 |q 10339/4 |tip He walks around this area.
..kill 5 Ethereum Assassin##20452+ |q 10339/1
..kill 5 Ethereum Shocktrooper##20453+ |q 10339/2
..kill 2 Ethereum Researcher##20456+ |q 10339/3
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..turnin 10339
..accept 10384
step
goto 55.8,39.9
.click Ethereum Data Cell##1247
..get Ethereum Data Cell |q 10384/1
step
goto 54.5,41.1
.from Warden Icoshock##20770+
..collect The Warden's Key##29742
step
goto 55.2,42.8
.' Use Navuud's Concoction in your bags |use Navuud's Concoction##29737
.' While under the effects of the Electro-Shock Therapy buff do the following: |tip This buff lasts for 60 minutes. High levels will need to use melee since the effect only works by random chance.
..kill 30 Void Waste Globule##20805+ |q 10411/2
step
goto 53.3,41.5
.' Click Captain Tyralius's Prison |tip It looks like a glowing pink orb
.' Free Captain Tyralius |q 10422/1
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
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
.' Click the Ethereum Transponder Zeta
.talk 20482
..turnin 10385
..accept 10405
step
goto 55.8,40.5
.from Ethereum Assassin##20452+, Ethereum Archon##20458+
..get Prepared Ethereum Wrapping |q 10405/1
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..turnin 10405
..accept 10406
step
goto 56.8,38.6
.' Escort the Ethereum Demolishinist while he sabotages the Ethereum Conduit |tip If you have trouble with this, clear the path first before accepting the escort quest.
.' Sabotage Ethereum Conduit |q 10406/1
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..turnin 10406
step
goto 57.1,37.6
.from Ethereum Gladiator##20854 |tip He is fighting a Captured Protectorate Vanguard. Killing him will unlock an escort quest If he is not here you will have to wait for him to respawn.
.talk 20763
..accept 10425
step
'Escort the Captured Protectorate Vanguard to Protectorate Watch Post
.' Escort Captured Protectorate Vanguard |q 10425/1
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
..kill 30 Seeping Sludge Globule##20806+ |q 10411/1
step
goto 59.4,45.0
.talk 20551
..accept 10345
step
goto 61.0,45.6 |n
'The entrance to the Access Shaft Zeon cave starts here. |goto 61.0,45.6,0.5 |noway |c
step
.' Go inside the cave to 59.8,42.6 |goto 59.8,42.6
.' Use the Protectorate Igniter in your bags on Withered Corpses |use Protectorate Igniter##29473 |modelnpc Withered Corpse##20561
.' Use 12 Withered Corpses Burned |q 10345/1 |tip If you get to close they will turn into fleshbeasts. There are more corpses inside the cave.
step
goto 60.9,41.5
.talk 20552
..accept 10353
step
goto 61.0,41.5
.click Teleporter Power Pack##7089
..get Teleporter Power Pack |q 10270/1
step
goto 60.1,40.1
..kill Arconus the Insatiable##20554 |q 10353/1
step
goto 61.1,45.4 |n
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
.turnin 10438
..accept 10439
step
goto 60.6,32.1
.talk 20985
.' Speak to Captain Saeed |q 10439/2
.' Tell him, "Let's go!"
step
.' Follow Captain Saeed and his men to 60.8,39.3 | goto 60.8,39.3
.talk 20985
.' Tell him, "I am ready"
..kill Dimensius the All-Devouring##19554 |q 10439/1
step
goto 60.1,31.7
.talk 20907
..turnin 10439
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..accept 10408
step
goto 53.7,42.4
.' Use Protectorate Disruptor next to each of the three huge force fields protecting Nexus-King Salhadaar. |use Protectorate Disruptor##29618
..kill Nexus-King Salhadaar##20454+ |q 10408/1
step
goto 56.8,38.7
.' Click the Ethereum Transponder Zeta
.talk 20482
..turnin 10408
step
goto 44.1,36.1
.talk 20067
..turnin 10290
step
goto 71.1,39.0
.' Click the Ethereum Transponder Zeta
.' Attempt to contact Wind Trader Marid. 
.talk 20518
..turnin 10270
step
goto 29.1,40.5
.' Use the Triangulation Device in your bags |use Triangulation Device##29018
.' A red arrow will appear showing you where to go.
.' Discover the second triangulation point |q 10275/1
step
goto 34.6,38.0
.talk 20112
..turnin 10275
..accept 10276
step
goto 44.5,21.6
.from Farahlon Breaker##18886+ |tip If you're careful you can avoid having to fight the Farahkib Shardlings
..get 4 Raw Farahlite |q 10290/1
step
goto 44.0,36.0
.talk 20067
..accept 10290
step
goto 53.5,21.5
.from Culuthas##20138+
..get Ata'mal Crystal |q 10276/1
step
goto 45.9,36.0
.talk 20084
..turnin 10276
// ADDITIONAL QUESTS ADDED IN
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
goto 39.1,28.9
.from Gan'arg Mekgineer##16949+
..collect 5 Condensed Nether Gas##31653 |q 10855
step
goto 38.0,25.5
.talk 22293
..turnin 10850 |n
.' Destroy Inactive Fel Reaver |q 10855/1
step
goto 51.7,20.4
..kill 10 Hound of Culuthas##20141+ |q 10336/1
..kill 5 Eye of Culuthas##20394+ |q 10336/2
step
goto 44.7,34.9
.talk 20471
..turnin 10336
..turnin 10855
..accept 10856
step
goto 41.9,23.6
..kill 12 Wrathbringer##18858+ |q 10856/1
step
goto 44.7,34.9
.talk 20471
..turnin 10856
..accept 10857
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
goto 44.7,34.9
.talk 20471
..turnin 10857
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
goto 44.7,34.9
.talk 20470
..turnin 10335
step
goto 59.5,32.4
.talk 20448
..accept 10970
step
goto 56.6,37.7
.from Ethereum Assassin##20452+, Captain Zovax##20727+, Ethereum Researcher##20456+
.get Salvaged Ethereum Prison Key |q 10970/1
step
goto 59.5,32.4
.talk 20448
..turnin 10970
step
goto 59.5,32.4
.talk 20448
..turnin 10970
..accept 10971
step		
goto 56.6,37.7
.from Ethereum Overlord##20459+, Ethereum Nexus-Stalker##20474+, Ethereum Overlord##20459+
.collect Ethereum Prison Key##29460 |tip This has a really low drop rate.
step
goto Netherstorm 54.7,46.2
.click Ethereum Prison##7183
.' Kill whatever comes out of the prison.
.get Ethereum Prisoner I.D. Tag##31957 |q 10971/1
step
goto 59.5,32.4
.talk 20448
..turnin 10971
step
.' After these quests are done, you will need to grind reputation to Exalted.
.' You can either do Heroic Mana Tombs and kill everything in the instance.
.' You can do the Obsidian Warbeads in Nagrand. |next "bead" |confirm
.' You can farm Ethereal in Netherstorm. |next "heap" |confirm
.' Or you turn in Ethereum Prisoner I.D. Tag's |next "keys" |confirm |tip We do not recommend this last option due to a very low drop rate for Ethereum Prison Keys.
step
label "keys"
goto 59.5,32.4
.talk 20448
..accept 10972
step		
goto 56.6,37.7
.from Ethereum Overlord##20459+, Ethereum Nexus-Stalker##20474+, Ethereum Overlord##20459+
.collect Ethereum Prison Key##29460 |tip This has a really low drop rate.
step
goto Netherstorm 54.7,46.2
.click Ethereum Prison##7183
.' Kill whatever comes out of the prison.
.get Ethereum Prisoner I.D. Tag##31957 |q 10972/1
step
goto 59.5,32.4
.talk 20448
..turnin 10972
step
label "heap"
goto Netherstorm,30.8,75.0
.from Zaxxis Raider##18875+, Zaxxis Stalker##19642+
.collect Zaxxis Insignia##29209+ |n
..' You will need multiples of 10.
...' You gain 250 reputation per 10.
|confirm
step
goto 32.4,64.2
.talk 19880
.turnin 10308 |instant |n
.' Click here to return to Insignia farming. |next heap |confirm |only if rep("The Consortium")<=Revered
.' Click here to farm Obsidian Warbeads. |next bead |confirm |only if rep("The Consortium")<=Revered
|next "exalted" |only if rep("The Consortium")==Exalted
step
label "bead"
goto Nagrand,49.9,56.7
.from Boulderfist Warrior##17136+, Boulderfist Mage##17137+
.collect Obsidian Warbeads##25433 |n
..' You will need multiples of 10.
...' You gain 250 reputation per 10.
|confirm
step
goto Nagrand,31.4,57.8
.talk 18265
.accept 9892 |instant |n
.' Click here to return to Insignia farming. |next heap |confirm |only if rep("The Consortium")<=Revered
.' Click here to farm Obsidian Warbeads. |next bead |confirm |only if rep("The Consortium")<=Revered
|next "exalted" |only if rep("The Consortium")==Exalted
step
label "exalted"
.' Congratulations, you are now Exalted with The Consortium.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Shattered Sun Offensive\\Pre-Quest with Dailies", [[
author support@zygorguides.com
description This section is required to acces the 
description Shattered Sun Offensive daily quests.
#include "A_SSO_PreQuest_Dailies"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Shattered Sun Offensive\\Dailies", [[
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
oto 49.3,40.4
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
.from Erratic Sentry##24972+
.' Use Attuned Crystal Cores on the Erratic Sentries corpse. |use Attuned Crystal Cores##34368
.' 5 Converted Sentry Deployed |q 11525/1
.click Bloodberry Bush##28
.get 5 Bloodberry |q 11546/1 |tip They can be found all around this area on the ground.
step
goto Isle of Quel'Danas,42.1,35.7
.kill 6 Dawnblade Summoner##24978+ |q 11540/1
.kill 6 Dawnblade Blood Knight##24976+ |q 11540/2
.kill 3 Dawnblade Marksman##24979+ |q 11540/3
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
.kill 6 Dawnblade Reservist##25087+ |q 11543/4
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
.' Take this path back to the shoreside. |goto Isle of Quel'Danas,57.3,38.6 |c
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
.' 6 Multiphase Readings Taken |q 11880/1
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
.' Click the Shattrath Portal to Isle of Quel'Danas. |goto Isle of Quel'Danas |noway|c
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Netherwing Reputation (Neutral) - Pre-Quests", [[
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
step
goto 68.2,60.4
.talk 21657
..' Listen to the Tale of Neltharaku |q 10814/1
..turnin 10814
..accept 10836
step
goto 66.4,60.0
.from Dragonmaw Drake\-\Rider##21719+, Dragonmaw Wrangler##21717+, Dragonmaw Subjugator##21718+
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Netherwing Reputation (Neutral)", [[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Netherwing Reputation (Friendly) - Pre-Quests", [[
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
.kill 1 Crazed Murkblood Foreman##23305 |q 11083/1
.kill 5 Crazed Murkblood Miner##23324+ |q 11083/2
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
.'If you want to get the 10 Knothide Leather by skinning, kill the mobs around [60.4,45.2]
step
goto Netherstorm,46.4,10.8
.from Tyrantus##20931
.get Hardened Hide of Tyrantus |q 11054/2
step
goto Shadowmoon Valley,66.8,86.1
.talk 23291
..turnin 11054
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Netherwing Reputation (Friendly)", [[
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
.kill 15 Nethermine Flayer##23169 |q 11077/1
.kill 5 Nethermine Ravager##23326 |q 11077/2
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Netherwing Reputation (Honored) - Pre-Quests", [[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Netherwing Reputation (Honored)", [[
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
.kill 15 Nethermine Flayer##23169 |q 11077/1
.kill 5 Nethermine Ravager##23326 |q 11077/2
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Netherwing Reputation (Revered) - Pre-Quests", [[
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
.kill Barash the Den Mother##23269 |q 11041/2 |tip She looks like a big yellow Flayer mob that walks in a circle in this spot.
step
goto 71.3,85.8
.kill 10 Overmine Flayer##23264 |q 11041/1
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Netherwing Reputation (Revered)", [[
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
.kill 15 Nethermine Flayer##23169 |q 11077/1
.kill 5 Nethermine Ravager##23326 |q 11077/2
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Netherwing Reputation (Exalted) - Getting Your Netherdrake!", [[
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Netherwing Egg Hunting - Optimized Path", [[
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
.' Turn in all of the Netherwing Eggs you have collected |collect 0! Netherwing Egg##32506
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Ogri'la\\Pre-Quests", [[
description This will walk you through the Pre-Quests for Ogri'la.
step
goto Shattrath City,56.5,49.1
.talk 22497
.accept 10984
step
goto 64.9,68.1
.talk 22940
.turnin 10984
..accept 10983
step
|fly Evergrove
step
goto Blade's Edge Mountains,55.5,44.9
.talk 22941
.turnin 10983
..accept 10995
..accept 10996
..accept 10997
step
goto Blade's Edge Mountains,60.9,47.6
.kill Grulloc##20216 |n
.click Grulloc's Dragon Skull##7354
.collect 1 Grulloc's Dragon Skull |q 10995/1
step
goto 58.5,62.2
.kill Maggoc##20600 |n
.click Maggoc's Treasure Chest##41
.collect 1 Maggoc's Treasure Chest |q 10996/1
step
|fly Shattrath
step
goto Terokkar Forest,20.3,17.5
.from Slaag##22199+
.click Slaag's Standard##7215
.collect 1 Slaag's Standard##32382 |q 10997/1
step
|fly Evergrove
step
goto Blade's Edge Mountains,55.5,44.9
.talk 22941
.turnin 10995
.turnin 10996
.turnin 10997
..accept 10998
step
 goto 77.3,31.8
 ' Stand in the fire until Vim'gol the Vile spawns
 .from Vim'gol the Vile##22911 |n
 .click Vim'gol's Vile Grimoire##255
 .get 1 Vim'gol's Vile Grimoire##32358 |q 10998/1
step
goto Blade's Edge Mountains,55.5,44.9
.talk 22941
.turnin 10998
..accept 11000
step
goto 60.0,24.1
.' Use Vim'gol's Grimoire |use Vim'gol's Grimoire##32467
.' Kill all adds that spawn, defending the soul grinder.
.' Defeat Skulloc Soul Grinder
.click Skulloc's Soul##7244
.' Capture Skulloc's Soul |q 11000/1
step
goto Blade's Edge Mountains,55.5,44.9
.talk 22941
.turnin 11000
..accept 11009
step
goto Blade's Edge Mountains,28.8,57.3
.talk 23233
.turnin 11009
..accept 11025
step
goto Blade's Edge Mountains,28.8,62.4
.click Apexis Shard Formation##7210 
..get 5 Apexis Shard |q 11025/1
step
goto 28.8,57.4
.talk 23233
.turnin 11025
..accept 11058
step
goto 28.4,57.6
.talk 23316
..accept 11030
step
goto 29.2,65.2
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect Apexis Shard##32569 |q 11058
step
goto 27.7,68.1
.' Click the Apexis Relic |tip It looks like a smaller floating crystal hovering over a white orb on the ground.
..' Insert an Apexis Shard, and begin!
.' Repeat the color patterns that are shown |tip Ignore the floating crystal now, focus on the crystals on the ground.  You will be shown a color sequence.  Once the sequence is done, you have to click the stones on the ground in the same order.  It's random every time, and you'll have to repeat 6 sequences.  It helps to stand directly under the floating crystal and move your camera up so you are looking down at the top of your head.
.' Attain the Apexis Vibrations |q 11058/1
.' If you fail, get another Apexis Shard around [29.2,65.2]
step
goto 28.8,57.4
.talk 23233
..turnin 11058
..accept 11080
step
goto 29.2,65.2
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect Apexis Shard##32569 |q 11080
step
goto 31.5,63.4
.' Click the Apexis Relic |tip It looks like a smaller floating crystal hovering over a white orb on the ground.
..' Insert an Apexis Shard, and begin!
.' Repeat the color patterns that are shown |tip Ignore the floating crystal now, focus on the crystals on the ground.  You will be shown a color sequence.  Once the sequence is done, you have to click the stones on the ground in the same order.  It's random every time, and you'll have to repeat 8 sequences.  It helps to stand directly under the floating crystal and move your camera up so you are looking down at the top of your head.
.' Attain the Apexis Vibrations |q 11080/1
.' If you fail, get another Apexis Shard around [29.2,65.2]
step
goto 28.8,57.4
.talk 23233
..turnin 11080
step
goto 31.2,52.2
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect 10 Apexis Shard##32569 |q 11030
step
goto 32.8,40.5
.' Click a Fel Crystalforge |tip It looks like a metal machine with green bubbling floating out of it quickly.
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
.' Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456 |tip They look like piles of gray stones on the gorund around this area.
.' Destroy 15 Fel Cannonball Stacks |q 11010/1
only !Druid
step
goto 33.3,44.0
.' Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456 |tip They look like piles of gray stones on the gorund around this area.
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
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect 35 Apexis Shard##32569 |q 11059
step
goto 31.8,63.8
.' Click the Apexis Monument |tip It's a huge floating crystal that changes colors.
..' Insert 35 Apexis Shards, and begin!
.' Click any of the 4 big colored buttons on the ground |tip You will get hit for 7,000 damage, but if you are high level, it shouldn't be a big deal.  This will make the quest mob spawn faster.
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
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect 35 Apexis Shard##32569 |q 11078
step
goto 27.2,64.8
.' Click Rivendark's Egg |tip It looks like a big brown spiked egg sitting in a nest on the ground.
..' Place 35 Apexis Shards near the dragon egg to crack it open
.from Rivendark##23061
.get Dragon Teeth |q 11078/1
step
goto 31.2,52.2
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect 10 Apexis Shard##32569 |q 11061
step
goto 27.4,52.7
.talk 23334
..turnin 11078
step
goto 54.4,10.8
.' Click the Bash'ir Crystalforge |tip It looks like a 3-layered well sitting on the ground in the middle of a big circular pink glowing symbol.
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
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect 35 Apexis Shard##32569 |q 11079
step
goto 33.9,44.2
.' Click the Fel Crystal Prism |tip It's a big green crystal floating in green smoke above 4 metal vents.
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Ogri'la\\Daily Quests", [[
description This section will walk you through the Ogri'la Daily Quests.
daily
step
label reset
goto Blade's Edge Mountains,28.8,57.4
.talk 23233
.accept 11080 |daily
step
goto Blade's Edge Mountains,28.9,57.9
.talk 23253
.accept 11026
only if rep("Ogri'la")>=Honored
step
goto 28.0,51.5
.talk 23335
.accept 11066 |daily
step
goto Blade's Edge Mountains,27.6,52.9
.talk 23120
.accept 11023 |daily
step
goto 29.2,65.2
.' Click Apexis Shard Formations |tip They look like big bundles of blue crystals.  They are tucked away amongst the many huge blue crystal bunches around this area, so you just move your mouse around in the bunches of big blue crystals until you highlight over the Apexis Shard Formations.
.' You can also kill any type of mob around this whole area
.collect Apexis Shard##32569 |q 11080
step
goto 31.5,63.4
.' Click the Apexis Relic |tip It looks like a smaller floating crystal hovering over a white orb on the ground.
..' Insert an Apexis Shard, and begin!
.' Repeat the color patterns that are shown |tip Ignore the floating crystal now, focus on the crystals on the ground.  You will be shown a color sequence.  Once the sequence is done, you have to click the stones on the ground in the same order.  It's random every time, and you'll have to repeat 8 sequences.  It helps to stand directly under the floating crystal and move your camera up so you are looking down at the top of your head.
.' Attain the Apexis Vibrations |q 11080/1
.' If you fail, get another Apexis Shard around [29.2,65.2]
step
goto 29.1,79.3
.' Use your Banishing Crystal |use Banishing Crystal##32696
.' Kill Fear Fiends and Abyssal Flamebringers near the portal that opens.
.' 15 Demons Banished |q 11026/1
|modelnpc 19973
|modelnpc 22204
only if rep("Ogri'la")>=Honored
step
goto 31.6,56.4
.from Aether Ray##22181+
.' Use your Wrangling Rope on Aether Rays when they are ready to be wrangled |use Wrangling Rope##32698 |tip You will see a message in your chat window.  It may help to take off some of your gear if you are high level.
.' Wrangle 5 Aether Rays |q 11066/1
step
goto 33.3,44.0
.' Use your Skyguard Bombs on Fel Cannonballs Stacks |use Skyguard Bombs##32456 |tip They look like piles of gray stones on the gorund around this area.
.' Destroy 15 Fel Cannonball Stacks |q 11023/1
step
goto Blade's Edge Mountains,28.8,57.4
.talk 23233
.turnin 11080 |daily
step
goto Blade's Edge Mountains,28.9,57.9
.talk 23253
.turnin 11026
only if rep("Ogri'la")>=Honored
step
goto 28.0,51.5
.talk 23335
.turnin 11066 |daily
step
goto Blade's Edge Mountains,27.6,52.9
.talk 23120
.turnin 11023 |daily
|next "reset" |only if rep("Ogri'la")<=Exalted
|next "exalted" |only if rep("Ogri'la")==Exalted
step
label exalted
'Congratulations, you are now Exalted with Ogri'la.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Honor Hold",[[
author support@zygorguides.com
step
goto Blasted Lands,59.4,14.9
.talk 3546
.buy 1 Nethergarde Bitter##23848 |q 9563 |future
step
goto 54.7,50.5
.talk 16841
..accept 10119
step
goto 55.0,54.0 |n
.' Go into the big green portal to the Outlands |goto Hellfire Peninsula |noway |c
step
goto Hellfire Peninsula,87.3,50.7
.talk 19229
..turnin 10119
..accept 10288
step
goto 87.4,52.4
.talk 18931
..turnin 10288
..accept 10140
step
|fly Honor Hold
step
goto 54.5,62.8
.talk 19308
..turnin 10140
..accept 10254
step
.home Honor Hold
step
goto 56.6,66.7
.talk 16819
..turnin 10254
..accept 10141
..accept 10160
step
goto 51.2,60
.talk 21209
..accept 10055
step
goto 50.9,60.2
.talk 16820
..turnin 10160
..accept 10482
step
goto 61.7,60.8
.talk 19309
..turnin 10141
..accept 10142
step
goto 60.4,52.1
.' Click the Salvaged Metal and Wood|They are scraps on the ground around this area.
.get 8 Salvaged Metal |q 10055/1
.get 8 Salvaged Wood |q 10055/2
.kill 20 Bonechewer Orcs |q 10482/1
'|from Bonechewer Evoker##19701, Bonechewer Raider##16925, Bonechewer Mutant##16876, Bonechewer Scavenger##18952
|model Salvageable Wood##6481
|model Salvageable Metal##6999
step
goto 65.8,54.1
.' Be on the lookout for the giant Fel Reaver
.kill 1 Dreadcaller##19434 |q 10142/1
.kill 4 Flamewaker Imp##19136+ |q 10142/2
.kill 6 Infernal Warbringer##19261+ |q 10142/3
step
goto 61.7,60.8
.talk 19309
..turnin 10142
..accept 10143
step
goto 51.2,60
.talk 21209
..turnin 10055
..accept 10078
step
goto 50.9,60.2
.talk 16820
..turnin 10482
..accept 10483
step
goto 71.3,62.8
.talk 19310
..turnin 10143
..accept 10144
step
goto 72.0,59.6
.kill the demons here|n
.collect 4 Demonic Rune Stone##28513|q 10144
'|from Wrathguard##18975, Doomwhisperer##18981
step
goto 72.7,59
.' Stand inside the portal and click it to destroy it |q 10144/2
step
goto 71.7,56.4
.kill the demons here|n
.collect 4 Demonic Rune Stone##28513|q 10144
'|from Wrathguard##18975, Doomwhisperer##18981
step
goto 71.4,55.2
.' Stand inside the portal and click it to destroy it |q 10144/1
step
goto 71.3,62.8
.talk 19310
..turnin 10144
..accept 10146
step
goto 71.4,62.5
.talk 19409
.' Take the flight
.' Click the bomb in your bags, bomb Gateway Shaadraz |q 10146/2|use Seaforium PU-36 Explosive Nether Modulator##28038
.' Click the bomb in your bags, bomb Gateway Murketh |q 10146/1|use Seaforium PU-36 Explosive Nether Modulator##28038
step
goto 71.4,62.7
.talk 19310
..turnin 10146
..accept 10340
step
goto 71.4,62.5
.talk 19409
..'Fly to Shatter Point|goto Hellfire Peninsula,78.5,35.1,1|noway|c
step
goto 78.4,34.9
.talk 20234
.fpath Shatter Point
step
goto 78.4,34.9
.talk 20234
..turnin 10340
..accept 10344
step
goto 79.3,33.9
.talk 20232
..turnin 10344
..accept 10163
step
goto 78.3,34.5
.talk 20235
.' Take a flight to the Abyssal Shelf
.' Use the Area 52 Special bomb in your bags to bomb the mobs|use Area 52 Special##28132|tip If you don't complete this in the first run, you can keep flying until it's done.
..kill 20 Gan'arg Peon##19398+ |q 10163/1
..kill 5 Mo'arg Overseer##19397+ |q 10163/2
..'Destroy 5 Fel Cannons |q 10163/3
step
goto 79.3,33.9
.talk 20232
..turnin 10163
..accept 10382
step
goto 78.3,34.5|n
.talk 20235 |tip Right next to an Armored Gryphon Destroyer.
..'Fly to Honor Point|goto Hellfire Peninsula,68.7,28.2,1|noway|c
step
goto 68.3,28.6
.talk 20793
..turnin 10382
step
'Hearth to Honor Hold|goto Hellfire Peninsula,54.3,63.6,0.5|use Hearthstone##6948|noway|c
step
goto 54.3,63.6
.talk 16825
..accept 10058
step
goto 54.3,63.6
.talk 16826
..accept 9558
step
goto 56.7,66.5
.talk 16839
..accept 10047
step
goto 50.9,60.2
.talk 16827
..accept 10050
step
goto 52,62.6
.talk 16837
..accept 9355
..accept 10079
step
'Go inside the cave to 54.9,62.9|goto 54.9,62.9
.kill 12 Gan'arg Sapper##18827+ |q 10079/1
step
'Go outside the cave to 52,62.6|goto 52,62.6
.talk 16837
..turnin 10079
..accept 10099
step
'Go inside the cave to 56.3,61.4|goto 56.3,61.4
.kill Z'kral##18974 |q 10099/1|tip He is all the way at the bottom of the cave way in the back of the big room.
step
'Go outside the cave to 52,62.6|goto 52,62.6
.talk 16837
..turnin 10099
step
goto 66.1,48.8
.' Click the Trampled Skeletons|tip They look like little brown ribcages and spines.  You will find them on the grey road.  They are very easy to miss, but once you find one you will find them really fast.
.' Cleanse 8 Trampled Skeletons |q 10047/1
step
goto 58.7,47
.' Use your Flaming Torch on the Eastern Thrower to burn it |q 10078/1|use Flaming Torch##26002|tip It's a big catapult.
step
goto 55.9,46.7
.' Use your Flaming Torch on the Central Eastern Thrower to burn it |q 10078/2|use Flaming Torch##26002|tip It's a big catapult.
step
goto 53.5,47.2
.' Use your Flaming Torch on the Central Western Thrower to burn it |q 10078/3|use Flaming Torch##26002|tip It's a big catapult.
step
goto 52.8,47.1
.' Use your Flaming Torch on the Western Thrower to burn it |q 10078/4|use Flaming Torch##26002|tip It's a big catapult.
step
goto 65.8,67.2
.kill Bleeding Hollow orcs|n
.get Cursed Talisman|q 10483/1
'|from Bleeding Hollow Tormentor##19424+, Bleeding Hollow Peon##16907+,Bleeding Hollow Grunt##16871+
step
goto 71,63.4
.talk 21133
..turnin 10483
..accept 10484
step
goto 55,86.8
.click Mysteries of the Light##6845
.get Mysteries of the Light |q 10058/1
step
goto 58,79
.kill 10 Unyielding Sorcerer##16905+ |q 10050/2
.kill 5 Unyielding Knight##16906+ |q 10050/3
.kill 12 Unyielding Footman##16904+ |q 10050/1
step
goto 49.2,74.8
.talk 19367
..accept 10161
.talk 19344
..accept 9349
step
goto 41.2,84.4
.click Ravager Egg##1867 
.from Razorfury Ravagers##16933 
.get 12 Ravager Egg |q 9349/1
step
goto 49.2,74.8
.talk 19344
..turnin 9349
..accept 9361
step
goto 50.2,74.8
.from Deranged Helboar##16863
.get Tainted Helboar Meat|n
.' Use your Purification Mixture on the Tainted Helboar Meat|use Purification Mixture##23268|tip The meat won't become purified every time, it can become toxic as well.
.get 8 Purified Helboar Meat|q 9361/1
step
goto 49.2,74.8
.talk 19344
..turnin 9361
..accept 9356
step
goto 58.1,71.3
.from Bonestripper Buzzard##16972+
.get 12 Plump Buzzard Wing |q 9356/1
.click Zeppelin Debris##7000
.get 30 Zeppelin Debris |q 10161/1
step
goto 49.2,74.8
.talk 19367
..turnin 10161
..accept 9351
.talk 19344
..turnin 9356
step
goto 47.8,65.8
.kill 15 Marauding Crust Burster##16857+ |q 9355/1|tip They are under the jumping piles of rocks, they come up to fight when you get close to the jumping rocks.
.get Eroded Leather Case|n
.' Click the Eroded Leather Case |use Eroded Leather Case##23338
..accept 9373
step
goto 52,62.6
.talk 16837
..turnin 9355
step
goto 51.2,60
.talk 21209
..turnin 10078
step
goto 50.9,60.2
.talk 16827
..turnin 10050
..accept 10057
step
goto 54.3,63.4
.talk 16825
..turnin 10058
step
goto 56.7,66.5
.talk 16839
..turnin 10047
step
goto 24.0,72.3
.talk 16851
..accept 9563
..turnin 9563
..accept 9420
step
goto 26.1,75.9
.kill 4 Haal'eshi Windwalker##16966+ |q 9417/1
.kill 6 Haal'eshi Talonguard##16967+  |q 9417/2
.click Kaliri Nest##7143+
.from Male Kaliri Hatchling##17039+, Kaliri Swooper##17053+, Female Kaliri Hatchling##17034+, Kaliri Matriarch##17035+
.get 8 Kaliri Feather|q 9420/1
step
goto 26.1,77.1|n
.' The path up to Avruu starts here|goto Hellfire Peninsula,26.1,77.1,0.5|noway|c
step
goto 25.7,75.1
.from Avruu##17084
.collect 1 Avruu's Orb
.' Click Avruu's Orb |use Avruu's Orb##23580
..accept 9418
step
goto 29,81.5
.click Haal'eshi Altar##6964
.' Place Avruu's Orb on the Altar
.' Fight Aeranas until he's almost dead
.talk 17085
..turnin 9418
step
goto 24,72.1
.talk 16850
..turnin 9417
.talk 16851
..turnin 9420
step
goto 26.9,69.5
.kill 8 Stonescythe Whelp##16927+ |q 9398/2
step
goto 32.1,59.3
.kill 4 Stonescythe Alpha##16929+ |q 9398/1
.' You can find 2 more Stonescythe Alphas at [Hellfire Peninsula,33.7,62.1]
step
goto 49.5,81.8
.from Rogue Voidwalker##16974+, Uncontrolled Voidwalker##16975+
.get 10 Condensed Voidwalker Essence|q 9351/1
.' Use your Sanctified Crystal on an Uncontrolled Voidwalker when it's almost dead|use Sanctified Crystal##23417
.click glowing Crystal##327
.get Glowing Sanctified Crystal|q 9383/1
step
goto 53.6,81.1
.kill Arch Mage Xintor##16977 |q 10057/1|tip Near a bunch of practice fighting dummies.
step
goto 54.7,83.7
.kill Lieutenant Commander Thalvos##16978 |q 10057/2|tip Walking around on a black platform thing. He's a blue ghost dwarf.
step
goto 49.2,74.8
.talk 19367
..turnin 9351
step
goto 50.9,60.2
.talk 16827
..turnin 10057
step
goto 64.2,71.8
.kill Bleeding Hollow Orcs |n
.get 12 Cursed Talisman |q 10484/1
'|from Bleeding Hollow Peon##16907, Bleeding Hollow Grunt##16871
step
goto 71,63.4
.talk 21133
..turnin 10484
..accept 10485
step
goto 71.3,62.8
.talk 19409
..accept 10895
step
goto 70.1,69.1
.' Use your Smoke Beacon under the tower|use Smoke Beacon##31739
.' Mark the Forge Tower|q 10895/3
step
goto 70.9,71.3
.' Use your Smoke Beacon under the tower|use Smoke Beacon##31739
.' Mark the Foothill Tower |q 10895/4
step
goto 70.1,76.9
.from Warlord Morkh##16964
.get Morkh's Shattered Armor|q 10485/1
step
goto 66.4,76.6
.' Use your Smoke Beacon under the tower|use Smoke Beacon##31739
.' Mark the Southern Tower |q 10895/2
step
goto 67.9,67
.' Use your Smoke Beacon under the tower|use Smoke Beacon##31739
.' Mark the Northern Tower |q 10895/1
step
goto 71,63.4
.talk 21133
..turnin 10485
..accept 10903
step
goto 71.3,62.8
.talk 19409
..turnin 10895
step
goto 54.3,63.6
.talk 22430
..turnin 10903
..accept 10909
..accept 10916
step
goto 54.2,63.3
.click Fei Fei's Cache##20
.get Draenei Prayer Beads|q 10916/1
step
goto 45,75
.' Use the Anchorite Relic in your bags |use Anchorite Relic##31772
.' Pull orcs to the relic
.' Kill the orcs and a Fel Spirit will spawn
.from Fel Spirit##22454+
.' Jules Avenged |q 10909/1
|modelnpc Shattered Hand Berserker##16878
step
goto 54.3,63.6
.talk 22430
..turnin 10909
..turnin 10916
..accept 10935
step
goto 54.0,63.5
.talk 22431
..'Click 'I am ready...'
..'Target the purple skulls and oozes
..'Use the Ritual Prayer Beads when enemies are in the room |use Ritual Prayer Beads##31828
..'After the exorcism is done, talk to Colonel Jules on the bed to save him |q 10935/1
|modelnpc Colonel Jules##22432
|modelnpc Darkness Released##22507
|modelnpc Foul Purge##22506
step
goto 54.3,63.6
.talk 22430
..turnin 10935
..accept 10936
step
goto 56.6,66.7
.talk 16819
..turnin 10936
step
goto Hellfire Peninsula,56.7,66.3
.talk 17557
..accept 9575
step
goto 47.7,53.6|n
' Go through the swirling purple portal into Hellfire Ramparts|goto Hellfire Ramparts
step
.' Inside of the Hellfire Ramparts, head straight along the path and do the following:
.from Watchkeeper Gargolmar##17306
.get Gargolmar's Hand##23881|q 9575/1
step
.' After killing Gargolmar, move around the bend, go through the archway, and up the curved ramp. You will come out on a intersection that leads to two platforms. Take the right path and do the following:
.from Omor the Unscarred##17308
.get Omor's Hoof##23886|q 9575/2
step
.' Go back to the intersection, take the left platform, and do the following:
.from Vazruden##17537 |tip He is flying the sky on top of Nazan. When you approach him he will dismount.
.collect 1 Ominous Letter##23890|n
.from Nazan##17536 |tip He will land after you kill Vazruden
.get Nazan's Head##23901|q 9575/3
.' Click the Ominous Letter|use Ominous Letter##23890
.accept 9587
step
' Leave the instance|goto Hellfire Peninsula
step
.goto 56.6,66.6
.talk 16819
.turnin 9587
step
goto Hellfire Peninsula,56.5,66.6
.talk 17479
..turnin 9575
..accept 9607
..accept 9589
step
goto 46.1,51.7 |n
' Go through the swirling portal into The Blood Furnace|goto The Blood Furnace
step
'You can collect Blood Vials from all Orcs in this instance.
.from Laughing Skull Enforcer##17370+, Shadowmoon Adept##17397+, Laughing Skull Rogue##17491+, Shadowmoon Warlock##17371+
..collect Fel Orc Blood Vial##23894 |n 
|confirm
|only if havequest(29535)	
step
goto The Blood Furnace 36.6,40.7
.from The Maker##17381 |only if not havequest(29538)
.get Fel Infusion Rod |q 29538/2 |only if havequest(29538)
|confirm |only if not havequest(29538)
step
goto 43.4,21.9 
.click Cell Door Lever##6899
.' This will start the boss fight. You will have 4 cell doors open and have to fight Orcs until all 4 waves are complete.
.' Once you have killed the Orcs, the Boss will come in.
.' Try not to stand in the greem mist from the boss, this will deal lots of damage to you.
.from Broggok##17380
|confirm
step
'Make sure you have collected Fel Orc Blood
.get 10 Fel Orc Blood Vial##23894 |q 29538/1
|only if havequest(29538)
step
goto The Blood Furnace 64.3,41.4
.'Investigate The Blood Furnace |q 29539/1
|only if havequest(29539)	
step
goto 59.2,42.5
.from Keli'dan the Breaker##17377 |only if not havequest(29540)
.kill Keli'dan the Breaker |q 29540/1 |only if havequest(29540)
step
goto Hellfire Peninsula,56.5,66.6
.talk 17479
..turnin 9589
step
.goto 56.5,66.6
.talk 16819
.turnin 9607
step
goto Shadowmoon Valley,23.5,34.9
.kill Overseer Ripsaw##21499|n
..get Illidari-Bane Shard##30756|n
..accept 10621
step
goto Shadowmoon Valley,36.8,54.9
.talk 19370
..turnin 10621
..accept 10626
step
goto 22.7,35.3
.from Makazradon##21501
.get Makazradon's Glaive##30786 |q 10626/1
step
goto 23.2,38.4
.from Morgroron##21500
.get Morgroron's Glaive##30785 |q 10626/2
step
goto Shadowmoon Valley,36.8,54.9
.talk 19370
..turnin 10626
..accept 10662
step
.' Go West to Terokkar Forest|goto Terokkar Forest
step
goto Terokkar Forest,77.6,38.7
.talk 21465
..turnin 10662
..accept 10664
step
.' Go Northwest to Shattrath City|goto Shattrath City
step
goto 64.7,70.7
.talk 19678
.buy 1 Demon Warding Totem##30823 |q 10664/3
step
.' goto Netherstorm
.' At [45,36.5] In Netherstorm, Dealer Najeeb sells (1) Adamantite Frame on a Limited Supply timer.  
.talk 20981
.buy 1 Adamantite Frame |q 10664/1
step
.' Fly to Shattrath|goto Shattrath City
step
goto Shattrath City,57.2,48.2
.' Click the Portal to Stormwind |goto Stormwind City,49.6,86.5,0.5 |noway |c
step
'Buy the following from the Auction House if you cannot make them yourself:
.' 4 Heavy Knothide Leather
.' 4 Fel Iron Bars
.' 2 Arcane Dust
|confirm
step
Make sure you have everything on this list. 
.collect 1 Adamantite Frame##23784 |q 10664/1
.collect 4 Heavy Knothide Leather##23793 |q 10664/2
.collect 1 Demon Warding Totem##30823 |q 10664/3
.collect 4 Fel Iron Bar##23445 |q 10757/1
.collect 2 Arcane Dust##22445 |q 10757/2
step
goto 49.0,87.4|n
.' Use the portal to go to Blasted Lands|goto Blasted Lands
step
goto 58.7,60|n
.' Go through the Dark Portal|goto Hellfire Peninsula
step
goto Hellfire Peninsula,87.4,52.4
.talk 18931
.' Fly to Allerian Stronghold|goto Terokkar Forest,59.5,55.2,0.1|noway|c
step
goto Hellfire Peninsula,56.6,66.6
 .talk 16819
 ..accept 10762
step
goto Hellfire Peninsula,51.2,60.2 |n
.talk 21209
..turnin 10762
..accept 10763
step
goto Hellfire Peninsula,59.6,20.3
.from Incandescent Fel Spark##22323+
..collect 4 Mote of Fire##22574 |q 10757/3
step
.' Be sure you have all of these items.
.get 4 Fel Iron Bar##23445+ |q 10757/1
.get 2 Arcane Dust##22445+ |q 10757/2
.get 4 Mote of Fire##22574+ |q 10757/3
step
goto Hellfire Peninsula,51.3,60.3|n
.talk 21209
.turnin 10763
..accept 10764/1
step
.' Find the Fel Reaver that patrols around Hellfire Peninsula.
.from Fel Reaver##18733
.' Use the Unfired Key Mold on the Fel Reaver corpse |use Unfired Key Mold##31251
..get Charred Key Mold##31252 |q 10764/1
step
goto Hellfire Peninsula,53.1,38.1
.talk 16583
.turnin 10764
step
goto Terokkar Forest,77.6,38.7
.talk 21465
..turnin 10664
step
goto Terokkar Forest,77.6,38.7
.talk 21465
..accept 10670 |tip You'll have to complete the Mechanar (Fresh From the Mechanar) And Shadow Labyrinth (The Lexicon Demonica) portions of the dungeon guide in order to receive this quest
|confirm
step
goto Hellfire Peninsula,55.0,36.0
.talk 16819
.accept 9492
step
goto Hellfire Peninsula,56.8,62.7
.talk 16830
.accept 9493
step
goto 47.5,52 |n
.' Go through the swirling portal into The Shattered Halls|goto The Shattered Halls
step
.' Inside of the Shattered Halls dungeon do the following:
.kill 8 Shattered Hand Legionnaire##16700 |q 9493/1
.kill 4 Shattered Hand Centurion##17465 |q 9493/2
.kill 4 Shattered Hand Champion##17671 |q 9493/3
step
.from Warbringer O'mrogg##16809
..collect Tear of the Earthmother##30829 |q 10670/1
step
.from Warchief Kargath Bladefist##16808
..collect Warchief Kargath's Fist##23723 |q 9492/1
step
.' Leave The Shattered Halls dungeon|goto Hellfire Peninsula
step
goto Hellfire Peninsula,55.0,36.0
.talk 16819
.turnin 9492
step
goto Hellfire Peninsula,56.8,62.7
.talk 16830
.turnin 9493
step
.' Fly to Allerian Stronghold|goto Terokkar Forest,59.5,55.2,0.1|noway|c
step
goto Terokkar Forest,77.6,38.7
.talk 21465
.turnin 10670
step
'At this point you will have to grind Instances in order to gain reputation.
.' If you're past honored, you can do Shattered Halls, Heroic Hellfire Ramparts or Heroic Blood Furnace.
..' Heroic Shattered Halls should also be available.  You can also do the PVP daily quest to earn rep
..' Click here to proceed. |confirm
step
goto Hellfire Peninsula,56.3,62.8
.talk 1826
..accept 13410 |only !DeathKnight
..accept 13408 |only DeathKnight
step
goto 40.1,48.5
.' Capture The Overlook. |q 13410/1
.' You will need to enable PVP in order to capture the objective.  
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only !DeathKnight
step
goto 35.7,51.5
.' Capture The Stadium. |q 13410/1
.' You will need to enable PVP in order to capture the objective.  
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only !DeathKnight
step
goto 40.2,56.7
.' Capture Broken Hill. |q 13410/3
.' You will need to enable PVP in order to capture the objective.  
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only !DeathKnight
step
goto 40.1,48.5
.' Capture The Overlook. |q 13408/1
.' You will need to enable PVP in order to capture the objective.  
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only DeathKnight
step
goto 35.7,51.5
.' Capture The Stadium. |q 13408/1
.' You will need to enable PVP in order to capture the objective.  
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only DeathKnight
step
goto 40.2,56.7
.' Capture Broken Hill. |q 13408/3
.' You will need to enable PVP in order to capture the objective.  
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
only DeathKnight
step
goto Hellfire Peninsula,56.3,62.8
.talk 1826
.turnin 13408 |only DeathKnight
.turnin 13410 |only !DeathKnight
step
'After the quest is completed you will unlock a daily version of the quest.
|confirm
step
label fort
goto Hellfire Peninsula,56.3,62.8
.talk 1826
..accept 10106 |daily
step
goto 40.1,48.5
.' Capture The Overlook. |q 10106/1
.' You will need to enable PVP in order to capture the objective.  
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
step
goto 35.7,51.5
.' Capture The Stadium. |q 10106/1
.' You will need to enable PVP in order to capture the objective.  
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
step
goto 40.2,56.7
.' Capture Broken Hill. |q 10106/3
.' You will need to enable PVP in order to capture the objective.  
..' Type "/pvp" to enable player versus player combat. Players of the opposing faction will now be able to attack you, so be warned.
step
goto Hellfire Peninsula,56.3,62.8
.talk 1826
..turnin 10106 |daily
|next "fort" |only if rep('Honor Hold')<=Revered
|next "grats" |only if rep('Honor Hold')==Exalted
step
label grats
'Congratulations, you are now Exalted with Honor Hold!!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Lower City",[[
description This guide will walk you through how to earn
description Exalted with the Lower City.
step
goto Shattrath City,52.6,21
.talk 22292
..accept 10847
step
'Go outside to Terokkar Forest |goto Terokkar Forest |noway |c
step
goto Terokkar Forest,38.6,8.5
.from Shimmerscale Eels##18750
.get 8 Pristine Shimmerscale Eel |q 10037/1
step
goto 49.9,16.5 |n
.' The path up to the Eye of Veil Reskk starts here |goto Terokkar Forest,49.9,16.5,0.3 |noway |c
step
goto 50.1,19.4
.click Eye of Veil Reskk##621
.get Eye of Veil Reskk|q 10847/1
step
goto 57.9,23.2
.click Eye of Veil Shienor##621 |tip Climb the path inside the other tree, run across the bridge
.get Eye of Veil Shienor|q 10847/2
step
'Go to Shattrath City |goto Shattrath City |noway |c
step
goto Shattrath City,52.6,21
.talk 22292
..turnin 10847
..accept 10849
step
'Go outside to Terokkar Forest |goto Terokkar Forest |noway |c
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
goto 39.6,58.6
.kill 8 Cabal Skirmisher##21661+ |q 10878/1
.kill 4 Cabal Spell-weaver##21902+ |q 10878/2
.kill 2 Cabal Initiate##21907+ |q 10878/3
.get 10 Mark of Kil'jaeden |q 10325/1 |only if rep ('The Aldor') >= Neutral
.' Get the Cabal Orders from orcs in this area
.' Click the Cabal Orders |use Cabal Orders##31707
..accept 10880
step
goto 37.4,51.2
.talk 22370
..turnin 10880
..accept 10881
..turnin 10878
step
.' The path underground starts here |goto 31.3,52.7 <5 |c
step
goto 29.7,51.7
.click Cabal Chest##10
.get Gavel of K'alen |q 10881/2
step
goto 32.1,51.2
.click Cabal Chest##10 
.get Drape of Arunen|q 10881/1
step
goto 31.2,46.7
.click Cabal Chest##10
.get Scroll of Atalor|q 10881/3
step
'Go outside to 37.4,51.2 |goto 37.4,51.2
.talk 22370
..turnin 10881
step
goto 32.3,41.7
.from Skithian Windripper##18453+,Skithian Dreadhawk##18452+
.get 5 Lathrai's Stolen Goods |q 10112/1
.get Veil Skith Prison Keys|n
.click Veil Skith Cage##1787
.' Rescue 12 Children |q 10852/1
step
goto 30.8,42.1
.' Use the Rod of Purification on the Darkstone of Terokk |use Rod of Purification##31610
.' Purify the Darkstone of Terokk |q 10839/1
|model Darkstone of Terokk##2710
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
.click Cursed Egg##477
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
goto 35,76.5
.' Use your Sha'tari Torch on corpses |use Sha'tari Torch##31769
.' Burn 8 Slain Sha'tar Vindicator corpses |q 10913/1
.' Burn 8 Slain Auchenai Warrior corpses |q 10913/2
|modelnpc Slain Auchenai Warrior##21846
|modelnpc Slain Sha'tar Vindicator##21859
step
goto 31,76.1
.talk 22446
..turnin 10913
..accept 10914
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
.kill Reanimated Exarch##22452 |q 10915/1
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
.' Extinguish the Emerald Signal Fire|q 10874/2
step
goto 56,72.7 |n
.' The path up to the Bloodstone and Violet Signal Fires starts here |goto 56.0,72.7,0.3 |noway |c |tip It is a tunnel path inside the tree. The entrance is behind the tree to the right a little.
step
goto 56.1,72.4
.click Bloodstone Signal Fire##7290 |tip Up the path inside the tree, on your left as you reach the top.
.' Extinguish the Bloodstone Signal Fire |q 10874/4
step
goto 56.7,69.2
.click Violet Signal Fire##5151 |tip Across the hanging bridge from the Bloodstone Signal Fire.
.' Extinguish the Violet Signal Fire|q 10874/3
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
|fly Shattrath
step
goto 52.6,21
.talk 22292
..turnin 10889
.' You are about to fight three waves of birds and a bird boss. Make sure you're ready.
.talk 22373
..accept 10879
step
goto 52.6,21
.' Fight off the Minions of Terokk and eventually the Avatar of Terokk
.' Thwart the Attack |q 10879/1
|modelnpc Avatar of Terokk##22375
|modelnpc Minion of Terokk##22376
step
goto 52.6,21
.talk 22292
..turnin 10879
step
|fly Shattrath
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
goto 37.0,49.5
.talk 18675
..accept 10030
step
goto 32.4,56.5
.click Restless Bones |tip They look like white-glowing bones laying on the ground all around this area.  They are kind of rare, so you may need to search around a little for them.
.get 10 Restless Bones |q 10030/1
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
goto 35.1,66.3
.talk 19417
..turnin 10030
..accept 10031
step
goto 31.7,64.9
.kill 10 Lost Spirit##18460+ |q 10031/1
step
goto 31.0,76.2
.talk 22481
..accept 10929
step
goto 40.1,77.5
.kill 10 Broken Skeleton##16805+ |q 10031/2
.' You can find more around [48.2,71.9]
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
goto 48.0,75.1
.from Decrepit Clefthoof##22105+
.' Use your Fumper next to Decrepit Clefthoof corpses |use Fumper##31825 |tip You may have to do this multiple times until the huge worm, Hai'shulud spawns.
.from Hai'shulud##22038
.get Enormous Bone Worm Organs |q 10930/1
step
goto 53.7,72.3
.talk 22424
..accept 10898
.' Follow Skywing and protect him
.' Escort Skywing |q 10898/1
step
goto 42.1,65.6 |n
.' Fly into the Ring of Observance and follow this path |goto 42.1,65.6,0.5 |noway |c
step
goto Terokkar Forest 44.9,65.6 |n
.' Enter Sethekk Halls here |goto Sethekk Halls |noway |c
step
goto Sethekk Halls 72.2,35.5
.talk 54840
..turnin 10180
step
'Leave the Sethekk Halls |goto Terokkar Forest
step
goto Terokkar Forest 31.0,76.2
.talk 22481
..turnin 10930
step
goto 37.0,49.5
.talk 18675
..turnin 10031
step
goto Shattrath City,52.6,21.0
.talk 22292
..turnin 10898
step
goto 50.3,18.3
.talk 22429
..turnin 10917
step
'At this point you will need to Farm instances for reuptation.
.' You can farm Auchenai Crypts until 5,999/6,000 Friendly.  After you reach Honored though, you will only be able to do Heroic mode for reputation.
.' You can also grind Shadow Labyrinth and Sethekk Halls up until Exalted without Heroic mode active.  You can gain addition reputation by doing it on Heroic however.
.' Click here to move onto Daily Heroic quests that may be available for reputation turn ins. |confirm
step
|fly Shattrath
step
label h_daily
goto Shattrath City,75.1,36.6
.talk 24369
.accept 11373 |daily |or 
.accept 11372 |daily |or
.accept 11374 |daily |or
.accept 11375 |daily |or
.' If none of these quests are available, click here. |confirm
step
|fly Allerian Stronghold
step
goto Terokkar Forest,39.6,60.3 |n
.' Go straight in, through the swirling portal at [39.6,57.7]
.' Enter the Mana-Tombs. |goto Mana-Tombs |noway|c
only if havequest(11373)
step
'Kill your way to the end of the instance.
.from Nexus-Prince Shaffar##18344
.get Shaffar's Wondrous Amulet##33835 |q 11373/1
only if havequest(11373)
step
.' Leave the Mana-Tombs. |goto Terokkar Forest |noway|c
only if havequest(11373)
step
goto Terokkar Forest,43.2,65.6 |n
.' Go straight in, through the swirling portal at [44.9,65.6]
.' Enter Sethekk Halls. |goto Sethekk Halls|noway|c
only if havequest(11372)
step
'Kill your way to the end of the instance.
.from Talon King Ikiss##18473
.get The Headfeathers of Ikiss##33834 |q 11372/1
only if havequest(11372)
step
.' Leave Sethekk Halls. |goto Terokkar Forest |noway|c
only if havequest(11372)
step
goto Terokkar Forest,36.0,65.6 |n
.' Go straight in, through the swirling portal at [34.3,65.6]
.' Enter the Auchenai Crypts. |goto Auchenai Crypts |noway|c
only if havequest(11374)
step
'Kill your way to the end of the instance.
.from Exarch Maladaar##18373
.get The Exarch's Soul Gem##33836 |q 11374/1
only if havequest(11374)
step
.' Leave Auchenai Crypts. |goto Terokkar Forest |noway|c
only if havequest(11374)
step
goto Terokkar Forest,39.6,71.0 |n
.' Go straight into the building and go into the swirling portal to the Shadow Labyrinth at [39.6,73.5]
.' Enter the Shadow Labyrinth. |goto Shadow Labyrinth |noway|c
only if havequest(11375)
step
'Kill your way to the end of the instance.
.from Murmur##18708
.get Murmur's Whisper##33840 |q 11375/1
only if havequest(11375)
step
.' Leave the Shadow Labyrinth. |goto Terokkar Forest |noway|c
only if havequest(11375)
step
|fly Shattrath
step
goto Shattrath City,75.1,36.6
.talk 24369
.turnin 11373 |daily |or
.turnin 11372 |daily |or
.turnin 11374 |daily |or
.turnin 11375 |daily |or
.' Click here to return to the list of dailies |next "h_daily" |only if rep('Lower City')<=Revered |confirm
|next "exalted" |only if rep('Lower City')==Exalted
step
label exalted
'Congratulations, you are now Exalted with the Lower City!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\The Sha'tar",[[
description This guide will walk you through
description gaining Exalted with The Sha'tar.
step
goto Shattrath City,61.2,12.6
.talk 19684
..accept 10210
step
goto 54,44.8
.talk 18481
..turnin 10210
step
|fly Allerian Stronghold
step
goto 35.1,65.1
.talk 19697
..accept 10227
step
goto 35.1,66.3
.talk 19417
..turnin 10227
..accept 10228
step
|fly Shattrath
step
goto Shattrath City,53.7,32.6
.talk 19715
..turnin 10228
..accept 10231
step
goto 43.6,29.7
.talk 19720
.' Tell him Ezekiel said that you might have a certain book...
.' Beat down "Dirty" Larry for information |q 10231/1
..turnin 10231
..accept 10251
step
goto Nagrand,51.8,56.8
.talk 19844
..turnin 10251
..accept 10252
step
goto 30.1,64.2
.from Aged Clefthoof##17133+
.get Aged Clefthoof Blubber##28668 |q 10252/3
.' They are hard to find, searching will most likely be required.  They are all around Oshu'gun
step
goto 25.2,49.1
.from Mountain Gronn##19201+
..get Mountain Gronn Eyeball |q 10252/1
.' More can be found around [26.9,30.2], up and down the ramp
step
goto 30.9,32.9
.from Greater Windroc##17129+
..get Flawless Greater Windroc Beak |q 10252/2
step
goto 51.8,56.9
.talk 19844
..turnin 10252
..accept 10253
step
goto Terokkar Forest,39.6,71.3
.from Levixus##19847
.get 1 The Book of the Dead##28677 |q 10253/1
step
goto 35.1,66.2
.talk 19417
.turnin 10253
step
goto 35.0,65.2
.talk 19698
.accept 10164
step
goto Terokkar Forest,34.4,65.6 |n
' Enter the swirling portal to Auchenai Crypts. |goto Auchenai Crypts |noway|c
step
'Kill your way until you reach the end.
.kill Exarch Maladaar##18373 |q 10164/1
step
.' Leave the instance. |goto Terokkar Forest |noway|c
step
goto 35.0,65.2
.talk 19698
.turnin 10164
step
goto 31.1,76.5
.talk 22456
..accept 10877
step
goto 31.4,75.7
.talk 22364
..accept 10873
step
goto 43.9,76.4
.' Collect Restless Bones from the ground as you travel
.' Click the Massive Treasure Chest
..get the Dread Relic |q 10877/1
step
goto 49.7,76.2
.talk 22462
..accept 10920
step
goto 52.6,78.5
.kill 20 Dreadfang Widow##18467+ |q 10920/1
step
goto 49.7,76.2
.talk 22462
..turnin 10920
..accept 10921
step
goto 54.2,81.7
.kill Terokkarantula##20682 |q 10921/1	
step
goto 49.7,76.2
.talk 22462
..turnin 10921
..accept 10926
step
goto 31.1,76.5
.talk 22456
..turnin 10877
..accept 10923
step
goto 50.0,67.8
.from Auchenai Death-Speaker##21242+, Auchenai Doomsayer##21285+
.collect 20 Doom Skull##31812 |q 10923
step
goto 48.7,67.2
.' Use your Dread Relic on the Writhing Mound Summoning Circle |use Dread Relic##31811 |tip It looks like a purple glowing symbol on the ground.
.kill Teribus the Cursed##22441+ |q 10923/1
step
goto 31.1,76.5
.talk 22456
..turnin 10923
step
|fly Wildhammer Stronghold
step
goto 36.4,56.9
.talk 21937
..accept 10680
step
 goto 42.2,45.1
.talk 21024
..turnin 10680
..accept 10458
step
goto 46.5,46.9
.' Use your Totem of Spirits |use Totem of Spirits##30094 |tip Kill the mobs next to the totems you plant.
.from Enraged Earth Spirit##21050+
.' Capture 8 Earthen Souls |q 10458/1
.from Enraged Fire Spirit##21061+
.' Capture 8 Fiery Souls |q 10458/2
step
.goto 42.2,45.1
.talk 21024
..turnin 10458
..accept 10480
step
goto 45.8,27.9
.' Use your Totem of Spirits |use Totem of Spirits##30094 |tip Kill the mobs next to the totems you plant.
.from Enraged Water Spirit##21059+ |tip You can find them in the pools of water.
.' Capture 5 Watery Souls |q 10480/1
step
goto 42.2,45.1
.talk 21024
..turnin 10480
..accept 10481
step
goto 59.9,69.1
.' Use your Totem of Spirits |use Totem of Spirits##30094 |tip Kill the mobs near the totems you plant.
.from Enraged Air Spirit##21060+
.' Capture 10 Airy Souls |q 10481/1
step
goto 42.2,45.1
.talk 21024
..turnin 10481
..accept 10513
step
goto 53.9,23.5
.talk 21183
..turnin 10513
..accept 10514
step
goto 53.5,17.3
.' Use Oronok's Boar Whistle next to Shadowmoon Tuber Mounds while boars are nearby |use Oronok's Boar Whistle##30462 |tip They look like carrots sticking out of the ground around this area.
.' If a boar is close it will run over and eat the tuber
.' Click the Shadowmoon Tuber's that spawn |model Shadowmoon Tuber##414
.get 10 Shadowmoon Tuber |q 10514/1
step
goto 53.9,23.5
.talk 21183
..turnin 10514
..accept 10515
step
goto 56.1,15.8
.click Ravenous Flayer Egg##477  
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
goto 44.5,23.6
.talk 21291
..turnin 10521
..accept 10522
step
goto 52.6,27.4
.from Coilskar Sorceress##19767+, Coilskar Myrmidon##19765+
.collect Coilskar Chest Key##30426 |n
.' Click Coilskar Chests |tip They look like big gray stone containers around this area.
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
goto Shadowmoon Valley,53.9,23.5
.talk 21183
..turnin 10541
step
goto 47.6,57.2
.talk 21293
..turnin 10546
..accept 10547
step
goto 44.8,58.2
.click Rotten Arakkoa Egg##7138 
.get Rotten Arakkoa Egg |q 10547/1
step
goto Shattrath City,64.0,70.0
.talk 21411
..turnin 10547
..accept 10550
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
.' Use your Blood Elf Disguise |use Blood Elf Disguise##30639
.' Talk to Grand Commander Ruusk at [46.5,71.9]
.' Deliver Illidan's Message |q 10577/1
step
goto 47.6,57.2
.talk 21293
..turnin 10577
..accept 10578
step
goto 61.4,57.0
.from Ruul the Darkener##21315
.get Third Fragment of the Cipher of Damnation |q 10578/1
step
goto 47.5,57.2
.talk 21293
..turnin 10578
..accept 10579
step
goto 53.9,23.5
.talk 21183
..turnin 10579
..accept 10588
step
goto 43.1,44.9
.' Use the Cipher of Damnation while standing in front of the altar |use Cipher of Damnation##30657
.' Go to [42.8,44.7]
.talk 21183 |tip It may take a minute or so for him to show up.
..' Tell him you are ready.
.' Follow Oronok Torn-heart
.kill Cyrukh the Firelord##21181 |q 10588/1
step
goto 42.2,45.1
.talk 21024
..turnin 10588
step
|fly Shattrath
step
goto Shattrath City,54.8,44.3
.talk 18166
..accept 10883
step
goto 54.0,44.8
.talk 18481
.turnin 10883
..accept 10884
..accept 10885
..accept 10886
..' These quests will require that you do Heroic Shattered Halls, Shadow Labyrinth, The Steamvault and The Arcatraz.
step
|fly Honor Hold
step
goto Hellfire Peninsula,47.5,52.0 |n
'Enter the swirling portal to Shattered Halls. |goto The Shattered Halls|noway|c
step
'Kill your way to the end of the instance.
.' After the first boss you will have 55 minutes to clear your way to the last boss.
.from Shattered Hand Executioner##17301
.get Unused Axe of the Executioner##31716 |q 10884/1
step
'Leave the Shattered Halls. |goto Hellfire Peninsula |noway |c
step
|fly Telredor
step
goto Zangarmarsh,50.4,40.8 |n
.' Swim to the other side. |goto 52.0,38.0,0.5 |noway|c
step
goto 50.4,33.3|n
.' Enter the instance. |goto The Steamvault |noway|c
step
'In order to reach the final boss you will need to kill the other bosses.
.from Warlord Kalithresh##17798
..get Kalithresh's Trident##31721 |q 10885/1
step
'Leave the instance. |goto Zangarmarsh |noway|c
step
goto 52.0,38.0 |n
.' Swim up the pipe to the other side. |goto 50.4,40.8,0.5 |noway|c
step
goto Terokkar Forest,39.6,73.5
'Enter the Shadow Labyrinth |goto Shadow Labyrinth |noway|c
step
'Kill your way to Murmur at the end of the instance.
.from Murmur##18708
.get Murmur's Essence##31722 |q 10885/2
step
'Leave the Shadow Labyrinth |goto Terokkar Forest |noway|c
step
|fly Cosmowrench
step
goto Netherstorm,74.4,57.7 |n
.' Click the Arcatraz gate and enter. |goto The Arcatraz |noway|c
step
'Fight your way to the end of the instance.
.' Defeat Harbinger Skyriss and make sure Millhouse lives.
.' Rescue Millhouse Manastorm. |q 10886/1
step
'Leave the instance. |goto Netherstorm |noway|c
step
|fly Shattrath
step
goto 54.0,44.8
.talk 18481
..turnin 10884
..turnin 10885
..turnin 10886
step
|fly Area 52
step
goto 32.4,64.2
.talk 19880
..accept 10265
step
goto 42.4,72.8
.from Pentatharon##20215 |tip To the right as you enter the ruins, up on a small stage looking platform.
.get Arklon Crystal Artifact |q 10265/1
step
goto 32.4,64.2
.talk 19880
..turnin 10265
..accept 10262
step
goto 30.2,75.5
.from Zaxxis Stalker##19642+, Zaxxis Raider##18875+
.get 10 Zaxxis Insignia |q 10262/1
step
goto 32.4,64.2
.talk 19880
..turnin 10262
..accept 10205
.' A Heap of Ethereals becomes a daily after you turn the quest in.
step
goto 28.2,79.4
.kill Warp-Raider Nesaad##19641 |q 10205/1 |tip In a small camp.
step
goto 32.4,64.2
.talk 19880
..turnin 10205
..accept 10266
step
goto 46.7,56.9
.talk 20066
..turnin 10266
..accept 10267
step
goto 46.7,56.9
.talk 20066
..turnin 10266
..accept 10267
step
goto 46.7,56.9
.talk 20066
..turnin 10267
..accept 10268
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
goto 29.1,40.5
.' Use the Triangulation Device in your bags |use Triangulation Device##29018
.' A red arrow will appear showing you where to go.
.' Discover the second triangulation point |q 10275/1
step
goto 34.6,38.0
.talk 20112
..turnin 10275
..accept 10276
step
goto 53.5,21.5
.from Culuthas##20138+
..get Ata'mal Crystal |q 10276/1
step
goto 45.9,36.0
.talk 20084
.turnin 10276
..accept 10280
step
|fly Shattrath
step
goto Shattrath City,54.0,44.6
.talk 18481
.turnin 10280
..accept 10704
step
|fly Cosmowrench
step
goto Netherstorm,70.6,69.7 |n
.' Enter the Mechanar. |goto The Mechanar |noway|c
step
'Kill your way through the instance.
.from Pathaleon the Calculator##19220
.get Bottom Shard of the Arcatraz Key##31086 |q 10704/2
step
'Leave the instance. |goto Netherstorm |noway|c
step
goto Netherstorm,71.7,55.0 |n
'Enter The Botanica. |goto The Botanica |noway|c
step
'Kill your way through the instance.
.from Warpsplinter##17977
.get Top Shard of the Arcatraz Key##31085 |q 10704/1
step
'Leave the instance. |goto Netherstorm |noway|c
step
|fly Shattrath
step
goto Shattrath City,54.0,44.6
.talk 18481
.turnin 10704
..accept 10882
step
|fly Cosmowrench
step
goto Netherstorm,74.4,57.7 |n
.' Enter The Arcatraz. |goto The Arcatraz |noway|c
step
'Kill your way until you reach Harbinger Skyriss.
.kill Harbinger Skyriss##20912 |q 10882/1
step
'Leave the instance. |goto Netherstorm |noway|c
step
|fly Shattrath
step
goto Shattrath City,54.0,44.6
.talk 18481
.turnin 10882
step
|fly Wildhammer Stronghold
step
goto 56.3,59.6
.click Baar'ri Tablet Fragment##6420
.from Ashtongue Worker##21455
.get 12 Baa'ri Tablet Fragment |q 10683/1
only if rep ('The Scryers') >= Neutral
step
goto 62.6,28.4
.talk 21402
..accept 10568
only if rep ('The Aldor') >= Friendly
step
goto 58.8,36.5
.click Baar'ri Tablet Fragment##6420
.from Ashtongue Worker##21455
.get 12 Baa'ri Tablet Fragment |q 10683/1
only if rep ('The Scryers') >= Neutral
step
goto 56.5,34.8
.' Click Baar'ri Tablet Fragment |tip They look like green glowing tablets on the ground around this area.
.from Ashtongue Worker##21455
.get 12 Baa'ri Tablet Fragment |q 10568/1
only if rep ('The Aldor') >= Friendly
step
goto 56.3,59.6
.talk 21955
..turnin 10683
..accept 10684
only if rep ('The Scryers') >= Neutral
step
goto 62.6,28.4
.talk 21402
..turnin 10568
..accept 10571
only if rep ('The Aldor') >= Friendly
step
goto 57.2,32.9
.from Oronu the Elder##21663
.get Orders From Akama |q 10684/1
only if rep ('The Scryers') >= Neutral
step
goto 57.2,32.9
.from Oronu the Elder##21663
.get Orders From Akama |q 10571/1
only if rep ('The Aldor') >= Friendly
step
goto 56.3,59.6
.talk 21955
..turnin 10684
..accept 10685
only if rep ('The Scryers') >= Neutral
step
goto 62.6,28.4
.talk 21402
..turnin 10571
..accept 10574
only if rep ('The Aldor') >= Friendly
step
goto 57.1,73.3
.from Haalum##21711 |tip You must destroy the totems first before you can attack him.
.get Haalum's Medallion Fragment |q 10685/2
only if rep ('The Scryers') >= Neutral
step
goto 57.1,73.3
.from Haalum##21711 |tip You must destroy the totems first before you can attack him.
.get Haalum's Medallion Fragment |q 10574/2
only if rep ('The Aldor') >= Friendly
step
goto 51.3,52.9
.from Eykenen##21709 |tip You must destroy the totems first before you can attack him.
.get Eykenen's Medallion Fragment |q 10685/1
only if rep ('The Scryers') >= Neutral
step
goto 51.3,52.9
.from Eykenen##21709 |tip You must destroy the totems first before you can attack him.
.get Eykenen's Medallion Fragment |q 10574/1
only if rep ('The Aldor') >= Friendly
step
goto 48.2,39.8
.from Uylaru##21710 |tip You must destroy the totems first before you can attack him.
.get Uylaru's Medallion Fragment |q 10685/4
only if rep ('The Scryers') >= Neutral
step
goto 48.2,39.8
.from Uylaru##21710 |tip You must destroy the totems first before you can attack him.
.get Uylaru's Medallion Fragment |q 10574/4
only if rep ('The Aldor') >= Friendly
step
goto 49.8,23.1
.from Lakaan##21416 |tip You must destroy the totems first before you can attack him.
.get Lakaan's Medallion Fragment |q 10685/3
only if rep ('The Scryers') >= Neutral
step
goto 49.8,23.1
.from Lakaan##21416 |tip You must destroy the totems first before you can attack him.
.get Lakaan's Medallion Fragment |q 10574/3
only if rep ('The Aldor') >= Friendly
step
goto 56.3,59.6
.talk 21955
..turnin 10685
..accept 10686
only if rep ('The Scryers') >= Neutral
step
goto 62.6,28.4
.talk 21402
..turnin 10574
..accept 10575
only if rep ('The Aldor') >= Friendly
step
goto 57.3,49.6
.talk 21826
..turnin 10686
..accept 10622
only if rep ('The Scryers') >= Neutral
step
goto 57.3,49.6
.talk 21826
..turnin 10575
..accept 10622
only if rep ('The Aldor') >= Friendly
step
goto 57.4,49.7 |n
.' Go back to the top of "Warden's Cage" |goto 57.5,49.8,0.5 |noway |c
step
goto 57.1,48.6
.kill Zandras##21827 |q 10622/1 |tip He patrols the top of the prison wall, so you may need to search for him.
step
goto 57.4,49.7 |n
.' Follow the path down |goto 57.4,49.7,0.5 |noway |c
step
goto 57.3,49.6
.talk 21826
..turnin 10622
..accept 10628
step
goto 57.5,47.8 |n
.' Go to this spot and swim down to the other side |goto 57.5,47.8,0.5 |noway |c
step
goto 58.1,48.2
.talk 21700
.turnin 10628
..accept 10705
step
|fly Cosmowrench
step
goto Netherstorm,74.4,57.7
'Click the gate and enter the swirling portal to The Arcatraz. |goto The Arcatraz |noway|c
step
goto The Arcatraz,31.7,24.9
.clicknpc Udalo##21962 |tip It is in the room before Harbinger Skyriss, the final boss of the instance.
.turnin 10705
..accept 10706
step
'Leave the Instance. |goto Netherstorm |noway|c
step
|fly Wildhammer Stronghold
step
goto Shadowmoon Valley,58.1,48.2
.talk 21700
.turnin 10706
..accept 10707
step
goto Shadowmoon Valley,71.3,35.6
.kill Shadowmoon Soulstealer##22061+ |n |tip There will be 3 of them.
.' Once you kill him, it will trigger an event. Kill the Shadowmoon Retainers that spawn.
.from Shadowlord Deathwail##22006+
.get Heart of Fury##31307 |q 10707/1
step
goto Shadowmoon Valley,58.1,48.2
.talk 21700
.turnin 10707
..accept 10708
step
goto 53.3,59.0
.from Val'zareq the Conqueror##21979 |tip He is an elite Blood Elf on a Hawkstrider patrolling this area with Eclipsion mobs protecting him.
.collect 1 The Journal of Val'zareq##31345 |n
.' Click The Journal of Val'zareq in your bags |use The Journal of Val'zareq##31345
..accept 10793
step
goto 51.4,72.8
.click Crystal Prison##6905 
.turnin 10793
..accept 10781
step
'Fight off the waves of enemies that come.
.' Crimson Sigil Forces Annihilated. |q 10781/1
step
|fly Shattrath
step
goto Shattrath City,54,44.8
.talk 18481
.turnin 10781
..turnin 10708
step
'At this point, you will need to grind for reputation. You can farm reputation in the instances below:
.' The Mechanar
.' The Botanica
.' and The Arcatraz.
..' Doing these on Heroic will yield more reputation gains - However you can only do it on Heroic once per day.
'Earn Exalted status with The Sha'tar |condition rep("The Sha'tar")==Exalted |next "exalted" 
step
label exalted
'Congratulations, you are now Exalted with The Sha'tar!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\The Aldor",[[
description This guide will walk you through becoming
description Exalted with The Aldor faction.
step
goto Shattrath City,61.2,12.6
.talk 19684
..accept 10210
step
goto 54,44.8
.talk 18481
..turnin 10210 
step
goto 54.8,44.3
.talk 18166
..accept 10211
..'Follow Khadgar's Servant
|modelnpc Khadgar's Servant##19685
step
'Follow Khadgar's Servant until the tour is over |q 10211/1
|modelnpc Khadgar's Servant##19685
step
goto 54.8,44.3
.talk 18166
..turnin 10211
..accept 10551 |instant
step
goto 54.8,44.3
.talk 18166
..accept 10554
step
goto 41.7,38.6 |n
.' Ride the elevator up to the Aldor Rise |goto Shattrath City,41.7,38.6,0.5 |noway |c
step
goto Shattrath City,35.1,32.4
.talk 23271
.accept 11038
step
goto 30.7,34.6
.talk 18537
.accept 10325
..accept 10653
step
goto 24,29.7
.talk 18538
..turnin 10554
..accept 10021
..accept 10420
step
goto 64.5,15.1
.talk 18597
.accept 10020
step
|fly Allerian Stronghold
step
goto Terokkar Forest,39.0,59.7
.from Cabal Spell-weaver##21902+,Cabal Initiate##21907+,Cabal Skirmisher##21661+
..collect 10 Mark of Kil'jaeden##29425
step
goto Terokkar Forest,49.2,20.3
.click the Eastern Altar
.' Purify the Eastern Altar |q 10021/2
step
goto 50.7,16.6
.click the Northern Altar
.' Purify the Northern Altar |q 10021/1
step
goto 48.1,14.5
.click the Western Altar
.' Purify the Western Altar |q 10021/3
step
goto Terokkar Forest,61.3,25.3
from Stonegazer##18648+
.get Stonegazer's Blood |q 10020/1
step
|fly Shattrath
step
goto 30.7,34.6
.talk 18537
.turnin 10325
step
goto 64.5,15.1
.talk 18597
.turnin 10020
step
goto Shattrath City,24,29.7
.talk 18538
..turnin 10021
step
goto Shattrath City,35.1,32.4
.talk 23271
.accept 11038
step
|fly Area 52
step
goto 32.1,64.2
.talk 19466
.turnin 11038
..accept 10241
step
goto 26.3,66.7
.kill 8 Sunfury Magister##18855+ |q 10241/1
.kill 8 Sunfury Bloodwarder##18853+ |q 10241/2
step
goto 32.1,64.2
.talk 19466
..turnin 10241
..accept 10313
step
goto 32.1,64.2
.talk 19467
..accept 10243
step
goto 25.7,60.6
.' Stand next to the Northern Pipeline
.' Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
.' Measure the Northern Pipeline |q 10313/1
step
goto 20.9,66.9
.' Stand next to the Western Pipeline
.' Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
.' Measure the Western Pipeline |q 10313/4
step
goto 20.7,70.7
.' Stand next to the Southern Pipeline
.' Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
.' Measure the Southern Pipeline |q 10313/3
step
goto 23.2,68.2
.click the B'naar Control Console |tip Inside the doorway northeast of the Southern Pipeline, to the left.
..turnin 10243
..accept 10245
step
goto 29,72.7
.' Stand next to the Eastern Pipeline
.' Use your Warp-Attuned Orb |use Warp-Attuned Orb##29324
.' Measure the Eastern Pipeline |q 10313/2
step
goto 32.1,64.2
.talk 19466
..turnin 10313
step
goto 32.1,64.2
.talk 19467
..turnin 10245
..accept 10299
step
'Go inside Manaforge B'naar to 23.3,68.6 |goto 23.9,70.7
.from Overseer Theredis##20416
.get B'naar Access Crystal |q 10299/2
step
goto 23.2,68.1
.' Kill all Warp-Engineers in the nearest area to make your life easier.
.click the B'naar Control Console
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge B'naar |q 10299/1
step
goto 32.1,64.2
.talk 19467
..turnin 10299
..accept 10321
step
goto 32.1,64.2
.talk 19466
..accept 10246
step
goto 45.9,79.4
.kill 8 Sunfury Arcanist##20134+ |q 10246/2
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
step
goto 32.1,64.2
.talk 19466
..turnin 10246
..accept 10328
step
goto 32.1,64.2
.talk 19467
..turnin 10321
..accept 10322
step
goto 57.9,63.4
.from Sunfury Conjurer##20139+
.get 1 Sunfury Arcane Briefing|q 10328/2
.from Sunfury Bowman##20207+, Sunfury Centurion##20140+
.get 1 Sunfury Military Briefing|q 10328/1
step
'Go inside Manaforge Duro to 60.0,68.5|goto 60.0,68.5
.from Overseer Athanel##20435
.get 1 Duro Access Crystal|q 10322/2
step
goto 59.1,66.8
.click the Duro Control Console
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge Duro |q 10322/1
step
goto 32.1,64.2
.talk 19466
..turnin 10328
..accept 10431
step
goto 32.1,64.2
.talk 19467
.turnin 10322
..accept 10323
step
goto 34.8,38.3
.talk 20780
..turnin 10431
..accept 10380
step
goto 30.8,40.8
.kill 3 Daughter of Destiny##18860+ |q 10380/2
step
goto 26.4,42.3
.kill 6 Gan'arg Warp-Tinker##20285+ |q 10380/1
.kill 6 Mo'arg Warp-Master##20326+ |q 10380/3
step
goto 26.7,36.8 |tip It's inside Manaforge Ara.
.from Overseer Azarad##20685 |tip He walks around inside Manaforge Ara and stops in at this small side room.
.get Ara Access Crystal##29411 |q 10323/2
step
goto 26.0,38.8
.click the Ara Control Console
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge Duro |q 10323/1
step
goto 34.8,38.3
.talk 20780
..turnin 10380
..accept 10381
step
goto 32.1,64.2
.talk 19466
..turnin 10381
step
goto 32.0,64.2
.talk 19467
.turnin 10323
..accept 10407
step
goto 37.1,27.8
.from Forgemaster Morug##20800
..get First Half of Socrethar's Stone |q 10407/1
step
goto 38.0,27.4
.from Terrorguard Protector##21923+, Gan'arg Mekgineer##16949+, Wrathbringer##18858+, Cyber-Rage Forgelord##16943+
.collect 10 Mark of Sargeras##30809+ |q 10653/1
..collect 1 Fel Armament |q 10420/1
'More can be found at :
.' [40.4,22.9]
.' [42.4,21.5]
step
goto 40.8,19.6
.from Silroth##20801+
..get Second Half of Socrethar's Stone |q 10407/2
step
goto 32.0,64.2
.talk 19467
.turnin 10407
..accept 10410
step
|fly Shattrath
step
goto Shattrath City,30.8,34.6
.from Adyen the Lightwarden##18537+
..turnin 10653
step
goto 24,29.7
.talk 18538
.turnin 10410
.turnin 10420
..accept 10409
step
|fly The Stormspire
step
goto Netherstorm,36.4,18.4 |n
.' Click Voren'thal's Package in your inventory. |use Voren'thal's Package##30260
.collect 1 Socrethar's Teleportation Stone##29796 |q 10409 |n
.collect 1 Voren'thal's Presence##30259 |q 10409
'Step into the teleporter
'Use the Socrethar's Teleportation Stone that was provided |use Socrethar's Teleportation Stone##29796 |goto 30.6,17.6,1 |noway|c
step
goto 29.6,14.2
'Use Voren'thal's Presence on Socrethar. |use Voren'thal's Presence##30259
.' Defeat Socrethar.
.' Deathblow to the Legion. |q 10409/1
|modelnpc Socrethar##20132
step
|fly Shattrath
step
goto 24,29.7
.talk 18538
.turnin 10409
step
|fly Altar of Sha'tar
step
goto Shadowmoon Valley,61.2,29.2
.talk 21860
.accept 10587
step
goto 61.2,29.1
.talk 21822
..accept 10619
step
goto 62.6,28.4
.talk 21402
..accept 10568
step
goto 58.8,36.5
.kill 3 Ashtongue Handler##21803+ |q 10619/1
.kill 4 Ashtongue Warrior##21454+ |q 10619/2
.kill 6 Ashtongue Shaman##21453+ |q 10619/3
.click Baar'ri Tablet Fragment##6420
.from Ashtongue Worker##21455
.get 12 Baa'ri Tablet Fragment |q 10568/1
step
goto 71.1,52.0
.from Demon Hunter Initiate##21180+, Demon Hunter Supplicant##21179+
.get 8 Sunfury Glaive |q 10587/1
step
goto 61.2,29.1
.talk 21822
..turnin 10619
..accept 10816
step
goto 62.6,28.4
.talk 21402
..turnin 10568
..accept 10571
step
goto 61.2,29.2
.talk 21860
.turnin 10587
..accept 10637
step
goto 57.2,32.9
.from Oronu the Elder##21663
.get Orders From Akama |q 10571/1
step
goto 67.4,37.6
.kill 8 Shadowmoon Slayer##22082+ |q 10816/1
.kill 8 Shadowmoon Chosen##22084+ |q 10816/2
.kill 4 Shadowmoon Darkweaver##22081+ |q 10816/3
step
goto 70.0,51.4
.from Sunfury Warlock##21503+
.collect 1 Scroll of Demonic Unbanishing##30811 |n
.' Use the Scroll of Demonic Unbanishing on Azaloth |use Scroll of Demonic Unbanishing##30811
.' Free Azaloth |q 10637/1
step
goto 61.2,29.2
.talk 21860
.turnin 10637
..accept 10640
step
goto 61.2,29.1
.talk 21822
..turnin 10816
step
goto 62.6,28.4
.talk 21402
..turnin 10571
..accept 10574
step
goto 49.8,23.1
.from Lakaan##21416 |tip You must destroy the totems first before you can attack him.
.get Lakaan's Medallion Fragment |q 10574/3
step
goto 48.2,39.8
.from Uylaru##21710 |tip You must destroy the totems first before you can attack him.
.get Uylaru's Medallion Fragment |q 10574/4
step
goto 51.3,52.9
.from Eykenen##21709 |tip You must destroy the totems first before you can attack him.
.get Eykenen's Medallion Fragment |q 10574/1
step
goto 57.1,73.3
.from Haalum##21711 |tip You must destroy the totems first before you can attack him.
.get Haalum's Medallion Fragment |q 10574/2
step
goto 62.6,28.4
.talk 21402
..turnin 10574
..accept 10575
step
goto 57.3,49.6
.talk 21826
..turnin 10575
step
|fly Telaar
step
goto Nagrand,27.2,43.0
.talk 18417
.turnin 10640
..accept 10669
..accept 10668
..accept 10641
step
goto Zangarmarsh,16.2,40.7
.' Use your Imbued Silver Spear in this spot |use Imbued Silver Spear##30853
.kill Xeleth##21894 |q 10669/1
step
|fly The Stormspire
step
goto Netherstorm,39.6,20.5
.from Wrath Priestess##18859+
.collect Freshly Drawn Blood##30850 |n
.' Use the Freshly Drawn Blood immediately |use Freshly Drawn Blood##30850 |tip It only last 1 minute, then it disappears if you don't use it in time.
.kill Avatar of Sathal##21925 |q 10641/1
step
|fly Wildhammer Stronghold
step
goto Shadowmoon Valley,28.3,49.5
.kill Lothros##21928 |q 10668/1 |tip He walks around this area, so you may need to search for him.
step
|fly Telaar
step
goto Nagrand,27.3,43.1
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
.turnin 10646
..accept 10649
step
|fly Allerian Stronghold
step
goto Terokkar Forest,39.6,71.0 |n
'Click the doors to the Shadow Labyrinth.
.' Go forth into the Shadow Labyrinth. |goto Shadow Labyrinth |noway|c
step
'Kill through the instance until you reach Blackheart the Inciter.
.from Blackheart the Inciter##18667
..get 1 Book of Fel Names##30808|q 10649/1
step
'Leave the instance. |goto Terokkar Forest |noway|c
step
|fly Telaar
step
goto Nagrand,27.3,43.1
.talk 18417
.turnin 10649
..accept 10650
step
|fly Altar of Sha'tar
step
goto Shadowmoon Valley,61.2,29.2
.talk 21860
.turnin 10650
..accept 10651
step
goto Shadowmoon Valley,68.6,52.7
.kill Netharel##21164 |q 10651/2 |tip He is walking amongst the Demon Hunter Supplicants.
step
goto 69.6,54.1
.kill Alandien##21171 |q 10651/4
step
goto 72.2,53.7
.kill Varedis##21178 |q 10651/1
step
goto 72.4,48.4
.kill Theras##21168 |q 10651/3
step
goto Shadowmoon Valley,61.2,29.2
.talk 21860
.turnin 10650
step
'At this point, you will need to grind repeatable quests.  
.'You can grind Marks of Kil'jaeden if you are below Honored, or you can farm Marks of Sargeras.
..' Every spot that drops either of these marks also drops Fel Armaments, which give 100 more rep than 10 marks.
'Click here to proceed. |confirm
step
label farming
|fly Wildhammer Stronghold
step
goto 22.5,34.6
.from Wrathwalker##19740+, Terrormaster##21314+, Makazradon##21501+, Shadow Council Warlock##21302+, Mo'arg Weaponsmith##19755+
.collect Mark of Sargeras###30809 |tip You will need to collect these in multiples of 10.
.collect Fel Armament##29740
'When you're ready to turn in, click here. |confirm
step
|fly Shattrath
step
label marks
goto Shattrath City,30.8,34.6
.talk 18537
.accept 10654 |n
.' Click here to go back to farming. |next "farming" |confirm
.' Click here to turn in Fel Armaments |next "fel" |confirm
.' Earn Exalted Status with The Aldor |condition rep('The Aldor')==Exalted |next "exalted"
step
label fel
goto 24.0,29.7
.talk 18538
.accept 10421 |n
.' Click here to go back to farming. |next "farming" 
.' Click here to turn in Marks of Sargeras |next "marks" 
.' Earn Exalted Status with The Aldor |condition rep('The Aldor')==Exalted |next "exalted" 
step
label exalted
'Congratulations, you are Exalted with The Aldor.
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\The Scryers",[[
description This guide will walk you through becoming
description Exalted with The Scryers faction.
step
goto Shattrath City,61.2,12.6
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
..'Follow Khadgar's Servant
|modelnpc Khadgar's Servant##19685
step
'Follow Khadgar's Servant until the tour is over |q 10211/1
|modelnpc Khadgar's Servant##19685
step
goto 54.8,44.3
.talk 18166
..turnin 10211
..accept 10552 |instant
step
goto 54.8,44.3
.talk 18166
..accept 10553
step
goto 50.0,62.9 |n
.' Ride the elevator up to the Scryer Rise |goto Shattrath City,50.0,62.9,0.3 |noway |c
step
goto 45.2,81.5
.talk 18531
.accept 10412
.accept 10656
step
goto 42.8,91.7
.talk 18530
.turnin 10553
..accept 10416
step
goto Shattrath City,44.6,76.4
.talk 23272
..accept 11039
step
|fly Area 52
step
goto Netherstorm,32,64
.talk 19468
.turnin 11039
..accept 10189
step
goto 27.8,65
.from Captain Arathyn##19635 |tip He walks around this area on a big purple bird.
.get B'naar Personnel Roster |q 10189/1
step
goto 32,64
.talk 19468
..turnin 10189
..accept 10193
.talk 19469
..accept 10204
only if rep ('The Scryers') >= Friendly
step
goto 26.3,66.7
.from Sunfury Magister##18855+
.collect Bloodgem Shard |n
.' Use the Bloodgem Shard next to a floating crystal |use Bloodgem Shard##28452
.' Siphon the Bloodgem Crystal |q 10204/1
.kill 8 Sunfury Geologist##19779+ |q 10193/3
step
goto 26.9,70.5
.kill 2 Sunfury Warp-Master##18857+ |q 10193/1
.kill 6 Sunfury Warp-Engineer##18852+ |q 10193/2
..get 10 Sunfury Signet##30810 |q 10656/1
step
goto 32,64
.talk 19468
..turnin 10193
..accept 10329
.talk 19469
..turnin 10204
step
goto 23.9,70.7
.from Overseer Theredis##20416
.get B'naar Access Crystal |q 10329/2 
step
goto 23.2,68.1
.click the B'naar Control Console
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge B'naar |q 10329/1
step
goto 32,64
.talk 19468
..turnin 10329
..accept 10194
step
goto 33.8,64.2
.talk 20162
..turnin 10194
..accept 10652
..' Tell her you're as ready as you'll ever be.
..'You will fly to Manaforge Coruu |goto 48.0,86.0,2 |noway |c |q 10652
step
goto 48.2,86.6
.talk 19840
..turnin 10652
..accept 10197
step
goto 47.7,84.9
.from Sunfury Arcanists##20134+
.get Sunfury Arcanist Robes |q 10197/3
step
goto 49,81.5
.from Sunfury Researcher##20136+
.get Sunfury Researcher Gloves |q 10197/1
step
'Go outside to 50.8,83.2 |goto 50.8,83.2
.from Sunfury Guardsmen##18850
.get Sunfury Guardsman Medallion |q 10197/2
step
goto 48.2,86.6
.talk 19840
..turnin 10197
..accept 10198
step
'Use the Sunfury Disguise in your bags |havebuff Sunfury Disguise |use Sunfury Disguise##28607
step
'Go inside Manaforge Coruu to 48.2,84.1 |goto 48.2,84.1
.' Be careful to avoid the Arcane Annihilator, he can see through the disguise and will attack you.
.' Stand between the 2 blood elves at the back of the room with a bunch blood elves lined up in it
.' Listen to them talk
.' Gather the Information |q 10198/1
step
'Go outside to 48.2,86.6 |goto 48.2,86.6
.talk 19840
..turnin 10198
..accept 10330
step
'Go inside Manaforge Coruu to 49,81.5 |goto 49,81.5
.' Kill Overseer Seylanna
.get Coruu Access Crystal |q 10330/2
.click the Coruu Control Console
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge Coruu |q 10330/1
step
'Go outside to 48.2,86.6 |goto 48.2,86.6
.talk 19840
..turnin 10330
..accept 10200
step
goto 32,64
.talk 19468
..turnin 10200
step
goto 32.0,64.0
.talk 19469
.accept 10341
.talk 19468
..accept 10338
only if rep ('The Scryers') >= Neutral
step
goto 57.9,63.4
.kill 8 Sunfury Conjurer##20139+ |q 10341/1
.kill 6 Sunfury Bowman##20207+ |q 10341/2
.kill 4 Sunfury Centurion##20140+ |q 10341/3
only if rep ('The Scryers') >= Friendly
step
'Go inside Manaforge Duro to 60.0,68.5|goto 60.0,68.5
.from Overseer Athanel##20435
.get 1 Duro Access Crystal|q 10338/2
only if rep ('The Scryers') >= Friendly
step
goto 59.1,66.8
.click the Duro Control Console
.click "<Begin emergency shutdown>"
.' Kill the technicians as they come to try to save the Manaforge
..'Only takes 2 minutes
.' Shut Down Manaforge Duro |q 10338/1
only if rep ('The Scryers') >= Friendly
step
goto 32.0,64.1
.talk 19468
..turnin 10338
.talk 19469
..turnin 10341
..accept 10202
only if rep ('The Scryers') >= Friendly
step
goto 26.2,41.6
.talk 20920
..turnin 10202
..accept 10432
only if rep ('The Scryers') >= Friendly
step
.' Go inside Manaforge Ara to 27.1,39.2 |goto 27.1,39.2
.from Gan'arg Warp-Tinker##20285+, Mo'arg Warp-Master##20326+, Daughter of Destiny##18860+ |tip You can also find more outside of Manaforge Ara.
..get 8 Orders From Kael'thas |q 10432/1
only if rep ('The Scryers') >= Friendly
step
goto 32.0,64.1
.talk 19468
..turnin 10432
..accept 10508
only if rep ('The Scryers') >= Friendly
step
goto 37.1,27.8
.from Forgemaster Morug##20800
..get First Half of Socrethar's Stone |q 10508/1
only if rep ('The Scryers') >= Friendly
step
goto 40.8,19.6
.from Silroth##20801+
..get Second Half of Socrethar's Stone |q 10508/2
only if rep ('The Scryers') >= Friendly
step
goto 32.0,64.1
.talk 19468
.turnin 10508
..accept 10509
step
|fly Shattrath
step
goto Shattrath City,42.8,91.7
.talk 18530
.turnin 10509
..accept 10507
step
|fly The Stormspire
step
goto Netherstorm,36.4,18.4 |n
.' Click Voren'thal's Package in your inventory. |use Voren'thal's Package##30260
.collect 1 Socrethar's Teleportation Stone##29796 |q 10409 |n
.collect 1 Voren'thal's Presence##30259 |q 10409
'Step into the teleporter
'Use the Socrethar's Teleportation Stone that was provided |use Socrethar's Teleportation Stone##29796 |goto 30.6,17.6,1 |noway|c
step
goto 29.6,14.2
'Use Voren'thal's Presence on Socrethar. |use Voren'thal's Presence##30259
.' Socrethar slain |q 10507/1
|modelnpc Socrethar##20132
step
|fly Shattrath
step
goto Shattrath City,42.8,91.7
.talk 18530
.turnin 10507
step
|fly Sanctum of the Stars
step
goto Shadowmoon Valley,55.7,58.2
.talk 21954
..accept 10687
step
goto 56.3,58.8
.talk 22211
..accept 10824
step
goto 56.3,59.6
.talk 21955
..accept 10683
step
goto Shadowmoon Valley,54.7,58.2
.talk 21953
.accept 10807
step
goto 51.7,65.6
.from Eclipsion Soldier##22016+, Eclipsion Spellbinder##22017+, Eclipsion Cavalier##22018+
.get 10 Sunfury Signet |q 10824/1
step
goto 56.3,58.8
.talk 22211
..turnin 10824
step
goto 71.1,52.0
.from Demon Hunter Initiate##21180+, Demon Hunter Supplicant##21179+
.get 8 Sunfury Glaive |q 10687/1
.get 1 Arcane Tome##29739 |q 10416/1
step
goto 55.7,58.2
.talk 21954
..turnin 10687
..accept 10688
step
goto 70.0,51.4
.from Sunfury Warlock##21503+
.collect 1 Scroll of Demonic Unbanishing##30811 |n
.' Use the Scroll of Demonic Unbanishing on Azaloth |use Scroll of Demonic Unbanishing##30811
.' Free Azaloth |q 10688/1
step
goto 55.7,58.2
.talk 21954
..turnin 10688
..accept 10689
step
goto 58.8,36.5
.kill 3 Ashtongue Handler##21803+ |q 10807/1
.kill 4 Ashtongue Warrior##21454+ |q 10807/2
.kill 6 Ashtongue Shaman##21453+ |q 10807/3
.click Baar'ri Tablet Fragment##6420
.from Ashtongue Worker##21455
.get 12 Baa'ri Tablet Fragment |q 10683/1
step
goto Shadowmoon Valley,54.7,58.2
.talk 21953
.turnin 10807
..accept 10817
step
goto 56.3,59.6
.talk 21955
..turnin 10683
..accept 10684
step
goto 57.2,32.9
.from Oronu the Elder##21663
.get Orders From Akama |q 10684/1
step
goto 67.4,37.6
.kill 8 Shadowmoon Slayer##22082+ |q 10817/1
.kill 8 Shadowmoon Chosen##22084+ |q 10817/2
.kill 4 Shadowmoon Darkweaver##22081+ |q 10817/3
step
goto 56.3,59.6
.talk 21955
..turnin 10684
..accept 10685
step
goto 57.1,73.3
.from Haalum##21711 |tip You must destroy the totems first before you can attack him.
.get Haalum's Medallion Fragment |q 10685/2
step
goto 51.3,52.9
.from Eykenen##21709 |tip You must destroy the totems first before you can attack him.
.get Eykenen's Medallion Fragment |q 10685/1
step
goto 48.2,39.8
.from Uylaru##21710 |tip You must destroy the totems first before you can attack him.
.get Uylaru's Medallion Fragment |q 10685/4
step
goto 49.8,23.1
.from Lakaan##21416 |tip You must destroy the totems first before you can attack him.
.get Lakaan's Medallion Fragment |q 10685/3
step
goto 56.3,59.6
.talk 21955
..turnin 10685
..accept 10686
step
goto 57.4,49.7 |n
.' Follow the path down |goto 57.4,49.7,0.5 |noway |c
step
goto 57.3,49.6
.talk 21826
..turnin 10686
step
|fly Telaar
step
goto Nagrand,27.2,43.0
.talk 18417
.turnin 10640
..accept 10669
..accept 10668
..accept 10641
step
goto Zangarmarsh,16.2,40.7
.' Use your Imbued Silver Spear in this spot |use Imbued Silver Spear##30853
.kill Xeleth##21894 |q 10669/1
step
|fly The Stormspire
step
goto Netherstorm,39.6,20.5
.from Wrath Priestess##18859+
.collect Freshly Drawn Blood##30850 |n
.' Use the Freshly Drawn Blood immediately |use Freshly Drawn Blood##30850 |tip It only last 1 minute, then it disappears if you don't use it in time.
.kill Avatar of Sathal##21925 |q 10641/1
step
|fly Wildhammer Stronghold
step
goto Shadowmoon Valley,28.3,49.5
.kill Lothros##21928 |q 10668/1 |tip He walks around this area, so you may need to search for him.
step
|fly Telaar
step
goto Nagrand,27.3,43.1
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
.turnin 10646
..accept 10649
step
|fly Allerian Stronghold
step
goto Terokkar Forest,39.6,71.0 |n
'Click the doors to the Shadow Labyrinth.
.' Go forth into the Shadow Labyrinth. |goto Shadow Labyrinth |noway|c
step
'Kill through the instance until you reach Blackheart the Inciter.
.from Blackheart the Inciter##18667
..get 1 Book of Fel Names##30808|q 10649/1
step
'Leave the instance. |goto Terokkar Forest |noway|c
step
|fly Telaar
step
goto Nagrand,27.3,43.1
.talk 18417
.turnin 10649
..accept 10691
step
|fly Sanctum of the Stars
step
goto Shadowmoon Valley,55.8,58.2
.talk 21954
.turnin 10650
..accept 10692
step
goto Shadowmoon Valley,68.6,52.7
.kill Netharel##21164 |q 10692/2 |tip He is walking amongst the Demon Hunter Supplicants.
step
goto 69.6,54.1
.kill Alandien##21171 |q 10692/4
step
goto 72.2,53.7
.kill Varedis##21178 |q 10692/1
step
goto 72.4,48.4
.kill Theras##21168 |q 10692/3
step
goto Shadowmoon Valley,55.8,58.2
.talk 21954
.turnin 10692
step
|fly Shattrath
step
goto Shattrath City,45.2,81.5
.talk 18531
.turnin 10412
.turnin 10656
..' After turning these quests in, you will unlock the daily versions of these quests, which you will have to farm.
step
goto Shattrath City,42.8,91.7
.talk 18530
.turnin 10416
'When you're done turning items in, click here to farm. |next "farming" |only if rep('The Scryers')<=Revered |confirm
|next "exalted" only if rep('The Scryers')==Exalted
step
label farming
|fly Area 52
step
goto Netherstorm,27.8,72.6
.from Sunfury Bloodwarder##18853+, Sunfury Magister##18855+, Sunfury Geologist##19779+, Sunfury Astromancer##19643+, Sunfury Captain##19453+
.get Arcane Tome##29739 |n 
.get Sunfury Signet##30810 |tip You will need to collect multiples of 10. |n
'  You can find more around [25.7,67.2]
.' Click here when you're ready to turn in. |confirm
step
|fly Shattrath
step
label signets
goto Shattrath City,45.2,81.5
.talk 18531
.accept 10658 |n
.' Click here to turn in Arcane Tomes |next "tomes" |confirm
.' Click here to continue farming. |next "farming" |confirm
.' Earn Exalted reputation with The Scryers. |next "exalted" |condition rep('The Scryers')==Exalted
step
label tomes
goto Shattrath City,42.8,91.7
.talk 18530
.accept 10419 |n
.' Click here to turn in Sunfury Signets |next "signets" |confirm
.' Click here to continue farming. |next "farming" |confirm
.' Earn Exalted reputation with The Scryers. |next "exalted" |condition rep('The Scryers')==Exalted
step
label exalted
'Congratulations, you are now Exalted with The Scryers!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\Ashtongue Deathsworn",[[
step
'This reputation can be earned by running The Black Temple raid.
'A full clear will grant roughly 8200 reputation.
|confirm
step
'This will _require_ you to be in a _raid group_.
.' To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
label start
#include "darkportal"
step
goto Shadowmoon Valley 71.0,46.5
'Enter The Black Temple here |goto Shadowmoon Valley 71.0,46.5 <5 |noway |c 
step
'Kill every creature that is hostile in this instance in order to gain reputation. |tip You will have to clear this place a few times to reach Exalted.
'Click here to go back to the beginning of the guide |next "start" |confirm
'Earn Exalted status with Ashtongue Deathsworn |condition rep('Ashtongue Deathsworn')==Exalted |next "exalted" 
step
label exalted
'Congratulations, you are now Exalted with the Ashtongue Deathsworn!'
]])	
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\The Violet Eye",[[
step
'This reputation can be earned by running the Karazhan raid.
|confirm
step
'This will _require_ you to be in a _raid group_.
.' To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
label start
|fly Darkshire
step
'Go _east_ to _Deadwind Pass_ |goto Deadwind Pass |noway |c 
step
goto Deadwind Pass,47.0,74.8 |n
.' Enter _Karazhan_ here |goto Karazhan |noway |c
step
'Kill every creature that is hostile in this instance in order to gain reputation. |tip You will have to clear this place a few times to reach Exalted.
'Click here to go back to the beginning of the guide |next "start" |confirm
'Earn Exalted status with The Violet Eye |condition rep('The Violet Eye')==Exalted |next "exalted" 
step
label exalted
'Congratulations, you are now Exalted with The Violet Eye!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Outland\\The Scale of the Sands",[[
step
'This reputation can be earned by running the Caverns of Time: Hyjal Summit raid.
'A full clear will grant roughly 7800 reputation.
|confirm
step
'This will _require_ you to be in a _raid group_.
.' To make a _raid_ group _invite a friend_ to your group, then press the _[O]_ key and _click_ on the _raid tab_ on the bottom right corner of your _Social_ interface. _Click_ the _Convert to Raid_ button on the _upper left corner_.
|confirm
step
label start
goto Tanaris 55.4,53.5 |n
.' Follow this path down and around. |goto Tanaris 55.4,53.5 <5 |c 
step
.' Enter Hyjal Summit here |goto Tanaris 56.9,49.9 <5 |c 
step
'Kill every creature that is hostile in this instance in order to gain reputation. |tip You will have to clear this place a few times to reach Exalted.
'Click here to go back to the beginning of the guide |next "start" |confirm
'Earn Exalted status with The Scale of the Sands |condition rep('The Scale of the Sands')==Exalted |next "exalted" 
step
label exalted
'Congratulations, you are now Exalted with The Scale of the Sands!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\Argent Tournament Grounds Aspirant Rank Dailies",[[
author support@zygorguides.com
description This guide section will walk you through completing your race's Aspirant Rank dailies
description in order to achieve Argent Tournament Grounds Valiant Rank with your own race and eventually Crusader Title.
daily
step
goto Icecrown 76.5,19.4
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\Argent Tournament Grounds Valiant Rank Dailies",[[
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
.' Click Winter Hyacinth
.collect 4 Winter Hyacinth##45000 |q 13758
only NightElf
step
goto Dragonblight,93.2,26.1
.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
.' Listen to the Maiden of Drak'Mar
.' Click the Blade of Drak'Mar that spawns
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
.kill 15 Boneguard Footman |q 13855/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
.kill 10 Boneguard Scout |q 13855/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
.kill 3 Boneguard Lieutenant |q 13855/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
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
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\Argent Crusade",[[
author support@zygorguides.com
description This guide will help you reach Exalted with the Argent Crusade
#include "A_Icecrown_Argent_Crusade_Rep"
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\Kalu'ak",[[
description This step will lead you up to the Daily Quest portion
description of the Kalu'ak.
step
goto Borean Tundra 54.3,36.1
.talk 25292
..accept 11612
step
goto 54.7,35.8
.' Talk to Elder Atkanok 
..accept 11605
'|model Elder Atkanok##7633
step
goto 52.8,34
.click "Elder Sagani"##7655 
.' Identify the Elder Sagani |q 11605/2
step
goto 52.3,31.2
.click "Elder Takret"##7655 
.' Identify the Elder Takret |q 11605/3
step
goto 50.9,32.4
.click "Elder Kesuk"##7655
.' Identify the Elder Kesuk |q 11605/1
step
goto 54.4,35.1
.kill 12 Beryl Treasure Hunter##25353+ |q 11612/1
step
goto 54.7,35.8
.' Talk to Elder Atkanok
..turnin 11605
..accept 11607
'|model Elder Atkanok##7633
step
goto 54.3,36.1
.talk 25292
..turnin 11612
..accept 11617
step
goto 51.5,31.4
.kill Beryl Hound##25355+ |n
.get 6 Cores of Malice|n
.' Use the Cores of Malice on Kaskala Craftsmen and Kaskala Shaman |use Core of Malice##34711
.' Free 3 Kaskala Craftsman spirits |q 11607/1
.' Free 3 Kaskala Shaman spirits |q 11607/2
.from Beryl Reclaimer##25449+
.collect 3 Gnomish Grenade##34772|q 11617
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
.' Talk to Elder Atkanok
..turnin 11607
..accept 11609
'|model Elder Atkanok##7633
step
goto 54.3,36.1
.talk 25292
..turnin 11617
..accept 11623
step
goto 53.1,33.3
.click Tuskarr Ritual Object##7472+ 
.get 6 Tuskarr Ritual Object|q 11609/1
step
goto 50.1,32.6
.kill Curator Insivius##25448 |q 11623/1
step
goto 54.7,35.8
.' Talk to Elder Atkanok
..turnin 11609
..accept 11610
'|model Elder Atkanok##7633
step
goto 54.3,36.1
.talk 25292
..turnin 11623
step
goto 52.8,34
.' Use your Tuskarr Ritual Object while standing next to the Elder Sagani |use Tuskarr Ritual Object##34715 |tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
.' Complete Elder Sagani's ceremony |q 11610/2
|model "Elder Saganai"##7655
step
goto 52.3,31.2
.' Use your Tuskarr Ritual Object while standing next to the Elder Takret |use Tuskarr Ritual Object##34715 |tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
.' Complete Elder Takret's ceremony |q 11610/3
|model "Elder Takret"##7655
step
goto 50.9,32.4
.' Use your Tuskarr Ritual Object while standing next to the Elder Kesuk |use Tuskarr Ritual Object##34715 |tip It looks like 2 small totem pole things at the base of the big stone on the huge bone cart.
.' Complete Elder Kesuk's ceremony |q 11610/1
|model "Elder Kesuk"##7655
step
goto 54.7,35.8
..' Talk to Elder Atkanok
..turnin 11610
'|model Elder Atkanok##7633
step
goto 55.0,68.9
.talk 25825
..accept 11789
step
goto 57.5,69.3
.click First Aid Supplies##01
.get Hawthorn's Anti-Venom |q 11789/1
step
goto 57.5,69.1
.' Click the Cultist Shrine|tip It looks like a small candle shrine on the ground downstairs in this ship, next to the wall.
..accept 11920 |or
..accept 11790 |or
step
goto 55.0,68.9
.talk 25825
..turnin 11789
step
goto 57.8,69.2
.talk 25298
..turnin 11920 |or
..turnin 11790 |or
step
goto 57.8,69.2
.talk 25299
..accept 11791
step
goto 56.7,72.6
.talk 25250
..turnin 11791
step
goto 56.7,72.6
.talk 25301
..accept 12141
step
goto 55,68.9
.talk 25825
..turnin 11789
step
goto 47.1,75.5
.talk 25435
..turnin 12141
..accept 11613
step
goto 46.5,77.2
.kill 6 Skadir Raider##25522+ |q 11613/1
.kill 5 Skadir Longboatsman##25521+ |q 11613/2
step
goto 44.2,77.8
.'Kill the Riplash Myrmidon and cheering Skadir mobs
.talk 25636
..accept 12471
step
goto 47.1,75.5
.talk 25435
..turnin 11613
..accept 11619
..turnin 12471
step
'Go inside the cave to 46.4,78.2|goto 46.4,78.2
.kill Gamel the Cruel##26449 |q 11619/1
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
'Go into the big building to 54.7,89.1|goto 54.7,89.1
.from Ragnar Drakkarlund##26451
.get Trident of Naz'jan|q 11625/1
step
goto 43.6,80.5
.talk 25450
..turnin 11625
..accept 11626
step
goto 52.2,88.2
.' Swim underwater to the bubbling rock at the very bottom, so you don't run out of air
.' Use your Trident of Naz'jan on Leviroth|use Trident of Naz'jan##35850
.kill Leviroth##26452 |q 11626/1
step
goto 47.1,75.5
.talk 25435
..turnin 11626
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
.get 8 Kaskala Supplies |q 11945/1
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
goto 67.6,50.4
.talk 26219
.' <Search corpse for Issliruk's Totem>
.get Issliruk's Totem |q 11961/1
step
goto 67.2,54.9
.talk 26218
..turnin 11961
..accept 11968
step
goto 67.6,56.6
.kill Heigarr the Horrible##26266 |q 11968/1
step
goto 67.2,54.8
.talk 26218
..turnin 11968
step
|fly Westguard Keep
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
'Go across The Ancient Lift to 25.0,57.0|goto 25.0,57.0
.talk 24755
..turnin 11507
..accept 11508
..accept 11456
step
goto 24.7,57.8
.talk 28197
.fpath Kamagua
step
goto 29.1,58.8
.kill Island Shoveltusk##24681+ |n
.get 6 Island Shoveltusk Meat|q 11456/1
step
goto 25.0,57.0
.talk 24755
..turnin 11456
..accept 11457
step
goto 26.4,62.9
.from Frostwing Chimaera##24673
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
.get Sin'dorei Scrying Crystal|q 11510/1
step
goto 37.8,84.6
.click the Eagle Figurine##6925 |tip It's a blue eagle statue inside this ship on the middle floor.
.get Eagle Figurine|q 11434/2
step
goto 37.1,85.5
.click the Amani Vase##7495 |tip It looks like a grey vase at the bottom of this wrecked ship.
.get Amani Vase|q 11434/1
step
goto 31.4,77.9
.from Big Roy##24785
.get Big Roy's Blubber|q 11469/1
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
goto 37.7,79.6
.talk 24784
..turnin 11469
step
goto 35.1,81.0
.talk 24539
.' Tell him:
.' Taruk sent me to collect what you owe.>
.from "Silvermoon" Harry##24539
.' After he submits to you
.' <Pay up, Harry!>
.' Collect "Silvermoon" Harry's Debt |q 11464/1
step
goto 36.3,80.5
.talk 24541
..turnin 11464
..accept 11466
step
goto 35.3,79.6
.talk 24639
.' Tell her:
.' <I'd like to buy Jack a drink.>
.' She will walk over to Jack Adams
|confirm
step
goto 35.5,79.4
.clicknpc Jack Adams##24788
.' Discretely search the pirate's pockets for Taruk's payment.>
.get Jack Adams' Debt |q 11466/1
step
goto 36.3,80.5
.talk 24541
..turnin 11466
..accept 11467
step
goto 35.4,78.1
.from Rabid Brown Bear##24633+
.get 4 Bear Musk |q 11455/1
step
goto 33.6,75.6 |n
.' Enter the Cave here |goto 33.6,75.6,0.5 |noway |c
step
goto 33.8,78.0
.from "Mad" Jonah Sterling##24742
.' After you beat him, he will jump down
|confirm
step
goto 33.7,79.2 |n
.' Run down the ramp here |goto 33.7,79.2,0.5 |noway |c
step
goto 32.3,78.7
.click The Frozen Heart of Isuldof##7554
.get The Frozen Heart of Isuldof |q 11512/1
step
goto 37.2,74.8
.talk 24910
..turnin 11519
..accept 11527
step
'Go downstairs in the ship
.kill Mutinous Sea Dog##25026+ |n
.get 5 Barrel of Blasting Powder|q 11527/1
step
'Go upstairs to the ship deck
.talk 24910
..turnin 11527
..accept 11529
step
'Run to the other end of the ship deck to the big cannon
.clicknpc The Big Gun##24992
.' Keep clicking The Big Gun until Sorlof is dead
.' Sorlof will drop a big pile of gold on the shore
.' Jump off the ship and click Sorlof's Booty
.get Sorlof's Booty|q 11529/1
step
goto 37.2,74.8
.talk 24910
..turnin 11529
..accept 11530
step
'Leave the cave and go to 33.2,63.9|goto 33.2,63.9
.kill 8 Crazed Northsea Slaver##24676+ |q 11458/1
step
goto 35.3,64.8
.' At the bottom of the ship. If you are careful, you can avoid _Abdul the Insane_
.click The Staff of Storm's Fury##1708
.get The Staff of Storm's Fury |q 11511/1
step
goto 32.7,60.2
.click Dirt Mound##20
.from Black Conrad's Ghost##24790+
.get Black Conrad's Treasure |q 11467/1
step
goto 25.0,57.0
.talk 24755
..turnin 11458
step
goto 36.3,80.5
.talk 24541
..turnin 11467
step
goto 35.6,80.2
.talk 24537
..turnin 11455
step
goto 81.8,73.9
.click The Ancient Armor of the Kvaldir##7624
.get The Ancient Armor of the Kvaldir |q 11567/1
step
'Ride the big lift to the top of the cliff and go to 40.3,60.3|goto 40.3,60.3
.talk 23804
..turnin 11567
..turnin 11512
..turnin 11530
..turnin 11511
..accept 11568
step
goto 57.6,77.4
.' Use your Bundle of Vrykul Artifacts while standing near the skeleton|use Bundle of Vrykul Artifacts##34624
.' Return the Shield of Aesirites |q 11568/1
step
goto 59.2,77
.' Use your Bundle of Vrykul Artifacts while standing near the skeleton|use Bundle of Vrykul Artifacts##34624
.' Return the Staff of Storm's Fury |q 11568/2
step
goto 59.8,79.4
.' Use your Bundle of Vrykul Artifacts while standing near the skeleton.|use Bundle of Vrykul Artifacts##34624
.' Return the Frozen Heart of Isuldof |q 11568/3
step
goto 62,80
.' Use your Bundle of Vrykul Artifacts while standing near the skeleton.|use Bundle of Vrykul Artifacts##34624
.' Return the Ancient Armor of the Kvaldir |q 11568/4
step
goto 40.3,60.3
.talk 23804
..turnin 11568
..accept 11572
step
'Go across the Ancient Lift to 25.0,57.0|goto 25.0,57.0
.talk 24755
..turnin 11572
step
|fly Moa'ki
step
goto 48,74.9
.talk 26194
..accept 11958
step
goto 48.3,74.3
.talk 26228
..accept 11960
step
goto 45.3,63.7
.kill Snowfall Glade mobs|n
.get 6 Stolen Moa'ki Goods|q 11958/1
.clicknpc Snowfall Glade Pup##26200
.get 12 Snowfall Glade Pup|q 11960/1
'|from Snowfall Glade Reaver##26197, Snowfall Glade Wolvar##26198, Snowfall Glade Shaman##26201, Snowfall Glade Den Mother##26199
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
.from Loguhn##26196
.get Blood of Loguhn|n
.' Click the Blood of Loguhn in your bags|use Blood of Loguhn##35688
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
.' Use Toalu'u's Spiritual Incense next to Toalu'u's Brazier|use Toalu'u's Spiritual Incense##35907|tip Sitting next to the entrance to the small house.
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
.' Click Tua'kea's Crab Traps|tip They look like small cages on the ground underwater around this area.
.get 8 Tua'kea Crab Trap|q 12009/1
step
goto 47.7,80
.' Click the Wrecked Crab Trap|tip It looks like a broken version of Tue'kea's Crab Traps, on the ground underwater.
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
.' Use Tu'u'gwar's Bait next to Tua'kea's Fishing Hook|use Tu'u'gwar's Bait##35838|tip It looks like a rope leading into the water, with a big hook on the end.
.' Kill Tu'u'gwar when he comes|kill 1 Tu'u'gwar|q 12017/1
step
goto 47.7,76.6
.talk 26245
..turnin 12017
step
goto 36.4,65
'Talk to Elder Mana'loa |model Elder Mana'loa##7768 
..turnin 12030
..accept 12031
step
goto 37.2,65.5
.kill Indu'le mobs|n
.' Put 15 Indu'le spirits to rest |q 12031/1
'|from Indu'le Mystic##26336, Indu'le Warrior##26344
step
goto 36.4,65
'Talk to Elder Mana'loa |model Elder Mana'loa##7768 
..turnin 12031
..accept 12032
step
goto 34.3,79.8|n
.' The path up to Conversing With the Depths starts here|goto Dragonblight,34.3,79.8,0.5|noway|c
step
'Follow the path up to 34,83.4|goto 34,83.4
.' Click The Pearl of the Depths|tip It's a big white pearl sitting on a altar thing.
.' Oacha'noa appears and tells you to jump in the water
.' Jump in the water when he tells you to
.' Obey Oacha'noa's compulsion |q 12032/1
step
goto 49.2,75.6
.talk 26595
..turnin 12032
step
.' Once you've completed all of the quests above, you can now do the daily quests.
.' Do the dailies until you reach exalted |condition rep("Kalu'ak")==Exalted |next "exalted"
|confirm
//borean//
step
label "daily"
goto Borean Tundra,64,45.7
.talk 26213
..accept 11945 |daily
step
.click Kaskala Supplies##644
.get 8 Kaskala Supplies |q 11945/1
step
goto 64,45.7
.talk 26213
..turnin 11945 |daily
step
|fly Moa'ki
//dragon//
step
goto Dragonblight,48.3,74.3
.talk 26228
..accept 11960 |daily
step
goto 45.3,63.7
.clicknpc Snowfall Glade Pup##26200
.get 12 Snowfall Glade Pup |q 11960/1
step
goto 48.3,74.3
.talk 26228
..turnin 11960 |daily
step
|fly Kamagua
//howling//
step
goto 24.6,58.9
.talk 24810
..accept 11472 |daily
step
goto 28.9,74.8
.' Use Anuniaq's Net on the Schools of Tasty Reef Fish|use Anuniaq's Net##40946|tip They look like swarms of fish in the water.
.kill Great Reef Shark##24637+ |n
.collect 10 Tasty Reef Fish##34127|q 11472
step
goto 31,74.4
.' Use your Tasty Reef Fish on a Reef Bull as far away as you can|use Tasty Reef Fish##34127
.' He will come to the spot where you're standing
.' Keep doing this
.' Lead the Reef Bull to a Reef Cow on the other side of the water |q 11472/1
step
goto 24.6,58.9
.talk 24810
..turnin 11472 |daily
step
.' To reset this section, click here. |next "daily" |confirm
.' Earn Exalted reputation with the Kalu'ak |next "exalted" |condition rep("Kalu'ak")==Exalted
step
label exalted
'Congratulations, you are Exalted with the Kalu'ak!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\The Sons of Hodir",[[
step
' Proceeding to Prequests next step |next |only if rep('The Sons of Hodir')<=Friendly
.' Proceeding to Honored Dailies |next "Daily2" |only if rep('The Sons of Hodir')==Honored
.' Proceeding to Revered Dailies |next "Daily3" |only if rep('The Sons of Hodir')==Revered
step
#include "rideto_borean"
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
step
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
.' Escort the Injured Goblin Miner to K3 |q 12832/1
step
'Fly up to [39.8,73.3]
.kill Sifreldar Storm Maiden##29323+ |n
.collect 5 Cold Iron Key##40641|n
.click Rusty Cage##7469+
.' Free 5 Goblin Prisoners |q 12843/1
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
.' Discipline 6 Exhausted Vrykul |q 12906/1
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
' Talk to Agnetta Tyrsdottar##30154
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
.' Listen to Lok'lira's proposal |q 12970/1
step
goto 47.5,69.1
.talk 29975
..turnin 12970
..accept 12971
step
goto 51,66.4
'Talk to Victorious Challenger##30012
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
.' Burn 7 Frostworgs |q 12851/1
.' Burn 15 Frost Giants |q 12851/2
'|modelnpc 29358
'|modelnpc 29351
step
goto 53.1,65.7
.talk 29592
..turnin 12851
..accept 12856
step
'Fly to 63.9,62.5|goto 63.9,62.5
.clicknpc Captive Proto-Drake##29708
.' Use your Ice Shard ability on the Brunnhildar Prisoners|petaction Ice Shard|tip The Brunnhildar Prisoners look like blue blocks of ice around this area on the ground.
.' When your Proto-Drake is holding 3 Brunnhildar Prisoners, start flying toward Brunnhildar Village, the drake will eventually go on autopilot.  Repeat this process 2 more times.
.' Rescue 9 Brunnhildar Prisoners |q 12856/1
.' Free 3 Proto-Drakes |q 12856/2
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
.kill 8 Ravenous Jormungar##29605+ |q 12989/1 |tip They are inside the cave.
step
goto 54.8,60.4
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
'Use your Reins of the Warbear Matriarch outside the building to ride a bear|invehicle|c|use Reins of the Warbear Matriarch##42481
step
goto 50.8,67.7
.' Use the abilities on your hotbar to fight Kirgaraak|tip He's a big white yeti.
.' Defeat Kirgaraak |q 12996/1
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
.' Defeat 10 Hyldsmeet Drakeriders  |q 12886/1
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
.' Hear Thorim's History |q 13064/1
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
.' Destroy 30 Plagued Proto-Drake Eggs |q 12925/1
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
.' Start 6 Fires |q 12953/1
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
.kill 10 Seething Revenant##29504+ |q 12967/1
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
.' Free 5 Niffelem Forefathers |q 12977/1
.' Free 5 Restless Frostborn |q 12977/2
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
.' Mount Hodir's Helm |q 12987/1
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
.' Witness the Reckoning |q 13047/1
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
.' Locate the Missing Scout |q 12864/1
step
goto 46.5,68.3
.kill Vrykuls |n
.' Get 10 Relics of Ulduar |q 12870/1
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
.' Feed 8 Stormcrest Eagles |q 12865/1
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
.' Track down the thief |q 12855/1
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
.' Gather 7 Hidden Data |q 12860/1
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
.' Investigate the Temple of Winter |q 12986/2
step
goto 64.3,46.7
.' Use Creteus's Mobile Databank in this broken temple|use Creteus's Mobile Databank##42679
.' Investigate the Temple of Life |q 12986/3
step
goto 53.5,42.3
.' Use Creteus's Mobile Databank Databank at the top of this temple|use Creteus's Mobile Databank##42679
.' Investigate the Temple of Order |q 12986/4
step
goto 45.6,49.2
.' Use Creteus's Mobile Databank Databank at the top of this temple|use Creteus's Mobile Databank##42679
.' Investigate the Temple of Invention |q 12986/1
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
.talk 30052
..turnin 12879
..accept 12880
step
goto 39.6,56.4
.talk 29579
..turnin 12880
..accept 12973
step
.clicknpc Brann's Flying Machine##30134
.kill the dwarves that jump on the plane as you fly|n
.' Accompany Brann Bronzebeard to Frosthold |q 12973/1
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
.' Heal 8 Fallen Earthen Defenders |q 12937/1
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
.' Attempt to free 8 Captive Mechagnomes |q 12957/1
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
.from Stormforged Champion##29370+, Stormforged Magus##29374+
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
//DAILY//
step
label "Daily"
goto The Storm Peaks,64.2,59.2
.click Hodir's Helm##8221
..accept 13006 |daily
step
goto The Storm Peaks,64.8,59.1
.talk 30252
..accept 13001
only if rep ('The Sons of Hodir')>=Honored
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
goto 59.0,61.2
.from Stoic Mammoth##30260+
..get 3 Stoic Mammoth Hide |q 13001/2
only if rep ('The Sons of Hodir')>=Honored
step
'The entrance to the cave starts here |goto 55.9,64.2,0.5 |c
only if rep ('The Sons of Hodir')>=Honored
step
goto 54.7,60.8
.click Everfrost Shard##8247+
.get 3 Everfrost Shard |q 13001/1
only if rep ('The Sons of Hodir')>=Honored
step
'Leave the cave |goto 55.9,64.2,0.5 |c
only if rep ('The Sons of Hodir')>=Honored
step
goto 64.8,59.1
.talk 30252
..turnin 13001 |tip This quest will unlock the Thrusting Hodir's Spear daily quest.
only if rep ('The Sons of Hodir')>=Honored
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
.click Hodir's Horn##7352 
..turnin 12977
step
goto 66.2,61.4
.talk 32540
..accept 13559 |tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
step
.' Click here to reset the daily quests. |confirm |next "Daily" |only if rep('The Sons of Hodir')<=Friendly
' Become honored with The Sons of Hodir |condition rep('The Sons of Hodir')>=Honored |next "Daily2"
step
label "Daily2"
goto The Storm Peaks,63.5,59.8
.talk 30294
..accept 12994 |daily
step
goto 64.2,59.2
.click Hodir's Helm##8221 
..accept 13006 |daily
step
goto 65.1,60.8
.click Hodir's Spear##8220 
..accept 13003 |daily
step
goto 63.2,62.9
.click Fjorn's Anvil##7481
..accept 12981 |daily
step
goto 64.1,65.1
.click Hodir's Horn##7352
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
.click Hodir's Helm##8221 
..turnin 13006
step
goto 65.1,60.8
.click Hodir's Spear##8220 
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
.click Fjorn's Anvil##7481
..turnin 12981
step
goto 64.1,65.1
.click Hodir's Horn##7352
..turnin 12977
step
goto 66.2,61.4
.talk 32540
..accept 13559 |tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
step
.' In order to repeat these daily quests, click here to reset the daillies. |confirm |next "Daily2" |only if rep('The Sons of Hodir')<=Honored
' Become Revered with The Sons of Hodir |condition rep('The Sons of Hodir')>=Revered |next "Daily3"
step
label "Daily3"
goto The Storm Peaks,63.5,59.8
.talk 30294
..accept 12994 |daily
step
goto 64.2,59.2
.click Hodir's Helm##8221 
..accept 13006 |daily
step
goto 65.1,60.8
.click Hodir's Spear##8220 
..accept 13003 |daily
step
goto 67.6,59.9
.click Arngrim the Insatiable##8284
..accept 13046 |daily
step
goto 63.2,62.9
.click Fjorn's Anvil##7481
..accept 12981 |daily
step
goto 64.1,65.1
.click Hodir's Horn##7352
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
.click Hodir's Helm##8221 
..turnin 13006
step
goto 65.1,60.8
.click Hodir's Spear##8220 
..turnin 13003
step
goto 67.6,59.9
.click Arngrim the Insatiable##8284
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
.click Fjorn's Anvil##7481
..turnin 12981
step
goto 64.1,65.1
.click Hodir's Horn##7352
..turnin 12977
step
goto 66.2,61.4
.talk 32540
..accept 13559 |tip This is a repeatable quest.  Turn in all of your Relics of Ulduar.
step
.' To restart the Hodir daily quests, click here. |confirm |next "Daily3" |only if rep('The Sons of Hodir')<=Revered
' Become Exalted with The Sons of Hodir |condition rep('The Sons of Hodir')==Exalted |next "Exalted"
step
label Exalted
'Congratulations, you are now Exalted with the Sons of Hodir!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\The Wyrmrest Accord",[[
description This guide will walk you through earning Exalted with
description They Wyrmrest Accord faction.
step
goto Borean Tundra,33.3,34.5
.talk 26117
..accept 11918
step
goto Borean Tundra,24.3,34.1
.kill 10 Coldarra Spellweaver##25722+ |q 11918/1 |tip You can find them all around Coldarra.
step
goto 32.7,29
.from Coldarra Spellbinder##25719+
.collect 1 Scintillating Fragment
.'Click the Scintillating Fragment in your bags|use Scintillating Fragment##35648
..accept 11941
step
goto 33.3,34.5
.talk 26117
..turnin 11918
..accept 11936
..turnin 11941
..accept 11943
step
goto 24.1,29.6
.from Coldarra Wyrmkin##25728+
.collect 5 Frozen Axe
step
goto 24.1,29.6
.from Warbringer Goredrak##25712
.get Energy Core|q 11943/1
step
goto 27.3,20.5
.from General Cerulean##25716
.get Prison Casing|q 11943/2
step
goto 27.8,24.2
.click Blue Dragon Egg##7247+
.' Destroy 5 Dragon Eggs |q 11936/1
step
goto 33.3,34.5
.talk 26117
..turnin 11936
..accept 11919
..turnin 11943
step
goto 24.6,27.1|n
.' Use your Raelorasz's Spear on a Nexus Drake Hatchling |use Raelorasz's Spear##35506 |tip They are flying above you in the sky. |modelnpc Nexus Drake Hatchling##26127
.' Do not kill it, let it hit you until it becomes friendly |havebuff Drake Hatchling Subdued |c |q 11919
step
goto 33.3,34.5
.' Capture the Nexus Drake |q 11919/1
.talk 26117
..turnin 11919
..accept 11931
step
'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
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
goto 28.8,30.0
.click Crystallized Mana##5013
.get 10 Crystallized Mana Shard|q 11951/1
step
'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
.talk 26237
..turnin 11951
..accept 11957
step
'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
.talk 26206
.'Tell her you are ready to face Saragosa|goto 21.2,22.5,0.5|noway|c
step
'She teleports you to a platform
.click the Arcane Power Focus in your bags|use Arcane Power Focus##35690
.from Saragosa##26231
.get Saragosa's Corpse|q 11957/1
step
'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
.talk 26206
..turnin 11957
..accept 11967
step
'Use the Augmented Arcane Prison in your bags|use Augmented Arcane Prison##35671
.talk 26206
.' Tell her to return you to Transitus Shield|goto 33.3,34.4,0.5|noway|c
step
goto 33.3,34.5
.talk 26117
..turnin 11931
..turnin 11967
..accept 11969
step
goto 25.4,21.7
.' Use Raelorasz' Spark next to the Signal Fire|use Raelorasz' Spark##44950|model Signal Fire##1967
.' Watch the cutscene
.' Lure Malygos |q 11969/1
step
goto 33.3,34.5
.talk 26117
..turnin 11969
step
goto Borean Tundra 27.5,26.7 |n
.' Zone into The Nexus|goto The Nexus |noway|c
step
goto The Nexus,36.2,81.4
.talk 55531
.accept 11973
step
.kill Keristrasza##26206 |q 11973/1 |tip She's at the center of the Nexus.  You won't be able to activated her until you kill the other bosses of The Nexus.
step
goto 36.2,81.4
.talk 55531
.turnin 11973
step
.' Leave The Nexus|goto Borean Tundra|noway|c
step
goto 33.3,34.5
.talk 26117
.accept 13124
step
goto Borean Tundra 27.5,26.0 |n
'Enter the portal to the Nexus. |goto The Nexus |noway|c
step
goto The Nexus,38.4,51.0
'Fight the mobs up until this point, and click the Nexus Portal.
.' Click here to continue. |confirm
step
.kill Drakos the Interrogator##27654 |n
.talk 27658 |tip You will only be able to talk to him after Drakos is dead.
..turnin 13124
..accept 13126
step
'Take to either Eternos, Belgaristrasz or Verdisa and get a Dragon Essence. |tip You will only be able to get one type of Dragon Essence.
.' Click the Ruby Essence in your bags. |use Ruby Essence##37860
.' Click the Emerald Essence in your bags. |use Emerald Essence##37815
.' Click the Amber Essence in your bags. |use Amber Essence##37859
..' Click here to proceed. |confirm
step
' You will need to kill 10 Constructs to proceed.
.' You can find them on the platforms above you.
.' You also need to kill constructs at the center ring.
..' Once you've killed all constructs, click here to continue. |confirm
step
.kill Varos Cloudstrider##27447 |q 13126/2
' Once you kill him Belgaristrasz appears.
.talk 28012
.turnin 13126
.accept 13127
step
.' Click the Ruby Essence in your bags. |use Ruby Essence##37860
.' Click the Emerald Essence in your bags. |use Emerald Essence##37815
.' Click the Amber Essence in your bags. |use Amber Essence##37859
..' Fly up another level to the ring above. Click here to proceed. |confirm
step
'Kill Mage-Lord Urom on all 3 platforms.
.' Once you kill the Fake Mage-Lord Urom, fly to the center.
.kill Mage-Lord Urom##27655 |q 13127/1
step
.talk 28012
.turnin 13127
..accept 13128
step
.' Click the Ruby Essence in your bags. |use Ruby Essence##37860
.' Click the Emerald Essence in your bags. |use Emerald Essence##37815
.' Click the Amber Essence in your bags. |use Amber Essence##37859
.' Fly up to the top of the construct. Once there, click here to continue. |confirm
step
'Once at the top, use your dragons abilities to kill Ley-Guardian Eregos.
.kill Ley-Guardian Eregos##27656 |q 13128/1
step
'Leave the Instance. |goto Borean Tundra|noway|c
step
goto Borean Tundra,33.3,34.5
.talk 26117
.turnin 13128
step
goto Borean Tundra,33.5,34.4
.talk 26110
.accept 13412
step
goto 29.5,24.8 |tip You will have to fly up pretty high to the floating platforms.
.talk 32548
.turnin 13412
..accept 13413
step
.' Tell Corastrasza you have the courage to face Malygos drakes
.' She will give you a Wyrmrest Skytalon to ride
.' Before engaging enemies, stack Revivify on yourself 5 times, then target yourself and cast Life Burst
.' Target a Scalesworn Elite flying above Corastrasza.
.' To cause damage, stack Flamestrike five times, then use Engulf in Flames. To keep your health up, stack Revivify 5 times, then target yourself and use Life Burst. Keep Revivify up while Life Burst is in use. Be ready to cast Flame Shield if they cast Arcane Surge.
.kill 5 Scalesworn Elite##32534 |q 13413/1
step
goto 29.5,24.8|n
.' Click the red arrow on your action bar to get off the Wyrmrest Skytalon|script VehicleExit()|outvehicle|c
step
goto 29.5,24.8
.talk 32548
..turnin 13413
step
'Once you do this, you will be able to do the Daily version of Aces High.
|fly Stars' Rest
step
goto Dragonblight,29,55.5
.talk 26673
..accept 12000
step
'Go outside the cave and southwest to 22.3,54.1|goto 22.3,54.1
.'Loot the Dead Mage Hunters around the area.
.collect Mage Hunter Personal Effects##35792+
.' Open the Mage Hunter Personal Effects bags |use Mage Hunter Personal Effects##35792
.get Moonrest Gardens Plans|q 11999/1
step
goto 29,55.5
.talk 26673
..turnin 12000
step
'Go inside the building to 19.4,58.1|goto 19.4,58.1
.from Goramosh##26349
.get The Scales of Goramosh|q 12004/2
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
.' Observe the Object on the Surge Needle |q 12060/1
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
.' Retrieve ley line focus information |q 12065/1
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
.' Retrieve ley line focus information |q 12083/1
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
.' Retrieve ley line focus information |q 12107/1
step
goto 53,66.4
.' Go to this spot on the cliff to Observe Azure Dragonshrine |q 12110/2
step
goto 29,55.5
.talk 26673
..turnin 12107
..accept 12119
step
goto 57.9,54.2
.talk 26443
..turnin 12119
..accept 12766
step
goto 60,55.1
.talk 27803
..turnin 12766
..accept 12460
step
goto 52.2,50
.talk 27506
..turnin 12460
..accept 12416
step
goto 52.7,46.2
.' Help kill the following:
..'12 Frigid Ghoul Attackers|kill 12 Frigid Ghoul Attacker|q 12416/1 |modelnpc Frigid Ghoul Attacker##27685
..'8 Frigid Geist Attackers|kill 8 Frigid Geist Attacker|q 12416/2 |modelnpc Frigid Geist Attacker##27686
..'1 Frigid Abomination Attacker|kill 1 Frigid Abomination Attacker|q 12416/3 |modelnpc Frigid Abomination##27531
.' You can find more of these at [50.9,52.4]|n
step
goto 52.2,50
.talk 27506
..turnin 12416
..accept 12417
step
goto 46.7,52.8
.click Ruby Acorn##5746 
.collect 6 Ruby Acorn##37727|n
.' Use the Ruby Acorns on the Ruby Keeper corpses|use Ruby Acorn##37727|tip The Ruby Keepers look like huge red dragons on fire.
.' Return 6 Ruby Keepers to the Earth |q 12417/1
step
goto 52.2,50
.talk 27506
..turnin 12417
..accept 12418
step
'Go into the valley to 48.2,47.8|goto 48.2,47.8
.kill 6 Frigid Necromancer##27539+ |q 12418/1
step
'Go into the tree trunk to 47.6,49|goto Dragonblight,47.6,49
.from Dahlia Suntouch##27680
.' Cleanse the Ruby Corruption |q 12418/2
.get Ruby Brooch|n
.' Click the Ruby Brooch in your bags|use Ruby Brooch##37833
..accept 12419
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
'Fly southwest to 55.1,66.4|goto 55.1,66.4
.' Fly into the huge purple swirling column
.' Use your Destabilize Azure Dragonshrine ability|petaction Destabilize Azure Dragonshrine
.' Destabilize the Azure Dragonshrine |q 12372/3
step
goto 59.2,54.3
.talk 27575
..turnin 12372
step
'Follow the fleeing kobolds to 72.5,29.2|goto 72.5,29.2
.kill Chilltusk##27005 |q 12143/1
.get Emblazoned Battle Horn|n
.' Click the Emblazoned Battle Horn|use Emblazoned Battle Horn##36855
..accept 12146
step
goto 60,55.1
.talk 26983
..turnin 12146
..accept 12148
step
goto 50.0,60.0
.from Bonesunder##27006
.get Emblazoned Battle Horn##26854 |q 12147/1
step
goto 60,55.2
.talk 26983
.turnin 12148
..accept 12149
step
goto 66.3,70.5
'He patrols around this area.  Search along the canyon until you find him.
.kill Bloodfeast##27008 |q 12149/2
step
goto 68.4,50.5
.kill Iceshatter##27007 |q 12149/1
step
goto 68.0,37.7
.kill Drakegore##27009 |q 12149/3
step
goto 60,55.2
.talk 26983
.turnin 12149
..accept 12150
step
goto 72.8,49.9
' Fight with Dregmar Runebrand until he reveals the name of the Magnataur Warlord.
.' Name of the Magnataur Warlord revealed. |q 12150/1
step
goto 60,55.2
.talk 26983
.turnin 12150
..accept 12151
step
goto Dragonblight,57.1,76.2
'Use the Emblazoned Battle Horn at this location. |use Emblazoned Battle Horn##36864
.from Grom'thar the Thunderbringer##27002
..get Grom'thar's Head##36853 |q 12151/1
step
goto 60,55.2
.talk 26983
.turnin 12151
step
goto 60,54.5
.talk 27856
..accept 12470
step
goto 60.1,54.2
.talk 27765
..accept 12447
step
goto 71.7,38.9
.' Use your Hourglass of Eternity anywhere around this area|use Hourglass of Eternity##37923
.' Fight the mobs that spawn
.' Protect the Hourglass of Eternity |q 12470/1
step
'Go inside the cave to 35.2,30.0|goto 35.2,30.0
.talk 26593
..turnin 12447
..accept 12262
..accept 12261
step
'Go outside the cave to 37.9,32.0|goto 37.9,32.0
.kill 6 Burning Depths Necrolyte##27356+ |q 12262/1
.kill 10 Smoldering Skeleton##27360+ |q 12262/2
step
goto 42.1,32
.' Use your Destructive Wards in this spot|use Destructive Wards##37445
.' Defend the Destructive Ward from the mobs that spawn
.' Fully Charge the Destructive Ward |q 12261/1
step
'Go west into the cave to 35.2,30.0|goto 35.2,30.0
.talk 26593
..turnin 12262
..turnin 12261
..accept 12263
step
'Follow the path in the cave while disguised as a cultist to 31.8,30.5|goto 31.8,30.5
.' Uncover the Magmawyrm Resurrection Chamber |q 12263/1
step
'Follow the path back down to 35.2,30.0|goto 35.2,30.0
.talk 26593
..turnin 12263
..accept 12264
..accept 12265
step
'Follow the path in the cave to 34.2,26.8|goto 34.2,26.8
.kill 3 Burning Depths Necromancer##27358+ |q 12264/1
.kill 6 Smoldering Construct##27362+ |q 12264/2
.kill 6 Smoldering Geist##27363+ |q 12264/3
.click Necromantic Runes on the ground|tip The Necromantic Runes look like round purple symbols on the ground around this area in the cave.
.' Destroy 8 Necromantic Runes |q 12265/1
step
'Go back down in the cave to 35.2,30.0|goto 35.2,30.0
.talk 26593
..turnin 12264
..turnin 12265
..accept 12267
step
'Follow the path in the cave to 31.6,31.2|goto 31.6,31.2
.' Use Neltharion's Flame to Cleanse the Summoning Area|use Neltharion's Flame##37539|tip Stand on the edge of the rock, next to the lava.
.kill Rothin the Decaying##27355 |q 12267/2
step
'Go back down in the cave to 35.2,30.0|goto 35.2,30.0
.talk 26593
..turnin 12267
..accept 12266
step
'Hearth to Wyrmrest Temple|goto 59.7,54.2,0.3|use hearthstone##6948|noway|c
step
goto 57.9,54.2
.talk 26443
..'Tell him you want to go to the top of the temple|goto 59.7,53.1,0.5|noway|c
step
goto 60.1,54.2
.talk 27765
..turnin 12266
step
goto 60,54.5
.talk 27856
.turnin 12470
step
goto 59.6,54.4
.talk 27785
..accept 12458
step
goto 63.3,71
.from Emerald Lasher##27254+
.get 3 Lasher Seed|q 12458/1
step
goto 63.7,71.9
.talk 27255
..accept 12454
step
goto 63.8,72.4
.kill 5 Emerald Skytalon##27244+ |q 12454/1 |tip They fly around over your head around the lake.
step
goto 63.7,71.9
.talk 27255
.turnin 12454
..accept 12456
step
goto Dragonblight,64.6,77.2
'Use Skytalon Molts at this spot. |use Skytalon Molts##37881
.from Alystros the Verdant Keeper##27249
..get The Plume of Alystros##37880 |q 12456/1
step
goto 63.7,71.9
.talk 27255
.turnin 12456
step
goto 59.6,54.4
.talk 27785
..turnin 12458
..accept 12459
step
goto 59.5,53.3
.talk 26949
..'Tell him you want to go to the ground level of the temple|goto 58.0,55.2,0.5|noway|c
step
goto 55.2,45.7
.' Use your Seeds of Nature's Wrath on a Reanimated Frost Wyrm to weaken it|use Seeds of Nature's Wrath##37887|tip They fly around in the sky.
.kill Weakened Reanimated Frost Wyrm##27821 |q 12459/1
step
goto 60.3,51.6|n
.'Fly to Venomspite|goto 76.6,62.4,0.5|noway|c
step
goto 86.2,47
.' Use your Seeds of Nature's Wrath on a Turgid the Vile to weaken him|use Seeds of Nature's Wrath##37887|tip He's an abomination standing in a small room inside this abandoned fort.
.kill Weakened Turgid the Vile##27809 |q 12459/2
step
goto 89.5,19.1
.' Use your Seeds of Nature's Wrath on Overseer Deathgaze to weaken him|use Seeds of Nature's Wrath##37887|tip He's standing on an undead looking platform.
.kill Weakened Overseer Deathgaze##27807 |q 12459/3
step
goto 59.6,54.4
.talk 27785
..turnin 12459
step
goto 59.8,54.7
.talk 27990
..turnin 12419
step
'At this point, you will need to buy the tabard from the vendor in Dragonblight.
..' Click here to proceed. |confirm
step
goto Dragonblight,59.9,53.0
.talk 32533
.buy Tabard of the Wyrmrest Accord##43156
step
'Once you've bought the Tabard, you will have to run Specific instances from Wrath of the Lich King in order to gain rep.
.' Wear the Tabard of the Wyrmrest Accord in order to earn reputation while you clear the instance.
.' Dungeons that qualify for reputation gains are Utgarde Keep, Halls of Lightning, The Oculus, The Culling of Stratholme, Trial of the Champion, The Forge of Souls, Pit of Saron, Halls of Reflection and any Heroic variant of Wrath of the Lich King Dungeons.
' Become Exalted with The Wyrmrest Accord |condition rep('The Wyrmrest Accord')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with The Wyrmrest Accord!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\Kirin Tor",[[
step
goto Borean Tundra 45.3,33.3
.talk 25262
..accept 11587
step
goto 45,33.4
.talk 25291
..accept 11576
step
goto 40.5,39.2
.kill Beryl Mage Hunter##25585+ |n
.collect Beryl Prison Key##34688 |n
.click Arcane Prison##7631
.' Free an Arcane Prisoner |q 11587/1
step
goto 41.2,41.8|n
.' The path down to Monitoring the Rift: Cleftcliff Anomaly starts here |goto 41.2,41.8,0.5 |noway |c
step
goto 34.3,42
.' Use your Arcanometer in this spot next to the purple glowing crack in the ground |use Arcanometer##34669
.' Take the Cleftcliff Anomaly Reading |q 11576/1
step
goto 45,33.4
.talk 25291
..turnin 11576
..accept 11582
step
goto 45.3,33.3
.talk 25262
..turnin 11587
..accept 11590
step
goto 46.8,29.3|n
.' The path down to Monitoring the Rift: Sundered Chasm starts here |goto 46.8,29.3,0.5 |noway |c
step
goto 44,28.6
.' Go down the path and underwater
.' Use your Arcanometer next to the huge purple glowing crack underwater |use Arcanometer##34669
.' Take the Sundered Chasm Reading |q 11582/1
step
goto 45,33.4
.talk 25291
..turnin 11582
..accept 12728
step
goto 46.8,29.3|n
.' The path down to Monitoring the Rift: Winterfin Cavern starts here |goto 46.8,29.3,0.5 |noway |c
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
.' Fight a Beryl Sorcerer |modelnpc Beryl Sorcerer##25316+
.' Use your Arcane Binder on him when you see the 'Beryl Sorcerer can now be captured' message in your chat |use Arcane Binder##34691
.' Capture a Beryl Sorcerer |q 11590/1
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
|modelnpc Beryl Sorcerer##25316
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
.kill Inquisitor Salrand##25584+ |n
.click Salrand's Lockbox##10
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
step
'Watch the cutscene, then you'll get teleported back to Amber Ledge |goto 46.4,32.6,0.3 |noway
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
step
goto 45.3,34.5
.talk 24795
.' Fly to Transitus Shield, Coldarra |goto 33.1,34.4,0.5 |noway |c
step
goto 32.9,34.4
.talk 25314
..turnin 11733
step	
|fly Dalaran
step
goto Dalaran 25.3,47.7
.talk 32287
.buy 1 Tabard of the Kirin Tor##43157
step
'Once you've bought the Tabard, you will have to run Specific instances from Wrath of the Lich King in order to gain rep.
.' Wear the Tabard of the Kirin Tor in order to earn reputation while you clear the instance.
.' Dungeons that qualify for reputation gains are Utgarde Keep, Halls of Lightning, The Oculus, The Culling of Stratholme, Trial of the Champion, The Forge of Souls, Pit of Saron, Halls of Reflection and any Heroic variant of Wrath of the Lich King Dungeons.
'Earn Exalted status with the Kirin Tor |condition rep('Kirin Tor')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with The Kirin Tor!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\Knights of the Ebon Blade",[[
step
'Go to Icecrown |goto Icecrown |noway |c
step
'On the Skybreaker airship:
.talk 29799
..accept 12887
step
goto 44.3,21.5
.' Use your Eyesore Blaster on The Ocular |use Eyesore Blaster##41265 |tip The Ocular is a huge blue glowing eye at the very top of the Shadow Vault.
.' Destroy The Ocular |q 12887/1
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
.from Rabid Cannibal##29722+, Death Knight Master##29738+
.get 5 Scourge Essence|q 12891/4
step
goto 44.1,24.7
.talk 29804
..turnin 12891
..accept 12893
step
goto 43.4,19.1
.from The Leaper##29840
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
..accept 12896
step
'The entrance to the Shadow Vault starts here |goto 43.7,23.6,0.3 |c
step
goto 44.9,19.9
.click General's Weapon Rack##7950 |tip It looks like a sqaure metal table rack with swords laying on it, next to a big skull Runeforge with blue eyes.
.' General Lightsbane spawns
.kill General Lightsbane##29851 |q 12896/1
step
'The Skybreaker flies in a circular pattern using these points:
.' Point 1: [57.4,37.2]
.' Point 2: [64.4,55.4]
.'Find The Skybreaker flying around in the sky |tip On you world map, it looks like a blue ship icon with 2 spiky balls on either side of it.
.talk 29799
..turnin 12896
..accept 12898
step
goto 42.8,24.9
.talk 29343
..turnin 12898
..accept 12938
..accept 13106
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
.' Defeat Efrem the Faithful |q 12955/2
step
goto 36.1,23.6
.talk 30162
..' Tell her you can't afford her as a distraction
.' Defeat Tinky Wickwhistle |q 12955/4
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
goto 37.9,22.9
.talk 30180
..' Tell him you have bad news for him
.' Defeat Onu'zun |q 12955/3
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
'The entrance to the Ufrang's Hall starts here |goto 38.8,24.0,0.3 |c
step
goto 41.0,23.9
.talk 30056
..accept 12949
step
goto 40.3,23.9
.' Use your Shadow Vault Decree on Thane Ulfrang the Mighty |use Shadow Vault Decree##41776
..kill Thane Ulfrang the Mighty##29919 |q 12943/1
step
'Leave Ufrang's Hall |goto 38.8,24.0,0.3 |c
step
goto 36.5,23.6
.from Instructor Hroegar##29915
.get Key to Vaelan's Chains |q 12949/1
step
'The entrance to the Ufrang's Hall starts here |goto 38.8,24.0,0.3 |c
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
..accept 13085
step
goto 43.1,21.1
.talk 30218
..turnin 13085
step
goto 44.7,20.3
.talk 30002
..turnin 12943
step
goto 43.4,20.6
.talk 32538
.buy 1 Tabard of the Ebon Blade##43155
step
'Once you've bought the Tabard, you will have to run Specific instances from Wrath of the Lich King in order to gain rep.
.' Wear the Tabard of the Ebon Blade in order to earn reputation while you clear the instance.
.' Dungeons that qualify for reputation gains are Utgarde Keep, Halls of Lightning, The Oculus, The Culling of Stratholme, Trial of the Champion, The Forge of Souls, Pit of Saron, Halls of Reflection and any Heroic variant of Wrath of the Lich King Dungeons.
'Earn Exalted status with the Knights of the Ebon Blade |condition rep('Knights of the Ebon Blade')==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with the Knights of the Ebon Blade!	
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\The Oracles",[[
step
'Click here if you have not alligned with either Oracles or Frenzyheart tribe in Scholazar Basin |confirm
'Click here is you have already alligned with The Oracles |next "daily" |confirm
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
.' Follow the path inside the cave up to [72.2,57.3]
.kill Artruis the Heartless |q 12581/1 |tip Kill Zepik the Gorloc Hunter during the fight.
.' Click Artruis's Phylactery that spawns after the fight
..turnin 12581
..talk 28667
...accept 12689 |daily
...accept 12695
step
goto 54.6,56.4
.talk 28027
..turnin 12695
step
label daily
goto 54.6,56.4
.talk 28027
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
step
'After you complete the dailies above, you will need to repeat them in order to attain Exalted.
.' Click here to go back to the start of the dailies guide.  Keep in mind that they will not be reset by clicking here. |confirm |next "daily"
|next "exalted" |only if rep('The Orcales')==Exalted
step
label exalted
'Congratulations, you are now Exalted with The Oracles!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\The Frenzyheart Tribe",[[
step
'Click here if you have not alligned with either Oracles or Frenzyheart tribe in Scholazar Basin |confirm
'Click here is you have already alligned with The Frenzyheart Tribe |next "daily" |confirm
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
.kill Artruis the Heartless |q 12581/1 |tip Kill Jaloot during the fight.
.' Click Artruis's Phylactery that spawns after the fight
..turnin 12581
..talk 28668
...accept 12582 |daily
...accept 12692
step
goto 55.4,69.6
.talk 28138
.turnin 12692
step
label daily
goto 55.5,69.7
.talk 28138
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
step
'You will now have to run daily quests in order to gain reputation. 
.' Click here to go back to the start of the dailies. Note that this will not actually reset the daily quests. |confirm |next "daily"
|next "exalted" |only if rep('Frenzyheart Tribe')==Exalted
step
label exalted
'Congratulations, you are now Exalted with the Frenzyheart Tribe!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\Alliance Vanguard",[[
description This guide will help you get Exalted with the Alliance Vanguard
step
.' The most efficient way to earn reputation with the _Alliance Vanguard_ is to run any level 80 Northrend dungeon, or any Northrend Heroic.
.' Make sure that you _DO NOT_ have a tabard equipped, or you will not get reputation with the factions you need.
.' You will need to get Exalted with four factions, and as you get Exalted with each one, continue running dungeons to reach Exalted with all four.
|confirm
step
.' You are currently _Neutral_ with Explorers' League |only if rep("Explorers' League")==Neutral
.' You are currently _Friendly_ with Explorers' League |only if rep("Explorers' League")==Friendly
.' You are currently _Honored_ with Explorers' League |only if rep("Explorers' League")==Honored
.' You are currently _Revered_ with Explorers' League |only if rep("Explorers' League")==Revered
.' Exalted with Explorers' League |condition rep("Explorers' League")==Exalted 
.' You are currently _Neutral_ with The Frostborn |only if rep('The Frostborn')==Neutral
.' You are currently _Friendly_ with The Frostborn |only if rep('The Frostborn')==Friendly
.' You are currently _Honored_ with The Frostborn |only if rep('The Frostborn')==Honored
.' You are currently _Revered_ with The Frostborn |only if rep('The Frostborn')==Revered
.' Exalted with The Frostborn |condition rep('The Frostborn')==Exalted    
.' You are currently _Neutral_ with The Silver Covenant |only if rep('The Silver Covenant')==Neutral
.' You are currently _Friendly_ with The Silver Covenant |only if rep('The Silver Covenant')==Friendly
.' You are currently _Honored_ with The Silver Covenant |only if rep('The Silver Covenant')==Honored
.' You are currently _Revered_ with The Silver Covenant |only if rep('The Silver Covenant')==Revered
.' Exalted with The Silver Covenant |condition rep('The Silver Covenant')==Exalted   
.' You are currently _Neutral_ with Valiance Expedition |only if rep('Valiance Expedition')==Neutral
.' You are currently _Friendly_ with Valiance Expedition |only if rep('Valiance Expedition')==Friendly
.' You are currently _Honored_ with Valiance Expedition |only if rep('Valiance Expedition')==Honored
.' You are currently _Revered_ with Valiance Expedition |only if rep('Valiance Expedition')==Revered
.' Exalted with Valiance Expedition |condition rep('Valiance Expedition')==Exalted  
step
.' Congratulations, you are Exalted with the _Alliance Vanguard!_

]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Northrend\\Ashen Verdict",[[
step
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
'Congratulations, you are now Exalted with the Ashen Verdict!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Cataclysm\\Baradin's Wardens",[[
description This Guide will walk you through becoming
description Exalted with Baradin's Wardens.
daily
step
label "daily_reset"
'You will have to do these dailies in order to gain reputation with Baradin's Wardens.
.' You can also do the World PVP Event in Tol' Barad to gain reputation.
..' When you're ready, click here. |confirm
step
goto Stormwind City,73.2,18.4
.' Click the Portal to Tol Barad |tip It looks like a small white glowing portal.
.' Teleport to Tol Barad |goto Tol Barad Peninsula |noway |c
step
'You will only be able to accept a total of 6 quests in the following guide steps.
.' Click here to continue |confirm
step
goto Tol Barad Peninsula,72.9,60.9
.talk 48254
..accept 28275 |daily
..accept 27987 |daily
..accept 27978 |daily
..accept 27991 |daily
..accept 27975 |daily
..accept 27973 |daily
step
goto 73.4,59.2
.talk 47240
..accept 28059 |daily
..accept 28063 |daily
..accept 28130 |daily
..accept 28137 |daily
..accept 28065 |daily
step
goto 73.7,57.6
.talk 48255
..accept 27948 |daily
..accept 27972 |daily
..accept 27970 |daily
..accept 27971 |daily
..accept 28050 |daily
..accept 27944 |daily
step
goto 74.8,59.6
.talk 48250
..accept 28046 |daily
..accept 27967 |daily
..accept 27992 |daily
..accept 27966 |daily
..accept 27949 |daily
step
goto 74.3,42.8 |n
.' Follow the path up |goto 74.3,42.8,0.5 |noway |c
step
goto 78.6,42.0
.kill Commander Largo##47304 |q 27991/1 |tip He's at the top of the tower.
step
goto 78.2,49.0
.from Overlook Spectre##47182+, Ghastly Worker##47183+, Overlook Spirit##47181+, Cursed Stallion##46645+
.' Slay 14 Largo's Overlook Ghosts |q 27978/1
.click Cannonball Stack##4177
.get 4 Stack of Cannonballs |q 27987/1
step
goto 69.3,23.1
.click String of Fish##6705+
.get 22 Rustberg Seabass |q 28137/1
step
goto 67.6,37.1
.from Suspicious Villager##47657+, Apprehensive Worker##47659+, Rustberg Bandit##47627+
.kill 14 Rustberg Village Residents |q 28130/1
step
goto 54.2,47.0
.kill 12 Darkwood Lurker##46508+ |q 27944/1
.from Darkwood Broodmother##46507+
.get 4 Sticky Silk Gland |q 27948/1
step
goto 47.9,8.1
.kill Captain P. Harris##47287 |q 27970/1 |tip He's walking around on this broken boat.
step
goto 49.4,19.8
.kill Tank##46608 |q 28050/1 |tip He's an elite shark that swims in the water around this area.  This is a group quest, so you will probably need help.
.click Barrel of Southsea Rum##9095+
.get 6 Barrel of Southsea Rum |q 27972/1
step
goto 49.0,29.4
.kill 8 Shipwrecked Sailor##46605+ |q 27971/1
step
goto 36.1,27.3
.kill Keep Lord Farson##47447 |q 28059/1 |tip He's upstairs in the fort.
step
goto 37.8,29.1
.talk 48308
..' Tell him you're here to help him escape
.' Escort the Farson Prisoner |q 28065/1 |tip Follow the Farson Hold Prisoner and protect him.
step
goto 41.2,35.8
.click Rack of Rifles##8972
.get 12 Rusty Rifle |q 28063/1
step
goto 27.2,47.7
.kill Foreman Wellson##46648 |q 27975/1
step
goto 22.2,36.3
.clicknpc Wellson Cannon##48283
.' Shoot the boats
.' Destroy 10 Wellson Supply Boats |q 28275/1
step
goto 30.1,43.9
.from Ghastly Dockhand##46641+, Accursed Longshoreman##46630+, Accursed Shipbuilder##46643+
.get 15 Shipyard Lumber |q 27973/1
step
goto 40.2,57.9
.kill 5 Restless Infantry##46823 |q 28046/1
.' Use your Magnatized Scrap Collector |use Magnatized Scrap Collector##62829
.click Siege Scrap##6868+
.get 7 Siege Engine Scrap |q 27992/1
step
goto 38.4,77.6
.kill First Lieutenant Connor##46571 |q 27967/1
step
goto 38.1,71.5
.from Wandering Soul##46586+, Forgotten Ghoul##46569+
.get 9 Cursed Femur |q 27966/1
.click Forgotten Soldier's Tombstone##2452
.' Release 6 Tortured Souls |q 27949/1
step
goto 72.9,60.9
.talk 48254
..turnin 28275
..turnin 27987
..turnin 27978
..turnin 27991
..turnin 27975
..turnin 27973
step
goto 73.4,59.2
.talk 47240
..turnin 28059
..turnin 28063
..turnin 28130
..turnin 28137
..turnin 28065
step
goto 73.7,57.6
.talk 48255
..turnin 27948
..turnin 27972
..turnin 27970
..turnin 27971
..turnin 28050
..turnin 27944
step
goto 74.8,59.6
.talk 48250
..turnin 28046
..turnin 27967
..turnin 27992
..turnin 27966
..turnin 27949
step
'These daily quests will only be available if the Alliance faction currently controls Tol Barad.
|confirm
step
goto Tol Barad,50.9,49.7
.talk 48066
..accept 28122 |daily
..accept 28162 |daily
..accept 28163 |daily
step
goto 51.4,49.6
|modelnpc 2nd Lieutenant Wansworth##48061 
..Click here if 2nd Lieutenant Wansworth is present. |confirm |next wansworth_is_here
|modelnpc Commander Stevens##48039
..Click here if Commander Stevens is present. |confirm |next stevens_is_here
|modelnpc Marshal Fallows##48074
..Click here if Marshal Fallows is present. |confirm |next fallows_is_here
'Only one of these NPCs will be available.
step
label "wansworth_is_here"
goto 51.4,49.6
.talk 48061
..accept 28165 |daily
..accept 28185 |daily
..accept 28186 |daily
|next exit
step
label "stevens_is_here"
goto 51.5,49.5
.talk 48039
..accept 28117 |daily
..accept 28120 |daily
..accept 28118 |daily
|next exit
step
label "fallows_is_here"
goto 51.5,49.6
.talk 48074
..accept 28232 |daily
..accept 28188 |daily
..accept 28223 |daily
|next exit
step
label "exit"
goto 42.7,39.1 |n
.' Enter the underground jail |goto 42.7,39.1,0.5 |noway |c
step
goto 48.3,30.7
.from Svarnos##47544+
.get Svarnos' Cursed Collar |q 28185/1
step
goto 44.4,30.5
.from Imprisoned Imp##47549+, Cell Watcher##47542+, Shivan Destroyer##47540+, Jailed Wrathguard##47548+
.' Slay 10 Demons |q 28165/1
.click Cursed Shackle##181
.get 8 Cursed Shackles |q 28186/1
step
goto 42.1,41.8
.from Baradin Crocolisk##47591+
.get 8 Crocolisk Hide |q 28162/1
step
goto 44.0,69.2 |n
.' Enter the underground jail |goto 44.0,69.2,0.5 |noway |c
step
goto 37.5,71.7
.from Warden Silva##48036
.get Warden's Keys |q 28223/1
step
goto 40.9,78.2
.from Imprisoned Worker##47550+, Exiled Mage##47552+
.' Slay 10 Prisoners |q 28188/1
.click Crate of Cellblock Rations##347+
.get 12 Cellblock Ration |q 28232/1
step
goto 60.8,50.1 |n
.' Enter the underground jail |goto 60.8,50.1,0.5 |noway |c
step
goto 56.8,54.8
.from Archmage Galus##47537
.get Archmage Galus' Staff |q 28118/1
step
goto 51.4,49.5
.from Captive Spirit##47531+, Ghastly Convict##47590+
.' Slay 9 Ghosts |q 28117/1
.click Dusty Prison Journal##8051+
.get 4 Dusty Prison Journal |q 28120/1
step
goto 51.1,29.7
.' Kill 12 Horde Infantry |q 28163/1
step
goto 52.8,36.7
.kill Problim##47593 |q 28122/1 |tip He's a tall ogre that walks along the road that surrounds Baradin Hold, so you may need to search for him.  He's elite, and the quest is a group quest, so you may need help killing him.
step
goto Tol Barad,50.9,49.7
.talk 48066
..turnin 28122
..turnin 28162
..turnin 28163
step
goto 51.4,49.6
.talk 48061
..turnin 28165
..turnin 28185
..turnin 28186
step
goto 51.5,49.5
.talk 48039
..turnin 28117
..turnin 28120
..turnin 28118
step
goto 51.5,49.6
.talk 48074
..turnin 28232
..turnin 28188
..turnin 28223
step
'Click here to reset your dailies.  Keep in mind if you've done them and they haven't reset yet, you won't be able to do them a second time. |next "daily_reset" |confirm
.' Earn Exalted status with Baradin's Wardens |condition rep("Baradin's Wardens")==Exalted |next "exalted"
step
label exalted
'Congratulations, you are now Exalted with Hellscream's Reach!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Cataclysm\\Guardians of Hyjal",[[
description This guide will walk you through becoming Exalted
description with the Guardians of Hyjal faction.
step
goto Stormwind City,62.9,71.6
.click Hero's Call Board##10016
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
.' Use your Juniper Berries on Faerie Dragons |use Juniper Berries##53009 |modelnpc Faerie Dragon##39921
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
step
goto Mount Hyjal,62.8,23.8
.talk 50314
.buy 1 Tabard of the Guardians of Hyjal##65906
step
'Use the Guardians of Hyjal tabard and run through instances with it. |equipped Tabard of the Guardians of Hyjal##65906 |use Tabard of the Guardians of Hyjal##65906
.' Earn Exalted reputation with the Guardians of Hyjal |condition rep('Guardians of Hyjal')==Exalted |next "exalted"
step
label exalted
'Congratulations you are Exalted with the Guardians of Hyjal!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Cataclysm\\Wildhammer Clan",[[
description This guide will walk you through becoming Exalted
description with the Guardians of Hyjal faction.
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
.click Verrall River Muck##10352+
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
' |model Wildhammer Food Stores##224
' |model Wildhammer Food Stores##229 
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
.kill 8 Obsidian Pyrewing |q 28173/1
' |modelnpc 46141
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
.click Twilight Rune of Earth##465
..accept 27744
step
goto 35.2,90.4
.click Elementium Shard##10035+
.click Twilight Rune of Water##465
.' Destroy the Rune of Water |q 27744/2
step
goto 33.5,88.4
.click Elementium Shard##10035+
.click Twilight Rune of Air##465
.' Destroy the Rune of Air |q 27744/3
step
goto 34.3,86.6
.click Elementium Shard##10035+
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
label dailies
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
step
'Click here to return to the start of the dailies, you will only be able to do these once a day. |next "dailies" |confirm
'Click here to farm dungeons for reputation |next "dungeon" |confirm
step
label dungeon
goto Twilight Highlands,48.6,30.6
.talk 49386
.buy Tabard of the Wildhammer Clan##65908
step
'Use the Wildhammer Clan tabard and run through instances with it. |equipped Tabard of the Wildhammer Clan##65908 |use Tabard of the Wildhammer Clan##65908
.' Earn Exalted reputation with the Wildhammer Clan |condition rep('Wildhammer Clan')==Exalted |next "exalted"
step
label exalted
'Congratulations you are Exalted with the Wildhammer Clan!

]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Cataclysm\\Ramkahen",[[
step
goto Stormwind City 62.9,71.6
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
..accept 28602
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
'From this point you will need to run dailies and dungeons to build up reputation with Ramkahen.
.' Click here to move to the start of the dailies |confirm |next "daily"
.' Click here to run dungeons for reputation |confirm |next "dungeon"
step
label daily
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
step
.' Click here to move to the start of the dailies |confirm |next "daily"
.' Click here to run dungeons for reputation |confirm |next "dungeon"
step
label dungeon
goto Uldum 54.0,33.2
.talk 48617
.buy 1 Tabard of Ramkahen##65904
step
'Equip your Ramkahen tabard and run Cataclysm dungeons with it. |equipped Tabard of Ramkahen##65904 |use Tabard of Ramkahen##65904
.' Earn Exalted reputation with Ramkahen|condition rep('Ramkahen')==Exalted |next "exalted"		
step
label exalted
'Congratulations, you are now Exalted with Ramkahen!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Cataclysm\\The Earthen Ring",[[
author support@zygorguides.com
step
'To gain reputation with The Earthen Ring you will either need to quest or run dungeons wearing The Earthen Ring Tabard.
.' Click here to start questing. |confirm
.' Click here to run dungeons. |next "dungeon" |confirm
////Vashj'ir	
step
goto Stormwind City,62.9,71.6
.click Hero's Call Board##10016
..accept 27724
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
goto 49.2,57.0
.talk 40642
..turnin 25536
step
goto 46.9,57.5
.' Swim down under the big stone slab and into the small cove
.' Enter the cave |goto 46.9,57.5,0.5 |noway |c
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
.' Swim up to the second floor ddddddddddf the temple
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
////Deepholm
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
'Use The Earthen Ring tabard and run through instances with it.
..' Click here to continue. |confirm
////Dungeon
step
label dungeon
goto Stormwind City 73.3,16.9 |n
'Click the portal to Vashj'ir. |goto Abyssal Depths |noway|c
step
goto Shimmering Expanse 49.1,42.2
.talk 50324
.buy Tabard of the Earthen Ring##65905
step
'Equip The Earthen Ring tabard and run Cataclysm dungeons with it. |equipped Tabard of the Earthen Ring##65905 |use Tabard of the Earthen Ring##65905
.' Earn Exalted reputation with The Earthen Ring|condition rep('The Earthen Ring')==Exalted |next "exalted"		
step
label exalted
'Congratulations, you are now Exalted with The Earthen Ring!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Cataclysm\\Therazane",[[
description Contains the pre-quests to unlock 
description the daily quests in Deepholm.
description 
description You must be at least level 82 to
description complete this guide section.
author support@zygorguides.com
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
'At this point you can do the daily quests at Therazane to gain reputation.
.' Click here to begin daily quests. |confirm
step
label daily
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
goto 57.3,12.5
.talk 43804
..accept 27049 |daily
..accept 27050 |daily
step
goto 55.4,14.2
.talk 44945
..accept 26710 |daily |tip This quest can be offered at random and may not be offered everyday.
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
|confirm
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
step
'Once you've completed the daily quests, you will have to wait a day in order to do them again.
.' To go to the first step of the dailies, click here. |confirm |next "daily" |only if rep('Therazane')<=Revered
.' Earn Exalted reputation with Therazane |condition rep('Therazane')==Exalted |next "exalted" 
step
label exalted
'Congratulations, you are now Exalted with Therazane!
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Cataclysm\\Avengers of Hyjal",[[
author support@zygorguides.com
step
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
'Congratulations, you are now Exalted with the Avengers of Hyjal!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Player Vs. Player\\Silverwing Sentinels",[[
step
'In order to gain reputation with the Silverwing Sentinels you and your team must capture flags in Warsong Gulch.
'To join Warsong Gulch hit the _[H]_ key, click _Warsong Gulch_, and click _Join Battle_. 
'Earn Exalted status with the Silverwing Sentinels |condition rep('Silverwing Sentinels')==Exalted |next "exalted" 
step
label exalted
'Congratulations, you are now Exalted with the Silverwing Sentinels!'

]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Player Vs. Player\\The League of Arathor",[[
step
'In order to gain reputation with The League of Arathor you must participate in Arathi Basin, but first you should make sure you have a quest in your log before you start.
|confirm
step
|fly Refuge Pointe
step
goto Arathi Highlands 40.0,46.7
.talk 14983
..accept 8105
step
'To join Arathi Basin hit the _[H]_ key, click _Arathi Basin_, and click _Join Battle_. 
|confirm
step
'While in Arathi Basin:
'Click the Banners at each location. |model 6271
'Assault the Mine |q 8105/1
'Assault the Lumber Mill |q 8105/2
'Assault the Blacksmith |q 8105/3
'Assault the Farm |q 8105/4
'Upon completing this quest and reach Friendly reputation with The League of Arathor you should be able to accept another quest from Field Marshal Oslight.
step
goto Arathi Highlands 40.0,46.7
.talk 14983
..turnin 8105
step
goto Arathi Highlands 40.0,46.7
.talk 14983
..accept 8114
step
'Enter Arathi Basin and hold four bases at the same time. |q 8114/1
step
goto Arathi Highlands 40.0,46.7
.talk 14983
..turnin 8114
step
'Farm Arathi Basin until you are Exalted with The League of Arathor.
'Earn Exalted status with The League of Arathor |condition rep('The League of Arathor')==Exalted |next "exalted" 
step
label exalted
'Congratulations, you are now Exalted with The League of Arathor!'
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Reputations Guides\\Player Vs. Player\\Stormpike Guard",[[
step
'In order to gain reputation with the Stormpike Guard you must participate in Alterac Valley, but first you should pick up a few quests.
|confirm
step
goto Hillsbrad Foothills 45.3,45.2
.talk 13816
..accept 7141
step
goto 44.7,46.2
.talk 13841
..accept 7162
step
'Enter the cave |goto 44.6,45.8 <5 |c
step
goto 43.1,43.9
.talk 13777
..accept 7081
..accept 7102
..accept 7122
step
'To join Alterac Valley hit the _[H]_ key, click _Alterac Valley_, and click _Join Battle_. 
|confirm
step
goto Alterac Valley 43.5,15.6
.talk 13257
..accept 7223
step
'Enter the cave |goto 40.3,28.6 <5 |c
step	
goto 41.9,36.2
'Follow the path around and click the Stormpike Banner
.click Stormpike Banner##5191
.get Stormpike Banner##17849 |q 7162/1
step
'Exit the cave |goto 40.3,28.6 <5 |c
step
label checklist
'While in Alterac Valley: |tip You probably won't be able to do everything in one game, keep joining Alterac Valley matches.
.'Click Horde Flag
'Assault any Graveyard |q 7081/1
'Capture any Mine |q 7122/1
.'Click Horde Flag
'Assault any Tower |q 7102/1
'Loot Horde players when they die.
.get 20 Armor Scraps##17422 |q 7223/1
.kill Drek'Thar##11946 |q 7141/1
|model Horde Flag##5652
step
'Before you leave Alterac Valley:
goto Alterac Valley 43.5,15.6
.talk 13257
..turnin 7223
step
'To return to the Alterac Valley checklist click here. |next "checklist" |confirm
'To continue forward click here. |confirm
step
goto Hillsbrad Foothills 45.3,45.2
.talk 13816
..turnin 7141
step
goto 44.7,46.2
.talk 13841
..turnin 7162
step
'Enter the cave |goto 44.6,45.8 <5 |c
step
goto 43.1,43.9
.talk 13777
..turnin 7081
..turnin 7122
..turnin 7102
step
'Continue joining Alterac Valley until you reach Friendly with the Stormpike Guard. |condition rep('Stormpike Guard')>=Friendly |next "friendly" 
step
label friendly
goto Hillsbrad Foothills 44.7,46.2
.talk 13841
..accept 7168
step
'Continue joining Alterac Valley until you reach Honored with the Stormpike Guard. |condition rep('Stormpike Guard')>=Honored |next "honored" 		
step
label honored
goto Hillsbrad Foothills 44.7,46.2
.talk 13841
..accept 7169
step
'Continue joining Alterac Valley until you reach Revered with the Stormpike Guard. |condition rep('Stormpike Guard')==Revered |next "revered" 		
step
label revered
goto Hillsbrad Foothills 44.7,46.2
.talk 13841
..accept 7170
step
'Continue joining Alterac Valley until you reach Exalted with the Stormpike Guard. |condition rep('Stormpike Guard')==Exalted |next "exalted" 
step
label exalted
'Congratulations, you are now Exalted with the Stormpike Guard!'

]])
