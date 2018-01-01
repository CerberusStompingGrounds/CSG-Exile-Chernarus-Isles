/**
 * ExileClient_gui_constructionMode_update
 *
 * Exile Mod
 * www.exilemod.com
 * © 2015 Exile Mod Team
 *
 * This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.
 * To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
 */
private["_display","_title","_titleControl","_description","_descriptionBackground"];
disableSerialization;
_display = uiNamespace getVariable "RscExileConstructionMode";
if (!isNull _display) then
{
	_title = "";
	switch (ExileClientConstructionMode) do
	{
		case 1: { _title = "Free Vector Mode"; };
		case 2: { _title = "Grid Mode"; };
		case 3: { _title = "Snap Mode"; };
		case 4: { _title = "Object Snap Mode"; };
	};
	if (ExileClientConstructionModePhysx) then
	{
		_title = _title + " + PHYSICS";
	};
	_titleControl = _display displayCtrl 1000;
	_titleControl ctrlSetText _title;
	_description = _display displayCtrl 1001;
	_description ctrlShow ExileClientConstructionShowHint;
	_descriptionBackground = _display displayCtrl 1002;
	_descriptionBackground ctrlShow ExileClientConstructionShowHint;
	_pos = ctrlPosition _descriptionBackground; 
	_descriptionBackground ctrlSetPosition [_pos select 0,_pos select 1,_pos select 2,450 * pixelH]; 
	_descriptionBackground ctrlCommit 0; 
	_description ctrlSetStructuredText parseText Format["<t align='left'>Free Vector Mode</t><t align='right' color='#DE5021'>1</t><br/><t align='left'>Grid Mode</t><t align='right' color='#DE5021'>2</t><br/><t align='left'>Snap Mode</t><t align='right' color='#DE5021'>3</t><br/><t align='left'>Toggle Physics</t><t align='right' color='#DE5021'>4</t><br/><t align='left'>Hide/Show Controls</t><t align='right' color='#DE5021'>5</t><br/><t color='#DE5021' align='center'>Exile Controls</t><br/><t align='left'>Rotation</t><t align='right' color='#DE5021'>Q/E</t><br/><t align='left'>Elevation</t><t align='right' color='#DE5021'>PAGE UP/DOWN</t><br/><t align='left'>Distance</t><t align='right' color='#DE5021'>HOME/END</t><br/><t color='#DE5021' align='center'>DP Controls</t><br/><t align='left'>Tilt and Pitch</t><t align='right' color='#DE5021'>Arrow Keys</t><br/><t align='left'>Rotate/Yaw</t><t align='right' color='#DE5021'>NUM7/NUM9</t><br/><t align='left'>Move Away/Back</t><t align='right' color='#DE5021'>NUM8/NUM2</t><br/><t align='left'>Move Left/Right</t><t align='right' color='#DE5021'>NUM4/NUM6</t><br/><t align='left'>Reset Object</t><t align='right' color='#DE5021'>NUM5</t><br/><t align='left'>Object Snapping</t><t align='right' color='#DE5021'>NUM0</t><br/><t color='#DE5021' align='center'>Stepping</t><br/><t align='left'>Larger</t><t align='right' color='#DE5021'>SHIFT</t><br/><t align='left'>Smaller</t><t align='right' color='#DE5021'>CONTROL</t><br/><t align='left'>Precision</t><t align='right' color='#DE5021'>ALT</t><br/><t color='#DE5021' align='center'>Place</t><br/><t align='left'>Place</t><t align='right' color='#DE5021'>SPACE</t><br/><t align='left'>Abort</t><t align='right' color='#DE5021'>ESCAPE</t>"];
};
true