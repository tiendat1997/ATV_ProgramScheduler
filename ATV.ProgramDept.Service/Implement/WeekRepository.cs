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
        public int GetWeekId(DateTime from, DateTime to)
        {
            return this.Find(w => w.FromDate == from && w.ToDate == to).FirstOrDefault().ID;
        }
    }
}
