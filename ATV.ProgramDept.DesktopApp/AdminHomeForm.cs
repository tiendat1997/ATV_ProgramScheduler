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
    }
}
