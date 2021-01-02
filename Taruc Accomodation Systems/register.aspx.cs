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
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Clear();
            }
        }

        protected void btnregister_Click1(object sender, EventArgs e)
        {
            if (txtusername.Text == "" || txtpassword.Text == "")
                Response.Write("<script>alert('Please fill mandatory fields');</script>");
                //lblErrorMessage.Text = "please fill mandatory fields";
            else if (txtpassword.Text != txtconfirmpassword.Text)
                Response.Write("<script>alert('Password and confirm password do not match');</script>");
                //lblErrorMessage.Text = "password do not match";
            else
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    SqlCommand sqlCmd = new SqlCommand("UserAddOrEdit", sqlCon);
                    sqlCmd.CommandType = CommandType.StoredProcedure;
                    sqlCmd.Parameters.AddWithValue("@userid", Convert.ToInt32(hfuserid.Value == "" ? "0" : hfuserid.Value));
                    sqlCmd.Parameters.AddWithValue("@fname", txtfirstname.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@lname", txtlastname.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@mname", txtmiddlename.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@email", txtemail.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@username", txtusername.Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@password", txtpassword.Text.Trim());
                    sqlCmd.ExecuteNonQuery();
                    Clear();
                    Response.Write("<script>alert('Register Successful!');window.location.href = 'login.aspx';</script>");
                }
            }
        }

        void Clear()
        {
            txtfirstname.Text = txtmiddlename.Text = txtlastname.Text = txtemail.Text = txtusername.Text = txtpassword.Text = "";
            hfuserid.Value = "";
            lblSuccessMessage.Text = lblErrorMessage.Text = "";
        }

    }
}