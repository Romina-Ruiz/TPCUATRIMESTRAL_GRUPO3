﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TPCuatrimestral_Grupo3.Modelo;
using TPCuatrimestral_Grupo3.Negocio;

namespace TPCuatrimestral_Grupo3
{
    public partial class FANDOM_SERIES : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                SerieNegocio negocio = new SerieNegocio();
                Session.Add("listacompleta", negocio.FandomSeries());
                RepSeries.DataSource = Session["listaCompleta"];
                RepSeries.DataBind();

            }

            if (!IsPostBack)
            {

                DetalleSerieNegocio negocio = new DetalleSerieNegocio();
                List<DetalleSerie> listaDetalleSeries = negocio.listarConSP();
                Session["listaSeries"] = listaDetalleSeries;


            }

        }

        protected void detalleSerie_Click(object sender, EventArgs e)
        {

            Button btn = (Button)sender;
            long idSerie = long.Parse(btn.CommandArgument);
            Session["idSerieSeleccionada"] = idSerie;

            Response.Redirect("DETALLE_SERIE.aspx");


        }
    }
}