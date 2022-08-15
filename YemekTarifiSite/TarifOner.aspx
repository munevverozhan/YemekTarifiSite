<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
    }
    .auto-style6 {
        text-align: right;
    }
    .auto-style7 {
        font-weight: bold;
        font-style: italic;
        background-color: #FF99FF;
    }
    .auto-style8 {
        text-align: right;
        height: 26px;
    }
    .auto-style9 {
        height: 26px;
    }
    .auto-style10 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style5">
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Tarif :</strong></td>
        <td>
            <asp:TextBox ID="txtTarif" runat="server" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Malzemeler :</strong></td>
        <td>
            <asp:TextBox ID="txtMalzeme" runat="server" Height="80px" TextMode="MultiLine" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Yapılış :</strong></td>
        <td>
            <asp:TextBox ID="txtYapilis" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Resim :</strong></td>
        <td>
            <asp:FileUpload ID="txtResim" runat="server" Width="300px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style6"><strong>Tarif Sahibi :</strong></td>
        <td>
            <asp:TextBox ID="txtTarifSahip" runat="server" style="height: 22px" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8"><strong>Mail Adresi : </strong></td>
        <td class="auto-style9">
            <asp:TextBox ID="txtMail" runat="server" TextMode="Email" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="auto-style10"><strong><em>
            <asp:Button ID="btnTarifOner" runat="server" CssClass="auto-style7" Height="42px" Text="TARİF ÖNER" Width="136px" OnClick="btnTarifOner_Click" />
            </em></strong></td>
    </tr>
</table>
</asp:Content>

