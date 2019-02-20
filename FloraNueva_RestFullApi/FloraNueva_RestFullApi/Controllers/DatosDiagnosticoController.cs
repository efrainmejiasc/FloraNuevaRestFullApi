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
    public class DatosDiagnosticoController : ApiController
    {
       //Productor
      //ProductorDocumentoEntregado - > GUID Productor
       [HttpPut]
        public HttpResponseMessage PutDatosDiagnostico([FromBody] FloraNuevaProductor FloraNuevaDatosDianostico)
        {
            if (FloraNuevaDatosDianostico == null)
            {
                throw new ArgumentNullException();
            }

            var response = Request.CreateResponse<FloraNuevaProductor>(HttpStatusCode.Created, FloraNuevaDatosDianostico);
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int ExisteSyncIniciada = FuncionDb.ExisteSyncIniciada();
            if (ExisteSyncIniciada == -200) // VALIDAR SINCRONIZACION EN PROCESO
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.SyncEnProceso);// EXISTE SINCRONIZACION EN PROCESO
                return response;
            }

            int n = FuncionDb.ExisteIdentificador(FloraNuevaDatosDianostico.MiProductor.Identificador);
            if (n == 0)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.NoExisteIdentificador);// NO EXISTE IDENTIFICADOR
                return response;
            }

            n = FuncionDb.InsertarActualizarProductor(FloraNuevaDatosDianostico.MiProductor, "Sp_ActualizarProductor");
            if (n == -1)
            {
                if (FloraNuevaDatosDianostico.MiProductorDocumentoEntregado != null)
                {
                    n = FuncionDb.InsertarActualizarProductorDocumentoEntregado(FloraNuevaDatosDianostico.MiProductorDocumentoEntregado, FloraNuevaDatosDianostico.MiProductor.Identificador, "Sp_ActualizarProductorDocumentoEntregado");
                    if (n == -1)
                    {
                        response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + FloraNuevaDatosDianostico.MiProductor.Identificador.ToString().ToUpper());// ACTUALIZADO EXITOSAMENTE
                    }
                    else
                    {
                        response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.FalloActualizarProductorDocumentoEntregado);// FALLO ACTUALIZACION
                    }
                }
                else
                {
                    response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + FloraNuevaDatosDianostico.MiProductor.Identificador.ToString().ToUpper());// ACTUALIZADO EXITOSAMENTE
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
