using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Net;
using System.Net.Mail;

namespace Taruc_Accomodation_Systems
{
    public partial class forgotpassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void retreivepass_Click(object sender, EventArgs e)
        {
            string mainconn = ConfigurationManager.ConnectionStrings["Database"].ConnectionString;
            SqlConnection sqlconn = new SqlConnection(mainconn);
            string sqlquery = "select email,password from [dbo].[register] where email=@email";
            SqlCommand sqlcomm = new SqlCommand(sqlquery, sqlconn);
            sqlcomm.Parameters.AddWithValue("@email", txtemail.Text);
            sqlconn.Open();
            SqlDataReader sdr = sqlcomm.ExecuteReader();
            if(sdr.Read())
            {
                string username = sdr["email"].ToString();
                string password = sdr["password"].ToString();

                MailMessage mm = new MailMessage("yeowweilun97@gmail.com", txtemail.Text);
                mm.Subject = "Your Password!";
                mm.Body = string.Format("Hello: <h1>{0}</h1> is your email id <br/> your password is <h1>{1}</h1>", username, password);
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential nc = new NetworkCredential();
                nc.UserName = "yeowweilun97@gmail.com";
                nc.Password = "admin";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = nc;
                smtp.Port = 587;
                smtp.Send(mm);
                lblmsg.Text = "Your password has been sent to " + txtemail.Text;
                lblmsg.ForeColor = Color.Green;
            }

            else
            {
                lblmsg.Text = txtemail.Text + " - this email id is not exists in our database!";
                lblmsg.ForeColor = Color.Red;
            }
        }
    }
}