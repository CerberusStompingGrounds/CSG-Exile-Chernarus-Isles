params["_display","_slide"];
_pW = 0.025;
_pH = 0.04;
_leftCol = 0;
_leftColW = 12.8;
_rightCol = _leftCol + _leftColW + 2;
_rightColW = _leftColW + 3;
_margin = 0.2;
_slideClass = "APPS_journal";
[_display,_slide,([_slideClass,"picBg"] call XM8_Apps_fnc_getNextIDC),[1 * _pW, -1 * _pH, (_leftColW + _rightCol + 5) * _pW, 21 * _pH],"UK111\XM8\Apps\Journal\Scroll.paa",[1,1,1,1],false,false,""] call XM8_Apps_fnc_createPicture;
[_display,_slide,([_slideClass,"btnBack"] call XM8_Apps_fnc_getNextIDC),[27 * _pW, 17 * _pH, 6 * _pW, 1 * _pH],'["extraApps", 1] call ExileClient_gui_xm8_slide;',"Go Back"] call XM8_Apps_fnc_createButton;
_newParent = [_display,_slide,([_slideClass,"ctrlGrp"] call XM8_Apps_fnc_getNextIDC),[6.5 * _pW, 3 * _pH, 21 * _pW, 13 * _pH]] call XM8_Apps_fnc_createCtrlGrp;
_listCtrl = [_display,_newParent,([_slideClass,"listNotes"] call XM8_Apps_fnc_getNextIDC),[0 * _pW, 0 * _pH, 21 * _pW, 13 * _pH],""] call XM8_Apps_fnc_createList;
_editCtrl = [_display,_slide,([_slideClass,"editNote"] call XM8_Apps_fnc_getNextIDC),[6.5 * _pW, 16.05 * _pH, 21 * _pW, 1 * _pH],""] call XM8_Apps_fnc_createEdit;
[_display,_slide,([_slideClass,"btnSave"] call XM8_Apps_fnc_getNextIDC),[11.5 * _pW, 17 * _pH, 4 * _pW, 1 * _pH],format["[%1, %2] call ExAd_journal_fnc_addNote", ctrlIDC _listCtrl, ctrlIDC _editCtrl],"Save"] call XM8_Apps_fnc_createButton;
[_display,_slide,([_slideClass,"btnRemove"] call XM8_Apps_fnc_getNextIDC),[18.5 * _pW, 17 * _pH, 4 * _pW, 1 * _pH],format["[%1] call ExAd_journal_fnc_removeNote", ctrlIDC _listCtrl],"Remove"] call XM8_Apps_fnc_createButton;
true