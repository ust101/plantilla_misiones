//=======================================================================================================//
// Archivo: ust_t8units.hpp                                                                              //
// Autor: ust_Magnetar                                                                                   //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/12/06                                                                    //
// Descripción: Este fichero sirve para configurar el script de T8 Units. Este script es totalmente      //
//             compatible con Dynamic-AI-Creator (DAC). Para más información:	                         //
//             https://forums.bistudio.com/topic/172795-release-t8-units-a-less-dynamic-ai-creator       //
// Cambios: 1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

// Especifica que este comoponente ha sido cargado
#ifdef ust_COMPONENTES
    class t8units {};
#endif

// Define los parámetros configurables al inicio de misión
#ifdef ust_PARAMETROS
    //===================================================================================================//
    // Delimitador                                                                                       //
    //===================================================================================================//
    class ust_paramLinia_t8units {
        title = "========== Configuración de T8 Units";
        values[] = {0};
        texts[] = {""};
        default = 0;
    };

    //===================================================================================================//
    // T8 Units: Variable para controlar si se usa el T8 Units durante la misión o si este se quiere     //
    //           desactivar.                                                                             //
    // Opción por defecto: Habilitado                                                                    //
    //===================================================================================================//
    class ust_param_t8units_habilitat {
        title = "Utilizar T8 Units";
        values[] = {0,1};
        texts[] = {"Desactivado", "Activado"};
        default = 1;
    };

    //===================================================================================================//
    // Debug del T8 Units: Variable para controlar la cantidad de información que se muestra al usar     //
    //                     el T8 Units en una missión.                                                   //
    //                     - Desactivado: No muestra ninguna información referente al T8 Units           //
    //                     - Activado: Se muestran maracadores, waypoints i información adicional        //
    // Opción por defecto: Activada                                                                      //
    //===================================================================================================//
    class ust_param_t8units_debug {
        title = "Debug T8 Units";
        values[] = {0,1};
        texts[] = {"Desactivado", "Activado"};
        default = 1;
    };

    //===================================================================================================//
    // Compatibilidad con DAC: Variable para controlar si las unidades creadas por T8 Units pedirán      //
    //                         ayuda a les generadas usando el DAC.                                      //
    // Opció per defecte: Activada.                                                                      //
    //===================================================================================================//
    class ust_param_t8units_dac {
        title = "Compatibilidad con DAC";
        values[] = {0,1};
        texts[] = {"Desactivado", "Activado"};
        default = 1;
    };
#endif

//=========================================== FIN DEL FICHERO ============================================//
