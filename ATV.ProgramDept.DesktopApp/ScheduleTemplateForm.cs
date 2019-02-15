using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.Enum;
using ATV.ProgramDept.Service.Implement;
using ATV.ProgramDept.Service.Interface;
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
    public partial class ScheduleTemplateForm : Form
    {        
        private byte dayOfWeek { get; set; }
        private List<ScheduleViewModel> viewList;
        private readonly IScheduleTemplateRepository _scheduleTemplateRepository; 
        
        public ScheduleTemplateForm(byte dayOfWeek)
        {
            InitializeComponent();
            _scheduleTemplateRepository = new ScheduleTemplateRepository();            
            this.dgvMorning.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;            
            this.dgvAfternoonAndEvening.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvNoon.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvDawn.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            SetTitleDayOfWeek();            
        }        

        private void LoadScheduleTemplate()
        {
            var lists = _scheduleTemplateRepository
                .GetAll()
                .Select(x => new ScheduleTemplateViewModel {
                    ID = x.ID,
                    StartTime = "",
                    ProgramName = x.Program.Name,
                    Content = x.Contents,
                    PerformBy = x.PerformBy,
                    Duration = x.Duration,
                    Note = x.Note
                });            

            var bindingList = new BindingList<ScheduleTemplateViewModel>();
            var source = new BindingSource(bindingList, null);
            dgvMorning.DataSource = source;
        }

        private void SetTitleDayOfWeek()
        {
            //switch (dayOfWeek)
            //{
            //    case (byte)DayOfWeekEnum.Mon:
            //        lblDayOfWeek.Text = "Thứ 2";
            //        break;
            //    case (byte)DayOfWeekEnum.Tue:
            //        lblDayOfWeek.Text = "Thứ 3";
            //        break;
            //    case (byte)DayOfWeekEnum.Wed:
            //        lblDayOfWeek.Text = "Thứ 4";
            //        break;
            //    case (byte)DayOfWeekEnum.Thur:
            //        lblDayOfWeek.Text = "Thứ 5";
            //        break;
            //    case (byte)DayOfWeekEnum.Fri:
            //        lblDayOfWeek.Text = "Thứ 6";
            //        break;
            //    case (byte)DayOfWeekEnum.Sat:
            //        lblDayOfWeek.Text = "Thứ 7";
            //        break;
            //    case (byte)DayOfWeekEnum.Sun:
            //        lblDayOfWeek.Text = "Chủ nhật ";
            //        break;
            //    default:
            //        break;
            //}
        }

        private void dgvSchedule_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void ScheduleTemplateForm_Load(object sender, EventArgs e)
        {
            LoadScheduleTemplate();
        }

        private void ScheduleTemplateForm_FormClosed(object sender, FormClosedEventArgs e)
        {
            _scheduleTemplateRepository.Dispose();
        }

        private void ScheduleTemplateForm_Resize(object sender, EventArgs e)
        {
            panel1.Width = flowLayoutPanel1.Width;
            panel1.Height = flowLayoutPanel1.Height;           

            dgvMorning.Width = flowLayoutPanel1.Width;
            dgvMorning.Height = flowLayoutPanel1.Height;
            
        }
    }
}
