//=======================================================================================================//
// Arxiu: DAC_Config_Units.sqf                                                                           //
// Autor: Silola (silola@freenet.de), CC_Magnetar                                                        //
// Versió: 0.1                                                                                           //
// Creació del Document: 2015/07/13                                                                      //
// Descripció: Aquest document serveix configurar les unitats que del Dynamic-AI-Creator (Silola,        //
//             http://www.armaholic.com/page.php?id=25550) generarà al mapa. La versió actual d'aquest   //
//             document ha estat modificada per CC_Magnetar per tal de cobrir les necessitats del        //
//             1er Regiment Aerotransportat (1RA) de la Comunitat Catalana de Simulació, Cavallers del   //
//             Cel.                                                                                      //
//             This document is used in order to configure the units that the script Dynamic-AI-Creator  //
//             (Silola, http://www.armaholic.com/page.php?id=25550) spawns on the map. The actual        //
//             version of this document has been modified by CC_Magnetar in order to cover the needs of  //
//             "1er Regiment Aerotransportat (1RA)" of the Catalan Community of Simulation "Cavallers    //
//             del Cel".                                                                                 //
//                                                                                                       //
//             Les següents configuracions estan disponibless:                                           //
//                                                                                                       //
//                        Codi      Configuració                                                         //
//                        0         OPFOR CSAT                                                           //
//                        1         OPFOR CSAT: Recon                                                    //
//                        2         OPFOR CSAT: Urban                                                    //
//                        3         OPFOR CSAT: Diver                                                    //
//                        4         BLUFOR NATO                                                          //
//                        5         BLUFOR NATO: Recon                                                   //
//                        6         BLUFOR NATO: Diver                                                   //
//                        7         INDEPENDENT                                                          //
//                        8         INDEPENDENT: Recon                                                   //
//                        9         INDEPENDENT: Diver                                                   //
//                        10        CIVILS                                                               //
//                        11        CIVILS: AFRO                                                         //
//                        12        CIVILS: ASIÂTICS                                                     //
//                        13        CIVILS: EUROPEUS                                                     //
//                        14        FIA OPFOR                                                            //
//                        15        FIA BLUFOR                                                           //
//                        16        FIA INDEPENDENT                                                      //
//                        17        RHS RUSSIAN AIRBONE TROOPS (VDV) (Vozdushno-desantnye voyska)        //
//                        18        RHS RUSSIAN MOTOR RIFLE TROOPS (MSV)                                 //
//                        19        RHS UNITED STATES ARMY WOODLAND                                      //
//                        20        RHS UNITED STATES ARMY DESERT                                        //
//                        21        RHS UNITED STATES MARINE CORPS WOODLAND                              //
//                        22        RHS UNITED STATES MARINE CORPS DESERT                                //
//                        30        BWA3 Bundeswehr (Flecktarn)                                          //
//                        31        BWA3 Bundeswehr (Tropentarn)                                         //
//                        32        BWA3 Bundeswehr Fernspäher (Flecktarn)                               //
//                        33        BWA3 Bundeswehr Fernspäher (Tropentarn)                              //
//=======================================================================================================//

private ["_TypNumber","_TempArray","_Unit_Pool_S","_Unit_Pool_V","_Unit_Pool_T","_Unit_Pool_A"];
_TypNumber = _this select 0;
_TempArray = [];

switch (_TypNumber) do
{
    //===================================================================================================//
    // OPFOR CSAT                                                                                        //
    //===================================================================================================//
    case 0: {
        _Unit_Pool_S = [
            "O_crew_F","O_Helipilot_F","O_soldier_SL_F",   // Tripulació, Pilot d'helicòpter i líder d'esquadra
            "O_soldier_TL_F",                              // Líder d'equip de foc (Fire Team Leader)
            "O_soldier_F",                                 // Fuseller (Rifleman)
            "O_soldier_lite_F",                            // Fuseller lleuger (Light Rifleman)
            "O_soldier_GL_F",                              // Granader (Grenadier)
            "O_soldier_AR_F",                              // Fuseller automàtic (Automatic Rifleman)
            "O_soldier_AAR_F",                             // Assistent de fuseller automàtic (Assistant Automatic Rifleman)
            "O_soldier_LAT_F",                             // Fuseller amb AT4 (Rifleman AT)
            "O_soldier_AT_F",                              // Antitanc (Antitank)
            "O_soldier_AAT_F",                             // Assitent d'antitanc (Antitank Assistant)
            "O_soldier_AA_F",                              // Antiaèri (Antiair)
            "O_soldier_AAA_F",                             // Assistent d'antiaèri (Antiair Assistant)
            "O_soldier_exp_F",                             // Explosius (Explosives)
            "O_engineer_F",                                // Enginyer (Engineer)
            "O_soldier_repair_F",                          // Mecànic (Repair Specialist)
            "O_soldier_M_F",                               // Tirador (Marksman)
            "O_spotter_F",                                 // Observador (Spotter)
            "O_sniper_F",                                  // Franctirador (Sniper)
            "O_medic_F"                                    // Metge
        ];
        _Unit_Pool_V = [
            "O_Quadbike_01_F",                             // Quad
            "O_MRAP_02_F",                                 // Ifrit
            "O_MRAP_02_gmg_F",                             // Ifrit GMG
            "O_MRAP_02_hmg_F",                             // Ifrit HMG
            "O_Truck_02_covered_F",                        // Camió Kamaz covert
            "O_Truck_02_Ammo_F",                           // Camió Kamaz amb munició
            "O_Truck_02_transport_F",                      // Camió Kamaz de transport
            "O_Truck_02_box_F",                            // Camió Kamaz amb kit de reparació
            "O_Truck_02_fuel_F",                           // Camió Kamaz cisterna
            "O_Truck_02_medical_F"                         // Camió Kamaz mèdic
        ];
        _Unit_Pool_T = [
            "O_APC_Tracked_02_cannon_F",                   // BTR-K Kamysh
            "O_APC_Tracked_02_AA_F",                       // ZSU-39 Tigris
            "O_APC_Wheeled_02_rcws_F",                     // MSE-3 Marid
            "O_MBT_02_arty_F",                             // 2S9 Sochor
            "O_MBT_02_cannon_F"                            // T-100 Varsuk
        ];
        _Unit_Pool_A = [
            "O_Heli_Attack_02_F",                          // Mi-48 Kajman
            "O_Heli_Attack_02_black_F",                    // Mi-48 Kajman Negre
            "O_Heli_Light_02_F",                           // PO-30 Orca
            "O_Heli_Light_02_unarmed_F"                    // PO-30 Orca (sense armament)
        ];
    };

    //===================================================================================================//
    // OPFOR CSAT: Recon                                                                                 //
    //===================================================================================================//
    case 1: {
        _Unit_Pool_S = [
            "O_crew_F","O_Helipilot_F","O_recon_TL_F",     // Tripulació, Pilot d'helicòpter i líder d'equip
            "O_recon_F",                                   // Explorador (Recon Scout)
            "O_recon_M_F",                                 // Tirador (Recon Marksman)
            "O_recon_LAT_F",                               // Explorador amb AT4 (Recon Scout AT)
            "O_recon_medic_F",                             // Metge (Recon Paramedic)
            "O_recon_exp_F",                               // Explosius (Recon Demo Specialist)
            "O_recon_JTAC_F"                               // JTAC (Recon JTAC)
        ];
        _Unit_Pool_V = [
            "O_Quadbike_01_F",                             // Quad
            "O_MRAP_02_F"                                  // Ifrit
        ];
        _Unit_Pool_T = [];
        _Unit_Pool_A = [
            "O_Heli_Light_02_F",                           // PO-30 Orca
            "O_Heli_Light_02_unarmed_F"                    // PO-30 Orca (sense armament)
        ];
    };

    //===================================================================================================//
    // OPFOR CSAT: Urban                                                                                 //
    //===================================================================================================//
    case 2: {
        _Unit_Pool_S = [
            "O_crew_F","O_Helipilot_F","O_soldierU_SL_F",  // Tripulació, Pilot d'helicòpter i líder d'esquadra
            "O_soldierU_TL_F",                             // Líder d'equip de foc (Fire Team Leader)
            "O_soldierU_F",                                // Fuseller (Rifleman)
            "O_soldierU_lite_F",                           // Fuseller lleuger (Light Rifleman)
            "O_soldierU_GL_F",                             // Granader (Grenadier)
            "O_soldierU_AR_F",                             // Fuseller automàtic (Automatic Rifleman)
            "O_soldierU_AAR_F",                            // Assistent de fuseller automàtic (Assistant Automatic Rifleman)
            "O_soldierU_LAT_F",                            // Fuseller amb AT4 (Rifleman AT)
            "O_soldierU_AT_F",                             // Antitanc (Antitank)
            "O_soldierU_AAT_F",                            // Assitent d'antitanc (Antitank Assistant)
            "O_soldierU_AA_F",                             // Antiaèri (Antiair)
            "O_soldierU_AAA_F",                            // Assistent d'antiaèri (Antiair Assistant)
            "O_soldierU_exp_F",                            // Explosius (Explosives)
            "O_engineerU_F",                               // Enginyer (Engineer)
            "O_soldierU_repair_F",                         // Mecànic (Repair Specialist)
            "O_soldierU_M_F",                              // Tirador (Marksman)
            "O_medicU_F"                                   // Metge
        ];
        _Unit_Pool_V = [
            "O_MRAP_02_F",                                 // Ifrit
            "O_MRAP_02_hmg_F"                              // Ifrit HMG
        ];
        _Unit_Pool_T = [
            "O_APC_Tracked_02_cannon_F",                   // BTR-K Kamysh
            "O_APC_Wheeled_02_rcws_F"                      // MSE-3 Marid
        ];
        _Unit_Pool_A = ["O_Heli_Light_02_F"];              // PO-30 Orca
    };

    //===================================================================================================//
    // OPFOR CSAT: Diver                                                                                 //
    //===================================================================================================//
    case 3: {
        _Unit_Pool_S = [
            "O_diver_F","O_Helipilot_F","O_diver_TL_F",    // Tripulació, Pilot d'helicòpter i líder d'equip
            "O_diver_F",                                   // Bussejador (Diver)
            "O_diver_F",                                   // Bussejador (Diver)
            "O_diver_exp_F"                                // Bussejador especialista en explosius (Diver Explosive Specialist)
        ];
        _Unit_Pool_V = [
            "O_SDV_01_F",                                  // SDV
            "O_Boat_Transport_01_F",                       // Bot inflable d'assalt (Assault Boat)
            "O_Boat_Armed_01_hmg_F"                        // Bot HMG (Speedboat HMG)
        ];
        _Unit_Pool_T = [
            "O_SDV_01_F",                                  // SDV
            "O_Boat_Transport_01_F",                       // Bot inflable d'assalt (Assault Boat)
            "O_Boat_Armed_01_hmg_F"                        // Bot HMG (Speedboat HMG)
        ];
        _Unit_Pool_A = [];
    };

    //===================================================================================================//
    // BLUFOR NATO                                                                                       //
    //===================================================================================================//
    case 4: {
        _Unit_Pool_S = [
            "B_crew_F","B_Helipilot_F","B_soldier_SL_F",   // Tripulació, Pilot d'helicòpter i líder d'esquadra
            "B_soldier_TL_F",                              // Líder d'equip de foc (Fire Team Leader)
            "B_soldier_F",                                 // Fuseller (Rifleman)
            "B_soldier_lite_F",                            // Fuseller lleuger (Light Rifleman)
            "B_soldier_GL_F",                              // Granader (Grenadier)
            "B_soldier_AR_F",                              // Fuseller automàtic (Automatic Rifleman)
            "B_soldier_AAR_F",                             // Assistent de fuseller automàtic (Assistant Automatic Rifleman)
            "B_soldier_LAT_F",                             // Fuseller amb AT4 (Rifleman AT)
            "B_soldier_AT_F",                              // Antitanc (Antitank)
            "B_soldier_AAT_F",                             // Assitent d'antitanc (Antitank Assistant)
            "B_soldier_AA_F",                              // Antiaèri (Antiair)
            "B_soldier_AAA_F",                             // Assistent d'antiaèri (Antiair Assistant)
            "B_soldier_exp_F",                             // Explosius (Explosives)
            "B_engineer_F",                                // Enginyer (Engineer)
            "B_soldier_repair_F",                          // Mecànic (Repair Specialist)
            "B_soldier_M_F",                               // Tirador (Marksman)
            "B_spotter_F",                                 // Observador (Spotter)
            "B_sniper_F",                                  // Franctirador (Sniper)
            "B_medic_F"                                    // Metge
        ];
        _Unit_Pool_V = [
            "B_Quadbike_01_F",                             // Quad
            "B_MRAP_01_F",                                 // Hunter
            "B_MRAP_01_gmg_F",                             // Hunter GMG
            "B_MRAP_01_hmg_F",                             // Hunter HMG
            "B_Truck_01_covered_F",                        // HEMTT covert
            "B_Truck_01_Ammo_F",                           // HEMTT amb munició
            "B_Truck_01_transport_F",                      // HEMTT transport
            "B_Truck_01_repair_F",                         // HEMTT amb kit de reparació
            "B_Truck_01_fuel_F",                           // HEMTT cisterna
            "B_Truck_01_medical_F"                         // HEMTT mèdic
        ];
        _Unit_Pool_T = [
            "B_APC_Wheeled_01_cannon_F",                   // AMV-7 Marshall
            "B_APC_Tracked_01_AA_F",                       // IFV-6a Cheetah
            "B_APC_Tracked_01_rcws_F",                     // IFV-6c Panther
            "B_MBT_01_arty_F",                             // M4 Scorche
            "B_MBT_01_cannon_F",                           // M2A1 Slammer
            "B_MBT_01_mlrs_F",                             // M5 Sandstorm MLRS
            "B_MBT_01_TUSK_F"                              // M2A4 Slammer UP
        ];
        _Unit_Pool_A = [
            "B_Heli_Attack_01_F",                          // AH-99 Blackfoot
            "B_Heli_Transport_01_F",                       // UH-80 Ghost Hawk
            "B_Heli_Transport_01_camo_F",                  // UH-80 Ghost Hawk (Camo)
            "B_Heli_Light_01_F",                           // AH-9 Pawnee
            "B_Heli_Light_01_unarmed_F"                    // MH-9 Hummingbird
        ];
    };

    //===================================================================================================//
    // BLUFOR NATO: Recon                                                                                //
    //===================================================================================================//
    case 5: {
        _Unit_Pool_S = [
            "B_crew_F","B_Helipilot_F","B_recon_TL_F",     // Tripulació, Pilot d'helicòpter i líder d'equip
            "B_recon_F",                                   // Explorador (Recon Scout)
            "B_recon_M_F",                                 // Tirador (Recon Marksman)
            "B_recon_LAT_F",                               // Explorador amb AT4 (Recon Scout AT)
            "B_recon_medic_F",                             // Metge (Recon Paramedic)
            "B_recon_exp_F",                               // Explosius (Recon Demo Specialist)
            "B_recon_JTAC_F"                               // JTAC (Recon JTAC)
        ];
        _Unit_Pool_V = [
            "B_Quadbike_01_F",                             // Quad
            "B_MRAP_01_F"                                  // Hunter
        ];
        _Unit_Pool_T = [];
        _Unit_Pool_A = [
            "B_Heli_Light_01_F",                           // AH-9 Pawnee
            "B_Heli_Light_01_unarmed_F"                    // MH-9 Hummingbird
        ];
    };

    //===================================================================================================//
    // BLUFOR NATO: Diver                                                                                //
    //===================================================================================================//
    case 6: {
        _Unit_Pool_S = [
            "B_diver_F","B_Helipilot_F","B_diver_TL_F",    // Tripulació, Pilot d'helicòpter i líder d'equip
            "B_diver_F",                                   // Bussejador (Diver)
            "B_diver_F",                                   // Bussejador (Diver)
            "B_diver_exp_F"                                // Bussejador especialista en explosius (Diver Explosive Specialist)
        ];
        _Unit_Pool_V = [
            "B_SDV_01_F",                                  // SDV
            "B_Boat_Transport_01_F",                       // Bot inflable d'assalt (Assault Boat)
            "B_Boat_Armed_01_minigun_F"                    // Bot amb metralladora (Speedboat Minigum)
        ];
        _Unit_Pool_T = [
            "B_SDV_01_F",                                  // SDV
            "B_Boat_Transport_01_F",                       // Bot inflable d'assalt (Assault Boat)
            "B_Boat_Armed_01_minigun_F"                    // Bot amb metralladora (Speedboat Minigum)
        ];
        _Unit_Pool_A = [];
    };

    //===================================================================================================//
    // INDEPENDENT                                                                                       //
    //===================================================================================================//
    case 7: {
        _Unit_Pool_S = [
            "I_crew_F","I_Helipilot_F","I_soldier_SL_F",   // Tripulació, Pilot d'helicòpter i líder d'esquadra
            "I_soldier_TL_F",                              // Líder d'equip de foc (Fire Team Leader)
            "I_soldier_F",                                 // Fuseller (Rifleman)
            "I_soldier_lite_F",                            // Fuseller lleuger (Light Rifleman)
            "I_soldier_GL_F",                              // Granader (Grenadier)
            "I_soldier_AR_F",                              // Fuseller automàtic (Automatic Rifleman)
            "I_soldier_AAR_F",                             // Assistent de fuseller automàtic (Assistant Automatic Rifleman)
            "I_soldier_LAT_F",                             // Fuseller amb AT4 (Rifleman AT)
            "I_soldier_AT_F",                              // Antitanc (Antitank)
            "I_soldier_AAT_F",                             // Assitent d'antitanc (Antitank Assistant)
            "I_soldier_AA_F",                              // Antiaèri (Antiair)
            "I_soldier_AAA_F",                             // Assistent d'antiaèri (Antiair Assistant)
            "I_soldier_exp_F",                             // Explosius (Explosives)
            "I_engineer_F",                                // Enginyer (Engineer)
            "I_soldier_repair_F",                          // Mecànic (Repair Specialist)
            "I_soldier_M_F",                               // Tirador (Marksman)
            "I_spotter_F",                                 // Observador (Spotter)
            "I_sniper_F",                                  // Franctirador (Sniper)
            "I_medic_F"                                    // Metge
        ];
        _Unit_Pool_V = [
            "I_Quadbike_01_F",                             // Quad
            "I_MRAP_03_F",                                 // Strider
            "I_MRAP_03_gmg_F",                             // Strider GMG
            "I_MRAP_03_hmg_F",                             // Strider HMG
            "I_Truck_02_covered_F",                        // Zamak covert
            "I_Truck_02_Ammo_F",                           // Zamak amb munició
            "I_Truck_02_transport_F",                      // Zamak transport
            "I_Truck_02_box_F",                            // Zamak amb kit de reparació
            "I_Truck_02_fuel_F",                           // Zamak cisterna
            "I_Truck_02_medical_F"                         // Zamak mèdic
        ];
        _Unit_Pool_T = [
            "I_APC_Wheeled_03_cannon_F",                   // AFV-4 Gorgon
            "I_APC_Tracked_03_cannon_F",                   // FV-720 Mora
            "I_MBT_03_cannon_F"                            // MBT-52 Kuma
        ];
        _Unit_Pool_A = [
            "I_Heli_Light_03_F",                           // WY-55 Helicat
            "I_Heli_Light_03_unarmed_F"                    // WY-55 Helicat (sense armament)
        ];
    };

    //===================================================================================================//
    // INDEPENDENT: Recon                                                                                //
    //===================================================================================================//
    case 8: {
        _Unit_Pool_S = [
            "I_crew_F","I_Helipilot_F","I_recon_TL_F",     // Tripulació, Pilot d'helicòpter i líder d'equip
            "I_recon_F",                                   // Explorador (Recon Scout)
            "I_recon_M_F",                                 // Tirador (Recon Marksman)
            "I_soldier_LAT_F",                             // Explorador amb AT4 (Recon Scout AT)
            "I_recon_medic_F",                             // Metge (Recon Paramedic)
            "I_recon_exp_F",                               // Explosius (Recon Demo Specialist)
            "I_recon_JTAC_F"                               // JTAC (Recon JTAC)
        ];
        _Unit_Pool_V = [
            "I_Quadbike_01_F",                             // Quad
            "I_MRAP_03_F"                                  // Hunter
        ];
        _Unit_Pool_T = [];
        _Unit_Pool_A = [
            "I_Heli_Light_03_F",                           // WY-55 Helicat
            "I_Heli_Light_03_unarmed_F"                    // WY-55 Helicat (sense armament)
        ];
    };

    //===================================================================================================//
    // INDEPENDENT: Diver                                                                                //
    //===================================================================================================//
    case 9: {
        _Unit_Pool_S = [
            "I_diver_F","I_Helipilot_F","I_diver_TL_F",    // Tripulació, Pilot d'helicòpter i líder d'equip
            "I_diver_F",                                   // Bussejador (Diver)
            "I_diver_F",                                   // Bussejador (Diver)
            "I_diver_exp_F"                                // Bussejador especialista en explosius (Diver Explosive Specialist)
        ];
        _Unit_Pool_V = [
            "I_SDV_01_F",                                  // SDV
            "I_Boat_Transport_01_F",                       // Bot inflable d'assalt (Assault Boat)
            "I_Boat_Armed_01_minigun_F"                    // Bot amb metralladora (Speedboat Minigum)
        ];
        _Unit_Pool_T = [
            "I_SDV_01_F",                                  // SDV
            "I_Boat_Transport_01_F",                       // Bot inflable d'assalt (Assault Boat)
            "I_Boat_Armed_01_minigun_F"                    // Bot amb metralladora (Speedboat Minigum)
        ];
        _Unit_Pool_A = [];
    };

    //===================================================================================================//
    // CIVILS                                                                                            //
    //===================================================================================================//
    case 10: {
        _Unit_Pool_S = [
            "C_man_w_worker_F", "C_man_pilot_F", "C_man_1",// Tripulació, pilot d'helicopter, cap dels civils
            "C_man_1_1_F",                                 // Civil
            "C_man_1_2_F",                                 // Civil
            "C_man_1_3_F",                                 // Civil
            "C_man_polo_1_F",                              // Civil amb polo
            "C_man_polo_2_F",                              // Civil amb polo
            "C_man_polo_3_F",                              // Civil amb polo
            "C_man_polo_4_F",                              // Civil amb polo
            "C_man_polo_5_F",                              // Civil amb polo
            "C_man_polo_6_F",                              // Civil amb polo
            "C_man_shorts_1_F",                            // Civil amb shorts
            "C_man_shorts_2_F",                            // Civil amb shorts
            "C_man_shorts_3_F",                            // Civil amb shorts
            "C_man_p_shorts_1_F",                          // Fugitiu amb shorts
            "C_man_p_beggar_F",                            // Pidolaire
            "C_man_p_fugitive_F",                          // Fugitiu
            "C_man_hunter_1_F"                             // Caçador
        ];
        _Unit_Pool_V = [
            "C_Van_01_box_F",                              // Furgoneta amb caixa
            "C_Van_01_transport_F",                        // Furgoneta de transport
            "C_Van_01_fuel_F",                             // Furgoneta amb combustible
            "C_Hatchback_01_F",                            // VW
            "C_Hatchback_01_sport_F",                      // VW esportiu
            "C_Quadbike_01_F",                             // Quad
            "C_Offroad_01_F",                              // 4x4
            "C_SUV_01_F"                                   // VW
        ];
        _Unit_Pool_T = [
            "C_Van_01_box_F",                              // Furgoneta amb caixa
            "C_Van_01_transport_F",                        // Furgoneta de transport
            "C_Van_01_fuel_F",                             // Furgoneta amb combustible
            "C_Hatchback_01_F",                            // VW
            "C_Hatchback_01_sport_F",                      // VW esportiu
            "C_Quadbike_01_F",                             // Quad
            "C_Offroad_01_F",                              // 4x4
            "C_SUV_01_F"                                   // VW
        ];
        _Unit_Pool_A = [];
    };

    //===================================================================================================//
    // CIVILS                                                                                            //
    //===================================================================================================//
    case 10: {
        _Unit_Pool_S = [
            "C_man_w_worker_F", "C_man_pilot_F", "C_man_1",// Tripulació, pilot d'helicopter, cap dels civils
            "C_man_1_1_F",                                 // Civil
            "C_man_1_2_F",                                 // Civil
            "C_man_1_3_F",                                 // Civil
            "C_man_polo_1_F",                              // Civil amb polo
            "C_man_polo_1_F_afro",                         // Civil amb polo (Afro)
            "C_man_polo_1_F_asia",                         // Civil amb polo (Asiàtic)
            "C_man_polo_1_F_euro",                         // Civil amb polo (Europeu)
            "C_man_polo_2_F",                              // Civil amb polo
            "C_man_polo_2_F_afro",                         // Civil amb polo (Afro)
            "C_man_polo_2_F_asia",                         // Civil amb polo (Asiàtic)
            "C_man_polo_2_F_euro",                         // Civil amb polo (Europeu)
            "C_man_polo_3_F",                              // Civil amb polo
            "C_man_polo_3_F_afro",                         // Civil amb polo (Afro)
            "C_man_polo_3_F_asia",                         // Civil amb polo (Asiàtic)
            "C_man_polo_3_F_euro",                         // Civil amb polo (Europeu)
            "C_man_polo_4_F",                              // Civil amb polo
            "C_man_polo_4_F_afro",                         // Civil amb polo (Afro)
            "C_man_polo_4_F_asia",                         // Civil amb polo (Asiàtic)
            "C_man_polo_4_F_euro",                         // Civil amb polo (Europeu)
            "C_man_polo_5_F",                              // Civil amb polo
            "C_man_polo_5_F_afro",                         // Civil amb polo (Afro)
            "C_man_polo_5_F_asia",                         // Civil amb polo (Asiàtic)
            "C_man_polo_5_F_euro",                         // Civil amb polo (Europeu)
            "C_man_polo_6_F",                              // Civil amb polo
            "C_man_polo_6_F_afro",                         // Civil amb polo (Afro)
            "C_man_polo_6_F_asia",                         // Civil amb polo (Asiàtic)
            "C_man_polo_6_F_euro",                         // Civil amb polo (Europeu)
            "C_man_shorts_1_F",                            // Civil amb shorts
            "C_man_shorts_1_F_afro",                       // Civil amb shorts (Afro)
            "C_man_shorts_1_F_asia",                       // Civil amb shorts (Asiàtic)
            "C_man_shorts_1_F_euro",                       // Civil amb shorts (Europeu)
            "C_man_shorts_2_F",                            // Civil amb shorts
            "C_man_shorts_2_F_afro",                       // Civil amb shorts (Afro)
            "C_man_shorts_2_F_asia",                       // Civil amb shorts (Asiàtic)
            "C_man_shorts_2_F_euro",                       // Civil amb shorts (Europeu)
            "C_man_shorts_3_F",                            // Civil amb shorts
            "C_man_shorts_3_F_afro",                       // Civil amb shorts (Afro)
            "C_man_shorts_3_F_asia",                       // Civil amb shorts (Asiàtic)
            "C_man_shorts_3_F_euro",                       // Civil amb shorts (Europeu)
            "C_man_p_shorts_1_F",                          // Fugitiu amb shorts
            "C_man_p_shorts_1_F_afro",                     // Fugitiu amb shorts (Afro)
            "C_man_p_shorts_1_F_asia",                     // Fugitiu amb shorts (Asiàtic)
            "C_man_p_shorts_1_F_euro",                     // Fugitiu amb shorts (Europeu)
            "C_man_p_beggar_F",                            // Pidolaire
            "C_man_p_beggar_F_afro",                       // Pidolaire (Afro)
            "C_man_p_beggar_F_asia",                       // Pidolaire (Asiàtic)
            "C_man_p_beggar_F_euro",                       // Pidolaire (Europeu)
            "C_man_p_fugitive_F",                          // Fugitiu
            "C_man_p_fugitive_F_afro",                     // Fugitiu (Afro)
            "C_man_p_fugitive_F_asia",                     // Fugitiu (Asiàtic)
            "C_man_p_fugitive_F_euro",                     // Fugitiu (Europeu)
            "C_man_hunter_1_F"                             // Caçador
        ];
        _Unit_Pool_V = [
            "C_Van_01_box_F",                              // Furgoneta amb caixa
            "C_Van_01_transport_F",                        // Furgoneta de transport
            "C_Van_01_fuel_F",                             // Furgoneta amb combustible
            "C_Hatchback_01_F",                            // VW
            "C_Hatchback_01_sport_F",                      // VW esportiu
            "C_Quadbike_01_F",                             // Quad
            "C_Offroad_01_F",                              // 4x4
            "C_SUV_01_F"                                   // VW
        ];
        _Unit_Pool_T = [
            "C_Van_01_box_F",                              // Furgoneta amb caixa
            "C_Van_01_transport_F",                        // Furgoneta de transport
            "C_Van_01_fuel_F",                             // Furgoneta amb combustible
            "C_Hatchback_01_F",                            // VW
            "C_Hatchback_01_sport_F",                      // VW esportiu
            "C_Quadbike_01_F",                             // Quad
            "C_Offroad_01_F",                              // 4x4
            "C_SUV_01_F"                                   // VW
        ];
        _Unit_Pool_A = [
            "C_Heli_Light_01_civil_F",                     // M900
            "C_Heli_Light_01_blue_F"                       // M900 (blau)
        ];
    };

    //===================================================================================================//
    // CIVILS: AFRO                                                                                            //
    //===================================================================================================//
    case 11: {
        _Unit_Pool_S = [
            "C_man_w_worker_F", "C_man_pilot_F", "C_man_1",// Tripulació, pilot d'helicopter, cap dels civils
            "C_man_polo_1_F_afro",                         // Civil amb polo
            "C_man_polo_2_F_afro",                         // Civil amb polo
            "C_man_polo_3_F_afro",                         // Civil amb polo
            "C_man_polo_4_F_afro",                         // Civil amb polo
            "C_man_polo_5_F_afro",                         // Civil amb polo
            "C_man_polo_6_F_afro",                         // Civil amb polo
            "C_man_shorts_1_F_afro",                       // Civil amb shorts
            "C_man_shorts_2_F_afro",                       // Civil amb shorts
            "C_man_shorts_3_F_afro",                       // Civil amb shorts
            "C_man_p_shorts_1_F_afro",                     // Fugitiu amb shorts
            "C_man_p_beggar_F_afro",                       // Pidolaire
            "C_man_p_fugitive_F_afro"                      // Fugitiu
        ];
        _Unit_Pool_V = [
            "C_Van_01_box_F",                              // Furgoneta amb caixa
            "C_Van_01_transport_F",                        // Furgoneta de transport
            "C_Van_01_fuel_F",                             // Furgoneta amb combustible
            "C_Hatchback_01_F",                            // VW
            "C_Hatchback_01_sport_F",                      // VW esportiu
            "C_Quadbike_01_F",                             // Quad
            "C_Offroad_01_F",                              // 4x4
            "C_SUV_01_F"                                   // VW
        ];
        _Unit_Pool_T = [
            "C_Van_01_box_F",                              // Furgoneta amb caixa
            "C_Van_01_transport_F",                        // Furgoneta de transport
            "C_Van_01_fuel_F",                             // Furgoneta amb combustible
            "C_Hatchback_01_F",                            // VW
            "C_Hatchback_01_sport_F",                      // VW esportiu
            "C_Quadbike_01_F",                             // Quad
            "C_Offroad_01_F",                              // 4x4
            "C_SUV_01_F"                                   // VW
        ];
        _Unit_Pool_A = [
            "C_Heli_Light_01_civil_F",                     // M900
            "C_Heli_Light_01_blue_F"                       // M900 (blau)
        ];
    };

    //===================================================================================================//
    // CIVILS: ASIÀTICS                                                                                  //
    //===================================================================================================//
    case 12: {
        _Unit_Pool_S = [
            "C_man_w_worker_F", "C_man_pilot_F", "C_man_1",// Tripulació, pilot d'helicopter, cap dels civils
            "C_man_polo_1_F_asia",                         // Civil amb polo
            "C_man_polo_2_F_asia",                         // Civil amb polo
            "C_man_polo_3_F_asia",                         // Civil amb polo
            "C_man_polo_4_F_asia",                         // Civil amb polo
            "C_man_polo_5_F_asia",                         // Civil amb polo
            "C_man_polo_6_F_asia",                         // Civil amb polo
            "C_man_shorts_1_F_asia",                       // Civil amb shorts
            "C_man_shorts_2_F_asia",                       // Civil amb shorts
            "C_man_shorts_3_F_asia",                       // Civil amb shorts
            "C_man_p_shorts_1_F_asia",                     // Fugitiu amb shorts
            "C_man_p_beggar_F_asia",                       // Pidolaire
            "C_man_p_fugitive_F_asia"                      // Fugitiu
        ];
        _Unit_Pool_V = [
            "C_Van_01_box_F",                              // Furgoneta amb caixa
            "C_Van_01_transport_F",                        // Furgoneta de transport
            "C_Van_01_fuel_F",                             // Furgoneta amb combustible
            "C_Hatchback_01_F",                            // VW
            "C_Hatchback_01_sport_F",                      // VW esportiu
            "C_Quadbike_01_F",                             // Quad
            "C_Offroad_01_F",                              // 4x4
            "C_SUV_01_F"                                   // VW
        ];
        _Unit_Pool_T = [
            "C_Van_01_box_F",                              // Furgoneta amb caixa
            "C_Van_01_transport_F",                        // Furgoneta de transport
            "C_Van_01_fuel_F",                             // Furgoneta amb combustible
            "C_Hatchback_01_F",                            // VW
            "C_Hatchback_01_sport_F",                      // VW esportiu
            "C_Quadbike_01_F",                             // Quad
            "C_Offroad_01_F",                              // 4x4
            "C_SUV_01_F"                                   // VW
            ];
        _Unit_Pool_A = [
            "C_Heli_Light_01_civil_F",                     // M900
            "C_Heli_Light_01_blue_F"                       // M900 (blau)
        ];
    };

    //===================================================================================================//
    // CIVILS: EUROPEU                                                                                   //
    //===================================================================================================//
    case 13: {
        _Unit_Pool_S = [
            "C_man_w_worker_F", "C_man_pilot_F", "C_man_1",// Tripulació, pilot d'helicopter, cap dels civils
            "C_man_1_1_F",                                 // Civil
            "C_man_1_2_F",                                 // Civil
            "C_man_1_3_F",                                 // Civil
            "C_man_polo_1_F_euro",                         // Civil amb polo
            "C_man_polo_2_F_euro",                         // Civil amb polo
            "C_man_polo_3_F_euro",                         // Civil amb polo
            "C_man_polo_4_F_euro",                         // Civil amb polo
            "C_man_polo_5_F_euro",                         // Civil amb polo
            "C_man_polo_6_F_euro",                         // Civil amb polo
            "C_man_shorts_1_F_euro",                       // Civil amb shorts
            "C_man_shorts_2_F_euro",                       // Civil amb shorts
            "C_man_shorts_3_F_euro",                       // Civil amb shorts
            "C_man_p_shorts_1_F_euro",                     // Fugitiu amb shorts
            "C_man_p_beggar_F_euro",                       // Pidolaire
            "C_man_p_fugitive_F_euro",                     // Fugitiu
            "C_man_hunter_1_F"                             // Caçador
        ];
        _Unit_Pool_V = [
            "C_Van_01_box_F",                              // Furgoneta amb caixa
            "C_Van_01_transport_F",                        // Furgoneta de transport
            "C_Van_01_fuel_F",                             // Furgoneta amb combustible
            "C_Hatchback_01_F",                            // VW
            "C_Hatchback_01_sport_F",                      // VW esportiu
            "C_Quadbike_01_F",                             // Quad
            "C_Offroad_01_F",                              // 4x4
            "C_SUV_01_F"                                   // VW
        ];
        _Unit_Pool_T = [
            "C_Van_01_box_F",                              // Furgoneta amb caixa
            "C_Van_01_transport_F",                        // Furgoneta de transport
            "C_Van_01_fuel_F",                             // Furgoneta amb combustible
            "C_Hatchback_01_F",                            // VW
            "C_Hatchback_01_sport_F",                      // VW esportiu
            "C_Quadbike_01_F",                             // Quad
            "C_Offroad_01_F",                              // 4x4
            "C_SUV_01_F"                                   // VW
        ];
        _Unit_Pool_A = [
            "C_Heli_Light_01_civil_F",                     // M900
            "C_Heli_Light_01_blue_F"                       // M900 (blau)
        ];
    };

    //===================================================================================================//
    // FIA OPFOR                                                                                         //
    //===================================================================================================//
    case 14: {
        _Unit_Pool_S = [
            "O_G_soldier_F","O_G_soldier_F","O_G_soldier_SL_F",  // Tripulació, Pilot d'helicòpter i líder d'esquadra
            "O_G_soldier_TL_F",                                  // Líder d'equip de foc (Fire Team Leader)
            "O_G_soldier_F",                                     // Fuseller (Rifleman)
            "O_G_soldier_lite_F",                                // Fuseller lleuger (Light Rifleman)
            "O_G_soldier_GL_F",                                  // Granader (Grenadier)
            "O_G_soldier_AR_F",                                  // Fuseller automàtic (Automatic Rifleman)
            "O_G_soldier_A_F",                                   // Fuseller, munició (Ammo Bearer)
            "O_G_soldier_LAT_F",                                 // Fuseller amb AT4 (Rifleman AT)
            "O_G_soldier_exp_F",                                 // Explosius (Explosives)
            "O_G_engineer_F",                                    // Enginyer (Engineer)
            "O_G_soldier_M_F",                                   // Tirador (Marksman)
            "O_G_medic_F"                                        // Metge
        ];
        _Unit_Pool_V = [
            "O_G_Quadbike_01_F",                                 // Quad
            "O_G_Offroad_01_F",                                  // 4x4
            "O_G_Offroad_01_armed_F",                            // 4x4 HMG
            "B_G_Offroad_01_repair_F"                            // 4x4 reparació
        ];
        _Unit_Pool_T = [];
        _Unit_Pool_A = [];
    };

    //===================================================================================================//
    // FIA BLUFOR                                                                                        //
    //===================================================================================================//
    case 15: {
        _Unit_Pool_S = [
            "B_G_soldier_F","B_G_soldier_F","B_G_soldier_SL_F",  // Tripulació, Pilot d'helicòpter i líder d'esquadra
            "B_G_soldier_TL_F",                                  // Líder d'equip de foc (Fire Team Leader)
            "B_G_soldier_F",                                     // Fuseller (Rifleman)
            "B_G_soldier_lite_F",                                // Fuseller lleuger (Light Rifleman)
            "B_G_soldier_GL_F",                                  // Granader (Grenadier)
            "B_G_soldier_AR_F",                                  // Fuseller automàtic (Automatic Rifleman)
            "B_G_soldier_A_F",                                   // Fuseller, munició (Ammo Bearer)
            "B_G_soldier_LAT_F",                                 // Fuseller amb AT4 (Rifleman AT)
            "B_G_soldier_exp_F",                                 // Explosius (Explosives)
            "B_G_engineer_F",                                    // Enginyer (Engineer)
            "B_G_soldier_M_F",                                   // Tirador (Marksman)
            "B_G_medic_F"                                        // Metge
        ];
        _Unit_Pool_V = [
            "B_G_Quadbike_01_F",                                 // Quad
            "B_G_Offroad_01_F",                                  // 4x4
            "B_G_Offroad_01_armed_F",                            // 4x4 HMG
            "B_G_Offroad_01_repair_F"                            // 4x4 reparació
        ];
        _Unit_Pool_T = [];
        _Unit_Pool_A = [];
    };

    //===================================================================================================//
    // FIA INDEPENDENT                                                                                   //
    //===================================================================================================//
    case 16: {
        _Unit_Pool_S = [
            "I_G_soldier_F","I_G_soldier_F","I_G_soldier_SL_F",  // Tripulació, Pilot d'helicòpter i líder d'esquadra
            "I_G_soldier_TL_F",                                  // Líder d'equip de foc (Fire Team Leader)
            "I_G_soldier_F",                                     // Fuseller (Rifleman)
            "I_G_soldier_lite_F",                                // Fuseller lleuger (Light Rifleman)
            "I_G_soldier_GL_F",                                  // Granader (Grenadier)
            "I_G_soldier_AR_F",                                  // Fuseller automàtic (Automatic Rifleman)
            "I_G_soldier_A_F",                                   // Fuseller, munició (Ammo Bearer)
            "I_G_soldier_LAT_F",                                 // Fuseller amb AT4 (Rifleman AT)
            "I_G_soldier_exp_F",                                 // Explosius (Explosives)
            "I_G_engineer_F",                                    // Enginyer (Engineer)
            "I_G_soldier_M_F",                                   // Tirador (Marksman)
            "I_G_medic_F"                                        // Metge
        ];
        _Unit_Pool_V = [
            "I_G_Quadbike_01_F",                                 // Quad
            "I_G_Offroad_01_F",                                  // 4x4
            "I_G_Offroad_01_armed_F",                            // 4x4 HMG
            "I_G_Offroad_01_repair_F"                            // 4x4 reparació
        ];
        _Unit_Pool_T = [];
        _Unit_Pool_A = [];
    };

    //===================================================================================================//
    // RHS RUSSIAN AIRBONE TROOPS (VDV) (Vozdushno-desantnye voyska)                                     //
    //===================================================================================================//
    case 17: {
        _Unit_Pool_S = [
            "rhs_vdv_combatcrew","rhs_pilot","rhs_vdv_sergeant",   // Tripulació, Pilot d'helicòpter i líder d'esquadra
        "rhs_vdv_junior_sergeant",                     // Líder d'equip de foc (Fire Team Leader)
            "rhs_vdv_rifleman",                            // Fuseller (Rifleman)
            "rhs_vdv_grenadier",                           // Granader (Grenadier)
            "rhs_vdv_grenadier_rpg",                       // Granader RPG (Grenadier RPG)
            "rhs_vdv_strelok_rpg_assist",
            "rhs_vdv_machinegunner",                       // Metrallador (Machinegunner)
            "rhs_vdv_machinegunner_assistant",             // Assistent de metrallador (Assistant Machinegunner)
            "rhs_vdv_LAT",                                 // Fuseller amb AT4 (Rifleman AT)
            "rhs_vdv_at",                                  // Antitanc (Antitank)
            "rhs_vdv_aa",                                  // Antiaèri (Antiair)
            "rhs_vdv_rshg2",                               // Explosius (Explosives)
            "rhs_vdv_engineer",                            // Enginyer (Engineer)
            "rhs_vdv_efreitor",
            "rhs_vdv_marksman",                            // Tirador (Marksman)
            "rhs_vdv_medic"                                // Metge
        ];
        _Unit_Pool_V = [
            "rhs_tigr_ffv_vdv",
            "rhs_uaz_vdv",
            "RHS_Ural_Open_VDV_01"
        ];
        _Unit_Pool_T = [
            "rhs_sprut_vdv",                               // Tanc
            "rhs_bmd1p",
            "rhs_bmd2m",
            "rhs_bmd4m_vdv",
            "rhs_bmd4ma_vdv",
            "rhs_bmp1p_vdv",
            "rhs_bmp2k_vdv",
            "rhs_btr80_vdv",
            "rhs_btr80a_vdv"
        ];
        _Unit_Pool_A = [
            "RHS_Mi8MTV3_vdv",
            "RHS_Mi8MTV3_vdv",
            "RHS_Mi8MTV3_UPK23_vdv",
            "RHS_Mi24V_UPK23_vdv"
        ];
    };

    //===================================================================================================//
    // RHS RUSSIAN MOTOR RIFLE TROOPS (MSV)                                                              //
    //===================================================================================================//
    case 18: {
        _Unit_Pool_S = [
            "rhs_msv_combatcrew","rhs_pilot","rhs_msv_sergeant",   // Tripulació, Pilot d'helicòpter i líder d'esquadra
            "rhs_msv_junior_sergeant",                     // Líder d'equip de foc (Fire Team Leader)
            "rhs_msv_rifleman",                            // Fuseller (Rifleman)
            "rhs_msv_grenadier",                           // Granader (Grenadier)
            "rhs_msv_grenadier_rpg",                       // Granader RPG (Grenadier RPG)
            "rhs_msv_strelok_rpg_assist",
            "rhs_msv_machinegunner",                       // Metrallador (Machinegunner)
            "rhs_msv_machinegunner_assistant",             // Assistent de metrallador (Assistant Machinegunner)
            "rhs_msv_LAT",                                 // Fuseller amb AT4 (Rifleman AT)
            "rhs_msv_at",                                  // Antitanc (Antitank)
            "rhs_msv_aa",                                  // Antiaèri (Antiair)
            "rhs_msv_rshg2",                               // Explosius (Explosives)
            "rhs_msv_engineer",                            // Enginyer (Engineer)
            "rhs_msv_efreitor",
            "rhs_msv_marksman",                            // Tirador (Marksman)
            "rhs_msv_medic"                                // Metge
        ];
        _Unit_Pool_V = [
            "rhs_tigr_msv",
            "RHS_UAZ_MSV_01",
            "rhs_uaz_open_MSV_01",
            "RHS_BM21_MSV_01",
            "rhs_gaz66_msv",
            "rhs_gaz66o_msv",
            "rhs_gaz66_r142_msv",
            "rhs_gaz66_ap2_msv",
            "RHS_Ural_MSV_01",
            "rhs_gaz66_repair_msv",
            "RHS_Ural_Fuel_MSV_01"
        ];
        _Unit_Pool_T = [
            "rhs_btr60_msv",
            "rhs_btr70_msv",
            "rhs_btr80_msv",
            "rhs_btr80a_msv",
            "rhs_bmp1_msv",
            "rhs_bmp1d_msv",
            "rhs_bmp1k_msv",
            "rhs_bmp1p_msv",
            "rhs_brm1k_msv",
            "rhs_bmp2_msv",
            "rhs_bmp2e_msv",
            "rhs_bmp2d_msv",
            "rhs_bmp2k_msv",
            "rhs_prp3_msv"
        ];
        _Unit_Pool_A = [];
    };

    //===================================================================================================//
    // RHS UNITED STATES ARMY WOODLAND                                                                   //
    //===================================================================================================//
    case 19: {
        _Unit_Pool_S = [
            "rhsusf_army_ocp_combatcrewman","rhsusf_army_ocp_helipilot","rhsusf_army_ocp_squadleader",   // Tripulació, Pilot d'helicòpter i líder d'esquadra
            "rhsusf_army_ocp_teamleader",                  // Líder d'equip de foc (Fire Team Leader)
            "rhsusf_army_ocp_rifleman",                    // Fuseller (Rifleman)
            "rhsusf_army_ocp_riflemanl",                   // Fuseller lleuger (Light Rifleman)
            "rhsusf_army_ocp_grenadier",                   // Granader (Grenadier)
            "rhsusf_army_ocp_autorifleman",                // Fuseller automàtic (Automatic Rifleman)
            "rhsusf_army_ocp_autoriflemana",               // Assistent de fuseller automàtic (Assistant Automatic Rifleman)
            "rhsusf_army_ocp_riflemanat",                  // Fuseller amb M136 (Rifleman AT)
            "rhsusf_army_ocp_javelin",                     // Antitanc amb Javelin (Antitank with Javelin)
            "rhsusf_army_ocp_aa",                          // Antiaèri amb Stinger (Antiair with Stinger)
            "rhsusf_army_ocp_explosives",                  // Explosius (Explosives)
            "rhsusf_army_ocp_engineer",                    // Enginyer (Engineer)
            "rhsusf_army_ocp_machinegunner",               // Metrallador (Machinegunner)
            "rhsusf_army_ocp_machinegunnera",              // Assistent de metrallador (Assistant Machinegunner)
            "rhsusf_army_ocp_marksman",                    // Tirador (Marksman)
            "rhsusf_army_ocp_sniper",                      // Franctirador (Sniper)
            "rhsusf_army_ocp_medic"                        // Metge
        ];
        _Unit_Pool_V = [
            "rhsusf_m1025_w",                              // HMMWV sense armament
            "rhsusf_m1025_w_mk19",                         // HMMWV amb mk19
            "rhsusf_m1025_w_m2",                           // HMMWV amb m2
            "rhsusf_m998_w_2dr",
            "rhsusf_m998_w_2dr_fulltop",
            "rhsusf_m998_w_2dr_halftop",
            "rhsusf_m998_w_4dr",
            "rhsusf_m998_w_4dr_fulltop",
            "rhsusf_m998_w_4dr_halftop"
        ];
        _Unit_Pool_T = [
            "rhs_m113_usarmy",                             // APC M113A3
            "rhs_m2a2_wd",                                 // IPC
            "rhs_m2a2_buski_wd",                           // IPC
            "rhs_m2a3_buski_wd",                           // IPC
            "rhs_m2a3_wd",                                 // IPC
            "rhs_m6_wd",                                   // IPC
            "rhsusf_m1a1aimwd_usarmy",                     // Tanc
            "rhsusf_m1a1aim_tuski_wd",                     // Tanc
            "rhsusf_m1a2sep1wd_usarmy",                    // Tanc
            "rhsusf_m1a2sep1tuskiwd_usarmy",               // Tanc
            "rhsusf_m109_usarmy"                           // Artilleria
        ];
        _Unit_Pool_A = [
            "RHS_AH64D_wd",                                // Boeing AH-64 Apache Longbow (Multi-Role)
            "RHS_AH64D_wd_GS",                             // Boeing AH-64 Apache Longbow (Ground-Supresion)
            "RHS_AH64D_wd_CS",                             // Boeing AH-64 Apache Longbow (Close-Support)
            "RHS_AH64D_wd_AA",                             // Boeing AH-64 Apache Longbow (AA)
            "RHS_UH60M",                                   // Sikorsky UH-60 Black Hawk
            "RHS_UH60M_MEV2",                              // Sikorsky UH-60 Black Hawk MEV
            "RHS_UH60M_MEV"                                // Sikorsky UH-60 Black Hawk MEV (ESSS)
        ];
    };

    //===================================================================================================//
    // RHS UNITED STATES ARMY DESERT                                                                   //
    //===================================================================================================//
    case 20: {
        _Unit_Pool_S = [
            "rhsusf_army_ucp_combatcrewman","rhsusf_army_ucp_helipilot","rhsusf_army_ucp_squadleader",   // Tripulació, Pilot d'helicòpter i líder d'esquadra
            "rhsusf_army_ucp_teamleader",                  // Líder d'equip de foc (Fire Team Leader)
            "rhsusf_army_ucp_rifleman",                    // Fuseller (Rifleman)
            "rhsusf_army_ucp_riflemanl",                   // Fuseller lleuger (Light Rifleman)
            "rhsusf_army_ucp_grenadier",                   // Granader (Grenadier)
            "rhsusf_army_ucp_autorifleman",                // Fuseller automàtic (Automatic Rifleman)
            "rhsusf_army_ucp_autoriflemana",               // Assistent de fuseller automàtic (Assistant Automatic Rifleman)
            "rhsusf_army_ucp_riflemanat",                  // Fuseller amb M136 (Rifleman AT)
            "rhsusf_army_ucp_javelin",                     // Antitanc amb Javelin (Antitank with Javelin)
            "rhsusf_army_ucp_aa",                          // Antiaèri amb Stinger (Antiair with Stinger)
            "rhsusf_army_ucp_explosives",                  // Explosius (Explosives)
            "rhsusf_army_ucp_engineer",                    // Enginyer (Engineer)
            "rhsusf_army_ucp_machinegunner",               // Metrallador (Machinegunner)
            "rhsusf_army_ucp_machinegunnera",              // Assistent de metrallador (Assistant Machinegunner)
            "rhsusf_army_ucp_marksman",                    // Tirador (Marksman)
            "rhsusf_army_ucp_sniper",                      // Franctirador (Sniper)
            "rhsusf_army_ucp_medic"                        // Metge
        ];
        _Unit_Pool_V = [
            "rhsusf_m1025_d",                              // HMMWV sense armament
            "rhsusf_m1025_d_Mk19",                         // HMMWV amb mk19
            "rhsusf_m1025_d_m2",                           // HMMWV amb m2
            "rhsusf_m998_d_2dr",
            "rhsusf_m998_d_2dr_fulltop",
            "rhsusf_m998_d_2dr_halftop",
            "rhsusf_m998_d_4dr",
            "rhsusf_m998_d_4dr_fulltop",
            "rhsusf_m998_d_4dr_halftop"
        ];
        _Unit_Pool_T = [
            "rhs_m113d_usarmy",                            // APC M113A3
            "rhs_m2a2",                                    // IPC
            "rhs_m2a2_buski",                              // IPC
            "rhs_m2a3_buski",                              // IPC
            "rhs_m2a3",                                    // IPC
            "rhs_m6",                                      // IPC
            "rhsusf_m1a1aimd_usarmy",                      // Tanc
            "rhsusf_m1a1aim_tuski_d",                      // Tanc
            "rhsusf_m1a2sep1d_usarmy",                     // Tanc
            "rhsusf_m1a2sep1tuskid_usarmy",                // Tanc
            "rhsusf_m109_usarmy"                           // Artilleria
        ];
        _Unit_Pool_A = [
            "RHS_AH64D",                                   // Boeing AH-64 Apache Longbow (Multi-Role)
            "RHS_AH64D_GS",                                // Boeing AH-64 Apache Longbow (Ground-Supresion)
            "RHS_AH64D_CS",                                // Boeing AH-64 Apache Longbow (Close-Support)
            "RHS_AH64d_AA",                                // Boeing AH-64 Apache Longbow (AA)
            "RHS_UH60M_d",                                 // Sikorsky UH-60 Black Hawk
            "RHS_UH60M_MEV2_d",                            // Sikorsky UH-60 Black Hawk MEV
            "RHS_UH60M_MEV_d"                              // Sikorsky UH-60 Black Hawk MEV (ESSS)
        ];
    };

    //===================================================================================================//
    // RHS UNITED STATES MARINE CORPS WOODLAND                                                           //
    //===================================================================================================//
    case 21: {
        _Unit_Pool_S = [
            "rhsusf_usmc_marpat_wd_combatcrewman","rhsusf_usmc_marpat_wd_helipilot","rhsusf_usmc_marpat_wd_squadleader",   // Tripulació, Pilot d'helicòpter i líder d'esquadra
            "rhsusf_usmc_marpat_wd_teamleader",            // Líder d'equip de foc (Fire Team Leader)
            "rhsusf_usmc_marpat_wd_rifleman",              // Fuseller (Rifleman)
            "rhsusf_usmc_marpat_wd_rifleman_light",        // Fuseller lleuger (Light Rifleman)
            "rhsusf_usmc_marpat_wd_grenadier",             // Granader (Grenadier)
            "rhsusf_usmc_marpat_wd_autorifleman_m249",     // Fuseller automàtic (Automatic Rifleman)
            "rhsusf_usmc_marpat_wd_autorifleman_m249_ass", // Assistent de fuseller automàtic (Assistant Automatic Rifleman)
            "rhsusf_usmc_marpat_wd_riflemanat",            // Fuseller amb M136 (Rifleman AT)
            "rhsusf_usmc_marpat_wd_javelin",               // Antitanc amb Javelin (Antitank with Javelin)
            "rhsusf_usmc_marpat_wd_stinger",               // Antiaèri amb Stinger (Antiair with Stinger)
            "rhsusf_usmc_marpat_wd_explosives",            // Explosius (Explosives)
            "rhsusf_usmc_marpat_wd_engineer",              // Enginyer (Engineer)
            "rhsusf_usmc_marpat_wd_machinegunner",         // Metrallador (Machinegunner)
            "rhsusf_usmc_marpat_wd_machinegunner_ass",     // Assistent de metrallador (Assistant Machinegunner)
            "rhsusf_usmc_marpat_wd_marksman",              // Tirador (Marksman)
            "rhsusf_usmc_marpat_wd_sniper",                // Franctirador (Sniper)
            "rhsusf_usmc_marpat_wd_spotter",               // Observador (Spotter)
            "rhsusf_usmc_marpat_wd_medic"                  // Metge
        ];
        _Unit_Pool_V = [
            "rhsusf_m1025_w_s",                            // HMMWV sense armament
            "rhsusf_m1025_w_s_Mk19",                       // HMMWV amb mk19
            "rhsusf_m1025_w_s_m2",                         // HMMWV amb m2
            "rhsusf_m998_w_s_2dr",
            "rhsusf_m998_w_s_2dr_fulltop",
            "rhsusf_m998_w_s_2dr_halftop",
            "rhsusf_m998_w_s_4dr",
            "rhsusf_m998_w_s_4dr_fulltop",
            "rhsusf_m998_w_s_4dr_halftop",
            "rhsusf_rg33_usmc_wd",
            "rhsusf_rg33_m2_usmc_wd"
        ];
        _Unit_Pool_T = [
            "rhsusf_m1a1fep_wd",
            "rhsusf_m1a1fep_od"
        ];
        _Unit_Pool_A = [
            "RHS_AH1Z_wd",                                 // Bell AH-1Z Viper (Multi-Role)
            "RHS_AH1Z_wd_GS",                              // Bell AH-1Z Viper (Ground-Suppression)
            "RHS_AH1Z_wd_CS",                              // Bell AH-1Z Viper (Close-Support)
            "RHS_UH1Y_UNARMED",                            // UH1Y (Unarmed)
            "RHS_UH1Y_FFAR",                               // UH1Y FFAR
            "RHS_UH1Y"                                     // UH1Y FFAR/MG
        ];
    };

    //===================================================================================================//
    // RHS UNITED STATES MARINE CORPS DESERT                                                             //
    //===================================================================================================//
    case 22: {
        _Unit_Pool_S = [
            "rhsusf_usmc_marpat_d_combatcrewman","rhsusf_usmc_marpat_d_helipilot","rhsusf_usmc_marpat_d_squadleader",   // Tripulació, Pilot d'helicòpter i líder d'esquadra
            "rhsusf_usmc_marpat_d_teamleader",             // Líder d'equip de foc (Fire Team Leader)
            "rhsusf_usmc_marpat_d_rifleman",               // Fuseller (Rifleman)
            "rhsusf_usmc_marpat_d_rifleman_light",         // Fuseller lleuger (Light Rifleman)
            "rhsusf_usmc_marpat_d_grenadier",              // Granader (Grenadier)
            "rhsusf_usmc_marpat_d_autorifleman_m249",      // Fuseller automàtic (Automatic Rifleman)
            "rhsusf_usmc_marpat_d_autorifleman_m249_ass",  // Assistent de fuseller automàtic (Assistant Automatic Rifleman)
            "rhsusf_usmc_marpat_d_riflemanat",             // Fuseller amb M136 (Rifleman AT)
            "rhsusf_usmc_marpat_d_javelin",                // Antitanc amb Javelin (Antitank with Javelin)
            "rhsusf_usmc_marpat_d_stinger",                // Antiaèri amb Stinger (Antiair with Stinger)
            "rhsusf_usmc_marpat_d_explosives",             // Explosius (Explosives)
            "rhsusf_usmc_marpat_d_engineer",               // Enginyer (Engineer)
            "rhsusf_usmc_marpat_d_machinegunner",          // Metrallador (Machinegunner)
            "rhsusf_usmc_marpat_d_machinegunner_ass",      // Assistent de metrallador (Assistant Machinegunner)
            "rhsusf_usmc_marpat_d_marksman",               // Tirador (Marksman)
            "rhsusf_usmc_marpat_d_sniper",                 // Franctirador (Sniper)
            "rhsusf_usmc_marpat_d_spotter",                // Observador (Spotter)
            "rhsusf_usmc_marpat_d_medic"                   // Metge
        ];
        _Unit_Pool_V = [
            "rhsusf_m1025_d_s",                            // HMMWV sense armament
            "rhsusf_m1025_d_s_Mk19",                       // HMMWV amb mk19
            "rhsusf_m1025_d_s_m2",                         // HMMWV amb m2
            "rhsusf_m998_d_s_2dr",
            "rhsusf_m998_d_s_2dr_fulltop",
            "rhsusf_m998_d_s_2dr_halftop",
            "rhsusf_m998_d_s_4dr",
            "rhsusf_m998_d_s_4dr_fulltop",
            "rhsusf_m998_d_s_4dr_halftop",
            "rhsusf_rg33_usmc_d",
            "rhsusf_rg33_m2_usmc_d"
        ];
        _Unit_Pool_T = ["rhsusf_m1a1fep_d"];
        _Unit_Pool_A = [
            "RHS_AH1Z",                                    // Bell AH-1Z Viper (Multi-Role)
            "RHS_AH1Z_GS",                                 // Bell AH-1Z Viper (Ground-Suppression)
            "RHS_AH1Z_CS",                                 // Bell AH-1Z Viper (Close-Support)
            "RHS_UH1Y_UNARMED_d",                          // UH1Y (Unarmed)
            "RHS_UH1Y_FFAR_d",                             // UH1Y FFAR
            "RHS_UH1Y_d"                                   // UH1Y FFAR/MG
        ];
    };

    //===================================================================================================//
    // BW: Bundeswehr (Flecktarn)                                                                        //
    //===================================================================================================//
    case 30: {
        _Unit_Pool_S = [
            "BWA3_Crew_Fleck","BWA3_Helipilot","BWA3_SL_Fleck",  // Tripulació, Pilot d'helicòpter i líder d'esquadra
            "BWA3_TL_Fleck",                                     // Líder d'equip de foc (Fire Team Leader)
            "BWA3_Rifleman_Fleck",                               // Fuseller (Rifleman)
            "BWA3_Rifleman_lite_Fleck",                          // Fuseller lleuger (Light Rifleman)
            "BWA3_Rifleman_unarmed_Fleck",                       // Fuseller desarmat (Unarmed Rifleman)
            "BWA3_RiflemanG27_Fleck",                            // Fuseller amb G27 (Rifleman with G27)
            "BWA3_RiflemanG28_Fleck",                            // Fuseller amb G28 (Rifleman with G28)
            "BWA3_Grenadier_Fleck",                              // Granader (Grenadier)
            "BWA3_GrenadierG27_Fleck",                           // Granader amb G27 (Grenadier with G27)
            "BWA3_Autorifleman_Fleck",                           // Fuseller automàtic (Automatic Rifleman)
            "BWA3_AutoriflemanMG5_Fleck",                        // Fuseller automàtic amb MG6 (Automatic Rifleman)
            "BWA3_CombatLifeSaver_Fleck",                        // Metge (Combat Life Saver)
            "BWA3_Marksman_Fleck",                               // Tirador (Marksman)
            "BWA3_SniperG82_Fleck",                              // Franctirador (Sniper)
            "BWA3_Spotter_Fleck",                                // Observador (Spotter)
            "BWA3_RiflemanAT_RGW90_Fleck",                       // Antitanc amb RGW90 (Antitank with RGW90)
            "BWA3_RiflemanAT_Pzf3_Fleck",                        // Antitanc amb Panzerfaust 3 (Antitank with Panzerfaust 3)
            "BWA3_RiflemanAA_Fliegerfaust_Fleck",                // Antiaèri amb Fliegerfaust (Antiair with Fliegerfaust)
            "BWA3_Engineer_Fleck"                                // Enginyer (Engineer)
        ];
        _Unit_Pool_V = [];
        _Unit_Pool_T = [
            "BWA3_Puma_Fleck",                            // IFV Puma
            "BWA3_Leopard2A6M_Fleck"                      // MBT Leopard 2A6M
        ];
        _Unit_Pool_A = [
            "BWA3_Tiger_Gunpod_PARS",                      // UH Tiger GunPod (PARS)
            "BWA3_Tiger_Gunpod_FZ",                        // UH Tiger GunPod (FZ)
            "BWA3_Tiger_Gunpod_Heavy",                     // UH Tiger GunPod (Heavy)
            "BWA3_Tiger_RMK_PARS",                         // UH Tiger RMK (PARS)
            "BWA3_Tiger_RMK_Universal",                    // UH Tiger RMK (Universal)
            "BWA3_Tiger_RMK_FZ",                           // UH Tiger RMK (FZ)
            "BWA3_Tiger_RMK_Heavy"                         // UH Tiger RMK (Heavy)
        ];
    };

    //===================================================================================================//
    // BW: Bundeswehr (Tropentarn)                                                                       //
    //===================================================================================================//
    case 31: {
        _Unit_Pool_S = [
            "BWA3_Crew_Fleck","BWA3_Helipilot","BWA3_TL_Tropen",  // Tripulació, Pilot d'helicòpter i líder d'esquadra
            "BWA3_TL_Tropen",                                     // Líder d'equip de foc (Fire Team Leader)
            "BWA3_Rifleman_Tropen",                               // Fuseller (Rifleman)
            "BWA3_Rifleman_lite_Tropen",                          // Fuseller lleuger (Light Rifleman)
            "BWA3_Rifleman_unarmed_Tropen",                       // Fuseller desarmat (Unarmed Rifleman)
            "BWA3_RiflemanG27_Tropen",                            // Fuseller amb G27 (Rifleman with G27)
            "BWA3_RiflemanG28_Tropen",                            // Fuseller amb G28 (Rifleman with G28)
            "BWA3_Grenadier_Tropen",                              // Granader (Grenadier)
            "BWA3_GrenadierG27_Tropen",                           // Granader amb G27 (Grenadier with G27)
            "BWA3_Autorifleman_Tropen",                           // Fuseller automàtic (Automatic Rifleman)
            "BWA3_AutoriflemanMG5_Tropen",                        // Fuseller automàtic amb MG6 (Automatic Rifleman)
            "BWA3_CombatLifeSaver_Tropen",                        // Metge (Combat Life Saver)
            "BWA3_Marksman_Tropen",                               // Tirador (Marksman)
            "BWA3_SniperG82_Tropen",                              // Franctirador (Sniper)
            "BWA3_Spotter_Tropen",                                // Observador (Spotter)
            "BWA3_RiflemanAT_RGW90_Tropen",                       // Antitanc amb RGW90 (Antitank with RGW90)
            "BWA3_RiflemanAT_Pzf3_Tropen",                        // Antitanc amb Panzerfaust 3 (Antitank with Panzerfaust 3)
            "BWA3_RiflemanAA_Fliegerfaust_Tropen",                // Antiaèri amb Fliegerfaust (Antiair with Fliegerfaust)
            "BWA3_Engineer_Tropen"                                // Enginyer (Engineer)
        ];
        _Unit_Pool_V = [];
        _Unit_Pool_T = [
            "BWA3_Puma_Tropen",                            // IFV Puma
            "BWA3_Leopard2A6M_Tropen"                      // MBT Leopard 2A6M
        ];
        _Unit_Pool_A = [
            "BWA3_Tiger_Gunpod_PARS",                      // UH Tiger GunPod (PARS)
            "BWA3_Tiger_Gunpod_FZ",                        // UH Tiger GunPod (FZ)
            "BWA3_Tiger_Gunpod_Heavy",                     // UH Tiger GunPod (Heavy)
            "BWA3_Tiger_RMK_PARS",                         // UH Tiger RMK (PARS)
            "BWA3_Tiger_RMK_Universal",                    // UH Tiger RMK (Universal)
            "BWA3_Tiger_RMK_FZ",                           // UH Tiger RMK (FZ)
            "BWA3_Tiger_RMK_Heavy"                         // UH Tiger RMK (Heavy)
        ];
    };

    //===================================================================================================//
    // BW: Bundeswehr Fernspäher (Flecktarn)                                                             //
    //===================================================================================================//
    case 32: {
        _Unit_Pool_S = [
            "BWA3_Crew_Fleck","BWA3_Helipilot","BWA3_recon_TL_Fleck",  // Tripulació, Pilot d'helicòpter i líder d'esquadra
            "BWA3_recon_Fleck",                                        // Fernspäher explorador (Fernspäher Scout)
            "BWA3_recon_LAT_Fleck",                                    // Fernspäher amb RGW90 (Fernspäher RGW90)
            "BWA3_recon_Pioneer_Fleck",                                // Fernspäher pioner (Fernspäher Pioneer)
            "BWA3_recon_Medic_Fleck",                                  // Fernspäher paramèdic (Fernspäher Paramedic)
            "BWA3_recon_Marksman_Fleck",                               // Fernspäher tirador (Fernspäher Marksman)
            "BWA3_recon_Radioman_Fleck"                                // Fernspäher operador de ràdio (Fernspäher radioman)
        ];
        _Unit_Pool_V = [];
        _Unit_Pool_T = [];
        _Unit_Pool_A = [];
    };

    //===================================================================================================//
    // BW: Bundeswehr Fernspäher (Tropentarn)                                                            //
    //===================================================================================================//
    case 33: {
        _Unit_Pool_S = [
            "BWA3_Crew_Tropen","BWA3_Helipilot","BWA3_recon_TL_Tropen", // Tripulació, Pilot d'helicòpter i líder d'esquadra
            "BWA3_recon_Tropen",                                        // Fernspäher explorador (Fernspäher Scout)
            "BWA3_recon_LAT_Tropen",                                    // Fernspäher amb RGW90 (Fernspäher RGW90)
            "BWA3_recon_Pioneer_Tropen",                                // Fernspäher pioner (Fernspäher Pioneer)
            "BWA3_recon_Medic_Tropen",                                  // Fernspäher paramèdic (Fernspäher Paramedic)
            "BWA3_recon_Marksman_Tropen",                               // Fernspäher tirador (Fernspäher Marksman)
            "BWA3_recon_Radioman_Tropen"                                // Fernspäher operador de ràdio (Fernspäher radioman)
        ];
        _Unit_Pool_V = [];
        _Unit_Pool_T = [];
        _Unit_Pool_A = [];
    };

    //===================================================================================================//
    // DEFAULT                                                                                           //
    //===================================================================================================//
    Default {
        if (DAC_Basic_Value != 5) then {
            DAC_Basic_Value = 5;publicvariable "DAC_Basic_Value",
            hintc "Error: DAC_Config_Units > No valid config number";
        };
        if (true) exitwith {};
    };
};

if (count _this == 2) then {
    _TempArray = _TempArray + [_Unit_Pool_S,_Unit_Pool_V,_Unit_Pool_T,_Unit_Pool_A];
} else {
    _TempArray = _Unit_Pool_V + _Unit_Pool_T + _Unit_Pool_A;
};
_TempArray

//============================================ FI DEL FITXER ============================================//
