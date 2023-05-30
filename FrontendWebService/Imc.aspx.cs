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

        protected void btnCalcular_Click(object sender, EventArgs e)
        {

            if (txtAltura == null || txtPeso == null || txtAltura.Text == "" || txtPeso.Text == "")
            {
                
                lblResposta.InnerText ="Preencha todos os campos!";

                return;
            }
            var peso = float.Parse(txtPeso.Text);
            var altura = float.Parse(txtAltura.Text);
           if (peso <= 0 || altura <= 0)
            {
                lblResposta.InnerText = "Peso e altura devem ser maior que zero";
                return;
           }
           WsBackend.BackEnd wc = new WsBackend.BackEnd();
           var resultado = wc.calcularImc(peso, altura);
            lblResposta.InnerText = resultado;
           

        }
    }
}