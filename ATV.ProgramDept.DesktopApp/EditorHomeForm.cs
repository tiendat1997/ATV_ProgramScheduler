using ATV.ProgramDept.Entity;
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
    public partial class EditorHomeForm : Form
    {

        private bool isEdit = false;
        private List<Schedule> weekSchedules;
        private List<ScheduleViewModel> viewList;
        private IScheduleRepository scheduleRepository = new ScheduleRepository();
        private IWeekRepository weekRepository = new WeekRepository();
        private int programIDToInsert;
        private bool readyForInsert;
        private readonly IProgramRepository _programRepository;

        public EditorHomeForm()
        {
            readyForInsert = false;
            _programRepository = new ProgramRepository();
            InitializeComponent();
            if (!Program.User.Rolename.Equals("Admin"))
            {
                this.btnToAdmin.Hide();
            }
            InitDataGridView();
        }

        private void loadDataToGridView(int dayId)
        {
            var schedule = weekSchedules.Where(s => s.DateID.HasValue && s.DateID == dayId)
                .FirstOrDefault(); ;
            
            if (schedule != null)
            {
                var scheduleDetail = schedule.ScheduleDetail.ToList();
                viewList = scheduleDetail.Select(x => new ScheduleViewModel
                {
                    StartTime = new TimeSpan(5, 0, 0),
                    Name = x.Program.Name,
                    Content = x.Contents,
                    Code = x.ID + "",
                    Duration = x.Duration,
                    Note = x.Note
                }).ToList();

                ScheduleUlities.EstimateStartTime(viewList);


            }
            else
            {
                viewList = new List<ScheduleViewModel>();
            }

            var bindingList = new BindingList<ScheduleViewModel>(viewList);
            var source = new BindingSource(bindingList, null);
            dgvSchedule.DataSource = source;


        }

        private void InitDataGridView()
        {
            #region sample data
            //List<ScheduleDetail> schedules = new List<ScheduleDetail>();
            //schedules.Add(new ScheduleDetail
            //{
            //    Program = new Entity.Program
            //    {
            //        Name = "Thể dục buổi sáng"
            //    },
            //    Contents = "",
            //    Duration = 5,
            //    Note = "Yoga 7: Khởi động khớp gối căng cơ liên sườn"
            //});
            //schedules.Add(new ScheduleDetail
            //{
            //    Program = new Entity.Program
            //    {
            //        Name = "Ca nhạc"
            //    },
            //    Contents = "",
            //    Duration = 25.28,
            //    Note = "CaNhan\\20-10 CaNhacSang"
            //});
            //schedules.Add(new ScheduleDetail
            //{
            //    Program = new Entity.Program
            //    {
            //        Name = "Thế giới tuần qua"
            //    },
            //    Contents = "",
            //    Duration = 10.36,
            //    Note = "(Vệ tinh)"
            //});
            //schedules.Add(new ScheduleDetail
            //{
            //    Program = new Entity.Program
            //    {
            //        Name = "An Giang địa danh và sự kiện"
            //    },
            //    Contents = "",
            //    Duration = 10.00,
            //    Note = "Phát lại của chủ nhật 7/10"
            //});
            #endregion

            int weekId = weekRepository.GetWeekId(new DateTime(2019, 2, 7), new DateTime(2019,2,13));
            weekSchedules = scheduleRepository.GetWeekSchedule(weekId).ToList();

            loadDataToGridView((int)DayOfWeek.Monday);
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
            ExportForm adminHome = new ExportForm(viewList);
            adminHome.ShowDialog();
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

            ScheduleViewModel scheduleViewModel = _programRepository.Find(p => p.ID == programIDToInsert).
                Select(p => new ScheduleViewModel()
                {
                    Duration = p.Duration.Value,
                    Name = p.Name,

                }).FirstOrDefault();
            viewList.Insert(e.RowIndex, scheduleViewModel);
            ScheduleUlities.EstimateStartTime(viewList);

            readyForInsert = false;
            dgvSchedule.Cursor = System.Windows.Forms.Cursors.Default;
            var bindingList = new BindingList<ScheduleViewModel>(viewList);
            var source = new BindingSource(bindingList, null);
            dgvSchedule.DataSource = source;
            dgvSchedule.Update();
        }

        private void btnSaveSchedule_Click(object sender, EventArgs e)
        {
            isEdit = !isEdit;
            if (isEdit)
            {
                btnSaveSchedule.Text = "Lưu";
            }
            else
            {
                btnSaveSchedule.Text = "Chỉnh sửa";
            }
            var test = dgvSchedule.DataBindings.SyncRoot;
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
            dayScheduleHomeContainer.Parent = tabDays.SelectedTab;
            //lblScheduleDate.Text = tabControl1.SelectedTab.Text + ": " + DateTime.Now.ToShortDateString();

            loadDataToGridView(tabDays.SelectedIndex + 1);
        }

      

        private void tsmiInsertFlexProgram_Click(object sender, EventArgs e)
        {
            InsertedProgramForm insertedProgramForm = new InsertedProgramForm(this);
            insertedProgramForm.ShowDialog();
        }

        public void ReadyForInsertProgram(int ProgramID)
        {
            dgvSchedule.Cursor = System.Windows.Forms.Cursors.Cross;
            programIDToInsert = ProgramID;
            readyForInsert = true;

        }

        private void dgvSchedule_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void tsmiInsertFixProgram_Click(object sender, EventArgs e)
        {
            StaticProgramForm staticProgramForm = new StaticProgramForm(this);
            staticProgramForm.ShowDialog();
        }
    }
}
