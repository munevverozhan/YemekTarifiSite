<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.master" AutoEventWireup="true" CodeFile="GununYemegiDetayAdmin.aspx.cs" Inherits="GununYemegiDetayAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 100%;
        }

        .auto-style12 {
            text-align: center;
            background-color: #f5f6fa;
        }

        .auto-style9 {
            height: 23px;
        }

        .txtFont {
            font-family: 'Comic Sans MS';
        }

        .auto-style10 {
            height: 23px;
            text-align: right;
        }

        .auto-style11 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #ffa502;
            color: white;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 20px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 12px;
        }

        .header {
            font-family: 'MV Boli';
            color: #FC427B;
            font-size: 23px;
        }

        .headerFont {
            font-family: 'MV Boli';
            color: #2ed573;
            font-size: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataList ID="DataList2" runat="server" OnSelectedIndexChanged="DataList2_SelectedIndexChanged">
        <ItemTemplate>
            <table class="auto-style6">
                <tr>
                    <td class="auto-style12">

                        <strong><asp:Label ID="Label9" runat="server" CssClass="header" Text='<%# Eval("yemekAd") %>'></asp:Label></strong>

                    </td>
                </tr>
                <tr>
                    <td><strong class="headerFont">Malzemeler :</strong>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("yemekMalzeme") %>' CssClass="txtFont"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong class="headerFont">Yapılış :</strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("yemekTarif") %>' CssClass="txtFont"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong class="headerFont">Eklenme Tarihi :</strong>&nbsp;<asp:Label ID="Label7" runat="server" Text='<%# Eval("yemekTarih") %>' CssClass="txtFont"></asp:Label>
                        &nbsp; <strong class="headerFont">Puan :</strong>
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("yemekPuan") %>' CssClass="txtFont"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong class="headerFont">Kategori :</strong>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("kategoriAd") %>' CssClass="txtFont"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" style="border-width: medium; border-style: none none double none; border-bottom-color: #660066">
                        <strong class="headerFont">Durum : </strong>
                        <asp:Label ID="Label12" runat="server" CssClass="txtFont" Text='<%# Eval("durum") %>'></asp:Label>
                  </td>
                </tr>
                <tr>
                    <td class="auto-style10" style="border-width: medium; border-style: none none double none; border-bottom-color: #660066">
                        <asp:Button ID="btnEkle" runat="server" CssClass="button" OnClick="btnEkle_Click" Text="Günün Yemeği Yap" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" style="border-width: medium; border-style: none none double none; border-bottom-color: #660066">
                        <asp:Button ID="btnListele" runat="server" CssClass="button" OnClick="btnListele_Click" Text="LİSTELE" />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

