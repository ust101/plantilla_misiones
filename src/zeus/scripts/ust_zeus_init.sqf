//=======================================================================================================//
// Archivo: ust_zeus_init.sqf                                                                            //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/06/04                                                                    //
// Descripción: Este documento sirve para añadir al Zeus los distintos objetos, vehiculos y unidades     //
//              que se han puesto usando el editor. Los jugadores también están incluidos. De esta forma //
//              todos los objetos serán editables.                                                       //
// Cambios: 0.1 (2015/06/04) Versión inicial.                                                            //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

// Si no es Server, sale
if( !isServer ) exitWith{};

// Añadir las unidades, vehiculos y objetos a todos los Zeus.
{
    _x addCuratorEditableObjects [vehicles,true];                     // Añade vehiculos con la tripulación.
    _x addCuratorEditableObjects [(allMissionObjects "Man"),false];   // Añade las unidades de infanteria.
    _x addCuratorEditableObjects [(allMissionObjects "Air"),true];    // Añade las unidades aéreas con la tripulación.
    _x addCuratorEditableObjects [(allMissionObjects "Ammo"),false];  // Añade los objetos tipo "Ammo".
    _x addCuratorEditableObjects [[player], true];                    // Añede el jugador en sí mismo.
} forEach allCurators;

//=========================================== FIN DEL FICHERO ===========================================//
