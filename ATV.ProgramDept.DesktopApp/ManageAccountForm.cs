using ATV.ProgramDept.Service.Enum;
using ATV.ProgramDept.Service.Implement;
using ATV.ProgramDept.Service.Interface;
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
    public partial class ManageAccountForm : Form
    {
        private readonly IUserRepository _userRepository;

        public ManageAccountForm()
        {
            _userRepository = new UserRepository();
            InitializeComponent();
        }

        private void ManageAccountForm_Load(object sender, EventArgs e)
        {
            // UNVALIDATE USER
            var unvalidateUser = _userRepository.GetUsers(false, (int)RoleEnum.Editor);
            var unvalidateBind = new BindingSource();
            unvalidateBind.DataSource = unvalidateUser;
            dgvUnvalidateUser.DataSource = unvalidateBind;

            // VALIDATE USER            
            var validateUser = _userRepository.GetUsers(true, (int)RoleEnum.Editor);
            var validateBind = new BindingSource();
            validateBind.DataSource = validateUser;
            dgvValidateUser.DataSource = validateBind;
        }

        private void dgvValidateUser_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                var row = dgvValidateUser.Rows[e.RowIndex];
                var editedUser = (Entity.User)row.DataBoundItem;
                var user = _userRepository.FindById(editedUser.ID);

                if (dgvValidateUser.Columns[e.ColumnIndex].Name.Equals("Edit"))
                {
                    // Processing result;                                                                    
                    user.Phone1 = editedUser.Phone1;
                    user.Phone2 = editedUser.Phone2;
                    user.Name = editedUser.Name;
                    _userRepository.Save();
                    MessageBox.Show("Lưu thành công", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else if (dgvValidateUser.Columns[e.ColumnIndex].Name.Equals("Remove"))
                {
                    if (MessageBox.Show("Bạn có chắc muốn xóa tài khoản này không ?", "Message", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question) == DialogResult.Yes)
                    {
                        // Processing result;
                        user.IsActive = false;
                        _userRepository.Save();
                        MessageBox.Show("Xóa thành công", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        dgvValidateUser.Rows.RemoveAt(row.Index);
                        dgvValidateUser.Refresh();
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("MANAGE_ACCOUNT_FORM " + ex.Message);
            }
            finally
            {
                if (dgvValidateUser.CurrentCell != null)
                    dgvValidateUser.CurrentCell.Selected = false; // remove focus on datagridview
            }
        }

        private void btnNewAccount_Click(object sender, EventArgs e)
        {
            NewAccountForm newAccForm = new NewAccountForm(this);
            newAccForm.Show();
        }

        public void ReloadUnvalidatedDataGridView()
        {
            var unvalidateUser = _userRepository.GetUsers(false, (int)RoleEnum.Editor);
            var unvalidateBind = new BindingSource();
            unvalidateBind.DataSource = unvalidateUser;
            dgvUnvalidateUser.DataSource = unvalidateBind;
            dgvUnvalidateUser.Refresh();
        }
        public void ReloadValidatedDataGridView()
        {
            var validateUser = _userRepository.GetUsers(true, (int)RoleEnum.Editor);
            var validateBind = new BindingSource();
            validateBind.DataSource = validateUser;
            dgvValidateUser.DataSource = validateBind;
            dgvValidateUser.Refresh();
        }
    }
}
