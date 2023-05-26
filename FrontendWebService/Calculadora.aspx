<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Calculadora.aspx.cs" Inherits="FrontendWebService.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h3>Calculadora</h3>

    <div class="form-group">

        <div class="content">
            <label class="d-block form-label">Valor 1:</label>
            <asp:TextBox class="form-control" ID="txtValor1" runat="server" placeholder="Valor 1"></asp:TextBox>

             <label class="d-block form-label">Valor 2:</label>
            <asp:TextBox class="form-control" ID="txtValor2" runat="server" placeholder="Valor 2"></asp:TextBox>

            <div class="radios">
                <label class="d-block  form-label">Escolha o operador</label>
                <div class="row">
                    <input type="radio" runat="server" class="form-check-input" id="RdBtnSoma" runat="server" value="+" name="unidade" checked />
                    <asp:Label ID="lblSoma" runat="server" Text="Soma" for="RdBtnSoma"></asp:Label>
                </div>

                <div class="row">
                    <input type="radio" runat="server" class="form-check-input" id="RdBtnSub" runat="server" value="-" name="unidade" />
                    <asp:Label ID="lblSub" runat="server" Text="Subtração" for="RdBtnSub"></asp:Label>
                </div>
                <div class="row">
                    <input type="radio" runat="server" class="form-check-input" id="RdBtnMulti" runat="server" value="*" name="unidade" />
                    <asp:Label ID="lblMulti" runat="server" Text="Multiplicação" for="RdBtnMulti"></asp:Label>
                </div>
                <div class="row">
                    <input type="radio" runat="server" class="form-check-input" id="RdBtnDiv" runat="server" value="/" name="unidade" />
                    <asp:Label ID="lblDiv" runat="server" Text="Divisão" for="RdBtnDiv"></asp:Label>
                </div>
            </div>


            <div class="row">
                <asp:Button class="btn btn-primary" ID="btnCalcular" runat="server" Text="Converter" OnClick="btnCalcular_Click" />
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

            if ((keycode < 48 || keycode > 58) && keycode!== 44) {
                e.preventDefault();
            }
        })
    </script>
</asp:Content>
