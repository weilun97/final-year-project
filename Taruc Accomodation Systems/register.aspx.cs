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
            if (checkemail() == true)
            {
                Response.Write("<script>alert('Email Already Exists!');</script>");
                txtemail.ForeColor = System.Drawing.Color.MediumVioletRed;
            }

            if (checkusername() == true)
            {
                Response.Write("<script>alert('Username Already Exists!');</script>");
                txtusername.ForeColor = System.Drawing.Color.MediumVioletRed;
            }

            else if (txtusername.Text == "" || txtpassword.Text == "" || txtfirstname.Text == "" || txtmiddlename.Text == "" || txtlastname.Text == "")
            {
                Response.Write("<script>alert('Please Fill All Mandatory Fields!');</script>");
            }

            else if (txtpassword.Text != txtconfirmpassword.Text)
            {
                Response.Write("<script>alert('Password and Confirm Password Do Not Match!');</script>");
            }

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

        private Boolean checkemail()
        {
            Boolean emailavailable = false;
            string mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";
            string myquery = "Select * from register where email='" + txtemail.Text + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if(ds.Tables[0].Rows.Count > 0)
            {
                emailavailable = true;
            }
            con.Close();

            return emailavailable;
        }

        private Boolean checkusername()
        {
            Boolean usernameavailable = false;
            string mycon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";
            string myquery = "Select * from register where username='" + txtusername.Text + "'";
            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                usernameavailable = true;
            }
            con.Close();

            return usernameavailable;
        }

    }
}