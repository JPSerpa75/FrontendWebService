<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fatorial.aspx.cs" Inherits="FrontendWebService.Fatorial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h3>Calculo de Fatorial</h3>

    <div class="form-group">

        <div class="content">
            <label class="d-block form-label">Valor:</label>
            <asp:TextBox class="form-control" ID="txtValor" runat="server" placeholder="Digite um número"></asp:TextBox>

            <div class="row">
                <asp:Button class="btn btn-primary" ID="btnCalcular" runat="server" Text="Calcular" OnClick="btnCalcular_Click" />
            </div>
        </div>

        <div>
            <label id="lblResposta" runat="server"></label>
        </div>

    </div>



    <script>
        var txtValor = document.getElementById("MainContent_txtValor");

        txtValor.addEventListener("keypress", function (e) {
            var keycode = (e.keyCode ? e.keyCode : e.wich)

            if (keycode < 48 || keycode > 58) {
                e.preventDefault();
            }
        })
    </script>

</asp:Content>
