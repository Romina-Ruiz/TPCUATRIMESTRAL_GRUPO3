using Azure.Core;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TPCuatrimestral_Grupo3.Modelo;
using TPCuatrimestral_Grupo3.Negocio;

namespace TPCuatrimestral_Grupo3
{
    public partial class MODIFICAR_SERIE : System.Web.UI.Page
    {

        string num;
        protected void Page_Load(object sender, EventArgs e)
        {
            num = Request.QueryString["id"];

            try
            {
                if (!IsPostBack)
                {

                    PaisNegocio AuxPais = new PaisNegocio();
                    List<Pais> listaPais = AuxPais.listarPaisOrden();

                    DWLPais3.DataSource = listaPais;
                    DWLPais3.DataTextField = "NombrePais";
                    DWLPais3.DataValueField = "Id";
                    DWLPais3.DataBind();

                    PlataformaNegocio NegPlata = new PlataformaNegocio();
                    List<Plataforma> lisPlata = NegPlata.PlataformaOrden();

                    DWLPlataformas3.DataSource = lisPlata;
                    DWLPlataformas3.DataTextField = "Nombre";
                    DWLPlataformas3.DataValueField = "ID";
                    DWLPlataformas3.DataBind();

                    //TRAIGO EL SELECCIONADO

                    if (Request.QueryString["id"] != null)
                    {
                        int id = int.Parse(Request.QueryString["id"].ToString());
                        List<Serie> lista = (List<Serie>)Session["listaSeries"];
                        Serie seleccionado = lista.Find(x => x.ID == id);

                        TxtTitulo3.Text = seleccionado.Titulo;
                        TxtResumenSerie3.Text = seleccionado.Descripcion;
                        TxtFechaSerie3.Text = seleccionado.FechaLanzamiento.ToString("yyyy-MM-dd");

                        DWLPais3.Text = seleccionado.PaisId;
                        DWLPlataformas3.Text = seleccionado.IdPlataforma;

                        DWLTemporadas3.Text = seleccionado.Temporadas.ToString();
                        DWLCapitulos3.Text = seleccionado.EpisodiosTotales.ToString();
                        URLImagenSerie3.Text = seleccionado.UrlImagenContenido;

                        CategoriaXContenidoNegocio Aux = new CategoriaXContenidoNegocio();
                        List<CategoriaXContenido> Cont = new List<CategoriaXContenido>();

                        string ids = Request.QueryString["id"];
                        Cont = Aux.listarCategoriaSP(ids);

                        for (int i = 0; i < Cont.Count; i++)
                        {

                            if (Cont[i].IdCategoria == "1") CkbAccion2.Checked = true;

                            if (Cont[i].IdCategoria == "2") CkbComedia2.Checked = true;

                            if (Cont[i].IdCategoria == "3") CkbDrama2.Checked = true;

                            if (Cont[i].IdCategoria == "4") CkbAnimacion2.Checked = true;

                            if (Cont[i].IdCategoria == "5") CkbCiencia2.Checked = true;

                            if (Cont[i].IdCategoria == "6") CkbDocumental2.Checked = true;

                            if (Cont[i].IdCategoria == "7") CkbFantasia2.Checked = true;

                            if (Cont[i].IdCategoria == "8") CkbSuspenso2.Checked = true;

                            if (Cont[i].IdCategoria == "9") CkbTerror2.Checked = true;

                        }


                        // URLImagenSerie_TextChanged(sender, e);

                    }
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    
      
        protected void URLImagenSerie_TextChanged(object sender, EventArgs e)
        {
            string nuevaImagen = URLImagenSerie3.Text;
            URLImgSerie3.ImageUrl = nuevaImagen;

        }

        protected void Btn_Modificar_Click(object sender, EventArgs e)
        {
            SerieNegocio AuxSeNe2 = new SerieNegocio();
            Contenido Aux2 = new Contenido();
           
                if ((Session["Usuario"] != null && Session["Admin"] == null))
                {
                    Aux2.Fandom = false;
                }
                if (Session["Usuario"] == null && Session["Admin"] != null)
                {
                    Aux2.Fandom = true;
                }   
                         
                Aux2.IdModificar = num;     
                Aux2.Titulo = TxtTitulo3.Text;
                Aux2.Descripcion = TxtResumenSerie3.Text;       

                Aux2.IdPlataforma = short.Parse(DWLPlataformas3.SelectedValue);
                Aux2.IdOrigen = short.Parse(DWLPais3.SelectedValue);
                Aux2.TemporadasC = int.Parse(DWLTemporadas3.Text);
                Aux2.EpisodiosTotalesC = int.Parse(DWLCapitulos3.Text);
                Aux2.UrlImagenContenido = URLImagenSerie3.Text;
                Aux2.FechaLanzamiento = DateTime.Parse(TxtFechaSerie3.Text);
               
                AuxSeNe2.ModificaSerie(Aux2);

            // Contenido AuxCont = new Contenido();

            /* if (CkbAccion2.Checked)
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
             }*/

            Response.Redirect("ABM_SERIES_2.aspx");
        }
    }
}