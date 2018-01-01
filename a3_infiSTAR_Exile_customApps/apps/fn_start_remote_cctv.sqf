disableSerialization;
false call ExileClient_gui_postProcessing_toggleDialogBackgroundBlur;
_display = uiNamespace getVariable ['RscExileXM8', displayNull];
_ctrl = _display displayCtrl 1000;
_data = _ctrl lbData (lbCurSel _ctrl);
ExileCameraSystemBase = objectFromNetId _data;

_display = uiNamespace getVariable ['RscExileCameraView',displayNull];
_camerasCombo = _display displayCtrl 4005;
_range = ExileCameraSystemBase getVariable ['ExileTerritorySize',0];
_cameras = ExileCameraSystemBase nearObjects ['Exile_Construction_BaseCamera_Static',_range];
lbClear _camerasCombo;

_index = _camerasCombo lbAdd 'Select a Camera';
_camerasCombo lbSetData [_index,'0'];
_camerasCombo lbSetPictureRight [_index,'\exile_assets\texture\ui\cameraView\camera.paa'];
{
	_index = _camerasCombo lbAdd ('Camera ' + (str _forEachIndex));
	_camerasCombo lbSetData [_index,netId _x];
	_camerasCombo lbSetPicture [_index,'\exile_assets\texture\ui\cameraView\camera.paa'];
	if(_x getVariable ['ExileCameraInUse',false])then
	{
		_camerasCombo lbSetColor [_index,[221/255, 38/255, 38/255, 1]];
		_camerasCombo lbSetPictureRightColor [_index,[221/255, 38/255, 38/255, 1]];
		_camerasCombo lbSetTextRight [_index,'IN USE!'];
		_camerasCombo lbSetColorRight [_index,[221/255, 38/255, 38/255, 1]];
	}
	else
	{
		_camerasCombo lbSetColor [_index,[160/255, 223/255, 59/255, 1]];
	};
} forEach _cameras;
_camerasCombo lbSetCurSel 0;

ExileClientPlayerIsInSecurityCamera = true;
ExileClientPostProcessingColorCorrections ppEffectAdjust [1,1.1,-0.05,[0.4,0.2,0.3,-0.1],[0.5,0.5,0.5,0],[0.5,0.5,0.5,0],[0,0,0,0,0,0,4]];
ExileClientPostProcessingColorCorrections ppEffectCommit 0;
ExileClientPostProcessingColorCorrections ppEffectEnable true;
ExileClientPostProcessingSecurityCameraFilmGrain ppEffectCommit 0;
ExileClientPostProcessingSecurityCameraFilmGrain ppEffectEnable true;
false call ExileClient_gui_hud_toggle;
createDialog 'RscExileCameraView';