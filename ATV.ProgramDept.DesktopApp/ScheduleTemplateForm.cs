using ATV.ProgramDept.Entity;
using ATV.ProgramDept.Service.Enum;
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
    public partial class ScheduleTemplateForm : Form
    {        
        private byte DayOfWeek { get; set; }          

        private ScheduleTemplateDetailForm MorningForm { get; set; }
        private ScheduleTemplateDetailForm NoonForm { get; set; }
        private ScheduleTemplateDetailForm AfternoonAndEveningForm { get; set; }
        private ScheduleTemplateDetailForm DawnForm { get; set; }
        
        public ScheduleTemplateForm(byte dayOfWeek)
        {
            InitializeComponent();
            DayOfWeek = dayOfWeek;
            InitTabPages();
        }        
        private void InitTabPages()
        {
            MorningForm = new ScheduleTemplateDetailForm("CHƯƠNG TRÌNH TRUYỀN HÌNH SÁNG", DayOfWeek);
            NoonForm = new ScheduleTemplateDetailForm("CHƯƠNG TRÌNH TRUYỀN HÌNH TRƯA", DayOfWeek);
            AfternoonAndEveningForm = new ScheduleTemplateDetailForm("CHƯƠNG TRÌNH TRUYỀN HÌNH CHIỀU VÀ TỐI", DayOfWeek);
            DawnForm = new ScheduleTemplateDetailForm("CHƯƠNG TRÌNH TRUYỀN HÌNH RẠNG SÁNG", DayOfWeek);
            InitTabPageContents(MorningForm, tpMorning);
            InitTabPageContents(NoonForm, tpNoon);
            InitTabPageContents(AfternoonAndEveningForm, tpAfternoonAndEvening);
            InitTabPageContents(DawnForm, tpDawn);
        }
        private void InitTabPageContents(ScheduleTemplateDetailForm tabContent, TabPage tabPage)
        {
            tabContent.TopLevel = false;
            tabPage.Controls.Clear();
            tabPage.Controls.Add(tabContent);
            tabContent.Dock = DockStyle.Fill;
            tabContent.Show();
        }
    }
}
