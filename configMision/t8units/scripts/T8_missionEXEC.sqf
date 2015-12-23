/*
 =======================================================================================================================

	___ T8 Units _______________________________________________________________________________________________________

	File:		T8_missionEXEC.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	This file creates the Units, kind of


	This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
	To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/ or send a letter to
	Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.

 =======================================================================================================================
*/

// We dont want players here
waitUntil { !isNil "T8U_var_useHC" };
private [ "_exit" ]; _exit = false;
if ( T8U_var_useHC ) then {
    if ( isDedicated ) then {
        _exit = true;
    } else {
        waitUntil { !isNull player };
        if ( hasInterface ) then {
             _exit = true; };
        };
} else {
    if ( !isServer ) then {
        _exit = true;
    };
};
if ( _exit ) exitWith {};


// check if T8_Units is loaded
waitUntil { !isNil "T8U_var_InitDONE" };
sleep 5;

//////////////////////////////////////  CUSTOM FUNCTION  //////////////////////////////////////
//
//			This function is called for every unit in a group
//			where it is defined in the groups definiton below
//

T8u_fnc_rmNVG_TEST =
{
	_this spawn
	{
		sleep 5;

		private ["_i"];
		_i = true;
		switch ( side _this ) do
		{
			case WEST:			{ _this unlinkItem "NVGoggles"; };
			case EAST:			{ _this unlinkItem "NVGoggles_OPFOR"; };
			case RESISTANCE:	{ _this unlinkItem "NVGoggles_INDEP";  };
			default				{ _i = false; };
		};

		if ( _i ) then
		{
			_this removePrimaryWeaponItem "acc_pointer_IR";
			_this addPrimaryWeaponItem "acc_flashlight";

			sleep 1;

			group _this enableGunLights "forceon";
		};
	};
};

//////////////////////////////////////  UNIT SETUP  //////////////////////////////////////



// ------------------------------------------------ THE END ---------------------------------------------------
