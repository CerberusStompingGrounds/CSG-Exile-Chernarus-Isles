_ctrl = _this select 0;
VEHICLE_BARS_BTN_IDC = ctrlIDC _ctrl;


if(!isNil'VEHICLE_HP_BARS_ID')exitWith{
	removeMissionEventHandler ['Draw3D',VEHICLE_HP_BARS_ID];
	VEHICLE_HP_BARS_ID=nil;
	['ErrorTitleOnly', ['Removed Vehicle HP Bars.']] call ExileClient_gui_toaster_addTemplateToast;
	((findDisplay 24015) displayCtrl VEHICLE_BARS_BTN_IDC) ctrlSetStructuredText parseText '<t color="#44CD00">Vehicle HP Bars</t>';
};
VEHICLE_HP_BARS_ID = addMissionEventHandler ['Draw3D',{
	{
		_obj = _x;
		if(!isNull _obj)then
		{
			_start = eyePos player;
			_end = eyePos _obj;
			
			if(lineIntersects [_start, _end, player, _obj])exitWith{true};
			
			_lineIntersectsWith = lineIntersectsWith [_start, _end, player, _obj];
			if(count _lineIntersectsWith > 0)exitWith{true};
			
			_lineintersectsobjs = lineintersectsobjs [_start, _end,objnull,_obj,false,16];
			if(count _lineintersectsobjs > 0)exitWith{true};
			
			_health = round((1-(damage _obj))*100);
			_z = (sizeOf (typeOf _obj))/8;
			_clr = [0,0,0,1];
			if(alive _obj)then
			{
				_clr = _health call {
					if(_this < 5)exitWith{[1,0.25,0,1]};
					if(_this < 15)exitWith{[1,0.45,0,1]};
					if(_this < 25)exitWith{[1,0.55,0,1]};
					if(_this < 35)exitWith{[1,0.65,0,1]};
					if(_this < 45)exitWith{[1,0.75,0,1]};
					if(_this < 55)exitWith{[1,0.85,0,1]};
					if(_this < 65)exitWith{[1,0.85,0,1]};
					if(_this < 75)exitWith{[0.9,0.85,0,1]};
					if(_this < 85)exitWith{[0.8,0.95,0,1]};
					if(_this < 95)exitWith{[0.6,0.95,0,1]};
					[0,1,0,1]
				};
			};
			_xSize = 0.4+(_health/15);
			_ySize = 0.4;
			drawIcon3D ['\A3\ui_f\data\map\Markers\Military\box_CA.paa',_clr,_obj modelToWorldVisual [0,0,_z], _xSize, _ySize, 0,'', 1, 0.025, 'PuristaMedium'];
			
			
			if!(_obj isEqualTo cursorObject)exitWith{true};
			
			_hitPointsDamage = getAllHitPointsDamage _obj;
			if(_hitPointsDamage isEqualTo [])exitWith{true};
			
			_hitpointsNamesArray = _hitPointsDamage select 0;
			_selectionsNamesArray = _hitPointsDamage select 1;
			_damageValuesArray = _hitPointsDamage select 2;
			
			{
				_hitPoint = _x;
				if!(_hitPoint isEqualTo '')then
				{
					_hitPoint = _hitPoint select [3,count _hitPoint];
					_selection = _selectionsNamesArray select _forEachIndex;
					if!(_selection isEqualTo '')then
					{
						_selectionpos = _obj selectionPosition _selection;
						_pos = _obj modelToWorldVisual _selectionpos;
						
						_damage = _damageValuesArray select _forEachIndex;
						_health = round((1-(_damage))*100);
						_z = (sizeOf (typeOf _obj))/8;
						_clr = [0,0,0,1];
						if(alive _obj)then
						{
							_clr = _health call {
								if(_this < 5)exitWith{[1,0.25,0,1]};
								if(_this < 15)exitWith{[1,0.45,0,1]};
								if(_this < 25)exitWith{[1,0.55,0,1]};
								if(_this < 35)exitWith{[1,0.65,0,1]};
								if(_this < 45)exitWith{[1,0.75,0,1]};
								if(_this < 55)exitWith{[1,0.85,0,1]};
								if(_this < 65)exitWith{[1,0.85,0,1]};
								if(_this < 75)exitWith{[0.9,0.85,0,1]};
								if(_this < 85)exitWith{[0.8,0.95,0,1]};
								if(_this < 95)exitWith{[0.6,0.95,0,1]};
								[0,1,0,1]
							};
						};
						_xSize = 0.2+(_health/25);
						_ySize = 0.2;
						drawIcon3D ['\A3\ui_f\data\map\Markers\Military\box_CA.paa',_clr ,_pos, _xSize, _ySize, 0, _hitPoint, 1, 0.025, 'PuristaMedium'];
					};
				};
			} forEach _hitpointsNamesArray;
		};
	} forEach (cameraOn nearEntities[['LandVehicle', 'Ship', 'Air'], 100]);
}];
['SuccessTitleOnly', ['Added Vehicle HP Bars.']] call ExileClient_gui_toaster_addTemplateToast;
((findDisplay 24015) displayCtrl VEHICLE_BARS_BTN_IDC) ctrlSetStructuredText parseText '<t color="#FF0000">Vehicle HP Bars</t>';