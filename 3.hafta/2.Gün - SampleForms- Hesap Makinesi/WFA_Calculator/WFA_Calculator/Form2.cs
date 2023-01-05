using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WFA_Calculator
{
    public partial class Form2 : Form
    {
        public Form2()
        {
            InitializeComponent();
        }
        //global alan
        //değişkenlerin tanımlanması
        decimal sayiBir=0;
        decimal sayiIki = 0;
        decimal sonuc = 0;

        private void btnTopla_Click(object sender, EventArgs e)
        {
            sayiBir = nudToplaSayi1.Value;
            sayiIki = nudToplaSayi2.Value;
            sonuc = sayiBir + sayiIki;
            lblToplam.Text = sonuc.ToString();
        }

        private void btnCikar_Click(object sender, EventArgs e)
        {
            sayiBir = nudCikarSayi1.Value;
            sayiIki = nudCikarSayi2.Value;
            sonuc = sayiBir - sayiIki;
            lblCikarma.Text = sonuc.ToString();
        }

        private void btnCarp_Click(object sender, EventArgs e)
        {
            sayiBir = nudCarpSayi1.Value;
            sayiIki = nudCarpSayi2.Value;
            sonuc = sayiBir *sayiIki;
            lblCarp.Text = sonuc.ToString();
        }

        private void btnBol_Click(object sender, EventArgs e)
        {
            sayiBir = nudBolSayi1.Value;
            sayiIki = nudBolSayi2.Value;
            sonuc = sayiBir / sayiIki;
            lblBol.Text = sonuc.ToString();
        }
    }
}
