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
    public class BienestarSocialYFamiliarController : ApiController
    {
        //Productor   
        //ProductorMiembroHogar  - > GUID Productor
       [HttpPut]
        public HttpResponseMessage PutBienestarSocialYFamiliar([FromBody] FloraNuevaProductor FloraNuevaBienestarSocialYFamiliar)
        {
            if (FloraNuevaBienestarSocialYFamiliar == null)
            {
                throw new ArgumentNullException();
            }

            var response = Request.CreateResponse<FloraNuevaProductor>(HttpStatusCode.Created, FloraNuevaBienestarSocialYFamiliar);

            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int ExisteSyncIniciada = FuncionDb.ExisteSyncIniciada();
            if (ExisteSyncIniciada == -200) // VALIDAR SINCRONIZACION EN PROCESO
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.SyncEnProceso);// EXISTE SINCRONIZACION EN PROCESO
                return response;
            }

            int n = FuncionDb.ExisteIdentificador(FloraNuevaBienestarSocialYFamiliar.MiProductor.Identificador);
            if (n == 0)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.NoExisteIdentificador);// NO EXISTE IDENTIFICADOR
                return response;
            }

            n = FuncionDb.InsertarActualizarProductor(FloraNuevaBienestarSocialYFamiliar.MiProductor, "Sp_ActualizarProductor");
            if (n == -1)
            {
                if (FloraNuevaBienestarSocialYFamiliar.MiProductorMiembroHogar != null)
                {
                    n = FuncionDb.InsertarActualizarProductorMiembroHogar(FloraNuevaBienestarSocialYFamiliar.MiProductorMiembroHogar, FloraNuevaBienestarSocialYFamiliar.MiProductor.Identificador, "Sp_ActualizarProductorMiembroHogar");
                    if (n == -1)
                    {
                        response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + FloraNuevaBienestarSocialYFamiliar.MiProductor.Identificador.ToString().ToUpper());// ACTUALIZADO EXITOSAMENTE
                    }
                    else
                    {
                        response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.FalloActualizarProductorMiembroHogar);// FALLO ACTUALIZACION
                    }
                }
                else
                {
                    response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + FloraNuevaBienestarSocialYFamiliar.MiProductor.Identificador.ToString().ToUpper());// ACTUALIZADO EXITOSAMENTE
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
