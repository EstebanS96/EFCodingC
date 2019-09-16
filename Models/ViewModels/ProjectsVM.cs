using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EFCodingC.Models.ViewModels
{
    public class ProjectsVM
    {
        public int projectID { get; set; }
        public System.DateTime startDate { get; set; }
        public string timeToStart { set; get; }
        public System.DateTime endDate { get; set; }
        public byte[] isActive { get; set; }
        public int Credits { get; set; }

        
    }

}