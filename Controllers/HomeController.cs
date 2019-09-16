using EFCodingC.Models.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace EFCodingC.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            List<UserViewModel> lst = null;
            using (Models.codeChallengeEntities db = new Models.codeChallengeEntities())
            {
                lst =
                    (from d in db.Users
                     select new UserViewModel
                     {
                         id = d.id,
                         firstName = d.firstName + " " + d.lastName
                     }).ToList();
            }
            List<SelectListItem> items = lst.ConvertAll(x =>
            {
                return new SelectListItem()
                {
                    Text = x.firstName.ToString(),
                    Value = x.id.ToString(),
                    Selected = false
                };
            });

            ViewBag.items = items;

            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}