using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TPCuatrimestral_Grupo3.Modelo;

namespace TPCuatrimestral_Grupo3.Negocio
{
    public class DetallePeliNegocio
    {
        public List<DetallePelicula> listarConSP()
        {
            List<DetallePelicula> lista = new List<DetallePelicula>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                
                datos.setearProcedimiento("DetallesPelicula");
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    DetallePelicula aux = new DetallePelicula();
                    aux.UrlImagen = (string)datos.Lector["ImagenUrl"];
                    aux.ID = (long)datos.Lector["IdPelicula"];
                    aux.Titulo = (string)datos.Lector["Titulo"];
                    aux.Plataforma = (string)datos.Lector["Plataforma"];
                    aux.PaisOrigen = (string)datos.Lector["Pais"];
                    aux.FechaLanzamiento = (DateTime)datos.Lector["FechaLanzamiento"];
                    aux.Duracion = (int)datos.Lector["Duracion"];
                    aux.Categoria = (string)datos.Lector["Categoria"];
                    aux.Descripcion = (string)datos.Lector["Descripcion"];
                    aux.PuntajePromedio = (int)datos.Lector["PromPuntaje"];

                    


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