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
    public partial class ABM_NOVEDADES : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if(!IsPostBack)
                {

                    NovedadesNegocio negocio= new NovedadesNegocio();   

                                       

                    Session.Add("listaNews", negocio.listarConSP());
                    GdvNovedades.DataSource = Session["listaNews"];
                    GdvNovedades.DataBind();

                }



            }
            catch (Exception ex)
            {

                throw ex;
            }




        }

        protected void Txtfiltro_TextChanged(object sender, EventArgs e)
        {

            List<Novedades> lista = (List<Novedades>)Session["listaNews"];
            
            List<Novedades> listafiltrada = lista.FindAll(x => x.TituloPortada.ToUpper().Contains(Txtfiltro.Text.ToUpper()));

            GdvNovedades.DataSource = listafiltrada;
            GdvNovedades.DataBind();

        }

        protected void DwlEstados_SelectedIndexChanged(object sender, EventArgs e)
        {
           NovedadesNegocio negocio= new NovedadesNegocio();    
            


            if (DwlEstados.SelectedItem.ToString() == "Todos")
            {



               GdvNovedades.DataSource = negocio.Filtrar("2");
               GdvNovedades.DataBind();

            }

            else if (DwlEstados.SelectedItem.ToString() == "Activos")
            {
                GdvNovedades.DataSource = negocio.Filtrar("1");
                GdvNovedades.DataBind();


            }
            else if (DwlEstados.SelectedItem.ToString() == "Inactivos")
            {

                GdvNovedades.DataSource = negocio.Filtrar("0");
                GdvNovedades.DataBind();

            }



        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("UP_NOVEDADES.aspx");

        }

        protected void GdvNovedades_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = int.Parse(GdvNovedades.SelectedDataKey.Value.ToString());

            if (id != 0)
            {
                List<Novedades> temporal = (List<Novedades>)Session["listaNews"];
                Novedades detalle = temporal.Find(x => x.IdNews == id);


                Response.Redirect("MODIFICAR_NOVEDADES.aspx?id=" + id);

            }



        }

        protected void Volver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Op_Admin.aspx");
        }
    }
}