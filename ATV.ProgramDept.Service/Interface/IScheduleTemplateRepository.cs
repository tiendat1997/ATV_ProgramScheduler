﻿using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.Interface
{
    public interface IScheduleTemplateRepository : IRepository<ScheduleTemplate>
    {
        IEnumerable<ScheduleTemplateDetail> GetScheduleTemplateDetails(int dayOfWeek);
        ScheduleTemplateViewModel GetScheduleTemplate(int dayOfWeek);
        void UpdateScheduleTemplateDetails(int templateId, List<ScheduleTemplateDetailViewModel> list);
        void CopyScheduleTemplateToSchedule(List<ScheduleViewModel> weekSchedules);
    }
}
