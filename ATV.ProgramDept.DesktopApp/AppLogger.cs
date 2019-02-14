using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.DesktopApp
{
    public class AppLogger : AppLoggerBase
    {
        public AppLogger() : base(System.Reflection.MethodBase.GetCurrentMethod().DeclaringType)
        {
            Log.Info("instance created");
        }
    }
}
