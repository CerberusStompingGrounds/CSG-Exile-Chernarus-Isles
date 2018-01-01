/**
 * config
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
class CfgPatches
{
	class exile_server_config
	{
		requiredVersion = 0.1;
		requiredAddons[] = {};
		units[] = {};
		weapons[] = {};
		magazines[] = {};
		ammo[] = {};
	};
};
#include "CfgBuildings.hpp"
#include "CfgExileLootServer.hpp"
class CfgSettings
{
	// Community Base Addons
	class CBA 
	{
		// Set this to 1 if you want to have CBA support
		useStackedEH = 1;
		iReallyWantToGetHackedAndImRetarded = 0;
	};
	// GARBAGE COLLECTOR
	class GarbageCollector
	{
		class Ingame 
		{
			// Dropped items without fissix
			class GroundWeaponHolder
			{
				lifeTime = 10;
				interval = 5;
			};
			// Dropped items with fissix
			class WeaponHolderSimulated
			{
				lifeTime = 10;
				interval = 5;
			};
			// Corpses and wrecks
			class AllDead 
			{
				lifeTime = 15;
				interval = 5;
			};
			// Loot spawned inside a building
			class Loot 
			{
				lifeTime = 8;
				interval = 1;
			};
			// Never touch this or you will break your sever!
			class Groups 
			{
				interval = 0.5;
			};
		};
		class Database 
		{
			// Remove all deleted items from the database after X days
			permanentlyDeleteTime = 7;		
			// Remove all territories (and contructions + containers in it) that were not paid after X days
			territoryLifeTime = 8;
			// Remove all containers outside of territories that have not been used for X days
			// Example: Tents
			containerLifeTime = 8;
			// Remove all constructions outside of territories that are older than X days or not moved for X days 
			// Example: Work Benches
			constructionLifeTime = 8;
			// Remove all vehicles that were not moved/used for X days
			vehicleLifeTime = 5;
			
			// Set safe as abandoned
			abandonedTime = 8;
			
			// Deletes a base X days after the flag is stolen if the ransom money isn't paid
			stolenFlagLifeTime = 3;
			
			// Sets door & safe pins to 0000 and marks safes to abandoned X days after the flag is stolen if the ransom money isn't paid
			unlockLifeTime = 8;
		};
	};
	// RESPECT
	class Respect
	{
		/**
		* Defines the factor of respect you gain for every pop tab in revenue
		*
		* Default: Get 1 respect for every 10 pop tabs 
		*/
		tradingRespectFactor = 0.3;
		
		/**
		* Defines the the minimum amount of Respect earned/lost for a kill
		*/
		minRespectTransfer = 50;
		/**
		* Defines the amount of respect earned/lost for certain types of frags
		*/
		class Frags
		{
			domination = 80;			// Keeps killing the same guy
			letItRain = 150;			// MG, also vehicle MGs
			humiliation = 300;			// Axe
			passenger = 400;			// Out of car/chopper/boat
			roadKill = 200;				// :)
			bigBird = 600;				// Roadkill, but with chopper/plane
			chuteGreaterChopper = 1000;	// Someone flies into chute and chopper/plane explodes	
		};
		class Percentages 
		{
			unlucky = 1; // Dying for an unknown reason costs you 1% respect
			crash = 1; // Crashing your car costs you 1% respect
			suicide = 2; // Comitting suicide costs you 2% of your respect
			friendyFire = 5; // Friendly fire costs you 3% 
			npc = 4; // Being killed by an NPC costs you 4%
			bambiKill = 5; // Killing a bambi costs you 5%
			frag = 5; // Killing someone will get you 5% and remove 5% from the victim
		};
		class Handcuffs 
		{
			trapping = -500;					// A handcuffs B
			breakingFree = 1000; 			// B broke free
			releasedByHero = 1000; 			// C releases B
			releasedByHostageTaker = 500; 	// A releases B	
		};
		class Bonus
		{
			// Bonus per full 100m 
			per100mDistance = 10;
			// First blood after server restart
			firstBlood = 100;
			// If you kill someone while you are in your own territory
			homie = 5;
			// If you kill someone who is in his own territory
			raid = 20;
			/*
				Example with killstreak = 50
			*/
			killStreak = 50;
			// Kills within this amount of seconds stack (default: 2 minutes)
			killStreakTimeout = 120;
		};
	};
	class KillFeed
	{
		showKillFeed = 1;
	};
	// PLAYER SPAWN CONFIGURATION
	class BambiSettings
	{
		/**
		 * Loadout of new bambi players
		 */
		loadOut[] = 
		{
			"Exile_Item_XM8"
		};
		/**
		 * Enables or disables parachute spawning.
		 */
		parachuteSpawning = 0;
		/**
		 * Enables or disables halo jumping.
		 */
		haloJump = 1;
		/**
		 * Parachute drop height in meters. 
		 */
		parachuteDropHeight = 1000;
		/**
		 * Number of minutes where a fresh spawned player remains in the
		 * bambi state. It will end the bambi state after this timeout
		 * expired or when they pick up their first weapon. Whatever
		 * happens first.
		 */
		protectionDuration = 2;
		/**
		 * Radius of spawn zones around the center of spawn zone markers.
		 */
		spawnZoneRadius = 1000;
		/**
		 * These vehicles spawn on server restart close to spawn zones.
		 * They are non-persistent and will despawn on server restart.
		 * Basically they are just used to get away from the spawn zone
		 * faster.
		 *
		 * {Number of vehicles *per* spawn zone, vehicle class name}
		 */
		spawnZoneVehicles[] =
		{
			{2, "B_G_Quadbike_01_F"},
			{2, "Exile_Car_Lada_Green"},
			{2, "Exile_Car_Lada_Hipster"}
		};
	};
	// VEHICLE SPAWN CONFIGURATION
	class VehicleSpawn
	{
		vehiclesGridSize = 2200;
		/**
		* Vehicle ammount per grid
		* kinda self explanitory
		*/
		vehiclesGridAmount = 2;
		/**
		* Creates global markers for vehicle spawn tweeking,
		* after you are satisfied with vehicle ammount and spread set this to 0.
		*/
		vehiclesDebugMarkers = 0;
		/**
		* The server will apply random damage up to this value when spawning a vehicle.
		*/
		damageChance = 20; // 20% chance for a vehicle HITPOINT to be damaged
		maximumDamage = 0.9;
		randomizeFuel = 1;
		fuel = 1;
		/**
		 * Works exactly the same as the fuel setting ^
		 */
		randomizeAmmo = 1;
		ammo = 1;
		// Stuff to spawn on water
		water[] = {};
		// Stuff to spawn on roads
		ground[] = 
		{
			"Exile_Car_Tractor_Red",
			"B_G_Quadbike_01_F",
			"Exile_Car_Golf_Red",
			"Exile_Car_Lada_Green",
			"Exile_Car_Octavius_White",
			"C_Offroad_01_F",
			"Exile_Car_SUVXL_Black",
			"Exile_Car_Icarus_Blue",
			"Exile_Car_Volha_White",
			"Exile_Car_Lada_Taxi",
			"RHS_UAZ_MSV_01",
			"Exile_Car_V3S_Covered",
			"rhs_kamaz-5350_flatbed_cover"
		};
		/**
		 * Enables or disables nightvision optics on ALL vehicles
		 */
		nightVision = 1;
		/**
		 * Enables or disables thermal optics on ALL vehicles
		 */
		thermalVision = 0;
		/**
		 * Set this to 1 to unlock vehicles on server boot if they are in safe zones
		 */
		unlockInSafeZonesAfterRestart = 1;	
	};
	class Weather
	{
		/*
			You can define multiple "keyframes" for the weather to change. The server will pick
			a keyframe randomly to simulate the weather. It will change the weather-keyframes
			based on the following interval
		*/
		interval = 30;
		/*
			Add the keyframes here. The server will pick one random, so if you want one 
			weather type of be more dominant compared to others, add it multiple times
		*/
		keyframes[] = {"Overcast1", "Overcast2", "Overcast3", "Overcast4", "LightRain1", "LightRain2", "Rain1", "Rain2", "Cloudy", "Thunderstorm", "Rain"}; 
		class Overcast1
		{
			fogValue = 0;
            fogDecay = 0;
            fogBase = 5;
            overcast = 1;
            waves = 0.2;
            wind = 0.25;
            gusts = 0.1;
            rain = 0;
            lightnings = 0;
            rainbows = 0;
		};
		class Overcast2
		{
			fogValue = 0;
            fogDecay = 0;
            fogBase = 5;
            overcast = 1;
            waves = 0.2;
            wind = 0.25;
            gusts = 0.1;
            rain = 0;
            lightnings = 0;
            rainbows = 0;
		};
		class Overcast3
		{
			fogValue = 0;
            fogDecay = 0;
            fogBase = 5;
            overcast = 1;
            waves = 0.2;
            wind = 0.25;
            gusts = 0.1;
            rain = 0;
            lightnings = 0;
            rainbows = 0;
		};
		class Overcast4
		{
			fogValue = 0;
            fogDecay = 0;
            fogBase = 5;
            overcast = 1;
            waves = 0.2;
            wind = 0.25;
            gusts = 0.1;
            rain = 0;
            lightnings = 0;
            rainbows = 0;
		};
		class LightRain1
		{
			fogValue = 0.1;
            fogDecay = 0.1;
            fogBase = 0;
            overcast = 1;
            waves = 0.4;
            wind = 0.5;
            gusts = 0.2;
            rain = 0.2;
            lightnings = 0;
            rainbows = 0;
		};
		class LightRain2
		{
			fogValue = 0.1;
            fogDecay = 0.1;
            fogBase = 0;
            overcast = 1;
            waves = 0.4;
            wind = 0.5;
            gusts = 0.2;
            rain = 0.2;
            lightnings = 0;
            rainbows = 0;
		};
		class Rain1
		{
			fogValue = 0.1;
            fogDecay = 0;
            fogBase = 0;
            overcast = 1;
            waves = 0.6;
            wind = 0.6;
            gusts = 0.1;
            rain = 0.6;
            lightnings = 0;
            rainbows = 0;
		};
		class Rain2
		{
			fogValue = 0.1;
            fogDecay = 0;
            fogBase = 0;
            overcast = 1;
            waves = 0.6;
            wind = 0.6;
            gusts = 0.1;
            rain = 0.6;
            lightnings = 0;
            rainbows = 0;
		};
		class Thunderstorm
		{
			fogValue = 0.15;
            fogDecay = 0;
            fogBase = 0;
            overcast = 1;
            waves = 0.8;
            wind = 0.8;
            gusts = 0.5;
            rain = 1;
            lightnings = 1;
            rainbows = 0;
		};
	};
	class Time
	{
		useRealTime = 0;
		useStaticTime = 1;
		staticTime[] = {2017,5,31,5,00};
	};
	class RCON
	{
		/*
			Note that for this to work you need to have serverCommandPassowrd defined in config.cfg and BE enabled
		*/
		// This needs to match config.cfg serverCommandPassword
		serverPassword = "StickBug";
		// Autolocks server until its ready to accept players
		useAutoLock = 1;
		// Server will autoLock at that time before restart (minutes)
		restartAutoLock = 5;
		/*
			Number of hours and minutes of your restart period.
		*/
		restartTimer[] = {2, 59};
		/*
			Kicks players before restart to prevent gear loss.
		*/
		useAutoKick = 1;
		/*
			Number of minutes before the server kicks players that did
			not disconnect before the restart. Should at least be two
			minutes!
		*/
		kickTime = 2;
		useRestartMessages = 1;
		/*
			Number of minutes before the restart to inform your players.
			Only use full minutes here. Value like 5.5 have not been tested.
		*/
		restartWarningTime[] = {20, 15, 10, 5, 4, 3, 2}; 
		useShutdown = 1;
	};
	class ServerSettings
	{
		serverFSM = "exile_server\fsm\main.fsm";
		devFriendyMode = 1;
		devs[] = 
		{
			{"76561197985241690","[EXILE|DEV] Eichi"},
			{"76561198022879703","[EXILE|DEV] Grim"},
			{"76561198075905447","[EXILE|DEV] Vishpala"},
			{"76561197968613061","[EXILE|DEV] Niuva"},
			{"76561198027700602","[EXILE|DEV] Eraser1"},
			{"76561198048317094","[EXILE|DEV] HappyDayZ"},
			{"76561198105900802","[EXILE|DEV] Psycho"},
			{"76561198004111275","[EXILE|DEV] Maca134"},
			{"76561198037177305","[EXILE|DEV] Wolfkill"}
		};
	};
	class Events 
	{
		enabledEvents[] = {"AbandonedSafe"}; 
		class EarthQuake 
		{
			type = "spawn";
			function = "ExileServer_system_event_earthQuake_start";
			minTime = 60;
			maxTime = 180;
			minimumPlayersOnline = 1;
		};
		class SupplyBox 
		{
			type = "spawn";
			function = "ExileServer_system_event_supplyBox_start";
			minTime = 60; // minutes
			maxTime = 180; // minutes
			minimumPlayersOnline = 10;
			dropRadius = 500; // 500m around an airport (including the main airport on Altis!)
			dropAltitude = 100; // altitude of the drop
			markerTime = 10; // minutes
			types[] = {"Beer"};
			class BoxTypes
			{
				class Beer 
				{
					items[] = 
					{
						{"Exile_Item_Beer", 24}
					};
				};
			};
		};
		class AbandonedSafe
		{
			type = "spawn";
			function = "ExileServer_system_event_abandonedSafe_start";
			minTime = 60; // minutes
			maxTime = 120; // minutes
			minimumPlayersOnline = 0;
			markerTime = 15; // minutes
		};
		class AmbientFlyOver
		{
			type = "call";
			function = "ExileServer_system_event_ambientFlyOver_start";
			minTime = 30; // minutes
			maxTime = 90; // minutes
			minimumPlayersOnline = 1;
		};
	};
	class Logging
	{
		traderLogging = 1;
		deathLogging = 1;
		territoryLogging = 1;
	};
};