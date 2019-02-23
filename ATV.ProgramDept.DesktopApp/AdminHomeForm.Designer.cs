namespace ATV.ProgramDept.DesktopApp
{
    partial class AdminHomeForm
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
            this.mnsAdmin = new System.Windows.Forms.MenuStrip();
            this.tsmiAdminTemplate = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiTemplateMon = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiTemplateTue = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiTemplateWed = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiTemplateThur = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiTemplateFri = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiTemplateSat = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiTemplateSun = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiAdminAccount = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiAdminEmail = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiAdminProgram = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiAdminFixProgram = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiAdminFlexProgram = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiAdminHistory = new System.Windows.Forms.ToolStripMenuItem();
            this.btnToEditor = new System.Windows.Forms.Button();
            this.pnlContent = new System.Windows.Forms.Panel();
            this.mnsAdmin.SuspendLayout();
            this.SuspendLayout();
            // 
            // mnsAdmin
            // 
            this.mnsAdmin.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.mnsAdmin.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsmiAdminTemplate,
            this.tsmiAdminAccount,
            this.tsmiAdminEmail,
            this.tsmiAdminProgram,
            this.tsmiAdminHistory});
            this.mnsAdmin.Location = new System.Drawing.Point(0, 0);
            this.mnsAdmin.Name = "mnsAdmin";
            this.mnsAdmin.Padding = new System.Windows.Forms.Padding(8, 2, 0, 2);
            this.mnsAdmin.Size = new System.Drawing.Size(1067, 28);
            this.mnsAdmin.TabIndex = 0;
            this.mnsAdmin.Text = "menuStrip1";
            // 
            // tsmiAdminTemplate
            // 
            this.tsmiAdminTemplate.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsmiTemplateMon,
            this.tsmiTemplateTue,
            this.tsmiTemplateWed,
            this.tsmiTemplateThur,
            this.tsmiTemplateFri,
            this.tsmiTemplateSat,
            this.tsmiTemplateSun});
            this.tsmiAdminTemplate.Name = "tsmiAdminTemplate";
            this.tsmiAdminTemplate.Size = new System.Drawing.Size(80, 24);
            this.tsmiAdminTemplate.Text = "Lịch mẫu";
            // 
            // tsmiTemplateMon
            // 
            this.tsmiTemplateMon.Name = "tsmiTemplateMon";
            this.tsmiTemplateMon.Size = new System.Drawing.Size(121, 26);
            this.tsmiTemplateMon.Text = "Thứ 2";
            this.tsmiTemplateMon.Click += new System.EventHandler(this.tsmiTemplateMon_Click);
            // 
            // tsmiTemplateTue
            // 
            this.tsmiTemplateTue.Name = "tsmiTemplateTue";
            this.tsmiTemplateTue.Size = new System.Drawing.Size(121, 26);
            this.tsmiTemplateTue.Text = "Thứ 3";
            this.tsmiTemplateTue.Click += new System.EventHandler(this.tsmiTemplateTue_Click);
            // 
            // tsmiTemplateWed
            // 
            this.tsmiTemplateWed.Name = "tsmiTemplateWed";
            this.tsmiTemplateWed.Size = new System.Drawing.Size(121, 26);
            this.tsmiTemplateWed.Text = "Thứ 4";
            this.tsmiTemplateWed.Click += new System.EventHandler(this.tsmiTemplateWed_Click);
            // 
            // tsmiTemplateThur
            // 
            this.tsmiTemplateThur.Name = "tsmiTemplateThur";
            this.tsmiTemplateThur.Size = new System.Drawing.Size(121, 26);
            this.tsmiTemplateThur.Text = "Thứ 5";
            this.tsmiTemplateThur.Click += new System.EventHandler(this.tsmiTemplateThur_Click);
            // 
            // tsmiTemplateFri
            // 
            this.tsmiTemplateFri.Name = "tsmiTemplateFri";
            this.tsmiTemplateFri.Size = new System.Drawing.Size(121, 26);
            this.tsmiTemplateFri.Text = "Thứ 6";
            this.tsmiTemplateFri.Click += new System.EventHandler(this.tsmiTemplateFri_Click);
            // 
            // tsmiTemplateSat
            // 
            this.tsmiTemplateSat.Name = "tsmiTemplateSat";
            this.tsmiTemplateSat.Size = new System.Drawing.Size(121, 26);
            this.tsmiTemplateSat.Text = "Thứ 7";
            this.tsmiTemplateSat.Click += new System.EventHandler(this.tsmiTemplateSat_Click);
            // 
            // tsmiTemplateSun
            // 
            this.tsmiTemplateSun.Name = "tsmiTemplateSun";
            this.tsmiTemplateSun.Size = new System.Drawing.Size(121, 26);
            this.tsmiTemplateSun.Text = "CN";
            this.tsmiTemplateSun.Click += new System.EventHandler(this.tsmiTemplateSun_Click);
            // 
            // tsmiAdminAccount
            // 
            this.tsmiAdminAccount.Name = "tsmiAdminAccount";
            this.tsmiAdminAccount.Size = new System.Drawing.Size(87, 24);
            this.tsmiAdminAccount.Text = "Tài khoản ";
            this.tsmiAdminAccount.Click += new System.EventHandler(this.tsmiAdminAccount_Click);
            // 
            // tsmiAdminEmail
            // 
            this.tsmiAdminEmail.Name = "tsmiAdminEmail";
            this.tsmiAdminEmail.Size = new System.Drawing.Size(58, 24);
            this.tsmiAdminEmail.Text = "Email";
            this.tsmiAdminEmail.Click += new System.EventHandler(this.tsmiAdminEmail_Click);
            // 
            // tsmiAdminProgram
            // 
            this.tsmiAdminProgram.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsmiAdminFixProgram,
            this.tsmiAdminFlexProgram});
            this.tsmiAdminProgram.Name = "tsmiAdminProgram";
            this.tsmiAdminProgram.Size = new System.Drawing.Size(107, 24);
            this.tsmiAdminProgram.Text = "Chương trình";
            // 
            // tsmiAdminFixProgram
            // 
            this.tsmiAdminFixProgram.Name = "tsmiAdminFixProgram";
            this.tsmiAdminFixProgram.Size = new System.Drawing.Size(235, 26);
            this.tsmiAdminFixProgram.Text = "Chương trình cố định";
            this.tsmiAdminFixProgram.Click += new System.EventHandler(this.tsmiAdminFixProgram_Click);
            // 
            // tsmiAdminFlexProgram
            // 
            this.tsmiAdminFlexProgram.Name = "tsmiAdminFlexProgram";
            this.tsmiAdminFlexProgram.Size = new System.Drawing.Size(235, 26);
            this.tsmiAdminFlexProgram.Text = "Chương trình chen giờ ";
            this.tsmiAdminFlexProgram.Click += new System.EventHandler(this.tsmiAdminFlexProgram_Click);
            // 
            // tsmiAdminHistory
            // 
            this.tsmiAdminHistory.Name = "tsmiAdminHistory";
            this.tsmiAdminHistory.Size = new System.Drawing.Size(66, 24);
            this.tsmiAdminHistory.Text = "Lịch sử";
            // 
            // btnToEditor
            // 
            this.btnToEditor.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnToEditor.Location = new System.Drawing.Point(967, 1);
            this.btnToEditor.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnToEditor.Name = "btnToEditor";
            this.btnToEditor.Size = new System.Drawing.Size(100, 28);
            this.btnToEditor.TabIndex = 1;
            this.btnToEditor.Text = "Biên soạn viên";
            this.btnToEditor.UseVisualStyleBackColor = true;
            this.btnToEditor.Click += new System.EventHandler(this.btnToEditor_Click);
            // 
            // pnlContent
            // 
            this.pnlContent.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.pnlContent.Dock = System.Windows.Forms.DockStyle.Fill;
            this.pnlContent.Location = new System.Drawing.Point(0, 28);
            this.pnlContent.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.pnlContent.Name = "pnlContent";
            this.pnlContent.Size = new System.Drawing.Size(1067, 526);
            this.pnlContent.TabIndex = 2;
            // 
            // AdminHomeForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1067, 554);
            this.Controls.Add(this.pnlContent);
            this.Controls.Add(this.btnToEditor);
            this.Controls.Add(this.mnsAdmin);
            this.MainMenuStrip = this.mnsAdmin;
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "AdminHomeForm";
            this.Text = "ATV Program Department - Home";
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.AdminHomeForm_FormClosing);
            this.mnsAdmin.ResumeLayout(false);
            this.mnsAdmin.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.MenuStrip mnsAdmin;
        private System.Windows.Forms.ToolStripMenuItem tsmiAdminTemplate;
        private System.Windows.Forms.ToolStripMenuItem tsmiTemplateMon;
        private System.Windows.Forms.ToolStripMenuItem tsmiTemplateTue;
        private System.Windows.Forms.ToolStripMenuItem tsmiTemplateWed;
        private System.Windows.Forms.ToolStripMenuItem tsmiTemplateThur;
        private System.Windows.Forms.ToolStripMenuItem tsmiTemplateFri;
        private System.Windows.Forms.ToolStripMenuItem tsmiTemplateSat;
        private System.Windows.Forms.ToolStripMenuItem tsmiTemplateSun;
        private System.Windows.Forms.ToolStripMenuItem tsmiAdminAccount;
        private System.Windows.Forms.ToolStripMenuItem tsmiAdminEmail;
        private System.Windows.Forms.ToolStripMenuItem tsmiAdminProgram;
        private System.Windows.Forms.ToolStripMenuItem tsmiAdminFixProgram;
        private System.Windows.Forms.ToolStripMenuItem tsmiAdminFlexProgram;
        private System.Windows.Forms.ToolStripMenuItem tsmiAdminHistory;
        private System.Windows.Forms.Button btnToEditor;
        private System.Windows.Forms.Panel pnlContent;
    }
}