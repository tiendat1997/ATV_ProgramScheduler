namespace ATV.ProgramDept.DesktopApp
{
    partial class ExportForm
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
            this.tblExport = new System.Windows.Forms.TableLayoutPanel();
            this.pnCheckList = new System.Windows.Forms.Panel();
            this.ckbMonday = new System.Windows.Forms.CheckBox();
            this.ckbTuesday = new System.Windows.Forms.CheckBox();
            this.chkWednesday = new System.Windows.Forms.CheckBox();
            this.ckbThursday = new System.Windows.Forms.CheckBox();
            this.ckbFriday = new System.Windows.Forms.CheckBox();
            this.ckbSaturday = new System.Windows.Forms.CheckBox();
            this.ckbSunday = new System.Windows.Forms.CheckBox();
            this.cbbExportType = new System.Windows.Forms.ComboBox();
            this.btnExport = new System.Windows.Forms.Button();
            this.tblExport.SuspendLayout();
            this.pnCheckList.SuspendLayout();
            this.SuspendLayout();
            // 
            // tblExport
            // 
            this.tblExport.ColumnCount = 2;
            this.tblExport.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 37.5969F));
            this.tblExport.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 62.4031F));
            this.tblExport.Controls.Add(this.pnCheckList, 0, 0);
            this.tblExport.Controls.Add(this.cbbExportType, 1, 0);
            this.tblExport.Controls.Add(this.btnExport, 1, 1);
            this.tblExport.Location = new System.Drawing.Point(0, 0);
            this.tblExport.Name = "tblExport";
            this.tblExport.RowCount = 2;
            this.tblExport.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tblExport.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 30F));
            this.tblExport.Size = new System.Drawing.Size(258, 200);
            this.tblExport.TabIndex = 0;
            // 
            // pnCheckList
            // 
            this.pnCheckList.Controls.Add(this.ckbSunday);
            this.pnCheckList.Controls.Add(this.ckbSaturday);
            this.pnCheckList.Controls.Add(this.ckbFriday);
            this.pnCheckList.Controls.Add(this.ckbThursday);
            this.pnCheckList.Controls.Add(this.chkWednesday);
            this.pnCheckList.Controls.Add(this.ckbTuesday);
            this.pnCheckList.Controls.Add(this.ckbMonday);
            this.pnCheckList.Location = new System.Drawing.Point(3, 3);
            this.pnCheckList.Name = "pnCheckList";
            this.pnCheckList.Size = new System.Drawing.Size(91, 164);
            this.pnCheckList.TabIndex = 0;
            // 
            // ckbMonday
            // 
            this.ckbMonday.AutoSize = true;
            this.ckbMonday.Location = new System.Drawing.Point(9, 9);
            this.ckbMonday.Name = "ckbMonday";
            this.ckbMonday.Size = new System.Drawing.Size(54, 17);
            this.ckbMonday.TabIndex = 0;
            this.ckbMonday.Text = "Thứ 2";
            this.ckbMonday.UseVisualStyleBackColor = true;
            // 
            // ckbTuesday
            // 
            this.ckbTuesday.AutoSize = true;
            this.ckbTuesday.Location = new System.Drawing.Point(9, 32);
            this.ckbTuesday.Name = "ckbTuesday";
            this.ckbTuesday.Size = new System.Drawing.Size(54, 17);
            this.ckbTuesday.TabIndex = 1;
            this.ckbTuesday.Text = "Thứ 3";
            this.ckbTuesday.UseVisualStyleBackColor = true;
            // 
            // chkWednesday
            // 
            this.chkWednesday.AutoSize = true;
            this.chkWednesday.Location = new System.Drawing.Point(9, 55);
            this.chkWednesday.Name = "chkWednesday";
            this.chkWednesday.Size = new System.Drawing.Size(54, 17);
            this.chkWednesday.TabIndex = 2;
            this.chkWednesday.Text = "Thứ 4";
            this.chkWednesday.UseVisualStyleBackColor = true;
            // 
            // ckbThursday
            // 
            this.ckbThursday.AutoSize = true;
            this.ckbThursday.Location = new System.Drawing.Point(9, 78);
            this.ckbThursday.Name = "ckbThursday";
            this.ckbThursday.Size = new System.Drawing.Size(54, 17);
            this.ckbThursday.TabIndex = 3;
            this.ckbThursday.Text = "Thứ 5";
            this.ckbThursday.UseVisualStyleBackColor = true;
            // 
            // ckbFriday
            // 
            this.ckbFriday.AutoSize = true;
            this.ckbFriday.Location = new System.Drawing.Point(9, 101);
            this.ckbFriday.Name = "ckbFriday";
            this.ckbFriday.Size = new System.Drawing.Size(54, 17);
            this.ckbFriday.TabIndex = 4;
            this.ckbFriday.Text = "Thứ 6";
            this.ckbFriday.UseVisualStyleBackColor = true;
            // 
            // ckbSaturday
            // 
            this.ckbSaturday.AutoSize = true;
            this.ckbSaturday.Location = new System.Drawing.Point(9, 124);
            this.ckbSaturday.Name = "ckbSaturday";
            this.ckbSaturday.Size = new System.Drawing.Size(54, 17);
            this.ckbSaturday.TabIndex = 5;
            this.ckbSaturday.Text = "Thứ 7";
            this.ckbSaturday.UseVisualStyleBackColor = true;
            // 
            // ckbSunday
            // 
            this.ckbSunday.AutoSize = true;
            this.ckbSunday.Location = new System.Drawing.Point(9, 147);
            this.ckbSunday.Name = "ckbSunday";
            this.ckbSunday.Size = new System.Drawing.Size(69, 17);
            this.ckbSunday.TabIndex = 6;
            this.ckbSunday.Text = "Chủ nhật";
            this.ckbSunday.UseVisualStyleBackColor = true;
            // 
            // cbbExportType
            // 
            this.cbbExportType.FormattingEnabled = true;
            this.cbbExportType.ItemHeight = 13;
            this.cbbExportType.Items.AddRange(new object[] {
            "Lịch phát sóng",
            "Sapo"});
            this.cbbExportType.Location = new System.Drawing.Point(100, 3);
            this.cbbExportType.Name = "cbbExportType";
            this.cbbExportType.Size = new System.Drawing.Size(155, 21);
            this.cbbExportType.TabIndex = 1;
            this.cbbExportType.Text = "(Chọn loại)";
            // 
            // btnExport
            // 
            this.btnExport.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnExport.Location = new System.Drawing.Point(180, 174);
            this.btnExport.Name = "btnExport";
            this.btnExport.Size = new System.Drawing.Size(75, 23);
            this.btnExport.TabIndex = 2;
            this.btnExport.Text = "Thực hiện";
            this.btnExport.UseVisualStyleBackColor = true;
            this.btnExport.Click += new System.EventHandler(this.btnExport_Click);
            // 
            // ExportForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(263, 204);
            this.Controls.Add(this.tblExport);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "ExportForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Xuất lịch";
            this.tblExport.ResumeLayout(false);
            this.pnCheckList.ResumeLayout(false);
            this.pnCheckList.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TableLayoutPanel tblExport;
        private System.Windows.Forms.Panel pnCheckList;
        private System.Windows.Forms.CheckBox ckbSunday;
        private System.Windows.Forms.CheckBox ckbSaturday;
        private System.Windows.Forms.CheckBox ckbFriday;
        private System.Windows.Forms.CheckBox ckbThursday;
        private System.Windows.Forms.CheckBox chkWednesday;
        private System.Windows.Forms.CheckBox ckbTuesday;
        private System.Windows.Forms.CheckBox ckbMonday;
        private System.Windows.Forms.ComboBox cbbExportType;
        private System.Windows.Forms.Button btnExport;
    }
}