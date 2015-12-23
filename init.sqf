//=======================================================================================================
// Archivo: init.sqf                                                                                     
// Autor: CC_Magnetar                                                                                    
// Adaptado por: [UST] Artur																			 
// Versión: 1.0                                                                                          
// Creación del Documento: 2015/02/22                                                                    
// Descripción: Fichero init.sqf. Este fichero incluye las funciones que en MP se ejecutan al final de   
//				la cadena de inicialización. Sirve para configurar módulos, briefings, radios,etc...      
// Cambios: 0.1 (2015/02/22) Versión inicial.                                                            
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            
//=======================================================================================================

//=======================================================================================================
// Desactivar guardar y guardar automaticamente: https://community.bistudio.com/wiki/enableSaving        
//=======================================================================================================
enableSaving [false, false];

//=======================================================================================================
// Desactivar las órdenes por radio o informes: https://community.bistudio.com/wiki/enableSentences      
//=======================================================================================================
enableSentences false;

// Ejecución del script para generar los Briefings.
ust_script_briefing = [] execVM "src\briefing\scripts\ust_briefing.sqf";

onPreloadFinished {
    endLoadingScreen;
    ust_preload_completado = true;
};

//=======================================================================================================
// Inicializar el T8 Units                                                                              
//=======================================================================================================
if (!isNil "ust_param_t8units_habilitado") then {
    ust_script_t8units = [] execVM "src\t8units\scripts\ust_t8units_init.sqf";
};

if (ust_param_usarPerfiles == 1 && !isDedicated) then {
    ust_script_perfiles = [] execVM "src\configEquipacion\scripts\ust_configEquipacion_perfiles.sqf";
};

if (ust_mod_acre2) then {
    // Advanced Combat Radio Environment 2 (ACRE 2)
    [] execVM "src\acre2\scripts\ust_inicializar_acre2.sqf";
};

// Pantalla de introducción.
ust_script_intro = [] execVM "configMision\intro\scripts\ust_intro.sqf";

if (isServer) then {
    ust_script_zeus = [] execVM "src\zeus\scripts\ust_zeus_init.sqf"
};

#include "configMision\ust_init.sqf"

//=========================================== FIN DEL FICHERO ===========================================//
