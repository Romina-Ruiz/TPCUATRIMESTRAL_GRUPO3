using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPCuatrimestral_Grupo3
{
    public partial class MICUENTA : System.Web.UI.Page
    {
        public string NombreUsuario { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
           if (Session["Usuario"] == null && Session["Admin"] == null)
            {
                Session.Add("error", "Debes loguearte para ingresar.");
                Response.Redirect("ERROR.aspx", false);
            }
            if (Request.QueryString["NombreUsuario"] != null)
            {
                NombreUsuario = Request.QueryString["NombreUsuario"].ToString();

            }
        }

        protected void BtnVolver_Click(object sender, EventArgs e)
        {

            Response.Redirect("HOME.aspx");

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("MisDatos.aspx?NombreUsuario=" + NombreUsuario, false);
        }
    }
}