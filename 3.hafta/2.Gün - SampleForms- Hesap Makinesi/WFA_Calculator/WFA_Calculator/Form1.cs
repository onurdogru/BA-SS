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
    public partial class Form1 : Form
    {
        //global alan
        public Form1()
        {
            InitializeComponent();
        }
        //global alan
        private void btnTopla_Click(object sender, EventArgs e)
        {
            //local alan

            //numeric up down her zaman bize değeri decimal olarak teslim eder.

            decimal sayiBir = nudToplaSayi1.Value;
            decimal sayiIki = nudToplaSayi2.Value;
            decimal toplam = sayiBir + sayiIki;
            lblToplam.Text = toplam.ToString();
        }
        //global alan
        private void btnCikar_Click(object sender, EventArgs e)
        {
            //local alan
            decimal sayiBir = nudCikarSayi1.Value;
            decimal sayiIki = nudCikarSayi2.Value;
            decimal fark = sayiBir - sayiIki;
            lblCikarma.Text = fark.ToString();
        }
        //global alan
        private void btnCarp_Click(object sender, EventArgs e)
        {
            //local alan

            decimal sayiBir = nudCarpSayi1.Value;
            decimal sayiIki = nudCarpSayi2.Value;
            decimal carp = sayiBir * sayiIki;
            lblCarp.Text = carp.ToString();
        }
        //global alan
        private void btnBol_Click(object sender, EventArgs e)
        {
            //local alan

            decimal sayiBir = nudBolSayi1.Value;
            decimal sayiIki = nudBolSayi2.Value;
            decimal bolme = sayiBir / sayiIki;
            lblBol.Text = bolme.ToString();
        }
        //global alan
    }
}
