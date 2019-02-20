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
    public class EngineSyncController : ApiController
    {
        [HttpPost]
        public HttpResponseMessage PostEngyneSync([FromBody] ClienteRegistroSync Cliente) // REGISTRA SINCRONIZACION EN TABLA
        {
            if (Cliente == null)
            {
                throw new ArgumentNullException();
            }

            var response = Request.CreateResponse<ClienteRegistroSync>(HttpStatusCode.Created, Cliente);
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int ExisteSyncIniciada = FuncionDb.ExisteSyncIniciada();
            if (ExisteSyncIniciada == -200) // VALIDAR SINCRONIZACION EN PROCESO
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "EngineSync/" + Engine.EngineData.SyncEnProceso);// EXISTE SINCRONIZACION EN PROCESO
                return response;
            }

            Cliente.Version = string.Empty;
            int existe = 1;
            while (existe >= 1)
            {
                Cliente.Version = Engine.EngineFloraNueva.IdentificadorReg().ToString(); // CREA IDENTIFICADOR (GUID) DE LA VERSION DE SINCRONIZACION
                existe = FuncionDb.ExisteVersionSync(Cliente.Version); // VALIDA QUE EL GUID NO EXISTA EN DB
            }

            int resultado = FuncionDb.InsertarSync(Cliente.Version, Cliente.Usuario, Cliente.Dispositivo, Cliente.Estado);

            if (resultado == 1)
            {
                 response.Headers.Location = new Uri(EngineData.Sitio + "EngineSync/" + Cliente.Version);// RETORNA IDENTIFICADOR (GUID) DE LA VERSION DE SINCRONIZACION
            }
            else
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "EngineSync" + Engine.EngineData.SyncRegistroFallido);// LA SINCRONIZACION NO PUDO SER REGISTRADA
                return response;
            }

            return response;
        }

        [HttpPut]
        public HttpResponseMessage PutEngyneSync([FromBody] SyncEstado SyncEstado)// ACTUALIZAR ESTADO DE LA SINCRONIZACION
        {
            if (SyncEstado == null)
            {
                throw new ArgumentNullException();
            }

            var response = Request.CreateResponse<SyncEstado>(HttpStatusCode.Created, SyncEstado);
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int n = FuncionDb.ExisteVersionSync(SyncEstado.Version);// VALIDAR SI EXISTE LA VERSION A ACTUALIZAR
            if (n > 0)
            {
                n = FuncionDb.ActualizarSyncEstado(SyncEstado.Version, SyncEstado.Estado);// ACTUALIZAR LA VERSION
                if (n == -1)
                {
                    response.Headers.Location = new Uri(EngineData.Sitio + "EngineSync/" + Engine.EngineData.SyncActualizacionOK);// ACTUALIZACION OK
                }
                else
                {
                   response.Headers.Location = new Uri(EngineData.Sitio + "EngineSync/" + Engine.EngineData.SyncActualizacionFallo);// FALLO LA ACTUALIZACION
                }
            }
            else
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "EngineSync/" + Engine.EngineData.SyncNoExiste);// NO EXISTE LA VERSION DE SINCRONIZACION
            }
            return response;
        }

        [HttpGet]
        public string GetEngyneSync(string Version) // VALIDA ESTADO DE LA SINCRONIZACION  { OK , FALLO}
        {
            string resultado = string.Empty;
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            SyncEstado SyncEstado = new SyncEstado();
            int r = FuncionDb.SyncExito(Version); // VALIDA VERSION DE SINCRONIZACION
            if (r > 0)
            {
                SyncEstado = Engine.EngineFloraNueva.SetSynEstado(Version, Engine.EngineData.SyncOk);
            }
            else
            {
                SyncEstado = Engine.EngineFloraNueva.SetSynEstado(Version, Engine.EngineData.SyncFallo);
            }
            resultado = new JavaScriptSerializer().Serialize(SyncEstado);// SERIALIZAR LA CLASE SYNCESTADO
            return resultado;
        }
    }
}
