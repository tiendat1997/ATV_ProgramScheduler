namespace ATV.ProgramDept.DesktopApp
{
    partial class ScheduleTemplateForm
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
            this.tabTemplate = new System.Windows.Forms.TabControl();
            this.tpMorning = new System.Windows.Forms.TabPage();
            this.label1 = new System.Windows.Forms.Label();
            this.dgvMorning = new System.Windows.Forms.DataGridView();
            this.iDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.startTimeDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.programIDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.programNameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.contentDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.performByDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.durationDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.noteDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.scheduleTemplateViewModelBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.tpNoon = new System.Windows.Forms.TabPage();
            this.dgvNoon = new System.Windows.Forms.DataGridView();
            this.dataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn5 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn6 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn7 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn8 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tpAfternoonAndEvening = new System.Windows.Forms.TabPage();
            this.dgvAfternoonAndEvening = new System.Windows.Forms.DataGridView();
            this.dataGridViewTextBoxColumn9 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn10 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn11 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn12 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn13 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn14 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn15 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn16 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.tpDawn = new System.Windows.Forms.TabPage();
            this.dgvDawn = new System.Windows.Forms.DataGridView();
            this.dataGridViewTextBoxColumn17 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn18 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn19 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn20 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn21 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn22 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn23 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dataGridViewTextBoxColumn24 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.scheduleTemplateBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.flowLayoutPanel1 = new System.Windows.Forms.FlowLayoutPanel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label2 = new System.Windows.Forms.Label();
            this.tabTemplate.SuspendLayout();
            this.tpMorning.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvMorning)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.scheduleTemplateViewModelBindingSource)).BeginInit();
            this.tpNoon.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvNoon)).BeginInit();
            this.tpAfternoonAndEvening.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvAfternoonAndEvening)).BeginInit();
            this.tpDawn.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvDawn)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.scheduleTemplateBindingSource)).BeginInit();
            this.flowLayoutPanel1.SuspendLayout();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabTemplate
            // 
            this.tabTemplate.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tabTemplate.Controls.Add(this.tpMorning);
            this.tabTemplate.Controls.Add(this.tpNoon);
            this.tabTemplate.Controls.Add(this.tpAfternoonAndEvening);
            this.tabTemplate.Controls.Add(this.tpDawn);
            this.tabTemplate.Location = new System.Drawing.Point(0, 0);
            this.tabTemplate.Name = "tabTemplate";
            this.tabTemplate.SelectedIndex = 0;
            this.tabTemplate.Size = new System.Drawing.Size(800, 450);
            this.tabTemplate.TabIndex = 0;
            // 
            // tpMorning
            // 
            this.tpMorning.Controls.Add(this.flowLayoutPanel1);
            this.tpMorning.Location = new System.Drawing.Point(4, 22);
            this.tpMorning.Name = "tpMorning";
            this.tpMorning.Padding = new System.Windows.Forms.Padding(3);
            this.tpMorning.Size = new System.Drawing.Size(792, 424);
            this.tpMorning.TabIndex = 0;
            this.tpMorning.Text = "Sáng";
            this.tpMorning.UseVisualStyleBackColor = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label1.Location = new System.Drawing.Point(2, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(202, 13);
            this.label1.TabIndex = 4;
            this.label1.Text = "CHUONG TRINH TRUYEN HINH SANG";
            // 
            // dgvMorning
            // 
            this.dgvMorning.AllowDrop = true;
            this.dgvMorning.AllowUserToResizeColumns = false;
            this.dgvMorning.AllowUserToResizeRows = false;
            this.dgvMorning.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dgvMorning.AutoGenerateColumns = false;
            this.dgvMorning.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dgvMorning.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvMorning.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.iDDataGridViewTextBoxColumn,
            this.startTimeDataGridViewTextBoxColumn,
            this.programIDDataGridViewTextBoxColumn,
            this.programNameDataGridViewTextBoxColumn,
            this.contentDataGridViewTextBoxColumn,
            this.performByDataGridViewTextBoxColumn,
            this.durationDataGridViewTextBoxColumn,
            this.noteDataGridViewTextBoxColumn});
            this.dgvMorning.DataSource = this.scheduleTemplateViewModelBindingSource;
            this.dgvMorning.EditMode = System.Windows.Forms.DataGridViewEditMode.EditOnKeystroke;
            this.dgvMorning.Location = new System.Drawing.Point(3, 31);
            this.dgvMorning.MultiSelect = false;
            this.dgvMorning.Name = "dgvMorning";
            this.dgvMorning.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.dgvMorning.Size = new System.Drawing.Size(786, 372);
            this.dgvMorning.TabIndex = 3;
            this.dgvMorning.TabStop = false;
            this.dgvMorning.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvSchedule_CellContentClick);
            // 
            // iDDataGridViewTextBoxColumn
            // 
            this.iDDataGridViewTextBoxColumn.DataPropertyName = "ID";
            this.iDDataGridViewTextBoxColumn.HeaderText = "ID";
            this.iDDataGridViewTextBoxColumn.Name = "iDDataGridViewTextBoxColumn";
            this.iDDataGridViewTextBoxColumn.Visible = false;
            // 
            // startTimeDataGridViewTextBoxColumn
            // 
            this.startTimeDataGridViewTextBoxColumn.DataPropertyName = "StartTime";
            this.startTimeDataGridViewTextBoxColumn.FillWeight = 50F;
            this.startTimeDataGridViewTextBoxColumn.HeaderText = "Giờ";
            this.startTimeDataGridViewTextBoxColumn.Name = "startTimeDataGridViewTextBoxColumn";
            this.startTimeDataGridViewTextBoxColumn.Width = 53;
            // 
            // programIDDataGridViewTextBoxColumn
            // 
            this.programIDDataGridViewTextBoxColumn.DataPropertyName = "ProgramID";
            this.programIDDataGridViewTextBoxColumn.HeaderText = "ProgramID";
            this.programIDDataGridViewTextBoxColumn.Name = "programIDDataGridViewTextBoxColumn";
            this.programIDDataGridViewTextBoxColumn.Visible = false;
            // 
            // programNameDataGridViewTextBoxColumn
            // 
            this.programNameDataGridViewTextBoxColumn.DataPropertyName = "ProgramName";
            this.programNameDataGridViewTextBoxColumn.FillWeight = 200F;
            this.programNameDataGridViewTextBoxColumn.HeaderText = "Tiết mục";
            this.programNameDataGridViewTextBoxColumn.Name = "programNameDataGridViewTextBoxColumn";
            this.programNameDataGridViewTextBoxColumn.Width = 213;
            // 
            // contentDataGridViewTextBoxColumn
            // 
            this.contentDataGridViewTextBoxColumn.DataPropertyName = "Content";
            this.contentDataGridViewTextBoxColumn.FillWeight = 200F;
            this.contentDataGridViewTextBoxColumn.HeaderText = "Nội dung";
            this.contentDataGridViewTextBoxColumn.Name = "contentDataGridViewTextBoxColumn";
            this.contentDataGridViewTextBoxColumn.Width = 213;
            // 
            // performByDataGridViewTextBoxColumn
            // 
            this.performByDataGridViewTextBoxColumn.DataPropertyName = "PerformBy";
            this.performByDataGridViewTextBoxColumn.HeaderText = "Thực hiện";
            this.performByDataGridViewTextBoxColumn.Name = "performByDataGridViewTextBoxColumn";
            this.performByDataGridViewTextBoxColumn.Width = 106;
            // 
            // durationDataGridViewTextBoxColumn
            // 
            this.durationDataGridViewTextBoxColumn.DataPropertyName = "Duration";
            this.durationDataGridViewTextBoxColumn.FillWeight = 50F;
            this.durationDataGridViewTextBoxColumn.HeaderText = "Thời lượng";
            this.durationDataGridViewTextBoxColumn.Name = "durationDataGridViewTextBoxColumn";
            this.durationDataGridViewTextBoxColumn.Width = 54;
            // 
            // noteDataGridViewTextBoxColumn
            // 
            this.noteDataGridViewTextBoxColumn.DataPropertyName = "Note";
            this.noteDataGridViewTextBoxColumn.HeaderText = "Ghi chú";
            this.noteDataGridViewTextBoxColumn.Name = "noteDataGridViewTextBoxColumn";
            this.noteDataGridViewTextBoxColumn.Width = 106;
            // 
            // scheduleTemplateViewModelBindingSource
            // 
            this.scheduleTemplateViewModelBindingSource.DataSource = typeof(ATV.ProgramDept.Service.ViewModel.ScheduleTemplateViewModel);
            // 
            // tpNoon
            // 
            this.tpNoon.Controls.Add(this.dgvNoon);
            this.tpNoon.Location = new System.Drawing.Point(4, 22);
            this.tpNoon.Name = "tpNoon";
            this.tpNoon.Padding = new System.Windows.Forms.Padding(3);
            this.tpNoon.Size = new System.Drawing.Size(792, 424);
            this.tpNoon.TabIndex = 1;
            this.tpNoon.Text = "Trưa";
            this.tpNoon.UseVisualStyleBackColor = true;
            // 
            // dgvNoon
            // 
            this.dgvNoon.AllowDrop = true;
            this.dgvNoon.AllowUserToResizeColumns = false;
            this.dgvNoon.AllowUserToResizeRows = false;
            this.dgvNoon.AutoGenerateColumns = false;
            this.dgvNoon.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvNoon.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn1,
            this.dataGridViewTextBoxColumn2,
            this.dataGridViewTextBoxColumn3,
            this.dataGridViewTextBoxColumn4,
            this.dataGridViewTextBoxColumn5,
            this.dataGridViewTextBoxColumn6,
            this.dataGridViewTextBoxColumn7,
            this.dataGridViewTextBoxColumn8});
            this.dgvNoon.DataSource = this.scheduleTemplateViewModelBindingSource;
            this.dgvNoon.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvNoon.EditMode = System.Windows.Forms.DataGridViewEditMode.EditOnKeystroke;
            this.dgvNoon.Location = new System.Drawing.Point(3, 3);
            this.dgvNoon.MultiSelect = false;
            this.dgvNoon.Name = "dgvNoon";
            this.dgvNoon.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.dgvNoon.Size = new System.Drawing.Size(786, 418);
            this.dgvNoon.TabIndex = 4;
            this.dgvNoon.TabStop = false;
            // 
            // dataGridViewTextBoxColumn1
            // 
            this.dataGridViewTextBoxColumn1.DataPropertyName = "ID";
            this.dataGridViewTextBoxColumn1.HeaderText = "ID";
            this.dataGridViewTextBoxColumn1.Name = "dataGridViewTextBoxColumn1";
            this.dataGridViewTextBoxColumn1.Visible = false;
            // 
            // dataGridViewTextBoxColumn2
            // 
            this.dataGridViewTextBoxColumn2.DataPropertyName = "StartTime";
            this.dataGridViewTextBoxColumn2.FillWeight = 50F;
            this.dataGridViewTextBoxColumn2.HeaderText = "Giờ";
            this.dataGridViewTextBoxColumn2.Name = "dataGridViewTextBoxColumn2";
            this.dataGridViewTextBoxColumn2.Width = 50;
            // 
            // dataGridViewTextBoxColumn3
            // 
            this.dataGridViewTextBoxColumn3.DataPropertyName = "ProgramID";
            this.dataGridViewTextBoxColumn3.HeaderText = "ProgramID";
            this.dataGridViewTextBoxColumn3.Name = "dataGridViewTextBoxColumn3";
            this.dataGridViewTextBoxColumn3.Visible = false;
            // 
            // dataGridViewTextBoxColumn4
            // 
            this.dataGridViewTextBoxColumn4.DataPropertyName = "ProgramName";
            this.dataGridViewTextBoxColumn4.FillWeight = 200F;
            this.dataGridViewTextBoxColumn4.HeaderText = "Tiết mục";
            this.dataGridViewTextBoxColumn4.Name = "dataGridViewTextBoxColumn4";
            this.dataGridViewTextBoxColumn4.Width = 200;
            // 
            // dataGridViewTextBoxColumn5
            // 
            this.dataGridViewTextBoxColumn5.DataPropertyName = "Content";
            this.dataGridViewTextBoxColumn5.FillWeight = 200F;
            this.dataGridViewTextBoxColumn5.HeaderText = "Nội dung";
            this.dataGridViewTextBoxColumn5.Name = "dataGridViewTextBoxColumn5";
            this.dataGridViewTextBoxColumn5.Width = 200;
            // 
            // dataGridViewTextBoxColumn6
            // 
            this.dataGridViewTextBoxColumn6.DataPropertyName = "PerformBy";
            this.dataGridViewTextBoxColumn6.HeaderText = "Thực hiện";
            this.dataGridViewTextBoxColumn6.Name = "dataGridViewTextBoxColumn6";
            // 
            // dataGridViewTextBoxColumn7
            // 
            this.dataGridViewTextBoxColumn7.DataPropertyName = "Duration";
            this.dataGridViewTextBoxColumn7.FillWeight = 50F;
            this.dataGridViewTextBoxColumn7.HeaderText = "Thời lượng";
            this.dataGridViewTextBoxColumn7.Name = "dataGridViewTextBoxColumn7";
            this.dataGridViewTextBoxColumn7.Width = 50;
            // 
            // dataGridViewTextBoxColumn8
            // 
            this.dataGridViewTextBoxColumn8.DataPropertyName = "Note";
            this.dataGridViewTextBoxColumn8.HeaderText = "Ghi chú";
            this.dataGridViewTextBoxColumn8.Name = "dataGridViewTextBoxColumn8";
            // 
            // tpAfternoonAndEvening
            // 
            this.tpAfternoonAndEvening.Controls.Add(this.dgvAfternoonAndEvening);
            this.tpAfternoonAndEvening.Location = new System.Drawing.Point(4, 22);
            this.tpAfternoonAndEvening.Name = "tpAfternoonAndEvening";
            this.tpAfternoonAndEvening.Padding = new System.Windows.Forms.Padding(3);
            this.tpAfternoonAndEvening.Size = new System.Drawing.Size(792, 424);
            this.tpAfternoonAndEvening.TabIndex = 2;
            this.tpAfternoonAndEvening.Text = "Chiều và tối";
            this.tpAfternoonAndEvening.UseVisualStyleBackColor = true;
            // 
            // dgvAfternoonAndEvening
            // 
            this.dgvAfternoonAndEvening.AllowDrop = true;
            this.dgvAfternoonAndEvening.AllowUserToResizeColumns = false;
            this.dgvAfternoonAndEvening.AllowUserToResizeRows = false;
            this.dgvAfternoonAndEvening.AutoGenerateColumns = false;
            this.dgvAfternoonAndEvening.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvAfternoonAndEvening.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn9,
            this.dataGridViewTextBoxColumn10,
            this.dataGridViewTextBoxColumn11,
            this.dataGridViewTextBoxColumn12,
            this.dataGridViewTextBoxColumn13,
            this.dataGridViewTextBoxColumn14,
            this.dataGridViewTextBoxColumn15,
            this.dataGridViewTextBoxColumn16});
            this.dgvAfternoonAndEvening.DataSource = this.scheduleTemplateViewModelBindingSource;
            this.dgvAfternoonAndEvening.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvAfternoonAndEvening.EditMode = System.Windows.Forms.DataGridViewEditMode.EditOnKeystroke;
            this.dgvAfternoonAndEvening.Location = new System.Drawing.Point(3, 3);
            this.dgvAfternoonAndEvening.MultiSelect = false;
            this.dgvAfternoonAndEvening.Name = "dgvAfternoonAndEvening";
            this.dgvAfternoonAndEvening.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.dgvAfternoonAndEvening.Size = new System.Drawing.Size(786, 418);
            this.dgvAfternoonAndEvening.TabIndex = 4;
            this.dgvAfternoonAndEvening.TabStop = false;
            // 
            // dataGridViewTextBoxColumn9
            // 
            this.dataGridViewTextBoxColumn9.DataPropertyName = "ID";
            this.dataGridViewTextBoxColumn9.HeaderText = "ID";
            this.dataGridViewTextBoxColumn9.Name = "dataGridViewTextBoxColumn9";
            this.dataGridViewTextBoxColumn9.Visible = false;
            // 
            // dataGridViewTextBoxColumn10
            // 
            this.dataGridViewTextBoxColumn10.DataPropertyName = "StartTime";
            this.dataGridViewTextBoxColumn10.FillWeight = 50F;
            this.dataGridViewTextBoxColumn10.HeaderText = "Giờ";
            this.dataGridViewTextBoxColumn10.Name = "dataGridViewTextBoxColumn10";
            this.dataGridViewTextBoxColumn10.Width = 50;
            // 
            // dataGridViewTextBoxColumn11
            // 
            this.dataGridViewTextBoxColumn11.DataPropertyName = "ProgramID";
            this.dataGridViewTextBoxColumn11.HeaderText = "ProgramID";
            this.dataGridViewTextBoxColumn11.Name = "dataGridViewTextBoxColumn11";
            this.dataGridViewTextBoxColumn11.Visible = false;
            // 
            // dataGridViewTextBoxColumn12
            // 
            this.dataGridViewTextBoxColumn12.DataPropertyName = "ProgramName";
            this.dataGridViewTextBoxColumn12.FillWeight = 200F;
            this.dataGridViewTextBoxColumn12.HeaderText = "Tiết mục";
            this.dataGridViewTextBoxColumn12.Name = "dataGridViewTextBoxColumn12";
            this.dataGridViewTextBoxColumn12.Width = 200;
            // 
            // dataGridViewTextBoxColumn13
            // 
            this.dataGridViewTextBoxColumn13.DataPropertyName = "Content";
            this.dataGridViewTextBoxColumn13.FillWeight = 200F;
            this.dataGridViewTextBoxColumn13.HeaderText = "Nội dung";
            this.dataGridViewTextBoxColumn13.Name = "dataGridViewTextBoxColumn13";
            this.dataGridViewTextBoxColumn13.Width = 200;
            // 
            // dataGridViewTextBoxColumn14
            // 
            this.dataGridViewTextBoxColumn14.DataPropertyName = "PerformBy";
            this.dataGridViewTextBoxColumn14.HeaderText = "Thực hiện";
            this.dataGridViewTextBoxColumn14.Name = "dataGridViewTextBoxColumn14";
            // 
            // dataGridViewTextBoxColumn15
            // 
            this.dataGridViewTextBoxColumn15.DataPropertyName = "Duration";
            this.dataGridViewTextBoxColumn15.FillWeight = 50F;
            this.dataGridViewTextBoxColumn15.HeaderText = "Thời lượng";
            this.dataGridViewTextBoxColumn15.Name = "dataGridViewTextBoxColumn15";
            this.dataGridViewTextBoxColumn15.Width = 50;
            // 
            // dataGridViewTextBoxColumn16
            // 
            this.dataGridViewTextBoxColumn16.DataPropertyName = "Note";
            this.dataGridViewTextBoxColumn16.HeaderText = "Ghi chú";
            this.dataGridViewTextBoxColumn16.Name = "dataGridViewTextBoxColumn16";
            // 
            // tpDawn
            // 
            this.tpDawn.Controls.Add(this.dgvDawn);
            this.tpDawn.Location = new System.Drawing.Point(4, 22);
            this.tpDawn.Name = "tpDawn";
            this.tpDawn.Padding = new System.Windows.Forms.Padding(3);
            this.tpDawn.Size = new System.Drawing.Size(792, 424);
            this.tpDawn.TabIndex = 3;
            this.tpDawn.Text = "Rạng sáng";
            this.tpDawn.UseVisualStyleBackColor = true;
            // 
            // dgvDawn
            // 
            this.dgvDawn.AllowDrop = true;
            this.dgvDawn.AllowUserToResizeColumns = false;
            this.dgvDawn.AllowUserToResizeRows = false;
            this.dgvDawn.AutoGenerateColumns = false;
            this.dgvDawn.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvDawn.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.dataGridViewTextBoxColumn17,
            this.dataGridViewTextBoxColumn18,
            this.dataGridViewTextBoxColumn19,
            this.dataGridViewTextBoxColumn20,
            this.dataGridViewTextBoxColumn21,
            this.dataGridViewTextBoxColumn22,
            this.dataGridViewTextBoxColumn23,
            this.dataGridViewTextBoxColumn24});
            this.dgvDawn.DataSource = this.scheduleTemplateViewModelBindingSource;
            this.dgvDawn.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgvDawn.EditMode = System.Windows.Forms.DataGridViewEditMode.EditOnKeystroke;
            this.dgvDawn.Location = new System.Drawing.Point(3, 3);
            this.dgvDawn.MultiSelect = false;
            this.dgvDawn.Name = "dgvDawn";
            this.dgvDawn.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.dgvDawn.Size = new System.Drawing.Size(786, 418);
            this.dgvDawn.TabIndex = 4;
            this.dgvDawn.TabStop = false;
            // 
            // dataGridViewTextBoxColumn17
            // 
            this.dataGridViewTextBoxColumn17.DataPropertyName = "ID";
            this.dataGridViewTextBoxColumn17.HeaderText = "ID";
            this.dataGridViewTextBoxColumn17.Name = "dataGridViewTextBoxColumn17";
            this.dataGridViewTextBoxColumn17.Visible = false;
            // 
            // dataGridViewTextBoxColumn18
            // 
            this.dataGridViewTextBoxColumn18.DataPropertyName = "StartTime";
            this.dataGridViewTextBoxColumn18.FillWeight = 50F;
            this.dataGridViewTextBoxColumn18.HeaderText = "Giờ";
            this.dataGridViewTextBoxColumn18.Name = "dataGridViewTextBoxColumn18";
            this.dataGridViewTextBoxColumn18.Width = 50;
            // 
            // dataGridViewTextBoxColumn19
            // 
            this.dataGridViewTextBoxColumn19.DataPropertyName = "ProgramID";
            this.dataGridViewTextBoxColumn19.HeaderText = "ProgramID";
            this.dataGridViewTextBoxColumn19.Name = "dataGridViewTextBoxColumn19";
            this.dataGridViewTextBoxColumn19.Visible = false;
            // 
            // dataGridViewTextBoxColumn20
            // 
            this.dataGridViewTextBoxColumn20.DataPropertyName = "ProgramName";
            this.dataGridViewTextBoxColumn20.FillWeight = 200F;
            this.dataGridViewTextBoxColumn20.HeaderText = "Tiết mục";
            this.dataGridViewTextBoxColumn20.Name = "dataGridViewTextBoxColumn20";
            this.dataGridViewTextBoxColumn20.Width = 200;
            // 
            // dataGridViewTextBoxColumn21
            // 
            this.dataGridViewTextBoxColumn21.DataPropertyName = "Content";
            this.dataGridViewTextBoxColumn21.FillWeight = 200F;
            this.dataGridViewTextBoxColumn21.HeaderText = "Nội dung";
            this.dataGridViewTextBoxColumn21.Name = "dataGridViewTextBoxColumn21";
            this.dataGridViewTextBoxColumn21.Width = 200;
            // 
            // dataGridViewTextBoxColumn22
            // 
            this.dataGridViewTextBoxColumn22.DataPropertyName = "PerformBy";
            this.dataGridViewTextBoxColumn22.HeaderText = "Thực hiện";
            this.dataGridViewTextBoxColumn22.Name = "dataGridViewTextBoxColumn22";
            // 
            // dataGridViewTextBoxColumn23
            // 
            this.dataGridViewTextBoxColumn23.DataPropertyName = "Duration";
            this.dataGridViewTextBoxColumn23.FillWeight = 50F;
            this.dataGridViewTextBoxColumn23.HeaderText = "Thời lượng";
            this.dataGridViewTextBoxColumn23.Name = "dataGridViewTextBoxColumn23";
            this.dataGridViewTextBoxColumn23.Width = 50;
            // 
            // dataGridViewTextBoxColumn24
            // 
            this.dataGridViewTextBoxColumn24.DataPropertyName = "Note";
            this.dataGridViewTextBoxColumn24.HeaderText = "Ghi chú";
            this.dataGridViewTextBoxColumn24.Name = "dataGridViewTextBoxColumn24";
            // 
            // scheduleTemplateBindingSource
            // 
            this.scheduleTemplateBindingSource.DataSource = typeof(ATV.ProgramDept.Entity.ScheduleTemplate);
            // 
            // flowLayoutPanel1
            // 
            this.flowLayoutPanel1.BackColor = System.Drawing.Color.Transparent;
            this.flowLayoutPanel1.Controls.Add(this.panel1);
            this.flowLayoutPanel1.Controls.Add(this.dgvMorning);
            this.flowLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.flowLayoutPanel1.Location = new System.Drawing.Point(3, 3);
            this.flowLayoutPanel1.Name = "flowLayoutPanel1";
            this.flowLayoutPanel1.Size = new System.Drawing.Size(786, 418);
            this.flowLayoutPanel1.TabIndex = 5;
            // 
            // panel1
            // 
            this.panel1.AutoSize = true;
            this.panel1.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(3, 3);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(749, 22);
            this.panel1.TabIndex = 5;
            // 
            // label2
            // 
            this.label2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label2.AutoSize = true;
            this.label2.ForeColor = System.Drawing.SystemColors.ControlText;
            this.label2.Location = new System.Drawing.Point(711, 9);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(35, 13);
            this.label2.TabIndex = 5;
            this.label2.Text = "Thu 2";
            // 
            // ScheduleTemplateForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.tabTemplate);
            this.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "ScheduleTemplateForm";
            this.Text = "ScheduleTemplateForm";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.ScheduleTemplateForm_FormClosed);
            this.Load += new System.EventHandler(this.ScheduleTemplateForm_Load);
            this.Resize += new System.EventHandler(this.ScheduleTemplateForm_Resize);
            this.tabTemplate.ResumeLayout(false);
            this.tpMorning.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvMorning)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.scheduleTemplateViewModelBindingSource)).EndInit();
            this.tpNoon.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvNoon)).EndInit();
            this.tpAfternoonAndEvening.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvAfternoonAndEvening)).EndInit();
            this.tpDawn.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvDawn)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.scheduleTemplateBindingSource)).EndInit();
            this.flowLayoutPanel1.ResumeLayout(false);
            this.flowLayoutPanel1.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabTemplate;
        private System.Windows.Forms.TabPage tpMorning;
        private System.Windows.Forms.TabPage tpNoon;
        private System.Windows.Forms.TabPage tpAfternoonAndEvening;
        private System.Windows.Forms.TabPage tpDawn;
        private System.Windows.Forms.DataGridView dgvMorning;
        private System.Windows.Forms.BindingSource scheduleTemplateBindingSource;
        private System.Windows.Forms.BindingSource scheduleTemplateViewModelBindingSource;
        private System.Windows.Forms.DataGridViewTextBoxColumn nameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn codeDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridView dgvNoon;
        private System.Windows.Forms.DataGridView dgvAfternoonAndEvening;
        private System.Windows.Forms.DataGridView dgvDawn;
        private System.Windows.Forms.DataGridViewTextBoxColumn iDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn startTimeDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn programIDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn programNameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn contentDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn performByDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn durationDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn noteDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn2;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn3;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn4;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn5;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn6;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn7;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn8;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn9;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn10;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn11;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn12;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn13;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn14;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn15;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn16;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn17;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn18;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn19;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn20;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn21;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn22;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn23;
        private System.Windows.Forms.DataGridViewTextBoxColumn dataGridViewTextBoxColumn24;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label2;
    }
}