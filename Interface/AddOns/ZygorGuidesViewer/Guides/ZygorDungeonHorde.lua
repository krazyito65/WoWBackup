local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if UnitFactionGroup("player")~="Horde" then return end
if ZGV:DoMutex("DungeonH") then return end

-- PREORDER CONTENT

ZygorGuidesViewer:RegisterGuide("Zygor's Horde Gear Guides\\Cataclysm Dungeons\\End Time (ET)\\Tank Gear",[[
	dungeon 820
	description This will help you see what gear you can use in the End Time Dungeon
	step
	// Echo of Baine, Jaina, Sylvanas, Tyrande
		.from Echo of Baine##54431, Echo of Jaina##54445, Echo of Sylvanas##54123, Echo of Tyrande##54544 |only DeathKnight, Paladin, Warrior, Druid
		.item Axe of the Tauren Chieftains##72814 |tip 2H Axe |only DeathKnight
		.item Gauntlets of Temporal Interference##72800 |tip Hands |only DeathKnight, Paladin, Warrior
		.item Girdle of Lost Heroes##72803 |tip Waist |only DeathKnight, Paladin, Warrior
		.item Bloodhoof Legguards##72815 |tip Legs |only DeathKnight, Paladin, Warrior
		.item Gloves of the Hollow##72805 |tip Hands |only Druid
		'_
	// Murozond
		.from Murozond##54432 |only DeathKnight, Paladin, Warrior
		.item Breastplate of Tarnished Bronze##72818 |tip Chest |only DeathKnight, Paladin, Warrior, Druid
		.item Time Twisted Tunic##72824 |tip Chest |only Druid
		.item Chrono Boots##72819 |tip Feet |only Druid
		.' There are no items for your class |only Warlock, Mage, Hunter, Priest, Rogue, Shaman
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Gear Guides\\Cataclysm Dungeons\\End Time (ET)\\Dps Gear",[[
	dungeon 820
	description This will help you see what gear you can use in the End Time Dungeon
	step
	// ECHO OF JAINA
		from Echo of Jaina##54445 |only Druid, Priest, Warlock, Shaman, Mage, Paladin
		item Jaina's Staff##72808 |tip Two-Hand Staff |only Druid, Priest, Warlock, Shaman, Mage
		item Ward of Incantations##72809 |tip Shield |only Paladin, Shaman
		'_ |only Druid, Priest, Warlock, Shaman, Mage, Paladin
	// ECHO OF TYRANDE
		from Echo of Tyrande##54544 |only Shaman, Paladin, Warlock, Priest, Mage
		item Crescent Moon##72812 |tip Main Hand Axe |only Shaman, Paladin
		item Whisperwind Robes##72813 |tip Chest |only Warlock, Priest, Mage
		'_ |only Shaman, Paladin, Warlock, Priest, Mage
	// ECHO OF SYLVANAS
		from Echo of Sylvanas##54123 |only Rogue, Hunter, Druid, Shaman
		item Windrunner's Bow##72810 |tip Bow |only Rogue, Hunter
		item Cloak of the Banshee Queen##72811 |tip Cloak |only Druid, Rogue, Hunter, Shaman
		'_ |only Rogue, Hunter, Druid, Shaman
	// ECHO OF BAINE, JAINA, SYLVANAS, TYRANDE
		from Echo of Jaina##54445, Echo of Tyrande##54544, Echo of Sylvanas##54123, Echo of Baine##54431 |only DeathKnight, Paladin, Warrior, Shaman, Druid, Rogue, Warlock, Priest, Mage, Hunter
		item Axe of the Tauren Chieftains##72814 |tip Two-Hand Axe |only DeathKnight, Paladin, Warrior
		item Dragonshrine Scepter##72804 |tip One-Hand Weapon |only DeathKnight, Paladin, Warrior, Shaman
		item Echoing Headguard##72806 |tip Head |only Shaman
		item Breastplate of Sorrow##72801 |tip Chest |only DeathKnight, Paladin, Warrior
		item Gloves of the Hollow##72805 |tip Hands |only Druid, Rogue
		item Cord of Lost Hope##72798 |tip Waist |only Druid
		item Echoing Headguard##72806 |tip Head |only Shaman
		item Time Traveler's Leggings##72802 |tip Legs |only Warlock, Priest, Mage
		item Dead End Boots##72799 |tip Feet |only Shaman, Hunter
		'_ |only DeathKnight, Paladin, Warrior, Shaman, Druid, Rogue, Warlock, Priest, Mage, Hunter
	// MUROZOND
		from Murozond##54432 |only Rogue, Shaman, Hunter, DeathKnight, Paladin, Warrior, Priest, Mage, Warlock, Druid
		item Jagged Edge of Time##72822 |tip One-Hand Dagger |only Rogue, Shaman, Hunter
		item Crown of Epochs##72820 |tip Head |only DeathKnight, Paladin, Warrior
		item Timeway Headgear##72823 |tip Head |only Druid
		item Mantle of Time##72825 |tip Shoulder |only Mage, Warlock, Priest 
		item Temporal Pauldrons##72821 |tip Shoulder |only DeathKnight, Paladin, Warrior
		item Robes of Fate##72826 |tip Chest |only Mage, Warlock, Priest
		item Time Twisted Tunic##72824 |tip Chest |only Rogue, Druid
		item Distortion Greaves##72816 |tip Hands  |only Shaman
		item Arrow of Time##72897 |tip Trinket  |only Rogue, Shaman, Hunter, Druid
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Gear Guides\\Cataclysm Dungeons\\End Time (ET)\\Healer Gear",[[
	dungeon 820
	description This will help you see what gear you can use in the End Time Dungeon
	step
	// Echo of Baine, Jaina, Sylvanas, Tyrande
		.from Echo of Baine##54431, Echo of Jaina##54445, Echo of Sylvanas##54123, Echo of Tyrande##54544 |only Priest, Paladin, Druid, Shaman
		.item Time Traveler's Leggings##72802 |tip Legs |only Priest
		.item Waistguard of Lost Time##72807 |tip Waist |only Paladin
		.item Cord of Lost Hope##72798 |tip Waist |only Druid
		.item Echoing Headguard##72806 |tip Head |only Shaman
		'_
	// Echo of Jaina
		.from Echo of Jaina##54445 |only Druid, Priest, Shaman
		.item Jaina's Staff##72808 |tip 2h Staff |only Druid,Priest,Shaman
		.item Ward of Incantations##72809 |tip Wand |only Shaman,Paladin
		'_
	// Echo of Tyrande
		.from Echo of Tyrande##54544 |only Shaman, Priest, Paladin, Druid
		.item Crescent Moon##72812 |tip Main Hand Axe |only Shaman,Priest,Paladin,Druid
		.item Whisperwind Robes##72813 |tip Chest |only Priest
		'_
	// Murozond
		.from Murozond##54432 |only Druid, Priest, Shaman, Paladin
		.item Timeway Headgear##72823 |tip Head |only Druid
		.item Mantle of Time##72825 |tip Shoulder |only Priest
		.item Distortion Greaves##72816 |tip Legs |only Shaman
		.item Time Altered Legguards##72817 |tip Legs |only Paladin
		.' There are no items for your class |only Warlock, Rogue, Warrior, DeathKnight, Mage
]])

ZygorGuidesViewer:RegisterGuide("Zygor's Horde Gear Guides\\Cataclysm Dungeons\\Well of Eternity (WoE)\\Tank Gear",[[
	dungeon 816
	description This will help you see what gear you can use in the End Time Dungeon
	step
	// PEROTH'ARN
		.from Peroth'arn##55085 |only DeathKnight, Paladin, Warrior, Druid
		.item Gavel of Peroth'arn##72827 |tip 1h Mace |only DeathKnight, Paladin, Warrior
		.item Peroth'arn's Belt##72830 |tip Waist |only Druid
		'_  |only DeathKnight, Paladin, Warrior, Druid
	// QUEEN AZSHARA
		.from Queen Azshara##54853 |only DeathKnight, Paladin, Warrior, Druid
		.item Queen's Boon##72837 |tip Finger |only DeathKnight, Paladin, Warrior
		.item Puppeteer's Pantaloons##72835 |tip Legs |only Druid
		'_ |only DeathKnight, Paladin, Warrior, Druid
	//MANNOROTH
		.from Mannoroth##54969, Varo'then##55419 |only Druid, Paladin, Warrior
		.item Annihilan Helm##72842 |tip Head |only DeathKnight, Paladin, Warrior
		.item Mannoroth's Signet##72845 |tip Finger |only Druid
		.item Thornwood Staff##72846 |tip 2h Staff |only Druid
		.item Helm of Thorns##72847 |tip Head |only Druid
		.' There are no items for your class |only Warlock, Mage, Hunter, Priest, Rogue, Shaman
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Gear Guides\\Cataclysm Dungeons\\Well of Eternity (WoE)\\Dps Gear",[[
	dungeon 816
	description This will help you see what gear you can use in the End Time Dungeon
	step
	// PEROTH'ARN
		from Peroth'arn##55085 |only Warrior, Paladin, Hunter, Rogue, DeathKnight, Shaman, Priest, Mage, Warlock, Druid
		item Trickster's Edge##72828 |tip One-Hand Axe |only Warrior, Paladin, Hunter, Rogue, DeathKnight, Shaman
		item Orb of the First Satyrs##72829 |tip Held In Off Hand |only Paladin, Priest, Shaman, Mage, Warlock, Druid
		item Girdle of the Queen's Champion##72832 |tip Waist |only Warrior, Paladin, DeathKnight
		item Peroth'arn's Belt##72830 |tip Waist  |only Druid, Rogue
		item Horned Band##72831 |tip Finger |only Paladin, Priest, Shaman, Mage, Warlock, Druid
		'_ |only Warrior, Paladin, Hunter, Rogue, DeathKnight, Shaman, Priest, Mage, Warlock, Druid
	// QUEEN AZSHARA
		from Queen Azshara##54853 |only Paladin, Priest, Shaman, Druid, Warrior, Hunter, Rogue, DeathKnight, Mage, Warlock
		item Scepter of Azshara##72833 |tip Main Hand Mace |only Paladin, Priest, Shaman, Druid
		item Cloak of the Royal Protector##72838 |tip Cloak |only Warrior, Paladin, Hunter, Rogue, DeathKnight, Shaman, Druid
		item Breastplate of the Queen's Guard##72834 |tip Chest |only Hunter, Shaman
		item Puppeteer's Pantaloons##72835 |tip Legs |only Rogue, Druid
		item Slipper's of Wizardry##72836 |tip Feet |only Priest, Mage, Warlock
		'_ |only Paladin, Priest, Shaman, Druid, Warrior, Hunter, Rogue, DeathKnight, Mage, Warlock
	//MANNOROTH
		from Mannoroth##54969 |only Warrior, Paladin, DeathKnight, Shaman, Druid, Hunter, Priest, Mage, Warlock, Rogue
		item Pit Lord's Destroyer##72844 |tip Two-Hand Mace |only Warrior, Paladin, DeathKnight, Shaman, Druid
		item Thornwood Staff##72846 |tip Two-Hand Staff |only Hunter, Druid
		item Cowl of Highborne Sorcerors##72839 |tip Head |only Priest, Mage, Warlock
		item Helm of Thorns##72847 |tip Head |only Rogue, Druid
		item Spaulders of Eternity##72840 |tip Shoulders |only Druid
		item Legguards of the Legion##72848 |tip Legs |only Hunter, Shaman
		item Mannoroth's Signet##72845 |tip Finger |only Warrior, Paladin, Hunter, Rogue, DeathKnight, Shaman, Druid
		item Varo'then's Brooch##72899 |tip Trinket |only Warrior, Paladin, Hunter, Rogue, DeathKnight, Shaman, Druid
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Gear Guides\\Cataclysm Dungeons\\Well of Eternity (WoE)\\Healer Gear",[[
	dungeon 816
	description This will help you see what gear you can use in the End Time Dungeon
	step
	// PEROTH'ARN
		.from Peroth'arn##55085 |only Paladin,Druid,Priest,Shaman
		.item Horned Band##72831 |tip Finger |only Paladin,Druid,Priest,Shaman
		'_
	// QUEEN AZSHARA
		.from Queen Azshara##54853 |only Paladin,Druid,Priest,Shaman
		.item Scepter of Azshara##72833 |tip Main Hand, Mace |only Paladin,Druid,Priest,Shaman
		'_
	//MANNOROTH
		.from Mannoroth##54969, Varo'then##55419 |only Priest, Druid, Shaman, Paladin
		.item Cowl of Highborne Sorcerors##72839 |tip Head |only Priest
		.item Helm of Power##72843 |tip Head |only Paladin
		.item Spaulders of Eternity##72840 |tip Shouders |only Druid
		.item Demonsbane Chestguard##72841 |tip Chest |only Shaman
		.item Foul Gift of the Demon Lord##72841 |tip Trinket |only Shaman,Paladin,Priest,Druid
		.' There are no items for your class |only Warlock, Rogue, Warrior, DeathKnight, Mage
]])

ZygorGuidesViewer:RegisterGuide("Zygor's Horde Gear Guides\\Cataclysm Dungeons\\Hour of Twilight (HoT)\\Tank Gear",[[
	dungeon 819
	description This will help you see what gear you can use in the End Time Dungeon
	step
	// Arcurion
		.from Arcurion##54590 |only DeathKnight, Paladin, Warrior, Druid
		.item Iceward Cloak##72854 |tip Back |only DeathKnight, Paladin, Warrior
		.item Wayfinder Boots##72849 |tip Feet |tip This item drops from Arcurion |only Druid
		'_ |only DeathKnight, Paladin, Warrior, Druid
	// Asira Dawnslayer
		.from Asira Dawnslayer##54968 |only Paladin, Warrior
		item Corrupted Carapace##72855 |tip Shield |only Paladin, Warrior
		'_ |only Paladin, Warrior
	// Archbishop Benedictus
		.from Archbishop Benedictus##54938 |only Druid, DeathKnight, Paladin, Warrior
		.item Desecrated Shoulderguards##72868 |tip Shoulder |only Druid
		.item Pauldrons of the Dragonblight##72861 |tip Shoulder |only DeathKnight, Paladin, Warrior
		.item Veil of Lies##72900 |tip Trinket |only Druid, Paladin, DeathKnight, Warrior
		.' There are no items for your class |only Warlock, Mage, Hunter, Priest, Rogue, Shaman
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Gear Guides\\Cataclysm Dungeons\\Hour of Twilight (HoT)\\Dps Gear",[[
	dungeon 819
	description This will help you see what gear you can use in the End Time Dungeon
	step
	// ARCHURION
		from Arcurion##54590 |only Druid, Warlock, Priest, Mage, Paladin, DeathKnight, Warrior, Shaman, Rogue
		item Evergreen Wristbands##76150 |tip Wrist |only Druid
		item Chillbane Belt##72851 |tip Waist |only Warlock,Priest,Mage
		item Arcurion Legguards##72853 |tip Legs |only Paladin,DeathKnight,Warrior
		item Surestride Boots##72850 |tip Feet |only Shaman
		item Wayfinder Boots##72849 |tip Feet |only Rogue,Druid
		'_|only Druid, Warlock, Priest, Mage, Paladin, DeathKnight, Warrior, Shaman, Rogue
	// ASIRA DAWNSLAYER
		from Asira Dawnslayer##54968 |only Rogue, Shaman, Druid, Priest
		item Mandible of the Old Ones##72860 |tip Off Hand Dagger |only Rogue,Shaman
		item Dawnslayer Helm##72859 |tip Head |only Rogue,Shaman
		item Pauldrons of Midnight Whispers##72856 |tip Shoulder |only Druid
		item Cloak of Subtle Light##76151 |tip Cloak |only Priest,Druid,Shaman
		item Leggings of Blinding Speed##72857 |tip Legs |only Druid
		'_ |only Rogue, Shaman, Druid, Priest
	// ARCHBISHOP BENEDICTUS
		from Archbishop Benedictus##54938 |only Druid, Shaman, Priest, Mage, Warlock, Rogue, Warrior, DeathKnight, Hunter, Paladin
		item Stalk of Corruption##72863 |tip Two-Hand Staff |only Druid,Shaman,Priest,Mage,Warlock
		item Clattering Claw##72867 |tip Main Hand Fist Weapon |only Rogue,Shaman
		item Fanged Tentacle##72862 |tip Main Hand Dagger |only Mage,Shaman,Warlock,Priest,Druid
		item Treachery's Bite##72866 |tip One Hand Sword |only Warrior,DeathKnight
		item Dragonsmaw Blaster##72869 |tip Gun |only Hunter
		item Betrayer's Pauldrons##72870 |tip Shoulder |only Hunter,Shaman
		item Desecrated Shoulderguards##72868 |tip Shoulder. |only Rogue,Druid
		item Mantle of False Virtue##72865 |tip Shoulder |only Mage,Pirest,Warlock
		item Rosary of Light##72901 |tip Trinket |only Warrior,Paladin,DeathKnight
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Gear Guides\\Cataclysm Dungeons\\Hour of Twilight (HoT)\\Healer Gear",[[
	dungeon 819
	description This will help you see what gear you can use in the End Time Dungeon
	step
	// Arcurion
		.from Arcurion##54590 |only Shaman, Druid
		.item Evergreen Wristbands##76150 |tip Wrist |only Druid
		.item Surestride Boots##72850 |tip Feet |only Shaman
		'_
	// Asira Dawnslayer
		.from Asira Dawnslayer##54968 |only Druid, Paladin, Druid, Shaman
		.item Pauldrons of Midnight Whispers##72856 |tip Shoulder |only Shaman
		.item Cloak of Subtle Light##76151 |tip Back |only Priest,Paladin,Druid,Shaman
		.item Leggings of Blinding Speed##72857 |tip Legs |only Druid
		'_
	// Archbishop Benedictus
		.from Archbishop Benedictus##54938 |only Druid, Paladin, Druid, Shaman
		.item Stalk of Corruption##72863 |tip 2h Staff |only Druid,Shaman,Priest
		.item Pauldrons of Conviction##72864 |tip Shoulder |only Paladin
		.' There are no items for your class |only Warlock, Mage, Hunter, Priest, Rogue, Shaman
]])


ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Cataclysm Dungeons\\End Time (ET)\\Tank Guide",[[
	dungeon 820
	description This Guides will walk you through tanking the End of Time dungeon and questing.
	author support@zygorguides.com
	step
		.' Press _I_ on your keyboard to open your Dungeon Finder and que for End of Time specfic Cataclysm dungeon.
		.' This guide is for a Tank role, so choose _Tank_ for your choice.
		|confirm
	step
		goto End Time 79.6,45.1
		.talk Alurmi##57864
		..accept Archival Purposes##30097
	step 
		goto 79.6,45.0
		.talk Nozdormu##54476
		..accept Murozond##30096
	step 
	label	"transit"
		.' Click Time Transit Device and choose one of the destinations:
		.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
		.' or
		.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
		.' or
		.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
		.' or
		.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
		.' or
		.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
	step
	label	"Emerald"
		'In this section, you will need to start the trash by aggroing a _Nightsaber_. Once you have started, you will have to fight until the boss appears. 
		.' There are _Nightsabers_ and _Sentinel's_ which keep spawning, that you will have to fight constantly (they do not hit hard) and stack together to keep aggro.
		.' _Run to the Moonlight_ and stay in anytime it appears, this helps with killing the mobs. When one dissappears, run to the next one that spawns. 
		.' _Repeat until Tyrande_ show up.
		.from Time-Twisted Nightsaber##54688+
		.from Time-Twisted Sentinel##54512+
		|confirm
	step
	label	"pre_Tyrande"
		goto End Time/5 51.8,42.9
		.from Echo of Tyrande##54544
		.' Absorb or Reflect _Moonbolt_ when possible.
		.' Dodge _Moonlance_.
		.' Use a Damage Modifer when Tyrande _30% Health_.
		.kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
		.' Click here for more details of the boss fight. |confirm |next "Tyrande" |or
		.' or
		|confirm |next "next_1" |or
	step
	label	"Tyrande"
		goto End Time/5 51.8,42.9
		.from Echo of Tyrande##54544
		.' As a tank you can either Spell Reflect or use a Spell Damage modifier for when _Tyrande_ casts _Moonbolt_, a direct damage spell she casts often.
		.' _Tyrande_ throws arcane lances appear to be a streak of blue then splits into three and need to be dodged by ranged. This cannot be dodged by the Tank and will stun if it hits you.
		.' When _Tyrande_ is at 30% health she will be surrounded by _Tears of Elune_, this looks like fireworks and damages anyone within 4 yards of it.
		.kill 2 Echos in the End Time instance |q 30097/1 |only if havequest(30097)
		.' Click here to go back to the short version of the boss fight. |confirm |next "pre_Tyrande" |or
		|confirm |or
	step
	label	"next_1"
		.' Click Time Transit Device and choose one of the destinations:
		.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
		.' or
		.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
		.' or
		.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
		.' or
		.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
	step
	label	"Azure"
		'Clearing the trash mobs in this room is not very difficult. You want to start killing the _Priest_, then the _Riflemen_. Make sure to have the Dps kill the Fountain of Light that are summoned also. 
		.' If you can, _Control the Sorceress_ by using _Shackle_ or _Turn Undead_. If you cannot, kill Sorceress 2nd.
		.' Below is the 
		.from Time-Twisted Priest##54690+  
		.from Time-Twisted Sorceress##54691+
		.from Time-Twisted Rifleman##54693+
		.from Time-Twisted Footman##54687+
		'|from Fountain of Light##54795+
		'To summon the Echo of Jaina, you will need to go around and _click 16 Fragments of Jaina's Staff_. Once you have clicked all 16, she will appear in the middle of the map, in the _blue swirling circle_.
		|confirm
	step
	label	"pre_Jaina"
		.from Echo of Jaina##54445
		.' Absorb or Reflect _Pyroblast_ when possible.
		.' Immediately touch _Flarecore_.
		.' Dodge _Frost Blades_.
		.kill 2 Echos in the End Time instance |q 30097/1 |only if havequest(30097)
		.' Click here for more details of the boss fight. |confirm  |next "Jaina" |or
		.' or
		|confirm |next "next_2" |or
	step
	label	"Jaina"
		.from Echo of Jaina##54445
		.' _Jaina_ will _Pyroblast_ the tank throughout the whole fight, this is just a fireball that causes medium damage. This cannot be silenced but can be reflected.
		.' _Jaina_ randomly creates a bomb called _Flarecore_, in a random area that will explode and hit all party members if not touched before 10 seconds. Running into this will cause less damage, the faster someone gets to it.
		.' _Jaina_ will blink at random times and throw 3 _Frost Blades_ that can only be dodged, not jumped over. 
		.' Rinse and repeat the fight.
		.' Kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
		.' Click here to go back to the short version of the boss fight. |confirm |next "pre_Jaina" |or
		|confirm |or
	step
	label	"next_2"
		.' Click Time Transit Device and choose one of the destinations:
		.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
		.' or
		.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
		.' or
		.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
		.' or
		.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
	step
	label	"Ruby"
		.from Time-Twisted Geist##54511+
		.' Target the _Geists_ and kill the group with AoE, kill all _Geists_ first, they cause the most damage.
		.' You will take massive damage after a few seconds from Bleed effects and Disease. Save any cooldowns for about 10 seconds.
		'|modelnpc 54507
		|confirm
	step
	label	"pre_Sylvanas"
		goto End Time/3 55.8,39.0
		.from Echo of Sylvanas##54123
		.' Spread out 10 yards apart.
		.' Avoid _Blighted Ground_.
		.' Kill _Risen Ghoul_.
		.kill 2 Echos in the End Time instance |q 30097/1 |only if havequest(30097)
		.' Click here for more details of the boss fight |confirm  |next "Sylvanas" |or
		.' or
		|confirm |next "next_3" |or
	step
	label	"Sylvanas"
		goto End Time/3,55.8,39.0
		.from Echo of Sylvanas##54123
		.' _Sylvanas_ has two parts to her fight.
		.' _PART ONE_ Sylvanas will blight the ground, which looks like purple fog, don't stand in this as it will deal 35k damage per second and slow movement by 50%. _Sylvanas_ will jump up and shoot any player in this area for 50k damage and hit anyone within 10 yards of them.     
		.' _PART TWO_ (this can happen multiple times) _Sylvanas_ will pull everyone toward her as she hovers in the air. You will see circles appear in a wide radius on the ground which will spawn _Risen Ghouls_.
		.' All party members must target the same _Risen Ghoul_ and kill it before it reaches Sylvanas, or this will deal AoE damage and wipe party. Once you kill the ghoul, run through the opening in the shadows and wait until Sylvanas is on the ground again.
		.' Rinse and reapeat fight.
		.' Kill 2 Echos in the End Time instance |q 30097/1 |only if havequest(30097)
		.' Click here to go back to the short version of the boss fight. |confirm |next "pre_Sylvanas" |or
		.' or
		|confirm  |or
	step
	label	"next_3"
		.' Click Time Transit Device and choose one of the destinations:
		.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
		.' or
		.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
		.' or
		.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
		.' or
		.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
	step
	label	"Obsidian"
		'If you can, try and Control the _Twisted Breaker_, this mob can hit very hard. 
		.' If any of these mobs step into the lava, they will get a buff that will do extra fire damage. Make sure to pull a group away from the lava as you fight them. 
		.' Below is the _kill order_ for these mobs.
		.from Time-Twisted Drake##54543+
		.from Time-Twisted Seer##54553+
		.from Time-Twisted Breaker##54552+
		'The _Dragonkin_ can either be _polymorphed_ by a mage _or sapped_ by a rogue for good control, however depending on your gear, you can simply tank through these fights. 
		|confirm 
	step
	label	"pre_Baine"
		.from Echo of Baine##54431
		.' Run to other rocks as they explode.
		.' Use damage reduction ability during _Motlen Axe_.
		.kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
		.' Click here for more details of the boss fight. |confirm  |next "Baine" |or
		.' or
		|confirm |next "next_4" |or
	step
	label	"Baine"
		.from Echo of Baine##54431
		.' You will need to start tanking _Baine_ on the right or left rocks floating in lava that you see.
		.' _Baine_ has a few abilities to watch out for. When he is in the Lava, he will gain a 10 second buff _Molten Axe_ that will do additional 10k damage per hit, make sure to use cooldowns at this time as a tank.
		.' If you step in the Lava briefly, you will gain a debuff that makes you take additional fire damage, and a 20 second buff that will give you additional 10k damage per melee hit.
		.' Baine will also periodically break the rock most of the group is standing on, so make sure to use each platform in a circular path and leave the last rock next to the mainland to retreat to if you cannot kill him.	
		.kill 2 Echos in the End Time instance |q 30097/1 |only if havequest(30097)
		.' Click here to go back to the short version of the boss fight. |confirm |next "pre_Baine" |or
		.' or
		|confirm |or
	step
	label	"next_4"
		.' Click Time Transit Device and choose one of the destinations:
		.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
		.' or
		.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
		.' or
		.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
		.' or
		.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
	step
	label	 "pre_Muronzond"
		.from Muronzond##54432
		.' Face boss away from group.
		.' Use damage reduction ability during _Infinite Breath_.
		.' Rotate Boss away from _Distortion Bombs_.
		.' Click _Hourglass_ to reset fight.
		.kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
		.' Click here for more details of the boss fight. |confirm  |next "Muronzond" |or
		.' or
		|confirm |next "next_5" |or
	step
	label	"Muronzond"
		.' _Muronzond_
		.' As a tank you will need to face Boss aways from group. _Muronzond_ has _Tail Swipe_ so group cannot be directly behind boss.
		.' Tank and Melee cannot avoid _Temporal Blast_, a small AoE that deals 25k damage, this will need to be healed through.
		.' Tank will be hit with _Infinite Breath_. This is shadow damage that is dealt in a cone in front of _Muronzond_ and will follow tank if he moves left or right. This will need to be healed through.
		.' When tanking, you will have to pay attention to _Distortion Bombs_, which will be cast at ranged players and leave a circle or arcane on the ground. Move the boss slightly in a circle to allow ranged to avoid standing directly behind the boss in order to avoid these.
		.' You will see five hourglass symbols on your screen. By clicking the large hourglass in the middle of the room, you will use 1 hourglass, this resets everyone's revives all health and clears the _Distortion Bombs_ on the ground.
		.kill Murozond##54432 |q 30096/1 |only if havequest(30096)
		.from Muronzond##54432 |only if not havequest(30096)
		.' Click here to go back to the short version of the boss fight. |confirm |next "pre_Muronzond" |or
		.' or
		|confirm |or
	step
	label	"next_5"
		.' After you kill Murozond wait for Alurmi
		.talk Alurmi##57864
		..turnin Archival Purposes##30097
	step
		goto 52.1,44.5
		.talk Nozdormu##54751
		..turnin Murozond##30096
	step
		goto 52.1,44.5
		.talk Nozdormu##54751
		..accept The Well of Eternity##30098
	step
		goto 52.1,44.5
		.talk Nozdormu##54751
		.' Tell him 
		.' <Take me to the Well of Eternity> |goto Well of Eternity |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Cataclysm Dungeons\\End Time (ET)\\Damage Guide",[[
	dungeon 820
	description This Guides will walk you through tanking the End of Time dungeon and questing.
	author support@zygorguides.com
	step
		.' Press _I_ on your keyboard to open your Dungeon Finder and que for End of Time specfic Cataclysm dungeon.
		.' This guide is for a Damage role, so choose _Damage_ for your choice.
		|confirm
	step
		goto End Time,79.6,45.1
		.talk Alurmi##57864
		..accept Archival Purposes##30097
	step 
		goto 79.6,45.0
		.talk Nozdormu##54476
		..accept Murozond##30096
	step  
		goto 79.7,45.4
		.' Click Time Transit Device and choose one of the destinations:
		.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
		.' or
		.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
		.' or
		.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
		.' or
		.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
		.' or
		.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
	step
	label	"Emerald"
		'For this section, the tank should start by attacking the _Nightsabers_ and _Sentinel's_
		'When the Moonlight rays randonly appear on the map you need to run over to them. 
		.'AoE the rounded up mobs if you can, otherwise just kill them while they are standing in the beam of light.
		.'_Repeat until Tyrande_ show up.
		.from Time-Twisted Nightsaber##54688+
		.from Time-Twisted Sentinel##54512+
		|confirm
	step
		.from Echo of Tyrande##54544
		.' Tyrande will cast _Eyes of the Goddess_ which move around the outside of the pool causing damage and silencing players.
		.' It is best to remain in the pool to avoid these, but the pool will reduce your casting speed so use any speed increasing abilities you have to counteract this. 
		.' Tyrande will will send out waves of _Moonlance_ which you will need to avoid.
		.' When _Tyrande_ is at 30% health she will be surrounded by _Tears of Elune_, this looks like fireworks and damages anyone within 4 yards of it.
		.kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
		|confirm
	step
		.' Click Time Transit Device and choose one of the destinations:
		.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
		.' or
		.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
		.' or
		.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
		.' or
		.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
	step
	label	"Azure"
		'Your party will need to make their way around the map clearing trash and collecting fragments,
		.'The kill order should be _Priest_ first, then the _Riflemen_. As a DPS you will need to kill the Fountain of Light that appear also. 
		.' Below is the mobs you will encounter:
		.from Time-Twisted Priest##54690+ 
		.from Time-Twisted Sorceress##54691+
		.from Time-Twisted Rifleman##54693+
		.from Time-Twisted Footman##54687+
		'|from Fountain of Light##54795+
		'To summon the Echo of Jaina, you will need to go around and _click 16 Fragments of Jaina's Staff_. Once you have clicked all 16, she will appear in the middle of the map, in the _blue swirling circle_.
		|confirm
	step
		.from Echo of Jaina##54445
		.' _Jaina_ periodically creates a bomb called _Flarecore_, in a random area that will explode and hit all party members if not touched before 10 seconds. Running into this will cause less damage, the faster someone gets to it.
		.' _Jaina_ will blink at random times and throw 3 _Frost Blades_ that can only be dodged, not jumped over. 
		.' Rinse and repeat the fight.
		.' Kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
		|confirm
	step
		.' Click Time Transit Device and choose one of the destinations:
		.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
		.' or
		.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
		.' or
		.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
		.' or
		.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
	step
	label	"Ruby"
		.from Time-Twisted Geist##54511+
		.' Target the and kill all _Geists_ first, they cause the most damage.
		'|modelnpc 54507
		|confirm
	step
		.from Echo of Sylvanas##54123
		.' _Sylvanas_ has two parts to her fight.
		.' _PART ONE_ Sylvanas will blight the ground, which looks like purple fog, don't stand in this as it will deal 35k damage per second and slow movement by 50%. _Sylvanas_ will jump up and shoot any player in this area for 50k damage.                    
		.' _PART TWO_ (this can happen multiple times) _Sylvanas_ will say "watch as Death surrounds you" and pull everyone toward her as she hovers in the air. You will see circles appear in a wide radius on the ground which will spawn _Risen Ghouls_.
		.' All party members must target the same _Risen Ghoul_ and kill it before it reaches Sylvanas, or this will deal AoE damage and wipe the party. Once you kill the ghoul, run through the opening in the shadows and wait until Sylvanas is on the ground again.
		.' Rinse and reapeat fight.
		.' Kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
		|confirm
	step
		.' Click Time Transit Device and choose one of the destinations:
		.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
		.' or
		.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
		.' or
		.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
		.' or
		.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
	step
	label	"Obsidian"
		'Clear the dragons as a group.
		.' If any of these mobs step into the lava, they will get a buff that will do extra fire damage. The tank should pull a group away from the lava as you fight them. 
		.' Below is the _kill order_ for these mobs.
		.from Time-Twisted Drake##54543+
		.from Time-Twisted Seer##54553+
		.from Time-Twisted Breaker##54552+
		'The _Dragonkin_ can either be _polymorphed_ by a mage _or sapped_ by a rogue for extra crowd control if needed.
		|confirm
	step
		.from Echo of Baine##54431
		.' The tank should start attacking _Baine_ on the right or left rocks floating in lava that you see.
		.' Attack _Baine_ and keep him on the same platform he is standing on.
		.' Baine will also periodically break the rock most of the group is standing on, so make sure to use each platform in a circular path and leave the last rock next to the mainland to retreat to if you cannot kill him.	
		.' Falling into the Lava will give you a debuff that makes you take additional fire damage, and a 20 second buff that will give you additional 10k damage per melee hit. This is unavoidable when moving platforms but try to stay out as much as possible.
		.kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
		|confirm
	step
		.' Click Time Transit Device and choose one of the destinations:
		.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
		.' or
		.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
		.' or
		.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
		.' or
		.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
	step
	label	"Bronze"
		.' Muronzond has a frontal attack called _Infinite Breath_ that you will need to avoid. The tank should keep him turned in a way that prevents this from happening.
		.' When tanking, you will have to pay attention to _Distortion Bombs_, which will gradually fill the area with temporal rifts you will want to stay away from.
		.' You will see five hourglass symbols on your screen. By clicking the large hourglass in the middle of the room, you will use 1 hourglass, which will revive everyones health and clear the _Distortion Bombs_ on the ground.
		.from Murozond##54432 |only if not havequest(30096)
		|confirm |only if not havequest(30096)
		.kill 2 Echos in the End Time instance |q 30097/1 |only if havequest(30097)
		.kill Murozond##54432 |q 30096/1 |only if havequest(30096)
	step
		.' After you kill Murozond wait for Alurmi
		.talk Alurmi##57864
		..turnin Archival Purposes##30097
	step
		goto 52.1,44.5
		.talk Nozdormu##54751
		..turnin Murozond##30096
	step
		goto 52.1,44.5
		.talk Nozdormu##54751
		..accept The Well of Eternity##30098
	step
		goto 52.1,44.5
		.talk Nozdormu##54751
		.' Tell him 
		.' <Take me to the Well of Eternity> |goto Well of Eternity |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Cataclysm Dungeons\\End Time (ET)\\Healer Guide",[[
	dungeon 820
	description This Guides will walk you through tanking the End of Time dungeon and questing.
	author support@zygorguides.com
	step
		.' Press _I_ on your keyboard to open your Dungeon Finder and que for End of Time specfic Cataclysm dungeon.
		.' This guide is for a Healer role, so choose _Healer_ for your choice.
		|confirm
	step
		goto End Time,79.6,45.1
		.talk Alurmi##57864
		..accept Archival Purposes##30097
	step 
		goto 79.6,45.0
		.talk Nozdormu##54476
		..accept Murozond##30096
	step  
	label	"transit"
		.' Click Time Transit Device and choose one of the destinations:
		.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
		.' or
		.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
		.' or
		.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
		.' or
		.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
		.' or
		.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
	step
	label	"Emerald"
		'Follow your tank as they pull mobs.
		.' _Run to the Moonlight_ and stay in anytime it appears, this helps with killing the mobs. When one dissappears, run to the next one that spawns. 
		.' _Repeat until Tyrande_ shows up.
		|confirm
	step
	label	"pre_Tyrande"
		goto End Time/5,51.8,42.9
		.from Echo of Tyrande##54544
		.' Dodge _Moonlances_
		.' Avoid _Eyes of the Goddess_.
		.' At 30% health, she uses _Tears of Elune_. Extra heals may be needed.	
		.kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
		.' Click here for more details of the boss fight |confirm |next "Tyrande" |or
		.' or
		|confirm |next "next_1" |or
	step
	label	"Tyrande"
		goto End Time/5 51.8,42.9
		.from Echo of Tyrande##54544
		.' As a Healer you may need to use AoE heals. _Moonlance_ can be dispelled if a party member is hit by it and appear to be a streak of blue that splits into three and need to be dodged by ranged.
		.' _Piercing Gaze of Elune_ can also be dispelled.
		.' When _Tyrande_ is at 30% health she will be surrounded by _Tears of Elune_, this looks like fireworks and damages anyone within 4 yards of it.
		.kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
		.' Click here to go back to the short version of the boss fight. |confirm  |next "pre_Tyrande" |or
		|confirm |or
	step
	label	"next_1"
		.' Click Time Transit Device and choose one of the destinations:
		.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
		.' or
		.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
		.' or
		.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
		.' or
		.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
	step
	label	"Azure"
		'The mobs in this room don't hit very hard, though the fights can be lengthy depending on your groups damage.
		'To summon the Echo of Jaina, you will need to go around and _click 16 Fragments of Jaina's Staff_. Once you have clicked all 16, she will appear in the middle of the map, in the _blue swirling circle_.
		|confirm
	step
	label	"pre_Jaina"
		.from Echo of Jaina##54445
		.' Immediately touch _Flarecore_.
		.' Dodge _Frost Blades_	.
		.kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
		.' Click here for more details of the boss fight |confirm  |next "Jaina" |or
		.' or
		|confirm |next "next_2" |or
	step
	label	"Jaina"
		.from Echo of Jaina##54445
		.' _Jaina_ randomly creates a bomb called _Flarecore_, in a random area that will explode and hit all party members if not touched before 10 seconds. Running into this will cause less damage, the faster someone gets to it.
		.' _Jaina_ will blink at random times and throw 3 _Frost Blades_ that can only be dodged, not jumped over. 
		.' Use _Resistance Auras_ if you have them.
		.' Kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
		.' Click here to go back to the short version of the boss fight. |confirm |next "pre_Jaina" |or
		|confirm |or
	step
	label	"next_2"
		.' Click Time Transit Device and choose one of the destinations:
		.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
		.' or
		.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
		.' or
		.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
		.' or
		.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
	step
	label	"Ruby"
		.from Time-Twisted Geist##54511+
		.' _Dispel diseases_ from group members.
		'|modelnpc 54507
		|confirm
	step
	label	"pre_Sylvanas"
		goto End Time/3,55.8,39.0
		.from Echo of Sylvanas##54123
		.' Spread out 10 yards apart.
		.' Avoid _Blighted Ground_.
		.' Dispel _Shriek of the Highborne_ if you can dispel magic.
		.' _Unholy Shot_ deals out moderate damage, heal it.	
		.kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
		.' Click here for more details of the boss fight |confirm  |next "Sylvanas" |or
		.' or
		|confirm |next "next_3" |or
	step
	label	"Sylvanas"
		goto End Time/3,55.8,39.0
		.from Echo of Sylvanas##54123
		.' _Sylvanas_ has two parts to her fight.
		.' _PART ONE_ Sylvanas will blight the ground, which looks like purple fog, don't stand in this as it will deal 35k damage per second and slow movement by 50%. _Sylvanas_ will jump up and shoot any player in this area for 50k damage and hit anyone within 10 yards of them.      
		.' _PART TWO_ (this can happen multiple times) _Sylvanas_ will pull everyone toward her as she hovers in the air. You will see circles appear in a wide radius on the ground which will spawn _Risen Ghouls_.
		.' All party members must target the same _Risen Ghoul_ and kill it before it reaches Sylvanas, or this will deal AoE damage and wipe party. Once you kill the ghoul, run through the opening in the shadows and wait until Sylvanas is on the ground again.
		.' You can use the time to recooperate your mana if need be.
		.' Kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
		.' Click here to go back to the short version of the boss fight. |confirm |next "pre_Sylvanas" |or
		.' or
		|confirm |or
	step
	label	"next_3"
		.' Click Time Transit Device and choose one of the destinations:
		.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
		.' or
		.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
		.' or
		.' <Obsidian Dragonshrine> |goto End Time/4 29.2,16.0 <5 |noway |c |next "Obsidian" |or
		.' or
		.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
	step
	label	"Obsidian"
		'If you can, try and Control the _Twisted Breaker_, this mob can hit very hard. 
		.' If any of these mobs step into the lava, they will get a buff that will do extra fire damage. Make sure to pull a group away from the lava as you fight them. 
		.' Below is the _kill order_ for these mobs.
		.from Time-Twisted Drake##54543+
		.from Time-Twisted Seer##54553+
		.from Time-Twisted Breaker##54552+
		'The _Dragonkin_ can either be _polymorphed_ by a mage _or sapped_ by a rogue for good control, however depending on your gear, you can simply tank through these fights. 
		|confirm
	step
	label	"pre_Baine"
		.from Echo of Baine##54431
		.' Run to other rocks as they explode.
		.' _Molten Axe_ increases Baines damage output.
		.' Use _resistance aura's_ if you have them.	
		.kill 2 Echos in the End Time instance |q 30097/1 |only if havequest(30097)
		.' Click here for more details of the boss fight |confirm  |next "Baine" |or
		.' or
		|confirm |next "next_4" |or
	step
	label	"Baine"
		.from Echo of Baine##54431
		.' _Baine_ will gain _Molten Axe_ when dragged through lava. Extra heals will be needed.
		.' Baine will also periodically break the rock most of the group is standing on, so make sure to use each platform in a circular path and leave the last rock next to the mainland to retreat to if you cannot kill him.	
		.kill 2 Echos in the End Time instance. |q 30097/1 |only if havequest(30097)
		.' Click here to go back to the short version of the boss fight. |confirm |next "pre_Baine" |or
		.' or
		|confirm |or
	step
	label	"next_4"
		.' Click Time Transit Device and choose one of the destinations:
		.' <Emerald Dragonshrine> |goto End Time/5 66.5,79.5 <5 |noway |c |next "Emerald" |or
		.' or
		.' <Azure Dragonshrine> |goto End Time/2 |noway |c |next "Azure" |or
		.' or
		.' <Ruby Dragonshrine> |goto End Time/3 34.3,43.2 <5 |noway |c |next "Ruby" |or
		.' or
		.' <Bronze Dragonshrine> |goto End Time/6 36.5,77.5 <5 |noway |c |next "Bronze" |or
	step
	label	 "pre_Muronzond"
		.from Muronzond##54432
		.' Don't be in front of behind the boss.
		.' Avoid _Distortion Bombs_.
		.' Click _Hourglass_ to reset fight.
		.' Click here for more details of the boss fight |confirm |next "Muronzond" |or
		.' or
		|confirm |next "next_5" |or
	step
	label	"Muronzond"
		.' _Muronzond_
		.' _Muronzond_ has _Tail Swipe_ so group cannot be directly behind boss.
		.' Tank and Melee cannot avoid _Temporal Blast_, a small AoE that deals 25k damage, this will need to be healed through.
		.' Tank will be hit with _Infinite Breath_. This is shadow damage that is dealt in a cone in front of _Muronzond_ and will follow tank if he moves left or right. This will need to be healed through.
		.' _Distortion Bombs_ will be cast at ranged players and leave a circle or arcane on the ground. Move the boss slightly in a circle to allow ranged to avoid standing directly behind the boss in order to avoid these.
		.' You will see five hourglass symbols on your screen. By clicking the large hourglass in the middle of the room, you will use 1 hourglass, this resets everyone's revives all health and clears the _Distortion Bombs_ on the ground.
		.kill Murozond##54432 |q 30096/1 |only if havequest(30096)
		.from Muronzond##54432 |only if not havequest(30096)
		.' Click here to go back to the short version of the boss fight. |confirm |next "pre_Muronzond" |or
		.' or
		|confirm |only if not havequest (30096) |or
	step
	label	"next_5"
		.' After you kill Murozond wait for Alurmi
		.talk Alurmi##57864
		..turnin Archival Purposes##30097
	step
		goto 52.1,44.5
		.talk Nozdormu##54751
		..turnin Murozond##30096
		..accept The Well of Eternity##30098
	step
		goto 52.1,44.5
		.talk Nozdormu##54751
		.' Tell him 
		.' <Take me to the Well of Eternity> |goto Well of Eternity |noway |c
]])

ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Cataclysm Dungeons\\Well of Eternity (WoE)\\Tank Guide",[[
	dungeon 816
	step
		goto Well of Eternity,27.3,64.2
		.talk Nozdormu##55624
		..turnin The Well of Eternity##30098
	step
		goto Well of Eternity,27.3,64.2
		.talk Nozdormu##55624
		..accept In Unending Numbers##30099
	step
		goto 26.0,63.0
		.talk Alurmi##57864
		..accept Documenting the Timeways##30104
	step
		goto Well of Eternity 26.2,65.6
		.from Legion Demon##55503
		.' He will use 2 abilities. He will leap to a random party causing damage to anyone nearby.
		.' He also uses an ability that will cause 25k Shadow damage to the group which applies a damage debuff by 10%, this can stack multiple times.
		.' Archive a Legion Demon |q 30104/1 |only if havequest(30104)
		|confirm |only if not havequest(30104)
	step
		 goto Well of Eternity 19.6,68.8
		.talk Illidan Stormrage##55500
		.' <I am ready to be hidden by your shadowcloak>.
		|confirm
	step
		goto 27.1,56.7
		'Wait for Illidan to throw down smoke bombs and then run through the gap in the line of demons.
		.' Take out the Dreadlords first and try to interrupt their _Carrion Swarm_, this causes big shadow damage to anyone in front of them.
		.from Dreadlord Defender##55656+, Corrupted Arcanist##55654
		.click Portal Energy Focus##6905
		.' Disable the First portal. |q 30099/1 |only if havequest(30099)
		|confirm |only if not havequest(30099)
	step
		goto 18.7,38.4
		.' Take out the Dreadlords first and try to interrupt their _Carrion Swarm_, this causes big shadow damage to anyone in front of them.
		.from Dreadlord Defender##55656+, Corrupted Arcanist##55654
		.click Portal Energy Focus##6905
		.' Disable Second portal. |q 30099/2 |only if havequest(30099)
		|confirm |only if not havequest(30099)
	step
		goto 15.9,35.1
		.' Take out the Dreadlords first and try to interrupt their _Carrion Swarm_, this causes big shadow damage to anyone in front of them.
		.from Dreadlord Defender##55656+, Corrupted Arcanist##55654
		.click Portal Energy Focus##6905
		.' Disable Third portal |q 30099/3 |only if havequest(30099)
		|confirm |only if not havequest(30099)
	step
	label	"pre_Peroth"
		goto 19.5,52.0
		.' Tanks take 20% increased damage during this fight.
		.' At _60%_ Peroth'arn will vanish, _avoid_ the _Eyes of Peroth'arn_ at all costs.
		.kill Peroth'arn##55085 |q 30099/4 |only if havequest(30099)
		.from Peroth'arn##55085 |only if not havequest(30099)
		.' Click here for a more detailed boss fight. |confirm |next "Peroth" |or
		.' or
		|confirm |next "part2" |or
	step
	label	"Peroth"
		goto 19.5,52.0
		.' Tanks will receive a debuff that increases their damage taken by 20%, this is unavoidable.
		.' _Fel Decay_ will target a random player, then leave an AoE circle on the ground. Stay out of this.
		.' At _60% health_, Peroth'arn will _stun the group_, and deal shadow damage for 4 seconds. He will vanish after this and the group can recover before the eyes spawn.
		.' While he is stealthed, _avoid detection_ by the _Eyes of Peroth'arn_. If any party member is detected, Peroth'arn will ambush that person and deal massive damage until the tank can taunt.
		.kill Peroth'arn##55085 |q 30099/4 |only if havequest(30099)
		.from Peroth'arn##55085 |only if not havequest(30099)
		.' Click here for a less detailed boss fight. |confirm |next "pre_Peroth" |or
		.' or
		|confirm |or
	step
	label	"part2"
		goto 29.4,40.0
		.talk Nozdormu##55624
		..turnin In Unending Numbers##30099
	step
		goto 29.4,40.0
		.talk Nozdormu##55624
		..accept The Vainglorious##30100
	step
		goto 33.6,35.1
		.' Walking along this path you will encounter groups of 3.
		.' Kill spellcasters first as they do damage to the whole group.
		.from Enchanted Highmistress##56579
		.from Enchanted Magus##54882
		.from Eternal Champion##54612
		|confirm
	step
		goto 31.5,29.4
		.from Eye of the Legion##54747
		.' Tank these facing away from your group, they deal massive channeled fire damage called _Fel Flames_ in a frontal cone. This can be interrupted.
		|confirm
	step
		goto 43.7,27.3
		.' The handmaidens are very easy to kill. They throw bottles of nature damage and can put members to sleep, however if you kill them fast enough, you won't have any trouble.
		.from Royal Handmaiden##54645+
		.' Archive Royal Handmaiden |q 30104/2
		|only if havequest(30104)
	step
	label	"pre_Queen"
		goto 47.2,36.9
		.' Kill all the commanded _Magus'_.
		.' Interrupt Queen Azhara's _Total Obedience_.
		.from Queen Azshara##54853
		.' Click here for a more detailed boss fight. |confirm |next "Queen" |or
		.' or
		|confirm |next "part3" |or
	step
	label	"Queen"
		goto 47.2,36.9
		.' Tank can start the fight by _hitting or taunting Queen Azshara_: |tip *NOTE* You will not attack the Queen, killing all guards will end the fight.
		.' The _Queen_ will _summon 2 Magus'_ to life to attack the group. These will be summoned about _every 30 seconds_. Pick these adds up.
		.' The Queen will often use the spell _Total Obedience_ and charm your entire party. _Interrupt_ this or it will kill your group. It is best to have a _ranged DPS, or a healer_ that can _interrupt_ this at all times. 
		.' There are 3 types of Magus' that will be summoned in pairs.Each of these use basic spells and keeping aggro will allow your group to survive.
		.from Queen Azshara##54853
		.' Defeat Queen Azshara. |q 30100/1 |only if havequest(30100)
		.' Click here for a less detailed boss fight. |confirm |next "pre_Queen" |or
		.' or
		|confirm
	step
	label	"part3"
		goto 43.9,32.9
		.' Click the Time Transit Device.
		.' Teleport to The Well of Eternity. |goto 73.1,84.0 <5 |noway |c
	step
		goto 71.7,80.6
		.talk Image of Nozdormu##55624
		..accept The Path to the Dragon Soul##30101
	step
		goto Well of Eternity 73.2,77.7
		.' Wait for _Tyrande_ to cast Light of Elune. Once you see this light, aggro a demon and they will all come to fight. Stay in the light to help kill them all fast.
		.from Doomguard Annihilator##55519+
		|confirm 
	step
		goto 83.8,61.2
		.' When fighting the Doombringer, he will constantly cast Abyssal Flames which damages the whole group for 40k fire damage. Kill him fast to keep the group from dying.
		.from Abyssal Doombringer##55510
		|confirm
	step
	label	"pre_Mannoroth"
		goto 84.7,55.0
		.from Captain Varo'then##55419
		.' Avoid _Fel Firestorm_
		.' Keep threat on Demons from open Portal.
		.' Once in Demon form, kill Mannoroth.
		.' Archive Captain Varo'then. |q 30104/3 |only if havequest(30104)
		.kill Mannoroth##54969 |q 30101/1 |only if havequest(30101)
		.from Mannoroth##54969 |only if not havequest(30101)
		.' Click here for a more detailed boss fight. |confirm |next "Mannoroth" |or
		.' or
		|confirm |next "part4" |only if not havequest(30101) or not havequest(30104)|or
	step
	label	"Mannoroth"
		goto 84.7,55.0
		.' _PART ONE_ 
		.from Captain Varo'then##55419
		.' When coming up to fight Mannoroth, you will first face Captain Varo'then.
		.' Captain Varo'then will attack with _Magistrike_ dealing _30k fire damage_ and jumps to any player nearby.
		.' _Fel Firestorm_ will fall from the sky often. This is a rapid _Fel Flame_ that flows _along the ground_. Stay out of it.       
		.' _PART TWO_ 
		.' After Varo'then is dead, click the sword that falls and start attacking Mannoroth, you will not have to hold threat. After a short time, a portal will open releasing lots of Doomguards and Demons.
		.' Stand near the portal and aoe any demon that comes out. _Tyrande Whisperwind_ will cast _Light of Elune_, bringing all demons in this light to kill much faster.
		.' Continue picking up demons and killing them until Mannoroth is weak. When he gets to 40%, your entire party will be turned into demons, at this point the fight is over. Fight until Mannoroth retreats.
		.' Archive Captain Varo'then. |q 30104/3 |only if havequest(30104)
		.kill Mannoroth##54969 |q 30101/1 |only if havequest(30101)
		.' Click here for a less detailed boss fight. |confirm always |next "pre_Mannoroth"
		.' or
		|confirm
	step
	label	"part4"
		goto 87.8,49.9
		.talk Alurmi##57864
		..turnin Documenting the Timeways##30104
	step
		goto 84.6,55.9
		.talk Illidan Stormrage##55532
		..turnin The Path to the Dragon Soul##30101
	step
		goto 87.3,49.3
		.talk Chromie##57913
		..accept The Hour of Twilight##30102
	step
		goto 87.3,49.3
		.talk Chromie##57913
		.' <I am ready to help Thrall, back in my present time.>  |goto Hour of Twilight |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Cataclysm Dungeons\\Well of Eternity (WoE)\\Damage Guide",[[
	dungeon 816
	step
		goto Well of Eternity,27.3,64.2
		.talk Nozdormu##55624
		..turnin The Well of Eternity##30098
	step
		goto Well of Eternity,27.3,64.2
		.talk Nozdormu##55624
		..accept In Unending Numbers##30099
	step
		goto 26.0,63.0
		.talk Alurmi##57864
		..accept Documenting the Timeways##30104
	step
		goto Well of Eternity,26.2,65.6
		.from Legion Demon##55503
		.' He will use 2 abilities. He will leap to a random party causing damage to anyone nearby.
		.' He also uses an ability that will cause 25k Shadow damage to the group which applies a damage debuff by 10%, this can stack multiple times.
		.' Archive a Legion Demon |q 30104/1 |only if havequest(30104)
		|confirm |only if not havequest(30104)
	step
		 goto Well of Eternity 19.6,68.8
		.talk Illidan Stormrage##55500
		.' <I am ready to be hidden by your shadowcloak>.
		|confirm
	step
		goto 27.1,56.7
		'Wait for Illidan to throw down smoke bombs and then run through the gap in the line of demons.
		.' Take out the Dreadlords first and try to interrupt their _Carrion Swarm_, this causes big shadow damage to anyone in front of them.
		.from Dreadlord Defender##55656+, Corrupted Arcanist##55654
		.click Portal Energy Focus##6905
		.' Disable the First portal. |q 30099/1 |only if havequest(30099)
		|confirm |only if not havequest(30099)
	step
		goto 18.7,38.4
		.' Take out the Dreadlords first and try to interrupt their _Carrion Swarm_, this causes big shadow damage to anyone in front of them.
		.from Dreadlord Defender##55656+, Corrupted Arcanist##55654
		.click Portal Energy Focus##6905
		.' Disable Second portal. |q 30099/2 |only if havequest(30099)
		|confirm |only if not havequest(30099)
	step
		goto 15.9,35.1
		.' Take out the Dreadlords first and try to interrupt their _Carrion Swarm_, this causes big shadow damage to anyone in front of them.
		.from Dreadlord Defender##55656+, Corrupted Arcanist##55654
		.click Portal Energy Focus##6905
		.' Disable Third portal |q 30099/3 |only if havequest(30099)
		|confirm |only if not havequest(30099)
	step
		goto 19.5,52.0
		.' _Fel Decay_ will target a random player, then leave an AoE circle on the ground. Stay out of this.
		.' At _60% health_, Peroth'arn will _stun the group_, and deal shadow damage for 4 seconds. He will vanish after this, giving you time to recover.
		.' While he is stealthed, _avoid detection_ by the _Eyes of Peroth'arn_. If any party member is detected, Peroth'arn will ambush that person and deal massive damage until the tank can taunt.
		.' He will return if the group remains undetected by the _Eyes of Peroth'arn_ for 40 seconds.
		.kill Peroth'arn##55085 |q 30099/4 |only if havequest(30099)
		.from Peroth'arn##55085 |only if not havequest(30099)
		|confirm |only if not havequest(30099)
	step
		goto 29.4,40.0
		.talk Nozdormu##55624
		..turnin In Unending Numbers##30099
	step
		goto 29.4,40.0
		.talk Nozdormu##55624
		..accept The Vainglorious##30100
	step
		goto 33.6,35.1
		.' Walking along this path you will encounter groups of 3.
		.' Kill spellcasters first as they do damage to the whole group.
		.from Enchanted Highmistress##56579
		.from Enchanted Magus##54882
		.from Eternal Champion##54612
		|confirm
	step
		goto 31.5,29.4
		.from Eye of the Legion##54747
		.' Tank these facing away from your group, they deal massive channeled fire damage called _Fel Flames_ in a frontal cone. This can be interrupted.
		|confirm
	step
		goto 43.7,27.3
		.' The handmaidens are very easy to kill. They throw bottles of nature damage and can put members to sleep, however if you kill them fast enough, you won't have any trouble.
		.from Royal Handmaiden##54645+
		.' Archive Royal Handmaiden |q 30104/2
		|only if havequest(30104)
	step
		goto 47.2,36.9
		.' *NOTE* You will not attack the Queen, killing all guards will end the fight.
		.' The _Queen_ will _summon 2 Magus'_ to life to attack the group. These will be summoned about _every 30 seconds_.
		.' The Frost Magus unleashes a very powerful attack you will want to dodge called _Coldflame_. This looks like a blue line of energy on the ground. You will know it's coming by the spinning blue circles that appear before it hits.
		.' The Queen will often use the spell _Total Obedience_ and charm your entire party. _Interrupt_ this or it will kill your group. It is best to have a _ranged DPS, or a healer_ that can _interrupt_ this at all times. 
		.' She will also cast _Servant of the Queen_ which mind controls a player. Kill the puppet strings above that character to release them.
		.from Queen Azshara##54853
		.' Defeat Queen Azshara |q 30100/1 |only if havequest(30100)
		|confirm
	step
		goto 43.9,32.9
		.' Click the Time Transit Device
		.' Teleport to The Well of Eternity. |goto 73.1,84.0 <5 |noway |c
	step
		goto 71.7,80.6
		.talk Image of Nozdormu##55624
		..accept The Path to the Dragon Soul##30101
	step
		goto Well of Eternity,73.2,77.7
		.' Wait for _Tyrande_ to cast Light of Elune. Once you see this light, aggro a demon and they will all come to fight. Stay in the light to help kill them all fast.
		.from Doomguard Annihilator##55519+
		|confirm always
	step
		goto 83.8,61.2
		.' When fighting the Doombringer, he will constantly cast Abyssal Flames which damages the whole group for 40k fire damage. Kill him fast to keep the group from dying.
		.from Abyssal Doombringer##55510
		|confirm
	step
		goto 84.7,55.0
		.' _PART ONE_ 
		.from Captain Varo'then##55419
		.' When coming up to fight Mannoroth, you will first face Captain Varo'then.
		.' Captain Varo'then will attack with _Magistrike_ dealing _30k fire damage_. This jumps to any player nearby.
		.' _Fel Firestorm_ will fall from the sky often. This is a rapid _Fel Flame_ that flows _along the ground_. Stay out of it.       
		.' _PART TWO_ 
		.' After Varo'then is dead, click the sword that falls and start attacking Mannoroth. After a short time, a portal will open releasing lots of Doomguards and Demons.
		.' Stand near the portal and aoe any demon that comes out until Tyrande Whisperwind is free. 
		.' Attack Mannoroth and avoid the fire that rains from the sky. If you attract any adds run to your tank so that he may pick them up.
		.' Attack Mannoroth until he gets to 40%. At this point, your entire party will be turned into demons and the fight is over. Fight until Mannoroth retreats.
		.' Archive Captain Varo'then. |q 30104/3 |only if havequest(30104)
		.kill Mannoroth##54969 |q 30101/1 |only if havequest(30101)
		|confirm |only if not havequest(30101)
	step
		goto 87.8,49.9
		.talk Alurmi##57864
		..turnin Documenting the Timeways##30104
	step
		goto 84.6,55.9
		.talk Illidan Stormrage##55532
		..turnin The Path to the Dragon Soul##30101
	step
		goto 87.3,49.3
		.talk Chromie##57913
		..accept The Hour of Twilight##30102
	step
		goto 87.3,49.3
		.talk Chromie##57913
		.' <I am ready to help Thrall, back in my present time.>  |goto Hour of Twilight |noway |c
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Cataclysm Dungeons\\Well of Eternity (WoE)\\Healer Guide",[[
	dungeon 816
	description This guide will walk you through the Well of Eternity
	description instance with quests involved from a Healers perspective.
	step
		goto Well of Eternity,27.3,64.2
		.talk Nozdormu##55624
		..turnin The Well of Eternity##30098
	step
		goto Well of Eternity,27.3,64.2
		.talk Nozdormu##55624
		..accept In Unending Numbers##30099
	step
		goto 26.0,63.0
		.talk Alurmi##57864
		..accept Documenting the Timeways##30104
	step
		goto Well of Eternity,26.2,65.6
		.from Legion Demon##55503
		.' He will use 2 abilities. He will leap to a random party causing damage to anyone nearby 
		.' He also uses an ability that will cause 25k Shadow damage to the group which applies a damage debuff by 10%, this can stack multiple times.
		.' Archive a Legion Demon |q 30104/1 |only if havequest(30104)
		|confirm |only if not havequest(30104)
	step
		 goto Well of Eternity 19.6,68.8
		.talk Illidan Stormrage##55500
		.' <I am ready to be hidden by your shadowcloak>.
		|confirm
	step
		goto 27.1,56.7
		'Wait for Illidan to throw down smoke bombs and then run through the gap in the line of demons.
		.' Take out the Dreadlords first and try to interrupt their _Carrion Swarm_, this causes big shadow damage to anyone in front of them.
		.from Dreadlord Defender##55656+, Corrupted Arcanist##55654
		.click Portal Energy Focus##6905
		.' Disable the First portal. |q 30099/1 |only if havequest(30099)
		|confirm |only if not havequest(30099)
	step
		goto 18.7,38.4
		.' Take out the Dreadlords first and try to interrupt their _Carrion Swarm_, this causes big shadow damage to anyone in front of them.
		.from Dreadlord Defender##55656+, Corrupted Arcanist##55654
		.click Portal Energy Focus##6905
		.' Disable Second portal |q 30099/2 |only if havequest(30099)
		|confirm |only if not havequest(30099)
	step
		goto 15.9,35.1
		.' Take out the Dreadlords first and try to interrupt their _Carrion Swarm_, this causes big shadow damage to anyone in front of them.
		.from Dreadlord Defender##55656+, Corrupted Arcanist##55654
		.click Portal Energy Focus##6905
		.' Disable Third portal |q 30099/3 |only if havequest(30099)
		|confirm |only if not havequest(30099)
	step
		goto 19.5,52.0
		.' Tanks take 20% increased damage during this fight.
		.' For this fight, be careful of healing those with the Fel Decay debuff. You will take equal damage that your heals do to that target.
		.' He randomly places a DoT called _Fel Flames_ on a party member, so be ready to heal through it.
		.' When he hits 60%, he will deal massive AoE damage, so be sure to heal up the party before hand.
		.' He will return if the group remains undetected by the _Eyes of Peroth'arn_ for 40 seconds. If any party member is detected, Peroth'arn will ambush that person and deal massive damage until the tank can taunt.
		.kill Peroth'arn##55085 |q 30099/4 |only if havequest(30099)
		.from Peroth'arn##55085 |only if not havequest(30099)
		|confirm |only if not havequest(30099)
	step
		goto 29.4,40.0
		.talk Nozdormu##55624
		..turnin In Unending Numbers##30099
	step
		goto 29.4,40.0
		.talk Nozdormu##55624
		..accept The Vainglorious##30100
	step
		goto 33.6,35.1
		.' Walking along this path you will encounter groups of 3.
		.' Kill spellcasters first as they do damage to the whole group.
		.from Enchanted Highmistress##56579
		.from Enchanted Magus##54882
		.from Eternal Champion##54612
		|confirm
	step
		goto 31.5,29.4
		.from Eye of the Legion##54747
		.' Tank these facing away from your group, they deal massive channeled fire damage called _Fel Flames_ in a frontal cone. This can be interrupted.
		|confirm
	step
		goto 43.7,27.3
		.' The handmaidens are very easy to kill. They throw bottles of nature damage and can put members to sleep, however if you kill them fast enough, you won't have any trouble.
		.from Royal Handmaiden##54645+
		.' Archive Royal Handmaiden |q 30104/2
		|only if havequest(30104)
	step
		goto 47.2,36.9
		.' The adds Queen Azshara summons will place random AoE spells on the ground, avoid them if at all possible.
		.' If you have any form of interrupt, use it to interrupt _Total Obedience_, which Queen Azshara casts herself. It will be a wipe if you don't.
		.from Queen Azshara##54853
		.' Defeat Queen Azshara. |q 30100/1 |only if havequest(30100)
		|confirm |only if not havequest(30100)
	step
		goto 43.9,32.9
		.' Click the Time Transit Device.
		.' Teleport to The Well of Eternity. |goto 73.1,84.0 <5 |noway |c
	step
		goto 71.7,80.6
		.talk Image of Nozdormu##55624
		..accept The Path to the Dragon Soul##30101
	step
		goto Well of Eternity 73.2,77.7
		.' Wait for _Tyrande_ to cast Light of Elune. Once you see this light, aggro a demon and they will all come to fight. Stay in the light to help kill them all fast.
		.from Doomguard Annihilator##55519+
		|confirm 
	step
		goto 83.8,61.2
		.' When fighting the Doombringer, he will constantly cast Abyssal Flames which damages the whole group for 40k fire damage. Kill him fast to keep the group from dying.
		.from Abyssal Doombringer##55510
		|confirm
	step
		goto 84.7,55.0
		.' _PART ONE_ 
		.from Captain Varo'then##55419
		.' When coming up to fight Mannoroth, you will first face Captain Varo'then.
		.' Captain Varo'then will attack with _Magistrike_ dealing _30k fire damage_. This jumps to any player nearby.
		.' _Fel Firestorm_ will fall from the sky often. This is a rapid _Fel Flame_ that flows _along the ground_. Stay out of it. 
		.' _PART TWO_ 
		.' After Varo'then is dead, click the sword that falls.
		.' Your tank will be picking up a lot of adds so this is where the majority of your attention should be.
		.' When Mannoroth reaches 40% your entire group will be turned into demons, at this point the fight is over. 
		.' Archive Captain Varo'then |q 30104/3 |only if havequest(30104)
		.kill Mannoroth##54969 |q 30101/1 |only if havequest(30101)
		.from Mannoroth##54969  |only if not havequest(30101)
		|confirm |only if not havequest(30101) or not havequest(30104)
	step
		goto 87.8,49.9
		.talk Alurmi##57864
		..turnin Documenting the Timeways##30104
	step
		goto 84.6,55.9
		.talk Illidan Stormrage##55532
		..turnin The Path to the Dragon Soul##30101
	step
		goto 87.3,49.3
		.talk Chromie##57913
		..accept The Hour of Twilight##30102
	step
		goto 87.3,49.3
		.talk Chromie##57913
		.' Tell Chromie
		.' <I am ready to help Thrall, back in my present time.>  |goto Hour of Twilight |noway |c
]])

ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Cataclysm Dungeons\\Hour of Twilight (HoT)\\Tank Guide",[[
	dungeon 819
	step
		goto Hour of Twilight,48.7,19.7
		.talk Thrall##54548
		..turnin The Hour of Twilight##30102
		..accept To Wyrmrest!##30103
	step
		goto Hour of Twilight,48.7,19.7
		.talk Thrall##54548
		.' <Yes Thrall>
		|confirm always
	step
		map Hour of Twilight
		path follow strict;loop off;ants straight
		path	50.9,20.3	52.3,21.6	53.9,23.1
		.' Follow this path and kill the groups.
		.' Talk to Thrall when you are ready to face the boss.
		|confirm always
	step
	label	"pre_Arcurion"
		goto 56.7,27.4
		.from Arcurion##54590
		.' Avoid _Icy Boulders_.
		.' Interrupt or use damage reduction ability on _Hand of Frost_.
		.' At 30% use damage modifiers as needed.
		.' Click here for a more detailed boss fight. |confirm |next "Arcurion" |or
		.' or
		|confirm |next "part2"
	step
	label	"Arcurion"
		goto 56.7,27.4
		'Arcurion will cast _Hand of Frost_ dealing _50k damage_ to his target. 
		.' Arcurion will cast _chains of frost_, freezing all targets (65yds) and _dealing 10k damage_.
		.' You will see blue _circles mark the ground_ for a few seconds, do not stand in this. _Frozen Servitors_ on top of cliffs are throwing _Icy Boulders_ and you will freeze if caught in it.
		.' Keep _Thrall out of the Ice block_ by damaging it when he is frozen, he will keep the Frozen Servitors at a minimum for less circles.
		.' At _30% health_, boss will do a _massive aoe_ in which all damage needs to be directed at boss for final blows.
		.from Arcurion##54590
		.' Click here for a less detailed boss fight. |confirm |next "pre_Arcurion" |or
		.' or
		|confirm
	step
	label "part2"
		.talk Thrall##54548
		.' <Lead the Way>
		|confirm always
	step
		goto 43.7,45.3
		.talk Thrall##54548
		.' <Yes Thrall lets do this>
		|confirm always
	step 
		map Hour of Twilight
		path follow loose;loop off;ants straight
		path	45.5,47.1	45.6,49.0
		path	43.0,50.0	40.4,48.7
		.' _Follow Thrall_ through this canyon.
		.' You will have to fight a _few groups_ through this area.
		.from Twilight Assassin##55106+
		.from Twilight Thug##55111+
		.from Twilight Bruiser##55112+
		.from Twilight Ranger##55107+
		.from Twilight Shadow-Walker##55109+
		'|modelnpc 55474
		|confirm always
	step
	label	"pre_Asira"
		goto Hour of Twilight,39.5,52.4
		.from Asira Dawnslayer##54968
		.' Avoid _Choking Smoke Bomb_.
		.' Stan in _Thrall's Fire Totem_.
		.' Click here for a more detailed boss fight. |confirm |next "Asira" |or
		.' or
		|confirm |next "part3"
	step
	label	"Asira"
		goto Hour of Twilight,39.5,52.4
		.' Asira will _mark_ a random _spellcaster_ and if this spellcaster casts a spell, boss will throw a knife, hitting anyone between the player and the boss. This will silence whoever it hits.
		.' Asira will create _Choking Smoke Bomb_ which will not allow players to target into this cloud, while also inflicting _5k Nature damage_ every .5 seconds.
		.' Make sure to stand near _Thall's Fire Totem_, this will _increase health and damage_ of party members nearby.
		.from Asira Dawnslayer##54968
		.' Click here for a less detailed boss fight |confirm |next "pre_Asira" |or
		.' or
		|confirm |next "part3"
	step  
	label	"part3"
		goto Hour of Twilight 39.5,52.4
		.from Asira Dawnslayer##54968
		.collect Urgent Twilight Missive##77957 |n
		.' Click the Urgent Twilight Missive in your bags. |use Urgent Twilight Missive##77957
		..accept The Twilight Prophet##30105 
	step
		goto 40.1,50.8
		.clicknpc Life Warden##55549
		|invehicle |c
	step
		.' You will land next to Thrall on the road to Wyrmrest Temple.
		|outvehicle |c
	step
		map Hour of Twilight
		path follow loose; loop off; straight
		path	49.8,70.2	49.7,71.7	49.4,75.4
		path	49.4,81.0
		path	49.6,82.8
		.' _Follow Thrall_ through this canyon.
		.' Kill the _Shadow Borer's first_, they interrupt and stop healing.
		.from Faceless Shadow Weaver##54633+
		.from Faceless Brute##54632+
		.from Shadow Borer##54686+
		.' Enter Wyrmrest Temple here. |goto Hour of Twilight 49.6,82.8 <5|noway |c
	step
	label	"pre_Bishop"
		goto Hour of Twilight/2 47.2,50.9
		.from Archbishop Benedictus##54938
		.' Spread out 10 yards.
		.' Avoid _Wave of Virtue_ stand in blue shell.
		.' Avoid _Wave of Twilight_ run to the side.
		.' Unmask the Twilight Prophet. |q 30105/1 |only if havequest(30105)
		.' Escort Thrall to Wyrmrest Temple. |q 30103/1 |only if havequest(30103)
		.' Click here for a more detailed boss fight |confirm |next "Bishop" |or
		.' or
		|confirm |next "part4"
	step
	label	"Bishop"
		goto Hour of Twilight/2 47.2,50.9
		.' Archbishop has a lot of spells that will affect nearby players, _spread out_ before fight starts. 
		.' Thrall will help with the first part of the fight, he will put a blue shell on the ground that you can use for protection and a damage buff. Stand in his _Water Shell_ whenever you see it.
		.' _Wave of Virtue_ and _Wave of Twilight_ are waves of Holy or Shadow that will sweep across the stage. These _knock_ anyone _back_ and cause _100k damage_. Run to the side to avoid or stand in the _Water Shell_ for the first part of fight. 
		.' Archbishop will target a random member and cast _Twilight Shear_ or _Purifying Blast_ dealing damage to the target and nearby friendly players.
		.' There are _2 stages_ of this fight, he will switch from _holy to shadow_ at _60% health_, the only difference is that Thrall will be trapped and damage will be shadow instead of holy.
		.from Archbishop Benedictus##54938
		.' Unmask the Twilight Prophet. |q 30105/1 |only if havequest(30105)
		.' Escort Thrall to Wyrmrest Temple. |q 30103/1 |only if havequest(30103)
		.' Click here for a less detailed boss fight |confirm |next "pre_Bishop" |or
		.' or |only if havequest(30103) or havequest(30105)
		|confirm |only if havequest(30103) or havequest(30105)
	step
	label	"part4"
		goto 46.9,45.0
		.talk Thrall##54971
		..turnin To Wyrmrest!##30103
		..turnin The Twilight Prophet##30105
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Cataclysm Dungeons\\Hour of Twilight (HoT)\\DPS Guide",[[
	dungeon 819
	step
		goto Hour of Twilight,48.7,19.7
		.talk Thrall##54548
		..turnin The Hour of Twilight##30102
		..accept To Wyrmrest!##30103
	step
		goto Hour of Twilight,48.7,19.7
		.talk Thrall##54548
		.' <Yes Thrall>
		|confirm always
	step
		map Hour of Twilight
		path follow strict;loop off;ants straight
		path	50.9,20.3	52.3,21.6	53.9,23.1
		.' Follow this path and kill the groups.
		.' Talk to Thrall when you are ready to face the boss.
		|confirm always
	step
		goto 56.7,27.4
		.' Arcurion will cast _Chains of Frost_, freezing all targets in place and _dealing 10k damage_.
		.' You will see blue _circles mark the ground_ for a few seconds, do not stand in this. _Frozen Servitors_ on top of cliffs are _throwing boulders_ and you will freeze if caught in it.
		.' Keep _Thrall out of the Ice block_ by damaging it when he is frozen, he will keep the Frozen Servitors at a minimum for less circles.
		.' At _30% health_, Arcurion will do a _massive aoe_, burn him down.
		.from Arcurion##54590
		|confirm always
	step
		.talk Thrall##54548
		.' <Lead the Way>
		|confirm always
	step
		goto 43.7,45.3
		.talk Thrall##54548
		.' <Yes Thrall lets do this>
		|confirm always
	step 
		map Hour of Twilight
		path follow loose;loop off;ants straight
		path	45.5,47.1	45.6,49.0
		path	43.0,50.0	40.4,48.7
		.' _Follow Thrall_ through this canyon.
		.' You will have to fight a _few groups_ through this area.
		.from Twilight Assassin##55106+
		.from Twilight Thug##55111+
		.from Twilight Bruiser##55112+
		.from Twilight Ranger##55107+
		.from Twilight Shadow-Walker##55109+
		'|modelnpc 55474
		|confirm always
	step
		goto Hour of Twilight,39.5,52.4
		.' Asira will use _Mark of Silence_ on a random _spellcaster_ and if this spellcaster casts a spell, boss will throw a knife, hitting anyone between the player and the boss. This will silence whoever it hits.
		.' Boss will create _Choking Smoke Bomb_ which will not allow players to target while in this cloud. It will also inflict _5k Nature damage_ every .5 seconds.
		.' Make sure to stand near _Thall's Fire Totem_ if you can, this will _increase health and damage_ of party members nearby.
		.from Asira Dawnslayer##54968
		|confirm always
	step  
		goto Hour of Twilight,39.5,52.4
		.from Asira Dawnslayer##54968
		.collect Urgent Twilight Missive##77957 |n
		.' Click the Urgent Twilight Missive in your bags |use Urgent Twilight Missive##77957
		..accept The Twilight Prophet##30105
	step
		goto 40.1,50.8
		.clicknpc Life Warden##55549
		|invehicle |c
	step
		.' You will land next to Thrall on the road to Wyrmrest Temple 
		|outvehicle |c
	step
		map Hour of Twilight
		path follow loose; loop off; straight
		path	49.8,70.2	49.7,71.7	49.4,75.4
		path	49.4,81.0
		path	49.6,82.8
		.' _Follow Thrall_ through this canyon.
		.' As Damage you should kill the _Shadow Borer's first_, as they interrupt and stop healing.
		.from Faceless Shadow Weaver##54633+
		.from Faceless Brute##54632+
		.from Shadow Borer##54686+
		.' Enter Wyrmrest Temple here |goto Hour of Twilight,49.6,82.8,1|noway |c
	step
		goto Hour of Twilight/2,47.2,50.9
		.' Archbishop has a lot of spells that will affect nearby players, _spread out_ before fight starts. 
		.' _Wave of Virtue_ and _Wave of Twilight_ are waves of Holy or Shadow that will sweep across the stage. These _knock_ anyone _back_ and cause _100k damage_. Run over to Thrall's blue _Water shield_ when you see this coming.
		.' There are _2 stages_ of this fight, he will switch from _holy to shadow_ at _60% health_, the only difference in the second stage is Thrall will be trapped and damage will be shadow instead of holy.
		.from Archbishop Benedictus##54938
		|confirm always
	step
		goto 46.9,45.0
		.talk Thrall##54971
		..turnin To Wyrmrest!##30103
		..turnin The Twilight Prophet##30105
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Cataclysm Dungeons\\Hour of Twilight (HoT)\\Healer Guide",[[
	dungeon 819
	description This guide will walk you through the Hour of Twilight
	description instance with quests involved from a Healers perspective.
	step
		goto Hour of Twilight,48.7,19.7
		.talk Thrall##54548
		..turnin The Hour of Twilight##30102
		..accept To Wyrmrest!##30103
	step
		goto Hour of Twilight,48.7,19.7
		.talk Thrall##54548
		.' <Yes Thrall>
		|confirm always
	step
		map Hour of Twilight
		path follow strict;loop off;ants straight
		path	50.9,20.3	52.3,21.6	53.9,23.1
		.' Follow this path and kill the groups.
		.' Talk to Thrall when you are ready to face the boss.
		|confirm always
	step
	label	"pre_Arcurion"
		goto 56.7,27.4
		.from Arcurion##54590
		.' Avoid _Icy Boulders_
		.' Dispel _Chains of Ice_. Mass Dispel is extremely effective here.
		.' At 30% use Area of Effect healsa long with resistance aura's if you have them.
		.' Click here for a more detailed boss fight. |confirm |next "Arcurion" |or
		.' or
		|confirm |next "part2"
	step
	label	"Arcurion"
		goto 56.7,27.4
		'Arcurion will cast _Hand of Frost_ dealing _50k damage_ to his target. 
		.' Arcurion will cast _chains of frost_, freezing all targets (65yds) and _dealing 10k damage_.
		.' You will see blue _circles mark the ground_ for a few seconds, do not stand in this. _Frozen Servitors_ on top of cliffs are throwing _Icy Boulders_ and you will freeze if caught in it.
		.' At _30% health_, boss will do a _massive aoe_ in which you will need to use _Resistance Auras_, _Area of Effect Heals_ or _Big Heals_ as needed.
		.from Arcurion##54590
		.' Click here for a less detailed boss fight |confirm |next "pre_Arcurion" |or
		.' or
		|confirm
	step
	label "part2"
		.talk Thrall##54548
		.' <Lead the Way>
		|confirm always
	step
		goto 43.7,45.3
		.talk Thrall##54548
		.' <Yes Thrall lets do this>
		|confirm always
	step 
		map Hour of Twilight
		path follow loose;loop off;ants straight
		path	45.5,47.1	45.6,49.0
		path	43.0,50.0	40.4,48.7
		.' _Follow Thrall_ through this canyon.
		.' You will have to fight a _few groups_ through this area.
		.from Twilight Assassin##55106+
		.from Twilight Thug##55111+
		.from Twilight Bruiser##55112+
		.from Twilight Ranger##55107+
		.from Twilight Shadow-Walker##55109+
		'|modelnpc 55474
		|confirm always
	step
	label	"pre_Asira"
		goto Hour of Twilight,39.5,52.4
		.from Asira Dawnslayer##54968
		.' Avoide _Choking Smoke Bomb_.
		.' Stand in _Thrall's Fire Totem_.
		.' Use _Large or Area of Effect Heals_ as needed.
		.' Click here for a more detailed boss fight. |confirm |next "Asira" |or
		.' or
		|confirm |next "part3"
	step
	label	"Asira"
		goto Hour of Twilight,39.5,52.4
		.' Asira will _mark spellcasters_ and if this spellcaster casts a spell, boss will throw a knife, hitting anyone between the player and the boss. This will silence whoever it hits. Use _Big Heals_.
		.' Asira will create _Choking Smoke Bomb_ which will not allow players to target into this cloud, while also inflicting _5k Nature damage_ every .5 seconds.
		.' Make sure to stand near _Thall's Fire Totem_, this will _increase health and damage_ of party members nearby.
		.from Asira Dawnslayer##54968
		.' Click here for a less detailed boss fight |confirm |next "pre_Asira" |or
		.' or
		|confirm |next "part3"
	step  
	label	"part3"
		goto Hour of Twilight 39.5,52.4
		.from Asira Dawnslayer##54968
		.collect Urgent Twilight Missive##77957 |n
		.' Click the Urgent Twilight Missive in your bags. |use Urgent Twilight Missive##77957
		..accept The Twilight Prophet##30105 
	step
		goto 40.1,50.8
		.clicknpc Life Warden##55549
		|invehicle |c
	step
		.' You will land next to Thrall on the road to Wyrmrest Temple.
		|outvehicle |c
	step
		map Hour of Twilight
		path follow loose; loop off; straight
		path	49.8,70.2	49.7,71.7	49.4,75.4
		path	49.4,81.0
		path	49.6,82.8
		.' _Follow Thrall_ through this canyon.
		.' Kill the _Shadow Borer's first_, they interrupt and stop healing.
		.from Faceless Shadow Weaver##54633+
		.from Faceless Brute##54632+
		.from Shadow Borer##54686+
		.' Enter Wyrmrest Temple here. |goto Hour of Twilight 49.6,82.8 |noway |c
	step
	label	"pre_Bishop"
		goto Hour of Twilight/2,47.2,50.9
		.from Archbishop Benedictus##54938
		.' Spread out 10 yards.
		.' Avoid _Wave of Virtue_ stand in blue shell.
		.' Avoid _Wave of Twilight_ run to the side.
		.' Dispel _Righteous Shear_ as well as _Twilight Shear_.
		.' Unmask the Twilight Prophet. |q 30105/1 |only if havequest(30105)
		.' Escort Thrall to Wyrmrest Temple. |q 30103/1 |only if havequest(30103)
		.' Click here for a more detailed boss fight. |confirm |next "Bishop" |or
		.' or
		|confirm |next "part4"
	step
	label	"Bishop"
		goto Hour of Twilight/2,47.2,50.9
		.' Archbishop has a lot of spells that will affect nearby players, _spread out_ before fight starts. 
		.' Thrall will help with the first part of the fight, he will put a blue shell on the ground that you can use for protection and a damage buff. Stand in his _Water Shell_ whenever you see it.
		.' _Wave of Virtue_ and _Wave of Twilight_ are waves of Holy or Shadow that will sweep across the stage. These _knock_ anyone _back_ and cause _100k damage_. Run to the side to avoid or stand in the _Water Shell_ for the first part of fight. 
		.' Archbishop will target a random member and cast _Twilight Shear_ or _Purifying Blast_ dealing damage to the target and nearby friendly players.
		.' There are _2 stages_ of this fight, he will switch from _holy to shadow_ at _60% health_, the only difference is that Thrall will be trapped and damage will be shadow instead of holy.
		.' Area of Effect Heals will be need during some phases.
		.from Archbishop Benedictus##54938
		.' Unmask the Twilight Prophet. |q 30105/1 |only if havequest(30105)
		.' Escort Thrall to Wyrmrest Temple. |q 30103/1 |only if havequest(30103)
		.' Click here for a less detailed boss fight. |confirm |next "pre_Bishop" |or
		.' or |only if havequest(30103) or havequest(30105)
		|confirm |only if havequest(30103) or havequest(30105)
	step
	label	"part4"
		goto 46.9,45.0
		.talk Thrall##54971
		..turnin To Wyrmrest!##30103
		..turnin The Twilight Prophet##30105
]])

-- PREORDER CONTENT END

-- BETA PREVIEW CONTENT
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Ragefire Chasm (RFC) 15-18",[[
	dungeon 680
	description This guide will walk you through the Ragefire Chasm dungeon.
	author support@zygorguides.com
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm |next
		.' I will use the Dungeon Finder |confirm |next "start"
	step
		goto Orgrimmar/2 70.2,48.8 |n
		.' Enter Ragefire Chasm here. |goto Ragefire Chasm |c
	step
	label	"start"
		goto Ragefire Chasm,68.6,11.9
		.talk Stone Guard Kurjack##44217
		..accept Repel the Invasion##26856
		..accept Taragaman the Hungerer##26858
	step
		goto 70.4,11.3
		.talk Bovaal Whitehorn##44216
		..accept Elemental Tampering##26862
	step
		goto Ragefire Chasm,69.7,63.9
		.from Oggleflint##11517 |only if not havequest(26856)
		.kill Oggleflint##11517 |q 26856/3 |only if havequest(26856)
		|confirm |only if not havequest(26856)
	step
		.' Follow this path up and the the left. |goto 66.6,68.7 <5 |c
	step
		goto 52.2,30.9
		.from Molten Elemental##11321+
		.get 6 Searing Binding |q 26862/1
		|only if havequest(26862)
	step
		goto Ragefire Chasm,41.0,57.7
		.from Taragaman the Hungerer##11520
		.get Taragaman the Hungerer's Heart |q 26858/4 |only if havequest(26858)
		|confirm |only if not havequest(26858)
	step
		goto Ragefire Chasm,41.0,68.2
		.' They are all around this area.
		.kill 4 Searing Blade Enforcer##11323+ |q 26858/2
		.kill 4 Searing Blade Cultist##11322+ |q 26858/1
		.kill 4 Searing Blade Warlock##11324+ |q 26858/3
		|only if havequest(26858)
	step
		goto 33.1,57.6 |n
		.' Go up this ramp on the left side. |goto 33.1,57.6 <5 |noway |c
	step
		goto Ragefire Chasm,33.4,83.2
		.from Jergosh the Invoker##11518 |only if not havequest(26856)
		.kill Jergosh the Invoker##11518 |q 26856/1 |only if havequest(26856)
		|confirm |only if not havequest(26856)
	step
		goto 30.3,55.2 |n
		.' Go up the ramp on the right side. |goto 30.3,55.2 <5 |noway |c
	step
		goto 41.3,86.1
		.from Bazzalan##11519 |only if not havequest(26856)
		.kill Bazzalan##11519 |q 26856/2 |only if havequest(26856)
		|confirm |only if not havequest(26856)
	step
		.' You can either run to the beginning of the dungeon to turn in your quests.
		.' Or
		.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
		|confirm
	step
		goto Ragefire Chasm 68.6,11.9
		.talk Stone Guard Kurjack##44217
		..turnin Repel the Invasion##26856
		..turnin Taragaman the Hungerer##26858
	step
		goto 70.4,11.3
		.talk Bovaal Whitehorn##44216
		..turnin Elemental Tampering##26862
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Deadmines (DM) 15-18",[[
	dungeon 756
	description This guide will walk you through the Deadmines dungeon.
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Westfall 42.5,71.7 |n
		.' Enter the Defias Hideout here. |goto Westfall 42.5,71.7 <5 |noway |c
	step
		goto 43.4,71.9 |n
		.' Follow the stairs up. |goto 43.4,71.9 <5 |noway |c
	step
		goto 42.5,75.4
		.' Follow the path down and around.
		.' Go straight here. |goto 42.5,75.4 <5 |noway |c
	step
		goto 41.1,76.5 |n
		.' Keep follwing this path straight. |goto 41.1,76.5 <5 |noway |c
	step
		goto 41.8,78.5 |n
		.' Follow the path to the right. |goto 41.8,78.5 <5 |noway |c
	step
		goto 38.3,77.5 |n
		.' Enter the Deadmines here. |goto The Deadmines |noway |c
	step
	label "start"
		goto The Deadmines,29.3,27.1
		.talk Kagtha##46889
		..accept Only the Beginning##27842 
	step
		goto 28.8,27.3
		.talk Slinky Sharpshiv##46906
		..accept Traitors!!!##27844
	step
		goto 29.6,24.8
		.talk Miss Mayhem##46902
		..accept Not Quite There##27847
	step
		goto 37.7,61.2
		.from Glubtok##47162 |only if not havequest(27842)
		.kill Glubtok##47162 |q 27842/1 |only if havequest(27842)
		|confirm |only if not havequest(27842)
		|only if not heroic_dung()
	step
		goto 37.7,61.2
		.' _Glubtok_
		.' Phase 1:
		.' He will _Blink_ occasionally, dropping threat of all enemies. The tank will need to provoke immediately after.
		.' PHase 2:
		.' When he casts _Fire Blossum_, Fire Blossom creatures spawn and need to be picked up by the tank.
		.' When he casts _Frost Blossom_, Frost Blossom creatures spawn and need to be picked up by the tank.
		.from Glubtok##47162 |only if not havequest(27842)
		.kill Glubtok##47162 |q 27842/1 |only if havequest(27842)
		|confirm |only if not havequest(27842)
		|only if heroic_dung()
	step
		.' Click the Quest Completion Box that pops up:
		..turnin Only the Beginning##27842
	step
		.' Click the Quest Completion Box that pops up
		..accept Good Intentions...Poor Execution##27848
	step
		goto 43.8,79.6 |n
		.click Heavy Door##400
		.' Enter the room. |goto 43.9,82.3 <5 |noway |c
	step
		goto 49.0,87.4 |n
		.from Lumbering Oaf##47297
		.from Helix Gearbreaker##47296 |only if not havequest(27844)
		.kill Helix Gearbreaker##47296 |q 27844/1 |only if havequest(27844)
		|confirm |only if not havequest(27844)
		|only if not heroic_dung()
	step
		goto 49.0,87.4 |n
		.from Lumbering Oaf##47297
		.' Phase 1 (Lumbering Oaf):
		.' Avoid _Sticky Bombs_ on the ground.
		.' The Lumbering Oaf will periodically use _Oaf Smash_, picking up a player and slamming them, dealing 100% of the players health as damage.
		.' The Lumbering Oaf will use _Throw Helix_ onto a player for 10 seconds, 
		.' After Throw Helix, there will be a _Chest Bomb_ on the player, dealing 46k-57k fire damage.
		.' _Helix' Crew_ throws bombs at random players throughout the entire fight.
		.' Phase 2:
		.' Helix will use _Leap_ to random players, attacking for 10 seconds before moving to the next.
		.' He will still use _Chest Bomb_ on the player, dealing 46k-57k fire damage.
		.from Helix Gearbreaker##47296 |only if not havequest(27844)
		.kill Helix Gearbreaker##47296 |q 27844/1 |only if havequest(27844)
		|confirm |only if not havequest(27844)
		|only if heroic_dung()
	step
		goto 61.0,75.0
		.click Heavy Door##400
		|confirm
	step
		.' Clear the Goblin Foundry of Defias Watchers.
		|confirm
		'|modelnpc 47404
	step
		goto The Deadmines/2 10.0,82.7
		.from Foe Reaper 5000##43778 |only if not havequest(27847)
		.kill Foe Reaper 5000##43778 |q 27847/1 |only if havequest(27847)
		|confirm |only if not havequest(27847)
		|only if not heroic_dung()
	step
		goto The Deadmines/2 10.0,82.7
		.' _Foe Reaper 5000_
		.' If you're the _Prototype Reaper_ pilot, click here. |confirm |next "Proto_Reap"
		.' The Foe Reaper 5000 will use _Overdrive_ which will cause it to move around randomly, attacking anyone near him as well as knocking them back.
		.' It will also use _Harvest_ which targets a random player, the move to where they are. It attacks anyone in front of him within a 60 degree cone. Once at the target location, it will preform a sweep attack, dealing damage to anyone within 10 yards.
		.' At 30% of his total health, he will use _Safety Restrictions Off-line_ which increases his damage by 100% for the duration of the fight.
		.' Avoid being in it's path when it uses it's abilities and you should be fine.
		.from Foe Reaper 5000##43778 |only if not havequest(27847)
		.kill Foe Reaper 5000##43778 |q 27847/1 |only if havequest(27847)
		|confirm |next "canon_blast" |only if not havequest(27847) 
		|only if heroic_dung()
	step
	label "Proto_Reap"
		.' You will spend your time at the bottom of the ramp, waiting for _Molten Slag_ to spawn.
		.' You will have 2 abilities to use to control the adds.
		.' Use _Reaper Strike_ twice in a row, then use _Reaper Charge_ to stun them.
		.' Repeat this until they are defeated.
		.from Molten Slag##49229+
		|confirm
		|only if heroic_dung()
	step
	label "canon_blast"
		goto The Deadmines/2,27.9,52.7
		.click Defias Cannon##245
		|confirm
	step
		'Proceed along the docks avoiding the cannonballs that are being shot at the ground. |goto 53.0,20.2 <5 |c
	step
		goto 63.9,39.5
		.from Admiral Ripsnarl##47626 |only if not havequest(27848)
		.kill Admiral Ripsnarl##47626 |q 27848/1 |only if havequest(27848)
		|confirm |only if not havequest(27848)
		|only if not heroic_dung()
	step
		goto 63.9,39.5
		.' _Admiral Ripsnarl_
		.' Has a _Swipe_ ability, so attack him from behind.
		.' Has the _Thirst for Blood_ ability, moving faster and gaining attack speed each time he hits, stacking up to 20 times)
		.' He will use _Go For the Throat_ through the entire fight. It damages then stuns targets for 2 seconds.
		.' At 75%, 50% and 25% He will summon a fog.
		.' During the fog, he will _Summon Vapors_ which need to be killed as soon as possible. They will grow larger before they explode, potentially killing anyone nearby.
		.from Admiral Ripsnarl##47626 |only if not havequest(27848)
		.kill Admiral Ripsnarl##47626 |q 27848/1 |only if havequest(27848)
		|confirm |only if not havequest(27848)
		|only if heroic_dung()
	step
		'Click the Quest Complete Box in the top right corner:
		..turnin Good Intentions...Poor Execution##27848
	step
		'Click the Quest Complete Box in the top right corner:
		..accept The Defias Kingpin##27850
	step
		goto 60.6,44.5
		.from "Captain" Cookie##47739 |only if not havequest(27850)
		.kill "Captain" Cookie##47739 |q 27850/1 |only if havequest(27850)
		|confirm |only if not havequest(27850)
		|only if not heroic_dung()
	step
		goto 60.6,44.5
		.' _"Captain" Cookie_
		.' He will throw food on the ground. If it does not say _Rotten_ then it's safe to click. You will get a haste buff each time you consume food.
		.from "Captain" Cookie##47739 |only if not havequest(27850)
		.kill "Captain" Cookie##47739 |q 27850/1 |only if havequest(27850)
		|confirm |only if not havequest(27850)
		|only if heroic_dung()
	step
		.' A note will appear on the ground
		.' Don't click it until your group is ready, it will start the _Vanessa VanCleef_ event.
		.' Once you click it, Vanessa will come out and poison you. 
		.' When you awaken you'll be suspended above a lava pool. |goto 12.7,80.1 <8 |c
		|only if heroic_dung()
	step
		goto 12.4,71.8
		.' Click the _Vent Lever_ to avoid being lowered into the Lava. There will be green arrows indicating where the levers are.
		.' Once you click it, you will land at the top of the spiral stairs.
		.' You will be dazed and fires will appear. _Avoid the fires at all cost_ they deal out massive damage.
		.' Make your way down the ramp. |goto 12.4,71.8 <5 |c
		|only if heroic_dung()
	step	
		.from Glubtok##49670
		.' After you defeat Glubtok, _Helix Gearbreaker_  will appear at the door.
		.' The group needs to collapse at the door, as spiders will spawn and fill the room.
		.' Avoid aggroing the spiders if possible.
		.from Helix Gearbreaker##49674
		|confirm
		|only if heroic_dung()
	step
		goto 29.5,50.2
		.' Once the doors open there will be several rotating chains of sparks that you have to avoid as you progress.
		.' Most of the time, if you touch them you will be killed, so avoid them while making your way to the coordinates.
		.from Foe Reaper 5000##49681
		.' Note that you should let your tank go first, since the boss will aggro.
		|confirm
		|only if heroic_dung()
	step
		goto 51.6,44.7
		.' Follow the deck onto the ship.
		.' You will need to save _Emma Harrington_, _Erik Harrington_ and _Calissa Harrington_ from the worgen.
		.' Kill any packs of Worgen that you see.
		.' Once you're at  _Calissa Harrington_, burn down _Admiral Ripsnarl_ fast.
		|confirm
		|only if heroic_dung()
	step
		goto 58.9,38.7
		.' Make your way back up to the main part of the ship. |goto 58.9,38.7 <5 |noway|c
		|only if heroic_dung()
	step
		.' _Vanessa VanCleef_
		.' She will use _Deflection_, which deflects all ranged, melee and spell attacks for 10 seconds. She will use the ability when her health is higher thatn 25%.
		.' She will use _Deadly Blades_, randomly attack party members.
		.' She will use _Backslash_ dealing 9k to 10k damage.
		.' At 50%, she will use _Fiery Blaze_ which deals 46k to 53k fire damage every second. When this happens, ropes will appear at the end of the deck. Click them to avoid the damage.
		.' There will also be adds that need to be picked up by the tank.
		.' When Vanessa is at 1% of her total health, she will use _Powder Explosion_, Move as far away from her as possible to avoid death.
		.from Vanessa VanCleef##49541
		|only if heroic_dung()
	step
		goto 57.7,39.7
		.talk Slinky Sharpshiv##46906
		..turnin Traitors!!!##27844
		|only if havequest(27844)
	step
		goto 61.4,38.6
		.talk Miss Mayhem##46902
		..turnin Not Quite There##27847
		|only if havequest(27847)
	step
		goto 64.2,39.9
		.talk Kagtha##46889
		..turnin The Defias Kingpin##27850
		|only if havequest(27850)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Shadowfang Keep (SFK) 18-23",[[
	dungeon 764
	description This guide will walk you through the Shadowfang Keep dungeon.
	author support@zygorguides.com
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm |next "entrance"
		.' I will use the Dungeon Finder |confirm |next "start"
	step
	label	"entrance"
		goto Silverpine Forest 44.8,67.8 |n
		.' Enter Shadowfang Keep here |goto Silverpine Forest 44.8,67.8 <5 |noway |c
	step
	label	"start"
		goto Shadowfang Keep,64.4,58.0
		.talk Deathstalker Commander Belmont##47293
		..accept This Land is Our Land##27974
	step
		map Shadowfang Keep
		path follow loose; loop off
		path	72.8,50.5	61.1,44.4	60.7,54.9
		path	58.5,63.8
		.' Follow this path and kill any mobs you come in contact with. |goto 58.5,63.8 <5 |noway |c
	step
		goto 67.5,72.7
		.from Baron Ashbury##46962 |only if not havequest(27974)
		.kill Baron Ashbury##46962 |q 27974/1 |only if havequest(27974)
		|confirm |only if not havequest(27974)
		|only if not heroic_dung()
	step
		goto 67.5,72.7
		.' _Baron Ashbury_
		.' He will commonly cast _Pain and Suffering_, which needs to be interrupted fast each time. An interrupt rotation should be established.
		.' Note that any class that can dispel magic effect can remove Pain and Suffering.
		.' He will cast _Asphyxiate_, which will drop the groups health to 1.
		.' Immediately after, _Stay of Execution_ which heals the party for 10% health per tick, as well as giving him 5% health each tick. The trick is to get your health up by 20% before interrupting.
		.' As the fight progresses,_Wracking Pains_ stacks will begin to appear on players. It increases your shadow damage vulnerability by 20% as well as inflicting shadow damage. This effect stacks.
		.' At 25% health, he will cast _Calamity_, dealing out 5,000 shadow damage as well as increasing shadow damage enemies take every second.
		.from Baron Ashbury##46962 |only if not havequest(27974)
		.kill Baron Ashbury##46962 |q 27974/1 |only if havequest(27974)
		|confirm |only if not havequest(27974)
		|only if heroic_dung()
	step
		goto 67.8,73.1
		.talk Deathstalker Commander Belmont##47293
		..turnin This Land is Our Land##27974
	step
		goto 67.8,73.1
		.talk Deathstalker Commander Belmont##47293
		..accept Plague...Plague Everywhere!##27988
	step
		goto Shadowfang Keep,55.2,65.8 |n
		.' Go out into the Courtyard. |goto Shadowfang Keep 55.2,65.8 <5 |noway |c
	step
		goto 36.8,39.6 |n
		.' Enter the Dining Hall here. |goto 36.8,39.6 <5 |noway |c
	step
		goto Shadowfang Keep/2,31.2,73.3
		.from Baron Silverlaine##3887 |only if not havequest(27988)
		.kill Baron Silverlaine##3887 |q 27988/1 |only if havequest(27988)
		|confirm |only if not havequest(27988)
		|only if not heroic_dung()
	step
		goto Shadowfang Keep/2,31.2,73.3
		.' _Baron Silverlaine_
		.' He will cast _Veil of Shadow_, which reduces healing taken by 50%.
		.' It can be removed by anyone who can remove Curses.
		.' He will also cast _Cursed Veil_ affecting all party members within 40 yards, dealing 24k to 25k shadow damage, along with reducing healing taken by 75%.
		.' Cursed Veil can be removed by anyone who can remove magic.
		.' At 90%, 60% and 30% he will cast _Summon Worgen Spirits_.
		.' _Odo the Blindwatcher_ just deals damage.
		.' _Razorclaw the Butcher_ stuns targets furthest away from them. He also drains health based on his damage done.
		.' _Rethilgore_ drains health from enemy targets, stunning them. Heals for twice the amount that he drains.
		.' _Wolf Master Nandos_ summons Lupine Spirits with low health.
		.from Baron Silverlaine##3887 |only if not havequest(27988)
		.kill Baron Silverlaine##3887 |q 27988/1 |only if havequest(27988)
		|confirm |only if not havequest(27988)
		|only if heroic_dung()
	step
		'Run up the stairs and follow the hallway to the _left_. |goto 27.4,89.5 <5 |c
	step
		goto Shadowfang Keep 28.4,58.6
		.from Commander Springvale##4278 |only if not havequest(27988)
		.kill Commander Springvale##4278 |q 27988/2 |only if havequest(27988)
		|confirm |only if not havequest(27988)
		|only if not heroic_dung()
	step
		goto Shadowfang Keep 28.4,58.6
		_Commander Springvale_
		.' He will cast _Word of Shame_ on random party members, causing 5% of the players health every 3 seconds until he or the player is defeated.
		.' During the fight, he will summon 2 _Wailing Guardsmans_ and _Tormented Officers_ to assist him. The tank should pick them up.
		.' He will often use _Shield of the Perfidious_ which shoots a cone attack in front of him. It expands to 150 degrees and should be avoided.
		.from Commander Springvale##4278 |only if not havequest(27988)
		.kill Commander Springvale##4278 |q 27988/2 |only if havequest(27988)
		|confirm |only if not havequest(27988)
		|only if heroic_dung()
	step
		goto Shadowfang Keep,28.0,60.2
		.talk Deathstalker Commander Belmont##47293
		..turnin Plague...Plague Everywhere!##27988
	step
		goto Shadowfang Keep,28.0,60.2
		.talk Deathstalker Commander Belmont##47293
		..accept Orders Are For the Living##27996
	step
		goto 35.6,65.4 |n
		'Follow the stairs down and go outside. |goto Shadowfang Keep/7 |noway |c
	step
		map Shadowfang Keep/7
		path follow loose; loop off
		path	57.4,90.6	68.2,82.3	71.4,58.6
		path	43.5,46.8	45.9,39.9	44.4,30.3
		.' Follow this path through the dungeon, kill any mobs you come in contact with. |goto Shadowfang Keep/3 |noway |c
	step
		map Shadowfang Keep/3
		path follow strict; loop off
		path	48.8,46.5	57.6,10.1	64.7,38.2
		path	51.6,81.1
		.' Follow this path through the dungeons, kill any mobs you come in contact with. |goto Shadowfang Keep/4 |noway |c
	step
		goto Shadowfang Keep/4,54.2,54.3
		.from Lord Walden##46963 |only if not havequest(27996)
		.kill Lord Walden##46963n |q 27996/1 |only if havequest(27996)
		|confirm |only if not havequest(27996)
		|only if not heroic_dung()
	step
		goto Shadowfang Keep/4,54.2,54.3
		.' _Lord Walden_
		.' He will fire _Ice Shards_ randomly around the room, damaging enemies within 2 yards of where it lands.
		.' He will use _Conjure Poisonous Mixture_, which will reduce your movement speed by 40% as well as leave a dot.
		.' He will use _Toxic Coagulent_, which will be explained below:
		.' When he has a _Red Aura_ around him, _do not move!_ You will take extra damage for each step you take.
		.' When he has a _Green Aura_ around him, _Move around constantly!_ You will take extra damage the longer you don't move.
		.' These effects stack up to 3 times and by the third stack you are stunned for 5 seconds.
		.' At 35% of his total health, he will use _Toxic Catalyst_, dealing out 13k to 16k Fire damage every two seconds and increasing the targets critical strike rating to 100%.
		.from Lord Walden##46963 |only if not havequest(27996)
		.kill Lord Walden##46963 |q 27996/1 |only if havequest(27996)
		|confirm |only if not havequest(27996)
		|only if heroic_dung()
	step
		goto Shadowfang Keep/4,59.9,41.8
		.talk Deathstalker Commander Belmont##47293
		..turnin Orders Are For the Living##27996
		..accept Sweet, Merciless Revenge##27998 
	step
		map Shadowfang Keep/4
		path follow strict; loop off
		path	58.6,27.3	36.8,65.2
		.' Follow the path up the stairs. |goto Shadowfang Keep/5 |noway |c
	step
		map Shadowfang Keep/5
		path follow strict; loop off
		path	49.2,74.7	60.4,31.7	37.3,65.2
		.' Follow the path up the stairs. |goto Shadowfang Keep/6 |noway |c
	step
		goto Shadowfang Keep/6,61.6,23.8
		.from Lord Godfrey##46964 |only if not havequest(27998)
		.kill Lord Godfrey##46964 |q 27998/1 |only if havequest(27998)
		|only if not heroic_dung()
	step
		goto Shadowfang Keep/6,61.6,23.8
		.' _Lord Godfrey_
		.' He will often cast _Cursed Bullets_ on a random target. It can be _interrupted_.
		.' If it doesn't get interrupted it will deal out significant shadow damage every 3 seconds, increasing over time. Anyone who can remove curses can dispel it.
		.' He will use _Pistol Barrage_ often, an attack that deals out 30k damage to anyone within a 60 degree cone in front of him. Avoid at all costs.
		.' He will place _Mortal Wound_ on the tank, reducing healing taken by 5%, stacking 10 times.
		.' Throughout the fight, he will _Summon Bloodthirsty Ghouls_ that have low health. They should be picked up and killed quickly.
		.from Lord Godfrey##46964 |only if not havequest(27998)
		.kill Lord Godfrey##46964 |q 27998/1 |only if havequest(27998)
		|only if heroic_dung()
	step
		goto Shadowfang Keep/6,58.8,52.3
		.talk Deathstalker Commander Belmont##47293
		..turnin Sweet, Merciless Revenge##27998
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Wailing Caverns (WC) 18-23",[[
	dungeon 749
	description This guide will walk you through the Wailing Caverns dungeon.
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label "entrance"
	step
		map Northern Barrens
		path loop off
		path	39.0,69.3	39.5,66.8	39.1,65.1
		path	38.8,63.3	39.9,62.3	41.3,63.0
		path	41.7,65.2	42.1,66.5
		.' Follow this path and enter Wailing Caverns. |goto Wailing Caverns |noway |c
	step
	label "start"
		goto Wailing Caverns,46.6,59.2
		.talk Ebru##5768
		..accept Cleansing the Caverns##26870 
	step
		goto 46.6,58.4
		.talk Nalpak##5767
		..accept Deviate Hides##26872 
		..accept Preemptive Methods##26873 
	step
		' Do the following as you move through the instance
		.from Deviate Ravager##3636+, Deviate Guardian##3637+, Deviate Crocolisk##5053+
		..get 10 Deviate Hide |q 26872/1
		.click Serpentbloom##390+
		..get 5 Serpentbloom |q 26873/1
		|confirm
		|only if havequest(26873) or havequest(26872)
	step
		goto 29.7,43.9
		.from Lady Anacondra##3671 |only if not havequest(26870)
		.kill Lady Anacondra##3671 |q 26870/2 |only if havequest(26870)
		|confirm |only if not havequest(26870)
	step
		.from Druid of the Fang##3840
		.' Make sure to kill any Druid of the Fang you come across.
		|confirm
	step
		map Wailing Caverns
		path loop off; strict
		path	28.2,40.1	19.6,45.2	9.2,33.5
		path	13.7,33.9	19.8,41.6
		.' Jump in the water and follow this path
		.from Lord Pythas##3670 |only if  not havequest(26870)
		..kill Lord Pythas##3670 |q 26870/3 |only if havequest(26870)
		|confirm |only if not havequest(26870)	
	step
		map Wailing Caverns
		path loop off; strict
		path	17.4,28.3	15.4,24.1	5.7,27.8
		path	15.6,58.4
		.' Follow this path and kill Lord Cobrahn.
		.from Lord Cobrahn##3669 |only if not havequest(26870)
		..kill Lord Cobrahn##3669 |q 26870/1 |only if havequest(26870)
		|confirm |only if not havequest(26870)
	step
		goto 15.8,51.8 |n
		.' Jump down here and follow the path to the right. |goto 15.8,51.8 <5 |noway |c
	step
		.' If you haven't already killed Kresh, then you will find him walking in this little river.
		.from Kresh##3653
		|confirm
	step
		goto 60.7,72.1
		.from Skum##3674
		|confirm
	step
		goto 55.0,87.6 |n
		.' Follow this path up and around. |goto 55.0,87.6 <5 |noway |c
	step
		map Wailing Caverns
		path follow strict; loop off
		path	54.8,83.1	55.2,71.7	50.7,61.8
		path	72.8,67.7	69.2,82.9	54.4,76.3
		path	54.6,60.4	62.2,53.8
		.from Lord Serpentis##3673 |only if not havequest(26870)
		.kill Lord Serpentis##3673 |q 26870/4 |only if havequest(26870)
		|confirm |only if not havequest(26870)
	step
		goto 56.4,47.5
		.from Verdan the Everliving##5775
		|confirm
	step
		goto 54.5,39.5 |n
		.' Jump down this hole. |goto 54.5,39.5 <5 |noway |c
	step
		goto Wailing Caverns,46.6,59.2
		.talk Ebru##5768
		..turnin Cleansing the Caverns##26870
	step
		goto 46.6,58.4
		.talk Nalpak##5767
		..turnin Deviate Hides##26872
		..turnin Preemptive Methods##26873
	step
		goto 46.5,56.0
		.talk Muyoh##3678
		.' Tell him:
		.' <Let the event begin!>
		|confirm
	step
		goto 37.1,20.9 |n
		.' Escort and Protect Muyoh until you get to the boss. |goto 37.1,20.9 <5 |noway |c
	step
		goto 34.0,15.6 |n
		.' Protect Muyoh.
		.' There will be 2 waves of mobs that attack him, then the boss will appear.
		.from Mutanus the Devourer##3654
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Blackfathom Deeps (BFD) 22-27",[[
	dungeon 688
	description This guide will walk you through the Blackfathom Deeps dungeon.
	author support@zygorguides.com
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Ashenvale,14.4,14.2 |n
		.' Go down to Blackfathom Deeps here. |goto Ashenvale 14.4,14.2 <5 |noway |c
	step
		goto 13.9,13.7 |n
		.' Swim under the wall here. |goto 13.9,13.7 <5 |noway |c
	step
		goto 13.9,9.2 |n
		.' Follow the path to the right. |goto 13.9,9.2 <5 |noway |c
	step
		 goto 16.6,11.5 |n
		.' Follow this path to the left. |goto 16.6,11.5 <5 |noway |c
	step
		goto 16.5,11.0 |n
		.' Enter Blackfathom Depths here. |goto Blackfathom Deeps |noway |c
	step
	label	"start"
		goto Blackfathom Deeps 48.4,11.7
		.talk Je'neu Sancrea##12736
		..accept Nightmare of the Deeps##26888 
		..accept Amongst the Ruins##26891
	step
		goto 48.2,13.1
		.talk Zeya##44375
		..accept Deep in the Deeps##26892
	step
		goto Blackfathom Deeps 33.5,59.4
		.from Ghamoo-Ra##4887 |only if not havequest(26892)
		.kill Ghamoo-Ra##4887 |q 26892/1 |only if havequest(26892)
		|confirm |only if not havequest(26892)	
	step
		goto Blackfathom Deeps 23.7,45.5 |n
		.' Swim under the water here. |goto Blackfathom Deeps 23.7,45.5 <5 |noway |c
	step
		goto Blackfathom Deeps 11.6,40.4
		.from Lady Sarevess##4831 |only if not havequest(26892)
		.kill Lady Sarevess##4831 |q 26892/2 |only if havequest(26892)
		|confirm |only if not havequest(26892)	
	step
		goto Blackfathom Deeps 24.4,46.5 |n
		.' Swim under the water here. |goto Blackfathom Deeps 24.4,46.5 <5 |noway |c
	step
		goto Blackfathom Deeps,32.5,90.2 |n
		.' Follow this hallway. |goto Blackfathom Deeps 32.5,90.2 <5 |noway |c
	step
		goto Blackfathom Deeps,52.3,55.4
		.from Gelihast##6243 |only if not havequest(26892)
		.kill Gelihast##6243 |q 26892/3 |only if havequest(26892)
		|confirm |only if not havequest(26892)
	step
		goto 59.5,71.8 |n
		.' Follow this hallway. |goto Blackfathom Deeps/2 |noway |c
	step
		goto 31.8,66.9
		.talk Flaming Eradicator##44387
		..accept The Enemy of My Enemy##26899 |only if not havequest(26899)
		|only if not completedq(26899)
	step
		goto 41.5,75.3
		.' Jump in the water
		.click Fathom Stone##01027
		.get Fathom Core |q 26891/1
		|only if havequest(26891)
	step
		goto 34.0,68.0 |n
		.' Jump out of the water here. |goto 34.0,68.0 <5 |noway |c
		|only if havequest(26891)
	step
		goto 40.8,65.8 |n
		.' Follow these stairs to the right and go down the path. |goto 40.8,65.8 <5|noway |c
	step
		goto 51.5,81.6
		.from Twilight Lord Kelris##4832
		|confirm |only if not havequest(26899)
		.get Head of Kelris |q 26899/1 |only if havequest(26899)
	step
		goto 52.3,80.8
		.click Fire of Aku'mai##00524
		.' Each time you click a Fire, you will have adds come from the right and left side of the room.
		.' Click all 4 of them before continuing.
		|confirm 
	step
		goto 79.1,84.2
		.from Aku'mai##4829 |only if not havequest(26888)
		.kill Aku'mai##4829 |q 26888/1 |only if havequest(26888)
	step
		goto 32.0,67.2
		.talk Flaming Eradicator##44387
		..turnin The Enemy of My Enemy##26899
		|only if havequest(26899)
	step
		.' You can either run to the beginning of the dungeon to turn in your quests.
		.' Or
		.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
		|confirm
		|only if havequest(26888) or havequest(26891) or havequest(26892)
	step
		goto Blackfathom Deeps,48.4,11.7
		.talk Je'neu Sancrea##12736
		..turnin Nightmare of the Deeps##26888
		..turnin Amongst the Ruins##26891
		|only if havequest(26888) or havequest(26891)
	step
		goto 48.2,13.1
		.talk Zeya##44375
		..turnin Deep in the Deeps##26892
		|only if havequest(26892)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\The Stockade (STOCKS) 22-27",[[
	dungeon 690
	description This guide will walk you through the Stockade dungeon.
	author support@zygorguides.com
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		#include "rideto_stranglethorn"
	step	
		goto Stormwind City,50.5,66.5 |n
		.' Enter the Stockades here |goto The Stockade |noway |c
	step
	label	"start"
		goto 50.8,19.2
		.from Randolph Moloch##46383
		|confirm
	step
		goto 81.0,48.0
		.from Lord Overheat##46264 
		|confirm
	step
		goto 22.1,27.0
		.from Hogger##46254
		|confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Gnomeregan (Gnomer) 26-31",[[
	dungeon 691
	description This guide will walk you through the Gnomeregan dungeon.
	author support@zygorguides.com
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Dun Morogh,31.4,38.0 |n
		.' Enter the Tunnel here. |goto Dun Morogh 31.4,38.0 <5 |noway |c
	step
		goto 29.9,37.9 
		.' Wait for the Elevator to open and go down
		.' Go through the doorway [28.1,37.1]
		|goto 28.1,37.1 <5 |noway |c
	step
		goto 25.3,36.9 |n
		.' Enter Gnomeregan here. |goto Gnomeregan |noway |c
	step
	label	"start"
		goto 81.9,65.1
		.talk Blastmaster Emi Shortfuse##7998
		.' Tell her:
		.' <I am ready to begin>
		|confirm
	step
		goto 76.3,64.3		
		.' Get ready for the wall to break and kill lots of mobs. 
		.' There will be 2 waves, about 15-20 enemies on each side of the hallway.
		.from Grubbis##7361
		|confirm
		'|from Caverndeep Ambusher##6207+, Caverndeep Burrower##6206+, Chomper##6215
	step
		goto 57.6,51.4 |n
		.' Jump down from this ledge, onto the big Bolt below. |goto Gnomeregan/2 |noway |c
	step
		'Walking all around this area
		.from Viscous Fallout##7079
		|confirm
	step
		goto 39.3,67.5 |n
		.' Follow the path down to this area, run around the ramp clockwise. |goto 39.3,67.5 <5 |noway |c
	step
		goto 14.1,64.8 |n
		.' Follow this ramp up. |goto 14.1,64.8 <5 |noway |c
	step
		goto 23.7,68.3
		.from Electrocutioner 6000##6235
		|confirm
	step
		goto 23.4,72.9 |n
		.' Jump down here to turn in your quest. |goto Gnomeregan/3 |noway |c
	step
		goto Gnomeregan/4,28.8,45.4 |n
		.' Click the Big door and go into the room. |goto 29.3,42.9 <5 |noway |c
	step
		goto 31.3,29.9
		.from Mekgineer Thermaplugg##7800
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Scarlet Monastery: Graveyard (SM) 28-33",[[
	dungeon 762
	description This guide will walk you through the Scarlet Monastery: Graveyard dungeon.
	author support@zygorguides.com
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Tirisfal Glades 84.9,30.6 |n
		.' Enter the Graveyard here. |goto Scarlet Monastery/1 83.5,83.0<5|noway |c
	step
	label	"start"
		goto Scarlet Monastery/1 75.8,81.0
		.talk Dark Ranger Velonara##44637
		..accept The Dark Side of the Light##26950 
	step
		goto 72.0,65.6
		.from Interrogator Vishas##3983 |only if not havequest(26950)
		.kill Interrogator Vishas##3983 |q 26950/1 |only if havequest(26950)
		|confirm |only if not havequest(26950)	
	step
		goto 62.5,56.4 |n
		.' Go up these stairs and into the courtyard. | goto 62.5,56.4 <5 |noway |c
	step
		goto 27.0,56.1 |n
		.' Go down the stairs here. |goto 27.0,56.1 <5 |noway |c
	step
		goto 24.5,50.2
		.from Bloodmage Thalnos##4543 |only if not havequest(26950)
		.kill Bloodmage Thalnos##4543 |q 26950/2 |only if havequest(26950)
	step
		.' You can either run to the beginning of the dungeon to turn in your quests.
		.' Or
		.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
		|confirm
	step
		goto Scarlet Monastery,75.8,81.0
		.talk Dark Ranger Velonara##44637
		..turnin The Dark Side of the Light##26950
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Scarlet Monastery: Library (SM) 31-36",[[
	dungeon 762
	description This guide will walk you through the Scarlet Monastery: Library dungeon.
	author support@zygorguides.com
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Tirisfal Glades 85.3,32.1 |n
		.' Enter the Libray here. |goto Scarlet Monastery/2|noway |c
	step
	label	"start"
		goto Scarlet Monastery/2,20.7,14.0
		.talk Dark Ranger Velonara##44660
		..accept Stripping Their Defenses##26959 
	step
		goto 31.0,87.2
		.from Houndmaster Loksey##3974 |only if not havequest(26959)
		.kill Houndmaster Loksey##3974 |q 26959/1 |only if havequest(26959)
		|confirm |only if not havequest(26959)
	step
		goto 45.2,67.9
		.talk Dominic##44800
		..accept Compendium of the Fallen##26993 
	step
		goto 82.1,14.4
		.click Compendium of the Fallen##387
		.get Compendium of the Fallen |q 26993/1
		|only if havequest(26993)
	step
		goto 83.1,74.4
		.from Arcanist Doan##6487 |only if havequest(26959)
		.kill Arcanist Doan##6487 |q 26959/2 |only if havequest(26959)
		|confirm |only if havequest(26959)
	step
		goto 45.2,67.9
		.talk Dominic##44800
		..turnin Compendium of the Fallen##26993
	step
		goto 20.7,14.0
		.talk Dark Ranger Velonara##44660
		..turnin Stripping Their Defenses##26959
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Razorfen Kraul (RFK) 32-37",[[
	dungeon 761
	description This guide will walk you through the Razorfen Kraul dungeon.
	author support@zygorguides.com
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label "entrance"
		goto Southern Barrens,40.7,94.4 |n
		.' Enter Razorfen Kraul here. |goto Razorfen Kraul |noway |c
	step
	label	"start"
		goto Razorfen Kraul,68.3,83.0
		.talk Auld Stonespire##44402
		..accept Going, Going, Guano!##26901 
		..accept Agamaggan##26906 
		..accept Take Them Down!##26907 
	step
		map Razorfen Kraul
		path loop off
		path	62.5,71.8	78.7,64.2	84.4,47.0
		path	75.3,38.7
		.' Follow the path to the right. |goto 75.3,38.7 <5 |noway |c
	step
		goto Razorfen Kraul,87.7,41.2
		.from Death Speaker Jargba##4428 |only if not havequest(26907)
		.kill Death Speaker Jargba##4428 |q 26907/3 |only if havequest(26907)
		|confirm |only if not havequest(26907)	
	step
		goto 81.0,53.9
		.from Aggem Thorncurse##4424 |only if not havequest(26907)
		.kill Aggem Thorncurse##4424 |q 26907/4 |only if havequest(26907)
		|confirm |only if not havequest(26907)
	step
		goto 56.9,29.8
		.from Overlord Ramtusk##4420 |only if not havequest(26907)
		.kill Overlord Ramtusk##4420 |q 26907/2 |only if havequest(26907)
		|confirm |only if not havequest(26907)
	step
		goto 56.0,44.2 |n
		.' Follow this path to the right. |goto 56.0,44.2 <10 |noway |c
	step
		goto Razorfen Kraul 14.2,54.6
		.from Kraul Bat##4538+
		.get Kraul Guano |q 26901/1
		|only if havequest(26901)
	step
		goto 7.2,66.9
		.from Agathelos the Raging##4422 |only if not havequest(26907)
		.kill Agathelos the Raging##4422 |q 26907/1 |only if havequest(26907)
		|confirm |only if not havequest(26907)	
	step
		goto 19.9,31.9
		.talk Spirit of Agamaggan##44415
		..turnin Agamaggan##26906 
		..accept Agamaggan##26905 
	step
		goto 26.7,32.5
		.from Charlga Razorflank##4421
		.get Razorflank's Heart |q 26905/1 |only if havequest(26905)
		|confirm |only if not havequest(26905)
	step
		goto 20.0,31.9
		.talk Spirit of Agamaggan##44415
		..turnin Agamaggan's Charge##26905
	step
		  goto Razorfen Kraul 68.2,82.9
		.talk Auld Stonespire##44402
		..turnin Going, Going, Guano!##26901
		..turnin Take Them Down!##26907
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Maraudon: The Wicked Grotto (Mara) 33-38",[[
	dungeon 750
	description This guide will walk you through the Maraudon: The Wicked Grotto dungeon.
	author support@zygorguides.com
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Desolace 29.1,62.5 |n
		.' Enter the doorway to Maraudon. |goto Desolace 29.1,62.5 <5 |noway|c
	step
		map Desolace
		path follow strict; loop off; ants straight
		path	28.3,63.0	27.9,64.3	27.6,62.9
		path	29.0,62.6	29.2,61.4	30.9,60.2
		path	29.0,58.0	30.3,54.7
		.' Follow this path and enter the portal to Maraudon. |goto Maraudon |noway |c
	step
	label	"start"
		goto 76.7,64.7
		.' Click the Quest Accept box in the top right cornner:
		..accept Corruption in Maraudon##27697
	step
		map Maraudon
		path loose; loop off
		path	70.8,65.9	65.5,60.5	57.2,49.1
		path	48.9,56.1
		.' Follow this path.
		.from Tinkerer Gizlock##13601
		|confirm
	step
		map Maraudon
		path loose; loop off
		path	50.7,58.8	49.5,71.5	43.7,87.0
		path	35.3,79.9	41.9,76.4	37.5,75.3
		.' Follow this path 
		.from Lord Vyletongue##12236 |only if not havequest(27697)
		.kill Lord Vyletongue##12236 |q 27697/1 |only if havequest(27697)
	step
		'Click the Complete Quest box in the top right corner:
		..turnin Corruption in Maraudon##27697
]])	
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Scarlet Monastery: Armory (SM) 34-39",[[
	dungeon 762
	description This guide will walk you through the Scarlet Monastery: Armory dungeon.
	author support@zygorguides.com
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Tirisfal Glades 85.7,31.6 |n
		.' Enter the Armory here. |goto Scarlet Monastery/3 60.3,98.2 |noway |c
	step
	label	"start"
		goto Scarlet Monastery/3,59.8,94.1
		.talk Dark Ranger Velonara##44690
		..accept Stripping Their Offense##26962 
	step
		goto 66.9,83.8
		.talk Dominic##44804
		..accept Without Rhyme or Reason##26994 
	step
		map Scarlet Monastery/3
		path loop off
		path	67.5,71.6	71.1,58.0	78.2,47.5
		path	70.7,38.1	75.0,26.8	66.8,20.5
		path	78.6,18.7
		.' Follow the Halls of the Armory. |goto 78.6,18.7 <5 |noway |c |only if not havequest(26994)
		'Follow the Halls of the Armory and kill the following. |only if havequest(26994)
		.kill 3 Scarlet Myrmidon##4295+ |q 26994/1 |only if havequest(26994)
		.kill Scarlet Evoker##4289+ |q 26994/2 |only if havequest(26994)
		.kill Scarlet Guardsman##4290+ |q 26994/3 |only if havequest(26994)
		.kill Scarlet Protector##4292+ |q 26994/4 |only if havequest(26994)
	step
		goto 78.6,18.7 |n
		.click Herod's Door##400
		.' Go into the Hall of Champions. |goto 78.5,15.9 <5 |noway |c
	step
		goto 78.6,10.9
		.from Herod##3975 |only if not havequest(26962)
		.kill Herod##3975 |q 26962/1 |only if havequest(26962)
		|confirm |only if not havequest(26962)
	step
		.' You can either run to the beginning of the dungeon to turn in your quests.
		.' Or
		.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
		|confirm
	step
		goto 59.8,94.1
		.talk Dark Ranger Velonara##44690
		..turnin Stripping Their Offense##26962
	step
		goto 66.9,83.7
		.talk Dominic##44804
		..turnin Without Rhyme or Reason##26994
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Maraudon: Foulspore Cavern (Mara) 35-40",[[
	dungeon 750
	description This guide will walk you through the Maraudon: Foulspore Cavern dungeon.
	author support@zygorguides.com
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm  |next "start"
	step
	label	"entrance"
		goto Desolace 29.1,62.5 |n
		.' Enter the doorway to Maraudon. |goto Desolace 29.1,62.5 <5 |noway|c
	step
		map Desolace
		path follow strict; loop off; ants straight
		path	28.3,63.0	27.9,64.3	27.6,62.9
		path	29.0,62.6	28.9,63.4	29.9,65.3
		path	31.9,64.0	32.8,66.6	34.3,65.0
		path	35.6,63.1	36.0,64.2
		.' Follow this path and enter the portal to Maraudon. |goto Maraudon |noway |c
	step
	label	"start"
		goto 60.8,21.2
		.' Click the Accept Quest box on the right side of your screen
		..accept Servants of Theradras##27698 
	step
		goto Maraudon,54.2,25.8 |n
		.' Follow the left side of this path. |goto Maraudon 54.2,25.8 <5 |noway |c
	step
		map Maraudon
		path follow strict; loop off
		path	45.3,34.0	40.0,42.5	50.3,43.2
		path	52.7,33.1	45.9,25.7	34.5,10.9
		.' Follow this path
		.from Noxxion##13282 |only if not havequest(27698)
		.kill Noxxion##13282 |q 27698/1 |only if havequest(27698)
		|confirm |only if not havequest(27698)
	step
		map Maraudon
		path follow loose; loop off
		path	36.2,27.6	32.1,40.3	24.6,36.4
		path	16.4,34.1
		.' Follow this path:
		.from Razorlash##12258 |only if not havequest(27698)
		.kill Razorlash##12258 |q 27698/2 |only if havequest(27698)
	step
		'Click the Complete Quest box on the right side of your screen
		..turnin Servants of Theradras##27698
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Maraudon: Earth Song Falls (Mara) 36-41",[[
	dungeon 750
	description This guide will walk you through the Maraudon: Earth Song Falls dungeon.
	author support@zygorguides.com
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Desolace,29.1,62.5 |n
		.' Enter the doorway to Maraudon. |goto Desolace,29.1,62.5 |noway|c
	step
		map Desolace
		path follow strict; loop off; ants straight
		path	29.0,62.5	28.2,62.6	28.4,64.2
		path	27.9,64.3	27.4,63.0	28.0,62.8
		path	29.1,62.4	30.4,62.7	30.8,61.5
		path	30.0,60.1	29.3,61.1
		.' Follow this path and enter the portal to Maraudon |goto Maraudon/2 |noway |c
	step
	label	"start"
		goto 28.2,37.3 |n
		.' Jump down the waterfall here. |goto 28.2,37.3 <5 |noway |c
	step
		goto 29.9,50.0
		..accept Princess Theradras##27692
	step
		goto 33.2,60.8 |n
		.' Follow the path through this doorway. |goto 33.2,60.8 <5 |noway |c
	step
		map Maraudon/2
		path loop off
		path	35.4,57.2	41.8,61.4	44.9,54.1
		path	40.1,64.2	36.6,55.4	40.6,48.7
		.from Landslide##12203
		|confirm
	step 
		goto 44.3,67.1 |n
		.' Run down the ramp and follow this path. |goto 44.3,67.1 <5 |noway |c
	step
		map Maraudon/2
		path loop off
		path	46.1,68.1	44.4,73.8	36.6,79.7
		path	29.4,78.2
		.' Follow this path. |goto 29.4,78.2 <5 |noway |c
	step
		goto 26.6,78.8
		.from Princess Theradras##12201 |only if not havequest(27692)
		.kill Princess Theradras##12201 |q 27692/1 |only if havequest(27692)
		|confirm |only if not havequest(27692)
	step
		'Click the Quest Complete box in the top right corner
		..turnin Princess Theradras##27692
	step
		goto 31.3,75.6 |n
		.' Jump down the waterfall here. |goto 31.3,75.6 <5 |noway |c
	step
		goto 41.6,79.5
		.from Rotgrip##13596
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Scarlet Monastery: Cathedral (SM) 37-42",[[
	dungeon 762
	description This guide will walk you through the Scarlet Monastery dungeon.
	author support@zygorguides.com
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Tirisfal Glades,82.6,32.9 |n
		.' Enter the Scarlet Monastery here. |goto Tirisfal Glades 82.6,32.9 <5 |noway |c
	step
		goto 85.7,31.6 |n
		.' Enter the Armory here. |goto Scarlet Monastery/4 |noway |c
	step
	label	"start"
		goto 48.8,87.5
		.talk Dark Ranger Velonara##44706
		..accept Battle for the Scarlet Monastery##26967  
	step
		goto 49.0,66.0
		.talk Dominic##44805
		..accept Right Under Their Noses##26996 
	step
		goto 48.7,46.6
		.click Chapel Door##1207
		.' Go into the Crusader's Chapel. |goto 49.1,42.9 <5 |noway |c
	step
		goto 57.3,27.0 |n
		.' Clear this big room and enter this doorway, do not kill the boss yet. |goto 57.3,27.0 <5  |noway |c
	step
		goto 56.5,24.1
		.click Torch##442
		.from High Inquisitor Fairbanks##4542 |only if not havequest(26996)
		.kill High Inquisitor Fairbanks##4542 |q 26996/1 |only if havequest(26996)
		|confirm |only if not havequest(26996)	
	step
		goto 40.3,29.8 |n
		.' Clear out this side of the Cathedral, make sure to clear out the two rooms as well.
		.' Do not kill the Boss yet.
		|confirm
	step
		goto 49.1,27.4
		.' Now you are ready to fight the Boss, with no adds to worry about. 
		.' Kill the Commander, then _Inquisitor Whitemane_ will come out to Resurrect him.
		.' On the 2nd part of the fight, kill the _Inquisitor_ first, then kill the _Commander_, or she will heal him.
		.from Scarlet Commander Mograine##3976 |only if not havequest(26967)
		.from High Inquisitor Whitemane##3977 |only if not havequest(26967)
		.kill Scarlet Commander Mograine##3976 |q 26967/1 |only if havequest(26967)
		.kill High Inquisitor Whitemane##3977 |q 26967/2 |only if havequest(26967)	
	step
		goto 49.0,65.9
		.talk Dominic##44805
		..turnin Right Under Their Noses##26996
	step
		goto 48.8,87.5
		.talk Dark Ranger Velonara##44706
		..turnin Battle for the Scarlet Monastery##26967
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Dire Maul: Warpwood Quarter (DM) 38-43",[[
	dungeon 699
	description This guide will walk you through the Dire Maul: Warpwood Quarter dungeon.
	author support@zygorguides.com
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Feralas 64.8,30.3 |n
		.' Enter Dire Maul here |goto Dire Maul/5 |noway |c
	step
	label	"start"
		goto 7.1,36.3
		.talk "Ambassador" Dagg'thol##44971
		..accept Pusillin The Thief##27107 
		..accept Lethtendris's Web##27108 
	step
		goto 12.5,30.9
		.talk Pusillin##14354
		.' Tell him:
		.' <Game? Are you crazy?>
		|confirm
	step
		goto 11.2,38.4
		.talk Furgus Warpwood##44969
		..accept Shards of the Felvine##27103 
		..accept Alzzin the Wildshaper##27104 
		..accept An Unwelcome Guest##27105 
	step
		goto 22.1,75.3
		.talk Pusillin##14354
		.' Tell him:
		.' <Why you little..>
		|confirm
	step
		goto 32.5,26.9
		.talk Pusillin##14354
		.' Tell him: 
		.' <Mark my words, I will catch you, imp. And when I do!>
		|confirm
	step
		goto 42.8,49.1
		.from Lethtendris##14327+
		.get Lethtendris' Web |q 27108/1 |only if havequest(27108)
		|confirm |only if not havequest(27108)
	step
		goto 66.0,38.0
		.talk Pusillin##14354
		.' Tell him:
		.' <DIE!>
		|confirm
	step
		goto 76.3,45.5
		.talk Pusillin##14354
		.' Tell him: 
		.' <Prepare to meet your maker.>
		.from Pusillin##14354
		.get Book of Incantations |q 27107/1 |only if havequest(27107)
		|confirm |only if not havequest(27107)
	step
		goto 46.8,63.2 |n
		.' Go to the ramp here. |goto 46.8,63.2 <5 |noway|c
	step
		goto Dire Maul/6,55.5,71.4
		.from Hydrospawn##13280
		.get Hydrospawn Essence |q 27105/1 |only if havequest(27105)
		|confirm |only if not havequest(27105)
	step
		goto 57.8,56.1 |n
		.' Go up the ramp here. |goto 57.8,56.1 <5 |noway|c
	step
		goto 57.6,74.0
		.from Zevrim Thornhoof##11490 |only if not havequest(27104)
		.kill Zevrim Thornhoof##11490 |q 27104/1 |only if havequest(27104)
		|confirm |only if not havequest(27104)
	step
		goto 52.8,88.5 |n
		.' Go through this hallway and to the right. |goto 52.8,88.5 <5 |noway |c
	step
		goto 39.8,78.2 |n
		.talk Ironbark the Redeemed##11491 
		.' Tell him to open the Door.
		.' Follow him and go through the door he opens. |goto 40.2,48.7 <5 |c
	step
		goto Dire Maul/6,57.7,28.9
		.from Alzzin the Wildshaper##11492 |only if not havequest(27104)
		.kill Alzzin the Wildshaper##11492 |q 27104/2 |only if havequest(27104)
		|confirm |only if not havequest(27104)
	step
		goto 55.0,27.1
		.click Felvine Shard##5746
		.' Click the Reliquary of Purity in your bags |use Reliquary of Purity##18539 
		.collect Felvine Shard##18501 |n
		.get Sealed Reliquary of Purity |q 27103/1
		|only if havequest(27103)
	step
		.' You can either run to the beginning of the dungeon to turn in your quests.
		.' Or
		.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
		|confirm
	step
		goto Dire Maul 7.0,36.2
		.talk "Ambassador" Dagg'thol##44971
		..turnin Pusillin The Thief##27107
		..turnin Lethtendris's Web##27108
	step
		goto 11.2,38.4
		.talk Furgus Warpwood##44969
		..turnin Shards of the Felvine##27103
		..turnin Alzzin the Wildshaper##27104
		..turnin An Unwelcome Guest##27105
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Uldaman (Uld) 40-45",[[
	dungeon 692
	description This guide will walk you through the Uldaman dungeon.
	author support@zygorguides.com
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Badlands 41.7,11.6 |n
		.' Enter the Cave here. |goto Badlands 41.7,11.6 <5 |noway |c
	step
		map Badlands
		path loop off
		path	40.4,10.2	37.9,11.5	35.5,11.4
		path	34.3,10.4	34.3,10.4
		.' Follow this path:
		.' Enter Uldaman here. |goto Uldaman |noway |c
	step
	label	"start"
		goto 64.0,72.2
		.talk Aoren Sunglow##46241
		..accept We Require More Minerals##27682 
	step
		goto 64.0,72.5
		.talk High Examiner Tae'thelan Bloodwatcher##46236
		..accept The Chamber of Khaz'mul##27679 
	step
		goto 64.0,73.0
		.talk Lidia Sunglow##46235
		..accept Behind Closed Doors##27681 
	step
		map Uldaman
		path loop off
		path	65.5,77.3	61.8,80.5	56.8,75.3
		path	56.7,85.1	58.6,94.0
		.from Baelog##6906, Olaf##6908, Eric "The Swift"##6907
		|confirm
	step
		map Uldaman
		path loop off
		path	58.9,86.8	53.4,81.3	52.7,72.2
		.' Follow this path:
		.from Revelosh##6910
		|confirm
	step
		goto 45.4,73.5
		.' Clear the trash in the room before using the Keystone.
		.click the Keystone##1369
		|confirm
	step
		goto 42.6,73.5
		.from Ironaya##7228 |only if not havequest(27679)
		.kill Ironaya##7228 |q 27679/1 |only if havequest(27679)
		|confirm |only if not havequest(27679)
	step
		'Click the Complete Quest box in the top right corner.
		..turnin The Chamber of Khaz'mul##27679
	step
		'Click the Complete Quest box in the top right corner.
		..accept Archaedas, The Ancient Stone Watcher##27680
	step
		map Uldaman
		path loop off
		path	41.6,66.2	36.0,63.8	35.1,56.4
		path	31.1,56.3	28.6,61.4
		.' Follow this path:
		.from Obsidian Sentinel##7023
		.get Obsidian Power Core |q 27682/1 |only if havequest(27682)
		|confirm |only if not havequest(27682) |only if not havequest(27682)
	step
		map Uldaman
		path loop off
		path	33.0,54.5	37.8,58.0	43.6,55.1
		path	48.9,54.1	47.6,46.1	47.7,41.3
		.' Follow this path:
		.from Ancient Stone Keeper##7206
		.get Titan Power Core |q 27682/2 |only if havequest(27682)
		|confirm |only if not havequest(27682) |only if not havequest(27682)
	step
		map Uldaman
		path loop off
		path	44.7,41.3	41.1,36.7	33.7,38.0
		path	29.3,34.5	25.9,35.4
		.' Follow this path:
		.from Galgann Firehammer##7291 |only if not havequest(27681)
		.kill Galgann Firehammer##7291 |q 27681/1 |only if havequest(27681)
		|confirm |only if not havequest(27681)
	step
		map Uldaman
		path loop off
		path	29.3,34.7	32.5,28.0	27.9,21.1
		path	23.8,27.6	21.2,24.4
		.' Follow this path:
		.from Grimlok##4854
		|confirm
	step
		map Uldaman
		path loop off
		path	24.7,26.4	29.9,24.3	38.5,30.1
		path	43.1,33.4	44.6,26.2	41.7,16.7
		.' Follow this path:
		.click Altar of the Keepers
		.from 4 Stone Keeper##4857+
		|confirm
	step
		goto Uldaman/2 58.7,61.4 |n
		.click Temple Door##1370
		.' Follow the Hallway down, click the Temple Door and go inside. |goto 57.6,58.1 <5 |noway |c
	step
		goto 56.0,53.1
		.click Altar of Archaedas
		.from Archaedas##2748 |only if not havequest(27680)
		.kill Archaedas##2748 |q 27680/1 |only if havequest(27680)
		|confirm |only if not havequest(27680)
	step
		'Click the Quest Complete box in the top right corner
		..turnin Archaedas, The Ancient Stone Watcher##27680
	step
		goto 50.0,33.6
		.click The Discs of Norgannon##131474
		..accept The Platinum Discs##2278 
	step
		goto 48.0,37.2
		.talk Lore Keeper of Norgannon##7172
		'Ask him about the Earthen.
		.' Learn the lore that the stone watcher has to offer. |q 2278/1
		|only if havequest(2278)
	step
		goto 50.0,33.6
		.click The Discs of Norgannon##131474
		..turnin The Platinum Discs##2278 
		..accept The Platinum Discs##2280 

	step
		.' You can either run to the beginning of the dungeon to turn in your quests.
		.' Or
		.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
		|confirm
	step
		goto Uldaman 64.0,72.1
		.talk Aoren Sunglow##46241
		..turnin We Require More Minerals##27682
	step
		goto 64.1,73.0
		.talk Lidia Sunglow##46235
		..turnin Behind Closed Doors##27681
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Scholomance (Scholo) 40-45",[[
	dungeon 763
	description This guide will walk you through the Scholomance dungeon.
	author support@zygorguides.com	
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Western Plaguelands 69.4,73.2 |n
		.' Go through this door and into Scholomance. |goto Scholomance |noway |c
	step
	label	"start"
		goto Scholomance,46.3,51.8
		.talk Eva Sarkhoff##45107
		..accept Doctor Theolen Krastinov, the Butcher##27146 
		..accept Kirtonos the Herald##27147 
	step
		goto 47.4,51.9
		.talk Lucien Sarkhoff##45108
		..accept School's Out Forever##27148 
	step
		goto 47.3,58.2
		.talk Alexi Barov##45110
		..accept Alexi's Gambit##27140 
		..accept The Lich, Ras Frostwhisper##27142 
	step
		goto 46.0,58.3
		.talk Weldon Barov##45109
		..accept Barov Family Fortune##27143 
		..accept Plagued Hatchlings...For Now##27145 
	step
		goto 85.4,44.1
		.click The Deed to Southsore##183
		.get The Deed to Southshore |q 27143/3
		|only if havequest(27143)
	step
		goto 66.9,34.4 |n
		.' Go through this doorway. |goto Scholomance/2 |noway |c
	step
		goto 49.4,3.8
		.click Brazier of the Herald##759
		.from Kirtonos the Herald##10506 |only if not havequest(27147)
		.kill Kirtonos the Herald##10506 |q 27147/1 |only if havequest(27147)
		|confirm |only if not havequest(27147)
	step
		goto 32.9,55.5
		.click The Deed to Tarren Mill##183
		.get The Deed to Tarren Mill |q 27143/4
		|only if havequest(27143)
	step
		goto 26.4,44.0 |n
		.' Go down these steps to the room below. |goto 26.4,44.0 <5 |noway |c
	step
		goto Scholomance/3,53.8,14.4
		.from Jandice Barov##10503
		|confirm
	step
		goto 28.9,24.1 |n
		.' Go through this doorway and up the stairs. |goto 28.9,24.1 <5 |noway |c
	step
		goto Scholomance/2,33.5,71.3
		.kill 10 Plagued Hatchling##10678 |q 27145/1
		|only if havequest(27145)
	step
		goto 36.2,82.6 |n
		.' Follow these stairs down. |goto 36.2,82.6 <5 |noway |c
	step
		goto Scholomance/3 30.2,62.3
		.from Rattlegore##11622 |only if not havequest(27145)
		.kill Rattlegore##11622 |q 27145/2 |only if havequest(27145)
		|confirm |only if not havequest(27145)
	step
		'Go back up the stairs. |goto Scholomance/2 |noway |c
	step
		goto 42.2,47.2 |n
		.' Go through this doorway. |goto 42.2,47.2 <5 |noway |c
	step
		goto Scholomance/2 53.8,55.4 |n
		.' Continue through this doorway. |goto 53.8,55.4 <5 |noway |c
	step
		goto 44.2,64.2
		.from Marduk Blackpool##10433 |only if not havequest(27140)
		.kill Marduk Blackpool##10433 |q 27140/2 |only if havequest(27140)
		|tip The entire room will aggro, make sure to either clear or be ready for a large fight when you attack him.
		|confirm |only if not havequest(27140)
	step
		goto 48.0,65.9
		.from Vectus##10432 |only if not havequest(27140)
		.kill Vectus##10432 |q 27140/1 |only if havequest(27140)
		|confirm |only if not havequest(27140)
	step
		goto 47.9,83.8 |n
		.' Go through this doorway and down the stairs. |goto 47.9,83.8 <5 |noway |c
	step
		goto 37.5,85.9
		.click The Deed to Brill##183
		..get The Deed to Brill |q 27143/1
		|only if havequest(27143)
	step
		goto Scholomance/4,40.6,87.7
		.from Ras Frostwhisper##10508 |only if not havequest(27142)
		.kill Ras Frostwhisper##10508 |q 27142/1 |only if havequest(27142)
		|confirm |only if not havequest(27142)
	step
		goto Scholomance/2,57.5,68.8 |n
		.' Go back up the stairs and through this doorway. |goto 57.5,68.8 <5 |noway |c
	step
		goto Scholomance/3 71.9,11.1
		.from Lorekeeper Polkelt##10901
		|confirm
	step
		goto 90.8,40.4 |n
		.click Remains of Eva Sarkhoff##14
		.' Burn the Remains of Eva Sarkhoff. |q 27146/2
		|only if havequest(27146)
	step
		goto 92.3,51.9
		.click Remains of Lucien Sarkhoff##14
		.' Burn Remains of Lucien Sarkhoff. |q 27146/3
		|only if havequest(27146)
	step
		goto 94.9,46.0
		.from Doctor Theolen Krastinov##11261 |only if not havequest(27146)
		.kill Doctor Theolen Krastinov##11261 |q 27146/1 |only if havequest(27146)
		|confirm |only if not havequest(27146)
	step
		goto 72.8,81.6
		.from Instructor Malicia##10505
		|confirm
	step
		goto 67.3,46.9 |n
		.' Go down these stairs. |goto Scholomance/4 |noway |c
	step
		goto Scholomance/4,67.0,5.7
		.from Lady Illucia Barov##10502
		|confirm
	step
		goto 84.5,30.6
		.from Lord Alexei Barov##10504
		|confirm
	step
		goto 84.5,30.6
		.click The Deed to Caer Darrow##183
		.get The Deed to Caer Darrow |q 27143/2
		|only if havequest(27143)
	step
		goto 67.5,52.7
		.from The Ravenian##10507
		|confirm
	step
		goto 68.2,30.4
		.from Darkmaster Gandling##1853 |only if not havequest(27148)
		.kill Darkmaster Gandling##1853 |q 27148/1 |only if havequest(27148)
	step
		.' You can either run to the beginning of the dungeon to turn in your quests.
		.' Or
		.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
		|confirm
	step
		goto Scholomance 46.3,52.1
		.talk Eva Sarkhoff##45107
		..turnin Doctor Theolen Krastinov, the Butcher##27146
		..turnin Kirtonos the Herald##27147
	step
		goto 47.4,51.9
		.talk Lucien Sarkhoff##45108
		..turnin School's Out Forever##27148
	step
		goto 47.3,58.1
		.talk Alexi Barov##45110
		..turnin Alexi's Gambit##27140
		..turnin The Lich, Ras Frostwhisper##27142
	step
		goto 46.0,58.1
		.talk Weldon Barov##45109
		..turnin Barov Family Fortune##27143
		..turnin Plagued Hatchlings...For Now##27145
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Dire Maul: Capital Gardens (DM) 41-46",[[
	dungeon 699
	description This guide will walk you through the Dire Maul: Capital Gardens dungeon.
	author support@zygorguides.com
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Feralas 60.3,31.3 |n
		.' Enter Dire Maul here. |goto 60.3,31.3 <5 |noway |c
	step
	label	"start"
		goto Dire Maul/2,87.3,52.6
		.talk Shen'dralar Watcher##44999
		..accept The Warped Defender##27109
	step
		goto Dire Maul/2,87.3,52.6
		.talk Shen'dralar Watcher##44999
		..accept The Warped Defender##27109 
	step
		goto 90.6,44.9
		.talk Estulan##44991
		..accept The Cursed Remains##27112
		..accept The Shen'dralar Ancient##27113 
	step
		goto 73.2,53.8
		.from Mana Remnant##11483+
		.' Kill all the Remnants around the crystals to deactivate them.
		|confirm
	step
		goto 32.1,71.6 |n
		.' Enter this Hallway. |goto 32.1,71.6 <5 |noway |c
	step
		goto Dire Maul/3,30.6,45.8
		.from Magister Kalendris##11487 |only if not havequest(27112)
		.kill Magister Kalendris##11487 |q 27112/1 |only if havequest(27112)
		|confirm |only if not havequest(27112)
	step
		goto 49.4,12.7 |n
		.' Follow this ramp up. |goto 49.4,12.7 <5 |noway |c
	step
		goto Dire Maul/2,42.0,22.4
		.from Mana Remnant##11483+
		.' Kill all the Remnants around the crystals to deactivate them.
		|confirm
	step
		goto 48.4,53.8
		.talk Shen'dralar Ancient##14358
		..turnin The Shen'dralar Ancient##27113
	step
		goto 48.4,53.8
		.talk Shen'dralar Ancient##14358
		..accept The Madness Within##27110
	step
		goto 39.5,83.4	
		.from Mana Remnant##11483+
		.' Kill all the Remnants around the crystals to deactivate them.
		|confirm
	step
		goto 21.7,75.8
		.from Illyanna Ravenoak##11488 |only if not havequest(27112)
		.kill Illyanna Ravenoak##11488 |q 27112/2 |only if havequest(27112)
		|confirm |only if not havequest(27112)
	step
		.' Follow this ramp down. |goto 20.8,19.6 <5 |c
	step
		.' Go through this doorway. |goto Dire Maul/3 56.3,26.8 <5 |c
	step
		goto Dire Maul/2 34.6,53.3
		.from Tendris Warpwood##11489 |only if not havequest(27109)
		.kill Tendris Warpwood##11489 |q 27109/1 |only if havequest(27109)
		|confirm |only if not havequest(27109)
	step
		goto 29.1,42.8 |n
		.' Go through this doorway and down the Hallway. |goto Dire Maul/4 76.0,39.9 <5 |noway |c
	step
		goto 46.5,81.6
		.from Mana Remnant##11483+, Arcane Aberration##11480+
		.' Kill all the Remnants around the crystal to deactivate it.
		|confirm
	step
		goto 44.7,34.1
		.from Mana Remnant##11483+, Arcane Aberration##11480+
		.' Kill all the Remnants around the crystal to deactivate it.
		|confirm
	step
		goto 35.5,57.0
		.from Immol'thar##11496 |only if not havequest(27110)
		.kill Immol'thar##11496 |q 27110/1 |only if havequest(27110)
		|confirm |only if not havequest(27110)
	step
		.' Go through this doorway. |goto 59.1,33.5 <5 |c
	step
		.' Go down this ramp. |goto 67.1,24.2 <5 |c
	step
		goto 60.4,23.5
		.from Prince Tortheldrin##11486 |only if not havequest(27110)
		.kill Prince Tortheldrin##11486 |q 27110/2 |only if havequest(27110)
		|confirm |only if not havequest(27110)
	step
		.' You can either run to the beginning of the dungeon to turn in your quests.
		.' Or
		.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
		|confirm
	step
		goto Dire Maul/2,87.3,52.4
		.talk Shen'dralar Watcher##44999
		..turnin The Warped Defender##27109
	step
		goto 90.5,44.8
		.talk Estulan##44991
		..turnin The Cursed Remains##27112
	step
		goto 39.9,34.4 |n
		.' Enter this room here. |goto 39.9,34.4 <5 |noway |c
	step
		goto Dire Maul/3,48.1,12.4 |n
		.' Follow this ramp up. |goto 48.1,12.4 <5 |noway |c
	step
		goto Dire Maul/2,48.4,53.8
		.talk Shen'dralar Ancient##14358
		..turnin The Madness Within##27110
	step
		goto Dire Maul/2,48.4,53.8
		.talk Shen'dralar Ancient##14358
		..accept The Treasure of the Shen'dralar##27111 
	step
		goto 20.8,19.6 |n
		.' Follow this ramp down. |goto 20.8,19.6 <5 |noway |c
		|only if havequest(27111)
	step
		goto Dire Maul/3,56.3,26.8 |n
		.' Go through this doorway. |goto 56.3,26.8 <5 |noway |c
		|only if havequest(27111)
	step
		goto Dire Maul/2,29.1,42.8 |n
		.' Go through this doorway and down the Hallway. |goto Dire Maul/4 |noway |c
		|only if havequest(27111)
	step
		goto 59.1,33.5 |n
		.' Go through this doorway. |goto 59.1,33.5 <5 |noway |c
		|only if havequest(27111)
	step
		goto 70.6,24.1
		.click Treasure of the Shen'dralar##1387
		..turnin The Treasure of the Shen'dralar##27111
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Razorfen Downs (RFD) 42-47",[[
	dungeon 760
	description This guide will walk you through the Razorfen Downs dungeon.
	author support@zygorguides.com	
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Thousand Needles 47.6,23.6 |n
		.' Enter the Dungeon here. |goto Razorfen Downs |noway |c
	step
	label	"start"
		goto Razorfen Downs 24.6,23.7
		.talk Koristrasza##44837
		..accept The Coldbringer##27009 
		..accept Partners in Crime##27024
		..accept Cure the Scourge##27029 
	step
		'As you go through the dungeon, make sure to loot mobs for your quest item _Withered Tusk_.
		|confirm
	step
		goto 31.0,18.2 |n
		.' Follow the left route of the dungeon. |goto 31.0,18.2 <5 |noway |c
	step
		goto 59.6,28.0
		.' Clear this room than click the Gong.
		.' You will fight 2 small waves of spiders, then the boss will show up.
		.click the Gong after each wave to summon the next group.
		.from Tuten'kash##7355 |only if not havequest(27024)
		.kill Tuten'kash##7355 |q 27024/3 |only if havequest(27024)
		|confirm |only if not havequest(27024)
	step
		goto 68.9,37.9 |n
		.' Follow the path to the left. |goto 68.9,37.9 <5 |noway |c
	step
		goto Razorfen Downs 78.3,16.6 |n
		.click the Holding Pin
		.talk Belnistrasz##8516
		..accept Scourge of the Downs##27019 
	step
		goto Razorfen Downs 78.3,16.6 |n
		.click the Holding Pin
		..turnin Scourge of the Downs##27019
	step
		goto Razorfen Downs 78.3,16.6 |n
		.click the Holding Pin
		..accept Extinguishing the Idol##27022 
	step
		goto 46.7,22.6
		.' There will be about 6 waves of mobs, and a boss to kill here for 5 minutes
		.' Protect Belnistrasz while he performs the ritual to shut down the idol |q 27022/1
		|only if havequest(27022)
	step
		goto 46.7,22.6
		click Brazier##759
		..turnin Extinguishing the Idol##27022
	step
		goto 68.6,36.8 |n
		.' Go up the ramp here. |goto Razorfen Downs 68.6,36.8 <5 |noway|c
	step
		goto 76.3,34.4 |n
		.' Cross the bridge here. |goto 75.5,34.4 <5 |noway
	step
		goto 85.2,46.4
		.from Mordresh Fire Eye##7357 |only if not havequest(27024)
		.kill Mordresh Fire Eye##7357 |q 27024/2 |only if havequest(27024)
		|confirm |only if not havequest(27024)
	step
		goto 75.1,40.2 |n
		.' Take this ramp up and continue following the path. |goto 75.1,40.2 <5 |noway |c
	step
		goto Razorfen Downs 36.6,70.8
		.from Glutton##8567 |only if not havequest(27024)
		.kill Glutton##8567 |q 27024/1 |only if havequest(27024)
		|confirm |only if not havequest(27024)
	step
		goto 44.6,59.4
		.' Follow this path up and around
		.from Amnennar the Coldbringer##7358 |only if not havequest(27009)
		.kill Amnennar the Coldbringer##7358 |q 27009/1 |only if havequest(27009)
	step
		.' You can either run to the beginning of the dungeon to turn in your quests.
		.' Or
		.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
		|confirm
	step
		goto Razorfen Downs 24.6,23.7
		.talk Koristrasza##44837
		..turnin The Coldbringer##27009
		..turnin Partners in Crime##27024
		..turnin Cure the Scourge##27029	
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Dire Maul: Gordock Commons (DM)  43-48",[[
	dungeon 699
	description This guide will walk you through the Dire Maul: Gordock Commons dungeon.
	author support@zygorguides.com	
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Feralas 62.5,24.9 |n
		.' Enter Dire Maul here. |goto Dire Maul |noway |c
	step
	label	"start"
		.' Click here to do a Tribute run, which skips killing any bosses and gives you treasure and quests at the end. |confirm always |next "tribute" |or
		.' or
		.' Click here to run the durngon normally |confirm always |next "normal" |or
	step
	label	"normal"
		goto 71.7,92.2
		.talk Stonemaul Ogre##45052
		..accept King of the Gordok##27128
	step
		goto 69.8,75.5
		.from Guard Mol'dar##14326+
		.' He will call out for help, so you may need to clear some of the area around him first.
		|confirm
	step
		goto Dire Maul 62.2,66.0
		.from Stomper Kreeg##14322 |tip Up the ramp, in the corner.
		|confirm
	step
		goto 49.3,78.7
		.click Fengus's Chest##41
		.from Guard Fengus##14321 |tip He will walk around this area.
		|confirm
	step
		goto 40.5,78.2 |n
		.' Go through this doorway. |goto 40.5,78.2 <5 |noway |c
	step
		goto 26.5,58.8
		.' He will call out for help, so you may need to clear some of the area around him first.
		.from Guard Slip'kik##14323
		|confirm
	step
		goto 23.3,66.7 |n
		.' Follow this ramp up. |goto 23.3,66.7 <5 |noway |c
	step
		goto 29.0,65.7 |n
		.' Go up the ramp through this doorway. |goto 29.0,65.7 <5 |noway |c
	step
		goto 31.9,50.8
		.from Captain Kromcrush##14325
		|confirm
	step
		goto 31.8,26.4
		.from King Gordok##11501 |only if not havequest(27128)
		.kill King Gordok##11501 |q 27128/1 |only if havequest(27128)
		|confirm |only if not havequest(27128)
	step
		goto 31.7,27.4
		.talk Mizzle the Crafty##14353
		.' Tell him:
		.' <I'm the new king? What are you talking about? 
		.' Talk to him a second time, about the Tribute, and he will spawn a Chest for you to loot as well.
		.click Gordok Tribute##1387
		|confirm
	step
		.' You can either run to the beginning of the dungeon to turn in your quests.
		.' Or
		.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
		|confirm always |next "end"
	step
	label	"tribute"
		goto 71.7,92.2
		.talk Stonemaul Ogre##45052
		..accept King of the Gordok##27128
	step
		goto 57.7,85.4 |n
		.' Follow this hallway to the left. |goto 57.7,85.4 <5 |noway |c
	step
		goto 40.5,78.2 |n
		.' Follow the path, avoid Guard Fengus, _DO NOT_ kill him. Go through this doorway. |goto 40.5,78.2 <5 |noway |c
	step
		goto Dire Maul 28.6,55.3
		.talk Knot Thimblejack##14338
		..accept The Gordok Ogre Suit##27119
	step
		goto 26.5,57.9
		.click Broken Trap##5712
		..accept A Broken Trap##27118 |instant |repeatable
		.' Wait for Slip'kik to get frozen before moving on |tip You may have to aggro him and walk over the trap.
		|confirm
	step
		goto 23.7,55.6 |n
		.' Up the ramp:
		.click Ogre Tannin Basket##468
		.collect Ogre Tannin##18240
		.get Ogre Tannin |q 27119/1 
		|only if havequest(27119)
	step
		goto 28.6,55.3
		.' Jump down or go down the ramp.
		.talk Knot Thimblejack##14338
		..turnin The Gordok Ogre Suit##27119
		..accept The Gordok Ogre Suit##27120 |instant |repeatable
	step
		goto 23.2,66.6 |n
		.' Follow this ramp up. |goto 23.2,66.6 <5 |noway |c
	step
		goto 29.1,65.8 |n
		.' Go through this doorway. |goto 29.1,65.8 <5 |noway |c
	step
		.' Before running down this hallway:
		.' Put on your ogre disguise. |havebuff Interface\Icons\Ability_Rogue_Disguise |use Gordok Ogre Suit##18258
	step
		goto 31.8,26.4
		.from King Gordok##11501 |only if not havequest(27128)
		.kill King Gordok##11501 |q 27128/1 |only if havequest(27128)
		.' Do not kill Cho'Rush the Observer
		|confirm |only if not havequest(27128)
	step
		goto 31.7,27.4
		.talk Mizzle the Crafty##14353
		.' Tell him:
		.' <I'm the new king? What are you talking about? 
		.' Talk to him a second time, about the Tribute, and he will spawn a Chest for you to loot as well.
		.click Gordok Tribute##1387
		|confirm
	step
		goto 31.8,50.0
		.talk Captain Kromcrush##14325
		..accept Unfinished Gordok Business##27124
	step
		goto 62.0,65.8
		.talk Stomper Kreeg##14322
		..accept The Gordok Taste Test##27114 |instant
	step
		goto 69.9,75.5
		.talk Guard Mol'dar##14326
		..turnin Unfinished Gordok Business##27124
	step
	label	"end"
		goto Dire Maul 71.7,92.3
		.talk Stonemaul Ogre##45052
		..turnin King of the Gordok##27128
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Stratholme: Main Gate (Strat) 44-49",[[
	dungeon 765
	description This guide will walk you through the Stratholme: Main Gate dungeon.
	author support@zygorguides.com	
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Eastern Plaguelands 27.7,11.6 |n
		.' Enter Stratholme here. |goto Stratholme |noway |c
	step
	label	"start"
		goto 67.0,89.2
		.talk Packmaster Stonebruiser##45323
		..accept The Great Fras Siabi##27192 
	step
		goto 65.3,87.2
		.talk Master Craftsman Wilhelm##45201
		..accept Cutting the Competition##27185 
	step
		goto 66.3,86.7
		.talk Crusade Commander Eligor Dawnbringer##45200
		..accept The Dreadlord Balnazzar##27208 
		..accept Of Love and Family##27305 
		..accept Retribution##27223 
	step
		goto 54.5,70.8
		.from Stratholme Courier##11082
		.click Premium Siabi Tobacco##336
		.from Fras Siabi##11058 |tip He will show up after you click the box.
		.get Siabi's Premium Tobacco |q 27192/1
		|only if havequest(27192)	
	step
		goto 73.6,20.4
		.kill The Unforgiven##10516 |q 27223/1 |only if havequest(27223)
		|confirm |only if not havequest(27223)	
	step
		goto Stratholme 50.1,17.4
		.kill Timmy the Cruel##10808 |q 27223/2 |only if havequest(27223)
		|confirm |only if not havequest(27223)
	step
		goto 32.0,34.7 |n
		.' Go through this doorway. |goto 32.0,34.7 <5 |noway |c
	step
		goto 30.6,39.9
		.from Commander Malor##11032
		|confirm
	step
		goto 19.8,51.3 |n
		.' Go through this doorway. |goto 19.8,51.3 <5 |noway |c
		|only if havequest(27185)
	step
		goto 12.5,47.5 |n
		.click Blacksmithing Plans##525
		.kill Risen Hammersmith##11120 |q 27185/1
		|only if havequest(27185)
	step
		goto 22.3,56.7 |n
		.' Go through this doorway. |goto 22.3,56.7 <5 |noway |c
	step
		goto 27.4,75.2
		.from Instructor Galford##10811
		.click Unfinished Painting##4733 |tip This is on the wall next to you.
		.get Of Love and Family |q 27305/1
		|only if havequest(27305)	
	step
		goto 19.3,83.1
		.from Balnazzar##10813 |only if not havequest(27208)
		.kill Balnazzar |q 27208/1 |only if havequest(27208)	
	step
		goto 21.6,80.8
		.talk Crusade Commander Eligor Dawnbringer##45200
		..turnin The Dreadlord Balnazzar##27208
		..turnin Of Love and Family##27305
		..turnin Retribution##27223
	step
		goto 21.6,79.8
		.talk Packmaster Stonebruiser##45323
		..turnin The Great Fras Siabi##27192
	step
		goto 24.2,76.3
		.talk Master Craftsman Wilhelm##45201
		..turnin Cutting the Competition##27185
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Zul'Farrak (ZF) 46-51",[[
	dungeon 686
	description
	author
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
		goto Tanaris 39.22,21.27 |n
		.' Enter the swirling portal to Zul'Farrak. |goto Zul'Farrak |noway|c
	step
	label "start"
		goto Zul'Farrak 56.7,89.2
		.talk Mazoga's Spirit##40712
		..accept Chief Ukorz Sandscalp##27068
		..accept Wrath of the Sandfury##27071
	step
		goto 58.2,89.1
		.talk Chief Engineer Bilgewhizzle##7407
		..accept A Fool's Errand##27070
	step
		goto 58.3,88.7
		.talk Tran'rek##44929
		..accept Breaking and Entering##27076
	step
		map Zul'Farrak
		path follow strict; loop off
		path 57.5,79.9	59.1,68.2	57.3,55.7
		path 53.0,38.9	59.8,42.0	55.6,30.7
		'Follow the path. |goto 55.5,30.7 <5 |noway|c
	step
		goto 54.8,29.3
		..kill Theka the Martyr##7272 |q 27071/1
		|only if havequest(27071)
	step
		goto 63.3,27.9
		.' Clear the trash in this area.
		.from Sandfury Shadowhunter##7246+, Sul'lithuz Sandcrawler##8095+, Sandfury Witch Doctor##5650+
		|confirm
	step
		goto Zul'Farrak 66.0,26.0 |tip Moving to this location will cause the boss to chase your party until he aggros.
		.from Antu'sul##8127 |only if not havequest(27071)
		.kill Antu'sul##8127 |q 27071/3 |only if havequest(27071)
		.from Servant of Antu'sul##8156+, Sul'lithuz Broodling##8138+
		.' He will summon Sul'lithuz Broodlings to aid him in battle. Tanks try to pick them up quickly.
		|confirm |only if not havequest(27071)
	step
		goto 44.1,15.8
		'Witch Doctore Zum'rah will be friendly until you approach him.
		.from Witch Doctor Zum'rah##7271 |only if not havequest(27071)
		..kill Witch Doctor Zum'rah##7271 |q 27071/2 |only if havequest(27071)
		|confirm |only if not havequest(27071)
	step
		goto 30.8,15.9
		.from Sandfury Witch Doctor##5650+, Sandfury Shadowhunter##7246+
		.' Clear the trash around the area.
		|confirm
	step
		 goto 25.1,17.9
		 .from Sandfury Executioner##7274+
		|confirm
	step	
		'Once you kill the Executioner, click the cages behind him.
		.click Troll Cage##1787
		|confirm
	step
		'There will be an event when you release the prisoners.
		.from Sandfury Drudge##7788+, Sandfury Slave##7787+, Sandfury Cretin##7789+
		.' Defend Sergeant Bly from the attacking trolls.
		.' Eventually Shadowpriest Sezz'zis will appear.
		.from Shadowpriest Sezz'ziz##7275 |only if not havequest(27076)
		..kill Shadowpriest Sezz'ziz##7275 |q 27076/2 |only if havequest(27076)
		|confirm |only if not havequest(27076)
	step
		goto Zul'Farrak 30.5,18.1
		.talk Sergeant Bly##7604
		.' Tell him you're tired of taking orders from him.
		.from Sergeant Bly##7604, Murta Grimgut##7608, Raven##7605, Oro Eyegouge##7606
		|confirm
	step
		 goto 43.5,34.6
		.from Ruuzlu##7797,  Chief Ukorz Sandscalp##7267 |only if not havequest(27071) or not havequest(27068)
		..kill Ruuzlu |q 27071/4 |only if havequest(27071)
		..kill Chief Ukorz Sandscalp |q 27068/1 |only if havequest(27068)
		|confirm |only if not havequest(27071) or not havequest(27068)
	step
		goto 29.7,38.8
		.from Hydromancer Velratha##7795 |tip She patrols around the room a bit, but often stops here.
		..get Tiara of the Deep |q 27070/1
		|only if havequest(27070)
	step
		goto Zul'Farrak 32.9,43.6 |n
		.' Kill trash while making your way to the _Gong of Zul'Farrak_. |goto Zul'Farrak 32.9,43.6 <5 |noway|c
	step
		goto 32.8,43.5
		.click Gong of Zul'Farrak##1827 |tip This will cause Gahz'rilla to spawn.
		.from Gahz'rilla##7273
		..get Gahz'rilla's Electrified Scale |q 27070/2 |only if havequest(27070)
		|confirm
	step
		.' You can either run to the beginning of the dungeon to turn in your quests.
		.' Or
		.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
		|confirm
	step
		goto Zul'Farrak 56.7,89.2
		.talk Mazoga's Spirit##40712
		..turnin Chief Ukorz Sandscalp##27068 
		..turnin Wrath of the Sandfury##27071
	step
		goto 58.2,89.1
		.talk Chief Engineer Bilgewhizzle##7407
		..turnin A Fool's Errand##27070
	step
		goto 58.3,88.7
		.talk Tran'rek##44929
		..turnin Breaking and Entering##27076
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Stratholme: Service Entrance (Strat) 48-53",[[
	dungeon 765
	description This guide will walk you through the Stratholme: Service Entrance dungeon.
	author support@zygorguides.com	
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance. |confirm |next "entrance"
		.' I will use the Dungeon Finder. |confirm |next "start"
	step
	label	"entrance"
		 goto Eastern Plaguelands 43.5,19.4 |n
		 .click Elders' Square Service Entrance##3614
		 .' Go through this gate. |goto 43.5,19.4 <5 |noway |c
	step
		goto 43.9,17.4 |n
		.' Go through the portal to Strathholme. |goto Stratholme/2 |noway |c
	step
	label	"start"
		goto Stratholme 67.8,82.4
		.talk Packmaster Stonebruiser##45328
		..accept Liquid Gold##27352
	step
		goto Stratholme/2 67.1,72.6
		.talk Archmage Angela Dosantos##45330
		..accept Argent Reinforcements##27359 
	step
		goto 67.9,72.1
		.talk Crusade Commander Korfax##45206
		..accept Man Against Abomination##27228 
	step
		goto 68.0,72.7
		.talk Crusade Commander Eligor Dawnbringer##45329
		..accept Lord Aurius Rivendare##27227 
	step
		goto 68.6,73.1
		.talk Master Craftsman Wilhelm##45331
		..accept Weapons for War##27230 
	step
		goto 63.4,66.2 |n
		.click Gauntlet Gate##3614
		.' Go through this gate.  |goto 63.2,65.4 <5 |noway |c
	step
		goto 62.4,57.9 |n
		.click Gauntlet Gate##3614
		.' Go through this gate. |goto 62.9,57.5 <5 |noway |c
	step
		.' While running through this area:
		.from Wailing Banshee##10464+
		.get 4 Banshee Essence |q 27359/1 |future
		|confirm
		|only if havequest(27359)
	step
		goto 68.6,54.6
		.click Supply Crate##336 |tip They will be along the walls throughout the entire instance.
		.get Stratholme Holy Water |q 27352/1
		|only if havequest(27352)
	step
		goto 72.7,52.4
		.click Blacksmithing Plans##525
		.kill Black Guard Swordsmith##11121 |q 27230/1
		|only if havequest(27230)
	step
		goto 74.8,46.8
		.from Baroness Anastari##10436
		.' After you kill this boss, make sure to go inside the doors and kill the Acolyte's.
		.from Thuzadin Acolyte##10399+
		|confirm
	step
		goto 68.1,20.0
		.from Maleki the Pallid##10438
		.' After you kill this boss, make sure to go inside the doors and kill the Acolyte's.
		.from Thuzadin Acolyte##10399+
		|confirm
	step
		goto 57.0,15.1
		.from Magistrate Barthilas##10435
		|confirm
	step
		goto 56.5,46.8
		.from Nerub'enkan##10437
		.' After you kill this boss, make sure to go inside the doors and kill the Acolyte's.
		.from Thuzadin Acolyte##10399+
		|confirm
	step
		goto 66.5,49.3
		.from Wailing Banshee##10464+
		.get 4 Banshee Essence |q 27359/1
		|only if havequest(27359)
	step
		goto 47.3,19.9
		.' Clear this room of Abominations.
		|confirm
	step
		goto 47.3,19.9
		.from Ramstein the Gorger##10439 |only if not havequest(27228)
		.kill Ramstein the Gorger##10439 |q 27228/1 |only if havequest(27228)
		|confirm |only if not havequest(27228)
	step
		.' Before you kill the next boss, you will have a wave a mobs come from the left gate.
		.' Then, you will have a wave of elite mobs come from the doorway. 
		.' Clear these 2 waves.
		|confirm
	step
		goto 37.4,19.9
		.from Lord Aurius Rivendare##45412 |only if not havequest(27227)
		.kill Lord Aurius Rivendare##45412 |q 27227/1 |only if havequest(27227)
	step
		goto 44.8,20.4
		.talk Crusade Commander Eligor Dawnbringer##45329
		..turnin Lord Aurius Rivendare##27227
	step
		goto 43.9,14.1
		.talk Crusade Commander Korfax##45206
		..turnin Man Against Abomination##27228
	step
		goto 42.5,12.7
		.talk Archmage Angela Dosantos##45330
		..turnin Argent Reinforcements##27359
	step
		goto 49.8,18.4
		.talk Master Craftsman Wilhelm##45331
		..turnin Weapons for War##27230
	step
		goto 49.7,22.4
		.talk Packmaster Stonebruiser##45328
		..turnin Liquid Gold##27352
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Sunken Temple (ST) 52-57",[[
	description This guide will walk you through the Sunken Temple dungeon.
	step
		goto Swamp of Sorrows 69.6,53.6 |n
		.' Follow the steps down into the temple. |goto Swamp of Sorrows 69.9,52.5 |noway |c
	step
		goto Swamp of Sorrows 76.0,45.2 |n
		'Enter the swirling portal to Sunken Temple. |goto The Temple of Atal'Hakkar |noway|c
	step
		goto The Temple of Atal'Hakkar 50.0,17.2
		.talk Lord Itharius##46077
		..accept Jammal'an the Prophet##27604
		..accept Eranikus##27605
		..accept The Blood God Hakkar##27633
	step
		goto 76.2,54.9
		' Clear the trash here. The mobs will fear you around the room, so be careful.
		|confirm
	step
		goto 76.1,38.7
		.from Jammal'an the Prophet##5710
		..get Head of Jammal'an |q 27604/1 |only if havequest(27604)
		|confirm |only if not havequest(27604)
	step
		goto 24.3,45.7
		.' After clearing the trash, use your Egg of Hakkar here. |use Egg of Hakkar##10465
		..from Avatar of Hakkar##8443 |only if not havequest(27633)
		..kill Avatar of Hakkar##8443 |q 27633/1 |only if havequest(27633)
		|confirm |only if not havequest(27633)
	step
		goto 49.4,81.3
		.from Hazzas##5722, Morphaz##5719
		|confirm
	step
		goto 68.5,87.7
		.from Shade of Eranikus##5709 |only if not havequest(27605)
		.kill Shade of Eranikus##5709 |q 27605/1 |only if havequest(27605)
		'Note that you will not be able to attack him if you haven't defeated the other bosses.
	step
		goto The Temple of Atal'Hakkar 50.0,17.2
		.talk Lord Itharius##46077
		..turnin Jammal'an the Prophet##27604
		..turnin Eranikus##27605
		..turnin The Blood God Hakkar##27633
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Blackrock Depths: Detention Block (BRD) 53-58",[[
	dungeon 704
	description This guide will walk you through the Blackrock Depths: Detention Block dungeon.
	author support@zygorguides.com	
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label "entrance"
		goto Searing Gorge 26.9,72.6 |n
		.' Enter Blackrock Depths here. |goto Blackrock Depths |noway |c
	step
	label "start"
		goto Blackrock Depths 36.1,77.3
		.talk Thal'trak Proudtusk##45821
		..accept Into the Prison##27579 
	step
		goto 37.3,80.1
		.talk Tinkee Steamboil##45849
		..accept The Sealed Gate##27603 
	step
		goto 36.7,74.6
		.talk Galamav the Marksman##45839
		..accept Infiltrating Shadowforge City##27582 
	step
		goto 36.1,73.7 |n
		.' Go through this doorway. |goto 36.1,73.7 <5 |noway |c
	step
		goto 24.2,51.8
		.from Bael'Gar##9016 |only if not havequest(27603)
		.kill Bael'Gar##9016 |q 27603/1 |only if havequest(27603)
		|confirm |only if not havequest(27603)
	step
		goto Blackrock Depths 56.6,31.1
		.from Lord Incendius##9017
		|confirm
	step
		goto 59.8,26.2 |n
		.' Go through this door and up the ramp. |goto 59.8,26.2 <5 |noway |c
	step
		goto Blackrock Depths/2,64.2,58.2
		.from Fineous Darkvire##9056+
		|confirm
	step
		goto Blackrock Depths/2,59.8,60.0 |n
		.' Enter the next room here. |goto Blackrock Depths/2 59.8,60.0 <5 |noway |c
	step
		goto Blackrock Depths 59.0,35.0 |n
		.' Enter this room. |goto 59.0,35.0 <5 |noway |c
	step
		goto Blackrock Depths/2 60.7,67.4
		.from Warder Stilgiss##9041
		|confirm
	step
		goto 58.6,64.1 |n
		.' Leave this room and go to the left. |goto 58.6,64.1 <5
	step
		goto Blackrock Depths 54.8,36.0 |n
		.' Go through this doorway. |goto 54.8,36.0 <5 |noway |c
	step
		goto Blackrock Depths/2,54.3,69.3 |n
		.click Abandoned Mole Machine##8005
		.' <Hit the button labeled 'Entrance'> |goto Blackrock Depths 35.9,79.2 <5 |noway |c
	step
		goto 37.3,80.1
		.talk Tinkee Steamboil##45849
		..turnin The Sealed Gate##27603
	step
		goto 37.7,66.0 |n
		.' Go through this doorway. |goto 37.7,66.0 <5 |noway |c
	step
		goto 40.9,67.1
		.talk Razal'blade##45820
		..turnin Infiltrating Shadowforge City##27582
	step
		goto 40.9,67.1
		.talk Razal'blade##45820
		..accept The 109th Division##27585 
	step
		goto Blackrock Depths 44.3,77.8
		.talk Lexlort##45818
		..turnin Into the Prison##27579
	step
		goto Blackrock Depths 44.3,77.8
		.talk Lexlort##45818
		..accept Twilight?! No!##27581 
	step
		goto 47.5,93.4
		.from High Interrogator Gerstahn##9018 |only if not havequest(27581)
		.kill High Interrogator Gerstahn##9018 |q 27581/1 |only if havequest(27581)
		|confirm |only if not havequest(27581)
	step
		goto Blackrock Depths 44.3,77.8
		.talk Lexlort##45818
		..turnin Twilight?! No!##27581
	step
		goto 51.4,62.1
		.from Houndmaster Grebmar##9319
		|confirm
	step
		goto Blackrock Depths 55.2,58.9
		.from Lord Roccor##9025 |tip He walks around this area. Some searching may be required.
		|confirm
	step
		goto Blackrock Depths 51.4,67.5 |n
		.' Enter the Ring of the Law here. |goto Blackrock Depths 51.4,67.5 <5 |noway |c
	step
		goto 50.5,63.0
		.' Wait for the gates to be opened and kill all the mobs.
		.' There will be a couple waves of mobs and then a boss to kill.
		|confirm
	step
		goto 48.0,63.9 |n
		.' Enter the Hallway here. |goto 48.0,63.9 <5 |noway |c
	step
		goto Blackrock Depths/2 41.4,88.3
		.click The Shadowforge Lock##2851
		|confirm
	step
		goto 45.0,87.1 |n
		.' Go back up the stairs and follow this hallway. |goto 45.0,87.1 <5 |noway |c 
	step
		goto 36.6,84.4
		.from General Angerforge##9033 |only if not havequest(27585)
		.kill General Angerforge##9033 |q 27585/1 |only if havequest(27585)
		|confirm |only if not havequest(27585)
	step
		goto 36.8,64.8
		.from Golem Lord Argelmach##8983 |only if not havequest(27585)
		.kill Golem Lord Argelmach##8983 |q 27585/2 |only if havequest(27585)
		|confirm |only if not havequest(27585)
	step
		goto 41.2,68.3 |n
		.' Follow this Hallway. |goto Blackrock Depths 41.2,68.3 |noway |c
	step
		goto Blackrock Depths/2,46.9,66.2
		.talk Hierophant Theodora Mulvadania##45817
		..turnin The 109th Division##27585
	step
		goto Blackrock Depths/2,46.9,66.2
		.talk Hierophant Theodora Mulvadania##45817
		..accept The Grim Guzzler##27589 
	step
		goto 47.9,58.3
		.click 3 Thunderbrew Lager Keg##4631+
		.' A group of Dwarves will enter the room to fight, be ready for them.
		.from Hurley Blackbreath##9537+, Blackbreath Crony##9541+, Blackbreath Crony##9541+
		|confirm
		|only if not havequest(27589)
	step
		goto 47.9,58.3
		.click 3 Thunderbrew Lager Keg##4631+
		.' A group of Dwarves will enter the room to fight, be ready for them.
		.from Blackbreath Crony##9541, Blackbreath Crony##9541
		.kill Hurley Blackbreath##9537 |q 27589/1
		|only if havequest(27589)
	step
		goto 49.1,61.8
		.talk Ribbly Screwspigot##9543
		.' Tell him:
		.' <You're good for nothing, Ribbly. It's time to pay for your wickedness!
		.from Ribbly Screwspigot##9543 |only if not havequest(27589)
		.kill Ribbly Screwspigot##9543 |q 27589/3 |only if havequest(27589)
		|confirm |only if not havequest(27589)
	step
		goto 49.6,61.3
		.from Plugger Spazzring##9499
		.' This will bring the guards in through the back door and all the Bar Patrons will start attacking, be ready to fight.
		|confirm
		|only if not havequest(27589)
	step
		goto 49.6,61.3
		.kill Plugger Spazzring##9499 |q 27589/2 
		.' This will bring the guards in through the back door and all the Bar Patrons will start attacking, be ready to fight.
		|only if havequest(27589)
	step
		goto 53.0,62.8
		.from Phalanx##9502
		|confirm
	step
		goto Blackrock Depths,53.9,27.0 |n
		.' Go through the Grim Guzzler's back doorway and down the small ramp to the left. |goto Blackrock Depths 53.9,27.0 <5 |noway |c
	step
		goto Blackrock Depths/2,50.8,52.7
		.talk Thunderheart##45824
		..turnin The Grim Guzzler##27589
	step
		goto Blackrock Depths/2,50.8,52.7
		.talk Thunderheart##45824
		..accept The Dark Iron Pact##27591 
	step
		goto 54.0,48.6
		.from Ambassador Flamelash##9156 |only if not havequest(27591)
		.kill Ambassador Flamelash##9156 |q 27591/1 |only if havequest(27591)
		|confirm |only if not havequest(27591)
	step
		goto 49.5,42.1 |n
		.' Follow the hallway and go through the next doorway. |goto 49.5,42.1 <5 |noway |c
	step
		goto 56.7,21.9
		.talk Doom'rel##9039
		.' Tell him:
		.' <Your bondage is at an end, Doom'rel. I challenge you!>
		.' Once you talk to him, you will have to fight Dwarves before you will fight Doom'rel
		.from Vile'rel##9036, Hate'rel##9034, Gloom'rel##9037, Anger'rel##9035
		.from Doom'rel##9039 |only if not havequest(27591)
		.kill Doom'rel##9039 |q 27591/2 |only if havequest(27591)
		|confirm |only if not havequest(27591)
	step
		goto 56.9,23.2
		.click Chest of The Seven##1387
		.' Loot the Armor and Weapons from the Chest.
		|confirm 
	step
		goto 58.1,22.3
		.talk Warlord Goretooth##45840
		..turnin The Dark Iron Pact##27591
	step
		goto 58.1,22.3
		.talk Warlord Goretooth##45840
		..accept Rebirth of the K.E.F.##27593 
	step
		goto 60.7,18.8 |n
		.' Go through this big Doorway. |goto 60.7,18.8 |noway |c
	step
		'All around this room look for Flame Keepers
		.from Shadowforge Flame Keeper##9956+
		.collect 2 Shadowforge Torch##11885
	step
		goto 71.8,16.7
		.' Use the Torches in your bags to light the Shadowforge Brazier.
		.click Shadowforge Brazier##3411
		|confirm
	step
		goto 71.8,7.0
		.' Use the Torches in your bags to light the Shadowforge Brazier.
		.click Shadowforge Brazier##3411
		|confirm
	step
		goto 74.6,11.9 |n
		.' Enter the hallway here. |goto 74.6,11.9 |noway |c
	step
		goto 82.3,12.0
		.from Magmus##9938
		|confirm
	step
		goto 93.3,12.0
		.from Emperor Dagran Thaurissan##9019 |only if not havequest(27593)
		.kill Emperor Dagran Thaurissan##9019 |q 27593/1 |only if havequest(27593)
	step
		goto 74.6,11.9 |n
		.' Go back through these doors. |goto 74.6,11.9 |noway |c
	step
		goto 58.1,22.3
		.talk Warlord Goretooth##45840
		..turnin Rebirth of the K.E.F.##27593
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Lower Blackrock Spire (LBRS) 57-60",[[
	dungeon 721
	description This guide will walk you through the Lower Blackrock Spire dungeon.
	author support@zygorguides.com	
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Burning Steppes 21.0,38.1 |n
		.' Enter Blackrock Mountain here. |goto Burning Steppes 21.0,38.1 <5 |noway |c
	step
		goto 24.7,30.0 |n
		.' Go through this hallway. |goto 24.7,30.0 <5 |noway |c
	step
		map Burning Steppes
		path follow strict; loop off
		path	24.6,30.0	26.0,28.9	25.8,26.5
		path	26.6,25.7	25.7,25.9	25.9,28.2
		path	24.6,27.7	24.3,25.6
		.' Follow this path and go through the portal to LBRS.
		.' Enter Lower Blackrock Spire. |goto Blackrock Spire/4 |noway |c
	step
	label	"start"
		goto 30.5,39.8
		.talk Acride##10299
		..accept Trolls, Ogres, and Orcs, Oh My!##27440
	step
		goto 37.9,40.1 |n
		.' Go through this doorway below the ramp. |goto 37.9,40.1 <5 |noway |c
	step
		goto 39.7,48.3 |n
		.' Follow this winding hallway. |goto 39.7,48.3 <5 |noway |c
	step
		goto 49.0,41.5 |n
		.' Follow this ramp down. |goto Blackrock Spire/3 |noway |c
	step
		map Blackrock Spire/3
		path follow loose; loop off
		path	50.0,40.7	59.2,42.8	66.5,44.6
		path	65.0,57.8	57.1,57.7	36.1,55.3
		.' Follow the path 
		.from Highlord Omokk##9196 |only if not havequest(27440)
		.kill Highlord Omokk##9196 |q 27440/2 |only if havequest(27440)
		|confirm |only if not havequest(27440)
	step
		goto 56.6,57.8 |n
		.' Go out this doorway to the left. |goto 56.6,57.8 <5 |noway |c
	step
		goto 54.8,51.2 |n
		.' Follow this ramp down and to the left. |goto 54.8,51.2 <5 |noway |c
	step
		goto Blackrock Spire/2,55.4,61.7 |n
		.' Follow this ramp up. |goto Blackrock Spire/2 55.4,61.7 <5 |noway |c
	step
		goto 55.6,71.8
		.from Shadow Hunter Vosh'gajin##9236
		|confirm
	step
		map Blackrock Spire/2
		path follow loose; loop off
		path	56.8,58.2	59.6,59.1	59.4,62.5
		.' Follow this path all the way down. |goto 59.4,62.5 <5 |noway |c
	step
		goto Blackrock Spire,53.0,52.9 
		.from War Master Voone##9237 |only if not havequest(27440)
		.kill War Master Voone##9237 |q 27440/1 |only if havequest(27440)
		|confirm |only if not havequest(27440)
	step
		goto 66.0,50.9 |n
		.' Go through this doorway to the left. |goto Blackrock Spire/3 |noway |c
	step
		goto 57.0,47.9 |n
		.' Go through the path with the rocks. |goto Blackrock Spire |noway |c
	step
		map Blackrock Spire
		path follow loose; loop off
		path	56.4,48.0	51.3,49.9	48.4,62.7
		path	55.8,70.2	64.6,70.7
		.' Follow this winding path. |goto Blackrock Spire/2 |noway |c
	step
		goto 62.5,76.0
		.from Mother Smolderweb##10596
		|confirm
	step
		goto 50.7,74.4 |n
		.' Go through this doorway. |goto Blackrock Spire/3 |noway |c
	step
		goto 45.7,62.8 |n
		.' Follow this ramp up and to the left. |goto 45.7,62.8 <5 |noway |c
	step
		goto Blackrock Spire/4 42.8,73.9 |n
		.' Go through this doorway. |goto 42.8,73.9 <5 |noway |c
	step
		goto Blackrock Spire/5,37.7,85.4
		.from Halycon##10220
		.' After you kill Halycon, a white wolf will come in the door to fight.
		.from Gizrul the Slavener##10268
		|confirm
	step
		goto 40.0,78.2 |n
		.' Follow this ramp up. |goto 40.0,78.2 <5 |noway |c
	step
		goto 40.6,60.4 |n
		.' Continue up this ramp. |goto 40.6,60.4 <5 |noway |c
	step
		goto Blackrock Spire/6 56.1,55.6
		.from Overlord Wyrmthalak##9568 |only if not havequest(27440)
		.kill Overlord Wyrmthalak##9568 |q 27440/3 |only if havequest(27440)
		|confirm
	step
		.' You can either run to the beginning of the dungeon to turn in your quests.
		.' Or
		.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
		|confirm
	step
		goto Blackrock Spire/4,30.5,39.6
		.talk Acride##10299
		..turnin Trolls, Ogres, and Orcs, Oh My!##27440
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Classic Dungeons\\Upper Blackrock Spire (UBRS) 57-60",[[
	dungeon 721
	description This guide will walk you through the Upper Blackrock Spire dungeon.
	author support@zygorguides.com	
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Burning Steppes 21.0,38.1 |n
		.' Enter Blackrock Mountain here. |goto Burning Steppes 21.0,38.1 <5 |noway |c
	step
		goto 24.7,30.0 |n
		.' Go through this hallway. |goto 24.7,30.0 <5 |noway |c
	step
		map Burning Steppes
		path follow strict; loop off
		path	24.6,30.0	26.0,28.9	25.8,26.5
		path	26.6,25.7	25.7,25.9	25.9,28.2
		path	24.6,27.7	24.3,25.6
		.' Follow this path and go through the portal to LBRS.
		.' Enter Lower Blackrock Spire. |goto Blackrock Spire/4 |noway |c
	step
	label	"start"
		goto 30.5,39.8
		.talk Acride##10299
		..accept The False Warchief##27444
		..accept General Drakkisath, Hand of Nefarian##27445 
	step
		goto 37.1,33.1 |n
		.' Go up this ramp and through the doorway on the left. |goto 37.1,33.1 <5 |noway |c
	step
		goto Blackrock Spire/5,33.4,15.0
		.from Blackhand Dreadweaver##9817+, Blackhand Summoner##9818+, Blackhand Veteran##9819+, Rage Talon Dragonspawn##9096+
		.' You will need to clear this entire room before you can continue.
		.' Go through this doorway when you are finished. |goto 33.2,13.7 <5 |noway |c
	step
		goto 30.4,15.1 |n
		.' Follow the ramp up. |goto 30.4,15.1 <5 |noway |c
	step
		goto Blackrock Spire/6,32.9,27.0
		.click Blackrock Altar##4076
		.' This will force the Blachand mobs to attack you. Once you figh them, you will have about 30 seconds, than you will fight the boss.
		.from Pyroguard Emberseer##9816, Blackhand Incarcerator##10316+
		|confirm
	step
		goto 30.4,31.9 |n
		.' Go through this doorway. |goto 30.4,31.9 <5 |noway |c
	step
		goto 38.9,38.6
		.click Father Flame##1667
		.' Loot the items inside.
		.' Stay and kill the mobs that come to attack you in waves of 2.
		.from Rookery Guardian##10258+, Rookery Hatcher##10683+
		.' The boss will come out shortly.
		.from Solakar Flamewreath##10264
		|confirm
	step
		goto 29.6,41.6 |n
		.' Follow this path up. |goto 29.6,41.6 <5 |noway |c
	step
		goto Blackrock Spire/7,30.5,32.4 |n
		.' Follow this ramp up and to the right. |goto 30.5,32.4 <5 |noway |c
	step
		goto 29.1,26.4
		.from Goraluk Anvilcrack##10899
		|confirm
	step
		goto 42.4,30.1 |n
		.' Follow this hallway and turn left. |goto 42.4,30.1 <5 |noway |c
	step
		goto 48.6,33.4 |n
		.' Enter the Stadium here. |goto 48.6,33.4 <5 |noway |c
	step
		goto 48.6,20.0 |n
		.' Run here but stay out of the gate.
		.' Fight the waves of enemies until the boss shows up, then kill him.
		.from Warchief Rend Blackhand##10429 |only if not havequest(10429)
		.kill Warchief Rend Blackhand##10429 |q 27444/1 |only if havequest(27444)
		|confirm |only if not havequest(10429)
	step
		goto 50.4,35.6 |n
		.' Follow this ramp up and to the right. |goto 50.4,35.6 <5 |noway |c
	step
		goto 58.9,47.0 |n
		.' Jump over these fires and run to the back corner. |goto 58.9,47.0 <5 |noway |c
	step
		goto 63.5,36.3
		.from The Beast##10430
		|confirm
	step
		goto 43.2,45.9 |n
		.' Go through this doorway. |goto 43.2,45.9 <5 |noway |c
	step
		goto 33.5,47.5
		.' Clear this room from enemies, the boss can knock your group into them during the fight.
		.from General Drakkisath##10363 |only if not havequest(27445)
		.kill General Drakkisath##10363 |q 27445/1 |only if havequest(27445)
		|confirm |only if not havequest(27445)
	step
		.' You can either run to the beginning of the dungeon to turn in your quests.
		.' Or
		.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
		|confirm
	step
		goto Blackrock Spire/4,30.5,39.7
		.talk Acride##10299
		..turnin The False Warchief##27444
		..turnin General Drakkisath, Hand of Nefarian##27445
]])

------------------------------------------------------------------------------------------------------------------------------------
-- OUTLAND DUNGEONS --
------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Outland Dungeons\\Hellfire Citadel: Hellfire Ramparts (Ramps) 59-63",[[
	dungeon 797
	description This guide will walk you through the Hellfire Citadel: Hellfire Ramparts dungeon.
	author support@zygorguides.com	
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"	
	step
	label	"entrance"
		goto Hellfire Peninsula 47.6,53.6 |n
		.' Enter Hellfire Ramparts here. |goto Hellfire Ramparts |noway |c
	step
	label	"start"
		goto Hellfire Ramparts 48.5,68.1
		.talk Stone Guard Stok'ton##54606
		..accept War on the Ramparts##29527 
		..accept Demons in the Citadel##29530 
		..accept Hitting Them Where It Hurts##29593
	step
		goto 45.8,50.8
		.click Hellfire Supplies##7001
		.get 1 Hellfire Supplies |q 29593/1
		|only if havequest(29593)
	step
		goto 51.7,45.7
		.click Hellfire Supplies##7001
		.get 2 Hellfire Supplies |q 29593/1
		|only if havequest(29593)
	step
		goto 66.8,52.0
		.click Hellfire Supplies##7001
		.get 3 Hellfire Supplies |q 29593/1
		|only if havequest(29593)
	step
		goto Hellfire Ramparts 76.9,34.4
		.from Watchkeeper Gargolmar##17306 
		.get Gargolmar's Hand |q 29527/1 |only if havequest(29527)
		|confirm |only if not havequest(29527)
	step
		goto 39.3,21.2
		.from Omor the Unscarred##17308
		.get Omor's Hoof |q 29530/1 |only if havequest(29530)
		|confirm |only if not havequest(29530)
	step
		goto 36.2,79.3
		.from Nazan##17307
		.get Nazan's Head |q 29527/2 |only if havequest(29527)
		|confirm |only if not havequest(29527)
	step
		goto 31.3,86.4
		.click Reinforced Fel Iron Chest##5744
		.' Loot your items for clearing this dungeon
		|confirm |only if havequest(29527) or havequest(29530) or havequest(29593)
	step
		goto 51.1,63.8 |n
		.' Jump down here to turn in your quests. |goto 49.1,67.3 <5 |noway |c
	step
		goto Hellfire Ramparts 48.5,68.1
		.talk Stone Guard Stok'ton##54606
		..turnin War on the Ramparts##29527
		..turnin Demons in the Citadel##29530
		..turnin Hitting Them Where It Hurts##29593
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Outland Dungeons\\Hellfire Citadel: The Blood Furnace (BF) 60-64",[[
	dungeon 725
	description This guide will walk you through the Hellfire Citadel dungeon.
	author support@zygorguides.com	
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Hellfire Peninsula 46.0,51.8 |n
		.' Enter The Blood Furnace here. |goto The Blood Furnace |noway |c
	step
	label	"start"
		goto The Blood Furnace 51.4,90.0
		.talk Caza'rez##54636
		..accept Make Them Bleed##29535 
		..accept Heart of Rage##29536 
		..accept Mind the Gap##29537 
	step
		'You can collect Blood Vials from all Orcs in this instance
		.from Laughing Skull Enforcer##17370+, Shadowmoon Adept##17397+, Laughing Skull Rogue##17491+, Shadowmoon Warlock##17371+
		..collect Fel Orc Blood Vial##23894 |n
		|confirm
		|only if havequest(29535)
	step
		goto The Blood Furnace 36.6,40.7
		.from The Maker##17381
		.get Fel Infusion Rod |q 29535/2 |only if havequest(29535)
		|confirm |only if not havequest(29535)
	step
		goto 43.4,21.9 
		.click Cell Door Lever##6899
		.' This will start the boss fight. You will have 4 cell doors open and have to fight Orcs until all 4 waves are complete.
		.' Once you have killed the Orcs, the Boss will come in.
		.' Try not to stand in the greem mist from the boss, this will deal lots of damage to you.
		.from Broggok##17380
		|confirm
	step
		'Make sure you have collected Fel Orc Blood.
		.get 10 Fel Orc Blood Vial |q 29535/1
		|only if havequest(29535)
	step
		goto The Blood Furnace 64.3,41.4
		.'Investigate The Blood Furnace. |q 29536/1
		|only if havequest(29536)
	step
		goto 59.2,42.5
		.from Keli'dan the Breaker##17377 |only if not havequest(29537)
		.kill Keli'dan the Breaker##17377 |q 29537/1 |only if havequest(29537)
		|confirm
	step
		goto 62.5,50.9 |n
		.' Follow this hallway. |goto 62.5,50.9 <5 |noway |c
	step
		goto 51.4,90.1
		.talk Caza'rez##54636
		..turnin Make Them Bleed##29535
		..turnin Heart of Rage##29536
		..turnin Mind the Gap##29537
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Outland Dungeons\\Coilfang Reservoir: Slave Pens (SP) 61-65",[[
	dungeon 726
	description This guide will walk you through the Coilfang Reservoir: Slave Pens dungeon.
	author support@zygorguides.com	
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Zangarmarsh 50.4,40.9 |n
		.' Swim down through this sewer in the water. |goto Zangarmarsh 50.4,40.9 <5 |noway |c
	step
		goto 49.0,35.7 |n
		.' Enter The Slave Pens here. |goto The Slave Pens |noway |c
	step
	label	"start"
		goto The Slave Pens 18.9,11.3
		.talk Watcher Jhang##54667
		..accept Lost in Action##29563 
		..accept The Heart of the Matter##29565 
	step
		goto 17.9,12.1
		.talk Nahuud##54668
		..accept A Brother Betrayed##29564 
	step
		goto 25.0,51.2 |n
		.' Follow the path and go straight through this main room. |goto 25.0,51.2 <5 |noway |c
	step
		goto 40.2,35.5 |n
		.' Follow this hallway. |goto 40.2,35.5 <5 |noway |c
	step
		goto 48.8,24.3
		.' You can either stand back and pull Mennu from the ramp, or clear the enemies first so they won't aggro.
		.from Mennu the Betrayer##17941 |only if not havequest(29564)
		.kill Mennu the Betrayer##17941 |q 29564/1 |only if havequest(29564)
		|confirm |only if not havequest(17941)
	step
		goto 48.9,83.4
		.talk Weeder Greenthumb##17890
		.' Discover Weeder Greenthumb |q 29563/2
		|only if havequest(29563)
	step
		goto 57.3,45.4
		.from Rokmar the Crackler##17991
		.' Rokmar will put a bleed affect on you. This will not go away until you are fully healed to 100%, so bring some food or a healer.
		.get The Invader's Claw |q 29565/1 |only if havequest(29565)
		|confirm |only if not havequest(29565)
	step
		goto 74.9,51.4 |n
		.' Follow this path up. |goto 74.9,51.4 <5 |noway |c
	step
		goto 95.7,66.2
		.talk Naturalist Bite##17893
		.' Discover Naturalist Bite. |q 29563/1
		|only if havequest(29563)
	step
		goto 95.7,66.2
		.' Be ready to fight a couple mobs
		.from Coilfang Champion##17957+, Coilfang Enchantress##17961+
		.talk Naturalist Bite##17893
		.' Tell him
		.' <Naturalist, please grant me your boon |havebuff Interface\Icons\Ability_Druid_FerociousBite
	step
		goto The Slave Pens 86.2,67.9
		.from Quagmirran##17942
		.get The Slave Master's Eye |q 29565/2 |only if havequest(29565)
		|confirm |only if not havequest(29565)
	step
		.' You can either run to the beginning of the dungeon to turn in your quests.
		.' Or
		.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
		|confirm
	step
		goto The Slave Pens 17.9,12.2
		.talk Nahuud##54668
		..turnin A Brother Betrayed##29564
	step
		goto 18.8,11.3
		.talk Watcher Jhang##54667
		..turnin Lost in Action##29563
		..turnin The Heart of the Matter##29565
]]) 
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Outland Dungeons\\Coilfang Reservoir: Underbog (UB) 62-66",[[
	dungeon 726
	description This guide will walk you through the Coilfang Reservoir: Underbog dungeon.
	author support@zygorguides.com	
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Zangarmarsh 54.2,34.4 |n
		.' Enter The Underbog. |goto The Underbog |noway |c
	step
	label	"start"
		goto The Underbog 29.5,64.7
		.talk Naturalist Bite##54678
		..accept A Necessary Evil##29568 
	step
		goto 30.9,65.3
		.talk Watcher Jhang##54675
		..accept Rescuing the Expedition##29570 
	step
		goto 31.5,65.5
		.talk T'shu##54674
		..accept Stalk the Stalker##29567
		..accept Bring Me A Shrubbery!##29691 
	step
		'As you go through the dungeon, look for Sanguine Hibiscus
		.click Sanguine Hibiscus##5031
		.collect 5 Sanguine Hibiscus##24246 |n
		|confirm
		|only if havequest(29691)
	step
		goto 42.5,62.0 |n
		.' Keep following this straight path. |goto 42.5,62.0 <5 |noway |c
	step
		goto 57.4,82.9 |n
		.' Follow this path up and around. |goto 57.4,82.9 <5 |noway |c
	step
		goto 70.0,90.0
		.' He will summon mushrooms, these will explode to deal damage to player, and heal the boss.
		.' Keep moving him so that doesn't happen.
		.from Hungarfen##17770 |only if not havequest(29568)
		.kill Hungarfen##17770 |q 29568/1 |only if havequest(29568)
		|confirm |only if not havequest(29568)
	step
		goto 77.2,43.8
		.' Follow the path around until you get here 
		.from Ghaz'an##18105
		|confirm
	step
		goto 78.9,24.5 |n
		.' Jump down in the water here.  |goto 78.9,24.5 <5 |noway |c
	step
		goto 79.6,15.2 |n
		.' Swim across the water and jump down here. |goto 79.6,15.2 <5 |noway |c
	step
		goto 67.4,21.3
		.talk Earthbinder Rayge##17885
		.' Discover Earthbinder Rayge. |q 29570/1 
		|only if havequest(29570)
	step
		goto 67.0,14.0 |n
		.' Follow this path down and to the right. |goto 67.0,14.0 <5 |noway |c
	step
		  goto 41.5,25.4
		.from Swamplord Musel'ek##17826, Claw##17827
		.talk Windcaller Claw##17827 |only if havequest(29570)
		.' Discover Windcaller Claw |q 29570/2 |only if havequest(29570)
		|confirm |only if not havequest(29570)
	step
		goto The Underbog 25.9,45.5
		.from The Black Stalker##17882
		.get Black Stalker's Brain |q 29567/1 |only if havequest(29567)
		|confirm |only if not havequest(29567)
	step
		'Make sure you have picked up 5 Sanguine Hibiscus:
		.click Sanguine Hibiscus##5031
		.get 5 Sanguine Hibiscus##24246 |q 29691/1
		|only if havequest(29691)
	step
		goto The Underbog 29.5,64.5
		.talk Naturalist Bite##54678
		..turnin A Necessary Evil##29568
	step
		goto 30.8,65.3
		.talk Watcher Jhang##54675
		..turnin Rescuing the Expedition##29570
	step
		goto 31.6,65.5
		.talk T'shu##54674
		..turnin Stalk the Stalker##29567
		..turnin Bring Me A Shrubbery!##29691
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Outland Dungeons\\Auchindoun: Mana-Tombs (MT) 63-67",[[
	dungeon 732
	description This guide will walk you through the Auchindoun: Mana-Tombs dungeon.
	author support@zygorguides.com	
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Terokkar Forest 39.6,57.7 |n
		.' Enter the Mana Tombs here. |goto Mana-Tombs |noway |c
	step
	label	"start"
		goto Mana-Tombs 32.7,19.4
		.talk Mamdy the "Ologist"##54694
		..accept Intriguing Specimens##29574
	step
		goto 34.4,19.4
		.talk Artificer Morphalius##54692
		..accept Safety is Job One##29573 
		..accept Undercutting the Competition##29575 
	step
		goto 48.2,27.7
		.from Pandemonius##18341
		.get Pandemonius' Essence |q 29574/1 |only if havequest(29574)
		|confirm |only if not havequest(29574)
	step
		goto 61.3,74.0
		.from Tavarok##18343
		.get Tavarok's Heart |q 29574/2 |only if havequest(29574)
		|confirm |only if not havequest(29574)
	step
		goto 32.4,50.7
		.from Nexus-Prince Shaffar##18344
		.get Shaffar's Wrappings. |q 29575/1 |only if havequest(29575)
		|confirm |only if not havequest(29575)
	step
		goto 32.6,44.3 |n
		.' Follow this Hallway |goto 32.6,44.3,0.5 |noway |c
	step
		goto Mana-Tombs 34.3,19.6
		.talk Artificer Morphalius##54692
		..turnin Safety is Job One##29573
		..turnin Undercutting the Competition##29575
	step
		goto 32.8,19.4
		.talk Mamdy the "Ologist"##54694
		..turnin Intriguing Specimens##29574
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Outland Dungeons\\Auchindoun: Auchenai Crypts (AC) 64-68",[[
	dungeon 732
	description This guide will walk you through the Auchindoun: Auchenai Crypts dungeon.
	author support@zygorguides.com	
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Terokkar Forest 34.4,65.6 |n
		.' Enter Auchenai Crypts here. |goto Auchenai Crypts |noway |c
	step
	label	"start"
		goto Auchenai Crypts 44.3,72.6
		.talk Draenei Spirit##54725
		..accept The Dead Watcher##29590 
		..accept The End of the Exarch##29596 
	step
		goto Auchenai Crypts 44.0,66.3 |n
		.' Enter the main room of Auchenai Crypts here. |goto Auchenai Crypts 44.0,66.3 <5 |noway |c
	step
		.from Auchenai Monk##18497+, Auchenai Soulpriest##18493+, Auchenai Vindicator##18495+
		.' This room can be a little rough for low level groups. Pull the _Soulpriest's_ first with a silence or charge them, they will cast spells the whole fight.
		.' Kill the _Vindicators Soulpriest's first_, then deal with the _Monks_ afterward.
		.' You will have to also fight summoned adds, this is unavoidable.
		|confirm
	step
		goto Auchenai Crypts 42.4,16.9 |n
		.' Follow the stairs up. |goto Auchenai Crypts 42.4,16.9 <5 |noway |c
	step
		goto Auchenai Crypts/2,46.3,23.1
		.talk Tormented Soulpriest##54698
		..accept Raging Spirits##29591 
	step
		goto 46.2,68.7
		.from Shirrak the Dead Watcher##18371 |only if not havequest(29590)
		.kill Shirrak the Dead Watcher##18371 |q 29590/1 |only if havequest(29590)
		|confirm |only if not havequest(29590)
	step
		goto 58.1,88.1
		.kill 5 Raging Skeleton##18524+ |q 29591/2
		|only if havequest(29591)
	step
		goto 73.9,70.6
		.kill 3 Auchenai Necromancer##18702+ |q 29591/3
		|only if havequest(29591)
	step
		goto 74.2,49.9
		.from Exarch Maladaar##18373 |only if not havequest(29596)
		.kill Exarch Maladaar##18373 |q 29596/1 |only if havequest(29596)
		|confirm |only if not havequest(29596)
	step
		.' You can either run to the beginning of the dungeon to turn in your quests.
		.' Or
		.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
		|confirm
	step
		goto Auchenai Crypts 44.3,72.6
		.talk Draenei Spirit##54725
		..turnin The Dead Watcher##29590
		..turnin The End of the Exarch##29596
	step
		goto Auchenai Crypts/2 46.3,23.2
		.talk Tormented Soulpriest##54698
		..turnin Raging Spirits##29591
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Outland Dungeons\\Caverns of Time: Escape from Durnholde Keep (DH or Durn) 65-69",[[
	dungeon 734
	description This guide will walk you through the Caverns of Time: Escape from Durnholde Keep dungeon.
	author support@zygorguides.com	
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance. |confirm |next "entrance"
		.' I will use the Dungeon Finder. |confirm |next "start"
	step
	label	"entrance"
		goto Tanaris 55.4,53.5 |n
		.' Follow this path down and around.
		.' Enter Durnhold here. |goto Old Hillsbrad Foothills |noway |c
	step
	label	"start"
		goto 28.9,48.3
		.talk Erozion##18723
		..accept Taretha's Diversion##29598
		..collect Pack of Incendiary Bombs##25853
	step
		goto 29.2,47.9
		.talk Brazen##18725
		.' Tell him:
		.' <I'm ready to go to Durnhold Keep.> |goto 69.3,71.5 <5 |noway |c
	step
		goto 70.3,67.5 |n
		.' Enter Durnhold Keep here. |goto 70.3,67.5 <5 |noway |c
	step
		goto 74.5,63.1 |n
		.' Go across the Bridge and follow this path to the right. |goto 74.5,63.1 <5 |noway |c
	step
		goto 77.3,61.5 |n
		.' Jump down here. |goto 78.0,62.1 <5 |noway |c
	step
		goto 77.6,66.0
		.click Barrel##334
		.' You will need to click the Barrels in each building, until you have 5 Bombs set.
		.' You can find more Barrels here:  
		.' [76.7,67.4]
		.' [73.5,67.8]
		.' [68.9,62.7]
		.' [67.9,59.7]
		|confirm |only if not havequest(29598)
		.' Set 5 Internment Lodges on Fire. |q 29598/1 |only if havequest(29598)
	step
		goto 75.7,64.8
		.' Lieutenant Drake will come down these stairs when the building are on fire.
		.from Lieutenant Drake##17848
		|confirm
	step
		goto 73.2,61.2 |n
		.' Go up the stairs and into this building. |goto 73.2,61.2 <5 |noway |c
	step
		goto 74.5,57.7
		.talk Thrall##17876
		..turnin Taretha's Diversion##29598
	step
		goto 74.5,57.7
		.talk Thrall##17876
		..accept Escape from Durnholde##29599
	step
		goto 74.5,57.7
		.talk Thrall##17876
		.' Tell him:
		.' <We are redy to get you out of here Thrall. Let's go!>
		|confirm
	step
		goto 69.6,68.4
		.from Captain Skarloc##17862
		.' After you kill the boss, talk to Thrall.
		.talk Thrall##17876
		.' Tell him
		.' <Taretha cannot see you, Thrall.>
		|confirm
	step
		goto 52.8,41.2 |n
		.' Follow Thrall until he stops near Tarren Mill, you will have to fight guards along the way.
		.talk Thrall##17876
		.' Tell him
		.' < We're ready, Thrall.>
		|confirm
	step
		goto 51.3,29.8 |n
		.' Follow Thrall until he comes upstairs here.
		.talk Taretha##18887
		.' Tell her:
		.' <Strange wizard?>
		|confirm
	step
		.' Follow Thrall outside.
		.' You will have to fight a few waves of dragonkin.
		  .from Infinite Defiler##18171+, Infinite Saboteur##18172+
		.' The Boss will come down to fight once you have killed enough mobs.
		.from Epoch Hunter##18096
		|confirm |only if not havequest(29599)
		.' Fulfill Thrall's Destiny |q 29599/1 |only if havequest(29599)
	step
		goto 50.3,30.9
		.talk Erozion##18723
		..turnin Escape from Durnholde##29599
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Outland Dungeons\\Auchindoun: Sethekk Halls (AS or Seth) 67-69",[[
	dungeon 732
	description This guide will walk you through the Auchindoun: Sethekk Halls dungeon.
	author support@zygorguides.com	
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm |next "entrance"
		.' I will use the Dungeon Finder |confirm |next "start"
	step
	label	"entrance"
		goto Terokkar Forest 44.9,65.6 |n
		.' Enter Sethekk Halls here. |goto Sethekk Halls |noway |c
	step
	label	"start"
		goto Sethekk Halls 72.2,35.5
		.talk Isfar##54840
		..accept Brother Against Brother##29605 
		..accept Terokk's Legacy##29606 
	step
		goto 64.7,27.8 |n
		.' When entering this room, you will fight lots of Arakkoa to fight.
		.from Time-Lost Controller##18327+ |tip Kill these first, they will put down a mind control totem, and turn a party member against you group.
		.' Go through into the main room through this doorway. |goto 64.7,27.8 <5 |noway |c
	step
		goto 48.6,67.5
		.from Darkweaver Syth##18472 |tip He will summon 4 elementals periodically through the fight, they will attack anyone that pulls aggro.
		|confirm |only if not havequest(29606)
		.get Terokk's Mask |q 29606/1 |only if havequest(29606)
	step
		goto Sethekk Halls 48.3,67.7
		.talk Dealer Vijaad##54847
		..accept Eyes of Desire##29607
	step
		.' As you run through the next part of this dungeon:
		.from Cobalt Serpent##19428+
		.get 3 Cobalt Eye |q 29607/1 |n
		|confirm
		|only if havequest(29607)
	step
		goto 50.8,70.8
		.talk Lakka##18956
		.' Tell him
		.' <You are free to go>
		.' Free Lakka |q 29605/1
		|only if havequest(29605)
	step
		goto Sethekk Halls 51.1,95.2 |n
		.' Go up these stairs. |goto Sethekk Halls/2 |noway |c
	step
		goto 32.5,66.6 |n
		.from Cobalt Serpent##19428+
		.get 3 Cobalt Eye |q 29607/1 
		|only if havequest(29607)
	step
		goto 32.4,56.1
		.from Anzu##23035
		|confirm
		|only if heroic_dung()
	step
		goto 32.2,29.5
		.from Talon King Ikiss##18473
		|confirm |only if not havequest(29606)
		.get Terokk's Quill |q 29606/2 |only if havequest(29606)
	step
		goto 49.9,27.3 |n
		.' Run down these stairs. |goto 49.9,27.3 <5 |noway |c
	step
		goto Sethekk Halls 72.2,35.5
		.talk Isfar##54840
		..turnin Brother Against Brother##29605
		..turnin Terokk's Legacy##29606
	step
		goto 48.1,67.7
		.talk Dealer Vijaad##54847
		..turnin Eyes of Desire##29607
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Outland Dungeons\\Auchindoun: Shadow Labyrinth (SL or Slabs) 68-70",[[
	dungeon 732
	description This guide will walk you through the Auchindoun: Shadow Labyrinth dungeon.
	author support@zygorguides.com	
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance. |confirm |next "entrance"
		.' I will use the Dungeon Finder. |confirm |next "start"
	step
	label	"entrance"
		goto Terokkar Forest 39.6,73.5 |n
		.' Enter Shadow Labyrinth here. |goto Shadow Labyrinth |noway |c
	step
	label	"start"
		goto Shadow Labyrinth 22.6,12.5
		.talk Spy Grik'tha##54891
		..accept Find Spy To'gun##29640
	step
		goto 21.3,13.1
		.talk Field Commander Mahfuun##54890
		..accept The Codex of Blood##29643 
		..accept Ambassador Hellmaw##29645 
	step
		goto 34.3,22.3 |n
		.' Follow this hallway up. |goto 34.3,22.3 <5 |noway |c
	step
		goto 29.5,39.1
		.' To activate this boss, kill all the Ritualists in this room. Once you kill the final mob, the Boss will become unleashed.
		.kill 12 Cabal Ritualist##18794+ |q 29645/1
	step
		goto Shadow Labyrinth 21.4,39.7
		.' To activate this boss, kill all the Ritualists in this room. Once you kill the final mob, the Boss will become unleashed.
		.from Ambassador Hellmaw##18731 |only if not havequest(29645)
		.kill Ambassador Hellmaw##18731 |q 29645/2 |only if havequest(29645)
		|confirm |only if not havequest(29645)
	step
		goto Shadow Labyrinth 17.0,22.4
		.talk Spy To'gun##18891
		..turnin Find Spy To'gun##29640
	step
		goto Shadow Labyrinth 17.0,22.4
		.talk Spy To'gun##18891
		..accept The Soul Devices##29641
	step
		goto 19.2,63.0
		.click Soul Device##7010
		.get 5 Soul Devices |q 29641/1
		|only if havequest(29641)
	step
		goto 26.2,68.2
		.from Blackheart the Inciter##18667 |tip If you do not clear the room first, all the mobs will attack you when you fight the boss.
		|confirm
	step
		goto Shadow Labyrinth 53.3,56.5 
		.from Grandmaster Vorpil##18732
		|confirm
	step
		goto 53.3,59.0
		.click Codex of Blood##6892
		..turnin The Codex of Blood##29643
	step
		goto 53.3,59.0
		.click Codex of Blood##6892
		..accept Into the Heart of the Labyrinth##29644 
	step
		goto 80.8,39.1
		..kill Murmur##18708 |q 29644/1
		|confirm |only if not havequest(29644)
	step
		.' You can either run to the beginning of the dungeon to turn in your quests.
		.' Or
		.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
		|confirm
	step
		goto 21.3,13.1
		.talk Field Commander Mahfuun##54890
		..turnin Into the Heart of the Labyrinth##29644
		..turnin Ambassador Hellmaw##29645
	step
		goto 22.6,12.5
		.talk Spy Grik'tha##54891
		..turnin The Soul Devices##29641
]])	
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Outland Dungeons\\Tempest Keep: The Mechanar (Mech) 68-70",[[
	dungeon 782
	description This guide will walk you through the Tempest Keep: The Mechanar dungeon.
	author support@zygorguides.com		
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm |next "entrance"
		.' I will use the Dungeon Finder |confirm |next "start"
	step
	label	"entrance"
		goto Netherstorm 70.6,69.8 |n
		.' Enter The Mechanar here. |goto The Mechanar |noway|c
	step
	label	"start"
		.' Click the Accept Quest box on the right side of your screen.
		..accept With Great Power, Comes Great Responsibility##29657 
	step
		.' Take the left passage. |goto 43.5,70.6 <5 |noway|c
	step
		goto 46.4,58.4
		.from Gatewatcher Gyro-Kill##19218
		|confirm
	step	
		.' Click the Accept Quest box on the right side of your screen.
		..accept Lost Treasure##29659
	step
		goto The Mechanar 51.1,30.4
		.from Mechano-Lord Capacitus##19219 |only if not havequest(29657)
		.kill Mechano-Lord Capacitus##19219 |q 29657/1 |only if havequest(29657)
		|confirm |only if not havequest(29657)
	step
		.' Click the Turnin Quest box on the right side of your screen.
		..turnin With Great Power, Comes Great Responsibility##29657
	step
		.' Click the Turnin Quest box on the right side of your screen.
		..accept The Calculator##29658
	step
		goto 60.2,36.8
		.from Gatewatcher Iron-Hand##19710
		|confirm
	step
		goto 39.4,28.3
		.click Cache of the Legion##7216
		.' Loot the items inside.
		.get Blinding Fury |q 29659/1 |only if havequest(29659)
		|confirm |only if not havequest(29659)
	step
		.' Click the Quest Complete Box in the top right corner.
		..turnin Lost Treasure##29659
	step
		goto 41.8,25.7 |n
		.' Ride the elevator up to the Calculation Chamber. |goto The Mechanar/2 |noway|c
	step
		goto 53.1,27.4 |n
		.' Clear this whole room before pulling this boss.
		|confirm
	step
		goto 47.6,20.8 |n
		.from Nethermancer Sepethrea##19221
		.' Do not kill the _Raging Flames_ that she summons, try to avoid them and their _AoE_ spells. They are not hard to avoid.
		'|from Raging Flames##20481+
		|confirm
	step
		map The Mechanar/2
		path follow loose; loop off
		path	52.8,36.4	52.6,50.9	49.6,58.1
		path	38.5,60.9
		.' Follow this long hallway, and kill the mobs that spawn in groups.
		.from Bloodwarder Centurion##19510+, Sunseeker Engineer##20988+, Sunseeker Astromage##19168+, Bloodwarder Physician##20990+, Tempest-Forge Destroyer##19735+
		|confirm
	step
		goto 27.8,61.4
		.from Pathaleon the Calculator##19220 |only if not havequest(29658)
		.kill Pathaleon the Calculator##19220 |q 29658/1 |only if havequest(29658)
	step
		.' Click the Quest Complete Box in the top right corner.
		..turnin The Calculator##29658
	step
		goto 27.3,74.6 |n
		' You can use this portal to exit The Mechanar. |goto Netherstorm |c	
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Outland Dungeons\\Tempest Keep: Botanica (Bot) 68-70",[[
	dungeon 729
	description This guide will walk you through the Tempest Keep: Botanica dungeon.
	author support@zygorguides.com	
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm |next "entrance"
		.' I will use the Dungeon Finder |confirm |next "start"
	step
	label	"entrance"
		goto Netherstorm 71.7,55.0 |n
		.' Enter Botanica here. |goto The Botanica |noway|c
	step
	label	"start"
		goto The Botanica 85.6,46.9
		' Click the Accept Quest box on the right side of your screen.
		..accept Saving the Botanica##29660 
	step
		map The Botanica
		path follow loose; loop off
		path	79.3,49.4	53.0,51.0	47.8,43.3
		.' Follow the path through the halls until you reach this room. |goto 47.8,34.5 <5 |noway|c
	step
		goto 47.4,18.2
		.from Commander Sarannis##17976 |only if not havequest(29660)
		.kill Commander Sarannis##17976 |q 29660/1 |only if havequest(29660)
		|confirm |only if not havequest(29660)
	step
		goto 42.0,16.2
		.' Click the Accept Quest box on the right side of your screen.
		..accept Culling the Herd##29667 
	step
		goto 25.9,25.5 
		.from High Botanist Freywinn##17975 |only if not havequest(29660)
		.kill High Botanist Freywinn##17975 |q 29660/2 |only if havequest(29660)
		|confirm |only if not havequest(29660)
	step
		goto 8.2,47.6
		.from Thorngrin the Tender##17978 |only if not havequest(29660)
		.kill Thorngrin the Tender##17978 |q 29660/3 |only if havequest(29660)
		|confirm |only if not havequest(29660)
	step
		.' Click the Complete Quest Box in the top right corner.
		..turnin Saving the Botanica##29660
	step
		goto 16.5,76.7
		..kill 6 Mutate Fleshlasher##19598 |q 29667/1
		..kill 6 Mutate Fear-Shrieker##19513 |q 29667/2
		..kill 6 Mutate Horror##19865 |q 29667/3
		.' You can find more at [29.1,81.9]
		.' You may have to run the dungeon more than once to get all of them.
		|confirm |only if not completedq(29667)
	step
		goto 34.1,89.3
		.from Laj##17980
		.get Rapidly Evolving Frond |q 29667/4 |only if havequest(29667)
		|confirm |only if not havequest(29667)
	step
		'Click the Quest complete box at the top right of the screen
		..turnin Culling the Herd##29667
	step
		'Click the Quest Accept box at the top right of the screen
		..accept A Most Somber Task##29669 
	step
		goto 34.1,35.8
		.from Warp Splinter##17977 |only if not havequest(29669)
		.kill Warp Splinter##17977 |q 29669/1 |only if havequest(29669)
		|confirm |only if not havequest(29669)
	step
		.' Click the Complete Quest box at the top right of the screen.
		..turnin A Most Somber Task##29669
	step
		goto 34.1,18.0 |n
		' You can use this portal to exit The Botanica. |goto Netherstorm |noway|c		
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Outland Dungeons\\Tempest Keep: The Arcatraz (Arca) 68-70",[[
	dungeon 731
	description This guide will walk you through the Tempest Keep: The Arcatraz dungeon.
	author support@zygorguides.com			
	step
		'How do you want to enter this dungeon.
		.' Take me to the dungeon entrance. |confirm |next "entrance"
		.' I will use the Dungeon Finder. |confirm |next "start"
	step
	label	"entrance"
		goto Netherstorm 74.4,57.7
		.' Click the gold gate with purple energy beams.
		.' Enter Arcatraz here. |goto The Arcatraz/1 |noway |c
	step
	label	"start"
		goto 41.3,75.8 
		.' Click the Accept Quest box in the top right of the screen
		..accept Unbound Darkness##29674 
	step
		goto 59.7,25.0
		.from Zereketh the Unbound##20870 |only if not havequest(29674)
		.kill Zereketh the Unbound##20870 |q 29674/1 |only if havequest(29674)
		|confirm |only if not havequest(29674)
	step
		goto 59.7,25.0
		.' Click the Quest Complete Box in the top right of the screen.
		..turnin Unbound Darkness##29674
	step
		goto 65.0,35.6
		.' Go up the stairs:
		.' Click the Quest Accept Box that pops up.
		..accept Hey There Dalliah##29675 
	step
		goto 65.0,35.7 |n
		.' Follow this ramp up to the 2nd floor. |goto The Arcatraz/2 |noway|c
	step
		goto The Arcatraz/2,21.4,77.0
		.from Wrath-Scryer Soccothrates##20886 |only if not havequest(29675)
		.kill Wrath-Scryer Soccothrates##20886 |q 29675/1 |only if havequest(29675)
		|confirm |only if not havequest(29675)
	step
		goto 35.7,78.4
		.from Dalliah the Doomsayer##20885 |only if not havequest(29675)
		.kill Dalliah the Doomsayer##20885 |q 29675/2 |only if havequest(29675)
		|confirm |only if not havequest(29675)
	step
		.' Click the Quest Turnin Box that pops up.
		..turnin Hey There Dalliah##29675
	step
		.' Click the Quest Turnin Box that pops up.
		..accept Maximum Security Breakout##29681
	step
		goto 32.1,57.1 |n
		.' Go through this passage and up the stairs. |goto 32.1,57.1 <5 |c
	step
		goto The Arcatraz/3,58.2,30.5
		.' Attack Warden Mellichar to get the fight stared.
		.' He will unleash several monsters and then Harbinger Skyriss.
		.from Harbinger Skyriss##20912 |only if not havequest(29681)
		..kill Harbinger Skyriss##20912 |q 29681/1 |only if havequest(29681)
		|confirm |only if not havequest(29681)
		|modelnpc Warden Mellichar##20904
	step
		.' Click the Quest Turnin Box that pops up.
		..turnin Maximum Security Breakout##29681
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Outland Dungeons\\Caverns of Time: Opening the Dark Portal (CoT:Dark Portal or BM) (Level 68-70)",[[
	dungeon 733
	description This guide will walk you through the Cavern's of Time: Opening the Dark Portal dungeon.
	author support@zygorguides.com	
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm |next "entrance"
		.' I will use the Dungeon Finder |confirm |next "start"
	step
	label	"entrance"
		.' Click here to take the flight path. |confirm |next "fly"
		.' or
		.' Click here to take the Portal from Dalaran. |confirm |next "durn"
	step
	label	"fly"
		goto Tanaris 65.3,49.8 |n
		.' Enter Caverns of time here. |goto Tanaris 65.3,49.8 <5 |noway |c 
		|next "durn"
	step
	label	"durn"
		goto 57.0,62.3 |n
		.' Follow this path down and around.
		.' Enter Black Morass here. |goto The Black Morass |noway |c
	step
	label	"start"
		goto The Black Morass 49.3,6.4
		.talk Sa'at##20201
		..accept The Opening of the Dark Portal##10297
		..collect Chrono-Beacon##24289
	step
		goto 48.9,71.8
		.' Protect Medivh while he attempts to open the Dark Portal. If his shield gets too low you will fail.
		.' Monsters will appear randomly in the swamp out of yellow portals. To stop the flow of monsters you have to kill the Rift Lords summmoning the portals.
		.from Rift Lord##17839+
		.' At several stages of the battle a boss will spawn. Simply kill these like you did the Rift Lords.
		.from Chrono Lord Deja##17879+
		.from Temporus##17880+
		.' Once you have sealed all the rifts a final boss will appear near Medivh
		.from Aeonus##17881+
		.' Open the Dark Portal |q 10297/1 |only if havequest(10297)
	step
		goto 49.3,6.5
		.talk Sa'at##20201
		..turnin The Opening of the Dark Portal##10297
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Outland Dungeons\\Hellfire Citadel: Shattered Halls (SH or Shatt Halls) 67-75",[[
	dungeon 710
	description This guide will walk you through the Hellfire Citadel: Shattered Halls dungeon.
	author support@zygorguides.com	
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Hellfire Peninsula 47.5,52.0 |n
		.' Enter Shattered Halls. |goto The Shattered Halls |noway |c
	step
	label	"start"
		goto The Shattered Halls 58.7,88.7
		.talk Caza'rez##54932
		..accept Honor the Dying##29651 
	step
		goto 58.7,88.7
		.talk Stone Guard Stok'ton##54931
		..accept Fel Ember##29650 
		..accept A Very Special Cloth##29655 
		..accept The Will of the Warchief##29653 
	step
		goto 34.9,69.7
		.kill 4 Shattered Hand Legionnaire##16700 |q 29651/1 |only if havequest(29651)
		.' Jump down into the sewers here. |goto 34.9,69.7 <5 |noway |c
	step
		goto 37.0,61.8 |n
		.' Follow the sewer and turn left. Enter the Throne of the Damned here. |goto 37.0,61.8 <5 |noway |c
	step
		goto 34.6,62.1
		.from Grand Warlock Nethekurse##16807
		.collect Grand Warlock's Amulet##23735 |only if havequest(29650)
		|confirm |only if not havequest(29650)
	step
		goto 31.9,60.6
		.' Use your Grand Warlock's Amulet next to this fire. |use Grand Warlock's Amulet##23735
		.get Fel Ember |q 29650/1
		|only if havequest(29650)
	step
		goto The Shattered Halls 29.4,14.9
		.' Run down this hallway and kill all the Orcs. Watch out for flaming arrows shot at the ground.
		.from Shattered Hand Blood Guard##17461+, Shattered Hand Archer##17427+
		|confirm
	step
		goto 53.8,26.4
		.kill 2 Shattered Hand Champion##17671 |q 29651/3
		.kill 2 Shattered Hand Centurion##17465 |q 29651/2 |tip There will be 4 on the sides, surrounded by Shattered Hand Gladiators as you pass through.
		|only if havequest(29651)
	step
		goto 53.3,33.6
		.from Warbringer O'mrogg##16809 |tip He will fear random party members, this can make the fight healing intensive.
		.get O'mrogg's Warcloth |q 29655/1 |only if havequest(29655)
		|confirm |only if not havequest(29655)
	step
		goto 67.8,55.3
		.from Warchief Kargath Bladefist##16808 |tip This boss will call in Reaver Guards to help during the fight. Tank needs to pick up aggro on them.
		.get Warchief Kargath's Fist |q 29653/1 |only if havequest(29653)
		.from Reaver Guard##17623
	step
		.from Shattered Hand Executioner##17301
		|only if heroic_dung()
	step
		goto 67.2,51.8
		.talk Stone Guard Stok'ton##55136
		..turnin Honor the Dying##29651
		..turnin Fel Ember##29650
		..turnin A Very Special Cloth##29655
		..turnin The Will of the Warchief##29653
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Outland Dungeons\\Coilfang Reservoir: The Steamvault (SV) 68-70",[[
	dungeon 727
	description This guide will walk you through the Coilfang Reservoir: The Steamvault dungeon.
	author support@zygorguides.com	
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm |next "entrance"
		.' I will use the Dungeon Finder |confirm |next "start"	
	step
	label	"entrance"
		.' Swim down through this sewer in the water. |goto Zangarmarsh 50.4,40.9 <5 |c
	step
		goto 50.3,33.3 |n
		.' Go through the portal to the Steamvaults. |goto The Steamvault |noway|c
	step
	label	"start"
		goto The Steamvault 17.9,27.3
		.talk Watcher Jhang##54848
		..turnin Storming the Steamvault##29616
	step
		goto The Steamvault 17.9,27.3
		.talk Watcher Jhang##54848
		..accept A Proper Fate##29613 
	step
		goto 17.5,25.9
		.talk Naturalist Bite##54849
		..accept Containment is Key##29614 
	step
		goto 18.9,27.8
		.talk Windcaller Claw##54851
		..accept Windcaller Claw and the Water Thief##29615
	step
		goto 33.7,22.7
		.kill 3 Bog Overlord##21694 |q 29614/1
		|only if havequest(29614)
	step
		goto The Steamvault 54.3,12.4
		.from Hydromancer Thespia##17797 |only if not havequest(17797)
		.kill Hydromancer Thespia##17797 |q 29615/1 |only if havequest(29615)
		|confirm |only if not havequest(17797)
	step    
		goto 54.2,10.6
		.click Main Chambers Access Panel##7147
		.' You hear a faint echo...
		|confirm
	step
		.' Go through the opening on your left. |goto 42.1,32.9 <5 |c
	step
		.' Go up the ramp. |goto 49.3,42.8 <5 |c
	step
		.' Go up to the bridge on the right side. |goto 55.8,47.3 <5 |c
	step
		.' Cross the bridge and go through the hallway. |goto 39.7,69.0 <5 |c
	step
		goto The Steamvault 33.6,81.2
		.from Mekgineer Steamrigger##17796
		.get Irradiated Gear |q 29614/3 |only if havequest(29614)
		.kill 6 Coilfang Leper##21338+ |q 29614/2 |only if havequest(29614)
		|confirm |only if not havequest(29614)
	step
		goto 31.8,84.0
		.click Main Chambers Access Panel##7147
		.' You hear a faint echo... and You hear a loud rumble of metal grinding on stone....
		|confirm
	step
		goto 54.0,51.4 |n
		.' Follow the tunnel back to the bridge. |goto 54.0,51.4 <5 |c
	step
		.' Take a right after crossing the bridge, and go up a ramp. |goto 69.8,43.4 <5 |c
	step
		goto 78.7,43.3 |n
		.from Warlord Kalithresh##17798 |only if not havequest(29613)
		.kill Warlord Kalithresh##17798 |q 29613/1 |only if havequest(29613)
	step
		.' Follow the path down to the ramp. |goto 49.1,42.6 <5 |c
	step
		.' Enter this doorway. |goto 42.5,33.0 <5 |c
	step
		goto 18.8,27.6
		.talk Windcaller Claw##54851
		..turnin Windcaller Claw and the Water Thief##29615
	step
		goto 18.0,27.2
		.talk Watcher Jhang##54848
		..turnin A Proper Fate##29613
	step
		goto 17.6,25.9
		.talk Naturalist Bite##54849
		..turnin Containment is Key##29614
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Outland Dungeons\\Magisters' Terrace (MT) 70",[[
	dungeon 798
	description This guide will walk you through the Magisters' Terrace dungeon.
	author support@zygorguides.com	
	step
		'How do you want to enter this dungeon.
		.' Take me to the dungeon entrance. |confirm |next 
		.' I will use the Dungeon Finder. |confirm |next "start"
	step
		goto Isle of Quel'Danas 61.2,30.9 |n
		.' Go through the portal to Magisters' Terrace. |goto Magisters' Terrace/2 42.5,90.0 <5 |noway |c
	step
	label start
		goto 42.6,87.2
		.talk Exarch Larethor##55007
		..accept Severed Communications##29684
		..accept A Radical Notion##29686
		..accept Twisted Associations##29687
	step
		map Magisters' Terrace/2
		path follow loose;loop off;ants straight
		path	42.6,74.5	42.6,31.2	42.6,23.5		
		.' Follow this path and kill Selin Fireheart.
		.from Selin Fireheart##24723 |only if not havequest(29687)
		.kill Selin Fireheart##24723 |q 29687/1 |only if havequest(29687) 
		|confirm |only if not havequest(29687)
	step
		goto 60.8,23.7
		.talk Tyrith##24822
		..turnin Severed Communications##29684
		..accept The Scryer's Scryer##11490
	step
		goto 81.6,26.8
		.from Vexallus##24744 
		.get Volatile Essence |q 29686/1 |only if havequest(29686)
		|confirm |only if not havequest(29686)
	step
		goto 94.2,26.8
		.click Scrying Orb##4891 
		.' Activate the Scrying Orb |q 11490/1 
		|only if havequest(11490)
	step
		goto 94.1,35.9
		.talk Kalecgos##24848
		..turnin The Scryer's Scryer##11490
		..accept Hard to Kill##29685
	step
		goto 83.2,46.2 |n
		.' Follow this ramp down and go through the doorway. |goto Magisters' Terrace 79.8,56.3 <5 |noway |c
	step
		goto 39.0,56.1
		.' Kill Priestess Delrissa and her four companions.
		.from Priestess Delrissa##24560 |only if not havequest(29687)
		.kill Priestess Delrissa##24560 |q 29687/2 |only if havequest(29687)
		|confirm |only if not havequest(29687)
		|modelnpc Kagani Nightstrike##24557
		|modelnpc Ellrys Duskhallow##24558
		|modelnpc Eramas Brightblaze##24554
		|modelnpc Yazzai##24561
		|modelnpc Warlord Salaris##24559
		|modelnpc Apoko##24553
		|modelnpc Zelfan##24556
	step
		map Magisters' Terrace
		path follow loose;loop off;ants straight
		path	31.0,56.1	19.2,49.7	7.7,50.1
		.' Follow the path and kill Kael'thas Sunstrider.
		.from Kael'thas Sunstrider##24664 
		.get Head of Kael'thas |q 29685/1 |only if havequest(29685)
		|confirm |only if not havequest(29685)
	step
		.' You can either run to the beginning of the dungeon to turn in your quests.
		.' Or
		.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
		|confirm
		|only if havequest(29685)
	step
		goto 13.4,50.0
		.talk Exarch Larethor##55007
		..turnin A Radical Notion##29686
		..turnin Twisted Associations##29687
		..turnin Hard to Kill##29685
	step
		goto 4.3,49.6
		.click Escape to the Isle of Quel'Danas##7161 |goto Isle of Quel'Danas 47.3,30.6 |noway |c
]])
------------------------------------------------------------------------------------------------------------------------------------
-- Northrend Dungeons --
------------------------------------------------------------------------------------------------------------------------------------
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Northrend Dungeons\\Utgarde Keep: Utgarde Keep (UK) 69-72",[[
	dungeon 523
	description This guide will walk you through the Utgarde Keep: Utgarde Keep dungeon.
	step
		'How do you wish to start this dungeon?
		.' Take me to the dungeon entrance. |confirm
		.' I will use the Dungeon Finder. |next "lfg" |confirm
	step
		goto Howling Fjord 57.3,46.7 |n
		.' Enter the swirling portal to Utgarde Keep. |goto Utgarde Keep |noway|c
	step
	label "lfg"
		goto Utgarde Keep,68.2,67.7
		.talk Dark Ranger Marrah##24137
		.accept A Score to Settle##30112 
		.accept Disarmament##13206 
		.accept Ingvar Must Die!##11262
	step
		.' While going through the instance, look for _Vrykul Weapons_ along the walls.
		.click Vrykul Weapons##8388
		|confirm
		|only if havequest(13206)
	step	
		map Utgarde Keep
		path follow loose; loop off
		path	65.1,32.5	58.3,25.7	50.2,28.5
		.' Kill the groups at each of the waypoints.  It will deactivate the flame walls blocking you. |goto 50.2,28.5 <5 |noway|c
	step
		goto 29.5,67.0
		.from Prince Keleseth##23953 |only if not havequest(30112)
		.kill Prince Keleseth##23953 |q 30112/1 |only if havequest(30112)
		|confirm |only if not havequest(30112)
	step
		map Utgarde Keep
		path follow loose; loop off
		path	22.1,74.3	27.2,90.0	40.3,86.5
		path	48.6,84.4
		.' Go up the steps here. |goto Utgarde Keep/2 |noway|c
	step
		goto 58.5,65.4
		.' There will be two bosses, _Skarvald & Dalronn the Controller_.
		.' Skarvald - He has two abilities:
		.' He will _Charge_ random party member, stunning them for 2 second, as well as using _Stone Strike_ on the tank, knocking them back.
		.' Dalronn - Uses two abilities:
		.' His basic attack is _Shadow Bolt_, and he will randomly cast _Debilitate_ slowing the targets melee, moving, spell casting and ranged attack speed by 50% as well as putting a dot on the target.
		.' If you can try to kill them at the same time. When one dies, a ghost with the same abilities will spawn, but won't be targetable to control in any way.
		.from Dalronn##24201
		.from Skarvald the Constructor##24200
		|confirm
	step
		goto 53.6,26.5 |n
		.' Go up the steps. |goto Utgarde Keep/3 |noway|c
	step
		goto Utgarde Keep/3,72.7,38.8
		.' There are two phases to this fight.
		.' Phase 1:
		.' He will often use _Staggering Roar_, which will interrupt any spell casts. Be sure to stop casting if you see him using this.
		.' He will use _Smash_, which is a cone attack that attacks whoever is in front of him. It can be avoided by side stepping.
		.' Phase 2:
		.' He will often use _Dreadful Roar_, which will interrupt any spell casts. Be sure to stop casting if you see him using this.
		.' He will use _Woe Strike_, which will leave a debuff that will hurt anyone who heals the target afflicted by this.
		.' He will use _Dark Smash_, which will do massive cone damage and can be easily avoided by side stepping. Unlike Smash, this attack will additionally hit everyone in the group, knocking them down.
		.' He will also use _Shadow Axe_, which is cast at a random target.  You will have to run away from it.
		.from Ingvar the Plunderer##23954
		.get Ingvar's Head |q 11262/1 |only if havequest(11262)
		|confirm only if not havequest(11262)
	step 
		'Make sure you have gotten all your Vykrul Weapons. 
		.' Run through these halls and click Vykrul Weapons.
		.click Vrykul Weapons##8388
		.get 5 Vrykul Weapons |q 13206/1
		|only if havequest(13206)
	step
		goto 48.1,55.6 |n
		.' Jump down into the water below. Then go to [50.2,54.5] |n
		.' Jump down again. |goto Utgarde Keep |noway|c
	step
		goto 68.2,67.7
		.talk Dark Ranger Marrah##24137
		.turnin A Score to Settle##30112
		.turnin Disarmament##13206
		.turnin Ingvar Must Die!##11262
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Northrend Dungeons\\The Nexus (Nexus) 70-73",[[
	dungeon 520
	description This guide will walk you through the The Nexus dungeon.
	author support@zygorguides.com
	step
		'How do you wish to start this dungeon?
		.' Take me to the dungeon entrance. |confirm
		.' I will use the Dungeon Finder. |next "lfg" |confirm
	step
		goto Borean Tundra 27.5,26.0 |n
		.' Enter the swirling portal on the bottom to The Nexus. |goto The Nexus |noway|c
	step
	label "lfg"
		goto The Nexus 36.2,83.0
		.talk Image of Warmage Kaitlyn##55537
		..accept Have They No Shame?##13095 
	step
		goto 37.2,81.4
		.talk Image of Warmage Kaitlyn##55536
		..accept Quickening##11911 
	step
		goto 36.2,81.4
		.talk Warmage Kaitlyn##55531
		..accept Prisoner of War##11973 
	step
		goto 35.1,81.4
		.talk Image of Warmage Kaitlyn##55535
		..accept Postponing the Inevitable##11905 
	step
		map The Nexus
		path follow loose; loop off
		path	32.8,76.3	26.8,68.8	21.8,66.4
		path	21.6,56.2	19.0,51.1
		.' Follow this path
		.from Alliance Commander##27949
		|confirm |only if not havequest(13095)
		.click Berinand's Research##8128 |only if havequest(13095)
		.get Berinand's Research |q 13095/1 |only if havequest(13095)
	step
		goto 27.6,38.6
		.from Grand Magus Telestra##26731
		.' Follow the path left and you will reach her.
		|confirm
	step 
		map The Nexus
		path follow loose; loop off
		path	27.4,30.3	31.6,22.0	47.3,21.7
		path	61.5,21.9
		.from Anomalus##26763
		|confirm
	step
		goto 65.1,21.8
		.' Use your Interdimensional Refabricator here |use Interdimensional Refabricator##35479
		.' Stall the Interdimensional Rift |q 11905/1
		|only if havequest(11905)
	step
		map The Nexus
		path follow loose; loop off
		path	53.9,35.8	56.4,53.0	64.2,52.7
		path	60.3,64.8
		.' Follow this path to the next boss |goto 60.3,64.8 <5 |only if not havequest(11911)
		.from Crystalline Protector##26792
		.get 5 Arcane Splinter |q 11911/1 |only if havequest(11911)
		.' You can find more _Protectors here_ [53.3,55.6] |only if havequest(11911)
	step
		goto 56.9,70.3
		.from Ormorok the Tree-Shaper##26794
		.' Once you kill him, you should be able to engage _Keristrasza_.
		.' Go up the ramp on the right and jump down.
		|confirm
	step
		goto 38.3,67.2
		.' Kill the Azure Magus in the room, then look for the Containment Spheres around the room.
		.click Telestra's Containment Sphere##7800
		.from Keristrasza##26723
		.' Keristrasza Laid to Rest. |q 11973/1 |only if havequest(11973)
		.' Make sure that you move often during the fight.  If you don't you will get a debuff that lowers your attack and casting speed.
	step
		goto 36.2,83.0
		.talk Image of Warmage Kaitlyn##55537
		..turnin Have They No Shame?##13095
	step
		goto 37.3,81.4
		.talk Image of Warmage Kaitlyn##55536
		..turnin Quickening##11911
	step
		goto 36.3,81.4
		.talk Warmage Kaitlyn##55531
		..turnin Prisoner of War##11973
		|only if havequest(11973)
	step
		goto 35.2,81.4
		.talk Image of Warmage Kaitlyn##55535
		..turnin Postponing the Inevitable##11905
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Northrend Dungeons\\Azjol-Nerub (AN) 71-74",[[
	dungeon 533
	description This guide will walk you through the Azjol-Nerub dungeon.
	step
		'How do you wish to start this dungeon?
		.' Take me to the dungeon entrance. |confirm
		.' I will use the Dungeon Finder. |next "lfg" |confirm	step
	step
		goto Dragonblight 26.0,50.9 |n
		.' Zone into Azjol-Nerub. |goto Azjol-Nerub/3 |noway|c
	step
	label "lfg"
		goto Azjol-Nerub/3,15.2,83.8
		.talk Reclaimer A'zak##55564
		.accept Death to the Traitor King##29807 
		.accept Don't Forget the Eggs!##29808 
		.accept The Gatewatcher's Talisman##29811 
	step
		goto 34.6,48.7
		.click Nerubian Scourge Egg##7803
		.' Destroy 6 Nerubian Scourge Eggs. |q 29808/1
		|only if not completedq(29808)
	step
		goto 46.3,45.2
		.from Krik'thir the Gatewatcher##28684
		.get The Gatewatcher's Talisman |q 29811/1 |only if havequest(29811)
		|confirm |only if not havequest(28684)
	step
		goto 87.4,53.5
		.' Pull the mobs that are standing in the middle of the room.
		.' Once you pull them, it will trigger an event.  Clear all the mobs that come at you until _Hadronox_ engages you.
		.from Hadronox##28921
		|confirm
	step
		goto 72.6,30.0 |n
		.' Follow this path to the right. |goto Azjol-Nerub/2 |noway |c
	step
		goto Azjol-Nerub/2 49.3,65.3 |n
		.' Jump down the hole here. |goto Azjol-Nerub |noway |c
	step
		goto Azjol-Nerub,87.4,53.5
		.from Anub'arak##29120
		.get Anub'arak's Broken Husk |q 29807/1 |only if havequest(29807)
		|confirm |only if not havequest(29807)
	step
		goto 62.2,48.5
		.talk Reclaimer A'zak##55564
		.turnin Death to the Traitor King##29807
		.turnin Don't Forget the Eggs!##29808
		.turnin The Gatewatcher's Talisman##29811
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Northrend Dungeons\\Ahn'kahet: The Old Kingdom (OK) 72-75",[[
	dungeon 522
	description This guide will walk you through the Ahn'kahet: The Old Kingdom dungeon.
	step
		'How do you wish to start this dungeon?
		.' Take me to the dungeon entrance. |confirm
		.' I will use the Dungeon Finder. |next "lfg" |confirm
	step
		goto Dragonblight,28.4,51.7 |n
		.' Enter the swirling portal to The Old Kingdom. |goto Ahn'kahet: The Old Kingdom |noway|c
	step
	label "lfg"
		goto Ahn'kahet: The Old Kingdom 87.2,72.6
		.talk Seer Ixit##55658
		.accept Pupil No More##29825 
	step
		.' Note that as you're killing trash, target the _Ahn'kahar Spell Flingers_ first.
		.' If possible interrupt the  _Shadow Blast_ ability every chance you get.
		|confirm
	step
		goto 70.4,28.6
		.from Elder Nadox##29309 |only if not havequest(29825)	
		.kill Elder Nadox##29309 |q 29825/1 |only if havequest(29825)
		|confirm |only if not havequest(29825)
	step
		.' Click the Complete Quest Box in the top right corner of your screen.
		.turnin Pupil No More##29825 
		.accept Reclaiming Ahn'Kahet##29826 
	step
		goto 56.7,24.4
		.' Kill the mobs around the Ancient Nerubian Device, then click it.
		.click Ancient Nerubian Device##8393
		|confirm
	step
		goto 50.1,29.9
		.kill 3 Eye of Taldaram##30285+ |q 29826/1 |only if havequest(29826)
		.click Ancient Nerubian Device##8393
		|confirm
	step
		goto 56.9,38.2
		.kill Bonegrinder##30284 |q 29826/2
		|only if havequest(29826)
	step
		goto 63.1,50.4
		.from Prince Taldaram##29308 |only if not havequest(29826)
		.kill Prince Taldaram##29308 |q 29826/3 |only if havequest(29826)
		|confirm |only if not havequest(29826)
	step
		.' Click the Complete Quest Box in the top right corner of your screen
		.turnin Reclaiming Ahn'Kahet##29826 
		.accept The Faceless Ones##13187 
	step
		goto 49.3,72.3
		.from Jedoga Shadowseeker##29310
		.' The boss here is option, click here to skip it. |confirm
	step
		goto 32.4,50.1
		.from 3 Forgotten One##30414+ |only if not havequest(13187)
		.kill 3 Forgotten Ones##30414+ |q 13187/1 |only if havequest(13187)
		.' Avoid Shadow Crash, an AoE attack that targets the ground.
		|confirm |only if not havequest(13187)
	step
		.' Herald Volazj casts a spell called _Insanity_, which makes you kill a mirror image of each of your party members.
		.' Note that if you're by yourself, he will not use _Insanity_.
		.from Herald Volazj##29311 |only if not havequest(13187)
		.kill Herald Volazj##29311 |q 13187/2 |only if havequest(13187)
		|confirm |only if not havequest(13187)
	step
		goto 26.9,50.4
		.talk Seer Ixit##55658
		.turnin The Faceless Ones##13187
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Northrend Dungeons\\Drak'Tharon Keep (DTK) 73-76",[[
	dungeon 534
	description This guide will walk you through the Drak'Tharon Keep dungeon.
	step
		'How do you wish to start this dungeon?
		.' Take me to the dungeon entrance. |confirm
		.' I will use the Dungeon Finder. |next "lfg" |confirm
	step
		goto Zul'Drak 28.5,86.9 |n
		.' Enter the swirling portal to Drak'Tharon Keep. |goto Drak'Tharon Keep |noway|c
	step
	label "lfg"
		goto Drak'Tharon Keep,35.5,83.2
		.talk Kurzel##55677
		.accept Head Games##13129 
		.accept What the Scourge Dred##29828 
	step
		goto 37.0,80.9
		.talk Image of Drakuru##58149
		.accept Cleansing Drak'Tharon##30120 
	step
		map Drak'Tharon Keep
		path follow loose; loop off
		path	47.1,83.2	47.9,74.0	47.4,54.4
		path	47.3,43.2	54.6,35.0
		.' Clear the trash at each of these points.
		|confirm
	step
		.' Trollgore will use the _Consume_ ability, eating his fallen allies and gaining a damage buff. You can avoid this by kiting him away from the bodies.
		.' He will also use _Corpse Explode_ on his fallen allies, damaging those around.
		.' He'll put an _Infected Wound_ debuff on the tank, making him take extra damage.
		.from Trollgore##26630
		|confirm
	step
		goto Drak'Tharon Keep 73.3,47.6
		.' Attack Novos the Summoner to start the event.
		.' Kill the mobs that come down the steps here.
		.' 4 Crystal Handler will come one at a time from the waypoints on each of the summoners side.
		.' Once they are dead, Novos will become vulnerable to attack.
		.' He will cast _Blizzard_ on random party members.
		.' He will put _Wrath of Misery_ on random party members, which leaves a dot.
		.from Novos the Summoner##26631
		.' Use Kurzel's Blouse Scrap on Novos the Summoners corpse. |use Kurzel's Blouse Scrap##43214 |only if havequest(13129)
		.get Ichor-Stained Cloth |q 13129/1 |only if havequest(13129)
		'|goto Drak'Tharon Keep,67.4,55.9
		'|goto Drak'Tharon Keep,67.2,38.0
		|confirm |only if not havequest(13129)
	step
		goto Drak'Tharon Keep 67.8,80.2
		.' Clear the trash before engaging King Dred.
		.' If you didn't clear the trash he will use an ability called _Raptor Call_, calling all raptors in the area to assist him.
		.' Stand at max range if you're a caster / healer. He uses _Bellowing Roar_ which fears everyone within 35 yards. It can be countered with Fear Ward or Tremor Totem.
		.' He will hit the tank with _Grievous Bite_ which deals damage until the target is fully healed.
		.' He will also use _Mangling Slash_, which increases the damage the bleed does.
		.' He will use _Piercing Slash_ which reduces your armor by 75%, all damage reduction and avoidance abilities should be used at this time.
		.from King Dred##27483
		.get King Dred's Tooth |q 29828/1 |only if havequest(29828)
		|confirm |only if not havequest(29828)
	step
		goto 63.7,71.8 |n
		.' Go up the stairs here. |goto Drak'Tharon Keep/2 |noway|c
	step
		.' Kill trolls in this area and collect _Enduring Mojo_.
		.from Drakkari Commander##27431+,Drakkari Guardian##26620+,Drakkari Shaman##26639+
		.collect 5 Enduring Mojo##38303 |q 30120
		'|goto Drak'Tharon Keep/2,37.1,67.2
		'|goto Drak'Tharon Keep/2,37.3,29.2
		|only if havequest(30120)
	step
		goto 51.3,13.2
		.' The Prophet Tharon'ja has two Phases.
		.' Skeletal:
		.' He will cast _Shadowbolt Volley_, an AoE Shadow attack.
		.' He will cast _Rain of Fire_ at grouped up allies.
		.' He will use _Decay Flesh_, which turns you into a skeleton and puts you into the second phase where he is a serpent.
		.' Serpent:
		.' He will use _Lightning Breath_, an AoE Nature attack that jumps to nearby targets.
		.' He will cast _Poison Cloud_ on the ground.
		.' You will have 4 attacks as a skeleton.
		.' Tanks should use all four abilities on cooldown.
		.' DPS and Heals should use everything but _Taunt_.
		.' Repeat the actions until he is defeated.
		.from The Prophet Tharon'ja##26632
		|confirm
	step
		goto 37.9,13.2
		.' Use Drakuru's Elixer at the giant brazier here. |use Drakuru's Elixir##35797
		.' Follow Drakuru.
		.turnin Cleansing Drak'Tharon##30120
	step
		.' You can either run to the beginning of the dungeon to turn in your quests.
		.' Or
		.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
		|confirm
	step
		goto Drak'Tharon Keep 35.5,83.2
		.talk Kurzel##55677
		..turnin Head Games##13129
		..turnin What the Scourge Dred##29828
]])	
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Northrend Dungeons\\The Violet Hold (VH) 73-76",[[
	dungeon 536
	description This guide will walk you through the The Violet Hold dungeon.
	step
		'How do you wish to start this dungeon?
		.' Take me to the dungeon entrance. |confirm
		.' I will use the Dungeon Finder. |next "lfg" |confirm
	step
		goto Dalaran,68.7,70.4 |n
		.' Enter the swirling portal to The Violet Hold. |goto The Violet Hold |noway |c
	step
	label "lfg"
		goto The Violet Hold 47.7,89.7
		.talk Lieutenant Sinclari##30658
		.accept Containment##29830 
	step
		goto 47.5,90.3
		.talk Lieutenant Sinclari##30658
		.' Once you've accepted the quest, tell Lieutenant Sinclari that you will activate the crystals when in trouble.
		|confirm
	step
		.' In this instance, _Blue Portals_ will randomly pop up at each of the large pink shields in the room.
		.' You will need to go to it and defeat the monsters that come out until it closes.
		.' On waves 6, 12 and 18
		|confirm
	step
	label "the_list"
		.' Click here for the Boss Erekem. |next "Erekem" |confirm
		.' Click here for the Boss Moragg. |next "Moragg" |confirm
		.' Click here for the Boss Ichoron. |next "Ichoron" |confirm
		.' Click here for the Boss Xevozz. |next "Xevozz" |confirm
		.' Click here for the Boss Lavanthor. |next "Lavanthor" |confirm
		.' Click here for the Boss Zuramat the Obliterator. |next "Zuramat_the_Obliterator" |confirm
		.' Click here for the Boss Cyanigosa. |next "final_boss" |confirm
		'|from Erekem##29315, Moragg##29316, Ichoron##29313, Xevozz##29266, Lavanthor##29312, Cyanigosa##31134
	step
	label "Erekem"
		goto 28.1,61.9
		.' He comes with 2 friends.  Attack him first.
		.' Interrupt _Chain Heal_ when he casts it.
		.' Dispel, Purge, or Spellsteal when he casts _Earth Shield_.
		.' Purge or Spellsteal when he uses _Bloodlust_.
		.from Erekem##29315
		.' Click here to go back to the list of bosses. |confirm |next "the_list"
	step
	label "Moragg"
		goto 65.0,55.3
		.' Moragg puts _Corrosive Saliva_ which reduces the targets armor by 5% per application (Stacking effect).
		.' It will cast _Optic Link_ on a random party member. The damage slowly builds, getting higher the longer he channels it.
		.' It will put _Ray of Suffering_ on a random party member, dealing out 8% of the targets total health each tick.
		.from Moragg##29316
		.' Click here to go back to the list of bosses. |confirm |next "the_list"
	step
	label "Ichoron"
		goto 53.8,42.5.
		.' Ichoron has a _Protective Bubble_, preventing 99% of the damage you do to him. This shield has a charge, and every time he is hit a charge is taken away.
		.' Each time you remove his Protective Bubble, he splits into many smaller water elementals.  When they start appearing, go to one of the waypoints on the map and click the crystal on the wall.
		.' He will use _Water Blast_ to knock your tank around.
		.' He often casts _Water Bolt Volley_, an AoE frost based attack.
		.' You will need to destroy the _Protective Bubble_ 3 times before he is _Drained_ and you are able to kill him.
		.' When his shield is gone, he will gain a _Frenzy_ effect, increasing his caster speed and damage output.
		.from Ichoron##29313
		.' Click here to go back to the list of bosses. |confirm |next "the_list"
		'|goto The Violet Hold,31.0,75.6
		'|goto The Violet Hold,46.5,39.8
		'|goto The Violet Hold,55.5,79.9
	step
	label "Xevozz"
		.' Xevozzs will need to be kited around the room.
		.' He spawns _Ethereal Spheres_ which deal massive damage when you come into contact with them.  They will give the boss a huge damage buff, and give the player a huge arcane resistance debuff.
		.' The orbs also cast a constant _Arcane Explosion_ so stay away from them.
		.' He will put _Arcane Buffet_ on a random party member. It can be dispelled (Magic Effect).
		.' He often spams _Arcane Barrage Volley_.
		.from Xevozz##29266
		.' Click here to go back to the list of bosses. |confirm |next "the_list"
	step
	label "Lavanthor"
		goto 59.4,73.8
		.' Lavanthor uses a cone attack, _Flame Breath_ so don't be in front of him.
		.' He will cast _Lava Burn_ at random party members.
		.' He casts _Firebolt_ which can be interrupted.
		.' He places _Lava Burn_ on the ground, which deals damage if you stand in it.
		.from Lavanthor##29312
		.' Click here to go back to the list of bosses. |confirm |next "the_list"
	step
	label "Zuramat_the_Obliterator"
		.' This boss will _Summon Void Sentries_ which spam Shadowbolt Volley.
		.' He will cast _Void Shift_ on a random party member, this will allow them to see the Void Sentries. Whoever gets this debuff is responsible for clearing Void Sentries.
		.' _Shroud of Darkness_ is a buff Zuramat throws on himself that reduces the healing the group can receive. It is a magic effect and needs to be dispelled.
		.from Zuramat the Obliterator##29314
		.' Click here to go back to the list of bosses. |confirm |next "the_list"
	step
	label "final_boss"
		goto 45.1,54.6
		.' DPS and Heals should stand on either of her sides, to avoid _Uncontrollable Energy_ and_Tail Swipe_.
		.' She will use _Arcane Grip_, which pulls all party members to her and drops aggro. The tank should _Taunt_ immediately.
		.' She will cast _Blizzard_ on a random party member.
		.from Cyanigosa##31134
		|confirm |only if not havequest(29830)
		.' Cyanigosa Slain |q 29830/1 |only if havequest(29830)
	step
		goto The Violet Hold 45.9,91.2
		.talk Lieutenant Sinclari##30658
		.turnin Containment##29830
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Northrend Dungeons\\Gundrak (GD) 75-78",[[
	dungeon 530
	description This guide will walk you through the Gundrak dungeon.
	step
		.' For this instance, you will need to either queue up using the Looking For Group feature, or travel by foot.
		.' Click here to travel. |confirm
		.' Click here if you're using the Looking For Group feature. |next "lfg" |confirm
	step
		goto Zul'Drak,76.2,21.0 |n
		.' Enter the swirling portal to Gundrak. |goto Gundrak |noway|c
	step
	label "lfg"
		 goto Gundrak 58.3,34.2
		.talk Tol'mar##55738
		.accept Gal'darah Must Pay##29834 
		.accept One of a Kind##29839 
		.accept For Posterity##29844 
	step
		.' There will be Drakkari History Tablets throughout the dungeon. you will need to collect 6 to complete the quest.
		.click Drakkari History Tablet##7356 
		|confirm
	step
		goto Gundrak,58.8,40.0
		.' Follow the ramp down. 
		|confirm
	step
		goto 56.7,48.7
		.click Drakkari History Tablet##7356 
		.' Slad'ran will have several abilities.
		.' When he is casting _Poison Nova_ move away  from him as quickly as you can.
		.' He will randomly cast _Venom Bolt_ on party members.
		.' He summons _Slad'ran Constrictors_ which could be AoE'd down. If they aren't killed, they will use _Grip of Slad'ran_ which will incapacitate whoever get attacked with it.
		.from Slad'ran##29304 |only if not havequest(29834)
		.kill Slad'ran##29304 |q 29834/1 |only if havequest(29834)
		|confirm |only if not havequest(29834)
	step
		goto 53.8,48.7
		.click Altar of Slad'ran##8278
		|confirm
	step
		map Gundrak
		path follow loose; loop off
		path	58.8,56.9	57.8,67.7	46.8,73.8
		.' Follow this path
		.' Kill the trash mobs in this area.
		|confirm
	step
		goto 46.9,66.3
		.' The Drakkari Colossus splits into two bosses.
		.' The Drakkari Colossus uses _Mortal Strike_ reducing healing taken by 50% on the tank.
		.' At 50% health, the Drakkari Elemental will Emerge. Swtich DPS to it.
		.' The Drakkari Elemental will put purple puddles on the ground. Move out of them.
		.' It will charge forward in a straight line and damage anyone in its path.
		.' At 50% health, it will merge back with the Drakkari Colossus.
		.' Repeat until it is defeated.
		.from Drakkari Colossus##29307
		.from Drakkari Elemental##29573
		.get Drakkari Colossus Fragment |q 29839/1 |only if havequest(29839)
		|confirm |only if not havequest(29839)
	step
		goto 46.5,62.5
		.click Altar of the Drakkari Colossus##8278
		|confirm
	step
		goto 41.2,72.4 |n
		.' Jump down into the water here
		|confirm
	step
		goto 37.4,59.3 |n
		.' Swim to land. |goto 37.4,59.3 <5 |noway|c
	step
		goto 37.4,49.1
		.' Moorabi uses several abilities:
		.' _Ground Tremor_ is an ability that damages melee.
		.' He will also use _Mojo Frenzy_ which increases his casting speed, as well as his damage taken.
		.' He will use _Numbing Shout_ which reduces spell casting speed by 25%.
		.' He will occassionally cast _Transformation_ which can be interrupted. Each time he casts it, it is faster.
		.from Moorabi##29305 |only if not havequest(29834)
		.kill Moorabi##29305 |q 29834/2 |only if havequest(29834)
		|confirm |only if not havequest(29834)
	step
		goto 32.0,49.2 |n
		.' Pass through the new opening here. |goto 32.0,49.2 <5 |noway |c
		|only if heroic_dung()
	step
		goto 25.1,66.2
		.' Clear the Ruins Dwellers in the area. |goto 25.1,66.2 <5 |noway|c
		.from Ruins Dweller##29920+
		|only if heroic_dung()
	step
		.from Eck the Ferocious##29932
		.' Eck will appear once all the Ruin Dwellers have been defeated.
		|confirm
		|only if heroic_dung()
	step
		goto 39.6,49.2
		.click Altar of Moorabi##8278
		|confirm
	step
		goto 40.7,49.6
		.' Jump down and swim across. |goto 44.6,54.3 |c
	step
		goto 46.5,28.4
		.' He will also randomly throw a spear at a party member, giving them a bleed effect for 2 minutes called _Puncture_.
		.' He will use _Stampede_ on a random target, knocking them into the air.
		.' He has the ability _Whirling Slash_ which deals out massive damage if you're in melee range of him.
		.' Eventually he will transform into a Rhino.
		.' While transformed, he will use different abilities, listed below:
		.' _Enrage_ increases his attack speed by 100%.
		.' Gal'darah will use _Impaling Charge_ throughout the fight, randomly knocking back a party member.
		.' He will use _Stomp_ to knock melee away from him.
		.from Gal'darah##29306 |only if not havequest(29834)
		.kill Gal'darah##29306 |q 29834/3 |only if havequest(29834)
		|confirm |only if not havequest(29834)
	step
		.get 6 Drakkari History Tablet |q 29844/1
		.' If you haven't collected all 6, search through the instance for them.
		.' They are near walls.
		|only if havequest(29844)
	step
		goto Gundrak 51.7,20.9
		.talk Tol'mar##55738
		.turnin Gal'darah Must Pay##29834
		.turnin One of a Kind##29839
		.turnin For Posterity##29844
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Northrend Dungeons\\Halls of Stone (HoS) 76-79",[[
	dungeon 526
	description This guide will walk you through the Halls of Stone dungeon.
	step
		.' For this instance, you will need to either queue up using the Looking For Group feature, or travel by foot.
		.' Click here to travel. |confirm
		.' Click here if you're using the Looking For Group feature. |next "lfg" |confirm
	step
		goto The Storm Peaks 39.5,26.9 |n
		.' Enter the swirling portal. |goto Halls of Stone |noway|c
	step
	label  "lfg"
		goto Halls of Stone 35.8,35.0
		.talk Kaldir Ironbane##55835
		.accept The Forlorn Watcher##29848
		.accept Corrupt Constructs##29850
	step
		goto 49.8,41.2
		.kill 3 Dark Rune Giant##27969 |q 29850/1
		|only if havequest(29850)
	step
		map Halls of Stone
		path follow strict;loop off;ants straight
		path	42.6,53.6	39.1,52.9	31.9,51.7
		path	34.0,68.0	38.1,65.5
		.' Clear trash following this path.  It will lead you to _Krystallus_.
		|confirm
	step
		goto 39.6,61.8
		.' It is important to spread out on this fight.
		.' Krystallus will use _Boulder Toss_ on a random player, knocking them down and dealing damage to those around the target.
		.' He will also use _Stomp_, knocking the group backwards.
		.' He will turn the group to stone, followed by using the ability _Shatter_ which will damage the entire group.
		.from Krystallus##27977 |only if not havequest(29850)
		.kill Krystallus##27977 |q 29850/2 |only if havequest(29850)
		|confirm |only if not havequest(29850)
	step
		.' Jump down here. |goto 41.0,57.5 <5 |c
	step
		goto 50.0,85.4
		.' The _Maiden of Grief_ will cast Pillar of Woe on random party members. It causes shadow damage over time and can be dispelled. It is a magic effect.
		.' Throughout the fight she will place _Storm of Grief_ on the ground, which is a large black circle that deals shadow damage. Avoid when possible.
		.' She will use the ability _Shock of Sorrow_, which will damage the entire group and incapacitate them for 6 seconds. To avoid the incapacitating effect, stand in _Storm of Grief_ before she finishes casting Shock of Sorrow.
		.from Maiden of Grief##27975
		.get Crystal Tear of Grief |q 29848/1 |only if havequest(29848)
		|confirm |only if not havequest(29848)
	step
		 goto 59.2,53.6
		 .kill 3 Dark Rune Giant##27969 |q 29850/1
		 |only if havequest(29850)
	step
		 goto 70.9,48.6
		 .talk Brann Bronzebeard##28070
		 .accept Halls of Stone##13207
		 .' When you're ready to go, tell Brann that it would be our honor!
		 |confirm
	step
		goto 81.7,71.1
		.' Once here, you will be at the next event.
		.' You will need to _protect Brann Bronzebeard_ from enemies that attack.
		.' Let Brann know you're ready to move.
		.' Click here to continue when the event is over. |confirm always
	step
		goto 84.2,74.8
		.talk Brann Bronzebeard##28070
		.' Tell him we need to get moving.
		|confirm
	step
		goto 49.9,28.7
		.talk Brann Bronzebeard##28070
		.' Tell Brann to open the door.
		|confirm
	step
		Sjonnir The Ironshaper
		.' He has a _Lightning Shield_ that can be _Purged_ or _Dispelled_.
		.' He places _Static Charge_ on a random party member. The afflicted member should move away from the group.
		.' He channels _Lightning Ring_ which you should move away from.
		.from Sjonnir The Ironshaper##27978
		|confirm
	step
		goto Halls of Stone 61.8,39.7
		.talk Brann Bronzebeard##28070
		..turnin Halls of Stone##13207
	step
		goto Halls of Stone 35.8,34.9
		.talk Kaldir Ironbane##55835
		.turnin The Forlorn Watcher##29848
		.turnin Corrupt Constructs##29850
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Northrend Dungeons\\Trial of The Champion (ToC) 78-80",[[
	dungeon 542
	description This guide will walk you through the Trial of the Champion dungeon.
	step
		.' For this instance, you will need to either queue up using the Looking For Group feature, or travel by foot.
		.' Click here to travel. |confirm
		.' Click here if you're using the Looking For Group feature. |next "lfg" |confirm
	step
		goto Icecrown 74.2,20.6 |n
		.' Enter the swirling portal to the Trial of the Champion. |goto Trial of the Champion |noway|c
	step
	label "lfg"
		goto Trial of the Champion 49.6,30.3
		.accept Champion of the Tournament##29851
		.click Lance Rack##130
		.collect Argent Lance##46106
		|confirm
	step
		goto 57.9,33.6
		.' Equip your _Argent Lance_. |equipped Argent Lance##46106 |use Argent Lance##46106
		.clicknpc Argent Battleworg##36558 
		.' Ride an Argent Battleworg |invehicle
	step
		.' Your Argent Battleworg has 4 abilities:
		.' _Thrust_ Is your primary attack, and is assigned to 1.
		.' _Shield Break_ is assigned to 2, and should be used to remove and enemies _Defend_ buff.
		.' _Charge_ deals out massive damage, as well as removing 1 layer of _Defend_ from the enemy. It is assigned to 3.
		.' _Defend_ Reduces damage you take by 30%, stacking 3 times. This should be maintained at 3 at all times.
		'|clicknpc Argent Battleworg##36558
		|confirm
	step
		goto 51.0,53.1
		.talk Arelas Brightstar##35005
		.' Let him know that you're ready.
		.' When the even starts there will be 3 enemies.
		.' Mark a target and focus them down one by one.
		.' There will be several waves of jousting enemies up until the 3 champions come out.
		.' Repeat the same strategy with them and complete the event.
		|confirm
		'|from Marshal Jacob Alerius##34705
		'|from Ambrose Boltspark##34702
		'|from Jaelyne Evensong##34657
	step
		.' The first boss encounter will consist of the last group of jousters your defeated.
		.' _Colosos_ should be your first target if he is there. He has _Healing Wave_ and _Earth Shield_ which will make the fight last longer than it has to. Interrupt Healing Wave at all costs.
		.' _Ambrose Boltspark_ should be second if applicable. He will _Polymorph_ random party members, as well as use _Blast Wave_ to AoE your group down.
		.' _Lana Stouthammer_ should be third, if applicable. She will use _Poison Bottle_ leaving a green puddle on the ground that deals nature damage as well as _Fan of Knives_ as AoE.
		.' _Marshal Jacob Alerius_ should be fourth, if applicable. He will use _Mortal Strike_ on the tank reducing healing done by 50% as well as a _Bladestorm_ ability, hitting everyone near him.
		.' _Jaelyne Evensong_ should be fifth, if applicable. She will use _Multishot_ and _Lightning Arrow_ which can be dispelled.
		.' _Kill the Champions of the Alliance_
		'|from Colosos##34701, Ambrose Boltspark##34702, Lana Stouthammer##34703, Marshal Jacob Alerius##34705, Jaelyne Evensong##34657
		|confirm
	step
		goto 54.2,48.4
		.' Once you kill the boss, trash will come out.
		.' There will be 3 groups of enemies that come out.
		.' Each group will have an _Argent Priestess_. Be sure to kill her first.
		.' Interrupt her heals and kill _Fountain of Light_ when she puts one out.
		|confirm
		'|from Argent Priestess##35307, Argent Monk##35305, Argent Lightwielder##35309
		'|goto 38.4,51.4
	step
		.' There will be one of two bosses at this point:
		.' Click here for _Eadric_. |next "Eadric" |confirm
		.' Click here for _Argent Confessor Paletress_. |next "Paletress" |confirm
		'|from Eadric##35119, Paletress##34928
	step
	label "Eadric"
		goto 39.0,53.1
		.' Eadric will use _Hammer of Justice_ on a random party member.
		.' When Eadric casts _Radiance_, turn away from him so you aren't blinded. It will render you unable to act for 2 seconds.
		.' He will also cast _Hammer of the Righteous_ at a random party member. If the party member isn't affected by Hammer of Justice, you can catch it and throw it back at him.
		.from Eadric##35119
		|confirm |next "Black_Knight"
	step
	label "Paletress"
		goto 39.0,53.1
		.' She will cast _Holy Fire_ on random party members. It will leave a DoT.
		.' She will often cast _Holy Nova_ before Confess, which will spawn a Shadow that you will have to kill before finishing her off.
		.from Argent Confessor Paletress##34928
		|confirm
	step
	label	"Black_Knight"
		goto 51.0,53.1
		.talk Arelas Brightstar##35005
		.' Let him know you're ready for the finals.
		.' He will get killed and _The Black Knight_ will appear.
		|confirm
	step
		.' There are 3 phases to this fight.
		.' _Phase 1:_
		.' He will summon Ghouls which leap around and drop aggro often.  They also _Explode_ often, dealing out AoE Damage.
		.' He will also random use _Death's Respite_ on random party members, stunning them for 2 seconds and knocking them back, dealing massive damage.
		.' _Phase 2:_
		.' He will use _Army of the Dead_, summoning several ghouls that leap around and explode.
		.' He will leave _Desecration_ on the ground under a random target. It deals out damage every 2 seconds so move out of it.
		.' _Phase 3:_
		.' He has _Death's Bite_ aura, which deals out shadow and frost damage that leaves an increase magic damage taken of 5% debuff that stacks.
		.' He will cast _Marked for Death_ which leaves a debuff that increases magic damage taken by 200% for 10 seconds.
		.from The Black Knight##35451 
		|confirm |only if not havequest(29851)
		.' Defeat the Black Knight |q 29851/1 |only if havequest(29851)
	step
		'Click the Complete Quest Box in the top right corner of your screen
		..turnin Champion of the Tournament##29851
		|only if havequest(29851)
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Northrend Dungeons\\Caverns of Time: The Culling of Stratholme (CoS) 78-80",[[
	dungeon 521
	description This guide will walk you through the Caverns of Time: The Culling of Stratholme dungeon.
	author support@zygorguides.com
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm
		.' I will use the Dungeon Finder |confirm |next "start"
	step
		goto Tanaris 65.3,49.8 |n
		.' Enter Caverns of time here. |goto Tanaris 65.3,49.8 <5 |noway |c 
		|next "start"
	step
	label  "start"
		goto The Culling of Stratholme 86.5,61.5
		.talk Chromie##26527
		.accept Dispelling Illusions##13149 
	step
		goto 86.5,61.5
		.talk Chromie##26527
		.collect Arcane Disruptor##37888
		|only if not havequest(13149)
	step	
		map The Culling of Stratholme
		path follow loose; loop off
		path	83.8,59.2	81.2,59.8	77.8,55.0
		path	73.5,54.9	70.2,51.2
		.' Use your Arcane Disruptor on the 5 Suspicious Grain Crates at the waypoints. |use Arcane Disruptor##37888
		.' Click here when you have all 5 Dispelled|confirm |only if not havequest(13149)
		.' Plague Grain Crates Dispelled |q 13149/1 |only if havequest(13149)
		'|click Plagued Grain Crate##336
	step
		goto 47.6,39.8
		.talk Chromie##27915
		.turnin Dispelling Illusions##13149
	step
		goto 47.6,39.8
		.talk Chromie##27915
		..accept A Royal Escort##13151 
	step
		goto 47.6,39.8
		.talk Chromie##27915
		.' Ask Chromie what they're up to.
		|confirm
	step
		goto 47.3,24.9 |n
		.' Cross the bridge into Stratholme. |goto The Culling of Stratholme/2 |noway|c
	step
		goto The Culling of Stratholme/2,50.5,79.2
		.talk Arthas##26499
		.' Let him know that you are ready.
		|confirm
	step
		.' Move between these waypoints in order to find the mobs that spawn.
		.' Click here when _Meathook_ spawns. |confirm
		'|goto 45.1,64.9
		'|goto 46.6,58.5
		'|goto 53.1,62.4
		'|goto 61.5,52.9
		'|goto 59.7,39.0
	step
		goto 52.9,62.4
		.' Meathook walks around this area.
		.' He has two main attacks:
		.' He will use _Constricting Chains_ on a random party member, stunning them for 5 seconds and dealing damage.
		.' He will use _Disease Expulsion_, which will deal out damage and interrupt spell casts to players nearby.
		.from Meathook##26529
		|confirm
		'|goto 47.2,59.8
		'|goto 61.2,53.0
		'|goto 60.2,44.4
	step
		.' Move between these waypoints in order to find the mobs that spawn.
		.' Click here when _Salramm the Fleshcrafter_ spawns. |confirm
		'|goto 45.1,64.9
		'|goto 46.6,58.5
		'|goto 53.1,62.4
		'|goto 61.5,52.9
		'|goto 59.7,39.0
	step
		goto 52.9,62.4
		.' Salramm the Fleshcrafter walks around one of these locations.
		.' He will cast _Steal Flesh_ on a random group member, lowering their damage by 75% and increases his by 75%
		.' He casts _Summon Ghouls_ throughout the fight. He will randomly cast _Explode Ghoul_ as well, blowing them up to do AoE damage.
		.from Salramm the Fleshcrafter##26530
		|confirm
		'|goto 47.2,59.8
		'|goto 61.2,53.0
		'|goto 60.2,44.4
	step	
		goto 58.8,36.7
		.talk Arthas##26499
		.' Tell _Arthas_ to lead the way.
		|confirm
	step
		.' Fight the mobs that spawn at these points.
		|confirm
		'|goto 58.1,32.7
		'|goto 59.0,27.0
		'|goto 61.7,31.4
		'|goto 65.8,28.4
	step
		goto 66.1,26.0
		.' Chrono-Lord Epoch will come out of a portal here. 
		.' He will use _Time Warp_ and uses an AoE Charge.
		.' He will use _Wounding Strike_ on the tank, reducing healing received by 25% as well as leaving a DoT.
		.from Chrono-Lord Epoch##26532
		|confirm
	step
		goto 65.5,28.8
		.talk Arthas##26499
		.' Tell Arthas that you're ready. |confirm
	step
		.' Follow Arthas down the steps. |goto The Culling of Stratholme/2 64.9,14.2 <5 |c
	step
		goto 64.9,14.2
		.talk Arthas##26499
		.' Tell him "For Lordaeron!"
		|confirm
	step
		.' Follow and protect Arthas as he goes through the tunnel. |goto 40.1,37.2 <5 |c
	step
		goto 40.1,37.2
		.talk Arthas##26499
		.' Tell him you're ready to battle the dreadlord.
		|confirm
	step
		goto 33.5,44.9
		.' Mal'Ganis has a few attacks to watch out for:
		.' He will randomly cast _Sleep_ on a random party memeber, incapacitating them for 10 seconds.
		.' He will cast _Carrion Swarm_ which is a cone attack in front of him.
		.' He will cast _Mind Blast_ on random party members.
		.' He will buff himself with _Vampiric Touch_ causing him to heal for half the damage he does. It can be _Purged_ or removed with _Dispel Magic_.
		.from Mal'Ganis##26533
		.' Defeat Mal'Ganis |q 13151/1 |only if havequest(13151)
		|confirm |only if not havequest(13151)
	step
		goto 32.0,44.7
		.talk Chromie##30997
		.turnin A Royal Escort##13151
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Northrend Dungeons\\The Oculus (OC) 78-80",[[
	dungeon 528
	description This guide will walk you through the Oculus dungeon.
	step
		.' For this instance, you will need to either queue up using the Looking For Group feature, or travel by foot.
		.' Click here to travel. |confirm
		.' Click here if you're using the Looking For Group feature. |next "lfg" |confirm
	step
		goto Borean Tundra 27.5,26.0 |n
		.' Enter the swirling portal on the top to The Oculus. |goto The Oculus |noway|c
	step
	label "lfg"
		goto The Oculus 63.3,42.0
		.accept The Struggle Persists##13124
	step
		goto 38.3,50.5 |n
		.' Follow this ledge around.
		.' Click the portal. |goto 47.9,69.4 <5 |noway|c
	step
		goto 48.9,76.1
		.from Drakos the Interrogator##27654
		|confirm
	step
		goto 50.1,81.2
		.talk Belgaristrasz##27658
		.turnin The Struggle Persists##13124
	step
		goto 50.1,81.2
		.talk Belgaristrasz##27658
		..accept A Unified Front##13126 
	step
		.' Talk to either Verdisa, Belgaristrasz or Eternos and attain a dragon.
		.collect Ruby Essence##37860 |or |tip Talk to Belgaristrasz for the Ruby Essence.
		.collect Amber Essence##37859 |or |tip Talk to Eternos for the Amber Essence.
		.collect Emerald Essence##37815 |or |tip Talk to Verdisa for the Emerald Essence.
		'|talk Verdisa##27657
		'|talk Belgaristrasz##27658
		'|talk Eternos##27659
	step
		.' Use your Ruby Essence. |use Ruby Essence##37860 |or
		.' Use your Amber Essence. |use Amber Essence##37859 |or
		.' Use your Emerald Essence. |use Emerald Essence##37815 |or
		.' Ride your Essence|invehicle
	step
		goto 47.0,54.6 |n
		.' Fly up and over to this platform. |goto The Oculus/2 |noway |c
	step
		goto The Oculus/2,41.0,66.3
		.from 1 Centrifuge Construct##27641 |only if not havequest(13126)
		|confirm |only if not havequest(13126)
		.kill 1 Centrifuge Construct##27641 |q 13126/1 |only if havequest(13126)
	step
		goto 40.2,55.5
		.from 1 Centrifuge Construct##27641 |only if not havequest(13126)
		|confirm |only if not havequest(13126)
		.kill 2 Centrifuge Construct##27641 |q 13126/1 |only if havequest(13126)
	step
		goto 57.7,54.3
		.from 1 Centrifuge Construct##27641 |only if not havequest(13126)
		|confirm |only if not havequest(13126)
		.kill 3 Centrifuge Construct##27641 |q 13126/1 |only if havequest(13126)
	step
		goto 57.4,66.6
		.from 1 Centrifuge Construct##27641 |only if not havequest(13126)
		|confirm |only if not havequest(13126)
		.kill 4 Centrifuge Construct##27641 |q 13126/1 |only if havequest(13126)
	step
		.' Use your Ruby Essence. |use Ruby Essence##37860 |or
		.' Use your Amber Essence. |use Amber Essence##37859 |or
		.' Use your Emerald Essence. |use Emerald Essence##37815 |or
		.' Ride your Essence |invehicle
	step
		goto 71.0,76.7
		.from 3 Centrifuge Construct##27641 |only if not havequest(13126)
		|confirm |only if not havequest(13126)
		.kill 7 Centrifuge Construct##27641 |q 13126/1 |only if havequest(13126)
	step
		.' Use your Ruby Essence. |use Ruby Essence##37860 |or
		.' Use your Amber Essence. |use Amber Essence##37859 |or
		.' Use your Emerald Essence. |use Emerald Essence##37815 |or
		.' Ride your Essence |invehicle
	step
		goto 29.3,76.3
		.from 3 Centrifuge Construct##27641 |only if not havequest(13126)
		|confirm |only if not havequest(13126)
		.kill 10 Centrifuge Construct##27641 |q 13126/1 |only if havequest(13126)
	step
		.' Use your Ruby Essence. |use Ruby Essence##37860 |or
		.' Use your Amber Essence. |use Amber Essence##37859 |or
		.' Use your Emerald Essence. |use Emerald Essence##37815 |or
		.' Ride your Essence |invehicle
	step
		goto 45.5,26.0
		.from Varos Cloudstrider##27447 |only if not havequest(13126)
		|confirm |only if not havequest(13126)
		.kill Varos Cloudstrider##27447 |q 13126/2 |only if havequest(13126)
	step
		goto 45.7,20.4
		.talk Image of Belgaristrasz##28012
		.turnin A Unified Front##13126
	step
		goto 45.7,20.4
		.talk Image of Belgaristrasz##28012
		.accept Mage-Lord Urom##13127 
	step
		.' Use your Ruby Essence. |use Ruby Essence##37860 |or
		.' Use your Amber Essence. |use Amber Essence##37859 |or
		.' Use your Emerald Essence. |use Emerald Essence##37815 |or
		.' Ride your Essence |invehicle
	step
		goto 57.4,33.0 |n
		.' Fly up to this platform with your drake. |goto The Oculus/3 |noway |c
	step
		goto The Oculus/3,70.8,27.2
		.' Attack Mage-Lord Urom.  When he vanishes, kill the mobs he summons.
		.from Mage-Lord Urom##27655+, Phantasmal Naga##27648+, Phantasmal Ogre##27647+, Phantasmal Murloc##27649
		|confirm
	step
		.' Use your Ruby Essence. |use Ruby Essence##37860 |or
		.' Use your Amber Essence. |use Amber Essence##37859 |or
		.' Use your Emerald Essence. |use Emerald Essence##37815 |or
		.' Ride your Essence |invehicle
	step
		goto 50.4,87.8
		.' Attack Mage-Lord Urom.  When he vanishes, kill the mobs he summons.
		.from Mage-Lord Urom##27655+, Phantasmal Naga##27648+, Phantasmal Ogre##27647+, Phantasmal Murloc##27649
		|confirm
	step
		.' Use your Ruby Essence. |use Ruby Essence##37860 |or
		.' Use your Amber Essence. |use Amber Essence##37859 |or
		.' Use your Emerald Essence. |use Emerald Essence##37815 |or
		.' Ride your Essence |invehicle
	step
		goto 25.6,31.1
		.' Attack Mage-Lord Urom.  When he vanishes, kill the mobs he summons.
		.from Mage-Lord Urom##27655+, Phantasmal Naga##27648+, Phantasmal Ogre##27647+, Phantasmal Murloc##27649
		|confirm
	step
		.' Use your Ruby Essence. |use Ruby Essence##37860 |or
		.' Use your Amber Essence. |use Amber Essence##37859 |or
		.' Use your Emerald Essence. |use Emerald Essence##37815 |or
		.' Ride your Essence |invehicle
	step
		 goto 39.3,36.1
		 .' For this fight, you will want to stay out of the _Frost Bombs_ he throws on the ground.
		 .from Mage-Lord Urom##27655 |only if not havequest(13127)
		 |confirm |only if not havequest(13127)
		 .kill Mage-Lord Urom##27655 |q 13127/1 |only if havequest(13127)
		 .turnin Mage-Lord Urom##13127
	step
		 goto 39.3,36.1
		 .accept A Wing and a Prayer##13128
	step
		goto The Oculus/4,47.1,85.2
		.' For Ley-Guardian Eregos, each Drake plays a vital role in this encounter.
		.' To see what you will be doing based on the Essence you picked, _Click_ below:
		.' Emerald Essence: Heals |confirm |next "emerald"
		.' Ruby Essence: Tank |confirm |next "ruby"
		.' Amber Essence:: Damage |confirm |next "amber"
	step
	label "emerald"
		.' As the Emerald Drake, your job will be to heal your group.
		.' You 3 abilities that you will be using:
		.' _Leeching Poison_ puts a DoT on your target, siphoning health from that target to you.  It will be important that you keep 3 stacks up on the boss at all times at the very least.
		.' _Touch the Nightmare_ damages you in order to reduce your enemies damage output.  It should be used on _Ley-Guardian Eregos_ only, however _DO NOT SPAM_ this ability.
		.' _Dream Funnel_ transfers 5% of your health to a friendly target.  This along with Leeching Poison is what you should be using the most.
		.from Ley-Guardian Eregos##27656 |only if not havequest(13128)
		|confirm |only if not havequest(13128)
		.kill Ley-Guardian Eregos##27656 |q 13128/1 |only if havequest(13128)
		|next "turnin"
	step
	label "ruby"
		.' As the Ruby Drake, your job will be to Tank the boss as well as the whelplings as best you can at all times.
		.' _Searing Wrath_ is your only attack, and jumps to nearby opponents when used.
		.' _Evasive Aura_ is an ability that gives you a charge whenever you're damage. The charge is used for yoru 3rd ability.
		.' _Evasive Maneuvers_ is an ability that allows you to dodge all incoming damage. 
		.from Ley-Guardian Eregos##27656 |only if not havequest(13128)
		|confirm |only if not havequest(13128)
		.kill Ley-Guardian Eregos##27656 |q 13128/1 |only if havequest(13128)
		|next "turnin"
	step 
	label "amber"
		.' As the Amber Drake, your job will be to damage Ley-Guardian Eregos.
		.' _Shock Lance_ Will be your primary attack.
		.' _Stop Time_ is an important ability, freezing all enemy targets when used.  It is important to use this when Ley-Guardian Eregos uses _Enraged Assault_.
		.' _Temporal Rift_ is a channeled ability, which should be used until you have _10 Shock Charges_, at which point you will want to use _Shock Lance_.
		.from Ley-Guardian Eregos##27656 |only if not havequest(13128)
		|confirm |only if not havequest(13128)
		.kill Ley-Guardian Eregos##27656 |q 13128/1 |only if havequest(13128)
		|next "turnin"
	step
	label "turnin"
		goto The Oculus/4,47.1,85.2
		.talk Belgaristrasz##27658
		.turnin A Wing and a Prayer##13128
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Northrend Dungeons\\Halls of Lightning (HoL) 78-80",[[
	dungeon 525
	description This guide will walk you through the Halls of Lightning dungeon.
	step
		.' For this instance, you will need to either queue up using the Looking For Group feature, or travel by foot.
		.' Click here to travel. |confirm
		.' Click here if you're using the Looking For Group feature. |next "lfg" |confirm
	step
		goto The Storm Peaks,45.4,21.4 |n
		.' Enter the swirling portal. |goto Halls of Lightning |noway|c
	step
	label "lfg"
		goto Halls of Lightning 11.9,53.8
		.talk Stormherald Eljrrin##56027
		.accept Diametrically Opposed##29860 
		.accept Whatever it Takes!##29861
		.accept Clearing the Way##29862 
	step
		map Halls of Lightning
		path follow loose; loop off; ants straight
		path	32.6,53.7	32.5,72.5	54.4,72.2
		.' Go to each point and kill the mobs as you continue
		.' Follow the path to this spot |goto 54.4,72.2 <5 |noway |c |only if not havequest(29862)
		.kill 3 Stormforged Tactician##28581 |q 29862/2 |only if havequest(29862)
		.kill 3 Stormforged Mender##28582 |q 29862/1 |only if havequest(29862)
	step
		goto 54.9,71.9
		.' Wait for General Bjarngrim here. Don't engage him if he has the _Temporary Electric Charge_ buff.
		.' Clear trash before engaging. Avoid him if there is trash around.
		.' Clear trash up to this point if he is patting further away. [54.9,53.7]
		.' Kill the _Stormforged Lieutenants_ before killing the boss.
		.' If you get the _Arch Weld_ debuff, you _SHOULD NOT_ move.
		.' Be sure you spread out for the fight.
		.from General Bjarngrim##28586 |only if not havequest(28586)
		|confirm |only if not havequest(28586)
		.kill General Bjarngrim##28586 |q 29862/3 |only if havequest(28586)
	step
		goto 69.5,53.7
		.' Once here, you will see an area full of _Slags_. Once you start going across, do not stop until you reach [88.0,54.1].
		.' _Do not_ attack them until you're at the other side.
		.' _Do not_ stand near them when you kill them.
		.' Once cleared and up the steps, click here to proceed. |confirm
	step
		goto Halls of Lightning/2,41.8,23.1
		.' _Volkhan_ will create _Molten Golems_ throughout the fight.  The Tank should pick them up.
		.' When _Volkhan_ uses his _Shattering Stomp_ ability, the giants will explode and deal damage to anyone near them.
		.' The more damage the _Molten Golems_ take, the slower the move, and at 1 Health they will eventually stop.
		.from Volkhan##28587 |only if not havequest(29860)
		|confirm |only if not havequest(29860)
		.kill Volkhan##28587 |q 29860/1 |only if havequest(29860)
	step
		map Halls of Lightning/2
		path follow loose;loop off;ants straight
		path	47.2,41.3	47.0,53.5	51.4,54.2
		.' Follow the path through the hallway, stopping at each waypoint.
		.' At each of the waypoints, enemies will spawn.
		.' Kill the _Titanium Siegebreakers_ first, they use a fear ability.
		|confirm
	step
		goto 61.1,75.0
		.' Ionar has 3 main abilities.
		.' He will use _Ball of Lightning_ at random, which throws a ball that falls at moderate speed and can be avoided.
		.' _Static Overload_ is placed on a random group member, damaging all party members around the target. Stay away from allies if you get this debuff.
		.' When Ionar uses _Disperse_, run to [60.8,53.9].
		.from Ionar##28546
		|confirm
	step
		map Halls of Lightning/2
		path follow loose;loop off;ants straight
		path	47.2,69.3	40.5,65.3	29.4,75.8
		.' Follow the path, killing trash at each waypoint.
		.' Kill _Stormforged Runeshapers_ first, they do an Area of Effect attack that deals out massive damage.
		.' There will be a _Titanium Vanguard_ patrol around the second waypoint. Wait before pulling.
		.' Click here once you're safely at the last waypoint. |confirm
		'|from Titanium Vanguard##28838, Stormforged Runeshaper##28836+
	step
		goto 19.2,59.8
		.' Loken has two main abilities to look out for:
		.' The first is that he has an aura that deals nature damage.  The closer you are to him, the less damage it does. _Get as close to him as possible._
		.' The Second ability, he will cast _Lightning Nova_. You will need to move 20 yards away from him to avoid the damage.
		.from Loken##28923
		.get Loken's Tongue |q 29861/1 |only if havequest(29861)
		|confirm
	step
		 goto 19.1,62.8
		.talk Stormherald Eljrrin##56027
		.turnin Diametrically Opposed##29860
		.turnin Whatever it Takes!##29861
		.turnin Clearing the Way##29862
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Northrend Dungeons\\Utgarde Keep: Utgarde Pinnacle (UP) 78-80",[[
	dungeon 524
	description This guide will walk you through the Utgarde Keep: Utgarde Pinnacle dungeon.
	step
		.' For this instance, you will need to either queue up using the Looking For Group feature, or travel by foot.
		.' Click here to travel. |confirm
		.' Click here if you're using the Looking For Group feature. |next "lfg" |confirm
	step
		goto Howling Fjord 57.3,46.7 |n
		.' Enter Utgarde Pinnacle here. |goto Utgarde Pinnacle/2 |noway |c
	step
	label "lfg"
		goto Utgarde Pinnacle/2,45.1,18.1
		.talk Image of Argent Confessor Paletress##56072
		.accept Working at the Source##29864 
	step
		goto 44.0,18.2
		.talk Brigg Smallshanks##30871
		.accept Junk in My Trunk##13131 
		.accept Vengeance Be Mine!##13132 
	step
		.' As you go through the instance look in corners and on ledges for the following:
		.click Golden Goblet##8367
		.click Shiny Bauble##7554 
		.click Untarnished Silver Bar##6457 
		.click Jade Statue##8368 
		|confirm
	step
		map Utgarde Pinnacle/2
		path follow loose;loop off;ants straight
		path	43.0,35.7	34.0,37.5	35.3,68.9
		path	42.4,76.7
		.' Follow this path until you get downstairs. |goto Utgarde Pinnacle |noway |c
	step
		goto Utgarde Pinnacle,33.8,74.2
		.' _Svala Sorrowgrave_ will use the ability _Ritual Preparation_ on a random party member. 3 Ghosts will appear, the DPS needs to kill the Ghosts to free the targeted member.
		.' During Ritual Preparation, she will summon _Ritual of the Sword_, which will crash on the altor onto the trapped party member if you don't free them.
		.from Svala Sorrowgrave##26668 |only if not havequest(29864)
		.kill Svala Sorrowgrave##26668 |q 29864/1 |only if havequest(29864)
		|confirm |only if not havequest(29864)
	step
		goto 46.1,81.5 |n
		.' Go up the stairs. |goto Utgarde Pinnacle/2 |noway|c
	step 
		goto Utgarde Pinnacle/2 61.8,84.1
		.click Stasis Generator##7811
		.' This will trigger an event where 3 out of 5 statues come to life, the third being the actual boss.
		.' _Jormunger_ - leaves poison on the ground and summons non-elite adds.
		.' _Rhino_ - Has a heavy stomp damage and randomly charges victims, leaving a dot.
		.' _Furlbog_ - Casts Chain Lightning and random changes aggro, as well as an AoE Fear.
		.' _Worgen_ -  Uses Mortal Strike on the tank.
		.' When _Gortok Palehoof_ comes to life, he has 3 abilities to look out for:
		.' _Arcing Smash_ Does cone damage wherever he is facing.
		.' _Impale_ leaves a DoT on a random party member.
		.' _Withering Roar_ decreases your maximum health by 500 and stacks.  The longer the fight lasts the harder it will become to heal.
		.from Gortok Palehoof##26687
		|confirm
	step
		goto 68.7,65.1
		.' Aggroing the boss will trigger an event. Ymirjar mobs will come to fight you and you will have to battle them to [69.2,36.5].
		.' The boss will be flying overhead, covering the ground with frost as you move along the path, avoid it.
		.' When you kill Harpooners, they will drop their weapons.
		.click Harpoon##5994
		.' When you get the message _"Skadi the Rutheless is within range of the harpoon launchers!"_ click them to shoot him down.
		.click Harpoon Gun##8245
		.' You will need to shoot him 3 times before he comes down.
		.' When _Skadi the Ruthless_ jumps down, _Taunt_ him immediately if you're the tank.
		.' Tanks will also need to kite him around when he uses _Whirlwind_.
		.' Skadi will randomly throw _Poisoned Spears_ at random party memebers.  If possible, it should be dispelled immediately (Poison).
		.from Skadi the Ruthless##26693
		|confirm
	step
		goto 60.3,37.9 |n
		.' Go down the steps. |goto Utgarde Pinnacle |noway|c
	step
		goto Utgarde Pinnacle,48.7,44.3
		.' Go up the ramp here. |goto Utgarde Pinnacle |noway|c
	step
		goto Utgarde Pinnacle/2 42.6,53.5
		.' At 80% and 30%, _King Ymiron_ will use _Screams of the Dead_ Stunning the entire party for 8 seconds.
		.' He will often use _Dark Slash_ damaging targets with shadow damage, dealing out half the targets current health.
		.' He will use _Bane_ which will trigger when he is hit with the buff, damaging the group with AoE Damage.
		.' He also places _Fetid Rot_ on random party members, which should be dispelled immediately if possible (Disease).
		.from King Ymiron##26861 |only if not havequest(13132)
		.kill King Ymiron##26861 |q 13132/1 |only if havequest(13132)
		|confirm |only if not havequest(13132)
	step
		'Make sure you have collected the following:
		.click Golden Goblet##8367
		.get 5 Untarnished Silver Bar |q 13131/1
		.click Shiny Bauble##7554 
		.get 3 Shiny Bauble |q 13131/2
		.click Untarnished Silver Bar##6457 
		.get 2 Golden Goblet |q 13131/3
		.click Jade Statue##8368 
		.get Jade Statue |q 13131/4
		|only if havequest(13131)
	step
		goto 45.1,18.1
		.talk Image of Argent Confessor Paletress##56072
		.turnin Working at the Source##29864
	step
		goto 44.0,18.2
		.talk Brigg Smallshanks##30871
		.turnin Junk in My Trunk##13131
		.turnin Vengeance Be Mine!##13132
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Northrend Dungeons\\Forge of Souls (FoS) 80",[[
	dungeon 601
	description This guide will walk you through the Forge of Souls dungeon.
	step
		.' For this instance, you will need to either queue up using the Looking For Group feature, or travel by foot.
		.' Click here to travel. |confirm
		.' Click here if you're using the Looking For Group feature. |next "lfg" |confirm
	step
		goto Dalaran 52.3,23.0
		.talk Dark Ranger Vorel##37780
		.accept Inside the Frozen Citadel##24506 
	step
		goto Icecrown 52.4,89.3 |n
		.' Enter this doorway here. It is up high on the Icecrown Citadel, at the end of a long bridge. |goto Icecrown 52.4,89.3 <5 |noway|c
	step
		goto Icecrown 54.9,89.8 |n
		.' Enter the Forge of Souls. |goto The Forge of Souls |noway |c
	step
	label "lfg"
		goto The Forge of Souls 64.0,91.2
		.talk Lady Sylvanas Windrunner##37596
		.turnin Inside the Frozen Citadel##24506
	step
		goto The Forge of Souls 64.0,91.2
		.talk Lady Sylvanas Windrunner##37596
		.accept Echoes of Tortured Souls##24511 
	step
		map The Forge of Souls
		path follow loose; loop off
		path	61.9,83.5	69.7,73.7	69.3,63.8
		path	58.9,60.2	54.2,62.8	48.9,56.6
		path	43.6,53.0
		.' Follow this path and kill any enemies you come in contact with. |goto 43.6,53.0 <5 |noway|c
	step
		goto 43.3,49.8
		.' _Bronjahm's_ Has two phases.
		.' He casts _Shadow Bolt_ if you're out of range.
		.' He uses an ability called _Corrupt Soul_ which after 4 seconds creates an orb.  If it reaches Bronjahm, it will heal him.
		.' When he reaches 30% health, he'll cast _Soulstorm_. You'll want to move into melee range or you will take damage from it.
		.' Once he's in the _Soulstorm_ phase, he'll cast _Fear_ on a random target.
		.from Bronjahm##36497 |only if not havequest(36497)
		.kill Bronjahm##36497 |q 24511/1 |only if havequest(36497)
		|confirm |only if not havequest(36497)
	step
		map The Forge of Souls
		path follow loose; loop off
		path	42.9,45.1	48.3,41.8	43.9,31.0
		path	49.4,19.4
		.' Follow this path and kill any enemies you come in contact with. |goto 49.4,19.4 <5 |noway |c
	step
		goto The Forge of Souls 45.6,14.9
		.' The _Devourer of Souls_ will use an ability called _Phantom Blast_ which should be interrupted.
		.' He will put a debuff on a party member called _Mirrored Soul_ which dishes out a percentage of the damage done to him to the target.
		.' He will randomly leap at a party member with _Well of Souls_ which dishes out shadow damage to any who stand in it's radius.
		.' He will occasionally cast _Wailing Souls_, shooting out a pink beam.  Stay out of it.
		.from Deourer of Souls##36502 |only if not havequest(24511)
		.kill Deourer of Souls##36502 |q 24511/2 |only if havequest(24511)
		|confirm |only if not havequest(24511)
	step
		goto 44.0,15.3
		.talk Lady Sylvanas Windrunner##38161
		.turnin Echoes of Tortured Souls##24511
	step
		goto 44.0,15.3
		.talk Lady Sylvanas Windrunner##38161
		.accept The Pit of Saron##24682
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Northrend Dungeons\\Pit of Saron (PoS) 80",[[
	dungeon 602
	description This guide will walk you through the Pit of Saron dungeon.
	step
		.' For this instance, you will need to either queue up using the Looking For Group feature, or travel by foot.
		.' Click here to travel. |confirm
		.' Click here if you're using the Looking For Group feature. |next "lfg" |confirm
	step
		.' Enter this doorway here. It is up high on the Icecrown Citadel, at the end of a long bridge. |goto Icecrown 52.4,89.3 <5 |c
	step
		goto Icecrown,54.8,91.8 |n
		.' Enter the swirling portal to the Pit of Saron. |goto Pit of Saron |noway|c
	step
	label "lfg"
		goto Pit of Saron,40.8,79.8
		.talk Lady Sylvanas Windrunner##36990
		.turnin The Pit of Saron##24682
	step
		goto Pit of Saron,40.8,79.8
		.talk Lady Sylvanas Windrunner##36990
		.accept The Path to the Citadel##24507
	step
		map Pit of Saron
		path follow strict;loop off;ants straight
		path	48.8,69.4	53.5,65.3	56.6,65.7
		path	55.8,62.7	58.4,61.3	63.5,59.3
		path	62.2,55.0	63.0,49.5	59.9,49.7
		.click Ball and Chain##181
		.' 15 Horde Slaves Freed. |q 24507/1
		|only if havequest(24507)
	step
		map Pit of Saron
		path follow loose; loop off
		path	43.9,70.5	50.1,67.6	54.6,63.0
		path	64.2,55.0
		.' Follow this path, killing any mob you come in contact with. |goto 64.2,55.0 <5 |noway |c
		|only if not havequest(24507)
	step
		goto 66.4,55.5
		.' _Forgemaster Garfrost_
		.' _Chilling Wave_ is an attack that he shoots at a party member, dealing AoE Damage to anyone in it's radius.
		.'	_Deep Freeze_ is randomly casted at party members, slowing their movement and inflicting frost damage.
		.' If you stand within 40 yards of him you will get a debuff called _Permafrost_, increasing frost damage taken. This effect stacks.
		.' He will occassionwally _Throw Sarnoite_ at a random party target.
		.from Forgemaster Garfrost##36494 |only if not havequest(24507)
		.kill Forgemaster Garfrost##36494 |q 24507/2
		|confirm |only if not havequest(24507)
	step
		goto 65.6,55.0
		.talk Gorkun Ironskull##37592
		.turnin The Path to the Citadel##24507
	step
		goto 65.6,55.0
		.talk Gorkun Ironskull##37592
		.accept Deliverance from the Pit##24712
	step
		goto 49.4,44.8
		.from Plagueborn Horror##36879+ 
		.' Clear them, then click here to continue. |confirm
	step
		goto 47.4,41.5
		.' _Ick_ will cast _Explosive Barrage_ randomly. Players will need to move continueously to avoid damage.
		.' When Ick uses _Poison Nova_, run away from him.
		.' Ick will randomly use _Pursuit_ on a target during the fight. You will need to run away from him if you're the target.
		.' _Krick_ will use _Shadow Bolt_ on random party members.
		.' He tosses _Toxis Waste_ on the ground, that you shouldn't stand in.
		.from Ick##36476
		|confirm
	step
		map Pit of Saron
		path follow strict;loop;ants straight
		path	50.9,36.6	49.9,33.3	52.8,30.5
		path	56.7,32.0
		.' There will be monsters that need to be cleared at each waypoint on the map.
		.' Make sure that the _casters die first_.
		.' Click here once you have cleared them. |confirm
	step
		goto 60.0,31.0
		.' Once you get to this point, you will have reached a tunnel entrace.
		.' Let your tank go in before anyone else.
		.' Collect the mobs as you go along.
		.' Stop at [60.9,19.8] to clear the mobs.
		.' Avoid blue circles that appear on the ground.
		.' Go to  [47.5,19.4] next.
		|confirm
	step
		.' _Scourgelord Tyrannus_
		.' He will be flying high up in the air. Enter the room to start the event.
		.' _Make sure you DO NO HIT HIM_ before he dismounts.  He may bug if you do so.
		.' Randomly through the fight, he will mark a party member with _Mark of Rimefang_. That member will have to move away from the rest of the group.
		.' He will randomly place _Overlord's Brand_ on a DPS in the group.  All damage that DPS does is transfered to the Tank, so don't dps if you get this debuff.
		.' When he _Roars and Swells with Dark Might_ his movement speed will be slowed.  You should kite him through this until it wears off.
		.from Scourgelord Tyrannus##36658 |only if not havequest(24712)
		.kill Scourgelord Tyrannus##36658 |q 24712/1 |only if havequest(24712)
		|confirm |only if not havequest(24712)
	step
		goto Pit of Saron 48.2,18.9
		.talk Lady Sylvanas Windrunner##36990 |tip you will have to wait for her to show up.
		.turnin Deliverance from the Pit##24712
	step
		goto Pit of Saron 48.2,18.9
		.talk Lady Sylvanas Windrunner##36990
		.accept Frostmourne##24713
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Northrend Dungeons\\Halls of Reflection (HoR) 80",[[
	dungeon 603
	description This guide will walk you through the Halls of Reflection dungeon.
	step
		.' For this instance, you will need to either queue up using the Looking For Group feature, or travel by foot.
		.' Click here to travel. |confirm
		.' Click here if you're using the Looking For Group feature. |next "lfg" |confirm
	step
		.' Enter this doorway here. It is up high on the Icecrown Citadel, at the end of a long bridge. |goto Icecrown 52.4,89.3 <5 |c
	step
		goto Icecrown,55.4,90.9 |n
		.' Enter the swirling portal to the Halls of Reflection. |goto Halls of Reflection |noway|c
	label "lfg"
	step
		goto Halls of Reflection 45.3,76.8
		.talk Lady Sylvanas Windrunner##37223
		.turnin Frostmourne##24713 |only if havequest(24713)
	step
		goto 36.2,76.3
		.' For this trash, have your group Line of sight at the wall here for casters.
		.' Groups of enemies will attack in waves.
		.' Kill priority for these groups should be Ghostly Priests, Shadowy Mercenary, Phantom Mage, Tortured Rifleman then Spectral Footman when applicable.
		.' At wave 5, you will face _Falric_. Click here to move onto his strategy. |confirm
		'|from Ghostly Priest##38175, Shadowy Mercenary##38177, Phantom Mage##38172, Tortured Rifleman##38176, Spectral Footman##38173
	step
		.' Falric uses the ability _Defiling Horror_ which is a fear effect that damages you as well.
		.' Every time he fears, he gives players a stack of _Hopelessness_, which reduces the healing received.  The longer the fight, the harder healing will become.
		.' He will cast _Impending Despair_, which will stun you for 6 seconds if not dispelled within 6 seconds. It is a magic effect.
		.' He will use _Quivering Strike_ on the tank, dropping their dodge by 20%. The strike is unavoidable.
		.from Falric##38112
		|confirm
	step
		.' After _Falric_ is defeated, the waves will continue.
		.' Again, kill priority for these groups should be Ghostly Priests, Shadowy Mercenary, Phantom Mage, Tortured Rifleman then Spectral Footman when applicable.
		.' At wave 10, you will face _Marwyn_. Click here to move onto his strategy. |confirm
		'|from Ghostly Priest##38175, Shadowy Mercenary##38177, Phantom Mage##38172, Tortured Rifleman##38176, Spectral Footman##38173
	step
		.' Marwyn has the ability _Corrupted Flesh_, reducing the groups maximum health by 25% for 8 seconds.
		.' Everytime he uses Corrupted Flesh, he will also use _Shared Suffering_ which deals out massive shadow damage.  It should be dispelled, but note that when it is, it splits the damage between the group. Be sure everyone is at a reasonable amount of health before dispelling.
		.' Throughout the fight, he will toss random _Well of Corruptions_ on the ground, which will increase the shadow damage you take.  Simply move out of them.
		.from Marwyn##38113
		|confirm
	step
		goto 26.1,51.1
		.from Frostsworn General##36723
		.' During the fight, he will spawn mirror images of your group.
		.' Be sure not to stand close as you kill them. They explode when they are killed.
		|confirm
	step
		goto 12.9,23.2
		.talk Lady Sylvanas Windrunner##37554
		.accept Wrath of the Lich King##24802 |only if not completedq(24802) and not havequest(24802) and completedq(24713)
		.' Find Sylvanas Windrunner. |q 24802/1 |only if havequest(24802)
		.' When your group is ready, talk to Lady Sylvanas and tell her Let's go! Click to proceed.
		|confirm
	step
		goto 27.5,27.5
		.' Fight the undead as The Lich King summons them.
		.' Generally, he will send _Raging Ghouls_ followed by _Risen Witch Doctors_ and _Lumbering Abomination_
		.' Kill _Risen Witch Doctors_ first, as they will damage your group more than any of the others.
		.' Face _Lumbering Abominations_ away from the group.
		.' At each of the waypoints, there will be more and more mobs. You will need to DPS the enemies down fast, or the Lich King will kill you.
		.' next [40.5,36.1]
		.' next [51.1,44.9]
		.' next [66.6,65.0]
		.' next [77.3,77.6]
		.' Fight your way to the ship |goto 77.3,77.6 |only if not havequest(24802)
		.' Escape the Lich King |q 24802/2 |only if havequest(24802)
	step
		goto 75.9,76.8
		.talk Lady Sylvanas Windrunner##37554
		.turnin Wrath of the Lich King##24802
]])

------------------------------------------------------------------------------------------------------------------------------------
-- Cataclysm Dungeons --
------------------------------------------------------------------------------------------------------------------------------------

ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Cataclysm Dungeons\\Abyssal Maw: Throne of the Tides (TotT) 80-82",[[
	dungeon 767
	description This guide will walk you through the Abyssal Maw: Throne of the Tides dungeon.
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		.' In order to get the quests for this instance, you will need to have completed the _Defending the Rift_ quest.
		.' Refer to our Vashj'ir Leveling guide.
		|confirm
	step
		goto Abyssal Depths,70.7,29.2
		.' You will be sucked down into the whirlpool.
		|confirm
	step
	label	"start"
		goto Throne of the Tides,49.9,90.6
		.talk Legionnaire Nezgrim##50272
		.accept Rescue the Earthspeaker!##28833 
		.accept Sins of the Sea Witch##28843 
	step
		goto 50.0,39.4 |n 
		.' Enter this elevator room. |goto Throne of the Tides/2 |noway |c
	step
		goto 50.1,84.4
		.' Ride the Elevator up.
		.' When it's at the bottom you will have to jump to get on it.
		|confirm
	step
		.' Run to the other side of the tunnel.
		.' Combat won't end so you will need to fight you way through the waves of monsters. |goto 50.5,52.1 <5 |c
	step
		goto 50.6,21.4
		.' _Lady Naz'jar_
		.' This boss will use 4 abilities.
		.' She will cast _Summon Geyser_ on the ground under a random players feet. Move out and away from the blue circle on the ground.
		.' She will often cast _Shock Blast_ is a spell that can be interrupted.
		.' She will cast _Fungal Spores_ on the ground that will leave a damage over time effect on any players caught with it.
		.' At 66% and 33% she will cast _Waterspout_ which makes her immune to damage.  At this point she will summon 3 mobs, 2 casters and 1 melee. Control the casters and kill the melee.
		.kill Lady Naz'jar##40586 |q 28843/1 |only if havequest(28843)
		.from Lady Naz'jar##40586 |only if not havequest(28843)
		|confirm |only if not havequest(28843)
		|only if not heroic_dung()
	step
		goto 50.6,21.4
		.' _Lady Naz'jar_
		.' This boss will use 4 abilities.
		.' She will cast _Summon Geyser_ on the ground under a random players feet. Move out and away from the blue circle on the ground.
		.' She will often cast _Shock Blast_ is a spell that can be interrupted.
		.' She will cast _Fungal Spores_ on the ground that will leave a damage over time effect on any players caught with it.
		.' At 66% and 33% she will cast _Waterspout_ which makes her immune to damage.  At this point she will summon 3 mobs, 2 casters and 1 melee. Control the casters and kill the melee.
		.' While she is in the _Waterspout_, she will send out _Water Vortex's_ which will move from Lady Naz'jar, towards a party member. These will suck anyone in that is close enough while stunning and causing damage to them for 5 seconds.
		.kill Lady Naz'jar##40586 |q 28843/1 |only if havequest(28843)
		.from Lady Naz'jar##40586 |only if not havequest(28843)
		|confirm |only if not havequest(28843)
		|only if heroic_dung()
	step
		goto Throne of the Tides/2 50.8,33.1
		.click Throne of Tides Defense System##7147
		|confirm
	step
		goto 50.6,41.8
		.' _Commander Ulthok_
		.' He uses 4 main abilities.
		.' _Squeeze_ will be used on a random party member, restricting them from any actions. 
		.' He will use _Dark Fissure_ where the tank is standing.  It's important to move away from him when he does this as this attack may one-shot you.
		.' Note that when he uses _Dark Fissure_ it leaves a circle of shadow on the ground that slowly expands the longer the fight carries on.
		.' He casts _Curse of Fatigue_ at a random target, slowing their movement and haste by 50%
		.' He will Enrage increasing all damage done by 50%.
		.from Commander Ulthok##40765
		|confirm
	step
		goto 51.2,52.7 |n
		.clicknpc Throne of the Tides Teleporter##51391
		.' Teleport to the first floor. |goto Throne of the Tides |noway |c
	step
		map Throne of the Tides
		path follow loose; loop off; ants straight
		path	57.3,44.6	61.9,43.7	66.2,38.6
		path	67.1,28.8
		.' Kill the trash at these points above. |goto 67.1,28.8 <5 |noway |c
	step
		goto Throne of the Tides 67.2,20.4
		.' _Erunak Stonespeaker & Mindbender Ghur'sha_
		.' This fight will have 2 phases:
		.' Phase 1:
		.' Erunak will cast _Earth Shards_ at a random party member. It will cause damage in a line, so move out of it.
		.' He will cast _Lava Bolt_ at a random target.  This spell can be interrupted.
		.' He will use _Magma Splash_ in a cone in front of him.
		.' Phase 2:
		.' _Mindbender Ghur'sha_ will put _Mind Fog_ on the ground, rendering you unable to cast or attack, as well as causing shadow damage.
		.' He will randomly _Enslave_ a party member. You will have to beat the member down until they reach 50% helath.
		.' Note that if you don't free the player, they will die. |only if heroic_dung()
		.' The most important ability to watch out for is _Absorb Magic_. All spells cast at him while this ability is up will heal him.
		.from Mindbender Ghur'sha##40788
		.' Rescue Erunak Stonespeaker |q 28833/1 |only if havequest(26193)
		|confirm |only if not havequest(28833)
	step
		goto 67.2,20.4
		.talk Erunak Stonespeaker##40825
		.turnin Rescue the Earthspeaker!##28833
	step
		map Throne of the Tides
		path follow loose; loop off
		path	44.3,44.5	37.1,43.5	33.0,37.3
		path	32.6,29.6
		.' As you run through this hallway, kill the Elite Water mobs. Once you ahve killed all the Elites, you can continue through the gate. 
		.' Lots of non-elite mobs will also appear and start fighting here. 
		.' Run through the gate after it opens. |goto 32.6,29.6 <5 |noway |c
	step
		goto 32.5,22.5
		.talk Neptulon##40792
		.' Let him know you're ready.
		|confirm
	step
		.' Phase 1:
		.' _Deep Murloc Invaders_ will spawn in groups. Often, and should be AoE'd down.
		.' There will be 3 _Vicious Mindlashers_ that spawn, and need to be tanked.
		.' There will be 1 _Unyielding Behemoth_ that spawns and needs to be tanked.
		.' After the 3 Vicious Mindlashers and Unyielding Behemoth are killed, 3 _Faceless Sappers_ will spawn.
		..' Phase 2:
		..' Kill the _Faceless Sappers_ 1 at a time, focusing them down quickly.
		..' The tank should look for _Blight Beasts_, kiting them around the room as they spawn.
		..' Once the 3 Faceless Sappers are defeated, Ozumat will appear at [36.4,17.4].
		...' Phase 3:
		...' You will gain a buff that will increase your damage, healing, health and size.
		...' Kill any _Blight Beasts_ that have spawned.
		...' Burn down _Ozumat_ as quickly as possible, he will lay _Blight of Ozumat_ on the ground which deals 200 shadow damage per second and stacks 200 times.
		'|from 3 Faceless Sapper##44752, Vicious Mindlasher##44715, Unyielding Behemoth##44648, Blight Beast##44841, Ozumat##44566
		|confirm
	step
		goto Throne of the Tides,49.9,90.6
		.talk Legionnaire Nezgrim##50272
		.turnin Sins of the Sea Witch##28843
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Cataclysm Dungeons\\Blackrock Caverns (BRC) 80-82",[[
	dungeon 753
	description This guide will walk you through Blackrock Caverns dungeon.
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm
		.' I will use the Dungeon Finder |confirm |next "start"
	step
		.' Go into Blackrock Mountain here. |goto Burning Steppes 21.0,38.0 <5 |c
	step
		.' Follow the path through this tunnel. |goto 24.6,29.9 <5 |c
	step
		goto 27.5,27.9 |n
		.' Enter Blackrock Caverns here. |goto Blackrock Caverns |noway|c
	step
	label	"start"
		goto Blackrock Caverns,33.1,66.0
		.talk Finkle Einhorn##49476
		.accept To the Chamber of Incineration!##28735
	step
		.' Clear the trash at these coordinates.
		.' _Rom'ogg Bonecrusher_ patrols nearby, if you aggro him, he will do a shout attracting the nearby groups.
		'|model 39665
		'|goto 49.3,74.1
		'|goto 51.1,70.3
		.' Click here when you've cleared the groups. |confirm
	step
		.' _Rom'ogg Bonecrusher_
		.' Pull _Rom'ogg Bonecrusher_ when he's at [50.0,67.3].
		.' For this fight, he will use _Call for Help_ when you engage  him. Any mob nearby that you didnt kill will come to his aid.
		.' He will often use _Quake_, which can be avoid by moving to the side when you see him casting it.
		.' He will also summon _Angered Earths_ each time he uses Quake, which need to be picked up by your tank. |only if heroic_dung()
		.' At 66% and 33% he will use _Chains of Woe_ followed by _The Skullcracker_.
		.' Players will need to _kill the Chains of Woe_, then move away from the boss in order to avoid massive. It takes 12 seconds for him to wind up for the damage. |only if not heroic_dung()
		.' Players will need to _kill the Chains of Woe_, then move away from the boss in order to avoid massive. It takes 8 seconds for him to wind up for the damage. |only if heroic_dung()
		.' He will also use _Wounding Strike_ on the tank, reducing healing received by 25%.
		.from Rom'ogg Bonecrusher##39665 |only if not havequest(28735)
		.kill Rom'ogg Bonecrusher##39665 |q 28735/1 |only if havequest(28735)
		|confirm |only if not havequest(28735)
	step
		'Click the Quest Complete Box at the top right of your screen
		.turnin To the Chamber of Incineration!##28735
	step
		map Blackrock Caverns
		path follow strict;loop off;ants straight
		path	50.1,55.2	50.1,39.2	53.9,21.5
		.' Follow this path. |goto 53.9,21.5 <5 |noway |c
		.' Click the Quest Complete Box at the top right of your screen.
		.accept What Is This Place?##28737
	step
		goto 54.0,20.4
		.' There will be an _Evolved Twilight Zealot_ patrolling here. 
		.' Interrupt _Shadow Stike_ whenever he uses it.
		.from Evolved Twilight Zealot##39987
		|confirm
	step
		goto 51.9,20.0 |n
		.' Jump down the ledge here. |goto Blackrock Caverns/2 |noway|c
	step
		goto 30.3,16.6
		.' There will be a group of 5 patrolling the hallway here.
		.' Once they are defeated, there will be another _Evolved Twilight Zealot_ on the ramp at [29.6,14]
		.' Interrupt _Shadow Stike_ whenever he uses it.
		.from Evolved Twilight Zealot##39987
		|confirm
	step
		goto 27.4,16.6
		.' _Corla, Herald of Twilight_
		.' You will see two beams on each side of Corla. You should have _Ranged DPS_ or _Healers_ step into the beams during the encounter. |only if not heroic_dung()
		.' You will see three beams on each side of Corla. You should have _Ranged DPS_ or _Healers_ step into the beams during the encounter. |only if heroic_dung()
		.' This will give whoever interrupts the beams stacks of _Evolution_, when you reach 70, step out of the beams.  You will need to move back in when your stack falls back off.
		.' Failing to interrupt the beams, or to move out when you reach 70 will result in _Twilight Evolution_, which will enrage either a player or the minions into attack your party members, and likely wipe you.
		.' Corla, Herald of Twilight will cast _Dark Command_ on a random party member. It will be important to interrupt this, as it can ruin the _Evolution_ rotations.
		.from Corla, Herald of Twilight##39679 |only if not havequest(28737)
		.kill Corla, Herald of Twilight##39679 |q 28737/1 |only if havequest(28737)
		|confirm |only if not havequest(28737)
	step
		'Click the Quest Complete Box at the top right of your screen.
		.turnin What Is This Place?##28737
	step
		map Blackrock Caverns/2
		path follow strict;loop off;ants straight
		path	34.2,13.3	37.5,13.2	39.2,16.0
		.' Hug the wall, following the way points.
		.' There will be trash at the last waypoint.
		.' Follow the ramp down and click here to proceed. |confirm
	step
		goto 43.5,57.7
		.accept The Twilight Forge##28738
		.' There will be 2 fire elementals patrolling around the room with _Karsh Steelbender_.
		.from Conflagration##39994
		.' Pull one at a time back to the ramp.
		|confirm
	step
		goto 45.6,65.6
		.' _Karsh Steelbender_
		.' For this fight, there will be a large pillar of flame at the center of the room.
		.' The tank will need to run through the center, giving the boss a _Superheated Quicksilver Armor_ debuff, increasing the damage the boss takes.
		.' Each time you drag Karsh through the flames, 3 _Bound Flames_ will spawn, and attack nearby players. |only if heroic_dung()
		.' When the debuff has 5 seconds left, the tank will have to _Run_ through the pillar of flame again, renewing and adding another debuff to the boss.
		.' If you let _Superheated Quicksilver Armor_ fall off the boss,  he will spawn adds, as well as his _Quicksilver Armor_ buff.
		.from Karsh Steelbender##39698 |only if not havequest(28738)
		.kill Karsh Steelbender##39698 |q 28738/1 |only if havequest(28738)
		|confirm |only if not havequest(28738)
		|only if not heroic_dung()
	step
		'Click the Quest Complete Box in the top right of your screen.
		.turnin The Twilight Forge##28738
	step
		map Blackrock Caverns/2
		path follow loose;loop off;ants straight
		path	53.5,67.2	55.7,68.3	58.5,64.9
		path	61.6,71.8
		.' Kill trash at the waypoints.
		.' The second group should be 2 Defiled Earth Ragers. Everyone in the group needs to stand close, as they do an AoE that does more damage the further away you are.
		.' Be sure you hug the wall on the left up until the last waypoint.
		|confirm
	step
		goto 66.1,71.6
		.' Click the Quest Complete Box at the top right of your screen
		..accept Do My Eyes Deceive Me?##28740
	step
		goto 66.3,77.5
		.' There will be 3 Corehound Pups. You can pull them without pulling the boss behind them.
		.from Lucky##40008 |n
		.from Buster##40013 |n
		.from Spot##40011 |n
		|confirm
		|only if not heroic_dung()
	step
		.' _Beauty_
		.' You will need to use crowd control on _Lucky, Buster and Spot_ or kill them before engaging the boss. |only if heroic_dung()
		.' _DO NOT_ kiill _Runty_, or the boss will enrage and deal incredible damage. |only if heroic_dung()
		.' She will randomly cast _Terrifying Roar_, fearing the entire party. Tremor Totem and Fear Ward can be used to avoid this.
		.' She will _Berserker Charge_ an enemy, knocking them back.
		.' She will also use _Flamebreak_ on melee knocking them back.
		.' She casts _Magma Spit_ on party members, causing AoE damage when it is dispelled.
		.from Beauty##39700 |only if not havequest(28740)
		|confirm |only if not havequest(28740)
		.kill Beauty##39700 |q 28740/1 |only if havequest(28740)
		|only if not heroic_dung()
	step
		.' _Beauty_
		.' You will need to use crowd control on _Lucky, Buster and Spot_ or kill them before engaging the boss.
		.' _DO NOT_ kill _Runty_, or the boss will enrage and deal incredible damage.
		.' She will randomly cast _Terrifying Roar_, fearing the entire party. Tremor Totem and Fear Ward can be used to avoid this.
		.' She will _Berserker Charge_ an enemy, knocking them back.
		.' She will also use _Flamebreak_ on melee knocking them back.
		.' She casts _Magma Spit_ on party members, causing AoE damage when it is dispelled.
		.from Beauty##39700 |only if not havequest(28740)
		.kill Beauty |q 28740/1 |only if havequest(28740)
		|confirm |only if not havequest(28740)
		|only if heroic_dung()
	step
		'Click the Quest Complete Box in the top right of your screen.
		.turnin Do My Eyes Deceive Me?##28740
	step
		goto 69.6,72.2
		.' Wait here for the elemental patrol
		|confirm
	step
		goto 70.0,63.4
		.' Click the Complete Quest Box in the top right of your screen
		.accept Ascendant Lord Obsidius##28741
		|only if not completedq(28741) and not havequest(28741)
	step
		goto 68.8,56.0
		.' _Ascendant Lord Obsidius_
		.' When you get within aggro radius, he will be attacked. Raz will be killed then it will be time to face the boss.
		.' Ascendant Lord Obsidius will split into 3 forms.
		.' During the fight, he will switch bodies with one of the other two clones and you will have to switch dps.
		.from Ascendant Lord Obsidius##39705
		|confirm
		|only if not havequest(28741)or not heroic_dung()
	step
		goto 68.8,56.0
		.' _Ascendant Lord Obsidius_
		.' When you get within aggro radius, he will be attacked. Raz will be killed then it will be time to face the boss.
		.' Ascendant Lord Obsidius will split into 3 forms.
		.' There will be a big one and two little ones. The big one needs to be tanked.
		.' The other two need to be kited by a ranged dps. |only if heroic_dung()
		.' During the fight, he will switch bodies with one of the other two clones and you will have to switch dps.
		.from Ascendant Lord Obsidius##39705 |only if not havequest(28741)
		.kill Ascendant Lord Obsidius##39705 |q 28741/1 |only if havequest(28741)
	step
		goto 68.8,56.0
		.talk Finkle Einhorn##49476
		..turnin Ascendant Lord Obsidius##28741
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Cataclysm Dungeons\\The Stonecore (SC) 82-84",[[
	dungeon 768
	description This guide will walk you through the Stonecore dungeon.
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
		goto Deepholm 47.8,51.9 |n
		.' Enter The Stonecore here. |goto The Stonecore |noway |c
	step
	label	"start"
		goto The Stonecore 53.7,94.9
		.talk Earthwarden Yrsa##50048
		..accept Twilight Documents##28815
	step
		goto The Stonecore 54.6,88.4
		.from Stonecore Earthshaper##43537+
		.' Make sure to kill him first, if not killed fast enough, he will transform and do big group damage.
		.' You will have to fight him in each group as you continue forward.
		|confirm
	step
		goto 63.5,65.2
		.click Twilight Documents##183
		.get Twilight Documents |q 28815/1
		|only if havequest(28815)
	step
		'Click the Quest Complete Box in the top right of your screen
		..turnin Twilight Documents##28815
	step
		'Click the Quest Complete Box in the top right of your screen
		..accept Followers and Leaders##28814
	step
		goto The Stonecore 62.4,61.2
		.from Corborus##43438
		.' Corborus has 2 phases to his fight. 
		.' _Phase 1_ Corborus will attack the Tank and use _Crystal Barrage_. These crystals will do damage to anyone standing in them. |tip In horoic mode, these will also spawn Crystal Shards to attack. Make sure to AoE these down quickly.
		.' _Crystal Barrage_ will spawn adds that need to be picked up quickly. |only if heroic_dung()
		.' Additionally, he will randomly use _Dampening Wave_, which will reduce the healing the party takes, as well as dealing damage. Remove this from the tank as soon as possible. (Magic Effect)
		.' _Phase 2_ Corborus will burrow. During this time avoid the ares with rubble when he is underground, he will jump out of these areas and hurt anyone standing in it.
		|confirm
		|only if not heroic_dung()
	step
		goto 37.7,44.9
		.from Slabhide##43214
		.' This is a pretty basic fight. Tank the boss in the middle of the room, and face him away from group.
		.' He will spawn _Lava Fissure_ under some players feet, move from this to not be hurt by fire. |tip In heroice mode, this will leave a pool of lava.
		.' He will drops _Stalactite's_ from the ceiling, move fromt he shadow to not get hurt.
		.' After the Stalactite's, cast _Crystal Storm_, move behind the rocks out of his line of site to avoid damage. |only if heroic_dung()
		|confirm
	step
		goto 38.7,20.6
		.' As you run through this room, you will want to kill the _Stonecore Sentrys_, they will aggro big groups if they are close enough.
		.' _ Stonecore Bruisers_ Patrol this area. When you can, kill them away from groups. |tip If you stay to the right side, you will not have to kill groups on the left side.
		'|from Stonecore Bruiser##42692+, Stonecore Sentry##42695+
		|confirm
	step
		goto 47.7,20.0
		.' _Ozruk_
		.' Face Ozruk away from the group. He will use _Ground Slam_ that everyone, including the tank need to avoid. This causes massive damage.
		.' After Ground Slam, he will use _Rupture_, which will cause 3 lines to appear from the ground. They will cause a pillar of spikes to shoot up and should be avoided at all costs. |only if heroic_dung()
		.' Ozruk will cast _Shatter_ shortly after Ground slam. Run 15 yards away from him or you will take damage up to 45k. |tip In heroic this will cause up to 200k damage.
		.' He will cast _Paralyze_, which needs to be dispelled.  You can also cast a DoT when Ozruk has_Elementium Bulwark_ up, or simply melee him keeping the _Elementium Spike Shield_ debuff on you at all times to breka the effect. |only if heroic_dung()
		.from Ozruk##42188
		|confirm
	step
		goto 57.64,38.24
		.' There are 2 stages to this fight.
		.' _Phase One_ She will need to be tanked and moved when she creates a _Gravity Well_ (purple circle with that deals shadow damage).
		.' Gravity Well will shrink as it kills units, disappearing after it kills 4 units.
		.' During this phase, boss will need to be tanked on the left of the Gravity Well, so the mobs will run in and die.
		.' She will also use an ability called _Force Grip_ which deals massive damage to the tank and should be interrupted each time it is used. |only if heroic_dung()
		.' _Phase Two_ She will float up to her altar and Tank will need to get aggro on all the _Devout Followers_ that run in.
		.' She will use _Seismic Shard_, which throws a huge rock at a random party member. More often than not it will kill that party member, so be on the look out for a shadow on the ground. |only if heroic_dung()
		.from High Priestess Azil##42333 |only if not havequest(28814)
		.kill High Priestess Azil##42333 |q 28814/1 |only if havequest(28814)
		.kill 101 Devout Follower##42428 |q 28814/2 |only if havequest(28814)
		|confirm |only if not havequest(28814)
	step
		.' You can either run to the beginning of the dungeon to turn in your quests.
		.' Or
		.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
		|confirm
	step
		goto 53.6,95.0
		.talk Earthwarden Yrsa##50048
		..turnin Followers and Leaders##28814
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Cataclysm Dungeons\\Vortex Pinnacle (VP) 82-84",[[
	dungeon 769
	description This guide will walk you through the Vortex Pinnacle dungeon.
	author support@zygorguides.com		
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always |next "entrance"
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Uldum 76.7,84.4 |n
		.' Fly up to the floating structures.
		.' Go through the pink portal to the Vortex Pinnacle |goto The Vortex Pinnacle |noway |c
	step
	label	"start"
		goto The Vortex Pinnacle,54.4,16.6
		.talk Itesh##49943
		..accept A Long Way from Home##28779 
		..accept Vengeance for Orsis##28760 
	step
		goto 55,44.6
		.' _Grand Vizier Ertan_
		.' When engaged, she will summon whirlwinds at the outside of the room.
		.' Move in towards her to avoid them for the duration of the fight.
		.' As the fight progresses, Grand Vizier Ertan will pull the whirlwinds to form a wall around her.  _Move outward, away from her, avoiding the whirlwinds!_
		.' If you're hit by the whirlwinds you will receive a debuff, decreasing movement, casting and attack speed as well as take nature damage.
		.from Grand Vizier Ertan##43878
		.get Grand Vizier Etran's Heart##65660 |q 28779/1 |only if havequest(28779)
		|confirm |only if not havequest(28779)
		|only if not heroic_dung()
	step
		goto 55,44.6
		.' _Grand Vizier Ertan_
		.' When engaged, she will summon whirlwinds at the outside of the room.
		.' Move in towards her to avoid them for the duration of the fight.
		.' As the fight progresses, Grand Vizier Ertan will pull the whirlwinds to form a wall around her.  _Move outward, away from her, avoiding the whirlwinds!_
		.' If you're hit by the whirlwinds you will receive a debuff, decreasing movement, casting and attack speed as well as take nature damage.
		.from Grand Vizier Ertan##43878
		.get Grand Vizier Etran's Heart##65660 |q 28779/1 |only if havequest(28779)
		|confirm |only if not havequest(28779)
		|only if heroic_dung()
	step
		goto The Vortex Pinnacle 57.6,48.9  |n
		' Ride the Slipstream across the gap. |goto 63.6,59.1 <5 |noway|c
	step
		goto 60.6,65.3 |n
		.kill Young Storm Dragon##45919 |n
		.' When you pull these, move it away from the circle or it will heal for all the damage you do. |confirm
	step
		goto 58.4,68.9 |n
		.' There will be _Howling Gales_ that you will need to hit to cross the bridge.
		.' Cross the bridge. |goto 55.2,73.6 <5 |noway|c
	step
		goto 60.6,65.3 |n
		.kill Young Storm Dragon##45919 |n
		.' When you pull these, move it away from the circle or it will heal for all the damage you do. |confirm
	step
		goto 53.0,77.7
		.' For this trash, move out of _Hurricane_.
		.' Interrupt _Cloudburst_ when it's cast.
		.' Kill Empyrean Assassins first.
		'|modelnpc Empyrean Assassin##45922
		'|modelnpc Turbulent Squall##45924
		|confirm
	step
		goto 52,80.6
		.' _Altairus_
		.' When engaged, Altairus will summon a wind which will affect your haste.
		.' He will also summon _Twisting Winds_, which will toss you up in the air and deal damage if you're hit by them. |only if heroic_dung()
		.' Using the wind current to your advantage will be the deciding factor in this fight.
		.' You will need to navigate around the boss. When you have the _Upwind of Altairus_ buff, stop moving. You gain a 100% haste buff for spells and attacks.
		.' If you have the _Downwind of Altairus_ debuff, circle the boss until you have the Upwind buff.
		.' Do not stand in front of Altairus. He uses a cone breath ability.
		.from Altairus##43873
		|confirm	
	step
		goto 49.4,80.7
		' Ride the Slipstream across the gap. |goto 31.4,80.4 <8 |noway|c
	step
		goto 30.8,76.2
		.' For these trash pulls, always kill or use crowd control for _Temple Adepts_.
		|confirm
	step
		goto 32.1,69.1
		.' There will be an electric field in the area. Magic won't work on mobs in these fields.
		.' Use crowd control on _Temple Adepts_.
		|confirm
	step
		goto 27.1,60.3
		.from Skyfall Star##52019
		.' There will be no aggro for these mobs and they will spread further apart the longer the fight goes.
		.' AoE them down.
		|confirm
	step
		goto 29.8,39
		.' _Asaad_
		.' He will channel _Supremacy of the Storm_. When he does so he will start to create a triangle on the ground randomly in the room.
		.' You will need to run inside of the triangle.
		.' His primary attack is _Chain Lightning_ so try to spread out of possible to reduce group damage.
		.' He will cast _Static Cling_ which will root you to the ground and can be deadly. It is a _Magic_ effect and can be cleansed. |only if heroic_dung()
		.from Asaad##43875 |only if not havequest(28760)
		.kill Asaad##43875 |q 28760/1 |only if havequest(28760)
		|confirm |only if not havequest(28760)
	step
		goto 29.2,46.4  |n
		.clicknpc Slipstream##47066
		|goto 54.1,16.8,0.5 |noway|c
	step
		goto 54.5,15.9
		.talk Itesh##49943
		..turnin A Long Way from Home##28779
		..turnin Vengeance for Orsis##28760
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Cataclysm Dungeons\\Lost City of the Tol'vir (LCoT) 83-85",[[
	dungeon	747
	description This guide will walk you through the Lost City of the Tol'vir dungeon.
	author support@zygorguides.com		
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
	label	"entrance"
		goto Uldum 60.6,64.3
		.' Enter the portal to Lost City of the Tol'vir here. |goto Lost City of the Tol'vir |noway |c
	step
	label	"start"
		goto Lost City of the Tol'vir 31.7,16.3
		.talk Captain Hadan##50038
		..accept The Source of Their Power##28783 
		..accept Targets of Opportunity##28781 
	step
		 goto 30.1,34.6
		.from 1 Oathsworn Captain##45122 |only if not havequest(28781)
		.kill 1 Oathsworn Captain##45122 |q 28781/2 |only if havequest(28781)
		.' The Captain will cast an AoE spell on the ground. Make sure to move out of this fast, it will do lots of damage.
		|confirm |only if not havequest(28781)
	step
		goto 36.5,43.2
		.' _General Husam_
		.' He will use _Shockwave_. When he is beginning to cast, get out of the smoke on the ground. It will deal damage in each direction.
		.' He will toss _Mystic Traps_ all around him. Do not get near these, or they will detonate, causing 35k damage.
		.' When he uses Mystic Trap, he will cast _Detonate Traps_ soon after, causing them to glow followed by an explosion. Move away from them before the blow up. |only if heroic_dung()
		.from General Husam##44577 |only if not havequest(28781)
		.kill General Husam##44577 |q 28781/1 |only if havequest(28781)
		|confirm |only if not havequest(28781)
	step
		 goto 30.1,34.6
		.kill 1 Oathsworn Captain##45122 |q 28781/2 
		|only if havequest(28781)
	step
		map  Lost City of the Tol'vir
		path loop off
		path	42.7,41.4	50.9,43.6	51.0,57.3
		path	58.6,57.3	66.4,70.5
		.' Follow this path and kill the boss
		.' Lockmaw will use _Dust Flail_, which will affect anyone standing behind him.
		.' Spread out so you don't hurt your group with _Viscous Poison_. It will damage anyone within 5 yards of you, as well as slow them by 30%
		.' He will also cast _Scent of Blood_ on a random party member, causing 4 adds to attack them. Kill them fast and have your tank taunt them whenever possible.
		.' At _30% Health_ he will gain the ability _Venomous Rage_, which chan be dispelled.
		.from Lockmaw##43614
		|confirm
		|only if not heroic_dung()
	step
		map  Lost City of the Tol'vir
		path loop off
		path	42.7,41.4	50.9,43.6	51.0,57.3
		path	58.6,57.3	66.4,70.5
		.' Follow this path and kill the boss.
		.' _Lockmaw & Augh_
		.' _Lockmaw_ will use _Dust Flail_, which will affect anyone standing behind him.
		.' Spread out so you don't hurt your group with _Viscous Poison_. It will damage anyone within 5 yards of you, as well as slow them by 30%
		.' He will also cast _Scent of Blood_ on a random party member, causing 4 adds to attack them. Kill them fast and have your tank taunt them whenever possible.
		.' At _30% Health_ he will gain the ability _Venomous Rage_, which chan be dispelled.
		.from Lockmaw##43614
		.' _Augh_ will appear after you defeat Lockmaw. Avoid his _Whirlwind_ by kiting him around.
		.' He will toss a poison on random party members called _Paralytic Blow Dart_, dispel it if you are able.
		.' He will cast _Dragon's Breath_ on your tank, disorienting him. At this time he will go after party members with high threat.
		.' He will go into a frenzy which cannot be removed.
		.from Augh##49045
		|confirm
		|only if heroic_dung()
	step
		map  Lost City of the Tol'vir
		path loop off
		path	66.0,69.6	59.1,58.3	49.7,57.1
		path	47.1,68.1	49.0,76.4	42.0,81.6
		path	39.7,71.2	36.7,61.1	27.1,65.5
		.' Follow this path and kill the boss
		.' _High Prophet Barim_
		.' _Phaste 1:_
		.' He will use _Fifty Lashings_ to increase his damage output. You may want to use cooldowns.
		.' He will cast _Plague of Ages_, this will deal nature damage 4k damage every second for 9 second and can be dispelled.
		.' _Heaven's Fury_. This will open up a portal of light that will deal large damage to anyone standing in the light.
		.' At 50% he will use _Repentance_, pulling the entire group to him. It will also deal out damage and know the players back at the end of it's duration.
		.' He will summosn a _Blaze of the Heavens_ which flies around and attacks. At 1% it transforms into an egg and begins to heal. After 20 second it will hatch again and attack. |only if heroic_dung()
		.' _Phase 2:_ 
		.' He will place _Hallowed Ground_ on the ground that deals massive damage. Move out of it as fast as possible.
		.' He will summon a _Harbinger of Darkness_ and start using _Soul Sever_. Soul Sever spawns a _Soul Fragment_ which needs to be killed quickly and can be slowed, stunned and snared.
		.' Players will randomly be hit for around _7,000_ damage during this phase. Healers need to try and keep people topped off.
		.' When the _Harbinger of Darkness_ is dead, it will go back to phase one.
		.from High Prophet Barim##43612
		|confirm
	step
		goto 36.0,62.8
		.clicknpc Wind Tunnel##48092 
		.' Ride the Wind Tunnel and face the boss |invehicle
	step
		goto 35.7,53.9 |n
		.' Ride the Wind Tunnel |goto 35.7,53.9,0.5 |noway |c
		.' Land on the edge of the building |outvehicle
	step
		goto 35.7,53.9 |n
		.' Ride the Wind Tunnel |goto 35.7,53.9,0.5 |noway |c
		.' Land on the edge of the building |outvehicle
		step
		goto 40.8,55.3
		.' There are 2 phases to this fight with Siamat.
		.' _Phase 1:_ 
		.' He will spawn _Minions of Siamat_. Interrupt their spells and kill them as fast as you can. Kill them by the ledges, as they spawn whirlwinds when they die.
		.' He will summon _Servants of Siamat_, which need to be Tanked and Killed. Only 3 will spawn during the fight. After the 3rd one, Siamat will become vulnerable. Move away from them as they are about to die to avoid AoE damage.
		.' During the fight, Siamat will cast _Storm Bolt_.
		.' _Phase 2:_
		.' He will use _Wailing Winds_ when the shield goes down. Move away from the edges and top every one off health wise if you are the healer.
		.' Minions of Siamat will continue to spawn, but you can ignore them and focus on the boss.
		.' He will use _Absorb Storms_ removing a minion and granting him a passive AoE.
		.' he will use _Gathered Storms_, which absorbs a minion that he has summoned, blasting 2 players for nature damage. |only if not heroic_dung()
		.' he will use _Gathered Storms_, which absorbs a minion that he has summoned, blasting all players for nature damage. |only if heroic_dung()
		.from Siamat##44819 |only if not havequest(28783)
		.kill Siamat##44819 |q 28783/1 |only if havequest(28783)
		|confirm |only if not havequest(28783)
		'|from Minion of Siamat##44704+
		'|from Servant of Siamat##45259+
	step
		goto 40.8,55.3
		.' There are 2 phases to this fight with Siamat.
		.from Siamat##44819 |only if not havequest(28783)
		.kill Siamat##44819 |q 28783/1 |only if havequest(28783)
		|confirm |only if not havequest(28783)
		'|from Minion of Siamat##44704+
		'|from Servant of Siamat##45259+
	step
		goto Lost City of the Tol'vir 31.7,16.3
		.talk Captain Hadan##50038
		..turnin The Source of Their Power##28783
		..turnin Targets of Opportunity##28781
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Cataclysm Dungeons\\Halls of Origination (HoO) 83-85",[[
	dungeon 759
	description This guide will walk you through the Halls of Origination dungeon.
	author support@zygorguides.com	
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm
		.' I will use the Dungeon Finder |confirm |next "start"
	step
		goto Uldum 69.1,53.0 |n
		.' Go through the swirling portal.
		.' Teleport to Halls of Origination. |goto Halls of Origination |noway |c
	step
	label	"start"
		goto Halls of Origination 58.3,62.7
		.from Temple Guardian Anhuur##39425
		.' You will have 2 phases when fighting this boss
		.' _Phase 1:_ 
		.' Fight this boss until he becomes _immune to damage_. This happens at _66% and 33%_.
		.' He will cast _Burning Light_, which will cause a beam of light to shoot from the wall. Don't stand in the fire it creates on the ground.
		.' He will cast _Divine Reckoning_ at a random party member. After 8 seconds, the spell will erupt and damage you along with anyone within 7 yards of you. It is a _Magic Debuff_ and can be dispelled.
		.' _Phase 2:_
		.' When he cast's _Shield of Light_ he becomes immune to damage.
		.. You will have to jump off the sides of the platform to the right or left, then _click the switch to deactivate_  shield of light and run back. |only if not heroic_dung()
		.. You will have to jump off the sides of the platform to the right and left, then _click the switch to deactivate_  shield of light and run back. |only if heroic_dung()
		.' Once he has shield of light, he will start channeling _Reverberating Hymn_ which deals 400 holy damage per stack. It stacks every 4 seconds and lasts until you click the left and right switches.
		.' Immediately moving into phase 2, _Pit Vipers_ will spawn on the ground near the levers. The tank should take care to pick them up so that a DPS can click the lever.
		|confirm
	step
		goto 71.3,49.8 |n
		.' Follow the Hallway. |goto 71.3,49.8 <5 |noway |c
	step
		goto 90.1,49.7 |n
		.' Follow the Hallway and go up these stairs. |goto Halls of Origination/2 |noway |c
	step
		goto Halls of Origination/2 32.7,48.7
		.' Kill all the mobs in this area, then click a Camel to continue. |invehicle |c
	step
		goto 49.8,49.3
		.from Earthrager Ptah##39428
		.' You will have 2 phases when fighting this boss
		.' _Phase 1:_ 
		.' Look out for _Earth Spike_. The ground will rumble, than erupt a spike, move when you see dust.
		.' He will use _Flame Bolt_, which is channeled and damages 2 random players. |only if not heroic_dung()
		.' He will use _Flame Bolt_, which is channeled and damages 3 random players. |only if heroic_dung()
		.' He will use _Raging Smash_ which will damage the tank and 2 additional targets within melee range.
		.' _Phase 2:_ 
		.' At _50%_ Ptah will burrow and you will have to fight some mobs.
		.' He will summon a _Sand Vortex_ that moves around the battlefield.
		.' He will summon _Dustbone Horrors_ and _Jeweled Scarabs_, which need to be killed before the boss returns. 
		.' Be aware of _quicksand_, this will slow your movement and cause damage while standing in it.
		|confirm
	step
		goto 66.7,48.5
		.click Halls of Origination Transit Device##8632
		.' Teleport to The Maker's Rise. |goto Halls of Origination 67.5,52.8 <5 |noway |c
	step
		goto 63.6,49.8 |n
		.' Follow these stairs up and to the right. |goto 63.6,49.8 <5 |noway |c
	step
		'Kill each Elemental Warden on the platforms around this room
		.' [49.0,32.6]
		.' [63.3,32.6]
		.' [63.3,22.1]
		.' [49.2,22.0]
		|confirm
	step
		goto 56.2,19.3
		.' _Anraphet_
		.' This boss is more of a Healing intensive fight for the whole group.
		.' Anraphet will cast _Alpha Beams_, this cause damage to a player and all players around them. 
		.' It will leave circle on the ground you need to avoid for 3 seconds. |only if not heroic_dung()
		.' It will leave circle on the ground you need to avoid and lingers throughout the fight. |only if heroic_dung()
		.' Anraphet will go into _Omega Stance_ causing damage to the whole group for 8 seconds.
		.' After Omega Stance or Alpha Beams, he will use _Crumbling Ruin_, decreasing the groups health by 8%. It stacks 10 times.
		.from Anraphet##39788
		|confirm
	step
		goto 56.2,27.2 |n
		.click Halls of Origination Transit Device##8632
		.' Teleport to The Maker's Rise. |goto 67.5,52.8 <5 |noway |c
	step
		goto 66.4,48.3
		.click The Maker's Lift Controller##8504
		.' <Bring Elevator to the 2nd floor> |goto Halls of Origination/3 45.9,47.6 <5|noway |c
	step
		goto 47.1,78.8
		.' _Ammunae_ 
		.' He will cast _Wither_ on a random party member. It reduces attack speed, casting speed and movement speed by 60%. It can be interrupted and dispelled (magic).
		.' He will cast _Consume Life Energy_, which will deal nature damage and dimish a players 'resource'.
		.' He will summon _Seedling Pods_. They will use _Energize_ on Ammunae, increasing his damage done by 5% and attack speed by 30% while alive. Kill them when they spawn.
		.' It will also heal Ammunae for 1% of his max health every 3 seconds while alive. |only if heroic_dung()
		.' He will use _Rampant Growth_, transforming all Seedling Pods into Bloodpetal Sprouts which will inflict massive damage to the party. 
		.' He will spawn a _Spore_. It moves slowly and when it dies, it leaves a spore cloud with a 6 yard radius that deals nature damage every 1.5 seconds.
		.' The _Noxious Spore_ cloud that spawn can also dish out major damage to any plant life, inflicting 12 to 18% of it's health.
		.from Ammunae##39731
		|confirm
	step
		goto 67.1,49.5
		.' _Setesh_
		.' He will cast _Chaos Bolt_ at a random party member.
		.' He will also place _Seed of Chaos_ on a random party member. When it detonates, the group will take shadow damage.
		.' Through the fight, he will _Summon Chaos Portals_. It will spawn monsters that the DPS need to kill, then despawn after around 25 seconds. |only if not heroic_dung()
		.' Through the fight, he will _Summon Chaos Portals_. It will spawn monsters while it is up. The DPS will need to attack the portal to stop it from spawning adds. |only if heroic_dung() 
		.from Setesh##39732
		|confirm
	step
		goto 26.7,49.8
		.' _Isiset_
		.' She will cast _Supernova_ through out the fight. You can turn away from her to avoid the disorienting effect right before she finishes her cast.
		.' When she reaches 66 and 33% health, she will use her _Mirror Images_ ability.
		.' At 66% she will split into 3 forms. Kill the _Veil of Sky_ Mirror Image.
		.' At 33% she will split into 2 forms. Kill the _Celestial Call_ Mirror Image.
		'|from Veil of Sky##39722, Celestial Call##39721
		.from Isiset##39587
		|confirm
	step
		goto 47.2,19.7
		.' _Rajh_
		.' Rajh will start with 100 energy and cast spells at 20 energy each.
		.' Rajh's spells to avoid are: _Summon Sun Orb_. This is channeled above a players head, after 3 seconds it will drop and deal damage, knocking players nearby back. It can be interrupted.
		.' He will cast _Inferno Leap_ and it needs to be _interrupted_. If not, he will jump towards a targeted player, and deal large damage knocking away any nearby players. |tip This can kill the player he lands on if they do not move.
		.' He will also cast _Solar Winds_ which creates a fiery vortex in front of him that grows an dmoves around the room.
		.' The Solar Wind will leave _Solar Fire_ on the ground, which deal out massive damage. |only if heroic_dung
		.' When he reaches 10 or less energy, he walks to the middle of the room and casts _Blessing of the Sun_.
		.' He will become 100% more vulnerable to player attack, while regenerating his energy and causing AoE fire damage to your group.
		.from Rajh##39378
		|confirm
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Cataclysm Dungeons\\Grim Batol (GB) 84-85",[[
	dungeon 757
	description This guide will walk you through the Grim Batol dungeon.
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm always
		.' I will use the Dungeon Finder |confirm always |next "start"
	step
		goto Twilight Highlands 19.1,53.8 |n
		Enter Grim Batol here |goto Grim Batol |noway |c
	step
		goto Grim Batol,18.4,55.2
		.talk Farseer Tooranu##50385
		..accept Kill the Courier##28853
	step
		goto 19,55
		.talk Velastrasza##50390
		..accept Soften them Up##28852
	step
		goto 19.4,53
		.talk Baleflame##50387
		..accept Closing a Dark Chapter##28854
	step
		map Grim Batol
		path follow strict;loop off;ants straight
		path	18.0,43.4	20.2,39.6	26.2,39.8
		path	27.9,27.1	31.8,26.2
		.' Follow the path, clearing the trash as you go.
		.' You will need to kill the nets that are holding the dragons down.
		|confirm
	step
		.clicknpc Battered Red Drake##42571
		.' You will end up flying through the instance, gaining the ability to attack groups of enemies.
		.' The damage that you do to them stays even after you land.
		..' Kill 15 Twilight's Hammer Minions |q 28852/1 |only if havequest(28852)
		..' Kill 25 Trogg Dwellwers |q 28852/2 |only if havequest(28852)
		.' Note that if you didn't get all of the Trogg Dwellers, you can fly back and get them at the end of the instance. |only if havequest(28852)
		.' Click here once you've landed. |confirm
	step
		goto 40.4,68.4
		.' _General Umbriss_
		.' He will randomly use _Blitz_ towards a party member.  You need to move out of his path to avoid damage.
		.' He will also use _Ground Siege_ in a random direction. It will also need to be avoided.
		.' The tank will be hit with _Bleeding Wound_ which does massive damage every 2 seconds until they are healed to 90% of their health.
		.' At 30% he will get a _Frenzy_ affect gaining 50% attack speed and damage.
		.' Note that he also summons adds. If they reach him he will also gain the _Frenzy_ effect. |only if not heroic_dung()
		.' He will summon adds. Make sure to keep them more than 10 yards away from the boss.  If close to the boss when they die, they will give the boss a 100% damage buff. |only if heroic_dung()
		.' If the adds get near the boss, they will be buffed and deal significant more damage. |only if heroic_dung()
		.' He will cast _Modgud's Malady_ which needs to be dispelled. It is a _Magic_ debuff and stacks up to 10 times. |only if heroic_dung()
		.from General Umbriss##39625
		|confirm	
	step
		goto 46.3,48.5
		.' Wait for a patrol to come here.
		.' Watch for _Forgemaster Throngus_ who patrols through the room. Go back into the hallway if you haven't cleared the trash yet.
		.' Once the trash is cleared, click here. |confirm
		'|goto 48.7,47.1
		'|goto 45.7,43.6
	step
		.' _Forgemaster Throngus_
		.' This boss cycles through weapons, which have different strategies depending on which he's holding:
		.' While using a _Mace_ his movement speed will be decreased by 70%, but his damage will be increased by 200%. The tank will need to kite him.
		.' He will jump to random party members during Mace stance inflicting damage as a dot for 5 seconds.
		.' He will leave a trail of _Burning Flames_ behind him as he walks, avoid it at all cost. |only if heroic_dung()
		.' While using _Dual Blades_ he loses 20% damage, but uses the _Thrash_ ability, causing him to attack an additional two times when he swings his weapons.
		.' He will also use _Disorienting Roar_ while in Dual Blade stance, reducing casting and attack speed by 50%. This effect can be removed by using an ability or spell.
		.' He will also leave _Burning Flames_ on whoever he hits, which can be dispelled. This effect stack with each hit. |only if heroic_dung()
		.' While using his _Phalanx_ He takes 99% reduced damage. Move behind him to bypass this mechanic.
		.' While in Phalanx stance, there will also be archers constantly firing  at your group.
		.' He will use the ability _Flaming Shield_ which deals fire damage to anyone in front of his shield, so be quick to move behind him. |only if heroic_dung()
		.from Forgemaster Throngus##40177
		|confirm
	step
		map Grim Batol
		path follow loose;loop off
		path	56.8,47.9	60.6,53.5	60.4,63.4
		path	63.8, 64.6	67.2,68.1	73.0,59.0
		path	68.5,54.7	70.7,41.7	69.8,30.2
		.' Kill trash and follow the path to Drahga Shadowburner. |goto 69.8,30.2 <5 |noway|c
	step
		goto 70.3,20.7
		.' _Drahga Shadow Burner_
		.' Phase 1:
		.' He will use _Invocation of Flame_ which will mark the ground at a random location. It will summon a fire elemental that targets a random player, shooting a red beam. _ALL DPS EXCEPT FOR THE TARGET_ need to kill it as soon as possible.
		.' His basic attack is _Burning Shadowbolt_, which can be interrupted.
		.' Phaste 2:
		.' At 25% he will retreat and the dragon _Valiona_ will catch him. Tank her at the center of the room.
		.' _Invocation of Flame_ will still be used, so be aware of the spawn point and target.
		.' She will use _Devouring Flames_ which is a wide cone attack, so don't stand in front of her. |only if heroic_dung()
		.' She will use _Valiona's Flame_ which targets a random player and breathes a 40 yard long cone which stuns and damages all players within the cone.
		.' She swipes, so don't stand in front of her.
		.' She places _Seeping Twilight_ on the ground, a large circular pool on the ground that deals out damage over time.
		.' When her health is low she will drop Drahga Shadowburner.
		.from Drahga Shadowburner##40319
		.get Missive to Cho'gall |q 28853/1 |only if havequest(28853)
		|confirm |only if not havequest(28853)
	step
		map Grim Batol
		path follow strict;loop off
		path	77.0,40.0	85.8,40.0	86.1,57.4
		.' Follow the path to _Erudax, The Duke of Below_. |goto 86.1,57.4 <5 |noway|c
	step
		.' _Erudax, The Duke of Below_
		.' The main mechanic for this fight is _Shadow Gale_, in which he will create a purple void zone circle on the ground. The entire group needs to move into it as fast as they can so that they aren't killed by the AoE that effects players outside of the circle. He will take double damage during the duration of the spell.
		.' Each time he uses Shadow Gale, he will summon a _Faceless Corruptor_. Use every ability you have to slow them down and kill them. _ONLY SLOWING EFFECTS_ will work on them. If you don't kill them they will eventually heal the boss.
		.' He will use _Enfeebling Blow_ which will knock the tank back, giving him a debuff called _Feeble Body_, increasing the damage the tank will take by 100% for 3 seconds.
		.' He will use _Binding Shadows_ which is an AoE root that you can step out of before it hits the ground.		
		.' If you don't kill the adds fast enough, they will be buffed with _Shield of Nightmares_, which will damage your group each time the add is hit. |only if heroic_dung()
		.from Erudax##40484 |only if not havequest(28854)
		.kill Erudax##40484 |q 28854/1 |only if havequest(28854)
		'|modelnpc 39392
		'|goto 85.7,60.9
		|only if not heroic_dung()
	step
		.' _Erudax, The Duke of Below_
		.' The main mechanic for this fight is _Shadow Gale_, in which he will create a purple void zone circle on the ground. The entire group needs to move into it as fast as they can so that they aren't killed by the AoE that effects players outside of the circle. He will take double damage during the duration of the spell.
		.' Each time he uses Shadow Gale, he will summon 2 _Faceless Corruptor_. Use every ability you have to slow them down and kill them. _ONLY SLOWING EFFECTS_ will work on them. If you don't kill them they will eventually heal the boss.
		.' He will use _Enfeebling Blow_ which will knock the tank back, giving him a debuff called _Feeble Body_, increasing the damage the tank will take by 100% for 3 seconds.
		.' He will use _Binding Shadows_ which is an AoE root that you can step out of before it hits the ground.		
		.' If you don't kill the adds fast enough, they will be buffed with _Shield of Nightmares_, which will damage your group each time the add is hit.
		.from Erudax##40484 |only if not havequest(28854)
		.kill Erudax |q 28854/1 |only if havequest(28854)
		'|modelnpc 39392
		'|goto 85.7,60.9
		|only if heroic_dung()
	step
		.' You can either run to the beginning of the dungeon to turn in your quests.
		.' Or
		.' You can Right Click the dungeon finder icon on your mini map, teleport out of the dungeon, then teleport back in to the entrance.
		|confirm
	step
		goto Grim Batol,18.4,55.2
		.talk Farseer Tooranu##50385
		..turnin Kill the Courier##28853
	step
		goto 19,55
		.talk Velastrasza##50390
		..turnin Soften them Up##28852
	step
		goto 19.4,53
		.talk Baleflame##50387
		..turnin Closing a Dark Chapter##28854
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Cataclysm Dungeons\\Zul Gurub (ZG) 85",[[
	dungeon 793
	description This guide will walk you through the Zul Gurub dungeon.
	author support@zygorguides.com
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm |next
		.' I will use the Dungeon Finder |confirm |next "start"
	step
		goto Northern Stranglethorn 72.5,32.9 |n
		.' Enter Zul'Gurub here. |goto Zul'Gurub |noway |c
	step
	label	"start"
		goto Zul'Gurub 30.7,47.5
		.talk Overseer Blingbang##53151
		..accept Booty Bay's Interests##29252
	step
		goto 30.6,47.3
		.talk Bloodslayer Zala##53024
		..accept Break the Godbreaker##29241
	step
		goto 30.5,51.0
		.talk Briney Boltcutter##53043
		..accept Putting a Price on Priceless##29242
	step
		goto 33.4,46.7
		.from Venomancer Mauri##52380
		.clicknpc Zanzil's Cauldron of Toxic Torment##52529
		.' Get the Toxic Torment Buff. |havebuff Interface\Icons\INV_Misc_Cauldron_Nature
	step
		goto 37.2,46.4
		.' Fight your way through this path.
		.from Venomtip Needler##52379+
		.' If you need another nature buff, you can get one here.
		|confirm
	step
		goto 43.9,51.0
		.from Tiki Lord Mu'Loa##52340+
		|confirm
	step
		goto 48.5,52.1	
		.' Fight your way to the next cauldron.
		.clicknpc Zanzil's Cauldron of Toxic Torment##52529
		.' Get the Toxic Torment Buff. |havebuff Interface\Icons\INV_Misc_Cauldron_Nature
	step
		.' Pull the Venomguard Destroyers near the cauldron and kill them.
		.from Venomguard Destroyer##52311+
		|confirm
	step
		goto 50.8,55.1
		.' _High Priest Venoxis_
		.' _Phase 1:_
		.' He will cast, _Toxic Link_ which attaches 2 party members. Run 25 yards away from each other to break this. 
		.' _Whispers of Hethiss_ is a beam of poison that will damage a player while channeled. This needs to be _interrupted_.
		.' During the fight he will use _Venomous Effusion_ which creates a maze of poison on the ground. Avoid the wall at all cost.
		.' _Phase 2:_
		Venoxis will _Transform_ into a snake god. A _poisonous cloud maze_ will appear on the ground, avoid walking in this.
		.' He will continue to use _Venomous Effusion_.
		.' His damage will be increased by 50% while in snake form.
		.' He will cast a _Pool of Acrid Tears_ on the player furthest away from him which deals nature damage. Avoid if you can.
		.' He will use a cone attack, _Breath of Hethiss_, so melee should attack from the back if possible.
		.' _Phase 3:_
		.' Players will be _chased by Poison Tendrils_, avoid these for 12 seconds. After this phase, Venoxis will take 100% more damage for 10 seconds. If  you do not kill him, phase 1 will repeat.
		.from High Priest Venoxis##52155
		|confirm
	step
		map Zul'Gurub
		path loop off
		path	49.4,54.3	49.0,58.1	52.9,57.8
		path	55.8,61.8	56.9,72.3
		.' Follow this path, once you get to this opening, watch out for the rocks. 
		.' Run up this path and kill the Berserker
		.from Berserking Boulder Roller##52348
		|confirm
	step
		goto 60.1,80.2
		.' _Bloodlord Mandokir_
		.' He will randomly use _Decapitate_ which will kill whoever he uses it on. 
		.' When the player is killed, a _Chained Spirit_ will revive you, giving you _Spirit's Vengeance_, granting 25% Health, Damage, Healing and decreasing damage taken by 10%. This effect stacks.
		.' He will gain a _Level Up_ buff when he kills a player, increasing damage dealt by 20%, a stacking effect.
		.' Mandokir will summon his raptor _Ohgan_. _Kill the Raptor_ everytime it spawns or it will kill a Chained Spirit.
		.' There are only _8 spirits_, so kill Ohgan as fast as possible.
		.' He will use _Devastating Slam_ often during the fight, a 45 degree cone attack that will likely kill you. It marks the ground as to where it strikes, so avoid it.
		.' He will toss the _Bloodletting_ debuff on a random target, dealing 50% of their current health as shadow damage.
		.from Bloodlord Mandokir##52151
		'|from Ohgan##52157
		|confirm
	step
		goto 54.5,52.7
		'Go back down the hill and clear the trash.
		.from Witch Doctor Qu'in##52322
		.from Chosen of Hethiss##52323+
		|confirm
	step
		goto 59.5,46.1
		.from Ritual Tiki Mask##52364+
		|confirm
	step
		goto 59.3,46.4
		.' If a party member has an Archaeology of 225 at least and wishes to fight the boss, click here. |confirm |next
		.' If the party wishes to skip the Archaeology boss, click here. |next "end" |confirm
	step
		'The Edge of Madness event will summon 1 of 4 random bosses. 
		.' If Hazza'rah spawns click here. |next "hazza" |confirm
		.' If Renataki spawns click here. |next "rena" |confirm
		.' If Wushoolay spawns click here. |next "wush" |confirm
		.' If Gri'lek spawns click here. |next "gri" |confirm
	step
	label hazza
		'_Hazza'rah_
		.' Hazza'rah will use _Nightmare_ and summon 4 adds. Each add will target a random party member and cast _Waking Nightmare_ stunning them. The player who is not stunned must kill the adds before they reach the targetted player.
		.from Hazza'rah##52271 
		.get Mysterious Gurubashi Bijou##69647 |q 29242/1 |only if havequest(29242)
		|confirm |only if not havequest(29242) |next "end"
	step 
	label rena
		'_Renataki_
		.' _Renataki_ will use _Deadly Poison_ throughout the fight. This effect stacks and can be cleansed.
		.' He will periodically _Vanish_. When he does this make sure everybody in the party is at 100% health. He will _Ambush_ a random target that deals 90% of the players health.
		.' He will also cast _Thousand Blades_. This whirlwind is dangerous and needs to be avoided.
		.from Renataki##52269
		.get Mysterious Gurubashi Bijou##69647 |q 29242/1 |only if havequest(29242)
		|confirm |only if not havequest(29242) |next "end"
	step
	label wush
		'_Wushoolay_
		.' Wushoolay will summon _Lightning Clouds_ periodically that should be avoided.
		.' He will use _Forked Lightning_, so spread out.
		.' Wushoolay will transform into a ball of lightning and charge at a random player. After he reaches them he begins to cast _Lightning Rod_. Everybody needs to run away from Wushoolay at this point, Lightning Rod does deadly amounts of damage and needs to be avoided
		.from Wushoolay##52286
		.get Mysterious Gurubashi Bijou##69647 |q 29242/1 |only if havequest(29242)
		|confirm |only if not havequest(29242) |next "end"
	step
	label gri
		'_Gri'lek_
		.' Gri'lek is a kiting encounter. 
		.' He will fixate on a random party member and gain the _Avatar_ buff, increasing his damage output by 500% and reducing his movement speed. If he fixates on you just run away until it is done.
		.' He will cast _Entangling Roots_ on the player he is chasing, this can and needs to be dispelled.
		.' He constantly summons _Rupture Lines_. Avoid the rumbling dirt.
		.from Gri'lek##52258
		.get Mysterious Gurubashi Bijou##69647 |q 29242/1 |only if havequest(29242)
		|confirm |only if not havequest(29242) |next "end"
	step
	label end
		map Zul'Gurub
		path loop off
		path	56.6,50.6	56.7,43.2	58.3,31.1
		path	55.1,27.6	47.6,27.2	47.5,18.9
		.' Follow the path around, go down these stairs. |goto 47.5,18.5 <5 |noway |c
	step
		goto 47.8,20.9
		.' _High Priestess Kilnara_
		.' _Phase 1_
		.' The tank should pull the Pride of Bethekk and keep aggro on Kilnara.
		.' The DPS should focus on killing the 16 _Pride of Bethekk_, pulling 4 at a time. (You can kill more if you've got great dps)
		.' She will cast _Tears of Blood_ on random party members. It deals massive damage and should be dispelled as soon as possible.
		.' She will also cast _Lash of Anguish_ on a random target, which should be dispelled.
		.' She will cast _Wave of Agony_ at a random player, attacking and knocking back anyone in front of her. Avoid it.
		.' _Phase 2_
		.' Once she reaches 50% health she will enter phase 2, vanishing. When she reappears, she will be in cat form.
		.' She will deal out more damage. DPS her down as fast as possible.
		.from High Priestess Kilnara##52059
		'|from Pride of Bethekk##52061+
		|confirm
	step
		goto 47.6,23.6 |n
		.' Go upstairs and leave the building. |goto 47.6,23.6 <5 |noway |c
	step
		map Zul'Gurub
		path loop off
		path	44.9,28.1	42.2,29.1	38.8,27.1
		path	34.8,27.1
		.' Follow this path up to the next boss. |goto 34.8,27.1 |noway |c
	step
		goto 31.4,24.8
		.from Zanzil##52053
		.' Zanzil will _Drain 3 Cauldrons_ separately during this fight. You will use the buff of each Cauldron for the proper _response to the boss_.
		.' Use the Green Cauldron at [30.6,23.9] to get the buff. He will cast _Graveyard Gas_ and put poison all over the ground.
		.' Use the Blue Cauldron at [31.6,27.3] to get the _Forstburn Formula_. He will resurrect a Berserker which you will have to kill.
		.' Use the Red Cauldron at [33.0,24.3] to get the _Burning Blood_. The Tank will use this to aggro and kill all the Zombies that resurrect.
		|confirm
	step
		map Zul'Gurub
		path loop off
		path	42.8,29.9	41.3,36.3	46.4,39.8
		path	46.4,36.4	51.0,36.0
		.' Follow the path and the stairs up. |goto 50.8,39.7 <5 |noway |c
	step
		goto 48.7,39.9
		.' This fight has 2 phases
		.' _Phase 1:_ Jin'do will cast an aura _Shadows of Hakkar_, which will do heavy damage to the group. Make sure to _stand in_ the _green bubbles_ while this aura is active.
		.' Once his aura, _Shadows of Hakkar_ is over, move _out of_ the bubble.
		.' _Phase 2:_ Jin'do will go away and there will be _3 chains_ protected by a barrier on the ground. The _tank_ will need to _grab a Gurubashi Spirit_ and get near the chains.
		.' The Gurubashi Spirit will use _Body Slam_ on a player, if the player is near the chains, the _barrier will break_. Kill 3 chains by breaking the barrier and attacking them.
		.from Jin'do the Godbreaker##52148 |only if not havequest(29252)
		.kill Jin'do the Godbreaker##52148 |q 29241/1 |only if havequest(29241)
		.get Zul'Gurub Stone |q 29252/1 |only if havequest(29252)
		|confirm |only if not havequest(29252)
	step
		goto 30.7,47.5
		.talk Overseer Blingbang##53151
		..turnin Booty Bay's Interests##29252
	step
		goto 30.6,47.3
		.talk Bloodslayer Zala##53024
		..turnin Break the Godbreaker##29241
	step
		goto 30.5,50.9
		.talk Briney Boltcutter##53043
		..turnin Putting a Price on Priceless##29242
]])
ZygorGuidesViewer:RegisterGuide("Zygor's Horde Dungeon Guides\\Cataclysm Dungeons\\Zul'Aman (ZA) 85",[[
	dungeon 781
	description This guide will walk you through the Zul'Aman dungeon.
	step
		'How do you want to enter this dungeon:
		.' Take me to the dungeon entrance |confirm |next
		.' I will use the Dungeon Finder |confirm |next "start"
	step
		goto Ghostlands 82.0,64.3 |n
		'Enter the swirling portal to Zul'Aman. |goto Zul'Aman |noway|c
	step
	label "start"
		goto Zul'Aman,13.8,52.2
		.talk Witch Doctor T'wansi##52925
		..accept The Hex Lord's Fetish##29186
	step
		goto 14.2,53.2
		.talk Vol'jin##52924
		..accept Warlord of the Amani##11196
	step
		goto 14.2,53.2
		.talk Vol'jin##52924
		.' Tell him you are ready to open the doors.
		|confirm
	step
		goto 34.4,48.7
		.' There will be a patrol walking at this point, wait for it to pass before moving to your left.
		|confirm
	step
		map Zul'Aman
		path follow strict;loop off;ants straight
		path	31.8,43.8	29.7,41.3	33.0,40.0
		path	35.4,40.1	37.8,39.4	37.4,34.3
		path	36.0,28.5
		.' At this point, follow the path up the steps.
		.' There will be mobs that come after you from behind as you go up the steps.
		.' Kill _Amani'shi Wind Walkers_ first, interrupting _Chain Heal_ whenever they cast it.
		.' Follow the path up to Akil'zon's Altar. |goto 36.0,28.5 <5 |noway|c
		'|modelnpc 24179
	step
		goto 35.1,22.9
		.' _Akil'zon_
		.' For this encounter, you will want to spread out to avoid zapping party members with AoE attacks.
		.' _Amani Kidnappers_ will swoop down, picking up a random party member.  You will have to kill the bird quickly.
		.' He will cast _Electrical Storm_ on a random party member.  When this happens, all players will need to move underneath the party member who is affected.
		.' _Electrical Storm_ deals out massive damage that increases over time, so move quickly.
		.' He will also put the _Static Disruption_ debuff on a random target, dealing nature damage and increasing nature damage taken. It can be dispelled.
		.from Akil'zon##23574
		'|modelnpc 52638
		|confirm
	step
		map Zul'Aman
		path follow strict;loop off;ants straight
		path	34.3,61.7	31.0,63.4	30.8,66.6
		path	33.9,70.4	34.1,75.8	37.5,76.5
		.' The patrol will still be there you can avoid it or kill them.
		.' Follow the path up, fighting trash as you go along.
		.' Kill _Amani'shi Medicine Men_ first, followed by _Amani'shi Casters_.
		.' If needed, you can also use crowd control on them when needed.
		.' Note that at the last pull, you will not be able to crowd control at first.
		|confirm
	step
		goto 40.6,76.5
		.' _Nalorakk_
		.' Phase 1(Troll Phase):
		.' He will deal massive damage to the tank with _Brutal Strike_.
		.' He also uses an ability called _Surge_.  It's important to know that he charges the player furthest from him, leaving a debuff that increases damage taken by _500%!_
		.' This means that you need to rotate who gets hit by it. _Ranged DPS and Healers_ should be the ones to do this. However if you don't have enough ranged, have everyone stack close to the boss, and have a melee step out when it's their turn.
		.' _He will use Surge 3 times, so 3 people will need to take the hit!_
		.' Phase 2(Bear Phase):
		.' He will put a massive bleed dot on the tank called _Lacerating Slash_.
		.' He will also use _Deafening Roar_, which silences the party for 2 seconds. It will be important to keep the tank topped off on health during phase 2.
		.' He will go back and forth between phases.
		.from Nalorakk##23576
		|confirm
	step
		map Zul'Aman
		path follow strict;loop off;ants straight
		path	34.3,76.8	33.9,90.6	37.5,91.4
		path	43.3,89.5	48.0,90.0	49.6,86.2
		path	52.2,84.2	55.9,84.2	59.8,83.6
		path	58.5,77.6	55.4,76.8	55.4,72.6
		.' Follow the path.
		.' Use crowd control on _Amani'shi Flame Casters_ when applicable.
		.' Keep an eye out for _Amani'shi Scouts_, if they do not die instantly they will summon additional adds..
		|confirm
		'|modelnpc 23586
		'|modelnpc 23596
	step
		goto 55.4,71.0
		.' _Jan'alai_
		.' For this fight, he will cast _Flame Breath_ towards a random player. Step out of the way when he does so, it deals massive fire damage.	
		.' He will also _Summon Amani'shi Hatchers_, which hatch _Amani Dragonhawk Hatchlings_. _ONLY KILL ONE_ of the Hatchers, and let the other destroy the eggs.
		.' Use every AoE ability you have to kill the hatchlings as they come in waves.
		.' He will also periodically use _Fire Bomb_, where he will teleport to the center of the room and throw fire orbs around randomly. _DO NOT STAND ON THE FIRE ORBS_.
		.' DPS him down slowly until the Amani Dragonhawk Hatchlings are dead.
		.from Jan'alai##23578
		|confirm
	step
		map Zul'Aman
		path follow strict;loop off;ants straight
		path	55.6,62.9	59.1,56.1	59.1,50.8
		path	59.0,43.1	62.3,37.6	64.8,30.0
		path	71.3,23.4	76.4,21.7
		.' Follow the path. |goto 76.4,21.7,0.5 |noway|c
		.' If you have any sort of water walk, you can reach the end waypoint without fighting much.
	step
		map Zul'Aman
		path follow strict;loop off;ants straight
		path	75.1,14.9	70.4,14.1	68.3,19.2
		path	65.2,23.1
		.' There will be packs of _Amani Lynx_ that are stealthed. Let your tank move ahead of the party.
		.' At the last waypoint, use any crowd control you have available, and pull the group to the bottom of the stairs.
		.' Kill the trolls first.
		|confirm
		'|modelnpc 24043
	step
		goto 58.0,23.3
		.' _Halazzi_
		.' He will drop a _Water Totem_, which heals and restores mana to anyone standing in it's radius. Move Halazzi out of it, and have ranged party members stand in it.
		.' At 66% and 33% he will summon a _Spirit of the Lynx_ that has random threat no matter what. Halazzi's health will jump to 100% also. Burn him down.
		.' Kill _Corrupted Lightning Totems_ as they are summoned. He only casts this while in troll form.
		.' Dispel _Flame Shock_ if possible. He only casts this while in troll form.
		.from Halazzi##23577
		|confirm
	step
		map Zul'Aman
		path follow strict;loop off;ants straight
		path	59.4,33.9	62.4,34.3	59.9,40.1
		path	58.8,45.8	58.1,53.9	64.9,53.2
		.' Follow the path up to Hex Lord Malacrass.
		.' Use crowd control on _Amani'shi Medicine Men_.
		.' When you fight _Amani'shi Berserkers_ let your tank get threat before you attack, they cannot be taunted.
		|confirm
		'|modelnpc 23581
		'|modelnpc 24374
	step
	label "hex"
		goto 71.3,53.2
		.' _Hex Lord Malacrass_
		.' He will have two adds on both his sides. They can be crowd controlled and should be if possible.
		.' If your group has no crowd control, then you will need to kill them before attacking the boss, as they do a lot of damage.
		.' _Hex Lord Malacrass_ will adopt the abilities from a random party member. Click below to see what he will do.
		.from Hex Lord Malacrass##24239+
		.get The Hex Lord's Fetish |q 29186/1 |only if havequest(29186)
		.' Death Knight: |next "dk" |confirm
		.' Druid: |next "druid" |confirm
		.' Hunter: |next "hunt" |confirm
		.' Mage: |next "mage" |confirm
		.' Paladin: |next "pally" |confirm
		.' Priest: |next "priest" |confirm
		.' Rogue: |next "rogue" |confirm
		.' Shaman: |next "shaman" |confirm
		.' Warlock: |next "lock" |confirm
		.' Warrior: |next "war" |confirm
		.' Click here to continue. |next "daa" |confirm
	step
	label "dk"
		.' He will put _Death and Decay_ on the ground. Stay out of it.
		.' Kill _Blood Worms_ if you see them.
		.' Click here to go back to the Hex Lord. |next "hex" |confirm
	step
	label "druid"
		.' He will use _Lifebloom_ which should be dispelled.
		.' He will also use _Thorns_ which should be removed from him.
		.' Click here to go back to the Hex Lord. |next "hex" |confirm
	step
	label "hunt"
		.' He will use _Explosive Trap_.
		.' He will use _Freezing Trap_.
		.' He will use _Snake Trap_. AoE down the snakes.
		.' Click here to go back to the Hex Lord. |next "hex" |confirm
	step
	label "mage"
		.' He will root nearby players with _Frost Nova_.
		.' Click here to go back to the Hex Lord. |next "hex" |confirm
	step
	label "pally"
		.' He will use _Consecration_, which is an AoE Ground Type attack. Move out of it.
		.' He will cast _Holy Light_ which needs to be interrupted.
		.' He will use _Avenging Wrath_ which can be Purged, Dispelled or you can use Spell Steal.
		.' Click here to go back to the Hex Lord. |next "hex" |confirm
	step
	label "priest"
		.' He will use _Mind Control_.
		.' He Will use _Heal_ which needs to be interrupted. 
		.' He will use _Psychic Scream_ which will fear you if you are close so stay away if you can.
		.' Click here to go back to the Hex Lord. |next "hex" |confirm
	step
	label "rogue"
		.' He will use _Blind_.
		.' He will use _Would Poison_ on the tank which needs to be dispelled (Poison).
		.' Click here to go back to the Hex Lord. |next "hex" |confirm
	step
	label "shaman"
		.' He will use _Fire Nova_ so stay away from him if you can.
		.' He will use _Healing Wave_ which needs to be interrupted.
		.' He will use _Chain Lightning_ so spread out.
		.' Click here to go back to the Hex Lord. |next "hex" |confirm
	step
	label "lock"
		.' He will cast _Rain of Fire_, simply move out of its radius.
		.' He will cast _Unstable Affliction_, _DO NOT_ dispel it.
		.' Click here to go back to the Hex Lord. |next "hex" |confirm
	step
	label "war"
		.' He will use _Spell Reflect_, be sure not to cast big spells when he's got it up.
		.' He will use _Whirlwind_, so don't be within melee range.
		.' He will use _Mortal Strike_ on the tank.
		.' Click here to go back to the Hex Lord. |next "hex" |confirm
	step
	label "daa"
		goto 73.8,53.2 
		.' Click the doors and fight the trolls that come out. 
		.' After you defeat the trolls, make your way to the steps.
		|confirm
	step
	label "final"
		.goto 90.8,52.6
		.' _Daakara_
		.' This encounter has 3 phases:
		.' Phase 1: 
		.' He will use _Whirlwind_ often. Melee should move away from him when he is casting it to avoid damage.
		.' He will also also use _Grievous Throw_ which leaves a bleed on a target. If you heal the afflicted target to full it will go away.
		.' Phase 2:
		.' He will take on two of the forms of former bosses. If Lynx is first, he will choose Dragonhawk second. If Bear is first then Eagle will be second. Click to get a detailed explaination.
		.from Daakara##23863 |only if not havequest(11196)
		|confirm |only if not havequest(11196) |next "turnin"
		.kill Daakara##23863 |q 11196/1 |only if havequest(11196) |next "turnin"	
		.' Click here for details on _Shape of the Eagle_.|next "eagle" |confirm
		.' Click here for details on _Shape of the Bear_.|next "bear" |confirm
		.' Click here for details on _Shape of the Dragonhawk_.|next "dragonhawk" |confirm
		.' Click here for details on _Shape of the Lynx_.|next "lynx" |confirm
	step
	label "eagle"
		.' He will use _Energy Storm_ which will hit players whenever they cast a spell for 12,000 nature damage.
		.' Kill _Lightning Totems_ as he places them on the battle field.
		.' He will cast _Summoned Cyclone_ which needs to be avoided at all cost.
		.' Click here to go back to the boss. |next "final" |confirm
	step
	label "bear"
		.'His main ability will be _Creeping Paralysis_, this will stun the entire party after a few seconds but can be dispelled. Mass Dispell is extremely useful but if you do not have one then dispel priority targets (Healer, Tank, Highest DPS).
		.' He will also use _Surge_, so you will all need to stack up on the boss, having 3 different ranged move out to take the surge.
		.' Click here to go back to the boss. |next "final" |confirm
	step
	label "dragonhawk"
		.' He will cast _Flame Whirl_ which increases damage from fire, this is unavoidable.
		.' He will cast _Flame Breath_ at targets in front of him. Do not be in front of him.
		.' He casts _Column of Fire_ which deals out a lot of damage, move out of it.
		.' Click here to go back to the boss. |next "final" |confirm
	step
	label "lynx"
		.' He will use _Claw Rage_ on a random party member. The tank will need to _Taunt it IMMEDIATELY_.
		.' He will also spawn a Lynx during the fight.
		.' He will also randomly use _Lynx Rush_ dealling mass damage to the target.
		.' Click here to go back to the boss. |next "final" |confirm
	step
	label "turnin"
		goto 91.6,54.8
		.talk Witch Doctor T'wansi##52925
		..turnin The Hex Lord's Fetish##29186
	step
		goto 93.0,53.6
		.talk Vol'jin##52924
		..turnin Warlord of the Amani##11196
]])