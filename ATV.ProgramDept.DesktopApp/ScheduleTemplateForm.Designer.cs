namespace ATV.ProgramDept.DesktopApp
{
    partial class ScheduleTemplateForm
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
            this.tabTemplate = new System.Windows.Forms.TabControl();
            this.tpMorning = new System.Windows.Forms.TabPage();
            this.scheduleTemplateViewModelBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.tpNoon = new System.Windows.Forms.TabPage();
            this.tpAfternoonAndEvening = new System.Windows.Forms.TabPage();
            this.tpDawn = new System.Windows.Forms.TabPage();
            this.scheduleTemplateBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.tabTemplate.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.scheduleTemplateViewModelBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.scheduleTemplateBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // tabTemplate
            // 
            this.tabTemplate.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tabTemplate.Controls.Add(this.tpMorning);
            this.tabTemplate.Controls.Add(this.tpNoon);
            this.tabTemplate.Controls.Add(this.tpAfternoonAndEvening);
            this.tabTemplate.Controls.Add(this.tpDawn);
            this.tabTemplate.Location = new System.Drawing.Point(0, 0);
            this.tabTemplate.Name = "tabTemplate";
            this.tabTemplate.SelectedIndex = 0;
            this.tabTemplate.Size = new System.Drawing.Size(800, 450);
            this.tabTemplate.TabIndex = 0;
            // 
            // tpMorning
            // 
            this.tpMorning.Location = new System.Drawing.Point(4, 22);
            this.tpMorning.Name = "tpMorning";
            this.tpMorning.Padding = new System.Windows.Forms.Padding(3);
            this.tpMorning.Size = new System.Drawing.Size(792, 424);
            this.tpMorning.TabIndex = 0;
            this.tpMorning.Text = "Sáng";
            this.tpMorning.UseVisualStyleBackColor = true;
            // 
            // scheduleTemplateViewModelBindingSource
            // 
            this.scheduleTemplateViewModelBindingSource.DataSource = typeof(ATV.ProgramDept.Service.ViewModel.ScheduleTemplateViewModel);
            // 
            // tpNoon
            // 
            this.tpNoon.Location = new System.Drawing.Point(4, 22);
            this.tpNoon.Name = "tpNoon";
            this.tpNoon.Padding = new System.Windows.Forms.Padding(3);
            this.tpNoon.Size = new System.Drawing.Size(792, 424);
            this.tpNoon.TabIndex = 1;
            this.tpNoon.Text = "Trưa";
            this.tpNoon.UseVisualStyleBackColor = true;
            // 
            // tpAfternoonAndEvening
            // 
            this.tpAfternoonAndEvening.Location = new System.Drawing.Point(4, 22);
            this.tpAfternoonAndEvening.Name = "tpAfternoonAndEvening";
            this.tpAfternoonAndEvening.Padding = new System.Windows.Forms.Padding(3);
            this.tpAfternoonAndEvening.Size = new System.Drawing.Size(792, 424);
            this.tpAfternoonAndEvening.TabIndex = 2;
            this.tpAfternoonAndEvening.Text = "Chiều và tối";
            this.tpAfternoonAndEvening.UseVisualStyleBackColor = true;
            // 
            // tpDawn
            // 
            this.tpDawn.Location = new System.Drawing.Point(4, 22);
            this.tpDawn.Name = "tpDawn";
            this.tpDawn.Padding = new System.Windows.Forms.Padding(3);
            this.tpDawn.Size = new System.Drawing.Size(792, 424);
            this.tpDawn.TabIndex = 3;
            this.tpDawn.Text = "Rạng sáng";
            this.tpDawn.UseVisualStyleBackColor = true;
            // 
            // scheduleTemplateBindingSource
            // 
            this.scheduleTemplateBindingSource.DataSource = typeof(ATV.ProgramDept.Entity.ScheduleTemplate);
            // 
            // ScheduleTemplateForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.tabTemplate);
            this.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "ScheduleTemplateForm";
            this.Text = "ScheduleTemplateForm";            
            this.tabTemplate.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.scheduleTemplateViewModelBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.scheduleTemplateBindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabTemplate;
        private System.Windows.Forms.TabPage tpMorning;
        private System.Windows.Forms.TabPage tpNoon;
        private System.Windows.Forms.TabPage tpAfternoonAndEvening;
        private System.Windows.Forms.TabPage tpDawn;
        private System.Windows.Forms.BindingSource scheduleTemplateBindingSource;
        private System.Windows.Forms.BindingSource scheduleTemplateViewModelBindingSource;
        private System.Windows.Forms.DataGridViewTextBoxColumn nameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn codeDataGridViewTextBoxColumn;
    }
}