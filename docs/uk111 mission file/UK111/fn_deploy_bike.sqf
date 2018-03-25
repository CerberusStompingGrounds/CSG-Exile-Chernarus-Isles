if (!hasInterface || isServer) exitWith {};
closeDialog 0;
if (isNull objectParent player) then {
	if ("Exile_Item_DuctTape" in magazines player) then {
		if (!ExilePlayerInSafezone) then {
			player removeMagazine "Exile_Item_DuctTape";
			["UK111DeployRequest",["Exile_Bike_MountainBike"]] call ExileClient_system_network_send;
		} else {
			["ErrorTitleAndText",["SafeZone","Bikes are not allowed inside the SafeZone!"]] call ExileClient_gui_toaster_addTemplateToast;
		};
	} else {
		["ErrorTitleOnly",["You need a duct tape to build this!"]] call ExileClient_gui_toaster_addTemplateToast;
	};
} else {
	["ErrorTitleOnly",["You cannot do this while in a vehicle!"]] call ExileClient_gui_toaster_addTemplateToast;
};
