namespace ATV.ProgramDept.DesktopApp
{
    partial class EditorHomeForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.mnsEditor = new System.Windows.Forms.MenuStrip();
            this.tsmiEditorProgram = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiInsertNewProgram = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiInsertFlexProgram = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiInsertFixProgram = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiEditorExport = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiEditorEmail = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiEditorPrint = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiEditorHistory = new System.Windows.Forms.ToolStripMenuItem();
            this.btnToAdmin = new System.Windows.Forms.Button();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.btnSaveSchedule = new System.Windows.Forms.Button();
            this.tabControl2 = new System.Windows.Forms.TabControl();
            this.tabPage8 = new System.Windows.Forms.TabPage();
            this.dgvSchedule = new System.Windows.Forms.DataGridView();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.tabPage9 = new System.Windows.Forms.TabPage();
            this.tabPage10 = new System.Windows.Forms.TabPage();
            this.tabPage11 = new System.Windows.Forms.TabPage();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.tabPage4 = new System.Windows.Forms.TabPage();
            this.tabPage5 = new System.Windows.Forms.TabPage();
            this.tabPage6 = new System.Windows.Forms.TabPage();
            this.tabPage7 = new System.Windows.Forms.TabPage();
            this.mnsEditor.SuspendLayout();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tabControl2.SuspendLayout();
            this.tabPage8.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvSchedule)).BeginInit();
            this.SuspendLayout();
            // 
            // mnsEditor
            // 
            this.mnsEditor.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsmiEditorProgram,
            this.tsmiEditorExport,
            this.tsmiEditorEmail,
            this.tsmiEditorPrint,
            this.tsmiEditorHistory});
            this.mnsEditor.Location = new System.Drawing.Point(0, 0);
            this.mnsEditor.Name = "mnsEditor";
            this.mnsEditor.Size = new System.Drawing.Size(800, 24);
            this.mnsEditor.TabIndex = 0;
            this.mnsEditor.Text = "menuStrip1";
            // 
            // tsmiEditorProgram
            // 
            this.tsmiEditorProgram.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsmiInsertNewProgram,
            this.tsmiInsertFlexProgram,
            this.tsmiInsertFixProgram});
            this.tsmiEditorProgram.Name = "tsmiEditorProgram";
            this.tsmiEditorProgram.Size = new System.Drawing.Size(65, 20);
            this.tsmiEditorProgram.Text = "Chèn CT";
            // 
            // tsmiInsertNewProgram
            // 
            this.tsmiInsertNewProgram.Name = "tsmiInsertNewProgram";
            this.tsmiInsertNewProgram.Size = new System.Drawing.Size(180, 22);
            this.tsmiInsertNewProgram.Text = "Chèn CT mới";
            // 
            // tsmiInsertFlexProgram
            // 
            this.tsmiInsertFlexProgram.Name = "tsmiInsertFlexProgram";
            this.tsmiInsertFlexProgram.Size = new System.Drawing.Size(180, 22);
            this.tsmiInsertFlexProgram.Text = "Chèn CT chen giờ";
            // 
            // tsmiInsertFixProgram
            // 
            this.tsmiInsertFixProgram.Name = "tsmiInsertFixProgram";
            this.tsmiInsertFixProgram.Size = new System.Drawing.Size(180, 22);
            this.tsmiInsertFixProgram.Text = "Chèn CT cố định";
            // 
            // tsmiEditorExport
            // 
            this.tsmiEditorExport.Name = "tsmiEditorExport";
            this.tsmiEditorExport.Size = new System.Drawing.Size(68, 20);
            this.tsmiEditorExport.Text = "Xuất Lịch";
            this.tsmiEditorExport.Click += new System.EventHandler(this.tsmiEditorExport_Click);
            // 
            // tsmiEditorEmail
            // 
            this.tsmiEditorEmail.Name = "tsmiEditorEmail";
            this.tsmiEditorEmail.Size = new System.Drawing.Size(69, 20);
            this.tsmiEditorEmail.Text = "Gửi email";
            // 
            // tsmiEditorPrint
            // 
            this.tsmiEditorPrint.Name = "tsmiEditorPrint";
            this.tsmiEditorPrint.Size = new System.Drawing.Size(29, 20);
            this.tsmiEditorPrint.Text = "In";
            // 
            // tsmiEditorHistory
            // 
            this.tsmiEditorHistory.Name = "tsmiEditorHistory";
            this.tsmiEditorHistory.Size = new System.Drawing.Size(56, 20);
            this.tsmiEditorHistory.Text = "Lịch sử";
            // 
            // btnToAdmin
            // 
            this.btnToAdmin.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnToAdmin.Location = new System.Drawing.Point(725, 1);
            this.btnToAdmin.Name = "btnToAdmin";
            this.btnToAdmin.Size = new System.Drawing.Size(75, 23);
            this.btnToAdmin.TabIndex = 1;
            this.btnToAdmin.Text = "Quản trị";
            this.btnToAdmin.UseVisualStyleBackColor = true;
            this.btnToAdmin.Click += new System.EventHandler(this.btnToAdmin_Click);
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Controls.Add(this.tabPage3);
            this.tabControl1.Controls.Add(this.tabPage4);
            this.tabControl1.Controls.Add(this.tabPage5);
            this.tabControl1.Controls.Add(this.tabPage6);
            this.tabControl1.Controls.Add(this.tabPage7);
            this.tabControl1.Location = new System.Drawing.Point(0, 27);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(800, 424);
            this.tabControl1.TabIndex = 2;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.btnSaveSchedule);
            this.tabPage1.Controls.Add(this.tabControl2);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(792, 398);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Thứ 2";
            this.tabPage1.UseVisualStyleBackColor = true;
            this.tabPage1.Click += new System.EventHandler(this.tabPage1_Click);
            // 
            // btnSaveSchedule
            // 
            this.btnSaveSchedule.Location = new System.Drawing.Point(709, 7);
            this.btnSaveSchedule.Name = "btnSaveSchedule";
            this.btnSaveSchedule.Size = new System.Drawing.Size(75, 23);
            this.btnSaveSchedule.TabIndex = 1;
            this.btnSaveSchedule.Text = "Chỉnh sửa";
            this.btnSaveSchedule.UseVisualStyleBackColor = true;
            this.btnSaveSchedule.Click += new System.EventHandler(this.btnSaveSchedule_Click);
            // 
            // tabControl2
            // 
            this.tabControl2.Controls.Add(this.tabPage8);
            this.tabControl2.Controls.Add(this.tabPage9);
            this.tabControl2.Controls.Add(this.tabPage10);
            this.tabControl2.Controls.Add(this.tabPage11);
            this.tabControl2.Location = new System.Drawing.Point(0, 7);
            this.tabControl2.Name = "tabControl2";
            this.tabControl2.SelectedIndex = 0;
            this.tabControl2.Size = new System.Drawing.Size(796, 391);
            this.tabControl2.TabIndex = 0;
            // 
            // tabPage8
            // 
            this.tabPage8.Controls.Add(this.dgvSchedule);
            this.tabPage8.Controls.Add(this.label2);
            this.tabPage8.Controls.Add(this.label1);
            this.tabPage8.Location = new System.Drawing.Point(4, 22);
            this.tabPage8.Name = "tabPage8";
            this.tabPage8.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage8.Size = new System.Drawing.Size(788, 365);
            this.tabPage8.TabIndex = 0;
            this.tabPage8.Text = "Sáng";
            this.tabPage8.UseVisualStyleBackColor = true;
            // 
            // dgvSchedule
            // 
            this.dgvSchedule.AllowDrop = true;
            this.dgvSchedule.AllowUserToAddRows = false;
            this.dgvSchedule.AllowUserToResizeColumns = false;
            this.dgvSchedule.AllowUserToResizeRows = false;
            this.dgvSchedule.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvSchedule.EditMode = System.Windows.Forms.DataGridViewEditMode.EditOnKeystroke;
            this.dgvSchedule.Location = new System.Drawing.Point(0, 37);
            this.dgvSchedule.MultiSelect = false;
            this.dgvSchedule.Name = "dgvSchedule";
            this.dgvSchedule.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.dgvSchedule.Size = new System.Drawing.Size(788, 300);
            this.dgvSchedule.TabIndex = 2;
            this.dgvSchedule.TabStop = false;
            this.dgvSchedule.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvSchedule_CellClick);
            this.dgvSchedule.CellEnter += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvSchedule_CellEnter);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(690, 21);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(90, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Thứ 2 : 1/1/2019";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(15, 14);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(288, 20);
            this.label1.TabIndex = 0;
            this.label1.Text = "CHƯƠNG HÌNH TRUYỀN HÌNH SÁNG";
            // 
            // tabPage9
            // 
            this.tabPage9.Location = new System.Drawing.Point(4, 22);
            this.tabPage9.Name = "tabPage9";
            this.tabPage9.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage9.Size = new System.Drawing.Size(788, 365);
            this.tabPage9.TabIndex = 1;
            this.tabPage9.Text = "Trưa";
            this.tabPage9.UseVisualStyleBackColor = true;
            // 
            // tabPage10
            // 
            this.tabPage10.Location = new System.Drawing.Point(4, 22);
            this.tabPage10.Name = "tabPage10";
            this.tabPage10.Size = new System.Drawing.Size(788, 365);
            this.tabPage10.TabIndex = 2;
            this.tabPage10.Text = "Chiều và tối";
            this.tabPage10.UseVisualStyleBackColor = true;
            // 
            // tabPage11
            // 
            this.tabPage11.Location = new System.Drawing.Point(4, 22);
            this.tabPage11.Name = "tabPage11";
            this.tabPage11.Size = new System.Drawing.Size(788, 365);
            this.tabPage11.TabIndex = 3;
            this.tabPage11.Text = "Rạng sáng";
            this.tabPage11.UseVisualStyleBackColor = true;
            // 
            // tabPage2
            // 
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(792, 398);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Thứ 3";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // tabPage3
            // 
            this.tabPage3.Location = new System.Drawing.Point(4, 22);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Size = new System.Drawing.Size(792, 398);
            this.tabPage3.TabIndex = 2;
            this.tabPage3.Text = "Thứ 4";
            this.tabPage3.UseVisualStyleBackColor = true;
            // 
            // tabPage4
            // 
            this.tabPage4.Location = new System.Drawing.Point(4, 22);
            this.tabPage4.Name = "tabPage4";
            this.tabPage4.Size = new System.Drawing.Size(792, 398);
            this.tabPage4.TabIndex = 3;
            this.tabPage4.Text = "Thứ 5";
            this.tabPage4.UseVisualStyleBackColor = true;
            // 
            // tabPage5
            // 
            this.tabPage5.Location = new System.Drawing.Point(4, 22);
            this.tabPage5.Name = "tabPage5";
            this.tabPage5.Size = new System.Drawing.Size(792, 398);
            this.tabPage5.TabIndex = 4;
            this.tabPage5.Text = "Thứ 6";
            this.tabPage5.UseVisualStyleBackColor = true;
            // 
            // tabPage6
            // 
            this.tabPage6.Location = new System.Drawing.Point(4, 22);
            this.tabPage6.Name = "tabPage6";
            this.tabPage6.Size = new System.Drawing.Size(792, 398);
            this.tabPage6.TabIndex = 5;
            this.tabPage6.Text = "Thứ 7";
            this.tabPage6.UseVisualStyleBackColor = true;
            // 
            // tabPage7
            // 
            this.tabPage7.Location = new System.Drawing.Point(4, 22);
            this.tabPage7.Name = "tabPage7";
            this.tabPage7.Size = new System.Drawing.Size(792, 398);
            this.tabPage7.TabIndex = 6;
            this.tabPage7.Text = "Chủ nhật";
            this.tabPage7.UseVisualStyleBackColor = true;
            // 
            // EditorHomeForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.tabControl1);
            this.Controls.Add(this.btnToAdmin);
            this.Controls.Add(this.mnsEditor);
            this.MainMenuStrip = this.mnsEditor;
            this.Name = "EditorHomeForm";
            this.Text = "ATV Program Department - Home";
            this.mnsEditor.ResumeLayout(false);
            this.mnsEditor.PerformLayout();
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabControl2.ResumeLayout(false);
            this.tabPage8.ResumeLayout(false);
            this.tabPage8.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvSchedule)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip mnsEditor;
        private System.Windows.Forms.ToolStripMenuItem tsmiEditorProgram;
        private System.Windows.Forms.ToolStripMenuItem tsmiEditorExport;
        private System.Windows.Forms.ToolStripMenuItem tsmiEditorEmail;
        private System.Windows.Forms.ToolStripMenuItem tsmiEditorPrint;
        private System.Windows.Forms.ToolStripMenuItem tsmiEditorHistory;
        private System.Windows.Forms.ToolStripMenuItem tsmiInsertNewProgram;
        private System.Windows.Forms.ToolStripMenuItem tsmiInsertFlexProgram;
        private System.Windows.Forms.ToolStripMenuItem tsmiInsertFixProgram;
        private System.Windows.Forms.Button btnToAdmin;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabControl tabControl2;
        private System.Windows.Forms.TabPage tabPage8;
        private System.Windows.Forms.TabPage tabPage9;
        private System.Windows.Forms.TabPage tabPage10;
        private System.Windows.Forms.TabPage tabPage11;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.TabPage tabPage3;
        private System.Windows.Forms.TabPage tabPage4;
        private System.Windows.Forms.TabPage tabPage5;
        private System.Windows.Forms.TabPage tabPage6;
        private System.Windows.Forms.TabPage tabPage7;
        private System.Windows.Forms.Button btnSaveSchedule;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridView dgvSchedule;
    }
}

