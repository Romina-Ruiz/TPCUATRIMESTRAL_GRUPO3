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
    public partial class MODIFICAR_NOVEDADES : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {

                    if (Request.QueryString["id"] != null)
                    {
                        int id = int.Parse(Request.QueryString["id"].ToString());

                        List<Novedades> lista = (List<Novedades>)Session["listaNews"];
                        Novedades seleccionado = lista.Find(x => x.IdNews == id);

                        TxtTitulo.Text = seleccionado.TituloPortada;
                        TxtTitSec.Text = seleccionado.TituloCuerpo;
                        TxtContenido.Text = seleccionado.Texto;
                        TxtLinkPort.Text = seleccionado.ImgPortada;
                        TxtLinkCont.Text = seleccionado.ImgCuerpo;

                        TxtLinkCont_TextChanged(sender,e);
                        TxtLinkPort_TextChanged(sender, e); 



                    }
                }
            }
            catch (Exception)
            {

                throw;
            }



        }

        protected void Volver_Click(object sender, EventArgs e)
        {

            Response.Redirect("ABM_NOVEDADES.aspx");

        }

        protected void TxtLinkCont_TextChanged(object sender, EventArgs e)
        {

            string nuevaImagen = TxtLinkCont.Text;
            ImgContenido.ImageUrl = nuevaImagen;

        }

        protected void TxtLinkPort_TextChanged(object sender, EventArgs e)
        {

            string nuevaImagen = TxtLinkPort.Text;
            ImgPortada.ImageUrl = nuevaImagen;

        }

        protected void BtnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                NovedadesNegocio negocio= new NovedadesNegocio();
                Novedades seleccionado= new Novedades();

                seleccionado.IdNews=short.Parse(Request.QueryString["id"]);
                seleccionado.TituloPortada= TxtTitulo.Text; 
                seleccionado.TituloCuerpo= TxtTitSec.Text;  
                seleccionado.ImgPortada=TxtLinkPort.Text;
                seleccionado.ImgCuerpo = TxtLinkCont.Text;
                seleccionado.Texto = TxtContenido.Text;

                negocio.modificarSP(seleccionado);

                Response.Redirect("ABM_NOVEDADES.aspx");


            }
            catch (Exception ex)
            {

                throw ex;
            }



        }

        protected void BtnActivar_Click(object sender, EventArgs e)
        {

            int id = int.Parse(Request.QueryString["id"].ToString());

            List<Novedades> lista = (List<Novedades>)Session["listaNews"];
            Novedades seleccionado = lista.Find(x => x.IdNews == id);

            NovedadesNegocio negocio = new NovedadesNegocio();

            negocio.ActivarNews(seleccionado);
            Response.Redirect("ABM_NOVEDADES.aspx");



        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"].ToString());

            List<Novedades> lista = (List<Novedades>)Session["listaNews"];
            Novedades seleccionado = lista.Find(x => x.IdNews == id);

            NovedadesNegocio negocio = new NovedadesNegocio();

            negocio.ModificarEstado(seleccionado);
            Response.Redirect("ABM_NOVEDADES.aspx");


        }
    }
}