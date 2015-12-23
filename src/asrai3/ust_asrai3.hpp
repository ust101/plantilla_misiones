//=======================================================================================================//
// Archivo: ust_asrai3.hpp                                                                               //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/11/26                                                                    //
// Descripción: Este fichero sirve para definir las funciones que están disponibles si se utiliza este   //
//              modulo durante la misión. En este caso, declara funciones ralcionadas con el ASR AI 3    //
// Cambios: 1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

// Especifica que este componente ha sido cargado.
#ifdef UST_COMPONENTS
    class asrai3 {};
#endif

// Define las funciones que tiene este componente.
#ifdef UST_FUNCIONS
    class asrai3 {
        file = "src\asrai3\funciones";
        class asrai3_config { PostInit = 1; }; // La función se ejecuta al iniciar la misión, DESPUÉS de inicializar objetos.
    };
#endif

// Define los parámetros configurables al inicio de la misión.
#ifdef UST_PARAMETRES
    //===================================================================================================//
    // Delimitador                                                                                       //
    //===================================================================================================//
    class ust_paramLinia_asrai3 {
        title = "========== Configuración de ASR AI";
        values[] = {0};
        texts[] = {""};
        default = 0;
    };

    //===================================================================================================//
    // ASR AI 3: Variable para controlar si se usa el mod de inteligencia artificial ASR AI 3 durante    //
    //           la mision o si este se quiere desactivar.                                               //
    // Opción per defecto: Habilitado                                                                    //
    //===================================================================================================//
    class ust_param_asrai3_habilitado {
        title = "Utilizar ASR AI 3";
        values[] = {0,1};
        texts[] = {"Desactivado", "Activado"};
        default = 1;
    };
#endif

//=========================================== FIN DEL FICHERO ===========================================//
