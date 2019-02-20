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
    public class SeleccionCatalogoController : ApiController
    {

        [HttpGet]
        public string GetSeleccionRegistrosSync()// METODO USADO PARA OBTENER REGISTROS DE TABLAS CATALOGOS
        {
            string resultado = string.Empty;
            Engine.EngineData Valor = Engine.EngineData.Instance();
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            DataSet ds = new DataSet();
            string[] Tabla = Valor.NombreTablaUnidireccional();
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

    }
}
