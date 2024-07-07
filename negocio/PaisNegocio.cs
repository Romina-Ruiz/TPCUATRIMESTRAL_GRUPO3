using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TPCuatrimestral_Grupo3.Modelo;

namespace TPCuatrimestral_Grupo3.Negocio
{
    public class PaisNegocio
    {
        public List<Pais> listarPais()
        {
            List<Pais> lista = new List<Pais>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearConsulta("SELECT Id, IdContinente, Nombre FROM Paises");
                datos.ejecutarLectura();


                while (datos.Lector.Read())
                {
                    Pais aux = new Pais();

                    aux.Id = (short)datos.Lector["Id"];
                    aux.IdContinente = (short)datos.Lector["IdContinente"];
                    aux.NombrePais = (string)datos.Lector["Nombre"];

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

        public List<Pais> listarPaisOrden()
        {
            List<Pais> lista = new List<Pais>();
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearProcedimiento("SP_PAISESORDEN");
                datos.ejecutarLectura(); 


                while (datos.Lector.Read())
                {
                    Pais aux = new Pais();

                    aux.Id = (short)datos.Lector["Id"];
                    aux.IdContinente = (short)datos.Lector["IdContinente"];
                    aux.NombrePais = (string)datos.Lector["Nombre"];

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