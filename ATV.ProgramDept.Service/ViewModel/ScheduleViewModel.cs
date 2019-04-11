using ATV.ProgramDept.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.ViewModel
{
    public class ScheduleViewModel
    {
        public int ID { get; set; }
        public string CreatedBy { get; set; }
        public int DateID { get; set; }
        public Date Date { get; set; }
        public bool IsActive { get; set; }

        public List<ScheduleDetailViewModel> Details { get; set; }
    }
}
