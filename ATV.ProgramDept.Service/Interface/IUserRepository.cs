using ATV.ProgramDept.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ATV.ProgramDept.Service.ViewModel;

namespace ATV.ProgramDept.Service.Interface
{
    public interface IUserRepository: IRepository<User>
    {
        LoggedInUserInfomation Login(string Username, string Password);
        bool ChangePassword(string Username, string Password);
        IEnumerable<User> GetUsers(bool isActive);        
    }
}
