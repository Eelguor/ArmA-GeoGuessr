if !(_this isEqualType []) exitWith {_s};

private _s = _this apply {
	_x = [_x] param [0, 0, [0]];
	( ["0",""] select (_x > 9) ) + (_x toFixed 0);
};

format (["%1-%2-%3 %4:%5:%6"] + _s);