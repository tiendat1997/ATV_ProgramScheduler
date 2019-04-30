using ATV.ProgramDept.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.ViewModel
{
    public class ScheduleDetailViewModel : ScheduleBase
    {
        public int ID { get; set; }
        public string ProgramName { get; set; }
         public string Contents { get; set; }
        public string PerformBy { get; set; }

        public int ProgramID { get; set; }

        public int ScheduleID { get; set; }
        public ScheduleViewModel Schedule { get; set; }

        public int Position { get; set; }               

        public string Note { get; set; }

        public bool IsNoted { get; set; }

        public bool IsActive { get; set; }
        public int DateID { get; set; }
    }
}
