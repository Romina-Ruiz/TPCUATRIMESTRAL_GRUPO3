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
        protected void Page_Load(object sender, EventArgs e)
        {

			try
			{

                PaisNegocio AuxPais = new PaisNegocio();
                List<Pais> listaPais = AuxPais.listarPaisOrden();

                DWLPais2.DataSource = listaPais;
                DWLPais2.DataTextField = "NombrePais";
                DWLPais2.DataValueField = "Id";
                DWLPais2.DataBind();

                PlataformaNegocio NegPlata = new PlataformaNegocio();
                List<Plataforma> lisPlata = NegPlata.PlataformaOrden();

                DWLPlataformas2.DataSource = lisPlata;
                DWLPlataformas2.DataTextField = "Nombre";
                DWLPlataformas2.DataValueField = "ID";
                DWLPlataformas2.DataBind();

                //TRAIGO EL SELECCIONADO

                if (Request.QueryString["id"] != null)
                {
                    int id = int.Parse(Request.QueryString["id"].ToString());
                    List<Serie> lista = (List<Serie>)Session["listaSeries"];
                    Serie seleccionado = lista.Find(x => x.ID == id);

                    TxtTitulo.Text= seleccionado.Titulo;
                    TxtResumenSerie.Text = seleccionado.Descripcion;
                    TxtFechaSerie.Text= seleccionado.FechaLanzamiento.ToString("yyyy-MM-dd");
                   
                    DWLPais2.Text = seleccionado.PaisId;
                    DWLPlataformas2.Text = seleccionado.IdPlataforma;
                                                                          
                    DWLTemporadas2.Text =seleccionado.Temporadas.ToString();
                    DWLCapitulos2.Text = seleccionado.EpisodiosTotales.ToString();
                    URLImagenSerie.Text = seleccionado.UrlImagenContenido;

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
               

                    URLImagenSerie_TextChanged(sender, e);

                }
            }
            catch (Exception ex)
			{

				throw ex;
			}
        }

        protected void URLImagenSerie_TextChanged(object sender, EventArgs e)
        {
            string nuevaImagen = URLImagenSerie.Text;
            URLImgSerie.ImageUrl = nuevaImagen;

        }

        protected void Btn_Modificar_Click(object sender, EventArgs e)
        {
            SerieNegocio AuxSeNe = new SerieNegocio();
            Serie Aux = new Serie();
           
            if ((Session["Usuario"] != null && Session["Admin"] == null))
            {
                Aux.Fandom = false;
            }
            if (Session["Usuario"] == null && Session["Admin"] != null)
            {
                Aux.Fandom = true;
            }

            if (Request.QueryString["id"] != null)
            {
                string IDs = Request.QueryString["id"];

                Aux.IdModificar = IDs;
               
                Aux.Titulo = TxtTitulo.Text;
                Aux.Descripcion = TxtResumenSerie.Text;
                
                Aux.Plataforma = new Plataforma();
                Aux.Plataforma.ID = short.Parse(DWLPlataformas2.SelectedValue);
                Aux.IdPlataforma = DWLPlataformas2.Text;
                Aux.Pais = new Pais();
                Aux.Pais.Id = short.Parse(DWLPais2.SelectedValue);
                Aux.PaisOrigen = DWLPais2.Text;
                Aux.Temporadas = int.Parse(DWLTemporadas2.Text);
                Aux.EpisodiosTotales = int.Parse(DWLCapitulos2.Text);

                Aux.UrlImagenContenido = URLImagenSerie.Text;

                Aux.FechaLanzamiento = DateTime.Parse(TxtFechaSerie.Text);

                AuxSeNe.ModificaSerie(Aux);

                Contenido AuxCont = new Contenido();

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

            }

        }
    }
}