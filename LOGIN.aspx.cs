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

        protected void BntLogin_Click(object sender, EventArgs e)
        {
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
                    Response.Redirect("REGISTROS.aspx");
                }
                else if (negocioUsuario.loguear(usuario) == 2)
                {
                    //usuario comun
                    Session.Add("Usuario", usuario);
                    Response.Redirect("HOME.ASPX");
                }
                else 
                {
                    Session.Add("error","user o pass incorrectos");
                    Response.Redirect("ERROR.aspx");
                }                                   

            }
            catch (Exception ex)
            {

                Session.Add("error",ex.ToString());
            }
        }
    }
}