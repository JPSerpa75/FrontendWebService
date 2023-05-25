using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrontendWebService
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnImc_Click(object sender, EventArgs e)
        {
            var peso = float.Parse(txtPeso.Text);
            var altura = float.Parse(txtAltura.Text);
            localhost.BackEnd lc = new localhost.BackEnd();
            var resultado = lc.calcularImc(peso, altura);
            lblResultado.Text = resultado.ToString();

        }
    }
}