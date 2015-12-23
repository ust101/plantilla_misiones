//=======================================================================================================//
// Archivo: ust_briefing.sq                                                                              //
// Autor: ust_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/02/22                                                                    //
// Descripción: Fichero init.sqf. Este fichero incluye las funciones que en MP se ejecutan al final de   //
//				la cadena de inicialización. Sirve para configure módulos, briefings, radios,etc...      //
// Cambios: 0.1 (2015/02/22) Versión inicial.                                                            //
//          0.2 (2015/05/26) Añadido soporte parr ACE 3.                                                 //
//          0.3 (2015/06/10) Añadida la opción de carga de perfiles en caso de que se decida de utili-   //
//                           zarlos en los parámetros de la misión.                                      //
//          0.4 (2015/06/12) Cambios debidos a las nuevas facciones a la versión 0.3.8 de RHS.           //
//          0.5 (2015/09/29) Configuración de DAC i ASR AI.                                              //
//          0.6 (2015/09/30) Añadido script de comprobación de configuraicón de parámetros de misión     //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

// Esperar un poco por tal de que el sistema de briefing se inicialice correctamente
if (!isDedicated && (isNull player)) then {
    waitUntil {sleep 0.1; !isNull player};
};

// Declaración de variables
private ["_faccionUnidad"];

// Esperar a que la variable que habilita/deshabilita el texto de Debug esté inicializadad
waitUntil {!isNil "ust_param_debugOutput"};


// Identificar la facción de la unidad
_faccionUnidad = toLower (faction player);

// Si la faccion de la unidad es diferente a la del líder, esta útlima es la que se utilizará
if (_faccionUnidad != toLower (faction (leader group player))) then {
    _faccionUnidad = toLower (faction (leader group player));
};

// Briefing para el Administrador
if (serverCommandAvailable "#kick") then {
    #include "..\..\..\configMision\briefing\scripts\ust_briefing_admin.sqf"

    // DEBUG OUTPUT
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (ust_briefing.sqf): Usando el briefing para administrador.", _faccionUnidad];
    };
};

// Briefing para la facción BLUFOR
if (_faccionUnidad == "blu_f") exitWith {
    #include "..\..\..\configMision\briefing\scripts\ust_briefing_blu_f.sqf"

    // DEBUG OUTPUT
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (ust_briefing.sqf): Usando el briefing para la facción %1.", _faccionUnidad];
    };
};

// Briefing per la facción FIA
if (_faccionUnidad in ["blu_g_f","ind_g_f","opf_g_f"]) exitWith {
    #include "..\..\..\configMision\briefing\scripts\ust_briefing_fia_f.sqf"

    // DEBUG OUTPUT
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (ust_briefing.sqf): Usando el briefing para la facción %1.", _faccionUnidad];
    };
};

// Briefing per la facción OPFOR
if (_faccionUnidad == "opf_f") exitWith {
    #include "..\..\..\configMision\briefing\scripts\ust_briefing_opf_f.sqf"

    // DEBUG OUTPUT
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (ust_briefing.sqf): Usando el briefing para la facción %1.", _faccionUnidad];
    };
};

// Briefing per la facción independiente
if (_faccionUnidad == "ind_f") exitWith {
    #include "..\..\..\configMision\briefing\scripts\ust_briefing_ind_f.sqf"

    // DEBUG OUTPUT
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (ust_briefing.sqf): Usando el briefing para la facción %1.", _faccionUnidad];
    };
};

// Briefing per la facción civil
if (_faccionUnidad == "civ_f") exitWith {
    #include "..\..\..\configMision\briefing\scripts\ust_briefing_civ_f.sqf"

    // DEBUG OUTPUT
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (ust_briefing.sqf): Usando el briefing para la facción %1.", _faccionUnidad];
    };
};

// Briefing per la facción USA "United States Army" Desert
if (_faccionUnidad == "rhs_faction_usarmy_d") exitWith {
    #include "..\..\..\configMision\briefing\scripts\ust_briefing_rhs_usarmy_d.sqf"

    // DEBUG OUTPUT
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (ust_briefing.sqf): Usando el briefing para la facción %1.", _faccionUnidad];
    };
};

// Briefing per la facción USA "United States Army" Woodland
if (_faccionUnidad == "rhs_faction_usarmy_wd") exitWith {
    #include "..\..\..\configMision\briefing\scripts\ust_briefing_rhs_usarmy_wd.sqf"

    // DEBUG OUTPUT
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (ust_briefing.sqf): Usando el briefing para la facción %1.", _faccionUnidad];
    };
};

// Briefing per la facción USA "United States Marine Corps" Desert
if (_faccionUnidad == "rhs_faction_usmc_d") exitWith {
    #include "..\..\..\configMision\briefing\scripts\ust_briefing_rhs_usmc_d.sqf"

    // DEBUG OUTPUT
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (ust_briefing.sqf): Usando el briefing para la facción %1.", _faccionUnidad];
    };
};

// Briefing per la facción USA "United States Marine Corps" Woodland
if (_faccionUnidad == "rhs_faction_usmc_wd") exitWith {
    #include "..\..\..\configMision\briefing\scripts\ust_briefing_rhs_usmc_wd.sqf"

    // DEBUG OUTPUT
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (ust_briefing.sqf): Usando el briefing para la facción %1.", _faccionUnidad];
    };
};

// Briefing per la facción RHS "Insurgents"
if (_faccionUnidad == "rhs_faction_insurgents") exitWith {
    #include "..\..\..\configMision\briefing\scripts\ust_briefing_rhs_insurgents.sqf"

    // DEBUG OUTPUT
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (ust_briefing.sqf): Usando el briefing para la facción %1.", _faccionUnidad];
    };
};

// Briefing per la facción rusa "Russian Airborne Troops"
if (_faccionUnidad == "rhs_faction_vdv" ) exitWith {
    #include "..\..\..\configMision\briefing\scripts\ust_briefing_rhs_vdv.sqf"

    // DEBUG OUTPUT
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (ust_briefing.sqf): Usando el briefing para la facción %1.", _faccionUnidad];
    };
};

// Briefing per la facción rusa "Soviet Air Defense Forces"
if (_faccionUnidad == "rhs_faction_vpvo" ) exitWith {
    #include "..\..\..\configMision\briefing\scripts\ust_briefing_rhs_vpvo.sqf"

    // DEBUG OUTPUT
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (ust_briefing.sqf): Usando el briefing para la facción %1.", _faccionUnidad];
    };
};

// COMPROBACIÓN DE ERRORES: Si la facción de la unidad no está definida, se muestra un mensaje de error.
player globalchat format ["DEBUG (ust_briefing.sqf): La facción %1 no está definida",_faccionUnidad];

//============================================ FI DEL FITXER ============================================//
