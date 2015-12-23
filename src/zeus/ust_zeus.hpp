//=======================================================================================================//
// Archivo: ust_zeus.hpp                                                                                 //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/11/26                                                                    //
// Descripción: Este fichero sirve para definir las funciones que están disponibles si se utiliza este   //
//              modulo durante la misión. En este caso se declaran funciones relacionadas con Zeus.      //
// Cambios: 1.0 (2015/11/26) Versió estable de la plantilla.                                             //
//=======================================================================================================//

// Especifica que este componente ha sido cargado.
#ifdef UST_COMPONENTES
    class zeus {};
#endif

// Define las funciones que este componente tiene.
#ifdef UST_FUNCIONES
    class zeus {
        file = "src\zeus\funciones";
        class zeus_anadirGrupos    {};
        class zeus_anadirObjetos {};
        class zeus_crearModulo     { PreInit = 1; };
        class zeus_eventHandlers  { PostInit = 1; }; // La función se ejecuta al iniciar la misión, DESPUÉS de inicializar objetos.

    };
#endif

// Define los parámetros configurables al inicio de la misión.
#ifdef UST_PARAMETROS
    //===================================================================================================//
    // Delimitador                                                                                       //
    //===================================================================================================//
    class ust_paramLinia_zeus {
        title = "========== Configuración del Zeus";
        values[] = {0};
        texts[] = {""};
        default = 0;
    };

    //===================================================================================================//
    // Zeus: ¿Configurar el Zeus para el administrador de la partida?                                       //
    // Opción per defecto: Si                                                                      //
    //===================================================================================================//
    class ust_param_zeus_Admin {
        title = "Configurar Zeus para el Administrador";
        values[] = {0,1};
        texts[] = {"No", "Si"};
        default = 1;
    };
#endif

// Especifica los permisos de la función en multijugador.
#ifdef UST_REMOTEEXEC_FUNCIONES
    class ust_fnc_zeus_anadirGrupos    { allowedTargets = 2; }; // Esta función sólo puede tener como objetivo servidores.
    class ust_fnc_zeus_anadirObjetos { allowedTargets = 2; }; // Esta función sólo puede tener como objetivo servidores.
#endif

//=========================================== FIN DEL FICHERO ===========================================//
