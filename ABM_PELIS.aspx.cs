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

            try
            {

                if (!IsPostBack)
                {
                    PeliculaNegocio negocio = new PeliculaNegocio();
                    gvPelis.DataSource = negocio.listarABMPelis();
                    gvPelis.DataBind();
                }

            }
            catch (Exception)
            {

                throw;
            }
            
            




        }


        protected void gvPelis_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void gvPelis_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

        }

     
    }
}