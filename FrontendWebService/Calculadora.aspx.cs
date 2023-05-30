using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrontendWebService
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            var v1 = float.Parse(txtValor1.Text);
            var v2 = float.Parse(txtValor2.Text);
            string operador;

            if (RdBtnSoma.Checked)
            {
                operador = RdBtnSoma.Value;
            }
            else if (RdBtnSub.Checked)
            {
                operador = RdBtnSub.Value;
            }
            else if (RdBtnMulti.Checked)
            {
                operador = RdBtnMulti.Value;
            }
            else
            {
                if(v2 == 0)
                {
                    lblResposta.InnerText = "Não existe divisão";
                    Response.Redirect("https://descomplica.com.br/blog/voce-vestibulando-que-ama-matematica-ja-tentou-dividir-por-zero/");
                    return;
                }
                operador = RdBtnDiv.Value;
            }
            WsBackend.BackEnd wc = new WsBackend.BackEnd();
            var resultado = wc.calculadora(v1, v2, operador);
            lblResposta.InnerText = resultado.ToString();
        }
    }
}