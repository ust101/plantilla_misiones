//=======================================================================================================//
// Archivo: fn_comun_procesarParamsArray.sqf                                                             //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/03/08                                                                    //
// Descripción: Este documento sirve para procesar la matriz parmsArray. Fichero basado en:              //
//              http://www.ferstaberinde.com/f3/en/)                                                     //
// Cambios: 0.1 (2015/03/08) Versión inicial                                                             //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

_paramArray = paramsArray;
{
    _nombreParametro = (configName ((missionConfigFile >> "Params") select _forEachIndex));
    if (!(["paramLinia", _nombreParametro, true] call BIS_fnc_inString)) then {
        _valorParametro = _nombreParametro call BIS_fnc_getParamValue;
        call compile format["%1 = %2", _nombreParametro, _valorParametro];
        if (isServer) then {
          publicVariable _nombreParametro;
        };
    };
} forEach _paramArray;

//=========================================== FIN DEL FICHERO ===========================================//
