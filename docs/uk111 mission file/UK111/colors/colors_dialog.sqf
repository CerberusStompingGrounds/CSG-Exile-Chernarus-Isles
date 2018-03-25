private ["_display", "_slider1", "_slider2", "_slider3", "_slider4", "_slider5", "_slider6", "_slider7", "_slider8", "_slider9", "_slider10", "_slider11", "_slider12", "_slider13", "_slider14", "_slider15", "_slider16", "_slider17", "_slider18", "_slider19", "_slider20", "_slider21", "_slider22"];
disableSerialization;
createDialog "UK111_color_corrections";
_display = uiNameSpace getVariable["UK111_color_corrections", displayNull];

_slider1 = _display displayCtrl 1901;
_slider1 sliderSetRange [0,1];
_slider1 sliderSetPosition UK111_ColorCorrections_1;

_slider2 = _display displayCtrl 1902;
_slider2 sliderSetRange [0,1];
_slider2 sliderSetPosition UK111_ColorCorrections_2;

_slider3 = _display displayCtrl 1903;
_slider3 sliderSetRange [0,1];
_slider3 sliderSetPosition UK111_ColorCorrections_3;

_slider4 = _display displayCtrl 1904;
_slider4 sliderSetRange [0,1];
_slider4 sliderSetPosition UK111_ColorCorrections_4;

_slider5 = _display displayCtrl 1905;
_slider5 sliderSetRange [0,1];
_slider5 sliderSetPosition UK111_ColorCorrections_5;

_slider6 = _display displayCtrl 1906;
_slider6 sliderSetRange [0,1];
_slider6 sliderSetPosition UK111_ColorCorrections_6;

_slider7 = _display displayCtrl 1907;
_slider7 sliderSetRange [0,1];
_slider7 sliderSetPosition UK111_ColorCorrections_7;

_slider8 = _display displayCtrl 1908;
_slider8 sliderSetRange [0,1];
_slider8 sliderSetPosition UK111_ColorCorrections_8;

_slider9 = _display displayCtrl 1909;
_slider9 sliderSetRange [0,1.5];
_slider9 sliderSetPosition UK111_ColorCorrections_9;

_slider10 = _display displayCtrl 1910;
_slider10 sliderSetRange [0,1];
_slider10 sliderSetPosition UK111_ColorCorrections_10;

_slider11 = _display displayCtrl 1911;
_slider11 sliderSetRange [0,1.5];
_slider11 sliderSetPosition UK111_ColorCorrections_11;
