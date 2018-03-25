if (!hasInterface || isServer) exitWith {};
_updateType = [_this, 0, 0, [0]] call BIS_fnc_param;
if (_updateType == 1 || _updateType == 0 || _updateType == 3) then { setViewDistance CHVD_foot; };
if (_updateType == 2 || _updateType == 0 || _updateType == 3) then { setObjectViewDistance CHVD_footObj; };
if (_updateType == 0) then { setTerrainGrid CHVD_footTerrain; };