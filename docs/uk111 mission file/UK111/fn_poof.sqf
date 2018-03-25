if (!hasInterface || isServer) exitWith {};
private ["_flag", "_result1", "_result2", "_result3"];
_flag = _this select 0;
if ((getPlayerUID player) isEqualTo (_flag getVariable["ExileOwnerUID", ""])) then {
	_result1 = ["Are you sure that you want to delete everything inside this territory?", "Confirm", "Yes", "Abort"] call BIS_fnc_guiMessage;
	waitUntil {!isNil "_result1"};
	if !(_result1) exitWith {};
	_result2 = ["All objects inside this territory will be deleted on next restart?", "Confirm", "I get it", "Abort"] call BIS_fnc_guiMessage;
	waitUntil {!isNil "_result2"};
	if !(_result2) exitWith {};
	_result3 = ["Only flag is refunded(if not stolen)! Everything else is deleted regardless if you rebuild the flag here or not!", "Confirm", "DO IT", "Abort"] call BIS_fnc_guiMessage;
	waitUntil {!isNil "_result3"};
	if !(_result3) exitWith {};
	["UK111PoofRequest",[netID _flag]] call ExileClient_system_network_send;
} else {
	["ErrorTitleOnly",["Only owner of this flag can do this!"]] call ExileClient_gui_toaster_addTemplateToast;
};
