using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TPCuatrimestral_Grupo3.Modelo;

namespace TPCuatrimestral_Grupo3.Negocio
{

   
    public class NegocioUsuario
    {
       
        public void CargarUsuario(Usuario usuario)
        {
           
            AccesoDatos datos = new AccesoDatos();
            try
            {

                datos.setearParametro("@NombreUsuario",usuario.NombreUsuario);
                datos.setearParametro("@Contrasena", usuario.Contrasena);
                datos.setearParametro("@Email", usuario.Email);

                datos.setearConsulta("INSERT INTO Usuarios (NombreUsuario, Contrasena, Email, EsAdministrador, EsVip) VALUES ( @NombreUsuario, @Contrasena, @Email, 0, 0);");

                datos.ejecutarAccion();           
            
               
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }

        }


        public bool Loguear(Usuario usuario) 
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearParametro("@NombreUsuario", usuario.NombreUsuario);
                datos.setearParametro("@Contrasena", usuario.Contrasena);

                datos.setearConsulta("select Id, EsAdministrador from Usuarios where NombreUsuario = @NombreUsuario and Contrasena = @Contrasena ");

                datos.ejecutarAccion();

                while (datos.Lector.Read()) 
                {
                    usuario.ID = (int)datos.Lector["Id"];

                    usuario.EsAdministrador = (bool)(datos.Lector["EsAdministrador"]) == true ? true : false;
                                        
                }
                return false;

            }
            catch (Exception ex)
            {

                throw ex;
            }

            finally
            {
                datos.cerrarConexion();
            }

        }

    }
}