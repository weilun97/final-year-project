using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Taruc_Accomodation_Systems
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["Database"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            using (sqlCon)
            {
                sqlCon.Open();
                string query = "SELECT * FROM [dbo].[register] WHERE username = @username AND password = @password";
                SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                sqlCmd.Parameters.AddWithValue("@username", txtusername.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@password", txtpassword.Text.Trim());
                int count = Convert.ToInt32(sqlCmd.ExecuteScalar());
                if (count == 1)
                {
                    Session["userame"] = txtusername.Text.Trim();
                    Response.Redirect("Main.aspx");
                }

                //DataTable UserDT = new DataTable();
                //SqlDataAdapter dataAdapter = new SqlDataAdapter(sqlCmd);
                //dataAdapter.Fill(UserDT);

                //if (UserDT.Rows.Count == 1)
                //{
                    //HttpCookie username = new HttpCookie("username", UserDT.Rows[0]["username"].ToString());
                    //HttpCookie userid = new HttpCookie("userid", UserDT.Rows[0]["userid"].ToString());

                    //username.Expires = DateTime.Now.AddDays(30);
                    //userid.Expires = DateTime.Now.AddDays(30);

                    //Response.Cookies.Add(username);
                    //Response.Cookies.Add(userid);

                    //Response.Redirect("Main.aspx");
                //}

                else
                {
                    Response.Write("<script>alert('username and password is invalid');</script>");
                }
            }

        }
    }
}