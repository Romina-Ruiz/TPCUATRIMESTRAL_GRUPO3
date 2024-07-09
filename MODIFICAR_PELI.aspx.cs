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
    public partial class MODIFICAR_PELI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {

                PaisNegocio AuxPais = new PaisNegocio();
                List<Pais> listaPais = AuxPais.listarPaisOrden();


                DWLPais.DataSource = listaPais;
                DWLPais.DataTextField = "NombrePais";
                DWLPais.DataValueField = "Id";
                DWLPais.DataBind();

                PlataformaNegocio NegPlata = new PlataformaNegocio();
                List<Plataforma> lisPlata = NegPlata.PlataformaOrden();

                DWLplataformas.DataSource = lisPlata;
                DWLplataformas.DataTextField = "Nombre";
                DWLplataformas.DataValueField = "ID";
                DWLplataformas.DataBind();




            }
            catch (Exception)
            {

                throw;
            }



            

        }
    }
}