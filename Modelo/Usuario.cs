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

        public long Id { get; set; }

        public string Apellido { get; set; }

        public string Nombres { get; set; }

        public DateTime Nacimiento { get; set; }

        public char Genero { get; set; }

        public string Email { get; set; }

        public string Domicilio { get; set; }

        public string Ciudad { get; set; }

        public string Pais { get; set; }

        public string NombreUsuario { get; set; }

        public string Contrasena { get; set; }

        public bool EsAdministrador { get; set; }

        public bool EsVip { get; set; }

        public bool Estado { get; set; }

        public TipoUsuario TipoUsuario { get; set; }


    }



}
