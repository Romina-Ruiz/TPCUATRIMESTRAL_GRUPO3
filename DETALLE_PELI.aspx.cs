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
    public partial class DETALLE_PELI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                if (!IsPostBack)
                {
                    if (Session["listaPeliculas"] != null && Session["idPeliculaSeleccionada"] != null)
                    {
                        List<DetallePelicula> listaPeliculas = (List<DetallePelicula>)Session["listaPeliculas"];
                        long idPelicula = (long)Session["idPeliculaSeleccionada"];
                        DetallePelicula detalle = listaPeliculas.FirstOrDefault(p => p.ID == idPelicula);

                        MostrarDetallesPelicula(detalle);
                    }
                }
            

        }

        private void MostrarDetallesPelicula(DetallePelicula detalle)
        {
            if (detalle != null)
            {
                imgPelicula.Src = detalle.UrlImagen;
                Titulo.InnerText = detalle.Titulo;
                lblPlataforma.Text = detalle.Plataforma;
                lblPaisOrigen.Text = detalle.PaisOrigen;
                lblFechaLanzamiento.Text = detalle.FechaLanzamiento.ToString();
                lblDuracion.Text = detalle.Duracion.ToString() + " Minutos";
                lblCategoria.Text = detalle.Categoria;
                lblPromedioPochoclos.Text = detalle.PuntajePromedio.ToString();
                lblSinopsis.Text = detalle.Descripcion;


            }
        }
    }
}