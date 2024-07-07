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
                    List<Pelicula> lista = negocio.listarABMPelis();

                    Session["lista"] = lista;


                }

                PaisNegocio AuxPais = new PaisNegocio();
                List<Pais> listaPais = AuxPais.listarPaisOrden();


                Ddlpais.DataSource = listaPais;
                Ddlpais.DataTextField = "NombrePais";
                Ddlpais.DataValueField = "Id";
                Ddlpais.DataBind();






            }
            catch (Exception ex)
            {

                throw ex;
            }






        }



        protected void gvPelis_SelectedIndexChanged1(object sender, EventArgs e)
        {
            int id = int.Parse(gvPelis.SelectedDataKey.Value.ToString());

            if (id != 0)
            {

                List<Pelicula> temporal = (List<Pelicula>)Session["lista"];
                Pelicula detalle = temporal.Find(x => x.ID == id);



                ABMPelicula(detalle);




            }


        }

        protected void ABMPelicula(Pelicula detalle)
        {
            if (detalle != null)
            {
                TxtTitulo.Text = detalle.Titulo;
                // Ddlpais.SelectedValue = detalle.Pais.Id.ToString();
                TxtLanzamiento.Text = detalle.FechaLanzamiento.ToString();
                TxtDescripcion.Text = detalle.Descripcion;
                TxtDuracion.Text = detalle.Duracion.ToString();
                TxtPlataforma.Text = detalle.Plataforma;
                //TxtCategoria.Text = detalle.Categoria;
                TxtImagen.Text = detalle.UrlImagenContenido;


                string nuevaimagen = TxtImagen.Text;
                URLImg.ImageUrl = nuevaimagen;

            }

        }

        protected void TxtImagen_TextChanged(object sender, EventArgs e)
        {
            string nuevaimagen = TxtImagen.Text;
            URLImg.ImageUrl = nuevaimagen;
        }

        protected void Btn_Eliminar_Click(object sender, EventArgs e)
        {




        }
    }

}