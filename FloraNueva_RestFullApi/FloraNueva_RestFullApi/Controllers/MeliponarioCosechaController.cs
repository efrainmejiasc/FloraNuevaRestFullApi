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
    public class MeliponarioCosechaController : ApiController
    {
        //MeliponarioCosecha
       //MeliponarioCosechaDetalle
      //MeliponarioCosechaDetalleCaja
       [HttpPut]
        public HttpResponseMessage PutActualizarMeliponarioCosecha([FromBody] FloraNuevaProductor MeliponarioCosecha)
        {
            if (MeliponarioCosecha == null)
            {
                throw new ArgumentNullException();
            }

            List<RespuestaRegistroEntrada> Respuesta = new List<RespuestaRegistroEntrada>();
            var response = Request.CreateResponse<List<RespuestaRegistroEntrada>>(HttpStatusCode.Created, Respuesta);
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int ExisteSyncIniciada = FuncionDb.ExisteSyncIniciada();
            if (ExisteSyncIniciada == -200) // VALIDAR SINCRONIZACION EN PROCESO
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + Engine.EngineData.SyncEnProceso);// EXISTE SINCRONIZACION EN PROCESO
                return response;
            }

            int n = 0;
            string IdentificadorMeliponarioCosecha = EngineData.Zero;
            if (MeliponarioCosecha.MiMeliponarioCosecha[0].Transaccion == EngineData.Insertar)
            {
                int existeIdentificador = 1;
                while (existeIdentificador >= 1) 
                {
                    IdentificadorMeliponarioCosecha = Engine.EngineFloraNueva.IdentificadorReg().ToString();
                    existeIdentificador = FuncionDb.ExisteIdentificador("Sp_ExisteIdentificadorMeliponarioCosecha", IdentificadorMeliponarioCosecha);
                }
                n = FuncionDb.InsertarActualizarMeliponarioCosecha(MeliponarioCosecha.MiMeliponarioCosecha, IdentificadorMeliponarioCosecha, "Sp_ActualizarMeliponarioCosecha");
            }
            else if (MeliponarioCosecha.MiMeliponarioCosecha[0].Transaccion == EngineData.Actualizar || MeliponarioCosecha.MiMeliponarioCosecha[0].Transaccion == EngineData.ActualizarEstado)
            {
                IdentificadorMeliponarioCosecha = MeliponarioCosecha.MiMeliponarioCosecha[0].Identificador;
                n = FuncionDb.ExisteIdentificador("Sp_ExisteIdentificadorMeliponarioCosecha", IdentificadorMeliponarioCosecha);
                if (n > 0)
                {
                    n = FuncionDb.InsertarActualizarMeliponarioCosecha(MeliponarioCosecha.MiMeliponarioCosecha, IdentificadorMeliponarioCosecha, "Sp_ActualizarMeliponarioCosecha");
                }
                else
                {
                    n = -2;
                }
            }

            if (IdentificadorMeliponarioCosecha == EngineData.Zero)
            {
                IdentificadorMeliponarioCosecha = MeliponarioCosecha.MiMeliponarioCosecha[0].Identificador;
            }
            else if (IdentificadorMeliponarioCosecha != EngineData.Zero)
            {
                IdentificadorMeliponarioCosecha = MeliponarioCosecha.MiMeliponarioCosecha[0].Identificador;
            }

            int m = 0;
            int indice = 0;
            if (MeliponarioCosecha.MiMeliponarioCosechaDetalle != null)
            {
                foreach (FloraNuevaProductor.MeliponarioCosechaDetalle Item in MeliponarioCosecha.MiMeliponarioCosechaDetalle)
                {
                    RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
                    m = FuncionDb.InsertarActualizarMeliponarioCosechaDetalle(Item, IdentificadorMeliponarioCosecha, "Sp_ActualizarMeliponarioCosechaDetalle");
                    if (m == -1)
                    {
                        Registro.Identificador = Item.Identificador;
                        Registro.Resultado = true;
                        Registro.Posicion = indice;
                        Registro.Error = EngineData.Zero;
                        Registro.NombreTabla = "MeliponarioCosechaDetalle";
                    }
                    else
                    {
                        Registro.Identificador = Item.Identificador;
                        Registro.Resultado = false;
                        Registro.Posicion = indice;
                        Registro.Error = EngineData.FalloActualizarMeliponarioCosechaDetalle;
                        Registro.NombreTabla = "MeliponarioCosechaDetalle";
                    }
                    Respuesta.Insert(indice, Registro);
                    indice++;
                }
            }

            if (MeliponarioCosecha.MiMeliponarioCosechaDetalleCaja != null)
            {
                foreach (FloraNuevaProductor.MeliponarioCosechaDetalleCaja Item in MeliponarioCosecha.MiMeliponarioCosechaDetalleCaja)
                {
                    RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
                    m = FuncionDb.InsertarActualizarMeliponarioCosechaDetalleCaja(Item, IdentificadorMeliponarioCosecha,"Sp_ActualizarMeliponarioCosechaDetalleCaja");
                    if (m == -1)
                    {
                        Registro.Identificador = Item.Identificador;
                        Registro.Resultado = true;
                        Registro.Posicion = indice;
                        Registro.Error = EngineData.Zero;
                        Registro.NombreTabla = "MeliponarioCosechaDetalleCaja";
                    }
                    else
                    {
                        Registro.Identificador = Item.Identificador;
                        Registro.Resultado = false;
                        Registro.Posicion = indice;
                        Registro.Error = EngineData.FalloActualizarMeliponarioCosechaDetalleCaja;
                        Registro.NombreTabla = "MeliponarioCosechaDetalleCaja";
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
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/");// Ninguna Operacion En MeliponarioCosecha
            }
            else if (n == -1)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + IdentificadorMeliponarioCosecha.ToUpper());// ACTUALIZADO EXITOSAMENTE
            }
            else if (n == -2)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + EngineData.NoExisteIdentificador);// No Existe el identificador
            }
            else
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + EngineData.FalloActualizarMeliponarioCosecha);// FALLO ACTUALIZACION
            }

            return response;
        }
    }
}
