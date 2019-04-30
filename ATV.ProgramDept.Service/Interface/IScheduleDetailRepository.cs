using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.Interface
{
    public interface IScheduleDetailRepository : IRepository<ScheduleDetail>
    {
        IEnumerable<ScheduleDetailViewModel> GetWeekSchedule(int weekId);
        void UpdateWeekSchedule(int weekId, List<ScheduleDetailViewModel> updateSchedules);
    }
}
