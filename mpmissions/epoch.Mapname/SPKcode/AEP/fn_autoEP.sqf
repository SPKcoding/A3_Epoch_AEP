if(loadedAutoEP isEqualTo 0)then{
	if(alive player && isNil'useAutoEP')then{
		useAutoEP=true;
		loadedAutoEP=1
	}
};
while{true}do{
	if(!alive player)exitWith{5 fadeSound 1;loadedAutoEP=0};
	if(isNil'useAutoEP')exitWith{5 fadeSound 1};
	waitUntil{if(vehicle player == player)then[{uiSleep 2;false},{if(vehicle player != player)then{true}}]};
	if(isNil'useAutoEP')then[{
		5 fadeSound 1
	},{
		if(soundVolume == 1)then{
			5 fadeSound 0.15;
			["<t shadow='1' size='0.75' shadowColor='#000000' color='#00ff00'><img size='0.75' shadowColor='#000000' image='SPKcode\AEP\ep.paa' color='#ff0000'/> Earplugs on!</t>",-0.65,-1,5,1,-0.25,789] spawn BIS_fnc_dynamicText;
			systemChat "[INFO] EARPLUGS ON !"
		}
	}];
	if(!alive player)exitWith{5 fadeSound 1;loadedAutoEP=0};
	if(isNil'useAutoEP')exitWith{5 fadeSound 1};
	waitUntil{if(vehicle player != player)then[{uiSleep 2;false},{if((vehicle player == player)||(vehicle player != player && isNil'useAutoEP'))then{true}}]};
	if(vehicle player != player && isNil'useAutoEP')exitWith{5 fadeSound 1;["<t shadow='1' size='0.75' shadowColor='#000000' color='#ffffff'><img size='0.75' shadowColor='#000000' image='img\ep.paa' color='#BDBDBD'/> Earplugs off!</t>",-0.65,-1,5,1,0.25,789] spawn BIS_fnc_dynamicText;loadedAutoEP=0};
	if(soundVolume < 1)then{5 fadeSound 1};
	if(!isNil'useAutoEP')then{
		["<t shadow='1' size='0.75' shadowColor='#000000' color='#ffffff'><img size='0.75' shadowColor='#000000' image='SPKcode\AEP\ep.paa' color='#BDBDBD'/> Earplugs off!</t>",-0.65,-1,5,1,0.25,789] spawn BIS_fnc_dynamicText;
		systemChat "[INFO] EARPLUGS OFF !"
	}
};
