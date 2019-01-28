namespace ATV.ProgramDept.DesktopApp
{
    partial class ManageAccountForm
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
            this.btnNewAccount = new System.Windows.Forms.Button();
            this.dgvUnvalidateUser = new System.Windows.Forms.DataGridView();
            this.iDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.identityCodeDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.usernameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.defaultPasswordDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.phone1DataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.phone2DataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.emailDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.passwordHashDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.isPasswordChangedDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.roleIDDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.isActiveDataGridViewCheckBoxColumn = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.Approve = new System.Windows.Forms.DataGridViewButtonColumn();
            this.userBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.dgvValidateUser = new System.Windows.Forms.DataGridView();
            this.iDDataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.identityCodeDataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.usernameDataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.passwordHashDataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.nameDataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.phone1DataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.phone2DataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.emailDataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.isPasswordChangedDataGridViewCheckBoxColumn1 = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.defaultPasswordDataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.roleIDDataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.isActiveDataGridViewCheckBoxColumn1 = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.editingHistoriesDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.mailingHistoriesDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.roleDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Remove = new System.Windows.Forms.DataGridViewButtonColumn();
            ((System.ComponentModel.ISupportInitialize)(this.dgvUnvalidateUser)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.userBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvValidateUser)).BeginInit();
            this.SuspendLayout();
            // 
            // btnNewAccount
            // 
            this.btnNewAccount.Location = new System.Drawing.Point(13, 13);
            this.btnNewAccount.Name = "btnNewAccount";
            this.btnNewAccount.Size = new System.Drawing.Size(107, 23);
            this.btnNewAccount.TabIndex = 0;
            this.btnNewAccount.Text = "Thêm tài khoản";
            this.btnNewAccount.UseVisualStyleBackColor = true;
            this.btnNewAccount.Click += new System.EventHandler(this.btnNewAccount_Click);
            // 
            // dgvUnvalidateUser
            // 
            this.dgvUnvalidateUser.AutoGenerateColumns = false;
            this.dgvUnvalidateUser.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvUnvalidateUser.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.iDDataGridViewTextBoxColumn,
            this.identityCodeDataGridViewTextBoxColumn,
            this.nameDataGridViewTextBoxColumn,
            this.usernameDataGridViewTextBoxColumn,
            this.defaultPasswordDataGridViewTextBoxColumn,
            this.phone1DataGridViewTextBoxColumn,
            this.phone2DataGridViewTextBoxColumn,
            this.emailDataGridViewTextBoxColumn,
            this.passwordHashDataGridViewTextBoxColumn,
            this.isPasswordChangedDataGridViewCheckBoxColumn,
            this.roleIDDataGridViewTextBoxColumn,
            this.isActiveDataGridViewCheckBoxColumn,
            this.Approve});
            this.dgvUnvalidateUser.DataSource = this.userBindingSource;
            this.dgvUnvalidateUser.Location = new System.Drawing.Point(12, 51);
            this.dgvUnvalidateUser.Name = "dgvUnvalidateUser";
            this.dgvUnvalidateUser.Size = new System.Drawing.Size(644, 169);
            this.dgvUnvalidateUser.TabIndex = 1;
            this.dgvUnvalidateUser.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvUnvalidateUser_CellContentClick);
            // 
            // iDDataGridViewTextBoxColumn
            // 
            this.iDDataGridViewTextBoxColumn.DataPropertyName = "ID";
            this.iDDataGridViewTextBoxColumn.HeaderText = "ID";
            this.iDDataGridViewTextBoxColumn.Name = "iDDataGridViewTextBoxColumn";
            this.iDDataGridViewTextBoxColumn.Visible = false;
            // 
            // identityCodeDataGridViewTextBoxColumn
            // 
            this.identityCodeDataGridViewTextBoxColumn.DataPropertyName = "IdentityCode";
            this.identityCodeDataGridViewTextBoxColumn.HeaderText = "IdentityCode";
            this.identityCodeDataGridViewTextBoxColumn.Name = "identityCodeDataGridViewTextBoxColumn";
            this.identityCodeDataGridViewTextBoxColumn.Visible = false;
            // 
            // nameDataGridViewTextBoxColumn
            // 
            this.nameDataGridViewTextBoxColumn.DataPropertyName = "Name";
            this.nameDataGridViewTextBoxColumn.HeaderText = "Name";
            this.nameDataGridViewTextBoxColumn.Name = "nameDataGridViewTextBoxColumn";
            // 
            // usernameDataGridViewTextBoxColumn
            // 
            this.usernameDataGridViewTextBoxColumn.DataPropertyName = "Username";
            this.usernameDataGridViewTextBoxColumn.HeaderText = "Username";
            this.usernameDataGridViewTextBoxColumn.Name = "usernameDataGridViewTextBoxColumn";
            // 
            // defaultPasswordDataGridViewTextBoxColumn
            // 
            this.defaultPasswordDataGridViewTextBoxColumn.DataPropertyName = "DefaultPassword";
            this.defaultPasswordDataGridViewTextBoxColumn.HeaderText = "DefaultPassword";
            this.defaultPasswordDataGridViewTextBoxColumn.Name = "defaultPasswordDataGridViewTextBoxColumn";
            // 
            // phone1DataGridViewTextBoxColumn
            // 
            this.phone1DataGridViewTextBoxColumn.DataPropertyName = "Phone1";
            this.phone1DataGridViewTextBoxColumn.HeaderText = "Phone1";
            this.phone1DataGridViewTextBoxColumn.Name = "phone1DataGridViewTextBoxColumn";
            // 
            // phone2DataGridViewTextBoxColumn
            // 
            this.phone2DataGridViewTextBoxColumn.DataPropertyName = "Phone2";
            this.phone2DataGridViewTextBoxColumn.HeaderText = "Phone2";
            this.phone2DataGridViewTextBoxColumn.Name = "phone2DataGridViewTextBoxColumn";
            // 
            // emailDataGridViewTextBoxColumn
            // 
            this.emailDataGridViewTextBoxColumn.DataPropertyName = "Email";
            this.emailDataGridViewTextBoxColumn.HeaderText = "Email";
            this.emailDataGridViewTextBoxColumn.Name = "emailDataGridViewTextBoxColumn";
            this.emailDataGridViewTextBoxColumn.Visible = false;
            // 
            // passwordHashDataGridViewTextBoxColumn
            // 
            this.passwordHashDataGridViewTextBoxColumn.DataPropertyName = "PasswordHash";
            this.passwordHashDataGridViewTextBoxColumn.HeaderText = "PasswordHash";
            this.passwordHashDataGridViewTextBoxColumn.Name = "passwordHashDataGridViewTextBoxColumn";
            this.passwordHashDataGridViewTextBoxColumn.Visible = false;
            // 
            // isPasswordChangedDataGridViewCheckBoxColumn
            // 
            this.isPasswordChangedDataGridViewCheckBoxColumn.DataPropertyName = "IsPasswordChanged";
            this.isPasswordChangedDataGridViewCheckBoxColumn.HeaderText = "IsPasswordChanged";
            this.isPasswordChangedDataGridViewCheckBoxColumn.Name = "isPasswordChangedDataGridViewCheckBoxColumn";
            this.isPasswordChangedDataGridViewCheckBoxColumn.Visible = false;
            // 
            // roleIDDataGridViewTextBoxColumn
            // 
            this.roleIDDataGridViewTextBoxColumn.DataPropertyName = "RoleID";
            this.roleIDDataGridViewTextBoxColumn.HeaderText = "RoleID";
            this.roleIDDataGridViewTextBoxColumn.Name = "roleIDDataGridViewTextBoxColumn";
            this.roleIDDataGridViewTextBoxColumn.Visible = false;
            // 
            // isActiveDataGridViewCheckBoxColumn
            // 
            this.isActiveDataGridViewCheckBoxColumn.DataPropertyName = "IsActive";
            this.isActiveDataGridViewCheckBoxColumn.HeaderText = "IsActive";
            this.isActiveDataGridViewCheckBoxColumn.Name = "isActiveDataGridViewCheckBoxColumn";
            this.isActiveDataGridViewCheckBoxColumn.Visible = false;
            // 
            // Approve
            // 
            this.Approve.HeaderText = "Xác nhận";
            this.Approve.Name = "Approve";
            this.Approve.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Approve.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Approve.Text = "Xác nhận";
            this.Approve.UseColumnTextForButtonValue = true;
            // 
            // userBindingSource
            // 
            this.userBindingSource.DataSource = typeof(ATV.ProgramDept.Entity.User);
            // 
            // dgvValidateUser
            // 
            this.dgvValidateUser.AutoGenerateColumns = false;
            this.dgvValidateUser.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvValidateUser.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.iDDataGridViewTextBoxColumn1,
            this.identityCodeDataGridViewTextBoxColumn1,
            this.usernameDataGridViewTextBoxColumn1,
            this.passwordHashDataGridViewTextBoxColumn1,
            this.nameDataGridViewTextBoxColumn1,
            this.phone1DataGridViewTextBoxColumn1,
            this.phone2DataGridViewTextBoxColumn1,
            this.emailDataGridViewTextBoxColumn1,
            this.isPasswordChangedDataGridViewCheckBoxColumn1,
            this.defaultPasswordDataGridViewTextBoxColumn1,
            this.roleIDDataGridViewTextBoxColumn1,
            this.isActiveDataGridViewCheckBoxColumn1,
            this.editingHistoriesDataGridViewTextBoxColumn,
            this.mailingHistoriesDataGridViewTextBoxColumn,
            this.roleDataGridViewTextBoxColumn,
            this.Remove});
            this.dgvValidateUser.DataSource = this.userBindingSource;
            this.dgvValidateUser.Location = new System.Drawing.Point(13, 247);
            this.dgvValidateUser.Name = "dgvValidateUser";
            this.dgvValidateUser.Size = new System.Drawing.Size(445, 150);
            this.dgvValidateUser.TabIndex = 2;
            this.dgvValidateUser.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgvValidateUser_CellContentClick);
            // 
            // iDDataGridViewTextBoxColumn1
            // 
            this.iDDataGridViewTextBoxColumn1.DataPropertyName = "ID";
            this.iDDataGridViewTextBoxColumn1.HeaderText = "ID";
            this.iDDataGridViewTextBoxColumn1.Name = "iDDataGridViewTextBoxColumn1";
            this.iDDataGridViewTextBoxColumn1.Visible = false;
            // 
            // identityCodeDataGridViewTextBoxColumn1
            // 
            this.identityCodeDataGridViewTextBoxColumn1.DataPropertyName = "IdentityCode";
            this.identityCodeDataGridViewTextBoxColumn1.HeaderText = "IdentityCode";
            this.identityCodeDataGridViewTextBoxColumn1.Name = "identityCodeDataGridViewTextBoxColumn1";
            this.identityCodeDataGridViewTextBoxColumn1.Visible = false;
            // 
            // usernameDataGridViewTextBoxColumn1
            // 
            this.usernameDataGridViewTextBoxColumn1.DataPropertyName = "Username";
            this.usernameDataGridViewTextBoxColumn1.HeaderText = "Username";
            this.usernameDataGridViewTextBoxColumn1.Name = "usernameDataGridViewTextBoxColumn1";
            this.usernameDataGridViewTextBoxColumn1.Visible = false;
            // 
            // passwordHashDataGridViewTextBoxColumn1
            // 
            this.passwordHashDataGridViewTextBoxColumn1.DataPropertyName = "PasswordHash";
            this.passwordHashDataGridViewTextBoxColumn1.HeaderText = "PasswordHash";
            this.passwordHashDataGridViewTextBoxColumn1.Name = "passwordHashDataGridViewTextBoxColumn1";
            this.passwordHashDataGridViewTextBoxColumn1.Visible = false;
            // 
            // nameDataGridViewTextBoxColumn1
            // 
            this.nameDataGridViewTextBoxColumn1.DataPropertyName = "Name";
            this.nameDataGridViewTextBoxColumn1.HeaderText = "Name";
            this.nameDataGridViewTextBoxColumn1.Name = "nameDataGridViewTextBoxColumn1";
            // 
            // phone1DataGridViewTextBoxColumn1
            // 
            this.phone1DataGridViewTextBoxColumn1.DataPropertyName = "Phone1";
            this.phone1DataGridViewTextBoxColumn1.HeaderText = "Phone1";
            this.phone1DataGridViewTextBoxColumn1.Name = "phone1DataGridViewTextBoxColumn1";
            // 
            // phone2DataGridViewTextBoxColumn1
            // 
            this.phone2DataGridViewTextBoxColumn1.DataPropertyName = "Phone2";
            this.phone2DataGridViewTextBoxColumn1.HeaderText = "Phone2";
            this.phone2DataGridViewTextBoxColumn1.Name = "phone2DataGridViewTextBoxColumn1";
            // 
            // emailDataGridViewTextBoxColumn1
            // 
            this.emailDataGridViewTextBoxColumn1.DataPropertyName = "Email";
            this.emailDataGridViewTextBoxColumn1.HeaderText = "Email";
            this.emailDataGridViewTextBoxColumn1.Name = "emailDataGridViewTextBoxColumn1";
            this.emailDataGridViewTextBoxColumn1.Visible = false;
            // 
            // isPasswordChangedDataGridViewCheckBoxColumn1
            // 
            this.isPasswordChangedDataGridViewCheckBoxColumn1.DataPropertyName = "IsPasswordChanged";
            this.isPasswordChangedDataGridViewCheckBoxColumn1.HeaderText = "IsPasswordChanged";
            this.isPasswordChangedDataGridViewCheckBoxColumn1.Name = "isPasswordChangedDataGridViewCheckBoxColumn1";
            this.isPasswordChangedDataGridViewCheckBoxColumn1.Visible = false;
            // 
            // defaultPasswordDataGridViewTextBoxColumn1
            // 
            this.defaultPasswordDataGridViewTextBoxColumn1.DataPropertyName = "DefaultPassword";
            this.defaultPasswordDataGridViewTextBoxColumn1.HeaderText = "DefaultPassword";
            this.defaultPasswordDataGridViewTextBoxColumn1.Name = "defaultPasswordDataGridViewTextBoxColumn1";
            this.defaultPasswordDataGridViewTextBoxColumn1.Visible = false;
            // 
            // roleIDDataGridViewTextBoxColumn1
            // 
            this.roleIDDataGridViewTextBoxColumn1.DataPropertyName = "RoleID";
            this.roleIDDataGridViewTextBoxColumn1.HeaderText = "RoleID";
            this.roleIDDataGridViewTextBoxColumn1.Name = "roleIDDataGridViewTextBoxColumn1";
            this.roleIDDataGridViewTextBoxColumn1.Visible = false;
            // 
            // isActiveDataGridViewCheckBoxColumn1
            // 
            this.isActiveDataGridViewCheckBoxColumn1.DataPropertyName = "IsActive";
            this.isActiveDataGridViewCheckBoxColumn1.HeaderText = "IsActive";
            this.isActiveDataGridViewCheckBoxColumn1.Name = "isActiveDataGridViewCheckBoxColumn1";
            this.isActiveDataGridViewCheckBoxColumn1.Visible = false;
            // 
            // editingHistoriesDataGridViewTextBoxColumn
            // 
            this.editingHistoriesDataGridViewTextBoxColumn.DataPropertyName = "EditingHistories";
            this.editingHistoriesDataGridViewTextBoxColumn.HeaderText = "EditingHistories";
            this.editingHistoriesDataGridViewTextBoxColumn.Name = "editingHistoriesDataGridViewTextBoxColumn";
            this.editingHistoriesDataGridViewTextBoxColumn.Visible = false;
            // 
            // mailingHistoriesDataGridViewTextBoxColumn
            // 
            this.mailingHistoriesDataGridViewTextBoxColumn.DataPropertyName = "MailingHistories";
            this.mailingHistoriesDataGridViewTextBoxColumn.HeaderText = "MailingHistories";
            this.mailingHistoriesDataGridViewTextBoxColumn.Name = "mailingHistoriesDataGridViewTextBoxColumn";
            this.mailingHistoriesDataGridViewTextBoxColumn.Visible = false;
            // 
            // roleDataGridViewTextBoxColumn
            // 
            this.roleDataGridViewTextBoxColumn.DataPropertyName = "Role";
            this.roleDataGridViewTextBoxColumn.HeaderText = "Role";
            this.roleDataGridViewTextBoxColumn.Name = "roleDataGridViewTextBoxColumn";
            this.roleDataGridViewTextBoxColumn.Visible = false;
            // 
            // Remove
            // 
            this.Remove.HeaderText = "Hủy";
            this.Remove.Name = "Remove";
            this.Remove.Text = "Hủy";
            this.Remove.UseColumnTextForButtonValue = true;
            // 
            // ManageAccountForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.ClientSize = new System.Drawing.Size(800, 496);
            this.Controls.Add(this.dgvValidateUser);
            this.Controls.Add(this.dgvUnvalidateUser);
            this.Controls.Add(this.btnNewAccount);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "ManageAccountForm";
            this.Text = "Account Mangement";
            this.Load += new System.EventHandler(this.ManageAccountForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvUnvalidateUser)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.userBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvValidateUser)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnNewAccount;
        private System.Windows.Forms.DataGridView dgvUnvalidateUser;
        private System.Windows.Forms.BindingSource userBindingSource;
        private System.Windows.Forms.DataGridView dgvValidateUser;
        private System.Windows.Forms.DataGridViewTextBoxColumn iDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn identityCodeDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn nameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn usernameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn defaultPasswordDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn phone1DataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn phone2DataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn emailDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn passwordHashDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewCheckBoxColumn isPasswordChangedDataGridViewCheckBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn roleIDDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewCheckBoxColumn isActiveDataGridViewCheckBoxColumn;
        private System.Windows.Forms.DataGridViewButtonColumn Approve;
        private System.Windows.Forms.DataGridViewTextBoxColumn iDDataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn identityCodeDataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn usernameDataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn passwordHashDataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn nameDataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn phone1DataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn phone2DataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn emailDataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewCheckBoxColumn isPasswordChangedDataGridViewCheckBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn defaultPasswordDataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn roleIDDataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewCheckBoxColumn isActiveDataGridViewCheckBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn editingHistoriesDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn mailingHistoriesDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn roleDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewButtonColumn Remove;
    }
}