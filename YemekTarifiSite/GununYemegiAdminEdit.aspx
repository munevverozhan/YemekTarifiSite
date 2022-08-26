<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="GununYemegiAdminEdit.aspx.cs" Inherits="GununYemegiAdminEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
                <asp:Button ID="btnGuncelle" runat="server" Text="GÜNCELLE" CssClass="button" OnClick="btnGuncelle_Click"  />
            </td>
        </tr>
    </table>

    </asp:Panel>
</asp:Content>

