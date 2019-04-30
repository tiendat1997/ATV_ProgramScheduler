namespace ATV.ProgramDept.DesktopApp
{
    partial class ManageFlexProgramForm
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
            this.btnAdd = new System.Windows.Forms.Button();
            this.dgvFlexProgram = new System.Windows.Forms.DataGridView();
            this.programBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.Remove = new System.Windows.Forms.DataGridViewButtonColumn();
            this.Edit = new System.Windows.Forms.DataGridViewButtonColumn();
            this.programTypeDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.isActiveDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.programTypeIDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.performByDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.durationDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.iDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dgvFlexProgram)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.programBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(13, 13);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(114, 23);
            this.btnAdd.TabIndex = 0;
            this.btnAdd.Text = "Tạo CT chen giờ";
            this.btnAdd.UseVisualStyleBackColor = true;
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
            // 
            // dgvFlexProgram
            // 
            this.dgvFlexProgram.AllowUserToAddRows = false;
            this.dgvFlexProgram.AutoGenerateColumns = false;
            this.dgvFlexProgram.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvFlexProgram.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.iDDataGridViewTextBoxColumn,
            this.nameDataGridViewTextBoxColumn,
            this.durationDataGridViewTextBoxColumn,
            this.performByDataGridViewTextBoxColumn,
            this.programTypeIDDataGridViewTextBoxColumn,
            this.isActiveDataGridViewTextBoxColumn,
            this.programTypeDataGridViewTextBoxColumn,
            this.Edit,
            this.Remove});
            this.dgvFlexProgram.DataSource = this.programBindingSource;
            this.dgvFlexProgram.Location = new System.Drawing.Point(13, 42);
            this.dgvFlexProgram.Name = "dgvFlexProgram";
            this.dgvFlexProgram.Size = new System.Drawing.Size(775, 380);
            this.dgvFlexProgram.TabIndex = 1;
            this.dgvFlexProgram.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvFlexProgram_CellContentClick);
            // 
            // programBindingSource
            // 
            this.programBindingSource.DataSource = typeof(ATV.ProgramDept.Entity.Program);
            // 
            // Remove
            // 
            this.Remove.FillWeight = 106.168F;
            this.Remove.HeaderText = "Xóa";
            this.Remove.Name = "Remove";
            this.Remove.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Remove.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Remove.Text = "Xóa";
            this.Remove.UseColumnTextForButtonValue = true;
            this.Remove.Width = 153;
            // 
            // Edit
            // 
            this.Edit.FillWeight = 96.6948F;
            this.Edit.HeaderText = "Thay đổi";
            this.Edit.Name = "Edit";
            this.Edit.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Edit.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Edit.Text = "Lưu";
            this.Edit.UseColumnTextForButtonValue = true;
            this.Edit.Width = 140;
            // 
            // programTypeDataGridViewTextBoxColumn
            // 
            this.programTypeDataGridViewTextBoxColumn.DataPropertyName = "ProgramType";
            this.programTypeDataGridViewTextBoxColumn.HeaderText = "ProgramType";
            this.programTypeDataGridViewTextBoxColumn.Name = "programTypeDataGridViewTextBoxColumn";
            this.programTypeDataGridViewTextBoxColumn.Visible = false;
            // 
            // isActiveDataGridViewTextBoxColumn
            // 
            this.isActiveDataGridViewTextBoxColumn.DataPropertyName = "IsActive";
            this.isActiveDataGridViewTextBoxColumn.HeaderText = "IsActive";
            this.isActiveDataGridViewTextBoxColumn.Name = "isActiveDataGridViewTextBoxColumn";
            this.isActiveDataGridViewTextBoxColumn.Visible = false;
            // 
            // programTypeIDDataGridViewTextBoxColumn
            // 
            this.programTypeIDDataGridViewTextBoxColumn.DataPropertyName = "ProgramTypeID";
            this.programTypeIDDataGridViewTextBoxColumn.HeaderText = "ProgramTypeID";
            this.programTypeIDDataGridViewTextBoxColumn.Name = "programTypeIDDataGridViewTextBoxColumn";
            this.programTypeIDDataGridViewTextBoxColumn.Visible = false;
            // 
            // performByDataGridViewTextBoxColumn
            // 
            this.performByDataGridViewTextBoxColumn.DataPropertyName = "PerformBy";
            this.performByDataGridViewTextBoxColumn.FillWeight = 85.69859F;
            this.performByDataGridViewTextBoxColumn.HeaderText = "Thực hiện";
            this.performByDataGridViewTextBoxColumn.Name = "performByDataGridViewTextBoxColumn";
            this.performByDataGridViewTextBoxColumn.Width = 124;
            // 
            // durationDataGridViewTextBoxColumn
            // 
            this.durationDataGridViewTextBoxColumn.DataPropertyName = "Duration";
            this.durationDataGridViewTextBoxColumn.FillWeight = 72.93449F;
            this.durationDataGridViewTextBoxColumn.HeaderText = "Thời lượng";
            this.durationDataGridViewTextBoxColumn.Name = "durationDataGridViewTextBoxColumn";
            this.durationDataGridViewTextBoxColumn.Width = 105;
            // 
            // nameDataGridViewTextBoxColumn
            // 
            this.nameDataGridViewTextBoxColumn.DataPropertyName = "Name";
            this.nameDataGridViewTextBoxColumn.FillWeight = 138.5042F;
            this.nameDataGridViewTextBoxColumn.HeaderText = "Tên CT";
            this.nameDataGridViewTextBoxColumn.Name = "nameDataGridViewTextBoxColumn";
            this.nameDataGridViewTextBoxColumn.Width = 200;
            // 
            // iDDataGridViewTextBoxColumn
            // 
            this.iDDataGridViewTextBoxColumn.DataPropertyName = "ID";
            this.iDDataGridViewTextBoxColumn.HeaderText = "ID";
            this.iDDataGridViewTextBoxColumn.Name = "iDDataGridViewTextBoxColumn";
            this.iDDataGridViewTextBoxColumn.Visible = false;
            // 
            // ManageFlexProgramForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.dgvFlexProgram);
            this.Controls.Add(this.btnAdd);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "ManageFlexProgramForm";
            this.Text = "ManageProgramForm";
            this.Load += new System.EventHandler(this.ManageFlexProgramForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvFlexProgram)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.programBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnAdd;
        private System.Windows.Forms.DataGridView dgvFlexProgram;
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
    }
}