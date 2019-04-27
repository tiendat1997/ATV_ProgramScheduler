namespace ATV.ProgramDept.DesktopApp
{
    partial class ManageFixProgramForm
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
            this.dgvFixProgram = new System.Windows.Forms.DataGridView();
            this.iDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.durationDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.performByDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.programTypeIDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.isActiveDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.programTypeDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Edit = new System.Windows.Forms.DataGridViewButtonColumn();
            this.Remove = new System.Windows.Forms.DataGridViewButtonColumn();
            this.programBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.pnlNewProgram = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.btnClose = new System.Windows.Forms.Button();
            this.btnNew = new System.Windows.Forms.Button();
            this.txtPerformBy = new System.Windows.Forms.TextBox();
            this.txtDuration = new System.Windows.Forms.TextBox();
            this.txtName = new System.Windows.Forms.TextBox();
            this.lblPerformBy = new System.Windows.Forms.Label();
            this.lblDuration = new System.Windows.Forms.Label();
            this.lblName = new System.Windows.Forms.Label();
            this.flpProgram = new System.Windows.Forms.FlowLayoutPanel();
            this.lblProgramTitle = new System.Windows.Forms.Label();
            this.errName = new System.Windows.Forms.ErrorProvider(this.components);
            this.errDuration = new System.Windows.Forms.ErrorProvider(this.components);
            this.errPerformBy = new System.Windows.Forms.ErrorProvider(this.components);
            ((System.ComponentModel.ISupportInitialize)(this.dgvFixProgram)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.programBindingSource)).BeginInit();
            this.pnlNewProgram.SuspendLayout();
            this.flpProgram.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.errName)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.errDuration)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.errPerformBy)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvFixProgram
            // 
            this.dgvFixProgram.AllowUserToAddRows = false;
            this.dgvFixProgram.AutoGenerateColumns = false;
            this.dgvFixProgram.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvFixProgram.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.iDDataGridViewTextBoxColumn,
            this.nameDataGridViewTextBoxColumn,
            this.durationDataGridViewTextBoxColumn,
            this.performByDataGridViewTextBoxColumn,
            this.programTypeIDDataGridViewTextBoxColumn,
            this.isActiveDataGridViewTextBoxColumn,
            this.programTypeDataGridViewTextBoxColumn,
            this.Edit,
            this.Remove});
            this.dgvFixProgram.DataSource = this.programBindingSource;
            this.dgvFixProgram.Dock = System.Windows.Forms.DockStyle.Right;
            this.dgvFixProgram.Location = new System.Drawing.Point(244, 3);
            this.dgvFixProgram.Name = "dgvFixProgram";
            this.dgvFixProgram.Size = new System.Drawing.Size(539, 375);
            this.dgvFixProgram.TabIndex = 1;
            this.dgvFixProgram.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvFixProgram_CellContentClick);
            // 
            // iDDataGridViewTextBoxColumn
            // 
            this.iDDataGridViewTextBoxColumn.DataPropertyName = "ID";
            this.iDDataGridViewTextBoxColumn.HeaderText = "ID";
            this.iDDataGridViewTextBoxColumn.Name = "iDDataGridViewTextBoxColumn";
            this.iDDataGridViewTextBoxColumn.Visible = false;
            // 
            // nameDataGridViewTextBoxColumn
            // 
            this.nameDataGridViewTextBoxColumn.DataPropertyName = "Name";
            this.nameDataGridViewTextBoxColumn.FillWeight = 150F;
            this.nameDataGridViewTextBoxColumn.HeaderText = "Tên CT";
            this.nameDataGridViewTextBoxColumn.Name = "nameDataGridViewTextBoxColumn";
            this.nameDataGridViewTextBoxColumn.Width = 181;
            // 
            // durationDataGridViewTextBoxColumn
            // 
            this.durationDataGridViewTextBoxColumn.DataPropertyName = "Duration";
            this.durationDataGridViewTextBoxColumn.FillWeight = 50F;
            this.durationDataGridViewTextBoxColumn.HeaderText = "Thời lượng";
            this.durationDataGridViewTextBoxColumn.Name = "durationDataGridViewTextBoxColumn";
            this.durationDataGridViewTextBoxColumn.Width = 64;
            // 
            // performByDataGridViewTextBoxColumn
            // 
            this.performByDataGridViewTextBoxColumn.DataPropertyName = "PerformBy";
            this.performByDataGridViewTextBoxColumn.HeaderText = "Thực hiện";
            this.performByDataGridViewTextBoxColumn.Name = "performByDataGridViewTextBoxColumn";
            this.performByDataGridViewTextBoxColumn.Width = 123;
            // 
            // programTypeIDDataGridViewTextBoxColumn
            // 
            this.programTypeIDDataGridViewTextBoxColumn.DataPropertyName = "ProgramTypeID";
            this.programTypeIDDataGridViewTextBoxColumn.HeaderText = "ProgramTypeID";
            this.programTypeIDDataGridViewTextBoxColumn.Name = "programTypeIDDataGridViewTextBoxColumn";
            this.programTypeIDDataGridViewTextBoxColumn.Visible = false;
            // 
            // isActiveDataGridViewTextBoxColumn
            // 
            this.isActiveDataGridViewTextBoxColumn.DataPropertyName = "IsActive";
            this.isActiveDataGridViewTextBoxColumn.HeaderText = "IsActive";
            this.isActiveDataGridViewTextBoxColumn.Name = "isActiveDataGridViewTextBoxColumn";
            this.isActiveDataGridViewTextBoxColumn.Visible = false;
            // 
            // programTypeDataGridViewTextBoxColumn
            // 
            this.programTypeDataGridViewTextBoxColumn.DataPropertyName = "ProgramType";
            this.programTypeDataGridViewTextBoxColumn.HeaderText = "ProgramType";
            this.programTypeDataGridViewTextBoxColumn.Name = "programTypeDataGridViewTextBoxColumn";
            this.programTypeDataGridViewTextBoxColumn.Visible = false;
            // 
            // Edit
            // 
            this.Edit.FillWeight = 50F;
            this.Edit.HeaderText = "Thay đổi";
            this.Edit.Name = "Edit";
            this.Edit.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Edit.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Edit.Text = "Lưu";
            this.Edit.UseColumnTextForButtonValue = true;
            this.Edit.Width = 64;
            // 
            // Remove
            // 
            this.Remove.FillWeight = 50F;
            this.Remove.HeaderText = "Xóa";
            this.Remove.Name = "Remove";
            this.Remove.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Remove.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Remove.Text = "Xóa";
            this.Remove.UseColumnTextForButtonValue = true;
            this.Remove.Width = 64;
            // 
            // programBindingSource
            // 
            this.programBindingSource.DataSource = typeof(ATV.ProgramDept.Entity.Program);
            // 
            // pnlNewProgram
            // 
            this.pnlNewProgram.Controls.Add(this.label1);
            this.pnlNewProgram.Controls.Add(this.lblProgramTitle);
            this.pnlNewProgram.Controls.Add(this.btnClose);
            this.pnlNewProgram.Controls.Add(this.btnNew);
            this.pnlNewProgram.Controls.Add(this.txtPerformBy);
            this.pnlNewProgram.Controls.Add(this.txtDuration);
            this.pnlNewProgram.Controls.Add(this.txtName);
            this.pnlNewProgram.Controls.Add(this.lblPerformBy);
            this.pnlNewProgram.Controls.Add(this.lblDuration);
            this.pnlNewProgram.Controls.Add(this.lblName);
            this.pnlNewProgram.Location = new System.Drawing.Point(3, 3);
            this.pnlNewProgram.Name = "pnlNewProgram";
            this.pnlNewProgram.Size = new System.Drawing.Size(235, 375);
            this.pnlNewProgram.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(152, 86);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(29, 13);
            this.label1.TabIndex = 17;
            this.label1.Text = "Phút";
            // 
            // btnClose
            // 
            this.btnClose.Location = new System.Drawing.Point(71, 128);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(56, 23);
            this.btnClose.TabIndex = 16;
            this.btnClose.Text = "Hủy";
            this.btnClose.UseVisualStyleBackColor = true;
            // 
            // btnNew
            // 
            this.btnNew.Location = new System.Drawing.Point(155, 128);
            this.btnNew.Name = "btnNew";
            this.btnNew.Size = new System.Drawing.Size(75, 23);
            this.btnNew.TabIndex = 15;
            this.btnNew.Text = "Thêm";
            this.btnNew.UseVisualStyleBackColor = true;
            this.btnNew.Click += new System.EventHandler(this.btnNew_Click);
            // 
            // txtPerformBy
            // 
            this.txtPerformBy.Location = new System.Drawing.Point(71, 51);
            this.txtPerformBy.Name = "txtPerformBy";
            this.txtPerformBy.Size = new System.Drawing.Size(161, 20);
            this.txtPerformBy.TabIndex = 14;
            // 
            // txtDuration
            // 
            this.txtDuration.Location = new System.Drawing.Point(71, 79);
            this.txtDuration.Name = "txtDuration";
            this.txtDuration.Size = new System.Drawing.Size(75, 20);
            this.txtDuration.TabIndex = 13;
            // 
            // txtName
            // 
            this.txtName.Location = new System.Drawing.Point(71, 22);
            this.txtName.Name = "txtName";
            this.txtName.Size = new System.Drawing.Size(161, 20);
            this.txtName.TabIndex = 12;
            // 
            // lblPerformBy
            // 
            this.lblPerformBy.AutoSize = true;
            this.lblPerformBy.Location = new System.Drawing.Point(7, 51);
            this.lblPerformBy.Name = "lblPerformBy";
            this.lblPerformBy.Size = new System.Drawing.Size(58, 13);
            this.lblPerformBy.TabIndex = 11;
            this.lblPerformBy.Text = "Thực hiện ";
            // 
            // lblDuration
            // 
            this.lblDuration.AutoSize = true;
            this.lblDuration.Location = new System.Drawing.Point(7, 79);
            this.lblDuration.Name = "lblDuration";
            this.lblDuration.Size = new System.Drawing.Size(57, 13);
            this.lblDuration.TabIndex = 10;
            this.lblDuration.Text = "Thời lượng";
            // 
            // lblName
            // 
            this.lblName.AutoSize = true;
            this.lblName.Location = new System.Drawing.Point(7, 22);
            this.lblName.Name = "lblName";
            this.lblName.Size = new System.Drawing.Size(43, 13);
            this.lblName.TabIndex = 9;
            this.lblName.Text = "Tên CT";
            // 
            // flpProgram
            // 
            this.flpProgram.Controls.Add(this.pnlNewProgram);
            this.flpProgram.Controls.Add(this.dgvFixProgram);
            this.flpProgram.Location = new System.Drawing.Point(0, 0);
            this.flpProgram.Name = "flpProgram";
            this.flpProgram.Size = new System.Drawing.Size(800, 450);
            this.flpProgram.TabIndex = 3;
            // 
            // lblProgramTitle
            // 
            this.lblProgramTitle.AutoSize = true;
            this.lblProgramTitle.Location = new System.Drawing.Point(7, 0);
            this.lblProgramTitle.Name = "lblProgramTitle";
            this.lblProgramTitle.Size = new System.Drawing.Size(106, 13);
            this.lblProgramTitle.TabIndex = 3;
            this.lblProgramTitle.Text = "Chương trình cố định";
            // 
            // errName
            // 
            this.errName.ContainerControl = this;
            // 
            // errDuration
            // 
            this.errDuration.ContainerControl = this;
            // 
            // errPerformBy
            // 
            this.errPerformBy.ContainerControl = this;
            // 
            // ManageFixProgramForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.flpProgram);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "ManageFixProgramForm";
            this.Text = "ManageProgramForm";
            this.Load += new System.EventHandler(this.ManageFixProgramForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvFixProgram)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.programBindingSource)).EndInit();
            this.pnlNewProgram.ResumeLayout(false);
            this.pnlNewProgram.PerformLayout();
            this.flpProgram.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.errName)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.errDuration)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.errPerformBy)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.DataGridView dgvFixProgram;
        private System.Windows.Forms.BindingSource programBindingSource;
        private System.Windows.Forms.DataGridViewTextBoxColumn schedulesDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn scheduleTemplatesDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn iDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn nameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn durationDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn performByDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn programTypeIDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn isActiveDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn programTypeDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewButtonColumn Edit;
        private System.Windows.Forms.DataGridViewButtonColumn Remove;
        private System.Windows.Forms.Panel pnlNewProgram;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lblProgramTitle;
        private System.Windows.Forms.Button btnClose;
        private System.Windows.Forms.Button btnNew;
        private System.Windows.Forms.TextBox txtPerformBy;
        private System.Windows.Forms.TextBox txtDuration;
        private System.Windows.Forms.TextBox txtName;
        private System.Windows.Forms.Label lblPerformBy;
        private System.Windows.Forms.Label lblDuration;
        private System.Windows.Forms.Label lblName;
        private System.Windows.Forms.FlowLayoutPanel flpProgram;
        private System.Windows.Forms.ErrorProvider errName;
        private System.Windows.Forms.ErrorProvider errDuration;
        private System.Windows.Forms.ErrorProvider errPerformBy;
    }
}