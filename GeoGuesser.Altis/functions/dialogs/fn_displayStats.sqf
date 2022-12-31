params ["_mode", "_this"];

switch (_mode) do {
	case "onLoad": {
		private _display = findDisplay 60000;
		private _ctrlListNbox = _display displayCtrl 61000;

		private _txt = "";

		//for "_i" from 0 to (count scoreArray - 1) do {
		//
		//	
		//	_arr = scoreArray select _i; 
		//	if (typeName _arr != "STRING") then {
		//	_arr set [0, _arr#0 call geo_fnc_systemFormat]; };
//
//
		//};

		_ctrlListNbox lnbAddRow ["Timestamp", "Distance", "Time", "Total Attempts", "Profile"];

		{
		 	private _index = _ctrlListNbox lnbAddRow [
				_x#0,
				format ["%1", _x#1],
				format ["%1", _x#2],
				format ["%1", _x#3],
				profileName
			];	
			_ctrlListNBox lnbSetData [[_index, 0], ""];
			_ctrlListNBox lnbSetValue [[_index, 0], ("")];
		} forEach scoreArray;

		_ctrlListNBox lnbSortByValue [0, false];

		_ctrlListNbox ctrlAddEventHandler ["LBDblClick", {["onLBDblClick", _this] call geo_fnc_displayStats}];
	};

};

