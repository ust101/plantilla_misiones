//=======================================================================================================//
// Archivo: ust_configMissio.hpp                                                                         //
// Autor: ust_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/11/05                                                                    //
// Descripción: Este documento sirve para definir información básica de la misión, como el tipo i el     //
//              nombre de la misión, autor, imágenes de carga,etc...                                     //
// Cambios: 0.1 (2015/11/05) Versión inicial.                                                            //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

//=======================================================================================================//
// Header de la misión: - Definición del modo de juego, num mínimo y máximo de jugadores.				 //
//=======================================================================================================//

class Header {
    gameType = Coop;           // Modo de juego: https://community.bistudio.com/wiki/Multiplayer_Game_Types
    minPlayers = 1;            // Número mínimo de jugadores.
    maxPlayers = 30;           // Número máximo de jugadores.
    playerCountMultipleOf = 1; // Para realizar el balanceo en partidas tvt o pvp.
};

//=======================================================================================================//
// Pantalla de carga: https://community.bistudio.com/wiki/Description.ext                                //
//                                                                                                       //
// Existen dos plantillas que son altamente recomendables de usar cuando creamos las imágenes para la	 //
// entrada "overviewPicture" (ust_plantilla_overviewPicture.psd) y para el post de la misión en el foro	 //
// (ust_plantilla_foro.psd). Estos ficheros Photoshop, són muy recomendables pero totalmente opcionales	 //
// al depender de programas de edición externos.														 //
//=======================================================================================================//

onLoadName = "*** Nombre de la misión. ***";           		// Nombre de la misión (aparece en grande).
onLoadMission = "*** Descripción de la misión. ***";   		// Descripción breve de la misión.
onLoadIntro = "Plantilla Básica para Misiones (PBM)";  		// Mensaje mostrado mientras se carga la intro.
onLoadIntroTime = 0;                                   		// Cuando la intro se carga se muestra(1) o se esconde(0)
															// el día y la hora de la misión.
onLoadMissionTime = 0;                                 		// Cuando la misión se carga se muestra(1) o se esconde(0)
															// el día y la hora de la misión.
author = "Nombre Editor";                                	// Autor.
loadScreen = "images\loadScreen.jpg";                 		// Imagen mientras se carga la misión.
overviewPicture = "images\overviewPicture.jpg";       		// Imagen que se muestra al seleccionar la misión.
															// Debe estar en formato .paa y en aspecto 2:1.
overviewText = "*** Texto a mostrar. ***";             		// Texto que es muestra al seleccionar la misión.

//=======================================================================================================//
// Respawn Settings: Definición del tipo de respawn. https://community.bistudio.com/wiki/Arma_3_Respawn  //
//=======================================================================================================//
respawn             = "NONE";  // Muestra una pantalla de "Death" al jugador.
respawnDelay        = 10;      // Tiempo que se tarda en hacer respawn (en segudnos).
respawnVehicleDelay = 30;      // Tiempo que los vehiculos tardan en hacer respawn (en segundos).
RespawnDialog       = 0;       // En caso de ser un respawn de tipo 3 (BASE) muestra una cuenta atrás y la puntuación
                               // si(1) o no (0).
respawnOnStart      = -1;      // 1: respawn al empezar y ejecuta el script de respawn al inicio
                               // 0: sin respawn al empezar y ejecuta el script de respawn al inicio
                               // -1: sin respawn al empezar y sin ejecutar el script de respawn al inicio.
joinUnassigned      = 1;       // 0: fuerza al jugador al primer sitio libre, 1: Deja elejir al jugador el sitio.
disabledAI          = 1;       // Esconde las unidades amigas jugables que no són controladas por un jugador.
aiKills             = 0;       // Puntuación de los jugadors: 0 = deshabilitado, 1 = habilitado.

respawnTemplates[]          = {"ust_respawn"};
//respawnTemplatesWest[]      = {"ust_respawn"};
//respawnTemplatesEast[]      = {"ust_respawn"};
//respawnTemplatesCiv[]       = {"ust_respawn"};
//respawnTemplatesVirtual[]   = {}; // Jugadores virtuales.

class CfgRespawnTemplates {
    class ust_respawn {
        onPlayerKilled = "..\src\respawn\scripts\respawn\ust_respawn.sqf";
        onPlayerRespawn = "..\src\respawn\scripts\ust_respawn.sqf";
    };
};

//=======================================================================================================//
// Consola de Debug de BIS: https://community.bistudio.com/wiki/Description.ext#enableDebugConsole       //
//=======================================================================================================//
enableDebugConsole = 1;  // Consola de Debub  Habilitada para SP i administradors en MP.

//=======================================================================================================//
// Configuración de distintos parámetros de la misión	                                                 //
//=======================================================================================================//
showGPS     = 1;             // Permite el GPS: 0 = deshabilitado, 1 = habilitado.
showCompass = 1;             // Brújula visible: 0 = deshabilitado, 1 = habilitado.
showMap     = 1;             // Muestra el mapa después de que empieze la misión: 0 = deshabilitado,
                             // 1 = habilitado.
showWatch   = 1;             // Muestra el relog: 0 = deshabilitado, 1 = habilitado.
forceRotorLibSimulation = 1; // Fuerza la librería de modelo de vuelo avanzado: 0 = opciones del cliente,
                             // 1 = fuerza la activación, 2 = fuerza la desactivación.
disableChannels[]={1,2,3,4}; // Deshabilita los canales: 0 = global, 1 = Side, 2 = Command, 3 = Group,
                             // 4 = Vehicle, 5 = Direct, 6 = System.

//=========================================== FIN DEL FICHERO ===========================================//
