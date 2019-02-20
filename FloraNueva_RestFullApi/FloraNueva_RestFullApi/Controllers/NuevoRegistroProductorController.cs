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
    public class NuevoRegistroProductorController : ApiController
    {
        //Productor
        //ProductorDocumentoEntregado
        [HttpPost]
        public HttpResponseMessage PostNuevoRegistroProductor([FromBody] FloraNuevaProductor FloraNuevaRegistro)
        {
            if (FloraNuevaRegistro.MiProductor == null)
            {
                throw new ArgumentNullException();
            }

            var response = Request.CreateResponse<FloraNuevaProductor>(HttpStatusCode.Created, FloraNuevaRegistro);
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int ExisteSyncIniciada = FuncionDb.ExisteSyncIniciada();
            if (ExisteSyncIniciada == -200) // VALIDAR SINCRONIZACION EN PROCESO
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.SyncEnProceso);// EXISTE SINCRONIZACION EN PROCESO
                return response;
            }

            int n = FuncionDb.ExisteNumeroCedula(FloraNuevaRegistro.MiProductor.NumeroCedula);
            if (n >= 1)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.ExisteNumeroCedula);// EXISTE NUMERO DE CEDULA
                return response;
            }

            n = FuncionDb.ExisteCodigoFloraNueva(FloraNuevaRegistro.MiProductor.CodigoFloraNueva);
            if (n >= 1)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.ExisteCodigoFloraNueva);// EXISTE CODIGO FLORA NUEVA
                return response;
            }

            int existeIdentificador = 1;
            while (existeIdentificador >= 1)
            {
                FloraNuevaRegistro.MiProductor.Identificador = Engine.EngineFloraNueva.IdentificadorReg().ToString();
                existeIdentificador = FuncionDb.ExisteIdentificador(FloraNuevaRegistro.MiProductor.Identificador); 
            }

            n = FuncionDb.InsertarActualizarProductor(FloraNuevaRegistro.MiProductor, "Sp_InsertarProductor");
            if (n == -1)
            {
                 n = FuncionDb.InsertarActualizarProductorDocumentoEntregado(FloraNuevaRegistro.MiProductorDocumentoEntregado, FloraNuevaRegistro.MiProductor.Identificador ,"Sp_ActualizarProductorDocumentoEntregado");
                 if (n == -1)
                 { 
                   response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + FloraNuevaRegistro.MiProductor.Identificador.ToString().ToUpper());// INSERTADO EXITOSAMENTE
                 }
                 else
                 {
                    response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.FalloNuevoProductor);// FALLO INSERCION
                 }
            }
            else
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.FalloNuevoProductor);// FALLO INSERCION
            }

            return response;
        }
    }
}
