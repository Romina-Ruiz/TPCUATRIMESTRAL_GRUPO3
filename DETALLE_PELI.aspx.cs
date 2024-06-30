using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TPCuatrimestral_Grupo3.Negocio;

namespace TPCuatrimestral_Grupo3
{
    public partial class DETALLE_PELI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                if (!IsPostBack)
                {
                    DetallePeliNegocio negocio = new DetallePeliNegocio();
                    repRepetidor.DataSource = negocio.listarConSP();
                    repRepetidor.DataBind();

                }
            
        }
    }
}