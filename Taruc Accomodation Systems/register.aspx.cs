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

    public partial class register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if(con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into register values('"+ fname.text +"','"+ lastname.text"')";

            if (txtusername.Text == "" || txtpassword.Text == "")
                lblErrorMessage.Text = "Please Fill Mandatory Fields";
            else if (txtpassword.Text != txtconfirmpassword.Text)
                lblErrorMessage.Text = "Password do not match";
            else
            {
                using (sqlCon)
                {
                    sqlCon.Open();
                    SqlCommand sqlCmd = new SqlCommand("UserAddOrEdit", sqlCon);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@fname", txtfirstname.Text.Trim());
                    sqlCmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Register Successful!'); window.location.href = 'login.aspx'; </script>");
                }
            }
        }
    }
}