using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.Implement
{
    public class WeekRepository : Repository<Week>, IWeekRepository
    {        
        public void GenerateNewWeekAndDates(DateTime from, DateTime to)
        {
            IDateRepository dateRepo = new DateRepository();
            IScheduleRepository scheduleRepo = new ScheduleRepository();
            Week week = new Week { FromDate = from, ToDate = to };
            Create(week);
            Save();
            
            for (var i = 0; i < 7; i++)
            {
                DateTime temp = from.AddDays(i);
                int dow = (int)temp.DayOfWeek;
                if (dow == 0) dow = 7;
                Date date = new Date
                {
                    WeekID = week.ID,
                    DayOfWeek = dow,
                    DateOfYear = temp,
                    StartAt = 5
                };
                dateRepo.Create(date);
                dateRepo.Save();

                Schedule schedule = new Schedule
                {
                    DateID = date.ID,
                    CreatedBy = "Default",
                    IsActive = true,
                };
                scheduleRepo.Create(schedule);
                scheduleRepo.Save();
            }
        }

        public int GetWeekId(DateTime from, DateTime to)
        {
            int weekId = -1;
            var result = Find(w => w.FromDate == from && w.ToDate == to).FirstOrDefault();
            if (result != null)
            {
                weekId = result.ID;
            }
            return weekId;
        }
    }
}
