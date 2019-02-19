﻿using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.Interface;
using ATV.ProgramDept.Service.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.Implement
{
    public class ScheduleRepository :Repository<Schedule>, IScheduleRepository
    {
        public IEnumerable<Schedule> GetWeekSchedule(int weekId)
        {
            var schedules = this.GetAll()
                .Where(s => s.Date.WeekID == weekId);

            return schedules;
        }
    }
}