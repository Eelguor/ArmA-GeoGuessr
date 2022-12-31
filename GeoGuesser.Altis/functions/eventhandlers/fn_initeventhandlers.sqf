

waituntil { !isNull ( finddisplay 46 ) };
( findDisplay 46)  displayAddEventHandler ["KeyDown", {_this call geo_fnc_onKeyDown}];


addMissionEventHandler ["MapSingleClick", {
	params ["_units", "_pos", "_alt", "_shift"];

	if (_alt) then 
	{
		deleteMarkerLocal "SelectMark";
		createMarkerLocal ["SelectMark", _pos];
		"SelectMark" setMarkerShapeLocal "ICON";
		"SelectMark" setMarkerSizeLocal [1,1];
		"SelectMark" setMarkerTypeLocal "mil_dot";
		"SelectMark" setMarkerColorLocal "ColorGreen";
	};
}];
