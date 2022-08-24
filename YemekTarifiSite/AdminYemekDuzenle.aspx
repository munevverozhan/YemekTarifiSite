<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="AdminYemekDuzenle.aspx.cs" Inherits="AdminYemekDuzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            font-family: Cambria;
            color: #1e272e;
            border: medium groove #ffffff;
            height: 31px;
            text-align: right;
        }
        .auto-style4 {
            height: 31px;
        }
        .auto-style5 {
            font-family: Cambria;
            color: #1e272e;
            border: medium groove #ffffff;
            text-align: right;
        }
        .auto-style6 {
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
            <td>
                <asp:Label ID="ilkDeger" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Yemek Ad : </td>
            <td>
                <asp:TextBox ID="txtYemekAd" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Malzeme : </td>
            <td class="auto-style4">
                <asp:TextBox ID="txtMalzeme" runat="server" CssClass="auto-style6" Height="164px" Width="272px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Tarif :</td>
            <td>
                <asp:TextBox ID="txtTarif" runat="server" CssClass="auto-style6" Height="196px" Width="270px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Resim : </td>
            <td>
                <asp:FileUpload ID="txtResim" runat="server" CssClass="textbox" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Kategori :</td>
            <td>
                <asp:DropDownList ID="txtKategori" runat="server" CssClass="textbox">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnGuncelle" runat="server" CssClass="button" Text="GÜNCELLE" OnClick="btnGuncelle_Click" />
            </td>
        </tr>
    </table>


</asp:Content>

