using ATV.ProgramDept.Entity;
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
    public partial class ManageEmailForm : Form
    {
        private readonly IDepartmentRepository _deptRepository;
        public ManageEmailForm()
        {
            _deptRepository = new DepartmentRepository(); 
            InitializeComponent();
        }

        private void ManageEmailForm_Load(object sender, EventArgs e)
        {
            // Load departments from database 
            var depts = _deptRepository.GetAll().ToList();
            var bindingSource = new BindingSource();
            bindingSource.DataSource = depts;
            dgvDepartment.DataSource = bindingSource; 
        }

        private void btnNewEmail_Click(object sender, EventArgs e)
        {
            NewEmailForm newForm = new NewEmailForm(this);
            newForm.Show(); 
        }

        private void ManageEmailForm_FormClosed(object sender, FormClosedEventArgs e)
        {
            _deptRepository.Dispose(); 
        }
        private void dgvDepartment_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            try
            {
                var row = dgvDepartment.Rows[e.RowIndex];
                var editedDept = (Department)row.DataBoundItem;
                var dept = _deptRepository.FindById(editedDept.ID);
                if (dgvDepartment.Columns[e.ColumnIndex].Name.Equals("Edit"))
                {
                    // Save processing                                                           
                    dept.Name = editedDept.Name;
                    dept.Email = editedDept.Email;
                    _deptRepository.Save();
                    MessageBox.Show("Lưu thành công", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
                } 
                else if (dgvDepartment.Columns[e.ColumnIndex].Name.Equals("Remove"))
                {
                    // Remove processing
                    if (MessageBox.Show("Bạn có chắc muốn xóa email này không ?", "Message", MessageBoxButtons.YesNoCancel, MessageBoxIcon.Question) == DialogResult.Yes)
                    {
                        // Processing result;
                        dept.IsActive = false;
                        _deptRepository.Save();
                        MessageBox.Show("Xóa thành công", "Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        dgvDepartment.Rows.RemoveAt(row.Index);
                        dgvDepartment.Refresh();
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("MANAGE_EMAIL_FORM " + ex.Message);              
            }
            finally
            {
                if (dgvDepartment.CurrentCell != null)
                    dgvDepartment.CurrentCell.Selected = false; 
            }
        }

        #region services
        public void ReloadDepartments()
        {
            var depts = _deptRepository.GetAll().ToList();
            var bindingSource = new BindingSource();
            bindingSource.DataSource = depts;
            dgvDepartment.DataSource = bindingSource;
            dgvDepartment.Refresh(); 
        }
        #endregion      
    }
}
