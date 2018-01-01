/* 
Created by Lunchbox for use with Exile mod for Arma 3.
Copyright 2016, Lunchbox, All rights reserved.
*/
_playerUID = getPlayerUID player;
{
	_flag = _x;
	_buildRights = _flag getVariable ["ExileTerritoryBuildRights", []];
	if (_playerUID in _buildRights) then
	{
		_nextDueDate = _flag getVariable ["ExileTerritoryMaintenanceDue", [0, 0, 0, 0, 0]];
		_name = _flag getVariable ["ExileTerritoryName", ""];
		_dueDate = format 
	[
		"%3/%2/%1", _nextDueDate select 0, _nextDueDate select 1, _nextDueDate select 2
	];
	 ["InfoTitleAndText", ["Territory Information", format ["Payment Due for: <t color='#DE5021'>%2</t><br/>Date: <t color='#DE5021'>%1</t><br/>Pay your Base at Office Trader!",_dueDate,_name]]] call ExileClient_gui_toaster_addTemplateToast;	
	};
}forEach (allMissionObjects "Exile_Construction_Flag_Static");