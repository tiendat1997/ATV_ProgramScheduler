using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.Utilities;
using ATV.ProgramDept.Service.ViewModel;
using NPOI.HSSF.UserModel;
using NPOI.SS.UserModel;
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
            saveFileDialog.Filter = "Excel 2003 (*.xls)|*.xls|Excel 2010 (*.xlsx)|*.xlsx|All files (*.*)|*.*";
            saveFileDialog.DefaultExt = "xls";
            saveFileDialog.AddExtension = true;
            saveFileDialog.RestoreDirectory = true;
            saveFileDialog.FileName = "Sample.xls";
            if (saveFileDialog.ShowDialog() == DialogResult.OK)
            {
                FileStream fileStream = new FileStream(saveFileDialog.FileName, FileMode.Create);
                IWorkbook workbook = null;
                if (saveFileDialog.FilterIndex == 2)
                {
                    workbook = ExcelUtils.ExportWeeklySchedule(_scheduleViewModels, ExcelUtils.TYPE_XLSX);
                }
                else if (saveFileDialog.FilterIndex == 1)
                {
                    workbook = ExcelUtils.ExportWeeklySchedule(_scheduleViewModels, ExcelUtils.TYPE_XLS);
                }

                if (workbook != null)
                {
                    workbook.Write(fileStream);

                }
                fileStream.Close();
                this.Close();
            }

        }
    }
}
