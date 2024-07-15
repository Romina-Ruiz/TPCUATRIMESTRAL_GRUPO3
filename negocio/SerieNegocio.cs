using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TPCuatrimestral_Grupo3.Modelo;

namespace TPCuatrimestral_Grupo3.Negocio
{
    public class SerieNegocio
    {
        public List<Serie> listarConSP()
        {
            List<Serie> lista = new List<Serie>();
            AccesoDatos datos = new AccesoDatos();
            try
            {

                datos.setearProcedimiento("listadoDeSeries");
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    Serie aux = new Serie();

                    aux.ID = (long)datos.Lector["IdSerie"];
                    aux.Titulo = (string)datos.Lector["Titulo"];
                    aux.PaisOrigen = (string)datos.Lector["PaisOrigen"];
                    aux.PaisId = datos.Lector["PaisId"].ToString();
                    aux.PlataformaNombre = (string)datos.Lector["Plataforma"];
                    aux.IdPlataforma = datos.Lector["PlataformaId"].ToString();
                    aux.FechaLanzamiento = (DateTime)datos.Lector["FechaLanzamiento"];
                    aux.Descripcion = (string)datos.Lector["Descripcion"];
                    aux.UrlImagenContenido = (string)datos.Lector["ImagenUrl"];
                    aux.EpisodiosTotales = (int)datos.Lector["EpisodiosTot"];
                    aux.Temporadas = (int)datos.Lector["Temporadas"];


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


        public long IdContenidoSerie()
        {
            AccesoDatos datos = new AccesoDatos();
            Pelicula Aux1 = new Pelicula();
            long num = 0;

            try
            {
                datos.setearConsulta("SELECT MAX(Id) AS maxID FROM Contenidos");
                datos.ejecutarLectura();

                if (datos.Lector.Read())
                {
                    Aux1.ID = (long)datos.Lector["maxID"];
                    num = Aux1.ID;
                }
                return num;
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

        public void cargaCheckedSerie(Contenido Aux)
        {
            AccesoDatos datos = new AccesoDatos();
            Contenido Aux1 = new Contenido();

            Aux1.Id = IdContenidoSerie();

            try
            {
                datos.setearParametro("@IdCategoria", Aux.IdCategoria);
                datos.setearParametro("@IdContenido", Aux1.Id);

                datos.setearConsulta("INSERT INTO Categorias_x_Contenido(IdCategoria,IdContenido)" +
                                     "VALUES(@IdCategoria,@IdContenido)");

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

        public void CargaSerie(Serie Aux)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearParametro("@Titulo1", Aux.Titulo);
                datos.setearParametro("@IdOrigen1", Aux.PaisOrigen);
                datos.setearParametro("@Descripcion1", Aux.Descripcion);
                datos.setearParametro("@FechaLanzamiento1", Aux.FechaLanzamiento);
                datos.setearParametro("@IdPlataforma1", short.Parse(Aux.IdPlataforma));
                datos.setearParametro("@Temporadas1", Aux.Temporadas);
                datos.setearParametro("@EpisodiosTotales1", Aux.EpisodiosTotales);
                datos.setearParametro("@UrlImagen1", Aux.UrlImagenContenido);


                datos.setearConsulta("SP_AGREGAR_SERIES " +
                                          "@Titulo1,@IdOrigen1,@Descripcion1," +
                                          "@FechaLanzamiento1" +
                                          ",@IdPlataforma1,@Temporadas1," +
                                          "@EpisodiosTotales1,@UrlImagen1");


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


        public void CargaSerie2(Serie Aux)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearParametro("@Titulo1", Aux.Titulo);
                datos.setearParametro("@IdOrigen1", Aux.Pais.Id);
                datos.setearParametro("@Descripcion1", Aux.Descripcion);
                datos.setearParametro("@FechaLanzamiento1", Aux.FechaLanzamiento);
                datos.setearParametro("@IdPlataforma1", Aux.Plataforma.ID);
                datos.setearParametro("@Temporadas1", Aux.Temporadas);
                datos.setearParametro("@EpisodiosTotales1", Aux.EpisodiosTotales);
                datos.setearParametro("@UrlImagen1", Aux.UrlImagenContenido);
                datos.setearParametro("@Fandom", Aux.Fandom);


                datos.setearConsulta("SP_AGREGAR_SERIES " +
                                          "@Titulo1,@IdOrigen1,@Descripcion1," +
                                          "@FechaLanzamiento1" +
                                          ",@IdPlataforma1,@Temporadas1," +
                                          "@EpisodiosTotales1,@UrlImagen1,@Fandom");

                /* datos.setearConsulta("SP_AGREGAR_SERIES 'ultima',2,'daledaledale','2024-05-05',1,5,15,'una imagen'");*/

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

        public List<Serie> FandomSeries()
        {
            List<Serie> lista = new List<Serie>();
            AccesoDatos datos = new AccesoDatos();
            try
            {

                datos.setearProcedimiento("SeriesFandom");
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    Serie aux = new Serie();


                    aux.ID = (long)datos.Lector["IdSerie"];
                    aux.Titulo = (string)datos.Lector["Titulo"];
                    aux.PaisOrigen = (string)datos.Lector["PaisOrigen"];
                    aux.IdPais = (short)datos.Lector["PaisId"];
                    aux.FechaLanzamiento = (DateTime)datos.Lector["FechaLanzamiento"];
                    aux.Descripcion = (string)datos.Lector["Descripcion"];
                    aux.UrlImagenContenido = (string)datos.Lector["ImagenUrl"];
                    aux.EpisodiosTotales = (int)datos.Lector["EpisodiosTot"];
                    aux.Temporadas = (int)datos.Lector["Temporadas"];
                    aux.PlataformaId = (short)datos.Lector["IdPlataforma"];
                    aux.PlataformaNombre = (string)datos.Lector["Plataforma"];


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


        public void ModificaSerie(Serie Aux)
        {
            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearParametro("@Titulo1", Aux.Titulo);
                datos.setearParametro("@IdOrigen1", Aux.Pais.Id);
                datos.setearParametro("@Descripcion1", Aux.Descripcion);
                datos.setearParametro("@FechaLanzamiento1", Aux.FechaLanzamiento);
                datos.setearParametro("@IdPlataforma1", Aux.Plataforma.ID);
                datos.setearParametro("@Temporadas1", Aux.Temporadas);
                datos.setearParametro("@EpisodiosTotales1", Aux.EpisodiosTotales);
                datos.setearParametro("@UrlImagen1", Aux.UrlImagenContenido);


                datos.setearConsulta("SP_Modificar_SERIES " +
                                          "@Titulo1,@IdOrigen1,@Descripcion1," +
                                          "@FechaLanzamiento1" +
                                          ",@IdPlataforma1,@Temporadas1," +
                                          "@EpisodiosTotales1,@UrlImagen1");
                                

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



