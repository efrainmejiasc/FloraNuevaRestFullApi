using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FloraNueva_RestFullApi.Models
{
    public class FloraNuevaCatalogo
    {
        public class Abono
        {
            public int IdAbono { get; set; }
            public string Nombre { get; set; }
        }

        public class ActividadAgricola
        {
            public int IdActividadAgricola { get; set; }
            public string Nombre { get; set; }
        }

        public class AmbienteSocialComunidad
        {
            public int IdAmbienteSocialComunidad { get; set; }
            public string Nombre { get; set; }
        }

        public class Animales
        {
            public int IdAnimales { get; set; }
            public string Nombre { get; set; }
        }

        public class ApoyoVecinosCasoNecesidad
        {
            public int IdApoyoVecinosCasoNecesidad { get; set; }
            public string Nombre { get; set; }
        }

        public class AUstedLeGustaria
        {
            public int IdAUstedLeGustaria { get; set; }
            public string Nombre { get; set; }
        }

        public class CategoriaActividadPrincipal
        {
            public int IdCategoriaActividadPrincipal { get; set; }
            public string Nombre { get; set; }
        }

        public class CategoriaExplotacionAgricola
        {
            public int IdCategoriaExplotacionAgricola { get; set; }
            public string Nombre { get; set; }
        }

        public class CategoriaInfraestructura
        {
            public int IdCategoriaInfraestructura { get; set; }
            public string Nombre { get; set; }
        }

        public class CategoriaManejo
        {
            public int IdCategoriaManejo { get; set; }
            public string Nombre { get; set; }
        }

        public class CategoriaMecanizacion
        {
            public int IdCategoriaMecanizacion { get; set; }
            public string Nombre { get; set; }
        }

        public class CategoriaUsoSuelo
        {
            public int IdCategoriaUsoSuelo { get; set; }
            public string Nombre { get; set; }
        }

        public class CondicionAseguramiento
        {
            public int IdCondicionAseguramiento { get; set; }
            public string Nombre { get; set; }
        }

        public class CondicionLaboral
        {
            public int IdCondicionLaboral { get; set; }
            public string Nombre { get; set; }
        }

        public class ConLaActualSituacionEconomica
        {
            public int IdConLaActualSituacionEconomica { get; set; }
            public string Nombre { get; set; }
        }

        public class ConLosIngresosUstedEstimaQue
        {
            public int IdConLosIngresosUstedEstimaQue { get; set; }
            public string Nombre { get; set; }
        }

        public class ControlDeMaleza
        {
            public int IdControlDeMaleza { get; set; }
            public string Nombre { get; set; }
        }

        public class DestinoDeLaProduccion
        {
            public int IdDestinoDeLaProduccion { get; set; }
            public string Nombre { get; set; }
        }

        public class DestinoMiel
        {
            public int IdDestinoMiel { get; set; }
            public string Nombre { get; set; }
        }

        public class DivisionAdministrativa1
        {
            public int IdDivisionAdministrativa1 { get; set; }
            public string Nombre { get; set; }
        }

        public class DivisionAdministrativa2
        {
            public int IdDivisionAdministrativa2 { get; set; }
            public int IdDivisionAdministrativa1 { get; set; }
            public string Nombre { get; set; }
        }

        public class DivisionAdministrativa3
        {
            public int IdDivisionAdministrativa3 { get; set; }
            public int IdDivisionAdministrativa2 { get; set; }
            public string Nombre { get; set; }
        }

        public class DondeColocaLasColmenas
        {
            public int IdDondeColocaLasColmenas { get; set; }
            public string Nombre { get; set; }
        }

        public class DondeUstedProduce
        {
            public int IdDondeUstedProduce { get; set; }
            public string Nombre { get; set; }
        }

        public class ElTamannoDeSuParcelaEs
        {
            public int IdElTamannoDeSuParcelaEs { get; set; }
            public string Nombre { get; set; }
        }

        public class EspecieAbeja
        {
            public int IdEspecieAbeja { get; set; }
            public string Nombre { get; set; }
        }

        public class EstadoCivil
        {
            public int IdEstadoCivil { get; set; }
            public string Nombre { get; set; }
        }

        public class EstadoDiagnostico
        {
            public int IdEstadoDiagnostico { get; set; }
            public string Nombre { get; set; }
        }

        public class EstadoGeneralViviendaACFN
        {
            public int IdEstadoGeneralViviendaACFN { get; set; }
            public string Nombre { get; set; }
        }

        public class EstadoGeneralViviendaProductor
        {
            public int IdEstadoGeneralViviendaProductor { get; set; }
            public string Nombre { get; set; }
        }

        public class EstructuraGeneracionalHogar
        {
            public int IdEstructuraGeneracionalHogar { get; set; }
            public string Nombre { get; set; }
        }

        public class ExistenciaTransportePublico
        {
            public int IdExistenciaTransportePublico { get; set; }
            public string Nombre { get; set; }
        }

        public class FacilidadAccesoComunidad
        {
            public int IdFacilidadAccesoComunidad { get; set; }
            public string Nombre { get; set; }
        }

        public class FacilidadAccesoVivienda
        {
            public int IdFacilidadAccesoVivienda { get; set; }
            public string Nombre { get; set; }
        }

        public class FormaJuridicaExplotacion
        {
            public int IdFormaJuridicaExplotacion { get; set; }
            public string Nombre { get; set; }
        }

        public class FuenteAguaVivienda
        {
            public int IdFuenteAguaVivienda { get; set; }
            public string Nombre { get; set; }
        }

        public class Genero
        {
            public int IdGenero { get; set; }
            public bool AplicaParaAnimales { get; set; }
        }

        public class Grupo
        {
            public int IdGrupo { get; set; }
            public string Nombre { get; set; }
        }

        public class LaViviendaEsANombreSuyo
        {
            public int IdLaViviendaEsANombreSuyo { get; set; }
            public string Nombre { get; set; }
        }

        public class LograProducir
        {
            public int IdLograProducir { get; set; }
            public string Nombre { get; set; }
        }

        public class NivelConocimientoMeliponicultura
        {
            public int IdNivelConocimientoMeliponicultura { get; set; }
            public string Nombre { get; set; }
        }

        public class NivelEscolar
        {
            public int IdNivelEscolar { get; set; }
            public string Nombre { get; set; }
        }

        public class OrientacionTecnicoEco
        {
            public int IdOrientacionTecnicoEco { get; set; }
            public string Nombre { get; set; }
        }

        public class OrigenColonia
        {
            public int IdOrigenColonia { get; set; }
            public string Nombre { get; set; }
        }

        public class OrigenDeLasSemillas
        {
            public int IdOrigenDeLasSemillas { get; set; }
            public string Nombre { get; set; }
        }

        public class Pais
        {
            public int IdPais { get; set; }
            public string Nombre { get; set; }
            public string ISO3 { get; set; }
            public int IdMonedaOficial { get; set; }
            public string CodigoPaisTelefono { get; set; }
        }

        public class Parentezco
        {
            public int IdParentezco { get; set; }
            public string Nombre { get; set; }
        }

        public class PertenenciaGrupoComunitario
        {
            public int IdPertenenciaGrupoComunitario { get; set; }
            public string Nombre { get; set; }
        }

        public class Plaguicidas
        {
            public int IdPlaguicidas { get; set; }
            public string Nombre { get; set; }
        }

        public class PosesionMedioTransportePublico
        {
            public int IdPosesionMedioTransportePublico { get; set; }
            public string Nombre { get; set; }
        }

        public class PotencialLugarParaTenerAbejas
        {
            public int IdPotencialLugarParaTenerAbejas { get; set; }
            public string Nombre { get; set; }
        }

        public class ProporcionAutoconsumoAlimentosHogar
        {
            public int IdProporcionAutoconsumoAlimentosHogar { get; set; }
            public string Nombre { get; set; }
        }

        public class Proyecto
        {
            public int IdProyecto { get; set; }
            public string Nombre { get; set; }
        }

        public class RiesgoRoboColmenas
        {
            public int IdRiesgoRoboColmenas { get; set; }
            public string Nombre { get; set; }
        }

        public class SabeLeerYEscribir
        {
            public int IdSabeLeerYEscribir { get; set; }
            public string Nombre { get; set; }
        }

        public class SistemaRiegoCultivos
        {
            public int IdSistemaRiegoCultivos { get; set; }
            public string Nombre { get; set; }
        }

        public class SituacionAutoempleo
        {
            public int IdSituacionAutoempleo { get; set; }
            public string Nombre { get; set; }
        }

        public class SuViviendaEs
        {
            public int IdSuViviendaEs { get; set; }
            public string Nombre { get; set; }
        }

        public class TenenciaDeLaTierra
        {
            public int IdTenenciaDeLaTierra { get; set; }
            public string Nombre { get; set; }
        }

        public class Territorio
        {
            public int IdTerritorio { get; set; }
            public string Nombre { get; set; }
        }

        public class TiempoLlegarCentroEducativo
        {
            public int IdTiempoLlegarCentroEducativo { get; set; }
            public string Nombre { get; set; }
        }

        public class TiempoLlegarCentroSalud
        {
            public int IdTiempoLlegarCentroSalud { get; set; }
            public string Nombre { get; set; }
        }

        public class TipoAccionMeliponario
        {
            public int IdTipoAccionMeliponario { get; set; }
            public string Nombre { get; set; }
        }

        public class TipoContacto
        {
            public int IdTipoContacto { get; set; }
            public string Nombre { get; set; }
        }

        public class TipoDocumento
        {
            public int IdTipoDocumento { get; set; }
            public string Nombre { get; set; }
        }

        public class TipoMaterialEntregado
        {
            public int IdTipoMaterialEntregado { get; set; }
            public string Nombre { get; set; }
        }

        public class TipoMeliponario
        {
            public int IdTipoMeliponario { get; set; }
            public string Nombre { get; set; }
        }

        public class UstedConsideraContarConApoyoDeSuFamilia
        {
            public int IdUstedConsideraContarConApoyoDeSuFamilia { get; set; }
            public string Nombre { get; set; }
        }

        public class UstedConsideraQueSuHogarEs
        {
            public int IdUstedConsideraQueSuHogarEs { get; set; }
            public string Nombre { get; set; }
        }

        public class Usuario
        {
            public int IdUsuario { get; set; }
            public int IdGenero { get; set; }
            public int IdPais { get; set; }
            public int IdIdioma { get; set; }
            public DateTime FechaDeRegistro { get; set; }
            public DateTime UltimaModificacion { get; set; }
            public string Login { get; set; }
            public string Password { get; set; }
            public byte[] Foto { get; set; }
            public string Nombre { get; set; }
            public string Apellido1 { get; set; }
            public string Apellido2 { get; set; }
            public string CorreoElectronico { get; set; }
            public string Telefono { get; set; }
            public string Direccion { get; set; }
            public string Observaciones { get; set; }
            public int IntentosRealizados { get; set; }
            public bool Bloqueado { get; set; }
            public bool Activo { get; set; }
            public bool Visible { get; set; }
            public bool ForzarCambioPassword { get; set; }
            public bool RecuperarContrasenna { get; set; }
            public DateTime RecuperarContrasennaFecha { get; set; }
        }

    }
}