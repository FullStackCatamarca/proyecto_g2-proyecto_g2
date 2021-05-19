using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TursArg.Models;

namespace TursArg.Controllers

{
    public class AccessController : Controller
    {
        // GET: Access
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Enter(string user, string password)
        {
            try
            {
                using (tursArgBDEntities db = new tursArgBDEntities())
                {
                    var lst = from d in db.Usuarios
                              where d.email == user && d.password == password 
                              select d;
                    if (lst.Count() > 0)
                    {
                        Usuarios oUser = lst.First();
                        Session["User"] = oUser;
                        return Content("1");
                    }
                    else
                    {
                        return Content("Usuario invalido");
                    }
                }



            }
            catch (Exception ex)
            {
                return Content("Ocurrio un error" + ex.Message);
            }

        }


    }


}