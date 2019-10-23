using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1601444_EC1
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Response.Write("Registration is successful");

            Session["user"] = txtFirstName.Text+" "+txtLastName.Text;
            Response.Redirect("Welcome.aspx");
        }
    }
}