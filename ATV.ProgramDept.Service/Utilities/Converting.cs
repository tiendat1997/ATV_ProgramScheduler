using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.Utilities
{
    public class Converting
    {
        public static string ConvertDurationToString(double time)
        {
            string hours = Math.Floor(time / 60).ToString();
            string mins = Math.Floor(time % 60).ToString();
            return hours + ":" + mins;
        }
    }
}
