//=======================================================================================================//
// Archivo: fn_zeus_eventHandlers.sqf                                                                    //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/06/04                                                                    //
// Descripción: Este documento sirve para añadir al Zeus las distintas unidades y objetos que otros Zeus //
//              añaden durante la partida para que puedan ser editables.                                 //
// Cambios: 0.1 (2015/06/04) Versión inicial.                                                            //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

{
    _x addEventHandler ["CuratorGroupPlaced",{ _this remoteExecCall ["ust_fnc_zeus_anadirGrupos", 2, false] }];
    _x addEventHandler ["CuratorObjectPlaced",{ _this remoteExecCall ["ust_fnc_zeus_anadirObjetos", 2, false] }];
} forEach allCurators;
