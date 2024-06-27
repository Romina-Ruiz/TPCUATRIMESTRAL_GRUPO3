using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TPCuatrimestral_Grupo3.Modelo;
using TPCuatrimestral_Grupo3.Negocio;

namespace TPCuatrimestral_Grupo3
{
    public partial class UP_PELICULAS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnCargarPeli_Click(object sender, EventArgs e)
        {
            ContenidoNegocio AuxContNego = new ContenidoNegocio();
            Contenido AuxCont = new Contenido();

            AuxCont.Titulo = TxtTitulo.Text;
            AuxCont.Descripcion = TxtResumenPeli.Text;
           /* 
           if (RdBSerie.Checked)
            {
                AuxCont.IdTipoContenido = 2; 
            }
            else if (RdbPelicula.Checked)
            {
                AuxCont.IdTipoContenido = 3; 
            }

            AuxContNego.cargaContenido(AuxCont);
           */
        }
    }
}