using ATV.ProgramDept.Entity;
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
    public partial class AdminHomeForm : Form
    {
        private IEditingHistoryRepository _editingHistoryRepository;
        public AdminHomeForm()
        {
            _editingHistoryRepository = new EditingHistoryRepository();
            InitializeComponent();
            tsmiTemplateMon_Click(this, null);
        }

        private void btnToEditor_Click(object sender, EventArgs e)
        {
            this.Hide();
            EditorHomeForm editorHome = new EditorHomeForm();
            editorHome.ShowDialog();
            this.Close();
        }

        private void tsmiAdminEmail_Click(object sender, EventArgs e)
        {
            ManageEmailForm emailForm = new ManageEmailForm();
            Navigate(emailForm, pnlContent);
        }

        private void tsmiAdminAccount_Click(object sender, EventArgs e)
        {
            ManageAccountForm accountForm = new ManageAccountForm();
            Navigate(accountForm, pnlContent);
        }

        private void tsmiAdminFlexProgram_Click(object sender, EventArgs e)
        {
            ManageFlexProgramForm programForm = new ManageFlexProgramForm();
            Navigate(programForm, pnlContent);
        }
        private void tsmiAdminFixProgram_Click(object sender, EventArgs e)
        {
            ManageFixProgramForm programForm = new ManageFixProgramForm();
            Navigate(programForm, pnlContent);
        }
        // Navigate the menu bar 
        private void Navigate(Form form, Panel panel)
        {
            form.TopLevel = false;
            form.Size = panel.Size;
            panel.Controls.Clear();
            panel.Controls.Add(form);
            form.TopLevel = false;
            form.Dock = DockStyle.Fill; 
            form.Show();
        }

        #region DAY_OF_WEEK TEMPLATE
        // 1 - MONDAY 
        // GO TO MONDAY TEMPLATE 
        private void tsmiTemplateMon_Click(object sender, EventArgs e)
        {
            ScheduleTemplateForm form = new ScheduleTemplateForm(1);                        
            Navigate(form, pnlContent);
        }
        // GO TO TUESDAY TEMPLATE
        private void tsmiTemplateTue_Click(object sender, EventArgs e)
        {
            ScheduleTemplateForm form = new ScheduleTemplateForm(2);
            Navigate(form, pnlContent);
        }

        // GO TO WEDNESDAY TEMPLATE
        private void tsmiTemplateWed_Click(object sender, EventArgs e)
        {
            ScheduleTemplateForm form = new ScheduleTemplateForm(3);
            Navigate(form, pnlContent);
        }

        // GO TO THURSDAY TEMPLATE
        private void tsmiTemplateThur_Click(object sender, EventArgs e)
        {
            ScheduleTemplateForm form = new ScheduleTemplateForm(4);
            Navigate(form, pnlContent);
        }
        // GO TO FIRDAY TEMPLATE
        private void tsmiTemplateFri_Click(object sender, EventArgs e)
        {
            ScheduleTemplateForm form = new ScheduleTemplateForm(5);
            Navigate(form, pnlContent);
        }

        // GO TO SATURDAY TEMPLATE
        private void tsmiTemplateSat_Click(object sender, EventArgs e)
        {
            ScheduleTemplateForm form = new ScheduleTemplateForm(6);
            Navigate(form, pnlContent);
        }

        // GO TO SUNDAY TEMPLATE
        private void tsmiTemplateSun_Click(object sender, EventArgs e)
        {
            ScheduleTemplateForm form = new ScheduleTemplateForm(7);
            Navigate(form, pnlContent);
        }
        #endregion

        private void AdminHomeForm_FormClosing(object sender, FormClosingEventArgs e)
        {
            EditingHistory LatestEditingHistory = _editingHistoryRepository.GetAll().OrderByDescending(p => p.Time).FirstOrDefault();
            LatestEditingHistory.IsFinished = true;
            _editingHistoryRepository.Update(LatestEditingHistory);
            _editingHistoryRepository.Save();
        }
    }
}
