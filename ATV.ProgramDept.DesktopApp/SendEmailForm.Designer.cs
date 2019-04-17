namespace ATV.ProgramDept.DesktopApp
{
    partial class SendEmailForm
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
            this.cbMonday = new System.Windows.Forms.CheckBox();
            this.cbTuesday = new System.Windows.Forms.CheckBox();
            this.cbWednesday = new System.Windows.Forms.CheckBox();
            this.cbThursday = new System.Windows.Forms.CheckBox();
            this.cbFriday = new System.Windows.Forms.CheckBox();
            this.cbSaturday = new System.Windows.Forms.CheckBox();
            this.cbSunday = new System.Windows.Forms.CheckBox();
            this.cboDept = new System.Windows.Forms.ComboBox();
            this.btnSend = new System.Windows.Forms.Button();
            this.cboFileType = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // cbMonday
            // 
            this.cbMonday.AutoSize = true;
            this.cbMonday.Checked = true;
            this.cbMonday.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbMonday.Location = new System.Drawing.Point(38, 46);
            this.cbMonday.Name = "cbMonday";
            this.cbMonday.Size = new System.Drawing.Size(67, 21);
            this.cbMonday.TabIndex = 0;
            this.cbMonday.Text = "Thứ 2";
            this.cbMonday.UseVisualStyleBackColor = true;
            // 
            // cbTuesday
            // 
            this.cbTuesday.AutoSize = true;
            this.cbTuesday.Checked = true;
            this.cbTuesday.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbTuesday.Location = new System.Drawing.Point(38, 68);
            this.cbTuesday.Name = "cbTuesday";
            this.cbTuesday.Size = new System.Drawing.Size(67, 21);
            this.cbTuesday.TabIndex = 1;
            this.cbTuesday.Text = "Thứ 3";
            this.cbTuesday.UseVisualStyleBackColor = true;
            // 
            // cbWednesday
            // 
            this.cbWednesday.AutoSize = true;
            this.cbWednesday.Checked = true;
            this.cbWednesday.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbWednesday.Location = new System.Drawing.Point(38, 91);
            this.cbWednesday.Name = "cbWednesday";
            this.cbWednesday.Size = new System.Drawing.Size(67, 21);
            this.cbWednesday.TabIndex = 2;
            this.cbWednesday.Text = "Thứ 4";
            this.cbWednesday.UseVisualStyleBackColor = true;
            // 
            // cbThursday
            // 
            this.cbThursday.AutoSize = true;
            this.cbThursday.Checked = true;
            this.cbThursday.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbThursday.Location = new System.Drawing.Point(38, 114);
            this.cbThursday.Name = "cbThursday";
            this.cbThursday.Size = new System.Drawing.Size(67, 21);
            this.cbThursday.TabIndex = 3;
            this.cbThursday.Text = "Thứ 5";
            this.cbThursday.UseVisualStyleBackColor = true;
            // 
            // cbFriday
            // 
            this.cbFriday.AutoSize = true;
            this.cbFriday.Checked = true;
            this.cbFriday.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbFriday.Location = new System.Drawing.Point(38, 137);
            this.cbFriday.Name = "cbFriday";
            this.cbFriday.Size = new System.Drawing.Size(67, 21);
            this.cbFriday.TabIndex = 4;
            this.cbFriday.Text = "Thứ 6";
            this.cbFriday.UseVisualStyleBackColor = true;
            // 
            // cbSaturday
            // 
            this.cbSaturday.AutoSize = true;
            this.cbSaturday.Checked = true;
            this.cbSaturday.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbSaturday.Location = new System.Drawing.Point(38, 160);
            this.cbSaturday.Name = "cbSaturday";
            this.cbSaturday.Size = new System.Drawing.Size(67, 21);
            this.cbSaturday.TabIndex = 5;
            this.cbSaturday.Text = "Thứ 7";
            this.cbSaturday.UseVisualStyleBackColor = true;
            // 
            // cbSunday
            // 
            this.cbSunday.AutoSize = true;
            this.cbSunday.Checked = true;
            this.cbSunday.CheckState = System.Windows.Forms.CheckState.Checked;
            this.cbSunday.Location = new System.Drawing.Point(38, 183);
            this.cbSunday.Name = "cbSunday";
            this.cbSunday.Size = new System.Drawing.Size(87, 21);
            this.cbSunday.TabIndex = 6;
            this.cbSunday.Text = "Chủ nhật";
            this.cbSunday.UseVisualStyleBackColor = true;
            // 
            // cboDept
            // 
            this.cboDept.FormattingEnabled = true;
            this.cboDept.Location = new System.Drawing.Point(172, 68);
            this.cboDept.Name = "cboDept";
            this.cboDept.Size = new System.Drawing.Size(196, 24);
            this.cboDept.TabIndex = 7;
            this.cboDept.Text = "Chọn phòng ban";
            // 
            // btnSend
            // 
            this.btnSend.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSend.Location = new System.Drawing.Point(238, 203);
            this.btnSend.Name = "btnSend";
            this.btnSend.Size = new System.Drawing.Size(130, 34);
            this.btnSend.TabIndex = 8;
            this.btnSend.Text = "Gửi";
            this.btnSend.UseVisualStyleBackColor = true;
            this.btnSend.Click += new System.EventHandler(this.BtnSend_Click);
            // 
            // cboFileType
            // 
            this.cboFileType.FormattingEnabled = true;
            this.cboFileType.Location = new System.Drawing.Point(172, 135);
            this.cboFileType.Name = "cboFileType";
            this.cboFileType.Size = new System.Drawing.Size(196, 24);
            this.cboFileType.TabIndex = 9;
            this.cboFileType.Text = "Chọn loại file";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(14, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(106, 23);
            this.label1.TabIndex = 10;
            this.label1.Text = "Chọn ngày:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(141, 37);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(133, 19);
            this.label2.TabIndex = 11;
            this.label2.Text = "Chọn phòng ban:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Times New Roman", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(142, 109);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(116, 19);
            this.label3.TabIndex = 12;
            this.label3.Text = "Chọn loại file:";
            // 
            // SendEmailForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(392, 267);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cboFileType);
            this.Controls.Add(this.btnSend);
            this.Controls.Add(this.cboDept);
            this.Controls.Add(this.cbSunday);
            this.Controls.Add(this.cbSaturday);
            this.Controls.Add(this.cbFriday);
            this.Controls.Add(this.cbThursday);
            this.Controls.Add(this.cbWednesday);
            this.Controls.Add(this.cbTuesday);
            this.Controls.Add(this.cbMonday);
            this.Name = "SendEmailForm";
            this.Text = "Gửi Email";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.CheckBox cbMonday;
        private System.Windows.Forms.CheckBox cbTuesday;
        private System.Windows.Forms.CheckBox cbWednesday;
        private System.Windows.Forms.CheckBox cbThursday;
        private System.Windows.Forms.CheckBox cbFriday;
        private System.Windows.Forms.CheckBox cbSaturday;
        private System.Windows.Forms.CheckBox cbSunday;
        private System.Windows.Forms.ComboBox cboDept;
        private System.Windows.Forms.Button btnSend;
        private System.Windows.Forms.ComboBox cboFileType;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
    }
}