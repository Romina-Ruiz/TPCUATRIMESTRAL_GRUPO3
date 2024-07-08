using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;

namespace TPCuatrimestral_Grupo3.Negocio
{
    public class EmailService
    {
        private MailMessage email;
        private SmtpClient server;

        public EmailService()
        {
            server = new SmtpClient();
            server.Credentials = new NetworkCredential("queveoq@gmail.com", "guyqezlurbbtfmmx");
            server.EnableSsl = true;
            server.Port = 587;
            server.Host = "smtp.gmail.com";


        }

        public void armarCorreo(string emailDestino, string asunto)
        {
            email = new MailMessage();
            email.From = new MailAddress("noresponder@queveoq.com");
            email.To.Add(emailDestino);
            email.Subject = asunto;
            email.IsBodyHtml = true;
            email.Body = "<h2>Ingresaste a tu cuenta:</h2><h1>QUE VEO?</h1>";
        }

        public void enviarEmail()
        {
            try
            {
                server.Send(email);
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

    }

}