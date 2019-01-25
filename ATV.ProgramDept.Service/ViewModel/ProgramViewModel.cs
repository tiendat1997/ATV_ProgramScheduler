using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.ViewModel
{
    public class ProgramViewModel
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public double? Duration { get; set; }
        public string PerformBy { get; set; }
    }
}
