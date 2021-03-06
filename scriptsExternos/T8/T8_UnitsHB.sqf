/*
 =======================================================================================================================

	___ T8 Units _______________________________________________________________________________________________________

	File:		T8_UnitHB.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net
	
	Functions Libary for Hint Broadcasting ( these are loaded for players! )

 =======================================================================================================================
*/


///// T8U_fnc_BroadcastHint /////////////////////////////////////////////////////////////////////////////////////////////////

T8U_fnc_BroadcastHint =
{
	private [ "_hint", "_text" ];
	_text = _this select 0;
	[ [ _text ], "T8U_fnc_Hint" ] spawn BIS_fnc_MP;
};


///// T8U_fnc_Hint //////////////////////////////////////////////////////////////////////////////////////////////////////////

T8U_fnc_Hint =
{
	private [ "_text" ];
	_text = _this select 0;
	hint parseText format [ "<t size='1.5' color='#FE9A2E' align='right'>[ T8 Units ]</t><br /><t size='1' color='#FE9A2E' align='left'>%1</t>", _text ];
};




/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////