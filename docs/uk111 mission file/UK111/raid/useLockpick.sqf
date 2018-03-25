private ["_target", "_objectID", "_isTrappedObject", "_type", "_timer", "_chance", "_nearestFlag", "_territoryName", "_diceRoll", "_raidPos", "_fixed", "_display", "_counter", "_fixIt", "_raidCount"];
disableSerialization;
_target = _this select 0;
_objectID = netId _target;
_isTrappedObject = (_target getVariable["RaidIsTrapped",1]) isEqualTo -1;
_type = _this select 1;
_timer = _this select 2;
_chance = _this select 3;
_nearestFlag = _this select 4;
_territoryName = _nearestFlag getVariable["ExileTerritoryName","Unknown"];
if !(Raid_lockpick_classname in magazines player) exitWith {
	["ErrorTitleOnly", [Raid_no_lockpick]] call ExileClient_gui_toaster_addTemplateToast;
	Raid_raiding = false;
};
player removeMagazine Raid_lockpick_classname;
_diceRoll = floor(random 100);
_raidPos = getPosATL player;
_fixed = _timer / 10;
["UK111RaidRequest",[_objectID,_type,"attempt",""]] call ExileClient_system_network_send;

[] execVM "UK111\raid\keypad.sqf";
player playAction "Crouch";

with uiNamespace do {
	progressTextBox = findDisplay 46 ctrlCreate ["RscStructuredText", -1];
	progressTextBox ctrlSetPosition [ -0.109, 1.0242, 1.215, 0.0515 ];
	progressTextBox ctrlSetBackgroundColor [0,0,0,1];
	progressTextBox ctrlCommit 0;
	
	progressBar = findDisplay 46 ctrlCreate ["RscProgress", -1]; 
	progressBar ctrlSetPosition [ -0.1, 1.034145, 1.1975, 0.0319 ]; 
	progressBar progressSetPosition 0; 
	progressBar ctrlCommit 0;
	
	progressBox = findDisplay 46 ctrlCreate ["RscFrame", -1]; 
	progressBox ctrlSetPosition [ -0.101, 1.032, 1.201, 0.0365 ];
	progressBox progressSetPosition 0; 
	progressBox ctrlCommit 0;
	
	progressText = findDisplay 46 ctrlCreate ["RscStructuredText", -1];
	progressText ctrlSetPosition [ 0.3835, 1.026, 0.43, 0.04 ];
	progressText ctrlCommit 0;
};

["SuccessTitleOnly",["Starting lock picking sequence..."]] call ExileClient_gui_toaster_addTemplateToast;
["SuccessTitleOnly",["Press RED button to flee"]] call ExileClient_gui_toaster_addTemplateToast;
["SuccessTitleOnly",["Stay within 20m"]] call ExileClient_gui_toaster_addTemplateToast;

if (_isTrappedObject) exitWith {
	disableSerialization;
	_display = uiNameSpace getVariable ["RscExileKeypad", displayNull];
	_display closeDisplay 0;
	ctrlDelete (uiNamespace getVariable "progressBar");
	ctrlDelete (uiNamespace getVariable "progressBox");
	ctrlDelete (uiNamespace getVariable "progressText");
	ctrlDelete (uiNamespace getVariable "progressTextBox");
	[_objectID, _raidPos, 2] execVM "UK111\raid\detonate.sqf";
	["UK111RaidRequest",[_objectID,_type,"failed",_territoryName]] call ExileClient_system_network_send;
	Raid_raiding = false;
};

_counter = _timer * 10;
_timer execVM "UK111\raid\animate.sqf";

for "_i" from 1 to _counter do {
	_fixIt = _i / _fixed;
	if (player distance _raidPos > 20) exitWith {
		["ErrorTitleOnly", ["Failed, you have moved too far away!"]] call ExileClient_gui_toaster_addTemplateToast;
	};
	if !(alive player) exitWith {};
	(uiNamespace getVariable "progressBar") progressSetPosition (_i/_counter); 
	(uiNamespace getVariable "progressText") ctrlSetStructuredText parseText format["Lock Picking Progress: %1%2  (Press X to flee)",floor(_fixIt),"%"];
	if (!Raid_raiding) exitWith {
		["ErrorTitleOnly", ["Aborted, knife broke!"]] call ExileClient_gui_toaster_addTemplateToast;
	};
	sleep 0.1;
};

disableSerialization;
_display = uiNameSpace getVariable ["RscExileKeypad", displayNull];
_display closeDisplay 0;
ctrlDelete (uiNamespace getVariable "progressBar");
ctrlDelete (uiNamespace getVariable "progressBox");
ctrlDelete (uiNamespace getVariable "progressText");
ctrlDelete (uiNamespace getVariable "progressTextBox");
player switchAction "StandUp";

if !(alive player) exitWith {
	Raid_raiding = false;
	["UK111RaidRequest",[_objectID,_type,"failed",_territoryName]] call ExileClient_system_network_send;
};

if (player distance _raidPos > 19) exitWith {
	player playActionNow "GestureNo";
	["ErrorTitleOnly", ["You must remain within 20m!"]] call ExileClient_gui_toaster_addTemplateToast;
	Raid_raiding = false;
	["UK111RaidRequest",[_objectID,_type,"failed",_territoryName]] call ExileClient_system_network_send;	
};

if (_chance < _diceRoll || !Raid_raiding) then {
    player playActionNow "GestureNo";
	["ErrorTitleOnly",["Lock picking Failed!"]] call ExileClient_gui_toaster_addTemplateToast;
	["UK111RaidRequest",[_objectID,_type,"failed",_territoryName]] call ExileClient_system_network_send;
} else {
	player playActionNow "GestureYes";
	player addMagazine Raid_lockpick_classname;
	["SuccessTitleOnly",["Lock picking successful!"]] call ExileClient_gui_toaster_addTemplateToast;
	["UK111RaidRequest",[_objectID,_type,"success",_territoryName]] call ExileClient_system_network_send;
	if (_type isEqualTo "safe") then {
		if (!isNull _nearestFlag) then {
			_raidCount = _nearestFlag getVariable["UK111_raided",0];
			_nearestFlag setVariable["UK111_raided",(_raidCount + 1),true];
		};
	};
};
Raid_raiding = false;
