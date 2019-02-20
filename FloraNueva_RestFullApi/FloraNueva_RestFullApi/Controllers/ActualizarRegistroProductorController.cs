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
    public class ActualizarRegistroProductorController : ApiController
    {
        [HttpPut]
        public HttpResponseMessage PutActualizarRegistroProductor([FromBody] FloraNuevaProductor FloraNuevaActualizar)
        {
            if (FloraNuevaActualizar.MiProductor == null)
            {
                throw new ArgumentNullException();
            }

            var response = Request.CreateResponse<FloraNuevaProductor>(HttpStatusCode.Created, FloraNuevaActualizar);

            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int ExisteSyncIniciada = FuncionDb.ExisteSyncIniciada();
            if (ExisteSyncIniciada == -200) // VALIDAR SINCRONIZACION EN PROCESO
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.SyncEnProceso);// EXISTE SINCRONIZACION EN PROCESO
                return response;
            }

            int n = FuncionDb.ExisteIdentificador(FloraNuevaActualizar.MiProductor.Identificador);
            if (n == 0)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.NoExisteIdentificador);// NO EXISTE IDENTIFICADOR
                return response;
            }

            n = FuncionDb.InsertarActualizarProductor(FloraNuevaActualizar.MiProductor, "Sp_ActualizarProductor");
            if (n == -1)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + FloraNuevaActualizar.MiProductor.Identificador.ToString().ToUpper());// ACTUALIZADO EXITOSAMENTE
            }
            else
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.FalloActualizarProductor);// FALLO ACTUALIZACION
            }

            return response;
        }
    }
}
