using ATV.ProgramDept.Service.Utilities;
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
    public partial class ConfirmSendEmailForm : Form
    {
        SendEmailForm parent;
        public ConfirmSendEmailForm(SendEmailForm parent)
        {

            this.parent = parent;
            InitializeComponent();
            InitData();
        }

        void InitData()
        {
            txtEmail.Text = parent.Department.Email;
            txtSubject.Text = "Gửi lịch phát sóng";
            rtbContent.Text = "Kính gửi...";
            lblFileName.Text = "lich_phat_song";
        }

        private void BtnSend_Click(object sender, EventArgs e)
        {
            var result = MailUtils.SendEmailAsync(txtEmail.Text, txtSubject.Text, rtbContent.Text);
            MessageBox.Show("Đã gửi email tới " + parent.Department.Name);
            this.Close();
        }
    }
}
