if UnitFactionGroup("player")~="Horde" then return end
local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("IncludesH") then return end



--------------------------------------------------------------------------------------------------------------------------------------
-- Hearth Includes
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("hearth",[[
		'Hearth to the Valley of Strength |goto Orgrimmar |use Hearthstone##6948 |noway |c  
]])

ZygorGuidesViewer:RegisterInclude("home_ValleyofStrength",[[
		goto Orgrimmar,53.6,78.8
		.talk Innkeeper Gryshka##6929
		.home Valley of Strength
]])

ZygorGuidesViewer:RegisterInclude("home_ValleyofHonor",[[
		goto Orgrimmar,70.5,49.2
		.talk Innkeeper Nufa##46642
		.home Valley of Honor
]])

ZygorGuidesViewer:RegisterInclude("home_UC",[[
		goto Undercity,67.7,37.9
		.talk Innkeeper Norman##6741
		.home Trade Quarter
]])	

ZygorGuidesViewer:RegisterInclude("hearth_hub",[[
		'Hearth to the Valley of Strength |goto Orgrimmar |use Hearthstone##6948 |noway |c  
]])

ZygorGuidesViewer:RegisterInclude("hearth_ValleyofHonor",[[
		'Hearth to the Valley of Honor |goto Orgrimmar,70.6,49.2,0.5 |use Hearthstone##6948 |noway |c
]])

ZygorGuidesViewer:RegisterInclude("uctrade_hub",[[
		'Hearth to the Trade Quarter |goto Undercity,67.7,37.9,0.5 |use Hearthstone##6948 |noway |c
]])

ZygorGuidesViewer:RegisterInclude("hearth_dalaran",[[
		'Hearth to A Hero's Welcome, Dalaran  |goto Dalaran |use Hearthstone##6948 |noway |c  //44.4,62.7
]])

ZygorGuidesViewer:RegisterInclude("Spirt_Harmony",[[
		goto Vale of Eternal Blossoms/0 61.7,21.7
		.talk Danky##1149
]])

--------------------------------------------------------------------------------------------------------------------------------------
-- Portal Includes
--------------------------------------------------------------------------------------------------------------------------------------


ZygorGuidesViewer:RegisterInclude("h_begin_pandaria",[[
	step
		.' In order to get to Pandaria for the first time, you must complete the opening questline to The Jade Forest.
		|confirm
	step
		goto Orgrimmar 49.8,75.3
		..accept The Art of War##29612
		.' Report to Grommash Hold |q 29612/1
	step
		goto Orgrimmar 48.6,70.6
		.talk General Nazgrim##54870
		..turnin The Art of War##29612
		..accept All Aboard!##31853
	step
		goto Kalimdor 61.2,44.6
		' Look for a ship in the air. You have to use a flying mount to get to General Nazgrim.
		.talk General Nazgrim##55054
		..turnin All Aboard!##31853
		..accept Into the Mists##29690
	step
		.talk General Nazgrim##55054
		.' Tell him you're ready to go!
		.' Discover Pandaria |q 29690/1
	step
		goto The Jade Forest 30.8,10.2
		.talk General Nazgrim##55135
		..turnin Into the Mists##29690
		..accept Paint it Red!##31765
	step
		.' Follow the steps down here. |goto 31.4,11.3 <5 |c
	step
		.clicknpc Gunship Turret##67032
		|invehicle
	step
		.' Use your abilities on your action bar.
		.kill 80 Thunder Hold Troops |q 31765/1
		.kill 9 Thunder Hold Cannons |q 31765/2 
		|modelnpc 66203
		|modelnpc 66348
		|modelnpc 66506
		|modelnpc 66291
	step
		goto 31.0,11.0
		.talk Rivett Clutchpop##67250
		..turnin Paint it Red!##31765
		..accept Touching Ground##31766
	step
		  goto 31.5,11.1
		  .click Rappelling Rope##7548
		  .' Rappel into Honeydew Glade |q 31766/1
	step
		goto 31.6,11.3
		.talk General Nazgrim##55135
		..turnin Touching Ground##31766
]])



--How to get to the Dark Portal from Orgrimmar--
ZygorGuidesViewer:RegisterInclude("darkportal",[[
		goto Orgrimmar,45.9,66.9 |n
		.' Follow the path down |goto Orgrimmar,45.9,66.9,0.5 |noway |c
	step
		goto Orgrimmar/2 45.0,66.4
		.' Click the Portal to Blasted Lands |tip It's a blue swirling portal.
		.' Teleport to the Blasted Lands |goto Blasted Lands |noway |c
	step
		goto Blasted Lands,55.0,54.1 |n
		.' Enter the huge green portal 
		.' Teleport to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
]])

ZygorGuidesViewer:RegisterInclude("port_blastedlands",[[
		goto Orgrimmar 45.3,66.9
		.' Click the Portal to Blasted Lands |tip It looks like a blue swirling portal.
		.' Teleport to the Blasted Lands |goto Blasted Lands,53.9,46.1 |noway |c
]])

ZygorGuidesViewer:RegisterInclude("portal_hyjal",[[
		goto Orgrimmar,51.1,38.3
		.' Click the Portal to Hyjal |tip It looks like a big swirling portal in front of some huge tree roots.
		.' Teleport to Mount Hyjal |goto Mount Hyjal |noway |c
]])

ZygorGuidesViewer:RegisterInclude("port_hyjal",[[
		goto Orgrimmar,51.1,38.3
		.' Click the Portal to Hyjal |tip It looks like a big swirling portal in front of some huge tree roots.
		.' Teleport to Mount Hyjal |goto Mount Hyjal |noway |c
]])

ZygorGuidesViewer:RegisterInclude("HyjalPortaltoOrg",[[
		goto Mount Hyjal,63.5,24.4
		.' Click the Portal to Orgrimmar |tip It looks like a big swirling orange portal next to a big building.
		.' Teleport to Orgrimmar |goto Orgrimmar |noway |c
]])

ZygorGuidesViewer:RegisterInclude("shatport_org",[[
		goto Shattrath City 56.8,48.8
		.' Click the Portal to Orgrimmar |goto Orgrimmar 48.3,64.5 <5 |noway |c
]])

ZygorGuidesViewer:RegisterInclude("portal_deepholm",[[
		goto Orgrimmar,50.8,36.4 |n
		.' Click the Portal to Deepholm |tip It looks like a purple swirling portal.
		.' Teleport to Deepholm |goto Deepholm |noway |c
]])

ZygorGuidesViewer:RegisterInclude("port_deepholm",[[
		goto Orgrimmar,50.8,36.4 |n
		.' Click the Portal to Deepholm |tip It looks like a purple swirling portal.
		.' Teleport to Deepholm |goto Deepholm |noway |c
]])

ZygorGuidesViewer:RegisterInclude("port_vashj'ir",[[
		goto Orgrimmar,49.3,36.5
		.' Click on the portal to Vashj'ir |tip It looks like a blue swirling portal.
		.' Teleport to Vashj'ir |goto Abyssal Depths |noway |c
]])

ZygorGuidesViewer:RegisterInclude("OrgPortaltoUldum",[[
		goto Orgrimmar,48.9,38.6
		.' Click the Portal to Uldum |tip It looks like a big swirling portal in front of some big stone slabs.
		.' Teleport to Uldum |goto Uldum |noway |c
]])

ZygorGuidesViewer:RegisterInclude("port_uldum",[[
		goto Orgrimmar,48.8,38.6
		.' Click the Portal to Uldum |tip It looks like a blue swirling portal.
		.' Teleport to Uldum |goto Uldum |noway |c
]])

ZygorGuidesViewer:RegisterInclude("port_twilight",[[
		goto Orgrimmar,50.2,39.4
		.' Click the Portal to Twilight Highlands |tip It looks like a big swirling portal in front of some big metal twisting spiral objects.
		.' Teleport to Twilight Highlands |goto Twilight Highlands |noway |c
]])

ZygorGuidesViewer:RegisterInclude("TwilightHighlandsPortaltoOrg",[[
		goto Twilight Highlands,73.6,53.5
		.' Go into the Portal to Orgrimmar |tip It looks like a big swirling orange portal at the bottom of this tower.
		.' Teleport to Orgrimmar |goto Orgrimmar |noway |c
]])

ZygorGuidesViewer:RegisterInclude("rideto_org",[[ //coming from UC
		.' Go to Tirisfal |goto Tirisfal Glades |noway |c
	step
		goto Tirisfal Glades,60.7,58.8 |n
		.' Ride the Zeppelin to Orgrimmar |goto Orgrimmar |noway |c
]])

ZygorGuidesViewer:RegisterInclude("portal_pandaria",[[
		goto Orgrimmar 50.5,76.0
		.talk Adm'rl Placeholder##27
		.' Tell him Yes, Teleport Me! |goto Valley of the Four Winds 86.0,22.0 |noway |c
]])

--------------------------------------------------------------------------------------------------------------------------------------
-- Flight Path Includes
--------------------------------------------------------------------------------------------------------------------------------------
--Orgrimmar Flightpath--
ZygorGuidesViewer:RegisterInclude("OrgFpath",[[
		goto Orgrimmar 49.6,59.0
		.talk Doras##3310
]])

--------------------------------------------------------------------------------------------------------------------------------------
-- Zeppelin Includes
--------------------------------------------------------------------------------------------------------------------------------------

-- ZEPPELINS DEPARTING FROM ORGRIMMAR --

ZygorGuidesViewer:RegisterInclude("rideto_borean",[[
		goto Orgrimmar,44.7,62.4 |n
		.' Ride the zeppelin to Borean Tundra |goto Borean Tundra |noway |c
]])
ZygorGuidesViewer:RegisterInclude("rideto_tirisfal",[[
		goto Orgrimmar,50.8,55.8 |n
		.' Ride the zeppelin to Tirisfal Glades |goto Tirisfal Glades |noway |c
]])
ZygorGuidesViewer:RegisterInclude("rideto_stranglethorn",[[
		goto Orgrimmar,52.5,53.2 |n
		.' Ride the zeppelin to Stranglethorn Vale |goto Northern Stranglethorn |noway |c
]])
ZygorGuidesViewer:RegisterInclude("rideto_bootybay",[[
		goto Orgrimmar,52.5,53.2 |n
		.' Ride the zeppelin to Stranglethorn Vale |goto Northern Stranglethorn |noway |c
	step
		|fly Booty Bay
]])
ZygorGuidesViewer:RegisterInclude("rideto_org",[[ //coming from UC
		goto Tirisfal Glades,60.7,58.8 |n
		.' Ride the Zeppelin to Orgrimmar |goto Orgrimmar |noway |c
]])
-- ZEPPELINS DEPARTING FROM TIRISFAL GLADES --

ZygorGuidesViewer:RegisterInclude("TirisfalHowlingShip",[[
	step
		goto Tirisfal Glades,59.1,59.0 |n
		.' Ride the zeppelin to Howling Fjord |goto Howling Fjord |noway |c
]])





--------------------------------------------------------------------------------------------------------------------------------------
-- Leveling Eastern Kingdoms
--------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterInclude("H_Eastern_Plaguelands_Argent_Dawn",[[
	step
		#include "rideto_tirisfal"
	step
		|fly Thondroril River
	step
		goto Eastern Plaguelands,9.0,66.5
		.talk Fiona##45417
		..turnin Into the Woods##27683 |only if havequest(27683)
		..accept Gidwin Goldbraids##27367
		..accept Tarenar Sunstrike##27370
	step
		goto 4.1,36.0
		.talk Gidwin Goldbraids##45428
		..turnin Gidwin Goldbraids##27367
		..accept Just Encased##27368
	step
		goto 4.7,35.6 |n
		.' Enter the tunnel |goto 4.7,35.6,0.5 |noway |c
	step
		goto 5.1,33.4
		.from Crypt Stalker##8555+,Crypt Horror##8557+, Crypt Walker##8556+, Crypt Slayer##8558+ |tip All inside this tunnel.
		.get 8 Crypt Bile |q 27368/1
	step
		goto 4.7,35.6 |n
		.' Leave the tunnel |goto 4.7,35.6,0.5 |noway |c
	step
		goto Eastern Plaguelands,4.1,36.0
		.talk Gidwin Goldbraids##45428
		..turnin Just Encased##27368
		..accept Greasing the Wheel##27369
	step
		goto 3.4,38.0
		.click Banshee's Bell##9889+ |tip They are located right along the edge of the water
		.get 10 Banshee's Bells |q 27369/1
	step
		goto 9.0,66.5
		.talk Fiona##45417
		..turnin Greasing the Wheel##27369
	step
		goto 18.4,74.8
		.talk Tarenar Sunstrike##45429
		..turnin Tarenar Sunstrike##27370
		..accept What I Do Best##27371
	step
		goto 18.6,76.9
		.kill 5 Death's Step Miscreation##45444+ |q 27371/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin What I Do Best##27371
		..accept A Gift For Fiona##27372
	step
		goto 17.2,68.7
		.from Plaguehound Runt##8596+ |tip They share spawn locations with the Carrion Grubs.  So, if you are having trouble finding Plaguehound Runts, kill Carrion Grubs and more should spawn.
		.get 10 Plaguehound Blood |q 27372/1
		.' You can find more Plague Hound Runts around [Eastern Plaguelands,14.4,63.0].
	step
		goto 9.0,66.5
		.talk Fiona##45417
		..turnin A Gift For Fiona##27372
		..accept Onward, to Light's Hope Chapel##27373
	step
		goto 8.8,66.6
		.clicknpc Fiona's Caravan##10937
		..' Choose 1 of the 3 buffs you can choose from |tip All of the buffs only work while you're in Eastern Plaguelands.  Fiona's Lucky Charm gives you a chance to loot extra gold or items from enemies.  Gidwin's Weapon Oil gives you a chance to do extra Holy damage on melee and ranged attacks.  Tarenar's Talisman gives you a chance to do extra Holy damage on successful spell attacks.
		.' Click here to proceed. |confirm
	step
		goto 8.8,66.6
		.clicknpc Fiona's Caravan##45400
		..' Choose to go to the next destination
		.' Ride Fiona's Caravan |q 27373/1
	step
		goto 34.9,67.9
		.talk Janice Myers##44232
		.fpath Crown Guard Tower
	step
		goto 35.0,68.1
		.talk Urk Gagbaz##45500
		..accept Zaeldarr the Outcast##27432
	step
		goto 34.9,69.1
		.talk Fiona##45417
		..turnin Onward, to Light's Hope Chapel##27373
	step
		goto 35.3,68.8
		.talk Tarenar Sunstrike##45429
		..accept Traveling Companions##27381
	step
		goto 35.6,68.9
		.talk Carlin Redpath##11063
		..accept Little Pamela##27383
	step
		goto 35.9,69.3
		.' Go to the top of the tower
		.talk Argus Highbeacon##45451
		..' Ask him if he's interested in joining your caravan
		.' Find a traveling companion |q 27381/1
	step
		goto 35.9,69.3
		.talk Argus Highbeacon##45451
		..accept Rough Roads##27382
	step
		goto 35.3,68.9
		.talk Tarenar Sunstrike##45429
		..turnin Traveling Companions##27381
	step
		goto 32.4,83.7
		.talk Pamela Redpath##10926
		..turnin Little Pamela##27383
		..accept Pamela's Doll##27384
		..accept I'm Not Supposed to Tell You This##27392
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
		goto 40.3,83.8
		.from The Lone Hunter##45450
		.get Joseph's Hunting Blade |q 27392/1
	step
		goto 32.4,83.7
		.talk Pamela Redpath##10926
		..turnin Pamela's Doll##27384
		..turnin I'm Not Supposed to Tell You This##27392
		..accept Uncle Carlin##27385
	step
		ding 40
	step
		goto 35.6,68.9
		.talk Carlin Redpath##11063
		..turnin Uncle Carlin##27385
		..accept A Strange Historian##27386
	step
		goto 35.3,68.0
		.talk Chromie##10667
		..turnin A Strange Historian##27386
		..accept Villains of Darrowshire##27387
		..accept Heroes of Darrowshire##27388
		..accept Marauders of Darrowshire##27389
	step
		goto 35.0,68.1
		.talk Urk Gagbaz##45500
		..accept Cenarion Tenacity##27544
	step
		goto 35.6,68.9
		.talk Carlin Redpath##11063
		..' Ask him if he has the extended Annals of Darrowshire
		.get Extended Annals of Darrowshire |q 27388/1
	step
		goto 39.8,72.4
		.click Shattered Sword of Marduk##4175
		.get Shattered Sword of Marduk |q 27387/2
	step
		goto 39.6,72.1
		.kill 13 Plaguebat##8600+ |q 27382/1
	step
		goto 35.6,68.7
		.' Go to the top of the tower
		.talk Argus Highbeacon##45451
		..turnin Rough Roads##27382
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
		.click Davil's Libram##430
		.get Davil's Libram |q 27388/2
	step
		goto 35.0,68.2
		.talk Urk Gagbaz##45500
		..turnin Zaeldarr the Outcast##27432
	step
		goto 35.2,68.1
		.talk Chromie##10667
		..turnin Heroes of Darrowshire##27388
	step
		goto 37.3,60.2
		.click Horgus' Skull##4173
		.get Skull of Horgus |q 27387/1
	step
		goto 30.2,56.9
		.talk Rayne##16135
		..turnin Cenarion Tenacity##27544
		..accept Postponing the Inevitable##27420
		..accept Amidst Death, Life##27421
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
		.talk Rayne##16135
		..turnin Postponing the Inevitable##27420
		..turnin Amidst Death, Life##27421
	step
		goto 35.3,68.1
		.talk Chromie##10667
		..turnin Villains of Darrowshire##27387
		..turnin Marauders of Darrowshire##27389
		..accept The Battle of Darrowshire##27390
	step
		goto 35.1,84.0
		.' Use your Relic Bundle |use Relic Bundle##15209
		.' Fight in the battle and follow the instructions that appear on your screen
		.from Redpath the Corrupted##10938
		.' Joseph Redpath will appear after the battle at [Eastern Plaguelands,35.1,84.0]
		.talk Joseph Redpath##10936
		.' Accept Redpath's Forgiveness |q 27390/1
	step
		goto 32.4,83.7
		.talk Pamela Redpath##10926
		..turnin The Battle of Darrowshire##27390
		..accept Hidden Treasures##27391
	step
		goto 32.2,83.4
		.click Joseph's Chest##318
		..turnin Hidden Treasures##27391
	step
		goto 34.9,69.2
		.talk Fiona##45417
		..accept The Trek Continues##27448
	step
		goto 35.0,69.3
		.clicknpc Fiona's Caravan##45400
		..' Choose to go to the next destination
		.' Ride in Fiona's Caravan |q 27448/1
	step
		goto 52.9,53.1
		.talk Fiona##45417
		..turnin The Trek Continues##27448
		..accept Boys Will Be Boys##27455
	step
		goto 53.0,53.1
		.clicknpc Fiona's Caravan##45400
		.' Complete the Argus' Journal quest |tip This will give you a 2% experience bonus while in Eastern Plaguelands, so will allow you to level faster.  // %
		|confirm
	step
		goto 53.2,54.6
		.talk Betina Bigglezink##11035
		..accept To Kill With Purpose##27451
		..accept Dark Garb##27452
	step
		goto 53.8,54.0
		.' Go to the top of the tower
		.talk Frederick Calston##45575
		..accept Frederick's Fish Fancy##27450
	step
		goto 52.8,51.4
		.talk Vex'tul##45574
		..accept Honor and Strength##27449
		.kill 3 Mossflayer Rogue##45579+ |q 27449/1
	step
		goto 52.8,51.4
		.talk Vex'tul##45574
		..turnin Honor and Strength##27449
	step
		ding 41
	step
		goto 50.2,61.3
		.clicknpc Plague Puffer##45650+
		.get 8 Plague Puffer |q 27450/1
		.clicknpc Infectis Incher##45655+
		.get 8 Infectis Incher |q 27450/2
		.clicknpc Infectis Scuttler##45657+
		.get 8 Infectis Scuttler |q 27450/3
	step
		goto 53.7,62.3
		.from Unseen Servant##8538+, Stitched Horror##8543+, Hate Shrieker##8541+, Dark Caster##8526+, Scourge Warder##8525+, Gibbering Ghoul##8531+
		.collect 7 Living Rot##15447 |n |tip These only last 10 minutes, so keep an eye on the timer and try to get them as fast as you can.
		.' Use Mortar and Pestle once you have 7 Living Rot |use Mortar and Pestle##15454
		.get Coagulated Rot |q 27451/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin To Kill With Purpose##27451
	step
		goto 55.7,61.0
		.from Dark Summoner##8551+, Vile Tutor##8548+
		.get Death Cultist Headwear |q 27452/1
		.get Death Cultist Robes |q 27452/2
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Dark Garb##27452
		..accept Catalysm##27453
	step
		goto 57.6,72.6
		.' Use Betina's Flasks on Plague Ravagers and Blighted Surges underwater |use Betina's Flasks##61284
		.get 8 Active Liquid Plague Agent |q 27453/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Catalysm##27453
		..accept Just a Drop in the Bucket##27454
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
		.talk Betina Bigglezink##11035
		..turnin Just a Drop in the Bucket##27454
	step
		goto 53.8,54.0
		.' Go to the top of the tower
		.talk Frederick Calston##45575
		..turnin Frederick's Fish Fancy##27450
	step
		goto 74.4,53.3
		.talk Gidwin Goldbraids##45431
		..turnin Boys Will Be Boys##27455
		..accept A Boyhood Dream##27463
	step
		goto 73.8,51.9
		.talk Rimblat Earthshatter##16134
		..accept Gathering Some Grub(s)##27456
	step
		goto 74.9,53.5
		.talk Smokey LaRue##11033
		..accept Smokey and the Bandage##27458
	step
		goto 75.6,52.4
		.talk Jessica Chambers##16256
		.home Light's Hope Chapel
	step
		goto 75.6,52.0
		.talk Leonid Barthalomew the Revered##11036
		..accept The Brotherhood of Light##27459
	step
		goto 75.9,52.0
		.talk Lord Maxwell Tyrosus##11034
		..turnin A Boyhood Dream##27463
		..accept Argent Call: The Trial of the Crypt##27464
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
		.talk Lord Maxwell Tyrosus##11034
		..turnin Argent Call: The Trial of the Crypt##27464
		..accept Argent Call: The Noxious Glade##27465
	step
		goto 75.7,52.0
		.talk Master Craftsman Omarion##16365
		..accept Buried Blades##27467
	step
		goto 71.9,45.4
		.from Stephen Browman##46167
		.get Browman's Wrappings |q 27458/1
	step
		goto 72.1,41.6 |n
		.' Run up this path |goto 72.1,41.6,0.5 |noway |c
	step
		goto 77.4,37.3
		.kill 16 Noxious Glade Scourge |q 27465/1
		.kill 8 Noxious Glade Cultists |q 27465/2
		.clicknpc Slain Scourge Trooper##45695+
		.' Bury 10 Blades |q 27467/1
		' |from Diseased Flayer##8532+, Dread Weaver##8528+, Death Singer##8542+
		' |from Skullmage##45691+, Noxious Assassin##45692+
		|tip Be careful of the patrolling elite, Garginox, in this area.
		|modelnpc Garginox##45681
	step
		'Hearth to Light's Hope Chapel |goto 75.6,52.4,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 75.7,52.0
		.talk Master Craftsman Omarion##16365
		..turnin Buried Blades##27467
	step
		goto 75.9,52.0
		.talk Lord Maxwell Tyrosus##11034
		..turnin Argent Call: The Noxious Glade##27465
	step
		goto 74.9,53.5
		.talk Smokey LaRue##11033
		..turnin Smokey and the Bandage##27458
	step
		goto 71.1,60.6
		.from Carrion Grub##8603+, Carrion Devourer##8605+
		.get 15 Slab of Carrion Worm Meat |q 27456/1
	step
		goto 72.6,74.8
		.talk Archmage Angela Dosantos##16116
		..turnin The Brotherhood of Light##27459
		..accept Soft Landing##27460
	step
		goto 73.6,74.8
		.kill 10 Tyr's Hand Scarlet Crusader |q 27460/1
		' |from Scarlet Enchanter##9452+, Scarlet Warder##9447+, Scarlet Cleric##9449+
	step
		goto 77.6,79.4
		.click Crusader's Flare##6543
		..turnin Soft Landing##27460
		..accept To Take the Abbey##27461
		..accept To Take the Barracks##27462
	step
		goto 75.3,76.2
		.talk Crusade Commander Korfax##16112
		..turnin To Take the Barracks##27462
		..accept Scarlet Salvage##27614
		..accept The Wrathcaster##27615
		..accept The Huntsman##27616
		..accept The Commander##27619
	step
		ding 42
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
		.' Go upstairs into the main room of the fortress
		.kill Scarlet Commander Marjhan##46092 |q 27619/1
	step
		goto 74.5,77.5
		.' Go down the hall and up more stairs
		.kill Huntsman Leopold##46094 |q 27616/1
	step
		goto 75.3,76.2
		.talk Crusade Commander Korfax##16112
		..turnin Scarlet Salvage##27614
		..turnin The Wrathcaster##27615
		..turnin The Huntsman##27616
		..turnin The Commander##27619
		..accept Argent Upheaval##27618
	step
		goto 76.1,75.3
		.talk Archmage Angela Dosantos##16116
		..turnin Argent Upheaval##27618
	step
		goto 76.7,73.1
		.talk Crusade Commander Eligor Dawnbringer##16115
		..turnin To Take the Abbey##27461
		..accept Victory From Within##27612
		..accept The Assassin##27613
	step
		goto 77.8,71.0
		.' Click the Argent Portal |tip It looks like a swirling portal in a room on the north side of the building.  Follow the stairs up in the Library Wing, not the big spiral stairs in the middle of the building.
		.' Open the Portal within the Library Wing |q 27612/2
	step
		goto 78.6,72.9
		.' Click the Argent Portal |tip It looks like a swirling portal in a room on the west side of the building.
		.' Open the Portal within the Hall of Arms |q 27612/1
	step
		goto 77.6,72.7
		.' Follow the big spiral stairs up to the top of the bell tower
		.kill Rohan the Assassin##46095 |q 27613/1
	step
		goto 76.7,73.1
		.talk Crusade Commander Eligor Dawnbringer##16115
		..turnin Victory From Within##27612
		..turnin The Assassin##27613
		..accept Befouled No More##27617
	step
		goto 76.1,75.3
		.talk Archmage Angela Dosantos##16116
		..turnin Befouled No More##27617
		..accept Like Rats##27620
	step
		goto 82.3,79.4
		.kill Crusader Lord Valdelmar##46096 |q 27620/1
	step
		goto 75.6,52.0
		.talk Leonid Barthalomew the Revered##11036
		..turnin Like Rats##27620
	step
		 goto Eastern Plaguelands,75.8,52.4
		.talk Tarenar Sunstrike##45729
		..accept Argent Call: Northdale##27466
	step
		goto 73.8,51.9
		.talk Rimblat Earthshatter##16134
		..turnin Gathering Some Grub(s)##27456
		..accept An Opportune Alliance##27457
	step
		goto 61.8,41.0
		.talk Vex'tul##45574
		..accept Out of the Ziggurat##27481
	step
		goto 61.0,43.7
		.talk Deacon Andaal##45736
		..accept Righteous Indignation##27479
	step
		goto 61.6,43.1
		.talk Gamella Cracklefizz##45735
		..accept The Corpulent One##27477
	step
		goto 61.5,42.7
		.talk Fiona##45417
		..turnin An Opportune Alliance##27457
		..turnin Argent Call: Northdale##27466
	step
		goto 61.6,43.2
		.talk Tarenar Sunstrike##45729
		..accept Ix'lar the Underlord##27487
	step
		goto 61.8,35.7
		.kill Ix'lar the Underlord##45744 |q 27487/1 |tip He's a big purple bug that walks around this area, so you may need to search for him.
		.kill 10 Ix'lar's minion |q 27487/2
		' |from Scourge Guard##8527+, Gangled Golem##8544+, Nerubian Sycophant##45743+
	step
		goto 56.7,27.9
		.kill Borelgore##11896 |q 27477/1 |tip He's a huge yellow grub that walks along in this big trench.
	step
		goto 58.9,20.4 |n
		.' Run up this path |goto 58.9,20.4,0.5 |noway |c
	step
		goto 66.8,9.9
		.' Don't walk over the dirt piles on the ground, they spawn more enemies
		.from Warlord Thresh'jin##10822 |tip Don't worry that he's elite, you can kill him easily
		.get Body of Warlord Thresh'jin |q 27481/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Out of the Ziggurat##27481
		..accept Into the Flames##27482
	step
		goto 67.4,9.0
		.' Use the Body of Warlordw Thresh'jin next to the Bonfire at the top of the temple |use Body of Warlord Thresh'jin##61316
		.' Burn Warlord Thresh'jin's Body |q 27482/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Into the Flames##27482
	step
		goto 64.5,13.7
		.' Don't walk over the dirt piles on the ground, they spawn more enemies
		.from Mossflayer Cannibal##8562+, Mossflayer Scout##8560+, Mossflayer Shadowhunter##8561+, Infected Mossflayer##12261+
		.get 30 Mossflayer Eye |q 27479/1
	step
		'Hearth to Light's Hope Chapel |goto 75.6,52.4,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 75.9,53.4
		.talk Khaelyn Steelwing##12617
		.' Fly to Eastwall Tower, Eastern Plaguelands |goto 61.6,43.9,0.5 |noway |c
	step
		goto 61.3,44.5
		.talk Deacon Andaal##45736
		..turnin Righteous Indignation##27479
	step
		ding 43
	step
		goto 61.6,43.1
		.talk Gamella Cracklefizz##45735
		..turnin The Corpulent One##27477
	step
		goto 61.5,42.7
		.talk Fiona##45417
		..turnin Ix'lar the Underlord##27487
	step
		goto 61.6,43.2
		.talk Tarenar Sunstrike##45729
		..accept Impatience##27488
	step
		goto 65.5,24.4
		.click Open Prayer Book##254
		.get Gidwin's Prayer Book |q 27488/1
	step
		goto 61.6,43.2
		.talk Tarenar Sunstrike##45729
		..turnin Impatience##27488
		..accept Nobody to Blame but Myself##27489
	step
		goto 61.6,42.5
		.clicknpc Fiona's Caravan##45400
		..' Choose to go to the next destination
		.' Ride Fiona's Caravan to Northpass Tower |q 27489/1
	step
		goto 50.4,20.1
		.talk Tarenar Sunstrike##45729
		..turnin Nobody to Blame but Myself##27489
		..accept Beat it Out of Them##27522
	step
		goto 50.0,19.5
		.talk Kirkian Dawnshield##45826
		..accept Wretched Hive of Scum and Villainy##27521
	step
		goto 54.6,19.1
		.from Scourge Siege Engineer##17878+
		.' Beat 6 Scourge Siege Engineers |q 27522/1
		.' Discover Gidwin's Location |q 27522/2
		.' Discover Gidwin's Captor |q 27522/3
	step
		goto 47.0,17.4
		.kill 9 Quel'lithien Wretched |q 27521/1
		' |from Wretched Pathstrider##8565+, Wretched Woodsman##8563+, Wretched Ranger##8564+
	step
		goto 48.0,23.0
		.talk Corpseburner Tim##45816
		..accept Duskwing, Oh How I Hate Thee...##27523
	step
		goto 46.4,33.8
		.' Use The Corpseburner's Flare in this spot |use The Corpseburner's Flare##61334 |tip If you get a message that there are no valid targets, wait until Duskwing spawns.  He's a big gray bat that flies in the sky around this area.
		.from Duskwing##11897
		.get Patch of Duskwing's Fur |q 27523/1
	step
		goto 48.0,23.0
		.talk Corpseburner Tim##45816
		..turnin Duskwing, Oh How I Hate Thee...##27523
	step
		goto 50.5,20.2
		.talk Fiona##45417
		..turnin Beat it Out of Them##27522
		..accept Blind Fury##27524
	step
		goto 50.5,20.2
		.talk Argus Highbeacon##45451
		..accept The Plaguewood Tower##27532
	step
		goto 50.0,19.5
		.talk Kirkian Dawnshield##45826
		..turnin Wretched Hive of Scum and Villainy##27521
	step
		goto 27.6,21.2
		.talk Tarenar Sunstrike##45729
		..turnin Blind Fury##27524
		..accept Guardians of Stratholme##27525
	step
		goto 27.6,20.9
		.talk Crusader Kevin Frost##45831
		..accept Scourged Mass##27528
		..accept Defenders of Darrowshire##27529
		..accept Add 'em to the Pile##27539
	step
		goto 29.4,19.7
		.kill Karthis Darkrune##45868 |q 27525/2
		.collect The Baroness' Missive##61378 |n
		.' Click The Baroness' Missive in your bags |use The Baroness' Missive##61378
		..accept The Baroness' Missive##27551
	step
		goto 27.4,21.3
		.talk Tarenar Sunstrike##45729
		..turnin The Baroness' Missive##27551
		..accept Gidwin's Fate Revealed##27526
	step
		goto 29.1,26.2
		.' Enter this building and watch the cutscene
		.' Find Gidwin Goldbraids |q 27526/1
	step
		goto 28.4,25.9
		.talk Gidwin Goldbraids##45730
		..turnin Gidwin's Fate Revealed##27526
		..accept Journey's End##27527
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
		.talk Darrowshire Spirit##11064 |tip They spawn after you kill Cannibal Ghouls.
		.' Free 8 Darrowshire Spirits |q 27529/1
	step
		goto 28.5,25.9
		.talk Tarenar Sunstrike##45729
		..turnin Guardians of Stratholme##27525
	step
		goto 27.6,20.9
		.talk Crusader Kevin Frost##45831
		..turnin Scourged Mass##27528
		..turnin Defenders of Darrowshire##27529
		..turnin Add 'em to the Pile##27539
		..accept The Corpsebeasts##27530
	step
		ding 44
	step
		goto 28.3,32.3
		.' Use your Argent Lightwell Charm next to the big brown monster corpses |use Argent Lightwell Charm##61375 |tip You will have to put 3 around each corpse, and you can't put them too close together.
		.' Destroy 3 Corpsebeasts |q 27530/1
	step
		goto 27.6,20.9
		.talk Crusader Kevin Frost##45831
		..turnin The Corpsebeasts##27530
	step
		goto 17.7,28.0
		.talk Argent Apothecary Judkins##45828
		..turnin The Plaguewood Tower##27532
		..accept Counter-Plague Research##27531
		..accept Just a Little Touched##27535
	step
		goto 25.1,34.5
		.click Flesh Giant Foot##8077
		.get Flesh Giant Foot Scrapings |q 27531/3
	step
		goto 23.5,22.4
		.click Rotberry Bush##28+
		.get 20 Rotberry |q 27531/1
		.click Disembodied Arm##8373+
		.get 5 Disembodied Arm |q 27531/2
	step
		goto 17.7,28.0
		.talk Argent Apothecary Judkins##45828
		..turnin Counter-Plague Research##27531
	step
		goto 11.3,28.6
		.talk Augustus the Touched##12384
		..turnin Just a Little Touched##27535
		..accept A Fate Worse Than Butchery##27533
		..accept Augustus' Receipt Book##27534
	step
		goto 14.2,26.3
		.click Augustus' Receipt Book##4872
		.get Augustus' Receipt Book |q 27534/1
	step
		goto 14.4,28.5
		.kill 9 Plagued Swine##16117+ |q 27533/1
	step
		goto 11.3,28.6
		.talk Augustus the Touched##12384
		..turnin A Fate Worse Than Butchery##27533
		..turnin Augustus' Receipt Book##27534
	step
		'Use Gidwin's Hearthstone |use Gidwin's Hearthstone##61379
		.' Teleport to Light's Hope Chapel |goto 75.6,52.4,0.5 |noway |c
	step
		goto 73.7,52.1
		.talk Fiona##45417
		..turnin Journey's End##27527
	step
	label	"Annals"
		goto 76.1,51.0
		.talk Lord Raymond George##49856
		|tip These are dungeon quests. If you are not high level, you will need to get a group to continue.
		..accept Annals of the Silver Hand##28755 |repeatable
	step
		goto 27.8,11.6
		.' Enter Stratholme through this portal
		.' Teleport to Stratholme |goto Stratholme |noway |c
	step
		goto Stratholme,32.1,34.6
		.click The Bastion Door##444
		.' Enter the hallway |goto Stratholme,30.5,35.8,0.5 |c
	step
		goto Stratholme,22.4,56.6
		.click Hall of the High Command Door##444
		.' Enter the Hallway and turn left |goto 20.1,59.5,0.5 |noway |c
	step
		goto Stratholme,27.5,74.7
		.click Annals of the Silver Hand##8133
		.get Annals of the Silver Hand |q 28755/1
	step
		goto Eastern Plaguelands,76.2,51.0
		.talk Lord Raymond George##49856
		..turnin Annals of the Silver Hand##28755 |repeatable |next "Annals" |only if rep('Argent Dawn')<=Exalted |tip If you do not reset your instance then you will only be forced to clear mobs one time.
		.' Earn Exalted reputation with the Argent Dawn |condition rep('Argent Dawn')==Exalted |next "exalted" |only if rep('Argent Dawn')==Exalted
	step
	label exalted
		.' Congratulations, you are now Exalted with the _Argent Dawn_!
]])

--------------------------------------------------------------------------------------------------------------------------------------
-- Leveling Kalimdor
--------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------
-- Leveling Outland
--------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------
-- Leveling Northrend
--------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterInclude("H_Icecrown_Argent_Crusade_Rep",[[
	step
		goto Icecrown,87.8,78.1
		.talk Aedan Moran##30433
		.fpath The Argent Vanguard
	step
		goto 87.5,75.8
		.talk Highlord Tirion Fordring##28179
		..accept Honor Above All Else##13036
	step
		goto 87.1,75.8
		.talk Crusade Commander Entari##30223
		..turnin Honor Above All Else##13036
		..accept Scourge Tactics##13008
	step
		goto 86.8,76.7
		.talk Father Gustav##30226
		..accept Curing The Incurable##13040
	step
		goto 86.1,75.8
		.talk Crusade Lord Dalfors##30224
		..accept Defending The Vanguard##13039
	step
		goto 84.4,74.3
		.from Carrion Fleshstripper##30206+, Forgotten Depths Acolyte##30205+
		.kill 15 Forgotten Depths Nerubian |q 13039/1
		.get 10 Forgotten Depths Venom Sac|q 13040/1
		.' Kill the white spider wrappings around this area.
		|modelnpc Webbed Crusader##17680
		.' Free 8 Webbed Crusaders |q 13008/1
	step
		goto 86.1,75.8
		.talk Crusade Lord Dalfors##30224
		..turnin Defending The Vanguard##13039
	step
		goto 86.8,76.7
		.talk Father Gustav##30226
		..turnin Curing The Incurable##13040
	step
		goto 87.1,75.8
		.talk Crusade Commander Entari##30223
		..turnin Scourge Tactics##13008
		..accept If There Are Survivors...##13044
	step
		goto 87.0,79.0
		.talk Penumbrius##30227
		..turnin If There Are Survivors...##13044
		..accept Into The Wild Green Yonder##13045
	step
		goto 87.1,79.1
		'Click the Argent Skytalon to ride it |modelnpc Argent Skytalon##30500 |invehicle |c |q 13045
	step
		goto 79.0,67.4
		.' Use the Grab Captured Crusader ability near Captured Crusaders to pick them up |petaction Grab Captured Crusader
		.' Once you pick up a Captured Crusader, fly to [86.9,76.5]
		.' Use the Drop Off Captured Crusader ability near the tents to drop off the crusaders
		.' Repeat this process 2 more times
		.' Rescue 3 Captured Crusaders |q 13045/1
	step
		.' Click the red arrow on your vehicle hot bar to stop riding the dragon |outvehicle |c
	step
		goto 87.5,75.8
		.talk Highlord Tirion Fordring##28179
		..turnin Into The Wild Green Yonder##13045
		..accept A Cold Front Approaches##13070
	step
		goto 85.6,76.0
		.talk Siegemaster Fezzik##30657
		..turnin A Cold Front Approaches##13070
		..accept The Last Line Of Defense##13086
	step
		goto 85.3,75.9
		'Click the Argent Cannon to get on it |modelnpc Argent Cannon##30236 |invehicle |c |q 13086
	step
		'Use the skills on your hotbar to kill scourge mobs and dragons
		'|from Forgotten Depths Slayer##30593+
		.kill 100 Scourge Attacker |q 13086/1
		.kill 3 Frostbrood Destroyer##30575+ |q 13086/2
	step
		.' Click the red arrow on your vehicle hot bar to stop using the cannon |outvehicle |c
	step
		goto 85.6,76.0
		.talk Siegemaster Fezzik##30657
		..turnin The Last Line Of Defense##13086
	step
		goto 86.0,75.8
		.talk Highlord Tirion Fordring##28179
		..accept Once More Unto The Breach, Hero##13105 |only DeathKnight
		..accept Once More Unto The Breach, Hero##13104 |only !DeathKnight
	step
		goto 83.0,72.9
		.talk The Ebon Watcher##30596
		..turnin Once More Unto The Breach, Hero##13105 |only DeathKnight
		..turnin Once More Unto The Breach, Hero##13104 |only !DeathKnight
		..accept The Purging Of Scourgeholme##13118
		..accept The Scourgestone##13122
	step
		goto 83.0,73.1
		.talk Crusade Architect Silas##30686
		..accept The Stone That Started A Revolution##13130
	step
		goto 83.0,73.1
		.talk Crusade Engineer Spitzpatrick##30714
		..accept It Could Kill Us All##13135
	step
		goto 82.9,72.8
		.talk Father Gustav##30683
		..accept The Restless Dead##13110
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
		.talk Father Gustav##30683
		..turnin The Restless Dead##13110
	step
		goto 83.0,72.9
		.talk The Ebon Watcher##30596
		..turnin The Purging Of Scourgeholme##13118
		..turnin The Scourgestone##13122
		..accept The Air Stands Still##13125
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
		.talk The Ebon Watcher##30596
		..turnin The Air Stands Still##13125
	step
		goto Crystalsong Forest,59.9,57.2 //// Display ID
		.from Unbound Ent##30862+, Unbound Dryad##30860+
		.get 8 Crystallized Energy |q 13135/1
		.click Crystalline Heartwood##8439  
		.get 10 Crystalline Heartwood |q 13130/1
	step
		goto 73.8,53.0
		.click Ancient Elven Masonry##8356 
		.get 10 Ancient Elven Masonry|q 13130/2
		.' You can find more Ancient Elven Masonry around [79.6,61.3] |n
	step
		goto Icecrown,83.0,73.1
		.talk Crusade Architect Silas##30686
		..turnin The Stone That Started A Revolution##13130
	step
		goto 83.0,73.1
		.talk Crusade Engineer Spitzpatrick##30714
		..turnin It Could Kill Us All##13135
	step
		goto 82.9,72.8
		.talk Father Gustav##30683
		..accept Into The Frozen Heart Of Northrend##13139
	step
		goto 86.0,75.8
		.talk Highlord Tirion Fordring##28179
		..turnin Into The Frozen Heart Of Northrend##13139
		..accept The Battle For Crusaders' Pinnacle##13141
	step
		goto 80.1,72.0
		.' Use your Blessed Banner of the Crusade |use Blessed Banner of the Crusade##43243
		.' Watch the Battle for Crusaders' Pinnacle |q 13141/1
	step
		goto 82.9,72.8
		.talk Father Gustav##30683
		..turnin The Battle For Crusaders' Pinnacle##13141
		..accept The Crusaders' Pinnacle##13157
	step
		goto 79.8,71.8
		.talk Highlord Tirion Fordring##28179
		..turnin The Crusaders' Pinnacle##13157
		..accept A Tale of Valor##13068
	step
		goto 79.5,72.7
		.talk Warlord Hork Strongbrow##31240
		..accept Orgrim's Hammer##13224
	step
		goto 79.8,30.8
		.talk Crusader Bridenbrad##30562
		..turnin A Tale of Valor##13068
		..accept A Hero Remains##13072
	step
		goto 79.8,71.8
		.talk Highlord Tirion Fordring##28179
		..turnin A Hero Remains##13072
		..accept The Keeper's Favor##13073
	step
		goto 87.1,77.0
		.talk Arch Druid Lilliandra##30630
		..' Ask her for a portal to Moonglade
		..' Click the Moonglade Portal that appears next to you |goto Moonglade |noway |c
	step
		goto Moonglade,36.2,41.8
		.talk Keeper Remulos##11832
		..turnin The Keeper's Favor##13073
		..accept Hope Within the Emerald Nightmare##13074
	step
		goto 33.7,44.1
		.click Emerald Acorn##424
		.get 3 Emerald Acorn|q 13074/1
	step
		'Right click your Fitfull Dream buff to awaken from the nightmare |nobuff Spell_Nature_Sleep |q 13074 |tip The Fitfull Dream buff icon looks like a closed eye.
	step
		goto 36.2,41.8
		.talk Keeper Remulos##11832
		..turnin Hope Within the Emerald Nightmare##13074
		..accept The Boon of Remulos##13075
	step
		.talk Keeper Remulos##11832
		..' Tell him you wish to return to Arch Druid Lilliandra.
		..' Click the Moonglade Return Portal |goto Icecrown |noway |c
	step
		goto 79.8,30.8
		.talk Crusader Bridenbrad##30562
		..turnin The Boon of Remulos##13075
		..accept Time Yet Remains##13076
	step
		goto 79.8,71.8
		.talk Highlord Tirion Fordring##28179
		..turnin Time Yet Remains##13076
		..accept The Touch of an Aspect##13077
	step
		|fly Wyrmrest Temple
	step
		goto Dragonblight,57.9,54.2|n
		.talk Tariolstrasz##26443
		..'Tell him you need to go to the top of the temple|goto Dragonblight,59.7,53.1,0.1 |noway |c
	step
		goto 59.8,54.7
		.talk Alexstrasza the Life-Binder##26917
		..turnin The Touch of an Aspect##13077
		..accept Dahlia's Tears##13078
	step
		goto 59.5,53.3|n
		.talk Torastrasza##26949
		..'Tell him you want to go to the ground level of the temple |goto Dragonblight,58.0,55.2,0.1|noway|c
	step
		goto 43.2,51.7
		.' There should be a fight happening, so just wait around until the fight is over |tip If there isn't fight happening, just wait until the fighters spawn again, and there should be some red dragon Ruby Watchers flying above the fight.
		..' At the end of the fight, a Ruby Watcher will blow alot of fire on the ground and the Dahlia's Tears will spawn
		.click Dahlia's Tears##8329 
		..get Dahlia's Tears|q 13078/1
	step
		goto 57.9,54.2|n
		.talk Tariolstrasz##26443
		..'Tell him you need to go to the top of the temple |goto Dragonblight,59.7,53.1,0.1|noway|c
	step
		goto 59.8,54.7
		.talk Alexstrasza the Life-Binder##26917
		..turnin Dahlia's Tears##13078
		..accept The Boon of Alexstrasza##13079
	step
		goto 59.5,53.3|n
		.talk Torastrasza##26949
		..'Tell him you want to go to the ground level of the temple |goto Dragonblight,58.0,55.2,0.1|noway|c
	step
		|fly Crusaders' Pinnacle
	step
		goto 79.8,30.8
		.talk Crusader Bridenbrad##30562
		..turnin The Boon of Alexstrasza##13079
		..accept Hope Yet Remains##13080
	step
		goto 79.8,71.8
		.talk Highlord Tirion Fordring##28179
		..turnin Hope Yet Remains##13080
		..accept The Will of the Naaru##13081
	step
		.' Click the Portal to Shattrath that appears near you|goto Shattrath City|noway|c
	step
		goto Shattrath City,54,44.8
		.talk A'dal##18481
		..turnin The Will of the Naaru##13081
		..accept The Boon of A'dal##13082
	step
		goto Dalaran,72.2,45.8
		.talk Aludane Whitecloud##28674
		..' Fly to Crusaders' Pinnacle in Icecrown|goto Icecrown,79.3,72.3,0.5|noway|c
	step
		goto Icecrown,79.8,30.8
		.talk Crusader Bridenbrad##30562
		..turnin The Boon of A'dal##13082
	step
		goto 79.8,30.8
		.click Bridenbrad's Possessions##1 
		..accept Light Within the Darkness##13083
	step
		goto 79.8,71.8
		.talk Highlord Tirion Fordring##28179
		..turnin Light Within the Darkness##13083
	step
		'You should now be above honored with the _Argent Crusade_.
		.' The fastest way to continue to earn reputation with _Argent Crusade_ is to buy a tabard and run any dungeon that gives experience. 
		|confirm
	step
		goto Icecrown,87.5,75.6
		.talk Veteran Crusader Aliocha Segard##30431
		.buy 1 Tabard of the Argent Crusade##43154
	step
		.' Equip this Tabard in your bags |equipped Tabard of the Argent Crusade##43154 |use Tabard of the Argent Crusade##43154
		.' You can run any dungeon that grants experience to gain reputation for the Argent Crusade.
		.' Friendly with Argent Crusade |condition rep('Argent Crusade')>=Friendly
		.' Honored with Argent Crusade |condition rep('Argent Crusade')>=Honored
		.' Revered with Argent Crusade |condition rep('Argent Crusade')>=Revered
		.' Become Exalted with Argent Crusade |condition rep('Argent Crusade')==Exalted
	step
		'Congratulations! You are now Exalted with the _Argent Crusade_!
]])
--------------------------------------------------------------------------------------------------------------------------------------
-- Leveling Cataclysm
--------------------------------------------------------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------------------------------------------------------
-- EVENTS
--------------------------------------------------------------------------------------------------------------------------------------
--Darkmoon Faire--
ZygorGuidesViewer:RegisterInclude("H_Darkmoon_Faire_Dailies",[[
	step
		|fly Thunder Bluff
	step
		goto Mulgore,36.8,35.8
		.click the Portal to Darkmoon Island
		.' Telport to Darkmoon Island |goto Darkmoon Island |noway |c
	step
		goto Darkmoon Island,56.0,52.9 |n
		.' Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9,1 |noway |c
	step
		goto Darkmoon Island,54.3,53.1
		.talk Zina Sharpworth##55266
		.buy Sack o' Tokens##78909 |n
		.' Open your Sack o' Tokens in your bags |use Sack o' Tokens##78909
		.collect 20 Darkmoon Faire Game Tokens##71083
	step
		goto Darkmoon Island,53.3,54.4
		.talk Mola##54601
		..accept It's Hammer Time##29463 |daily
	step
		goto Darkmoon Island,53.3,54.4
		.talk Mola##54601
		.' Tell her:
		.' <Ready to whack!> |havebuff Interface\Icons\inv_hammer_32
	step
		.' Use the _Whack!_ on your bar and whack the Gnolls in the Barrels
		.' The Gnolls  will pop up in the Barrels, but be careful not to hit the _Doll_ or you will get stunned.
		.' Whack 30 Gnolls |q 29463/1
	step
		goto Darkmoon Island,53.3,54.4
		.talk Mola##54601
		..turnin It's Hammer Time##29463
	step
		goto Darkmoon Island,52.5,56.2
		.talk Maxima Blastenheimer##15303
		..accept The Humanoid Cannonball##29436 |daily
		|next "quest"
	step
	label	"target"
		goto Darkmoon Island,57.1,89.6
		.talk Teleportologist Fozlebub##57850
		.' Tell him:
		.' <Teleport me to the cannon.> |goto 52.7,56.0,1 |noway |c
	step
	label	"quest"
		goto Darkmoon Island,52.5,56.2
		.talk Maxima Blastenheimer##15303
		.' Tell her:
		.' <Launch me!>
		'Wait for the Cannon to Launch you |havebuff Interface\Icons\Spell_Magic_FeatherFall
	step
		goto Darkmoon Island,56.4,93.3
		.' You will be launched throught the air. 
		.' You the __ to drop in the water in the target. You will gain more points for getting closer to the middle.
		.' Earn 5 Target Points |q 29436/1
		.' Click here to try again |confirm |next "target"
	step
		goto Darkmoon Island,57.1,89.6
		.talk Teleportologist Fozlebub##57850
		.' Tell him:
		.' <Teleport me to the cannon.> |goto 52.7,56.0,1 |noway |c
	step
		goto Darkmoon Island,52.5,56.2
		.talk Maxima Blastenheimer##15303
		..turnin The Humanoid Cannonball##29436
	step
		goto 49.3,60.8
		.talk Rinling##14841
		..accept He Shoots, He Scores!##29438 |daily
	step
		goto 49.3,60.8
		.talk Rinling##14841	
		.' Tell him:
		.' <Let's shoot!> |havebuff Interface\Icons\INV_Weapon_Rifle_05
	step
		'Shoot at the 3 targets. 
		.' When you see a green marker appear over a target, make sure that you are aimed at it and _shoot_ |tip To aim, simply move the camera to face your current target.
		.' Shoot 25 Targets |q 29438/1
	step
		goto 49.3,60.8
		.talk Rinling##14841
		..turnin He Shoots, He Scores!##29438 |daily
	step
		goto Darkmoon Island,50.7,65.1
		.talk Finlay Coolshot##54605
		..accept Tonk Commander##29434 |daily
	step
		goto Darkmoon Island,50.7,65.1
		.talk Finlay Coolshot##54605
		.' Tell him:
		.' <Ready to Play.> |invehicle |c
	step
		'Use your _Cannon_ ability to shoot _Tonk Targets_.
		.from Tonk Target##33081+
		.' Destroy 30 Tonk Targets |q 29434/1
	step
		goto Darkmoon Island,50.7,65.1
		.talk Finlay Coolshot##54605
		..turnin Tonk Commander##29434
	step
		goto 51.6,77.8
		.talk Jessica Rogers##54485
		..accept Target: Turtle##29455 |daily
	step
		goto 51.6,77.8
		.talk Jessica Rogers##54485
		.' Tell her: 
		.' <Ready to play!> |havebuff Interface\Icons\INV_Jewelry_Ring_03
	step
		'Use your _Ring Toss_ ability to throw rings on the turtle.  |tip When aiming, move the marker over the middle of the turtle.
		.' Land 3 Rings on Dubenko |q 29455/1
		'|modelnpc 54490
	step
		goto 51.6,77.8
		.talk Jessica Rogers##54485
		..turnin Target: Turtle##29455
]])

ZygorGuidesViewer:RegisterInclude("H_Darkmoon_Faire_Quests",[[ 
	step
		goto Mulgore,36.8,35.8
		.click the Portal to Darkmoon Island
		.' Telport to Darkmoon Island |goto Darkmoon Island |noway |c
	step
		goto Darkmoon Island,56.0,52.9 |n
		.' Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9,1 |noway |c
	step
		goto Darkmoon Island 55.4,54.8
		.talk Selina Dourman##10445
		..accept Banners, Banners Everywhere!##29520
		|only if skill("Tailoring")>74
	step
		goto Darkmoon Island,49.3,60.8
		.talk Rinling##14841
		..accept Talkin' Tonks##29511
		|only if skill("Engineering")>74
	step
		goto Darkmoon Island,49.3,60.7
		.talk Rinling##14841
		..accept Rearm, Reuse, Recycle##29518
		|only if skill("Mining")>74
	step
		goto 49.3,60.9
		.talk Rinling##14841
		..accept Eyes on the Prizes##29517
		|only if skill("Leatherworking")>74
	step
		goto Darkmoon Island,52.9,68.0
		.talk Stamp Thunderhorn##14845
		..accept Putting the Crunch in the Frog##29509
		|only if skill("Cooking")>74
	step
		goto Darkmoon Island,52.9,68.0
		.talk Stamp Thunderhorn##14845		
		..accept Spoilin' for Salty Sea Dogs##29513
		|only if skill("Fishing")>74
	step
		goto Darkmoon Island,55.0,70.8
		.talk Chronos##14833
		..accept Putting the Carnies Back Together Again##29512
		|only if skill("First Aid")>74
	step
		goto Darkmoon Island,55.0,70.8
		.talk Chronos##14833
		..accept Tan My Hide##29519
		|only if skill("Skinning")>74
	step
		goto Darkmoon Island,55.0,70.8
		.talk Chronos##14833
		..accept Herbs for Healing##29514
		|only if skill("Herbalism")>74
	step
		goto 50.5,69.6
		.talk Sylannia##14844
		..accept A Fizzy Fusion##29506
		|only if skill("Alchemy")>74
	step
		goto 55.0,70.8
		.talk Chronos##14833
		..accept Keeping the Faire Sparkling##29516
		|only if skill("Jewelcrafting")>74
	step
		goto Darkmoon Island,53.2,75.8
		.talk Sayge##14822
		..accept Putting Trash to Good Use##29510
		|only if skill("Enchanting")>74
	step
		goto Darkmoon Island,51.1,82.0
		.talk Yebb Neblegear##14829
		..accept Baby Needs Two Pair of Shoes##29508
		|only if skill("Blacksmithing")>74
	step
		goto 52.5,88.7
		.buy Fishing Pole##6256
		|only if skill("Fishing")>74
	step
		goto Darkmoon Island,51.7,91.6
		.' Equip your Fishing Pole |equipped Fishing Pole##6256 |use Fishing Pole##6256 |q 29513
		.' Use your Fishing ability to catch _Sea Herrings_ |cast Fishing##7620
		.' Catch 5 Great Sea Herring |q 29513/1
		|only if skill("Fishing")>74
	step
		goto Darkmoon Island,47.9,74.5
		.' Use your Darkmoon Bandage on Injured Carnies |use Darkmoon Bandage##71978
		.' Heal 4 Injured Carnies |q 29512/1
		'|modelnpc 54518
		|only if skill("First Aid")>74
	step
		'All around the Island
		.' Click Discarded Weapons
		.collect 6 Discarded Weapon##72018 |n
		.' Disenchant the Discarded Weapons |use Discarded Weapon##72018
		.' Collect 6 Soothsayer's Dust |q 29510/1
		|modeldisplay Discarded Weapon##10777
		|only if skill("Enchanting")>74
	step
		'All around the Island
		.click Tonk Scrap##6314
		.' Collect 6 pieces of Tonk Scrap |q 29518/1
		|only if skill("Mining")>74
		'|model 7975
	step
		'All around the Island
		.click Bits of Glass##238
		.collect 5 Bits of Glass##72052 |n
		.' Click the Bits of Glass in your bags |use Bit of Glass##72052
		.' Make 5 Sparkling Gemstones |q 29516/1
		|only if skill("Jewelcrafting")>74
	step
		.' All around the Island
		.' Use your Battered Wrench to repair Damaged Tonk's |use Battered Wrench##72110
		.' Repair 5 Damaged Tonk's |q 29511/1
		'|modelnpc 54504
		|only if skill("Engineering")>74
	step
		.' All around the Island
		.click Darkblossom##209284
		.' Gather 6 Darkblossom |q 29514/1
		|only if skill("Herbalism")>74
	step
		.' All around the Island
		.' Click Staked Skins
		.' Scrape 4 Staked Skins |q 29519/1
		|modeldisplay Staked Skins##10750
	step
		goto 50.5,69.6
		.talk Sylannia##14844
		.buy 5 Fizzy Faire Drink##19299 |q 29506
		|only if skill("Alchemy")>74
	step
		goto Darkmoon Island,50.5,90.8
		.click Portal to Mulgore##4397
		.' Teleport to Mulgore |goto Mulgore |noway |c
		|only if skill("Cooking")>74
	step
		goto Darkmoon Island,50.5,90.8
		.click Portal to Mulgore##4397
		.' Teleport to Mulgore |goto Mulgore |noway |c
		|only if skill("Alchemy")>74
	step
		goto Mulgore,46.8,60.4
		.talk Innkeeper Kauth##6747
		.buy 5 Moonberry Juice##1645 |q 29506
		|only if skill("Alchemy")>74
	step
		goto Mulgore,46.4,57.8
		.talk Wunna Darkmane##3081
		.buy 5 Simple Flour##30817 |q 29509
		|only if skill("Cooking")>74
	step
		goto Mulgore 43.8,44.6
		.talk Mahu##3005
		.buy 1 Coarse Thread##2320
		.buy 1 Blue Dye##6260
		.buy 1 Red Dye##2604
		|only if skill("Tailoring")>74
	step
		goto Mulgore,36.8,35.8
		.click Portal to Darkmoon Island
		.' Telport to Darkmoon Island |goto Darkmoon Island |noway |c
		|only if skill("Cooking")>74
	step
		goto Mulgore,36.8,35.8
		.click Portal to Darkmoon Island
		.' Telport to Darkmoon Island |goto Darkmoon Island |noway |c
		|only if skill("Alchemy")>74
	step
		goto Mulgore,36.8,35.8
		.click Portal to Darkmoon Island
		.' Telport to Darkmoon Island |goto Darkmoon Island |noway |c
		|only if skill("Tailoring")>74
	step
		goto Darkmoon Island,56.0,52.9 |n
		.' Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9,1 |noway |c
		|only if skill("Cooking")>74
	step
		goto Darkmoon Island,56.0,52.9 |n
		.' Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9,1 |noway |c
		|only if skill("Alchemy")>74
	step
		goto Darkmoon Island,50.4,69.5
		.' Use the Cocktail Shaker in your bags to make Moonberry Fizz |use Cocktail Shaker##72043
		.' Create 5 Sevings of Moonberry Fizz |q 29506/1
		|only if skill("Alchemy")>74
	step
		goto Darkmoon Island 50.0,66.2
		.' Use the Darkmoon Banner Kit in your bags to plant a banner here. |use Darkmoon Banner Kit##72048
		.' Plant a Darkmoon Banner |q 29520/1
	step
		goto Darkmoon Island,52.7,68.1
		.' Click the Plump Frogs in your bags |use Plump Frogs##72056
		.collect 5 Breaded Frog##72057 |n
		.' Throw the Breaded Frogs in the cauldron |use Breaded Frog##72057
		.' Fry 5 Crunchy Frogs |q 29509/1
		|only if skill("Cooking")>74
	step
		goto 55.3,71.7
		.' Use the Iron Stock in your bags to make Horseshoes |use Iron Stock##71964
		.collect 4 Horseshoes##71967 |q 29508
		|only if skill("Blacksmithing")>74
	step
		goto Darkmoon Island,52.9,68.0
		.talk Stamp Thunderhorn##14845
		..turnin Putting the Crunch in the Frog##29509
		|only if skill("Cooking")>74
	step
		goto Darkmoon Island,52.9,68.0
		.talk Stamp Thunderhorn##14845		
		..turnin Spoilin' for Salty Sea Dogs##29513
		|only if skill("Fishing")>74
	step
		goto Darkmoon Island,55.0,70.8
		.talk Chronos##14833
		..turnin Putting the Carnies Back Together Again##29512
		|only if skill("First Aid")>74
	step
		goto Darkmoon Island,55.0,70.8
		.talk Chronos##14833
		..turnin Tan My Hide##29519
		|only if skill("Skinning")>74
	step
		goto 55.0,70.8
		.talk Chronos##14833
		..turnin Keeping the Faire Sparkling##29516
		|only if skill("Jewelcrafting")>74
	step
		goto Darkmoon Island,49.3,60.8
		.talk Rinling##14841
		..turnin Talkin' Tonks##29511
		|only if skill("Engineering")>74
	step
		goto Darkmoon Island,55.0,70.8
		.talk Chronos##14833
		..turnin Herbs for Healing##29514
		|only if skill("Herbalism")>74
	step
		goto 50.5,69.6
		.talk Sylannia##14844
		..turnin A Fizzy Fusion##29506
		|only if skill("Alchemy")>74
	step
		goto Darkmoon Island 55.4,54.8
		.talk Selina Dourman##10445
		..turnin Banners, Banners Everywhere!##29520
		|only if skill("Tailoring")>74
	step
		goto Darkmoon Island,49.3,60.7
		.talk Rinling##14841
		..turnin Rearm, Reuse, Recycle##29518
		|only if skill("Mining")>74
	step
		goto Darkmoon Island,53.2,75.8
		.talk Sayge##14822
		..turnin Putting Trash to Good Use##29510
		|only if skill("Enchanting")>74
	step
		goto Darkmoon Island,51.3,81.8
		.' Use the Horshoes in your bag on Baby|use Horseshoe##71967
		.' Put New Horshoes On Baby |q 29508/1
		|only if skill("Blacksmithing")>74
		'|modelnpc 54510
	step
		goto Darkmoon Island,51.1,82.0
		.talk Yebb Neblegear##14829
		..turnin Baby Needs Two Pair of Shoes##29508
		|only if skill("Blacksmithing")>74
	step
		goto Darkmoon Island,47.9,67.1
		.talk Kerri Hicks##14832
		..accept Test Your Strength##29433
	step
		goto Darkmoon Island,55.6,55.0
		.talk Selina Dourman##10445
		.' Tell her:
		.' <Darkmoon Adventurer's Guide?>
		.collect Darkmoon Adventurer's Guide##71634 |q 29433
	step
		.' Kill any Creature Player or NPC that gives _experiance or honor_ to gain Grisly Trophy's |tip You need to leave Darkmoon Island to find anything to kill.
		.' Collect 250 Grisly Trophy's |q 29433/1
	step
		goto Mulgore,36.8,35.8
		.click the Portal to Darkmoon Island
		.' Telport to Darkmoon Island |goto Darkmoon Island |noway |c
	step
		goto Darkmoon Island,56.0,52.9 |n
		.' Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9,1 |noway |c
	step
		goto Darkmoon Island,47.9,67.1
		.talk Kerri Hicks##14832
		..turnin Test Your Strength##29433
]])

ZygorGuidesViewer:RegisterInclude("H_Darkmoon_Faire_Achievements",[[
	step
	label	"main"
		'To earn Achievements for the Darkmoon Faire, you will need to complete Dailies, Quests and other things. 
		.' Click here to do the Dailies Achievments |confirm always |next "dailies" |or
		.' or
		.' Click here to do the Profession Quests Achievements |confirm always |next "professions" |or
		.' or
		.' Click here for the Non-Questing Achievements |confirm always |next "no_quest" |or
	step
	label	"dailies"
		'You have earned the Achievement Bullseye! |achieve 6021 |only if achieved(6021)
		.' You still need to earn the Achievement Bullseye! |achieve 6021 |only if not achieved(6021)
		.' You have earned the Achievement Quick Shot! |achieve 6022 |only if achieved(6022)
		.' You still need to earn the Achievement Quick Shot! |achieve 6022 |only if not achieved(6022)
		.' You have earned the Achievement Step Right Up! |achieve 6020 |only if achieved(6020)
		.' You still need to earn the Achievement Step Right Up! |achieve 6020 |only if not achieved(6020)
		|confirm always
	step
		|fly Thunder Bluff
	step
		goto Mulgore,36.8,35.8
		.click the Portal to Darkmoon Island
		.' Telport to Darkmoon Island |goto Darkmoon Island |noway |c
	step
		goto Darkmoon Island,56.0,52.9 |n
		.' Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9,1 |noway |c
	step
		goto Darkmoon Island,54.3,53.1
		.talk Zina Sharpworth##55266
		.buy Sack o' Tokens##78909 |n
		.' Open your Sack o' Tokens in your bags |use Sack o' Tokens##78909
		.collect 20 Darkmoon Faire Game Tokens##71083
	step
		goto Darkmoon Island,53.3,54.4
		.talk Mola##54601
		..accept It's Hammer Time##29463 |daily
	step
		goto Darkmoon Island,53.3,54.4
		.talk Mola##54601
		.' Tell her:
		.' <Ready to whack!> |havebuff Interface\Icons\inv_hammer_32
	step
		.' Use the _Whack!_ on your bar and whack the Gnolls in the Barrels
		.' The Gnolls  will pop up in the Barrels, but be careful not to hit the _Doll_ or you will get stunned.
		.' Whack 30 Gnolls |q 29463/1
	step
		goto Darkmoon Island,53.3,54.4
		.talk Mola##54601
		..turnin It's Hammer Time##29463
	step
		goto Darkmoon Island,52.5,56.2
		.talk Maxima Blastenheimer##15303
		..accept The Humanoid Cannonball##29436 |daily
		|next "quest"
	step
	label	"target"
		goto Darkmoon Island,57.1,89.6
		.talk Teleportologist Fozlebub##57850
		.' Tell him:
		.' <Teleport me to the cannon.> |goto 52.7,56.0,1 |noway |c
	step
	label	"quest"
		goto Darkmoon Island,52.5,56.2
		.talk Maxima Blastenheimer##15303
		.' Tell her:
		.' <Launch me!>
		'Wait for the Cannon to Launch you |havebuff Interface\Icons\Spell_Magic_FeatherFall
	step
		goto Darkmoon Island,56.4,93.3
		.' You will be launched throught the air. 
		.' You the __ to drop in the water in the target. You will gain more points for getting closer to the middle.
		.' Earn 5 Target Points |q 29436/1
		.' Score a Bullseye by landing in the middle of the target
		.' Earn the Achievement Bullseye! |achieve 6021
		.' Click here to try again |confirm |next "target"
	step
		goto Darkmoon Island,57.1,89.6
		.talk Teleportologist Fozlebub##57850
		.' Tell him:
		.' <Teleport me to the cannon.> |goto 52.7,56.0,1 |noway |c
	step
		goto Darkmoon Island,52.5,56.2
		.talk Maxima Blastenheimer##15303
		..turnin The Humanoid Cannonball##29436
	step
		goto 49.3,60.8
		.talk Rinling##14841
		..accept He Shoots, He Scores!##29438 |daily
	step
		goto 49.3,60.8
		.talk Rinling##14841	
		.' Tell him:
		.' <Let's shoot!> |havebuff Interface\Icons\INV_Weapon_Rifle_05
	step
		'Shoot at the 3 targets. 
		.' When you see a green marker appear over a target, make sure that you are aimed at it and _shoot_ |tip To aim, simply move the camera to face your current target.
		.' Shoot 25 Targets |q 29438/1
		.' Shoot your gunt and hit a target very fast
		.' Earn the Achievement Quick Shot! |achieve 6022
	step
		goto 49.3,60.8
		.talk Rinling##14841
		..turnin He Shoots, He Scores!##29438 |daily
	step
		goto Darkmoon Island,50.7,65.1
		.talk Finlay Coolshot##54605
		..accept Tonk Commander##29434 |daily
	step
		goto Darkmoon Island,50.7,65.1
		.talk Finlay Coolshot##54605
		.' Tell him:
		.' <Ready to Play.> |invehicle |c
	step
		'Use your _Cannon_ ability to shoot _Tonk Targets_.
		.from Tonk Target##33081+
		.' Destroy 30 Tonk Targets |q 29434/1
	step
		goto Darkmoon Island,50.7,65.1
		.talk Finlay Coolshot##54605
		..turnin Tonk Commander##29434
	step
		goto 51.6,77.8
		.talk Jessica Rogers##54485
		..accept Target: Turtle##29455 |daily
	step
		goto 51.6,77.8
		.talk Jessica Rogers##54485
		.' Tell her: 
		.' <Ready to play!> |havebuff Interface\Icons\INV_Jewelry_Ring_03
	step
		'Use your _Ring Toss_ ability to throw rings on the turtle.  |tip When aiming, move the marker over the middle of the turtle.
		.' Land 3 Rings on Dubenko |q 29455/1
		.' Earn the Achievement Step Right Up! |achieve 6020
		'|modelnpc 54490
	step
		goto 51.6,77.8
		.talk Jessica Rogers##54485
		..turnin Target: Turtle##29455
		|next "main"
	step
	label	"professions"
		'You have earned the Achievement Faire Favors |achieve 6032 |only if achieved(6032)
		.' You still need to earn the Achievement Faire Favors |achieve 6032 |only if not achieved(6032)
		.' You have earned the Achievement Darkmoon Dungeoneer |achieve 6027 |only if achieved(6027)
		.' You still need to earn the Achievement Darkmoon Dungeoneer |achieve 6027 |only if not achieved(6027)
		.' You have earned the Achievement Darkmoon Defender |achieve 6028 |only if achieved(6028)
		.' You still need to earn the Achievement Darkmoon Defender |achieve 6028 |only if not achieved(6028)
		.' You have earned the Achievement Darkmoon Despoiler |achieve 6029 |only if achieved(6029)
		.' You still need to earn the Achievement Darkmoon Despoiler |achieve 6029 |only if not achieved(6029)   
		|confirm always
	step
		goto Mulgore,36.8,35.8
		.click the Portal to Darkmoon Island
		.' Telport to Darkmoon Island |goto Darkmoon Island |noway |c
	step
		goto Darkmoon Island,56.0,52.9 |n
		.' Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9,1 |noway |c
	step
		goto Darkmoon Island 55.4,54.8
		.talk Selina Dourman##10445
		..accept Banners, Banners Everywhere!##29520
		|only if skill("Tailoring")>74
	step
		goto Darkmoon Island,51.9,60.9
		.talk Professor Thaddeus Paleo##14847
		..accept Fun for the Little Ones##29507
		|only if skill("Archaeology")>74
	step
		goto Darkmoon Island,49.3,60.8
		.talk Rinling##14841
		..accept Talkin' Tonks##29511
		|only if skill("Engineering")>74
	step
		goto Darkmoon Island,49.3,60.7
		.talk Rinling##14841
		..accept Rearm, Reuse, Recycle##29518
		|only if skill("Mining")>74
	step
		goto 49.3,60.9
		.talk Rinling##14841
		..accept Eyes on the Prizes##29517
		|only if skill("Leatherworking")>74
	step
		goto Darkmoon Island,52.9,68.0
		.talk Stamp Thunderhorn##14845
		..accept Putting the Crunch in the Frog##29509
		|only if skill("Cooking")>74
	step
		goto Darkmoon Island,52.9,68.0
		.talk Stamp Thunderhorn##14845		
		..accept Spoilin' for Salty Sea Dogs##29513
		|only if skill("Fishing")>74
	step
		goto Darkmoon Island,55.0,70.8
		.talk Chronos##14833
		..accept Putting the Carnies Back Together Again##29512
		|only if skill("First Aid")>74
	step
		goto Darkmoon Island,55.0,70.8
		.talk Chronos##14833
		..accept Tan My Hide##29519
		|only if skill("Skinning")>74
	step
		goto Darkmoon Island,55.0,70.8
		.talk Chronos##14833
		..accept Herbs for Healing##29514
		|only if skill("Herbalism")>74
	step
		goto 50.5,69.6
		.talk Sylannia##14844
		..accept A Fizzy Fusion##29506
		|only if skill("Alchemy")>74
	step
		goto 55.0,70.8
		.talk Chronos##14833
		..accept Keeping the Faire Sparkling##29516
		|only if skill("Jewelcrafting")>74
	step
		goto Darkmoon Island,53.2,75.8
		.talk Sayge##14822
		..accept Putting Trash to Good Use##29510
		|only if skill("Enchanting")>74
	step
		goto Darkmoon Island,51.1,82.0
		.talk Yebb Neblegear##14829
		..accept Baby Needs Two Pair of Shoes##29508
		|only if skill("Blacksmithing")>74
	step
		goto 52.5,88.7
		.buy Fishing Pole##6256
		|only if skill("Fishing")>74
	step
		goto Darkmoon Island,51.7,91.6
		.' Equip your Fishing Pole |equipped Fishing Pole##6256 |use Fishing Pole##6256 |q 29513
		.' Use your Fishing ability to catch _Sea Herrings_ |cast Fishing##7620
		.' Catch 5 Great Sea Herring |q 29513/1
		|only if skill("Fishing")>74
	step
		goto Darkmoon Island,47.9,74.5
		.' Use your Darkmoon Bandage on Injured Carnies |use Darkmoon Bandage##71978
		.' Heal 4 Injured Carnies |q 29512/1
		'|modelnpc 54518
		|only if skill("First Aid")>74
	step
		'All around the Island
		.click Discarded Weapon##10777+
		.collect 6 Discarded Weapon##72018 |n
		.' Disenchant the Discarded Weapons |use Discarded Weapon##72018
		.' Collect 6 Soothsayer's Dust |q 29510/1
		|only if skill("Enchanting")>74
	step
		'All around the Island
		.click Tonk Scrap##6314
		.' Collect 6 pieces of Tonk Scrap |q 29518/1
		|only if skill("Mining")>74
		'|model 7975
	step
		'All around the Island
		.click Bits of Glass##238
		.collect 5 Bits of Glass##72052 |n
		.' Click the Bits of Glass in your bags |use Bit of Glass##72052
		.' Make 5 Sparkling Gemstones |q 29516/1
		|only if skill("Jewelcrafting")>74
	step
		.' All around the Island
		.' Use your Battered Wrench to repair Damaged Tonk's |use Battered Wrench##72110
		.' Repair 5 Damaged Tonk's |q 29511/1
		'|modelnpc 54504
		|only if skill("Engineering")>74
	step
		.' All around the Island
		.click Darkblossom##209284
		.' Gather 6 Darkblossom |q 29514/1
		|only if skill("Herbalism")>74
	step
		.' All around the Island
		.click Staked Skins##10750
		.' Scrape 4 Staked Skins |q 29519/1
	step
		goto 50.5,69.6
		.talk Sylannia##14844
		.buy 5 Fizzy Faire Drink##19299 |q 29506
		|only if skill("Alchemy")>74
	step
		goto Darkmoon Island,50.5,90.8
		.click Portal to Mulgore##4397
		.' Teleport to Mulgore |goto Mulgore |noway |c
		|only if skill("Cooking")>74 or skill("Alchemy")>74 or skill("Archaeology")>74
	step
		'Open your world map, find dig sites in Kalimdor and go to them |tip They look like small shovel icons on your world map that spawn in random places.  Once you get to the zone where the dig site is located, you will see the dig site on your map as a red highlighted area.
		.' You can find _Fossil Fragments_ in these locations: 
		.' Desolace
		.' Dustwallow Marsh
		.' Stonetalon Mountains
		.' Southern Barrens
		.' Tanaris
		.' Un'Goro Crater
		.' Use your Survey ability inside the dig site area and follow the Telesope until you find a fragment |cast Survey##80451
		.earn 15 Fossil Fragments##393 |q 29507
		|only if skill("Archaeology")>74
	step
		goto Darkmoon Island,50.5,90.8
		.click Portal to Mulgore##4397
		.' Teleport to Mulgore |goto Mulgore |noway |c
		|only if skill("Alchemy")>74
	step
		goto Mulgore,46.8,60.4
		.talk Innkeeper Kauth##6747
		.buy 5 Moonberry Juice##1645 |q 29506
		|only if skill("Alchemy")>74
	step
		goto Mulgore,46.4,57.8
		.talk Wunna Darkmane##3081
		.buy 5 Simple Flour##30817 |q 29509
		|only if skill("Cooking")>74
	step
		goto Mulgore 43.8,44.6
		.talk Mahu##3005
		.buy 1 Coarse Thread##2320
		.buy 1 Blue Dye##6260
		.buy 1 Red Dye##2604
		|only if skill("Tailoring")>74
	step
		goto Mulgore,36.8,35.8
		.click Portal to Darkmoon Island
		.' Telport to Darkmoon Island |goto Darkmoon Island |noway |c
		|only if skill("Cooking")>74 or skill("Alchemy")>74 or skill("Archaeology")>74 or skill("Tailoring")>74
	step
		goto Darkmoon Island,56.0,52.9 |n
		.' Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9,1 |noway |c
		|only if skill("Cooking")>74 or skill("Alchemy")>74 or skill("Archaeology")>74
	step
		goto Darkmoon Island,50.4,69.5
		.' Use the Cocktail Shaker in your bags to make Moonberry Fizz |use Cocktail Shaker##72043
		.' Create 5 Sevings of Moonberry Fizz |q 29506/1
		|only if skill("Alchemy")>74
	step
		goto Darkmoon Island 50.0,66.2
		.' Use the Darkmoon Banner Kit in your bags to plant a banner here. |use Darkmoon Banner Kit##72048
		.' Plant a Darkmoon Banner |q 29520/1
		|only if skill("Tailoring")>74
	step
		goto Darkmoon Island,52.7,68.1
		.' Click the Plump Frogs in your bags |use Plump Frogs##72056
		.collect 5 Breaded Frog##72057 |n
		.' Throw the Breaded Frogs in the cauldron |use Breaded Frog##72057
		.' Fry 5 Crunchy Frogs |q 29509/1
		|only if skill("Cooking")>74
	step
		goto 55.3,71.7
		.' Use the Iron Stock in your bags to make Horseshoes |use Iron Stock##71964
		.collect 4 Horseshoes##71967 |q 29508
		|only if skill("Blacksmithing")>74
	step
		goto Darkmoon Island,51.9,60.9
		.talk Professor Thaddeus Paleo##14847
		..turnin Fun for the Little Ones##29507
		|only if skill("Archaeology")>74
	step
		goto Darkmoon Island,52.9,68.0
		.talk Stamp Thunderhorn##14845
		..turnin Putting the Crunch in the Frog##29509
		|only if skill("Cooking")>74
	step
		goto Darkmoon Island,52.9,68.0
		.talk Stamp Thunderhorn##14845		
		..turnin Spoilin' for Salty Sea Dogs##29513
		|only if skill("Fishing")>74
	step
		goto Darkmoon Island,55.0,70.8
		.talk Chronos##14833
		..turnin Putting the Carnies Back Together Again##29512
		|only if skill("First Aid")>74
	step
		goto Darkmoon Island,55.0,70.8
		.talk Chronos##14833
		..turnin Tan My Hide##29519
		|only if skill("Skinning")>74
	step
		goto 55.0,70.8
		.talk Chronos##14833
		..turnin Keeping the Faire Sparkling##29516
		|only if skill("Jewelcrafting")>74
	step
		goto Darkmoon Island,49.3,60.8
		.talk Rinling##14841
		..turnin Talkin' Tonks##29511
		|only if skill("Engineering")>74
	step
		goto Darkmoon Island,55.0,70.8
		.talk Chronos##14833
		..turnin Herbs for Healing##29514
		|only if skill("Herbalism")>74
	step
		goto 50.5,69.6
		.talk Sylannia##14844
		..turnin A Fizzy Fusion##29506
		|only if skill("Alchemy")>74
	step
		goto Darkmoon Island 55.4,54.8
		.talk Selina Dourman##10445
		..turnin Banners, Banners Everywhere!##29520
		|only if skill("Tailoring")>74
	step
		goto Darkmoon Island,49.3,60.7
		.talk Rinling##14841
		..turnin Rearm, Reuse, Recycle##29518
		|only if skill("Mining")>74
	step
		goto Darkmoon Island,53.2,75.8
		.talk Sayge##14822
		..turnin Putting Trash to Good Use##29510
		|only if skill("Enchanting")>74
	step
		goto Darkmoon Island,51.3,81.8
		.' Use the Horshoes in your bag on Baby|use Horseshoe##71967
		.' Put New Horshoes On Baby |q 29508/1
		|only if skill("Blacksmithing")>74
		'|modelnpc 54510
	step
		goto Darkmoon Island,51.1,82.0
		.talk Yebb Neblegear##14829
		..turnin Baby Needs Two Pair of Shoes##29508
		|only if skill("Blacksmithing")>74
	step
		goto Darkmoon Island,47.9,67.1
		.talk Kerri Hicks##14832
		..accept Test Your Strength##29433
	step
		goto Darkmoon Island,55.6,55.0
		.talk Selina Dourman##10445
		.' Tell her:
		.' <Darkmoon Adventurer's Guide?>
		.collect Darkmoon Adventurer's Guide##71634 |q 29433
	step
		'These next 3 items have to be _obtained from Battlegrounds_
		.' When you kill an opponent, _loot_ their body for a chance to get _each item_.
		.collect Adventurer's Journal##71953 |n
		.accept The Captured Journal##29458 |use Adventurer's Journal##71953
		.collect Banner of the Fallen##71951 |n
		.accept A Captured Banner##29456 |use Banner of the Fallen##71951
		.collect Captured Insignia##71952 |n
		.accept The Enemy's Insignia##29457 |use Captured Insignia##71952
	step
		'These next 4 items have to be _obtained from Dungeons_ listed below
		.collect Mysterious Grimoire##71637 |n |tip You can get this in Zul'Farrak from Hydromancer Velratha
		..accept An Inriguing Grimoire##29445 |use Mysterious Grimoire##71637
		.collect Monstrous Egg##71636 |n |tip You can get this in Zul'Farrak from Gahz'rilla
		..accept An Exotic Egg##29444 |use Monstrous Egg##71636
		.collect A Treatise on Strategy##7175 |n |tip You can get this in Grim Batol from General Umbriss
		..accept The Master Strategist##29451 |use A Treatise on Strategy##7175
		.collect Ornate Weapon##71638 |n |tip You can get this in Scarlet Monastery from Herod
		..accept A Wondrous Weapon##29446 |use Ornate Weapon##71638
		.collect Imbued Crystal##71635 |n |tip You can get this in Scarlet Monastery from High Inquisitor Whitemane
		..accept A Curious Crystal##29443 |use Imbued Crystal##71635
	step
		'The next item can only be obtained from any 10 man Cataclysm Raid Boss
		.collect Soothsayer's Runes##71716 |n
		..accept Tools of Divination##29464 |use Soothsayer's Runes##71716
	step
		.' Kill any Creature Player or NPC that gives _experiance or honor_ to gain Grisly Trophy's |tip You need to leave Darkmoon Island to find anything to kill.
		.' Collect 250 Grisly Trophy's |q 29433/1
	step
		goto Darkmoon Island,47.9,67.1
		.talk Kerri Hicks##14832
		..turnin Test Your Strength##29433
	step
		goto Darkmoon Island,51.9,60.9
		.talk Professor Thaddeus Paleo##14847
		..turnin The Captured Journal##29458
		..turnin A Captured Banner##29456
		..turnin The Enemy's Insignia##29457
		..turnin An Inriguing Grimoire##29445
		..turnin An Exotic Egg##29444
		..turnin The Master Strategist##29451
		..turnin A Wondrous Weapon##29446
		..turnin A Curious Crystal##29443
		..turnin Tools of Divination##29464
		.' Earn the Achievement Darkmoon Dungeoneer |achieve 6027
		.' Earn the Achievement Darkmoon Defender |achieve 6028
		.' Earn the Achievement Darkmoon Despoiler |achieve 6029
		|next "main"
	step
	label	"no_quest"
		'You have earned the Achievement Darkmoon Duelist! |achieve 6023 |only if achieved(6023)
		.' You still need to earn the Achievement Darkmoon Duelist! |achieve 6023 |only if not achieved(6023)
		'You have earned the Achievement Fairegoer's Feast! |achieve 6026 |only if achieved(6026)
		.' You still need to earn the Achievement Fairegoer's Feast! |achieve 6026 |only if not achieved(6026)
		'You have earned the Achievement Taking the Show on the Road! |achieve 6031 |only if achieved(6031)
		.' You still need to earn the Taking the Show on the Road! |achieve 6031 |only if not achieved(6031)
		'You have earned the Achievement I Was Promised a Pony! |achieve 6025 |only if achieved(6025)
		.' You still need to earn the I Was Promised a Pony! |achieve 6025 |only if not achieved(6025)    
		|confirm always
	step
		goto Darkmoon Island,50.5,69.5
		.talk Sylannia##14844
		.buy Cheap Beer##19222 |n
		.' Drink Cheap Beer |achieve 6026/12 |use Cheap Beer##19222
		.buy Darkmoon Special Reserve##19221 |n
		.' Drink Darkmoon Special Reserve |achieve 6026/13 |use Special Reserve##19221
		.buy Fizzy Faire Drink##19299 |n
		.' Drink Fizzy Faire Drink |achieve 6026/14 |use Fizzy Faire Drink##19299
		.buy Bottled Winterspring Water##19300 |n
		.' Drink Bottled Winterspring Water |achieve 6026/11 |use Bottled Winterspring Water##19300
		.buy Iced Berry Slush##33234 |n
		.' Drink Iced Berry Slush |achieve 6026/17 |use Iced Berry Slush##33234
		.buy Fizzy Faire Drink "Classic"##33236 |n
		.' Drink Fizzy Faire Drink "Classic" |achieve 6026/15 |use Fizzy Faire Drink "Classic"##33236
		.buy Fresh-Squeezed Limeade##44941 |n
		.' Drink Fresh-Squeezed Limeade |achieve 6026/16 |use Fresh-Squeezed Limeade##44941
		.buy Sasparilla Sinker##74822 |n
		.' Drink Sasparilla Sinker |achieve 6026/18 |use Sasparilla Sinker##74822
	step
		goto Darkmoon Island,52.8,68.0
		.talk Stamp Thunderhorn##14845
		.buy Darkmoon Dog##19223 |n
		.' Eat Darkmoon Dog |achieve 6026/3 |use Darkmoon Dog##19223
		.buy Spiced Beef Jerky##19304 |n
		.' Eat Spiced Beef Jerky |achieve 6026/10 |use Spiced Beef Jerky##19304
		.buy Pickled Kodo Foot##19305 |n
		.' Eat Pickled Kodo Foot |achieve 6026/7 |use Pickled Kodo Foot##19305
		.buy Red Hot Wings##19224 |n
		.' Eat Red Hot Wings |achieve 6026/8 |use Red Hot Wings##19224
		.buy Crunchy Frog##19306 |n
		.' Eat Crunchy Frog |achieve 6026/2 |use Crunchy Frog##19306
		.buy Deep Fried Candybar##19225 |n
		.' Eat Deep Fried Candybar |achieve 6026/4 |use Deep Fried Candybar##19225
		.buy Funnel Cake##33246 |n
		.' Eat Funnel Cake |achieve 6026/6 |use Funnel Cake##33246 
		.buy Forest Strider Drumstick##33254 |n
		.' Eat Forest Strider Drumstick |achieve 6026/5 |use Forest Strider Drumstick##33254
		.buy Corn-Breaded Sausage##44940 |n
		.' Eat Corn-Breaded Sausage |achieve 6026/1 |use Corn-Breaded Sausage##44940
		.buy Salty Sea Dog##73260 |n
		.' Eat Salty Sea Dog |achieve 6026/9 |use Salty Sea Dog##73260
		.' Earn the Achievement Fairegoer's Feast |achieve 6026
	step
		goto Darkmoon Island,56.8,81.4
		.clicknpc Darkmoon Pony##55715
		.' Earn the Achievement I Was Promised a Pony |achieve 6025
	step
		goto Darkmoon Island,48.4,71.9
		.talk Boomie Sparks##55278
		.buy 6 Darkmoon Firework##74142 |future |achieve 6031
	step
		goto Darkmoon Island,50.5,90.8
		.click Portal to Mulgore##4397
		.' Teleport to Mulgore |goto Mulgore |noway |c
	step
		goto Thunder Bluff,32.2,67.0
		.' Use your Darkmoon Firework |achieve 6031/5 |use Darkmoon Firework##74142
	step
		|fly Orgrimmar
	step
		goto Orgrimmar,49.2,59.3
		.' Use your Darkmoon Firework |achieve 6031/2 |use Darkmoon Firework##74142
	step
		#include "rideto_tirisfal"
	step
		goto Undercity,66.3,2.2
		.' Use your Darkmoon Firework |achieve 6031/6 |use Darkmoon Firework##74142
	step
		goto Tirisfal Glades,59.5,67.5
		.click Orb of Translocation##7161
		.' Teleport to Silvermoon City |goto Silvermoon City |noway |c
	step
		goto Silvermoon City,50.7,16.4
		.' Use your Darkmoon Firework |achieve 6031/4 |use Darkmoon Firework##74142	
	step
		goto Silvermoon City,49.5,14.8
		.click Orb of Translocation##7161
		.' Teleport to Undercity |goto Tirisfal Glades |noway |c
	step
		goto Tirisfal Glades,59.1,59.0 |n
		.' Ride the Zeplin to Howling Fjord |goto Howling Fjord |noway |c
	step
		|fly Dalaran
	step
		goto Dalaran,72.5,45.5
		.' Use your Darkmoon Firework |achieve 6031/1 |use Darkmoon Firework##74142
	step
		goto Dalaran,55.4,25.5
		.click Dalaran Portal to Orgrimmar##04395
		.' Teleport to Orgrimmar |goto Orgrimmar/2 |noway |c
	step
		goto Orgrimmar/2,44.8,67.7
		.click Portal to Blasted Lands##08948
		.' Teleport to Blasted Lands |goto Blasted Lands |noway |c
	step
		 goto Blasted Lands,55.0,54.4
		 .' Go through the Green Portal
		 .' Teleport to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
	step
		|fly Shattrath
	step
		goto Shattrath City,63.8,41.7
		.' Use your Darkmoon Firework |achieve 6031/3 |use Darkmoon Firework##74142
		.' Earn the Achievement Taking the Show on the Road! |achieve 6031
	step
		goto Shattrath City,56.8,48.9
		.click Dalaran Portal to Orgrimmar##04395
		.' Teleport to Orgrimmar |goto Orgrimmar/2 |noway |c
	step
		|fly Thunder Bluff
	step
		goto Mulgore,36.8,35.8
		.click the Portal to Darkmoon Island
		.' Telport to Darkmoon Island |goto Darkmoon Island |noway |c
	step
		goto Darkmoon Island,56.0,52.9 |n
		.' Follow the Path to the Darkmoon Faire |goto Darkmoon Island,56.0,52.9,1 |noway |c
	step
		goto Darkmoon Island,46.8,78.8
		.' Click Darkmoon Deathmatch Gate and enter the Deathmatch Arena
		.' Once inside, you will need to fight anyone inside, if you win, you will earn an achievement.
		.' Earn the Achievement Darkmoon Duelist! |achieve 6023
		.' Deafeat 12 combatants in the Deathmatch Arena
		.' Earn the Achievement Darkmoon Dominator |achieve 6024
]])

-- Lunar Festival --
ZygorGuidesViewer:RegisterInclude("H_Lunar_Festival_Quests",[[
	step
		goto Orgrimmar,49.9,81.2
		.talk Lunar Festival Herald##15891
		..accept The Lunar Festival##8873
	step
		goto 52.4,58.5
		.talk Lunar Festival Harbinger##15895
		..turnin The Lunar Festival##8873
		..accept Lunar Fireworks##8867
	step
		goto 52.6,59.2
		.talk Lunar Festival Vendor##47897
		.buy 8 Small Blue Rocket##21558 |q 8867
		.buy 2 Blue Rocket Cluster##21571 |q 8867
	step
		goto 52.4,57.5
		.' Use Small Blue Rockets|use Small Blue Rocket##21558
		.' Use Blue Rocket Clusters|use Blue Rocket Cluster##21571
		.' Fire 8 Lunar Fireworks|q 8867/1
		.' Fire 2 Lunar Fireworks Clusters|q 8867/2
	step
		goto 52.4,58.5
		.talk Lunar Festival Harbinger##15895
		..turnin Lunar Fireworks##8867
		..accept Valadar Starsong##8883
	step
		goto 52.4,57.4
		.' Use the Lunar Festival Invitation while standing in the beam of light |use Lunar Festival Invitation##21711
		.' Go to Moonglade |goto Moonglade |c |q 8883
	step
		goto Moonglade,53.6,35.3
		.talk Valadar Starsong##15864
		..turnin Valadar Starsong##8883
]])
ZygorGuidesViewer:RegisterInclude("H_Lunar_Festival_Elders",[[
	step
		goto Silverpine Forest,45.0,41.1
		.talk Elder Obsidian##15561
		..accept Obsidian the Elder##8645 |instant
	step
		goto Tirisfal Glades,61.9,53.9
		.talk Elder Graveborn##15568
		..accept Graveborn the Elder##8652 |instant
	step
		'Go south to Undercity |goto Undercity |noway |c
	step
		goto Undercity,66.6,38.2
		.talk Elder Darkcore##15564
		..accept Darkcore the Elder##8648 |instant
	step
		goto 63.3,48.6
		.talk Michael Garrett##4551
		.' Fly to Andorhal, Western Plaguelands |goto Western Plaguelands,46.6,64.7,0.5 |noway |c
	step
		goto Western Plaguelands,69.0,73.0
		.talk Elder Moonstrike##15594
		..accept Moonstrike the Elder##8714 |instant
	step
		goto 64.8,38.7 |n
		.' Enter this cave |goto 64.8,38.7,0.5 |noway |c
	step
		goto 63.5,36.1
		.talk Elder Meadowrun##15602
		..accept Meadowrun the Elder##8722 |instant
	step
		goto Eastern Plaguelands,35.6,68.8
		.talk Elder Windrun##15592
		..accept Windrun the Elder##8688 |instant
	step
		goto 27.7,11.7|n
		.' Enter the swirling portal to Stratholme. |goto Stratholme |noway|c
	step
		map Stratholme
		path follow loose;loop off;ants straight
		path 66.2,76.8		67.3,58.1	60.1,48.7
		path 59.9,31.9		68.3,22.9	78.7,22.1
		.' Follow the path to _Elder Farwhisper_.
		.talk Elder Farwhisper##15607
		..accept Farwhisper the Elder##8727
	step
		goto Stratholme,68.8,88.6 |n
		.' Leave Stratholme. |goto Eastern Plaguelands|noway|c
	step
		goto 75.7,54.6
		.talk Elder Snowcrown##15566
		..accept Snowcrown the Elder##8650 |instant
	step
		goto The Hinterlands,50.0,48.0
		.talk Elder Highpeak##15559
		.accept Highpeak the Elder##8643 |instant
	step
		goto Loch Modan,33.3,46.5
		.talk Elder Silvervein##15558
		..accept Silvervein the Elder##8642 |instant
	step
		goto Ironforge,28.1,17.0
		.talk Elder Bronzebeard##15871
		..accept Bronzebeard the Elder##8866 |instant |tip If you die trying to leave Ironforge, just resurrect at the spirit healer you get sent to.
	step
		goto Dun Morogh,53.9,49.9
		.talk Elder Goldwell##15569
		..accept Goldwell the Elder##8653 |instant
	step
		goto Searing Gorge,21.3,79.1
		.talk Elder Ironband##15567
		..accept Ironband the Elder##8651 |instant
	step
		.' Enter Blackrock Mountain. |goto Searing Gorge,34.8,85.1 |noway|c
	step
		map Burning Steppes
		path follow loose;loop off;ants straight
		path 19.1,22.6		19.4,23.9	20.4,24.1
		path 21.6,24.4		22.8,23.0	23.5,24.9
		path 23.7,26.2
		.' Follow the path into Blackrock Spire. |goto Blackrock Spire |noway|c
	step
		map Blackrock Spire/4
		path follow loose;loop off;ants straight
		path 30.0,37.9		37.3,40.9	38.9,48.5
		path 44.0,44.5
		.' Follow the path into Hordemar City. |goto Blackrock Spire/3 |noway|c
	step
		map Blackrock Spire/3
		path follow loose;loop off;ants straight
		path 50.3,39.2		55.2,38.3	 58.9,42.9
		path 65.3,41.9		61.8,40.0
		.' Follow the path to _Elder Stonefort_.
		.talk Elder Stonefort##15560
		..accept Stonefort the Elder##8644
	step
		map Blackrock Spire/3
		path follow loose;loop off;ants straight
		path 62.6,42.7		57.5,42.0	 54.6,37.5
		path 50.4,39.7
		.' Follow the ramp up to the Hall of Blackhand. |goto Blackrock Spire/4|noway|c
	step
		map Blackrock Spire/4
		path follow loose;loop off;ants straight
		path 40.9,45.4		37.5,48.0
		.' Jump off the ledge here. |goto Burning Steppes |noway|c
	step
		goto Burning Steppes,18.5,25.2
		.' Fly down to this point, or use the chains to traverse to here.
		|confirm
	step
		goto Searing Gorge 26.9,72.6 |n
		.' Enter Blackrock Depths here |goto Blackrock Depths |noway |c
	step
		map Blackrock Depths
		path follow loose;loop off;ants straight
		path 37.9,76.3		42.9,74.4	 47.8,72.4
		path 51.5,69.8		50.5,62.9
		.' Follow the path to _Elder Morndeep_.
		.talk Elder Morndeep##15549
		..accept Morndeep the Elder##8619
	step
		goto Burning Steppes,53.6,24.5
		.talk Elder Dawnstrider##15585
		..accept Dawnstrider the Elder##8683 |instant
	step
		goto 70.1,45.4
		.talk Elder Rumblerock##15557
		..accept Rumblerock the Elder##8636 |instant
	step
		goto Elwynn Forest,39.8,63.7
		.talk Elder Stormbrow##15565
		..accept Stormbrow the Elder##8649 |instant
	step
		goto 34.6,50.4
		.talk Elder Hammershout##15562
		..accept Hammershout the Elder##8646 |instant |tip If you die trying to leave Stormwind City, just resurrect at the spirit healer you get sent to.
	step
		goto Westfall,56.6,47.1
		.talk Elder Skychaser##15577
		..accept Skychaser the Elder##8675 |instant
	step
		goto Swamp of Sorrows,69.7,54.1
		.' Follow the steps down and go to the swirling portal at [76.1,45.2]
		.' Enter the Swirling Portal to The Temple of Atal'Hakkar|goto The Temple of Atal'Hakkar|noway|c
	step
		goto The Temple of Atal'Hakkar,62.9,34.4
		.talk Elder Starsong##15593
		..accept Starsong the Elder##8713
	step
		goto 50.0,14.5
		.' Leave the instance. |goto Swamp of Sorrows|noway|c
	step
		goto Blasted Lands,54.3,49.5
		.talk Elder Bellowrage##15563
		..accept Bellowrage the Elder##8647 |instant
	step
		goto Northern Stranglethorn,71.0,34.3
		.talk Elder Starglade##15596
		..accept Starglade the Elder##8716 |instant
	step
		goto The Cape of Stranglethorn,40.0,72.5
		.talk Elder Winterhoof##15576
		..accept Winterhoof the Elder##8674 |instant
	step
		goto 39.3,67.2 |n
		.' Ride the boat to Ratchet |goto Northern Barrens |noway |c
// KALIMDOR
	step
		goto Northern Barrens,68.4,70.0
		.talk Elder Windtotem##15582
		..accept Windtotem the Elder##8680 |instant
	step
		goto 48.5,59.3
		.talk Elder Moonwarden##15597
		..accept Moonwarden the Elder##8717 |instant
	step
		goto Southern Barrens,41.5,47.5
		.talk Elder High Mountain##15588
		..accept High Mountain the Elder##8686 |instant
	step
		goto Mulgore,48.5,53.2
		.talk Elder Bloodhoof##15575
		..accept Bloodhoof the Elder##8673 |instant
	step
		goto Thunder Bluff,73.0,23.3
		.talk Elder Ezra Wheathoof##15580
		..accept Wheathoof the Elder##8678 |instant
	step
		goto Desolace,29.1,62.5 |n
		.' Enter the doorway to Maraudon. |goto Desolace,29.1,62.5 |noway|c
	step
		map Desolace
		path follow strict; loop off; ants straight
		path	28.3,63.0	27.9,64.3	27.6,62.9
		path	29.0,62.6	30.1,62.6	29.9,60.3
		.' Follow this path |goto Maraudon/2 |noway |c
	step
		map Maraudon/2
		path follow strict;loop off;ants straight
		path	29.4,46.0	32.0,60.3	35.5,57.5
		path	41.0,60.5	45.6,58.5	44.8,54.1
		path	43.0,57.6	41.5,63.9	45.6,67.2
		path	44.8,76.2	44.6,83.9	45.2,89.5
		path	51.5,93.8
		.talk Elder Splitrock##15556
		..accept Splitrock the Elder##8635
	step
		goto Feralas,76.7,37.9
		.talk Elder Grimtotem##15581
		..accept Grimtotem the Elder##8679 |instant
	step
		goto 62.6,31.1
		.talk Elder Mistwalker##15587
		..accept Mistwalker the Elder##8685 |instant
	step
		goto Silithus,53.0,35.5
		.talk Elder Bladesing##15599
		..accept Bladesing the Elder##8719 |instant
	step
		goto 30.8,13.3
		.talk Elder Primestone##15570
		..accept Primestone the Elder##8654 |instant
	step
		goto Un'Goro Crater,50.4,76.2
		.talk Elder Thunderhorn##15583
		..accept Thunderhorn the Elder##8681 |instant
	step
		goto Tanaris,37.2,79.1
		.talk Elder Ragetotem##15573
		..accept Ragetotem the Elder##8671 |instant
	step
		goto 51.4,28.8
		.talk Elder Dreamseer##15586
		..accept Dreamseer the Elder##8684 |instant
	step
		goto 39.2,21.3 |n
		.' Enter Zul'Farrak. |goto Zul'Farrak |noway|c
	step
		goto Zul'Farrak,34.5,39.4
		.talk Elder Wildmane##15578
		..accept Wildmane the Elder##8676
	step
		.' Exit dungeon to Tanaris |goto Tanaris |noway |c
	step
		goto Thousand Needles,77.1,75.6
		.talk Elder Morningdew##15604
		..accept Morningdew the Elder##8724 |instant
	step
		goto 46.3,51.0
		.talk Elder Skyseer##15584
		..accept Skyseer the Elder##8682 |instant
	step
		goto Durotar,53.2,43.6
		.talk Elder Runetotem##15572
		..accept Runetotem the Elder##8670 |instant
	step
		goto Orgrimmar,52.3,60.0
		.talk Elder Darkhorn##15579
		..accept Darkhorn the Elder##8677 |instant
	step
		goto Azshara,64.7,79.3
		.talk Elder Skygleam##15600
		..accept Skygleam the Elder##8720 |instant
	step
		goto Winterspring,60.0,49.9
		.talk Elder Stonespire##15574
		..accept Stonespire the Elder##8672 |instant
	step
		goto 53.2,56.6
		.talk Elder Brightspear##15606
		..accept Brightspear the Elder##8726 |instant
	step
		goto Ashenvale,35.4,48.9
		.talk Elder Riversong##15605
		..accept Riversong the Elder##8725 |instant
	step
		goto Felwood,38.4,52.9
		.talk Elder Nightwind##15603
		..accept Nightwind the Elder##8723 |instant
	step
		goto Darkshore,49.5,18.9
		.talk Elder Starweave##15601
		..accept Starweave the Elder##8721 |instant
	step
		goto Teldrassil,56.9,53.1
		.talk Elder Bladeleaf##15595
		..accept Bladeleaf the Elder##8715 |instant
	step
		goto Darnassus,38.8,32.3
		.talk Elder Bladeswift##15598
		..accept Bladeswift the Elder##8718 |instant
	step
		goto Darnassus,38.0,30.5
		.' Use the Lunar Festival Invitation while standing in the beam of light |use Lunar Festival Invitation##21711
		.' Go to Moonglade |goto Moonglade |noway |c
	step
		|fly Orgrimmar
// NORTHREND
	step
		goto Orgrimmar,44.8,62.4 |n
		.' Ride the zeppelin to Borean Tundra |goto Borean Tundra |noway |c
	step
		goto Borean Tundra,42.9,49.6
		.talk Elder Pamuya##30371
		..accept Pamuya the Elder##13029 |instant
	step
		goto 33.8,34.4
		.talk Elder Northal##30360
		..accept Northal the Elder##13016 |instant
	step
		goto 59.1,65.6
		.talk Elder Sardis##30348
		..accept Sardis the Elder##13012 |instant
	step
		goto 57.4,43.7
		.talk Elder Arp##30364
		..accept Arp the Elder##13033 |instant
	step
		'Go north to Sholazar Basin |goto Sholazar Basin |noway |c
	step
		goto Sholazar Basin,49.8,63.6
		.talk Elder Sandrene##30362
		..accept Sandrene the Elder##13018 |instant
	step
		goto 63.8,49.0
		.talk Elder Wanikaya##30365
		..accept Wanikaya the Elder##13024 |instant
	step
		'Go southeast to Wintergrasp |goto Wintergrasp |noway |c
	step
		goto Wintergrasp,50.5,16.4
		.' Click the Defender's Portal
		.' Go to the upper level of the Wintergrasp Fortress |goto Wintergrasp,50.4,15.9,0.1 |noway |c
	step
		goto 49.0,13.9
		.talk Elder Bluewolf##30368
		..accept Bluewolf the Elder##13026 |instant
	step
		goto 49.6,15.9
		.' Click the Defender's Portal
		.' Go to outside of the Wintergrasp Fortress |goto Wintergrasp,49.6,16.3,0.1 |noway |c
	step
		goto Dragonblight,35.1,48.3
		.talk Elder Skywarden##30373
		..accept Skywarden the Elder##13031 |instant
	step
		goto 29.7,55.9
		.talk Elder Morthie##30358
		..accept Morthie the Elder##13014 |instant
	step
		goto 48.8,78.2
		.talk Elder Thoim##30363
		..accept Thoim the Elder##13019 |instant
	step
		'Go east to Grizzly Hills |goto Grizzly Hills |noway |c
	step
		goto Grizzly Hills,64.2,47.0
		.talk Elder Whurain##30372
		..accept Whurain the Elder##13030 |instant
	step
		goto 80.5,37.1
		.talk Elder Lunaro##30367
		..accept Lunaro the Elder##13025 |instant
	step
		goto 60.6,27.7
		.talk Elder Beldak##30357
		..accept Beldak the Elder##13013 |instant
	step
		'Go northwest to Zul'Drak |goto Zul'Drak |noway |c
	step
		goto Zul'Drak,58.9,56.0
		.talk Elder Tauros##30369
		..accept Tauros the Elder##13027 |instant
	step
		'Go northwest to The Storm Peaks |goto The Storm Peaks |noway |c
	step
		goto The Storm Peaks,41.2,84.7
		.talk Elder Graymane##30370
		..accept Graymane the Elder##13028 |instant
	step
		goto 28.9,73.7
		.talk Elder Fargal##30359
		..accept Fargal the Elder##13015 |instant
	step
		goto 31.3,37.6
		.talk Elder Stonebeard##30375
		..accept Stonebeard the Elder##13020 |instant
	step
		goto 64.6,51.3
		.talk Elder Muraco##30374
		..accept Muraco the Elder##13032 |instant
	step
		|fly Dalaran
	step
		goto 55.4,25.5 |n
		.click Dalaran Portal to Orgrimmar##4395
		.' Teleport to Orgrimmar |goto Orgrimmar/2 |noway |c
	step
		goto 22.8,70.6 |n
		.' Leave the Clef of Shadow |goto Orgrimmar |noway |c
	step
		#include "port_hyjal"
	step
		goto 62.5,22.8
		.talk Elder Evershade##55227
		..accept Evershade the Elder##29740 |instant
	step
		|fly Sanctuary of Malorne
	step
		goto 26.7,62.0
		.talk Elder Windsong##55224
		..accept Windsong the Elder##29739 |instant
	step
		|fly Nordrassil
	step
		goto 63.5,24.4 |n
		.click Portal to Orgrimmar##4395
		.' Teleport to Orgrimmar |goto Orgrimmar |noway |c
	step
		#include "port_deepholm"
	step
		goto 49.7,54.9
		.talk Elder Stonebrand##55217
		..accept Stonebrand the Elder##29735 |instant
	step
		goto 27.7,69.2
		.talk Elder Deepforge##55216
		..accept Deepforge the Elder##29734 |instant
	step
		goto 50.9,53.1 |n
		.click Portal to Orgrimmar##4395
		.' Teleport to Orgrimmar |goto Orgrimmar |noway |c
	step
		#include "home_ValleyofHonor"
	step
		#include "port_vashj'ir"
	step
		goto Shimmering Expanse 57.3,86.2
		.talk Elder Moonlance##55228
		..accept Moonlance the Elder##29738 |instant
	step
		#include "hearth_ValleyofHonor"
	step
		#include "port_twilight"
	step
		goto Twilight Highlands,50.9,70.5
		.talk Elder Firebeard##55219
		..accept Firebeard the Elder##29737 |instant
	step
		goto Twilight Highlands 51.9,33.1
		.talk Elder Darkfeather##55218
		..accept Darkfeather the Elder##29736 |instant
	step
		goto 73.5,53.6
		.' Run through the Portal to Orgrimmar
		.' Teleport to Orgrimmar |goto Orgrimmar |noway |c
		'|click Portal to Orgrimmar##4395
	step
		#include "port_uldum"
	step
		goto Uldum 31.6,63.0
		.talk Elder Sekhemi##55210
		..accept Sekhemi the Elder##29741 |instant
	step
		goto 65.5,18.7
		.talk Elder Menkhaf##55211
		..accept Menkhaf the Elder##29742 |instant
	step
		#include "hearth_ValleyofHonor"
	step
		#include "rideto_borean"
	step
		|fly Transitus Shield
	step
		goto 27.5,26.0 |n
		.' Enter The Nexus here |goto The Nexus |noway |c
	step
		map The Nexus
		path loop off
		path	 34.4,78.5	29.0,70.6	24.0,67.6
		path	 22.0,59.0	18.9,51.5	21.9,44.0
		path	 21.5,36.7	25.9,33.5	26.9,25.2
		path	 35.4,22.0	43.5,22.1	46.1,28.4
		path	 54.0,35.9	55.7,50.5	62.7,52.5
		path	 60.3,64.3	55.3,64.7
		.talk Elder Igasho##30536
		..accept Igasho the Elder##13021
	step
		goto Dragonblight 26.0,50.9 |n
		.' Enter Azjol-Nerub here |goto Azjol-Nerub/3 |noway |c
	step
		map Azjol-Nerub/3
		path loop off
		path	19.7,66.9	26.8,36.9	55.8,44.7
		path	88.3,44.8	72.6,30.9
		.' Follow this path down |goto Azjol-Nerub/2 |noway |c
	step
		map Azjol-Nerub/2
		path loop off
		path	39.7,30.7	43.8,20.5	61.2,19.9
		path	60.0,43.6	51.1,61.8
		.' Jump down this hole into the water below |goto Azjol-Nerub |noway |c
	step
		goto 21.8,43.6
		.talk Elder Nurgen##30533
		..accept Nurgen the Elder##13022
	step
		.' Leave Azjol-Nerub |goto Dragonblight |noway |c
	step
		goto The Storm Peaks 39.6,26.9 |n
		.' Enter the portal to the Halls of Stone. |goto Halls of Stone |noway|c
	step
		goto Halls of Stone,29.4,62.1
		.talk Elder Yurauk##30535
		..accept Yurauk the Elder##13066
	step
		.' Leave the Halls of Stone. |goto The Storm Peaks |noway|c
	step
		goto Zul'Drak,76.1,20.9 |n
		.' Enter the swirling portal to Gundrak. |goto Gundrak |noway|c
	step
		map Gundrak
		path loop off
		path	 59.1,49.2	58.2,68.5	50.9,73.6
		path	45.6,61.5
		.talk Elder Ohanzee##30537
		..accept Ohanzee the Elder##13065
	step
		map Gundrak
		path loop off
		path	45.6,61.5	50.9,73.6	 58.2,68.5
		path	59.1,49.2
		.' Follow the path, going up the ramps and out of the instance. |goto Zul'Drak |noway|c
	step
		'Go northwest to The Storm Peaks |goto The Storm Peaks |noway |c
	step
		goto Zul'Drak,28.5,86.9 |n
		.' Enter the swirling portal to Drak'Tharon Keep. |goto Drak'Tharon Keep |noway|c
	step
		map Drak'Tharon Keep
		path loop off
		path 31.9,80.0		39.2,86.0	46.2,84.3
		path 47.5,63.7		47.7,51.0	50.5,40.7
		path 57.0,23.0		66.6,23.8	66.7,39.0
		path 67.5,56.0		55.8,58.5	55.5,77.6
		path 65.4,76.3		68.9,79.1
		.' Follow the path to Elder Kilias.
		.talk Elder Kilias##30534
		..accept Kilias the Elder##13023 |instant
	step
		map Drak'Tharon Keep
		path loop off
		path	62.5,77.3	 55.5,77.7	 58.8,57.0
		path	68.0,55.8	 66.8,37.6	 66.9,25.5
		path	64.9,18.9	 57.1,19.3	 50.3,40.9
		path	47.6,50.7	 47.6,68.3	 47.3,83.3
		path	34.7,80.2	 28.5,81.0
		.' Leave the Drak'Tharon. |goto Zul'Drak |noway|c
	step
		goto Howling Fjord 58.0,50.0 |n
		.' Enter the Utgard Keep building here |goto Howling Fjord,58.0,50.0,0.5 |noway |c
	step
		goto 57.3,46.8 |n
		.' Enter Utgarde Keep here |goto Utgarde Keep |noway |c
	step
		map Utgarde Keep
		path loop off
		path	66.8,61.8	62.9,43.6	65.7,29.5
		path	56.4,25.1	44.8,28.0	26.3,37.3
		path	26.1,50.9	22.9,72.7	34.3,88.9
		path	49.3,77.1
		.' Follow this path to the Elder |goto 49.3,77.1,0.5 |noway |c
	step
		goto 47.5,69.6
		.talk Elder Jarten##30531
		..accept Jarten the Elder##13017 |instant
	step
		.' Leave Utgarde Keep |goto Howling Fjord |noway |c
	step
		goto Howling Fjord,57.3,46.7 |n
		.' Enter the swirling portal to Utgarde Pinnacle. |goto Utgarde Pinnacle/2 |noway|c
	step
		map Utgarde Pinnacle/2
		path loop off
		path 44.5,17.0		44.2,29.8	 38.5,35.9
		path 33.7,49.0		33.5,64.4	 35.5,69.1
		path 39.1,75.8
		.' Take the stairs down. |goto Utgarde Pinnacle |noway|c
	step
		map Utgarde Pinnacle
		path loop off
		path 35.9,77.9		36.2,86.9	 41.7,86.2
		path 46.1,81.9
		.' Go up the stairs. |goto Utgarde Pinnacle/2 |noway|c
	step
		map Utgarde Pinnacle/2
		path loop off
		path 54.0,77.0		51.8,76.2	51.8,81.4
		path 56.8,84.4		60.6,84.3	63.7,69.7
		path 68.3,68.4		 68.8,56.4	68.9,36.1
		.' Follow the path, clicking here to continue. |confirm
	step
		goto Utgarde Pinnacle,48.7,23.1 
		.talk Elder Chogan'gada##30538
		..accept Chogan'gada the Elder##13067
]])

ZygorGuidesViewer:RegisterInclude("H_Lunar_Festival_Achievements",[[
	step
		goto Orgrimmar 52.4,58.5
		.talk Lunar Festival Harbinger##15895
		.' <I'd like a new invitation to the Lunar Festival.>
		.collect Lunar Festival Invitation##21711
	step
		goto Orgrimmar 52.4,57.4
		.' Use the Lunar Festival Invitation while standing in the beam of light |use Lunar Festival Invitation##21711
		.' Go to Moonglade |goto Moonglade |c |q 8883
	step
		goto Moonglade,53.6,35.3
		.talk Valadar Starsong##15864
		..turnin Valadar Starsong##8883
	step
		 goto 36.6,58.1
		.talk Lunar Festival Vendor##15898
		.buy 10 Festival Firecracker##21747
		.buy 10 Red Rocket Cluster##21576
		.buy 1 Green Rocket Cluster##21574
	step
		goto 36.0,57.7
		.' Use the _Festival Firecrackers_ as fast as you can.
		.' You will need to use 10 in 30 seconds.
		.' You can drag the Festival Firecrackers onto your action bar. You will need to click the ground where you want to throw them.
		.use Festival Firecracker##21747
		.' Earn the _Frienzied Firecracker_ Achievement. |achieve 1552
	step
		goto 30.6,18.9
		.' Drag the _Red Rocket Clusters_ to you action bar.
		.' You will need to use 10 in 25 seconds.
		.' You will need to spam whatever button the Red Rocket Cluster is assigned to.
		.use Red Rocket Cluster##21576
		.' Earn _The Rockets Red Glare_ Achievement. |achieve 1281
	step
		goto 53.6,35.3
		.talk Valadar Starsong##15864
		..accept Elune's Blessing##8868
	step
		goto 63.7,62.4
		.' Use your Green Rocket Cluster |use Green Rocket Cluster##21574
		.from Omen##15467 
		.' You will need a group of 4 or 5 to beat him.
		.' Receive Elune's Blessing|q 8868/1
	step
		goto Moonglade 53.6,35.3
		.talk Valadar Starsong##15864
		..turnin Elune's Blessing##8868
	step
		goto 53.6,35.3
		.talk Valadar Starsong##15864 |tip You only need to buy one of these.
		.buy Festive Pink Dress##21538 |or
		.buy Festive Purple Dress##21539 |or
		.buy Festive Black Pant Suit##21541 |or
		.buy Festive Blue Pant Suit##21544 |or
		.buy Festive Teal Pant Suit##21543 |or
		.buy Festive Green Dress##21157 |or
		.' Earn the Achievment Lunar Festival Finery |achieve 626
	step
		Congratulations! You know how To Honor One's Elders!
]])
-- Love Is In The Air --
ZygorGuidesViewer:RegisterInclude("H_Love_Is_In_The_Air_Main_Questline",[[
	step
		goto Orgrimmar,50.8,75.2
		.talk Detective Snap Snagglebolt##37172
		..accept Something Stinks##24536
	step
		goto 51.9,76.3
		.' Use Snagglebolt's Air Analyzer on pink glowing Orgrimmar Grunts around this area |use Snagglebolt's Air Analyzer##50131
		.' Analyze 6 Perfumed Guards |q 24536/1
		'|talk Orgrimmar Grunt##3296
	step
		goto 50.8,75.2
		.talk Detective Snap Snagglebolt##37172
		..turnin Something Stinks##24536
		..accept Pilfering Perfume##24541
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
		.talk Detective Snap Snagglebolt##37172
		..turnin Pilfering Perfume##24541
		..accept Snivel's Sweetheart##24850
	step
		goto 57.6,60.8
		.talk Roka##38328
		..turnin Snivel's Sweetheart##24850
		..accept Hot On The Trail##24851
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
		.talk Roka##38328
		..turnin Hot On The Trail##24851
		..accept A Friendly Chat...##24576
	step
		goto 51.6,56.7
		.talk Snivel Rustrocket##37715
		..' Tell him you have a rocket with his mark on it.
		..get Snivel's Ledger |q 24576/1
	step
		goto Orgrimmar,50.8,75.2
		.talk Detective Snap Snagglebolt##37172
		..turnin A Friendly Chat...##24576
]])

ZygorGuidesViewer:RegisterInclude("H_Love_Is_In_The_Air_Dailies",[[
	daily
	step
		goto Orgrimmar,50.8,75.3
		.talk Detective Snap Snagglebolt##37172
		..' You have to be at least level 5 to accept a quest from him
		..accept Crushing the Crown##24638 |daily |only if level >= 5 and level < 14
		..accept Crushing the Crown##24645 |daily |only if level >= 14 and level < 23
		..accept Crushing the Crown##24647 |daily |only if level >= 23 and level < 32
		..accept Crushing the Crown##24648 |daily |only if level >= 32 and level < 41
		..accept Crushing the Crown##24649 |daily |only if level >= 41 and level < 51
		..accept Crushing the Crown##24650 |daily |only if level >= 51 and level < 61
		..accept Crushing the Crown##24651 |daily |only if level >= 61 and level < 71
		..accept Crushing the Crown##24652 |daily |only if level >= 71 and level <81
		..accept Crushing the Crown##28935 |daily |only if level >= 81
	step
		goto 53.1,77.2
		.talk Public Relations Agent##37675
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Cloudlet of Classy Cologne##24635 |daily |or
		..accept A Perfect Puff of Perfume##24629 |daily |or
		..accept Bonbon Blitz##24636 |daily |or
	step
		goto 53.0,76.8
		.talk Kwee Q. Peddlefeet##38042
		..accept A Gift for the Warchief##24612 |daily
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
		.kill 5 Crown Lackey |q 24638/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24638/1
		only if level >= 5 and level < 14
	step
		goto Orgrimmar,43.1,64.9 |n
		.' Ride the zeppelin to Thunder Bluff |goto Thunder Bluff |noway |c
	step
		goto Thunder Bluff,44.0,52.6
		.talk Kwee Q. Peddlefeet##38042
		..accept A Gift for the High Chieftain##24614 |daily
	step
		goto 43.6,52.9
		.talk Public Relations Agent##37675
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Cloudlet of Classy Cologne##24635
		..turnin A Perfect Puff of Perfume##24629
		..turnin Bonbon Blitz##24636
	step
		|fly Ramkahen
		|only if level >= 81
	step
		 goto Uldum,67.8,19.8
		.kill 5 Crown Technicians |q 28935/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 28935/1
		only if level >= 81
	step
		|fly Orgrimmar
	step
		goto Orgrimmar,50.9,55.7 |n
		.' Ride the zeppelin to Undercity |goto Tirisfal Glades |noway |c
	step
		Go inside Undercity |goto Undercity |noway |c
	step
		goto Undercity,66.5,38.6
		.talk Kwee Q. Peddlefeet##38042 |tip He is in the Ruins of Lordaeron.
		..accept A Gift for the Banshee Queen##24613 |daily
	step
		goto 63.3,48.5
		.talk Michael Garrett##4551
		..' Fly to The Forsaken Front, Silverpine Forest |goto Silverpine Forest,50.9,63.6,0.5 |noway |c
		only if level >= 14 and level < 23
	step
		goto Silverpine Forest,54.7,61.3
		.kill 5 Crown Thug |q 24645/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24645/1
		only if level >= 14 and level < 23
	step
		goto 50.9,63.6
		.talk Steven Stutzka##46552
		..' Fly to Undercity |goto Undercity |noway |c
		only if level >= 14 and level < 23
	step
		goto Undercity,63.3,48.5
		.talk Michael Garrett##4551
		..' Fly to Southpoint Gate, Hillsbrad |goto Hillsbrad Foothills,29.1,64.4,0.5 |noway |c
		only if level >= 23 and level < 32
	step
		goto Hillsbrad Foothills,34.5,58.4
		.kill 5 Crown Duster |q 24647/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24647/1
		only if level >= 23 and level < 32
	step
		goto 29.1,64.4
		.talk Pamela Stutzka##47655
		..' Fly to Undercity |goto Undercity |noway |c
		only if level >= 23 and level < 32
	step
		goto Undercity,63.3,48.5
		.talk Michael Garrett##4551
		..' Fly to Hiri'watha Research Station, The Hinterlands |goto The Hinterlands,32.4,58.1,0.5 |noway |c
		only if level >= 41 and level < 51
	step
		goto The Hinterlands,23.6,53.7
		.kill 5 Crown Agent |q 24649/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24649/1
		only if level >= 41 and level < 51
	step
		goto 32.5,58.1
		.talk Kellen Kuhn##43573
		..' Fly to Undercity |goto Undercity |noway |c
		only if level >= 41 and level < 51
	step
		goto Undercity,54.9,11.3 |n
		.' Click the Orb of Translocation to go to Silvermoon City |goto Silvermoon City |noway |c |tip It's a red floating ball with 3 small golden statues spinning around it, in a side room in the Ruins of Lordaeron.
	step
		goto Silvermoon City,64.4,66.5
		.talk Kwee Q. Peddlefeet##38042
		..accept A Gift for the Regent Lord of Quel'Thalas##24615 |daily
	step
		'This step depends on your character's level and what you want to do.  
		.' If you don't have a lot of money, or don't want to spend any more, do this: |tip Go to a place where the mobs are at least green to you, they cannot be grey to you, or they won't drop the items you need.  Now, just kill the mobs until you collect 40 Lovely Charms.  You won't get a Lovely Charm from every mob you kill, so be prepared to grind for a while.
		..collect 40 Lovely Charm##49655 |n
		.' If you have a lot of money, or don't care about spending money and just want to do the quests very quickly, do this: |tip Go to the Auction House and buy 4 Lovely Charm Bracelets.
		.' If you chose to kill mobs, use your Lovely Charms to create 4 Lovely Charm Bracelets |use Lovely Charm##49655
		.collect 4 Lovely Charm Bracelet##49916 |future |q 24614
	step
		'Go to Silvermoon City |goto Silvermoon City |noway |c
	step
		goto Silvermoon City,53.8,20.2
		.talk Lor'themar Theron##16802
		..turnin A Gift for the Regent Lord of Quel'Thalas##24615
	step
		goto 49.4,14.8 |n
		.' Click the Orb of Translocation to go to Undercity |goto Tirisfal Glades |noway |c |tip It's a red floating ball with 3 small golden statues spinning around it, in the back room of this building, up on a platform.
	step
		goto Undercity,58.1,91.8
		.talk Lady Sylvanas Windrunner##10181
		..turnin A Gift for the Banshee Queen##24613
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
		.talk Baine Bloodhoof##36648
		..turnin A Gift for the High Chieftain##24614
	step
		goto 15.4,25.7 |n
		.' Ride the zeppelin to Orgrimmar |goto Orgrimmar |noway |c
	step
		#include "rideto_borean"
		only if level >= 71 and level < 81
	step
		|fly Dalaran
		only if level >= 71 and level < 81
	step
		'Go outside of Dalaran to Crystalsong Forest |goto Crystalsong Forest |noway |c
		only if level >= 71 and level < 81
	step
		goto Crystalsong Forest,46.3,50.8
		.kill 5 Crown Sprayer |q 24652/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24652/1
		only if level >= 71 and level < 81
	step
		|fly Dalaran
		only if level >= 71 and level < 81
	step
		goto Dalaran,72.2,45.8
		.talk Aludane Whitecloud##28674
		.' Fly to Warsong Hold, Borean Tundra |goto Borean Tundra,40.4,51.5,0.5 |noway |c
		only if level >= 71 and level < 81
	step
		goto Borean Tundra,41.4,53.7 |n
		.' Ride the zeppelin to Orgrimmar |goto Orgrimmar |noway |c 
		only if level >= 71 and level < 81
	step
		goto Orgrimmar,49.7,59.2
		.talk Doras##3310
		..' Fly to Brackenwall Village |goto Dustwallow Marsh,35.6,31.8,0.5 |noway |c
		only if level >= 32 and level < 41
	step
		goto Dustwallow Marsh,60.7,38.3
		.kill 5 Crown Hoodlum |q 24648/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24648/1
		only if level >= 32 and level < 41
	step
		goto 35.6,31.9
		.talk Shardi##11899
		..' Fly to Orgrimmar |goto Orgrimmar,49.3,59.4,0.5 |noway |c
		only if level >= 32 and level < 41
	step
		goto Orgrimmar,49.7,59.2
		.talk Doras##3310
		..' Fly to Everlook |goto Winterspring,58.9,48.3,0.5 |noway |c
		only if level >= 51 and level < 61
	step
		goto Winterspring,63.6,49.4
		.kill 5 Crown Sprinkler |q 24650/2 |tip They are on top of this big hill.
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24650/1
		only if level >= 51 and level < 61
	step
		goto 58.8,48.3
		.talk Yugrek##11139
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
		.talk Vlagga Freyfeather##18930
		..' Fly to Shattrath City |goto Shattrath City |noway |c
		only if level >= 61 and level < 71
	step
		'Go outside of Shattrath City to Terokkar Forest |goto Terokkar Forest |noway |c
		only if level >= 61 and level < 71
	step
		goto Terokkar Forest,41.4,22.4
		.kill 5 Crown Underling |q 24651/2
		.' Use Snagglebolt's Khorium Bomb next to the big shaking Chemical Wagon |use Snagglebolt's Khorium Bomb##50130
		.' Destroy the Chemical Wagon |q 24651/1
		only if level >= 61 and level < 71
	step
		'Go inside Shattrath City |goto Shattrath City |noway |c
		only if level >= 61 and level < 71
	step
		goto Shattrath City,64.1,41.1
		.talk Nutral##18940
		.' Fly to Hellfire Peninsula, The Dark Portal, Horde |goto Hellfire Peninsula,87.4,48.2,0.5 |noway |c
		only if level >= 61 and level < 71
	step
		'Go through the big green portal to Blasted Lands |goto Blasted Lands |noway |c
		only if level >= 61 and level < 71
	step
		goto Blasted Lands,50.9,72.9
		.talk Salena##43114
		.' Fly to Booty Bay, Stranglethorn |goto The Cape of Stranglethorn,40.5,73.3,0.5 |noway |c
		only if level >= 61 and level < 71
	step
		goto The Cape of Stranglethorn,39.3,67.2 |n
		.' Ride the boat to Ratchet |goto Northern Barrens |noway |c
		only if level >= 61 and level < 71
	step
		goto Northern Barrens,69.1,70.7
		.talk Bragok##16227
		.' Fly to Orgrimmar, Durotar |goto Orgrimmar,49.3,59.4,0.5 |noway |c
		only if level >= 61 and level < 71
	step
		goto Orgrimmar,48.1,70.5
		.talk Garrosh Hellscream##39605
		..turnin A Gift for the Warchief##24612
	step
		goto 50.8,75.3
		.talk Detective Snap Snagglebolt##37172
		..' You have to be at least level 5 to accept a quest from him
		..turnin Crushing the Crown##24638 |only if level >= 5 and level < 14
		..turnin Crushing the Crown##24645 |only if level >= 14 and level < 23
		..turnin Crushing the Crown##24647 |only if level >= 23 and level < 32
		..turnin Crushing the Crown##24648 |only if level >= 32 and level < 41
		..turnin Crushing the Crown##24649 |only if level >= 41 and level < 51
		..turnin Crushing the Crown##24650 |only if level >= 51 and level < 61
		..turnin Crushing the Crown##24651 |only if level >= 61 and level < 71
		..turnin Crushing the Crown##24652 |only if level >= 71 and level < 81
		..turnin Crushing the Crown##28935 |only if level >= 85
]])

ZygorGuidesViewer:RegisterInclude("H_Love_Is_In_The_Air_Achievements",[[
	step
		'You will need _Love Tokens_ in order to purchase items from vendors in this guide section. |tip You can get Love Tokens by completing the dailies in the Love is in the Air Dailies section. 
		.' Skip to the next step in the guide
		|confirm always
	step
		goto Orgrimmar,53.1,77.0
		.talk Lovely Merchant##37674
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
		.' Be Mine! |achieve 1701/1 |use 1 Heart Candy##21816
		.' I'll follow you all around Azeroth. |achieve 1701/2 |use 1 Heart Candy##21818
		.' All yours. |achieve 1701/3 |use 1 Heart Candy##21819
		.' I'm all yours! |achieve 1701/4 |use 1 Heart Candy##21821
		.' Hot Lips. |achieve 1701/5 |use 1 Heart Candy##21823
		.' You're Mine! |achieve 1701/6 |use 1 Heart Candy##21822
		.' You're the best! |achieve 1701/7 |use 1 Heart Candy##21820
		.' I LOVE YOU |achieve 1701/8 |use 1 Heart Candy##21817
	step
		goto 53.1,77.0
		.talk Lovely Merchant##37674
		.buy 10 Silver Shafted Arrow##22200 |n
		.' Use your Silver Shafted Arrows on 10 players inside Orgrimmar |use Silver Shafted Arrow##22200
		.' Shoot 10 Players with the Silver Shafted Arrow |achieve 1188
	step
		goto 53.1,77.0
		.talk Lovely Merchant##37674
		.buy 1 Box of Chocolates##49909 |n
		.' Use your Box of Chocolates and get all the chocolate contained inside of it |use Box of Chocolates##49909
		.' Eat each type of chocolate:
		.' Sweet Surprise |achieve 1702/3 |use Sweet Surprise##22239
		.' Very Berry Cream |achieve 1702/4 |use Very Berry Cream##22238
		.' Buttermilk Delight |achieve 1702/1 |use Buttermilk Delight##22236 |tip Save the remaining Buttermilk Delights for a later achievement.
		.' Dark Desire |achieve 1702/2 |use Dark Desire##22237
	step
		goto 53.1,77.0
		.talk Lovely Merchant##37674
		.buy 10 Love Rocket##34258 |n
		.' Spam use your Love Rockets |use Love Rocket##34258
		.' Shoot off 10 Love Rockets in 20 seconds or less |achieve 1696
	step
		goto 53.1,77.0
		.talk Lovely Merchant##37674
		.buy 15 Handful of Rose Petals##22218 |achieve 1699
		.buy 1 Romantic Picnic Basket##34480 |achieve 1291
		.buy 1 "VICTORY" Perfume##49856 |achieve 1280
		.buy 5 Love Fool##22261 |achieve 1704
	step
		goto 54.8,78.0
		.talk Barkeep Morag##5611
		.buy 6 Cup of Frog Venom Brew##44573 |achieve 1280
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
		.' Use all 6 of your Cups of Frog Venom Brew to get Completely Smashed |use Cup of Frog Venom Brew##44573
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
		.' _Drahga Shadowburner_ in Grim Batol: 
		.' _Corla, Herald of Twilight_ in Blackrock Caverns: 
		.' _High Priestess_ Azil in The Stonecore:
		.' _Admiral Ripsnarl_ in Deadmines: And
		.' _Lord Godfrey_ in Shadowfang Keep
		.' Get either of these 2 items as a random drop from these bosses:
		.collect 1 Bouquet of Red Roses##22206 |n
		.collect 1 Bouquet of Ebon Roses##44731 |n
		.' Obtain a Bouquet of Red or Ebon Roses during the Love is in the Air celebration |achieve 1703 
	step
		'Congratulations, you are a Fool For Love!
]])
--Noblegarden--
ZygorGuidesViewer:RegisterInclude("H_Noblegarden_Achievements",[[
	step
		'You may be unable to complete some of the achievements if you are lower level.  So, if you find you cannot do something in this guide, simply skip it and do what you can
		|confirm
	step
		goto Mulgore,47.2,59.3
		.click Brightly Colored Eggs##1407+ 
		|tip There is at least one available at all times. If Bloodhoof Village is too crowded with other players looking for eggs, you can also find them at Razor Hill, Falconwing Square, and Brill.
		.collect Brightly Colored Egg##45072+ |n
		.' Click Brightly Colored Eggs in your bags |use Brightly Colored Egg##45072
		.collect 100 Noblegarden Chocolate##44791+ |n
		.' Eat 100 Noblegarden Chocolates |achieve 2418 |use Noblegarden Chocolate##44791
		.' Discover a White Tuxedo Shirt by opening Brightly Colored Eggs |achieve 248/1
		.' Discover Black Tuxedo Pants by opening Brightly Colored Eggs |achieve 248/2
		.' Discover an Elegant Dress by opening Brightly Colored Eggs |achieve 249                                              
		.' If you've eaten 100 chocolates and want to buy these items to continue, click here to continue |confirm
	step
		'If you don't already have these items, collect Noblegarden Chocolates and purchase them from the Noblegarden Merchant at [47.1,59.9]:
		.collect Noblegarden Egg##44818 |achieve 2420 |tip It costs 5 Noblegarden Chocolates.
		.collect Blossoming Branch##44792 |achieve 2416 |tip It costs 10 Noblegarden Chocolates.
		.collect Spring Flowers##45073 |achieve 2422 |tip It costs 50 Noblegarden Chocolates.
		.collect Spring Robes##44800 |achieve 2436 |tip It costs 50 Noblegarden Chocolates.
		.collect Spring Rabbit's Foot##44794 |achieve 2497 |tip It costs 100 Noblegarden Chocolates.
	step
		goto 47.2,59.3
		.' Use your Spring Rabbit's Foot in your bags to get a Spring Rabbit companion |use Spring Rabbit's Foot##44794
		.' Bring out your Spring Rabbit companion |tip Press P to bring up your Spellbook and click on the Companions ribbon, then click the Spring Rabbit icon.
		.' Find a player with a Spring Rabbit next to them around Bloodhoof Village  
		.' Find your Spring Rabbit another one to love in Bloodhoof Village |achieve 2497/1
		|modelnpc Spring Rabbit##32791
	step
		goto 47.4,58.6
		.talk Tak##40809
		.' Fly to Thunk's Abode, Desolace |goto Desolace,70.7,32.9,0.5 |noway |c
	step
		'Equip your Spring Robes in your bags |equipped Spring Robes##44800 |use Spring Robes##44800
		.' Use your Spring Robes' ability to plant a flower |use Spring Robes##44800
		.' Plant a flower in Desolace |achieve 2436/2
	step
		goto Desolace,70.7,32.9
		.talk Thunk's Wyvern##35556
		.' Fly to Cenarion Hold, Silithus |goto Silithus,52.9,34.7,0.5 |noway |c
	step
		'Equip your Spring Robes in your bags |equipped Spring Robes##44800 |use Spring Robes##44800
		.' Use your Spring Robes' ability to plant a flower |use Spring Robes##44800
		.' Plant a flower in Silithus |achieve 2436/3
	step
		goto Silithus,52.8,34.6
		.talk Runk Windtamer##15178
		.' Fly to Mossy Pile, Un'Goro Crater |goto Un'Goro Crater,44.0,40.2,0.5 |noway |c
	step
		goto Un'Goro Crater,35.8,50.7
		.' Change into a bunny |tip You will need a friend to do this, or at least another player.  There should be plenty of players trying to do this achievement at the same time, so it should be easy to find help.  Have your friend, or other player, use their Blossoming Branch on you to turn you into a rabbit.
		.' Stand still until you lay an egg
		.' Lay a Noblegarden Egg in the Golakka Hot Springs |achieve 2416
	step
		goto 44.1,40.3
		.talk Flizzy Coilspanner##39175
		.' Fly to Gadgetzan, Tanaris |goto Tanaris,52.0,27.5,0.5 |noway |c
	step
		'Equip your Spring Robes in your bags |equipped Spring Robes##44800 |use Spring Robes##44800
		.' Use your Spring Robes' ability to plant a flower |use Spring Robes##44800
		.' Plant a flower in Tanaris |achieve 2436/4
	step
		goto Tanaris,52.0,27.6
		.talk Bulkrek Ragefist##7824
		.' Fly to Fizzle and Pozzik's Speedbarge, Thousand Needles |goto Thousand Needles,79.1,71.9,0.5 |noway |c
	step
		goto Thousand Needles,90.3,72.8
		'Equip your Spring Robes in your bags |equipped Spring Robes##44800 |use Spring Robes##44800
		.' Use your Spring Robes' ability to plant a flower |use Spring Robes##44800
		.' Plant a flower in Thousand Needles |achieve 2436/5
	step
		goto 79.2,72.0
		.talk Tilly Topspin##40768
		.' Fly to Razor Hill, Durotar |goto Durotar,53.0,43.6,0.5 |noway |c
	step
		goto Durotar,52.5,42.7
		.' Bring out your Spring Rabbit companion |tip Press P to bring up your Spellbook and click on the Companions ribbon, then click the Spring Rabbit icon.
		.' Find a player with a Spring Rabbit next to them around Razor Hill 
		.' Find your Spring Rabbit another one to love in Razor Hill |achieve 2497/4
		|modelnpc Spring Rabbit##32791
	step
		goto 53.1,43.6
		.talk Burok##41140
		.' Fly to Orgrimmar, Durotar |goto Orgrimmar,49.3,59.4,0.5 |noway |c
	step
		goto Orgrimmar,50.8,55.8 |n
		.' Ride the zeppelin to Tirisfal Glades |goto Tirisfal Glades |noway |c
	step
		goto Tirisfal Glades,61.0,52.7
		.' Bring out your Spring Rabbit companion |tip Press P to bring up your Spellbook and click on the Companions ribbon, then click the Spring Rabbit icon.
		.' Find a player with a Spring Rabbit next to them around Brill 
		.' Find your Spring Rabbit another one to love in Brill |achieve 2497/2
		|modelnpc Spring Rabbit##32791
	step
		'Go south to Undercity |goto Undercity |noway |c
	step
		goto Undercity,54.9,11.2 |n
		.' Click the Orb of Translocation to go to Silvermoon City |goto Silvermoon City |noway |c |tip It's a glowing red crystal ball in a side room of the Ruins of Lordaeron.
		|modelnpc Orb of Translocation##7186
	step
		'Use your Noblegarden Egg anywhere in Silvermoon City |use Noblegarden Egg##44818
		.' Hide a Brightly Colored Egg in Silvermoon City |achieve 2420
	step
		'Go outside to Eversong Woods |goto Eversong Woods |noway |c
	step
		goto Eversong Woods,47.5,46.5
		.' Bring out your Spring Rabbit companion |tip Press P to bring up your Spellbook and click on the Companions ribbon, then click the Spring Rabbit icon.
		.' Find a player with a Spring Rabbit next to them around Falconwing Square 
		.' Find your Spring Rabbit another one to love in Falconwing Square |achieve 2497/3
		|modelnpc Spring Rabbit##32791
	step
		'Go to Silvermoon City |goto Silvermoon City |noway |c
	step
		goto Silvermoon City,49.5,14.8 |n
		.' Click the Orb of Translocation to go to Undercity |goto Undercity |noway |c |tip It's a glowing red crystal ball in the back room of this building, up a big ramp.
		|modelnpc Orb of Translocation##7186
	step
		goto Undercity,63.3,48.5
		.talk Michael Garrett##4551
		.' Fly to New Kargath, Badlands |goto Badlands,17.3,40.2,0.5 |noway |c
	step
		'Equip your Spring Robes in your bags |equipped Spring Robes##44800 |use Spring Robes##44800
		.' Use your Spring Robes' ability to plant a flower |use Spring Robes##44800
		.' Plant a flower in The Badlands |achieve 2436/1
	step
		'Equip your Black Tuxedo Pants |equipped Black Tuxedo Pants##6835 |use Black Tuxedo Pants##6835
		'Equip your White Tuxedo Shirt |equipped White Tuxedo Shirt##6833 |use White Tuxedo Shirt##6833
		.' Find another player who is wearing the Elegant Dress and perform the Kiss emote on them |script DoEmote("KISS") |tip The Elegant Dress looks like a long pink dress when worn.
		.' Kiss someone wearing an Elegant Dress while wearing a White Tuxedo Shirt and Black Tuxedo Pants |achieve 2576
	step
		'Find a female character of every race that are at least level 18 and do the following: |tip The best places to try and find them would be Dalaran, Shattrath, Stormwind, and Orgrimmar
		.' Use your Spring Flowers on them |equipped Spring Flowers##45073 |use Spring Flowers##45073
		.' Place bunny ears on a Blood Elf |achieve 2422/1
		.' Place bunny ears on a Human |achieve 2422/6
		.' Place bunny ears on a Troll |achieve 2422/10
		.' Place bunny ears on a Draenei |achieve 2422/2
		.' Place bunny ears on a Night Elf |achieve 2422/7
		.' Place bunny ears on an Undead |achieve 2422/11
		.' Place bunny ears on a Dwarf |achieve 2422/3
		.' Place bunny ears on a Orc |achieve 2422/8
		.' Place bunny ears on a Gnome |achieve 2422/4
		.' Place bunny ears on a Tauren |achieve 2422/9
		.' Place bunny ears on a Goblin |achieve 2422/5
		.' Place bunny ears on a Worgen |achieve 2422/12
	step
		'Congratulations, you are now a Noble Gardener!
]])

ZygorGuidesViewer:RegisterInclude("H_Noblegarden_Quests_Dailies",[[
	step
		goto Thunder Bluff,40.8,56.1
		.talk Tauren Commoner##19176
		..accept Spring Gatherers##13483
	step
		goto 47.0,49.6
		.talk Tal##2995
		.' Fly to Bloodhoof Village, Mulgore |goto Mulgore,47.4,58.7,0.5 |noway |c
	step
		goto Mulgore,46.9,59.5
		.talk Spring Gatherer##32798
		..turnin Spring Gatherers##13483
		..accept The Great Egg Hunt##13479 |daily
	step
		goto 47.1,59.9
		.talk Noblegarden Merchant##32837
		..accept A Tisket, a Tasket, a Noblegarden Basket##13503
	step
		'Search around Bloodhoof Village for Brightly Colored Eggs and click them:
		.click Brightly Colored Egg##1407+ 
		|tip There is at least one available at all times. If Bloodhoof Village is too crowded with other players looking for eggs, you can also find them at Razor Hill, Falconwing Square, and Brill.
		.collect Brightly Colored Egg##45072+ |n
		.' Click Brightly Colored Eggs in your bags |use Brightly Colored Egg##45072
		.get 20 Brightly Colored Shell Fragment |q 13479/1
		.get 10 Noblegarden Chocolate |q 13503/1
	step
		goto 47.1,59.9
		.talk Noblegarden Merchant##32837
		..turnin A Tisket, a Tasket, a Noblegarden Basket##13503
	step
		goto 46.9,59.5
		.talk Spring Gatherer##32798
		..turnin The Great Egg Hunt##13479
]])

--CHILDREN'S VEIL--

ZygorGuidesViewer:RegisterInclude("H_Children's_Week_Ogrimmar_Quests",[[
	step
		goto Orgrimmar,58.0,57.6
		.talk Orphan Matron Battlewail##51989 |tip This npc may walk around, so some searching may be required.
		..accept Children's Week##172
	step
		'Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
		.talk Orcish Orphan##14444
		..turnin Children's Week##172
		..accept Ridin' the Rocketway##29146
		..accept The Fallen Chieftain##29176
		..accept The Banshee Queen##29167
	step
		|fly Southern Rocketway Terminus
	step
		goto 50.7,73.9
		.clicknpc Redhound Two-Seater##52583
		.' Take Your Orphan to Ride the Rocketway |q 29146/1
	step
		'Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
		.talk Orcish Orphan##14444
		..turnin Ridin' the Rocketway##29146
	step
		goto 25.9,49.6
		.talk Bilgewater Rocket-jockey##43217
		..' Tell him Southern Rocketway Terminus, please
		.' Ride the rocket to Southern Rocketway Terminus |goto 50.7,74.1,1.0 |noway |c
	step
		|fly Thunder Bluff
	step
		'Go outside to Mulgore |goto Mulgore |noway |c
	step
		goto Mulgore,60.7,23.1
		.' Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18597
		.' Take Your Orphan to Visit Red Rocks |q 29176/1
	step
		'Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
		.talk Orcish Orphan##14444
		..turnin The Fallen Chieftain##29176
	step
		'Go west to Thunder Bluff |goto Thunder Bluff |noway |c
	step
		|fly Orgrimmar
	step
		goto Orgrimmar,50.8,55.8 |n
		.' Ride the zeppelin to Tirisfal Glades |goto Tirisfal Glades |noway |c
	step
		'Go south to Undercity |goto Undercity |noway |c
	step
		goto Undercity,52.4,64.2 |n
		.' Follow the path down |goto Undercity,52.4,64.2,0.5 |noway |c
	step
		goto 58.1,91.8
		.' Use your Human Orphan Whistle to summon your Human Orphan |use Human Orphan Whistle##18597
		.' Take Your Orphan to a Meeting with Lady Sylvanas Windrunner |q 29167/1
	step
		'Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
		.talk Orcish Orphan##14444
		..turnin The Banshee Queen##29167
		..accept Let's Go Fly a Kite##29190
		..accept You Scream, I Scream...##29191
	step
		'Go outside to Tirisfal Glades |goto Tirisfal Glades |noway |c
	step
		goto Tirisfal Glades,60.7,58.8 |n
		.' Ride the zeppelin to Orgrimmar |goto Orgrimmar |noway |c
	step
		goto Orgrimmar,58.3,55.0
		.talk Blax Bottlerocket##52809
		.buy 1 Dragon Kite 2-Pack##69231 |q 29190
	step
		'Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
		.' When your orphan is next to you:
		.' Use your Dragon Kite 2-Pack |use Dragon Kite 2-Pack##69231
		.' Fly Dragon Kites with Your Orphan |q 29190/1
	step
		'Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
		.talk Orcish Orphan##14444
		..turnin Let's Go Fly a Kite##29190
	step
		goto 38.8,87.0
		.talk Snixx Quickfreeze##52818
		.buy 1 Cone of Cold##69233 |q 29191
	step
		'Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
		.' When your orphan is next to you:
		.' Use your Cone of Cold |use Cone of Cold##69233
		.' Take Your Orphan Out for Ice Cream |q 29191/1
	step
		'Use your Orcish Orphan Whistle to summon your Orcish Orphan |use Orcish Orphan Whistle##18597
		.talk Orcish Orphan##14444
		..turnin You Scream, I Scream...##29191
		..accept A Warden of the Horde##5502
	step
		goto 58.3,55.0
		.talk Blax Bottlerocket##52809
		.buy 1 Foam Sword Rack |q 5502/1
	step
		goto 58.0,57.6
		.talk Orphan Matron Battlewail##51989
		..turnin A Warden of the Horde##5502 |tip You will be able to choose from 3 pet companions or a 5 gold reward.  If you already have all 3 pets, choose the gold.  You will be able to do this quest each year, so you will be able to collect all 3 pets, eventually.
]])
ZygorGuidesViewer:RegisterInclude("H_Children's_Week_Shattrath_Quests",[[
	step
		goto Shattrath City,74.9,47.9
		.talk Orphan Matron Mercy##22819
		..accept Children's Week##10942
	step
		'Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
		.talk Blood Elf Orphan##22817
		..turnin Children's Week##10942
		..accept Hch'uu and the Mushroom People##10945
		..accept A Trip to the Dark Portal##10951
		..accept Visit the Throne of the Elements##10953 
	step
		goto Nagrand,60.7,22.3
		.' Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
		.' Take Salandria to the Throne of the Elements |q 10953/1
	step
		goto Nagrand,60.7,22.1
		.talk Elementalist Sharvak##18072
		..turnin Visit the Throne of the Elements##10953
	step
		goto Zangarmarsh,19.3,51.3
		.' Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
		.' Take Salandria to Sporeggar |q 10945/1
	step
		goto Zangarmarsh,19.3,51.3
		.talk Hch'uu##22823
		..turnin Hch'uu and the Mushroom People##10945
	step
		goto Hellfire Peninsula,89.6,50.2
		.' Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
		.' Take Salandria to the Dark Portal |q 10951/1
	step
		'Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
		.talk Blood Elf Orphan##22817
		..turnin A Trip to the Dark Portal##10951
		..accept Now, When I Grow Up...##11975
		..accept Time to Visit the Caverns##10963
	step
		'Go through the Dark Portal to the Blasted Lands |goto Blasted Lands |noway |c
	step
		'Go north to Swamp of Sorrows |goto Swamp of Sorrows |noway |c
	step
		|fly Booty Bay
	step
		goto The Cape of Stranglethorn,39.2,67.2 |n
		.' Ride the boat to Ratchet |goto Northern Barrens |noway |c
	step
		|fly Gadgetzan
	step
		goto Tanaris,61.5,50.6 |n
		.' The path to Zaladormu starts here |goto Tanaris,61.5,50.6,1 |noway |c
	step
		goto Tanaris,64.9,50.0 |n
		.' Enter the Caverns of Time here |goto Tanaris,64.9,50.0,0.5 |noway |c
	step
		'Follow the path down to 60.0,57.0 |goto Tanaris,60.0,57.0 |tip You will end up underground, in the Caverns of Time, next to a big dragon named Zaladormu, who is laying on a big platform.
		.' Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
		.' Take Salandria to the Caverns of Time |q 10963/1
	step
		goto Tanaris,63.0,57.3
		.talk Alurmi##21643
		.buy 1 Toy Dragon##31951 |q 10963/2
	step
		'Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
		.talk Blood Elf Orphan##22817
		..turnin Time to Visit the Caverns##10963
	step
		'Go outside to 52.0,27.6 |goto Tanaris,52.0,27.6
		|fly Orgrimmar
	step
		goto Orgrimmar,50.9,55.8 |n
		.' Go up the tower and ride the zeppelin to Tirisfal Glades |goto Tirisfal Glades |noway |c
	step
		'Go south to Undercity |goto Undercity |noway |c
	step
		goto 54.9,11.3 |n
		.' Click the Orb of Translocation to go to Silvermoon City |goto Silvermoon City |noway |c |tip It's a red floating ball with 3 small golden statues spinning around it, in a side room in the Ruins of Lordaeron.
	step
		goto Silvermoon City,76.7,80.7
		.' Use your Blood Elf Orphan Whistle to summon your Blood Elf Orphan |use Blood Elf Orphan Whistle##31880
		.' Take Salandria to see the Elite Tauren Chieftain in Silvermoon City's Walk of Elders
		.talk Blood Elf Orphan##22817
		..turnin Now, When I Grow Up...##11975
		..accept Back to the Orphanage##10967
	step
		goto Silvermoon City,58.4,21.0 |n
		.' Click the Portal to Blasted Lands to go to the Blasted Lands |goto Blasted Lands |noway |c
	step
		'Go south through the Dark Portal to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
	step
		|fly Shattrath
	step
		goto Shattrath City,74.9,47.9
		.talk Orphan Matron Mercy##22819
		..turnin Back to the Orphanage##10967 |tip You will be able to choose from 4 pet companions. Only Egbert's Egg, Elekk Training Collar, and Sleepy Willy count toward an achievement.
]])
ZygorGuidesViewer:RegisterInclude("H_Children's_Week_Oracle_Quests",[[
	step
		goto Dalaran,49.4,63.2
		.talk Orphan Matron Aria##34365
		..accept Little Orphan Roo Of The Oracles##13926
		..' Ask about the orphans
		..' Speak to Orphan Matron Aria and accept to care for the Oracle Orphan |q 13926/1
	step
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.talk Oracle Orphan##33533
		..turnin Little Orphan Roo Of The Oracles##13926
		..accept The Biggest Tree Ever!##13929
		..accept The Bronze Dragonshrine##13933
		..accept Playmates!##13950 
	step
		goto Grizzly Hills,50.8,42.8
		.' Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.' Take Roo to visit Grizzlemaw |q 13929/1
	step
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.talk Oracle Orphan##33533
		..turnin The Biggest Tree Ever!##13929
	step
		goto Dragonblight,72.5,36.9
		.' Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.' Take Roo to visit the Bronze Dragonshrine |q 13933/1
	step
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.talk Oracle Orphan##33533
		..turnin The Bronze Dragonshrine##13933
	step
		goto Borean Tundra,43.5,13.7
		.' Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.' Take Roo to visit Winterfin Retreat |q 13950/1
	step
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.talk Oracle Orphan##33533
		..turnin Playmates!##13950
		..accept The Dragon Queen##13954
		..accept Meeting a Great One##13956
	step
		goto Sholazar Basin,40.3,83.0 |n
		.' Walk into the light to teleport to Un'Goro Crater |goto Un'Goro Crater |noway |c
	step
		goto Un'Goro Crater,47.5,9.2
		.' Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.' Take Roo to visit The Etymidian |q 13956/1
	step
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.talk Oracle Orphan##33533
		..turnin Meeting a Great One##13956
	step
		goto Un'Goro Crater,50.5,7.8 |n
		.' Walk into the light to teleport to Sholazar Basin |goto Sholazar Basin |noway |c
	step
		goto Dragonblight,59.8,54.7
		.' Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.' Take Roo to visit Alexstrasza the Life-Binder |q 13954/1 |tip Alexstrasza the Life-Binder is at the top of Wyrmrest Temple.
	step
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.talk Oracle Orphan##33533
		..turnin The Dragon Queen##13954
		..accept A Trip To The Wonderworks##13937
	step
		|fly Dalaran
	step
		goto Dalaran,44.9,45.6
		.talk Jepetto Joybuzz##29478
		.buy 1 Small Paper Zeppelin##46693
	step
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.' Use your Small Paper Zeppelin on your Oracle Orphan |use Small Paper Zeppelin##46693
		.' Throw the Small Paper Zeppelin to Roo |q 13937/1
	step
		'Use your Oracle Orphan Whistle to summon your Oracle Orphan |use Oracle Orphan Whistle##46397
		.talk Oracle Orphan##33533
		..turnin A Trip To The Wonderworks##13937
		..accept Back To The Orphanage##13959
	step
		goto Dalaran,49.4,63.2
		.talk Orphan Matron Aria##34365
		..turnin Back To The Orphanage##13959 |tip You will receive a Curious Oracle Hatchling pet companion in the mail.
]])
ZygorGuidesViewer:RegisterInclude("H_Children's_Week_Wolvar_Quests",[[
	step
		goto Dalaran,49.4,63.2
		.talk Orphan Matron Aria##34365
		..accept Little Orphan Kekek Of The Wolvar##13927
		..' Ask about the orphans
		..' Speak to Orphan Matron Aria and accept to care for the Wolvar Orphan |q 13927/1
	step
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.talk Wolvar Orphan##33532
		..turnin Little Orphan Kekek Of The Wolvar##13927
		..accept Home Of The Bear-Men##13930
		..accept The Bronze Dragonshrine##13934
		..accept Playmates!##13951 
	step
		goto Grizzly Hills,50.8,42.8
		.' Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.' Take Kekek to visit Grizzlemaw |q 13930/1
	step
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.talk Wolvar Orphan##33532
		..turnin Home Of The Bear-Men##13930
	step
		goto Dragonblight,72.5,36.9
		.' Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.' Take Kekek to visit the Bronze Dragonshrine |q 13934/1
	step
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.talk Wolvar Orphan##33532
		..turnin The Bronze Dragonshrine##13934
	step
		goto Dragonblight,45.3,63.3
		.' Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.' Take Kekek to visit Snowfall Glade |q 13951/1
	step
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.talk Wolvar Orphan##33532
		..turnin Playmates!##13951
		..accept The Dragon Queen##13955
		..accept The Mighty Hemet Nesingwary##13957
	step
		goto Dragonblight,59.8,54.7
		.' Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.' Take Kekek to visit Alexstrasza the Life-Binder |q 13955/1 |tip Alexstrasza the Life-Binder is at the top of Wyrmrest Temple.
	step
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.talk Wolvar Orphan##33532
		..turnin The Dragon Queen##13955
	step
		goto Sholazar Basin,27.1,58.7
		.' Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.' Take Kekek to visit Hemet Nesingwary |q 13957/1
	step
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.talk Wolvar Orphan##33532
		..turnin The Mighty Hemet Nesingwary##13957	
		..accept A Trip To The Wonderworks##13938
	step
		|fly Dalaran
	step
		goto Dalaran,44.9,45.6
		.talk Jepetto Joybuzz##29478
		.buy 1 Small Paper Zeppelin##46693
	step
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.' Use your Small Paper Zeppelin on your Wolvar Orphan |use Small Paper Zeppelin##46693
		.' Throw the Small Paper Zeppelin to Kekek |q 13938/1
	step
		'Use your Wolvar Orphan Whistle to summon your Wolvar Orphan |use Wolvar Orphan Whistle##46396
		.talk Wolvar Orphan##33532
		..turnin A Trip To The Wonderworks##13938
		..accept Back To The Orphanage##13960
	step
		goto Dalaran,49.4,63.2
		.talk Orphan Matron Aria##34365
		..turnin Back To The Orphanage##13960 |tip You will receive a Curious Wolvar Pup pet companion in the mail.
]])
ZygorGuidesViewer:RegisterInclude("H_Children's_Week_Achievements",[[
	step
		goto Orgrimmar,70.9,25.6
		.talk Orphan Matron Battlewail##14451
		..' Ask her for another Orphan Whistle |collect 1 Orcish Orphan Whistle##18597
	step
		'Complete any 5 daily quests of your choice: |tip Make sure your orphan is standing next to you when turning in the daily quests, or you won't get credit for this achievement.
		.' Get the Daily Chores Achievement |achieve 1789
	step
		goto Orgrimmar,52.2,69.0
		.talk Alowicious Czervik##14480
		..buy 1 Tigule and Foror's Strawberry Ice Cream##7228 |achieve 1788
	step
		'Purchase the follow items from the Auction House, or use your Cooking ability to create them, if you'd like:
		.collect 1 Tasty Cupcake##43490 |achieve 1788
		.collect 1 Delicious Chocolate Cake##33924 |achieve 1788
	step
		goto Dalaran,51.2,29.1
		.talk Aimee##29548
		..buy 1 Red Velvet Cupcake##42429 |achieve 1788
		..buy 1 Lovely Cake##42438 |achieve 1788
		..buy 1 Dalaran Doughnut##42430 |achieve 1788
		..buy 1 Dalaran Brownie##42431 |achieve 1788
	step
		'Use your Lovely Cake in your bags to place a cake on the ground |use Lovely Cake##42438
		.' Click the Lovely Cake
		.collect 1 Lovely Cake Slice##42434 |achieve 1788
	step
		'Use whichever Orphan Whistle you currently have to summon your Orphan, so that the Orphan is standing next to you:
		.' Eat Tigule and Foror's Strawberry Ice Cream |achieve 1788/1 |use Tigule and Foror's Strawberry Ice Cream##7228
		.' Eat Tasty Cupcake |achieve 1788/2 |use Tasty Cupcake##43490
		.' Eat Red Velvet Cupcake |achieve 1788/3 |use Red Velvet Cupcake##42429
		.' Eat Delicious Chocolate Cake |achieve 1788/4 |use Delicious Chocolate Cake##33924
		.' Eat Lovely Cake Slice |achieve 1788/5 |use Lovely Cake Slice##42434
		.' Eat Dalaran Brownie |achieve 1788/6 |use Dalaran Brownie##42431
		.' Eat Dalaran Doughnut |achieve 1788/7 |use Dalaran Doughnut##42430
	step
		'Use your Hearthstone while your Orphan is standing next to you |use Hearthstone##6948
		.' Get the Home Alone Achievement |achieve 1791
	step
		'The following achievements are a little more dynamic, so we cannot walk you step-by-step through getting them. 
		|confirm
	step
		'Find a group, run the Utgarde Pinnacle dungeon, and defeat King Ymiron |tip Make sure your Orphan is standing next to you when you defeat King Ymiron, or else you won't get credit for the achievement.
		.' Get the Hail To The King, Baby Achievement |achieve 1790
	step
		'Enter the Eye of the Storm battleground and capture the flag |tip Make sure your Orphan is standing next to you when you capture the flag, or else you won't get credit for the achievement.
		.' Capture the flag in Eye of the Storm |achieve 1786/1
	step
		'Enter the Alterac Valley battleground and assault a tower |tip Make sure your Orphan is standing next to you when you assault the tower, or else you won't get credit for the achievement.
		.' Assault a tower in Alterac Valley |achieve 1786/2
	step
		'Enter the Arathi Basin battleground and assault a flag |tip Make sure your Orphan is standing next to you when you assault the flag, or else you won't get credit for the achievement.
		.' Assault a flag in Arathi Basin |achieve 1786/3
	step
		'Enter the Warsong Gulch battleground and return a fallen flag |tip Make sure your Orphan is standing next to you when you return the fallen flag, or else you won't get credit for the achievement.
		.' Return a fallen flag in Warsong Gulch |achieve 1786/4
	step
		'Congratulations, you do it For The Children! |achieve 1793/1 
]])
-- WINTERS VEIL --

ZygorGuidesViewer:RegisterInclude("H_Winterveil_Quests",[[
	step
		goto Orgrimmar,52.7,77.3
		.talk Kaymard Copperpinch##13418
		..accept Great-father Winter is Here!##6961
		..accept You're a Mean One...##6983 |daily
	step
		goto 49.6,78.0
		.talk Great-father Winter##13445
		..turnin Great-father Winter is Here!##6961
		..accept Treats for Great-father Winter##6962
	step
		goto 51.0,71.0
		.talk Furmund##9550
		..accept The Reason for the Season##6964
	step
		goto 56.1,61.7
		.talk Arugi##46709
		.' Learn the Apprentice Cooking skill.
		|only if skill("Cooking")<=1
	step
		goto 39.5,47.3
		.talk Sagorne Creststrider##13417
		..turnin The Reason for the Season##6964
		..accept The Feast of Winter Veil##7061
	step
		goto 52.5,76.8
		.talk Penney Copperpinch##13420
		.buy 1 Recipe: Gingerbread Cookie##17200 |n
		.learn Gingerbread Cookie##21143
		.' Click the Recipe: Gingerbread Cookie recipe in your bags |use Recipe: Gingerbread Cookie##17200
		.' Learn the Gingerbread Cookie recipe
		.buy 5 Holiday Spices##17194 |q 6962
	step
		'Buy 5 Small Eggs from the Auction House: |tip You can also farm these from mobs.
		.collect 5 Small Egg##6889 |q 6962
	step
		goto 53.8,84.7
		.create Gingerbread Cookie##21143,Cooking,5 total |q 6962/1
	step
		goto 53.6,78.8
		.talk Innkeeper Gryshka##6929
		.buy Ice Cold Milk##1179 |future |q 6962
	step
		goto 53.6,78.8
		.talk Innkeeper Gryshka##6929
		.home Orgrimmar
	step
		goto 49.6,78.0
		.talk Great-father Winter##13445
		..turnin Treats for Great-father Winter##6962
	step
		#include "rideto_tirisfal"
	step
		|fly Tarren Mill
	step
		goto Hillsbrad Foothills,42.3,41.1
		.talk Strange Snowman##13636
		..accept You're a Mean One...##6983
	step
		goto Hillsbrad Foothills,43.6,39.0
		.from The Abominable Greench##13602 |tip This will require a group to kill, but you do not have to be in a party.
		.' Free Metzen the Reindeer |q 6983/1
		.get Stolen Treats |q 6983/2 |tip You can pick this up if someone has killed The Abominable Grinch recently.
	step
		|fly Brill
	step
		#include "rideto_org"
	step
		|fly Thunder Bluff
	step
		goto Thunder Bluff,60.3,51.7
		.talk Baine Bloodhoof##36648
		..turnin The Feast of Winter Veil##7061
	step
		'Hearth to Orgrimmar |goto Orgrimmar |use Hearthstone##6948 |noway |c
	step
		goto Orgrimmar,52.6,77.4
		.talk Kaymard Copperpinch##13418
		..turnin You're a Mean One...##6983
		..accept A Smokywood Pastures' Thank You!##6984
	step
		goto 49.6,78.0
		.talk Great-father Winter##13445
		..turnin A Smokywood Pastures' Thank You!##6984	
]])

ZygorGuidesViewer:RegisterInclude("H_Winterveil_Achievements",[[
	step
		goto Orgrimmar,54.5,77.8
		.' Kiss a Winter Reveler every hour |script DoEmote("KISS") |tip You can only use this once per hour. The items you get are random.
		.collect 10 Handful of Snowflakes##34191 |n
		.collect 3 Mistletoe##21519 |n
		.collect 1 Preserved Holly##21213 |n
		|confirm always
	step
		'Use a Handful of Snowflakes on the following race/class combinations |use Handful of Snowflakes##34191 |tip The best place to complete this is in major cities, but it can be done anywhere in the world.
		.' You can get more snowflakes by using /kiss on Winter Revelers at [54.5,77.8]
		.' Orc Death Knight |achieve 1687/1
		.' Human Warrior |achieve 1687/2
		.' Tauren Shaman |achieve 1687/3
		.' Night Elf Druid |achieve 1687/4
		.' Undead Rogue |achieve 1687/5
		.' Troll Hunter |achieve 1687/6
		.' Gnome Mage |achieve 1687/7
		.' Dwarf Paladin |achieve 1687/8
		.' Blood Elf Warlock |achieve 1687/9
		.' Draenei Priest |achieve 1687/10
	step
		'Use the Cooking profession to create Egg Nog and Hot Apple Cider
		.' You can get the recipes for these items from Penney Copperpinch at [52.5,76.8]
		.create Egg Nog##21144,Cooking,1 total |achieve 1688/2
		.create 1 Hot Apple Cider##45022,Cooking,1 total |achieve 1688/3 |tip Requires a cooking skill of 325
	step
		'Use the Tailoring profession or pay a tailor to create Green Winter Clothes
		.' You can buy the pattern from Penney Copperpinch at [52.5,76.8]
		.collect Green Winter Clothes##34087 |future |achieve 277 |or
		.' or
		.collect Red Winter Clothes##34085 |future |achieve 277 |or
	step
		'Use the Leatherworking profession or pay a leatherworker to create Winter Boots
		.' You can buy the pattern from Penney Copperpinch at [52.5,76.8]
		.collect Winter Boots##34086 |future |achieve 277
	step
		.' The Winter Hat will drop from any of these dungeons
		.' _Deadmines (Heroic)_ - Admiral Ripsnarl
		.' _The Stone Core (Normal + Heroic)_ - High Priestess Azil
		.' -Blackrock Caverns (Normal + Heroic)_ - Corla, Herald of Twilight
		.' _Shadowfang Keep (Heroic)_ - Lord Godfrey
		.' _Grim Batol (Normal + Heroic)_ - Drahga Shadowburner
		.collect 1 Green Winter Hat##21525 |future |achieve 277 |or
		.' or
		.collect 1 Red Winter Hat##21524 |future |achieve 277 |or
	step
		'Get the Smokywood Pastures Sampler from your mailbox |tip It should arrive within 24 hours after completing the Feast of Winter Veil quest section of this guide.
		.' Click the Smokywood Pastures Sampler in your bag |use Smokywood Pastures Sampler##17685
		.collect 1 Graccu's Mince Meat Fruitcake##21215 |future |achieve 277
		.' Equip the Green Winter Clothes |equipped Green Winter Clothes##34087 |use Green Winter Clothes##34087 |future |achieve 277
		.' or
		.' Equip the Red Winter Clothes |equipped Red Winter Clothes##34085 |use Red Winter Clothes##34085 |future |achieve 277
		.' Equip the Winter Boots |equipped  Winter Boots##34086 |use Winter Boots##34086 |future |achieve 277
		.' Equip the Green Winter Hat |equipped Winter Hat##21525 |use Winter Hat##21525 |future |achieve 277
		.' or
		.' Equip the Red Winter Hat |equipped Red Winter Hat##21524 |use Red Winter Hat##21524 |future |achieve 277
		.' During the Feast of Winter Veil, wear 3 pieces of winter clothing and eat Graccu's Mince Meat Fruitcake. |achieve 277 |use Graccu's Mince Meat Fruitcake##21215
	step
		goto Orgrimmar,50.2,62.1
		.' Use the Winter Wondervolt machine to turn into a Little Helper. If you don't have the buff active while killing players, you won't get credit.
		.' Do any type of PvP of your choice |tip You must be killing players that give you honor.
		.' Earn 50 honorable kills as a Little Helper from the Winter Wondervolt machine |achieve 252
	step
		'Make sure you have the following in your bags:
		.collect 3 Mistletoe##21519 |future |achieve 1282
		.collect 1 Preserved Holly##21213 |future |achieve 1282
	step
		goto 52.5,76.8
		.talk Penney Copperpinch##13420
		.buy 1 Snowball##17202 |future |achieve 259
	step
		goto 53.6,78.8
		.talk Innkeeper Gryshka##6929
		.home Orgrimmar
	step
		|fly Thunder Bluff
	step
		goto Thunder Bluff,60.3,51.7
		.' Use a snowball on Baine Bloodhoof |use Snowball##17202 |n
		.' Throw a snowball at Baine Bloodhoof during the Feast of Winter Veil |achieve 259
	step
		goto 47.0,49.8
		.talk Tal##2995
		.' Fly to Orgrimmar |goto Orgrimmar |noway |c
	step
		#include "rideto_tirisfal"
	step
		'Go south into Undercity |goto Undercity |noway |c
	step
		goto Undercity,50.8,21.7
		.' Use your Mistletoe on Brother Malach |use Mistletoe##21519 |modelnpc 5661
		.' Use Mistletoe on Brother Malach in the Undercity |achieve 1685/1
	step
		.' The following achievements require a level 70 or higher character.
		|confirm
	step
		goto 85.3,17.1 |n
		.' Click the portal to the Blasted Lands |goto Blasted Lands |noway |c
	step
		'Go into the huge green portal to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
	//UNLOCK DAILIES
	step
		goto Blade's Edge Mountains,28.7,57.4
		.talk Chu'a'lor##23233
		..accept The Trouble Below##11057
		..accept The Crystals##11025
	step
		goto 29.2,53.7
		.from Apexis Flayer##22175+
		.get 5 Apexis Shard |q 11025/1
	step
		goto 28.8,57.4
		.talk Chu'a'lor##23233
		..turnin The Crystals##11025
		..accept An Apexis Relic##11058
	step
		goto 28.4,57.6
		.talk Torkus##23316
		..accept Our Boy Wants To Be A Skyguard Ranger##11030
	step
		goto 33.1,52.3
		.from Gan'arg Analyzer##23386+
		.collect Apexis Shard##32569 |n
		.' Click an Apexis Relic |tip It looks like a small multi-colored crystal floating in the air.
		..' Insert an Apexis Shard to begin.
		.' Stand on the white globe and watch as the crystal floating above you casts a beam on the surrounding clusters
		.' Click the clusters in the same color pattern as the crystal |tip You must do this eight times. If you mess up you will be given a few chances to correct yourself before you have to start the process over.
		.' Attain the Apexis Emanations |q 11058/1
	step
		goto 51.1,15.6
		.from Bash'ir Arcanist##22243+, Bash'ir Spell-Thief##22242+, Bash'ir Raider##22241+
		.collect 10 Apexis Shard##32569 
	step
		goto 32.8,40.5
		.' Click the Fel Crystalforge |tip It looks like a big metal machine with green smoke coming out of it.
		.' Purchase 1 Unstable Flask of the Beast
		.get Unstable Flask of the Beast |q 11030/1
	step
		goto 28.8,57.4
		.talk Chu'a'lor##23233
		..turnin An Apexis Relic##11058
		..accept The Relic's Emanation##11080 |daily
	step
		goto 28.4,57.7
		.talk Torkus##23316
		..turnin Our Boy Wants To Be A Skyguard Ranger##11030
	step
		goto 27.7,68.1
		.from Gan'arg Analyzer##23386+
		.collect Apexis Shard##32569 |n
		.' Click an Apexis Relic |tip It looks like a small multi-colored crystal floating in the air.
		.' Insert an Apexis Shard to begin.
		.' Stand on the white globe and watch as the crystal floating above you casts a beam on the surrounding clusters
		.' Click the clusters in the same color pattern as the crystal |tip You must do this six times. If you mess up you will be given a few chances to correct yourself before you have to start the process over.
		.' Attain the Apexis Vibrations |q 11080/1
	step
		goto 28.8,57.4
		.talk Chu'a'lor##23233
		..turnin The Relic's Emanation##11080
		..accept The Skyguard Outpost##11062
	step
		goto 27.4,52.7
		.talk Sky Commander Keller##23334
		..turnin The Skyguard Outpost##11062
	//END UNLOCKING DAILIES
	step
		goto 27.6,52.9
		.talk Sky Sergeant Vanderlip##23120
		..accept Bombing Run##11010
	step
		goto 36.8,39.4
		.' While on your flying mount, use the Skyguard Bombs on Fel Cannonball Stacks |use Skyguard Bombs##32456
		.' Destroy 15 Fel Cannonball Stacks |q 11010/1
	step
		goto 27.6,52.9
		.talk Sky Sergeant Vanderlip##23120
		..turnin Bombing Run##11010
		..accept Bomb Them Again!##11023 |daily
	step
		'Use Preserved Holly while riding your flying mount |havebuff Interface\Icons\INV_Misc_Plant_03 |use Preserved Holly##21213
	step
		goto 36.8,39.4
		.' While on riding the Reindeer Mount, use the Skyguard Bombs on Fel Cannonball Stacks |use Skyguard Bombs##32456
		.' Destroy 15 Fel Cannonball Stacks |q 11023/1
	step
		goto 27.6,52.9
		.talk Sky Sergeant Vanderlip##23120
		..turnin Bomb Them Again!##11023 |daily |tip You have to be on your mount when turning in the quest.
		.' Complete the Bomb Them Again! quest while mounted on a flying reindeer during the Feast of Winter Veil |achieve 1282
	step
		'Hearth to Orgrimmar |goto Orgrimmar |use Hearthstone##6948 |noway |c
	//DALARAN
	step
		#include "rideto_borean"
	step
		goto 40.2,55.0
		.' Use your Mistletoe on Durkot Wolfbrother |use Mistletoe##21519
		.' Use Mistletoe on Durkot Wolfbrother in Warsong Hold |achieve 1685/2
		'|modelnpc 26044
	step
		|fly Argent Tournament Grounds
	step
		'Orgrim's Hammer flies in a triangular pattern using these points:
		.' Point 1: [60.6,34.9]
		.' Point 2: [68.0,52.5]
		.' Point 3: [68.9,27.0]
		.'Find Orgrim's Hammer flying around in the sky |tip On you world map, it looks like a ship icon with 2 long red-ish ballons on either side of it.
		.' Use your Mistletoe on Brother Keltan |use Mistletoe##21519 |tip He is a blood elf with gray hair and walks all around the Orgrim's Hammer airship.
		.' Use Mistletoe on Brother Keltan in Icecrown |achieve 1685/3
		'|modelnpc 31261
	 step
		|fly Dalaran
	step
		goto Dalaran,50.3,63.2
		.' Get the Winter Veil Disguise Kit from your mailbox |tip It should arrive within 24 hours after completing the Feast of Winter Veil quest section of this guide.
		.' Equip the Winter Veil Disguise Kit in your bag |use Winter Veil Disguise Kit##17712
		.' Dance with another player wearing their snowman costume |script DoEmote("DANCE")
		.' During the Feast of Winter Veil, use your Winter Veil Disguise kit to become a snowman and then dance with another snowman in Dalaran |achieve 1690
	step
		goto Orgrimmar,49.6,78.1
		.' This step can only be completed by logging into the server on December 25th.
		.' Click a present underneath the tree.
		.' Open one of the presents underneath the Winter Veil tree once they are available. |achieve 1689
		.' Earn the Achievement and Title Merrymaker! |achieve 1691
	step
		.' Click the presents under the tree on _December 25th_ and receive 
		.collect Gaudy Winter Veil Sweater##70923 |future |achieve 5854
		.' Go to Stormwind, use your Sweater to sing carol's |achieve 5854/4
		.' Go to Ironforge, use your Sweater to sing carol's |achieve 5854/3
		.' Go to The Exodar, use your Sweater to sing carol's |achieve 5854/2
		.' Go to Darnassus, use your Sweater to sing carol's |achieve 5854/1
	step
		.' Click the presents under the tree on _December 25th_ and receive 
		.' Crashin' Thrashin' Racer. 
		.' Gain 25 crashes with your racer |achieve 1295
]])


-- HALLOWS END --
ZygorGuidesViewer:RegisterInclude("Hallows_End_Quests_Horde",[[
	step
		goto Undercity,63.3,47.6
		.talk Forsaken Commoner##19178
		..accept A Season for Celebration##29400
		..accept Masked Orphan Matron##11357 |tip You may not be able to accept this quest.
	step
		goto Undercity,67.4,6.6
		.talk Spoops##15309
		..accept Hallow's End Treats for Spoops!##8312
	step
		goto Undercity,67.7,37.9
		.talk Innkeeper Norman##6741
		..accept Chicken Clucking for a Mint##8354
	step
		goto 67.7,37.9
		.' While targeting Innkeeper Norman:
		.' Cluck like a Chicken for Innkeeper Norman |script DoEmote("CHICKEN") |q 8354/1
	step
		goto 67.7,37.9
		.talk Innkeeper Norman##6741
		..turnin Chicken Clucking for a Mint##8354
	step
		goto Undercity,67.4,13.1
		.talk Darkcaller Yanka##15197
		..turnin A Season for Celebration##29400
	step
		goto 68.8,7.9
		.talk Candace Fenlow##53763
		..accept A Friend in Need##29431
	step
		goto Orgrimmar,32.9,65.1
		.talk Kali Remik##11814
		..accept Incoming Gumdrop##8358
	step
		goto 32.9,65.1
		.' While targeting Kali Remik:
		.' Make Train sounds for Kali Remik |script DoEmote("TRAIN") |q 8358/1
	step
		goto 32.9,65.1
		.talk Kali Remik##11814
		..turnin Incoming Gumdrop##8358
	step
		goto 53.6,78.8
		.talk Innkeeper Gryshka##6929
		..accept Flexing for Nougat##8359
	step
		goto 53.6,78.8
		.' While targeting Innkeeper Gryshka:
		.' Flex for Innkeeper Gryshka |script DoEmote("FLEX") |q 8359/1
	step
		goto 53.6,78.8
		.talk Innkeeper Gryshka##6929
		..turnin Flexing for Nougat##8359
	step
		goto Orgrimmar,54.4,77.6
		.talk Edgar Goodwin##54141
		..turnin A Friend in Need##29431
		..accept Missing Heirlooms##29415
	step
		goto Durotar,57.4,9.0
		.talk Hired Courier##54142
		..turnin Missing Heirlooms##29415
		..accept Fencing the Goods##29416
	step
		goto Orgrimmar,54.1,73.4
		.talk Auctioneer Drezmit##44866
		.' Follow the Thief's Trail and Question Auctioneer Drezmit |q 29416/1
	step
		goto 54.1,73.4
		.talk Auctioneer Drezmit##44866
		..turnin Fencing the Goods##29416
		..accept Shopping Around##29425
	step
		  goto 58.0,48.0
		.' Listen to the Dialogue
		.' Investigate Droffers and Son |q 29425/1
	step
		goto 58.0,48.4
		.talk Delian Sunshade##54146
		..turnin Shopping Around##29425
		..accept Taking Precautions##29426
	step
		goto 46.0,49.3
		.click Blood Nettle##10249
		.get 5 Blood Nettle |q 29426/3
		.' You can find more Blood Nettles here: [43.6,48.8]
	step
		goto 55.2,45.9
		.talk Kor'geld##3348
		.buy 5 Crystal Vial##3371 |q 29426/2
	step
		#include "auctioneer"
		.buy 2 Strange Dust##10940 |q 29426/1
	step
		goto 58.0,48.4
		.talk Delian Sunshade##54146
		..turnin Taking Precautions##29426
		..accept The Collector's Agent##29427
	step
		goto Thunder Bluff 45.8,64.7
		.talk Innkeeper Pala##6746
		..accept Dancing for Marzipan##8360
	step
		goto 45.8,64.7
		.' While targeting Innkeeper Pala:
		.' Dance for Innkeeper Pala |script DoEmote("DANCE") |q 8360/1
	step
		goto 45.8,64.7
		.talk Innkeeper Pala##6746
		..turnin Dancing for Marzipan##8360
	step
		goto Durotar,52.6,41.2
		.talk Masked Orphan Matron##23973
		..turnin Masked Orphan Matron##11357
		..accept Fire Training##11361
	step
		goto 52.5,41.3
		.' Click the Water Barrel |tip It looks like a huge bucket of water.
		.collect Water Bucket##32971 |q 11361
	step
		goto 49.3,43.5
		.' Use your Water Bucket on the burning scarecrows |use Water Bucket##32971
		.' Fight 5 Fires |q 11361/1
		.' Collect more Water Buckets from the Water Barrel at [49.2,44.5]
	step
		goto 52.6,41.2
		.talk Masked Orphan Matron##23973
		..' You will only be able to accept 1 of the 2 daily quests
		..turnin Fire Training##11361
		..accept Stop the Fires!##11219 |or
		..accept "Let the Fires Come!"##12139|or
	step
		goto 52.5,41.3
		.' Click the Water Barrel |tip It looks like a huge bucket of water.
		.collect Water Bucket##32971 |q 11219
	step
		goto 52.5,41.3
		.' Click the Water Barrel |tip It looks like a huge bucket of water.
		.collect Water Bucket##32971 |q 12139
	step
		goto 52.2,42.6
		.' Use your Water Bucket on the fires all around this area |use Water Bucket##32971
		.' Put Out the Fires |q 11219/1 |tip You will need a group of people to complete this quest.  It is best to do this quest at peak hours.
		.' Collect more Water Buckets from the Water Barrel at [52.5,41.3]
	step
		goto 52.2,42.6
		.' Wait until the fires appear on the buildings in Razor Hill
		.' Use your Water Bucket on the fires all around this area |use Water Bucket##32971
		.' Put Out the Fires |q 12139/1 |tip You will need a group of people to complete this quest.  It is best to do this quest at peak hours.
		.' Collect more Water Buckets from the Water Barrel at [52.5,41.3]
	step
		goto 52.6,42.4
		.' Click the Large Jack-o'-Lantern |tip It's a burning pumpkin laying in the road.
		..accept Smash the Pumpkin##12155
	step
		goto 52.6,41.2
		.talk Masked Orphan Matron##23973
		..' You will only be able to accept 1 of the 2 daily quests
		..turnin Stop the Fires!##11219 |or
		..turnin "Let the Fires Come!"##12139 |or
		..turnin Smash the Pumpkin##12155
	step
		goto Undercity,67.4,6.6
		.talk Spoops##15309
		..turnin Hallow's End Treats for Spoops!##8312
	step
		goto Tirisfal Glades,65.5,75.1
		.' This is in the Ruins, not below in Undercity
		.' Disrupt the Meeting |q 29427/1 |tip You will have to fight a Void Walkers here.
	step
		goto 65.8,74.8
		.click Stolen Crate##335
		..turnin The Collector's Agent##29427
		..accept What Now?##29428
	step
		goto Orgrimmar,54.4,77.6
		.talk Edgar Goodwin##54141
		..turnin What Now?##29428
	step
		goto 54.5,77.5
		.click Edgar's Crate##335
		..turnin The Creepy Crate##29429
		.' You will receive _Creepy Crate_ companion
		.collect 1 Creepy Crate##71076 |use Creepy Crate##71076 |n
		.learnpet Creepy Crate##54128
]])

ZygorGuidesViewer:RegisterInclude("Hallows_End_Dailies_Horde",[[
	step
		goto Durotar,52.6,41.2
		.talk Masked Orphan Matron##23973
		..' You will only be able to accept 1 of the 2 daily quests
		..accept Stop the Fires!##11219 |daily |or
		..accept "Let the Fires Come!"##12139 |daily |or
	step
		goto 52.5,41.3
		.' Click the Water Barrel |tip It looks like a huge bucket of water.
		.collect Water Bucket##32971 |q 11219
	step
		goto 52.2,42.6
		.' Use your Water Bucket on the fires all around this area |use Water Bucket##32971
		.' Put Out the Fires |q 11219/1 |tip You will need a group of people to complete this quest.  It is best to do this quest at peak hours.
		.' Collect more Water Buckets from the Water Barrel at [52.5,41.3]
	step
		goto 52.5,41.3
		.' Click the Water Barrel |tip It looks like a huge bucket of water.
		.collect Water Bucket##32971 |q 12139
	step
		goto 52.2,42.6
		.' Wait until the fires appear on the buildings in Razor Hill
		.' Use your Water Bucket on the fires all around this area |use Water Bucket##32971
		.' Put Out the Fires |q 12139/1 |tip You will need a group of people to complete this quest.  It is best to do this quest at peak hours.
		.' Collect more Water Buckets from the Water Barrel at [52.5,41.3]
	step
		goto 52.6,42.4
		.' Click the Large Jack-o'-Lantern |tip It's a burning pumpkin laying in the road.
		..accept Smash the Pumpkin##12155 |daily
	step
		goto 52.6,41.2
		.talk Masked Orphan Matron##23973
		..' You will only be able to accept 1 of the 2 daily quests
		..turnin Stop the Fires!##11219
		..turnin "Let the Fires Come!"##12139
		..turnin Smash the Pumpkin##12155
	step
		goto Undercity,67.4,13.0
		.talk Darkcaller Yanka##15197
		..accept A Time to Build Up##29376 |daily
		..accept A Time to Break Down##29377 |daily
	step
		goto 67.7,14.5
		.click Bonfire##200
		.' Use the Bonfire |q 29376/1
		.click Wickerman Ashes##06421
		.' Use the Wickerman Ashes |q 29376/2
	step
		goto 67.3,13.1
		.talk Darkcaller Yanka##15197
		..turnin A Time to Build Up##29376
	step
		goto 68.8,7.8
		.talk Candace Fenlow##53763
		..accept Clean Up in Undercity##29375 |daily
		..accept Stink Bombs Away!##29374 |daily  
	step
		'All around Undercity
		Run to the Orange Smoke and clean up the stink bombs |use Arcane Cleanser##70727
		.' Remove 10 Stink Bombs |q 29375/1
	step
		goto 68.8,7.9
		.talk Candace Fenlow##53763
		..turnin Clean Up in Undercity##29375
	step
		goto 67.5,9.2
		.talk Crina Fenlow##53764
		.' I'm ready to attack Stormwind! |invehicle
	step
		.' Use the _Toss Stink Bomb_ ability on your action bar all around _Stormwind_
		.' Drop 25 Stink Bombs |q 29374/1
		.' Click the _Return Home_ button on your action bar |outvehicle
	step
		goto 68.8,7.8
		.talk Candace Fenlow##53763
		..turnin Stink Bombs Away!##29374
	step
		goto Elwynn Forest,33.6,48.2
		.' Use the Dousing Agent in your Bags on the _Wickerman_ when you fly in front of _Stormwind_ |use Dousing Agent##68647
		.' Douse the Alliance's Wickerman |q 29377/1
	step
		goto Undercity,67.4,13.0
		.talk Darkcaller Yanka##15197
		..turnin A Time to Break Down##29377
	step
		'Congratulations,  you have earned the Achievement _Rotten Hollow_ |achieve 1041
]])

ZygorGuidesViewer:RegisterInclude("Hallows_End_Achievements_Horde",[[
	step
		goto Durotar,51.5,41.6
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Durotar, Razor Hill |achieve 965/8
	step
		goto Orgrimmar,53.9,79.0
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Orgrimmar, Valley of Strength |achieve 965/20
	step
		goto Azshara,57.1,50.2
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Azshara, Bilgewater Harbor |achieve 965/5
	step
		goto Winterspring,59.8,51.2
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Winterspring, Everlook |achieve 965/30
	step
		goto Felwood,44.7,29.0
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Felwood, Whisperwind Grove |achieve 965/11
	step
		goto Ashenvale,74.0,60.6
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Ashenvale, Splintertree Post |achieve 965/3
	step
		 goto Ashenvale,50.2,67.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Ashenvale, Silverwind Refuge |achieve 965/2
	step
		goto Ashenvale,38.6,42.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Ashenvale, Hellscream's Watch |achieve 965/1
	step
		 goto Ashenvale,13.0,34.1
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Ashenvale, Zoram'gar Outpost |achieve 965/4
	step
		goto Stonetalon Mountains,50.4,63.8
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Stonetalon Mountains, Sun Rock Retreat |achieve 965/25
	step
		goto Stonetalon Mountains,66.5,64.2
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Stonetalon Mountains, Krom'gar Fortress |achieve 965/24
	step
		goto Northern Barrens,62.5,16.6
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Stonetalon Mountains, Nozzlepot's Outpost |achieve 965/18
	step
		goto Northern Barrens,56.2,40.0
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Stonetalon Mountains, Grol'dom Farm |achieve 965/17 |use Handful of Treats##37586
	step
		goto Northern Barrens,49.5,57.9 
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Barrens, The Crossroads |achieve 965/16
	step
		  goto Northern Barrens,67.4,74.7
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Barrens, Ratchet |achieve 965/19
	step
		goto Thunder Bluff,45.6,65.0
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Thunder Bluff, Lower Rise |achieve 965/28
	step
		goto Mulgore,46.6,61.0
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Mulgore, Bloodhoof Village |achieve 965/15
	step
		goto Southern Barrens,40.7,69.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Southern Barrens, Desolation Hold |achieve 965/22
	step
		goto Southern Barrens,39.2,20.0
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Southern Barrens, Hunter's Hill |achieve 965/23
	step
		goto Desolace,56.7,50.1
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Desolace, Karnum's Glade |achieve 965/6
	step
		goto Desolace,24.1,68.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Desolace, Shadowprey Village |achieve 965/7
	step
		goto Feralas,41.5,15.7
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Feralas, Camp Ataya |achieve 965/12
	step
		goto Feralas,52.0,47.6
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Feralas, Stonemaul Hold |achieve 965/14
	step
		goto Feralas,74.8,45.1
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Desolace, Camp Mojache |achieve 965/13
	step
		goto Silithus,55.5,36.8
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Silithus, Cenarion Hold |achieve 965/21
	step
		goto Un'Goro Crater,55.3,62.1
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Un'Goro Crater, Marshal's Stand |achieve 965/29
	step
		goto Tanaris,52.6,27.1
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Tanaris, Gadgetzan |achieve 965/27
	step
		 goto Tanaris,55.8,60.9
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Tanaris, Bootlegger Outpost |achieve 965/26
	step
		goto Dustwallow Marsh,36.8,32.4
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Dustwallow Marsh, Brackenwall Village |achieve 965/9
	step
		goto 41.9,74.1
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Dustwallow Marsh, Mudsprocket |achieve 965/10
	step
		goto The Cape of Stranglethorn,40.9,74.0
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in The Cape of Stranglethorn, Booty Bay |achieve 967/5
	step
		goto The Cape of Stranglethorn,35.0,27.2
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in The Cape of Stranglethorn, Hardwrench Hideaway |achieve 967/6
	step
		goto Northern Stranglethorn,37.4,51.8
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Stranglethorn Vale, Grom'gol Base Camp |achieve 967/15
	step
		goto Swamp of Sorrows,46.9,56.9
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Swamp of Sorrows, Stonard |achieve 967/22
	step
		goto Swamp of Sorrows,71.6,13.8
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Swamp of Sorrows, Bogpaddle |achieve 967/21
	step
		goto Badlands,18.4,42.7
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Badlands, New Kargath |achieve 967/3
	step
		goto Badlands,65.8,35.6
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Badlands, Fuselight |achieve 967/2
	step
		goto Searing Gorge,39.4,66.1
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Searing Gorge, Iron Summit |achieve 967/16
	step
		goto Arathi Highlands,69.0,33.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Arathi Highlands, Hammerfall |achieve 967/1
	step
		goto The Hinterlands,78.2,81.5
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in The Hinterlands, Revantusk Village |achieve 967/14
	step
		goto The Hinterlands,31.8,57.9
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Hinterlands, Hiri'watha Research Station |achieve 967/13
	step
		goto Eastern Plaguelands,75.6,52.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Eastern Plaguelands, Light's Hope Chapel |achieve 967/7
	step
		goto Western Plaguelands,48.3,63.8
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Western Plaguelands, Andorhal |achieve 967/26
	step
		goto Ghostlands,48.7,31.9
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Ghostlands, Tranquillien |achieve 967/10
	step
		goto Eversong Woods,43.7,71.0
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Eversong Woods, Fairbreeze Village |achieve 967/8
	step
		goto 48.2,47.9
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Eversong Woods, Falconwing Square |achieve 967/9
	step
		goto Silvermoon City,67.6,72.9
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Silvermoon, The Bazaar |achieve 967/17
	step
		goto 79.4,57.7
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Silvermoon, The Royal Exchange |achieve 967/18
	step
		goto 49.5,14.8
		.click Orb of Translocation##7161
		.' Teleport to Undercity |goto Undercity |noway |c
	step
		goto Undercity,67.8,37.4
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Undercity, The Trade Quarter |achieve 967/25
	step
		goto Tirisfal Glades,61.0,51.4
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Tirisfal Glades, Brill |achieve 967/23
	step
		goto Tirisfal Glades,83.0,72.1
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Tirisfal Glades, The Bulwark |achieve 967/24
	step
		goto Silverpine Forest,44.3,20.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Silverpine Forest, The Forsaken Rear Guard |achieve 967/19
	step
		goto Silverpine Forest,46.5,42.9
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Silverpine Forest, The Sepulcher |achieve 967/20
	step
		goto Hillsbrad Foothills,57.9,47.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Hillsbrad Foothills, Tarren Mill |achieve 967/12
	step
		goto Hillsbrad Foothills,60.3,63.7
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Hillsbrad Foothills, Eastpoint Tower |achieve 967/11
	step
		goto Undercity,85.3,17.1
		.' Click the Portal to Blasted Lands 
		.' Teleport to the Blasted Lands |goto Blasted Lands |noway |c
	step
		goto Blasted Lands,40.4,11.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Blasted Lands, Dreadmaul Hold |achieve 967/4
	step
		goto Blasted Lands,55.0,54.3 |n
		.' Go into the huge green portal to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
	step
		goto Hellfire Peninsula,56.8,37.4
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Hellfire Peninsula, Thrallmar |achieve 968/5
	step
		goto 26.9,59.5
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Hellfire Peninsula, Falcon Watch |achieve 968/4
	step
		goto Shattrath City,56.3,81.9
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Shattrath City, Scryer's Tier |achieve 968/11
		only if rep ('The Scryers')>=Neutral
	step
		goto Shattrath City,28.2,49.1
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Shattrath City, Aldor Rise |achieve 968/11
		only if rep ('The Aldor')>=Neutral
	step
		goto Terokkar Forest,48.7,45.2
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Terokkar Forest, Stonebreaker Hold |achieve 968/12
	step
		goto Shadowmoon Valley,30.3,27.7
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Shadowmoon Valley, Shadowmoon Village |achieve 968/10
	step
		goto 56.4,59.8
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Shadowmoon Valley, Sanctum of the Stars |achieve 968/9
		only if rep ('The Scryers')>=Neutral
	step
		goto 61.0,28.2
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Shadowmoon Valley, Altar of Sha'tar |achieve 968/9
		only if rep ('The Aldor')>=Neutral
	step
		goto Nagrand,56.7,34.5
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Nagrand, Garadar |achieve 968/6
	step
		goto Zangarmarsh,30.6,50.9
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Zangarmarsh, Zabra'jin |achieve 968/13
	step
		goto 78.5,62.9
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Zangarmarsh, Cenarion Refuge |achieve 968/14
	step
		goto Blade's Edge Mountains,76.2,60.4
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Blade's Edge Mountains, Mok'Nathal Village |achieve 968/2
	step
		goto 53.4,55.5
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Blade's Edge Mountains, Thunderlord Stronghold |achieve 968/3
	step
		goto 62.9,38.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Blade's Edge Mountains, Evergrove |achieve 968/1
	step
		goto Netherstorm,32.0,64.4
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Netherstorm, Area 52 |achieve 968/7
	step
		goto 43.3,36.1
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Netherstorm, The Stormspire |achieve 968/8
	step
		goto Borean Tundra 41.8,54.4
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Borean Tundrea, Warsong Hold |achieve 5835/4
	step
		goto Borean Tundra 78.4,49.2
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Borean Tundrea, Unu'pe |achieve 5835/3
	step
		goto Borean Tundra 76.7,37.4
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Borean Tundrea, Taunka'le Village |achieve 5835/2
	step
		goto Borean Tundra 49.7,10.0
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Borean Tundrea, Bor'gorok Outpost |achieve 5835/1
	step
		goto Sholazar Basin 26.6,59.2
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Sholazar Basin, Nesingwary Base Camp |achieve 5835/18
	step
		goto Dragonblight 37.8,46.5
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Dragonblight, Agmar's Hammer |achieve 5835/8
	step
		goto Dragonblight 48.1,74.7
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Dragonblight, Moa'ki Harbor |achieve 5835/9
	step
		goto Dragonblight 76.8,63.2
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Dragonblight, Venomspite |achieve 5835/10
	step
		goto Dragonblight 60.1,53.5
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Dragonblight, Wyrmrest Temple |achieve 5835/11
	step
		goto Dalaran 48.3,41.1
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Dalaran, The Legerdemain Lounge |achieve 5835/5
	step
		goto Dalaran 66.7,29.8
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Dalaran, Sunreaver's Sanctuary |achieve 5835/6
	step
		'Enter The Underbelly here. |goto Dalaran 34.7,45.5 |c
	step
		goto Dalaran/2 38.0,60.1
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Dalaran, The Underbelly |achieve 5835/7
	step
		Exit The Underbelly. |goto Dalaran/1 34.7,45.5 |c
	step
		goto The Storm Peaks 41.1,85.9
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Storm Peaks, K3 |achieve 5835/22
	step
		goto The Storm Peaks 37.1,49.5
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Storm Peaks, Grom'arsh Crash Site |achieve 5835/21
	step
		goto The Storm Peaks 30.9,37.2
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Storm Peaks, Bouldercrag's Refuge |achieve 5835/19
	step
		goto The Storm Peaks 67.6,50.7
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Storm Peaks, Camp Tunka'lo |achieve 5835/20
	step
		goto Zul'Drak 59.3,57.1
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Zul'Drak, Zim'Torga |achieve 5835/24
	step
		goto Zul'Drak 40.8,65.9
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Zul'Drak, The Argent Stand |achieve 5835/23
	step
		goto Grizzly Hills 20.9,64.7
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Grizzly Hills, Conquest Hold |achieve 5835/13
	step
		goto Grizzly Hills 65.4,47.0
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Grizzly Hills, Camp Oneqwah |achieve 5835/12
	step
		goto Howling Fjord 49.5,10.8
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Howling Fjord, Camp Winterhoof |achieve 5835/14
	step
		goto Howling Fjord 79.2,30.6
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Howling Fjord, Vengeance Landing |achieve 5835/17
	step
		goto Howling Fjord 52.1,66.2
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Howling Fjord, New Agamand |achieve 5835/16
	step
		goto Howling Fjord 25.4,59.8
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Howling Fjord, Kamagua |achieve 5835/15
	step
		goto Abyssal Depths 51.3,60.6
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Vashj'ir, Tenebrous Cavern |achieve 5838/13
	step
		goto Shimmering Expanse 51.5,62.4
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Vashj'ir, Legion's Rest |achieve 5838/11
	step
		goto Shimmering Expanse 49.2,41.9
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Vashj'ir, Silver Tide Hollow |achieve 5838/12
	step
		goto Kelp'thar Forest 63.4,60.2
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Vashj'ir, Deepmist Grotto |achieve 5838/10
	step
		goto Deepholm 51.1,50.0
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Deepholm, Temple of Earth |achieve 5838/1
	step
		goto Mount Hyjal 63.0,24.1
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Mount Hyjal, Nordrassil |achieve 5838/3
	step
		goto Mount Hyjal 42.7,45.6
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Mount Hyjal, Shrine of Aviana |achieve 5838/4
	step
		goto Mount Hyjal 18.7,37.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Mount Hyjal, Grove of Aessina |achieve 5838/2
	step
		goto Twilight Highlands 45.1,76.7
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Twilight Highlands, Crushblow |achieve 5838/6
	step
		goto Twilight Highlands 53.4,42.9
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Twilight Highlands, Bloodgulch |achieve 5838/5
	step
		goto Twilight Highlands 75.4,16.5
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Twilight Highlands, The Krazzworks |achieve 5838/7
	step
		goto Uldum 54.7,33.0
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Uldum, Ramkahen |achieve 5838/9
	step
		goto Uldum 26.6,7.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Uldum, Oasis of Vir'sar |achieve 5838/8
	step
		'You must be at least level 90 to complete this step:
		.' Use the Dungeon Finder to queue for The Headless Horseman
		.from Headless Horseman##23682
		.' Complete the Bring Me The Head of... Oh Wait achievement |achieve 255
	step
		'Use your Tricky Treats 5 times in a row quickly |use Tricky Treat##33226 |tip You can get these by killing The Headless Horseman in the previous guide step, or from Hallow's End Candy Buckets.
		.' You will start puking :-)
		.' Complete the Out With It achievement |achieve 288
	step
		goto Undercity 67.7,6.5
		.talk Chub##53757
		.buy Tooth Pick##37604 |n
		.' Use your Tooth Pick |use Tooth Pick##37604
		.' Show off your sparkling smile by using a Tooth Pick |achieve 981
	step
		'Use your Weighted Jack-o'-Lanterns on the following races: |use Weighted Jack-o'-Lantern##34068 |tip You receive Weighted Jack-o'-Lanterns by doing the Hallow's End daily quests.  Make sure the player doesn't already have a jack-o-lantern on their head or you won't get credit.  The best place to complete this is in Dalaran, but it can be done anywhere in the world.
		.' Blood Elf |achieve 291/1
		.' Draenei |achieve 291/2
		.' Dwarf |achieve 291/3
		.' Gnome |achieve 291/4
		.' Goblin |achieve 291/5
		.' Human |achieve 291/6
		.' Night Elf |achieve 291/7
		.' Orc |achieve 291/8
		.' Tauren |achieve 291/9
		.' Troll |achieve 291/10
		.' Undead |achieve 291/11
		.' Worgen |achieve 291/12
	step
		'Have other players use Hallowed Wands on you while in a party to transform into the following:
		.' Transform into a Bat |achieve 283/1
		.' Transform into a Ghost |achieve 283/2
		.' Transform into a Leper Gnome |achieve 283/3
		.' Transform into a Ninja |achieve 283/4
		.' Transform into a Pirate |achieve 283/5
		.' Transform into a Skeleton |achieve 283/6
		.' Transform into a Wisp |achieve 283/7
	step
		goto Undercity 67.7,6.5
		.talk Chub##53757
		.buy 1 Sinister Squashling##33154 |n
		.buy 1 Hallowed Helm##33292 |n
		.' Use the Sinister Squashling |use Sinister Squashling##33154
		.' Obtain a Sinister Squashling pet |achieve 292/1
		.' Obtain a Hallowed Helm |achieve 292/2
	step
		'Use your G.N.E.R.D.S. |use G.N.E.R.D.S.##37583 |tip Use them every 30 minutes while PvPing to keep the buff on.  If you don't have the buff active while killing players, you won't get credit.
		.' Do any type of PvP of your choice |tip You must be killing players that give you honor.
		.' Earn 10 honorable kills while under the influence of the G.N.E.R.D. buff |achieve 1261
	step
		'Congratulations, you are now one of The Hallowed!
]])

ZygorGuidesViewer:RegisterInclude("Hallows_End_Achievements_Horde_Pandaria",[[
	step
		goto The Jade Forest 55.7,24.4
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in The Jade Forest, Sri-La Village |achieve 7602/8
	step
		goto The Jade Forest 41.7,23.2
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in The Jade Forest, Tian Monastery |achieve 7602/9
	step
		goto The Jade Forest 28.5,13.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in The Jade Forest, Honeydew Village |achieve 7602/6
	step
		goto The Jade Forest 28.0,47.4
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in The Jade Forest, Grookin Hill |achieve 7602/5
	step
		goto The Jade Forest 45.8,43.6
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in The Jade Forest, Dawn's Blossom |achieve 7602/3
	step
		goto The Jade Forest 48.1,34.6
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in The Jade Forest, Greenstone Village |achieve 7602/4
	step
		goto The Jade Forest 54.6,63.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in The Jade Forest, Jade Temple Grounds |achieve 7602/7
	step
		goto Krasarang Wilds 75.9,6.9
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Krasarang Wilds, Zhu's Hope |achieve 7602/12
	step
		goto Krasarang Wilds 61.0,25.1
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Krasarang Wilds, Thunder Cleft |achieve 7602/24
	step
		goto Krasarang Wilds 51.4,77.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Krasarang Wilds, Marista |achieve 7602/11
	step
		goto Krasarang Wilds 28.3,50.7
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Krasarang Wilds, Dawnchaser Retreat |achieve 7602/10
	step
		goto Dread Wastes 55.2,71.2
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Dread Wastes, Soggy's Gamble |achieve 7602/2
	step
		goto Dread Wastes 55.9,32.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Dread Wastes, Klaxxi'vess |achieve 7602/1
	step
		goto Townlong Steppes 71.1,57.8
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Candy item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Townlong Steppes, Longying Outpost  |achieve 7602/19
	step
		goto Kun-Lai Summit 72.7,92.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Kun-Lai Summit, Binan Village |achieve 7602/13
	step
		goto Kun-Lai Summit 62.7,80.5
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Kun-Lai Summit, Eastwind Rest |achieve 7602/14
	step
		goto Kun-Lai Summit 57.5,60.0
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Kun-Lai Summit, One Keg |achieve 7602/16
	step
		goto Kun-Lai Summit 64.2,61.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Kun-Lai Summit, The Grummle Bazaar |achieve 7602/15
	step
		goto Kun-Lai Summit 62.5,28.9
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Kun-Lai Summit, Zouchin Village |achieve 7602/17
	step
		goto Shrine of Two Moons/2 58.4,77.3
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Vale of Eternal Blossoms, Shrine of Two Moons |achieve 7602/21
	step
		goto Vale of Eternal Blossoms 35.1,77.7
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Vale of Eternal Blossoms, Mistfall Village |achieve 7602/20
	step
		goto Valley of the Four Winds 19.9,55.8
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Valley of the Four Winds, Stoneplow |achieve 7602/23
	step
		goto Valley of the Four Winds 83.7,20.2
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in Valley of the Four Winds, Pang's Stead |achieve 7602/22
	step
		 goto The Veiled Stair 55.0,72.2
		.click Candy Bucket##6404
		..' Complete the Candy Bucket quest |tip If you cannot complete this quest because of a "Duplicate item found" message, open the Handful of Treats item in your bags and take out the contents. |use Handful of Treats##37586
		.' Visit the Candy Bucket in The Veiled Stair, Tavern in the Mists |achieve 7602/18
]])

-- PILGRIM'S BOUNTY --
ZygorGuidesViewer:RegisterInclude("Pilgrims_Bounty_Quests_Horde",[[
	step
		It's suggested that you have at least _300 skill level in Cooking_ before you begin the quests for this. Please refer to _Zygor's Cooking Guide_ for assistance in leveling up to 300 in Cooking.
		|confirm
	step
		goto Undercity,65.6,8.1
		.talk Bountiful Feast Hostess##34654
		..accept Sharing a Bountiful Feast##14065
	step
		goto 64.7,7.9
		.clicknpc The Turkey Chair##34812
		.' Use the first ability on your hotbar to Pass the food to other players who are sitting at the table |tip You must target the other players and use the Pass the Food ability.  Do this repeatedly until you get an achievement.
		.' Start a Food Fight! |achieve 3579
		.' Use the other abilities on your hotbar to eat the food |tip You will only be able to eat certain foods at each place on the table.  Once you eat the foods available to your spot 5 times, click the red arrow above your action bar to get out of the Turkey Chair.  Then, go sit in another Turkey Chair that has a type of food you haven't eaten yet.
		.' Eat each type of food 5 times in a row |tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
		.' Gain the Spirit of Sharing |q 14065/1
	step
		goto 65.6,8.1
		.talk Bountiful Feast Hostess##34654
		..turnin Sharing a Bountiful Feast##14065
	step
		goto 63.2,8.9
		.talk Roberta Carter##34712
		.skillmax Cooking,75
		.learn Spice Bread##37836
	step
		goto 63.9,11.1
		.talk Rose Standish##34683
		.buy Bountiful Cookbook##46810
	step
		'Use your Bountiful Cookbook |use Bountiful Cookbook##46810
		.collect Recipe: Spice Bread Stuffing##46803
		.collect Recipe: Pumpkin Pie##46804
		.collect Recipe: Cranberry Chutney##46805
		.collect Recipe: Candied Sweet Potato##46806
		.collect Recipe: Slow-Roasted Turkey##46807
	step
		'Use your Recipe: Spice Bread Stuffing to learn the recipe |use Recipe: Spice Bread Stuffing##46803
		.learn Spice Bread Stuffing##66038
	step
		goto 63.9,11.5
		.talk Miles Standish##34677
		..accept Spice Bread Stuffing##14037
	step
		goto 63.9,11.1
		.talk Rose Standish##34683
		.buy 10 Simple Flour##30817 |n
		.buy 10 Mild Spices##2678 |n
		.buy 10 Autumnal Herbs##44835 |n
		.' Cook next to the Pilgrim's Bounty Cooking Fire at [63.2,8.3]
		.create 10 Spice Bread##37836,Cooking,5 total |n
		.create 10 Spice Bread Stuffing##66038,Cooking,5 total |q 14037/1
		.get 10 Spice Bread Stuffing |q 14037/2
	step
		|skill Cooking,100
		.' If you need to train your Cooking skill to allow a higher max level, talk to Roberta Carter at [63.2,8.9]
		|confirm
	step
		'Use your Recipe: Pumpkin Pie to learn the recipe |use Recipe: Pumpkin Pie##46804 |tip You will need to be at least 100 in Cooking to learn this.
		.learn Pumpkin Pie##66036
	step
		goto 65.3,14.3
		.talk William Mullins##34768
		..turnin Spice Bread Stuffing##14037
		..accept Pumpkin Pie##14040
	step
		goto 63.9,11.1
		.talk Rose Standish##34683
		.buy 5 Ripe Tirisfal Pumpkin##46796+ |n
		.buy 5 Honey##44853 |n
		.' Cook next to the Pilgrim's Bounty Cooking Fire at [63.2,8.3]
		.create 5 Pumpkin Pie##66036,Cooking,5 total |q 14040/1
		.get 5 Pumpkin Pie |q 14040/2
	step
		|skill Cooking,160
		.' If you need to train your Cooking skill to allow a higher max level, talk to Roberta Carter at [63.2,8.9]
		|confirm
	step
		'Use your Recipe: Cranberry Chutney to learn the recipe |use Recipe: Cranberry Chutney##46805 |tip You will need to be at least 160 in Cooking to learn this.
		.learn Cranberry Chutney##66035
	step
		goto Durotar 46.6,13.8
		.talk Francis Eaton##34679
		..turnin Pumpkin Pie##14040
		..accept Cranberry Chutney##14041
	step
		goto 46.6,13.8
		.talk Dalni Tallgrass##34685
		.buy 10 Tangy Southfury Cranberries##46793+ |n
		.buy 10 Honey##44853 |n
		.' Cook next to the Pilgrim's Bounty Cooking Fire at [46.4,13.8]
		.create 10 Cranberry Chutney##66035,Cooking,5 total |q 14041/1
		.get 10 Cranberry Chutney |q 14041/2
	step
		.clicknpc The Turkey Chair##34812
		.' Eat each type of food 5 times in a row |tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
		.' Gain the Spirit of Sharing |achieve 3557/1
	step
		goto Thunder Bluff,30.9,63.7
		.talk Dokin Farplain##34678
		..turnin Cranberry Chutney##14041
		..accept Candied Sweet Potatoes##14043
	step
		|skill Cooking,220
		.' If you need to train your Cooking skill to allow a higher max level, talk to Mahara Goldwheat at [30.8,69.6]
		|confirm
	step
		'Use your Recipe: Candied Sweet Potatoes to learn the recipe |use Recipe: Candied Sweet Potatoes##46806 |tip You will need to be at least 160 in Cooking to learn this.
		.learn Candied Sweet Potatoes##66034
	step
		goto 31.1,63.4
		.talk Laha Farplain##34684
		.buy 5 Mulgore Sweet Potato##46797 |n
		.buy 5 Honey##44853 |n
		.buy 5 Autumnal Herbs##44835 |n
		.' Cook next to the Pilgrim's Bounty Cooking Fire at [30.5,70.1]
		.create 5 Candied Sweet Potatoes##66034,Cooking,5 total |q 14043/1
		.get 5 Candied Sweet Potatoes |q 14043/2
	step
		|skill Cooking,280
		.' If you need to train your Cooking skill to allow a higher max level, talk to Mahara Goldwheat at [31.0,69.8]
		|confirm
	step
		'Use your Recipe: Slow-roasted Turkey to learn the recipe |use Recipe: Candied Sweet Potatoes##46807 |tip You will need to be at least 160 in Cooking to learn this.
		.learn Slow-Roasted Turkey##66037
	step
		goto 29.9,62.7
		.clicknpc The Turkey Chair##34812
		.' Eat each type of food 5 times in a row |tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
		.' Gain the Spirit of Sharing |achieve 3557/3
	step
		goto Durotar,46.6,13.8
		.talk Francis Eaton##34679
		..turnin Candied Sweet Potatoes##14043
		..accept Undersupplied in the Undercity##14044
	step
		goto Undercity,63.9,11.5
		.talk Miles Standish##34677
		..turnin Undersupplied in the Undercity##14044
		..accept Slow-roasted Turkey##14047
	step
		goto Tirisfal Glades,62.2,56.4
		.from Wild Turkey##32820+ |tip You can find these all around Tirisfal Glades, so you are not limited to staying in this area.  Ride around Tirisfal Glades and look for Wild Turkeys, you should be able to find them easily if you ride around.
		.collect 20 Wild Turkey##44834 |q 14047
	step
		goto Undercity,63.9,11.1
		.talk Rose Standish##34683
		.buy 10 Honey##44853 |n
		.buy 5 Autumnal Herbs##44835 |n
		.' Cook next to the Pilgrim's Bounty Cooking Fire at [63.1,8.3]
		.create 5 Slow-Roasted Turkey##66037,Cooking,5 total |q 14047/1
		.get 5 Slow-Roasted Turkey |q 14047/2
		|skill Cooking,300
		.' If you need to train your Cooking skill to allow a higher max level, talk to Roberta Carter at [63.2,8.9]
	step
		goto Durotar,46.6,13.8
		.talk Francis Eaton##34679
		..turnin Slow-roasted Turkey##14047
]])

ZygorGuidesViewer:RegisterInclude("Pilgrims_Bounty_Achievements_Horde",[[
	step
	label start
		goto Eversong Woods,55.7,53.2
		.clicknpc The Turkey Chair##34812
		.' Eat each type of food 5 times in a row |tip You can see how many times you've eaten the food by looking at it's buff that it gives you next to your mini map.
		.' Gain the Spirit of Sharing |achieve 3557/2
		.' Earn the Pilgrim's Paunch Achievement. |achieve 3557/2
	step
		'While still at the table, go to each of the chairs.
		.' While in each of the chairs, press 1.
		.' Pass the Candied Sweet Potatoes. |achieve 3558/1
		.' Pass the Cranberry Chutney. |achieve 3558/2
		.' Pass the Pumpkin Pie. |achieve 3558/3
		.' Pass the Slow-Roasted Turkey. |achieve 3558/4
		.' Pass the Spice Bread Stuffing. |achieve 3558/5
		.' Earn the Sharing is Caring Achievement. |achieve 3558
	step
		goto Undercity,65.2,14.2
		.talk William Mullins##34768
		.accept She Says Potato##14058 |daily
	step
		goto Undercity,63.2,9.0
		.talk Roberta Carter##34712
		.accept We're Out of Cranberry Chutney Again?##14059 |daily
	step
		goto 63.9,11.1
		.talk Rose Standish##34683
		.buy 20 Ripe Tirisfal Pumpkin##46796 
		.buy 20 Simple Flour##30817
		.buy 20 Mild Spices##2678 
		.buy 20 Autumnal Herbs##44835
	step
		goto Tirisfal Glades,62.2,56.4
		.from Wild Turkey##32820+ |tip You can find these all around Tirisfal Glades, so you are not limited to staying in this area.  Ride around Tirisfal Glades and look for Wild Turkeys, you should be able to find them easily if you ride around.
		.collect 20 Wild Turkey##44834
	step
		goto Durotar,46.4,13.9
		.talk Ondani Greatmill##34713
		.accept Can't Get Enough Turkey##14061
		..accept Don't Forget The Stuffing!##14062
	step
		goto Durotar,46.6,13.8
		.talk Dalni Tallgrass##34685
		.buy 20 Tangy Southfury Cranberries##46793
	step
		goto Thunder Bluff,31.0,63.3
		.talk Laha Farplain##34684
		.buy 20 Mulgore Sweet Potato##46797
		.buy 20 Honey##44853
	step
		goto Thunder Bluff,30.9,69.7
		.talk Mahara Goldwheat##34714
		.accept Easy As Pie##14060
	step
		.create 20 Pumpkin Pie##66036,Cooking,20 total |q 14060/1
	step
		goto Thunder Bluff,30.9,69.7
		.talk Mahara Goldwheat##34714
		.turnin Easy As Pie##14060 |achieve 3597/3
		..collect Pilgrim's Hat##46723
		..' You need the hat for a later achievement.
	step
		goto Durotar,46.4,13.9
		.create 20 Spice Bread##37836,Cooking,20 total |n
		.create 20 Spice Bread Stuffing##66038,Cooking,20 total |q 14062/1
	step
		goto Durotar,46.6,13.8
		.talk Dalni Tallgrass##34685
		.buy 40 Honey##44853
		.buy 20 Autumnal Herbs##44835
	step
		goto 46.4,13.9
		.create 20 Slow-Roasted Turkey##66037+,Cooking,20 total |q 14061/1
	step
		goto Durotar,46.4,13.9
		.talk Ondani Greatmill##34713
		.turnin Can't Get Enough Turkey##14061 |achieve 3597/1
		..collect Pilgrim's Attire##46800 |tip You only need this, the Dress or the Robes, not all 3. |or
		..collect Pilgrim's Dress##44785 |tip You only need this, the Attire or the Robes, not all 3. |or
		..collect Pilgrim's Robe##46824 |tip You only need this, the Attire or the Dress, not all 3. |or
	step
		goto Durotar,46.4,13.9
		.talk Ondani Greatmill##34713
		.turnin Don't Forget The Stuffing!##14062 |achieve 3597/2
		..collect Turkey Shooter##44812 |tip Collect Turkey Shooters.  You will need at least 8 for an Achievement.
	step
		goto Undercity,63.9,11.1
		.talk Rose Standish##34683
		.buy 40 Honey##44853
		.buy 20 Autumnal Herbs##44835
	step
		goto Undercity,63.2,8.4
		.create 20 Candied Sweet Potato##66034,Cooking,20 total |q 14058/1
	step
		.create 20 Cranberry Chutney##66035,Cooking,20 total |q 14059/1
	step
		goto Undercity,63.2,8.9
		.talk Roberta Carter##34712
		.turnin We're Out of Cranberry Chutney Again?##14059 |achieve 3597/5
		..collect Turkey Shooter##44812 |tip Collect Turkey Shooters.  You will need at least 8 for an Achievement.
	step
		goto 65.2,14.2
		.talk William Mullins##34768
		.turnin She Says Potato##14058 |achieve 3597/4
		..collect Turkey Shooter##44812 |tip Collect Turkey Shooters.  You will need at least 8 for an Achievement.
	step
		.' Earn the Pilgrim's Progress Achievement. |achieve 3597
	step
		goto Tirisfal Glades,62.5,57.8
		'You will need to fly around Tirisfal Glades.  You have to kill 40 turkeys without letting your Turkey Tracker Buff fall off.  You will be given 30 seconds for each kill to find a new turkey.
		.kill Wild Turkey##32820+ |n
		.' Earn the Turkinator Achievement. |achieve 3578
	step
		goto Terokkar Forest,44.9,65.6 |n
		.' Go through the swirling portal. |goto Sethekk Halls|noway|c
	step
		'Fight to the end of the Instance.
		.' Before Engaging Talon King Ikiss, equip
		.' Equip Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800 |or 
		.' Equip Pilgrim's Dress |equipped Pilgrim's Dress##44785 |use Pilgrim's Dress##44785 |or
		.' Equip Pilgrim's Robe |equipped Pilgrim's Robe##46824 |use Pilgrim's Robe##46824  |or
		.' Equip Pilgrim's Hat |equipped Pilgrim's Hat##46723 |use Pilgrim's Hat##46723
		.' Kill Talon King Ikiss while wearing these items.
		.' Earn the Terokkar Turkey Time Achievement. |achieve 3582
	step
		goto Darkshore,41.0,15.0 |n
		.' Fly across the water to Teldrassil |goto Teldrassil,57.1,92.0,1 |noway|c
	step
		goto Darnassus,64.1,46.7 |tip You will be flagged, so if there are alliance players you will most likely be attacked.
		.' Equip Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800 |or 
		.' Equip Pilgrim's Dress |equipped Pilgrim's Dress##44785 |use Pilgrim's Dress##44785 |or
		.' Equip Pilgrim's Robe |equipped Pilgrim's Robe##46824 |use Pilgrim's Robe##46824  |or
		.clicknpc The Turkey Chair##34812
		.' Take a seat at a Darnassus Bountiful Table. |achieve 3581/1
	step
		goto The Exodar,77.1,52.2
		.' Equip Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800 |or 
		.' Equip Pilgrim's Dress |equipped Pilgrim's Dress##44785 |use Pilgrim's Dress##44785 |or
		.' Equip Pilgrim's Robe |equipped Pilgrim's Robe##46824 |use Pilgrim's Robe##46824  |or
		.clicknpc The Turkey Chair##34812
		.' Take a seat at the Exodar Bountiful Table. |achieve 3581/2
	step
		goto Elwynn Forest,34.7,50.6
		.' Equip Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800 |or 
		.' Equip Pilgrim's Dress |equipped Pilgrim's Dress##44785 |use Pilgrim's Dress##44785 |or
		.' Equip Pilgrim's Robe |equipped Pilgrim's Robe##46824 |use Pilgrim's Robe##46824  |or
		.clicknpc The Turkey Chair##34812
		.' Take a seat at the Stormwind Bountiful Table. |achieve 3581/4
	step
		goto Dun Morogh,59.7,35.3
		.' Equip Pilgrim's Attire |equipped Pilgrim's Attire##46800 |use Pilgrim's Attire##46800 |or 
		.' Equip Pilgrim's Dress |equipped Pilgrim's Dress##44785 |use Pilgrim's Dress##44785 |or
		.' Equip Pilgrim's Robe |equipped Pilgrim's Robe##46824 |use Pilgrim's Robe##46824  |or
		.clicknpc The Turkey Chair##34812
		.' Take a seat at the Ironforge Bountiful Table. |achieve 3581/3
	step
		.' Earn the Pilgrim's Peril Achievement. |achieve 3581
	step
		'You should have a few _Turkey Shooters_ from your daily quests, if you don't, you will need to do more daily's when possible for more.
		.' While in Dun Morogh, shoot Alliance Rogues with your Turkey Shooter. |use Turkey Shooter##44812
		.' Shoot a Dwarf Rogue |achieve 3559/2
		.' Shoot a Gnome Rogue |achieve 3559/3
		.' Shoot a Human Rogue |achieve 3559/5
		.' Shoot a Night Elf Rogue |achieve 3559/6
		.' Shoot a Worgen Rogue |achieve 3559/10
	step
		#include "hearth_hub"
	step
		goto Durotar,46.2,15.1
		'You should have a few _Turkey Shooters_ from your daily quests, if you don't, you will need to do more daily's when possible for more.
		.' While in Durotar, shoot Horde Rogues with your Turkey Shooter. |use Turkey Shooter##44812
		.' Shoot a Blood Elf Rogue |achieve 3559/1
		.' Shoot a Orc Rogue |achieve 3559/7
		.' Shoot a Troll Rogue |achieve 3559/8
		.' Shoot a Undead Rogue |achieve 3559/9
		.' Shoot a Goblin Rogue |achieve 3559/4
	step
		.' You have reached the End of this guide, you can only do the Dailies Once per day. 
		Click here to continue. |confirm always
		|next "end" |only if achieved(3656)
		|next "start" |only if not achieved(3656)
	step
	label	"end"
		.' Congratualtions, you have earned the Pilgrim Achievement!
]])

ZygorGuidesViewer:RegisterInclude("Pilgrims_Bounty_Dailies",[[
	step
	label daily
		goto Undercity,65.2,14.2
		.talk William Mullins##34768
		.accept She Says Potato##14058 |daily
	step
		goto Undercity,63.2,9.0
		.talk Roberta Carter##34712
		.accept We're Out of Cranberry Chutney Again?##14059 |daily
	step
		goto 63.9,11.1
		.talk Rose Standish##34683
		.buy 20 Ripe Tirisfal Pumpkin##46796 |n
		.buy 20 Simple Flour##30817 |n
		.buy 20 Mild Spices##2678 |n
		.buy 20 Autumnal Herbs##44835 |n
		|confirm always
	step
		'Go south to Tirisfal Glades. |goto Tirisfal Glades |noway|c
	step
		goto Tirisfal Glades,62.2,56.4
		.from Wild Turkey##32820+ |tip You can find these all around Tirisfal Glades, so you are not limited to staying in this area.  Ride around Tirisfal Glades and look for Wild Turkeys, you should be able to find them easily if you ride around.
		.collect 20 Wild Turkey##44834 |n
		|confirm always
	step
		goto Tirisfal Glades,60.7,58.8 |n
		'Ride the Zeppelin to Orgrimmar. |goto Orgrimmar |noway|c
	step
		'Go South to Durotar. |goto Durotar |noway|c
	step
		goto Durotar,46.4,13.9
		.talk Ondani Greatmill##34713
		.accept Can't Get Enough Turkey##14061 |daily
		..accept Don't Forget The Stuffing!##14062 |daily
	step
		goto Durotar,46.6,13.8
		.talk Dalni Tallgrass##34685
		.buy 20 Tangy Southfury Cranberries##46793
	step
		'Go into Orgrimmar. |goto Orgrimmar|noway|c
	step
		|fly Thunder Bluff
	step
		goto Thunder Bluff,31.0,63.3
		.talk Laha Farplain##34684
		.buy 20 Mulgore Sweet Potato##46797
		.buy 20 Honey##44853
	step
		goto Thunder Bluff,30.9,69.7
		.talk Mahara Goldwheat##34714
		.accept Easy As Pie##14060 |daily
	step
		.create 20 Pumpkin Pie##66036,Cooking,20 total |q 14060/1
	step
		goto Thunder Bluff,30.9,69.7
		.talk Mahara Goldwheat##34714
		.turnin Easy As Pie##14060
		..collect Turkey Shooter##44812 |tip Collect Turkey Shooters.  You will need at least 8 for an Achievement.
	step
		|fly Orgrimmar
	step
		'Go South to Durotar. |goto Durotar |noway|c
	step
		goto Durotar,46.4,13.9
		.create 20 Spice Bread##37836,Cooking,20 total |n
		.create 20 Spice Bread Stuffing##66038,Cooking,20 total |q 14062/1
	step
		goto Durotar,46.6,13.8
		.talk Dalni Tallgrass##34685
		.buy 40 Honey##44853
		.buy 20 Autumnal Herbs##44835
	step
		goto 46.4,13.9
		.create 20 Slow-Roasted Turkey##66037+,Cooking,20 total |q 14061/1
	step
		goto Durotar,46.4,13.9
		.talk Ondani Greatmill##34713
		.turnin Can't Get Enough Turkey##14061 |achieve 3597/1
		..collect Turkey Shooter##44812 |tip Collect Turkey Shooters.  You will need at least 8 for an Achievement.
	step
		goto Durotar,46.4,13.9
		.talk Ondani Greatmill##34713
		.turnin Don't Forget The Stuffing!##14062 |achieve 3597/2
		..collect Turkey Shooter##44812 |tip Collect Turkey Shooters.  You will need at least 8 for an Achievement.
	step
		'Go into Orgrimmar. |goto Orgrimmar|noway|c
	step
		goto Orgrimmar,50.8,55.8 |n
		.' Ride the zeppelin to Tirisfal Glades |goto Tirisfal Glades |noway |c
	step
		'Go South to Undercity. |goto Undercity |noway|c
	step
		goto Undercity,63.9,11.1
		.talk Rose Standish##34683
		.buy 40 Honey##44853
		.buy 20 Autumnal Herbs##44835
	step
		goto Undercity,63.2,8.4
		.create 20 Candied Sweet Potato##66034,Cooking,20 total |q 14058/1
	step
		.create 20 Cranberry Chutney##66035,Cooking,20 total |q 14059/1
	step
		goto Undercity,63.2,8.9
		.talk Roberta Carter##34712
		.turnin We're Out of Cranberry Chutney Again?##14059 |achieve 3597/5
		..collect Turkey Shooter##44812 |tip Collect Turkey Shooters.  You will need at least 8 for an Achievement.
	step
		goto 65.2,14.2
		.talk William Mullins##34768
		.turnin She Says Potato##14058 |achieve 3597/4
		..collect Turkey Shooter##44812 |tip Collect Turkey Shooters.  You will need at least 8 for an Achievement.
	step
		goto Elwynn Forest,34.7,50.6
		.' For the achievement Turkey Lurkey, you have to hit 8 difference races of rogues with the Turkey shooter.
		.use Turkey Shooter##44812
		.' Shoot a Dwarf Rogue |achieve 3559/2
		.' Shoot a Gnome Rogue |achieve 3559/3
		.' Shoot a Human Rogue |achieve 3559/4
		.' Shoot a Night Elf Rogue |achieve 3559/5
		.' You can look for the get a maximum of 5 Turkey Shooters per day, so it will take 2 days to do this if you don't have any already.
	step
		.' Hearth to Orgrimmar. |goto Orgrimmar,53.6,78.8,0.5 |noway|c |use Hearthstone##6948
	step
		goto Durotar,46.5,14.6
		.' For the achievement Turkey Lurkey, you have to hit 8 difference races of rogues with the Turkey shooter.
		.' Shoot a Blood Elf Rogue |achieve 3559/1
		.' Shoot a Orc Rogue |achieve 3559/6
		.' Shoot a Troll Rogue |achieve 3559/7
		.' Shoot an Undead Rogue |achieve 3559/8
		.' You can look for the get a maximum of 5 Turkey Shooters per day, so it will take 2 days to do this if you don't have any already.
		.' Click here to go to the start of the Daily quests. |next "daily" |confirm |only if not achieved(3559)
		|next "finish" |only if achieved(3656)
	step
	label finish
		'Congratulations, you have completed the Pilgrim achievement!
]])

-- MIDSUMMER --
ZygorGuidesViewer:RegisterInclude("Midsummer_Quests",[[
	step
		goto Orgrimmar 53.6,78.8
		.talk Innkeeper Gryshka##6929
		.home Orgrimmar
	step
		goto Mulgore 51.8,59.3
		.talk Mulgore Flame Keeper##25936
		..accept Honor the Flame##11852 |instant
	step
		goto 51.7,59.5
		.talk Flame Eater##25994
		..accept Playing with Fire##11915
	step
		|fly Thunder Bluff
	step
		goto Thunder Bluff 40.8,56.1
		.talk Tauren Commoner##19176
		..accept The Spinner of Summer Tales##11971
	step
		goto 21.6,27.7
		.talk Festival Talespinner##16818
		..turnin The Spinner of Summer Tales##11971
		..accept Incense for the Festival Scorchlings##11966
	step
		goto 21.0,26.4
		.talk Master Flame Eater##26113
		..turnin Playing with Fire##11915
		..accept Torch Tossing##11922
	step
		'Use your Practice Torches in your bags and throw them at the Torch Target Braziers nearby |use Practice Torches##34862 |tip You must throw the torches at the correct braziers.  Throw the torches at the Torch Target Braziers when they have a floating red arrow point down above them.
		.' Hit 8 braziers |q 11922/1
	step
		goto 21.0,26.4
		.talk Master Flame Eater##26113
		..turnin Torch Tossing##11922
		..accept Torch Catching##11923
	step
		goto 21.8,27.3
		.' Use your Unlit Torches in your bags next to the bonfire |use Unlit Torches##34833
		.' As soon as you light torch, it will fly in the air.  There will be a small round shadow on the ground indicating where the torch is flying.  Follow that shadow and catch the torch.  When you catch the torch, it will be thrown in the air again.  Follow the shadow again and catch the torch.  Do this until you've caught the torch 4 times in a row without it hitting the ground.
		.' Catch 4 torches in a row. |q 11923/1
	step
		goto 21.0,26.4
		.talk Master Flame Eater##26113
		..turnin Torch Catching##11923
	step
		goto 21.2,24.0
		.talk Earthen Ring Elder##26221
		..accept Unusual Activity##11886
	step
		|fly Brackenwall Village, Dustwallow Marsh
	step
		goto Dustwallow Marsh 33.5,30.9
		.talk Festival Scorchling##26520
		..turnin Incense for the Festival Scorchlings##11966
	step
		goto 33.4,30.9
		.talk Dustwallow Marsh Flame Keeper##25930
		..accept Honor the Flame##11847 |instant
	step
		goto 62.1,40.3
		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11744 |instant
	step
		|fly Gadgetzan
	step
		goto Tanaris 49.8,27.9
		.talk Tanaris Flame Keeper##25921
		..accept Honor the Flame##11838 |instant
	step
		goto 52.7,30.1
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11762 |instant
	step
		|fly Cenarion Hold
	step
		goto Silithus,50.9,41.3
		.talk Silithus Flame Keeper##25919
		..accept Honor the Flame##11836 |instant
	step
		goto 60.6,33.2
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11760 |instant
	step
		|fly Camp Mojache
	step
		goto Feralas 72.4,47.8
		.talk Feralas Flame Keeper##25932
		..accept Honor the Flame##11849 |instant
	step
		goto 46.6,43.8
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11746 |instant
	step
		'Go north to Desolace. |goto Desolace |noway |c
	step
		goto Desolace,26.2,76.9
		.talk Desolace Flame Keeper##25928
		..accept Honor the Flame##11845 |instant
	step
		goto 65.8,16.9
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11741 |instant
	step
		goto Stonetalon Mountains,38.2,68.3 |n
		.' The path up to Sun Rock Retreat starts here |goto Stonetalon Mountains,42.5,68.6,0.5 |noway |c
	step
		goto 52.9,62.5
		.talk Stonetalon Flame Keeper##25940
		..accept Honor the Flame##11856 |instant
	step
		|fly Desolation Hold
	step
		goto Southern Barrens,40.9,67.8
		.talk Southern Barrens Flame Keeper##25943
		..accept Honor the Flame##28927 |instant
	step
		goto 48.3,72.4
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##28913 |instant
	step
		|fly The Crossroads
	step
		goto Northern Barrens 50.0,54.6
		.talk The Northern Barrens Flame Keeper##25943
		..accept Honor the Flame##11859 |instant
	step
		'Go northeast to Durotar |goto Durotar |noway |c
	step
		goto Durotar 52.2,47.3
		.talk Durotar Flame Keeper##25929
		..accept Honor the Flame##11846 |instant
	step
		|fly Everlook
	step
		goto Winterspring 58.1,47.5
		.talk Winterspring Flame Keeper##25922
		..accept Honor the Flame##11839 |instant
	step
		goto 61.3,47.1
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11763 |instant
	step
		|fly Silverwind Refuge
	step
		 goto Ashenvale 51.4,66.2
		.talk Ashenvale Flame Keeper##25884
		..accept Honor the Flame##11841 |instant
	step
		goto 86.8,41.4
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11734 |instant
	step
		|fly Zoram'gar Outpost
	step
		goto 15.3,20.1
		.from Twilight Firesworn##25863+, Twilight Flameguard##25866+
		.get Twilight Correspondence |q 11886/1
	step
		goto 15.7,20.3
		.' Use your Totemic Beacon next to the blue bonfire |use Totemic Beacon##35828
		.talk Earthen Ring Guide##25324
		..turnin Unusual Activity##11886
		..accept An Innocent Disguise##11891
	step
		goto 9.6,13.2
		.' Use your Orb of the Crawler in this spot |use Orb of the Crawler##35237
		.' Get the Crab Disguise |havebuff Interface\Icons\Ability_Hunter_Pet_Crab
	step
		goto 9.2,12.6
		'While in the crab disguise follow this path.
		.' Listen to the plan of the Twilight Cultists |q 11891/1
	step
		goto 9.7,13.3
		.' Use your Totemic Beacon next to the blue bonfire |use Totemic Beacon##35828
		.talk Earthen Ring Guide##25324
		..turnin An Innocent Disguise##11891
		..accept Inform the Elder##12012
	step
		'Go east to Darkshore |goto Darkshore |noway |c
	step
		goto Darkshore 48.9,22.6
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11740 |instant
	step
		goto 40.0,12.7 |noway
		.' You'll need to fly across the ocean here, you will get fatigued.
		goto Teldrassil,57.6,89.6 |c
	step
		goto Teldrassil 54.7,52.9
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11753 |instant
	step
		.' Go West to Darnassus. |goto Darnassus
	step
		goto Darnassus 64,47.1
		.click Flame of Darnassus##6756
		.collect Flame of Darnassus##23184 |n
		.' Click the Flame of Darnassus in your bags |use Flame of Darnassus##23184
		..accept Stealing Darnassus's Flame##9332 |tip It is recommended that you be level 80 when attempting to complete this guide step.
	step
		goto 35.8,50.3 |n
		.' Go inside the pink portal to Rut'theran Village |goto Teldrassil |noway |c
	step
		goto Teldrassil 52.3,89.5 |n
		.' Ride the boat to Azuremyst Isle |goto Azuremyst Isle |noway |c
	step
		'Go inside the Exodar |goto The Exodar |noway |c
	step
		goto The Exodar 41.6,26.9
		.click Flame of the Exodar##6756
		.collect Flame of the Exodar##35569 |n
		.' Click the Flame of the Exodar in your bags |use Flame of the Exodar##35569
		..accept Stealing the Exodar's Flame##11933 |tip It is recommended that you be level 80 when attempting to complete this guide step.
	step
		'Go outside to Azuremyst Isle |goto Azuremyst Isle |noway |c
	step
		goto Azuremyst Isle 44.7,52.7
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11735 |instant
	step
		'Go north to Bloodmyst Isle |goto Bloodmyst Isle |noway |c
	step
		goto Bloodmyst Isle 55.9,68.6
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11738 |instant
	step
		'Hearth to Orgrimmar |goto Orgrimmar |use Hearthstone##6948 |noway |c
	step
		|fly Ratchet
	step
		goto Northern Barrens 70.1,73.3 |n
		.' Ride the boat to Booty Bay |goto The Cape of Stranglethorn |noway |c
	step
		goto The Cape of Stranglethorn 50.4,70.4
		.talk Stranglethorn Vale Flame Keeper##25920
		..accept Honor the Flame##11837 |instant
	step
		goto 51.8,67.4
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11761 |instant
	step
		goto Northern Stranglethorn 40.6,50.9
		.talk Northern Stranglethorn Vale Flame Keeper##51582
		..accept Honor the Flame##28924 |instant
	step
		goto 51.7,63.3
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##28910 |instant
	step
		|fly Dreadmaul Hold
	step
		goto Blasted Lands 55.3,15.2
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11737 |instant
	step
		|fly Bogpaddle
	step
		goto Swamp of Sorrows 76.3,13.8
		.talk Swamp of Sorrows Flame Keeper##25941
		..accept Honor the Flame##11857 |instant
	step
		goto 70.3,14.4
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##28916 |instant
	step
		'Go west to Duskwood |goto Duskwood |noway |c
	step
		goto Duskwood 73.4,55.0
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11743 |instant
	step
		'Go west to Westfall |goto Westfall |noway |c
	step
		goto Westfall 45.1,62.3
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11581 |instant
	step
		'Go northeast to Elwynn Forest |goto Elwynn Forest |noway |c
	step
		goto Elwynn Forest 43.1,63.0
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11745 |instant
	step
		'Go northwest to Stormwind City |goto Stormwind City |noway |c
	step
		goto Stormwind City 50.0,72.6
		.click Flame of Stormwind##6756
		.collect Flame of Stormwind##23182 |n
		.' Click the Flame of Stormwind in your bags |use Flame of Stormwind##23182
		..accept Stealing Stormwind's Flame##9330 |tip It is recommended that you be level 80 when attempting to complete this guide step.
	step
		'Go outside to Elwynn Forest |goto Elwynn Forest |noway |c
	step
		'Go east to Redridge Mountains |goto Redridge Mountains |noway |c
	step
		goto Redridge Mountains 24.5,53.8
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11751 |instant
	step
		'Go northeast to Burning Steppes |goto Burning Steppes |noway |c
	step
		goto Burning Steppes 68.7,60.1
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11739 |instant
	step
		goto 51.1,29.2
		.talk Burning Steppes Flame Keeper##25927
		..accept Honor the Flame##11844 |instant
	step
		|fly New Kargath, Badlands
	step
		goto Badlands 18.7,56.0
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##28912 |instant
	step
		goto 23.1,37.4
		.talk Badlands Flame Keeper##25925
		..accept Honor the Flame##11842 |instant
	step
		'Go northeast to Loch Modan |goto Loch Modan |noway |c
	step
		goto Loch Modan 32.4,40.2
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11749 |instant
	step
		'Go southwest to Dun Morogh |goto Dun Morogh |noway |c
	step
		goto Dun Morogh 53.6,44.8
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11742 |instant
	step
		'Go northeast to Ironforge |goto Ironforge |noway |c
	step
		goto Ironforge 64.3,26.0
		.click Flame of Ironforge##6756
		.collect Flame of Ironforge##23183 |n
		.' Click the Flame of Ironforge in your bags |use Flame of Ironforge##23183
		..accept Stealing Ironforge's Flame##9331 |tip It is recommended that you be level 80 when attempting to complete this guide step.
	step
		'Go outside to Dun Morogh |goto Dun Morogh |noway |c
	step
		'Go east to Loch Modan |goto Loch Modan |noway |c
	step
		'Go north to Wetlands |goto Wetlands |noway |c
	step
		goto Wetlands 13.2,47.1
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11757 |instant
	step
		'Go northeast to Arathi Highlands |goto Arathi Highlands |noway |c
	step
		goto Arathi Highlands 44.6,46.1
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11732 |instant
	step
		goto 69.3,42.6
		.talk Arathi Flame Keeper##25923
		..accept Honor the Flame##11840 |instant
	step
		|fly Tarren Mill
	step
		goto Hillsbrad Foothills 54.7,50.1
		.talk Hillsbrad Flame Keeper##25935
		..accept Honor the Flame##11853 |instant
	step
		|fly The Sepulcher
	step
		goto Silverpine Forest 49.6,38.2
		.talk Silverpine Forest Flame Keeper##25939
		..accept Honor the Flame##11584 |instant
	step
		goto Undercity 66.9,13.5
		.talk Earthen Ring Elder##26221
		..turnin Inform the Elder##12012
	step
		goto 67.7,8.3
		.talk Festival Talespinner##16818
		..turnin Stealing Darnassus's Flame##9332
		..turnin Stealing the Exodar's Flame##11933
		..turnin Stealing Stormwind's Flame##9330
		..turnin Stealing Ironforge's Flame##9331
		..accept A Thief's Reward##9339 |instant
	step
		goto 54.9,11.3
		.click Orb of Translocation##7161 
		.' Go to Silvermoon City |goto Silvermoon City |noway |c
	step
		'Go outside to Eversong Woods |goto Eversong Woods |noway |c
	step
		goto Eversong Woods 46.4,50.6
		.talk Eversong Woods Flame Keeper##25931
		..accept Honor the Flame##11848 |instant
	step
		'Go south to Ghostlands |goto Ghostlands |noway |c
	step
		goto Ghostlands 46.9,26.3
		.talk Ghostlands Flame Keeper##25933
		..accept Honor the Flame##11850 |instant
	step
		|fly Revantusk Village
	step
		goto The Hinterlands 76.7,75.0
		.talk The Hinterlands Flame Keeper##25944
		..accept Honor the Flame##11860 |instant
	step
		goto 14.5,49.9
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11755 |instant
	step
		'Go southwest to Hillsbrad Foothills |goto Hillsbrad Foothills |noway |c
	step
		|fly The Bulwark
	step
		'Go east to Western Plaguelands |goto Western Plaguelands |noway |c
	step
		goto Western Plaguelands 43.6,82.5
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11756 |instant
	step
		'Go northwest to Tirisfal Glades |goto Tirisfal Glades |noway |c
	step
		goto Tirisfal Glades 57.2,51.7
		.talk Tirisfal Glades Flame Keeper##25946
		..accept Honor the Flame##11862 |instant
	step
		'Go southeast to Undercity |goto Undercity |noway |c
	step
		goto Undercity 85.3,17.1 |n
		.' Click the Portal to Blasted Lands |goto Blasted Lands |noway |c
	step
		'Go inside the huge green portal to Hellfire Peninsula |goto Hellfire Peninsula |noway |c
	step
		goto Hellfire Peninsula 61.9,58.5
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11747 |instant
	step
		goto Hellfire Peninsula 57.1,42.0
		.talk Hellfire Peninsula Flame Keeper##25934
		..accept Honor the Flame##11851 |instant
	step
		goto Netherstorm 32.1,68.3
		.talk Netherstorm Flame Keeper##25918
		..accept Honor the Flame##11835 |instant
	step
		goto Netherstorm 31.1,62.9
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11759 |instant
	step
		goto Blade's Edge Mountains 49.9,58.7
		.talk Blade's Edge Flame Keeper##25926
		..accept Honor the Flame##11843 |instant
	step
		goto Blade's Edge Mountains 41.8,66.0
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11736 |instant
	step
		goto Zangarmarsh 35.4,51.6
		.talk Zangarmarsh Flame Keeper##25947
		..accept Honor the Flame##11863 |instant
	step
		goto Zangarmarsh 68.6,52.1
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11758 |instant
	step
		goto Nagrand 50.9,34.1
		.talk Nagrand Flame Keeper##25937
		..accept Honor the Flame##11854 |instant
	step
		goto Nagrand 49.7,69.7
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11750 |instant
	step
		goto Terokkar Forest 52.0,42.9
		.talk Terokkar Forest Flame Keeper##25942
		..accept Honor the Flame##11858 |instant
	step
		goto Terokkar Forest 54.2,55.5
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11754 |instant
	step
		goto Shadowmoon Valley 33.4,30.5
		.talk Shadowmoon Valley Flame Keeper##25938
		..accept Honor the Flame##11855 |instant
	step
		goto Shadowmoon Valley 39.5,54.4
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##11752 |instant
	step
		goto Shattrath City 56.9,48.9 |n
		.' Click the Shattrath Portal to Orgrimmar |goto Orgrimmar |noway |c
	step
		goto Orgrimmar 44.6,62.4 |n
		.' Ride the zeppelin to Borean Tundra |goto Borean Tundra |noway |c
	step
		goto Borean Tundra 55.2,20.2
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##13440 |instant
	step
		goto Borean Tundra 51.1,11.5
		.talk Borean Tundra Flame Keeper##32809
		..accept Honor the Flame##13493 |instant
	step
		goto Sholazar Basin 47.9,66.2
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##13442 |instant
	step
		goto Sholazar Basin 47.1,61.5
		.talk Sholazar Basin Flame Keeper##32810
		..accept Honor the Flame##13494 |instant
	step
		goto Dragonblight 38.3,48.5
		.talk Dragonblight Flame Keeper##32811
		..accept Honor the Flame##13495 |instant
	step
		goto Dragonblight 75.1,43.8
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##13443 |instant
	step
		goto Crystalsong Forest 77.6,75.2
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##13447 |instant
	step
		goto Crystalsong Forest 80.0,53.2
		.talk Crystalsong Forest Flame Keeper##32815
		..accept Honor the Flame##13499 |instant
	step
		goto The Storm Peaks 40.3,85.3
		.talk Storm Peaks Flame Keeper##32814
		..accept Honor the Flame##13498 |instant
	step
		goto The Storm Peaks 41.4,87.0
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##13446 |instant
	step
		goto Zul'Drak 40.5,61.0
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##13449 |instant
	step
		goto Zul'Drak 43.4,71.7
		.talk Zul'Drak Flame Keeper##32816
		..accept Honor the Flame##13500 |instant
	step
		goto Grizzly Hills 19.3,61.2
		.talk Grizzly Hills Flame Keeper##32813
		..accept Honor the Flame##13497 |instant
	step
		goto Grizzly Hills 34.2,60.6
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##13445 |instant
	step
		goto Howling Fjord 48.6,13.1
		.talk Howling Fjord Flame Keeper##32812
		..accept Honor the Flame##13496 |instant
	step
		goto Howling Fjord 57.8,15.8
 		.click Alliance Bonfire##7734 
		..accept Desecrate this Fire!##13444 |instant
]])

ZygorGuidesViewer:RegisterInclude("Midsummer_Achievements",[[
	step
		'Complete the Midsummer Fire Festival Quests guide section before doing this guide section.
		.' Skip to the next step in the guide
	step
		goto Undercity,66.9,13.6
		.talk Earthen Ring Elder##26221
		..' Queue for The Frost Lord Ahune battle.
		..' Click Find Group
		..from Lord Ahune##25740
		.' Complete the Ice the Frost Lord Achievement |achieve 263
	step
		goto Undercity,68.1,11.2
		.talk Midsummer Merchant##26124
		.buy 15 Juggling Torch##34599
		.buy 1 Mantle of the Fire Festival##23324
		.buy 1 Vestment of Summer##34685
		.buy 1 Sandals of Summer##34683
	step
		goto Undercity,68.0,14.4
		.' Equip your Mantle of the Fire Festival |use Mantle of the Fire Festival##23324
		'
		'
		.' Equip your Vestment of Summer |use Vestment of Summer##34685
		'
		'
		.' Equip your Sandals of Summer |use Sandals of Summer##34683
		.' Click the Ribbon Pole |tip It looks like a tall metal pole with a small fire on top of it.
		.' Let your character spin around for 1 minute
		.' Complete the Burning Hot Pole Dance Achievement |achieve 271
	step
		'Don't forget to put your regular gear back on
		.' Skip to the next step in the guide
	step
		'Go outside to Tirisfal Glades |goto Tirisfal Glades |noway |c
	step
		goto Tirisfal Glades,59.1,59.0 |n
		.' Ride the zeppelin to Howling Fjord |goto Howling Fjord |noway |c
	step
		goto Howling Fjord,79.0,29.7
		.talk Bat Handler Adeline##27344
		.' Fly to Dalaran |goto Dalaran,72.7,45.7,0.5 |noway |c
	step
		goto Dalaran,36.8,44.1
		.' Use your 40 Juggling Torches as fast as you can |tip You must juggle them all in under 15 seconds.  The best way to do this is to place your Juggling Torches on your hotbar.  Press the hotbar key and click the ground at the same time.  Keep spamming the hotbar key and clicking the ground at the same time as fast as possible and dont stop until you get the achievement.
		.' Complete the Torch Juggler Achievement |achieve 272
	step
		'Hearth to Orgrimmar |goto Orgrimmar 53.4,78.8 |noway |c
	step
		goto Orgrimmar 49.4,36.7 |n
		. 'Click the Portal to Vashj'ir |goto Abyssal Depths |noway |c
	step
		|fly Silver Tide Hollow
	step
		goto Shimmering Expanse 49.4,42.0
		.talk Vashj'ir Flame Guardian##51697
		..accept Honor the Flame##29031
	step
		goto Shimmering Expanse 49.4,41.9
		.click Earthen Ring Bonfire##7734
		..turnin Honor the Flame##29031
		|confirm
	step
		|fly Smuggler's Scar
	step
		'Fly east to Twilight Highlands |goto Twilight Highlands |noway |c
	step
		goto Twilight Highlands 53.1,46.2
		.talk Twilight Highlands Flame Keeper##51651
		..accept Honor the Flame##28946 |instant
	step
		goto 47.3,28.3
		.click Alliance Bonfire##7734
		..accept Desecrate this Fire!##28943 |instant
	step
		'Hearth to Orgrimmar |goto Orgrimmar 53.4,78.8 |noway |c
	step
		goto Orgrimmar 50.8,36.5 |n
		.' Click the portal to Deepholm |goto Deepholm |noway |c
	step
		goto Deepholm 49.3,51.4
		.talk Deepholm Flame Guardian##51698
		..accept Honor the Flame##29036
	step
		goto Deepholm 49.3,51.4
		.click Earthen Ring Bonfire##7734
		..turnin Honor the Flame##29036
		|confirm
	step
		goto Deepholm 50.9,53.1 |n
		.' Click the Portal to Orgrimmar |goto Orgrimmar |noway |c
	step
		goto Orgrimmar 51.0,38.2 |n
		.' Click the Portal to Hyjal |goto Mount Hyjal |noway |c
	step
		goto Mount Hyjal 62.8,22.7
		.talk Hyjal Flame Guardian##51682
		..accept Honor the Flame##29030
	step
		goto 62.8,22.8
		.click Earthen Ring Bonfire##7734
		..turnin Honor the Flame##29030
		|confirm
	step
		goto 63.5,24.4 |n
		.' Click the portal to Orgrimmar |goto Orgrimmar |noway |c
	step
		  goto 49.0,38.4 |n
		.' Click the Portal to Uldum |goto Uldum |noway |c
	step
		goto Uldum 53.1,34.5
		.talk Uldum Flame Keeper##51652
		..accept Honor the Flame##28949 |instant
	step
		goto 53.5,32.0
		.click Alliance Bonfire##7734
		..accept Desecrate this Fire!##28947 |instant
	step
		'Congratulations, you are now The Flame Warden!
]])

-- BREWFEST --

ZygorGuidesViewer:RegisterInclude("H_Brewfest_Quests",[[
	step
		goto Orgrimmar,51.6,75.2
		.talk Orc Commoner##19175
		..accept Brewfest!##11446
	step
		goto Durotar,42.6,17.8
		.talk Ram Master Ray##24497
		..accept Now This is Ram Racing... Almost.##11409
	step
		'As you run around on the ram:
		.' Use your Ram Racing Reins |use Ram Racing Reins##33306 |tip The ram runs slow by default.  You have to use the Ram Racing Reins to make it run at certain speeds for 8 seconds.  The make the ram Trot for 8 seconds, use the Ram Racing Reins every 2 seconds or so to keep the ram running at the speed just above the slow default speed.  To make the Ram Canter for 8 seconds, use the Ram Racing Reins a little more often than when you made the Ram Trot.  To make the Ram Gallop, just spam use the Ram Racing Reins.
		.' Maintain a Trot for 8 seconds |q 11409/1
		.' Maintain a Canter for 8 seconds |q 11409/2
		.' Maintain a Gallop for 8 seconds |q 11409/3
	step
		goto Durotar,42.6,17.9
		.talk Ram Master Ray##24497
		..turnin Now This is Ram Racing... Almost.##11409
		..accept There and Back Again##11412
	step
		goto 50.6,13.5
		.' Use your Ram Racing Reins as you run |use Ram Racing Reins##33306 |tip Run as fast as you can without making your Ram stop from being too tired.  Stop at every bucket of apples you see on the side of the road to refresh your Ram's fatigue level, allowing the Ram to run faster for longer.
		.' Bok Dropcertain will throw you a keg when you get close
		.' Once you have a keg, run back and turn it in to Driz Tumblequick at [42.6,17.7] |tip Just get near him and you will throw the keg to him.
		.' Deliver 3 Kegs in Under 4 Minutes|q 11412/1
	step
		goto Durotar,42.6,17.8
		.talk Ram Master Ray##24497
		..turnin There and Back Again##11412
	step
		goto Durotar,42.7,17.7
		.talk Driz Tumblequick##24510
		..accept A New Supplier of Souvenirs##29396 |or
		..accept Another Year, Another Souvenir.##13931 |or
	step
		goto Durotar,41.6,18.4
		.talk Tapper Swindlekeg##24711
		..turnin Brewfest!##11446
	step
		goto Durotar,41.5,17.6
		.talk Bizzle Quicklift##27216
		..accept Chug and Chuck!##12191
	step
		goto Durotar,41.5,17.5
		.' Click the Complimentary Brewfest Samplers |tip They looks like mugs of beer on the small tables on either side of you.
		.' Use your Complimentary Brewfest Samplers |use Complimentary Brewfest Sampler##33096
		.' Hit S.T.O.U.T. 5 Times |q 12191/1
	step
		goto 41.5,17.5
		.talk Bizzle Quicklift##27216
		..turnin Chug and Chuck!##12191
	step
		goto 41.2,18.5
		.' NOTE: If you are on an EU server, you will be unable to accept these 2 quests. |tip So, just skip them, and also skip the guide steps where you complete the quest goals for these quests.
		.talk Glodrak Huntsniper##24657
		..accept Catch the Wild Wolpertinger!##11431
		..accept Pink Elekks On Parade##11120
	step
		goto 41.2,18.5
		.talk Glodrak Huntsniper##24657
		..' Ask him if there's another way you can help out if you don't like drinking, then ask for a pair of Synthebrew Goggles
		.collect Synthebrew Goggles##46735 |q 11431
	step
		goto 40.3,17.9
		.talk Blix Fixwidget##24495
		..turnin A New Supplier of Souvenirs##29396 |or
		..turnin Another Year, Another Souvenir.##13931 |or
	step
		'Use your Synthebrew Goggles |use Synthebrew Goggles##46735
		.' Equip the Synthebrew Goggles |havebuff Interface\Icons\Spell_Holy_SpiritualGuidence |q 11431
	step
		goto Durotar,41.2,18.1
		.' Use your Wolpertinger Net on Wild Wolpertingers |use Wolpertinger Net##32907 |tip They look like rabbits with antlers and wings running around on the ground around this area.
		.get 5 Stunned Wolpertinger |q 11431/1
		'|modelnpc Wild Wolpertinger##23487+
	step
		goto Durotar,41.2,18.5
		.talk Glodrak Huntsniper##24657
		..turnin Catch the Wild Wolpertinger!##11431
		.' Earn Does Your Wolpertinger Linger? achievement |achieve 1683/6
	step
		goto Undercity,70.5,12.0
		.' Use your Elekk Dispersion Ray on Tirisfal Pink Elekks |use Elekk Dispersion Ray##32960
		.kill 3 Tirisfal Pink Elekk |q 11120/3
	step
		goto Eversong Woods,57.0,53.1
		.' Use your Elekk Dispersion Ray on Eversong Pink Elekks |use Elekk Dispersion Ray##32960
		.kill 3 Eversong Pink Elekk |q 11120/1
	step
		goto Thunder Bluff,34.7,74.7
		.' Go down the lifts
		.' Use your Elekk Dispersion Ray on Mulgore Pink Elekks |use Elekk Dispersion Ray##32960
		.kill 3 Mulgore Pink Elekk |q 11120/2
	step
		goto Durotar,41.2,18.5
		.talk Glodrak Huntsniper##24657
		..turnin Pink Elekks On Parade##11120
	step
		'Use the Dungeon Finder (press I) to queue for Coren Direbrew |tip You must be level 80 do complete this quest.
		.' You will fight Coren Direbrew
		.from Coren Direbrew##23872
		.collect Direbrew's Dire Brew##38281 |n
		.' Click Direbrew's Dire Brew in your bags |use Direbrew's Dire Brew##38281
		..accept Direbrew's Dire Brew##12492
		.' Kill Coren  Direbrew |achieve 1683/3
	step
		goto Durotar,41.6,18.5
		.talk Tapper Swindlekeg##24711
		..turnin Direbrew's Dire Brew##12492
]])

ZygorGuidesViewer:RegisterInclude("H_Brewfest_Dailies",[[
	daily
	step
		goto Durotar,40.6,18.2
		.talk Cort Gorestein##24498
		..accept Bark for Drohn's Distillery!##11407 |daily |or
		.' Go to [Durotar,40.2,17.1]
		.talk Ja'ron##24499
		..accept Bark for T'chali's Voodoo Brewery!##11408 |daily |or
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
		goto Durotar,40.6,18.2
		.talk Cort Gorestein##24498
		..turnin Bark for Drohn's Distillery!##11407
	step
		goto Durotar,43.6,17.6
		.talk Ja'ron##24499
		..turnin Bark for T'chali's Voodoo Brewery!##11408
	step
		goto 40.8,17.5
		.' Click Dark Iron Mole Machine Wreckage |tip You have to defend the three kegs at these locations in order for it to show up.
		.' Click the Complimentary Brewfest Sampler here [40.2,17.4]
		.' Click the Complimentary Brewfest Sampler here [40.4,16.8]
		.' Thow the Sampler's at the Dark Iron Dwarves and the Mole Machines. |use Complimentary Brewfest Sampler##33096
		..accept This One Time, When I Was Drunk...##12192 |daily
	step
		goto 41.5,17.6
		.talk Bizzle Quicklift##27216
		..turnin This One Time, When I Was Drunk...##12192
		.' Earn the Down With the Dark Iron achievement |achieve 1683/4
	step
		goto 42.7,17.6
		.talk Ram Master Ray##24497
		..accept Brew For Brewfest##29393 |instant |daily
		.' On your Ram, run to Bok Dropcertain at [50.6,13.5] |tip Bok Dropcertain will throw you a keg when you get close.
		.' Deliver as many kegs as you can within 4 minutes |tip You get 2 Brewfest Prize Tokens for each keg you deliver, so this is a good way to get some Brewfest Prize Tokens to join the Brew of the Month Club.
]])

ZygorGuidesViewer:RegisterInclude("H_Brewfest_Achievements",[[
	step
		goto Durotar,41.0,18.3
		.talk Uta Roughdough##23603
		.buy The Essential Brewfest Pretzel##33043 |achieve 1185
	step
		'Click The Essential Brewfest Pretzels in your bags |use The Essential Brewfest Pretzel##33043
		.' Eat The Essential Brewfest Pretzels |achieve 1185/7
	step
		goto 40.2,17.7
		.talk Agnes Farwithers##23604
		.buy Spiced Onion Cheese##34065 |achieve 1185
	step
		'Click the Spiced Onion Cheese in your bags |use Spiced Onion Cheese##34065
		.' Eat the Spiced Onion Cheese |achieve 1185/4
	step
		goto 41.2,17.3
		.talk Bron##23605
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
		.' Click the The Golden Link in your bags |use The Golden Link##33026
		.' Eat The Golden Link |achieve 1185/8
		.' Earn The Brewfest Diet |achieve 1683/1
	step
		goto 40.3,17.9
		.talk Blix Fixwidget##24495
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
		.talk Blix Fixwidget##24495
		.buy "Brew of the Month" Club Membership Form##37599 |n
		.' Click the "Brew of the Month" Club Membership Form in your bags |use "Brew of the Month" Club Membership Form##37599
		..accept Brew of the Month Club##12306
		.' Buy the Wolpertinger's Tankard and click it to learn it. |achieve 1683/6
	step
		'Go inside Orgrimmar |goto Orgrimmar |noway |c
	step
		goto Orgrimmar,50.4,73.5
		.talk Ray'ma##27489
		..turnin Brew of the Month Club##12306
		.' Earn the Brew of the Month achievement |achieve 1683/2
	step
		'Congratulations, you are a Brewmaster! |achieve 1683
]])

--------------------------------------------------------------------------------------------------------------------------------------
-- Professions Cooking
--------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterInclude("H_Org_Dailies",[[
	step
		goto Orgrimmar,56.5,62.5
		.talk Marogg##42506
		..' You will only be able to complete 1 of the following quests per day
		..accept Careful, This Fruit Bites Back##26227 |daily |or
		..accept Crawfish Creole##26226 |daily |or
		..accept Even Thieves Get Hungry##26235 |daily |or
		..accept Everything Is Better with Bacon##26220 |daily |or
		..accept Stealing From Our Own##26234 |daily |or |only Troll
		..accept Stealing From Our Own##26233 |daily |or |only Orc,Scourge,Tauren,BloodElf,Goblin
	step
		goto 52.7,62.1
		.' Click Prickly Pear Fruits |tip They look like smaller cactus plants with red round fruit on top of them all around Orgrimmar.  They are usually found next to walls.
		.get 8 Prickly Pear Fruit |q 26227/1
	step
		goto 65.3,43.5
		.' Click Muddy Crawfish |tip They look like tiny lobsters in the water around this area.
		.get 10 Muddy Crawfish |q 26226/1
	step
		goto 66.2,39.4
		.' Get near the piles of wooden crates |tip They are all around Orgrimmar, so you can walk around and find them everywhere.
		.from Orgrimmar Thief##42594+ |tip They are stealthed next to the crates, trying to steal them.  They won't be next to every pile of crates, so you'll need to search for them.
		.get 3 Horde Infantry Rations |q 26235/1
	step
		'Go south outside to Durotar |goto Durotar |noway |c
	step
		goto Durotar,48.7,16.0
		.from Mature Swine##42504+, Wild Mature Swine##42859+
		.get 6 Swine Belly |q 26220/1
	step
		'Go north into Orgrimmar |goto Orgrimmar |noway |c |q 26220
	step
		goto Orgrimmar,40.3,80.0
		.' Click Barrels of Kezan Rice |tip They look like light brown wooden barrels around this area.
		.get 6 Barrel of Kezan Rice |q 26234/1
		only Troll
	step
		goto 34.5,69.8
		.' Click Barrels of Darkspear Rice |tip They looks like dark brown wooden barrels around this area.
		.get 6 Barrel of Darkspear Rice |q 26233/1
		only Orc,Scourge,Tauren,BloodElf,Goblin
	step
		goto 56.5,62.5
		.talk Marogg##42506
		..' You will only be able to complete 1 of the following quests per day
		..turnin Careful, This Fruit Bites Back##26227
		..turnin Crawfish Creole##26226
		..turnin Even Thieves Get Hungry##26235
		..turnin Everything Is Better with Bacon##26220
		..turnin Stealing From Our Own##26234 |only Troll
		..turnin Stealing From Our Own##26233 |only Orc,Scourge,Tauren,BloodElf,Goblin
]])

ZygorGuidesViewer:RegisterInclude("H_The_Northrend_Gourmet",[[
	step
	title +Wrath of the Lich King Recipes
		#include trainCooking
		.learn Dalaran Clam Chowder##58065 
		.learn Grilled Sculpin##45563 
		.learn Mammoth Meal##45549 
		.learn Pickled Fangtooth##45566 
		.learn Poached Nettlefish##45565 
		.learn Rhino Dogs##45553 
		.learn Roasted Worg##45552 
	step
		#include trainCooking
		.learn Shoveltusk Steak##45550 
		.learn Smoked Salmon##45564 
		.learn Worm Delight##45551 
		.learn Fisherman's Feast##42302 
		.learn Hot Buttered Trout##42305 
		.learn Great Feast##45554 
		.learn Black Jelly##64358 
		.learn Darkbrew Lager##88015 
		.learn Blackened Surprise##88006
	step
		#include rideto_borean
	step
		//alliance
		//goto 57.8,71.4
		//.talk Rollick MacKreel##26989
		//..accept Northern Cooking##13088
		//horde
		goto 42,54.2
		.talk Orn Tenderhoof##26972
		..accept Northern Cooking##13090
	step
		goto 45,47.4
		.from Wooly Rhino Matriarch##25487+,Wooly Rhino Calf##25488+
		.get 4 Chilled Meat##43013 |q 13090
		//alliance
		//.get 4 Chilled Meat##43013 |q 13088
	step
		//alliance
		//goto 57.8,71.4
		//.talk Rollick MacKreel##26989
		//..turnin Northern Cooking##13088
		//horde
		goto 42,54.2
		.talk Orn Tenderhoof##26972
		..turnin Northern Cooking##13090
		.learn Northern Stew##57421
	//Emotions food
	step
		goto 54.6,70.0
		.from Crypt Crawler##25227 |tip You can also farm any Northrend Dungeon for a higher drop percentage.
		.collect 1 Recipe: Bad Clams##43509
		.collect 1 Recipe: Last Week's Mammoth##43508
		.collect 1 Recipe: Haunted Herring##43510
		.collect 1 Recipe: Tasty Cupcake##43507
	step
		.learn Bad Clams##58523 |use Recipe: Bad Clams##43509
		.learn Haunted Herring##58525 |use Recipe: Haunted Herring##43510
		.learn Last Week's Mammoth##58521 |use Recipe: Last Week's Mammoth##43508
		.learn Tasty Cupcake##58512 |use Recipe: Tasty Cupcake##43507
	step
		fly Nesingwary Base Camp
	step
		goto 26.8,60.1
		.talk Grimbooze Thunderbrew##29157
		..accept Some Make Lemonade, Some Make Liquor##12634
	step
		goto 37.6,61.8
		.click Sturdy Vine##8129
		.' Click the fruit that falls to the ground or talk to the dwarf that falls
		.get Orange |q 12634/1
		.get 2 Banana Bunch|q 12634/2
		.get Papaya |q 12634/3
	step
		goto 26.8,60.1
		.talk Grimbooze Thunderbrew##29157
		..turnin Some Make Lemonade, Some Make Liquor##12634
		..accept Still At It##12644
	step
		goto 26.7,60
		.talk "Tipsy" McManus##28566
		..'Tell him you are ready to start the distillation process
		.' Click the items on the ground or on the machine that he yells at you during the process, it's random
		.' Click the barrel on the ground when the process is done
		.get Thunderbrew's Jungle Punch|q 12644/1
	step
		goto 26.8,60.1
		.talk Grimbooze Thunderbrew##29157
		..turnin Still At It##12644
		..accept The Taste Test##12645
	step
		goto 27.4,59.4
		.' Use your Jungle Punch Sample on Hadrius Harlowe|use Jungle Punch Sample##38697|tip Standing next to a tiki torch.
		.' Complete Hadrius' taste test |q 12645/2
	step
		goto 27.1,58.6
		.' Use your Jungle Punch Sample on Hemet Nesingwary|use Jungle Punch Sample##38697|tip Standing in front of a tent.
		.' Complete Hemet's taste test |q 12645/1
	step
		goto 26.8,60.1
		.talk Grimbooze Thunderbrew##29157
		..turnin The Taste Test##12645
	step
		goto Sholazar Basin,25.3,58.5
		.talk The Spirit of Gnomeregan##28037
		.' Fly to Dalaran |goto Dalaran |noway |c
	step
		goto Dalaran,43.2,24.4
		.talk Washed-Up Mage##32516
		..accept Fletcher's Lost and Found##13571 |instant
	step
		'You can use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
		'You can use the Dalaran Cooking Dailies section of this guide to earn Dalaran Cooking Awards to buy the following recipes: |tip You will need a total of 74 Dalaran Cooking Awards to get all of the recipes
		goto Dalaran,70.1,38.2 
		.talk Misensi##31031 
		.buy 1 Recipe: Mega Mammoth Meal##43018 
		.buy 1 Recipe: Tender Shoveltusk Steak##43019 
		.buy 1 Recipe: Spiced Worm Burger##43020 
		.buy 1 Recipe: Very Burnt Worg##43021 
		.buy 1 Recipe: Worg Tartare##44954 
		.buy 1 Recipe: Mighty Rhino Dogs##43022 
		.buy 1 Recipe: Poached Northern Sculpin##43023 //50
		.buy 1 Recipe: Firecracker Salmon##43024 
		.buy 1 Recipe: Spicy Blue Nettlefish##43025 
		.buy 1 Recipe: Imperial Manta Steak##43026 
		.buy 1 Recipe: Spicy Fried Herring##43027 
		.buy 1 Recipe: Rhinolicious Wormsteak##43028
	step
		'Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
		.learn Mega Mammoth Meal##45555 |use Recipe: Mega Mammoth Meal##43018 
		.learn Tender Shoveltusk Steak##45556 |use Recipe: Tender Shoveltusk Steak##43019
		.learn Spiced Worm Burger##45557 |use Recipe: Spiced Worm Burger##43020
		.learn Very Burnt Worg##45558 |use Recipe: Very Burnt Worg##43021
		.learn Worg Tartare##62350 |use Recipe: Worg Tartare##44954
		.learn Mighty Rhino Dogs##45559 |use Recipe: Mighty Rhino Dogs##43022
		.learn Poached Northern Sculpin##45567 |use Recipe: Poached Northern Sculpin##43023
		.learn Firecracker Salmon##45568 |use Recipe: Firecracker Salmon##43024
		.learn Spicy Blue Nettlefish##45571 |use Recipe: Spicy Blue Nettlefish##43025
		.learn Imperial Manta Steak##45570 |use Recipe: Imperial Manta Steak##43026
		.learn Spicy Fried Herring##57433 |use Recipe: Spicy Fried Herring##43027
		.learn Rhinolicious Wormsteak##57434 |use  Recipe: Rhinolicious Wormsteak##43028
	step
		'Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
		'Use the Dalaran Cooking Dailies section of this guide to earn Dalaran Cooking Awards to buy the following recipes: |tip You will need a total of 74 Dalaran Cooking Awards to get all of the recipes
		goto Dalaran,70.1,38.2 
		.talk Misensi##31031 
		.buy 1 Recipe: Critter Bites##43029 
		.buy 1 Recipe: Hearty Rhino##43030 
		.buy 1 Recipe: Snapper Extreme##43031 
		.buy 1 Recipe: Blackened Worg Steak##43032 
		.buy 1 Recipe: Cuttlesteak##43033 
		.buy 1 Recipe: Spiced Mammoth Treats##43034 
		.buy 1 Recipe: Blackened Dragonfin##43035 
		.buy 1 Recipe: Dragonfin Fillet##43036 
		.buy 1 Recipe: Tracker Snacks##43037 
		.buy 1 Recipe: Gigantic Feast##43505 
		.buy 1 Recipe: Small Feast##43506 
		.buy 1 Recipe: Fish Feast##43017 
	step
		'Use the Professions section of this guide to get to 450 cooking |only if skill("Cooking")<450
		.learn Critter Bites##57435 |use Recipe: Critter Bites##43029
		.learn Hearty Rhino##57436 |use Recipe: Hearty Rhino##43030
		.learn Snapper Extreme##57437 |use Recipe: Snapper Extreme##43031
		.learn Blackened Worg Steak##57438 |use Recipe: Blackened Worg Steak##43032
		.learn Cuttlesteak##57439 |use Recipe: Cuttlesteak##43033
		.learn Spiced Mammoth Treats##57440 |use Recipe: Spiced Mammoth Treats##43034
		.learn Blackened Dragonfin##57441 |use Recipe: Blackened Dragonfin##43035
		.learn Dragonfin Fillet##57442 |use Recipe: Dragonfin Fillet##43036
		.learn Tracker Snacks##57443 |use Recipe: Tracker Snacks##43037
		.learn Gigantic Feast##58527 |use Recipe: Gigantic Feast##43505
		.learn Small Feast##58528 |use Recipe: Small Feast##43506 
		.learn Fish Feast##57423 |use Recipe: Fish Feast##43017
	step
		'You can either buy these from the Auction House or farm them
		.collect 1 Barrelhead Goby##41812
		.collect 4 Bonescale Snapper##41808
		.collect 5 Chilled Meat##43013
		.collect 8 Chunk o' Mammoth##34736
		.collect 2 Deep Sea Monsterbelly##41800
		.collect 2 Dragonfin Angelfish##41807
		.collect 1 Essence of Undeath##12808
		.collect 3 Fangtooth Herring##41810
		.collect 6 Glacial Salmon##41809
		.collect 2 Imperial Manta Ray##41809
		.collect 1 Moonglow Cuttlefish##41801
		.collect 1 Mote of Shadow##22577
		.collect 4 Musselback Sculpin##41806
		.collect 6 Nettlefish##51813
		.collect 1 Northern Egg##43501
		.collect 24 Northern Spices##43007
		.collect 7 Rhino Meat##43012
		.collect 3 Rockfin Grouper##41803
		.collect 1 Savory Snowplum##35948
		.collect 5 Shoveltusk Flank##43009
		.collect 3 Succulent Clam Meat##36782
		.collect 2 Tundra Berries##35949
		.collect 5 Worg Haunch##43011
	step
		goto Orgrimmar,56.5,61.2
		.talk Suja##46708
		.buy 2 Simple Flour##30817
	step
		goto Orgrimmar,50.8,74.6
		.talk Shan'ti##3342
		.collect 2 Tundra Berries##35949
	step
		'Build a Basic Campfire |cast Basic Campfire##818
		.create Bad Clams##58523,Cooking,1 total
		.' Cook Bad Clams |achieve 1777/1
		.' Eat Bad Clams |achieve 1780/1 |use Bad Clams##43491
	step
		.create Baked Manta Ray##45569,Cooking,1 total
		.' Cook Baked Manta Ray |achieve 1777/2
	step
		.create Blackened Dragonfin##57441,Cooking,1 total
		.' Cook Blackened Dragonfin |achieve 1777/3
	step
		.create Blackened Worg Steak##57438,Cooking,1 total
		.' Cook Blackened Worg Steak |achieve 1777/4
	step
		.create Critter Bites##57435,Cooking,1 total
		.' Cook Critter Bites |achieve 1777/5
	step
		.create Cuttlesteak##57439,Cooking,1 total
		.' Cook Cuttlesteak |achieve 1777/6
	step
		.create Dalaran Clam Chowder##58065,Cooking,1 total
		.' Cook Dalaran Clam Chowder |achieve 1777/7
	step
		.create Dragonfin Filet##57442,Cooking,1 total
		.' Cook Dragonfin Filet |achieve 1777/8
	step
		.create Firecracker Salmon##45568,Cooking,1 total
		.' Cook Firecracker Salmon |achieve 1777/9
	step
		.create Fish Feast##57423,Cooking,1 total
		.' Cook Fish Feast |achieve 1777/10
	step
		.create Gigantic Feast##58527,Cooking,1 total
		.' Cook Gigantic Feast |achieve 1777/11
	step
		.create Great Feast##45554,Cooking,1 total
		.' Cook Great Feast |achieve 1777/12
	step
		.create Grilled Bonescale##45561,Cooking,1 total
		.' Cook Grilled Bonescale |achieve 1777/13
	step
		.create Grilled Sculpin##45563,Cooking,1 total
		.' Cook Grilled Sculpin |achieve 1777/14
	step
		.create Haunted Herring##58525,Cooking,1 total
		.' Cook Haunted Herring |achieve 1777/15
		.' Eat Haunted Herring |achieve 1780/2|use Haunted Herring##43492
	step
		.create Hearty Rhino##57436,Cooking,1 total
		.' Cook Hearty Rhino |achieve 1778/16
	step
		.create Imperial Manta Steak##45570,Cooking,1 total
		.' Cook Imperial Manta Steak |achieve 1778/17
	step
		.create Kungaloosh##53056,Cooking,1 total
		.' Cook Kungaloosh |achieve 1778/18
	step
		.create Last Week's Mammoth##58521,Cooking,1 total
		.' Cook Last Week's Mammoth |achieve 1778/19
		.' Eat Last Week's Mammoth |achieve 1780/3 |use Last Week's Mammoth##43488
	step
		.create Mammoth Meal##45549,Cooking,1 total
		.' Cook Mammoth Meal |achieve 1778/20
	step
		.create Mega Mammoth Meal##45555,Cooking,1 total
		.' Cook Mega Mammoth Meal |achieve 1778/21
	step
		.create Mighty Rhino Dogs##45559,Cooking,1 total
		.' Cook Mighty Rhino Dogs |achieve 1778/22
	step
		.create Northern Stew##57421,Cooking,1 total
		.' Cook Northern Stew |achieve 1778/23
	step
		.create Pickeled Fangtooth##45566,Cooking,1 total
		.' Cook Pickeled Fangtooth |achieve 1778/24
	step
		.create Poached Nettlefish##45565,Cooking,1 total
		.' Cook Poached Nettlefish |achieve 1778/25
	step
		.create Poached Northern Sculpin##45567,Cooking,1 total
		.' Cook Poached Northern Sculpin |achieve 1778/26
	step
		.create Rhino Dogs##45553,Cooking,1 total
		.' Cook Rhino Dogs |achieve 1778/27
	step
		.create Rhinolicious Wormsteak##57434,Cooking,1 total
		.' Cook Rhinolicious Wormsteak |achieve 1778/28
	step
		.create Roasted Worg##45552,Cooking,1 total
		.' Cook Roasted Worg |achieve 1778/29
	step
		.create Sauteed Goby##45562,Cooking,1 total
		.' Cook Sauteed Goby |achieve 1778/30
	step
		.create Shoveltusk Steak##45550,Cooking,1 total
		.' Cook Shoveltusk Steak |achieve 1779/31
	step
		.create Small Feast##58528,Cooking,1 total
		.' Cook Small Feast |achieve 1779/32
	step
		.create Smoked Rockfin##45560,Cooking,1 total
		.' Cook Smoked Rockfin |achieve 1779/33
	step
		.create Smoked Salmon##45564,Cooking,1 total
		.' Cook Smoked Salmon |achieve 1779/34
	step
		.create Snapper Extreme##57437,Cooking,1 total
		.' Cook Snapper Extreme |achieve 1779/35
	step
		.create Spiced Mammoth Treats##57440,Cooking,1 total
		.' Cook Spiced Mammoth |achieve 1779/36
	step
		.create Spiced Worm Burger##45557,Cooking,1 total
		.' Cook Spiced Worm Burger |achieve 1779/37
	step
		.create Spicy Blue Nettlefish##45571,Cooking,1 total
		.' Cook Spicy Blue Nettlefish |achieve 1779/38
	step
		.create Spicy Fried Herring##57433,Cooking,1 total
		.' Cook Spicy Fried Herring |achieve 1779/39
	step
		.create Tasty Cupcake##58512,Cooking,1 total
		.' Cook Tasty Cupcake |achieve 1779/40
		.' Eat Tasty Cupcake |achieve 1780/4 |use Tasty Cupcake##43490
	step
		.create Tender Shoveltusk Steak##45556,Cooking,1 total
		.' Cook Tender Shoveltusk Steak |achieve 1779/41
	step
		.create Tracker Snacks##57443,Cooking,1 total
		.' Cook Tracker Snacks |achieve 1779/42
	step
		.create Very Burnt Worg##45558,Cooking,1 total
		.' Cook Very Burnt Worg |achieve 1779/43
	step
		.create Worg Tartare##62350,Cooking,1 total
		.' Cook Worg Tartare |achieve 1779/44
	step
		.create Worm Delight##45551,Cooking,1 total
		.' Cook Worm Delight |achieve 1779/45
		.' Cook 45 of the Northrend recipes |achieve 1779
	step
		'Congratulations! You've earned the Northrend Gourment achievement!
]])

ZygorGuidesViewer:RegisterInclude("H_The_Outland_Gourmet",[[
	step
	title +The Burning Crusade Recipes
		#include trainCooking
		.learn Stewed Trout##42296 		
		.learn Fisherman's Feast##42302 
		.learn Hot Buttered Trout##42305 
	//300 Buzzard Bites TBC
	step
		goto Hellfire Peninsula,49.2,74.8
		.talk Lagassi##19344
		..accept Ravager Egg Roundup##9349
	step
		goto 39.0,88.4
		.from Razorfang Hatchling##16932+,Razorfang Ravager##16933+
		.get 12 Ravager Egg##23217 |q 9349/1
	step
		goto Hellfire Peninsula,49.2,74.8
		.talk Lagassi##19344
		..turnin Ravager Egg Roundup##9349
	step
		goto Hellfire Peninsula,49.2,74.8
		.talk Lagassi##19344
		..accept Helboar, the Other White Meat##9361
	step
		goto 51.2,69.8
		.from Deranged Helboar##16863
		.collect 8 Tainted Helboar Meat##23270
	step
		'Use the Purification Mixture on the Tainted Meat |use Purification Mixture##23268
		.get 8 Purified Helboar Meat##23248 |q 9361/1
	step
		goto Hellfire Peninsula,49.2,74.8
		.talk Lagassi##19344
		..turnin Helboar, the Other White Meat##9361
	step
		goto Hellfire Peninsula,49.2,74.8
		.talk Lagassi##19344
		..accept Smooth as Butter##9356
	step
		goto 61.0,66.6
		.from Bonestripper Buzzard##16972
		.get 12 Plump Buzzard Wing |q 9356/1
	step
		goto Hellfire Peninsula,49.2,74.8
		.talk Lagassi##19344
		..accept Smooth as Butter##9356
		.collect 1 Recipe: Buzzard Bites##27684 |n
		.learn Buzzard Bites##33279 |use Recipe: Buzzard Bites##27684
		//300 Ravager Dog TBC
	step
		//alliance: 
		//goto Hellfire Peninsula,54.2,63.6
		//.talk Sid Limbardi##16826
		//horde:
		goto Hellfire Peninsula,54.6,41.0
		.talk Cookie One-Eye##16585
		.buy 1 Recipe: Ravager Dog##27688 |n
		.learn Ravager Dog##33284 |use Recipe: Ravager Dog##27688
	//300 Feltail Delight TBC blackened trout
	step
		//alliance:
		//goto Zangarmarsh,42.2,27.8
		//.talk Doba##20028
		//horde:
		goto Zangarmarsh,85.2,54.6
		.talk Zurai##18011
		.buy 1 Recipe Feltail Delight##27695 |n
		.learn Feltail Delight##33291 |use Recipe Feltail Delight##27695
	step
		|fly Zabra'jin
	step
		goto 31.6,49.2
		.talk Gambarinka##18015
		.buy Recipe: Blackened Trout##27694 |n
		.learn Blackened Trout##33290 |use Recipe: Blackened Trout##27694 
	//300 Clam Bar TBC
	step
		goto Zangarmarsh,17.8,51.2
		.talk Mycah##18382
		.buy 1 Recipe: Clam Bar##30156 |n
		.learn Clam Bar##36210 |use Recipe: Clam Bar##30156
	//310 Blackened Sporefish TBC
	step
		//both
		goto Zangarmarsh,78.0,66.0
		.talk Juno Dufrain##18911
		.buy 1 Recipe: Blackened Sporefish##27696 |n
		.learn Blackened Sporefish##33292 |use Recipe: Blackened Sporefish##27696
	//310 Sporeling Snack TBC --help
	//320 Grilled Mudfish TBC, poached bluefish, talbuk steak. roasted clefthoof
	step
		//alliance
		//goto Nagrand,56.2,73.2
		//.talk Uriku##20096
		//horde
		goto Nagrand,58.0,35.6 
		.talk Nula the Butcher##20097
		.buy 1 Recipe: Grilled Mudfish##27697
		.buy 1 Recipe: Talbuk Steak##27693
		.buy 1 Recipe: Poached Bluefish##27698
		.buy 1 Recipe: Roasted Clefthoof##27691
	step
		.learn Talbuk Steak##33289 |use Recipe: Talbuk Steak##27693
		.learn Grilled Mudfish##33293 |use Recipe: Grilled Mudfish##27697
		.learn Poached Bluefish##33294 |use Recipe: Poached Bluefish##27698
		.learn Roasted Clefthoof##33287 |use Recipe: Roasted Clefthoof##27691
	//325 Golden Fish Sticks TBC + Spicy Crawdad TBC
	step
		//alliance
		//goto Terokkar Forest,56.6,53.2
		//.talk Biribi##19296
		//horde
		goto Terokkar Forest,48.8,46.0
		.talk Rungor##18960
		.buy 1 Recipe: Golden Fish Sticks##27699 |n
		.buy 1 Recipe: Spicy Crawdad##27700 |n
		.learn Golden Fish Sticks##33295 |use Recipe: Golden Fish Sticks##27699
		.learn Spicy Crawdad##33296 |use Recipe: Spicy Crawdad##27700 
	//315 Blackened Basilisk TBC + warp burger
	step
		//allaince
		//goto Terokkar Forest,55.8,53.0
		//.talk Supply Officer Mills##19038
		//horde
		goto Terokkar Forest,48.8,45.0
		.talk Inkeeper Grilka##18957
		.buy 1 Recipe Blackened Basilisk##27690 |n
		.buy 1 Recipe: Warp Burger##27692 |n
		.learn Blackened Basilisk##33286 |use Recipe Blackened Basilisk##27690
		.learn Warp Burger##33288 |use Recipe: Warp Burger##27692
	//325 Warp Burger TBC
	//335 Crunchy Serpent TBC + Mok'Nathal Shortribs TBC
	step
		|fly Evergrove
	step
		goto Blade's Edge Mountains,62.4,40.2
		.talk Xerintha Ravenoak##20916
		.buy 1 Recipe: Mok'Nathal Shortribs##31675 |n
		.buy 1 Recipe: Crunchy Serpent##31674 |n
		.learn Mok'Nathal Shortribs##38867 |use Recipe: Mok'Nathal Shortribs##31675
		.learn Crunchy Serpent##38868 |use Recipe: Crunchy Serpent##31674
	step
		|fly Shattrath
	step
		'Use the Shattrath Cooking Dailies section of this guide to get these recipes: |tip It's not always guarenteed to come from these daily prizes so be patient
		'Make sure to choose the Crate of Meat
		.collect 1 Recipe: Spicy Hot Talbuk##33873
	step
		.learn Spicy Hot Talbuk##43765 |use Recipe: Spicy Hot Talbuk##33873
	//300 Broiled Bloodfin TBC + Skullfish Soup TBC
	step
		//Barrel of fish 
		'Use the Shattrath Cooking Dailies section of this guide to get these recipes: |tip It's not always guarenteed to come from these daily prizes so be patient
		'Make sure to choose the Barrel of Fish
		.collect 1 Recipe: Broiled Bloodfin##33869
		.collect 1 Recipe: Skullfish Soup##33870
	step
		.learn Broiled Bloodfin##43761 |use Recipe: Broiled Bloodfin##33869
		.learn Skullfish Soup##43707 |use Recipe: Skullfish Soup##33870
	//300 Kibler's Bits TBC
	step
		'Use the Shattrath Cooking Dailies section of this guide to get this recipe: |tip It's not always guarenteed to come from these daily prizes so be patient
		'You can choose either the Crate of Meat of Barrel of Fish 
		.collect 1 Recipe: Kibler's Bits##33875
	step
		.learn Kibler's Bits##43772 |use Recipe: Kibler's Bits##33875
	//300 Stormchops TBC
	step
		'Use the Shattrath Cooking Dailies or Dalaran Cooking Dailies section of this guide to get these recipes: |tip It's not always guarenteed to come from these daily prizes so be patient
		'You can choose either Crate of Meat, Barrel of Fish, or Small Spice Bag
		.collect 1 Recipe: Stormchops##33871
		.collect 1 Recipe: Delicious Chocolate Cake##33925
	step
		.learn Stormchops##43758 |use Recipe: Stormchops##33871
		.learn Delicious Chocolate Cake##43779 |use Recipe: Delicious Chocolate Cake##33925
	step
		'You can either purchase these items from the Acution House or farm them
		.collect 8 Small Eggs##6889
		.collect 2 Buzzard Meat##27671
		.collect 2 Clefthoof Meat##27678
		.collect 2 Jaggal Clam Meat##24477
		.collect 2 Talbuk Venison##27682
		.collect 1 Chunk o' Basilisk##27677
		.collect 1 Raptor Ribs##31670
		.collect 1 Ravager Flesh##27674
		.collect 1 Serpent Flesh##31671
		.collect 1 Strange Spores##27676
		.collect 1 Warped Flesh##27681
		.collect 3 Mageroyal##785
	step
		'You can either purchase these items from the Auction House or fish for them
		.collect 2 Barbed Gill Trout##27422
		.collect 1 Bloodfin Catfish##33823
		.collect 1 Crescent-Tail Skullfish##33824
		.collect 1 Enormous Barbed Gill Trout##27516
		.collect 1 Figluster's Mudfish##27435
		.collect 1 Golden Darter##27438
		.collect 1 Huge Spotted Feltail##27515
		.collect 1 Icefin Bluefish##27437
		.collect 1 Lightning Eel##13757
		.collect 1 Spotted Feltail##27425
		.collect 1 Zangarian Sporefish##27429
	step
		goto Orgrimmar,50.8,74.6
		.talk Shan'ti##3342
		.buy 5 Goldenbark Apple##4539
	step
		goto Orgrimmar,53.6,78.8
		.talk Innkeeper Gryshka##6929
		.buy 4 Ice Cold Milk##1179
	step
		goto Orgrimmar,56.5,61.2
		.talk Suja##46708
		.buy 8 Simple Flour##30817
		.buy 4 Mild Spices##2678 
	step
		fly Fizzle & Pozzik's Speedbarge
	step
		goto 76.5,74.8
		.talk Daisy##40832
		.buy 1 Flask of Port##2593
	step
		'Build a Basic Campfire |cast Basic Campfire##818
		.create Delicious Chocolate Cake##43779,Cooking,1 total
		.' Cook Delicious Chocolate Cake |achieve 1800/1
	step
		.create Blackened Trout##33290,Cooking,1 total
		.' Cook Blackened Trout |achieve 1800/2
	step
		.create Buzzard Bites##33279,Cooking,1 total
		.' Cook Buzzard Bites |achieve 1800/3
	step
		.create Clam Bar##36210,Cooking,1 total
		.' Cook Clam Bar |achieve 1800/4
	step
		.create Feltail Delight##33291,Cooking,1 total
		.' Cook Feltail Delight |achieve 1800/5
	step
		.create Ravager Dog##33284,Cooking,1 total
		.' Cook Ravager Dog |achieve 1800/6
	step
		.create Stormchops##43758,Cooking,1 total
		.' Cook Stormchops |achieve 1800/7
	step
		.create Blackened Sporefish##33292,Cooking,1 total
		.' Cook Blackened Sporefish |achieve 1800/8
	step
		.create Blackened Basilisk##33286,Cooking,1 total
		.' Cook Blackened Basilisk |achieve 1800/9
	step
		.create Grilled Mudfish##33293,Cooking,1 total
		.' Cook Grilled Mudfish |achieve 1800/10
	step
		.create Poached Bluefish##33294,Cooking,1 total
		.' Cook Poached Bluefish |achieve 1800/11
	step
		.create Broiled Bloodfin##43761,Cooking,1 total
		.' Cook Broiled Bloodfin |achieve 1800/12
	step
		.create Golden Fish Sticks##33295,Cooking,1 total
		.' Cook Golden Fish Sticks |achieve 1800/13
	step
		.create Kibler's Bits##43772,Cooking,1 total
		.' Cook Kibler's Bits |achieve 1800/14
	step
		.create Roasted Clefthoof##33287,Cooking,1 total
		.' Cook Roasted Clefthoof |achieve 1800/15
	step
		.create Talbuk Steak##33289,Cooking,1 total
		.' Cook Talbuk Steak |achieve 1800/16
	step
		.create Warp Burger##33288,Cooking,1 total
		.' Cook Warp Burger |achieve 1800/17
	step
		.create Crunchy Serpent##38868,Cooking,1 total
		.' Cook Crunchy Serpent |achieve 1800/18
	step
		.create Mok'Nathal Shortribs##38867,Cooking,1 total
		.' Cook Mok'Nathal |achieve 1800/19
	step
		.create Fisherman's Feast##42302,Cooking,1 total
		.' Cook Fisherman's Feast |achieve 1800/20
	step
		.create Hot Buttered Trout##42305,Cooking,1 total
		.' Cook Hot Buttered Trout |achieve 1800/21
	step
		.create Skullfish Soup##43707,Cooking,1 total
		.' Cook Skullfish Soup |achieve 1800/22
	step
		.create Spicy Crawdad##33296,Cooking,1 total
		.' Cook Spicy Crawdad |achieve 1800/23
	step
		.create Spicy Hot Talbuk##43765,Cooking,1 total
		.' Cook Spicy Hot Talbuk |achieve 1800/24
	step
		.create Stewed Trout##42296,Cooking,1 total
		.' Cook Stewed Trout |achieve 1800/25
	step
		.' Cook each of the Outland cooking recipes |achieve 1800
	step
		Congratulations! You're earned The Outland Gourmet achievement!
]])

ZygorGuidesViewer:RegisterInclude("H_The_Cake_is_not_a_lie",[[ 
	description Bake a Delicious Chocolate Cake. 
	author support@zygorguides.com
	condition end achieved(877)
	step
		'Complete Cooking dailies in Shattrath City:
		.collect Recipe: Delicious Chocolate Cake##33925 |n |tip You are not guaranteed to get this recipe - it is random, so try to have patience.
		.' Click the Recipe: Delicious Chocolate Cake |use Recipe: Delicious Chocolate Cake##33925
		.learn Delicious Chocolate Cake##43779
	step
		goto Orgrimmar,54.9,78.2
		.talk Barkeep Morag##5611
		.buy 4 Ice Cold Milk##1179
	step
		goto 56.4,61.3
		.talk Suja##46708
		.buy 8 Simple Flour##30817
		.buy 4 Mild Spices##2678
	step
		fly Fizzle & Pozzik's Speedbarge
	step
		goto 76.5,74.8
		.talk Daisy##40832
		.buy 1 Flask of Port##2593
	step
		'From the Auction House:
		.buy 3 Mageroyal##785
		.buy 8 Small Egg##6889 |next "HaveEggs"
		.' Or...
		.' Click this line if you would rather farm the Small Eggs |script ZGV:GotoStep("farm")
	step
		|fly Northern Rocketway Terminus
	step
		goto Azshara,49.8,15.6
		.from Thunderhead Hippogryph##6375+
		.collect 8 Small Egg##6889
	step
	label "HaveEggs"
		'Build a Basic Campfire |cast Basic Campfire##818
		.create Delicious Chocolate Cake##43779,Cooking,1 total |n
		.' Earn The Cake Is Not A Lie Achievement |achieve 877
	step
		'Congratulations!  You've earned The Cake Is Not A Lie Achievement.
]])

ZygorGuidesViewer:RegisterInclude("H_Kickin'_It_Up_a_Notch",[[ 
	step
		#include "darkportal"
	step
		|fly Shattrath
	step
	label "warning"
		.' The following quests are random and you can only do one per day. Click to proceed. |confirm always
	step
	label "hub"
		goto Shattrath City,61.8,15.6
		.talk The Rokk##24393
		.' You will only be able to accept one of these daily quests per day
		..accept Soup for the Soul##11381 |daily |or
		..accept Super Hot Stew##11379 |daily |or
		..accept Manalicious##11380 |daily |or
		..accept Revenge is Tasty##11377 |daily |or
	step
		|fly Garadar |q 11381
	step
		goto Nagrand,58.0,35.6
		.talk Nula the Butcher##20097
		.buy Recipe: Roasted Clefthoof##27691 |n
		.' Click the Recipe: Roasted Clefthoof in your bags |use Recipe: Roasted Clefthoof##27691
		.learn Roasted Clefthoof##33287 |q 11381
	step
		goto Nagrand,47.0,64.7
		.from Clefthoof##18205+, Clefthoof Calf##19183+
		.collect 4 Clefthoof Meat##27678 |q 11381
		.' You can find more Clefthooves at [45.5,72.7]
	step
		.' Build a Basic Campfire |cast Basic Campfire##818
		.create Roasted Clefthoof##33287,Cooking,4 total |q 11381
	step
		goto 25.9,59.5
		.' Use your Cooking Pot to Cook up some Spiritual Soup |use Cooking Pot##33851
		.' Cook a Spiritual Soup |q 11381/1
	step
		|fly Thunderlord Stronghold |q 11379
	step
		goto Blade's Edge Mountains,62.5,40.3
		.talk Xerintha Ravenoak##20916
		.buy Recipe: Mok'Nathal Shortribs##31675 |n
		.' Click the Recipe: Mok'Nathal Shortribs in your bags |use Recipe: Mok'Nathal Shortribs##31675
		.learn Mok'Nathal Shortribs##38867 |q 11379
		.buy Recipe: Crunchy Serpent##31674 |n
		.' Click the Recipe: Crunchy Serpent in your bags |use Recipe: Mok'Nathal Shortribs##31674
		.learn Crunchy Serpent##38868 |q 11379
	step
		goto Blade's Edge Mountains,49.6,46.2
		.from Daggermaw Blackhide##22052+, Bladespire Raptor##20728+
		.collect 4 Raptor Ribs##31670+ |q 11379
	step
		goto 68.2,63.2
		.from Scalewing Serpent##20749+, Felsworn Scalewing##21123+
		.collect 1 Serpent Flesh##31671 |q 11379
	step
		.' Build a Basic Campfire |cast Basic Campfire##818
		.create 2 Mok'Nathal Shortribs##38867,Cooking,2 total |q 11379
	step
		.' Build a Basic Campfire |cast Basic Campfire##818
		.create 1 Crunchy Serpent##38868,Cooking,1 total |q 11379
	step
		goto 29.0,84.5
		.from Abyssal Flamebringer##19973+
		.' Use your Cooking Pot next to the Abyssal Flamebringer corpse to Cook up some Demon Broiled Surprise |use Cooking Pot##33852
		.get Demon Broiled Surprise |q 11379/1
	step
		|fly Area 52 |q 11380
	step
		goto Netherstorm,45.6,54.2
		.click Mana Berry Bush##28+
		.get 15 Mana Berry##33849+ |q 11380/1
	step
		'Go outside to Terokkar Forest |goto Terokkar Forest |q 11377
	step
		goto Terokkar Forest,48.8,45.0
		.talk Innkeeper Grilka##18957
		.buy Recipe: Warp Burger##27692 |n
		.' Click the Recipe: Warp Burger in your bags |use Recipe: Warp Burger##27692
		.learn Warp Burger##33288 |q 11377
	step
		goto 64.0,83.5
		.from Blackwind Warp Chaser##23219+
		.collect 3 Warped Flesh##27681 |q 11377
	step
		goto 67.6,74.7
		.from Monstrous Kaliri##23051+ |tip They fly around in the sky close to the tree outposts and bridges.
		.collect Giant Kaliri Wing##33838 |q 11377
	step
		goto 25.9,59.5
		.' Build a Basic Campfire |cast Basic Campfire##818
		.create Warp Burger##33288,Cooking,3 total |q 11377
		.' Use your Cooking Pot to Cook up some Kaliri Stew |use Cooking Pot##33837
		.create Kaliri Stew##43718,Cooking,1 total |q 11377/1
	step
		|fly Shattrath
	step
		goto Shattrath City,61.8,15.6
		.talk The Rokk##24393
		..turnin Soup for the Soul##11381
		..turnin Super Hot Stew##11379
		..turnin Manalicious##11380 
		..turnin Revenge is Tasty##11377
	step
		'You've completed all the dailies you can do today. Click to go back to the dailies hub. |confirm |next "-warning" |only if not step:Find("+check"):IsComplete()
		'Checking achievements |next |only if default

	step
	label "check"
		.' Daily Completed "Revenge is Tasty" |achieve 906/1
		.' Daily Completed "Super Hot Stew" |achieve 906/2
		.' Daily Completed "Manalicious" |achieve 906/3
		.' Daily Completed "Soup for the Soul" |achieve 906/4
		.' Earn the Kickin' It Up a Notch Achievement |achieve 906
	step
		'Congratulations!  You've earned "Kickin' It Up a Notch" Achievement.
]])

ZygorGuidesViewer:RegisterInclude("H_Our_Daily_Bread",[[
	step
	title +Dalaran Cooking Dailies
		goto Dalaran,70.0,39.0
		.talk Awilo Long'gomba##29631
		.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day, and they all require you have 350+ Cooking skill:
		..accept Cheese for Glowergold##13115 |or
		..accept Convention at the Legerdemain##13113 |or
		..accept Infused Mushroom Meatloaf##13112 |or
		..accept Mustard Dogs!##13116 |or
		..accept Sewer Stew##13114 |or
	step
		goto 54.7,31.5
		.' Click the Aged Dalaran Limburger |tip They look like piles and pieces of yellow cheese on the tables inside this building.
		.collect 1 Aged Dalaran Limburger##43137 |q 13115
		.' Click the Half Full Glasses of Wine |tip They look like small blue-ish wine glasses sitting on tables, and on the ground, inside this building.  They spawn in random locations.
		.collect 6 Half Full Dalaran Wine Glass##43138 |q 13115
		.' You can find more Half Full Glasses of Wine inside the building at [49.4,39.3]
	step
		'Use your Empty Cheese Serving Platter in your bags |use Empty Cheese Serving Platter##43139
		.get 1 Wine and Cheese Platter |q 13115/1
	step
		goto 55.0,30.8
		.' Click a Full Jug of Wine |tip They look like small blue-ish green jugs sitting on the ground inside this building.  They spawn in random locations.
		.get 1 Jug of Wine |q 13113/2
	step
		goto Dragonblight,30.0,49.8
		.from Rabid Grizzly##26643+, Blighted Elk##26616+
		.collect 10 Chilled Meat##43013 |q 13113
	step
		'Create a basic campfire |cast Basic Campfire##818
		.create 4 Northern Stew##57421,Cooking,4 total
		.get 4 Northern Stew |q 13113/1
	step
		'The entrance to the Dalaran sewers starts here |goto Dalaran,60.2,47.7,0.3 |c |q 13112
	step
		goto 59.5,43.6
		.from Underbelly Rat##32428+
		.collect 4 Infused Mushroom##43100 |q 13112
	step
		'Leave the Dalaran sewers |goto Dalaran,60.2,47.7,0.3|c|q 13112
	step
		goto Dragonblight,30.0,49.8
		.from Rabid Grizzly##26643+, Blighted Elk##26616+
		.collect 2 Chilled Meat##43013 |q 13112
	step
		'Create a basic campfire |cast Basic Campfire##818
		'Use your Meatloaf Pan in your bags |use Meatloaf Pan##43101 |tip You will need a cooking fire to do this.
		.get 1 Infused Mushroom Meatloaf |q 13112/1
	step
		goto Dalaran,67.7,40.0
		.click the Wild Mustard##8340
		.collect 4 Wild Mustard##43143 |q 13116
		.' You can find more Wild Mustard flowers:
		..' at [50.3,48.3]
		..' at [37.2,43.9]
	step
		goto Borean Tundra,46.7,43.6
		.from Wooly Rhino Calf##25488+, Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+
		.collect 4 Rhino Meat##43012 |q 13116
	step
		'Create a basic campfire |cast Basic Campfire##818
		.create Rhino Dog##45553,Cooking,4 total |q 13116
		.collect 4 Rhino Dogs##34752 |q 13116
	step
		'Use your Empty Picnic Basket in your bags|use Empty Picnic Basket##43142
		.get 1 Mustard Dog Basket! |q 13116/1
	step
		goto Crystalsong Forest,26.7,44.1
		.click Crystalsong Carrot##4652+ 
		.collect 4 Crystalsong Carrot##43148 |q 13114
	step
		'Create a basic campfire |cast Basic Campfire##818
		'Use your Stew Cookpot in your bags |use Stew Cookpot##43147
		.get 1 Vegetable Stew |q 13114/1
	step
		goto Dalaran,36.6,27.8
		.talk Ranid Glowergold##28718
		..turnin Cheese for Glowergold##13115
		.' Completed Daily "Cheese for Glowergold" |achieve 1783/4
	step
		goto Dalaran,48.6,37.5
		.talk Arille Azuregaze##29049
		..turnin Convention at the Legerdemain##13113 
		.' Completed Daily "Conventrion at the Legermain" |achieve 1783/2
	step
		goto Dalaran,52.3,55.6
		.talk Orton Bennet##29527
		..turnin Infused Mushroom Meatloaf##13112
		.' Completed Daily "Infused Mushroom Meatloaf" |achieve 1783/1
	step
		goto Dalaran,68.6,42.0
		.talk Archmage Pentarus##28160
		..turnin Mustard Dogs!##13116
		.' Completed Daily "Mustard Dogs!" |achieve 1783/5
	step
		'The entrance to the Dalaran sewers starts here |goto Dalaran,60.2,47.7,0.3 |c |q 13114
	step
		goto Dalaran,35.5,57.6
		.talk Ajay Green##29532
		..turnin Sewer Stew##13114
		.' Completed Daily "Sewer Stew" |achieve 1783/3
	step
		'Congratulations! You've earned the Our Daily Bread achievement! |achieve 1783
]])

ZygorGuidesViewer:RegisterInclude("H_Captain_Rumsey's_Lager",[[
	step
		'Use the Shattrath or Dalaran Cooking Dailies, or the Fishing Dailies of this guide to get this recipe: |tip It's not always guarenteed to come from these daily prizes so be patient
		.collect 1 Recipe: Captain Rumsey's Lager##34834
	step
		.learn Captain Rumsey's Lager##45695 |use Recipe: Captain Rumsey's Lager##34834
	step
		'Congratulation, you have earned the achievement Captain Rumsey's Lager! |achieve 1801
]])

ZygorGuidesViewer:RegisterInclude("H_Critter_Gitter",[[
	step
		'You can either buy these from the Auction House or farm them
		.collect 10 Critter Bites##43004
		.' Click here to go farm for these |confirm |next "farm1"
		|next "gitter"
	step
	label farm1
		'You can either buy these from the Auction House or farm them
		.collect 20 Chilled Meat##43013
		.collect 10 Northern Spices##43007
		.' Click here to go farm for these |confirm |next "farm2"
		|next "recipe"
	step
	label farm2
		#include "rideto_borean"
	step
	title +Chilled Meat
		goto Borean Tundra,78.2,24.0
		.from Scourged Mammoth##25452+
		.collect 20 Chilled Meat##43013
	step
	title +Northern Spices
		'Use the Dalaran Cooking Dailies section of this guide to get Small Spice Bags
		.collect Spice Bag##44113 |n
		.collect 10 Northern Spices##43007
	step
	label make
	title +Critter Gitter
		'Get someone to make your 10 Critter Bites |tip Ask in your guild or in trade for someone to make these. Be sure to tip well! 
		.' Or... |only if skill("Cooking")>=400
		'Build a Basic Campfire |cast Basic Campfire##818 |only if skill("Cooking")>=400
		.create Critter Bites##57435,Cooking,10 total |only if skill("Cooking")>=400
		.collect 10 Critter Bites##43004
		.' Click here if you don't have the recipe |script ZGV:GotoStep("recipe") |only if skill("Cooking")>=400
		|next "gitter"
	step
	label recipe
		'Use the Dalaran Cooking Dailies section of this guide to earn 3 Dalaran Cooking Awards
		.earn 3 Dalaran Cooking Award##81 
	step
		goto Dalaran,70.2,37.2
		.talk Misensi##31031
		.buy 1 Recipe: Critter Bites##43029
	step
		.learn Critter Bites##57435
	step
		'Build a Basic Campfire |cast Basic Campfire##818 
		.create Critter Bites##57435,Cooking,10 total 
		.collect 10 Critter Bites##43004
	step
	label gitter
		#include "rideto_tirisfal"
	step
		|fly Thondroril River
	step
		goto Eastern Plaguelands,4.7,35.5
		'Target the Beetles, Scorpions, and Cockroaches and use the Critter Bites on them |use Critter Bites##43004
		|tip Use all 10 Critter Bites as quick as possible. These critters are scattered all throughout the tunnel.
		.' Coerce 10 critters to be your pet within 3 minutes or less |achieve 1781
	step
		'Congratulations! You've earned the Critter Gitter achievement!
]])

ZygorGuidesViewer:RegisterInclude("H_Dinner_Impossible",[[
	step
		'You can either buy these items from the auction house or use the Cooking professions guide to reach level 375 Cooking, otherwise you cannot complete this achievement. |only if skill("Cooking")<375
		'You can either buy these items from the auction house or farm them |only if skill("Cooking")>=375
		.collect 5 Great Feast##34753
		.' Click here to go farm these materials |script ZGV:GotoStep("farm1")
		|next usefeast
	step
		#include trainCooking
		.learn Great Feast##45554
	step
	label farm1
		'You can either buy these items from the auction house or farm them 
		.collect 5 Chunk o'Mammoth##34736 
		.collect 5 Shoveltusk Flank##43009 
		.collect 5 Worm Meat##43010 
		.collect 10 Chilled Meat##43013 
		.' Click here to go farm these materials |script ZGV:GotoStep("farm2")
		|next makefeast
	step
	label farm2
		#include "rideto_borean"
	step
		goto 78.2,24.0
		.from Scourged Mammoth##25452+
		.collect 5 Chunk o'Mammoth##34736 
		.collect 10 Chilled Meat##43013 
	step
		goto 76.2,23.0
		.from Tundra Crawler##25454+
		.collect 5 Worm Meat##43010 
	step
		fly Vengeance Landing
	step
		goto 73.6,40.0
		.from Shoveltusk##23690+
		.collect 5 Shoveltusk Flank##43009 
	step
		#include hearth_hub
	step
	label makefeast
		'Have someone make the Great Feasts for you |tip Ask in your guild or in trade for someone to make these |only if skill("Cooking")<375
		'Create a basic campfire |cast Basic Campfire##818 |only if skill("Cooking")>=375
		.create 5 Great Feast##45554,Cooking,4 total |only if skill("Cooking")>=375
		.collect 5 Great Feast##34753
	step
	label usefeast
		'Push [H] on your keyboard to open your Player vs. Player interface 
		.' Click on Alterac Valley and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
		..' Wait for the que to pop-up in the middle of your screen and click on accept	
		..' Go to Alterac Valley |goto Alterac Valley |noway |c
	step
		'Use one of your Great Feasts |use Great Feast##34753 
		.' Present a Great Feast in Alterac Valley |achieve 1784/1 |tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step
	step
		'Push [H] on your keyboard to open your Player vs. Player interface 
		.' Click on Arathi Basin and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
		..' Wait for the que to pop-up in the middle of your screen and click on accept	
		..' Go to Arathi Basin |goto Arathi Basin |noway |c
	step
		'Use one of your Great Feasts |use Great Feast##34753 
		.' Present a Great Feast in Arathi Basin |achieve 1784/2 |tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step
	step
		'Push the [H] key on your keyboard to open your Player vs. Player interface 
		.' Click on Warsong Gulch and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
		..' Wait for the que to pop-up in the middle of your screen and click on accept	
		..' Go to Warsong Gulch |goto Warsong Gulch |noway |c
	step
		'Use one of your Great Feasts |use Great Feast##34753 
		.' Present a Great Feast in Warsong Gulch |achieve 1784/3 |tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step
	step
		'Push [H] on your keyboard to open your Player vs. Player interface 
		.' Click on Strand of the Ancients and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
		..' Wait for the que to pop-up in the middle of your screen and click on accept	
		..' Go to Strand of the Ancients |goto Strand of the Ancients |noway |c
	step
		'Use one of your Great Feasts |use Great Feast##34753 
		.' Present a Great Feast in Strand of the Ancients |achieve 1784/4 |tip You can leave the battleground now, but you will have to wait 15 minutes to complete the next step
	step
		'Push [H] on your keyboard to open your Player vs. Player interface 
		.' Click on Arathi Basin and then click on the Join Battle button on the lower left-hand corner of the Player vs. Player interface
		..' Wait for the que to pop-up in the middle of your screen and click on accept	
		..' Go to Eye of the Storm |goto Arathi Basin |noway |c
	step
		'Use one of your Great Feasts |use Great Feast##34753 
		.' Present a Great Feast in Eye of the Storm |achieve 1784/5 
	step
		Congratulations! You've earned the Dinner Impossible achievement!
]])

ZygorGuidesViewer:RegisterInclude("H_Dalaran_Cooking_Dailies",[[
	daily
	step
		goto Dalaran,70.0,39.0
		.talk Awilo Lon'gomba##29631
		.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day, and they all require you have 350+ Cooking skill:
		..accept Cheese for Glowergold##13115 |daily |or
		..accept Convention at the Legerdemain##13113 |daily |or
		..accept Infused Mushroom Meatloaf##13112 |daily |or
		..accept Mustard Dogs!##13116 |daily |or
		..accept Sewer Stew##13114 |daily |or
	step
		goto 54.7,31.5
		.' Click the Aged Dalaran Limburger|tip They look like piles and pieces of yellow cheese on the tables inside this building.
		.collect 1 Aged Dalaran Limburger##43137 |q 13115
		.' Click the Half Full Glasses of Wine|tip They look like small blue-ish wine glasses sitting on tables, and on the ground, inside this building.  They spawn in random locations.
		.collect 6 Half Full Dalaran Wine Glass##43138 |q 13115
		.' You can find more Half Full Glasses of Wine inside the building at [49.4,39.3]
	step
		'Use your Empty Cheese Serving Platter in your bags|use Empty Cheese Serving Platter##43139
		.get 1 Wine and Cheese Platter |q 13115/1
	step
		goto 55.0,30.8
		.' Click a Full Jug of Wine|tip They look like small blue-ish green jugs sitting on the ground inside this building.  They spawn in random locations.
		.get 1 Jug of Wine |q 13113/2
	step
		goto Dragonblight,30.0,49.8
		.from Rabid Grizzly##26643+, Blighted Elk##26616+
		.collect 4 Chilled Meat##43013 |q 13113
	step
		'Use your Cooking ability to cook 4 Northern Stew|tip You will need a cooking fire to do this.
		.get 4 Northern Stew |q 13113/1
	step
		'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13112
	step
		 goto Dalaran/2 51.6,41.6
		.click Infused Mushroom##359+
		.collect 4 Infused Mushroom##43100 |q 13112
	step
		'Leave the Dalaran sewers|goto Dalaran,60.2,47.7,0.3|c|q 13112
	step
		goto Dragonblight,30.0,49.8
		.from Rabid Grizzly##26643+, Blighted Elk##26616+
		.collect 2 Chilled Meat##43013 |q 13112
	step
		'Use your Meatloaf Pan in your bags|use Meatloaf Pan##43101|tip You will need a cooking fire to do this.
		.get 1 Infused Mushroom Meatloaf |q 13112/1
	step
		goto Dalaran,67.7,40.0
		.click Wild Mustard##8340
		|tip They look like small, and kind of hard to see, bushy yellow flowers on the ground around this area.  They spawn randomly in grassy areas.
		.collect 4 Wild Mustard##43143 |q 13116
		.' You can find more Wild Mustard flowers:
		..' at [50.3,48.3]
		..' at [37.2,43.9]
	step
		goto Borean Tundra,46.7,43.6
		.from Wooly Rhino Calf##25488+, Wooly Rhino Matriarch##25487+, Wooly Rhino Bull##25489+
		.collect 4 Rhino Meat##43012 |q 13116
	step
		.create 4 Rhino Dogs##45553,Cooking,4 total |n
		'Use your Cooking ability to cook 4 Rhino Dogs|tip You will need a cooking fire to do this.
		.collect 4 Rhino Dogs##34752 |q 13116
	step
		'Use your Empty Picnic Basket in your bags|use Empty Picnic Basket##43142
		.get 1 Mustard Dog Basket! |q 13116/1
	step
		goto Crystalsong Forest,26.9,45.5
		.' Click the Crystalsong Carrots|tip they look like carrots sticking out of the ground, at the base of trees around this area underneath Dalaran.  They spawn in random locations around this area.
		.collect 4 Crystalsong Carrot##43148 |q 13114
	step
		goto Dragonblight,30.0,49.8
		.from Rabid Grizzly##26643+, Blighted Elk##26616+
		.collect 4 Chilled Meat##43013 |q 13114
	step
		'Use your Stew Cookpot in your bags|use Stew Cookpot##43147|tip You will need a cooking fire to do this.
		.get 1 Vegetable Stew |q 13114/1
	step
		goto Dalaran,36.6,27.8
		.talk Ranid Glowergold##28718
		..turnin Cheese for Glowergold##13115
	step
		goto Dalaran,48.6,37.5
		.talk Arille Azuregaze##29049
		..turnin Convention at the Legerdemain##13113
	step
		goto Dalaran,52.3,55.6
		.talk Orton Bennet##29527
		..turnin Infused Mushroom Meatloaf##13112
	step
		goto Dalaran,68.6,42.0
		.talk Archmage Pentarus##28160
		..turnin Mustard Dogs!##13116
	step
		'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13114
	step
		goto Dalaran,35.5,57.6
		.talk Ajay Green##29532
		..turnin Sewer Stew##13114
]])

ZygorGuidesViewer:RegisterInclude("H_MOP_Cooking_Dailies",[[
		'Proceeding to Cooking School Bell |condition completedq(31521) |only if completedq(31521)
		'Proceeding to Cooking Dailies |condition not completedq(31521) |only if not completedq(31521) |next dailies
	step
		'Use the Cooking School Bell in your Bags |use Cooking School Bell##86425
		'If you do not have this yet, you can buy it from Nam Ironpaw here: [Valley of the Four Winds 53.6,51.2]
		.talk Nomi##64337
		..accept Lesson 1: Sliced Peaches##31332 |daily
		'|modelnpc Nam Ironpaw##64395
	step
		goto Valley of the Four Winds 53.6,51.2
		.talk Sungshin Ironpaw##64231
		.buy 5 Pandaren Peach##74660 |q 31332/1
	step
		'Use the Cooking School Bell in your Bags |use Cooking School Bell##86425
		.talk Nomi##64337
		..turnin Lesson 1: Sliced Peaches##31332 |daily
	step
	label	dailies
		goto Valley of the Four Winds 53.4,51.6
		.talk Jian Ironpaw##58716
		..accept The Truffle Shuffle##30330
		.'_
		.' Click here if this quest is not available today |confirm
	step
		goto 53.0,51.3
		.talk Kol Ironpaw##58712
		..accept Fatty Goatsteak##30332 |daily
		.'_
		.' Click here if this quest is not available today |confirm
	step
		goto 52.5,51.7
		.talk Yan Ironpaw##58715
		..accept The Thousand-Year Dumpling##30328
		.'_
		.' Click here if this quest is not available today |confirm
	step
		goto 52.8,51.8
		.talk Anthea Ironpaw##58713
		..accept Cindergut Peppers##30329
		.'_
		.' Click here if this quest is not available today |confirm
	step
		goto 52.6,51.6
		.talk Mei Mei Ironpaw##58714
		..accept The Mile-High Grub##30331
	step
		goto 32.5,23.9
		.' Use the _Master's Pot_ in your bags next to the bonfire. |use Master's Pot##79895
		.' Create 20 Mushan Tail Stew |q 30331/1
		|only if havequest(30331)
	step
		goto 31.2,36.0
		.from Kunzen Hunter##59121+, Kunzen Herdskeeper##59122+, Kunzen Ritualist##+59123, Kunzen Rockflinger##59120+,Kunzen Collector##59124+
		.collect 4 Cindergut Pepper##79864
		|only if havequest(30329)
	step
		goto 44.0,22.2 |n
		.' Enter the cave here |goto 44.0,22.2 <5 |noway |c
		|only if havequest(30328)
	step
		.click Preserved Vegetable##11054+
		.get 7 Preserved Vegetables |q 30328/1
		|only if havequest(30328)
	step
		goto 28.5,33.3
		.click Shadelight Truffle##11275+
		|tip You can find these aruond the trees here
		.get 8 Shadelight Truffle |q 30330/2
		.' Use your Shadelight Truffles in your bag |use Shadelight Truffle Spores##80127
		.' Plant 8 Shadelight Spores |q 30330/1
		|only if havequest(30330)
	step
		goto Valley of the Four Winds 29.7,41.4
		.from Stout Shaghorn##59139+
		.get 4 Fatty Goatsteak |q 30332/1
		|only if havequest(30332)
	step
		goto Valley of the Four Winds 52.8,51.8
		.talk Anthea Ironpaw##58713
		..turnin Cindergut Peppers##30329
	step
		goto Valley of the Four Winds 53.4,51.6
		.talk Jian Ironpaw##58716
		..turnin The Truffle Shuffle##30330
	step
		goto 52.5,51.7
		.talk Yan Ironpaw##58715
		..turnin The Thousand-Year Dumpling##30328
	step
		goto 53.0,51.3
		.talk Kol Ironpaw##58712
		..turnin Fatty Goatsteak##30332
	step
		goto 52.6,51.6
		.talk Mei Mei Ironpaw##58714
		..turnin The Mile-High Grub##30331
]])

ZygorGuidesViewer:RegisterInclude("Nomi_Dailies",[[
		.' Use Cooking School Bell##86425
		.' Talk to Nomi, standing next to you. |use
		..accept Lesson 1: Sliced Peaches##31332 |daily |or
		..accept Lesson 2: Instant Noodles##31333 |daily |or
		..accept Lesson 3: Toasted Fish Jerky |daily |or
		..accept Lesson 4: Dried Needle Mushrooms |daily |or
		..accept Lesson 5: Pounded Rice Cake |daily |or
	step
		goto Valley of the Four Winds 53.6,51.2
		.talk Sungshin Ironpaw##64231
		.buy 5 Pandaren Peach##31332 |q 31332/1
	step
		goto Valley of the Four Winds 53.6,51.2
		.talk Sungshin Ironpaw##64231
		.buy 5 Instant Noodles##74854 |q 31333/1
	step
		goto Valley of the Four Winds 53.6,51.2
		.talk Sungshin Ironpaw##64231
		.buy 5 Golden Carp##74866 |q 31334/1
	step
		goto Valley of the Four Winds 53.6,51.2
		.talk Sungshin Ironpaw##64231
		.buy 5 Needle Mushrooms##85583 |q 31335/1
	step
		goto Valley of the Four Winds 53.6,51.2
		.talk Sungshin Ironpaw##64231
		.buy 5 Rice##74851 |q 31336/1
	step
		.' Talk to Nomi, standing next to you.
		..turnin Lesson 1: Sliced Peaches##31332 |daily |or
		..turnin Lesson 2: Instant Noodles##31333 |daily |or
		..turnin Lesson 3: Toasted Fish Jerky |daily |or
		..turnin Lesson 4: Dried Needle Mushrooms |daily |or
		..turnin Lesson 5: Pounded Rice Cake |daily |or
]])
--------------------------------------------------------------------------------------------------------------------------------------
-- Professions Fishing
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("H_Old_Gnome_and_the_Sea",[[
	step
		|fly Splintertree Post
	step
		 goto Ashenvale,78.0,51.7
		.' Look for Sagefish Schools in the water.  Walk along the rivers until you find one if you're unable to see one at this spot.
		.' It looks like a swarm of fish.
		.' Use you fishing skill until your lure is inside of the school of fish, then catch one. |cast Fishing##7620
		.' Earn The Old Gnome and the Sea Achievement. |achieve 153
	step
		'Congratulations! You've earned The Old Gnome and the Sea achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_The_Scavenger",[[
	step
		#include darkportal
	step
		|fly Zabra'jin
	step
		goto 57.0,56.0
		.' Look for Steam Pump Flotsam in the water around this area and fish from it |cast Fishing##7620
		.' Fish from Steam Pump Flotsam |achieve 1257/1
	step
		#include "shatport_org"
	step
		|fly Gadgetzan 
	step
		goto 67.4,38.2
		.' Look for Floating Wreckage around this area |tip You may have to fish from other pools to get this to show up |cast Fishing##7620
		.' Fish from Floating Wreckage |achieve 1257/5
	step
		|fly Camp Mojache
	step
		goto Feralas,63.1,51.5 
		.' Look for Waterlogged Wreckage around this area |tip You may have to fish from other pools to get this to show up |cast Fishing##7620
		.' Fish from Waterlogged Wreckage |achieve 1257/4
	step
		#include hearth_hub
	step
		#include "rideto_stranglethorn"
	step
		goto 55.0,64.0
		.' Look for Schooner Wreckage around this area |tip You may need to fish from other pools to get this to show up |cast Fishing##7620
		.' Fish from Schooner Wreckage |achieve 1257/3
	step
		'Go to The Cape of Stranglethorn |goto The Cape of Stranglethorn |noway |c
	step
		goto 30.9,81.5
		.' Look for Bloodsail Wreckage around this area |tip You may need to fish from other pools to get this to show up |cast Fishing##7620
		.' Fish from Bloodsail Wreckage |achieve 1257/2
	step
		.' Successfully fish in each of the junk nodes |achieve 1257
	step
		'Congratulations! You've earned The Scavenger achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_The_Fishing_Diplomat",[[
	step
		goto Orgrimmar,24.8,62.8
		.' Use your fishing skill in the pond |cast Fishing##7620
		.' Fish in Orgrimmar |achieve 150/1
	step
		#include "rideto_stranglethorn"
	step
		.' Go to Stormwind City |goto Stormwind City |noway |c
	step
		goto 69.0,92.2
		.' Use your fishing skill in the moat in front of Stormwind City |cast Fishing##7620
		.' Fish in Stormwind City |achieve 150/2
	step
		.' Earn The Fishing Diplomat. |achieve 150
	step
		'Congratulations! You've earned The Fishing Diplomat achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_Mr._Pinchy's_Magical_Crawdad_Box",[[
	step
		.' You can track fishing in horder to help you find Highland Mixed Schools.
		.learn Find Fish##43308  |next "HaveFishTracking"
		|confirm
		.' or
		.' Click here if you are already in Oultand |confirm |next "outland"
	step
		#include darkportal
	step
	label	"outland"
		|fly Stonebreaker Hold
	step
		.' Go east to Terokkar Forest |goto Terokkar Forest
	step
		goto Terokkar Forest,65.0,76.8
		.' Use your Find Fish ability to locate Highland Mixed Schools
		|confirm

	step
		goto Terokkar Forest,66.5,84.3
		.' Here [Terokkar Forest,66.5,84.3]
		.' Here [Terokkar Forest,65.9,73.1]
		.' Here [Terokkar Forest,60.6,59.9]
		.' Here [Terokkar Forest,45.0,40.5]
		.' Use your fishing skill to fish in the pond |cast Fishing##7620
		.collect 1 Magical Crawdad Box##27445 |n
		'|modeldisplay 3215
		.learnpet Magical Crawdad##18839 |use Magical Crawdad Box##27445
]])
ZygorGuidesViewer:RegisterInclude("H_Fishing_25_Fish",[[
	step
		goto Orgrimmar,66.6,41.6
		.talk Shankys##3333
		.buy 1 Fishing Pole##6256
		.buy 10 Shiny Bauble##6529
	step
		.' Equip your Fishing Pole |use Fishing Pole##6256
		.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
		.' Stand on the end of this wooden dock
		.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
		.' Catch 25 Fish. |achieve 1556
	step
		'Congratulations! You've earned the 25 Fish achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_Fishing_50_Fish",[[
	step
		goto Orgrimmar,66.6,41.6
		.talk Shankys##3333
		.buy 1 Fishing Pole##6256
		.buy 10 Shiny Bauble##6529
	step
		.' Equip your Fishing Pole |use Fishing Pole##6256
		.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
		.' Stand on the end of this wooden dock
		.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
		.' Catch 50 Fish. |achieve 1557
	step
		'Congratulations! You've earned the 50 Fish achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_Fishing_100_Fish",[[
	step
		goto Orgrimmar,66.6,41.6
		.talk Shankys##3333
		.buy 1 Fishing Pole##6256
		.buy 10 Shiny Bauble##6529
	step
		.' Equip your Fishing Pole |use Fishing Pole##6256
		.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
		.' Stand on the end of this wooden dock
		.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
		.' Catch 100 Fish. |achieve 1558
	step
		'Congratulations! You've earned the 100 Fish achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_Fishing_250_Fish",[[
	step
		goto Orgrimmar,66.6,41.6
		.talk Shankys##3333
		.buy 1 Fishing Pole##6256
		.buy 10 Shiny Bauble##6529
	step
		.' Equip your Fishing Pole |use Fishing Pole##6256
		.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
		.' Stand on the end of this wooden dock
		.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
		.' Catch 250 Fish. |achieve 1559
	step
		'Congratulations! You've earned the 250 Fish achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_Fishing_500_Fish",[[
	step
		goto Orgrimmar,66.6,41.6
		.talk Shankys##3333
		.buy 1 Fishing Pole##6256
		.buy 10 Shiny Bauble##6529
	step
		.' Equip your Fishing Pole |use Fishing Pole##6256
		.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
		.' Stand on the end of this wooden dock
		.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
		.' Catch 500 Fish. |achieve 1560
	step
		'Congratulations! You've earned the 500 Fish achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_Fishing_1000_Fish",[[
	step
		goto Orgrimmar,66.6,41.6
		.talk Shankys##3333
		.buy 1 Fishing Pole##6256
		.buy 10 Shiny Bauble##6529
	step
		.' Equip your Fishing Pole |use Fishing Pole##6256
		.' Use the Shiny Bauble to temporarily increase your Fishing skill, to make it easier to catch fish |use Shiny Bauble##6529 |tip If your Shiny Bauble Fishing skill boost expires, you can buy more Shiny Baubles to help you fish.
		.' Stand on the end of this wooden dock
		.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
		.' Catch 1000 Fish. |achieve 1561
	step
		'Congratulations! You've earned the 1000 Fish achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_Fishing_1-1000_Fish",[[
	step
		goto Orgrimmar,66.6,41.6
		.talk Shankys##3333
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
	step
		'Congratulations! You've earned the 1000 Fish achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_Old_Crafty_and_Ironjaw",[[
	step
		.' In order to Earn this achievement, you will need to fish from any pool of water in Orgrimmar.
		.' The higher level your fishing skill, the better.  You will catch less junk the higher you are, which gives you a higher chance to catch Old Crafty.
		.' Click here when you're ready to proceed to the next step in the guide |confirm
	step
		goto Orgrimmar,59.3,39.9
		.' Use your fishing ability in the stream of water. |cast Fishing##7620
		.collect Old Crafty##34486
	step
		.' Earn the Old Crafty Achievement. |achieve 1836
	step
		.' In order to Earn this achievement, you will need to fish from any pool of water (or lava) in Ironforge.
		.' The higher level your fishing skill, the better. You will catch less junk the higher you are, which gives you a higher chance to catch Old Ironjaw.
		.' Click here when you're ready to proceed to the next step in the guide |confirm
	step
		#include port_twilight
	step
		'Go to Ironforge |goto Ironforge |noway |c 
	step
		goto Ironforge,47.6,14.2
		.' Use your fishing ability in the pond. |cast Fishing##7620
		.collect Old Ironjaw##34484
	step
		.' Earn the Old Ironjaw Achievement. |achieve 1837
	step
		'Congratulations! You've earned the Old Ironjaw achievement!
		'Congratulations! You've earned the Old Crafty achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_The_Lurker_Above",[[
	step
		.' In order to earn the _Lurker Above_ achievement, you will need to be in a raid group.
		.' You will also need to be at least Level 70.
		.' It would be best if you picked up Elixirs of Water Walking 
		.' You won't need a certain level of fishing, but the high level you are, the higher change you have of fishing up 'The Lurker Below'.
		.' Click here after you have read the requirements for this achievement. |confirm
		.' or 
		.' Click here if you are in Outland already |confirm |next "outland"
	step
		#include darkportal
	step
	label	"outland"
		|fly Zabra'jin
	step
		goto Zangarmarsh,50.4,41.0 |n
		.' Swim down underwater through the tube to the Coilfang Reservoir |goto 51.9,38.0 |c
	step
		.' Go North into Serpent Shrine Cavern |goto Serpentshrine Cavern
	step
		 goto Serpentshrine Cavern,13.5,59.6
		 .' Ride the elevator down
		.' Click here once you're at the bottom and off of the elevator |confirm
	step
		goto Serpentshrine Cavern,19.6,68.5
		.' Walk up the ramp and ride the elevator up.
		.' Click here once you ride the elevator up. |confirm
	step
		goto Serpentshrine Cavern,22.7,72.8 |n
		.' Use your water walking potion and jump into the water. |use Elixir of Water Walking##8827
		.' If you jump into the water without water walking, fish will attack you and you will have to kill them before using your Elixir.
		.' Walk over to the wooden circle with the Strange pool in the center |goto Serpentshrine Cavern,38.6,59.5 |c
	step
		.' Once you're there, use your fishing ability and make sure that your lure lands in the Strange Pool. |cast Fishing##7620
		.' Earn The Lurker Above Achievement. |achieve 144
	step
		'Congratulations! You've earned The Lurker Above achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_Old_Man_Barlowned",[[
	step
		.' In order the earn this achievement, you will need to have completed these 5 daily quests:
		.' Crcolisks in the City |achieve 905/1
		.' Bait Bandits |achieve 905/2
		.' Felblood Fillet |achieve 905/3
		.' The One That Got Away |achieve 905/4
		.' Shrimpin' Ain't Easy |achieve 905/5
		.' Click here to proceed |confirm
	step
		goto Terokkar Forest,38.7,12.8
		.talk Old Man Barlo##25580
		.' You will only be able to pick up 1 of 5 dailies per day.
		.accept Crocolisks in the City##11665 |or |daily
		.accept Bait Bandits##11666 |or |daily
		.accept Felblood Fillet##11669 |or |daily
		.accept The One That Got Away##11667 |or |daily
		.accept Shrimpin' Ain't Easy##11668 |or |daily
	step
		.' Go West to Shattrath City |goto Shattrath City
		only if havequest(11665)
	step
		goto Shattrath City,57.2,48.2
		.' Click the Shattrath Portal to Stormwind |goto Stormwind City
		only if havequest(11665)
	step
		goto Stormwind City,54.9,69.7
		.' Use your Fishing skill to fish in the water all around the wooden dock |cast Fishing##7620
		..get Baby Crocolisk##34864 |q 11665/1
		only if havequest(11665)
	step
		goto Stormwind City,49.0,87.4 |n
		.' Click the Swirling Portal to Blasted Lands |goto Blasted Lands
		only if havequest(11665)
	step
		goto Blasted Lands,55.0,53.9
		.' Go through the Dark Portal |goto Hellfire Peninsula |noway|c
		only if havequest(11665)
	step
		|fly Shattrath
		only if havequest(11665)
	step
		.' Go Northeast to Terokkar Forest |goto Terokkar Forest |noway|c
		only if havequest(11665)
	step
		goto Terokkar Forest,51.8,37.2
		.' Fish in the river here |cast Fishing##7620
		..get Blackfin Darter##34865 |q 11666/1
		only if havequest(11666)
	step
		|fly Zabra'jin
		only if havequest(11667)
	step
		goto Nagrand,37.4,47.1
		.' Use your fishing ability to fish in the lake. |cast Fishing##7620
		..get World's Largest Mudfish##34868 |q 11667/1
		only if havequest(11667)
	step
		.' Go North to Zangarmarsh |goto Zangarmarsh
		only if havequest(11668)
	step
		goto Zangarmarsh,77.9,79.7
		.' Fish from the Lake here |cast Fishing##7620
		.'Click the Bloated Barbed Gill Trout in your bags|use Bloated Barbed Gill Trout##35313
		..get Giant Freshwater Shrimp##34866 |q 11668/1
		only if havequest(11668)
	step
		goto Shadowmoon Valley,29.9,38.8
		.' Use your fishing ability in the green lava. |cast Fishing##7620
		..get Monstrous Felblood Snapper |q 11669/1
		only if havequest(11669)
	step
		goto Terokkar Forest,38.7,12.8
		.talk Old Man Barlo##25580
		.' You will only be able to pick up 1 of 5 dailies per day.
		.turnin Crocolisks in the City##11665 |or |daily
		.turnin Bait Bandits##11666 |or |daily
		.turnin Felblood Fillet##11669 |or |daily
		.turnin The One That Got Away##11667 |or |daily
		.turnin Shrimpin' Ain't Easy##11668 |or |daily	
	step
		.' Crcolisks in the City |achieve 905/1
		.' Bait Bandits |achieve 905/2
		.' Felblood Fillet |achieve 905/3
		.' The One That Got Away |achieve 905/4
		.' Shrimpin' Ain't Easy |achieve 905/5
	step
		.' Earn the Old Man Barlowned Achievement. |achieve 905
	step
		'Congratulations! You've earned the Old Man Barlowned achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_Outland_Angler",[[
	step
		.' In order to earn the Outland Angler achievement, you will need to fish from 6 different pools of fish in the Outlands.
		|confirm
	step
		#include darkportal
	step
		|fly Swamprat Post
	step
		goto Zangarmarsh,72.5,59.9
		.' Use your fishing skill on Sporefish School's around Umberfen Lake |cast Fishing##7620
		.' Fish from a Sporefish School |achieve 1225/6
	step
		|fly Stonebreaker Hold
	step
		goto Terokkar Forest,60.8,59.0 |n
		.' You will need to fly to reach the Highland Mixed Schools.  There are two more spots you can check for them below:
		.' The large Skettis Lake |goto 66.4,80.0 |n
		.' Lake Jorune |goto 45.9,39.5 |n
		.' Fish from a Highland Mixed School |achieve 1225/5
	step
		map Terokkar Forest
		path follow loose;loop off;ants straight // this stays until the end of the guide.
		path	 60.5,51.9	62.9,48.1	63.6,45.0
		path	 60.0,36.5
		.' Follow the stream until you find a School of Darters or Brackish Mixed School in the river.
		.' Use your fishing skill to fish from either Brackish Mixed or School of Darters
		.' Fish from a School of Darters |achieve 1225/4
		.' Fish from a Brackish Mixed School |achieve 1225/1
	step
		|fly Garadar
	step
		map Nagrand
		path follow loose;loop off;ants straight // this stays until the end of the guide.
		path	 47.2,44.4	48.7,45.3	51.1,43.2
		path	 50.9,47.6	48.8,48.1	47.4,48.6
		path	 46.5,47.6
		.' Follow the stream until you find a Bluefish and a Mudfish School.
		.' Use your fishing skill to fish from either Bluefish and a Mudfish School |cast Fishing##7620
		.' Fish from a Bluefish School |achieve 1225/2
		.' Fish from a Mudfish School |achieve 1225/3
	step
		.' Earn the Outland Angler Achievement. |achieve 1225
	step
		'Congratulations! You've earned the Outland Angler achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_Northrend_Angler_Angler",[[
	step
		.' In order to earn this achievement, you will have to fish from 10 different schools of fish in Northrend.
		.' Click here to proceed. |confirm
	step
		.' Borean Man O'War School |achieve 1517/1
		.' Dragonfin Angelfish School |achieve 1517/2
		.' Glacial Salmon School |achieve 1517/3
		.' Imperial Manta Ray School |achieve 1517/4
		.' Musselback Sculpin School |achieve 1517/5
		.' Deep Sea Monsterbelly School |achieve 1517/6
		.' Fangtooth Herring School |achieve 1517/7
		.' Glassfin Minnow School |achieve 1517/8
		.' Moonglow Cuttlefish School |achieve 1517/9
		.' Neettlefish School |achieve 1517/10
		.' Click here to proceed. |confirm
	step
		#include "rideto_borean"
	step
		map Borean Tundra
		path follow loose;loop off;ants straight // this stays until the end of the guide.
		path	54.3,75.2	49.5,79.0	45.8,80.9
		path	43.4,78.5	40.3,77.0
		.' Follow the coast until you find and Imperial Manta Ray and a Borean Man O' War School.  You mayb need to fish out other schools in order to force new ones to spawn.
		.' Fish from an Imperial Manta Ray School |achieve 1517/4 |cast Fishing##7620
		.' Fish from a Borean Man O' War School |achieve 1517/1 |cast Fishing##7620
	step
		goto Borean Tundra,51.2,42.4
		.' You will be able to find Musselback Sculpin Schools around Lake Kum'uya.
		.' Fish from a Musselback Scuplin School |achieve 1517/5
	step
		goto Borean Tundra,82.7,59.5
		.' Around the Glacier, you will find Schools of Moonglow Cuttlefish and Deep Sea Monsterbelly.
		.' Fish from a Deep Sea Monsterbelly School |achieve 1517/6 |cast Fishing##7620
		.' Fish from a Moonglow Cuttlefish School |achieve 1517/9 |cast Fishing##7620
	step
		|fly River's Heart
	step
		goto Sholazar Basin,46.8,64.7
		.' All around River's Heart, you will find schools of Nettlefish.
		.' Fish from a Nettlefish School |achieve 1517/10 |cast Fishing##7620
	step
		|fly Moa'ki Harbor
	step
		goto Dragonblight,42.3,67.8
		.' You can find Dragonfin Angelfish School all along Lake Indu'le.
		.' Fish from a Dragonfin Angelfish School |achieve 1517/2 |cast Fishing##7620
	step
		|fly Sunreaver's Command
	step
		goto Crystalsong Forest,49.0,54.1
		.' Along the Twilight Rivulet you will find schools of Glassfin Minnow.
		.' Fish from a Glassfin Minnow School |achieve 1517/8 |cast Fishing##7620
	step
		|fly Conquest Hold
	step
		map Grizzly Hills
		path follow loose;loop off;ants straight // this stays until the end of the guide.
		path	26.4,64.9	28.6,60.8	29.5,55.8
		.' You can find Schools of Glacial Salmon along this river.
		.' Fish from a Glacial Salmon School |achieve 1517/3 |cast Fishing##7620
	step
		map Howling Fjord
		path follow loose;loop off;ants straight // this stays until the end of the guide.
		path	59.5,58.8	60.8,60.3	60.6,64.5
		.' You can find Fangtooth Herring Schools along Daggercap Bay.
		.' Fish from a Fangtooth Herring School |achieve 1517/7 |cast Fishing##7620
	step
		.' Earn the Northrend Angler Achievement. |achieve 1517 |cast Fishing##7620
	step
		'Congratulations! You've earned the Northrend Angler achievement!
]])
ZygorGuidesViewer:RegisterInclude("Turtles_All_the_Way_Down",[[
	step
		.' In order to earn this achievement, you will need to fish from any school of fish within a Northrend or Cataclysm Zone.
		.' Click here to proceed. |confirm
	step
		#include rideto_borean
	step
		|fly Sunreaver's Command
	step
		goto Crystalsong Forest,48.7,54.0
		.' Fish from school of fish along the river here. |cast Fishing##7620
		.' You will only be able to catch the sea turtle from fish schools.
		.collect Sea Turtle##46109
		.' Use the Sea Turtle. |use Sea Turtle##46109
		.' Earn the Turtles All the Way Down achievement. |achieve 3218
	step
		.' Congratulations, you have earned the Turtles All the Way Down achievement.
]])
ZygorGuidesViewer:RegisterInclude("H_Chasing_Marcia",[[
	step
		.' In order to earn this Achievement, you will have to complete 5 daily quests.
		.' You will only be able to accept one per day, so this may take longer than 5 days to achieve.
		.' Click here to proceed |confirm
	step
		'Below is a list of the 5 daily quests you will need to complete.
		.' The Ghostfish |achieve 3217/1
		.' Jewel Of The Sewers |achieve 3217/2
		.' Dangerously Delicious |achieve 3217/3
		.' Blood is Thicker |achieve 3217/4
		.' Disarmed! |achieve 3217/5
		.' Click to proceed |confirm
	step
		goto Dalaran,53.1,64.9
		.talk Marcia Chase##28742
		.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
		..accept Blood Is Thicker##13833 |daily |or
		..accept Dangerously Delicious##13834 |daily |or
		..accept Jewel Of The Sewers##13832 |daily |or
		..accept Disarmed!##13836 |daily |or
		..accept The Ghostfish##13830 |daily |or
	step
		goto Borean Tundra,54.6,41.8
		.from Wooly Mammoth##24614, Mammoth Calf##24613, Wooly Mammoth Bull##25743
		.' Get the Animal Blood buff|havebuff Ability_Seal|q 13833
		only if havequest (13833)
	step
		goto 53.7,42.9
		.' Walk into the water here to create a pool of blood
		.' Fish in the pool of blood
		.get 5 Bloodtooth Frenzy |q 13833/1
		only if havequest (13833)
	step
		goto Wintergrasp,79.9,41.8
		.' Fish in this big lake
		.get 10 Terrorfish |q 13834/1
		only if havequest (13834)
	step
		'The entrance to the Dalaran sewers starts here|goto Dalaran,60.2,47.7,0.3|c|q 13832
		only if havequest (13832)
	step
		goto 44.4,66.2
		.' Fish in the water in the Dalaran sewers
		.get 1 Corroded Jewelry |q 13832/1
		only if havequest (13832)
	step
		'Leave the Dalaran sewers|goto Dalaran,60.2,47.7,0.3|c|q 13832
		only if havequest (13832)
	step
		goto Dalaran,64.8,60.8
		.' Stand on the this circular platform and fish in the water here
		.collect Bloated Slippery Eel##45328|n
		.' Click the Bloated Slippery Eel in your bags|use Bloated Slippery Eel##45328
		.get 1 Severed Arm |q 13836/1
		only if havequest (13836)
	step
		goto Sholazar Basin,49.3,61.8
		.' Fish in the water here
		.collect 1 Phantom Ghostfish##45902|n
		.' Click the Phantom Ghostfish in your bags to eat it|use Phantom Ghostfish##45902
		.' Discover the Ghostfish mystery |q 13830/1
		only if havequest (13830)
	step
		goto Dalaran,53.1,64.9
		.talk Marcia Chase##28742
		.' You will only be able to accept, and turn in, 1 of these 5 daily quests per day:
		..turnin Blood Is Thicker##13833
		..turnin Dangerously Delicious##13834
		..turnin Jewel Of The Sewers##13832
		..turnin The Ghostfish##13830
	step
		goto Dalaran,36.6,37.3
		.talk Olisarra the Kind##28706
		..turnin Disarmed!##13836
	step
		.' Earn the Chasing Marcia Achievement. |achieve 3217
	step
		'Congratulations! You've earned the Chasing Marcia achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_Fish_Don't_Leave_Footprints",[[
	step
		#include "rideto_stranglethorn"
	step
		goto Northern Stranglethorn,31.0,37.7
		.' Use your fishing skill fish from Schooner Wreckage along The Savage Coast.  You may need to fish out the other schools of fish to get them to spawn. |cast Fishing##7620
		.collect Weather-Beaten Journal##34109
		.' Use the Weather-Beaten Journal. |use Weather-Beaten Jounral##34109
		.' Earn the Fish Don't Leave Footprints achievement. |achieve 1243
	step
		.' Congratulations, you have earned the Fish Don't Leave Footprints achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_The_Coin_Master",[[
	step
		.' This guide will help you earn the achievements A Penny For Your Thoughts, Silver in the City, There's Gold In That There Fountain, and finally, The Coin Master.
		.' Click here to proceed. |confirm
	step
		.' Here is your current progression on The Coin Master.
		.' A Penny For Your Thoughts. |achieve 2096/1
		.' Silver in the City. |achieve 2096/2
		.' There's a Gold In That There Fountain. |achieve 2096/3
		.' Click here to proceed. |confirm
	step
		#include "rideto_borean"
	step
		|fly Dalaran
	step
		goto Dalaran,52.6,66.5
		.' This fountain is where you will be fishing from to earn these achievements. Use your fishing skills to fish up Copper, Silver and Gold Coins. |cast Fishing##7620
		.' Earn the A Penny For Your Thoughts achievement. |achieve 2096/1
		.' Earn the Silver in the City achievement. |achieve 2096/2
		.' Earn the There's Gold In That There Fountain achievement. |achieve 2096/3
		.' This achievement takes a lot of time, so try to be patient.
	step
		.' Earn the A Penny For Your Thoughts Achiement. |achieve 2094
		.' Earn the Silver in the City achievement. |achieve 2095
		.' Earn the There's Gold In That There Fountain achievement. |achieve 1957
		.' Earn The Coin Master achievement. |achieve 2096
	step
		.' Congratulation, you have earned The Coin Master achievement!
]])
ZygorGuidesViewer:RegisterInclude("H_Master_Angler_of_Azeroth",[[
	step
		'To earn this Achievement, you need to go to Booty Bay, accept this quest and be the first to complete it.
		.' You can start this quest every _Sunday_ from _2pm to 4pm SERVER TIME_. 
		|confirm
	step
		goto Orgrimmar,66.6,41.6
		.talk Shankys##3333
		.buy 1 Fishing Pole##6256
		.buy 10 Shiny Bauble##6529
		.' Or
		|confirm
	step
		#include "rideto_bootybay"
	step
		goto The Cape of Stranglethorn,41.7,73.0
		.talk Riggle Bassbait##15077
		..accept Master Angler##8193
	step
		goto The Cape of Stranglethorn,39.1,57.9
		.' Make sure you have you're fishing pole equipped and fish in these area's for Tasty Fish |use Fishing Pole##6256
		.' Attach your Shiny Bauble to your fishing pole to increase your fishing skill slightly |use Shiny Bauble##6529
		.get 40 Speckled Tastyfish##19807 |q 8193
		.' You can find more schools of fish here: [37.9,55.6]
		.' Here [36.3,53.8]
		.' Here [36.1,50.9]
		.' And here [36.2,47.7]
	step
		goto The Cape of Stranglethorn,41.7,73.0
		.talk Riggle Bassbait##15077
		..turnin Master Angler##8193
		.' Be the first to turn in this quest to earn achievement
		.' Earn Master Angler Achievement |achieve 306
]])
ZygorGuidesViewer:RegisterInclude("H_Master_Angler_of_Northrend",[[
	step
		'To earn this Achievement, you need to go to Northrend, catch a _Blacktip Shark_ and be the first to turn it in.
		.' You can start fishing every _Saturday_ at _2pm SERVER TIME_, you will hear the NPC yell out that the 
		.' contest has started, make sure you are next to a school of fish, and start fishing!
		|confirm
	step
		goto Orgrimmar,66.6,41.6
		.talk Shankys##3333
		.buy 1 Fishing Pole##6256
		.buy 10 Shiny Bauble##6529
		.' Or
		|confirm
	step
		#include "rideto_borean"
	step
		|fly Dalaran
	step
		goto Dalaran,65.7,32.2
		.talk Uda the Beast##31557
		.home
	step
		goto Dalaran,52.4,65.2
		.talk Elder Clearwater##38294
		.turnin Kalu'ak Fishing Derby##24803
	step
		goto Dalaran,56.0,46.8
		.click Teleport to Violet Stand Crystal##8070
		.' Teleport to the Violet Stand |goto Crystalsong Forest |noway |c
	step
		map Crystalsong Forest
		path follow loose;loop off;ants straight
		path	22.5,35.4
		path	25.2,43.4	29.6,45.2	34.0,47.9
		path	38.7,54.4	44.8,56.7	50.3,56.4
		.' Follow this path and turn your _Track Fishing_ on.
		.' Fish up a _Blacktip Shark_ from any school of fish.|use Fishing Pole##6256
		.' Attach your Shiny Bauble to your fishing pole to increase your fishing skill slightly |use Shiny Bauble##6529
		.collect Blacktip Shark##50289
	step
		.' Hearth to Dalaran |goto Dalaran |use Hearthstone##6948 |noway |c 
		.' Or
		goto Crystalsong Forest,15.7,42.4
		.click Teleport to Dalaran Crystal##8070
		.' Teleport to Dalaran |goto Dalaran |noway |c 
	step
		goto Dalaran,52.4,65.2
		.talk Elder Clearwater##38294
		.turnin Kalu'ak Fishing Derby##24803
		.' If you are the first to turn in this quest you will get an achievement
		.' Earn the Achievement Master Angler of Azeroth |achieve 306
]])

---------------------------------------------------------------------------------------
--Dailies
---------------------------------------------------------------------------------------
-- Outland

ZygorGuidesViewer:RegisterInclude("H_SSO_PreQuest_with_Dailies", [[
	step
		|fly Shattrath
	step
		goto Shattrath City,49.1,42.5
		.talk Exarch Nasuun##24932
		..accept Maintaining the Sunwell Portal##11514 |daily
	step
		goto 62.8,36.0
		.talk Lord Torvos##25140
		..accept Sunfury Attack Plans##11877 |daily
	step
		goto 62.8,35.6
		.talk Emissary Mordin##19202
		..accept Gaining the Advantage##11875 |daily
		only if skill("Skinning")>300 or skill("Mining")>300 or skill("Herbalism")>300
	step
		goto Shattrath City,61.7,52.1
		.talk Harbinger Haronem##19475
		..accept The Multiphase Survey##11880 |daily
	step
		|fly Garadar
	step
		goto Nagrand,50.3,40.4
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
		|fly Shattrath
	step
		goto Shattrath City,62.8,36.0
		.talk Lord Torvos##25140
		.turnin Sunfury Attack Plans##11877 |daily
	step
		goto 62.8,35.6
		.talk Emissary Mordin##19202 
		.turnin Gaining the Advantage##11875 |daily
	step
		goto 61.6,52.2
		.talk Harbinger Haronem##19475
		.turnin The Multiphas Survey##11880 |daily
	step
		goto 49.1,42.5
		.talk Exarch Nasuun##24932 |daily
		.turnin Maintaining the Sunwell Portal##11514 |daily
	step
		goto Shattrath City,48.6,42.0 |n
		.' Click the Shattrath Portal to Isle of Quel'Danas. |goto Isle of Quel'Danas
	step
		goto Isle of Quel'Danas,47.5,35.4
		.talk Astromancer Darnarian##25133
		..accept Know Your Ley Lines##11547 |daily
	step
		goto 47.5,35.1
		.talk Battlemage Arynna##25057
		..accept The Air Strikes Must Continue##11533 |daily
	step
		goto 47.6,35.1
		.talk Harbinger Inuuro##25061
		..accept The Battle Must Go On##11537 |daily
	step
		goto 48.8,37.2
		.talk Anchorite Ayuri##25112
		..accept Your Continued Support##11548 |daily
		.' This quest requires that you give 10 Gold in trade of reputation with the Shattered Sun Offensive, you should be able to turn it in immidiately.
		..turnin Your Continued Support##11548 |daily
	step
		goto 50.6,39.0
		.talk Vindicator Kaalan##25108
		..accept Keeping the Enemy at Bay##11543 |daily
	step
		goto 49.3,40.4
		.talk Magister Ilastar##25069
		..accept Crush the Dawnblade##11540 |daily
	step
		goto 50.6,40.8
		.talk Smith Hauthaa##25046
		..accept Don't Stop Now....##11536 |daily
		..accept Ata'mal Armaments##11544 |daily
	step
		goto 51.5,32.5
		.talk Mar'nah##24975
		..accept Rediscovering Your Roots##11521 |daily
		..accept Open for Business##11546 |daily
	step
		goto 53.8,34.3
		.talk Captain Valindria##25088
		..accept Disrupt the Greengill Coast##11541 |daily
	step
		goto 47.5,30.5
		.talk Captain Theris Dawnhearth##24967
		..accept Arm the Wards!##11523 |daily
		..accept The Missing Magistrix##11526
	step
		goto 47.1,30.7
		.talk Vindicator Xayann##24965
		..accept Further Conversions##11525 |daily
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
		.talk Ayren Cloudbreaker##25059
		.' Tell him you Need to Intercept the Dawnblade Reinforcements.
		.' Use your Flaming Oil to set fire to the ships sails as you fly around. |use Flaming Oil##34489
		.' Sin'loren sails burned |q 11543/1
		.' Bloodoath sails burned |q 11543/2
		.' Dawnchaser sails burned |q 11543/3
	step
		.kill 6 Dawnblade Reservist##25087+ |q 11543/4
		.' You can find more at [Isle of Quel'Danas,51.1,9.7]
		.' Another spot for them is at [Isle of Quel'Danas,55.2,11.8]
	step
		goto Isle of Quel'Danas,52.4,17.4
		.talk Unrestrained Dragonhawk##25236
		.' Ride the dragonhawk to Sun's Reach. |goto Isle of Quel'Danas,48.4,25.3 |noway|c
	step
		goto Isle of Quel'Danas,48.5,25.2
		.talk Ayren Cloudbreaker##25059
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
		goto Isle of Quel'Danas,53.8,34.3
		.talk Captain Valindria##25088
		..turnin Disrupt the Greengill Coast##11541 |daily
	step
		goto 50.6,40.7
		.talk Smith Hauthaa##25046
		..turnin Don't Stop Now....##11536 |daily
	step
		goto 50.6,39.0
		.talk Vindicator Kaalan##25108
		..turnin Keeping the Enemy at Bay##11543 |daily
	step
		goto 49.3,40.4
		.talk Magister Ilastar##25069
		..turnin Crush the Dawnblade##11540 |daily
	step
		goto 51.5,32.5
		.talk Mar'nah##24975
		..turnin Open for Business##11546 |daily
	step
		goto 47.5,35.3
		.talk Astromancer Darnarian##25133
		.turnin Know Your Ley Lines##11547 |daily
	step
		goto 47.5,35.1
		.talk Battlemage Arynna##25057
		.turnin The Air Strikes Must Continue##11533 |daily
	step
		goto 47.6,35.1
		.talk Harbinger Inuuro##25061
		.turnin The Battle Must Go On##11537 |daily
	step
		goto 47.5,30.5
		.talk Captain Theris Dawnhearth##24967
		.turnin Arm the Wards!##11523 |daily
	step
		goto 47.1,30.7
		.talk Vindicator Xayann##24965
		.turnin Further Conversions##11525 |daily
	step
		goto Isle of Quel'Danas,48.5,44.7
		|use Captured Legion Scroll##34420
		.' Teleport to Hellfire Peninsula |goto Hellfire Peninsula,58.6,18.7,0.5 |noway|c
	step
		goto Hellfire Peninsula,58.2,17.6
		.talk Magistrix Seyla##24937
		.turnin The Missing Magistrix##11526
		..accept Blood for Blood##11515 |daily
		..accept Blast the Gateway##11516 |daily
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
		.talk Magistrix Seyla##24937
		.turnin Blast the Gateway##11516 |daily
		.turnin Blood for Blood##11515 |daily
	step
		goto Terokkar Forest,59.7,10.3
		.from Razorthorn Flayer##24920+
		..collect Razorthorn Flayer Gland##34255 |q 11521 |n
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
		.' Click the Shattrath Portal to Isle of Quel'Danas. |goto Isle of Quel'Danas |noway|c
	step
		goto Isle of Quel'Danas,51.5,32.5
		.talk Mar'nah##24975
		.turnin Rediscovering Your Roots##11521 |daily
	step
		goto 50.6,40.7
		.' Click the Ata'mal Armaments and cleanse them at Hauthaa's Anvil. |use Ata'mal Armament##34500
		.' Cleanse 5 Ata'mal Metals |q 11544/1
	step
		goto 50.6,40.7
		.talk Smith Hauthaa##25046
		..turnin Ata'mal Armaments##11544 |daily
	step
		' Move to our Shattered Sun Offensive Dailies guide.
]])
ZygorGuidesViewer:RegisterInclude("H_SSO_Dailies", [[
	daily
	step
		|fly Shattrath
	step
		goto Shattrath City,56.3,81.5
		.talk Innkeeper Haelthol##19232
		.home Shattrath City
		only if rep ("The Scryers")>=Neutral
	step
		goto Shattrath City,28.2,49.4
		.talk Minalei##19046
		.home Shattrath City
		only if rep ("The Aldor")>=Neutral
	step
		goto Shattrath City,49.1,42.5
		.talk Exarch Nasuun##24932
		..accept Maintaining the Sunwell Portal##11514 |daily
	step
		goto 62.8,36.0
		.talk Lord Torvos##25140
		..accept Sunfury Attack Plans##11877 |daily
	step
		goto 62.8,35.6
		.talk Emissary Mordin##19202
		..accept Gaining the Advantage##11875 |daily
		only if skill("Skinning")>300 or skill("Mining")>300 or skill("Herbalism")>300
	step
		goto Shattrath City,61.7,52.1
		.talk Harbinger Haronem##19475
		..accept The Multiphase Survey##11880 |daily
	step
		goto Shattrath City,48.6,42.0 |n
		.' Click the Shattrath Portal to Isle of Quel'Danas. |goto Isle of Quel'Danas
	step
		goto Isle of Quel'Danas,47.5,35.4
		.talk Astromancer Darnarian##25133
		..accept Know Your Ley Lines##11547 |daily
	step
		goto 47.5,35.1
		.talk Battlemage Arynna##25057
		..accept The Air Strikes Must Continue##11533 |daily
	step
		goto 47.6,35.1
		.talk Harbinger Inuuro##25061
		..accept The Battle Must Go On##11537 |daily
	step
		goto 48.8,37.2
		.talk Anchorite Ayuri##25112
		..accept Your Continued Support##11548 |daily
		.' This quest requires that you give 10 Gold in trade of reputation with the Shattered Sun Offensive, you should be able to turn it in immidiately.
		..turnin Your Continued Support##11548 |daily
	step
		goto 50.6,39.0
		.talk Vindicator Kaalan##25108
		..accept Keeping the Enemy at Bay##11543 |daily
	step
		oto 49.3,40.4
		.talk Magister Ilastar##25069
		..accept Crush the Dawnblade##11540 |daily
	step
		goto 50.6,40.8
		.talk Smith Hauthaa##25046
		..accept Don't Stop Now....##11536 |daily
		..accept Ata'mal Armaments##11544 |daily
	step
		goto 51.5,32.5
		.talk Mar'nah##24975
		..accept Rediscovering Your Roots##11521 |daily
		..accept Open for Business##11546 |daily
	step
		goto 53.8,34.3
		.talk Captain Valindria##25088
		..accept Disrupt the Greengill Coast##11541 |daily
	step
		goto 47.5,30.5
		.talk Captain Theris Dawnhearth##24967
		..accept Arm the Wards!##11523 |daily
		..accept The Missing Magistrix##11526
	step
		goto 47.1,30.7
		.talk Vindicator Xayann##24965
		..accept Further Conversions##11525 |daily
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
		.talk Ayren Cloudbreaker##25059
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
		.talk Unrestrained Dragonhawk##25236
		.' Ride the dragonhawk to Sun's Reach. |goto Isle of Quel'Danas,48.4,25.3 |noway|c
	step
		goto Isle of Quel'Danas,48.5,25.2
		.talk Ayren Cloudbreaker##25059
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
		|fly Stonebreaker Hold
	step
		goto Terokkar Forest,59.7,10.3
		.from Razorthorn Flayer##24920+
		..collect Razorthorn Flayer Gland##34255 |q 11521
		.' Use your Razorthorn Flayer Gland on Razorthorn Ravagers. |use Razorthorn Flayer Gland##34255
		.' Use your pets Expose Razorthorn Root ability on mounds of dirt around the area. |cast Expose Razorthorn Root##44935
		.collect 5 Razorthorn Root##34254 |q 11521/1
	step
		|fly Garadar
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
		|fly Thrallmar
		.' You can fly through the Twisting Nether to [Hellfire Peninsula,58.2,17.6], but you risk a possible death in doing so.
		.' If you choose to fly on your own, click here to proceed. |confirm
	step
		goto Hellfire Peninsula,58.2,17.6
		.talk Magistrix Seyla##24937
		..accept Blood for Blood##11515 |daily
		..accept Blast the Gateway##11516 |daily
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
		.talk Magistrix Seyla##24937
		.turnin Blast the Gateway##11516 |daily
		.turnin Blood for Blood##11515 |daily
	step
		|fly Shattrath
	step
		goto Shattrath City,62.8,36.0
		.talk Lord Torvos##25140
		.turnin Sunfury Attack Plans##11877 |daily
	step
		goto 62.8,35.6
		.talk Emissary Mordin##19202 
		.turnin Gaining the Advantage##11875 |daily
	step
		goto 61.6,52.2
		.talk Harbinger Haronem##19475
		.turnin The Multiphas Survey##11880 |daily
	step
		goto 49.1,42.5
		.talk Exarch Nasuun##24932 |daily
		.turnin Maintaining the Sunwell Portal##11514 |daily
	step
		goto Shattrath City,48.6,42.0 |n
		.' Click the Shattrath Portal to Isle of Qual'Danas. |goto Isle of Quel'Danas |noway|c
	step
		goto Isle of Quel'Danas,53.8,34.3
		.talk Captain Valindria##25088
		..turnin Disrupt the Greengill Coast##11541 |daily
	step
		goto 50.6,40.7
		.' Click the Ata'mal Armaments and cleanse them at Hauthaa's Anvil. |use Ata'mal Armament##34500
		.' Cleanse 5 Ata'mal Metals |q 11544/1
	step
		goto 50.6,40.7
		.talk Smith Hauthaa##25046
		..turnin Don't Stop Now....##11536 |daily
		..turnin Ata'mal Armaments##11544 |daily
	step
		goto 50.6,39.0
		.talk Vindicator Kaalan##25108
		..turnin Keeping the Enemy at Bay##11543 |daily
	step
		goto 49.3,40.4
		.talk Magister Ilastar##25069
		..turnin Crush the Dawnblade##11540 |daily
	step
		goto 51.5,32.5
		.talk Mar'nah##24975
		..turnin Open for Business##11546 |daily
		.turnin Rediscovering Your Roots##11521 |daily
	step
		goto 47.5,35.3
		.talk Astromancer Darnarian##25133
		.turnin Know Your Ley Lines##11547 |daily
	step
		goto 47.5,35.1
		.talk Battlemage Arynna##25057
		.turnin The Air Strikes Must Continue##11533 |daily
	step
		goto 47.6,35.1
		.talk Harbinger Inuuro##25061
		.turnin The Battle Must Go On##11537 |daily
	step
		goto 47.5,30.5
		.talk Captain Theris Dawnhearth##24967
		.turnin Arm the Wards!##11523 |daily
	step
		goto 47.1,30.7
		.talk Vindicator Xayann##24965
		.turnin Further Conversions##11525 |daily
	step
		goto Isle of Quel'Danas,47.3,30.7
		.talk Eldara Dawnrunner##25032
		..accept A Friend in the Frontlines##11554 |instant
		only if rep ("Shattered Sun Offensive")==Friendly
	step
		goto Isle of Quel'Danas,47.3,30.7
		.talk Eldara Dawnrunner##25032
		..accept Honored By Your Allies##11555 |instant
		only if rep ("Shattered Sun Offensive")==Honored
	step
		goto Isle of Quel'Danas,47.3,30.7
		.talk Eldara Dawnrunner##25032
		..accept Revered in the Field of Battle##11556 |instant
		only if rep ("Shattered Sun Offensive")==Revered
	step
		goto Isle of Quel'Danas,47.3,30.7
		.talk Eldara Dawnrunner##25032
		..accept Exalted Among All Combatants##11557 |instant
		only if rep ("Shattered Sun Offensive")==Exalted
	step
		goto Isle of Quel'Danas,51.2,33.1
		.talk Anchorite Kairthos##25163
		..accept A Magnanimous Benefactor##11549 |tip This quest will cost you 1,000 Gold, but give you the title "Of the Shattered Sun".
		only if rep ("Shattered Sun Offensive")==Exalted
	step
		goto Isle of Quel'Danas,51.2,33.1
		.talk Anchorite Kairthos##25163
		.' _WARNING_, by turning in this quest, you will spend _1000 gold!_
		..turnin A Magnanimous Benefactor##11549
		only if rep ("Shattered Sun Offensive")==Exalted
	step
		'Congratulations, you have earned the title _of the Shattered Sun_!
		only if rep ("Shattered Sun Offensive")==Exalted
]])
ZygorGuidesViewer:RegisterInclude("H_Maghar_Faction",[[
	step
		goto Hellfire Peninsula,55,36
		.talk Nazgrel##3230
		.accept The Assassin##9400
	step
		goto 33.6,43.5
		.' Go to this spot
		.' Find Krun Spinebreaker |q 9400/1
	step
		goto 33.6,43.5
		.clicknpc Fel Orc Corpse##17062
		..turnin The Assassin##9400
		..accept A Strange Weapon##9401
	step
		goto 55,36
		.talk Nazgrel##3230
		..turnin A Strange Weapon##9401
		..accept The Warchief's Mandate##9405
	step
		goto 54.2,37.9
		.talk Far Seer Regulkut##16574
		..turnin The Warchief's Mandate##9405
		..accept A Spirit Guide##9410
	step
		goto 33.6,43.5
		.' Use your Ancestral Spirit Wolf Totem next to the Fel Orc Corpse |use Ancestral Spirit Wolf Totem##23669 |modelnpc Fel Orc Corpse##17062
		.' Follow the spirit wolf |tip Stay close to the wolf and follow it until it stops, or you will not be able to turn in the quest.
		.' Follow the wolf to this spot|goto 32,27.8,0.5|c
	step
		goto 32,27.8
		.talk Gorkan Bloodfist##16845
		..turnin A Spirit Guide##9410
		..accept The Mag'har##9406
	step
		goto 55,36
		.talk Nazgrel##3230
		..turnin The Mag'har##9406
	step
		goto Nagrand,71.6,40.5
		.talk Shado "Fitz" Farstrider##18200
		..accept Windroc Mastery (1)##9854
		.talk Hemet Nesingwary##18180
		..accept Clefthoof Mastery (1)##9789
		.talk Harold Lane##18218
		..accept Talbuk Mastery (1)##9857
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
		..accept The Howling Wind##9861
		.' You can find more Clefthoofs, Elekks, and Dust Howlers at [70.8,46.4]
	step
		goto 71.6,40.5
		.talk Shado "Fitz" Farstrider##18200
		..turnin Windroc Mastery (1)##9854
		..accept Windroc Mastery (2)##9855
		.talk Hemet Nesingwary##18180
		..turnin Clefthoof Mastery (1)##9789
		..accept Clefthoof Mastery (2)##9850
		.talk Harold Lane##18218
		..turnin Talbuk Mastery (1)##9857
		..accept Talbuk Mastery (2)##9858
	step
		goto 57.2,35.2
		.talk Gursha##18808
		.fpath Garadar
	step
		goto 57.1,34.9
		.talk Matron Drakia##18302
		..accept Missing Mag'hari Procession##9944
	step
		goto 56.6,34.6
		.talk Matron Tikkit##18913
		.home Garadar
	step
		goto 55.4,37.4
		.talk Captain Kroghan##18090
		..turnin Reinforcements for Garadar##9797
	step
		goto 55.5,37.6
		.talk Jorin Deadeye##18106
		..accept The Impotent Leader##9888
	step
		goto 55.8,38
		.talk Warden Bullrok##18407
		..accept Proving Your Strength##10479
		.click the Garadar Bulletin Board
		..accept Wanted: Giselda the Crone##9935
		..accept Wanted: Zorbo the Advisor##9939
	step
		goto 55,39
		.talk Elementalist Yal'hah##18234
		..accept The Throne of the Elements##9870
	step
		goto 54.7,39.7
		.talk Farseer Kurkush##18066
		..accept Vile Idolatry##9863
		.talk Farseer Corhuk##18067
		..accept The Missing War Party##9864
		.talk Farseer Margadesh##18068
		..accept Murkblood Leaders...##9867
	step
		goto 51.9,34.8
		.talk the Consortium Recruiter##18335
		..accept The Consortium Needs You!##9913
	step
		goto 60.5,22.4
		.talk Elementalist Morgh##18074
		..turnin The Howling Wind##9861
		..accept Murkblood Corrupters##9862
		.talk Elementalist Sharvak##18072
		..turnin The Throne of the Elements##9870
		.talk Elementalist Lo'ap##18073
		..accept A Rare Bean##9800
		..accept Muck Diving##9815
		.talk Elementalist Untrag##18071
		..accept The Underneath##9818
	step
		goto 61.8,24.4
		.talk Gordawg##18099 |tip He may not be in this spot, he wanders around the Throne of Elements area.
		..turnin The Underneath##9818
		..accept The Tortured Earth##9819
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
		.from 5 Warmaul Shaman##18064+ |q 9939/2
		.from 5 Warmaul Reaver##17138+ |q 9939/3
		.get 10 Obsidian Warbeads |q 10479/1
	step
		goto 32.4,36.1
		.talk Saurfang the Younger##18229
		..turnin The Missing War Party##9864
		..accept Once Were Warriors##9865
		.talk Elder Yorley##18414
		..turnin Missing Mag'hari Procession##9944
		..accept War on the Warmaul##9945
		.talk Elder Ungriz##18415
		..accept Finding the Survivors##9948
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
		.talk Elder Yorley##18414
		..turnin War on the Warmaul##9945
		.talk Elder Ungriz##18415
		..turnin Finding the Survivors##9948
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
		.talk Saurfang the Younger##18229
		..turnin Once Were Warriors##9865
		..accept He Will Walk The Earth...##9866
	step
		goto 30.8,58.1
		.talk Zerid##18276
		..accept Gava'xi##9900
		..accept Matters of Security##9925
	step
		goto 31.4,57.8
		.talk Gezhe##18265
		..turnin The Consortium Needs You!##9913
		..accept Stealing from Thieves##9882
	step
		goto 31.8,56.8
		.talk Shadrek##18333
		..accept A Head Full of Ivory##9914
		..turnin A Head Full of Ivory##9914
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
		.talk Zerid##18276
		..turnin Gava'xi##9900
		..turnin Matters of Security##9925
	step
		goto 31.4,57.8
		.talk Gezhe##18265
		..turnin Stealing from Thieves##9882
	step
		goto 61.7,67.1
		.talk Wazat##19035
		..accept I Must Have Them!##10109
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
		.talk Wazat##19035
		..turnin I Must Have Them!##10109
	step
		'Go southeast to Terokkar Forest |goto Terokkar Forest |noway |c
	step
		goto Terokkar Forest,19.8,60.9
		.talk Kilrath##18273
		..turnin The Impotent Leader##9888
		..accept Don't Kill the Fat One##9889
	step
		goto 20,63.1
		.kill 10 Boulderfist Invader##18260+ |q 9889/1
	step
		goto 20,63.1
		.' Fight Unkor the Ruthless until he submits |q 9889/2
		.talk Unkor the Ruthless##18262
		..turnin Don't Kill the Fat One##9889
		..accept Success!##9890
	step
		goto 19.8,60.9
		.talk Kilrath##18273
		..turnin Success!##9890
		..accept Because Kilrath is a Coward##9891
	step
		'Hearth to Garadar |goto Nagrand,56.7,34.6,0.5 |use Hearthstone##6948 |noway |c
	step
		goto Nagrand,55.5,37.6
		.talk Jorin Deadeye##18106
		..turnin Because Kilrath is a Coward##9891
		..accept Message in a Battle##9906
	step
		goto 55.8,38
		.talk Warden Bullrok##18407
		..turnin Proving Your Strength##10479
		..turnin Wanted: Zorbo the Advisor##9939
	step
		goto 55.5,37.6
		.talk Elkay'gan the Mystic##18300
		..accept Standards and Practices##9910
	step
		goto 54.7,39.7
		.talk Farseer Kurkush##18066
		..turnin Vile Idolatry##9863
		.talk Farseer Corhuk##18067
		..turnin He Will Walk The Earth...##9866
		.talk Farseer Margadesh##18068
		..turnin Murkblood Leaders...##9867
	step
		goto 61.8,24.4
		.talk Gordawg##18099
		..turnin The Tortured Earth##9819
		..accept Eating Damnation##9821 |tip He may not be in this spot, he wanders around the Throne of Elements area.
	step
		goto 60.5,22.4
		.talk Elementalist Lo'ap##18073
		..turnin A Rare Bean##9800
		..accept Agitated Spirits of Skysong##9804
		..turnin Muck Diving##9815
		.talk Elementalist Morgh##18074
		..turnin Murkblood Corrupters##9862
	step
		goto 59.7,27.3
		.kill 8 Lake Spirit##17153+ |q 9804/1
	step
		goto 60.5,22.4
		.talk Elementalist Lo'ap##18073
		..turnin Agitated Spirits of Skysong##9804
		..accept Blessing of Incineratus##9805
	step
		goto 52,20.2
		.from Enraged Crusher##18062+ |tip You can find them all along this cliffside.
		.get 10 Enraged Crusher Core |q 9821/1
	step
		goto 61.8,24.4
		.talk Gordawg##18099 |tip He may not be in this spot, he wanders around the Throne of Elements area.
		..turnin Eating Damnation##9821
		..accept Shattering the Veil##9849
	step
		goto 71.6,40.5
		.talk Harold Lane##18218
		..turnin Talbuk Mastery (2)##9858
		.talk Hemet Nesingwary##18180
		..turnin Clefthoof Mastery (2)##9850
		.talk Shado "Fitz" Farstrider##18200
		..turnin Windroc Mastery (2)##9855
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
		.talk Elementalist Lo'ap##18073
		..turnin Blessing of Incineratus##9805
		..accept The Spirit Polluted##9810
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
		.talk Jorin Deadeye##18106
		..turnin Message in a Battle##9906
		..accept An Audacious Advance##9907
	step
		goto 55.5,37.6
		.talk Elkay'gan the Mystic##18300
		..turnin Standards and Practices##9910
		..accept Bleeding Hollow Supply Crates##9916
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
	step
		'Hearth to Garadar |goto Nagrand,56.7,34.6,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 55.5,37.6
		.talk Elkay'gan the Mystic##18300
		..turnin Bleeding Hollow Supply Crates##9916
	step
		goto 55.5,37.6
		.talk Jorin Deadeye##18106
		..turnin An Audacious Advance##9907
		..accept Diplomatic Measures##10107
	step
		goto 73.8,68.1 |n
		.' The path up to Lantressor of the Blade starts here |goto 73.8,68.1,0.5 |noway |c
	step
		goto 73.8,62.6
		.talk Lantresor of the Blade##18261
		.' Listen to his story
		.' Hear the story of the Blademaster |q 10107/1
		..turnin Diplomatic Measures##10107
		..accept Armaments for Deception##9928
		..accept Ruthless Cunning##9927
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
		.talk Lantresor of the Blade##18261
		..turnin Armaments for Deception##9928
		..turnin Ruthless Cunning##9927
		..accept Returning the Favor##9931
		..accept Body of Evidence##9932
	step
		goto 55.8,38
		.talk Warden Bullrok##18407
		..turnin Wanted: Giselda the Crone##9935
	step
		goto 61.8,24.4
		.talk Gordawg##18099
		..turnin Shattering the Veil##9849
	step
		goto 60.5,22.4
		.talk Elementalist Lo'ap##18073
		..turnin The Spirit Polluted##9810
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
		.talk Lantressor of the Blade##18261
		..turnin Returning the Favor##9931
		..turnin Body of Evidence##9932
		..accept Message to Garadar##9934
	step
		'Hearth to Garadar |goto Nagrand,56.7,34.6,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 55.5,37.6
		.talk Garrosh##18063
		..turnin Message to Garadar##9934
	step
		goto Nagrand,55.8,38.0
		.talk Warden Bullrok##18407
		..accept Wanted: Durn the Hungerer##9937
	step
		goto 55.2,36.1
		.talk Matron Celestine##18301
		..accept He Called Himself Altruis...##9983
	step
		.' The next few quests are meant to be _group quests_. If you are not high level, you may need at least _3 people_ for these quests.
		.' Click here to proceed |confirm always
	step
		map Nagrand
		path follow loose;loop;ants curved
		path	46.7,63.7	40.8,63.5	37.4,62.1
		path	34.0,62.7	31.7,65.4	30.5,71.3
		path	32.0,75.9	35.5,78.5	39.8,78.7
		path	42.4,75.5	46.0,70.2
		.' Follow the path around this are to look for _Durn the Hungerer_
		.kill Durn the Hungerer##18411 |q 9937/1
	step
		goto 27.3,43.1
		.talk Altruis the Sufferer##18417
		..turnin He Called Himself Altruis...##9983 
		..accept Survey the Land##9991 |tip You will fly around on a drake to view The Twilight Ridge.
		..turnin Survey the Land##9991
		..accept Buying Time##9999
	step
		goto 25.2,38.3
		.kill 2 Felguard Legionnaire##17152+ |q 9999/1
		.kill 3 Mo'arg Engineer##16945+ |q 9999/2
		.kill 8 Gan'arg Tinkerer##17151+ |q 9999/3
	step
		goto 27.3,43.1
		.talk Altruis the Sufferer##18417
		..turnin Buying Time##9999
		..accept The Master Planner##10001
	step
		goto Nagrand,17.5,50.3
		.from Mo'arg Master Planner##18567
		.get The Master Planner's Blueprints |q 10001/1
		.' You can also find the Mater Planner around [23.3,35.4]
	step
		goto 27.3,43.1
		.talk Altruis the Sufferer##18417
		..turnin The Master Planner##10001
		..accept Patience and Understanding##10004
	step
		goto 32.3,36.2
		.talk Elder Yorley##18414
		..accept Cho'war the Pillager##9946
	step
		goto Nagrand,25.8,13.8
		.' Follow the path up and around 
		.from Cho'war the Pillager##18423
		.get Head of Cho'war |q 9946/1
	step
		goto 27.2,18.7 |n
		.' Leave the Cave here |goto 27.2,18.7,0.5 |noway |c
	step
		goto 32.3,36.2
		.talk Elder Yorley##18414
		..turnin Cho'war the Pillager##9946
	step
		goto Nagrand,55.8,38.0
		.talk Warden Bullrok##18407
		..turnin Wanted: Durn the Hungerer##9937
	step
		|fly Shattrath
	step
		goto Shattrath City,77.3,34.9
		.talk Sal'salabim##18584
		.' Tell him "Altruis sent me. He said that you could help me." |tip He will immediately start attacking you!
		.' Persuad Sal'salabim |q 10004/1
	step
		goto Shattrath City,77.3,34.9
		.talk Sal'salabim##18584
		..turnin Patience and Understanding##10004
		..accept Crackin' Some Skulls##10009
	step
		goto 75.0,31.5
		.talk Raliq the Drunk##18585
		.' Tell him you are here to collect a dept, pay up or you're going to have to hurt him. |tip He will immediately start attacking you!
		.' Collect Raliq's Debt |q 10009/1
	step
		goto Zangarmarsh,80.9,91.1
		.talk Coosh'coosh##18586
		.' Tell him you are here to collect a dept, pay up or you're going to have to hurt him. |tip He will immediately start attacking you!
		.' Collect Coosh'coosh's Debt |q 10009/2
	step
		goto Terokkar Forest,27.2,58.1
		.talk Floon##18588
		.' Tell him you are here to collect a dept, pay up or you're going to have to hurt him. |tip He will immediately start attacking you!
		.' Collect Floon's Debt |q 10009/3
	step
		goto 77.3,34.9
		.talk Sal'salabim##18584
		..turnin Crackin' Some Skulls##10009
		..accept It's Just That Easy?##10010
	step
		|fly Garadar
	step
		goto Nagrand,27.3,43.1
		.talk Altruis the Sufferer##18417
		..turnin It's Just That Easy?##10010
		..accept Forge Camp: Annihilated##10011
	step
		goto Nagrand,25.0,36.1
		.from "Demos\,\ Overseer of Hate##18535"
		.collect Fel Cannon Activator##25770 |n
		.' Use the Fel Cannon Activator in your bags |use Fel Cannon Activator##25770
		.' Destroy Forge Camp: Hate |q 10011/1
	step
		goto 19.6,51.1
		.from "Xirkos\,\ Overseer of Fear##18536"
		.collect Fel Cannon Activator##25771 |n
		.' Use the Fel Cannon Activator in your bags |use Fel Cannon Activator##25771
		.' Destoy Forge Camp: Fear |q 10011/2
	step
		goto 27.3,43.1
		.talk Altruis the Sufferer##18417
		..turnin Forge Camp: Annihilated##10011
	step
		.' Once you have completed the above quests, you will have to grind your way to exalted.
		.' Click to proceed. |confirm always
	step
	label	"bead_grind"
		goto Nagrand,48.9,22.7
		.from Warmaul Reaver##17138+, Warmaul Shaman##18064+
		..collect Obsidian Warbeads##25433 |n
		.' If you are fresh into revered, you will need 420 beads to get 21,000 reputation points.
		.' Collect beads in sets of 10.
		.' Click here when you're ready to turn in. |confirm always
	step
	label	"turn_in"
		goto Nagrand,55.8,37.9
		.talk Warden Bullrok##18407
		..accept More Warbeads##10478 |n     
		.' Click here to go back to farming. |next "bead_grind" |confirm |only if rep("The Mag'har")<=Revered
		.' Earn Exalted status with The Mag'har |condition rep("The Mag'har")==Exalted |next "exalted"
	step
	label exalted
		.' Congratulations, you are now Exalted with The Mag'har! |condition rep("The Mag'har")==Exalted
]])
ZygorGuidesViewer:RegisterInclude("H_Therazane_PreQuest", [[
		goto Orgrimmar,49.7,76.5
		.' Click the Warchief's Command Board |tip It looks like a wooden board hanging between 2 wooden posts, with papers pinned on it.
		..accept Warchief's Command: Deepholm!##27722
	step
		goto 50.5,38.4
		.talk Farseer Krogar##45244
		..turnin The War Has Many Fronts##27442
		..turnin Warchief's Command: Deepholm!##27722
		..accept The Maelstrom##27203
	step
		goto 50.1,37.8
		.' Click the Portal to the Maelstrom |tip It looks like a swirling green portal.
		.' Teleport to The Maelstrom |goto The Maelstrom |noway |c
	step
		goto The Maelstrom,33.4,50.2
		.talk Thrall##45042
		..turnin The Maelstrom##27203
		..accept Deepholm, Realm of Earth##27123
	step
		goto 32.5,52.0
		.' Click the Wyvern |tip It looks like a wind rider flying in place.
		.' You will fly into Deepholm |goto Deepholm,49.9,54.7,0.5 |noway |c
	step
		goto Deepholm,49.6,53.0
		.talk Maruut Stonebinder##43065
		..turnin Deepholm, Realm of Earth##27123
		..accept Gunship Down##26245
	step
		goto 49.7,52.9
		.talk Seer Kormo##43397
		..accept Elemental Energy##27136
		..accept The Earth Claims All##26244
	step
		goto 49.5,53.3
		.talk Earthcaller Yevaa##42573
		..accept Where's Goldmine?##26409
	step
		goto 49.2,51.9
		.talk Caretaker Nuunwa##45300
		.home Temple of Earth
	step
		goto 46.5,57.3
		.talk Initiate Goldmine##42574
		..turnin Where's Goldmine?##26409
		..accept Explosive Bonding Compound##26410
		..accept Something that Burns##27135
	step
		goto 45.5,57.9
		.from Rockslice Flayer##42606+
		.get 5 Quartzite Resin |q 26410/1
	step
		goto 46.5,57.3
		.talk Initiate Goldmine##42574
		..turnin Explosive Bonding Compound##26410
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
		.talk Seer Kormo##43397
		..turnin Elemental Energy##27136
	step
		goto 46.5,57.3
		.talk Initiate Goldmine##42574
		..turnin Something that Burns##27135
		..accept Apply and Flash Dry##26411
	step
		goto 46.6,57.2
		.' Use your Explosive Bonding Compound on Flint Oremantle |use Explosive Bonding Compound##58502 |tip He's laying on the ground next to Initiate Goldmine.
		.' Apply the Explosive Bonding Compound |q 26411/1
	step
		goto 46.5,57.3
		.talk Initiate Goldmine##42574
		..turnin Apply and Flash Dry##26411
		..accept Take Him to the Earthcaller##26413
	step
		goto 49.5,53.3
		.' Introduce Flint Oremantle to Earthcaller Yevaa |q 26413/1
	step
		goto 49.5,53.3
		.talk Earthcaller Yevaa##42573
		..turnin Take Him to the Earthcaller##26413
		..accept To Stonehearth's Aid##26484
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
		..accept Captain's Log##26246
	step
		goto 56.7,76.4
		.' Click the Unexploded Artillery Shell |tip It looks like a metal casing, or bullet type of object laying on the ground underneath the crashed zeppelin.  You can get to it by flying in the 3 open side doors on the north side of the crashed zeppelin.
		.' Receive the Third Clue |q 26245/3
	step
		goto 55.9,74.9
		.kill 5 Deepstone Elemental |q 26244/1
	step
		goto 49.6,52.9
		.talk Maruut Stonebinder##43065
		..turnin Gunship Down##26245
		..turnin Captain's Log##26246
	step
		goto 49.7,52.9
		.talk Seer Kormo##43397
		..turnin The Earth Claims All##26244
	step
		goto 49.6,53.0
		.talk Maruut Stonebinder##43065
		..accept Diplomacy First##26247
	step
		goto 62.4,52.6
		.talk Stormcaller Mylra##42684
		..turnin Diplomacy First##26247
		..accept All Our Friends Are Dead##26248
		..accept The Admiral's Cabin##26249
	step
		'All around on this airship:
		.' Use your Spirit Totem on Slain Crew Members |use Spirit Totem##58167 |tip They look like dead Alliance soldiers all over this airship.
		.' Receive 6 Slain Crew Member Information |q 26248/1
	step
		'Enter the doorway on the main deck of the airship:
		.talk First Mate Moody##43082
		..turnin The Admiral's Cabin##26249
		..accept Without a Captain or Crew##26427
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
		.talk First Mate Moody##43082
		..turnin Without a Captain or Crew##26427
	step
		'Go to the very top of the airship:
		.talk Stormcaller Mylra##42684
		..turnin All Our Friends Are Dead##26248
		..accept Take No Prisoners##26251
		..accept On Second Thought, Take One Prisoner##26250
	step
		'Go onto the main deck of the ship and go down the stairs to the deck below:
		.' Fight Mor'norokk the Hateful until he surrenders |tip He's downstairs in the airship, in the very back of the first level you come to.
		.talk Mor'norokk the Hateful##42801
		.' Subdue Mor'norokk the Hateful |q 26250/1
	step
		'All around on this lower deck of the airship:
		.kill 6 Twilight Saboteur |q 26251/1
	step
		'Go to the very top of the airship:
		.talk Stormcaller Mylra##42684
		..turnin Take No Prisoners##26251
		..turnin On Second Thought, Take One Prisoner##26250
		..accept Some Spraining to Do##26254
	step
		Next to Stormcaller Mylra:
		.' Click Stormbeak |tip It's a gryphon flying in place next to the airship.
		.' Interrogate Mok'norrok |q 26254/1
	step
		'When you land on the airship again:
		.talk Stormcaller Mylra##42684
		..turnin Some Spraining to Do##26254
		..accept Return to the Temple of Earth##26255
	step
		'Hearth to Temple of Earth |goto 49.2,51.9,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 49.6,53.0
		.talk Maruut Stonebinder##43065
		..turnin Return to the Temple of Earth##26255
		..accept Deathwing's Fall##26258
	step
		goto 49.7,52.9
		.talk Seer Kormo##43397
		..accept Blood of the Earthwarder##26259
	step
		goto 59.4,58.2
		.' Go to this spot
		.' Reach Deathwing's Fall |q 26258/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Deathwing's Fall##26258
		..accept Bleed the Bloodshaper##26256
	step
		goto 61.5,60.6
		.from Twilight Bloodshaper##43218+
		.get Twilight Orders |q 26256/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Bleed the Bloodshaper##26256
		..accept Question the Slaves##26261
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
		..turnin Question the Slaves##26261
		..accept The Forgemaster's Log##26260
	step
		goto 63.7,55.4
		.' Click the Forgemaster's Log |tip It's a blue-ish book laying on the floor at the very top of this tower.
		..turnin The Forgemaster's Log##26260
		..accept Silvermarsh Rendezvous##27007
	step
		goto 70.6,61.2
		.' Go to this spot
		.' Reach Upper Silvermarsh |q 27007/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Silvermarsh Rendezvous##27007
		..accept Quicksilver Submersion##27010
	step
		goto 71.8,64.3
		.' Click the Trogg Crate |tip It's a brown box sitting next to the water.
		.collect Trogg Crate##60809 |q 27010
		.from Murkstone Trogg##44936
		.collect Maziel's Research##60816 |n
		.' Click Maziel's Research in your bags |use Maziel's Research##60816
		..accept Twilight Research##27100
	step
		goto 74.9,64.8
		.' Use your Trogg Crate in the water and swim to this spot |use Trogg Crate##60809
		.' Watch the dialogue
		.' Uncover the World Pillar Fragment Clue |q 27010/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Quicksilver Submersion##27010
		..accept The Twilight Overlook##27061
	step
		goto 72.5,65.2
		.from Mercurial Ooze##43158+
		.get 4 Twilight Research Notes |q 27100/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Twilight Research##27100
		..accept Maziel's Revelation##27101
	step
		goto 67.2,70.2
		.' Click Maziel's Journal |tip It looks like a small black book laying on the ground on this tiny island in a pond, next to a big rock.
		..turnin Maziel's Revelation##27101
		..accept Maziel's Ascendancy##27102
	step
		goto 69.5,68.0 |n
		.' Enter the cave |goto 69.5,68.0,0.5 |noway |c
	step
		goto 72.8,62.0
		.kill Maziel |q 27102/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Maziel's Ascendancy##27102
	step
		goto 69.5,68.0 |n
		.' Leave the cave |goto 69.5,68.0,0.5 |noway |c	
	step
		goto 64.5,82.1
		.talk Stormcaller Mylra##44010
		..turnin The Twilight Overlook##27061
		..accept Big Game, Big Bait##26766
		..accept To Catch a Dragon##26768
	step
		goto 68.2,77.9
		.from Scalesworn Cultist##44221+
		.get Twilight Snare |q 26768/1
	step
		goto 64.5,82.1
		.talk Stormcaller Mylra##44010
		..turnin To Catch a Dragon##26768
	step
		goto 59.9,83.6
		.from Jadecrest Basilisk##43981+
		.' Use Mylra's Knife on Jadefire Basilisk corpses |use Mylra's Knife##60382
		.get 5 Side of Basilisk Meat |q 26766/1 
	step
		goto 64.5,82.1
		.talk Stormcaller Mylra##44010
		..turnin Big Game, Big Bait##26766
		..accept Testing the Trap##26771
	step
		goto 50.9,85.3
		.' Use your Trapped Basilisk Meat |use Trapped Basilisk Meat##60773
		.kill Stonescale Matriarch |q 26771/1
	step
		goto 64.5,82.1
		.talk Stormcaller Mylra##44010
		..turnin Testing the Trap##26771
		..accept Abyssion's Minions##26857
	step
		goto 64.6,82.2
		.talk Seer Galekk##44222
		..accept Block the Gates##26861
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
		.talk Seer Galekk##44222
		..turnin Block the Gates##26861
	step
		goto 64.5,82.2
		.talk Stormcaller Mylra##44010
		..turnin Abyssion's Minions##26857
		..accept The World Pillar Fragment##26876
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
		.talk Maruut Stonebinder##43065
		..turnin The World Pillar Fragment##26876
	step
		goto 49.7,52.9
		.talk Seer Kormo##43397
		..turnin Blood of the Earthwarder##26259
	step
		goto 27.9,68.7
		.talk Crag Rockcrusher##43071
		..turnin To Stonehearth's Aid##26484
		..accept The Quaking Fields##27931
	step
		goto 30.6,77.7
		.talk Slate Quicksand##47195
		..turnin The Quaking Fields##27931
		..accept The Axe of Earthly Sundering##27932
		..accept Elemental Ore##27933
	step
		goto 32.2,79.1
		.' Use The Axe of Earthly Sundering on Emerald Colossi |use The Ace of Earthly Sundering##60490 |tip They look like glowing giants that walk around this area.
		.kill 5 Sundered Emerald Colossus |q 27932/1 
		.from Jade Rager##44220+
		.get 6 Elemental Ore |q 27933/1
	step
		goto 30.6,77.7
		.talk Slate Quicksand##47195
		..turnin The Axe of Earthly Sundering##27932
		..turnin Elemental Ore##27933
		..accept One With the Ground##27934
	step
		goto 30.6,77.7
		.talk Slate Quicksand##47195
		..' Tell him you are ready for the ritual
		.' Complete the One With the Ground Ritual |q 27934/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin One With the Ground##27934
		..accept Bring Down the Avalanche##27935
	step
		goto 46.9,89.1
		.kill Avalanchion |q 27935/1
	step
		goto 43.4,82.0 |n
		.' Leave the cave |goto 43.4,82.0,0.5 |noway |c
	step
		goto 27.9,68.7
		.talk Crag Rockcrusher##43071
		..turnin Bring Down the Avalanche##27935
		..accept Stonefather's Boon##26499
	step
		goto 28.2,69.6
		.talk Earthbreaker Dolomite##43160
		..accept We're Surrounded##26500
	step
		goto 29.7,68.8
		kill 12 Stone Trogg Ambusher |q 26500/1
		.' Use Stonefather's Banner next to Stone Hearth Defenders |use Stonefather's Banner##58884 |tip They look like dwarves.  Stonefather's Banner won't work on the Stone Hearth Defenders if they already have the Stonefather's Boon buff.
		.' Grant the Stonefather's Boon 12 times |q 26499/1
	step
		goto 28.2,69.6
		.talk Earthbreaker Dolomite##43160
		..turnin We're Surrounded##26500
		..accept Thunder Stones##26502
	step
		goto 27.9,68.7
		.talk Crag Rockcrusher##43071
		..turnin Stonefather's Boon##26499
		..accept Sealing the Way##26501
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
		.talk Gravel Longslab##43168
		..turnin Sealing the Way##26501
		..accept Shatter Them!##26537
	step
		goto 24.8,62.2
		.talk Clay Mudaxle##43169
		..turnin Thunder Stones##26502
		..accept Fixer Upper##26564
	step
		goto 24.6,62.2
		.talk Earthmender Deepvein##43319
		..accept Battlefront Triage##26591
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
		.talk Gravel Longslab##43168
		..turnin Shatter Them!##26537
	step
		goto 24.6,62.2
		.talk Earthmender Deepvein##43319
		..turnin Battlefront Triage##26591
	step
		goto 24.8,62.2
		.talk Clay Mudaxle##43169
		..turnin Fixer Upper##26564
	step
		goto 24.5,62.4
		.talk Gravel Longslab##43168
		..accept Troggzor the Earthinator##26625
	step
		goto 22.6,56.9
		.from Troggzor the Earthinator##43456
		.get The Earthinator's Cudgel |q 26625/1 
	step
		goto 24.5,62.4
		.talk Gravel Longslab##43168
		..turnin Troggzor the Earthinator##26625
	step
		goto 24.8,62.2
		.talk Clay Mudaxle##43169
		..accept Rush Delivery##27126
	step
		goto 20.7,61.6
		.talk Peak Grindstone##45043
		..turnin Rush Delivery##27126
		..accept Close Escort##26632
	step
		goto 20.7,61.6
		.talk Peak Grindstone##45043
		..' Tell him you're ready to escort the catapult
		.' Safely Escort the Earthen Catapult |q 26632/1
	step
		goto 22.7,52.0
		.talk Pyrium Lodestone##43897
		..turnin Close Escort##26632
		..accept Keep Them off the Front##26755
	step
		goto 22.4,52.0
		.' Click an Earthen Catapult |tip They look like wooden launchers with stone wheels.
		.' Use your Fire Catapult ability on your hotbar on the Stone Trogg and Fungal mobs
		.' Bombarb 30 Reinforcements |q 26755/1
	step
		goto 22.7,52.0
		.talk Pyrium Lodestone##43897
		..turnin Keep Them off the Front##26755
		..accept Reactivate the Constructs##26762
	step
		goto 22.8,52.1
		.talk Flint Oremantle##43898
		..accept Mystic Masters##26770
	step
		goto 22.6,47.6
		.' Click Deactivated War Construct |tip They look like metal golems around this area.
		.' Reactivate 5 Deactivated War Constructs |q 26762/1
		.kill 5 Needlerock Mystic |q 26770/1
	step
		goto 22.8,52.1
		.talk Flint Oremantle##43898
		..turnin Mystic Masters##26770
	step
		goto 22.7,52.0
		.talk Pyrium Lodestone##43897
		..turnin Reactivate the Constructs##26762
		..accept Down Into the Chasm##26834
	step
		goto 27.6,44.8
		.talk Slate Quicksand##44143
		..turnin Down Into the Chasm##26834
		..accept Sprout No More##26791
		..accept Fungal Monstrosities##26792
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
		.talk Slate Quicksand##44143
		..turnin Sprout No More##26791
		..turnin Fungal Monstrosities##26792
		..accept A Slight Problem##26835
	step
		goto 22.7,52.0
		.talk Pyrium Lodestone##43897
		..turnin A Slight Problem##26835
		..accept Rescue the Stonefather... and Flint##26836
	step
		goto 24.5,31.1
		.from Bouldergut##44151
		.' Rescue Stonefather Oremantle |q 26836/1
	step
		goto 22.7,52.0
		.talk Pyrium Lodestone##43897
		..turnin Rescue the Stonefather... and Flint##26836
		..accept The Hero Returns##27937
	step
		goto 28.0,68.6
		.talk Stonefather Oremantle##44204
		..turnin The Hero Returns##27937
		..accept The Middle Fragment##27938
	step
		goto 28.0,68.7
		.' Click The Stonefather's Safe |tip It looks like a metal vault door with gold circles and symbols on it.
		.get The Middle Fragment of the World Pillar |q 27938/1
	step
		'Hearth to Temple of Earth |goto 49.2,51.9,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 49.5,53.3
		.talk Earthcaller Yevaa##42573
		..turnin The Middle Fragment##27938
	step
		goto 49.6,53.0
		.talk Maruut Stonebinder##43065
		..accept The Very Earth Beneath Our Feet##26326
	step
		goto 46.1,45.6
		.talk Earthcaller Torunscar##42730
		..turnin The Very Earth Beneath Our Feet##26326
		..accept Crumbling Defenses##26312
		..accept On Even Ground##26314
	step
		goto 46.2,45.7
		.talk Earthmender Norsala##42731
		..accept Core of Our Troubles##26313
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
		.talk Earthmender Norsala##42731
		..turnin Core of Our Troubles##26313
	step
		goto 46.1,45.6
		.talk Earthcaller Torunscar##42730
		..turnin Crumbling Defenses##26312
		..turnin On Even Ground##26314
	step
		goto 46.2,45.7
		.talk Earthmender Norsala##42731
		..accept Imposing Confrontation##26315
	step
		goto 49.2,40.1
		.' Use your Earthen Ring Proclamation on Boden the Imposing |use Earthen Ring Proclamation##58177 |tip He's a huge rock giant that walks around this area.
		.' Seek Peace with Boden the Imposing |q 26315/1
	step
		goto 46.2,45.7
		.talk Earthmender Norsala##42731
		..turnin Imposing Confrontation##26315
		..accept Rocky Relations##26328
	step
		goto 56.5,42.7
		.talk Diamant the Patient##42467
		..turnin Rocky Relations##26328
		..accept Hatred Runs Deep##26376
		..accept Unsolid Ground##26377
	step
		goto 56.5,41.0
		.talk Quartz Stonetender##42899
		..accept Loose Stones##26375
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
		.talk Quartz Stonetender##42899
		..turnin Loose Stones##26375
	step
		goto 56.5,42.7
		.talk Diamant the Patient##42467
		..turnin Hatred Runs Deep##26376
		..turnin Unsolid Ground##26377
		..accept Violent Gale##26426
	step
		goto 51.7,31.6
		.' Get next to Felsen the Enduring |tip He's a big white rock giant.
		.' Find Felsen the Enduring |q 26426/1
	step
		goto 58.4,25.7
		.' Fly to the mouth of this cave
		.' Find the entrance to the Crumbling Depths |q 26426/2
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Violent Gale##26426
		..accept Depth of the Depths##26869
	step
		goto 64.5,21.7 |n
		.' Follow the path |goto 64.5,21.7,0.5 |noway |c
	step
		goto 65.3,18.4 |n
		.' Follow the path |goto 65.3,18.4,0.5 |noway |c
	step
		goto 66.4,20.6
		.' Click the Gigantic Painite Cluster |tip It looks like a green crystal cluster near the mouth of the cave.
		..turnin Depth of the Depths##26869
		..accept A Rock Amongst Many##26871
	step
		goto 64.3,23.5
		.' Follow the path to this spot, then jump down |goto 64.3,23.5,0.5 |noway |c
	step
		goto 58.3,25.5 |n
		.' Leave the cave |goto 58.3,25.5,0.5 |noway |c
	step
		goto 56.5,42.7
		.talk Diamant the Patient##42467
		..turnin A Rock Amongst Many##26871
		..accept Entrenched##26436
	step
		goto 34.3,34.3
		.talk Kor the Immovable##42469
		..turnin Entrenched##26436
		..accept Intervention##26438
		..accept Making Things Crystal Clear##26437
	step
		goto 34.6,34.2
		.talk Berracite##43344
		..accept Putting the Pieces Together##26439
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
		.talk Kor the Immovable##42469
		..turnin Intervention##26438
		..turnin Making Things Crystal Clear##26437
	step
		goto 34.5,34.4
		.talk Berracite##43344
		..turnin Putting the Pieces Together##26439
	step
		'Next to you:
		.talk Pebble##43116
		..accept Clingy##26440
	step
		goto 30.1,47.7
		.' Get next to the huge green crystals
		.' Bring Pebble to the crystal formation |q 26440/1
	step
		'Next to you:
		.talk Pebble##43116
		..turnin Clingy##26440
		..accept So Big, So Round...##26441
	step
		goto 34.3,34.3
		.talk Kor the Immovable##42469
		..turnin So Big, So Round...##26441
		..accept Petrified Delicacies##26507
		..accept Rock Bottom##26575
	step
		goto 47.6,26.8
		.kill Gorgonite |q 26575/1
	step
		goto 47.5,26.8
		.' Click Petrified Stone Bats |tip They looks like black stone bats laying on the ground around this area.
		.get 12 Petrified Stone Bat |q 26507/1
	step
		'Next to you:
		.talk Pebble##43116
		..turnin Petrified Delicacies##26507
	step
		goto 34.3,34.3
		.talk Kor the Immovable##42469
		..turnin Rock Bottom##26575
		..accept Steady Hand##26576
		..accept Rocky Upheaval##26577
	step
		goto 39.9,19.4
		.talk Terrath the Steady##42466
		..turnin Steady Hand##26576
		..accept Don't. Stop. Moving.##26656
	step
		goto 39.9,19.4
		.talk Terrath the Steady##42466
		..' Tell him you are ready to escort a group of elementals across the open.
		.' Speak to Terrath the Steady |q 26656/1
	step
		goto 51.1,14.7
		.' Go to this spot
		.' Escort 5 Opalescent Guardians to safety |q 26656/2 |tip Run on the ground with your mount, don't fly or you the rock elementals will disappear when you get too far away from them.
	step
		goto 39.9,19.4
		.talk Terrath the Steady##42466
		..turnin Don't. Stop. Moving.##26656
		..accept Hard Falls##26657
		..accept Fragile Values##26658
	step
		goto 35.4,22.5
		.from Stone Trogg Beast Tamer##43598 |tip He moves all around this area capturing basilisks, so you may need to look around a bit for him.
		.get Stonework Mallet |q 26658/1
	step
		goto 39.9,19.4
		.talk Terrath the Steady##42466
		..turnin Fragile Values##26658
	step
		goto 36.5,18.8
		.kill 6 Stone Drake |q 26657/1 |tip They will fall to the ground with half health, so you can kill them, even though they are elite.
	step
		goto 40.0,19.4
		.talk Terrath the Steady##42466
		..turnin Hard Falls##26657
		..accept Resonating Blow##26659
	step
		goto 32.7,24.3
		.' Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266 |tip It's a huge green crystal sitting on the ground.
		.' Strike the Pale Resonating Crystal |q 26659/1
		.from Aeosera##43641 |tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.  When she is casting her Breath Fire ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
		.' Defeat Aeosera |q 26659/2
	step
		goto 33.1,24.1
		.talk Terrath the Steady##42466
		..turnin Resonating Blow##26659
	step
		'Hearth to the Temple of Earth |goto 49.2,51.9,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 49.5,53.3
		.talk Earthcaller Yevaa##42573
		..accept The Reliquary##27953
	step
		goto 51.3,50.1
		.talk Examiner Rowe##44823
		..turnin The Reliquary##27953
		..accept The Twilight Plot##27005
	step
		goto 51.3,50.0
		.talk Reliquary Jes'ca Darksun##44818
		..accept Fly Over##27008
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
		.talk Examiner Rowe##44823
		..turnin The Twilight Plot##27005
	step
		goto 51.3,50.0
		.talk Reliquary Jes'ca Darksun##44818
		..turnin Fly Over##27008
		..accept Fight Fire and Water and Air with...##27043
	step
		goto 51.3,50.1
		.talk Examiner Rowe##44823
		..accept Decryption Made Easy##27041
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
		..turnin Decryption Made Easy##27041
		..accept The Wrong Sequence##27059
	step
		goto 39.1,73.9
		.' Click the Waygate Controller |tip It looks like a cylinder stone container with a stone ring on top of it, sitting in front of the huge white portal.
		.' Destroy the Waygate |q 27059/1
	step
		goto 39.9,62.2
		.kill Haethen Kaul |q 27043/4 |tip He's up on a huge floating rock.
	step
		goto 51.3,50.0
		.talk Examiner Rowe##44823
		..turnin The Wrong Sequence##27059
		..accept That's No Pyramid!##28293
	step
		goto 51.3,50.0
		.talk Reliquary Jes'ca Darksun##44818
		..turnin Fight Fire and Water and Air with...##27043
	step
		goto 72.2,54.0
		.talk Gorsik the Tumultuous##42472
		..turnin Rocky Upheaval##26577
		..accept Doomshrooms##26578
		..accept Gone Soft##26579
		..accept Familiar Intruders##26580
	step
		goto 71.8,47.6
		.talk Windspeaker Lorvarius##43395
		..turnin Familiar Intruders##26580
		..accept A Head Full of Wind##26581
	step
		goto 73.6,40.8
		.kill 8 Fungal Behemoth |q 26579/1
		.from Doomshroom##+ |tip They look like orange mushrooms around this area.
		.' Destroy 10 Doomshrooms |q 26578/1
		.' Gather a sample of the red mist|q 26581/1 |tip There are small clouds of red mist that float around on the ground around this area.  Walk into one of them to gather a sample.
	step
		goto 71.8,47.6
		.talk Windspeaker Lorvarius##43395
		..turnin A Head Full of Wind##26581
		..accept Unnatural Causes##26582
	step
		goto 72.2,54.0
		.talk Gorsik the Tumultuous##42472
		..turnin Doomshrooms##26578
		..turnin Gone Soft##26579
		..turnin Unnatural Causes##26582
		..accept Shaken and Stirred##26584
		..accept Corruption Destruction##26585
	step
		goto 68.5,26.4
		.talk Ruberick##43442
		..accept Wrath of the Fungalmancer##26583
	step
		goto 68.6,29.1 |n
		.' Enter the cave |goto 68.6,29.1,0.5 |noway |c
	step
		goto 69.8,31.9
		.talk Earthmender Norsala##43503
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
		.talk Ruberick##43442
		..turnin Wrath of the Fungalmancer##26583
	step
		goto 69.4,24.8
		.kill 8 Verlok Pillartumbler |q 26584/1
		.' Click Verlok Miracle-grow |tip They look like gray bags sitting on the ground around this area.
		.get 8 Verlok Miracle-grow |q 26585/1
	step
		goto 72.2,54.0
		.talk Gorsik the Tumultuous##42472
		..turnin Shaken and Stirred##26584
		..turnin Corruption Destruction##26585
		..accept At the Stonemother's Call##26750
	step
		goto 56.3,12.2
		.talk Therazane##42465
		..turnin At the Stonemother's Call##26750
		..accept Audience with the Stonemother##26752
	step
		'Watch the dialogue
		.' Attend the Stonemother's Audience |q 26752/1
	step
		goto 56.1,13.5
		.talk Earthcaller Torunscar##43809
		..turnin Audience with the Stonemother##26752
		..accept Rallying the Earthen Ring##26827
	step
		'Hearth to the Temple of Earth |goto 49.2,51.9,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 49.9,50.1
		.talk Hargoth Dimblaze##44644
		..' Tell him you are joining an assault on Lorthuna's Gate and he is needed.
		.' Skip to the next step in the guide
	step
		goto 51.5,51.8
		.talk Stormcaller Jalara##44633
		..' Tell her you are joining an assault on Lorthuna's Gate and she is needed.
		.' Skip to the next step in the guide
	step
		goto 49.9,50.1
		.talk Hargoth Dimblaze##44644
		..' Tell him you are joining an assault on Lorthuna's Gate and he is needed.
		.' Rally 5 Earthen Ring |q 26827/1
	step
		goto 49.6,53.0
		.talk Maruut Stonebinder##43065
		..turnin Rallying the Earthen Ring##26827
		..accept Our Part of the Bargain##26828
	step
		goto 63.3,25.0
		.talk Therazane##44025
		..turnin Our Part of the Bargain##26828
		..accept The Stone March##26829
		..accept Therazane's Mercy##26832
	step
		goto 62.6,26.9
		.talk Boden the Imposing##44080
		..accept The Twilight Flight##26831
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
		.talk Terrath the Steady##42614
		..turnin The Twilight Flight##26831
	step
		goto 60.3,33.2
		.from Defaced Earthrager##44076+, Twilight Soulreaper##42916+, Twilight Priestess##42823+
		.kill 15 Twilight Precipice Cultists |q 26829/1
	step
		goto 63.3,25.0
		.talk Therazane##44025
		..turnin The Stone March##26829
		..turnin Therazane's Mercy##26832
		..accept Word In Stone##26833
	step
		goto 49.6,53.0
		.talk Maruut Stonebinder##43818
		..turnin Word In Stone##26833
		..accept Undying Twilight##26875
	step
		goto 50.7,49.6
		.kill 12 Twilight Invaders |q 26875/1
		.kill Desecrated Earthrager |q 26875/2
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Undying Twilight##26875
		..accept The Binding##26971
	step
		goto 49.6,52.9
		.kill High Priestess Lorthuna |q 26971/1 
	step
		goto 49.6,52.9
		.talk Earthcaller Torunscar##43835
		..turnin The Binding##26971
	step
		goto 49.8,53.4
		.talk Therazane##43792
		..accept The Stone Throne##26709
	step
		goto 56.4,12.1
		.talk Therazane##42465
		..turnin The Stone Throne##26709
	step
		'Hearth to the Temple of Earth |goto 49.2,51.9,0.5 |use Hearthstone##6948 |noway |c
	step
		goto 50.9,53.1
		.' Click the Portal to Orgrimmar |tip It's a red swirling portal.
		.' Teleport to Orgrimmar |goto Orgrimmar |noway |c
]])
ZygorGuidesViewer:RegisterInclude("H_Therazane_DailyQuest", [[
		'Increasing your Therazane reputation to Revered will unlock more daily quests. |tip Use the THERAZANE REPUTATION guide in the Cataclysm Reputation section to do this.
	step
		goto Deepholm,56.1,14.4
		.talk Felsen the Enduring##43805
		..accept Fear of Boring##27046 |daily
		..accept Motes##27047 |daily
		..accept Beneath the Surface##28488 |daily |tip This quest can be offered at random and may not be offered every day.
	step
		goto 56.6,14.1
		.talk Terrath the Steady##43806
		..accept The Restless Brood##28391 |daily |tip This quest can be offered at random if you have at least Revered reputation with Therazane.  However, the quest may not be offered every day.
		only if rep ('Therazane') >= Revered
	step
		goto 55.4,14.2
		.talk Pyrite Stonetender##44945
		..accept Lost In The Deeps##26710 |daily |tip This quest can be offered at random and may not be offered every day.
	step
		goto 57.3,12.5
		.talk Gorsik the Tumultuous##43804
		..accept Soft Rock##27049 |daily
		..accept Fungal Fury##27050 |daily
	step
		goto 59.6,14.0
		.talk Ruberick##44973
		..accept Through Persistence##27051 |daily
		..accept Glop, Son of Glop##28390 |daily |only if rep ('Therazane') >= Revered |tip This quest can be offered at random if you have at least Revered reputation with Therazane.  However, the quest may not be offered every day.
	step
		goto 32.7,24.3
		.' Use your Stonework Mallet next to the Pale Resonating Crystal |use Stonework Mallet##60266 |tip It's a huge green crystal sitting on the ground.
		.' Strike the Pale Resonating Crystal |q 28391/1
		.from Aeosera##43641 |tip Click the Boulder Platforms to jump from rock to rock while fighting Aeosera.  When she is casting her Breath Fire ability, jump to another rock and attack her while she is breathing fire to the other rock.  Repeat this until she surrenders.
		.' Defeat Aeosera |q 28391/2
		only if rep ('Therazane') >= Revered
	step
		goto 56.6,14.1
		.talk Terrath the Steady##43806
		..turnin The Restless Brood##28391
		only if rep ('Therazane') >= Revered
	step
		goto 58.3,25.6 |n
		.' Enter the cave |goto 58.3,25.6,0.5 |noway |c
	step
		goto 61.3,26.2
		.talk Ricket##44968
		..accept Underground Economy##27048 |daily |tip This quest can be offered at random and may not be offered every day.
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
		.talk Pebble##49956
		..' Tell him to follow you
	step
		goto 64.2,17.6 |n
		.' Follow this path |goto 64.2,17.6,0.5 |noway |c
	step
		goto 61.3,26.2
		.talk Ricket##44968
		..turnin Underground Economy##27048
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
		.talk Earthmender Norsala##43503
		..' Tell her you're ready when she is
		.kill Fungalmancer Glop |q 28390/1 |tip Follow him each time he runs away.  Avoid the mushrooms as you walk, they will give you a debuff.  While fighting Fungalmancer Glop, kill the Boomshrooms he creates.  Don't let them grow too big, they will explode and deal a lot of damage.
	step
		goto 70.2,33.8 |n
		.' Follow the path up |goto 70.2,33.8,0.5 |noway |c
	step
		goto 68.6,29.1 |n
		.' Leave the cave |goto 68.6,29.1,0.5 |noway |c
	step
		goto 55.4,14.2
		.talk Pyrite Stonetender##44945
		..turnin Lost In The Deeps##26710
	step
		goto 57.3,12.5
		.talk Gorsik the Tumultuous##43804
		..turnin Soft Rock##27049
		..turnin Fungal Fury##27050
	step
		goto 59.6,14.0
		.talk Ruberick##44973
		..turnin Through Persistence##27051
		..turnin Glop, Son of Glop##28390 |only if rep ('Therazane') >= Revered
	step
		goto Deepholm,56.1,14.4
		.talk Felsen the Enduring##43805
		..turnin Fear of Boring##27046
		..turnin Motes##27047
		..turnin Beneath the Surface##28488
]])

-- Pandaria

ZygorGuidesViewer:RegisterInclude("H_Tillers_PreQuest", [[
		goto Vale of Eternal Blossoms 60.2,22.9
		.talk Farmer Doran##64011
		..accept The Tillers##31374
	step
		goto Valley of the Four Winds 52.0,48.0
		.talk Farmer Yoon##58721
		..turnin The Tillers##31374
		..accept A Helping Hand##30252
	step
		goto 51.8,48.8
		.click Unbudging Rock
		.' Clear 8 Unbudging Rocks |q 30252/1
	step
		goto 52.8,47.9
		.talk Farmer Yoon##58646
		..turnin A Helping Hand##30252
	step
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..accept Learn and Grow I: Seeds##30535
	step
		goto 52.9,52.2
		.talk Merchant Greenfield##58718
		.' Tell him you're there to pick up seeds.
		.' Get a Packet of Green Cabbage Seeds |q 30535/1
	step
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..turnin Learn and Grow I: Seeds##30535
		..accept Learn and Grow II: Tilling and Planting##30254
	step
		goto 52.0,48.3
		.clicknpc Untilled Soil##59985+
		.' Till 2 patches of Soil. |q 30254/1
		.' Use the EZ-Gro Green Cabbage Seeds in your bags on the Tilled Soil. |use EZ-Gro Green Cabbage Seeds##80302
		.' Plant seeds in 2 patches of Tilled Soil. |q 30254/2
		|modelnpc Tilled Soil##59990+
	step
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..turnin Learn and Grow II: Tilling and Planting##30254
		..accept Learn and Grow III: Tending Crops##30255
	step
		goto 52.0,48.3
		.' Use the Rusty Watering Can on the Parched EZ-Gro Green Cabbage |use Rusty Watering Can##79104
		.' Water 2 parched Ez-Gro Green Cabbage |q 30255/1
		|modelnpc Parched EZ-Gro Green Cabbage##59987
	step
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..turnin Learn and Grow III: Tending Crops##30255
		..accept Learn and Grow IV: Harvesting##30256
	step
		goto 52.0,48.3
		.clicknpc Ripe EZ-Gro Green Cabbage##59833
		.get 2 EZ-Gro Green Cabbage |q 30256/1
	step
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..turnin Learn and Grow IV: Harvesting##30256
		..accept Learn and Grow V: Halfhill Market##30257
	step
		goto 52.8,48.0
		.click Dark Soil
		.get Marsh Lily |q 30257/1
	step
		goto 53.1,51.8
		.talk Gina Mudclaw##58706
		..turnin Learn and Grow V: Halfhill Market##30257 
		..accept Learn and Grow VI: Gina's Vote##31945
	step
		goto 52.9,52.2
		.talk Merchant Greenfield##58718
		.buy 1 Scallion Seeds##80591
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Scallion Seeds on the Tilled Soil |use Scallion Seeds##80591
		.' Plant Scallion Seeds |q 31945/1
		|modelnpc Tilled Soil##59990+
	step
	label info
		'Click here for information on Bursting Crops |next "bursting" |confirm
		'Click here for information on Parched Crops |next "parched" |confirm
		'Click here for information on Infested Crops |next "infested" |confirm
		'Click here for information on Wiggling Crops |next "wiggling" |confirm
		'Click here for information on Alluring Crops |next "alluring" |confirm
		'Click here for information on Smothered Crops |next "smothered" |confirm
		'Click here for information on Wild Crops |next "wild" |confirm
		'Click here for information on Runty Crops |next "runty" |confirm
		'Click here for information on Tangled Crops |next "tangled" |confirm
	step
	label bursting
		'Unless you got a Bursting Scallion immediately after planting your Scallions, you will have to wait a full day until you can pick your crops.
		.' Click here if you are ready to harvest your crops. |confirm
		.' Click here to start doing dailies. |next "dailies" |confirm
	step
		goto 52.0,48.4
		.clicknpc Bursting Scallions##63160 
		.clicknpc Ripe Scallions##63165
		.' Harvest Ripe Scallions |q 31945/2
		.get 5 Scallion##74843 |q 31945/3
		|next "exit"
	step
	label runty
		goto 52.0,48.4
		.clicknpc Runty Scallions##63166
		.' Press your Space Bar and jump. 
		.' Click here to return to the information page. |next "info" |confirm
		.' Click here when you are have tilled your crops. |next "bursting" |confirm
	step
	label wiggling
		goto 52.0,48.4
		.clicknpc Wiggling Scallions##63169
		.from Voracious Virmen##60039
		.' Click here to return to the information page. |next "info" |confirm
		.' Click here when you are have tilled your crops. |next "bursting" |confirm
	step
	label infested
		goto 52.2,48.3
		.click Vintage Bug Sprayer
		.collect Vintage Bug Sprayer##80513 |n
		.' Use your Vintage Bug Sprayer on the Infested Scallions |use Vintage Bug Sprayer##80513
		|modelnpc Infested Scallions##63162
		.' Click here to return to the information page. |next "info" |confirm
		.' Click here when you are have tilled your crops. |next "bursting" |confirm
	step
	label alluring
		goto 52.2,48.3
		.clicknpc Alluring Scallions##63159
		.from Swooping Plainshawk##60072
		.' Click here to return to the information page. |next "info" |confirm
		.' Click here when you are have tilled your crops. |next "bursting" |confirm
	step
	label wild
		goto 52.0,48.4
		.clicknpc Wild Scallions##63170	
		.' Ride the Scallion |invehicle |c 
	step
		'Spam the Flex ability on your new hotbar, when the plant tries to cast Vine Slam, interrupt it with your Gnaw ability.
		.' Build 50 stacks on Dominance. |outvehicle |c
	step
		.' Click here to return to the information page. |next "info" |confirm
		.' Click here when you are have tilled your crops. |next "bursting" |confirm
	step
	label tangled
		goto 52.0,48.4 |n
		.clicknpc Tangled Scallions##63168
		.' Run to [51.7,48.9]
		'|goto 51.7,48.9 <5 |c
	step
		.' Click here to return to the information page. |next "info" |confirm
		.' Click here when you are have tilled your crops. |next "bursting" |confirm
	step
	label parched
		goto 52.0,48.4
		.' Use the Rusty Watering Can on the Parched Scallions |use Rusty Watering Can##79104
		.' Click here to return to the information page. |next "info" |confirm
		.' Click here when you are have tilled your crops. |next "bursting" |confirm
		|modelnpc Parched Scallions##63163
	step
	label smothered
		goto 52.0,48.4
		.clicknpc Encroaching Weed##60185
		.' Ride the Weed |invehicle |c
	step
		'Spam the Pull ability on your new hotbar. 
		.' Pull the Weed |outvehicle |c
	step
		.' Click here to return to the information page. |next "info" |confirm
		.' Click here when you are have tilled your crops. |next "bursting" |confirm
		|modelnpc Smothered Scallions##63167
	step
	label exit
		goto 53.1,51.8
		.talk Gina Mudclaw##58706
		..turnin Learn and Grow VI: Gina's Vote##31945
]])
ZygorGuidesViewer:RegisterInclude("H_Tillers_DailyQuest", [[
	label dailies
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..accept The Kunzen Hunter-Chief##30336 |daily |or 2
		..accept That Dangling Carrot##31670 |daily |or 2
		..accept Stealing is Bad... Re-Stealing is OK##30334 |daily |or 2
		..accept The Cabbage Test##31669 |daily |or 2
		..accept It's Melon Time##31942 |daily |or 2
		..accept A Pumpkin-y Perfume##31672 |daily |or 2
		..accept Stalling the Ravage##30335 |daily |or 2
		..accept Red Blossom Leeks, You Make the Croc-in' World Go Down##31673 |daily |or 2
		..accept Squash Those Foul Odors##31941 |or 2
		..accept The Lesser of Two Evils##30333 |or 2
		..accept The White Turnip Treatment##31675 |or 2
	step
		goto 52.7,50.5
		.talk Andi##64464
		..accept A Gift For Fung##30475 |daily |or
		..accept A Gift For Chee Chee##30471 |daily |or
		..accept A Gift For Haohan##30477 |daily |or
		..accept A Gift For Jogu##30478 |daily |or
		..accept A Gift For Sho##30472 |daily |or
		..accept A Gift For Tina##30470 |daily |or
		..accept A Gift For Ella##30474 |daily |or
	step
		goto 53.1,51.7
		.talk Ella##58647
		..accept You Have to Burn the Ropes##30327 |daily
		.' Click here if Ella is not in town |confirm
	step
		goto 53.0,51.7
		.talk Haohan Mudclaw##57402
		..accept Pest Problems##30319
		.' Click here if Haohan is not in town |confirm
	step
		goto 53.1,51.7
		.talk Tina Mudclaw##58761
		..accept They Don't Even Wear Them##30323
		.' Click here if Tina is not in town |confirm
	step
		goto 53.1,52.1
		.talk Chee Chee##58709
		..accept Not in Chee-Chee's Backyard##30324 |daily
		.' Click here if Chee-Chee is not in town |confirm
	step
		goto 52.9,51.7
		.talk Farmer Fung##57298
		..accept Water, Water Everywhere##30317 |daily
		.' Click here if Farmer Fung is not in town |confirm
	step
		goto 53.1,52.1
		.talk Sho##58708
		..accept Where It Counts##30325
		.' Click here if Sho is not in town |confirm
	step
		goto 53.6,52.5
		.talk Jogu the Drunk##58710
		..accept Weed War II##30321 |daily
		.' Click here if Jogu has no available quests. |confirm
	step
		goto 53.0,51.8
		.talk Old Hillpaw##58707
		..accept Chasing the Chicken##30318
		.' Click here if Old Hillpaw is not in town. |confirm
	step
		goto 53.2,51.8
		.talk Gina Mudclaw##58706
		..accept Money Matters##30322
		.' If this quest is unavailable click here. |confirm
	step
		goto 55.1,50.3
		.talk Innkeeper Lei Lan##59582
		.' Tell her you are here on behalf of Gina Mudclaw.
		.' Innkeeper Lei Lan's Payment |q 30322/3
		|only if havequest(30322)
	step
		goto 55.6,52.1
		.talk Lolo Lio##59585
		.' Tell him you are here on behalf of Gina Mudclaw.
		.' Lolo Lio's Payment |q 30322/4
		|only if havequest(30322)
	step
		goto 56.1,49.6
		.talk Trader Jambeezi##59583
		.' Tell him you are here on behalf of Gina Mudclaw.
		.' Trader Jambeezi's Payment |q 30322/2
		|only if havequest(30322)
	step
		goto 56.7,47.1
		.talk Spicemaster Jin Jao##59581
		.' Tell him you are here on behalf of Gina Mudclaw.
		.' Spicemaster Jin Jao's Payment |q 30322/1
		|only if havequest(30322)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 Juicycrunch Carrot Seeds##80590 
		|only if havequest(31670)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 Green Cabbage Seeds##79102 
		|only if havequest(31669)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 White Turnip Seeds##80595 
		|only if havequest(31675)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 Jade Squash Seeds##89328 
		|only if havequest(31941)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 Striped Melon Seeds##89329 
		|only if havequest(31942)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 Mogu Pumpkin Seeds##80592 
		|only if havequest(31672)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 Red Blossom Leek Seeds##80593
		|only if havequest(31673)
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Juicycrunch Carrot Seeds on the Tilled Soil |use Juicycrunch Carrot Seeds##80590
		.' Plant Juicycrunch Carrot Seeds |q 31670/1
		|modelnpc Tilled Soil##59990+
		|only if havequest(31670)
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Jade Squash Seeds on the Tilled Soil |use Jade Squash Seeds##89328 
		.' Plant Jade Squash Seeds |q 31941/1
		|modelnpc Tilled Soil##59990+
		|only if havequest(31941)
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your White Turnip Seeds on the Tilled Soil |use White Turnip Seeds##80595
		.' Plant White Turnip Seeds |q 31675/1
		|modelnpc Tilled Soil##59990+
		|only if havequest(31675)
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Green Cabbage Seeds on the Tilled Soil |use Green Cabbage Seeds##79102
		.' Plant Green Cabbage Seeds |q 31669/1
		|modelnpc Tilled Soil##59990+
		|only if havequest(31669)
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Striped Melon Seeds on the Tilled Soil |use Striped Melon Seeds##89329
		.' Plant Striped Melon Seeds |q 31942/1
		|modelnpc Tilled Soil##59990+
		|only if havequest(31942)
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Red Blossom Leek Seeds on the Tilled Soil |use Red Blossom Leek Seeds##80593
		.' Plant Red Blossom Leek Seeds |q 31673/1
		|modelnpc Tilled Soil##59990+
		|only if havequest(31673)
	step
		goto 53.8,50.9
		.talk Wing Nga##60231
		.' Tell her that you'd like to borrow one of Farmer Fung's kites.
		.' Ride a kite. |invehicle |c
		|only if havequest(30317)
	step
		.' Use your Water Buckest ability on the Dusty Spots below you. |tip They are outlined by a yellow circle.
		.' Water 35 Dusty Spots |q 30317/1
		|only if havequest(30317)
	step
		goto 38.5,51.7
		.talk Gai Lan##57385
		.' Ask him, "What Weeds?"
		.' Get the Weed War buff. |havebuff Weed War
		|only if havequest(30321)
	step
		.clicknpc Ugly Weed##57306
		.clicknpc Nasty Weed##57308
		.click Weed-B-Gone Gas Bomb |tip Use the new button available to you to clear a lot of weeds at once
		.' Pull 100 Weeds |q 30321/1
		|only if havequest(30321)
	step
		goto 31.3,53.2
		.clicknpc Hillpaw's Chicken##58918 |tip Most of these chickens are disguised animals. When you pick one up click the button that appears on your screen.
		.' You can deliver lost hens to the chicken coop here [30.4,52.5]
		.get Old Hillpaw's Prize Chicken##80223 |q 30318/1
		|only if havequest(30318)
	step
		goto 37.4,37.3
		.from Monstrous Plainshawk##59641
		.collect Bloody Planshawk Leg
		|only if havequest(30475)
	step
		goto 39.6,45.3
		.talk Wika-Wika##59532
		.' Mook-mooks?
		.' Get the Pest Problems buff. |havebuff Pest Problems
		|only if havequest(30319)
	step
		goto 39.6,45.3
		.clicknpc Black-Nose Marmot##59530
		.' Stomp 25 Black-Nose Marmot |q 30319/1
		|only if havequest(30319)
	step
		goto 30.2,46.0
		.from Teeku##59130, Jim-Jim##59128, Jokka-Jokka##59126, Kon-Kon##59127
		.' Kill the Kunzen-Hunter Chief. |q 30336/1
		|only if havequest(30336)
	step
		goto 32.0,32.1
		.click Kunzen Rope
		.' Burn 6 ropes |q 30327/1
		|only if havequest(30327)
	step
		goto 53.0,51.3
		.talk Kol Ironpaw##58712
		.' Ask him if he could grill your plainshawk leg.
		.get Grilled Plainshawk Leg##80233 |q 30475/1
		|only if havequest(30475)
	step
		goto 29.7,34.5
		.click Yu-Ping Soup Cauldron
		.get Yu-Ping Soup##79870 |q 30472/1
		|only if havequest(30472)
	step
		goto 29.7,34.5
		.kill 1 Kunzen Ritualist##59123 |q 30325/3
		.click Blazing Ember
		.' Kick 4 Blazing Ember |q 30325/2
		.click Kunzen Ritual Candle
		.' Throw 8 Kunzen Ritual Candles |q 30325/1
		|only if havequest(30325)
	step
		goto 33.6,23.9
		.click Authentic Valley Stir Fry 
		.get Authentic Valley Stir Fry |q 30471/1
		|only if havequest(30471)
	step
		goto 34.2,23.5
		.from Kunzen Rockflinger##59120+, Kunzen Collector##59124+, Kunzen Ravager##59119+, Kunzen Hunter##59121+  
		.get Spicy Shrimp Dumplings |q 30474/1
		|only if havequest(30474)
	step
		goto 34.2,23.5
		.from Kunzen Rockflinger##59120+, Kunzen Collector##59124+, Kunzen Ravager##59119+, Kunzen Hunter##59121+  
		.' Kill 12 Kunzen hozen |q 30335/1
		.collect 1 Nice Necklace##86433 |n |only if not completedq(31325)
		.' Click the Nice Necklace in your bags. |use Nice Necklace##86433 |only if not completedq(31325)
		..accept A Very Nice Necklace##31325 |only if not completedq(31325)
		|only if havequest(30335)
	step
		goto 34.2,23.5
		.click Stolen Vegetable |only if havequest(30334)
		.get 16 Stolen Vegetable##79824 |q 30334/1 |only if havequest(30334)
		.from Kunzen Rockflinger##59120+, Kunzen Collector##59124+, Kunzen Ravager##59119+ |only if havequest(30324)
		.' Kill 8 Kunzen tribe members. |q 30324/1 |only if havequest(30324)	
	step
		goto 44.1,29.1
		.from Enormous Cattail Grouper##59639
		.get Enormous Cattail Grouper Tooth |q 30477/1
		|only if havequest(30477)
	step
		'Enter this warren. |goto 46.9,21.1 <5 |c
		|only if havequest(30333)
	step
		goto 48.7,18.7
		.kill Springtail Warren-Mother##59516 |q 30333/1
		|only if havequest(30333)
	step
		'Leave the warren. |goto 46.9,21.1 <5 |c
		|only if havequest(30333)
	step
		'Enter this warren. |goto 44.0,22.3 <5 |c
		|only if havequest(30470)
	step
		goto 44.7,19.6
		.from Springtail Littlewhisker##59515+, Springtail Trapper##59513+, Springtail Burrower##59514+
		.get Stolen Circlet##80138 |q 30323/1
		.get Ransacked Ring##80137 |q 30323/2
		.get Buglarized Bracelet##80139 |q 30323/3
		|only if havequest(30323)
	step
		'Before you leave this Warren
		.click Chrysoberyl Outcropping
		.get Uncut Chrysoberyl |q 30470/1
		|only if havequest(30470)
	step
		'Leave the warren. |goto 44.0,22.3 <5 |c
		|only if havequest(30470)
	step
		goto 45.1,33.8
		.talk Tina Mudclaw##58761
		..turnin A Very Nice Necklace##31325
		|only if havequest(31325)
	step
		goto 52.6,47.8
		.click Yoon's Apples
		.collect 8 Yoon's Apple##80234
		|only if havequest(30478)
	step
		goto 52.8,47.9
		.click Yoon's Craneberries
		.collect 50 Yoon's Craneberry##80235
		|only if havequest(30478)
	step
		goto 53.2,52.2
		.talk Bobo Ironpaw##58717
		.' Tell him you've got all this fruit here.
		.get Apple-Berry Hooch |q 30478/1
		|only if havequest(30478)
	step
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..turnin The Kunzen Hunter-Chief##30336 
		..turnin That Dangling Carrot##31670
		..turnin Stealing is Bad... Re-Stealing is OK##30334
		..turnin The Cabbage Test##31669
		..turnin It's Melon Time##31942
		..turnin A Pumpkin-y Perfume##31672
		..turnin Stalling the Ravage##30335 
		..turnin Red Blossom Leeks, You Make the Croc-in' World Go Down##31673
		..turnin Squash Those Foul Odors##31941
		..turnin The Lesser of Two Evils##30333 
		..turnin The White Turnip Treatment##31675 
	step
		goto 52.9,51.7
		.talk Farmer Fung##57298
		..turnin Water, Water Everywhere##30317
		..turnin A Gift For Fung##30475 |only if havequest(30475)
	step
		goto  53.0,51.7
		.talk Ella##58647
		..turnin You Have to Burn the Ropes##30327
		..turnin A Gift For Ella##30474 |only if havequest(30474)
	step
		goto 53.1,52.1
		.talk Sho##58708
		..turnin Where It Counts##30325
		..turnin A Gift For Sho##30472 |only if havequest(30472)
	step
		goto 53.2,51.8
		.talk Gina Mudclaw##58706
		..turnin Money Matters##30322
	step
		goto 53.1,51.9
		.talk Old Hillpaw##58707
		..turnin Chasing the Chicken##30318
	step
		goto 53.1,51.7
		.talk Tina Mudclaw##58761
		..turnin A Gift For Tina##30470 |only if havequest(30470)
		..turnin They Don't Even Wear Them##30323
	step
		goto 53.0,51.7
		.talk Haohan Mudclaw##57402
		..turnin Pest Problems##30319
		..turnin A Gift For Haohan##30477 |only if havequest(30477)
	step
		goto 53.6,52.5
		.talk Jogu the Drunk##58710
		..turnin Weed War II##30321
		..turnin A Gift For Jogu##30478 |only if havequest(30478)
	step
		goto 53.1,52.1
		.talk Chee Chee##58709
		..turnin Not in Chee-Chee's Backyard##30324
		..turnin A Gift For Chee Chee##30471 |only if havequest(30471)
		|next "honored" |only if rep('The Tillers')>=Honored
		|next "end"|only if rep('The Tillers')<=Friendly
	step
	label honored
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..accept Growing the Farm I: The Weeds##30260
	step
		goto 38.6,51.7
		.talk Gai Lan##57385
		..turnin Growing the Farm I: The Weeds##30260
		..accept Growing the Farm I: A Little Problem##30516
	step
		goto 36.5,51.1
		.click Spideroot
		.get 6 Spideroot |q 30516/1
	step
		goto 38.6,51.7
		.talk Gai Lan##57385
		..turnin Growing the Farm I: A Little Problem##30516
	step
	label mungmung
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..accept Mung-Mung's Vote I: A Hozen's Problem##30258
	step
		goto 44.2,34.3
		.talk Mung-Mung##57401
		..turnin Mung-Mung's Vote I: A Hozen's Problem##30258
		..accept Mung-Mung's Vote II: Rotten to the Core##30259
	step
		goto 42.7,38.2
		.click Partially Chewed Carrot
		.get 10 Partially Chewed Carrot##80116 |q 30259/1
	step
		goto 44.2,34.3
		.talk Mung-Mung##57401
		..turnin Mung-Mung's Vote II: Rotten to the Core##30259
		..accept Mung-Mung's Vote III: The Great Carrot Caper##31946
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 2 Juicycrunch Carrot Seeds##80590 
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Juicycrunch Carrot Seeds on the Tilled Soil |use Juicycrunch Carrot Seeds##80590
		.' Plant 2 Juicycrunch Carrot Seeds |q 31946/1
		|modelnpc Tilled Soil##59990+
	step
		'Wait a day for the carrots to grow and then harvest them.
		.' Harvest 2 Ripe Juicycrunch Carrots |q 31946/2
		.get 10 Juicycrunch Carrot##74841 l|q 31946/3
]])
ZygorGuidesViewer:RegisterInclude("Golden_Lotus",[[
	step
		'Proceeding to Pre-Quests |next |only if default
		'Proceeding to The Golden Lotus Dailies |next "dailies" |only if completedq(30638)
	step
		goto Kun-Lai Summit 63.7,86.7
		.talk Farmhand Ko##63751
		..accept Temple of the White Tiger##31393
	step
		goto 68.7,43.0
		.talk Sunwalker Dezco##64542
		..turnin Temple of the White Tiger##31393
		..accept A Celestial Experience##31395
	step
		goto 68.9,42.8
		'Talk to Xuen |q 31395/1 |modelnpc Xuen##64528
		.from Spirit of Violence##64656
		.' Pass the First Test |q 31395/2
		.from Spirit of Anger##64684
		.' Pass the Second Test |q 31395/3
		.from Spirit of Hatred##64742
		.' Pass the Third Test |q 31395/4
	step
		goto 68.7,43.0
		.talk Sunwalker Dezco##64542
		..turnin A Celestial Experience##31395
		..accept A Witness to History##31511
	step
		goto 56.1,91.6
		.talk Sunwalker Dezco##64853
		.' Tell him there is only one way to find out. |q 31511/1
	step
		goto Vale of Eternal Blossoms 56.8,43.4
		.talk Zhi the Harmonious##59905
		..turnin A Witness to History##31511
	step
		goto Vale of Eternal Blossoms 56.7,42.7
		.talk Sun Tenderheart##58468
		..accept The Shrine of Two Moons##30649
	step
		goto 61.3,22.0
		.talk Mokimo the Strong##59959
		.' Ask him how the refuges are settling in.
		.' Speak to Mokimo the Strong. |q 30649/2
	step
		goto Shrine of Two Moons/1 68.4,47.7
		.talk Madam Vee Luo##62996
		.' Ask her what you can find in the city.
		.' Speak to Madam Vee Luo. |q 30649/3
	step
		goto Vale of Eternal Blossoms 62.0,20.5
		.talk Elder Liao##63996
		.' Ask him what what this place is.
		.' Speak to Elder Liao. |q 30649/4
	step
		goto Vale of Eternal Blossoms 74.2,42.6
		.talk Jaluu the Generous##59908
		.' Ask him if he has seen anything suspicious.
		.' Speak to Jaluu the Generous. |q 30649/1
	step
		goto Vale of Eternal Blossoms 56.7,42.7
		.talk Sun Tenderheart##58468
		..turnin The Golden Lotus##30649
	step
		goto 56.7,43.6
		.talk Leven Dawnblade##58408
		..accept The Ruins of Guo-Lai##30632
	step
		goto 34.0,38.0
		.talk Anji Autumnlight##58465
		..turnin The Ruins of Guo-Lai##30632
		..accept Out with the Scouts##30633
	step
		goto 33.7,38.4
		.talk Kun Autumnlight##58471
		..accept Barring Entry##30634
	step
		goto 33.8,22.6
		.talk Lao Softfoot##65252
		.' Tell him you're ready to infiltrate the cave. |q 30634/1
	step
		'Follow Lao Softfoot up the hill. |tip Do not stray far from him, he will keep you stealthed as long as you are close.
		.' Wait for the patrol to be at a safe distance and place the explosives at the mouth of the cave [27.6,15.3] |use Explosive Keg##80484
		.' Explosives Planted |q 30634/2
	step
		goto 30.6,29.6
		.kill 8 Shao-Tien Precursor##59914+ |q 30633/1
	step
		goto 33.7,38.4
		.talk Kun Autumnlight##58471
		..turnin Barring Entry##30634
	step
		goto 34.0,38.0
		.talk Anji Autumnlight##58465
		..turnin Out with the Scouts##30633
		..accept Killing the Quilen##30635
		..accept Stones of Power##30636
	step
		goto 22.5,27.0
		'Click the Quest Discovered box that displays on the right side of the screen under your minimap
		..accept The Guo-Lai Halls##30637
	step
		.' Enter the Ruins of Guo-Lai. |goto 22.5,26.9 <5 |c
	step
		goto Vale of Eternal Blossoms/18 54.9,53.5
		.' Attack Zhao-Jin the Bloodletter, he will run. |modelnpc Zhao-Jin the Bloodletter##59921
		.kill Dagou##59977 |q 30637/1
	step
		'Leave the building |goto Vale of Eternal Blossoms/18 56.0,93.4 <5 |c
	step
		goto Vale of Eternal Blossoms 21.6,30.6
		.kill 9 Stone Guardian##59973+ |q 30635/1
		.click Revelite Crystal
		.get 7 Relelite Crystal##80511+ |q 30636/1
	step
		goto 34.0,38.0
		.talk Anji Autumnlight##58465
		..turnin Killing the Quilen##30635
		..turnin Stones of Power##30636
		..turnin The Guo-Lai Halls##30637
		..accept Leaving an Opening##30638
	step
		goto 56.7,43.6
		.talk Leven Dawnblade##58408
		..turnin Leaving an Opening##30638
	step
	label dailies
		.' You will only be able to accept 5 quests from the following NPCs.
		|confirm
	step
		goto Vale of Eternal Blossoms 56.7,43.6
		.talk Leven Dawnblade##58408
		..accept The Eternal Vigil##30307 |daily
	step
		goto 56.6,43.6
		.talk Anji Autumnlight##58465
		..accept Stone Hard Quilen##30308 |daily |or 2
		..accept Set in Stone##30309 |daily |or 2
		..accept Thundering Skies##30310 |daily |or 2
		..accept Crumbling Behemoth##31762 |daily |or 2
		..accept Unleashed Spirits##31757 |daily |or 2 
		..accept Striking First##31760 |daily |or 2
	step
		goto 56.6,43.6
		.talk Kun Autumnlight##58471
		..accept High Standards##30311 |daily |or
		..accept Laosy Scouting##31758 |daily |or
		..accept Cannonfire##31754 |daily |or
		..accept High Chance of Rain##31756 |daily |or
	step
		goto 56.6,43.1
		.talk Sun Tenderheart##58468
		..accept Given a Second Chance##30312 |daily |or
		..accept Free Spirits##30320 |daily |or
		..accept Acts of Cruelty##31755 |daily |or
	step
		goto 39.7,26.0
		.click Shao-Tien Cage##9667  |tip If he is not in this cage try one of the other coordinates below.
		.' [39.2,19.2]
		.' [37.5,22.9]
		.' [40.5,18.4]
		.' [43.1,22.1]
		.' [43.2,15.9] 
		.' [47.5,19.1]
		.' [50.5,23.6]
		.' Rescue Lao Softfoot |q 31758/1
		|only if havequest(31758)
	step
		goto 44.2,15.8
		.' Kill the Shao-Tien Soul-Renders surrounding the Behemoth.
		.' Shao-Tien Behemoth ritual stopped |q 31760/1
		|modelnpc 58460
		|only if havequest(31760)
	step
		goto 50.9,22.3
		.click Shao-Tien Stormcaller##11827
		.' Destroy the Eastern Stormcaller |q 31756/1
		|only if havequest(31756)
	step
		goto 47.8,19.1
		.click Shao-Tien Stormcaller##11827
		.' Destroy the Northern Stormcaller |q 31756/2
		|only if havequest(31756)
	step
		goto 43.1,27.
		.click Shao-Tien Stormcaller##11827
		.' Destroy the Southern Stormcaller |q 31756/3
		|only if havequest(31756)
	step
		goto 36.8,18.
		.click Shao-Tien Stormcaller##11827
		.' Destroy the Western Stormcaller |q 31756/4
		|only if havequest(31756)
	step
		goto 44.0,21.8
		.from Shao-Tien Soul-Render##58460+, Shao-Tien Marauder##58412+ |only if havequest(30307)
		.' Kill 12 Shao-Tien Mogu |q 30307/1 |only if havequest(30307)
		.' Free 5 Torture victims |q 31755/1 |only if havequest(31755)
		.kill 6 Mogu Effigy##59156+ |q 30309/1 |only if havequest(30309)
		.kill 3 Subjugated Serpent##59158+ |q 30310/1 |only if havequest(30310)
		.kill 30 Unleashed Spirit |q 31757/1 |only if havequest(31757)
		.' You can find more Unleashed Spirits at [46.9,34.3] |only if havequest(31757)
		.kill 8 Granite Quilen##59157 |q 30308/1 |only if havequest(30308)
		.click Golden Lotus Banner |only if havequest(30311)
		.' Raise 6 Golden Lotus Standards |q 30311/1 |only if havequest(30311)
		.click Soul Vortex |only if havequest(30320)
		.clicknpc Captive Pandaren Soul##59231 |only if havequest(30320)
		.' Free 15 Captive Pandaren Spirits |q 30320/1 |only if havequest(30320)
		.kill Shao-Tien Behemoth |q 31762/1 |only if havequest(31762)
		.' Use your Wu Kao Explosive near a Shao-Tien Cannon. |use Wu Kao Explosive##89123 |only if havequest(31754)
		.' Destroy 7 Shao-Tien Cannons. |q 31754/1 |only if havequest(31754)
	step
		goto 52.3,28.8 
		.' Use Shado-Pan Bandages on Wounded Defenders |use Shado-Pan Bandages##84242
		.' Heal 6 Wounded Defenders |q 30312/1
		|only if havequest(30312)
	step
		goto 56.6,43.1
		.talk Sun Tenderheart##58468
		..turnin Given a Second Chance##30312 |daily
		..turnin Free Spirits##30320 |daily
		..turnin Acts of Cruelty##31755 |daily
	step
		goto 56.6,43.6
		.talk Anji Autumnlight##58465
		..turnin Stone Hard Quilen##30308 |daily
		..turnin Set in Stone##30309 |daily
		..turnin Thundering Skies##30310 |daily
		..turnin Crumbling Behemoth##31762 |daily
		..turnin Unleashed Spirits##31757 |daily
		..turnin Anji's Diplomacy##31760 |daily
	step
		goto 56.6,43.6
		.talk Kun Autumnlight##58471
		..turnin High Standards##30311 |daily
		..turnin Laosy Scouting##31758 |daily
		..turnin Cannonfire##31754 |daily
		..turnin High Chance of Rain##31756 |daily
	step
		goto 56.7,43.6
		.talk Leven Dawnblade##58408
		..turnin The Eternal Vigil##30307 |daily
		..accept Whitepetal Lake##31131 |daily |or |next "whitepetal"
		..accept Mistfall Village##31242 |daily |or |next "mistfall"
		..accept Attack on Mistfall Village##31243 |daily |or |next "mistfall3"
		.' If Leven has no available quests after turning in The Eternal Vigil click here. |confirm 
	step
		goto 56.7,43.2
		.talk Ren Firetongue##58469
		..accept A Smashing Impression##30283 |daily
	step
		goto 56.5,43.4
		.talk He Softfoot##58470
		..accept The Silent Approach##30281 |daily
	step
		goto 56.5,43.7
		.talk Anji Autumnlight##58465
		..accept Burning Away the Filth##30282 |daily
	step
		goto 56.5,43.7
		.talk Kun Autumnlight##58471
		..accept Rude Awakenings##30292 |daily |or
		..accept In Enemy Hands##30293 |daily |or
	step
		goto 43.4,42.9
		.clicknpc Shao-Tien Ritual Statue##63090
		.' Click all four statues and fight off whatever creature spawns to defend them.
		.' Shao-Tien Ritual Statues destroyed |q 30283/1
		|only if havequest(30283)
	step
		goto 45.2,41.7
		.kill 8 Paleblade Flesheater##63082+ |q 30292/1 |only if havequest(30292)
		.from Shao-Tien Mindbender##63129+, Shao-Tien Reclaimer##63081+ |only if havequest(30281)
		.' Kill 10 Whitepetal mogu |q 30281/1 |only if havequest(30281)
		.' Use the Shado-Pan Torch in your bags near the Shao-Tien Banners in this area. |use Shado-Pan Torch##84781 |only if havequest(30282)
		.' Burn 10 Shao-Tien Banners |q 30282/1 |only if havequest(30282)
		.' Rescue 8 Dominated Defenders by killing the Shao-Tien Mindbender's controlling them. |q 30293/1 |only if havequest(30293)
	step
		'Click the Complete Quest box that displays on the right side of the screen under your minimap
		..turnin The Silent Approach##30281 |daily
		..accept The Soul-Gatherer##30482
	step
		goto 40.8,48.0
		.from Shadowmaster Sydow##63240+ |tip You can stand on the Lily Pads in the water.
		.get Soul-Gatherer's Beads |q 30482/1
		|only if havequest(30482)
	step
		goto 56.6,43.2
		.talk He Softfoot##58470
		..turnin The Soul-Gatherer##30482
	step
		goto 56.7,43.2
		.talk Ren Firetongue##58469
		..turnin A Smashing Impression##30283 |daily
	step
		goto 56.5,43.7
		.talk Anji Autumnlight##58465
		..turnin Burning Away the Filth##30282 |daily
	step
		goto 56.5,43.7
		.talk Kun Autumnlight##58471
		..turnin Rude Awakenings##30292 |daily
		..turnin In Enemy Hands##30293 |daily
	step
		goto 56.7,43.6
		.talk Leven Dawnblade##58408
		 ..accept Behind Our Lines##31136 |daily |or |next "behind"
		..accept The Ruins of Guo-Lai##31248 |daily |or |next "ruins"
		..accept Setting Sun Garrision##31250 |daily |or |next "ssg"
		..accept Mistfall Village##31249 |daily |or |next "mistfall"
	step
	label	"behind"
		goto 69.2,54.8
		.' Walk along this path until you find General Tamuja
		.kill General Temuja##63101+ |q 31136/1
	step
		goto 56.7,43.6
		.talk Leven Dawnblade##58408
		 ..turnin Behind Our Lines##31136
		|next "ruins" |only if havequest(31248) or havequest(31294) or havequest(31296)
		|next |only if defualt
	step
		.' Friendly |next "end" |only if rep('Golden Lotus')<=Friendly
		.' Honored |next "honored" |only if rep('Golden Lotus')==Honored
		.' Revered |next "revered" |only if rep('Golden Lotus')==Revered 
		.' Exalted |next "exalted" |only if rep('Golden Lotus')==Exalted 
	step
	label ruins
		goto 34.0,38.1
		.talk Anji Autumnlight##58503
		..turnin The Ruins of Guo-Lai##31248 |only if havequest(31248)
		..turnin The Ruins of Guo-Lai##31294 |only if havequest(31294)
		..turnin Guo-Lai Infestation##31240 |only if havequest(31240)
		..turnin The Ruins of Guo-Lai##31296 |only if havequest(31296)
		..accept In Ashen Webs##30200 |daily 
		..accept Troubling the Troublemakers##30228 |daily 
		..accept Blood on the Rise##30226 |daily 
		|confirm
	step
		goto 34.0,38.1
		.talk Kun Autumnlight##58504
		..accept Hard as a Rock##30304 |daily |or
		..accept That's Not a Rock!##30204 |daily |or
	step
		goto 33.5,40.8
		.talk Sinan the Dreamer##63266
		..accept Runelocked##30205 |daily 
		..accept Runes in the Ruins##30206 |daily 
		|confirm
	step
		goto 31.2,31.0
		.' Around this ruin there will be four blue runic symbols on the ground, walk over each of them to unlock the Ancient Mogu Artifact
		.click Ancient Mogu Artifact
		.get Ancient Mogu Artifact##85204 |q 30205/1
		.' The relic may also be at [26.9,19.6]
		|only if havequest(30205)
	step
		goto 30.7,20.4
		.from Stonebark Trickster##58545 |only if havequest(30228)
		.' Kill 8 Stonebark sprites |q 30228/1 |only if havequest(30228)
		.from Shao-Tien Fist##65134+, Shao-Tien Sorcerer##65133+ |only if havequest(30226)
		.' Kill 8 Ruin's Rise mogu. |q 30226/1 |only if havequest(30226)
	step
		goto 26.3,29.2
		.click Mogu Statue |only if havequest(30304)
		.from Mogu Statue##63447+ |only if havequest(30304)
		.' Destroy 10 Mogu Statues |q 30304/1 |only if havequest(30304)
		.from Ashweb Weaver##58459+, Ashweb Piercer##58475+ |only if havequest(30200)
		.' Kill 10 Ashweb Spiders |q 30200/1 |only if havequest(30200)
		.' Use your Shado-Pan Torch on the small rocks around this area. |use Shado-Pan Torch##85261 |only if havequest(30204)
		.kill 50 Ashweb Hatchling##58568+ |q 30204/1 |only if havequest(30204)
		.click Guo-Lai Runestone##6714 |only if havequest(30206)
		.get 12 Guo-Lai Runestone |q 30206/1 |only if havequest(30206)
		.' You can find more of the objectives in this step at [25.2,38.7]
	step
		goto 34.0,38.1
		.talk Kun Autumnlight##58504
		..turnin Hard as a Rock##30304 |daily 
		..turnin That's Not a Rock!##30204 |daily 
	step
		goto 34.0,38.1
		.talk Anji Autumnlight##58503
		..turnin In Ashen Webs##30200 |daily 
		..turnin Troubling the Troublemakers##30228 |daily 
		..turnin Blood on the Rise##30226 |daily 
		..accept Wulon, the Granite Sentinel##30227 |daily |or 
		..accept The Ashweb Matriarch##30225 |daily |or
		..accept The Crumbling Hall##30277 |daily |or 
		..accept The Thunder Below##30280 |daily |or
	step
		goto 33.5,40.8
		.talk Sinan the Dreamer##63266
		..turnin Runelocked##30205 |daily 
		..turnin Runes in the Ruins##30206 |daily 
	step
		goto Vale of Eternal Blossoms/18 77.6,72.9
		.kill Wulon##63510 |q 30227/1
		|only if havequest(30227)
	step
		goto Vale of Eternal Blossoms/18 75.7,47.9
		.kill Bloodtip##58474 |q 30225/1 |tip Every 20% Bloodtip casts Call Swarmers which brings out many small spiders, they are easily killed and need to be killed immediately.
		|only if havequest(30225)
	step
		goto 56.1,49.1
		'Traverse the following rooms by only stepping on the pale tiles, colored tiles will harm you.
		|confirm
		|only if havequest(30280)
	step
		goto Vale of Eternal Blossoms/19 53.9,68.3
		.kill Milau##64965 |q 30280/1 |tip Milau has several deadly abilities. He will cast a Lightning Breath in any direction, do not be in front of him when he does this. He also starts casting Lightning Pools, constantly move until he is done. Periodically he will pull you to the middle of the room and cast Lightning Sweep. While he is casting get as much distance on him as you can.
		|only if havequest(30280)
	step
		'Follow this hallway. |goto Vale of Eternal Blossoms/18 42.3,53.7 <5 |c
		|only if havequest(30277)
	step
		goto Vale of Eternal Blossoms/18 36.3,36.6
		.click Deactivate First Spirit Wall
		.' Deactivate the First Spirit Wall |q 30277/1
		|only if havequest(30277)
	step
		goto Vale of Eternal Blossoms/18 23.2,28.8
		.click Deactivate Second Spirit Wall
		.' Deactivate the Second Spirit Wall |q 30277/2
		|only if havequest(30277)
	step
		goto Vale of Eternal Blossoms/18 38.3,31.1
		.click Deactivate Final Spirit Wall
		|tip Make sure you're stepping on the green tiles, as the others will hurt you. There is a path to both the spirit wall and the artifact.
		.' Deactivate the Final Spirit Wall |q 30277/3
		|only if havequest(30277)
	step
		goto Vale of Eternal Blossoms/18 49.3,30.4
		.click Ancient Guo-Lai Artifact
		.get Ancient Guo-Lai Artifact |q 30277/4
		|only if havequest(30277)
	step
		goto Vale of Eternal Blossoms 34.0,38.1
		.talk Anji Autumnlight##58503
		..turnin The Thunder Below##30280 
		|only if havequest(30280)
	step
		goto 34.0,38.1
		.talk Anji Autumnlight##58503
		..turnin The Crumbling Hall##30277 
		|only if havequest(30277)
	step
		goto 34.0,38.1
		.talk Anji Autumnlight##58503
		..turnin The Ashweb Matriarch##30225 |daily |or 
		..turnin Wulon, the Granite Sentinel##30227 |daily |or
		|next "end" |only if rep('Golden Lotus')<=Honored
		|next "revered" |only if rep('Golden Lotus')==Revered 
		|next "exalted" |only if rep('Golden Lotus')==Exalted 
	step
	label mistfall
		goto 33.9,72.2
		.talk Che Wildwalker##59338
		..turnin Mistfall Village##31242 |daily |only if havequest(31242)
		..turnin Mistfall Village##31245 |daily |only if havequest(31245)
		..turnin Mistfall Village##31249 |daily |only if havequest(31249)
		..accept Clearing in the Forest##30263 |daily |or 2
		..accept Encroaching Storm##30194 |daily |or 2
		..accept Ruffling Some Feathers##30232 |daily |or 2
		..accept The Pandaren Uprising Relived##30237 |daily |or 2
		..accept Return to Rest##30238 |daily |or 2
		.'_
		.' Click here if these quests are not available |confirm
	step
		goto 35.4,74.1
		.talk Mayor Shiyo##58819
		..accept Sprite Plight##30190 |daily |or 2
		..accept My Town, It's on Fire##30192 |daily |or 2
		..accept Steer Clear of the Beer Here##30191 |daily |or 2
		.'_
		.' If these quests are not available click here |confirm
	step
		goto 33.9,70.4
		.talk Cook Tope##58818
		..accept Meating Expectations##30193 |daily |or 2
		..accept Pomfruit Pickup##30231 |daily |or 2
		..accept Lushroom Rush##30196 |daily |or 2
		.'_
		.' If these quests are not available click here. |confirm
	step
		goto 33.8,69.7
		.talk Merchant Tantan##58820
		..accept Blooming Blossoms##30195 |daily
		.'_
		.' If this quest is not available click here. |confirm
	step
		goto 25.8,74.8
		.kill 8 Thundermaw##58456+ |q 30194/1 |only if havequest(30194)
		.from Fairlands Gazelle##58454+ |only if havequest(30193)
		.get 10 Fairlands Gazelle Meat##79244+ |q 30193/1 |only if havequest(30193)
		.' Use the Pomharvest Firework in your bags to knock Pomfruits out of the trees in the area |use Pomharvest Firework##79344 |only if havequest(30231)
		.clicknpc Pomfruit##58767 |only if havequest(30231)
		.get 12 Pomfruit##79250+ |q 30231/1 |only if havequest(30231)
		.from Silkfeather Hawk##58457 |only if havequest(30232)
		.get 120 Silken Feather##84121+ |q 30232/1 |only if havequest(30232)
		.click Eternal Blossom |tip These can be found most abundantly along the river. |only if havequest(30195)
		.get 10 Eternal Blossom##79246+ |q 30195/1 |only if havequest(30195)
	step
		 goto 29.9,53.5
		.from Shao-Tien Painweaver##65131+, Shao-Tien Conqueror##65132+
		.' Kill 10 Winterbough Glade mogu. |q 30263/1
		|only if havequest(30263)
	step
		goto 37.3,81.4
		.from 12 Slateskin Troublemaker##58673+ |q 30190/1 |only if havequest(30190)
		.click Stolen Mistfall Keg |only if havequest(30191)
		.get 10 Stolen Mistfall Keg##85778+ |q 30191/1 |only if havequest(30191)
		.click Brazier Fire |only if havequest(30192)
		.' Put out 30 Brazier Fires |q 30192/1 |only if havequest(30192)
	step
		goto 49.5,67.6
		.kill 8 Ancient Mogu Spirit##58671+ |q 30237/1 |only if havequest(30237)
		.click Lushroom |only if havequest(30196)
		.get 12 Lushroom##85681+ |q 30196/1 |only if havequest(30196)
		.click Pandaren Gravestone |only if havequest(30238)
		.' Honor 6 Pandaren Gravestones |q 30238/1 |only if havequest(30238)
	step
		'Click the Complete Quest box that displays on the right side of the screen under your minimap
		..turnin The Pandaren Uprising Relived##30237 |daily
	step
		goto 35.4,74.1
		.talk Mayor Shiyo##58819
		..turnin Sprite Plight##30190 |daily
		..turnin My Town, It's on Fire##30192 |daily
		..turnin Steer Clear of the Beer Here##30191 |daily
	step
		goto 33.9,70.4
		.talk Cook Tope##58818
		..turnin Meating Expectations##30193 |daily
		..turnin Pomfruit Pickup##30231 |daily
		..turnin Lushroom Rush##30196 |daily
	step
		goto 33.8,69.7
		.talk Merchant Tantan##58820
		..turnin Blooming Blossoms##30195 |daily
	step
		goto 33.9,72.2
		.talk Che Wildwalker##59338
		..turnin Encroaching Storm##30194 |daily
		..turnin Ruffling Some Feathers##30232 |daily
		..turnin Clearing in the Forest##30263 |daily
		..turnin Return to Rest##30238 |daily
		..accept Lao-Fe the Slavebinder##30239 |daily |or |next "slave"
		..accept Aetha##30236 |daily |or |next "aetha"
		..accept The Ruins of Guo-Lai##31294 |daily |or |next "ruins"
		..accept Mogu within the Ruins of Guo-Lai##31295 |daily |or |next honored
		..accept Setting Sun Garrison##30385 |daily |or |next "ssg"
		..accept Quid Pro Quo##30235 |daily |or
	step
		goto 30.8,79.4
		.' Use the Stone of the Water to walk on water |use Stone of the Water Strider##87807
		.kill Quid##58771 |q 30235/1
		|only if havequest(30235)
	step
		goto 33.9,72.2
		.talk Che Wildwalker##59338
		..turnin Quid Pro Quo##30235
	step
	label aetha
		goto 35.0,90.0
		.from Aetha##58778 |tip Aetha will constantly summon Tornadoes, simply kite Aetha to a new location out of the range. With your Stone of the Water Strider buff, you should easily be able to kite on the water.
		.' Subdue Aetha |q 30236/1
	step
		goto 33.9,72.2
		.talk Che Wildwalker##59338
		..turnin Aetha##30236 |daily
		|next "end" |only if rep('Golden Lotus')<=Friendly
		|next "honored" |only if rep('Golden Lotus')==Honored 
		|next "revered" |only if rep('Golden Lotus')==Revered
		|next "exalted" |only if rep('Golden Lotus')==Exalted 
	step
	label slave
		goto 47.4,65.8
		.kill Spirit of Lao-Fe##58817 |q 30239/1
	step
		goto 33.9,72.2
		.talk Che Wildwalker##59338
		..turnin Lao-Fe the Slavebinder##30239 |daily
		|next "end" |only if rep('Golden Lotus')<=Friendly
		|next "honored" |only if rep('Golden Lotus')==Honored 
		|next "revered" |only if rep('Golden Lotus')==Revered 
		|next "exalted" |only if rep('Golden Lotus')==Exalted 
	step
	label mistfall2
		goto 35.1,75.4
		.talk Sun Tenderheart##59337
		..turnin Attack on Mistfall Village##31243 |daily
		..accept Wu Kao Scouting Reports##30285 |daily |or
		..accept Backed Into a Corner##30286 |daily |or
	step
		goto 35.3,74.9
		.talk Rook Stonetoe##58911
		..accept Freeing Mind and Body##30289 |daily |or 2
		..accept Mogu Make Poor House Guests##31293 |daily |or 2
		..accept Mogu Make Poor House Guests##30287 |daily |or 2
		..accept Stonebound Killers##30290 |daily |or 2
	step
		goto 35.3,76.8
		.talk Mayor Shiyo##59336
		..accept My Town, It's On Fire Again##30288 |daily
	step
		goto 37.8,73.2
		.click Miftfall Water Bucket##11350 
		.collect Mistfall Water Bucket##85950 |n
		.' Use the Miftfall Water Bucket to put out 60 fires around town. |use Mistfall Water Bucket##85950
		.' 60 Mistfall Village fires doused. |q 30288/1
		|only if havequest(30288)
	step
		goto 33.6,72.8
		.from Shao-Tien Pillager##63948+, Shao-Tien Subjugator##63947+ |only if havequest(30287) or havequest(31293)
		.' Kill 6 Shao-Tien attackers |q 30287/1 |only if havequest(30287)
		.' Kill 12 Shao-Tien attackers |q 31293/1 |only if havequest(31293)
		.click Wu Kao Scouting Report |tip These scrolls are very small and can be hard to find. |only if havequest(30285)
		.get 3 Wu Kao Scouting Report##86099 |q 30285/1 |only if havequest(30285)
		.kill 8 Stonebound Quilen##63950+ |q 30290/1 |only if havequest(30290)
		.' Rescue 6 Cornered Villagers |q 30286/1 |tip Attack the Subjugators or Quilen that are pinning them down. |only if havequest(30286)
		.' Free 6 Dominated Guards by killing the Subjugator controlling them. |q 30289/1 |only if havequest(30289)
		|modelnpc Golden Lotus Guard##64200
	step
		goto 35.1,75.4
		.talk Sun Tenderheart##59337
		..turnin Wu Kao Scouting Reports##30285 |daily
		..turnin Backed Into a Corner##30286 |daily
	step
		goto 35.3,74.9
		.talk Rook Stonetoe##58911
		..turnin Freeing Mind and Body##30289 |daily |or 2
		..turnin Mogu Make Poor House Guests##31293 |daily |or 2
		..turnin Mogu Make Poor House Guests##30287 |daily |or 2
		..turnin Stonebound Killers##30290 |daily |or 2
	step
		goto 35.3,76.8
		.talk Mayor Shiyo##59336
		..turnin My Town, It's On Fire Again##30288 |daily
	step
		goto 35.2,74.9
		.talk Rook Stonetoe##58911
		..accept Gaohun the Soul-Severer##30296 |daily |or
		..accept Baolai the Immolator##30297 |daily |or
		.' Click here if these quests are unavailable |confirm |next "sun"
	step
		goto 39.2,74.6
		.kill Gaohun the Soul-Severer##62881 |q 30296/1
		|only if havequest(30296)
	step
		goto 37.5,81.5
		.kill Baolai the Immolator##63695 |q 30297/1 |tip  WARNING! Do not be near a ledge when he does his cleave, it will send you flying back dealing heavy falling damage.
		|only if havequest(30297)
	step
		goto 35.2,74.9
		.talk Rook Stonetoe##58911
		..turnin Gaohun the Soul-Severer##30296 |daily 
		..turnin Baolai the Immolator##30297 |daily 
	step
	label sun
		goto 35.1,75.4
		.talk Sun Tenderheart##59337
		..accept Setting Sun Garrison##31297 |daily |or |next "ssg"
		..accept The Ruins of Guo-Lai##31296 |daily |or |next "ruins"
	step
	label whitepetal
		goto 43.6,46.1
		.talk He Softfoot##59342
		..turnin Whitepetal Lake##31131 |daily
		..accept Under Watchful Eyes##30341 |daily |or
		..accept The Displaced Paleblade##30314 |daily |or
		..accept The Moving Mists##30313 |daily |or
	step
		goto 42.3,46.0
		.talk Ren Firetongue##59343
		..accept A Thousand Pointy Teeth##30284 |daily |or 2
		..accept Sparkle in the Eye##30265 |daily |or 2
		..accept Stunning Display##30291 |daily |or 2
		..accept Fiery Tongue, Fragile Feet##30342 |daily |or 2
		..accept A Weighty Task##30338 |daily |or 2
	step
		goto 42.3,46.0
		.talk Merchant Tantan##59341
		..accept Stick in the Mud##30340 |daily |or
		..accept Getting your Hands Dirty##30339 |daily |or
	step
		goto 41.1,47.0
		.kill 15 Knifetooth Swarmer##59404+ |q 30284/1 |only if havequest(30284)
		.kill 8 Stillwater Crocodile##58455+ |q 30342/1 |only if havequest(30342)
		.click Ruby Eye |tip These are inside of the Mogu heads underwater. |only if havequest(30265)
		.get 8 Ruby Eye##84646+ |q 30265/1 |only if havequest(30265)
		.clicknpc Stunned Whitepetal##62984 Carp |only if havequest(30291)
		.get 12 Stunned Whitepetal Carp##84656 |q 30291/1 |only if havequest(30291)
		.click Mogu Artifact |only if havequest(30338)
		.get 8 Mogu Artifact##84655 |q 30338/1 |only if havequest(30338)
	step
		goto 44.1,53.2
		.' Use the Shado-Pan Flare in your bags to illuminate Shao-Tien Surveyors. |use Shado-Pan Flare##89366 |only if havequest(30341)
		.kill 8 Shao-Tien Surveyor##59379+ |q 30341/1 |only if havequest(30341)
		.kill 8 Fog Walker##58672+ |q 30313/1 |only if havequest(30313)
		.from Paleblade Flesheater##59378+, Paleblade Slithertongue##63044+ |only if havequest(30314)
		.' Kill 8 Paleblade Saurok |q 30314/1 |only if havequest(30314)
		.click Whitepetal Reeds##10817 |only if havequest(30340)
		.get 12 Whitepetal Reed##84241 |q 30340/1 |only if havequest(30340)
		.click Fresh Dirt##20 |only if havequest(30339)
		.get 12 Fresh Whitepetal Worm##84240 |q 30339/1 |only if havequest(30339)
	step
		goto 43.6,46.1
		.talk He Softfoot##59342
		..turnin Under Watchful Eyes##30341 |daily
		..turnin The Displaced Paleblade##30314 |daily
		..turnin The Moving Mists##30313 |daily
	step
		goto 42.3,46.0
		.talk Merchant Tantan##59341
		..turnin Stick in the Mud##30340 |daily
		..turnin Getting your Hands Dirty##30339 |daily
	step
		goto 42.3,46.0
		.talk Ren Firetongue##59343
		..turnin A Thousand Pointy Teeth##30284 |daily
		..turnin Sparkle in the Eye##30265 |daily
		..turnin Stunning Display##30291 |daily
		..turnin Fiery Tongue, Fragile Feet##30342 |daily
		..turnin A Weighty Task##30338 |daily
	step
		goto 42.3,46.0
		.talk Ren Firetongue##59343
		..accept Vicejaw##30234 |daily |or |next "vicejaw"
		..accept Setting Sun Garrison##31247 |daily |or |next "ssg"
		..accept Guo-Lai Infestation##31240 |daily |or |next "ruins"
		..accept Mistfall Village##31245 |daily |or |next "mistfall"
		..accept Attack on Mistfall Village##31246 |daily |or |next "mistfall3"
		..accept Guo-Lai Encampment##31244 |daily |or |next "ruins2"
		..accept Cracklefang##30233 |daily |or |next "crackle"
	step
	label vicejaw
		goto 37.3,51.1
		.kill Vicejaw##58769 |q 30234/1 |tip When you first pull Vicejaw, kite him through the corpses of Paleblade Flesheaters that are lying all around, when he eats 10 of them he will begin casting Upchuck. When he does this he wil not move and will only attack in front of himself, walk around to his backside and attack until his energy meter resets to 0. When he is weak Vicejaw will pick you up and begin to eat you. Kill him before he is able to chew you to death. He will not try to eat you if he is using Upchuck, time it right and you won't have to race to kill him.
	step
		goto 42.3,46.0
		.talk Ren Firetongue##59343
		..turnin Vicejaw##30234 |daily
		|next "end" |only if rep('Golden Lotus')<=Friendly
		|next "honored" |only if rep('Golden Lotus')==Honored 
		|next "revered" |only if rep('Golden Lotus')==Revered 
		|next "exalted" |only if rep('Golden Lotus')==Exalted 
	step
	label ruins2
		goto 33.8,38.5
		.talk Leven Dawnblade##59332
		..turnin Guo-Lai Encampment##31244
		..accept Painting the Ruins Red##30298 |daily
		..accept Offering a Warm Welcome##30301 |daily
	step
		goto 33.1,39.0
		.talk Wounded Defender##63753
		..accept No Stone Unturned##30299 |daily 
		..accept The Key to Success##30300 |daily
		.'_
		.' Click here if no quest is available |confirm
	step
		goto 33.4,38.0
		.talk Rook Stonetoe##59333
		..accept Carved in Stone##30481 |daily
		.'_
		.' Click here if this quest is not available today |confirm
	step
		map Vale of Eternal Blossoms
		path loose; loop; curved
		path	31.5,34.1	25.8,34.5	24.4,32.9
		path	22.0,27.7	19.2,30.6	20.3,34.3
		path	23.9,39.1
		.from Shao-Tien Torturer##63641
		.' He walks along this path
		.get Shao-Tien Cage Key |q 30300/1
		|only if havequest(30300)
	step
		goto 25.4,28.8
		.from Shao-Tien Dominator##63610+, Shao-Tien Soul-Caller##63611+, Shao-Tien Torturer##63641+ |only if havequest(30298)
		.click Guo-Lai Runestone##6714+ |only if havequest(30481)
		.' Kill 15 Guo-Lai mogu. |q 30298/1 |only if havequest(30298)
		.get 1 Shao-Tien Cage Key |q 30300/1 |only if havequest(30300)
		.get 12 Guo-Lai Runestone |q 30481/1 |only if havequest(30481)
		.click Shao-Tien Cage |only if havequest(30300)
		.' Free 6 Golden Lotus Prisoners. |q 30300/2 |only if havequest(30300)
		.click Mogu Statue |only if havequest(30299)
		.from Mogu Statue##63447+ |only if havequest(30299)
		.' Destroy 10 Mogu Statues |q 30299/1 |only if havequest(30299)
		.' Use your Shado-Pan Torch on the Tents around this area. |use Shado-Pan Torch##85581 |only if havequest(30301)
		.' Burn 6 Shao-Tien Tents |q 30301/1 |only if havequest(30301)
	step
		goto 33.1,39.0
		.talk Wounded Defender##63753
		..turnin No Stone Unturned##30299 
		..turnin The Key to Success##30300 
	step
		goto 33.8,38.5
		.talk Leven Dawnblade##59332
		..turnin Painting the Ruins Red##30298 
		..turnin Offering a Warm Welcome##30301 
		..accept The Imperion Threat##30302 |daily
	step
		goto 68.6,71.0
		.from Gochao the Ironfist##62880
		.' Kill the Shao-Tien Imperion |q 30302/1
		|only if havequest(30302)
	step
		goto 33.8,38.5
		.talk Leven Dawnblade##59332
		..turnin The Imperion Threat##30302
		|next "end" |only if rep('Golden Lotus')<=Friendly
		|next "honored" |only if rep('Golden Lotus')==Honored 
		|next "revered" |only if rep('Golden Lotus')==Revered 
		|next "exalted" |only if rep('Golden Lotus')==Exalted
	step
	label ssg
		goto 21.4,71.6
		.talk Anji Autumnlight##58919
		..turnin Setting Sun Garrison##31247 |daily |only if havequest(31247)
		..turnin Setting Sun Garrison##30385 |daily |only if havequest(30385)
		..turnin Setting Sun Garrison##31297 |daily |only if havequest(31297)
		..turnin Setting Sun Garrision##31250 |daily |only if havequest(31250)
		..accept The Battle Ring##30306 |daily
	step
		goto 21.5,71.2
		.talk Leven Dawnblade##59340
		..accept Survival Ring: Flame##30240 |daily |or
		..accept Survival Ring: Blades##30242 |daily |or
	step
		goto 19.7,74.2
		.from Shado-Pan Trainee##58992+
		.' Defeat 20 Shado-Pan Trainees. |q 30306/1
		|only if havequest(30306)
	step
		goto 19.2,67.5
		.' Stay within the circle and avoid getting hit by the fireworks.
		.' Live through the Survival Ring for 90 seconds |q 30240/1
		|only if havequest(30240)
	step
		goto 19.2,67.5
		.' Stay within the circle and avoid the posts with blades surrounding them and the running pandas.
		.' Live through the Survival Ring for 90 seconds |q 30242/1
		|only if havequest(30242)
	step
		goto 21.5,71.2
		.talk Leven Dawnblade##59340
		..turnin Survival Ring: Flame##30240 |daily |or
		..turnin Survival Ring: Blades##30242 |daily |or
	step
		goto 21.4,71.6
		.talk Anji Autumnlight##58919
		..turnin The Battle Ring##30306 |daily
		..accept Upon the Ramparts##30246 |daily |or
		..accept Enemy at the Gates##30264 |daily |or
		..accept No Reprieve##30444 |daily |or
		.'_
		.' If these quests are unavailable today, click here. |confirm
	step
		goto 21.4,71.5
		.talk Kun Autumnlight##58920
		..accept Mantid Under Fire##30243 |daily |or
		..accept Along the Serpent's Spine##30244 |daily |or
		..accept Lost Scouts##30245 |daily |or
		.'_
		.' If these quests are unavailable today, click here. |confirm
	step
		goto 21.5,71.2
		.talk Leven Dawnblade##59340
		..accept Bloodied Skies##30266 |daily
		.'_
		.' If this quest is unavailable today, click here. |confirm
	step
		goto 18.2,63.6
		.talk Kelari Featherfoot##58704
		..accept Roll Club: Serpent's Spine##30261 |daily
		.'_
		.' If this quest is unavailable today, click here. |confirm
	step
		goto Vale of Eternal Blossoms 3.9,51.7
		.clicknpc Hot Oil Cauldron##64369
		.' Use the Abilities on your toolbar to set the enemies below on fire.
		.' Kill 80 Krik'thik Hivelings |q 30243/1
		|only if havequest(30243)
	step
		.' Click the quest complete box in the corner below your minimap.
		..turnin Mantid Under Fire##30243
		..accept Along the Serpent's Spine##30244
		.' If this quest isn't available, click here |confirm
		|only if havequest(30243)
	step
		goto Vale of Eternal Blossoms 18.6,36.4
		.' Kill the Shao-Tien Mobs attacking the Shado-Pan Scouts.
		.talk Shado-Pan Scout##58947 |q 30245/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Lost Scouts##30245
		..accept The Butcher##30248
		|only if havequest(30245)
	step
		goto 17.0,47.5
		.from Shao-Tien Antiquator##58928+, Shao-Tien Fist##58927+
		.kill 8 Shao-Tien mogu |q 30444/1
		|only if havequest(30444)
	step
		goto 18.2,63.6
		.talk Kelari Featherfoot##58704
		.' Let's roll. |q 30261/1
		|only if havequest(30261)
	step
		'Hold down your right mouse button to help you maneuver through the course. |tip Grab as many speed boosts as you can to make it go quicker.
		.' Complete the Serpent's Spine Roll Course. |q 30261/2
		|only if havequest(30261)
	step
		goto 15.6,66.1
		.clicknpc War Serpent##65336
		.' Mount a War Serpent |invehicle |q 30264/1
		|only if havequest(30264)
	step
		'Use the abilities on your hotbar to do the following:
		.kill 60 Krik'thik Hiveling##63972+ |q 30264/2
		.kill 3 Krik'thik War Wagon##64274+ |q 30264/3
		.kill 3 Krik'thik Catapult##64275+ |q 30264/4
		|only if havequest(30264)
	step
		'Click the Return to Setting Sun Garrison button. |outvehicle
		|only if havequest(30264)
	step
		goto 5.4,72.3
		.click Setting Sun Turret 
		.' Mount a turret. |invehicle |c
		|only if havequest(30266)
	step
		.kill 30 Krik'thik Swarmer##63973+ |q 30266/1
		|only if havequest(30266)
	step
		'Click the Leave Vehicle button. |outvehicle
		|only if havequest(30266)
	step
		goto 11.4,58.8
		.from Krik'thik Locust-Guard##63974+, Krik'thik Needler##63976+
		.' Kill 10 Kir'thik wall attackers |q 30246/1
		|only if havequest(30246)
	step
		goto 6.9,68.8
		.from Krik'thik Locust-Guard##63974+, Krik'thik Needler##63976+
		.' Kill 10 Kir'thik wall attackers |q 30244/1
		|only if havequest(30244)
	step
		'Click the Complete Quest box that displays on the right side of the screen under your minimap
		..turnin Along the Serpent's Spine##30244 |daily
		..accept Under the Setting Sun##30249 |daily
		|only if havequest(30244)
	step
		goto 6.0,58.8
		.kill Kri'chon##63978 |q 30249/1
		|only if havequest(30249)
	step
		goto 21.5,71.2
		.talk Leven Dawnblade##59340
		..turnin Bloodied Skies##30266 |daily
		|only if havequest(30266)
	step
		goto 18.2,63.6
		.talk Kelari Featherfoot##58704
		..turnin Roll Club: Serpent's Spine##30261 |daily
		|only if havequest(30261)
	step
		goto 21.4,71.6
		.talk Anji Autumnlight##58919
		..turnin Upon the Ramparts##30246 |daily
		..turnin No Reprieve##30444
		..accept Vyraxxis, the Krik'thik Swarm-Lord##30251 |daily |only if completedq(30246)
	step
		goto 7.9,33.9
		.kill Vyraxxis##63977 |q 30251/1
		|only if havequest(30251)
	step
		goto 21.4,71.6
		.talk Anji Autumnlight##58919
		..turnin Vyraxxis, the Krik'thik Swarm-Lord##30251 |daily
		|only if havequest(30251)
	step
		goto 21.4,71.5
		.talk Anji Autumnlight##58919
		..turnin Enemy at the Gates##30264 |daily
	step
		goto 21.4,71.5
		.talk Kun Autumnlight##58920
		..turnin Mantid Under Fire##30243 |daily
		..turnin Under the Setting Sun##30249 |daily
		|next "end" |only if rep('Golden Lotus')<=Friendly
		|next "honored" |only if rep('Golden Lotus')==Honored 
		|next "revered" |only if rep('Golden Lotus')==Revered 
		|next "exalted" |only if rep('Golden Lotus')==Exalted
	step
	label mistfall3
		goto 35.2,74.9
		.talk Rook Stonetoe##58911
		..turnin Attack on Mistfall Village##31246 |daily
		..accept Mogu Make Poor House Guests##30287 |daily |or 2
		..accept Stonebound Killers##30290 |daily |or 2
		..accept Freeing Mind and Body##30289 |daily |or 2
		.' If the turn in step for this step is grayed out, click here. |confirm |next "mistfall2"
	step
		goto 35.1,75.4
		.talk Sun Tenderheart##59337
		..accept Wu Kao Scouting Reports##30285 |daily |or
		..accept Backed Into a Corner##30286 |daily |or
	step
		goto 35.3,76.7
		.talk Mayor Shiyo##59336
		..accept My Town, It's On Fire Again##30288 |daily
	step
		goto 37.8,73.2
		.click Miftfall Water Bucket
		.collect Mistfall Water Bucket##85950 |n
		.' Use the Miftfall Water Bucket to put out 60 fires around town. |use Mistfall Water Bucket##85950
		.' 60 Mistfall Village fires doused. |q 30288/1
		|only if havequest(30288)
	step
		goto 33.6,72.8
		.from Shao-Tien Pillager##63948+, Shao-Tien Subjugator##63947+ |only if havequest(30287) or havequest(31293)
		.' Kill 6 Shao-Tien attackers |q 30287/1 |only if havequest(30287)
		.' Kill 12 Shao-Tien attackers |q 31293/1 |only if havequest(31293)
		.click Wu Kao Scouting Report |tip These scrolls are very small and can be hard to find. |only if havequest(30285)
		.get 3 Wu Kao Scouting Report##86099 |q 30285/1 |only if havequest(30285)
		.kill 8 Stonebound Quilen##63950+ |q 30290/1 |only if havequest(30290)
		.' Rescue 6 Cornered Villagers |q 30286/1 |tip Attack the Subjugators or Quilen that are pinning them down. |only if havequest(30286)
		.' Free 6 Dominated Guards by killing the Subjugator controlling them. |q 30289/1 |only if havequest(30289)
		|modelnpc Golden Lotus Guard##64200
	step
		goto 35.2,74.9
		.talk Rook Stonetoe##58911
		..turnin Mogu Make Poor House Guests##31293 |daily
		..turnin Stonebound Killers##30290 |daily
		..turnin Freeing Mind and Body##30289 |daily
	step
		goto 35.1,75.4
		.talk Sun Tenderheart##59337
		..turnin Wu Kao Scouting Reports##30285 |daily 
		..turnin Backed Into a Corner##30286 |daily 
	step
		goto 35.3,76.7
		.talk Mayor Shiyo##59336
		..turnin My Town, It's On Fire Again##30288 |daily
	step
		goto 35.2,74.9
		.talk Rook Stonetoe##58911
		..accept Gaohun the Soul-Severer##30296 |daily |or
		..accept Baolai the Immolator##30297 |daily |or
		.' If it's not available, click here.  |confirm
	step
		goto 35.1,75.4
		.talk Sun Tenderheart##59337
		..accept Setting Sun Garrison##31297 |daily |or |next "ssg"
		..accept The Ruins of Guo-Lai##31296 |daily |or |next "ruins"
	step
		goto 39.2,74.6
		.kill Gaohun the Soul-Severer##62881 |q 30296/1
		|only if havequest(30296)
	step
		goto 37.5,81.5
		.kill Baolai the Immolator##63695 |q 30297/1 |tip  WARNING! Do not be near a ledge when he does his cleave, it will send you flying back dealing heavy falling damage.
		|only if havequest(30297)
	step
		goto 35.2,74.9
		.talk Rook Stonetoe##58911
		..turnin Gaohun the Soul-Severer##30296 |daily 
		..turnin Baolai the Immolator##30297 |daily 
		|next "end" |only if rep('Golden Lotus')<=Friendly
		|next "honored" |only if rep('Golden Lotus')==Honored 
		|next "revered" |only if rep('Golden Lotus')==Revered 
		|next "exalted" |only if rep('Golden Lotus')==Exalted
	step
	label crackle
		goto Vale of Eternal Blossoms 46.5,59.1
		.from Cracklefang##58768
		.' Cracklefang Slain |q 30233/1
	step
		goto 42.4,46.0
		.talk Ren Firetongue##59343
		..turnin Cracklefang##30233
		|next "end" |only if rep('Golden Lotus')<=Friendly
		|next "honored" |only if rep('Golden Lotus')==Honored 
		|next "revered" |only if rep('Golden Lotus')==Revered 
		|next "exalted" |only if rep('Golden Lotus')==Exalted
	step
	label revered
		goto 74.2,42.6
		.talk Jaluu the Generous##59908
		.buy 1 Grand Commendation of the Golden Lotus##93215
		.' Use the Commendation of the Golden Lotus you just purchased. |use Grand Commendation of the Golden Lotus##93215
		.' If you have already purchased this (either on this or another character), click here. |confirm
		|only if rep("Golden Lotus")>=Revered
	step
		goto 57.2,42.9
		.talk Zhi the Harmonious##59905
		..accept Battle Spear of the Thunder King##30640
		|only if not completedq(30640)
	step
		goto 21.4,19.7
		.click Battle Spear of the Thunder King
		.get Battle Spear of the Thunder King##80808 |q 30640/1
		|only if not completedq(30640)
	step
		goto 57.2,42.9
		.talk Zhi the Harmonious##59905
		..turnin Battle Spear of the Thunder King##30640 |only if not completedq(30640)
		..accept Battle Helm of the Thunder King##30641 |only if not completedq(30641)
	step
		'Enter the building here. |goto 22.3,26.4 <5 |c
		|only if havequest(30641)
	step
		goto Vale of Eternal Blossoms/18 56.2,48.7
		'Traverse the following rooms by only stepping on the pale tiles, colored tiles will harm you.
		|confirm
		|only if havequest(30641)
	step
		goto 58.5,44.4
		.talk Ren Firetongue##63571
		.' Tell him Zhi sent you.
		.' Enter the Hall of Tiles |q 30641/1
		|only if havequest(30641)
	step
		'Follow Ren Firetongue |goto Vale of Eternal Blossoms/19 44.7,67.1 <5 |c
		|only if havequest(30641)
	step
		goto 52.0,76.1
		.from Zhao-Jin the Bloodletter##60359 |tip He constantly shoots lighting at you so keep on the move. If you are in melee range he will try to cleave you, step around him as he begins casting.
		.click Battle Helm of the Thunder King
		.get Battle Helm of the Thunder King##80222 |q 30641/2
		|only if havequest(30641)
	step
		'While exiting the building be careful of the tiles. The safe path is along the pale tiles.
		.' Exit the building. |goto Vale of Eternal Blossoms/18 56.1,93.7 <5 |c
		|only if havequest(30641)
	step
		goto Vale of Eternal Blossoms 57.2,42.9
		.talk Zhi the Harmonious##59905
		..turnin Battle Helm of the Thunder King##30641 |only if havequest(30641)
		..accept Battle Axe of the Thunder King##30642 //// Cannot get gate to drop.
		|only if not completedq(30642)
	step
		'Enter the building here. |goto 40.4,77.1 <5 |c
		|only if not completedq(30642)
	step
		goto 44.3,76.5
		.' Fight off the Jade Constructs that attack you. |tip If you need help defeating them walk into the orbs around this room. Blue will give a damage and haste buff, green will heal you.
		.from Jade Construct##60297+
		.' Pass the Trial of the Constructs |q 30642/1
		|only if not completedq(30642)
	step
		goto 45.4,76.2
		.click Battle Axe of the Thunder King
		.get Battle Axe of the Thunder King##80807 |q 30642/2
		|only if not completedq(30642)
	step
		goto 44.8,76.3
		.talk Zhi the Harmonious##59905
		..turnin Battle Axe of the Thunder King##30642
		|only if not completedq(30642)
		|next "end"
	step
	label honored
		goto 33.8,38.5
		.talk Leven Dawnblade##58408
		..turnin Mogu within the Ruins of Guo-Lai##31295 |only if havequest(31295)
		..accept The Secrets of Guo-Lai##30639 |only if not completedq(30639)
		..accept Painting the Ruins Red##30298 |daily
		.'_
		.' Click here if the Daily quest is not available today |confirm
	step
		goto 33.4,38.0
		.talk Rook Stonetoe##59333
		..accept He Knows What He's Doing##30305 |daily |or 2
		..accept Carved in Stone##30481 |daily |or 2
		.'_
		.' Click here if these quests are not available |confirm
	step
		goto 33.1,39.0
		.talk Sun Tenderheart##59334
		..accept No Stone Unturned##30299 |daily
		..accept The Key to Success##30300 |daily
		.'_
		.' Click here if this quest is not available |confirm
	step
		map Vale of Eternal Blossoms
		path loose; loop; curved
		path	31.5,34.1	25.8,34.5	24.4,32.9
		path	22.0,27.7	19.2,30.6	20.3,34.3
		path	23.9,39.1
		.from Shao-Tien Torturer##63641
		.' He walks along this path
		.get Shao-Tien Cage Key |q 30300/1
		|only if havequest(30300)
	step
		goto 15.0,25.9
		.kill Bai-Jin the Butcher##58949 |q 30248/1
		|only if havequest(30248)
	step
		goto 24.6,29.6
		.' All around this area:
		.click Shao-Tien Cage##9667
		.' Release Golden Lotus Prisoners |q 30300/2
		.' You can find more cages here [24.6,38.3]
		.' And more cages here: [29.9,29.4]
		|only if havequest(30300)
	step
		goto 31.8,33.0 |only if havequest(30298) or havequest(30481) or havequest(30305)
		.click Guo-Lai Runestone##6714+ |only if havequest(30481)
		.from Shao-Tien Soul-Caller##63611+, Shao-Tien Dominator##63610+ |only if havequest(30298) or havequest(30481)
		.kill 15 Guo-Lai mogu |q 30298/1 |only if havequest(30298)
		.get 12 Guo-Lai Runestone |q 30481/1 |only if havequest(30481)
		.' Stand on the Poison Traps and attack enemies in this area |model 10547 |only if havequest(30305)
		.' Lure 8 enemies into Poison Traps |q 30305/1 |only if havequest(30305)
	step
		goto Vale of Eternal Blossoms/18 41.0,52.8
		.talk He Softfoot##64647
		.' Let's go |q 30639/1
		|only if havequest(30639)
	step
		goto Vale of Eternal Blossoms/18 43.8,27.3
		'Engage Zhao-Jin the Bloodletter and defeat the Crumbling Jade Warriors he sends at you.
		'After you defeat the Crumbling Jade Warriors, Zhao-Jin will summon a Jade Collossus, weaken it as fast as you can.
		.' Uncover the mogu plan in the Hall of Statues |q 30639/2
		|modelnpc Zhao-Jin the Bloodletter##64663
		|modelnpc Crumbling Jade Warrior##64883
		|only if havequest(30639)
	step
		goto Vale of Eternal Blossoms 33.4,38.0
		.talk Rook Stonetoe##59333
		..turnin He Knows What He's Doing##30305
		..turnin Carved in Stone##30481
		|only if havequest(30481) or havequest(30305)
	step
		goto 33.8,38.5
		.talk Leven Dawnblade##58408
		..turnin Painting the Ruins Red##30298 |only if havequest(30298)
		..accept The Imperion Threat##30302 |daily
		.'_
		.' Click here if this daily quest is not available |confirm
	step
		goto 33.1,39.0
		.talk Sun Tenderheart##59334
		..turnin The Key to Success##30300
		|only if havequest(30300)
	step
		goto Vale of Eternal Blossoms/18 74.3,53.5
		.from Huo-Shuang##63691
		.' Kill the Shao-Tien Imperion |q 30302/1
		|only if havequest(30302)
	step
		goto Vale of Eternal Blossoms 33.8,38.5
		.talk Leven Dawnblade##58408
		..turnin The Imperion Threat##30302
	step
		goto 56.8,43.8
		.talk Leven Dawnblade##58408
		..turnin The Secrets of Guo-Lai##30639
	step
		goto Vale of Eternal Blossoms 21.3,71.5
		.talk Kun Autumnlight##58920
		..turnin The Butcher##30248
		|next "end"
	step
	label exalted
		goto 56.7,43.7
		.talk Leven Dawnblade##58408
		..accept The Mogu's Message##30643
	step
		'Enter the building here. |goto 40.4,77.2 <5 |c
	step
		goto 44.8,76.3
		.talk Zhi the Harmonious##59905
		..turnin The Mogu's Message##30643 |tip WARNING! Turning in this quest will spawn enemy ambushers.
		..accept What Comes to Pass##30644
	step
		goto 56.5,43.3
		.talk Sun Tenderheart##58468
		..turnin What Comes to Pass##30644
		..accept The Might of Three##30645
	step
		goto 64.4,41.5
		.from Shao-Tien Marauder##60225+, Granite Quilen##60223+, Shao-Tien Spiritrender##60224+, Reanimated Jade Warrior##60121+
		.' Kill 100 Mogu Invaders |q 30645/1 |tip While doing this quest you will get some help from the Jade Serpent, Xeun the White Tiger, and Niuzao the Black Ox. Kills 1-34 will aided by the Jade Serpent, use the AoE buff given to take down many foes at once. Kill 34-67 will be aided by the White Tiger, use his buff to focus down individual targets in larger packs, when they are shattered they will deal extreme AoE damage. Kills 67-100 will be aided by Niuzao, use his buff to damage enemies in a cone. Periodically you will instantly kill enemies with a knockback.
	step
		goto 74.2,41.8
		.talk Sinan the Dreamer##59906
		..turnin The Might of Three##30645
		..accept The Final Power##30646
	step
		goto 77.6,37.2
		.' Use the Red Crane's power to jump over the wall of flame.
		|confirm
		|only if havequest(30646)
	step
		goto 78.7,35.8
		'Zhao-Jin will periodically throw Lightning Spears. Click them to pick them up and then use the new button on your screen to hurl the spear back at him. this will be your main source of damage.
		'Zhao-Jin will also summon Lightning Waves. With the Red Crane's buff you can easily jump over these.
		.kill Zhao-Jin the Bloodletter##60273 |q 30646/1
	step
		goto 56.5,43.6
		.talk Anji Autumnlight##58465
		..turnin The Final Power##30646
		|next "end"
	step
	label end
		'You have reached the end of the guide for today.
		.' Click here to go back to the beginning of the dailies. |confirm |next "dailies"
]])
ZygorGuidesViewer:RegisterInclude("Golden_Lotus_Revered",[[
	step
	label goldenmenu
		'Proceeding to Pre-Quests |next |only if default
		'Proceeding to The Golden Lotus Dailies |next "dailies" |only if completedq(30638)
		'Skipping the Golden Lotus |next "end_of_lotus" |only if rep("Golden Lotus")>=Revered
	step
		goto Kun-Lai Summit 63.7,86.7
		.talk Farmhand Ko##63751
		..accept Temple of the White Tiger##31393
	step
		goto 68.7,43.0
		.talk Sunwalker Dezco##64542
		..turnin Temple of the White Tiger##31393
		..accept A Celestial Experience##31395
	step
		goto 68.9,42.8
		'Talk to Xuen |q 31395/1 |modelnpc Xuen##64528
		.from Spirit of Violence##64656
		.' Pass the First Test |q 31395/2
		.from Spirit of Anger##64684
		.' Pass the Second Test |q 31395/3
		.from Spirit of Hatred##64742
		.' Pass the Third Test |q 31395/4
	step
		goto 68.7,43.0
		.talk Sunwalker Dezco##64542
		..turnin A Celestial Experience##31395
		..accept A Witness to History##31511
	step
		goto 56.1,91.6
		.talk Sunwalker Dezco##64853
		.' Tell him there is only one way to find out. |q 31511/1
	step
		goto Vale of Eternal Blossoms 56.8,43.4
		.talk Zhi the Harmonious##59905
		..turnin A Witness to History##31511
	step
		goto Vale of Eternal Blossoms 56.7,42.7
		.talk Sun Tenderheart##58468
		..accept The Shrine of Two Moons##30649
	step
		goto 61.3,22.0
		.talk Mokimo the Strong##59959
		.' Ask him how the refuges are settling in.
		.' Speak to Mokimo the Strong. |q 30649/2
	step
		goto Shrine of Two Moons/1 68.4,47.7
		.talk Madam Vee Luo##62996
		.' Ask her what you can find in the city.
		.' Speak to Madam Vee Luo. |q 30649/3
	step
		goto Vale of Eternal Blossoms 62.0,20.5
		.talk Elder Liao##63996
		.' Ask him what what this place is.
		.' Speak to Elder Liao. |q 30649/4
	step
		goto 74.2,42.6
		.talk Jaluu the Generous##59908
		.' Ask him if he has seen anything suspicious.
		.' Speak to Jaluu the Generous. |q 30649/1
	step
		goto Vale of Eternal Blossoms 56.7,42.7
		.talk Sun Tenderheart##58468
		..turnin The Golden Lotus##30649
	step
		goto 56.7,43.6
		.talk Leven Dawnblade##58408
		..accept The Ruins of Guo-Lai##30632
	step
		goto 34.0,38.0
		.talk Anji Autumnlight##58465
		..turnin The Ruins of Guo-Lai##30632
		..accept Out with the Scouts##30633
	step
		goto 33.7,38.4
		.talk Kun Autumnlight##58471
		..accept Barring Entry##30634
	step
		goto 33.8,22.6
		.talk Lao Softfoot##65252
		.' Tell him you're ready to infiltrate the cave. |q 30634/1
	step
		'Follow Lao Softfoot up the hill. |tip Do not stray far from him, he will keep you stealthed as long as you are close.
		.' Wait for the patrol to be at a safe distance and place the explosives at the mouth of the cave [27.6,15.3] |use Explosive Keg##80484
		.' Explosives Planted |q 30634/2
	step
		goto 30.6,29.6
		.kill 8 Shao-Tien Precursor##59914+ |q 30633/1
	step
		goto 33.7,38.4
		.talk Kun Autumnlight##58471
		..turnin Barring Entry##30634
	step
		goto 34.0,38.0
		.talk Anji Autumnlight##58465
		..turnin Out with the Scouts##30633
		..accept Killing the Quilen##30635
		..accept Stones of Power##30636
	step
		goto 22.5,27.0
		'Click the Quest Discovered box that displays on the right side of the screen under your minimap
		..accept The Guo-Lai Halls##30637
	step
		.' Enter the Ruins of Guo-Lai. |goto 22.5,26.9 <5 |c
	step
		goto Vale of Eternal Blossoms/18 54.9,53.5
		.' Attack Zhao-Jin the Bloodletter, he will run. |modelnpc Zhao-Jin the Bloodletter##59921
		.kill Dagou##59977 |q 30637/1
	step
		'Leave the building |goto Vale of Eternal Blossoms/18 56.0,93.4 <5 |c
	step
		goto Vale of Eternal Blossoms 21.6,30.6
		.kill 9 Stone Guardian##59973+ |q 30635/1
		.click Revelite Crystal
		.get 7 Relelite Crystal##80511+ |q 30636/1
	step
		goto 34.0,38.0
		.talk Anji Autumnlight##58465
		..turnin Killing the Quilen##30635
		..turnin Stones of Power##30636
		..turnin The Guo-Lai Halls##30637
		..accept Leaving an Opening##30638
	step
		goto 56.7,43.6
		.talk Leven Dawnblade##58408
		..turnin Leaving an Opening##30638
	step
	label dailies
		.' You will only be able to accept 5 quests from the following NPCs.
		|confirm
	step
		goto Vale of Eternal Blossoms 56.7,43.6
		.talk Leven Dawnblade##58408
		..accept The Eternal Vigil##30307 |daily
	step
		goto 56.6,43.6
		.talk Anji Autumnlight##58465
		..accept Stone Hard Quilen##30308 |daily |or 2
		..accept Set in Stone##30309 |daily |or 2
		..accept Thundering Skies##30310 |daily |or 2
		..accept Crumbling Behemoth##31762 |daily |or 2
		..accept Unleashed Spirits##31757 |daily |or 2 
		..accept Striking First##31760 |daily |or 2
	step
		goto 56.6,43.6
		.talk Kun Autumnlight##58471
		..accept High Standards##30311 |daily |or
		..accept Laosy Scouting##31758 |daily |or
		..accept Cannonfire##31754 |daily |or
		..accept High Chance of Rain##31756 |daily |or
	step
		goto 56.6,43.1
		.talk Sun Tenderheart##58468
		..accept Given a Second Chance##30312 |daily |or
		..accept Free Spirits##30320 |daily |or
		..accept Acts of Cruelty##31755 |daily |or
	step
		goto 39.7,26.0
		.click Shao-Tien Cage##9667  |tip If he is not in this cage try one of the other coordinates below.
		.' [39.2,19.2]
		.' [37.5,22.9]
		.' [40.5,18.4]
		.' [43.1,22.1]
		.' [43.2,15.9] 
		.' [47.5,19.1]
		.' [50.5,23.6]
		.' Rescue Lao Softfoot |q 31758/1
		|only if havequest(31758)
	step
		goto 44.2,15.8
		.' Kill the Shao-Tien Soul-Renders surrounding the Behemoth.
		.' Shao-Tien Behemoth ritual stopped |q 31760/1
		|modelnpc 58460
		|only if havequest(31760)
	step
		goto 50.9,22.3
		.click Shao-Tien Stormcaller##11827
		.' Destroy the Eastern Stormcaller |q 31756/1
		|only if havequest(31756)
	step
		goto 47.8,19.1
		.click Shao-Tien Stormcaller##11827
		.' Destroy the Northern Stormcaller |q 31756/2
		|only if havequest(31756)
	step
		goto 43.1,27.
		.click Shao-Tien Stormcaller##11827
		.' Destroy the Southern Stormcaller |q 31756/3
		|only if havequest(31756)
	step
		goto 36.8,18.
		.click Shao-Tien Stormcaller##11827
		.' Destroy the Western Stormcaller |q 31756/4
		|only if havequest(31756)
	step
		goto 44.0,21.8
		.from Shao-Tien Soul-Render##58460+, Shao-Tien Marauder##58412+ |only if havequest(30307)
		.' Kill 12 Shao-Tien Mogu |q 30307/1 |only if havequest(30307)
		.' Free 5 Torture victims |q 31755/1 |only if havequest(31755)
		.kill 6 Mogu Effigy##59156+ |q 30309/1 |only if havequest(30309)
		.kill 3 Subjugated Serpent##59158+ |q 30310/1 |only if havequest(30310)
		.kill 30 Unleashed Spirit |q 31757/1 |only if havequest(31757)
		.' You can find more Unleashed Spirits at [46.9,34.3] |only if havequest(31757)
		.kill 8 Granite Quilen##59157 |q 30308/1 |only if havequest(30308)
		.click Golden Lotus Banner |only if havequest(30311)
		.' Raise 6 Golden Lotus Standards |q 30311/1 |only if havequest(30311)
		.click Soul Vortex |only if havequest(30320)
		.clicknpc Captive Pandaren Soul##59231 |only if havequest(30320)
		.' Free 15 Captive Pandaren Spirits |q 30320/1 |only if havequest(30320)
		.kill Shao-Tien Behemoth |q 31762/1 |only if havequest(31762)
		.' Use your Wu Kao Explosive near a Shao-Tien Cannon. |use Wu Kao Explosive##89123 |only if havequest(31754)
		.' Destroy 7 Shao-Tien Cannons. |q 31754/1 |only if havequest(31754)
	step
		goto 52.3,28.8 
		.' Use Shado-Pan Bandages on Wounded Defenders |use Shado-Pan Bandages##84242
		.' Heal 6 Wounded Defenders |q 30312/1
		|only if havequest(30312)
	step
		goto 56.6,43.1
		.talk Sun Tenderheart##58468
		..turnin Given a Second Chance##30312 |daily
		..turnin Free Spirits##30320 |daily
		..turnin Acts of Cruelty##31755 |daily
	step
		goto 56.6,43.6
		.talk Anji Autumnlight##58465
		..turnin Stone Hard Quilen##30308 |daily
		..turnin Set in Stone##30309 |daily
		..turnin Thundering Skies##30310 |daily
		..turnin Crumbling Behemoth##31762 |daily
		..turnin Unleashed Spirits##31757 |daily
		..turnin Anji's Diplomacy##31760 |daily
	step
		goto 56.6,43.6
		.talk Kun Autumnlight##58471
		..turnin High Standards##30311 |daily
		..turnin Laosy Scouting##31758 |daily
		..turnin Cannonfire##31754 |daily
		..turnin High Chance of Rain##31756 |daily
	step
		goto 56.7,43.6
		.talk Leven Dawnblade##58408
		..turnin The Eternal Vigil##30307 |daily
		..accept Whitepetal Lake##31131 |daily |or |next "whitepetal"
		..accept Mistfall Village##31242 |daily |or |next "mistfall"
		..accept Attack on Mistfall Village##31243 |daily |or |next "mistfall3"
		.' If Leven has no available quests after turning in The Eternal Vigil click here. |confirm 
	step
		goto 56.7,43.2
		.talk Ren Firetongue##58469
		..accept A Smashing Impression##30283 |daily
	step
		goto 56.5,43.4
		.talk He Softfoot##58470
		..accept The Silent Approach##30281 |daily
	step
		goto 56.5,43.7
		.talk Anji Autumnlight##58465
		..accept Burning Away the Filth##30282 |daily
	step
		goto 56.5,43.7
		.talk Kun Autumnlight##58471
		..accept Rude Awakenings##30292 |daily |or
		..accept In Enemy Hands##30293 |daily |or
	step
		goto 43.4,42.9
		.clicknpc Shao-Tien Ritual Statue##63090
		.' Click all four statues and fight off whatever creature spawns to defend them.
		.' Shao-Tien Ritual Statues destroyed |q 30283/1
		|only if havequest(30283)
	step
		goto 45.2,41.7
		.kill 8 Paleblade Flesheater##63082+ |q 30292/1 |only if havequest(30292)
		.from Shao-Tien Mindbender##63129+, Shao-Tien Reclaimer##63081+ |only if havequest(30281)
		.' Kill 10 Whitepetal mogu |q 30281/1 |only if havequest(30281)
		.' Use the Shado-Pan Torch in your bags near the Shao-Tien Banners in this area. |use Shado-Pan Torch##84781 |only if havequest(30282)
		.' Burn 10 Shao-Tien Banners |q 30282/1 |only if havequest(30282)
		.' Rescue 8 Dominated Defenders by killing the Shao-Tien Mindbender's controlling them. |q 30293/1 |only if havequest(30293)
	step
		'Click the Complete Quest box that displays on the right side of the screen under your minimap
		..turnin The Silent Approach##30281 |daily
		..accept The Soul-Gatherer##30482
	step
		goto 40.8,48.0
		.from Shadowmaster Sydow##63240+ |tip You can stand on the Lily Pads in the water.
		.get Soul-Gatherer's Beads |q 30482/1
		|only if havequest(30482)
	step
		goto 56.6,43.2
		.talk He Softfoot##58470
		..turnin The Soul-Gatherer##30482
	step
		goto 56.7,43.2
		.talk Ren Firetongue##58469
		..turnin A Smashing Impression##30283 |daily
	step
		goto 56.5,43.7
		.talk Anji Autumnlight##58465
		..turnin Burning Away the Filth##30282 |daily
	step
		goto 56.5,43.7
		.talk Kun Autumnlight##58471
		..turnin Rude Awakenings##30292 |daily
		..turnin In Enemy Hands##30293 |daily
	step
		goto 56.7,43.6
		.talk Leven Dawnblade##58408
		 ..accept Behind Our Lines##31136 |daily |or |next "behind"
		..accept The Ruins of Guo-Lai##31248 |daily |or |next "ruins"
		..accept Setting Sun Garrision##31250 |daily |or |next "ssg"
		..accept Mistfall Village##31249 |daily |or |next "mistfall"
	step
	label	"behind"
		goto 69.2,54.8
		.' Walk along this path until you find General Tamuja
		.kill General Temuja##63101+ |q 31136/1
	step
		goto 56.7,43.6
		.talk Leven Dawnblade##58408
		 ..turnin Behind Our Lines##31136
		|next "ruins" |only if havequest(31248) or havequest(31294) or havequest(31296)
		|next |only if defualt
	step
		.' Friendly |next "end" |only if rep('Golden Lotus')<=Friendly
		.' Honored |next "honored" |only if rep('Golden Lotus')==Honored
		.' Revered |next "revered" |only if rep('Golden Lotus')==Revered 
		.' Exalted |next "exalted" |only if rep('Golden Lotus')==Exalted 
	step
	label ruins
		goto 34.0,38.1
		.talk Anji Autumnlight##58503
		..turnin The Ruins of Guo-Lai##31248 |only if havequest(31248)
		..turnin The Ruins of Guo-Lai##31294 |only if havequest(31294)
		..turnin Guo-Lai Infestation##31240 |only if havequest(31240)
		..turnin The Ruins of Guo-Lai##31296 |only if havequest(31296)
		..accept In Ashen Webs##30200 |daily 
		..accept Troubling the Troublemakers##30228 |daily 
		..accept Blood on the Rise##30226 |daily 
		|confirm
	step
		goto 34.0,38.1
		.talk Kun Autumnlight##58504
		..accept Hard as a Rock##30304 |daily |or
		..accept That's Not a Rock!##30204 |daily |or
	step
		goto 33.5,40.8
		.talk Sinan the Dreamer##63266
		..accept Runelocked##30205 |daily 
		..accept Runes in the Ruins##30206 |daily 
		|confirm
	step
		goto 31.2,31.0
		.' Around this ruin there will be four blue runic symbols on the ground, walk over each of them to unlock the Ancient Mogu Artifact
		.click Ancient Mogu Artifact
		.get Ancient Mogu Artifact##85204 |q 30205/1
		.' The relic may also be at [26.9,19.6]
		|only if havequest(30205)
	step
		goto 30.7,20.4
		.from Stonebark Trickster##58545 |only if havequest(30228)
		.' Kill 8 Stonebark sprites |q 30228/1 |only if havequest(30228)
		.from Shao-Tien Fist##65134+, Shao-Tien Sorcerer##65133+ |only if havequest(30226)
		.' Kill 8 Ruin's Rise mogu. |q 30226/1 |only if havequest(30226)
	step
		goto 26.3,29.2
		.click Mogu Statue |only if havequest(30304)
		.from Mogu Statue##63447+ |only if havequest(30304)
		.' Destroy 10 Mogu Statues |q 30304/1 |only if havequest(30304)
		.from Ashweb Weaver##58459+, Ashweb Piercer##58475+ |only if havequest(30200)
		.' Kill 10 Ashweb Spiders |q 30200/1 |only if havequest(30200)
		.' Use your Shado-Pan Torch on the small rocks around this area. |use Shado-Pan Torch##85261 |only if havequest(30204)
		.kill 50 Ashweb Hatchling##58568+ |q 30204/1 |only if havequest(30204)
		.click Guo-Lai Runestone##6714 |only if havequest(30206)
		.get 12 Guo-Lai Runestone |q 30206/1 |only if havequest(30206)
		.' You can find more of the objectives in this step at [25.2,38.7]
	step
		goto 34.0,38.1
		.talk Kun Autumnlight##58504
		..turnin Hard as a Rock##30304 |daily 
		..turnin That's Not a Rock!##30204 |daily 
	step
		goto 34.0,38.1
		.talk Anji Autumnlight##58503
		..turnin In Ashen Webs##30200 |daily 
		..turnin Troubling the Troublemakers##30228 |daily 
		..turnin Blood on the Rise##30226 |daily 
		..accept Wulon, the Granite Sentinel##30227 |daily |or 
		..accept The Ashweb Matriarch##30225 |daily |or
		..accept The Crumbling Hall##30277 |daily |or
	step
		goto 33.5,40.8
		.talk Sinan the Dreamer##63266
		..turnin Runelocked##30205 |daily 
		..turnin Runes in the Ruins##30206 |daily 
	step
		goto Vale of Eternal Blossoms/18 77.6,72.9
		.kill Wulon##63510 |q 30227/1
		|only if havequest(30227)
	step
		goto Vale of Eternal Blossoms/18 75.7,47.9
		.kill Bloodtip##58474 |q 30225/1 |tip Every 20% Bloodtip casts Call Swarmers which brings out many small spiders, they are easily killed and need to be killed immediately.
		|only if havequest(30225)
	step
		goto 56.1,49.1
		'Traverse the following rooms by only stepping on the pale tiles, colored tiles will harm you.
		|confirm
		|only if havequest(30280)
	step
		goto Vale of Eternal Blossoms/19 53.9,68.3
		.kill Milau##64965 |q 30280/1 |tip Milau has several deadly abilities. He will cast a Lightning Breath in any direction, do not be in front of him when he does this. He also starts casting Lightning Pools, constantly move until he is done. Periodically he will pull you to the middle of the room and cast Lightning Sweep. While he is casting get as much distance on him as you can.
		|only if havequest(30280)
	step
		'Follow this hallway. |goto Vale of Eternal Blossoms/18 42.3,53.7 <5 |c
		|only if havequest(30277)
	step
		goto Vale of Eternal Blossoms/18 36.3,36.6
		.click Deactivate First Spirit Wall
		.' Deactivate the First Spirit Wall |q 30277/1
		|only if havequest(30277)
	step
		goto Vale of Eternal Blossoms/18 23.2,28.8
		.click Deactivate Second Spirit Wall
		.' Deactivate the Second Spirit Wall |q 30277/2
		|only if havequest(30277)
	step
		goto Vale of Eternal Blossoms/18 38.3,31.1
		.click Deactivate Final Spirit Wall
		|tip Make sure you're stepping on the green tiles, as the others will hurt you. There is a path to both the spirit wall and the artifact.
		.' Deactivate the Final Spirit Wall |q 30277/3
		|only if havequest(30277)
	step
		goto Vale of Eternal Blossoms/18 49.3,30.4
		.click Ancient Guo-Lai Artifact
		.get Ancient Guo-Lai Artifact |q 30277/4
		|only if havequest(30277)
	step
		goto Vale of Eternal Blossoms 34.0,38.1
		.talk Anji Autumnlight##58503
		..turnin The Thunder Below##30280 
		|only if havequest(30280)
	step
		goto 34.0,38.1
		.talk Anji Autumnlight##58503
		..turnin The Crumbling Hall##30277 
		|only if havequest(30277)
	step
		goto 34.0,38.1
		.talk Anji Autumnlight##58503
		..turnin The Ashweb Matriarch##30225 |daily |or 
		..turnin Wulon, the Granite Sentinel##30227 |daily |or
		|next "end" |only if rep('Golden Lotus')<=Honored
		|next "revered" |only if rep('Golden Lotus')==Revered 
		|next "exalted" |only if rep('Golden Lotus')==Exalted 
	step
	label mistfall
		goto 33.9,72.2
		.talk Che Wildwalker##59338
		..turnin Mistfall Village##31242 |daily |only if havequest(31242)
		..turnin Mistfall Village##31245 |daily |only if havequest(31245)
		..turnin Mistfall Village##31249 |daily |only if havequest(31249)
		..accept Clearing in the Forest##30263 |daily |or 2
		..accept Encroaching Storm##30194 |daily |or 2
		..accept Ruffling Some Feathers##30232 |daily |or 2
		..accept The Pandaren Uprising Relived##30237 |daily |or 2
		..accept Return to Rest##30238 |daily |or 2
		.'_
		.' Click here if these quests are not available |confirm
	step
		goto 35.4,74.1
		.talk Mayor Shiyo##58819
		..accept Sprite Plight##30190 |daily |or 2
		..accept My Town, It's on Fire##30192 |daily |or 2
		..accept Steer Clear of the Beer Here##30191 |daily |or 2
		.'_
		.' If these quests are not available click here |confirm
	step
		goto 33.9,70.4
		.talk Cook Tope##58818
		..accept Meating Expectations##30193 |daily |or 2
		..accept Pomfruit Pickup##30231 |daily |or 2
		..accept Lushroom Rush##30196 |daily |or 2
		.'_
		.' If these quests are not available click here. |confirm
	step
		goto 33.8,69.7
		.talk Merchant Tantan##58820
		..accept Blooming Blossoms##30195 |daily
		.'_
		.' If this quest is not available click here. |confirm
	step
		goto 25.8,74.8
		.kill 8 Thundermaw##58456+ |q 30194/1 |only if havequest(30194)
		.from Fairlands Gazelle##58454+ |only if havequest(30193)
		.get 10 Fairlands Gazelle Meat##79244+ |q 30193/1 |only if havequest(30193)
		.' Use the Pomharvest Firework in your bags to knock Pomfruits out of the trees in the area |use Pomharvest Firework##79344 |only if havequest(30231)
		.clicknpc Pomfruit##58767 |only if havequest(30231)
		.get 12 Pomfruit##79250+ |q 30231/1 |only if havequest(30231)
		.from Silkfeather Hawk##58457 |only if havequest(30232)
		.get 120 Silken Feather##84121+ |q 30232/1 |only if havequest(30232)
		.click Eternal Blossom |tip These can be found most abundantly along the river. |only if havequest(30195)
		.get 10 Eternal Blossom##79246+ |q 30195/1 |only if havequest(30195)
	step
		 goto 29.9,53.5
		.from Shao-Tien Painweaver##65131+, Shao-Tien Conqueror##65132+
		.' Kill 10 Winterbough Glade mogu. |q 30263/1
		|only if havequest(30263)
	step
		goto 37.3,81.4
		.from 12 Slateskin Troublemaker##58673+ |q 30190/1 |only if havequest(30190)
		.click Stolen Mistfall Keg |only if havequest(30191)
		.get 10 Stolen Mistfall Keg##85778+ |q 30191/1 |only if havequest(30191)
		.click Brazier Fire |only if havequest(30192)
		.' Put out 30 Brazier Fires |q 30192/1 |only if havequest(30192)
	step
		goto 49.5,67.6
		.kill 8 Ancient Mogu Spirit##58671+ |q 30237/1 |only if havequest(30237)
		.click Lushroom |only if havequest(30196)
		.get 12 Lushroom##85681+ |q 30196/1 |only if havequest(30196)
		.click Pandaren Gravestone |only if havequest(30238)
		.' Honor 6 Pandaren Gravestones |q 30238/1 |only if havequest(30238)
	step
		'Click the Complete Quest box that displays on the right side of the screen under your minimap
		..turnin The Pandaren Uprising Relived##30237 |daily
	step
		goto 35.4,74.1
		.talk Mayor Shiyo##58819
		..turnin Sprite Plight##30190 |daily
		..turnin My Town, It's on Fire##30192 |daily
		..turnin Steer Clear of the Beer Here##30191 |daily
	step
		goto 33.9,70.4
		.talk Cook Tope##58818
		..turnin Meating Expectations##30193 |daily
		..turnin Pomfruit Pickup##30231 |daily
		..turnin Lushroom Rush##30196 |daily
	step
		goto 33.8,69.7
		.talk Merchant Tantan##58820
		..turnin Blooming Blossoms##30195 |daily
	step
		goto 33.9,72.2
		.talk Che Wildwalker##59338
		..turnin Encroaching Storm##30194 |daily
		..turnin Ruffling Some Feathers##30232 |daily
		..turnin Clearing in the Forest##30263 |daily
		..turnin Return to Rest##30238 |daily
		..accept Lao-Fe the Slavebinder##30239 |daily |or |next "slave"
		..accept Aetha##30236 |daily |or |next "aetha"
		..accept The Ruins of Guo-Lai##31294 |daily |or |next "ruins"
		..accept Mogu within the Ruins of Guo-Lai##31295 |daily |or |next honored
		..accept Setting Sun Garrison##30385 |daily |or |next "ssg"
		..accept Quid Pro Quo##30235 |daily |or
	step
		goto 30.8,79.4
		.' Use the Stone of the Water to walk on water |use Stone of the Water Strider##87807
		.kill Quid##58771 |q 30235/1
		|only if havequest(30235)
	step
		goto 33.9,72.2
		.talk Che Wildwalker##59338
		..turnin Quid Pro Quo##30235
	step
	label aetha
		goto 35.0,90.0
		.from Aetha##58778 |tip Aetha will constantly summon Tornadoes, simply kite Aetha to a new location out of the range. With your Stone of the Water Strider buff, you should easily be able to kite on the water.
		.' Subdue Aetha |q 30236/1
	step
		goto 33.9,72.2
		.talk Che Wildwalker##59338
		..turnin Aetha##30236 |daily
		|next "end" |only if rep('Golden Lotus')<=Friendly
		|next "honored" |only if rep('Golden Lotus')==Honored 
		|next "revered" |only if rep('Golden Lotus')==Revered
		|next "exalted" |only if rep('Golden Lotus')==Exalted 
	step
	label slave
		goto 47.4,65.8
		.kill Spirit of Lao-Fe##58817 |q 30239/1
	step
		goto 33.9,72.2
		.talk Che Wildwalker##59338
		..turnin Lao-Fe the Slavebinder##30239 |daily
		|next "end" |only if rep('Golden Lotus')<=Friendly
		|next "honored" |only if rep('Golden Lotus')==Honored 
		|next "revered" |only if rep('Golden Lotus')==Revered 
		|next "exalted" |only if rep('Golden Lotus')==Exalted 
	step
	label mistfall2
		goto 35.1,75.4
		.talk Sun Tenderheart##59337
		..turnin Attack on Mistfall Village##31243 |daily
		..accept Wu Kao Scouting Reports##30285 |daily |or
		..accept Backed Into a Corner##30286 |daily |or
	step
		goto 35.3,74.9
		.talk Rook Stonetoe##58911
		..accept Freeing Mind and Body##30289 |daily |or 2
		..accept Mogu Make Poor House Guests##31293 |daily |or 2
		..accept Mogu Make Poor House Guests##30287 |daily |or 2
		..accept Stonebound Killers##30290 |daily |or 2
	step
		goto 35.3,76.8
		.talk Mayor Shiyo##59336
		..accept My Town, It's On Fire Again##30288 |daily
	step
		goto 37.8,73.2
		.click Miftfall Water Bucket##11350 
		.collect Mistfall Water Bucket##85950 |n
		.' Use the Miftfall Water Bucket to put out 60 fires around town. |use Mistfall Water Bucket##85950
		.' 60 Mistfall Village fires doused. |q 30288/1
		|only if havequest(30288)
	step
		goto 33.6,72.8
		.from Shao-Tien Pillager##63948+, Shao-Tien Subjugator##63947+ |only if havequest(30287) or havequest(31293)
		.' Kill 6 Shao-Tien attackers |q 30287/1 |only if havequest(30287)
		.' Kill 12 Shao-Tien attackers |q 31293/1 |only if havequest(31293)
		.click Wu Kao Scouting Report |tip These scrolls are very small and can be hard to find. |only if havequest(30285)
		.get 3 Wu Kao Scouting Report##86099 |q 30285/1 |only if havequest(30285)
		.kill 8 Stonebound Quilen##63950+ |q 30290/1 |only if havequest(30290)
		.' Rescue 6 Cornered Villagers |q 30286/1 |tip Attack the Subjugators or Quilen that are pinning them down. |only if havequest(30286)
		.' Free 6 Dominated Guards by killing the Subjugator controlling them. |q 30289/1 |only if havequest(30289)
		|modelnpc Shao-Tien Subjugator##64201
		|modelnpc Golden Lotus Guard##64200
	step
		goto 35.1,75.4
		.talk Sun Tenderheart##59337
		..turnin Wu Kao Scouting Reports##30285 |daily
	step
		goto 35.3,74.9
		.talk Rook Stonetoe##58911
		..turnin Mogu Make Poor House Guests##30287 |daily
		..turnin Freeing Mind and Body##30289 |daily
	step
		goto 35.3,76.8
		.talk Mayor Shiyo##59336
		..turnin My Town, It's On Fire Again##30288 |daily
	step
		goto 35.1,75.4
		.talk Sun Tenderheart##59337
		..accept Setting Sun Garrison##31297 |daily |or |next "ssg"
		..accept The Ruins of Guo-Lai##31296 |daily |or |next "ruins"
	step
	label whitepetal
		goto 43.6,46.1
		.talk He Softfoot##59342
		..turnin Whitepetal Lake##31131 |daily
		..accept Under Watchful Eyes##30341 |daily |or
		..accept The Displaced Paleblade##30314 |daily |or
		..accept The Moving Mists##30313 |daily |or
	step
		goto 42.3,46.0
		.talk Ren Firetongue##59343
		..accept A Thousand Pointy Teeth##30284 |daily |or 2
		..accept Sparkle in the Eye##30265 |daily |or 2
		..accept Stunning Display##30291 |daily |or 2
		..accept Fiery Tongue, Fragile Feet##30342 |daily |or 2
		..accept A Weighty Task##30338 |daily |or 2
	step
		goto 42.3,46.0
		.talk Merchant Tantan##59341
		..accept Stick in the Mud##30340 |daily |or
		..accept Getting your Hands Dirty##30339 |daily |or
	step
		goto 41.1,47.0
		.kill 15 Knifetooth Swarmer##59404+ |q 30284/1 |only if havequest(30284)
		.kill 8 Stillwater Crocodile##58455+ |q 30342/1 |only if havequest(30342)
		.click Ruby Eye |tip These are inside of the Mogu heads underwater. |only if havequest(30265)
		.get 8 Ruby Eye##84646+ |q 30265/1 |only if havequest(30265)
		.clicknpc Stunned Whitepetal##62984 Carp |only if havequest(30291)
		.get 12 Stunned Whitepetal Carp##84656 |q 30291/1 |only if havequest(30291)
		.click Mogu Artifact |only if havequest(30338)
		.get 8 Mogu Artifact##84655 |q 30338/1 |only if havequest(30338)
	step
		goto 44.1,53.2
		.' Use the Shado-Pan Flare in your bags to illuminate Shao-Tien Surveyors. |use Shado-Pan Flare##89366 |only if havequest(30341)
		.kill 8 Shao-Tien Surveyor##59379+ |q 30341/1 |only if havequest(30341)
		.kill 8 Fog Walker##58672+ |q 30313/1 |only if havequest(30313)
		.from Paleblade Flesheater##59378+, Paleblade Slithertongue##63044+ |only if havequest(30314)
		.' Kill 8 Paleblade Saurok |q 30314/1 |only if havequest(30314)
		.click Whitepetal Reeds##10817 |only if havequest(30340)
		.get 12 Whitepetal Reed##84241 |q 30340/1 |only if havequest(30340)
		.click Fresh Dirt##20 |only if havequest(30339)
		.get 12 Fresh Whitepetal Worm##84240 |q 30339/1 |only if havequest(30339)
	step
		goto 43.6,46.1
		.talk He Softfoot##59342
		..turnin Under Watchful Eyes##30341 |daily
		..turnin The Displaced Paleblade##30314 |daily
		..turnin The Moving Mists##30313 |daily
	step
		goto 42.3,46.0
		.talk Merchant Tantan##59341
		..turnin Stick in the Mud##30340 |daily
		..turnin Getting your Hands Dirty##30339 |daily
	step
		goto 42.3,46.0
		.talk Ren Firetongue##59343
		..turnin A Thousand Pointy Teeth##30284 |daily
		..turnin Sparkle in the Eye##30265 |daily
		..turnin Stunning Display##30291 |daily
		..turnin Fiery Tongue, Fragile Feet##30342 |daily
		..turnin A Weighty Task##30338 |daily
	step
		goto 42.3,46.0
		.talk Ren Firetongue##59343
		..accept Vicejaw##30234 |daily |or |next "vicejaw"
		..accept Setting Sun Garrison##31247 |daily |or |next "ssg"
		..accept Guo-Lai Infestation##31240 |daily |or |next "ruins"
		..accept Mistfall Village##31245 |daily |or |next "mistfall"
		..accept Attack on Mistfall Village##31246 |daily |or |next "mistfall3"
		..accept Guo-Lai Encampment##31244 |daily |or |next "ruins2"
		..accept Cracklefang##30233 |daily |or |next "crackle"
	step
	label vicejaw
		goto 37.3,51.1
		.kill Vicejaw##58769 |q 30234/1 |tip When you first pull Vicejaw, kite him through the corpses of Paleblade Flesheaters that are lying all around, when he eats 10 of them he will begin casting Upchuck. When he does this he wil not move and will only attack in front of himself, walk around to his backside and attack until his energy meter resets to 0. When he is weak Vicejaw will pick you up and begin to eat you. Kill him before he is able to chew you to death. He will not try to eat you if he is using Upchuck, time it right and you won't have to race to kill him.
	step
		goto 42.3,46.0
		.talk Ren Firetongue##59343
		..turnin Vicejaw##30234 |daily
		|next "end" |only if rep('Golden Lotus')<=Friendly
		|next "honored" |only if rep('Golden Lotus')==Honored 
		|next "revered" |only if rep('Golden Lotus')==Revered 
		|next "exalted" |only if rep('Golden Lotus')==Exalted 
	step
	label ruins2
		goto 33.8,38.5
		.talk Leven Dawnblade##59332
		..turnin Guo-Lai Encampment##31244
		..accept Painting the Ruins Red##30298 |daily
		..accept Offering a Warm Welcome##30301 |daily
	step
		goto 33.1,39.0
		.talk Wounded Defender##63753
		..accept No Stone Unturned##30299 |daily 
		..accept The Key to Success##30300 |daily
		.'_
		.' Click here if no quest is available |confirm
	step
		goto 33.4,38.0
		.talk Rook Stonetoe##59333
		..accept Carved in Stone##30481 |daily
		.'_
		.' Click here if this quest is not available today |confirm
	step
		map Vale of Eternal Blossoms
		path loose; loop; curved
		path	31.5,34.1	25.8,34.5	24.4,32.9
		path	22.0,27.7	19.2,30.6	20.3,34.3
		path	23.9,39.1
		.from Shao-Tien Torturer##63641
		.' He walks along this path
		.get Shao-Tien Cage Key |q 30300/1
		|only if havequest(30300)
	step
		goto 25.4,28.8
		.from Shao-Tien Dominator##63610+, Shao-Tien Soul-Caller##63611+, Shao-Tien Torturer##63641+ |only if havequest(30298)
		.click Guo-Lai Runestone##6714+ |only if havequest(30481)
		.' Kill 15 Guo-Lai mogu. |q 30298/1 |only if havequest(30298)
		.get 1 Shao-Tien Cage Key |q 30300/1 |only if havequest(30300)
		.get 12 Guo-Lai Runestone |q 30481/1 |only if havequest(30481)
		.click Shao-Tien Cage |only if havequest(30300)
		.' Free 6 Golden Lotus Prisoners. |q 30300/2 |only if havequest(30300)
		.click Mogu Statue |only if havequest(30299)
		.from Mogu Statue##63447+ |only if havequest(30299)
		.' Destroy 10 Mogu Statues |q 30299/1 |only if havequest(30299)
		.' Use your Shado-Pan Torch on the Tents around this area. |use Shado-Pan Torch##85581 |only if havequest(30301)
		.' Burn 6 Shao-Tien Tents |q 30301/1 |only if havequest(30301)
	step
		goto 33.1,39.0
		.talk Wounded Defender##63753
		..turnin No Stone Unturned##30299 
		..turnin The Key to Success##30300 
	step
		goto 33.8,38.5
		.talk Leven Dawnblade##59332
		..turnin Painting the Ruins Red##30298 
		..turnin Offering a Warm Welcome##30301 
		..accept The Imperion Threat##30302 |daily
	step
		goto 68.6,71.0
		.from Gochao the Ironfist##62880
		.' Kill the Shao-Tien Imperion |q 30302/1
		|only if havequest(30302)
	step
		goto 33.8,38.5
		.talk Leven Dawnblade##59332
		..turnin The Imperion Threat##30302
		|next "end" |only if rep('Golden Lotus')<=Friendly
		|next "honored" |only if rep('Golden Lotus')==Honored 
		|next "revered" |only if rep('Golden Lotus')==Revered 
		|next "exalted" |only if rep('Golden Lotus')==Exalted
	step
	label ssg
		goto 21.4,71.6
		.talk Anji Autumnlight##58919
		..turnin Setting Sun Garrison##31247 |daily |only if havequest(31247)
		..turnin Setting Sun Garrison##30385 |daily |only if havequest(30385)
		..turnin Setting Sun Garrison##31297 |daily |only if havequest(31297)
		..turnin Setting Sun Garrision##31250 |daily |only if havequest(31250)
		..accept The Battle Ring##30306 |daily
	step
		goto 21.5,71.2
		.talk Leven Dawnblade##59340
		..accept Survival Ring: Flame##30240 |daily |or
		..accept Survival Ring: Blades##30242 |daily |or
	step
		goto 19.7,74.2
		.from Shado-Pan Trainee##58992+
		.' Defeat 20 Shado-Pan Trainees. |q 30306/1
		|only if havequest(30306)
	step
		goto 19.2,67.5
		.' Stay within the circle and avoid getting hit by the fireworks.
		.' Live through the Survival Ring for 90 seconds |q 30240/1
		|only if havequest(30240)
	step
		goto 19.2,67.5
		.' Stay within the circle and avoid the posts with blades surrounding them and the running pandas.
		.' Live through the Survival Ring for 90 seconds |q 30242/1
		|only if havequest(30242)
	step
		goto 21.5,71.2
		.talk Leven Dawnblade##59340
		..turnin Survival Ring: Flame##30240 |daily |or
		..turnin Survival Ring: Blades##30242 |daily |or
	step
		goto 21.4,71.6
		.talk Anji Autumnlight##58919
		..turnin The Battle Ring##30306 |daily
		..accept Upon the Ramparts##30246 |daily |or
		..accept Enemy at the Gates##30264 |daily |or
		..accept No Reprieve##30444 |daily |or
		.'_
		.' If these quests are unavailable today, click here. |confirm
	step
		goto 21.4,71.5
		.talk Kun Autumnlight##58920
		..accept Mantid Under Fire##30243 |daily |or
		..accept Along the Serpent's Spine##30244 |daily |or
		..accept Lost Scouts##30245 |daily |or
		.'_
		.' If these quests are unavailable today, click here. |confirm
	step
		goto 21.5,71.2
		.talk Leven Dawnblade##59340
		..accept Bloodied Skies##30266 |daily
		.'_
		.' If this quest is unavailable today, click here. |confirm
	step
		goto 18.2,63.6
		.talk Kelari Featherfoot##58704
		..accept Roll Club: Serpent's Spine##30261 |daily
		.'_
		.' If this quest is unavailable today, click here. |confirm
	step
		goto Vale of Eternal Blossoms 18.6,36.4
		.' Kill the Shao-Tien Mobs attacking the Shado-Pan Scouts.
		.talk Shado-Pan Scout##58947 |q 30245/1
		.' Click the Quest Complete box that displays on the right side of the screen under your minimap
		..turnin Lost Scouts##30245
		..accept The Butcher##30248
		|only if havequest(30245)
	step
		goto 17.0,47.5
		.from Shao-Tien Antiquator##58928+, Shao-Tien Fist##58927+
		.kill 8 Shao-Tien mogu |q 30444/1
		|only if havequest(30444)
	step
		goto 18.2,63.6
		.talk Kelari Featherfoot##58704
		.' Let's roll. |q 30261/1
		|only if havequest(30261)
	step
		'Hold down your right mouse button to help you maneuver through the course. |tip Grab as many speed boosts as you can to make it go quicker.
		.' Complete the Serpent's Spine Roll Course. |q 30261/2
		|only if havequest(30261)
	step
		goto 18.2,63.6
		.talk Kelari Featherfoot##58704
		..turnin Roll Club: Serpent's Spine##30261 |daily
	step
		goto 15.6,66.1
		.clicknpc War Serpent##65336
		.' Mount a War Serpent |invehicle |q 30264/1
		|only if havequest(30264)
	step
		'Use the abilities on your hotbar to do the following:
		.kill 60 Krik'thik Hiveling##63972+ |q 30264/2
		.kill 3 Krik'thik War Wagon##64274+ |q 30264/3
		.kill 3 Krik'thik Catapult##64275+ |q 30264/4
		|only if havequest(30264)
	step
		'Click the Return to Setting Sun Garrison button. |outvehicle
		|only if havequest(30264)
	step
		goto 5.4,72.3
		.click Setting Sun Turret 
		.' Mount a turret. |invehicle |c
		|only if havequest(30266)
	step
		.kill 30 Krik'thik Swarmer##63973+ |q 30266/1
		|only if havequest(30266)
	step
		'Click the Leave Vehicle button. |outvehicle
		|only if havequest(30266)
	step
		goto 11.4,58.8
		.from Krik'thik Locust-Guard##63974+, Krik'thik Needler##63976+
		.' Kill 10 Kir'thik wall attackers |q 30246/1
	step
		goto 6.9,68.8
		.from Krik'thik Locust-Guard##63974+, Krik'thik Needler##63976+
		.' Kill 10 Kir'thik wall attackers |q 30244/1
		|only if havequest(30244)
	step
		'Click the Complete Quest box that displays on the right side of the screen under your minimap
		..turnin Along the Serpent's Spine##30244 |daily
		..accept Under the Setting Sun##30249 |daily
		|only if havequest(30244)
	step
		goto 6.0,58.8
		.kill Kri'chon##63978 |q 30249/1
		|only if havequest(30249)
	step
		goto 21.5,71.2
		.talk Leven Dawnblade##59340
		..turnin Bloodied Skies##30266 |daily
	step
		goto 21.4,71.6
		.talk Anji Autumnlight##58919
		..turnin Upon the Ramparts##30246 |daily
		..turnin No Reprieve##30444
		..accept Vyraxxis, the Krik'thik Swarm-Lord##30251 |daily |only if completedq(30246)
	step
		goto 7.9,33.9
		.kill Vyraxxis##63977 |q 30251/1
		|only if havequest(30251)
	step
		goto 21.4,71.6
		.talk Anji Autumnlight##58919
		..turnin Vyraxxis, the Krik'thik Swarm-Lord##30251 |daily
	step
		goto 21.4,71.5
		.talk Anji Autumnlight##58919
		..turnin Enemy at the Gates##30264 |daily
	step
		goto 21.4,71.5
		.talk Kun Autumnlight##58920
		..turnin Mantid Under Fire##30243 |daily
		..turnin Under the Setting Sun##30249 |daily
		|next "end" |only if rep('Golden Lotus')<=Friendly
		|next "honored" |only if rep('Golden Lotus')==Honored 
		|next "revered" |only if rep('Golden Lotus')==Revered 
		|next "exalted" |only if rep('Golden Lotus')==Exalted
	step
	label mistfall3
		goto 35.2,74.9
		.talk Rook Stonetoe##58911
		..turnin Attack on Mistfall Village##31246 |daily
		..accept Mogu Make Poor House Guests##30287 |daily |or 2
		..accept Mogu Make Poor House Guests##31293 |daily |or 2
		..accept Stonebound Killers##30290 |daily |or 2
		..accept Freeing Mind and Body##30289 |daily |or 2
		.' If the turn in step for this step is grayed out, click here. |confirm |next "mistfall2"
	step
		goto 35.1,75.4
		.talk Sun Tenderheart##59337
		..accept Wu Kao Scouting Reports##30285 |daily |or
		..accept Backed Into a Corner##30286 |daily |or
	step
		goto 35.3,76.7
		.talk Mayor Shiyo##59336
		..accept My Town, It's On Fire Again##30288 |daily
	step
		goto 37.8,73.2
		.click Miftfall Water Bucket
		.collect Mistfall Water Bucket##85950 |n
		.' Use the Miftfall Water Bucket to put out 60 fires around town. |use Mistfall Water Bucket##85950
		.' 60 Mistfall Village fires doused. |q 30288/1
		|only if havequest(30288)
	step
		goto 33.8,72.6
		.from Shao-Tien Pillager##63948+, Shao-Tien Subjugator##63947+ |only if havequest(30287)
		.' Kill 6 Shao-Tien attackers. |q 30287/1 |only if havequest(30287)
		.' Kill 12 Shao-Tien attackers. |q 31293/1 |only if havequest(31293)
		.click Wu Kao Scouting Report |only if havequest(30285)
		.get 3 Wu Kao Scouting Report##86099 |q 30285/1 |only if havequest(30285)
		.' Free 6 Dominated Guards by killing the Subjugator controlling them |q 30289/1 |only if havequest(30289)
		|modelnpc Shao-Tien Subjugator##64201
		|modelnpc Golden Lotus Guard##64200
	step
		goto 35.2,74.9
		.talk Rook Stonetoe##58911
		..turnin Mogu Make Poor House Guests##31293 |daily
		..turnin Mogu Make Poor House Guests##30287 |daily
		..turnin Stonebound Killers##30290 |daily
		..turnin Freeing Mind and Body##30289 |daily
	step
		goto 35.1,75.4
		.talk Sun Tenderheart##59337
		..turnin Wu Kao Scouting Reports##30285 |daily 
		..turnin Backed Into a Corner##30286 |daily 
	step
		goto 35.3,76.7
		.talk Mayor Shiyo##59336
		..turnin My Town, It's On Fire Again##30288 |daily
	step
		goto 35.2,74.9
		.talk Rook Stonetoe##58911
		..accept Gaohun the Soul-Severer##30296 |daily |or
		..accept Baolai the Immolator##30297 |daily |or
	step
		goto 39.2,74.6
		.kill Gaohun the Soul-Severer##62881 |q 30296/1
		|only if havequest(30296)
	step
		goto 37.5,81.5
		.kill Baolai the Immolator##63695 |q 30297/1 |tip  WARNING! Do not be near a ledge when he does his cleave, it will send you flying back dealing heavy falling damage.
		|only if havequest(30297)
	step
		goto 35.2,74.9
		.talk Rook Stonetoe##58911
		..turnin Gaohun the Soul-Severer##30296 |daily 
		..turnin Baolai the Immolator##30297 |daily 
		|next "end" |only if rep('Golden Lotus')<=Friendly
		|next "honored" |only if rep('Golden Lotus')==Honored 
		|next "revered" |only if rep('Golden Lotus')==Revered 
		|next "exalted" |only if rep('Golden Lotus')==Exalted
	step
	label crackle
		goto Vale of Eternal Blossoms 46.5,59.1
		.from Cracklefang##58768
		.' Cracklefang Slain |q 30233/1
	step
		goto 42.4,46.0
		.talk Ren Firetongue##59343
		..turnin Cracklefang##30233
		|next "end" |only if rep('Golden Lotus')<=Friendly
		|next "honored" |only if rep('Golden Lotus')==Honored 
		|next "revered" |only if rep('Golden Lotus')==Revered 
		|next "exalted" |only if rep('Golden Lotus')==Exalted
	step
	label revered
		goto 74.2,42.6
		.talk Jaluu the Generous##59908
		.buy 1 Grand Commendation of the Golden Lotus##93215
		.' Use the Commendation of the Golden Lotus you just purchased. |use Grand Commendation of the Golden Lotus##93215
		.' If you have already purchased this (either on this or another character), click here. |confirm
		|only if rep("Golden Lotus")>=Revered
	step
		goto 57.2,42.9
		.talk Zhi the Harmonious##59905
		..accept Battle Spear of the Thunder King##30640
	step
		goto 21.4,19.7
		.click Battle Spear of the Thunder King
		.get Battle Spear of the Thunder King##80808 |q 30640/1
	step
		goto 57.2,42.9
		.talk Zhi the Harmonious##59905
		..turnin Battle Spear of the Thunder King##30640 |only if not completedq(30640)
		..accept Battle Helm of the Thunder King##30641 |only if not completedq(30641)
	step
		'Enter the building here. |goto 22.3,26.4 <5 |c
	step
		goto Vale of Eternal Blossoms/18 56.2,48.7
		'Traverse the following rooms by only stepping on the pale tiles, colored tiles will harm you.
		|confirm
		|only if havequest(30641)
	step
		goto 58.5,44.4
		.talk Ren Firetongue##63571
		.' Tell him Zhi sent you.
		.' Enter the Hall of Tiles |q 30641/1
	step
		'Follow Ren Firetongue |goto Vale of Eternal Blossoms/19 44.7,67.1 <5 |c
	step
		goto 52.0,76.1
		.from Zhao-Jin the Bloodletter##60359 |tip He constantly shoots lighting at you so keep on the move. If you are in melee range he will try to cleave you, step around him as he begins casting.
		.click Battle Helm of the Thunder King
		.get Battle Helm of the Thunder King##80222 |q 30641/2
	step
		'While exiting the building be careful of the tiles. The safe path is along the pale tiles.
		.' Exit the building. |goto Vale of Eternal Blossoms/18 56.1,93.7 <5 |c
	step
		goto Vale of Eternal Blossoms 57.2,42.9
		.talk Zhi the Harmonious##59905
		..turnin Battle Helm of the Thunder King##30641
		..accept Battle Axe of the Thunder King##30642 //// Cannot get gate to drop.
	step
		'Enter the building here. |goto 40.4,77.1 <5 |c
	step
		goto 44.3,76.5
		.' Fight off the Jade Constructs that attack you. |tip If you need help defeating them walk into the orbs around this room. Blue will give a damage and haste buff, green will heal you.
		.from Jade Construct##60297+
		.' Pass the Trial of the Constructs |q 30642/1
	step
		goto 45.4,76.2
		.click Battle Axe of the Thunder King
		.get Battle Axe of the Thunder King##80807 |q 30642/2
	step
		goto 44.8,76.3
		.talk Zhi the Harmonious##59905
		..turnin Battle Axe of the Thunder King##30642
		|next "end"
	step
	label honored
		goto 33.8,38.5
		.talk Leven Dawnblade##58408
		..turnin Mogu within the Ruins of Guo-Lai##31295 |only if havequest(31295)
		..accept The Secrets of Guo-Lai##30639 |only if not completedq(30639)
		..accept Painting the Ruins Red##30298 |daily
		.'_
		.' Click here if the Daily quest is not available today |confirm
	step
		goto 33.4,38.0
		.talk Rook Stonetoe##59333
		..accept He Knows What He's Doing##30305 |daily |or 2
		..accept Carved in Stone##30481 |daily |or 2
		.'_
		.' Click here if these quests are not available |confirm
	step
		goto 33.1,39.0
		.talk Sun Tenderheart##59334
		..accept No Stone Unturned##30299 |daily
		..accept The Key to Success##30300 |daily
		.'_
		.' Click here if this quest is not available |confirm
	step
		map Vale of Eternal Blossoms
		path loose; loop; curved
		path	31.5,34.1	25.8,34.5	24.4,32.9
		path	22.0,27.7	19.2,30.6	20.3,34.3
		path	23.9,39.1
		.from Shao-Tien Torturer##63641
		.' He walks along this path
		.get Shao-Tien Cage Key |q 30300/1
		|only if havequest(30300)
	step
		goto 15.0,25.9
		.kill Bai-Jin the Butcher##58949 |q 30248/1
		|only if havequest(30248)
	step
		goto 24.6,29.6
		.' All around this area:
		.click Shao-Tien Cage##9667
		.' Release Golden Lotus Prisoners |q 30300/2
		.' You can find more cages here [24.6,38.3]
		.' And more cages here: [29.9,29.4]
		|only if havequest(30300)
	step
		goto 31.8,33.0 |only if havequest(30298) or havequest(30481) or havequest(30305)
		.click Guo-Lai Runestone##6714+ |only if havequest(30481)
		.from Shao-Tien Soul-Caller##63611+, Shao-Tien Dominator##63610+ |only if havequest(30298) or havequest(30481)
		.kill 15 Guo-Lai mogu |q 30298/1 |only if havequest(30298)
		.get 12 Guo-Lai Runestone |q 30481/1 |only if havequest(30481)
		.' Stand on the Poison Traps and attack enemies in this area |model 10547 |only if havequest(30305)
		.' Lure 8 enemies into Poison Traps |q 30305/1 |only if havequest(30305)
	step
		goto Vale of Eternal Blossoms/18 41.0,52.8
		.talk He Softfoot##64647
		.' Let's go |q 30639/1
		|only if havequest(30639)
	step
		goto Vale of Eternal Blossoms/18 43.8,27.3
		'Engage Zhao-Jin the Bloodletter and defeat the Crumbling Jade Warriors he sends at you.
		'After you defeat the Crumbling Jade Warriors, Zhao-Jin will summon a Jade Collossus, weaken it as fast as you can.
		.' Uncover the mogu plan in the Hall of Statues |q 30639/2
		|modelnpc Zhao-Jin the Bloodletter##64663
		|modelnpc Crumbling Jade Warrior##64883
		|only if havequest(30639)
	step
		goto Vale of Eternal Blossoms 33.4,38.0
		.talk Rook Stonetoe##59333
		..turnin He Knows What He's Doing##30305
		..turnin Carved in Stone##30481
		|only if havequest(30481) or havequest(30305)
	step
		goto 33.8,38.5
		.talk Leven Dawnblade##58408
		..turnin Painting the Ruins Red##30298 |only if havequest(30298)
		..accept The Imperion Threat##30302 |daily
		.'_
		.' Click here if this daily quest is not available |confirm
	step
		goto 33.1,39.0
		.talk Sun Tenderheart##59334
		..turnin The Key to Success##30300
		|only if havequest(30300)
	step
		goto Vale of Eternal Blossoms/18 74.3,53.5
		.from Huo-Shuang##63691
		.' Kill the Shao-Tien Imperion |q 30302/1
		|only if havequest(30302)
	step
		goto Vale of Eternal Blossoms 33.8,38.5
		.talk Leven Dawnblade##58408
		..turnin The Imperion Threat##30302
	step
		goto 56.8,43.8
		.talk Leven Dawnblade##58408
		..turnin The Secrets of Guo-Lai##30639
	step
		goto Vale of Eternal Blossoms 21.3,71.5
		.talk Kun Autumnlight##58920
		..turnin The Butcher##30248
		|next "end"
	step
	label exalted
		goto 56.7,43.7
		.talk Leven Dawnblade##58408
		..accept The Mogu's Message##30643
	step
		'Enter the building here. |goto 40.4,77.2 <5 |c
	step
		goto 44.8,76.3
		.talk Zhi the Harmonious##59905
		..turnin The Mogu's Message##30643 |tip WARNING! Turning in this quest will spawn enemy ambushers.
		..accept What Comes to Pass##30644
	step
		goto 56.5,43.3
		.talk Sun Tenderheart##58468
		..turnin What Comes to Pass##30644
		..accept The Might of Three##30645
	step
		goto 64.4,41.5
		.from Shao-Tien Marauder##60225+, Granite Quilen##60223+, Shao-Tien Spiritrender##60224+, Reanimated Jade Warrior##60121+
		.' Kill 100 Mogu Invaders |q 30645/1 |tip While doing this quest you will get some help from the Jade Serpent, Xeun the White Tiger, and Niuzao the Black Ox. Kills 1-34 will aided by the Jade Serpent, use the AoE buff given to take down many foes at once. Kill 34-67 will be aided by the White Tiger, use his buff to focus down individual targets in larger packs, when they are shattered they will deal extreme AoE damage. Kills 67-100 will be aided by Niuzao, use his buff to damage enemies in a cone. Periodically you will instantly kill enemies with a knockback.
	step
		goto 74.2,41.8
		.talk Sinan the Dreamer##59906
		..turnin The Might of Three##30645
		..accept The Final Power##30646
	step
		goto 77.6,37.2
		.' Use the Red Crane's power to jump over the wall of flame.
		|confirm
		|only if havequest(30646)
	step
		goto 78.7,35.8
		'Zhao-Jin will periodically throw Lightning Spears. Click them to pick them up and then use the new button on your screen to hurl the spear back at him. this will be your main source of damage.
		'Zhao-Jin will also summon Lightning Waves. With the Red Crane's buff you can easily jump over these.
		.kill Zhao-Jin the Bloodletter##60273 |q 30646/1
	step
		goto 56.5,43.6
		.talk Anji Autumnlight##58465
		..turnin The Final Power##30646
		|next "end"
	step
	label end_of_lotus
		'You have achieved Revered status with the Golden Lotus!
		|next |only if default
	step
	label end
		'You have reached the end of the guide for today. You can only do the Dailies once per day.
		|confirm |next goldenmenu
]])
--------------------------------------------------------------------------------------------------------------------------------------
-- ACHIEVEMENTS
--------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterInclude("H_Explorer_Kalimdor",[[
	step
		' This guide assumes you have a flying mount and can fly in Azeroth as well. You can do this
		.' without having a flying mount but it will be much more efficient with one.
		|confirm always
	step
	label	"start"
		' Explore Azshara |achieve 852
		' Explore Durotar |achieve 728
		' Explore Northern Barrens |achieve 750
		' Explore Southern Barrens |achieve 4996
		' Explore Dustwallow Marsh |achieve 850
		' Explore Thousand Needles |achieve 846
		' Explore Tanaris |achieve 851
		' Explore Un'Goro Crater |achieve 854
		' Explore Uldum |achieve 4865
		' Explore Silithus |achieve 856
		' Explore Ferals |achieve 849
		' Explore Desolace |achieve 848
		' Explore Mulgore |achieve 736
		' Explore Stonetalon Mountains |achieve 847
		' Explore Ashenvale |achieve 845
		' Explore Mount Hyjal |achieve 4863
		' Explore Winterspring |achieve 857
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
		.' Discover Darnassian Base Camp |achieve 852/7
	step
		goto 73.69,20.98
		.' Discover Bitter Reaches |achieve 852/4
	step
		goto 80.90,32.34
		.' Discover Tower of Eldara |achieve 852/5
	step
		goto 69.89,34.83
		.' Discover Ruins of Arkkoran |achieve 852/6
	step
		goto 58.29,51.00
		.' Discover Bilgewater Harbor |achieve 852/3
	step
		goto 68.41,75.62
		.' Discover Southridge Beach |achieve 852/13
	step
		goto 64.65,79.31
		.' Discover Ravencrest Monument |achieve 852/14
	step
		goto 56.99,76.50
		.' Discover Storm Cliffs |achieve 852/17
	step
		goto 46.54,76.25
		.' Discover The Secret Lab |achieve 852/8
	step
		goto 39.83,84.67
		.' Discover The Ruined Reaches |achieve 852/16
	step
		goto 35.72,73.99
		.' Discover Lake Mennar |achieve 852/15
	step
		goto 26.75,77.96
		.' Discover Orgrimmar Rear Gate |achieve 852/11
	step
		goto 21.04,57.1
		.' Discover Gallywix Pleasure Palace |achieve 852/1
	step
		goto 39.21,55.46
		.' Discover The Shattered Strand |achieve 852/2
	step
		goto 31.95,50.02
		.' Discover Ruins of Eldarath |achieve 852/12
	step
		goto 25.47,38.00
		.' Discover Bear's Head |achieve 852/9
	step
		goto 33.06,32.76
		.' Discover Blackmaw Hold |achieve 852/10
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
		goto 43.96,39.82 
		.' Discover Withering Thicket |achieve 844/5
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
		goto 55.0,91.0
		.' Rut'theran Village |achieve 842/12
	step
		goto 58.4,33.0
		.' Discover Shadowglen |achieve 842/1
	step
		goto 50.7,38.0
		.' Discover The Cleft |achieve 842/2
	step
		goto 46.16,50.68 
		.' Ban'ethil Hollow |achieve 842/4
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

ZygorGuidesViewer:RegisterInclude("H_Explorer_EasternKingdoms",[[
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
		'Skipping next part of guide |next "+badlands" |only if step:Find("+burning1"):IsComplete()
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
	label	"badlands"
		'Skipping next part of guide |next "+searing" |only if step:Find("+badlands1"):IsComplete()
		'Proceeding next step |next |only if default
	step
		goto Badlands 68.0,48.2
		.' Discover Lethlor Ravine |achieve 765/1
	step
		goto 60.1,20.7
		.' Discover Camp Kosh |achieve 765/8
	step
		goto 38.3,11.6
		.' Discover Uldaman |achieve 765/3
	step
		goto 41.1,26.5
		.' Discover Angor Fortress |achieve 765/7
	step
		goto 27.4,38.
		.' Discover The Dustbowl |achieve 765/6
	step
		goto 17.7,41.7
		.' Discover New Kargath |achieve 765/10
	step
		goto 17.2,63.0
		.' Discover Camp Cagg |achieve 765/4
	step
		goto 31.7,54.6
		.' Discover Scar of the Worldbreaker |achieve 765/5
	step
		goto 46.5,57.4
		.' Discover Agmond's End |achieve 765/2
	step
		goto 52.3,51.2
		.' Discover Bloodwatcher Point |achieve 765/9
	step
	label	"badlands1"
		' Explore Badlands |achieve 765
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
		goto 28.18,37.67
		.' Discover Dragonmaw Pass |achieve 4866/4 
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
		goto 12.4,57.0
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
		goto 34.3,47.6
		.' Discover Bleeding Ziggurat |achieve 858/14
	step
		goto 40.4,49.8
		.' Discover Howling Ziggurat |achieve 858/9
	step
		goto 47.12,32.8
		.' Discover Tranquillien |achieve 858/1
	step
		goto 54.7,49.7
		.' Sanctum of the Sun |achieve 858/6
	step
		goto 66.6,58.9
		.' Discover Zeb'Nowa |achieve 858/11
	step
		goto 77.3,64.4
		.' Discover Amani Pass |achieve 858/12
	step
		goto 72.4,31.7
		.' Discover Farstrider Enclave |achieve 858/8
	step
		goto 78.6,18.7
		.' Discover Dawnstart Spire |achieve 858/7
	step
		goto 60.46,11.7
		.' Discover Suncrown Village |achieve 858/2
	step
		goto 48.39,11.51
		.' Discover Elrendar Crossing |achieve 858/15
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

ZygorGuidesViewer:RegisterInclude("H_Explorer_Outlands",[[
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
		.' Discover Netherwing Fields |achieve 864/13
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
		.' Discover Darkcrest Shore |achieve 863/18
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
		.' Discover Veil Lashh |achieve 865/23
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

ZygorGuidesViewer:RegisterInclude("H_Explorer_Northrend",[[
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
		goto 83.8,73.4
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
		.' Discover Angrathar the Wrath Gate |achieve 1265/10
	step
		goto 38.4,31.9
		.' Discover Obsidian Dragonshrine |achieve 1265/3
	step
		goto 25.1,43.2
		.' Discover Icemist Village |achieve 1265/7
	step
		goto 13.8,46.2
		.' Discover Westwind Refugee Camp |achieve 1265/13
	step
		goto 36.9,47.8
		.' Discover Agmar's Hammer |achieve 1265/11
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
		.' Discover Wyrmrest Temple |achieve 1265/12
	step
		goto 63.5,72.7
		.' Discover Emerald Dragonshrine |achieve 1265/8
	step
		goto 71.0,75.2
		.' Discover New Hearthglen |achieve 1265/4
	step
		goto 77.1,60.0
		.' Discover Venomspite |achieve 1265/14
	step
		goto 82.5,70.7
		.' Discover The Forgotten Shore |achieve 1265/15
	step
		goto 88.9,44.0
		.' Discover Naxxramas |achieve 1265/5
	step
		goto 83.6,25.6
		.' Discover Light's Trust |achieve 1265/6
	step
		goto 72.7,25.6
		.' Discover Scarlet Point |achieve 1265/17
	step
		goto 61.8,19.5
		.' Discover The Crystal Vice |achieve 1265/16
	step
		goto 50.0,17.5
		.' Discover Coldwind Heights |achieve 1265/9
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
		goto 24.9,57.7
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
		goto 27.0,24.1
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

ZygorGuidesViewer:RegisterInclude("H_Explorer_Pandaria",[[
		goto The Jade Forest 40.0,73.0
		.' Discover Nectarbreeze Orchard |achieve 6351/8
	step
		goto 46.0,90.0
		.' Discover Garrosh'ar Point |achieve 6351/15
	step
		goto 52.1,90.8
		.' Discover Dreamer's Pavilion |achieve 6351/3
	step
		goto 52.0,82.0
		.' Discover Slingtail Pits |achieve 6351/12
	step
		goto 58.0,80.0
		.' Discover Pearl Lake |achieve 6351/5
	step
		goto 57.0,57.0
		.' Discover Temple of the Jade Serpent |achieve 6351/13
	step
		goto 47.0,60.0
		.' Discover Serpent's Heart |achieve 6351/11
	step
		goto 48.0,45.0
		.' Discover Dawn's Blossom |achieve 6351/2
	step
		goto 57.0,44.0
		.' Discover The Arboretum |achieve 6351/14
	step
		goto 65.0,30.0
		.' Discover Windward Isle |achieve 6351/16
	step
		goto 50.0,26.2
		.' Discover Emperor's Omen |achieve 6351/4
	step
		goto 46.0,29.0
		.' Discover Greenstone Quarry |achieve 6351/7
	step
		goto The Jade Forest 41.2,21.5
		.' Discover Tian Monastery |achieve 6351/1
	step
		goto 40.0,13.0
		.' Discover Terrace of Ten Thunders |achieve 6351/10
	step
		goto 29.0,13.044
		.' Discover Honeydew Village |achieve 6351/17
	step
		goto 25.0,37.0
		.' Discover Camp Nooka Nooka |achieve 6351/9
	step
		goto 25.0,48.0
		.' Discover Grookin Hill |achieve 6351/6
// Valley
	step
		goto Valley of the Four Winds 75.7,24.9
		.' Discover the Thunderfoot Ranch |achieve 6969/17
	step
		goto 60.7,27.6
		.' Discover the Pools of Purity |achieve 6969/11
	step
		goto 68.6,43.3
		.' Discover Mudmug's Place |achieve 6969/8
	step
		goto 81.53,47.92
		.' Discover Zhu's Watch |achieve 6969/18
	step
		goto 73.2,58.3
		.' Discover the Rumbling Terrace |achieve 6969/12
	step
		goto 65.2,57.4
		.' Discover Silken Fields |achieve 6969/13
	step
		goto 56.1,49.8
		.' Discover Halfhill |achieve 6969/5
	step
		goto 54.2,38.7
		.' Discover the Gilded Fan |achieve 6969/3
	step
		goto 40.4,43.1
		.' Discover the Heartland |achieve 6969/16
	step
		goto 33.1,23.5
		.' Discover the Kunzen Village |achieve 6969/7
	step
		goto 16.6,38.7
		.' Discover Paoquan Hollow |achieve 6969/10
	step
		goto 25.0,43.6
		.' Discover Singing Marshes |achieve 6969/14
	step
		goto 19.0,57.0
		.' Discover Stoneplow |achieve 6969/6
	step
		goto 13.0,75.5
		.' Discover Dustback Gorge |achieve 6969/2
	step
		goto 16.1,82.7
		.' Discover the Nesingwary Safari |achieve 6969/9
	step
		goto 35.9,68.0
		.' Discover Stormstout Brewery |achieve 6969/15
	step
		goto 52.4,63.0
		.' Discover The Imperial Granary |achieve 6969/4
	step
		goto 50.1,75.1
		.' Discover Winds' Edge |achieve 6969/1
// Krasarang
	step
		goto Krasarang Wilds 76.6,8.7
		.' Discover Zhu's Watch |achieve 6975/16
	step
		goto 80.6,25.6
		.' Discover Krasarang Cove |achieve 6975/5
	step
		goto 68.5,22.8
		.' Discover The Krasari Ruins |achieve 6975/6
	step
		goto 65.3,32.9
		.' Discover the Dojan River |achieve 6975/3
	step
		goto 68.0,44.2
		.' Discover the Anglers Wharf |achieve 6975/1
	step
		goto 53.9,37.4
		.' Discover the Ruins of Dojan |achieve 6975/9
	step
		goto 45.5,31.8
		.' Discover The Deepwild |achieve 6975/12
	step
		goto 40.0,32.5
		.' Discover Crane Wing Refuge |achieve 6975/8
	step
		goto 39.1,56.8
		.' Discover the Temple of the Red Crane |achieve 6975/11
	step
		goto 43.3,90.2
		.' Discover Unga Ingoo |achieve 6975/15
	step
		goto 40.7,82.9
		.' Discover Nayeli Lagoon |achieve 6975/7
	step
		goto 31.2,63.2
		.' Discover the Cradle of Chi-Ji |achieve 6975/2
	step
		goto 12.7,59.9
		.' Discover The Southern Isle |achieve 6975/14
	step
		goto 24.0,47.1
		.' Discover the Ruins of Korja |achieve 6975/10
	step
		goto 30.2,38.3
		.' Discover Fallsong Village |achieve 6975/4
	step
		goto 14.1,39.0
		.' Discover The Forbidden Jungle |achieve 6975/13
// Kun-Lai
	step
		goto Kun-Lai Summit 71.8,92.2
		.' Discover Binan Village |achieve 6976/1
	step
		goto 68.1,73.2
		.' Discover Muskpaw Ranch |achieve 6976/8
	step
		goto 68.6,46.6
		.' Discover the Temple of the White Tiger |achieve 6976/11
	step
		goto 75.5,11.9
		.' Discover the Isle of Reckoning |achieve 6976/4
	step
		goto 62.4,29.4
		.' Discover Zouchin Village |achieve 6976/14
	step
		goto 53.4,48.3
		.' Discover the Valley of Emperors |achieve 6976/13
	step
		goto 49.3,42.9
		.' Discover Peak of Serenity |achieve 6976/9
	step
		goto 36.7,47.9
		.' Discover Shado-Pan Monastery |achieve 6976/10
	step
		goto 44.5,55.9
		.' Discover Mount Neverest |achieve 6976/7
	step
		goto 55.4,65.9
		.' Discover the Burlap Trail |achieve 6976/12
	step
		goto 58.0,74.8
		.' Discover Mogujia |achieve 6976/6
	step
		goto 55.5,92.0
		.' Discover the Gate of the August Celestials |achieve 6976/3
	step
		goto 45.4,86.2
		.' Discover Firebough Nook |achieve 6976/2
	step
		goto 38.0,75.1
		.' Discover Kota Peak |achieve 6976/5
// Townlong
	step
		goto Townlong Steppes 67.3,44.9
		.' Discover Fire Camp Osul |achieve 6977/5
	step
		goto 56.1,53.5
		.' Discover Kri'vess |achieve 6977/2
	step
		goto 39.3,62.0
		.' Discover Niuzao Temple |achieve 6977/4
	step
		goto Townlong Steppes 28.6,25.8
		.' Discover Shan'ze Dao |achieve 6977/8
	step
		goto 26.3,39.1
		.' Discover Sra'vess |achieve 6977/10
	step
		goto 49.2,71.0
		.' Discover Shado-Pan Garrison |achieve 6977/7
	step
		goto 44.6,77.5
		.' Discover Sik'vess |achieve 6977/9
	step
		goto 54.3,79.0
		.' Discover Rensai's Watchpost |achieve 6977/3
	step
		goto 66.3,69.3
		|confirm
	step
		goto 71.3,70.5
		.' Discover the Slumprushes |achieve 6977/11
	step
		goto 82.5,72.4
		.' Discover Hatred's Vice |achieve 6977/6
	step
		goto 75.5,82.5
		.' Discover the Gao-Ran Battlefront |achieve 6977/1
// Dread
	step
		goto Dread Wastes 63.2,18.4
		.' Discover Kypari Vor |achieve 6978/3
	step
		goto 50.5,12.2
		.' Discover The Sunset Brewgarden |achieve 6978/10
	step
		goto 34.6,20.0
		.' Discover Rikkitun Village |achieve 6978/5
	step
		goto 39.6,35.0
		.' Discover the Heart of Fear |achieve 6978/1
	step
		goto 46.2,34.5
		.' Discover The Clutches of Shek'zeer |achieve 6978/9
	step
		goto 53.6,34.9
		.' Discover Klaxxi'vess |achieve 6978/2
	step
		goto 38.7,62.2
		.'Discover The Briny Muck |achieve 6978/8
	step
		goto 30.5,73.6
		.' Discover Zan'vess |achieve 6978/12
	step
		goto 55.9,70.3
		.' Discover Soggy's Gamble |achieve 6978/6
	step
		goto 59.2,60.6
		.' Discover Kypari Zar |achieve 6978/4
	step
		goto 66.0,42.2
		.' Discover Writhingwood |achieve 6978/11
	step
		goto 68.3,30.4
		.' Discover Terace of Gurthan |achieve 6978/7
// Vale
	step
		goto Vale of Eternal Blossoms 86.4,62.5
		.' Discover the Shrine of Seven Stars |achieve 6979/6
	step
		goto 79.1,36.1
		.' Discover the Mogu'shan Palace |achieve 6979/3
	step
		goto 62.0,22.6
		.' Discover the Shrine of Two Moons |achieve 6979/9
	step
		goto 56.7,43.2
		.' Discover the Golden Pagoda |achieve 6979/7
	step
		goto 44.2,15.2
		.' Discover The Golden Stair |achieve 6979/5
	step
		goto 40.5,47.0
		.' Discover Whitepetal Lake |achieve 6979/10
	step
		goto 26.6,37.2
		.' Discover the Ruins of Guo-Lai |achieve 6979/1
	step
		goto 17.4,47.9
		.' Discover The Five Sisters |achieve 6979/11
	step
		goto 18.5,71.7
		.' Discover the Setting Sun Garrison |achieve 6979/4
	step
		goto 36.3,72.0
		.' Discover Mistfall Village |achieve 6979/2
	step
		goto 48.3,69.1
		.' Discover the Tu Shen Burial Ground |achieve 6979/8
]])

--------------------------------------------------------------------------------------------------------------------------------------
-- REPUTATIONS
--------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterInclude("Mag'har_Neutral",[[
		'Skipping Mag'har Rep Section |next "+end" |only if rep ("The Mag'har") >= Neutral
		'Proceeding Mah'Har Rep Section |next |only if default
	step
		goto Hellfire Peninsula,55,36
		.talk Nazgrel##3230
		.accept The Assassin##9400
	step
		goto 33.6,43.5
		.' Go to this spot
		.' Find Krun Spinebreaker |q 9400/1
	step
		goto 33.6,43.5
		.' Click the Fel Orc Corpse |tip It's a corpse laying halfway up the hill.
		..turnin The Assassin##9400
		..accept A Strange Weapon##9401
	step
		goto 55,36
		.talk Nazgrel##3230
		..turnin A Strange Weapon##9401
		..accept The Warchief's Mandate##9405
	step
		goto 54.2,37.9
		.talk Far Seer Regulkut##16574
		..turnin The Warchief's Mandate##9405
		..accept A Spirit Guide##9410
	step
		goto 33.6,43.5
		.' Use your Ancestral Spirit Wolf Totem next to the Fel Orc Corpse |use Ancestral Spirit Wolf Totem##23669 |tip It's a corpse laying halfway up the hill.
		.' Follow the spirit wolf |tip Stay close to the wolf and follow it until it stops, or you will not be able to turn in the quest.
		.' Follow the wolf to this spot|goto 32,27.8,0.5|c
	step
		goto 32,27.8
		.talk Gorkan Bloodfist##16845
		..turnin A Spirit Guide##9410
		..accept The Mag'har##9406
	step
	label "end"
		goto 55,36
		.talk Nazgrel##3230
		..turnin The Mag'har##9406
]])

ZygorGuidesViewer:RegisterInclude("H_Tillers",[[
	startlevel 90
	step
		'Proceeding to the Tiller's Dailies  |next "dailies" |condition completedq(31945) |only if completedq(31945)
		'Proceeding to the Tiller's Prequests |next |condition not completedq(31945) |only if not completedq(31945)
	step
		goto Vale of Eternal Blossoms 60.2,22.9
		.talk Farmer Doran##64011
		..accept The Tillers##31374
	step
		goto Valley of the Four Winds 52.0,48.0
		.talk Farmer Yoon##58721
		..turnin The Tillers##31374
		..accept A Helping Hand##30252
	step
		goto 51.8,48.8
		.click Unbudging Rock
		.' Clear 8 Unbudging Rocks |q 30252/1
	step
		goto 52.8,47.9
		.talk Farmer Yoon##58646
		..turnin A Helping Hand##30252
	step
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..accept Learn and Grow I: Seeds##30535
	step
		goto 52.9,52.2
		.talk Merchant Greenfield##58718
		.' Tell him you're there to pick up seeds.
		.' Get a Packet of Green Cabbage Seeds |q 30535/1
	step
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..turnin Learn and Grow I: Seeds##30535
		..accept Learn and Grow II: Tilling and Planting##30254
	step
		goto 52.0,48.3
		.clicknpc Untilled Soil##59985+
		.' Till 2 patches of Soil. |q 30254/1
		.' Use the EZ-Gro Green Cabbage Seeds in your bags on the Tilled Soil. |use EZ-Gro Green Cabbage Seeds##80302
		.' Plant seeds in 2 patches of Tilled Soil. |q 30254/2
		|modelnpc Tilled Soil##58563
	step
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..turnin Learn and Grow II: Tilling and Planting##30254
		..accept Learn and Grow III: Tending Crops##30255
	step
		goto 52.0,48.3
		.' Use the Rusty Watering Can on the Parched EZ-Gro Green Cabbage |use Rusty Watering Can##79104
		.' Water 2 parched Ez-Gro Green Cabbage |q 30255/1
		|modelnpc Parched EZ-Gro Green Cabbage##59987
	step
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..turnin Learn and Grow III: Tending Crops##30255
		..accept Learn and Grow IV: Harvesting##30256
	step
		goto 52.0,48.3
		.clicknpc Ripe EZ-Gro Green Cabbage##59833
		.get 2 EZ-Gro Green Cabbage |q 30256/1
	step
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..turnin Learn and Grow IV: Harvesting##30256
		..accept Learn and Grow V: Halfhill Market##30257
	step
		goto 52.8,48.0
		.click Dark Soil
		.get Marsh Lily |q 30257/1
	step
		goto 53.1,51.8
		.talk Gina Mudclaw##58706
		..turnin Learn and Grow V: Halfhill Market##30257 
		..accept Learn and Grow VI: Gina's Vote##31945
	step
		goto 52.9,52.2
		.talk Merchant Greenfield##58718
		.buy 1 Scallion Seeds##80591 |q 31945
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Scallion Seeds on the Tilled Soil |use Scallion Seeds##80591
		.' Plant Scallion Seeds |q 31945/1
		|modelnpc Tilled Soil##58563
	step
	label info
		'Click here for information on Bursting Crops |next "bursting" |confirm
		'Click here for information on Parched Crops |next "parched" |confirm
		'Click here for information on Infested Crops |next "infested" |confirm
		'Click here for information on Wiggling Crops |next "wiggling" |confirm
		'Click here for information on Alluring Crops |next "alluring" |confirm
		'Click here for information on Smothered Crops |next "smothered" |confirm
		'Click here for information on Wild Crops |next "wild" |confirm
		'Click here for information on Runty Crops |next "runty" |confirm
		'Click here for information on Tangled Crops |next "tangled" |confirm
	step
	label bursting
		'Unless you got a Bursting Scallion immediately after planting your Scallions, you will have to wait a full day until you can pick your crops.
		.' Click here if you are ready to harvest your crops. |confirm
		.' Click here to start doing dailies. |next "dailies" |confirm
	step
		goto 52.0,48.4
		.clicknpc Bursting Scallions##63160 
		.clicknpc Ripe Scallions##63165
		.' Harvest Ripe Scallions |q 31945/2
		.get 5 Scallion##74843 |q 31945/3
		|next "exit"
	step
	label runty
		goto 52.0,48.4
		.clicknpc Runty Scallions##63166
		.' Press your Space Bar and jump. 
		.' Click here to return to the information page. |next "info" |confirm
		.' Click here when you are have tilled your crops. |next "bursting" |confirm
	step
	label wiggling
		goto 52.0,48.4
		.clicknpc Wiggling Scallions##63169
		.from Voracious Virmen##60039
		.' Click here to return to the information page. |next "info" |confirm
		.' Click here when you are have tilled your crops. |next "bursting" |confirm
	step
	label infested
		goto 52.2,48.3
		.click Vintage Bug Sprayer
		.collect Vintage Bug Sprayer##80513 |n
		.' Use your Vintage Bug Sprayer on the Infested Scallions |use Vintage Bug Sprayer##80513
		|modelnpc Infested Scallions##63162
		.' Click here to return to the information page. |next "info" |confirm
		.' Click here when you are have tilled your crops. |next "bursting" |confirm
	step
	label alluring
		goto 52.2,48.3
		.clicknpc Alluring Scallions##63159
		.from Swooping Plainshawk##60072
		.' Click here to return to the information page. |next "info" |confirm
		.' Click here when you are have tilled your crops. |next "bursting" |confirm
	step
	label wild
		goto 52.0,48.4
		.clicknpc Wild Scallions##63170	
		.' Ride the Scallion |invehicle |c 
	step
		'Spam the Flex ability on your new hotbar, when the plant tries to cast Vine Slam, interrupt it with your Gnaw ability.
		.' Build 50 stacks on Dominance. |outvehicle |c
	step
		.' Click here to return to the information page. |next "info" |confirm
		.' Click here when you are have tilled your crops. |next "bursting" |confirm
	step
	label tangled
		goto 52.0,48.4 |n
		.clicknpc Tangled Scallions##63168
		.' Run to [51.7,48.9]
		'|goto 51.7,48.9 <5 |c
	step
		.' Click here to return to the information page. |next "info" |confirm
		.' Click here when you are have tilled your crops. |next "bursting" |confirm
	step
	label parched
		goto 52.0,48.4
		.' Use the Rusty Watering Can on the Parched Scallions |use Rusty Watering Can##79104
		.' Click here to return to the information page. |next "info" |confirm
		.' Click here when you are have tilled your crops. |next "bursting" |confirm
		|modelnpc Parched Scallions##63163
	step
	label smothered
		goto 52.0,48.4
		.clicknpc Encroaching Weed##60185
		.' Ride the Weed |invehicle |c
	step
		'Spam the Pull ability on your new hotbar. 
		.' Pull the Weed |outvehicle |c
	step
		.' Click here to return to the information page. |next "info" |confirm
		.' Click here when you are have tilled your crops. |next "bursting" |confirm
		|modelnpc Smothered Scallions##63167
	step
	label exit
		goto 53.1,51.8
		.talk Gina Mudclaw##58706
		..turnin Learn and Grow VI: Gina's Vote##31945
	step
	label dailies
		goto Valley of the Four Winds 51.9,48.3
		'Start each day out by harvesting the crops from the previous day.
		|confirm
	step
		goto 52.3,48.8
		.talk Farmer Yoon##58646 |tip He will only have 2 quests a day.
		..accept The Kunzen Hunter-Chief##30336 |daily |or 2
		..accept That Dangling Carrot##31670 |daily |or 2
		..accept Stealing is Bad... Re-Stealing is OK##30334 |daily |or 2
		..accept The Cabbage Test##31669 |daily |or 2
		..accept It's Melon Time##31942 |daily |or 2
		..accept A Pumpkin-y Perfume##31672 |daily |or 2
		..accept Stalling the Ravage##30335 |daily |or 2
		..accept Red Blossom Leeks, You Make the Croc-in' World Go Down##31673 |daily |or 2
		..accept Squash Those Foul Odors##31941 |or 2
		..accept The Lesser of Two Evils##30333 |or 2
		..accept The White Turnip Treatment##31675 |or 2
		..accept The Pink Turnip Challenge##31674 |or 2
		..accept Which Berries? Witchberries.##31943 |or 2
		..accept Why Not Scallions?##31671 |or 2
		..accept Simian Sabotage##30337 |or 2
	step
		goto 52.7,50.5
		.talk Andi##64464 |tip He will only have 1 quest a day.
		..accept A Gift For Fung##30475 |daily |or
		..accept A Gift For Chee Chee##30471 |daily |or
		..accept A Gift For Haohan##30477 |daily |or
		..accept A Gift For Jogu##30478 |daily |or
		..accept A Gift For Sho##30472 |daily |or
		..accept A Gift For Tina##30470 |daily |or
		..accept A Gift For Ella##30474 |daily |or
		..accept A Gift For Old Hillpaw##30476 |daily |or
		..accept A Gift For Fish##30473 |daily |or
		 ..accept A Gift For Gina##30479 |daily |or
	step
		goto 53.1,51.7
		.talk Ella##58647
		..accept You Have to Burn the Ropes##30327 |daily
		.'_
		.' Click here if Ella is not in town |confirm
	step
		goto 53.0,51.7
		.talk Haohan Mudclaw##57402
		..accept Pest Problems##30319
		.'_
		.' Click here if Haohan is not in town |confirm
	step
		goto 53.1,51.7
		.talk Tina Mudclaw##58761
		..accept They Don't Even Wear Them##30323
		.'_
		.' Click here if Tina is not in town |confirm
	step
		goto 53.1,52.1
		.talk Chee Chee##58709
		..accept Not in Chee-Chee's Backyard##30324 |daily
		.'_
		.' Click here if Chee-Chee is not in town |confirm
	step
		goto 52.8,51.8
		.talk Fish Fellreed##58705
		..accept The Kunzen Legend-Chief##30326 |daily
		.'_
		.' Click here if Fish Felreed is not in town |confirm
	step
		goto 52.9,51.7
		.talk Farmer Fung##57298
		..accept Water, Water Everywhere##30317 |daily
		.'_
		.' Click here if Farmer Fung is not in town |confirm
	step
		goto 53.1,52.1
		.talk Sho##58708
		..accept Where It Counts##30325
		.'_
		.' Click here if Sho is not in town |confirm
	step
		goto 53.6,52.5
		.talk Jogu the Drunk##58710
		..accept Weed War II##30321 |daily
		.'_
		.' Click here if Jogu has no available quests. |confirm
	step
		goto 53.0,51.8
		.talk Old Hillpaw##58707
		..accept Chasing the Chicken##30318
		.'_
		.' Click here if Old Hillpaw is not in town. |confirm
	step
		goto 53.2,51.8
		.talk Gina Mudclaw##58706
		..accept Money Matters##30322
		.'_
		.' If this quest is unavailable click here. |confirm
	step
		goto 55.1,50.3
		.talk Innkeeper Lei Lan##59582
		.' Tell her you are here on behalf of Gina Mudclaw.
		.' Innkeeper Lei Lan's Payment |q 30322/3
		|only if havequest(30322)
	step
		goto 55.6,52.1
		.talk Lolo Lio##59585
		.' Tell him you are here on behalf of Gina Mudclaw.
		.' Lolo Lio's Payment |q 30322/4
		|only if havequest(30322)
	step
		goto 56.1,49.6
		.talk Trader Jambeezi##59583
		.' Tell him you are here on behalf of Gina Mudclaw.
		.' Trader Jambeezi's Payment |q 30322/2
		|only if havequest(30322)
	step
		goto 56.7,47.1
		.talk Spicemaster Jin Jao##59581
		.' Tell him you are here on behalf of Gina Mudclaw.
		.' Spicemaster Jin Jao's Payment |q 30322/1
		|only if havequest(30322)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 Juicycrunch Carrot Seeds##80590
		|only if havequest(31670)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 Green Cabbage Seeds##79102
		|only if havequest(31669)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 Witchberry Seeds##89326
		|only if havequest(31943)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 Scallion Seeds##80591
		|only if havequest(31671)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 White Turnip Seeds##80595
		|only if havequest(31675)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 Pink Turnip Seeds##80594
		|only if havequest(31674)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 Jade Squash Seeds##89328
		|only if havequest(31941)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 Striped Melon Seeds##89329
		|only if havequest(31942)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 Mogu Pumpkin Seeds##80592
		|only if havequest(31672)
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 1 Red Blossom Leek Seeds##80593
		|only if havequest(31673)
	step
		goto 53.8,50.9
		.talk Wing Nga##60231
		.' Tell her that you'd like to borrow one of Farmer Fung's kites.
		.' Ride a kite. |invehicle |c
		|only if havequest(30317)
	step
		.' Use your Water Buckest ability on the Dusty Spots below you. |tip They are outlined by a yellow circle.
		.' Water 35 Dusty Spots |q 30317/1
		|only if havequest(30317)
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Scallion Seeds on the Tilled Soil |use Scallion Seeds##80591
		.' Plant Scallion Seeds |q 31671/1
		|modelnpc Tilled Soil##58563
		|only if havequest(31671)
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Juicycrunch Carrot Seed on the Tilled Soil |use Juicycrunch Carrot Seeds##80590
		.' Plant 1 Juicycrunch Carrot Seed |q 31670/1
		|modelnpc Tilled Soil##58563
		|only if havequest(31670)
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Witchberry Seeds on the Tilled Soil |use Witchberry Seeds##89326
		.' Plant Witchberry Seeds |q 31943/1
		|modelnpc Tilled Soil##58563+
		|only if havequest(31943)
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Mogu Pumpkin Seeds on the Tilled Soil |use Mogu Pumpkin Seeds##80592
		.' Plant Mogu Pumpkin Seeds |q 31672/1
		|modelnpc Tilled Soil##58563+
		|only if havequest(31672)
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Jade Squash Seeds on the Tilled Soil |use Jade Squash Seeds##89328
		.' Plant Jade Squash Seeds |q 31941/1
		|modelnpc Tilled Soil##58563+
		|only if havequest(31941)
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your White Turnip Seeds on the Tilled Soil |use White Turnip Seeds##80595
		.' Plant White Turnip Seeds |q 31675/1
		|modelnpc Tilled Soil##58563+
		|only if havequest(31675)
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Pink Turnip Seeds on the Tilled Soil |use Pink Turnip Seeds##80594
		.' Plant Pink Turnip Seeds |q 31674/1
		|modelnpc Tilled Soil##58563+
		|only if havequest(31674)
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Green Cabbage Seeds on the Tilled Soil |use Green Cabbage Seeds##79102
		.' Plant Green Cabbage Seeds |q 31669/1
		|modelnpc Tilled Soil##58563+
		|only if havequest(31669)
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Striped Melon Seeds on the Tilled Soil |use Striped Melon Seeds##89329
		.' Plant Striped Melon Seeds |q 31942/1
		|modelnpc Tilled Soil##58563+
		|only if havequest(31942)
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Red Blossom Leek Seeds on the Tilled Soil |use Red Blossom Leek Seeds##80593
		.' Plant Red Blossom Leek Seeds |q 31673/1
		|modelnpc Tilled Soil##58563
		|only if havequest(31673)
	step
		goto 45.9,48.5
		.click Goldenfire Orchid##10921
		.get Goldenfire Orchid |q 30479/1
		.' You can also find this here: [41.6,42.8]
		.' or here: [37.5,37.3]
		|only if havequest(30479)
	step
		goto 42.4,50.0
		.talk Lost Dog##59533
		..accept Lost and Lonely##30526
		|only if repval('The Tillers','Revered')>=13000
	step
		goto 38.5,51.7
		.talk Gai Lan##57385
		.' Ask him, "What Weeds?"
		.' Get the Weed War buff. |havebuff Weed War
		|only if havequest(30321)
	step
		.clicknpc Ugly Weed##57306
		.clicknpc Nasty Weed##57308
		.click Weed-B-Gone Gas Bomb |tip Use the new button available to you to clear a lot of weeds at once
		.' Pull 100 Weeds |q 30321/1
		|only if havequest(30321)
	step
		goto 31.3,53.2
		.clicknpc Hillpaw's Chicken##58918 |tip Most of these chickens are disguised animals. When you pick one up click the button that appears on your screen.
		.' You can deliver lost hens to the chicken coop here [30.4,52.5]
		.get Old Hillpaw's Prize Chicken##80223 |q 30318/1
		|only if havequest(30318)
	step
		goto 37.4,37.3
		.from Monstrous Plainshawk##59641
		.collect 1 Bloody Plainshawk Leg##80232
		|only if havequest(30475)
	step
		goto 39.6,45.3
		.talk Wika-Wika##59532
		.' Mook-mooks?
		.' Get the Pest Problems buff. |havebuff Pest Problems
		|only if havequest(30319)
	step
		goto 39.6,45.3
		.clicknpc Black-Nose Marmot##59530
		.' Stomp 25 Black-Nose Marmot |q 30319/1
		|only if havequest(30319)
	step
		goto 30.2,46.0
		.from Teeku##59130, Jim-Jim##59128, Jokka-Jokka##59126, Kon-Kon##59127
		.' Kill the Kunzen-Hunter Chief. |q 30336/1
		|only if havequest(30336)
	step
		goto 29.2,38.2
		.from Skyrange Mushan##64309+
		.get 20 Tasty T-Bone |q 30526/1
		|only if havequest(30526)
	step
		goto 32.0,32.1
		.click Kunzen Rope
		.' Burn 6 ropes |q 30327/1
		|only if havequest(30327)
	step
		goto 29.7,34.5
		.click Yu-Ping Soup Cauldron
		.get Yu-Ping Soup##79870 |q 30472/1
		|only if havequest(30472)
	step
		goto 29.7,34.5
		.kill 1 Kunzen Ritualist##59123 |q 30325/3
		.click Blazing Ember##5746
		.' Kick 4 Blazing Ember |q 30325/2
		.click Kunzen Ritual Candle##11320
		.' Throw 8 Kunzen Ritual Candles |q 30325/1
		|only if havequest(30325)
	step
		goto 31.6,28.7
		.from Buk-Buk##59133+, Bimba##59135+, Yammo##59134+, Rit-Rit##59132+
		.get 1 Kunzen Legend-Book##79866 |q 30326/1
		|only if havequest(30326)
	step
		goto 33.6,23.9
		.click Authentic Valley Stir Fry
		.get Authentic Valley Stir Fry |q 30471/1
		|only if havequest(30471)
	step
		goto 34.0,24.1
		.click Yak Statuette
		.get Yak Statuette##79828 |q 30473/1
		|only if havequest(30473)
	step
		goto 32.7,30.6
		'Use the Barrel of Fireworks in your bags. |use Barrel of Fireworks##79885
		.' Stolen tools exploded |q 30337/2
		|only if havequest(30337)
	step
		goto 30.4,28.1
		'Use the Barrel of Fireworks in your bags. |use Barrel of Fireworks##79885
		.' Stolen weapons exploded |q 30337/1
		|only if havequest(30337)
	step
		goto 32.1,25.9
		'Use the Barrel of Fireworks in your bags. |use Barrel of Fireworks##79885
		.' Stolen beer exploded |q 30337/3
		|only if havequest(30337)
	step
		goto 35.0,22.0
		'Use the Barrel of Fireworks in your bags. |use Barrel of Fireworks##79885
		.' Stolen grain exploded |q 30337/4
		|only if havequest(30337)
	step
		goto 34.2,23.5
		.from Kunzen Rockflinger##59120+, Kunzen Collector##59124+, Kunzen Ravager##59119+, Kunzen Hunter##59121+
		.' Kill 12 Kunzen hozen |q 30335/1
		|only if havequest(30335)
	step
		goto 34.2,23.5
		.click Stolen Vegetable |only if havequest(30334)
		.get 16 Stolen Vegetable##79824 |q 30334/1 |only if havequest(30334)
		.from Kunzen Rockflinger##59120+, Kunzen Collector##59124+, Kunzen Ravager##59119+ |only if havequest(30324)
		.' Kill 8 Kunzen tribe members. |q 30324/1 |only if havequest(30324)
	step
		goto 44.1,29.1
		.from Enormous Cattail Grouper##59639
		.get Enormous Cattail Grouper Tooth |q 30477/1
		|only if havequest(30477)
	step
		'Enter this warren. |goto 46.9,21.1 <5 |c
		|only if havequest(30333)
	step
		goto 48.7,18.7
		.kill Springtail Warren-Mother##59516 |q 30333/1
		|only if havequest(30333)
	step
		'Leave the warren. |goto 46.9,21.1 <5 |c
		|only if havequest(30333)
	step
		'Enter this warren. |goto 44.0,22.3 <5 |c
		|only if havequest(30470)
	step
		goto 44.7,19.6
		.from Springtail Littlewhisker##59515+, Springtail Trapper##59513+, Springtail Burrower##59514+
		.get Stolen Circlet##80138 |q 30323/1
		.get Ransacked Ring##80137 |q 30323/2
		.get Buglarized Bracelet##80139 |q 30323/3
		|only if havequest(30323)
	step
		'Leave the warren. |goto 44.0,22.3 <5 |c
		|only if havequest(30470)
	step
		'This item could be in either warren or the patch of land seperating the two entrances.
		.click Chrysoberyl Outcropping##7456
		.get Uncut Chrysoberyl |q 30470/1
		|only if havequest(30470)
	step
		goto 44.2,28.8
		.click Freshwater Oyster
		.get Blue Freshwater Pearl## |q 30476/1
		|only if havequest(30476)
	step
		goto 42.4,50.0
		.talk Lost Dog##59533
		..turnin Lost and Lonely##30526
		|only if havequest(30526)
	step
		goto 52.6,47.8
		.click Yoon's Apples
		.collect 8 Yoon's Apple##80234
		|only if havequest(30478)
	step
		goto 52.8,47.9
		.click Yoon's Craneberries
		.collect 50 Yoon's Craneberry##80235
		|only if havequest(30478)
	step
		goto 53.2,52.2
		.talk Bobo Ironpaw##58717
		.' Tell him you've got all this fruit here.
		.get Apple-Berry Hooch |q 30478/1
		|only if havequest(30478)
	step
		goto 53.0,51.3
		.talk Kol Ironpaw##58712
		.' Ask him if he could grill your plainshawk leg.
		.get Grilled Plainshawk Leg##80233 |q 30475/1
		|only if havequest(30475)
	step
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..turnin The Kunzen Hunter-Chief##30336
		..turnin That Dangling Carrot##31670
		..turnin Stealing is Bad... Re-Stealing is OK##30334
		..turnin The Cabbage Test##31669
		..turnin It's Melon Time##31942
		..turnin A Pumpkin-y Perfume##31672
		..turnin Stalling the Ravage##30335
		..turnin Red Blossom Leeks, You Make the Croc-in' World Go Down##31673
		..turnin Squash Those Foul Odors##31941
		..turnin The Lesser of Two Evils##30333
		..turnin The White Turnip Treatment##31675
		..turnin The Pink Turnip Challenge##31674
		..turnin Which Berries? Witchberries.##31943
		..turnin Why Not Scallions?##31671
		..turnin Simian Sabotage##30337
	step
		goto 52.9,51.7
		.talk Farmer Fung##57298
		..turnin Water, Water Everywhere##30317
		..turnin A Gift For Fung##30475 |only if havequest(30475)
	step
		goto 52.8,51.8
		.talk Fish Fellreed##58705
		..turnin The Kunzen Legend-Chief##30326
		..turnin A Gift For Fish##30473 |only if havequest(30473)
	step
		goto  53.0,51.7
		.talk Ella##58647
		..turnin You Have to Burn the Ropes##30327
	step
		goto 53.1,52.1
		.talk Sho##58708
		..turnin Where It Counts##30325
		..turnin A Gift For Sho##30472 |only if havequest(30472)
	step
		goto 53.2,51.8
		.talk Gina Mudclaw##58706
		..turnin Money Matters##30322
		..turnin A Gift For Gina##30479
	step
		goto 53.1,51.9
		.talk Old Hillpaw##58707
		..turnin Chasing the Chicken##30318
		..turnin A Gift For Old Hillpaw##30476 |only if havequest(30476)
	step
		goto 53.1,51.7
		.talk Tina Mudclaw##58761
		..turnin A Gift For Tina##30470 |only if havequest(30470)
		..turnin They Don't Even Wear Them##30323
	step
		goto 53.0,51.7
		.talk Haohan Mudclaw##57402
		..turnin Pest Problems##30319
		..turnin A Gift For Haohan##30477 |only if havequest(30477)
	step
		goto 53.6,52.5
		.talk Jogu the Drunk##58710
		..turnin Weed War II##30321
		..turnin A Gift For Jogu##30478 |only if havequest(30478)
	step
		goto 53.1,52.1
		.talk Chee Chee##58709
		..turnin Not in Chee-Chee's Backyard##30324
		..turnin A Gift For Chee Chee##30471 |only if havequest(30471)
		|next "honored" |only if rep('The Tillers')==Honored
		|next "revered" |only if rep('The Tillers')==Revered
		|next "exalted" |only if rep('The Tillers')==Exalted
		|next "end" |only if rep('The Tillers')<=Friendly
	step
	label honored
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..accept Growing the Farm I: The Weeds##30260
		|next mungmung |only if repval('The Tillers','Honored')>=5600 and completedq(31936) and not completedq(31946)
	step
		goto 38.6,51.7
		.talk Gai Lan##57385
		..turnin Growing the Farm I: The Weeds##30260
		..accept Growing the Farm I: A Little Problem##30516
	step
		goto 36.5,51.1
		.click Spideroot
		.get 6 Spideroot |q 30516/1
	step
		goto 38.6,51.7
		.talk Gai Lan##57385
		..turnin Growing the Farm I: A Little Problem##30516
		|next "revered" |only if rep('The Tillers')>=Revered
	step
		goto 51.9,48.3
		'When you arrive at Sunsong Ranch you will get a buff. After 15 minutes your ranch will be expanded. |tip You cannot buy your farm upgrade until the expansion is done. 
		|confirm
		|only if not completedq(31936)
	step
		goto 53.2,51.8
		.talk Gina Mudclaw##58706
		.buy 1 "Jinyu Princess" Irrigation System##89812 |q 31936
	step
		'Click the "Jinyu Princess" Irrigation System in your bags. |use "Jinyu Princess" Irrigation System##89812
		..accept The "Jinyu Princess" Irrigation System##31936
	step
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..turnin The "Jinyu Princess" Irrigation System##31936
		|next mungmung |only if repval('The Tillers','Honored')>=5600 and completedq(31936) and not completedq(31946)
		|next "end" |only if default
	step
	label revered
		goto 53.2,51.8
		.talk Gina Mudclaw##58706
		.buy 1 Grand Commendation of the Tillers##93226
		.' Use the Commendation of the Tillers you just purchased. |use Grand Commendation of the Tillers##93226
		.' If you have already purchased this (either on this or another character), click here. |confirm
		|only if rep("The Tillers")>=Revered
	step
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..accept Growing the Farm II: The Broken Wagon##30523
		|next "fung" |only if repval('The Tillers','Revered')>=4200
		|next "mungmung" |only if completedq(31936) and not completedq(31946)
		|only if completedq(30516) and rep('The Tillers')>=Revered
	step
		goto 41.7,30.0
		.talk Fish Fellreed##58705
		..turnin Growing the Farm II: The Broken Wagon##30523
		..accept Growing the Farm II: Knock on Wood##30524
	step
		goto 42.8,29.1
		.click Boat Planks
		.get 100 Waxed Plank##80136 |q 30524/1
	step
		goto 41.7,30.0
		.talk Fish Fellreed##58705
		..turnin Growing the Farm II: Knock on Wood##30524
	step
		goto 51.9,48.3
		'When you arrive at Sunsong Ranch you will get a buff. After 15 minutes your ranch will be expanded. |tip You cannot buy your farm upgrade until the expansion is done. 
		|confirm
		|only if not completedq(31937)
	step
		goto 53.2,51.8
		.talk Gina Mudclaw##58706
		.buy 1 "Thunder King" Pest Repellers##89813 |q 31937
	step
		'Click the "Thunder King" Pest Repellers in your bags. |use "Thunder King" Pest Repellers##89813
		..accept "Thunder King" Pest Repellers##31937
	step
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..turnin "Thunder King" Pest Repellers##31937
		|next "end"
	step
	label mungmung
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..accept Mung-Mung's Vote I: A Hozen's Problem##30258
		|next "fung" |only if completedq(31946)
	step
		goto 44.2,34.3
		.talk Mung-Mung##57401
		..turnin Mung-Mung's Vote I: A Hozen's Problem##30258
		..accept Mung-Mung's Vote II: Rotten to the Core##30259
	step
		goto 42.7,38.2
		.click Partially Chewed Carrot
		.get 10 Partially Chewed Carrot##80116 |q 30259/1
	step
		goto 44.2,34.3
		.talk Mung-Mung##57401
		..turnin Mung-Mung's Vote II: Rotten to the Core##30259
		..accept Mung-Mung's Vote III: The Great Carrot Caper##31946
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 2 Juicycrunch Carrot Seeds##80590 |q 31946
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Juicycrunch Carrot Seeds on the Tilled Soil |use Juicycrunch Carrot Seeds##80590
		.' Plant 2 Juicycrunch Carrot Seeds |q 31946/1
		|modelnpc Tilled Soil##58563
	step
		'Wait a day for the carrots to grow and then harvest them.
		.' Harvest 2 Ripe Juicycrunch Carrots |q 31946/2
		.get 10 Juicycrunch Carrot##74841 |q 31946/3
	step
		goto 44.2,34.3
		.talk Mung-Mung##57401
		..turnin Mung-Mung's Vote III: The Great Carrot Caper##31946
		|next "end"
	step
	label fung
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..accept Farmer Fung's Vote I: Yak Attack##30517
		|next |only if repval('The Tillers','Revered')>=8400
		.' Click here if this quest is not available yet |confirm |next end
	step
		goto 48.3,33.9
		.talk Farmer Fung##57298
		..turnin Farmer Fung's Vote I: Yak Attack##30517
		..accept Farmer Fung's Vote II: On the Loose##30518
	step
		goto 51.0,36.7
		.clicknpc Escaped Shagskin##59491
		.' Ride 5 Escaped Shagskin to [50.4,34.7] |q 30518/1
	step
		goto 48.3,33.9
		.talk Farmer Fung##57298
		..turnin Farmer Fung's Vote II: On the Loose##30518
		..accept Farmer Fung's Vote III: Crazy For Cabbage##31947
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 3 Green Cabbage Seeds##79102 |q 31947
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Green Cabbage Seeds on the Tilled Soil |use Green Cabbage Seeds##79102
		.' Plant 3 Green Cabbage Seeds |q 31947/1
		|modelnpc Tilled Soil##58563
	step
		'Wait a day for the Green Cabbage to grow and then harvest them.
		.' Harvest 3 Green Cabbage |q 31947/2
		.get 15 Green Cabbage##74840 |q 31947/3
	step
		goto 48.3,33.9
		.talk Farmer Fung##57298
		..turnin Farmer Fung's Vote III: Crazy For Cabbage##31947
	step
	label nana
		goto 52.2,48.8
		.talk Farmer Yoon##58646
		..accept Nana's Vote I: Nana's Secret Recipe##30519
		|next |only if repval('The Tillers','Revered')>=16800
		.' Click here if this quest is not available yet |confirm |next end
	step
		goto 54.7,47.0
		.talk Nana Mudclaw##64597
		..turnin Nana's Vote I: Nana's Secret Recipe##30519
		..accept Nana's Vote II: The Sacred Springs##31948
	step
		goto 56.7,21.7
		.from Thousand-Year Guardian##66850+
		.' You may have to kill the Guardian first, then collect the water
		'Use the Empty Pitcher while standing under the waterfall. |use Empty Pitcher##89902
		.' Thousand-Year Water |q 31948/1
	step
		goto 54.7,47.0
		.talk Nana Mudclaw##64597
		..turnin Nana's Vote II: The Sacred Springs##31948
		..accept Nana's Vote III: Witchberry Julep##31949
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 3 Witchberry Seeds##89326 |q 31949
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Witchberry Seeds on the Tilled Soil |use Witchberry Seeds##89326
		.' Plant 3 Witchberry Seeds |q 31949/1
		|modelnpc Tilled Soil##58563
		|only if havequest(31949)
	step
		'Wait a day for the Witchberries to grow and then harvest them.
		.' Harvest 3 Witchberries |q 31949/2
		.get 15 Witchberries##74846 |q 31949/3	
	step
		goto 54.7,47.0
		.talk Nana Mudclaw##64597
		..turnin Nana's Vote III: Witchberry Julep##31949
	step
	label haohan
		goto 52.2,48.8
		.talk Farmer Yoon##58646
		..accept Haohan's Vote I: Bungalow Break-In##30521
		.' Click here if this quest is not available yet |confirm |next end
	step
		goto 44.6,34.1
		.talk Haohan Mudclaw##57402
		..turnin Haohan's Vote I: Bungalow Break-In##30521
		..accept Haohan's Vote II: The Real Culprits##30522
	step
		goto 39.4,43.6
		.clicknpc Suspicious Footprint##52171
		.' Investigate 8 Suspicious Footprints. |q 30522/1 |tip When you click the eighth footprint a hozen will attack you.
	step
		goto 52.2,48.8
		.talk Farmer Yoon##58646
		..turnin Haohan's Vote II: The Real Culprits##30522
		..accept Haohan's Vote III: Pure Poison##30525
	step
		'Enter this warren |goto 47.0,20.9 <5 |c
	step
		.click Cave Lily
		.get Cave Lily##80141 |q 30525/2
	step
		'Leave this warren |goto 47.0,20.9 <5 |c
	step
		'Enter this warren |goto 44.0,22.2 <5 |c
	step
		.click Bloodbloom##2313
		.get Bloodbloom##80140 |q 30525/1
	step
		'Leave this warren |goto 44.0,22.2 <5 |c
	step
		goto 42.5,22.3
		.click Violet Lichen##2314
		.get Violet Lichen |q 30525/4
	step
		'Enter this warren |goto 39.4,20.4 <5 |c
	step
		.click Ghostcap##9844
		.get Ghostcap##80142 |q 30525/3
	step
		'Leave this warren |goto 39.4,20.4 <5 |c
	step
		goto 52.2,48.8
		.talk Farmer Yoon##58646
		..turnin Haohan's Vote III: Pure Poison##30525
		..accept Haohan's Vote IV: Melons For Felons##30527
	step
		goto 52.9,52.1
		.talk Merchant Greenfield##58718
		.buy 4 Striped Melon Seeds##89329 |q 30527
	step
		goto 52.0,48.4
		.clicknpc Untilled Soil##58562
		.' Use your Striped Melon Seeds on the Tilled Soil |use Striped Melon Seeds##89329
		.' Plant 4 Striped Melon Seeds |q 30527/1
		|modelnpc Tilled Soil##58563
	step
		'Wait a day for the Striped Melons to grow and then harvest them.
		.' Harvest 4 Striped Melons |q 30527/2
		.get 20 Striped Melon##74848 |q 30527/3	
	step
		goto 52.2,48.8
		.talk Farmer Yoon##58646
		..turnin Haohan's Vote IV: Melons For Felons##30527
		..accept Haohan's Vote V: Chief Yip-Yip##30528 //20000 Revered?
	step
		'Enter the cave here |goto 33.1,20.2 <5 |c
	step
		goto 32.4,20.6
		.kill Chief Yip-Yip##59567 |q 30528/1
		'Use the _Throw Melon_ button on your screen when he begins casting _Charging Up_. This will cause him to stop attacking and take increased damage for a few seconds.
	step
		goto 52.2,48.8
		.talk Farmer Yoon##58646
		..turnin Haohan's Vote V: Chief Yip-Yip##30528
	step
		goto 52.0,49.0
		'After some talking, the Offering Bowl should light up for you to click.
		.click Offering Bowl
		|confirm
		|next "end"
	step
	label exalted
		goto 52.2,48.8
		.talk Farmer Yoon##58646
		..accept Growing the Farm III: The Mossy Boulder##30529
		.' Click here if this quest is not available yet |confirm |next end
		|next |only if default
	step
		goto 44.6,34.1
		.talk Haohan Mudclaw##57402
		..turnin Growing the Farm III: The Mossy Boulder##30529
	step
		goto 51.9,48.3
		'When you arrive at Sunsong Ranch you will get a buff. After 15 minutes your ranch will be expanded. |tip You cannot buy your farm upgrade until the expansion is done. 
		|confirm
		|only if not completedq(31938)
	step
		goto 53.2,51.8
		.talk Gina Mudclaw##58706
		.buy 1 "Earth-Slasher" Master Plow##89814 |q 31938
	step
		'Click the "Earth-Slasher" Master Plow in your bags. |use "Earth-Slasher" Master Plow##89814
		..accept The "Earth-Slasher" Master Plow##31938
	step
		goto 52.3,48.8
		.talk Farmer Yoon##58646
		..turnin The "Earth-Slasher" Master Plow##31938
	step
		goto 52.0,49.0
		.click Tillers Shrine##11506
		..accept A Second Hand##30534
	step
		'For this quest you must be _Best Friends_ with one of the 10 Tiller NPCs. Please refer to the Reputations guides for assistance in gaining rep for an individual.
		|confirm
	step
		'Go to your _Best Friend's_ home.
		.' Ask them: <Friend>, how'd you like to help us run the farm? |q 30534/1
	step
		goto 52.0,49.0
		.click Tillers Shrine##11506
		..turnin A Second Hand##30534
	step
	label end
		'The last thing to do with The Tillers each day is to plant as many crops as your farm can hold. Each crop harvest will award reputation so do this every day.
		.' Click here to go back to the beginning of the dailies section. |next "dailies" |confirm
]])

ZygorGuidesViewer:RegisterGuideSorting({
	"Leveling",
	"Loremaster",
	"Dailies",
	"Events",
	"Dungeons",
	"Gear",
	"Professions",
	"Achievements",
	"Pets & Mounts",
	"Titles",
	"Reputations",
	"Macros",
})

ZygorGuidesViewer:RegisterInclude("Argent Tourney_Aspirant",[[
		goto Icecrown,76.3,24.3
		.talk Magister Edien Sunhollow##33542
		..accept Up To The Challenge##13678
	step
		goto 76.3,24.4
		.talk Magister Edien Sunhollow##33542
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13673 |daily |or
		..accept A Worthy Weapon##13674 |daily |or
		..accept The Edge of Winter##13675 |daily |or
	step
		goto 76.3,24.4
		.talk Amariel Sunsworn##33658
		..accept Training in the Field##13676 |daily
	step
		goto 76.2,24.4
		.talk Galathia Brightdawn##33659
		..accept Learning the Reins##13677 |daily
	step
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..' Tell her you are glad to help
		.get Ashwood Brand |q 13673/1
	step
		goto Icecrown,69.1,76.2
		.click Winter Hyacinth##3231
		.collect 4 Winter Hyacinth##45000 |q 13674
	step
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.click Blade of Drak'Mar##8564
		.get Blade of Drak'Mar |q 13674/1
	step
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13675
	step
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13675/1
	step
		goto Icecrown,74.8,35.5
		.from Vrykul Necrolord##31783+, Frostbrood Whelp##31718+
		.kill 8 Icecrown Scourge |q 13676/1
	step
		goto 75.6,23.7
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Sunreaver Hawkstrider|invehicle |q 13677
	step
		goto 73.1,24.8
		.' Target a Melee Target
		.' If you don't want to kill your mount be sure to keep your Defend ability maxed out at 3 stacks
		.' Use your Thrust ability to attack the target 5 times |q 13677/1
	step
		goto 72.9,25.1
		.' Target a Charge Target from a distance
		.' Use Shield-Breaker ability until you notice the targets Defend is gone
		.' Use your Charge ability on the Charge Target 2 times |q 13677/3
	step
		goto 73.3,25.0
		.' Target a Ranged Target from a distance
		.' Use Shield-Breaker ability on Ranged Target to bring it's shields down
		.' Use Shield-Breaker ability on Ranged Target twice, while it's shields are down|q 13677/2
	step
		goto 76.3,24.4
		.talk Magister Edien Sunhollow##33542
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13673
		..turnin A Worthy Weapon##13674
		..turnin The Edge of Winter##13675
	step
		goto 76.3,24.4
		.talk Amariel Sunsworn##33658
		..turnin Training in the Field##13676
	step
		goto 76.2,24.4
		.talk Galathia Brightdawn##33659
		..turnin Learning the Reins##13677
	step
		'Make sure you have 15 Aspirant's Seals:
		.get 15 Aspirant's Seal |q 13678/1 |tip If you do not have 15 Aspirant's Seals, keep repeating the daily quests in this guide section.  It takes 3 days of doing these Aspirant Rank dailies to get 15 Aspirant's Seals.
	step
		goto 76.3,24.4
		.talk Magister Edien Sunhollow##33542
		..turnin Up To The Challenge##13678
]])

ZygorGuidesViewer:RegisterInclude("Argent Tourney_Valiant",[[
		goto Icecrown,76.3,24.4
		.talk Magister Edien Sunhollow##33542
		..accept The Aspirant's Challenge##13680
	step
		goto 71.8,20.0
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Sunreaver Hawkstrider|invehicle |q 13680
	step
		goto 71.4,19.6
		.talk Squire David##33447
		.' Tell him you are ready to fight!|tip Use your Defend ability on your hotbar to max your shield out at 3 charges before telling Squire David this.
		.'An Argent Valiant runs up on a horse
		.' Use the abilities on your hotbar to defeat the Argent Valiant|tip The best strategy to defeat the Argent Valiant is to always make sure your shield is up by using your Defend ability.  Then, use your Shield-Breaker ability to bring down the Argent Valiant's shield.  When his shield is down, use your Charge ability on him.  Keep repeating this process until he is defeated.
		.' Defeat the Argent Valiant |q 13680/1
	step
		goto 76.3,24.4
		.talk Magister Edien Sunhollow##33542
		..turnin The Aspirant's Challenge##13680
		..accept A Valiant Of Orgrimmar##13691 |only Orc
		..accept A Valiant Of Sen'jin##13693 |only Troll
		..accept A Valiant Of Thunder Bluff##13694 |only Tauren
		..accept A Valiant Of Undercity##13695 |only Scourge
		..accept A Valiant Of Silvermoon##13696 |only BloodElf
	step
		goto 76.5,24.6
		.talk Mokra the Skullcrusher##33361
		..turnin A Valiant Of Orgrimmar##13691
		..accept The Valiant's Charge##13697
		only Orc
	step
		goto 76.0,24.5
		.talk Zul'tore##33372
		..turnin A Valiant Of Sen'jin##13693
		..accept The Valiant's Charge##13719
		only Troll
	step
		goto 76.2,24.6
		.talk Runok Wildmane##33403
		..turnin A Valiant Of Thunder Bluff##13694
		..accept The Valiant's Charge##13720
		only Tauren
	step
		goto 76.5,24.2
		.talk Deathstalker Visceri##33373
		..turnin A Valiant Of Undercity##13695
		..accept The Valiant's Charge##13721
		only Scourge
	step
		goto 76.5,23.9
		.talk Eressea Dawnsinger##33379
		..turnin A Valiant Of Silvermoon##13696
		..accept The Valiant's Charge##13722
		only BloodElf
	// ORC VALIANT RANK DAILY LOOP (BEGIN)
	step
		goto 76.5,24.6
		.talk Mokra the Skullcrusher##33361
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13762 |daily |or
		..accept A Worthy Weapon##13763 |daily |or
		..accept The Edge Of Winter##13764 |daily |or
		only Orc
	step
		goto 76.5,24.5
		.talk Akinos##33405
		..accept A Valiant's Field Training##13765 |daily
		only Orc
	step
		goto 76.4,24.6
		.talk Morah Worgsister##33544
		..accept The Grand Melee##13767 |daily
		..accept At The Enemy's Gates##13856 |daily
		only Orc
	step
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..get Ashwood Brand |q 13762/1
		only Orc
	step
		goto Icecrown,69.1,76.2
		.click Winter Hyacinth##3231
		.collect 4 Winter Hyacinth##45000 |q 13763
		only Orc
	step
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.click Blade of Drak'Mar##8564
		.get Blade of Drak'Mar |q 13763/1
		only Orc
	step
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13764
		only Orc
	step
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13764/1
		only Orc
	step
		goto Icecrown,48.9,71.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13856
		only Orc
	step
		goto 50.1,74.8
		.kill 15 Boneguard Footman##33438|q 13856/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout##33550 |q 13856/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant##33429 |q 13856/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on them to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
		only Orc
	step
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13856
		only Orc
	step
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13765/1
		only Orc
	step
		goto 75.5,24.0
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13767
		only Orc
	step
		goto 75.3,26.0
		.' Talk to the riders on mounts of other Horde races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13767/1
		only Orc
	step
		goto 76.5,24.6
		.talk Mokra the Skullcrusher##33361
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13762
		..turnin A Worthy Weapon##13763
		..turnin The Edge Of Winter##13764
		only Orc
	step
		goto 76.5,24.5
		.talk Akinos##33405
		..turnin A Valiant's Field Training##13765
		only Orc
	step
		goto 76.4,24.6
		.talk Morah Worgsister##33544
		..turnin The Grand Melee##13767
		..turnin At The Enemy's Gates##13856
		only Orc
	// ORC VALIANT RANK DAILY LOOP (END)
	//
	// TROLL VALIANT RANK DAILY LOOP (BEGIN)
	step
		goto 76.0,24.5
		.talk Zul'tore##33372
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13768 |daily |or
		..accept A Worthy Weapon##13769 |daily |or
		..accept The Edge Of Winter##13770 |daily |or
		only Troll
	step
		goto 76.0,24.6
		.talk Shadow Hunter Mezil-kree##33540
		..accept A Valiant's Field Training##13771 |daily
		only Troll
	step
		goto 75.9,24.4
		.talk Gahju##33545
		..accept The Grand Melee##13772 |daily
		..accept At The Enemy's Gates##13857 |daily
		only Troll
	step
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..' Tell her you are glad to help
		.get Ashwood Brand |q 13768/1
		only Troll
	step
		goto Icecrown,69.1,76.2
		.click Winter Hyacinth##3231
		.collect 4 Winter Hyacinth##45000 |q 13769
		only Troll
	step
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.click Blade of Drak'Mar##8564
		.get Blade of Drak'Mar |q 13769/1
		only Troll
	step
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13770
		only Troll
	step
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13770/1
		only Troll
	step
		goto Icecrown,48.9,71.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13857
		only Troll
	step
		goto 50.1,74.8
		.kill 15 Boneguard Footman##33438|q 13857/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout##33550 |q 13857/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant##33429 |q 13857/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
		only Troll
	step
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13857
		only Troll
	step
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13771/1
		only Troll
	step
		goto 75.6,23.8
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13772
		only Troll
	step
		goto 75.3,26.0
		.' Talk to the riders on mounts of other Horde races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13772/1
		only Troll
	step
		goto 76.0,24.5
		.talk Zul'tore##33372
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13768
		..turnin A Worthy Weapon##13769
		..turnin The Edge Of Winter##13770
		only Troll
	step
		goto 76.0,24.6
		.talk Shadow Hunter Mezil-kree##33540
		..turnin A Valiant's Field Training##13771
		only Troll
	step
		goto 75.9,24.4
		.talk Gahju##33545
		..turnin The Grand Melee##13772
		..turnin At The Enemy's Gates##13857
		only Troll
	// TROLL VALIANT RANK DAILY LOOP (END)
	//
	// TAUREN VALIANT RANK DAILY LOOP (BEGIN)
	step
		goto 76.2,24.6
		.talk Runok Wildmane##33403
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13773 |daily |or
		..accept A Worthy Weapon##13774 |daily |or
		..accept The Edge Of Winter##13775 |daily |or
		only Tauren
	step
		goto 76.3,24.7
		.talk Dern Ragetotem##33539
		..accept A Valiant's Field Training##13776 |daily
		only Tauren
	step
		goto 76.1,24.6
		.talk Anka Clawhoof##33549
		..accept The Grand Melee##13777 |daily
		..accept At The Enemy's Gates##13858 |daily
		only Tauren
	step
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..' Tell her you are glad to help
		.get Ashwood Brand |q 13773/1
		only Tauren
	step
		goto Icecrown,69.1,76.2
		.click Winter Hyacinth##3231
		.collect 4 Winter Hyacinth##45000 |q 13774
		only Tauren
	step
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.click Blade of Drak'Mar##8564
		.get Blade of Drak'Mar |q 13774/1
		only Tauren
	step
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13775
		only Tauren
	step
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13775/1
		only Tauren
	step
		goto Icecrown,48.9,71.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13858
		only Tauren
	step
		goto 50.1,74.8
		.kill 15 Boneguard Footman##33438 |q 13858/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout##33550 |q 13858/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant##33429 |q 13858/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
		only Tauren
	step
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13858
		only Tauren
	step
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13776/1
		only Tauren
	step
		goto 75.5,24.3
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13777
		only Tauren
	step
		goto 75.3,26.0
		.' Talk to the riders on mounts of other Horde races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13777/1
		only Tauren
	step
		goto 76.2,24.6
		.talk Runok Wildmane##33403
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13773
		..turnin A Worthy Weapon##13774
		..turnin The Edge Of Winter##13775
		only Tauren
	step
		goto 76.3,24.7
		.talk Dern Ragetotem##33539
		..turnin A Valiant's Field Training##13776
		only Tauren
	step
		goto 76.1,24.6
		.talk Anka Clawhoof##33549
		..turnin The Grand Melee##13777
		..turnin At The Enemy's Gates##13858
		only Tauren
	// TAUREN VALIANT RANK DAILY LOOP (END)
	//
	// SCOURGE VALIANT RANK DAILY LOOP (BEGIN)
	step
		goto 76.5,24.2
		.talk Deathstalker Visceri##33373
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13778 |daily |or
		..accept A Worthy Weapon##13779 |daily |or
		..accept The Edge Of Winter##13780 |daily |or
		only Scourge
	step
		goto 76.6,24.1
		.talk Sarah Chalke##33541
		..accept A Valiant's Field Training##13781 |daily
		only Scourge
	step
		goto 76.5,24.3
		.talk Handler Dretch##33547
		..accept The Grand Melee##13782 |daily
		..accept At The Enemy's Gates##13860 |daily
		only Scourge
	step
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..' Tell her you're glad to help
		.get Ashwood Brand |q 13778/1
		only Scourge
	step
		goto Icecrown,69.1,76.2
		.click Winter Hyacinth##3231
		.collect 4 Winter Hyacinth##45000 |q 13779
		only Scourge
	step
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.click Blade of Drak'Mar##8564
		.get Blade of Drak'Mar |q 13779/1
		only Scourge
	step
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13780
		only Scourge
	step
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13780/1
		only Scourge
	step
		goto Icecrown,48.9,71.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13860
		only Scourge
	step
		goto 50.1,74.8
		.kill 15 Boneguard Footman##33438|q 13860/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout##33550 |q 13860/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant##33429 |q 13860/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
		only Scourge
	step
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13860
		only Scourge
	step
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13781/1
		only Scourge
	step
		goto 75.6,23.9
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13782
		only Scourge
	step
		goto 75.3,26.0
		.' Talk to the riders on mounts of other Horde races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13782/1
		only Scourge
	step
		goto 76.5,24.2
		.talk Deathstalker Visceri##33373
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13778
		..turnin A Worthy Weapon##13779
		..turnin The Edge Of Winter##13780
		only Scourge
	step
		goto 76.6,24.1
		.talk Sarah Chalke##33541
		..turnin A Valiant's Field Training##13781
		only Scourge
	step
		goto 76.5,24.3
		.talk Handler Dretch##33547
		..turnin The Grand Melee##13782
		..turnin At The Enemy's Gates##13860
		only Scourge
	// SCOURGE VALIANT RANK DAILY LOOP (END)
	//
	// BLOOD ELF VALIANT RANK DAILY LOOP (BEGIN)
	step
		goto 76.5,23.9
		.talk Eressea Dawnsinger##33379
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..accept A Blade Fit For A Champion##13783 |daily |or
		..accept A Worthy Weapon##13784 |daily |or
		..accept The Edge Of Winter##13785 |daily |or
		only BloodElf
	step
		goto 76.4,23.8
		.talk Kethiel Sunlance##33538
		..accept A Valiant's Field Training##13786 |daily
		only BloodElf
	step
		goto 76.5,23.9
		.talk Aneera Thuron##33548
		..accept The Grand Melee##13787 |daily
		..accept At The Enemy's Gates##13859 |daily
		only BloodElf
	step
		goto Grizzly Hills,61.2,50.3
		.' Use the Warts-B-Gone Lip Balm|use Warts-B-Gone Lip Balm##44986
		.' Target Lake Frogs
		.' Use the emote /kiss on the Lake Frogs
		.' Repeat this process until one of the Lake Frogs turns into the Maiden of Ashwood Lake
		.talk Maiden of Ashwood Lake##33220
		..' Tell her you are glad to help
		.get Ashwood Brand |q 13783/1
		only BloodElf
	step
		goto Icecrown,69.1,76.2
		.click Winter Hyacinth##3231
		.collect 4 Winter Hyacinth##45000 |q 13784
		only BloodElf
	step
		goto Dragonblight,93.2,26.1
		.' Use Winter Hyacinths in the water here|use Winter Hyacinth##45000
		.' Listen to the Maiden of Drak'Mar
		.click Blade of Drak'Mar##8564
		.get Blade of Drak'Mar |q 13784/1
		only BloodElf
	step
		goto Crystalsong Forest,54.5,74.9
		.from Lord Everblaze##33289
		.collect 1 Everburning Ember##45005 |q 13785
		only BloodElf
	step
		goto Howling Fjord,42.2,19.7
		.'Use the Everburning Ember on Maiden of Winter's Breath|use Everburning Ember##45005
		.get Winter's Edge |q 13785/1
		only BloodElf
	step
		goto Icecrown,48.9,71.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Campaign Warhorse|invehicle |q 13859
		only BloodElf
	step
		goto 50.1,74.8
		.kill 15 Boneguard Footman##33438|q 13859/1 |tip They are skeletons that walk around this area.  You can simply run over these with your horse, you don't need to target or attack them at all.
		.kill 10 Boneguard Scout##33550 |q 13859/2 |tip They are gargoyles that fly around this area.  Use your Shield-Breaker ability on them, while also using your Defend ability to keep your shield maxed at 3 charges.
		.kill 3 Boneguard Lieutenant##33429 |q 13859/3 |tip They ride horses around this area.  Use your Shield-Breaker ability on then to bring down their shields, then use your Charge ability on them.  Also, keep your shield maxed at 3 by using your Defend ability.  If they get too close, you can also use your Thrust ability to do a good amount of damage, but just remember to keep your shield maxed at 3 charges.
		only BloodElf
	step
		goto 49.1,71.4
		'Click the red arrow on your vehicle hot bar to stop riding the horse |outvehicle |q 13859
		only BloodElf
	step
		goto 44.3,54.2
		.kill 10 Converted Hero##32255 |q 13786/1
		only BloodElf
	step
		goto 75.5,24.1
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13787
		only BloodElf
	step
		goto 75.3,26.0
		.' Talk to the riders on mounts of other Horde races
		.' Tell them you are ready to fight!
		.' Fight and defeat them|tip Use your Defend ability to keep your shield maxed at 3 charges, then use your Shield-Breaker to lower the Valiants' shields, then use your Charge ability on them.  If they get close, use your Thrust ability, then use your Charge ability when they run away to get into Charge range.  Just remember to keep your shield maxed at 3 charges.
		.get 3 Mark of the Valiant |q 13787/1
		only BloodElf
	step
		goto 76.5,23.9
		.talk Eressea Dawnsinger##33379
		.' You will only be able to accept, and turn in, 1 of these 3 daily quests per day:
		..turnin A Blade Fit For A Champion##13783
		..turnin A Worthy Weapon##13784
		..turnin The Edge Of Winter##13785
		only BloodElf
	step
		goto 76.4,23.8
		.talk Kethiel Sunlance##33538
		..turnin A Valiant's Field Training##13786
		only BloodElf
	step
		goto 76.5,23.9
		.talk Aneera Thuron##33548
		..turnin The Grand Melee##13787
		..turnin At The Enemy's Gates##13859
		only BloodElf
	// BLOOF ELF VALIANT RANK DAILY LOOP (END)
	step
		'Make sure you have 25 Valiant Seals:
		.get 25 Valiant's Seal |q 13697/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Orc
		.get 25 Valiant's Seal |q 13719/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Troll
		.get 25 Valiant's Seal |q 13720/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Tauren
		.get 25 Valiant's Seal |q 13721/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only Scourge
		.get 25 Valiant's Seal |q 13722/1 |tip If you do not have 25 Valiant's Seals, keep repeating the daily quests in this guide section.  It takes 5 days of doing these Valiant Rank dailies to get 25 Valiant's Seals. |only BloodElf
	step
		goto 76.5,24.6
		.talk Mokra the Skullcrusher##33361
		..turnin The Valiant's Charge##13697
		..accept The Valiant's Challenge##13726
		only Orc
	step
		goto 76.0,24.5
		.talk Zul'tore##33372
		..turnin The Valiant's Charge##13719
		..accept The Valiant's Challenge##13727
		only Troll
	step
		goto 76.2,24.6
		.talk Runok Wildmane##33403
		..turnin The Valiant's Charge##13720
		..accept The Valiant's Challenge##13728
		only Tauren
	step
		goto 76.5,24.2
		.talk Deathstalker Visceri##33373
		..turnin The Valiant's Charge##13721
		..accept The Valiant's Challenge##13729
		only Scourge
	step
		goto 76.5,23.9
		.talk Eressea Dawnsinger##33379
		..turnin The Valiant's Charge##13722
		..accept The Valiant's Challenge##13731
		only BloodElf
	step
		goto 72.2,22.5
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Orgrimmar Wolf|invehicle |q 13726
		only Orc
	step
		goto 72.0,22.5
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Darkspear Raptor|invehicle |q 13727
		only Troll
	step
		goto 71.9,22.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Thunder Bluff Kodo|invehicle |q 13728
		only Tauren
	step
		goto 72.1,22.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Forsaken Warhorse|invehicle |q 13729
		only Scourge
	step
		goto 72.2,22.4
		.' Equip the Horde Lance in your bags|use Horde Lance##46070
		.' Click to mount the Stabled Silvermoon Hawkstrider|invehicle |q 13731
		only BloodElf
	step
		goto 68.6,21.0
		.talk Squire Danny##33518
		..' Tell him you are ready to fight!
		.'An Argent Champion runs up on a horse
		.' Use the abilities on your hotbar to defeat the Argent Champion|tip The best strategy to defeat the Argent Champion is to always make sure your shield is up by using your Defend ability.  Make sure your shield is stacked to 3 charges before you begin the fight.  When the fight begins, immediately use your Charge ability on the Argent Champion.  Stay in very close range and spam your Thrust ability.  Remember to keep your shield maxed at 3 charges, also.  Eventually, the Argent Champion will try to run away to get into Charge range.  When he starts to run away, start spamming your Charge ability until you charge him in the back, then get back into melee range and start spamming your Thrust ability again.  Keep repeating this process until he is defeated.
		.' Defeat the Argent Valiant |q 13726/1 |only Orc
		.' Defeat the Argent Valiant |q 13727/1 |only Troll
		.' Defeat the Argent Valiant |q 13728/1 |only Tauren
		.' Defeat the Argent Valiant |q 13729/1 |only Scourge
		.' Defeat the Argent Valiant |q 13731/1 |only BloodElf
	step
		goto 76.5,24.6
		.talk Mokra the Skullcrusher##33361
		..turnin The Valiant's Challenge##13726
		..accept A Champion Rises##13736
		only Orc
	step
		goto 76.0,24.5
		.talk Zul'tore##33372
		..turnin The Valiant's Challenge##13727
		..accept A Champion Rises##13737
		only Troll
	step
		goto 76.2,24.6
		.talk Runok Wildmane##33403
		..turnin The Valiant's Challenge##13728
		..accept A Champion Rises##13738
		only Tauren
	step
		goto 76.5,24.2
		.talk Deathstalker Visceri##33373
		..turnin The Valiant's Challenge##13729
		..accept A Champion Rises##13739
		only Scourge
	step
		goto 76.5,23.9
		.talk Eressea Dawnsinger##33379
		..turnin The Valiant's Challenge##13731
		..accept A Champion Rises##13740
		only BloodElf
	step
		goto 69.7,22.9
		.talk Justicar Mariel Trueheart##33817
		..turnin A Champion Rises##13736 |only Orc
		..turnin A Champion Rises##13737 |only Troll
		..turnin A Champion Rises##13738 |only Tauren
		..turnin A Champion Rises##13739 |only Scourge
		..turnin A Champion Rises##13740 |only BloodElf
		..accept The Scourgebane##13795 |only DeathKnight
		..accept Eadric the Pure##13794 |only !DeathKnight
	step
		goto 73.8,20.1
		.talk Crok Scourgebane##33762
		..turnin The Scourgebane##13795
		only DeathKnight
	step
		goto 70.0,23.4
		.talk Eadric the Pure##33759
		..turnin Eadric the Pure##13794
		only !DeathKnight
]])

ZygorGuidesViewer:RegisterInclude("Shado_Pan_Daily_H",[[
		'In order to begin gaining _Reputation_ with the _Shado-Pan_, you must first become Revered with the _Golden Lotus_.
		.' Click here to work on the Golden Lotus Dailies and gain reputation with them |confirm |next "golden"
		.' Click here to begin working on the Shado-Pan after you have become revered with the Golden Lotus |confirm |next "startshado"
	step
	label golden
		#include "Golden_Lotus_Revered"
	step
	label startshado
		goto Vale of Eternal Blossoms 63.3,21.1
		.talk Kai Kang##64002
		..accept The Shado-Pan##31389
		|only if not completedq(31389)
	step
		goto Townlong Steppes 49.0,70.4
		.talk Ban Bearheart##62304
		..turnin The Shado-Pan##31389
		|only if not completedq(31389)
	step
	label dailies
		goto 49.3,71.0
		'Click here if Master Snowdrift is the questgiver today |next |confirm |modelnpc 63009
		.' He can be found here: [49.5,70.6]
		'Click here if Ban Bearheart is the questgiver today |next "bearheart" |confirm |modelnpc 62304
		.' He can be found here [49.0,70.5]
		'Click here if Ling of the Six Pools is the questgiver today |next "ling" |confirm |modelnpc 63614
		.' She can be found here: [49.0,71.3]
	step
		goto 49.4,70.6
		.talk Master Snowdrift##63009
		..accept The Challenger's Ring: Chao the Voice##31127
		|only if not completedq(31127)
		|only if rep('Shado-Pan')>=Honored
	step
		goto 49.4,70.6
		.talk Master Snowdrift##63009
		..accept The Challenger's Ring: Lao-Chin the Iron Belly##31128
		|only if rep('Shado-Pan')>=Revered
	step
		goto 49.3,72.0
		.talk Lao-Chin the Iron Belly##62978
		.' I'm here to challenge you! |q 31128/1
		|only if havequest(31128)
	step
		goto 50.6,67.8
		.talk Lao-Chin the Iron Belly##63135
		.' All right, let's do this!
		.' Defeat Lao-Chin the Iron Belly |q 31128/2
		|only if havequest(31128)
	step
		goto 49.6,70.5
		.talk Master Snowdrift##63009
		..turnin The Challenger's Ring: Lao-Chin the Iron Belly##31128
		|only if havequest(31128)
	step
		goto 49.7,70.5
		.talk Chao the Voice##62550
		.' Tell her you're here to challenge her! |q 31127/1
		|only if havequest(31127)
	step
		goto 50.1,68.3
		.talk Chao the Voice##63125
		.' Let's do this.
		.' Defeat Chao the Voice |q 31127/2
		|only if havequest(31127)
	step
		goto 49.4,70.6
		.talk Master Snowdrift##63009
		..turnin The Challenger's Ring: Chao the Voice##31127
		|only if havequest(31127)
	step
		goto 49.4,70.6
		.talk Master Snowdrift##63009 |tip You will only be able to accept 4 of the following dailies.
		..accept Assault Fire Camp Gai-Cho##31113 |daily |or 4
		..accept Assault Deadtalker's Plateau##31114 |daily |or 4
		..accept The Enemy of My Enemy... Is Still My Enemy!##31119 |daily |or 4
		..accept Spirit Dust##31116 |daily |or 4 
		..accept The Deadtalker Cipher##31118 |daily |or 4
	step
		'Talk to Chao the Voice or Protector Yi and ask one of them to come with you. They will help you in combat and allow you to turnin your quests outside of this questing hub.|tip Yi patrols so you may need to search for him.
		.' Chao the Voice at [49.7,70.5] |modelnpc 62550
		.' Protector Yi at [49.3,71.3] |modelnpc 62546
		|confirm
		|only if not completedq(31128)
	step
		'Talk to Chao the Voice, Protector Yi or Lao-Chin the Iron Belly and ask one of them to come with you. They will help you in combat and allow you to turn in your quests outside of this questing hub.|tip Yi patrols so you may need to search for him.
		.' Chao the Voice at [49.7,70.5] |modelnpc 62550
		.' Protector Yi at [49.3,71.3] |modelnpc 62546
		.' Lao-Chin the Iron Belly at [49.3,71.9] |modelnpc 62978
		|confirm
		|only if completedq(31128)
	step
		goto 63.4,43.3
		.from Gai-Cho Yaungol##62552+, Gai-Cho Earthtalker##62553+, Gai-Cho Pitchthrower##62608+ |only if havequest(31113)
		.' Kill 16 Gai-Cho Yaungol, Earthtalkers, or Pitchthrowers. |q 31113/1 |only if havequest(31113)
		.click Highly Explosive Yaungol Oil Barrel |only if havequest(31119)
		.collect Highly Explosive Yaungol Oil##84762 |n |tip You can only carry 10 at a time, so you may need to make multiple trips. |only if havequest(31119)
	step
		goto 60.2,48.6
		'Use your Highly Explosive Yaungol Oil to kill as many enemies in this area as you can in 1 hit. |use Highly Explosive Yaungol Oil Barrel##84762
		.from Gai-Cho Boltshooter##62589+, Gai-Cho Cauterizer##62577+, Gai-Cho Gatewatcher##62568+, Kri'thik Aggressor##62572+, Kri'thik Screecher##62602+
		.' Kill 100 Gai-Cho Battledfired Combatants |q 31119/1
		.' If you run out of oil, you can find more here [63.4,43.3]
		|only if havequest(31119)
	step
		goto 51.1,51.8
		.kill 8 Deadtalker Corpsedefiler##62677+ |q 31114/1 |only if havequest(31114)
		.kill Deadtalker Crusher##62844 |q 31114/2 |tip He is elite but with your companion you should be able to defeat him. |only if havequest(31114)
		.from Defiled Spirit##62679 |only if havequest(31116)
		.collect Ancient Spirit Dust##84727 |n |only if havequest(31116)
		.click Defiled Yaungol Remains |only if havequest(31116)
		.' Return 8 Spirits to Their Remains |q 31116/1 |only if havequest(31116)
	step
		goto 51.1,51.8
		.from Deadtalker Crusher##62844+, Deadtalker Corpsedefiler##62677+ |only if havequest(31118)
		.get Ciphered Scroll##84759 |q 31118/1 |only if havequest(31118)
	step
		'Next to you will either be Chao the Voice or Protector Yi:
		.'Talk to Chao the Voice |modelnpc 62550
		.'Talk to Protector Yi |modelnpc 62546
		..turnin Assault Fire Camp Gai-Cho##31113 |daily
		..turnin Assault Deadtalker's Plateau##31114  |daily
		..turnin The Enemy of My Enemy... Is Still My Enemy!##31119 |daily
		..turnin Spirit Dust##31116 |daily
		..turnin The Deadtalker Cipher##31118 |daily
		|only if not completedq(31128)
	step
		'Next to you will either be Chao the Voice, Protector Yi, or Lao-Chin the Iron Belly:
		.'Talk to Chao the Voice |modelnpc 62550
		.'Talk to Protector Yi |modelnpc 62546
		.'Talk to Lao-Chin the Iron Belly |modelnpc 62978
		..turnin Assault Fire Camp Gai-Cho##31113 |daily
		..turnin Assault Deadtalker's Plateau##31114  |daily
		..turnin The Enemy of My Enemy... Is Still My Enemy!##31119 |daily
		..turnin Spirit Dust##31116 |daily
		..turnin The Deadtalker Cipher##31118 |daily
		|only if completedq(31128)
	step
		'Click the Quest Discovered box that displays on the right side of the screen under your minimap
		..accept Uruk!##31117 |daily |or
		..accept Cheng Bo!##31120 |daily |or
	step
		goto 50.4,48.9
		.kill Uruk##62613 |q 31117/1
	step
		goto 60.7,42.1
		.kill Cheng Bo##62554 |q 31120/1
	step
		goto 49.6,70.5
		.talk Master Snowdrift##63009
		..turnin Uruk!##31117 |daily |or
		..turnin Cheng Bo!##31120 |daily |or
		|next "end"
///New questgiver today?
	step
	label bearheart
		goto 49.0,70.4
		.talk Ban Bearheart##62304
		..accept The Challenger's Ring: Snow Blossom##31038
		|only if not completedq(31038)
		|only if rep('Shado-Pan')>=Honored
	step
		goto 49.0,70.4
		.talk Ban Bearheart##62304
		..accept The Challenger's Ring: Yalia Sagewhisper##31104
		|only if rep('Shado-Pan')>=Revered
	step
		goto 48.9,70.1
		.talk Snow Blossom##62380
		.' Ask her to meet in the Challenger's Ring. |q 31038/1
		|only if havequest(31038)
	step
		goto 50.2,67.9
		.talk Snow Blossom##62834
		.' I challenge you!
		.' Defeat Snow Blossom |q 31038/2
		|only if havequest(31038)
	step
		goto 49.0,70.4
		.talk Ban Bearheart##62304
		..turnin The Challenger's Ring: Snow Blossom##31038
		|only if havequest(31038)
	step
		goto 48.9,70.0
		.talk Yalia Sagewhisper##62303
		.' Ask her to meet you in the Challenger's Ring. |q 31104/1
		|only if havequest(31104)
	step
		goto 50.4,67.7
		.talk Yalia Sagewhisper##62850
		.' I challenge you!
		.' Defeat Yalia Sagewhisper |q 31104/2
		|only if havequest(31104)
	step
		goto 49.0,70.4
		.talk Ban Bearheart##62304
		..turnin The Challenger's Ring: Yalia Sagewhisper##31104
		|only if havequest(31104)
	step
		goto 49.0,70.4
		.talk Ban Bearheart##62304
		..accept The Mogu Menace##31105 |daily |or 4
		..accept The Mogu Menace##31106 |daily |or 4
		..accept The Mogu Menace##31039 |daily |or 4
		..accept Bronze Claws##31044 |daily |or 4
		..accept Illusions Of The Past##31045 |daily |or 4
		..accept Grave Consequences##31048 |daily |or 4
		..accept Dark Arts##31043 |daily |or 4
		..accept Onyx Hearts##31042 |daily |or 4
		..accept Born Free##31047 |daily |or 4
		..accept Spiteful Sprites##31040 |daily |or 4
		..accept Egg Rescue!##31041 |daily |or 4
		..accept Little Hatchlings##31046 |daily |or 4
	step
		'Talk to Snow Blossom or Fei Li and ask one of them to come with you. They will help you in combat and allow you to turn in your quests outside of this questing hub.
		.' Snow Blossom at [48.9,70.1] |modelnpc 62380
		.' Fei Li at [48.8,70.2] |modelnpc 62354
		|confirm
		|only if not completedq(31104)
	step
		'Talk to Snow Blossom, Fei Li, or Yalia Sagewhisper and ask one of them to come with you. They will help you in combat and allow you to turn in your quests outside of this questing hub.
		.' Snow Blossom at [48.9,70.1] |modelnpc 62380
		.' Fei Li at [48.8,70.2] |modelnpc 62354
		.' Yalia Sagewhisper at [48.8,70.0] |modelnpc 62303
		|confirm
		|only if completedq(31104)
	step
		goto 28.8,22.4
		.talk Moshu the Arcane##62810
		..accept Through the Portal##31110
		|only if not completedq(31110)
	step
		goto 32.8,25.1
		.clicknpc Ball and Chain##62539 |only if havequest(31047)
		.' Free 6 Wild Cloudriders |q 31047/1 |only if havequest(31047)
		.click Shan'ze Cage |only if havequest(31046)
		.' Free 20 Cloudrider Hatchlings. |q 31046/1 |only if havequest(31046)
		.click Shiny Egg |only if havequest(31041)
		.get 8 Cloudrunner Egg |q 31041/1 |only if havequest(31041)
		|only if havequest(31041) or havequest(31046) or havequest(31047)
	step
		goto 24.4,15.2
		.kill 3 Shan'ze Illusionist##62440+ |q 31045/1|only if havequest(31045)
		.click Shan'ze Tablet |only if havequest(31043)
		.get 8 Shan'ze Tablet |q 31043/1 |only if havequest(31043)
		.click Mogu Burial Urn |only if havequest(31048)
		.kill 24 Shan'ze Ancestor##62285+ |q 31048/1 |only if havequest(31048)
		.from Onyx Stormclaw##62448 |only if havequest(31042)
		.get 4 Onyx Heart |q 31042/1 |only if havequest(31042)
	step
		goto 28.5,18.5
		.from Shan'ze Serpentbinder##62293+, Shan'ze Beastmaster##62530+ |only if havequest(31105) or havequest(31106) or havequest (31039)
		.' Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31105/1 |only if havequest(31105)
		.' Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31106/1 |only if havequest(31106)
		.' Kill 12 Shan'ze Serpentbinders or Beastmasters |q 31039/1 |only if havequest(31039)
		.from Bronze Quilen##62266+ |only if havequest(31044)
		.get 20 Bronze Claw##83153+ |q 31044/1 |only if havequest(31044)
	step
		goto 23.0,19.5
		.from Darkwoods Pixie##62268+, Darkwoods Charmer##62457+
		.' Kill 30 Darkwoods Sprites or Darkwoods Charmers. |q 31040/1
		|only if havequest(31040)
	step
		.from Shan'ze Serpentbinder##62293+, Shan'ze Illusionist##62440+, Shan'ze Ancestor##62285+, Shan'ze Beastmaster##62515+, Darkwoods Charmer##62520
		.get 1000 Ancient Arcane Powder##84102+ |q 31110/1
		|only if havequest(31110)
	step
		'Next to you will either be Fei Li or Snow Blossom
		.talk Fei Li##62354
		.talk Snow Blossom##62380
		..turnin The Mogu Menace##31105 |daily
		..turnin The Mogu Menace##31106 |daily
		..turnin The Mogu Menace##31039 |daily
		..turnin Bronze Claws##31044 |daily
		..turnin Illusions Of The Past##31045 |daily
		..turnin Grave Consequences##31048 |daily
		..turnin Dark Arts##31043 |daily
		..turnin Onyx Hearts##31042 |daily
		..turnin Born Free##31047 |daily
		..turnin Spiteful Sprites##31040 
		..turnin Egg Rescue!##31041 
		..turnin Little Hatchlings##31046 
		..accept When The Dead Speak##31062 |daily |or
		..accept Riding the Storm##31061 |daily |or
		..accept In Sprite Of Everything##31049 |daily |or
		|only if not completedq(31104)
	step
		'Next to you will either be Fei Li, Snow Blossom, or Yalia Sagewhisper
		.talk Fei Li##62354
		.talk Snow Blossom##62380
		.talk Yalia Sagewhisper##62303
		..turnin The Mogu Menace##31105 |daily
		..turnin Bronze Claws##31044 |daily
		..turnin Illusions Of The Past##31045 |daily
		..turnin Grave Consequences##31048 |daily
		..turnin Dark Arts##31043 |daily
		..turnin Onyx Hearts##31042 |daily
		..turnin Born Free##31047 |daily
		..turnin Spiteful Sprites##31040 
		..turnin Egg Rescue!##31041 
		..turnin Little Hatchlings##31046 
		..accept When The Dead Speak##31062 |daily |or
		..accept Riding the Storm##31061 |daily |or
		..accept In Sprite Of Everything##31049 |daily |or
		|only if completedq(31104)
	step
		goto 30.9,12.6
		.' Use the Bronze Claws on the Cloudrunners around this area. |use Bronze Claws##83134
		.from Shan'ze Cloudrunner##62584 
		.' Free 8 Shan'ze Cloudriders |q 31061/1
		|only if havequest(31061)
	step
		'Click the Leave Vehicle button. |outvehicle
		|only if havequest(31061)
	step
		'Enter the tunnel here. |goto 20.3,15.8 <5 |c
		|only if havequest(31049)
	step
		goto 19.5,13.8
		.kill Darkwoods Faerie##62522 |q 31049/1
		|only if havequest(31049)
	step
		'Leave the tunnel here. |goto 20.3,15.8 <5 |c
		|only if havequest(31049)
	step
		goto 32.3,9.5
		.kill Shan'ze Deathspeaker##62559 |q 31062/1 |tip Make sure you destroy his Spirit Gems, if you let them pile up they can overwhelm you.
		|only if havequest(31062)
	step
		goto 28.8,22.4
		.talk Moshu the Arcane##62810
		..turnin Through the Portal##31110
		|only if havequest(31110)
	step
		goto 49.0,70.4
		.talk Ban Bearheart##62304
		..turnin When The Dead Speak##31062 
		..turnin Riding the Storm##31061 
		..turnin In Sprite Of Everything##31049 
		|next "end"
/// New Questigver today
	step
	label ling
		goto 49.0,71.3
		.talk Ling of the Six Pools##63614
		..accept The Challenger's Ring: Hawkmaster Nurong##31220
		|only if not completedq(31220)
		|only if rep('Shado-Pan')>=Honored
	step
		goto 49.0,71.3
		.talk Ling of the Six Pools##63614
		..accept The Challenger's Ring: Tenwu of the Red Smoke##31221
		|only if rep('Shado-Pan')>=Revered 
	step
		goto 48.9,71.2
		.talk Tenwu of the Red Smoke##63616
		.' Ask him to meet you in the Challenger's Ring. |q 31221/1
		|only if havequest(31221)
	step
		goto 50.6,68.5
		.talk Tenwu of the Red Smoke##64471
		.' Let's see if you can back that talk up.
		.' Defeat Temwu of the Red Smoke |q 31221/2
		|only if havequest(31221)
	step
		goto 49.0,71.3
		.talk Ling of the Six Pools##63614
		..turnin The Challenger's Ring: Tenwu of the Red Smoke##31221
		|only if havequest(31221)
	step
		goto 49.0,70.9
		.talk Hawkmaster Nurong##63618
		.' Ask him to meet you in the Challenger's Ring. |q 31220/1
		|only if havequest(31220)
	step
		goto 50.7,68.2
		.talk Hawkmaster Nurong##64470
		.' Let's go!
		.' Defeat Hawkmaster Nurong |q 31220/2
		|only if havequest(31220)
	step
		goto 49.0,71.3
		.talk Ling of the Six Pools##63614
		..turnin The Challenger's Ring: Hawkmaster Nurong##31220
		|only if havequest(31220)
	step
		goto 49.0,71.3
		.talk Ling of the Six Pools##63614
		..accept Sra'vess Wetwork##31196 |daily |or 4
		..accept The Bigger They Come...##31197 |daily |or 4
		..accept A Morale Victory##31198 |daily |or 4
		..accept Destroy the Siege Weapons!##31199 |daily |or 4
		..accept Fumigation##31200 |daily |or 4
		..accept Friends, Not Food!##31201 |daily |or 4
	step
		'Talk to Hawkmaster Nurong or Taoshi and ask one of them to come with you. They will help you in combat and allow you to turn in your quests outside of this questing hub.
		'Hawkmaster Nurong at [48.7,71.2] |modelnpc 63618
		'Taoshi at [48.7,71.0] |modelnpc 63617
		|confirm
		|only if not completedq(31221)
	step
		'Talk to Hawkmaster Nurong, Taoshi, or Tenwu of the Red Smoke and ask one of them to come with you. They will help you in combat and allow you to turn in your quests outside of this questing hub.
		'Hawkmaster Nurong at [48.7,71.2] |modelnpc 63618
		'Taoshi at [48.7,71.0] |modelnpc 63617
		'Tenwu of the Red Smoke [48.9,71.2] |modelnpc 63616
		|confirm
		|only if completedq(31221)
	step
		goto 48.7,71.1
		.talk Ku-Mo##65341
		..accept Seeking Father##30933
		.' If this quest is unavailable, click here. |confirm
		|only if not completedq(30933)
	step
		goto 27.5,54.6
		.click Sra'thik Siege Weapon
		.' Small Southern Siege Weapon destroyed |q 31199/2
		|only if havequest(31199)
	step
		goto 25.8,53.8
		.click Sra'thik Siege Weapon
		.' Large Southern Siege Weapon destroyed |q 31199/1
		|only if havequest(31199)
	step
		goto 23.5,55.5
		.click Sra'thik Idol
		.' Southern Idol destroyed |q 31198/1
		|only if havequest(31198)
	step
		goto 21.5,49.2
		.click Sra'thik Idol
		.' Central Idol destroyed |q 31198/3
		|only if havequest(31198)
	step
		goto 27.2,41.2
		.click Sra'thik Siege Weapon
		.' Large Northern Siege Weapon destroyed |q 31199/3
		|only if havequest(31199)
	step
		goto 26.2,39.8
		.click Sra'thik Siege Weapon
		.' Small Northern Siege Weapon destroyed |q 31199/4
		|only if havequest(31199)
	step
		goto 27.8,41.9
		.click Sra'thik Idol
		.' Eastern Idol destroyed |q 31198/4
		|only if havequest(31198)
	step
		goto 23.6,44.7 
		'Use the Bag of Shado-Pan Gas Bombs at this location. |use Bag of Shado-Pan Gas Bombs##86532
		.' Egg Chamber bombed |q 31200/3
		|only if havequest(31200)
	step
		goto 22.0,41.6 
		'Use the Bag of Shado-Pan Gas Bombs at this location. |use Bag of Shado-Pan Gas Bombs##86532
		.' Torture Cell bombed |q 31200/4
		|only if havequest(31200)
	step
		goto 21.2,43.2 
		'Use the Bag of Shado-Pan Gas Bombs at this location. |use Bag of Shado-Pan Gas Bombs##86532
		.' Slaughtering Pit bombed |q 31200/5
		|only if havequest(31200)
	step
		goto 21.0,45.9 
		'Use the Bag of Shado-Pan Gas Bombs at this location. |use Bag of Shado-Pan Gas Bombs##86532
		.' Amber Vault bombed |q 31200/1
		|only if havequest(31200)
	step
		goto 16.2,45.8
		.click Sra'thik Idol
		.' Western Idol destroyed |q 31198/2
		|only if havequest(31198)
	step
		goto 17.6,58.0
		.talk Shado-Pan Trainee##64459
		.' Tell them "No you're not!"
		.' Shado-Pan Trainee at Southern Feeding Pit freed. |q 31201/3
		|only if havequest(31201)
	step
		goto 17.4,57.0
		.talk Shado-Pan Trainee##64460
		.' Tell them "No you're not!"
		.' Shado-Pan Trainee at Southern Feeding Pit freed. |q 31201/2
		|only if havequest(31201)
	step
		goto 17.4,57.0
		.talk Sentinel Ku-Yao##61694
		.' Tell him his son has been looking for him.
		.' Search for Sentinel Ku-Yao. |q 30933/1
		|only if havequest(30933)
	step
		goto 18.0,53.5
		.talk Shado-Pan Trainee##64461
		.' Tell them "No you're not!"
		.' Shado-Pan Trainee at Southern Feeding Pit freed. |q 31201/1
		|only if havequest(31201)
	step
		goto 23.9,47.3
		'Use the Bag of Shado-Pan Gas Bombs at this location. |use Bag of Shado-Pan Gas Bombs##86532
		.' Nutriment Cell bombed |q 31200/2
		|only if havequest(31200)
	step
		'Make sure you have done the following around Sra'vess:
		.from Sra'thik Mutilator##63678+, Sra'thik Cacophyte##63680+, Sra'thik Drone##63677+, Sra'thik Regenerator##63681+, Sra'thik Swiftwing##63683+ |only if havequest(31196)
		.' Kill 15 Lesser Sra'thik mantid. |q 31196/1 |only if havequest(31196)
		.from Sra'thik Swarm-Leader##63685+, Sra'thik Vessguard##63686+, Sra'thik Will-Breaker##63684+, Sra'thik Deathmixer##63688+ |only if havequest(31197)
		.' Kill 4 Greater Sra'thik mantid. |q 31197/1 |only if havequest(31197)
	step
		'Next to you is either Hawkmaster Nurong or Taoshi
		.talk Taoshi##63617
		.talk to Hawkmaster Nurong##63618
		..turnin Sra'vess Wetwork##31196 |daily
		..turnin The Bigger They Come...##31197 |daily
		..turnin A Morale Victory##31198 |daily
		..turnin Destroy the Siege Weapons!##31199 |daily
		..turnin Fumigation##31200 |daily
		..turnin Friends, Not Food!##31201 |daily 
		|only if not completedq(31221)
	step
		'Next to you is either Hawkmaster Nurong, Taoshi, or Tenwu.
		.'Talk to Taoshi |modelnpc 63617
		.'Talk to Hawkmaster Nurong |modelnpc 63618
		.'Talk to Tenwu of the Red Smoke |modelnpc 63616
		..turnin Sra'vess Wetwork##31196 |daily
		..turnin The Bigger They Come...##31197 |daily
		..turnin A Morale Victory##31198 |daily
		..turnin Destroy the Siege Weapons!##31199 |daily
		..turnin Fumigation##31200 |daily
		..turnin Friends, Not Food!##31201 |daily 
		|only if completedq(31221)
	step
		'Click the Quest Discovered box that displays on the right side of the screen under your minimap
		..accept Target of Opportunity: Sra'thik Hivelord##31204 |daily |or
		..accept Target of Opportunity: Sra'thik Swarmlord##31203 |daily |or
	step
		goto 16.4,40.9
		.kill Sra'thik Swarmlord##63693 |q 31203/1
		|only if havequest(31203)
	step
		'Enter the building here. |goto 27.1,44.1 <5 |c
		|only if havequest(31204)
	step
		goto 24.3,44.0
		.kill Sra'thik Hivelord##63694 |q 31204/1
		|only if havequest(31204)
	step
		'Leave the building. |goto 27.1,44.1 <5 |c
		|only if havequest(31204)
	step
		goto 48.7,71.1
		.talk Ku-Mo##65341
		..turnin Seeking Father##30933
		|only if havequest(30933)
	step
		goto 49.0,71.4
		.talk Ling of the Six Pools##63614
		..turnin Target of Opportunity: Sra'thik Hivelord##31204 |daily |or
		..turnin Target of Opportunity: Sra'thik Swarmlord##31203 |daily |or
		|next "end"
/// Exalted Reputation
	step
	label end
		goto 48.8,70.6
		.talk Rushi the Fox##64595
		.buy 1 Grand Commendation of the Shado-Pan##93220
		.' Use the Commendation of the Shado-Pan you just purchased. |use Grand Commendation of the Shado-Pan##93220
		.' If you have already purchased this (either on this or another character), click here. |confirm
		|only if rep("Shado-Pan")>=Revered
	step
		goto 49.4,70.6
		.talk Master Snowdrift##63009
		..accept Mogu Incursions##31266
		|only if rep('Shado-Pan')==Exalted and not completedq(31266)
	step
		goto 48.8,58.6
		.kill Shan'ze Spymaster##63888 |q 31266/1
		|only if rep('Shado-Pan')==Exalted and not completedq(31266)
	step
		goto 49.4,70.6
		.talk Master Snowdrift##63009
		..turnin Mogu Incursions##31266
		..accept Surprise Attack!##31277
		|only if rep('Shado-Pan')==Exalted and not completedq(31277)
	step
		goto 42.6,63.9
		.talk Ban Bearheart##63908
		.' Tell him "Let's go".
		.' Join the battle of Niuzao Temple |q 31277/1
		|only if havequest(31277)
	step
		goto 41.3,60.0
		'Wait for the dialogue to end and fight off the invasion.
		.from Shan'ze Brutalizer##63933+
		.from Hei Feng##63920 |tip When he casts Deep Breath step behind him.
		.' Defeat the Mogu Invasion |q 31277/2
		|only if havequest(31277) 
	step
		goto 49.2,71.0
		.talk Ban Bearheart##62304
		..turnin Surprise Attack!##31277
		|only if havequest(31277)
	step
		'You have reached the end of this daily guide.
		.' Click here to return to the start of the dailies. |next "dailies" |confirm
]])

ZygorGuidesViewer:RegisterInclude("Marista_Hub",[[
	step
		goto Krasarang Wilds 52.4,76.6
		.talk Nan-Po##60441
		.fpath Marista
	step
		goto 51.7,75.3
		.talk Tony Tuna##60182
		..accept Particular Plumage##30667
	step
		goto 51.5,76.9
		.talk Jay Cloudfall##60173
		..accept Sudden, Unexpected Crocolisk Aggression##30666
	step
		goto 46.4,68.6
		.from Crimson Lory##60198+
		.get 6 Crimson Tailfeather##80678+ |q 30667/2
		.from Emerald Lory##60200+
		.get 6 Emerald Tailfeather##80677+ |q 30667/1
		.from Dusky Lory##60196+
		.get 6 Dusky Tailfeather##80679+ |q 30667/3
 		.from Mortbreath Skulker##60202+, Mortbreath Snapper##60201+
 		.' Kill 8 Mortbreath crocolisk |q 30666/1
	step
		goto 51.7,75.3
		.talk Tony Tuna##60182
		..turnin Particular Plumage##30667
	step
		goto 51.5,76.9
		.talk Jay Cloudfall##60173
		..turnin Sudden, Unexpected Crocolisk Aggression##30666
		..accept Build Your Own Raft##30668
	step
		goto 52.3,77.9
		.click Tough Kelp
		.get Tough Kelp##80804 |q 30668/2
	step
		goto 52.4,76.2
		.click Spare Plank
		.get 4 Spare Plank##80685 |q 30668/1
	step
		goto 51.5,76.9
		.talk Jay Cloudfall##60173
		..turnin Build Your Own Raft##30668
		..accept The Lorewalker on the Lake##30669
	step
		goto 51.7,76.6
		.click Your Raft
		.' Pick up your raft |q 30669/1
	step
		goto 46.0,78.9
		.talk Wise Ana Wu##60139
		..turnin The Lorewalker on the Lake##30669
		..accept Wisdom Has A Price##30671
		..accept Misery##30691
	step
		.' Go underwater and enter the cave |goto 46.0,79.9 <5 |c
	step
		goto 46.2,83.5
		.from Nahassa##60203+ |tip Nahassa will use an ability called Feverish Deathbite that will cause you to hallucinate many more crocolisks have spawned, they aren't really there so don't panic.
		.' Put Nahassa out of his misery |q 30691/1
	step
		'Click the Complete Quest box that displays on the right side of the screen under your minimap
		..turnin Misery##30691
	step
		.' Exit the cave |goto 46.0,79.9 <5 |c
	step
		goto 46.0,79.0
		.from Great Grey Shark##60204+, Nayeli Hammerhead##60432+
		.get 5 Shark Fillet##80810+ |q 30671/1
	step
		goto 46.0,78.9
		.talk Wise Ana Wu##60139
		..turnin Wisdom Has A Price##30671
		..accept Balance##30672
	step
		goto 45.1,84.9
		'Run over one of the piles of fish along the beach.
		'Click the Quest Discovered box that displays on the right side of the screen under your minimap
		..accept Balance Without Violence##30674
	step
		.from Unga Fish-Getter##60299+
		.collect 1 Confusing Treasure Map##80827 |n
		.' Click the Confusing Treasure Map in your bags |use Confusing Treasure Map##80827
		..accept Buried Hozen Treasure##30675
	step
		goto 46.1,86.7
		.clicknpc Flailing Carp |tip You can find these all along the beach
		.' Throw 6 Flailing Carp back into the water |q 30674/1
		.kill 10 Unga Fish-Getter##60299+ |q 30672/1
		.click Lump of Sand
		.get Buried Hozen Treasure##80817 |q 30675/1
	step
		'Click the Complete Quest box that displays on the right side of the screen under your minimap
		..turnin Balance Without Violence##30674
		..turnin Buried Hozen Treasure##30675
	step
		goto 51.5,76.8
		.talk Jay Cloudfall##60173
		..turnin Balance##30672
	step
		goto Krasarang Wilds 29.7,39.0
		.talk Tired Shushen##58278
		..accept Thieving Raiders##30168
		..accept Raid Leader Slovan##30169
	step
		goto 31.8,29.0
		.kill Slovan##58285 |q 30169/1
		.from Riverblade Flesh-hunter##58274
		.get 5 Pillaged Jinyu Loot##78958 |q 30168/1
	step
		goto Krasarang Wilds 29.7,39.1
		.talk Tired Shushen##58278
		..turnin Thieving Raiders##30168
		..turnin Raid Leader Slovan##30169
	step
		goto 24.6,39.2
		.clicknpc Dawnchaser Captive##58608
		.' Rescue 8 Captives |q 30163/1
		.kill 8 Korjan Reclaimer##58614+ |q 30229/1
		.click Mogu Artifact
		.get 10 Mogu Artifact##79120+ |q 30230/1
	step
		goto 28.8,50.6
		.talk Kang Bramblestaff##56112
		..turnin Re-Reclaim##30230
	step
		goto 28.7,50.9
		.talk Kor Bloodtusk##58114
		..turnin For the Tribe##30163
		..turnin The Greater Danger##30229
	step
		goto 29.1,51.1
		.talk Ambassador Han##58630
		..accept The Mantid##30175
	step
		goto 16.0,39.8
		.talk Sunwalker Dezco##58607
		..accept The Stoneplow Convoy##30164
	step
		goto 15.3,35.3
		.clicknpc Stoneplow Envoy##58955
		.' Save 7 Stoneplow Envoy |q 30164/1
		.from Ik'thallik Precursor##58367+, Ik'thallik Vanguard##58368+
		.' Kill 10 Ik'thallik Mantid |q 30175/1
	step
		goto 16.0,39.8
		.talk Sunwalker Dezco##58607
		..turnin The Stoneplow Convoy##30164
	step
		goto 15.7,39.7
		.talk Ambassador Len##58954
		..turnin The Mantid##30175
	step
		goto 16.0,39.8
		.talk Sunwalker Dezco##58607
		..accept For Family##30174
	step
		goto 23.6,48.8
		.talk Kor Bloodtusk##58670
		.' Try to free Kor from his bonds
		.kill Groundbreaker Brojai##58224 |q 30174/1 |tip He will summon adds one at a time. They aren't too difficult to kill.
	step
		goto 28.9,50.8
		.talk Sunwalker Dezco##58607
		..turnin For Family##30174
		..accept Warn Stoneplow##30241
	step
		goto Valley of the Four Winds 19.5,56.8
		.talk Watch Commander Loon Mai##56720
		..turnin Warn Stoneplow##30241
	step
		goto 18.1,55.9
		.talk Mudmug##56474
		..accept It Does You No Good In The Keg##30653
	step
		goto Valley of the Four Winds 18.0,56.3
		.talk Watch Commander Loon Mai##56720
		..accept The Swarm Begins##30622
	step
		goto Valley of the Four Winds 18.0,56.5
		.talk Mei Barrelbottom##59855
		..accept The Mantidote##30623
	step
		goto Valley of the Four Winds 17.5,50.2
		.' Deliver beer to Zhu's Wardens |q 30653/1
	step
		goto Valley of the Four Winds 15.2,55.4
		.' Deliver beer to Crane Wing Priests |q 30653/2
	step
		goto Valley of the Four Winds 13.0,56.0
		.' Deliver beer to Tauren Settlers |q 30653/4
	step
		goto Valley of the Four Winds 10.7,55.5
		.' Deliver beer to Shado-Pan |q 30653/3
	step
		.' Click the Complete Quest box that displays on the right side of the screen under your minimap
		..turnin It Does You No Good In The Keg##30653
	step
		goto 13.4,54.6
		.from Ik'thallik Infestor##56721+, Ik'thik Warrior##56722+
		.' Kill 15 Ik'thallik Infestors or Warriors |q 30622/1
		.' Use Ken-Ken's mask on Ik'thik Wing Commanders. |use Ken-Ken's Mask##80337
		.from Manifestation of Fear##59874+ 
		.' Defeat 5 Manifestation of Fear that come out of Ik'thik Wing Commanders. |q 30623/1 
	step
		.' Click the Complete Quest box that displays on the right side of the screen under your minimap
		..turnin The Mantidote##30623
// BUGGED
	step
		goto 11.6,49.5
		.talk Guard Captain Oakenshield##57198
		..turnin The Swarm Begins##30622
		..accept Students No More##30625 /////Currently Bugged
	step
		'The students you are looking for can be at one of four locations fighting one of the quest mobs below. Find the students and kill the follow monsters:
		.'Ik'thallik Tendon-Slicer at [9.5,54.0]
		.kill Ik'thallik Tendon-Slicer##59888 |q 30625/3
		.'Ik'thallik Fearmonger at [9.5,58.2]
		.kill Ik'thallik Fearmonger##59889 |q 30625/4
		.'Ik'thallik Bloodrager at [8.9,54.2]
		.kill Ik'thallik Bloodrager##59887 |q 30625/1
		.'Ik'thik Incubator at [8.9,51.0]
		.kill Ik'thik Incubator##59890 |q 30625/2
	step
		goto 11.6,49.5
		.talk Guard Captain Oakenshield##57198
		..turnin Students No More##30625
		..accept Retreat!##30626
	step
		goto 18.0,56.3
		.talk Watch Commander Loon Mai##56720
		..turnin Retreat!##30626
	step
		goto 17.9,55.7
		.talk Master Bruised Paw##59856
		..accept The Savior of Stoneplow##30627
	step
		goto 18.0,56.7 |n
		.talk Miss Fanny##59857
		.' Tell her "Let's go". |invehicle
	step
		'Use your Unyielding Fist ability to defeat the Mantid Collossus. |tip Use your Unyielding Fist ability when the new icon on your screens flashes orange
		.kill Mantid Colossus##56703 |q 30627/1
	step
		goto 18.0,56.3
		.talk Watch Commander Loon Mai##56720
		..turnin The Savior of Stoneplow##30627
		..accept The Gratitude of Stoneplow##30628
]])
ZygorGuidesViewer:RegisterInclude("August_Celestials",[[
		'In order to begin gaining _Reputation_ with the _August Celestials_, you must first become Revered with the _Golden Lotus_.
		.' Click here to work on the Golden Lotus Dailies and gain reputation with them |confirm |next "golden"
		.' Click here to begin working on the August Celestials after you have become revered with the Golden Lotus |confirm |next "startaug"
	step
	label golden
		#include "Golden_Lotus_Revered"
	step
	label startaug
		goto Vale of Eternal Blossoms 62.8,23.4
		.talk Sage Lotusbloom##64001
		.' The following quests will only be available the first time you are sent to a new area. They are random and Sage Lotusbloom will only have one at a time.
		..accept Challenge At The Temple of the Red Crane##31379 |or |next "crane" |only if not completedq(31379)
		..accept Attack At The Temple of the Jade Serpent##31377  |or |next "serpent" |only if not completedq(31377)
		..accept Defense At Niuzao Temple##31383 |or |next "ox" |only if not completedq(31383)
		..accept Trial At The Temple of the White Tiger##31381 |or |next "tiger" |only if not completedq(31381)
		.' If no quest is available, ask her how you can help the August Celestials today. Then click on whichever spirit needs you today.
		.' Niuzao the Black Ox |confirm |next "ox"
		.' Yu'lon the Jade Serpent |confirm |next "serpent"
		.' Xuen the White Tiger |confirm |next "tiger"
		.' Chi-Ji the Red Crane |confirm |next "crane"
	step
	label crane
		goto Krasarang Wilds 31.3,63.4
		.talk Thelonius##60506
		..turnin Challenge At The Temple of the Red Crane##31379
		|only if not completedq(31379)
	step
		goto 31.3,63.4
		.talk Thelonius##60506
		..accept Students of Chi-Ji##30718 |daily
		..accept Champion of Chi-Ji##30740 |daily |only if achieved(7287)
	step
		goto 31.3,63.6
		.talk Yan Quillpaw##60529
		..accept Gifts of the Great Crane##30717 |daily
	step
		goto 31.3,63.6
		.talk Kuo-Na Quillpaw##60528
		..accept Chasing Hope##30716 |daily
	step
		goto 34.6,82.0
		.talk Champion of Chi-Ji##60546
		.' Let's fight!
		.' Defeat a Champion of Chi-Ji |q 30740/1
		|only if havequest(30740)
	step
		goto 31.2,73.9
		.from 10 Student of Chi-Ji##60601+
		.' Duel 10 Students of Chi-Ji |q 30718/1
		.click Cerulean Gift of the Crane
		.click Crimson Gift of the Crane
		.click Bronze Gift of the Crane
		.get 10 Gift of the Great Crane##80938+ |q 30717/1
		.' Find 3 Spirits of the Crane |q 30716/1 |tip They look like stealthed birds roaming around the isle in set paths. Run into them.
	step
		goto 31.3,63.6
		.talk Kuo-Na Quillpaw##60528
		..turnin Chasing Hope##30716 |daily
	step
		goto 31.3,63.6
		.talk Yan Quillpaw##60529
		..turnin Gifts of the Great Crane##30717 |daily
	step
		goto 31.3,63.4
		.talk Thelonius##60506
		..turnin Students of Chi-Ji##30718 |daily
		..accept Ellia Ravenmane##30725 |daily |or
		..accept Minh Do-Tan##30726 |daily |or
		..accept Ellia Ravenmane: Rematch##30727 |daily |or
		..accept Fat Long-Fat##30728 |daily |or
		..accept Julia Bates##30729 |daily |or
		..accept Dextrous Izissha##30730 |daily |or
		..accept Kuo-Na Quillpaw##30731 |daily |or
		..accept Ellia Ravenmane: Revenge##30732 |daily |or
		..accept Tukka-Tuk##30733 |daily |or
		..accept Huck Wheelbarrow##30734 |daily |or
		..accept Mindel Sunspeaker##30735 |daily |or
		..accept Yan Quillpaw##30736 |daily |or
		..accept Fat Long-Fat: Rematch##30737 |daily |or
		..accept Thelonius##30738 |daily |or
		..accept Ellia Ravenmane: Redemption##30739 |daily |or
		|only if not achieved(7287)
	step
		goto 31.3,63.4
		.talk Thelonius##60506
		..turnin Students of Chi-Ji##30718 |daily
		..turnin Champion of Chi-Ji##30740 |daily
		|only if achieved(7287)
		|next "end"
	step
		goto 32.0,70.7
		.talk Fat Long-Fat##60534 |tip He is on the very top of this building.
		.' Let's fight!
		.' Defeat Fat Long-Fat |q 30728/1
	step
		goto 31.8,71.2
		.talk Ellia Ravenmane##60530
		.' Let's fight!
		.' Defeat Ellia Ravenmane |q 30725/1
	step
		goto 32.1,69.9
		.talk Mindel Sunspeaker##60541
		.' Let's fight!
		.' Defeat Mindel Sunspeaker |q 30735/1
	step
		goto 32.0,76.5
		.talk Minh Do-Tan##60532
		.' Let's fight!
		.' Defeat Minh Do-Tan |q 30726/1
	step
		goto 34.1,75.1
		.talk Tukka-Tuk##60539
		.' Let's fight!
		.' Defeat Tukka-Tuk |q 30733/1
	step
		goto 36.4,75.6
		.talk Ellia Ravenmane##60545
		.' Let's fight!
		.' Defeat Ellia Ravenmane |q 30739/1
	step
		goto 31.7,80.3
		.talk Dextrous Izissha##60536
		.' Let's fight!
		.' Defeat Dextrous Izissha |q 30730/1
	step
		goto 34.8,82.6
		.talk Fat Long-Fat##60543
		.' Let's fight!
		.' Defeat Fat Long-Fat |q 30737/1
	step
		goto 36.6,74.8
		.talk Kuo-Na Quillpaw##60537
		.' Let's fight!
		.' Defeat Kuo-Na Quillpaw |q 30731/1
	step
		goto 35.2,75.1
		.talk Ellia Ravenmane##60533
		.' Let's fight!
		.' Defeat Ellia Ravenmane |q 30727/1
	step
		goto 28.9,75.5
		.talk Julia Bates##60535
		.' Let's fight!
		.' Defeat Julia Bates |q 30729/1
	step
		goto 27.9,70.3
		.talk Huck Wheelbarrow##60540
		.' Let's fight!
		.' Defeat Huck Wheelbarrow |q 30734/1
	step
		goto 36.5,76.2
		.talk Yan Quillpaw##60542
		.' Let's fight!
		.' Defeat Yan Quillpaw |q 30736/1
	step
		goto 34.5,83.3
		.talk Ellia Ravenmane##60538
		.' Let's fight!
		.' Defeat Ellia Ravenmane |q 30732/1
	step
		goto 28.8,72.4
		.talk Thelonius##60544
		.' Let's fight!
		.' Defeat Thelonius |q 30738/1
	step
		goto 31.3,63.4
		.talk Thelonius##60506
		..turnin Ellia Ravenmane##30725 |daily |or
		..turnin Minh Do-Tan##30726 |daily |or
		..turnin Ellia Ravenmane: Rematch##30727 |daily |or
		..turnin Fat Long-Fat##30728 |daily |or
		..turnin Julia Bates##30729 |daily |or
		..turnin Dextrous Izissha##30730 |daily |or
		..turnin Kuo-Na Quillpaw##30731 |daily |or
		..turnin Ellia Ravenmane: Revenge##30732 |daily |or
		..turnin Tukka-Tuk##30733 |daily |or
		..turnin Huck Wheelbarrow##30734 |daily |or
		..turnin Mindel Sunspeaker##30735 |daily |or
		..turnin Yan Quillpaw##30736 |daily |or
		..turnin Fat Long-Fat: Rematch##30737 |daily |or
		..turnin Thelonius##30738 |daily |or
		..turnin Ellia Ravenmane: Redemption##30739 |daily |or
		|only if not achieved(7287)
		|next "end"
////Not always here,
	step
	label serpent
		goto The Jade Forest 53.9,61.9
		.talk Elder Sage Tai-Feng##57324
		..turnin Attack At The Temple of the Jade Serpent##31376 |only if havequest(31376)
		..accept Arrows of Fortune##30065 |daily |or
		..accept Hidden Power##30066 |daily |or
		..accept The Darkness Around Us##30006 |daily |or
	step
		goto 53.9,61.9
		.talk Elder Sage Storm-Sing##57319
		..accept Behind the Masks##30063 |daily
		..accept Saving the Sutras##30064 |daily
		'Click here if he has no quests today. |confirm
	step
		goto 56.5,53.6
		.click Ancient Sutra
		.get 6 Ancient Sutra##77432 |q 30064/1
		|only if havequest(30064)
	step
		goto 55.3,57.4
		.from Final Doubt##57330+, Lingering Doubt##57396+ |only if havequest(30063)
		.get 8 Mask of Doubt##77419+ |q 30063/1 |only if havequest(30063)
		.click Defender's Arrow |only if havequest(30065)
		.get 10 Defender's Arrow##77452+ |q 30065/1 |only if havequest(30065)
		.' Use the Stack of Mantras in your bags on Yu'lon Adepts and Yu'lon Guardians |use Stack of Mantras##77475 |only if havequest(30066)
		.' Deliver 6 Ancient Mantras |q 30066/1 |only if havequest(30066)
		|modelnpc Yu'lon Guardian##57400
		|modelnpc Yu'lon Adept##57316
	step
		goto 53.4,54.2
		.from Final Doubt##57330+, Lingering Doubt##57396+, Shadow Of Doubt##57389
		.' Kill 15 Sha Invaders |q 30006/1
		|only if havequest(30006)
	step
		goto 53.9,61.9
		.talk Elder Sage Storm-Sing##57319
		..turnin Behind the Masks##30063
		..turnin Saving the Sutras##30064 
	step
		goto The Jade Forest 53.9,61.9
		.talk Elder Sage Tai-Feng##57324
		..turnin Arrows of Fortune##30065 
		..turnin Hidden Power##30066
		..turnin The Darkness Around Us##30006
		..accept Flames of the Void##30068 |daily
		..accept The Shadow of Doubt##30067 |daily
		'Click here if he has no quests today. |confirm
	step
		goto 57.5,62.3
		.kill Shadow of Doubt##57389 |q 30067/1
		|only if havequest(30067)
	step
		goto 54.1,60.9
		.clicknpc War Serpent##57871
		.' Ride the War Serpent |invehicle
		|only if havequest(30068)
	step
		'Fly around the Jade Temple Grounds and extinguish Void Flames. |tip they look like black fire.
		.' If you run out of water you can refill it in the river [53.9,58.0]
		.' Douse 6 Void Flames |q 30068/1
		|only if havequest(30068)
	step
		goto 53.9,61.9
		.' Click the Leave Vehicle button. |outvehicle
		|only if havequest(30068)
	step
		goto 53.9,61.9
		.talk Elder Sage Tai-Feng##57324
		..turnin The Shadow of Doubt##30067
		..turnin Flames of the Void##30068
		|next "end"
/// Temple of the White Tiger. Not giving rep for August Celstials.
	step
	label tiger
		goto Kun-Lai Summit 67.2,55.9
		.talk Xuen##60968
		..turnin Trial At The Temple of the White Tiger##31381 
		|only if havequest(31381)
	step
		goto 67.2,55.9
		.talk Xuen##60968
		..accept Round 1: Brewmaster Chani##30879 |daily |or
		..accept Round 1: The Streetfighter##30880 |daily |or 
		..accept Contending With Bullies##31517 |daily |tip This quest may not be available.
		|confirm
	step
		goto 71.1,55.8
		.kill Shonuf##64757 |q 31517/1
		|only if havequest(31517)
	step
		goto 71.0,51.8
		.talk Brewmaster Chani##60996
		.' Challenge her. |tip She has a lot of health but isn't too difficult to kill. She will toss Bitter Brew on the ground, so kite her out of it. She also has an AoE cone called The Steamer, you can avoid this by either moving out of it, or interrupting the channel.
		.'Defeat Brewmaster Chani |q 30879/1
		|only if havequest(30879)
	step
		goto 71.0,51.8
		.talk Lun-Chi##60994
		.' Challenge her.
		.' Defeat The Streetfighter |q 30880/1
		|only if havequest(30880)
	step
		goto 70.3,51.3
		.talk Xuen##60968
		..turnin Round 1: Brewmaster Chani##30879 
		..turnin Round 1: The Streetfighter##30880 
		..turnin Contending With Bullies##31517
		..accept Round 2: Clever Ashyo & Ken-Ken##30881 |daily |or
		..accept Round 2: Kang Bramblestaff##30882 |daily |or
	step
		goto 71.7,45.4
		.talk Kang Bramblestaff##60978
		.' Challenge him.
		.' Defeat Kang Bramblestaff |q 30882/1
		|only if havequest(30882)
	step
		goto 71.7,45.4
		.talk Clever Ashyo##60980
		.' Challenge him. |tip Kill Ken-Ken first as he is the weaker of the two. He will cast Ken-Ken Rampage causing him to whirlwind, when he does momentarily switch to Ashyo. Ashyo will summon Water Spouts and Healing Spheres. The Spheres are top priority and the Spouts are easily avoidable.
		.' Defeat Clever Ashyo |q 30881/1
		.' Defeat Ken-Ken |q 30881/2
		|modelnpc Ken-Ken##60979
		|only if havequest(30881)
	step
		goto 71.8,44.9
		.talk Xuen##60968
		..turnin Round 2: Clever Ashyo & Ken-Ken##30881 |daily
		..turnin Round 2: Kang Bramblestaff##30882 |daily
		..accept Round 3: The Wrestler##30883 |daily |or
		..accept Round 3: Master Boom Boom##30885 |daily |or
	step
		goto 66.7,46.5
		.talk Master Boom Boom##61013
		.' Challenge him. |tip He will constantly toss Dynamite at you that will put a landmine on the ground if you walk over it. When he starts the fuse on his boom box, be out of the middle of the arena by the time it finishes.
		.' Defeat Master Boom Boom |q 30885/1
		|only if havequest(30885)
	step
		goto 66.7,46.5
		.talk The Wrestler##60997
		.' Challenge him. |tip Click on the chairs around the room to increase your damage and cause The Wrestler to be stunned for 10 seconds. If you space these out enough, you could potentially kill him before he can hurt you. Periodically he will grapple and throw you, it does not do much damage but it prevents control of your character. Finally, he uses a Sling Sweat ability which puts a blue puddle on the ground that reduces your movement speed and does damage.
		.' Defeat The Wrestler |q 30883/1
		|only if havequest(30883)
	step
		goto 66.4,46.3
		.talk Xuen##60968
		..turnin Round 3: The Wrestler##30883 |daily
		..turnin Round 3: Master Boom Boom##30885 |daily
		..accept Round 4: The P.U.G.##30907 |daily |or
		..accept Round 4: Master Windfur##30902 |daily |or
	step
		goto 68.8,43.8
		.talk Master Windfur##61012
		.' Challenge him.
		.' Defeat Master Windfur. |q 30902/1
		|only if havequest(30902)
	step
		'Enter the building and go to [69.0,43.7]
		.talk Healiss##61004
		.' Challenge him. |tip Defeat the P.U.G. by first kill Healiss. He will attempt to run away and only has one healing spell that he may try to use, it is called Jungle Remedy, save Interrupts and Stuns for this ability. Next deal with Tankiss, he has more health but is a greater threat than Hackiss, his only ability is called Ground Pummel which will knock you can and deal some damage. Finally kill Hackiss, his only ability is Backstab. This will leave a small bleed on you.
		.' Defeat Hackiss |q 30907/1
		.' Defeat Healiss |q 30907/2
		.' Defeat Tankiss |q 30907/3
		|modelnpc Hackiss##61007
		|modelnpc Tankiss##61006
		|only if havequest(30907)
	step
		goto 68.5,44.6
		.talk Xuen##60968
		..turnin Round 4: The P.U.G.##30907 |daily
		..turnin Round 4: Master Windfur##30902 |daily
	step
		goto Kun-Lai Summit 68.5,56.5
		.talk Lin Tenderpaw##60981
		..accept The Torch of Strength##31492
		.' Click here if this quest is unavailable |confirm |next "end"
	step
		'For this quest you must go up the path, avoiding all of the tornadoes that roam around. If you mount, or touch a tornado, you will have to go back to Lin and start the quest over.
		|confirm
	step
		goto 69.6,53.0 |n
		.' Enter the first temple here. |goto 69.6,53.0 |noway |c
	step
		goto 66.9,51.2 |n
		.' Enter the second temple here. |goto 66.9,51.2 |noway |c
	step
		goto 68.6,46.6
		.' Click _The Strong Brazier_ to light it.
		.' Light the Strong Brazier |q 31492/1
	step
		goto Kun-Lai Summit 68.5,56.5
		.talk Lin Tenderpaw##60981
		..turnin The Torch of Strength##31492
		|next "end"
/// Niuzao Temple. Possible unlock hub at revered.
	step
	label ox
		goto Townlong Steppes 39.3,62.3
		.talk Ogo the Elder##61580
		..turnin Defense At Niuzao Temple##31383 |only if havequest(31383)
		..accept The Siege Swells##30956 |daily |or
		..accept The Unending Siege##30952 |daily |or
	step
		goto 39.3,62.3
		.talk Ogo the Younger##61581
		..accept The Big Guns##30959 |daily |or
		..accept A Blade is a Blade##30954 |daily |or
	step
		goto 39.2,62.1
		.talk Yak-Keeper Kyana##61585
		..accept Fallen Sentinels##30953 |daily
		.' If this quest is unavailable today, click here. |confirm
	step
		goto 39.4,61.9
		.talk Sentinel Commander Qipan##61584
		..accept The Overwhelming Swarm##30957 |daily
		.' If this quest is unavailable today, click here. |confirm
	step
		goto 38.9,62.4
		.talk High Adept Paosha##61583
		..accept In Battle's Shadow##30958 |daily |or
		..accept Paying Tribute##30955 |daily |or
	step
		'The following can all be done around Niuzao Temple:
		.' Use your Pot of Fire on Sra'thik War Wagons |use Pot of Fire##82346 |modelnpc Sra'thik War Wagon##61510 |only if havequest(30959)
		.' Cause 3 Sri'thik War Wagons to explode. |q 30959/1 |only if havequest(30959)
		.from Sra'thik Swiftclaw##61508+, Sra'thik Warcaller##61502+, Sra'thik Fleshrender##61514+ |only if havequest(30956)
		.' Kill 25 Sri'thik attackers |q 30956/1 |only if havequest(30956)
		.kill 4 Sra'thik Kunchong##61509+ |q 30957/1 |only if havequest(30957)
		.click Loose Brick |only if havequest(30958)
		.' Throw 10 Loose Stones up to Niuzao Stonemasons |q 30958/1 |only if havequest(30958)
		.' Use your Yak's Milk Flask on Wounded Niuzao Sentinels. |use Yak's Milk Flask##82381 |tip Normal healing spells will also heal the Sentinels if you have them. |only if havequest(30953)
		.' Heal 8 Niuzao Sentinels |q 30953/1 |only if havequest(30953)
		.click Niuzao Food Supply |only if havequest(30955)
		.' Gather 6 Food for Niuzao |q 30955/1 |only if havequest(30955)
		.from Sra'thik Warcaller##61502+, Sra'thik Swiftclaw##61508+ |only if havequest(30952)
		.' Kill 12 Sra'thik attackers |q 30952/1 |only if havequest(30952)
		.click Sra'thik Weapon |tip After you kill a Sra'thik a weapon may drop. |only if havequest(30954)
		.get 10 Sra'thik Weapon##82353 |q 30954/1 |only if havequest(30954)
	step
		goto 39.3,62.3
		.talk Ogo the Elder##61580
		..turnin The Siege Swells##30956 |daily 
		..turnin The Unending Siege##30952 |daily 
	step
		goto 39.3,62.3
		.talk Ogo the Younger##61581
		..turnin The Big Guns##30959 |daily 
		..turnin A Blade is a Blade##30954 |daily 
	step
		goto 39.2,62.1
		.talk Yak-Keeper Kyana##61585
		..turnin Fallen Sentinels##30953 |daily 
		..turnin In Battle's Shadow##30958 |daily 
	step
		goto 39.4,61.9
		.talk Sentinel Commander Qipan##61584
		..turnin The Overwhelming Swarm##30957 |daily
	step
		goto 38.9,62.4
		.talk High Adept Paosha##61583
		..turnin Paying Tribute##30955 |daily
	step
	label "end"
		goto Vale of Eternal Blossoms 62.8,23.4
		.talk Sage Lotusbloom##64001
		.buy 1 Grand Commendation of the August Celestials##93224
		.' Use the Commendation of the August Celestials you just purchased. |use Grand Commendation of the August Celestials##93224
		.' If you have already purchased this (either on this or another character), click here. |confirm
		|only if rep("August Celestials")>=Revered
	step
		'You have reached the end of this daily guide.
		.' Click here to return to the start of the dailies. |next "startaug" |confirm
]])

ZygorGuidesViewer:RegisterInclude("Dominance_Offensive",[[
	startlevel 90
	step
		'Proceeding to the Dominance Offensive Dailies  |next "dailies" |condition completedq(32108) |only if completedq(32108)
		'Proceeding to the Dominance Offensive Prequests |next |condition not completedq(32108) |only if not completedq(32108)
	step
		goto Vale of Eternal Blossoms 61.5,19.8
		'Click the quest discovered box under your minimap.
		..accept Meet the Scout##32249
	step
		goto Krasarang Wilds 8.7,64.4
		.talk Scout Rokla##67812
		..turnin Meet the Scout##32249
	step
		goto Krasarang Wilds 8.7,64.4
		.talk Garrosh Hellscream##62092
		..accept The Might of the Warchief##32250
	step
		goto Krasarang Wilds 10.0,64.1
		.from Alliance Sentinel##67900+, Alliance Footman##+, Alliance Priest##+
		..' Kill 25 Alliance troops |q 32250/1
	step
		goto Krasarang Wilds 10.7,53.2
		.talk Blood Guard Gro'tash##67927
		..' Find Blood Guard Gro'tash |q 32250/2
	step
		goto Krasarang Wilds 15.7,57.8
		.talk Grizzle Gearslip##67926
		..' Find Grizzle Gearslip |q 32250/3
	step
		'Next to you
		.talk Garrosh Hellscream##62092
		..turnin The Might of the Warchief##32250
		..accept Domination Point##32108
	step
		goto 8.5,63.8
		.click Signal Fire
		..turnin Domination Point##32108
	step
		goto Krasarang Wilds 9.7,52.5
		.talk Kromthar##67785
		.fpath Domination Point
	step
	label "dailies"
		goto Krasarang Wilds 10.1,53.9
		.talk Blood Guard Gro'tash##67880
		..accept The Ruins of Ogudei##32449 |daily |or |next "ogudei"
		..accept Flash! Aaaaaahhhh!##32235 |daily |or |next
	step
		goto Krasarang Wilds 10.2,53.6
		.talk Brolic##67767
		..accept Tear It Up##32126 |daily
	step
		goto Krasarang Wilds 10.3,55.6
		.talk Shokia##56411
		..accept Death on Two Legs##32123 |daily
	step
		goto Krasarang Wilds 11.8,57.6
		.' Fly up in the air and throw your Bilgewater Molotovs at the Skyfire Gyrocopter X2s |use The Bilgewater Molotov##92019
		.' Kill 6 Skyfire Gyrocopter X2s |q 32235/1
	step
		goto Krasarang Wilds 8.1,61.3
		.click Alliance Supply Drop
		.' Destroy 8 Alliance Supply Drops |q 32126/1
	step
		goto 9.9,64.2
		.from Shieldwall Marine##+, Shieldwall Stormcaller##+,
		.' Kill 10 Alliance Troops |q 32123/1
	step
		goto Krasarang Wilds 10.3,55.6
		.talk Shokia##56411
		..turnin Death on Two Legs##32123
	step
		goto Krasarang Wilds 10.3,53.1
		.talk Brolic##67767
		..turnin Tear It Up##32126
	step
		goto Krasarang Wilds 10.1,53.9
		.talk Blood Guard Gro'tash##67880
		..turnin Flash! Aaaaaahhhh!##32235
		..accept Another One Bites the Dust##32128 |daily
	step
		goto Krasarang Wilds 10.3,53.1
		.talk Brolic##67767
		..accept All Dead, All Dead##32127 |daily
	step
		goto Krasarang Wilds 12.7,75.8
		.from Captain Brent the Black##+ |tip On the second floor of the ship, towards the back.
		..kill Captain Brent the Black |q 32127/1
	step
		goto Krasarang Wilds 12.3,75.6
		.click Powder Magazine |tip It's on the bottom floor of the ship, next to Fireworks and Bombs.
		.' Destroy the Defiant ammunition |q 32128/2
	step
		goto Krasarang Wilds 15.0,76.4
		.from Captain Mulkey##+ |tip On the second floor of the ship, towards the back.
		..kill Captain Mulkey |q 32127/2
	step
		goto Krasarang Wilds 15.1,76.6
		.click Powder Magazine |tip It's on the bottom floor of the ship, next to Fireworks and Bombs.
		.' Destroy the Valor's Edge ammunition |q 32128/1
	step
		goto Krasarang Wilds 10.1,53.9
		.talk Blood Guard Gro'tash##67880
		..turnin Another One Bites the Dust##32128
	step
		goto Krasarang Wilds 10.3,53.1
		.talk Brolic##67767
		..turnin All Dead, All Dead##32127
		|next "end"
	step
	label "ogudei"
		goto Krasarang Wilds 76.3,34.1
		.talk Belloc Brightblade##2311
		..turnin The Ruins of Ogudei##32449
		..accept Taking Advantage##32118 |daily
	step
		goto Krasarang Wilds 76.2,34.0
		'Click the portal to go to the Ruins of Ogudei |goto Krasarang Wilds/3 37.4,46.4,0.5
		|only if havequest(32118)
	step
		goto Krasarang Wilds/3 36.1,42.1
		.talk Kaelis Sunsoar##2738
		..turnin Taking Advantage##32118
	step
		goto Krasarang Wilds/3 36.1,42.1
		.talk Kaelis Sunsoar##2738
		..accept The Spirit Trap##32342 |daily
		..accept It Is A Mystery##32344 |daily
		..accept Legacy of Ogudei##32120 |daily
		..accept Ogudei's Lieutenants##32343 |daily
		..accept Kick 'em While They're Down##32348 |daily
	step
		goto Krasarang Wilds/3 78.6,44.2 |n
		.' Go up the path here. |goto Krasarang Wilds/3 78.6,44.2 |noway |c
	step
		'Walk around this cave and pay attention to your Anamoly Reader above your actionbars. This quest is like a "Hot & Cold" game, where the closer you get, the greater anamoly reading you get. Once you have 100%, you will automatically disperse the anamoly.
		.' Disperse the anamoly |q 32344/1
		|only if havequest(32344)
	step
		goto Krasarang Wilds/2 55.5,53.7
		.from Spiritbound Brutalizer##2537+
		.from Spiritbound Arcanist##2534+
		.collect 5 Ancient Mogu Essence##92704 |q 32120/1
		|only if havequest(32120)
	step
		goto Krasarang Wilds/2 74.1,29.7
		.from Spirit Trap##2525+
		..get 3 Spirit Trap |q 32342/1
		|only if havequest(32342)
	step
		goto Krasarang Wilds/2 67.8,80.3
		.from Gen-li, Twister of Words##2633+
		.from Meng-do, Strength of Mountains##2634+
		..collect Gen-Li's Essence##92736 |q 32343/1
		..collect Meng-do's Essence##92735 |q 32343/1
	step
		goto Krasarang Wilds/2 56.7,38.7 |n
		.' Go up the stairs here. |goto Krasarang Wilds/2 56.7,38.7 |noway |c
	step
		goto Krasarang Wilds/1 59.3,37.3
		.from Shieldwall Footman##1768+, Shieldwall Rifleman##1761+, Lion's Landing Guard Captain##2774+
		.' Kill 12 Lion's Landing Military |q 32348/1
	step
		goto Krasarang Wilds/3 36.2,41.2
		.talk Kaelis Sunsoar##2738
		..turnin The Spirit Trap##32342
		..turnin It Is A Mystery##32344
		..turnin Legacy of Ogudei##32120
		..turnin Ogudei's Lieutenants##32343
		..turnin Kick 'em While They're Down##32348
		|next "end"
	step
	label "end"
		'This is the end of this guide.
		.' Click here to return to the beginning of the dailies |confirm |next "dailies"
]])

--------------------------------------------------------------------------------------------------------------------------------------
-- Trainers
--------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterInclude("trainer_Alchemy",[[
		goto Orgrimmar,55.7,45.7
		.talk Yelmak##3347
]])

ZygorGuidesViewer:RegisterInclude("trainer_Archaeology",[[
		goto Orgrimmar 49.0,70.7
		.talk Belloc Brightblade##47571
]])

ZygorGuidesViewer:RegisterInclude("trainer_Blacksmithing",[[
		goto Orgrimmar,44.4,77.3
		.talk Rogg##37072
]])

ZygorGuidesViewer:RegisterInclude("trainer_Blacksmithing_Shatt",[[
		goto Shattrath City,69.4,43.3
		.talk Kradu Grimblade##20124
]])

ZygorGuidesViewer:RegisterInclude("trainer_Mining",[[
		goto Orgrimmar 44.6,78.4
		.talk Gonto##46357
]])

ZygorGuidesViewer:RegisterInclude("trainer_Herbalism",[[
		goto Orgrimmar,54.7,50.5
		.talk Muraga##46741
]])

ZygorGuidesViewer:RegisterInclude("trainer_Inscription",[[
		goto Orgrimmar 55.2,55.7
		.talk Nerog##46716
]])

ZygorGuidesViewer:RegisterInclude("trainer_Engineering",[[
		goto  Orgrimmar 56.9,56.4
		.talk Roxxik##11017
]])

ZygorGuidesViewer:RegisterInclude("trainer_Cooking",[[
		goto Orgrimmar 56.3,61.5
		.talk Arugi##46709
]])

ZygorGuidesViewer:RegisterInclude("trainer_Tailoring",[[
		goto Orgrimmar,60.8,59.1
		.talk Magar##3363
]])

ZygorGuidesViewer:RegisterInclude("trainer_FirstAid",[[
		goto Orgrimmar 37.1,87.2
		.talk Krenk Choplimb##45540
]])

ZygorGuidesViewer:RegisterInclude("trainer_Fishing",[[
		goto Orgrimmar 66.5,41.5
		.talk Lumak##3332
]])

ZygorGuidesViewer:RegisterInclude("trainer_Enchanting",[[
		goto  Orgrimmar 53.4,49.3
		.talk Godan##3345
]])

ZygorGuidesViewer:RegisterInclude("trainer_Skinning",[[
		goto Orgrimmar,61.1,54.8
		.talk Thuwd##7088
]])

ZygorGuidesViewer:RegisterInclude("trainer_Leatherworking",[[
		goto Orgrimmar,60.9,54.9
		.talk Karolek##3365
]])

ZygorGuidesViewer:RegisterInclude("trainer_Mining",[[
		goto Orgrimmar 72.3,35.0
		.talk Makaru##3357
]])

ZygorGuidesViewer:RegisterInclude("trainer_Jewelcrafting",[[
		goto Orgrimmar 72.5,34.5
		.talk Lugrah##46675
]])

ZygorGuidesViewer:RegisterInclude("trainer_HerbalismUC",[[
		goto Undercity,54.0,49.6
		.talk Martha Alliestar##4614
]])

--------------------------------------------------------------------------------------------------------------------------------------
-- Supply Vendors
--------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterInclude("vendor_Alchemy",[[
		goto Orgrimmar 55.4,46.1
		.talk Kor'geld##3348
]])

ZygorGuidesViewer:RegisterInclude("vendor_Archaeology",[[
]])

ZygorGuidesViewer:RegisterInclude("vendor_Blacksmithing",[[
		goto Orgrimmar 45.0,77.1
		.talk Punra##46359
]])

ZygorGuidesViewer:RegisterInclude("vendor_Mining",[[
		goto Orgrimmar,72.7,34.8
		.talk Gorina##3358
]])

ZygorGuidesViewer:RegisterInclude("vendor_Herbalism",[[
]])

ZygorGuidesViewer:RegisterInclude("vendor_Inscription",[[
		goto Orgrimmar,55.4,56.0
		.talk Moraka##46718
]])

ZygorGuidesViewer:RegisterInclude("vendor_Engineering",[[
		goto Orgrimmar,56.8,56.4
		.talk Sovik##3413
]])

ZygorGuidesViewer:RegisterInclude("vendor_Cooking",[[
		goto Orgrimmar 56.4,61.3
		.talk Suja##46708
]])

ZygorGuidesViewer:RegisterInclude("vendor_Tailoring",[[
		goto Orgrimmar,60.7,58.7
		.talk Borya##3364
]])

ZygorGuidesViewer:RegisterInclude("vendor_FirstAid",[[
]])

ZygorGuidesViewer:RegisterInclude("vendor_Fishing",[[
]])

ZygorGuidesViewer:RegisterInclude("vendor_Enchanting",[[
		goto Orgrimmar 53.3,48.9
		.talk Kithas##3346
]])

ZygorGuidesViewer:RegisterInclude("vendor_Skinning",[[
		goto Orgrimmar 60.5,54.5
		.talk Tamar##3366
]])

ZygorGuidesViewer:RegisterInclude("vendor_Leatherworking",[[
		goto Orgrimmar,60.3,54.3
		.talk Tamar##3366
]])

ZygorGuidesViewer:RegisterInclude("vendor_Jewelcrafting",[[
]])

--------------------------------------------------------------------------------------------------------------------------------------
-- Buying
--------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterInclude("auctioneer",[[
		goto Orgrimmar,54.1,73.3
		.talk Auctioneer Drezmit##44866
]])

ZygorGuidesViewer:RegisterInclude("auctioneer_dalaran",[[
		goto Dalaran,38.8,25.1
		.talk Brassbolt Mechawrench##35594
]])

ZygorGuidesViewer:RegisterInclude("shatt_auctioneer",[[
		goto Shattrath City,51.0,26.5 |only if rep ('The Aldor') >= Neutral
		.talk Auctioneer Itoran##50143 |only if rep ('The Aldor') >= Neutral
		goto Shattrath City,57.0,63.2 |only if rep ('The Scryers') >= Friendly
		.talk Auctioneer Kalaren##50139|only if rep ('The Scryers') >= Friendly
]])

ZygorGuidesViewer:RegisterInclude("goto_shatt_auctioneer",[[
		goto Shattrath City,51.0,26.5 |only if rep ('The Aldor') >= Neutral
		.talk Auctioneer Itoran##50143 |only if rep ('The Aldor') >= Neutral
		goto Shattrath City,57.0,63.2 |only if rep ('The Scryers') >= Friendly
		.talk Auctioneer Kalaren##50139|only if rep ('The Scryers') >= Friendly
]])
--------------------------------------------------------------------------------------------------------------------------------------
-- Anvils
--------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterInclude("maincity_forge",[[
		goto Orgrimmar 75.9,37.3
		.' Stand at this forge
]])

ZygorGuidesViewer:RegisterInclude("maincity_anvil",[[
		goto Orgrimmar 44.7,78.0
		 .' Stand at this Anvil
]])

ZygorGuidesViewer:RegisterInclude("maincity_forge2",[[
		goto Orgrimmar 44.7,78.0
		.' Stand at this forge
]])

ZygorGuidesViewer:RegisterInclude("hellanvil",[[
		goto Hellfire Peninsula,53.3,38.3
		.' Stand in this spot
]])

ZygorGuidesViewer:RegisterInclude("twil_anvil",[[
		goto Twilight Highlands,79.2,76.3
		.' Stand next to this anvil
]])

ZygorGuidesViewer:RegisterInclude("shatt_anvil",[[
		goto Shattrath City 69.4,42.8
		.' Stand next to this Anvil
]])

--------------------------------------------------------------------------------------------------------------------------------------
-- Other
--------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterInclude("cast_campfire",[[
		'Create a basic campfire |cast Basic Campfire##818
]])