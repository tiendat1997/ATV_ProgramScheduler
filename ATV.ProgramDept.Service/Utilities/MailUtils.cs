using NPOI.SS.UserModel;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.Utilities
{
    public class MailUtils
    {
        public static Task SendEmailAsync(string Destination, string Subject, string Body, Attachment attachment, string FileName
            , string Host = "smtp.gmail.com", string Username = "trungtin719.tt2@gmail.com",
            string Password = "iyjahraggdectktg", int? Port = 587)
        {
            SmtpClient client = new SmtpClient();
            client.EnableSsl = true;
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
            if (attachment != null)
            {
                //System.IO.MemoryStream ms = new System.IO.MemoryStream();
                //attachment.Write(ms);
                //System.IO.StreamWriter writer = new System.IO.StreamWriter(ms);
                //writer.Write(attachment);
                //ms.Position = 0;

                //System.Net.Mime.ContentType ct = new System.Net.Mime.ContentType("application/vnd.ms-excel");
                //System.Net.Mail.Attachment attach = new System.Net.Mail.Attachment(ms, ct);
                //attach.ContentDisposition.FileName = FileName;
                mail.Attachments.Add(attachment);
                //mail.Attachments.Add(new Attachment("C:\\Sample.xls"));


                //writer.Dispose();

            }
            //mail.Attachments.Add();z
            var result = client.SendMailAsync(mail);
            return result;
        }
    }
}
