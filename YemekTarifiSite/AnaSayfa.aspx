<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }
        .auto-style7 {
            font-size: x-large;
        }
        .auto-style8 {
            background-color: #CCFFFF;
        }
        .auto-style9 {
            height: 23px;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style6">
                <tr>
                    <td class="auto-style8">
                        <asp:Label ID="Label9" runat="server" CssClass="auto-style7" Text='<%# Eval("yemekAd") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Malzemeler :</strong>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("yemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Yapılış :</strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("yemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong>Eklenme Tarihi :</strong>&nbsp;<asp:Label ID="Label7" runat="server" Text='<%# Eval("yemekTarih") %>'></asp:Label>
                        &nbsp; <strong>Puan :</strong>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("yemekPuan") %>'></asp:Label>
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

