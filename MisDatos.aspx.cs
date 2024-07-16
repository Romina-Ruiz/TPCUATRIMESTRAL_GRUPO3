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
        public char genero { get; set; }
       
        public string NombreUsuario { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            PaisNegocio AuxPais = new PaisNegocio();
            List<Pais> listaPais = AuxPais.listarPaisOrden();

            DwlPais.DataSource = listaPais;
            DwlPais.DataTextField = "NombrePais";
            DwlPais.DataValueField = "Id";
            DwlPais.DataBind();

            }


            CiudadesNegocio AuxCity = new CiudadesNegocio();
            List<Ciudades> listaCity = AuxCity.listarConSP();

            DwlCiudad.DataSource = listaCity;
            DwlCiudad.DataTextField = "Nombre";
            DwlCiudad.DataValueField = "Id";
            DwlCiudad.DataBind();



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
                DwlGenero.Text = genero.ToString();
                TxtEmail.Text = usuario.Email;
                TxtDomicilio.Text = usuario.Domicilio;
                DwlCiudad.SelectedValue = usuario.IdCiudad.ToString();
                txtNombreUsuario.Text = usuario.NombreUsuario;
                TxtContrasena.Text = usuario.Contrasena;

                negocio.ModificarUser(usuario);



            }



        }

        protected void BtnVolver_Click(object sender, EventArgs e)
        {

            Response.Redirect("MICUENTA.aspx");
        }

        protected void DwlGenero_SelectedIndexChanged(object sender, EventArgs e)
        {
            

                if (DwlGenero.SelectedItem.ToString() == "F")
                {

                genero = 'F';
                }
                else if (DwlGenero.SelectedItem.ToString() == "M"){

                genero = 'M';

                }
                else
                {
                genero = '-';

                }                
                





        }

        protected void DwlPais_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idPais = int.Parse(DwlPais.SelectedValue);
            CargarCiudades(idPais);
        }
        private void CargarCiudades(int idPais)
        {
            if (idPais > 0)
            {
                
                CiudadesNegocio negocio = new CiudadesNegocio();
                List<Ciudades> listaCiudades = negocio.ListarCiudadesPorPais(idPais);

                DwlCiudad.DataSource = listaCiudades;
                DwlCiudad.DataTextField = "NombreCiudad";
                DwlCiudad.DataValueField = "IdCiudad";
                DwlCiudad.DataBind();
            }
            else
            {
                DwlCiudad.Items.Clear();
            }

           
        }
    }
}