//=======================================================================================================//
// Archivo: ust_dac.hpp                                                                                  //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/11/26                                                                    //
// Descripción: Este fichero sirve para definir las funciones que están disponibles si se utiliza este   //
//              módulo durante la misión. En este caso, declara funciones que dependen de la misión i    //
//              que sirven para finalizar la misión dependiendo de los objetivos conseguidos.            //                                                                  //
// Cambios: 1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

// Especifica que el componente ha sido cargado
#ifdef UST_COMPONENTES
    class dac {};
#endif

// Define las funciones que tiene este componente.
#ifdef UST_FUNCIONES
    class dac {
        file = "src\dac\funciones";
        class dac_inicializar { postInit = 1; };
    };
#endif

// Definei los parámetros configurables al incion de misión.
#ifdef UST_PARAMETROS
    //===================================================================================================//
    // Delimitador                                                                                       //
    //===================================================================================================//
    class ust_paramLinia_dac {
        title = "========== Configuración de DAC";
        values[] = {0};
        texts[] = {""};
        default = 0;
    };

    //===================================================================================================//
    // Dynamic-AI-Creator: Variable para controlar si se usa el DAC durante la misión o se quiere        //
    //                     desactivarlo.                                                                 //
    // Opción per defecto: Habilitado                                                                    //
    //===================================================================================================//
    class ust_param_dac_habilitado {
        title = "Utilizar DAC";
        values[] = {0,1};
        texts[] = {"Desactivado", "Activado"};
        default = 1;
    };

    //===================================================================================================//
    // Debug del DAC: Variable para controlar la cantidad de información que se muestra al usar el DAC   //
    //                en una misión.		                                                             //
    //                  - Desactivado: No muestra ninguna información referente al DAC.                  //
    //                  - Simplificado: No se muestran las zonas DAC en el mapa ni mensajes de reducción //
    //                                  de los distintos grupos. Mensajes de inicialización simples. Se  //
    //                                  recomienda este valor durante la misión							 //
    //                  - Completo: Se muestran las zonas DAC y las unidades en el mapa, así como los    //
    //                              distintos mensajes de reducción/creació de los distintos grupos. Los //
    //                              mensajes al incio dan la máxima información posible.                 //
    // Opción per defecto: Completo.                                                                      //
    //===================================================================================================//
    class ust_param_dac_debug {
        title = "Debug DAC";
        values[] = {0,1,2};
        texts[] = {"Desactivado", "Simplificado", "Completo"};
        default = 2;
    };
#endif

//=========================================== FIN DEL FICHERO ===========================================//
