//=======================================================================================================
// Archivo: fn_finalizarMision.sqf                                                                        
// Autor: CC_Magnetar                                                                                    
// Adaptado por: [UST] Artur																			 
// Versión: 1.0                                                                                           
// Creación del Documento: 2015/10/02                                                                      
// Descripción: Este documento sirve para defini bajo qué circunstancias se activan los distintos finales
//              de la misión. Es necesario remarcar que es necesario ejecutar esta función de manera que  
//              afecte tanto a clientes como a servidores.                                                
//              Los distintos finales deben estar definidos en el fichero ust_debriefingMision.hpp.           
// Cambios: 0.1 (2015/10/02) Versión inicial.                                                              
//          1.0 (2015/11/26) Versión estable de la plantilla.                                              
//=======================================================================================================

// Si todos los players han muerto y no se ha conseguido ningún objetivo, la misión ha sido un fracaso absoluto
if ({alive _x} count allPlayers <= 0) then {
    ["FracasoAbsoluto",false] spawn BIS_fnc_endMission;
};

//=========================================== FIN DEL FICHERO ==========================================//
