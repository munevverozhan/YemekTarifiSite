<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Iletisim.aspx.cs" Inherits="Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }

        .auto-style7 {
            text-align: right;
        }

        .auto-style8 {
            font-size: x-large;
        }

        .auto-style9 {
            text-align: right;
            height: 26px;
        }

        .auto-style12 {
            height: 26px;
        }

        .auto-style11 {
            border: 1px solid #848484;
            -webkit-border-radius: 30px;
            -moz-border-radius: 30px;
            border-radius: 30px;
            outline: 0;
            padding-left: 10px;
            padding-right: 10px;
        }

        .header {
            font-family: 'MV Boli';
            color: #FC427B;
            font-size: 23px;
            text-align: center;
            background-color: #f5f6fa;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="auto-style6">
        <tr>
            <td class="header" colspan="2"><em>MESAJ PANELİ</em></td>
        </tr>
       
        <tr>
            <td class="auto-style7"><strong>Ad Soyad : </strong></td>
            <td>
                <asp:TextBox ID="txtAdSoyad" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Mail Adresiniz :</strong></td>
            <td>
                <asp:TextBox ID="txtMail" runat="server" CssClass="textbox" TextMode="Email"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Konu : </strong></td>
            <td class="auto-style12">
                <asp:TextBox ID="txtKonu" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Mesaj : </strong></td>
            <td>
                <asp:TextBox ID="txtMesaj" runat="server" CssClass="auto-style11" Height="53px" TextMode="MultiLine" Width="277px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="GÖNDER" CssClass="button" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

