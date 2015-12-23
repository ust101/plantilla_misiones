//=======================================================================================================//
// Archivo: 1RAPerfils.sqf                                                                               //
// Autor: CC_Viper, CC_Magnetar, CC_OMSmolina i CC_TBlack                                                //
// Adaptado por: [UST] Artur																			 //
// Versió: 3.7                                                                                           //
// Creación del Documento: 25/04/2015                                                                    //
// Descripció: Este documento sirve para definir los distintos perfiles que utilizan los jugadores de    //
//             la comunidad UST101 (http://www.ust101.com). Los siguientes mods son un requisito para    //
//             que funcione todo correctamente:                                                          //
//                  - RHS United States Armed Forces (RHS USAF).                                         //
//                  - Advanced Combat Radio Environment 2 (ACRE2)                                        //
//                  - Advanced Combat Environment 3 (ACE3): http://ace3mod.com                           //
//					- @101_Weapons (RH M4 Robert Hammer Weapons)                                         //
//					- @101_Units (TRYK Multi Play Uniforms, Unidades UST101,etc..)						 //
//                                                                                                       //
//             Els següents perfils estan definits en aquest document:                                   //
//                                                                                                       //
//                  ROL                 PERFIL asociado                                                  //
//                  Líder de escuadra    UST - Sargento M4A1+M320 OCP		                             //
//                  Líder de equipo      UST - Cabo M4A1+M320 OCP			                             //
//                  Fusilero             UST - Fusilero M4A1 OCP                                         //
//                  Fusilero AT4         UST - AT M4A1+AT4 OCP                                           //
//                  Granadero            UST - Granadero M4A1+M320 OCP                                   //
//                  Fusilero automatico  UST - Ametrallador Ligera M249 OCP                              //
//                  Ametrallador         UST - Ametrallador Medio M240B OCP                              //
//                  Antitanque (Javelin) UST - AT M4A1+Javelin OCP                                       //
//                  Antiaéreo (Stinger)  UST - AA M4A1+Stinger OCP                                       //
//                  Tirador designado    UST - Tirador SR-25EC OCP                                       //
//                  Médico               UST - Médico M4A1 OCP                                           //
//                  Explosivos           UST - Explosivos M4A1 OCP                                       //
//                  Francotirador        UST - Francotirador M2010ESR OCP                                //
//                  Observador           UST - Observador M4A1 OCP                                       //
//                  Buzo líder     		 UST - Buzo lider M4A1		                                     //
//                  Buzo           		 UST - Buzo M4A1		      		                             //
//                  Buzo médico          UST - Buzo médico M4A1     	     		                     //
//                  Buzo explosivos		 UST - Buzo explosivos M4A1	                   	                 //
//                                                                                                       //
// Cambios: 1.0   (26/12/2013) Documento inicial por [UST] Artur.						                 //
//                                                                                                       //
// Notas: Cualquier cambio en este documento debe ser notificado a [UST] Artur o en su defecto al grupo  //
//		  de editores. No se permiten modificaciones personales durante las partidas oficiales de la UST //
//        Cualquier cambio en la equipación por motivos de una misión especfícia no debe de afectar en   //
//        los perfiles guardados de forma oficial.                                                       //
//=======================================================================================================//

// Preguntar si se quieren guardar los perfiles
_guardarPerfiles = ["¿Estás seguro de guardar los perfiles?", "Perfiles AC", true, true] call BIS_fnc_guiMessage;

if ( !_guardarPerfiles ) exitWith{
	// No hacer nada si la respuesta es negativa (Cancel) y sarlir del scripts
};

// Desactivar cualquier movimiento del jugador
disableUserInput true;

// Informa al jugador de lo que se está haciendo
titleCut ["Cargando y guardando todos los perfiles. Tardará unos 3 minutos, espera por favor...", "BLACK FADED", 999];


//=======================================================================================================//
// Líder de escuadra    UST - Sargento M4A1+M320 OCP                                                     //
//=======================================================================================================//

// Quitar todos los objetos
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",3];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",1];

// Chaleco
player addVest "rhsusf_iotv_ocp_squadleader";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addItemCargoGlobal ["ACE_microDAGR",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",7];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m714_White",1];

// Mochila.
player addBackpack "tf_rt1523g_big_rhs";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",5];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m714_White",3];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",2];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",2];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_purple",2];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_yellow",2];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m715_Green",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m716_yellow",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m713_Red",1];

// Casco
player addHeadgear "rhsusf_ach_helmet_headset_ocp";

// Armas
player addWeapon "rhs_weap_m4a1_m320";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "ACE_Vector";

// Objetos.
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";

// Insígnia
//[player,"PATCH_UST_101"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"UST - Sargento M4A1+M320 OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Líder de escuadra M4A1+M320 OCP >> guardado"];
sleep 3;

//=======================================================================================================//
// Líder de equipo      UST - Cabo M4A1+M320 OCP                                                         //
//=======================================================================================================//

// Quitar todos los objetos
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme 
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",3];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",1];

// Chaleco
player addVest "rhsusf_iotv_ocp_teamleader";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addItemCargoGlobal ["ACE_microDAGR",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",2];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m714_White",1];

// Mochila.
player addBackpack "tf_rt1523g_big_rhs";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",5];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m67",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m714_White",3];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",2];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",2];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_purple",2];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_yellow",2];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m715_Green",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m716_yellow",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m713_Red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m14_th3",2];

// Casco
player addHeadgear "rhsusf_ach_helmet_headset_ocp";

// Armas
player addWeapon "rhs_weap_m4a1_m320";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "ACE_Vector";

// Objetos.
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";

// Insígnia
//[player,"PATCH_UST_101"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"UST - Cabo M4A1+M320 OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Líder de equipo M4A1+M320 OCP >> guardado"];
sleep 3;

//=======================================================================================================//
// Fusilero: UST - Fusilero M4A1 OCP                                                                     //
//=======================================================================================================//

// Quitar todos los objetos
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",3];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",1];

// Chaleco 
player addVest "rhsusf_iotv_ocp_rifleman";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];

// Mochila.
player addBackpack "rhsusf_assault_eagleaiii_ocp";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];

// Casco
player addHeadgear "rhsusf_ach_helmet_headset_ocp";

// Armas
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "lerca_1200_tan";

// Objetos.
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
//[player,"PATCH_UST_101"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"UST - Fusilero M4A1 OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Fusilero M4A1 OCP >> guardado"];
sleep 3;

//=======================================================================================================//
// Granadero: UST - Granadero M4A1+M320 OCP		                                                         //
//=======================================================================================================//

// Quitar todos los objetos
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",6];

// Chaleco
player addVest "rhsusf_iotv_ocp_grenadier";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",8];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",7];

// Mochila.
player addBackpack "rhsusf_assault_eagleaiii_ocp";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",7];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_M433_HEDP",12];

// Casco
player addHeadgear "rhsusf_ach_helmet_headset_ocp";

// Armas
player addWeapon "rhs_weap_m4a1_m320";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "lerca_1200_tan";

// Objetos.
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
//[player,"PATCH_UST_101"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"UST - Granadero M4A1+M320 OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Granadero M4A1+M320 OCP >> guardado"];
sleep 3;

//=======================================================================================================//
// Fusilero automatico: UST - Ametrallador Ligera M249 OCP                                               //
//=======================================================================================================//

// Quitar todos los objetos
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",1];

// Chaleco
player addVest "rhsusf_iotv_ocp_SAW";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_200Rnd_556x45_soft_pouch",1];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_mk84",1];

// Mochila.
player addBackpack "rhsusf_assault_eagleaiii_ocp";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
(unitBackpack player) addMagazineCargoGlobal ["rhsusf_100Rnd_556x45_soft_pouch",3];

// Casco
player addHeadgear "rhsusf_ach_helmet_headset_ocp";

// Armas
player addWeapon "rhs_weap_m249_pip_S";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
player addPrimaryWeaponItem "rhsusf_acc_ELCAN";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "lerca_1200_tan";

// Objetos.
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
//[player,"PATCH_UST_101"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"UST - Ametrallador Ligera M249 OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Ametrallador Ligera M249 OCP >> guardado"];
sleep 3;

//=======================================================================================================//
// Ametrallador: UST - Ametrallador Medio M240B OCP                                                      //
//=======================================================================================================//

// Quitar todos los objetos
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["AGM_Bandage",6];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",1];

// Chaleco
player addVest "rhsusf_iotv_ocp_SAW";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",2];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];

// Mochila.		
player addBackpack "rhsusf_assault_eagleaiii_ocp";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
(unitBackpack player) addMagazineCargoGlobal ["rhsusf_100Rnd_762x51",2];

// Casco
player addHeadgear "rhsusf_ach_helmet_headset_ocp";

// Armas
player addWeapon "rhs_weap_m240B_CAP";
player addPrimaryWeaponItem "rhsusf_acc_ELCAN";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "lerca_1200_tan";

// Objetos.
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
//[player,"PATCH_UST_101"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"UST - Ametrallador Medio M240B OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Ametrallador Medio M240B OCP >> guardado"];
sleep 3;

//=======================================================================================================//
// Fusilero AT4: UST - AT M4A1+AT4 OCP                                                                   //
//=======================================================================================================//

// Quitar todos los objetos
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",3];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",1];

// Chaleco
player addVest "rhsusf_iotv_ocp_rifleman";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];

// Mochila.
player addBackpack "rhsusf_assault_eagleaiii_ocp";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
(unitBackpack player) addItemCargoGlobal ["rhs_m136_hedp_mag",1];

// Casco
player addHeadgear "rhsusf_ach_helmet_headset_ocp";

// Armas
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "rhs_weap_M136_hedp";
player addWeapon "lerca_1200_tan";

// Objetos.
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
//[player,"PATCH_UST_101"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"UST - AT M4A1+AT4 OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << AT M4A1+AT4 OCP >> guardado"];
sleep 3;

//=======================================================================================================//
// Antitanque: UST - AT M4A1+Javelin OCP                                                                    //
//=======================================================================================================//

// Quitar todos los objetos
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",2];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",2];

// Chaleco
player addVest "rhsusf_iotv_ocp_rifleman";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];

// Mochila.
player addBackpack "rhsusf_assault_eagleaiii_ocp";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_fgm148_magazine_AT",1];
	
// Casco
player addHeadgear "rhsusf_ach_helmet_headset_ocp";
	
// Armas
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhs_weap_fgm148";
player addWeapon "lerca_1200_tan";
player addWeapon "rhsusf_weap_m1911a1";

// Objetos.
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
//[player,"PATCH_UST_101"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"UST - AT M4A1+Javelin OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << AT M4A1+Javelin OCP >> guardado"];
sleep 3;

//=======================================================================================================//
// Antiaéreo: UST - AA M4A1+Stinger OCP                                                                  //
//=======================================================================================================//

// Quitar todos los objetos
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",2];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",2];

// Chaleco
player addVest "rhsusf_iotv_ocp_rifleman";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];

// Mochila.
player addBackpack "rhsusf_assault_eagleaiii_ocp";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_fim92_mag",1];
	
// Casco
player addHeadgear "rhsusf_ach_helmet_headset_ocp";
	
// Armas
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhs_weap_fim92";
player addWeapon "lerca_1200_tan";
player addWeapon "rhsusf_weap_m1911a1";

// Objetos.
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
//[player,"PATCH_UST_101"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"UST - AA M4A1+Stinger OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << AA M4A1+Stinger OCP >> guardado"];
sleep 3;

//=======================================================================================================//
// Tirador designado: UST - Tirador SR-25EC OCP                                                          //
//=======================================================================================================//

// Quitar todos los objetos
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",1];

// Chaleco
player addVest "rhsusf_iotv_ocp_rifleman";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addItemCargoGlobal ["ACE_Kestrel4500",1];
(vestContainer player) addItemCargoGlobal ["ACE_ATragMX",1];
(vestContainer player) addItemCargoGlobal ["ACE_RangeCard",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",6];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",2];

// Mochila.
player addBackpack "rhsusf_assault_eagleaiii_ocp";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addItemCargoGlobal ["rhsusf_acc_SR25S",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
(unitBackpack player) addMagazineCargoGlobal ["rhsusf_20Rnd_762x51_m118_special_Mag",8];

// Casco
player addHeadgear "rhsusf_ach_helmet_headset_ocp";

// Armas
player addWeapon "rhs_weap_sr25_ec";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15A";
player addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4";
player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "lerca_1200_tan";

// Objetos.
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
//[player,"PATCH_UST_101"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"UST - Tirador SR-25EC OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Tirador SR-25EC OCP >> guardado"];
sleep 3;

//=======================================================================================================//
// Médico: UST - Médico M4A1 OCP                                                                         //
//=======================================================================================================//

// Quitar todos los objetos
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",8];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",8];
(uniformContainer player) addItemCargoGlobal ["ACE_atropine",12];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["ACE_tourniquet",3];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",3];

// Chaleco
player addVest "rhsusf_iotv_ocp_Medic";
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
(vestContainer player) addItemCargoGlobal ["ACE_personalAidKit",1];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];

// Mochila.
player addBackpack "rhsusf_assault_eagleaiii_ocp";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addItemCargoGlobal ["ACE_fieldDressing",15];
(unitBackpack player) addItemCargoGlobal ["ACE_packingBandage",8];
(unitBackpack player) addItemCargoGlobal ["ACE_elasticBandage",20];
(unitBackpack player) addItemCargoGlobal ["ACE_quikclot",15];
(unitBackpack player) addItemCargoGlobal ["ACE_tourniquet",3];
(unitBackpack player) addItemCargoGlobal ["ACE_salineIV_500",5];
(unitBackpack player) addItemCargoGlobal ["ACE_surgicalKit",3];
(unitBackpack player) addItemCargoGlobal ["ACE_personalAidKit",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];

// Casco
player addHeadgear "rhsusf_ach_helmet_headset_ocp";

// Armas
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "lerca_1200_tan";

// Objetos.
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
//[player,"PATCH_UST_101"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"UST - Médico M4A1 OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Médico M4A1 OCP >> guardado"];
sleep 3;

//=======================================================================================================//
// Explosivos: UST - Explosivos M4A1 OCP                                                                 //
//=======================================================================================================//

// Quitar todos los objetos
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "rhs_uniform_cu_ocp";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["AGM_Bandage",4];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",1];

// Chaleco
player addVest "rhsusf_iotv_ocp_squadleader";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",10];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];

// Mochila.
player addBackpack "rhsusf_assault_eagleaiii_ocp";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addItemCargoGlobal ["ACE_Clacker",1];
(unitBackpack player) addItemCargoGlobal ["ACE_DefusalKit",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6];
(unitBackpack player) addMagazineCargoGlobal ["DemoCharge_Remote_Mag",3];
(unitBackpack player) addMagazineCargoGlobal ["SLAMDirectionalMine_Wire_Mag",1];

// Casco
player addHeadgear "rhsusf_ach_helmet_headset_ocp";

// Armas
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "lerca_1200_tan";

// Objetos.
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
//[player,"PATCH_UST_101"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"UST - Explosivos M4A1 OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Explosivos M4A1 OCP >> guardado"];
sleep 3;

//=======================================================================================================//
// Francotirador: UST - Francotirador M2010ESR OCP                                                       //
//=======================================================================================================//

// Quitar todos los objetos
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "U_B_GhillieSuit";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_M2010S",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",4];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010",2];

// Chaleco
player addVest "rhsusf_iotv_ocp_rifleman";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(vestContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(vestContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(vestContainer player) addItemCargoGlobal ["ACE_microDAGR",1];
(vestContainer player) addItemCargoGlobal ["ACE_Kestrel4500",1];
(vestContainer player) addItemCargoGlobal ["ACE_ATragMX",1];
(vestContainer player) addItemCargoGlobal ["ACE_RangeCard",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010",6];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",2];

// Mochila.
player addBackpack "rhsusf_assault_eagleaiii_ocp";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
(unitBackpack player) addMagazineCargoGlobal ["rhsusf_5Rnd_300winmag_xm2010",8];

// Casco
player addHeadgear "rhs_Booniehat_ocp";

// Armas
player addWeapon "rhs_weap_XM2010_sa";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
player addPrimaryWeaponItem "rhsusf_acc_LEUPOLDMK4_2";
player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "ACE_Vector";

// Objetos.
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";

// Insígnia
//[player,"PATCH_UST_101"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"UST - Francotirador M2010ESR OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Francotirador M2010ESR OCP >> guardado"];
sleep 3;

//=======================================================================================================//
// Observador: UST - Observador M4A1 OCP		                                                         //
//=======================================================================================================//

// Quitar todos los objetos
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "U_B_GhillieSuit";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["ACE_tourniquet",1];
(uniformContainer player) addItemCargoGlobal ["G_Tactical_Clear",1];
(uniformContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",4];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",2];

// Chaleco
player addVest "rhsusf_iotv_ocp_rifleman";
(vestContainer player) addItemCargoGlobal ["ACE_fieldDressing",4];
(vestContainer player) addItemCargoGlobal ["ACE_packingBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_elasticBandage",3];
(vestContainer player) addItemCargoGlobal ["ACE_quikclot",3];
(vestContainer player) addItemCargoGlobal ["ACE_microDAGR",1];
(vestContainer player) addItemCargoGlobal ["ACE_Kestrel4500",1];
(vestContainer player) addItemCargoGlobal ["ACE_ATragMX",1];
(vestContainer player) addItemCargoGlobal ["ACE_RangeCard",1];
(vestContainer player) addItemCargoGlobal ["ACE_Tripod",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",1];
(vestContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6];
(vestContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",2];

// Mochila.
player addBackpack "rhsusf_assault_eagleaiii_ocp";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addItemCargoGlobal ["ACE_SpottingScope",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",4];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",8];

// Casco
player addHeadgear "rhs_Booniehat_ocp";

// Armas
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "ACE_Vector";

// Objetos.
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
//[player,"PATCH_UST_101"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"UST - Observador M4A1 OCP"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Observador M4A1 OCP >> guardado"];
sleep 3;

//=======================================================================================================//
// Buzo líder: UST - Buzo lider M4A1			                                                         //
//=======================================================================================================//

// Quitar todos los objetos
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "U_B_Wetsuit";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["ACE_microDAGR",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",6];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_m18_green",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_m18_purple",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_m18_yellow",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];

// Chaleco
player addVest "V_RebreatherB";
// No se permiten Objetos en este Chaleco

// Mochila.
player addBackpack "tf_rt1523g_big_rhs";
(unitBackpack player) addItemCargoGlobal ["ACE_fieldDressing",4];
(unitBackpack player) addItemCargoGlobal ["ACE_packingBandage",3];
(unitBackpack player) addItemCargoGlobal ["ACE_elasticBandage",3];
(unitBackpack player) addItemCargoGlobal ["ACE_quikclot",3];
(unitBackpack player) addItemCargoGlobal ["ACE_tourniquet",1];
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",7];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_m67",2];
(unitBackpack player) addItemCargoGlobal ["rhs_uniform_cu_ocp",1];

// Casco
player addHeadgear "rhs_Booniehat_ocp";

// Gafas.
player addGoggles "G_Diving";

// Armas
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "ACE_Vector";

// Objetos.
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_anprc152";

// Insígnia
//[player,"PATCH_UST_101"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"UST - Buzo lider M4A1"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Buzo lider M4A1>> guardado"];
sleep 3;

//=======================================================================================================//
// Buzo: UST - Buzo M4A1			                                                                     //
//=======================================================================================================//

// Quitar todos los objetos
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "U_B_Wetsuit";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_m67",3];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_m18_red",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",3];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",4];

// Chaleco
player addVest "V_RebreatherB";
// No se permiten Objetos en este Chaleco

// Mochila.
player addBackpack "B_AssaultPack_blk";
(unitBackpack player) addItemCargoGlobal ["ACE_fieldDressing",4];
(unitBackpack player) addItemCargoGlobal ["ACE_packingBandage",3];
(unitBackpack player) addItemCargoGlobal ["ACE_elasticBandage",3];
(unitBackpack player) addItemCargoGlobal ["ACE_quikclot",3];
(unitBackpack player) addItemCargoGlobal ["ACE_tourniquet",1];
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",8];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_an_m8hc",2];
(unitBackpack player) addItemCargoGlobal ["rhs_uniform_cu_ocp",1];

// Casco
player addHeadgear "rhs_Booniehat_ocp";

// Gafas.
player addGoggles "G_Diving";

// Armas
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "lerca_1200_tan";

// Objetos.
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
//[player,"PATCH_UST_101"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"UST - Buzo M4A1"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Buzo M4A1 >> guardado"];
sleep 3;

//=======================================================================================================//
// Buzo médico: UST - Buzo médico M4A1			                                                         //
//=======================================================================================================//

// Quitar todos los objetos
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "U_B_Wetsuit";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",8];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",8];
(uniformContainer player) addItemCargoGlobal ["ACE_atropine",12];
(uniformContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["ACE_salineIV_500",1];
(uniformContainer player) addItemCargoGlobal ["ACE_tourniquet",5];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",5];

// Chaleco
player addVest "V_RebreatherB";
// No se permiten Objetos en este Chaleco

// Mochila.
player addBackpack "B_AssaultPack_blk";
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addItemCargoGlobal ["ACE_fieldDressing",10];
(unitBackpack player) addItemCargoGlobal ["ACE_packingBandage",5];
(unitBackpack player) addItemCargoGlobal ["ACE_elasticBandage",10];
(unitBackpack player) addItemCargoGlobal ["ACE_quikclot",10];
(unitBackpack player) addItemCargoGlobal ["ACE_tourniquet",3];
(unitBackpack player) addItemCargoGlobal ["ACE_salineIV_500",2];
(unitBackpack player) addItemCargoGlobal ["ACE_surgicalKit",2];
(unitBackpack player) addItemCargoGlobal ["ACE_personalAidKit",2];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",5];
(unitBackpack player) addItemCargoGlobal ["rhs_uniform_cu_ocp",1];

// Casco
player addHeadgear "rhs_Booniehat_ocp";

// Gafas.
player addGoggles "G_Diving";

// Armas
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "lerca_1200_tan";

// Objetos.
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
//[player,"PATCH_UST_101"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"UST - Buzo médico M4A1"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Buzo médico M4A1 >> guardado"];
sleep 3;

//=======================================================================================================//
// Buzo explosivos: UST - Buzo explosivos M4A1			                                                 //
//=======================================================================================================//

// Quitar todos los objetos
removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;
removeAllItemsWithMagazines player;
removeUniform player;
removeVest player;
removeBackpack player;
removeHeadgear player;
removeGoggles player;

// Uniforme
player forceAddUniform "U_B_Wetsuit";
(uniformContainer player) addItemCargoGlobal ["ACE_EarPlugs",1];
(uniformContainer player) addItemCargoGlobal ["ACE_morphine",2];
(uniformContainer player) addItemCargoGlobal ["ACE_epinephrine",1];
(uniformContainer player) addItemCargoGlobal ["ACE_CableTie",1];
(uniformContainer player) addItemCargoGlobal ["ACE_MapTools",1];
(uniformContainer player) addItemCargoGlobal ["ACE_Clacker",1];
(uniformContainer player) addItemCargoGlobal ["ACE_DefusalKit",1];
(uniformContainer player) addItemCargoGlobal ["ACE_key_west",1];
(uniformContainer player) addItemCargoGlobal ["rhsusf_acc_rotex5_grey",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_mk84",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_m67",1];
(uniformContainer player) addMagazineCargoGlobal ["rhsusf_mag_7x45acp_MHP",1];
(uniformContainer player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",5];

// Chaleco
player addVest "V_RebreatherB";
// No se permiten Objetos en este Chaleco

// Mochila.
player addBackpack "B_AssaultPack_blk";
(unitBackpack player) addItemCargoGlobal ["ACE_fieldDressing",4];
(unitBackpack player) addItemCargoGlobal ["ACE_packingBandage",3];
(unitBackpack player) addItemCargoGlobal ["ACE_elasticBandage",3];
(unitBackpack player) addItemCargoGlobal ["ACE_quikclot",3];
(unitBackpack player) addItemCargoGlobal ["ACE_tourniquet",1];
(unitBackpack player) addItemCargoGlobal ["rhsusf_ANPVS_14",1];
(unitBackpack player) addMagazineCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer",5];
(unitBackpack player) addMagazineCargoGlobal ["DemoCharge_Remote_Mag",3];
(unitBackpack player) addItemCargoGlobal ["rhs_uniform_cu_ocp",1];

// Casco
player addHeadgear "rhs_Booniehat_ocp";

// Gafas.
player addGoggles "G_Diving";

// Armas
player addWeapon "rhs_weap_m4a1";
player addPrimaryWeaponItem "rhsusf_acc_SF3P556";
player addPrimaryWeaponItem "rhsusf_acc_anpeq15";
player addPrimaryWeaponItem "rhsusf_acc_ACOG";
player addWeapon "rhsusf_weap_m1911a1";
player addWeapon "lerca_1200_tan";

// Objetos.
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "tf_microdagr";
player linkItem "tf_rf7800str";

// Insígnia
//[player,"PATCH_UST_101"] call bis_fnc_setUnitInsignia;

sleep 3;
_namespace = profileNamespace;
_loadout = [player,[_namespace,"UST - Buzo explosivos M4A11"]] call BIS_fnc_saveInventory;
player sidechat format ["%1", "Perfil << Buzo explosivos M4A1 >> guardado"];

//=======================================================================================================//
// Todos los perfiles estan guardados                                                                    //
//=======================================================================================================//
titleCut ["Todos los perfiles han sido guardados.", "BLACK IN", 5];
disableUserInput false;
sleep 5;
player sidechat format ["%1", "Todos los perfiles han sido guardados."];

//=========================================== FIN DEL FICHERO ===========================================//
