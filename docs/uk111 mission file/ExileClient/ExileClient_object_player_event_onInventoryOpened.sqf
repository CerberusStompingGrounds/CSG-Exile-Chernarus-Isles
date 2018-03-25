private["_cancelEvent","_container","_secondaryContainer","_vehicle","_box","_ownerObject","_group"];
_cancelEvent = false;
_container = _this select 1;
_secondaryContainer = _this select 2; 

try {
	if (ExileIsPlayingRussianRoulette) then {
		throw true;
	};
	if (ExileClientIsHandcuffed) then {
		throw true;
	};
	if (ExileClientActionDelayShown) then {
		throw true;
	};
	if (ExileClientIsInConstructionMode) then {
		throw true;
	};
	if ((locked _container) isEqualTo 2) then {
		throw true;
	};
	if (_container getVariable ["ExileIsLocked", 1] isEqualTo -1) then {
		throw true;
	};
	
	// Anti Theft
	if (ExilePlayerInSafezone) then {
		_vehicle = false;
		_box = false;
		if ((_container isKindOf "Air") || (_container isKindOf "Car")) then {
			_vehicle = true;
		} else {
			if (typeOf _container in ["Exile_Container_SupplyBox","Box_NATO_Wps_F","I_CargoNet_01_ammo_F"]) then {
				_box = true;
			};
		};
		if (_vehicle || _box) then {
			_ownerUID = _container getVariable["UK111_vehicle_owner",0];
			if !(_ownerUID isEqualTo 0) then {
				if !(_ownerUID isEqualTo (getPlayerUID player)) then {
					_ownerObject = objNull;
					{
						if ((getPlayerUID _x) isEqualTo _ownerUID) exitWith {
							_ownerObject = _x;
						};
					} forEach allPlayers;
					if (!isNull _ownerObject) then {
						_group = units group _ownerObject;
						if !(player in _group) then {
							if (_box) then {
								["ErrorTitleAndText",["Access Denied!","This crate is not yours or your group members! Piss Off!"]] call ExileClient_gui_toaster_addTemplateToast;
								["UK111ToastRequest",[str(name _ownerObject),str(name player),getPos player,"box"]] call ExileClient_system_network_send;
							} else {
								["ErrorTitleAndText",["Access Denied!","This vehicle is not yours or your group members! Piss Off!"]] call ExileClient_gui_toaster_addTemplateToast;
								["UK111ToastRequest",[str(name _ownerObject),str(name player),getPos player,"vehicle"]] call ExileClient_system_network_send;
							};
							[player,30] call fnc_infiSTAR_setUncon;
							throw true;
						};
					} else {
						["ErrorTitleAndText",["Access Denied!","Owner is not online! Cannot verify group members!"]] call ExileClient_gui_toaster_addTemplateToast;
						throw true;
					};
				};
			};
		};
	};
	
	// Revive
	if ((_container getVariable["reviveAntiDupe",1]) isEqualTo -1) then { throw true; };
	
	ExileClientInventoryOpened = true;
	ExileClientCurrentInventoryContainer = _container;
	ExileClientCurrentInventorySecondaryContainer = _secondaryContainer;
} catch {
	_cancelEvent = _exception;
};
_cancelEvent