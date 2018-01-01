disableSerialization;
_display = uiNamespace getVariable ['RscExileXM8', displayNull];

_RecipeList = [_display,'RscListBox',5501] call apps_fnc_createctrl;
_RecipeList ctrlSetPosition [0.09, 0.18, 0.38, 0.315];
_RecipeList ctrlRemoveAllEventHandlers 'LBSelChanged';
_RecipeList ctrlSetEventHandler ['LBSelChanged', '_this call fnc_components_Load'];
_RecipeList ctrlRemoveAllEventHandlers 'LBDblClick';
_RecipeList ctrlSetEventHandler ['LBDblClick', '((_this select 0) lbData (_this select 1)) call ExileClient_gui_crafting_show;'];
_RecipeList ctrlCommit 0;
_id = -1;
{
	_RecipeClass = configName _x;
	_pictureItemClassName = getText(_x >> 'pictureItem');
	_currentRecipeName = getText(_x >> 'name');
	_pictureItemConfig = configFile >> 'CfgMagazines' >> _pictureItemClassName;
	_recipePicture = getText(_pictureItemConfig >> 'picture');
	_id = _RecipeList lbAdd _currentRecipeName;
	_RecipeList lbSetPicture [_id,_recipePicture];
	_RecipeList lbSetData [_id,_RecipeClass];
} forEach ('true' configClasses (missionConfigFile >> 'CfgCraftingRecipes'));

_RecipeTitle = [_display,'RscText',5506] call apps_fnc_createctrl;
_RecipeTitle ctrlSetPosition [0.09,0.14,0.38,0.04];
_RecipeTitle ctrlCommit 0;
_RecipeTitle ctrlSetText format['Cookbook (%1)',_id + 1];

_ComponentsList = [_display,'RscListBox',5502] call apps_fnc_createctrl;
_ComponentsList ctrlSetPosition [0.48, 0.18, 0.42, 0.45];
_ComponentsList ctrlCommit 0;

_RecipePic = [_display,'RscPictureKeepAspect',5507] call apps_fnc_createctrl;
_RecipePic ctrlSetPosition [0.09, 0.54, 0.38, 0.28];
_RecipePic ctrlCommit 0;

_btncraft = [_display,'RscExileXM8ButtonMenu',5503] call apps_fnc_createctrl;
_btncraft ctrlSetPosition [0.5,0.72,0.15,0.04];
_btncraft ctrlCommit 0;
_btncraft ctrlSetText 'CRAFT';
_btncraft ctrlRemoveAllEventHandlers 'ButtonClick';
_btncraft ctrlSetEventHandler ['ButtonClick', "if(!isNil'selectedrecipe')then{selectedrecipe call ExileClient_gui_crafting_show;};"];

_edit = [_display,'RscEdit',5508] call apps_fnc_createctrl;
_edit ctrlSetPosition [0.0925, 0.505, 0.275, 0.04];
_edit ctrlCommit 0;
_string = "
	disableSerialization;
	_display = uiNamespace getVariable ['RscExileXM8', displayNull];
	
	_RecipeList = _display displayCtrl 5501;
	lbClear _RecipeList;
	
	_ComponentsList = _display displayCtrl 5502;
	lbClear _ComponentsList;
	
	_id = -1;
	_edit = _this select 0;
	_editText = toLower(ctrlText _edit);
	if(_editText isEqualTo '')then
	{
		{
			_RecipeClass = configName _x;
			_pictureItemClassName = getText(_x >> 'pictureItem');
			_currentRecipeName = getText(_x >> 'name');
			_pictureItemConfig = configFile >> 'CfgMagazines' >> _pictureItemClassName;
			_recipePicture = getText(_pictureItemConfig >> 'picture');
			_id = _RecipeList lbAdd _currentRecipeName;
			_RecipeList lbSetPicture [_id,_recipePicture];
			_RecipeList lbSetData [_id,_RecipeClass];
		} forEach ('true' configClasses (missionConfigFile >> 'CfgCraftingRecipes'));
	}
	else
	{
		{
			_RecipeClass = configName _x;
			_pictureItemClassName = getText(_x >> 'pictureItem');
			_currentRecipeName = getText(_x >> 'name');
			_pictureItemConfig = configFile >> 'CfgMagazines' >> _pictureItemClassName;
			_recipePicture = getText(_pictureItemConfig >> 'picture');
			if((toLower _currentRecipeName) find _editText > -1)then
			{
				_id = _RecipeList lbAdd _currentRecipeName;
				_RecipeList lbSetPicture [_id,_recipePicture];
				_RecipeList lbSetData [_id,_RecipeClass];
			};
		} forEach ('true' configClasses (missionConfigFile >> 'CfgCraftingRecipes'));
	};
	lbSort _RecipeList;
	(_display displayCtrl 5506) ctrlSetText format['Cookbook (%1)',_id + 1];
	true
";
_edit ctrlRemoveAllEventHandlers 'KeyUp';
_edit ctrlSetEventHandler ['KeyUp',_string];

_btn = [_display,'RscExileXM8ButtonMenu',5509] call apps_fnc_createctrl;
_btn ctrlSetPosition [0.37, 0.505, 0.1, 0.04];
_btn ctrlCommit 0;
_btn ctrlSetText 'clear';
_string = "
	disableSerialization;
	_display = uiNamespace getVariable ['RscExileXM8', displayNull];
	
	_RecipeList = _display displayCtrl 5501;
	lbClear _RecipeList;
	
	_ComponentsList = _display displayCtrl 5502;
	lbClear _ComponentsList;
	
	_id = -1;
	_edit = _display displayCtrl 5508;
	_edit ctrlSetText '';
	{
		_RecipeClass = configName _x;
		_pictureItemClassName = getText(_x >> 'pictureItem');
		_currentRecipeName = getText(_x >> 'name');
		_pictureItemConfig = configFile >> 'CfgMagazines' >> _pictureItemClassName;
		_recipePicture = getText(_pictureItemConfig >> 'picture');
		_id = _RecipeList lbAdd _currentRecipeName;
		_RecipeList lbSetPicture [_id,_recipePicture];
		_RecipeList lbSetData [_id,_RecipeClass];
	} forEach ('true' configClasses (missionConfigFile >> 'CfgCraftingRecipes'));
	lbSort _RecipeList;
	(_display displayCtrl 5506) ctrlSetText format['Cookbook (%1)',_id + 1];
	true
";
_btn ctrlRemoveAllEventHandlers 'ButtonClick';
_btn ctrlSetEventHandler ['ButtonClick',_string];



fnc_components_Load = {
	disableSerialization;
	_display = uiNamespace getVariable ['RscExileXM8', displayNull];
	_ComponentsList = _display displayCtrl 5502;
	lbClear _ComponentsList;
	_equippedMagazines = magazines player;

	_selectedrecipe = (_this select 0) lbData (_this select 1);
	selectedrecipe = _selectedrecipe;

	_components = getArray(missionConfigFile >> 'CfgCraftingRecipes' >> _selectedrecipe  >> 'components');
	_tools = getArray(missionConfigFile >> 'CfgCraftingRecipes' >> _selectedrecipe  >> 'tools');
	_requiredInteractionModelGroup = getText(missionConfigFile >> 'CfgCraftingRecipes' >> _selectedrecipe  >> 'requiredInteractionModelGroup');
	_requiresOcean = getNumber(missionConfigFile >> 'CfgCraftingRecipes' >> _selectedrecipe  >> 'requiresOcean');
	_requiresFire = getNumber(missionConfigFile >> 'CfgCraftingRecipes' >> _selectedrecipe  >> 'requiresFire');
	_returnedItems = getArray(missionConfigFile >> 'CfgCraftingRecipes' >> _selectedrecipe  >> 'returnedItems');

	_id = _ComponentsList lbAdd '====== COMPONENTS ======';
	{
		_Quantity = _x select 0;
		_Component = _x select 1;
		
		_ComponentDispName = getText (configfile >> 'CfgMagazines' >> _Component >> 'displayName');
		_ComponentPicture  = getText (configfile >> 'CfgMagazines' >> _Component >> 'picture');
		
		_equippedComponentQuantity = { _x == _Component} count _equippedMagazines;
		if(_equippedComponentQuantity < _Quantity )then
		{
			_id = _ComponentsList lbAdd format['%3 - [%1/%2]',  _equippedComponentQuantity, _Quantity, _ComponentDispName];
			_ComponentsList lbSetColor [_id, [0.918, 0, 0,1]];
		}
		else
		{ 
			_id = _ComponentsList lbAdd format['%3 - [%1/%2]',  _equippedComponentQuantity, _Quantity, _ComponentDispName];
			_ComponentsList lbSetColor [_id, [0.698, 0.925, 0,1]];
		};
		_ComponentsList lbSetPicture [_id,_ComponentPicture];
		_ComponentsList lbSetData [_id,_Component];
	} forEach _components;
	
	if!(_tools isEqualTo [])then
	{
		_ComponentsList lbAdd '====== TOOLS ======';
		
		{
			_Tool = _x;
			_ToolDispName = getText (configfile >> 'CfgMagazines' >> _Tool >> 'displayName');
			_ToolPicture  = getText (configfile >> 'CfgMagazines' >> _Tool >> 'picture');
			_equippedToolQuantity = { _x == _Tool } count _equippedMagazines;
			if(_equippedToolQuantity == 0 )then
			{
				_id = _ComponentsList lbAdd format['%1 - [MISSING]',_ToolDispName];
				_ComponentsList lbSetColor [_id, [0.918, 0, 0,1]];
			}
			else
			{
				_id = _ComponentsList lbAdd format['%1 - [OK]',_ToolDispName];
				_ComponentsList lbSetColor [_id, [0.698, 0.925, 0,1]];
			};
			_ComponentsList lbSetPicture [_id,_ToolPicture];
			_ComponentsList lbSetData [_id,_Tool];
		} forEach _tools;
	};

	if(_requiredInteractionModelGroup != '' || _requiresOcean isEqualTo 1 || _requiresFire isEqualTo 1)then
	{
		_ComponentsList lbAdd '====== REQUIRES ======';
		if(_requiredInteractionModelGroup != '')then
		{
			_foundObject = false;
			_interactionModelGroupConfig = missionConfigFile >> 'CfgInteractionModels' >> _requiredInteractionModelGroup;
			_RequiredDispName = getText(_interactionModelGroupConfig >> 'name');
			_interactionModelGroupModels = getArray(_interactionModelGroupConfig >> 'models');
			_id = -1;
			if([ASLtoAGL (getPosASL player), 10, _interactionModelGroupModels] call ExileClient_util_model_isNearby)then
			{
				_id = _ComponentsList lbAdd format['%1 - [OK]',_RequiredDispName];
				_ComponentsList lbSetColor [_id, [0.698, 0.925, 0,1]];
				_foundObject = true;
			}
			else 
			{
				if( _interactionModelGroupModels call ExileClient_util_model_isLookingAt )then
				{
					_id = _ComponentsList lbAdd format['%1 - [OK]',_RequiredDispName];
					_ComponentsList lbSetColor [_id, [0.698, 0.925, 0,1]];
					_foundObject = true;
				};
			};
			if !(_foundObject)then
			{
				_id = _ComponentsList lbAdd format['%1 - [MISSING]',_RequiredDispName];
				_ComponentsList lbSetColor [_id, [0.918, 0, 0,1]];
			};
			_ComponentsList lbSetData [_id,_requiredInteractionModelGroup];
		};
		if(_requiresOcean isEqualTo 1)then
		{
			if !(surfaceIsWater getPos player)then 
			{
				_id = _ComponentsList lbAdd format['%1 - [MISSING]', 'Ocean'];
				_ComponentsList lbSetColor [_id, [0.918, 0, 0,1]];
			}
			else
			{
				_id = _ComponentsList lbAdd format['%1 - [OK]', 'Ocean'];
				_ComponentsList lbSetColor [_id, [0.698, 0.925, 0,1]];
			};
		};
		if(_requiresFire isEqualTo 1)then
		{
			if !([player, 4] call ExileClient_util_world_isFireInRange)then 
			{
				_id = _ComponentsList lbAdd format['%1 - [MISSING]', 'Fire'];
				_ComponentsList lbSetColor [_id, [0.918, 0, 0,1]];
			}
			else
			{
				_id = _ComponentsList lbAdd format['%1 - [OK]', 'Fire'];
				_ComponentsList lbSetColor [_id, [0.698, 0.925, 0,1]];
			};
		};
	};

	_ComponentsList lbAdd '====== RETURNS ======';
	_RecipePic = _display displayCtrl 5507;
	{
		_Quantity = _x select 0;
		_Component = _x select 1;
		
		_ComponentDispName = getText (configfile >> 'CfgMagazines' >> _Component >> 'displayName');
		_ComponentPicture  = getText (configfile >> 'CfgMagazines' >> _Component >> 'picture');
		
		_id = _ComponentsList lbAdd format['%2 - [%1]',  _Quantity, _ComponentDispName];
		_ComponentsList lbSetPicture [_id,_ComponentPicture];
		_ComponentsList lbSetData [_id,_Component];
		_RecipePic ctrlSetText _ComponentPicture;
	} forEach _returnedItems;
};