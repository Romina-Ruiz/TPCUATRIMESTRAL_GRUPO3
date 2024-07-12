using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TPCuatrimestral_Grupo3.Modelo;

namespace TPCuatrimestral_Grupo3.Negocio
{
    public class PlataformaNegocio
    {
        public List<Plataforma> listarConSP()
        {
            List<Plataforma> lista = new List<Plataforma>();
            AccesoDatos datos = new AccesoDatos();
            try
            {

                datos.setearProcedimiento("listadoDePlataformas");
                datos.ejecutarLectura();
                while (datos.Lector.Read())
                {
                    Plataforma aux = new Plataforma();

                    aux.ID = (short)datos.Lector["ID"];
                    aux.Nombre = (string)datos.Lector["Nombre"];
                    aux.UrlSitioWeb = (string)datos.Lector["UrlSitioWeb"];
                    aux.UrlLogo = (string)datos.Lector["LogoUrl"];
                   


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

        public List<Plataforma> listarPlataformas()
        {
            List<Plataforma> lista = new List<Plataforma>();
            AccesoDatos datos = new AccesoDatos();
            try
            {                
                datos.setearConsulta("SELECT Id, Nombre, UrlSitioWeb, LogoUrl FROM Plataformas");
                datos.ejecutarLectura();               


                while (datos.Lector.Read())
                {
                    Plataforma aux = new Plataforma();

                    aux.ID = (short)datos.Lector["ID"];
                    aux.Nombre = (string)datos.Lector["Nombre"];
                    aux.UrlSitioWeb = (string)datos.Lector["UrlSitioWeb"];
                    aux.UrlLogo = (string)datos.Lector["LogoUrl"];

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

        public List<Plataforma> PlataformaOrden()
        {
            List<Plataforma> lista = new List<Plataforma>();
            AccesoDatos datos = new AccesoDatos();
            try
            {

                datos.setearProcedimiento("SP_PLATAFORMAS_ORDEN");
                datos.ejecutarLectura();
                
                while (datos.Lector.Read())
                {
                    Plataforma aux = new Plataforma();

                    aux.ID = (short)datos.Lector["ID"];
                    aux.Nombre = (string)datos.Lector["Nombre"];
                    aux.UrlSitioWeb = (string)datos.Lector["UrlSitioWeb"];
                    aux.UrlLogo = (string)datos.Lector["LogoUrl"];

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


        public void Cargar(Plataforma aux)
        {

            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearParametro("@Nombre", aux.Nombre);
                datos.setearParametro("@URL", aux.UrlSitioWeb);
                datos.setearParametro("@Logo", aux.UrlLogo);
                
                datos.setearConsulta("SP_AGREGAR_PLATAFORMA " +
                                              "@Nombre,@URL,@Logo");

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


        public void modificarSP(Plataforma aux)
        {

            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearProcedimiento("SP_UPDATE_PLATAFORMA");
                datos.setearParametro2("@ID", aux.ID);
                datos.setearParametro2("@Nombre", aux.Nombre);
                datos.setearParametro2("@URL", aux.UrlSitioWeb);
                datos.setearParametro2("@Logo", aux.UrlLogo);


                /*datos.setearProcedimiento("SP_UPDATE_PLATAFORMA @ID,@Nombre," +
                                "@URL,@Logo");*/


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



        public void ModificarEstado(Plataforma aux)
        {

            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearProcedimiento("SP_BAJA_PLATA");
                datos.setearParametro2("@ID", aux.ID);


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

        public void ActivarPeli(Plataforma aux)
        {

            AccesoDatos datos = new AccesoDatos();

            try
            {
                datos.setearProcedimiento("SP_ACTIVAR_PLATA");
                datos.setearParametro2("@ID", aux.ID);


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