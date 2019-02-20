using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using FloraNueva_RestFullApi.Models;
using FloraNueva_RestFullApi.Engine;
using System.Web.Script.Serialization;
using System.Reflection;

namespace FloraNueva_RestFullApi.Controllers
{
    public class EntradaSyncController : ApiController
    {
        [HttpPost]
        public HttpResponseMessage PostEntradaSync (List <FloraNuevaProductor>  FloraNueva )
        {
            List<List<RespuestaRegistroEntrada>> Respuesta = new List<List<RespuestaRegistroEntrada>>();
            var response = Request.CreateResponse<List<List<RespuestaRegistroEntrada>>>(HttpStatusCode.Created, Respuesta);
            if (FloraNueva[0].Sync.Version == null)
            {
                response.Headers.Location = new Uri("http://floranueva2-001-site1.gtempurl.com/api/EngineSync/" + Engine.EngineData.NoDataSyncEstado);// 
                return response;
            }

            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            string version = FloraNueva[0].Sync.Version;
            int permiso = FuncionDb.PermisoSync(version);// VALIDA QUE LA VERSION SEA LA SINCRONIZACION EN PROCESO
            if (permiso < 1)
            {
                response.Headers.Location = new Uri("http://floranueva2-001-site1.gtempurl.com/api/EngineSync/" + Engine.EngineData.NoConcuerdaVersion);
                return response;
            }
            
            int n = 0;
            foreach (FloraNuevaProductor I in FloraNueva)
            {
                if (I.MiProductor != null) Respuesta.Insert(n,Productor(I.MiProductor,version,n));
                if (I.MiProductorDocumentoEntregado != null) Respuesta.Insert(n, ProductorDocumentoEntregado(I.MiProductorDocumentoEntregado,version,n));
                if (I.MiProductorMiembroHogar != null) Respuesta.Insert(n, ProductorMiembroHogar(I.MiProductorMiembroHogar,version,n));
                if (I.MiProductorContacto != null) Respuesta.Insert(n, ProductorContacto(I.MiProductorContacto,version,n));
                if (I.MiProductorInventarioEspecies != null) Respuesta.Insert(n, ProductorInventarioEspecies(I.MiProductorInventarioEspecies,version,n));
                if (I.MiProductorAbejasNativasMaterialEntregado != null) Respuesta.Insert(n, ProductorAbejasNativasMaterialEntregado(I.MiProductorAbejasNativasMaterialEntregado,version,n));
                if (I.MiProductorDetalleProduccionAnimal != null) Respuesta.Insert(n, ProductorDetalleProduccionAnimal(I.MiProductorDetalleProduccionAnimal,version,n));
                if (I.MiProductorDetalleProduccionVegetal != null) Respuesta.Insert(n, ProductorDetalleProduccionVegetal(I.MiProductorDetalleProduccionVegetal,version,n));
                if (I.MiMeliponario != null) Respuesta.Insert(n, Meliponario(I.MiMeliponario,version,n));
                if (I.MiProductorProyecto != null) Respuesta.Insert(n, ProductorProyecto(I.MiProductorProyecto, version, n));
                if (I.MiAbejasNativasVisitaGrupal != null) Respuesta.Insert(n, AbejasNativasVisitaGrupal(I.MiAbejasNativasVisitaGrupal[0], I.MiAbejasNativasVisitaGrupalParticipante, version, n));
                if (I.MiProductorAbejasNativasVisitaIndividual != null) Respuesta.Insert(n, ProductorAbejasNativasVisitaIndividual(I.MiProductorAbejasNativasVisitaIndividual[0], version, n));
                if (I.MiProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria != null) Respuesta.Insert(n, ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria(I.MiProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria, version, n));
                if (I.MiProductorAbejasNativasVisitaIndividualColmenasEnCaja != null) Respuesta.Insert(n, ProductorAbejasNativasVisitaIndividualColmenasEnCaja(I.MiProductorAbejasNativasVisitaIndividualColmenasEnCaja, version, n));
                if (I.MiProductorAbejasNativasVisitaIndividualColmenasEnTrampa != null) Respuesta.Insert(n, ProductorAbejasNativasVisitaIndividualColmenasEnTrampa(I.MiProductorAbejasNativasVisitaIndividualColmenasEnTrampa, version, n));
                if (I.MiMeliponarioCaja != null) Respuesta.Insert(n, MeliponarioCaja(I.MiMeliponarioCaja[0], I.MiMeliponarioCajaHistorial, version, n));
                if (I.MiMeliponarioCosecha != null) Respuesta.Insert(n, MeliponarioCosecha(I.MiMeliponarioCosecha[0], I.MiMeliponarioCosechaDetalle, I.MiMeliponarioCosechaDetalleCaja, version, n));
                if (I.MiMeliponarioCajaAccion != null) Respuesta.Insert(n, MeliponarioCajaAccion(I.MiMeliponarioCajaAccion,version, n));
                n++;
            }

            //*********************************************************************************************************************************

            if (Respuesta.Count > 0)
            {
                string result = new JavaScriptSerializer().Serialize(Respuesta);
                response = new HttpResponseMessage()
                {
                    Content = new StringContent(result, System.Text.Encoding.UTF8, "application/json")
                };
            }
            response.Headers.Location = new Uri("http://floranueva2-001-site1.gtempurl.com/api/EngineSync/" + version.ToUpper());// INSERTADO EXITOSAMENTE

            return response;
        }

    
        private List<RespuestaRegistroEntrada> Productor (FloraNuevaProductor.Productor RegistroProductor,string version, int numLista)
        {
            List<RespuestaRegistroEntrada> Respuesta = new List<RespuestaRegistroEntrada>();
            RespuestaRegistroEntrada  Registro = new  RespuestaRegistroEntrada();
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int ExisteNumeroCedula = 0;
            int ExisteCodigoFloraNueva = 0;
            int n = 0;
            int indice = 0;
          
                if (RegistroProductor.Transaccion == EngineData.Insertar)//NUEVO PRODUCTOR
                {
                    ExisteNumeroCedula = FuncionDb.ExisteNumeroCedula(RegistroProductor.NumeroCedula);
                    ExisteCodigoFloraNueva = FuncionDb.ExisteCodigoFloraNueva(RegistroProductor.CodigoFloraNueva);
                    if (ExisteNumeroCedula > 0 || ExisteCodigoFloraNueva > 0)
                    {
                        Registro.Identificador = string.Empty;
                        Registro.Resultado = false;
                        Registro.Posicion = indice;
                        Registro.NumeroLista = numLista;
                        if (ExisteNumeroCedula > 0)
                        {
                           Registro.Error = EngineData.ExisteNumeroCedula;
                        }
                        else if (ExisteCodigoFloraNueva > 0)
                        {
                           Registro.Error = EngineData.ExisteCodigoFloraNueva;
                        }
                       Registro.NombreTabla = "Productor";
                       Registro.Transaccion = EngineData.Insertar;
                       Registro.Version = version;
                    }
                    else
                    {
                        int existeIdentificador = 1;
                        while (existeIdentificador >= 1)
                        {
                            RegistroProductor.Identificador = Engine.EngineFloraNueva.IdentificadorReg().ToString();
                            existeIdentificador = FuncionDb.ExisteIdentificador(RegistroProductor.Identificador);
                        }
                        n = FuncionDb.InsertarActualizarProductor(RegistroProductor, "Sp_InsertarProductor");
                        if (n == -1)
                        {
                           Registro.Identificador = RegistroProductor.Identificador;
                           Registro.Resultado = true;
                           Registro.Posicion = indice;
                           Registro.NumeroLista = numLista;
                           Registro.Error = EngineData.Zero;
                           Registro.NombreTabla = "Productor";
                           Registro.Id = FuncionDb.SeleccionarIdTabla("Productor", Registro.Identificador);
                           Registro.CodigoFloraNueva = FuncionDb.SeleccionarCodigoFloraNueva(Registro.Identificador);
                           Registro.Transaccion = EngineData.Insertar;
                           Registro.Version = version;
                        }
                        else
                        {
                           Registro.Identificador = RegistroProductor.Identificador;
                           Registro.Resultado = false;
                           Registro.Posicion = indice;
                           Registro.NumeroLista = numLista;
                           Registro.Error = EngineData.FalloNuevoProductor;
                           Registro.NombreTabla = "Productor";
                           Registro.Transaccion = EngineData.Insertar;
                           Registro.Version = version;
                        }
                    }
                }
                else // ACTUALIZAR PRODUCTOR
                {
                    n = FuncionDb.ExisteIdentificador(RegistroProductor.Identificador);
                    if (n == 0)
                    {
                       Registro.Identificador = RegistroProductor.Identificador;
                       Registro.Resultado = false;
                       Registro.Posicion = indice;
                       Registro.NumeroLista = numLista;
                       Registro.Error = EngineData.NoExisteIdentificador;
                       Registro.NombreTabla = "Productor";
                       Registro.Transaccion = EngineData.Actualizar;
                       Registro.Version = version;
                    }
                    else
                    {
                        n = FuncionDb.InsertarActualizarProductor(RegistroProductor, "Sp_ActualizarProductor");
                        if (n == -1)
                        {
                           Registro.Identificador = RegistroProductor.Identificador;
                           Registro.Resultado = true;
                           Registro.Posicion = indice;
                           Registro.NumeroLista = numLista;
                           Registro.Error = EngineData.Zero; 
                           Registro.Id = RegistroProductor.IdProductor;
                           Registro.CodigoFloraNueva = RegistroProductor.CodigoFloraNueva;
                           Registro.NombreTabla = "Productor";
                           Registro.Transaccion = EngineData.Actualizar;
                           Registro.Version = version;
                        }
                        else
                        {
                           Registro.Identificador = RegistroProductor.Identificador;
                           Registro.Resultado = false;
                           Registro.Posicion = indice;
                           Registro.NumeroLista = numLista;
                           Registro.Error = EngineData.FalloActualizarProductor;
                           Registro.NombreTabla = "Productor";
                           Registro.Transaccion = EngineData.Actualizar;
                           Registro.Version = version;
                        }
                    }
                }
            //Respuesta.Insert(indice, Registro);
            Respuesta.Add(Registro);
            return Respuesta;
        }

        private List<RespuestaRegistroEntrada> ProductorDocumentoEntregado(List<FloraNuevaProductor.ProductorDocumentoEntregado> RegistroProductor,string Version,int numLista)
        {
            List<RespuestaRegistroEntrada> Respuesta = new List<RespuestaRegistroEntrada>();
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int n = 0;
            int indice = 0;
            foreach (FloraNuevaProductor.ProductorDocumentoEntregado Item in RegistroProductor)
            {
                RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
                n = FuncionDb.ExisteIdentificador(Item.Identificador);
                if (n >= 1)
                {
                    n = FuncionDb.InsertarActualizarProductorDocumentoEntregadoSync(Item, "Sp_ActualizarProductorDocumentoEntregado");
                    if (n == -1)
                    {
                       Registro.Identificador = Item.Identificador;
                       Registro.Resultado = true;
                       Registro.Posicion = indice;
                       Registro.NumeroLista = numLista;
                       Registro.Error = EngineData.Zero;
                       Registro.NombreTabla = "ProductorDocumentoEntregado";
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                            Registro.Id = FuncionDb.SeleccionarIdTabla("ProductorDocumentoEntregado", Registro.Identificador);
                        }
                        else
                        {
                            Registro.Id = Item.IdProductorDocumentoEntregado;
                        }
                       Registro.CodigoFloraNueva = FuncionDb.SeleccionarCodigoFloraNueva(Registro.Identificador);
                       Registro.Transaccion = Item.Transaccion;
                       Registro.Version = Version;
                    }
                    else
                    {
                       Registro.Identificador = Item.Identificador;
                       Registro.Resultado = false;
                       Registro.Posicion = indice;
                       Registro.NumeroLista = numLista;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                           Registro.Error = EngineData.FalloInsertarProductorDocumentoEntregado;
                        }
                        else
                        {
                           Registro.Error = EngineData.FalloActualizarProductorDocumentoEntregado;
                        }
                       Registro.NombreTabla = "ProductorDocumentoEntregado";
                       Registro.Transaccion = Item.Transaccion;
                       Registro.Version = Version;
                    }
                }
                else
                {
                   Registro.Identificador = Item.Identificador;
                   Registro.Resultado = false;
                   Registro.Posicion = indice;
                   Registro.NumeroLista = numLista;
                   Registro.Error = EngineData.NoExisteIdentificador;
                   Registro.NombreTabla = "Productor";
                   Registro.Version = Version;
                }
                //Respuesta.Insert(indice, Registro);
                Respuesta.Add(Registro);
                indice++;
            }
            return Respuesta;
        }

        private List<RespuestaRegistroEntrada> ProductorMiembroHogar(List<FloraNuevaProductor.ProductorMiembroHogar> RegistroProductor,string Version,int numLista)
        {
            List<RespuestaRegistroEntrada> Respuesta= new List<RespuestaRegistroEntrada>();
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int n = 0;
            int indice = 0;
            foreach (FloraNuevaProductor.ProductorMiembroHogar Item in RegistroProductor)
            {
                RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
                n = FuncionDb.ExisteIdentificador(Item.Identificador);
                if (n >= 1)
                {
                    n = FuncionDb.InsertarActualizarProductorMiembroHogarSync(Item, "Sp_ActualizarProductorMiembroHogar");
                    if (n == -1)
                    {
                       Registro.Identificador = Item.Identificador;
                       Registro.Resultado = true;
                       Registro.Posicion = indice;
                       Registro.NumeroLista = numLista;
                       Registro.Error = EngineData.Zero;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                            Registro.Id = FuncionDb.SeleccionarIdTabla("ProductorMiembroHogar", Registro.Identificador);
                        }
                        else
                        {
                            Registro.Id = Item.IdProductorMiembroHogar;
                        }
                       Registro.CodigoFloraNueva = FuncionDb.SeleccionarCodigoFloraNueva(Registro.Identificador);
                       Registro.NombreTabla = "ProductorMiembroHogar";
                       Registro.Transaccion = Item.Transaccion;
                       Registro.Version = Version;
                    }
                    else
                    {
                       Registro.Identificador = Item.Identificador;
                       Registro.Resultado = false;
                       Registro.Posicion = indice;
                       Registro.NumeroLista = numLista;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                           Registro.Error = EngineData.FalloInsertarProductorMiembroHogar;
                        }
                        else
                        {
                           Registro.Error = EngineData.FalloActualizarProductorMiembroHogar;
                        }
                       Registro.NombreTabla = "ProductorMiembroHogar";
                       Registro.Transaccion = Item.Transaccion;
                       Registro.Version = Version;
                    }
                }
                else
                {
                   Registro.Identificador = Item.Identificador;
                   Registro.Resultado = false;
                   Registro.Posicion = indice;
                   Registro.NumeroLista = numLista;
                   Registro.Error = EngineData.NoExisteIdentificador;
                   Registro.NombreTabla = "Productor";
                   Registro.Version = Version;
                }
                //Respuesta.Insert(indice, Registro);
                Respuesta.Add(Registro);
                indice++;
            }
            return Respuesta;
        }

        private List<RespuestaRegistroEntrada> ProductorContacto(List<FloraNuevaProductor.ProductorContacto> RegistroProductor, string Version,int numLista)
        {
            List<RespuestaRegistroEntrada> Respuesta = new List<RespuestaRegistroEntrada>();
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int n = 0;
            int indice = 0;
            foreach (FloraNuevaProductor.ProductorContacto Item in RegistroProductor)
            {
                RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
                n = FuncionDb.ExisteIdentificador(Item.Identificador);
                if (n >= 1)
                {
                    n = FuncionDb.InsertarActualizarProductorContactoSync(Item, "Sp_ActualizarProductorContacto");
                    if (n == -1)
                    {
                       Registro.Identificador = Item.Identificador;
                       Registro.Resultado = true;
                       Registro.Posicion = indice;
                       Registro.NumeroLista = numLista;
                       Registro.Error = EngineData.Zero;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                            Registro.Id = FuncionDb.SeleccionarIdTabla("ProductorContacto", Registro.Identificador);
                        }
                        else
                        {
                            Registro.Id = Item.IdProductorContacto;
                        }
                       Registro.CodigoFloraNueva = FuncionDb.SeleccionarCodigoFloraNueva(Registro.Identificador);
                       Registro.NombreTabla = "ProductorContacto";
                       Registro.Version = Version;
                    }
                    else
                    {
                       Registro.Identificador = Item.Identificador;
                       Registro.Resultado = false;
                       Registro.Posicion = indice;
                       Registro.NumeroLista = numLista;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                           Registro.Error = EngineData.FalloInsertarProductorContacto;
                        }
                        else
                        {
                           Registro.Error = EngineData.FalloActualizarProductorContacto;
                        }
                       Registro.NombreTabla = "ProductorContacto";
                       Registro.Version = Version;
                    }
                }
                else
                {
                   Registro.Identificador = Item.Identificador;
                   Registro.Resultado = false;
                   Registro.Posicion = indice;
                   Registro.NumeroLista = numLista;
                   Registro.Error = EngineData.NoExisteIdentificador;
                   Registro.NombreTabla = "Productor";
                   Registro.Version = Version;
                }
                //Respuesta.Insert(indice, Registro);
                Respuesta.Add(Registro);
                indice++;
            }
            return Respuesta;
        }

        private List<RespuestaRegistroEntrada> ProductorInventarioEspecies(List<FloraNuevaProductor.ProductorInventarioEspecies> RegistroProductor,string Version,int numLista)
        {
            List<RespuestaRegistroEntrada> Respuesta = new List<RespuestaRegistroEntrada>();
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int n = 0;
            int indice = 0;
            foreach (FloraNuevaProductor.ProductorInventarioEspecies Item in RegistroProductor)
            {
                RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
                n = FuncionDb.ExisteIdentificador(Item.Identificador);
                if (n >= 1)
                {
                    n = FuncionDb.InsertarActualizarProductorInventarioEspeciesSync(Item, "Sp_ActualizarProductorInventarioEspecies");
                    if (n == -1)
                    {
                       Registro.Identificador = Item.Identificador;
                       Registro.Resultado = true;
                       Registro.Posicion = indice;
                       Registro.NumeroLista = numLista;
                       Registro.Error = EngineData.Zero;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                            Registro.Id = FuncionDb.SeleccionarIdTabla("ProductorInventarioEspecies", Registro.Identificador);
                        }
                        else
                        {
                            Registro.Id = Item.IdProductorInventarioEspecies;
                        }
                       Registro.CodigoFloraNueva = FuncionDb.SeleccionarCodigoFloraNueva(Registro.Identificador);
                       Registro.NombreTabla = "ProductorInventarioEspecies";
                       Registro.Version = Version;
                    }
                    else
                    {
                       Registro.Identificador = Item.Identificador;
                       Registro.Resultado = false;
                       Registro.Posicion = indice;
                       Registro.NumeroLista = numLista;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                           Registro.Error = EngineData.FalloInsertarProductorInventarioEspecies;
                        }
                        else
                        {
                           Registro.Error = EngineData.FalloActualizarProductorInventarioEspecies;
                        }
                       Registro.NombreTabla = "ProductorInventarioEspecies";
                       Registro.Version = Version;
                    }
                }
                else
                {
                   Registro.Identificador = Item.Identificador;
                   Registro.Resultado = false;
                   Registro.Posicion = indice;
                   Registro.NumeroLista = numLista;
                   Registro.Error = EngineData.NoExisteIdentificador;
                   Registro.NombreTabla = "Productor";
                   Registro.Version = Version;
                }
                //Respuesta.Insert(indice, Registro);
                Respuesta.Add(Registro);
                indice++;
            }
            return Respuesta;
        }

        private List<RespuestaRegistroEntrada> ProductorAbejasNativasMaterialEntregado(List<FloraNuevaProductor.ProductorAbejasNativasMaterialEntregado> RegistroProductor,string Version,int numLista)
        {
            List<RespuestaRegistroEntrada> Respuesta = new List<RespuestaRegistroEntrada>();
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int n = 0;
            int indice = 0;
            foreach (FloraNuevaProductor.ProductorAbejasNativasMaterialEntregado Item in RegistroProductor)
            {
                RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
                n = FuncionDb.ExisteIdentificador(Item.Identificador);
                if (n >= 1)
                {
                    n = FuncionDb.InsertarActualizarProductorAbejasNativasMaterialEntregadoSync(Item, "Sp_ActualizarProductorAbejasNativasMaterialEntregado");
                    if (n == -1)
                    {
                       Registro.Identificador = Item.Identificador;
                       Registro.Resultado = true;
                       Registro.Posicion = indice;
                       Registro.NumeroLista = numLista;
                       Registro.Error = EngineData.Zero;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                            Registro.Id = FuncionDb.SeleccionarIdTabla("ProductorAbejasNativasMaterialEntregado", Registro.Identificador);
                        }
                        else
                        {
                            Registro.Id = Item.IdProductorAbejasNativasMaterialEntregado;
                        }
                       Registro.CodigoFloraNueva = FuncionDb.SeleccionarCodigoFloraNueva(Registro.Identificador);
                       Registro.NombreTabla = "ProductorAbejasNativasMaterialEntregado";
                       Registro.Version = Version;
                    }
                    else
                    {
                       Registro.Identificador = Item.Identificador;
                       Registro.Resultado = false;
                       Registro.Posicion = indice;
                       Registro.NumeroLista = numLista;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                           Registro.Error = EngineData.FalloInsertarProductorAbejasNativasMaterialEntregado;
                        }
                        else
                        {
                           Registro.Error = EngineData.FalloActualizarProductorAbejasNativasMaterialEntregado;
                        }
                       Registro.NombreTabla = "ProductorAbejasNativasMaterialEntregado";
                       Registro.Version = Version;
                    }
                }
                else
                {
                   Registro.Identificador = Item.Identificador;
                   Registro.Resultado = false;
                   Registro.Posicion = indice;
                   Registro.NumeroLista = numLista;
                   Registro.Error = EngineData.NoExisteIdentificador;
                   Registro.NombreTabla = "Productor";
                   Registro.Version = Version;
                }
                //Respuesta.Insert(indice, Registro);
                Respuesta.Add(Registro);
                indice++;
            }
            return Respuesta;
        }

        private List<RespuestaRegistroEntrada> ProductorDetalleProduccionAnimal(List<FloraNuevaProductor.ProductorDetalleProduccionAnimal> RegistroProductor,string Version,int numLista)
        {
            List<RespuestaRegistroEntrada> Respuesta = new List<RespuestaRegistroEntrada>();
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int n = 0;
            int indice = 0;
            foreach (FloraNuevaProductor.ProductorDetalleProduccionAnimal Item in RegistroProductor)
            {
                RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
                n = FuncionDb.ExisteIdentificador(Item.Identificador);
                if (n >= 1)
                {
                    n = FuncionDb.InsertarActualizarProductorDetalleProduccionAnimalSync(Item, "Sp_ActualizarProductorDetalleProduccionAnimal");
                    if (n == -1)
                    {
                       Registro.Identificador = Item.Identificador;
                       Registro.Resultado = true;
                       Registro.Posicion = indice;
                       Registro.NumeroLista = numLista;
                       Registro.Error = EngineData.Zero;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                            Registro.Id = FuncionDb.SeleccionarIdTabla("ProductorDetalleProduccionAnimal", Registro.Identificador);
                        }
                        else
                        {
                            Registro.Id = Item.IdProductorDetalleProduccionAnimal;
                        }
                       Registro.CodigoFloraNueva = FuncionDb.SeleccionarCodigoFloraNueva(Registro.Identificador);
                       Registro.NombreTabla = "ProductorDetalleProduccionAnimal";
                       Registro.Version = Version;
                    }
                    else
                    {
                       Registro.Identificador = Item.Identificador;
                       Registro.Resultado = false;
                       Registro.Posicion = indice;
                       Registro.NumeroLista = numLista;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                           Registro.Error = EngineData.FalloInsertarProductorDetalleProduccionAnimal;
                        }
                        else
                        {
                           Registro.Error = EngineData.FalloActualizarProductorDetalleProduccionAnimal;
                        }
                       Registro.NombreTabla = "ProductorDetalleProduccionAnimal";
                       Registro.Version = Version;
                    }
                }
                else
                {
                   Registro.Identificador = Item.Identificador;
                   Registro.Resultado = false;
                   Registro.Posicion = indice;
                   Registro.NumeroLista = numLista;
                   Registro.Error = EngineData.NoExisteIdentificador;
                   Registro.NombreTabla = "Productor";
                   Registro.Version = Version;
                }
                //Respuesta.Insert(indice, Registro);
                Respuesta.Add(Registro);
                indice++;
            }
            return Respuesta;
        }


        private List<RespuestaRegistroEntrada> ProductorDetalleProduccionVegetal(List<FloraNuevaProductor.ProductorDetalleProduccionVegetal> RegistroProductor,string Version,int numLista)
        {
            List<RespuestaRegistroEntrada> Respuesta = new List<RespuestaRegistroEntrada>();
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int n = 0;
            int indice = 0;
            foreach (FloraNuevaProductor.ProductorDetalleProduccionVegetal Item in RegistroProductor)
            {
                RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
                n = FuncionDb.ExisteIdentificador(Item.Identificador);
                if (n >= 1)
                {
                    n = FuncionDb.InsertarActualizarProductorDetalleProduccionVegetalSync(Item, "Sp_ActualizarProductorDetalleProduccionVegetal");
                    if (n == -1)
                    {
                       Registro.Identificador = Item.Identificador;
                       Registro.Resultado = true;
                       Registro.Posicion = indice;
                       Registro.NumeroLista = numLista;
                       Registro.Error = EngineData.Zero;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                            Registro.Id = FuncionDb.SeleccionarIdTabla("ProductorDetalleProduccionVegetal", Registro.Identificador);
                        }
                        else
                        {
                            Registro.Id = Item.IdProductorDetalleProduccionVegetal;
                        }
                       Registro.CodigoFloraNueva = FuncionDb.SeleccionarCodigoFloraNueva(Registro.Identificador);
                       Registro.NombreTabla = "ProductorDetalleProduccionVegetal";
                       Registro.Version = Version;
                    }
                    else
                    {
                       Registro.Identificador = Item.Identificador;
                       Registro.Resultado = false;
                       Registro.Posicion = indice;
                       Registro.NumeroLista = numLista;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                           Registro.Error = EngineData.FalloInsertarProductorDetalleProduccionVegetal;
                        }
                        else
                        {
                           Registro.Error = EngineData.FalloActualizarProductorDetalleProduccionVegetal;
                        }
                       Registro.NombreTabla = "ProductorDetalleProduccionVegetal";
                       Registro.Version = Version;
                    }
                }
                else
                {
                   Registro.Identificador = Item.Identificador;
                   Registro.Resultado = false;
                   Registro.Posicion = indice;
                   Registro.NumeroLista = numLista;
                   Registro.Error = EngineData.NoExisteIdentificador;
                   Registro.NombreTabla = "Productor";
                   Registro.Version = Version;
                }
                //Respuesta.Insert(indice, Registro);
                Respuesta.Add(Registro);
                indice++;
            }
            return Respuesta;
        }

        private List<RespuestaRegistroEntrada> Meliponario(List<FloraNuevaProductor.Meliponario> RegistroProductor,string Version,int numLista)
        {
            List<RespuestaRegistroEntrada> Respuesta= new List<RespuestaRegistroEntrada>();
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int n = 0;
            int indice = 0;
            foreach (FloraNuevaProductor.Meliponario Item in RegistroProductor)
            {
                RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
                n = FuncionDb.ExisteIdentificador(Item.Identificador);
                if (n >= 1)
                {
                    n = FuncionDb.InsertarActualizarMeliponarioSync(Item, "Sp_ActualizarMeliponario");
                    if (n == -1)
                    {
                       Registro.Identificador = Item.Identificador;
                       Registro.Resultado = true;
                       Registro.Posicion = indice;
                       Registro.NumeroLista = numLista;
                       Registro.Error = EngineData.Zero;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                            Registro.Id = FuncionDb.SeleccionarIdTabla("Meliponario", Registro.Identificador);
                        }
                        else
                        {
                            Registro.Id = Item.IdMeliponario;
                        }
                       Registro.CodigoFloraNueva = FuncionDb.SeleccionarCodigoFloraNueva(Registro.Identificador);
                       Registro.NombreTabla = "Meliponario";
                       Registro.Version = Version;
                    }
                    else
                    {
                       Registro.Identificador = Item.Identificador;
                       Registro.Resultado = false;
                       Registro.Posicion = indice;
                       Registro.NumeroLista = numLista;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                           Registro.Error = EngineData.FalloInsertarMeliponario;
                        }
                        else
                        {
                           Registro.Error = EngineData.FalloActualizarMeliponario;
                        }
                       Registro.NombreTabla = "Meliponario";
                       Registro.Version = Version;
                    }
                }
                else
                {
                   Registro.Identificador = Item.Identificador;
                   Registro.Resultado = false;
                   Registro.Posicion = indice;
                   Registro.NumeroLista = numLista;
                   Registro.Error = EngineData.NoExisteIdentificador;
                   Registro.NombreTabla = "Productor";
                   Registro.Version = Version;
                }
                // Respuesta.Insert(indice, Registro);
                Respuesta.Add(Registro);
                indice++;
            }
            return Respuesta;
        }


        private List<RespuestaRegistroEntrada> ProductorProyecto (List<FloraNuevaProductor.ProductorProyecto> RegistroProductor, string Version, int numLista)
        {
            List<RespuestaRegistroEntrada> Respuesta = new List<RespuestaRegistroEntrada>();
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int n = 0;
            int indice = 0;
            foreach (FloraNuevaProductor.ProductorProyecto Item in RegistroProductor)
            {
                RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
                n = FuncionDb.ExisteIdentificador(Item.Identificador);
                if (n >= 1)
                {
                   if (Item.Transaccion == EngineData.Insertar)
                   {
                        n = FuncionDb.ExisteProductorProyectoActivo(Item.Identificador, Item.FechaIntegracion);
                        if (n == 0)
                        {
                            n = FuncionDb.InsertarActualizarProductorProyectoSync(Item,  "Sp_InsertarProductorProyecto");
                            if (n == -1)
                            {
                                Registro.Identificador = Item.Identificador;
                                Registro.Resultado = true;
                                Registro.Posicion = indice;
                                Registro.NumeroLista = numLista;
                                Registro.Error = EngineData.Zero;
                                Registro.Id = FuncionDb.SeleccionarIdTabla("ProductorProyecto", Registro.Identificador);
                                Registro.CodigoFloraNueva = FuncionDb.SeleccionarCodigoFloraNueva(Registro.Identificador);
                                Registro.NombreTabla = "ProductorProyecto";
                                Registro.Version = Version;
                            }
                            else
                            {
                                Registro.Identificador = Item.Identificador;
                                Registro.Resultado = false;
                                Registro.Posicion = indice;
                                Registro.NumeroLista = numLista;
                                Registro.Error = EngineData.FalloInsertarProductorProyecto;
                                Registro.NombreTabla = "ProductorProyecto";
                                Registro.Version = Version;
                            }
                        }
                    }
                   else
                   {
                        n = FuncionDb.InsertarActualizarProductorProyectoSync(Item, "Sp_ActualizarProductorProyecto");
                        if (n == -1)
                        {
                            Registro.Identificador = Item.Identificador;
                            Registro.Resultado = true;
                            Registro.Posicion = indice;
                            Registro.NumeroLista = numLista;
                            Registro.Error = EngineData.Zero;
                            Registro.Id = Item.IdProductorProyecto;
                            Registro.CodigoFloraNueva = FuncionDb.SeleccionarCodigoFloraNueva(Registro.Identificador);
                            Registro.NombreTabla = "ProductorProyecto";
                            Registro.Version = Version;
                        }
                        else
                        {
                            Registro.Identificador = Item.Identificador;
                            Registro.Resultado = false;
                            Registro.Posicion = indice;
                            Registro.NumeroLista = numLista;
                            Registro.Error = EngineData.FalloActualizarProductorProyecto;
                            Registro.NombreTabla = "ProductorProyecto";
                            Registro.Version = Version;
                        }
                    }
                }
                else
                {
                    Registro.Identificador = Item.Identificador;
                    Registro.Resultado = false;
                    Registro.Posicion = indice;
                    Registro.NumeroLista = numLista;
                    Registro.Error = EngineData.NoExisteIdentificador;
                    Registro.NombreTabla = "Productor";
                    Registro.Version = Version;
                }
                //Respuesta.Insert(indice, Registro);
                Respuesta.Add(Registro);
                indice++;
            }
            return Respuesta;
        }

        private List<RespuestaRegistroEntrada> AbejasNativasVisitaGrupal(FloraNuevaProductor.AbejasNativasVisitaGrupal RegistroGrupal, List<FloraNuevaProductor.AbejasNativasVisitaGrupalParticipante> RegistroGrupalParticipante, string Version, int numLista)
        {
            List<RespuestaRegistroEntrada> Respuesta = new List<RespuestaRegistroEntrada>();
            RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int n = 0;
            int indice = 0;
            string identificadorGrupal = string.Empty;
            if (RegistroGrupal.Transaccion != null)
            {
                if (RegistroGrupal.Transaccion == EngineData.Insertar)
                {
                    int existeIdentificador = 1;
                    while (existeIdentificador >= 1)
                    {
                        RegistroGrupal.Identificador = Engine.EngineFloraNueva.IdentificadorReg().ToString();
                        identificadorGrupal = RegistroGrupal.Identificador;
                        existeIdentificador = FuncionDb.ExisteIdentificador("Sp_ExisteIdentificadorAbejasNativasVisitaGrupal", RegistroGrupal.Identificador);
                    }
                    n = FuncionDb.InsertarActualizarAbejasNativasVisitaGrupalSync(RegistroGrupal, "Sp_ActualizarAbejasNativasVisitaGrupal");
                    if (n == -1)
                    {
                        Registro.Identificador = RegistroGrupal.Identificador;
                        Registro.Resultado = true;
                        Registro.Posicion = indice;
                        Registro.NumeroLista = numLista;
                        Registro.Error = EngineData.Zero;
                        Registro.Id = FuncionDb.SeleccionarIdTabla("AbejasNativasVisitaGrupal", Registro.Identificador);
                        Registro.NombreTabla = "AbejasNativasVisitaGrupal";
                        Registro.Version = Version;
                    }
                    else
                    {
                        Registro.Identificador = RegistroGrupal.Identificador;
                        Registro.Resultado = false;
                        Registro.Posicion = indice;
                        Registro.NumeroLista = numLista;
                        Registro.Error = EngineData.FalloInsertarAbejasNativasVisitaGrupal;
                        Registro.NombreTabla = "AbejasNativasVisitaGrupal";
                        Registro.Version = Version;
                    }
                }
                else if (RegistroGrupal.Transaccion == EngineData.Actualizar || RegistroGrupal.Transaccion == EngineData.ActualizarEstado)
                {
                    n = FuncionDb.ExisteIdentificador("Sp_ExisteIdentificadorAbejasNativasVisitaGrupal", RegistroGrupal.Identificador);
                    if (n >= 1)
                    {
                        n = FuncionDb.InsertarActualizarAbejasNativasVisitaGrupalSync(RegistroGrupal, "Sp_ActualizarAbejasNativasVisitaGrupal");
                        if (n == -1)
                        {
                            Registro.Identificador = RegistroGrupal.Identificador;
                            Registro.Resultado = true;
                            Registro.Posicion = indice;
                            Registro.NumeroLista = numLista;
                            Registro.Error = EngineData.Zero;
                            Registro.Id = RegistroGrupal.IdAbejasNativasVisitaGrupal;
                            Registro.NombreTabla = "AbejasNativasVisitaGrupal";
                            Registro.Version = Version;
                        }
                        else
                        {
                            Registro.Identificador = RegistroGrupal.Identificador;
                            Registro.Resultado = false;
                            Registro.Posicion = indice;
                            Registro.NumeroLista = numLista;
                            Registro.Error = EngineData.FalloActualizarAbejasNativasVisitaGrupal;
                            Registro.NombreTabla = "AbejasNativasVisitaGrupal";
                            Registro.Version = Version;
                        }

                    }
                    else
                    {
                        Registro.Identificador = RegistroGrupal.Identificador;
                        Registro.Resultado = false;
                        Registro.Posicion = indice;
                        Registro.NumeroLista = numLista;
                        Registro.Error = EngineData.NoExisteIdentificador;
                        Registro.NombreTabla = "AbejasNativasVisitaGrupalr";
                        Registro.Version = Version;
                    }
                }
                //Respuesta.Insert(indice, Registro);
                Respuesta.Add(Registro);
                indice++;
            }

            if (RegistroGrupalParticipante != null)
            {
                if (RegistroGrupal.Identificador != EngineData.Zero)
                {
                    identificadorGrupal = RegistroGrupal.Identificador;
                }

                Respuesta = AbejasNativasVisitaGrupalParticipante(RegistroGrupalParticipante, Respuesta, identificadorGrupal, indice, Version, numLista);
            }

            return Respuesta;
        }

        private List<RespuestaRegistroEntrada> AbejasNativasVisitaGrupalParticipante(List<FloraNuevaProductor.AbejasNativasVisitaGrupalParticipante> RegistroGrupalParticipante, List<RespuestaRegistroEntrada> Respuesta, string identificadorGrupal , int indice,string Version, int numLista)
        {
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int n = 0;
            foreach (FloraNuevaProductor.AbejasNativasVisitaGrupalParticipante Item in RegistroGrupalParticipante)
            {
                RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
                n = FuncionDb.ExisteIdentificador(Item.Identificador);
                if (n > 0)
                {
                    n = FuncionDb.InsertarActualizarAbejasNativasVisitaGrupalParticipante(Item, identificadorGrupal, "Sp_ActualizarAbejasNativasVisitaGrupalParticipante");
                    if (n == -1)
                    {
                        Registro.Identificador = Item.Identificador;
                        Registro.Resultado = true; 
                        Registro.Posicion = indice;
                        Registro.Error = EngineData.Zero;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                            Registro.Id = FuncionDb.SeleccionarIdTabla("AbejasNtivasVisitaGrupalPrticipante", Registro.Identificador);
                        }
                        else
                        {
                            Registro.Id = Item.IdAbejasNativasVisitaGrupal;
                        }
                        Registro.CodigoFloraNueva = FuncionDb.SeleccionarCodigoFloraNueva(Registro.Identificador);
                        Registro.NombreTabla = "AbejasNativasVisitaGrupalParticipante";
                    }
                    else
                    {
                        Registro.Identificador = Item.Identificador;
                        Registro.Resultado = false;
                        Registro.Posicion = indice;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                            Registro.Error = EngineData.FalloInsertarAbejasNativasVisitaGrupalParticipante;
                        }
                        else
                        {
                            Registro.Error = EngineData.FalloActualizarAbejasNativasVisitaGrupalParticipante;
                        }
                        Registro.NombreTabla = "AbejasNativasVisitaGrupalParticipante";
                    }
                }
                else
                {
                    Registro.Identificador = Item.Identificador;
                    Registro.Resultado = false;
                    Registro.Posicion = indice;
                    Registro.Error = EngineData.NoExisteIdentificador;
                    Registro.NombreTabla = "Productor";
                }
                //Respuesta.Insert(indice, Registro);
                Respuesta.Add(Registro);
                indice++;
            }
            return Respuesta;
        }

        private List<RespuestaRegistroEntrada> ProductorAbejasNativasVisitaIndividual(FloraNuevaProductor.ProductorAbejasNativasVisitaIndividual RegistroProductor,string Version, int numLista)
        {
            List<RespuestaRegistroEntrada> Respuesta = new List<RespuestaRegistroEntrada>();
            RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int n = 0;
            int indice = 0;
            n = FuncionDb.ExisteIdentificador(RegistroProductor.Identificador);
            if (n >= 1)
            {
                n = FuncionDb.InsertarActualizarProductorAbejasNativasVisitaIndividualSync(RegistroProductor, "Sp_ActualizarProductorAbejasNativasVisitaIndividual");
                if (n == -1)
                {
                    Registro.Identificador = RegistroProductor.Identificador;
                    Registro.Resultado = true;
                    Registro.Posicion = indice;
                    Registro.NumeroLista = numLista;
                    Registro.Error = EngineData.Zero;
                    if (Registro.Transaccion == EngineData.Insertar)
                    {
                        Registro.Id = FuncionDb.SeleccionarIdTabla("ProductorProyecto", Registro.Identificador);
                    }
                    else
                    {
                        Registro.Id =RegistroProductor.IdProductorAbejasNativasVisitaIndividual;
                    }
                    Registro.CodigoFloraNueva = FuncionDb.SeleccionarCodigoFloraNueva(Registro.Identificador);
                    Registro.NombreTabla = "ProductorAbejasNativasVisitaIndividual";
                    Registro.Transaccion = EngineData.Insertar;
                    Registro.Version = Version;
                }
                else
                {
                    Registro.Identificador = RegistroProductor.Identificador;
                    Registro.Resultado = false;
                    Registro.Posicion = indice;
                    Registro.NumeroLista = numLista;
                    if (RegistroProductor.Transaccion == EngineData.Insertar)
                    {
                        Registro.Error = EngineData.FalloInsertarProductorAbejasNativasVisitaIndividual;
                    }
                    else
                    {
                        Registro.Error = EngineData.FalloActualizarProductorAbejasNativasVisitaIndividual;
                    }
                    Registro.NombreTabla = "ProductorAbejasNativasVisitaIndividual";
                    Registro.Transaccion = EngineData.Insertar;
                    Registro.Version = Version;
                }
            }
            else
            {
                Registro.Identificador = RegistroProductor.Identificador;
                Registro.Resultado = false;
                Registro.Posicion = indice;
                Registro.NumeroLista = numLista;
                Registro.Error = EngineData.NoExisteIdentificador;
                Registro.NombreTabla = "Productor";
                Registro.Version = Version;
            }
            //Respuesta.Insert(indice, Registro);
            Respuesta.Add(Registro);
            indice++;

            return Respuesta;
        }

        private List<RespuestaRegistroEntrada> ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria (List<FloraNuevaProductor.ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria> RegistroProductor, string Version, int numLista)
        {
            List<RespuestaRegistroEntrada> Respuesta = new List<RespuestaRegistroEntrada>();
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int n = 0;
            int indice = 0;
            foreach (FloraNuevaProductor.ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria Item in RegistroProductor)
            {
                RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
                n = FuncionDb.ExisteIdentificador(Item.Identificador);
                if (n > 0)
                {
                    n = FuncionDb.InsertarActualizarProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoriaSync(Item, "Sp_ActualizarProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria");
                    if (n == -1)
                    {
                        Registro.Identificador = Item.Identificador;
                        Registro.Resultado = true;
                        Registro.Posicion = indice;
                        Registro.NumeroLista = numLista;
                        Registro.Error = EngineData.Zero;
                        if (Registro.Transaccion == EngineData.Insertar)
                        {
                            Registro.Id = FuncionDb.SeleccionarIdTabla("ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria", Registro.Identificador);
                        }
                        else
                        {
                            Registro.Id = Item.IdProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria;
                        }
                        Registro.CodigoFloraNueva = FuncionDb.SeleccionarCodigoFloraNueva(Registro.Identificador);
                        Registro.NombreTabla = "ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria";
                        Registro.Transaccion = EngineData.Insertar;
                        Registro.Version = Version;
                    }
                    else
                    {
                        Registro.Identificador = Item.Identificador;
                        Registro.Resultado = false;
                        Registro.Posicion = indice;
                        Registro.NumeroLista = numLista;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                            Registro.Error = EngineData.FalloInsertarProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria;
                        }
                        else
                        {
                            Registro.Error = EngineData.FalloActualizarProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria;
                        }
                        Registro.NombreTabla = "ProductorAbejasNativasVisitaIndividualAccionCorrectivaObligatoria";
                        Registro.Transaccion = EngineData.Insertar;
                        Registro.Version = Version;
                    }
                }
                else
                {
                    Registro.Identificador = Item.Identificador;
                    Registro.Resultado = false;
                    Registro.Posicion = indice;
                    Registro.NumeroLista = numLista;
                    Registro.Error = EngineData.NoExisteIdentificador;
                    Registro.NombreTabla = "Productor";
                    Registro.Version = Version;
                }
                //Respuesta.Insert(indice, Registro);
                Respuesta.Add(Registro);
                indice++;
            }
            return Respuesta;
        }

        private List<RespuestaRegistroEntrada> ProductorAbejasNativasVisitaIndividualColmenasEnCaja(List<FloraNuevaProductor.ProductorAbejasNativasVisitaIndividualColmenasEnCaja> RegistroProductor, string Version, int numLista)
        {
            List<RespuestaRegistroEntrada> Respuesta = new List<RespuestaRegistroEntrada>();
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int n = 0;
            int indice = 0;
            foreach (FloraNuevaProductor.ProductorAbejasNativasVisitaIndividualColmenasEnCaja Item in RegistroProductor)
            {
                RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
                n = FuncionDb.ExisteIdentificador(Item.Identificador);
                if (n > 0)
                {
                    n = FuncionDb.InsertarActualizarProductorAbejasNativasVisitaIndividualColmenasEnCajaSync(Item, "Sp_ActualizarProductorAbejasNativasVisitaIndividualColmenaEnCaja");
                    if (n == -1)
                    {
                        Registro.Identificador = Item.Identificador;
                        Registro.Resultado = true;
                        Registro.Posicion = indice;
                        Registro.NumeroLista = numLista;
                        Registro.Error = EngineData.Zero;
                        if (Registro.Transaccion == EngineData.Insertar)
                        {
                            Registro.Id = FuncionDb.SeleccionarIdTabla("ProductorAbejasNativasVisitaIndividualColmenaEnCaja", Registro.Identificador);
                        }
                        else
                        {
                            Registro.Id = Item.IdProductorAbejasNativasVisitaIndividualColmenasEnCaja;
                        }
                        Registro.CodigoFloraNueva = FuncionDb.SeleccionarCodigoFloraNueva(Registro.Identificador);
                        Registro.NombreTabla = "ProductorAbejasNativasVisitaIndividualColmenaEnCaja";
                        Registro.Transaccion = EngineData.Insertar;
                        Registro.Version = Version;
                    }
                    else
                    {
                        Registro.Identificador = Item.Identificador;
                        Registro.Resultado = false;
                        Registro.Posicion = indice;
                        Registro.NumeroLista = numLista;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                            Registro.Error = EngineData.FalloInsertarProductorAbejasNativasVisitaIndividualColmenaEnCaja;
                        }
                        else
                        {
                            Registro.Error = EngineData.FalloActualizarProductorAbejasNativasVisitaIndividualColmenaEnCaja;
                        }
                        Registro.NombreTabla = "ProductorAbejasNativasVisitaIndividualColmenaEnCaja";
                        Registro.Transaccion = EngineData.Insertar;
                        Registro.Version = Version;
                    }
                }
                else
                {
                    Registro.Identificador = Item.Identificador;
                    Registro.Resultado = false;
                    Registro.Posicion = indice;
                    Registro.NumeroLista = numLista;
                    Registro.Error = EngineData.NoExisteIdentificador;
                    Registro.NombreTabla = "Productor";
                    Registro.Version = Version;
                }
                // Respuesta.Insert(indice, Registro);
                Respuesta.Add(Registro);
                indice++;
            }
            return Respuesta;
        }

        private List<RespuestaRegistroEntrada> ProductorAbejasNativasVisitaIndividualColmenasEnTrampa(List<FloraNuevaProductor.ProductorAbejasNativasVisitaIndividualColmenasEnTrampa> RegistroProductor, string Version, int numLista)
        {
            List<RespuestaRegistroEntrada> Respuesta = new List<RespuestaRegistroEntrada>();
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int n = 0;
            int indice = 0;
            foreach (FloraNuevaProductor.ProductorAbejasNativasVisitaIndividualColmenasEnTrampa Item in RegistroProductor)
            {
                RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
                n = FuncionDb.ExisteIdentificador(Item.Identificador);
                if (n > 0)
                {
                    n = FuncionDb.InsertarActualizarProductorAbejasNativasVisitaIndividualColmenasEnTrampaSync(Item, "Sp_ActualizarProductorAbejasNativasVisitaIndividualColmenaEnTrampa");
                    if (n == -1)
                    {
                        Registro.Identificador = Item.Identificador;
                        Registro.Resultado = true;
                        Registro.Posicion = indice;
                        Registro.NumeroLista = numLista;
                        Registro.Error = EngineData.Zero;
                        if (Registro.Transaccion == EngineData.Insertar)
                        {
                            Registro.Id = FuncionDb.SeleccionarIdTabla("ProductorAbejasNativasVisitaIndividualColmenaEnTrampa", Registro.Identificador);
                        }
                        else
                        {
                            Registro.Id = Item.IdProductorAbejasNativasVisitaIndividualColmenasEnTrampa;
                        }
                        Registro.CodigoFloraNueva = FuncionDb.SeleccionarCodigoFloraNueva(Registro.Identificador);
                        Registro.NombreTabla = "ProductorAbejasNativasVisitaIndividualColmenaEnTrampa";
                        Registro.Transaccion = EngineData.Insertar;
                        Registro.Version = Version;
                    }
                    else
                    {
                        Registro.Identificador = Item.Identificador;
                        Registro.Resultado = false;
                        Registro.Posicion = indice;
                        Registro.NumeroLista = numLista;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                            Registro.Error = EngineData.FalloInsertarProductorAbejasNativasVisitaIndividualColmenaEnTrampa;
                        }
                        else
                        {
                            Registro.Error = EngineData.FalloActualizarProductorAbejasNativasVisitaIndividualColmenaEnTrampa;
                        }
                        Registro.NombreTabla = "ProductorAbejasNativasVisitaIndividualColmenaEnTrampa";
                        Registro.Transaccion = EngineData.Insertar;
                        Registro.Version = Version;
                    }
                }
                else
                {
                    Registro.Identificador = Item.Identificador;
                    Registro.Resultado = false;
                    Registro.Posicion = indice;
                    Registro.NumeroLista = numLista;
                    Registro.Error = EngineData.NoExisteIdentificador;
                    Registro.NombreTabla = "Productor";
                    Registro.Version = Version;
                }
                //Respuesta.Insert(indice, Registro);
                Respuesta.Add(Registro);
                indice++;
            }
            return Respuesta;
        }

        private List<RespuestaRegistroEntrada> MeliponarioCaja(FloraNuevaProductor.MeliponarioCaja RegistroMeliponarioCaja, List<FloraNuevaProductor.MeliponarioCajaHistorial> RegistroMeliponarioCajaHistorial, string Version, int numLista)
        {
            List<RespuestaRegistroEntrada> Respuesta = new List<RespuestaRegistroEntrada>();
            RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int n = 0;
            int indice = 0;
            int IdMeliponarioCaja = 0;
            int existeIdentificador = 1;
            if (RegistroMeliponarioCaja.Transaccion != null)
            {
                if (RegistroMeliponarioCaja.Transaccion == EngineData.Insertar)
                {
                    while (existeIdentificador >= 1)
                    {
                        RegistroMeliponarioCaja.Identificador = Engine.EngineFloraNueva.IdentificadorReg().ToString();
                        existeIdentificador = FuncionDb.ExisteIdentificador("Sp_ExisteIdentificadorMeliponarioCaja", RegistroMeliponarioCaja.Identificador);
                    }
                    n = FuncionDb.NumeroDeCajasIdMeliponario(RegistroMeliponarioCaja.IdMeliponario);//Validar que el IdMeliponario Posea <= 30 Cajas
                    if (n <= 30)
                    {
                        IdMeliponarioCaja = FuncionDb.InsertarActualizarMeliponarioCajaSync(RegistroMeliponarioCaja, "Sp_ActualizarMeliponarioCaja");
                        if (IdMeliponarioCaja >= 1)
                        {
                            Registro.Identificador = RegistroMeliponarioCaja.Identificador;
                            Registro.Resultado = true;
                            Registro.Posicion = indice;
                            Registro.NumeroLista = numLista;
                            Registro.Error = EngineData.Zero;
                            if (Registro.Transaccion == EngineData.Insertar)
                            {
                                Registro.Id = FuncionDb.SeleccionarIdTabla("MeliponarioCaja", Registro.Identificador);
                            }
                            else
                            {
                                Registro.Id = RegistroMeliponarioCaja.IdMeliponarioCaja;
                            }
                            Registro.NombreTabla = "MeliponarioCaja";
                            Registro.Transaccion = EngineData.Insertar;
                            Registro.Version = Version;
                        }
                        else
                        {
                            Registro.Identificador = RegistroMeliponarioCaja.Identificador;
                            Registro.Resultado = true;
                            Registro.Posicion = indice;
                            Registro.NumeroLista = numLista;
                            Registro.Error = EngineData.FalloInsertarMeliponarioCaja; ;
                            Registro.NombreTabla = "MeliponarioCaja";
                            Registro.Transaccion = EngineData.Insertar;
                            Registro.Version = Version;
                        }
                    }
                    else
                    {
                        IdMeliponarioCaja = -1;
                        Registro.Identificador = RegistroMeliponarioCaja.Identificador;
                        Registro.Resultado = false;
                        Registro.Posicion = indice;
                        Registro.NumeroLista = numLista;
                        Registro.Error = EngineData.IdMeliponarioMasDe30Cajas;
                        Registro.NombreTabla = "MeliponarioCaja";
                        Registro.Transaccion = EngineData.Insertar;
                        Registro.Version = Version;
                    }
                }
                else
                {
                    existeIdentificador = FuncionDb.ExisteIdentificador("Sp_ExisteIdentificadorMeliponarioCaja", RegistroMeliponarioCaja.Identificador);
                    if (existeIdentificador >= 1)
                    {
                        IdMeliponarioCaja = FuncionDb.InsertarActualizarMeliponarioCajaSync(RegistroMeliponarioCaja, "Sp_ActualizarMeliponarioCaja");
                        if (IdMeliponarioCaja >= 1)
                        {
                            Registro.Identificador = RegistroMeliponarioCaja.Identificador;
                            Registro.Resultado = true;
                            Registro.Posicion = indice;
                            Registro.NumeroLista = numLista;
                            Registro.Error = EngineData.Zero;
                            Registro.Id = RegistroMeliponarioCaja.IdMeliponarioCaja;
                            Registro.NombreTabla = "MeliponarioCaja";
                            Registro.Transaccion = EngineData.Actualizar;
                            Registro.Version = Version;
                        }
                        else
                        {
                            Registro.Identificador = RegistroMeliponarioCaja.Identificador;
                            Registro.Resultado = true;
                            Registro.Posicion = indice;
                            Registro.NumeroLista = numLista;
                            Registro.Error = EngineData.FalloActualizarMeliponarioCaja; ;
                            Registro.NombreTabla = "MeliponarioCaja";
                            Registro.Transaccion = EngineData.Actualizar;
                            Registro.Version = Version;
                        }
                    }
                    else
                    {
                        IdMeliponarioCaja = -1;
                        Registro.Identificador = RegistroMeliponarioCaja.Identificador;
                        Registro.Resultado = false;
                        Registro.Posicion = indice;
                        Registro.NumeroLista = numLista;
                        Registro.Error = EngineData.NoExisteIdentificador;
                        Registro.NombreTabla = "MeliponarioCaja";
                        Registro.Transaccion = EngineData.Actualizar;
                        Registro.Version = Version;
                    }
                }
                //Respuesta.Insert(indice, Registro);
                Respuesta.Add(Registro);
                indice++;
            }

            if (RegistroMeliponarioCajaHistorial != null)
            {
                if (IdMeliponarioCaja > 0)
                {
                    Respuesta = MeliponarioCajaHistorial(RegistroMeliponarioCajaHistorial, Respuesta, indice, Version, numLista, IdMeliponarioCaja);
                }
                else
                {
                    Respuesta = MeliponarioCajaHistorial(RegistroMeliponarioCajaHistorial, Respuesta, indice, Version, numLista);
                }
            }
            return Respuesta;
        }


        private List<RespuestaRegistroEntrada> MeliponarioCajaHistorial(List<FloraNuevaProductor.MeliponarioCajaHistorial> RegistroMeliponarioCajaHistorial, List<RespuestaRegistroEntrada> Respuesta, int indice, string Version, int numLista, int IdMeliponarioCaja = 0)
        {
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int n = 0;
            foreach (FloraNuevaProductor.MeliponarioCajaHistorial Item in RegistroMeliponarioCajaHistorial)
            {
                if (IdMeliponarioCaja > 0)
                {
                    Item.IdMeliponarioCaja = IdMeliponarioCaja;
                }

                RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
                n = FuncionDb.InsertarActualizarMeliponarioCajaHistorial(Item, "Sp_ActualizarMeliponarioCajaHistorial");
                if (n == -1)
                {
                    Registro.Identificador = Item.Identificador;
                    Registro.Resultado = true;
                    Registro.Posicion = indice;
                    Registro.NumeroLista = numLista;
                    Registro.Error = EngineData.Zero;
                    if (Item.Transaccion == EngineData.Insertar)
                    {
                        Registro.Id = FuncionDb.SeleccionarIdTabla("MeliponarioCajaHistorial", Registro.Identificador);
                    }
                    else
                    {
                        Registro.Id = Item.IdMeliponarioCajaHistorial;
                    }
                    Registro.CodigoFloraNueva = FuncionDb.SeleccionarCodigoFloraNueva(Registro.Identificador);
                    Registro.NombreTabla = "MeliponarioCajaHistorial";
                    Registro.Transaccion = Item.Transaccion;
                    Registro.Version = Version;
                }
                else
                {
                    Registro.Identificador = Item.Identificador;
                    Registro.Resultado = false;
                    Registro.Posicion = indice;
                    Registro.NumeroLista = numLista;
                    if (Item.Transaccion == EngineData.Insertar)
                    {
                        Registro.Error = EngineData.FalloInsertarMeliponarioCajaHistorial;
                    }
                    else
                    {
                        Registro.Error = EngineData.FalloActualizarMeliponarioCajaHistorial;
                    }
                    Registro.NombreTabla = "MeliponarioCajaHistorial";
                    Registro.Transaccion = Item.Transaccion;
                    Registro.Version = Version;
                }
                //Respuesta.Insert(indice, Registro);
                Respuesta.Add(Registro);
                indice++;
            }
            return Respuesta;
        }

        private List<RespuestaRegistroEntrada> MeliponarioCosecha(FloraNuevaProductor.MeliponarioCosecha RegistroMeliponarioCosecha, List<FloraNuevaProductor.MeliponarioCosechaDetalle> RegistroMeliponarioCosechaDetalle, List<FloraNuevaProductor.MeliponarioCosechaDetalleCaja> RegistroMeliponarioCosechaDetalleCaja, string Version, int numLista)
        {
            List<RespuestaRegistroEntrada> Respuesta = new List<RespuestaRegistroEntrada>();
            RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int n = 0;
            int indice = 0;
            string IdentificadorMeliponarioCosecha = EngineData.Zero;

            if (RegistroMeliponarioCosecha.Transaccion == null)
            {
                if (RegistroMeliponarioCosecha.Transaccion == EngineData.Insertar)
                {
                    int existeIdentificador = 1;
                    while (existeIdentificador >= 1)
                    {
                        RegistroMeliponarioCosecha.Identificador = Engine.EngineFloraNueva.IdentificadorReg().ToString();
                        IdentificadorMeliponarioCosecha = RegistroMeliponarioCosecha.Identificador;
                        existeIdentificador = FuncionDb.ExisteIdentificador("Sp_ExisteIdentificadorMeliponarioCosecha", RegistroMeliponarioCosecha.Identificador);
                    }
                    n = FuncionDb.InsertarActualizarMeliponarioCosechaSync(RegistroMeliponarioCosecha, "Sp_ActualizarMeliponarioCosecha");
                    if (n == -1)
                    {
                        Registro.Identificador = RegistroMeliponarioCosecha.Identificador;
                        Registro.Resultado = true;
                        Registro.Posicion = indice;
                        Registro.NumeroLista = numLista;
                        Registro.Error = EngineData.Zero;
                        Registro.Id = FuncionDb.SeleccionarIdTabla("MeliponarioCosecha", Registro.Identificador);
                        Registro.NombreTabla = "MeliponarioCosecha";
                        Registro.Transaccion = EngineData.Insertar;
                        Registro.Version = Version;
                    }
                    else
                    {
                        Registro.Identificador = RegistroMeliponarioCosecha.Identificador;
                        Registro.Resultado = false;
                        Registro.Posicion = indice;
                        Registro.NumeroLista = numLista;
                        Registro.Error = EngineData.FalloInsertarMeliponarioCosecha;
                        Registro.NombreTabla = "MeliponarioCosecha";
                        Registro.Transaccion = EngineData.Insertar;
                        Registro.Version = Version;
                    }
                }
                else if (RegistroMeliponarioCosecha.Transaccion == EngineData.Actualizar || RegistroMeliponarioCosecha.Transaccion == EngineData.ActualizarEstado)
                {
                    IdentificadorMeliponarioCosecha = RegistroMeliponarioCosecha.Identificador;
                    n = FuncionDb.ExisteIdentificador("Sp_ExisteIdentificadorMeliponarioCosecha", RegistroMeliponarioCosecha.Identificador);
                    if (n > 0)
                    {
                        n = FuncionDb.InsertarActualizarMeliponarioCosechaSync(RegistroMeliponarioCosecha, "Sp_ActualizarMeliponarioCosecha");
                        if (n == -1)
                        {
                            Registro.Identificador = RegistroMeliponarioCosecha.Identificador;
                            Registro.Resultado = true;
                            Registro.Posicion = indice;
                            Registro.NumeroLista = numLista;
                            Registro.Error = EngineData.Zero;
                            Registro.Id = RegistroMeliponarioCosecha.IdMeliponarioCosecha;
                            Registro.NombreTabla = "MeliponarioCosecha";
                            Registro.Transaccion = EngineData.Actualizar;
                            Registro.Version = Version;
                        }
                        else
                        {
                            Registro.Identificador = RegistroMeliponarioCosecha.Identificador;
                            Registro.Resultado = false;
                            Registro.Posicion = indice;
                            Registro.NumeroLista = numLista;
                            Registro.Error = EngineData.FalloActualizarMeliponarioCosecha;
                            Registro.NombreTabla = "MeliponarioCosecha";
                            Registro.Transaccion = EngineData.Actualizar;
                            Registro.Version = Version;
                        }
                    }
                    else
                    {
                        Registro.Identificador = RegistroMeliponarioCosecha.Identificador;
                        Registro.Resultado = false;
                        Registro.Posicion = indice;
                        Registro.NumeroLista = numLista;
                        Registro.Error = EngineData.NoExisteIdentificador;
                        Registro.NombreTabla = "MeliponarioCosecha";
                        Registro.Transaccion = EngineData.Insertar;
                        Registro.Version = Version;
                    }
                }
            }
            // Respuesta.Insert(indice, Registro);
            Respuesta.Add(Registro);
            indice++;

            if (RegistroMeliponarioCosechaDetalle != null)
            {
                if (IdentificadorMeliponarioCosecha == EngineData.Zero)
                {
                    Respuesta = MeliponarioCosechaDetalle(RegistroMeliponarioCosechaDetalle,  Respuesta, indice, Version, numLista );
                }
                else
                {
                    Respuesta = MeliponarioCosechaDetalle(RegistroMeliponarioCosechaDetalle, Respuesta, indice, Version, numLista,IdentificadorMeliponarioCosecha);
                }
            }
            if (RegistroMeliponarioCosechaDetalleCaja != null)
            {
                if (IdentificadorMeliponarioCosecha == EngineData.Zero)
                {
                    Respuesta = MeliponarioCosechaDetalleCaja(RegistroMeliponarioCosechaDetalleCaja, Respuesta, indice, Version, numLista);
                }
                else
                {
                    Respuesta = MeliponarioCosechaDetalleCaja(RegistroMeliponarioCosechaDetalleCaja, Respuesta, indice, Version, numLista, IdentificadorMeliponarioCosecha);
                }
            }

            return Respuesta;
        }

        private List<RespuestaRegistroEntrada> MeliponarioCosechaDetalle(List<FloraNuevaProductor.MeliponarioCosechaDetalle> RegistroMeliponarioCosechaDetalle, List<RespuestaRegistroEntrada> Respuesta, int indice, string Version, int numLista, string IdentificadorMeliponarioCosecha  = EngineData.Zero)
        {
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int n = 0;
            foreach (FloraNuevaProductor.MeliponarioCosechaDetalle Item in RegistroMeliponarioCosechaDetalle)
            {
                if (IdentificadorMeliponarioCosecha != EngineData.Zero)
                {
                    Item.Identificador = IdentificadorMeliponarioCosecha;
                }
                RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
                n = FuncionDb.ExisteIdentificador("Sp_ExisteIdentificadorMeliponarioCosecha", Item.Identificador);
                if (n > 0)
                {
                    n = FuncionDb.InsertarActualizarMeliponarioCosechaDetalleSync(Item, "Sp_ActualizarMeliponarioCosechaDetalle");
                    if (n == -1)
                    {
                        Registro.Identificador = Item.Identificador;
                        Registro.Resultado = true;
                        Registro.Posicion = indice;
                        Registro.NumeroLista = numLista;
                        Registro.Error = EngineData.Zero;
                        Registro.NombreTabla = "MeliponarioCosechaDetalle";
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                            Registro.Id = FuncionDb.SeleccionarIdTabla("MeliponarioCosechaDetalle", Registro.Identificador);
                        }
                        else
                        {
                            Registro.Id = Item.IdMeliponarioCosechaDetalle;
                        }
                        Registro.Version = Version;
                    }
                    else
                    {
                        Registro.Identificador = Item.Identificador;
                        Registro.Resultado = false;
                        Registro.Posicion = indice;
                        Registro.NumeroLista = numLista;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                            Registro.Error = EngineData.FalloInsertarMeliponarioCosechaDetalle;
                        }
                        else
                        {
                            Registro.Error = EngineData.FalloActualizarMeliponarioCosechaDetalle;
                        }
                        Registro.NombreTabla = "MeliponarioCosechaDetalle";
                        Registro.Version = Version;
                    }
                }
                else
                {
                    Registro.Identificador = Item.Identificador;
                    Registro.Resultado = false;
                    Registro.Posicion = indice;
                    Registro.NumeroLista = numLista;
                    Registro.Error = EngineData.NoExisteIdentificador;
                    Registro.NombreTabla = "MeliponarioCosecha";
                    Registro.Transaccion = EngineData.Insertar;
                    Registro.Version = Version;
                }

                //Respuesta.Insert(indice, Registro);
                Respuesta.Add(Registro);
                indice++;
            }
        
            return Respuesta;
        }

        private List<RespuestaRegistroEntrada> MeliponarioCosechaDetalleCaja(List<FloraNuevaProductor.MeliponarioCosechaDetalleCaja> RegistroMeliponarioCosechaDetalleCaja, List<RespuestaRegistroEntrada> Respuesta, int indice, string Version, int numLista, string IdentificadorMeliponarioCosecha = EngineData.Zero)
        {
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int n = 0;
            foreach (FloraNuevaProductor.MeliponarioCosechaDetalleCaja Item in RegistroMeliponarioCosechaDetalleCaja)
            {
                if (IdentificadorMeliponarioCosecha != EngineData.Zero)
                {
                    Item.Identificador = IdentificadorMeliponarioCosecha;
                }
                RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
                n = FuncionDb.ExisteIdentificador("Sp_ExisteIdentificadorMeliponarioCosecha", Item.Identificador);
                if (n > 0)
                {
                    n = FuncionDb.InsertarActualizarMeliponarioCosechaDetalleCajaSync(Item, "Sp_ActualizarMeliponarioCosechaDetalleCaja");
                    if (n == -1)
                    {
                        Registro.Identificador = Item.Identificador;
                        Registro.Resultado = true;
                        Registro.Posicion = indice;
                        Registro.NumeroLista = numLista;
                        Registro.Error = EngineData.Zero;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                            Registro.Id = FuncionDb.SeleccionarIdTabla("MeliponarioCosellaDetalleCaja", Registro.Identificador);
                        }
                        else
                        {
                            Registro.Id = Item.IdMeliponarioCosechaDetalleCaja;
                        }
                        Registro.NombreTabla = "MeliponarioCosechaDetalleCaja";
                        Registro.Version = Version;
                    }
                    else
                    {
                        Registro.Identificador = Item.Identificador;
                        Registro.Resultado = false;
                        Registro.Posicion = indice;
                        Registro.NumeroLista = numLista;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                            Registro.Error = EngineData.FalloInsertarMeliponarioCosechaDetalleCaja;
                        }
                        else
                        {
                            Registro.Error = EngineData.FalloActualizarMeliponarioCosechaDetalleCaja;
                        }
                        Registro.NombreTabla = "MeliponarioCosechaDetalleCaja";
                        Registro.Version = Version;
                    }
                }
                else
                {
                    Registro.Identificador = Item.Identificador;
                    Registro.Resultado = false;
                    Registro.Posicion = indice;
                    Registro.NumeroLista = numLista;
                    Registro.Error = EngineData.NoExisteIdentificador;
                    Registro.NombreTabla = "MeliponarioCosecha";
                    Registro.Transaccion = EngineData.Insertar;
                    Registro.Version = Version;
                }

                //Respuesta.Insert(indice, Registro);
                Respuesta.Add(Registro);
                indice++;
            }

            return Respuesta;
        }

        private List<RespuestaRegistroEntrada> MeliponarioCajaAccion(List<FloraNuevaProductor.MeliponarioCajaAccion> RegistroMeliponarioCajaAccion, string Version, int numLista)
        {
            List<RespuestaRegistroEntrada> Respuesta = new List<RespuestaRegistroEntrada>();
            Engine.EngineDb FuncionDb = new Engine.EngineDb();
            int n = 0;
            int indice = 0;
            foreach (FloraNuevaProductor.MeliponarioCajaAccion Item in RegistroMeliponarioCajaAccion)
            {
                RespuestaRegistroEntrada Registro = new RespuestaRegistroEntrada();
                n = FuncionDb.ExisteIdentificador(Item.Identificador);
                if (n >= 1)
                {
                    n = FuncionDb.ExisteIdentificador("Sp_ExisteIdentificadorMeliponarioCaja", Item.Identificador);
                    if (n == -1)
                    {
                        Registro.Identificador = Item.Identificador;
                        Registro.Resultado = true;
                        Registro.Posicion = indice;
                        Registro.NumeroLista = numLista;
                        Registro.Error = EngineData.Zero;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                            Registro.Id = FuncionDb.SeleccionarIdTabla("MeliponarioCajaAccion", Registro.Identificador);
                        }
                        else
                        {
                            Registro.Id = Item.IdMeliponarioCajaAccion;
                        }
                        Registro.NombreTabla = "MeliponarioCajaAccion";
                        Registro.Version = Version;
                    }
                    else
                    {
                        Registro.Identificador = Item.Identificador;
                        Registro.Resultado = false;
                        Registro.Posicion = indice;
                        Registro.NumeroLista = numLista;
                        if (Item.Transaccion == EngineData.Insertar)
                        {
                            Registro.Error = EngineData.FalloInsertarMeliponarioCajaAccion;
                        }
                        else
                        {
                            Registro.Error = EngineData.FalloActualizarMeliponarioCajaAccion;
                        }
                        Registro.NombreTabla = "MeliponarioCajaAccion";
                        Registro.Version = Version;
                    }
                }
                else
                {
                    Registro.Identificador = Item.Identificador;
                    Registro.Resultado = false;
                    Registro.Posicion = indice;
                    Registro.NumeroLista = numLista;
                    Registro.Error = EngineData.NoExisteIdentificador;
                    Registro.NombreTabla = "MeliponarioCaja";
                    Registro.Version = Version;
                }
                //Respuesta.Insert(indice, Registro);
                Respuesta.Add(Registro);
                indice++;
            }

            return Respuesta;
        }

        //***********************
    }
}

