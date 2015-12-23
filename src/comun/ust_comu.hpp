//=======================================================================================================//
// Archivo: ust_comu.hpp                                                                                 //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/11/26                                                                    //
// Descripción: Este  fichero sirve para definir las funciones que estan disponibles si se utiliza este  //
//              modulo durante la misión. En este caso, declara funciones que definen variables comunes  //
//             (globales) utilizadas en otros scripts y funciones de la plantilla.                       //
// Cambios: 1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

// Especifica que este componente ha sido cargado.
#ifdef UST_COMPONENTS
    class comun {};
#endif

// Define las funciones que tiene este componente.
#ifdef UST_FUNCIONES
    class comun {
        file = "src\comun\funciones";
        class comun_procesarParamsArray { preInit = 1; };   // La función se ejectua al iniciar la misión, ANTES de inicializar objetos.
        class comun_procesarMods        { preInit = 1; };   // La función se ejectua al iniciar la misión, ANTES de inicializar objetos.
    };
#endif

//=========================================== FIN DEL FICHERO ===========================================//
