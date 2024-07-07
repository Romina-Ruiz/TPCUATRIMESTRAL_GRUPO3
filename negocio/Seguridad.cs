using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using static System.Collections.Specialized.BitVector32;
using TPCuatrimestral_Grupo3.Modelo;
using Azure;


namespace TPCuatrimestral_Grupo3.Negocio
{
    public static class Seguridad
    {
        public static void Adm(Usuario Aux) 
        {
            //Session.Add("Admin", Aux);

            HttpContext context = HttpContext.Current;
            
            if (context != null)
            {
                context.Session["Admin"] = Aux;
            }
            else
            {               
                throw new ApplicationException("No se puede acceder al contexto.");
            }

        }

        public static void Usua(Usuario Aux) 
        {

            HttpContext context = HttpContext.Current;

            if (context != null)
            {
                context.Session["Usuario"] = Aux;
            }
            else
            {
                throw new ApplicationException("No se puede acceder al contexto.");
            }

        }

        public static Usuario AdminSession()
        {
            HttpContext context = HttpContext.Current;
            
            if (context != null && context.Session["Admin"] != null)
            {
                return (Usuario)context.Session["Admin"];
            }
            return null; 
        }


       

    }
}