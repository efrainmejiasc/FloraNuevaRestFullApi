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
    public class AnProVisitaIndividualPutController : ApiController
    {
          //ProductorAbejasNativasVisitaIndividual                             - >  GUID Productor
         //ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria
        //ProductorAbejasNativasVisitaIndividualColmenasEnCaja
       //ProductorAbejasNativasVisitaIndividualColmenasEnTrampa
       [HttpPut]
        public HttpResponseMessage PostAnProVisitaIndividual([FromBody] FloraNuevaProductor AnProVisitaIndividual)
        {
            if (AnProVisitaIndividual == null)
            {
                throw new ArgumentNullException();
            }

            var response = Request.CreateResponse<FloraNuevaProductor>(HttpStatusCode.Created, AnProVisitaIndividual);
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int ExisteSyncIniciada = FuncionDb.ExisteSyncIniciada();
            if (ExisteSyncIniciada == -200) // VALIDAR SINCRONIZACION EN PROCESO
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.SyncEnProceso);// EXISTE SINCRONIZACION EN PROCESO
                return response;
            }

            int n = FuncionDb.ExisteIdentificador(AnProVisitaIndividual.MiProductor.Identificador);
            if (n == 0)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.NoExisteIdentificador);// NO EXISTE IDENTIFICADOR
                return response;
            }

            int a = 0; int b = -1; int c = -1; int d = -1;
            if (AnProVisitaIndividual.MiProductorAbejasNativasVisitaIndividual != null)
            {
                a = FuncionDb.InsertarActualizarProductorAbejasNativasVisitaIndividual(AnProVisitaIndividual.MiProductorAbejasNativasVisitaIndividual, AnProVisitaIndividual.MiProductor.Identificador, "Sp_ActualizarProductorAbejasNativasVisitaIndividual");
            }
            if (AnProVisitaIndividual.MiProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria != null)
            {
                b = FuncionDb.InsertarActualizarProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria(AnProVisitaIndividual.MiProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria, AnProVisitaIndividual.MiProductor.Identificador, "Sp_ActualizarProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria");
            }
            if (AnProVisitaIndividual.MiProductorAbejasNativasVisitaIndividualColmenasEnCaja != null)
            {
                c = FuncionDb.InsertarActualizarProductorAbejasNativasVisitaIndividualColmenasEnCaja(AnProVisitaIndividual.MiProductorAbejasNativasVisitaIndividualColmenasEnCaja, AnProVisitaIndividual.MiProductor.Identificador, "Sp_ActualizarProductorAbejasNativasVisitaIndividualColmenasEnCaja");
            }
            if (AnProVisitaIndividual.MiProductorAbejasNativasVisitaIndividualColmenasEnTrampa != null)
            {
                d = FuncionDb.InsertarActualizarProductorAbejasNativasVisitaIndividualColmenasEnTrampa(AnProVisitaIndividual.MiProductorAbejasNativasVisitaIndividualColmenasEnTrampa, AnProVisitaIndividual.MiProductor.Identificador, "Sp_ActualizarProductorAbejasNativasVisitaIndividualColmenasEnTrampa");
            }

            if (a >= 1 && b == -1 && c == -1 && d == -1)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + a);// INSERTADO EXITOSAMENTE
            }
            else
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.FalloAnProVisitaIndividual);// FALLO INSERCION
            }

            return response;
        }
    }
}
