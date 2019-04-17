using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.Utilities
{
    public class MailUtils
    {
        public static Task SendEmailAsync(string Destination, string Subject, string Body
            , string Host = "smtp.gmail.com", string Username = "trungtin719.tt2@gmail.com",
            string Password = "iyjahraggdectktg", int? Port = 587)
        {
            SmtpClient client = new SmtpClient();
            client.Port = Port.Value;
            client.Host = Host;
            client.EnableSsl = true;
            //client.Timeout = 10000;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new NetworkCredential(Username, Password);
            MailMessage mail = new MailMessage();

            //Setting From , To and CC
            mail.From = new MailAddress(Username);
            mail.To.Add(new MailAddress(Destination));
            mail.IsBodyHtml = true;
            //mail.CC.Add(new MailAddress("MyEmailID@gmail.com"));

            mail.Subject = Subject;
            mail.Body = Body;
            //mail.Attachments.Add();

            return client.SendMailAsync(mail);
        }
    }
}
