<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="KategoriDetay.aspx.cs" Inherits="KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style6 {
            width: 100%;
        }

        .auto-style8 {
            background-color: #7bed9f;
        }

        .auto-style7 {
            font-size: x-large;
            font-family: 'Franklin Gothic Medium';
        }

        .text {
            font-family: 'Comic Sans MS';
        }
    
        .auto-style9 {
            height: 23px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server">
    <ItemTemplate>
        <table class="auto-style6">
            <tr>
                <td class="auto-style8"><%-- yemek detay formuna yönlendirme işlemi yapıldı.seçilen yemeğin id değeri elde edildi. --%><a href="YemekDetay.aspx?yemekID=<%#Eval("yemekID")%>">
                    <asp:Label  ID="Label9" runat="server" CssClass="auto-style7" Text='<%# Eval("yemekAd") %>'></asp:Label>
                    </a></td>
            </tr>
            <tr>
                <td><strong>Malzemeler :</strong>
                    <asp:Label class="text" ID="Label10" runat="server" Text='<%# Eval("yemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Yapılış :</strong>
                    <asp:Label class="text" ID="Label5" runat="server" Text='<%# Eval("yemekTarif") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td><strong>Eklenme Tarihi :</strong>&nbsp;<asp:Label ID="Label7" runat="server" Text='<%# Eval("yemekTarih") %>'></asp:Label>
                        &nbsp; <strong>Puan :</strong>
                    <asp:Label class="text" ID="Label8" runat="server" Text='<%# Eval("yemekPuan") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td><strong>Kategori :</strong>
                    <asp:Label ID="Label11" runat="server" Text='<%# Eval("kategoriID") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style9" style="border-width: medium; border-style: none none double none; border-bottom-color: #660066"></td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
</asp:Content>

