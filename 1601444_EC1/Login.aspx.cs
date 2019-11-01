using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _1601444_EC1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            String cs = ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM iStroreUser WHERE(Email= '"+txtEmail.Text+"'AND Password='"+new Crypto().MD5(txtPassword.Text)+"' );", conn);
                conn.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count!= 0)
                {
                    //dt.Rows[0]["UserName"].ToString();
                   
                    //Response.Write(dt.Rows[0]["FirstName"].ToString()+ " Login is successful");
                    Session["fName"] = dt.Rows[0]["FirstName"].ToString();
                    Session["lName"] = dt.Rows[0]["LastName"].ToString();
                    Response.Redirect("/Index.aspx");
                }
                else
                {
                    error.Text = "Incorrect Email or password, try again!";
                }
            }
        }
    }
}