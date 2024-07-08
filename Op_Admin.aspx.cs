using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPCuatrimestral_Grupo3
{
    public partial class Op_Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["Usuario"] == null && Session["Admin"] == null) || Session["Usuario"] != null)
            {
                Session.Add("error", "Debes loguearte para ingresar.");
                Response.Redirect("ERROR.aspx", false);
            }
        }

        protected void Volver_Click(object sender, EventArgs e)
        {
            Response.Redirect("MICUENTA.aspx");

        }
    }
}