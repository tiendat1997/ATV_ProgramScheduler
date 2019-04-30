namespace ATV.ProgramDept.DesktopApp
{
    partial class AllProgramForm
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
            this.dgvProgram = new System.Windows.Forms.DataGridView();
            this.programModelBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.lblSearch = new System.Windows.Forms.Label();
            this.txtSearchBox = new System.Windows.Forms.TextBox();
            this.btnAddProgram = new System.Windows.Forms.Button();
            this.btnInsert = new System.Windows.Forms.Button();
            this.btnGetAll = new System.Windows.Forms.Button();
            this.btnGetInserted = new System.Windows.Forms.Button();
            this.btnGetStatic = new System.Windows.Forms.Button();
            this.nameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.durationDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.performByDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.programTypeDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dgvProgram)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.programModelBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvProgram
            // 
            this.dgvProgram.AllowUserToAddRows = false;
            this.dgvProgram.AllowUserToDeleteRows = false;
            this.dgvProgram.AllowUserToOrderColumns = true;
            this.dgvProgram.AutoGenerateColumns = false;
            this.dgvProgram.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvProgram.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.nameDataGridViewTextBoxColumn,
            this.durationDataGridViewTextBoxColumn,
            this.performByDataGridViewTextBoxColumn,
            this.programTypeDataGridViewTextBoxColumn});
            this.dgvProgram.DataSource = this.programModelBindingSource;
            this.dgvProgram.Location = new System.Drawing.Point(46, 127);
            this.dgvProgram.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.dgvProgram.MultiSelect = false;
            this.dgvProgram.Name = "dgvProgram";
            this.dgvProgram.ReadOnly = true;
            this.dgvProgram.RowTemplate.Height = 24;
            this.dgvProgram.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.dgvProgram.Size = new System.Drawing.Size(726, 295);
            this.dgvProgram.TabIndex = 0;
            this.dgvProgram.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.DataGridView1_CellContentClick_1);
            this.dgvProgram.ColumnHeaderMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.DgvProgram_ColumnHeaderMouseClick);
            // 
            // programModelBindingSource
            // 
            this.programModelBindingSource.DataSource = typeof(ATV.ProgramDept.Service.ViewModel.ProgramModel);
            // 
            // lblSearch
            // 
            this.lblSearch.AutoSize = true;
            this.lblSearch.Location = new System.Drawing.Point(45, 33);
            this.lblSearch.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblSearch.Name = "lblSearch";
            this.lblSearch.Size = new System.Drawing.Size(85, 22);
            this.lblSearch.TabIndex = 1;
            this.lblSearch.Text = "Tìm kiếm";
            // 
            // txtSearchBox
            // 
            this.txtSearchBox.Location = new System.Drawing.Point(138, 30);
            this.txtSearchBox.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtSearchBox.Name = "txtSearchBox";
            this.txtSearchBox.Size = new System.Drawing.Size(361, 30);
            this.txtSearchBox.TabIndex = 2;
            this.txtSearchBox.TextChanged += new System.EventHandler(this.txtSearchBox_TextChanged);
            // 
            // btnAddProgram
            // 
            this.btnAddProgram.Location = new System.Drawing.Point(563, 21);
            this.btnAddProgram.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnAddProgram.Name = "btnAddProgram";
            this.btnAddProgram.Size = new System.Drawing.Size(209, 46);
            this.btnAddProgram.TabIndex = 3;
            this.btnAddProgram.Text = "Thêm chương trình mới";
            this.btnAddProgram.UseVisualStyleBackColor = true;
            this.btnAddProgram.Click += new System.EventHandler(this.btnAddProgram_Click);
            // 
            // btnInsert
            // 
            this.btnInsert.Location = new System.Drawing.Point(576, 432);
            this.btnInsert.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.btnInsert.Name = "btnInsert";
            this.btnInsert.Size = new System.Drawing.Size(196, 55);
            this.btnInsert.TabIndex = 4;
            this.btnInsert.Text = "Chèn";
            this.btnInsert.UseVisualStyleBackColor = true;
            this.btnInsert.Click += new System.EventHandler(this.btnInsert_Click);
            // 
            // btnGetAll
            // 
            this.btnGetAll.Location = new System.Drawing.Point(46, 84);
            this.btnGetAll.Name = "btnGetAll";
            this.btnGetAll.Size = new System.Drawing.Size(186, 35);
            this.btnGetAll.TabIndex = 5;
            this.btnGetAll.Text = "Toàn bộ chương trình";
            this.btnGetAll.UseVisualStyleBackColor = true;
            this.btnGetAll.Click += new System.EventHandler(this.BtnGetAll_Click);
            // 
            // btnGetInserted
            // 
            this.btnGetInserted.Location = new System.Drawing.Point(238, 83);
            this.btnGetInserted.Name = "btnGetInserted";
            this.btnGetInserted.Size = new System.Drawing.Size(210, 36);
            this.btnGetInserted.TabIndex = 6;
            this.btnGetInserted.Text = "Chương trình chen giờ";
            this.btnGetInserted.UseVisualStyleBackColor = true;
            this.btnGetInserted.Click += new System.EventHandler(this.BtnGetInserted_Click);
            // 
            // btnGetStatic
            // 
            this.btnGetStatic.Location = new System.Drawing.Point(454, 83);
            this.btnGetStatic.Name = "btnGetStatic";
            this.btnGetStatic.Size = new System.Drawing.Size(189, 36);
            this.btnGetStatic.TabIndex = 7;
            this.btnGetStatic.Text = "Chương trình cố định";
            this.btnGetStatic.UseVisualStyleBackColor = true;
            this.btnGetStatic.Click += new System.EventHandler(this.BtnGetStatic_Click);
            // 
            // nameDataGridViewTextBoxColumn
            // 
            this.nameDataGridViewTextBoxColumn.DataPropertyName = "Name";
            this.nameDataGridViewTextBoxColumn.HeaderText = "Tên chương trình";
            this.nameDataGridViewTextBoxColumn.Name = "nameDataGridViewTextBoxColumn";
            this.nameDataGridViewTextBoxColumn.ReadOnly = true;
            this.nameDataGridViewTextBoxColumn.Width = 200;
            // 
            // durationDataGridViewTextBoxColumn
            // 
            this.durationDataGridViewTextBoxColumn.DataPropertyName = "Duration";
            this.durationDataGridViewTextBoxColumn.HeaderText = "Thời lượng";
            this.durationDataGridViewTextBoxColumn.Name = "durationDataGridViewTextBoxColumn";
            this.durationDataGridViewTextBoxColumn.ReadOnly = true;
            this.durationDataGridViewTextBoxColumn.Width = 130;
            // 
            // performByDataGridViewTextBoxColumn
            // 
            this.performByDataGridViewTextBoxColumn.DataPropertyName = "PerformBy";
            this.performByDataGridViewTextBoxColumn.HeaderText = "Thực hiện bởi";
            this.performByDataGridViewTextBoxColumn.Name = "performByDataGridViewTextBoxColumn";
            this.performByDataGridViewTextBoxColumn.ReadOnly = true;
            this.performByDataGridViewTextBoxColumn.Width = 150;
            // 
            // programTypeDataGridViewTextBoxColumn
            // 
            this.programTypeDataGridViewTextBoxColumn.DataPropertyName = "ProgramType";
            this.programTypeDataGridViewTextBoxColumn.HeaderText = "Loại chương trình";
            this.programTypeDataGridViewTextBoxColumn.Name = "programTypeDataGridViewTextBoxColumn";
            this.programTypeDataGridViewTextBoxColumn.ReadOnly = true;
            this.programTypeDataGridViewTextBoxColumn.Width = 200;
            // 
            // AllProgramForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(11F, 22F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 501);
            this.Controls.Add(this.btnGetStatic);
            this.Controls.Add(this.btnGetInserted);
            this.Controls.Add(this.btnGetAll);
            this.Controls.Add(this.btnInsert);
            this.Controls.Add(this.btnAddProgram);
            this.Controls.Add(this.txtSearchBox);
            this.Controls.Add(this.lblSearch);
            this.Controls.Add(this.dgvProgram);
            this.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "AllProgramForm";
            this.Text = "AllProgramForm";
            this.Load += new System.EventHandler(this.AllProgramForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvProgram)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.programModelBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvProgram;
        private System.Windows.Forms.BindingSource programModelBindingSource;
        private System.Windows.Forms.Label lblSearch;
        private System.Windows.Forms.TextBox txtSearchBox;
        private System.Windows.Forms.Button btnAddProgram;
        private System.Windows.Forms.Button btnInsert;
        private System.Windows.Forms.Button btnGetAll;
        private System.Windows.Forms.Button btnGetInserted;
        private System.Windows.Forms.Button btnGetStatic;
        private System.Windows.Forms.DataGridViewTextBoxColumn nameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn durationDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn performByDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn programTypeDataGridViewTextBoxColumn;
    }
}