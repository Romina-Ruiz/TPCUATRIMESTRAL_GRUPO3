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
    public partial class ABM_PELIS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {

                if (!IsPostBack)
                {
                    PeliculaNegocio negocio = new PeliculaNegocio();
                    gvPelis.DataSource = negocio.listarABMPelis();
                    gvPelis.DataBind();
                }

                if (!IsPostBack)
                {
                    PeliculaNegocio negocio = new PeliculaNegocio();
                    List<Pelicula> lista=negocio.listarABMPelis();  
                 
                    Session["lista"] = lista;


                }


            }
            catch (Exception ex)
            {

                throw ex;
            }






        }



        protected void gvPelis_SelectedIndexChanged1(object sender, EventArgs e)
        {
            int id =int.Parse(gvPelis.SelectedDataKey.Value.ToString());

            if (id != 0) {
               
                        List<Pelicula> temporal = (List<Pelicula>)Session["lista"];
                        Pelicula detalle = temporal.Find(x=> x.ID == id);   
                           

                        
                        ABMPelicula(detalle);

                  


            }


        }

        private void ABMPelicula(Pelicula detalle)
        { 
        if (detalle != null)
            {
                TxtTitulo.Text = detalle.Titulo;
                TxtPais.Text = detalle.PaisOrigen;
                TxtLanzamiento.Text = detalle.FechaLanzamiento.ToString();
                TxtDescripcion.Text = detalle.Descripcion;
                TxtDuracion.Text = detalle.Duracion.ToString();
                TxtPlataforma.Text = detalle.Plataforma;
                TxtCategoria.Text = detalle.Categoria;
                TxtImagen.Text = detalle.UrlImagenContenido;
                                            


            }

        }

        protected void TxtImagen_TextChanged(object sender, EventArgs e)
        {
            string nuevaimagen= TxtImagen.Text;
            URLImg.ImageUrl = nuevaimagen;  
        }
    }
}