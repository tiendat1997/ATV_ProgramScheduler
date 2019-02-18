using ATV.ProgramDept.Service.Enum;
using ATV.ProgramDept.Service.Implement;
using ATV.ProgramDept.Service.Interface;
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
    public partial class ManageFixProgramForm : Form
    {
        private readonly IProgramRepository _programRepository;
        public ManageFixProgramForm()
        {
            _programRepository = new ProgramRepository();
            InitializeComponent();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            // New Fix Program 
            NewFixProgramForm fixProgram = new NewFixProgramForm(this);
            fixProgram.Show();
        }

        private void dgvFixProgram_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            // Processing            
            try
            {
                var row = dgvFixProgram.Rows[e.RowIndex];
                var editedProgram = (Entity.Program)row.DataBoundItem;
                var program = _programRepository.FindById(editedProgram.ID);
                string action = dgvFixProgram.Columns[e.ColumnIndex].Name;
                if (action.Equals("Edit"))
                {
                    program.Name = editedProgram.Name;
                    program.Duration = editedProgram.Duration;
                    program.PerformBy = editedProgram.PerformBy;
                    _programRepository.Save();
                    MessageBox.Show("Lưu thành công", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    ReloadFixProgram(); 
                }
                else if (action.Equals("Remove"))
                {
                    if (MessageBox.Show("Bạn có chắc muốn xóa CT này không ?", "Message", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                    {
                        program.IsActive = false;
                        _programRepository.Save();
                        MessageBox.Show("Xóa thành công", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        dgvFixProgram.Rows.RemoveAt(row.Index);
                        ReloadFixProgram();                        
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("MANAGE_FIX_PROGRAM_FORM " + ex.Message);
                MessageBox.Show("CÓ LỖI XẢY RA KHI THAY ĐỔI CHƯƠNG TRÌNH ! VUI LÒNG KIỂM TRA LẠI !");
            }
            finally
            {
                if (dgvFixProgram.CurrentCell != null)
                {
                    dgvFixProgram.CurrentCell.Selected = false;
                }
            }
        }
        public void ReloadFixProgram()
        {
            LoadFixProgram();
            dgvFixProgram.Refresh();
        }

        private void ManageFixProgramForm_Load(object sender, EventArgs e)
        {
            LoadFixProgram();
        }        
        private void LoadFixProgram()
        {
            var programs = _programRepository.GetProgramWithType((int)ProgramTypeEnum.Static).ToList();
            BindingSource bindSource = new BindingSource();
            bindSource.DataSource = programs;
            dgvFixProgram.DataSource = bindSource;
        }
        private bool CheckValidate(string name, string duration, string performBy)
        {
            bool isValidate = true;
            // validate name;
            if (ValidationProvider.RequiredStringIsValid(name) == false)
            {
                isValidate = false;                
            }
            else
            {                
            }

            // validate duration 
            if (ValidationProvider.RequiredStringIsValid(duration) == false)
            {
                isValidate = false;
            }
            else if (ValidationProvider.RegExStringIsValid(duration, RegexPattern.UNSIGNED_FLOATING_POINT_NUMBER) == false)
            {
                isValidate = false;
            }
            else
            {
            }
            // validate PerformBy
            return isValidate;
        }


    }
}
