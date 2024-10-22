// Control types
#define CT_STATIC           0
#define CT_BUTTON           1
#define CT_EDIT             2
#define CT_SLIDER           3
#define CT_COMBO            4
#define CT_LISTBOX          5
#define CT_TOOLBOX          6
#define CT_CHECKBOXES       7
#define CT_PROGRESS         8
#define CT_HTML             9
#define CT_STATIC_SKEW      10
#define CT_ACTIVETEXT       11
#define CT_TREE             12
#define CT_STRUCTURED_TEXT  13
#define CT_CONTEXT_MENU     14
#define CT_CONTROLS_GROUP   15
#define CT_SHORTCUTBUTTON   16
#define CT_XKEYDESC         40
#define CT_XBUTTON          41
#define CT_XLISTBOX         42
#define CT_XSLIDER          43
#define CT_XCOMBO           44
#define CT_ANIMATED_TEXTURE 45
#define CT_OBJECT           80
#define CT_OBJECT_ZOOM      81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK        98
#define CT_USER             99
#define CT_MAP              100
#define CT_MAP_MAIN         101
#define CT_LISTNBOX         102
#define CT_CHECKBOX         77

// Static styles
#define ST_POS            0x0F
#define ST_HPOS           0x03
#define ST_VPOS           0x0C
#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_DOWN           0x04
#define ST_UP             0x08
#define ST_VCENTER        0x0C

#define ST_TYPE           0xF0
#define ST_SINGLE         0x00
#define ST_MULTI          0x10
#define ST_TITLE_BAR      0x20
#define ST_PICTURE        0x30
#define ST_FRAME          0x40
#define ST_BACKGROUND     0x50
#define ST_GROUP_BOX      0x60
#define ST_GROUP_BOX2     0x70
#define ST_HUD_BACKGROUND 0x80
#define ST_TILE_PICTURE   0x90
#define ST_WITH_RECT      0xA0
#define ST_LINE           0xB0

#define ST_SHADOW         0x100
#define ST_NO_RECT        0x200
#define ST_KEEP_ASPECT_RATIO  0x800

#define ST_TITLE          ST_TITLE_BAR + ST_CENTER

// Slider styles
#define SL_DIR            0x400
#define SL_VERT           0
#define SL_HORZ           0x400

#define SL_TEXTURES       0x10

// progress bar
#define ST_VERTICAL       0x01
#define ST_HORIZONTAL     0

// Listbox styles
#define LB_TEXTURES       0x10
#define LB_MULTI          0x20

// Tree styles
#define TR_SHOWROOT       1
#define TR_AUTOCOLLAPSE   2

// MessageBox styles
#define MB_BUTTON_OK      1
#define MB_BUTTON_CANCEL  2
#define MB_BUTTON_USER    4


///////////////////////////////////////////////////////////////////////////
/// Base Classes
///////////////////////////////////////////////////////////////////////////
class RscMarXetText
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 0;
	idc = -1;
	colorBackground[] ={0,0,0,0};
	colorText[] ={1,1,1,1};
	text = "";
	fixedWidth = 0;
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	style = 0;
	shadow = 0;
	colorShadow[] ={0,0,0,0.5};
	font = "OrbitronLight";
	SizeEx = "(((((safezoneW / safezoneH) min 0.9) / 1.2) / 25) * 1)";
	linespacing = 1;
	tooltipColorText[] ={1,1,1,1};
	tooltipColorBox[] ={1,1,1,1};
	tooltipColorShade[] ={0,0,0,0.65};
};
class RscMarXetStructuredText
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 13;
	idc = -1;
	style = 0;
	colorText[] ={1,1,1,1};
	class Attributes
	{
		font = "PuristaMedium";
		color = "#ffffff";
		colorLink = "#D09B43";
		align = "left";
		shadow = 1;
	};
	x = 0;
	y = 0;
	h = 0.035;
	w = 0.1;
	text = "";
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	shadow = 1;
};
class RscMarXetPictureKeepAspect
{
	access = 0;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	deletable = 0;
	fade = 0;
	fixedWidth = 0;
	font = "TahomaB";
	h = 0.15;
	idc = -1;
	linespacing = 0;
	shadow = 0;
	sizeEx = 0;
	style = "0x30 + 0x800";
	text ="";
	tooltipColorBox[] = {1,1,1,1};
	tooltipColorShade[] = {0,0,0,0.65};
	tooltipColorText[] = {1,1,1,1};
	type = 0;
	w = 0.2;
	x = 0;
	y = 0;
};
class RscMarXetPicture
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 0;
	idc = -1;
	style = 48;
	colorBackground[] ={0,0,0,0};
	colorText[] ={1,1,1,1};
	font = "TahomaB";
	sizeEx = 0;
	lineSpacing = 0;
	text = "";
	fixedWidth = 0;
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.2;
	h = 0.15;
	tooltipColorText[] ={1,1,1,1};
	tooltipColorBox[] ={1,1,1,1};
	tooltipColorShade[] ={0,0,0,0.65};
};
class RscMarXetEdit
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 2;
	x = 0;
	y = 0;
	h = 0.04;
	w = 0.2;
	colorBackground[] ={0,0,0,0};
	colorText[] ={1,1,1,1};
	colorDisabled[] ={1,1,1,0.5};
	colorSelection[] =
	{
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",
		1
	};
	autocomplete = "";
	text = "";
	size = 0.2;
	style = "0x00 + 0x40";
	font = "OrbitronLight";
	shadow = 2;
	sizeEx = "(((((safezoneW / safezoneH) min 1) / 1.2) / 25) * 1)";
	canModify = 1;
	tooltipColorText[] =
	{1,1,1,1};
	tooltipColorBox[] ={1,1,1,1};
	tooltipColorShade[] ={0,0,0,0.65};
};
class RscMarXetCombo
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 4;
	colorSelect[] ={0,0,0,1};
	colorText[] ={1,1,1,1};
	colorBackground[] ={0,0,0,1};
	colorScrollbar[] ={1,0,0,1};
	colorDisabled[] ={1,1,1,0.25};
	colorPicture[] ={1,1,1,1};
	colorPictureSelected[] ={1,1,1,1};
	colorPictureDisabled[] ={1,1,1,0.25};
	colorPictureRight[] ={1,1,1,1};
	colorPictureRightSelected[] ={1,1,1,1};
	colorPictureRightDisabled[] ={1,1,1,0.25};
	colorTextRight[] ={1,1,1,1};
	colorSelectRight[] ={0,0,0,1};
	colorSelect2Right[] ={0,0,0,1};
	tooltipColorText[] ={1,1,1,1};
	tooltipColorBox[] ={1,1,1,1};
	tooltipColorShade[] ={0,0,0,0.65};
	soundSelect[] =
	{
		"\A3\ui_f\data\sound\RscCombo\soundSelect",
		0.1,
		1
	};
	soundExpand[] =
	{
		"\A3\ui_f\data\sound\RscCombo\soundExpand",
		0.1,
		1
	};
	soundCollapse[] =
	{
		"\A3\ui_f\data\sound\RscCombo\soundCollapse",
		0.1,
		1
	};
	maxHistoryDelay = 1;
	class ComboScrollBar
	{
		color[] ={1,1,1,1};
	};
	style = "0x10 + 0x200";
	font = "PuristaMedium";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.12;
	h = 0.035;
	colorSelectBackground[] ={1,1,1,0.7};
	arrowEmpty = "";
	arrowFull = "";
	wholeHeight = 0.45;
	colorActive[] ={1,0,0,1};
};
class RscMarXetListBox
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 5;
	rowHeight = 0;
	colorText[] ={1,1,1,1};
	colorDisabled[] ={1,1,1,0.25};
	colorScrollbar[] ={1,0,0,0};
	colorSelect[] ={0,0.698,0.804,1};
	colorSelect2[] ={0,0.698,0.804,1};
	colorSelectBackground[] ={1,1,1,0.3};
	colorSelectBackground2[] ={1,1,1,0.3};
	colorBackground[] ={0,0,0,0.3};
	soundSelect[] =
	{
		"\A3\ui_f\data\sound\RscListbox\soundSelect",
		0.09,
		1
	};
	autoScrollSpeed = -1;
	autoScrollDelay = 5;
	autoScrollRewind = 0;
	arrowEmpty = "#(argb,8,8,3)color(1,1,1,1)";
	arrowFull = "#(argb,8,8,3)color(1,1,1,1)";
	colorPicture[] ={0,0.698,0.804,1};
	colorPictureSelected[] ={1,1,1,1};
	colorPictureDisabled[] ={1,1,1,0.25};
	colorPictureRight[] ={1,1,1,1};
	colorPictureRightSelected[] ={1,1,1,1};
	colorPictureRightDisabled[] ={1,1,1,0.25};
	colorTextRight[] ={1,1,1,1};
	colorSelectRight[] ={0,00,1};
	colorSelect2Right[] ={0,0,0,1};
	tooltipColorText[] ={1,1,1,1};
	tooltipColorBox[] ={1,1,1,1};
	tooltipColorShade[] ={0,0,0,0.65};
	class ListScrollBar
	{
		color[] ={1,1,1,0.5};
		autoScrollEnabled = 1;
	};
	x = 0;
	y = 0;
	w = 0.3;
	h = 0.3;
	style = 16;
	font = "OrbitronLight";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	shadow = 0;
	colorShadow[] ={0,0,0,0.5};
	period = 1.2;
	maxHistoryDelay = 1;
};
class RscExileMarXetItemListBox: RscMarXetListBox
{
	sizeEx = "0.8 * 			(			(			((safezoneW / safezoneH) min 1) / 1.2) / 25)";
	sizeEx2 = "0.8 * 			(			(			((safezoneW / safezoneH) min 1) / 1.2) / 25)";
	rowHeight = "2 * 			(			(			((safezoneW / safezoneH) min 1) / 1.2) / 25)";
	canDrag = 0;
	itemSpacing = 0.001;
	period = 1.2;
	shadow = 0;
	maxHistoryDelay = 1;
	fade = 0;
	deletable = 0;
	type = 5;
	style = 16;
	colorSelect[] = {0, 0, 0, 1};
	colorBackground[] = {0, 0, 0, 0.3};
	colorDisabled[] = {1, 1, 1, 0.25};
	colorPicture[] = {1, 1, 1, 1};
	colorPictureDisabled[] = {1, 1, 1, 0.25};
	colorPictureRight[] = {1, 1, 1, 1};
	colorPictureRightDisabled[] = {1, 1, 1, 0.25};
	colorPictureSelected[] = {1, 1, 1, 1};
	colorScrollbar[] = {1, 0, 0, 0}; // yes, this is RED
	colorSelect2[] = {0, 0, 0, 1};
	colorSelect2Right[] = {0, 0, 0, 1};
	colorSelectBackground2[] = {1, 1, 1, 0.5};
	colorSelectBackground[] = {0.95, 0.95, 0.95, 1};
	colorSelectRight[] = {0, 0, 0, 1};
	colorShadow[] = {0, 0, 0, 0.5};
	colorText[] = {1, 1, 1, 1};
	colorTextRight[] = {1, 1, 1, 1};
	disabledCtrlColor[] = {1, 1, 1, 0.5};
	itemBackground[] = {1, 1, 1, 0.1};
	tooltipColorBox[] = {1, 1, 1, 1};
	tooltipColorShade[] = {0, 0, 0, 0.65};
	tooltipColorText[] = {1, 1, 1, 1};
	soundSelect[] =
	{
		"\A3\ui_f\data\sound\RscListbox\soundSelect",
		0.09,
		1
	};
	class ListScrollBar
	{
		color[] ={1,1,1,0.5};
		autoScrollEnabled = 1;
	};
	font = "OrbitronLight";
};
class RscMarXetButton
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 1;
	text = "";
	colorText[] ={1,1,1,1};
	colorDisabled[] ={1,1,1,0.25};
	colorBackground[] ={0,0,0,0.2};
	colorBackgroundDisabled[] ={0,0,0,0.5};
	colorBackgroundActive[] ={1,1,1,0.05};
	colorFocused[] ={1,1,1,0};
	colorShadow[] ={0,0,0,0};
	colorBorder[] ={0,0,0,1};
	soundEnter[] =
	{
		"\A3\ui_f\data\sound\RscButton\soundEnter",
		0.09,
		1
	};
	soundPush[] =
	{
		"\A3\ui_f\data\sound\RscButton\soundPush",
		0.09,
		1
	};
	soundClick[] =
	{
		"\A3\ui_f\data\sound\RscButton\soundClick",
		0.09,
		1
	};
	soundEscape[] =
	{
		"\A3\ui_f\data\sound\RscButton\soundEscape",
		0.09,
		1
	};
	style = 2;
	x = 0;
	y = 0;
	w = 0.095589;
	h = 0.039216;
	shadow = 2;
	font = "OrbitronLight";
	sizeEx = "(((((safezoneW / safezoneH) min 1) / 1.2) / 25) * 1)";
	offsetX = 0;
	offsetY = 0;
	offsetPressedX = 0;
	offsetPressedY = 0;
	borderSize = 0;
};
class RscMarXetShortcutButton
{
	deletable = 0;
	fade = 0;
	type = 16;
	x = 0.1;
	y = 0.1;
	class HitZone
	{
		left = 0;
		top = 0;
		right = 0;
		bottom = 0;
	};
	class ShortcutPos
	{
		left = 0;
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 20) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		w = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) * (3/4)";
		h = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	};
	class TextPos
	{
		left = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) * (3/4)";
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 20) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		right = 0.005;
		bottom = 0;
	};
	shortcuts[] =
	{
	};
	textureNoShortcut = "#(argb,8,8,3)color(0,0,0,0)";
	color[] ={1,1,1,1};
	colorFocused[] ={1,1,1,1};
	color2[] ={0.95,0.95,0.95,1};
	colorDisabled[] ={1,1,1,0.25};
	colorBackground[] =
	{
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",
		1
	};
	colorBackgroundFocused[] =
	{
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",
		1
	};
	colorBackground2[] ={1,1,1,1};
	soundEnter[] =
	{
		"\A3\ui_f\data\sound\RscButton\soundEnter",
		0.09,
		1
	};
	soundPush[] =
	{
		"\A3\ui_f\data\sound\RscButton\soundPush",
		0.09,
		1
	};
	soundClick[] =
	{
		"\A3\ui_f\data\sound\RscButton\soundClick",
		0.09,
		1
	};
	soundEscape[] =
	{
		"\A3\ui_f\data\sound\RscButton\soundEscape",
		0.09,
		1
	};
	class Attributes
	{
		font = "PuristaMedium";
		color = "#E5E5E5";
		align = "left";
		shadow = "true";
	};
	idc = -1;
	style = 0;
	default = 0;
	shadow = 1;
	w = 0.183825;
	h = "((((safezoneW / safezoneH) min 1.2) / 1.2) / 20)";
	textSecondary = "";
	colorSecondary[] ={1,1,1,1};
	colorFocusedSecondary[] ={1,1,1,1};
	color2Secondary[] ={0.95,0.95,0.95,1};
	colorDisabledSecondary[] ={1,1,1,0.25};
	sizeExSecondary = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	fontSecondary = "PuristaMedium";
	animTextureDefault = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureNormal = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureDisabled = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\normal_ca.paa";
	animTextureOver = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\over_ca.paa";
	animTextureFocused = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\focus_ca.paa";
	animTexturePressed = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButton\down_ca.paa";
	periodFocus = 1.2;
	periodOver = 0.8;
	period = 0.4;
	font = "PuristaMedium";
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	text = "";
	action = "";
	class AttributesImage
	{
		font = "PuristaMedium";
		color = "#E5E5E5";
		align = "left";
	};
};
class RscMarXetShortcutButtonMain
{
	idc = -1;
	style = 0;
	default = 0;
	w = 0.313726;
	h = 0.104575;
	color[] ={1,1,1,1};
	colorDisabled[] ={1,1,1,0.25};
	class HitZone
	{
		left = 0;
		top = 0;
		right = 0;
		bottom = 0;
	};
	class ShortcutPos
	{
		left = 0.0145;
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 20) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)) / 2";
		w = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2) * (3/4)";
		h = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)";
	};
	class TextPos
	{
		left = "(((safezoneW / safezoneH) min 1.2) / 32) * 1.5";
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 20)*2 - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)) / 2";
		right = 0.005;
		bottom = 0;
	};
	animTextureNormal = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\normal_ca.paa";
	animTextureDisabled = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\disabled_ca.paa";
	animTextureOver = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\over_ca.paa";
	animTextureFocused = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\focus_ca.paa";
	animTexturePressed = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\down_ca.paa";
	animTextureDefault = "\A3\ui_f\data\GUI\RscCommon\RscShortcutButtonMain\normal_ca.paa";
	period = 0.5;
	font = "PuristaMedium";
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1.2)";
	text = "";
	action = "";
	class Attributes
	{
		font = "PuristaMedium";
		color = "#E5E5E5";
		align = "left";
		shadow = "false";
	};
	class AttributesImage
	{
		font = "PuristaMedium";
		color = "#E5E5E5";
		align = "false";
	};
};
class RscMarXetFrame
{
	type = 0;
	idc = -1;
	style = 64;
	shadow = 2;
	colorBackground[] ={0,0,0,0};
	colorText[] ={1,1,1,1};
	font = "PuristaMedium";
	sizeEx = 0.02;
	text = "";
	x = 0;
	y = 0;
	w = 0.3;
	h = 0.3;
};
class RscMarXetSlider
{
	deletable = 0;
	fade = 0;
	access = 0;
	type = 3;
	style = 1024;
	color[] ={1,1,1,0.8};
	colorActive[] ={1,1,1,1};
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.3;
	h = 0.025;
};
class MarXetIGUIBack
{
	type = 0;
	idc = 124;
	style = 128;
	text = "";
	colorText[] ={0,0,0,0};
	font = "PuristaMedium";
	sizeEx = 0;
	shadow = 0;
	x = 0.1;
	y = 0.1;
	w = 0.1;
	h = 0.1;
	colorbackground[] =
	{
		"(profilenamespace getvariable ['IGUI_BCG_RGB_R',0])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_G',1])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_B',1])",
		"(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.8])"
	};
};
class RscMarXetCheckBox
{
	idc = -1;
	type = 77;
	style = 0;
	checked = 0;
	x = "0.375 * safezoneW + safezoneX";
	y = "0.36 * safezoneH + safezoneY";
	w = "0.025 * safezoneW";
	h = "0.04 * safezoneH";
	color[] ={1,1,1,0.7};
	colorFocused[] ={1,1,1,1};
	colorHover[] ={1,1,1,1};
	colorPressed[] ={1,1,1,1};
	colorDisabled[] ={1,1,1,0.2};
	colorBackground[] ={0,0,0,0};
	colorBackgroundFocused[] ={0,0,0,0};
	colorBackgroundHover[] ={0,0,0,0};
	colorBackgroundPressed[] ={0,0,0,0};
	colorBackgroundDisabled[] ={0,0,0,0};
	textureChecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureUnchecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	textureFocusedChecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureFocusedUnchecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	textureHoverChecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureHoverUnchecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	texturePressedChecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	texturePressedUnchecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	textureDisabledChecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_checked_ca.paa";
	textureDisabledUnchecked = "A3\Ui_f\data\GUI\RscCommon\RscCheckBox\CheckBox_unchecked_ca.paa";
	tooltipColorText[] ={1,1,1,1};
	tooltipColorBox[] ={1,1,1,1};
	tooltipColorShade[] ={0,0,0,0.65};
	soundEnter[] ={"",0.1,1};
	soundPush[] ={"",0.1,1};
	soundClick[] ={"",0.1,1};
	soundEscape[] ={"",0.1,1};
};
class RscMarXetTextCheckBox
{
	idc = -1;
	type = 7;
	style = 0;
	x = "0.375 * safezoneW + safezoneX";
	y = "0.36 * safezoneH + safezoneY";
	w = "0.025 * safezoneW";
	h = "0.04 * safezoneH";
	colorText[] ={1,0,0,1};
	color[] ={0,0,0,0};
	colorBackground[] ={0,0,0,0};
	colorTextSelect[] ={0,0.8,0,1};
	colorSelectedBg[] =
	{
		"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.77])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_G',0.51])",
		"(profilenamespace getvariable ['GUI_BCG_RGB_B',0.08])",
		1
	};
	colorSelect[] ={0,0,0,1};
	colorTextDisable[] ={0.4,0.4,0.4,1};
	colorDisable[] ={0.4,0.4,0.4,1};
	tooltipColorText[] ={1,1,1,1};
	tooltipColorBox[] ={1,1,1,1};
	tooltipColorShade[] ={0,0,0,0.65};
	font = "PuristaMedium";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
	rows = 1;
	columns = 1;
	strings[] =
	{
		"UNCHECKED"
	};
	checked_strings[] =
	{
		"CHECKED"
	};
};
class RscMarXetButtonMenu
{
	idc = -1;
	type = 16;
	style = "0x02 + 0xC0";
	default = 0;
	shadow = 0;
	x = 0;
	y = 0;
	w = 0.095589;
	h = 0.039216;
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,1)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,1)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,1)";
	colorBackground[] ={0,0,0,0.8};
	colorBackgroundFocused[] ={1,1,1,1};
	colorBackground2[] ={0.75,0.75,0.75,1};
	color[] ={1,1,1,1};
	colorFocused[] ={0,0,0,1};
	color2[] ={0,0,0,1};
	colorText[] ={1,1,1,1};
	colorDisabled[] ={1,1,1,0.25};
	textSecondary = "";
	colorSecondary[] ={1,1,1,1};
	colorFocusedSecondary[] ={0,0,0,1};
	color2Secondary[] ={0,0,0,1};
	colorDisabledSecondary[] ={1,1,1,0.25};
	sizeExSecondary = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	fontSecondary = "PuristaLight";
	period = 1.2;
	periodFocus = 1.2;
	periodOver = 1.2;
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
	tooltipColorText[] ={1,1,1,1};
	tooltipColorBox[] ={1,1,1,1};
	tooltipColorShade[] ={0,0,0,0.65};
	class TextPos
	{
		left = "0.25 * (((safezoneW / safezoneH) min 1.2) / 40)";
		top = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) - (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)) / 2";
		right = 0.005;
		bottom = 0;
	};
	class Attributes
	{
		font = "PuristaLight";
		color = "#E5E5E5";
		align = "left";
		shadow = "false";
	};
	class ShortcutPos
	{
		left = "5.25 * (((safezoneW / safezoneH) min 1.2) / 40)";
		top = 0;
		w = "1 * (((safezoneW / safezoneH) min 1.2) / 40)";
		h = "1 * ((((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
	};
	soundEnter[] =
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundEnter",
		0.09,
		1
	};
	soundPush[] =
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundPush",
		0.09,
		1
	};
	soundClick[] =
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundClick",
		0.09,
		1
	};
	soundEscape[] =
	{
		"\A3\ui_f\data\sound\RscButtonMenu\soundEscape",
		0.09,
		1
	};
};
class RscMarXetButtonMenuOK
{
	idc = 1;
	shortcuts[] ={
		"0x00050000 + 0",
		28,
		57,
		156
	};
	default = 1;
	text = "OK";
	soundPush[] =
	{
		"\A3\ui_f\data\sound\RscButtonMenuOK\soundPush",
		0.09,
		1
	};
};
class RscMarXetButtonMenuCancel
{
	idc = 2;
	shortcuts[] =
	{
		"0x00050000 + 1"
	};
	text = "Cancel";
};
class RscMarXetControlsGroup
{
	deletable = 0;
	fade = 0;
	class VScrollbar
	{
		color[] ={1,1,1,1};
		width = 0.021;
		autoScrollEnabled = 1;
	};
	class HScrollbar
	{
		color[] ={1,1,1,1};
		height = 0.028;
	};
	class Controls
	{
	};
	type = 15;
	idc = -1;
	x = 0;
	y = 0;
	w = 1;
	h = 1;
	shadow = 0;
	style = 16;
};
class RscMarXetProgress
{
	type = 8;
	style = 0;
	colorFrame[] = {0,0,0,1};
	colorBar[] = {0,0.698,0.804,1};
	texture = "#(argb,8,8,3)color(1,1,1,1)";
	w = 1;
	h = 0.03;
};

class RscMarXetDialog
{
	idd = 21000;
	onLoad = "uiNamespace setVariable ['RscMarXetDialog', _this select 0]; [""Load""] call ExileClient_MarXet_gui_load";
	onUnload = "[""UnLoad""] call ExileClient_MarXet_gui_load;uiNamespace setVariable ['RscMarXetDialog', displayNull];";
	class controls
	{
		class MarXetCenterPanelBackground: RscMarXetText
        {
        	idc = 21001;
        	x = 0.402031 * safezoneW + safezoneX;
        	y = 0.247 * safezoneH + safezoneY;
        	w = 0.195937 * safezoneW;
        	h = 0.528 * safezoneH;
        	colorBackground[] = {0.05,0.05,0.05,0.7};
        };
        class MarXetCreateAListingTitleBackground: RscMarXetText
        {
        	idc = 21002;
        	text = "CREATE A LISTING";
        	x = 0.200937 * safezoneW + safezoneX;
        	y = 0.2206 * safezoneH + safezoneY;
        	w = 0.195937 * safezoneW;
        	h = 0.022 * safezoneH;
        	colorBackground[] = {0.1,0.1,0.1,1};
        };
        class MarXetRightPanelBackground: RscMarXetText
        {
        	idc = 21003;
        	x = 0.603125 * safezoneW + safezoneX;
        	y = 0.247 * safezoneH + safezoneY;
        	w = 0.195937 * safezoneW;
        	h = 0.528 * safezoneH;
        	colorBackground[] = {0.05,0.05,0.05,0.7};
        };
        class MarXetLeftPanelBackground: RscMarXetText
        {
        	idc = 21004;
        	x = 0.200937 * safezoneW + safezoneX;
        	y = 0.247 * safezoneH + safezoneY;
        	w = 0.195937 * safezoneW;
        	h = 0.528 * safezoneH;
        	colorBackground[] = {0.05,0.05,0.05,0.7};
        };
        class MarXetInformationTitleBackground: RscMarXetText
        {
        	idc = 21005;
        	text = "INFORMATION";
        	x = 0.402031 * safezoneW + safezoneX;
        	y = 0.2206 * safezoneH + safezoneY;
        	w = 0.195937 * safezoneW;
        	h = 0.022 * safezoneH;
        	colorBackground[] = {0.1,0.1,0.1,1};
        };
        class MarXetLeftPanelTitleBackground: RscMarXetText
        {
        	idc = 21006;
        	text = "CURRENT LISTINGS";
        	x = 0.603125 * safezoneW + safezoneX;
        	y = 0.2206 * safezoneH + safezoneY;
        	w = 0.195937 * safezoneW;
        	h = 0.022 * safezoneH;
        	colorBackground[] = {0.1,0.1,0.1,1};
        };
		class CenterDescription: RscMarXetStructuredText
		{
			idc = 21008;

			text = "<t font='OrbitronLight' size='0.7'><t size='1' align='center'>WELCOME!</t><br/>Buying:<br/>Choose your new purchase in the list to the right and click purchase.<br/>Listing/Selling:<br/>Click your desired item/vehicle you want to list on the left<br/>Set your price and click Confirm Listing<br/><br/><t color='#ff0000'>WARNING:</t><br/>Any items in vehicles or any attachments on weapons will be deleted upon listing!</t>";
			x = 0.412344 * safezoneW + safezoneX;
			y = 0.346 * safezoneH + safezoneY;
			w = 0.175313 * safezoneW;
			h = 0.22 * safezoneH;
			colorBackground[] = {-1,-1,-1,0};
		};
		class CenterItemName: RscMarXetText
		{
			idc = 21009;
			x = 0.427812 * safezoneW + safezoneX;
			y = 0.577 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {-1,-1,-1,0};
			SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			style = 0x02;
		};
		class CenterPriceTitle: RscMarXetText
		{
			idc = 21010;

			text = "PRICE:";
			x = 0.427812 * safezoneW + safezoneX;
			y = 0.61 * safezoneH + safezoneY;
			w = 0.0360947 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {-1,-1,-1,0};
		};
		class CenterPriceEditBox: RscMarXetEdit
		{
			idc = 21011;
			x = 0.463906 * safezoneW + safezoneX;
			y = 0.61 * safezoneH + safezoneY;
			w = 0.103125 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {-1,-1,-1,0};
			colorText[] = {0.988,0.749,0,1};
		};
		class CenterVehicleDamage: RscMarXetText
		{
			idc = 21020;
			show = false;
			text = "Health:";
			x = 0.427812 * safezoneW + safezoneX;
			y = 0.676 * safezoneH + safezoneY;
			w = 0.0464063 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {-1,-1,-1,0};
		};
		class CenterVehicleHealthPercentage: RscMarXetText
		{
			idc = 21021;
			show = false;
			text = "100%";
			x = 0.463219 * safezoneW + safezoneX;
			y = 0.676 * safezoneH + safezoneY;
			w = 0.0309375 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {-1,-1,-1,0};
			colorText[] = {0.988,0.749,0,1};
		};
		class CenterVehicleFuel: RscMarXetText
		{
			idc = 21022;
			show = false;
			text = "Fuel:";
			x = 0.5 * safezoneW + safezoneX;
			y = 0.676 * safezoneH + safezoneY;
			w = 0.0309375 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {-1,-1,-1,0};
		};
		class CenterVehicleFuelPercentage: RscMarXetText
		{
			idc = 21023;
			show = false;
			text = "100%";
			x = 0.533307 * safezoneW + safezoneX;
			y = 0.676 * safezoneH + safezoneY;
			w = 0.0309375 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {-1,-1,-1,0};
			colorText[] = {0.988,0.749,0,1};
		};
		class CenterPurchaseButton: RscMarXetButton
		{
			idc = 21014;
			text = "Purchase";
			x = 0.505156 * safezoneW + safezoneX;
			y = 0.72 * safezoneH + safezoneY;
			w = 0.0773437 * safezoneW;
			h = 0.033 * safezoneH;
			onButtonClick = "[""buttonPressed"",0] call ExileClient_MarXet_gui_load;";
		};
		class CenterConfirmButton: RscMarXetButton
		{
			idc = 21024;
			text = "Comfirm Listing";
			show = false;
			x = 0.505156 * safezoneW + safezoneX;
			y = 0.72 * safezoneH + safezoneY;
			w = 0.0773437 * safezoneW;
			h = 0.033 * safezoneH;
			onButtonClick = "[""buttonPressed"",1] call ExileClient_MarXet_gui_load;";
		};
		class CenterExitButton: RscMarXetButton
		{
			idc = 21015;
			text = "Exit";
			x = 0.4175 * safezoneW + safezoneX;
			y = 0.72 * safezoneH + safezoneY;
			w = 0.0825 * safezoneW;
			h = 0.033 * safezoneH;
			onButtonClick = "closeDialog 21000;";
		};
        class RightDropdown: RscMarXetCombo
        {
        	idc = 21016;
			x = 0.608281 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.0896563 * safezoneW;
			h = 0.022 * safezoneH;
        };
        class RightListbox: RscExileMarXetItemListBox
        {
        	idc = 21017;
        	x = 0.608281 * safezoneW + safezoneX;
        	y = 0.291 * safezoneH + safezoneY;
        	w = 0.185625 * safezoneW;
        	h = 0.473 * safezoneH;
        };
        class LeftListbox: RscExileMarXetItemListBox
        {
        	idc = 21018;
        	x = 0.206094 * safezoneW + safezoneX;
        	y = 0.291 * safezoneH + safezoneY;
        	w = 0.185625 * safezoneW;
        	h = 0.473 * safezoneH;
        };
        class LeftDropdown: RscMarXetCombo
        {
        	idc = 21019;
        	x = 0.206094 * safezoneW + safezoneX;
        	y = 0.258 * safezoneH + safezoneY;
        	w = 0.113437 * safezoneW;
        	h = 0.022 * safezoneH;
        };
		class LeftPanelPlayerMoney: RscMarXetStructuredText
		{
			idc = 21025;
			x = 0.313344 * safezoneW + safezoneX;
			y = 0.2206 * safezoneH + safezoneY;
			w = 0.0825 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {-1,-1,-1,0};
		};
		class VehiclePinCode: RscMarXetText
		{
			idc = 21031;
			show = false;
			text = "PIN CODE:"; //--- ToDo: Localize;
			x = 0.427812 * safezoneW + safezoneX;
			y = 0.643 * safezoneH + safezoneY;
			w = 0.0464063 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {-1,-1,-1,0};
		};
		class VehiclePinCodeEditBox: RscMarXetEdit
		{
			idc = 21032;
			show = false;
			x = 0.482219 * safezoneW + safezoneX;
			y = 0.6432 * safezoneH + safezoneY;
			w = 0.0567187 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {-1,-1,-1,0};
		};
		class Sorting: RscMarXetCombo
		{
			idc = 21033;
			x = 0.702094 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.0908125 * safezoneW;
			h = 0.022 * safezoneH;
		};

		class NotificationBackground: RscMarXetText
		{
			idc = 21029;
			show = false;
			x = 0.200937 * safezoneW + safezoneX;
			y = 0.2206 * safezoneH + safezoneY;
			w = 0.598125 * safezoneW;
			h = 0.5544 * safezoneH;
			colorBackground[] = {0.067,0.082,0.094,0.95};
		};
		class NotificationTitle: RscMarXetStructuredText
		{
			idc = 21030;
			show = false;
			x = 0.355625 * safezoneW + safezoneX;
			y = 0.401 * safezoneH + safezoneY;
			w = 0.185625 * safezoneW;
			h = 0.044 * safezoneH;
			colorBackground[] = {-1,-1,-1,0};
		};
		class NotificationText: RscMarXetStructuredText
		{
			idc = 21026;
			show = false;
			x = 0.355625 * safezoneW + safezoneX;
			y = 0.456 * safezoneH + safezoneY;
			w = 0.299062 * safezoneW;
			h = 0.11 * safezoneH;
			colorBackground[] = {-1,-1,-1,0};
		};
		class NotificationConfirm: RscMarXetButton
		{
			idc = 21027;
			show = false;
			text = "Purchase"; //--- ToDo: Localize;
			x = 0.489687 * safezoneW + safezoneX;
			y = 0.588 * safezoneH + safezoneY;
			w = 0.0721875 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[""DisplayNotification"",1] call ExileClient_MarXet_gui_load;";
		};
		class NotificationCancel: RscMarXetButton
		{
			idc = 21028;
			show = false;
			text = "Cancel"; //--- ToDo: Localize;
			x = 0.572187 * safezoneW + safezoneX;
			y = 0.588 * safezoneH + safezoneY;
			w = 0.0721875 * safezoneW;
			h = 0.022 * safezoneH;
			onButtonClick = "[""DisplayNotification"",2] call ExileClient_MarXet_gui_load;";
		};

		class CenterMarXetTitle: RscMarXetStructuredText
		{
			idc = 21007;

			text = "<t color='#FFFFFF' font='OrbitronLight' size='2' valign='middle' align='center' shadow='0'>Marketplace</t>";
			x = 0.427812 * safezoneW + safezoneX;
			y = 0.2705 * safezoneH + safezoneY;
			w = 0.144375 * safezoneW;
			h = 0.077 * safezoneH;
			colorBackground[] = {-1,-1,-1,0};
		};
    };
};