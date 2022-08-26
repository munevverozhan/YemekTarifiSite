<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="TarifOnerAdminDetay.aspx.cs" Inherits="TarifOnerAdminDetay" %>

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
                <asp:TextBox ID="txtMalzeme" runat="server" TextMode="MultiLine" CssClass="auto-style13" Height="181px" Width="296px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Yapılış :</strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="txtYapilis" runat="server" TextMode="MultiLine" CssClass="auto-style13" Height="183px" Width="296px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Resim :</strong></td>
            <td>
                <asp:FileUpload ID="txtResim" runat="server" CssClass="textbox" />
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
            <td class="auto-style6"><strong>Kategori :</strong></td>
            <td>
                <asp:DropDownList ID="txtKategori" runat="server" CssClass="textbox">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style11"><strong><em>
                <asp:Button ID="btnOnayla" runat="server" CssClass="button" Text="ONAYLA" OnClick="btnOnayla_Click"  />
            </em></strong></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblKategori" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:Label ID="lblID" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>


