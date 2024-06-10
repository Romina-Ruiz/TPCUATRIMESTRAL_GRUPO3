using Azure;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using static System.Collections.Specialized.BitVector32;

namespace TPCuatrimestral_Grupo3.Modelo
{
    public enum TipoUsuario 
    { 
        NORMAL = 1,
        ADMIN = 2
    }    
    public class Usuario
    {

        public int ID { get; set; }

        public string NombreUsuario { get; set; }

        public string Apellido { get; set; }

        public string Contrasena { get; set; }

        public string Email { get; set; }

        public bool EsAdministrador { get; set; }

        public bool EsVip { get; set; }

        public TipoUsuario TipoUsuario { get; set; }   

    
    }
}