//=======================================================================================================//
// Archivo: ust_configEquipacion_rhs_vpvo.sqf                                                            //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Contribuidores: [UST] Fort																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/04/02                                                                    //
// Descripción: Este documento sirve para equipar los jugadores con la equipación diseñada para la misión//
//              sin usar los perfiles estándars de la UST. Es un requisito que el jugador forme parte    //
//              de la facción RHS: Soviet Air Defense Forces (Voyska protivovozdushnoy oborony) 		 //
//				http://class.rhsmods.org/rhsafrf/CfgFactionClasses_rhs_faction_vpvo.html				 //
//              Cal afegir la següent línia al INIT de la unitat en l'editor:                            //
//                                                                                                       //
//                  ["ROL_JUGADOR",this] call ust_fnc_configEquipacion;                                  //
//                                                                                                       //
//              o bien:                                                                                  //
//                                                                                                       //
//                  ["ROL_JUGADOR",this,"FACCIÓN"] call ust_fnc_configEquipacion;                        //
//                                                                                                       //
//              per forzar una facción específica a la unidad.                                           //
//                                                                                                       //
//              donde "ROL_JUGADOR" es una de las siguientes entradas:                                   //
//                                                                                                       //
//                  ROL_JUGADOR             Rol asignado                                                 //
//                  pl                      Jefe de Sección (Charlie Mike)                               //
//                  psg                     Sargento de sección (Platoon Sergeant)                       //
//                  rto                     Operador de radio (Platoon Radiotelephone Operator)          //
//                  fo                      Observador avanzado (Forward Observer)                       //
//                  me                      Médico (Platoon Medic)                                       //
//                  sl                      Líder de escuadra (Squad Leader)                             //
//                  tl                      Líder de equipo (Team Leader)                                //
//                  rfl                     Fusilero (Rifleman)                                          //
//                  rflat                   Fusilero con AT4 (Rifleman with AT4)                         //
//                  gr                      Granaderoo (Grenadier)                                       //
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
//                                                                                                       //
//              y "FACCIÓN" una de las siguientes entradas:                                              //
//                                                                                                       //
//                  FACCIÓN                 Facción forzada de la unidad en términos de equipación		 //
//                  blu_f                   Blue Force                                                   //
//                  blu_g_f                 FIA                                                          //
//                  ind_g_f                 FIA                                                          //
//                  opf_g_f                 FIA                                                          //
//                  opf_f                   Opposing Force                                               //
//                  ind_f                   Independent Force                                            //
//                  civ_f                   Facción civil                                                //
//                  rhs_faction_usarmy_wd   United States Army (Woodland)                                //
//                  rhs_faction_usarmy_d    United States Army (Desert)                                  //
//                  rhs_faction_usmc_wd     United States Marine Corps (Woodland)                        //
//                  rhs_faction_usmc_d      United States Marine Corps (Desert)                          //
//                  rhs_faction_insurgents  Insurgents                                                   //
//                  rhs_faction_vpvo        Soviet Air Defense Forces (Voyska protivovozdushnoy oborony) //
//                  rhs_faction_vdv         Russian Airborne Troops (Vozdushno-desantnye voyska)         //
//                                                                                                       //
// Cambios: 0.1 (2015/04/02) Versión inicial.                                                            //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

//=======================================================================================================//
// Declaración de variables.                                                                             //
//=======================================================================================================//

private["_esInfanteria"];
private["_bateriaUAV", "_bridaDetencion", "_herraMapa", "_microDAGR", "_tapones", "_vectorIV", "_atragmx", "_kestrel", "_clacker", "_clackerm26", "_kitDesactivacion", "_telefono"];
private["_atropina", "_epinefrina", "_morfina", "_vendas", "_vendasElasticas", "_vendasRapidas", "_vendasEmpaquetadas"];
private["_bolsaSangre250", "_bolsaSangre500", "_bolsaSangre1000", "_bolsaPlasma250", "_bolsaPlasma500", "_bolsaPlasma1000", "_bolsaSalina250", "_bolsaSalina500", "_bolsaSalina1000"];
private["_kitPrimerosAuxilios", "_kitQuirurgicoo", "_torniquetee"];
private["_aprincipal"];

//=======================================================================================================//
// Obtener el tipo de unidad y si es un soldado de infanteria.                                           //
//=======================================================================================================//

params ["_tipoUnidad", "_unidad"];
_tipoUnidad = toLower _tipoUnidad;
_esInfanteria = _unidad isKindOf "CAManBase";

//=======================================================================================================//
// Resumen de equipación: Armas, munición, accessorios, gafas, chalecos, ...                             //
//=======================================================================================================//

// Uniformes
_uniforme = "rhs_uniform_cu_ucp";
_uniformeSN = "U_B_GhillieSuit";
_uniformeDIV = "U_B_Wetsuit";

// Armilles.
_chalecoSQ = "rhsusf_iotv_ucp_squadleader";
_chalecoTL = "rhsusf_iotv_ucp_teamleader";
_chalecoRFL = "rhsusf_iotv_ucp_rifleman";
_chalecoGR = "rhsusf_iotv_ucp_grenadier";
_chalecoME = "rhsusf_iotv_ucp_medic";
_chalecoSAW = "rhsusf_iotv_ucp_SAW";
_chalecoDIV = "V_RebreatherB";

// Cascoos.
_casco = "rhsusf_ach_helmet_headset_ucp";
_cascoSN = "rhs_Booniehat_ucp";

// Gafas.
_gafas = "G_Tactical_Clear";
_gafasDIV = "G_Diving";

// Mochila.
_mochila = "rhsusf_assault_eagleaiii_ucp";
_mochilaDIV = "B_AssaultPack_blk";

// Armas principales.
_arma = "rhs_weap_m4a1";
_arma320 = "rhs_weap_m4a1_m320";
_armaAR = "rhs_weap_m249_pip_S";
_armaMG = "rhs_weap_m240B_CAP";
_armaDM = "rhs_weap_m14ebrri";
_armaSN = "rhs_weap_XM2010_sa";
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
_armaSilenciador = "rhsusf_acc_rotex5_grey";
_armaSurefire = "rhsusf_acc_SF3P556";
_armaSilenciadorSN = "rhsusf_acc_M2010S";

// Accessoris.
_armaLaserLinterna = "rhsusf_acc_anpeq15";
_armaLaserLinternaAR = "rhsusf_acc_anpeq15A";
_armaLaserLinternaSN = "rhsusf_acc_anpeq15side";

// Miras.
_armaMira = "RH_compm4s";
_armaMiraL = "rhsusf_acc_ACOG";
_armaMiraAR = "RH_c79";
_armaMiraDM = "rhsusf_acc_LEUPOLDMK4";
_armaMiraSN = "rhsusf_acc_LEUPOLDMK4_2";

// Bípodes.
_armabipodeDM = "rhsusf_acc_harris_bipod";
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
_visionNocturna = "rhsusf_ANPVS_14";

if (ust_mod_ace3) then {
    //===================================================================================================//
    // Objetos dependientes de ACE 3.                                                                    //
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
    _kitQuirurgicoo = "ACE_surgicalKit";

    // Objetos médicos: Torniquetes.
    _torniquetee = "ACE_tourniquet";

    // Paracaídas
    _paracaidasJPLT = "ACE_NonSteerableParachute";
};


// Quitar toda la equipación que lleva la unidad en caso de que sea infantería.
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
    (uniformContainer _unidad) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",2];

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
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
            (vestContainer _unidad) addItemCargoGlobal [_herraMapa,1];
            if (ust_mod_ace3) then {
                (vestContainer _unidad) addItemCargoGlobal [_microDAGR,1];
            };
        };
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",2];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_mk84",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_m67",2];

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
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_m714_White",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];

        // Arma principal.
        _unidad addWeapon _arma320;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMira;

        // Objetos.
        //_unidad linkItem _gps;

        // Prismáticos.
        _unidad addWeapon _vectorIV;
    };

    // Sargento de sección (Platoon Sergeant).
    case "psg": {
        // Chaleco y mochila.
        _unidad addVest _chalecoSQ;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
            (vestContainer _unidad) addItemCargoGlobal [_herraMapa,1];
            if (ust_mod_ace3) then {
                (vestContainer _unidad) addItemCargoGlobal [_microDAGR,1];
            };
        };
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",2];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_mk84",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_m67",2];

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
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_m714_White",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];

        // Arma principal.
        _unidad addWeapon _arma320;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMira;

        // Prismáticos.
        _unidad addWeapon _vectorIV;
    };

    // Operador de radio (Platoon Radiotelephone Operator).
    case "rto": {
        // Chaleco y mochila.
        _unidad addVest _chalecoSQ;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
            (vestContainer _unidad) addItemCargoGlobal [_herraMapa,1];
            if (ust_mod_ace3) then {
                (vestContainer _unidad) addItemCargoGlobal [_microDAGR,1];
            };
        };
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",2];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_mk84",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_m67",2];

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
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_m714_White",2];
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
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
            (vestContainer _unidad) addItemCargoGlobal [_herraMapa,1];
            if (ust_mod_ace3) then {
                (vestContainer _unidad) addItemCargoGlobal [_microDAGR,1];
            };
        };
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",2];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_mk84",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_m67",2];

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
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_m714_White",2];
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
        // Chaleco y mochila.
        _unidad addVest _chalecoME;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then{
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_m67",3];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_mk84",1];

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

            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 0) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendas,20];
                (unitBackpack _unidad) addItemCargoGlobal [_bolsaSangre500,2];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",2];

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

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
            (vestContainer _unidad) addItemCargoGlobal [_herraMapa,1];
            if (ust_mod_ace3) then {
                (vestContainer _unidad) addItemCargoGlobal [_microDAGR,1];
            };
        };
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",2];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_mk84",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_m67",2];

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
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_m714_White",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];

        // Arma principal.
        _unidad addWeapon _arma320;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMira;

        // Objetos.
        //_unidad linkItem _gps;

        // Prismáticos.
        _unidad addWeapon _vectorIV;
    };

    // Líder de equipo (Team leader).
    case "tl": {
        // Chaleco y mochila.
        _unidad addVest _chalecoTL;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
            (vestContainer _unidad) addItemCargoGlobal [_herraMapa,1];
        };
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",2];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_mk84",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_m67",2];

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
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_m714_White",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];

        // Arma principal.
        _unidad addWeapon _arma320;
        _unidad addPrimaryWeaponItem _armaSurefire;
        _unidad addPrimaryWeaponItem _armaLaserLinterna;
        _unidad addPrimaryWeaponItem _armaMira;

        // Prismáticos.
        _unidad addWeapon _vectorIV;
    };

    // Fusilero (Rifleman).
    case "rfl": {
        // Chaleco y mochila.
        _unidad addVest _chalecoRFL;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_m67",4];

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
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_mk84",2];
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
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_m67",4];

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
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_mk84",2];
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
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",4];
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",6];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_m67",4];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",6];

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
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_m714_White",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_mk84",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",5];

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
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_m67",3];

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
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_soft_pouch",1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_mk84",2];
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
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_m67",3];
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
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_mk84",2];
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
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_m67",3];
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
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_mk84",1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",2];

        // Arma principal.
        _unidad addWeapon _armaMG;
        _unidad addPrimaryWeaponItem _armaMiraAR;
    };

    // Asitsente de ametrallador (Assistant Machine Gunner).
    case "amg": {
        // Chaleco y mochila.
        _unidad addVest _chalecoRFL;
        _unidad addBackpack _mochila;

        // Objetos en el uniforme.
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_m67",4];

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
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_mk84",1];
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
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_m67",4];

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
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_mk84",1];
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
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_m67",4];

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
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
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
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_m67",4];

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
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_mk84",1];
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
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_m67",4];

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
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
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
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];
        if (ust_mod_ace3) then{
            (uniformContainer _unidad) addItemCargoGlobal [_clacker,1];
        };

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_m67",4];

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
        (vestContainer _unidad) addItemCargoGlobal [_visionNocturna,1];

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
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_m67",2];

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
        (vestContainer _unidad) addItemCargoGlobal [_visionNocturna,1];

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
        _unidad addHeadgear _casco;

        // Objetos en el uniforme.
        if (ust_mod_ace3) then {
            (uniformContainer _unidad) addItemCargoGlobal [_tapones,1];
            (uniformContainer _unidad) addItemCargoGlobal [_morfina,1];
            (uniformContainer _unidad) addItemCargoGlobal [_epinefrina,1];
        };
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciadorSN,1];
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010",2];
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",2];

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
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_mk84",1];
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
        _unidad addHeadgear _casco;

        // Objetos en el uniforme.
        if (ust_mod_ace3) then {
            (uniformContainer _unidad) addItemCargoGlobal [_tapones,1];
            (uniformContainer _unidad) addItemCargoGlobal [_morfina,1];
            (uniformContainer _unidad) addItemCargoGlobal [_epinefrina,1];
        };
        (uniformContainer _unidad) addItemCargoGlobal [_armaSilenciador,1];
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",2];
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];

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

        // Prismáticos.
        _unidad addWeapon _vectorIV;

        // Objetos.
        //_unidad linkItem _gps;
    };

    // Buzo líder de escuadra (Diver Squad Leader)
    case "divsl": {
        // Quitar uniforme, casco y chaleco
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
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",4];
        (uniformContainer _unidad) addMagazineCargoGlobal ["20Rnd_556x45_UW_mag",3];

        // Objetos en el chaleco.
        // No se pueden meter objetos en el chaleco del buzo.

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
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_mk84",1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_m67",4];
        (unitBackpack _unidad) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",7];
        (unitBackpack _unidad) addMagazineCargoGlobal ["20Rnd_556x45_UW_mag",4];

        // Gafas.
        _unidad addGoggles _gafasDIV;

        // Arma principal.
        _unidad addWeapon _armaDIV;

        // Objetos.
        _unidad linkItem _gps;

        // Prismáticos.
        _unidad addWeapon _vectorIV;
    };

    // Buzo médico (Diver Medic)
    case "divme": {
        // Quitar uniforme, casco y chaleco
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
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",4];
        (uniformContainer _unidad) addMagazineCargoGlobal ["20Rnd_556x45_UW_mag",3];

        // Objetos en el chaleco.
        // No se pueden meter objetos en el chaleco del buzo.

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
            if (ust_mod_ace3 and ust_param_ace3_sistemaMedico == 0) then {
                (unitBackpack _unidad) addItemCargoGlobal [_vendas,15];
                (unitBackpack _unidad) addItemCargoGlobal [_bolsaSangre500,2];
            };
        };
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_mk84",1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_m67",1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",3];
        (unitBackpack _unidad) addMagazineCargoGlobal ["20Rnd_556x45_UW_mag",3];

        // Gafas.
        _unidad addGoggles _gafasDIV;

        // Arma principal.
        _unidad addWeapon _armaDIV;
    };

    // Buzo especialista en explosivos (Diver Explosive Specialist).
    case "divexp": {
        // Quitar uniforme, casco y chaleco
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
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",4];
        (uniformContainer _unidad) addMagazineCargoGlobal ["20Rnd_556x45_UW_mag",3];

        // Objetos en el chaleco.
        // No se pueden meter objetos en el chaleco del buzo.

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
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["DemoCharge_Remote_Mag",3];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_mk84",1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_m67",4];
        (unitBackpack _unidad) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",7];
        (unitBackpack _unidad) addMagazineCargoGlobal ["20Rnd_556x45_UW_mag",4];

        // Gafas.
        _unidad addGoggles _gafasDIV;

        // Arma principal.
        _unidad addWeapon _armaDIV;
    };

    // Buzo (Diver).
    case "div": {
        // Quitar uniforme, casco y chaleco
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
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",4];
        (uniformContainer _unidad) addMagazineCargoGlobal ["20Rnd_556x45_UW_mag",3];

        // Objetos en el chaleco.
        // No se pueden meter objetos en el chaleco del buzo.

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
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_mk84",1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_m67",4];
        (unitBackpack _unidad) addMagazineCargoGlobal ["30Rnd_556x45_Stanag",7];
        (unitBackpack _unidad) addMagazineCargoGlobal ["20Rnd_556x45_UW_mag",4];

        // Gafas.
        _unidad addGoggles _gafasDIV;

        // Arma principal.
        _unidad addWeapon _armaDIV;
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
        _unidad addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",10];
        _unidad addMagazineCargoGlobal ["rhs_mag_m67",5];
        _unidad addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",5];
        _unidad addMagazineCargoGlobal ["SatchelCharge_Remote_Mag",2];
        _unidad addMagazineCargoGlobal ["rhs_mag_M433_HEDP",8];
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

                _unidad addItemCargoGlobal [_bossaPlasma500,5];

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
        (uniformContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",1];

        // Objetos en el chaleco.
        if (ust_mod_ace3) then {
            (vestContainer _unidad) addItemCargoGlobal [_vendas,2];
        };
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",8];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",1];
        (vestContainer _unidad) addMagazineCargoGlobal ["rhs_mag_m67",4];

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
        (unitBackpack _unidad) addItemCargoGlobal [_visionNocturna,1];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag",5];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2];
        (unitBackpack _unidad) addMagazineCargoGlobal ["rhs_mag_mk84",2];
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


//============================================ FIN DEL FICHERO ==========================================//
