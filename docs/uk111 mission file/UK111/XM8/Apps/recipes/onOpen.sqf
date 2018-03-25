fnc_recipe_Load = {
	private ["_display", "_CategoryCtrl", "_SelectedCategory", "_j", "_CategoryConfig", "_pictureItemClassName", "_RecipeCategory", "_RecipeClass", "_currentRecipeName", "_pictureItemConfig", "_recipePicture", "_lbsize"];
	_display = uiNameSpace getVariable ["RscExileXM8", displayNull];
	lbClear 85502;
	lbClear 85501;
	(_display displayCtrl 85507) ctrlSetText "UK111\XM8\Apps\recipes\logo.paa";
	_CategoryCtrl = _this select 0;
	_SelectedCategory 	= _CategoryCtrl lbData (lbCurSel _CategoryCtrl);
	for '_j' from 0 to (count (missionconfigFile >> "CfgCraftingRecipes")) -1 do {
		_CategoryConfig = (missionconfigFile >> "CfgCraftingRecipes") select _j;	
		_pictureItemClassName = getText(_CategoryConfig >> "pictureItem");
		_RecipeCategory = getText(_CategoryConfig >> "category");
		_RecipeClass = configName _CategoryConfig;	
		_currentRecipeName = getText(_CategoryConfig >> "name");	
		_pictureItemConfig = configFile >> "CfgMagazines" >> _pictureItemClassName;
		_recipePicture = getText(_pictureItemConfig >> "picture");	

		if (_RecipeCategory == _SelectedCategory) then {
			_lbsize = lbSize (_display displayCtrl 85501);
			(_display displayCtrl 85501) lbAdd Format["%1",_currentRecipeName];
			(_display displayCtrl 85501) lbSetPicture [_lbsize,_recipePicture];
			(_display displayCtrl 85501) lbSetData [_lbsize,_RecipeClass];
		} else {
			if (_SelectedCategory == "Uncategorised" && _RecipeCategory == "") then {
				_lbsize = lbSize (_display displayCtrl 85501);
				(_display displayCtrl 85501) lbAdd Format["%1",_currentRecipeName];
				(_display displayCtrl 85501) lbSetPicture [_lbsize,_recipePicture];
				(_display displayCtrl 85501) lbSetData [_lbsize,_RecipeClass];
			};		
		};	
	};
	lbSort (_display displayCtrl 85501);
};
 
fnc_recipeComponents_Load = {
	private ["_display", "_equippedMagazines", "_SelectedRecipeCtrl", "_components", "_Tools", "_requiredInteractionModelGroup", "_requiresOcean", "_requiresFire", "_returnedItems", "_Quantity", "_Component", "_ComponentDispName", "_ComponentPicture", "_equippedComponentQuantity", "_lbsize", "_Tool", "_ToolDispName", "_ToolPicture", "_equippedToolQuantity", "_foundObject", "_interactionModelGroupConfig", "_RequiredDispName", "_interactionModelGroupModels"];
	_display = uiNameSpace getVariable ["RscExileXM8", displayNull];
	_equippedMagazines = magazines player;
	_SelectedRecipeCtrl = _this select 0;
	SelectedRecipe = _SelectedRecipeCtrl lbData (lbCurSel _SelectedRecipeCtrl);
	_components = getArray(missionconfigFile >> "CfgCraftingRecipes" >> SelectedRecipe  >> "components");
	_Tools = getArray(missionconfigFile >> "CfgCraftingRecipes" >> SelectedRecipe  >> "tools");
	_requiredInteractionModelGroup = getText(missionconfigFile >> "CfgCraftingRecipes" >> SelectedRecipe  >> "requiredInteractionModelGroup");
	_requiresOcean = getNumber(missionconfigFile >> "CfgCraftingRecipes" >> SelectedRecipe  >> "requiresOcean");
	_requiresFire = getNumber(missionconfigFile >> "CfgCraftingRecipes" >> SelectedRecipe  >> "requiresFire");
	_returnedItems = getArray(missionconfigFile >> "CfgCraftingRecipes" >> SelectedRecipe  >> "returnedItems");
	lbClear 85502;
	(_display displayCtrl 85502) lbAdd Format["====== COMPONENTS ======"];

	{
		_Quantity = _x select 0;
		_Component = _x select 1;
		_ComponentDispName = getText (configFile >> "CfgMagazines" >> _Component >> "displayName");
		_ComponentPicture  = getText (configFile >> "CfgMagazines" >> _Component >> "picture");			
		_equippedComponentQuantity = { _x == _Component} count _equippedMagazines;
		if (_equippedComponentQuantity < _Quantity ) then {
			(_display displayCtrl 85502) lbAdd Format["%3 - [%1/%2]",  _equippedComponentQuantity, _Quantity, _ComponentDispName];
			_lbsize = lbSize (_display displayCtrl 85502);
			(_display displayCtrl 85502) lbSetColor [_lbsize-1, [0.918, 0, 0,1]];
		} else { 
			(_display displayCtrl 85502) lbAdd Format["%3 - [%1/%2]",  _equippedComponentQuantity, _Quantity, _ComponentDispName];
			_lbsize = lbSize (_display displayCtrl 85502);
			(_display displayCtrl 85502) lbSetColor [_lbsize-1, [0.698, 0.925, 0,1]];			
		};		
		(_display displayCtrl 85502) lbSetPicture [_forEachIndex+1,_ComponentPicture];
		(_display displayCtrl 85502) lbSetData [_forEachIndex+1,_Component];
	} forEach _components;

	if (count _Tools > 0)  then { (_display displayCtrl 85502) lbAdd Format["====== TOOLS ======"]; };
	
	{
		_Tool = _x;
		_ToolDispName = getText (configFile >> "CfgMagazines" >> _Tool >> "displayName");
		_ToolPicture  = getText (configFile >> "CfgMagazines" >> _Tool >> "picture");			
		_equippedToolQuantity = { _x == _Tool } count _equippedMagazines;
		if (_equippedToolQuantity == 0 ) then
		{
			(_display displayCtrl 85502) lbAdd Format["%1 - [MISSING]",_ToolDispName];
			_lbsize = lbSize (_display displayCtrl 85502);
			(_display displayCtrl 85502) lbSetColor [_lbsize-1, [0.918, 0, 0,1]];			
		} else {
			(_display displayCtrl 85502) lbAdd Format["%1 - [OK]",_ToolDispName];
			_lbsize = lbSize (_display displayCtrl 85502);
			(_display displayCtrl 85502) lbSetColor [_lbsize-1, [0.698, 0.925, 0,1]];			
			
		};
		_lbsize = lbSize (_display displayCtrl 85502);
		(_display displayCtrl 85502) lbSetPicture [_lbsize-1,_ToolPicture];
		(_display displayCtrl 85502) lbSetData [_lbsize-1,_Tool];
	} forEach _Tools;	  

	if (_requiredInteractionModelGroup != "" || _requiresOcean == 1 || _requiresFire == 1) then { (_display displayCtrl 85502) lbAdd Format["====== REQUIRES ======"]; };

	if (_requiredInteractionModelGroup != "")  then {
		_foundObject = false;
		_interactionModelGroupConfig = missionconfigFile >> "CfgInteractionModels" >> _requiredInteractionModelGroup;
		_RequiredDispName = getText(_interactionModelGroupConfig >> "name");
		_interactionModelGroupModels = getArray(_interactionModelGroupConfig >> "models");
		if ([ASLtoAGL (getPosASL player), 10, _interactionModelGroupModels] call ExileClient_util_model_isNearby) then {
			(_display displayCtrl 85502) lbAdd Format["%1 - [OK]",_RequiredDispName];
			_lbsize = lbSize (_display displayCtrl 85502);
			(_display displayCtrl 85502) lbSetColor [_lbsize-1, [0.698, 0.925, 0,1]];			
			_foundObject = true;	
		} else {
			if ( _interactionModelGroupModels call ExileClient_util_model_isLookingAt ) then {
				(_display displayCtrl 85502) lbAdd Format["%1 - [OK]",_RequiredDispName];
				_lbsize = lbSize (_display displayCtrl 85502);
				(_display displayCtrl 85502) lbSetColor [_lbsize-1, [0.698, 0.925, 0,1]];			
				_foundObject = true;	
			};
		};
		if !(_foundObject) then {
			(_display displayCtrl 85502) lbAdd Format["%1 - [MISSING]",_RequiredDispName];
			_lbsize = lbSize (_display displayCtrl 85502);
			(_display displayCtrl 85502) lbSetColor [_lbsize-1, [0.918, 0, 0,1]];				
		};
		_lbsize = lbSize (_display displayCtrl 85502);
		(_display displayCtrl 85502) lbSetData [_lbsize-1,_requiredInteractionModelGroup];
	};

	if (_requiresOcean == 1)  then {
		if !(surfaceIsWater getPos player) then {
			(_display displayCtrl 85502) lbAdd Format["%1 - [MISSING]", "Ocean"];
			_lbsize = lbSize (_display displayCtrl 85502);
			(_display displayCtrl 85502) lbSetColor [_lbsize-1, [0.918, 0, 0,1]];				
		} else {
			(_display displayCtrl 85502) lbAdd Format["%1 - [OK]", "Ocean"];
			_lbsize = lbSize (_display displayCtrl 85502);
			(_display displayCtrl 85502) lbSetColor [_lbsize-1, [0.698, 0.925, 0,1]];				
		};
	};

	if (_requiresFire == 1)  then {
		if !([player, 4] call ExileClient_util_world_isFireInRange) then {
			(_display displayCtrl 85502) lbAdd Format["%1 - [MISSING]", "Fire"];
			_lbsize = lbSize (_display displayCtrl 85502);
			(_display displayCtrl 85502) lbSetColor [_lbsize-1, [0.918, 0, 0,1]];				
		} else {
			(_display displayCtrl 85502) lbAdd Format["%1 - [OK]", "Fire"];
			_lbsize = lbSize (_display displayCtrl 85502);
			(_display displayCtrl 85502) lbSetColor [_lbsize-1, [0.698, 0.925, 0,1]];			
		};			
	};
	
	(_display displayCtrl 85502) lbAdd Format["====== RETURNS ======"];
	{
		_Quantity = _x select 0;
		_Component = _x select 1;
		_ComponentDispName = getText (configFile >> "CfgMagazines" >> _Component >> "displayName");
		_ComponentPicture  = getText (configFile >> "CfgMagazines" >> _Component >> "picture");
		(_display displayCtrl 85502) lbAdd Format["%2 - [%1]",  _Quantity, _ComponentDispName];
		_lbsize = lbSize (_display displayCtrl 85502);
		(_display displayCtrl 85502) lbSetPicture [_lbsize-1,_ComponentPicture];
		(_display displayCtrl 85502) lbSetData [_lbsize-1,_Component];
		(_display displayCtrl 85507) ctrlSetText _ComponentPicture;
	} forEach _returnedItems; 
};
