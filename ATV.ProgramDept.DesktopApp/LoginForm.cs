using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ATV.ProgramDept.Service.Utilities;
using ATV.ProgramDept.Service.Implement;
using ATV.ProgramDept.Service.ViewModel;
using ATV.ProgramDept.Entity;

namespace ATV.ProgramDept.DesktopApp
{
    public partial class LoginForm : Form
    {
        UserRepository UserRepository;
        EditingHistoryRepository EditingHistoryRepository;
        public LoginForm()
        {
            UserRepository = new UserRepository();
            EditingHistoryRepository = new EditingHistoryRepository();
            InitializeComponent();
        }
        
        private void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text.Trim().Equals("") || txtPassword.Text.Trim().Equals(""))
            {
                lblWarning.Text = "Vui lòng nhập Username và Password";
                return;
            }
            LoggedInUserInfomation user = UserRepository.Login(txtUsername.Text.Trim(), txtPassword.Text.Trim());
            
            if (user == null)
            {
                txtPassword.Clear();
                lblWarning.Text = "Sai Username hoặc Password! Vui lòng nhập lại";
                return;
            }
            Program.User = user;
            if (!user.isPasswordChanged)
            {
                this.Hide();
                ChangePasswordForm changePasswordForm = new ChangePasswordForm();
                changePasswordForm.ShowDialog();
                this.Close();
                return;
            }
            EditingHistory MostRecentEditingHistory = EditingHistoryRepository.GetAll()
                .OrderByDescending(p => p.Time).First();
            //MessageBox.Show("")
            ////Thông báo người sửa gần nhất
            //
            ////
            this.Hide();
            EditorHomeForm editorHome = new EditorHomeForm();
            editorHome.ShowDialog();
            this.Close();

        }

        private void txtUsername_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Return)
            {
                this.btnLogin.PerformClick();
            }
        }

        private void txtPassword_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Return)
            {
                this.btnLogin.PerformClick();
            }
        }
    }
}
