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

             Session["fName"] = txtFirstName.Text;
             Session["lName"] = txtLastName.Text;
             Session["email"] = txtEmail.Text;
             Session["dob"] = txtDOB.Text;
             Session["mobile"] = txtMobile.Text;
             Session["password"] = txtPassword.Text;
             Session["password"] = txtConfirmPassword.Text;
             Response.Redirect("/Index.aspx");
        }
    }
}