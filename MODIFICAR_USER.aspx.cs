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
    public partial class MODIFICAR_USER : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                      
           try
			{
				if(!IsPostBack) {

                    if (Request.QueryString["id"] != null)
                    {
                        int id = int.Parse(Request.QueryString["id"].ToString());

                        List<Usuario> lista = (List<Usuario>)Session["listaUser"];
                        Usuario seleccionado = lista.Find(x => x.Id == id);

                        TxtNombre.Text = seleccionado.Nombres;
                        TxtApellido.Text = seleccionado.Apellido;
                        TxtNac.Text = seleccionado.Nacimiento.ToString("yyyy-MM-dd");
                        TxtGenero.Text = seleccionado.Genero.ToString();
                        TxtEmail.Text = seleccionado.Email;
                        TxtDom.Text=seleccionado.Domicilio;
                        TxtCity.Text = seleccionado.Ciudad;   
                        txtUser.Text = seleccionado.NombreUsuario;


                    }

                }


            }
			catch (Exception ex)
			{

				throw ex;
			}


        }

        protected void BtnVolver_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("ABM_USUARIOS.aspx");


        }

        protected void BtnActivar_Click(object sender, EventArgs e)
        {

            int id = int.Parse(Request.QueryString["id"].ToString());

            List<Usuario> lista = (List<Usuario>)Session["listaUser"];
            Usuario seleccionado = lista.Find(x => x.Id == id);

           NegocioUsuario negocio = new NegocioUsuario();

            negocio.ActivarUser(seleccionado);
            Response.Redirect("ABM_USUARIOS.aspx");


        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"].ToString());

            List<Usuario> lista = (List<Usuario>)Session["listaUser"];
            Usuario seleccionado = lista.Find(x => x.Id == id);

            NegocioUsuario negocio = new NegocioUsuario();

            negocio.EliminarUser(seleccionado);
            Response.Redirect("ABM_USUARIOS.aspx");


        }
    }
}