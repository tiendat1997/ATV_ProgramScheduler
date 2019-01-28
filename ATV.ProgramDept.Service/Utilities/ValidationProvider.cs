using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.Utilities
{
    public static class ValidationProvider
    {        
        public static bool RequiredStringIsValid(string value)
        {
            if (value == string.Empty)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
        public static bool RegExStringIsValid(string value, string regex)
        {           
            // test text with expression
            if (Regex.IsMatch(value, regex))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
