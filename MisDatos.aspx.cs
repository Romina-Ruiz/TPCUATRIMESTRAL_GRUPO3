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
    public partial class MisDatos : System.Web.UI.Page
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


                NegocioUsuario negocio = new NegocioUsuario();


                List<Usuario> listaCompleta = negocio.listarConSP();
                Usuario usuario = listaCompleta.Find(x => x.NombreUsuario == NombreUsuario);



                TxtNombre.Text = usuario.Nombres;

                TextApellido.Text = usuario.Apellido;
                TxtFechaNacimiento.Text = usuario.Nacimiento.ToString("yyyy-MM-dd");
                TxtGenero.Text = usuario.Genero.ToString();
                TxtEmail.Text = usuario.Email;
                TxtDomicilio.Text = usuario.Domicilio;
                TxtCiudad.Text = usuario.Ciudad;
                txtNombreUsuario.Text = usuario.NombreUsuario;
                TxtContrasena.Text = usuario.Contrasena;

            }



        }

        protected void BtnVolver_Click(object sender, EventArgs e)
        {

            Response.Redirect("MICUENTA.aspx");
        }
    }
}