using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TursArg.Controllers;
using TursArg.Models;


namespace TursArg.Filters
{
    public class VerifySession : ActionFilterAttribute
    {
        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            var oUser = (Usuarios)HttpContext.Current.Session["User"];

            if (oUser == null)
            {
                if (filterContext.Controller is AccessController == false)
                {
                    filterContext.HttpContext.Response.Redirect("~/Access/Index");
                }
            }
            else
            {
                if (filterContext.Controller is AccessController == true)
                {
                    filterContext.HttpContext.Response.Redirect("~/Home/Index");
                }
            }

            base.OnActionExecuting(filterContext);
        }
    }
}
