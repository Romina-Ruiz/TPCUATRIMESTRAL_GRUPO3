using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TPCuatrimestral_Grupo3.Modelo;

namespace TPCuatrimestral_Grupo3.Negocio
{
    public class PlataformaXPeliculaNegocio
    {
        public List<PlataformaXPelicula> listarConSP()
        {
            List<PlataformaXPelicula> lista = new List<PlataformaXPelicula>();
            AccesoDatos datos = new AccesoDatos();
            try
            {

                datos.setearProcedimiento("PlataformaPelicula");
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    PlataformaXPelicula aux = new PlataformaXPelicula();

                    aux.IdPlataforma = (short)datos.Lector["IdPlataforma"];
                    aux.NombrePlataforma = (string)datos.Lector["Plataforma"];
                    aux.IdPelicula = (long)datos.Lector["IdContenido"];
                    aux.TituloPelicula = (string)datos.Lector["Titulo"];



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