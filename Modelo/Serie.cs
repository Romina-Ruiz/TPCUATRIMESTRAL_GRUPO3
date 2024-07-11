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

        public string PlataformaNombre { get; set; }//Agrege NO BORRAR

        public string PaisId { get; set; } // Agrege NO BORRAR

        public Plataforma Plataforma { get; set; }
        
        public Pais Pais { get; set; }

        public bool Fandom { get; set; }

        public bool Estado { get; set; }

    }
}