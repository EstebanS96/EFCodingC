using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EFCodingC.Models.ViewModels
{
    public class ProjectViewModel
    {
        public int projectID { get; set; }
        public byte[] isActive { get; set; }
        public System.DateTime startDate { get; set; }
        public System.DateTime assignedDate { get; set; }
        public System.DateTime endDate { get; set; }
        public int Credits { get; set; }
    }
}