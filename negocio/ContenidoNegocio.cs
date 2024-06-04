using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TPCuatrimestral_Grupo3.Modelo;

namespace TPCuatrimestral_Grupo3.Negocio
{
    public class ContenidoNegocio
    {
        public List<MostrarContenido> listar()
        {
            List<MostrarContenido> lista = new List<MostrarContenido>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("SELECT C.Titulo, C.FechaLanzamiento, C.Descripcion, C.EstrellasPromedio, p.Nombre Pais, IM.UrlImagen ,PL.Nombre NombrePlataforma ,PL.LogoUrl LogoPlataforma, TP.Descripcion TipoContenido ,CA.Nombre NombreCategoria FROM Contenidos C, Categoria CA ,Paises P ,Imagenes_x_Contenido IM,Plataformas PL, TiposContenidos TP WHERE C.IdCategoria = CA.Id AND P.Id=C.IdOrigen AND IM.IdContenido = C.Id AND PL.Id = C.IdPlataforma AND TP.Id = C.IdTipoContenido");
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    MostrarContenido aux = new MostrarContenido();

                    aux.Titulo = (string)datos.Lector["Titulo"];
                    aux.FechaLanzamiento = (DateTime)datos.Lector["FechaLanzamiento"];
                    aux.Descripcion = (string)datos.Lector["Descripcion"];
                    aux.EstrellasPromedio = (decimal)datos.Lector["EstrellasPromedio"];
                    aux.PaisOrigen = (string)datos.Lector["Pais"];
                    aux.UrlImagenContenido = (string)datos.Lector["UrlImagen"];
                    aux.PlataformaNombre = (string)datos.Lector["NombrePlataforma"];
                    aux.UrlLogoPlataforma = (string)datos.Lector["LogoPlataforma"];
                    aux.NombreCategoria = (string)datos.Lector["NombreCategoria"];
                    aux.TipoContenido = (string)datos.Lector["TipoContenido"];

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