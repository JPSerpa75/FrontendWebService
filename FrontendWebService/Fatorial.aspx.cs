using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FrontendWebService
{
    public partial class Fatorial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            var valor = txtValor.Text;

            if (valor == "" || valor == null)
            {
                lblResposta.InnerText = "Informe um valor!";
                return;
            }



            WsBackend.BackEnd ws = new WsBackend.BackEnd();
            var resposta = ws.fatorial(long.Parse(valor));

            lblResposta.InnerText = resposta.ToString();


            txtValor.Text = "";
        }
    }
}