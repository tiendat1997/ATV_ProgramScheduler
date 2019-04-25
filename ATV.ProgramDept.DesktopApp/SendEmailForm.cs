using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.Implement;
using ATV.ProgramDept.Service.Interface;
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
    public partial class SendEmailForm : Form
    {
        private List<ScheduleViewModel> _scheduleViewModels;
        private IDepartmentRepository departmenRepository = new DepartmentRepository();
        public bool[] DateListChecked = { true, true, true, true, true, true, true };
        public Department Department;
        public int FileType; //1: sapo, 2:thường
        public SendEmailForm(List<ScheduleViewModel> scheduleViewModels)
        {
            InitializeComponent();
            InitData();
            _scheduleViewModels = scheduleViewModels;
        }

        void InitData()
        {
            BindingList<Department> bindingList =
                new BindingList<Department>(departmenRepository.GetAll().ToList());
            cboDept.DataSource = bindingList;
            cboDept.DisplayMember = "Name";
            cboDept.ValueMember = "ID";
            cboDept.Update();

            //var ListDept = departmenRepository.GetAll().ToList();
            //cboDept.DisplayMember = "Name";
            //cboDept.ValueMember = "ID";
            //cboDept.Update();

            List<Object> fileTypeList = new List<Object>();
            fileTypeList.Add(new { ID = 1, Name = "Sapo" });
            fileTypeList.Add(new { ID = 2, Name = "Lịch" });
            BindingList<Object> bindingList2 =
                new BindingList<Object>(fileTypeList);
            cboFileType.DataSource = bindingList2;
            cboFileType.DisplayMember = "Name";
            cboFileType.ValueMember = "ID";
            cboFileType.Update();

        }

        private void BtnSend_Click(object sender, EventArgs e)
        {
            try
            {
                Department = (Department)cboDept.SelectedItem;
                FileType = (int)cboFileType.SelectedValue;
                DateListChecked[0] = cbMonday.Checked;
                DateListChecked[1] = cbTuesday.Checked;
                DateListChecked[2] = cbWednesday.Checked;
                DateListChecked[3] = cbThursday.Checked;
                DateListChecked[4] = cbFriday.Checked;
                DateListChecked[5] = cbSaturday.Checked;
                DateListChecked[6] = cbSunday.Checked;
                ConfirmSendEmailForm confirmSendEmailForm = new ConfirmSendEmailForm(this, _scheduleViewModels);
                confirmSendEmailForm.ShowDialog();
            }
            catch (Exception ex)
            {

                MessageBox.Show("Có lỗi xảy ra, vui lòng thử lại!");
            }
        }
    }
}
