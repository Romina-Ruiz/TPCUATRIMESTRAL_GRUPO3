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
    public partial class SERIES : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DetalleSerieNegocio negocio = new DetalleSerieNegocio();
               
                repRepetidor.DataSource = negocio.listarConSP();
                repRepetidor.DataBind();

           
                List<DetalleSerie> listaDetalleSeries = negocio.listarConSP();
                Session["listaSeries"] = listaDetalleSeries;

                CategoriaNegocio negocioCategoria = new CategoriaNegocio();
                List<Categoria> listaCategorias = negocioCategoria.listarConSP();

                ddlCategorias.DataSource = listaCategorias;
                ddlCategorias.DataTextField = "Nombre";
                ddlCategorias.DataValueField = "ID";
                ddlCategorias.DataBind();

                PaisNegocio negocioPais = new PaisNegocio();
                List<Pais> listaPais = negocioPais.listarPaisOrden();
                ddlPais.DataSource = listaPais;
                ddlPais.DataTextField = "NombrePais";
                ddlPais.DataValueField = "ID";
                ddlPais.DataBind();

                PopulateYears();


            }
        }

        protected void detalleSerie_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            long idSerie = long.Parse(btn.CommandArgument);
            Session["idSerieSeleccionada"] = idSerie;

            Response.Redirect("DETALLE_SERIE.aspx");

        }

        protected void TxtFiltroS_TextChanged(object sender, EventArgs e)
        {

            List<DetalleSerie> lista = (List<DetalleSerie>)Session["ListaSeries"];
            List<DetalleSerie> listaFiltrada = lista.FindAll(x => x.Titulo.ToUpper().Contains( TxtFiltroS.Text.ToUpper()));
            repRepetidor.DataSource = listaFiltrada;
            repRepetidor.DataBind();



        }
        protected void ddlCategorias_SelectedIndexChanged(object sender, EventArgs e)
        {
            List<short> idsCategoria = ConvertirStringAListaDeShort(ddlCategorias.Text);
            repRepetidor.DataSource = ((List<DetalleSerie>)Session["listaSeries"]).FindAll(x => x.IdsCategorias.Any(id => idsCategoria.Contains(id)));
            repRepetidor.DataBind();

        }
        public List<short> ConvertirStringAListaDeShort(string input)
        {
            return input
                .Split(',')
                .Select(s =>
                {
                    short.TryParse(s, out short result);
                    return result;
                })
                .Where(id => id != 0)
                .ToList();
        }
        protected void ddlPais_SelectedIndexChanged(object sender, EventArgs e)
        {
            short idPais = short.Parse(ddlPais.SelectedItem.Value);
            repRepetidor.DataSource = ((List<DetalleSerie>)Session["listaSeries"]).FindAll(x => x.IdPaisOrigen == idPais);
            repRepetidor.DataBind();

        }

        protected void ddlAnioEstreno_SelectedIndexChanged(object sender, EventArgs e)
        {
            int anio = int.Parse(ddlAnioEstreno.SelectedItem.Value);

            repRepetidor.DataSource = ((List<DetalleSerie>)Session["listaSeries"]).FindAll(x => x.FechaLanzamiento.Year == anio);
            repRepetidor.DataBind();

        }

       

        private void PopulateYears()
        {
            int startYear = 1980;
            int endYear = DateTime.Now.Year;
            for (int year = startYear; year <= endYear; year++)
            {
                ddlAnioEstreno.Items.Add(new ListItem(year.ToString(), year.ToString()));
            }
        }

        protected void ddlYears_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblSelectedYear.Text = "AÑO DE ESTRENO: " + ddlAnioEstreno.SelectedValue;
        }
    }
}