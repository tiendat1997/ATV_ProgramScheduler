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
    public class ScheduleRepository : Repository<Schedule>, IScheduleRepository
    {
        private readonly IDateRepository _dateRepository;
        public ScheduleRepository()
        {
            _dateRepository = new DateRepository();
        }
        public IEnumerable<ScheduleViewModel> GetWeekSchedule(int weekId)
        {
            var dateIds = _dateRepository.Find(d => d.WeekID == weekId).Select(s => s.ID).ToList();
            //var list = Find(s => dateIds.Contains(s.DateID ?? -1) && s.IsActive == true)
            var list = dbSet
                .AsNoTracking()
                .Where(s => dateIds.Contains(s.DateID ?? -1) && s.IsActive == true)                
                .Select(s => new ScheduleViewModel
                {
                    ID = s.ID,
                    DateID = s.DateID ?? 0,
                    Date = s.Date,
                    CreatedBy = s.CreatedBy,
                    IsActive = s.IsActive ?? false,
                    DayOfWeek = s.Date.DayOfWeek,
                    Details = s.ScheduleDetail
                    .Where(x => x.IsActive.HasValue && x.IsActive.Value)                    
                    .Select(x => new ScheduleDetailViewModel
                    {
                        ID = x.ID,
                        StartTime = x.StartTime.HasValue ? x.StartTime.Value :  new TimeSpan(5, 0, 0), //change StartAt to time in db
                        ProgramName = String.IsNullOrEmpty(x.ProgramName) ? x.Program.Name : x.ProgramName,
                        Contents = x.Contents,
                        PerformBy = x.PerformBy,
                        Duration = x.Duration,
                        Note = x.Note,
                        DateID = x.Schedule.DateID.Value,
                        ProgramID = x.ProgramID,
                        ScheduleID = x.ScheduleID.Value,
                        Position = x.Position, 
                        IsNoted = x.IsNoted.Value,
                        IsFixed = x.IsFixed.HasValue ? x.IsFixed.Value : false
                    })                    
                    .OrderBy(q => q.Position)
                    .ToList()                   
                }).ToList();            
            
            return list;
        }
    }
}
