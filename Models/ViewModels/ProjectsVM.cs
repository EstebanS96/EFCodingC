using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EFCodingC.Models.ViewModels
{
    public class ProjectsVM
    {
        public int projectID { get; set; }
        public string startDate { get; set; }
        public string timeToStart { set; get; }
        public string endDate { get; set; }
        public string isActive { get; set; }
        public int Credits { get; set; }

        
    }

}