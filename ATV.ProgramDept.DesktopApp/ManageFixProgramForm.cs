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
    public partial class ManageFixProgramForm : Form
    {
        private readonly IProgramRepository _programRepository; 
        public ManageFixProgramForm()
        {
            _programRepository = new ProgramRepository(); 
            InitializeComponent();
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            // New Fix Program 
        }

        private void dgvFixProgram_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            // Processing            
        }
        public void ReloadFixProgram()
        {
            LoadFixProgram();
            dgvFixProgram.Refresh();
        }

        private void ManageFixProgramForm_Load(object sender, EventArgs e)
        {
            LoadFixProgram();
        }
        private void LoadFixProgram()
        {
            var programs = _programRepository.GetProgramWithType((int)ProgramTypeEnum.Insert).ToList();
            BindingSource bindSource = new BindingSource();
            bindSource.DataSource = programs;
            dgvFixProgram.DataSource = bindSource;
        }

    }
}
