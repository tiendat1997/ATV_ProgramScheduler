using ATV.ProgramDept.Entity;
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
    public partial class NewEmailForm : Form
    {
        private readonly ManageEmailForm manageEmailForm;
        private readonly IDepartmentRepository _deptRepository;
        public NewEmailForm(ManageEmailForm parentForm)
        {
            manageEmailForm = parentForm;
            _deptRepository = new DepartmentRepository();
            InitializeComponent();
        }

        private void btnCreate_Click(object sender, EventArgs e)
        {
            try
            {
                string name = txtName.Text.Trim();
                string email = txtEmail.Text.Trim();
                bool isValidate = true;

                // validate name 
                if (ValidationProvider.RequiredStringIsValid(name) == false)
                {
                    isValidate = false;
                    errName.SetError(txtName, "Tên không được rỗng");
                }
                else
                {
                    this.errName.SetError(txtName, "");
                }

                // validate email 
                if (ValidationProvider.RequiredStringIsValid(email) == false)
                {
                    isValidate = false;
                    errEmail.SetError(txtEmail, "Email không được rỗng");
                }
                else if (ValidationProvider.RegExStringIsValid(email, RegexPattern.MATCH_EMAIL_PATTERN) == false)
                {
                    isValidate = false;
                    errEmail.SetError(txtEmail, "Email phải theo định dạng [abc@abc.abc]");
                }
                else
                {
                    this.errEmail.SetError(txtEmail, "");
                }

                if (isValidate)
                {
                    var newDept = new Department
                    {
                        Name = name,
                        Email = email,
                        IsActive = true
                    };
                    _deptRepository.Create(newDept);
                    _deptRepository.Save();
                    if (MessageBox.Show("Tạo email thành công!", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
                    {
                        manageEmailForm.ReloadDepartments();
                        this.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("[NEW_EMAIL_FORM] " + ex.Message.ToString());
                if (MessageBox.Show("Xảy ra lỗi khi tạo email", "Message", MessageBoxButtons.OK, MessageBoxIcon.Error) == DialogResult.OK)
                {
                    this.Close();
                }
            }
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            _deptRepository.Dispose(); 
            this.Close();
        }

        private void NewEmailForm_FormClosed(object sender, FormClosedEventArgs e)
        {
            _deptRepository.Dispose();
        }
    }
}
