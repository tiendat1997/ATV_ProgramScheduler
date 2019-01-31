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
        public AdminHomeForm()
        {
            InitializeComponent();
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
            form.Show();
        }
    }
}
