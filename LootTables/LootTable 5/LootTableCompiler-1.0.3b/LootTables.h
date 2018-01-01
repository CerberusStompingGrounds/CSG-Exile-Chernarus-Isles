/*
	///////////////////////////////////////////////////////////////////////////////
	// Class Names
	///////////////////////////////////////////////////////////////////////////////

	Remember that item class names, group names and loot table names cannot 
	contain spaces. Also be 100% sure to have the exact same name as in Arma,
	as they are *case sensive*.

	///////////////////////////////////////////////////////////////////////////////
	// Item Groups
	///////////////////////////////////////////////////////////////////////////////

	You can link one group of items to loot tables.
	One item should only be in one group.

	Syntax:
	= <Group Name>
	<Spawn Chance Within Group>,<Item Class Name>

	///////////////////////////////////////////////////////////////////////////////
	// Propability
	///////////////////////////////////////////////////////////////////////////////

	<Spawn Chance>,<Item>

	10, Banana
	20, Tomato
	30, Cherry

	Sum of chances:
	10 + 20 + 30 = 60 = 100%

	Spawn chances:
	Banana	10 : 60 = 10 * 100 / 60 = 16.67%
	Tomato	20 : 60 = 20 * 100 / 60 = 33.33%
	Cherry	30 : 60 = 30 * 100 / 60 = 50%

	In words: 
	If Exile should spawn an item of the above group, it has a 33.33%
	chance to spawn a Banana.

	///////////////////////////////////////////////////////////////////////////////
	// Loot Tables
	///////////////////////////////////////////////////////////////////////////////

	Defines which item group spawns in which building type. The loot table itself
	is linked with a building in exile_server_config.pbo/config/CfgBuildings. Spawn
	chances work like for items.

	Syntax:
	> <Loot Table Name>
	<Spawn Chance Within Loot Table>,<Group Name>
*/



/*
	Loot Tables
*/

///////////////////////////////////////////////////////////////////////////////
// Slums/Ghetto, Farms, Village Houses, Castle etc.
// Spawn Guerilla things :)
///////////////////////////////////////////////////////////////////////////////
> CivillianLowerClass
5, MedicalItems
5, Chemlights
5, RoadFlares
5, Trash
10, Food
10, Drinks
10, CivilianWeapons
10, CivilianItems
10, CivilianClothing
10, CivilianBackpacks
10, CivilianVests
10, CivilianHeadgear

///////////////////////////////////////////////////////////////////////////////
// Apartments, Offices etc.
///////////////////////////////////////////////////////////////////////////////
> CivillianUpperClass
5, CivilianWeapons
5, RifleAttachments
5, GuerillaItems
5, GuerillaClothing
5, GuerillaBackpacks
5, GuerillaVests
5, GuerillaHeadgear
10, MedicalItems
10, Chemlights
10, RoadFlares
10, Trash
10, Food
10, Drinks

///////////////////////////////////////////////////////////////////////////////
// Kiosks, Supermarkets etc.
///////////////////////////////////////////////////////////////////////////////
> Shop
5, CivilianWeapons
5, CivilianItems
5, CivilianClothing
5, CivilianBackpacks
5, CivilianVests
5, CivilianHeadgear
5, MedicalItems
10, Chemlights
10, RoadFlares
10, Trash
35, Food
35, Drinks
1, Electronics

///////////////////////////////////////////////////////////////////////////////
// Construction Sites, Warehouses, Research etc.
///////////////////////////////////////////////////////////////////////////////
> Industrial
25, Vehicle
25, IndustrialItems
30, Chemlights
30, RoadFlares
5, SmokeGrenades
15, Food
10, MedicalItems
15, Drinks

///////////////////////////////////////////////////////////////////////////////
// Factories
///////////////////////////////////////////////////////////////////////////////
> Factories
30, Vehicle
30, Chemlights
10, CivilianWeapons
15, RoadFlares
5, RifleAttachments
10, GuerillaClothing
10, GuerillaBackpacksBackpacks
10, GuerillaVests
10, GuerillaHeadgear
1, LMG
1, LMGAmmo
15, Food
15, Drinks
10, MedicalItems

///////////////////////////////////////////////////////////////////////////////
// Fuel Stations, Garages, Workshops etc.
///////////////////////////////////////////////////////////////////////////////
> VehicleService
10, Pistols
30, Vehicle
15, Unused
10, PistolAmmo
5, CivilianItems
5, CivilianClothing
5, CivilianBackpacks
5, CivilianVests
5, CivilianHeadgear
10, MedicalItems
10, Chemlights
10, RoadFlares
10, Trash
25, Food
25, Drinks

///////////////////////////////////////////////////////////////////////////////
// Towers, Barracks, Hangars etc.
///////////////////////////////////////////////////////////////////////////////
> Military
10, Pistols
10, PistolAmmo
10, SMG
10, SMGAmmo
30, Rifles
30, RifleAmmo
30, RifleAttachments
15, LMG
15, LMGAmmo
5, Snipers
5, SniperAmmo
10, SniperAttachments
5, HandGrenades
1, Explosives
15, MilitaryClothing
15, MilitaryBackpacks
15, MilitaryVests
15, MilitaryHeadgear
1, Ghillies
30, MedicalItems
10, IndustrialItems
30, Vehicle
30, Chemlights
30, RoadFlares
30, SmokeGrenades
30, Restraints
2, Electronics
20, Trash

///////////////////////////////////////////////////////////////////////////////
// Hospital, Medevac etc. (Does not spawn on Altis!)
///////////////////////////////////////////////////////////////////////////////
> Medical
40, Trash
60, MedicalItems

///////////////////////////////////////////////////////////////////////////////
// Light Houses + Life Guard Towers + Castles
///////////////////////////////////////////////////////////////////////////////
> Tourist
20, CivilianItems
20, CivilianClothing
20, CivilianBackpacks
20, CivilianVests
20, CivilianHeadgear
10, MedicalItems
11, Chemlights
11, RoadFlares
11, Trash
25, Food
25, Drinks

///////////////////////////////////////////////////////////////////////////////
// Ghost Hotel Buildings
///////////////////////////////////////////////////////////////////////////////
> Radiation
20, Food
20, Drinks
30, Pistols
30, PistolAmmo
39, SMG
39, SMGAmmo
42, Rifles
42, RifleAmmo
42, RifleAttachments
40, LMG
40, LMGAmmo
38, Snipers
38, SniperAmmo
35, SniperAttachments
30, HandGrenades
34, Explosives
40, MilitaryClothing
40, MilitaryBackpacks
40, MilitaryVests
40, MilitaryHeadgear
25, Ghillies
30, MedicalItems
40, IndustrialItems
26, Vehicle
37, Chemlights
37, RoadFlares
38, SmokeGrenades
34, Restraints
2, Electronics
20, Trash