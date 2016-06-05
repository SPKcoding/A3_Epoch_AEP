private["_handler","_this select 1"];
_handler = false;
_fncAutoEP = {
	if(isNil'useAutoEP')then[{
		useAutoEP=true;
		[] spawn SPK_fnc_autoEP;
		systemChat "[INFO] AUTOMATIC EARPLUGS FUNCTION ENABLED..."
	},{
		useAutoEP=nil;
		systemChat "[INFO] AUTOMATIC EARPLUGS FUNCTION DISABLED..."
	}]
};
switch(_this select 1)do{case 62: {call _fncAutoEP}};
_handler
