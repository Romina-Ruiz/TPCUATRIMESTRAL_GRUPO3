using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TPCuatrimestral_Grupo3.Modelo;

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
    }
}