using FloraNueva_RestFullApi.Models;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Web;

namespace FloraNueva_RestFullApi.Engine
{
    public class EngineFloraNueva
    {
       // CONSTRUCCION DE IDENTIFICADOR GUID
        public static Guid IdentificadorReg()
        {
            Guid g = CrearGuid();
            while (g == Guid.Empty)
            {
               g = CrearGuid();
            }
            return g;
        }

        private static Guid CrearGuid()
        {
            return Guid.NewGuid();
        }


        public static SyncEstado SetSynEstado(string version, string estado)
        {
            SyncEstado SyncEstado = new SyncEstado
            {
                Version = version,
                Estado = estado
            };
            return SyncEstado;
        }

        public static Image ByteArrayToImage(byte[] byteArrayIn)
        {
            MemoryStream ms = new MemoryStream(byteArrayIn);
            return Image.FromStream(ms);
        }

        public static byte[] ImageToByteArray(Image imageIn)
        {
            MemoryStream ms = new MemoryStream();
            imageIn.Save(ms, ImageFormat.Jpeg);
            return ms.ToArray();
        }

        public static Image ObtenerImagenNoDisponible()
        {
            Image img = Image.FromFile(System.Web.Hosting.HostingEnvironment.MapPath("/Recurso/Foto.jpg"));
            return img;
        }

        // CONSTRUCION DE QUERYS SQL

        public static string ConstruirSeleccionSql(string NombreTabla, string Identificador, string Id)
        {
            string SQL = string.Empty;
            if(Identificador != "0")
            {
                SQL = "SELECT * FROM " + NombreTabla + " WITH (HOLDLOCK, ROWLOCK) WHERE  IDENTIFICADOR = " +   "'" + Identificador + "'"  ;
            }
            else if (Id != "0")
            {
                SQL = "SELECT * FROM " + NombreTabla + " WITH (HOLDLOCK, ROWLOCK) WHERE Id" + NombreTabla + " = "  + Id ;
            }
            return SQL;
        }

        public static string ConstruirSeleccionSql(string NombreTabla, string Identificador)
        {
            string SQL = string.Empty;
            SQL = "SELECT MAX(Id" + NombreTabla +") AS Id FROM " + NombreTabla + " WITH (HOLDLOCK, ROWLOCK) WHERE  IDENTIFICADOR = " + "'" + Identificador + "'";
            return SQL;
        }

        public static string ContruirSeleccionFilasSyn (string NombreTabla , string Version)
        {
            string SQL = string.Empty;
            SQL = "SELECT * FROM " + NombreTabla + " WHERE  Identificador  IN (SELECT DISTINCT Identificador FROM " + NombreTabla + "Track" +
                       " WHERE FechaModificacionUtc > (SELECT FechaCreacionUtc FROM SyncTransaccion WHERE Version =" + "'" + Version + "'" + " )) ORDER BY Id" + NombreTabla + " ASC";
            return SQL;
        }


        public static string ConstruirSeleccionConIdMeliponario(string NombreTabla, string IdMeliponario)
        {
            string SQL = string.Empty;
            SQL = "SELECT *  FROM " + NombreTabla + " WITH (HOLDLOCK, ROWLOCK) WHERE  IdMeliponario = " + "'" + IdMeliponario + "'";
            return SQL;
        }

        public static string ConstruirSeleccionProductorMasProductorProyecto (string IdProyecto)
        {
            string SQL = string.Empty;
            SQL = "SELECT A.IdProductor,A.Identificador,A.Nombres,A.Apellido1,A.Apellido2,A.Foto, A.CodigoFloraNueva,A.NumeroCedula, A.IdPais,(SELECT Nombre FROM Pais WHERE IdPais = A.IdPais) AS NombrePais, A.IdGrupo,(SELECT Nombre FROM Grupo WHERE IdGrupo = A.IdGrupo) AS NombreGrupo,A.IdDivisionAdministrativa1,(SELECT Nombre FROM DivisionAdministrativa1 WHERE IdDivisionAdministrativa1 = A.IdDivisionAdministrativa1)  AS NombreDivisionAdministrativa1,A.IdDivisionAdministrativa2,(SELECT Nombre FROM DivisionAdministrativa2 WHERE IdDivisionAdministrativa2 = A.IdDivisionAdministrativa2)  AS NombreDivisionAdministrativa2,A.IdDivisionAdministrativa3,(SELECT Nombre FROM DivisionAdministrativa3 WHERE IdDivisionAdministrativa3 = A.IdDivisionAdministrativa3)  AS NombreDivisionAdministrativa3,A.Estado,B.IdProyecto,B.IdProductorProyecto,B.Estado FROM Productor A, ProductorProyecto B WITH(HOLDLOCK, ROWLOCK) WHERE A.Identificador = B.Identificador AND B.IdProyecto = " + IdProyecto;
            return SQL;
        }

        public static string ConstruirSeleccionMeliponarioCajaPorIdMeliponario(string IdMeliponario)
        {
            string SQL = string.Empty;
            SQL = "SELECT * FROM MeliponarioCaja  WITH (HOLDLOCK, ROWLOCK) WHERE IdMeliponario = " + IdMeliponario;
            return SQL;
        }

        public static string ConstruirSeleccionCosechaDetallePorIdMeliponarioCosecha(string IdMeliponarioCosecha)
        {
            string SQL = string.Empty;
            SQL = "SELECT * FROM MeliponarioCosechaDetalle WITH (HOLDLOCK, ROWLOCK) WHERE IdMeliponarioCosecha = " + IdMeliponarioCosecha;
            return SQL;
        }

        public static string ConstruirSeleccionCosechaDetalleCajaPorIdMeliponarioCosechaDetalle(string IdMeliponarioCosechaDetalle)
        {
            string SQL = string.Empty;
            SQL = "SELECT * FROM MeliponarioCosechaDetalleCaja WITH (HOLDLOCK, ROWLOCK) WHERE IdMeliponarioCosechaDetalle = " + IdMeliponarioCosechaDetalle;
            return SQL;
        }

        public static string ConstruirSeleccionarMeliponarioCajaHistorialPorIdMeliponarioCaja(string IdMeliponarioCaja)
        {
            string SQL = string.Empty;
            SQL = "SELECT * FROM MeliponarioCajaHistorial  WITH (HOLDLOCK, ROWLOCK) WHERE IdMeliponarioCaja = " + IdMeliponarioCaja;
            return SQL;
        }

    }

}