using ATV.ProgramDept.Service.Enum;
using ATV.ProgramDept.Service.Utilities;
using ATV.ProgramDept.Service.ViewModel;
using NPOI.SS.UserModel;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Windows.Forms;
using Xceed.Words.NET;

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
            if (cbbExportType.SelectedIndex == 0)
            {
                SaveFileDialog saveFileDialog = new SaveFileDialog();
                saveFileDialog.Filter = "Excel 2003 (*.xls)|*.xls|Excel 2007 (*.xlsx)|*.xlsx";
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
                        workbook = ExcelUtils.ExportWeeklySchedule(GetExportSchedule(), ExcelUtils.TYPE_XLSX);
                    }
                    else if (saveFileDialog.FilterIndex == 1)
                    {
                        workbook = ExcelUtils.ExportWeeklySchedule(GetExportSchedule(), ExcelUtils.TYPE_XLS);
                    }

                    if (workbook != null)
                    {
                        workbook.Write(fileStream);

                    }
                    fileStream.Close();
                    this.Close();
                }
            }
            else if (cbbExportType.SelectedIndex == 1)
            {
                SaveFileDialog saveFileDialog = new SaveFileDialog();
                saveFileDialog.Filter = "Word document|*.doc";
                saveFileDialog.DefaultExt = "doc";
                saveFileDialog.AddExtension = true;
                saveFileDialog.RestoreDirectory = true;
                saveFileDialog.FileName = "Sapo.doc";
                if (saveFileDialog.ShowDialog() == DialogResult.OK)
                {
                    DocX document = SapoUtils.ExportSapo(GetExportSchedule());
                    try
                    {
                        document.SaveAs(saveFileDialog.FileName);
                        this.Close();
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show("Xảy ra lỗi trong quá trình lưu. Vui lòng thử tắt các file word đang được mở rồi thử lại!");
                    }
                }
            }
            else
            {
                MessageBox.Show("Vui lòng chọn loại file!");
                return;
            }
            
        }

        private List<ScheduleViewModel> GetExportSchedule()
        {
            List<ScheduleViewModel> exportSchedule = new List<ScheduleViewModel>();
            if (ckbMonday.Checked)
            {
                exportSchedule.Add(_scheduleViewModels.Where(s => s.DayOfWeek == (int)DayOfWeekEnum.Monday).FirstOrDefault());
            }
            if (ckbTuesday.Checked)
            {
                exportSchedule.Add(_scheduleViewModels.Where(s => s.DayOfWeek == (int)DayOfWeekEnum.Tuesday).FirstOrDefault());
            }
            if (ckbWednesday.Checked)
            {
                exportSchedule.Add(_scheduleViewModels.Where(s => s.DayOfWeek == (int)DayOfWeekEnum.Wednesday).FirstOrDefault());
            }
            if (ckbThursday.Checked)
            {
                exportSchedule.Add(_scheduleViewModels.Where(s => s.DayOfWeek == (int)DayOfWeekEnum.Thursday).FirstOrDefault());
            }
            if (ckbFriday.Checked)
            {
                exportSchedule.Add(_scheduleViewModels.Where(s => s.DayOfWeek == (int)DayOfWeekEnum.Friday).FirstOrDefault());
            }
            if (ckbSaturday.Checked)
            {
                exportSchedule.Add(_scheduleViewModels.Where(s => s.DayOfWeek == (int)DayOfWeekEnum.Saturday).FirstOrDefault());
            }
            if (ckbSunday.Checked)
            {
                exportSchedule.Add(_scheduleViewModels.Where(s => s.DayOfWeek == (int)DayOfWeekEnum.Sunday).FirstOrDefault());
            }

            return exportSchedule;
        }
    }
}
