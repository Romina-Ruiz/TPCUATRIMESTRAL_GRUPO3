using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TPCuatrimestral_Grupo3.Modelo;

namespace TPCuatrimestral_Grupo3.Negocio
{
    public class DetalleSerieNegocio
    {

        public List<DetalleSerie> listarConSP()
        {
            List<DetalleSerie> lista = new List<DetalleSerie>();
            AccesoDatos datos = new AccesoDatos();
            try
            {

                datos.setearProcedimiento("detSerie");
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    DetalleSerie aux = new DetalleSerie();
                    aux.IdSerie = (long)datos.Lector["IdContenido"];
                    aux.Titulo = (string)datos.Lector["Titulo"];
                    aux.FechaLanzamiento = (DateTime)datos.Lector["FechaLanzamiento"];
                    aux.Sinopsis = (string)datos.Lector["Descripcion"];
                    aux.Temporadas = (int)datos.Lector["Temporadas"];
                    aux.EpisodiosTotales = (int)datos.Lector["Episodios"];
                //    aux.Plataforma = (string)datos.Lector["Plataforma"];
                    aux.Categorias = (string)datos.Lector["Categoria"];
                    aux.UrlImagen = (string)datos.Lector["UrlImagen"];
                    aux.PaisOrigen = (string)datos.Lector["Pais"];
                    //aux.PochoclosProm = (int)datos.Lector["PromPuntaje"];
                 




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