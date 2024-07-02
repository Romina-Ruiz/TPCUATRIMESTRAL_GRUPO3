using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TPCuatrimestral_Grupo3.Modelo;

namespace TPCuatrimestral_Grupo3
{
    public partial class DETALLE_SERIE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["listaSeries"] != null && Session["idSerieSeleccionada"] != null)
                {
                    List<DetalleSerie> listaSeries = (List<DetalleSerie>)Session["listaSeries"];
                    long idSerie = (long)Session["idSerieSeleccionada"];
                    DetalleSerie detalle = listaSeries.FirstOrDefault(p => p.IdSerie == idSerie);

                    MostrarDetalleSerie(detalle);
                }
            }

        }
        private void MostrarDetalleSerie(DetalleSerie detalle)
        {
            if (detalle != null)
            {
                imgSerie.Src = detalle.UrlImagen;
                TituloSerie.InnerText = detalle.Titulo;
                lblPlataforma.Text = detalle.Plataforma;
                lblPaisOrigen.Text = detalle.PaisOrigen;
                lblFechaLanzamiento.Text=detalle.FechaLanzamiento.ToString();
                lblTemporadas.Text =detalle.Temporadas.ToString();
                lblCapitulos.Text=detalle.EpisodiosTotales.ToString();
                lblCategorias.Text = detalle.Categorias;
                lblSinopsis.Text = detalle.Sinopsis;
                lblPuntajeProm.Text=detalle.PochoclosProm.ToString();
            }
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("SERIES.aspx");
        }
    }
}