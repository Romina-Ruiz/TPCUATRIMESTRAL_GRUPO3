using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TPCuatrimestral_Grupo3.Modelo;

namespace TPCuatrimestral_Grupo3.Negocio
{
    public class CiudadesNegocio
    {
        public List<Ciudades> listarConSP()
        {
           
            
                List<Ciudades> lista = new List<Ciudades>();
                AccesoDatos datos = new AccesoDatos();
                try
                {
                    datos.setearConsulta("SELECT ID, IDPais, Nombre FROM Ciudades ORDER BY Nombre ASC");
                    datos.ejecutarLectura();


                    while (datos.Lector.Read())
                    {
                        Ciudades aux = new Ciudades();

                        aux.Id = (int)datos.Lector["Id"];
                        aux.IDPais = (short)datos.Lector["IDPais"];
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

        internal List<Ciudades> ListarCiudadesPorPais(int idPais)
        {
         
            CiudadesNegocio ciudades = new CiudadesNegocio();
            List<Ciudades> listaCiudades = ciudades.listarConSP();

            List<Ciudades> ciudadesFiltradas = listaCiudades.Where(c => c.IDPais == idPais).ToList();

            return ciudadesFiltradas;


        }
    }
}