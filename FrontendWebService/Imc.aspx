<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Imc.aspx.cs" Inherits="FrontendWebService.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Cálculo de IMC</h1>
    <div>
        <form action="/" method="post">

            <asp:Label ID="lblPeso" runat="server" Text="Peso: "></asp:Label> <br />
            <asp:TextBox ID="txtPeso" runat="server" type="number"></asp:TextBox> <br />

            <asp:Label ID="lblAltura" runat="server" Text="Altura: "></asp:Label> <br />
            <asp:TextBox ID="txtAltura" runat="server" type="number"></asp:TextBox>

            <asp:Button ID="btnImc" runat="server" Text="Calcular" OnClick="btnImc_Click" />

            <asp:Label ID="lblResultado" runat="server" Text="Resultado: "></asp:Label> <br />
        </form>
    </div>
</asp:Content>
