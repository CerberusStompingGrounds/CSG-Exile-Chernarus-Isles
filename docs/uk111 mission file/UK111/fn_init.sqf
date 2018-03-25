UK111_map = 1;
if (hasInterface) then {
	if ((productVersion select 3) < 139586) then {
		for "_i" from 1 to 10 do { systemChat "Your Arma version is outdated!!"; };
		(findDisplay 46) closeDisplay 0;
	};
	
	UK111_BuildingLimit = false;
	UK111_chat = true;
	UK111_athelipad = false;
	UK111_marketMeanValuesDone = false;
	ExileClientXM8IsPowerOn = true;
	profileNamespace setVariable["ExileEnable8GNetwork",true];
	player setVariable["ExileXM8IsOnline",true,true];
	player setVariable["revivePermitted",false,true];
	player setVariable["reviveAntiDupe",1,true];
	
	[] execVM "UK111\announce.sqf";
	//[] execVM "UK111\attachments.sqf";
	[] execVM "UK111\marketplace\init.sqf";
	[] execVM "UK111\raid\config.sqf";
	[] execVM "UK111\colors\colors_init.sqf";
	
	{
		_code = compileFinal (preprocessFileLineNumbers (_x select 1));
		missionNamespace setVariable[(_x select 0),_code];
	} forEach [
		["ExileClient_UK111_network_UK111ReviveFailRespond","UK111\revive\ExileClient_UK111_network_UK111ReviveFailRespond.sqf"],
		["ExileClient_UK111_network_UK111ReviveRespond","UK111\revive\ExileClient_UK111_network_UK111ReviveRespond.sqf"]
	];
	
	[] spawn {
		waitUntil {!isNil "ExileClientLoadedIn"};
		if ((profileNamespace getVariable["UK111ambient",-1]) isEqualTo -1) then { enableEnvironment false; };
		_limit = [
			"76561198034301458","76561198033439697","76561198162513363","76561198053880832","76561197967845621","76561198281630038",
			"76561198103735776","76561198088264705","76561198133971250"
		];
		if ((getPlayerUID player) in _limit) then { UK111_BuildingLimit = true; };
	};
	
	UK111_info = { ['<t size=''0.65'' color=''#FF0000''>'+_this+'</t>',0,0,12,1,0,789] spawn bis_fnc_dynamictext; };
	UK111_info_up = { ['<img size=''1.3'' image=''UK111\garage\hpad.paa''/><t size=''0.65'' color=''#FF0000''>'+_this+'</t>',0,0,12,1,-2,round(random 788)] spawn bis_fnc_dynamictext; };
	
	"ReviveRespond" addPublicVariableEventHandler {
		cutText ["","BLACK IN",20];
		[100] call BIS_fnc_bloodEffect;
		_layer = "BIS_fnc_respawnCounter" call bis_fnc_rscLayer;
		_layer cutText ["", "plain"];
		[ExileClientBleedOutThread] call ExileClient_system_thread_removeTask;
		ExileClientBleedOutThread = -1;
		player setVariable["revivePermitted",false,true];
		false call ExileClient_gui_postProcessing_toggleDialogBackgroundBlur;
		true call ExileClient_gui_hud_toggle;
		["endBambiStateRequest"] call ExileClient_system_network_send;
		[ExileClientEndBambiStateThread] call ExileClient_system_thread_removeTask;
		ExileClientPlayerIsBambi = false;
		false call ExileClient_gui_hud_toggleBambiIcon;
		player setVariable["reviveAntiDupe",1,true];
	};
};
