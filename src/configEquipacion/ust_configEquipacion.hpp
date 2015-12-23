//=======================================================================================================//
// Archivo: ust_configEquipacio.hpp                                                                      //
// Autor: CC_Magnetar                                                                                   //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/11/26                                                                    //
// Descripció: Este fichero sirve para definir las funciones que están disponibles si se usa este módulo //
//             durante la misión. En este caso se declara las funciones que configuran el equipo de la   //
//             unidad jugable.                                                                           //
// Cambios: 1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

// Especifica que este componente ha sido cargado.
#ifdef UST_COMPONENTS
    class configEquipacion {};
#endif

// Define las funciones que tiene este componente
#ifdef UST_FUNCIONES
    class configEquipacion {
        file = "src\configEquipacion\funciones";
        class configEquipacion{};
    };
#endif

// Define los parámetros configurables al inicio de misión.
#ifdef UST_PARAMETROS
    //===================================================================================================//
    // Delimitador                                                                                       //
    //===================================================================================================//
    class ust_paramLinia_perfiles {
        title = "========== Configuración del equipo";
        values[] = {0};
        texts[] = {""};
        default = 0;
    };

    //===================================================================================================//
    // Perfiles: Usar los perfiles cuando se equipan las unidades                                        //
    // Opción por defecto: Los perfiles no se usan.                                                      //
    //===================================================================================================//
    class ust_param_utilitzarPerfils {
        title = "Usar Perfiles";
        values[] = {0,1};
        texts[] = {"No","Si"};
        default = 0;
    };
#endif

//========================================== FIN DEL FICHERO ============================================//
