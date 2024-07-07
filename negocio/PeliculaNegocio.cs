using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TPCuatrimestral_Grupo3.Modelo;

namespace TPCuatrimestral_Grupo3.Negocio
{
    public class PeliculaNegocio
    {
        public List<Pelicula> listarConSP()
        {
            List<Pelicula> lista = new List<Pelicula>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                // datos.setearConsulta("SELECT C.Titulo, C.FechaLanzamiento, C.Descripcion, C.EstrellasPromedio, p.Nombre Pais, IM.UrlImagen ,PL.Nombre NombrePlataforma ,PL.LogoUrl LogoPlataforma, TP.Descripcion TipoContenido ,CA.Nombre NombreCategoria FROM Contenidos C, Categoria CA ,Paises P ,Imagenes_x_Contenido IM,Plataformas PL, TiposContenidos TP WHERE C.IdCategoria = CA.Id AND P.Id=C.IdOrigen AND IM.IdContenido = C.Id AND PL.Id = C.IdPlataforma AND TP.Id = C.IdTipoContenido");
                datos.setearProcedimiento("pantallaPeliculas");
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    Pelicula aux = new Pelicula();

                    aux.ID = (long)datos.Lector["IdPelicula"];
                    aux.Titulo = (string)datos.Lector["Titulo"];
                    aux.PaisOrigen = (string)datos.Lector["PaisOrigen"];
                    aux.FechaLanzamiento = (DateTime)datos.Lector["FechaLanzamiento"];
                    aux.Descripcion = (string)datos.Lector["Descripcion"];
                    aux.UrlImagenContenido = (string)datos.Lector["ImagenUrl"];
                    aux.Duracion = (int)datos.Lector["Duracion"];
                    aux.Plataforma = (string)datos.Lector["Plataforma"];
                    aux.Categoria = (string)datos.Lector["Categoria"];


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

        public List<Pelicula> listarABMPelis()
        {
            List<Pelicula> lista = new List<Pelicula>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                
                datos.setearProcedimiento("ABMPeliS2");
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    Pelicula aux = new Pelicula();

                    aux.ID = (long)datos.Lector["ID"];
                    aux.Titulo = (string)datos.Lector["Titulo"];
                    aux.PaisOrigen = (string)datos.Lector["PaisOrigen"];
                    aux.FechaLanzamiento = DateTime.Parse(datos.Lector["FechaLanzamiento"].ToString());
                    aux.Descripcion = (string)datos.Lector["Descripcion"];
                    aux.UrlImagenContenido = (string)datos.Lector["ImagenUrl"];
                    aux.Duracion = (int)datos.Lector["Duracion"];
                    aux.Plataforma = (string)datos.Lector["Plataforma"];
                    aux.Categoria = (string)datos.Lector["Categoria"];
                    aux.Fandom = (bool)datos.Lector["FANDOM"];

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

        public void modificarSP(Pelicula peli)
        {

            AccesoDatos datos= new AccesoDatos();

            try
            {
                datos.setearProcedimiento("MODIFICAR_PELI");
                datos.setearParametro2("@ID",peli.ID);
                datos.setearParametro2("@Titulo", peli.Titulo);
                datos.setearParametro2("@IdOrigen", peli.PaisOrigen);
                datos.setearParametro2("@FechaLanzamiento", peli.FechaLanzamiento);
                datos.setearParametro2("@Descripcion", peli.Descripcion);
                datos.setearParametro2("@Duracion", peli.Duracion);
                datos.setearParametro2("@Plataforma", peli.Plataforma);
                datos.setearParametro2("@Categoria", peli.Categoria);
                datos.setearParametro2("@fandom", peli.Fandom);
                datos.setearParametro2("@Estado", peli.Estado);

               /* datos.setearConsulta("MODIFICAR_PELI @ID,@Titulo,@IdOrigen," +
                                "@Categoria,@FechaLanzamiento,@Descripcion,@Duracion," +
                                "@Plataforma,@URLImagen,@fandom,@Estado");*/

                datos.ejecutarAccion();
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }

        public void ModificarEstado(Pelicula peli)
        {

            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearProcedimiento("SP_BAJA_PELI");
                datos.setearParametro2("@ID", peli.ID);
               

                datos.ejecutarAccion();
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }

        public void ActivarPeli(Pelicula peli)
        {

            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearProcedimiento("SP_ACTIVAR_PELI");
                datos.setearParametro2("@ID", peli.ID);


                datos.ejecutarAccion();
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }





    }
}