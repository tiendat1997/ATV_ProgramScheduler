using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.Utilities;
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
        public ExportForm()
        {
            InitializeComponent();
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
                List<Schedule> schedules = new List<Schedule>();
                schedules.Add(new Schedule
                {
                    Program = new Entity.Program
                    {
                        Name = "Thể dục buổi sáng"
                    },
                    Contents = "",
                    Duration = 5,
                    Note = "Yoga 7: Khởi động khớp gối căng cơ liên sườn"
                });
                schedules.Add(new Schedule
                {
                    Program = new Entity.Program
                    {
                        Name = "Ca nhạc"
                    },
                    Contents = "",
                    Duration = 25.28,
                    Note = "CaNhan\\20-10 CaNhacSang"
                });
                schedules.Add(new Schedule
                {
                    Program = new Entity.Program
                    {
                        Name = "Thế giới tuần qua"
                    },
                    Contents = "",
                    Duration = 10.36,
                    Note = "(Vệ tinh)"
                });
                schedules.Add(new Schedule
                {
                    Program = new Entity.Program
                    {
                        Name = "An Giang địa danh và sự kiện"
                    },
                    Contents = "",
                    Duration = 10.00,
                    Note = "Phát lại của chủ nhật 7/10"
                });

                File.WriteAllBytes(saveFileDialog.FileName, ExcelUtils.exportSchedule(schedules));
                this.Close();
            }

        }
    }
}
