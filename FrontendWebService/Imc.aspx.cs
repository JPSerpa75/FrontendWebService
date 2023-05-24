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
            var peso = Convert.ToDecimal(txtPeso.Text);
            var altura = Convert.ToDecimal(txtAltura.Text);
            var soma = peso + altura;
            lblResultado.Text = soma.ToString();
        }
    }
}