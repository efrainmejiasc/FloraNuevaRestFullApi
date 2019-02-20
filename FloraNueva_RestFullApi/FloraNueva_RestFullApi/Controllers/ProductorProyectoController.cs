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
    public class ProductorProyectoController : ApiController
    {
        //ProductorProyecto - > GUID Productor
        [HttpPut]
        public HttpResponseMessage PutProductorProyecto([FromBody] FloraNuevaProductor ProductorProyecto)
        {
            if (ProductorProyecto == null)
            {
                throw new ArgumentNullException();
            }

            var response = Request.CreateResponse<FloraNuevaProductor>(HttpStatusCode.Created, ProductorProyecto);
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int ExisteSyncIniciada = FuncionDb.ExisteSyncIniciada();
            if (ExisteSyncIniciada == -200) // VALIDAR SINCRONIZACION EN PROCESO
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.SyncEnProceso);// EXISTE SINCRONIZACION EN PROCESO
                return response;
            }

            int n = FuncionDb.ExisteIdentificador(ProductorProyecto.MiProductor.Identificador);
            if (n == 0)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.NoExisteIdentificador);// NO EXISTE IDENTIFICADOR
                return response;
            }

            if (ProductorProyecto.MiProductorProyecto[0].Transaccion == EngineData.Insertar)
            {
                n = FuncionDb.ExisteProductorProyectoActivo(ProductorProyecto.MiProductor.Identificador, ProductorProyecto.MiProductorProyecto[0].FechaIntegracion);
                if (n > 0) 
                {
                    response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.ProductorProyectoActivo);// EL PRODUCTOR TIENE UN PROYECTO ACTIVO
                }
                else
                {
                    n = FuncionDb.InsertarActualizarProductorProyecto(ProductorProyecto.MiProductorProyecto, ProductorProyecto.MiProductor.Identificador, "Sp_InsertarProductorProyecto");
                    if (n == -1)
                    {
                        response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + ProductorProyecto.MiProductor.Identificador);// EXITO
                    }
                    else
                    {
                        response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.FalloActualizarProductorProyecto);// FALLO 
                    }
                }
            }
            else
            {
                n = FuncionDb.InsertarActualizarProductorProyecto(ProductorProyecto.MiProductorProyecto, ProductorProyecto.MiProductor.Identificador, "Sp_ActualizarProductorProyecto");
                if (n == -1)
                {
                    response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + ProductorProyecto.MiProductor.Identificador);// EXITO
                }
                else
                {
                    response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.FalloActualizarProductorProyecto);// FALLO 
                }
            }

            return response;
        }
    }
}
