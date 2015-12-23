//=======================================================================================================//
// Archivo: ust_comu.hpp                                                                                 //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/11/26                                                                    //
// Descripción: Este fichero sirve para definir las funciones que estan disponibles se se usa este módulo//
//              durante la misión. En este caso, declara funciones que dependen de la misión y que 		 //
//              afectan a otros scripts y funciones de la plantilla.                                     //                                                                  //
// Cambios: 1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

// Especifica que este componente ha sido cargado.
#ifdef UST_COMPONENTES
    class configMision_comun {};
#endif

// Define las funciones que tiene este componente.
#ifdef UST_FUNCIONES
    class configMision_comun {
        file = "configMision\comun\funciones";
        class comun_comprobarConfiguracion { postInit = 1; };
        class comub_variablesComunes      { preInit = 1; };
    };
#endif

//=========================================== FIN DEL FICHERO ===========================================//
