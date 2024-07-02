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
    public partial class UP_SERIES : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PlataformaNegocio AuxPlaNe = new PlataformaNegocio();
                List<Plataforma> listaPlataformas = AuxPlaNe.listarPlataformas();


                DWLPlataformas2.DataSource = listaPlataformas;
                DWLPlataformas2.DataTextField = "Nombre";
                DWLPlataformas2.DataValueField = "ID";
                DWLPlataformas2.DataBind();

                PaisNegocio AuxPais = new PaisNegocio();
                List<Pais> listaPais = AuxPais.listarPais();

                DWLPais2.DataSource = listaPais;
                DWLPais2.DataTextField = "NombrePais";
                DWLPais2.DataValueField = "Id";
                DWLPais2.DataBind();

            }
        }

        protected void URLImagenSerie_TextChanged(object sender, EventArgs e)
        {
            string nuevaImagen = URLImagenSerie.Text;
            URLImgSerie.ImageUrl = nuevaImagen;
        }
    }
}