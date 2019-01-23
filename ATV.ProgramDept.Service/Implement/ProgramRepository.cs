using ATV.ProgramDept.Entity;
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
    }
}
