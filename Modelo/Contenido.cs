using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TPCuatrimestral_Grupo3.Modelo
{
    public class Contenido
    {

        public  int Id { get; set; }

        public string Titulo { get; set; }

        public int IdCategoria { get; set; }

        public int IdOrigen { get; set; }

        public int IdTipoContenido { get; set; }

        public int IdPlataforma { get; set; }

        public DateTime FechaLanzamiento { get; set; }

        public string Descripcion { get; set; }

        public decimal EstrellasPromedio { get; set; }

     
    /*
    Foreign key(IdCategoria) references Categoria(Id),
    Foreign key(IdOrigen) references Paises(Id),
    Foreign key(IdTipoContenido) references TiposContenidos(Id)
    */

    }
}