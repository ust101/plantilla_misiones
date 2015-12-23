//=======================================================================================================//
// Archivo: ust_misc.hpp                                                                                 //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/11/26                                                                    //
// Descripción: Este fichero sirve para definir las funciones que están disponibles si se usa este 		 //
//				módulo durante la misión. En este caso, declara funciones misceláneas que puede estar en //
//              mòdul durant la missió. En aquest cas declara funcions miscel·làniques que poden ser     //
//              ciertas misiones, como el Teleport...	                                                 //
// Cambios: 1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

// Especifica que el componente ha sido cargado.
#ifdef UST_COMPONENTES
    class misc {};
#endif

// Define las funciones que este componente tiene.
#ifdef UST_FUNCIONES
    class misc {
        file = "src\misc\funciones";
        class misc_teleport{};
        class misc_teleport_configurarPuntos { postInit = 1; };
    };
#endif

//=========================================== FIN DEL FICHERO ===========================================//
