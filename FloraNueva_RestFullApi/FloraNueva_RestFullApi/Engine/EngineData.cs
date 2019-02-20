using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace FloraNueva_RestFullApi.Engine
{
    public class EngineData
    {
        private static EngineData valor;
        public static EngineData Instance()
        {
            if ((valor == null))
            {
                valor = new EngineData();
            }
            return valor;
        }

        public static string Sitio = ConfigurationManager.AppSettings.Get("Sitio");

        public const string dateFormatUtc = "yyyy-MM-ddTHH:mm:ss+hh:mm";
        public const string NoHayFilas = "-101";
        public const string NoExisteRegistro = "-102";
        public const string SyncEnProceso = "-109";
        public const string SyncRegistroFallido = "-110";
        public const string SyncNoPermitida = "-111";
        public const string SyncIniciado = "INICIADO";
        public const string SyncTerminado = "TERMINADO";
        public const string SyncOk = "Ok";
        public const string SyncFallo = "-112";
        public const string SyncNoExiste = "-113";
        public const string SyncActualizacionFallo = "-114";
        public const string ExisteNumeroCedula = "-115";
        public const string FalloNuevoProductor = "-116";
        public const string NoExisteIdentificador = "-117";
        public const string FalloActualizarProductor = "-118";
        public const string FalloNuevoProductorInterno = "-119";
        public const string FalloActualizarAbejasNativasVisitaGrupalParticipante = "-120";
        public const string FalloAnProVisitaIndividual = "-121";
        public const string FalloActualizarProductorMiembroHogar = "-122";
        public const string FalloActualizarProductorDocumentoEntregado = "-123";
        public const string FalloActualizarProductorContacto = "-124";
        public const string FalloActualizarMeliponarioCajaAccion = "-125";
        public const string FalloActualizarMeliponarioCaja = "-126";
        public const string FalloActualizarMeliponarioCajaHistorial = "-127";
        public const string FalloActualizarMeliponario = "-128";
        public const string FalloActualizarProductorInventarioEspecies = "-129";
        public const string FalloActualizarAbejasNativasVisitagrupal = "-130";
        public const string FalloActualizarProductorInterno = "-131";
        public const string FalloActualizarProductorProyecto= "-132";
        public const string FalloAnProMaterialEntregado = "-133";
        public const string ProductorProyectoActivo = "-134";
        public const string FalloActualizarAbejasNativasVisitaGrupal= "-135";
        public const string FalloActualizarMeliponarioCosechaDetalle = "-136";
        public const string FalloActualizarMeliponarioCosechaDetalleCaja = "-137";
        public const string FalloActualizarMeliponarioCosecha = "-138";
        public const string IdMeliponarioMasDe30Cajas = "-139";
        public const string FalloInsertarProductorDocumentoEntregado = "-140";
        public const string ExisteIdentificador = "-141";
        public const string FalloInsertarProductorContacto = "-142";
        public const string FalloInsertarProductorMiembroHogar = "-143";
        public const string ExisteCodigoFloraNueva = "-144";
        public const string FalloInsertarProductorInventarioEspecies = "-145";
        public const string FalloInsertarProductorAbejasNativasMaterialEntregado = "-146";
        public const string FalloActualizarProductorAbejasNativasMaterialEntregado= "-147";
        public const string FalloInsertarProductorDetalleProduccionAnimal = "-148";
        public const string FalloActualizarProductorDetalleProduccionAnimal = "-149";
        public const string FalloInsertarProductorDetalleProduccionVegetal= "-150";
        public const string FalloActualizarProductorDetalleProduccionVegetal = "-151";
        public const string FalloInsertarMeliponario = "-152";
        public const string NoDataSyncEstado = "-153";
        public const string FalloInsertarProductorProyecto = "-154";
        public const string FalloInsertarAbejasNativasVisitaGrupal= "-155";
        public const string FalloInsertarAbejasNativasVisitaGrupalParticipante = "-156";
        public const string FalloInsertarProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria = "-157";
        public const string FalloActualizarProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria = "-158";
        public const string FalloInsertarProductorAbejasNativasVisitaIndividualColmenaEnCaja = "-159";
        public const string FalloActualizarProductorAbejasNativasVisitaIndividualColmenaEnCaja = "-160";
        public const string FalloInsertarProductorAbejasNativasVisitaIndividualColmenaEnTrampa = "-161";
        public const string FalloActualizarProductorAbejasNativasVisitaIndividualColmenaEnTrampa = "-162";
        public const string FalloInsertarProductorAbejasNativasVisitaIndividual = "-163";
        public const string FalloActualizarProductorAbejasNativasVisitaIndividual = "-164";
        public const string FalloInsertarMeliponarioCaja = "-165";
        public const string FalloInsertarMeliponarioCajaHistorial = "-166";
        public const string FalloInsertarMeliponarioCosecha = "-167";
        public const string FalloInsertarMeliponarioCosechaDetalle = "-168";
        public const string FalloInsertarMeliponarioCosechaDetalleCaja = "-169";
        public const string FalloInsertarMeliponarioCajaAccion = "-170";
        public const string NoConcuerdaVersion = "-171";
        public const string Zero = "0";
        public const string SyncActualizacionOK = "Ok";
        public const string Insertar = "INSERTAR";
        public const string Actualizar = "ACTUALIZAR";
        public const string ActualizarEstado = "ACTUALIZAR_ESTADO";


        private string[] Tabla = 
        {
            "AbejasNativasVisitaGrupal",
            "AbejasNativasVisitaGrupalParticipante",
            "Abono",
            "ActvidadAgricola",
            "AmbienteSocialComunidad",
            "Animales",
            "ApoyoVecinosCasoNecesidad",
            "AustedLeGustaria",
            "CategoriaActividadPrincipal",
            "CategoriaExplotacionAgricola",
            "CategoriaInfraestructura",
            "CategoriaManejo",
            "CategoriaMecanizacion",
            "CategoriaUsoSuelo",
            "CondicionAseguramiento",
            "CondicionLaboral",
            "ConLaActualSituacionEconomica",
            "ConLosIngresosUstedEstimaQue",
            "ControlDeMaleza",
            "DestinoDeLaProduccion",
            "DestinoMiel",
            "DivisionAdministrativa1",
            "DivisionAdministrativa2",
            "DivisionAdministrativa3",
            "DondeColocaLasColmenas",
            "DondeUstedProduce",
            "ElTamannoDeSuParcelaEs",
            "EspecieAbeja",
            "EstadoCivil",
            "EstadoDiagnostico",
            "EstadoGeneralViviendaACFN",
            "EstadoGeneralViviendaProductor",
            "EstructuraGeneracionalHogar",
            "ExistenciaTransportePublico",
            "FacilidadAccesoComunidad",
            "FacilidadAccesoVivienda",
            "FormaJuridicaExplotacion",
            "FuenteAguaVivienda",
            "Genero",
            "Grupo",
            "LaViviendaEsANombreSuyo",
            "LograProducir",
            "Meliponario",
            "MeliponarioCaja",
            "MeliponarioCajaAccion",
            "MeliponarioCajaHistorial",
            "MeliponarioCosecha",
            "MeliponarioCosechaDetalle",
            "MeliponarioCosechaDetalleCaja",
            "NivelConocimientoMeliponicultura",
            "NivelEscolar",
            "OrientacionTecnicoEco",
            "OrigenColonia",
            "OrigenDeLasSemillas",
            "Pais",
            "Parentezco",
            "PertenenciaGrupoComunitario",
            "Plaguicidas",
            "PosesionMedioTransportePublico",
            "PotencialLugarParaTenerAbejas",
            "Productor",
            "ProductorAbejasNativasMaterialEntregado",
            "ProductorAbejasNativasVisitaIndividual",
            "ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria",
            "ProductorAbejasNativasVisitaIndividualColmenasEnCaja",
            "ProductorAbejasNativasVisitaIndividualColmenasEnTrampa",
            "ProductorContacto",
            "ProductorDetalleProduccionAnimal",
            "ProductorDetalleProduccionVegetal",
            "ProductorDocumentoEntregado",
            "ProductorMiembroHogar",
            "ProductorProyecto",
            "ProporcionAutoconsumoAlimentosHogar",
            "Proyecto",
            "RiesgoRoboColmenas",
            "SabeLeerYEscribir",
            "SistemaRiegoCultivos",
            "SituacionAutoempleo",
            "SuViviendaEs",
            "TenenciaDeLaTierra",
            "Territorio",
            "TiempoLlegarCentroEducativo",
            "TiempoLlegarCentroSalud",
            "TipoAccionMeliponario",
            "TipoContacto",
            "TipoDocumento",
            "TipoMaterialEntregado",
            "TipoMeliponario",
            "UstedConsideraContarConApoyoDeSuFamilia",
            "UstedConsideraQueSuHogarEs",
            "Usuario",
            "ProductorInventarioEspecies",
         }; 
        public string [] NombreTabla() { return Tabla; }

        private string[] TablaBidireccional =
        {
            "AbejasNativasVisitaGrupal",
            "AbejasNativasVisitaGrupalParticipante",
            "Meliponario",
            "MeliponarioCaja",
            "MeliponarioCajaAccion",
            "MeliponarioCajaHistorial",
            "MeliponarioCosecha",
            "MeliponarioCosechaDetalle",
            "MeliponarioCosechaDetalleCaja",
            "Productor",
            "ProductorAbejasNativasMaterialEntregado",
            "ProductorAbejasNativasVisitaIndividual",
            "ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria",
            "ProductorAbejasNativasVisitaIndividualColmenasEnCaja",
            "ProductorAbejasNativasVisitaIndividualColmenasEnTrampa",
            "ProductorContacto",
            "ProductorDetalleProduccionAnimal",
            "ProductorDetalleProduccionVegetal",
            "ProductorDocumentoEntregado",
            "ProductorInventarioEspecies",
            "ProductorMiembroHogar",
            "ProductorProyecto"
        };
        public string[] NombreTablaBidireccional() { return TablaBidireccional; }

        private string[] TablaUnidireccional =
        {
           "Abono",
           "ActividadAgricola",
           "AmbienteSocialComunidad",
           "Animales",
           "ApoyoVecinosCasoNecesidad",
           "AUstedLeGustaria",
           "CategoriaActividadPrincipal",
           "CategoriaExplotacionAgricola",
           "CategoriaInfraestructura",
           "CategoriaManejo",
           "CategoriaMecanizacion",
           "CategoriaUsoSuelo",
           "CondicionAseguramiento",
           "CondicionLaboral",
           "ConLaActualSituacionEconomica",
           "ConLosIngresosUstedEstimaQue",
           "ControlDeMaleza",
           "DestinoDeLaProduccion",
           "DestinoMiel",
           "DivisionAdministrativa1",
           "DivisionAdministrativa2",
           "DivisionAdministrativa3",
           "DondeColocaLasColmenas",
           "DondeUstedProduce",
           "ElTamannoDeSuParcelaEs",
           "EspecieAbeja",
           "EstadoCivil",
           "EstadoDiagnostico",
           "EstadoGeneralViviendaACFN",
           "EstadoGeneralViviendaProductor",
           "EstructuraGeneracionalHogar",
           "ExistenciaTransportePublico",
           "FacilidadAccesoComunidad",
           "FacilidadAccesoVivienda",
           "FormaJuridicaExplotacion",
           "FuenteAguaVivienda",
           "Genero",
           "Grupo",
           "LaViviendaEsANombreSuyo",
           "LograProducir",
           "NivelConocimientoMeliponicultura",
           "NivelEscolar",
           "OrientacionTecnicoEco",
           "OrigenColonia",
           "OrigenDeLasSemillas",
           "Pais",
           "Parentezco",
           "PertenenciaGrupoComunitario",
           "Plaguicidas",
           "PosesionMedioTransportePublico",
           "PotencialLugarParaTenerAbejas",
           "ProporcionAutoconsumoAlimentosHogar",
           "Proyecto",
           "RiesgoRoboColmenas",
           "SabeLeerYEscribir",
           "SistemaRiegoCultivos",
           "SituacionAutoempleo",
           "SuViviendaEs",
           "TenenciaDeLaTierra",
           "Territorio",
           "TiempoLlegarCentroEducativo",
           "TiempoLlegarCentroSalud",
           "TipoAccionMeliponario",
           "TipoContacto",
           "TipoDocumento",
           "TipoMaterialEntregado",
           "TipoMeliponario",
           "UstedConsideraContarConApoyoDeSuFamilia",
           "UstedConsideraQueSuHogarEs",
           "Usuario"
        };
           public string[] NombreTablaUnidireccional() { return TablaUnidireccional; }

    }
}