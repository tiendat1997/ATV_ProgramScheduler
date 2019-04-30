using ATV.ProgramDept.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.Interface
{
    public interface IEditingHistoryRepository: IRepository<EditingHistory>
    {
        EditingHistory GetLastEditingAsNoTracking();
        EditingHistory GetLastEditing();
    }
}
