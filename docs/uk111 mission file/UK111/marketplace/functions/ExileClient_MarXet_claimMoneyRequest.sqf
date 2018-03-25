private["_claimLastUsedTime","_claimTime"];
_claimLastUsedTime = 300;
if (isNil "lastClaimMarket") then { lastClaimMarket = time - _claimLastUsedTime; };
_claimTime = time - lastClaimMarket;
if (_claimTime < _claimLastUsedTime) exitWith {
	["ErrorTitleOnly",[format["You cannot claim your money that often, wait %1 seconds!",round(_claimTime - _claimLastUsedTime)]]] call ExileClient_gui_toaster_addTemplateToast;
};
lastClaimMarket = time;
["claimMoneyRequest",[str(getPlayerUID player)]] call ExileClient_system_network_send;
