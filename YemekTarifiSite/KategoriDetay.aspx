<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="KategoriDetay.aspx.cs" Inherits="KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style6 {
            width: 102%;
        }

        .text {
            font-family: 'Comic Sans MS';
        }
        .auto-style11 {
            background-color: #CCFFCC;
            font-family: cursive;
            width: 379px;
        }
        .auto-style12 {
            width: 379px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style6">
            <tr>
                <td class="auto-style10"><%-- yemek detay formuna yönlendirme işlemi yapıldı.seçilen yemeğin id değeri elde edildi. --%><a href="YemekDetay.aspx?yemekID=<%#Eval("yemekID")%>">
                    <asp:Label  ID="Label9" runat="server" CssClass="header" Text='<%# Eval("yemekAd") %>'></asp:Label>
                    </a></td>
            </tr>
            <tr>
                <td class="auto-style12"><strong class="headerFont">Malzemeler :</strong>
                    <asp:Label class="text" ID="Label10" runat="server" CssClass="txtFont" Text='<%# Eval("yemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong class="headerFont">Yapılış :</strong>
                    <asp:Label class="text" ID="Label5" runat="server"  CssClass="txtFont" Text='<%# Eval("yemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Image ID="Image2" runat="server" Height="230px" ImageUrl='<%# Eval("yemekResim") %>' Width="417px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong class="headerFont">Eklenme Tarihi :</strong>&nbsp;<asp:Label ID="Label7" runat="server" Text='<%# Eval("yemekTarih") %>'></asp:Label>
                        &nbsp; <strong class="headerFont">Puan :</strong>
                    <asp:Label class="text" ID="Label8" runat="server"  CssClass="txtFont" Text='<%# Eval("yemekPuan") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong class="headerFont">Kategori :</strong>
                    <asp:Label ID="Label11" runat="server"  CssClass="txtFont" Text='<%# Eval("kategoriID") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="border-width: medium; border-style: none none double none; border-bottom-color: #660066"></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

