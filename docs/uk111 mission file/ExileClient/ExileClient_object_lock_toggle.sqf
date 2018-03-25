private["_condition","_object","_thief","_ownerUID","_ownerObject","_group","_known","_pincode"];
_condition = _this;
_object = ExileClientInteractionObject;
if (ExileLockIsShown) exitWith {};

// AntiTheft
_thief = false;
_notOnline = false;
if (ExilePlayerInSafezone) then {
	_ownerUID = _object getVariable["UK111_vehicle_owner",0];
	if !(_ownerUID isEqualTo 0) then {
		if !(_ownerUID isEqualTo (getPlayerUID player)) then {
			_ownerObject = objNull;
			{
				if ((getPlayerUID _x) isEqualTo _ownerUID) exitWith { _ownerObject = _x; };
			} forEach allPlayers;
			if (!isNull _ownerObject) then {
				_group = units group _ownerObject;
				if !(player in _group) then { _thief = true; };
			} else {
				_notOnline = true;
			};
		};
	};
};
if (_thief) exitWith { ["ErrorTitleAndText",["Access Denied!","This vehicle is not yours or your group members!"]] call ExileClient_gui_toaster_addTemplateToast; };
if (_notOnline) exitWith { ["ErrorTitleAndText",["Access Denied!","Owner of this vehicle is not online! Cannot verify group members!"]] call ExileClient_gui_toaster_addTemplateToast; };
// AntiTheft

ExileLockIsShown = true;
_known = _object getVariable ["ExileAlreadyKnownCode",""];
if ((_known isEqualTo "") || ExileClientPlayerIsInCombat) then {
	_pincode = 4 call ExileClient_gui_keypadDialog_show;
} else {
	_pincode = _known;
};
if!(_pincode isEqualTo "") then {
	["lockToggle",[netId _object,_pincode,_condition]] call ExileClient_system_network_send;
};
call ExileClient_gui_interactionMenu_unhook;
ExileLockIsShown = false;
true