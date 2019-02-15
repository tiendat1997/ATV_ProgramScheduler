namespace ATV.ProgramDept.DesktopApp
{
    partial class ScheduleDetailForm
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
            this.dgvScheduleDetails = new System.Windows.Forms.DataGridView();
            this.scheduleDetailBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.Hour = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.programNameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.contentsDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.performByDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.durationDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.noteDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.iDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.programIDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.positionDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.isNotedDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.isActiveDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.scheduleIDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.programDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.scheduleDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.flpContent.SuspendLayout();
            this.pnlHeader.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvScheduleDetails)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.scheduleDetailBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // flpContent
            // 
            this.flpContent.BackColor = System.Drawing.Color.Transparent;
            this.flpContent.Controls.Add(this.pnlHeader);
            this.flpContent.Controls.Add(this.dgvScheduleDetails);
            this.flpContent.Dock = System.Windows.Forms.DockStyle.Fill;
            this.flpContent.Location = new System.Drawing.Point(0, 0);
            this.flpContent.Name = "flpContent";
            this.flpContent.Size = new System.Drawing.Size(800, 450);
            this.flpContent.TabIndex = 6;
            this.flpContent.Resize += new System.EventHandler(this.flpContent_Resize);
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
            // dgvScheduleDetails
            // 
            this.dgvScheduleDetails.AllowDrop = true;
            this.dgvScheduleDetails.AllowUserToResizeColumns = false;
            this.dgvScheduleDetails.AllowUserToResizeRows = false;
            this.dgvScheduleDetails.AutoGenerateColumns = false;
            this.dgvScheduleDetails.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dgvScheduleDetails.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvScheduleDetails.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Hour,
            this.programNameDataGridViewTextBoxColumn,
            this.contentsDataGridViewTextBoxColumn,
            this.performByDataGridViewTextBoxColumn,
            this.durationDataGridViewTextBoxColumn,
            this.noteDataGridViewTextBoxColumn,
            this.iDDataGridViewTextBoxColumn,
            this.programIDDataGridViewTextBoxColumn,
            this.positionDataGridViewTextBoxColumn,
            this.isNotedDataGridViewTextBoxColumn,
            this.isActiveDataGridViewTextBoxColumn,
            this.scheduleIDDataGridViewTextBoxColumn,
            this.programDataGridViewTextBoxColumn,
            this.scheduleDataGridViewTextBoxColumn});
            this.dgvScheduleDetails.DataSource = this.scheduleDetailBindingSource;
            this.dgvScheduleDetails.EditMode = System.Windows.Forms.DataGridViewEditMode.EditOnKeystroke;
            this.dgvScheduleDetails.Location = new System.Drawing.Point(3, 31);
            this.dgvScheduleDetails.MultiSelect = false;
            this.dgvScheduleDetails.Name = "dgvScheduleDetails";
            this.dgvScheduleDetails.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.dgvScheduleDetails.Size = new System.Drawing.Size(786, 372);
            this.dgvScheduleDetails.TabIndex = 3;
            this.dgvScheduleDetails.TabStop = false;
            // 
            // scheduleDetailBindingSource
            // 
            this.scheduleDetailBindingSource.DataSource = typeof(ATV.ProgramDept.Entity.ScheduleDetail);
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
            // positionDataGridViewTextBoxColumn
            // 
            this.positionDataGridViewTextBoxColumn.DataPropertyName = "Position";
            this.positionDataGridViewTextBoxColumn.HeaderText = "Position";
            this.positionDataGridViewTextBoxColumn.Name = "positionDataGridViewTextBoxColumn";
            this.positionDataGridViewTextBoxColumn.Visible = false;
            // 
            // isNotedDataGridViewTextBoxColumn
            // 
            this.isNotedDataGridViewTextBoxColumn.DataPropertyName = "IsNoted";
            this.isNotedDataGridViewTextBoxColumn.HeaderText = "IsNoted";
            this.isNotedDataGridViewTextBoxColumn.Name = "isNotedDataGridViewTextBoxColumn";
            this.isNotedDataGridViewTextBoxColumn.Visible = false;
            // 
            // isActiveDataGridViewTextBoxColumn
            // 
            this.isActiveDataGridViewTextBoxColumn.DataPropertyName = "IsActive";
            this.isActiveDataGridViewTextBoxColumn.HeaderText = "IsActive";
            this.isActiveDataGridViewTextBoxColumn.Name = "isActiveDataGridViewTextBoxColumn";
            this.isActiveDataGridViewTextBoxColumn.Visible = false;
            // 
            // scheduleIDDataGridViewTextBoxColumn
            // 
            this.scheduleIDDataGridViewTextBoxColumn.DataPropertyName = "ScheduleID";
            this.scheduleIDDataGridViewTextBoxColumn.HeaderText = "ScheduleID";
            this.scheduleIDDataGridViewTextBoxColumn.Name = "scheduleIDDataGridViewTextBoxColumn";
            this.scheduleIDDataGridViewTextBoxColumn.Visible = false;
            // 
            // programDataGridViewTextBoxColumn
            // 
            this.programDataGridViewTextBoxColumn.DataPropertyName = "Program";
            this.programDataGridViewTextBoxColumn.HeaderText = "Program";
            this.programDataGridViewTextBoxColumn.Name = "programDataGridViewTextBoxColumn";
            this.programDataGridViewTextBoxColumn.Visible = false;
            // 
            // scheduleDataGridViewTextBoxColumn
            // 
            this.scheduleDataGridViewTextBoxColumn.DataPropertyName = "Schedule";
            this.scheduleDataGridViewTextBoxColumn.HeaderText = "Schedule";
            this.scheduleDataGridViewTextBoxColumn.Name = "scheduleDataGridViewTextBoxColumn";
            this.scheduleDataGridViewTextBoxColumn.Visible = false;
            // 
            // ScheduleDetailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.flpContent);
            this.ForeColor = System.Drawing.SystemColors.ControlText;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "ScheduleDetailForm";
            this.Text = "ScheduleDetailForm";
            this.Load += new System.EventHandler(this.ScheduleDetailForm_Load);
            this.flpContent.ResumeLayout(false);
            this.flpContent.PerformLayout();
            this.pnlHeader.ResumeLayout(false);
            this.pnlHeader.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvScheduleDetails)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.scheduleDetailBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.FlowLayoutPanel flpContent;
        private System.Windows.Forms.Panel pnlHeader;
        private System.Windows.Forms.Label lblDayOfWeek;
        private System.Windows.Forms.Label lblTitle;
        private System.Windows.Forms.DataGridView dgvScheduleDetails;
        private System.Windows.Forms.DataGridViewTextBoxColumn Hour;
        private System.Windows.Forms.DataGridViewTextBoxColumn programNameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn contentsDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn performByDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn durationDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn noteDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn iDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn programIDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn positionDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn isNotedDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn isActiveDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn scheduleIDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn programDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn scheduleDataGridViewTextBoxColumn;
        private System.Windows.Forms.BindingSource scheduleDetailBindingSource;
    }
}