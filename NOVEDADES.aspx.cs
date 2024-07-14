using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
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

                RepNews.DataSource = negocio.NovedadesOrden();
                RepNews.DataBind(); 



            }     




        }

        protected void BtnVer_Click(object sender, EventArgs e)
        {

        }
    }
}