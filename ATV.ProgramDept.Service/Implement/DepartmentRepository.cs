using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.Implement
{
    public class DepartmentRepository : Repository<Department>, IDepartmentRepository
    {
        public IEnumerable<Department> GetProgramsWithActiveOrNot(bool isActive)
        {
            var programs = Find(u => u.IsActive == isActive);
            return programs;
        }
    }
}
