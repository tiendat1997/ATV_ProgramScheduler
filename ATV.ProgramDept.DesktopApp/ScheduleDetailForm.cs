using ATV.ProgramDept.Service.Enum;
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
    public partial class ScheduleDetailForm : Form
    {
        private byte DayOfWeek { get; set; }
        private string Title { get; set; }                

        public ScheduleDetailForm(string title, byte dayOfWeek)
        {
            InitializeComponent();
            Title = title;
            lblTitle.Text = Title;
            DayOfWeek = dayOfWeek;
            SetTitleDayOfWeek();
            SetupDataGridView();
        }
        private void SetupDataGridView()
        {
            dgvScheduleDetails.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;          
        }
        private void SetTitleDayOfWeek()
        {
            switch (DayOfWeek)
            {
                case (byte)DayOfWeekEnum.Mon:
                    lblDayOfWeek.Text = "Thứ 2";
                    break;
                case (byte)DayOfWeekEnum.Tue:
                    lblDayOfWeek.Text = "Thứ 3";
                    break;
                case (byte)DayOfWeekEnum.Wed:
                    lblDayOfWeek.Text = "Thứ 4";
                    break;
                case (byte)DayOfWeekEnum.Thur:
                    lblDayOfWeek.Text = "Thứ 5";
                    break;
                case (byte)DayOfWeekEnum.Fri:
                    lblDayOfWeek.Text = "Thứ 6";
                    break;
                case (byte)DayOfWeekEnum.Sat:
                    lblDayOfWeek.Text = "Thứ 7";
                    break;
                case (byte)DayOfWeekEnum.Sun:
                    lblDayOfWeek.Text = "Chủ nhật ";
                    break;
                default:
                    break;
            }
        }

        private void ScheduleDetailForm_Load(object sender, EventArgs e)
        {
            LoadScheduleTemplate();
        }
        private void LoadScheduleTemplate()
        {
            //var lists = _scheduleTemplateRepository
            //    .GetAll()
            //    .Select(x => new ScheduleTemplateViewModel
            //    {
            //        ID = x.ID,
            //        StartTime = "",
            //        ProgramName = x.Program.Name,
            //        Content = x.Contents,
            //        PerformBy = x.PerformBy,
            //        Duration = x.Duration,
            //        Note = x.Note
            //    });

            //var bindingList = new BindingList<ScheduleTemplateViewModel>();
            //var source = new BindingSource(bindingList, null);
            //dgvMorning.DataSource = source;
        }

        private void flpContent_Resize(object sender, EventArgs e)
        {
            pnlHeader.Width = flpContent.Width;
            pnlHeader.Height = flpContent.Height;

            dgvScheduleDetails.Width = flpContent.Width;
            dgvScheduleDetails.Height = flpContent.Height;
        }
    }
}
