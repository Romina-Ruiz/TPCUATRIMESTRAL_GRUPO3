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

        
    }
}