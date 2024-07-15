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
    public partial class FANDOM_SERIES : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                SerieNegocio negocio = new SerieNegocio();
                Session.Add("listacompleta", negocio.FandomSeries());
                RepSeries.DataSource = Session["listaCompleta"];
                RepSeries.DataBind();

            }

            if (!IsPostBack)
            {

                DetalleSerieNegocio negocio = new DetalleSerieNegocio();
                List<DetalleSerie> listaDetalleSeries = negocio.listarConSP();
                Session["listaSeries"] = listaDetalleSeries;


            }

        }

        protected void detalleSerie_Click(object sender, EventArgs e)
        {

            Button btn = (Button)sender;
            long idSerie = long.Parse(btn.CommandArgument);
            Session["idSerieSeleccionada"] = idSerie;

            Response.Redirect("DETALLE_SERIE.aspx");


        }

        protected void txtFiltro_TextChanged(object sender, EventArgs e)
        {
            List<Serie> lista = (List<Serie>)Session["ListaCompleta"];
            List<Serie> listaFiltrada = lista.FindAll(x => x.Titulo.ToUpper().Contains(txtFiltro.Text.ToUpper()));
            RepSeries.DataSource = listaFiltrada;
            RepSeries.DataBind();


        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {


            //string Titulo = txtFiltro.Text;
            //List<Serie> lista = (List<Serie>)Session["listaCompleta"];

            //List<Serie> listafiltrada = lista.FindAll(x => x.Titulo.ToUpper().Contains(txtFiltro.Text.ToUpper()));

            //RepSeries.DataSource = Session["listafiltrada"];
            //RepSeries.DataBind();


        }
    }
}