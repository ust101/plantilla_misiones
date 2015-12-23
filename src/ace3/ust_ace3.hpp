//=======================================================================================================//
// Archivo: ust_ace3.hpp                                                                                 //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/11/26                                                                    //
// Descripción: Este fichero sirve para definir las funciones que están disponibles si se utiliza este   //
//              modulo durante la misión. En este caso declara las funciones relacionadas ocn el ACE3    //
// Cambios: 1.0 (2015/11/26) Versió estable de la plantilla.                                             //
//=======================================================================================================//

// Especifica que este componente ha sido cargado.
#ifdef UST_COMPONENTES
    class ace3 {};
#endif

// Define las funciones que tiene este componente.
#ifdef UST_FUNCIONES
    class ace3 {
        file = "src\ace3\funciones";
        class ace3_asignarheridas {};
        class ace3_config          { PreInit = 1; };
    };
#endif

// Define los parámetros configurables al inicio de la misión.
#ifdef UST_PARAMETROS
    //===================================================================================================//
    // Delimitador                                                                                       //
    //===================================================================================================//
    class cc_paramLinia_ace3 {
        title = "========== Configuración de ACE 3";
        values[] = {0};
        texts[] = {""};
        default = 0;
    };

    //===================================================================================================//
    // Sistema médico: Nivel de detalle del sistema médico de ACE3.                                      //
    // Opción por defecto: Avanzado.                                                                     //
    //===================================================================================================//
    class ust_param_ace3_sistemaMedico {
        title = "Sistema médico";
        values[] = {0, 1, 2};
        texts[] = {"Deshabilitado", "Básico", "Avanzado"};
        default = 2;
    };

    //===================================================================================================//
    // Sistema de balística: Nivel de detalle del sistema de balística de ACE3.                          //
    // Opción por defecto: Avanzado.                                                                     //
    //===================================================================================================//
    class ust_param_ace3_Balistica {
        title = "Sistema de balística";
        values[] = {0,1};
        texts[] = {"Básico", "Avanzado"};
        default = 1;
    };
#endif

// Especifica los permisos de la función en multijugador.
#ifdef UST_REMOTEEXEC_FUNCIONES
    class ust_fnc_ace3_config { allowedTargets = 0; }; // A esta función puede acceder cualquiera.
#endif

//=========================================== FIN DEL FICHERO ===========================================//
