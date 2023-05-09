using CreditTaskMVC.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FinalProject.Controllers
{
    public class AccountController : Controller
    {
        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();
        SqlDataReader dr;
        //Get: Account
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        void connectionString()
        {
            con.ConnectionString = "data source=DESKTOP-O0H3O9A\\AD; database=Login; integrated security= SSPI;";
        }
        [HttpPost]
        public ActionResult Verify(Account acc)
        {
            connectionString();
            con.Open();
            com.Connection= con;
            com.CommandText = "select * from acc where username='"+acc.Name+"' and password='"+ acc.Password+"'";
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                int role_id = Convert.ToInt32(dr["role_id"]);
                con.Close();
                if (role_id == 0)
                {
                    // User is an admin
                    return View("admin_login");
                }
                else
                {
                    // User is not an admin
                    return View("Success");
                }
            }
            else
            {
                con.Close();
                return View("Login");
            }
        }

    }
 }

