using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPCuatrimestral_Grupo3.Modelo
{
    public class Novedades
    {
        public long IdNews { get; set; }

        public DateTime FechaSubido { get; set; }

        public string TituloPortada { get; set; }   

        public string TituloCuerpo { get; set; }

        public string Texto { get; set; }   

        public string ImgPortada { get; set; }

        public string ImgCuerpo { get; set; }

        public bool Estado { get; set; }


    }
}