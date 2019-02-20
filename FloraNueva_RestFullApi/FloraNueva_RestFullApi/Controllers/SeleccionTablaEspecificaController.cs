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
    public class SeleccionTablaEspecificaController : ApiController
    {
        [HttpGet]
        public string GetSeleccionarTodasFilasTabla(string NombreTabla)
        {
            string resultado = string.Empty;
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            DataTable dt = new DataTable();
            dt = FuncionDb.SeleccionarTodasFilasTabla(NombreTabla); // SELECCION DE TODAS LAS FILAS  DE LA TABLA
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
