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
    public class ProduccionAgricolaController : ApiController
    {
        //Productor
        //ProductorDetalleProduccionAnimal  - > GUID Productor 
        //ProductorDetalleProduccionVegetal - > GUID Productor 
        [HttpPut]
        public HttpResponseMessage PutProduccionAgricola([FromBody] FloraNuevaProductor FloraNuevaProduccionAgricola)
        {
            if (FloraNuevaProduccionAgricola == null)
            {
                throw new ArgumentNullException();
            }

            var response = Request.CreateResponse<FloraNuevaProductor>(HttpStatusCode.Created, FloraNuevaProduccionAgricola);
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int ExisteSyncIniciada = FuncionDb.ExisteSyncIniciada();
            if (ExisteSyncIniciada == -200) // VALIDAR SINCRONIZACION EN PROCESO
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.SyncEnProceso);// EXISTE SINCRONIZACION EN PROCESO
                return response;
            }

            int n = FuncionDb.ExisteIdentificador(FloraNuevaProduccionAgricola.MiProductor.Identificador);
            if (n == 0)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.NoExisteIdentificador);// NO EXISTE IDENTIFICADOR
                return response;
            }

            n = FuncionDb.InsertarActualizarProductor(FloraNuevaProduccionAgricola.MiProductor, "Sp_ActualizarProductor");
            if (n == -1)
            {
                n = -1; int m = -1;
                if (FloraNuevaProduccionAgricola.MiProductorDetalleProduccionAnimal != null)
                {
                    n = FuncionDb.InsertarActualizarProductorDetalleProduccionAnimal(FloraNuevaProduccionAgricola.MiProductorDetalleProduccionAnimal, FloraNuevaProduccionAgricola.MiProductor.Identificador, "Sp_ActualizarProductorDetalleProduccionAnimal");
                }
                if (FloraNuevaProduccionAgricola.MiProductorDetalleProduccionVegetal != null)
                {
                    m = FuncionDb.InsertarActualizarProductorDetalleProduccionVegetal(FloraNuevaProduccionAgricola.MiProductorDetalleProduccionVegetal, FloraNuevaProduccionAgricola.MiProductor.Identificador, "Sp_ActualizarProductorDetalleProduccionVegetal");
                }
                if (n == -1 && m == -1)
                {
                    response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + FloraNuevaProduccionAgricola.MiProductor.Identificador.ToString().ToUpper());// ACTUALIZADO EXITOSAMENTE
                }
                else
                {
                    response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.FalloActualizarProductorInterno);// FALLO ACTUALIZACION
                }
            }
            else
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.FalloActualizarProductor);// FALLO ACTUALIZACION
            }

            return response;
        }

    }
}
