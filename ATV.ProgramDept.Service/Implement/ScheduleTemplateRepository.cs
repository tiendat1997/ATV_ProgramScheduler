using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.Interface;
using ATV.ProgramDept.Service.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.Implement
{
    public class ScheduleTemplateRepository : Repository<ScheduleTemplate>, IScheduleTemplateRepository
    {
        public IEnumerable<ScheduleTemplateDetail> GetScheduleTemplateDetails(int dayOfWeek)
        {
            var detailList = Find(s => s.IsActive == true && s.DayOfWeek == dayOfWeek)
                .SelectMany(t => t.ScheduleTemplateDetail)
                .ToList();                
            return detailList;
        }
    }
}
