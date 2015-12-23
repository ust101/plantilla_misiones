//=======================================================================================================//
// Archivo: fn_acre2_configurarCanales.sqf                                                               //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/07/26                                                                    //
// Descripción: Este documento sirve para conifgurar los canales en activo de las distintas radios del   //
//              Advanced Combat Radio Environment 2 (ACRE2)                                              //
//              http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home                        //
// Cambios: 0.1 (2015/07/26) Versión inicial.                                                            //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

// Declaración de variables.
private["_unidad","_grupoUnidad", "_tipoUnidad", "_canal", "_canalEscuadra", "_canalEquipoFuego", "_canalComandancia"];
private["_listaRadios"];

sleep 3;

_unidad = player;
_grupoUnidad = _unidad getVariable ["ust_var_grupoUnidad", ["nil", -1]];
_tipoUnidad = _unidad getVariable ["ust_var_configEquipacio", "NIL"];

if ((_grupoUnidad select 0 == "nil") or (_grupoUnidad select 1 == -1)) exitWith {
    _unidad sideChat format ["ERROR (fn_acre2_configurarCanales.sqf): No se pueden configurar los canales ya que la variable ""ust_var_grupoUnidad"" no está correctamente definida: [%1,%2].", _grupoUnidad select 0, _grupoUnidad select 1];
};

_canal = 1;
// Obtener el canal de escuadra
{
    if (_grupoUnidad select 0 in _x) then {
        _canalEscuadra = _canal;
        if (_grupoUnidad select 1 >= count _x) exitWith {
            _unidad sideChat format ["ERROR (fn_acre2_configurarCanales.sqf): El equipo %1-%2 no está definido.", _grupoUnidad select 0, _grupoUnidad select 1];
        };
        _canalEquipoFuego = _canalEscuadra + (_grupoUnidad select 1);
    };

    if ("Comandancia" in _x) then {
        _canalComandancia = _canal;
    };
    _canal = _canal + (count _x);
} forEach ust_var_gruposAC;

// Obtener la lista de radios de la unidad.
_listaRadios = call acre_api_fnc_getCurrentRadioList;
{

    // Las radios PRC343 utilizaran por defecto el canal asociado al equipo de fuego.
    if ([_x, "ACRE_PRC343"] call acre_api_fnc_isKindOf) then {
        [_x, _canalEquipoFuego] call acre_api_fnc_setRadioChannel;
    };

    // Las radios PRC148 utilizaran como canal activo el de la malla de la escuadra.
    if ([_x, "ACRE_PRC148"] call acre_api_fnc_isKindOf) then {
        [_x, _canalEscuadra] call acre_api_fnc_setRadioChannel;
    };

    // Las radios PRC148 utilizaran como canal activo el de la malla de la escuadra.
    if ([_x, "ACRE_PRC152"] call acre_api_fnc_isKindOf) then {
        [_x, _canalEscuadra] call acre_api_fnc_setRadioChannel;
    };

    // Las ràdios PRC117F utilizaran como canal activo el de comandancia.
    if ([_x, "ACRE_PRC117F"] call acre_api_fnc_isKindOf) then {
        [_x, _canalComandancia] call acre_api_fnc_setRadioChannel;
    };
} forEach(_listaRadios);

//=========================================== FIN DEL FICHERO ===========================================//
