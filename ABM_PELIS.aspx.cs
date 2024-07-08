using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TPCuatrimestral_Grupo3.Modelo;
using TPCuatrimestral_Grupo3.Negocio;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.ListView;

namespace TPCuatrimestral_Grupo3
{
    public partial class ABM_PELIS : System.Web.UI.Page
    {
        public bool FiltroAvanzado { get; set; }    
        protected void Page_Load(object sender, EventArgs e)
        {
            FiltroAvanzado=CkbAvanzado.Checked;

            try
            {

                if (Session["Usuario"] == null && Session["Admin"] == null)
                {
                    Session.Add("error", "Debes loguearte para ingresar.");
                    Response.Redirect("ERROR.aspx", false);
                }

                if (!IsPostBack)
                {
                    PeliculaNegocio negocio = new PeliculaNegocio();
                    Session.Add("listaPelis", negocio.listarABMPelis());
                    gvPelis.DataSource = Session["listaPelis"];
                    gvPelis.DataBind();
                }

                /*if (!IsPostBack)
                {
                    PeliculaNegocio negocio = new PeliculaNegocio();
                    List<Pelicula> lista = negocio.listarABMPelis();

                    Session["lista"] = lista;


                }*/

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

                List<Pelicula> temporal = (List<Pelicula>)Session["listaPelis"];
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
            int id = int.Parse(gvPelis.SelectedDataKey.Value.ToString());
           
                List<Pelicula> temporal = (List<Pelicula>)Session["listaPelis"];
                Pelicula peli = temporal.Find(x => x.ID == id);

                PeliculaNegocio negocio= new PeliculaNegocio();
                
                negocio.ModificarEstado(peli);

                      
            TxtTitulo.Text = " ";
            TxtLanzamiento.Text = " ";
            TxtDescripcion.Text = " ";
            TxtDuracion.Text = " ";
            TxtPlataforma.Text = "";
            //TxtCategoria.Text = detalle.Categoria;
            TxtImagen.Text = "  ";



        }

        protected void Btn_Modificar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(gvPelis.SelectedDataKey.Value.ToString());

            List<Pelicula> temporal = (List<Pelicula>)Session["listaPelis"];
            Pelicula peli = temporal.Find(x => x.ID == id);

            PeliculaNegocio negocio = new PeliculaNegocio();

            negocio.modificarSP(peli);


            TxtTitulo.Text = " ";
            TxtLanzamiento.Text = " ";
            TxtDescripcion.Text = " ";
            TxtDuracion.Text = " ";
            TxtPlataforma.Text = "";
            //TxtCategoria.Text = detalle.Categoria;
            TxtImagen.Text = "  ";



        }

        protected void Btn_Activar_Click(object sender, EventArgs e)
        {

            int id = int.Parse(gvPelis.SelectedDataKey.Value.ToString());

            List<Pelicula> temporal = (List<Pelicula>)Session["listaPelis"];
            Pelicula peli = temporal.Find(x => x.ID == id);

            PeliculaNegocio negocio = new PeliculaNegocio();

            negocio.ActivarPeli(peli);


            TxtTitulo.Text = " ";
            TxtLanzamiento.Text = " ";
            TxtDescripcion.Text = " ";
            TxtDuracion.Text = " ";
            TxtPlataforma.Text = "";
            //TxtCategoria.Text = detalle.Categoria;
            TxtImagen.Text = "  ";

        }

        protected void CkbAvanzado_CheckedChanged(object sender, EventArgs e)
        {
            FiltroAvanzado= CkbAvanzado.Checked;
            Txtfiltro.Enabled=!FiltroAvanzado;

        }

        protected void DlCriterio_SelectedIndexChanged(object sender, EventArgs e)
        {
           


        }

        protected void BtnBuscar_Click(object sender, EventArgs e)
        {

            try
            {
                

               


            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
                throw;
            }


        }

        protected void Txtfiltro_TextChanged(object sender, EventArgs e)
        {

            List<Pelicula> lista =  (List<Pelicula>) Session["listaPelis"];

            List<Pelicula> listafiltrada=lista.FindAll(x=> x.Titulo.ToUpper().Contains(Txtfiltro.Text.ToUpper()));  

            gvPelis.DataSource = listafiltrada;
            gvPelis.DataBind(); 


        }
    }

}