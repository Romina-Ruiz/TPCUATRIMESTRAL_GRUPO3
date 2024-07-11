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
    public partial class UP_PLATAFORMAS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            if (Session["Usuario"] == null && Session["Admin"] == null)
            {
                Session.Add("error", "Debes loguearte para ingresar.");
                Response.Redirect("ERROR.aspx", false);
            }

          

            
            


        }

       

        protected void Volver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Op_Admin.aspx");
        }

        protected void TxtImg_TextChanged(object sender, EventArgs e)
        {
            string nuevaImagen = TxtURL.Text;
            Imagen.ImageUrl= nuevaImagen;



        }

        protected void BtnAceptar_Click(object sender, EventArgs e)
        {
            PlataformaNegocio negocio = new PlataformaNegocio();
            Plataforma Aux = new Plataforma();

            Aux.Nombre = TxtNombre.Text;
            Aux.UrlSitioWeb = TxtURL.Text;
            Aux.UrlLogo = TxtImg.Text;

            negocio.Cargar(Aux);

            TxtImg_TextChanged(sender, e);  

        }
    }
}