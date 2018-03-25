if (!hasInterface || isServer) exitWith {};
private ["_requiredItems", "_playerItems", "_hasItems", "_missing", "_position", "_playerUID", "_canBuild", "_message", "_maximumTerritoryRadius", "_nearestFlags", "_nearestsHelipads", "_radius", "_buildRights"];
closeDialog 0;

if (isNull objectParent player) then {
	_requiredItems = ["Exile_Item_MetalPole","Exile_Item_MetalBoard","Exile_Item_SafeKit"];
	_playerItems = player call ExileClient_util_playerCargo_list;
	_hasItems = true;
	_missing = "";
	{
		if !(_x in _playerItems) exitWith {
			_hasItems = false;
			_missing = _x;
		};
	} forEach _requiredItems;
	
	if (_hasItems) then {
		_position = getPos player;
		_playerUID = getPlayerUID player;
		_canBuild = true;
		_message = "";
		_maximumTerritoryRadius = getNumber (missionConfigFile >> "CfgTerritories" >> "maximumRadius");
		_nearestFlags = (nearestObjects [_position, ["Exile_Construction_Flag_Static"], _maximumTerritoryRadius]);
		_nearestsHelipads = (nearestObjects [_position, ["Land_HelipadCivil_F"], _maximumTerritoryRadius]);
		
		if (count _nearestsHelipads > 1) then {
			_canBuild = false;
			_message = "You can build max two helipads in your territory!";
		};

		if (_nearestFlags isEqualTo []) then {
			_canBuild = false;
			_message = "You are not in your territory!";
		} else {
			{
				_radius = _x getVariable ["ExileTerritorySize", -1];
				if ((_position distance (getPos _x)) < _radius) then {
					_buildRights = _x getVariable ["ExileTerritoryBuildRights", []];
					if !(_playerUID in _buildRights) then {
						_canBuild = false;
						_message = "You have no building rights here!";
					};
				} else {
					_canBuild = false;
					_message = "You are not in your territory!";
				};
			} forEach _nearestFlags;
		};

		if !(_canBuild) exitWith { ["ErrorTitleOnly", [_message]] call ExileClient_gui_toaster_addTemplateToast; };
		
		_requiredItems spawn {
			private ["_result", "_removed", "_remove", "_missing", "_missingTXT"];
			player enableSimulation false;
			_result = ["Helipad is created where you stand and it's not movable!", "Confirm", "Okay", "Abort"] call BIS_fnc_guiMessage;
			waitUntil { !isNil "_result" };
			player enableSimulation true;
			if (_result) then {
				_removed = true;
				{
					_remove = [player, _x] call ExileClient_util_playerCargo_remove;
					if !(_remove) exitWith {
						_removed = false;
						_missing = _x;
					};
				} forEach _this;
				
				if (_removed) then {
					UKexile_buildHelipad = [ExileClientSessionId, player];
					publicVariableServer "UKexile_buildHelipad";
				} else {
					_missingTXT = format["Missing %1!", getText(configFile >> "CfgMagazines" >> _missing >> "displayName")];
					["ErrorTitleOnly",[_missingTXT]] call ExileClient_gui_toaster_addTemplateToast;
				};
			};
		};
	} else {
		["ErrorTitleOnly",["You need 1x(Safe), 1x(Metal Pole) and 1x(Metal Board) for garage spawn point!"]] call ExileClient_gui_toaster_addTemplateToast;
		systemChat format["Missing one more %1", getText(configFile >> "CfgMagazines" >> _missing >> "displayName")];
	};
} else {
	["ErrorTitleOnly",["You cannot do this while in a vehicle!"]] call ExileClient_gui_toaster_addTemplateToast;
};
