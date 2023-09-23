using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Configuration;
using System.Web.Optimization;
using System.Web.Services.Description;
using System.Data.SqlClient;
using System.Data;

namespace EventManagement
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
              
                
            

        }

        //protected void btnSubmit_Click(object sender, EventArgs e)
        //{
        //    string textBody =      "<table border=" + 1 + " cellpadding=" + 0 + " cellspacing=" + 0 + " width = " + 400 + " ><tr bgcolor='#FF8400'>    <th>Name</th>    <th>EmailId</th>    <th>Subject</th> <th>MobileNo</th> <th>Message</th>  </tr>  <tr> <td>"+ txtName.Text.Trim() + "</td> <td>" + txtEmailId.Text.Trim() + "</td> <td>" + txtSubject.Text.Trim() + "</td><td>" + txtMobileNo.Text.Trim() + "</td><td>" + txtMessage.Text.Trim() + "</td>  </tr></table>";



        //    string to = txtEmailId.Text.Trim(); //To address    
        //    string from = "info@eventallsolutions.com"; //From address    
        //    MailMessage message = new MailMessage(from, to);
        //    string EmailId = ConfigurationManager.AppSettings["EMailID"];
        //    string Password = ConfigurationManager.AppSettings["EmailIdpass"];
        //    string mailbody = txtMessage.Text.Trim();
        //    message.Subject = txtSubject.Text.Trim();
        //    message.Body = textBody;
        //    message.BodyEncoding = Encoding.UTF8;
        //    message.IsBodyHtml = true;
        //    SmtpClient client = new SmtpClient(ConfigurationManager.AppSettings["SMTPServer"], Convert.ToInt32(ConfigurationManager.AppSettings["SMTPPort"])); //Gmail smtp    
        //    System.Net.NetworkCredential basicCredential1 = new
        //    System.Net.NetworkCredential(EmailId, Password);
        //    client.EnableSsl = true;
        //    client.UseDefaultCredentials = false;
        //    client.Credentials = basicCredential1;
        //    client.DeliveryMethod = SmtpDeliveryMethod.Network;
        //    try
        //    {
        //        client.Send("info@eventallsolutions.com", "mitul.mca@hotmail.com", "Email subject", "Email body");
        //        //ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "Your message has been sent. Thank you!", true);
        //        string scriptstring = "alert('Your message has been sent. Thank you!');";
        //        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myalert", scriptstring, true);
        //    }




        //    catch (Exception ex)
        //    {

        //        string scriptstring = "alert('Something Going to Wrong..Try Again Later!');";
        //        ScriptManager.RegisterStartupScript(Page, Page.GetType(), "myalert", scriptstring, true);
        //        //ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "Something Going to Wrong..Try Again Later!", true);
        //    }
        //    Clear();



        //}
        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            //string to = txtEmailId.Text.Trim(); //To address    
            //string from = "inquiry@eventallsolutions.com"; //From address    
            //MailMessage message = new MailMessage(from, to);
            //string EmailId = ConfigurationManager.AppSettings["EMailID"];
            //string Password = ConfigurationManager.AppSettings["EmailIdpass"];
            //string mailbody = txtMessage.Text.Trim();
            //message.Subject = txtSubject.Text.Trim();
            //message.Body = mailbody;
            //message.BodyEncoding = Encoding.UTF8;
            //message.IsBodyHtml = true;
            //SmtpClient client = new SmtpClient("mail.eventallsolutions.com", 465); //Gmail smtp    
            //System.Net.NetworkCredential basicCredential1 = new
            //System.Net.NetworkCredential(EmailId, Password);
            //client.EnableSsl = true;
            //client.UseDefaultCredentials = false;
            //client.Credentials = basicCredential1;
            try
            {
                //client.Send(message);
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "Your message has been sent. Thank you!", true);
                //Clear();
                SqlConnection con = new SqlConnection(@"Data Source=51.75.145.34,49884;Initial Catalog=EASAdminDB;Persist Security Info=True;User ID=EASAdminDB;Password=@dmin$Eas*7623");
                SqlCommand cmd = new SqlCommand("tbl_inquiryMaster_Insert", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Name", txtName.Text.Trim());
                cmd.Parameters.AddWithValue("EmailID", txtEmailId.Text.Trim());
                cmd.Parameters.AddWithValue("Subject", txtSubject.Text.Trim());
                cmd.Parameters.AddWithValue("MobileNo", txtMobileNo.Text.Trim());
                cmd.Parameters.AddWithValue("Message", txtMessage.Text.Trim());
                con.Open();
                int k = cmd.ExecuteNonQuery();
                if (k != 0)
                {
                    lblmsg.Text = "Thanks For inquiry!!!!!!!!!";
                    //lblmsg.ForeColor = System.Drawing.Color.CornflowerBlue;
                }
                con.Close();
            }

            catch (Exception ex)
            {

                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "Something Going to Wrong..Try Again Later!", true);
            }
            Clear();

        }

        public void Clear()
        {
            txtName.Text = "";
            txtEmailId.Text = "";
            txtMobileNo.Text = "";
            txtSubject.Text = "";
            txtMessage.Text = "";
        }
        //public void Mail()
        //{
        //    var fromAddress = new MailAddress("falgunipatel2703@gmail.com", "Mitul");
        //    var toAddress = new MailAddress("mitul.mca@hotmail.com", "mitul");
        //    const string fromPassword = "udnwgcggxamhrlaw";
        //    const string subject = "Subject";
        //    const string body = "Body";

        //    var smtp = new SmtpClient
        //    {
        //        Host = "smtp.gmail.com",
        //        Port = 587,
        //        EnableSsl = true,
        //        DeliveryMethod = SmtpDeliveryMethod.Network,
        //        UseDefaultCredentials = false,
        //        Credentials = new NetworkCredential(fromAddress.Address, fromPassword)
        //    };
        //    using (var message = new MailMessage(fromAddress, toAddress)
        //    {
        //        Subject = subject,
        //        Body = body
        //    })
        //    {
        //        smtp.Send(message);
        //    }
        //}
    }
}