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
                datos.setearParametro2("@Apellidos", usuario.Apellido);
                datos.setearParametro2("@Nombres", usuario.Nombres);
                //datos.setearParametro2("@Nacimiento", usuario.Nacimiento);
                datos.setearParametro2("@Genero", usuario.Genero);
                datos.setearParametro2("@Email", usuario.Email);
                datos.setearParametro2("@Domicilio", usuario.Domicilio);
                //datos.setearParametro2("@Ciudad", usuario.Ciudad);
                datos.setearParametro2("@NombreUsuario", usuario.NombreUsuario);
                datos.setearParametro2("@Contrasena", usuario.Contrasena);


                datos.setearConsulta("INSERT INTO  Usuarios(apellidos, Nombres, " +
                               "Nacimiento, Genero, Email, Domicilio,IDCiudad," +
                               " NombreUsuario,Contrasena,EsAdministrador, EsVip) " +
                               "VALUES(@Apellidos,@Nombres," +
                               "'2000-05-05',@Genero,@Email,@Domicilio,2," +
                               "@NombreUsuario,@Contrasena,0,0)");             
                                     
                               
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

        public List<Usuario> listarABM_User()
        {
            List<Usuario> lista = new List<Usuario>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                
                datos.setearProcedimiento("ABM_USER");
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    Usuario aux = new Usuario();

                    aux.Apellido = (string)datos.Lector["Apellidos"];
                    aux.Nombres = (string)datos.Lector["Nombres"];
                    aux.Nacimiento = (DateTime)datos.Lector["Nacimiento"];
                    aux.Genero = (char)datos.Lector["Genero"];
                    aux.Email = (string)datos.Lector["Email"];
                    aux.NombreUsuario = (string)datos.Lector["NombreUsuario"];
                    aux.Domicilio = (string)datos.Lector["Domicilio"];
                   // aux.Ciudad = (string)datos.Lector["c.Nombre"];
                   // aux.Pais = (string)datos.Lector["p.Nombre"];
                    aux.EsAdministrador = (bool)datos.Lector["EsAdministrador"];
                    aux.EsVip = (bool)datos.Lector["EsVip"];
                    aux.Estado = (bool)datos.Lector["Estadp"];


                    lista.Add(aux);
                }

                return lista;
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