<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style6"><strong>
                        <asp:Label ID="Label9" runat="server" CssClass="auto-style7" Text='<%# Eval("gununYemegiAd") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td><strong>MALZEMELER:</strong>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("gununYemegiMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td>
                        &nbsp;</td>
                </tr>

                <tr>
                    <td><strong>YAPILIŞ:</strong>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("gununYemegiTarif") %>'></asp:Label>
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
                                <td class="auto-style6"><strong>PUAN:</strong>&nbsp;<asp:Label ID="Label8" runat="server" Text='<%# Eval("gununYemegiPuan") %>'></asp:Label>
                                    &nbsp;</td>
                                <td class="auto-style6"><strong>EKLENME TARİHİ:</strong>&nbsp;<asp:Label ID="Label12" runat="server" Text='<%# Eval("gununYemegiTarih") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
   
</asp:Content>

