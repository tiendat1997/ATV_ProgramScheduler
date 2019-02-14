using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.Enum;
using ATV.ProgramDept.Service.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.Implement
{
    public class ProgramRepository : Repository<Program>, IProgramRepository
    {
        public ProgramRepository()
        {
        }

        public IEnumerable<Program> GetAllActivePrograms()
        {
            var activePrograms = this.Find(p => p.IsActive == true);
            return activePrograms;
        }

        public IEnumerable<Program> GetProgramWithType(int programTypeId)
        {
            var programs = Find(p => p.IsActive == true && p.ProgramTypeID == programTypeId);
            return programs; 
        }
    }
}
