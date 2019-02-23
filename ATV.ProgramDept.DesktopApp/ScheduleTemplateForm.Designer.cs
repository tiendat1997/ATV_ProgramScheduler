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
            this.dgvScheduleTemplateDetail = new System.Windows.Forms.DataGridView();
            this.Section = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.startTimeDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.programNameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.contentsDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.performByDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.durationDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.noteDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.iDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.programIDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.scheduleTemplateIDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.positionDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.isNotedDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.isActiveDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.scheduleTemplateDetailViewModelBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.flpScheduleTemplate = new System.Windows.Forms.FlowLayoutPanel();
            this.pnlHeader = new System.Windows.Forms.Panel();
            this.btnSave = new System.Windows.Forms.Button();
            this.lblTitle = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgvScheduleTemplateDetail)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.scheduleTemplateDetailViewModelBindingSource)).BeginInit();
            this.flpScheduleTemplate.SuspendLayout();
            this.pnlHeader.SuspendLayout();
            this.SuspendLayout();
            // 
            // dgvScheduleTemplateDetail
            // 
            this.dgvScheduleTemplateDetail.AllowUserToAddRows = false;
            this.dgvScheduleTemplateDetail.AutoGenerateColumns = false;
            this.dgvScheduleTemplateDetail.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dgvScheduleTemplateDetail.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvScheduleTemplateDetail.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Section,
            this.startTimeDataGridViewTextBoxColumn,
            this.programNameDataGridViewTextBoxColumn,
            this.contentsDataGridViewTextBoxColumn,
            this.performByDataGridViewTextBoxColumn,
            this.durationDataGridViewTextBoxColumn,
            this.noteDataGridViewTextBoxColumn,
            this.iDDataGridViewTextBoxColumn,
            this.programIDDataGridViewTextBoxColumn,
            this.scheduleTemplateIDDataGridViewTextBoxColumn,
            this.positionDataGridViewTextBoxColumn,
            this.isNotedDataGridViewCheckBoxColumn,
            this.isActiveDataGridViewCheckBoxColumn});
            this.dgvScheduleTemplateDetail.DataSource = this.scheduleTemplateDetailViewModelBindingSource;
            this.dgvScheduleTemplateDetail.Location = new System.Drawing.Point(4, 55);
            this.dgvScheduleTemplateDetail.Margin = new System.Windows.Forms.Padding(4);
            this.dgvScheduleTemplateDetail.Name = "dgvScheduleTemplateDetail";
            this.dgvScheduleTemplateDetail.Size = new System.Drawing.Size(1063, 500);
            this.dgvScheduleTemplateDetail.TabIndex = 0;
            this.dgvScheduleTemplateDetail.CellFormatting += new System.Windows.Forms.DataGridViewCellFormattingEventHandler(this.dgvScheduleTemplateDetail_CellFormatting);
            this.dgvScheduleTemplateDetail.CellValueChanged += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvScheduleTemplateDetail_CellValueChanged);
            this.dgvScheduleTemplateDetail.UserDeletedRow += new System.Windows.Forms.DataGridViewRowEventHandler(this.dgvScheduleTemplateDetail_UserDeletedRow);
            this.dgvScheduleTemplateDetail.MouseUp += new System.Windows.Forms.MouseEventHandler(this.dgvScheduleTemplateDetail_MouseUp);
            // 
            // Section
            // 
            this.Section.DataPropertyName = "Section";
            this.Section.FillWeight = 50F;
            this.Section.HeaderText = "Buổi";
            this.Section.Name = "Section";
            this.Section.ReadOnly = true;
            // 
            // startTimeDataGridViewTextBoxColumn
            // 
            this.startTimeDataGridViewTextBoxColumn.DataPropertyName = "StartTime";
            this.startTimeDataGridViewTextBoxColumn.FillWeight = 43.52792F;
            this.startTimeDataGridViewTextBoxColumn.HeaderText = "Giờ";
            this.startTimeDataGridViewTextBoxColumn.Name = "startTimeDataGridViewTextBoxColumn";
            this.startTimeDataGridViewTextBoxColumn.ReadOnly = true;
            // 
            // programNameDataGridViewTextBoxColumn
            // 
            this.programNameDataGridViewTextBoxColumn.DataPropertyName = "ProgramName";
            this.programNameDataGridViewTextBoxColumn.FillWeight = 130.5838F;
            this.programNameDataGridViewTextBoxColumn.HeaderText = "Tiết mục";
            this.programNameDataGridViewTextBoxColumn.Name = "programNameDataGridViewTextBoxColumn";
            // 
            // contentsDataGridViewTextBoxColumn
            // 
            this.contentsDataGridViewTextBoxColumn.DataPropertyName = "Contents";
            this.contentsDataGridViewTextBoxColumn.FillWeight = 130.5838F;
            this.contentsDataGridViewTextBoxColumn.HeaderText = "Nội dung";
            this.contentsDataGridViewTextBoxColumn.Name = "contentsDataGridViewTextBoxColumn";
            // 
            // performByDataGridViewTextBoxColumn
            // 
            this.performByDataGridViewTextBoxColumn.DataPropertyName = "PerformBy";
            this.performByDataGridViewTextBoxColumn.FillWeight = 43.52792F;
            this.performByDataGridViewTextBoxColumn.HeaderText = "Thực hiện";
            this.performByDataGridViewTextBoxColumn.Name = "performByDataGridViewTextBoxColumn";
            // 
            // durationDataGridViewTextBoxColumn
            // 
            this.durationDataGridViewTextBoxColumn.DataPropertyName = "Duration";
            this.durationDataGridViewTextBoxColumn.FillWeight = 43.52792F;
            this.durationDataGridViewTextBoxColumn.HeaderText = "Thời lượng";
            this.durationDataGridViewTextBoxColumn.Name = "durationDataGridViewTextBoxColumn";
            // 
            // noteDataGridViewTextBoxColumn
            // 
            this.noteDataGridViewTextBoxColumn.DataPropertyName = "Note";
            this.noteDataGridViewTextBoxColumn.FillWeight = 130.5838F;
            this.noteDataGridViewTextBoxColumn.HeaderText = "Ghi chú";
            this.noteDataGridViewTextBoxColumn.Name = "noteDataGridViewTextBoxColumn";
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
            // scheduleTemplateIDDataGridViewTextBoxColumn
            // 
            this.scheduleTemplateIDDataGridViewTextBoxColumn.DataPropertyName = "ScheduleTemplateID";
            this.scheduleTemplateIDDataGridViewTextBoxColumn.HeaderText = "ScheduleTemplateID";
            this.scheduleTemplateIDDataGridViewTextBoxColumn.Name = "scheduleTemplateIDDataGridViewTextBoxColumn";
            this.scheduleTemplateIDDataGridViewTextBoxColumn.Visible = false;
            // 
            // positionDataGridViewTextBoxColumn
            // 
            this.positionDataGridViewTextBoxColumn.DataPropertyName = "Position";
            this.positionDataGridViewTextBoxColumn.HeaderText = "Position";
            this.positionDataGridViewTextBoxColumn.Name = "positionDataGridViewTextBoxColumn";
            this.positionDataGridViewTextBoxColumn.Visible = false;
            // 
            // isNotedDataGridViewCheckBoxColumn
            // 
            this.isNotedDataGridViewCheckBoxColumn.DataPropertyName = "IsNoted";
            this.isNotedDataGridViewCheckBoxColumn.HeaderText = "IsNoted";
            this.isNotedDataGridViewCheckBoxColumn.Name = "isNotedDataGridViewCheckBoxColumn";
            this.isNotedDataGridViewCheckBoxColumn.Visible = false;
            // 
            // isActiveDataGridViewCheckBoxColumn
            // 
            this.isActiveDataGridViewCheckBoxColumn.DataPropertyName = "IsActive";
            this.isActiveDataGridViewCheckBoxColumn.HeaderText = "IsActive";
            this.isActiveDataGridViewCheckBoxColumn.Name = "isActiveDataGridViewCheckBoxColumn";
            this.isActiveDataGridViewCheckBoxColumn.Visible = false;
            // 
            // scheduleTemplateDetailViewModelBindingSource
            // 
            this.scheduleTemplateDetailViewModelBindingSource.DataSource = typeof(ATV.ProgramDept.Service.ViewModel.ScheduleTemplateDetailViewModel);
            // 
            // flpScheduleTemplate
            // 
            this.flpScheduleTemplate.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.flpScheduleTemplate.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.flpScheduleTemplate.Controls.Add(this.pnlHeader);
            this.flpScheduleTemplate.Controls.Add(this.dgvScheduleTemplateDetail);
            this.flpScheduleTemplate.Dock = System.Windows.Forms.DockStyle.Fill;
            this.flpScheduleTemplate.ForeColor = System.Drawing.SystemColors.ControlText;
            this.flpScheduleTemplate.Location = new System.Drawing.Point(0, 0);
            this.flpScheduleTemplate.Margin = new System.Windows.Forms.Padding(4);
            this.flpScheduleTemplate.Name = "flpScheduleTemplate";
            this.flpScheduleTemplate.Size = new System.Drawing.Size(1067, 554);
            this.flpScheduleTemplate.TabIndex = 1;
            // 
            // pnlHeader
            // 
            this.pnlHeader.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.pnlHeader.Controls.Add(this.btnSave);
            this.pnlHeader.Controls.Add(this.lblTitle);
            this.pnlHeader.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlHeader.Location = new System.Drawing.Point(4, 4);
            this.pnlHeader.Margin = new System.Windows.Forms.Padding(4);
            this.pnlHeader.Name = "pnlHeader";
            this.pnlHeader.Size = new System.Drawing.Size(1063, 43);
            this.pnlHeader.TabIndex = 1;
            // 
            // btnSave
            // 
            this.btnSave.BackColor = System.Drawing.SystemColors.ControlLight;
            this.btnSave.ForeColor = System.Drawing.SystemColors.ControlText;
            this.btnSave.Location = new System.Drawing.Point(947, 6);
            this.btnSave.Margin = new System.Windows.Forms.Padding(4);
            this.btnSave.Name = "btnSave";
            this.btnSave.Size = new System.Drawing.Size(100, 28);
            this.btnSave.TabIndex = 1;
            this.btnSave.Text = "Lưu";
            this.btnSave.UseVisualStyleBackColor = false;
            this.btnSave.Click += new System.EventHandler(this.btnSave_Click);
            // 
            // lblTitle
            // 
            this.lblTitle.AutoSize = true;
            this.lblTitle.Location = new System.Drawing.Point(13, 12);
            this.lblTitle.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblTitle.Name = "lblTitle";
            this.lblTitle.Size = new System.Drawing.Size(46, 17);
            this.lblTitle.TabIndex = 0;
            this.lblTitle.Text = "label1";
            // 
            // ScheduleTemplateForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.ClientSize = new System.Drawing.Size(1067, 554);
            this.Controls.Add(this.flpScheduleTemplate);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "ScheduleTemplateForm";
            this.Text = "ScheduleTemplateForm";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.ScheduleTemplateForm_FormClosing);
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.ScheduleTemplateForm_FormClosed);
            this.Load += new System.EventHandler(this.ScheduleTemplateForm_Load);
            this.Resize += new System.EventHandler(this.ScheduleTemplateForm_Resize);
            ((System.ComponentModel.ISupportInitialize)(this.dgvScheduleTemplateDetail)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.scheduleTemplateDetailViewModelBindingSource)).EndInit();
            this.flpScheduleTemplate.ResumeLayout(false);
            this.pnlHeader.ResumeLayout(false);
            this.pnlHeader.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvScheduleTemplateDetail;
        private System.Windows.Forms.BindingSource scheduleTemplateDetailViewModelBindingSource;
        private System.Windows.Forms.FlowLayoutPanel flpScheduleTemplate;
        private System.Windows.Forms.Panel pnlHeader;
        private System.Windows.Forms.Label lblTitle;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.DataGridViewTextBoxColumn Section;
        private System.Windows.Forms.DataGridViewTextBoxColumn startTimeDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn programNameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn contentsDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn performByDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn durationDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn noteDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn iDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn programIDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn scheduleTemplateIDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn positionDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewCheckBoxColumn isNotedDataGridViewCheckBoxColumn;
        private System.Windows.Forms.DataGridViewCheckBoxColumn isActiveDataGridViewCheckBoxColumn;
    }
}