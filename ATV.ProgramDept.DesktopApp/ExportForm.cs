using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.Utilities;
using ATV.ProgramDept.Service.ViewModel;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ATV.ProgramDept.DesktopApp
{
    public partial class ExportForm : Form
    {
        private List<ScheduleViewModel> _scheduleViewModels;
        public ExportForm(List<ScheduleViewModel> scheduleViewModels)
        {
            InitializeComponent();
            if (scheduleViewModels == null)
            {
                scheduleViewModels = new List<ScheduleViewModel>();
            }
            _scheduleViewModels = scheduleViewModels;
        }

        private void btnExport_Click(object sender, EventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.Filter = "Excel 2007 (*.xlsx)|Excel 2003 (*.xls)|All files (*.*)|*.*";
            saveFileDialog.FilterIndex = 1;
            saveFileDialog.RestoreDirectory = true;
            saveFileDialog.FileName = "Sample.xlsx";
            if (saveFileDialog.ShowDialog() == DialogResult.OK)
            {
                File.WriteAllBytes(saveFileDialog.FileName, ExcelUtils.exportSchedule(_scheduleViewModels));
                this.Close();
            }
        }
    }
}
