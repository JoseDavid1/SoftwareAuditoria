using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Odbc;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace SoftwareFinalAuditoria
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

        private void Login_Load(object sender, EventArgs e)
        {
            
        }

        //boton aceptar
        private void Btn_Aceptar_Click(object sender, EventArgs e)
        {
            OdbcConnection conexion = Conection.getDB();
            try
            {
                string sql = string.Format("SELECT * FROM usuarios WHERE user = '{0}'", Txt_loginUser.Text);
                OdbcCommand cmd = new OdbcCommand(sql, conexion);
                OdbcDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    if (reader.GetString(1) == Txt_loginPass.Text)
                    {
                        if (reader.GetInt32(2) == 0)
                        {
                            Txt_loginUser.Text = "";
                            Txt_loginPass.Text = "";
                            MDIPrincipal nuevo = new MDIPrincipal();
                            this.Hide();
                            nuevo.Show();
                        }
                        else
                        {
                            MessageBox.Show("Privilegios denegados", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                            Txt_loginUser.Text = "";
                            Txt_loginUser.Focus();
                        }
                    }
                    else
                    {
                        MessageBox.Show("Contraseña incorrecta", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                        Txt_loginPass.Focus();
                    }
                }
                else
                {
                    MessageBox.Show("Usuario no valido", "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    Txt_loginUser.Text = "";
                    Txt_loginUser.Focus();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.ToString());
            }
            Txt_loginPass.Text = "";
            Chk_gestionPass.Checked = false;
            conexion.Close();
        }

        //boton salir
        private void Btn_loginSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        //mostrar contraseña
        private void Chk_gestionPass_CheckedChanged(object sender, EventArgs e)
        {
            if (Chk_gestionPass.Checked)
                Txt_loginPass.UseSystemPasswordChar = false;
            else
                Txt_loginPass.UseSystemPasswordChar = true;
        }
    }
}
