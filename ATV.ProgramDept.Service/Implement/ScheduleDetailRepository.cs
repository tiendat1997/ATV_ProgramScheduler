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
    public class ScheduleDetailRepository : Repository<ScheduleDetail>, IScheduleDetailRepository
    {
        public IEnumerable<ScheduleDetailViewModel> GetWeekSchedule(int weekId)
        {
            var list = this.Find(x => x.Schedule.Date.WeekID == weekId && x.IsActive.HasValue && x.IsActive.Value)
                            .Select(x => new ScheduleDetailViewModel
                            {
                                ID = x.ID,
                                StartTime = new TimeSpan(5, 0, 0), //change StartAt to time in db
                                ProgramName = String.IsNullOrEmpty(x.ProgramName) ? x.Program.Name : x.ProgramName,
                                Contents = x.Contents,
                                PerformBy = x.PerformBy,
                                Duration = x.Duration,
                                Note = x.Note,
                                DateID = x.Schedule.DateID.Value,
                                ProgramID = x.ProgramID,
                                ScheduleID = x.ScheduleID.Value,
                                Position = x.Position,
                                IsNoted = x.IsNoted.Value
                            });
            return list;
        }

        public void UpdateWeekSchedule(int weekId, List<ScheduleDetailViewModel> updateSchedules)
        {
            var currentListSchedule = Find(x => x.Schedule.Date.WeekID == weekId).ToList();
            currentListSchedule.ForEach(s => s.IsActive = false);
            var idList = currentListSchedule.Select(x => x.ID);
            foreach (var schedule in updateSchedules)
            {
                if (idList.Contains(schedule.ID))
                {
                    //update aldready schedule
                    var item = currentListSchedule.Where(x => x.ID == schedule.ID).FirstOrDefault();
                    item.IsActive = true;
                    item.Note = schedule.Note;
                    item.ProgramName = schedule.ProgramName;
                    item.Duration = schedule.Duration;
                    item.PerformBy = schedule.PerformBy;
                    item.Contents = schedule.Contents;
                    item.Position = schedule.Position;
                    item.IsNoted = schedule.IsNoted;
                    this.Update(item);
                }
                else
                {
                    //new schedule
                    var item = new ScheduleDetail
                    {
                        IsActive = true,
                        Note = schedule.Note,
                        ProgramName = schedule.ProgramName,
                        Duration = schedule.Duration,
                        PerformBy = schedule.PerformBy,
                        Contents = schedule.Contents,
                        Position = schedule.Position,
                        ProgramID = schedule.ProgramID,
                        ScheduleID = schedule.ScheduleID,
                        IsNoted = schedule.IsNoted
                    };
                    this.Create(item);
                }
            }
            // update new list
            this.Save();

        }
    }
}
