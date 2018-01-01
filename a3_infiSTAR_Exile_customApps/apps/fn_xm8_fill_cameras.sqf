_uids = [getPlayerUID player];
_grpID = groupID (group player);

if!(_grpID isEqualTo '')then
{
	{
		_xuid = getPlayerUID _x;
		if!(_xuid isEqualTo '')then
		{
			_uids pushBackUnique _xuid;
		};
	} forEach (units(group player));
};

{
	_flag = _x;
	{
		_buildRights = _flag getVariable ['ExileTerritoryBuildRights', []];
		if(_x in _buildRights)then
		{
			_range = _flag getVariable ['ExileTerritorySize',0];
			_cameras = _flag nearObjects ['Exile_Construction_BaseCamera_Static',_range];
			if!(_cameras isEqualTo [])then
			{
				_name = _flag getVariable ['ExileTerritoryName', ''];
				_grid = mapGridPosition _flag;
				_grid = format['%1:%2',_grid select [0,3],_grid select [3,6]];
				_index = _this lbAdd format['%1 @%2',_name,_grid];
				_this lbSetData [_index, netId _flag];
				_this lbSetValue [_index,player distance2D _flag];
			};
		};
	} forEach _uids;
} forEach (allMissionObjects 'Exile_Construction_Flag_Static');