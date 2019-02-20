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
    public class AnProVisitaGrupalController : ApiController
    {
        //AbejasNativasVisitaGrupal  - > GUID AbejasNativasVisitaGrupal
        //AbejasNativasVisitaGrupalParticipante -> GUID Productor
       [HttpPut]
        public HttpResponseMessage PostAnProVisitaGrupal([FromBody] FloraNuevaProductor AnProVisitaGrupal)
        {
            if (AnProVisitaGrupal == null)
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
            string IdentificadorGrupal = EngineData.Zero;

            if (AnProVisitaGrupal.MiAbejasNativasVisitaGrupal[0].Transaccion == EngineData.Insertar)
            {
                int existeIdentificador = 1;
                while (existeIdentificador >= 1)
                {
                    IdentificadorGrupal = Engine.EngineFloraNueva.IdentificadorReg().ToString();
                    existeIdentificador = FuncionDb.ExisteIdentificador("Sp_ExisteIdentificadorAbejasNativasVisitaGrupal", IdentificadorGrupal);
                }
                n = FuncionDb.InsertarActualizarAbejasNativasVisitaGrupal(AnProVisitaGrupal.MiAbejasNativasVisitaGrupal, IdentificadorGrupal, "Sp_ActualizarAbejasNativasVisitaGrupal");
            }
            else if (AnProVisitaGrupal.MiAbejasNativasVisitaGrupal[0].Transaccion == EngineData.Actualizar || AnProVisitaGrupal.MiAbejasNativasVisitaGrupal[0].Transaccion == EngineData.ActualizarEstado)
            {
                IdentificadorGrupal = AnProVisitaGrupal.MiAbejasNativasVisitaGrupal[0].Identificador;
                n = FuncionDb.ExisteIdentificador("Sp_ExisteIdentificadorAbejasNativasVisitaGrupal", IdentificadorGrupal);
                if (n > 0)
                {
                    n = FuncionDb.InsertarActualizarAbejasNativasVisitaGrupal(AnProVisitaGrupal.MiAbejasNativasVisitaGrupal, IdentificadorGrupal, "Sp_ActualizarAbejasNativasVisitaGrupal");
                }
                else
                {
                    n = -2;
                }
            }

            if (AnProVisitaGrupal.MiAbejasNativasVisitaGrupal[0].Identificador != EngineData.Zero)
            {
                IdentificadorGrupal = AnProVisitaGrupal.MiAbejasNativasVisitaGrupal[0].Identificador;
            }

            if (AnProVisitaGrupal.MiAbejasNativasVisitaGrupalParticipante != null)
            {
                 int m = 0;
                 int indice = 0;
                 foreach (FloraNuevaProductor.AbejasNativasVisitaGrupalParticipante Item in AnProVisitaGrupal.MiAbejasNativasVisitaGrupalParticipante)
                 {
                    RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
                    m = FuncionDb.ExisteIdentificador(Item.Identificador);
                    if (m > 0)
                    {
                        m = FuncionDb.InsertarActualizarAbejasNativasVisitaGrupalParticipante(Item, IdentificadorGrupal , "Sp_ActualizarAbejasNativasVisitaGrupalParticipante");
                        if (m == -1)
                        {
                            Registro.Identificador = Item.Identificador;
                            Registro.Resultado = true;
                            Registro.Posicion = indice;
                            Registro.Error = EngineData.Zero;
                            Registro.NombreTabla = "AbejasNativasVisitaGrupalParticipante";
                        }
                        else
                        {
                            Registro.Identificador = Item.Identificador;
                            Registro.Resultado = false;
                            Registro.Posicion = indice;
                            Registro.Error = EngineData.FalloActualizarAbejasNativasVisitaGrupalParticipante;
                            Registro.NombreTabla = "AbejasNativasVisitaGrupalParticipante";
                        }
                    }
                    else
                    {
                        Registro.Identificador = Item.Identificador;
                        Registro.Resultado = false;
                        Registro.Posicion = indice;
                        Registro.Error = EngineData.NoExisteIdentificador;
                        Registro.NombreTabla = "AbejasNativasVisitaGrupalParticipante";
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
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/");// Ninguna Operacion En ProductorAbejaNativasVisitaGrupal
            }
            else if (n == -1)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador?NombreTabla=AbejasNativasVisitaGrupal&Identificador=" + IdentificadorGrupal.ToUpper() + "&Id=0" );// ACTUALIZADO EXITOSAMENTE
            }
            else if (n == -2)
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + EngineData.NoExisteIdentificador);// No Existe el identificador
            }
            else
            {
                response.Headers.Location = new Uri(EngineData.Sitio + "SeleccionIdentificador/" + EngineData.FalloActualizarAbejasNativasVisitagrupal);// FALLO ACTUALIZACION
            }
            return response;
        }
    }
}
