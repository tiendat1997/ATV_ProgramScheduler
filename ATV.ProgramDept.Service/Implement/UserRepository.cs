using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.Interface;
using ATV.ProgramDept.Service.Utilities;
using ATV.ProgramDept.Service.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATV.ProgramDept.Service.Implement
{
    public class UserRepository : Repository<User>, IUserRepository
    {
        public bool ChangePassword(string Username, string NewPassword)
        {
            string PasswordHash = MD5Utils.CreateMD5FromASCII(NewPassword);
            User user = this._context.Users
                .Where(p => p.Username == Username)
                .FirstOrDefault();
            if (user == null)
            {
                return false;
            }
            user.PasswordHash = PasswordHash;
            user.IsPasswordChanged = true;
            Update(user);
            Save();
            return true;
        }

        public IEnumerable<User> GetUsers(bool isPassChanged)
        {
            var users = Find(u => u.IsPasswordChanged == isPassChanged).ToList();
            return users; 
        }

        public LoggedInUserInfomation Login(string Username, string Password)
        {
            string PasswordHash = MD5Utils.CreateMD5FromASCII(Password);
            User user = this._context.Users
                .Where(p => p.Username == Username && p.PasswordHash == PasswordHash)
                .FirstOrDefault();
            if (user == null)
            {
                return null;
            }
            else
            {
                LoggedInUserInfomation loggedUser = new LoggedInUserInfomation()
                {
                    ID = user.ID,
                    Email = user.Email,
                    Name = user.Name,
                    Phone1 = user.Phone1,
                    Phone2 = user.Phone2,
                    Username = user.Username,
                    Rolename = user.Role.Name,
                    isPasswordChanged = user.IsPasswordChanged
                };
                return loggedUser;
            }
        }
    }
}
