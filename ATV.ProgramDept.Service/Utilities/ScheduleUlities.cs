using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.Constant;
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
        public static readonly byte NICE = 0;
        public static readonly byte OVERLAP = 1;
        public static readonly byte MISS = 2;

        private static readonly byte HOURS_INDEX = 0;
        private static readonly byte MINUTES_INDEX = 1;
        private static readonly byte SECONDS_INDEX = 2;

        public static bool EstimateStartTime<T>(List<T> schedules) where T : ScheduleBase
        {
            TimeSpan startTime = DEFAULT_START_TIME;
            if (schedules != null && schedules.Count > 0)
            {
                TimeSpan prev = startTime;
                int[] hhmmss = new int[] { 0, 0, 0 };
                bool isDawn = false;
                foreach (ScheduleBase schedule in schedules)
                {
                    if (!schedule.IsFixed)
                    {
                        schedule.StartTime = prev.Add(new TimeSpan(hhmmss[HOURS_INDEX], hhmmss[MINUTES_INDEX], hhmmss[SECONDS_INDEX]));
                        if (schedule.StartTime.Days > 0)
                        {
                            isDawn = true;
                            schedule.StartTime = schedule.StartTime.Subtract(new TimeSpan(1, 0, 0, 0));
                        }
                    }
                    hhmmss = ParseToHHMMSS(schedule.Duration);

                    prev = schedule.StartTime;
                }
                if (isDawn && prev.Add(new TimeSpan(hhmmss[HOURS_INDEX], hhmmss[MINUTES_INDEX], hhmmss[SECONDS_INDEX])) > TimeFrame.Dawn.EndTime)
                {
                    return false;
                }
            }

            return true;
        }

        public static void CheckOverlapSchedule<T>(List<T> schedules) where T : ScheduleBase
        {
            if (schedules != null && schedules.Count > 0)
            {
                for (int i = 0; i < schedules.Count - 1; i++)
                {
                    if (!schedules[i].IsFixed && schedules[i + 1].IsFixed)
                    {
                        int[] hhmmssDuration = ParseToHHMMSS(schedules[i].Duration);

                        TimeSpan tmp = schedules[i].StartTime.Add(new TimeSpan(hhmmssDuration[HOURS_INDEX], hhmmssDuration[MINUTES_INDEX], hhmmssDuration[SECONDS_INDEX]));

                        long distance = schedules[i + 1].StartTime.Ticks - tmp.Ticks;

                        TimeSpan tmpDistance = new TimeSpan(Math.Abs(distance));

                        if (distance < 0)
                        {
                            schedules[i].OverlapType = OVERLAP;
                            schedules[i].OverlapMessage = "DƯ  "
                                                            + (tmpDistance.Hours > 0 ? tmpDistance.Hours + " giờ " : "")
                                                            + (tmpDistance.Minutes > 0 ? tmpDistance.Minutes + " phút " : "")
                                                            + (tmpDistance.Seconds > 0 ? tmpDistance.Seconds + " giây" : "");

                        }
                        else if (distance > 0)
                        {
                            schedules[i].OverlapType = MISS;
                            schedules[i].OverlapMessage = "THIẾU  "
                                                            + (tmpDistance.Hours > 0 ? tmpDistance.Hours + " giờ " : "")
                                                            + (tmpDistance.Minutes > 0 ? tmpDistance.Minutes + " phút " : "")
                                                            + (tmpDistance.Seconds > 0 ? tmpDistance.Seconds + " giây" : "");


                        }
                        else
                        {
                            schedules[i].OverlapType = NICE;
                        }

                    }
                }
            }
        }

        private static int[] ParseToHHMMSS(double duration)
        {
            int integral = (int)Math.Round(duration * 100);
            int fractional = (int)Math.Truncate(duration) * 100;

            int seconds = integral - fractional;
            int hours = (int)duration / 60;
            int minutes = (int)duration % 60;

            return new int[] { hours, minutes, seconds };
        }
    }
}
