/**
 * ExileClient_gui_wasteDumpDialog_event_onSellButtonClick
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License. 
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
 
private["_display","_dropdown","_index","_vehicleNetID","_mode"];
disableSerialization;
if !(ExileClientIsWaitingForServerTradeResponse) then
{
	_display = uiNameSpace getVariable ["RscExileWasteDumpDialog", displayNull];
	_dropdown = _display displayCtrl 4002;
	_index = lbCurSel _dropdown;
	_vehicleNetID = _dropdown lbData _index;
	_mode = _dropdown lbValue _index;

	// AntiTheft
	_ownerUID = _vehicle getVariable["UK111_vehicle_owner",0];
	if !(_ownerUID isEqualTo (getPlayerUID player)) exitWith {
		["ErrorTitleAndText",["Access Denied!","You are not the owner of this vehicle!"]] call ExileClient_gui_toaster_addTemplateToast;
		closeDialog 0;
		true
	};
	// AntiTheft
	
	ExileClientIsWaitingForServerTradeResponse = true;
	["wasteDumpRequest", [_vehicleNetID, _mode]] call ExileClient_system_network_send;
	closeDialog 0;
};