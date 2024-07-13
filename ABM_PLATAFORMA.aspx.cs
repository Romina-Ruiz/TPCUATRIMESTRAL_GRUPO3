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
    public partial class ABM_PLATAFORMA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {

                if (!IsPostBack)
                {
                    PlataformaNegocio negocio= new PlataformaNegocio(); 
                   
                    Session.Add("listaPlata", negocio.listarConSP());
                    GvPlataforma.DataSource= Session["listaPlata"];
                    GvPlataforma.DataBind();    
                   

                }


            }
            catch (Exception)
            {

                throw;
            }




        }

        protected void Txtfiltro_TextChanged(object sender, EventArgs e)
        {

            List<Plataforma> lista = (List<Plataforma>)Session["listaPlata"];

            List<Plataforma> listafiltrada = lista.FindAll(x => x.Nombre.ToUpper().Contains(Txtfiltro.Text.ToUpper()));

            GvPlataforma.DataSource = listafiltrada;
            GvPlataforma.DataBind();


        }

        protected void GvPlataforma_SelectedIndexChanged(object sender, EventArgs e)
        {
           int id= int.Parse(GvPlataforma.SelectedDataKey.Value.ToString());

            if (id != 0)
            {
                List<Plataforma> temporal=(List<Plataforma>)Session["listaPlata"];
                Plataforma detalle = temporal.Find(x => x.ID == id);

                                
                Response.Redirect("MODIFICAR_PLATA.aspx?id=" + id);

            }


        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("UP_PLATAFORMAS.aspx");

        }

        protected void Volver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Op_Admin.aspx");
        }

        protected void DwlEstados_SelectedIndexChanged(object sender, EventArgs e)
        {
            PlataformaNegocio negocio = new PlataformaNegocio();


            if (DwlEstados.SelectedItem.ToString() == "Todos")
            {
            
                           

                GvPlataforma.DataSource = negocio.Filtrar("2");
                GvPlataforma.DataBind();

            }

            else if (DwlEstados.SelectedItem.ToString() == "Activos"){
                GvPlataforma.DataSource = negocio.Filtrar("1");
                GvPlataforma.DataBind();


            }
            else if (DwlEstados.SelectedItem.ToString() == "Inactivos") {

                GvPlataforma.DataSource = negocio.Filtrar("0");
                GvPlataforma.DataBind();

            }


        }
    }
}