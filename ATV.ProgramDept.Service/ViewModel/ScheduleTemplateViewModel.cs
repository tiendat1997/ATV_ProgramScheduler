using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.ViewModel
{
    public class ScheduleTemplateViewModel
    {
        public int ID { get; set; }
        public string CreatedBy { get; set; }
        public int DayOfWeek { get; set; }
        public int DateID { get; set; }

        public List<ScheduleTemplateDetailViewModel> Details { get; set; }

    }
}
