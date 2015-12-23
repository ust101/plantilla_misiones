//=======================================================================================================//
// Archivo: ust_acre2_configurarPresets.sqf                                                              //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/05/10                                                                    //
// Descripción: Este documento siver para configurar los presets de las distintas radios del ACRE2	     //
//              http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                        //
// Cambios: 0.1 (2015/05/10) Versión inicial.                                                            //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

private["_listaRadios", "_listaPreset", "_radio", "_presetName", "_nomCanales", "_canal", "_presetData"];
//private["_presetData"];

_listaRadios = ["ACRE_PRC343","ACRE_PRC148","ACRE_PRC152","ACRE_PRC117F"];
_listaPreset = ["default2","default3","default4"];

{
    _radio = _x;
    {
        _presetName = _x;
        _canal = 0;
        {
            _nomCanales = _x;
            _frecuencias = ust_var_frecuenciasAC select _forEachIndex;
            {
                _presetData = [_radio, _presetName, _canal] call acre_api_fnc_getPresetChannelData;
                (_presetData select 1) set [0, _frecuencias select _forEachIndex];
                (_presetData select 1) set [1, _frecuencias select _forEachIndex];
                (_presetData select 1) set [5, toUpper (_nomCanales select _forEachIndex)];
                [_radio, _presetName, _canal, _presetData] call acre_api_fnc_setPresetChannelData;
                _canal = _canal + 1;
            } forEach _nomCanales;
        } forEach ust_var_gruposAC;
    } forEach _listaPreset;
} forEach _listaRadios;

//=========================================== FIN DEL FICHERO ===========================================//
