//=======================================================================================================//
// Archivo: ust_configEquipacion_blu_f.sqf                                                               //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Contribuidores: [UST] Fort																			 //
// Versió: 1.0                                                                                           //
// Creación del Documento: 2015/04/02                                                                    //
// Descripción: Este documento sirve para equipar los jugadores con la equipación diseñada para la       //
//              misión sin utilizar los perfiles estándar de la UST. Se requiere que el jugador forme    //
//              parte de la facción NATO BLUFOR "blu_f". 												 //
//              Es necesario poner la siguiente línia en el init de la unidad en el editor:              //
//                                                                                                       //
//                  ["ROL_JUGADOR",this] call ust_fnc_configEquipacion;                                  //
//                                                                                                       //
//              donde "ROL_JUGADOR" es una de las siguientes entradas:                                   //
//                                                                                                       //
//                  ROL_JUGADOR             Rol asignado                                                 //
//                  pl                      Jefe de Sección (Platoon Leader)                             //
//                  psg                     Sargento de sección (Platoon Sergeant)                       //
//                  rto                     Operador de radio (Platoon Radiotelephone Operator)          //
//                  fo                      Observador avanzado (Forward Observer)                       //
//                  me                      Médico (Platoon Medic)                                       //
//                  sl                      Líder de escuadra (Squad Leader)                             //
//                  tl                      Líder de equipo (Team Leader)                                //
//                  rfl                     Fusilero (Rifleman)                                          //
//                  rflat                   Fusilero con AT4 (Rifleman with AT4)                         //
//                  gr                      Granadero (Grenadier)                                        //
//                  ar                      Fusilero automatico (Automàtic Rifleman)                     //
//                  dm                      Tirador designado (Designated Marksman)                      //
//                  mg                      Ametrallador (Machine Gunner)                                //
//                  amg                     Asistente de ametrallador (Assitant Machine Gunner)          //
//                  at                      Antitanque (Antitank)                                        //
//                  aat                     Asistentee de antitanque (AT Ammo handler)                   //
//                  aa                      Anti aéreo (Anti Air gunner)                                 //
//                  aaa                     Asistente de anti aéreo (Anti Air Assitant)                  //
//                  en                      Ingeniero (Engineer)                                         //
//                  exp                     Explosivos (Explosives)                                      //
//                  sn                      Francotirador (Sniper)                                       //
//                  sp                      Observador (Spotter)                                         //
//                  divsl                   Buzo líder de escuadra (Diver Squad Leader)		             //
//                  divme                   Buzo médico (Diver Medic)									 //
//                  divexp                  Buzo especialista en explosivos (Diver Explosive)        	 //
//                  div                     Buzo (Diver)                                           		 //
//																										 //
//                  hplt                	Piloto de helicóptero (Helicopter pilot)                     //
//                  jplt                	Piloto de avión de combate (Jet pilot)                       //
//                                                                                                       //
//                  hmmwv               	Equipación para HMMWVs                                       //
//                  blx                		Equipación para British Rigdback                             //
//                  sdv                 	Equipación per submarinos                                    //
//                                                                                                       //
// Cambios: 0.1 (2015/04/02) Versión inicial.                                                            //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//			1.1 (2015/12/21) Añadidos los uniformes de la UST y varias equipaciones adicionales			 //
//=======================================================================================================//

//=======================================================================================================//
// Declaración de variables.                                                                             //
//=======================================================================================================//

private["_esInfanteria"];
private["_bateriaUAV", "_bridaDetencion", "_herraMapa", "_microDAGR", "_tapones", "_vectorIV", "_atragmx", "_kestrel", "_clacker", "_clackerm26", "_kitDesactivacion", "_telefono"];
private["_atropina", "_epinefrina", "_morfina", "_vendas", "_vendasElasticas", "_vendasRapidas", "_vendasEmpaquetadas"];
private["_bolsaSangre250", "_bolsaSangre500", "_bolsaSangre1000", "_bolsaPlasma250", "_bolsaPlasma500", "_bolsaPlasma1000", "_bolsaSalina250", "_bolsaSalina500", "_bolsaSalina1000"];
private["_kitPrimerosAuxilios", "_kitQuirurgico", "_torniquete"];
private["_aprincipal"];

//=======================================================================================================//
// Obtener el tipo de unidad y si es un soldado de infanteria.                                           //
//=======================================================================================================//

params ["_tipoUnidad", "_unidad"];
_tipoUnidad = toLower _tipoUnidad;
_esInfanteria = _unidad isKindOf "CAManBase";

//=======================================================================================================//
// Resumen de equipación: Armas, munición, accessorios, gafas, chalecos, ...                                       //
//=======================================================================================================//

// Obtener el tipo de unidad y si es un soldado de infanteria.                                             //
_uniforme = "GBR_CombatUniform_woodlan";
_uniformeME = "GBR_CombatUniform_medic_woodlan";
_uniformeSN = "U_B_GhillieSuit";
_uniformeDIV = "U_B_Wetsuit";
_uniformeHPLT = "GBR_pilotSuit_wood";
_uniformeJPLT = "GBR_pilotSuit_wood";

// Chalecos.
_chalecoSQ = "GBR_wood_PlateCarrier1_rgr";
_chalecoTL = "GBR_wood_PlateCarrier1_rgr";
_chalecoRFL = "GBR_wood_PlateCarrier1_rgr";
_chalecoGR = "GBR_wood_PlateCarrier1_rgr";
_chalecoME = "GBR_wood_PlateCarrier1_rgr";
_chalecoSAW = "GBR_wood_PlateCarrier1_rgr";
_chalecoDIV = "V_RebreatherB";

// Cascos.
_casco = "GBR_wood_HelmetB";
_cascoCB = "GBR_wood_HelmetC";
_cascoSG = "GBR_wood_HelmetA";
_cascoSN = "rhs_Booniehat_ocp";
_cascoHPLT = "GBR_wood_PilotHelmetD";
_cascoJPLT = "rhs_jetpilot_usaf";

// Gafas.
_gafas = "G_Tactical_Clear";
_gafasDIV = "G_Diving";

// Mochila.
_mochila = "B_TacticalPack_oli";
_mochilaDIV = "B_AssaultPack_blk";
_paracaidasHPLT = "B_Parachute";
_paracaidasJPLT = "B_Parachute";

// Armas principals.
_arma = "RH_m4a1_ris";
_arma320 = "RH_m4a1_ris_m203";
_armaAR = "rhs_weap_m249_pip_L";
_armaMG = "rhs_weap_m240B_CAP";
_armaDM = "RH_Mk11";
_armaSN = "srifle_LRR_F";
_armaDIV = "arifle_SDAR_F";

// Municiones
_municion = "30Rnd_556x45_Stanag";
_municionT = "30Rnd_556x45_Stanag_Tracer_Red";
_municionAR = "rhsusf_200Rnd_556x45_soft_pouch";
_municionMG = "rhsusf_100Rnd_762x51";
_municionDM = "RH_20Rnd_762x51_M80A1";
_municionSN = "rhsusf_5Rnd_300winmag_xm2010";
_municionDIV = "20Rnd_556x45_UW_mag";
_municionP = "rhsusf_mag_7x45acp_MHP";

// M320
_municion320 = "1Rnd_HE_Grenade_shell";
_municion320HB = "1Rnd_Smoke_Grenade_shell";
_municion320HV = "1Rnd_SmokeGreen_Grenade_shell";
_municion320HR = "1Rnd_SmokeRed_Grenade_shell";
_municion320FB = "UGL_FlareWhite_F";
_municion320FV = "UGL_FlareGreen_F";
_municion320FR = "UGL_FlareRed_F";

// Granadas
_granadaRGO = "HandGrenade";
_granadaRGN = "MiniGrenade";
_granadaHB = "SmokeShell";
_granadaHV = "SmokeShellGreen";
_granadaHR = "SmokeShellRed";
_granadaLV = "Chemlight_green";
_granadaLR = "Chemlight_red";
_granadaBB = "ACE_HandFlare_White";
_granadaBV = "ACE_HandFlare_Green";
_granadaBR = "ACE_HandFlare_Red";
_granadaIR = "B_IR_Grenade";
_granadaS = "ACE_M84";

// Silenciadores.
_armaSilenciador = "RH_qdss_nt4";
_armaSurefire = "rhsusf_acc_SF3P556";
_armaSilenciadorSN = "rhsusf_acc_M2010S";

// Accesorios.
_armaLaserLinterna = "RH_SFM952V";
_armaLaserLinternaAR = "RH_SFM952V";
_armaLaserLinternaSN = "rhsusf_acc_anpeq15side";

// Miras.
_armaMira = "RH_compm4s";
_armaMiraL = "RH_ta31rmr";
_armaMiraAR = "RH_c79";
_armaMiraDM = "optic_AMS";
_armaMiraSN = "optic_LRPS";

// Bípodes.
_armabipodeDM = "RH_HBLM";
_armabipodeSN = "rhsusf_acc_harris_bipod";

// Lanzadores AT/AA.
_armaLanzadorRF = "rhs_weap_M136_hedp";
_armaLanzadorAT = "rhs_weap_fgm148";
_armaLanzadorAA = "rhs_weap_fim92";

// Pistolas.
_pistola = "rhsusf_weap_m1911a1";

// Objetos.
_gps = "ItemGPS";
_reloj = "ItemWatch";
_mapa = "ItemMap";
_brujula = "ItemCompass";
_radio = "ItemRadio";
_terminalUAV = "B_UavTerminal";

// Prismáticos.
_prismaticos = "lerca_1200_tan";

// Visión nocturna.
_visioNocturna = "rhsusf_ANPVS_14";
if (ust_mod_ace3) then {

    //===================================================================================================//
    // Objetos dependientes de ACE 3.                                                                      //
    //===================================================================================================//

    // General.
    _bateriaUAV = "ACE_UAVBattery";
    _bridaDetencion = "ACE_CableTie";
    _herraMapa = "ACE_MapTools";
    _microDAGR = "ACE_microDAGR";
    _tapones = "ACE_EarPlugs";
    _vectorIV = "ACE_Vector";

    // Objetos para tirador designado/francotirador/observador.
    _atragmx = "ACE_ATragMX";
    _kestrel = "ACE_Kestrel4500";

    // Objetos relacionados con explosivos.
    _clacker = "ACE_Clacker";
    _clackerm26 = "ACE_M26_Clacker";
    _kitDesactivacion = "ACE_DefusalKit";
    _telefono = "ACE_Cellphone";

    // Objetos médicos: Drogas.
    _atropina = "ACE_atropine";
    _epinefrina = "ACE_epinephrine";
    _morfina = "ACE_morphine";

    // Objetos médicos: Vendas.
    _vendas = "ACE_fieldDressing";
    _vendasElasticas = "ACE_elasticBandage";
    _vendasRapidas = "ACE_quikclot";
    _vendasEmpaquetadas = "ACE_packingBandage";

    // Objetos médicos: Bolsas.
    _bolsaSangre250 = "ACE_bloodIV_250";
    _bolsaSangre500 = "ACE_bloodIV_250";
    _bolsaSangre1000 = "ACE_bloodIV_250";
    _bolsaPlasma250 = "ACE_plasmaIV_250";
    _bolsaPlasma500 = "ACE_plasmaIV_500";
    _bolsaPlasma1000 = "ACE_plasmaIV";
    _bolsaSalina250 = "ACE_salineIV_250";
    _bolsaSalina500 = "ACE_salineIV_500";
    _bolsaSalina1000 = "ACE_salineIV_1000";

    // Objetos médicos: Kits.
    _kitPrimerosAuxilios = "ACE_personalAidKit";
    _kitQuirurgico = "ACE_surgicalKit";

    // Objetos médicos: Torniquetes.
    _torniquete = "ACE_tourniquet";

    // Paracaídas
    _paracaidasJPLT = "ACE_NonSteerableParachute";
};


// Quitar todo la equipación que lleva la unidad en caso de que sea infantería.
if (_esInfanteria) then {
    removeAllWeapons _unidad;
    removeAllAssignedItems _unidad;
    clearAllItemsFromBackpack _unidad;
    removeAllContainers _unidad;
    removeHeadgear _unidad;

    // Uniforme, casco y gafas.
    _unidad forceaddUniform _uniforme;
    _unidad addHeadgear _casco;
    _unidad addGoggles _gafas;

    if (ust_mod_ace3) then {
        (uniformContainer _unidad) addItemCargoGlobal [_tapones,1];
        (uniformContainer _unidad) addItemCargoGlobal [_morfina,1];
        (uniformContainer _unidad) addItemCargoGlobal [_epinefrina,1];
    };
    (uniformContainer _unidad) addMagazineCargoGlobal [_municionP,2];

    // Arma secundaria.
    _unidad addWeapon _pistola;

    // Añadir objetos comunes.
    _unidad linkItem _mapa;
    _unidad linkItem _reloj;
    _unidad linkItem _brujula;
    //_unidad linkItem _gps;
    _unidad linkItem _radio;
};

// Configurar el equipo para cada unidad.
switch (_tipoUnidad) do
{
    // Charlie Mike (Platoon Leader)
    case "pl": {
        // Chaleco y mochila.
        _unidad addVest _chalecoSQ;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municion,1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
            (vestContainer _unidad) addItemCargoGlobal [_herraMapa,1];
            if (ust_mod_ace3) then {
                (vestContainer _unidad) addItemCargoGlobal [_microDAGR,1];
            };
        };
        (vestContainer _unidad) addMagazineCargoGlobal [_municion,8];
        (vestContainer _unidad) addMagazineCargoGlobal [_municionT,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_municion320,2];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGN,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGO,2];

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municion,5];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municionT,2];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaHB,2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];

        // Arma principal.
        _unidad addWeapon _arma320;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMiraL;

        // Objetos.
        //_unidad linkItem _gps;

        // Binóculos.
        _unidad addWeapon _vectorIV;
    };

    // Sargento de sección (Platoon Sergeant).
    case "psg": {
        // Chaleco y mochila.
        _unidad addVest _chalecoSQ;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municion,1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
            (vestContainer _unidad) addItemCargoGlobal [_herraMapa,1];
            if (ust_mod_ace3) then {
                (vestContainer _unidad) addItemCargoGlobal [_microDAGR,1];
            };
        };
        (vestContainer _unidad) addMagazineCargoGlobal [_municion,8];
        (vestContainer _unidad) addMagazineCargoGlobal [_municionT,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_municion320,2];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGN,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGO,2];

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municion,5];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municionT,2];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaHB,2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];

        // Arma principal.
        _unidad addWeapon _arma320;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMiraL;

        // Binóculos.
        _unidad addWeapon _vectorIV;
    };

    // Operador de rádio (Platoon Radiotelephone Operator).
    case "rto": {
        // Chaleco y mochila.
        _unidad addVest _chalecoSQ;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municion,1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
            (vestContainer _unidad) addItemCargoGlobal [_herraMapa,1];
            if (ust_mod_ace3) then {
                (vestContainer _unidad) addItemCargoGlobal [_microDAGR,1];
            };
        };
        (vestContainer _unidad) addMagazineCargoGlobal [_municion,8];
        (vestContainer _unidad) addMagazineCargoGlobal [_municionT,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_municion320,2];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGN,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGO,2];

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municion,5];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municionT,2];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaHB,2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];

        // Arma principal.
        _unidad addWeapon _arma;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMira;
    };

    // Observador avanzado (Forward Observer).
    case "fo": {
        // Chaleco y mochila.
        _unidad addVest _chalecoSQ;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municion,1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
            (vestContainer _unidad) addItemCargoGlobal [_herraMapa,1];
            if (ust_mod_ace3) then {
                (vestContainer _unidad) addItemCargoGlobal [_microDAGR,1];
            };
        };
        (vestContainer _unidad) addMagazineCargoGlobal [_municion,8];
        (vestContainer _unidad) addMagazineCargoGlobal [_municionT,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_municion320,2];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGN,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGO,2];

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municion,5];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municionT,2];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaHB,2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];

        // Arma principal.
        _unidad addWeapon _arma;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMira;

        // Objetos.
        _unidad linkItem _terminalUAV;
    };

    // Médico (Platoon Medic).
    case "me": {
        // Quitamos el uniforme
        removeUniform _unidad;

        // Uniforme, chaleco y mochila.
        _unidad forceAddUniform _uniformeME;
        _unidad addVest _chalecoME;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municion,1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then{
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal [_municion,8];
        (vestContainer _unidad) addMagazineCargoGlobal [_municionT,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGO,3];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGN,1];

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_morfina,8];
            (unitBackpack _unidad) addItemCargoGlobal [_epinefrina,8];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendas,10];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,10];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,10];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,8];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,5];
                (unitBackpack _unidad) addItemCargoGlobal [_atropina,8];
                (unitBackpack _unidad) addItemCargoGlobal [_kitQuirurgico,2];
                (unitBackpack _unidad) addItemCargoGlobal [_kitPrimerosAuxilios,2];
                (unitBackpack _unidad) addItemCargoGlobal [_bolsaSalina500,6];
            };

            if( cc_mod_agm or (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 0)) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendas,20];
                (unitBackpack _unidad) addItemCargoGlobal [_bolsaSangre500,2];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municion,2];

        // Arma principal.
        _unidad addWeapon _arma;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMira;
    };

    // Líder de escuadra (Squad Leader).
    case "sl": {
        // Chaleco y mochila.
        _unidad addVest _chalecoSQ;
        _unidad addBackpack _mochila;

        // Casco
        removeHeadgear _unidad;
        _unidad addHeadgear _cascoSG;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municion,1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
            (vestContainer _unidad) addItemCargoGlobal [_herraMapa,1];
            if (ust_mod_ace3) then {
                (vestContainer _unidad) addItemCargoGlobal [_microDAGR,1];
            };
        };
        (vestContainer _unidad) addMagazineCargoGlobal [_municion,8];
        (vestContainer _unidad) addMagazineCargoGlobal [_municionT,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_municion320,2];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGN,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGO,2];

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municion,5];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municionT,2];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaHB,2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];

        // Arma principal.
        _unidad addWeapon _arma320;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMiraL;

        // Objetos.
        //_unidad linkItem _gps;

        // Binóculos.
        _unidad addWeapon _vectorIV;
    };

    // Líder de equipo (Team leader).
    case "tl": {
        // Chaleco y mochila.
        _unidad addVest _chalecoTL;
        _unidad addBackpack _mochila;

        // Casco
        removeHeadgear _unidad;
        _unidad addHeadgear _cascoTL;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municion,1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
            (vestContainer _unidad) addItemCargoGlobal [_herraMapa,1];
        };
        (vestContainer _unidad) addMagazineCargoGlobal [_municion,8];
        (vestContainer _unidad) addMagazineCargoGlobal [_municionT,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_municion320,2];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGN,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGO,2];

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municion,5];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municionT,2];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaHB,2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];

        // Arma principal.
        _unidad addWeapon _arma320;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMiraL;

        // Binóculos.
        _unidad addWeapon _vectorIV;
    };

    // Fusilero (Rifleman).
    case "rfl": {
        // Chaleco y mochila.
        _unidad addVest _chalecoRFL;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municion,1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal [_municion,8];
        (vestContainer _unidad) addMagazineCargoGlobal [_municionT,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGO,4];

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municion,5];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municionT,2];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaRGN,2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];

        // Arma principal.
        _unidad addWeapon _arma;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMira;
    };

    // Fusilero con AT4 (Rifleman with AT4).
    case "rflat": {
        // Chaleco y mochila.
        _unidad addVest _chalecoRFL;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municion,1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal [_municion,8];
        (vestContainer _unidad) addMagazineCargoGlobal [_municionT,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGO,4];

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municion,5];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municionT,2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaRGN,2];
        (unitBackpack _unidad) addItemCargoGlobal ["rhs_m136_hedp_mag",1];

        // Arma principal.
        _unidad addWeapon _arma;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMira;

        // Lanzador AT4
        _unidad addWeapon _armaLanzadorRF;
    };

    // Granadero (Grenadier).
    case "gr": {
        // Chaleco y mochila.
        _unidad addVest _chalecoGR;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municion320,4];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municion,1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal [_municion,6];
        (vestContainer _unidad) addMagazineCargoGlobal [_municionT,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGO,4];
        (vestContainer _unidad) addMagazineCargoGlobal [_municion320,6];

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municion,5];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municionT,1];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaHB,2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaRGN,2];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municion320,5];

        // Arma principal.
        _unidad addWeapon _arma320;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMira;
    };

    // Fusilero automático (Automatic Rifleman).
    case "ar": {
        // Chaleco y mochila.
        _unidad addVest _chalecoSAW;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",2];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",3];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGO,3];

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_soft_pouch",1];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaRGN,2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];

        // Arma principal.
        _unidad addWeapon _armaAR;
        _unidad addPrimaryWeaponItem _armaLaserLinternaAR;
        _unidad addPrimaryWeaponItem _armaMiraAR;
    };

    // Tirador designado (Designated Marksman).
    case "dm": {
        // Chaleco y mochila.
        _unidad addVest _chalecoRFL;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
            (vestContainer _unidad) addItemCargoGlobal [_kestrel,1];
            if (ust_mod_ace3) then {
                (vestContainer _unidad) addItemCargoGlobal [_atragmx,1];
            };
        };
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGO,3];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",6];

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaRGN,2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",5];

        // Arma principal.
        // Missing muzzle attachment
        _unidad addWeapon _armaDM;
        _unidad addPrimaryWeaponItem _armaLaserLinternaSN;
        _unidad addPrimaryWeaponItem _armaMiraDM;
        _unidad addPrimaryWeaponItem _armabipodeDM;
    };


    // Ametrallador (Machine Gunner).
    case "mg": {
        // Chaleco y mochila.
        _unidad addVest _chalecoRFL;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGO,3];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",2];

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaRGN,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",2];

        // Arma principal.
        _unidad addWeapon _armaMG;
        _unidad addPrimaryWeaponItem _armaMiraAR;
    };

    // Asistente de ametrallador (Assitant Machine Gunner).
    case "amg": {
        // Chaleco y mochila.
        _unidad addVest _chalecoRFL;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municion,1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal [_municion,8];
        (vestContainer _unidad) addMagazineCargoGlobal [_municionT,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGO,4];

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaRGN,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",2];

        // Arma principal.
        _unidad addWeapon _arma;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMira;

        // Prismáticos.
        _unidad addWeapon _prismaticos;
    };

    // Antitanque (Antitank).
    case "at": {
        // Chaleco y mochila.
        _unidad addVest _chalecoRFL;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municion,1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal [_municion,8];
        (vestContainer _unidad) addMagazineCargoGlobal [_municionT,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGO,4];

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municion,5];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municionT,2];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaRGN,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",1];

        // Arma principal.
        _unidad addWeapon _arma;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMira;

        // Javelin.
        _unidad addWeapon _armaLanzadorAT;
    };

    // Asistente de antitanque (AT Ammo handler).
    case "aat": {
        // Chaleco y mochila.
        _unidad addVest _chalecoRFL;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municion,1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal [_municion,8];
        (vestContainer _unidad) addMagazineCargoGlobal [_municionT,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGO,4];

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",1];

        // Arma principal.
        _unidad addWeapon _arma;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMira;
    };

    // Anti aéreo (Anti Air gunner).
    case "aa": {
        // Chaleco y mochila.
        _unidad addVest _chalecoRFL;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municion,1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal [_municion,8];
        (vestContainer _unidad) addMagazineCargoGlobal [_municionT,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGO,4];

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municion,5];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municionT,2];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaRGN,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_fim92_mag",1];

        // Arma principal.
        _unidad addWeapon _arma;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMira;

        // Stinger.
        _unidad addWeapon _armaLanzadorAA;
    };

    // Asistente de anti aéreo (Anti Air Assitant).
    case "aaa": {
        // Chaleco y mochila.
        _unidad addVest _chalecoRFL;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municion,1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal [_municion,8];
        (vestContainer _unidad) addMagazineCargoGlobal [_municionT,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGO,4];

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_fim92_mag",1];


        // Arma principal.
        _unidad addWeapon _arma;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMira;
    };

    // Ingeniero (Engineer).
    case "en": {
        // Chaleco y mochila.
        _unidad addVest _chalecoRFL;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municion,1];
        if (ust_mod_ace3) then{
            (uniformContainer _unidad) addItemCargoGlobal [_clacker,1];
        };

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal [_municion,8];
        (vestContainer _unidad) addMagazineCargoGlobal [_municionT,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGO,4];

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (vestContainer _unidad) addItemCargoGlobal [_visioNocturna,1];

        // Arma principal.
        _unidad addWeapon _arma;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMira;
    };

    // Especialista en explosivos (Explosive Specialist).
    case "exp": {
        // Chaleco y mochila.
        _unidad addVest _chalecoRFL;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        if (ust_mod_ace3) then {
            (uniformContainer _unidad) addItemCargoGlobal [_clacker,1];
        };
        (uniformContainer _unidad) addMagazineCargoGlobal [_municion,1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal [_municion,8];
        (vestContainer _unidad) addMagazineCargoGlobal [_municionT,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGO,2];

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (vestContainer _unidad) addItemCargoGlobal [_visioNocturna,1];

        // Arma principal.
        _unidad addWeapon _arma;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMira;
    };

    // Francotirador (Sniper).
    case "sn": {
        // Uniforme y chaleco
        removeUniform _unidad;
        _unidad forceAddUniform _uniformeSN;
        _unidad addVest _chalecoRFL;

        // Casco
        removeHeadgear _unidad;
        _unidad addHeadgear _cascoSN;

        // Objetos en el uniforme.
        if (ust_mod_ace3) then {
            (uniformContainer _unidad) addItemCargoGlobal [_tapones,1];
            (uniformContainer _unidad) addItemCargoGlobal [_morfina,1];
            (uniformContainer _unidad) addItemCargoGlobal [_epinefrina,1];
        };
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciadorSN,1];
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010",2];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municionP,2];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3) then {
                (vestContainer _unidad) addItemCargoGlobal [_microDAGR,1];
                (vestContainer _unidad) addItemCargoGlobal [_atragmx,1];
            };
            (vestContainer _unidad) addItemCargoGlobal [_herraMapa,1];
            (vestContainer _unidad) addItemCargoGlobal [_kestrel,1];
        };
        (vestContainer _unidad) addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010",5];

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaRGN,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010",5];

        // Arma principal.
        _unidad addWeapon _armaSN;
        _unidad addPrimaryWeaponItem _armaLaserLinternaSN;
        _unidad addPrimaryWeaponItem _armaMiraSN;
    };

    // Observador (Spotter).
    case "sp": {
        // Uniforme y chaleco
        removeUniform _unidad;
        _unidad forceAddUniform _uniformeSN;
        _unidad addVest _chalecoRFL;

        // Casco
        removeHeadgear _unidad;
        _unidad addHeadgear _cascoSN;

        // Objetos en el uniforme.
        if (ust_mod_ace3) then {
            (uniformContainer _unidad) addItemCargoGlobal [_tapones,1];
            (uniformContainer _unidad) addItemCargoGlobal [_morfina,1];
            (uniformContainer _unidad) addItemCargoGlobal [_epinefrina,1];
        };
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municionP,2];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municion,1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3) then {
                (vestContainer _unidad) addItemCargoGlobal [_microDAGR,1];
                (vestContainer _unidad) addItemCargoGlobal [_atragmx,1];
            };
            (vestContainer _unidad) addItemCargoGlobal [_herraMapa,1];
            (vestContainer _unidad) addItemCargoGlobal [_kestrel,1];
        };

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };

        _unidad addWeapon _arma;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMira;

        // Binóculos.
        _unidad addWeapon _vectorIV;

        // Objetos.
        //_unidad linkItem _gps;
    };

    // Buzo líder de escuadra (Diver Squad Leader)
    case "divsl": {
        // Quitamos el uniforme, casco y chaleco
        removeUniform _unidad;
        removeHeadgear _unidad;
        removeGoggles _unidad;

        // Uniforme, chaleco y mochila.
        _unidad forceAddUniform _uniformeDIV;
        _unidad addVest _chalecoDIV;
        _unidad addBackpack _mochilaDIV;

        // Objetos en el uniforme.
        if (ust_mod_ace3) then {
            (uniformContainer _unidad) addItemCargoGlobal [_tapones,1];
            (uniformContainer _unidad) addItemCargoGlobal [_morfina,1];
            (uniformContainer _unidad) addItemCargoGlobal [_epinefrina,1];
            (uniformContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (uniformContainer _unidad) addMagazineCargoGlobal [_municionP,4];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municionDIV,3];

        // Objetos en el chaleco.
        // No se pueden poner objetos en el chaleco del buzo.

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaRGN,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaRGO,4];
        (unitBackpack _unidad) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",7];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municionDIV,4];

        // Gafas.
        _unidad addGoggles _gafasDIV;

        // Arma principal.
        _unidad addWeapon _armaDIV;

        // Objetos.
        _unidad linkItem _gps;

        // Binóculos.
        _unidad addWeapon _vectorIV;
    };

    // Buzo médico (Diver Medic)
    case "divme": {
        // Quitamos el uniforme, casco y chaleco
        removeUniform _unidad;
        removeHeadgear _unidad;
        removeGoggles _unidad;

        // Uniforme, chaleco y mochila.
        _unidad forceAddUniform _uniformeDIV;
        _unidad addVest _chalecoDIV;
        _unidad addBackpack _mochilaDIV;

        // Objetos en el uniforme.
        if (ust_mod_ace3) then {
            (uniformContainer _unidad) addItemCargoGlobal [_tapones,1];
            (uniformContainer _unidad) addItemCargoGlobal [_morfina,1];
            (uniformContainer _unidad) addItemCargoGlobal [_epinefrina,1];
            (uniformContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (uniformContainer _unidad) addMagazineCargoGlobal [_municionP,4];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municionDIV,3];

        // Objetos en el chaleco.
        // No se pueden meter objetos en el chaleco de buzo.

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_morfina,8];
            (unitBackpack _unidad) addItemCargoGlobal [_epinefrina,8];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendas,8];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,8];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,8];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,6];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,3];
                (unitBackpack _unidad) addItemCargoGlobal [_atropina,8];
                (unitBackpack _unidad) addItemCargoGlobal [_kitQuirurgico,2];
                (unitBackpack _unidad) addItemCargoGlobal [_kitPrimerosAuxilios,2];
                (unitBackpack _unidad) addItemCargoGlobal [_bolsaSalina500,3];
            };
            if( ust_mod_ace3 and ust_param_ace3_sistemaMedico == 0) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendas,15];
                (unitBackpack _unidad) addItemCargoGlobal [_bolsaSangre500,2];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaRGN,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaRGO,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",3];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municionDIV,3];

        // Gafas.
        _unidad addGoggles _gafasDIV;

        // Arma principal.
        _unidad addWeapon _armaDIV;
    };

    // Buzo especialista en explosius (Diver Explosive Specialist).
    case "divexp": {
        // Quitamos el uniforme, casco y chaleco
        removeUniform _unidad;
        removeHeadgear _unidad;
        removeGoggles _unidad;

        // Uniforme, chaleco y mochila.
        _unidad forceAddUniform _uniformeDIV;
        _unidad addVest _chalecoDIV;
        _unidad addBackpack _mochilaDIV;

        // Objetos en el uniforme.
        if (ust_mod_ace3) then {
            (uniformContainer _unidad) addItemCargoGlobal [_tapones,1];
            (uniformContainer _unidad) addItemCargoGlobal [_morfina,1];
            (uniformContainer _unidad) addItemCargoGlobal [_epinefrina,1];
            (uniformContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (uniformContainer _unidad) addMagazineCargoGlobal [_municionP,4];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municionDIV,3];

        // Objetos en el chaleco.
        // No se pueden meter objetos en el chaleco de buzo.

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["DemoCharge_Remote_Mag",3];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaRGN,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaRGO,4];
        (unitBackpack _unidad) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",7];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municionDIV,4];

        // Gafas.
        _unidad addGoggles _gafasDIV;

        // Arma principal.
        _unidad addWeapon _armaDIV;
    };

    // Buzo (Diver).
    case "div": {
        // Quitamos el uniforme, casco y chaleco
        removeUniform _unidad;
        removeHeadgear _unidad;
        removeGoggles _unidad;

        // Uniforme, chaleco y mochila.
        _unidad forceAddUniform _uniformeDIV;
        _unidad addVest _chalecoDIV;
        _unidad addBackpack _mochilaDIV;

        // Objetos en el uniforme.
        if (ust_mod_ace3) then {
            (uniformContainer _unidad) addItemCargoGlobal [_tapones,1];
            (uniformContainer _unidad) addItemCargoGlobal [_morfina,1];
            (uniformContainer _unidad) addItemCargoGlobal [_epinefrina,1];
            (uniformContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (uniformContainer _unidad) addMagazineCargoGlobal [_municionP,4];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municionDIV,3];

        // Objetos en el chaleco.
        // No se pueden meter objetos en el chaleco de buzo.

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaRGN,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaRGO,4];
        (unitBackpack _unidad) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",5];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municionDIV,4];

        // Gafas.
        _unidad addGoggles _gafasDIV;

        // Arma principal.
        _unidad addWeapon _armaDIV;
    };

    // Piloto de helicóptero (Helicopter pilot)
    case "hplt": {
        // Quitamos el uniforme, casco y chaleco
        removeUniform _unidad;
        removeHeadgear _unidad;
        removeGoggles _unidad;

        // Uniforme y paracaigudes.
        _unidad forceAddUniform _uniformeHPLT;
        _unidad addBackpack _paracaidasHPLT;
        _unidad addHeadgear _cascoHPLT;

        // Objetos en el uniforme.
        if (ust_mod_ace3) then {
            (uniformContainer _unidad) addItemCargoGlobal [_tapones,1];
            (uniformContainer _unidad) addItemCargoGlobal [_morfina,1];
            (uniformContainer _unidad) addItemCargoGlobal [_epinefrina,1];
        };
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municionP,2];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municion,4];

        // Arma principal.
        _unidad addWeapon _arma;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMira;

    };

    // Piloto de avión de combate (Jet pilot)
    case "jplt": {
        // Quitamos el uniforme, casco y chaleco
        removeUniform _unidad;
        removeHeadgear _unidad;
        removeGoggles _unidad;

        // Uniforme y paracaigudes.
        _unidad forceAddUniform _uniformeJPLT;
        _unidad addBackpack _paracaidasJPLT;
        _unidad addHeadgear _cascoJPLT;

        // Objetos en el uniforme.
        if (ust_mod_ace3) then {
            (uniformContainer _unidad) addItemCargoGlobal [_tapones,1];
            (uniformContainer _unidad) addItemCargoGlobal [_morfina,1];
            (uniformContainer _unidad) addItemCargoGlobal [_epinefrina,1];
        };
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municionP,2];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municion,4];

        // Arma principal.
        _unidad addWeapon _arma;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMira;
    };

    case "hmmwv": {
        clearWeaponCargoGlobal _unidad;
        clearMagazineCargoGlobal _unidad;
        clearItemCargoGlobal _unidad;
        clearBackpackCargoGlobal _unidad;

        _unidad addWeaponCargoGlobal [_armaDM,1];
        _unidad addItemCargoGlobal [_armaMiraDM, 1];
        _unidad addItemCargoGlobal [_armabipodeDM, 1];
        _unidad addWeaponCargoGlobal [_armaLanzadorAT,2];
        _unidad addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",2];
        _unidad addMagazineCargoGlobal [_municion,10];
        _unidad addMagazineCargoGlobal [_granadaRGO,5];
        _unidad addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",5];
        _unidad addMagazineCargoGlobal ["SatchelCharge_Remote_Mag",2];
        _unidad addMagazineCargoGlobal [_municion320,8];
        _unidad addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",6];
        if (ust_mod_ace3) then {
            _unidad addItemCargoGlobal [_clacker,1];
            _unidad addItemCargoGlobal [_morfina,10];
            _unidad addItemCargoGlobal [_epinefrina,10];
            _unidad addItemCargoGlobal [_vendas,10];
            _unidad addItemCargoGlobal [_bolsaSangre500,5];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                _unidad addItemCargoGlobal [_atropina,10];
                _unidad addItemCargoGlobal [_vendasElasticas,10];
                _unidad addItemCargoGlobal [_vendasRapidas,10];
                _unidad addItemCargoGlobal [_vendasEmpaquetadas,10];
                _unidad addItemCargoGlobal [_bolsaSalina500,5];
                _unidad addItemCargoGlobal [_bolsaPlasma500,5];
                _unidad addItemCargoGlobal [_kitQuirurgico,3];
                _unidad addItemCargoGlobal [_kitPrimerosAuxilios,3];
            };
        };
    };

    case "blx": {
        clearWeaponCargoGlobal _unidad;
        clearMagazineCargoGlobal _unidad;
        clearItemCargoGlobal _unidad;
        clearBackpackCargoGlobal _unidad;

        _unidad addWeaponCargoGlobal [_armaDM,1];
        _unidad addItemCargoGlobal [_armaMiraDM, 1];
        _unidad addItemCargoGlobal [_armabipodeDM, 1];
        _unidad addWeaponCargoGlobal [_armaLanzadorAT,2];
        _unidad addWeaponCargoGlobal [_armaLanzadorRF,1];
        _unidad addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",2];
        _unidad addMagazineCargoGlobal ["rhs_m136_hedp_mag",1];
        _unidad addMagazineCargoGlobal [_municion,15];
        _unidad addMagazineCargoGlobal [_granadaRGO,5];
        _unidad addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",7];
        _unidad addMagazineCargoGlobal ["SatchelCharge_Remote_Mag",2];
        _unidad addMagazineCargoGlobal [_municion320,8];
        _unidad addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",10];
        if (ust_mod_ace3) then {
            _unidad addItemCargoGlobal [_clacker,1];
            _unidad addItemCargoGlobal [_morfina,10];
            _unidad addItemCargoGlobal [_epinefrina,10];
            _unidad addItemCargoGlobal [_vendas,10];
            _unidad addItemCargoGlobal [_bolsaSangre500,5];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                _unidad addItemCargoGlobal [_atropina,10];
                _unidad addItemCargoGlobal [_vendasElasticas,10];
                _unidad addItemCargoGlobal [_vendasRapidas,10];
                _unidad addItemCargoGlobal [_vendasEmpaquetadas,10];
                _unidad addItemCargoGlobal [_bolsaSalina500,5];

                _unidad addItemCargoGlobal [_bolsaPlasma500,5];

                _unidad addItemCargoGlobal [_kitQuirurgico,3];
                _unidad addItemCargoGlobal [_kitPrimerosAuxilios,3];
            };
        };
    };

    case "sdv": {
        clearWeaponCargoGlobal _unidad;
        clearMagazineCargoGlobal _unidad;
        clearItemCargoGlobal _unidad;
        clearBackpackCargoGlobal _unidad;

        _unidad addMagazineCargoGlobal [_granadaRGN,4];
        _unidad addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
        _unidad addMagazineCargoGlobal [_granadaRGO,10];
        _unidad addMagazineCargoGlobal ["30Rnd_556x45_Stanag",10];
        _unidad addMagazineCargoGlobal [_municionDIV,15];
        _unidad addMagazineCargoGlobal ["SatchelCharge_Remote_Mag",2];
        if (ust_mod_ace3) then {
            _unidad addItemCargoGlobal [_morfina,10];
            _unidad addItemCargoGlobal [_epinefrina,10];
            _unidad addItemCargoGlobal [_vendas,10];
            _unidad addItemCargoGlobal [_bolsaSangre500,5];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                _unidad addItemCargoGlobal [_atropina,10];
                _unidad addItemCargoGlobal [_vendasElasticas,10];
                _unidad addItemCargoGlobal [_vendasRapidas,10];
                _unidad addItemCargoGlobal [_vendasEmpaquetadas,10];
                _unidad addItemCargoGlobal [_bolsaSalina500,5];

                _unidad addItemCargoGlobal [_bolsaPlasma500,5];

                _unidad addItemCargoGlobal [_kitQuirurgico,3];
                _unidad addItemCargoGlobal [_kitPrimerosAuxilios,3];
            };
        };
    };

    default {
        _unidad sideChat format ["DEBUG (ust_configEquipacion_blu_f.sqf): el tipo de unidad %1 no está definido. Utilizando la equipación de fusilero.", _tipoUnidad];

        // Chaleco y mochila.
        _unidad addVest _chalecoRFL;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal [_municion,1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal [_municion,8];
        (vestContainer _unidad) addMagazineCargoGlobal [_municionT,1];
        (vestContainer _unidad) addMagazineCargoGlobal [_granadaRGO,4];

        // Objetos en la mochila.
        if (ust_mod_ace3) then {
            (unitBackpack _unidad) addItemCargoGlobal [_vendas,2];
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 2) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendasElasticas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasRapidas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_vendasEmpaquetadas,3];
                (unitBackpack _unidad) addItemCargoGlobal [_torniquete,1];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visioNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municion,5];
        (unitBackpack _unidad) addMagazineCargoGlobal [_municionT,2];
        (unitBackpack _unidad) addMagazineCargoGlobal [_granadaRGN,2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];

        // Arma principal.
        _unidad addWeapon _arma;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMira;
    };
};

// Selecciona el arma principal por defecto.
if (_esInfanteria) then {
    _aprincipal = primaryWeapon _unidad;
    _unidad selectWeapon _aprincipal;
};


//============================================ FI DEL FITXER ============================================//
