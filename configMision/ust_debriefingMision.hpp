//=======================================================================================================//
// Archivo: ust_debriefingMision.hpp                                                                     //
// Autor: CC_Magnetar                                                                                    //
// Adaptado por: [UST] Artur																			 //
// Versión: 1.0                                                                                          //
// Creación del Documento: 2015/11/06                                                                    //
// Descripción: Este documento sirve para definidr el configurar que addons se van a configurar          //
//              automaticamente usando los scripts incluidos en la Plantilla Basica para Misiones. Los   //
//              parametros de la misión, en el caso de que existan, tambien se tendran en cuenta         //
// Cambios: 0.1 (2015/11/05) Versión inicial.                                                            //
//          1.0 (2015/11/26) Versión estable de la plantilla.                                            //
//=======================================================================================================//

//=======================================================================================================//
// DEBRIEFING: Información para cuando finalice la misión.                                               //
//=======================================================================================================//
class CfgDebriefing {
    class FinalExit1 {
        title = "Final #1";
        subtitle = "";
        description = "*** Debriefing del final #1. ***";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class FinalExit2 {
        title = "Final #2";
        subtitle = "";
        description = "*** Debriefing del final #2. ***";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    //class FinalExit3, FinalExit4, ....

    class FinalFallido1 {
        title = "Misión fallida #1";
        subtitle = "";
        description = "*** Debriefing del final fallido #1. ***";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    class FinalFallit2 {
        title = "Misión fallida #2";
        subtitle = "";
        description = "*** Debriefing final fallido #2. ***";
        pictureBackground = "";
        picture = "b_inf";
        pictureColor[] = {0.0,0.3,0.6,1};
    };

    //class FinalFallido3, FinalFallido4, ....

    class FracasoAbsoluto {
        title = "Fracaso absoluto";
        subtitle = "";
        description = "*** Descripción de que es fracaso absoluto. ***";
        pictureBackground = "";
        picture = "KIA";
        pictureColor[] = {0.0,0.3,0.6,1};
    };
};

//=========================================== FIN DEL FICHERO ===========================================//
