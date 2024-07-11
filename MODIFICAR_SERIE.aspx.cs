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
    }
}