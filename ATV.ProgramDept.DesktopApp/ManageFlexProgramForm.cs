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
    public partial class ManageFlexProgramForm : Form
    {
        private readonly IProgramRepository _programRepository;
        public ManageFlexProgramForm()
        {
            _programRepository = new ProgramRepository();
            InitializeComponent();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            // New Flex Program 
            NewFlexProgramForm flexProgram = new NewFlexProgramForm(this);
            flexProgram.Show();
        }

        private void dgvFlexProgram_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            // Processing            
            try
            {
                var row = dgvFlexProgram.Rows[e.RowIndex];
                var editedProgram = (Entity.Program)row.DataBoundItem;
                var program = _programRepository.FindById(editedProgram.ID);
                string action = dgvFlexProgram.Columns[e.ColumnIndex].Name;
                if (action.Equals("Edit"))
                {
                    program.Name = editedProgram.Name;
                    program.Duration = editedProgram.Duration;
                    program.PerformBy = editedProgram.PerformBy;
                    _programRepository.Save();
                    MessageBox.Show("Lưu thành công", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    ReloadFlexProgram(); 
                }
                else if (action.Equals("Remove"))
                {
                    if (MessageBox.Show("Bạn có chắc muốn xóa CT này không ?", "Message", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == DialogResult.Yes)
                    {
                        program.IsActive = false;
                        _programRepository.Save();
                        MessageBox.Show("Xóa thành công", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        dgvFlexProgram.Rows.RemoveAt(row.Index);
                        ReloadFlexProgram();                        
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("MANAGE_FLEX_PROGRAM_FORM " + ex.Message);
                MessageBox.Show("CÓ LỖI XẢY RA KHI THAY ĐỔI CHƯƠNG TRÌNH ! VUI LÒNG KIỂM TRA LẠI !");
            }
            finally
            {
                if (dgvFlexProgram.CurrentCell != null)
                {
                    dgvFlexProgram.CurrentCell.Selected = false;
                }
            }
        }
        public void ReloadFlexProgram()
        {
            LoadFlexProgram();
            dgvFlexProgram.Refresh();
        }

        private void ManageFlexProgramForm_Load(object sender, EventArgs e)
        {
            LoadFlexProgram();
        }        
        private void LoadFlexProgram()
        {
            var programs = _programRepository.GetProgramWithType((int)ProgramTypeEnum.Insert).ToList();
            BindingSource bindSource = new BindingSource();
            bindSource.DataSource = programs;
            dgvFlexProgram.DataSource = bindSource;
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
