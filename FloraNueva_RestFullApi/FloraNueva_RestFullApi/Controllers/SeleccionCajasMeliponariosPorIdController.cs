using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using FloraNueva_RestFullApi.Models;
using FloraNueva_RestFullApi.Engine;
using System.Data;
using Newtonsoft.Json;

namespace FloraNueva_RestFullApi.Controllers
{
    public class SeleccionCajasMeliponariosPorIdController : ApiController
    {
        [HttpGet]
        public string GetSeleccionVistaProductores(string IdMeliponario)
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
            dt = FuncionDb.SeleccionarCajasMeliponarioPorId(IdMeliponario);
            if (dt.Rows.Count >= 1)
                resultado = JsonConvert.SerializeObject(dt, Formatting.Indented);
            else
                resultado = Engine.EngineData.NoHayFilas;
            return resultado;
        }
    }
}
