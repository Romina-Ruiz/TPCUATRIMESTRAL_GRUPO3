using System;
using System.Collections.Generic;
using System.Linq;
using System.Numerics;
using System.Web;
using TPCuatrimestral_Grupo3.Modelo;

namespace TPCuatrimestral_Grupo3.Negocio
{
    public class CategoriaXContenidoNegocio
    {

        public List<CategoriaXContenido> listarCategoriaSP(string num)
        {
            List<CategoriaXContenido> lista = new List<CategoriaXContenido>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearParametro("@Id", int.Parse(num));

                datos.setearConsulta("SELECT IdCategoria FROM Categorias_x_Contenido WHERE IdContenido = @Id");
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    CategoriaXContenido aux = new CategoriaXContenido();

                    aux.IdCategoria = datos.Lector["IdCategoria"].ToString();

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