using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using FloraNueva_RestFullApi.Models;
using FloraNueva_RestFullApi.Engine;
using System.Web.Script.Serialization;

namespace FloraNueva_RestFullApi.Controllers
{
    public class MeliponarioCajaController : ApiController
    {
        //MeliponarioCaja   -  GUID  MeliponarioCaja
       //MeliponarioCajaHistorial   - > GUID Productor
       [HttpPut]
        public HttpResponseMessage PutDatosPersonales([FromBody] FloraNuevaProductor MeliponarioCaja)
        {
            if (MeliponarioCaja == null)
            {
                throw new ArgumentNullException();
            }

            List<RespuestaRegistroEntrada> Respuesta = new List<RespuestaRegistroEntrada>();
            var response = Request.CreateResponse<List<RespuestaRegistroEntrada>>(HttpStatusCode.Created,Respuesta);
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int ExisteSyncIniciada = FuncionDb.ExisteSyncIniciada();
            if (ExisteSyncIniciada == -200) // VALIDAR SINCRONIZACION EN PROCESO
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.SyncEnProceso);// EXISTE SINCRONIZACION EN PROCESO
                return response;
            }

            int n = 0;
            string IdentificadorMeliponarioCaja = EngineData.Zero;
            if (MeliponarioCaja.MiMeliponarioCaja != null)
            {
                if (MeliponarioCaja.MiMeliponarioCaja[0].Transaccion == EngineData.Insertar)
                {
                    int existeIdentificador = 1;
                    while (existeIdentificador >= 1)
                    {
                        IdentificadorMeliponarioCaja = Engine.EngineFloraNueva.IdentificadorReg().ToString();
                        existeIdentificador = FuncionDb.ExisteIdentificador("Sp_ExisteIdentificadorMeliponarioCaja", IdentificadorMeliponarioCaja);
                    }
                    n = FuncionDb.NumeroDeCajasIdMeliponario(MeliponarioCaja.MiMeliponarioCaja[0].IdMeliponario);//Validar que el IdMeliponario Posea <= 30 Cajas
                    if (n <= 30)
                    {
                        n = FuncionDb.InsertarActualizarMeliponarioCaja(MeliponarioCaja.MiMeliponarioCaja, IdentificadorMeliponarioCaja, "Sp_ActualizarMeliponarioCaja");
                    }
                    else
                    {
                        n = -3;
                    }
                }
                else if (MeliponarioCaja.MiMeliponarioCaja[0].Transaccion == EngineData.Actualizar || MeliponarioCaja.MiMeliponarioCaja[0].Transaccion == EngineData.ActualizarEstado)
                {
                    IdentificadorMeliponarioCaja = MeliponarioCaja.MiMeliponarioCaja[0].Identificador;
                    n = FuncionDb.ExisteIdentificador("Sp_ExisteIdentificadorMeliponarioCaja", IdentificadorMeliponarioCaja);
                    if (n > 0)
                    {
                        n = FuncionDb.InsertarActualizarMeliponarioCaja(MeliponarioCaja.MiMeliponarioCaja, IdentificadorMeliponarioCaja, "Sp_ActualizarMeliponarioCaja");
                    }
                    else
                    {
                        n = -2;
                    }
                }
            }

            int m = 0;
            int indice = 0;
            if (MeliponarioCaja.MiMeliponarioCajaHistorial != null)
            {
                foreach (FloraNuevaProductor.MeliponarioCajaHistorial Item in  MeliponarioCaja.MiMeliponarioCajaHistorial)
                {
                    RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
                    m = FuncionDb.InsertarActualizarMeliponarioCajaHistorial(Item,  "Sp_ActualizarMeliponarioCajaHistorial");
                    if (m == -1)
                    {
                        Registro.Identificador = Item.Identificador;
                        Registro.Resultado = true;
                        Registro.Posicion = indice;
                        Registro.Error = EngineData.Zero;
                        Registro.NombreTabla = "MeliponarioCajaHistorial";
                    }
                    else
                    {
                        Registro.Identificador = Item.Identificador;
                        Registro.Resultado = false;
                        Registro.Posicion = indice;
                        Registro.Error = EngineData.FalloActualizarMeliponarioCosechaDetalle;
                        Registro.NombreTabla = "MeliponarioCajaHistorial";
                    }
                    Respuesta.Insert(indice, Registro);
                    indice++;
                }
            }

            if (Respuesta.Count > 0)
            {
                string result = new JavaScriptSerializer().Serialize(Respuesta);
                response = new HttpResponseMessage()
                {
                    Content = new StringContent(result, System.Text.Encoding.UTF8, "application/json")
                };
            }

            if (n == 0)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/");// Ninguna Operacion En MeliponarioCaja
            }
            else if (n >= 1)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + n.ToString());// ACTUALIZADO EXITOSAMENTE
            }
            else if (n == -2)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + EngineData.NoExisteIdentificador);// No Existe el identificador
            }
            else if (n == -3)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + EngineData.IdMeliponarioMasDe30Cajas);// IdMeliponario mas de 30 cajas 
            }
            else
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + EngineData.FalloActualizarMeliponarioCaja);// FALLO ACTUALIZACION
            }

            return response;
        }
    }
}
