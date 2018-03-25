private ["_target","_objectID", "_getLucky", "_raidPos", "_fixed", "_abort", "_counter", "_pcnt", "_isCancelled", "_fixIt"];
_target = cursorTarget;
_objectID = netId _target;
_getLucky = floor(random 100);
_raidPos = getPosATL player;
_fixed = Raid_defuse_time / 10;

raid_fnc_keyPressed = {
	switch (_this select 1) do {
		case 28: { player setVariable ["DefuseIsCancelled",-1]; };
		case 156: { player setVariable ["DefuseIsCancelled",-1]; };
	};
};

Raid_defusing = true;
player enableSimulation true;

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
	progressText ctrlSetPosition [ 0.3885, 1.026, 0.43, 0.04 ];
	progressText ctrlCommit 0;
};
_abort = findDisplay 46 displayAddEventHandler ["KeyDown","_this call raid_fnc_keyPressed"];
["SuccessTitleOnly", ["Starting defusing sequence!"]] call ExileClient_gui_toaster_addTemplateToast;
["SuccessTitleOnly", ["Press ENTER to cancel."]] call ExileClient_gui_toaster_addTemplateToast;

[] execVM "UK111\raid\defuse.sqf";
_counter = Raid_defuse_time * 10;
_pcnt = "%";

for "_i" from 1 to _counter do {
	_isCancelled = player getVariable["DefuseIsCancelled",1] isEqualTo -1;
	_fixIt = _i / _fixed;
	if (_isCancelled) exitWith {};
	if (player distance _raidPos > 5) exitWith { ["ErrorTitleOnly", ["Failed, you have moved to far away!"]] call ExileClient_gui_toaster_addTemplateToast; };
	(uiNamespace getVariable "progressBar") progressSetPosition (_i/_counter); 
	(uiNamespace getVariable "progressText") ctrlSetStructuredText parseText format["Defuse Progress: %1%2", floor _fixIt, _pcnt];
	if !(alive player) exitWith {};
	sleep 0.1;
};
ctrlDelete (uiNamespace getVariable "progressBar");
ctrlDelete (uiNamespace getVariable "progressBox");
ctrlDelete (uiNamespace getVariable "progressText");
ctrlDelete (uiNamespace getVariable "progressTextBox");
player switchMove "StandUp";

_isCancelled = player getVariable ["DefuseIsCancelled",1] isEqualTo -1;
(findDisplay 46) displayRemoveEventHandler ["KeyDown", _abort];

if (_isCancelled) exitWith {
	Raid_defusing = false;
	player setVariable ["DefuseIsCancelled",0];	
	["ErrorTitleOnly", ["Sequence cancelled!"]] call ExileClient_gui_toaster_addTemplateToast;
	player addItem Raid_trap_defuser;
};

if !(alive player) exitWith { Raid_defusing = false; };

if (player distance _raidPos >= 5) exitWith {
	player playActionNow "GestureNo";
	["ErrorTitleOnly", ["You must remain within 5m!"]] call ExileClient_gui_toaster_addTemplateToast;
	Raid_defusing = false;	
	player addItem Raid_trap_defuser;
};

if (Raid_defuse_chance < _getLucky) then {
	player playActionNow "GestureNo";
	[_objectID, _raidPos, 1] execVM "UK111\raid\detonate.sqf";
	Raid_defusing = false;
} else {
	player playActionNow "GestureYes";
	_target setVariable["RaidIsTrapped",0,true];
	player playActionNow "GestureYes";
	player addItem Raid_trap_defuser;
	player addMagazine Raid_safe_trap;
	["SuccessTitleOnly", ["Successful Defuse!"]] call ExileClient_gui_toaster_addTemplateToast;
	Raid_defusing = false;
	["UK111RaidRequest",[_objectID,"trap","",""]] call ExileClient_system_network_send;
};
Raid_defusing = false;
