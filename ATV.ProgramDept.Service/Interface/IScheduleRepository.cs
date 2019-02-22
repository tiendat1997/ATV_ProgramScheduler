
using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.Interface
{
    public interface IScheduleRepository : IRepository<Schedule>
    {
        IEnumerable<ScheduleViewModel> GetWeekSchedule(int weekId);
    }
}
