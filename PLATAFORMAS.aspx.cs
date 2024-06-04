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
    public partial class PLATAFORMAS : System.Web.UI.Page
    {
        public List<Contenido> ListaContenido { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            ContenidoNegocio negocio = new ContenidoNegocio();
            ListaContenido = negocio.listar();
            if (!IsPostBack)
            {
                repRepetidor.DataSource = ListaContenido;
                repRepetidor.DataBind();
            }

        }
    }
}