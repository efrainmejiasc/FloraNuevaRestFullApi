using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace FloraNueva_RestFullApi.Controllers
{
    public class SeleccionRegistrosSyncController : ApiController
    {
        [HttpGet]
        public string GetSeleccionRegistrosSync(string VersionOld , string VersionNew)// METODO USADO PARA OBTENER REGISTROS DE TABLAS APARTIR DE LA 2da SINCRONIZACION
        {
            string resultado = string.Empty;
            Engine.EngineData Valor = Engine.EngineData.Instance();
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int permiso = FuncionDb.PermisoSync(VersionNew);// VALIDA QUE LA VERSION SEA LA SINCRONIZACION EN PROCESO
            if (permiso < 1)
            {
                return resultado = Engine.EngineData.SyncNoPermitida;
            }

            DataSet ds = new DataSet();
            string[] Tabla = Valor.NombreTablaBidireccional();
            foreach (string nombreTabla in Tabla)
            {
                DataTable dt = new DataTable();
                dt = FuncionDb.SeleccionarFilasSync(nombreTabla, VersionOld);// SELECCIONA FILAS DE LA TABLA
                dt.TableName = nombreTabla;
                ds.Tables.Add(dt);
            }

            resultado = JsonConvert.SerializeObject(ds, Formatting.Indented);
            return resultado;
        }


        [HttpGet]
        public string GetSeleccionRegistrosSync(string NombreTabla,string VersionNew , string VersionOld)// METODO USADO PARA OBTENER REGISTROS DE TABLAS APARTIR DE LA 2da SINCRONIZACION
        {
            string resultado = string.Empty;
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int permiso = FuncionDb.PermisoSync(VersionNew);// VALIDA QUE LA VERSION SEA LA SINCRONIZACION EN PROCESO
            if (permiso < 1)
            {
                return resultado = Engine.EngineData.SyncNoPermitida;
            }
            DataTable dt = new DataTable();
            dt = FuncionDb.SeleccionarFilasSync(NombreTabla,VersionOld);// SELECCIONA FILAS DE LA TABLA
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
