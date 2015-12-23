//=======================================================================================================//
// Archivo: fn_zeus_anadirObjetos.sqf                                                                    //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/06/04                                                                    //
// Descripción: Este documento sirve para añadir al Zeus los distintos objetos que otros Zeus añaden     //
//              durnate la partida para que puedan ser editables.                                        //
// Cambios: 0.1 (2015/06/04) Versión inicial.                                                            //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

// Si no es Servidor sale
if( !isServer ) exitWith{};

params["_zeus", "_nuevoObjeto"];

{
    _x addCuratorEditableObjects [[_nuevoObjeto],true]
} forEach (allCurators - [_zeus]);

//=========================================== FIN DEL FICHERO ===========================================//
