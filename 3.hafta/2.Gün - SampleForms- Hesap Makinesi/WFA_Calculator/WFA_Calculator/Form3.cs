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
    public partial class Form3 : Form
    {
        public Form3()
        {
            InitializeComponent();
        }

        decimal sayiBir = 0;
        decimal sayiIki = 0;
        decimal sonuc = 0; 
        private void btnTopla_Click(object sender, EventArgs e)
        {
            sayiBir=nudSayi1.Value;
            sayiIki = nudSayi2.Value;
            sonuc = sayiBir + sayiIki;
            lblSonuc.Text = sonuc.ToString();
            btnTopla.Enabled = false; // click'ten sonra basılma özelliğini kaldırıyor.
            lstIslem.Items.Add("Toplam: "+sonuc);
            

        }

        private void btnCikar_Click(object sender, EventArgs e)
        {
            sayiBir = nudSayi1.Value;
            sayiIki = nudSayi2.Value;
            sonuc = sayiBir - sayiIki;
            lblSonuc.Text = sonuc.ToString();
            btnCikar.Enabled = false;  
            lstIslem.Items.Add("Çıkarma: " + sonuc);
        }

        private void btnCarp_Click(object sender, EventArgs e)
        {
            sayiBir = nudSayi1.Value;
            sayiIki = nudSayi2.Value;
            sonuc = sayiBir * sayiIki;
            lblSonuc.Text = sonuc.ToString();
            btnCarp.Enabled = false;    
            lstIslem.Items.Add("Çarpım: " + sonuc);
        }

        private void btnBol_Click(object sender, EventArgs e)
        {
            sayiBir = nudSayi1.Value;
            sayiIki = nudSayi2.Value;
            sonuc = sayiBir / sayiIki;
            lblSonuc.Text = sonuc.ToString();
            btnBol.Enabled = false; 
            lstIslem.Items.Add("Bölüm: " + sonuc);
        }
    }
}
