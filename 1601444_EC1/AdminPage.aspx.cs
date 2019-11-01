using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1601444_EC1
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)(Session["fName"]) == null)
            {
                //Response.Redirect("/Login.aspx");
            }
        }

        protected void Logout(object sender, EventArgs e)
        {
            Session["fName"] = null;
            Response.Redirect("/Login.aspx");

        }


    }
}