namespace SoftwareFinalAuditoria
{
    partial class Login
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Login));
            this.Chk_gestionPass = new System.Windows.Forms.CheckBox();
            this.Btn_loginSalir = new System.Windows.Forms.Button();
            this.Btn_Aceptar = new System.Windows.Forms.Button();
            this.Lbl_loginPass = new System.Windows.Forms.Label();
            this.Lbl_loginUser = new System.Windows.Forms.Label();
            this.Txt_loginPass = new System.Windows.Forms.TextBox();
            this.Txt_loginUser = new System.Windows.Forms.TextBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.label1 = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // Chk_gestionPass
            // 
            this.Chk_gestionPass.AutoSize = true;
            this.Chk_gestionPass.Font = new System.Drawing.Font("Microsoft Sans Serif", 6.5F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Chk_gestionPass.Location = new System.Drawing.Point(471, 336);
            this.Chk_gestionPass.Name = "Chk_gestionPass";
            this.Chk_gestionPass.Size = new System.Drawing.Size(140, 16);
            this.Chk_gestionPass.TabIndex = 40;
            this.Chk_gestionPass.Text = "MOSTRAR CONTRASEÑA";
            this.Chk_gestionPass.UseVisualStyleBackColor = true;
            this.Chk_gestionPass.CheckedChanged += new System.EventHandler(this.Chk_gestionPass_CheckedChanged);
            // 
            // Btn_loginSalir
            // 
            this.Btn_loginSalir.Image = ((System.Drawing.Image)(resources.GetObject("Btn_loginSalir.Image")));
            this.Btn_loginSalir.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.Btn_loginSalir.Location = new System.Drawing.Point(352, 374);
            this.Btn_loginSalir.Name = "Btn_loginSalir";
            this.Btn_loginSalir.Size = new System.Drawing.Size(82, 43);
            this.Btn_loginSalir.TabIndex = 39;
            this.Btn_loginSalir.Text = "SALIR";
            this.Btn_loginSalir.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.Btn_loginSalir.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.Btn_loginSalir.UseVisualStyleBackColor = true;
            this.Btn_loginSalir.Click += new System.EventHandler(this.Btn_loginSalir_Click);
            // 
            // Btn_Aceptar
            // 
            this.Btn_Aceptar.Image = ((System.Drawing.Image)(resources.GetObject("Btn_Aceptar.Image")));
            this.Btn_Aceptar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.Btn_Aceptar.Location = new System.Drawing.Point(248, 373);
            this.Btn_Aceptar.Name = "Btn_Aceptar";
            this.Btn_Aceptar.Size = new System.Drawing.Size(98, 44);
            this.Btn_Aceptar.TabIndex = 38;
            this.Btn_Aceptar.Text = "ACEPTAR";
            this.Btn_Aceptar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.Btn_Aceptar.UseVisualStyleBackColor = true;
            this.Btn_Aceptar.Click += new System.EventHandler(this.Btn_Aceptar_Click);
            // 
            // Lbl_loginPass
            // 
            this.Lbl_loginPass.AutoSize = true;
            this.Lbl_loginPass.Font = new System.Drawing.Font("Arial", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Lbl_loginPass.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.Lbl_loginPass.Location = new System.Drawing.Point(158, 337);
            this.Lbl_loginPass.Name = "Lbl_loginPass";
            this.Lbl_loginPass.Size = new System.Drawing.Size(47, 16);
            this.Lbl_loginPass.TabIndex = 37;
            this.Lbl_loginPass.Text = "PASS:";
            // 
            // Lbl_loginUser
            // 
            this.Lbl_loginUser.AutoSize = true;
            this.Lbl_loginUser.Font = new System.Drawing.Font("Arial", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Lbl_loginUser.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.Lbl_loginUser.Location = new System.Drawing.Point(158, 311);
            this.Lbl_loginUser.Name = "Lbl_loginUser";
            this.Lbl_loginUser.Size = new System.Drawing.Size(50, 16);
            this.Lbl_loginUser.TabIndex = 36;
            this.Lbl_loginUser.Text = "USER:";
            // 
            // Txt_loginPass
            // 
            this.Txt_loginPass.Location = new System.Drawing.Point(220, 333);
            this.Txt_loginPass.Name = "Txt_loginPass";
            this.Txt_loginPass.Size = new System.Drawing.Size(245, 20);
            this.Txt_loginPass.TabIndex = 35;
            this.Txt_loginPass.UseSystemPasswordChar = true;
            // 
            // Txt_loginUser
            // 
            this.Txt_loginUser.Location = new System.Drawing.Point(220, 307);
            this.Txt_loginUser.Name = "Txt_loginUser";
            this.Txt_loginUser.Size = new System.Drawing.Size(245, 20);
            this.Txt_loginUser.TabIndex = 34;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.DarkSlateGray;
            this.panel1.Controls.Add(this.label1);
            this.panel1.Location = new System.Drawing.Point(-9, -17);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(746, 87);
            this.panel1.TabIndex = 41;
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("pictureBox1.BackgroundImage")));
            this.pictureBox1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Zoom;
            this.pictureBox1.Location = new System.Drawing.Point(208, 76);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(271, 206);
            this.pictureBox1.TabIndex = 42;
            this.pictureBox1.TabStop = false;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Trebuchet MS", 27.75F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.Control;
            this.label1.Location = new System.Drawing.Point(21, 26);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(279, 46);
            this.label1.TabIndex = 0;
            this.label1.Text = "Software Final";
            // 
            // Login
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(694, 462);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.Chk_gestionPass);
            this.Controls.Add(this.Btn_loginSalir);
            this.Controls.Add(this.Btn_Aceptar);
            this.Controls.Add(this.Lbl_loginPass);
            this.Controls.Add(this.Lbl_loginUser);
            this.Controls.Add(this.Txt_loginPass);
            this.Controls.Add(this.Txt_loginUser);
            this.Name = "Login";
            this.Text = "Login";
            this.Load += new System.EventHandler(this.Login_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.CheckBox Chk_gestionPass;
        private System.Windows.Forms.Button Btn_loginSalir;
        private System.Windows.Forms.Button Btn_Aceptar;
        private System.Windows.Forms.Label Lbl_loginPass;
        private System.Windows.Forms.Label Lbl_loginUser;
        private System.Windows.Forms.TextBox Txt_loginPass;
        private System.Windows.Forms.TextBox Txt_loginUser;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.PictureBox pictureBox1;
    }
}