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

    }
}