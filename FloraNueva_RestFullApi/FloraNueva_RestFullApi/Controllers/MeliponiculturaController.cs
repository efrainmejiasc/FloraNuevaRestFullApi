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
    public class MeliponiculturaController : ApiController
    {
        //Productor
        //ProductorInventarioEspecies
        [HttpPut]
        public HttpResponseMessage PutMeliponicultura([FromBody] FloraNuevaProductor FloraNuevaMeliponicultura)
        {
            if (FloraNuevaMeliponicultura == null)
            {
                throw new ArgumentNullException();
            }

            var response = Request.CreateResponse<FloraNuevaProductor>(HttpStatusCode.Created, FloraNuevaMeliponicultura);
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int ExisteSyncIniciada = FuncionDb.ExisteSyncIniciada();
            if (ExisteSyncIniciada == -200) // VALIDAR SINCRONIZACION EN PROCESO
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.SyncEnProceso);// EXISTE SINCRONIZACION EN PROCESO
                return response;
            }

            int n = FuncionDb.ExisteIdentificador(FloraNuevaMeliponicultura.MiProductor.Identificador);
            if (n == 0)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.NoExisteIdentificador);// NO EXISTE IDENTIFICADOR
                return response;
            }

            n = FuncionDb.InsertarActualizarProductor(FloraNuevaMeliponicultura.MiProductor, "Sp_ActualizarProductor");
            if (n == -1)
            {
                if (FloraNuevaMeliponicultura.MiProductorInventarioEspecies != null)
                {
                    n = FuncionDb.InsertarActualizarProductorInventarioEspecies(FloraNuevaMeliponicultura.MiProductorInventarioEspecies, FloraNuevaMeliponicultura.MiProductor.Identificador, "Sp_ActualizarProductorInventarioEspecies");
                    if (n == -1)
                    {
                        response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + FloraNuevaMeliponicultura.MiProductor.Identificador.ToString().ToUpper());// ACTUALIZADO EXITOSAMENTE
                    }
                    else
                    {
                        response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.FalloActualizarProductorInventarioEspecies);// FALLO ACTUALIZACION
                    }
                }
                else
                {
                    response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + FloraNuevaMeliponicultura.MiProductor.Identificador.ToString().ToUpper());// ACTUALIZADO EXITOSAMENTE
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
