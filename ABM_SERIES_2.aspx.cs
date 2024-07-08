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
        public bool FiltroAvanzadoSerie { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {/*
            FiltroAvanzadoSerie = CkbAvanzado.Checked;
            
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

        protected void gvSeries_SelectedIndexChanged(object sender, EventArgs e)
        {

            int id = int.Parse(gvSeries.SelectedDataKey.Value.ToString());

            if (id != 0)
            {

                List<Serie> temporal = (List<Serie>)Session["listaSeries"];
                Serie detalle = temporal.Find(x => x.ID == id);

                ABMSerie(detalle);


            }*/


        }

        protected void ABMSerie(Serie detalle)
        {
            if (detalle != null)
            {
                TxtTitulo.Text = detalle.Titulo;
                // Ddlpais.SelectedValue = detalle.Pais.Id.ToString();
                TxtLanzamiento.Text = detalle.FechaLanzamiento.ToString();
                TxtDescripcion.Text = detalle.Descripcion;
                //TxtDuracion.Text = detalle.Duracion.ToString();
                //TxtPlataforma.Text = detalle.IdPlataforma;
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
            int id = int.Parse(gvSeries.SelectedDataKey.Value.ToString());

            List<Serie> temporal = (List<Serie>)Session["listaSeries"];
            Serie serie = temporal.Find(x => x.ID == id);

            SerieNegocio negocio = new SerieNegocio();

            //negocio.ModificarEstado(serie);


            TxtTitulo.Text = " ";
            TxtLanzamiento.Text = " ";
            TxtDescripcion.Text = " ";
            //TxtDuracion.Text = " ";
            TxtPlataforma.Text = "";
            //TxtCategoria.Text = detalle.Categoria;
            TxtImagen.Text = "  ";



        }

        protected void Btn_Modificar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(gvSeries.SelectedDataKey.Value.ToString());

            List<Serie> temporal = (List<Serie>)Session["listaSeries"];
            Serie serie = temporal.Find(x => x.ID == id);

            SerieNegocio negocio = new SerieNegocio();

            //negocio.modificarSP(peli);


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

            int id = int.Parse(gvSeries.SelectedDataKey.Value.ToString());

            List<Serie> temporal = (List<Serie>)Session["listaSeries"];
            Serie serie = temporal.Find(x => x.ID == id);

            SerieNegocio negocio = new SerieNegocio();

            //negocio.ActivarPeli(peli);


            TxtTitulo.Text = " ";
            TxtLanzamiento.Text = " ";
            TxtDescripcion.Text = " ";
            //TxtDuracion.Text = " ";
            TxtPlataforma.Text = "";
            //TxtCategoria.Text = detalle.Categoria;
            TxtImagen.Text = "  ";

        }

        protected void CkbAvanzado_CheckedChanged(object sender, EventArgs e)
        {
            FiltroAvanzadoSerie = CkbAvanzado.Checked;
            Txtfiltro.Enabled = !FiltroAvanzadoSerie;

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

            List<Serie> lista = (List<Serie>)Session["listaPelis"];

            List<Serie> listafiltrada = lista.FindAll(x => x.Titulo.ToUpper().Contains(Txtfiltro.Text.ToUpper()));

            gvSeries.DataSource = listafiltrada;
            gvSeries.DataBind();


        }








    }
}