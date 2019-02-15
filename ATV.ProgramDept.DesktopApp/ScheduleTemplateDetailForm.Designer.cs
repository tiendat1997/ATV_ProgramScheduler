namespace ATV.ProgramDept.DesktopApp
{
    partial class ScheduleTemplateDetailForm
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
            this.flpContent = new System.Windows.Forms.FlowLayoutPanel();
            this.pnlHeader = new System.Windows.Forms.Panel();
            this.lblDayOfWeek = new System.Windows.Forms.Label();
            this.lblTitle = new System.Windows.Forms.Label();
            this.dgvScheduleTemplateDetails = new System.Windows.Forms.DataGridView();
            this.scheduleTemplateDetailBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.Hour = new System.Windows.Forms.DataGridViewTextBoxColumn();
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
            this.programDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.scheduleTemplateDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.flpContent.SuspendLayout();
            this.pnlHeader.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvScheduleTemplateDetails)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.scheduleTemplateDetailBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // flpContent
            // 
            this.flpContent.BackColor = System.Drawing.Color.Transparent;
            this.flpContent.Controls.Add(this.pnlHeader);
            this.flpContent.Controls.Add(this.dgvScheduleTemplateDetails);
            this.flpContent.Dock = System.Windows.Forms.DockStyle.Fill;
            this.flpContent.Location = new System.Drawing.Point(0, 0);
            this.flpContent.Name = "flpContent";
            this.flpContent.Size = new System.Drawing.Size(800, 450);
            this.flpContent.TabIndex = 7;
            // 
            // pnlHeader
            // 
            this.pnlHeader.AutoSize = true;
            this.pnlHeader.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.pnlHeader.Controls.Add(this.lblDayOfWeek);
            this.pnlHeader.Controls.Add(this.lblTitle);
            this.pnlHeader.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlHeader.Location = new System.Drawing.Point(3, 3);
            this.pnlHeader.Name = "pnlHeader";
            this.pnlHeader.Size = new System.Drawing.Size(749, 22);
            this.pnlHeader.TabIndex = 5;
            // 
            // lblDayOfWeek
            // 
            this.lblDayOfWeek.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.lblDayOfWeek.AutoSize = true;
            this.lblDayOfWeek.ForeColor = System.Drawing.SystemColors.ControlText;
            this.lblDayOfWeek.Location = new System.Drawing.Point(711, 9);
            this.lblDayOfWeek.Name = "lblDayOfWeek";
            this.lblDayOfWeek.Size = new System.Drawing.Size(35, 13);
            this.lblDayOfWeek.TabIndex = 5;
            this.lblDayOfWeek.Text = "Thu 2";
            // 
            // lblTitle
            // 
            this.lblTitle.AutoSize = true;
            this.lblTitle.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.lblTitle.Location = new System.Drawing.Point(2, 9);
            this.lblTitle.Name = "lblTitle";
            this.lblTitle.Size = new System.Drawing.Size(202, 13);
            this.lblTitle.TabIndex = 4;
            this.lblTitle.Text = "CHƯƠNG TRÌNH TRUYỀN HÌNH SÁNG";
            // 
            // dgvScheduleTemplateDetails
            // 
            this.dgvScheduleTemplateDetails.AllowDrop = true;
            this.dgvScheduleTemplateDetails.AllowUserToResizeColumns = false;
            this.dgvScheduleTemplateDetails.AllowUserToResizeRows = false;
            this.dgvScheduleTemplateDetails.AutoGenerateColumns = false;
            this.dgvScheduleTemplateDetails.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dgvScheduleTemplateDetails.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvScheduleTemplateDetails.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Hour,
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
            this.isActiveDataGridViewCheckBoxColumn,
            this.programDataGridViewTextBoxColumn,
            this.scheduleTemplateDataGridViewTextBoxColumn});
            this.dgvScheduleTemplateDetails.DataSource = this.scheduleTemplateDetailBindingSource;
            this.dgvScheduleTemplateDetails.EditMode = System.Windows.Forms.DataGridViewEditMode.EditOnKeystroke;
            this.dgvScheduleTemplateDetails.Location = new System.Drawing.Point(3, 31);
            this.dgvScheduleTemplateDetails.MultiSelect = false;
            this.dgvScheduleTemplateDetails.Name = "dgvScheduleTemplateDetails";
            this.dgvScheduleTemplateDetails.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.dgvScheduleTemplateDetails.Size = new System.Drawing.Size(786, 372);
            this.dgvScheduleTemplateDetails.TabIndex = 3;
            this.dgvScheduleTemplateDetails.TabStop = false;
            // 
            // scheduleTemplateDetailBindingSource
            // 
            this.scheduleTemplateDetailBindingSource.DataSource = typeof(ATV.ProgramDept.Entity.ScheduleTemplateDetail);
            // 
            // Hour
            // 
            this.Hour.FillWeight = 50F;
            this.Hour.HeaderText = "Giờ";
            this.Hour.Name = "Hour";
            this.Hour.Width = 50;
            // 
            // programNameDataGridViewTextBoxColumn
            // 
            this.programNameDataGridViewTextBoxColumn.DataPropertyName = "ProgramName";
            this.programNameDataGridViewTextBoxColumn.FillWeight = 150F;
            this.programNameDataGridViewTextBoxColumn.HeaderText = "Tiết mục";
            this.programNameDataGridViewTextBoxColumn.Name = "programNameDataGridViewTextBoxColumn";
            this.programNameDataGridViewTextBoxColumn.Width = 150;
            // 
            // contentsDataGridViewTextBoxColumn
            // 
            this.contentsDataGridViewTextBoxColumn.DataPropertyName = "Contents";
            this.contentsDataGridViewTextBoxColumn.FillWeight = 150F;
            this.contentsDataGridViewTextBoxColumn.HeaderText = "Nội dung";
            this.contentsDataGridViewTextBoxColumn.Name = "contentsDataGridViewTextBoxColumn";
            this.contentsDataGridViewTextBoxColumn.Width = 150;
            // 
            // performByDataGridViewTextBoxColumn
            // 
            this.performByDataGridViewTextBoxColumn.DataPropertyName = "PerformBy";
            this.performByDataGridViewTextBoxColumn.FillWeight = 50F;
            this.performByDataGridViewTextBoxColumn.HeaderText = "Thực hiện";
            this.performByDataGridViewTextBoxColumn.Name = "performByDataGridViewTextBoxColumn";
            this.performByDataGridViewTextBoxColumn.Width = 50;
            // 
            // durationDataGridViewTextBoxColumn
            // 
            this.durationDataGridViewTextBoxColumn.DataPropertyName = "Duration";
            this.durationDataGridViewTextBoxColumn.FillWeight = 50F;
            this.durationDataGridViewTextBoxColumn.HeaderText = "Thời lượng";
            this.durationDataGridViewTextBoxColumn.Name = "durationDataGridViewTextBoxColumn";
            this.durationDataGridViewTextBoxColumn.Width = 50;
            // 
            // noteDataGridViewTextBoxColumn
            // 
            this.noteDataGridViewTextBoxColumn.DataPropertyName = "Note";
            this.noteDataGridViewTextBoxColumn.FillWeight = 150F;
            this.noteDataGridViewTextBoxColumn.HeaderText = "Ghi chú";
            this.noteDataGridViewTextBoxColumn.Name = "noteDataGridViewTextBoxColumn";
            this.noteDataGridViewTextBoxColumn.Width = 150;
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
            // programDataGridViewTextBoxColumn
            // 
            this.programDataGridViewTextBoxColumn.DataPropertyName = "Program";
            this.programDataGridViewTextBoxColumn.HeaderText = "Program";
            this.programDataGridViewTextBoxColumn.Name = "programDataGridViewTextBoxColumn";
            this.programDataGridViewTextBoxColumn.Visible = false;
            // 
            // scheduleTemplateDataGridViewTextBoxColumn
            // 
            this.scheduleTemplateDataGridViewTextBoxColumn.DataPropertyName = "ScheduleTemplate";
            this.scheduleTemplateDataGridViewTextBoxColumn.HeaderText = "ScheduleTemplate";
            this.scheduleTemplateDataGridViewTextBoxColumn.Name = "scheduleTemplateDataGridViewTextBoxColumn";
            this.scheduleTemplateDataGridViewTextBoxColumn.Visible = false;
            // 
            // ScheduleTemplateDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.flpContent);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "ScheduleTemplateDetailForm";
            this.Text = "ScheduleTemplateDetailForm";
            this.Load += new System.EventHandler(this.ScheduleTemplateDetailForm_Load);
            this.Resize += new System.EventHandler(this.ScheduleTemplateDetailForm_Resize);
            this.flpContent.ResumeLayout(false);
            this.flpContent.PerformLayout();
            this.pnlHeader.ResumeLayout(false);
            this.pnlHeader.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvScheduleTemplateDetails)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.scheduleTemplateDetailBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.FlowLayoutPanel flpContent;
        private System.Windows.Forms.Panel pnlHeader;
        private System.Windows.Forms.Label lblDayOfWeek;
        private System.Windows.Forms.Label lblTitle;
        private System.Windows.Forms.DataGridView dgvScheduleTemplateDetails;
        private System.Windows.Forms.DataGridViewTextBoxColumn Hour;
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
        private System.Windows.Forms.DataGridViewTextBoxColumn programDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn scheduleTemplateDataGridViewTextBoxColumn;
        private System.Windows.Forms.BindingSource scheduleTemplateDetailBindingSource;
    }
}