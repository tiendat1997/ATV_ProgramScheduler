using ATV.ProgramDept.Service.Enum;
using ATV.ProgramDept.Service.Implement;
using ATV.ProgramDept.Service.Interface;
using ATV.ProgramDept.Service.Utilities;
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
    public partial class InsertedProgramForm : Form
    {
        private readonly IProgramRepository _programRepository;
        BindingList<ProgramModel> bindingList;
        public InsertedProgramForm()
        {
            _programRepository = new ProgramRepository();
            InitializeComponent(); bindingList = new BindingList<ProgramModel>(_programRepository.
                 Find(p => p.IsActive.Value && p.ProgramTypeID == (int)ProgramTypeEnum.Insert)
                 .Select(p => new ProgramModel()
                 {
                     Duration = Converting.ConvertDurationToString(p.Duration.Value),
                     ID = p.ID,
                     PerformBy = p.PerformBy,
                     Name = p.Name
                 }).ToList());
        }

        private void InsertedProgramForm_Load(object sender, EventArgs e)
        {
            dgvProgram.DataSource = bindingList;
        }

        private void txtSearchBox_TextChanged(object sender, EventArgs e)
        {
            BindingList<ProgramModel> filtered = new BindingList<ProgramModel>(bindingList.Where(p => p.Name.ToLower().Contains(txtSearchBox.Text.ToLower())).ToList());
            dgvProgram.DataSource = filtered;
            dgvProgram.Update();
        }
    }
}
