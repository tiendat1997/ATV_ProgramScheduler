using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.Implement
{
    public class EditingHistoryRepository : Repository<EditingHistory>, IEditingHistoryRepository
    {
        public EditingHistoryRepository()
        {

        }

        public EditingHistory GetLastEditing()
        {
            var lastOne = dbSet
               .OrderByDescending(p => p.Time)
               .FirstOrDefault();
            return lastOne;
        }

        public EditingHistory GetLastEditingAsNoTracking()
        {
            var lastOne = dbSet
                .AsNoTracking()
                .OrderByDescending(p => p.Time)
                .FirstOrDefault();
            return lastOne;
        }
    }
}
