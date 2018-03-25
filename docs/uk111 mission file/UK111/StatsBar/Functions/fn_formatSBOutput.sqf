params [["_elements", [], [[]]], ["_color","",[""]], ["_text",""]];

{
	_text = format["%1%3%2", _text, _x, ExAd_SB_Text_InnerMargin];
}forEach _elements;

_color = if(count _color > 0)then{format["color='%1'",_color]}else{_color};
format["<t %3>%1%2%1</t>", ExAd_SB_Text_Margin , _text , _color ]