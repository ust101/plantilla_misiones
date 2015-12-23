//=======================================================================================================
// Archivo: ust_intro.sqf                                                                                
// Autor: CC_Magnetar                                                                                    
// Adaptado por: [UST] Artur																			 
// Versión: 1.0                                                                                          
// Creación del Documento: 2015/04/03                                                                    
// Descripción: Este documento sirve para crear una pantalla de introducción y mostar el nombre de la    
//              misión, así como la fecha y la localización                                              
// Canvis: 0.1 (2015/04/02) Versión inicial.                                                             
//         1.0 (2015/11/26) Versión estable de la plantilla.                                             
//=======================================================================================================

private ["_faccionUnidad"];

if (isDedicated) exitWith {};

// Esperar a que la variable que habilita/deshabilita el texto de Debug esté inicializada.
waitUntil {!isNil "ust_param_debugOutput"};

#define nombreMision "Nombre de la misión"

// Identificar la facción de la unidad.
_faccionUnidad = toLower (faction player);

// Si la faccion de la unidad es distinta a la del líder, esta última es la que se utilizará.
if (_faccionUnidad != toLower (faction (leader group player))) then {
    _faccionUnidad = toLower (faction (leader group player));
};

// Introducción para la facción BLUFOR.
if (_faccionUnidad == "blu_f") exitWith {
    #define introText "Quien dijo que la pluma es más poderosa que la espada, obviamente, nunca ha usado armas automáticas.\nDouglas MacArthur."
    #define lugarMision "Localización"

    #include "..\..\..\src\intro\scripts\ust_intro_pantallaNegro_typeText.sqf"

      // DEBUG OUTPUT.
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Usando texto introductorio para la facción %1.", _faccionUnidad];
    };
};

// Introducción para la facción civil.
if (_faccionUnidad == "civ_f") exitWith {
    #define introText "Quien dijo que la pluma es más poderosa que la espada, obviamente, nunca ha usado armas automáticas.\nDouglas MacArthur."
    #define lugarMision "Localización"

    #include "..\..\..\src\intro\scripts\ust_intro_pantallaNegro_typeText.sqf"

      // DEBUG OUTPUT.
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Usando texto introductorio para la facción %1.", _faccionUnidad];
    };
};

// Introducción para la facción FIA.
if (_faccionUnidad in ["blu_g_f","ind_g_f","opf_g_f"]) exitWith {
    #define introText "Quien dijo que la pluma es más poderosa que la espada, obviamente, nunca ha usado armas automáticas.\nDouglas MacArthur."
    #define lugarMision "Localización"

    #include "..\..\..\src\intro\scripts\ust_intro_pantallaNegro_typeText.sqf"

      // DEBUG OUTPUT.
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Usando texto introductorio para la facción %1.", _faccionUnidad];
    };
};

// Introducción para la facción independiente.
if (_faccionUnidad == "ind_f") exitWith {
    #define introText "Quien dijo que la pluma es más poderosa que la espada, obviamente, nunca ha usado armas automáticas.\nDouglas MacArthur."
    #define lugarMision "Localización"

    #include "..\..\..\src\intro\scripts\ust_intro_pantallaNegro_typeText.sqf"

      // DEBUG OUTPUT.
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Usando texto introductorio para la facción %1.", _faccionUnidad];
    };
};

// Introducción para la facción OPFOR.
if (_faccionUnidad == "opf_f") exitWith {
    #define introText "Quien dijo que la pluma es más poderosa que la espada, obviamente, nunca ha usado armas automáticas.\nDouglas MacArthur."
    #define lugarMision "Localización"

    #include "..\..\..\src\intro\scripts\ust_intro_pantallaNegro_typeText.sqf"

      // DEBUG OUTPUT.
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Usando texto introductorio para la facción %1.", _faccionUnidad];
    };
};

// Introducción para la facción RHS: USAF "United States Army".
if (_faccionUnidad == "rhs_faction_usarmy_d") exitWith {
    #define introText "Quien dijo que la pluma es más poderosa que la espada, obviamente, nunca ha usado armas automáticas.\nDouglas MacArthur."
    #define lugarMision "Localización"

    #include "..\..\..\src\intro\scripts\ust_intro_pantallaNegro_typeText.sqf"

      // DEBUG OUTPUT.
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Usando texto introductorio para la facción %1.", _faccionUnidad];
    };
};

// Introducción para la facción RHS: USAF "United States Army".
if (_faccionUnidad == "rhs_faction_usarmy_wd") exitWith {
    #define introText "Quien dijo que la pluma es más poderosa que la espada, obviamente, nunca ha usado armas automáticas.\nDouglas MacArthur."
    #define lugarMision "Localización"

    #include "..\..\..\src\intro\scripts\ust_intro_pantallaNegro_typeText.sqf"

      // DEBUG OUTPUT.
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Usando texto introductorio para la facción %1.", _faccionUnidad];
    };
};

// Introducción para la facción RHS: USAF "United States Marine Corps".
if (_faccionUnidad == "rhs_faction_usmc_d") exitWith {
    #define introText "Quien dijo que la pluma es más poderosa que la espada, obviamente, nunca ha usado armas automáticas.\nDouglas MacArthur."
    #define lugarMision "Localización"

    #include "..\..\..\src\intro\scripts\ust_intro_pantallaNegro_typeText.sqf"

      // DEBUG OUTPUT.
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Usando texto introductorio para la facción %1.", _faccionUnidad];
    };
};

// Introducción para la facción RHS: USAF "United States Marine Corps".
if (_faccionUnidad == "rhs_faction_usmc_wd") exitWith {
    #define introText "Quien dijo que la pluma es más poderosa que la espada, obviamente, nunca ha usado armas automáticas.\nDouglas MacArthur."
    #define lugarMision "Localización"

    #include "..\..\..\src\intro\scripts\ust_intro_pantallaNegro_typeText.sqf"

      // DEBUG OUTPUT.
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Usando texto introductorio para la facción %1.", _faccionUnidad];
    };
};

// Introducción para la facción RHS: Insurgents.
if (_faccionUnidad == "rhs_faction_insurgents") exitWith {
    #define introText "Quien dijo que la pluma es más poderosa que la espada, obviamente, nunca ha usado armas automáticas.\nDouglas MacArthur."
    #define lugarMision "Localización"

    #include "..\..\..\src\intro\scripts\ust_intro_pantallaNegro_typeText.sqf"

      // DEBUG OUTPUT.
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Usando texto introductorio para la facción %1.", _faccionUnidad];
    };
};

// Briefing per la facción rusa "Russian Airborne Troops".
if (_faccionUnidad == "rhs_faction_vdv" ) exitWith {
    #define introText "Quien dijo que la pluma es más poderosa que la espada, obviamente, nunca ha usado armas automáticas.\nDouglas MacArthur."
    #define lugarMision "Localización"

    #include "..\..\..\src\intro\scripts\ust_intro_pantallaNegro_typeText.sqf"

      // DEBUG OUTPUT.
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Usando texto introductorio para la facción %1.", _faccionUnidad];
    };
};

// Briefing per la facción russ "Soviet Air Defense Forces".
if (_faccionUnidad == "rhs_faction_vpvo" ) exitWith {
    #define introText "Quien dijo que la pluma es más poderosa que la espada, obviamente, nunca ha usado armas automáticas.\nDouglas MacArthur."
    #define lugarMision "Localización"

    #include "..\..\..\src\intro\scripts\ust_intro_pantallaNegro_typeText.sqf"

    // DEBUG OUTPUT.
    if (ust_param_debugOutput == 1) then {
        player sideChat format ["DEBUG (intro.sqf): Usando texto introductorio para la facción %1.", _faccionUnidad];
    };
};

//=========================================== FIN DEL FICHERO ===========================================//

// COMPROVACIÓ D'ERRORS: Si la facción de la unitat no està definida es mostra un missatge d'error.
player globalchat format ["DEBUG (ust_intro.sqf): La facción %1 no està definida",_faccionUnidad];

//============================================ FI DEL FITXER ============================================//
