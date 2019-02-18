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
using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.Interface;
using ATV.ProgramDept.Service.Implement;

namespace ATV.ProgramDept.DesktopApp
{
    public partial class NewProgramForm : Form
    {
        private readonly IProgramRepository _programRepository;
        private int programType;
        private IProgramForm parentProgramForm;
        public NewProgramForm(int programType, IProgramForm parent)
        {
            this.programType = programType;
            parentProgramForm = parent;
            _programRepository = new ProgramRepository();
            InitializeComponent();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string duration = txtDuration.Text.Trim();
            string performBy = txtPerformBy.Text.Trim();
            bool isValidate = true;
            if (ValidationProvider.RequiredStringIsValid(name) == false)
            {
                isValidate = false;
                errName.SetError(txtName, "Tên không được rỗng");
            }
            else
            {
                errName.SetError(txtName, "");
            }
            if (duration == string.Empty)
            {
                isValidate = false;
                errDuration.SetError(txtDuration, "Thời lượng không được rỗng");
            }
            else if (ValidationProvider.RegExStringIsValid(duration, RegexPattern.MATCH_DOUBLE) == false)
            {
                isValidate = false;
                errDuration.SetError(txtDuration, "Thời lượng phải là số hoặc số thập phân");
            }
            else
            {
                errDuration.SetError(txtDuration, "");
            }

            if (isValidate)
            {
                try
                {
                    // CREATE NEW ACCOUNT 
                    var newProgram = new ATV.ProgramDept.Entity.Program()
                    {
                        Duration = Double.Parse(duration),
                        IsActive = true,
                        Name = name,
                        PerformBy = performBy,
                        ProgramTypeID = programType,
                    };
                    
                    var message = MessageBox.Show("Thêm chương trình thành công!", "Message", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Information);
                    if (message == DialogResult.Yes)
                    {
                        //do something
                        _programRepository.Create(newProgram);
                        _programRepository.Save();
                        parentProgramForm.ReloadDGV();
                        this.Close();
                    }
                    else if (message == DialogResult.No)
                    {
                        //do something
                        _programRepository.Create(newProgram);
                        _programRepository.Save();
                        parentProgramForm.ReloadDGV();
                        this.Close();
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine("[NEW_ACCOUNT_FORM] " + ex.Message.ToString());
                    if (MessageBox.Show("Xảy ra lỗi khi tạo", "Message", MessageBoxButtons.OK, MessageBoxIcon.Error) == DialogResult.OK)
                    {
                        this.Close();
                    }
                }
            }
        }
    }
}
