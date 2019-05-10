using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.ViewModel
{
    public class ScheduleBase
    {
        public TimeSpan StartTime { get; set; }
        public double Duration { get; set; }
        public bool IsFixed { get; set; }
        public byte OverlapType { get; set; }
        public string OverlapMessage { get; set; }
    }
}
