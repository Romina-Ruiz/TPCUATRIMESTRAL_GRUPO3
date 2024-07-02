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
    public partial class REGISTROS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {

            try
            {
                NegocioUsuario usuarioNegocio = new NegocioUsuario();
                Usuario usuarioAux = new Usuario();


                usuarioAux.NombreUsuario = TxtNombre.Text;
                usuarioAux.Apellido = TxtApellido.Text;
                usuarioAux.Nacimiento = DateTime.Parse(TxtNacimiento.Text);
                usuarioAux.Genero = char.Parse(TxtGenero.Text);
                usuarioAux.Email = TxtEmail.Text;
                usuarioAux.Domicilio = TxtDireccion.Text;
                usuarioAux.Ciudad = TxtCiudad.Text;
                usuarioAux.Pais = TxtPais.Text;
                usuarioAux.NombreUsuario = TextUser.Text;
                usuarioAux.Contrasena = TxtContrasena.Text;


                usuarioNegocio.CargarUsuario(usuarioAux);
                Response.Redirect("HOME.aspx");
            }
            catch (Exception ex)
            {

                Session.Add("error", ex.ToString());
                Response.Redirect("HOME.aspx");
            }

        }

        protected void volver_Click(object sender, EventArgs e)
        {
            Response.Redirect("HOME.aspx");
        }
    }

}