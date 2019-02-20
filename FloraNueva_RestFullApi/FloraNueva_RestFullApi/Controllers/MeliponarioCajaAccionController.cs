using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using FloraNueva_RestFullApi.Models;
using FloraNueva_RestFullApi.Engine;

namespace FloraNueva_RestFullApi.Controllers
{
    public class MeliponarioCajaAccionController : ApiController
    {
        //MeliponarioCajaAccion - > GUID MeliponarioCaja
        [HttpPut]
        public HttpResponseMessage PutDatosPersonales([FromBody] FloraNuevaProductor MeliponarioCajaAccion)
        {
            if (MeliponarioCajaAccion == null)
            {
                throw new ArgumentNullException();
            }

            var response = Request.CreateResponse<FloraNuevaProductor>(HttpStatusCode.Created, MeliponarioCajaAccion);
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int ExisteSyncIniciada = FuncionDb.ExisteSyncIniciada();
            if (ExisteSyncIniciada == -200) // VALIDAR SINCRONIZACION EN PROCESO
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.SyncEnProceso);// EXISTE SINCRONIZACION EN PROCESO
                return response;
            }

            int n = FuncionDb.ExisteIdentificador("Sp_ExisteIdentificadorMeliponarioCaja", MeliponarioCajaAccion.MiMeliponarioCajaAccion[0].Identificador);
            if (n == 0)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.NoExisteIdentificador);// NO EXISTE IDENTIFICADOR
                return response;
            }

            n = FuncionDb.InsertarActualizarMeliponarioCajaAccion(MeliponarioCajaAccion.MiMeliponarioCajaAccion,  "Sp_ActualizarMeliponarioCajaAccion");
            if (n == -1)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + MeliponarioCajaAccion.MiMeliponarioCajaAccion[0].Identificador.ToString().ToUpper());// ACTUALIZADO EXITOSAMENTE
            }
            else
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.FalloActualizarMeliponarioCajaAccion);// FALLO ACTUALIZACION
            }

            return response;

        }
    }
}
