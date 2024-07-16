using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TPCuatrimestral_Grupo3.Modelo;

namespace TPCuatrimestral_Grupo3
{
    public partial class DETALLE_NOVEDADES : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Usuario"] == null && Session["Admin"] == null)
            {
                Session.Add("error", "Debes loguearte para ingresar.");
                Response.Redirect("ERROR.aspx", false);
            }

            if (!IsPostBack)
            {
                if (Session["listaNews"] != null && Session["idListaNews"] != null)
                {
                   
                    List<Novedades> listaDetalle = (List<Novedades>)Session["listaNews"];

                    long idNews = (long)Session["idListaNews"];
                    
                    Novedades detalle = listaDetalle.FirstOrDefault(x => x.IdNews == idNews);

                    DetalleNovedades(detalle);


                }
            }


        }

        private void DetalleNovedades(Novedades detalle)
        {

            if(detalle !=null)
            {
                Image1.ImageUrl= detalle.ImgCuerpo;
                TxtTitCuerpo.Text=detalle.TituloCuerpo;
                TxtNota.Text = detalle.Texto;
              


            }






        }

        protected void Volver_Click(object sender, EventArgs e)
        {

            Response.Redirect("NOVEDADES.aspx");

        }
    }
}