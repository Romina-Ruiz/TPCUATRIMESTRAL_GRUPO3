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

                int usuLogueado = negocioUsuario.loguear(usuario);


                //agrege para hacer pruebas
                if (usuLogueado == 2)
                    //usuario comun
                    Response.Redirect("HOME.ASPX");
                else if (usuLogueado == 1) 
                {
                    //administrador
                    Response.Redirect("REGISTROS.aspx");
                }
                                   

            }
            catch (Exception ex)
            {

                Session.Add("error",ex.ToString());
            }
        }
    }
}