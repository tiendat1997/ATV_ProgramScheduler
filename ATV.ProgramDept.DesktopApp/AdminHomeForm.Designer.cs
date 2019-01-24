﻿namespace ATV.ProgramDept.DesktopApp
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
            this.tsmiAdminFlexProgram = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiAdminFixProgram = new System.Windows.Forms.ToolStripMenuItem();
            this.tsmiAdminHistory = new System.Windows.Forms.ToolStripMenuItem();
            this.btnToEditor = new System.Windows.Forms.Button();
            this.mnsAdmin.SuspendLayout();
            this.SuspendLayout();
            // 
            // mnsAdmin
            // 
            this.mnsAdmin.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsmiAdminTemplate,
            this.tsmiAdminAccount,
            this.tsmiAdminEmail,
            this.tsmiAdminProgram,
            this.tsmiAdminHistory});
            this.mnsAdmin.Location = new System.Drawing.Point(0, 0);
            this.mnsAdmin.Name = "mnsAdmin";
            this.mnsAdmin.Size = new System.Drawing.Size(800, 24);
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
            this.tsmiAdminTemplate.Size = new System.Drawing.Size(68, 20);
            this.tsmiAdminTemplate.Text = "Lịch mẫu";
            // 
            // tsmiTemplateMon
            // 
            this.tsmiTemplateMon.Name = "tsmiTemplateMon";
            this.tsmiTemplateMon.Size = new System.Drawing.Size(104, 22);
            this.tsmiTemplateMon.Text = "Thứ 2";
            // 
            // tsmiTemplateTue
            // 
            this.tsmiTemplateTue.Name = "tsmiTemplateTue";
            this.tsmiTemplateTue.Size = new System.Drawing.Size(104, 22);
            this.tsmiTemplateTue.Text = "Thứ 3";
            // 
            // tsmiTemplateWed
            // 
            this.tsmiTemplateWed.Name = "tsmiTemplateWed";
            this.tsmiTemplateWed.Size = new System.Drawing.Size(104, 22);
            this.tsmiTemplateWed.Text = "Thứ 4";
            // 
            // tsmiTemplateThur
            // 
            this.tsmiTemplateThur.Name = "tsmiTemplateThur";
            this.tsmiTemplateThur.Size = new System.Drawing.Size(104, 22);
            this.tsmiTemplateThur.Text = "Thứ 5";
            // 
            // tsmiTemplateFri
            // 
            this.tsmiTemplateFri.Name = "tsmiTemplateFri";
            this.tsmiTemplateFri.Size = new System.Drawing.Size(104, 22);
            this.tsmiTemplateFri.Text = "Thứ 6";
            // 
            // tsmiTemplateSat
            // 
            this.tsmiTemplateSat.Name = "tsmiTemplateSat";
            this.tsmiTemplateSat.Size = new System.Drawing.Size(104, 22);
            this.tsmiTemplateSat.Text = "Thứ 7";
            // 
            // tsmiTemplateSun
            // 
            this.tsmiTemplateSun.Name = "tsmiTemplateSun";
            this.tsmiTemplateSun.Size = new System.Drawing.Size(104, 22);
            this.tsmiTemplateSun.Text = "CN";
            // 
            // tsmiAdminAccount
            // 
            this.tsmiAdminAccount.Name = "tsmiAdminAccount";
            this.tsmiAdminAccount.Size = new System.Drawing.Size(73, 20);
            this.tsmiAdminAccount.Text = "Tài khoản ";
            // 
            // tsmiAdminEmail
            // 
            this.tsmiAdminEmail.Name = "tsmiAdminEmail";
            this.tsmiAdminEmail.Size = new System.Drawing.Size(48, 20);
            this.tsmiAdminEmail.Text = "Email";
            // 
            // tsmiAdminProgram
            // 
            this.tsmiAdminProgram.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tsmiAdminFlexProgram,
            this.tsmiAdminFixProgram});
            this.tsmiAdminProgram.Name = "tsmiAdminProgram";
            this.tsmiAdminProgram.Size = new System.Drawing.Size(90, 20);
            this.tsmiAdminProgram.Text = "Chương trình";
            // 
            // tsmiAdminFlexProgram
            // 
            this.tsmiAdminFlexProgram.Name = "tsmiAdminFlexProgram";
            this.tsmiAdminFlexProgram.Size = new System.Drawing.Size(197, 22);
            this.tsmiAdminFlexProgram.Text = "Chương trình cố định";
            // 
            // tsmiAdminFixProgram
            // 
            this.tsmiAdminFixProgram.Name = "tsmiAdminFixProgram";
            this.tsmiAdminFixProgram.Size = new System.Drawing.Size(197, 22);
            this.tsmiAdminFixProgram.Text = "Chương trình chen giờ ";
            // 
            // tsmiAdminHistory
            // 
            this.tsmiAdminHistory.Name = "tsmiAdminHistory";
            this.tsmiAdminHistory.Size = new System.Drawing.Size(56, 20);
            this.tsmiAdminHistory.Text = "Lịch sử";
            // 
            // btnToEditor
            // 
            this.btnToEditor.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnToEditor.Location = new System.Drawing.Point(725, 1);
            this.btnToEditor.Name = "btnToEditor";
            this.btnToEditor.Size = new System.Drawing.Size(75, 23);
            this.btnToEditor.TabIndex = 1;
            this.btnToEditor.Text = "Biên soạn viên";
            this.btnToEditor.UseVisualStyleBackColor = true;
            this.btnToEditor.Click += new System.EventHandler(this.btnToEditor_Click);
            // 
            // AdminHomeForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.btnToEditor);
            this.Controls.Add(this.mnsAdmin);
            this.MainMenuStrip = this.mnsAdmin;
            this.Name = "AdminHomeForm";
            this.Text = "ATV Program Department - Home";
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
        private System.Windows.Forms.ToolStripMenuItem tsmiAdminFlexProgram;
        private System.Windows.Forms.ToolStripMenuItem tsmiAdminFixProgram;
        private System.Windows.Forms.ToolStripMenuItem tsmiAdminHistory;
        private System.Windows.Forms.Button btnToEditor;
    }
}