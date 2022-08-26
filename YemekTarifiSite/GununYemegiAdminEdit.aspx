<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="GununYemegiAdminEdit.aspx.cs" Inherits="GununYemegiAdminEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .button {
            background-color: #ffa502;
            border: none;
            color: white;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 20px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 12px;
            height: 35px;
            width: 250px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Panel ID="Panel4" runat="server">

        <table class="auto-style2">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Yemek Adı :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtAd" runat="server" CssClass="textbox"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="font">Malzeme :</td>
                <td>
                    <asp:TextBox ID="txtMalzeme" runat="server" CssClass="auto-style7" TextMode="MultiLine" Height="150px" Width="278px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="font">Tarif :</td>
                <td>
                    <asp:TextBox ID="txtTarif" runat="server" CssClass="auto-style7" TextMode="MultiLine" Height="198px" Width="274px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="font">Resim :</td>
                <td>
                    <asp:FileUpload ID="txtResim" runat="server" CssClass="textbox" />
                </td>
            </tr>
            <tr>
                <td class="font">Kategori :</td>
                <td>
                    <asp:DropDownList ID="txtKategori" runat="server" CssClass="textbox">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnGuncelle" runat="server" Text="GÜNCELLE" CssClass="button" OnClick="btnGuncelle_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnSil" runat="server" CssClass="button" Text="Günün Yemeğinden Kaldır" OnClick="btnSil_Click" />
                </td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>

