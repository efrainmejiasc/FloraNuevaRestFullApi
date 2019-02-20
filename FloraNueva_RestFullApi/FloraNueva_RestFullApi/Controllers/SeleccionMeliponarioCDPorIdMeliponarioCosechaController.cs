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
    public class SeleccionMeliponarioCDPorIdMeliponarioCosechaController : ApiController
    {
        [HttpGet]
        public string GetSeleccionarConIdMeliponarioCosecha( string IdMeliponarioCosecha)
        {
            string resultado = string.Empty;
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            if (FuncionDb.ExisteSyncIniciada() == -200) //VALIDAR SINCRONIZACION EN PROCESO
            {
                return Engine.EngineData.SyncEnProceso;
            }
            DataTable dt = new DataTable();
            dt = FuncionDb.SeleccionarCosechaDetallePorIdMeliponarioCosecha(IdMeliponarioCosecha); // SELECCIONA FILA DE LA TABLA
            if (dt.Rows.Count != 0)
            {
                resultado = JsonConvert.SerializeObject(dt, Formatting.Indented);
            }
            else
            {
                resultado = Engine.EngineData.NoExisteRegistro;
            }
            return resultado;
        }
    }
}
