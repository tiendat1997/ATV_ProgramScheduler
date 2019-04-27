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
    public partial class EditorHomeForm : Form, IInsertProgram
    {
        private bool isEdit = false;
        private bool IsInsertInDgv = false;
        private int currentRowIndex;
        private int weekId;
        private int year;
        private int weekNumber;
        private int currentTabPageIndex = 0;
        private double oldDurationValue = 0;
        private ScheduleViewModel currentSchedule;
        //private List<ScheduleDetailViewModel> weekSchedules;        
        private List<ScheduleViewModel> weekSchedules;
        private List<ScheduleDetailViewModel> viewList;
        private IScheduleRepository scheduleRepository = new ScheduleRepository();
        private IScheduleDetailRepository scheduleDetailRepository = new ScheduleDetailRepository();
        private IWeekRepository weekRepository = new WeekRepository();
        private int programIDToInsert;
        private bool readyForInsert;
        private readonly IProgramRepository _programRepository;
        private readonly IScheduleTemplateRepository _templateRepository;
        private IEditingHistoryRepository _editingHistoryRepository;
        private IScheduleRepository _scheduleRepository;

        private ContextMenu contextMenuDgv = new ContextMenu();

        private readonly int COL_SESSION = 0;
        private readonly int COL_STARTTIME = 2;

        public EditorHomeForm()
        {
            readyForInsert = false;
            _programRepository = new ProgramRepository();
            _editingHistoryRepository = new EditingHistoryRepository();
            _templateRepository = new ScheduleTemplateRepository();
            _scheduleRepository = new ScheduleRepository();

            InitializeComponent();
            if (!Program.User.Rolename.Equals("Admin"))
            {
                this.btnToAdmin.Hide();
            }
            year = DateTime.Now.Year;
            weekNumber = TimeUtils.GetIso8601WeekOfYear(DateTime.Now);
            InitDataGridView((int)DayOfWeekEnum.Monday);
        }
        private void LoadDataToGridView(int dayOfWeek)
        {
            currentSchedule = weekSchedules.Where(x => x.Date.DayOfWeek == dayOfWeek).FirstOrDefault();
            if (currentSchedule == null)
            {
                currentSchedule = new ScheduleViewModel();
                viewList = new List<ScheduleDetailViewModel>();
            }
            else
            {
                viewList = currentSchedule.Details.OrderBy(x => x.Position).ToList();
            }

            ScheduleUlities.EstimateStartTime(viewList);
            var bindingList = new BindingList<ScheduleDetailViewModel>(viewList);
            var source = new BindingSource(bindingList, null);
            dgvSchedule.DataSource = source;

            txtDate.Text = currentSchedule.Date.DateOfYear.ToShortDateString();
        }

        private void InitDataGridView(int dayOfWeek)
        {
            bool isNew = false;
            //_scheduleRepository = new ScheduleRepository();                        
            lblWeek.Text = "Tuần: " + weekNumber;
            dtpYear.Value = new DateTime(year, 1, 1);
            DateTime monday = TimeUtils.FirstDateOfWeekISO8601(year, weekNumber);
            DateTime sunday = monday.AddDays(6);
            weekId = weekRepository.GetWeekId(monday, sunday);
            if (weekId == -1)
            {
                // GENERATE NEW WEEK SCHEDULE and Dates
                weekRepository.GenerateNewWeekAndDates(monday, sunday);
                isNew = true; 
            }            
            weekId = weekRepository.GetWeekId(monday, sunday);
            weekSchedules = _scheduleRepository.GetWeekSchedule(weekId).ToList();            
            if (isNew)
            {
                // COPY SCHEDULE DETAIL OF TEMPLATE INTO CURRENT SCHEDULE                
                _templateRepository.CopyScheduleTemplateToSchedule(weekSchedules);
            }
            weekSchedules = _scheduleRepository.GetWeekSchedule(weekId).ToList();
            LoadDataToGridView(dayOfWeek);
        }

        private void btnToAdmin_Click(object sender, EventArgs e)
        {
            this.Hide();
            AdminHomeForm adminHome = new AdminHomeForm();
            adminHome.ShowDialog();
            this.Close();
        }

        private void tsmiEditorExport_Click(object sender, EventArgs e)
        {
            if (!isEdit)
            {
                ExportForm adminHome = new ExportForm(weekSchedules);
                adminHome.ShowDialog();
            }
            else
            {
                MessageBox.Show("Hãy lưu những thay đổi trước khi xuất lịch");
            }

        }


        private void tabPage1_Click(object sender, EventArgs e)
        {

        }


        private void dgvSchedule_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (!readyForInsert)
            {
                return;
            }

            InsertReadyProgram(e.RowIndex);

            //ScheduleDetailViewModel scheduleViewModel = _programRepository.Find(p => p.ID == programIDToInsert).
            //    Select(p => new ScheduleDetailViewModel()
            //    {
            //        Duration = p.Duration.Value,
            //        ProgramName = p.Name,
            //        PerformBy = p.PerformBy,
            //        ProgramID = p.ID,
            //        ScheduleID = currentSchedule.ID
            //    }).FirstOrDefault();
            //viewList.Insert(e.RowIndex, scheduleViewModel);
            //ReorderPositionScheduler();
            //var result = ScheduleUlities.EstimateStartTime(viewList);
            //if (!result)
            //{
            //    viewList.RemoveAt(e.RowIndex);
            //    MessageBox.Show("Lịch ngày hiện tại đã đầy, không thể thêm chương trình");
            //    ScheduleUlities.EstimateStartTime(viewList);
            //}
            //readyForInsert = false;
            //dgvSchedule.Cursor = System.Windows.Forms.Cursors.Default;
            //var bindingList = new BindingList<ScheduleDetailViewModel>(viewList);
            //var source = new BindingSource(bindingList, null);
            //dgvSchedule.DataSource = source;
            //dgvSchedule.Update();
        }

        private void btnSaveSchedule_Click(object sender, EventArgs e)
        {
            //_editingHistoryRepository = new EditingHistoryRepository();
            EditingHistory LatestEditingHistory;
            if (isEdit)
            {
                LatestEditingHistory = _editingHistoryRepository.GetLastEditing();
                isEdit = !isEdit;
                //change button text
                btnSaveSchedule.Text = "Chỉnh sửa";

                //update finish editing block
                LatestEditingHistory.IsFinished = true;
                _editingHistoryRepository.Update(LatestEditingHistory);
                _editingHistoryRepository.Save();

                //update data to db
                UpdateDataCurrentInTabPageToList();
                scheduleDetailRepository.UpdateWeekSchedule(weekId, TransformToDetailList(weekSchedules));
            }
            else
            {
                LatestEditingHistory = _editingHistoryRepository.GetLastEditingAsNoTracking();
                if (LatestEditingHistory.IsFinished)
                {
                    isEdit = !isEdit;

                    //change button text
                    btnSaveSchedule.Text = "Lưu";

                    //update start editing block
                    
                        
                    EditingHistory editingHistory = new EditingHistory()
                    {
                        UserID = Program.User.ID,
                        WeekID = weekSchedules.FirstOrDefault().Date.WeekID,
                        IsFinished = false,
                        Time = DateTime.Now
                    };
                    _editingHistoryRepository.Create(editingHistory);
                    _editingHistoryRepository.Save();
                    //update data from db
                    InitDataGridView(tabDays.SelectedIndex + 1);
                }
                else
                {
                    MessageBox.Show("Hiện tại " + LatestEditingHistory.User.Username + " đang thực hiện công việc chỉnh sửa, vui lòng quay lại sau!");
                }
            }
        }

        private List<ScheduleDetailViewModel> TransformToDetailList(List<ScheduleViewModel> weekSchedule)
        {
            var detailList = new List<ScheduleDetailViewModel>();

            weekSchedules.ForEach(x => detailList.AddRange(x.Details));

            return detailList;
        }

        private void dgvSchedule_CellEnter(object sender, DataGridViewCellEventArgs e)
        {
            if (isEdit)
            {
                this.dgvSchedule.CurrentCell.ReadOnly = false;
            }
            else
            {
                this.dgvSchedule.CurrentCell.ReadOnly = true;
            }
        }

        private void tabControl1_SelectedIndexChanged(object sender, EventArgs e)
        {
            UpdateDataCurrentInTabPageToList();

            dayScheduleHomeContainer.Parent = tabDays.SelectedTab;
            currentTabPageIndex = tabDays.SelectedIndex;
            LoadDataToGridView(tabDays.SelectedIndex + 1);
        }



        private void tsmiInsertFlexProgram_Click(object sender, EventArgs e)
        {
            if (!isEdit)
            {
                MessageBox.Show("Vui lòng nhấn vào nút 'Chỉnh sửa' để có thể chèn chương trình!");
                return;
            }
            InsertedProgramForm insertedProgramForm = new InsertedProgramForm(this);
            insertedProgramForm.ShowDialog();
        }



        public void ReadyForInsertProgram(int ProgramID)
        {
            if (IsInsertInDgv)
            {
                ScheduleDetailViewModel scheduleDetail =
                    _programRepository.Find(p => p.ID == ProgramID)
                    .Select(p => new ScheduleDetailViewModel()
                    {
                        Duration = p.Duration.Value,
                        ProgramName = p.Name,
                        PerformBy = p.PerformBy,
                        ProgramID = p.ID,
                        ScheduleID = currentSchedule.ID,
                        
                    }).FirstOrDefault();
                var scheduleDuration = new TimeSpan(0, (int)scheduleDetail.Duration, 0);
                // check the last row if Dawn 
                if (viewList.Count > 0)
                {
                    var lastItem = viewList[viewList.Count - 1];
                    if (lastItem.StartTime >= TimeFrame.Dawn.StartTime
                        && lastItem.StartTime <= TimeFrame.Dawn.EndTime
                        && lastItem.StartTime.Add(scheduleDuration) >= TimeFrame.Morning.StartTime)
                    {
                        MessageBox.Show("Không");
                        return;
                    }
                }

                viewList.Insert(currentRowIndex, scheduleDetail);

                ReorderPositionScheduler();

                var result = ScheduleUlities.EstimateStartTime(viewList);
                if (!result)
                {
                    viewList.RemoveAt(currentRowIndex);
                    MessageBox.Show("Lịch ngày hiện tại đã đầy, không thể thêm chương trình");
                    ScheduleUlities.EstimateStartTime(viewList);
                }
                var bindingList = new BindingList<ScheduleDetailViewModel>(viewList);
                var source = new BindingSource(bindingList, null);
                dgvSchedule.DataSource = source;
                dgvSchedule.Update();

                IsInsertInDgv = false;
            }
            else
            {
                dgvSchedule.Cursor = System.Windows.Forms.Cursors.Cross;
                programIDToInsert = ProgramID;
                readyForInsert = true;
            }
        }

        private void tsmiInsertFixProgram_Click(object sender, EventArgs e)
        {
            if (!isEdit)
            {
                MessageBox.Show("Vui lòng nhấn vào nút 'Chỉnh sửa' để có thể chèn chương trình!");
                return;
            }
            StaticProgramForm staticProgramForm = new StaticProgramForm(this);
            staticProgramForm.ShowDialog();
        }



        private void EditorHomeForm_Load(object sender, EventArgs e)
        {
            dgvSchedule.AutoGenerateColumns = false;
            dgvSchedule.ScrollBars = ScrollBars.Both;
            contextMenuDgv.MenuItems.Add("Chèn CT cố định", new EventHandler(InsertFixProgramEvent));
            contextMenuDgv.MenuItems.Add("Chèn CT chen giờ", new EventHandler(InsertFlexProgramEvent));
            contextMenuDgv.MenuItems.Add("Xóa CT", new EventHandler(DeleteProgramEvent));
        }
        // Insert CT Cố định
        private void InsertFixProgramEvent(object sender, EventArgs eventArgs)
        {
            IsInsertInDgv = true;
            StaticProgramForm staticProgramForm = new StaticProgramForm(this);
            staticProgramForm.ShowDialog();
        }
        // Insert CT chen giờ
        private void InsertFlexProgramEvent(object sender, EventArgs eventArgs)
        {
            IsInsertInDgv = true;
            InsertedProgramForm insertedProgramForm = new InsertedProgramForm(this);
            insertedProgramForm.ShowDialog();
        }
        //Delete CT
        private void DeleteProgramEvent(object sender, EventArgs eventArgs)
        {
            dgvSchedule.Rows.RemoveAt(currentRowIndex);
            ReorderPositionScheduler();
            ScheduleUlities.EstimateStartTime(viewList);
            var bindingList = new BindingList<ScheduleDetailViewModel>(viewList);
            var source = new BindingSource(bindingList, null);
            dgvSchedule.DataSource = source;
            dgvSchedule.Update();
            dgvSchedule.ClearSelection();
            if (dgvSchedule.Rows.Count > currentRowIndex)
            {
                dgvSchedule.Rows[currentRowIndex].Selected = true;
            }
            else if (dgvSchedule.Rows.Count > 0)
            {
                dgvSchedule.Rows[currentRowIndex - 1].Selected = true;
            }
            //dgvSchedule.ClearSelection();
            //if (currentRowIndex >= 0)
            //{
            //    dgvSchedule.Rows[currentRowIndex].Selected = true;
            //}

        }
        private void dgvSchedule_MouseUp(object sender, MouseEventArgs e)
        {
            DataGridView.HitTestInfo hit = dgvSchedule.HitTest(e.X, e.Y);
            if (e.Button == MouseButtons.Right && isEdit)
            {
                if ((hit.RowY != -1 && hit.ColumnX != -1) ||
                    (hit.RowY == -1 && hit.ColumnX == -1 && hit.Type == DataGridViewHitTestType.None))
                {
                    if (hit.RowIndex != -1)
                    {
                        dgvSchedule.Rows[hit.RowIndex].Selected = true;
                        currentRowIndex = hit.RowIndex;
                    }
                    else
                    {
                        currentRowIndex = 0;
                    }
                    contextMenuDgv.Show(dgvSchedule, new Point(e.X, e.Y));
                    dgvSchedule.ClearSelection();
                }
            }
        }

        private void EditorHomeForm_FormClosing(object sender, FormClosingEventArgs e)
        {
            EditingHistory LatestEditingHistory = _editingHistoryRepository.GetAll().OrderByDescending(p => p.Time).FirstOrDefault();
            LatestEditingHistory.IsFinished = true;
            _editingHistoryRepository.Update(LatestEditingHistory);
            _editingHistoryRepository.Save();
        }

        private void dgvSchedule_UserDeletingRow(object sender, DataGridViewRowCancelEventArgs e)
        {
            if (e.Row.Index < dgvSchedule.Rows.Count - 1)
            {
                currentRowIndex = e.Row.Index;
            }
            else if (dgvSchedule.Rows.Count > 0)
            {
                currentRowIndex = e.Row.Index - 1;
            }
            else
            {
                currentRowIndex = -1;
            }
            if (!isEdit)
            {
                e.Cancel = true;
            }
            currentRowIndex = e.Row.Index;
        }

        private void dgvSchedule_UserDeletedRow(object sender, DataGridViewRowEventArgs e)
        {
            ReorderPositionScheduler();
            ScheduleUlities.EstimateStartTime(viewList);
            var bindingList = new BindingList<ScheduleDetailViewModel>(viewList);
            var source = new BindingSource(bindingList, null);
            dgvSchedule.DataSource = source;
            dgvSchedule.Update();
            dgvSchedule.ClearSelection();
            if (currentRowIndex >= 0 && dgvSchedule.RowCount > 0)
            {
                dgvSchedule.Rows[currentRowIndex].Selected = true;
            }
        }

        private void dgvSchedule_CellFormatting(object sender, DataGridViewCellFormattingEventArgs e)
        {
            if (e.ColumnIndex == COL_STARTTIME && e.Value != null) // StartTime Columns 
            {
                var time = (TimeSpan)e.Value;
                if (TimeFrame.Morning.StartTime <= time && time <= TimeFrame.Morning.EndTime)
                {
                    dgvSchedule[COL_SESSION, e.RowIndex].Value = "Sáng";
                }
                if (TimeFrame.Noon.StartTime <= time && time <= TimeFrame.Noon.EndTime)
                {
                    dgvSchedule[COL_SESSION, e.RowIndex].Value = "Trưa";
                }
                if (TimeFrame.AfternoonAndEvening.StartTime <= time && time <= TimeFrame.AfternoonAndEvening.EndTime)
                {
                    dgvSchedule[COL_SESSION, e.RowIndex].Value = "Chiều tối";
                }
                if (TimeFrame.Dawn.StartTime <= time && time <= TimeFrame.Dawn.EndTime)
                {
                    dgvSchedule[COL_SESSION, e.RowIndex].Value = "Rạng";
                }
            }

            if (e.ColumnIndex == COL_SESSION)
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
            DataGridViewCell cell1 = dgvSchedule[column, row];
            DataGridViewCell cell2 = dgvSchedule[column, row - 1];
            if (cell1.Value == null || cell2.Value == null)
            {
                return false;
            }
            return cell1.Value.ToString() == cell2.Value.ToString();
        }

        private void dgvSchedule_CellValueChanged(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == 5) // Duration Columns
            {
                ScheduleUlities.EstimateStartTime(viewList);
                var result = ScheduleUlities.EstimateStartTime(viewList);
                if (!result)
                {
                    MessageBox.Show("Lịch ngày hiện tại đã đầy");
                    viewList[e.RowIndex].Duration = oldDurationValue;
                    ScheduleUlities.EstimateStartTime(viewList);
                }
                dgvSchedule.Refresh();
            }
        }

        private void ReorderPositionScheduler()
        {
            if (viewList == null) return;
            for (int i = 0; i < viewList.Count; i++)
            {
                viewList[i].Position = i;
            }
        }

        private void EditorHomeForm_Resize(object sender, EventArgs e)
        {
            dgvSchedule.Width = dayScheduleHomeContainer.Width;
            dgvSchedule.Height = dayScheduleHomeContainer.Height - 20;
        }


        private void UpdateDataCurrentInTabPageToList()
        {
            if (currentSchedule == null)
            {
                currentSchedule = new ScheduleViewModel();
                weekSchedules.Add(currentSchedule);
            }
            currentSchedule.Details = viewList;
        }

        private void dgvSchedule_CellBeginEdit(object sender, DataGridViewCellCancelEventArgs e)
        {
            oldDurationValue = viewList[e.RowIndex].Duration;
        }

        private void DgvSchedule_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void MnsEditor_MouseClick(object sender, MouseEventArgs e)
        {
            
        }

        private void InsertReadyProgram(int RowIndex)
        {
            ScheduleDetailViewModel scheduleViewModel = _programRepository.Find(p => p.ID == programIDToInsert).
                Select(p => new ScheduleDetailViewModel()
                {
                    Duration = p.Duration.Value,
                    ProgramName = p.Name,
                    PerformBy = p.PerformBy,
                    ProgramID = p.ID,
                    ScheduleID = currentSchedule.ID
                }).FirstOrDefault();
            viewList.Insert(RowIndex, scheduleViewModel);
            ReorderPositionScheduler();
            var result = ScheduleUlities.EstimateStartTime(viewList);
            if (!result)
            {
                viewList.RemoveAt(RowIndex);
                MessageBox.Show("Lịch ngày hiện tại đã đầy, không thể thêm chương trình");
                ScheduleUlities.EstimateStartTime(viewList);
            }
            RemoveReadyForInsert();
            var bindingList = new BindingList<ScheduleDetailViewModel>(viewList);
            var source = new BindingSource(bindingList, null);
            dgvSchedule.DataSource = source;
            dgvSchedule.Update();
        }

        private void RemoveReadyForInsert()
        {
            dgvSchedule.Cursor = System.Windows.Forms.Cursors.Default;
            readyForInsert = false;
        }

        private void DgvSchedule_MouseClick(object sender, MouseEventArgs e)
        {
            if (!readyForInsert)
            {
                return;
            }
            if (e.Button == MouseButtons.Left)
            {
                int index = viewList.Count;
                InsertReadyProgram(index);
            }
            else if (e.Button == MouseButtons.Right)
            {
                RemoveReadyForInsert();
            }
        }

        private void TsmiEditorEmail_Click(object sender, EventArgs e)
        {
            SendEmailForm sendEmailForm = new SendEmailForm(weekSchedules);
            sendEmailForm.ShowDialog();
        }

        private void btnNextweek_Click(object sender, EventArgs e)
        {
            string yearPicker = DateTime.Parse(dtpYear.Value.ToString()).Year.ToString();
            // check next year
            if (weekNumber < 52)
            {
                year = Int32.Parse(yearPicker);
                weekNumber = weekNumber + 1;
                InitDataGridView(tabDays.SelectedIndex + 1);
                
            }
        }

        private void btnLastweek_Click(object sender, EventArgs e)
        {
            if (weekNumber > 1)
            {
                weekNumber = weekNumber - 1;
                InitDataGridView(tabDays.SelectedIndex + 1);
            }
        }

        private void dtpYear_ValueChanged(object sender, EventArgs e)
        {
            string yearPicker = DateTime.Parse(dtpYear.Value.ToString()).Year.ToString();
            year = Int32.Parse(yearPicker);
            InitDataGridView(tabDays.SelectedIndex + 1);
        }
    }
}
