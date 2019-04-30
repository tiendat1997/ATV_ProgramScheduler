using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.Constant
{
    public class TimeSection
    {
        public TimeSpan StartTime { get; set; }
        public TimeSpan EndTime { get; set; }
    }
    public static class TimeFrame
    {
        public readonly static TimeSection Morning = new TimeSection
        {
            StartTime = new TimeSpan(5, 0, 0),
            EndTime = new TimeSpan(11, 29, 0)
        };
        public readonly static TimeSection Noon = new TimeSection
        {
            StartTime = new TimeSpan(11, 30, 0),
            EndTime = new TimeSpan(18, 29, 0)
        };
        public readonly static TimeSection AfternoonAndEvening = new TimeSection
        {
            StartTime = new TimeSpan(18, 30, 0),
            EndTime = new TimeSpan(23, 59, 0)
        };
        public readonly static TimeSection Dawn = new TimeSection
        {
            StartTime = new TimeSpan(0, 0, 0),
            EndTime = new TimeSpan(4, 59, 0)
        };
    }
}
