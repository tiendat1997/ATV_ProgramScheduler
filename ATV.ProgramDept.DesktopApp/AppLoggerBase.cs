using NLog;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.DesktopApp
{
    public class AppLoggerBase
    {
        protected Logger Log {get; private set;}
        public AppLoggerBase(Type declaringFile)
        {
            Log = LogManager.GetLogger(declaringFile.FullName);
        }
    }
}
