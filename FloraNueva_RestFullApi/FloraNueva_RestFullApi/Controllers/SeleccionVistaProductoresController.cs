using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web.Script.Serialization;

namespace FloraNueva_RestFullApi.Controllers
{
    public class SeleccionVistaProductoresController : ApiController
    {
        [HttpGet]
        public string GetSeleccionVistaProductores()
        {
            string resultado = string.Empty;
            Engine.EngineData Valor = Engine.EngineData.Instance();
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int ExisteSyncIniciada = FuncionDb.ExisteSyncIniciada();
            if (ExisteSyncIniciada == -200) // VALIDAR SINCRONIZACION EN PROCESO
            {
                return resultado = Engine.EngineData.SyncEnProceso;// EXISTE SINCRONIZACION EN PROCESO
            }
            DataTable dt = new DataTable();
            dt = FuncionDb.SeleccionarVistaProductores();
            if (dt.Rows.Count >= 1)
                resultado = JsonConvert.SerializeObject(dt, Formatting.Indented);
            else
                resultado = Engine.EngineData.NoHayFilas;

            return resultado;
        }
    }
}
