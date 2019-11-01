using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Security.Cryptography;
using System.Text;

namespace _1601444_EC1
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        { 


            String cs = ConfigurationManager.ConnectionStrings["Database1ConnectionString1"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("insert into iStroreUser values('" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtEmail.Text + "','" + txtDOB.Text + "','" + txtMobile.Text + "','"+ new Crypto().MD5(txtPassword.Text) + "');", conn);
                conn.Open();
                cmd.ExecuteNonQuery();
            }

            Response.Write("Registration is successful");
            //Response.Write();

            //Session["fName"] = txtFirstName.Text;
            //Session["lName"] = txtLastName.Text;
            //Session["email"] = txtEmail.Text;
            //Session["dob"] = txtDOB.Text;
            //Session["mobile"] = txtMobile.Text;
            //Session["password"] = txtPassword.Text;
            //Session["password"] = txtConfirmPassword.Text;
            Response.Redirect("/Login.aspx");

            //////////////////////////
            //var userStore = new UserStore<IdentityUser>();
            //var manager = new UserManager<IdentityUser>(userStore);
            //var user = new IdentityUser() { UserName = txtEmail.Text };

            //IdentityResult result = manager.Create(user, txtPassword.Text);

            //if (result.Succeeded)//&& txtPassword.Text.Length>8 
            //{
            //    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            //    var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
            //    authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
            //    Response.Redirect("/Index.aspx");
            //}
            //else
            //{
            //    Response.Write(@"<script langauge='text/javascript'>alert(' " + result.Errors.FirstOrDefault() + "');</script>");

            //}
            //// Default UserStore constructor uses the default connection string named: DefaultConnection
            //var userStore = new UserStore<IdentityUser>();
            //var manager = new UserManager<IdentityUser>(userStore);

            //var user = new IdentityUser() { UserName = txtFirstName.Text };
            //IdentityResult result = manager.Create(user, txtPassword.Text);

            //if (result.Succeeded)
            //{
            //    Response.Write(@"<script langauge='text/javascript'>alert(' " + string.Format("User {0} was created successfully!", user.UserName + "');</script>"));
            //}
            //else {
            //    Response.Write(@"<script langauge='text/javascript'>alert(' " + result.Errors.FirstOrDefault() + "');</script>");


            //}

            AddUserAndRole();

        }



        internal void AddUserAndRole()
        {
            // Access the application context and create result variables.
            Models.ApplicationDbContext context = new ApplicationDbContext();
            IdentityResult IdRoleResult;
            IdentityResult IdUserResult;

            // Create a RoleStore object by using the ApplicationDbContext object. 
            // The RoleStore is only allowed to contain IdentityRole objects.
            var roleStore = new RoleStore<IdentityRole>(context);

            // Create a RoleManager object that is only allowed to contain IdentityRole objects.
            // When creating the RoleManager object, you pass in (as a parameter) a new RoleStore object. 
            var roleMgr = new RoleManager<IdentityRole>(roleStore);

            // Then, you create the "canEdit" role if it doesn't already exist.
            if (!roleMgr.RoleExists("canEdit"))
            {
                IdRoleResult = roleMgr.Create(new IdentityRole { Name = "canEdit" });
            }

            // Create a UserManager object based on the UserStore object and the ApplicationDbContext  
            // object. Note that you can create new objects and use them as parameters in
            // a single line of code, rather than using multiple lines of code, as you did
            // for the RoleManager object.
            var userMgr = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            var appUser = new ApplicationUser
            {
                UserName = "canEditUser@wingtiptoys.com",
                Email = "canEditUser@wingtiptoys.com"
            };
            IdUserResult = userMgr.Create(appUser, "Pa$$word1");

            // If the new "canEdit" user was successfully created, 
            // add the "canEdit" user to the "canEdit" role. 
            if (!userMgr.IsInRole(userMgr.FindByEmail("canEditUser@wingtiptoys.com").Id, "canEdit"))
            {
                IdUserResult = userMgr.AddToRole(userMgr.FindByEmail("canEditUser@wingtiptoys.com").Id, "canEdit");
            }
        }

    }


}