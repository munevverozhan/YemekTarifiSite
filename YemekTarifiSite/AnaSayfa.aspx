<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="AnaSayfa.aspx.cs" Inherits="AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }

        .auto-style9 {
            height: 23px;
        }
        .auto-style10{
             text-align: center;    
            background-color: #f5f6fa;    
        }

        .txt {
            font-family: 'Comic Sans MS';
        }

        .headerFont {
            font-family: 'MV Boli';
            color: #2ed573;
            font-size: 18px;
        }

        .header {
            font-family: 'MV Boli';
            color: #FC427B;
            font-size: 23px;     
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style6">
                <tr>
                    <td class="auto-style10">

                        <%-- yemek detay formuna yönlendirme işlemi yapıldı.seçilen yemeğin id değeri elde edildi. --%>
                        <a href="YemekDetay.aspx?yemekID=<%#Eval("yemekID")%>">
                            <strong>
                        <asp:Label ID="Label9" runat="server" CssClass="header" Text='<%# Eval("yemekAd") %>'></asp:Label>
                        </strong>
                        </a>
                    </td>
                </tr>
                <tr>
                    <td><strong class="headerFont">Malzemeler :</strong>
                        <asp:Label class="txt" ID="Label10" runat="server" Text='<%# Eval("yemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong class="headerFont">Yapılış :</strong>
                        <asp:Label class="txt" ID="Label5" runat="server" Text='<%# Eval("yemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong class="headerFont">Eklenme Tarihi :</strong>&nbsp;<asp:Label ID="Label7" runat="server" Text='<%# Eval("yemekTarih") %>'></asp:Label>
                        &nbsp; <strong class="headerFont">Puan :</strong>
                        <asp:Label class="txt" ID="Label8" runat="server" Text='<%# Eval("yemekPuan") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong class="headerFont">Kategori :</strong>
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

