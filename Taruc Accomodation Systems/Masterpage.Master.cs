using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Taruc_Accomodation_Systems
{
    public partial class Masterpage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                login.Visible = true;
                uname.Visible = true;
            }

            else
            {
                uname.Text = Session["username"].ToString();
            }
        }
    }
}