//=======================================================================================================//
// Archivo: fn_asrai3_config.sqf                                                                         //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 	 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/09/29                                                                    //
// Descripción: Este documento sirve para configurar el mod ASR AI del autor Robalo, de forma distinta   //
//              a la que exista por defecto en el servidor. De esta forma, se otorga al creador de la    //
//              misión un mayor grado de control. El mod ASRAI se puede econtrar en:                     //
//               - http://www.armaholic.com/page.php?id=24080                                            //
//               - https://github.com/robalo/mods/tree/master/asr_ai3                                    //
//               - https://forums.bistudio.com/topic/163742-asr-ai-3/                                    //
// Cambios: 0.1 (2015/09/29) Versión inicial per ASR AI v0.9.27.                                         //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

if (!cc_mod_asrai3) exitWith {};

if (isServer) then {
    asr_ai3_main_enabled            = ust_param_asrai3_habilitado;        // 0=Deshabilita las funciones de ASR; 1= Habilita las funciones ASR (En este caso lo pasamos por parámetro)
    asr_ai3_main_radionet           = 1;        // 1=Habilita la radio enemiga para comunicar enemigos; 0 deshabilita
    asr_ai3_main_radiorange         = 700;      // Rango máximo para la comunicar por radio (poner a 0 para deshabilitar)
    asr_ai3_main_seekcover          = 1;        // Poner a 1 si queremos que busquen coberturas en combate; 0 deshabilita
    asr_ai3_main_usebuildings       = 0.9;      // La IA lanza humo cuando avanza en coberturas. (0 o 1 activa o desactiva; Número más elevado aumenta la posibilidad de lanzar)
    asr_ai3_main_getinweapons       = 0.5;      // Permite a la IA elegir el % de opciones de tomar una estática o vehiculos en combate (0 to 1 values, 0 will disable the feature)
    asr_ai3_main_packNVG            = 1;        // Automáticamente le quita la nocturna a las unidades de día (guardada en inventario), y se reequipa cuando oscurece.
    asr_ai3_main_disableAIPGfatigue = 1;        // Deshabilita el cansancio para las unidades IA en los grupos de los jugadores (0 - disabled, 1 - enabled)
    asr_ai3_main_onteamswitch   	= 1;        // Teamswitch handler: makes unit switched into the group leader; prevents AI left in place from sending stupid orders (0 - disabled, 1 - enabled)
    asr_ai3_main_copymystance   	= 1;        // When enabled AI will auto adjust to player stance changes (0 - disabled, 1 - enabled)
    asr_ai3_main_debug              = 0;        // Añade información extra en el log RPT 
    asr_ai3_main_setskills          = 1;        // Sobreescribe los skills de la IA basados en el tipo de unidad  (facción, entrenamiento, etc; 0 - desactivado, 1 - activado)
    asr_ai3_main_joinlast           = 2;        // Los grupos que lleguen a "x" num de componentes, dejan su grupo y se unen al grupo más cercano de su propia facción ( 0 - deshabilita la opción )
    asr_ai3_main_removegimps        = 300;      // En segundos. A las unidades se les limita este tiempo que se han separado de su grupo. ( 0 - deshabilita la opción )
    asr_ai3_main_rearm              = 40;       // Enable basic AI rearming (resupply radius in meters; set to 0 to disable feature)
    asr_ai3_main_gunshothearing     = 1.1;      // Gunshot hearing range coefficient (applied to shooter's weapon sound range; 0 will disable the feature)
//    asr_ai3_main_throwsmoke         = 0.8;      // AI throws smoke when advancing to cover (set 0 to disable or a number up to 1 to enable, higher number means better chance to do it)
    asr_ai3_main_reactions          = {1,1,1};  // Los grupos de inf reaccionan aleatoriamente con acciones básicas, scriptadas o aleatorias, al detectar el enemigo o dispararle. format: [enableAttack,enableDefend,enableSupport].
    asr_ai3_main_dynsvd             = 1;        // Habilita la distancia de visión dinámica basada en el ciclo de dia/noche y niebla en servidores dedicados y headless client
    asr_ai3_main_dayscope           = 1;        // Reduce la precisión y distancia de fuego de la IA cuando es de noche.

    if ( ust_param_debugOutput == 1 ) then {
        player sideChat format ["DEBUG (fn_asrai_config.sqf): ASR AI configurado."];
    };
};

//=========================================== FIN DEL FICHERO ===========================================//
