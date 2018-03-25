private ["_objectID", "_raidPos", "_which", "_target"];
_objectID = _this select 0;
_raidPos = _this select 1;
_which = _this select 2;
_target = objectFromNetId _objectID;

switch (_which) do {
	case 1: { 
		["ErrorTitleOnly", ["Failed to Defuse!"]] call ExileClient_gui_toaster_addTemplateToast; 
		Raid_defusing = false;
	};
	case 2: { 
		["ErrorTitleOnly", ["Safe was rigged!"]] call ExileClient_gui_toaster_addTemplateToast; 
		Raid_raiding = false;
	};
};

_target setVariable["RaidIsTrapped",0,true];
["UK111RaidRequest",[_objectID,"trap","",""]] call ExileClient_system_network_send;
playSound "raid";
uiSleep 1.8;
"HelicopterExploSmall" createVehicleLocal _raidPos;
