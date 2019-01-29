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
            var unvalidateUser = _userRepository.GetUsers(false);
            dgvUnvalidateUser.DataSource = unvalidateUser;
            var validateUser = _userRepository.GetUsers(true);
            dgvValidateUser.DataSource = validateUser;
        }

        private void dgvUnvalidateUser_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgvUnvalidateUser.Columns[e.ColumnIndex].Name.Equals("Approve"))
            {
                MessageBox.Show("Are you want to approve this person to the system !","Message",MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question);
            }
        }

        private void dgvValidateUser_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (dgvValidateUser.Columns[e.ColumnIndex].Name.Equals("Remove"))
            {
                if (MessageBox.Show("Are you want to Remove this person!", "Message", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question) == DialogResult.Yes)
                {
                   // Processing result;
                }
            }
        }

        private void btnNewAccount_Click(object sender, EventArgs e)
        {
            NewAccountForm newAccForm = new NewAccountForm(this);
            newAccForm.Show(); 
        }

        public void ReloadUnvalidatedDataGridView()
        {
            dgvUnvalidateUser.DataSource = _userRepository.GetUsers(false);
            dgvUnvalidateUser.Refresh();
        }
        public void ReloadValidatedDataGridView()
        {
            dgvValidateUser.DataSource = _userRepository.GetUsers(true);
            dgvValidateUser.Refresh();
        }
    }
}
