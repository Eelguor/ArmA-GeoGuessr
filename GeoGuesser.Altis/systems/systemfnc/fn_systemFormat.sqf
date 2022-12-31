_s = _this;

for "_i" from 0 to count _this -1 do {  
	if ( typeName _s == "STRING") then {continue};

	if (count (toArray ((_s#_i) toFixed 0)) == 1) then {
		_s set [_i, "0"+ (_s#_i toFixed 0)];
	} else {
		_s set [_i, _s#_i toFixed 0];
	};
}; 
if (typename _s == "STRING") then {_s} else {
	format ["%1-%2-%3 %4:%5:%6", _s#0,_s#1,_s#2,_s#3,_s#4,_s#5];	
};

