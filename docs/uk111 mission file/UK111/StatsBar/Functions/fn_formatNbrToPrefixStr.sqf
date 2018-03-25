params [["_nbr", 0, [0]], ["_response", ""], ["_prefix", ""]];

_prefix = if( _nbr >= 1000 ) then { if( _nbr >= 1000000 ) then {_nbr = _nbr / 1000000; "M" } else {_nbr = _nbr / 1000; "K" } }else{ "" };

format["%1%2", floor _nbr, _prefix]