using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FloraNueva_RestFullApi.Models
{
    public class RespuestaRegistroEntrada
    {
        public string Identificador { get; set; }

        public bool Resultado { get; set; }

        public string Error { get; set; }

        public string Version { get; set; }

        public int Posicion { get; set; }

        public int NumeroLista { get; set; }

        public string NombreTabla { get; set; }

        public int Id { get; set; }

        public string CodigoFloraNueva { get; set; }

        public string Transaccion { get; set; }

    }
}