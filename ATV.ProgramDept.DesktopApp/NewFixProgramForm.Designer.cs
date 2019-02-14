namespace ATV.ProgramDept.DesktopApp
{
    partial class NewFixProgramForm
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
            this.lblName = new System.Windows.Forms.Label();
            this.lblDuration = new System.Windows.Forms.Label();
            this.lblPerformBy = new System.Windows.Forms.Label();
            this.txtName = new System.Windows.Forms.TextBox();
            this.txtDuration = new System.Windows.Forms.TextBox();
            this.txtPerformBy = new System.Windows.Forms.TextBox();
            this.btnNew = new System.Windows.Forms.Button();
            this.btnClose = new System.Windows.Forms.Button();
            this.errName = new System.Windows.Forms.ErrorProvider(this.components);
            this.errDuration = new System.Windows.Forms.ErrorProvider(this.components);
            this.errPerformBy = new System.Windows.Forms.ErrorProvider(this.components);
            this.label1 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.errName)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.errDuration)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.errPerformBy)).BeginInit();
            this.SuspendLayout();
            // 
            // lblName
            // 
            this.lblName.AutoSize = true;
            this.lblName.Location = new System.Drawing.Point(44, 13);
            this.lblName.Name = "lblName";
            this.lblName.Size = new System.Drawing.Size(43, 13);
            this.lblName.TabIndex = 0;
            this.lblName.Text = "Tên CT";
            // 
            // lblDuration
            // 
            this.lblDuration.AutoSize = true;
            this.lblDuration.Location = new System.Drawing.Point(30, 70);
            this.lblDuration.Name = "lblDuration";
            this.lblDuration.Size = new System.Drawing.Size(57, 13);
            this.lblDuration.TabIndex = 1;
            this.lblDuration.Text = "Thời lượng";
            // 
            // lblPerformBy
            // 
            this.lblPerformBy.AutoSize = true;
            this.lblPerformBy.Location = new System.Drawing.Point(29, 42);
            this.lblPerformBy.Name = "lblPerformBy";
            this.lblPerformBy.Size = new System.Drawing.Size(58, 13);
            this.lblPerformBy.TabIndex = 2;
            this.lblPerformBy.Text = "Thực hiện ";
            // 
            // txtName
            // 
            this.txtName.Location = new System.Drawing.Point(93, 13);
            this.txtName.Name = "txtName";
            this.txtName.Size = new System.Drawing.Size(198, 20);
            this.txtName.TabIndex = 3;
            // 
            // txtDuration
            // 
            this.txtDuration.Location = new System.Drawing.Point(93, 70);
            this.txtDuration.Name = "txtDuration";
            this.txtDuration.Size = new System.Drawing.Size(75, 20);
            this.txtDuration.TabIndex = 4;
            // 
            // txtPerformBy
            // 
            this.txtPerformBy.Location = new System.Drawing.Point(93, 42);
            this.txtPerformBy.Name = "txtPerformBy";
            this.txtPerformBy.Size = new System.Drawing.Size(198, 20);
            this.txtPerformBy.TabIndex = 5;
            // 
            // btnNew
            // 
            this.btnNew.Location = new System.Drawing.Point(76, 115);
            this.btnNew.Name = "btnNew";
            this.btnNew.Size = new System.Drawing.Size(75, 23);
            this.btnNew.TabIndex = 6;
            this.btnNew.Text = "Tạo";
            this.btnNew.UseVisualStyleBackColor = true;
            this.btnNew.Click += new System.EventHandler(this.btnNew_Click);
            // 
            // btnClose
            // 
            this.btnClose.Location = new System.Drawing.Point(198, 115);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(75, 23);
            this.btnClose.TabIndex = 7;
            this.btnClose.Text = "Hủy";
            this.btnClose.UseVisualStyleBackColor = true;
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
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(174, 77);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(29, 13);
            this.label1.TabIndex = 8;
            this.label1.Text = "Phút";
            // 
            // NewFixProgramForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(335, 150);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnClose);
            this.Controls.Add(this.btnNew);
            this.Controls.Add(this.txtPerformBy);
            this.Controls.Add(this.txtDuration);
            this.Controls.Add(this.txtName);
            this.Controls.Add(this.lblPerformBy);
            this.Controls.Add(this.lblDuration);
            this.Controls.Add(this.lblName);
            this.Name = "NewFixProgramForm";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "ATV Program Department - ";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.NewFixProgramForm_FormClosed);
            this.Load += new System.EventHandler(this.NewFixProgramForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.errName)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.errDuration)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.errPerformBy)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lblName;
        private System.Windows.Forms.Label lblDuration;
        private System.Windows.Forms.Label lblPerformBy;
        private System.Windows.Forms.TextBox txtName;
        private System.Windows.Forms.TextBox txtDuration;
        private System.Windows.Forms.TextBox txtPerformBy;
        private System.Windows.Forms.Button btnNew;
        private System.Windows.Forms.Button btnClose;
        private System.Windows.Forms.ErrorProvider errName;
        private System.Windows.Forms.ErrorProvider errDuration;
        private System.Windows.Forms.ErrorProvider errPerformBy;
        private System.Windows.Forms.Label label1;
    }
}