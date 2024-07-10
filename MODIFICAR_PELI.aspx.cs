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
    public partial class MODIFICAR_PELI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {

                PaisNegocio AuxPais = new PaisNegocio();
                List<Pais> listaPais = AuxPais.listarPaisOrden();


                DWLPais.DataSource = listaPais;
                DWLPais.DataTextField = "NombrePais";
                DWLPais.DataValueField = "Id";
                DWLPais.DataBind();

                PlataformaNegocio NegPlata = new PlataformaNegocio();
                List<Plataforma> lisPlata = NegPlata.PlataformaOrden();

                DWLplataformas.DataSource = lisPlata;
                DWLplataformas.DataTextField = "Nombre";
                DWLplataformas.DataValueField = "ID";
                DWLplataformas.DataBind();

                //TRAIGO EL SELECCIONADO

                if (Request.QueryString["id"]!=null) {

                    int id= int.Parse(Request.QueryString["id"].ToString());   
                    List<Pelicula> lista = (List<Pelicula>)Session["listaPelis"];
                    Pelicula seleccionado = lista.Find(x => x.ID== id);

                    
                    TxtTitulo.Text = seleccionado.Titulo;
                    TxtResumenPeli.Text = seleccionado.Descripcion;
                    seleccionado.idpais = new Pais();            
                    DWLPais.SelectedValue=seleccionado.idpais.Id.ToString();
                    DWLplataformas.SelectedValue=seleccionado.Plataforma.ToString();    
                    txtFecha.Text=seleccionado.FechaLanzamiento.ToString();
                    //DwlHora=seleccionado.Duracion.ToString();
                    //DwlMinutos=seleccionado.Duracion.ToString();
                    /*CkbAccion=
                    CkbAnimacion=
                    CkbCiencia=
                    CkbComedia=
                    CkbDocumental=
                    CkbDrama=
                    CkbFantasia=
                    CkbSuspenso=
                    CkbTerror=*/
                    URLImagen.Text=seleccionado.UrlImagenContenido.ToString();

                    URLImagen_TextChanged(sender,e);


                }



            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void URLImagen_TextChanged(object sender, EventArgs e)
        {
            string nuevaImagen = URLImagen.Text;
            URLImg.ImageUrl = nuevaImagen;


        }

        protected void Btn_Modificar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"].ToString());

            List<Pelicula> temporal = (List<Pelicula>)Session["listaPelis"];
            Pelicula peli = temporal.Find(x => x.ID == id);

            PeliculaNegocio negocio = new PeliculaNegocio();

            negocio.modificarSP(peli);
        }

        protected void Btn_Activar_Click(object sender, EventArgs e)
        {
          

            int id = int.Parse(Request.QueryString["id"].ToString());

            List<Pelicula> temporal = (List<Pelicula>)Session["listaPelis"];
            Pelicula peli = temporal.Find(x => x.ID == id);

            PeliculaNegocio negocio = new PeliculaNegocio();

            negocio.ActivarPeli(peli);




        }

        protected void Btn_Eliminar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"].ToString());

            List<Pelicula> temporal = (List<Pelicula>)Session["listaPelis"];
            Pelicula peli = temporal.Find(x => x.ID == id);

            PeliculaNegocio negocio = new PeliculaNegocio();

            negocio.ModificarEstado(peli);


        }
    }
}