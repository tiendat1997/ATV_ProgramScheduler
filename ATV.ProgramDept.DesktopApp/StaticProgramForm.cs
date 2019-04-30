using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ATV.ProgramDept.DesktopApp.Interface;
using ATV.ProgramDept.Service.Enum;
using ATV.ProgramDept.Service.Implement;
using ATV.ProgramDept.Service.Interface;
using ATV.ProgramDept.Service.Utilities;
using ATV.ProgramDept.Service.ViewModel;

namespace ATV.ProgramDept.DesktopApp
{
    public partial class StaticProgramForm : Form, IProgramForm
    {
        private readonly IProgramRepository _programRepository;
        BindingList<ProgramModel> bindingList;
        BindingList<ProgramModel> currentList;
        IInsertProgram editorHomeForm;
        public StaticProgramForm(IInsertProgram editorHomeForm)
        {
            _programRepository = new ProgramRepository();
            this.editorHomeForm = editorHomeForm;
            bindingList = new BindingList<ProgramModel>(_programRepository.
                Find(p => p.IsActive.Value)
                .Select(p => new ProgramModel()
                {
                    Duration = Converting.ConvertDurationToString(p.Duration.Value),
                    ID = p.ID,
                    PerformBy = p.PerformBy,
                    Name = p.Name,
                    ProgramType = p.ProgramTypeID == (int)ProgramTypeEnum.Insert? "Chương trình chèn giờ" : "Chương trình cố định"
                }).ToList());
            currentList = bindingList;
            InitializeComponent();
        }

        private void StaticProgramForm_Load(object sender, EventArgs e)
        {
            dgvProgram.DataSource = currentList;
            
        }

        private void txtSearchBox_TextChanged(object sender, EventArgs e)
        {
            currentList = new BindingList<ProgramModel>(bindingList.Where(p => p.Name.ToLower().Contains(txtSearchBox.Text.ToLower())).ToList());
            dgvProgram.DataSource = currentList;
            dgvProgram.Update();
        }




        public void ReloadDGV()
        {
            bindingList = new BindingList<ProgramModel>(_programRepository.
                 Find(p => p.IsActive.Value && p.ProgramTypeID == (int)ProgramTypeEnum.Static)
                 .Select(p => new ProgramModel()
                 {
                     Duration = Converting.ConvertDurationToString(p.Duration.Value),
                     ID = p.ID,
                     PerformBy = p.PerformBy,
                     Name = p.Name,
                     ProgramType = p.ProgramTypeID == (int)ProgramTypeEnum.Insert ? "Chương trình chèn giờ" : "Chương trình cố định"
                 }).ToList());
            currentList = bindingList;
            dgvProgram.DataSource = currentList;
            dgvProgram.Update();
        }

        private void btnAddProgram_Click(object sender, EventArgs e)
        {
            NewProgramForm newProgramForm = new NewProgramForm((int)ProgramTypeEnum.Static, this);
            newProgramForm.Show();
        }

        private void btnInsert_Click(object sender, EventArgs e)
        {
            if (dgvProgram.SelectedRows.Count > 0)
            {
                //EditorHomeForm.ProgramIDToInsert = currentList[dgvProgram.SelectedRows[0].Index].ID;
                //this.Close();
                editorHomeForm.ReadyForInsertProgram(currentList[dgvProgram.SelectedRows[0].Index].ID);
                this.Close();
            }
            else
            {
                MessageBox.Show("Vui lòng chọn chương trình");
            }
        }
    }
}
