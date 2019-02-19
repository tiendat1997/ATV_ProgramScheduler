using ATV.ProgramDept.Service.Constant;
using ATV.ProgramDept.Service.Enum;
using ATV.ProgramDept.Service.Implement;
using ATV.ProgramDept.Service.Interface;
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
    public partial class ScheduleTemplateForm : Form
    {

        private ContextMenu contextMenuForColumn1 = new ContextMenu();
        private ContextMenu contextMenuForColumn2 = new ContextMenu();
        public int DayOfWeek { get; set; }

        private readonly IScheduleTemplateRepository _scheduleTemplateRepository;
        public ScheduleTemplateForm(int dayOfWeek)
        {
            InitializeComponent();
            _scheduleTemplateRepository = new ScheduleTemplateRepository();
            DayOfWeek = dayOfWeek;
            SetTitleDayOfWeek();
            InitSampleDataForDataGridView();
        }
        private void InitSampleDataForDataGridView()
        {
            var list = _scheduleTemplateRepository.GetScheduleTemplateDetails(DayOfWeek)
                .Select(s => new ScheduleTemplateDetailViewModel
                {
                    ID = s.ID,
                    Contents = s.Contents,
                    Duration = s.Duration,
                    PerformBy = s.PerformBy,
                    Note = s.Note,
                    Position = s.Position,
                    ProgramID = s.ProgramID,
                    ProgramName = s.ProgramName,                    
                    IsActive = s.IsActive,
                    IsNoted = s.IsNoted
                })
                .ToList();
            //var list = new List<ScheduleTemplateDetailViewModel>
            //{
            //    new ScheduleTemplateDetailViewModel
            //    {
            //        StartTime = new TimeSpan(5,0,0),
            //        ProgramName = "Chương trình tập thể dục",
            //        Contents = "Something vui và funny",
            //        Duration = 15,
            //        PerformBy = "P.Phát Thanh",
            //        Note = "something",
            //        Position = 1,
            //    },
            //    new ScheduleTemplateDetailViewModel
            //    {
            //        StartTime = new TimeSpan(5,0,0),
            //        ProgramName = "Chương trình thiếu nhi",
            //        Contents = "Something vui và funny",
            //        Duration = 33,
            //        PerformBy = "P.Phát Thanh",
            //        Note = "something",
            //        Position = 1,
            //    },
            //    new ScheduleTemplateDetailViewModel
            //    {
            //        StartTime = new TimeSpan(5,0,0),
            //        ProgramName = "Chương trình thời sự sáng",
            //        Contents = "Something vui và funny",
            //        Duration = 60,
            //        PerformBy = "P.Phát Thanh",
            //        Note = "something",
            //        Position = 1,
            //    },                  
            //};
            ScheduleUlities.EstimateStartTime(list);
            var bindList = new BindingList<ScheduleTemplateDetailViewModel>(list);
            var bindSource = new BindingSource(bindList, null);
            dgvScheduleTemplateDetail.DataSource = bindSource;
        }

        private void ScheduleTemplateForm_Resize(object sender, EventArgs e)
        {
            pnlHeader.Width = flpScheduleTemplate.Width;

            dgvScheduleTemplateDetail.Width = flpScheduleTemplate.Width;
            dgvScheduleTemplateDetail.Height = flpScheduleTemplate.Height;
        }

        private void SetTitleDayOfWeek()
        {
            switch (DayOfWeek)
            {
                case (byte)DayOfWeekEnum.Mon:
                    lblTitle.Text = "Thứ 2";
                    break;
                case (byte)DayOfWeekEnum.Tue:
                    lblTitle.Text = "Thứ 3";
                    break;
                case (byte)DayOfWeekEnum.Wed:
                    lblTitle.Text = "Thứ 4";
                    break;
                case (byte)DayOfWeekEnum.Thur:
                    lblTitle.Text = "Thứ 5";
                    break;
                case (byte)DayOfWeekEnum.Fri:
                    lblTitle.Text = "Thứ 6";
                    break;
                case (byte)DayOfWeekEnum.Sat:
                    lblTitle.Text = "Thứ 7";
                    break;
                case (byte)DayOfWeekEnum.Sun:
                    lblTitle.Text = "Chủ nhật ";
                    break;
                default:
                    break;
            }
        }

        private void ScheduleTemplateForm_Load(object sender, EventArgs e)
        {
            dgvScheduleTemplateDetail.AutoGenerateColumns = false;
            contextMenuForColumn1.MenuItems.Add("Make Active", new EventHandler(MakeActive));
            contextMenuForColumn2.MenuItems.Add("Delete", new EventHandler(Delete));
            contextMenuForColumn2.MenuItems.Add("Register", new EventHandler(Register));

        }
        private void MakeActive(object sender, EventArgs eventArgs)
        {

        }
        private void Delete(object sender, EventArgs eventArgs)
        {

        }
        private void Register(object sender, EventArgs eventArgs)
        {

        }

        private void dgvScheduleTemplateDetail_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            if (e.ColumnIndex == 1 && e.Value != null) // StartTime Columns 
            {
                var time = (TimeSpan)e.Value;
                if (TimeFrame.Morning.StartTime <= time && time <= TimeFrame.Morning.EndTime)
                {
                    dgvScheduleTemplateDetail[e.ColumnIndex - 1, e.RowIndex].Value = "Sáng";
                }
                if (TimeFrame.Noon.StartTime <= time && time <= TimeFrame.Noon.EndTime)
                {
                    dgvScheduleTemplateDetail[e.ColumnIndex - 1, e.RowIndex].Value = "Trưa";
                }
                if (TimeFrame.AfternoonAndEvening.StartTime <= time && time <= TimeFrame.AfternoonAndEvening.EndTime)
                {
                    dgvScheduleTemplateDetail[e.ColumnIndex - 1, e.RowIndex].Value = "Chiều tối";
                }
                if (TimeFrame.Dawn.StartTime <= time && time <= TimeFrame.Dawn.EndTime)
                {
                    dgvScheduleTemplateDetail[e.ColumnIndex - 1, e.RowIndex].Value = "Rạng";
                }
            }

            if (e.ColumnIndex == 0)
            {
                if (e.RowIndex == 0)
                {
                    return;
                }

                if (IsTheSameCellValue(e.ColumnIndex, e.RowIndex))
                {
                    e.Value = "";
                    e.FormattingApplied = true;
                }
            }
        }

        private bool IsTheSameCellValue(int column, int row)
        {
            DataGridViewCell cell1 = dgvScheduleTemplateDetail[column, row];
            DataGridViewCell cell2 = dgvScheduleTemplateDetail[column, row - 1];
            if (cell1.Value == null || cell2.Value == null)
            {
                return false;
            }
            return cell1.Value.ToString() == cell2.Value.ToString();
        }

        private void dgvScheduleTemplateDetail_MouseUp(object sender, MouseEventArgs e)
        {
            DataGridView.HitTestInfo hitTestInfo;
            if (e.Button == MouseButtons.Right)
            {
                hitTestInfo = dgvScheduleTemplateDetail.HitTest(e.X, e.Y);
                dgvScheduleTemplateDetail.Rows[hitTestInfo.RowIndex].Selected = true;
                contextMenuForColumn2.Show(dgvScheduleTemplateDetail, new Point(e.X, e.Y));

                dgvScheduleTemplateDetail.ClearSelection();
            }
        }
    }
}
