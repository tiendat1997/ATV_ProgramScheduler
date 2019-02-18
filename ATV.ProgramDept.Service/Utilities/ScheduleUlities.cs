using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.Utilities
{
    public class ScheduleUlities
    {
        private static readonly TimeSpan DEFAULT_START_TIME = new TimeSpan(5, 0, 0);

        public static void EstimateStartTime(List<ScheduleViewModel> schedules)
        {
            TimeSpan startTime = DEFAULT_START_TIME;
            if (schedules != null && schedules.Count > 0)
            {
                foreach (ScheduleViewModel schedule in schedules)
                {
                    schedule.StartTime = startTime.ToString("hh:mm:ss");
                }
            }
        }
    }
}
