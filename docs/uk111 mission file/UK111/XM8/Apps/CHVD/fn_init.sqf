if (!hasInterface || isServer) exitWith {};
[] spawn {
	waitUntil {time > 0};
	CHVD_maxView = 5000;
	CHVD_maxObj = 5000;
	CHVD_allowNoGrass = true;	
	CHVD_footSyncObj = true;
	CHVD_foot = 1000 min 5000;
	CHVD_footObj = 1000 min 5000;
	CHVD_footTerrain = 25;
	waitUntil {!isNull player};
	waitUntil {!isNull findDisplay 46};
	[nil, false] call CHVD_fnc_updateSettings;
};