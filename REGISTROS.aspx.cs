using System;
using System.Collections.Generic;
using System.Globalization;
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

                    List<Pais> listaPais = AuxPais.listarPaisOrden();


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
            int id = int.Parse(DLPais.Text);
            DWLCiudad.DataSource = ((List<Ciudades>)Session["listCiudades"]).FindAll(x => x.IDPais == id);
            DWLCiudad.DataTextField = "Nombre";
            DWLCiudad.DataValueField = "Nombre";
            DWLCiudad.DataBind();


        }


        protected void BtnAgregar_Click(object sender, EventArgs e)
        {

            try
            {
                NegocioUsuario usuarioNegocio = new NegocioUsuario();
                Usuario usuarioAux = new Usuario();
                
                usuarioAux.Nacimiento = DateTime.Parse(TxtNacimiento.Text);
                usuarioAux.Nombres = TxtNombre.Text;
                usuarioAux.Apellido = TxtApellido.Text;               
                
                usuarioAux.Genero = char.Parse(DWLGenero.Text);                
                usuarioAux.Email = TxtEmail.Text;
                usuarioAux.Domicilio = TxtDireccion.Text;
                usuarioAux.Ciudad = DWLCiudad.Text;
                       
                usuarioAux.NombreUsuario = TextUser.Text;
                usuarioAux.Contrasena = TxtContrasena.Text;


                usuarioNegocio.CargarUsuario(usuarioAux);
               
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.ToString());
                Response.Redirect("HOME.aspx");
            }

        }

        protected void volver_Click(object sender, EventArgs e)
        {
           
        }
    }

}