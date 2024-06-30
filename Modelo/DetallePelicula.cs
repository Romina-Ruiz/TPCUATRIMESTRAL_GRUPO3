using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPCuatrimestral_Grupo3.Modelo
{
    public class DetallePelicula
    {
        public long ID { get; set; }
        public string Titulo { get; set; }
        public string PaisOrigen { get; set; }
        public DateTime FechaLanzamiento { get; set; }
        public string Descripcion { get; set; }
        public string Categoria { get; set; }
        public string Plataforma { get; set; }
        public string UrlImagen { get; set; }

        public int PuntajePromedio { get; set; }

        public int Duracion { get; set; }

    }
}