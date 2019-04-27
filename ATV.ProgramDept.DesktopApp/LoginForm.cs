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
using ATV.ProgramDept.Service.Interface;

namespace ATV.ProgramDept.DesktopApp
{
    public partial class LoginForm : Form
    {
        private readonly IUserRepository _userRepository;
        private readonly IEditingHistoryRepository _editingHistoryRepository;
        public LoginForm()
        {
            _userRepository = new UserRepository();
            _editingHistoryRepository = new EditingHistoryRepository();
            StaticLogger.LogDebug(this.GetType(),"Login Instance Created");
            InitializeComponent();
            //for test
            txtPassword.Text = "123456";
            txtUsername.Text = "admin";
        }
        
        private void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text.Trim().Equals("") || txtPassword.Text.Trim().Equals(""))
            {
                lblWarning.Text = "Vui lòng nhập Username và Password";
                return;
            }
            LoggedInUserInfomation user = _userRepository.Login(txtUsername.Text.Trim(), txtPassword.Text.Trim());
            
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

            //Thông báo người sửa gần nhất
            EditingHistory MostRecentEditingHistory = _editingHistoryRepository.GetAll()
                .OrderByDescending(p => p.Time).First();
            MessageBox.Show("Lần sửa gần nhất bởi " 
                + MostRecentEditingHistory.User.Username 
                + "(" 
                + MostRecentEditingHistory.User.Name 
                + ") lúc " 
                + MostRecentEditingHistory.Time.ToLongTimeString()
                + " ngày " + MostRecentEditingHistory.Time.ToString("dd/MM/yyyy")
                + "\nTuần được sửa: Tuần " 
                + TimeUtils.GetIso8601WeekOfYear(MostRecentEditingHistory.Week.FromDate)
                + " (Từ " + MostRecentEditingHistory.Week.FromDate.ToString("dd/MM/yyyy")
                + " tới " + MostRecentEditingHistory.Week.ToDate.ToString("dd/MM/yyyy")
                + ")"
                );
            
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
