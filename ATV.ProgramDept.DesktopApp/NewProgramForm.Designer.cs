namespace ATV.ProgramDept.DesktopApp
{
    partial class NewProgramForm
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
            this.btnAdd = new System.Windows.Forms.Button();
            this.errName = new System.Windows.Forms.ErrorProvider(this.components);
            this.errDuration = new System.Windows.Forms.ErrorProvider(this.components);
            this.errPerformBy = new System.Windows.Forms.ErrorProvider(this.components);
            this.lblProgramType = new System.Windows.Forms.Label();
            this.cboProgramType = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.errName)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.errDuration)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.errPerformBy)).BeginInit();
            this.SuspendLayout();
            // 
            // lblName
            // 
            this.lblName.AutoSize = true;
            this.lblName.Location = new System.Drawing.Point(50, 39);
            this.lblName.Name = "lblName";
            this.lblName.Size = new System.Drawing.Size(144, 22);
            this.lblName.TabIndex = 0;
            this.lblName.Text = "Tên chương trình";
            // 
            // lblDuration
            // 
            this.lblDuration.AutoSize = true;
            this.lblDuration.Location = new System.Drawing.Point(50, 93);
            this.lblDuration.Name = "lblDuration";
            this.lblDuration.Size = new System.Drawing.Size(152, 22);
            this.lblDuration.TabIndex = 1;
            this.lblDuration.Text = "Thời lượng (phút)";
            // 
            // lblPerformBy
            // 
            this.lblPerformBy.AutoSize = true;
            this.lblPerformBy.Location = new System.Drawing.Point(50, 147);
            this.lblPerformBy.Name = "lblPerformBy";
            this.lblPerformBy.Size = new System.Drawing.Size(89, 22);
            this.lblPerformBy.TabIndex = 2;
            this.lblPerformBy.Text = "Thực hiện";
            // 
            // txtName
            // 
            this.txtName.Location = new System.Drawing.Point(227, 31);
            this.txtName.Name = "txtName";
            this.txtName.Size = new System.Drawing.Size(263, 30);
            this.txtName.TabIndex = 3;
            // 
            // txtDuration
            // 
            this.txtDuration.Location = new System.Drawing.Point(227, 85);
            this.txtDuration.Name = "txtDuration";
            this.txtDuration.Size = new System.Drawing.Size(263, 30);
            this.txtDuration.TabIndex = 4;
            // 
            // txtPerformBy
            // 
            this.txtPerformBy.Location = new System.Drawing.Point(227, 139);
            this.txtPerformBy.Name = "txtPerformBy";
            this.txtPerformBy.Size = new System.Drawing.Size(263, 30);
            this.txtPerformBy.TabIndex = 5;
            // 
            // btnAdd
            // 
            this.btnAdd.Location = new System.Drawing.Point(355, 250);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(135, 41);
            this.btnAdd.TabIndex = 6;
            this.btnAdd.Text = "Thêm";
            this.btnAdd.UseVisualStyleBackColor = true;
            this.btnAdd.Click += new System.EventHandler(this.btnAdd_Click);
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
            // lblProgramType
            // 
            this.lblProgramType.AutoSize = true;
            this.lblProgramType.Location = new System.Drawing.Point(50, 195);
            this.lblProgramType.Name = "lblProgramType";
            this.lblProgramType.Size = new System.Drawing.Size(150, 22);
            this.lblProgramType.TabIndex = 7;
            this.lblProgramType.Text = "Loại chương trình";
            // 
            // cboProgramType
            // 
            this.cboProgramType.FormattingEnabled = true;
            this.cboProgramType.Location = new System.Drawing.Point(227, 192);
            this.cboProgramType.Name = "cboProgramType";
            this.cboProgramType.Size = new System.Drawing.Size(263, 30);
            this.cboProgramType.TabIndex = 8;
            // 
            // NewProgramForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(11F, 22F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(536, 321);
            this.Controls.Add(this.cboProgramType);
            this.Controls.Add(this.lblProgramType);
            this.Controls.Add(this.btnAdd);
            this.Controls.Add(this.txtPerformBy);
            this.Controls.Add(this.txtDuration);
            this.Controls.Add(this.txtName);
            this.Controls.Add(this.lblPerformBy);
            this.Controls.Add(this.lblDuration);
            this.Controls.Add(this.lblName);
            this.Font = new System.Drawing.Font("Times New Roman", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "NewProgramForm";
            this.Text = "Thêm chương trình";
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
        private System.Windows.Forms.Button btnAdd;
        private System.Windows.Forms.ErrorProvider errName;
        private System.Windows.Forms.ErrorProvider errDuration;
        private System.Windows.Forms.ErrorProvider errPerformBy;
        private System.Windows.Forms.ComboBox cboProgramType;
        private System.Windows.Forms.Label lblProgramType;
    }
}