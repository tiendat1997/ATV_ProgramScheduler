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
        private List<ScheduleTemplateDetailViewModel> listTemplateDetails; 
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
            listTemplateDetails = _scheduleTemplateRepository.GetScheduleTemplateDetails(DayOfWeek)
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
            ScheduleUlities.EstimateStartTime(listTemplateDetails);
            var bindList = new BindingList<ScheduleTemplateDetailViewModel>(listTemplateDetails);
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
            contextMenuForColumn2.MenuItems.Add("Chèn CT cố định", new EventHandler(InsertFixProgramEvent));
            contextMenuForColumn2.MenuItems.Add("Chèn CT chen giờ", new EventHandler(InsertFixProgramEvent));            
        }
        private void InsertFixProgramEvent(object sender, EventArgs eventArgs)
        {

        }
        private void InsertFlexProgramEvent(object sender, EventArgs eventArgs)
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
            DataGridView.HitTestInfo hitTestInfo = dgvScheduleTemplateDetail.HitTest(e.X, e.Y);
            if (hitTestInfo.RowY != -1 && hitTestInfo.ColumnX != 1 && e.Button == MouseButtons.Right)
            {                
                dgvScheduleTemplateDetail.Rows[hitTestInfo.RowIndex].Selected = true;
                contextMenuForColumn2.Show(dgvScheduleTemplateDetail, new Point(e.X, e.Y));

                dgvScheduleTemplateDetail.ClearSelection();
            }
        }

        private void dgvScheduleTemplateDetail_CellValueChanged(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 4) // Duration Columns
            {
                ScheduleUlities.EstimateStartTime(listTemplateDetails);
                dgvScheduleTemplateDetail.Refresh();
            }
        }
    }
}
