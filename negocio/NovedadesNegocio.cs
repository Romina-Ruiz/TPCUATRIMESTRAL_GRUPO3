using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TPCuatrimestral_Grupo3.Modelo;

namespace TPCuatrimestral_Grupo3.Negocio
{
    public class NovedadesNegocio
    {
        public List<Novedades> listarConSP()
        {
            List<Novedades> lista = new List<Novedades>();
            AccesoDatos datos = new AccesoDatos();
            try
            {

                datos.setearProcedimiento("listadoDeNovedades");
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                   Novedades aux = new Novedades();

                    aux.IdNews = (long)datos.Lector["IdNews"];
                    aux.FechaSubido = (DateTime)datos.Lector["FechaSubido"];
                    aux.TituloPortada = (string)datos.Lector["TituloPortada"];
                    aux.TituloCuerpo= (string)datos.Lector["TituloCuerpo"];
                    aux.Texto= (string)datos.Lector["Texto"];
                    aux.ImgPortada= (string)datos.Lector["ImgPortada"];
                    aux.ImgCuerpo= (string)datos.Lector["ImgCuerpo"];
                   

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


        public List<Novedades> NovedadesOrden()
        {
            List<Novedades> lista = new List<Novedades>();
            AccesoDatos datos = new AccesoDatos();
            try
            {

                datos.setearProcedimiento("SP_NOVEDADES_ORDEN");
                datos.ejecutarLectura();
                
                while (datos.Lector.Read())
                {
                    Novedades aux = new Novedades();

                    aux.IdNews = (long)datos.Lector["IdNews"];
                    aux.FechaSubido = (DateTime)datos.Lector["FechaSubido"];
                    aux.TituloPortada = (string)datos.Lector["TituloPortada"];
                    aux.TituloCuerpo = (string)datos.Lector["TituloCuerpo"];
                    aux.Texto = (string)datos.Lector["Texto"];
                    aux.ImgPortada = (string)datos.Lector["ImgPortada"];
                    aux.ImgCuerpo = (string)datos.Lector["ImgCuerpo"];
                   
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


        public void Cargar(Novedades aux)
        {

            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearProcedimiento("SP_AGREGAR_NOVEDADES");
                datos.setearParametro("@TituloPortada", aux.TituloPortada);
                datos.setearParametro("@TituloCuerpo", aux.TituloCuerpo);
                datos.setearParametro("@Texto", aux.Texto);
                datos.setearParametro("@ImgPortada", aux.ImgPortada);
                datos.setearParametro("@ImgCuerpo", aux.ImgCuerpo);
               

             

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


        public void modificarSP(Novedades aux)
        {

            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearProcedimiento("SP_UPDATE_NOVEDADES");
                
                datos.setearParametro("@Fecha", aux.FechaSubido);
                datos.setearParametro("@TituloPortada", aux.TituloPortada);
                datos.setearParametro("@TituloCuerpo", aux.TituloCuerpo);
                datos.setearParametro("@Texto", aux.Texto);
                datos.setearParametro("@ImgPortada", aux.ImgPortada);
                datos.setearParametro("@ImgCuerpo", aux.ImgCuerpo);
                datos.setearParametro("@Estado", aux.Estado);

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



        public void ModificarEstado(Novedades aux)
        {

            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearProcedimiento("SP_BAJA_NOVEDADES");
                datos.setearParametro2("@ID", aux.IdNews);


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

        public void ActivarNews(Novedades aux)
        {

            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearProcedimiento("SP_ACTIVAR_NOVEDADES");
                datos.setearParametro2("@ID", aux.IdNews);


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


        public List<Novedades> Filtrar(string estado)
        {
            List<Novedades> lista = new List<Novedades>();
            AccesoDatos datos = new AccesoDatos();

            try
            {
                string consulta= "SELECT p.Id, p.Nombre, p.UrlSitioWeb, p.LogoUrl From Plataformas as p ";


                switch (estado)
                {
                    case "0":
                       consulta = "SELECT p.Id, p.Nombre, p.UrlSitioWeb, p.LogoUrl From Plataformas as p where Estado = 0";

                        break;
                    case "1":

                        consulta = "SELECT p.Id, p.Nombre, p.UrlSitioWeb, p.LogoUrl From Plataformas as p where Estado = 1";

                        break;

                    case "2":

                        consulta = "SELECT p.Id, p.Nombre, p.UrlSitioWeb, p.LogoUrl From Plataformas as p";
                      break ;

                }

                
                    
                datos.setearConsulta(consulta); 
                datos.ejecutarLectura();

                while (datos.Lector.Read())
                {
                    Novedades aux = new Novedades();

                    aux.IdNews = (long)datos.Lector["ID"];
                    aux.FechaSubido = (DateTime)datos.Lector["FechaSubido"];
                    aux.TituloPortada = (string)datos.Lector["TituloPortada"];
                    aux.TituloCuerpo = (string)datos.Lector["TituloCuerpo"];
                    aux.Texto = (string)datos.Lector["Texto"];
                    aux.ImgPortada = (string)datos.Lector["ImgPortada"];
                    aux.ImgCuerpo = (string)datos.Lector["ImgCuerpo"];
                    aux.Estado = (bool)datos.Lector["Estado"];

                    lista.Add(aux);
                }

                return lista;




            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally { datos.cerrarConexion();}


        }




    }
}