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
                datos.setearParametro2("@Nacimiento", usuario.Nacimiento);
                datos.setearParametro2("@Genero", usuario.Genero);
                datos.setearParametro2("@Email", usuario.Email);
                datos.setearParametro2("@Domicilio", usuario.Domicilio);
                datos.setearParametro2("@Ciudad", usuario.Ciudad);
                datos.setearParametro2("@NombreUsuario", usuario.NombreUsuario);
                datos.setearParametro2("@Contrasena", usuario.Contrasena);              

                datos.setearConsulta("SP_AGREGAR_USER @Apellidos,@Nombres," +
                                "@Nacimiento,@Genero,@Email,@Domicilio" +
                                ",@Ciudad,@NombreUsuario,@Contrasena");
                    
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
                    usuario.Id = (long)datos.Lector["Id"];

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


        //esto es nuevo
        public string loguearEmail(Usuario usuario)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearParametro("@NombreUsuario", usuario.NombreUsuario);
                datos.setearParametro("@Contrasena", usuario.Contrasena);

                datos.setearConsulta("select Id, EsAdministrador,Email from Usuarios where NombreUsuario = @NombreUsuario and Contrasena = @Contrasena");

                datos.ejecutarLectura();

                if (datos.Lector.Read())
                {
                    Usuario Aux = new Usuario();

                    Aux.Id = (long)datos.Lector["Id"];
                    Aux.Email = (string)datos.Lector["Email"];
                    Aux.EsAdministrador = (bool)(datos.Lector["EsAdministrador"]) == true ? true : false;

                    return Aux.Email;
                }
                else
                {
                    return " ";
                }
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


        public List<Usuario> listarConSP()
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

                    aux.Id = (long)datos.Lector["Id"];
                    aux.Apellido = (string)datos.Lector["Apellido"];
                    aux.Nombres = (string)datos.Lector["Nombre"];
                    aux.Nacimiento = (DateTime)datos.Lector["FechaNacimiento"];
                    aux.Genero = Convert.ToChar(datos.Lector["Genero"]);
                    aux.Email = (string)datos.Lector["Email"];
                    aux.NombreUsuario = (string)datos.Lector["NombreUsuario"];
                    aux.Domicilio = (string)datos.Lector["Domicilio"];
                    aux.Ciudad = (string)datos.Lector["Ciudad"];
                    aux.Pais = (string)datos.Lector["Pais"];
                    aux.Contrasena = (string)datos.Lector["Contrasena"];
                    aux.EsAdministrador = (bool)datos.Lector["EsAdministrador"];
                    aux.EsVip = (bool)datos.Lector["EsVip"];
                    aux.Estado = (bool)datos.Lector["Estado"];


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


        public void ActivarUser(Usuario aux)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearProcedimiento("SP_ACTIVAR_USER");
                datos.setearParametro2("@ID", aux.Id);


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

        public void EliminarUser(Usuario aux)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearProcedimiento("SP_BAJA_USER");
                datos.setearParametro2("@ID", aux.Id);


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


        public List<Usuario> Filtrar(string estado)
        {
            List<Usuario> lista = new List<Usuario>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                string consulta = "SELECT p.Id, p.Nombre, p.UrlSitioWeb, p.LogoUrl From Plataformas as p ";


                switch (estado)
                {
                    case "0":
                        consulta = "SELECT U.Id Id, U.Apellidos Apellido, U.Nombres Nombre, U.Nacimiento FechaNacimiento, U.Genero Genero, U.Email Email, U.NombreUsuario NombreUsuario, U.Domicilio Domicilio, C.Nombre Ciudad,\r\n  P.Nombre Pais, U.Contrasena Contrasena, U.EsAdministrador EsAdministrador, U.EsVip EsVip, u.Estado Estado FROM Usuarios AS U\r\n INNER JOIN Ciudades AS C ON U.IDCiudad=C.Id\r\n INNER JOIN Paises AS P ON C.IDPais=P.Id\r\n where u.Estado=0";

                        break;
                    case "1":

                        consulta = "SELECT U.Id Id, U.Apellidos Apellido, U.Nombres Nombre, U.Nacimiento FechaNacimiento, U.Genero Genero, U.Email Email, U.NombreUsuario NombreUsuario, U.Domicilio Domicilio, C.Nombre Ciudad,\r\n  P.Nombre Pais, U.Contrasena Contrasena, U.EsAdministrador EsAdministrador, U.EsVip EsVip, u.Estado Estado FROM Usuarios AS U\r\n INNER JOIN Ciudades AS C ON U.IDCiudad=C.Id\r\n INNER JOIN Paises AS P ON C.IDPais=P.Id\r\n where u.Estado=1";

                        break;

                    case "2":

                        consulta = "SELECT U.Id Id, U.Apellidos Apellido, U.Nombres Nombre, U.Nacimiento FechaNacimiento, U.Genero Genero, U.Email Email, U.NombreUsuario NombreUsuario, U.Domicilio Domicilio, C.Nombre Ciudad,\r\n  P.Nombre Pais, U.Contrasena Contrasena, U.EsAdministrador EsAdministrador, U.EsVip EsVip, u.Estado Estado FROM Usuarios AS U\r\n INNER JOIN Ciudades AS C ON U.IDCiudad=C.Id\r\n INNER JOIN Paises AS P ON C.IDPais=P.Id";
                        break;

                }



                datos.setearConsulta(consulta);
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    Usuario aux = new Usuario();

                    aux.Id = (long)datos.Lector["Id"];
                    aux.Apellido = (string)datos.Lector["Apellido"];
                    aux.Nombres = (string)datos.Lector["Nombre"];
                    aux.Nacimiento = (DateTime)datos.Lector["FechaNacimiento"];
                    aux.Genero = Convert.ToChar(datos.Lector["Genero"]);
                    aux.Email = (string)datos.Lector["Email"];
                    aux.NombreUsuario = (string)datos.Lector["NombreUsuario"];
                    aux.Domicilio = (string)datos.Lector["Domicilio"];
                    aux.Ciudad = (string)datos.Lector["Ciudad"];
                    aux.Pais = (string)datos.Lector["Pais"];
                    aux.Contrasena = (string)datos.Lector["Contrasena"];
                    aux.EsAdministrador = (bool)datos.Lector["EsAdministrador"];
                    aux.EsVip = (bool)datos.Lector["EsVip"];
                    aux.Estado = (bool)datos.Lector["Estado"];

                    lista.Add(aux);
                }

                return lista;




            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally { datos.cerrarConexion(); }


        }

        public void ModificarUser(Usuario usuario)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearProcedimiento("SP_UPDATE_USER");
                datos.setearParametro2("@ID", usuario.Id);
                datos.setearParametro2("@Apellidos", usuario.Apellido);
                datos.setearParametro2("@Nombres", usuario.Nombres);
                datos.setearParametro2("@Nacimiento", usuario.Nacimiento);
                datos.setearParametro2("@Genero", usuario.Genero);
                datos.setearParametro2("@Email", usuario.Email);
                datos.setearParametro2("@Domicilio", usuario.Domicilio);
                //datos.setearParametro2("@Ciudad", usuario.Ciudades.Id);
                datos.setearParametro2("@NombreUsuario", usuario.NombreUsuario);
                datos.setearParametro2("@Contrasena", usuario.Contrasena);

                
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









    }
}