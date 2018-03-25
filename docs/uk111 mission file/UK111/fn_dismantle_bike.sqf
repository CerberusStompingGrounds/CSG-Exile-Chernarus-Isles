if (!hasInterface || isServer) exitWith {};
_bike = _this select 0;
if ((damage _bike > 0.7) || !(canMove _bike)) exitWith { ["ErrorTitleOnly",["This bike is too damaged to dismantle!"]] call ExileClient_gui_toaster_addTemplateToast; };
deleteVehicle _bike;
player addMagazine "Exile_Item_DuctTape";