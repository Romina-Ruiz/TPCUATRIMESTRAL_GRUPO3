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
    public partial class ABM_USUARIOS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                NegocioUsuario Negocio = new NegocioUsuario();

                //GdvUsuarios.DataSource = Negocio.listarABM_User();
                //GdvUsuarios.DataBind(); 


            }



        }

        protected void Volver_Click(object sender, EventArgs e)
        {

            Response.Redirect("Op_Admin.aspx");

        }
    }
}