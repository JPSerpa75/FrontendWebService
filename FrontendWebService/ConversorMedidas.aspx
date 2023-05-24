<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConversorMedidas.aspx.cs" Inherits="FrontendWebService.ConversorMedidas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h3>Conversor de metros para outras unidades</h3>

    <div class="form-group">

        <div class="content">
            <label class="d-block form-label">Metros:</label>
            <asp:TextBox class="form-control" ID="txtValor" runat="server" placeholder="Valor em metros"></asp:TextBox>

            <div class="radios">
                <label class="d-block  form-label">Converter para:</label>
                <div class="row">
                    <input type="radio" runat="server" class="form-check-input" id="RdBtnJardas" runat="server" value="jardas" name="unidade" />
                    <asp:Label ID="Label1" runat="server" Text="Jardas" for="RdBtnJardas"></asp:Label>
                </div>

                <div class="row">
                    <input type="radio" runat="server" class="form-check-input" id="RdBtnMilhas" runat="server" value="milhas" name="unidade" />
                    <asp:Label ID="Label2" runat="server" Text="Milhas" for="RdBtnMilhas"></asp:Label>
                </div>
                <div class="row">
                    <input type="radio" runat="server" class="form-check-input" id="RdBtnPes" runat="server" value="pes" name="unidade" />
                    <asp:Label ID="Label3" runat="server" Text="Pés" for="RdBtnPes"></asp:Label>
                </div>
                <div class="row">
                    <input type="radio" runat="server" class="form-check-input" id="RdBtnPolegadas" runat="server" value="polegadas" name="unidade" />
                    <asp:Label ID="Label4" runat="server" Text="Polegadas" for="RdBtnPolegadas"></asp:Label>
                </div>
            </div>


            <div class="row">
                <asp:Button class="btn btn-primary" ID="btnConverter" runat="server" Text="Converter" OnClick="btnConverter_Click" />
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
