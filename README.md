####Automatic Earplugs for A3-EPOCH
<br/>
- Title: `SPK_AEP`
- Author: `Sp4rkY` [Link](https://github.com/SPKcoding)
- Description: `Automatic Earplugs for Arma 3 Epoch`
- Version: `0.201`
- Required: `Arma 3 1.60+ / Epoch 0.3.8+`
<br/>

___
<br/>
######FEATURES:
- Earplugs automatically sets at entering a vehicle and sets off at leaving it
- Switchable by pressing "F4"
- Works with every map
<br/>

___
<br/>

######INSTALL INSTRUCTIONS:
`Assumed you know how to use a Pbo-Manager and Notepad++ or similar tools. Otherwise click the following link:`<br/>
[Arma: Community Tools](https://community.bistudio.com/wiki/ArmA:_Community_Tools)
<br/>

`Once you have downloaded and extracted the files, start like this:`

_CLIENT:_
<br/>
`If you have any problems with following these instructions, take a look at the "mpmissions\epoch.Mapname" folder of this package. Every file which needs to get edited you can find there`<br/>
<br/>
* Download and unPbo your `epoch.Mapname.pbo` ("Mapname" depends on which map you use (example: epoch.Altis.pbo))
* Open your `epoch.Mapname\epoch_config\Configs\CfgFunctions.hpp` and place the following `before` the last closing bracket:
```C++
//AEP
class SPKcode_client {
	tag = "SPK";
	class SPK_AEP {
		file = "SPKcode\AEP";
		class varsAEP {};
		class autoEP {};
		class compileKeyDown {};
		class initAEP {postInit=1;};
	};
};
```
* If you already have a `class SPKcode_client` just add the `class SPK_AEP` to it. Example like this:
```
class SPKcode_client {
	tag = "SPK";

	class SPK_EXISTING_EXAMPLE {
		file = "SPKcode\Example";
		class example {};
	};

	class SPK_AEP {
		file = "SPKcode\AEP";
		class varsAEP {};
		class autoEP {};
		class compileKeyDown {};
		class initAEP {postInit=1;};
	};

};
```
* Copy the folder `epoch.Mapname\SPKcode` from this package into the root of your `epoch.Mapname`
	* If you already have a folder `SPKcode` just copy the `AEP` folder from it into your existing one
<br/>

_EPOCH STOCK ANTIHACK:_
<br/>
- No needed changes detected right now

<br/>

_INFISTAR:_
<br/>
- No needed changes detected right now

<br/>

_BATTLEYE:_
<br/>
* Open your `scripts.txt` (usually found in "SC\BattlEye\")<br/>
* Search for the keyword:
```
7 "BIS_fnc_dynamictext"
```
* add the following filter to the beginning, right after the keyword, like this:
```
7 "BIS_fnc_dynamictext" !="00'/> Earplugs on!</t>",-0.65,-1,5,1,-0.25,789] spawn BIS_fnc_dynamicText;systemChat "[INFO] EARPLUGS ON !"}}];if(!alive pla"
```
* Done
<br/>

___
<br/>

######BUGS & ERRORS:
- No known bugs present so far but if you notice some, please report them to this Git or to the respective forum thread. I will try to fix them asap. Thx
<br/>

___
<br/>

######LIKE MY WORK ?
- If you think about a donation so I can buy some beers, just message me at `info@sp4rky.de`
- No have to ofcourse, but I would appreciate it
<br/>

___
<br/>

_Enjoy this stuff and have fun!_
<br/>
_cheers_
