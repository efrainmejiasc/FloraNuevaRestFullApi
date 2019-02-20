using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using FloraNueva_RestFullApi.Models;
using System.Web.Script.Serialization;
using FloraNueva_RestFullApi.Engine;

namespace FloraNueva_RestFullApi.Controllers
{
    public class AnProMaterialEntregadoController : ApiController
    {
        //ProductorAbejasNativasMaterialEntregado -> GUID Productor
        [HttpPut]
        public HttpResponseMessage PutActualizarRegistroProductor([FromBody] FloraNuevaProductor AnProMaterialEntregado)
        {
            if (AnProMaterialEntregado.MiProductorAbejasNativasMaterialEntregado == null)
            {
                throw new ArgumentNullException();
            }

            var response = Request.CreateResponse<FloraNuevaProductor>(HttpStatusCode.Created, AnProMaterialEntregado);

            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int ExisteSyncIniciada = FuncionDb.ExisteSyncIniciada();
            if (ExisteSyncIniciada == -200) // VALIDAR SINCRONIZACION EN PROCESO
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.SyncEnProceso);// EXISTE SINCRONIZACION EN PROCESO
                return response;
            }

            int n = FuncionDb.ExisteIdentificador(AnProMaterialEntregado.MiProductor.Identificador);
            if (n == 0)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.NoExisteIdentificador);// NO EXISTE IDENTIFICADOR
                return response;
            }

            n = FuncionDb.InsertarActualizarProductorAbejasNativasMaterialEntregado(AnProMaterialEntregado.MiProductorAbejasNativasMaterialEntregado, AnProMaterialEntregado.MiProductor.Identificador, "Sp_ActualizarProductorAbejasNativasMaterialEntregado");
            if (n == -1)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + AnProMaterialEntregado.MiProductor.Identificador.ToString().ToUpper());// ACTUALIZADO EXITOSAMENTE
            }
            else
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.FalloAnProMaterialEntregado);// FALLO ACTUALIZACION
            }

            return response;
        }
    }
}
