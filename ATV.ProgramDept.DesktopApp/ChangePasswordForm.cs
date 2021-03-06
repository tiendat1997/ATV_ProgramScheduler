﻿using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.Implement;
using ATV.ProgramDept.Service.Interface;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ATV.ProgramDept.DesktopApp
{
    public partial class ChangePasswordForm : Form
    {
        private readonly IUserRepository _userRepository;
        private readonly IEditingHistoryRepository _editingHistoryRepository;
        public ChangePasswordForm()
        {
            _userRepository = new UserRepository();
            _editingHistoryRepository = new EditingHistoryRepository();
            InitializeComponent();
        }

        private void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtPassword.Text.Trim().Equals("") || txtConfirmPassword.Text.Trim().Equals(""))
            {
                lblWarning.Text = "Vui lòng nhập *Mật khẩu* và *Nhập lại mật khẩu*!";
                return;
            }
            if (!txtPassword.Text.Trim().Equals(txtConfirmPassword.Text.Trim()))
            {
                lblWarning.Text = "*Mật khẩu* và *Nhập lại mật khẩu* chưa khớp!";
                return;
            }
            bool result = _userRepository.ChangePassword(Program.User.Username, txtPassword.Text.Trim());
            if (result)
            {
                Program.User.isPasswordChanged = true;
                //Thông báo người sửa gần nhất
                EditingHistory MostRecentEditingHistory = _editingHistoryRepository.GetAll()
                    .OrderByDescending(p => p.Time).First();
                MessageBox.Show("Lần sửa gần nhất bởi "
                    + MostRecentEditingHistory.User.Username
                    + "("
                    + MostRecentEditingHistory.User.Name
                    + ") lúc "
                    + MostRecentEditingHistory.Time.ToLongTimeString());
                this.Hide();
                EditorHomeForm editorHome = new EditorHomeForm();
                editorHome.ShowDialog();
                this.Close();
            }
            else
            {
                lblWarning.Text = "Đổi mật khẩu thất bại, vui lòng thử lại hoặc thoát phần mềm và kiểm tra lại hệ thống!";
                return;
            }
        }

        private void txtPassword_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Return)
            {
                this.btnSubmit.PerformClick();
            }
        }

        private void txtConfirmPassword_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Return)
            {
                this.btnSubmit.PerformClick();
            }
        }
    }
}
