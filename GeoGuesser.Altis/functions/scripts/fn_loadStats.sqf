if (profileNamespace getVariable ["ProfileSpaceScore", 0] isEqualTo 0) then 
{
	scoreArray = [];
} 
else 
{
	ScoreArray = profileNamespace getVariable ["ProfileSpaceScore", []];
	//scoreArray call geo_fnc_systemFormat;
};

