
params [
	"_displayorcontrol",
	"_keyCode",
	"_isShift",
	"_isCtrl",
	"_isAlt"
];

_handled = false;



switch (_KeyCode) do {

	// (P)
	case 25: {
		if (isNull findDisplay 60000) then {
			createDialog "stats";
		};
	};
	
	// (H)
	case 35: {
		["<t color='#E3BAB5'>General Help</t><br/><br/>The keybindings are:<br/><t color='#E3BAB5'>'H'</t> for Help<br/><t color='#E3BAB5'>'P'</t> for Statistics<br/><t color='#E3BAB5'>Alt + Left click</t> for locations on the map<br/><t color='#E3BAB5'>Scroll Wheel</t> for general actions<br/><br/><t color='#ED0C07'>Write to toille#7941 for any suggestions or bugreports</t><br/> ", "warning", 15] call geo_fnc_notifications;
	};

	
};

_handled = true;
