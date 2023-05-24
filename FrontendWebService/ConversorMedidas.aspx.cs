using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrontendWebService
{
    public partial class ConversorMedidas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConverter_Click(object sender, EventArgs e)
        {
            var valor = txtValor.Text;
            float valorFloat;

            if (valor=="" || valor == null ){

                lblResposta.InnerText = "Informe um valor!";
                return;
            }

            valorFloat = float.Parse(valor);

            string medida;

            if (RdBtnJardas.Checked)
            {
                medida = RdBtnJardas.Value;
            }else if(RdBtnMilhas.Checked)
            {
                medida = RdBtnMilhas.Value;
            }else if (RdBtnPes.Checked)
            {
                medida = RdBtnPes.Value;
            }
            else
            {
                medida = RdBtnPolegadas.Value;
            }

            WsBackend.BackEnd ws = new WsBackend.BackEnd();
            var resposta = ws.conversao(valorFloat, medida);

            lblResposta.InnerText = resposta.ToString() + " " + medida;


            txtValor.Text = "";

        }
    }
}