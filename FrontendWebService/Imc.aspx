<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Imc.aspx.cs" Inherits="FrontendWebService.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h3>Calculo de IMC</h3>

    <div class="form-group">

        <div class="content">
            <label class="d-block form-label">Peso:</label>
            <asp:TextBox class="form-control" ID="txtPeso" runat="server" placeholder="Digite sua peso"></asp:TextBox>

            <label class="d-block form-label">Altura:</label>
            <asp:TextBox class="form-control" ID="txtAltura" runat="server" placeholder="Digite sua altura"></asp:TextBox>

            <div class="row">
                <asp:Button class="btn btn-primary" ID="btnCalcular" runat="server" Text="Calcular" OnClick="btnCalcular_Click" />
            </div>
        </div>

        <div>
            <label id="lblResposta" runat="server"></label>
        </div>

    </div>

    <script>
        var txtAltura = document.getElementById("MainContent_txtAltura");
            txtAltura.addEventListener("keypress", function (e) {
            var keycode = (e.keyCode ? e.keyCode : e.wich)

            if ((keycode < 48 || keycode > 58) && keycode !== 44) {
                e.preventDefault();
            }
        })
    </script>

</asp:Content>
