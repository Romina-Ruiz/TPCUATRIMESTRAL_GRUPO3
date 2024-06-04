using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPCuatrimestral_Grupo3.Modelo
{
    public class MostrarContenido
    {
        public string Titulo { get; set; }
        public DateTime FechaLanzamiento { get; set; }
        public string Descripcion { get; set; }
        public decimal EstrellasPromedio { get; set; }
        public string PaisOrigen { get; set; }
        public string UrlImagenContenido { get; set; }
        public string PlataformaNombre { get; set; }
        public string UrlLogoPlataforma { get; set; }
        public string NombreCategoria { get; set; }
        public string TipoContenido { get; set; }
    }
}