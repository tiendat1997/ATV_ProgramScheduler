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
            this.txtDate = new System.Windows.Forms.TextBox();
            this.btnSaveSchedule = new System.Windows.Forms.Button();
            this.dgvSchedule = new System.Windows.Forms.DataGridView();
            this.Section = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.isNotedDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.startTimeDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.programNameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.contentsDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.performByDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.durationDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.noteDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.iDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.programIDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.scheduleIDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.positionDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.isActiveDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.scheduleDetailViewModelBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.tpTue = new System.Windows.Forms.TabPage();
            this.tpWed = new System.Windows.Forms.TabPage();
            this.tpThu = new System.Windows.Forms.TabPage();
            this.tpFri = new System.Windows.Forms.TabPage();
            this.tpSat = new System.Windows.Forms.TabPage();
            this.tpSun = new System.Windows.Forms.TabPage();
            this.dtpYear = new System.Windows.Forms.DateTimePicker();
            this.lblWeek = new System.Windows.Forms.Label();
            this.btnNextweek = new System.Windows.Forms.Button();
            this.btnLastweek = new System.Windows.Forms.Button();
            this.flowLayoutPanel1 = new System.Windows.Forms.FlowLayoutPanel();
            this.flowLayoutPanel2 = new System.Windows.Forms.FlowLayoutPanel();
            this.mnsEditor.SuspendLayout();
            this.tabDays.SuspendLayout();
            this.tpMon.SuspendLayout();
            this.dayScheduleHomeContainer.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvSchedule)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.scheduleDetailViewModelBindingSource)).BeginInit();
            this.flowLayoutPanel1.SuspendLayout();
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
            this.mnsEditor.Size = new System.Drawing.Size(807, 24);
            this.mnsEditor.TabIndex = 0;
            this.mnsEditor.Text = "menuStrip1";
            this.mnsEditor.MouseClick += new System.Windows.Forms.MouseEventHandler(this.MnsEditor_MouseClick);
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
            this.tsmiInsertNewProgram.Click += new System.EventHandler(this.TsmiInsertNewProgram_Click);
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
            this.tsmiEditorEmail.Click += new System.EventHandler(this.TsmiEditorEmail_Click);
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
            this.btnToAdmin.AutoSize = true;
            this.btnToAdmin.Dock = System.Windows.Forms.DockStyle.Right;
            this.btnToAdmin.Location = new System.Drawing.Point(141, 3);
            this.btnToAdmin.Name = "btnToAdmin";
            this.btnToAdmin.Size = new System.Drawing.Size(75, 27);
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
            this.tabDays.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tabDays.Location = new System.Drawing.Point(0, 24);
            this.tabDays.Name = "tabDays";
            this.tabDays.SelectedIndex = 0;
            this.tabDays.Size = new System.Drawing.Size(807, 428);
            this.tabDays.TabIndex = 2;
            this.tabDays.SelectedIndexChanged += new System.EventHandler(this.tabControl1_SelectedIndexChanged);
            // 
            // tpMon
            // 
            this.tpMon.Controls.Add(this.dayScheduleHomeContainer);
            this.tpMon.Location = new System.Drawing.Point(4, 22);
            this.tpMon.Name = "tpMon";
            this.tpMon.Padding = new System.Windows.Forms.Padding(3);
            this.tpMon.Size = new System.Drawing.Size(799, 402);
            this.tpMon.TabIndex = 0;
            this.tpMon.Text = "Thứ 2";
            this.tpMon.UseVisualStyleBackColor = true;
            this.tpMon.Click += new System.EventHandler(this.tabPage1_Click);
            // 
            // dayScheduleHomeContainer
            // 
            this.dayScheduleHomeContainer.BackColor = System.Drawing.Color.Transparent;
            this.dayScheduleHomeContainer.Controls.Add(this.txtDate);
            this.dayScheduleHomeContainer.Controls.Add(this.btnSaveSchedule);
            this.dayScheduleHomeContainer.Controls.Add(this.dgvSchedule);
            this.dayScheduleHomeContainer.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dayScheduleHomeContainer.Location = new System.Drawing.Point(3, 3);
            this.dayScheduleHomeContainer.Name = "dayScheduleHomeContainer";
            this.dayScheduleHomeContainer.Size = new System.Drawing.Size(793, 396);
            this.dayScheduleHomeContainer.TabIndex = 2;
            // 
            // txtDate
            // 
            this.txtDate.Location = new System.Drawing.Point(2, 0);
            this.txtDate.Margin = new System.Windows.Forms.Padding(2);
            this.txtDate.Name = "txtDate";
            this.txtDate.Size = new System.Drawing.Size(114, 20);
            this.txtDate.TabIndex = 4;
            // 
            // btnSaveSchedule
            // 
            this.btnSaveSchedule.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnSaveSchedule.Location = new System.Drawing.Point(718, 3);
            this.btnSaveSchedule.Name = "btnSaveSchedule";
            this.btnSaveSchedule.Size = new System.Drawing.Size(75, 23);
            this.btnSaveSchedule.TabIndex = 3;
            this.btnSaveSchedule.Text = "Chỉnh sửa";
            this.btnSaveSchedule.UseVisualStyleBackColor = true;
            this.btnSaveSchedule.Click += new System.EventHandler(this.btnSaveSchedule_Click);
            // 
            // dgvSchedule
            // 
            this.dgvSchedule.AllowDrop = true;
            this.dgvSchedule.AllowUserToAddRows = false;
            this.dgvSchedule.AllowUserToResizeRows = false;
            this.dgvSchedule.AutoGenerateColumns = false;
            this.dgvSchedule.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvSchedule.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvSchedule.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Section,
            this.isNotedDataGridViewCheckBoxColumn,
            this.startTimeDataGridViewTextBoxColumn,
            this.programNameDataGridViewTextBoxColumn,
            this.contentsDataGridViewTextBoxColumn,
            this.performByDataGridViewTextBoxColumn,
            this.durationDataGridViewTextBoxColumn,
            this.noteDataGridViewTextBoxColumn,
            this.iDDataGridViewTextBoxColumn,
            this.programIDDataGridViewTextBoxColumn,
            this.scheduleIDDataGridViewTextBoxColumn,
            this.positionDataGridViewTextBoxColumn,
            this.isActiveDataGridViewCheckBoxColumn});
            this.dgvSchedule.DataSource = this.scheduleDetailViewModelBindingSource;
            this.dgvSchedule.EditMode = System.Windows.Forms.DataGridViewEditMode.EditOnKeystroke;
            this.dgvSchedule.Location = new System.Drawing.Point(3, 26);
            this.dgvSchedule.MultiSelect = false;
            this.dgvSchedule.Name = "dgvSchedule";
            this.dgvSchedule.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.dgvSchedule.Size = new System.Drawing.Size(792, 375);
            this.dgvSchedule.TabIndex = 3;
            this.dgvSchedule.TabStop = false;
            this.dgvSchedule.CellBeginEdit += new System.Windows.Forms.DataGridViewCellCancelEventHandler(this.dgvSchedule_CellBeginEdit);
            this.dgvSchedule.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvSchedule_CellClick);
            this.dgvSchedule.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.DgvSchedule_CellContentClick);
            this.dgvSchedule.CellEnter += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvSchedule_CellEnter);
            this.dgvSchedule.CellFormatting += new System.Windows.Forms.DataGridViewCellFormattingEventHandler(this.dgvSchedule_CellFormatting);
            this.dgvSchedule.CellMouseDoubleClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dgvSchedule_CellMouseDoubleClick);
            this.dgvSchedule.CellMouseDown += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dgvSchedule_CellMouseDown);
            this.dgvSchedule.CellValueChanged += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvSchedule_CellValueChanged);
            this.dgvSchedule.UserDeletedRow += new System.Windows.Forms.DataGridViewRowEventHandler(this.dgvSchedule_UserDeletedRow);
            this.dgvSchedule.UserDeletingRow += new System.Windows.Forms.DataGridViewRowCancelEventHandler(this.dgvSchedule_UserDeletingRow);
            this.dgvSchedule.MouseClick += new System.Windows.Forms.MouseEventHandler(this.DgvSchedule_MouseClick);
            this.dgvSchedule.MouseMove += new System.Windows.Forms.MouseEventHandler(this.dgvSchedule_MouseMove);
            this.dgvSchedule.MouseUp += new System.Windows.Forms.MouseEventHandler(this.dgvSchedule_MouseUp);
            // 
            // Section
            // 
            this.Section.DataPropertyName = "Section";
            this.Section.FillWeight = 32.87059F;
            this.Section.HeaderText = "Buổi";
            this.Section.Name = "Section";
            // 
            // isNotedDataGridViewCheckBoxColumn
            // 
            this.isNotedDataGridViewCheckBoxColumn.DataPropertyName = "IsNoted";
            this.isNotedDataGridViewCheckBoxColumn.FillWeight = 36.58479F;
            this.isNotedDataGridViewCheckBoxColumn.HeaderText = "Đánh dấu";
            this.isNotedDataGridViewCheckBoxColumn.Name = "isNotedDataGridViewCheckBoxColumn";
            // 
            // startTimeDataGridViewTextBoxColumn
            // 
            this.startTimeDataGridViewTextBoxColumn.DataPropertyName = "StartTime";
            this.startTimeDataGridViewTextBoxColumn.FillWeight = 29.77736F;
            this.startTimeDataGridViewTextBoxColumn.HeaderText = "Giờ";
            this.startTimeDataGridViewTextBoxColumn.Name = "startTimeDataGridViewTextBoxColumn";
            // 
            // programNameDataGridViewTextBoxColumn
            // 
            this.programNameDataGridViewTextBoxColumn.DataPropertyName = "ProgramName";
            this.programNameDataGridViewTextBoxColumn.FillWeight = 80.33557F;
            this.programNameDataGridViewTextBoxColumn.HeaderText = "Tiết mục";
            this.programNameDataGridViewTextBoxColumn.Name = "programNameDataGridViewTextBoxColumn";
            // 
            // contentsDataGridViewTextBoxColumn
            // 
            this.contentsDataGridViewTextBoxColumn.DataPropertyName = "Contents";
            this.contentsDataGridViewTextBoxColumn.FillWeight = 67.40936F;
            this.contentsDataGridViewTextBoxColumn.HeaderText = "Nội dung";
            this.contentsDataGridViewTextBoxColumn.Name = "contentsDataGridViewTextBoxColumn";
            // 
            // performByDataGridViewTextBoxColumn
            // 
            this.performByDataGridViewTextBoxColumn.DataPropertyName = "PerformBy";
            this.performByDataGridViewTextBoxColumn.FillWeight = 26.17454F;
            this.performByDataGridViewTextBoxColumn.HeaderText = "Thực hiện";
            this.performByDataGridViewTextBoxColumn.Name = "performByDataGridViewTextBoxColumn";
            // 
            // durationDataGridViewTextBoxColumn
            // 
            this.durationDataGridViewTextBoxColumn.DataPropertyName = "Duration";
            this.durationDataGridViewTextBoxColumn.FillWeight = 25.32434F;
            this.durationDataGridViewTextBoxColumn.HeaderText = "Thời lượng";
            this.durationDataGridViewTextBoxColumn.Name = "durationDataGridViewTextBoxColumn";
            // 
            // noteDataGridViewTextBoxColumn
            // 
            this.noteDataGridViewTextBoxColumn.DataPropertyName = "Note";
            this.noteDataGridViewTextBoxColumn.FillWeight = 61.8836F;
            this.noteDataGridViewTextBoxColumn.HeaderText = "Ghi chú";
            this.noteDataGridViewTextBoxColumn.Name = "noteDataGridViewTextBoxColumn";
            this.noteDataGridViewTextBoxColumn.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            // 
            // iDDataGridViewTextBoxColumn
            // 
            this.iDDataGridViewTextBoxColumn.DataPropertyName = "ID";
            this.iDDataGridViewTextBoxColumn.HeaderText = "ID";
            this.iDDataGridViewTextBoxColumn.Name = "iDDataGridViewTextBoxColumn";
            this.iDDataGridViewTextBoxColumn.Visible = false;
            // 
            // programIDDataGridViewTextBoxColumn
            // 
            this.programIDDataGridViewTextBoxColumn.DataPropertyName = "ProgramID";
            this.programIDDataGridViewTextBoxColumn.HeaderText = "ProgramID";
            this.programIDDataGridViewTextBoxColumn.Name = "programIDDataGridViewTextBoxColumn";
            this.programIDDataGridViewTextBoxColumn.Visible = false;
            // 
            // scheduleIDDataGridViewTextBoxColumn
            // 
            this.scheduleIDDataGridViewTextBoxColumn.DataPropertyName = "ScheduleID";
            this.scheduleIDDataGridViewTextBoxColumn.HeaderText = "ScheduleID";
            this.scheduleIDDataGridViewTextBoxColumn.Name = "scheduleIDDataGridViewTextBoxColumn";
            this.scheduleIDDataGridViewTextBoxColumn.Visible = false;
            // 
            // positionDataGridViewTextBoxColumn
            // 
            this.positionDataGridViewTextBoxColumn.DataPropertyName = "Position";
            this.positionDataGridViewTextBoxColumn.HeaderText = "Position";
            this.positionDataGridViewTextBoxColumn.Name = "positionDataGridViewTextBoxColumn";
            this.positionDataGridViewTextBoxColumn.Visible = false;
            // 
            // isActiveDataGridViewCheckBoxColumn
            // 
            this.isActiveDataGridViewCheckBoxColumn.DataPropertyName = "IsActive";
            this.isActiveDataGridViewCheckBoxColumn.HeaderText = "IsActive";
            this.isActiveDataGridViewCheckBoxColumn.Name = "isActiveDataGridViewCheckBoxColumn";
            this.isActiveDataGridViewCheckBoxColumn.Visible = false;
            // 
            // scheduleDetailViewModelBindingSource
            // 
            this.scheduleDetailViewModelBindingSource.DataSource = typeof(ATV.ProgramDept.Service.ViewModel.ScheduleDetailViewModel);
            // 
            // tpTue
            // 
            this.tpTue.Location = new System.Drawing.Point(4, 22);
            this.tpTue.Name = "tpTue";
            this.tpTue.Padding = new System.Windows.Forms.Padding(3);
            this.tpTue.Size = new System.Drawing.Size(799, 402);
            this.tpTue.TabIndex = 1;
            this.tpTue.Text = "Thứ 3";
            this.tpTue.UseVisualStyleBackColor = true;
            // 
            // tpWed
            // 
            this.tpWed.Location = new System.Drawing.Point(4, 22);
            this.tpWed.Name = "tpWed";
            this.tpWed.Size = new System.Drawing.Size(799, 402);
            this.tpWed.TabIndex = 2;
            this.tpWed.Text = "Thứ 4";
            this.tpWed.UseVisualStyleBackColor = true;
            // 
            // tpThu
            // 
            this.tpThu.Location = new System.Drawing.Point(4, 22);
            this.tpThu.Name = "tpThu";
            this.tpThu.Size = new System.Drawing.Size(799, 402);
            this.tpThu.TabIndex = 3;
            this.tpThu.Text = "Thứ 5";
            this.tpThu.UseVisualStyleBackColor = true;
            // 
            // tpFri
            // 
            this.tpFri.Location = new System.Drawing.Point(4, 22);
            this.tpFri.Name = "tpFri";
            this.tpFri.Size = new System.Drawing.Size(799, 402);
            this.tpFri.TabIndex = 4;
            this.tpFri.Text = "Thứ 6";
            this.tpFri.UseVisualStyleBackColor = true;
            // 
            // tpSat
            // 
            this.tpSat.Location = new System.Drawing.Point(4, 22);
            this.tpSat.Name = "tpSat";
            this.tpSat.Size = new System.Drawing.Size(799, 402);
            this.tpSat.TabIndex = 5;
            this.tpSat.Text = "Thứ 7";
            this.tpSat.UseVisualStyleBackColor = true;
            // 
            // tpSun
            // 
            this.tpSun.Location = new System.Drawing.Point(4, 22);
            this.tpSun.Name = "tpSun";
            this.tpSun.Size = new System.Drawing.Size(799, 402);
            this.tpSun.TabIndex = 6;
            this.tpSun.Text = "Chủ nhật";
            this.tpSun.UseVisualStyleBackColor = true;
            // 
            // dtpYear
            // 
            this.dtpYear.CustomFormat = "yyyy";
            this.dtpYear.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.dtpYear.Location = new System.Drawing.Point(74, 2);
            this.dtpYear.Margin = new System.Windows.Forms.Padding(2);
            this.dtpYear.Name = "dtpYear";
            this.dtpYear.ShowUpDown = true;
            this.dtpYear.Size = new System.Drawing.Size(62, 20);
            this.dtpYear.TabIndex = 3;
            this.dtpYear.ValueChanged += new System.EventHandler(this.dtpYear_ValueChanged);
            // 
            // lblWeek
            // 
            this.lblWeek.AutoSize = true;
            this.lblWeek.Location = new System.Drawing.Point(20, 0);
            this.lblWeek.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lblWeek.Name = "lblWeek";
            this.lblWeek.Size = new System.Drawing.Size(32, 13);
            this.lblWeek.TabIndex = 3;
            this.lblWeek.Text = "Tuần";
            // 
            // btnNextweek
            // 
            this.btnNextweek.Location = new System.Drawing.Point(56, 2);
            this.btnNextweek.Margin = new System.Windows.Forms.Padding(2);
            this.btnNextweek.Name = "btnNextweek";
            this.btnNextweek.Size = new System.Drawing.Size(14, 20);
            this.btnNextweek.TabIndex = 4;
            this.btnNextweek.Text = ">";
            this.btnNextweek.UseVisualStyleBackColor = true;
            this.btnNextweek.Click += new System.EventHandler(this.btnNextweek_Click);
            // 
            // btnLastweek
            // 
            this.btnLastweek.Location = new System.Drawing.Point(2, 2);
            this.btnLastweek.Margin = new System.Windows.Forms.Padding(2);
            this.btnLastweek.Name = "btnLastweek";
            this.btnLastweek.Size = new System.Drawing.Size(14, 20);
            this.btnLastweek.TabIndex = 5;
            this.btnLastweek.Text = "<";
            this.btnLastweek.UseVisualStyleBackColor = true;
            this.btnLastweek.Click += new System.EventHandler(this.btnLastweek_Click);
            // 
            // flowLayoutPanel1
            // 
            this.flowLayoutPanel1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.flowLayoutPanel1.Controls.Add(this.btnLastweek);
            this.flowLayoutPanel1.Controls.Add(this.lblWeek);
            this.flowLayoutPanel1.Controls.Add(this.btnNextweek);
            this.flowLayoutPanel1.Controls.Add(this.dtpYear);
            this.flowLayoutPanel1.Controls.Add(this.btnToAdmin);
            this.flowLayoutPanel1.Controls.Add(this.flowLayoutPanel2);
            this.flowLayoutPanel1.Location = new System.Drawing.Point(551, 0);
            this.flowLayoutPanel1.Name = "flowLayoutPanel1";
            this.flowLayoutPanel1.Size = new System.Drawing.Size(252, 24);
            this.flowLayoutPanel1.TabIndex = 6;
            // 
            // flowLayoutPanel2
            // 
            this.flowLayoutPanel2.Location = new System.Drawing.Point(3, 36);
            this.flowLayoutPanel2.Name = "flowLayoutPanel2";
            this.flowLayoutPanel2.Size = new System.Drawing.Size(200, 100);
            this.flowLayoutPanel2.TabIndex = 6;
            // 
            // EditorHomeForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(807, 452);
            this.Controls.Add(this.flowLayoutPanel1);
            this.Controls.Add(this.tabDays);
            this.Controls.Add(this.mnsEditor);
            this.MainMenuStrip = this.mnsEditor;
            this.Name = "EditorHomeForm";
            this.Text = "ATV Program Department - Home";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.EditorHomeForm_FormClosing);
            this.Load += new System.EventHandler(this.EditorHomeForm_Load);
            this.Resize += new System.EventHandler(this.EditorHomeForm_Resize);
            this.mnsEditor.ResumeLayout(false);
            this.mnsEditor.PerformLayout();
            this.tabDays.ResumeLayout(false);
            this.tpMon.ResumeLayout(false);
            this.dayScheduleHomeContainer.ResumeLayout(false);
            this.dayScheduleHomeContainer.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvSchedule)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.scheduleDetailViewModelBindingSource)).EndInit();
            this.flowLayoutPanel1.ResumeLayout(false);
            this.flowLayoutPanel1.PerformLayout();
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
        private System.Windows.Forms.Button btnSaveSchedule;
        private System.Windows.Forms.DataGridView dgvSchedule;
        private System.Windows.Forms.BindingSource scheduleDetailViewModelBindingSource;
        private System.Windows.Forms.Panel dayScheduleHomeContainer;
        private System.Windows.Forms.Label lblWeek;
        private System.Windows.Forms.Button btnNextweek;
        private System.Windows.Forms.Button btnLastweek;
        private System.Windows.Forms.DateTimePicker dtpYear;
        private System.Windows.Forms.TextBox txtDate;
        private System.Windows.Forms.DataGridViewTextBoxColumn Section;
        private System.Windows.Forms.DataGridViewCheckBoxColumn isNotedDataGridViewCheckBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn startTimeDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn programNameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn contentsDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn performByDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn durationDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn noteDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn iDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn programIDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn scheduleIDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn positionDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewCheckBoxColumn isActiveDataGridViewCheckBoxColumn;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel1;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel2;
    }
}

