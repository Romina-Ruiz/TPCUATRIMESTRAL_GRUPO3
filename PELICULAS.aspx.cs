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
    public partial class PELICULAS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            PeliculaNegocio negocio = new PeliculaNegocio();
            repRepetidor.DataSource = negocio.listarConSP();
            repRepetidor.DataBind();
            }
            if (!IsPostBack)
            {

                DetallePeliNegocio negocio = new DetallePeliNegocio();
                List<DetallePelicula> listaDetallePeliculas = negocio.listarConSP();
                Session["listaPeliculas"] = listaDetallePeliculas;


            }
        }

        protected void detallepeli_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            long idPelicula = long.Parse(btn.CommandArgument);
            Session["idPeliculaSeleccionada"] = idPelicula;

            Response.Redirect("DETALLE_PELI.aspx");
        }
    }
}