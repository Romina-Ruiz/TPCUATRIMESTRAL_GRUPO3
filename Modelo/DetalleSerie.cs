using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPCuatrimestral_Grupo3.Modelo
{
    public class DetalleSerie
    {
        public long IdSerie { get; set; }
        public string  Titulo { get; set; }
        public DateTime  FechaLanzamiento { get; set; }
        public string  Sinopsis { get; set; }
        public int  Temporadas { get; set; }
        public int  EpisodiosTotales { get; set; }
        public string  Plataforma { get; set; }
        public List<short> IdsCategorias { get; set; }
        public string  Categorias { get; set; }
        public string  UrlImagen { get; set; }
        public string  PaisOrigen { get; set; }
        public short IdPaisOrigen { get; set; }
        public int PochoclosProm { get; set; }



       

    }
}