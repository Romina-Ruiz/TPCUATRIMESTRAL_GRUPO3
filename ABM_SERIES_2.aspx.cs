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
    public partial class ABM_SERIES_2 : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {


                if (Session["Usuario"] == null && Session["Admin"] == null)
                {
                    Session.Add("error", "Debes loguearte para ingresar.");
                    Response.Redirect("ERROR.aspx", false);
                }

                if (!IsPostBack)
                {
                    SerieNegocio negocio= new SerieNegocio();   
                  
                    Session.Add("listaSeries", negocio.listarConSP());
                    gvSeries.DataSource = Session["listaSeries"];
                    gvSeries.DataBind();
                }



            }
            catch (Exception)
            {

                throw;
            }


        }

        protected void gvSeries_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(gvSeries.SelectedDataKey.Value.ToString());

            if (id != 0)
            {

                List<Serie> temporal = (List<Serie>)Session["listaSeries"];
                Serie detalle = temporal.Find(x => x.ID == id);

                Response.Redirect("MODIFICAR_SERIE.aspx?id=" + id);


            }
        }

        protected void Txtfiltro_TextChanged(object sender, EventArgs e)
        {

            List<Serie> lista = (List<Serie>)Session["listaSeries"];

            List<Serie> listafiltrada = lista.FindAll(x => x.Titulo.ToUpper().Contains(Txtfiltro.Text.ToUpper()));

            gvSeries.DataSource = listafiltrada;
            gvSeries.DataBind();

        }

        protected void DlCriterio_SelectedIndexChanged(object sender, EventArgs e)
        {
            PlataformaNegocio NegPlata = new PlataformaNegocio();
            List<Plataforma> lisPlata = NegPlata.PlataformaOrden();
            PaisNegocio AuxPais = new PaisNegocio();
            List<Pais> listaPais = AuxPais.listarPaisOrden();

            
            Dlopciones2.Items.Clear();
            if (DlCriterio.SelectedItem.ToString() == "Plataforma")
            {
                Dlopciones2.DataSource = lisPlata;
                Dlopciones2.DataTextField = "Nombre";
                Dlopciones2.DataValueField = "ID";
                Dlopciones2.DataBind();
            }

            else if (DlCriterio.SelectedItem.ToString() == "Pais")
            {

                Dlopciones2.DataSource = listaPais;
                Dlopciones2.DataTextField = "NombrePais";
                Dlopciones2.DataValueField = "Id";
                Dlopciones2.DataBind();

            }

            else if (DlCriterio.SelectedItem.ToString() == "Categoria")
            {
                Dlopciones2.Items.Add("Accion");
                Dlopciones2.Items.Add("Animacion");
                Dlopciones2.Items.Add("Ciencia Ficcion");
                Dlopciones2.Items.Add("Comedia");
                Dlopciones2.Items.Add("Documentar");
                Dlopciones2.Items.Add("Drama");
                Dlopciones2.Items.Add("Fantasia");
                Dlopciones2.Items.Add("Suspenso");
                Dlopciones2.Items.Add("Terror");



            }

            else if (DlCriterio.SelectedItem.ToString() == "Fandom")
            {
                Dlopciones2.Items.Add("SI");
                Dlopciones2.Items.Add("NO");
            }


        }

        protected void Volver_Click(object sender, EventArgs e)
        {

            Response.Redirect("CHECK_CONTENIDO.aspx");


        }
    }
}