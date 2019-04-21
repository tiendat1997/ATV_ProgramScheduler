using ATV.ProgramDept.Service.Utilities;
using ATV.ProgramDept.Service.ViewModel;
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
        private List<ScheduleViewModel> _scheduleViewModels;
        public ConfirmSendEmailForm(SendEmailForm parent)
        {

            this.parent = parent;
            InitializeComponent();
            InitData();
            _scheduleViewModels = scheduleViewModels;
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

        private List<ScheduleViewModel> GetExportSchedule()
        {
            List<ScheduleViewModel> exportSchedule = new List<ScheduleViewModel>();
            if (parent.DateListChecked[0])
            {
                exportSchedule.Add(_scheduleViewModels.Where(s => s.DayOfWeek == (int)DayOfWeek.Monday).FirstOrDefault());
            }
            if (parent.DateListChecked[1])
            {
                exportSchedule.Add(_scheduleViewModels.Where(s => s.DayOfWeek == (int)DayOfWeek.Tuesday).FirstOrDefault());
            }
            if (parent.DateListChecked[2])
            {
                exportSchedule.Add(_scheduleViewModels.Where(s => s.DayOfWeek == (int)DayOfWeek.Wednesday).FirstOrDefault());
            }
            if (parent.DateListChecked[3])
            {
                exportSchedule.Add(_scheduleViewModels.Where(s => s.DayOfWeek == (int)DayOfWeek.Thursday).FirstOrDefault());
            }
            if (parent.DateListChecked[4])
            {
                exportSchedule.Add(_scheduleViewModels.Where(s => s.DayOfWeek == (int)DayOfWeek.Friday).FirstOrDefault());
            }
            if (parent.DateListChecked[5])
            {
                exportSchedule.Add(_scheduleViewModels.Where(s => s.DayOfWeek == (int)DayOfWeek.Saturday).FirstOrDefault());
            }
            if (parent.DateListChecked[6])
            {
                exportSchedule.Add(_scheduleViewModels.Where(s => s.DayOfWeek == (int)DayOfWeek.Sunday).FirstOrDefault());
            }

            return exportSchedule;
        }
    }
}
