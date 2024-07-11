using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TPCuatrimestral_Grupo3.Modelo;
using TPCuatrimestral_Grupo3.Negocio;

namespace TPCuatrimestral_Grupo3
{
    public partial class UP_SERIES : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Usuario"] == null && Session["Admin"] == null)
            {
                Session.Add("error", "Debes loguearte para ingresar.");
                Response.Redirect("ERROR.aspx", false);
            }
            if (!IsPostBack)
            {
                PlataformaNegocio AuxPlaNe = new PlataformaNegocio();
                List<Plataforma> listaPlataformas = AuxPlaNe.PlataformaOrden();


                DWLPlataformas2.DataSource = listaPlataformas;
                DWLPlataformas2.DataTextField = "Nombre";
                DWLPlataformas2.DataValueField = "ID";
                DWLPlataformas2.DataBind();

                PaisNegocio AuxPais = new PaisNegocio();
                List<Pais> listaPais = AuxPais.listarPaisOrden();

                DWLPais2.DataSource = listaPais;
                DWLPais2.DataTextField = "NombrePais";
                DWLPais2.DataValueField = "Id";
                DWLPais2.DataBind();

            }
        }

        protected void URLImagenSerie_TextChanged(object sender, EventArgs e)
        {
            string nuevaImagen = URLImagenSerie.Text;
            URLImgSerie.ImageUrl = nuevaImagen;
        }

        protected void BtnCargarSERIE_Click(object sender, EventArgs e)
        {
            SerieNegocio AuxSeNe = new SerieNegocio();
            Serie Aux = new Serie();

            Aux.Titulo = TxtTitulo.Text;
            Aux.Descripcion = TxtResumenSerie.Text;
            Aux.Plataforma=new Plataforma();
            Aux.Plataforma.ID = short.Parse(DWLPlataformas2.SelectedValue);
            //Aux.IdPlataforma = DWLPlataformas2.Text;
            Aux.Pais=new Pais();
            Aux.Pais.Id=short.Parse(DWLPais2.SelectedValue);
            //Aux.PaisOrigen = DWLPais2.Text;
            Aux.Temporadas = int.Parse(DWLTemporadas2.Text);
            Aux.EpisodiosTotales = int.Parse(DWLCapitulos2.Text);

            Aux.UrlImagenContenido = URLImagenSerie.Text;
           
            Aux.FechaLanzamiento = DateTime.Parse(TxtFechaSerie.Text);
            AuxSeNe.CargaSerie2(Aux);

            Contenido AuxCont = new Contenido();

            if (CkbAccion2.Checked)
            {
                AuxCont.IdCategoria = 1;
                AuxSeNe.cargaCheckedSerie(AuxCont);
            }
            if (CkbComedia2.Checked)
            {

                AuxCont.IdCategoria = 2;
                AuxSeNe.cargaCheckedSerie(AuxCont);
            }
            if (CkbDrama2.Checked)
            {
                AuxCont.IdCategoria = 3;
                AuxSeNe.cargaCheckedSerie(AuxCont);
            }
            if (CkbAnimacion2.Checked)
            {
                AuxCont.IdCategoria = 4;
                AuxSeNe.cargaCheckedSerie(AuxCont);

            }
            if (CkbCiencia2.Checked)
            {
                AuxCont.IdCategoria = 5;
                AuxSeNe.cargaCheckedSerie(AuxCont);
            }
            if (CkbDocumental2.Checked)
            {
                AuxCont.IdCategoria = 6;
                AuxSeNe.cargaCheckedSerie(AuxCont);
            }
            if (CkbFantasia2.Checked)
            {
                AuxCont.IdCategoria = 7;
                AuxSeNe.cargaCheckedSerie(AuxCont);
            }
            if (CkbSuspenso2.Checked)
            {
                AuxCont.IdCategoria = 8;
                AuxSeNe.cargaCheckedSerie(AuxCont);
            }
            if (CkbTerror2.Checked)
            {
                AuxCont.IdCategoria = 9;
                AuxSeNe.cargaCheckedSerie(AuxCont);
            }


        }
    }
}