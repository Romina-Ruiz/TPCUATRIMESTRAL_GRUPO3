using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPCuatrimestral_Grupo3
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BotonRegistro_Click(object sender, EventArgs e)
        {
            Response.Redirect("REGISTROS.aspx");
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("LOGIN.aspx");
        }

        protected void BtnCerrarSesion_Click(object sender, EventArgs e)
        {
            Session.Remove("Usuario");
            Session.Remove("Admin");
            Response.Redirect("HOME.aspx");
        }
    }
}