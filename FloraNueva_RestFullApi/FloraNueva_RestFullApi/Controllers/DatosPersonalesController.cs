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
    public class DatosPersonalesController : ApiController
    {
        //Productor
       //ProductorContacto - > GUID Productor
       [HttpPut]
        public HttpResponseMessage PutDatosPersonales([FromBody] FloraNuevaProductor FloraNuevaDatosPersonales)
        {
            if (FloraNuevaDatosPersonales == null)
            {
                throw new ArgumentNullException();
            }

            var response = Request.CreateResponse<FloraNuevaProductor>(HttpStatusCode.Created, FloraNuevaDatosPersonales);
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int ExisteSyncIniciada = FuncionDb.ExisteSyncIniciada();
            if (ExisteSyncIniciada == -200) // VALIDAR SINCRONIZACION EN PROCESO
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.SyncEnProceso);// EXISTE SINCRONIZACION EN PROCESO
                return response;
            }

            int n = FuncionDb.ExisteIdentificador(FloraNuevaDatosPersonales.MiProductor.Identificador);
            if (n == 0)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.NoExisteIdentificador);// NO EXISTE IDENTIFICADOR
                return response;
            }

            n = FuncionDb.InsertarActualizarProductor(FloraNuevaDatosPersonales.MiProductor, "Sp_ActualizarProductor");
            if (n == -1)
            {
                if (FloraNuevaDatosPersonales.MiProductorContacto != null)
                {
                    n = FuncionDb.InsertarActualizarProductorContacto(FloraNuevaDatosPersonales.MiProductorContacto, FloraNuevaDatosPersonales.MiProductor.Identificador, "Sp_ActualizarProductorContacto");
                    if (n == -1)
                    {
                        response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + FloraNuevaDatosPersonales.MiProductor.Identificador.ToString().ToUpper());// ACTUALIZADO EXITOSAMENTE
                    }
                    else
                    {
                        response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.FalloActualizarProductorContacto);// FALLO ACTUALIZACION
                    }
                }
                else
                {
                    response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + FloraNuevaDatosPersonales.MiProductor.Identificador.ToString().ToUpper());// ACTUALIZADO EXITOSAMENTE
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
