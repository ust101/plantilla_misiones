//=======================================================================================================//
// Archivo: fn_configUnidad.sqf                                                                          //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versió: 1.0                                                                                           //
// Creación del Documento: 2015/10/03                                                                    //
// Descripción: Este documento sirve para configurar las unidades jugables. En primer lugar se configura //
//              el grupo al que pertenece la unidad, y luego se configura la equipacion de la unidad en  //
//              concreto dependiendo de su tipo.                                                         //
// Cambios: 0.1 (2015/10/03) Versión inicial.                                                            //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

params [["_nombreGrupo", nil], ["_indexSubgrupo", -1], ["_tipoUnidad", nil], "_unidad", ["_faccionUnidad", nil]];

if (isNil "_tipoUnidad") exitwith {
    _unidad sideChat format ["DEBUG (fn_configUnidad.sqf): el tipo de unidad no está definida. Abortando."];
};

// Configurar el grupo.
[_nombreGrupo, _indexSubgrupo, _unidad] call ust_fnc_configGrupo;

// Configurar la equipación de la unidad.
[_tipoUnidad, _unidad, _faccionUnidad] call ust_fnc_configEquipacion;

//=========================================== FIN DEL FICHERO ===========================================//
