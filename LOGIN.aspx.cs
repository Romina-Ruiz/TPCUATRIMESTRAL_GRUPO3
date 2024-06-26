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
    public partial class LOGIN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            /*
        try
        {
            Usuario usuario = new Usuario();
            NegocioUsuario negocioUsuario = new NegocioUsuario();

            usuario.NombreUsuario = TxtUsuario.Text;
            usuario.Contrasena = TxtPass.Text;

            if (negocioUsuario.loguear(usuario) == 1)
            {
                //administrador
                Session.Add("Admin", usuario);
                Response.Redirect("MICUENTA.aspx", false);
            }
            else if (negocioUsuario.loguear(usuario) == 2)
            {
                //usuario comun
                Session.Add("Usuario", usuario);
                Response.Redirect("MICUENTA.aspx", false);
            }
            else
            {
                Session.Add("error", "Usuario o contraseñas incorrectos");
                Response.Redirect("ERROR.aspx", false);
            }

        }
        catch (Exception ex)
        {

            Session.Add("error", ex.ToString());
        }*/

        }

        protected void BtnCerrar_Click1(object sender, EventArgs e)
        {     /*      
            Response.Redirect("REGISTROS.aspx");*/
        }
    }
}