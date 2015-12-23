//=======================================================================================================//
// Archivo: fn_misc_teleport_configurarPuntos.sqf                                                        //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/10/18                                                                    //
// Descripción: Este documento sirve para realizar el teleport de un player a un punto definido.         //
//              Argumentos:                                                                              //
//               - 0: objeto a teletransportar <OBJETO>.                                               	 //
//               - 1: marcador done se teleportará el objeto <STRING>.                                	 //
//               - 2: altitud del objeto a teleportar al punto destino <FLOAT><OPCIONAL>.        		 //
//               - 3: dirección al punt de destino <FLOAT><OPCIONAL>.                                    //
// Cambios: 0.1 (2015/10/18) Versión inicial.                                                            //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//
private ["_descripcion", "_posicion", "_exp"];

{
    _posicion = _forEachIndex;
    {
        _descripcion = format ["<t color='#ff1111'>%1</t>", markerText ((ust_var_puntosTeleport_Destino select _posicion) select _forEachIndex)];
        _exp = format["{[_this select 1, ""%1""] call fnc_misc_teleport;}", (ust_var_puntsTeleport_Destino select _posicion) select _forEachIndex];
        (ust_var_puntsTeleport_Inicio select _posicion) addaction [_descripcion, call compile _exp, [], 5, false, true];
    } forEach (ust_var_puntsTeleport_Destino select _forEachIndex);
} forEach ust_var_puntsTeleport_Inicio;

//=========================================== FIN DEL FICHERO ===========================================//
