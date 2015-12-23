//=======================================================================================================//
// Archivo: fn_misc_teleport.sqf                                                                         //
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

params["_objeto","_marcador", ["_altitud",0.0], "_direccionn"];

_objeto setposatl [getmarkerpos _marcador select 0,getmarkerpos _marcador select 1, _altitud];

if (isNil "_direccion") then {
    _objeto setDir (markerDir _marcador);
} else {
    _objeto setDir _direccion;
};

//=========================================== FIN DEL FICHERO ===========================================//
