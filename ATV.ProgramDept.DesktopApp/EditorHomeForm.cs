using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.Enum;
using ATV.ProgramDept.Service.Implement;
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
        private List<ScheduleViewModel> viewList;
        public static int ProgramIDToInsert;

        public EditorHomeForm()
        {
            InitializeComponent();
            if (!Program.User.Rolename.Equals("Admin"))
            {
                this.btnToAdmin.Hide();
            }
            InitDataGridView();
        }

        private void InitDataGridView()
        {
            #region sample data
            List<ScheduleDetail> schedules = new List<ScheduleDetail>();
            schedules.Add(new ScheduleDetail
            {
                Program = new Entity.Program
                {
                    Name = "Thể dục buổi sáng"
                },
                Contents = "",
                Duration = 5,
                Note = "Yoga 7: Khởi động khớp gối căng cơ liên sườn"
            });
            schedules.Add(new ScheduleDetail
            {
                Program = new Entity.Program
                {
                    Name = "Ca nhạc"
                },
                Contents = "",
                Duration = 25.28,
                Note = "CaNhan\\20-10 CaNhacSang"
            });
            schedules.Add(new ScheduleDetail
            {
                Program = new Entity.Program
                {
                    Name = "Thế giới tuần qua"
                },
                Contents = "",
                Duration = 10.36,
                Note = "(Vệ tinh)"
            });
            schedules.Add(new ScheduleDetail
            {
                Program = new Entity.Program
                {
                    Name = "An Giang địa danh và sự kiện"
                },
                Contents = "",
                Duration = 10.00,
                Note = "Phát lại của chủ nhật 7/10"
            });
            #endregion

            viewList = schedules.Select(x => new ScheduleViewModel
            {
                StartTime = "",
                Name = x.Program.Name,
                Content = x.Contents,
                Code = x.ID + "",
                Duration = x.Duration,
                Note = x.Note
            }).ToList();

            //ScheduleUlities.EstimateStartTime(viewList);

            var bindingList = new BindingList<ScheduleViewModel>(viewList);
            var source = new BindingSource(bindingList, null);
            dgvSchedule.DataSource = source;

            dgvSchedule.Columns[0].HeaderText = "Giờ";
            dgvSchedule.Columns[1].HeaderText = "Tiết mục";
            dgvSchedule.Columns[2].HeaderText = "Nội dung";
            dgvSchedule.Columns[3].HeaderText = "Mã số";
            dgvSchedule.Columns[4].HeaderText = "thời lượng";
            dgvSchedule.Columns[5].HeaderText = "Ghi chú";
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
            dayScheduleHomeContainer.Parent = tabControl1.SelectedTab;
            lblScheduleDate.Text = tabControl1.SelectedTab.Text + ": " + DateTime.Now.ToShortDateString();
        }

        private void tabControl2_SelectedIndexChanged(object sender, EventArgs e)
        {
            scheduleHomeContainer.Parent = tabControl2.SelectedTab;
            lblScheduleSessionName.Text = "CHƯƠNG TRÌNH TRUYỀN HÌNH " + tabControl2.SelectedTab.Text.ToUpper();
        }

        private void tsmiInsertFlexProgram_Click(object sender, EventArgs e)
        {
            InsertedProgramForm insertedProgramForm = new InsertedProgramForm();
            insertedProgramForm.ShowDialog();
        }
    }
}
