using ATV.ProgramDept.Service.Enum;
using ATV.ProgramDept.Service.Implement;
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
    public partial class HomeForm : Form
    {
        private readonly ProgramRepository _programRepository;
        public HomeForm()
        {
            _programRepository = new ProgramRepository();
            InitializeComponent();
            dgvProgram.AutoGenerateColumns = false;
            ReloadGridView(); 
        }
        private void ReloadGridView()
        {
            var programs = _programRepository
                .GetAllActivePrograms()
                .Select(p => new { p.ID, p.Name, p.Duration }).ToList();
            dgvProgram.DataSource = programs;
        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                string name = this.txtProgramName.Text;
                double duration = Double.Parse(this.txtDuration.Text);

                _programRepository.Create(new Entity.Program
                {
                    Name = name,
                    Duration = duration,
                    ProgramTypeID = (int)ProgramTypeEnum.Static,
                    IsActive = true,
                });
                _programRepository.Save();
                ReloadGridView();
            }
            catch (Exception ex)
            {
                Console.WriteLine("ERROR WHEN CATCH");
            }
        }
    }
}
