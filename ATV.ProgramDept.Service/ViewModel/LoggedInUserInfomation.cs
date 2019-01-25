using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.ViewModel
{
    public class LoggedInUserInfomation
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Phone1 { get; set; }
        public string Phone2 { get; set; }
        public string Email { get; set; }
        public string Rolename { get; set; }
        public string Username { get; set; }
        public bool isPasswordChanged { get; set; }
    }
}
