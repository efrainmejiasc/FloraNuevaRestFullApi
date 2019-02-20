using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FloraNueva_RestFullApi.Models
{
    public class ClienteRegistroSync
    {
        public string Version { get; set; }

        public string Usuario { get; set; }

        public string Dispositivo { get; set; }

        public string Estado { get; set; }
    }
}