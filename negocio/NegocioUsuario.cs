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

            datos.ejecutarConectar();
            try
            {
                datos.setearProcedimiento2("SP_AGREGAR_USER");

                datos.setearParametro2("@Apellidos", usuario.Apellido);
                datos.setearParametro2("@Nombres", usuario.Nombres);
                datos.setearParametro2("@Nacimiento", usuario.Nacimiento);
                datos.setearParametro2("@Genero", usuario.Genero);
                datos.setearParametro2("@Email", usuario.Email);
                datos.setearParametro2("@Domicilio", usuario.Domicilio);
                datos.setearParametro2("@Ciudad", usuario.Ciudad);
                datos.setearParametro2("@NombreUsuario", usuario.NombreUsuario);
                datos.setearParametro2("@Contrasena", usuario.Contrasena);


                datos.ejecutarQuery();

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


        public int loguear(Usuario usuario)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearParametro("@NombreUsuario", usuario.NombreUsuario);
                datos.setearParametro("@Contrasena", usuario.Contrasena);

                datos.setearConsulta("select Id, EsAdministrador from Usuarios where NombreUsuario = @NombreUsuario and Contrasena = @Contrasena");

                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    usuario.Id = (int)datos.Lector["Id"];

                    usuario.EsAdministrador = (bool)(datos.Lector["EsAdministrador"]) == true ? true : false;

                    if (usuario.Id != 0 && usuario.EsAdministrador)
                    {
                        return 1;
                    }
                    else if (usuario.Id != 0 && !usuario.EsAdministrador)
                    {
                        return 2;
                    }

                }
                return 0;

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