<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }

        .auto-style6 {
            text-align: right;
        }

        .auto-style8 {
            text-align: right;
            height: 26px;
        }

        .auto-style9 {
            height: 26px;
        }

        .auto-style13 {
            border: 1px solid #848484;
            -webkit-border-radius: 30px;
            -moz-border-radius: 30px;
            border-radius: 30px;
            outline: 0;
            padding-left: 10px;
            padding-right: 10px;
        }

        .auto-style11 {
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="auto-style5">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Tarif :</strong></td>
            <td>
                <asp:TextBox ID="txtTarif" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Malzemeler :</strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="txtMalzeme" runat="server" TextMode="MultiLine" CssClass="auto-style13" Height="79px" Width="273px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Yapılış :</strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="txtYapilis" runat="server" TextMode="MultiLine" CssClass="auto-style13" Height="84px" Width="277px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Tarif Sahibi :</strong></td>
            <td>
                <asp:TextBox ID="txtTarifSahip" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>Mail Adresi : </strong></td>
            <td class="auto-style9">
                <asp:TextBox ID="txtMail" runat="server" TextMode="Email" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td><strong><em>
                <asp:Button ID="btnTarifOner" runat="server" CssClass="button" Text="TARİF ÖNER" OnClick="btnTarifOner_Click" />
            </em></strong></td>
        </tr>
    </table>
</asp:Content>

