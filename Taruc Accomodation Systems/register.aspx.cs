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

        }
    }
}