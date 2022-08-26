<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }

        .auto-style6 {
            text-align: center;
        }

        .auto-style7 {
            font-size: x-large;
        }

        .auto-style9 {
            text-align: center;
            height: 33px;
        }

        .headerFont {
            font-family: 'MV Boli';
            color: #2ed573;
            font-size: 18px;
        }

        .txtFont {
            font-family: 'Comic Sans MS';
        }

        .header {
            font-family: 'MV Boli';
            color: #FC427B;
            font-size: 23px;
        }

        .auto-style10 {
            text-align: center;
            background-color: #f5f6fa;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style10"><strong>
                        <asp:Label ID="Label9" runat="server" CssClass="header" Text='<%# Eval("yemekAd") %>'></asp:Label>
                    </strong></td>
                </tr>
                <tr>
                    <td><strong class="headerFont">MALZEMELER:</strong>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("yemekMalzeme") %>' CssClass="txtFont"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td><strong class="headerFont">YAPILIŞ:</strong>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("yemekTarif") %>' CssClass="txtFont"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        <asp:Image ID="Image2" runat="server" Height="270px" ImageUrl="~/Pictures/29829988-raspberry-cheesecake-isolated-on-white.jpg" Width="316px" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td>
                        <table class="auto-style5">
                            <tr>
                                <td class="auto-style6"><strong class="headerFont">PUAN:</strong>&nbsp;<asp:Label ID="Label8" runat="server" Text='<%# Eval("yemekPuan") %>' CssClass="txtFont"></asp:Label>
                                    &nbsp;</td>
                                <td class="auto-style6"><strong class="headerFont">EKLENME TARİHİ:</strong>&nbsp;<asp:Label ID="Label12" runat="server" Text='<%# Eval("yemekTarih") %>' CssClass="txtFont"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9" style="border-bottom-style: groove; border-bottom-width: 10px; border-bottom-color: #000000;"></td>
                                <td class="auto-style9" style="border-bottom-style: groove; border-bottom-width: 10px; border-bottom-color: #000000;"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

</asp:Content>

