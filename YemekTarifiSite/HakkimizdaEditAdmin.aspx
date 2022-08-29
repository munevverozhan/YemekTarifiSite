<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="HakkimizdaEditAdmin.aspx.cs" Inherits="HakkimizdaEditAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style11 {
            border: 1px solid #848484;
            -webkit-border-radius: 30px;
            -moz-border-radius: 30px;
            border-radius: 30px;
            outline: 0;
            padding-left: 10px;
            padding-right: 10px;
            margin-left: 0px;
        }
        .auto-style12 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="auto-style2">
        <tr>
            <td>İÇERİK :&nbsp;</td>
            <td>
                <asp:TextBox ID="txtIcerik" runat="server" CssClass="auto-style11" Height="285px" TextMode="MultiLine" Width="349px"></asp:TextBox>
            </td>

        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12">
                <asp:Button ID="Button1" runat="server" CssClass="button" Text="GÜNCELLE" OnClick="Button1_Click" />
            </td>

        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>

        </tr>
    </table>
</asp:Content>

