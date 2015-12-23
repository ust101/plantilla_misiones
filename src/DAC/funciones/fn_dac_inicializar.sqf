//=======================================================================================================//
// Archivo: ust_dac_inicializar.sqf                                                                      //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/09/29                                                                    //
// Descripción: Este documento sirve para inicializar la versión script del DAC del autor Silola   		 //
//             (http://www.armaholic.com/page.php?id=25550). Este script incluye a más a más una función //
//              para llenar la variable "DAC_STRPlayers" con los nombres de los jugadores de forma que   //
//              no sea necesario añadirlos manualmente al fichero "DAC_Config_Creator.sqf".  			 //
// Cambios: 0.1 (2015/09/29) Versión inicial.                                                            //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

// Esperar a que la variable que habilita/deshabilita el texto de Debug esté inicializada
waitUntil {(!isNil "ust_param_debugOutput")};
waitUntil {(!isNil "ust_param_dac_debug")};

DAC_Basic_Value = 0;

// Formar la variable necesaria para el DAC con las unidades en el editor. Es necesario que todas las unidades jugables
// tengan un nombre asignado
if (isServer) then {
    DAC_STRPlayers = [];
    {
        DAC_STRPlayers pushBack format ["%1",_x];
    } forEach playableUnits;
    publicVariable "DAC_STRPlayers";

    if ((ust_param_debugOutput == 1)) then {
        player sideChat format ["DEBUG (ust_dac_inicializar.sqf): %1", DAC_STRPlayers];
    };
};

// Modificar el output de DAC dependiendo de si el debug está activo o no.
switch (ust_param_dac_debug) do {
    case 0: {
        // No mostrar nada correspondiente al DAC.
        DAC_Com_Values = [0,0,0,0];
        DAC_Marker     = 0;
    };

    case 1: {
        // Mostrar mensajes de inicalización.
        DAC_Com_Values = [0,1,0,0];
        DAC_Marker     = 0;
    };

    case 2: {
        // Mostrar mensajes de reducción, inicialización i marcadores en el mapa.
        DAC_Com_Values = [1,2,0,0];
        DAC_Marker     = 2;
    };

    default {
        player sideChat format ["DEBUG (ust_dac_inicializar.sqf): Parámetro del DAC no reconocido."];
    };
};

execVM "DAC\DAC_Config_Creator.sqf";

//=========================================== FIN DEL FICHERO ===========================================//
