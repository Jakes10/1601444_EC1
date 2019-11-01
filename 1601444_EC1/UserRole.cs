using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;
using System.Web.Mvc;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;

namespace _1601444_EC1
{

    public class UserRole  : Controller
    {
        private readonly RoleManager<IdentityRole> roleManager; 

        public UserRole(RoleManager<IdentityRole> roleManager)
        {
            this.roleManager = roleManager;
        }

        [HttpGet]
        public ActionResult CreateRole()
        {
            return View();
        }


    }
}