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
            if (mins.Length == 1)
            {
                mins = "0" + mins;
            }
            string secs = Math.Floor((time % 1)*60).ToString();
            if (secs.Length == 1)
            {
                secs = "0" + secs;
            }
            return hours + ":" + mins + ":" + secs;
        }
    }
}
