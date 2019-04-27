using ATV.ProgramDept.Service.Enum;
using ATV.ProgramDept.Service.Utilities;
using ATV.ProgramDept.Service.ViewModel;
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
    public partial class ConfirmSendEmailForm : Form
    {
        SendEmailForm parent;
        private List<ScheduleViewModel> _scheduleViewModels;
        public ConfirmSendEmailForm(SendEmailForm parent, List<ScheduleViewModel> scheduleViewModels)
        {

            _scheduleViewModels = scheduleViewModels;
            this.parent = parent;
            InitializeComponent();

            InitData();
        }

        void InitData()
        {
            txtEmail.Text = parent.Department.Email;
            txtSubject.Text = "Gửi lịch phát sóng";
            //wbContent.ActiveXInstance
            //wbContent.DocumentText = "<p>Kính gửi...<p>";

            wbContent.Navigate("about:blank");
            Application.DoEvents();
            wbContent.Document.OpenNew(false).Write("<html><body><div id=\"editable\">Kính gửi "
                + parent.Department.Name + ","
                + "</div></body></html>");

            foreach (HtmlElement el in wbContent.Document.All)
            {
                el.SetAttribute("unselectable", "on");
                el.SetAttribute("contenteditable", "false");
            }

            wbContent.Document.Body.SetAttribute("width", this.Width.ToString() + "px");
            wbContent.Document.Body.SetAttribute("height", "100%");
            wbContent.Document.Body.SetAttribute("contenteditable", "true");
            wbContent.Document.DomDocument.GetType().GetProperty("designMode").SetValue(wbContent.Document.DomDocument, "On", null);
            wbContent.IsWebBrowserContextMenuEnabled = false;

            lblFileName.Text = "lich-phat-song" + _scheduleViewModels.FirstOrDefault().Date.DateOfYear.ToString("dd-MM-yyyy");
        }

        private void BtnSend_Click(object sender, EventArgs e)
        {
            FileStream fileStream = new FileStream("lich-phat-song" + _scheduleViewModels.FirstOrDefault().Date.DateOfYear.ToString("dd-MM-yyyy"), FileMode.Create);
            IWorkbook workbook = null;
            workbook = ExcelUtils.ExportWeeklySchedule(GetExportSchedule(), ExcelUtils.TYPE_XLS);
            if (workbook != null)
            {
                workbook.Write(fileStream);

            }
            var result = MailUtils.SendEmailAsync(txtEmail.Text, txtSubject.Text, wbContent.DocumentText, workbook, "lich-phat-song" + _scheduleViewModels.FirstOrDefault().Date.DateOfYear.ToString("dd-MM-yyyy")+".xls");
            fileStream.Close();
            MessageBox.Show("Đã gửi email tới " + parent.Department.Name);
            this.Close();
        }

        private List<ScheduleViewModel> GetExportSchedule()
        {
            List<ScheduleViewModel> exportSchedule = new List<ScheduleViewModel>();
            if (parent.DateListChecked[0])
            {
                exportSchedule.Add(_scheduleViewModels.Where(s => s.DayOfWeek == (int)DayOfWeekEnum.Monday).FirstOrDefault());
            }
            if (parent.DateListChecked[1])
            {
                exportSchedule.Add(_scheduleViewModels.Where(s => s.DayOfWeek == (int)DayOfWeekEnum.Tuesday).FirstOrDefault());
            }
            if (parent.DateListChecked[2])
            {
                exportSchedule.Add(_scheduleViewModels.Where(s => s.DayOfWeek == (int)DayOfWeekEnum.Wednesday).FirstOrDefault());
            }
            if (parent.DateListChecked[3])
            {
                exportSchedule.Add(_scheduleViewModels.Where(s => s.DayOfWeek == (int)DayOfWeekEnum.Thursday).FirstOrDefault());
            }
            if (parent.DateListChecked[4])
            {
                exportSchedule.Add(_scheduleViewModels.Where(s => s.DayOfWeek == (int)DayOfWeekEnum.Friday).FirstOrDefault());
            }
            if (parent.DateListChecked[5])
            {
                exportSchedule.Add(_scheduleViewModels.Where(s => s.DayOfWeek == (int)DayOfWeekEnum.Saturday).FirstOrDefault());
            }
            if (parent.DateListChecked[6])
            {
                exportSchedule.Add(_scheduleViewModels.Where(s => s.DayOfWeek == (int)DayOfWeekEnum.Sunday).FirstOrDefault());
            }

            return exportSchedule;
        }
    }
}
