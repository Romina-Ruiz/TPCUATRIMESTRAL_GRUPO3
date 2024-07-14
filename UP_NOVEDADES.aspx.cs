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
    public partial class UP_NOVEDADES : System.Web.UI.Page
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

        protected void BtnAceptar_Click(object sender, EventArgs e)
        {
            NovedadesNegocio negocio= new NovedadesNegocio();
            
            Novedades aux= new Novedades();
            
            aux.TituloPortada=TxtTitulo.Text;
            aux.TituloCuerpo=TxtTitSec.Text;
            aux.Texto=TxtContenido.Text;
            aux.ImgPortada= TxtLinkPort.Text;
            aux.ImgCuerpo=TxtLinkCont.Text;
         

            negocio.Cargar(aux);


            Response.Redirect("ABM_NOVEDADES.aspx");


        }

        protected void TxtLinkPort_TextChanged(object sender, EventArgs e)
        {
            string nuevaImagen = TxtLinkPort.Text;
            ImgPortada.ImageUrl = nuevaImagen;

        }

        protected void TxtLinkCont_TextChanged(object sender, EventArgs e)
        {

            string nuevaImagen = TxtLinkCont.Text;
            ImgContenido.ImageUrl = nuevaImagen;

        }
    }
}