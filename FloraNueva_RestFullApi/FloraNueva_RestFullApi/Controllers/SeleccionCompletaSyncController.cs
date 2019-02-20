using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Data;
using System.Web.Script.Serialization;
using Newtonsoft.Json;

namespace FloraNueva_RestFullApi.Controllers
{
    public class SeleccionCompletaSyncController : ApiController
    {
        [HttpGet]
        public string GetSeleccionCompletaSync(string Version)// METODO USADO PARA OBTENER REGISTROS DE TABLAS PARA LA 1ERA SINCRONIZACION
        {
            string resultado = string.Empty;
            Engine.EngineData Valor = Engine.EngineData.Instance();
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int permiso = FuncionDb.PermisoSync(Version);// VALIDA QUE LA VERSION SEA LA SINCRONIZACION EN PROCESO
            if (permiso < 1)
            {
                return resultado = Engine.EngineData.SyncNoPermitida;
            }
            DataSet ds = new DataSet();
            string[] Tabla = Valor.NombreTablaBidireccional();
            foreach (string nombreTabla in Tabla)
            {
                DataTable dt = new DataTable();
                dt = FuncionDb.SeleccionarTodasFilasTabla(nombreTabla);// SELECCIONA FILAS DE LA TABLA
                dt.TableName = nombreTabla;
                ds.Tables.Add(dt);
            }
            resultado = JsonConvert.SerializeObject(ds, Formatting.Indented);
            return resultado;
        }


        [HttpGet]
        public string GetSeleccionarTodasFilasTabla(string NombreTabla, string Version)// METODO USADO PARA OBTENER REGISTROS DE TABLAS AL TERMINAR INSTALACION DE LA APP
        {
            string resultado = string.Empty;
            Engine.EngineDb FuncionDb = new Engine.EngineDb();          
            int permiso = FuncionDb.PermisoSync(Version);// VALIDA QUE LA VERSION SEA LA SINCRONIZACION EN PROCESO
            if (permiso < 1)
            {
                return resultado = Engine.EngineData.SyncNoPermitida;
            }
            DataTable dt = new DataTable();
            dt = FuncionDb.SeleccionarTodasFilasTabla(NombreTabla); // SELECCION DE FILAS 
            if (dt.Rows.Count != 0)
            {
                resultado = JsonConvert.SerializeObject(dt, Formatting.Indented);
            }
            else
            {
                resultado = Engine.EngineData.NoHayFilas;
            }
            return resultado;
        }
    }
}
