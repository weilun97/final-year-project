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
            sqlCon.Open();
            string query = "Select count(*) from register where username='" + txtusername.Text + "' and password='" + txtpassword.Text + "'";
            SqlCommand cmd = new SqlCommand(query, sqlCon);
            string output = cmd.ExecuteScalar().ToString();

            if (output == "1")
            {
                Response.Redirect("Main.aspx");
            }

            else
            {
                Response.Write("<script>alert('Username Or Password Is Incorrect!');</script>");
            }
        }
    }
}