using EFCodingC.Models.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Services;

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
        [WebMethod]
        public ActionResult projectsXusers(int userId)
        {
            List<ProjectViewModel> lst = null;
            using (Models.codeChallengeEntities db = new Models.codeChallengeEntities())
            {
                lst =
                    (from u in db.userProject 
                     join p in db.Project on u.projectID equals p.id
                     where u.userID == userId
                     select new ProjectViewModel
                     {
                         
                         projectID = p.id,
                         isActive = u.isActive,
                         startDate = p.startDate,
                         endDate = p.endDate,
                         Credits = p.Credits,
                         assignedDate= u.assignedDate
                         
                     }).ToList();

            }
            List<ProjectsVM> lista = lst.ConvertAll(x =>
            {
                return projecttoTable(x);
            });
            return Json(new { data = lista }, JsonRequestBehavior.AllowGet);
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

        public ProjectsVM projecttoTable(ProjectViewModel P)
        {
            ProjectsVM x = new ProjectsVM();
            x.projectID = P.projectID;
            x.startDate = P.startDate.ToString();
            if (P.isActive[0] == 1)
            {
                x.isActive = "Active";
            }
            else
            {
                x.isActive = "Inactive";
            }
            
            System.TimeSpan days = P.startDate - P.assignedDate;
            if (days.Days > 0)
            {

                x.timeToStart = days.Days.ToString();
            }
            else
            {
                x.timeToStart = "Started";
            }
            x.endDate = P.endDate.ToString();
            x.Credits = P.Credits;
            return x;

        }
    }
}