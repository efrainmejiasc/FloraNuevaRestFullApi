using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using FloraNueva_RestFullApi.Models;

namespace FloraNueva_RestFullApi.Engine
{
    public class EngineDb
    {
        private string cadenaConexion = ConfigurationManager.ConnectionStrings["CnxFloraNueva"].ToString();

        public DataTable SeleccionarProductor(string Identificador)
        {
            DataTable dataTabla = new DataTable();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);

            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_SeleccionarProductor", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@Identificador", Identificador);
                SqlDataAdapter dataAdaptador = new SqlDataAdapter(command);
                dataAdaptador.Fill(dataTabla);
                Conexion.Close();
            }
            return dataTabla;
        }

        public DataTable SeleccionarVistaProductores()
        {
            DataTable dataTabla = new DataTable();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);

            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_SeleccionarVistaProductores", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter dataAdaptador = new SqlDataAdapter(command);
                dataAdaptador.Fill(dataTabla);
                Conexion.Close();
            }
            return dataTabla;
        }

        public DataTable SeleccionarTodasFilasTabla(string NombreTabla)
        {
            DataTable dataTabla = new DataTable();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);

            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_SeleccionarTodasFilasTabla", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@SQL", "SELECT * FROM " + NombreTabla + " WITH (HOLDLOCK, ROWLOCK) ORDER BY Id" + NombreTabla);
                SqlDataAdapter dataAdaptador = new SqlDataAdapter(command);
                dataAdaptador.Fill(dataTabla);
                Conexion.Close();
            }
            return dataTabla;
        }

        public int SeleccionarIdTabla(string NombreTabla,string Identificador)
        {
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            int idTabla = 0;
            object obj = new object();
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_SeleccionarTodasFilasTabla", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@SQL", EngineFloraNueva.ConstruirSeleccionSql(NombreTabla, Identificador));
                obj = command.ExecuteScalar();
                if (obj != null)
                {
                    idTabla = Convert.ToInt32(obj);
                }
                Conexion.Close();
            }
            return idTabla;
        }

        public DataTable SeleccionarCajasMeliponarioPorId(string IdMeliponario)
        {
            DataTable dt = new DataTable();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_SeleccionarTodasFilasTabla", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@SQL", EngineFloraNueva.ConstruirSeleccionMeliponarioCajaPorIdMeliponario(IdMeliponario));
                SqlDataAdapter dataAdaptador = new SqlDataAdapter(command);
                dataAdaptador.Fill(dt);
            }
            return dt;
        }

        public DataTable SeleccionarCosechaDetallePorIdMeliponarioCosecha(string IdMeliponarioCosecha)
        {
            DataTable dt = new DataTable();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_SeleccionarTodasFilasTabla", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@SQL", EngineFloraNueva.ConstruirSeleccionCosechaDetallePorIdMeliponarioCosecha(IdMeliponarioCosecha));
                SqlDataAdapter dataAdaptador = new SqlDataAdapter(command);
                dataAdaptador.Fill(dt);
            }
            return dt;
        }

        public DataTable SeleccionarCosechaDetalleCajaPorIdMeliponarioCosechaDetalle(string IdMeliponarioCosechaDetalle)
        {
            DataTable dt = new DataTable();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_SeleccionarTodasFilasTabla", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@SQL", EngineFloraNueva.ConstruirSeleccionCosechaDetalleCajaPorIdMeliponarioCosechaDetalle(IdMeliponarioCosechaDetalle));
                SqlDataAdapter dataAdaptador = new SqlDataAdapter(command);
                dataAdaptador.Fill(dt);
            }
            return dt;
        }

        public DataTable SeleccionarMeliponarioCajaHistorialPorIdMeliponarioCaja(string IdMeliponarioCaja)
        {
            DataTable dt = new DataTable();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_SeleccionarTodasFilasTabla", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@SQL", EngineFloraNueva.ConstruirSeleccionarMeliponarioCajaHistorialPorIdMeliponarioCaja(IdMeliponarioCaja));
                SqlDataAdapter dataAdaptador = new SqlDataAdapter(command);
                dataAdaptador.Fill(dt);
            }
            return dt;
        }

        public DataTable SeleccionarGenerica(string NombreTabla, string NombreCampo , string ValorCampo)
        {
            DataTable dt = new DataTable();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_SeleccionarTodasFilasTabla", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@SQL", "SELECT * FROM " + NombreTabla + " WITH (HOLDLOCK, ROWLOCK) WHERE " + NombreCampo + " = " + ValorCampo);
                SqlDataAdapter dataAdaptador = new SqlDataAdapter(command);
                dataAdaptador.Fill(dt);
            }
            return dt;
        }


        public string SeleccionarCodigoFloraNueva(string Identificador)
        {
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            string codigoFloraNueva = string.Empty;
            object obj = new object();
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_SeleccionarCodigoFloraNueva", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@Identificador", Identificador);
                obj = command.ExecuteScalar();
                if (obj != null)
                {
                    codigoFloraNueva = Convert.ToString(obj);
                }
                Conexion.Close();
            }
            return codigoFloraNueva;
        }


        public DataTable SeleccionarRegistroIdentificador(string NombreTabla, string Identificador,string Id)
        {
            DataTable dataTabla = new DataTable();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);

            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_SeleccionarRegistroIdentificador", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@SQL", EngineFloraNueva.ConstruirSeleccionSql(NombreTabla,Identificador,Id));
                SqlDataAdapter dataAdaptador = new SqlDataAdapter(command);
                dataAdaptador.Fill(dataTabla);
                Conexion.Close();
            }
            return dataTabla;
        }

        public DataTable SeleccionarRegistroConIdMeliponario(string NombreTabla, string IdMeliponario)
        {
            DataTable dataTabla = new DataTable();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);

            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_SeleccionarRegistroIdentificador", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@SQL", EngineFloraNueva.ConstruirSeleccionConIdMeliponario(NombreTabla, IdMeliponario));
                SqlDataAdapter dataAdaptador = new SqlDataAdapter(command);
                dataAdaptador.Fill(dataTabla);
                Conexion.Close();
            }
            return dataTabla;
        }

        public DataTable SeleccionarProductorMasProductorProyecto(string IdProyecto)
        {
            DataTable dataTabla = new DataTable();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);

            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_SeleccionarRegistroIdentificador", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@SQL", EngineFloraNueva.ConstruirSeleccionProductorMasProductorProyecto(IdProyecto));
                SqlDataAdapter dataAdaptador = new SqlDataAdapter(command);
                dataAdaptador.Fill(dataTabla);
                Conexion.Close();
            }
            return dataTabla;
        }

        public int NumeroDeCajasIdMeliponario(int IdMeliponario)
        {
            object obj = new object();
            int resultado = 0;
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_NumeroDeCajasIdMeliponario", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@IdMeliponario", IdMeliponario);
                obj = command.ExecuteScalar();
                Conexion.Close();
            }
            if (obj != null)
            {
                resultado = Convert.ToInt32(obj);
            }
            return resultado;
        }

        //SELECCIONA  FILAS DE UNA TABLA APARTIR DE LA ULTIMA SINCRONIZACION
        public DataTable SeleccionarFilasSync(string NombreTabla,string Version)
        {
            DataTable dataTabla = new DataTable();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);

            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_SeleccionarFilasSync", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@SQL", EngineFloraNueva.ContruirSeleccionFilasSyn(NombreTabla,Version));
                SqlDataAdapter dataAdaptador = new SqlDataAdapter(command);
                dataAdaptador.Fill(dataTabla);
                Conexion.Close();
            }
            return dataTabla;
        }

        //VALIDA QUE UN GUID EXISTA EN DB
        public int ExisteVersionSync(string Version)
        {
            object obj = new object();
            int resultado = 0;
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_ExisteVersionSync", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@Version", Version);
                obj = command.ExecuteScalar();
                Conexion.Close();
            }
            if (obj != null)
            {
                resultado = Convert.ToInt32(obj);
            }
            return resultado;
        }

        //VALIDA QUE EXISTE LA SINCRONIZACION DE VERSION INDICADA EN ESTADO INICIADO
        public int PermisoSync(string Version)
        {
            object obj = new object();
            int resultado = 0;
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_PermisoSync", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@Version", Version);
                obj = command.ExecuteScalar();
                Conexion.Close();
            }
            if (obj != null)
            {
                resultado = Convert.ToInt32(obj);
            }
            return resultado;
        }

        //CREA UNA NUEVA VERSION DE SINCRONIZACION
        public int InsertarSync(string Version, string Usuario, string Dispositivo, string Estado)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_InsertarSync", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@Version", Version);
                command.Parameters.AddWithValue("@Usuario", Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc",DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Estado", Estado);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
            return resultado;
        }

        //ACTUALIZA EL ESTADO DE LA SINCRONIZACION A TERMINADO
        public int ActualizarSyncEstado(string Version, string Estado)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_ActualizarSyncEstado", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@Version", Version);
                command.Parameters.AddWithValue("@Estado", Estado);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
            return resultado;
        }

        //VALIDA SI EXISTE UNA SINCRONIZACION EN PROCESO
        public  int ExisteSyncIniciada()
        {
            int resultado = 0;
            object obj = new object();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_ExisteSyncIniciada", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                obj = command.ExecuteScalar();
                Conexion.Close();
            }
            if (obj != null)
            {
                resultado = Convert.ToInt32(obj);
            }

            return resultado;
        }

        //VERIFICA QUE LA SINCRONIZACION FINALIZO CORRECTAMENTE
        public int SyncExito(string version)
        {
            object obj = new object();
            int resultado = 0;
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_SyncExito", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@Version", version);
                command.Parameters.AddWithValue("@Estado", Engine.EngineData.SyncTerminado);
                obj = command.ExecuteScalar();
                Conexion.Close();
            }
            if (obj != null)
            {
                resultado = Convert.ToInt32(obj);
            }
            return resultado;
        }

        // VALIDA SI EXISTE EL CODIGO FLORA NUEVA
        public int ExisteCodigoFloraNueva(string CodigoFloraNueva)
        {
            object obj = new object();
            int resultado = 0;
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_ExisteCodigoFloraNueva", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@CodigoFloraNueva", CodigoFloraNueva);
                obj = command.ExecuteScalar();
                Conexion.Close();
            }
            if (obj != null)
            {
                resultado = Convert.ToInt32(obj);
            }
            return resultado;
        }

        // VALIDA SI EXISTE EL NUMERO DE CEDULA DEL PRODUCTOR
        public int ExisteNumeroCedula(string NumeroCedula)
        {
            object obj = new object();
            int resultado = 0;
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_ExisteNumeroCedula", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@NumeroCedula", NumeroCedula);
                obj = command.ExecuteScalar();
                Conexion.Close();
            }
            if (obj != null)
            {
                resultado = Convert.ToInt32(obj);
            }
            return resultado;
        }

        // VALIDA SI EXISTE IDENTIFICADOR(GUID) DEL PRODUCTOR
        public int ExisteIdentificador(string Identificador)
        {
            object obj = new object();
            int resultado = 0;
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_ExisteIdentificador", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@Identificador", Identificador);
                obj = command.ExecuteScalar();
                Conexion.Close();
            }
            if (obj != null)
            {
                resultado = Convert.ToInt32(obj);
            }
            return resultado;
        }

        // VALIDA SI EXISTE IDENTIFICADOR(GUID) 
        public int ExisteIdentificador(string Sp_Nombre ,string Identificador)
        {
            object obj = new object();
            int resultado = 0;
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand(Sp_Nombre, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@Identificador", Identificador);
                obj = command.ExecuteScalar();
                Conexion.Close();
            }
            if (obj != null)
            {
                resultado = Convert.ToInt32(obj);
            }
            return resultado;
        }

        public int ExisteIdentificadorGenerico(string NombreTabla, string Identificador)
        {
            object obj = new object();
            int resultado = 0;
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_ExisteIdentificadorGenerico", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@SQL", "SELECT Id" + NombreTabla + " FROM " + NombreTabla + " WITH (HOLDLOCK, ROWLOCK) WHERE Identificador = @Identificador");
                command.Parameters.AddWithValue("@Identificador", Identificador);
                obj = command.ExecuteScalar();
                Conexion.Close();
            }
            if (obj != null)
            {
                resultado = Convert.ToInt32(obj);
            }
            return resultado;
        }

        // VALIDA SI EXISTE PROYECTO ASOCIADO A UN PRODUCTOR 
        public int ExisteProductorProyectoActivo(string Identificador, DateTime FechaIntegracion)
        {
            object obj = new object();
            int resultado = 0;
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_ExisteProductorEnProyectoActivo", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@Identificador", Identificador);
                command.Parameters.AddWithValue("@FechaIntegracion", FechaIntegracion);
                obj = command.ExecuteScalar();
                Conexion.Close();
            }
            if (obj != null)
            {
                resultado = Convert.ToInt32(obj);
            }
            return resultado;
        }

        public int ExisteProductorAbejasNativasMaterialEntregado(string Identificador ,int IdTipoMaterialEntregado)
        {
            object obj = new object();
            int resultado = 0;
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_ExisteProductorAbejasNativasMaterialEntregado", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@Identificador", Identificador);
                command.Parameters.AddWithValue("@IdTipoMaterialEntregado", IdTipoMaterialEntregado);
                obj = command.ExecuteScalar();
                Conexion.Close();
            }
            if (obj != null)
            {
                resultado = Convert.ToInt32(obj);
            }
            return resultado;
        }

        public int ExisteProductorDocumentoEntregado(string Identificador, int IdTipoDocumento)
        {
            object obj = new object();
            int resultado = 0;
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_ExisteProductorDocumentoEntregado", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@Identificador", Identificador);
                command.Parameters.AddWithValue("@IdTipoDocumento", IdTipoDocumento);
                obj = command.ExecuteScalar();
                Conexion.Close();
            }
            if (obj != null)
            {
                resultado = Convert.ToInt32(obj);
            }
            return resultado;
        }

        // METODOS INSERTAR ACTUALIZAR BIDIRECCIONALES 

        public int InsertarActualizarProductor(FloraNuevaProductor.Productor Productor , string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            SqlCommand command = new SqlCommand(nombreSP, Conexion);
            using (Conexion)
            {
                Conexion.Open();             
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@Identificador", Productor.Identificador);
                command.Parameters.AddWithValue("@IdUsuarioEncuestador", Productor.IdUsuarioEncuestador);
                command.Parameters.AddWithValue("@FechaEncuesta", Productor.FechaEncuesta);
                command.Parameters.AddWithValue("@VisitaALaCasa", Productor.VisitaALaCasa);
                //  IdEstadoDiagnostico
                command.Parameters.AddWithValue("@IdEstadoDiagnostico", Productor.IdEstadoDiagnostico);
                command.Parameters.AddWithValue("@Nombres", Productor.Nombres);
                command.Parameters.AddWithValue("@Apellido1", Productor.Apellido1); 
                command.Parameters.AddWithValue("@Apellido2", Productor.Apellido2);
                if (Productor.Foto == null) { Productor.Foto = Engine.EngineFloraNueva.ImageToByteArray(Engine.EngineFloraNueva.ObtenerImagenNoDisponible()); }
                SqlParameter imageParam = command.Parameters.Add("@Foto", System.Data.SqlDbType.Image);
                imageParam.Value = Productor.Foto;
                if (Productor.CodigoFloraNueva == null) Productor.CodigoFloraNueva = string.Empty;
                command.Parameters.AddWithValue("@CodigoFloraNueva", Productor.CodigoFloraNueva); 
                command.Parameters.AddWithValue("@Sexo", Productor.Sexo); 
                command.Parameters.AddWithValue("@NumeroCedula", Productor.NumeroCedula);
                if (Productor.FechaNacimiento == Convert.ToDateTime("01/01/0001 0:00:00"))Productor.FechaNacimiento = Convert.ToDateTime("01/01/1900 0:00:00");
                command.Parameters.AddWithValue("@FechaNacimiento", Productor.FechaNacimiento);
                //IdEstadoCivil
                command.Parameters.AddWithValue("@IdEstadoCivil", Productor.IdEstadoCivil);
                if (Productor.PerteneceAAlgunGrupoEtnico == null) Productor.PerteneceAAlgunGrupoEtnico = string.Empty;
                command.Parameters.AddWithValue("@PerteneceAAlgunGrupoEtnico", Productor.PerteneceAAlgunGrupoEtnico); 
                //IdPais
                command.Parameters.AddWithValue("@IdPais", Productor.IdPais);
                //IdGrupo
                command.Parameters.AddWithValue("@IdGrupo", Productor.IdGrupo);
                //IdDivisionAdministrativa1
                command.Parameters.AddWithValue("@IdDivisionAdministrativa1", Productor.IdDivisionAdministrativa1);
                //IdDivisionAdministrativa2
                command.Parameters.AddWithValue("@IdDivisionAdministrativa2", Productor.IdDivisionAdministrativa2);
                //IdDivisionAdministrativa3
                command.Parameters.AddWithValue("@IdDivisionAdministrativa3", Productor.IdDivisionAdministrativa3);
                if (Productor .DivisionAdministrativa4 == null) Productor.DivisionAdministrativa4 = string.Empty;
                command.Parameters.AddWithValue("@DivisionAdministrativa4", Productor.DivisionAdministrativa4);
                if (Productor.DireccionExacta == null)Productor.DireccionExacta = string.Empty;
                command.Parameters.AddWithValue("@DireccionExacta", Productor.DireccionExacta); 
                //IdTerritorio
                command.Parameters.AddWithValue("@IdTerritorio", Productor.IdTerritorio);
                command.Parameters.AddWithValue("@GPSLatitud", Productor.GPSLatitud);
                command.Parameters.AddWithValue("@GPSLongitud", Productor.GPSLongitud);
                command.Parameters.AddWithValue("@Altitud", Productor.Altitud);
                if (Productor.ComentariosUbicacion == null) Productor.ComentariosUbicacion = string.Empty;
                command.Parameters.AddWithValue("@ComentariosUbicacion", Productor.ComentariosUbicacion); 
                if(Productor.ActividadLaboralPrincipal == null) Productor.ActividadLaboralPrincipal = string.Empty;
                command.Parameters.AddWithValue("@ActividadLaboralPrincipal", Productor.ActividadLaboralPrincipal); 

                if (Productor.ActividadLaboralSecundaria == null) Productor.ActividadLaboralSecundaria = string.Empty;
                command.Parameters.AddWithValue("@ActividadLaboralSecundaria", Productor.ActividadLaboralSecundaria);
                //IdCategoriaActividadPrincipal
                command.Parameters.AddWithValue("@IdCategoriaActividadPrincipal", Productor.IdCategoriaActividadPrincipal);
                //IdActividadAgricola
                command.Parameters.AddWithValue("@IdActividadAgricola", Productor.IdActividadAgricola);
                command.Parameters.AddWithValue("@TotalPersonasHogar", Productor.TotalPersonasHogar);
                command.Parameters.AddWithValue("@TotalPersonasActivasEconomicamente", Productor.TotalPersonasActivasEconomicamente);
                command.Parameters.AddWithValue("@TotalPersonasDependientes", Productor.TotalPersonasDependientes);
                command.Parameters.AddWithValue("@IndiceInsercionLaboralProductor", Productor.IndiceInsercionLaboralProductor);
                command.Parameters.AddWithValue("@IndiceNivelEducativoProductor", Productor.IndiceNivelEducativoProductor);
                command.Parameters.AddWithValue("@IndiceCiudadaniaSocialProductor", Productor.IndiceCiudadaniaSocialProductor);
                command.Parameters.AddWithValue("@IndiceInsercionProductivaProductor", Productor.IndiceInsercionProductivaProductor);
                command.Parameters.AddWithValue("@IndiceInclusionSocialProductor", Productor.IndiceInclusionSocialProductor);
                command.Parameters.AddWithValue("@IndiceInsercionLaboralHogar", Productor.IndiceInsercionLaboralHogar);
                command.Parameters.AddWithValue("@IndiceNivelEducativoHogar", Productor.IndiceNivelEducativoHogar);
                command.Parameters.AddWithValue("@IndiceCiudadaniaSocialHogar", Productor.IndiceCiudadaniaSocialHogar);
                command.Parameters.AddWithValue("@IndiceInsercionProductivaHogar", Productor.IndiceInsercionProductivaHogar);
                command.Parameters.AddWithValue("@TasaActividadEconomicaHogar", Productor.TasaActividadEconomicaHogar);
                command.Parameters.AddWithValue("@IndiceInclusionSocialHogar", Productor.IndiceInclusionSocialHogar);
                //IdFacilidadAccesoComunidad 
                command.Parameters.AddWithValue("@IdFacilidadAccesoComunidad", Productor.IdFacilidadAccesoComunidad);
                //IdFacilidadAccesoVivienda 
                command.Parameters.AddWithValue("@IdFacilidadAccesoVivienda", Productor.IdFacilidadAccesoVivienda);
                command.Parameters.AddWithValue("@IndiceFacilidadAcceso", Productor.IndiceFacilidadAcceso);
                //IdTiempoLlegarCentroEducativo
                command.Parameters.AddWithValue("@IdTiempoLlegarCentroEducativo", Productor.IdTiempoLlegarCentroEducativo);
                //IdTiempoLlegarCentroSalud 
                command.Parameters.AddWithValue("@IdTiempoLlegarCentroSalud ", Productor.IdTiempoLlegarCentroSalud);
                command.Parameters.AddWithValue("@IndiceCercaniaCentrosBasicos", Productor.IndiceCercaniaCentrosBasicos);
                //IdExistenciaTransportePublico
                command.Parameters.AddWithValue("@IdExistenciaTransportePublico", Productor.IdExistenciaTransportePublico);
                //IdPosesionMedioTransportePublico
                command.Parameters.AddWithValue("@IdPosesionMedioTransportePublico", Productor.IdPosesionMedioTransportePublico);
                if (Productor.EspecificarMediosTransporte == null) Productor.EspecificarMediosTransporte = string.Empty;
                command.Parameters.AddWithValue("@EspecificarMediosTransporte", Productor.EspecificarMediosTransporte);
                command.Parameters.AddWithValue("@IndiceCapacidadDesplazamiento", Productor.IndiceCapacidadDesplazamiento);
                command.Parameters.AddWithValue("@IndiceConexionProximidadGeografica", Productor.IndiceConexionProximidadGeografica);
                //IdEstructuraGeneracionalHogar
                command.Parameters.AddWithValue("@IdEstructuraGeneracionalHogar", Productor.IdEstructuraGeneracionalHogar);
                command.Parameters.AddWithValue("@OtrosFamiliaresVivenEnLaMismaComunidad", Productor.OtrosFamiliaresVivenEnLaMismaComunidad);
                //IdUstedConsideraContarConApoyoDeSuFamilia
                command.Parameters.AddWithValue("@IdUstedConsideraContarConApoyoDeSuFamilia", Productor.IdUstedConsideraContarConApoyoDeSuFamilia);
                command.Parameters.AddWithValue("@IndiceCercaniaRelacionFamiliar", Productor.IndiceCercaniaRelacionFamiliar);
                //IdApoyoVecinosCasoNecesidad 
                command.Parameters.AddWithValue("@IdApoyoVecinosCasoNecesidad", Productor.IdApoyoVecinosCasoNecesidad);
                //IdAmbienteSocialComunidad
                command.Parameters.AddWithValue("@IdAmbienteSocialComunidad", Productor.IdAmbienteSocialComunidad);
                command.Parameters.AddWithValue("@SeSienteUstedRealmenteParteComunidad", Productor.SeSienteUstedRealmenteParteComunidad);
                command.Parameters.AddWithValue("@UstedEsUnMiembroActivoDeAlgunGrupo", Productor.UstedEsUnMiembroActivoDeAlgunGrupo);
                if (Productor.MiembroActivoEspecificar == null) Productor.MiembroActivoEspecificar = string.Empty;
                command.Parameters.AddWithValue("@MiembroActivoEspecificar", Productor.MiembroActivoEspecificar);
                command.Parameters.AddWithValue("@IndiceCercaniaRelacionComunidad", Productor.IndiceCercaniaRelacionComunidad);
                command.Parameters.AddWithValue("@IndiceRelacionesSociales", Productor.IndiceRelacionesSociales);
                command.Parameters.AddWithValue("@IndiceGlobalBienestarSocialFamiliar", Productor.IndiceGlobalBienestarSocialFamiliar);
                //IdSuViviendaEs = 1;
                command.Parameters.AddWithValue("@IdSuViviendaEs", Productor.IdSuViviendaEs);
                //IdLaViviendaEsANombreSuyo 
                command.Parameters.AddWithValue("@IdLaViviendaEsANombreSuyo", Productor.IdLaViviendaEsANombreSuyo);
                if (Productor.LaViviendaEsANombreSuyoEspecificar == null) Productor.LaViviendaEsANombreSuyoEspecificar = string.Empty;
                command.Parameters.AddWithValue("@LaViviendaEsANombreSuyoEspecificar", Productor.LaViviendaEsANombreSuyoEspecificar);
                //IdEstadoGeneralViviendaACFN 
                command.Parameters.AddWithValue("@IdEstadoGeneralViviendaACFN", Productor.IdEstadoGeneralViviendaACFN);
                //IdEstadoGeneralViviendaProductor 
                command.Parameters.AddWithValue("@IdEstadoGeneralViviendaProductor", Productor.IdEstadoGeneralViviendaProductor);
                command.Parameters.AddWithValue("@CantidadDormitorios", Productor.CantidadDormitorios);
                command.Parameters.AddWithValue("@HacinamientoPorDormitorios", Productor.HacinamientoPorDormitorios);
                command.Parameters.AddWithValue("@IndiceHacinamiento", Productor.IndiceHacinamiento);
                command.Parameters.AddWithValue("@IndiceEstadoVivienda", Productor.IndiceEstadoVivienda);
                command.Parameters.AddWithValue("@IndiceVivienda", Productor.IndiceVivienda);
                //IdFuenteAguaVivienda 
                command.Parameters.AddWithValue("@IdFuenteAguaVivienda", Productor.IdFuenteAguaVivienda);
                command.Parameters.AddWithValue("@AccesoALaElectricidad", Productor.AccesoALaElectricidad);
                command.Parameters.AddWithValue("@IndiceServiciosBasicos", Productor.IndiceServiciosBasicos);
                command.Parameters.AddWithValue("@TieneTelefonoResidencial", Productor.TieneTelefonoResidencial);
                command.Parameters.AddWithValue("@TieneTelefonoCelular", Productor.TieneTelefonoCelular);
                command.Parameters.AddWithValue("@TieneSennalTelefoniaMovilEnSuCasa", Productor.TieneSennalTelefoniaMovilEnSuCasa);
                command.Parameters.AddWithValue("@TieneAccesoAInternet", Productor.TieneAccesoAInternet);
                command.Parameters.AddWithValue("@IndiceServiciosComunicacion", Productor.IndiceServiciosComunicacion);
                command.Parameters.AddWithValue("@IndiceAccesoAServicios", Productor.IndiceAccesoAServicios);
                command.Parameters.AddWithValue("@RecibeAyudaFinanciera", Productor.RecibeAyudaFinanciera);
                if (Productor.RecibeAyudaFinancieraEspecificar == null) Productor.RecibeAyudaFinancieraEspecificar = string.Empty;
                command.Parameters.AddWithValue("@RecibeAyudaFinancieraEspecificar", Productor.RecibeAyudaFinancieraEspecificar);
                command.Parameters.AddWithValue("@PresupuestoSuficienteCubrirGastosBasicos", Productor.PresupuestoSuficienteCubrirGastosBasicos);
                if (Productor.ParaQueNoAlcanzaPresupuestoHogar == null) Productor.ParaQueNoAlcanzaPresupuestoHogar = string.Empty;
                command.Parameters.AddWithValue("@ParaQueNoAlcanzaPresupuestoHogar", Productor.ParaQueNoAlcanzaPresupuestoHogar);
                //IdConLosIngresosUstedEstimaQue 
                command.Parameters.AddWithValue("@IdConLosIngresosUstedEstimaQue", Productor.IdConLosIngresosUstedEstimaQue);
                command.Parameters.AddWithValue("@MontoMinimoMensualParaVivir", Productor.MontoMinimoMensualParaVivir);
                //IdConLaActualSituacionEconomica 
                command.Parameters.AddWithValue("@IdConLaActualSituacionEconomica", Productor.IdConLaActualSituacionEconomica);
                //IdUstedConsideraQueSuHogarEs 
                command.Parameters.AddWithValue("@IdUstedConsideraQueSuHogarEs", Productor.IdUstedConsideraQueSuHogarEs);
                command.Parameters.AddWithValue("@IndiceNivelVida", Productor.IndiceNivelVida);
                command.Parameters.AddWithValue("@IndiceBienestarEconomicoMaterialHogar", Productor.IndiceBienestarEconomicoMaterialHogar);
                command.Parameters.AddWithValue("@UstedProduceAlimentosParaSuHogar", Productor.UstedProduceAlimentosParaSuHogar);
                command.Parameters.AddWithValue("@GranosBasicos", Productor.GranosBasicos);
                command.Parameters.AddWithValue("@Hortalizas", Productor.Hortalizas);
                command.Parameters.AddWithValue("@Frutas", Productor.Frutas);
                command.Parameters.AddWithValue("@AnimalesYSusProductos", Productor.AnimalesYSusProductos);
                command.Parameters.AddWithValue("@ProductosTransformados", Productor.ProductosTransformados);
                command.Parameters.AddWithValue("@PlantasAromaticasYMedicinales", Productor.PlantasAromaticasYMedicinales);
                command.Parameters.AddWithValue("@QueProduceParaSuHogarOtros", Productor.QueProduceParaSuHogarOtros);
                // IdProporcionAutoconsumoAlimentosHogar 
                command.Parameters.AddWithValue("@IdProporcionAutoconsumoAlimentosHogar", Productor.IdProporcionAutoconsumoAlimentosHogar);
                //IdLograProducir 
                command.Parameters.AddWithValue("@IdLograProducir", Productor.IdLograProducir);
                //IdDondeUstedProduce 
                command.Parameters.AddWithValue("@IdDondeUstedProduce", Productor.IdDondeUstedProduce);
                //IdElTamannoDeSuParcelaEs 
                command.Parameters.AddWithValue("@IdElTamannoDeSuParcelaEs", Productor.IdElTamannoDeSuParcelaEs);
                // Productor.IdAUstedLeGustaria 
                command.Parameters.AddWithValue("@IdAUstedLeGustaria", Productor.IdAUstedLeGustaria);
                command.Parameters.AddWithValue("@TamannoParcela", Productor.TamannoParcela);
                command.Parameters.AddWithValue("@ManoObra", Productor.ManoObra);
                command.Parameters.AddWithValue("@FertilidadSuelos", Productor.FertilidadSuelos);
                command.Parameters.AddWithValue("@TiempoDisponible", Productor.TiempoDisponible);
                command.Parameters.AddWithValue("@RecursosFinancierosInvertirYTrabajar", Productor.RecursosFinancierosInvertirYTrabajar);
                command.Parameters.AddWithValue("@RiesgosNaturalesMuyFrecuentes", Productor.RiesgosNaturalesMuyFrecuentes);
                command.Parameters.AddWithValue("@OtrasLimitantes", Productor.OtrasLimitantes);
                command.Parameters.AddWithValue("@NoPoseeTierras", Productor.NoPoseeTierras);
                command.Parameters.AddWithValue("@NoPoseeConocimientos", Productor.NoPoseeConocimientos);
                command.Parameters.AddWithValue("@TrabajaEnOtroSectorYNoTieneTiempo", Productor.TrabajaEnOtroSectorYNoTieneTiempo);
                command.Parameters.AddWithValue("@NoLeInteresaPrefiereComprar", Productor.NoLeInteresaPrefiereComprar);
                command.Parameters.AddWithValue("@ElLugarNoEsAptoParaCultivar", Productor.ElLugarNoEsAptoParaCultivar);
                command.Parameters.AddWithValue("@OtrasRazones", Productor.OtrasRazones);
                command.Parameters.AddWithValue("@IndiceSoberaniaAlimenticia", Productor.IndiceSoberaniaAlimenticia);
                command.Parameters.AddWithValue("@FelicidadSuTrabajo", Productor.FelicidadSuTrabajo);
                command.Parameters.AddWithValue("@FelicidadSuSituacionFinanciera", Productor.FelicidadSuSituacionFinanciera);
                command.Parameters.AddWithValue("@FelicidadSuEstadoSalud", Productor.FelicidadSuEstadoSalud);
                command.Parameters.AddWithValue("@FelicidadSuVivienda", Productor.FelicidadSuVivienda);
                command.Parameters.AddWithValue("@FelicidadSuTiempoLibre", Productor.FelicidadSuTiempoLibre);
                command.Parameters.AddWithValue("@FelicidadSuFamilia", Productor.FelicidadSuFamilia);
                command.Parameters.AddWithValue("@FelicidadSuEducacion", Productor.FelicidadSuEducacion);
                command.Parameters.AddWithValue("@FelicidadElMedioAmbiente", Productor.FelicidadElMedioAmbiente);
                command.Parameters.AddWithValue("@FelicidadSuVidaSocial", Productor.FelicidadSuVidaSocial);
                command.Parameters.AddWithValue("@FelicidadSuParticipacionDentroComunidad", Productor.FelicidadSuParticipacionDentroComunidad);
                command.Parameters.AddWithValue("@IndiceFelicidad", Productor.IndiceFelicidad);
                //IdFormaJuridicaExplotacion 
                command.Parameters.AddWithValue("@IdFormaJuridicaExplotacion", Productor.IdFormaJuridicaExplotacion);
                command.Parameters.AddWithValue("@PerteneceAUnaOrganizacionAgropecuaria", Productor.PerteneceAUnaOrganizacionAgropecuaria);
                if (Productor.NombreOrganizacionAgropecuaria == null) Productor.NombreOrganizacionAgropecuaria = string.Empty;
                command.Parameters.AddWithValue("@NombreOrganizacionAgropecuaria", Productor.NombreOrganizacionAgropecuaria);
                // IdTenenciaDeLaTierra 
                command.Parameters.AddWithValue("@IdTenenciaDeLaTierra", Productor.IdTenenciaDeLaTierra);
                command.Parameters.AddWithValue("@ANombreDeQuienEstaElTerreno", Productor.ANombreDeQuienEstaElTerreno);
                if (Productor.SiEsANombreDeOtraPersonaEspecificar == null) Productor.SiEsANombreDeOtraPersonaEspecificar = string.Empty;
                command.Parameters.AddWithValue("@SiEsANombreDeOtraPersonaEspecificar", Productor.SiEsANombreDeOtraPersonaEspecificar);
                if (Productor.EspecificarUbicacionDeLaTierra == null) Productor.EspecificarUbicacionDeLaTierra = string.Empty;
                command.Parameters.AddWithValue("@EspecificarUbicacionDeLaTierra", Productor.EspecificarUbicacionDeLaTierra);
                command.Parameters.AddWithValue("@SuperficieDeLaParcela", Productor.SuperficieDeLaParcela);
                if (Productor.MiniDescripcionDeLaFinca == null) Productor.MiniDescripcionDeLaFinca = string.Empty;
                command.Parameters.AddWithValue("@MiniDescripcionDeLaFinca", Productor.MiniDescripcionDeLaFinca);
                if (Productor.FotoParcela == null) { Productor.FotoParcela= Engine.EngineFloraNueva.ImageToByteArray(Engine.EngineFloraNueva.ObtenerImagenNoDisponible()); }
                SqlParameter imageParam2 = command.Parameters.Add("@FotoParcela", System.Data.SqlDbType.Image);
                imageParam2.Value = Productor.FotoParcela;
                if (Productor.CualEsSuProduccionPrincipal == null) Productor.CualEsSuProduccionPrincipal = string.Empty;
                command.Parameters.AddWithValue("@CualEsSuProduccionPrincipal", Productor.CualEsSuProduccionPrincipal);
                if (Productor.CualesSonLasOtrasProduccionesQueTiene == null) Productor.CualesSonLasOtrasProduccionesQueTiene = string.Empty;
                command.Parameters.AddWithValue("@CualesSonLasOtrasProduccionesQueTiene", Productor.CualesSonLasOtrasProduccionesQueTiene);
                //IdAbono 
                command.Parameters.AddWithValue("@IdAbono", Productor.IdAbono);
                //IdControlDeMaleza 
                command.Parameters.AddWithValue("@IdControlDeMaleza", Productor.IdControlDeMaleza);
                //IdPlaguicidas 
                command.Parameters.AddWithValue("@IdPlaguicidas", Productor.IdPlaguicidas);
                //IdOrigenDeLasSemillas 
                command.Parameters.AddWithValue("@IdOrigenDeLasSemillas", Productor.IdOrigenDeLasSemillas);
                //IdSistemaRiegoCultivos 
                command.Parameters.AddWithValue("@IdSistemaRiegoCultivos", Productor.IdSistemaRiegoCultivos);
                command.Parameters.AddWithValue("@PoseeUnaCertificacion", Productor.PoseeUnaCertificacion);
                if (Productor.CertificacionEspecificar == null) Productor.CertificacionEspecificar = string.Empty;
                command.Parameters.AddWithValue("@CertificacionEspecificar", Productor.CertificacionEspecificar);
                //IdCategoriaManejo
                command.Parameters.AddWithValue("@IdCategoriaManejo", Productor.IdCategoriaManejo);
                if (Productor.ComentarioDeManejo == null) Productor.ComentarioDeManejo = string.Empty;
                command.Parameters.AddWithValue("@ComentarioDeManejo", Productor.ComentarioDeManejo);
                if (Productor.ListaMaquinariaDisponibleEnLaFinca == null) Productor.ListaMaquinariaDisponibleEnLaFinca = string.Empty;
                command.Parameters.AddWithValue("@ListaMaquinariaDisponibleEnLaFinca", Productor.ListaMaquinariaDisponibleEnLaFinca);
                //IdCategoriaMecanizacion 
                command.Parameters.AddWithValue("@IdCategoriaMecanizacion", Productor.IdCategoriaMecanizacion);
                if (Productor.ListaInfraestructuraDisponibleEnLaFinca == null) Productor.ListaInfraestructuraDisponibleEnLaFinca = string.Empty;
                command.Parameters.AddWithValue("@ListaInfraestructuraDisponibleEnLaFinca", Productor.ListaInfraestructuraDisponibleEnLaFinca);
                //IdCategoriaInfraestructura 
                command.Parameters.AddWithValue("@IdCategoriaInfraestructura", Productor.IdCategoriaInfraestructura);
                command.Parameters.AddWithValue("@RealizaAlgunProcesoTransformacionOValorAgregado", Productor.RealizaAlgunProcesoTransformacionOValorAgregado);
                if (Productor.ProcesoTransformacionOValorAgregadoEspecificar == null) Productor.ProcesoTransformacionOValorAgregadoEspecificar = string.Empty;
                command.Parameters.AddWithValue("@ProcesoTransformacionOValorAgregadoEspecificar", Productor.ProcesoTransformacionOValorAgregadoEspecificar);
                //IdDestinoDeLaProduccion 
                command.Parameters.AddWithValue("@IdDestinoDeLaProduccion", Productor.IdDestinoDeLaProduccion);
                if (Productor.SiVentaEspecificarCanalesComercializacion == null) Productor.SiVentaEspecificarCanalesComercializacion = string.Empty;
                command.Parameters.AddWithValue("@SiVentaEspecificarCanalesComercializacion", Productor.SiVentaEspecificarCanalesComercializacion);
                // IdCategoriaExplotacionAgricola 
                command.Parameters.AddWithValue("@IdCategoriaExplotacionAgricola", Productor.IdCategoriaExplotacionAgricola);
                //IdOrientacionTecnicoEco 
                command.Parameters.AddWithValue("@IdOrientacionTecnicoEco", Productor.IdOrientacionTecnicoEco);
                if (Productor.ComentarioExplotacionAgricola == null) Productor.ComentarioExplotacionAgricola = string.Empty;
                command.Parameters.AddWithValue("@ComentarioExplotacionAgricola", Productor.ComentarioExplotacionAgricola);
                command.Parameters.AddWithValue("@TieneAbejasSinAguijon", Productor.TieneAbejasSinAguijon);
                if (Productor.DesdeCuandoLasTiene == Convert.ToDateTime("01/01/0001 0:00:00")) Productor.DesdeCuandoLasTiene = Convert.ToDateTime("01/01/1900 0:00:00");
                command.Parameters.AddWithValue("@DesdeCuandoLasTiene", Productor.DesdeCuandoLasTiene);
                if (Productor.OtrasEspeciesAbeja == null) Productor.OtrasEspeciesAbeja = string.Empty;
                command.Parameters.AddWithValue("@OtrasEspeciesAbeja", Productor.OtrasEspeciesAbeja);
                if (Productor.DondeYComoObtuvoEsasColmenas == null) Productor.DondeYComoObtuvoEsasColmenas = string.Empty;
                command.Parameters.AddWithValue("@DondeYComoObtuvoEsasColmenas", Productor.DondeYComoObtuvoEsasColmenas);
                command.Parameters.AddWithValue("@ProduceMiel", Productor.ProduceMiel);
                if (Productor.ComoCosechaLaMiel == null) Productor.ComoCosechaLaMiel = string.Empty;
                command.Parameters.AddWithValue("@ComoCosechaLaMiel", Productor.ComoCosechaLaMiel);
                //IdDestinoMiel 
                command.Parameters.AddWithValue("@IdDestinoMiel", Productor.IdDestinoMiel);
                if (Productor.DondeSeVendeMielEspecificar == null) Productor.DondeSeVendeMielEspecificar = string.Empty;
                command.Parameters.AddWithValue("@DondeSeVendeMielEspecificar", Productor.DondeSeVendeMielEspecificar);
                command.Parameters.AddWithValue("@PrecioVentaMiel", Productor.PrecioVentaMiel);
                //IdDondeColocaLasColmenas 
                command.Parameters.AddWithValue("@IdDondeColocaLasColmenas", Productor.IdDondeColocaLasColmenas);
                if (Productor.DondeSeUbicanLasColmenas == null) Productor.DondeSeUbicanLasColmenas = string.Empty;
                command.Parameters.AddWithValue("@DondeSeUbicanLasColmenas", Productor.DondeSeUbicanLasColmenas);
                if (Productor.DiagnosticoVisualDelMeliponarioYSuEntorno == null) Productor.DiagnosticoVisualDelMeliponarioYSuEntorno = string.Empty;
                command.Parameters.AddWithValue("@DiagnosticoVisualDelMeliponarioYSuEntorno", Productor.DiagnosticoVisualDelMeliponarioYSuEntorno);
                //IdPotencialLugarParaTenerAbejas 
                command.Parameters.AddWithValue("@IdPotencialLugarParaTenerAbejas", Productor.IdPotencialLugarParaTenerAbejas);
                //IdRiesgoRoboColmenas 
                command.Parameters.AddWithValue("@IdRiesgoRoboColmenas", Productor.IdRiesgoRoboColmenas);
                if (Productor.FotoMeliponario == null) { Productor.FotoMeliponario = Engine.EngineFloraNueva.ImageToByteArray(Engine.EngineFloraNueva.ObtenerImagenNoDisponible()); }
                SqlParameter imageParam3 = command.Parameters.Add("@FotoMeliponario", System.Data.SqlDbType.Image);
                imageParam3.Value = Productor.FotoMeliponario;
                if (Productor.CualEsSuMotivacionParaTenerLasAbejas == null) Productor.CualEsSuMotivacionParaTenerLasAbejas = string.Empty;
                command.Parameters.AddWithValue("@CualEsSuMotivacionParaTenerLasAbejas", Productor.CualEsSuMotivacionParaTenerLasAbejas);
                if (Productor.ComoAprendioACriarLasAbejas == null) Productor.ComoAprendioACriarLasAbejas = string.Empty;
                command.Parameters.AddWithValue("@ComoAprendioACriarLasAbejas", Productor.ComoAprendioACriarLasAbejas);
                //IdNivelConocimientoMeliponicultura 
                command.Parameters.AddWithValue("@IdNivelConocimientoMeliponicultura", Productor.IdNivelConocimientoMeliponicultura);
                if (Productor.ComentariosMeliponicultura == null) Productor.ComentariosMeliponicultura = string.Empty;
                command.Parameters.AddWithValue("@ComentariosMeliponicultura", Productor.ComentariosMeliponicultura);
                if (Productor.QueEsLoQueMejorariaSuCalidadDeVida == null) Productor.QueEsLoQueMejorariaSuCalidadDeVida = string.Empty;
                command.Parameters.AddWithValue("@QueEsLoQueMejorariaSuCalidadDeVida", Productor.QueEsLoQueMejorariaSuCalidadDeVida);
                if (Productor.CualesSonLosFrenosCalidadDeVida == null) Productor.CualesSonLosFrenosCalidadDeVida = string.Empty;
                command.Parameters.AddWithValue("@CualesSonLosFrenosCalidadDeVida", Productor.CualesSonLosFrenosCalidadDeVida);
                if (Productor.ComoMejorariaSuActividadAgricola == null) Productor.ComoMejorariaSuActividadAgricola = string.Empty;
                command.Parameters.AddWithValue("@ComoMejorariaSuActividadAgricola", Productor.ComoMejorariaSuActividadAgricola);
                if (Productor.CualesSonLosFrenosActividadAgricola == null) Productor.CualesSonLosFrenosActividadAgricola = string.Empty;
                command.Parameters.AddWithValue("@CualesSonLosFrenosActividadAgricola", Productor.CualesSonLosFrenosActividadAgricola);
                if (Productor.EnQueLeGustariaQueACFNLoPuedaApoyar == null) Productor.EnQueLeGustariaQueACFNLoPuedaApoyar = string.Empty;
                command.Parameters.AddWithValue("@EnQueLeGustariaQueACFNLoPuedaApoyar", Productor.EnQueLeGustariaQueACFNLoPuedaApoyar);
                if (Productor.CualesSon3FortalezasDeSuComunidad == null) Productor.CualesSon3FortalezasDeSuComunidad = string.Empty;
                command.Parameters.AddWithValue("@CualesSon3FortalezasDeSuComunidad", Productor.CualesSon3FortalezasDeSuComunidad);
                if (Productor.CualesSon3PrincipalesProblemasComunidad == null) Productor.CualesSon3PrincipalesProblemasComunidad = string.Empty;
                command.Parameters.AddWithValue("@CualesSon3PrincipalesProblemasComunidad", Productor.CualesSon3PrincipalesProblemasComunidad);
                if (Productor.QueSolucionesPropondriaMejorarComunidad == null) Productor.QueSolucionesPropondriaMejorarComunidad = string.Empty;
                command.Parameters.AddWithValue("@QueSolucionesPropondriaMejorarComunidad", Productor.QueSolucionesPropondriaMejorarComunidad);
                if (Productor.CualesSonLosFrenosImpidenHacerEsasSoluciones == null) Productor.CualesSonLosFrenosImpidenHacerEsasSoluciones = string.Empty;
                command.Parameters.AddWithValue("@CualesSonLosFrenosImpidenHacerEsasSoluciones", Productor.CualesSonLosFrenosImpidenHacerEsasSoluciones);
                if (Productor.Fortalezas == null) Productor.Fortalezas = string.Empty;
                command.Parameters.AddWithValue("@Fortalezas", Productor.Fortalezas);
                if (Productor.Debilidades == null) Productor.Debilidades = string.Empty;
                command.Parameters.AddWithValue("@Debilidades", Productor.Debilidades);
                if (Productor.Oportunidades == null) Productor.Oportunidades = string.Empty;
                command.Parameters.AddWithValue("@Oportunidades", Productor.Oportunidades);
                if (Productor.Amenazas == null) Productor.Amenazas = string.Empty;
                command.Parameters.AddWithValue("@Amenazas", Productor.Amenazas);
                if (Productor.ProyectosPotenciales == null) Productor.ProyectosPotenciales = string.Empty;
                command.Parameters.AddWithValue("@ProyectosPotenciales", Productor.ProyectosPotenciales);
                if (Productor.ComentarioGeneral == null) Productor.ComentarioGeneral = string.Empty;
                command.Parameters.AddWithValue("@ComentarioGeneral", Productor.ComentarioGeneral);
                command.Parameters.AddWithValue("@IndicadorBienestarSocialYFamiliarDelHogar", Productor.IndicadorBienestarSocialYFamiliarDelHogar);
                command.Parameters.AddWithValue("@IndicadorBienestarEconomicoYMaterialDelHogar", Productor.IndicadorBienestarEconomicoYMaterialDelHogar);
                command.Parameters.AddWithValue("@IndicadorSoberaniaAlimenticia", Productor.IndicadorSoberaniaAlimenticia);
                command.Parameters.AddWithValue("@IndicadorFelicidad", Productor.IndicadorFelicidad);
                command.Parameters.AddWithValue("@Estado", Productor.Estado);
                command.Parameters.AddWithValue("@Usuario", Productor.Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Productor.Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Transaccion", Productor.Transaccion);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
            return resultado;
        }

        public int InsertarActualizarAbejasNativasVisitaGrupal(List<FloraNuevaProductor.AbejasNativasVisitaGrupal> MiItem, string identificador,string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                foreach (FloraNuevaProductor.AbejasNativasVisitaGrupal Item in MiItem)
                {
                    Conexion.Open();
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@IdAbejasNativasVisitaGrupal", Item.IdAbejasNativasVisitaGrupal);
                    command.Parameters.AddWithValue("@Identificador", identificador);
                    command.Parameters.AddWithValue("@IdGrupo", Item.IdGrupo);//Relacion Grupo
                    if (Item.FechaDesde == Convert.ToDateTime("01/01/0001 0:00:00")) Item.FechaDesde = Convert.ToDateTime("01/01/1900 0:00:00");
                    command.Parameters.AddWithValue("@FechaDesde", Item.FechaDesde);
                    if (Item.FechaHasta == Convert.ToDateTime("01/01/0001 0:00:00")) Item.FechaHasta = Convert.ToDateTime("01/01/1900 0:00:00");
                    command.Parameters.AddWithValue("@FechaHasta", Item.FechaHasta);
                    command.Parameters.AddWithValue("@EquipoFloraNuevaPresente", Item.EquipoFloraNuevaPresente);
                    command.Parameters.AddWithValue("@OtrosParticipantes", Item.OtrosParticipantes);
                    command.Parameters.AddWithValue("@TemaYObjetivoDeLaVisita", Item.TemaYObjetivoDeLaVisita);
                    command.Parameters.AddWithValue("@DesarrolloDeLaVisitaAcciones", Item.DesarrolloDeLaVisitaAcciones);
                    command.Parameters.AddWithValue("@MaterialEntregado", Item.MaterialEntregado);
                    command.Parameters.AddWithValue("@ProblemasDetectados", Item.ProblemasDetectados);
                    command.Parameters.AddWithValue("@RecomendacionesProximaVisita", Item.RecomendacionesProximaVisita);
                    command.Parameters.AddWithValue("@Estado", Item.Estado);
                    command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                    command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                    command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                    resultado = command.ExecuteNonQuery();
                    Conexion.Close();
                }
            }
            return resultado;
        }

        public int InsertarActualizarAbejasNativasVisitaGrupalSync(FloraNuevaProductor.AbejasNativasVisitaGrupal Item,string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@IdAbejasNativasVisitaGrupal", Item.IdAbejasNativasVisitaGrupal);
                command.Parameters.AddWithValue("@Identificador", Item.Identificador);
                command.Parameters.AddWithValue("@IdGrupo", Item.IdGrupo);//Relacion Grupo
                if (Item.FechaDesde == Convert.ToDateTime("01/01/0001 0:00:00")) Item.FechaDesde = Convert.ToDateTime("01/01/1900 0:00:00");
                command.Parameters.AddWithValue("@FechaDesde", Item.FechaDesde);
                if (Item.FechaHasta == Convert.ToDateTime("01/01/0001 0:00:00")) Item.FechaHasta = Convert.ToDateTime("01/01/1900 0:00:00");
                command.Parameters.AddWithValue("@FechaHasta", Item.FechaHasta);
                command.Parameters.AddWithValue("@EquipoFloraNuevaPresente", Item.EquipoFloraNuevaPresente);
                command.Parameters.AddWithValue("@OtrosParticipantes", Item.OtrosParticipantes);
                command.Parameters.AddWithValue("@TemaYObjetivoDeLaVisita", Item.TemaYObjetivoDeLaVisita);
                command.Parameters.AddWithValue("@DesarrolloDeLaVisitaAcciones", Item.DesarrolloDeLaVisitaAcciones);
                command.Parameters.AddWithValue("@MaterialEntregado", Item.MaterialEntregado);
                command.Parameters.AddWithValue("@ProblemasDetectados", Item.ProblemasDetectados);
                command.Parameters.AddWithValue("@RecomendacionesProximaVisita", Item.RecomendacionesProximaVisita);
                command.Parameters.AddWithValue("@Estado", Item.Estado);
                command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
         
            return resultado;
        }


        public int InsertarActualizarAbejasNativasVisitaGrupalParticipante(FloraNuevaProductor.AbejasNativasVisitaGrupalParticipante Item, string IdentificadorGrupal ,string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@IdAbejasNativasVisitaGrupalParticipante", Item.IdAbejasNativasVisitaGrupalParticipante);
                command.Parameters.AddWithValue("@Identificador", Item.Identificador);
                command.Parameters.AddWithValue("@IdAbejasNativasVisitaGrupal", Item.IdAbejasNativasVisitaGrupal);
                command.Parameters.AddWithValue("@IdProductor", Item.IdProductor); //Relacion Productor
                command.Parameters.AddWithValue("@Observaciones", Item.Observaciones);
                command.Parameters.AddWithValue("@Estado", Item.Estado);
                command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                command.Parameters.AddWithValue("@IdentificadorGrupal",IdentificadorGrupal);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
            return resultado;
        }

        public int InsertarActualizarMeliponario(List<FloraNuevaProductor.Meliponario> MiItem,string identificador, string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                foreach (FloraNuevaProductor.Meliponario Item in MiItem)
                {
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@IdMeliponario", Item.IdMeliponario);
                    command.Parameters.AddWithValue("@Identificador", identificador);
                    command.Parameters.AddWithValue("@NumeroMeliponario", Item.NumeroMeliponario);
                    command.Parameters.AddWithValue("@IdProductor", Item.IdProductor); //Relacion Productor
                    command.Parameters.AddWithValue("@GPSLatitud", Item.GPSLatitud);
                    command.Parameters.AddWithValue("@GPSLongitud", Item.GPSLongitud);
                    command.Parameters.AddWithValue("@ValidadoParaRecibirCajasFloraNueva", Item.ValidadoParaRecibirCajasFloraNueva);
                    command.Parameters.AddWithValue("@IdTipoMeliponario", Item.IdTipoMeliponario);
                    command.Parameters.AddWithValue("@Observaciones", Item.Observaciones);
                    command.Parameters.AddWithValue("@Estado", Item.Estado);
                    command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                    command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                    command.Parameters.AddWithValue("@FechaCreacion", Item.FechaCreacion);
                    command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                    resultado = command.ExecuteNonQuery();
                }
                Conexion.Close();
            }
            return resultado;
        }

        public int InsertarActualizarMeliponarioSync(FloraNuevaProductor.Meliponario Item, string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@IdMeliponario", Item.IdMeliponario);
                command.Parameters.AddWithValue("@Identificador", Item.Identificador);
                command.Parameters.AddWithValue("@NumeroMeliponario", Item.NumeroMeliponario);
                command.Parameters.AddWithValue("@IdProductor", Item.IdProductor); //Relacion Productor
                command.Parameters.AddWithValue("@GPSLatitud", Item.GPSLatitud);
                command.Parameters.AddWithValue("@GPSLongitud", Item.GPSLongitud);
                command.Parameters.AddWithValue("@ValidadoParaRecibirCajasFloraNueva", Item.ValidadoParaRecibirCajasFloraNueva);
                command.Parameters.AddWithValue("@IdTipoMeliponario", Item.IdTipoMeliponario);
                command.Parameters.AddWithValue("@Observaciones", Item.Observaciones);
                command.Parameters.AddWithValue("@Estado", Item.Estado);
                command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
            return resultado;
        }

        public int InsertarActualizarMeliponarioCaja(List<FloraNuevaProductor.MeliponarioCaja> MiItem, string identificador,string nombreSP)
        {
            int resultado = new int();
            object id = new object();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                foreach (FloraNuevaProductor.MeliponarioCaja Item in MiItem)
                {
                    Conexion.Open();
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@IdMeliponarioCaja", Item.IdMeliponarioCaja);
                    command.Parameters.AddWithValue("@Identificador", identificador);
                    command.Parameters.AddWithValue("@NumeroCaja", Item.NumeroCaja);
                    command.Parameters.AddWithValue("@IdMeliponario", Item.IdMeliponario); //Relacion Meliponario
                    command.Parameters.AddWithValue("@IdEspecieAbeja", Item.IdEspecieAbeja); //Relacion EspecieAbeja
                    if (Item.FechaEntregaAlProductor == Convert.ToDateTime("01/01/0001 0:00:00")) Item.FechaEntregaAlProductor = Convert.ToDateTime("01/01/1900 0:00:00");
                    command.Parameters.AddWithValue("@FechaEntregaAlProductor", Item.FechaEntregaAlProductor);
                    command.Parameters.AddWithValue("@Comentario", Item.Comentario);
                    command.Parameters.AddWithValue("@IdOrigenColonia", Item.IdOrigenColonia);
                    command.Parameters.AddWithValue("@Activa", Item.Activa);
                    command.Parameters.AddWithValue("@Estado", Item.Estado);
                    command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                    command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                    command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                    id = command.ExecuteScalar();
                    if (id != null)
                    {
                        resultado = Convert.ToInt32(id);
                    }
                    Conexion.Close();
                }
            }
            return resultado;
        }


        public int InsertarActualizarMeliponarioCajaSync(FloraNuevaProductor.MeliponarioCaja Item, string nombreSP)
        {
            int resultado = new int();
            object id = new object();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                Conexion.Open();
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@IdMeliponarioCaja", Item.IdMeliponarioCaja);
                command.Parameters.AddWithValue("@Identificador", Item.Identificador);
                command.Parameters.AddWithValue("@NumeroCaja", Item.NumeroCaja);
                command.Parameters.AddWithValue("@IdMeliponario", Item.IdMeliponario); //Relacion Meliponario
                command.Parameters.AddWithValue("@IdEspecieAbeja", Item.IdEspecieAbeja); //Relacion EspecieAbeja
                if (Item.FechaEntregaAlProductor == Convert.ToDateTime("01/01/0001 0:00:00")) Item.FechaEntregaAlProductor = Convert.ToDateTime("01/01/1900 0:00:00");
                command.Parameters.AddWithValue("@FechaEntregaAlProductor", Item.FechaEntregaAlProductor);
                command.Parameters.AddWithValue("@Comentario", Item.Comentario);
                command.Parameters.AddWithValue("@IdOrigenColonia", Item.IdOrigenColonia);
                command.Parameters.AddWithValue("@Activa", Item.Activa);
                command.Parameters.AddWithValue("@Estado", Item.Estado);
                command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                id = command.ExecuteScalar();
                if (id != null)
                {
                    resultado = Convert.ToInt32(id);
                }
                Conexion.Close();
            }
            
            return resultado;
        }

        public int InsertarActualizarMeliponarioCajaAccion(List<FloraNuevaProductor.MeliponarioCajaAccion>  MiItem, string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                foreach (FloraNuevaProductor.MeliponarioCajaAccion Item in MiItem)
                {
                    Conexion.Open();
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@IdMeliponarioCajaAccion", Item.IdMeliponarioCajaAccion);
                    command.Parameters.AddWithValue("@Identificador", Item.Identificador);
                    command.Parameters.AddWithValue("@IdMeliponarioCaja", Item.IdMeliponarioCaja); //Relacion MeliponarioCaja
                    command.Parameters.AddWithValue("@IdTipoAccionMeliponario", Item.IdTipoAccionMeliponario); //Relacion TipoAccionMeliponario
                    command.Parameters.AddWithValue("@IdOrigenColonia", Item.IdOrigenColonia); //Relavion OrigenColonia
                    command.Parameters.AddWithValue("@IdUsuarioResponsable", Item.IdUsuarioResponsable);
                    if (Item.FechaAccion == Convert.ToDateTime("01/01/0001 0:00:00")) Item.FechaAccion = Convert.ToDateTime("01/01/1900 0:00:00");
                    command.Parameters.AddWithValue("@FechaAccion", Item.FechaAccion);
                    command.Parameters.AddWithValue("@Comentario", Item.Comentario);
                    command.Parameters.AddWithValue("@Estado", Item.Estado);
                    command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                    command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                    command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                    resultado = command.ExecuteNonQuery();
                    Conexion.Close();
                }

            }
            return resultado;
        }

        public int InsertarActualizarMeliponarioCajaAccionSync(FloraNuevaProductor.MeliponarioCajaAccion Item, string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                Conexion.Open();
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@IdMeliponarioCajaAccion", Item.IdMeliponarioCajaAccion);
                command.Parameters.AddWithValue("@Identificador", Item.Identificador);
                command.Parameters.AddWithValue("@IdMeliponarioCaja", Item.IdMeliponarioCaja); //Relacion MeliponarioCaja
                command.Parameters.AddWithValue("@IdTipoAccionMeliponario", Item.IdTipoAccionMeliponario); //Relacion TipoAccionMeliponario
                command.Parameters.AddWithValue("@IdOrigenColonia", Item.IdOrigenColonia); //Relavion OrigenColonia
                command.Parameters.AddWithValue("@IdUsuarioResponsable", Item.IdUsuarioResponsable);
                if (Item.FechaAccion == Convert.ToDateTime("01/01/0001 0:00:00")) Item.FechaAccion = Convert.ToDateTime("01/01/1900 0:00:00");
                command.Parameters.AddWithValue("@FechaAccion", Item.FechaAccion);
                command.Parameters.AddWithValue("@Comentario", Item.Comentario);
                command.Parameters.AddWithValue("@Estado", Item.Estado);
                command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
            return resultado;
        }

        public int InsertarActualizarMeliponarioCajaHistorial(FloraNuevaProductor.MeliponarioCajaHistorial Item, string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@IdMeliponarioCajaHistorial", Item.IdMeliponarioCajaHistorial);
                command.Parameters.AddWithValue("@Identificador", Item.Identificador);
                command.Parameters.AddWithValue("@NumeroCaja", Item.NumeroCaja);
                command.Parameters.AddWithValue("@IdMeliponarioCaja", Item.IdMeliponarioCaja); //Relacion MeliponarioCaja
                command.Parameters.AddWithValue("@IdProductor", Item.IdProductor); //Relacion Productor
                if (Item.FechaDesde == Convert.ToDateTime("01/01/0001 0:00:00")) Item.FechaDesde = Convert.ToDateTime("01/01/1900 0:00:00");
                command.Parameters.AddWithValue("@FechaDesde", Item.FechaDesde);
                if (Item.FechaHasta == Convert.ToDateTime("01/01/0001 0:00:00")) Item.FechaHasta = Convert.ToDateTime("01/01/1900 0:00:00");
                command.Parameters.AddWithValue("@FechaHasta", Item.FechaHasta);
                command.Parameters.AddWithValue("@Actual", Item.Actual);
                command.Parameters.AddWithValue("@Estado", Item.Estado);
                command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
            return resultado;
        }

        public int InsertarActualizarMeliponarioCosecha(List <FloraNuevaProductor.MeliponarioCosecha> MiItem, string identificador ,string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                foreach (FloraNuevaProductor.MeliponarioCosecha Item in MiItem)
                {
                    Conexion.Open();
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@IdMeliponarioCosecha", Item.IdMeliponarioCosecha);
                    command.Parameters.AddWithValue("@Identificador", identificador);
                    command.Parameters.AddWithValue("@IdMeliponario", Item.IdMeliponario); //Relacion Meliponario
                    command.Parameters.AddWithValue("@IdUsuarioResponsable", Item.IdUsuarioResponsable);
                    command.Parameters.AddWithValue("@PrecioCompra", Item.PrecioCompra);
                    command.Parameters.AddWithValue("@Comentario", Item.Comentario);
                    command.Parameters.AddWithValue("@FechaCosecha", Item.FechaCosecha);
                    command.Parameters.AddWithValue("@Estado", Item.Estado);
                    command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                    command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                    command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                    resultado = command.ExecuteNonQuery();
                    Conexion.Close();
                }

            }
            return resultado;
        }

        public int InsertarActualizarMeliponarioCosechaSync(FloraNuevaProductor.MeliponarioCosecha Item, string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                Conexion.Open();
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@IdMeliponarioCosecha", Item.IdMeliponarioCosecha);
                command.Parameters.AddWithValue("@Identificador", Item.Identificador);
                command.Parameters.AddWithValue("@IdMeliponario", Item.IdMeliponario); //Relacion Meliponario
                command.Parameters.AddWithValue("@IdUsuarioResponsable", Item.IdUsuarioResponsable);
                command.Parameters.AddWithValue("@PrecioCompra", Item.PrecioCompra);
                command.Parameters.AddWithValue("@Comentario", Item.Comentario);
                command.Parameters.AddWithValue("@FechaCosecha", Item.FechaCosecha);
                command.Parameters.AddWithValue("@Estado", Item.Estado);
                command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
            return resultado;
        }

        public int InsertarActualizarMeliponarioCosechaDetalle(FloraNuevaProductor.MeliponarioCosechaDetalle Item, string IdentificadorMeliponarioCosecha, string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@IdMeliponarioCosechaDetalle", Item.IdMeliponarioCosechaDetalle);
                command.Parameters.AddWithValue("@Identificador", IdentificadorMeliponarioCosecha);
                command.Parameters.AddWithValue("@IdMeliponarioCosecha", Item.IdMeliponarioCosecha); //Relacion MeliponarioCosecha
                command.Parameters.AddWithValue("@Lote", Item.Lote);
                command.Parameters.AddWithValue("@IdEspecieAbeja", Item.IdEspecieAbeja);//Relacion EspecieAbeja
                command.Parameters.AddWithValue("@Alzas", Item.Alzas);
                command.Parameters.AddWithValue("@PesoKg", Item.PesoKg);
                command.Parameters.AddWithValue("@Estado", Item.Estado);
                command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
            return resultado;
        }
        public int InsertarActualizarMeliponarioCosechaDetalleSync(FloraNuevaProductor.MeliponarioCosechaDetalle Item,  string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@IdMeliponarioCosechaDetalle", Item.IdMeliponarioCosechaDetalle);
                command.Parameters.AddWithValue("@Identificador", Item.Identificador);
                command.Parameters.AddWithValue("@IdMeliponarioCosecha", Item.IdMeliponarioCosecha); //Relacion MeliponarioCosecha
                command.Parameters.AddWithValue("@Lote", Item.Lote);
                command.Parameters.AddWithValue("@IdEspecieAbeja", Item.IdEspecieAbeja);//Relacion EspecieAbeja
                command.Parameters.AddWithValue("@Alzas", Item.Alzas);
                command.Parameters.AddWithValue("@PesoKg", Item.PesoKg);
                command.Parameters.AddWithValue("@Estado", Item.Estado);
                command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
            return resultado;
        }

        public int InsertarActualizarMeliponarioCosechaDetalleCaja(FloraNuevaProductor.MeliponarioCosechaDetalleCaja Item, string IdentificadorMeliponarioCosecha ,string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@IdMeliponarioCosechaDetalleCaja", Item.IdMeliponarioCosechaDetalleCaja);
                command.Parameters.AddWithValue("@Identificador", IdentificadorMeliponarioCosecha);
                command.Parameters.AddWithValue("@IdMeliponarioCosechaDetalle", Item.IdMeliponarioCosechaDetalle); //Relacion MeliponarioCosechaDetalle
                command.Parameters.AddWithValue("@IdMeliponarioCaja", Item.IdMeliponarioCaja);// Relacion MeliponarioCaja
                command.Parameters.AddWithValue("@NumeroCaja", Item.NumeroCaja);
                command.Parameters.AddWithValue("@Estado", Item.Estado);
                command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
            return resultado;
        }

        public int InsertarActualizarMeliponarioCosechaDetalleCajaSync(FloraNuevaProductor.MeliponarioCosechaDetalleCaja Item,  string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@IdMeliponarioCosechaDetalleCaja", Item.IdMeliponarioCosechaDetalleCaja);
                command.Parameters.AddWithValue("@Identificador", Item.Identificador);
                command.Parameters.AddWithValue("@IdMeliponarioCosechaDetalle", Item.IdMeliponarioCosechaDetalle); //Relacion MeliponarioCosechaDetalle
                command.Parameters.AddWithValue("@IdMeliponarioCaja", Item.IdMeliponarioCaja);// Relacion MeliponarioCaja
                command.Parameters.AddWithValue("@NumeroCaja", Item.NumeroCaja);
                command.Parameters.AddWithValue("@Estado", Item.Estado);
                command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
            return resultado;
        }


        public int InsertarActualizarProductorAbejasNativasMaterialEntregado(List<FloraNuevaProductor.ProductorAbejasNativasMaterialEntregado> MiItem, string identificador, string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                foreach (FloraNuevaProductor.ProductorAbejasNativasMaterialEntregado Item in MiItem)
                {
                    Conexion.Open();
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@IdProductorAbejasNativasMaterialEntregado", Item.IdProductorAbejasNativasMaterialEntregado);
                    command.Parameters.AddWithValue("@Identificador", identificador);
                    command.Parameters.AddWithValue("@IdProductor", Item.IdProductor); //Relacion Productor
                    if (Item.Fecha == Convert.ToDateTime("01/01/0001 0:00:00")) Item.Fecha = Convert.ToDateTime("01/01/1900 0:00:00");
                    command.Parameters.AddWithValue("@Fecha", Item.Fecha);
                    command.Parameters.AddWithValue("@NumeroBoleta", Item.NumeroBoleta);
                    command.Parameters.AddWithValue("@IdTipoMaterialEntregado", Item.IdTipoMaterialEntregado);
                    command.Parameters.AddWithValue("@Cantidad", Item.Cantidad);
                    command.Parameters.AddWithValue("@Comentario", Item.Comentario);
                    command.Parameters.AddWithValue("@Estado", Item.Estado);
                    command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                    command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                    command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                    resultado = command.ExecuteNonQuery();
                    Conexion.Close();
                }
            }
            return resultado;
        }


        public int InsertarActualizarProductorAbejasNativasMaterialEntregadoSync(FloraNuevaProductor.ProductorAbejasNativasMaterialEntregado Item,  string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@IdProductorAbejasNativasMaterialEntregado", Item.IdProductorAbejasNativasMaterialEntregado);
                command.Parameters.AddWithValue("@Identificador", Item.Identificador);
                command.Parameters.AddWithValue("@IdProductor", Item.IdProductor); //Relacion Productor
                if (Item.Fecha == Convert.ToDateTime("01/01/0001 0:00:00")) Item.Fecha = Convert.ToDateTime("01/01/1900 0:00:00");
                command.Parameters.AddWithValue("@Fecha", Item.Fecha);
                command.Parameters.AddWithValue("@NumeroBoleta", Item.NumeroBoleta);
                command.Parameters.AddWithValue("@IdTipoMaterialEntregado", Item.IdTipoMaterialEntregado);
                command.Parameters.AddWithValue("@Cantidad", Item.Cantidad);
                command.Parameters.AddWithValue("@Comentario", Item.Comentario);
                command.Parameters.AddWithValue("@Estado", Item.Estado);
                command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
            return resultado;
        }

        public int InsertarActualizarProductorAbejasNativasVisitaIndividual(List <FloraNuevaProductor.ProductorAbejasNativasVisitaIndividual> MiItem, string identificador, string nombreSP)
        {
            int resultado = new int();
            object id = new object();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                foreach (FloraNuevaProductor.ProductorAbejasNativasVisitaIndividual Item in MiItem)
                {
                    Conexion.Open();
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@IdProductorAbejasNativasVisitaIndividual", Item.IdProductorAbejasNativasVisitaIndividual);
                    command.Parameters.AddWithValue("@Identificador", identificador);
                    command.Parameters.AddWithValue("@IdProductor", Item.IdProductor); //Relacion Productor
                    if (Item.Fecha == Convert.ToDateTime("01/01/0001 0:00:00")) Item.Fecha = DateTime.Now;
                    command.Parameters.AddWithValue("@Fecha", Item.Fecha);
                    command.Parameters.AddWithValue("@ElMeliponicultorEstaPresente", Item.ElMeliponicultorEstaPresente);
                    command.Parameters.AddWithValue("@OtraPersonaPresente", Item.OtraPersonaPresente);
                    command.Parameters.AddWithValue("@Motivo", Item.Motivo);
                    command.Parameters.AddWithValue("@Observaciones", Item.Observaciones);
                    command.Parameters.AddWithValue("@Recomendaciones", Item.Recomendaciones);
                    command.Parameters.AddWithValue("@Otros", Item.Otros);
                    command.Parameters.AddWithValue("@Estado", Item.Estado);
                    command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                    command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                    command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                    id = command.ExecuteScalar();
                    if (id != null)
                    {
                        resultado = Convert.ToInt32(id);
                    }
                    Conexion.Close();
                }
            }
            return resultado;
        }

        public int InsertarActualizarProductorAbejasNativasVisitaIndividualSync(FloraNuevaProductor.ProductorAbejasNativasVisitaIndividual Item, string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                
                    Conexion.Open();
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@IdProductorAbejasNativasVisitaIndividual", Item.IdProductorAbejasNativasVisitaIndividual);
                    command.Parameters.AddWithValue("@Identificador", Item.Identificador);
                    command.Parameters.AddWithValue("@IdProductor", Item.IdProductor); //Relacion Productor
                    if (Item.Fecha == Convert.ToDateTime("01/01/0001 0:00:00")) Item.Fecha = DateTime.Now;
                    command.Parameters.AddWithValue("@Fecha", Item.Fecha);
                    command.Parameters.AddWithValue("@ElMeliponicultorEstaPresente", Item.ElMeliponicultorEstaPresente);
                    command.Parameters.AddWithValue("@OtraPersonaPresente", Item.OtraPersonaPresente);
                    command.Parameters.AddWithValue("@Motivo", Item.Motivo);
                    command.Parameters.AddWithValue("@Observaciones", Item.Observaciones);
                    command.Parameters.AddWithValue("@Recomendaciones", Item.Recomendaciones);
                    command.Parameters.AddWithValue("@Otros", Item.Otros);
                    command.Parameters.AddWithValue("@Estado", Item.Estado);
                    command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                    command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                    command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                    resultado = command.ExecuteNonQuery();
            }
            return resultado;
        }

        public int InsertarActualizarProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria(List<FloraNuevaProductor.ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria> MiItem, string identificador,string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                foreach (FloraNuevaProductor.ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria Item in MiItem)
                {
                    Conexion.Open();
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@IdProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria", Item.IdProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria);
                    command.Parameters.AddWithValue("@Identificador", identificador);
                    command.Parameters.AddWithValue("@IdProductorAbejasNativasVisitaIndividual", Item.IdProductorAbejasNativasVisitaIndividual); //Relacion ProductorAbejasNativasVisitaIndividual
                    command.Parameters.AddWithValue("@AccionCorrectivaObligatoria", Item.AccionCorrectivaObligatoria);
                    command.Parameters.AddWithValue("@Estado", Item.Estado);
                    command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                    command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                    command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                    resultado = command.ExecuteNonQuery();
                    Conexion.Close();
                }
            }
            return resultado;
        }

        public int InsertarActualizarProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoriaSync(FloraNuevaProductor.ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria Item,  string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                Conexion.Open();
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@IdProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria", Item.IdProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria);
                command.Parameters.AddWithValue("@Identificador", Item.Identificador);
                command.Parameters.AddWithValue("@IdProductorAbejasNativasVisitaIndividual", Item.IdProductorAbejasNativasVisitaIndividual); //Relacion ProductorAbejasNativasVisitaIndividual
                command.Parameters.AddWithValue("@AccionCorrectivaObligatoria", Item.AccionCorrectivaObligatoria);
                command.Parameters.AddWithValue("@Estado", Item.Estado);
                command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
            return resultado;
        }

        public int InsertarActualizarProductorAbejasNativasVisitaIndividualColmenasEnCaja(List<FloraNuevaProductor.ProductorAbejasNativasVisitaIndividualColmenasEnCaja> MiItem, string identificador,string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                foreach (FloraNuevaProductor.ProductorAbejasNativasVisitaIndividualColmenasEnCaja Item in MiItem)
                {
                    Conexion.Open();
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@IdProductorAbejasNativasVisitaIndividualColmenasEnCaja", Item.IdProductorAbejasNativasVisitaIndividualColmenasEnCaja);
                    command.Parameters.AddWithValue("@Identificador", identificador);
                    command.Parameters.AddWithValue("@IdProductorAbejasNativasVisitaIndividual", Item.IdProductorAbejasNativasVisitaIndividual); //Relacion ProductorAbejasNativasVisitaIndividual
                    command.Parameters.AddWithValue("@IdEspecieAbeja", Item.IdEspecieAbeja);
                    command.Parameters.AddWithValue("@ACFN", Item.ACFN);
                    command.Parameters.AddWithValue("@Rustica", Item.Rustica);
                    command.Parameters.AddWithValue("@Estado", Item.Estado);
                    command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                    command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                    command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                    resultado = command.ExecuteNonQuery();
                    Conexion.Close();
                }
            }
            return resultado;
        }

        public int InsertarActualizarProductorAbejasNativasVisitaIndividualColmenasEnCajaSync(FloraNuevaProductor.ProductorAbejasNativasVisitaIndividualColmenasEnCaja Item,  string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                Conexion.Open();
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@IdProductorAbejasNativasVisitaIndividualColmenasEnCaja", Item.IdProductorAbejasNativasVisitaIndividualColmenasEnCaja);
                command.Parameters.AddWithValue("@Identificador", Item.Identificador);
                command.Parameters.AddWithValue("@IdProductorAbejasNativasVisitaIndividual", Item.IdProductorAbejasNativasVisitaIndividual); //Relacion ProductorAbejasNativasVisitaIndividual
                command.Parameters.AddWithValue("@IdEspecieAbeja", Item.IdEspecieAbeja);
                command.Parameters.AddWithValue("@ACFN", Item.ACFN);
                command.Parameters.AddWithValue("@Rustica", Item.Rustica);
                command.Parameters.AddWithValue("@Estado", Item.Estado);
                command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
            return resultado;
        }


        public int InsertarActualizarProductorAbejasNativasVisitaIndividualColmenasEnTrampa(List<FloraNuevaProductor.ProductorAbejasNativasVisitaIndividualColmenasEnTrampa> MiItem,string identificador, string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                foreach (FloraNuevaProductor.ProductorAbejasNativasVisitaIndividualColmenasEnTrampa Item in MiItem)
                {
                    Conexion.Open();
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@IdProductorAbejasNativasVisitaIndividualColmenasEnTrampa", Item.IdProductorAbejasNativasVisitaIndividualColmenasEnTrampa);
                    command.Parameters.AddWithValue("@Identificador", identificador);
                    command.Parameters.AddWithValue("@IdProductorAbejasNativasVisitaIndividual", Item.IdProductorAbejasNativasVisitaIndividual); //Relacion ProductorAbejasNativasVisitaIndividual
                    command.Parameters.AddWithValue("@IdEspecieAbeja", Item.IdEspecieAbeja);
                    command.Parameters.AddWithValue("@EnMeliponario", Item.EnMeliponario);
                    command.Parameters.AddWithValue("@EnCampo", Item.EnCampo);
                    command.Parameters.AddWithValue("@Estado", Item.Estado);
                    command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                    command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                    command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                    resultado = command.ExecuteNonQuery();
                    Conexion.Close();
                }
            }
            return resultado;
        }

        public int InsertarActualizarProductorAbejasNativasVisitaIndividualColmenasEnTrampaSync(FloraNuevaProductor.ProductorAbejasNativasVisitaIndividualColmenasEnTrampa Item, string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                Conexion.Open();
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@IdProductorAbejasNativasVisitaIndividualColmenasEnTrampa", Item.IdProductorAbejasNativasVisitaIndividualColmenasEnTrampa);
                command.Parameters.AddWithValue("@Identificador", Item.Identificador);
                command.Parameters.AddWithValue("@IdProductorAbejasNativasVisitaIndividual", Item.IdProductorAbejasNativasVisitaIndividual); //Relacion ProductorAbejasNativasVisitaIndividual
                command.Parameters.AddWithValue("@IdEspecieAbeja", Item.IdEspecieAbeja);
                command.Parameters.AddWithValue("@EnMeliponario", Item.EnMeliponario);
                command.Parameters.AddWithValue("@EnCampo", Item.EnCampo);
                command.Parameters.AddWithValue("@Estado", Item.Estado);
                command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
            return resultado;
        }


        public int InsertarActualizarProductorContacto(List <FloraNuevaProductor.ProductorContacto> MiItem, string identificador, string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                foreach (FloraNuevaProductor.ProductorContacto Item in MiItem)
                {
                    Conexion.Open();
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@IdProductorContacto", Item.IdProductorContacto);
                    command.Parameters.AddWithValue("@Identificador", identificador);
                    command.Parameters.AddWithValue("@IdProductor", Item.IdProductor); //Relacion Productor
                    command.Parameters.AddWithValue("@IdTipoContacto", Item.IdTipoContacto);
                    command.Parameters.AddWithValue("@Contacto", Item.Contacto);
                    command.Parameters.AddWithValue("@Detalle", Item.Detalle);
                    command.Parameters.AddWithValue("@Estado", Item.Estado);
                    command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                    command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                    command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                    resultado = command.ExecuteNonQuery();
                    Conexion.Close();
                }
            }
            return resultado;
        }

        public int InsertarActualizarProductorContactoSync(FloraNuevaProductor.ProductorContacto Item, string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@IdProductorContacto", Item.IdProductorContacto);
                command.Parameters.AddWithValue("@Identificador", Item.Identificador);
                command.Parameters.AddWithValue("@IdProductor", Item.IdProductor); //Relacion Productor
                command.Parameters.AddWithValue("@IdTipoContacto", Item.IdTipoContacto);
                command.Parameters.AddWithValue("@Contacto", Item.Contacto);
                command.Parameters.AddWithValue("@Detalle", Item.Detalle);
                command.Parameters.AddWithValue("@Estado", Item.Estado);
                command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
            return resultado;
        }

        public int InsertarActualizarProductorDetalleProduccionAnimal(List<FloraNuevaProductor.ProductorDetalleProduccionAnimal>  MiItem, string identificador, string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                foreach (FloraNuevaProductor.ProductorDetalleProduccionAnimal Item in MiItem)
                {
                    Conexion.Open();
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@IdProductorDetalleProduccionAnimal", Item.IdProductorDetalleProduccionAnimal);
                    command.Parameters.AddWithValue("@Identificador", identificador);
                    command.Parameters.AddWithValue("@IdProductor", Item.IdProductor); //Relacion Productor
                    command.Parameters.AddWithValue("@IdAnimales", Item.IdAnimales);
                    command.Parameters.AddWithValue("@Detalles", Item.Detalles);
                    command.Parameters.AddWithValue("@Cantidad", Item.Cantidad);
                    command.Parameters.AddWithValue("@Estado", Item.Estado);
                    command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                    command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                    command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                    resultado = command.ExecuteNonQuery();
                    Conexion.Close();
                }
            }
            return resultado;
        }

        public int InsertarActualizarProductorDetalleProduccionAnimalSync(FloraNuevaProductor.ProductorDetalleProduccionAnimal Item,  string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@IdProductorDetalleProduccionAnimal", Item.IdProductorDetalleProduccionAnimal);
                command.Parameters.AddWithValue("@Identificador", Item.Identificador);
                command.Parameters.AddWithValue("@IdProductor", Item.IdProductor); //Relacion Productor
                command.Parameters.AddWithValue("@IdAnimales", Item.IdAnimales);
                command.Parameters.AddWithValue("@Detalles", Item.Detalles);
                command.Parameters.AddWithValue("@Cantidad", Item.Cantidad);
                command.Parameters.AddWithValue("@Estado", Item.Estado);
                command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
            return resultado;
        }

        public int InsertarActualizarProductorDetalleProduccionVegetal(List <FloraNuevaProductor.ProductorDetalleProduccionVegetal> MiItem, string identificador ,string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                foreach (FloraNuevaProductor.ProductorDetalleProduccionVegetal Item in MiItem)
                {
                    Conexion.Open();
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@IdProductorDetalleProduccionVegetal", Item.IdProductorDetalleProduccionVegetal);
                    command.Parameters.AddWithValue("@Identificador", identificador);
                    command.Parameters.AddWithValue("@IdProductor", Item.IdProductor); //Relacion Productor
                    command.Parameters.AddWithValue("@IdCategoriaUsoSuelo", Item.IdCategoriaUsoSuelo);
                    command.Parameters.AddWithValue("@Detalles", Item.Detalles);
                    command.Parameters.AddWithValue("@Superficie", Item.Superficie);
                    command.Parameters.AddWithValue("@Estado", Item.Estado);
                    command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                    command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                    command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                    resultado = command.ExecuteNonQuery();
                    Conexion.Close();
                }
            }
            return resultado;
        }

        public int InsertarActualizarProductorDetalleProduccionVegetalSync(FloraNuevaProductor.ProductorDetalleProduccionVegetal Item, string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@IdProductorDetalleProduccionVegetal", Item.IdProductorDetalleProduccionVegetal);
                command.Parameters.AddWithValue("@Identificador", Item.Identificador);
                command.Parameters.AddWithValue("@IdProductor", Item.IdProductor); //Relacion Productor
                command.Parameters.AddWithValue("@IdCategoriaUsoSuelo", Item.IdCategoriaUsoSuelo);
                command.Parameters.AddWithValue("@Detalles", Item.Detalles);
                command.Parameters.AddWithValue("@Superficie", Item.Superficie);
                command.Parameters.AddWithValue("@Estado", Item.Estado);
                command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
            return resultado;
        }

        public int InsertarActualizarProductorDocumentoEntregado(List <FloraNuevaProductor.ProductorDocumentoEntregado> MiItem, string identificador ,string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                foreach (FloraNuevaProductor.ProductorDocumentoEntregado Item in MiItem)
                {
                    Conexion.Open();
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@IdProductorDocumentoEntregado", Item.IdProductorDocumentoEntregado);
                    command.Parameters.AddWithValue("@Identificador", identificador);
                    command.Parameters.AddWithValue("@IdProductor", Item.IdProductor); //Relacion Productor
                    command.Parameters.AddWithValue("@IdTipoDocumento", Item.IdTipoDocumento);
                    command.Parameters.AddWithValue("@Detalle", Item.Detalle);
                    command.Parameters.AddWithValue("@Estado", Item.Estado);
                    command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                    command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                    command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                    resultado = command.ExecuteNonQuery();
                    Conexion.Close();
                }
            }
            return resultado;
        }
        public int InsertarActualizarProductorDocumentoEntregadoSync(FloraNuevaProductor.ProductorDocumentoEntregado Item, string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@IdProductorDocumentoEntregado", Item.IdProductorDocumentoEntregado);
                command.Parameters.AddWithValue("@Identificador", Item.Identificador);
                command.Parameters.AddWithValue("@IdProductor", Item.IdProductor); //Relacion Productor
                command.Parameters.AddWithValue("@IdTipoDocumento", Item.IdTipoDocumento);
                command.Parameters.AddWithValue("@Detalle", Item.Detalle);
                command.Parameters.AddWithValue("@Estado", Item.Estado);
                command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
            return resultado;
        }

        public int InsertarActualizarProductorInventarioEspecies(List<FloraNuevaProductor.ProductorInventarioEspecies> MiItem, string identificador ,string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                foreach (FloraNuevaProductor.ProductorInventarioEspecies Item in MiItem)
                {
                    Conexion.Open();
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@IdProductorInventarioEspecies", Item.IdProductorInventarioEspecies);
                    command.Parameters.AddWithValue("@Identificador", identificador);
                    command.Parameters.AddWithValue("@IdProductor", Item.IdProductor); //Relacion Productor
                    command.Parameters.AddWithValue("@IdEspecieAbeja", Item.IdEspecieAbeja);
                    command.Parameters.AddWithValue("@CantidadEnTronco", Item.CantidadEnTronco);
                    command.Parameters.AddWithValue("@CantidadEnNidoArtificial", Item.CantidadEnNidoArtificial);
                    command.Parameters.AddWithValue("@CantidadEnCajaRustica", Item.CantidadEnCajaRustica);
                    command.Parameters.AddWithValue("@CantidadEnCajaTecnificada", Item.CantidadEnCajaTecnificada);
                    command.Parameters.AddWithValue("@Estado", Item.Estado);
                    command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                    command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                    command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                    resultado = command.ExecuteNonQuery();
                    Conexion.Close();
                }
            }
            return resultado;
        }

        public int InsertarActualizarProductorInventarioEspeciesSync(FloraNuevaProductor.ProductorInventarioEspecies Item, string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@IdProductorInventarioEspecies", Item.IdProductorInventarioEspecies);
                command.Parameters.AddWithValue("@Identificador", Item.Identificador);
                command.Parameters.AddWithValue("@IdProductor", Item.IdProductor); //Relacion Productor
                command.Parameters.AddWithValue("@IdEspecieAbeja", Item.IdEspecieAbeja);
                command.Parameters.AddWithValue("@CantidadEnTronco", Item.CantidadEnTronco);
                command.Parameters.AddWithValue("@CantidadEnNidoArtificial", Item.CantidadEnNidoArtificial);
                command.Parameters.AddWithValue("@CantidadEnCajaRustica", Item.CantidadEnCajaRustica);
                command.Parameters.AddWithValue("@CantidadEnCajaTecnificada", Item.CantidadEnCajaTecnificada);
                command.Parameters.AddWithValue("@Estado", Item.Estado);
                command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
            return resultado;
        }

        public int InsertarActualizarProductorMiembroHogar(List<FloraNuevaProductor.ProductorMiembroHogar> MiItem, string identificador ,string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                foreach (FloraNuevaProductor.ProductorMiembroHogar Item in MiItem)
                {
                    Conexion.Open();
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@IdProductorMiembroHogar", Item.IdProductorMiembroHogar);
                    command.Parameters.AddWithValue("@Identificador",identificador);
                    command.Parameters.AddWithValue("@IdProductor", Item.IdProductor); //Relacion Productor
                    command.Parameters.AddWithValue("@Nombre", Item.Nombre);
                    command.Parameters.AddWithValue("@IdParentezco", Item.IdParentezco);
                    command.Parameters.AddWithValue("@Sexo", Item.Sexo);
                    command.Parameters.AddWithValue("@Edad", Item.Edad);
                    command.Parameters.AddWithValue("@TieneAlgunaDiscapacidadOEnfermedadGrave", Item.TieneAlgunaDiscapacidadOEnfermedadGrave);
                    command.Parameters.AddWithValue("@Ocupacion", Item.Ocupacion);
                    command.Parameters.AddWithValue("@IdCondicionLaboral", Item.IdCondicionLaboral);
                    command.Parameters.AddWithValue("@SeguridadTrabajaTodoElAnno", Item.SeguridadTrabajaTodoElAnno);
                    command.Parameters.AddWithValue("@SeguridadTrabajaEntre48Y40Horas", Item.SeguridadTrabajaEntre48Y40Horas);
                    command.Parameters.AddWithValue("@SeguridadCotizaALaCaja", Item.SeguridadCotizaALaCaja);
                    command.Parameters.AddWithValue("@SeguridadGozaDeAlMenosUnoDeLosDerechosLaborales", Item.SeguridadGozaDeAlMenosUnoDeLosDerechosLaborales);
                    command.Parameters.AddWithValue("@SeguridadPercibeSuEmpleoComoSeguro", Item.SeguridadPercibeSuEmpleoComoSeguro);
                    command.Parameters.AddWithValue("@IndiceSeguridad", Item.IndiceSeguridad);
                    command.Parameters.AddWithValue("@IdSituacionAutoempleo", Item.IdSituacionAutoempleo);
                    command.Parameters.AddWithValue("@IndiceInsercionLaboral", Item.IndiceInsercionLaboral);
                    command.Parameters.AddWithValue("@IdSabeLeerYEscribir", Item.IdSabeLeerYEscribir);
                    command.Parameters.AddWithValue("@IdNivelEscolar", Item.IdNivelEscolar);
                    command.Parameters.AddWithValue("@IndiceNivelEducativo", Item.IndiceNivelEducativo);
                    command.Parameters.AddWithValue("@IdCondicionAseguramiento", Item.IdCondicionAseguramiento);
                    command.Parameters.AddWithValue("@IndiceCiudadaniaSocial", Item.IndiceCiudadaniaSocial);
                    command.Parameters.AddWithValue("@IdPertenenciaGrupoComunitario", Item.IdPertenenciaGrupoComunitario);
                    command.Parameters.AddWithValue("@PertenenciaGrupoComunitarioEspecificar", Item.PertenenciaGrupoComunitarioEspecificar);
                    command.Parameters.AddWithValue("@IndiceInclusionSocialPersona", Item.IndiceInclusionSocialPersona);
                    command.Parameters.AddWithValue("@Estado", Item.Estado);
                    command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                    command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                    command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                    resultado = command.ExecuteNonQuery();
                    Conexion.Close();
                }
            }
            return resultado;
        }

        public int InsertarActualizarProductorMiembroHogarSync(FloraNuevaProductor.ProductorMiembroHogar Item,  string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@IdProductorMiembroHogar", Item.IdProductorMiembroHogar);
                command.Parameters.AddWithValue("@Identificador", Item.Identificador);
                command.Parameters.AddWithValue("@IdProductor", Item.IdProductor); //Relacion Productor
                command.Parameters.AddWithValue("@Nombre", Item.Nombre);
                command.Parameters.AddWithValue("@IdParentezco", Item.IdParentezco);
                command.Parameters.AddWithValue("@Sexo", Item.Sexo);
                command.Parameters.AddWithValue("@Edad", Item.Edad);
                command.Parameters.AddWithValue("@TieneAlgunaDiscapacidadOEnfermedadGrave", Item.TieneAlgunaDiscapacidadOEnfermedadGrave);
                command.Parameters.AddWithValue("@Ocupacion", Item.Ocupacion);
                command.Parameters.AddWithValue("@IdCondicionLaboral", Item.IdCondicionLaboral);
                command.Parameters.AddWithValue("@SeguridadTrabajaTodoElAnno", Item.SeguridadTrabajaTodoElAnno);
                command.Parameters.AddWithValue("@SeguridadTrabajaEntre48Y40Horas", Item.SeguridadTrabajaEntre48Y40Horas);
                command.Parameters.AddWithValue("@SeguridadCotizaALaCaja", Item.SeguridadCotizaALaCaja);
                command.Parameters.AddWithValue("@SeguridadGozaDeAlMenosUnoDeLosDerechosLaborales", Item.SeguridadGozaDeAlMenosUnoDeLosDerechosLaborales);
                command.Parameters.AddWithValue("@SeguridadPercibeSuEmpleoComoSeguro", Item.SeguridadPercibeSuEmpleoComoSeguro);
                command.Parameters.AddWithValue("@IndiceSeguridad", Item.IndiceSeguridad);
                command.Parameters.AddWithValue("@IdSituacionAutoempleo", Item.IdSituacionAutoempleo);
                command.Parameters.AddWithValue("@IndiceInsercionLaboral", Item.IndiceInsercionLaboral);
                command.Parameters.AddWithValue("@IdSabeLeerYEscribir", Item.IdSabeLeerYEscribir);
                command.Parameters.AddWithValue("@IdNivelEscolar", Item.IdNivelEscolar);
                command.Parameters.AddWithValue("@IndiceNivelEducativo", Item.IndiceNivelEducativo);
                command.Parameters.AddWithValue("@IdCondicionAseguramiento", Item.IdCondicionAseguramiento);
                command.Parameters.AddWithValue("@IndiceCiudadaniaSocial", Item.IndiceCiudadaniaSocial);
                command.Parameters.AddWithValue("@IdPertenenciaGrupoComunitario", Item.IdPertenenciaGrupoComunitario);
                command.Parameters.AddWithValue("@PertenenciaGrupoComunitarioEspecificar", Item.PertenenciaGrupoComunitarioEspecificar);
                command.Parameters.AddWithValue("@IndiceInclusionSocialPersona", Item.IndiceInclusionSocialPersona);
                command.Parameters.AddWithValue("@Estado", Item.Estado);
                command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
            return resultado;
        }

        public int InsertarActualizarProductorProyecto(List<FloraNuevaProductor.ProductorProyecto> MiItem, string identificador ,string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                foreach (FloraNuevaProductor.ProductorProyecto Item in MiItem)
                {
                    Conexion.Open();
                    command.Parameters.Clear();
                    command.Parameters.AddWithValue("@IdProductorProyecto",Item.IdProductorProyecto);
                    command.Parameters.AddWithValue("@Identificador", identificador);
                    command.Parameters.AddWithValue("@IdProductor", Item.IdProductor); //Relacion Productor
                    command.Parameters.AddWithValue("@IdProyecto", Item.IdProyecto);//Relacion Proyecto
                    command.Parameters.AddWithValue("@EstatusIntegracion", Item.EstatusIntegracion);
                    if (Item.FechaIntegracion == Convert.ToDateTime("01/01/0001 0:00:00")) Item.FechaIntegracion = Convert.ToDateTime("01/01/1900 0:00:00");
                    command.Parameters.AddWithValue("@FechaIntegracion", Item.FechaIntegracion);
                    if (Item.FechaSalida == Convert.ToDateTime("01/01/0001 0:00:00")) Item.FechaSalida = Convert.ToDateTime("01/01/1900 0:00:00");
                    command.Parameters.AddWithValue("@FechaSalida", Item.FechaSalida);
                    command.Parameters.AddWithValue("@RazonSalida", Item.RazonSalida);
                    command.Parameters.AddWithValue("@Estado", Item.Estado);
                    command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                    command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                    command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                    command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                    command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                    resultado = command.ExecuteNonQuery();
                    Conexion.Close();
                };
            }
            return resultado;
        }

        public int InsertarActualizarProductorProyectoSync(FloraNuevaProductor.ProductorProyecto Item,  string nombreSP)
        {
            int resultado = new int();
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand(nombreSP, Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@IdProductorProyecto", Item.IdProductorProyecto);
                command.Parameters.AddWithValue("@Identificador", Item.Identificador);
                command.Parameters.AddWithValue("@IdProductor", Item.IdProductor); //Relacion Productor
                command.Parameters.AddWithValue("@IdProyecto", Item.IdProyecto);//Relacion Proyecto
                command.Parameters.AddWithValue("@EstatusIntegracion", Item.EstatusIntegracion);
                if (Item.FechaIntegracion == Convert.ToDateTime("01/01/0001 0:00:00")) Item.FechaIntegracion = Convert.ToDateTime("01/01/1900 0:00:00");
                command.Parameters.AddWithValue("@FechaIntegracion", Item.FechaIntegracion);
                if (Item.FechaSalida == Convert.ToDateTime("01/01/0001 0:00:00")) Item.FechaSalida = Convert.ToDateTime("01/01/1900 0:00:00");
                command.Parameters.AddWithValue("@FechaSalida", Item.FechaSalida);
                command.Parameters.AddWithValue("@RazonSalida", Item.RazonSalida);
                command.Parameters.AddWithValue("@Estado", Item.Estado);
                command.Parameters.AddWithValue("@Usuario", Item.Usuario);
                command.Parameters.AddWithValue("@Dispositivo", Item.Dispositivo);
                command.Parameters.AddWithValue("@FechaCreacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaCreacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@FechaModificacion", DateTime.Now);
                command.Parameters.AddWithValue("@FechaModificacionUtc", DateTime.UtcNow.ToString(Engine.EngineData.dateFormatUtc));
                command.Parameters.AddWithValue("@Transaccion", Item.Transaccion);
                resultado = command.ExecuteNonQuery();
                Conexion.Close();
            }
            return resultado;
        }


        public DataSet ConjuntoDeDatos (string Version)
        {
            SqlConnection Conexion = new SqlConnection(cadenaConexion);
            DataSet ds = new DataSet();
            using (Conexion)
            {
                Conexion.Open();
                SqlCommand command = new SqlCommand("Sp_ConjuntoDeDatos", Conexion);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.Clear();
                command.Parameters.AddWithValue("@Version", Version);
                DataTable dt = new DataTable();
                SqlDataReader lector =  command.ExecuteReader();
            
                lector.Close();
                Conexion.Close();
            }
            return ds;
        }
    }
}