//=======================================================================================================//
// Archivo: ust_acre2.hpp                                                                                //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// VersióN: 1.0                                                                                          //
// Creación del Documento: 2015/11/26                                                                    //
// Descripción: Este fichero sirve para definir las funciones que estan disponibles si se utiliza este   //
//             modulo durante la misión. En este caso se declaran las funciones relacionadas con la      //
//             configuración de las radios y sus frecuencias del ACRE2								     //
// Cambios: 1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

// Especifica que este componente ha sido cargado
#ifdef UST_COMPONENTES
    class acre2 {};
#endif

// Define las funciones que tiene este componente
#ifdef CC_FUNCIONES
    class acre2 {
        file = "src\acre2\funciones";
        class acre2_determinarIdiomas{};
        class acre2_anadirRadios{};
        class acre2_quitarRadios{};
        class acre2_configurarCanales{};
        class acre2_configurarChatEspectador{};
    };
#endif

//=========================================== FIN DEL FICHERO ===========================================//
