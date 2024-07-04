using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TPCuatrimestral_Grupo3
{
    public partial class ABM_USUARIOS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GDVUsuarios_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
                e.Row.Cells[0].Text = "ID";
                e.Row.Cells[1].Text = "Apellido";
                e.Row.Cells[2].Text = "Nombre";
                e.Row.Cells[3].Text = "Nacimiento";
                e.Row.Cells[4].Text = "Genero";
                e.Row.Cells[5].Text = "Email";
                e.Row.Cells[6].Text = "Domicilio";
                e.Row.Cells[7].Text = "Ciudad";
                e.Row.Cells[9].Text = "Pais";
                e.Row.Cells[11].Text = "Usuario";
                e.Row.Cells[12].Text = "Administrador";
                e.Row.Cells[13].Text = "Vip";
                e.Row.Cells[14].Text = "Estado";




        }

        protected void GDVUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {


        }
    }
}