using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Taruc_Accomodation_Systems
{
    public partial class Masterpage : System.Web.UI.MasterPage
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";
            con.Open();

            if (Session["user"] == null)
            {
                loginsignup.Visible = true;
                uname.Visible = false;
            }

            else
            {
                uname.Text = Session["user"].ToString();
                loginsignup.Visible = false;
                uname.Visible = true;
            }
        }

        protected void loginsignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void uname_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }
    }

    
}