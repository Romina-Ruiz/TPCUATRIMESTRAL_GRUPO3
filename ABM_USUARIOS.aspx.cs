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
    public partial class ABM_USUARIOS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if ((Session["Usuario"] == null && Session["Admin"] == null) || Session["Usuario"] != null)
            {
                Session.Add("error", "Debes loguearte para ingresar.");
                Response.Redirect("ERROR.aspx", false);
            }

            if (!IsPostBack)
            {
                NegocioUsuario Negocio = new NegocioUsuario();
                Session.Add("listaUser", Negocio.listarConSP());
                GdvUsuarios.DataSource = Session["listaUser"];
                GdvUsuarios.DataBind(); 


            }



        }

        protected void Volver_Click(object sender, EventArgs e)
        {

            Response.Redirect("Op_Admin.aspx");

        }

        protected void GdvUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(GdvUsuarios.SelectedDataKey.Value.ToString());

            if (id != 0)
            {
                List<Usuario> temporal = (List<Usuario>)Session["listaUser"];
                Usuario detalle = temporal.Find(x => x.Id == id);


                Response.Redirect("MODIFICAR_USER.aspx?id=" + id);

            }




        }

        protected void Txtfiltro_TextChanged(object sender, EventArgs e)
        {

            List<Usuario> lista=(List<Usuario>)Session["listaUser"];



            List<Usuario> listafiltrada = lista.FindAll(x => x.Apellido.ToUpper().Contains(Txtfiltro.Text.ToUpper()));


           GdvUsuarios.DataSource = listafiltrada;
           GdvUsuarios.DataBind();


        }

        protected void DwlEstados_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            NegocioUsuario negocio= new NegocioUsuario();


            if (DwlEstados.SelectedItem.ToString() == "Todos")
            {



                GdvUsuarios.DataSource = negocio.Filtrar("2");
                GdvUsuarios.DataBind();

            }

            else if (DwlEstados.SelectedItem.ToString() == "Activos")
            {
                GdvUsuarios.DataSource = negocio.Filtrar("1");
                GdvUsuarios.DataBind();


            }
            else if (DwlEstados.SelectedItem.ToString() == "Inactivos")
            {

                GdvUsuarios.DataSource = negocio.Filtrar("0");
                GdvUsuarios.DataBind();

            }




        }
    }
}