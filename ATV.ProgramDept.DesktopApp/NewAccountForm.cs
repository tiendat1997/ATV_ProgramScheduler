using ATV.ProgramDept.Entity;
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
    public partial class NewAccountForm : Form
    {
        private readonly IUserRepository _userRepository;
        private readonly ManageAccountForm _accountForm;
        public NewAccountForm(ManageAccountForm parentForm)
        {
            _accountForm = parentForm;
            _userRepository = new UserRepository();
            InitializeComponent();
        }

        private void btnNewAccount_Click(object sender, EventArgs e)
        {
            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string phone1 = txtPhone1.Text.Trim();
            string phone2 = txtPhone2.Text.Trim();
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
                errEmail.SetError(txtEmail,"");
            }

            // validate phone1
            if (phone1 != string.Empty && ValidationProvider.RegExStringIsValid(phone1, RegexPattern.MATCH_NUMBER) == false)
            {
                isValidate = false;
                errPhone1.SetError(txtPhone1, "Số điện thoại không chứa chữ");
            }
            else
            {
                errPhone1.SetError(txtPhone1,""); 
            }
            // validate phone2
            if (phone2 != string.Empty && ValidationProvider.RegExStringIsValid(phone2, RegexPattern.MATCH_NUMBER) == false)
            {
                isValidate = false; 
                errPhone2.SetError(txtPhone2, "Số điện thoại không chứa chữ");
            }
            else
            {
                errPhone2.SetError(txtPhone2,"");
            }

            if (isValidate)
            {
                try
                {
                    // CREATE NEW ACCOUNT 
                    var newUser = new User
                    {
                        Username = email,
                        DefaultPassword = "123456", // GET DEFAULT PASS
                        Email = email,
                        Name = name,
                        RoleID = (int)RoleEnum.Editor,
                        IsPasswordChanged = false,
                        PasswordHash = "E10ADC3949BA59ABBE56E057F20F883E",
                        IsActive = true
                    };
                    _userRepository.Create(newUser);
                    _userRepository.Save();
                    if (MessageBox.Show("Tạo tài khoản thành công!", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information) == DialogResult.OK)
                    {
                        _accountForm.ReloadUnvalidatedDataGridView();
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

        private void btnCancel_Click(object sender, EventArgs e)
        {            
            this.Close();
        }
    }
}
