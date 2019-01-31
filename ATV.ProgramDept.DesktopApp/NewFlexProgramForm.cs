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
    public partial class NewFlexProgramForm : Form
    {
        private readonly ManageFlexProgramForm flexProgramForm;
        private readonly IProgramRepository _programRepository;
        public NewFlexProgramForm(ManageFlexProgramForm parentForm)
        {
            flexProgramForm = parentForm;
            _programRepository = new ProgramRepository();
            InitializeComponent();
        }

        private void NewFlexProgramForm_Load(object sender, EventArgs e)
        {            
        }

        private void btnNew_Click(object sender, EventArgs e)
        {
            try
            {
                string name = txtName.Text.Trim();
                string duration = txtDuration.Text.Trim();
                string performBy = txtPerformBy.Text.Trim();
                // New Flex Program
                if (CheckValidate(name, duration, performBy))
                {
                    var newFlexProgram = new Entity.Program
                    {
                        Name = name,
                        Duration = Double.Parse(duration),
                        PerformBy = performBy,
                        IsActive = true,
                        ProgramTypeID = (int)ProgramTypeEnum.Insert
                    };
                    _programRepository.Create(newFlexProgram);
                    _programRepository.Save();
                    if (MessageBox.Show("Tạo CT thành công!", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
                    {
                        flexProgramForm.ReloadFlexProgram();
                        Close();
                    }
                }                                
            }
            catch(Exception ex)
            {
                Console.WriteLine("NEW_FLEX_PROGRAM_FORM " + ex.Message);
                if (MessageBox.Show("Xảy ra lỗi khi tạo CT", "Message", MessageBoxButtons.OK, MessageBoxIcon.Error) == DialogResult.OK)
                {
                    Close();
                }
            }
        }
        private bool CheckValidate(string name, string duration, string performBy)
        {
            bool isValidate = true;
            // validate name;
            if (ValidationProvider.RequiredStringIsValid(name) == false)
            {
                isValidate = false;
                errName.SetError(txtName, "Tên không được rỗng"); 
            }
            else
            {
                errName.SetError(txtName,"");
            }

            // validate duration 
            if (ValidationProvider.RequiredStringIsValid(duration) == false)
            {
                isValidate = false; 
                errDuration.SetError(txtDuration, "Thời lượng không được để trống"); 
            }
            else if (ValidationProvider.RegExStringIsValid(duration, RegexPattern.UNSIGNED_FLOATING_POINT_NUMBER) == false)
            {
                isValidate = false;
                errDuration.SetError(txtDuration, "Vui lòng nhập thời lượng tính theo phút");
            }
            else
            {
                errDuration.SetError(txtDuration,"");
            } 
            // validate PerformBy
            return isValidate;
        }

        private void NewFlexProgramForm_FormClosed(object sender, FormClosedEventArgs e)
        {
            _programRepository.Dispose(); 
        }
    }
}
