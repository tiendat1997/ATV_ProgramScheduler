using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.Enum;
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
        private readonly IScheduleTemplateDetailRepository _scheduleTemplateDetailRepository;
        private readonly IScheduleDetailRepository _scheduleDetailRepository;
        public ScheduleTemplateRepository()
        {
            _scheduleTemplateDetailRepository = new ScheduleTemplateDetailRepository();
            _scheduleDetailRepository = new ScheduleDetailRepository();
        }
        public void CopyScheduleTemplateToSchedule(List<ScheduleViewModel> weekSchedules)
        {
            foreach (var schedule in weekSchedules)
            {            
                var templateDetails = Find(s => s.IsActive == true && s.DayOfWeek == schedule.DayOfWeek)
                    .SelectMany(s => s.ScheduleTemplateDetail)
                    .ToList();
                foreach (var details in templateDetails)
                {
                    _scheduleDetailRepository.Create(new ScheduleDetail {
                        ScheduleID = schedule.ID,                        
                        ProgramID = details.ProgramID,
                        ProgramName = details.ProgramName,
                        IsActive = details.IsActive,
                        Contents = details.Contents,
                        Duration = details.Duration,
                        IsNoted = details.IsNoted,
                        Note = details.Note,
                        PerformBy = details.PerformBy,
                        Position = details.Position,                                                
                    });
                    _scheduleDetailRepository.Save();
                }                    
            }
        }

        public ScheduleTemplateViewModel GetScheduleTemplate(int dayOfWeek)
        {
            var schedule = Find(s => s.IsActive == true && s.DayOfWeek == dayOfWeek)
                .Select(t => new ScheduleTemplateViewModel
                {
                    ID = t.ID,
                    DayOfWeek = (int)t.DayOfWeek,
                    CreatedBy = t.CreatedBy,
                    DateID = t.DateID ?? 0,
                    Details = t.ScheduleTemplateDetail
                    .Where(d => d.IsActive)
                    .Select(s => new ScheduleTemplateDetailViewModel
                    {
                        ID = s.ID,
                        Contents = s.Contents,
                        Duration = s.Duration,
                        PerformBy = s.PerformBy,
                        Note = s.Note,
                        Position = s.Position,
                        ProgramID = s.ProgramID,
                        ProgramName = s.ProgramName,
                        IsActive = s.IsActive,
                        IsNoted = s.IsNoted,
                        ScheduleTemplateID = s.ScheduleTemplateID
                    })
                    .OrderBy(q => q.Position)
                    .ToList()
                }).FirstOrDefault();
            return schedule;
        }

        public IEnumerable<ScheduleTemplateDetail> GetScheduleTemplateDetails(int dayOfWeek)
        {
            var detailList = Find(s => s.IsActive == true && s.DayOfWeek == dayOfWeek)
                .SelectMany(t => t.ScheduleTemplateDetail)
                .ToList();
            return detailList;
        }

        public void UpdateScheduleTemplateDetails(int templateId, List<ScheduleTemplateDetailViewModel> updateList)
        {
            var currentList = Find(s => s.IsActive == true && s.ID == templateId)
                .SelectMany(t => t.ScheduleTemplateDetail)
                .ToList();
            var idList = currentList.Select(t => t.ID).ToList();

            // disable all schedule list in template 
            foreach (var id in idList)
            {
                var scheduleDetail = _scheduleTemplateDetailRepository.FindById(id);
                scheduleDetail.IsActive = false;
            }

            foreach (var item in updateList)
            {
                if (idList.Contains(item.ID))
                {
                    // update 
                    var scheduleDetail = _scheduleTemplateDetailRepository.FindById(item.ID);
                    scheduleDetail.Contents = item.Contents;
                    scheduleDetail.Duration = item.Duration;
                    scheduleDetail.Note = item.Note;
                    scheduleDetail.Position = item.Position;
                    scheduleDetail.ProgramID = item.ProgramID;
                    scheduleDetail.ProgramName = item.ProgramName;
                    scheduleDetail.IsActive = true;
                    _scheduleTemplateDetailRepository.Update(scheduleDetail);
                    _scheduleTemplateDetailRepository.Save();
                }
                else
                {
                    // add new 
                    ScheduleTemplateDetail newDetail = new ScheduleTemplateDetail
                    {
                        Contents = item.Contents,
                        Duration = item.Duration,
                        PerformBy = item.PerformBy,
                        ProgramID = item.ProgramID,
                        ProgramName = item.ProgramName,
                        Position = item.Position,
                        IsActive = true,
                        IsNoted = item.IsNoted,
                        ScheduleTemplateID = templateId,
                    };
                    _scheduleTemplateDetailRepository.Create(newDetail);
                    _scheduleTemplateDetailRepository.Save();
                }
            }
            // update new list

        }
    }
}
