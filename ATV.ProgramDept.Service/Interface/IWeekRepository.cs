using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.Interface
{
    public interface IWeekRepository
    {
        int GetWeekId(DateTime from, DateTime to);
    }
}
