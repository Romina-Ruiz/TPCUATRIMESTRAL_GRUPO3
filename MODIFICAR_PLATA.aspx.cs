using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TPCuatrimestral_Grupo3.Modelo;
using TPCuatrimestral_Grupo3.Negocio;

namespace TPCuatrimestral_Grupo3
{
    public partial class MODIFICAR_PLATA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if(!IsPostBack) { 

                if (Request.QueryString["id"] != null)
                {
                    int id = int.Parse(Request.QueryString["id"].ToString());

                    List<Plataforma> lista = (List<Plataforma>)Session["listaPlata"];
                    Plataforma seleccionado=lista.Find(x => x.ID == id);

                    TxtNombre.Text = seleccionado.Nombre;
                    TxtURL.Text = seleccionado.UrlSitioWeb;
                    TxtImg.Text = seleccionado.UrlLogo;


                    TxtImg_TextChanged(sender, e);

                }
                }
            }
            catch (Exception)
            {

                throw;
            }


        }


        protected void TxtImg_TextChanged(object sender, EventArgs e)
        {
            string nuevaImagen = TxtImg.Text;
            Imagen.ImageUrl = nuevaImagen;



        }

        protected void Volver_Click(object sender, EventArgs e)
        {
            Response.Redirect("ABM_PLATAFORMA.aspx");
        }

        protected void BtnModificar_Click(object sender, EventArgs e)
        {
            try
            {

                Plataforma seleccionado = new Plataforma();

                PlataformaNegocio negocio = new PlataformaNegocio();

                seleccionado.ID = short.Parse(Request.QueryString["id"]);
                seleccionado.Nombre = TxtNombre.Text;
                seleccionado.UrlSitioWeb = TxtURL.Text;
                seleccionado.UrlLogo = TxtImg.Text;

                negocio.modificarSP(seleccionado);

                Response.Redirect("ABM_PLATAFORMA.aspx");


            }
            catch (Exception ex)
            {

                throw ex;
            }


        }

        protected void BtnActivar_Click(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"].ToString());

            List<Plataforma> lista = (List<Plataforma>)Session["listaPlata"];
            Plataforma seleccionado = lista.Find(x => x.ID == id);

            PlataformaNegocio negocio = new PlataformaNegocio();

            negocio.ActivarPeli(seleccionado);
            Response.Redirect("ABM_PLATAFORMA.aspx");


        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {

            int id = int.Parse(Request.QueryString["id"].ToString());


            List<Plataforma> lista = (List<Plataforma>)Session["listaPlata"];
            Plataforma seleccionado = lista.Find(x => x.ID == id);

            PlataformaNegocio negocio = new PlataformaNegocio();

            negocio.ModificarEstado(seleccionado);
            Response.Redirect("ABM_PLATAFORMA.aspx");


        }



    }
}