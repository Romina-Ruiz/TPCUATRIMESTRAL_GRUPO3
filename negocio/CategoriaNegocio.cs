using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TPCuatrimestral_Grupo3.Modelo;

namespace TPCuatrimestral_Grupo3.Negocio
{
    public class CategoriaNegocio
    {

        public List<Categoria> listarConSP()
        {
            List<Categoria> lista = new List<Categoria>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                // datos.setearConsulta("SELECT C.Titulo, C.FechaLanzamiento, C.Descripcion, C.EstrellasPromedio, p.Nombre Pais, IM.UrlImagen ,PL.Nombre NombrePlataforma ,PL.LogoUrl LogoPlataforma, TP.Descripcion TipoContenido ,CA.Nombre NombreCategoria FROM Contenidos C, Categoria CA ,Paises P ,Imagenes_x_Contenido IM,Plataformas PL, TiposContenidos TP WHERE C.IdCategoria = CA.Id AND P.Id=C.IdOrigen AND IM.IdContenido = C.Id AND PL.Id = C.IdPlataforma AND TP.Id = C.IdTipoContenido");
                datos.setearProcedimiento("listaCategorias");
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    Categoria aux = new Categoria();

                    aux.ID = (short)datos.Lector["Id"];
                    aux.Nombre = (string)datos.Lector["Nombre"];


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