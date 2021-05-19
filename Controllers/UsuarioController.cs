using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TursArg.Models;
using TursArg.Models.TableViewModels;
using TursArg.Models.ViewModels;

namespace TursArg.Controllers
{
    public class UsuarioController : Controller
    {
        public DateTime? Date { get; private set; }

        public ActionResult Index()
        {
            List<UserTableViewModel> lst = null;
            using (tursArgBDEntities db = new tursArgBDEntities())
            {
                lst = (from d in db.Usuarios
                       where d.email != ""
                       orderby d.email
                       select new UserTableViewModel
                       {
                           Email = d.email,
                           Id = d.usuario_id,
                           Nombres = d.nombre,   
                           Apellidos = d.apellido,
                           Contraseña = d.password,
                           Fecha_Alta = d.fecha_alta


                       }).ToList();
            }

            return View(lst);
        }

        [HttpGet]
        public ActionResult Add()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Add(UserViewModel model)
        {

            if (!ModelState.IsValid)
            {
                return View(model);
            }

            using (var db = new tursArgBDEntities())
            {
                Usuarios oUser = new Usuarios();
                oUser.email = model.Email;
                oUser.nombre = model.Nombres;
                oUser.password = model.Password;
                oUser.apellido = model.Apellidos;
                oUser.fecha_alta = DateTime.Now;
                oUser.perfil_id = 2;
                db.Usuarios.Add(oUser);

                db.SaveChanges();

            }

            return Redirect(Url.Content("~/Usuario/"));
        }

        public ActionResult Edit(int Id)
        {
            EditUserViewModel model = new EditUserViewModel();

            using (var db = new tursArgBDEntities())
            {
                var oUser = db.Usuarios.Find(Id);
                model.Email = oUser.email;
                model.Id = oUser.usuario_id;
                oUser.email = model.Email;
                oUser.nombre = model.Nombres;
                oUser.password = model.Password;
                oUser.apellido = model.Apellidos;
              
            }
            return View(model);
        }

        [HttpPost]
        public ActionResult Edit(EditUserViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return View(model);
            }

            using (var db = new tursArgBDEntities())
            {
                var oUser = db.Usuarios.Find(model.Id);
                oUser.email = model.Email;
                oUser.nombre = model.Nombres;
                oUser.apellido = model.Apellidos;
                if (model.Password != null && model.Password.Trim() != "")
                {
                    oUser.password = model.Password;
                }

                db.Entry(oUser).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
            return Redirect(Url.Content("~/Usuario/"));
        }

        [HttpPost]
        public ActionResult Delete(int Id)
        {
            using (var db = new tursArgBDEntities())
            {
                var oUser = db.Usuarios.Find(Id);
                oUser.fecha_baja =  Date; //eliminaremos

                db.Entry(oUser).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
            return Content("1");
        }
    }


    /*
    // GET: Usuario
    public ActionResult Index()
    {
        List<Usuarios> listaUsuarios = db.Usuarios.ToList();
        return View(listaUsuarios);
    }

    // GET: Usuario/Details/5
    public ActionResult Details(int id)
    {
        return View();
    }

    // GET: Usuario/Create
    public ActionResult Create()
    {
        return View();
    }

    // POST: Usuario/Create
    [HttpPost]
    public ActionResult Create(FormCollection collection)
    {
        try
        {
            // TODO: Add insert logic here

            return RedirectToAction("Index");
        }
        catch
        {
            return View();
        }
    }

    // GET: Usuario/Edit/5
    public ActionResult Edit(int id)
    {
        return View();
    }

    // POST: Usuario/Edit/5
    [HttpPost]
    public ActionResult Edit(int id, FormCollection collection)
    {
        try
        {
            // TODO: Add update logic here

            return RedirectToAction("Index");
        }
        catch
        {
            return View();
        }
    }

    // GET: Usuario/Delete/5
    public ActionResult Delete(int id)
    {
        return View();
    }

    // POST: Usuario/Delete/5
    [HttpPost]
    public ActionResult Delete(int id, FormCollection collection)
    {
        try
        {
            // TODO: Add delete logic here

            return RedirectToAction("Index");
        }
        catch
        {
            return View();
        }
    }*/
}
