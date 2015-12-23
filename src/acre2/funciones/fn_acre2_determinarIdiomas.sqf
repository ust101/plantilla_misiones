//=======================================================================================================//
// Archivo: fn_acre2_determinarIdiomas.sqf                                              				 //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 05/05/2015                                                                    //
// Descripción: Configuración de los idiomas que habla cada unidad usando el ACRE2					     //
//              Environment 2 (ACRE2) http://gitlab.idi-systems.com/idi-systems/acre2-public/wikis/home  //
// Cambios: 0.1 (2015/05/05) Versión inicial.                                                            //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

// Declaración de variables.
private["_faccionUnidad"];

// Identificar la facción de la unidad.
_faccionUnidad = toLower (faction player);

// Si la faccion de la unidad es distinta a la del líder, esta última es la que se usrá.
if (_faccionUnidad != toLower (faction (leader group player))) then {
    _faccionUnidad = toLower (faction (leader group player));
};

// DEBUG OUTPUT.
if ( ust_param_debugOutput == 1 ) then {
    player sideChat format ["DEBUG (fn_acre2_determinarIdiomas.sqf): facción del jugador: %1", _faccionUnidad];
};


// Idiomas para la facción BLUFOR.
if (_faccionUnidad == "blu_f") exitWith {

    ust_acre2_config_idioma_blufor call acre_api_fnc_babelSetSpokenLanguages;
    [ust_acre2_config_idioma_blufor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
    // DEBUG OUTPUT
    if ( ust_param_debugOutput == 1 ) then {
        player sideChat format ["DEBUG (ust_acre2_determinarIdiomas.sqf): Usando %1 para la faccion %2.", ust_acre2_config_idioma_blufor, _faccionUnidad];
    };
};

// Idiomas para la facción FIA.
if (_faccionUnidad in ["blu_g_f","ind_g_f","opf_g_f"]) exitWith {

    ust_acre2_config_idioma_fia call acre_api_fnc_babelSetSpokenLanguages;
    [ust_acre2_config_idioma_fia select 0] call acre_api_fnc_babelSetSpeakingLanguage;
    // DEBUG OUTPUT
    if ( ust_param_debugOutput == 1 ) then {
        player sideChat format ["DEBUG (ust_acre2_determinarIdiomas.sqf): Usando %1 para la faccion %2.", ust_acre2_config_idioma_fia, _faccionUnidad];
    };
};

// Idiomas per la facción OPFOR.
if (_faccionUnidad == "opf_f") exitWith {

    ust_acre2_config_idioma_opfor call acre_api_fnc_babelSetSpokenLanguages;
    [ust_acre2_config_idioma_opfor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
    // DEBUG OUTPUT
    if ( ust_param_debugOutput == 1 ) then {
        player sideChat format ["DEBUG (ust_acre2_determinarIdiomas.sqf): Usando %1 para la faccion %2.", ust_acre2_config_idioma_opfor, _faccionUnidad];
    };
};

// Idiomas para la facción independiente.
if (_faccionUnidad == "ind_f") exitWith {

    ust_acre2_config_idioma_indfor call acre_api_fnc_babelSetSpokenLanguages;
    [ust_acre2_config_idioma_indfor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
    // DEBUG OUTPUT
    if ( ust_param_debugOutput == 1 ) then {
        player sideChat format ["DEBUG (ust_acre2_determinarIdiomas.sqf): Usando %1 para la faccion %2.", ust_acre2_config_idioma_indfor, _faccionUnidad];
    };
};

// Idiomas para la facción civil.
if (_faccionUnidad == "civ_f") exitWith {

    ust_acre2_config_idioma_civ call acre_api_fnc_babelSetSpokenLanguages;
    [ust_acre2_config_idioma_civ select 0] call acre_api_fnc_babelSetSpeakingLanguage;
    // DEBUG OUTPUT
    if ( ust_param_debugOutput == 1 ) then {
        player sideChat format ["DEBUG (ust_acre2_determinarIdiomas.sqf): Usando %1 para la faccion %2.", ust_acre2_config_idioma_civ, _faccionUnidad];
    };
};

// Idiomas para la facción RHS USAF "United States Armed Forces".
if (_faccionUnidad in ["rhs_faction_usarmy_wd","rhs_faction_usarmy_d","rhs_faction_usmc_wd", "rhs_faction_usmc_d"] ) exitWith {

    ust_acre2_config_idioma_rhsusaf call acre_api_fnc_babelSetSpokenLanguages;
    [ust_acre2_config_idioma_rhsusaf select 0] call acre_api_fnc_babelSetSpeakingLanguage;
    // DEBUG OUTPUT
    if ( ust_param_debugOutput == 1 ) then {
        player sideChat format ["DEBUG (ust_acre2_determinarIdiomas.sqf): Usando %1 para la faccion %2.", ust_acre2_config_idioma_rhsusaf, _faccionUnidad];
    };
};

// Idiomas para la facción RHS: AFRF "Armed Forces of the Russian Federation".
if (_faccionUnidad == "rhs_faction_vpvo" ) exitWith {

    ust_acre2_config_idioma_rhsusaf call acre_api_fnc_babelSetSpokenLanguages;
    [ust_acre2_config_idioma_rhsusaf select 0] call acre_api_fnc_babelSetSpeakingLanguage;
    // DEBUG OUTPUT
    if ( ust_param_debugOutput == 1 ) then {
        player sideChat format ["DEBUG (ust_acre2_determinarIdiomas.sqf): Usando %1 para la faccion %2.", ust_acre2_config_idioma_rhsafrf, _faccionUnidad];
    };
};

//=========================================== FIN DEL FICHERO ===========================================//
