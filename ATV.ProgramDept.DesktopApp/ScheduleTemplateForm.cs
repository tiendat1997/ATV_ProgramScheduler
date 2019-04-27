using ATV.ProgramDept.DesktopApp.Interface;
using ATV.ProgramDept.Entity;
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
    public partial class ScheduleTemplateForm : Form, IInsertProgram
    {
        private ContextMenu contextMenuDgv = new ContextMenu();
        private List<ScheduleTemplateDetailViewModel> listTemplateDetails;
        private ScheduleTemplateViewModel schedule;
        public int DayOfWeek { get; set; }
        private int currentRowIndex;
        private readonly IScheduleTemplateRepository _scheduleTemplateRepository;
        private readonly IProgramRepository _programRepository;
        private IEditingHistoryRepository _editingHistoryRepository;
        public ScheduleTemplateForm(int dayOfWeek)
        {
            InitializeComponent();
            _scheduleTemplateRepository = new ScheduleTemplateRepository();
            _programRepository = new ProgramRepository();
            _editingHistoryRepository = new EditingHistoryRepository();
            DayOfWeek = dayOfWeek;
            SetTitleDayOfWeek();
            InitSampleDataForDataGridView();
        }
        private void InitSampleDataForDataGridView()
        {
            schedule = _scheduleTemplateRepository.GetScheduleTemplate(DayOfWeek);            
            listTemplateDetails = schedule.Details;
            EstimateAndBindSource();
        }

        private void ScheduleTemplateForm_Resize(object sender, EventArgs e)
        {
            pnlHeader.Width = flpScheduleTemplate.Width;

            dgvScheduleTemplateDetail.Width = flpScheduleTemplate.Width;
            dgvScheduleTemplateDetail.Height = flpScheduleTemplate.Height - 50;
        }

        private void SetTitleDayOfWeek()
        {
            switch (DayOfWeek)
            {
                case (byte)DayOfWeekEnum.Monday:
                    lblTitle.Text = "Thứ 2";
                    break;
                case (byte)DayOfWeekEnum.Tuesday:
                    lblTitle.Text = "Thứ 3";
                    break;
                case (byte)DayOfWeekEnum.Wednesday:
                    lblTitle.Text = "Thứ 4";
                    break;
                case (byte)DayOfWeekEnum.Thursday:
                    lblTitle.Text = "Thứ 5";
                    break;
                case (byte)DayOfWeekEnum.Friday:
                    lblTitle.Text = "Thứ 6";
                    break;
                case (byte)DayOfWeekEnum.Saturday:
                    lblTitle.Text = "Thứ 7";
                    break;
                case (byte)DayOfWeekEnum.Sunday:
                    lblTitle.Text = "Chủ nhật ";
                    break;
                default:
                    break;
            }
        }

        private void ScheduleTemplateForm_Load(object sender, EventArgs e)
        {
            dgvScheduleTemplateDetail.AutoGenerateColumns = false;
            dgvScheduleTemplateDetail.ScrollBars = ScrollBars.Both;
            contextMenuDgv.MenuItems.Add("Chèn CT cố định", new EventHandler(InsertFixProgramEvent));
            contextMenuDgv.MenuItems.Add("Chèn CT chen giờ", new EventHandler(InsertFlexProgramEvent));
        }
        // Insert CT Cố định
        private void InsertFixProgramEvent(object sender, EventArgs eventArgs)
        {
            StaticProgramForm staticProgramForm = new StaticProgramForm(this);
            staticProgramForm.ShowDialog();
        }
        // Insert CT chen giờ
        private void InsertFlexProgramEvent(object sender, EventArgs eventArgs)
        {
            InsertedProgramForm insertedProgramForm = new InsertedProgramForm(this);
            insertedProgramForm.ShowDialog();
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
            DataGridView.HitTestInfo hit = dgvScheduleTemplateDetail.HitTest(e.X, e.Y);
            if (e.Button == MouseButtons.Right)
            {
                if ((hit.RowY != -1 && hit.ColumnX != -1) ||
                    (hit.RowY == -1 && hit.ColumnX == -1 && hit.Type == DataGridViewHitTestType.None))
                {
                    if (hit.RowIndex != -1)
                    {
                        dgvScheduleTemplateDetail.Rows[hit.RowIndex].Selected = true;
                        currentRowIndex = hit.RowIndex;
                    }
                    else
                    {
                        currentRowIndex = 0;
                    }
                    contextMenuDgv.Show(dgvScheduleTemplateDetail, new Point(e.X, e.Y));
                    dgvScheduleTemplateDetail.ClearSelection();
                }
            }
        }

        private void dgvScheduleTemplateDetail_CellValueChanged(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 5) // Duration Columns
            {
                ScheduleUlities.EstimateStartTime(listTemplateDetails);
                dgvScheduleTemplateDetail.Refresh();
            }
        }

        public void ReadyForInsertProgram(int programID)
        {
            ScheduleTemplateDetailViewModel scheduleDetail = _programRepository.Find(p => p.ID == programID).
                Select(p => new ScheduleTemplateDetailViewModel()
                {
                    Duration = p.Duration.Value,
                    ProgramName = p.Name,
                    ProgramID = p.ID,
                    PerformBy = p.PerformBy,
                }).FirstOrDefault();
            // check the last row if Dawn 

            if (listTemplateDetails.Count > 0)
            {
                var lastItem = listTemplateDetails[listTemplateDetails.Count - 1];
                var addDuration = new TimeSpan(0, (int)(scheduleDetail.Duration + lastItem.Duration), 0);
                if (lastItem.StartTime >= TimeFrame.Dawn.StartTime
                    && lastItem.StartTime <= TimeFrame.Dawn.EndTime
                    && lastItem.StartTime.Add(addDuration) >= TimeFrame.Morning.StartTime)
                {
                    MessageBox.Show("Không thêm được vì lịch đã đầy!");
                    return;
                }
            }
            listTemplateDetails.Insert(currentRowIndex, scheduleDetail);
            ReorderPositionScheduler();
            EstimateAndBindSource();

        }
        private void EstimateAndBindSource()
        {
            ScheduleUlities.EstimateStartTime(listTemplateDetails);
            var bindingList = new BindingList<ScheduleTemplateDetailViewModel>(listTemplateDetails);
            var source = new BindingSource(bindingList, null);
            dgvScheduleTemplateDetail.DataSource = source;
            dgvScheduleTemplateDetail.Update();
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            _scheduleTemplateRepository.UpdateScheduleTemplateDetails(schedule.ID, listTemplateDetails);
        }
        private void ReorderPositionScheduler()
        {
            for (int i = 0; i < listTemplateDetails.Count; i++)
            {
                listTemplateDetails[i].Position = i;
            }
        }

        private void dgvScheduleTemplateDetail_UserDeletedRow(object sender, DataGridViewRowEventArgs e)
        {
            ReorderPositionScheduler();
            EstimateAndBindSource();
        }

        private void ScheduleTemplateForm_FormClosing(object sender, FormClosingEventArgs e)
        {
            EditingHistory LatestEditingHistory = _editingHistoryRepository.GetAll().OrderByDescending(p => p.Time).FirstOrDefault();
            LatestEditingHistory.IsFinished = true;
            _editingHistoryRepository.Update(LatestEditingHistory);
            _editingHistoryRepository.Save();
        }

        private void ScheduleTemplateForm_FormClosed(object sender, FormClosedEventArgs e)
        {
            EditingHistory LatestEditingHistory = _editingHistoryRepository.GetAll().OrderByDescending(p => p.Time).FirstOrDefault();
            LatestEditingHistory.IsFinished = true;
            _editingHistoryRepository.Update(LatestEditingHistory);
            _editingHistoryRepository.Save();
        }
    }
}
