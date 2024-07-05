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
    public partial class ABM_PELIS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PeliculaNegocio negocio = new PeliculaNegocio();
                gvPelis.DataSource = negocio.listarConSP2();
                gvPelis.DataBind();
            }
            




        }

        protected void gvPelis_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void gvPelis_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}