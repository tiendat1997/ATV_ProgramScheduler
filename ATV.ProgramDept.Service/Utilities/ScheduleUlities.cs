﻿using ATV.ProgramDept.Entity;
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

        public static void EstimateStartTime<T>(List<T> schedules) where T:ScheduleBase
        {
            TimeSpan startTime = DEFAULT_START_TIME;
            if (schedules != null && schedules.Count > 0)
            {
                TimeSpan prev = startTime;
                int seconds = 0;
                int hours = 0;
                int minutes = 0;
                foreach (ScheduleBase schedule in schedules)
                {
                    schedule.StartTime = prev.Add(new TimeSpan(hours,minutes,(int)seconds));

                    seconds = (int)((schedule.Duration - (int)schedule.Duration) * 100);
                    hours = (int)schedule.Duration / 60;
                    minutes = (int)schedule.Duration % 60;

                    prev = schedule.StartTime;
                }
            }
        }
    }
}