using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Entity
{
    public class BaseDbContext : DbContext
    {
        public BaseDbContext(string context) : base($"name={context}")
        {

        }
    }
}
