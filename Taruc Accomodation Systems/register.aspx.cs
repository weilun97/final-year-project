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
        SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["Database"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
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