//=======================================================================================================//
// Archivo: fn_zeus_anadirGrupos.sqf	                                                                 //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versió: 1.0                                                                                           //
// Creación del Documento: 2015/06/04                                                                    //
// Descripción: Este documento sirve para añadir al Zeus las distintas unidades que otros Zeus añaden    //
//              durante la partida por tal de que puedan ser editables.			                         //
// Cambios: 0.1 (2015/06/04) Versión inicial.                                                            //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

params["_zeus", "_nuevoGrupo"];

{
    _x addCuratorEditableObjects [(units _nuevoGrupo),true]
} forEach (allCurators - [_zeus]);

//=========================================== FIN DEL FICHERO ===========================================//
