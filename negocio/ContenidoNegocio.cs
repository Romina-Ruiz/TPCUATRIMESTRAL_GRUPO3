using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TPCuatrimestral_Grupo3.Modelo;

namespace TPCuatrimestral_Grupo3.Negocio
{
    public class ContenidoNegocio
    {
        public List<Contenido> listar()
        {
            List<Contenido> lista = new List<Contenido>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("select Id, Titulo, IdCategoria, IdOrigen, IdPlataforma, IdTipoContenido, FechaLanzamiento, Descripcion, EstrellasPromedio from Contenidos");
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    Contenido aux = new Contenido();
                    aux.Id = (int)datos.Lector["Id"];
                    aux.Titulo = (string)datos.Lector["Titulo"];
                    aux.IdCategoria = Convert.ToInt32(datos.Lector["IdCategoria"]);
                    aux.IdOrigen = Convert.ToInt32(datos.Lector["IdOrigen"]);
                    aux.IdPlataforma = Convert.ToInt32(datos.Lector["IdPlataforma"]);
                    aux.IdTipoContenido = Convert.ToInt32(datos.Lector["IdTipoContenido"]);
                    aux.FechaLanzamiento = (DateTime)datos.Lector["FechaLanzamiento"];
                    aux.Descripcion = (string)datos.Lector["Descripcion"];
                    aux.EstrellasPromedio = (decimal)datos.Lector["EstrellasPromedio"];
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