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
    public partial class CINE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                NovedadesNegocio negocio= new NovedadesNegocio();

                   Session.Add("listaNovedades", negocio.NovedadesOrden());
                RepNews.DataSource = Session["listaNovedades"];
                RepNews.DataBind(); 



            }     




        }

        protected void BtnVer_Click(object sender, EventArgs e)
        {

            Button btn= (Button)sender;
                        
            long idNews = long.Parse(btn.CommandArgument);
            Session["idListaNews"] = idNews;

            Response.Redirect("DETALLE_NOVEDADES.aspx");


        }

        protected void TxtFiltroS_TextChanged(object sender, EventArgs e)
        {

            List<Novedades> lista = (List<Novedades>)Session["listaNovedades"];
            List<Novedades> listaFiltrada = lista.FindAll(x => x.TituloPortada.ToUpper().Contains(TxtFiltroS.Text.ToUpper()));
            RepNews.DataSource = listaFiltrada;
            RepNews.DataBind();


        }
    }
}