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
    public partial class REGISTROS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PaisNegocio AuxPais = new PaisNegocio();
            CiudadesNegocio AuxCiudad = new CiudadesNegocio();
            try
            {
                if (!IsPostBack)
                {


                    List<Ciudades> listCiudades = AuxCiudad.listarConSP();
                    Session["listCiudades"] = listCiudades;


                    List<Pais> listaPais = AuxPais.listarPais();


                    DLPais.DataSource = listaPais;
                    DLPais.DataTextField = "NombrePais";
                    DLPais.DataValueField = "Id";
                    DLPais.DataBind();



                }

            }
            catch (Exception ex)
            {

                Session.Add("error", ex);
            }

        }

        protected void DLPais_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(DLPais.SelectedItem.Value);
            DLCiudad.DataSource = ((List<Ciudades>)Session["listCiudades"]).FindAll(x => x.IDPais == id);
            DLCiudad.DataTextField = "Nombre";
            DLCiudad.DataBind();


        }





        protected void BtnAgregar_Click(object sender, EventArgs e)
        {

            try
            {
                NegocioUsuario usuarioNegocio = new NegocioUsuario();
                Usuario usuarioAux = new Usuario();


                usuarioAux.NombreUsuario = TxtNombre.Text;
                usuarioAux.Apellido = TxtApellido.Text;
                usuarioAux.Nacimiento = DateTime.Parse(TxtNacimiento.Text);
                usuarioAux.Genero = char.Parse(DLGenrero.SelectedValue);
                usuarioAux.Email = TxtEmail.Text;
                usuarioAux.Domicilio = TxtDireccion.Text;
                usuarioAux.Ciudad = DLCiudad.DataTextField;
                //usuarioAux.Pais = DLPais.DataTextField;
                usuarioAux.Pais = DLPais.DataTextField;
                usuarioAux.NombreUsuario = TextUser.Text;
                usuarioAux.Contrasena = TxtContrasena.Text;


                usuarioNegocio.CargarUsuario(usuarioAux);
                Response.Redirect("HOME.aspx");
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.ToString());
                Response.Redirect("HOME.aspx");
            }

        }

        protected void volver_Click(object sender, EventArgs e)
        {
            Response.Redirect("HOME.aspx");
        }
    }

}