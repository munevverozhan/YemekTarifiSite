<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="YorumDetayAdmin.aspx.cs" Inherits="YorumDetayAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            border: 1px solid #848484;
            -webkit-border-radius: 30px;
            -moz-border-radius: 30px;
            border-radius: 30px;
            outline: 0;
            padding-left: 10px;
            padding-right: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="txt">Ad Soyad :</td>
            <td>
                <asp:TextBox ID="txtAdSoyad" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="txt">Mail :</td>
            <td>
                <asp:TextBox ID="txtMail" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="txt">İçerik :</td>
            <td>
                <asp:TextBox ID="txtIcerik" runat="server" CssClass="auto-style3" Height="154px" TextMode="MultiLine" Width="281px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="txt">Yemek :</td>
            <td>
                <asp:TextBox ID="txtYemek" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnOnayla" runat="server" CssClass="button" OnClick="btnOnayla_Click" Text="ONAYLA" />
            </td>
        </tr>
    </table>
</asp:Content>

