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
    public partial class UP_PELICULAS : System.Web.UI.Page
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
                    PlataformaNegocio AuxPlaNe = new PlataformaNegocio();
                    List<Plataforma> listaPlataformas = AuxPlaNe.PlataformaOrden();
                   

                    DWLplataformas.DataSource = listaPlataformas;
                    DWLplataformas.DataTextField = "Nombre";
                    DWLplataformas.DataValueField = "ID";
                    DWLplataformas.DataBind();

                    PaisNegocio AuxPais = new PaisNegocio();
                    List<Pais> listaPais = AuxPais.listarPaisOrden();

                    DWLPais.DataSource = listaPais;
                    DWLPais.DataTextField = "NombrePais";
                    DWLPais.DataValueField = "Id";
                    DWLPais.DataBind();


                    
                }               

            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
            }

            
            
        }

        protected void BtnCargarPeli_Click(object sender, EventArgs e)
        {

            ContenidoNegocio AuxContNego = new ContenidoNegocio();
            Pelicula AuxPeli = new Pelicula();

            if ((Session["Usuario"] != null && Session["Admin"] == null))
            {
                AuxPeli.Fandom = false;
            }
            if (Session["Usuario"] == null && Session["Admin"] != null)
            {
                AuxPeli.Fandom = true;
            }

            AuxPeli.Titulo = TxtTitulo.Text;
            AuxPeli.Descripcion = TxtResumenPeli.Text;
            AuxPeli.UrlImagenContenido = URLImagen.Text;

            int hora = 0, minuto = 0;
            int num = int.Parse(DwlHora.Text);
            int num2 = int.Parse(DwlMinutos.Text);

            switch (num)
            {
                case 0:
                    hora = 0;
                    break;
                case 1:
                    hora = 60;
                    break;
                case 2:
                    hora = 120;
                    break;
                case 3:
                    hora = 180;
                    break;
                case 4:
                    hora = 240;
                    break;
            }

            switch (num2)
            {
                case 0:
                    minuto = 0;
                    break;
                case 10:
                    minuto = 10;
                    break;
                case 20:
                    minuto = 20;
                    break;
                case 30:
                    minuto = 30;
                    break;
                case 40:
                    minuto = 40;
                    break;
                case 50:
                    minuto = 50;
                    break;
                case 60:
                    minuto = 60;
                    break;
            }
            int duracion = hora + minuto;

            AuxPeli.Duracion = duracion;         

            AuxPeli.FechaLanzamiento = DateTime.Parse(txtFecha.Text);
            AuxPeli.IdPlataforma = DWLplataformas.Text;
            AuxPeli.PaisOrigen = short.Parse(DWLPais.SelectedValue);
            AuxPeli.UrlImagenContenido = URLImagen.Text;

            
            AuxContNego.cargaContenido(AuxPeli);

            Contenido AuxCont = new Contenido();

            if (CkbAccion.Checked)
            {
                AuxCont.IdCategoria = 1;
                AuxContNego.cargaChecked(AuxCont);
            }
            if (CkbComedia.Checked)
            {

                AuxCont.IdCategoria = 2;
                AuxContNego.cargaChecked(AuxCont);
            }
            if (CkbDrama.Checked)
            {
                AuxCont.IdCategoria = 3;
                AuxContNego.cargaChecked(AuxCont);
            }
            if (CkbAnimacion.Checked)
            {
                AuxCont.IdCategoria = 4;
                AuxContNego.cargaChecked(AuxCont);

            }
            if (CkbCiencia.Checked)
            {
                AuxCont.IdCategoria = 5;
                AuxContNego.cargaChecked(AuxCont);
            }
            if (CkbDocumental.Checked)
            {
                AuxCont.IdCategoria = 6;
                AuxContNego.cargaChecked(AuxCont);
            }
            if (CkbFantasia.Checked)
            {
                AuxCont.IdCategoria = 7;
                AuxContNego.cargaChecked(AuxCont);
            }
            if (CkbSuspenso.Checked)
            {
                AuxCont.IdCategoria = 8;
                AuxContNego.cargaChecked(AuxCont);
            }
            if (CkbTerror.Checked)
            {
                AuxCont.IdCategoria = 9;
                AuxContNego.cargaChecked(AuxCont);
            }
        }

        protected void URLImagen_TextChanged(object sender, EventArgs e)
        {
            string nuevaImagen = URLImagen.Text;            
            URLImg.ImageUrl = nuevaImagen;
        }
    }
}