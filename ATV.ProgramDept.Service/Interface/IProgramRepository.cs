﻿using ATV.ProgramDept.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.Interface
{
    public interface IProgramRepository : IRepository<Program>
    {
        IEnumerable<Program> GetAllActivePrograms();
        IEnumerable<Program> GetProgramWithType(int programTypeId); 
    }
}
