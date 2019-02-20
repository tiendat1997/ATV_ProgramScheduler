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
            this.components = new System.ComponentModel.Container();
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
            this.tabDays = new System.Windows.Forms.TabControl();
            this.tpMon = new System.Windows.Forms.TabPage();
            this.dayScheduleHomeContainer = new System.Windows.Forms.Panel();
            this.btnSaveSchedule = new System.Windows.Forms.Button();
            this.dgvSchedule = new System.Windows.Forms.DataGridView();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.scheduleViewModelBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.tpTue = new System.Windows.Forms.TabPage();
            this.tpWed = new System.Windows.Forms.TabPage();
            this.tpThu = new System.Windows.Forms.TabPage();
            this.tpFri = new System.Windows.Forms.TabPage();
            this.tpSat = new System.Windows.Forms.TabPage();
            this.tpSun = new System.Windows.Forms.TabPage();
            this.mnsEditor.SuspendLayout();
            this.tabDays.SuspendLayout();
            this.tpMon.SuspendLayout();
            this.dayScheduleHomeContainer.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvSchedule)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.scheduleViewModelBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // mnsEditor
            // 
            this.mnsEditor.ImageScalingSize = new System.Drawing.Size(20, 20);
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
            this.tsmiInsertNewProgram.Size = new System.Drawing.Size(169, 22);
            this.tsmiInsertNewProgram.Text = "Chèn CT mới";
            // 
            // tsmiInsertFlexProgram
            // 
            this.tsmiInsertFlexProgram.Name = "tsmiInsertFlexProgram";
            this.tsmiInsertFlexProgram.Size = new System.Drawing.Size(169, 22);
            this.tsmiInsertFlexProgram.Text = "Chèn CT chen giờ";
            this.tsmiInsertFlexProgram.Click += new System.EventHandler(this.tsmiInsertFlexProgram_Click);
            // 
            // tsmiInsertFixProgram
            // 
            this.tsmiInsertFixProgram.Name = "tsmiInsertFixProgram";
            this.tsmiInsertFixProgram.Size = new System.Drawing.Size(169, 22);
            this.tsmiInsertFixProgram.Text = "Chèn CT cố định";
            this.tsmiInsertFixProgram.Click += new System.EventHandler(this.tsmiInsertFixProgram_Click);
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
            // tabDays
            // 
            this.tabDays.Controls.Add(this.tpMon);
            this.tabDays.Controls.Add(this.tpTue);
            this.tabDays.Controls.Add(this.tpWed);
            this.tabDays.Controls.Add(this.tpThu);
            this.tabDays.Controls.Add(this.tpFri);
            this.tabDays.Controls.Add(this.tpSat);
            this.tabDays.Controls.Add(this.tpSun);
            this.tabDays.Location = new System.Drawing.Point(0, 27);
            this.tabDays.Name = "tabDays";
            this.tabDays.SelectedIndex = 0;
            this.tabDays.Size = new System.Drawing.Size(800, 424);
            this.tabDays.TabIndex = 2;
            this.tabDays.SelectedIndexChanged += new System.EventHandler(this.tabControl1_SelectedIndexChanged);
            // 
            // tpMon
            // 
            this.tpMon.Controls.Add(this.dayScheduleHomeContainer);
            this.tpMon.Location = new System.Drawing.Point(4, 22);
            this.tpMon.Name = "tpMon";
            this.tpMon.Padding = new System.Windows.Forms.Padding(3);
            this.tpMon.Size = new System.Drawing.Size(792, 398);
            this.tpMon.TabIndex = 0;
            this.tpMon.Text = "Thứ 2";
            this.tpMon.UseVisualStyleBackColor = true;
            this.tpMon.Click += new System.EventHandler(this.tabPage1_Click);
            // 
            // dayScheduleHomeContainer
            // 
            this.dayScheduleHomeContainer.Controls.Add(this.btnSaveSchedule);
            this.dayScheduleHomeContainer.Controls.Add(this.dgvSchedule);
            this.dayScheduleHomeContainer.Location = new System.Drawing.Point(0, 0);
            this.dayScheduleHomeContainer.Name = "dayScheduleHomeContainer";
            this.dayScheduleHomeContainer.Size = new System.Drawing.Size(792, 398);
            this.dayScheduleHomeContainer.TabIndex = 2;
            // 
            // btnSaveSchedule
            // 
            this.btnSaveSchedule.Location = new System.Drawing.Point(704, 0);
            this.btnSaveSchedule.Name = "btnSaveSchedule";
            this.btnSaveSchedule.Size = new System.Drawing.Size(75, 23);
            this.btnSaveSchedule.TabIndex = 3;
            this.btnSaveSchedule.Text = "Chỉnh sửa";
            this.btnSaveSchedule.UseVisualStyleBackColor = true;
            // 
            // dgvSchedule
            // 
            this.dgvSchedule.AllowDrop = true;
            this.dgvSchedule.AllowUserToAddRows = false;
            this.dgvSchedule.AllowUserToResizeColumns = false;
            this.dgvSchedule.AllowUserToResizeRows = false;
            this.dgvSchedule.AutoGenerateColumns = false;
            this.dgvSchedule.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvSchedule.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvSchedule.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn1,
            this.dataGridViewTextBoxColumn2,
            this.dataGridViewTextBoxColumn3,
            this.dataGridViewTextBoxColumn4,
            this.dataGridViewTextBoxColumn5,
            this.dataGridViewTextBoxColumn6});
            this.dgvSchedule.DataSource = this.scheduleViewModelBindingSource;
            this.dgvSchedule.EditMode = System.Windows.Forms.DataGridViewEditMode.EditOnKeystroke;
            this.dgvSchedule.Location = new System.Drawing.Point(11, 29);
            this.dgvSchedule.MultiSelect = false;
            this.dgvSchedule.Name = "dgvSchedule";
            this.dgvSchedule.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.dgvSchedule.Size = new System.Drawing.Size(770, 336);
            this.dgvSchedule.TabIndex = 3;
            this.dgvSchedule.TabStop = false;
            this.dgvSchedule.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvSchedule_CellClick);
            this.dgvSchedule.MouseUp += new System.Windows.Forms.MouseEventHandler(this.dgvSchedule_MouseUp);
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.DataPropertyName = "StartTime";
            this.dataGridViewTextBoxColumn1.FillWeight = 50F;
            this.dataGridViewTextBoxColumn1.HeaderText = "Giờ";
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            // 
            // dataGridViewTextBoxColumn2
            // 
            this.dataGridViewTextBoxColumn2.DataPropertyName = "Name";
            this.dataGridViewTextBoxColumn2.FillWeight = 150F;
            this.dataGridViewTextBoxColumn2.HeaderText = "Tiết mục";
            this.dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            // 
            // dataGridViewTextBoxColumn3
            // 
            this.dataGridViewTextBoxColumn3.DataPropertyName = "Content";
            this.dataGridViewTextBoxColumn3.FillWeight = 150F;
            this.dataGridViewTextBoxColumn3.HeaderText = "Nội dung";
            this.dataGridViewTextBoxColumn3.Name = "dataGridViewTextBoxColumn3";
            // 
            // dataGridViewTextBoxColumn4
            // 
            this.dataGridViewTextBoxColumn4.DataPropertyName = "Code";
            this.dataGridViewTextBoxColumn4.HeaderText = "Thực hiện";
            this.dataGridViewTextBoxColumn4.Name = "dataGridViewTextBoxColumn4";
            // 
            // dataGridViewTextBoxColumn5
            // 
            this.dataGridViewTextBoxColumn5.DataPropertyName = "Duration";
            this.dataGridViewTextBoxColumn5.FillWeight = 50F;
            this.dataGridViewTextBoxColumn5.HeaderText = "Thời lượng";
            this.dataGridViewTextBoxColumn5.Name = "dataGridViewTextBoxColumn5";
            // 
            // dataGridViewTextBoxColumn6
            // 
            this.dataGridViewTextBoxColumn6.DataPropertyName = "Note";
            this.dataGridViewTextBoxColumn6.FillWeight = 150F;
            this.dataGridViewTextBoxColumn6.HeaderText = "Ghi chú";
            this.dataGridViewTextBoxColumn6.Name = "dataGridViewTextBoxColumn6";
            // 
            // scheduleViewModelBindingSource
            // 
            this.scheduleViewModelBindingSource.DataSource = typeof(ATV.ProgramDept.Service.ViewModel.ScheduleViewModel);
            // 
            // tpTue
            // 
            this.tpTue.Location = new System.Drawing.Point(4, 22);
            this.tpTue.Name = "tpTue";
            this.tpTue.Padding = new System.Windows.Forms.Padding(3);
            this.tpTue.Size = new System.Drawing.Size(792, 398);
            this.tpTue.TabIndex = 1;
            this.tpTue.Text = "Thứ 3";
            this.tpTue.UseVisualStyleBackColor = true;
            // 
            // tpWed
            // 
            this.tpWed.Location = new System.Drawing.Point(4, 22);
            this.tpWed.Name = "tpWed";
            this.tpWed.Size = new System.Drawing.Size(792, 398);
            this.tpWed.TabIndex = 2;
            this.tpWed.Text = "Thứ 4";
            this.tpWed.UseVisualStyleBackColor = true;
            // 
            // tpThu
            // 
            this.tpThu.Location = new System.Drawing.Point(4, 22);
            this.tpThu.Name = "tpThu";
            this.tpThu.Size = new System.Drawing.Size(792, 398);
            this.tpThu.TabIndex = 3;
            this.tpThu.Text = "Thứ 5";
            this.tpThu.UseVisualStyleBackColor = true;
            // 
            // tpFri
            // 
            this.tpFri.Location = new System.Drawing.Point(4, 22);
            this.tpFri.Name = "tpFri";
            this.tpFri.Size = new System.Drawing.Size(792, 398);
            this.tpFri.TabIndex = 4;
            this.tpFri.Text = "Thứ 6";
            this.tpFri.UseVisualStyleBackColor = true;
            // 
            // tpSat
            // 
            this.tpSat.Location = new System.Drawing.Point(4, 22);
            this.tpSat.Name = "tpSat";
            this.tpSat.Size = new System.Drawing.Size(792, 398);
            this.tpSat.TabIndex = 5;
            this.tpSat.Text = "Thứ 7";
            this.tpSat.UseVisualStyleBackColor = true;
            // 
            // tpSun
            // 
            this.tpSun.Location = new System.Drawing.Point(4, 22);
            this.tpSun.Name = "tpSun";
            this.tpSun.Size = new System.Drawing.Size(792, 398);
            this.tpSun.TabIndex = 6;
            this.tpSun.Text = "Chủ nhật";
            this.tpSun.UseVisualStyleBackColor = true;
            // 
            // EditorHomeForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.tabDays);
            this.Controls.Add(this.btnToAdmin);
            this.Controls.Add(this.mnsEditor);
            this.MainMenuStrip = this.mnsEditor;
            this.Name = "EditorHomeForm";
            this.Text = "ATV Program Department - Home";
            this.Load += new System.EventHandler(this.EditorHomeForm_Load);
            this.mnsEditor.ResumeLayout(false);
            this.mnsEditor.PerformLayout();
            this.tabDays.ResumeLayout(false);
            this.tpMon.ResumeLayout(false);
            this.dayScheduleHomeContainer.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvSchedule)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.scheduleViewModelBindingSource)).EndInit();
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
        private System.Windows.Forms.TabControl tabDays;
        private System.Windows.Forms.TabPage tpMon;
        private System.Windows.Forms.TabPage tpTue;
        private System.Windows.Forms.TabPage tpWed;
        private System.Windows.Forms.TabPage tpThu;
        private System.Windows.Forms.TabPage tpFri;
        private System.Windows.Forms.TabPage tpSat;
        private System.Windows.Forms.TabPage tpSun;
        private System.Windows.Forms.Panel dayScheduleHomeContainer;
        private System.Windows.Forms.BindingSource scheduleViewModelBindingSource;
        private System.Windows.Forms.Button btnSaveSchedule;
        private System.Windows.Forms.DataGridView dgvSchedule;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn3;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn4;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn5;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn6;
    }
}

