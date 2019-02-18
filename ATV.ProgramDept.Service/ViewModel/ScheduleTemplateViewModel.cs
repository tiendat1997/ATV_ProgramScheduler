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
        public string StartTime { get; set; }
        public int ProgramID { get; set; }
        public string ProgramName { get; set; }
        public string Content { get; set; }
        public string PerformBy { get; set; }
        public double Duration { get; set; }
        public string Note { get; set; }
    }
}
