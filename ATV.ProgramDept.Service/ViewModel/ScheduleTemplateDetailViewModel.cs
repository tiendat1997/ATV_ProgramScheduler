using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.ViewModel
{
    public class ScheduleTemplateDetailViewModel : ScheduleBase
    {        
        public int ID { get; set; }

        public int ProgramID { get; set; }

        public int ScheduleTemplateID { get; set; }

        public int Position { get; set; }

        public bool IsNoted { get; set; }

        public bool IsActive { get; set; }

        public string ProgramName { get; set; }

        public string Contents { get; set; }

        public string PerformBy { get; set; }        

        public string Note { get; set; }
    }
}
