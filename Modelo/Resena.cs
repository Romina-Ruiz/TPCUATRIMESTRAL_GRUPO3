using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;

namespace TPCuatrimestral_Grupo3.Modelo
{
    public class Resena
    {

        public int Id { get; set; }

        public int IdContenido { get; set; }

        public int IdUsuario { get; set; }

        public int Estrellas { get; set; }

        public string Texto { get; set; }

        public bool EsAprobada { get; set; }

        public DateTime FechaCreacion { get; set; }

        /*Id bigint identity(1,1) not null Primary key,
        IdContenido int not null,
        IdUsuario int not null,
        Estrellas int check(Estrellas>=1 and Estrellas<=5),
        Texto text not null,
        EsAprobada bit default 0,
        FechaCreacion date not null,
        Foreign key(IdContenido) references Contenidos(Id),
        Foreign key(IdUsuario) references Usuarios(Id)*/
    }
}