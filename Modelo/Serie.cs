using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPCuatrimestral_Grupo3.Modelo
{
    public class Serie
    {
        public long ID { get; set; }
        public string Titulo { get; set; }
        public string PaisOrigen { get; set; }
        public DateTime FechaLanzamiento { get; set; }
        public string Descripcion { get; set; }
        public string UrlImagenContenido { get; set; }
        public int Temporadas { get; set; }
        public int EpisodiosTotales { get; set; }

        /*POR FAVOR NO BORRAR esta prop se usa*/
        public string IdPlataforma { get; set; }

    }
}